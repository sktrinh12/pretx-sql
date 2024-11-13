WITH T AS (SELECT to_number(a.experiment_id) AS experiment_id, 
a.created_date, 
b.slope, 
b.ic50, 
b.max-b.min as span, 
b.Min,
b.Max,
b.Z_Prime,
c.Passage,
c.Reagent_Lot,
c.cell_line, 
c.assay_type, 
to_number(c.cells_well) AS cells_well, 
to_number(c.fbs_conc) AS fbs_conc, 
to_number(c.duration_tx_hr) AS time_hr, 
substr( d.formatted_batch_id, 1, 10 ) AS formatted_id, 
d.supplier_ref, 
c.project_name_ro, 
d.formatted_batch_id, 
to_number(c.n_replicate) AS n,
CASE WHEN C.PROTOCOL_ID IN (544) THEN NULL
	ELSE b.ic90 END as IC90, 
 b.R2,
 case when b.r2<0.3 then '>' else '' end Compound_Status,
b.classification

 FROM studies_summary a 
INNER JOIN ic50_results_summary b 
ON a.experiment_id = b.experiment_id 
INNER JOIN ic50_exp_info c 
ON b.experiment_id = c.experiment_id 
INNER JOIN c$pinpoint.reg_batches d 
ON b.id = d.formatted_batch_id 
where project_name_ro IN ('KAT6A','KAT6A - Deg') and c.protocol_id in (341,361,402,421,544))
SELECT EXPERIMENT_ID,CREATED_DATE,SLOPE,IC50,SPAN,MIN,MAX,ROUND(AVG(Z_PRIME),4) AS Z_PRIME,PASSAGE,REAGENT_LOT,CELL_LINE,ASSAY_TYPE,CELLS_WELL,FBS_CONC,TIME_HR,FORMATTED_ID,SUPPLIER_REF,PROJECT_NAME_RO,FORMATTED_BATCH_ID,N,IC90,R2,COMPOUND_STATUS,classification FROM T GROUP BY EXPERIMENT_ID,CREATED_DATE,SLOPE,IC50,SPAN,MIN,MAX,PASSAGE,REAGENT_LOT,CELL_LINE,ASSAY_TYPE,CELLS_WELL,FBS_CONC,TIME_HR,FORMATTED_ID,SUPPLIER_REF,PROJECT_NAME_RO,FORMATTED_BATCH_ID,N,IC90,R2,COMPOUND_STATUS,classification
