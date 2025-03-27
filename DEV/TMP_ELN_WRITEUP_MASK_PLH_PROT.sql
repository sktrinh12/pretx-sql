SELECT 
    w.experiment_id,
    w.entry_date,
    p.protocol_id,
    p.protocol,
    (LENGTH(w.write_up) - LENGTH(REPLACE(w.write_up, '{{', ''))) / 2 AS match_count,
    w.write_up
FROM 
    eln_writeup w
JOIN 
    tm_experiments e ON w.experiment_id = e.experiment_id
JOIN 
    tm_protocols p ON e.protocol_id = p.protocol_id
WHERE 
    p.protocol_id IN (81,481,501,522,322,303,142,261)
    AND INSTR(w.write_up, '{{') > 0
