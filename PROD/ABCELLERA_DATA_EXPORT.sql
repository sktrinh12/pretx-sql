WITH T AS (
    SELECT 
        bioreg_id,
        payload,
        payload_linker,
        antibody_name
    FROM ADC_REG_INFO
    WHERE antibody_name
    IN (
    'AbCellera_0042',
    'AbCellera_0057',
    'AbCellera_0005',
    'AbCellera_0061',
    'AbCellera_0222',
    'AbCellera_0232',
    'AbCellera_0250',
    'AbCellera_0397',
    'AbCellera_0438',
    'AbCellera_Isotype'
    )
)
SELECT
    wl.experiment_id,
    wr.created_date,
    rd.smiles,
    p.plate_number,
    p.name AS plate_name,
    CHR(65 + w.rowval) || LPAD(TO_CHAR(w.colval + 1), 2, '0') AS location,
    s.display_name AS formatted_batch_id,
    round(
        ws.conc, 5
    )              conc,
    ws.conc_unit,
    wl.name        layer,
    ie.passage,
    wr.value       result,
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
    ar.RESULT_NUMERIC,
    ar.X_AT_MIN_Y,
    ar.X_AT_MAX_Y,
    ar.reported_result,
    ar.param4        AS ic50,
    ar.param1        AS min,
    ar.param2        AS max,
    ar.param3        AS slope,
    ar.err,
    ar.r2,
    w.sample_num,
    w.samp_type AS sample_type,
    pr.z_prime,
    pr.low_avg,
    pr.high_avg,
    pr.low_sd,
    pr.high_sd
FROM
    ds3_userdata.su_well_results wr
    JOIN ds3_userdata.su_well_layers  wl ON wl.id = wr.layer_id
    JOIN ds3_userdata.su_wells        w ON w.id = wr.well_id
    JOIN ds3_userdata.su_plates       p ON p.id = w.plate_id
    JOIN ds3_userdata.su_well_samples ws ON ws.well_id = w.id
    JOIN ds3_userdata.su_samples      s ON s.id = ws.sample_id
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
    JOIN (
        SELECT 
            formatted_id,
            SMILES 
        FROM c$pinpoint.reg_data
    ) rd ON rd.formatted_id = SUBSTR(s.display_name, 1, 10)
WHERE
    substr(
        s.display_name, 1, 10
    ) IN (
        SELECT
           payload 
        FROM T
        UNION ALL
        SELECT
            payload_linker
        FROM T
    )
ORDER BY
    s.display_name,
    p.plate_number,
    w.rowval,
    w.colval
