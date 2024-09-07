/*
The EXCEPT operator in MySQL is used to return the rows that are in the result set of the 
first SELECT statement but not in the result set of the second SELECT statement. 
It essentially performs a set difference operation.
Syntax
SELECT column_list FROM table1
EXCEPT
SELECT column_list FROM table2;
	SELECT column_list FROM table1: The first SELECT statement specifies the columns and table to be queried.
	EXCEPT: This keyword indicates that a set difference operation will be performed.
	SELECT column_list FROM table2: The second SELECT statement specifies the columns and table to be subtracted from the first result set.
    
    The column lists in both SELECT statements must be compatible (i.e., they must have the same number of columns and corresponding data types).
	The EXCEPT operator returns only unique rows. Duplicate rows will be eliminated from the result set.
	The EXCEPT operator can be combined with other set operators like UNION and INTERSECT to perform more complex set operations.
    
    The EXCEPT operator is not available in all versions of MySQL. 
    It was introduced in MySQL 8.0.13. 
    If you're using an older version, you may need to use a workaround 
    like a LEFT JOIN or a NOT IN subquery to achieve similar functionality.
*/

-- the departments which do not have employees
select deptno from dept
except
select deptno from emp;