/*
Subqueries in MySQL are queries that are nested within other queries. 
They allow you to perform complex operations and retrieve data based on conditions that involve multiple tables or different parts of the same table.

Common use cases for subqueries:
	Filtering data: Subqueries can be used to filter the results of the main query based on conditions defined in the subquery.
	Calculating values: Subqueries can be used to calculate values that are used in the main query.
	Correlated subqueries: Subqueries can be correlated to the main query, meaning that the subquery's results depend on the values from the main query.
    
Types of subqueries:
	Scalar subqueries: Return a single value, which can be used in the main query's WHERE, HAVING, or SELECT clause.
	Correlated subqueries: Reference columns from the outer query, making their results dependent on the outer query's row.
	Multiple-row subqueries: Return multiple rows, which can be used in the main query's IN, EXISTS, or ANY/ALL clauses.
*/


