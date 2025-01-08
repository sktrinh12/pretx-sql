SELECT
    formatted_id,
    MIN(ic50_nm_jh1)              AS ic50_nm_jh1,
    MAX(n_ic50_jh1)               AS n_ic50_jh1,
    MAX(span_jh1)                 AS span_jh1,
    MAX(resp_hc_jh1)              AS resp_hc_jh1,
    MAX(sd_ic50_nm_jh1)           AS sd_ic50_nm_jh1,
    CASE
    WHEN MAX(cs_ic50_nm_jh1) = 2 THEN
    ''
    WHEN MAX(cs_ic50_nm_jh1) = 1 THEN
    '>'
    WHEN MIN(cs_ic50_nm_jh1) = 0 THEN
    '<'
    END                           cs_ic50_nm_jh1,
    MIN(ic50_nm_jh1_prt)          AS ic50_nm_jh1_prt,
    MAX(n_ic50_jh1_prt)           AS n_ic50_jh1_prt,
    MAX(span_jh1_prt)             AS span_jh1_prt,
    MAX(resp_hc_jh1_prt)          AS resp_hc_jh1_prt,
    MAX(sd_ic50_nm_jh1_prt)       AS sd_ic50_nm_jh1_prt,
    CASE
    WHEN MAX(cs_ic50_nm_jh1_prt) = 2 THEN
    ''
    WHEN MAX(cs_ic50_nm_jh1_prt) = 1 THEN
    '>'
    WHEN MIN(cs_ic50_nm_jh1_prt) = 0 THEN
    '<'
    END                           cs_ic50_nm_jh1_prt,
    MIN(ic50_nm_jh2_wt)           AS ic50_nm_jh2_wt,
    MAX(n_ic50_jh2_wt)            AS n_ic50_jh2_wt,
    MAX(span_jh2_wt)              AS span_jh2_wt,
    MAX(resp_hc_jh2_wt)           AS resp_hc_jh2_wt,
    MAX(sd_ic50_nm_jh2_wt)        AS sd_ic50_nm_jh2_wt,
    CASE
    WHEN MAX(cs_ic50_nm_jh2_wt) = 2 THEN
    ''
    WHEN MAX(cs_ic50_nm_jh2_wt) = 1 THEN
    '>'
    WHEN MIN(cs_ic50_nm_jh2_wt) = 0 THEN
    '<'
    END                           cs_ic50_nm_jh2_wt,
    MIN(ic50_nm_jh2_wt_prt)       AS ic50_nm_jh2_wt_prt,
    MAX(n_ic50_jh2_wt_prt)        AS n_ic50_jh2_wt_prt,
    MAX(span_jh2_wt_prt)          AS span_jh2_wt_prt,
    MAX(resp_hc_jh2_wt_prt)       AS resp_hc_jh2_wt_prt,
    MAX(sd_ic50_nm_jh2_wt_prt)    AS sd_ic50_nm_jh2_wt_prt,
    ROUND(TO_NUMBER(REGEXP_REPLACE(MIN(ic50_nm_jh2_wt_prt), '[^0-9.]', '')) /7.875, 4) as ki_jh2_wt,
    ROUND((TO_NUMBER(REGEXP_REPLACE(MIN(ic50_nm_jh2_wt_prt), '[^0-9.]', '')) /7.875)  / (TO_NUMBER(REGEXP_REPLACE(MIN(ic50_nm_jh2_v617f_prt), '[^0-9.]', '')) / 10.16), 4) as ki_ratio_jh2_wt_vf,
    CASE
    WHEN MAX(cs_ic50_nm_jh2_wt_prt) = 2 THEN
    ''
    WHEN MAX(cs_ic50_nm_jh2_wt_prt) = 1 THEN
    '>'
    WHEN MIN(cs_ic50_nm_jh2_wt_prt) = 0 THEN
    '<'
    END                           cs_ic50_nm_jh2_wt_prt,
    MIN(ic50_nm_jh2_tyk2)         AS ic50_nm_jh2_tyk2,
    MAX(n_ic50_jh2_tyk2)          AS n_ic50_jh2_tyk2,
    MAX(span_jh2_tyk2)            AS span_jh2_tyk2,
    MAX(resp_hc_jh2_tyk2)         AS resp_hc_jh2_tyk2,
    MAX(sd_ic50_nm_jh2_tyk2)      AS sd_ic50_nm_jh2_tyk2,
    CASE
    WHEN MAX(cs_ic50_nm_jh2_tyk2) = 2 THEN
    ''
    WHEN MAX(cs_ic50_nm_jh2_tyk2) = 1 THEN
    '>'
    WHEN MIN(cs_ic50_nm_jh2_tyk2) = 0 THEN
    '<'
    END                           cs_ic50_nm_jh2_tyk2,
    MIN(ic50_nm_jh2_tyk2_prt)     AS ic50_nm_jh2_tyk2_prt,
    MAX(n_ic50_jh2_tyk2_prt)      AS n_ic50_jh2_tyk2_prt,
    MAX(span_jh2_tyk2_prt)        AS span_jh2_tyk2_prt,
    MAX(resp_hc_jh2_tyk2_prt)     AS resp_hc_jh2_tyk2_prt,
    MAX(sd_ic50_nm_jh2_tyk2_prt)  AS sd_ic50_nm_jh2_tyk2_prt,
    ROUND(TO_NUMBER(REGEXP_REPLACE(MIN(ic50_nm_jh2_tyk2_prt), '[^0-9.]', '')) /32.5, 4) as ki_jh2_tyk2,
    ROUND((TO_NUMBER(REGEXP_REPLACE(MIN(ic50_nm_jh2_tyk2_prt), '[^0-9.]', '')) /32.5)  / (TO_NUMBER(REGEXP_REPLACE(MIN(ic50_nm_jh2_v617f_prt), '[^0-9.]', '')) /10.16), 4) as ki_ratio_tyk2_vf,
    CASE
    WHEN MAX(cs_ic50_nm_jh2_tyk2_prt) = 2 THEN
    ''
    WHEN MAX(cs_ic50_nm_jh2_tyk2_prt) = 1 THEN
    '>'
    WHEN MIN(cs_ic50_nm_jh2_tyk2_prt) = 0 THEN
    '<'
    END                           cs_ic50_nm_jh2_tyk2_prt,
    MIN(ic50_nm_jh2_v617f)        AS ic50_nm_jh2_v617f,
    MAX(n_ic50_jh2_v617f)         AS n_ic50_jh2_v617f,
    MAX(span_jh2_v617f)           AS span_jh2_v617f,
    MAX(resp_hc_jh2_v617f)        AS resp_hc_jh2_v617f,
    MAX(sd_ic50_nm_jh2_v617f)     AS sd_ic50_nm_jh2_v617f,
    CASE
    WHEN MAX(cs_ic50_nm_jh2_v617f) = 2 THEN
    ''
    WHEN MAX(cs_ic50_nm_jh2_v617f) = 1 THEN
    '>'
    WHEN MIN(cs_ic50_nm_jh2_v617f) = 0 THEN
    '<'
    END                           cs_ic50_nm_jh2_v617f,
    MIN(ic50_nm_jh2_v617f_prt)    AS ic50_nm_jh2_v617f_prt,
    MAX(n_ic50_jh2_v617f_prt)     AS n_ic50_jh2_v617f_prt,
    MAX(span_jh2_v617f_prt)       AS span_jh2_v617f_prt,
    MAX(resp_hc_jh2_v617f_prt)    AS resp_hc_jh2_v617f_prt,
    MAX(sd_ic50_nm_jh2_v617f_prt) AS sd_ic50_nm_jh2_v617f_prt,
    ROUND(TO_NUMBER(REGEXP_REPLACE(MIN(ic50_nm_jh2_v617f_prt), '[^0-9.]', '')) /10.16, 4) as ki_jh2_v617f,
    CASE
    WHEN MAX(cs_ic50_nm_jh2_v617f_prt) = 2 THEN
    ''
    WHEN MAX(cs_ic50_nm_jh2_v617f_prt) = 1 THEN
    '>'
    WHEN MIN(cs_ic50_nm_jh2_v617f_prt) = 0 THEN
    '<'
    END                           cs_ic50_nm_jh2_v617f_prt,
    MIN(ic50_nm_hibit)            AS ic50_nm_hibit,
    MAX(n_ic50_hibit)             AS n_ic50_hibit,
    MAX(dmax_hibit)               AS dmax_hibit,
    MAX(span_hibit)               AS span_hibit,
    MAX(sd_ic50_hibit)            AS sd_ic50_hibit,
    CASE
    WHEN MAX(cs_ic50_hibit) = 2 THEN
    ''
    WHEN MAX(cs_ic50_hibit) = 1 THEN
    '>'
    WHEN MIN(cs_ic50_hibit) = 0 THEN
    '<'
    END                           cs_ic50_hibit,
    MIN(ic50_nm_hibitplasma)      AS ic50_nm_hibitplasma,
    MAX(n_ic50_hibitplasma)       AS n_ic50_hibitplasma,
    MAX(dmax_hibitplasma)         AS dmax_hibitplasma,
    MAX(span_hibitplasma)         AS span_hibitplasma,
    MAX(sd_ic50_hibitplasma)      AS sd_ic50_hibitplasma,
    CASE
    WHEN MAX(cs_ic50_hibitplasma) = 2 THEN
    ''
    WHEN MAX(cs_ic50_hibitplasma) = 1 THEN
    '>'
    WHEN MIN(cs_ic50_hibitplasma) = 0 THEN
    '<'
    END                           cs_ic50_hibitplasma,
    MIN(ic50_nm_hibit_k562)       AS ic50_nm_hibit_k562,
    MAX(n_ic50_hibit_k562)        AS n_ic50_hibit_k562,
    MAX(dmax_hibit_k562)          AS dmax_hibit_k562,
    MAX(span_hibit_k562)          AS span_hibit_k562,
    MAX(sd_ic50_hibit_k562)       AS sd_ic50_hibit_k562,
    CASE
    WHEN MAX(cs_ic50_hibit_k562) = 2 THEN
    ''
    WHEN MAX(cs_ic50_hibit_k562) = 1 THEN
    '>'
    WHEN MIN(cs_ic50_hibit_k562) = 0 THEN
    '<'
    END                           cs_ic50_hibit_k562,
    MIN(ic50_nm_ctg_vf)           AS ic50_nm_ctg_vf,
    MAX(n_ic50_ctg_vf)            AS n_ic50_ctg_vf,
    MAX(dmax_ctg_vf)              AS dmax_ctg_vf,
    MAX(span_ctg_vf)              AS span_ctg_vf,
    MAX(sd_ic50_ctg_vf)           AS sd_ic50_ctg_vf,
    CASE
    WHEN MAX(cs_ic50_ctg_vf) = 2 THEN
    ''
    WHEN MAX(cs_ic50_ctg_vf) = 1 THEN
    '>'
    WHEN MIN(cs_ic50_ctg_vf) = 0 THEN
    '<'
    END                           cs_ic50_ctg_vf,
    MIN(ic50_nm_ctg_wt)           AS ic50_nm_ctg_wt,
    MAX(n_ic50_ctg_wt)            AS n_ic50_ctg_wt,
    MAX(dmax_ctg_wt)              AS dmax_ctg_wt,
    MAX(span_ctg_wt)              AS span_ctg_wt,
    MAX(sd_ic50_ctg_wt)           AS sd_ic50_ctg_wt,
    CASE
    WHEN MAX(cs_ic50_ctg_wt) = 2 THEN
    ''
    WHEN MAX(cs_ic50_ctg_wt) = 1 THEN
    '>'
    WHEN MIN(cs_ic50_ctg_wt) = 0 THEN
    '<'
    END                           cs_ic50_ctg_wt,
    MIN(ic50_nm_2hel9217)         AS ic50_nm_2hel9217,
    MIN(hel9217_2_abs_ic50)       AS hel9217_2_abs_ic50,
    MAX(n_ic50_2hel9217)          AS n_ic50_2hel9217,
    MAX(span_2hel9217)            AS span_2hel9217,
    MAX(resp_hc_2hel9217)         AS resp_hc_2hel9217,
    MAX(sd_ic50_2hel9217)         AS sd_ic50_2hel9217,
    MAX(dmax_2hel9217)            AS dmax_2hel9217,
    MAX(hc_2hel9217)              AS hc_2hel9217,
    CASE
    WHEN MAX(cs_ic50_2hel9217) = 2 THEN
    ''
    WHEN MAX(cs_ic50_2hel9217) = 1 THEN
    '>'
    WHEN MIN(cs_ic50_2hel9217) = 0 THEN
    '<'
    END                           cs_ic50_2hel9217,
    MAX(time_4uke1)               AS time_4uke1,
    MAX(time_2uke1)               AS time_2uke1,
    MAX(time_4hel9217)            AS time_4hel9217,
    MAX(time_2hel9217)            AS time_2hel9217,
    MAX(time_4f36p)               AS time_4f36p,
    MAX(time_2f36p)               AS time_2f36p,
    MIN(ic50_nm_4hel9217)         AS ic50_nm_4hel9217,
    MIN(hel9217_4_abs_ic50)       AS hel9217_4_abs_ic50,
    MAX(n_ic50_4hel9217)          AS n_ic50_4hel9217,
    MAX(span_4hel9217)            AS span_4hel9217,
    MAX(resp_hc_4hel9217)         AS resp_hc_4hel9217,
    MAX(sd_ic50_4hel9217)         AS sd_ic50_4hel9217,
    MAX(dmax_4hel9217)            AS dmax_4hel9217,
    MAX(hc_4hel9217)              AS hc_4hel9217,
    CASE
    WHEN MAX(cs_ic50_4hel9217) = 2 THEN
    ''
    WHEN MAX(cs_ic50_4hel9217) = 1 THEN
    '>'
    WHEN MIN(cs_ic50_4hel9217) = 0 THEN
    '<'
    END                           cs_ic50_4hel9217,
    MIN(ic50_nm_2uke1)            AS ic50_nm_2uke1,
    MIN(uke1_2_abs_ic50)          AS uke1_2_abs_ic50,
    MAX(n_ic50_2uke1)             AS n_ic50_2uke1,
    MAX(span_2uke1)               AS span_2uke1,
    MAX(resp_hc_2uke1)            AS resp_hc_2uke1,
    MAX(sd_ic50_2uke1)            AS sd_ic50_2uke1,
    MAX(dmax_2uke1)               AS dmax_2uke1,
    MAX(hc_2uke1)                 AS hc_2uke1,
    CASE
    WHEN MAX(cs_ic50_2uke1) = 2 THEN
    ''
    WHEN MAX(cs_ic50_2uke1) = 1 THEN
    '>'
    WHEN MIN(cs_ic50_2uke1) = 0 THEN
    '<'
    END                           cs_ic50_2uke1,
    MIN(ic50_nm_4uke1)            AS ic50_nm_4uke1,
    MIN(uke1_4_abs_ic50)          AS uke1_4_abs_ic50,
    MAX(n_ic50_4uke1)             AS n_ic50_4uke1,
    MAX(span_4uke1)               AS span_4uke1,
    MAX(resp_hc_4uke1)            AS resp_hc_4uke1,
    MAX(sd_ic50_4uke1)            AS sd_ic50_4uke1,
    MAX(dmax_4uke1)               AS dmax_4uke1,
    MAX(hc_4uke1)                 AS hc_4uke1,
    CASE
    WHEN MAX(cs_ic50_4uke1) = 2 THEN
    ''
    WHEN MAX(cs_ic50_4uke1) = 1 THEN
    '>'
    WHEN MIN(cs_ic50_4uke1) = 0 THEN
    '<'
    END                           cs_ic50_4uke1,
    MIN(ic50_nm_2f36p)            AS ic50_nm_2f36p,
    MIN(f36p_2_abs_ic50)          AS f36p_2_abs_ic50,
    MAX(n_ic50_2f36p)             AS n_ic50_2f36p,
    MAX(span_2f36p)               AS span_2f36p,
    MAX(resp_hc_2f36p)            AS resp_hc_2f36p,
    MAX(sd_ic50_2f36p)            AS sd_ic50_2f36p,
    MAX(dmax_2f36p)               AS dmax_2f36p,
    MAX(hc_2f36p)                 AS hc_2f36p,
    CASE
    WHEN MAX(cs_ic50_2f36p) = 2 THEN
    ''
    WHEN MAX(cs_ic50_2f36p) = 1 THEN
    '>'
    WHEN MIN(cs_ic50_2f36p) = 0 THEN
    '<'
    END                           cs_ic50_2f36p,
    ROUND((MIN(f36p_2_abs_ic50) / MIN(set2_abs_ic50)), 4) AS ratio_abs_ic50_f36p_set2,
    MIN(ic50_nm_4f36p)            AS ic50_nm_4f36p,
    MIN(f36p_4_abs_ic50)          AS f36p_4_abs_ic50,
    MAX(n_ic50_4f36p)             AS n_ic50_4f36p,
    MAX(span_4f36p)               AS span_4f36p,
    MAX(resp_hc_4f36p)            AS resp_hc_4f36p,
    MAX(sd_ic50_4f36p)            AS sd_ic50_4f36p,
    MAX(dmax_4f36p)               AS dmax_4f36p,
    MAX(hc_4f36p)                 AS hc_4f36p,
    CASE
    WHEN MAX(cs_ic50_4f36p) = 2 THEN
    ''
    WHEN MAX(cs_ic50_4f36p) = 1 THEN
    '>'
    WHEN MIN(cs_ic50_4f36p) = 0 THEN
    '<'
    END                           cs_ic50_4f36p,
    MIN(ic50_nm_jurkat)           AS ic50_nm_jurkat,
    MIN(jurkat4_abs_ic50)         AS jurkat4_abs_ic50,
    MAX(n_ic50_jurkat)            AS n_ic50_jurkat,
    MAX(span_jurkat)              AS span_jurkat,
    MAX(resp_hc_jurkat)           AS resp_hc_jurkat,
    MAX(sd_ic50_jurkat)           AS sd_ic50_jurkat,
    MAX(dmax_jurkat)              AS dmax_jurkat,
    MAX(hc_jurkat)                AS hc_jurkat,
    CASE
    WHEN MAX(cs_ic50_jurkat) = 2 THEN
    ''
    WHEN MAX(cs_ic50_jurkat) = 1 THEN
    '>'
    WHEN MIN(cs_ic50_jurkat) = 0 THEN
    '<'
    END                           cs_ic50_jurkat,
    MAX(time_jurkat)              AS time_jurkat,
    MIN(ic50_nm_baf3)             AS ic50_nm_baf3,
    MAX(n_ic50_baf3)              AS n_ic50_baf3,
    MAX(span_baf3)                AS span_baf3,
    MAX(resp_hc_baf3)             AS resp_hc_baf3,
    MAX(sd_ic50_baf3)             AS sd_ic50_baf3,
    MAX(dmax_baf3)                AS dmax_baf3,
    MAX(hc_baf3)                  AS hc_baf3,
    CASE
    WHEN MAX(cs_ic50_baf3) = 2 THEN
    ''
    WHEN MAX(cs_ic50_baf3) = 1 THEN
    '>'
    WHEN MIN(cs_ic50_baf3) = 0 THEN
    '<'
    END                           cs_ic50_baf3,
    MIN(ic50_nm_tpor_wt)          AS ic50_nm_tpor_wt,
    MIN(tpor_abs_ic50)            AS tpor_abs_ic50,
    MAX(n_ic50_tpor_wt)           AS n_ic50_tpor_wt,
    MAX(span_tpor_wt)             AS span_tpor_wt,
    MAX(resp_hc_tpor_wt)          AS resp_hc_tpor_wt,
    MAX(sd_ic50_tpor_wt)          AS sd_ic50_tpor_wt,
    MAX(dmax_tpor_wt)             AS dmax_tpor_wt,
    MAX(hc_tpor_wt)               AS hc_tpor_wt,
    CASE
    WHEN MAX(cs_ic50_tpor_wt) = 2 THEN
    ''
    WHEN MAX(cs_ic50_tpor_wt) = 1 THEN
    '>'
    WHEN MIN(cs_ic50_tpor_wt) = 0 THEN
    '<'
    END                           cs_ic50_tpor_wt,
    MIN(ic50_nm_tpor_vf)          AS ic50_nm_tpor_vf,
    MAX(n_ic50_tpor_vf)           AS n_ic50_tpor_vf,
    MAX(span_tpor_vf)             AS span_tpor_vf,
    MAX(resp_hc_tpor_vf)          AS resp_hc_tpor_vf,
    MAX(sd_ic50_tpor_vf)          AS sd_ic50_tpor_vf,
    MAX(dmax_tpor_vf)             AS dmax_tpor_vf,
    MAX(hc_tpor_vf)               AS hc_tpor_vf,
    CASE
    WHEN MAX(cs_ic50_tpor_vf) = 2 THEN
    ''
    WHEN MAX(cs_ic50_tpor_vf) = 1 THEN
    '>'
    WHEN MIN(cs_ic50_tpor_vf) = 0 THEN
    '<'
    END                           cs_ic50_tpor_vf,
    MIN(ic50_nm_jh2_jak1)         AS ic50_nm_jh2_jak1,
    MAX(n_ic50_jh2_jak1)          AS n_ic50_jh2_jak1,
    MAX(span_jh2_jak1)            AS span_jh2_jak1,
    MAX(resp_hc_jh2_jak1)         AS resp_hc_jh2_jak1,
    MAX(sd_ic50_nm_jh2_jak1)      AS sd_ic50_nm_jh2_jak1,
    CASE
    WHEN MAX(cs_ic50_nm_jh2_jak1) = 2 THEN
    ''
    WHEN MAX(cs_ic50_nm_jh2_jak1) = 1 THEN
    '>'
    WHEN MIN(cs_ic50_nm_jh2_jak1) = 0 THEN
    '<'
    END                           cs_ic50_nm_jh2_jak1,
    MIN(ic50_nm_jh2_jak1_prt)     AS ic50_nm_jh2_jak1_prt,
    MAX(n_ic50_jh2_jak1_prt)      AS n_ic50_jh2_jak1_prt,
    MAX(span_jh2_jak1_prt)        AS span_jh2_jak1_prt,
    MAX(resp_hc_jh2_jak1_prt)     AS resp_hc_jh2_jak1_prt,
    MAX(sd_ic50_nm_jh2_jak1_prt)  AS sd_ic50_nm_jh2_jak1_prt,
    CASE
    WHEN MAX(cs_ic50_nm_jh2_jak1_prt) = 2 THEN
    ''
    WHEN MAX(cs_ic50_nm_jh2_jak1_prt) = 1 THEN
    '>'
    WHEN MIN(cs_ic50_nm_jh2_jak1_prt) = 0 THEN
    '<'
    END                           cs_ic50_nm_jh2_jak1_prt,
    ROUND(TO_NUMBER(REGEXP_REPLACE(MIN(ic50_nm_jh2_jak1_prt), '[^0-9.]', '')) /11.49, 4) as ki_jh2_jak1,
    ROUND((TO_NUMBER(REGEXP_REPLACE(MIN(ic50_nm_jh2_jak1_prt), '[^0-9.]', '')) /11.49)  / (TO_NUMBER(REGEXP_REPLACE(MIN(ic50_nm_jh2_v617f_prt), '[^0-9.]', '')) /10.16), 4) as ki_ratio_jak1_vf,
    MIN(ic50_nm_set2)             AS ic50_nm_set2,
    MIN(set2_abs_ic50)            AS set2_abs_ic50,
    MAX(n_ic50_set2)              AS n_ic50_set2,
    MAX(span_set2)                AS span_set2,
    MAX(resp_hc_set2)             AS resp_hc_set2,
    MAX(sd_ic50_set2)             AS sd_ic50_set2,
    MAX(dmax_set2)                AS dmax_set2,
    MAX(hc_set2)                  AS hc_set2,
    CASE
    WHEN MAX(cs_ic50_set2) = 2 THEN
    ''
    WHEN MAX(cs_ic50_set2) = 1 THEN
    '>'
    WHEN MIN(cs_ic50_set2) = 0 THEN
    '<'
    END                           cs_ic50_set2,
    min(ic50_nm_tf1) AS ic50_nm_tf1,
    min(tf1_abs_ic50) AS tf1_abs_ic50,
    max(n_ic50_tf1) AS n_ic50_tf1,
    max(span_tf1) AS span_tf1,
    max(resp_hc_tf1) AS resp_hc_tf1,
    max(sd_ic50_tf1) AS sd_ic50_tf1,
    max(dmax_tf1) AS dmax_tf1,
    max(hc_tf1) AS hc_tf1,
    CASE
        WHEN max(cs_ic50_tf1) = 2 THEN ''
        WHEN max(cs_ic50_tf1) = 1 THEN '>'
        WHEN min(cs_ic50_tf1) = 0 THEN '<'
    END cs_ic50_tf1,
    ROUND((MIN(tf1_abs_ic50) / MIN(set2_abs_ic50)) , 4) AS ratio_abs_ic50_tf1_set2,
    min(ic50_nm_ctg_tf1) AS ic50_nm_ctg_tf1,
    max(n_ic50_ctg_tf1) AS n_ic50_ctg_tf1,
    max(sd_ic50_ctg_tf1) AS sd_ic50_ctg_tf1,
    max(tf1_ctg_abs_ic50) AS tf1_ctg_abs_ic50,
    max(resp_hc_ctg_tf1) AS resp_hc_ctg_tf1,
    min(ic50_nm_ctg_set2) AS ic50_nm_ctg_set2,
    max(n_ic50_ctg_set2) AS n_ic50_ctg_set2,
    max(sd_ic50_ctg_set2) AS sd_ic50_ctg_set2,
    max(set2_ctg_abs_ic50) AS set2_ctg_abs_ic50,
    max(resp_hc_ctg_set2) AS resp_hc_ctg_set2
