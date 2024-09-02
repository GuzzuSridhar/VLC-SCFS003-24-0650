/*
The GROUP BY clause in MySQL is used to group rows that have the same values in specified columns into aggregated data. 
It's commonly used in conjunction with aggregate functions like SUM(), COUNT(), AVG(), MAX(), and MIN() 
to perform calculations on each group of rows.
Syntax
SELECT column1, column2, ..., aggregate_function(column)
FROM table
WHERE condition
GROUP BY column1, column2, ...;

	column1, column2, ...`: These are the columns by which you want to group the data.
	aggregate_function(column): This is an aggregate function applied to each group.
	table: The table from which to retrieve the data.
	condition: (Optional) This is a condition to filter the rows before grouping them.
    
*/

SELECT 
    deptno, COUNT(sal), SUM(sal), AVG(sal), MAX(sal), MIN(sal)
FROM
    emp
GROUP BY deptno;

-- # employees in each department
SELECT 
    deptno, COUNT(*) '#employees'
FROM
    emp
GROUP BY deptno;

-- # employees reporting to a manager
SELECT 
    mgr, COUNT(*) '# Repotees'
FROM
    emp
GROUP BY mgr;

-- Group by multiple columns
SELECT 
    deptno, mgr, COUNT(*)
FROM
    emp
GROUP BY deptno , mgr
ORDER BY deptno;











