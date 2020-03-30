USE sql_store;

SELECT * 
FROM customers
WHERE points >= 1000 AND points <=3000;

-- Equivalent to above is

SELECT * 
FROM customers
WHERE points BETWEEN 1000 AND 3000;  -- This <= and >=

-- Exercise

SELECT * 
FROM customers
WHERE birth_date BETWEEN '1990-01-01' AND '1998-01-01';