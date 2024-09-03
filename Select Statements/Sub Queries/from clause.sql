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