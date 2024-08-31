/*
The ISNULL() function in MySQL is used to check whether a given expression is NULL. 
It helps in determining the presence of NULL values in a dataset.
Syntax
ISNULL(expression)
expression: The value or column that you want to test for NULL.

	Purpose: The primary purpose of ISNULL() is to determine whether an expression evaluates to NULL. This can be useful in conditional logic where you need to check for the absence of a value.
	Behavior: The function does not convert NULL values but simply tests for their presence. It provides a binary result (1 or 0), making it straightforward for use in logical operations and filtering.
	Comparison with Other Functions:
		IFNULL(): Unlike ISNULL(), IFNULL() is used to replace NULL values with a specified default value.
		COALESCE(): Provides more flexibility than ISNULL() as it returns the first non-NULL value among multiple expressions.
*/

select isnull(null) as is_null;
select isnull(10) as is_null;
select isnull('Str') as is_null;

select * from emp.emp where isnull(comm) = 1 ;
select * from emp.emp where isnull(comm) = 0 ;