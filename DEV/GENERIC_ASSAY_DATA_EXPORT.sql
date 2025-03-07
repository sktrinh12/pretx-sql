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
    tm.experiment_name,
    tp.protocol,
    tp.cell_line,
    tp.assay_type,
    tp.target,
    tm.descr,
    tm.isid,
    CAST(wr.created_date AS DATE) AS created_date,
    tp.passage,
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
    ar.r2
FROM
    ds3_userdata.su_well_results wr
    JOIN ds3_userdata.su_well_layers  wl ON wl.id = wr.layer_id
      AND wr.created_date >= ADD_MONTHS(SYSDATE, -3)
    JOIN ds3_userdata.su_wells        w ON w.id = wr.well_id
      AND w.status = 0
    JOIN ds3_userdata.su_well_samples ws ON ws.well_id = w.id
    JOIN ds3_userdata.su_samples      s ON s.id = ws.sample_id
    JOIN ds3_userdata.su_plates       p ON p.id = w.plate_id
    JOIN ds3_userdata.su_plate_results pr ON pr.plate_id = p.id
      AND pr.layer_id = wl.id
    JOIN ds3_userdata.su_groupings g ON g.experiment_id = wl.experiment_id
      AND g.sample_id = s.id
      AND g.plate_set = p.plate_set
    JOIN ds3_userdata.su_analysis_results ar ON ar.group_id = g.id
      AND ar.status <> 2
    JOIN (
      SELECT
         experiment_id,
         experiment_name,
         protocol_id,
         isid,
         descr
      FROM ds3_userdata.tm_experiments 
    ) tm ON tm.experiment_id = wl.experiment_id
    LEFT JOIN (
      SELECT *
        FROM (
            SELECT
                tm.experiment_id,
                p.protocol,
                tm.property_name,
                tm.property_value
            FROM ds3_userdata.tm_prot_exp_fields_values tm
            JOIN ds3_userdata.tm_protocols p
              ON p.protocol_id = tm.protocol_id
            WHERE tm.property_name IN ('Cell Line', 'Target', 'Passage', 'Assay Type')
        ) src
      PIVOT (
          MAX(property_value)
          FOR property_name IN ('Cell Line' AS Cell_Line,
                                'Target' AS Target,
                                'Passage' AS Passage,
                                'Assay Type' AS Assay_Type)
      )
    ) tp ON tp.experiment_id = g.experiment_id
WHERE s.display_name like 'PRT%'
ORDER BY
    s.display_name,
    p.plate_number

