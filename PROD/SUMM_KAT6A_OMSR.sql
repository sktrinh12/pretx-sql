SELECT
    max(omsr_kat6a_vw) AS omsr_kat6a_vw,
    max(omsr_kat6b_vw) AS omsr_kat6b_vw,
    max(omsr_kat7_vw) AS omsr_kat7_vw,
    max(omsr_kat8_vw) AS omsr_kat8_vw,
    max(omsr_kat5_vw) AS omsr_kat5_vw,
    max(omsr_icw_zr75_vw) AS omsr_icw_zr75_vw,
    max(omsr_glo_zr75_vw) AS omsr_glo_zr75_vw,
    max(omsr_hb_kat6a_vw) AS omsr_hb_kat6a_vw,
    max(omsr_hb_hela_vw) AS omsr_hb_hela_vw,
    max(omsr_hbp_kat6a_vw) AS omsr_hbp_kat6a_vw,
    max(omsr_hbp_hela_vw) AS omsr_hbp_hela_vw,
    formatted_id
  FROM
    (SELECT
       CASE
           WHEN target = 'KAT6A'
                AND cofactor = 'Acetyl-CoA'
                AND cofactor_conc = '0.5 µM'
                AND assay_type = 'TR-FRET'
                AND c.ic50_nm_kat6a IS NOT NULL THEN ic50
       END AS omsr_kat6a_vw,
       CASE
           WHEN target = 'KAT6B'
                AND cofactor = 'Acetyl-CoA'
                AND cofactor_conc = '3 uM'
                AND assay_type = 'TR-FRET'
                AND c.ic50_nm_kat6b IS NOT NULL THEN ic50
       END AS omsr_kat6b_vw,
       CASE
           WHEN target = 'KAT7'
                AND cofactor = 'Acetyl-CoA'
                AND cofactor_conc = '3 uM'
                AND assay_type = 'TR-FRET'
                AND c.ic50_nm_kat7 IS NOT NULL THEN ic50
       END AS omsr_kat7_vw,
       CASE
           WHEN target = 'KAT8'
                AND cofactor = 'Acetyl-CoA'
                AND cofactor_conc = '3 uM'
                AND assay_type = 'TR-FRET'
                AND c.ic50_nm_kat8 IS NOT NULL THEN ic50
       END AS omsr_kat8_vw,
       CASE
           WHEN target = 'KAT5'
                AND cofactor = 'Acetyl-CoA'
                AND cofactor_conc = '3 uM'
                AND assay_type = 'TR-FRET'
                AND c.ic50_nm_kat5 IS NOT NULL THEN ic50
       END AS omsr_kat5_vw,
       CASE
           WHEN cell_line = 'ZR75-1'
                AND assay_type = 'ICW'
                AND c.ic50_nm_icw_zr75_1 IS NOT NULL THEN ic50
       END AS omsr_icw_zr75_vw,
       CASE
           WHEN cell_line = 'ZR75-1'
                AND assay_type = 'CellTiter-Glo'
                AND c.ic50_nm_zr75_1 IS NOT NULL THEN ic50
       END AS omsr_glo_zr75_vw,
       CASE
           WHEN cell_line = 'Hela-HiBit-KAT6A'
                AND assay_type = 'HiBit'
                AND c.ic50_nm_hibit IS NOT NULL THEN ic50
       END AS omsr_hb_kat6a_vw,
       CASE
           WHEN cell_line = 'Hela'
                AND assay_type = 'HiBit' THEN ic50
       END AS omsr_hb_hela_vw,
       CASE
           WHEN cell_line = 'Hela-HiBit-KAT6A'
                AND assay_type = 'HiBit Plasma'
                AND c.ic50_nm_hibitplasma IS NOT NULL THEN ic50
       END AS omsr_hbp_kat6a_vw,
       CASE
           WHEN cell_line = 'Hela'
                AND assay_type = 'HiBit Plasma' THEN ic50
       END AS omsr_hbp_hela_vw,
       assay_type,
       b.formatted_id,
       cell_line,
       cofactor_conc,
       cofactor,
       target
     FROM
       kat6a_omsr_vw a,
       kat6a_summary_vw b
     JOIN summ_kat6a c ON b.formatted_id=c.x01_formatted_id)
  GROUP BY formatted_id
