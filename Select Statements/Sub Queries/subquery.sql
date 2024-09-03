


-- display all reords of employees earning more than the avg salary
SELECT 
    *
FROM
    emp
WHERE
    sal > (SELECT 
            AVG(sal)
        FROM
            emp);
            
-- Multi column subquery
-- display the deptno and job of the person earning the max salary
SELECT 
    deptno, job
FROM
    emp
WHERE
    (deptno , job) = (SELECT 
            deptno, job
        FROM
            emp
        ORDER BY sal DESC
        LIMIT 1);