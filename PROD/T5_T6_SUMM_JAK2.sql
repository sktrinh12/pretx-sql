SELECT
  t5.formatted_id,
  CASE
  WHEN t5.assay_type = 'AlphaLISA'
       AND t5.target = 'pSTAT5'
       AND t5.cell_line = 'BAF3-EPOR-JAK2WT'
       AND t5.p IS NOT NULL
       AND t5.r IS NOT NULL THEN
  t5.p
  WHEN t5.assay_type = 'AlphaLISA'
       AND t5.target = 'pSTAT5'
       AND t5.cell_line = 'BAF3-EPOR-JAK2WT'
       AND t5.p IS NOT NULL THEN
  t5.p
  WHEN t5.assay_type = 'AlphaLISA'
       AND t5.target = 'pSTAT5'
       AND t5.cell_line = 'BAF3-EPOR-JAK2WT'
       AND t5.p IS NULL THEN
  t5.r
  END             ic50_nm_baf3,
  CASE
  WHEN t5.assay_type = 'AlphaLISA'
       AND t5.target = 'pSTAT5'
       AND t5.cell_line = 'BAF3-EPOR-JAK2WT' THEN
  t6.d
  END             n_ic50_baf3,
  CASE
  WHEN t5.assay_type = 'AlphaLISA'
       AND t5.target = 'pSTAT5'
       AND t5.cell_line = 'BAF3-EPOR-JAK2WT'
       AND t5.p IS NOT NULL THEN
  2
  WHEN t5.assay_type = 'AlphaLISA'
       AND t5.target = 'pSTAT5'
       AND t5.cell_line = 'BAF3-EPOR-JAK2WT'
       AND t5.p IS NULL
       AND t5.r IS NOT NULL
       AND t5.compound_status = '>' THEN
  1
  WHEN t5.assay_type = 'AlphaLISA'
       AND t5.target = 'pSTAT5'
       AND t5.cell_line = 'BAF3-EPOR-JAK2WT'
       AND t5.p IS NULL
       AND t5.r IS NOT NULL
       AND t5.compound_status = '<' THEN
  0
  END             cs_ic50_baf3,
  CASE
  WHEN t5.assay_type = 'AlphaLISA'
       AND t5.target = 'pSTAT5'
       AND t5.cell_line = 'BAF3-EPOR-JAK2WT'
       AND t5.p IS NOT NULL
       AND t5.r IS NOT NULL THEN
  100 - t5.min
  WHEN t5.assay_type = 'AlphaLISA'
       AND t5.target = 'pSTAT5'
       AND t5.cell_line = 'BAF3-EPOR-JAK2WT'
       AND t5.p IS NOT NULL THEN
  100 - t5.min
  WHEN t5.assay_type = 'AlphaLISA'
       AND t5.target = 'pSTAT5'
       AND t5.cell_line = 'BAF3-EPOR-JAK2WT'
       AND t5.p IS NULL THEN
  100 - t5.minr
  END             dmax_baf3,
  CASE
  WHEN t5.assay_type = 'AlphaLISA'
       AND t5.target = 'pSTAT5'
       AND t5.cell_line = 'BAF3-EPOR-JAK2WT'
       AND t5.p IS NOT NULL
       AND t5.r IS NOT NULL THEN
  t5.pspan
  WHEN t5.assay_type = 'AlphaLISA'
       AND t5.target = 'pSTAT5'
       AND t5.cell_line = 'BAF3-EPOR-JAK2WT'
       AND t5.p IS NOT NULL THEN
  t5.pspan
  WHEN t5.assay_type = 'AlphaLISA'
       AND t5.target = 'pSTAT5'
       AND t5.cell_line = 'BAF3-EPOR-JAK2WT'
       AND t5.p IS NULL THEN
  t5.pspan
  END             span_baf3,
  CASE
  WHEN t5.assay_type = 'AlphaLISA'
       AND t5.target = 'pSTAT5'
       AND t5.cell_line = 'BAF3-EPOR-JAK2WT'
       AND t5.p IS NOT NULL
       AND t5.r IS NOT NULL THEN
  t5.sd
  WHEN t5.assay_type = 'AlphaLISA'
       AND t5.target = 'pSTAT5'
       AND t5.cell_line = 'BAF3-EPOR-JAK2WT'
       AND t5.p IS NOT NULL THEN
  t5.sd
  WHEN t5.assay_type = 'AlphaLISA'
       AND t5.target = 'pSTAT5'
       AND t5.cell_line = 'BAF3-EPOR-JAK2WT'
       AND t5.p IS NULL THEN
  t5.sd
  END             sd_ic50_baf3,
  CASE
  WHEN t5.assay_type = 'AlphaLISA'
       AND t5.target = 'pSTAT5'
       AND t5.cell_line = 'BAF3-EPOR-JAK2WT'
       AND t5.p IS NOT NULL
       AND t5.r IS NOT NULL THEN
  t5.presp_hc
  WHEN t5.assay_type = 'AlphaLISA'
       AND t5.target = 'pSTAT5'
       AND t5.cell_line = 'BAF3-EPOR-JAK2WT'
       AND t5.p IS NOT NULL THEN
  t5.presp_hc
  WHEN t5.assay_type = 'AlphaLISA'
       AND t5.target = 'pSTAT5'
       AND t5.cell_line = 'BAF3-EPOR-JAK2WT'
       AND t5.p IS NULL THEN
  t5.presp_hc
  END             resp_hc_baf3,
  CASE
  WHEN t5.assay_type = 'AlphaLISA'
       AND t5.target = 'pSTAT5'
       AND t5.cell_line = 'BAF3-EPOR-JAK2WT'
       AND t5.p IS NOT NULL
       AND t5.r IS NOT NULL THEN
  t5.highest_concentration
  WHEN t5.assay_type = 'AlphaLISA'
       AND t5.target = 'pSTAT5'
       AND t5.cell_line = 'BAF3-EPOR-JAK2WT'
       AND t5.p IS NOT NULL THEN
  t5.highest_concentration
  WHEN t5.assay_type = 'AlphaLISA'
       AND t5.target = 'pSTAT5'
       AND t5.cell_line = 'BAF3-EPOR-JAK2WT'
       AND t5.p IS NULL THEN
  t5.highest_concentration
  END             hc_baf3,

  FROM ds3_userdata.t5_subq_summ_jak2 t5
  LEFT JOIN (
      SELECT
          formatted_id,
          assay_type,
          cell_line,
          target,
          COUNT(formatted_id) AS d
      FROM
          ds3_userdata.jak2_a_lisa_registry_summary
      GROUP BY
          formatted_id,
          assay_type,
          target,
          cell_line
  )  t6 ON t5.formatted_id = t6.formatted_id
  AND t5.assay_type = t6.assay_type
  AND t5.cell_line = t6.cell_line
  AND t5.target = t6.target
