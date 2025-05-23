WITH t AS
    (SELECT
       to_number(a.experiment_id) AS experiment_id,
       a.created_date,
       b.modified_date,
       b.slope,
       b.ic50,
       b.ic50*1000 AS ic50_nm,
       CASE 
         WHEN to_number(regexp_replace(b.ic50_rr, '^[<>]=?', '')) > 0 
         THEN to_number(regexp_replace(b.ic50_rr, '^[<>]=?', ''))
       ELSE to_number(b.ic50_rr) 
       END AS ic50_rr,
       CASE 
         WHEN to_number(regexp_replace(b.ic50_rr_nm, '^[<>]=?', '')) > 0 
         THEN to_number(regexp_replace(b.ic50_rr_nm, '^[<>]=?', ''))
       ELSE to_number(b.ic50_rr_nm) 
       END AS ic50_rr_nm,
       b.min-b.max AS span,
       b.min,
       b.max,
       b.z_prime,
       c.protocol_id,
       b.low_avg,
       b.high_avg,
       b.plate_number,
       c.substrate_lot,
       c.cofactor_lot,
       c.antibody_lot,
       c.reagent_lot,
       c.assay_type,
       c.target,
       c.substrate,
       c.cofactor,
       substr(d.formatted_batch_id, 1, 10) AS formatted_id,
       c.project_name_ro,
       d.formatted_batch_id,
       b.max_response,
       b.absolute_ic50,
       b.absolute_ic50*1000 AS absolute_ic50_nm,
       b.highest_concentration,
       b.response_at_hc,
       to_number(c.n_replicate) AS n,
       b.r2,
       b.compound_status,
       b.classification
     FROM studies_summary a
     INNER JOIN ic50_new_results_summary b ON a.experiment_id = b.experiment_id
     INNER JOIN ic50_exp_info c ON b.experiment_id = c.experiment_id
     INNER JOIN c$pinpoint.reg_batches d ON b.id = d.formatted_batch_id
     WHERE project_name_ro IN (
                                 'PI3Kα',
                                 'PI3Ka-Degrader')
       AND c.protocol_id IN (
                               561,
                               661))
  SELECT
    experiment_id,
    protocol_id,
    created_date,
    modified_date,
    slope,
    ic50,
    ic50_nm,
    ic50_rr,
    ic50_rr_nm,
    span,
    MIN,
    MAX,
    round(avg(z_prime), 4) AS z_prime,
    substrate_lot,
    cofactor_lot,
    antibody_lot,
    reagent_lot,
    assay_type,
    target,
    substrate,
    cofactor,
    formatted_id,
    project_name_ro,
    formatted_batch_id,
    max_response,
    absolute_ic50,
    absolute_ic50_nm,
    highest_concentration,
    response_at_hc,
    n,
    r2,
    compound_status,
    low_avg,
    high_avg,
    plate_number,
    classification
  FROM t
  WHERE protocol_id=561
  GROUP BY
    experiment_id,
    created_date,
    modified_date,
    slope,
    ic50,
    ic50_nm,
    ic50_rr,
    ic50_rr_nm,
    span,
    MIN,
    MAX,
    substrate_lot,
    cofactor_lot,
    antibody_lot,
    reagent_lot,
    assay_type,
    target,
    substrate,
    cofactor,
    formatted_id,
    project_name_ro,
    formatted_batch_id,
    max_response,
    absolute_ic50,
    absolute_ic50_nm,
    highest_concentration,
    response_at_hc,
    n,
    r2,
    compound_status,
    low_avg,
    high_avg,
    plate_number,
    protocol_id,
    classification
  UNION ALL
  SELECT
    experiment_id,
    NULL,
    created_date,
    NULL,
    to_number(slope),
    ic50,
    ic50_nm,
    ic50_rr,
    CASE
        WHEN ic50_rr_nm LIKE '>%'
             OR ic50_rr_nm LIKE '<%' THEN to_number(substr(ic50_rr_nm, 2, 10))
        ELSE to_number(ic50_rr_nm)
    END AS ic50_rr_nm,
    span,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    assay_type,
    target,
    substrate,
    co_factor,
    formatted_id,
    project_name_ro,
    formatted_batch_id,
    max_response,
    absolute_ic50,
    absolute_ic50_nm,
    highest_concentration,
    response_at_hc,
    n,
    r2,
    CASE
        WHEN ic50_rr_nm LIKE '>%'
             OR ic50_rr_nm LIKE '<%' THEN substr(ic50_rr_nm, 1, 1)
        ELSE NULL
    END AS compound_status,
    NULL,
    NULL,
    NULL,
    NULL
  FROM pi3ka_adpglo
