USE sql_store;

SELECT *
FROM customers;

SELECT * 
FROM customers
WHERE address REGEXP 'trail'; 

SELECT * 
FROM customers
WHERE address REGEXP 'trail|avenue'; 

SELECT * 
FROM customers
WHERE address REGEXP 'trail$'; 

SELECT * 
FROM customers
WHERE last_name REGEXP '^rum'; 

SELECT * 
FROM customers
WHERE address REGEXP '[abc]i';  -- check contains with ai or bi or ci

SELECT * 
FROM customers
WHERE address REGEXP '[a-c]i'; 

-- Exercise

SELECT * 
FROM customers
WHERE first_name REGEXP 'ELKA|AMBUR';

SELECT * 
FROM customers
WHERE last_name REGEXP 'EY$|ON$';

SELECT * 
FROM customers
WHERE last_name REGEXP '^MY|SE';

SELECT * 
FROM customers
WHERE last_name REGEXP 'B[RU]';


