/* The ROUND() function in MySQL is used to round a numeric value to a specified number of decimal places
Syntax
ROUND(number, decimal_places)
number: The numeric value or expression that you want to round.
decimal_places: The number of decimal places to round to. If omitted, the function rounds to the nearest integer.
 */
 
select round(100.88);
select round(100.48);
select round(100.4466,2);

-- round to nearest tens
select round(100.68, -1);
  
-- round to nearest hundreds
select round(5678, -2);

-- round to nearest hundreds
select round(5678, -3);

-- rounding with ties
select round(2.5);

-- with table
SELECT 
    sal, 
    ROUND(sal) as round,
    round(sal,-2) as "Nearest Hundred"
FROM
    emp.emp;