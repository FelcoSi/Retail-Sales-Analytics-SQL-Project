
SELECT
    c.customer_id,
    c.name,
    MAX(o.order_date) AS last_order_date,
    CURRENT_DATE - MAX(o.order_date) AS days_since_last_order
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
GROUP BY c.customer_id, c.name
HAVING CURRENT_DATE - MAX(o.order_date) > 90
ORDER BY days_since_last_order DESC;
