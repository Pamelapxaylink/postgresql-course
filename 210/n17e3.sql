--Do the following using the database wishlists:
--Delete anyone who has four items or less in their wishlists rebuild your wishlists database do something to celebrate coming to the end of this course!

SELECT pid, COUNT(liid)
	FROM people NATURAL LEFT JOIN lists
	NATURAL LEFT JOIN listitems
	GROUP BY pid
	HAVING COUNT(liid) <= 4
	ORDER BY count DESC;

DELETE FROM people
	WHERE pid IN (SELECT pid WHERE (SELECT
	COUNT(liid) FROM people AS i NATURAL LEFT JOIN lists
	NATURAL LEFT JOIN listitems
	WHERE people.pid = i.pid
	GROUP BY pid) <= 4);

SELECT 'Congratulations!' AS "Message";