-- Who churns most?

SELECT

    country,

    COUNT(*) AS total_customers,

    SUM(churn) AS churned_customers,

    ROUND(AVG(churn) * 100, 2) AS churn_rate

FROM customers

GROUP BY country

ORDER BY churn_rate DESC;

-- Which age group churns the most 

SELECT

    CASE

        WHEN age < 30 THEN 'Young'

        WHEN age BETWEEN 30 AND 50 THEN 'Middle Age'

        ELSE 'Senior'

    END AS age_group,

    COUNT(*) AS total_customers,

    ROUND(AVG(churn) * 100, 2) AS churn_rate

FROM customers

GROUP BY age_group

ORDER BY churn_rate DESC;

-- Acti