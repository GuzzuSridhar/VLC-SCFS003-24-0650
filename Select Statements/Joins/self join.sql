/*
	Joining a table to itself
*/

-- display the names of the employees and the name of the manager for the same.
SELECT 
    e.ename AS Employee, m.ename AS manager
FROM
    emp e
        JOIN
    emp m ON e.mgr = m.empno;