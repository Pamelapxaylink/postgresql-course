  
-- SUBQUERY FILTER
-- SELECT pfirstname, plastname, ppoints FROM people WHERE ppoints = (SELECT MAX(ppoints) FROM people);
-- SELECT pfirstname, plastname, ppoints FROM people WHERE ppoints > (SELECT AVG(ppoints) FROM people);
-- SELECT COUNT(*) FROM people WHERE ppoints > (SELECT AVG(ppoints) FROM people);