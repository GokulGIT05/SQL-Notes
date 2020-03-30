
-- Section - 1: 
-- Inner Join
-- By Default we are performing Inner Join.

SELECT *
FROM orders;

SELECT * 
FROM customers;

-- Performing Inner Joins.
SELECT *
FROM orders
JOIN customers ON orders.customer_id = customers.customer_id;

SELECT order_id, first_name , last_name
FROM orders
JOIN customers ON orders.customer_id = customers.customer_id;

-- Below is standary way to query two table using join
SELECT order_id, O.customer_id, first_name , last_name
FROM orders O
JOIN customers C ON O.customer_id = C.customer_id;

-- Exercise

SELECT * 
FROM order_items;

SELECT * 
FROM products;

SELECT order_id, p.product_id, p.name
FROM order_items o
JOIN products p ON o.product_id = p.product_id;  
-- Note: If we are using alias we have to use alias name only to join the column not the table name like product.product_id

-- ******************************************************************************************

-- Section - 2: 
-- Joining Across Databases

SELECT *
FROM  order_items oi
JOIN sql_inventory.products p  
	ON oi.product_id = p.product_id;
-- ******************************************************************************************    
-- SELF JOINS
USE sql_hr;

SELECT * 
FROM employees;

SELECT * 
FROM employees e
JOIN employees m
	ON e.reports_to = m.employee_id;

SELECT e.employee_id AS 'Employee Number',
		e.first_name AS 'Employee Name',
        m.first_name AS 'Reporting Manager' 
FROM employees e
JOIN employees m
	ON e.reports_to = m.employee_id;
-- ****************************************************************************************** 

-- Joining Multiple Tables.
USE sql_store;

SELECT * 
FROM customers;

SELECT *
FROM orders;

SELECT * 
FROM order_statuses;

SELECT * 
FROM orders O
JOIN customers C 
	ON O.customer_id = C.customer_id
JOIN order_statuses OS
	ON O.status = OS.order_status_id;
    
SELECT O.order_id, O.order_date, C.first_name , C.last_name , OS.name
FROM orders O
JOIN customers C 
	ON O.customer_id = C.customer_id
JOIN order_statuses OS
	ON O.status = OS.order_status_id;  
    
-- EXERCISE
USE sql_invoicing;

SELECT *
FROM payments;

SELECT *
FROM payment_methods;

SELECT *
FROM clients;

SELECT P.payment_id, 
		P.amount, 
        PM.name, 
        C.name
FROM payments P
JOIN payment_methods PM
	ON P.payment_method = PM.payment_method_id
JOIN clients C
	ON C.client_id = P.client_id;

-- ****************************************************************************************** 
-- Compound Join Conditions
-- Embedded Key or Composite Primary Key
USE sql_store;

SELECT * 
FROM order_items;

SELECT *
FROM order_item_notes;

SELECT *
FROM order_items OI
JOIN order_item_notes OIN
	ON OI.order_id = OIN.order_Id
    AND OI.product_id = OIN.product_id;
 -- ****************************************************************************************** 
   
-- Implicit Join Syntax  Using WHERE Clause:

SELECT * 
FROM orders O , customers C
WHERE O.customer_id = C.customer_id;

-- It is Always recommended to use explicit join syntax using Join ON rather than implicit join.
-- If we miss to write where clause then we will be getting cross joins( Every row will mapped to every row in other table).
-- ****************************************************************************************** 

-- Outer Join
-- Two Types: 1. Left Outer Join, 2. Right Outer Join

-- 1. Left Outer Join
SELECT C.first_name , C.last_name , O.order_id, O.order_date
FROM customers C
LEFT JOIN orders O   
	ON C.customer_id = O.customer_id;
-- All the Customer whose having order as well not having order
-- OUTER keyword is optional just like INNER

-- 2. Right Outer Join
SELECT C.first_name , C.last_name , O.order_id, O.order_date
FROM orders O
RIGHT JOIN customers C 
	ON C.customer_id = O.customer_id;
-- All the Customer whose having order as well not having order

SELECT C.first_name , C.last_name , O.order_id, O.order_date
FROM orders O
RIGHT OUTER JOIN customers C 
	ON C.customer_id = O.customer_id;
    
-- EXERCISE
SELECT 
	P.product_id,
    P.name,
    OI.quantity
FROM products P
LEFT JOIN order_items OI
	ON P.product_id = OI.product_id
ORDER BY P.product_id;
-- All the product id whose are haiing orders or not
-- ****************************************************************************************** 

-- Outer Join Between Multiple Tables
SELECT C.first_name , C.last_name , O.order_id, O.order_date
FROM customers C
LEFT JOIN orders O   
	ON C.customer_id = O.customer_id
LEFT JOIN shippers SH
	ON O.shipper_id = SH.shipper_id;
    
-- Is is always recommended to use left outer join rather than using right join
-- Left outer joins means all the left side records will match right side table and will all the left side table records .
-- ****************************************************************************************** 

-- SELF OUTER JOINS
USE SQL_HR;

SELECT *
FROM employees;

--- Using Inner Join
SELECT emp.employee_id,
		emp.first_name,
		emp.last_name,
        emp.job_title,
        mgr.first_name AS Manager_First_Name,
        mgr.last_name AS Manager_Last_Name
FROM employees emp
LEFT JOIN employees mgr
	ON emp.reports_to = mgr.employee_id;

-- Using Outer Join
SELECT emp.employee_id,
		emp.first_name,
		emp.last_name,
        emp.job_title,
        mgr.first_name AS Manager_First_Name,
        mgr.last_name AS Manager_Last_Name
FROM employees emp
LEFT JOIN employees mgr
	ON emp.reports_to = mgr.employee_id;
-- Above will return every employee and its corresponding manager.
-- ******************************************************************************************
