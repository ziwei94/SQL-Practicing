SELECT
     c.customer_id,
     c.first_name,
     c.last_name,
     SUM(oi.quantity * oi.unit_price) AS total_sale
FROM customers c
JOIN orders o USING (customer_id)
JOIN order_items oi USING (order_id)
WHERE state = 'VA'
GROUP BY  
     c.customer_id,
     c.first_name,
     c.last_name
HAVING total_sale > 100 