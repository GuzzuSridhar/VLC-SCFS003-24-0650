/*
The WITH clause, also known as a Common Table Expression (CTE), provides a way to define temporary named result sets that can be referenced within a main query. 
This is particularly useful for breaking down complex queries into smaller, more manageable parts, improving readability and maintainability.
Syntax:
WITH cte_name AS (
    SELECT column1, column2, ...
    FROM table_name
    WHERE condition
)
SELECT column1, column2, ...
FROM cte_name
WHERE condition;

	CTE Name: A unique name assigned to the temporary result set.
	CTE Definition: The SQL query that defines the temporary result set.
	Main Query: The main query that references the CTE.
*/

with numemp as (
	select ename, sal, row_number() over (order by sal desc) as row_num from emp
    )
-- select ename, sal from numemp where row_num between 11 and 15 ;
-- select ename, sal from numemp where row_num = 5;
select * from numemp;
