USE sql_store;

-- All Conditional Operators in SQL

SELECT *
FROM customers;

SELECT *
FROM customers
WHERE points > 3000;

SELECT *
FROM customers
WHERE birth_date > '1990-01-01'; -- Date Comparision

SELECT *
FROM customers
WHERE points >= 2273;

SELECT *
FROM customers
WHERE points < 1000;

SELECT *
FROM customers
WHERE points <= 947;

SELECT * 
FROM customers
WHERE state = 'VA';

SELECT * 
FROM customers
WHERE state = 'va';
-- Note: values to be compared in non Case Sensitive

SELECT *
FROM customers
WHERE state != 'VA';

SELECT *
FROM customers
WHERE state <> 'VA';

-- Condition Operators Ends.

-- Exercise:

SELECT * 
FROM orders;

-- GET THE ORDER PLACED ONLY IN 2019.
SELECT *
FROM orders
WHERE order_date > '2019-01-01';

SELECT *
FROM orders
WHERE order_date LIKE '2018%';
