/*
The IFNULL() function in MySQL is used to handle NULL values by providing a default value when a given expression is NULL. 
It ensures that a result is always returned, even when the original value is NULL.
Syntax
IFNULL(expression, alternative_value)
expression: The value or column that you want to check for NULL.
alternative_value: The value to return if the expression is NULL.
Returns:
If expression is NULL, it returns alternative_value.
If expression is not NULL, it returns the value of expression.
*/

select sal, comm, sal+ifnull(comm,0) as total from emp;

select ename, sal, ifnull(comm, '--') from emp;

select ename, sal, ifnull(comm, 'NA') from emp;