/*
UPDATE table_name
SET column1 = value1, column2 = value2, ...
WHERE condition;

*/

table test_dml;

update test_dml set name = 'anybody' where id = 4; 

update test_dml set name = 'x'; -- not advised

-- use select statement
update emp set sal = 1999 where empno = 7369;

update emp set sal = (select avg(sal) from emp where deptno = 20)  where deptno =20; -- error

-- work around
UPDATE emp
        JOIN
    (SELECT 
        AVG(sal) AS avg_sal
    FROM
        emp
    WHERE
        deptno = 20) AS x ON emp.deptno = 20 
SET 
    emp.sal = x.avg_sal;

