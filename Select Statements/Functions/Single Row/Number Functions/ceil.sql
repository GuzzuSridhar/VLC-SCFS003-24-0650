/*  The CEIL() function in MySQL returns the smallest integer value that is greater than or equal to a given number. 
Syntax
CEIL(number)
number: The numeric value or expression to be rounded up.
*/

select ceil(2.2);
select ceil(2.9);
select ceil(-2.2);
select ceil(-15.2);

select sal*.1, ceil(sal*.1) from emp.emp;
