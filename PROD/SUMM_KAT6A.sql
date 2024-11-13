SELECT
    x01_formatted_id,
    MIN(ic50_zr75_1)             AS ic50_zr75_1,
    MIN(ic50_nm_zr75_1)          AS ic50_nm_zr75_1,
    MAX(n_ic50_zr75_1)           AS n_ic50_zr75_1,
    MAX(span_zr75_1)             AS span_zr75_1,
    MAX(sd_ic50_zr75_1)          AS sd_ic50_zr75_1,
    MAX(sd_ic50_nm_zr75_1)       AS sd_ic50_nm_zr75_1,
    MIN(ic50_hibit)              AS ic50_hibit,
    MIN(ic50_nm_hibit)           AS ic50_nm_hibit,
    MAX(n_ic50_hibit)            AS n_ic50_hibit,
    MAX(dmax_hibit)              AS dmax_hibit,
    MAX(span_hibit)              AS span_hibit,
    MAX(sd_ic50_hibit)           AS sd_ic50_hibit,
    MAX(sd_ic50_nm_hibit)        AS sd_ic50_nm_hibit,
    MIN(ic50_hibith)             AS ic50_hibith,
    MIN(ic50_nm_hibith)          AS ic50_nm_hibith,
    MAX(n_ic50_hibith)           AS n_ic50_hibith,
    MAX(dmax_hibith)             AS dmax_hibith,
    MAX(span_hibith)             AS span_hibith,
    MAX(sd_ic50_hibith)          AS sd_ic50_hibith,
    MAX(sd_ic50_nm_hibith)       AS sd_ic50_nm_hibith,
    MIN(ic50_hibitplasmah)       AS ic50_hibitplasmah,
    MIN(ic50_nm_hibitplasmah)    AS ic50_nm_hibitplasmah,
    MAX(n_ic50_hibitplasmah)     AS n_ic50_hibitplasmah,
    MAX(dmax_hibitplasmah)       AS dmax_hibitplasmah,
    MAX(span_hibitplasmah)       AS span_hibitplasmah,
    MAX(sd_ic50_hibitplasmah)    AS sd_ic50_hibitplasmah,
    MAX(sd_ic50_nm_hibitplasmah) AS sd_ic50_nm_hibitplasmah,
    MIN(ic50_hibitplasma)        AS ic50_hibitplasma,
    MIN(ic50_nm_hibitplasma)     AS ic50_nm_hibitplasma,
    MAX(n_ic50_hibitplasma)      AS n_ic50_hibitplasma,
    MAX(dmax_hibitplasma)        AS dmax_hibitplasma,
    MAX(span_hibitplasma)        AS span_hibitplasma,
    MAX(sd_ic50_hibitplasma)     AS sd_ic50_hibitplasma,
    MAX(sd_ic50_nm_hibitplasma)  AS sd_ic50_nm_hibitplasma,
    MIN(ic50_icw_zr75_1)         AS ic50_icw_zr75_1,
    MIN(ic50_nm_icw_zr75_1)      AS ic50_nm_icw_zr75_1,
    MAX(n_ic50_icw_zr75_1)       AS n_ic50_icw_zr75_1,
    MAX(ic10_icw_zr75_1)         AS ic10_icw_zr75_1,
    MAX(ic10_nm_icw_zr75_1)      AS ic10_nm_icw_zr75_1,
    MAX(span_icw_zr75_1)         AS span_icw_zr75_1,
    MAX(sd_ic50_icw_zr75_1)      AS sd_ic50_icw_zr75_1,
    MAX(sd_ic50_nm_icw_zr75_1)   AS sd_ic50_nm_icw_zr75_1,
    MAX(sd_ic10_icw_zr75_1)      AS sd_ic10_icw_zr75_1,
    MAX(sd_ic10_nm_icw_zr75_1)   AS sd_ic10_nm_icw_zr75_1,
    MIN(ic50_nm_kat6a)           AS ic50_nm_kat6a,
    MAX(n_ic50_kat6a)            AS n_ic50_kat6a,
    MAX(span_kat6a)              AS span_kat6a,
    MAX(percent_inh_kat6a)       AS percent_inh_kat6a,
    MAX(sd_ic50_nm_kat6a)        AS sd_ic50_nm_kat6a,
    MIN(ic50_nm_kat6b)           AS ic50_nm_kat6b,
    MAX(n_ic50_kat6b)            AS n_ic50_kat6b,
    MAX(span_kat6b)              AS span_kat6b,
    MAX(percent_inh_kat6b)       AS percent_inh_kat6b,
    MAX(sd_ic50_nm_kat6b)        AS sd_ic50_nm_kat6b,
    MIN(ic50_nm_kat7)            AS ic50_nm_kat7,
    MAX(n_ic50_kat7)             AS n_ic50_kat7,
    MAX(span_kat7)               AS span_kat7,
    MAX(percent_inh_kat7)        AS percent_inh_kat7,
    MAX(sd_ic50_nm_kat7)         AS sd_ic50_nm_kat7,
    MIN(ic50_nm_kat8)            AS ic50_nm_kat8,
    MAX(n_ic50_kat8)             AS n_ic50_kat8,
    MAX(span_kat8)               AS span_kat8,
    MAX(percent_inh_kat8)        AS percent_inh_kat8,
    MAX(sd_ic50_nm_kat8)         AS sd_ic50_nm_kat8,
    MIN(ic50_nm_kat5)            AS ic50_nm_kat5,
    MAX(n_ic50_kat5)             AS n_ic50_kat5,
    MAX(span_kat5)               AS span_kat5,
    MAX(percent_inh_kat5)        AS percent_inh_kat5,
    MAX(sd_ic50_nm_kat5)         AS sd_ic50_nm_kat5,
    CASE
    WHEN MAX(cs_ic50_zr75_1) = 2 THEN
    ''
    WHEN MAX(cs_ic50_zr75_1) = 1 THEN
    '>'
    WHEN MIN(cs_ic50_zr75_1) = 0 THEN
    '<'
    END                          cs_ic50_zr75_1,
    CASE
    WHEN MAX(cs_ic50_hibit) = 2 THEN
    ''
    WHEN MAX(cs_ic50_hibit) = 1 THEN
    '>'
    WHEN MIN(cs_ic50_hibit) = 0 THEN
    '<'
    END                          cs_ic50_hibit,
    CASE
    WHEN MAX(cs_ic50_hibitplasma) = 2 THEN
    ''
    WHEN MAX(cs_ic50_hibitplasma) = 1 THEN
    '>'
    WHEN MIN(cs_ic50_hibitplasma) = 0 THEN
    '<'
    END                          cs_ic50_hibitplasma,
    CASE
    WHEN MAX(cs_ic50_hibith) = 2 THEN
    ''
    WHEN MAX(cs_ic50_hibith) = 1 THEN
    '>'
    WHEN MIN(cs_ic50_hibith) = 0 THEN
    '<'
    END                          cs_ic50_hibith,
    CASE
    WHEN MAX(cs_ic50_hibitplasmah) = 2 THEN
    ''
    WHEN MAX(cs_ic50_hibitplasmah) = 1 THEN
    '>'
    WHEN MIN(cs_ic50_hibitplasmah) = 0 THEN
    '<'
    END                          cs_ic50_hibitplasmah,
    CASE
    WHEN MAX(cs_ic50_icw_zr75_1) = 2 THEN
    ''
    WHEN MAX(cs_ic50_icw_zr75_1) = 1 THEN
    '>'
    WHEN MIN(cs_ic50_icw_zr75_1) = 0 THEN
    '<'
    END                          cs_ic50_icw_zr75_1,
    CASE
    WHEN MAX(cs_ic50_nm_kat6a) = 2 THEN
    ''
    WHEN MAX(cs_ic50_nm_kat6a) = 1 THEN
    '>'
    WHEN MIN(cs_ic50_nm_kat6a) = 0 THEN
    '<'
    END                          cs_ic50_nm_kat6a,
    CASE
    WHEN MAX(cs_ic50_nm_kat6b) = 2 THEN
    ''
    WHEN MAX(cs_ic50_nm_kat6b) = 1 THEN
    '>'
    WHEN MIN(cs_ic50_nm_kat6b) = 0 THEN
    '<'
    END                          cs_ic50_nm_kat6b,
    CASE
    WHEN MAX(cs_ic50_nm_kat7) = 2 THEN
    ''
    WHEN MAX(cs_ic50_nm_kat7) = 1 THEN
    '>'
    WHEN MIN(cs_ic50_nm_kat7) = 0 THEN
    '<'
    END                          cs_ic50_nm_kat7,
    CASE
    WHEN MAX(cs_ic50_nm_kat8) = 2 THEN
    ''
    WHEN MAX(cs_ic50_nm_kat8) = 1 THEN
    '>'
    WHEN MIN(cs_ic50_nm_kat8) = 0 THEN
    '<'
    END                          cs_ic50_nm_kat8,
    CASE
    WHEN MAX(cs_ic50_nm_kat5) = 2 THEN
    ''
    WHEN MAX(cs_ic50_nm_kat5) = 1 THEN
    '>'
    WHEN MIN(cs_ic50_nm_kat5) = 0 THEN
    '<'
    END                          cs_ic50_nm_kat5,
    MAX(le)                      AS le,
    MAX(lle)                     AS lle
