/*
The HAVING clause in MySQL is used to filter records after the GROUP BY clause has been applied. 
It works similarly to the WHERE clause, but the key difference is that WHERE filters rows before any grouping is done, 
while HAVING filters groups after the aggregation has been performed.
Syntax
SELECT column_name, aggregate_function(column_name)
FROM table_name
GROUP BY column_name
HAVING condition;
	Used with Aggregate Functions: The HAVING clause is often used with aggregate functions like COUNT, SUM, AVG, MAX, MIN 
    because it allows you to filter groups based on the result of these functions.
	Comes After GROUP BY: The HAVING clause comes after the GROUP BY clause in a SQL query
*/

SELECT 
    deptno, SUM(sal)
FROM
    emp
WHERE
    deptno IN (10 , 30)
GROUP BY deptno;

SELECT 
    deptno, SUM(sal)
FROM
    emp
GROUP BY deptno
HAVING deptno IN (10 , 30);

SELECT 
    deptno, SUM(sal)
FROM
    emp
WHERE
    deptno IN (10 , 30)
GROUP BY deptno
HAVING SUM(sal) > 9000;