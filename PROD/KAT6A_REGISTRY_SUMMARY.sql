WITH t AS (
    SELECT
        TO_NUMBER(a.experiment_id)  AS experiment_id,
        a.created_date,
        b.slope,
        b.ic50,
        b.max - b.min               AS span,
        b.min,
        b.max,
        b.z_prime,
        c.passage,
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
        e.response_at_hc,
        CASE
        WHEN c.protocol_id IN ( 544 ) THEN
        NULL
        ELSE
        b.ic90
        END                         AS ic90,
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
        INNER JOIN (
            SELECT 
                id,
                experiment_id, 
                response_at_hc 
            FROM 
                ic50_new_results_summary
        ) e ON a.experiment_id = e.experiment_id AND d.formatted_batch_id = e.id
    WHERE
        project_name_ro IN ( 'KAT6A', 'KAT6A - Deg' )
        AND c.protocol_id IN ( 341, 361, 402, 421, 544 )
)
SELECT
    experiment_id,
    created_date,
    slope,
    ic50,
    span,
    min,
    max,
    round(
        AVG(z_prime), 4
    ) AS z_prime,
    passage,
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
    MAX(t.response_at_hc) AS response_at_hc,
    classification
FROM
    t
GROUP BY
    experiment_id,
    created_date,
    slope,
    ic50,
    span,
    min,
    max,
    passage,
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
