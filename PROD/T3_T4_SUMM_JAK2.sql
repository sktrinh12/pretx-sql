SELECT
  t3.formatted_id,
  CASE
  WHEN t3.assay_type = 'HiBit'
       AND t3.cell_line = 'HEL9217 (V617F)'
       AND t3.p IS NOT NULL
       AND t3.r IS NOT NULL THEN
  t3.p
  WHEN t3.assay_type = 'HiBit'
       AND t3.cell_line = 'HEL9217 (V617F)'
       AND t3.p IS NOT NULL THEN
  t3.p
  WHEN t3.assay_type = 'HiBit'
       AND t3.cell_line = 'HEL9217 (V617F)'
       AND t3.p IS NULL THEN
  t3.r
  END             ic50_nm_hibit,
  CASE
  WHEN t3.assay_type = 'HiBit'
       AND t3.cell_line = 'HEL9217 (V617F)' THEN
  t4.d
  END             n_ic50_hibit,
  CASE
  WHEN t3.assay_type = 'HiBit'
       AND t3.cell_line = 'HEL9217 (V617F)'
       AND t3.p IS NOT NULL THEN
  2
  WHEN t3.assay_type = 'HiBit'
       AND t3.cell_line = 'HEL9217 (V617F)'
       AND t3.p IS NULL
       AND t3.r IS NOT NULL
       AND t3.compound_status = '>' THEN
  1
  WHEN t3.assay_type = 'HiBit'
       AND t3.cell_line = 'HEL9217 (V617F)'
       AND t3.p IS NULL
       AND t3.r IS NOT NULL
       AND t3.compound_status = '<' THEN
  0
  END             cs_ic50_hibit,
  CASE
  WHEN t3.assay_type = 'HiBit'
       AND t3.cell_line = 'HEL9217 (V617F)'
       AND t3.p IS NOT NULL
       AND t3.r IS NOT NULL THEN
  100 - t3.min
  WHEN t3.assay_type = 'HiBit'
       AND t3.cell_line = 'HEL9217 (V617F)'
       AND t3.p IS NOT NULL THEN
  100 - t3.min
  WHEN t3.assay_type = 'HiBit'
       AND t3.cell_line = 'HEL9217 (V617F)'
       AND t3.p IS NULL THEN
  100 - t3.minr
  END             dmax_hibit,
  CASE
  WHEN t3.assay_type = 'HiBit'
       AND t3.cell_line = 'HEL9217 (V617F)'
       AND t3.p IS NOT NULL
       AND t3.r IS NOT NULL THEN
  t3.pspan
  WHEN t3.assay_type = 'HiBit'
       AND t3.cell_line = 'HEL9217 (V617F)'
       AND t3.p IS NOT NULL THEN
  t3.pspan
  WHEN t3.assay_type = 'HiBit'
       AND t3.cell_line = 'HEL9217 (V617F)'
       AND t3.p IS NULL THEN
  t3.pspan
  END             span_hibit,
  CASE
  WHEN t3.assay_type = 'HiBit'
       AND t3.cell_line = 'HEL9217 (V617F)'
       AND t3.p IS NOT NULL
       AND t3.r IS NOT NULL THEN
  t3.sd
  WHEN t3.assay_type = 'HiBit'
       AND t3.cell_line = 'HEL9217 (V617F)'
       AND t3.p IS NOT NULL THEN
  t3.sd
  WHEN t3.assay_type = 'HiBit'
       AND t3.cell_line = 'HEL9217 (V617F)'
       AND t3.p IS NULL THEN
  t3.sd
  END             sd_ic50_hibit,
  CASE
  WHEN t3.assay_type = 'HiBit Plasma'
       AND t3.cell_line = 'HEL9217 (V617F)'
       AND t3.p IS NOT NULL
       AND t3.r IS NOT NULL THEN
  t3.p
  WHEN t3.assay_type = 'HiBit Plasma'
       AND t3.cell_line = 'HEL9217 (V617F)'
       AND t3.p IS NOT NULL THEN
  t3.p
  WHEN t3.assay_type = 'HiBit Plasma'
       AND t3.cell_line = 'HEL9217 (V617F)'
       AND t3.p IS NULL THEN
  t3.r
  END             ic50_nm_hibitplasma,
  CASE
  WHEN t3.assay_type = 'HiBit Plasma'
       AND t3.cell_line = 'HEL9217 (V617F)' THEN
  t4.d
  END             n_ic50_hibitplasma,
  CASE
  WHEN t3.assay_type = 'HiBit Plasma'
       AND t3.cell_line = 'HEL9217 (V617F)'
       AND t3.p IS NOT NULL THEN
  2
  WHEN t3.assay_type = 'HiBit Plasma'
       AND t3.cell_line = 'HEL9217 (V617F)'
       AND t3.p IS NULL
       AND t3.r IS NOT NULL
       AND t3.compound_status = '>' THEN
  1
  WHEN t3.assay_type = 'HiBit Plasma'
       AND t3.cell_line = 'HEL9217 (V617F)'
       AND t3.p IS NULL
       AND t3.r IS NOT NULL
       AND t3.compound_status = '<' THEN
  0
  END             cs_ic50_hibitplasma,
  CASE
  WHEN t3.assay_type = 'HiBit Plasma'
       AND t3.cell_line = 'HEL9217 (V617F)'
       AND t3.p IS NOT NULL
       AND t3.r IS NOT NULL THEN
  100 - t3.min
  WHEN t3.assay_type = 'HiBit Plasma'
       AND t3.cell_line = 'HEL9217 (V617F)'
       AND t3.p IS NOT NULL THEN
  100 - t3.min
  WHEN t3.assay_type = 'HiBit Plasma'
       AND t3.cell_line = 'HEL9217 (V617F)'
       AND t3.p IS NULL THEN
  100 - t3.minr
  END             dmax_hibitplasma,
  CASE
  WHEN t3.assay_type = 'HiBit Plasma'
       AND t3.cell_line = 'HEL9217 (V617F)'
       AND t3.p IS NOT NULL
       AND t3.r IS NOT NULL THEN
  t3.pspan
  WHEN t3.assay_type = 'HiBit Plasma'
       AND t3.cell_line = 'HEL9217 (V617F)'
       AND t3.p IS NOT NULL THEN
  t3.pspan
  WHEN t3.assay_type = 'HiBit Plasma'
       AND t3.cell_line = 'HEL9217 (V617F)'
       AND t3.p IS NULL THEN
  t3.pspan
  END             span_hibitplasma,
  CASE
  WHEN t3.assay_type = 'HiBit Plasma'
       AND t3.cell_line = 'HEL9217 (V617F)'
       AND t3.p IS NOT NULL
       AND t3.r IS NOT NULL THEN
  t3.sd
  WHEN t3.assay_type = 'HiBit Plasma'
       AND t3.cell_line = 'HEL9217 (V617F)'
       AND t3.p IS NOT NULL THEN
  t3.sd
  WHEN t3.assay_type = 'HiBit Plasma'
       AND t3.cell_line = 'HEL9217 (V617F)'
       AND t3.p IS NULL THEN
  t3.sd
  END             sd_ic50_hibitplasma,
  CASE
  WHEN t3.assay_type = 'HiBit'
       AND t3.cell_line = 'K562 HiBiT'
       AND t3.p IS NOT NULL
       AND t3.r IS NOT NULL THEN
  t3.p
  WHEN t3.assay_type = 'HiBit'
       AND t3.cell_line = 'K562 HiBiT'
       AND t3.p IS NOT NULL THEN
  t3.p
  WHEN t3.assay_type = 'HiBit'
       AND t3.cell_line = 'K562 HiBiT'
       AND t3.p IS NULL THEN
  t3.r
  END             ic50_nm_hibit_k562,
  CASE
  WHEN t3.assay_type = 'HiBit'
       AND t3.cell_line = 'K562 HiBiT' THEN
  t4.d
  END             n_ic50_hibit_k562,
  CASE
  WHEN t3.assay_type = 'HiBit'
       AND t3.cell_line = 'K562 HiBiT'
       AND t3.p IS NOT NULL THEN
  2
  WHEN t3.assay_type = 'HiBit'
       AND t3.cell_line = 'K562 HiBiT'
       AND t3.p IS NULL
       AND t3.r IS NOT NULL
       AND t3.compound_status = '>' THEN
  1
  WHEN t3.assay_type = 'HiBit'
       AND t3.cell_line = 'K562 HiBiT'
       AND t3.p IS NULL
       AND t3.r IS NOT NULL
       AND t3.compound_status = '<' THEN
  0
  END             cs_ic50_hibit_k562,
  CASE
  WHEN t3.assay_type = 'HiBit'
       AND t3.cell_line = 'K562 HiBiT'
       AND t3.p IS NOT NULL
       AND t3.r IS NOT NULL THEN
  100 - t3.min
  WHEN t3.assay_type = 'HiBit'
       AND t3.cell_line = 'K562 HiBiT'
       AND t3.p IS NOT NULL THEN
  100 - t3.min
  WHEN t3.assay_type = 'HiBit'
       AND t3.cell_line = 'K562 HiBiT'
       AND t3.p IS NULL THEN
  100 - t3.minr
  END             dmax_hibit_k562,
  CASE
  WHEN t3.assay_type = 'HiBit'
       AND t3.cell_line = 'K562 HiBiT'
       AND t3.p IS NOT NULL
       AND t3.r IS NOT NULL THEN
  t3.pspan
  WHEN t3.assay_type = 'HiBit'
       AND t3.cell_line = 'K562 HiBiT'
       AND t3.p IS NOT NULL THEN
  t3.pspan
  WHEN t3.assay_type = 'HiBit'
       AND t3.cell_line = 'K562 HiBiT'
       AND t3.p IS NULL THEN
  t3.pspan
  END             span_hibit_k562,
  CASE
  WHEN t3.assay_type = 'HiBit'
       AND t3.cell_line = 'K562 HiBiT'
       AND t3.p IS NOT NULL
       AND t3.r IS NOT NULL THEN
  t3.sd
  WHEN t3.assay_type = 'HiBit'
       AND t3.cell_line = 'K562 HiBiT'
       AND t3.p IS NOT NULL THEN
  t3.sd
  WHEN t3.assay_type = 'HiBit'
       AND t3.cell_line = 'K562 HiBiT'
       AND t3.p IS NULL THEN
  t3.sd
  END             sd_ic50_hibit_k562
  FROM
    ds3_userdata.t3_subq_summ_jak2 t3 
LEFT JOIN (
  SELECT
      formatted_id,
      assay_type,
      cell_line,
      target,
      COUNT(formatted_id) AS d
  FROM
      ds3_userdata.jak2_registry_summary
  GROUP BY
      formatted_id,
      assay_type,
      target,
      cell_line
)  t4 ON t3.formatted_id = t4.formatted_id
      AND t3.assay_type = t4.assay_type
      AND t3.cell_line = t4.cell_line
      AND t3.target = t4.target
