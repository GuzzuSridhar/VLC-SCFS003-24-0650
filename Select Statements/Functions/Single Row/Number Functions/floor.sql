/* The FLOOR() function in MySQL returns the largest integer value less than or equal to a given number. 
Syntax
FLOOR(number)
number: The numeric value or expression to be rounded down.
 */
 
select floor(2.278);
select floor(2.9);
select floor(-2.2678);
select floor(-15.2);

select sal*.1, floor(sal*.1) from emp.emp;