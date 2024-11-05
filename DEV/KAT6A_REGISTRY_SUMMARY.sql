WITH t AS (
    SELECT
        to_number(a.experiment_id)                  AS experiment_id,
        a.created_date,
        b.slope,
        b.ic50,
        b.max - b.min                                 AS span,
        b.min,
        b.max,
        b.z_prime,
        b.plate_number,
        b.high_avg,
        b.low_avg,
        c.passage,
        c.reagent_lot,
        c.cell_line,
        c.assay_type,
        to_number(c.cells_well)                     AS cells_well,
        to_number(c.fbs_conc)                       AS fbs_conc,
        to_number(c.duration_tx_hr)                 AS time_hr,
        substr(d.formatted_batch_id, 1, 10)       AS formatted_id,
        d.supplier_ref,
        c.project_name_ro,
        d.formatted_batch_id,
        to_number(c.n_replicate)                    AS n,
        CASE
            WHEN c.protocol_id IN ( 544 ) THEN
                NULL
            ELSE
                ic90
        END                                         AS ic90,
        b.r2,
        CASE
            WHEN b.r2 < 0.3 THEN
                '>'
            ELSE
                ''
        END                                         compound_status,
		b.classification
    FROM
             studies_summary a
        INNER JOIN ic50_results_summary      b ON a.experiment_id = b.experiment_id
        INNER JOIN ic50_exp_info             c ON b.experiment_id = c.experiment_id
        INNER JOIN c$pinpoint.reg_batches    d ON b.id = d.formatted_batch_id
    WHERE
        c.protocol_id IN ( 341, 361, 402, 421, 544 )
)
SELECT
    t.experiment_id,
    t.created_date,
    t.slope,
    t.ic50,
    t.span,
    t.min,
    t.max,
    round(AVG(t.z_prime), 4) AS z_prime,
    t.plate_number,
    t.low_avg,
    t.high_avg,
    t.passage,
    t.reagent_lot,
    t.cell_line,
    t.assay_type,
    t.cells_well,
    t.fbs_conc,
    t.time_hr,
    t.formatted_id,
    t.supplier_ref,
    
    t.formatted_batch_id,
    t.n,
    t.ic90,
    t.r2,
    t.compound_status,
    t.classification
FROM
    t
    join c$pinpoint.reg_data a on t.formatted_id=a.formatted_id
    join KAT6A_SUMMARY_VW b on a.formatted_id=b.formatted_id
GROUP BY
    t.experiment_id,
    t.created_date,
    t.slope,
    t.ic50,
    t.span,
    t.min,
    t.max,
    t.passage,
    t.reagent_lot,
    t.plate_number,
    t.low_avg,
    t.high_avg,
    t.cell_line,
    t.assay_type,
    t.cells_well,
    t.fbs_conc,
    t.time_hr,
    t.formatted_id,
    t.supplier_ref,
    
    t.formatted_batch_id,
    t.n,
    t.ic90,
    t.r2,
    t.compound_status,
    t.classification
