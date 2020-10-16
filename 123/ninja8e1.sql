--Hands-on exercise #1
--Do the following:
--Get all the first names and favorites from people
--Access just the favorite desserts from favorites

-- SELECT * FROM people LIMIT 10;
-- SELECT pfirstname, pfavorites FROM people LIMIT 10;
--SELECT pfirstname, pfavorites -> 'Desserts' FROM people LIMIT 10;

-- fancy
 SELECT pfirstname, pfavorites -> 'Desserts' AS "FavDesserts" FROM people LIMIT 10;

