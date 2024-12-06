SELECT
    a.experiment_id,
    a.entry_date,
    a.match_position,
    a.mask_id,
    a.unique_id,
    b.mask_title,
    b.mask_text,
    c.write_up
  FROM tmp_eln_writeup_plhlder_extr a
  JOIN tmp_plhlder_extr_source_table b ON to_char(a.mask_id) = to_char(b.mask_id)
  JOIN eln_writeup c ON a.experiment_id = c.experiment_id
  WHERE EXISTS
      (SELECT 1
       FROM tm_protocols p
       JOIN tm_experiments e ON p.protocol_id = e.protocol_id
       WHERE e.experiment_id = a.experiment_id
         AND p.protocol_id IN (
                                 501,
                                 481))
    AND c.write_up IS NOT NULL
    AND instr(c.write_up, '{{') > 0
  ORDER BY
    a.experiment_id DESC,
    a.match_position ASC
