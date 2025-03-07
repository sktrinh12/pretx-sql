WITH cte_capital_ub AS
    (SELECT DISTINCT isid
     FROM ds3_appdata.browser_groups_users)
  SELECT lower(isid) AS isid
  FROM cte_capital_ub
  ORDER BY isid
