/*
The COUNT function in MySQL is an aggregate function that returns the number of rows that match a specified condition. 
It's commonly used to determine the number of entries in a table or the number of entries that meet specific criteria.
Syntax
SELECT COUNT(expression)
FROM table_name
WHERE condition;

Use Cases:
	Counting Rows: Quickly determine how many rows are in a table.
	Filtering and Counting: Count the number of rows that meet a specific condition, such as those above a certain salary or within a specific department.
	Counting Distinct Values: Find out how many unique values exist in a column, such as the number of unique products sold or the number of distinct customers.
*/

-- find the # records in a table
select count(*) from emp.emp;

-- find # departments
select count(deptno) from emp.emp;
-- count of unique department #
select count(distinct deptno) from emp.emp;

-- NOT ALLOWED
SELECT 
    ename, COUNT(DISTINCT deptno)
FROM
    emp.emp;
    
-- count with null values (count function ignores nulls)
select count(comm) from emp.emp;



