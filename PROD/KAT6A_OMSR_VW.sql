SELECT *
  FROM
    (SELECT
       power(10, 2 * sqrt(2) * stddev_ic50) AS ic50,
       formatted_id,
       assay_type,
       cell_line,
       NULL AS target,
       NULL AS cofactor,
       NULL AS cofactor_conc
     FROM
       (SELECT
          stddev(log_m_ic50) AS stddev_ic50,
          formatted_id,
          assay_type,
          cell_line
        FROM
          (SELECT log(10, median) AS log_m_ic50, ROWNUM,
             created_date,
             formatted_id,
             row_number() over(PARTITION BY formatted_id, assay_type, cell_line
                               ORDER BY created_date DESC) AS order_by,
             count(formatted_id) OVER (PARTITION BY formatted_id, assay_type, cell_line) AS c,
             assay_type,
             cell_line
           FROM
             (SELECT
                created_date,
                median(ic50_nm) AS median,
                formatted_id,
                assay_type,
                cell_line
              FROM
                (SELECT
                   ic50_nm,
                   created_date,
                   formatted_id,
                   assay_type,
                   cell_line,
                   order_by
                 FROM
                   (SELECT
                      ic50*1000 AS ic50_nm,
                      to_date(substr(created_date, 1, 10)) AS created_date,
                      formatted_id,
                      assay_type,
                      cell_line,
                      row_number() over(PARTITION BY formatted_id, assay_type, cell_line
                                        ORDER BY created_date DESC) AS order_by,
                      count(formatted_id) OVER (PARTITION BY formatted_id, assay_type, cell_line) AS c
                    FROM kat6a_registry_summary
                    WHERE classification <> 'Very Potent'
                      AND formatted_id IN
                        (SELECT reference_compounds
                         FROM
                           (SELECT
                              substr(a.reference_compounds, 1, 10) AS reference_compounds,
                              b.created_date,
                              assay_type,
                              row_number() OVER (PARTITION BY a.project_code, assay_type
                                                 ORDER BY b.created_date DESC) AS r
                            FROM tm_protocol_props_pivot a
                            JOIN kat6a_summary_vw c ON substr(a.reference_compounds, 1, 10)=c.formatted_id
                            JOIN tm_experiments b ON a.experiment_id=b.experiment_id
                            WHERE reference_compounds IS NOT NULL
                              AND assay_type IS NOT NULL
                            ORDER BY created_date DESC)
                         WHERE r =1)
                    GROUP BY
                      created_date,
                      formatted_id,
                      assay_type,
                      cell_line,
                      ic50)
                 WHERE c>=6)
              GROUP BY
                created_date,
                formatted_id,
                assay_type,
                cell_line
              ORDER BY created_date DESC))
        WHERE c>=6
          AND order_by BETWEEN 1 AND c
        GROUP BY
          formatted_id,
          assay_type,
          cell_line))
  WHERE cell_line IS NOT NULL
    AND assay_type IS NOT NULL
  UNION ALL
  SELECT *
  FROM
    (SELECT
       power(10, 2 * sqrt(2) * stddev_ic50) AS ic50,
       formatted_id,
       'TR-FRET' AS assay_type,
       NULL AS cell_line,
       target,
       cofactor,
       cofactor_conc
     FROM
       (SELECT
          stddev(log_m_ic50) AS stddev_ic50,
          formatted_id,
          target,
          cofactor,
          cofactor_conc
        FROM
          (SELECT log(10, median) AS log_m_ic50, ROWNUM,
             created_date,
             formatted_id,
             row_number() over(PARTITION BY formatted_id, target, cofactor, cofactor_conc
                               ORDER BY created_date DESC) AS order_by,
             count(formatted_id) OVER (PARTITION BY formatted_id, target, cofactor, cofactor_conc) AS c,
             cofactor,
             cofactor_conc,
             target
           FROM
             (SELECT
                created_date,
                median(ic50_nm) AS median,
                formatted_id,
                cofactor,
                cofactor_conc,
                target
              FROM
                (SELECT
                   ic50_nm,
                   created_date,
                   formatted_id,
                   target,
                   cofactor,
                   cofactor_conc,
                   order_by
                 FROM
                   (SELECT
                      ic50_nm,
                      to_date(substr(created_date, 1, 10)) AS created_date,
                      formatted_id,
                      target,
                      cofactor,
                      cofactor_conc,
                      row_number() over(PARTITION BY formatted_id, target, cofactor_conc, cofactor
                                        ORDER BY created_date DESC) AS order_by,
                      count(formatted_id) OVER (PARTITION BY formatted_id, target, cofactor, cofactor_conc) AS c
                    FROM kat6a_trfret_registry_summary
                    WHERE classification <> 'Very Potent'
                      AND compound_status IS NULL
                      AND formatted_id IN
                        (SELECT reference_compounds
                         FROM
                           (SELECT
                              a.project_name,
                              substr(a.reference_compounds, 1, 10) AS reference_compounds,
                              b.created_date,
                              row_number() OVER (PARTITION BY a.project_code
                                                 ORDER BY b.created_date DESC) AS r
                            FROM tm_protocol_props_pivot a
                            JOIN kat6a_summary_vw c ON substr(a.reference_compounds, 1, 10)=c.formatted_id
                            JOIN tm_experiments b ON a.experiment_id=b.experiment_id
                            WHERE a.protocol_id IN (
                                                      '441',
                                                      '543')
                              AND reference_compounds IS NOT NULL
                            ORDER BY created_date DESC)
                         WHERE r =1)
                    GROUP BY
                      created_date,
                      formatted_id,
                      target,
                      cofactor,
                      cofactor_conc,
                      ic50_nm)
                 WHERE c>=6)
              GROUP BY
                created_date,
                formatted_id,
                cofactor,
                cofactor_conc,
                target
              ORDER BY created_date DESC))
        WHERE c>=6
          AND order_by BETWEEN 1 AND c
        GROUP BY
          formatted_id,
          cofactor,
          cofactor_conc,
          target))
  WHERE target IS NOT NULL
    AND cofactor IS NOT NULL
    AND cofactor_conc IS NOT NULL
  UNION ALL
  SELECT *
  FROM
    (SELECT
       power(10, 2 * sqrt(2) * stddev_ic50) AS ic50,
       formatted_id,
       assay_type,
       cell_line,
       NULL AS target,
       NULL AS cofactor,
       NULL AS cofactor_conc
     FROM
       (SELECT
          stddev(log_m_ic50) AS stddev_ic50,
          formatted_id,
          assay_type,
          cell_line
        FROM
          (SELECT log(10, median) AS log_m_ic50, ROWNUM,
             created_date,
             formatted_id,
             row_number() over(PARTITION BY formatted_id, assay_type, cell_line
                               ORDER BY created_date DESC) AS order_by,
             count(formatted_id) OVER (PARTITION BY formatted_id, assay_type, cell_line) AS c,
             assay_type,
             cell_line
           FROM
             (SELECT
                created_date,
                median(ic50_nm) AS median,
                formatted_id,
                assay_type,
                cell_line
              FROM
                (SELECT
                   ic50_nm,
                   created_date,
                   formatted_id,
                   assay_type,
                   cell_line,
                   order_by
                 FROM
                   (SELECT
                      ic50*1000 AS ic50_nm,
                      to_date(substr(created_date, 1, 10)) AS created_date,
                      formatted_id,
                      assay_type,
                      cell_line,
                      row_number() over(PARTITION BY formatted_id, assay_type, cell_line
                                        ORDER BY created_date DESC) AS order_by,
                      count(formatted_id) OVER (PARTITION BY formatted_id, assay_type, cell_line) AS c
                    FROM kat6a_icw_registry_summary
                    WHERE classification <> 'Very Potent'
                      AND formatted_id IN
                        (SELECT reference_compounds
                         FROM
                           (SELECT
                              substr(a.reference_compounds, 1, 10) AS reference_compounds,
                              b.created_date,
                              assay_type,
                              row_number() OVER (PARTITION BY a.project_code, assay_type
                                                 ORDER BY b.created_date DESC) AS r
                            FROM tm_protocol_props_pivot a
                            JOIN kat6a_summary_vw c ON substr(a.reference_compounds, 1, 10)=c.formatted_id
                            JOIN tm_experiments b ON a.experiment_id=b.experiment_id
                            WHERE reference_compounds IS NOT NULL
                              AND assay_type IS NOT NULL
                            ORDER BY created_date DESC)
                         WHERE r =1)
                    GROUP BY
                      created_date,
                      formatted_id,
                      assay_type,
                      cell_line,
                      ic50)
                 WHERE c>=6)
              GROUP BY
                created_date,
                formatted_id,
                assay_type,
                cell_line
              ORDER BY created_date DESC))
        WHERE c>=6
          AND order_by BETWEEN 1 AND c
        GROUP BY
          formatted_id,
          assay_type,
          cell_line))
  WHERE assay_type IS NOT NULL
    AND cell_line IS NOT NULL
