--Do the following using the database movies:
--use JOIN to
--return all department names, and if applicable, show the employee associated with that department name
--can you use a subquery to get the same result?

SELECT 
    department.dept, 
    employees.ename
    FROM employees RIGHT JOIN department USING (eid);

SELECT 
    department.dept,
    (SELECT employees.ename
        FROM employees
        WHERE employees.eid = department.eid)
        AS "emp name"
    FROM department;
