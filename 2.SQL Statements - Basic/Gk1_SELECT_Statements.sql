/* USE sql_inventory; */
USE sql_store;

SELECT * FROM  customers 
 -- WHERE customer_id = 1
ORDER by birth_date;
-- *********************************************
SELECT 
	first_name,last_name, points
FROM customers;
-- *********************************************
SELECT 
	first_name,last_name, points , points * 10 AS 'discount_Price' -- single/Double Quotes are optional if its only one word
FROM customers;
-- *********************************************
SELECT *
FROM customers;

SELECT 
	DISTINCT state
FROM customers;

-- *********************************************

-- Exercise:

SELECT * 
FROM products;

SELECT 
	name, unit_price, unit_price * 1.1 AS new_price
FROM products;
	
