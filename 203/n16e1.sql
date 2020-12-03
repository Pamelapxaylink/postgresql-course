--Do the following using the database wishlists:
--returning 10 results at a time for pagination from the people table

-- Limit 
SELECT * FROM people ORDER BY pid LIMIT 10 OFFSET 0;

SELECT * FROM people ORDER BY pid LIMIT 10 OFFSET 10;

-- SELECT * FROM people ORDER BY pid LIMIT 10 OFFSET 20;

-- SELECT * FROM people ORDER BY pid LIMIT 10 OFFSET 30;

--Fetch
SELECT * FROM people ORDER BY pid OFFSET 0 FETCH NEXT 10 ROWS ONLY;

SELECT * FROM people ORDER BY pid OFFSET 10 FETCH NEXT 10 ROWS ONLY;

SELECT * FROM people ORDER BY pid OFFSET 20 FETCH NEXT 10 ROWS ONLY;

SELECT * FROM people ORDER BY pid OFFSET 30 FETCH NEXT 10 ROWS ONLY;