/*
	used to join strings
*/

SELECT 
    CONCAT(ename,
            ' works as  ',
            job,
            ' and earns a salary of ',
            sal) AS 'employee detail'
FROM
    emp.emp;
    
SELECT 
    CONCAT_WS('-', ename, job)
FROM
    emp.emp;
    
 -- with Null values
 SELECT 
    comm,
    CONCAT(ename,
            ' works as  ',
            job,
            ' and earns a salary of ',
            sal,
            ' and a commission of ',
            IFNULL(comm, 0)) AS 'employee detail'
FROM
    emp.emp;