--Which high-value customers left?

SELECT

    customer_id,

    balance,

    estimated_salary,

    churn

FROM customerss1

WHERE balance > 100000
AND churn = 1

ORDER BY balance DESC;

-- Moving Avg Balance trend

SELECT

    customer_id,

    tenure,

    balance,

    AVG(balance) OVER(

        PARTITION BY customer_id

        ORDER BY tenure

        ROWS BETWEEN 2 PRECEDING AND CURRENT ROW

    ) AS moving_avg_balance

FROM customerss1;