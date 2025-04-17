SELECT
  t0.formatted_id AS formatted_id,
  CASE
  WHEN t1.target = 'JH1'
       AND t1.target_conc = '0.1 nM'
       AND t1.tracer = 'HY-102055'
       AND t1.tracer_conc = '50 nM'
       AND t1.p IS NOT NULL
       AND t1.r IS NOT NULL THEN
  t1.p
  WHEN t1.target = 'JH1'
       AND t1.target_conc = '0.1 nM'
       AND t1.tracer = 'HY-102055'
       AND t1.tracer_conc = '50 nM'
       AND t1.p IS NOT NULL THEN
  t1.p
  WHEN t1.target = 'JH1'
       AND t1.target_conc = '0.1 nM'
       AND t1.tracer = 'HY-102055'
       AND t1.tracer_conc = '50 nM'
       AND t1.p IS NULL THEN
  t1.r
  END             ic50_nm_jh1,
  CASE
  WHEN t1.target = 'JH1'
       AND t1.target_conc = '0.1 nM'
       AND t1.tracer = 'HY-102055'
       AND t1.tracer_conc = '50 nM' THEN
  t2.d
  END             n_ic50_jh1,
  CASE
  WHEN t1.target = 'JH1'
       AND t1.target_conc = '0.1 nM'
       AND t1.tracer = 'HY-102055'
       AND t1.tracer_conc = '50 nM'
       AND t1.p IS NOT NULL THEN
  2
  WHEN t1.target = 'JH1'
       AND t1.target_conc = '0.1 nM'
       AND t1.tracer = 'HY-102055'
       AND t1.tracer_conc = '50 nM'
       AND t1.p IS NULL
       AND t1.r IS NOT NULL
       AND t1.compound_status = '>' THEN
  1
  WHEN t1.target = 'JH1'
       AND t1.target_conc = '0.1 nM'
       AND t1.tracer = 'HY-102055'
       AND t1.tracer_conc = '50 nM'
       AND t1.p IS NULL
       AND t1.r IS NOT NULL
       AND t1.compound_status = '<' THEN
  0
  END             cs_ic50_nm_jh1,
  CASE
  WHEN t1.target = 'JH1'
       AND t1.target_conc = '0.1 nM'
       AND t1.tracer = 'HY-102055'
       AND t1.tracer_conc = '50 nM'
       AND t1.p IS NOT NULL
       AND t1.r IS NOT NULL THEN
  t1.pspan
  WHEN t1.target = 'JH1'
       AND t1.target_conc = '0.1 nM'
       AND t1.tracer = 'HY-102055'
       AND t1.tracer_conc = '50 nM'
       AND t1.p IS NOT NULL THEN
  t1.pspan
  WHEN t1.target = 'JH1'
       AND t1.target_conc = '0.1 nM'
       AND t1.tracer = 'HY-102055'
       AND t1.tracer_conc = '50 nM'
       AND t1.p IS NULL THEN
  t1.pspan
  END             span_jh1,
  CASE
  WHEN t1.target = 'JH1'
       AND t1.target_conc = '0.1 nM'
       AND t1.tracer = 'HY-102055'
       AND t1.tracer_conc = '50 nM'
       AND t1.p IS NOT NULL
       AND t1.r IS NOT NULL THEN
  t1.presp_hc
  WHEN t1.target = 'JH1'
       AND t1.target_conc = '0.1 nM'
       AND t1.tracer = 'HY-102055'
       AND t1.tracer_conc = '50 nM'
       AND t1.p IS NOT NULL THEN
  t1.presp_hc
  WHEN t1.target = 'JH1'
       AND t1.target_conc = '0.1 nM'
       AND t1.tracer = 'HY-102055'
       AND t1.tracer_conc = '50 nM'
       AND t1.p IS NULL THEN
  t1.presp_hc
  END             resp_hc_jh1,
  CASE
  WHEN t1.target = 'JH1'
       AND t1.target_conc = '0.1 nM'
       AND t1.tracer = 'HY-102055'
       AND t1.tracer_conc = '50 nM'
       AND t1.p IS NOT NULL
       AND t1.r IS NOT NULL THEN
  t1.sd
  WHEN t1.target = 'JH1'
       AND t1.target_conc = '0.1 nM'
       AND t1.tracer = 'HY-102055'
       AND t1.tracer_conc = '50 nM'
       AND t1.p IS NOT NULL THEN
  t1.sd
  WHEN t1.target = 'JH1'
       AND t1.target_conc = '0.1 nM'
       AND t1.tracer = 'HY-102055'
       AND t1.tracer_conc = '50 nM'
       AND t1.p IS NULL THEN
  t1.sd
  END             sd_ic50_nm_jh1,
  CASE
  WHEN t1.target = 'JH1'
       AND t1.target_conc = '0.5 nM'
       AND t1.tracer = 'PRT1009458'
       AND t1.tracer_conc = '50 nM'
       AND t1.p IS NOT NULL
       AND t1.r IS NOT NULL THEN
  t1.p
  WHEN t1.target = 'JH1'
       AND t1.target_conc = '0.5 nM'
       AND t1.tracer = 'PRT1009458'
       AND t1.tracer_conc = '50 nM'
       AND t1.p IS NOT NULL THEN
  t1.p
  WHEN t1.target = 'JH1'
       AND t1.target_conc = '0.5 nM'
       AND t1.tracer = 'PRT1009458'
       AND t1.tracer_conc = '50 nM'
       AND t1.p IS NULL THEN
  t1.r
  END             ic50_nm_jh1_prt,
  CASE
  WHEN t1.target = 'JH1'
       AND t1.target_conc = '0.5 nM'
       AND t1.tracer = 'PRT1009458'
       AND t1.tracer_conc = '50 nM' THEN
  t2.d
  END             n_ic50_jh1_prt,
  CASE
  WHEN t1.target = 'JH1'
       AND t1.target_conc = '0.5 nM'
       AND t1.tracer = 'PRT1009458'
       AND t1.tracer_conc = '50 nM'
       AND t1.p IS NOT NULL THEN
  2
  WHEN t1.target = 'JH1'
       AND t1.target_conc = '0.5 nM'
       AND t1.tracer = 'PRT1009458'
       AND t1.tracer_conc = '50 nM'
       AND t1.p IS NULL
       AND t1.r IS NOT NULL
       AND t1.compound_status = '>' THEN
  1
  WHEN t1.target = 'JH1'
       AND t1.target_conc = '0.5 nM'
       AND t1.tracer = 'PRT1009458'
       AND t1.tracer_conc = '50 nM'
       AND t1.p IS NULL
       AND t1.r IS NOT NULL
       AND t1.compound_status = '<' THEN
  0
  END             cs_ic50_nm_jh1_prt,
  CASE
  WHEN t1.target = 'JH1'
       AND t1.target_conc = '0.5 nM'
       AND t1.tracer = 'PRT1009458'
       AND t1.tracer_conc = '50 nM'
       AND t1.p IS NOT NULL
       AND t1.r IS NOT NULL THEN
  t1.pspan
  WHEN t1.target = 'JH1'
       AND t1.target_conc = '0.5 nM'
       AND t1.tracer = 'PRT1009458'
       AND t1.tracer_conc = '50 nM'
       AND t1.p IS NOT NULL THEN
  t1.pspan
  WHEN t1.target = 'JH1'
       AND t1.target_conc = '0.5 nM'
       AND t1.tracer = 'PRT1009458'
       AND t1.tracer_conc = '50 nM'
       AND t1.p IS NULL THEN
  t1.pspan
  END             span_jh1_prt,
  CASE
  WHEN t1.target = 'JH1'
       AND t1.target_conc = '0.5 nM'
       AND t1.tracer = 'PRT1009458'
       AND t1.tracer_conc = '50 nM'
       AND t1.p IS NOT NULL
       AND t1.r IS NOT NULL THEN
  t1.presp_hc
  WHEN t1.target = 'JH1'
       AND t1.target_conc = '0.5 nM'
       AND t1.tracer = 'PRT1009458'
       AND t1.tracer_conc = '50 nM'
       AND t1.p IS NOT NULL THEN
  t1.presp_hc
  WHEN t1.target = 'JH1'
       AND t1.target_conc = '0.5 nM'
       AND t1.tracer = 'PRT1009458'
       AND t1.tracer_conc = '50 nM'
       AND t1.p IS NULL THEN
  t1.presp_hc
  END             resp_hc_jh1_prt,
  CASE
  WHEN t1.target = 'JH1'
       AND t1.target_conc = '0.5 nM'
       AND t1.tracer = 'PRT1009458'
       AND t1.tracer_conc = '50 nM'
       AND t1.p IS NOT NULL
       AND t1.r IS NOT NULL THEN
  t1.sd
  WHEN t1.target = 'JH1'
       AND t1.target_conc = '0.5 nM'
       AND t1.tracer = 'PRT1009458'
       AND t1.tracer_conc = '50 nM'
       AND t1.p IS NOT NULL THEN
  t1.sd
  WHEN t1.target = 'JH1'
       AND t1.target_conc = '0.5 nM'
       AND t1.tracer = 'PRT1009458'
       AND t1.tracer_conc = '50 nM'
       AND t1.p IS NULL THEN
  t1.sd
  END             sd_ic50_nm_jh1_prt,
  CASE
  WHEN t1.target = 'JH2 WT'
       AND t1.target_conc = '0.1 nM'
       AND t1.tracer = 'HY-102055'
       AND t1.tracer_conc = '50 nM'
       AND t1.p IS NOT NULL
       AND t1.r IS NOT NULL THEN
  t1.p
  WHEN t1.target = 'JH2 WT'
       AND t1.target_conc = '0.1 nM'
       AND t1.tracer = 'HY-102055'
       AND t1.tracer_conc = '50 nM'
       AND t1.p IS NOT NULL THEN
  t1.p
  WHEN t1.target = 'JH2 WT'
       AND t1.target_conc = '0.1 nM'
       AND t1.tracer = 'HY-102055'
       AND t1.tracer_conc = '50 nM'
       AND t1.p IS NULL THEN
  t1.r
  END             ic50_nm_jh2_wt,
  CASE
  WHEN t1.target = 'JH2 WT'
       AND t1.target_conc = '0.1 nM'
       AND t1.tracer = 'HY-102055'
       AND t1.tracer_conc = '50 nM' THEN
  t2.d
  END             n_ic50_jh2_wt,
  CASE
  WHEN t1.target = 'JH2 WT'
       AND t1.target_conc = '0.1 nM'
       AND t1.tracer = 'HY-102055'
       AND t1.tracer_conc = '50 nM'
       AND t1.p IS NOT NULL THEN
  2
  WHEN t1.target = 'JH2 WT'
       AND t1.target_conc = '0.1 nM'
       AND t1.tracer = 'HY-102055'
       AND t1.tracer_conc = '50 nM'
       AND t1.p IS NULL
       AND t1.r IS NOT NULL
       AND t1.compound_status = '>' THEN
  1
  WHEN t1.target = 'JH2 WT'
       AND t1.target_conc = '0.1 nM'
       AND t1.tracer = 'HY-102055'
       AND t1.tracer_conc = '50 nM'
       AND t1.p IS NULL
       AND t1.r IS NOT NULL
       AND t1.compound_status = '<' THEN
  0
  END             cs_ic50_nm_jh2_wt,
  CASE
  WHEN t1.target = 'JH2 WT'
       AND t1.target_conc = '0.1 nM'
       AND t1.tracer = 'HY-102055'
       AND t1.tracer_conc = '50 nM'
       AND t1.p IS NOT NULL
       AND t1.r IS NOT NULL THEN
  t1.pspan
  WHEN t1.target = 'JH2 WT'
       AND t1.target_conc = '0.1 nM'
       AND t1.tracer = 'HY-102055'
       AND t1.tracer_conc = '50 nM'
       AND t1.p IS NOT NULL THEN
  t1.pspan
  WHEN t1.target = 'JH2 WT'
       AND t1.target_conc = '0.1 nM'
       AND t1.tracer = 'HY-102055'
       AND t1.tracer_conc = '50 nM'
       AND t1.p IS NULL THEN
  t1.pspan
  END             span_jh2_wt,
  CASE
  WHEN t1.target = 'JH2 WT'
       AND t1.target_conc = '0.1 nM'
       AND t1.tracer = 'HY-102055'
       AND t1.tracer_conc = '50 nM'
       AND t1.p IS NOT NULL
       AND t1.r IS NOT NULL THEN
  t1.presp_hc
  WHEN t1.target = 'JH2 WT'
       AND t1.target_conc = '0.1 nM'
       AND t1.tracer = 'HY-102055'
       AND t1.tracer_conc = '50 nM'
       AND t1.p IS NOT NULL THEN
  t1.presp_hc
  WHEN t1.target = 'JH2 WT'
       AND t1.target_conc = '0.1 nM'
       AND t1.tracer = 'HY-102055'
       AND t1.tracer_conc = '50 nM'
       AND t1.p IS NULL THEN
  t1.presp_hc
  END             resp_hc_jh2_wt,
  CASE
  WHEN t1.target = 'JH2 WT'
       AND t1.target_conc = '0.1 nM'
       AND t1.tracer = 'HY-102055'
       AND t1.tracer_conc = '50 nM'
       AND t1.p IS NOT NULL
       AND t1.r IS NOT NULL THEN
  t1.sd
  WHEN t1.target = 'JH2 WT'
       AND t1.target_conc = '0.1 nM'
       AND t1.tracer = 'HY-102055'
       AND t1.tracer_conc = '50 nM'
       AND t1.p IS NOT NULL THEN
  t1.sd
  WHEN t1.target = 'JH2 WT'
       AND t1.target_conc = '0.1 nM'
       AND t1.tracer = 'HY-102055'
       AND t1.tracer_conc = '50 nM'
       AND t1.p IS NULL THEN
  t1.sd
  END             sd_ic50_nm_jh2_wt,
  CASE
  WHEN t1.target = 'JH2 WT'
       AND t1.target_conc = '0.5 nM'
       AND t1.tracer = 'PRT1009458'
       AND t1.tracer_conc = '50 nM'
       AND t1.p IS NOT NULL
       AND t1.r IS NOT NULL THEN
  t1.p
  WHEN t1.target = 'JH2 WT'
       AND t1.target_conc = '0.5 nM'
       AND t1.tracer = 'PRT1009458'
       AND t1.tracer_conc = '50 nM'
       AND t1.p IS NOT NULL THEN
  t1.p
  WHEN t1.target = 'JH2 WT'
       AND t1.target_conc = '0.5 nM'
       AND t1.tracer = 'PRT1009458'
       AND t1.tracer_conc = '50 nM'
       AND t1.p IS NULL THEN
  t1.r
  END             ic50_nm_jh2_wt_prt,
  CASE
  WHEN t1.target = 'JH2 WT'
       AND t1.target_conc = '0.5 nM'
       AND t1.tracer = 'PRT1009458'
       AND t1.tracer_conc = '50 nM' THEN
  t2.d
  END             n_ic50_jh2_wt_prt,
  CASE
  WHEN t1.target = 'JH2 WT'
       AND t1.target_conc = '0.5 nM'
       AND t1.tracer = 'PRT1009458'
       AND t1.tracer_conc = '50 nM'
       AND t1.p IS NOT NULL THEN
  2
  WHEN t1.target = 'JH2 WT'
       AND t1.target_conc = '0.5 nM'
       AND t1.tracer = 'PRT1009458'
       AND t1.tracer_conc = '50 nM'
       AND t1.p IS NULL
       AND t1.r IS NOT NULL
       AND t1.compound_status = '>' THEN
  1
  WHEN t1.target = 'JH2 WT'
       AND t1.target_conc = '0.5 nM'
       AND t1.tracer = 'PRT1009458'
       AND t1.tracer_conc = '50 nM'
       AND t1.p IS NULL
       AND t1.r IS NOT NULL
       AND t1.compound_status = '<' THEN
  0
  END             cs_ic50_nm_jh2_wt_prt,
  CASE
  WHEN t1.target = 'JH2 WT'
       AND t1.target_conc = '0.5 nM'
       AND t1.tracer = 'PRT1009458'
       AND t1.tracer_conc = '50 nM'
       AND t1.p IS NOT NULL
       AND t1.r IS NOT NULL THEN
  t1.pspan
  WHEN t1.target = 'JH2 WT'
       AND t1.target_conc = '0.1 nM'
       AND t1.target_conc = '0.5 nM'
       AND t1.tracer = 'PRT1009458'
       AND t1.p IS NOT NULL THEN
  t1.pspan
  WHEN t1.target = 'JH2 WT'
       AND t1.target_conc = '0.5 nM'
       AND t1.tracer = 'PRT1009458'
       AND t1.tracer_conc = '50 nM'
       AND t1.p IS NULL THEN
  t1.pspan
  END             span_jh2_wt_prt,
  CASE
  WHEN t1.target = 'JH2 WT'
       AND t1.target_conc = '0.5 nM'
       AND t1.tracer = 'PRT1009458'
       AND t1.tracer_conc = '50 nM'
       AND t1.p IS NOT NULL
       AND t1.r IS NOT NULL THEN
  t1.presp_hc
  WHEN t1.target = 'JH2 WT'
       AND t1.target_conc = '0.5 nM'
       AND t1.tracer = 'PRT1009458'
       AND t1.tracer_conc = '50 nM'
       AND t1.p IS NOT NULL THEN
  t1.presp_hc
  WHEN t1.target = 'JH2 WT'
       AND t1.target_conc = '0.5 nM'
       AND t1.tracer = 'PRT1009458'
       AND t1.tracer_conc = '50 nM'
       AND t1.p IS NULL THEN
  t1.presp_hc
  END             resp_hc_jh2_wt_prt,
  CASE
  WHEN t1.target = 'JH2 WT'
       AND t1.target_conc = '0.5 nM'
       AND t1.tracer = 'PRT1009458'
       AND t1.tracer_conc = '50 nM'
       AND t1.p IS NOT NULL
       AND t1.r IS NOT NULL THEN
  t1.sd
  WHEN t1.target = 'JH2 WT'
       AND t1.target_conc = '0.5 nM'
       AND t1.tracer = 'PRT1009458'
       AND t1.tracer_conc = '50 nM'
       AND t1.p IS NOT NULL THEN
  t1.sd
  WHEN t1.target = 'JH2 WT'
       AND t1.target_conc = '0.5 nM'
       AND t1.tracer = 'PRT1009458'
       AND t1.tracer_conc = '50 nM'
       AND t1.p IS NULL THEN
  t1.sd
  END             sd_ic50_nm_jh2_wt_prt,
  CASE
  WHEN t1.target = 'JH2 TYK2'
       AND t1.target_conc = '0.1 nM'
       AND t1.tracer = 'HY-102055'
       AND t1.tracer_conc = '50 nM'
       AND t1.p IS NOT NULL
       AND t1.r IS NOT NULL THEN
  t1.p
  WHEN t1.target = 'JH2 TYK2'
       AND t1.target_conc = '0.1 nM'
       AND t1.tracer = 'HY-102055'
       AND t1.tracer_conc = '50 nM'
       AND t1.p IS NOT NULL THEN
  t1.p
  WHEN t1.target = 'JH2 TYK2'
       AND t1.target_conc = '0.1 nM'
       AND t1.tracer = 'HY-102055'
       AND t1.tracer_conc = '50 nM'
       AND t1.p IS NULL THEN
  t1.r
  END             ic50_nm_jh2_tyk2,
  CASE
  WHEN t1.target = 'JH2 TYK2'
       AND t1.target_conc = '0.1 nM'
       AND t1.tracer = 'HY-102055'
       AND t1.tracer_conc = '50 nM' THEN
  t2.d
  END             n_ic50_jh2_tyk2,
  CASE
  WHEN t1.target = 'JH2 TYK2'
       AND t1.target_conc = '0.1 nM'
       AND t1.tracer = 'HY-102055'
       AND t1.tracer_conc = '50 nM'
       AND t1.p IS NOT NULL THEN
  2
  WHEN t1.target = 'JH2 TYK2'
       AND t1.target_conc = '0.1 nM'
       AND t1.tracer = 'HY-102055'
       AND t1.tracer_conc = '50 nM'
       AND t1.p IS NULL
       AND t1.r IS NOT NULL
       AND t1.compound_status = '>' THEN
  1
  WHEN t1.target = 'JH2 TYK2'
       AND t1.target_conc = '0.1 nM'
       AND t1.tracer = 'HY-102055'
       AND t1.tracer_conc = '50 nM'
       AND t1.p IS NULL
       AND t1.r IS NOT NULL
       AND t1.compound_status = '<' THEN
  0
  END             cs_ic50_nm_jh2_tyk2,
  CASE
  WHEN t1.target = 'JH2 TYK2'
       AND t1.target_conc = '0.1 nM'
       AND t1.tracer = 'HY-102055'
       AND t1.tracer_conc = '50 nM'
       AND t1.p IS NOT NULL
       AND t1.r IS NOT NULL THEN
  t1.pspan
  WHEN t1.target = 'JH2 TYK2'
       AND t1.target_conc = '0.1 nM'
       AND t1.tracer = 'HY-102055'
       AND t1.tracer_conc = '50 nM'
       AND t1.p IS NOT NULL THEN
  t1.pspan
  WHEN t1.target = 'JH2 TYK2'
       AND t1.target_conc = '0.1 nM'
       AND t1.tracer = 'HY-102055'
       AND t1.tracer_conc = '50 nM'
       AND t1.p IS NULL THEN
  t1.pspan
  END             span_jh2_tyk2,
  CASE
  WHEN t1.target = 'JH2 TYK2'
       AND t1.target_conc = '0.1 nM'
       AND t1.tracer = 'HY-102055'
       AND t1.tracer_conc = '50 nM'
       AND t1.p IS NOT NULL
       AND t1.r IS NOT NULL THEN
  t1.presp_hc
  WHEN t1.target = 'JH2 TYK2'
       AND t1.target_conc = '0.1 nM'
       AND t1.tracer = 'HY-102055'
       AND t1.tracer_conc = '50 nM'
       AND t1.p IS NOT NULL THEN
  t1.presp_hc
  WHEN t1.target = 'JH2 TYK2'
       AND t1.target_conc = '0.1 nM'
       AND t1.tracer = 'HY-102055'
       AND t1.tracer_conc = '50 nM'
       AND t1.p IS NULL THEN
  t1.presp_hc
  END             resp_hc_jh2_tyk2,
  CASE
  WHEN t1.target = 'JH2 TYK2'
       AND t1.target_conc = '0.1 nM'
       AND t1.tracer = 'HY-102055'
       AND t1.tracer_conc = '50 nM'
       AND t1.p IS NOT NULL
       AND t1.r IS NOT NULL THEN
  t1.sd
  WHEN t1.target = 'JH2 TYK2'
       AND t1.target_conc = '0.1 nM'
       AND t1.tracer = 'HY-102055'
       AND t1.tracer_conc = '50 nM'
       AND t1.p IS NOT NULL THEN
  t1.sd
  WHEN t1.target = 'JH2 TYK2'
       AND t1.target_conc = '0.1 nM'
       AND t1.tracer = 'HY-102055'
       AND t1.tracer_conc = '50 nM'
       AND t1.p IS NULL THEN
  t1.sd
  END             sd_ic50_nm_jh2_tyk2,
  CASE
  WHEN t1.target = 'JH2 TYK2'
       AND t1.target_conc = '0.5 nM'
       AND t1.tracer = 'PRT1009458'
       AND t1.tracer_conc = '50 nM'
       AND t1.p IS NOT NULL
       AND t1.r IS NOT NULL THEN
  t1.p
  WHEN t1.target = 'JH2 TYK2'
       AND t1.target_conc = '0.5 nM'
       AND t1.tracer = 'PRT1009458'
       AND t1.tracer_conc = '50 nM'
       AND t1.p IS NOT NULL THEN
  t1.p
  WHEN t1.target = 'JH2 TYK2'
       AND t1.target_conc = '0.5 nM'
       AND t1.tracer = 'PRT1009458'
       AND t1.tracer_conc = '50 nM'
       AND t1.p IS NULL THEN
  t1.r
  END             ic50_nm_jh2_tyk2_prt,
  CASE
  WHEN t1.target = 'JH2 TYK2'
       AND t1.target_conc = '0.5 nM'
       AND t1.tracer = 'PRT1009458'
       AND t1.tracer_conc = '50 nM' THEN
  t2.d
  END             n_ic50_jh2_tyk2_prt,
  CASE
  WHEN t1.target = 'JH2 TYK2'
       AND t1.target_conc = '0.5 nM'
       AND t1.tracer = 'PRT1009458'
       AND t1.tracer_conc = '50 nM'
       AND t1.p IS NOT NULL THEN
  2
  WHEN t1.target = 'JH2 TYK2'
       AND t1.target_conc = '0.5 nM'
       AND t1.tracer = 'PRT1009458'
       AND t1.tracer_conc = '50 nM'
       AND t1.p IS NULL
       AND t1.r IS NOT NULL
       AND t1.compound_status = '>' THEN
  1
  WHEN t1.target = 'JH2 TYK2'
       AND t1.target_conc = '0.5 nM'
       AND t1.tracer = 'PRT1009458'
       AND t1.tracer_conc = '50 nM'
       AND t1.p IS NULL
       AND t1.r IS NOT NULL
       AND t1.compound_status = '<' THEN
  0
  END             cs_ic50_nm_jh2_tyk2_prt,
  CASE
  WHEN t1.target = 'JH2 TYK2'
       AND t1.target_conc = '0.5 nM'
       AND t1.tracer = 'PRT1009458'
       AND t1.tracer_conc = '50 nM'
       AND t1.p IS NOT NULL
       AND t1.r IS NOT NULL THEN
  t1.pspan
  WHEN t1.target = 'JH2 TYK2'
       AND t1.target_conc = '0.5 nM'
       AND t1.tracer = 'PRT1009458'
       AND t1.tracer_conc = '50 nM'
       AND t1.p IS NOT NULL THEN
  t1.pspan
  WHEN t1.target = 'JH2 TYK2'
       AND t1.target_conc = '0.5 nM'
       AND t1.tracer = 'PRT1009458'
       AND t1.tracer_conc = '50 nM'
       AND t1.p IS NULL THEN
  t1.pspan
  END             span_jh2_tyk2_prt,
  CASE
  WHEN t1.target = 'JH2 TYK2'
       AND t1.target_conc = '0.5 nM'
       AND t1.tracer = 'PRT1009458'
       AND t1.tracer_conc = '50 nM'
       AND t1.p IS NOT NULL
       AND t1.r IS NOT NULL THEN
  t1.presp_hc
  WHEN t1.target = 'JH2 TYK2'
       AND t1.target_conc = '0.5 nM'
       AND t1.tracer = 'PRT1009458'
       AND t1.tracer_conc = '50 nM'
       AND t1.p IS NOT NULL THEN
  t1.presp_hc
  WHEN t1.target = 'JH2 TYK2'
       AND t1.target_conc = '0.5 nM'
       AND t1.tracer = 'PRT1009458'
       AND t1.tracer_conc = '50 nM'
       AND t1.p IS NULL THEN
  t1.presp_hc
  END             resp_hc_jh2_tyk2_prt,
  CASE
  WHEN t1.target = 'JH2 TYK2'
       AND t1.target_conc = '0.5 nM'
       AND t1.tracer = 'PRT1009458'
       AND t1.tracer_conc = '50 nM'
       AND t1.p IS NOT NULL
       AND t1.r IS NOT NULL THEN
  t1.sd
  WHEN t1.target = 'JH2 TYK2'
       AND t1.target_conc = '0.5 nM'
       AND t1.tracer = 'PRT1009458'
       AND t1.tracer_conc = '50 nM'
       AND t1.p IS NOT NULL THEN
  t1.sd
  WHEN t1.target = 'JH2 TYK2'
       AND t1.target_conc = '0.5 nM'
       AND t1.tracer = 'PRT1009458'
       AND t1.tracer_conc = '50 nM'
       AND t1.p IS NULL THEN
  t1.sd
  END             sd_ic50_nm_jh2_tyk2_prt,
  CASE
  WHEN t1.target = 'JH2 V617F'
       AND t1.target_conc = '0.1 nM'
       AND t1.tracer = 'HY-102055'
       AND t1.tracer_conc = '50 nM'
       AND t1.p IS NOT NULL
       AND t1.r IS NOT NULL THEN
  t1.p
  WHEN t1.target = 'JH2 V617F'
       AND t1.target_conc = '0.1 nM'
       AND t1.tracer = 'HY-102055'
       AND t1.tracer_conc = '50 nM'
       AND t1.p IS NOT NULL THEN
  t1.p
  WHEN t1.target = 'JH2 V617F'
       AND t1.target_conc = '0.1 nM'
       AND t1.tracer = 'HY-102055'
       AND t1.tracer_conc = '50 nM'
       AND t1.p IS NULL THEN
  t1.r
  END             ic50_nm_jh2_v617f,
  CASE
  WHEN t1.target = 'JH2 V617F'
       AND t1.target_conc = '0.1 nM'
       AND t1.tracer = 'HY-102055'
       AND t1.tracer_conc = '50 nM' THEN
  t2.d
  END             n_ic50_jh2_v617f,
  CASE
  WHEN t1.target = 'JH2 V617F'
       AND t1.target_conc = '0.1 nM'
       AND t1.tracer = 'HY-102055'
       AND t1.tracer_conc = '50 nM'
       AND t1.p IS NOT NULL THEN
  2
  WHEN t1.target = 'JH2 V617F'
       AND t1.target_conc = '0.1 nM'
       AND t1.tracer = 'HY-102055'
       AND t1.tracer_conc = '50 nM'
       AND t1.p IS NULL
       AND t1.r IS NOT NULL
       AND t1.compound_status = '>' THEN
  1
  WHEN t1.target = 'JH2 V617F'
       AND t1.target_conc = '0.1 nM'
       AND t1.tracer = 'HY-102055'
       AND t1.tracer_conc = '50 nM'
       AND t1.p IS NULL
       AND t1.r IS NOT NULL
       AND t1.compound_status = '<' THEN
  0
  END             cs_ic50_nm_jh2_v617f,
  CASE
  WHEN t1.target = 'JH2 V617F'
       AND t1.target_conc = '0.1 nM'
       AND t1.tracer = 'HY-102055'
       AND t1.tracer_conc = '50 nM'
       AND t1.p IS NOT NULL
       AND t1.r IS NOT NULL THEN
  t1.pspan
  WHEN t1.target = 'JH2 V617F'
       AND t1.target_conc = '0.1 nM'
       AND t1.tracer = 'HY-102055'
       AND t1.tracer_conc = '50 nM'
       AND t1.p IS NOT NULL THEN
  t1.pspan
  WHEN t1.target = 'JH2 V617F'
       AND t1.target_conc = '0.1 nM'
       AND t1.tracer = 'HY-102055'
       AND t1.tracer_conc = '50 nM'
       AND t1.p IS NULL THEN
  t1.pspan
  END             span_jh2_v617f,
  CASE
  WHEN t1.target = 'JH2 V617F'
       AND t1.target_conc = '0.1 nM'
       AND t1.tracer = 'HY-102055'
       AND t1.tracer_conc = '50 nM'
       AND t1.p IS NOT NULL
       AND t1.r IS NOT NULL THEN
  t1.presp_hc
  WHEN t1.target = 'JH2 V617F'
       AND t1.target_conc = '0.1 nM'
       AND t1.tracer = 'HY-102055'
       AND t1.tracer_conc = '50 nM'
       AND t1.p IS NOT NULL THEN
  t1.presp_hc
  WHEN t1.target = 'JH2 V617F'
       AND t1.target_conc = '0.1 nM'
       AND t1.tracer = 'HY-102055'
       AND t1.tracer_conc = '50 nM'
       AND t1.p IS NULL THEN
  t1.presp_hc
  END             resp_hc_jh2_v617f,
  CASE
  WHEN t1.target = 'JH2 V617F'
       AND t1.target_conc = '0.1 nM'
       AND t1.tracer = 'HY-102055'
       AND t1.tracer_conc = '50 nM'
       AND t1.p IS NOT NULL
       AND t1.r IS NOT NULL THEN
  t1.sd
  WHEN t1.target = 'JH2 V617F'
       AND t1.target_conc = '0.1 nM'
       AND t1.tracer = 'HY-102055'
       AND t1.tracer_conc = '50 nM'
       AND t1.p IS NOT NULL THEN
  t1.sd
  WHEN t1.target = 'JH2 V617F'
       AND t1.target_conc = '0.1 nM'
       AND t1.tracer = 'HY-102055'
       AND t1.tracer_conc = '50 nM'
       AND t1.p IS NULL THEN
  t1.sd
  END             sd_ic50_nm_jh2_v617f,
  CASE
  WHEN t1.target = 'JH2 V617F'
       AND t1.target_conc = '0.5 nM'
       AND t1.tracer = 'PRT1009458'
       AND t1.tracer_conc = '50 nM'
       AND t1.p IS NOT NULL
       AND t1.r IS NOT NULL THEN
  t1.p
  WHEN t1.target = 'JH2 V617F'
       AND t1.target_conc = '0.5 nM'
       AND t1.tracer = 'PRT1009458'
       AND t1.tracer_conc = '50 nM'
       AND t1.p IS NOT NULL THEN
  t1.p
  WHEN t1.target = 'JH2 V617F'
       AND t1.target_conc = '0.5 nM'
       AND t1.tracer = 'PRT1009458'
       AND t1.tracer_conc = '50 nM'
       AND t1.p IS NULL THEN
  t1.r
  END             ic50_nm_jh2_v617f_prt,
  CASE
  WHEN t1.target = 'JH2 V617F'
       AND t1.target_conc = '0.5 nM'
       AND t1.tracer = 'PRT1009458'
       AND t1.tracer_conc = '50 nM' THEN
  t2.d
  END             n_ic50_jh2_v617f_prt,
  CASE
  WHEN t1.target = 'JH2 V617F'
       AND t1.target_conc = '0.5 nM'
       AND t1.tracer = 'PRT1009458'
       AND t1.tracer_conc = '50 nM'
       AND t1.p IS NOT NULL THEN
  2
  WHEN t1.target = 'JH2 V617F'
       AND t1.target_conc = '0.5 nM'
       AND t1.tracer = 'PRT1009458'
       AND t1.tracer_conc = '50 nM'
       AND t1.p IS NULL
       AND t1.r IS NOT NULL
       AND t1.compound_status = '>' THEN
  1
  WHEN t1.target = 'JH2 V617F'
       AND t1.target_conc = '0.5 nM'
       AND t1.tracer = 'PRT1009458'
       AND t1.tracer_conc = '50 nM'
       AND t1.p IS NULL
       AND t1.r IS NOT NULL
       AND t1.compound_status = '<' THEN
  0
  END             cs_ic50_nm_jh2_v617f_prt,
  CASE
  WHEN t1.target = 'JH2 V617F'
       AND t1.target_conc = '0.5 nM'
       AND t1.tracer = 'PRT1009458'
       AND t1.tracer_conc = '50 nM'
       AND t1.p IS NOT NULL
       AND t1.r IS NOT NULL THEN
  t1.pspan
  WHEN t1.target = 'JH2 V617F'
       AND t1.target_conc = '0.5 nM'
       AND t1.tracer = 'PRT1009458'
       AND t1.tracer_conc = '50 nM'
       AND t1.p IS NOT NULL THEN
  t1.pspan
  WHEN t1.target = 'JH2 V617F'
       AND t1.target_conc = '0.5 nM'
       AND t1.tracer = 'PRT1009458'
       AND t1.tracer_conc = '50 nM'
       AND t1.p IS NULL THEN
  t1.pspan
  END             span_jh2_v617f_prt,
  CASE
  WHEN t1.target = 'JH2 V617F'
       AND t1.target_conc = '0.5 nM'
       AND t1.tracer = 'PRT1009458'
       AND t1.tracer_conc = '50 nM'
       AND t1.p IS NOT NULL
       AND t1.r IS NOT NULL THEN
  t1.presp_hc
  WHEN t1.target = 'JH2 V617F'
       AND t1.target_conc = '0.5 nM'
       AND t1.tracer = 'PRT1009458'
       AND t1.tracer_conc = '50 nM'
       AND t1.p IS NOT NULL THEN
  t1.presp_hc
  WHEN t1.target = 'JH2 V617F'
       AND t1.target_conc = '0.5 nM'
       AND t1.tracer = 'PRT1009458'
       AND t1.tracer_conc = '50 nM'
       AND t1.p IS NULL THEN
  t1.presp_hc
  END             resp_hc_jh2_v617f_prt,
  CASE
  WHEN t1.target = 'JH2 V617F'
       AND t1.target_conc = '0.5 nM'
       AND t1.tracer = 'PRT1009458'
       AND t1.tracer_conc = '50 nM'
       AND t1.p IS NOT NULL
       AND t1.r IS NOT NULL THEN
  t1.sd
  WHEN t1.target = 'JH2 V617F'
       AND t1.target_conc = '0.5 nM'
       AND t1.tracer = 'PRT1009458'
       AND t1.tracer_conc = '50 nM'
       AND t1.p IS NOT NULL THEN
  t1.sd
  WHEN t1.target = 'JH2 V617F'
       AND t1.target_conc = '0.5 nM'
       AND t1.tracer = 'PRT1009458'
       AND t1.tracer_conc = '50 nM'
       AND t1.p IS NULL THEN
  t1.sd
  END             sd_ic50_nm_jh2_v617f_prt,
  CASE
  WHEN t1.target = 'JH2 JAK1'
       AND t1.target_conc = '0.5 nM'
       AND t1.tracer = 'PRT1009458'
       AND t1.tracer_conc = '50 nM'
       AND t1.p IS NOT NULL
       AND t1.r IS NOT NULL THEN
  t1.p
  WHEN t1.target = 'JH2 JAK1'
       AND t1.target_conc = '0.5 nM'
       AND t1.tracer = 'PRT1009458'
       AND t1.tracer_conc = '50 nM'
       AND t1.p IS NOT NULL THEN
  t1.p
  WHEN t1.target = 'JH2 JAK1'
       AND t1.target_conc = '0.5 nM'
       AND t1.tracer = 'PRT1009458'
       AND t1.tracer_conc = '50 nM'
       AND t1.p IS NULL THEN
  t1.r
  END             ic50_nm_jh2_jak1_prt,
  CASE
  WHEN t1.target = 'JH2 JAK1'
       AND t1.target_conc = '0.5 nM'
       AND t1.tracer = 'PRT1009458'
       AND t1.tracer_conc = '50 nM' THEN
  t2.d
  END             n_ic50_jh2_jak1_prt,
  CASE
  WHEN t1.target = 'JH2 JAK1'
       AND t1.target_conc = '0.5 nM'
       AND t1.tracer = 'PRT1009458'
       AND t1.tracer_conc = '50 nM'
       AND t1.p IS NOT NULL THEN
  2
  WHEN t1.target = 'JH2 JAK1'
       AND t1.target_conc = '0.5 nM'
       AND t1.tracer = 'PRT1009458'
       AND t1.tracer_conc = '50 nM'
       AND t1.p IS NULL
       AND t1.r IS NOT NULL
       AND t1.compound_status = '>' THEN
  1
  WHEN t1.target = 'JH2 JAK1'
       AND t1.target_conc = '0.5 nM'
       AND t1.tracer = 'PRT1009458'
       AND t1.tracer_conc = '50 nM'
       AND t1.p IS NULL
       AND t1.r IS NOT NULL
       AND t1.compound_status = '<' THEN
  0
  END             cs_ic50_nm_jh2_jak1_prt,
  CASE
  WHEN t1.target = 'JH2 JAK1'
       AND t1.target_conc = '0.5 nM'
       AND t1.tracer = 'PRT1009458'
       AND t1.tracer_conc = '50 nM'
       AND t1.p IS NOT NULL
       AND t1.r IS NOT NULL THEN
  t1.pspan
  WHEN t1.target = 'JH2 JAK1'
       AND t1.target_conc = '0.5 nM'
       AND t1.tracer = 'PRT1009458'
       AND t1.tracer_conc = '50 nM'
       AND t1.p IS NOT NULL THEN
  t1.pspan
  WHEN t1.target = 'JH2 JAK1'
       AND t1.target_conc = '0.5 nM'
       AND t1.tracer = 'PRT1009458'
       AND t1.tracer_conc = '50 nM'
       AND t1.p IS NULL THEN
  t1.pspan
  END             span_jh2_jak1_prt,
  CASE
  WHEN t1.target = 'JH2 JAK1'
       AND t1.target_conc = '0.5 nM'
       AND t1.tracer = 'PRT1009458'
       AND t1.tracer_conc = '50 nM'
       AND t1.p IS NOT NULL
       AND t1.r IS NOT NULL THEN
  t1.presp_hc
  WHEN t1.target = 'JH2 JAK1'
       AND t1.target_conc = '0.5 nM'
       AND t1.tracer = 'PRT1009458'
       AND t1.tracer_conc = '50 nM'
       AND t1.p IS NOT NULL THEN
  t1.presp_hc
  WHEN t1.target = 'JH2 JAK1'
       AND t1.target_conc = '0.5 nM'
       AND t1.tracer = 'PRT1009458'
       AND t1.tracer_conc = '50 nM'
       AND t1.p IS NULL THEN
  t1.presp_hc
  END             resp_hc_jh2_jak1_prt,
  CASE
  WHEN t1.target = 'JH2 JAK1'
       AND t1.target_conc = '0.5 nM'
       AND t1.tracer = 'PRT1009458'
       AND t1.tracer_conc = '50 nM'
       AND t1.p IS NOT NULL
       AND t1.r IS NOT NULL THEN
  t1.sd
  WHEN t1.target = 'JH2 JAK1'
       AND t1.target_conc = '0.5 nM'
       AND t1.tracer = 'PRT1009458'
       AND t1.tracer_conc = '50 nM'
       AND t1.p IS NOT NULL THEN
  t1.sd
  WHEN t1.target = 'JH2 JAK1'
       AND t1.target_conc = '0.5 nM'
       AND t1.tracer = 'PRT1009458'
       AND t1.tracer_conc = '50 nM'
       AND t1.p IS NULL THEN
  t1.sd
  END             sd_ic50_nm_jh2_jak1_prt,
  CASE
  WHEN t1.target = 'JH2 JAK1'
       AND t1.target_conc = '0.5 nM'
       AND t1.tracer = 'HY-102055'
       AND t1.tracer_conc = '50 nM'
       AND t1.p IS NOT NULL
       AND t1.r IS NOT NULL THEN
  t1.p
  WHEN t1.target = 'JH2 JAK1'
       AND t1.target_conc = '0.5 nM'
       AND t1.tracer = 'HY-102055'
       AND t1.tracer_conc = '50 nM'
       AND t1.p IS NOT NULL THEN
  t1.p
  WHEN t1.target = 'JH2 JAK1'
       AND t1.target_conc = '0.5 nM'
       AND t1.tracer = 'HY-102055'
       AND t1.tracer_conc = '50 nM'
       AND t1.p IS NULL THEN
  t1.r
  END             ic50_nm_jh2_jak1,
  CASE
  WHEN t1.target = 'JH2 JAK1'
       AND t1.target_conc = '0.5 nM'
       AND t1.tracer = 'HY-102055'
       AND t1.tracer_conc = '50 nM' THEN
  t2.d
  END             n_ic50_jh2_jak1,
  CASE
  WHEN t1.target = 'JH2 JAK1'
       AND t1.target_conc = '0.5 nM'
       AND t1.tracer = 'HY-102055'
       AND t1.tracer_conc = '50 nM'
       AND t1.p IS NOT NULL THEN
  2
  WHEN t1.target = 'JH2 JAK1'
       AND t1.target_conc = '0.5 nM'
       AND t1.tracer = 'HY-102055'
       AND t1.tracer_conc = '50 nM'
       AND t1.p IS NULL
       AND t1.r IS NOT NULL
       AND t1.compound_status = '>' THEN
  1
  WHEN t1.target = 'JH2 JAK1'
       AND t1.target_conc = '0.5 nM'
       AND t1.tracer = 'HY-102055'
       AND t1.tracer_conc = '50 nM'
       AND t1.p IS NULL
       AND t1.r IS NOT NULL
       AND t1.compound_status = '<' THEN
  0
  END             cs_ic50_nm_jh2_jak1,
  CASE
  WHEN t1.target = 'JH2 JAK1'
       AND t1.target_conc = '0.5 nM'
       AND t1.tracer = 'HY-102055'
       AND t1.tracer_conc = '50 nM'
       AND t1.p IS NOT NULL
       AND t1.r IS NOT NULL THEN
  t1.pspan
  WHEN t1.target = 'JH2 JAK1'
       AND t1.target_conc = '0.5 nM'
       AND t1.tracer = 'HY-102055'
       AND t1.tracer_conc = '50 nM'
       AND t1.p IS NOT NULL THEN
  t1.pspan
  WHEN t1.target = 'JH2 JAK1'
       AND t1.target_conc = '0.5 nM'
       AND t1.tracer = 'HY-102055'
       AND t1.tracer_conc = '50 nM'
       AND t1.p IS NULL THEN
  t1.pspan
  END             span_jh2_jak1,
  CASE
  WHEN t1.target = 'JH2 JAK1'
       AND t1.target_conc = '0.5 nM'
       AND t1.tracer = 'HY-102055'
       AND t1.tracer_conc = '50 nM'
       AND t1.p IS NOT NULL
       AND t1.r IS NOT NULL THEN
  t1.presp_hc
  WHEN t1.target = 'JH2 JAK1'
       AND t1.target_conc = '0.5 nM'
       AND t1.tracer = 'HY-102055'
       AND t1.tracer_conc = '50 nM'
       AND t1.p IS NOT NULL THEN
  t1.presp_hc
  WHEN t1.target = 'JH2 JAK1'
       AND t1.target_conc = '0.5 nM'
       AND t1.tracer = 'HY-102055'
       AND t1.tracer_conc = '50 nM'
       AND t1.p IS NULL THEN
  t1.presp_hc
  END             resp_hc_jh2_jak1,
  CASE
  WHEN t1.target = 'JH2 JAK1'
       AND t1.target_conc = '0.5 nM'
       AND t1.tracer = 'HY-102055'
       AND t1.tracer_conc = '50 nM'
       AND t1.p IS NOT NULL
       AND t1.r IS NOT NULL THEN
  t1.sd
  WHEN t1.target = 'JH2 JAK1'
       AND t1.target_conc = '0.5 nM'
       AND t1.tracer = 'HY-102055'
       AND t1.tracer_conc = '50 nM'
       AND t1.p IS NOT NULL THEN
  t1.sd
  WHEN t1.target = 'JH2 JAK1'
       AND t1.target_conc = '0.5 nM'
       AND t1.tracer = 'HY-102055'
       AND t1.tracer_conc = '50 nM'
       AND t1.p IS NULL THEN
  t1.sd
  END             sd_ic50_nm_jh2_jak1
