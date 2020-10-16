--Hands-on exercise #4
--Use SQL to do the following math problems:
--2 to the power of 8
--1000 divided by 150
--the remainder of 1000 divided by 150
--divide 400 by 34.3
--the remainder of 400 divided by 34.3
--round 400 divided by 34.3 to four decimal places
--bonus --> Is 85 greater than 64?

SELECT 2^8 AS "A";
SELECT 1000/150 AS "B";
SELECT 1000%150 AS "C";
SELECT 400/34.3 AS "D";
SELECT 400%34.3 AS "E";
SELECT ROUND(400/34.3, 4) AS "F";
SELECT 85>64 AS "G";