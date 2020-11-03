-- Return the first name and last name of all individuals who have a lowercase 'e' in their first name.

--SELECT pfirstname, plastname FROM people WHERE pfirstname LIKE '%e%';
SELECT pfirstname, plastname FROM people WHERE pfirstname LIKE '%e%' OR plastname LIKE '%e%'