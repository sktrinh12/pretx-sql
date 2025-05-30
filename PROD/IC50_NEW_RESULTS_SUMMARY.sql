WITH t AS (
    SELECT
        t4.experiment_id AS experiment_id,
        t3.display_name  AS id,
        t6.name          AS analysis_name,
        TO_DATE(substr(
            t1.modified_date, 1, 10
        ))               AS modified_date,
        t10.plate_number,
        t1.id            AS analysis_results_id,
        t1.x_max,
        t1.x_min,
        t1.reported_result,
        t1.status,
        t1.param1        AS min,
        t1.param2        AS max,
        t1.param3        AS slope,
        CASE
        WHEN t5.label = 'Inactive'    THEN
        t1.x_max
        WHEN t5.label = 'Very Potent' THEN
        t1.x_min
        ELSE
        t1.param4
        END              AS ic50,
        CASE
        WHEN t5.label = 'Inactive'    THEN
        '>'
        WHEN t5.label = 'Very Potent' THEN
        '<'
        END              AS compound_status,
        CASE
        WHEN t1.reported_result IN ('Infinity', '-Infinity') THEN t1.reported_result
        WHEN REGEXP_LIKE(t1.reported_result, '^([><])?\d+(\.\d+)?([eE][+-]?\d+)?$') THEN
            CASE
                WHEN SUBSTR(t1.reported_result, 1, 1) IN ('>', '<') THEN
                    SUBSTR(t1.reported_result, 1, 1) ||
                    TO_CHAR(
                        ROUND(
                            TO_NUMBER(SUBSTR(t1.reported_result, 2)) * 1000,
                            3 - FLOOR(
                                CASE
                                    WHEN ABS(TO_NUMBER(SUBSTR(t1.reported_result, 2)) * 1000) > 0
                                    THEN LOG(10, ABS(TO_NUMBER(SUBSTR(t1.reported_result, 2)) * 1000))
                                    ELSE 0
                                END
                            )
                        ),
                        'FM9999999990.099'
                    )
                ELSE
                    TO_CHAR(
                        ROUND(
                            TO_NUMBER(t1.reported_result) * 1000,
                            3 - FLOOR(
                                CASE
                                    WHEN ABS(TO_NUMBER(t1.reported_result) * 1000) > 0
                                    THEN LOG(10, ABS(TO_NUMBER(t1.reported_result) * 1000))
                                    ELSE 0
                                END
                            )
                        ),
                        'FM9999999990.099'
                    )
                END
            ELSE NULL
        END AS ic50_rr_nm,

        CASE
        WHEN t1.reported_result IN ('Infinity', '-Infinity') THEN t1.reported_result
        WHEN REGEXP_LIKE(t1.reported_result, '^([><])?\d+(\.\d+)?([eE][+-]?\d+)?$') THEN
            CASE
                WHEN SUBSTR(t1.reported_result, 1, 1) IN ('>', '<') THEN
                    SUBSTR(t1.reported_result, 1, 1) ||
                    TO_CHAR(
                        ROUND(
                            TO_NUMBER(SUBSTR(t1.reported_result, 2)),
                            3 - FLOOR(
                                CASE
                                    WHEN ABS(TO_NUMBER(SUBSTR(t1.reported_result, 2))) > 0
                                    THEN LOG(10, ABS(TO_NUMBER(SUBSTR(t1.reported_result, 2))))
                                    ELSE 0
                                END
                            )
                        ),
                        'FM9999999990.099'
                    )
                ELSE
                    TO_CHAR(
                        ROUND(
                            TO_NUMBER(t1.reported_result),
                            3 - FLOOR(
                                CASE
                                    WHEN ABS(TO_NUMBER(t1.reported_result)) > 0
                                    THEN LOG(10, ABS(TO_NUMBER(t1.reported_result)))
                                    ELSE 0
                                END
                            )
                        ),
                        'FM9999999990.099'
                    )
                END
            ELSE NULL
        END AS ic50_rr,
        t1.param4        AS ic50_org,
        t1.err           AS err,
        t1.r2            AS r2,
        t3.id            AS sam_id,
        t4.protocol_id,
        t5.label         AS classification,
        t8.result        AS ic90,
        t11.z_prime      AS z_prime,
        t11.low_avg,
        t11.high_avg,
        t11.well_analysis_id,
        t9.name          AS name
    FROM
        ds3_userdata.su_analysis_results     t1
        LEFT JOIN ds3_userdata.su_groupings            t2 ON t1.group_id = t2.id
        LEFT JOIN ds3_userdata.su_samples              t3 ON t2.sample_id = t3.id
        LEFT JOIN ds3_userdata.tm_experiments          t4 ON t2.experiment_id = t4.experiment_id
        LEFT JOIN ds3_userdata.su_plates               t10 ON t10.experiment_id = t2.experiment_id
                                                AND t2.plate_set = t10.plate_set
        LEFT JOIN (
            SELECT
                b.experiment_id,
                b.plate_number,
                a.plate_id,
                c.well_analysis_id,
                round(
                    z_prime, 4
                ) AS z_prime,
                low_avg,
                high_avg
            FROM
                ds3_userdata.su_plate_results a
                LEFT JOIN ds3_userdata.su_plates        b ON a.plate_id = b.id
                LEFT JOIN ds3_userdata.su_well_layers   c ON b.experiment_id = c.experiment_id
                                                           AND a.layer_id = c.id
            WHERE
                c.well_analysis_id = 1
            ORDER BY
                b.experiment_id,
                b.plate_number
        )                                    t11 ON t10.id = t11.plate_id
        LEFT JOIN ds3_userdata.su_classification_rules t5 ON t1.rule_id = t5.id
        LEFT JOIN ds3_userdata.su_analysis_layers      t6 ON t1.layer_id = t6.id
        LEFT JOIN ds3_userdata.su_charts               t7 ON t7.result_id = t1.id
        LEFT JOIN ds3_userdata.su_derived_results      t8 ON t8.result_id = t1.id
        LEFT JOIN ds3_userdata.su_derived_analyses     t9 ON t9.id = t8.derived_analysis_id
    WHERE
        t1.status = 1
        AND t4.completed_date IS NOT NULL
        AND t4.protocol_id IN ( 542, 543, 544, 561, 562, 441 )
    ORDER BY
        t6.name,
        t3.display_name
)
SELECT
    experiment_id,
    id,
    plate_number,
    analysis_name,
    modified_date,
    x_max,
    reported_result,
    status,
    min,
    max,
    slope,
    ic50,
    analysis_results_id,
    compound_status,
    ic50_rr,
    ic50_rr_nm,
    ic50_org,
    err,
    r2,
    sam_id,
    protocol_id,
    classification,
    max_response,
    absolute_ic50,
    highest_concentration,
    response_at_hc,
    round(
        AVG(z_prime), 4
    ) AS z_prime,
    low_avg,
    high_avg,
    well_analysis_id,
    x_min
FROM
    t PIVOT (
        MAX(ic90)
        FOR name
        IN ( '% Max Response' AS max_response,
            'Absolute IC50' AS absolute_ic50,
            'Highest Concentration (µM)' AS highest_concentration,
            '% Response @HC' AS response_at_hc
        )
    ) pvt
GROUP BY
    experiment_id,
    x_min,
    id,
    plate_number,
    analysis_name,
    modified_date,
    x_max,
    reported_result,
    status,
    min,
    max,
    slope,
    ic50,
    analysis_results_id,
    compound_status,
    ic50_rr,
    ic50_rr_nm,
    ic50_org,
    err,
    r2,
    sam_id,
    protocol_id,
    classification,
    max_response,
    absolute_ic50,
    highest_concentration,
    response_at_hc,
    low_avg,
    high_avg,
    well_analysis_id
ORDER BY
    experiment_id,
    plate_number
