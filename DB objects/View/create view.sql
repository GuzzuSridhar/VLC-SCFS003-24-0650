/*
In MySQL, a view is a virtual table based on the result set of an SQL query. 
It does not store the data physically but dynamically fetches the data when queried. 
Views allow you to encapsulate complex queries and present a simplified, logical representation of the data to users. 
You can think of a view as a saved query that you can reference like a table.

Key points:
Virtual Table: A view behaves like a table, but its data is derived from the query it is based on.
Dynamic: The data in a view is updated automatically whenever the underlying base tables are updated.
Simplification: Views help simplify complex queries, making it easier to retrieve data by encapsulating join operations or filtering conditions.
Security: Views can be used to limit user access to specific data in the base tables, protecting sensitive data while exposing only the required columns.
	Syntax
	------
	CREATE VIEW view_name AS
	SELECT column1, column2, ...
	FROM table_name
	WHERE condition;
*/


create view emp_name as 
SELECT 
    ename, sal, dname, loc
FROM
    emp e,
    dept d
WHERE
    e.deptno = d.deptno;
    
desc emp_name;

select * from emp_name;