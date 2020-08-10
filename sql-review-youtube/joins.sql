SELECT *
FROM orders
JOIN customers 
	  ON orders.customer_id = customers.customer_id;


SELECT order_id, first_name, last_name
FROM orders
JOIN customers 
	  ON orders.customer_id = customers.customer_id;


-- if you want values that both tables have you need to specifiy which table to pull from
-- for example customer_id is in both ids so orders.customer_id had to be specified 
SELECT order_id, orders.customer_id, first_name, last_name
FROM orders
JOIN customers 
	  ON orders.customer_id = customers.customer_id;

-- you can add aliases after the table declarations to make the lines of code shorter
SELECT order_id, o.customer_id, first_name, last_name
FROM orders o
JOIN customers c 
	  ON o.customer_id = c.customer_id;


SELECT o.product_id, p.product_id, quantity, o.unit_price
FROM order_items o  
JOIN products p
     ON o.product_id = p.product_id

-- How to join tables from different databases
SELECT * 
FROM order_items oi
JOIN sql_inventory.products p 
     ON oi.product_id = p.product_id


USE sql_hr;

SELECT 
	e.employee_id,
    e.first_name,
    m.first_name
FROM employees e
JOIN employees m
	 ON e.reports_to = m.employee_id;