SELECT 
        w.experiment_id,
        w.ENTRY_DATE,
        p.protocol,
        p.protocol_id
    FROM eln_writeup w     
   JOIN tm_experiments e ON w.experiment_id = e.experiment_id
   JOIN tm_protocols p ON p.protocol_id = e.protocol_id
      AND p.protocol_id IN (501, 521, 481, 522, 261, 81) 
WHERE INSTR(w.write_up, '{{') > 0
