USE sql_store;

-- AND OPERATOR
SELECT *
FROM customers
WHERE birth_date > '1985-01-01' AND points > 2500;

-- OR OPERATOR
SELECT *
FROM customers
WHERE birth_date > '1985-01-01' OR points > 2500
ORDER BY points;

-- NOT OPERATOR
SELECT *
FROM customers
WHERE NOT (birth_date > '1985-01-01' OR points > 2500);

-- Order of Operator
SELECT *
FROM customers
WHERE birth_date > '1980-01-01' OR points > 2500 AND state = 'VA'; -- First AND andthen OR operator will execute. 
-- TO Override default order we have to give it withing bracket

SELECT *
FROM customers
WHERE birth_date > '1986-04-10' OR 
		(points > 2500 AND state = 'VA');
        
-- Not Will invert the operator: 
--  > will  became <= 
-- < will become >=
-- OR will become AND

-- Exercise:
SELECT * 
FROM order_items;

SELECT * 
FROM order_items 
WHERE order_id = 6 AND 
		( quantity * unit_price > 30);
