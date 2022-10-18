WITH
cte_1 AS (
    SELECT * FROM  {{ source('raw_data', 'transactions') }}
    )

SELECT
    *,
    SAFE_MULTIPLY(QTY, `VALUE`) AS TOTAL_SALES
FROM cte_1