/*
The YEAR() function in MySQL is used to extract the year part from a date or datetime value. It returns the year as a four-digit integer.
Syntax
YEAR(date)
	date: The date or datetime value from which you want to extract the year.
    
    Format: The result is a four-digit integer representing the year part of the provided date or datetime.
	Date and Datetime Values: The function works with both DATE and DATETIME data types, ignoring the time part if present.
	Common Uses: Used to group records by year, filter data for a specific year, or generate year-based reports.
*/

select year(now());
select year(curdate());

select year(hiredate) from emp.emp;

-- in the where clause
 select * from emp where year(hiredate) = '1981';
