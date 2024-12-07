WITH sub_data AS (
    SELECT
        pl.experiment_id,
        pl.entry_date,
        pl.match_position,
        pl.mask_id,
        pl.unique_id,
        e.write_up
    FROM tmp_eln_writeup_plhlder_extr pl
    JOIN eln_writeup e
    ON pl.experiment_id = e.experiment_id
),
mapped_data AS (
    SELECT
        wpe.experiment_id,
        wpe.entry_date,
        wpe.mask_id AS orig_mask_id,
        wpe.unique_id AS orig_unique_id,
        CASE
            WHEN REGEXP_LIKE(wpe.mask_id, '^\d+$') THEN TO_NUMBER(wpe.mask_id)
            ELSE COALESCE(tmp_alt.mask_id, NULL)
        END AS mask_id,
        CASE
            WHEN REGEXP_LIKE(wpe.unique_id, '\d+$') THEN TO_NUMBER(REGEXP_SUBSTR(wpe.unique_id, '\d+$'))
            ELSE NULL
        END AS unique_id,
        COALESCE(tmp.mask_text, tmp_alt.mask_text) AS mask_text,
        tmp.mask_title,
        COALESCE(tmp.source_table, tmp_alt.source_table) AS source_table
    FROM sub_data wpe
    LEFT JOIN tmp_plhlder_extr_source_table tmp
        ON REGEXP_LIKE(wpe.mask_id, '^\d+$') AND TO_NUMBER(wpe.mask_id) = tmp.mask_id
    LEFT JOIN tmp_plhlder_extr_source_table tmp_alt
        ON NOT REGEXP_LIKE(wpe.mask_id, '^\d+$') AND wpe.mask_id = tmp_alt.mask_title
),
interpolated_data AS (
    SELECT
        md.*,
        CASE md.source_table
            WHEN 'eln_products' THEN
            '<span style="color: #6A7FDB">' ||
            REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(md.mask_text,
            '{PRODUCT_NAME}', p.product_name),
            '{QUANTITY}', round(p.quantity, 2)),
            '{QUANTITY_UNITS}', p.quantity_units),
            '{MMOL}', ROUND(p.mmol, 3)),
            '{YIELD}', ROUND(p.yield, 3)),
            '{FORMULA}', p.formula),
            '{MMOL_UNITS}', 'mmol') ||
            '</span>'
            WHEN 'eln_reagents' THEN
            '<span style="color: #0B3142">' ||
            REPLACE(REPLACE(REPLACE(REPLACE(md.mask_text,
            '{REACTANT_NAME}', r.reactant_name),
            '{QUANT}', round(r.reactant_mass, 2)),
            '{MMOL}', ROUND(r.mmol, 3)),
            '{QUANTITY}', '?') ||
            '</span>'
            WHEN 'eln_solvents' THEN
            '<span style="color: #53DD6C">' ||
            REPLACE(REPLACE(REPLACE(REPLACE(md.mask_text,
            '{SOLVENT_NAME}', s.solvent_name),
            '{VOLUME}', s.volume),
            '{VOLUME_UNITS}', s.volume_units),
            '{QUANTITY}', '?') ||
            '</span>'
            WHEN 'eln_temp' THEN
            '<span style="color: #EB5E28">' ||
            REPLACE(md.mask_text,
            '{REACTION_TEMP}', t.reaction_temp) ||
            '</span>'
        END AS interpolated_text,
        '{{' || md.orig_mask_id || ':' || md.orig_unique_id || '}}' AS placeholder
    FROM mapped_data md
    LEFT JOIN eln_products p
    ON md.experiment_id = p.id
      AND md.unique_id = p.unique_id
      AND md.source_table = 'eln_products'
    LEFT JOIN eln_reagents r
    ON md.experiment_id = r.id
      AND md.unique_id = r.unique_id
      AND md.source_table = 'eln_reagents'
    LEFT JOIN eln_solvents s
    ON md.experiment_id = s.id
      AND md.unique_id = s.unique_id
      AND md.source_table = 'eln_solvents'
    LEFT JOIN eln_writeup t
    ON md.experiment_id = t.experiment_id
      AND md.source_table = 'eln_temp'
),
numbered_data AS (
    SELECT
    experiment_id,
    mask_title,
    mask_text,
    ROW_NUMBER() OVER (PARTITION BY experiment_id ORDER BY placeholder) AS rn,
    placeholder,
    interpolated_text
    FROM interpolated_data
),
base_data AS (
    SELECT
        s.experiment_id,
        s.entry_date,
        s.match_position,
        s.mask_id,
        s.unique_id,
        s.write_up,
        1 AS rn,
        (SELECT MAX(rn) FROM numbered_data nd WHERE nd.experiment_id = s.experiment_id) AS max_rn
    FROM sub_data s
),
recursive_replacement (
    experiment_id, entry_date, match_position, mask_id, unique_id, mask_title, mask_text, write_up, rn, max_rn
) AS (
    SELECT
        bd.experiment_id,
        bd.entry_date,
        bd.match_position,
        bd.mask_id,
        bd.unique_id,
        nd.mask_title,
        nd.mask_text,
        REGEXP_REPLACE(bd.write_up, nd.placeholder, nd.interpolated_text, 1, 0, 'i') AS write_up,
        bd.rn + 1 AS rn,
        bd.max_rn
    FROM base_data bd
    JOIN numbered_data nd ON bd.experiment_id = nd.experiment_id AND bd.rn = nd.rn
    WHERE bd.rn <= bd.max_rn
    UNION ALL
    SELECT
        rr.experiment_id,
        rr.entry_date,
        rr.match_position,
        rr.mask_id,
        rr.unique_id,
        rr.mask_title,
        rr.mask_text,
        REGEXP_REPLACE(rr.write_up, nd.placeholder, nd.interpolated_text, 1, 0, 'i') AS write_up,
        rr.rn + 1 AS rn,
        rr.max_rn
    FROM recursive_replacement rr
    JOIN numbered_data nd ON rr.experiment_id = nd.experiment_id AND rr.rn = nd.rn
    WHERE rr.rn <= rr.max_rn
)
SELECT
  experiment_id,
  entry_date,
  match_position,
  mask_id,
  unique_id,
  mask_title,
  mask_text,
  write_up
FROM recursive_replacement
WHERE rn = max_rn + 1
