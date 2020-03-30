USE sql_store;

SELECT *
FROM customers
WHERE state = 'VA' OR 'CO' OR 'FL';  -- No Error but its wont work as expected

SELECT * 
FROM customers
WHERE state = 'VA' OR state = 'CO' OR state = 'FL';

-- Using IN clause

SELECT *
FROM customers
WHERE state IN ('VA','CO','FL');

-- Exercise:

SELECT *
FROM products;

SELECT * 
FROM products
WHERE quantity_in_stock IN ('49', 38, 70); -- For number - quotes are optional.
