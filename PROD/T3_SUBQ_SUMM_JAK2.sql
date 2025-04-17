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
  NULL                AS minr,
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
  STDDEV(ic50_nm)     AS sd,
  STDDEV(span)        AS sdspan,
  assay_type,
  cell_line,
  target,
  compound_status,
  COUNT(formatted_id) AS c
FROM
    ds3_userdata.jak2_registry_summary
WHERE
    compound_status IS NULL
GROUP BY
  formatted_id,
  assay_type,
  cell_line,
  target,
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
          WHEN min > 0 THEN
              min
          ELSE
          NULL
          END
      ))
  )                   AS minr,
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
  STDDEV(ic50_nm)     AS sd,
  STDDEV(span)        AS sdspan,
  assay_type,
  cell_line,
  target,
  compound_status,
  COUNT(formatted_id) AS c
FROM
  ds3_userdata.jak2_registry_summary
WHERE
  compound_status IS NOT NULL
GROUP BY
  formatted_id,
  assay_type,
  cell_line,
  target,
  compound_status
