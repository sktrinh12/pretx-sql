WITH t AS (
    SELECT
        to_char(
            t4.experiment_id
        )               AS experiment_id,
        t3.display_name AS id,
        t6.name         AS analysis_name,
        t1.reported_result,
        t1.status,
        t1.param1       AS min,
        t1.param2       AS max,
        t1.param3       AS slope,
        t1.param4       AS ic50_org,
        CASE
        WHEN t1.y_min_obs > 50
             OR t1.param1 > 50 THEN
        t1.x_max
        ELSE
        t1.param4
        END             AS ic50,
        CASE
        WHEN t1.y_min_obs > 50
             OR t1.param1 > 50 THEN
        '>'
        ELSE
        ''
        END             compound_status,
        t1.err          AS err,
        t1.r2           AS r2,
        t7.data         AS graph,
        t5.label        AS classification,
        t8.result       AS ic90,
        t11.high_avg,
        t11.low_avg,
        t11.plate_number,
        t11.z_prime     AS z_prime,
        t1.y_at_max_x   AS PERCENT_INHIBITION,
        t1.x_max,
        t9.name         AS NAME
    FROM
        ds3_userdata.su_analysis_results     t1
        LEFT JOIN ds3_userdata.su_groupings            t2 ON t1.group_id = t2.id
        LEFT JOIN ds3_userdata.su_samples              t3 ON t2.sample_id = t3.id
        JOIN (
            SELECT DISTINCT
                ws.group_id,
                plt.experiment_id,
                ws.sample_id,
                plt.id
            FROM
                ds3_userdata.su_well_samples ws
                JOIN ds3_userdata.su_wells  w ON ws.well_id = w.id
                JOIN ds3_userdata.su_plates plt ON w.plate_id = plt.id
        )                                    t10 ON t10.group_id = t2.id
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
        LEFT JOIN ds3_userdata.tm_experiments          t4 ON t2.experiment_id = t4.experiment_id
        LEFT JOIN ds3_userdata.su_classification_rules t5 ON t1.rule_id = t5.id
        LEFT JOIN ds3_userdata.su_analysis_layers      t6 ON t1.layer_id = t6.id
        LEFT JOIN ds3_userdata.su_charts               t7 ON t7.result_id = t1.id
        LEFT JOIN ds3_userdata.su_derived_results      t8 ON t8.result_id = t1.id
        LEFT JOIN ds3_userdata.su_derived_analyses t9 ON t9.id = t8.derived_analysis_id
    WHERE
        t1.status = 1
        AND t4.completed_date IS NOT NULL
),
U AS (
SELECT
    experiment_id,
    id,
    analysis_name,
    MAX(NAME) AS NAME,
    reported_result,
    status,
    min,
    max,
    slope,
    ic50_org,
    ic50,
    IC90,
    IC90 AS pivotIC90,
    compound_status,
    err,
    r2,
    classification,
    plate_number,
    round(
        AVG(z_prime), 4
    ) AS z_prime,
    high_avg,
    low_avg,
    PERCENT_INHIBITION,
    x_max
FROM t
GROUP BY
    experiment_id,
    id,
    analysis_name,
    reported_result,
    status,
    min,
    max,
    slope,
    ic50_org,
    ic50,
    IC90,
    compound_status,
    err,
    r2,
    classification,
    ic90,
    PERCENT_INHIBITION,
    x_max,
    high_avg,
    low_avg,
    plate_number
)
SELECT * from U
 PIVOT
 (
     MAX(pivotIC90) FOR NAME IN (
         '% Max Response' AS Max_Response,
         'Absolute IC50' AS Absolute_IC50,
         'Highest Concentration (µM)' AS Highest_Concentration,
         '% Response @HC' AS Response_at_HC
     )
 ) PVT
