WITH t AS (
    SELECT
        formatted_id,
        to_number(substr(formatted_id, 4, 7))          reg_data,
        project_name,
        to_date(created_date)                          AS reg_date,
        ROW_NUMBER()
        OVER(PARTITION BY formatted_id
             ORDER BY to_date(created_date) ASC
        )                                              AS r
    FROM
             assign_proj a
        JOIN c$pinpoint.reg_projects b ON a.project = b.id
    WHERE
        project IN ( 254 )
)
SELECT
    formatted_id,
    reg_data,
    project_name,
    reg_date
FROM
    t
WHERE
    r = 1
UNION ALL
SELECT
    formatted_id,
    reg_id,
    project_name,
    reg_date
FROM
         c$pinpoint.reg_data a
    JOIN c$pinpoint.reg_projects b ON a.project_id = b.id
WHERE
        reg_id > 0
    AND project_id IN ( 254 )
