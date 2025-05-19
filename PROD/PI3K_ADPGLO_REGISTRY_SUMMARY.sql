WITH T AS (SELECT
    to_number(a.experiment_id) AS experiment_id,
    a.created_date,
    b.modified_date,
    b.slope,
    b.ic50,
    b.ic50*1000 as IC50_NM,
    TO_NUMBER(b.IC50_RR) AS IC50_RR,
    B.IC50_RR_NM,
	b.min-b.max as span,
    b.min,
    b.max,
    b.z_prime,
c.protocol_id,
b.low_avg,
b.high_avg,
B.PLATE_NUMBER,
c.Substrate_Lot,
c.CoFactor_Lot,
c.Antibody_Lot,
c.Reagent_Lot,
    c.assay_type,
	c.target,
	c.substrate,
	c.cofactor,
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
     B.Compound_Status,
b.classification
FROM
    studies_summary a
    INNER JOIN IC50_NEW_RESULTS_SUMMARY b ON a.experiment_id = b.experiment_id
    INNER JOIN ic50_exp_info c ON b.experiment_id = c.experiment_id
    INNER JOIN c$pinpoint.reg_batches d ON b.id = d.formatted_batch_id
where project_name_ro IN ('PI3Kα','PI3Ka-Degrader') and c.protocol_id in (561,661))
SELECT EXPERIMENT_ID,PROTOCOL_ID,CREATED_DATE,MODIFIED_DATE,SLOPE,IC50,IC50_NM,IC50_RR,IC50_RR_NM,SPAN,MIN,MAX,ROUND(AVG(Z_PRIME),4) AS Z_PRIME,
SUBSTRATE_LOT,COFACTOR_LOT,ANTIBODY_LOT,REAGENT_LOT,ASSAY_TYPE,TARGET,SUBSTRATE,COFACTOR,FORMATTED_ID,PROJECT_NAME_RO,FORMATTED_BATCH_ID,MAX_RESPONSE,
ABSOLUTE_IC50,ABSOLUTE_IC50_NM,HIGHEST_CONCENTRATION,RESPONSE_AT_HC,N,R2,COMPOUND_STATUS,low_avg,high_avg,PLATE_NUMBER,classification FROM T WHERE PROTOCOL_ID=561
 GROUP BY EXPERIMENT_ID,CREATED_DATE,MODIFIED_DATE,SLOPE,IC50,IC50_NM,IC50_RR,IC50_RR_NM,SPAN,MIN,MAX,SUBSTRATE_LOT,COFACTOR_LOT,ANTIBODY_LOT,REAGENT_LOT,
 ASSAY_TYPE,TARGET,SUBSTRATE,COFACTOR,FORMATTED_ID,PROJECT_NAME_RO,FORMATTED_BATCH_ID,MAX_RESPONSE,ABSOLUTE_IC50,ABSOLUTE_IC50_NM,HIGHEST_CONCENTRATION,
 RESPONSE_AT_HC,N,R2,COMPOUND_STATUS,low_avg,high_avg,PLATE_NUMBER,PROTOCOL_ID,classification
union all

SELECT EXPERIMENT_ID,NULL,CREATED_DATE,null,TO_NUMBER(SLOPE),IC50,IC50_NM,IC50_RR,CASE WHEN ic50_rr_nm LIKE '>%' OR ic50_rr_nm LIKE '<%' THEN to_number(substr(ic50_rr_nm, 2, 10)) 
ELSE to_number(ic50_rr_nm) END AS IC50_RR_NM,SPAN,null,null,null,null,null,null,null,ASSAY_TYPE,TARGET,SUBSTRATE,CO_FACTOR,FORMATTED_ID,PROJECT_NAME_RO,
FORMATTED_BATCH_ID,MAX_RESPONSE,ABSOLUTE_IC50,ABSOLUTE_IC50_NM,HIGHEST_CONCENTRATION,RESPONSE_AT_HC,N,R2,CASE WHEN ic50_rr_nm LIKE '>%' OR ic50_rr_nm LIKE '<%' THEN substr(ic50_rr_nm, 1, 1)
ELSE NULL END AS COMPOUND_STATUS,NULL,NULL,NULL,null FROM PI3KA_ADPGLO
