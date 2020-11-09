--Do the following using the database movies:
--use LEFT JOIN to
--return the first name of all customers, the rental id of any rental transaction they're associated with, and also show the name of the movie they rented if applicable. 
--can you use a subquery to get the same result?

SELECT 
    customers.cname,
    rentals.rid,
    movies.mname
FROM customers LEFT JOIN rentals USING (cid) LEFT JOIN movies USING (mid)