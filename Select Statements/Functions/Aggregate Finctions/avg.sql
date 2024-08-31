/*
The AVG function in MySQL is an aggregate function that calculates the average (mean) value of a numeric column or expression.
It is used to find the average of a set of values, which can be useful in various scenarios, 
such as determining the average salary, average score, average price, etc.
Syntax
SELECT AVG(column_name)
FROM table_name
WHERE condition;

	The AVG function adds up all the values in the specified column and then divides the total by the number of non-NULL values.
	If the column contains NULL values, they are ignored in the calculation.
*/

select avg(sal) as Avg_Earning from emp.emp;