USE sql_store;

SELECT * 
FROM customers;

SELECT *
FROM customers
WHERE last_name LIKE 'b%';

SELECT *
FROM customers
WHERE last_name LIKE '%b%'; -- somewhere b

SELECT *
FROM customers
WHERE last_name LIKE 'b_____'; -- UnderScore (_) matched exactly same character

SELECT *
FROM customers
WHERE last_name LIKE '_____y';

-- '%' = Any number of characters
-- '_' (Underscore) Single character match.

-- Exercise

SELECT  *
FROM customers
WHERE address LIKE '%trail%' OR
		address LIKE '%avenue%';

SELECT * 
FROM customers
WHERE phone LIKE '%9';

SELECT * 
FROM customers
WHERE phone NOT LIKE '%9';