--Do the following using the database wishlists:
--use JOIN to
--for the first ten people in the people's table, return the first name and last name of each person, the name(s) of the list(s) they have created, and the items in the list
--can you use a subquery to get the same result?

SELECT 
    people.pfirstname,
    people.plastname,
    lists.lname,
    items.iname
    FROM people NATURAL LEFT JOIN lists
        NATURAL LEFT JOIN listitems
        NATURAL LEFT JOIN items
    LIMIT 10;