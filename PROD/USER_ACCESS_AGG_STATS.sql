with cte_capital_ub as (
    select distinct isid from DS3_APPDATA.BROWSER_GROUPS_USERS
),
cte_ub as (
    select lower(isid) as isid from cte_capital_ub
)
SELECT 
    ub.isid AS USER_NAME,
    CAST(MIN(ual.LAST_RUN) AS DATE) AS first_use,
    CAST(MAX(ual.LAST_RUN) AS DATE) AS recent_use,
    COUNT(*) AS total_interactions,
    SUM(CASE WHEN REGEXP_LIKE(ual.activity_descr, 'login', 'i')
        THEN 1 ELSE 0 END) AS login_count,
    SUM(CASE WHEN REGEXP_LIKE(ual.activity_descr, 'query', 'i')
        THEN 1 ELSE 0 END) AS query_count,
    COUNT(DISTINCT ual.activity_descr) AS unique_projects_accessed,
    ROUND(AVG(CASE WHEN ual.count IS NOT NULL THEN ual.count END), 4) AS avg_queries_per_project,
    ROUND(AVG(CASE WHEN ual.count IS NULL AND REGEXP_LIKE(ual.activity_descr, 'query', 'i') THEN 1 ELSE 0 END), 4) AS avg_user_queries
FROM cte_ub ub
LEFT JOIN DS3_USERDATA.user_access_logs ual 
    ON ub.isid = ual.isid
GROUP BY ub.isid
ORDER BY ub.isid
