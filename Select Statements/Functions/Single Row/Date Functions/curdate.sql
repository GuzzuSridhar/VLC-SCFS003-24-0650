/* The CURDATE() and CURRENT_DATE() functions in MySQL are used to return the current date without the time portion. 
Both functions are functionally identical and return the same result.
Syntax
SELECT CURDATE();
OR
SELECT CURRENT_DATE();
*/

select curdate();
-- or
select current_date();

select * from emp.emp where curdate() = hiredate;