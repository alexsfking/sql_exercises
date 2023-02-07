/*
Query the difference between the maximum and minimum populations in CITY.
*/
SELECT (SELECT MAX(POPULATION) FROM CITY) - (SELECT MIN(POPULATION) FROM CITY);