FROM
  ds3_userdata.jak2_summary_vw t0
LEFT JOIN (
  SELECT
      formatted_id,
      round(
          power(
              10, AVG(log(
                  10,
                  CASE
                  WHEN ic50_nm > 0 THEN
                      ic50_nm
                  ELSE
                  NULL
                  END
              ))
          ), 4
      )                      AS p,
      NULL                   AS r,
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
      )                      AS pspan,
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
      )                      AS presp_hc,
      STDDEV(ic50_nm)        AS sd,
      STDDEV(span)           AS sdspan,
      STDDEV(response_at_hc) AS sdresp,
      target,
      target_conc,
      tracer,
      tracer_conc,
      compound_status,
      COUNT(formatted_id)    AS c
  FROM
      ds3_userdata.jak2_trfret_registry_summary
  WHERE
      compound_status IS NULL
  GROUP BY
      formatted_id,
      target,
      compound_status,
      target_conc,
      tracer,
      tracer_conc

UNION ALL

SELECT
    formatted_id,
    NULL                   AS p,
    MAX(ic50_nm)           AS r,
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
    )                      AS pspan,
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
    )                      AS presp_hc,
    STDDEV(ic50_nm)        AS sd,
    STDDEV(span)           AS sdspan,
    STDDEV(response_at_hc) AS sdresp,
    target,
    target_conc,
    tracer,
    tracer_conc,
    compound_status,
    COUNT(formatted_id)    AS c
FROM
    ds3_userdata.jak2_trfret_registry_summary
WHERE
    compound_status IS NOT NULL
GROUP BY
    formatted_id,
    target,
    compound_status,
    target_conc,
    tracer,
    tracer_conc
)  t1 ON t0.formatted_id = t1.formatted_id
LEFT JOIN (
  SELECT
      formatted_id,
      target,
      target_conc,
      tracer,
      tracer_conc,
      COUNT(formatted_id) AS d
  FROM
      ds3_userdata.jak2_trfret_registry_summary
  GROUP BY
      formatted_id,
      target,
      target_conc,
      tracer,
      tracer_conc
)  t2 ON t0.formatted_id = t2.formatted_id
      AND t1.target = t2.target
      AND t1.target_conc = t2.target_conc
      AND t1.tracer = t2.tracer
      AND t1.tracer_conc = t2.tracer_conc
