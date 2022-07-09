WITH
cte_1 AS (
    select * from {{ ref('my_first_dbt_model') }} where id = 1)

select
    *,
    'Hello World' AS col
FROM cte_1