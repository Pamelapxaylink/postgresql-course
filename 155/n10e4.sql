--Return the first name, last name, dob of all individuals who are more than 10 years old.

SELECT pfirstname, plastname, pdob FROM people 
    WHERE pdob < CAST('now' AS TIMESTAMP) - CAST('10 years' AS INTERVAL)
