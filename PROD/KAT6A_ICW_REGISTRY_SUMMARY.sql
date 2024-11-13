WITH t AS (
    SELECT
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
        c.reagent_lot,
        c.cell_line,
        c.target,
        c.plasma_conc,
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
        b.max - b.min               AS span,
        CASE
        WHEN c.protocol_id IN ( 542 ) THEN
        NULL
        ELSE
        ic90
        END                         AS ic10,
        b.r2,
        CASE
        WHEN b.r2 < 0.3 THEN
        '>'
        ELSE
        ''
        END                         compound_status,
        b.classification
    FROM
        studies_summary a
        INNER JOIN ic50_results_summary   b ON a.experiment_id = b.experiment_id
        INNER JOIN ic50_exp_info          c ON b.experiment_id = c.experiment_id
        INNER JOIN c$pinpoint.reg_batches d ON b.id = d.formatted_batch_id
    WHERE
        project_name_ro IN ( 'KAT6A', 'KAT6A - Deg' )
        AND c.protocol_id IN ( 382, 406, 404, 461, 542 )
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
    high_avg,
    low_avg,
    plate_number,
    reagent_lot,
    cell_line,
    target,
    plasma_conc,
    assay_type,
    cells_well,
    fbs_conc,
    time_hr,
    formatted_id,
    supplier_ref,
    project_name_ro,
    formatted_batch_id,
    n,
    span,
    ic10,
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
    reagent_lot,
    high_avg,
    low_avg,
    plate_number,
    cell_line,
    target,
    plasma_conc,
    assay_type,
    cells_well,
    fbs_conc,
    time_hr,
    formatted_id,
    supplier_ref,
    project_name_ro,
    formatted_batch_id,
    n,
    span,
    ic10,
    r2,
    compound_status,
    classification
