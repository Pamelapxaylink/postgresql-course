
-- SELECT * FROM PEOPLE;
-- SELECT pfirstname, plastname, pstate, pcity FROM PEOPLE;
-- SELECT pfirstname, plastname, pstate, pcity FROM people WHERE pstate = 'NY' AND pcity = 'Austin';
SELECT pfirstname, plastname, pstate, pcity FROM people WHERE pstate = 'NY' AND pcity = 'Austin';
SELECT pfirstname, plastname, pstate, pcity FROM PEOPLE WHERE pstate = 'NY' OR pcity = 'Austin'; 
