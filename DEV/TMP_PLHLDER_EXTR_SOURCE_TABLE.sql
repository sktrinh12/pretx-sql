SELECT 
    t.*,
    CASE
        WHEN REGEXP_LIKE(mask_text, '{REACTANT_NAME}') THEN 'eln_reagents'
        WHEN REGEXP_LIKE(mask_text, '{PRODUCT_NAME}') THEN 'eln_products'
        WHEN REGEXP_LIKE(mask_text, '{SOLVENT_NAME}') THEN 'eln_solvents'
        WHEN REGEXP_LIKE(mask_text, '{REACTION_TEMP}') THEN 'eln_temp'        
        ELSE NULL
    END AS source_table
FROM 
    TM_TEXT_MASKS t