FROM
    (
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
            END             sd_ic50_hibit_k562,
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
            END             sd_ic50_nm_jh2_jak1,
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
          END             sd_ic50_ctg_set2
        FROM
            ds3_userdata.jak2_summary_vw t0
            LEFT JOIN (
                SELECT
                    *
                FROM
                    (
                        (
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
                        )
                        UNION ALL
                        (
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
                        )
                    )
            )                            t1 ON t0.formatted_id = t1.formatted_id
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
            )                            t2 ON t0.formatted_id = t2.formatted_id
                    AND t1.target = t2.target
                    AND t1.target_conc = t2.target_conc
                    AND t1.tracer = t2.tracer
                    AND t1.tracer_conc = t2.tracer_conc
            LEFT JOIN (
                SELECT
                    *
                FROM
                    (
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
                                NULL                AS minr,
                                STDDEV(ic50)        AS sd,
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
                        )
                        UNION ALL
                        (
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
                                STDDEV(ic50)        AS sd,
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
                        )
                    )
            )                            t3 ON t0.formatted_id = t3.formatted_id
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
            )                            t4 ON t0.formatted_id = t4.formatted_id
                    AND t3.assay_type = t4.assay_type
                    AND t3.cell_line = t4.cell_line
                    AND t3.target = t4.target
            LEFT JOIN (
                SELECT
                    *
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
                                STDDEV(ic50)        AS sd,
                                STDDEV(span)        AS sdspan,
                                assay_type,
                                cell_line,
                                target,
                                compound_status,
                                time_hr,
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
                                time_hr
                    )
            )                            t11 ON t0.formatted_id = t11.formatted_id
            LEFT JOIN (
                SELECT
                    *
                FROM
                    (
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
                                        WHEN highest_concentration > 0 THEN
                                            highest_concentration
                                        ELSE
                                        NULL
                                        END
                                    ))
                                )                   AS highest_concentration,
                                NULL                AS minr,
                                STDDEV(ic50)        AS sd,
                                STDDEV(span)        AS sdspan,
                                assay_type,
                                cell_line,
                                target,
                                compound_status,
                                COUNT(formatted_id) AS c
                            FROM
                                ds3_userdata.jak2_a_lisa_registry_summary
                            WHERE
                                compound_status IS NULL
                            GROUP BY
                                formatted_id,
                                assay_type,
                                cell_line,
                                target,
                                compound_status
                        )
                        UNION ALL
                        (
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
                                STDDEV(ic50)        AS sd,
                                STDDEV(span)        AS sdspan,
                                assay_type,
                                cell_line,
                                target,
                                compound_status,
                                COUNT(formatted_id) AS c
                            FROM
                                ds3_userdata.jak2_a_lisa_registry_summary
                            WHERE
                                compound_status IS NOT NULL
                            GROUP BY
                                formatted_id,
                                assay_type,
                                cell_line,
                                target,
                                compound_status
                        )
                    )
            )                            t5 ON t0.formatted_id = t5.formatted_id
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
            )                            t6 ON t0.formatted_id = t6.formatted_id
                    AND t5.assay_type = t6.assay_type
                    AND t5.cell_line = t6.cell_line
                    AND t5.target = t6.target
            LEFT JOIN (
                SELECT
                    *
                FROM
                    (
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
                                        WHEN highest_concentration > 0 THEN
                                            highest_concentration
                                        ELSE
                                        NULL
                                        END
                                    ))
                                )                   AS highest_concentration,
                                NULL                AS minr,
                                STDDEV(ic50)        AS sd,
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
                        )
                        UNION ALL
                        (
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
                                STDDEV(ic50)        AS sd,
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
                        )
                    )
            )                            t13 ON t0.formatted_id = t13.formatted_id
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
            )                            t14 ON t0.formatted_id = t14.formatted_id
                     AND t13.assay_type = t14.assay_type
                     AND t13.cell_line = t14.cell_line
                     AND t13.target = t14.target
                     AND t13.time_hr = t14.time_hr
    )
GROUP BY
    formatted_id
