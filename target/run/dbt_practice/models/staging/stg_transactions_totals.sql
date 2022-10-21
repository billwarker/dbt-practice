

  create or replace view `dbt-practice-dev`.`staging`.`stg_transactions_totals`
  OPTIONS()
  as WITH
cte_1 AS (
    SELECT * FROM  `dbt-practice-355719`.`raw_data`.`transactions`
    )

SELECT
    *,
    SAFE_MULTIPLY(QTY, `VALUE`) AS TOTAL_SALES
FROM cte_1;

