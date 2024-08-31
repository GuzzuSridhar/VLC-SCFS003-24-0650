/*
In MySQL, the DISTINCT keyword is used in a SELECT statement to retrieve unique rows from the result set. 
It eliminates duplicate records, ensuring that each row in the result is distinct based on the columns specified.
Syntax
SELECT DISTINCT column1, column2, ...
FROM table_name;
	Single Column: If you use DISTINCT with a single column, it returns all unique values for that column.
	Multiple Columns: When used with multiple columns, DISTINCT considers the combination of all specified columns to determine uniqueness.
*/

-- with one distinct column
SELECT DISTINCT
    deptno
FROM
    emp.emp;

-- with multiple distinct columns
SELECT DISTINCT
    deptno, empno
FROM
    emp.emp;
    
-- find the # managers
select distinct mgr from emp.emp;

-- display the managers names
select ename from emp where empno in (7902,7968,7839,7566,7788,7782);


