/*
A single-row subquery in SQL (including MySQL) is a subquery that returns only one row with one or more columns. 
It is often used in the WHERE, HAVING, or SELECT clauses to compare a value in the main query to a specific value derived from the subquery.

	Returns One Row: A single-row subquery is expected to return exactly one row. If it returns more than one row, it will cause an error (e.g., Subquery returns more than 1 row).
	Used with Comparison Operators: Since it returns a single value or a single row, it is typically used with comparison operators like =, <, >, <=, >=, or <>.
	Can Return Multiple Columns: Although it's called a "single-row" subquery, it can return multiple columns. However, these columns are usually used in conjunction with tuples in the outer query.
    
    Subquery: The subquery (SELECT salary FROM employees WHERE employee_id = 101) retrieves the salary of the employee with employee_id 101.
	Main Query: The main query selects all employees who have a salary equal to the value returned by the subquery.
*/

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