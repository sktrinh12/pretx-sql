with cte_capital_ub as (
    select distinct isid from DS3_APPDATA.BROWSER_GROUPS_USERS
)
    select lower(isid) as isid from cte_capital_ub
order by isid
