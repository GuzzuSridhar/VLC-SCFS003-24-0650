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

-- greater than equals operator
SELECT 
    *
FROM
    emp
WHERE
    sal >= 3000;
    
-- less than equals operator
SELECT 
    *
FROM
    emp
WHERE
    sal <= 3000;

-- like operator
-- used on the string type columns along with the wilcards
-- the 2 wildcards available are '_' and '%'
-- % denotes any no! of characters
-- _ denotes one character

-- display names starting with letter 'k'
SELECT 
    *
FROM
    emp
WHERE
    ename LIKE 'k%';
    
-- display all names with 4 characters in the name column
SELECT 
    ename
FROM
    emp
WHERE
    ename LIKE '____';
    
-- IN operator
SELECT 
    *
FROM
    emp
WHERE
    deptno IN (10 , 20);

-- is same as wiriting

SELECT 
    *
FROM
    emp
WHERE
    deptno = 10 OR deptno = 20
        OR deptno = 30;
        
 -- with string type
SELECT 
    *
FROM
    emp
WHERE
    ename IN ('king' , 'ward');
    
-- between operator
-- the values in the range are included (in the case below 3000 and 5000 are included)
SELECT 
    *
FROM
    emp
WHERE
    sal BETWEEN 3000 AND 5000;
-- same as writing
SELECT 
    *
FROM
    emp
WHERE
    sal >= 3000 AND sal <= 5000;
