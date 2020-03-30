
USE SQL_STORE;

SELECT *
FROM customers;

INSERT INTO customers
VALUES (
		default,
        'Gk1',
        'Gp1',
        '1993-08-02',
        '9790450541',
        'Mullai Nagar',
        'TVL',
        'TN',
        10000
		);
        
-- Other way using coloumn name

INSERT INTO customers (first_name, last_name, birth_date,phone,address,city,state)
VALUES (
	    'Gk2',
        'Gp3',
        '1993-08-02',
        '9790450541',
        'Mullai Nagar',
        'TVL',
        'TN'
		);
-- When we are explictly saying coloumns name, no order of coloumn are needed

-- Inserting Multiple values
SELECT * 
FROM shippers;

INSERT INTO shippers (name)
VALUES ('GK1'),
		('GK2'),
        ('GK3'),
        ('GK4');
