SELECT * FROM employees;
SELECT * FROM department;

SELECT employees.ename, department.dept FROM 
employees JOIN department ON (employees.eid=department.eid)
WHERE department.dept = 'Sales'; 

-- WRONG:
-- SELECT employees.ename, 
-- (SELECT department.dept FROM department
-- WHERE employees.eid=department.eid 
-- AND department.dept='Sales'
-- AND department.dept IS NOT NULL) AS "department name"
-- FROM employees;

-- RIGHT
SELECT 
    (SELECT employees.ename FROM employees
        WHERE employees.eid = department.eid) AS "employee name",
    department.dept
    FROM department
    WHERE department.dept = 'Sales';

   -- Do the following using the database movies:
--use JOIN to
--return the first name and department of all employees in the 'Sales' department.
--can you use a subquery to get the same result?
