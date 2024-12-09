WITH eln_filtered AS (
    SELECT 
        experiment_id,
        entry_date,
        protocol_id,
        match_count,
        write_up
    FROM TMP_ELN_WRITEUP_MASK_PLH_PROT w
    WHERE protocol_id IN (
          481,501
    )
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
        CAST(REGEXP_SUBSTR(ef.write_up, '\{\{([^:]+):([^}]+)\}\}', 1, mp.position, NULL, 2) AS VARCHAR2(50)) AS unique_id,
        CASE WHEN mp.position = 1 THEN
          ef.write_up
        ELSE NULL END AS write_up
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
    unique_id,
    write_up
FROM 
    matches_extracted
ORDER BY 
    experiment_id, match_position
