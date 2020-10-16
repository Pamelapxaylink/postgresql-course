--Hands-on exercise #1
--Do the following:
--return in one column pfirstname, plastname, and ppoints from people
--call the column "Customer Points"
--CAST the ppoints to TEXT
--order DESC by ppoints

-- SELECT pfirstname || ' ' || plastname || ' ' || ppoints FROM people ORDER BY ppoints DESC;
-- SELECT pfirstname || ' ' || plastname || ' ' || CAST(ppoints AS TEXT) FROM people ORDER BY ppoints DESC;
-- SELECT pfirstname || ' ' || plastname || ' ' || ppoints::TEXT FROM people ORDER BY ppoints DESC;

SELECT pfirstname || ' ' || plastname AS "Customers", 
CAST(ppoints AS TEXT) AS "Customer Points" FROM people ORDER BY ppoints DESC; 