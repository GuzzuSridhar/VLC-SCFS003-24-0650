/*
An INNER JOIN in MySQL is used to combine rows from two or more tables based 
on a related column (not the name but the types of the columns) between them. 
The INNER JOIN keyword selects records that have matching values in both tables.
Syntax
SELECT column_names
FROM table1
INNER JOIN table2
ON table1.column_name = table2.column_name;
	When you use an INNER JOIN, MySQL returns only the rows where there is a match between the columns being joined. 
    If there is no match, the rows are excluded from the result set.
    
    This join type is one of the most common and is essential for working with relational databases where data is spread across multiple tables.
    Rows without matches are excluded: INNER JOIN only returns rows where the specified condition (the ON clause) is met.
*/


-- Using the inner join key word
SELECT 
    *
FROM
    emp e
        INNER JOIN
    dept d ON e.deptno = d.deptno;
    
-- using only the join keyword
SELECT 
    *
FROM
    emp e
         JOIN
    dept d ON e.deptno = d.deptno;
    
-- without using the inner join keyword
SELECT 
    *
FROM
    emp,
    dept
WHERE
    emp.deptno = dept.deptno;
 
 -- Show all employees in Accounting
 SELECT 
    empno, ename, hiredate, sal, mgr, dname, loc
FROM
    emp,
    dept
WHERE
    emp.deptno = dept.deptno
        AND dept.dname = 'accounting';
        
 -- Show all employees working in Dallas
 SELECT 
    empno, ename, hiredate, sal, mgr, dname, loc
FROM
    emp,
    dept
WHERE
    emp.deptno = dept.deptno
        AND dept.loc = 'DALLAS';
        
-- count of employees group by dname
SELECT 
    dname, COUNT(dept.deptno)
FROM
    emp,
    dept
WHERE
    emp.deptno = dept.deptno
GROUP BY dept.deptno;

-- or

 SELECT 
    dname, COUNT(dept.deptno)
FROM
    emp
        INNER JOIN
    dept ON emp.deptno = dept.deptno
GROUP BY dept.deptno;

-- OR

SELECT 
    dname, COUNT(dept.deptno)
FROM
    emp
        JOIN
    dept ON emp.deptno = dept.deptno
GROUP BY dept.deptno;