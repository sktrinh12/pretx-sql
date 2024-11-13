WITH T AS (SELECT to_number(a.experiment_id) AS experiment_id,
 a.created_date,
 b.slope,
 b.ic50/1000000 as ic50_m, 
b.ic50*1000 as ic50_nm,
b.Min,
B.Max,
b.Z_Prime,
b.high_avg,
b.low_avg,
b.plate_number,
c.substrate_Lot,
c.CoFactor_Lot,
c.Antibody_Lot,
c.Reagent_Lot,
 c.target, 
c.plasma_conc, 
'TR-FRET'as assay_type, 
substr( d.formatted_batch_id, 1, 10 ) AS formatted_id,
D.REG_ID, 
d.supplier_ref, 
c.project_name_ro, 
d.formatted_batch_id, 
b.max-b.min as span,
'in house' as site, 
c.Target_conc, 
c.Cofactor, 
c.cofactor_conc, 
c.Incubation_Time, 
c.Pre_Incubation_Time, 
c.Antibody, 
c.Substrate, 
c.Substrate_Conc, 
to_number(c.n_replicate) AS n, 
B.Y_AT_MAX_X AS percent_inhibition, 
B.X_MAX AS highest_conc ,
 b.R2,
 case when b.r2<0.3 then '>' else '' end Compound_Status,
b.classification
FROM studies_summary a 
INNER JOIN ic50_results_summary b ON a.experiment_id = b.experiment_id 
INNER JOIN ic50_exp_info c ON b.experiment_id = c.experiment_id 
INNER JOIN c$pinpoint.reg_batches d ON b.id = d.formatted_batch_id 
where c.protocol_id in (441,543) and c.project_name_ro IN ('KAT6A' ,'KAT6A - Deg'))
SELECT EXPERIMENT_ID,CREATED_DATE,SLOPE,IC50_M,IC50_NM,MIN,MAX,ROUND(AVG(Z_PRIME),4) AS Z_PRIME,high_avg,low_avg,plate_number,SUBSTRATE_LOT,COFACTOR_LOT,ANTIBODY_LOT,REAGENT_LOT,
TARGET,PLASMA_CONC,ASSAY_TYPE,FORMATTED_ID,REG_ID,SUPPLIER_REF,PROJECT_NAME_RO,FORMATTED_BATCH_ID, SPAN,SITE,TARGET_CONC,COFACTOR,COFACTOR_CONC,
INCUBATION_TIME,PRE_INCUBATION_TIME,ANTIBODY,SUBSTRATE,SUBSTRATE_CONC,N,PERCENT_INHIBITION,HIGHEST_CONC,R2,COMPOUND_STATUS,classification FROM T GROUP BY EXPERIMENT_ID,CREATED_DATE,SLOPE,IC50_M,IC50_NM,MIN,MAX,high_avg,low_avg,plate_number,SUBSTRATE_LOT,COFACTOR_LOT,ANTIBODY_LOT,REAGENT_LOT,TARGET,PLASMA_CONC,ASSAY_TYPE,FORMATTED_ID,REG_ID,SUPPLIER_REF,PROJECT_NAME_RO,FORMATTED_BATCH_ID, SPAN,SITE,TARGET_CONC,COFACTOR,COFACTOR_CONC,INCUBATION_TIME,PRE_INCUBATION_TIME,ANTIBODY,SUBSTRATE,SUBSTRATE_CONC,N,PERCENT_INHIBITION,HIGHEST_CONC,R2,COMPOUND_STATUS,classification

UNION ALL 

select Experiment_ID,Created_Date,Slope,IC50_M,IC50_uM*1000 as ic50_nm,null,null,null,null,null,null,null,null,null,null,Target,null,Assay_type, 
FORMATTED_ID,NULL,Supplier_Ref,project_name_ro,FORMATTED_BATCH_ID,span,Site, Target_Conc,Cofactor,cofactor_conc,Incubation_Time,
Pre_Incubation_Time,Antibody,Substrate,Substrate_conc,null,percent_inhibition,to_number(substr(highest_conc,1,length(highest_conc)-2)) ,null,null,null from KAT6A_TR_FRET
