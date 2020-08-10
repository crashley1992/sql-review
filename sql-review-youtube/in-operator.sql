-- USE in WHEN YOU WANT TO COMPARE ATTRIBUTES
SELECT *
FROM customers
WHERE state NOT IN ('VA', 'FL', 'GA');

SELECT * 
FROM products
WHERE quantity_in_stock IN (49,38,72)

SELECT * 
FROM customers
WHERE points BETWEEN 1000 AND 3000;

-- Gives all customers who's last name starts with b. 
-- the % allows anything that follows
SELECT * 
FROM customers
WHERE last_name LIKE 'b%'

-- this says any number of characters before or after b
SELECT * 
FROM customers
WHERE last_name LIKE '%b%'

-- using the _ is more strict. Below says length has to be 2 characters
-- and last letter is y
SELECT * 
FROM customers
WHERE last_name LIKE '_y'

-- another example
SELECT * 
FROM customers
WHERE last_name LIKE 'b_____y'

SELECT phone
FROM customers
WHERE phone LIKE '___-___-___9';

SELECT *
FROM customers
WHERE address LIKE '%trail%' OR 
	  address  LIKE  '%avenue%';


-- Using regular expression negates the need for % card
SELECT *
FROM customers
WHERE last_name REGEXP 'field'
-- ^ can be used for the start of a string must have
-- $ can be used for the end of a string must have
-- | is the or operator so the query below is has 'field or mac'
SELECT *
FROM customers
WHERE last_name REGEXP 'field|mac'

-- queries for a word that has e in it and [] specifiy what letters can come before
SELECT *
FROM customers
WHERE last_name REGEXP '[gim]e'

-- range from a to h
SELECT *
FROM customers
WHERE last_name REGEXP '[a-h]e'

-- ^ beginning
-- $ end
-- | logical or 
-- [abcd]
-- [a-f]

SELECT *
FROM customers
WHERE first_name REGEXP 'elka' OR 'ambur';

SELECT *
FROM customers
WHERE last_name REGEXP 'ey$|on$';

SELECT *
FROM customers
WHERE last_name REGEXP '^my|se';

SELECT *
FROM customers
WHERE last_name REGEXP 'b[ru]';