FROM
    (
        SELECT
            t0.formatted_id           AS x01_formatted_id,
            CASE
            WHEN t10.assay_type = 'CellTiter-Glo'
                 AND t10.cell_line = 'ZR75-1'
                 AND t10.p IS NOT NULL
                 AND t10.r IS NOT NULL THEN
            t10.p
            WHEN t10.assay_type = 'CellTiter-Glo'
                 AND t10.cell_line = 'ZR75-1'
                 AND t10.p IS NOT NULL THEN
            t10.p
            WHEN t10.assay_type = 'CellTiter-Glo'
                 AND t10.cell_line = 'ZR75-1'
                 AND t10.p IS NULL THEN
            t10.r
            END                       ic50_zr75_1,
            CASE
            WHEN t10.assay_type = 'CellTiter-Glo'
                 AND t10.cell_line = 'ZR75-1'
                 AND t10.p IS NOT NULL
                 AND t10.r IS NOT NULL THEN
            t10.p * 1000
            WHEN t10.assay_type = 'CellTiter-Glo'
                 AND t10.cell_line = 'ZR75-1'
                 AND t10.p IS NOT NULL THEN
            t10.p * 1000
            WHEN t10.assay_type = 'CellTiter-Glo'
                 AND t10.cell_line = 'ZR75-1'
                 AND t10.p IS NULL THEN
            t10.r * 1000
            END                       ic50_nm_zr75_1,
            CASE
            WHEN t10.assay_type = 'CellTiter-Glo'
                 AND t10.cell_line = 'ZR75-1' THEN
            t13.d
            END                       n_ic50_zr75_1,
            CASE
            WHEN t10.assay_type = 'CellTiter-Glo'
                 AND t10.cell_line = 'ZR75-1'
                 AND t10.p IS NOT NULL THEN
            2
            WHEN t10.assay_type = 'CellTiter-Glo'
                 AND t10.cell_line = 'ZR75-1'
                 AND t10.p IS NULL
                 AND t10.r IS NOT NULL
                 AND t10.compound_status = '>' THEN
            1
            WHEN t10.assay_type = 'CellTiter-Glo'
                 AND t10.cell_line = 'ZR75-1'
                 AND t10.p IS NULL
                 AND t10.r IS NOT NULL
                 AND t10.compound_status = '<' THEN
            0
            END                       cs_ic50_zr75_1,
            CASE
            WHEN t10.assay_type = 'CellTiter-Glo'
                 AND t10.cell_line = 'ZR75-1'
                 AND t10.p IS NOT NULL
                 AND t10.r IS NOT NULL THEN
            t10.pspan
            WHEN t10.assay_type = 'CellTiter-Glo'
                 AND t10.cell_line = 'ZR75-1'
                 AND t10.p IS NOT NULL THEN
            t10.pspan
            WHEN t10.assay_type = 'CellTiter-Glo'
                 AND t10.cell_line = 'ZR75-1'
                 AND t10.p IS NULL THEN
            t10.pspan
            END                       span_zr75_1,
            CASE
            WHEN t10.assay_type = 'CellTiter-Glo'
                 AND t10.cell_line = 'ZR75-1'
                 AND t10.p IS NOT NULL
                 AND t10.r IS NOT NULL THEN
            t10.sd
            WHEN t10.assay_type = 'CellTiter-Glo'
                 AND t10.cell_line = 'ZR75-1'
                 AND t10.p IS NOT NULL THEN
            t10.sd
            WHEN t10.assay_type = 'CellTiter-Glo'
                 AND t10.cell_line = 'ZR75-1'
                 AND t10.p IS NULL THEN
            t10.sd
            END                       sd_ic50_zr75_1,

            CASE
            WHEN t10.assay_type = 'CellTiter-Glo'
                 AND t10.cell_line = 'ZR75-1'
                 AND t10.p IS NOT NULL
                 AND t10.r IS NOT NULL THEN
            t10.presp_hc
            WHEN t10.assay_type = 'CellTiter-Glo'
                 AND t10.cell_line = 'ZR75-1'
                 AND t10.p IS NOT NULL THEN
            t10.presp_hc
            WHEN t10.assay_type = 'CellTiter-Glo'
                 AND t10.cell_line = 'ZR75-1'
                 AND t10.p IS NULL THEN
            t10.presp_hc
            END                       resp_hc_zr75_1,

            CASE
            WHEN t10.assay_type = 'CellTiter-Glo'
                 AND t10.cell_line = 'ZR75-1'
                 AND t10.p IS NOT NULL
                 AND t10.r IS NOT NULL THEN
            t10.sd * 1000
            WHEN t10.assay_type = 'CellTiter-Glo'
                 AND t10.cell_line = 'ZR75-1'
                 AND t10.p IS NOT NULL THEN
            t10.sd * 1000
            WHEN t10.assay_type = 'CellTiter-Glo'
                 AND t10.cell_line = 'ZR75-1'
                 AND t10.p IS NULL THEN
            t10.sd * 1000
            END                       sd_ic50_nm_zr75_1,
            CASE
            WHEN t10.assay_type = 'HiBit'
                 AND t10.cell_line = 'Hela-HiBit-KAT6A'
                 AND t10.p IS NOT NULL
                 AND t10.r IS NOT NULL THEN
            t10.p
            WHEN t10.assay_type = 'HiBit'
                 AND t10.cell_line = 'Hela-HiBit-KAT6A'
                 AND t10.p IS NOT NULL THEN
            t10.p
            WHEN t10.assay_type = 'HiBit'
                 AND t10.cell_line = 'Hela-HiBit-KAT6A'
                 AND t10.p IS NULL THEN
            t10.r
            END                       ic50_hibit,
            CASE
            WHEN t10.assay_type = 'HiBit'
                 AND t10.cell_line = 'Hela-HiBit-KAT6A'
                 AND t10.p IS NOT NULL
                 AND t10.r IS NOT NULL THEN
            t10.p * 1000
            WHEN t10.assay_type = 'HiBit'
                 AND t10.cell_line = 'Hela-HiBit-KAT6A'
                 AND t10.p IS NOT NULL THEN
            t10.p * 1000
            WHEN t10.assay_type = 'HiBit'
                 AND t10.cell_line = 'Hela-HiBit-KAT6A'
                 AND t10.p IS NULL THEN
            t10.r * 1000
            END                       ic50_nm_hibit,
            CASE
            WHEN t10.assay_type = 'HiBit'
                 AND t10.cell_line = 'Hela-HiBit-KAT6A' THEN
            t13.d
            END                       n_ic50_hibit,
            CASE
            WHEN t10.assay_type = 'HiBit'
                 AND t10.cell_line = 'Hela-HiBit-KAT6A'
                 AND t10.p IS NOT NULL THEN
            2
            WHEN t10.assay_type = 'HiBit'
                 AND t10.cell_line = 'Hela-HiBit-KAT6A'
                 AND t10.p IS NULL
                 AND t10.r IS NOT NULL
                 AND t10.compound_status = '>' THEN
            1
            WHEN t10.assay_type = 'HiBit'
                 AND t10.cell_line = 'Hela-HiBit-KAT6A'
                 AND t10.p IS NULL
                 AND t10.r IS NOT NULL
                 AND t10.compound_status = '<' THEN
            0
            END                       cs_ic50_hibit,
            CASE
            WHEN t10.assay_type = 'HiBit'
                 AND t10.cell_line = 'Hela-HiBit-KAT6A'
                 AND t10.p IS NOT NULL
                 AND t10.r IS NOT NULL THEN
            100 - t10.min
            WHEN t10.assay_type = 'HiBit'
                 AND t10.cell_line = 'Hela-HiBit-KAT6A'
                 AND t10.p IS NOT NULL THEN
            100 - t10.min
            WHEN t10.assay_type = 'HiBit'
                 AND t10.cell_line = 'Hela-HiBit-KAT6A'
                 AND t10.p IS NULL THEN
            100 - t10.minr
            END                       dmax_hibit,
            CASE
            WHEN t10.assay_type = 'HiBit'
                 AND t10.cell_line = 'Hela-HiBit-KAT6A'
                 AND t10.p IS NOT NULL
                 AND t10.r IS NOT NULL THEN
            t10.pspan
            WHEN t10.assay_type = 'HiBit'
                 AND t10.cell_line = 'Hela-HiBit-KAT6A'
                 AND t10.p IS NOT NULL THEN
            t10.pspan
            WHEN t10.assay_type = 'HiBit'
                 AND t10.cell_line = 'Hela-HiBit-KAT6A'
                 AND t10.p IS NULL THEN
            t10.pspan
            END                       span_hibit,
            CASE
            WHEN t10.assay_type = 'HiBit'
                 AND t10.cell_line = 'Hela-HiBit-KAT6A'
                 AND t10.p IS NOT NULL
                 AND t10.r IS NOT NULL THEN
            t10.sd
            WHEN t10.assay_type = 'HiBit'
                 AND t10.cell_line = 'Hela-HiBit-KAT6A'
                 AND t10.p IS NOT NULL THEN
            t10.sd
            WHEN t10.assay_type = 'HiBit'
                 AND t10.cell_line = 'Hela-HiBit-KAT6A'
                 AND t10.p IS NULL THEN
            t10.sd
            END                       sd_ic50_hibit,
            CASE
            WHEN t10.assay_type = 'HiBit'
                 AND t10.cell_line = 'Hela-HiBit-KAT6A'
                 AND t10.p IS NOT NULL
                 AND t10.r IS NOT NULL THEN
            t10.sd * 1000
            WHEN t10.assay_type = 'HiBit'
                 AND t10.cell_line = 'Hela-HiBit-KAT6A'
                 AND t10.p IS NOT NULL THEN
            t10.sd * 1000
            WHEN t10.assay_type = 'HiBit'
                 AND t10.cell_line = 'Hela-HiBit-KAT6A'
                 AND t10.p IS NULL THEN
            t10.sd * 1000
            END                       sd_ic50_nm_hibit,

            CASE
            WHEN t10.assay_type = 'HiBit'
                 AND t10.cell_line = 'Hela-HiBit-KAT6A'
                 AND t10.p IS NOT NULL
                 AND t10.r IS NOT NULL THEN
            t10.presp_hc
            WHEN t10.assay_type = 'HiBit'
                 AND t10.cell_line = 'Hela-HiBit-KAT6A'
                 AND t10.p IS NOT NULL THEN
            t10.presp_hc
            WHEN t10.assay_type = 'HiBit'
                 AND t10.cell_line = 'Hela-HiBit-KAT6A'
                 AND t10.p IS NULL THEN
            t10.presp_hc
            END                       resp_hc_hibit,

            CASE
            WHEN t10.assay_type = 'HiBit'
                 AND t10.cell_line = 'Hela'
                 AND t10.p IS NOT NULL
                 AND t10.r IS NOT NULL THEN
            t10.p
            WHEN t10.assay_type = 'HiBit'
                 AND t10.cell_line = 'Hela'
                 AND t10.p IS NOT NULL THEN
            t10.p
            WHEN t10.assay_type = 'HiBit'
                 AND t10.cell_line = 'Hela'
                 AND t10.p IS NULL THEN
            t10.r
            END                       ic50_hibith,
            CASE
            WHEN t10.assay_type = 'HiBit'
                 AND t10.cell_line = 'Hela'
                 AND t10.p IS NOT NULL
                 AND t10.r IS NOT NULL THEN
            t10.p * 1000
            WHEN t10.assay_type = 'HiBit'
                 AND t10.cell_line = 'Hela'
                 AND t10.p IS NOT NULL THEN
            t10.p * 1000
            WHEN t10.assay_type = 'HiBit'
                 AND t10.cell_line = 'Hela'
                 AND t10.p IS NULL THEN
            t10.r * 1000
            END                       ic50_nm_hibith,
            CASE
            WHEN t10.assay_type = 'HiBit'
                 AND t10.cell_line = 'Hela' THEN
            t13.d
            END                       n_ic50_hibith,
            CASE
            WHEN t10.assay_type = 'HiBit'
                 AND t10.cell_line = 'Hela'
                 AND t10.p IS NOT NULL THEN
            2
            WHEN t10.assay_type = 'HiBit'
                 AND t10.cell_line = 'Hela'
                 AND t10.p IS NULL
                 AND t10.r IS NOT NULL
                 AND t10.compound_status = '>' THEN
            1
            WHEN t10.assay_type = 'HiBit'
                 AND t10.cell_line = 'Hela'
                 AND t10.p IS NULL
                 AND t10.r IS NOT NULL
                 AND t10.compound_status = '<' THEN
            0
            END                       cs_ic50_hibith,
            CASE
            WHEN t10.assay_type = 'HiBit'
                 AND t10.cell_line = 'Hela'
                 AND t10.p IS NOT NULL
                 AND t10.r IS NOT NULL THEN
            100 - t10.min
            WHEN t10.assay_type = 'HiBit'
                 AND t10.cell_line = 'Hela'
                 AND t10.p IS NOT NULL THEN
            100 - t10.min
            WHEN t10.assay_type = 'HiBit'
                 AND t10.cell_line = 'Hela'
                 AND t10.p IS NULL THEN
            100 - t10.minr
            END                       dmax_hibith,
            CASE
            WHEN t10.assay_type = 'HiBit'
                 AND t10.cell_line = 'Hela'
                 AND t10.p IS NOT NULL
                 AND t10.r IS NOT NULL THEN
            t10.pspan
            WHEN t10.assay_type = 'HiBit'
                 AND t10.cell_line = 'Hela'
                 AND t10.p IS NOT NULL THEN
            t10.pspan
            WHEN t10.assay_type = 'HiBit'
                 AND t10.cell_line = 'Hela'
                 AND t10.p IS NULL THEN
            t10.pspan
            END                       span_hibith,
            CASE
            WHEN t10.assay_type = 'HiBit'
                 AND t10.cell_line = 'Hela'
                 AND t10.p IS NOT NULL
                 AND t10.r IS NOT NULL THEN
            t10.sd
            WHEN t10.assay_type = 'HiBit'
                 AND t10.cell_line = 'Hela'
                 AND t10.p IS NOT NULL THEN
            t10.sd
            WHEN t10.assay_type = 'HiBit'
                 AND t10.cell_line = 'Hela'
                 AND t10.p IS NULL THEN
            t10.sd
            END                       sd_ic50_hibith,
            CASE
            WHEN t10.assay_type = 'HiBit'
                 AND t10.cell_line = 'Hela'
                 AND t10.p IS NOT NULL
                 AND t10.r IS NOT NULL THEN
            t10.sd * 1000
            WHEN t10.assay_type = 'HiBit'
                 AND t10.cell_line = 'Hela'
                 AND t10.p IS NOT NULL THEN
            t10.sd * 1000
            WHEN t10.assay_type = 'HiBit'
                 AND t10.cell_line = 'Hela'
                 AND t10.p IS NULL THEN
            t10.sd * 1000
            END                       sd_ic50_nm_hibith,
            CASE
            WHEN t10.assay_type = 'HiBit Plasma'
                 AND t10.cell_line = 'Hela-HiBit-KAT6A'
                 AND t10.p IS NOT NULL
                 AND t10.r IS NOT NULL THEN
            t10.p
            WHEN t10.assay_type = 'HiBit Plasma'
                 AND t10.cell_line = 'Hela-HiBit-KAT6A'
                 AND t10.p IS NOT NULL THEN
            t10.p
            WHEN t10.assay_type = 'HiBit Plasma'
                 AND t10.cell_line = 'Hela-HiBit-KAT6A'
                 AND t10.p IS NULL THEN
            t10.r
            END                       ic50_hibitplasma,
            CASE
            WHEN t10.assay_type = 'HiBit Plasma'
                 AND t10.cell_line = 'Hela-HiBit-KAT6A'
                 AND t10.p IS NOT NULL
                 AND t10.r IS NOT NULL THEN
            t10.p * 1000
            WHEN t10.assay_type = 'HiBit Plasma'
                 AND t10.cell_line = 'Hela-HiBit-KAT6A'
                 AND t10.p IS NOT NULL THEN
            t10.p * 1000
            WHEN t10.assay_type = 'HiBit Plasma'
                 AND t10.cell_line = 'Hela-HiBit-KAT6A'
                 AND t10.p IS NULL THEN
            t10.r * 1000
            END                       ic50_nm_hibitplasma,
            CASE
            WHEN t10.assay_type = 'HiBit Plasma'
                 AND t10.cell_line = 'Hela-HiBit-KAT6A' THEN
            t13.d
            END                       n_ic50_hibitplasma,
            CASE
            WHEN t10.assay_type = 'HiBit Plasma'
                 AND t10.cell_line = 'Hela-HiBit-KAT6A'
                 AND t10.p IS NOT NULL THEN
            2
            WHEN t10.assay_type = 'HiBit Plasma'
                 AND t10.cell_line = 'Hela-HiBit-KAT6A'
                 AND t10.p IS NULL
                 AND t10.r IS NOT NULL
                 AND t10.compound_status = '>' THEN
            1
            WHEN t10.assay_type = 'HiBit Plasma'
                 AND t10.cell_line = 'Hela-HiBit-KAT6A'
                 AND t10.p IS NULL
                 AND t10.r IS NOT NULL
                 AND t10.compound_status = '<' THEN
            0
            END                       cs_ic50_hibitplasma,
            CASE
            WHEN t10.assay_type = 'HiBit Plasma'
                 AND t10.cell_line = 'Hela-HiBit-KAT6A'
                 AND t10.p IS NOT NULL
                 AND t10.r IS NOT NULL THEN
            100 - t10.min
            WHEN t10.assay_type = 'HiBit Plasma'
                 AND t10.cell_line = 'Hela-HiBit-KAT6A'
                 AND t10.p IS NOT NULL THEN
            100 - t10.min
            WHEN t10.assay_type = 'HiBit Plasma'
                 AND t10.cell_line = 'Hela-HiBit-KAT6A'
                 AND t10.p IS NULL THEN
            100 - t10.minr
            END                       dmax_hibitplasma,
            CASE
            WHEN t10.assay_type = 'HiBit Plasma'
                 AND t10.cell_line = 'Hela-HiBit-KAT6A'
                 AND t10.p IS NOT NULL
                 AND t10.r IS NOT NULL THEN
            t10.pspan
            WHEN t10.assay_type = 'HiBit Plasma'
                 AND t10.cell_line = 'Hela-HiBit-KAT6A'
                 AND t10.p IS NOT NULL THEN
            t10.pspan
            WHEN t10.assay_type = 'HiBit Plasma'
                 AND t10.cell_line = 'Hela-HiBit-KAT6A'
                 AND t10.p IS NULL THEN
            t10.pspan
            END                       span_hibitplasma,
            CASE
            WHEN t10.assay_type = 'HiBit Plasma'
                 AND t10.cell_line = 'Hela-HiBit-KAT6A'
                 AND t10.p IS NOT NULL
                 AND t10.r IS NOT NULL THEN
            t10.sd
            WHEN t10.assay_type = 'HiBit Plasma'
                 AND t10.cell_line = 'Hela-HiBit-KAT6A'
                 AND t10.p IS NOT NULL THEN
            t10.sd
            WHEN t10.assay_type = 'HiBit Plasma'
                 AND t10.cell_line = 'Hela-HiBit-KAT6A'
                 AND t10.p IS NULL THEN
            t10.sd
            END                       sd_ic50_hibitplasma,
            CASE
            WHEN t10.assay_type = 'HiBit Plasma'
                 AND t10.cell_line = 'Hela-HiBit-KAT6A'
                 AND t10.p IS NOT NULL
                 AND t10.r IS NOT NULL THEN
            t10.sd * 1000
            WHEN t10.assay_type = 'HiBit Plasma'
                 AND t10.cell_line = 'Hela-HiBit-KAT6A'
                 AND t10.p IS NOT NULL THEN
            t10.sd * 1000
            WHEN t10.assay_type = 'HiBit Plasma'
                 AND t10.cell_line = 'Hela-HiBit-KAT6A'
                 AND t10.p IS NULL THEN
            t10.sd * 1000
            END                       sd_ic50_nm_hibitplasma,

            CASE
            WHEN t10.assay_type = 'HiBit Plasma'
                 AND t10.cell_line = 'Hela-HiBit-KAT6A'
                 AND t10.p IS NOT NULL
                 AND t10.r IS NOT NULL THEN
            t10.presp_hc
            WHEN t10.assay_type = 'HiBit Plasma'
                 AND t10.cell_line = 'Hela-HiBit-KAT6A'
                 AND t10.p IS NOT NULL THEN
            t10.presp_hc
            WHEN t10.assay_type = 'HiBit Plasma'
                 AND t10.cell_line = 'Hela-HiBit-KAT6A'
                 AND t10.p IS NULL THEN
            t10.presp_hc
            END                       resp_hc_hibitplasma,

            CASE
            WHEN t10.assay_type = 'HiBit Plasma'
                 AND t10.cell_line = 'Hela'
                 AND t10.p IS NOT NULL
                 AND t10.r IS NOT NULL THEN
            t10.p
            WHEN t10.assay_type = 'HiBit Plasma'
                 AND t10.cell_line = 'Hela'
                 AND t10.p IS NOT NULL THEN
            t10.p
            WHEN t10.assay_type = 'HiBit Plasma'
                 AND t10.cell_line = 'Hela'
                 AND t10.p IS NULL THEN
            t10.r
            END                       ic50_hibitplasmah,
            CASE
            WHEN t10.assay_type = 'HiBit Plasma'
                 AND t10.cell_line = 'Hela'
                 AND t10.p IS NOT NULL
                 AND t10.r IS NOT NULL THEN
            t10.p * 1000
            WHEN t10.assay_type = 'HiBit Plasma'
                 AND t10.cell_line = 'Hela'
                 AND t10.p IS NOT NULL THEN
            t10.p * 1000
            WHEN t10.assay_type = 'HiBit Plasma'
                 AND t10.cell_line = 'Hela'
                 AND t10.p IS NULL THEN
            t10.r * 1000
            END                       ic50_nm_hibitplasmah,
            CASE
            WHEN t10.assay_type = 'HiBit Plasma'
                 AND t10.cell_line = 'Hela' THEN
            t13.d
            END                       n_ic50_hibitplasmah,
            CASE
            WHEN t10.assay_type = 'HiBit Plasma'
                 AND t10.cell_line = 'Hela'
                 AND t10.p IS NOT NULL THEN
            2
            WHEN t10.assay_type = 'HiBit Plasma'
                 AND t10.cell_line = 'Hela'
                 AND t10.p IS NULL
                 AND t10.r IS NOT NULL
                 AND t10.compound_status = '>' THEN
            1
            WHEN t10.assay_type = 'HiBit Plasma'
                 AND t10.cell_line = 'Hela'
                 AND t10.p IS NULL
                 AND t10.r IS NOT NULL
                 AND t10.compound_status = '<' THEN
            0
            END                       cs_ic50_hibitplasmah,
            CASE
            WHEN t10.assay_type = 'HiBit Plasma'
                 AND t10.cell_line = 'Hela'
                 AND t10.p IS NOT NULL
                 AND t10.r IS NOT NULL THEN
            100 - t10.min
            WHEN t10.assay_type = 'HiBit Plasma'
                 AND t10.cell_line = 'Hela'
                 AND t10.p IS NOT NULL THEN
            100 - t10.min
            WHEN t10.assay_type = 'HiBit Plasma'
                 AND t10.cell_line = 'Hela'
                 AND t10.p IS NULL THEN
            100 - t10.minr
            END                       dmax_hibitplasmah,
            CASE
            WHEN t10.assay_type = 'HiBit Plasma'
                 AND t10.cell_line = 'Hela'
                 AND t10.p IS NOT NULL
                 AND t10.r IS NOT NULL THEN
            t10.pspan
            WHEN t10.assay_type = 'HiBit Plasma'
                 AND t10.cell_line = 'Hela'
                 AND t10.p IS NOT NULL THEN
            t10.pspan
            WHEN t10.assay_type = 'HiBit Plasma'
                 AND t10.cell_line = 'Hela'
                 AND t10.p IS NULL THEN
            t10.pspan
            END                       span_hibitplasmah,
            CASE
            WHEN t10.assay_type = 'HiBit Plasma'
                 AND t10.cell_line = 'Hela'
                 AND t10.p IS NOT NULL
                 AND t10.r IS NOT NULL THEN
            t10.sd
            WHEN t10.assay_type = 'HiBit Plasma'
                 AND t10.cell_line = 'Hela'
                 AND t10.p IS NOT NULL THEN
            t10.sd
            WHEN t10.assay_type = 'HiBit Plasma'
                 AND t10.cell_line = 'Hela'
                 AND t10.p IS NULL THEN
            t10.sd
            END                       sd_ic50_hibitplasmah,
            CASE
            WHEN t10.assay_type = 'HiBit Plasma'
                 AND t10.cell_line = 'Hela'
                 AND t10.p IS NOT NULL
                 AND t10.r IS NOT NULL THEN
            t10.sd * 1000
            WHEN t10.assay_type = 'HiBit Plasma'
                 AND t10.cell_line = 'Hela'
                 AND t10.p IS NOT NULL THEN
            t10.sd * 1000
            WHEN t10.assay_type = 'HiBit Plasma'
                 AND t10.cell_line = 'Hela'
                 AND t10.p IS NULL THEN
            t10.sd * 1000
            END                       sd_ic50_nm_hibitplasmah,
            CASE
            WHEN t11.assay_type = 'ICW'
                 AND t11.cell_line = 'ZR75-1'
                 AND t11.p IS NOT NULL
                 AND t11.r IS NOT NULL THEN
            t11.p
            WHEN t11.assay_type = 'ICW'
                 AND t11.cell_line = 'ZR75-1'
                 AND t11.p IS NOT NULL THEN
            t11.p
            WHEN t11.assay_type = 'ICW'
                 AND t11.cell_line = 'ZR75-1'
                 AND t11.p IS NULL THEN
            t11.r
            END                       ic50_icw_zr75_1,
            CASE
            WHEN t11.assay_type = 'ICW'
                 AND t11.cell_line = 'ZR75-1'
                 AND t11.p IS NOT NULL
                 AND t11.r IS NOT NULL THEN
            t11.p * 1000
            WHEN t11.assay_type = 'ICW'
                 AND t11.cell_line = 'ZR75-1'
                 AND t11.p IS NOT NULL THEN
            t11.p * 1000
            WHEN t11.assay_type = 'ICW'
                 AND t11.cell_line = 'ZR75-1'
                 AND t11.p IS NULL THEN
            t11.r * 1000
            END                       ic50_nm_icw_zr75_1,
            CASE
            WHEN t11.assay_type = 'ICW'
                 AND t11.cell_line = 'ZR75-1' THEN
            t14.d
            END                       n_ic50_icw_zr75_1,
            CASE
            WHEN t11.assay_type = 'ICW'
                 AND t11.cell_line = 'ZR75-1'
                 AND t11.p IS NOT NULL THEN
            2
            WHEN t11.assay_type = 'ICW'
                 AND t11.cell_line = 'ZR75-1'
                 AND t11.p IS NULL
                 AND t11.r IS NOT NULL
                 AND t11.compound_status = '>' THEN
            1
            WHEN t11.assay_type = 'ICW'
                 AND t11.cell_line = 'ZR75-1'
                 AND t11.p IS NULL
                 AND t11.r IS NOT NULL
                 AND t11.compound_status = '<' THEN
            0
            END                       cs_ic50_icw_zr75_1,
            CASE
            WHEN t11.assay_type = 'ICW'
                 AND t11.cell_line = 'ZR75-1'
                 AND t11.p IS NOT NULL
                 AND t11.r IS NOT NULL THEN
            t11.p10
            WHEN t11.assay_type = 'ICW'
                 AND t11.cell_line = 'ZR75-1'
                 AND t11.p IS NOT NULL THEN
            t11.p10
            WHEN t11.assay_type = 'ICW'
                 AND t11.cell_line = 'ZR75-1'
                 AND t11.p IS NULL THEN
            t11.p10
            END                       ic10_icw_zr75_1,
            CASE
            WHEN t11.assay_type = 'ICW'
                 AND t11.cell_line = 'ZR75-1'
                 AND t11.p IS NOT NULL
                 AND t11.r IS NOT NULL THEN
            t11.p10 * 1000
            WHEN t11.assay_type = 'ICW'
                 AND t11.cell_line = 'ZR75-1'
                 AND t11.p IS NOT NULL THEN
            t11.p10 * 1000
            WHEN t11.assay_type = 'ICW'
                 AND t11.cell_line = 'ZR75-1'
                 AND t11.p IS NULL THEN
            t11.p10 * 1000
            END                       ic10_nm_icw_zr75_1,
            CASE
            WHEN t11.assay_type = 'ICW'
                 AND t11.cell_line = 'ZR75-1'
                 AND t11.p IS NOT NULL
                 AND t11.r IS NOT NULL THEN
            t11.pspan
            WHEN t11.assay_type = 'ICW'
                 AND t11.cell_line = 'ZR75-1'
                 AND t11.p IS NOT NULL THEN
            t11.pspan
            WHEN t11.assay_type = 'ICW'
                 AND t11.cell_line = 'ZR75-1'
                 AND t11.p IS NULL THEN
            t11.pspan
            END                       span_icw_zr75_1,
            CASE
            WHEN t11.assay_type = 'ICW'
                 AND t11.cell_line = 'ZR75-1'
                 AND t11.p IS NOT NULL
                 AND t11.r IS NOT NULL THEN
            t11.sd
            WHEN t11.assay_type = 'ICW'
                 AND t11.cell_line = 'ZR75-1'
                 AND t11.p IS NOT NULL THEN
            t11.sd
            WHEN t11.assay_type = 'ICW'
                 AND t11.cell_line = 'ZR75-1'
                 AND t11.p IS NULL THEN
            t11.sd
            END                       sd_ic50_icw_zr75_1,
            CASE
            WHEN t11.assay_type = 'ICW'
                 AND t11.cell_line = 'ZR75-1'
                 AND t11.p IS NOT NULL
                 AND t11.r IS NOT NULL THEN
            t11.sd * 1000
            WHEN t11.assay_type = 'ICW'
                 AND t11.cell_line = 'ZR75-1'
                 AND t11.p IS NOT NULL THEN
            t11.sd * 1000
            WHEN t11.assay_type = 'ICW'
                 AND t11.cell_line = 'ZR75-1'
                 AND t11.p IS NULL THEN
            t11.sd * 1000
            END                       sd_ic50_nm_icw_zr75_1,
            CASE
            WHEN t11.assay_type = 'ICW'
                 AND t11.cell_line = 'ZR75-1'
                 AND t11.p IS NOT NULL
                 AND t11.r IS NOT NULL THEN
            t11.sd10
            WHEN t11.assay_type = 'ICW'
                 AND t11.cell_line = 'ZR75-1'
                 AND t11.p IS NOT NULL THEN
            t11.sd10
            WHEN t11.assay_type = 'ICW'
                 AND t11.cell_line = 'ZR75-1'
                 AND t11.p IS NULL THEN
            t11.sd10
            END                       sd_ic10_icw_zr75_1,
            CASE
            WHEN t11.assay_type = 'ICW'
                 AND t11.cell_line = 'ZR75-1'
                 AND t11.p IS NOT NULL
                 AND t11.r IS NOT NULL THEN
            t11.sd10 * 1000
            WHEN t11.assay_type = 'ICW'
                 AND t11.cell_line = 'ZR75-1'
                 AND t11.p IS NOT NULL THEN
            t11.sd10 * 1000
            WHEN t11.assay_type = 'ICW'
                 AND t11.cell_line = 'ZR75-1'
                 AND t11.p IS NULL THEN
            t11.sd10 * 1000
            END                       sd_ic10_nm_icw_zr75_1,

            CASE
            WHEN t11.assay_type = 'ICW'
                 AND t11.cell_line = 'ZR75-1'
                 AND t11.p IS NOT NULL
                 AND t11.r IS NOT NULL THEN
            t11.presp_hc
            WHEN t11.assay_type = 'ICW'
                 AND t11.cell_line = 'ZR75-1'
                 AND t11.p IS NOT NULL THEN
            t11.presp_hc
            WHEN t11.assay_type = 'ICW'
                 AND t11.cell_line = 'ZR75-1'
                 AND t11.p IS NULL THEN
            t11.presp_hc
            END                       resp_hc_icw_zr75_1,

            CASE
            WHEN t12.target = 'KAT6A'
                 AND t12.cofactor = 'Acetyl-CoA'
                 AND t12.cofactor_conc = '3 uM'
                 AND t12.p IS NOT NULL
                 AND t12.r IS NOT NULL THEN
            t12.p
            WHEN t12.target = 'KAT6A'
                 AND t12.cofactor = 'Acetyl-CoA'
                 AND t12.cofactor_conc = '3 uM'
                 AND t12.p IS NOT NULL THEN
            t12.p
            WHEN t12.target = 'KAT6A'
                 AND t12.cofactor = 'Acetyl-CoA'
                 AND t12.cofactor_conc = '3 uM'
                 AND t12.p IS NULL THEN
            t12.r
            END                       ic50_nm_kat6a,
            CASE
            WHEN t12.target = 'KAT6A'
                 AND t12.cofactor = 'Acetyl-CoA'
                 AND t12.cofactor_conc = '3 uM' THEN
            t15.d
            END                       n_ic50_kat6a,
            CASE
            WHEN t12.target = 'KAT6A'
                 AND t12.cofactor = 'Acetyl-CoA'
                 AND t12.cofactor_conc = '3 uM'
                 AND t12.p IS NOT NULL THEN
            2
            WHEN t12.target = 'KAT6A'
                 AND t12.cofactor = 'Acetyl-CoA'
                 AND t12.cofactor_conc = '3 uM'
                 AND t12.p IS NULL
                 AND t12.r IS NOT NULL
                 AND t12.compound_status = '>' THEN
            1
            WHEN t12.target = 'KAT6A'
                 AND t12.cofactor = 'Acetyl-CoA'
                 AND t12.cofactor_conc = '3 uM'
                 AND t12.p IS NULL
                 AND t12.r IS NOT NULL
                 AND t12.compound_status = '<' THEN
            0
            END                       cs_ic50_nm_kat6a,
            CASE
            WHEN t12.target = 'KAT6A'
                 AND t12.cofactor = 'Acetyl-CoA'
                 AND t12.cofactor_conc = '3 uM'
                 AND t12.p IS NOT NULL
                 AND t12.r IS NOT NULL THEN
            t12.pspan
            WHEN t12.target = 'KAT6A'
                 AND t12.cofactor = 'Acetyl-CoA'
                 AND t12.cofactor_conc = '3 uM'
                 AND t12.p IS NOT NULL THEN
            t12.pspan
            WHEN t12.target = 'KAT6A'
                 AND t12.cofactor = 'Acetyl-CoA'
                 AND t12.cofactor_conc = '3 uM'
                 AND t12.p IS NULL THEN
            t12.pspan
            END                       span_kat6a,
            CASE
            WHEN t12.target = 'KAT6A'
                 AND t12.cofactor = 'Acetyl-CoA'
                 AND t12.cofactor_conc = '3 uM'
                 AND t12.p IS NOT NULL
                 AND t12.r IS NOT NULL THEN
            100 - t12.pinh
            WHEN t12.target = 'KAT6A'
                 AND t12.cofactor = 'Acetyl-CoA'
                 AND t12.cofactor_conc = '3 uM'
                 AND t12.p IS NOT NULL THEN
            100 - t12.pinh
            WHEN t12.target = 'KAT6A'
                 AND t12.cofactor = 'Acetyl-CoA'
                 AND t12.cofactor_conc = '3 uM'
                 AND t12.p IS NULL THEN
            100 - t12.pinh
            END                       percent_inh_kat6a,
            CASE
            WHEN t12.target = 'KAT6A'
                 AND t12.cofactor = 'Acetyl-CoA'
                 AND t12.cofactor_conc = '3 uM'
                 AND t12.p IS NOT NULL
                 AND t12.r IS NOT NULL THEN
            t12.sd
            WHEN t12.target = 'KAT6A'
                 AND t12.cofactor = 'Acetyl-CoA'
                 AND t12.cofactor_conc = '3 uM'
                 AND t12.p IS NOT NULL THEN
            t12.sd
            WHEN t12.target = 'KAT6A'
                 AND t12.cofactor = 'Acetyl-CoA'
                 AND t12.cofactor_conc = '3 uM'
                 AND t12.p IS NULL THEN
            t12.sd
            END                       sd_ic50_nm_kat6a,
            CASE
            WHEN t12.target = 'KAT6B'
                 AND t12.cofactor = 'Acetyl-CoA'
                 AND t12.cofactor_conc = '3 uM'
                 AND t12.p IS NOT NULL
                 AND t12.r IS NOT NULL THEN
            t12.p
            WHEN t12.target = 'KAT6B'
                 AND t12.cofactor = 'Acetyl-CoA'
                 AND t12.cofactor_conc = '3 uM'
                 AND t12.p IS NOT NULL THEN
            t12.p
            WHEN t12.target = 'KAT6B'
                 AND t12.cofactor = 'Acetyl-CoA'
                 AND t12.cofactor_conc = '3 uM'
                 AND t12.p IS NULL THEN
            t12.r
            END                       ic50_nm_kat6b,
            CASE
            WHEN t12.target = 'KAT6B'
                 AND t12.cofactor = 'Acetyl-CoA'
                 AND t12.cofactor_conc = '3 uM' THEN
            t15.d
            END                       n_ic50_kat6b,
            CASE
            WHEN t12.target = 'KAT6B'
                 AND t12.cofactor = 'Acetyl-CoA'
                 AND t12.cofactor_conc = '3 uM'
                 AND t12.p IS NOT NULL THEN
            2
            WHEN t12.target = 'KAT6B'
                 AND t12.cofactor = 'Acetyl-CoA'
                 AND t12.cofactor_conc = '3 uM'
                 AND t12.p IS NULL
                 AND t12.r IS NOT NULL
                 AND t12.compound_status = '>' THEN
            1
            WHEN t12.target = 'KAT6B'
                 AND t12.cofactor = 'Acetyl-CoA'
                 AND t12.cofactor_conc = '3 uM'
                 AND t12.p IS NULL
                 AND t12.r IS NOT NULL
                 AND t12.compound_status = '<' THEN
            0
            END                       cs_ic50_nm_kat6b,
            CASE
            WHEN t12.target = 'KAT6B'
                 AND t12.cofactor = 'Acetyl-CoA'
                 AND t12.cofactor_conc = '3 uM'
                 AND t12.p IS NOT NULL
                 AND t12.r IS NOT NULL THEN
            t12.pspan
            WHEN t12.target = 'KAT6B'
                 AND t12.cofactor = 'Acetyl-CoA'
                 AND t12.cofactor_conc = '3 uM'
                 AND t12.p IS NOT NULL THEN
            t12.pspan
            WHEN t12.target = 'KAT6B'
                 AND t12.cofactor = 'Acetyl-CoA'
                 AND t12.cofactor_conc = '3 uM'
                 AND t12.p IS NULL THEN
            t12.pspan
            END                       span_kat6b,
            CASE
            WHEN t12.target = 'KAT6B'
                 AND t12.cofactor = 'Acetyl-CoA'
                 AND t12.cofactor_conc = '3 uM'
                 AND t12.p IS NOT NULL
                 AND t12.r IS NOT NULL THEN
            100 - t12.pinh
            WHEN t12.target = 'KAT6B'
                 AND t12.cofactor = 'Acetyl-CoA'
                 AND t12.cofactor_conc = '3 uM'
                 AND t12.p IS NOT NULL THEN
            100 - t12.pinh
            WHEN t12.target = 'KAT6B'
                 AND t12.cofactor = 'Acetyl-CoA'
                 AND t12.cofactor_conc = '3 uM'
                 AND t12.p IS NULL THEN
            100 - t12.pinh
            END                       percent_inh_kat6b,
            CASE
            WHEN t12.target = 'KAT6B'
                 AND t12.cofactor = 'Acetyl-CoA'
                 AND t12.cofactor_conc = '3 uM'
                 AND t12.p IS NOT NULL
                 AND t12.r IS NOT NULL THEN
            t12.sd
            WHEN t12.target = 'KAT6B'
                 AND t12.cofactor = 'Acetyl-CoA'
                 AND t12.cofactor_conc = '3 uM'
                 AND t12.p IS NOT NULL THEN
            t12.sd
            WHEN t12.target = 'KAT6B'
                 AND t12.cofactor = 'Acetyl-CoA'
                 AND t12.cofactor_conc = '3 uM'
                 AND t12.p IS NULL THEN
            t12.sd
            END                       sd_ic50_nm_kat6b,
            CASE
            WHEN t12.target = 'KAT7'
                 AND t12.cofactor = 'Acetyl-CoA'
                 AND t12.cofactor_conc = '3 uM'
                 AND t12.p IS NOT NULL
                 AND t12.r IS NOT NULL THEN
            t12.p
            WHEN t12.target = 'KAT7'
                 AND t12.cofactor = 'Acetyl-CoA'
                 AND t12.cofactor_conc = '3 uM'
                 AND t12.p IS NOT NULL THEN
            t12.p
            WHEN t12.target = 'KAT7'
                 AND t12.cofactor = 'Acetyl-CoA'
                 AND t12.cofactor_conc = '3 uM'
                 AND t12.p IS NULL THEN
            t12.r
            END                       ic50_nm_kat7,
            CASE
            WHEN t12.target = 'KAT7'
                 AND t12.cofactor = 'Acetyl-CoA'
                 AND t12.cofactor_conc = '3 uM' THEN
            t15.d
            END                       n_ic50_kat7,
            CASE
            WHEN t12.target = 'KAT7'
                 AND t12.cofactor = 'Acetyl-CoA'
                 AND t12.cofactor_conc = '3 uM'
                 AND t12.p IS NOT NULL THEN
            2
            WHEN t12.target = 'KAT7'
                 AND t12.cofactor = 'Acetyl-CoA'
                 AND t12.cofactor_conc = '3 uM'
                 AND t12.p IS NULL
                 AND t12.r IS NOT NULL
                 AND t12.compound_status = '>' THEN
            1
            WHEN t12.target = 'KAT7'
                 AND t12.cofactor = 'Acetyl-CoA'
                 AND t12.cofactor_conc = '3 uM'
                 AND t12.p IS NULL
                 AND t12.r IS NOT NULL
                 AND t12.compound_status = '<' THEN
            0
            END                       cs_ic50_nm_kat7,
            CASE
            WHEN t12.target = 'KAT7'
                 AND t12.cofactor = 'Acetyl-CoA'
                 AND t12.cofactor_conc = '3 uM'
                 AND t12.p IS NOT NULL
                 AND t12.r IS NOT NULL THEN
            t12.pspan
            WHEN t12.target = 'KAT7'
                 AND t12.cofactor = 'Acetyl-CoA'
                 AND t12.cofactor_conc = '3 uM'
                 AND t12.p IS NOT NULL THEN
            t12.pspan
            WHEN t12.target = 'KAT7'
                 AND t12.cofactor = 'Acetyl-CoA'
                 AND t12.cofactor_conc = '3 uM'
                 AND t12.p IS NULL THEN
            t12.pspan
            END                       span_kat7,
            CASE
            WHEN t12.target = 'KAT7'
                 AND t12.cofactor = 'Acetyl-CoA'
                 AND t12.cofactor_conc = '3 uM'
                 AND t12.p IS NOT NULL
                 AND t12.r IS NOT NULL THEN
            100 - t12.pinh
            WHEN t12.target = 'KAT7'
                 AND t12.cofactor = 'Acetyl-CoA'
                 AND t12.cofactor_conc = '3 uM'
                 AND t12.p IS NOT NULL THEN
            100 - t12.pinh
            WHEN t12.target = 'KAT7'
                 AND t12.cofactor = 'Acetyl-CoA'
                 AND t12.cofactor_conc = '3 uM'
                 AND t12.p IS NULL THEN
            100 - t12.pinh
            END                       percent_inh_kat7,
            CASE
            WHEN t12.target = 'KAT7'
                 AND t12.cofactor = 'Acetyl-CoA'
                 AND t12.cofactor_conc = '3 uM'
                 AND t12.p IS NOT NULL
                 AND t12.r IS NOT NULL THEN
            t12.sd
            WHEN t12.target = 'KAT7'
                 AND t12.cofactor = 'Acetyl-CoA'
                 AND t12.cofactor_conc = '3 uM'
                 AND t12.p IS NOT NULL THEN
            t12.sd
            WHEN t12.target = 'KAT7'
                 AND t12.cofactor = 'Acetyl-CoA'
                 AND t12.cofactor_conc = '3 uM'
                 AND t12.p IS NULL THEN
            t12.sd
            END                       sd_ic50_nm_kat7,
            CASE
            WHEN t12.target = 'KAT8'
                 AND t12.cofactor = 'Acetyl-CoA'
                 AND t12.cofactor_conc = '3 uM'
                 AND t12.p IS NOT NULL
                 AND t12.r IS NOT NULL THEN
            t12.p
            WHEN t12.target = 'KAT8'
                 AND t12.cofactor = 'Acetyl-CoA'
                 AND t12.cofactor_conc = '3 uM'
                 AND t12.p IS NOT NULL THEN
            t12.p
            WHEN t12.target = 'KAT8'
                 AND t12.cofactor = 'Acetyl-CoA'
                 AND t12.cofactor_conc = '3 uM'
                 AND t12.p IS NULL THEN
            t12.r
            END                       ic50_nm_kat8,
            CASE
            WHEN t12.target = 'KAT8'
                 AND t12.cofactor = 'Acetyl-CoA'
                 AND t12.cofactor_conc = '3 uM' THEN
            t15.d
            END                       n_ic50_kat8,
            CASE
            WHEN t12.target = 'KAT8'
                 AND t12.cofactor = 'Acetyl-CoA'
                 AND t12.cofactor_conc = '3 uM'
                 AND t12.p IS NOT NULL THEN
            2
            WHEN t12.target = 'KAT8'
                 AND t12.cofactor = 'Acetyl-CoA'
                 AND t12.cofactor_conc = '3 uM'
                 AND t12.p IS NULL
                 AND t12.r IS NOT NULL
                 AND t12.compound_status = '>' THEN
            1
            WHEN t12.target = 'KAT8'
                 AND t12.cofactor = 'Acetyl-CoA'
                 AND t12.cofactor_conc = '3 uM'
                 AND t12.p IS NULL
                 AND t12.r IS NOT NULL
                 AND t12.compound_status = '<' THEN
            0
            END                       cs_ic50_nm_kat8,
            CASE
            WHEN t12.target = 'KAT8'
                 AND t12.cofactor = 'Acetyl-CoA'
                 AND t12.cofactor_conc = '3 uM'
                 AND t12.p IS NOT NULL
                 AND t12.r IS NOT NULL THEN
            t12.pspan
            WHEN t12.target = 'KAT8'
                 AND t12.cofactor = 'Acetyl-CoA'
                 AND t12.cofactor_conc = '3 uM'
                 AND t12.p IS NOT NULL THEN
            t12.pspan
            WHEN t12.target = 'KAT8'
                 AND t12.cofactor = 'Acetyl-CoA'
                 AND t12.cofactor_conc = '3 uM'
                 AND t12.p IS NULL THEN
            t12.pspan
            END                       span_kat8,
            CASE
            WHEN t12.target = 'KAT8'
                 AND t12.cofactor = 'Acetyl-CoA'
                 AND t12.cofactor_conc = '3 uM'
                 AND t12.p IS NOT NULL
                 AND t12.r IS NOT NULL THEN
            100 - t12.pinh
            WHEN t12.target = 'KAT8'
                 AND t12.cofactor = 'Acetyl-CoA'
                 AND t12.cofactor_conc = '3 uM'
                 AND t12.p IS NOT NULL THEN
            100 - t12.pinh
            WHEN t12.target = 'KAT8'
                 AND t12.cofactor = 'Acetyl-CoA'
                 AND t12.cofactor_conc = '3 uM'
                 AND t12.p IS NULL THEN
            100 - t12.pinh
            END                       percent_inh_kat8,
            CASE
            WHEN t12.target = 'KAT8'
                 AND t12.cofactor = 'Acetyl-CoA'
                 AND t12.cofactor_conc = '3 uM'
                 AND t12.p IS NOT NULL
                 AND t12.r IS NOT NULL THEN
            t12.sd
            WHEN t12.target = 'KAT8'
                 AND t12.cofactor = 'Acetyl-CoA'
                 AND t12.cofactor_conc = '3 uM'
                 AND t12.p IS NOT NULL THEN
            t12.sd
            WHEN t12.target = 'KAT8'
                 AND t12.cofactor = 'Acetyl-CoA'
                 AND t12.cofactor_conc = '3 uM'
                 AND t12.p IS NULL THEN
            t12.sd
            END                       sd_ic50_nm_kat8,
            CASE
            WHEN t12.target = 'KAT5'
                 AND t12.cofactor = 'Acetyl-CoA'
                 AND t12.cofactor_conc = '3 uM'
                 AND t12.p IS NOT NULL
                 AND t12.r IS NOT NULL THEN
            t12.p
            WHEN t12.target = 'KAT5'
                 AND t12.cofactor = 'Acetyl-CoA'
                 AND t12.cofactor_conc = '3 uM'
                 AND t12.p IS NOT NULL THEN
            t12.p
            WHEN t12.target = 'KAT5'
                 AND t12.cofactor = 'Acetyl-CoA'
                 AND t12.cofactor_conc = '3 uM'
                 AND t12.p IS NULL THEN
            t12.r
            END                       ic50_nm_kat5,
            CASE
            WHEN t12.target = 'KAT5'
                 AND t12.cofactor = 'Acetyl-CoA'
                 AND t12.cofactor_conc = '3 uM' THEN
            t15.d
            END                       n_ic50_kat5,
            CASE
            WHEN t12.target = 'KAT5'
                 AND t12.cofactor = 'Acetyl-CoA'
                 AND t12.cofactor_conc = '3 uM'
                 AND t12.p IS NOT NULL THEN
            2
            WHEN t12.target = 'KAT5'
                 AND t12.cofactor = 'Acetyl-CoA'
                 AND t12.cofactor_conc = '3 uM'
                 AND t12.p IS NULL
                 AND t12.r IS NOT NULL
                 AND t12.compound_status = '>' THEN
            1
            WHEN t12.target = 'KAT5'
                 AND t12.cofactor = 'Acetyl-CoA'
                 AND t12.cofactor_conc = '3 uM'
                 AND t12.p IS NULL
                 AND t12.r IS NOT NULL
                 AND t12.compound_status = '<' THEN
            0
            END                       cs_ic50_nm_kat5,
            CASE
            WHEN t12.target = 'KAT5'
                 AND t12.cofactor = 'Acetyl-CoA'
                 AND t12.cofactor_conc = '3 uM'
                 AND t12.p IS NOT NULL
                 AND t12.r IS NOT NULL THEN
            t12.pspan
            WHEN t12.target = 'KAT5'
                 AND t12.cofactor = 'Acetyl-CoA'
                 AND t12.cofactor_conc = '3 uM'
                 AND t12.p IS NOT NULL THEN
            t12.pspan
            WHEN t12.target = 'KAT5'
                 AND t12.cofactor = 'Acetyl-CoA'
                 AND t12.cofactor_conc = '3 uM'
                 AND t12.p IS NULL THEN
            t12.pspan
            END                       span_kat5,
            CASE
            WHEN t12.target = 'KAT5'
                 AND t12.cofactor = 'Acetyl-CoA'
                 AND t12.cofactor_conc = '3 uM'
                 AND t12.p IS NOT NULL
                 AND t12.r IS NOT NULL THEN
            100 - t12.pinh
            WHEN t12.target = 'KAT5'
                 AND t12.cofactor = 'Acetyl-CoA'
                 AND t12.cofactor_conc = '3 uM'
                 AND t12.p IS NOT NULL THEN
            100 - t12.pinh
            WHEN t12.target = 'KAT5'
                 AND t12.cofactor = 'Acetyl-CoA'
                 AND t12.cofactor_conc = '3 uM'
                 AND t12.p IS NULL THEN
            100 - t12.pinh
            END                       percent_inh_kat5,
            CASE
            WHEN t12.target = 'KAT5'
                 AND t12.cofactor = 'Acetyl-CoA'
                 AND t12.cofactor_conc = '3 uM'
                 AND t12.p IS NOT NULL
                 AND t12.r IS NOT NULL THEN
            t12.sd
            WHEN t12.target = 'KAT5'
                 AND t12.cofactor = 'Acetyl-CoA'
                 AND t12.cofactor_conc = '3 uM'
                 AND t12.p IS NOT NULL THEN
            t12.sd
            WHEN t12.target = 'KAT5'
                 AND t12.cofactor = 'Acetyl-CoA'
                 AND t12.cofactor_conc = '3 uM'
                 AND t12.p IS NULL THEN
            t12.sd
            END                       sd_ic50_nm_kat5,
            t2.ligand_efficiency      AS le,
            t2.lipophillic_efficiency AS lle
        FROM
            ds3_userdata.kat6a_reg_data_vw t0
            LEFT JOIN (
                SELECT
                    a.formatted_id,
                    a.p,
                    a.t,
                    a.c,
                    b.hac,
                    ( 1.4 * ( - log(
                        10,(a.p *(power(
                            10, - 9
                        )))
                    ) / b.hac ) )   AS ligand_efficiency,
                    ( - log(
                        10,(a.p * power(
                            10, - 9
                        ))
                    ) )             AS pic50,
                    ( ( - log(
                        10,(a.p * power(
                            10, - 9
                        ))
                    ) ) - b.xlogp ) AS lipophillic_efficiency
                FROM
                    (
                        (
                            SELECT
                                formatted_id,
                                power(
                                    10, AVG(log(
                                        10, ic50_nm
                                    ))
                                )             AS p,
                                target        AS t,
                                COUNT(target) AS c
                            FROM
                                ds3_userdata.kat6a_trfret_registry_summary
                            WHERE
                                target = 'KAT6A'
                                AND target IS NOT NULL
                                AND ic50_nm > 0
                            GROUP BY
                                formatted_id,
                                target
                        )                                 a
                        LEFT JOIN ds3_userdata.calc_phys_properties b ON a.formatted_id = b.cp_id
                    )
                ORDER BY
                    formatted_id
            )                              t2 ON t0.formatted_id = t2.formatted_id
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
                                            ic50
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

                                power(10, avg(log(
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
                                compound_status,
                                COUNT(formatted_id) AS c
                            FROM
                                ds3_userdata.kat6a_registry_summary
                            WHERE
                                compound_status IS NULL
                            GROUP BY
                                formatted_id,
                                assay_type,
                                cell_line,
                                compound_status
                        )
                        UNION ALL
                        (
                            SELECT
                                formatted_id,
                                NULL                AS p,
                                MAX(ic50)           AS r,
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

                                power(10, avg(log(
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
                                compound_status,
                                COUNT(formatted_id) AS c
                            FROM
                                ds3_userdata.kat6a_registry_summary
                            WHERE
                                compound_status IS NOT NULL
                            GROUP BY
                                formatted_id,
                                assay_type,
                                cell_line,
                                compound_status
                        )
                    )
            )                              t10 ON t0.formatted_id = t10.formatted_id
            LEFT JOIN (
                SELECT
                    formatted_id,
                    assay_type,
                    cell_line,
                    COUNT(formatted_id) AS d
                FROM
                    ds3_userdata.kat6a_registry_summary
                GROUP BY
                    formatted_id,
                    assay_type,
                    cell_line
            )                              t13 ON t0.formatted_id = t13.formatted_id
                     AND t10.assay_type = t13.assay_type
                     AND t10.cell_line = t13.cell_line
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
                                            ic50
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
                                        WHEN ic10 > 0 THEN
                                            ic10
                                        ELSE
                                        NULL
                                        END
                                    ))
                                )                   AS p10,
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

                                power(10, avg(log(
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
                                STDDEV(ic10)        AS sd10,
                                STDDEV(span)        AS sdspan,
                                assay_type,
                                cell_line,
                                compound_status,
                                COUNT(formatted_id) AS c
                            FROM
                                ds3_userdata.kat6a_icw_registry_summary
                            WHERE
                                compound_status IS NULL
                            GROUP BY
                                formatted_id,
                                assay_type,
                                cell_line,
                                compound_status
                        )
                        UNION ALL
                        (
                            SELECT
                                formatted_id,
                                NULL                AS p,
                                MAX(ic50)           AS r,
                                power(
                                    10, AVG(log(
                                        10,
                                        CASE
                                        WHEN ic10 > 0 THEN
                                            ic10
                                        ELSE
                                        NULL
                                        END
                                    ))
                                )                   AS p10,
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

                                power(10, avg(log(
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
                                STDDEV(ic10)        AS sd10,
                                STDDEV(span)        AS sdspan,
                                assay_type,
                                cell_line,
                                compound_status,
                                COUNT(formatted_id) AS c
                            FROM
                                ds3_userdata.kat6a_icw_registry_summary
                            WHERE
                                compound_status IS NOT NULL
                            GROUP BY
                                formatted_id,
                                assay_type,
                                cell_line,
                                compound_status
                        )
                    )
            )                              t11 ON t0.formatted_id = t11.formatted_id
            LEFT JOIN (
                SELECT
                    formatted_id,
                    assay_type,
                    cell_line,
                    COUNT(formatted_id) AS d
                FROM
                    ds3_userdata.kat6a_icw_registry_summary
                GROUP BY
                    formatted_id,
                    assay_type,
                    cell_line
            )                              t14 ON t0.formatted_id = t14.formatted_id
                     AND t11.assay_type = t14.assay_type
                     AND t11.cell_line = t14.cell_line
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
                                        WHEN ic50_nm > 0 THEN
                                            ic50_nm
                                        ELSE
                                        NULL
                                        END
                                    ))
                                )                          AS p,
                                NULL                       AS r,
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
                                )                          AS pspan,
                                power(
                                    10, AVG(log(
                                        10,
                                        CASE
                                        WHEN percent_inhibition > 0 THEN
                                            percent_inhibition
                                        ELSE
                                        NULL
                                        END
                                    ))
                                )                          AS pinh,

                                power(10, avg(log(
                                          10,
                                          CASE
                                          WHEN response_at_hc > 0 THEN
                                            response_at_hc
                                          ELSE
                                          NULL
                                          END
                                    ))
                                )                   AS presp_hc,
                                STDDEV(ic50_nm)            AS sd,
                                STDDEV(span)               AS sdspan,
                                STDDEV(percent_inhibition) AS sdinh,
                                target,
                                cofactor,
                                cofactor_conc,
                                compound_status,
                                COUNT(formatted_id)        AS c
                            FROM
                                ds3_userdata.kat6a_trfret_registry_summary
                            WHERE
                                compound_status IS NULL
                            GROUP BY
                                formatted_id,
                                target,
                                compound_status,
                                cofactor,
                                cofactor_conc
                        )
                        UNION ALL
                        (
                            SELECT
                                formatted_id,
                                NULL                       AS p,
                                MAX(ic50_nm)               AS r,
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
                                )                          AS pspan,
                                power(
                                    10, AVG(log(
                                        10,
                                        CASE
                                        WHEN percent_inhibition > 0 THEN
                                            percent_inhibition
                                        ELSE
                                        NULL
                                        END
                                    ))
                                )                          AS pinh,

                                power(10, avg(log(
                                          10,
                                          CASE
                                          WHEN response_at_hc > 0 THEN
                                            response_at_hc
                                          ELSE
                                          NULL
                                          END
                                    ))
                                )                   AS presp_hc,
                                STDDEV(ic50_nm)            AS sd,
                                STDDEV(span)               AS sdspan,
                                STDDEV(percent_inhibition) AS sdinh,
                                target,
                                cofactor,
                                cofactor_conc,
                                compound_status,
                                COUNT(formatted_id)        AS c
                            FROM
                                ds3_userdata.kat6a_trfret_registry_summary
                            WHERE
                                compound_status IS NOT NULL
                            GROUP BY
                                formatted_id,
                                target,
                                compound_status,
                                cofactor,
                                cofactor_conc
                        )
                    )
            )                              t12 ON t0.formatted_id = t12.formatted_id
            LEFT JOIN (
                SELECT
                    formatted_id,
                    target,
                    cofactor,
                    cofactor_conc,
                    COUNT(formatted_id) AS d
                FROM
                    ds3_userdata.kat6a_trfret_registry_summary
                GROUP BY
                    formatted_id,
                    target,
                    cofactor,
                    cofactor_conc
            )                              t15 ON t0.formatted_id = t15.formatted_id
                     AND t12.target = t15.target
                     AND t12.cofactor = t15.cofactor
                     AND t12.cofactor_conc = t15.cofactor_conc
    )
GROUP BY
    x01_formatted_id
