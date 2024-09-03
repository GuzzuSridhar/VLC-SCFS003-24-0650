/*
A LEFT JOIN (or LEFT OUTER JOIN) in MySQL is used to combine rows from two or more tables. 
The LEFT JOIN returns all the rows from the left table (the first table in the join), 
and the matched rows from the right table. 
If there is no match, the result is NULL on the side of the right table.
Syntax
SELECT column_names
FROM table1
LEFT JOIN table2
ON table1.column_name = table2.column_name;

	In a LEFT JOIN, the result set includes all the rows from the left table, 
	regardless of whether there is a matching row in the right table. 
	If there is no match, the result for the columns from the right table will be NULL
    
    All rows from the left table are included: Even if there is no corresponding row in the right table.
	Rows without matches are filled with NULL: If there's no match in the right table, 
    the columns from the right table will contain NULL values.
	Order of tables matters: 
    The left table (the first table in the LEFT JOIN clause) determines 
    which rows are guaranteed to be included in the result set.
    
    All rows from the right table are included: Even if there is no corresponding row in the left table.
	Rows without matches are filled with NULL: 
    If there's no match in the left table, the columns from the left table will contain NULL values.
	Order of tables matters: 
    The right table (the second table in the RIGHT JOIN clause) determines 
    which rows are guaranteed to be included in the result set.
*/

-- all the department details with employess and also no employees assigned.
  SELECT 
    dname, ename
FROM
    dept d
        LEFT JOIN
    emp e ON e.deptno = d.deptno
;
 
 SELECT 
    dname, COUNT(ename)
FROM
    dept d
        LEFT JOIN
    emp e ON e.deptno = d.deptno
GROUP BY dname;


 SELECT 
    c.customername, COUNT(o.orderid) AS '# orders'
FROM
    customers c
        LEFT JOIN
    orders o ON c.customerid = o.customerid
GROUP BY 1
ORDER BY 2;

-- or
SELECT 
    c.customername, COUNT(o.orderid) AS '# orders'
FROM
    customers c
        LEFT JOIN
    orders o ON c.customerid = o.customerid
GROUP BY 1 WITH ROLLUP
ORDER BY 2;