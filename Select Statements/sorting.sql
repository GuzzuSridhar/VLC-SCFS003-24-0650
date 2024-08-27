/*
	sorting of records is done by using the ORDER BY clause
    Syntax
    select <columns> from <table> [where clause] [order by [ASC | DESC ]];
    
    order by can be used on columns of any type
    NULL value is given higher precedence if present in a order by column
*/

-- example
-- display the employee records in the order of the salary earned

-- Ascending sort
SELECT 
    *
FROM
    emp
ORDER BY sal;

-- OR

SELECT 
    *
FROM
    emp
ORDER BY sal ASC;

-- Descending Sort
SELECT 
    *
FROM
    emp
ORDER BY sal desc;

-- Order by column position
SELECT 
    ename, sal
FROM
    emp
ORDER BY 2 DESC;

-- Order by nultiple columns
-- the order by columns can be more than 1
-- the sort direction (asc/desc) can be choosen for each sort column
SELECT 
    ename, sal, deptno
FROM
    emp
ORDER BY deptno , sal DESC;

-- using the positions
SELECT 
    sal, deptno
FROM
    emp
ORDER BY 2 , 1 DESC;

-- sort can also be performed on the result of a function
SELECT 
    *
FROM
    emp
ORDER BY LENGTH(ename);

