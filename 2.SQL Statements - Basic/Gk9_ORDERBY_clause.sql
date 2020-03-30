USE sql_store;

SELECT * 
FROM customers;

SELECT *
FROM customers
ORDER BY first_name;

SELECT *
FROM customers
ORDER BY first_name ASC;

SELECT *
FROM customers
ORDER BY first_name DESC;

SELECT *
FROM customers
ORDER BY points DESC;

SELECT *
FROM customers
ORDER BY state, points DESC;

SELECT first_name, last_name , state, points
FROM customers
ORDER BY state, points DESC;

-- Below is not recommended way
SELECT state, points
FROM customers
ORDER BY 1,2;  -- This will sort by state and points in ascending order

-- Exercise

-- Order by total price in descending order for order id 2.

SELECT * 
FROM order_items 
WHERE order_id = 2;

SELECT *, quantity * unit_price AS total_price
FROM order_items
WHERE order_id = 2
ORDER BY quantity * unit_price  DESC;

SELECT *, quantity * unit_price AS total_price
FROM order_items
WHERE order_id = 2
ORDER BY total_price  DESC;
