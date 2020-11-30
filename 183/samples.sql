--Two+ values, group by 2+ values
--anything that is not an AGGREGATE function must be in the GROUP BY, examples:

SELECT pcity, pstate, COUNT(*) AS "people per city" from people 
WHERE pcity LIKE 'A%'
GROUP BY pcity, pstate 
HAVING COUNT(*) >= 2
ORDER BY "people per city" DESC, pcity ASC;

SELECT pcity, pstate, COUNT(*) AS "people per city" from people 
GROUP BY pcity, pstate 
HAVING pcity LIKE 'A%' AND COUNT(*) >= 2
ORDER BY "people per city" DESC, pcity ASC;

SELECT pcity, pstate, COUNT(*) AS "people per city" from people 
WHERE ppoints > 500
GROUP BY pcity, pstate 
HAVING COUNT(*) >= 2
ORDER BY "people per city" DESC, pcity ASC;


-- SELECT pcity, pstate, COUNT(*) AS "people per city" from people 
-- WHERE pcity LIKE 'A%'
-- GROUP BY pcity, pstate 
-- HAVING COUNT(*) >= 2
-- ORDER BY "people per city" DESC, pcity ASC;

-- SELECT pcity, pstate, COUNT(*) AS "people per city" from people 
-- GROUP BY pcity, pstate 
-- HAVING COUNT(*) >= 2 AND pcity LIKE 'A%'
-- ORDER BY "people per city" DESC, pcity ASC;