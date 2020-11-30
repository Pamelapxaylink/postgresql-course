-- Filtering results two ways:
-- WHERE
--filters before database groups records
--Can use any column, even ones not in the group by list
--HAVING
--filters after database groups records
--Can use aggregate functions over the group, examples:


SELECT pcity, pstate, COUNT(*) AS "people per city" from people 
GROUP BY pcity, pstate
HAVING COUNT(*) >= 2
ORDER BY "people per city" DESC, pcity ASC;

SELECT pcity, pstate, COUNT(*) AS "people per city" from people 
WHERE ppoints > 500
GROUP BY pcity, pstate 
HAVING COUNT(*) >= 2
ORDER BY "people per city" DESC, pcity ASC;

SELECT pcity, pstate, COUNT(*) AS "people per city" from people 
WHERE pcity LIKE 'A%'
GROUP BY pcity, pstate 
HAVING COUNT(*) >= 2
ORDER BY "people per city" DESC, pcity ASC;

SELECT pcity, pstate, COUNT(*) AS "people per city" from people 
GROUP BY pcity, pstate 
HAVING pcity LIKE 'A%' AND COUNT(*) >= 2
ORDER BY "people per city" DESC, pcity ASC;