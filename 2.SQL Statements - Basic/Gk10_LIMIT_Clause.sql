
USE sql_store;

SELECT * 
FROM customers;

SELECT * 
FROM customers
LIMIT 3;

SELECT * 
FROM customers
LIMIT 3 , 5; -- Offset (3) and then pick 5 records from that.

-- Exercies
-- Limit to three loyal customers

SELECT * 
FROM customers
ORDER BY points DESC
LIMIT 3;  

-- LIMIT should be come atlast only. Order of Clause is very important.

