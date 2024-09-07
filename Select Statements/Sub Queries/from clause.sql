SELECT 
    x
FROM
    (SELECT 
        SUM(sal) AS x
    FROM
        emp
    GROUP BY deptno
    ORDER BY 1
    LIMIT 1) AS e;
    
    
    SELECT 
    x.deptno
FROM
    (SELECT 
        deptno
    FROM
        emp
    GROUP BY deptno
    HAVING COUNT(deptno) < 6) AS x;
    
SELECT 
    e1.ename, e1.sal, e1.deptno, asal.avg_sal
FROM
    emp e1
        JOIN
    (SELECT 
        deptno, AVG(sal) AS avg_sal
    FROM
        emp
    GROUP BY deptno) AS asal ON e1.deptno = asal.deptno
WHERE
    e1.sal > asal.avg_sal
ORDER BY 3
;