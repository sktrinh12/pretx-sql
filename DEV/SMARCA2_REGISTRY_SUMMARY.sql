WITH u AS (
    SELECT
        *
    FROM
        c$pinpoint.reg_batches
    WHERE
        substr(
            formatted_batch_id, 1, 10
        ) IN (
            SELECT
                formatted_id
            FROM
                assign_proj
            WHERE
                project = 275
        )
), v AS (
    SELECT DISTINCT
        TO_NUMBER(wl.experiment_id)   AS experiment_id,
        CAST(wr.created_date AS DATE) AS created_date,
        ar.param3                     AS slope,
        ar.param4                     AS ic50,
        ar.param1                     AS min,
        ar.param2                     AS max,
        pr.z_prime,
        p.plate_number,
        pr.high_avg,
        pr.low_avg,
        tp.passage,
        tp.substrate_lot,
        tp.cofactor_lot,
        tp.antibody_lot,
        tp.reagent_lot,
        tp.cell_line,
        tp.assay_type,
        TO_NUMBER(tp.cells_well)      AS cells_well,
        TO_NUMBER(tp.fbs_conc)        AS fbs_conc,
        TO_NUMBER(tp.time_hr)         AS time_hr,
        substr(
            s.display_name, 1, 10
        )                             AS formatted_id,
        rb.supplier_ref,
        tp.project_name_ro,
        s.display_name                AS formatted_batch_id,
        TO_NUMBER(tp.n_replicate)     AS n,
        dr.result                     AS ic90,
        ar.r2,
        CASE
        WHEN ar.y_min_obs > 50
             OR ar.param1 > 50 THEN
        '>'
        ELSE
        ''
        END                           AS compound_status,
        cr.label                      AS classification
    FROM
        ds3_userdata.su_well_results wr
        JOIN ds3_userdata.su_well_layers          wl ON wl.id = wr.layer_id
        JOIN ds3_userdata.su_wells                w ON w.id = wr.well_id
            AND w.status = 0
        JOIN ds3_userdata.su_well_samples         ws ON ws.well_id = w.id
        JOIN ds3_userdata.su_samples              s ON s.id = ws.sample_id
        JOIN ds3_userdata.su_plates               p ON p.id = w.plate_id
        JOIN ds3_userdata.su_plate_results        pr ON pr.plate_id = p.id
            AND pr.layer_id = wl.id
        JOIN ds3_userdata.su_groupings            g ON g.experiment_id = wl.experiment_id
            AND g.sample_id = s.id
            AND g.plate_set = p.plate_set
        JOIN ds3_userdata.su_analysis_results     ar ON ar.group_id = g.id
            AND ar.status <> 2
        JOIN u                                    rb ON rb.formatted_batch_id = s.display_name
        JOIN ds3_userdata.su_classification_rules cr ON ar.rule_id = cr.id
        JOIN ds3_userdata.su_derived_results      dr ON dr.result_id = ar.id
        LEFT JOIN (
            SELECT
                *
            FROM
                (SELECT
                tm.experiment_id,
                p.protocol,
                p.protocol_id,
                tm.property_name,
                tm.property_value
              FROM ds3_userdata.tm_prot_exp_fields_values tm
              JOIN ds3_userdata.tm_protocols p ON p.protocol_id = tm.protocol_id
              WHERE tm.property_name IN (
               'Cell Line',
               'Cells_well',
               'Passage',
               'Assay Type',
               'FBS conc',
               'Project Name',
               'Duration_Tx_hr' ,
               'N_replicate',
               'Substrate Lot#',
               'Co-Factor Lot#',
               'Antibody Lot#',
               'Reagent Lot#',
               'Time Hr') ) src PIVOT (max(property_value)
                FOR property_name IN (
                  'Cell Line' AS cell_line,
                  'Cells_well' AS cells_well,
                  'Passage' AS passage,
                  'Assay Type' AS assay_type,
                  'FBS conc' AS fbs_conc,
                  'Project Name' AS project_name_ro,
                  'Duration_Tx_hr' AS time_hr,
                  'N_replicate' AS n_replicate,
                  'Substrate Lot#' AS substrate_lot,
                  'Co-Factor Lot#' AS cofactor_lot,
                  'Antibody Lot#' AS antibody_lot,
                  'Reagent Lot#' AS reagent_lot))
        ) tp ON tp.experiment_id = g.experiment_id
), 
t AS (
    SELECT DISTINCT
        TO_NUMBER(a.experiment_id)  AS experiment_id,
        a.created_date,
        b.slope,
        b.ic50,
        b.min,
        b.max,
        b.z_prime,
        b.plate_number,
        b.high_avg,
        b.low_avg,
        c.passage,
        c.substrate_lot,
        c.cofactor_lot,
        c.antibody_lot,
        c.reagent_lot,
        c.cell_line,
        c.assay_type,
        TO_NUMBER(c.cells_well)     AS cells_well,
        TO_NUMBER(c.fbs_conc)       AS fbs_conc,
        TO_NUMBER(c.duration_tx_hr) AS time_hr,
        substr(
            d.formatted_batch_id, 1, 10
        )                           AS formatted_id,
        d.supplier_ref,
        c.project_name_ro,
        d.formatted_batch_id,
        TO_NUMBER(c.n_replicate)    AS n,
        CASE
        WHEN c.protocol_id IN ( 544, 543, 542 ) THEN
        NULL
        ELSE
        b.ic90
        END                         AS ic90,
        b.r2,
        b.compound_status,
        b.classification
    FROM
        studies_summary a
        INNER JOIN ic50_results_summary   b ON a.experiment_id = b.experiment_id
        INNER JOIN ic50_exp_info          c ON b.experiment_id = c.experiment_id
        INNER JOIN c$pinpoint.reg_batches d ON b.id = d.formatted_batch_id
    WHERE
        project_name_ro = 'SMARCA2'
        AND c.protocol_id IN ( 341, 361, 402, 421, 544, 543, 542 )
)
SELECT
    experiment_id,
    created_date,
    slope,
    ic50,
    min,
    max,
    round(
        AVG(z_prime), 4
    ) AS z_prime,
    plate_number,
    low_avg,
    high_avg,
    passage,
    substrate_lot,
    cofactor_lot,
    antibody_lot,
    reagent_lot,
    cell_line,
    assay_type,
    cells_well,
    fbs_conc,
    time_hr,
    formatted_id,
    supplier_ref,
    project_name_ro,
    formatted_batch_id,
    n,
    ic90,
    r2,
    compound_status,
    classification
