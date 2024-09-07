/*
The UNION operator in MySQL combines the result sets of two or more SELECT statements, 
eliminating duplicate rows. 
It's a useful tool for combining data from multiple sources or for performing set operations.
Syntax
SELECT column_list FROM table1
UNION
SELECT column_list FROM table2;

	SELECT column_list FROM table1: The first SELECT statement specifies the columns and table to be queried.
	UNION: This keyword indicates that the result sets of the two SELECT statements will be combined.
	SELECT column_list FROM table2: The second SELECT statement specifies the columns and table to be combined with the first result set.
    
    The column lists in both SELECT statements must be compatible (i.e., they must have the same number of columns and corresponding data types).
	The UNION operator eliminates duplicate rows. If you want to include duplicate rows, use the UNION ALL operator.
	The UNION operator can be combined with other set operators like INTERSECT and EXCEPT to perform more complex set operations.
    
*/

-- unique rows from 2 queries
select deptno from emp
union 
select deptno from dept;

-- all rows (incl. of duplicates) from 2 queries
select deptno from emp
union ALL
select deptno from dept;