/*
A RIGHT JOIN (or RIGHT OUTER JOIN) in MySQL is used to combine rows from two or more tables. 
The RIGHT JOIN returns all the rows from the right table (the second table in the join), 
and the matched rows from the left table. 
If there is no match, the result is NULL on the side of the left table.
Syntax
SELECT column_names
FROM table1
RIGHT JOIN table2
ON table1.column_name = table2.column_name;

	In a RIGHT JOIN, the result set includes all the rows from the right table, 
    regardless of whether there is a matching row in the left table. 
    If there is no match, the result for the columns from the left table will be NULL.
*/


-- display all the employees that are assigned to an department and otherwise
SELECT 
    ename, dname
FROM
    dept d
        RIGHT JOIN
    emp e ON e.deptno = d.deptno;