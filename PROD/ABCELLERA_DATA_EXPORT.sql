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
u AS (
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
)
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
    JOIN ds3_userdata.su_well_layers  wl ON wl.id = wr.layer_id AND wr.created_date >= ADD_MONTHS(SYSDATE, -12)
    JOIN ds3_userdata.su_wells        w ON w.id = wr.well_id
    JOIN ds3_userdata.su_well_samples ws ON ws.well_id = w.id
    JOIN ds3_userdata.su_samples      s ON s.id = ws.sample_id
    JOIN u bg ON bg.prt_number = SUBSTR(s.display_name, 1, 10)
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
ORDER BY
    s.display_name,
    p.plate_number
