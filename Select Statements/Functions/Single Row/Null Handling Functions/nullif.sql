/*
The NULLIF() function in MySQL is used to compare two expressions and return NULL if they are equal. If the expressions are not equal, it returns the value of the first expression. 
This function is particularly useful for avoiding division by zero errors and for handling specific cases where you want to replace certain values with NULL.
Syntax
NULLIF(expression1, expression2)
expression1: The value to be compared.
expression2: The value to compare against.
Returns:
NULL if expression1 is equal to expression2.
The value of expression1 if expression1 is not equal to expression2.
*/

-- returns null
select nullif(5,5);
 
-- returns 5
select nullif(5,6);