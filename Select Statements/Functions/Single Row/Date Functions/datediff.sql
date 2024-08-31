/*
The DATEDIFF() function in MySQL is used to calculate the difference in days between two date values. 
It returns the number of days between the two dates, 
and it only considers the date part (ignoring any time component).
Syntax
DATEDIFF(expr1, expr2)
expr1: The first date (usually the later date).
expr2: The second date (usually the earlier date).

How It Works:
DATEDIFF() returns an integer representing the difference in days between expr1 and expr2.
The result is positive if expr1 is after expr2, negative if expr1 is before expr2, and zero if the dates are the same.
No Time Component: If expr1 or expr2 include a time component, it is ignored. Only the date part is used.
*/
-- experience in days
select abs(datediff(hiredate,curdate())) from emp.emp;

-- age in # days 
select datediff(curdate(),'1999,03,20');

-- Negative output
select datediff('1999,03,20', curdate());