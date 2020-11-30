--Do the following using the database movies:
--show the customer's name and the total number of movies they've rented sorted by the number of movies rented in descending order
--show the customer's name and the total number of movies they've rented sorted by the number of movies rented in descending order only for customers who have an 'e' in their name

SELECT cname, COUNT(rid) AS amt from customers 
    LEFT JOIN rentals USING(cid)
    GROUP BY cname
    ORDER BY amt DESC;

SELECT cname, COUNT(rid) AS amt from customers 
    LEFT JOIN rentals USING(cid)
    GROUP BY cname
    HAVING cname LIKE '%e%'
    ORDER BY amt DESC;
    
SELECT cname, COUNT(rid) AS amt from customers 
    LEFT JOIN rentals USING(cid)
    WHERE cname LIKE '%e%'
    GROUP BY cname
    ORDER BY amt DESC;