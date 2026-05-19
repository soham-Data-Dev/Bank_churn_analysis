-- How active each customer is every month

WITH monthly_txn AS (

    SELECT
        customer_id,

        DATE_TRUNC('month', date) AS txn_month,

        COUNT(*) AS txn_count,

        SUM(amount) AS total_spend

    FROM transactions

    GROUP BY customer_id, txn_month
)

SELECT

    customer_id,

    AVG(txn_count) AS avg_monthly_txn,

    AVG(total_spend) AS avg_monthly_spend

FROM monthly_txn

GROUP BY customer_id

ORDER BY avg_monthly_spend DESC;


-- Which banking channel customer prefer?

SELECT

    channel,

    COUNT(*) AS total_transactions,

   ROUND(AVG(amount)::numeric, 2) AS avg_transaction_amount

FROM transactions

GROUP BY channel

ORDER BY total_transactions DESC;

-- Where is money flowing?

SELECT

    transaction_type,

    COUNT(*) AS total_transactions,

    ROUND(SUM(amount)::numeric, 2) AS total_amount,

    ROUND(AVG(amount)::numeric, 2) AS avg_amount

FROM transactions

GROUP BY transaction_type

ORDER BY total_amount DESC;





































