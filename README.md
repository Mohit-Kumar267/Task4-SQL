1.Apply aggregate functions on numeric columns
 2.Use GROUP BY to categorize
 3.Filter groups using HAVING

 ✅ 1. Apply Aggregate Functions on Numeric Columns

Definition:
Aggregate functions perform calculations on a set of values and return a single result. They are typically used to summarize data in numeric columns.

Common Aggregate Functions:

Function	Description
SUM(column)	Adds all the values in a numeric column
AVG(column)	Calculates the average (mean)
MAX(column)	Returns the highest value
MIN(column)	Returns the lowest value
COUNT(column)	Counts the number of values (non-NULL)

Example:

SELECT AVG(salary) FROM employees;


This returns the average salary from the employees table.

✅ 2. Use GROUP BY to Categorize

Definition:
The GROUP BY clause groups rows that have the same values in specified columns into summary rows, often combined with aggregate functions.

Purpose:
To perform calculations per group/category instead of the entire table.

Syntax:

SELECT column1, AGG_FUNCTION(column2)
FROM table
GROUP BY column1;


Example:

SELECT department, SUM(salary)
FROM employees
GROUP BY department;


This calculates the total salary per department.

✅ 3. Filter Groups Using HAVING

Definition:
The HAVING clause is used to filter groups after the GROUP BY clause is applied. It is similar to WHERE, but works on grouped data.

Difference Between WHERE and HAVING:

Clause	Works On	Used For
WHERE	Individual rows	Filtering before grouping
HAVING	Groups	Filtering after grouping

Example:

SELECT department, SUM(salary) AS total_salary
FROM employees
GROUP BY department
HAVING SUM(salary) > 100000;
