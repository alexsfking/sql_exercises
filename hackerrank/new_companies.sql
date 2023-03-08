/*
Amber's conglomerate corporation just acquired some new companies. Each of the
companies follows this hierarchy:
    Founder -> Lead Manager -> Senior Manager-> Manager -> Employee

Given the table schemas below, write a query to print the company_code, founder
name, total number of lead managers, total number of senior managers, total
number of managers, and total number of employees. Order your output by
ascending company_code.

Note:

    *   The tables may contain duplicate records.
    *   The company_code is string, so the sorting should not be numeric. For
    example, if the company_codes are C_1, C_2, and C_10, then the ascending
    company_codes will be C_1, C_10, and C_2.

Input Format The following tables contain company data:

Company: The company_code is the code of the company and founder is the founder
of the company.
Column                  Type
company_code            String
founder                 String

Lead_Manager: The lead_manager_code is the code of the lead manager, and the
company_code is the code of the working company.
Column                  Type
lead_manager_code       String
company_code            String

Senior_Manager: The senior_manager_code is the code of the senior manager, the
lead_manager_code is the code of its lead manager, and the company_code is the
code of the working company.
Column                  Type
senior_manager_code     String
lead_manager_code       String
company_code            String

Manager: The manager_code is the code of the manager, the senior_manager_code is
the code of its senior manager, the lead_manager_code is the code of its lead
manager, and the company_code is the code of the working company.
Column                  Type
manager_code            String
senior_manager_code     String
lead_manager_code       String
company_code            String

Employee: The employee_code is the code of the employee, the manager_code is the
code of its manager, the senior_manager_code is the code of its senior manager,
the lead_manager_code is the code of its lead manager, and the company_code is
the code of the working company.
Column                  Type
employee_code           String
manager_code            String
senior_manager_code     String
lead_manager_code       String
company_code            String
*/
SELECT C.COMPANY_CODE, C.FOUNDER, COUNT(DISTINCT L.LEAD_MANAGER_CODE), COUNT(DISTINCT S.SENIOR_MANAGER_CODE), COUNT(DISTINCT M.MANAGER_CODE), COUNT(DISTINCT E.EMPLOYEE_CODE)
FROM COMPANY C, LEAD_MANAGER L, SENIOR_MANAGER S, MANAGER M, EMPLOYEE E
WHERE C.COMPANY_CODE=L.COMPANY_CODE
AND C.COMPANY_CODE=S.COMPANY_CODE
AND C.COMPANY_CODE=M.COMPANY_CODE
AND C.COMPANY_CODE=E.COMPANY_CODE
GROUP BY C.COMPANY_CODE, C.FOUNDER
ORDER BY C.COMPANY_CODE

/*
***Chat-GPT***
This is a SQL query to retrieve information about the number of employees at
various levels in different companies. The query retrieves the company_code,
founder name, total number of lead managers, senior managers, managers and
employees for each company, sorted in ascending order of company_code.

The query uses JOIN operations to combine data from multiple tables based on the
company_code. Specifically, the query selects data from the following tables:

*   COMPANY: contains information about the company, including its code and
    founder.
*   LEAD_MANAGER: contains information about lead managers, including their code
and the code of the company they work for.
*   SENIOR_MANAGER: contains information about senior managers, including their
code, the code of the lead manager they report to, and the code of the company
they work for.
*   MANAGER: contains information about managers, including their code, the code
of the senior manager they report to, the code of the lead manager they report
to, and the code of the company they work for.
*   EMPLOYEE: contains information about employees, including their code, the
code of the manager they report to, the code of the senior manager they report
to, the code of the lead manager they report to, and the code of the company
they work for.

The query uses the COUNT() function to count the number of distinct lead
managers, senior managers, managers, and employees for each company. The
DISTINCT keyword is used to count only unique instances of each category.

Finally, the GROUP BY clause groups the results by company_code and founder, and
the ORDER BY clause sorts the results in ascending order of company_code.

Overall, this query provides a summary of the hierarchical structure of
different companies and the number of employees at each level in each company.
*/