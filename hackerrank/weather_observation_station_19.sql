/*
Consider P1(a,c) and P2(b,d) to be two points on a 2D plane where (a,b) are the
respective minimum and maximum values of Northern Latitude (LAT_N) and (c,d) are
the respective minimum and maximum values of Western Longitude (LONG_W) in
STATION.

Query the Euclidean Distance between points P1 and P2 and format your answer to
display 4 decimal digits.
*/
SELECT TRUNCATE(SQRT(POW(MIN(LAT_N)-MAX(LAT_N),2)+POW(MIN(LONG_W)-MAX(LONG_W),2)),4)
FROM STATION

/*
***Chat-GPT***
The given SQL code is calculating the Euclidean distance between two points on a
2D plane represented by a dataset named "STATION". The points are defined as P1
with (a,c) and P2 with (b,d), where a and b are the minimum and maximum values
of the Northern Latitude (LAT_N) respectively, and c and d are the minimum and
maximum values of Western Longitude (LONG_W) in the STATION dataset.

The calculation is done using the SQRT function to calculate the square root of
the sum of squares of the differences between the x-coordinates (LAT_N) and
y-coordinates (LONG_W) of the two points. The TRUNCATE function is then used to
limit the output to four decimal places.

Overall, the query returns the Euclidean distance between P1 and P2 in the
STATION dataset.
*/