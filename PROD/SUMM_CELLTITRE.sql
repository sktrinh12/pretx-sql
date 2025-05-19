SELECT
    formatted_id,
    min(bt549_ic50) AS bt549_ic50,
    CASE
        WHEN max(bt549_cs) = 2 THEN ''
        WHEN max(bt549_cs) = 1 THEN '>'
        WHEN min(bt549_cs) = 0 THEN '<'
    END bt549_cs,
    max(bt549_abs_ic50) AS bt549_abs_ic50,
    max(bt549_resp_at_hc) AS bt549_resp_at_hc,
    max(bt549_max_resp) AS bt549_max_resp,
    max(bt549_sd_ic50) AS bt549_sd_ic50,
    max(bt549_sd_abs_ic50) AS bt549_sd_abs_ic50,
    max(bt549_sd_resp_at_hc) AS bt549_sd_resp_at_hc,
    max(bt549_sd_max_resp) AS bt549_sd_max_resp,
    max(bt549_hc) AS bt549_hc,
    max(bt549_n) AS bt549_n,
    min(t47d_ic50) AS t47d_ic50,
    CASE
        WHEN max(t47d_cs) = 2 THEN ''
        WHEN max(t47d_cs) = 1 THEN '>'
        WHEN min(t47d_cs) = 0 THEN '<'
    END t47d_cs,
    max(t47d_abs_ic50) AS t47d_abs_ic50,
    max(t47d_resp_at_hc) AS t47d_resp_at_hc,
    max(t47d_max_resp) AS t47d_max_resp,
    max(t47d_sd_ic50) AS t47d_sd_ic50,
    max(t47d_sd_abs_ic50) AS t47d_sd_abs_ic50,
    max(t47d_sd_resp_at_hc) AS t47d_sd_resp_at_hc,
    max(t47d_sd_max_resp) AS t47d_sd_max_resp,
    max(t47d_hc) AS t47d_hc,
    max(t47d_n) AS t47d_n,
    min(skbr3_ic50) AS skbr3_ic50,
    CASE
        WHEN max(skbr3_cs) = 2 THEN ''
        WHEN max(skbr3_cs) = 1 THEN '>'
        WHEN min(skbr3_cs) = 0 THEN '<'
    END skbr3_cs,
    max(skbr3_abs_ic50) AS skbr3_abs_ic50,
    max(skbr3_resp_at_hc) AS skbr3_resp_at_hc,
    max(skbr3_max_resp) AS skbr3_max_resp,
    max(skbr3_sd_ic50) AS skbr3_sd_ic50,
    max(skbr3_sd_abs_ic50) AS skbr3_sd_abs_ic50,
    max(skbr3_sd_resp_at_hc) AS skbr3_sd_resp_at_hc,
    max(skbr3_sd_max_resp) AS skbr3_sd_max_resp,
    max(skbr3_hc) AS skbr3_hc,
    max(skbr3_n) AS skbr3_n,
    min(zr751_ic50) AS zr751_ic50,
    CASE
        WHEN max(zr751_cs) = 2 THEN ''
        WHEN max(zr751_cs) = 1 THEN '>'
        WHEN min(zr751_cs) = 0 THEN '<'
    END zr751_cs,
    max(zr751_abs_ic50) AS zr751_abs_ic50,
    max(zr751_resp_at_hc) AS zr751_resp_at_hc,
    max(zr751_max_resp) AS zr751_max_resp,
    max(zr751_sd_ic50) AS zr751_sd_ic50,
    max(zr751_sd_abs_ic50) AS zr751_sd_abs_ic50,
    max(zr751_sd_resp_at_hc) AS zr751_sd_resp_at_hc,
    max(zr751_sd_max_resp) AS zr751_sd_max_resp,
    max(zr751_hc) AS zr751_hc,
    max(zr751_n) AS zr751_n,
    min(hcc1954_ic50) AS hcc1954_ic50,
    CASE
        WHEN max(hcc1954_cs) = 2 THEN ''
        WHEN max(hcc1954_cs) = 1 THEN '>'
        WHEN min(hcc1954_cs) = 0 THEN '<'
    END hcc1954_cs,
    max(hcc1954_abs_ic50) AS hcc1954_abs_ic50,
    max(hcc1954_resp_at_hc) AS hcc1954_resp_at_hc,
    max(hcc1954_max_resp) AS hcc1954_max_resp,
    max(hcc1954_sd_ic50) AS hcc1954_sd_ic50,
    max(hcc1954_sd_abs_ic50) AS hcc1954_sd_abs_ic50,
    max(hcc1954_sd_resp_at_hc) AS hcc1954_sd_resp_at_hc,
    max(hcc1954_sd_max_resp) AS hcc1954_sd_max_resp,
    max(hcc1954_hc) AS hcc1954_hc,
    max(hcc1954_n) AS hcc1954_n,
    min(mcf10a_p_ic50) AS mcf10a_p_ic50,
    CASE
        WHEN max(mcf10a_p_cs) = 2 THEN ''
        WHEN max(mcf10a_p_cs) = 1 THEN '>'
        WHEN min(mcf10a_p_cs) = 0 THEN '<'
    END mcf10a_p_cs,
    max(mcf10a_p_abs_ic50) AS mcf10a_p_abs_ic50,
    max(mcf10a_p_resp_at_hc) AS mcf10a_p_resp_at_hc,
    max(mcf10a_p_max_resp) AS mcf10a_p_max_resp,
    max(mcf10a_p_sd_ic50) AS mcf10a_p_sd_ic50,
    max(mcf10a_p_sd_abs_ic50) AS mcf10a_p_sd_abs_ic50,
    max(mcf10a_p_sd_resp_at_hc) AS mcf10a_p_sd_resp_at_hc,
    max(mcf10a_p_sd_max_resp) AS mcf10a_p_sd_max_resp,
    max(mcf10a_p_hc) AS mcf10a_p_hc,
    max(mcf10a_p_n) AS mcf10a_p_n,
    min(mcf10a_ph_ic50) AS mcf10a_ph_ic50,
    CASE
        WHEN max(mcf10a_ph_cs) = 2 THEN ''
        WHEN max(mcf10a_ph_cs) = 1 THEN '>'
        WHEN min(mcf10a_ph_cs) = 0 THEN '<'
    END mcf10a_ph_cs,
    max(mcf10a_ph_abs_ic50) AS mcf10a_ph_abs_ic50,
    max(mcf10a_ph_resp_at_hc) AS mcf10a_ph_resp_at_hc,
    max(mcf10a_ph_max_resp) AS mcf10a_ph_max_resp,
    max(mcf10a_ph_sd_ic50) AS mcf10a_ph_sd_ic50,
    max(mcf10a_ph_sd_abs_ic50) AS mcf10a_ph_sd_abs_ic50,
    max(mcf10a_ph_sd_resp_at_hc) AS mcf10a_ph_sd_resp_at_hc,
    max(mcf10a_ph_sd_max_resp) AS mcf10a_ph_sd_max_resp,
    max(mcf10a_ph_hc) AS mcf10a_ph_hc,
    max(mcf10a_ph_n) AS mcf10a_ph_n,
    (min(mcf10a_p_ic50) / min(mcf10a_ph_ic50)) AS selectivity_ratio
  FROM
    (SELECT
       t0.formatted_id AS formatted_id,
       CASE
           WHEN t1.project_name_ro IN (
                                         'PI3Kα',
                                         'PI3Ka-Degrader')
                AND t1.assay_types = 'CellTiter-Glo'
                AND t1.cell_lines = 'BT549'
                AND t1.p1 IS NOT NULL
                AND t1.m1 IS NOT NULL THEN t1.p1*1000
           WHEN t1.project_name_ro IN (
                                         'PI3Kα',
                                         'PI3Ka-Degrader')
                AND t1.assay_types = 'CellTiter-Glo'
                AND t1.cell_lines = 'BT549'
                AND t1.p1 IS NOT NULL THEN t1.p1*1000
           WHEN t1.project_name_ro IN (
                                         'PI3Kα',
                                         'PI3Ka-Degrader')
                AND t1.assay_types = 'CellTiter-Glo'
                AND t1.cell_lines = 'BT549'
                AND t1.p1 IS NULL THEN t1.m1*1000
       END bt549_ic50,
       CASE
           WHEN t1.project_name_ro IN (
                                         'PI3Kα',
                                         'PI3Ka-Degrader')
                AND t1.assay_types = 'CellTiter-Glo'
                AND t1.cell_lines = 'BT549'
                AND t1.p1 IS NOT NULL THEN 2
           WHEN t1.project_name_ro IN (
                                         'PI3Kα',
                                         'PI3Ka-Degrader')
                AND t1.assay_types = 'CellTiter-Glo'
                AND t1.cell_lines = 'BT549'
                AND t1.p1 IS NULL
                AND t1.m1 IS NOT NULL
                AND t1.compound_status='>' THEN 1
           WHEN t1.project_name_ro IN (
                                         'PI3Kα',
                                         'PI3Ka-Degrader')
                AND t1.assay_types = 'CellTiter-Glo'
                AND t1.cell_lines = 'BT549'
                AND t1.p1 IS NULL
                AND t1.m1 IS NOT NULL
                AND t1.compound_status='<' THEN 0
       END bt549_cs,
       CASE
           WHEN t1.project_name_ro IN (
                                         'PI3Kα',
                                         'PI3Ka-Degrader')
                AND t1.assay_types = 'CellTiter-Glo'
                AND t1.cell_lines = 'BT549'
                AND t1.p1 IS NOT NULL
                AND t1.m1 IS NOT NULL THEN t1.p2*1000
           WHEN t1.project_name_ro IN (
                                         'PI3Kα',
                                         'PI3Ka-Degrader')
                AND t1.assay_types = 'CellTiter-Glo'
                AND t1.cell_lines = 'BT549'
                AND t1.p1 IS NOT NULL THEN t1.p2*1000
           WHEN t1.project_name_ro IN (
                                         'PI3Kα',
                                         'PI3Ka-Degrader')
                AND t1.assay_types = 'CellTiter-Glo'
                AND t1.cell_lines = 'BT549'
                AND t1.p1 IS NULL THEN t1.p2*1000
       END bt549_abs_ic50,
       CASE
           WHEN t1.project_name_ro IN (
                                         'PI3Kα',
                                         'PI3Ka-Degrader')
                AND t1.assay_types = 'CellTiter-Glo'
                AND t1.cell_lines = 'BT549'
                AND t1.p1 IS NOT NULL
                AND t1.m1 IS NOT NULL THEN t1.p3
           WHEN t1.project_name_ro IN (
                                         'PI3Kα',
                                         'PI3Ka-Degrader')
                AND t1.assay_types = 'CellTiter-Glo'
                AND t1.cell_lines = 'BT549'
                AND t1.p1 IS NOT NULL THEN t1.p3
           WHEN t1.project_name_ro IN (
                                         'PI3Kα',
                                         'PI3Ka-Degrader')
                AND t1.assay_types = 'CellTiter-Glo'
                AND t1.cell_lines = 'BT549'
                AND t1.p1 IS NULL THEN t1.p3
       END bt549_resp_at_hc,
       CASE
           WHEN t1.project_name_ro IN (
                                         'PI3Kα',
                                         'PI3Ka-Degrader')
                AND t1.assay_types = 'CellTiter-Glo'
                AND t1.cell_lines = 'BT549'
                AND t1.p1 IS NOT NULL
                AND t1.m1 IS NOT NULL THEN t1.p4
           WHEN t1.project_name_ro IN (
                                         'PI3Kα',
                                         'PI3Ka-Degrader')
                AND t1.assay_types = 'CellTiter-Glo'
                AND t1.cell_lines = 'BT549'
                AND t1.p1 IS NOT NULL THEN t1.p4
           WHEN t1.project_name_ro IN (
                                         'PI3Kα',
                                         'PI3Ka-Degrader')
                AND t1.assay_types = 'CellTiter-Glo'
                AND t1.cell_lines = 'BT549'
                AND t1.p1 IS NULL THEN t1.p4
       END bt549_max_resp,
       CASE
           WHEN t1.project_name_ro IN (
                                         'PI3Kα',
                                         'PI3Ka-Degrader')
                AND t1.assay_types = 'CellTiter-Glo'
                AND t1.cell_lines = 'BT549'
                AND t1.p1 IS NOT NULL
                AND t1.m1 IS NOT NULL THEN t1.s1*1000
           WHEN t1.project_name_ro IN (
                                         'PI3Kα',
                                         'PI3Ka-Degrader')
                AND t1.assay_types = 'CellTiter-Glo'
                AND t1.cell_lines = 'BT549'
                AND t1.p1 IS NOT NULL THEN t1.s1*1000
           WHEN t1.project_name_ro IN (
                                         'PI3Kα',
                                         'PI3Ka-Degrader')
                AND t1.assay_types = 'CellTiter-Glo'
                AND t1.cell_lines = 'BT549'
                AND t1.p1 IS NULL THEN t1.s1*1000
       END bt549_sd_ic50,
       CASE
           WHEN t1.project_name_ro IN (
                                         'PI3Kα',
                                         'PI3Ka-Degrader')
                AND t1.assay_types = 'CellTiter-Glo'
                AND t1.cell_lines = 'BT549'
                AND t1.p1 IS NOT NULL
                AND t1.m1 IS NOT NULL THEN t1.s2*1000
           WHEN t1.project_name_ro IN (
                                         'PI3Kα',
                                         'PI3Ka-Degrader')
                AND t1.assay_types = 'CellTiter-Glo'
                AND t1.cell_lines = 'BT549'
                AND t1.p1 IS NOT NULL THEN t1.s2*1000
           WHEN t1.project_name_ro IN (
                                         'PI3Kα',
                                         'PI3Ka-Degrader')
                AND t1.assay_types = 'CellTiter-Glo'
                AND t1.cell_lines = 'BT549'
                AND t1.p1 IS NULL THEN t1.s2*1000
       END bt549_sd_abs_ic50,
       CASE
           WHEN t1.project_name_ro IN (
                                         'PI3Kα',
                                         'PI3Ka-Degrader')
                AND t1.assay_types = 'CellTiter-Glo'
                AND t1.cell_lines = 'BT549'
                AND t1.p1 IS NOT NULL
                AND t1.m1 IS NOT NULL THEN t1.s3
           WHEN t1.project_name_ro IN (
                                         'PI3Kα',
                                         'PI3Ka-Degrader')
                AND t1.assay_types = 'CellTiter-Glo'
                AND t1.cell_lines = 'BT549'
                AND t1.p1 IS NOT NULL THEN t1.s3
           WHEN t1.project_name_ro IN (
                                         'PI3Kα',
                                         'PI3Ka-Degrader')
                AND t1.assay_types = 'CellTiter-Glo'
                AND t1.cell_lines = 'BT549'
                AND t1.p1 IS NULL THEN t1.s3
       END bt549_sd_resp_at_hc,
       CASE
           WHEN t1.project_name_ro IN (
                                         'PI3Kα',
                                         'PI3Ka-Degrader')
                AND t1.assay_types = 'CellTiter-Glo'
                AND t1.cell_lines = 'BT549'
                AND t1.p1 IS NOT NULL
                AND t1.m1 IS NOT NULL THEN t1.s4
           WHEN t1.project_name_ro IN (
                                         'PI3Kα',
                                         'PI3Ka-Degrader')
                AND t1.assay_types = 'CellTiter-Glo'
                AND t1.cell_lines = 'BT549'
                AND t1.p1 IS NOT NULL THEN t1.s4
           WHEN t1.project_name_ro IN (
                                         'PI3Kα',
                                         'PI3Ka-Degrader')
                AND t1.assay_types = 'CellTiter-Glo'
                AND t1.cell_lines = 'BT549'
                AND t1.p1 IS NULL THEN t1.s4
       END bt549_sd_max_resp,
       CASE
           WHEN t1.project_name_ro IN (
                                         'PI3Kα',
                                         'PI3Ka-Degrader')
                AND t1.assay_types = 'CellTiter-Glo'
                AND t1.cell_lines = 'BT549'
                AND t1.p1 IS NOT NULL
                AND t1.m1 IS NOT NULL THEN t1.hc
           WHEN t1.project_name_ro IN (
                                         'PI3Kα',
                                         'PI3Ka-Degrader')
                AND t1.assay_types = 'CellTiter-Glo'
                AND t1.cell_lines = 'BT549'
                AND t1.p1 IS NOT NULL THEN t1.hc
           WHEN t1.project_name_ro IN (
                                         'PI3Kα',
                                         'PI3Ka-Degrader')
                AND t1.assay_types = 'CellTiter-Glo'
                AND t1.cell_lines = 'BT549'
                AND t1.p1 IS NULL THEN t1.hc
       END bt549_hc,
       CASE
           WHEN t1.project_name_ro IN (
                                         'PI3Kα',
                                         'PI3Ka-Degrader')
                AND t1.assay_types = 'CellTiter-Glo'
                AND t1.cell_lines = 'BT549' THEN t2.d
       END bt549_n,
       CASE
           WHEN t1.project_name_ro IN (
                                         'PI3Kα',
                                         'PI3Ka-Degrader')
                AND t1.assay_types = 'CellTiter-Glo'
                AND t1.cell_lines = 'T47D'
                AND t1.p1 IS NOT NULL
                AND t1.m1 IS NOT NULL THEN t1.p1*1000
           WHEN t1.project_name_ro IN (
                                         'PI3Kα',
                                         'PI3Ka-Degrader')
                AND t1.assay_types = 'CellTiter-Glo'
                AND t1.cell_lines = 'T47D'
                AND t1.p1 IS NOT NULL THEN t1.p1*1000
           WHEN t1.project_name_ro IN (
                                         'PI3Kα',
                                         'PI3Ka-Degrader')
                AND t1.assay_types = 'CellTiter-Glo'
                AND t1.cell_lines = 'T47D'
                AND t1.p1 IS NULL THEN t1.m1*1000
       END t47d_ic50,
       CASE
           WHEN t1.project_name_ro IN (
                                         'PI3Kα',
                                         'PI3Ka-Degrader')
                AND t1.assay_types = 'CellTiter-Glo'
                AND t1.cell_lines = 'T47D'
                AND t1.p1 IS NOT NULL THEN 2
           WHEN t1.project_name_ro IN (
                                         'PI3Kα',
                                         'PI3Ka-Degrader')
                AND t1.assay_types = 'CellTiter-Glo'
                AND t1.cell_lines = 'T47D'
                AND t1.p1 IS NULL
                AND t1.m1 IS NOT NULL
                AND t1.compound_status='>' THEN 1
           WHEN t1.project_name_ro IN (
                                         'PI3Kα',
                                         'PI3Ka-Degrader')
                AND t1.assay_types = 'CellTiter-Glo'
                AND t1.cell_lines = 'T47D'
                AND t1.p1 IS NULL
                AND t1.m1 IS NOT NULL
                AND t1.compound_status='<' THEN 0
       END t47d_cs,
       CASE
           WHEN t1.project_name_ro IN (
                                         'PI3Kα',
                                         'PI3Ka-Degrader')
                AND t1.assay_types = 'CellTiter-Glo'
                AND t1.cell_lines = 'T47D'
                AND t1.p1 IS NOT NULL
                AND t1.m1 IS NOT NULL THEN t1.p2*1000
           WHEN t1.project_name_ro IN (
                                         'PI3Kα',
                                         'PI3Ka-Degrader')
                AND t1.assay_types = 'CellTiter-Glo'
                AND t1.cell_lines = 'T47D'
                AND t1.p1 IS NOT NULL THEN t1.p2*1000
           WHEN t1.project_name_ro IN (
                                         'PI3Kα',
                                         'PI3Ka-Degrader')
                AND t1.assay_types = 'CellTiter-Glo'
                AND t1.cell_lines = 'T47D'
                AND t1.p1 IS NULL THEN t1.p2*1000
       END t47d_abs_ic50,
       CASE
           WHEN t1.project_name_ro IN (
                                         'PI3Kα',
                                         'PI3Ka-Degrader')
                AND t1.assay_types = 'CellTiter-Glo'
                AND t1.cell_lines = 'T47D'
                AND t1.p1 IS NOT NULL
                AND t1.m1 IS NOT NULL THEN t1.p3
           WHEN t1.project_name_ro IN (
                                         'PI3Kα',
                                         'PI3Ka-Degrader')
                AND t1.assay_types = 'CellTiter-Glo'
                AND t1.cell_lines = 'T47D'
                AND t1.p1 IS NOT NULL THEN t1.p3
           WHEN t1.project_name_ro IN (
                                         'PI3Kα',
                                         'PI3Ka-Degrader')
                AND t1.assay_types = 'CellTiter-Glo'
                AND t1.cell_lines = 'T47D'
                AND t1.p1 IS NULL THEN t1.p3
       END t47d_resp_at_hc,
       CASE
           WHEN t1.project_name_ro IN (
                                         'PI3Kα',
                                         'PI3Ka-Degrader')
                AND t1.assay_types = 'CellTiter-Glo'
                AND t1.cell_lines = 'T47D'
                AND t1.p1 IS NOT NULL
                AND t1.m1 IS NOT NULL THEN t1.p4
           WHEN t1.project_name_ro IN (
                                         'PI3Kα',
                                         'PI3Ka-Degrader')
                AND t1.assay_types = 'CellTiter-Glo'
                AND t1.cell_lines = 'T47D'
                AND t1.p1 IS NOT NULL THEN t1.p4
           WHEN t1.project_name_ro IN (
                                         'PI3Kα',
                                         'PI3Ka-Degrader')
                AND t1.assay_types = 'CellTiter-Glo'
                AND t1.cell_lines = 'T47D'
                AND t1.p1 IS NULL THEN t1.p4
       END t47d_max_resp,
       CASE
           WHEN t1.project_name_ro IN (
                                         'PI3Kα',
                                         'PI3Ka-Degrader')
                AND t1.assay_types = 'CellTiter-Glo'
                AND t1.cell_lines = 'T47D'
                AND t1.p1 IS NOT NULL
                AND t1.m1 IS NOT NULL THEN t1.s1*1000
           WHEN t1.project_name_ro IN (
                                         'PI3Kα',
                                         'PI3Ka-Degrader')
                AND t1.assay_types = 'CellTiter-Glo'
                AND t1.cell_lines = 'T47D'
                AND t1.p1 IS NOT NULL THEN t1.s1*1000
           WHEN t1.project_name_ro IN (
                                         'PI3Kα',
                                         'PI3Ka-Degrader')
                AND t1.assay_types = 'CellTiter-Glo'
                AND t1.cell_lines = 'T47D'
                AND t1.p1 IS NULL THEN t1.s1*1000
       END t47d_sd_ic50,
       CASE
           WHEN t1.project_name_ro IN (
                                         'PI3Kα',
                                         'PI3Ka-Degrader')
                AND t1.assay_types = 'CellTiter-Glo'
                AND t1.cell_lines = 'T47D'
                AND t1.p1 IS NOT NULL
                AND t1.m1 IS NOT NULL THEN t1.s2*1000
           WHEN t1.project_name_ro IN (
                                         'PI3Kα',
                                         'PI3Ka-Degrader')
                AND t1.assay_types = 'CellTiter-Glo'
                AND t1.cell_lines = 'T47D'
                AND t1.p1 IS NOT NULL THEN t1.s2*1000
           WHEN t1.project_name_ro IN (
                                         'PI3Kα',
                                         'PI3Ka-Degrader')
                AND t1.assay_types = 'CellTiter-Glo'
                AND t1.cell_lines = 'T47D'
                AND t1.p1 IS NULL THEN t1.s2*1000
       END t47d_sd_abs_ic50,
       CASE
           WHEN t1.project_name_ro IN (
                                         'PI3Kα',
                                         'PI3Ka-Degrader')
                AND t1.assay_types = 'CellTiter-Glo'
                AND t1.cell_lines = 'T47D'
                AND t1.p1 IS NOT NULL
                AND t1.m1 IS NOT NULL THEN t1.s3
           WHEN t1.project_name_ro IN (
                                         'PI3Kα',
                                         'PI3Ka-Degrader')
                AND t1.assay_types = 'CellTiter-Glo'
                AND t1.cell_lines = 'T47D'
                AND t1.p1 IS NOT NULL THEN t1.s3
           WHEN t1.project_name_ro IN (
                                         'PI3Kα',
                                         'PI3Ka-Degrader')
                AND t1.assay_types = 'CellTiter-Glo'
                AND t1.cell_lines = 'T47D'
                AND t1.p1 IS NULL THEN t1.s3
       END t47d_sd_resp_at_hc,
       CASE
           WHEN t1.project_name_ro IN (
                                         'PI3Kα',
                                         'PI3Ka-Degrader')
                AND t1.assay_types = 'CellTiter-Glo'
                AND t1.cell_lines = 'T47D'
                AND t1.p1 IS NOT NULL
                AND t1.m1 IS NOT NULL THEN t1.s4
           WHEN t1.project_name_ro IN (
                                         'PI3Kα',
                                         'PI3Ka-Degrader')
                AND t1.assay_types = 'CellTiter-Glo'
                AND t1.cell_lines = 'T47D'
                AND t1.p1 IS NOT NULL THEN t1.s4
           WHEN t1.project_name_ro IN (
                                         'PI3Kα',
                                         'PI3Ka-Degrader')
                AND t1.assay_types = 'CellTiter-Glo'
                AND t1.cell_lines = 'T47D'
                AND t1.p1 IS NULL THEN t1.s4
       END t47d_sd_max_resp,
       CASE
           WHEN t1.project_name_ro IN (
                                         'PI3Kα',
                                         'PI3Ka-Degrader')
                AND t1.assay_types = 'CellTiter-Glo'
                AND t1.cell_lines = 'T47D'
                AND t1.p1 IS NOT NULL
                AND t1.m1 IS NOT NULL THEN t1.hc
           WHEN t1.project_name_ro IN (
                                         'PI3Kα',
                                         'PI3Ka-Degrader')
                AND t1.assay_types = 'CellTiter-Glo'
                AND t1.cell_lines = 'T47D'
                AND t1.p1 IS NOT NULL THEN t1.hc
           WHEN t1.project_name_ro IN (
                                         'PI3Kα',
                                         'PI3Ka-Degrader')
                AND t1.assay_types = 'CellTiter-Glo'
                AND t1.cell_lines = 'T47D'
                AND t1.p1 IS NULL THEN t1.hc
       END t47d_hc,
       CASE
           WHEN t1.project_name_ro IN (
                                         'PI3Kα',
                                         'PI3Ka-Degrader')
                AND t1.assay_types = 'CellTiter-Glo'
                AND t1.cell_lines = 'T47D' THEN t2.d
       END t47d_n,
       CASE
           WHEN t1.project_name_ro IN (
                                         'PI3Kα',
                                         'PI3Ka-Degrader')
                AND t1.assay_types = 'CellTiter-Glo'
                AND t1.cell_lines = 'SKBR3'
                AND t1.p1 IS NOT NULL
                AND t1.m1 IS NOT NULL THEN t1.p1*1000
           WHEN t1.project_name_ro IN (
                                         'PI3Kα',
                                         'PI3Ka-Degrader')
                AND t1.assay_types = 'CellTiter-Glo'
                AND t1.cell_lines = 'SKBR3'
                AND t1.p1 IS NOT NULL THEN t1.p1*1000
           WHEN t1.project_name_ro IN (
                                         'PI3Kα',
                                         'PI3Ka-Degrader')
                AND t1.assay_types = 'CellTiter-Glo'
                AND t1.cell_lines = 'SKBR3'
                AND t1.p1 IS NULL THEN t1.m1*1000
       END skbr3_ic50,
       CASE
           WHEN t1.project_name_ro IN (
                                         'PI3Kα',
                                         'PI3Ka-Degrader')
                AND t1.assay_types = 'CellTiter-Glo'
                AND t1.cell_lines = 'SKBR3'
                AND t1.p1 IS NOT NULL THEN 2
           WHEN t1.project_name_ro IN (
                                         'PI3Kα',
                                         'PI3Ka-Degrader')
                AND t1.assay_types = 'CellTiter-Glo'
                AND t1.cell_lines = 'SKBR3'
                AND t1.p1 IS NULL
                AND t1.m1 IS NOT NULL
                AND t1.compound_status='>' THEN 1
           WHEN t1.project_name_ro IN (
                                         'PI3Kα',
                                         'PI3Ka-Degrader')
                AND t1.assay_types = 'CellTiter-Glo'
                AND t1.cell_lines = 'SKBR3'
                AND t1.p1 IS NULL
                AND t1.m1 IS NOT NULL
                AND t1.compound_status='<' THEN 0
       END skbr3_cs,
       CASE
           WHEN t1.project_name_ro IN (
                                         'PI3Kα',
                                         'PI3Ka-Degrader')
                AND t1.assay_types = 'CellTiter-Glo'
                AND t1.cell_lines = 'SKBR3'
                AND t1.p1 IS NOT NULL
                AND t1.m1 IS NOT NULL THEN t1.p2*1000
           WHEN t1.project_name_ro IN (
                                         'PI3Kα',
                                         'PI3Ka-Degrader')
                AND t1.assay_types = 'CellTiter-Glo'
                AND t1.cell_lines = 'SKBR3'
                AND t1.p1 IS NOT NULL THEN t1.p2*1000
           WHEN t1.project_name_ro IN (
                                         'PI3Kα',
                                         'PI3Ka-Degrader')
                AND t1.assay_types = 'CellTiter-Glo'
                AND t1.cell_lines = 'SKBR3'
                AND t1.p1 IS NULL THEN t1.p2*1000
       END skbr3_abs_ic50,
       CASE
           WHEN t1.project_name_ro IN (
                                         'PI3Kα',
                                         'PI3Ka-Degrader')
                AND t1.assay_types = 'CellTiter-Glo'
                AND t1.cell_lines = 'SKBR3'
                AND t1.p1 IS NOT NULL
                AND t1.m1 IS NOT NULL THEN t1.p3
           WHEN t1.project_name_ro IN (
                                         'PI3Kα',
                                         'PI3Ka-Degrader')
                AND t1.assay_types = 'CellTiter-Glo'
                AND t1.cell_lines = 'SKBR3'
                AND t1.p1 IS NOT NULL THEN t1.p3
           WHEN t1.project_name_ro IN (
                                         'PI3Kα',
                                         'PI3Ka-Degrader')
                AND t1.assay_types = 'CellTiter-Glo'
                AND t1.cell_lines = 'SKBR3'
                AND t1.p1 IS NULL THEN t1.p3
       END skbr3_resp_at_hc,
       CASE
           WHEN t1.project_name_ro IN (
                                         'PI3Kα',
                                         'PI3Ka-Degrader')
                AND t1.assay_types = 'CellTiter-Glo'
                AND t1.cell_lines = 'SKBR3'
                AND t1.p1 IS NOT NULL
                AND t1.m1 IS NOT NULL THEN t1.p4
           WHEN t1.project_name_ro IN (
                                         'PI3Kα',
                                         'PI3Ka-Degrader')
                AND t1.assay_types = 'CellTiter-Glo'
                AND t1.cell_lines = 'SKBR3'
                AND t1.p1 IS NOT NULL THEN t1.p4
           WHEN t1.project_name_ro IN (
                                         'PI3Kα',
                                         'PI3Ka-Degrader')
                AND t1.assay_types = 'CellTiter-Glo'
                AND t1.cell_lines = 'SKBR3'
                AND t1.p1 IS NULL THEN t1.p4
       END skbr3_max_resp,
       CASE
           WHEN t1.project_name_ro IN (
                                         'PI3Kα',
                                         'PI3Ka-Degrader')
                AND t1.assay_types = 'CellTiter-Glo'
                AND t1.cell_lines = 'SKBR3'
                AND t1.p1 IS NOT NULL
                AND t1.m1 IS NOT NULL THEN t1.s1*1000
           WHEN t1.project_name_ro IN (
                                         'PI3Kα',
                                         'PI3Ka-Degrader')
                AND t1.assay_types = 'CellTiter-Glo'
                AND t1.cell_lines = 'SKBR3'
                AND t1.p1 IS NOT NULL THEN t1.s1*1000
           WHEN t1.project_name_ro IN (
                                         'PI3Kα',
                                         'PI3Ka-Degrader')
                AND t1.assay_types = 'CellTiter-Glo'
                AND t1.cell_lines = 'SKBR3'
                AND t1.p1 IS NULL THEN t1.s1*1000
       END skbr3_sd_ic50,
       CASE
           WHEN t1.project_name_ro IN (
                                         'PI3Kα',
                                         'PI3Ka-Degrader')
                AND t1.assay_types = 'CellTiter-Glo'
                AND t1.cell_lines = 'SKBR3'
                AND t1.p1 IS NOT NULL
                AND t1.m1 IS NOT NULL THEN t1.s2*1000
           WHEN t1.project_name_ro IN (
                                         'PI3Kα',
                                         'PI3Ka-Degrader')
                AND t1.assay_types = 'CellTiter-Glo'
                AND t1.cell_lines = 'SKBR3'
                AND t1.p1 IS NOT NULL THEN t1.s2*1000
           WHEN t1.project_name_ro IN (
                                         'PI3Kα',
                                         'PI3Ka-Degrader')
                AND t1.assay_types = 'CellTiter-Glo'
                AND t1.cell_lines = 'SKBR3'
                AND t1.p1 IS NULL THEN t1.s2*1000
       END skbr3_sd_abs_ic50,
       CASE
           WHEN t1.project_name_ro IN (
                                         'PI3Kα',
                                         'PI3Ka-Degrader')
                AND t1.assay_types = 'CellTiter-Glo'
                AND t1.cell_lines = 'SKBR3'
                AND t1.p1 IS NOT NULL
                AND t1.m1 IS NOT NULL THEN t1.s3
           WHEN t1.project_name_ro IN (
                                         'PI3Kα',
                                         'PI3Ka-Degrader')
                AND t1.assay_types = 'CellTiter-Glo'
                AND t1.cell_lines = 'SKBR3'
                AND t1.p1 IS NOT NULL THEN t1.s3
           WHEN t1.project_name_ro IN (
                                         'PI3Kα',
                                         'PI3Ka-Degrader')
                AND t1.assay_types = 'CellTiter-Glo'
                AND t1.cell_lines = 'SKBR3'
                AND t1.p1 IS NULL THEN t1.s3
       END skbr3_sd_resp_at_hc,
       CASE
           WHEN t1.project_name_ro IN (
                                         'PI3Kα',
                                         'PI3Ka-Degrader')
                AND t1.assay_types = 'CellTiter-Glo'
                AND t1.cell_lines = 'SKBR3'
                AND t1.p1 IS NOT NULL
                AND t1.m1 IS NOT NULL THEN t1.s4
           WHEN t1.project_name_ro IN (
                                         'PI3Kα',
                                         'PI3Ka-Degrader')
                AND t1.assay_types = 'CellTiter-Glo'
                AND t1.cell_lines = 'SKBR3'
                AND t1.p1 IS NOT NULL THEN t1.s4
           WHEN t1.project_name_ro IN (
                                         'PI3Kα',
                                         'PI3Ka-Degrader')
                AND t1.assay_types = 'CellTiter-Glo'
                AND t1.cell_lines = 'SKBR3'
                AND t1.p1 IS NULL THEN t1.s4
       END skbr3_sd_max_resp,
       CASE
           WHEN t1.project_name_ro IN (
                                         'PI3Kα',
                                         'PI3Ka-Degrader')
                AND t1.assay_types = 'CellTiter-Glo'
                AND t1.cell_lines = 'SKBR3'
                AND t1.p1 IS NOT NULL
                AND t1.m1 IS NOT NULL THEN t1.hc
           WHEN t1.project_name_ro IN (
                                         'PI3Kα',
                                         'PI3Ka-Degrader')
                AND t1.assay_types = 'CellTiter-Glo'
                AND t1.cell_lines = 'SKBR3'
                AND t1.p1 IS NOT NULL THEN t1.hc
           WHEN t1.project_name_ro IN (
                                         'PI3Kα',
                                         'PI3Ka-Degrader')
                AND t1.assay_types = 'CellTiter-Glo'
                AND t1.cell_lines = 'SKBR3'
                AND t1.p1 IS NULL THEN t1.hc
       END skbr3_hc,
       CASE
           WHEN t1.project_name_ro IN (
                                         'PI3Kα',
                                         'PI3Ka-Degrader')
                AND t1.assay_types = 'CellTiter-Glo'
                AND t1.cell_lines = 'SKBR3' THEN t2.d
       END skbr3_n,
       CASE
           WHEN t1.project_name_ro IN (
                                         'PI3Kα',
                                         'PI3Ka-Degrader')
                AND t1.assay_types = 'CellTiter-Glo'
                AND t1.cell_lines = 'ZR751'
                AND t1.p1 IS NOT NULL
                AND t1.m1 IS NOT NULL THEN t1.p1*1000
           WHEN t1.project_name_ro IN (
                                         'PI3Kα',
                                         'PI3Ka-Degrader')
                AND t1.assay_types = 'CellTiter-Glo'
                AND t1.cell_lines = 'ZR751'
                AND t1.p1 IS NOT NULL THEN t1.p1*1000
           WHEN t1.project_name_ro IN (
                                         'PI3Kα',
                                         'PI3Ka-Degrader')
                AND t1.assay_types = 'CellTiter-Glo'
                AND t1.cell_lines = 'ZR751'
                AND t1.p1 IS NULL THEN t1.m1*1000
       END zr751_ic50,
       CASE
           WHEN t1.project_name_ro IN (
                                         'PI3Kα',
                                         'PI3Ka-Degrader')
                AND t1.assay_types = 'CellTiter-Glo'
                AND t1.cell_lines = 'ZR751'
                AND t1.p1 IS NOT NULL THEN 2
           WHEN t1.project_name_ro IN (
                                         'PI3Kα',
                                         'PI3Ka-Degrader')
                AND t1.assay_types = 'CellTiter-Glo'
                AND t1.cell_lines = 'ZR751'
                AND t1.p1 IS NULL
                AND t1.m1 IS NOT NULL
                AND t1.compound_status='>' THEN 1
           WHEN t1.project_name_ro IN (
                                         'PI3Kα',
                                         'PI3Ka-Degrader')
                AND t1.assay_types = 'CellTiter-Glo'
                AND t1.cell_lines = 'ZR751'
                AND t1.p1 IS NULL
                AND t1.m1 IS NOT NULL
                AND t1.compound_status='<' THEN 0
       END zr751_cs,
       CASE
           WHEN t1.project_name_ro IN (
                                         'PI3Kα',
                                         'PI3Ka-Degrader')
                AND t1.assay_types = 'CellTiter-Glo'
                AND t1.cell_lines = 'ZR751'
                AND t1.p1 IS NOT NULL
                AND t1.m1 IS NOT NULL THEN t1.p2*1000
           WHEN t1.project_name_ro IN (
                                         'PI3Kα',
                                         'PI3Ka-Degrader')
                AND t1.assay_types = 'CellTiter-Glo'
                AND t1.cell_lines = 'ZR751'
                AND t1.p1 IS NOT NULL THEN t1.p2*1000
           WHEN t1.project_name_ro IN (
                                         'PI3Kα',
                                         'PI3Ka-Degrader')
                AND t1.assay_types = 'CellTiter-Glo'
                AND t1.cell_lines = 'ZR751'
                AND t1.p1 IS NULL THEN t1.p2*1000
       END zr751_abs_ic50,
       CASE
           WHEN t1.project_name_ro IN (
                                         'PI3Kα',
                                         'PI3Ka-Degrader')
                AND t1.assay_types = 'CellTiter-Glo'
                AND t1.cell_lines = 'ZR751'
                AND t1.p1 IS NOT NULL
                AND t1.m1 IS NOT NULL THEN t1.p3
           WHEN t1.project_name_ro IN (
                                         'PI3Kα',
                                         'PI3Ka-Degrader')
                AND t1.assay_types = 'CellTiter-Glo'
                AND t1.cell_lines = 'ZR751'
                AND t1.p1 IS NOT NULL THEN t1.p3
           WHEN t1.project_name_ro IN (
                                         'PI3Kα',
                                         'PI3Ka-Degrader')
                AND t1.assay_types = 'CellTiter-Glo'
                AND t1.cell_lines = 'ZR751'
                AND t1.p1 IS NULL THEN t1.p3
       END zr751_resp_at_hc,
       CASE
           WHEN t1.project_name_ro IN (
                                         'PI3Kα',
                                         'PI3Ka-Degrader')
                AND t1.assay_types = 'CellTiter-Glo'
                AND t1.cell_lines = 'ZR751'
                AND t1.p1 IS NOT NULL
                AND t1.m1 IS NOT NULL THEN t1.p4
           WHEN t1.project_name_ro IN (
                                         'PI3Kα',
                                         'PI3Ka-Degrader')
                AND t1.assay_types = 'CellTiter-Glo'
                AND t1.cell_lines = 'ZR751'
                AND t1.p1 IS NOT NULL THEN t1.p4
           WHEN t1.project_name_ro IN (
                                         'PI3Kα',
                                         'PI3Ka-Degrader')
                AND t1.assay_types = 'CellTiter-Glo'
                AND t1.cell_lines = 'ZR751'
                AND t1.p1 IS NULL THEN t1.p4
       END zr751_max_resp,
       CASE
           WHEN t1.project_name_ro IN (
                                         'PI3Kα',
                                         'PI3Ka-Degrader')
                AND t1.assay_types = 'CellTiter-Glo'
                AND t1.cell_lines = 'ZR751'
                AND t1.p1 IS NOT NULL
                AND t1.m1 IS NOT NULL THEN t1.s1*1000
           WHEN t1.project_name_ro IN (
                                         'PI3Kα',
                                         'PI3Ka-Degrader')
                AND t1.assay_types = 'CellTiter-Glo'
                AND t1.cell_lines = 'ZR751'
                AND t1.p1 IS NOT NULL THEN t1.s1*1000
           WHEN t1.project_name_ro IN (
                                         'PI3Kα',
                                         'PI3Ka-Degrader')
                AND t1.assay_types = 'CellTiter-Glo'
                AND t1.cell_lines = 'ZR751'
                AND t1.p1 IS NULL THEN t1.s1*1000
       END zr751_sd_ic50,
       CASE
           WHEN t1.project_name_ro IN (
                                         'PI3Kα',
                                         'PI3Ka-Degrader')
                AND t1.assay_types = 'CellTiter-Glo'
                AND t1.cell_lines = 'ZR751'
                AND t1.p1 IS NOT NULL
                AND t1.m1 IS NOT NULL THEN t1.s2*1000
           WHEN t1.project_name_ro IN (
                                         'PI3Kα',
                                         'PI3Ka-Degrader')
                AND t1.assay_types = 'CellTiter-Glo'
                AND t1.cell_lines = 'ZR751'
                AND t1.p1 IS NOT NULL THEN t1.s2*1000
           WHEN t1.project_name_ro IN (
                                         'PI3Kα',
                                         'PI3Ka-Degrader')
                AND t1.assay_types = 'CellTiter-Glo'
                AND t1.cell_lines = 'ZR751'
                AND t1.p1 IS NULL THEN t1.s2*1000
       END zr751_sd_abs_ic50,
       CASE
           WHEN t1.project_name_ro IN (
                                         'PI3Kα',
                                         'PI3Ka-Degrader')
                AND t1.assay_types = 'CellTiter-Glo'
                AND t1.cell_lines = 'ZR751'
                AND t1.p1 IS NOT NULL
                AND t1.m1 IS NOT NULL THEN t1.s3
           WHEN t1.project_name_ro IN (
                                         'PI3Kα',
                                         'PI3Ka-Degrader')
                AND t1.assay_types = 'CellTiter-Glo'
                AND t1.cell_lines = 'ZR751'
                AND t1.p1 IS NOT NULL THEN t1.s3
           WHEN t1.project_name_ro IN (
                                         'PI3Kα',
                                         'PI3Ka-Degrader')
                AND t1.assay_types = 'CellTiter-Glo'
                AND t1.cell_lines = 'ZR751'
                AND t1.p1 IS NULL THEN t1.s3
       END zr751_sd_resp_at_hc,
       CASE
           WHEN t1.project_name_ro IN (
                                         'PI3Kα',
                                         'PI3Ka-Degrader')
                AND t1.assay_types = 'CellTiter-Glo'
                AND t1.cell_lines = 'ZR751'
                AND t1.p1 IS NOT NULL
                AND t1.m1 IS NOT NULL THEN t1.s4
           WHEN t1.project_name_ro IN (
                                         'PI3Kα',
                                         'PI3Ka-Degrader')
                AND t1.assay_types = 'CellTiter-Glo'
                AND t1.cell_lines = 'ZR751'
                AND t1.p1 IS NOT NULL THEN t1.s4
           WHEN t1.project_name_ro IN (
                                         'PI3Kα',
                                         'PI3Ka-Degrader')
                AND t1.assay_types = 'CellTiter-Glo'
                AND t1.cell_lines = 'ZR751'
                AND t1.p1 IS NULL THEN t1.s4
       END zr751_sd_max_resp,
       CASE
           WHEN t1.project_name_ro IN (
                                         'PI3Kα',
                                         'PI3Ka-Degrader')
                AND t1.assay_types = 'CellTiter-Glo'
                AND t1.cell_lines = 'ZR751'
                AND t1.p1 IS NOT NULL
                AND t1.m1 IS NOT NULL THEN t1.hc
           WHEN t1.project_name_ro IN (
                                         'PI3Kα',
                                         'PI3Ka-Degrader')
                AND t1.assay_types = 'CellTiter-Glo'
                AND t1.cell_lines = 'ZR751'
                AND t1.p1 IS NOT NULL THEN t1.hc
           WHEN t1.project_name_ro IN (
                                         'PI3Kα',
                                         'PI3Ka-Degrader')
                AND t1.assay_types = 'CellTiter-Glo'
                AND t1.cell_lines = 'ZR751'
                AND t1.p1 IS NULL THEN t1.hc
       END zr751_hc,
       CASE
           WHEN t1.project_name_ro IN (
                                         'PI3Kα',
                                         'PI3Ka-Degrader')
                AND t1.assay_types = 'CellTiter-Glo'
                AND t1.cell_lines = 'ZR751' THEN t2.d
       END zr751_n,
       CASE
           WHEN t1.project_name_ro IN (
                                         'PI3Kα',
                                         'PI3Ka-Degrader')
                AND t1.assay_types = 'CellTiter-Glo'
                AND t1.cell_lines = 'HCC1954'
                AND t1.p1 IS NOT NULL
                AND t1.m1 IS NOT NULL THEN t1.p1*1000
           WHEN t1.project_name_ro IN (
                                         'PI3Kα',
                                         'PI3Ka-Degrader')
                AND t1.assay_types = 'CellTiter-Glo'
                AND t1.cell_lines = 'HCC1954'
                AND t1.p1 IS NOT NULL THEN t1.p1*1000
           WHEN t1.project_name_ro IN (
                                         'PI3Kα',
                                         'PI3Ka-Degrader')
                AND t1.assay_types = 'CellTiter-Glo'
                AND t1.cell_lines = 'HCC1954'
                AND t1.p1 IS NULL THEN t1.m1*1000
       END hcc1954_ic50,
       CASE
           WHEN t1.project_name_ro IN (
                                         'PI3Kα',
                                         'PI3Ka-Degrader')
                AND t1.assay_types = 'CellTiter-Glo'
                AND t1.cell_lines = 'HCC1954'
                AND t1.p1 IS NOT NULL THEN 2
           WHEN t1.project_name_ro IN (
                                         'PI3Kα',
                                         'PI3Ka-Degrader')
                AND t1.assay_types = 'CellTiter-Glo'
                AND t1.cell_lines = 'HCC1954'
                AND t1.p1 IS NULL
                AND t1.m1 IS NOT NULL
                AND t1.compound_status='>' THEN 1
           WHEN t1.project_name_ro IN (
                                         'PI3Kα',
                                         'PI3Ka-Degrader')
                AND t1.assay_types = 'CellTiter-Glo'
                AND t1.cell_lines = 'HCC1954'
                AND t1.p1 IS NULL
                AND t1.m1 IS NOT NULL
                AND t1.compound_status='<' THEN 0
       END hcc1954_cs,
       CASE
           WHEN t1.project_name_ro IN (
                                         'PI3Kα',
                                         'PI3Ka-Degrader')
                AND t1.assay_types = 'CellTiter-Glo'
                AND t1.cell_lines = 'HCC1954'
                AND t1.p1 IS NOT NULL
                AND t1.m1 IS NOT NULL THEN t1.p2*1000
           WHEN t1.project_name_ro IN (
                                         'PI3Kα',
                                         'PI3Ka-Degrader')
                AND t1.assay_types = 'CellTiter-Glo'
                AND t1.cell_lines = 'HCC1954'
                AND t1.p1 IS NOT NULL THEN t1.p2*1000
           WHEN t1.project_name_ro IN (
                                         'PI3Kα',
                                         'PI3Ka-Degrader')
                AND t1.assay_types = 'CellTiter-Glo'
                AND t1.cell_lines = 'HCC1954'
                AND t1.p1 IS NULL THEN t1.p2*1000
       END hcc1954_abs_ic50,
       CASE
           WHEN t1.project_name_ro IN (
                                         'PI3Kα',
                                         'PI3Ka-Degrader')
                AND t1.assay_types = 'CellTiter-Glo'
                AND t1.cell_lines = 'HCC1954'
                AND t1.p1 IS NOT NULL
                AND t1.m1 IS NOT NULL THEN t1.p3
           WHEN t1.project_name_ro IN (
                                         'PI3Kα',
                                         'PI3Ka-Degrader')
                AND t1.assay_types = 'CellTiter-Glo'
                AND t1.cell_lines = 'HCC1954'
                AND t1.p1 IS NOT NULL THEN t1.p3
           WHEN t1.project_name_ro IN (
                                         'PI3Kα',
                                         'PI3Ka-Degrader')
                AND t1.assay_types = 'CellTiter-Glo'
                AND t1.cell_lines = 'HCC1954'
                AND t1.p1 IS NULL THEN t1.p3
       END hcc1954_resp_at_hc,
       CASE
           WHEN t1.project_name_ro IN (
                                         'PI3Kα',
                                         'PI3Ka-Degrader')
                AND t1.assay_types = 'CellTiter-Glo'
                AND t1.cell_lines = 'HCC1954'
                AND t1.p1 IS NOT NULL
                AND t1.m1 IS NOT NULL THEN t1.p4
           WHEN t1.project_name_ro IN (
                                         'PI3Kα',
                                         'PI3Ka-Degrader')
                AND t1.assay_types = 'CellTiter-Glo'
                AND t1.cell_lines = 'HCC1954'
                AND t1.p1 IS NOT NULL THEN t1.p4
           WHEN t1.project_name_ro IN (
                                         'PI3Kα',
                                         'PI3Ka-Degrader')
                AND t1.assay_types = 'CellTiter-Glo'
                AND t1.cell_lines = 'HCC1954'
                AND t1.p1 IS NULL THEN t1.p4
       END hcc1954_max_resp,
       CASE
           WHEN t1.project_name_ro IN (
                                         'PI3Kα',
                                         'PI3Ka-Degrader')
                AND t1.assay_types = 'CellTiter-Glo'
                AND t1.cell_lines = 'HCC1954'
                AND t1.p1 IS NOT NULL
                AND t1.m1 IS NOT NULL THEN t1.s1*1000
           WHEN t1.project_name_ro IN (
                                         'PI3Kα',
                                         'PI3Ka-Degrader')
                AND t1.assay_types = 'CellTiter-Glo'
                AND t1.cell_lines = 'HCC1954'
                AND t1.p1 IS NOT NULL THEN t1.s1*1000
           WHEN t1.project_name_ro IN (
                                         'PI3Kα',
                                         'PI3Ka-Degrader')
                AND t1.assay_types = 'CellTiter-Glo'
                AND t1.cell_lines = 'HCC1954'
                AND t1.p1 IS NULL THEN t1.s1*1000
       END hcc1954_sd_ic50,
       CASE
           WHEN t1.project_name_ro IN (
                                         'PI3Kα',
                                         'PI3Ka-Degrader')
                AND t1.assay_types = 'CellTiter-Glo'
                AND t1.cell_lines = 'HCC1954'
                AND t1.p1 IS NOT NULL
                AND t1.m1 IS NOT NULL THEN t1.s2*1000
           WHEN t1.project_name_ro IN (
                                         'PI3Kα',
                                         'PI3Ka-Degrader')
                AND t1.assay_types = 'CellTiter-Glo'
                AND t1.cell_lines = 'HCC1954'
                AND t1.p1 IS NOT NULL THEN t1.s2*1000
           WHEN t1.project_name_ro IN (
                                         'PI3Kα',
                                         'PI3Ka-Degrader')
                AND t1.assay_types = 'CellTiter-Glo'
                AND t1.cell_lines = 'HCC1954'
                AND t1.p1 IS NULL THEN t1.s2*1000
       END hcc1954_sd_abs_ic50,
       CASE
           WHEN t1.project_name_ro IN (
                                         'PI3Kα',
                                         'PI3Ka-Degrader')
                AND t1.assay_types = 'CellTiter-Glo'
                AND t1.cell_lines = 'HCC1954'
                AND t1.p1 IS NOT NULL
                AND t1.m1 IS NOT NULL THEN t1.s3
           WHEN t1.project_name_ro IN (
                                         'PI3Kα',
                                         'PI3Ka-Degrader')
                AND t1.assay_types = 'CellTiter-Glo'
                AND t1.cell_lines = 'HCC1954'
                AND t1.p1 IS NOT NULL THEN t1.s3
           WHEN t1.project_name_ro IN (
                                         'PI3Kα',
                                         'PI3Ka-Degrader')
                AND t1.assay_types = 'CellTiter-Glo'
                AND t1.cell_lines = 'HCC1954'
                AND t1.p1 IS NULL THEN t1.s3
       END hcc1954_sd_resp_at_hc,
       CASE
           WHEN t1.project_name_ro IN (
                                         'PI3Kα',
                                         'PI3Ka-Degrader')
                AND t1.assay_types = 'CellTiter-Glo'
                AND t1.cell_lines = 'HCC1954'
                AND t1.p1 IS NOT NULL
                AND t1.m1 IS NOT NULL THEN t1.s4
           WHEN t1.project_name_ro IN (
                                         'PI3Kα',
                                         'PI3Ka-Degrader')
                AND t1.assay_types = 'CellTiter-Glo'
                AND t1.cell_lines = 'HCC1954'
                AND t1.p1 IS NOT NULL THEN t1.s4
           WHEN t1.project_name_ro IN (
                                         'PI3Kα',
                                         'PI3Ka-Degrader')
                AND t1.assay_types = 'CellTiter-Glo'
                AND t1.cell_lines = 'HCC1954'
                AND t1.p1 IS NULL THEN t1.s4
       END hcc1954_sd_max_resp,
       CASE
           WHEN t1.project_name_ro IN (
                                         'PI3Kα',
                                         'PI3Ka-Degrader')
                AND t1.assay_types = 'CellTiter-Glo'
                AND t1.cell_lines = 'HCC1954'
                AND t1.p1 IS NOT NULL
                AND t1.m1 IS NOT NULL THEN t1.hc
           WHEN t1.project_name_ro IN (
                                         'PI3Kα',
                                         'PI3Ka-Degrader')
                AND t1.assay_types = 'CellTiter-Glo'
                AND t1.cell_lines = 'HCC1954'
                AND t1.p1 IS NOT NULL THEN t1.hc
           WHEN t1.project_name_ro IN (
                                         'PI3Kα',
                                         'PI3Ka-Degrader')
                AND t1.assay_types = 'CellTiter-Glo'
                AND t1.cell_lines = 'HCC1954'
                AND t1.p1 IS NULL THEN t1.hc
       END hcc1954_hc,
       CASE
           WHEN t1.project_name_ro IN (
                                         'PI3Kα',
                                         'PI3Ka-Degrader')
                AND t1.assay_types = 'CellTiter-Glo'
                AND t1.cell_lines = 'HCC1954' THEN t2.d
       END hcc1954_n,
       CASE
           WHEN t1.project_name_ro IN (
                                         'PI3Kα',
                                         'PI3Ka-Degrader')
                AND t1.assay_types = 'CellTiter-Glo'
                AND t1.cell_lines = 'MCF10A - Parental'
                AND t1.p1 IS NOT NULL
                AND t1.m1 IS NOT NULL THEN t1.p1*1000
           WHEN t1.project_name_ro IN (
                                         'PI3Kα',
                                         'PI3Ka-Degrader')
                AND t1.assay_types = 'CellTiter-Glo'
                AND t1.cell_lines = 'MCF10A - Parental'
                AND t1.p1 IS NOT NULL THEN t1.p1*1000
           WHEN t1.project_name_ro IN (
                                         'PI3Kα',
                                         'PI3Ka-Degrader')
                AND t1.assay_types = 'CellTiter-Glo'
                AND t1.cell_lines = 'MCF10A - Parental'
                AND t1.p1 IS NULL THEN t1.m1*1000
       END mcf10a_p_ic50,
       CASE
           WHEN t1.project_name_ro IN (
                                         'PI3Kα',
                                         'PI3Ka-Degrader')
                AND t1.assay_types = 'CellTiter-Glo'
                AND t1.cell_lines = 'MCF10A - Parental'
                AND t1.p1 IS NOT NULL THEN 2
           WHEN t1.project_name_ro IN (
                                         'PI3Kα',
                                         'PI3Ka-Degrader')
                AND t1.assay_types = 'CellTiter-Glo'
                AND t1.cell_lines = 'MCF10A - Parental'
                AND t1.p1 IS NULL
                AND t1.m1 IS NOT NULL
                AND t1.compound_status='>' THEN 1
           WHEN t1.project_name_ro IN (
                                         'PI3Kα',
                                         'PI3Ka-Degrader')
                AND t1.assay_types = 'CellTiter-Glo'
                AND t1.cell_lines = 'MCF10A - Parental'
                AND t1.p1 IS NULL
                AND t1.m1 IS NOT NULL
                AND t1.compound_status='<' THEN 0
       END mcf10a_p_cs,
       CASE
           WHEN t1.project_name_ro IN (
                                         'PI3Kα',
                                         'PI3Ka-Degrader')
                AND t1.assay_types = 'CellTiter-Glo'
                AND t1.cell_lines = 'MCF10A - Parental'
                AND t1.p1 IS NOT NULL
                AND t1.m1 IS NOT NULL THEN t1.p2*1000
           WHEN t1.project_name_ro IN (
                                         'PI3Kα',
                                         'PI3Ka-Degrader')
                AND t1.assay_types = 'CellTiter-Glo'
                AND t1.cell_lines = 'MCF10A - Parental'
                AND t1.p1 IS NOT NULL THEN t1.p2*1000
           WHEN t1.project_name_ro IN (
                                         'PI3Kα',
                                         'PI3Ka-Degrader')
                AND t1.assay_types = 'CellTiter-Glo'
                AND t1.cell_lines = 'MCF10A - Parental'
                AND t1.p1 IS NULL THEN t1.p2*1000
       END mcf10a_p_abs_ic50,
       CASE
           WHEN t1.project_name_ro IN (
                                         'PI3Kα',
                                         'PI3Ka-Degrader')
                AND t1.assay_types = 'CellTiter-Glo'
                AND t1.cell_lines = 'MCF10A - Parental'
                AND t1.p1 IS NOT NULL
                AND t1.m1 IS NOT NULL THEN t1.p3
           WHEN t1.project_name_ro IN (
                                         'PI3Kα',
                                         'PI3Ka-Degrader')
                AND t1.assay_types = 'CellTiter-Glo'
                AND t1.cell_lines = 'MCF10A - Parental'
                AND t1.p1 IS NOT NULL THEN t1.p3
           WHEN t1.project_name_ro IN (
                                         'PI3Kα',
                                         'PI3Ka-Degrader')
                AND t1.assay_types = 'CellTiter-Glo'
                AND t1.cell_lines = 'MCF10A - Parental'
                AND t1.p1 IS NULL THEN t1.p3
       END mcf10a_p_resp_at_hc,
       CASE
           WHEN t1.project_name_ro IN (
                                         'PI3Kα',
                                         'PI3Ka-Degrader')
                AND t1.assay_types = 'CellTiter-Glo'
                AND t1.cell_lines = 'MCF10A - Parental'
                AND t1.p1 IS NOT NULL
                AND t1.m1 IS NOT NULL THEN t1.p4
           WHEN t1.project_name_ro IN (
                                         'PI3Kα',
                                         'PI3Ka-Degrader')
                AND t1.assay_types = 'CellTiter-Glo'
                AND t1.cell_lines = 'MCF10A - Parental'
                AND t1.p1 IS NOT NULL THEN t1.p4
           WHEN t1.project_name_ro IN (
                                         'PI3Kα',
                                         'PI3Ka-Degrader')
                AND t1.assay_types = 'CellTiter-Glo'
                AND t1.cell_lines = 'MCF10A - Parental'
                AND t1.p1 IS NULL THEN t1.p4
       END mcf10a_p_max_resp,
       CASE
           WHEN t1.project_name_ro IN (
                                         'PI3Kα',
                                         'PI3Ka-Degrader')
                AND t1.assay_types = 'CellTiter-Glo'
                AND t1.cell_lines = 'MCF10A - Parental'
                AND t1.p1 IS NOT NULL
                AND t1.m1 IS NOT NULL THEN t1.s1*1000
           WHEN t1.project_name_ro IN (
                                         'PI3Kα',
                                         'PI3Ka-Degrader')
                AND t1.assay_types = 'CellTiter-Glo'
                AND t1.cell_lines = 'MCF10A - Parental'
                AND t1.p1 IS NOT NULL THEN t1.s1*1000
           WHEN t1.project_name_ro IN (
                                         'PI3Kα',
                                         'PI3Ka-Degrader')
                AND t1.assay_types = 'CellTiter-Glo'
                AND t1.cell_lines = 'MCF10A - Parental'
                AND t1.p1 IS NULL THEN t1.s1*1000
       END mcf10a_p_sd_ic50,
       CASE
           WHEN t1.project_name_ro IN (
                                         'PI3Kα',
                                         'PI3Ka-Degrader')
                AND t1.assay_types = 'CellTiter-Glo'
                AND t1.cell_lines = 'MCF10A - Parental'
                AND t1.p1 IS NOT NULL
                AND t1.m1 IS NOT NULL THEN t1.s2*1000
           WHEN t1.project_name_ro IN (
                                         'PI3Kα',
                                         'PI3Ka-Degrader')
                AND t1.assay_types = 'CellTiter-Glo'
                AND t1.cell_lines = 'MCF10A - Parental'
                AND t1.p1 IS NOT NULL THEN t1.s2*1000
           WHEN t1.project_name_ro IN (
                                         'PI3Kα',
                                         'PI3Ka-Degrader')
                AND t1.assay_types = 'CellTiter-Glo'
                AND t1.cell_lines = 'MCF10A - Parental'
                AND t1.p1 IS NULL THEN t1.s2*1000
       END mcf10a_p_sd_abs_ic50,
       CASE
           WHEN t1.project_name_ro IN (
                                         'PI3Kα',
                                         'PI3Ka-Degrader')
                AND t1.assay_types = 'CellTiter-Glo'
                AND t1.cell_lines = 'MCF10A - Parental'
                AND t1.p1 IS NOT NULL
                AND t1.m1 IS NOT NULL THEN t1.s3
           WHEN t1.project_name_ro IN (
                                         'PI3Kα',
                                         'PI3Ka-Degrader')
                AND t1.assay_types = 'CellTiter-Glo'
                AND t1.cell_lines = 'MCF10A - Parental'
                AND t1.p1 IS NOT NULL THEN t1.s3
           WHEN t1.project_name_ro IN (
                                         'PI3Kα',
                                         'PI3Ka-Degrader')
                AND t1.assay_types = 'CellTiter-Glo'
                AND t1.cell_lines = 'MCF10A - Parental'
                AND t1.p1 IS NULL THEN t1.s3
       END mcf10a_p_sd_resp_at_hc,
       CASE
           WHEN t1.project_name_ro IN (
                                         'PI3Kα',
                                         'PI3Ka-Degrader')
                AND t1.assay_types = 'CellTiter-Glo'
                AND t1.cell_lines = 'MCF10A - Parental'
                AND t1.p1 IS NOT NULL
                AND t1.m1 IS NOT NULL THEN t1.s4
           WHEN t1.project_name_ro IN (
                                         'PI3Kα',
                                         'PI3Ka-Degrader')
                AND t1.assay_types = 'CellTiter-Glo'
                AND t1.cell_lines = 'MCF10A - Parental'
                AND t1.p1 IS NOT NULL THEN t1.s4
           WHEN t1.project_name_ro IN (
                                         'PI3Kα',
                                         'PI3Ka-Degrader')
                AND t1.assay_types = 'CellTiter-Glo'
                AND t1.cell_lines = 'MCF10A - Parental'
                AND t1.p1 IS NULL THEN t1.s4
       END mcf10a_p_sd_max_resp,
       CASE
           WHEN t1.project_name_ro IN (
                                         'PI3Kα',
                                         'PI3Ka-Degrader')
                AND t1.assay_types = 'CellTiter-Glo'
                AND t1.cell_lines = 'MCF10A - Parental'
                AND t1.p1 IS NOT NULL
                AND t1.m1 IS NOT NULL THEN t1.hc
           WHEN t1.project_name_ro IN (
                                         'PI3Kα',
                                         'PI3Ka-Degrader')
                AND t1.assay_types = 'CellTiter-Glo'
                AND t1.cell_lines = 'MCF10A - Parental'
                AND t1.p1 IS NOT NULL THEN t1.hc
           WHEN t1.project_name_ro IN (
                                         'PI3Kα',
                                         'PI3Ka-Degrader')
                AND t1.assay_types = 'CellTiter-Glo'
                AND t1.cell_lines = 'MCF10A - Parental'
                AND t1.p1 IS NULL THEN t1.hc
       END mcf10a_p_hc,
       CASE
           WHEN t1.project_name_ro IN (
                                         'PI3Kα',
                                         'PI3Ka-Degrader')
                AND t1.assay_types = 'CellTiter-Glo'
                AND t1.cell_lines = 'MCF10A - Parental' THEN t2.d
       END mcf10a_p_n,
       CASE
           WHEN t1.project_name_ro IN (
                                         'PI3Kα',
                                         'PI3Ka-Degrader')
                AND t1.assay_types = 'CellTiter-Glo'
                AND t1.cell_lines = 'MCF10A - PIK3CA H1047R'
                AND t1.p1 IS NOT NULL
                AND t1.m1 IS NOT NULL THEN t1.p1*1000
           WHEN t1.project_name_ro IN (
                                         'PI3Kα',
                                         'PI3Ka-Degrader')
                AND t1.assay_types = 'CellTiter-Glo'
                AND t1.cell_lines = 'MCF10A - PIK3CA H1047R'
                AND t1.p1 IS NOT NULL THEN t1.p1*1000
           WHEN t1.project_name_ro IN (
                                         'PI3Kα',
                                         'PI3Ka-Degrader')
                AND t1.assay_types = 'CellTiter-Glo'
                AND t1.cell_lines = 'MCF10A - PIK3CA H1047R'
                AND t1.p1 IS NULL THEN t1.m1*1000
       END mcf10a_ph_ic50,
       CASE
           WHEN t1.project_name_ro IN (
                                         'PI3Kα',
                                         'PI3Ka-Degrader')
                AND t1.assay_types = 'CellTiter-Glo'
                AND t1.cell_lines = 'MCF10A - PIK3CA H1047R'
                AND t1.p1 IS NOT NULL THEN 2
           WHEN t1.project_name_ro IN (
                                         'PI3Kα',
                                         'PI3Ka-Degrader')
                AND t1.assay_types = 'CellTiter-Glo'
                AND t1.cell_lines = 'MCF10A - PIK3CA H1047R'
                AND t1.p1 IS NULL
                AND t1.m1 IS NOT NULL
                AND t1.compound_status='>' THEN 1
           WHEN t1.project_name_ro IN (
                                         'PI3Kα',
                                         'PI3Ka-Degrader')
                AND t1.assay_types = 'CellTiter-Glo'
                AND t1.cell_lines = 'MCF10A - PIK3CA H1047R'
                AND t1.p1 IS NULL
                AND t1.m1 IS NOT NULL
                AND t1.compound_status='<' THEN 0
       END mcf10a_ph_cs,
       CASE
           WHEN t1.project_name_ro IN (
                                         'PI3Kα',
                                         'PI3Ka-Degrader')
                AND t1.assay_types = 'CellTiter-Glo'
                AND t1.cell_lines = 'MCF10A - PIK3CA H1047R'
                AND t1.p1 IS NOT NULL
                AND t1.m1 IS NOT NULL THEN t1.p2*1000
           WHEN t1.project_name_ro IN (
                                         'PI3Kα',
                                         'PI3Ka-Degrader')
                AND t1.assay_types = 'CellTiter-Glo'
                AND t1.cell_lines = 'MCF10A - PIK3CA H1047R'
                AND t1.p1 IS NOT NULL THEN t1.p2*1000
           WHEN t1.project_name_ro IN (
                                         'PI3Kα',
                                         'PI3Ka-Degrader')
                AND t1.assay_types = 'CellTiter-Glo'
                AND t1.cell_lines = 'MCF10A - PIK3CA H1047R'
                AND t1.p1 IS NULL THEN t1.p2*1000
       END mcf10a_ph_abs_ic50,
       CASE
           WHEN t1.project_name_ro IN (
                                         'PI3Kα',
                                         'PI3Ka-Degrader')
                AND t1.assay_types = 'CellTiter-Glo'
                AND t1.cell_lines = 'MCF10A - PIK3CA H1047R'
                AND t1.p1 IS NOT NULL
                AND t1.m1 IS NOT NULL THEN t1.p3
           WHEN t1.project_name_ro IN (
                                         'PI3Kα',
                                         'PI3Ka-Degrader')
                AND t1.assay_types = 'CellTiter-Glo'
                AND t1.cell_lines = 'MCF10A - PIK3CA H1047R'
                AND t1.p1 IS NOT NULL THEN t1.p3
           WHEN t1.project_name_ro IN (
                                         'PI3Kα',
                                         'PI3Ka-Degrader')
                AND t1.assay_types = 'CellTiter-Glo'
                AND t1.cell_lines = 'MCF10A - PIK3CA H1047R'
                AND t1.p1 IS NULL THEN t1.p3
       END mcf10a_ph_resp_at_hc,
       CASE
           WHEN t1.project_name_ro IN (
                                         'PI3Kα',
                                         'PI3Ka-Degrader')
                AND t1.assay_types = 'CellTiter-Glo'
                AND t1.cell_lines = 'MCF10A - PIK3CA H1047R'
                AND t1.p1 IS NOT NULL
                AND t1.m1 IS NOT NULL THEN t1.p4
           WHEN t1.project_name_ro IN (
                                         'PI3Kα',
                                         'PI3Ka-Degrader')
                AND t1.assay_types = 'CellTiter-Glo'
                AND t1.cell_lines = 'MCF10A - PIK3CA H1047R'
                AND t1.p1 IS NOT NULL THEN t1.p4
           WHEN t1.project_name_ro IN (
                                         'PI3Kα',
                                         'PI3Ka-Degrader')
                AND t1.assay_types = 'CellTiter-Glo'
                AND t1.cell_lines = 'MCF10A - PIK3CA H1047R'
                AND t1.p1 IS NULL THEN t1.p4
       END mcf10a_ph_max_resp,
       CASE
           WHEN t1.project_name_ro IN (
                                         'PI3Kα',
                                         'PI3Ka-Degrader')
                AND t1.assay_types = 'CellTiter-Glo'
                AND t1.cell_lines = 'MCF10A - PIK3CA H1047R'
                AND t1.p1 IS NOT NULL
                AND t1.m1 IS NOT NULL THEN t1.s1*1000
           WHEN t1.project_name_ro IN (
                                         'PI3Kα',
                                         'PI3Ka-Degrader')
                AND t1.assay_types = 'CellTiter-Glo'
                AND t1.cell_lines = 'MCF10A - PIK3CA H1047R'
                AND t1.p1 IS NOT NULL THEN t1.s1*1000
           WHEN t1.project_name_ro IN (
                                         'PI3Kα',
                                         'PI3Ka-Degrader')
                AND t1.assay_types = 'CellTiter-Glo'
                AND t1.cell_lines = 'MCF10A - PIK3CA H1047R'
                AND t1.p1 IS NULL THEN t1.s1*1000
       END mcf10a_ph_sd_ic50,
       CASE
           WHEN t1.project_name_ro IN (
                                         'PI3Kα',
                                         'PI3Ka-Degrader')
                AND t1.assay_types = 'CellTiter-Glo'
                AND t1.cell_lines = 'MCF10A - PIK3CA H1047R'
                AND t1.p1 IS NOT NULL
                AND t1.m1 IS NOT NULL THEN t1.s2*1000
           WHEN t1.project_name_ro IN (
                                         'PI3Kα',
                                         'PI3Ka-Degrader')
                AND t1.assay_types = 'CellTiter-Glo'
                AND t1.cell_lines = 'MCF10A - PIK3CA H1047R'
                AND t1.p1 IS NOT NULL THEN t1.s2*1000
           WHEN t1.project_name_ro IN (
                                         'PI3Kα',
                                         'PI3Ka-Degrader')
                AND t1.assay_types = 'CellTiter-Glo'
                AND t1.cell_lines = 'MCF10A - PIK3CA H1047R'
                AND t1.p1 IS NULL THEN t1.s2*1000
       END mcf10a_ph_sd_abs_ic50,
       CASE
           WHEN t1.project_name_ro IN (
                                         'PI3Kα',
                                         'PI3Ka-Degrader')
                AND t1.assay_types = 'CellTiter-Glo'
                AND t1.cell_lines = 'MCF10A - PIK3CA H1047R'
                AND t1.p1 IS NOT NULL
                AND t1.m1 IS NOT NULL THEN t1.s3
           WHEN t1.project_name_ro IN (
                                         'PI3Kα',
                                         'PI3Ka-Degrader')
                AND t1.assay_types = 'CellTiter-Glo'
                AND t1.cell_lines = 'MCF10A - PIK3CA H1047R'
                AND t1.p1 IS NOT NULL THEN t1.s3
           WHEN t1.project_name_ro IN (
                                         'PI3Kα',
                                         'PI3Ka-Degrader')
                AND t1.assay_types = 'CellTiter-Glo'
                AND t1.cell_lines = 'MCF10A - PIK3CA H1047R'
                AND t1.p1 IS NULL THEN t1.s3
       END mcf10a_ph_sd_resp_at_hc,
       CASE
           WHEN t1.project_name_ro IN (
                                         'PI3Kα',
                                         'PI3Ka-Degrader')
                AND t1.assay_types = 'CellTiter-Glo'
                AND t1.cell_lines = 'MCF10A - PIK3CA H1047R'
                AND t1.p1 IS NOT NULL
                AND t1.m1 IS NOT NULL THEN t1.s4
           WHEN t1.project_name_ro IN (
                                         'PI3Kα',
                                         'PI3Ka-Degrader')
                AND t1.assay_types = 'CellTiter-Glo'
                AND t1.cell_lines = 'MCF10A - PIK3CA H1047R'
                AND t1.p1 IS NOT NULL THEN t1.s4
           WHEN t1.project_name_ro IN (
                                         'PI3Kα',
                                         'PI3Ka-Degrader')
                AND t1.assay_types = 'CellTiter-Glo'
                AND t1.cell_lines = 'MCF10A - PIK3CA H1047R'
                AND t1.p1 IS NULL THEN t1.s4
       END mcf10a_ph_sd_max_resp,
       CASE
           WHEN t1.project_name_ro IN (
                                         'PI3Kα',
                                         'PI3Ka-Degrader')
                AND t1.assay_types = 'CellTiter-Glo'
                AND t1.cell_lines = 'MCF10A - PIK3CA H1047R'
                AND t1.p1 IS NOT NULL
                AND t1.m1 IS NOT NULL THEN t1.hc
           WHEN t1.project_name_ro IN (
                                         'PI3Kα',
                                         'PI3Ka-Degrader')
                AND t1.assay_types = 'CellTiter-Glo'
                AND t1.cell_lines = 'MCF10A - PIK3CA H1047R'
                AND t1.p1 IS NOT NULL THEN t1.hc
           WHEN t1.project_name_ro IN (
                                         'PI3Kα',
                                         'PI3Ka-Degrader')
                AND t1.assay_types = 'CellTiter-Glo'
                AND t1.cell_lines = 'MCF10A - PIK3CA H1047R'
                AND t1.p1 IS NULL THEN t1.hc
       END mcf10a_ph_hc,
       CASE
           WHEN t1.project_name_ro IN (
                                         'PI3Kα',
                                         'PI3Ka-Degrader')
                AND t1.assay_types = 'CellTiter-Glo'
                AND t1.cell_lines = 'MCF10A - PIK3CA H1047R' THEN t2.d
       END mcf10a_ph_n
     FROM ds3_userdata.pi3kα_reg_data_vw t0
     LEFT JOIN
       (SELECT *
        FROM (
                (SELECT
                   a.formatted_id,
                   round(power(10, avg(log(10, CASE
                                                   WHEN to_number(regexp_replace(a.ic50_rr, '^[<>]=?', '')) > 0 THEN to_number(regexp_replace(a.ic50_rr, '^[<>]=?', ''))
                                                   ELSE NULL
                                               END))), 4) AS p1,
                   NULL AS m1,
                   power(10, avg(log(10, CASE
                                             WHEN a.absolute_ic50 > 0 THEN a.absolute_ic50
                                             ELSE NULL
                                         END))) AS p2,
                   power(10, avg(log(10, CASE
                                             WHEN a.response_at_hc > 0 THEN a.response_at_hc
                                             ELSE NULL
                                         END))) AS p3,
                   power(10, avg(log(10, CASE
                                             WHEN a.max_response > 0 THEN a.max_response
                                             ELSE NULL
                                         END))) AS p4,
                   stddev(to_number(regexp_replace(a.ic50_rr, '^[<>]=?', ''))) AS s1,
                   stddev(a.absolute_ic50) AS s2,
                   stddev(a.response_at_hc) AS s3,
                   stddev(a.max_response) AS s4,
                   a.assay_type AS assay_types,
                   a.cell_line AS cell_lines,
                   max(a.highest_concentration) AS hc,
                   a.project_name_ro,
                   a.compound_status,
                   count(a.formatted_id) AS c
                 FROM ds3_userdata.pi3k_celtitre_registry_summary a
                 WHERE a.compound_status IS NULL
                 GROUP BY
                   a.formatted_id,
                   a.assay_type,
                   a.cell_line,
                   a.project_name_ro,
                   a.highest_concentration,
                   a.compound_status)
              UNION ALL
                (SELECT
                   a.formatted_id,
                   NULL AS p1,
                   max(to_number(regexp_replace(a.ic50_rr, '^[<>]=?', ''))) AS m1,
                   power(10, avg(log(10, CASE
                                             WHEN a.absolute_ic50 > 0 THEN a.absolute_ic50
                                             ELSE NULL
                                         END))) AS p2,
                   power(10, avg(log(10, CASE
                                             WHEN a.response_at_hc > 0 THEN a.response_at_hc
                                             ELSE NULL
                                         END))) AS p3,
                   power(10, avg(log(10, CASE
                                             WHEN a.max_response > 0 THEN a.max_response
                                             ELSE NULL
                                         END))) AS p4,
                   stddev(to_number(regexp_replace(a.ic50_rr, '^[<>]=?', ''))) AS s1,
                   stddev(a.absolute_ic50) AS s2,
                   stddev(a.response_at_hc) AS s3,
                   stddev(a.max_response) AS s4,
                   a.assay_type AS assay_types,
                   a.cell_line AS cell_lines,
                   max(a.highest_concentration) AS hc,
                   a.project_name_ro,
                   a.compound_status,
                   count(a.formatted_id) AS c
                 FROM ds3_userdata.pi3k_celtitre_registry_summary a
                 WHERE a.compound_status IS NOT NULL
                 GROUP BY
                   a.formatted_id,
                   a.assay_type,
                   a.cell_line,
                   a.project_name_ro,
                   a.highest_concentration,
                   a.compound_status))) t1 ON t0.formatted_id = t1.formatted_id
     LEFT JOIN
       (SELECT
          a.formatted_id,
          a.assay_type AS assay_types,
          a.cell_line AS cell_lines,
          a.project_name_ro,
          count(a.formatted_id) AS d
        FROM ds3_userdata.pi3k_celtitre_registry_summary a
        GROUP BY
          a.formatted_id,
          a.assay_type,
          a.cell_line,
          a.project_name_ro) t2 ON t0.formatted_id = t2.formatted_id
     AND t1.cell_lines=t2.cell_lines
     AND t1.assay_types=t2.assay_types)
  GROUP BY formatted_id
