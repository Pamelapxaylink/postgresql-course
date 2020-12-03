--Do the following using the database wishlists:
--delete any people who are within 1000 points of the min amount of points

DELETE FROM people
	WHERE ppoints <= ((SELECT MIN(ppoints) FROM people) + 1000);