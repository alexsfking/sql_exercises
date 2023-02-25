/*
Consider P1(a,b) and P2(c,d) to be two points on a 2D plane.
    a happens to equal the minimum value in Northern Latitude (LAT_N in STATION).
    b happens to equal the minimum value in Western Longitude (LONG_W in STATION).
    c happens to equal the maximum value in Northern Latitude (LAT_N in STATION).
    d happens to equal the maximum value in Western Longitude (LONG_W in STATION).
Query the Manhattan Distance between points P1 and P2 and round it to a scale of 4 decimal places.
*/
SELECT ROUND(ABS(MIN(LAT_N)-MAX(LAT_N))+ABS(MIN(LONG_W)-MAX(LONG_W)),4)
FROM STATION
/*
***Chat-GPT***
This SQL query is used to calculate the Manhattan Distance between two points on a 2D plane, represented
as P1(a,b) and P2(c,d), where the values of a, b, c, and d are determined by the data in a table called
STATION.

The query first calculates the minimum and maximum values of the LAT_N and LONG_W columns in the STATION
table using the MIN and MAX functions. These values are then used to compute the Manhattan Distance
between points P1 and P2 using the formula:

Manhattan Distance = |a-c| + |b-d|

In this case, a and b are the minimum values of LAT_N and LONG_W, respectively, and c and d are the
maximum values of LAT_N and LONG_W, respectively.

The ABS function is used to take the absolute value of the differences between a and c, and between b and
d. The SUM of these absolute differences is then rounded to 4 decimal places using the ROUND function.

Overall, this SQL query can be used to calculate the Manhattan Distance between two points on a 2D plane,
given the minimum and maximum values of the LAT_N and LONG_W columns in the STATION table.
*/