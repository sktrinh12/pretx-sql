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
          WHEN highest_concentration > 0 THEN
              highest_concentration
          ELSE
          NULL
          END
      ))
  )                   AS highest_concentration,
  NULL                AS minr,
  STDDEV(ic50_nm)     AS sd,
  STDDEV(span)        AS sdspan,
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
  assay_type,
  cell_line,
  target,
  compound_status,
  time_hr,
  COUNT(formatted_id) AS c
FROM
  (
    SELECT
        formatted_id,
        ic50,
        ic50_nm,
        span,
        min,
        absolute_ic50,
        response_at_hc,
        assay_type,
        highest_concentration,
        cell_line,
        target,
        compound_status,
        CASE
        WHEN time_hr IN ( 2, 1.75 ) THEN
        2
        ELSE
        time_hr
        END AS time_hr
    FROM
        ds3_userdata.jak2_a_lisa_registry_summary
  )
WHERE
  compound_status IS NULL
GROUP BY
  formatted_id,
  assay_type,
  cell_line,
  target,
  time_hr,
  compound_status

UNION ALL

SELECT
  formatted_id,
  NULL                AS p,
  MAX(ic50 * 1000)    AS r,
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
  NULL                AS min,
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
          WHEN highest_concentration > 0 THEN
              highest_concentration
          ELSE
          NULL
          END
      ))
  )                   AS highest_concentration,
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
  )                   AS minr,
  STDDEV(ic50_nm)     AS sd,
  STDDEV(span)        AS sdspan,
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
  assay_type,
  cell_line,
  target,
  compound_status,
  time_hr,
  COUNT(formatted_id) AS c
FROM
  (
    SELECT
        formatted_id,
        ic50,
        ic50_nm,
        span,
        min,
        absolute_ic50,
        response_at_hc,
        assay_type,
        highest_concentration,
        cell_line,
        target,
        compound_status,
        CASE
        WHEN time_hr IN ( 2, 1.75 ) THEN
        2
        ELSE
        time_hr
        END AS time_hr
    FROM
        ds3_userdata.jak2_a_lisa_registry_summary
  )
WHERE
  compound_status IS NOT NULL
GROUP BY
  formatted_id,
  assay_type,
  cell_line,
  target,
  time_hr,
  compound_status