FROM
    t
GROUP BY
    experiment_id,
    created_date,
    slope,
    ic50,
    min,
    max,
    plate_number,
    low_avg,
    high_avg,
    passage,
    substrate_lot,
    cofactor_lot,
    antibody_lot,
    reagent_lot,
    cell_line,
    assay_type,
    cells_well,
    fbs_conc,
    time_hr,
    formatted_id,
    supplier_ref,
    project_name_ro,
    formatted_batch_id,
    n,
    ic90,
    r2,
    compound_status,
    classification
UNION ALL
SELECT
    experiment_id,
    created_date,
    slope,
    ic50,
    min,
    max,
    round(
        AVG(z_prime), 4
    ) AS z_prime,
    plate_number,
    low_avg,
    high_avg,
    passage,
    substrate_lot,
    cofactor_lot,
    antibody_lot,
    reagent_lot,
    cell_line,
    assay_type,
    cells_well,
    fbs_conc,
    time_hr,
    formatted_id,
    supplier_ref,
    project_name_ro,
    formatted_batch_id,
    n,
    ic90,
    r2,
    compound_status,
    classification
FROM
    v
GROUP BY
    experiment_id,
    created_date,
    slope,
    ic50,
    min,
    max,
    plate_number,
    low_avg,
    high_avg,
    passage,
    substrate_lot,
    cofactor_lot,
    antibody_lot,
    reagent_lot,
    cell_line,
    assay_type,
    cells_well,
    fbs_conc,
    time_hr,
    formatted_id,
    supplier_ref,
    project_name_ro,
    formatted_batch_id,
    n,
    ic90,
    r2,
    compound_status,
    classification
