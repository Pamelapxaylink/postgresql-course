--Hands-on exercise #2
--Do the following:
--return in one column: pfirstname plastname is X years old
--where X is the number of years from today to their dob
--CAST as necessary
--Look into using the function
--EXTRACT
--AGE, call the column "Age"
--order by "Age" descending


-- SELECT pfirstname || ' ' || plastname || ' is ' || 
-- CAST(EXTRACT(day FROM CAST('now' AS DATE) - pdob) AS INT) / 
-- 365 || ' years old' AS "Age" FROM people ORDER BY pdob ASC;

-- SELECT pfirstname || ' ' || plastname || ' is ' || EXTRACT(year FROM AGE(pdob)) 
-- || ' years old' AS "Age" FROM people ORDER BY pdob ASC;

-- Above are alternative solutions. 

SELECT pfirstname || ' ' || plastname || ' ' || ' is ' || date_part('year', age(pdob))
|| ' years old ' AS "Age" FROM people ORDER BY date_part('year', age(pdob)) DESC;