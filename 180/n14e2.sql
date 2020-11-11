--Do the following using the database wishlists:
--return the first name, last name, and the number of lists each person has
--return the first name, last name, and the number of lists each person has ORDER this by the amount of lists in descending order

SELECT 
    pfirstname,
    plastname,
    (SELECT COUNT(*) FROM lists WHERE lists.pid = people.pid)
    FROM people;

SELECT
	pfirstname,
	plastname,
	(SELECT COUNT(*) FROM lists WHERE lists.pid = people.pid) AS amt
	FROM people
	ORDER BY amt DESC;