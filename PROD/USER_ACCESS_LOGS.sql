WITH user_query AS (
    SELECT
        a.ISID,
        TO_CHAR(a.last_run, 'YYYY-MM-DD HH24:MI:SS') AS last_run,
        'QUERY ' || COALESCE(a.NAME, '') || ' ' || COALESCE(c.DESCRIPTION, '') AS activity_descr,
        COALESCE(a.LAST_RESULT_COUNT, 0) AS count
    FROM
        DS3_APPDATA.USER_QUERIES a
    LEFT JOIN
        DS3_APPDATA.PROJECTS c
        ON a.PROJECT_ID = c.PROJECT_ID
),
a_audit AS (
    SELECT
        isid,
        TO_CHAR(time_stamp, 'YYYY-MM-DD HH24:MI:SS') AS last_run, 
        action || ' ' || ip AS activity_descr
    FROM
        ds3_userdata.admin_audit
),
dtx_audit AS (
    SELECT
        isid,
        TO_CHAR(last_run, 'YYYY-MM-DD HH24:MI:SS') AS last_run, 
        audit_type || ' ' || project || ' ' || details AS activity_descr
    FROM
        DS3_APPDATA.DOTMATICS_AUDIT
),
union_tables AS (
    SELECT isid, last_run, activity_descr, count FROM user_query
    UNION ALL
    SELECT isid, last_run, activity_descr, NULL FROM a_audit
    UNION ALL
    SELECT isid, last_run, activity_descr, NULL FROM dtx_audit
)
SELECT * FROM union_tables
ORDER BY isid, last_run DESC
