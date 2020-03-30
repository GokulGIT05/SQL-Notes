USE SQL_STORE;

-- USING clause is used to replace ON in Joins

SELECT *
FROM customers;

SELECT *
FROM orders;

SELECT * 
FROM shippers;

-- WRITING NORMAL QUERY TO RETRIEVE FROM ABOVE TABLES

SELECT cust.customer_id,
		cust.first_name,
        cust.last_name,
        ord.order_date,
        ord.status
FROM customers cust
JOIN orders ord
--	ON cust.customer_id = ord.customer_id  -- Commented Out
    USING (customer_id);

-- Using Three Table
SELECT cust.customer_id,
		cust.first_name,
        cust.last_name,
        ord.order_date,
        ord.status,
        sh.name AS Shippers_Name
FROM customers cust
JOIN orders ord
    USING (customer_id)
LEFT JOIN shippers sh
	USING (shipper_id);

-- Orders are important. shipper_id present in both Orders Table and Shippers Table.

-- Note: Using Clause will work between table only when we are haivng the same name

SELECT *
FROM order_items oi
LEFT JOIN order_item_notes oit
	USING (order_id,product_id);