SELECT
  t13.formatted_id,
  CASE
  WHEN t13.assay_type = 'AlphaLISA'
       AND t13.target = 'pSTAT5'
       AND t13.cell_line = 'UKE-1'
       AND t13.time_hr = 2
       AND t13.p IS NOT NULL
       AND t13.r IS NOT NULL THEN
  t13.p
  WHEN t13.assay_type = 'AlphaLISA'
       AND t13.target = 'pSTAT5'
       AND t13.cell_line = 'UKE-1'
       AND t13.time_hr = 2
       AND t13.p IS NOT NULL THEN
  t13.p
  WHEN t13.assay_type = 'AlphaLISA'
       AND t13.target = 'pSTAT5'
       AND t13.cell_line = 'UKE-1'
       AND t13.time_hr = 2
       AND t13.p IS NULL THEN
  t13.r
  END             ic50_nm_2uke1,
  CASE
  WHEN t13.assay_type = 'AlphaLISA'
       AND t13.target = 'pSTAT5'
       AND t13.cell_line = 'UKE-1'
       AND t13.time_hr = 2
       AND t13.p IS NOT NULL
       AND t13.r IS NOT NULL THEN
  t13.p2 * 1000
  WHEN t13.assay_type = 'AlphaLISA'
       AND t13.target = 'pSTAT5'
       AND t13.cell_line = 'UKE-1'
       AND t13.time_hr = 2
       AND t13.p IS NOT NULL THEN
  t13.p2 * 1000
  WHEN t13.assay_type = 'AlphaLISA'
       AND t13.target = 'pSTAT5'
       AND t13.cell_line = 'UKE-1'
       AND t13.time_hr = 2
       AND t13.p IS NULL THEN
  t13.p2 * 1000
  END             uke1_2_abs_ic50,
  CASE
  WHEN t13.assay_type = 'AlphaLISA'
       AND t13.target = 'pSTAT5'
       AND t13.cell_line = 'UKE-1'
       AND t13.time_hr = 2 THEN
  t14.d
  END             n_ic50_2uke1,
  CASE
  WHEN t13.assay_type = 'AlphaLISA'
       AND t13.target = 'pSTAT5'
       AND t13.cell_line = 'UKE-1'
       AND t13.time_hr = 2
       AND t13.p IS NOT NULL THEN
  2
  WHEN t13.assay_type = 'AlphaLISA'
       AND t13.target = 'pSTAT5'
       AND t13.cell_line = 'UKE-1'
       AND t13.time_hr = 2
       AND t13.p IS NULL
       AND t13.r IS NOT NULL
       AND t13.compound_status = '>' THEN
  1
  WHEN t13.assay_type = 'AlphaLISA'
       AND t13.target = 'pSTAT5'
       AND t13.cell_line = 'UKE-1'
       AND t13.time_hr = 2
       AND t13.p IS NULL
       AND t13.r IS NOT NULL
       AND t13.compound_status = '<' THEN
  0
  END             cs_ic50_2uke1,
  CASE
  WHEN t13.assay_type = 'AlphaLISA'
       AND t13.target = 'pSTAT5'
       AND t13.cell_line = 'UKE-1'
       AND t13.time_hr = 2
       AND t13.p IS NOT NULL
       AND t13.r IS NOT NULL THEN
  100 - t13.min
  WHEN t13.assay_type = 'AlphaLISA'
       AND t13.target = 'pSTAT5'
       AND t13.cell_line = 'UKE-1'
       AND t13.time_hr = 2
       AND t13.p IS NOT NULL THEN
  100 - t13.min
  WHEN t13.assay_type = 'AlphaLISA'
       AND t13.target = 'pSTAT5'
       AND t13.cell_line = 'UKE-1'
       AND t13.time_hr = 2
       AND t13.p IS NULL THEN
  100 - t13.minr
  END             dmax_2uke1,
  CASE
  WHEN t13.assay_type = 'AlphaLISA'
       AND t13.target = 'pSTAT5'
       AND t13.cell_line = 'UKE-1'
       AND t13.time_hr = 2
       AND t13.p IS NOT NULL
       AND t13.r IS NOT NULL THEN
  t13.pspan
  WHEN t13.assay_type = 'AlphaLISA'
       AND t13.target = 'pSTAT5'
       AND t13.cell_line = 'UKE-1'
       AND t13.time_hr = 2
       AND t13.p IS NOT NULL THEN
  t13.pspan
  WHEN t13.assay_type = 'AlphaLISA'
       AND t13.target = 'pSTAT5'
       AND t13.cell_line = 'UKE-1'
       AND t13.time_hr = 2
       AND t13.p IS NULL THEN
  t13.pspan
  END             span_2uke1,
  CASE
  WHEN t13.assay_type = 'AlphaLISA'
       AND t13.target = 'pSTAT5'
       AND t13.cell_line = 'UKE-1'
       AND t13.time_hr = 2
       AND t13.p IS NOT NULL
       AND t13.r IS NOT NULL THEN
  t13.sd
  WHEN t13.assay_type = 'AlphaLISA'
       AND t13.target = 'pSTAT5'
       AND t13.cell_line = 'UKE-1'
       AND t13.time_hr = 2
       AND t13.p IS NOT NULL THEN
  t13.sd
  WHEN t13.assay_type = 'AlphaLISA'
       AND t13.target = 'pSTAT5'
       AND t13.cell_line = 'UKE-1'
       AND t13.time_hr = 2
       AND t13.p IS NULL THEN
  t13.sd
  END             sd_ic50_2uke1,
  CASE
  WHEN t13.assay_type = 'AlphaLISA'
       AND t13.target = 'pSTAT5'
       AND t13.cell_line = 'UKE-1'
       AND t13.time_hr = 2
       AND t13.p IS NOT NULL
       AND t13.r IS NOT NULL THEN
  t13.presp_hc
  WHEN t13.assay_type = 'AlphaLISA'
       AND t13.target = 'pSTAT5'
       AND t13.cell_line = 'UKE-1'
       AND t13.time_hr = 2
       AND t13.p IS NOT NULL THEN
  t13.presp_hc
  WHEN t13.assay_type = 'AlphaLISA'
       AND t13.target = 'pSTAT5'
       AND t13.cell_line = 'UKE-1'
       AND t13.time_hr = 2
       AND t13.p IS NULL THEN
  t13.presp_hc
  END             resp_hc_2uke1,
  CASE
  WHEN t13.assay_type = 'AlphaLISA'
       AND t13.target = 'pSTAT5'
       AND t13.cell_line = 'UKE-1'
       AND t13.time_hr = 2
       AND t13.p IS NOT NULL
       AND t13.r IS NOT NULL THEN
  t13.highest_concentration
  WHEN t13.assay_type = 'AlphaLISA'
       AND t13.target = 'pSTAT5'
       AND t13.cell_line = 'UKE-1'
       AND t13.time_hr = 2
       AND t13.p IS NOT NULL THEN
  t13.highest_concentration
  WHEN t13.assay_type = 'AlphaLISA'
       AND t13.target = 'pSTAT5'
       AND t13.cell_line = 'UKE-1'
       AND t13.time_hr = 2
       AND t13.p IS NULL THEN
  t13.highest_concentration
  END             hc_2uke1,
  CASE
  WHEN t13.assay_type = 'AlphaLISA'
       AND t13.target = 'pSTAT5'
       AND t13.cell_line = 'UKE-1'
       AND t13.time_hr = 4
       AND t13.p IS NOT NULL
       AND t13.r IS NOT NULL THEN
  t13.p
  WHEN t13.assay_type = 'AlphaLISA'
       AND t13.target = 'pSTAT5'
       AND t13.cell_line = 'UKE-1'
       AND t13.time_hr = 4
       AND t13.p IS NOT NULL THEN
  t13.p
  WHEN t13.assay_type = 'AlphaLISA'
       AND t13.target = 'pSTAT5'
       AND t13.cell_line = 'UKE-1'
       AND t13.time_hr = 4
       AND t13.p IS NULL THEN
  t13.r
  END             ic50_nm_4uke1,
  CASE
  WHEN t13.assay_type = 'AlphaLISA'
       AND t13.target = 'pSTAT5'
       AND t13.cell_line = 'UKE-1'
       AND t13.time_hr = 4
       AND t13.p IS NOT NULL
       AND t13.r IS NOT NULL THEN
  t13.p2 * 1000
  WHEN t13.assay_type = 'AlphaLISA'
       AND t13.target = 'pSTAT5'
       AND t13.cell_line = 'UKE-1'
       AND t13.time_hr = 4
       AND t13.p IS NOT NULL THEN
  t13.p2 * 1000
  WHEN t13.assay_type = 'AlphaLISA'
       AND t13.target = 'pSTAT5'
       AND t13.cell_line = 'UKE-1'
       AND t13.time_hr = 4
       AND t13.p IS NULL THEN
  t13.p2 * 1000
  END             uke1_4_abs_ic50,
  CASE
  WHEN t13.assay_type = 'AlphaLISA'
       AND t13.target = 'pSTAT5'
       AND t13.cell_line = 'UKE-1'
       AND t13.time_hr = 4 THEN
  t14.d
  END             n_ic50_4uke1,
  CASE
  WHEN t13.assay_type = 'AlphaLISA'
       AND t13.target = 'pSTAT5'
       AND t13.cell_line = 'UKE-1'
       AND t13.time_hr = 4
       AND t13.p IS NOT NULL THEN
  2
  WHEN t13.assay_type = 'AlphaLISA'
       AND t13.target = 'pSTAT5'
       AND t13.cell_line = 'UKE-1'
       AND t13.time_hr = 4
       AND t13.p IS NULL
       AND t13.r IS NOT NULL
       AND t13.compound_status = '>' THEN
  1
  WHEN t13.assay_type = 'AlphaLISA'
       AND t13.target = 'pSTAT5'
       AND t13.cell_line = 'UKE-1'
       AND t13.time_hr = 4
       AND t13.p IS NULL
       AND t13.r IS NOT NULL
       AND t13.compound_status = '<' THEN
  0
  END             cs_ic50_4uke1,
  CASE
  WHEN t13.assay_type = 'AlphaLISA'
       AND t13.target = 'pSTAT5'
       AND t13.cell_line = 'UKE-1'
       AND t13.time_hr = 4
       AND t13.p IS NOT NULL
       AND t13.r IS NOT NULL THEN
  100 - t13.min
  WHEN t13.assay_type = 'AlphaLISA'
       AND t13.target = 'pSTAT5'
       AND t13.cell_line = 'UKE-1'
       AND t13.time_hr = 4
       AND t13.p IS NOT NULL THEN
  100 - t13.min
  WHEN t13.assay_type = 'AlphaLISA'
       AND t13.target = 'pSTAT5'
       AND t13.cell_line = 'UKE-1'
       AND t13.time_hr = 4
       AND t13.p IS NULL THEN
  100 - t13.minr
  END             dmax_4uke1,
  CASE
  WHEN t13.assay_type = 'AlphaLISA'
       AND t13.target = 'pSTAT5'
       AND t13.cell_line = 'UKE-1'
       AND t13.time_hr = 4
       AND t13.p IS NOT NULL
       AND t13.r IS NOT NULL THEN
  t13.pspan
  WHEN t13.assay_type = 'AlphaLISA'
       AND t13.target = 'pSTAT5'
       AND t13.cell_line = 'UKE-1'
       AND t13.time_hr = 4
       AND t13.p IS NOT NULL THEN
  t13.pspan
  WHEN t13.assay_type = 'AlphaLISA'
       AND t13.target = 'pSTAT5'
       AND t13.cell_line = 'UKE-1'
       AND t13.time_hr = 4
       AND t13.p IS NULL THEN
  t13.pspan
  END             span_4uke1,
  CASE
  WHEN t13.assay_type = 'AlphaLISA'
       AND t13.target = 'pSTAT5'
       AND t13.cell_line = 'UKE-1'
       AND t13.time_hr = 4
       AND t13.p IS NOT NULL
       AND t13.r IS NOT NULL THEN
  t13.sd
  WHEN t13.assay_type = 'AlphaLISA'
       AND t13.target = 'pSTAT5'
       AND t13.cell_line = 'UKE-1'
       AND t13.time_hr = 4
       AND t13.p IS NOT NULL THEN
  t13.sd
  WHEN t13.assay_type = 'AlphaLISA'
       AND t13.target = 'pSTAT5'
       AND t13.cell_line = 'UKE-1'
       AND t13.time_hr = 4
       AND t13.p IS NULL THEN
  t13.sd
  END             sd_ic50_4uke1,
  CASE
  WHEN t13.assay_type = 'AlphaLISA'
       AND t13.target = 'pSTAT5'
       AND t13.cell_line = 'UKE-1'
       AND t13.time_hr = 4
       AND t13.p IS NOT NULL
       AND t13.r IS NOT NULL THEN
  t13.presp_hc
  WHEN t13.assay_type = 'AlphaLISA'
       AND t13.target = 'pSTAT5'
       AND t13.cell_line = 'UKE-1'
       AND t13.time_hr = 4
       AND t13.p IS NOT NULL THEN
  t13.presp_hc
  WHEN t13.assay_type = 'AlphaLISA'
       AND t13.target = 'pSTAT5'
       AND t13.cell_line = 'UKE-1'
       AND t13.time_hr = 4
       AND t13.p IS NULL THEN
  t13.presp_hc
  END             resp_hc_4uke1,
  CASE
  WHEN t13.assay_type = 'AlphaLISA'
       AND t13.target = 'pSTAT5'
       AND t13.cell_line = 'UKE-1'
       AND t13.time_hr = 4
       AND t13.p IS NOT NULL
       AND t13.r IS NOT NULL THEN
  t13.highest_concentration
  WHEN t13.assay_type = 'AlphaLISA'
       AND t13.target = 'pSTAT5'
       AND t13.cell_line = 'UKE-1'
       AND t13.time_hr = 4
       AND t13.p IS NOT NULL THEN
  t13.highest_concentration
  WHEN t13.assay_type = 'AlphaLISA'
       AND t13.target = 'pSTAT5'
       AND t13.cell_line = 'UKE-1'
       AND t13.time_hr = 4
       AND t13.p IS NULL THEN
  t13.highest_concentration
  END             hc_4uke1,
  CASE
  WHEN t13.assay_type = 'AlphaLISA'
       AND t13.target = 'pSTAT5'
       AND t13.cell_line = 'UKE-1'
       AND t13.time_hr = 2
       AND t13.p IS NOT NULL
       AND t13.r IS NOT NULL THEN
  t13.time_hr
  WHEN t13.assay_type = 'AlphaLISA'
       AND t13.target = 'pSTAT5'
       AND t13.cell_line = 'UKE-1'
       AND t13.time_hr = 2
       AND t13.p IS NOT NULL THEN
  t13.time_hr
  WHEN t13.assay_type = 'AlphaLISA'
       AND t13.target = 'pSTAT5'
       AND t13.cell_line = 'UKE-1'
       AND t13.time_hr = 2
       AND t13.p IS NULL THEN
  t13.time_hr
  END             time_2uke1,
  CASE
  WHEN t13.assay_type = 'AlphaLISA'
       AND t13.target = 'pSTAT5'
       AND t13.cell_line = 'UKE-1'
       AND t13.time_hr = 4
       AND t13.p IS NOT NULL
       AND t13.r IS NOT NULL THEN
  t13.time_hr
  WHEN t13.assay_type = 'AlphaLISA'
       AND t13.target = 'pSTAT5'
       AND t13.cell_line = 'UKE-1'
       AND t13.time_hr = 4
       AND t13.p IS NOT NULL THEN
  t13.time_hr
  WHEN t13.assay_type = 'AlphaLISA'
       AND t13.target = 'pSTAT5'
       AND t13.cell_line = 'UKE-1'
       AND t13.time_hr = 4
       AND t13.p IS NULL THEN
  t13.time_hr
  END             time_4uke1,
  CASE
  WHEN t13.assay_type = 'AlphaLISA'
       AND t13.target = 'pSTAT5'
       AND t13.cell_line = 'F-36P'
       AND t13.time_hr = 2
       AND t13.p IS NOT NULL
       AND t13.r IS NOT NULL THEN
  t13.p
  WHEN t13.assay_type = 'AlphaLISA'
       AND t13.target = 'pSTAT5'
       AND t13.cell_line = 'F-36P'
       AND t13.time_hr = 2
       AND t13.p IS NOT NULL THEN
  t13.p
  WHEN t13.assay_type = 'AlphaLISA'
       AND t13.target = 'pSTAT5'
       AND t13.cell_line = 'F-36P'
       AND t13.time_hr = 2
       AND t13.p IS NULL THEN
  t13.r
  END             ic50_nm_2f36p,
  CASE
  WHEN t13.assay_type = 'AlphaLISA'
       AND t13.target = 'pSTAT5'
       AND t13.cell_line = 'F-36P'
       AND t13.time_hr = 2
       AND t13.p IS NOT NULL
       AND t13.r IS NOT NULL THEN
  t13.p2 * 1000
  WHEN t13.assay_type = 'AlphaLISA'
       AND t13.target = 'pSTAT5'
       AND t13.cell_line = 'F-36P'
       AND t13.time_hr = 2
       AND t13.p IS NOT NULL THEN
  t13.p2 * 1000
  WHEN t13.assay_type = 'AlphaLISA'
       AND t13.target = 'pSTAT5'
       AND t13.cell_line = 'F-36P'
       AND t13.time_hr = 2
       AND t13.p IS NULL THEN
  t13.p2 * 1000
  END             f36p_2_abs_ic50,
  CASE
  WHEN t13.assay_type = 'AlphaLISA'
       AND t13.target = 'pSTAT5'
       AND t13.cell_line = 'F-36P'
       AND t13.time_hr = 2 THEN
  t14.d
  END             n_ic50_2f36p,
  CASE
  WHEN t13.assay_type = 'AlphaLISA'
       AND t13.target = 'pSTAT5'
       AND t13.cell_line = 'F-36P'
       AND t13.time_hr = 2
       AND t13.p IS NOT NULL THEN
  2
  WHEN t13.assay_type = 'AlphaLISA'
       AND t13.target = 'pSTAT5'
       AND t13.cell_line = 'F-36P'
       AND t13.time_hr = 2
       AND t13.p IS NULL
       AND t13.r IS NOT NULL
       AND t13.compound_status = '>' THEN
  1
  WHEN t13.assay_type = 'AlphaLISA'
       AND t13.target = 'pSTAT5'
       AND t13.cell_line = 'F-36P'
       AND t13.time_hr = 2
       AND t13.p IS NULL
       AND t13.r IS NOT NULL
       AND t13.compound_status = '<' THEN
  0
  END             cs_ic50_2f36p,
  CASE
  WHEN t13.assay_type = 'AlphaLISA'
       AND t13.target = 'pSTAT5'
       AND t13.cell_line = 'F-36P'
       AND t13.time_hr = 2
       AND t13.p IS NOT NULL
       AND t13.r IS NOT NULL THEN
  100 - t13.min
  WHEN t13.assay_type = 'AlphaLISA'
       AND t13.target = 'pSTAT5'
       AND t13.cell_line = 'F-36P'
       AND t13.time_hr = 2
       AND t13.p IS NOT NULL THEN
  100 - t13.min
  WHEN t13.assay_type = 'AlphaLISA'
       AND t13.target = 'pSTAT5'
       AND t13.cell_line = 'F-36P'
       AND t13.time_hr = 2
       AND t13.p IS NULL THEN
  100 - t13.minr
  END             dmax_2f36p,
  CASE
  WHEN t13.assay_type = 'AlphaLISA'
       AND t13.target = 'pSTAT5'
       AND t13.cell_line = 'F-36P'
       AND t13.time_hr = 2
       AND t13.p IS NOT NULL
       AND t13.r IS NOT NULL THEN
  t13.pspan
  WHEN t13.assay_type = 'AlphaLISA'
       AND t13.target = 'pSTAT5'
       AND t13.cell_line = 'F-36P'
       AND t13.time_hr = 2
       AND t13.p IS NOT NULL THEN
  t13.pspan
  WHEN t13.assay_type = 'AlphaLISA'
       AND t13.target = 'pSTAT5'
       AND t13.cell_line = 'F-36P'
       AND t13.time_hr = 2
       AND t13.p IS NULL THEN
  t13.pspan
  END             span_2f36p,
  CASE
  WHEN t13.assay_type = 'AlphaLISA'
       AND t13.target = 'pSTAT5'
       AND t13.cell_line = 'F-36P'
       AND t13.time_hr = 2
       AND t13.p IS NOT NULL
       AND t13.r IS NOT NULL THEN
  t13.sd
  WHEN t13.assay_type = 'AlphaLISA'
       AND t13.target = 'pSTAT5'
       AND t13.cell_line = 'F-36P'
       AND t13.time_hr = 2
       AND t13.p IS NOT NULL THEN
  t13.sd
  WHEN t13.assay_type = 'AlphaLISA'
       AND t13.target = 'pSTAT5'
       AND t13.cell_line = 'F-36P'
       AND t13.time_hr = 2
       AND t13.p IS NULL THEN
  t13.sd
  END             sd_ic50_2f36p,
  CASE
  WHEN t13.assay_type = 'AlphaLISA'
       AND t13.target = 'pSTAT5'
       AND t13.cell_line = 'F-36P'
       AND t13.time_hr = 2
       AND t13.p IS NOT NULL
       AND t13.r IS NOT NULL THEN
  t13.presp_hc
  WHEN t13.assay_type = 'AlphaLISA'
       AND t13.target = 'pSTAT5'
       AND t13.cell_line = 'F-36P'
       AND t13.time_hr = 2
       AND t13.p IS NOT NULL THEN
  t13.presp_hc
  WHEN t13.assay_type = 'AlphaLISA'
       AND t13.target = 'pSTAT5'
       AND t13.cell_line = 'F-36P'
       AND t13.time_hr = 2
       AND t13.p IS NULL THEN
  t13.presp_hc
  END             resp_hc_2f36p,
  CASE
  WHEN t13.assay_type = 'AlphaLISA'
       AND t13.target = 'pSTAT5'
       AND t13.cell_line = 'F-36P'
       AND t13.time_hr = 2
       AND t13.p IS NOT NULL
       AND t13.r IS NOT NULL THEN
  t13.highest_concentration
  WHEN t13.assay_type = 'AlphaLISA'
       AND t13.target = 'pSTAT5'
       AND t13.cell_line = 'F-36P'
       AND t13.time_hr = 2
       AND t13.p IS NOT NULL THEN
  t13.highest_concentration
  WHEN t13.assay_type = 'AlphaLISA'
       AND t13.target = 'pSTAT5'
       AND t13.cell_line = 'F-36P'
       AND t13.time_hr = 2
       AND t13.p IS NULL THEN
  t13.highest_concentration
  END             hc_2f36p,
  CASE
  WHEN t13.assay_type = 'AlphaLISA'
       AND t13.target = 'pSTAT5'
       AND t13.cell_line = 'F-36P'
       AND t13.time_hr = 4
       AND t13.p IS NOT NULL
       AND t13.r IS NOT NULL THEN
  t13.p
  WHEN t13.assay_type = 'AlphaLISA'
       AND t13.target = 'pSTAT5'
       AND t13.cell_line = 'F-36P'
       AND t13.time_hr = 4
       AND t13.p IS NOT NULL THEN
  t13.p
  WHEN t13.assay_type = 'AlphaLISA'
       AND t13.target = 'pSTAT5'
       AND t13.cell_line = 'F-36P'
       AND t13.time_hr = 4
       AND t13.p IS NULL THEN
  t13.r
  END             ic50_nm_4f36p,
  CASE
  WHEN t13.assay_type = 'AlphaLISA'
       AND t13.target = 'pSTAT5'
       AND t13.cell_line = 'F-36P'
       AND t13.time_hr = 4
       AND t13.p IS NOT NULL
       AND t13.r IS NOT NULL THEN
  t13.p2 * 1000
  WHEN t13.assay_type = 'AlphaLISA'
       AND t13.target = 'pSTAT5'
       AND t13.cell_line = 'F-36P'
       AND t13.time_hr = 4
       AND t13.p IS NOT NULL THEN
  t13.p2 * 1000
  WHEN t13.assay_type = 'AlphaLISA'
       AND t13.target = 'pSTAT5'
       AND t13.cell_line = 'F-36P'
       AND t13.time_hr = 4
       AND t13.p IS NULL THEN
  t13.p2 * 1000
  END             f36p_4_abs_ic50,
  CASE
  WHEN t13.assay_type = 'AlphaLISA'
       AND t13.target = 'pSTAT5'
       AND t13.cell_line = 'F-36P'
       AND t13.time_hr = 4 THEN
  t14.d
  END             n_ic50_4f36p,
  CASE
  WHEN t13.assay_type = 'AlphaLISA'
       AND t13.target = 'pSTAT5'
       AND t13.cell_line = 'F-36P'
       AND t13.time_hr = 4
       AND t13.p IS NOT NULL THEN
  2
  WHEN t13.assay_type = 'AlphaLISA'
       AND t13.target = 'pSTAT5'
       AND t13.cell_line = 'F-36P'
       AND t13.time_hr = 4
       AND t13.p IS NULL
       AND t13.r IS NOT NULL
       AND t13.compound_status = '>' THEN
  1
  WHEN t13.assay_type = 'AlphaLISA'
       AND t13.target = 'pSTAT5'
       AND t13.cell_line = 'F-36P'
       AND t13.time_hr = 4
       AND t13.p IS NULL
       AND t13.r IS NOT NULL
       AND t13.compound_status = '<' THEN
  0
  END             cs_ic50_4f36p,
  CASE
  WHEN t13.assay_type = 'AlphaLISA'
       AND t13.target = 'pSTAT5'
       AND t13.cell_line = 'F-36P'
       AND t13.time_hr = 4
       AND t13.p IS NOT NULL
       AND t13.r IS NOT NULL THEN
  100 - t13.min
  WHEN t13.assay_type = 'AlphaLISA'
       AND t13.target = 'pSTAT5'
       AND t13.cell_line = 'F-36P'
       AND t13.time_hr = 4
       AND t13.p IS NOT NULL THEN
  100 - t13.min
  WHEN t13.assay_type = 'AlphaLISA'
       AND t13.target = 'pSTAT5'
       AND t13.cell_line = 'F-36P'
       AND t13.time_hr = 4
       AND t13.p IS NULL THEN
  100 - t13.minr
  END             dmax_4f36p,
  CASE
  WHEN t13.assay_type = 'AlphaLISA'
       AND t13.target = 'pSTAT5'
       AND t13.cell_line = 'F-36P'
       AND t13.time_hr = 4
       AND t13.p IS NOT NULL
       AND t13.r IS NOT NULL THEN
  t13.pspan
  WHEN t13.assay_type = 'AlphaLISA'
       AND t13.target = 'pSTAT5'
       AND t13.cell_line = 'F-36P'
       AND t13.time_hr = 4
       AND t13.p IS NOT NULL THEN
  t13.pspan
  WHEN t13.assay_type = 'AlphaLISA'
       AND t13.target = 'pSTAT5'
       AND t13.cell_line = 'F-36P'
       AND t13.time_hr = 4
       AND t13.p IS NULL THEN
  t13.pspan
  END             span_4f36p,
  CASE
  WHEN t13.assay_type = 'AlphaLISA'
       AND t13.target = 'pSTAT5'
       AND t13.cell_line = 'F-36P'
       AND t13.time_hr = 4
       AND t13.p IS NOT NULL
       AND t13.r IS NOT NULL THEN
  t13.sd
  WHEN t13.assay_type = 'AlphaLISA'
       AND t13.target = 'pSTAT5'
       AND t13.cell_line = 'F-36P'
       AND t13.time_hr = 4
       AND t13.p IS NOT NULL THEN
  t13.sd
  WHEN t13.assay_type = 'AlphaLISA'
       AND t13.target = 'pSTAT5'
       AND t13.cell_line = 'F-36P'
       AND t13.time_hr = 4
       AND t13.p IS NULL THEN
  t13.sd
  END             sd_ic50_4f36p,
  CASE
  WHEN t13.assay_type = 'AlphaLISA'
       AND t13.target = 'pSTAT5'
       AND t13.cell_line = 'F-36P'
       AND t13.time_hr = 4
       AND t13.p IS NOT NULL
       AND t13.r IS NOT NULL THEN
  t13.presp_hc
  WHEN t13.assay_type = 'AlphaLISA'
       AND t13.target = 'pSTAT5'
       AND t13.cell_line = 'F-36P'
       AND t13.time_hr = 4
       AND t13.p IS NOT NULL THEN
  t13.presp_hc
  WHEN t13.assay_type = 'AlphaLISA'
       AND t13.target = 'pSTAT5'
       AND t13.cell_line = 'F-36P'
       AND t13.time_hr = 4
       AND t13.p IS NULL THEN
  t13.presp_hc
  END             resp_hc_4f36p,
  CASE
  WHEN t13.assay_type = 'AlphaLISA'
       AND t13.target = 'pSTAT5'
       AND t13.cell_line = 'F-36P'
       AND t13.time_hr = 4
       AND t13.p IS NOT NULL
       AND t13.r IS NOT NULL THEN
  t13.highest_concentration
  WHEN t13.assay_type = 'AlphaLISA'
       AND t13.target = 'pSTAT5'
       AND t13.cell_line = 'F-36P'
       AND t13.time_hr = 4
       AND t13.p IS NOT NULL THEN
  t13.highest_concentration
  WHEN t13.assay_type = 'AlphaLISA'
       AND t13.target = 'pSTAT5'
       AND t13.cell_line = 'F-36P'
       AND t13.time_hr = 4
       AND t13.p IS NULL THEN
  t13.highest_concentration
  END             hc_4f36p,
  CASE
  WHEN t13.assay_type = 'AlphaLISA'
       AND t13.target = 'pSTAT5'
       AND t13.cell_line = 'F-36P'
       AND t13.time_hr = 2
       AND t13.p IS NOT NULL
       AND t13.r IS NOT NULL THEN
  t13.time_hr
  WHEN t13.assay_type = 'AlphaLISA'
       AND t13.target = 'pSTAT5'
       AND t13.cell_line = 'F-36P'
       AND t13.time_hr = 2
       AND t13.p IS NOT NULL THEN
  t13.time_hr
  WHEN t13.assay_type = 'AlphaLISA'
       AND t13.target = 'pSTAT5'
       AND t13.cell_line = 'F-36P'
       AND t13.time_hr = 2
       AND t13.p IS NULL THEN
  t13.time_hr
  END             time_2f36p,
  CASE
  WHEN t13.assay_type = 'AlphaLISA'
       AND t13.target = 'pSTAT5'
       AND t13.cell_line = 'F-36P'
       AND t13.time_hr = 4
       AND t13.p IS NOT NULL
       AND t13.r IS NOT NULL THEN
  t13.time_hr
  WHEN t13.assay_type = 'AlphaLISA'
       AND t13.target = 'pSTAT5'
       AND t13.cell_line = 'F-36P'
       AND t13.time_hr = 4
       AND t13.p IS NOT NULL THEN
  t13.time_hr
  WHEN t13.assay_type = 'AlphaLISA'
       AND t13.target = 'pSTAT5'
       AND t13.cell_line = 'F-36P'
       AND t13.time_hr = 4
       AND t13.p IS NULL THEN
  t13.time_hr
  END             time_4f36p,
  CASE
  WHEN t13.assay_type = 'AlphaLISA'
       AND t13.target = 'pSTAT5'
       AND t13.cell_line = 'HEL9217'
       AND t13.time_hr = 2
       AND t13.p IS NOT NULL
       AND t13.r IS NOT NULL THEN
  t13.p
  WHEN t13.assay_type = 'AlphaLISA'
       AND t13.target = 'pSTAT5'
       AND t13.cell_line = 'HEL9217'
       AND t13.time_hr = 2
       AND t13.p IS NOT NULL THEN
  t13.p
  WHEN t13.assay_type = 'AlphaLISA'
       AND t13.target = 'pSTAT5'
       AND t13.cell_line = 'HEL9217'
       AND t13.time_hr = 2
       AND t13.p IS NULL THEN
  t13.r
  END             ic50_nm_2hel9217,
  CASE
  WHEN t13.assay_type = 'AlphaLISA'
       AND t13.target = 'pSTAT5'
       AND t13.cell_line = 'HEL9217'
       AND t13.time_hr = 2
       AND t13.p IS NOT NULL
       AND t13.r IS NOT NULL THEN
  t13.p2 * 1000
  WHEN t13.assay_type = 'AlphaLISA'
       AND t13.target = 'pSTAT5'
       AND t13.cell_line = 'HEL9217'
       AND t13.time_hr = 2
       AND t13.p IS NOT NULL THEN
  t13.p2 * 1000
  WHEN t13.assay_type = 'AlphaLISA'
       AND t13.target = 'pSTAT5'
       AND t13.cell_line = 'HEL9217'
       AND t13.time_hr = 2
       AND t13.p IS NULL THEN
  t13.p2 * 1000
  END             hel9217_2_abs_ic50,
  CASE
  WHEN t13.assay_type = 'AlphaLISA'
       AND t13.target = 'pSTAT5'
       AND t13.cell_line = 'HEL9217'
       AND t13.time_hr = 2 THEN
  t14.d
  END             n_ic50_2hel9217,
  CASE
  WHEN t13.assay_type = 'AlphaLISA'
       AND t13.target = 'pSTAT5'
       AND t13.cell_line = 'HEL9217'
       AND t13.time_hr = 2
       AND t13.p IS NOT NULL THEN
  2
  WHEN t13.assay_type = 'AlphaLISA'
       AND t13.target = 'pSTAT5'
       AND t13.cell_line = 'HEL9217'
       AND t13.time_hr = 2
       AND t13.p IS NULL
       AND t13.r IS NOT NULL
       AND t13.compound_status = '>' THEN
  1
  WHEN t13.assay_type = 'AlphaLISA'
       AND t13.target = 'pSTAT5'
       AND t13.cell_line = 'HEL9217'
       AND t13.time_hr = 2
       AND t13.p IS NULL
       AND t13.r IS NOT NULL
       AND t13.compound_status = '<' THEN
  0
  END             cs_ic50_2hel9217,
  CASE
  WHEN t13.assay_type = 'AlphaLISA'
       AND t13.target = 'pSTAT5'
       AND t13.cell_line = 'HEL9217'
       AND t13.time_hr = 2
       AND t13.p IS NOT NULL
       AND t13.r IS NOT NULL THEN
  100 - t13.min
  WHEN t13.assay_type = 'AlphaLISA'
       AND t13.target = 'pSTAT5'
       AND t13.cell_line = 'HEL9217'
       AND t13.time_hr = 2
       AND t13.p IS NOT NULL THEN
  100 - t13.min
  WHEN t13.assay_type = 'AlphaLISA'
       AND t13.target = 'pSTAT5'
       AND t13.cell_line = 'HEL9217'
       AND t13.time_hr = 2
       AND t13.p IS NULL THEN
  100 - t13.minr
  END             dmax_2hel9217,
  CASE
  WHEN t13.assay_type = 'AlphaLISA'
       AND t13.target = 'pSTAT5'
       AND t13.cell_line = 'HEL9217'
       AND t13.time_hr = 2
       AND t13.p IS NOT NULL
       AND t13.r IS NOT NULL THEN
  t13.pspan
  WHEN t13.assay_type = 'AlphaLISA'
       AND t13.target = 'pSTAT5'
       AND t13.cell_line = 'HEL9217'
       AND t13.time_hr = 2
       AND t13.p IS NOT NULL THEN
  t13.pspan
  WHEN t13.assay_type = 'AlphaLISA'
       AND t13.target = 'pSTAT5'
       AND t13.cell_line = 'HEL9217'
       AND t13.time_hr = 2
       AND t13.p IS NULL THEN
  t13.pspan
  END             span_2hel9217,
  CASE
  WHEN t13.assay_type = 'AlphaLISA'
       AND t13.target = 'pSTAT5'
       AND t13.cell_line = 'HEL9217'
       AND t13.time_hr = 2
       AND t13.p IS NOT NULL
       AND t13.r IS NOT NULL THEN
  t13.sd
  WHEN t13.assay_type = 'AlphaLISA'
       AND t13.target = 'pSTAT5'
       AND t13.cell_line = 'HEL9217'
       AND t13.time_hr = 2
       AND t13.p IS NOT NULL THEN
  t13.sd
  WHEN t13.assay_type = 'AlphaLISA'
       AND t13.target = 'pSTAT5'
       AND t13.cell_line = 'HEL9217'
       AND t13.time_hr = 2
       AND t13.p IS NULL THEN
  t13.sd
  END             sd_ic50_2hel9217,
  CASE
  WHEN t13.assay_type = 'AlphaLISA'
       AND t13.target = 'pSTAT5'
       AND t13.cell_line = 'HEL9217'
       AND t13.time_hr = 2
       AND t13.p IS NOT NULL
       AND t13.r IS NOT NULL THEN
  t13.presp_hc
  WHEN t13.assay_type = 'AlphaLISA'
       AND t13.target = 'pSTAT5'
       AND t13.cell_line = 'HEL9217'
       AND t13.time_hr = 2
       AND t13.p IS NOT NULL THEN
  t13.presp_hc
  WHEN t13.assay_type = 'AlphaLISA'
       AND t13.target = 'pSTAT5'
       AND t13.cell_line = 'HEL9217'
       AND t13.time_hr = 2
       AND t13.p IS NULL THEN
  t13.presp_hc
  END             resp_hc_2hel9217,
  CASE
  WHEN t13.assay_type = 'AlphaLISA'
       AND t13.target = 'pSTAT5'
       AND t13.cell_line = 'HEL9217'
       AND t13.time_hr = 2
       AND t13.p IS NOT NULL
       AND t13.r IS NOT NULL THEN
  t13.highest_concentration
  WHEN t13.assay_type = 'AlphaLISA'
       AND t13.target = 'pSTAT5'
       AND t13.cell_line = 'HEL9217'
       AND t13.time_hr = 2
       AND t13.p IS NOT NULL THEN
  t13.highest_concentration
  WHEN t13.assay_type = 'AlphaLISA'
       AND t13.target = 'pSTAT5'
       AND t13.cell_line = 'HEL9217'
       AND t13.time_hr = 2
       AND t13.p IS NULL THEN
  t13.highest_concentration
  END             hc_2hel9217,
  CASE
  WHEN t13.assay_type = 'AlphaLISA'
       AND t13.target = 'pSTAT5'
       AND t13.cell_line = 'HEL9217'
       AND t13.time_hr = 2
       AND t13.p IS NOT NULL
       AND t13.r IS NOT NULL THEN
  t13.time_hr
  WHEN t13.assay_type = 'AlphaLISA'
       AND t13.target = 'pSTAT5'
       AND t13.cell_line = 'HEL9217'
       AND t13.time_hr = 2
       AND t13.p IS NOT NULL THEN
  t13.time_hr
  WHEN t13.assay_type = 'AlphaLISA'
       AND t13.target = 'pSTAT5'
       AND t13.cell_line = 'HEL9217'
       AND t13.time_hr = 2
       AND t13.p IS NULL THEN
  t13.time_hr
  END             time_2hel9217,
  CASE
  WHEN t13.assay_type = 'AlphaLISA'
       AND t13.target = 'pSTAT5'
       AND t13.cell_line = 'HEL9217'
       AND t13.time_hr = 4
       AND t13.p IS NOT NULL
       AND t13.r IS NOT NULL THEN
  t13.time_hr
  WHEN t13.assay_type = 'AlphaLISA'
       AND t13.target = 'pSTAT5'
       AND t13.cell_line = 'HEL9217'
       AND t13.time_hr = 4
       AND t13.p IS NOT NULL THEN
  t13.time_hr
  WHEN t13.assay_type = 'AlphaLISA'
       AND t13.target = 'pSTAT5'
       AND t13.cell_line = 'HEL9217'
       AND t13.time_hr = 4
       AND t13.p IS NULL THEN
  t13.time_hr
  END             time_4hel9217,
  CASE
  WHEN t13.assay_type = 'AlphaLISA'
       AND t13.target = 'pSTAT5'
       AND t13.cell_line = 'HEL9217'
       AND t13.time_hr = 4
       AND t13.p IS NOT NULL
       AND t13.r IS NOT NULL THEN
  t13.p
  WHEN t13.assay_type = 'AlphaLISA'
       AND t13.target = 'pSTAT5'
       AND t13.cell_line = 'HEL9217'
       AND t13.time_hr = 4
       AND t13.p IS NOT NULL THEN
  t13.p
  WHEN t13.assay_type = 'AlphaLISA'
       AND t13.target = 'pSTAT5'
       AND t13.cell_line = 'HEL9217'
       AND t13.time_hr = 4
       AND t13.p IS NULL THEN
  t13.r
  END             ic50_nm_4hel9217,
  CASE
  WHEN t13.assay_type = 'AlphaLISA'
       AND t13.target = 'pSTAT5'
       AND t13.cell_line = 'HEL9217'
       AND t13.time_hr = 4 THEN
  t14.d
  END             n_ic50_4hel9217,
  CASE
  WHEN t13.assay_type = 'AlphaLISA'
       AND t13.target = 'pSTAT5'
       AND t13.cell_line = 'HEL9217'
       AND t13.time_hr = 4
       AND t13.p IS NOT NULL
       AND t13.r IS NOT NULL THEN
  t13.p2 * 1000
  WHEN t13.assay_type = 'AlphaLISA'
       AND t13.target = 'pSTAT5'
       AND t13.cell_line = 'HEL9217'
       AND t13.time_hr = 4
       AND t13.p IS NOT NULL THEN
  t13.p2 * 1000
  WHEN t13.assay_type = 'AlphaLISA'
       AND t13.target = 'pSTAT5'
       AND t13.cell_line = 'HEL9217'
       AND t13.time_hr = 4
       AND t13.p IS NULL THEN
  t13.p2 * 1000
  END             hel9217_4_abs_ic50,
  CASE
  WHEN t13.assay_type = 'AlphaLISA'
       AND t13.target = 'pSTAT5'
       AND t13.cell_line = 'HEL9217'
       AND t13.time_hr = 4
       AND t13.p IS NOT NULL THEN
  2
  WHEN t13.assay_type = 'AlphaLISA'
       AND t13.target = 'pSTAT5'
       AND t13.cell_line = 'HEL9217'
       AND t13.time_hr = 4
       AND t13.p IS NULL
       AND t13.r IS NOT NULL
       AND t13.compound_status = '>' THEN
  1
  WHEN t13.assay_type = 'AlphaLISA'
       AND t13.target = 'pSTAT5'
       AND t13.cell_line = 'HEL9217'
       AND t13.time_hr = 4
       AND t13.p IS NULL
       AND t13.r IS NOT NULL
       AND t13.compound_status = '<' THEN
  0
  END             cs_ic50_4hel9217,
  CASE
  WHEN t13.assay_type = 'AlphaLISA'
       AND t13.target = 'pSTAT5'
       AND t13.cell_line = 'HEL9217'
       AND t13.time_hr = 4
       AND t13.p IS NOT NULL
       AND t13.r IS NOT NULL THEN
  100 - t13.min
  WHEN t13.assay_type = 'AlphaLISA'
       AND t13.target = 'pSTAT5'
       AND t13.cell_line = 'HEL9217'
       AND t13.time_hr = 4
       AND t13.p IS NOT NULL THEN
  100 - t13.min
  WHEN t13.assay_type = 'AlphaLISA'
       AND t13.target = 'pSTAT5'
       AND t13.cell_line = 'HEL9217'
       AND t13.time_hr = 4
       AND t13.p IS NULL THEN
  100 - t13.minr
  END             dmax_4hel9217,
  CASE
  WHEN t13.assay_type = 'AlphaLISA'
       AND t13.target = 'pSTAT5'
       AND t13.cell_line = 'HEL9217'
       AND t13.time_hr = 4
       AND t13.p IS NOT NULL
       AND t13.r IS NOT NULL THEN
  t13.pspan
  WHEN t13.assay_type = 'AlphaLISA'
       AND t13.target = 'pSTAT5'
       AND t13.cell_line = 'HEL9217'
       AND t13.time_hr = 4
       AND t13.p IS NOT NULL THEN
  t13.pspan
  WHEN t13.assay_type = 'AlphaLISA'
       AND t13.target = 'pSTAT5'
       AND t13.cell_line = 'HEL9217'
       AND t13.time_hr = 4
       AND t13.p IS NULL THEN
  t13.pspan
  END             span_4hel9217,
  CASE
  WHEN t13.assay_type = 'AlphaLISA'
       AND t13.target = 'pSTAT5'
       AND t13.cell_line = 'HEL9217'
       AND t13.time_hr = 4
       AND t13.p IS NOT NULL
       AND t13.r IS NOT NULL THEN
  t13.sd
  WHEN t13.assay_type = 'AlphaLISA'
       AND t13.target = 'pSTAT5'
       AND t13.cell_line = 'HEL9217'
       AND t13.time_hr = 4
       AND t13.p IS NOT NULL THEN
  t13.sd
  WHEN t13.assay_type = 'AlphaLISA'
       AND t13.target = 'pSTAT5'
       AND t13.cell_line = 'HEL9217'
       AND t13.time_hr = 4
       AND t13.p IS NULL THEN
  t13.sd
  END             sd_ic50_4hel9217,
  CASE
  WHEN t13.assay_type = 'AlphaLISA'
       AND t13.target = 'pSTAT5'
       AND t13.cell_line = 'HEL9217'
       AND t13.time_hr = 4
       AND t13.p IS NOT NULL
       AND t13.r IS NOT NULL THEN
  t13.presp_hc
  WHEN t13.assay_type = 'AlphaLISA'
       AND t13.target = 'pSTAT5'
       AND t13.cell_line = 'HEL9217'
       AND t13.time_hr = 4
       AND t13.p IS NOT NULL THEN
  t13.presp_hc
  WHEN t13.assay_type = 'AlphaLISA'
       AND t13.target = 'pSTAT5'
       AND t13.cell_line = 'HEL9217'
       AND t13.time_hr = 4
       AND t13.p IS NULL THEN
  t13.presp_hc
  END             resp_hc_4hel9217,
  CASE
  WHEN t13.assay_type = 'AlphaLISA'
       AND t13.target = 'pSTAT5'
       AND t13.cell_line = 'HEL9217'
       AND t13.time_hr = 4
       AND t13.p IS NOT NULL
       AND t13.r IS NOT NULL THEN
  t13.highest_concentration
  WHEN t13.assay_type = 'AlphaLISA'
       AND t13.target = 'pSTAT5'
       AND t13.cell_line = 'HEL9217'
       AND t13.time_hr = 4
       AND t13.p IS NOT NULL THEN
  t13.highest_concentration
  WHEN t13.assay_type = 'AlphaLISA'
       AND t13.target = 'pSTAT5'
       AND t13.cell_line = 'HEL9217'
       AND t13.time_hr = 4
       AND t13.p IS NULL THEN
  t13.highest_concentration
  END             hc_4hel9217,
  CASE
  WHEN t13.assay_type = 'AlphaLISA'
       AND t13.target = 'pSTAT5'
       AND t13.cell_line = 'Jurkat'
       AND t13.time_hr = 4
       AND t13.p IS NOT NULL
       AND t13.r IS NOT NULL THEN
  t13.time_hr
  WHEN t13.assay_type = 'AlphaLISA'
       AND t13.target = 'pSTAT5'
       AND t13.cell_line = 'Jurkat'
       AND t13.time_hr = 4
       AND t13.p IS NOT NULL THEN
  t13.time_hr
  WHEN t13.assay_type = 'AlphaLISA'
       AND t13.target = 'pSTAT5'
       AND t13.cell_line = 'Jurkat'
       AND t13.time_hr = 4
       AND t13.p IS NULL THEN
  t13.time_hr
  END             time_jurkat,
  CASE
  WHEN t13.assay_type = 'AlphaLISA'
       AND t13.target = 'pSTAT5'
       AND t13.cell_line = 'Jurkat'
       AND t13.time_hr = 4
       AND t13.p IS NOT NULL
       AND t13.r IS NOT NULL THEN
  t13.p
  WHEN t13.assay_type = 'AlphaLISA'
       AND t13.target = 'pSTAT5'
       AND t13.cell_line = 'Jurkat'
       AND t13.time_hr = 4
       AND t13.p IS NOT NULL THEN
  t13.p
  WHEN t13.assay_type = 'AlphaLISA'
       AND t13.target = 'pSTAT5'
       AND t13.cell_line = 'Jurkat'
       AND t13.time_hr = 4
       AND t13.p IS NULL THEN
  t13.r
  END             ic50_nm_jurkat,
  CASE
  WHEN t13.assay_type = 'AlphaLISA'
       AND t13.target = 'pSTAT5'
       AND t13.cell_line = 'Jurkat'
       AND t13.time_hr = 4
       AND t13.p IS NOT NULL
       AND t13.r IS NOT NULL THEN
  t13.p2 * 1000
  WHEN t13.assay_type = 'AlphaLISA'
       AND t13.target = 'pSTAT5'
       AND t13.cell_line = 'Jurkat'
       AND t13.time_hr = 4
       AND t13.p IS NOT NULL THEN
  t13.p2 * 1000
  WHEN t13.assay_type = 'AlphaLISA'
       AND t13.target = 'pSTAT5'
       AND t13.cell_line = 'Jurkat'
       AND t13.time_hr = 4
       AND t13.p IS NULL THEN
  t13.p2 * 1000
  END             jurkat4_abs_ic50,
  CASE
  WHEN t13.assay_type = 'AlphaLISA'
       AND t13.target = 'pSTAT5'
       AND t13.cell_line = 'Jurkat'
       AND t13.time_hr = 4 THEN
  t14.d
  END             n_ic50_jurkat,
  CASE
  WHEN t13.assay_type = 'AlphaLISA'
       AND t13.target = 'pSTAT5'
       AND t13.cell_line = 'Jurkat'
       AND t13.time_hr = 4
       AND t13.p IS NOT NULL THEN
  2
  WHEN t13.assay_type = 'AlphaLISA'
       AND t13.target = 'pSTAT5'
       AND t13.cell_line = 'Jurkat'
       AND t13.time_hr = 4
       AND t13.p IS NULL
       AND t13.r IS NOT NULL
       AND t13.compound_status = '>' THEN
  1
  WHEN t13.assay_type = 'AlphaLISA'
       AND t13.target = 'pSTAT5'
       AND t13.cell_line = 'Jurkat'
       AND t13.time_hr = 4
       AND t13.p IS NULL
       AND t13.r IS NOT NULL
       AND t13.compound_status = '<' THEN
  0
  END             cs_ic50_jurkat,
  CASE
  WHEN t13.assay_type = 'AlphaLISA'
       AND t13.target = 'pSTAT5'
       AND t13.cell_line = 'Jurkat'
       AND t13.time_hr = 4
       AND t13.p IS NOT NULL
       AND t13.r IS NOT NULL THEN
  100 - t13.min
  WHEN t13.assay_type = 'AlphaLISA'
       AND t13.target = 'pSTAT5'
       AND t13.cell_line = 'Jurkat'
       AND t13.time_hr = 4
       AND t13.p IS NOT NULL THEN
  100 - t13.min
  WHEN t13.assay_type = 'AlphaLISA'
       AND t13.target = 'pSTAT5'
       AND t13.cell_line = 'Jurkat'
       AND t13.time_hr = 4
       AND t13.p IS NULL THEN
  100 - t13.minr
  END             dmax_jurkat,
  CASE
  WHEN t13.assay_type = 'AlphaLISA'
       AND t13.target = 'pSTAT5'
       AND t13.cell_line = 'Jurkat'
       AND t13.time_hr = 4
       AND t13.p IS NOT NULL
       AND t13.r IS NOT NULL THEN
  t13.pspan
  WHEN t13.assay_type = 'AlphaLISA'
       AND t13.target = 'pSTAT5'
       AND t13.cell_line = 'Jurkat'
       AND t13.time_hr = 4
       AND t13.p IS NOT NULL THEN
  t13.pspan
  WHEN t13.assay_type = 'AlphaLISA'
       AND t13.target = 'pSTAT5'
       AND t13.cell_line = 'Jurkat'
       AND t13.time_hr = 4
       AND t13.p IS NULL THEN
  t13.pspan
  END             span_jurkat,
  CASE
  WHEN t13.assay_type = 'AlphaLISA'
       AND t13.target = 'pSTAT5'
       AND t13.cell_line = 'Jurkat'
       AND t13.time_hr = 4
       AND t13.p IS NOT NULL
       AND t13.r IS NOT NULL THEN
  t13.sd
  WHEN t13.assay_type = 'AlphaLISA'
       AND t13.target = 'pSTAT5'
       AND t13.cell_line = 'Jurkat'
       AND t13.time_hr = 4
       AND t13.p IS NOT NULL THEN
  t13.sd
  WHEN t13.assay_type = 'AlphaLISA'
       AND t13.target = 'pSTAT5'
       AND t13.cell_line = 'Jurkat'
       AND t13.time_hr = 4
       AND t13.p IS NULL THEN
  t13.sd
  END             sd_ic50_jurkat,
  CASE
  WHEN t13.assay_type = 'AlphaLISA'
       AND t13.target = 'pSTAT5'
       AND t13.cell_line = 'Jurkat'
       AND t13.time_hr = 4
       AND t13.p IS NOT NULL
       AND t13.r IS NOT NULL THEN
  t13.presp_hc
  WHEN t13.assay_type = 'AlphaLISA'
       AND t13.target = 'pSTAT5'
       AND t13.cell_line = 'Jurkat'
       AND t13.time_hr = 4
       AND t13.p IS NOT NULL THEN
  t13.presp_hc
  WHEN t13.assay_type = 'AlphaLISA'
       AND t13.target = 'pSTAT5'
       AND t13.cell_line = 'Jurkat'
       AND t13.time_hr = 4
       AND t13.p IS NULL THEN
  t13.presp_hc
  END             resp_hc_jurkat,
  CASE
  WHEN t13.assay_type = 'AlphaLISA'
       AND t13.target = 'pSTAT5'
       AND t13.cell_line = 'Jurkat'
       AND t13.time_hr = 4
       AND t13.p IS NOT NULL
       AND t13.r IS NOT NULL THEN
  t13.highest_concentration
  WHEN t13.assay_type = 'AlphaLISA'
       AND t13.target = 'pSTAT5'
       AND t13.cell_line = 'Jurkat'
       AND t13.time_hr = 4
       AND t13.p IS NOT NULL THEN
  t13.highest_concentration
  WHEN t13.assay_type = 'AlphaLISA'
       AND t13.target = 'pSTAT5'
       AND t13.cell_line = 'Jurkat'
       AND t13.time_hr = 4
       AND t13.p IS NULL THEN
  t13.highest_concentration
  END             hc_jurkat,
  CASE
  WHEN t13.assay_type = 'AlphaLISA'
       AND t13.target = 'pSTAT5'
       AND t13.cell_line = 'BAF3-TPOR-JAK2WT'
       AND t13.time_hr = 1.75
       AND t13.p IS NOT NULL
       AND t13.r IS NOT NULL THEN
  t13.p
  WHEN t13.assay_type = 'AlphaLISA'
       AND t13.target = 'pSTAT5'
       AND t13.cell_line = 'BAF3-TPOR-JAK2WT'
       AND t13.time_hr = 1.75
       AND t13.p IS NOT NULL THEN
  t13.p
  WHEN t13.assay_type = 'AlphaLISA'
       AND t13.target = 'pSTAT5'
       AND t13.cell_line = 'BAF3-TPOR-JAK2WT'
       AND t13.time_hr = 1.75
       AND t13.p IS NULL THEN
  t13.r
  END             ic50_nm_tpor_wt,
  CASE
  WHEN t13.assay_type = 'AlphaLISA'
       AND t13.target = 'pSTAT5'
       AND t13.cell_line = 'BAF3-TPOR-JAK2WT'
       AND t13.time_hr = 1.75
       AND t13.p IS NOT NULL
       AND t13.r IS NOT NULL THEN
  t13.p2 * 1000
  WHEN t13.assay_type = 'AlphaLISA'
       AND t13.target = 'pSTAT5'
       AND t13.cell_line = 'BAF3-TPOR-JAK2WT'
       AND t13.time_hr = 1.75
       AND t13.p IS NOT NULL THEN
  t13.p2 * 1000
  WHEN t13.assay_type = 'AlphaLISA'
       AND t13.target = 'pSTAT5'
       AND t13.cell_line = 'BAF3-TPOR-JAK2WT'
       AND t13.time_hr = 1.75
       AND t13.p IS NULL THEN
  t13.p2 * 1000
  END             tpor_abs_ic50,
  CASE
  WHEN t13.assay_type = 'AlphaLISA'
       AND t13.target = 'pSTAT5'
       AND t13.cell_line = 'BAF3-TPOR-JAK2WT'
       AND t13.time_hr = 1.75 THEN
  t14.d
  END             n_ic50_tpor_wt,
  CASE
  WHEN t13.assay_type = 'AlphaLISA'
       AND t13.target = 'pSTAT5'
       AND t13.cell_line = 'BAF3-TPOR-JAK2WT'
       AND t13.time_hr = 1.75
       AND t13.p IS NOT NULL THEN
  2
  WHEN t13.assay_type = 'AlphaLISA'
       AND t13.target = 'pSTAT5'
       AND t13.cell_line = 'BAF3-TPOR-JAK2WT'
       AND t13.time_hr = 1.75
       AND t13.p IS NULL
       AND t13.r IS NOT NULL
       AND t13.compound_status = '>' THEN
  1
  WHEN t13.assay_type = 'AlphaLISA'
       AND t13.target = 'pSTAT5'
       AND t13.cell_line = 'BAF3-TPOR-JAK2WT'
       AND t13.time_hr = 1.75
       AND t13.p IS NULL
       AND t13.r IS NOT NULL
       AND t13.compound_status = '<' THEN
  0
  END             cs_ic50_tpor_wt,
  CASE
  WHEN t13.assay_type = 'AlphaLISA'
       AND t13.target = 'pSTAT5'
       AND t13.cell_line = 'BAF3-TPOR-JAK2WT'
       AND t13.time_hr = 1.75
       AND t13.p IS NOT NULL
       AND t13.r IS NOT NULL THEN
  100 - t13.min
  WHEN t13.assay_type = 'AlphaLISA'
       AND t13.target = 'pSTAT5'
       AND t13.cell_line = 'BAF3-TPOR-JAK2WT'
       AND t13.time_hr = 1.75
       AND t13.p IS NOT NULL THEN
  100 - t13.min
  WHEN t13.assay_type = 'AlphaLISA'
       AND t13.target = 'pSTAT5'
       AND t13.cell_line = 'BAF3-TPOR-JAK2WT'
       AND t13.time_hr = 1.75
       AND t13.p IS NULL THEN
  100 - t13.minr
  END             dmax_tpor_wt,
  CASE
  WHEN t13.assay_type = 'AlphaLISA'
       AND t13.target = 'pSTAT5'
       AND t13.cell_line = 'BAF3-TPOR-JAK2WT'
       AND t13.time_hr = 1.75
       AND t13.p IS NOT NULL
       AND t13.r IS NOT NULL THEN
  t13.pspan
  WHEN t13.assay_type = 'AlphaLISA'
       AND t13.target = 'pSTAT5'
       AND t13.cell_line = 'BAF3-TPOR-JAK2WT'
       AND t13.time_hr = 1.75
       AND t13.p IS NOT NULL THEN
  t13.pspan
  WHEN t13.assay_type = 'AlphaLISA'
       AND t13.target = 'pSTAT5'
       AND t13.cell_line = 'BAF3-TPOR-JAK2WT'
       AND t13.time_hr = 1.75
       AND t13.p IS NULL THEN
  t13.pspan
  END             span_tpor_wt,
  CASE
  WHEN t13.assay_type = 'AlphaLISA'
       AND t13.target = 'pSTAT5'
       AND t13.cell_line = 'BAF3-TPOR-JAK2WT'
       AND t13.time_hr = 1.75
       AND t13.p IS NOT NULL
       AND t13.r IS NOT NULL THEN
  t13.sd
  WHEN t13.assay_type = 'AlphaLISA'
       AND t13.target = 'pSTAT5'
       AND t13.cell_line = 'BAF3-TPOR-JAK2WT'
       AND t13.time_hr = 1.75
       AND t13.p IS NOT NULL THEN
  t13.sd
  WHEN t13.assay_type = 'AlphaLISA'
       AND t13.target = 'pSTAT5'
       AND t13.cell_line = 'BAF3-TPOR-JAK2WT'
       AND t13.time_hr = 1.75
       AND t13.p IS NULL THEN
  t13.sd
  END             sd_ic50_tpor_wt,
  CASE
  WHEN t13.assay_type = 'AlphaLISA'
       AND t13.target = 'pSTAT5'
       AND t13.cell_line = 'BAF3-TPOR-JAK2WT'
       AND t13.time_hr = 1.75
       AND t13.p IS NOT NULL
       AND t13.r IS NOT NULL THEN
  t13.presp_hc
  WHEN t13.assay_type = 'AlphaLISA'
       AND t13.target = 'pSTAT5'
       AND t13.cell_line = 'BAF3-TPOR-JAK2WT'
       AND t13.time_hr = 1.75
       AND t13.p IS NOT NULL THEN
  t13.presp_hc
  WHEN t13.assay_type = 'AlphaLISA'
       AND t13.target = 'pSTAT5'
       AND t13.cell_line = 'BAF3-TPOR-JAK2WT'
       AND t13.time_hr = 1.75
       AND t13.p IS NULL THEN
  t13.presp_hc
  END             resp_hc_tpor_wt,
  CASE
  WHEN t13.assay_type = 'AlphaLISA'
       AND t13.target = 'pSTAT5'
       AND t13.cell_line = 'BAF3-TPOR-JAK2WT'
       AND t13.time_hr = 1.75
       AND t13.p IS NOT NULL
       AND t13.r IS NOT NULL THEN
  t13.highest_concentration
  WHEN t13.assay_type = 'AlphaLISA'
       AND t13.target = 'pSTAT5'
       AND t13.cell_line = 'BAF3-TPOR-JAK2WT'
       AND t13.time_hr = 1.75
       AND t13.p IS NOT NULL THEN
  t13.highest_concentration
  WHEN t13.assay_type = 'AlphaLISA'
       AND t13.target = 'pSTAT5'
       AND t13.cell_line = 'BAF3-TPOR-JAK2WT'
       AND t13.time_hr = 1.75
       AND t13.p IS NULL THEN
  t13.highest_concentration
  END             hc_tpor_wt,
  CASE
  WHEN t13.assay_type = 'AlphaLISA'
       AND t13.target = 'pSTAT5'
       AND t13.cell_line = 'BAF3-TPOR-JAK2VF'
       AND t13.time_hr = 1.75
       AND t13.p IS NOT NULL
       AND t13.r IS NOT NULL THEN
  t13.p
  WHEN t13.assay_type = 'AlphaLISA'
       AND t13.target = 'pSTAT5'
       AND t13.cell_line = 'BAF3-TPOR-JAK2VF'
       AND t13.time_hr = 1.75
       AND t13.p IS NOT NULL THEN
  t13.p
  WHEN t13.assay_type = 'AlphaLISA'
       AND t13.target = 'pSTAT5'
       AND t13.cell_line = 'BAF3-TPOR-JAK2VF'
       AND t13.time_hr = 1.75
       AND t13.p IS NULL THEN
  t13.r
  END             ic50_nm_tpor_vf,
  CASE
  WHEN t13.assay_type = 'AlphaLISA'
       AND t13.target = 'pSTAT5'
       AND t13.cell_line = 'BAF3-TPOR-JAK2VF'
       AND t13.time_hr = 1.75 THEN
  t14.d
  END             n_ic50_tpor_vf,
  CASE
  WHEN t13.assay_type = 'AlphaLISA'
       AND t13.target = 'pSTAT5'
       AND t13.cell_line = 'BAF3-TPOR-JAK2VF'
       AND t13.time_hr = 1.75
       AND t13.p IS NOT NULL THEN
  2
  WHEN t13.assay_type = 'AlphaLISA'
       AND t13.target = 'pSTAT5'
       AND t13.cell_line = 'BAF3-TPOR-JAK2VF'
       AND t13.time_hr = 1.75
       AND t13.p IS NULL
       AND t13.r IS NOT NULL
       AND t13.compound_status = '>' THEN
  1
  WHEN t13.assay_type = 'AlphaLISA'
       AND t13.target = 'pSTAT5'
       AND t13.cell_line = 'BAF3-TPOR-JAK2VF'
       AND t13.time_hr = 1.75
       AND t13.p IS NULL
       AND t13.r IS NOT NULL
       AND t13.compound_status = '<' THEN
  0
  END             cs_ic50_tpor_vf,
  CASE
  WHEN t13.assay_type = 'AlphaLISA'
       AND t13.target = 'pSTAT5'
       AND t13.cell_line = 'BAF3-TPOR-JAK2VF'
       AND t13.time_hr = 1.75
       AND t13.p IS NOT NULL
       AND t13.r IS NOT NULL THEN
  100 - t13.min
  WHEN t13.assay_type = 'AlphaLISA'
       AND t13.target = 'pSTAT5'
       AND t13.cell_line = 'BAF3-TPOR-JAK2VF'
       AND t13.time_hr = 1.75
       AND t13.p IS NOT NULL THEN
  100 - t13.min
  WHEN t13.assay_type = 'AlphaLISA'
       AND t13.target = 'pSTAT5'
       AND t13.cell_line = 'BAF3-TPOR-JAK2VF'
       AND t13.time_hr = 1.75
       AND t13.p IS NULL THEN
  100 - t13.minr
  END             dmax_tpor_vf,
  CASE
  WHEN t13.assay_type = 'AlphaLISA'
       AND t13.target = 'pSTAT5'
       AND t13.cell_line = 'BAF3-TPOR-JAK2VF'
       AND t13.time_hr = 1.75
       AND t13.p IS NOT NULL
       AND t13.r IS NOT NULL THEN
  t13.pspan
  WHEN t13.assay_type = 'AlphaLISA'
       AND t13.target = 'pSTAT5'
       AND t13.cell_line = 'BAF3-TPOR-JAK2VF'
       AND t13.time_hr = 1.75
       AND t13.p IS NOT NULL THEN
  t13.pspan
  WHEN t13.assay_type = 'AlphaLISA'
       AND t13.target = 'pSTAT5'
       AND t13.cell_line = 'BAF3-TPOR-JAK2VF'
       AND t13.time_hr = 1.75
       AND t13.p IS NULL THEN
  t13.pspan
  END             span_tpor_vf,
  CASE
  WHEN t13.assay_type = 'AlphaLISA'
       AND t13.target = 'pSTAT5'
       AND t13.cell_line = 'BAF3-TPOR-JAK2VF'
       AND t13.time_hr = 1.75
       AND t13.p IS NOT NULL
       AND t13.r IS NOT NULL THEN
  t13.sd
  WHEN t13.assay_type = 'AlphaLISA'
       AND t13.target = 'pSTAT5'
       AND t13.cell_line = 'BAF3-TPOR-JAK2VF'
       AND t13.time_hr = 1.75
       AND t13.p IS NOT NULL THEN
  t13.sd
  WHEN t13.assay_type = 'AlphaLISA'
       AND t13.target = 'pSTAT5'
       AND t13.cell_line = 'BAF3-TPOR-JAK2VF'
       AND t13.time_hr = 1.75
       AND t13.p IS NULL THEN
  t13.sd
  END             sd_ic50_tpor_vf,
  CASE
  WHEN t13.assay_type = 'AlphaLISA'
       AND t13.target = 'pSTAT5'
       AND t13.cell_line = 'BAF3-TPOR-JAK2VF'
       AND t13.time_hr = 1.75
       AND t13.p IS NOT NULL
       AND t13.r IS NOT NULL THEN
  t13.presp_hc
  WHEN t13.assay_type = 'AlphaLISA'
       AND t13.target = 'pSTAT5'
       AND t13.cell_line = 'BAF3-TPOR-JAK2VF'
       AND t13.time_hr = 1.75
       AND t13.p IS NOT NULL THEN
  t13.presp_hc
  WHEN t13.assay_type = 'AlphaLISA'
       AND t13.target = 'pSTAT5'
       AND t13.cell_line = 'BAF3-TPOR-JAK2VF'
       AND t13.time_hr = 1.75
       AND t13.p IS NULL THEN
  t13.presp_hc
  END             resp_hc_tpor_vf,
  CASE
  WHEN t13.assay_type = 'AlphaLISA'
       AND t13.target = 'pSTAT5'
       AND t13.cell_line = 'BAF3-TPOR-JAK2VF'
       AND t13.time_hr = 1.75
       AND t13.p IS NOT NULL
       AND t13.r IS NOT NULL THEN
  t13.highest_concentration
  WHEN t13.assay_type = 'AlphaLISA'
       AND t13.target = 'pSTAT5'
       AND t13.cell_line = 'BAF3-TPOR-JAK2VF'
       AND t13.time_hr = 1.75
       AND t13.p IS NOT NULL THEN
  t13.highest_concentration
  WHEN t13.assay_type = 'AlphaLISA'
       AND t13.target = 'pSTAT5'
       AND t13.cell_line = 'BAF3-TPOR-JAK2VF'
       AND t13.time_hr = 1.75
       AND t13.p IS NULL THEN
  t13.highest_concentration
  END             hc_tpor_vf,
  CASE
  WHEN t13.assay_type = 'AlphaLISA'
       AND t13.target = 'pSTAT5'
       AND t13.cell_line = 'SET-2'
       AND t13.time_hr = 2
       AND t13.p IS NOT NULL
       AND t13.r IS NOT NULL THEN
  t13.p
  WHEN t13.assay_type = 'AlphaLISA'
       AND t13.target = 'pSTAT5'
       AND t13.cell_line = 'SET-2'
       AND t13.time_hr = 2
       AND t13.p IS NOT NULL THEN
  t13.p
  WHEN t13.assay_type = 'AlphaLISA'
       AND t13.target = 'pSTAT5'
       AND t13.cell_line = 'SET-2'
       AND t13.time_hr = 2
       AND t13.p IS NULL THEN
  t13.r
  END             ic50_nm_set2,
  CASE
  WHEN t13.assay_type = 'AlphaLISA'
       AND t13.target = 'pSTAT5'
       AND t13.cell_line = 'SET-2'
       AND t13.time_hr = 2
       AND t13.p IS NOT NULL
       AND t13.r IS NOT NULL THEN
  t13.p2 * 1000
  WHEN t13.assay_type = 'AlphaLISA'
       AND t13.target = 'pSTAT5'
       AND t13.cell_line = 'SET-2'
       AND t13.time_hr = 2
       AND t13.p IS NOT NULL THEN
  t13.p2 * 1000
  WHEN t13.assay_type = 'AlphaLISA'
       AND t13.target = 'pSTAT5'
       AND t13.cell_line = 'SET-2'
       AND t13.time_hr = 2
       AND t13.p IS NULL THEN
  t13.p2 * 1000
  END             set2_abs_ic50,
  CASE
  WHEN t13.assay_type = 'AlphaLISA'
       AND t13.target = 'pSTAT5'
       AND t13.cell_line = 'SET-2'
       AND t13.time_hr = 2 THEN
  t14.d
  END             n_ic50_set2,
  CASE
  WHEN t13.assay_type = 'AlphaLISA'
       AND t13.target = 'pSTAT5'
       AND t13.cell_line = 'SET-2'
       AND t13.time_hr = 2
       AND t13.p IS NOT NULL THEN
  2
  WHEN t13.assay_type = 'AlphaLISA'
       AND t13.target = 'pSTAT5'
       AND t13.cell_line = 'SET-2'
       AND t13.time_hr = 2
       AND t13.p IS NULL
       AND t13.r IS NOT NULL
       AND t13.compound_status = '>' THEN
  1
  WHEN t13.assay_type = 'AlphaLISA'
       AND t13.target = 'pSTAT5'
       AND t13.cell_line = 'SET-2'
       AND t13.time_hr = 2
       AND t13.p IS NULL
       AND t13.r IS NOT NULL
       AND t13.compound_status = '<' THEN
  0
  END             cs_ic50_set2,
  CASE
  WHEN t13.assay_type = 'AlphaLISA'
       AND t13.target = 'pSTAT5'
       AND t13.cell_line = 'SET-2'
       AND t13.time_hr = 2
       AND t13.p IS NOT NULL
       AND t13.r IS NOT NULL THEN
  100 - t13.min
  WHEN t13.assay_type = 'AlphaLISA'
       AND t13.target = 'pSTAT5'
       AND t13.cell_line = 'SET-2'
       AND t13.time_hr = 2
       AND t13.p IS NOT NULL THEN
  100 - t13.min
  WHEN t13.assay_type = 'AlphaLISA'
       AND t13.target = 'pSTAT5'
       AND t13.cell_line = 'SET-2'
       AND t13.time_hr = 2
       AND t13.p IS NULL THEN
  100 - t13.minr
  END             dmax_set2,
  CASE
  WHEN t13.assay_type = 'AlphaLISA'
       AND t13.target = 'pSTAT5'
       AND t13.cell_line = 'SET-2'
       AND t13.time_hr = 2
       AND t13.p IS NOT NULL
       AND t13.r IS NOT NULL THEN
  t13.pspan
  WHEN t13.assay_type = 'AlphaLISA'
       AND t13.target = 'pSTAT5'
       AND t13.cell_line = 'SET-2'
       AND t13.time_hr = 2
       AND t13.p IS NOT NULL THEN
  t13.pspan
  WHEN t13.assay_type = 'AlphaLISA'
       AND t13.target = 'pSTAT5'
       AND t13.cell_line = 'SET-2'
       AND t13.time_hr = 2
       AND t13.p IS NULL THEN
  t13.pspan
  END             span_set2,
  CASE
  WHEN t13.assay_type = 'AlphaLISA'
       AND t13.target = 'pSTAT5'
       AND t13.cell_line = 'SET-2'
       AND t13.time_hr = 2
       AND t13.p IS NOT NULL
       AND t13.r IS NOT NULL THEN
  t13.sd
  WHEN t13.assay_type = 'AlphaLISA'
       AND t13.target = 'pSTAT5'
       AND t13.cell_line = 'SET-2'
       AND t13.time_hr = 2
       AND t13.p IS NOT NULL THEN
  t13.sd
  WHEN t13.assay_type = 'AlphaLISA'
       AND t13.target = 'pSTAT5'
       AND t13.cell_line = 'SET-2'
       AND t13.time_hr = 2
       AND t13.p IS NULL THEN
  t13.sd
  END             sd_ic50_set2,
  CASE
  WHEN t13.assay_type = 'AlphaLISA'
       AND t13.target = 'pSTAT5'
       AND t13.cell_line = 'SET-2'
       AND t13.time_hr = 2
       AND t13.p IS NOT NULL
       AND t13.r IS NOT NULL THEN
  t13.presp_hc
  WHEN t13.assay_type = 'AlphaLISA'
       AND t13.target = 'pSTAT5'
       AND t13.cell_line = 'SET-2'
       AND t13.time_hr = 2
       AND t13.p IS NOT NULL THEN
  t13.presp_hc
  WHEN t13.assay_type = 'AlphaLISA'
       AND t13.target = 'pSTAT5'
       AND t13.cell_line = 'SET-2'
       AND t13.time_hr = 2
       AND t13.p IS NULL THEN
  t13.presp_hc
  END             resp_hc_set2,
  CASE
  WHEN t13.assay_type = 'AlphaLISA'
       AND t13.target = 'pSTAT5'
       AND t13.cell_line = 'SET-2'
       AND t13.time_hr = 2
       AND t13.p IS NOT NULL
       AND t13.r IS NOT NULL THEN
  t13.highest_concentration
  WHEN t13.assay_type = 'AlphaLISA'
       AND t13.target = 'pSTAT5'
       AND t13.cell_line = 'SET-2'
       AND t13.time_hr = 2
       AND t13.p IS NOT NULL THEN
  t13.highest_concentration
  WHEN t13.assay_type = 'AlphaLISA'
       AND t13.target = 'pSTAT5'
       AND t13.cell_line = 'SET-2'
       AND t13.time_hr = 2
       AND t13.p IS NULL THEN
  t13.highest_concentration
    END             hc_set2,
    CASE
    WHEN t13.assay_type = 'AlphaLISA'
         AND t13.target = 'pSTAT5'
         AND t13.cell_line = 'TF-1'
         AND t13.time_hr = 2
         AND t13.p IS NOT NULL
         AND t13.r IS NOT NULL THEN t13.p
    WHEN t13.assay_type = 'AlphaLISA'
         AND t13.target = 'pSTAT5'
         AND t13.cell_line = 'TF-1'
         AND t13.time_hr = 2
         AND t13.p IS NOT NULL THEN t13.p
    WHEN t13.assay_type = 'AlphaLISA'
         AND t13.target = 'pSTAT5'
         AND t13.cell_line = 'TF-1'
         AND t13.time_hr = 2
         AND t13.p IS NULL THEN t13.r
    END ic50_nm_tf1,
    CASE
    WHEN t13.assay_type = 'AlphaLISA'
         AND t13.target = 'pSTAT5'
         AND t13.cell_line = 'TF-1'
         AND t13.time_hr = 2
         AND t13.p IS NOT NULL
         AND t13.r IS NOT NULL THEN t13.p2 * 1000
    WHEN t13.assay_type = 'AlphaLISA'
         AND t13.target = 'pSTAT5'
         AND t13.cell_line = 'TF-1'
         AND t13.time_hr = 2
         AND t13.p IS NOT NULL THEN t13.p2 * 1000
    WHEN t13.assay_type = 'AlphaLISA'
         AND t13.target = 'pSTAT5'
         AND t13.cell_line = 'TF-1'
         AND t13.time_hr = 2
         AND t13.p IS NULL THEN t13.p2 * 1000
    END tf1_abs_ic50,
    CASE
    WHEN t13.assay_type = 'AlphaLISA'
         AND t13.target = 'pSTAT5'
         AND t13.cell_line = 'TF-1'
         AND t13.time_hr = 2 THEN t14.d
    END n_ic50_tf1,
    CASE
    WHEN t13.assay_type = 'AlphaLISA'
         AND t13.target = 'pSTAT5'
         AND t13.cell_line = 'TF-1'
         AND t13.time_hr = 2
         AND t13.p IS NOT NULL THEN 2
    WHEN t13.assay_type = 'AlphaLISA'
         AND t13.target = 'pSTAT5'
         AND t13.cell_line = 'TF-1'
         AND t13.time_hr = 2
         AND t13.p IS NULL
         AND t13.r IS NOT NULL
         AND t13.compound_status = '>' THEN 1
    WHEN t13.assay_type = 'AlphaLISA'
         AND t13.target = 'pSTAT5'
         AND t13.cell_line = 'TF-1'
         AND t13.time_hr = 2
         AND t13.p IS NULL
         AND t13.r IS NOT NULL
         AND t13.compound_status = '<' THEN 0
    END cs_ic50_tf1,
    CASE
    WHEN t13.assay_type = 'AlphaLISA'
         AND t13.target = 'pSTAT5'
         AND t13.cell_line = 'TF-1'
         AND t13.time_hr = 2
         AND t13.p IS NOT NULL
         AND t13.r IS NOT NULL THEN 100 - t13.min
    WHEN t13.assay_type = 'AlphaLISA'
         AND t13.target = 'pSTAT5'
         AND t13.cell_line = 'TF-1'
         AND t13.time_hr = 2
         AND t13.p IS NOT NULL THEN 100 - t13.min
    WHEN t13.assay_type = 'AlphaLISA'
         AND t13.target = 'pSTAT5'
         AND t13.cell_line = 'TF-1'
         AND t13.time_hr = 2
         AND t13.p IS NULL THEN 100 - t13.minr
    END dmax_tf1,
    CASE
    WHEN t13.assay_type = 'AlphaLISA'
         AND t13.target = 'pSTAT5'
         AND t13.cell_line = 'TF-1'
         AND t13.time_hr = 2
         AND t13.p IS NOT NULL
         AND t13.r IS NOT NULL THEN t13.pspan
    WHEN t13.assay_type = 'AlphaLISA'
         AND t13.target = 'pSTAT5'
         AND t13.cell_line = 'TF-1'
         AND t13.time_hr = 2
         AND t13.p IS NOT NULL THEN t13.pspan
    WHEN t13.assay_type = 'AlphaLISA'
         AND t13.target = 'pSTAT5'
         AND t13.cell_line = 'TF-1'
         AND t13.time_hr = 2
         AND t13.p IS NULL THEN t13.pspan
    END span_tf1,
    CASE
    WHEN t13.assay_type = 'AlphaLISA'
         AND t13.target = 'pSTAT5'
         AND t13.cell_line = 'TF-1'
         AND t13.time_hr = 2
         AND t13.p IS NOT NULL
         AND t13.r IS NOT NULL THEN t13.sd
    WHEN t13.assay_type = 'AlphaLISA'
         AND t13.target = 'pSTAT5'
         AND t13.cell_line = 'TF-1'
         AND t13.time_hr = 2
         AND t13.p IS NOT NULL THEN t13.sd
    WHEN t13.assay_type = 'AlphaLISA'
         AND t13.target = 'pSTAT5'
         AND t13.cell_line = 'TF-1'
         AND t13.time_hr = 2
         AND t13.p IS NULL THEN t13.sd
    END sd_ic50_tf1,
    CASE
    WHEN t13.assay_type = 'AlphaLISA'
         AND t13.target = 'pSTAT5'
         AND t13.cell_line = 'TF-1'
         AND t13.time_hr = 2
         AND t13.p IS NOT NULL
         AND t13.r IS NOT NULL THEN t13.presp_hc
    WHEN t13.assay_type = 'AlphaLISA'
         AND t13.target = 'pSTAT5'
         AND t13.cell_line = 'TF-1'
         AND t13.time_hr = 2
         AND t13.p IS NOT NULL THEN t13.presp_hc
    WHEN t13.assay_type = 'AlphaLISA'
         AND t13.target = 'pSTAT5'
         AND t13.cell_line = 'TF-1'
         AND t13.time_hr = 2
         AND t13.p IS NULL THEN t13.presp_hc
    END resp_hc_tf1,
    CASE
    WHEN t13.assay_type = 'AlphaLISA'
         AND t13.target = 'pSTAT5'
         AND t13.cell_line = 'TF-1'
         AND t13.time_hr = 2
         AND t13.p IS NOT NULL
         AND t13.r IS NOT NULL THEN t13.highest_concentration
    WHEN t13.assay_type = 'AlphaLISA'
         AND t13.target = 'pSTAT5'
         AND t13.cell_line = 'TF-1'
         AND t13.time_hr = 2
         AND t13.p IS NOT NULL THEN t13.highest_concentration
    WHEN t13.assay_type = 'AlphaLISA'
         AND t13.target = 'pSTAT5'
         AND t13.cell_line = 'TF-1'
         AND t13.time_hr = 2
         AND t13.p IS NULL THEN t13.highest_concentration
    END hc_tf1,
    CASE
      WHEN t13.assay_type = 'AlphaLISA'
           AND t13.target = 'pSTAT5'
           AND t13.cell_line = 'UT-7'
           AND t13.p IS NOT NULL
           AND t13.r IS NOT NULL THEN
      t13.p
      WHEN t13.assay_type = 'AlphaLISA'
           AND t13.target = 'pSTAT5'
           AND t13.cell_line = 'UT-7'
           AND t13.p IS NOT NULL THEN
      t13.p
      WHEN t13.assay_type = 'AlphaLISA'
           AND t13.target = 'pSTAT5'
           AND t13.cell_line = 'UT-7'
           AND t13.p IS NULL THEN
      t13.r
    END             ic50_nm_ut7,
    CASE
      WHEN t13.assay_type = 'AlphaLISA'
           AND t13.target = 'pSTAT5'
           AND t13.cell_line = 'UT-7'
           AND t13.p IS NOT NULL
           AND t13.r IS NOT NULL THEN
      t13.p2 * 1000
      WHEN t13.assay_type = 'AlphaLISA'
           AND t13.target = 'pSTAT5'
           AND t13.cell_line = 'UT-7'
           AND t13.p IS NOT NULL THEN
      t13.p2 * 1000
      WHEN t13.assay_type = 'AlphaLISA'
           AND t13.target = 'pSTAT5'
           AND t13.cell_line = 'UT-7'
           AND t13.p IS NULL THEN
      t13.p2 * 1000
    END             ut7_abs_ic50,
    CASE
      WHEN t13.assay_type = 'AlphaLISA'
           AND t13.target = 'pSTAT5'
           AND t13.cell_line = 'UT-7'

           AND t13.p IS NOT NULL
           AND t13.r IS NOT NULL THEN
      t13.sd
      WHEN t13.assay_type = 'AlphaLISA'
           AND t13.target = 'pSTAT5'
           AND t13.cell_line = 'UT-7'
           AND t13.p IS NOT NULL THEN
      t13.sd
      WHEN t13.assay_type = 'AlphaLISA'
           AND t13.target = 'pSTAT5'
           AND t13.cell_line = 'UT-7'
           AND t13.p IS NULL THEN
      t13.sd
    END             sd_ic50_ut7,
    CASE
      WHEN t13.assay_type = 'AlphaLISA'
           AND t13.target = 'pSTAT5'
           AND t13.cell_line = 'UT-7'
           AND t13.p IS NOT NULL
           AND t13.r IS NOT NULL THEN
      t13.presp_hc
      WHEN t13.assay_type = 'AlphaLISA'
           AND t13.target = 'pSTAT5'
           AND t13.cell_line = 'UT-7'
           AND t13.p IS NOT NULL THEN
      t13.presp_hc
      WHEN t13.assay_type = 'AlphaLISA'
           AND t13.target = 'pSTAT5'
           AND t13.cell_line = 'UT-7'
           AND t13.p IS NULL THEN
      t13.presp_hc
    END             resp_hc_ut7,
    CASE
      WHEN t13.assay_type = 'AlphaLISA'
           AND t13.target = 'pSTAT5'
           AND t13.cell_line = 'UT-7'
           AND t13.p IS NOT NULL
           AND t13.r IS NOT NULL THEN
      t13.highest_concentration
      WHEN t13.assay_type = 'AlphaLISA'
           AND t13.target = 'pSTAT5'
           AND t13.cell_line = 'UT-7'
           AND t13.p IS NOT NULL THEN
      t13.highest_concentration
      WHEN t13.assay_type = 'AlphaLISA'
           AND t13.target = 'pSTAT5'
           AND t13.cell_line = 'UT-7'
           AND t13.p IS NULL THEN
      t13.highest_concentration
    END             hc_ut7,
    CASE
      WHEN t13.assay_type = 'AlphaLISA'
           AND t13.target = 'pSTAT5'
           AND t13.cell_line = 'UT-7' THEN
      t14.d
    END             n_ic50_ut7,
    CASE
      WHEN t13.assay_type = 'AlphaLISA'
           AND t13.target = 'pSTAT5'
           AND t13.cell_line = 'UT-7'
           AND t13.p IS NOT NULL THEN
      2
      WHEN t13.assay_type = 'AlphaLISA'
           AND t13.target = 'pSTAT5'
           AND t13.cell_line = 'UT-7'
           AND t13.p IS NULL
           AND t13.r IS NOT NULL
           AND t13.compound_status = '>' THEN
      1
      WHEN t13.assay_type = 'AlphaLISA'
           AND t13.target = 'pSTAT5'
           AND t13.cell_line = 'UT-7'
           AND t13.p IS NULL
           AND t13.r IS NOT NULL
           AND t13.compound_status = '<' THEN
      0
    END             cs_ic50_ut7
    FROM
      ds3_userdata.t13_subq_summ_jak2 t13
      LEFT JOIN (
          SELECT
              formatted_id,
              assay_type,
              cell_line,
              target,
              time_hr,
              COUNT(formatted_id) AS d
          FROM
              (
                  SELECT
                      formatted_id,
                      ic50,
                      span,
                      min,
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
          GROUP BY
              formatted_id,
              assay_type,
              target,
              time_hr,
              cell_line
      ) t14 ON t13.formatted_id = t14.formatted_id
      AND t13.assay_type = t14.assay_type
      AND t13.cell_line = t14.cell_line
      AND (t13.target = t14.target OR (t13.target IS NULL AND t14.target IS NULL))
      AND t13.time_hr = t14.time_hr
