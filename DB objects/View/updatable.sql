/*
In MySQL, views can either be updatable or non-updatable. 
This distinction is based on whether you can perform INSERT, UPDATE, or DELETE operations directly on the view, 
with the changes being reflected in the underlying base tables.

1. Updatable Views
An updatable view allows you to modify the data in the underlying base table through the view. 
For example, you can INSERT, UPDATE, or DELETE rows in the view, and those operations will be propagated to the base table.

Characteristics of Updatable Views:
Single Table: The view is based on a single table.
No Aggregations: The view does not use aggregate functions (SUM(), COUNT(), etc.).
No DISTINCT Clause: The view does not include a DISTINCT clause.
No Grouping: The view does not use GROUP BY, HAVING, or ORDER BY.
No Joins: The view should not involve joins between multiple tables.
No Subqueries: The SELECT query defining the view does not contain subqueries in the FROM clause.
All Columns Mapped: Every column in the view must map directly to a column in the base table without any expressions (e.g., column1 + 10 would make it non-updatable).

2. Non-Updatable Views
Characteristics of Non-Updatable Views:
Multiple Tables: If the view involves joins between multiple tables, it is non-updatable.
Aggregations: If the view uses aggregate functions like SUM(), COUNT(), AVG(), etc., it is non-updatable.
Calculated Fields: If the view includes expressions (e.g., salary * 1.10), it is non-updatable.
DISTINCT or GROUP BY: Views using DISTINCT, GROUP BY, HAVING, or ORDER BY are non-updatable.
Subqueries: If the view contains subqueries or a complex query structure.

*/

create view emp_detail as select empno, ename, sal, deptno from emp.emp;
update emp_detail set sal = 9898 where empno = 7369;