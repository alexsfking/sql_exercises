/*
Write a query identifying the type of each record in the TRIANGLES table using
its three side lengths. Output one of the following statements for each record
in the table:

    Equilateral: It's a triangle with 3 sides of equal length. 
    Isosceles: It's a triangle with 2 sides of equal length. 
    Scalene: It's a triangle with 3 sides of differing lengths. 
    Not A Triangle: The given values of A, B, and C don't form a triangle.
*/
SELECT
CASE
    WHEN A=B AND B=C THEN 'Equilateral'
    WHEN A+B<=C OR A+C<=B OR B+C<=A THEN 'Not A Triangle'
    WHEN A=B OR B=C OR A=C THEN 'Isosceles'
    WHEN A!=B AND B!=C AND A!=C THEN 'Scalene'
    ELSE 'Error'
END
FROM TRIANGLES

/*
***Chat-GPT***
This SQL code uses a SELECT statement with a CASE expression to identify the
type of each record in the TRIANGLES table based on the three side lengths of
each triangle. The CASE expression is used to evaluate a series of conditions in
a specific order and return a corresponding value.

The first condition checks if all three sides of the triangle are equal. If they
are, the query returns 'Equilateral' for that record. The second condition
checks if the sum of any two sides is less than or equal to the third side,
which indicates that the given side lengths do not form a triangle. If this is
true, the query returns 'Not A Triangle' for that record.

The third condition checks if two sides of the triangle are equal. If this is
true, the query returns 'Isosceles' for that record. The fourth and final
condition checks if all three sides of the triangle are different. If this is
true, the query returns 'Scalene' for that record.

If none of these conditions are met, the query returns 'Error' for that record.
By using a CASE expression, this SQL code effectively evaluates each record in
the TRIANGLES table and returns a corresponding value based on its three side
lengths.
*/