--return the first name and department of all employees in the 'Sales' department.

SELECT employees.ename, department.dept
	FROM employees JOIN department ON (employees.eid = department.eid)
	WHERE department.dept = 'Sales';

SELECT employees.ename, department.dept
	FROM employees JOIN department ON (employees.eid = department.eid);

SELECT employees.ename, department.dept
	FROM employees FULL JOIN department ON (employees.eid = department.eid);