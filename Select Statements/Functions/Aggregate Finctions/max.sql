/*
The MAX() function in MySQL is an aggregate function that returns the largest value in a specified column. 
It can be used with numeric, string, and date data types to find the maximum value.
Syntax
SELECT MAX(column_name) AS max_value FROM table_name;
	column_name: The name of the column from which you want to find the maximum value.
	table_name: The name of the table where the data is stored.
*/

-- highest salary
select max(sal) from emp.emp;

-- latest recruit
select max(hiredate) from emp.emp;

-- last name
select max(ename) from emp.emp;