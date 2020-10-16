--Hands-on exercise #2
--Do the following:
--Use the containment operator to check if cake is in the favorite foods people like
--Try it both with accessing desserts and without using the accessing operator

-- SELECT * FROM people LIMIT 10;
-- SELECT pfirstname, pfavorites FROM people LIMIT 10;

-- SOLUTION ONE
SELECT pfirstname, pfavorites -> 'Desserts' @> CAST('["cake"]' AS JSONB) FROM people LIMIT 10;

-- SOLUTION TWO
SELECT pfirstname, pfavorites @> CAST('{"Desserts":["cake"]}' AS JSONB) FROM people LIMIT 10;

-- fancy
-- SELECT pfirstname, pfavorites @> CAST('{"Desserts":["cake"]}' AS JSONB) FROM people WHERE 
--pfavorites @> CAST('{"Desserts":["cake"]}' AS JSONB);