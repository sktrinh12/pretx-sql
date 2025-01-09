SELECT
    MAX(Omsr_kat6a_vw)        AS Omsr_kat6a_vw,
    MAX(Omsr_kat6b_vw)        AS Omsr_kat6b_vw,
    MAX(Omsr_kat7_vw)         AS Omsr_kat7_vw,
    MAX(Omsr_kat8_vw)         AS Omsr_kat8_vw,
    MAX(Omsr_kat5_vw)         AS Omsr_kat5_vw,
    MAX(Omsr_icw_zr75_vw)     AS Omsr_icw_zr75_vw,
    MAX(Omsr_glo_zr75_vw)     AS Omsr_glo_zr75_vw,
	MAX(Omsr_hb_kat6a_vw)	 AS Omsr_hb_kat6a_vw,
	MAX(Omsr_hb_hela_vw)		 AS Omsr_hb_hela_vw,
	MAX(Omsr_hbp_kat6a_vw)	 AS Omsr_hbp_kat6a_vw,
	MAX(Omsr_hbp_hela_vw) 	 AS Omsr_hbp_hela_vw,
    formatted_id
FROM
    (
        SELECT
            CASE
                WHEN target = 'KAT6A'
                     AND cofactor = 'Acetyl-CoA'
                     AND cofactor_conc = '3 uM'
                     AND assay_type = 'TR-FRET' AND C.IC50_NM_KAT6A IS NOT NULL THEN
                    ic50
            END  AS Omsr_kat6a_vw,
            CASE
                WHEN target = 'KAT6B'
                     AND cofactor = 'Acetyl-CoA'
                     AND cofactor_conc = '3 uM'
                     AND assay_type = 'TR-FRET' AND C.IC50_NM_KAT6B IS NOT NULL THEN
                    ic50
            END  AS Omsr_kat6b_vw,
            CASE
                WHEN target = 'KAT7'
                     AND cofactor = 'Acetyl-CoA'
                     AND cofactor_conc = '3 uM'
                     AND assay_type = 'TR-FRET' AND C.IC50_NM_KAT7 IS NOT NULL THEN
                    ic50
            END  AS Omsr_kat7_vw,
            CASE
                WHEN target = 'KAT8'
                     AND cofactor = 'Acetyl-CoA'
                     AND cofactor_conc = '3 uM'
                     AND assay_type = 'TR-FRET' AND C.IC50_NM_KAT8 IS NOT NULL THEN
                    ic50
            END  AS Omsr_kat8_vw,
            CASE
                WHEN target = 'KAT5'
                     AND cofactor = 'Acetyl-CoA'
                     AND cofactor_conc = '3 uM'
                     AND assay_type = 'TR-FRET' AND C.IC50_NM_KAT5 IS NOT NULL THEN
                    ic50
            END  AS Omsr_kat5_vw,
            CASE
                WHEN cell_line = 'ZR75-1'
                     AND assay_type = 'ICW' AND C.IC50_NM_ICW_ZR75_1 IS NOT NULL THEN
                    ic50
            END  AS Omsr_icw_zr75_vw,
            CASE
                WHEN cell_line = 'ZR75-1'
                     AND assay_type = 'CellTiter-Glo' AND C.IC50_NM_ZR75_1 IS NOT NULL THEN
                    ic50
            END  AS Omsr_glo_zr75_vw,
			CASE
                WHEN cell_line = 'Hela-HiBit-KAT6A'
                     AND assay_type = 'HiBit' AND C.IC50_NM_HIBIT IS NOT NULL THEN
                    ic50
            END  AS Omsr_hb_kat6a_vw,
			CASE
                WHEN cell_line = 'Hela'
                     AND assay_type = 'HiBit' THEN
                    ic50
            END  AS Omsr_hb_hela_vw,
			CASE
                WHEN cell_line = 'Hela-HiBit-KAT6A'
                     AND assay_type = 'HiBit Plasma' AND C.IC50_NM_HIBITPLASMA IS NOT NULL THEN
                    ic50
            END  AS Omsr_hbp_kat6a_vw,
			CASE
                WHEN cell_line = 'Hela'
                     AND assay_type = 'HiBit Plasma' THEN
                    ic50
            END  AS Omsr_hbp_hela_vw,
            assay_type,
            B.formatted_id,
            cell_line,
            cofactor_conc,
            cofactor,
            target
        FROM
            kat6a_Omsr_vw A,KAT6A_SUMMARY_VW B
			JOIN SUMM_KAT6A C ON B.FORMATTED_ID=C.X01_FORMATTED_ID
    )
GROUP BY
    formatted_id
