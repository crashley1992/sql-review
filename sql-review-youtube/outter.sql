--Joining multple tables 
USE sql_store;

SELECT 
	o.order_id,
    o.order_date,
    c.first_name,
    c.last_name,
    os.name AS status
    
FROM orders o
JOIN customers c
	ON o.customer_id = c.customer_id
JOIN order_statuses os
	ON 	o.status = os.order_status_id

-- combined payments, payment_methods, clients tables
USE sql_invoicing;

SELECT 
	p.client_id,
    p.invoice_id,
    p.date,
    p.amount,
    p.payment_method,
    c.name AS client_name,
    pm.name AS pi_name
    
FROM payments p
JOIN clients c
	ON p.client_id = c.client_id
JOIN payment_methods pm
	ON p.payment_method = pm.payment_method_id

-- compound join conditions
SELECT *
FROM order_items oi
JOIN order_item_notes oin
	ON oi.order_id = oin.order_id
    AND oi.product_od = oin.product_id

-- Both queries conduct the same search
SELECT *
FROM orders o 
JOIN customers c 
	ON o.customer_id = c.customer_id;
    
-- Implicit Join Syntax
SELECT *
FROM orders o, customers c
WHERE o.customer_id = c.customer_id

-- inner joins will only give results based on join conditions
-- outter joins will give you all results
-- example if you wanted all custoemrs even without order id

USE sql_store;
SELECT 
	c.customer_id,
    c.first_name,
    o.order_id
FROM customers c 
LEFT JOIN orders o 
	ON c.customer_id = o.customer_id
ORDER BY c.customer_id

-- practice soluion
-- ORDER ITEMS, PRODCUTS ITEMS
USE sql_store;

SELECT 
	oi.product_id,
    oi.quantity,
    p.name
FROM order_items oi
RIGHT JOIN products p 
	ON oi.product_id = p.product_id
ORDER BY oi.product_id ASC

-- Practice problem for me
USE sql_store;

SELECT 
	c.customer_id,
    c.last_name,
    o.order_id,
    o.order_date,
    o.shipped_date,
    oi.quantity,
    oi.unit_price,
    (oi.quantity + oi.unit_price) AS client_order_total
FROM customers c
JOIN orders o
	ON c.customer_id = o.customer_id
JOIN order_items oi 
	ON o.order_id = oi.order_id
WHERE shipped_date IS NULL
ORDER BY client_order_total DESC