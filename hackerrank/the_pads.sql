/*
Generate the following two result sets:

Query an alphabetically ordered list of all names in OCCUPATIONS, immediately
followed by the first letter of each profession as a parenthetical (i.e.:
enclosed in parentheses). For example: AnActorName(A), ADoctorName(D),
AProfessorName(P), and ASingerName(S). Query the number of ocurrences of each
occupation in OCCUPATIONS. Sort the occurrences in ascending order, and output
them in the following format:

There are a total of [occupation_count] [occupation]s. where [occupation_count]
is the number of occurrences of an occupation in OCCUPATIONS and [occupation] is
the lowercase occupation name. If more than one Occupation has the same
[occupation_count], they should be ordered alphabetically.

Note: There will be at least two entries in the table for each type of
occupation.

Input Format The OCCUPATIONS table is described as follows:

Column          Type Name            String Occupation      String

Occupation will only contain one of the following values: Doctor, Professor,
Singer or Actor.

Sample Output

Ashely(P)
Christeen(P)
Jane(A)
Jenny(D)
Julia(A)
Ketty(P)
Maria(A)
Meera(S)
Priya(S)
Samantha(D)
There are a total of 2 doctors.
There are a total of 2 singers.
There are a total of 3 actors.
There are a total of 3 professors.
*/
SELECT CONCAT(NAME,CONCAT('(',LEFT(OCCUPATION,1),')'))
FROM OCCUPATIONS
ORDER BY NAME;
SELECT CONCAT('There are a total of ',COUNT(OCCUPATION),' ',LOWER(OCCUPATION),'s.')
FROM OCCUPATIONS
GROUP BY OCCUPATION
ORDER BY COUNT(OCCUPATION) ASC, OCCUPATION ASC;

/*
***Chat-GPT***
The given SQL query contains two SELECT statements, separated by a semicolon,
each of which generates a result set. Let's break down each statement and
understand what it does:

1. SELECT CONCAT(NAME,CONCAT('(',LEFT(OCCUPATION,1),')')) FROM OCCUPATIONS ORDER
   BY NAME;

This statement retrieves all the names and occupations from the OCCUPATIONS
table and concatenates the name with the first letter of their respective
occupation, enclosed in parentheses. The CONCAT() function is used to combine
the name and occupation abbreviation, and the LEFT() function extracts the first
character of the occupation column. The resulting string is ordered
alphabetically by the name using the ORDER BY clause.

For example, the output might look like this:
Ashely(P)
Christeen(P)
Jane(A)
Jenny(D)
Julia(A)
Ketty(P)
Maria(A)
Meera(S)
Priya(S)
Samantha(D)

2. SELECT CONCAT('There are a total of ',COUNT(OCCUPATION),'
   ',LOWER(OCCUPATION),'s.') FROM OCCUPATIONS GROUP BY OCCUPATION ORDER BY
   COUNT(OCCUPATION) ASC, OCCUPATION ASC;

This statement retrieves the count of each occupation in the OCCUPATIONS table,
groups them by occupation type, and generates a sentence for each group
indicating the total count of the occupation in lowercase. The COUNT() function
is used to count the number of occurrences of each occupation, and the LOWER()
function converts the occupation name to lowercase. The resulting strings are
ordered by the count in ascending order and alphabetically for the same count.

For example, the output might look like this: There are a total of 2 doctors.
There are a total of 2 singers. There are a total of 3 actors. There are a total
of 3 professors.
*/