SELECT *
FROM customers
-- WHERE customer_id = 1
ORDER BY last_name;
-- **************************************************************

SELECT last_name, first_name
FROM customers
-- **************************************************************

SELECT 
	last_name, 
    points, 
    -- this sets the new points counter to be names as discount_factor
    (points + 10) + 100 AS discount_factor
FROM customers
-- **************************************************************

SELECT 
	name,
	unit_price, 
    unit_price * 1.1 AS new_unit_price
FROM products
-- **************************************************************

SELECT *
FROM orders
WHERE order_date >= '2018-01-01';
-- **************************************************************

SELECT *
FROM customers
WHERE birth_date > '1990-01-01' AND points > 1000;

-- **************************************************************
-- Logical operators also have an order of operations like with + *
-- AND will be looked at before OR

SELECT *
FROM customers
WHERE birth_date > '1990-01-01' OR points > 1000 AND
	  state = 'VA'
-- cleaner syntax
SELECT *
FROM customers
WHERE birth_date > '1990-01-01' OR 
	  (points > 1000 AND state = 'VA')

-- **************************************************************
SELECT *
FROM customers
WHERE NOT birth_date <= '1990-01-01' AND points <= 1000

-- **************************************************************
SELECT *
FROM order_items
WHERE order_id = 6 AND unit_price * quantity > 30;
