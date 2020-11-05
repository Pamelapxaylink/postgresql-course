--use right join to return the name of all movies, the rental id of any rental transaction they're associated with, and also show the first name of the customer who rented the movie if applicable. 
--use left join to return the name of all movies, the rental id of any rental transaction they're associated with, and also show the first name of the customer who rented the movie if applicable. 

SELECT movies.mname, rentals.rid, customers.cname FROM
	customers NATURAL JOIN rentals
	NATURAL RIGHT JOIN movies;

SELECT movies.mname, rentals.rid, customers.cname FROM
	movies NATURAL LEFT JOIN rentals
	NATURAL LEFT JOIN customers;