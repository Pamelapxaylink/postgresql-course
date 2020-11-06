--Table list filtering 
--Scenario: from the wishlists database, using the "IN" keyword, return the first name, last name, and state of customers who come from a state that starts with a capital "O".

SELECT DISTINCT pstate FROM people
	WHERE pstate LIKE 'O_';

SELECT pfirstname, plastname, pstate FROM people
	WHERE pstate IN (SELECT DISTINCT pstate FROM people WHERE pstate LIKE 'O_');

SELECT pfirstname, plastname, pstate FROM people
	WHERE pstate LIKE 'O_';