/*
The SUM function in MySQL is an aggregate function that calculates the total sum of a numeric column or expression across a set of rows. 
It is commonly used to sum up the values of a column, such as calculating the total revenue, total salary, or any other kind of aggregate total.
Syntax
SELECT SUM(column_name)
FROM table_name
WHERE condition;
	The SUM function adds up all the values in the specified column.
	If the column contains NULL values, they are ignored in the calculation.
    Data Type: The SUM function is primarily used with numeric data types (INT, FLOAT, DECIMAL, etc.). Using it with non-numeric data types will result in an error.
    Use Cases:
		Financial Calculations: Summing up total sales, revenue, expenses, or any other financial metric.
		Data Aggregation: Summing up values within a certain group, such as total hours worked per project, total sales per region, etc.
		Generating Reports: Useful in generating summary reports that require aggregate totals, like the total value of inventory, total orders placed, etc.
*/

select sum(sal) from emp.emp;

select sum(sal)*12 as 'Total Annual Salaries'from emp.emp;

-- null values are ignored
select sum(comm) from emp.emp;

select sum(sal)/count(sal) as avg from emp.emp;
