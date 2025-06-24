
SELECT
    r.name AS region,
    EXTRACT(MONTH FROM o.order_date) AS month,
    SUM(o.amount) AS total_revenue
FROM orders o
JOIN customers c ON o.customer_id = c.customer_id
JOIN regions r ON c.region_id = r.region_id
GROUP BY r.name, month
ORDER BY r.name, month;
