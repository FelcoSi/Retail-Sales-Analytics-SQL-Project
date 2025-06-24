
SELECT
    sr.name AS sales_rep,
    r.name AS region,
    COUNT(o.order_id) AS total_orders,
    SUM(o.amount) AS total_sales
FROM orders o
JOIN sales_reps sr ON o.sales_rep_id = sr.sales_rep_id
JOIN regions r ON sr.region_id = r.region_id
GROUP BY sr.name, r.name
ORDER BY total_sales DESC
LIMIT 10;
