--for the first ten people in the people's table, return the first name and last name of each person
--for the first ten people in the people's table, return the first name and last name of each person along with the name(s) of the list(s) they have created
--for the first ten people in the people's table, return the first name and last name of each person, the name(s) of the list(s) they have created, and the items in the list

-- SELECT pfirstname, plastname FROM people LIMIT 10;

-- SELECT pfirstname, plastname, lname FROM
-- 	people LEFT JOIN lists ON (people.pid = lists.pid)
-- 	LIMIT 10;

-- SELECT pfirstname, plastname, lname, iname FROM
-- 	people LEFT JOIN lists ON (people.pid = lists.pid)
-- 	LEFT JOIN listitems USING (lid)
-- 	NATURAL LEFT JOIN items
-- 	LIMIT 10;

-- Consistent join methods
SELECT pfirstname, plastname, lname, iname FROM
	people LEFT JOIN lists ON (people.pid = lists.pid)
	LEFT JOIN listitems ON (lists.lid = listitems.lid)
	LEFT JOIN items ON (listitems.iid = items.iid)
	LIMIT 10;