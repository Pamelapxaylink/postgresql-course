-- Like Pattern matching
-- (%) - matches any number of characters
--(_) - matches a single character
-- examples
--Mc%
--McLeod
--McCallister
--McDonalds
--Tod_
--Todd
--Tody
--Tods
--Todo
--_od_
--Todd
--Body
--Rods

-- SELECT pfirstname, plastname, pstate, pcity FROM people WHERE pstate LIKE 'A_';
-- SELECT pfirstname, plastname, pstate, pcity FROM people WHERE pcity LIKE 'A%';
-- SELECT pfirstname, plastname, pstate, pcity FROM people WHERE pcity LIKE '%a%';

-- ILIKE
SELECT pfirstname, plastname, pstate, pcity FROM people WHERE pcity ILIKE 'a%';