--return a single column that lists all of the customer names and employee names. 

SELECT cname FROM customers UNION
	SELECT ename FROM employees;

SELECT cname FROM customers UNION
	SELECT ename FROM employees UNION
	SELECT mname FROM movies;