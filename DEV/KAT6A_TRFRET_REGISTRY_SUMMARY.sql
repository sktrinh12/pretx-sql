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
        b.percent_inhibition,
        b.x_max                    AS highest_conc,
        b.r2,
        e.response_at_hc,
        CASE
        WHEN b.r2 < 0.3 THEN
        '>'
        ELSE
        ''
        END                        compound_status,
        b.classification,
        TO_NUMBER(c.duration_tx_hr) AS time_hr
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
)
SELECT
    t.experiment_id,
    t.created_date,
    t.slope,
    t.ic50_m,
    t.ic50_nm,
    t.min,
    t.max,
    round(
        AVG(z_prime), 4
    ) AS z_prime,
    t.high_avg,
    t.low_avg,
    t.plate_number,
    t.substrate_lot,
    t.cofactor_lot,
    t.antibody_lot,
    t.reagent_lot,
    t.target,
    t.plasma_conc,
    t.assay_type,
    t.formatted_id,
    t.reg_id,
    t.supplier_ref,
    t.formatted_batch_id,
    t.span,
    t.site,
    t.target_conc,
    t.cofactor,
    t.cofactor_conc,
    t.incubation_time,
    t.pre_incubation_time,
    t.antibody,
    t.substrate,
    t.substrate_conc,
    t.n,
    t.percent_inhibition,
    t.highest_conc,
    MAX(t.response_at_hc) AS response_at_hc,
    t.r2,
    t.compound_status,
    t.classification,
    t.time_hr
FROM
    t
    JOIN c$pinpoint.reg_data a ON t.formatted_id = a.formatted_id
    join KAT6A_SUMMARY_VW b on a.formatted_id=b.formatted_id
GROUP BY
    t.experiment_id,
    t.created_date,
    t.slope,
    t.ic50_m,
    t.ic50_nm,
    t.min,
    t.max,
    t.high_avg,
    t.low_avg,
    t.plate_number,
    t.substrate_lot,
    t.cofactor_lot,
    t.antibody_lot,
    t.reagent_lot,
    t.target,
    t.plasma_conc,
    t.assay_type,
    t.formatted_id,
    t.reg_id,
    t.supplier_ref,
    t.formatted_batch_id,
    t.span,
    t.site,
    t.target_conc,
    t.cofactor,
    t.cofactor_conc,
    t.incubation_time,
    t.pre_incubation_time,
    t.antibody,
    t.substrate,
    t.substrate_conc,
    t.n,
    t.percent_inhibition,
    t.highest_conc,
    t.r2,
    t.compound_status,
    t.classification,
    t.time_hr
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
    NULL,
    NULL
FROM
    kat6a_tr_fret
