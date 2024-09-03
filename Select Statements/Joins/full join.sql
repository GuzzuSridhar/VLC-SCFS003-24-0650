/*
	combination of left and right joins
    MYSQL does not have a syntax for FULL Join
    Use the Union / Union all to acheive the full join
*/

  SELECT 
    dname, ename
FROM
    dept d
        LEFT JOIN
    emp e ON e.deptno = d.deptno
union all
SELECT 
    ename, dname
FROM
    dept d
        RIGHT JOIN
    emp e ON e.deptno = d.deptno;
;

