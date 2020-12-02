--Do the following using the database wishlists:
--show the first, last name, and the number of list items each person has; show the results sorted in descending order by the number of list items
--bonus: show the first, last name, the number of lists, and the number of list items each person has; show the results sorted in descending order by the number of list items
 

-- SELECT
-- 	pfirstname,
-- 	plastname,
-- 	COUNT(liid)
-- 	FROM people NATURAL LEFT JOIN lists
-- 		NATURAL LEFT JOIN listitems
-- 	GROUP BY pfirstname, plastname
-- 	ORDER BY count DESC;

SELECT 
    pfirstname, 
    plastname, 
    lid 
    FROM people NATURAL JOIN lists
    WHERE pfirstname = 'Zkugjyqoppe';

SELECT 
    pfirstname, 
    plastname, 
    liid
    FROM people NATURAL JOIN lists  
        NATURAL JOIN listitems
    WHERE pfirstname = 'Zkugjyqoppe';

SELECT 
    pfirstname, 
    plastname,
    (SELECT COUNT(lid) FROM lists WHERE lists.pid = people.pid) AS "num lists",
    COUNT(liid) AS "num list items"
    FROM people NATURAL LEFT JOIN lists 
        NATURAL LEFT JOIN listitems
    GROUP BY pid, pfirstname, plastname 
    ORDER BY "num list items" DESC, "num lists" DESC; 