-- Do the following using the database movies:
-- show the customer's name and the total number of movies they've rented

SELECT cname, COUNT(*) from customers 
    JOIN rentals USING(cid)
    GROUP BY cname;

SELECT cname, COUNT(rid) from customers 
    LEFT JOIN rentals USING(cid)
    GROUP BY cname;