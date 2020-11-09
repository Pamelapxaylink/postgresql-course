--Do the following using the database movies:
--use UNION to
--return a single column that lists all of the customer names and employee names. 
--can you use a subquery to get the same result?

SELECT cname FROM customers UNION SELECT ename from employees;