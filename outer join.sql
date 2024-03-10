SELECT 
	 o.order_date,
     o.order_id,
     c.first_name,
     sh.name AS shipper,
     os.name AS status
FROM orders o
JOIN customers c
     ON o.customer_id = c.customer_id
LEFT JOIN shippers sh
     ON o.shipper_id = sh.shipper_id
JOIN order_statuses os
     ON o.status = os.order_status_id