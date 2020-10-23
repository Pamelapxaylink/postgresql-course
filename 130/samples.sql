-- In What you're looking for has one of the provided values

SELECT pfirstname, plastname, pstate, pcity FROM people WHERE pstate IN ('CA', 'WA', 'OR');
-- SELECT pfirstname, plastname, pstate, pcity FROM people WHERE pstate = 'CA' OR pstate = 'WA' OR pstate = 'OR';
