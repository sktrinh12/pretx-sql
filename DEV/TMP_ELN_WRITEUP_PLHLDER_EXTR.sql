WITH eln_filtered AS (
    SELECT 
        experiment_id,
        entry_date,
        write_up,
        (LENGTH(write_up) - LENGTH(REPLACE(write_up, '{{', ''))) / 2 AS match_count
    FROM eln_writeup w
    WHERE 
        EXISTS (
            SELECT 1
            FROM tm_protocols p
            JOIN tm_experiments e ON p.protocol_id = e.protocol_id
            WHERE e.experiment_id = w.experiment_id
            AND p.protocol_id IN (481,501,522,322,303,142,261)
        )
        AND INSTR(write_up, '{{') > 0 -- Filter rows containing '{{'
),
match_positions AS (
    -- Generate positions up to the maximum possible matches (10 for testing)
    SELECT LEVEL AS position
    FROM dual
    CONNECT BY LEVEL <= 10
),
matches_extracted AS (
    -- Extract dynamic matches using REGEXP_SUBSTR for each match position
    SELECT 
        ef.experiment_id,
        ef.entry_date,
        mp.position AS match_position,
        CAST(REGEXP_SUBSTR(ef.write_up, '\{\{([^:]+):([^}]+)\}\}', 1, mp.position, NULL, 1) AS VARCHAR2(50)) AS mask_id,
        CAST(REGEXP_SUBSTR(ef.write_up, '\{\{([^:]+):([^}]+)\}\}', 1, mp.position, NULL, 2) AS VARCHAR2(50)) AS unique_id
    FROM 
        eln_filtered ef
    JOIN 
        match_positions mp
        ON mp.position <= ef.match_count
)
SELECT 
    experiment_id,
    entry_date,
    match_position,
    mask_id,
    unique_id
FROM 
    matches_extracted
ORDER BY 
    experiment_id, match_position
