SELECT
    MAX(msr_kat6a_vw)         AS msr_kat6a_vw,
    MAX(msr_kat6b_vw)         AS msr_kat6b_vw,
    MAX(msr_kat7_vw)          AS msr_kat7_vw,
    MAX(msr_kat8_vw)          AS msr_kat8_vw,
    MAX(msr_kat5_vw)          AS msr_kat5_vw,
    MAX(msr_icw_zr75_vw)      AS msr_icw_zr75_vw,
    MAX(msr_glo_zr75_vw)      AS msr_glo_zr75_vw,
    MAX(msr_hb_kat6a_vw)      AS msr_hb_kat6a_vw,
    MAX(msr_hb_hela_vw)       AS msr_hb_hela_vw,
    MAX(msr_hbp_kat6a_vw)     AS msr_hbp_kat6a_vw,
    MAX(msr_hbp_hela_vw)      AS msr_hbp_hela_vw,
    MAX(msr_lclc_97tm1_vw)      AS msr_lclc_97tm1_vw,
    formatted_id, 
    MAX(msr_kat6a_ref)         AS msr_kat6a_ref,
    MAX(msr_kat6b_ref)         AS msr_kat6b_ref,
    MAX(msr_kat7_ref)          AS msr_kat7_ref,
    MAX(msr_kat8_ref)          AS msr_kat8_ref,
    MAX(msr_kat5_ref)          AS msr_kat5_ref,
    MAX(msr_icw_zr75_ref)      AS msr_icw_zr75_ref,
    MAX(msr_glo_zr75_ref)      AS msr_glo_zr75_ref,
    MAX(msr_hb_kat6a_ref)      AS msr_hb_kat6a_ref,
    MAX(msr_hb_hela_ref)       AS msr_hb_hela_ref,
    MAX(msr_hbp_kat6a_ref)     AS msr_hbp_kat6a_ref,
    MAX(msr_hbp_hela_ref)      AS msr_hbp_hela_vref,
    MAX(msr_lclc_97tm1_ref)      AS msr_lclc_97tm1_ref
	
	FROM(SELECT
    MAX(msr_kat6a_vw)         AS msr_kat6a_vw,
    MAX(msr_kat6b_vw)         AS msr_kat6b_vw,
    MAX(msr_kat7_vw)          AS msr_kat7_vw,
    MAX(msr_kat8_vw)          AS msr_kat8_vw,
    MAX(msr_kat5_vw)          AS msr_kat5_vw,
    MAX(msr_icw_zr75_vw)      AS msr_icw_zr75_vw,
    MAX(msr_glo_zr75_vw)      AS msr_glo_zr75_vw,
    MAX(msr_hb_kat6a_vw)      AS msr_hb_kat6a_vw,
    MAX(msr_hb_hela_vw)       AS msr_hb_hela_vw,
    MAX(msr_hbp_kat6a_vw)     AS msr_hbp_kat6a_vw,
    MAX(msr_hbp_hela_vw)      AS msr_hbp_hela_vw,
    MAX(msr_lclc_97tm1_vw)    AS msr_lclc_97tm1_vw,
    formatted_id,
    CASE
        WHEN MAX(msr_kat6a_vw) IS NOT NULL THEN
            reference_compounds
    END                       AS msr_kat6a_ref,
    CASE
        WHEN MAX(msr_kat5_vw) IS NOT NULL THEN
            reference_compounds
    END                       AS msr_kat5_ref,
    CASE
        WHEN MAX(msr_kat6b_vw) IS NOT NULL THEN
            reference_compounds
    END                       AS msr_kat6b_ref,
    CASE
        WHEN MAX(msr_kat7_vw) IS NOT NULL THEN
            reference_compounds
    END                       AS msr_kat7_ref,
    CASE
        WHEN MAX(msr_kat8_vw) IS NOT NULL THEN
            reference_compounds
    END                       AS msr_kat8_ref,
    CASE
        WHEN MAX(msr_icw_zr75_vw) IS NOT NULL THEN
            reference_compounds
    END                       AS msr_icw_zr75_ref,
    CASE
        WHEN MAX(msr_glo_zr75_vw) IS NOT NULL THEN
            reference_compounds
    END                       AS msr_glo_zr75_ref,
    CASE
        WHEN MAX(msr_hb_kat6a_vw) IS NOT NULL THEN
            reference_compounds
    END                       AS msr_hb_kat6a_ref,
    CASE
        WHEN MAX(msr_hb_hela_vw) IS NOT NULL THEN
            reference_compounds
    END                       AS msr_hb_hela_ref,
    CASE
        WHEN MAX(msr_hbp_kat6a_vw) IS NOT NULL THEN
            reference_compounds
    END                       AS msr_hbp_kat6a_ref,
    CASE
        WHEN MAX(msr_hbp_hela_vw) IS NOT NULL THEN
            reference_compounds
    END                       AS msr_hbp_hela_ref,
    CASE
        WHEN MAX(msr_lclc_97tm1_vw) IS NOT NULL THEN
            reference_compounds
    END                       AS msr_lclc_97tm1_ref
FROM
    (
        SELECT
            CASE
                WHEN assay_type = 'TR-FRET' THEN
                    a.formatted_id
            END               AS trfret_ref,
            CASE
                WHEN assay_type = 'ICW' THEN
                    a.formatted_id
            END               AS icw_ref,
            CASE
                WHEN assay_type = 'CellTiter-Glo' THEN
                    a.formatted_id
            END               AS glo_ref,
            CASE
                WHEN assay_type = 'HiBit' THEN
                    a.formatted_id
            END               AS hibit_ref,
            CASE
                WHEN assay_type = 'HiBit Plasma' THEN
                    a.formatted_id
            END               AS hibit_plasma_ref,
            CASE
                WHEN target = 'KAT6A'
                     AND cofactor = 'Acetyl-CoA'
                     AND cofactor_conc = '0.5 µM'
                     AND assay_type = 'TR-FRET'
                     AND c.ic50_nm_kat6a IS NOT NULL THEN
                    ic50
            END               AS msr_kat6a_vw,
            CASE
                WHEN target = 'KAT6B'
                     AND cofactor = 'Acetyl-CoA'
                     AND cofactor_conc = '3 uM'
                     AND assay_type = 'TR-FRET'
                     AND c.ic50_nm_kat6b IS NOT NULL THEN
                    ic50
            END               AS msr_kat6b_vw,
            CASE
                WHEN target = 'KAT7'
                     AND cofactor = 'Acetyl-CoA'
                     AND cofactor_conc = '3 uM'
                     AND assay_type = 'TR-FRET'
                     AND c.ic50_nm_kat7 IS NOT NULL THEN
                    ic50
            END               AS msr_kat7_vw,
            CASE
                WHEN target = 'KAT8'
                     AND cofactor = 'Acetyl-CoA'
                     AND cofactor_conc = '3 uM'
                     AND assay_type = 'TR-FRET'
                     AND c.ic50_nm_kat8 IS NOT NULL THEN
                    ic50
            END               AS msr_kat8_vw,
            CASE
                WHEN target = 'KAT5'
                     AND cofactor = 'Acetyl-CoA'
                     AND cofactor_conc = '3 uM'
                     AND assay_type = 'TR-FRET'
                     AND c.ic50_nm_kat5 IS NOT NULL THEN
                    ic50
            END               AS msr_kat5_vw,
            CASE
                WHEN cell_line = 'ZR75-1'
                     AND assay_type = 'ICW'
                     AND c.ic50_nm_icw_zr75_1 IS NOT NULL THEN
                    ic50
            END               AS msr_icw_zr75_vw,
            CASE
                WHEN cell_line = 'ZR75-1'
                     AND assay_type = 'CellTiter-Glo'
                     AND c.ic50_nm_zr75_1 IS NOT NULL THEN
                    ic50
            END               AS msr_glo_zr75_vw,
            CASE
                WHEN cell_line = 'Hela-HiBit-KAT6A'
                     AND assay_type = 'HiBit'
                     AND c.ic50_nm_hibit IS NOT NULL THEN
                    ic50
            END               AS msr_hb_kat6a_vw,
            CASE
                WHEN cell_line = 'Hela'
                     AND assay_type = 'HiBit' THEN
                    ic50
            END               AS msr_hb_hela_vw,
            CASE
                WHEN cell_line = 'Hela-HiBit-KAT6A'
                     AND assay_type = 'HiBit Plasma'
                     AND c.ic50_nm_hibitplasma IS NOT NULL THEN
                    ic50
            END               AS msr_hbp_kat6a_vw,
            CASE
                WHEN cell_line = 'Hela'
                     AND assay_type = 'HiBit Plasma' THEN
                    ic50
            END               AS msr_hbp_hela_vw,
            CASE
                WHEN cell_line = 'LCLC-97TM1'
                     AND assay_type = 'CellTiter-Glo' THEN
                    ic50
            END               AS msr_lclc_97tm1_vw,
            assay_type,
            b.formatted_id,
            cell_line,
            cofactor_conc,
            cofactor,
            target,
            a.formatted_id    AS reference_compounds
        FROM
            kat6a_msr_vw  a, kat6a_summary_vw b
            JOIN summ_kat6a    c ON b.formatted_id = c.x01_formatted_id
    )
GROUP BY
    formatted_id,
    reference_compounds)
	GROUP BY
    formatted_id
