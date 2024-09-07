/*
A multiple-row subquery in SQL is a subquery that returns more than one row of results. 
Unlike single-row subqueries, which return a single value or a single row, multiple-row subqueries return a set of rows that can be used to compare against the results of the outer query.

	Returns Multiple Rows: This type of subquery returns more than one row and can be used with operators that accept sets of values, such as IN, ANY, and ALL.
	Used with Operators: Multiple-row subqueries are commonly used with IN, ANY, and ALL operators to filter results in the outer query based on the set of values returned by the subquery.
    
    Common Operators with Multiple-Row Subqueries:
		IN Operator: Checks if a value matches any value in a list returned by the subquery.
		ANY Operator: Compares a value to each value in a list returned by the subquery, returning true if the comparison is true for at least one value.
		ALL Operator: Compares a value to each value in a list returned by the subquery, returning true if the comparison is true for all values.
*/

-- select departments that have no employees assigned
select deptno from dept where deptno not in (select distinct deptno from emp);
-- is same as 
select deptno from dept where deptno in (10,20,30);

-- display all employee records working in 'chicago'
select ename, deptno from emp where deptno in (select deptno from dept where loc = 'chicago' or loc = 'dallas');


-- use of the ANY keyword in the search
-- find the products whose price is greater than  the price atleast one product with category 2

use northwind;
SELECT 
    productid, ProductName, price
FROM
    northwind.products
WHERE
    price > ANY (SELECT 
            price
        FROM
            northwind.products
        WHERE
            CategoryID = 2);
            
