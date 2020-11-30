--Do the following using the database wishlists:
--show the first and last name and the number of lists each person has
--show the first and last name and the number of lists each person has; show the results sorted in descending order by the number of lists
  
-- SELECT
-- 	pfirstname,
-- 	plastname,
-- 	COUNT(lid)
-- 	FROM people NATURAL LEFT JOIN lists
-- 	GROUP BY pfirstname, plastname;

SELECT
	pfirstname,
	plastname,
	COUNT(lid)
	FROM people NATURAL LEFT JOIN lists
	GROUP BY pfirstname, plastname
	ORDER BY count DESC;