/*
The MIN() function in MySQL is an aggregate function that returns the smallest value in a specified column. 
It can be used to find the minimum value of both numeric and non-numeric data types, such as strings or dates.
Syntax
SELECT MIN(column_name) AS min_value FROM table_name;
	column_name: The name of the column from which you want to find the minimum value.
	table_name: The name of the table where the data is stored.
    
    NULL Values: The MIN() function ignores NULL values, so they do not affect the result.
	Non-Numeric Data: MIN() can also be used on non-numeric columns like strings or dates. For strings, the result is the lexicographically smallest value.
    
    The MIN() function in MySQL returns the smallest value from a specified column.
	It can be applied to numeric, string, or date columns.
	MIN() is often used in reporting, data analysis, and when combined with GROUP BY to find the smallest value within groups.
*/

-- lowest salary
select min(sal) from emp.emp;

-- first recruit
select min(hiredate) from emp.emp;

-- using min with Strings
select min(ename) from emp.emp;

