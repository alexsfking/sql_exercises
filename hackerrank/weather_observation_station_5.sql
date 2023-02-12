/*
Query the two cities in STATION with the shortest and longest CITY names, as well as their respective lengths
(i.e.: number of characters in the name). If there is more than one smallest or largest city, choose the one
that comes first when ordered alphabetically.
*/
SELECT STATION.CITY, CHARACTER_LENGTH(STATION.CITY)
FROM STATION
GROUP BY STATION.CITY
ORDER BY CHARACTER_LENGTH(STATION.CITY) ASC, STATION.CITY ASC
LIMIT 1;
SELECT STATION.CITY, CHARACTER_LENGTH(STATION.CITY)
FROM STATION
GROUP BY STATION.CITY
ORDER BY CHARACTER_LENGTH(STATION.CITY) DESC, STATION.CITY ASC
LIMIT 1;