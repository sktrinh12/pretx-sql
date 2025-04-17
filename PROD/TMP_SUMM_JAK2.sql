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
    max(resp_hc_ctg_set2) AS resp_hc_ctg_set2,
    MIN(ic50_nm_ut7)            AS ic50_nm_ut7,
    MIN(ut7_abs_ic50)          AS ut7_abs_ic50,
    MAX(n_ic50_ut7)             AS n_ic50_ut7,
    MAX(resp_hc_ut7)            AS resp_hc_ut7,
    MAX(sd_ic50_ut7)            AS sd_ic50_ut7,
    MAX(cs_ic50_ut7)            AS cs_ic50_ut7,
    MAX(hc_ut7)                 AS hc_ut7,
    ROUND((MIN(ut7_abs_ic50) / MIN(set2_abs_ic50)) , 4) AS ratio_abs_ic50_ut7_set2,
    MIN(ic50_nm_ctg_ut7)            AS ic50_nm_ctg_ut7,
    MIN(ctg_ut7_abs_ic50)          AS ctg_ut7_abs_ic50,
    MAX(n_ic50_ctg_ut7)             AS n_ic50_ctg_ut7,
    MAX(resp_hc_ctg_ut7)            AS resp_hc_ctg_ut7,
    MAX(sd_ic50_ctg_ut7)            AS sd_ic50_ctg_ut7,
    MAX(cs_ic50_ctg_ut7)            AS cs_ic50_ctg_ut7
FROM
    (
      SELECT *
      FROM ds3_userdata.subq_summ_jak2
    )
GROUP BY
    formatted_id
