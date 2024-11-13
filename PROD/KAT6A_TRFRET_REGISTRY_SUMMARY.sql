WITH t AS (
    SELECT
        TO_NUMBER(a.experiment_id) AS experiment_id,
        a.created_date,
        b.slope,
        b.ic50 / 1000000           AS ic50_m,
        b.ic50 * 1000              AS ic50_nm,
        b.min,
        b.max,
        b.z_prime,
        b.high_avg,
        b.low_avg,
        b.plate_number,
        c.substrate_lot,
        c.cofactor_lot,
        c.antibody_lot,
        c.reagent_lot,
        c.target,
        c.plasma_conc,
        'TR-FRET'                  AS assay_type,
        substr(
            d.formatted_batch_id, 1, 10
        )                          AS formatted_id,
        d.reg_id,
        d.supplier_ref,
        c.project_name_ro,
        d.formatted_batch_id,
        b.max - b.min              AS span,
        'in house'                 AS site,
        c.target_conc,
        c.cofactor,
        c.cofactor_conc,
        c.incubation_time,
        c.pre_incubation_time,
        c.antibody,
        c.substrate,
        c.substrate_conc,
        TO_NUMBER(c.n_replicate)   AS n,
        b.y_at_max_x               AS percent_inhibition,
        b.x_max                    AS highest_conc,
        b.r2,
        e.response_at_hc,
        CASE
        WHEN b.r2 < 0.3 THEN
        '>'
        ELSE
        ''
        END                        compound_status,
        b.classification
    FROM
        studies_summary a
        INNER JOIN ic50_results_summary   b ON a.experiment_id = b.experiment_id
        INNER JOIN ic50_exp_info          c ON b.experiment_id = c.experiment_id
        INNER JOIN c$pinpoint.reg_batches d ON b.id = d.formatted_batch_id
        INNER JOIN (
            SELECT 
                id,
                experiment_id, 
                response_at_hc 
            FROM 
                ic50_new_results_summary
        ) e ON a.experiment_id = e.experiment_id AND d.formatted_batch_id = e.id
    WHERE
        c.protocol_id IN ( 441, 543 )
        AND c.project_name_ro IN ( 'KAT6A', 'KAT6A - Deg' )
)
SELECT
    experiment_id,
    created_date,
    slope,
    ic50_m,
    ic50_nm,
    min,
    max,
    round(
        AVG(z_prime), 4
    ) AS z_prime,
    high_avg,
    low_avg,
    plate_number,
    substrate_lot,
    cofactor_lot,
    antibody_lot,
    reagent_lot,
    target,
    plasma_conc,
    assay_type,
    formatted_id,
    reg_id,
    supplier_ref,
    project_name_ro,
    formatted_batch_id,
    span,
    site,
    target_conc,
    cofactor,
    cofactor_conc,
    incubation_time,
    pre_incubation_time,
    antibody,
    substrate,
    substrate_conc,
    n,
    percent_inhibition,
    highest_conc,
    MAX(response_at_hc) AS response_at_hc,
    r2,
    compound_status,
    classification
FROM
    t
GROUP BY
    experiment_id,
    created_date,
    slope,
    ic50_m,
    ic50_nm,
    min,
    max,
    high_avg,
    low_avg,
    plate_number,
    substrate_lot,
    cofactor_lot,
    antibody_lot,
    reagent_lot,
    target,
    plasma_conc,
    assay_type,
    formatted_id,
    reg_id,
    supplier_ref,
    project_name_ro,
    formatted_batch_id,
    span,
    site,
    target_conc,
    cofactor,
    cofactor_conc,
    incubation_time,
    pre_incubation_time,
    antibody,
    substrate,
    substrate_conc,
    n,
    percent_inhibition,
    highest_conc,
    r2,
    compound_status,
    classification
UNION ALL
SELECT
    experiment_id,
    created_date,
    slope,
    ic50_m,
    ic50_um * 1000 AS ic50_nm,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    target,
    NULL,
    assay_type,
    formatted_id,
    NULL,
    supplier_ref,
    project_name_ro,
    formatted_batch_id,
    span,
    site,
    target_conc,
    cofactor,
    cofactor_conc,
    incubation_time,
    pre_incubation_time,
    antibody,
    substrate,
    substrate_conc,
    NULL,
    percent_inhibition,
    TO_NUMBER(substr(
        highest_conc, 1, length(highest_conc) - 2
    )),
    NULL,
    NULL,
    NULL,
    NULL
FROM
    kat6a_tr_fret
