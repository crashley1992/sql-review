# sql-review
Adding queries and notes from sql youtube video as well as custom queries written while using db data as a sandbox.

*REGEX*
-- ^ beginning
-- $ end
-- | logical or 
-- [abcd]
-- [a-f]e can set range for characters to before before a specific character

*INNER JOINS*
Inner joins don't requre the INNER keyword in query. Will provide exact match values

SELECT order_id, orders.customer_id, first_name, last_name
FROM orders
JOIN customers 
	  ON orders.customer_id = customers.customer_id;

*OUTTER JOIN*
OUTTER is not required. Can just use LEFT or RIGHT with JOIN and outter will run.
Great for getting all values from column including NULL values

USE sql_store;
SELECT 
	c.customer_id,
    c.first_name,
    o.order_id
FROM customers c <= customers is the left table
LEFT JOIN orders o <= a right join would not show null order values for shipped_date
	ON c.customer_id = o.customer_id
ORDER BY c.customer_id