/*
The COALESCE() function in MySQL is used to return the first non-NULL value from a list of expressions. 
It is particularly useful for handling NULL values by providing a default value or fallback option among several possibilities.
Syntax
COALESCE(expression1, expression2, ..., expressionN)
expression1, expression2, ..., expressionN: The list of expressions to be evaluated. COALESCE() returns the first expression that is not NULL.
Returns:
The first non-NULL value from the list of expressions.
If all expressions are NULL, it returns NULL.
*/

select coalesce(null, null, 1,2);

-- using with tables
 SELECT 
    sal, comm, COALESCE(sal + comm, sal) AS total
FROM
    emp;