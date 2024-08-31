/*
The MONTH() function in MySQL is used to extract the month part from a date or datetime value. 
It returns the month as an integer between 1 and 12.
Syntax
MONTH(date)
	date: The date or datetime value from which you want to extract the month.
    Format: The result is an integer from 1 (January) to 12 (December).
	Date and Datetime Values: The function works with both DATE and DATETIME data types, ignoring the time part if present.
	Common Uses: Useful for grouping records by month, filtering data for a specific month, or generating month-based reports.
*/

select month(now());

select monthname(now());

select month(hiredate), monthname(hiredate) from emp.emp;

-- in a where clause
select * from emp where monthname(hiredate) = 'December';