
USE sql_hr;

SELECT * 
FROM employees;

SELECT  *
FROM offices;

 -- Max SALARY
 SELECT * 
FROM employees 
WHERE salary = (
 SELECT MAX(salary)
 FROM employees);
 
 -- Higest Second Salary
SELECT * 
FROM employees 
WHERE salary =(
	SELECT MAX(salary)
	FROM employees 
	WHERE salary != (
		SELECT MAX(salary)
		FROM employees)); 
 