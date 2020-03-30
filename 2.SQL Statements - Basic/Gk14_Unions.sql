USE sql_store;

-- Union is used to combine two querires into single result set.
-- Number of Columns should match with both queries or it wont work.
-- Column name will be first query name.

SELECT order_id,
	customer_id,
    'ACTIVE' AS status
FROM orders
WHERE order_date >= '2019-01-01'
UNION
SELECT order_id,
	customer_id,
    'ARCHIEVED' AS status
FROM orders
WHERE order_date < '2019-01-01';

-- Below query wont work, becuase column are different
SELECT order_id,
	customer_id,
    'ACTIVE' AS status
FROM orders
WHERE order_date >= '2019-01-01'
UNION
SELECT  order_id,
    'ARCHIEVED' AS status
FROM orders
WHERE order_date < '2019-01-01';

-- Its very rare to use UNIONS in real world scenorio