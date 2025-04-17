SELECT
    t11.formatted_id,
    CASE
    WHEN t11.assay_type = 'CellTiter-Glo'
         AND t11.cell_line = 'BAF3-TPOR-JAK2VF'
         AND t11.time_hr = 72
         AND t11.p IS NOT NULL
         AND t11.r IS NOT NULL THEN
    t11.p
    WHEN t11.assay_type = 'CellTiter-Glo'
         AND t11.cell_line = 'BAF3-TPOR-JAK2VF'
         AND t11.time_hr = 72
         AND t11.p IS NOT NULL THEN
    t11.p
    WHEN t11.assay_type = 'CellTiter-Glo'
         AND t11.cell_line = 'BAF3-TPOR-JAK2VF'
         AND t11.time_hr = 72
         AND t11.p IS NULL THEN
    t11.r
    END             ic50_nm_ctg_vf,
    CASE
    WHEN t11.assay_type = 'CellTiter-Glo'
         AND t11.cell_line = 'BAF3-TPOR-JAK2VF'
         AND t11.time_hr = 72 THEN
    t11.c
    END             n_ic50_ctg_vf,
    CASE
    WHEN t11.assay_type = 'CellTiter-Glo'
         AND t11.cell_line = 'BAF3-TPOR-JAK2VF'
         AND t11.time_hr = 72
         AND t11.p IS NOT NULL THEN
    2
    WHEN t11.assay_type = 'CellTiter-Glo'
         AND t11.cell_line = 'BAF3-TPOR-JAK2VF'
         AND t11.time_hr = 72
         AND t11.p IS NULL
         AND t11.r IS NOT NULL
         AND t11.compound_status = '>' THEN
    1
    WHEN t11.assay_type = 'CellTiter-Glo'
         AND t11.cell_line = 'BAF3-TPOR-JAK2VF'
         AND t11.time_hr = 72
         AND t11.p IS NULL
         AND t11.r IS NOT NULL
         AND t11.compound_status = '<' THEN
    0
    END             cs_ic50_ctg_vf,
    CASE
    WHEN t11.assay_type = 'CellTiter-Glo'
         AND t11.cell_line = 'BAF3-TPOR-JAK2VF'
         AND t11.time_hr = 72
         AND t11.p IS NOT NULL
         AND t11.r IS NOT NULL THEN
    100 - t11.min
    WHEN t11.assay_type = 'CellTiter-Glo'
         AND t11.cell_line = 'BAF3-TPOR-JAK2VF'
         AND t11.time_hr = 72
         AND t11.p IS NOT NULL THEN
    100 - t11.min
    WHEN t11.assay_type = 'CellTiter-Glo'
         AND t11.cell_line = 'BAF3-TPOR-JAK2VF'
         AND t11.time_hr = 72
         AND t11.p IS NULL THEN
    100 - t11.minr
    END             dmax_ctg_vf,
    CASE
    WHEN t11.assay_type = 'CellTiter-Glo'
         AND t11.cell_line = 'BAF3-TPOR-JAK2VF'
         AND t11.time_hr = 72
         AND t11.p IS NOT NULL
         AND t11.r IS NOT NULL THEN
    t11.pspan
    WHEN t11.assay_type = 'CellTiter-Glo'
         AND t11.cell_line = 'BAF3-TPOR-JAK2VF'
         AND t11.time_hr = 72
         AND t11.p IS NOT NULL THEN
    t11.pspan
    WHEN t11.assay_type = 'CellTiter-Glo'
         AND t11.cell_line = 'BAF3-TPOR-JAK2VF'
         AND t11.time_hr = 72
         AND t11.p IS NULL THEN
    t11.pspan
    END             span_ctg_vf,
    CASE
    WHEN t11.assay_type = 'CellTiter-Glo'
         AND t11.cell_line = 'BAF3-TPOR-JAK2VF'
         AND t11.time_hr = 72
         AND t11.p IS NOT NULL
         AND t11.r IS NOT NULL THEN
    t11.sd
    WHEN t11.assay_type = 'CellTiter-Glo'
         AND t11.cell_line = 'BAF3-TPOR-JAK2VF'
         AND t11.time_hr = 72
         AND t11.p IS NOT NULL THEN
    t11.sd
    WHEN t11.assay_type = 'CellTiter-Glo'
         AND t11.cell_line = 'BAF3-TPOR-JAK2VF'
         AND t11.time_hr = 72
         AND t11.p IS NULL THEN
    t11.sd
    END             sd_ic50_ctg_vf,
    CASE
    WHEN t11.assay_type = 'CellTiter-Glo'
         AND t11.cell_line = 'BAF3-TPOR-JAK2WT'
         AND t11.time_hr = 72
         AND t11.p IS NOT NULL
         AND t11.r IS NOT NULL THEN
    t11.p
    WHEN t11.assay_type = 'CellTiter-Glo'
         AND t11.cell_line = 'BAF3-TPOR-JAK2WT'
         AND t11.time_hr = 72
         AND t11.p IS NOT NULL THEN
    t11.p
    WHEN t11.assay_type = 'CellTiter-Glo'
         AND t11.cell_line = 'BAF3-TPOR-JAK2WT'
         AND t11.time_hr = 72
         AND t11.p IS NULL THEN
    t11.r
    END             ic50_nm_ctg_wt,
    CASE
    WHEN t11.assay_type = 'CellTiter-Glo'
         AND t11.cell_line = 'BAF3-TPOR-JAK2WT'
         AND t11.time_hr = 72 THEN
    t11.c
    END             n_ic50_ctg_wt,
    CASE
    WHEN t11.assay_type = 'CellTiter-Glo'
         AND t11.cell_line = 'BAF3-TPOR-JAK2WT'
         AND t11.time_hr = 72
         AND t11.p IS NOT NULL THEN
    2
    WHEN t11.assay_type = 'CellTiter-Glo'
         AND t11.cell_line = 'BAF3-TPOR-JAK2WT'
         AND t11.time_hr = 72
         AND t11.p IS NULL
         AND t11.r IS NOT NULL
         AND t11.compound_status = '>' THEN
    1
    WHEN t11.assay_type = 'CellTiter-Glo'
         AND t11.cell_line = 'BAF3-TPOR-JAK2WT'
         AND t11.time_hr = 72
         AND t11.p IS NULL
         AND t11.r IS NOT NULL
         AND t11.compound_status = '<' THEN
    0
    END             cs_ic50_ctg_wt,
    CASE
    WHEN t11.assay_type = 'CellTiter-Glo'
         AND t11.cell_line = 'BAF3-TPOR-JAK2WT'
         AND t11.time_hr = 72
         AND t11.p IS NOT NULL
         AND t11.r IS NOT NULL THEN
    100 - t11.min
    WHEN t11.assay_type = 'CellTiter-Glo'
         AND t11.cell_line = 'BAF3-TPOR-JAK2WT'
         AND t11.time_hr = 72
         AND t11.p IS NOT NULL THEN
    100 - t11.min
    WHEN t11.assay_type = 'CellTiter-Glo'
         AND t11.cell_line = 'BAF3-TPOR-JAK2WT'
         AND t11.time_hr = 72
         AND t11.p IS NULL THEN
    100 - t11.minr
    END             dmax_ctg_wt,
    CASE
    WHEN t11.assay_type = 'CellTiter-Glo'
         AND t11.cell_line = 'BAF3-TPOR-JAK2WT'
         AND t11.time_hr = 72
         AND t11.p IS NOT NULL
         AND t11.r IS NOT NULL THEN
    t11.pspan
    WHEN t11.assay_type = 'CellTiter-Glo'
         AND t11.cell_line = 'BAF3-TPOR-JAK2WT'
         AND t11.time_hr = 72
         AND t11.p IS NOT NULL THEN
    t11.pspan
    WHEN t11.assay_type = 'CellTiter-Glo'
         AND t11.cell_line = 'BAF3-TPOR-JAK2WT'
         AND t11.time_hr = 72
         AND t11.p IS NULL THEN
    t11.pspan
    END             span_ctg_wt,
    CASE
    WHEN t11.assay_type = 'CellTiter-Glo'
         AND t11.cell_line = 'BAF3-TPOR-JAK2WT'
         AND t11.time_hr = 72
         AND t11.p IS NOT NULL
         AND t11.r IS NOT NULL THEN
    t11.sd
    WHEN t11.assay_type = 'CellTiter-Glo'
         AND t11.cell_line = 'BAF3-TPOR-JAK2WT'
         AND t11.time_hr = 72
         AND t11.p IS NOT NULL THEN
    t11.sd
    WHEN t11.assay_type = 'CellTiter-Glo'
         AND t11.cell_line = 'BAF3-TPOR-JAK2WT'
         AND t11.time_hr = 72
         AND t11.p IS NULL THEN
    t11.sd
    END             sd_ic50_ctg_wt,

    CASE
      WHEN t11.assay_type = 'CellTiter-Glo'
           AND t11.cell_line = 'TF-1'
           AND t11.time_hr = 168
           AND t11.cells_well = 400
           AND t11.p IS NOT NULL
           AND t11.r IS NOT NULL THEN t11.p
      WHEN t11.assay_type = 'CellTiter-Glo'
           AND t11.cell_line = 'TF-1'
           AND t11.time_hr = 168
           AND t11.cells_well = 400
           AND t11.p IS NOT NULL THEN t11.p
      WHEN t11.assay_type = 'CellTiter-Glo'
           AND t11.cell_line = 'TF-1'
           AND t11.time_hr = 168
           AND t11.cells_well = 400
           AND t11.p IS NULL THEN t11.r
    END ic50_nm_ctg_tf1,
    CASE
        WHEN t11.assay_type = 'CellTiter-Glo'
             AND t11.cell_line = 'TF-1'
             AND t11.time_hr = 168
             AND t11.cells_well = 400
             AND t11.p IS NOT NULL
             AND t11.r IS NOT NULL THEN t11.p2*1000
        WHEN t11.assay_type = 'CellTiter-Glo'
             AND t11.cell_line = 'TF-1'
             AND t11.time_hr = 168
             AND t11.cells_well = 400
             AND t11.p IS NOT NULL THEN t11.p2*1000
        WHEN t11.assay_type = 'CellTiter-Glo'
             AND t11.cell_line = 'TF-1'
             AND t11.time_hr = 168
             AND t11.cells_well = 400
             AND t11.p IS NULL THEN t11.p2*1000
    END tf1_ctg_abs_ic50,
    CASE
      WHEN t11.assay_type = 'CellTiter-Glo'
           AND t11.cell_line = 'TF-1'
           AND t11.time_hr = 168
           AND t11.cells_well = 400
      THEN t11.c
    END n_ic50_ctg_tf1,
    CASE
      WHEN t11.assay_type = 'CellTiter-Glo'
           AND t11.cell_line = 'TF-1'
           AND t11.time_hr = 168
           AND t11.cells_well = 400
           AND t11.p IS NOT NULL
           AND t11.r IS NOT NULL THEN t11.presp_hc
      WHEN t11.assay_type = 'CellTiter-Glo'
           AND t11.cell_line = 'TF-1'
           AND t11.time_hr = 168
           AND t11.cells_well = 400
           AND t11.p IS NOT NULL THEN t11.presp_hc

      WHEN t11.assay_type = 'CellTiter-Glo'
           AND t11.cell_line = 'TF-1'
           AND t11.time_hr = 168
           AND t11.cells_well = 400
           AND t11.p IS NULL THEN t11.presp_hc
    END resp_hc_ctg_tf1,
    CASE
      WHEN t11.assay_type = 'CellTiter-Glo'
           AND t11.cell_line = 'TF-1'
           AND t11.time_hr = 168
           AND t11.cells_well = 400
           AND t11.p IS NOT NULL
           AND t11.r IS NOT NULL THEN t11.sd
      WHEN t11.assay_type = 'CellTiter-Glo'
           AND t11.cell_line = 'TF-1'
           AND t11.time_hr = 168
           AND t11.cells_well = 400
           AND t11.p IS NOT NULL THEN t11.sd
      WHEN t11.assay_type = 'CellTiter-Glo'
           AND t11.cell_line = 'TF-1'
           AND t11.time_hr = 168
           AND t11.cells_well = 400
           AND t11.p IS NULL THEN t11.sd
    END sd_ic50_ctg_tf1,

    CASE
      WHEN t11.assay_type = 'CellTiter-Glo'
           AND t11.cell_line = 'SET2'
           AND t11.time_hr = 168
           AND t11.cells_well = 400
           AND t11.p IS NOT NULL
           AND t11.r IS NOT NULL THEN
      t11.p
      WHEN t11.assay_type = 'CellTiter-Glo'
           AND t11.cell_line = 'SET2'
           AND t11.time_hr = 168
           AND t11.cells_well = 400
           AND t11.p IS NOT NULL THEN
      t11.p
      WHEN t11.assay_type = 'CellTiter-Glo'
           AND t11.cell_line = 'SET2'
           AND t11.time_hr = 168
           AND t11.cells_well = 400
           AND t11.p IS NULL THEN
      t11.r
    END             ic50_nm_ctg_set2,
    CASE
        WHEN t11.assay_type = 'CellTiter-Glo'
             AND t11.cell_line = 'SET2'
             AND t11.time_hr = 168
             AND t11.cells_well = 400
             AND t11.p IS NOT NULL
             AND t11.r IS NOT NULL THEN t11.p2*1000
        WHEN t11.assay_type = 'CellTiter-Glo'
             AND t11.cell_line = 'SET2'
             AND t11.time_hr = 168
             AND t11.cells_well = 400
             AND t11.p IS NOT NULL THEN t11.p2*1000
        WHEN t11.assay_type = 'CellTiter-Glo'
             AND t11.cell_line = 'SET2'
             AND t11.time_hr = 168
             AND t11.cells_well = 400
             AND t11.p IS NULL THEN t11.p2*1000
    END set2_ctg_abs_ic50,
    CASE
      WHEN t11.assay_type = 'CellTiter-Glo'
           AND t11.cell_line = 'SET2'
           AND t11.time_hr = 168
           AND t11.cells_well = 400
      THEN t11.c
    END             n_ic50_ctg_set2,
    CASE
      WHEN t11.assay_type = 'CellTiter-Glo'
           AND t11.cell_line = 'SET2'
           AND t11.time_hr = 168
           AND t11.cells_well = 400
           AND t11.p IS NOT NULL THEN 2
      WHEN t11.assay_type = 'CellTiter-Glo'
           AND t11.cell_line = 'SET2'
           AND t11.time_hr = 168
           AND t11.cells_well = 400
           AND t11.p IS NULL
           AND t11.r IS NOT NULL
           AND t11.compound_status = '>' THEN 1
      WHEN t11.assay_type = 'CellTiter-Glo'
           AND t11.cell_line = 'SET2'
           AND t11.time_hr = 168
           AND t11.cells_well = 400
           AND t11.p IS NULL
           AND t11.r IS NOT NULL
           AND t11.compound_status = '<' THEN 0
    END             cs_ic50_ctg_set2,
    CASE
      WHEN t11.assay_type = 'CellTiter-Glo'
           AND t11.cell_line = 'SET2'
           AND t11.time_hr = 168
           AND t11.cells_well = 400
           AND t11.p IS NOT NULL
           AND t11.r IS NOT NULL THEN
      t11.presp_hc
      WHEN t11.assay_type = 'CellTiter-Glo'
           AND t11.cell_line = 'SET2'
           AND t11.time_hr = 168
           AND t11.cells_well = 400
           AND t11.p IS NOT NULL THEN
      t11.presp_hc
      WHEN t11.assay_type = 'CellTiter-Glo'
           AND t11.cell_line = 'SET2'
           AND t11.time_hr = 168
           AND t11.cells_well = 400
           AND t11.p IS NULL THEN
      t11.presp_hc
    END             resp_hc_ctg_set2,
    CASE
      WHEN t11.assay_type = 'CellTiter-Glo'
           AND t11.cell_line = 'SET2'
           AND t11.time_hr = 168
           AND t11.cells_well = 400
           AND t11.p IS NOT NULL
           AND t11.r IS NOT NULL THEN
      t11.sd
      WHEN t11.assay_type = 'CellTiter-Glo'
           AND t11.cell_line = 'SET2'
           AND t11.time_hr = 168
           AND t11.cells_well = 400
           AND t11.p IS NOT NULL THEN
      t11.sd
      WHEN t11.assay_type = 'CellTiter-Glo'
           AND t11.cell_line = 'SET2'
           AND t11.time_hr = 168
           AND t11.cells_well = 400
           AND t11.p IS NULL THEN
      t11.sd
    END             sd_ic50_ctg_set2,
    CASE
      WHEN t11.assay_type = 'CellTiter-Glo'
           AND t11.cell_line = 'UT-7'
           AND t11.p IS NOT NULL
           AND t11.r IS NOT NULL THEN
      t11.p
      WHEN t11.assay_type = 'CellTiter-Glo'
           AND t11.cell_line = 'UT-7'
           AND t11.p IS NOT NULL THEN
      t11.p
      WHEN t11.assay_type = 'CellTiter-Glo'
           AND t11.cell_line = 'UT-7'
           AND t11.p IS NULL THEN
      t11.r
    END             ic50_nm_ctg_ut7,
    CASE
      WHEN t11.assay_type = 'CellTiter-Glo'
           AND t11.cell_line = 'UT-7'
           AND t11.p IS NOT NULL
           AND t11.r IS NOT NULL THEN
      t11.p2 * 1000
      WHEN t11.assay_type = 'CellTiter-Glo'
           AND t11.cell_line = 'UT-7'
           AND t11.p IS NOT NULL THEN
      t11.p2 * 1000
      WHEN t11.assay_type = 'CellTiter-Glo'
           AND t11.cell_line = 'UT-7'
           AND t11.p IS NULL THEN
      t11.p2 * 1000
    END             ctg_ut7_abs_ic50,
    CASE
      WHEN t11.assay_type = 'CellTiter-Glo'
           AND t11.cell_line = 'UT-7'

           AND t11.p IS NOT NULL
           AND t11.r IS NOT NULL THEN
      t11.sd
      WHEN t11.assay_type = 'CellTiter-Glo'
           AND t11.cell_line = 'UT-7'
           AND t11.p IS NOT NULL THEN
      t11.sd
      WHEN t11.assay_type = 'CellTiter-Glo'
           AND t11.cell_line = 'UT-7'
           AND t11.p IS NULL THEN
      t11.sd
    END             sd_ic50_ctg_ut7,
    CASE
      WHEN t11.assay_type = 'CellTiter-Glo'
           AND t11.cell_line = 'UT-7'
           AND t11.p IS NOT NULL
           AND t11.r IS NOT NULL THEN
      t11.presp_hc
      WHEN t11.assay_type = 'CellTiter-Glo'
           AND t11.cell_line = 'UT-7'
           AND t11.p IS NOT NULL THEN
      t11.presp_hc
      WHEN t11.assay_type = 'CellTiter-Glo'
           AND t11.cell_line = 'UT-7'
           AND t11.p IS NULL THEN
      t11.presp_hc
    END             resp_hc_ctg_ut7,
    CASE
      WHEN t11.assay_type = 'CellTiter-Glo'
           AND t11.cell_line = 'UT-7' THEN
      t14.d
    END             n_ic50_ctg_ut7,
    CASE
      WHEN t11.assay_type = 'CellTiter-Glo'
           AND t11.cell_line = 'UT-7'
           AND t11.p IS NOT NULL THEN
      2
      WHEN t11.assay_type = 'CellTiter-Glo'
           AND t11.cell_line = 'UT-7'
           AND t11.p IS NULL
           AND t11.r IS NOT NULL
           AND t11.compound_status = '>' THEN
      1
      WHEN t11.assay_type = 'CellTiter-Glo'
           AND t11.cell_line = 'UT-7'
           AND t11.p IS NULL
           AND t11.r IS NOT NULL
           AND t11.compound_status = '<' THEN
      0
    END             cs_ic50_ctg_ut7
    FROM
        (
        SELECT
            formatted_id,
            power(
                10, AVG(log(
                    10,
                    CASE
                    WHEN ic50 > 0 THEN
                        ic50 * 1000
                    ELSE
                    NULL
                    END
                ))
            )                   AS p,
            NULL                AS r,
            power(
                10, AVG(log(
                    10,
                    CASE
                    WHEN span > 0 THEN
                        span
                    ELSE
                    NULL
                    END
                ))
            )                   AS pspan,
            power(
                10, AVG(log(
                    10,
                    CASE
                    WHEN min > 0 THEN
                        min
                    ELSE
                    NULL
                    END
                ))
            )                   AS min,
            power(
                10, AVG(log(
                    10,
                    CASE
                    WHEN response_at_hc > 0 THEN
                        response_at_hc
                    ELSE
                    NULL
                    END
                ))
            )                   AS presp_hc,
            power(
                10, AVG(log(
                    10,
                    CASE
                    WHEN absolute_ic50 > 0 THEN
                        absolute_ic50
                    ELSE
                    NULL
                    END
                ))
            )                   AS p2,
            NULL                AS minr,
            STDDEV(ic50_nm)     AS sd,
            STDDEV(span)        AS sdspan,
            assay_type,
            cell_line,
            target,
            compound_status,
            CASE
                WHEN time_hr IN (2, 1.75) THEN 2
                ELSE time_hr
            END AS time_hr,
            cells_well,
            COUNT(formatted_id) AS c
        FROM
            ds3_userdata.jak2_registry_summary
        GROUP BY
            formatted_id,
            assay_type,
            cell_line,
            cells_well,
            target,
            compound_status,
            CASE
                WHEN time_hr IN (2, 1.75) THEN 2
                ELSE time_hr
            END
    ) t11
    JOIN (
        SELECT
             formatted_id,
             assay_type,
             cell_line,
             target,
             time_hr,
             COUNT(*) AS d
        FROM ds3_userdata.jak2_prolif_summary
        WHERE assay_type = 'CellTiter-Glo'
           AND cell_line = 'UT-7'
        GROUP BY
            formatted_id,
            assay_type,
            cell_line,
            target,
            time_hr
    ) t14 ON t11.formatted_id = t14.formatted_id
      AND t11.assay_type = t14.assay_type
      AND t11.cell_line = t14.cell_line
      AND (t11.target = t14.target OR (t11.target IS NULL AND t14.target IS NULL))
      AND t11.time_hr = t14.time_hr
