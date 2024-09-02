/*
A CROSS JOIN in MySQL produces a Cartesian product of the two tables involved in the join. 
This means that every row from the first table is combined with every row from the second table. Unlike other types of joins, 
a CROSS JOIN does not require a condition to join the tables, and it is used when you need to combine all possible pairs of rows from the two tables.
Syntax
SELECT *
FROM table1
CROSS JOIN table2;
-- Or using the older syntax:
SELECT *
FROM table1, table2;

	If table1 has n rows and table2 has m rows, the result of a CROSS JOIN will have n * m rows.
	Each row of table1 is combined with every row of table2.
    Use Cases:
		Generating Combinations: When you need to generate all possible combinations of two sets of data.
		Creating Test Data: Useful in scenarios where you need to simulate all possible scenarios between two data sets.
	Notes:
		Result Size: Since a CROSS JOIN generates a Cartesian product, the result size can become very large, especially when joining large tables. This can impact performance, so use it carefully.
		Intentional Use: Most use cases for CROSS JOIN are intentional for generating combinations. 
        If not used carefully, it can lead to unintended large result sets.
    */
    
SELECT 
    *
FROM
    emp.emp,
    emp.dept;
    
-- OR

SELECT 
    *
FROM
    emp.emp
        CROSS JOIN
    emp.dept;