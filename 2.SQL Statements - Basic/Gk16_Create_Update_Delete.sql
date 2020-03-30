
-- TO COPY A COMPLETE TABLE
CREATE TABLE orders_archieved AS
SELECT  * FROM orders;
-- NEW TABLE CREATED WILL NOT THE SAME PROPERTIES SET. EXAMPLE AUTOINCREMENT & PRIMARY KEY.

SELECT *
FROM orders_archieved;

-- Using subquery to insert value based on where clause (Selected Rows)
INSERT INTO orders_archieved
SELECT *
FROM orders
WHERE order_date > '2019-01-01';

-- while creating a table itselt we can give subquery based on result set, new table will  be created.

-- ***************************************************************************************************

-- UPDATE
USE sql_invoicing;

SELECT * 
FROM invoices;

UPDATE invoices
SET payment_total = '100.00' , payment_date = '2020-02-12'
WHERE invoice_id = '1';

-- Update using subqueries
SELECT *
FROM clients;

UPDATE invoices
SET payment_total = '100.00' , payment_date = '2020-02-12'
WHERE client_id = (
				SELECT client_id
				FROM clients
				WHERE name = 'Yadel'
				);
-- SUBQUERIRES ALWAYS NEED TO ENCLOSE IN BRACKETS()
-- ***************************************************************************************************

-- DELETE

DELETE FROM invoices
WHERE client_id = (
				SELECT *
				FROM clients
				WHERE name = 'Yadel'
				);
                
DELETE FROM invoices
WHERE invoice_id = '1';