WITH T AS (SELECT
    to_number(a.experiment_id) AS experiment_id,
    a.created_date,
    b.slope,
    b.ic50,
    b.ic50*1000 as IC50_NM,
    to_number(b.IC50_RR) as IC50_RR,
    B.IC50_RR_NM,
	b.min-b.max as span,
    b.IC50_ORG,
b.Min,
b.Max,
b.Z_Prime,
b.low_avg,
b.high_avg,
b.plate_number,
c.Passage,
c.Reagent_Lot,
    c.assay_type as assay_types,
	c.target,
c.buffer,
	c.substrate,
	c.cofactor,
C.CELL_LINE,
    substr(
        d.formatted_batch_id,
        1,
        10
    ) AS formatted_id,
    c.project_name_ro,
    d.formatted_batch_id,
    b.MAX_RESPONSE,
b.ABSOLUTE_IC50,
b.ABSOLUTE_IC50*1000 as ABSOLUTE_IC50_NM,
b.HIGHEST_CONCENTRATION,
b.RESPONSE_AT_HC,
    to_number(c.n_replicate) AS n,
     b.R2,
      B.COMPOUND_STATUS,
b.classification
FROM
    studies_summary a
    INNER JOIN IC50_NEW_RESULTS_SUMMARY b ON a.experiment_id = b.experiment_id
    INNER JOIN ic50_exp_info c ON b.experiment_id = c.experiment_id
    INNER JOIN c$pinpoint.reg_batches d ON b.id = d.formatted_batch_id
where project_name_ro IN ('PI3Kα','PI3Ka-Degrader') and c.protocol_id in (562,661))
SELECT EXPERIMENT_ID,CREATED_DATE,SLOPE,IC50,IC50_NM,IC50_RR,IC50_RR_NM,SPAN,IC50_ORG,MIN,MAX,ROUND(AVG(Z_PRIME),4) AS Z_PRIME,PASSAGE,REAGENT_LOT,ASSAY_TYPES,
TARGET,BUFFER,SUBSTRATE,COFACTOR,CELL_LINE,FORMATTED_ID,PROJECT_NAME_RO,FORMATTED_BATCH_ID,MAX_RESPONSE,ABSOLUTE_IC50,ABSOLUTE_IC50_NM,HIGHEST_CONCENTRATION,
RESPONSE_AT_HC,N,R2,COMPOUND_STATUS,low_avg,high_avg,plate_number,classification FROM T 
GROUP BY EXPERIMENT_ID,CREATED_DATE,SLOPE,IC50,IC50_NM,IC50_RR,IC50_RR_NM,SPAN,IC50_ORG,MIN,MAX,PASSAGE,REAGENT_LOT,
ASSAY_TYPES,TARGET,BUFFER,SUBSTRATE,COFACTOR,CELL_LINE,FORMATTED_ID,PROJECT_NAME_RO,FORMATTED_BATCH_ID,MAX_RESPONSE,ABSOLUTE_IC50,ABSOLUTE_IC50_NM,
HIGHEST_CONCENTRATION,RESPONSE_AT_HC,N,R2,COMPOUND_STATUS,low_avg,high_avg,plate_number,classification

UNION ALL

SELECT EXPERIMENT_ID,created_date,slope,ic50,ic50_nm,CASE WHEN IC50_RR_NM LIKE '>%' OR IC50_RR_NM LIKE '<%' THEN to_number(SUBSTR(IC50_RR_NM,2,10)/1000) ELSE to_number(IC50_RR_NM/1000) END AS ic50_rr,
CASE WHEN IC50_RR_NM LIKE '>%' OR IC50_RR_NM LIKE '<%' THEN to_number(SUBSTR(IC50_RR_NM,2,10)) ELSE to_number(IC50_RR_NM) END AS ic50_rr_nm,
span,NULL,null,null,null,null,null,ASSAY_TYPES
,target,NULL,substrate,cofactor,cell_lines,formatted_id,project_name_ro,formatted_batch_id,MAX_RESPONSE
,ABSOLUTE_IC50,ABSOLUTE_IC50_NM,HIGHEST_CONCENTRATION,RESPONSE_AT_HC,n,r2,COMPOUND_STATUS,null,null,null,null from PI3KA_HTRF
