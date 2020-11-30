-- SELECT pcity, COUNT(*) AS "population" FROM people GROUP BY pcity;
-- this shows how many people are in each city. 

SELECT 
    pfirstname,
    plastname, 
    COUNT (*) AS "# of items"
    FROM people
    JOIN lists USING(pid)
    JOIN listitems USING (lid)
    GROUP BY pfirstname, plastname 
        ORDER BY "# of items" DESC;

SELECT pfirstname, listitems
    FROM people
    JOIN lists USING(pid)
    JOIN listitems USING(lid)
    WHERE pfirstname = 'Ideipepzekir';

    
