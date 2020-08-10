-- how to find missing values
SELECT *
FROM customers
WHERE phone IS NULL

-- will find orders that havent shipped
SELECT *
FROM orders
WHERE shipped_date IS NULL

-- Order by column values
SELECT *
FROM customers
ORDER BY state, first_name

SELECT *
FROM customers
ORDER BY state DESC, first_name

SELECT first_name, last_name, 10 AS points
FROM customers
ORDER BY last_name ASC;

SELECT unit_price * quantity AS total_price
FROM order_items
ORDER BY total_price;

SELECT order_id, unit_price * quantity AS total_price
FROM order_items
WHERE order_id = 2
ORDER BY total_price;

-- can put limits on to only display certain amounts of info
SELECT *
FROM customers
LIMIT 6, 3
-- page 1: 1-3
-- page 2: 4-6 

-- gives top 3 customers based on points
-- LIMIT CLAUSE SHOULD ALWAYS COME AT THE END
SELECT *
FROM customers
ORDER BY points DESC 
LIMIT 3;