WITH T AS (
    SELECT
        bioreg_id,
        payload,
        payload_linker,
        antibody_name
    FROM
        ds3_userdata.adc_reg_info
    WHERE
        antibody_name IN (
            'AbCellera_0042',
            'AbCellera_0057',
            'AbCellera_0005',
            'AbCellera_0061',
            'AbCellera_0222',
            'AbCellera_0232',
            'AbCellera_0250',
            'AbCellera_0397',
            'AbCellera_0438',
            'AbCellera_Isotype' )
),
U AS (
    SELECT
        bioreg_id,
        payload        AS prt_number
    FROM t
    UNION ALL
    SELECT
        bioreg_id,
        payload_linker AS prt_number
    FROM t
    UNION ALL
    SELECT
        bioreg_id,
        bioreg_id      AS prt_number
    from t
),
V AS (
SELECT
    s.display_name AS formatted_batch_id,
    p.name         AS plate_name,
    p.plate_number,
    pr.z_prime,
    pr.low_avg,
    pr.high_avg,
    pr.low_sd,
    pr.high_sd,
    CHR(65 + w.rowval) || LPAD(TO_CHAR(w.colval + 1), 2, '0') AS location,
    round(
        ws.conc, 5
    )                AS conc,
    ws.conc_unit,
    wl.experiment_id,
    CAST(wr.created_date AS DATE) AS created_date,
    ie.passage,
    w.sample_num,
    w.samp_type      AS sample_type,
    ar.param1        AS min,
    ar.param2        AS max,
    ar.X_MIN,
    ar.X_MAX,
    ar.Y_MIN_OBS,
    ar.Y_MAX_OBS,
    ar.Y_MAX_MINUS_Y_MIN,
    ar.Y_MIN_OBS_MINUS_Y_MIN,
    ar.Y_MAX_OBS_MINUS_Y_MAX,
    ar.X_AT_Y50,
    ar.Y_AT_MIN_X,
    ar.Y_AT_MAX_X,
    ar.X_AT_MIN_Y,
    ar.X_AT_MAX_Y,
    ar.RESULT_NUMERIC,
    ar.reported_result,
    wl.name        AS layer,
    wr.value       AS result,
    ar.param4      AS ic50,
    ar.param3      AS slope,
    ar.err,
    ar.r2,
    bg.bioreg_id
FROM
    ds3_userdata.su_well_results wr
    JOIN ds3_userdata.su_well_layers  wl ON wl.id = wr.layer_id
      AND wr.created_date >= ADD_MONTHS(SYSDATE, -12)
    JOIN ds3_userdata.su_wells        w ON w.id = wr.well_id
    JOIN ds3_userdata.su_well_samples ws ON ws.well_id = w.id
    JOIN ds3_userdata.su_samples      s ON s.id = ws.sample_id
    JOIN u bg ON bg.prt_number = SUBSTR(s.display_name, 1, 10)
      AND bg.prt_number <> 'PRT1003404'
    JOIN ds3_userdata.su_plates       p ON p.id = w.plate_id
    JOIN ds3_userdata.su_plate_results pr ON pr.plate_id = p.id
      AND pr.layer_id = wl.id
    JOIN ds3_userdata.su_groupings g ON g.experiment_id = wl.experiment_id
      AND g.sample_id = s.id
      AND g.plate_set = p.plate_set
    JOIN ds3_userdata.su_analysis_results ar ON ar.group_id = g.id
    JOIN (
        SELECT
            experiment_id, 
            passage
        FROM 
         ds3_userdata.ic50_exp_info
        WHERE 
            project_code is NOT NULL OR
            assay_type IS NOT NULL
    ) ie ON ie.experiment_id = g.experiment_id
),
X AS (
SELECT 
    EXPERIMENT_ID,
    LISTAGG(DISTINCT substr(
        formatted_batch_id, 1, 10
    ), ', ') WITHIN GROUP(
    ORDER BY
        substr(
            formatted_batch_id, 1, 10
        )
    ) AS compound_list
FROM 
    V
GROUP BY 
    PLATE_NAME, 
    PLATE_NUMBER,
    EXPERIMENT_ID
)
SELECT 
    formatted_batch_id,
    plate_name,
    plate_number,
    z_prime,
    low_avg,
    high_avg,
    low_sd,
    high_sd,
    location,
    conc,
    conc_unit,
    experiment_id,
    created_date,
    passage,
    sample_num,
    sample_type,
    min,
    max,
    x_min,
    x_max,
    y_min_obs,
    y_max_obs,
    y_max_minus_y_min,
    y_min_obs_minus_y_min,
    y_max_obs_minus_y_max,
    x_at_y50,
    y_at_min_x,
    y_at_max_x,
    x_at_min_y,
    x_at_max_y,
    result_numeric,
    reported_result,
    layer,
    result,
    ic50,
    slope,
    err,
    r2,
    bioreg_id  
FROM V
WHERE experiment_id IN (
    SELECT experiment_id FROM X
    WHERE compound_list LIKE '%PRT500%'
)
ORDER BY
    formatted_batch_id,
    plate_number
