/* ABS() function in MySQL is used to return the absolute value of a number. 
The absolute value of a number is its non-negative value, meaning it removes any negative sign.
Syntax
ABS(number)
number: The numeric value or expression for which you want to find the absolute value.
*/

select abs(-10);

-- using with tables
SELECT 
    ABS(sal - comm)
FROM
    emp
WHERE
    comm IS NOT NULL;