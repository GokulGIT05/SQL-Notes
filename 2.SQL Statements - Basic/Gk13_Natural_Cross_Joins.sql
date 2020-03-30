USE SQL_STORE;
-- Natural Join
SELECT c.first_name,
		c.last_name,
        p.name,
        p.unit_price
FROM customers c
NATURAL JOIN products p
ORDER BY c.first_name;

-- CROSS JOIN ( Explicit Syntax)
SELECT c.first_name,
		c.last_name,
        p.name,
        p.unit_price
FROM customers c
CROSS JOIN products p
ORDER BY c.first_name;
-- ABove will each customer will asign to all products

-- Cross Join (Implicit Syntax)
SELECT c.first_name,
		c.last_name,
        p.name,
        p.unit_price
FROM customers c , products p
 -- CROSS JOIN products p
ORDER BY c.first_name;

-- Above two query will produce the same result.