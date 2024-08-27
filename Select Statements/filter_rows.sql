/* Filter records
use where clause, and an operator in the where clause
Syntax
------
select <Column_list> from <table_name> [where condition];
	operators used in conditions
		=
        !=
        >
        >=
        <
        <=
        IN
        IS NULL
        LIKE
        BETWEEN
*/

/* using the equals operator */
SELECT 
    *
FROM
    emp
WHERE
    deptno = 10;
    
SELECT 
    *
FROM
    emp
WHERE
    empno = 7830;

-- with string data type
-- case insensitive
SELECT 
    *
FROM
    emp
WHERE
    ename = 'KING';

-- with dates
SELECT 
    *
FROM
    emp
WHERE
    hiredate = '1980-12-17';
    
-- multiple conditions with OR
SELECT 
    ename, sal, deptno
FROM
    emp
WHERE
    deptno = 10 OR deptno = 20;

/* using the not equals operator */
SELECT 
    *
FROM
    emp
WHERE
    deptno != 10;
    
SELECT 
    *
FROM
    emp
WHERE
    hiredate != '1980-12-17';
    
SELECT 
    *
FROM
    emp
WHERE
    ename != 'KING';
    
/*  greater than operator */
select * from emp where sal > 2500;
SELECT 
    ename, sal, deptno
FROM
    emp
WHERE
    sal > 2500;

-- multiple conditions with AND
SELECT 
    ename, sal, deptno
FROM
    emp
WHERE
    sal > 2500 AND deptno = 10;
    
