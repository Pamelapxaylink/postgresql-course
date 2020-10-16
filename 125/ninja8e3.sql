--Hands-on exercise #3
--Do the following:
--Use the existence operator to see if ice cream is in the favorite foods people like

-- SELECT * FROM people LIMIT 10;
-- SELECT pfirstname, (pfavorites -> 'Desserts') FROM people LIMIT 10;
SELECT pfirstname, (pfavorites -> 'Desserts') ? 'ice cream' FROM people;

--  fancy
-- SELECT pfirstname, (pfavorites -> 'Desserts') ? 'ice cream' FROM people 
--WHERE (pfavorites -> 'Desserts') ? 'ice cream';