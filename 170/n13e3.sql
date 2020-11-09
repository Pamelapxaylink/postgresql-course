--Do the following using the database movies:
--use JOIN to
--return the first name of all employees, and if applicable, show the employee's department name. 
--can you use a subquery to get the same result?

SELECT 
    employees.ename, 
    department.dept
    FROM employees LEFT JOIN department USING (eid);

SELECT 
    employees.ename,
    (SELECT department.dept
        FROM department 
        WHERE department.eid = employees.eid) AS "dept name"
    FROM employees;