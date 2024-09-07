/*
The INTERSECT operator in MySQL returns the rows that are common to the result sets of two or more SELECT statements. 
It's useful for finding overlapping data between multiple tables or queries.
Syntax
SELECT column_list FROM table1
INTERSECT
SELECT column_list FROM table2;

	SELECT column_list FROM table1: The first SELECT statement specifies the columns and table to be queried.
	INTERSECT: This keyword indicates that the intersection of the result sets will be found.
	SELECT column_list FROM table2: The second SELECT statement specifies the columns and table to be compared with the first result set.
    
    The column lists in both SELECT statements must be compatible (i.e., they must have the same number of columns and corresponding data types).
	The INTERSECT operator returns only unique rows. Duplicate rows will be eliminated from the result set.
	The INTERSECT operator can be combined with other set operators like UNION and EXCEPT to perform more complex set operations.
    
*/
select deptno from emp
intersect
select deptno from dept;