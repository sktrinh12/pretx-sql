WITH T AS (SELECT to_number(a.experiment_id) AS experiment_id, 
a.created_date, 
b.slope, b.ic50, 
b.Min,
b.Max,
b.Z_Prime,
b.plate_number,
b.high_avg,
b.low_avg,
c.Reagent_Lot,
c.cell_line,
 c.target, 
c.plasma_conc, 
c.assay_type, 
to_number(c.cells_well) AS cells_well, 
to_number(c.fbs_conc) AS fbs_conc, 
to_number(c.duration_tx_hr) AS time_hr, 
substr( d.formatted_batch_id, 1, 10 ) AS formatted_id, 
d.supplier_ref, 
c.project_name_ro, 
d.formatted_batch_id, 
to_number(c.n_replicate) AS n,
 b.max-b.min as span,
CASE WHEN C.PROTOCOL_ID IN (542) THEN NULL
	ELSE ic90 END as IC10, 
 b.R2,
case when b.r2<0.3 then '>' else '' end Compound_Status,
b.classification
FROM studies_summary a 
INNER JOIN ic50_results_summary b ON a.experiment_id = b.experiment_id 
INNER JOIN ic50_exp_info c ON b.experiment_id = c.experiment_id 
INNER JOIN c$pinpoint.reg_batches d ON b.id = d.formatted_batch_id where project_name_ro in ('KAT6A','KAT6A - Deg') and c.protocol_id in (382,406,404,461,542))
SELECT EXPERIMENT_ID,CREATED_DATE,SLOPE,IC50,MIN,MAX,ROUND(AVG(Z_PRIME),4) AS Z_PRIME,high_avg,low_avg,plate_number,REAGENT_LOT,CELL_LINE,TARGET,PLASMA_CONC,ASSAY_TYPE,CELLS_WELL,FBS_CONC,TIME_HR,FORMATTED_ID,SUPPLIER_REF,PROJECT_NAME_RO,FORMATTED_BATCH_ID,N,SPAN,IC10,R2,COMPOUND_STATUS,classification FROM T
GROUP BY EXPERIMENT_ID,CREATED_DATE,SLOPE,IC50,MIN,MAX,REAGENT_LOT,high_avg,low_avg,plate_number,CELL_LINE,TARGET,PLASMA_CONC,ASSAY_TYPE,CELLS_WELL,FBS_CONC,TIME_HR,FORMATTED_ID,SUPPLIER_REF,PROJECT_NAME_RO,FORMATTED_BATCH_ID,N,SPAN,IC10,R2,COMPOUND_STATUS,classification
