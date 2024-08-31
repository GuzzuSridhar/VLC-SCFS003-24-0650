/*
The DAY() function in MySQL is used to extract the day of the month from a date or datetime value. 
It returns the day as an integer between 1 and 31, depending on the month and year.
Syntax
DAY(date)
	date: The date or datetime value from which you want to extract the day.
    
    Format: The result is an integer between 1 and 31, which represents the day of the month.
	Date and Datetime Values: The function works with both DATE and DATETIME data types, ignoring the time part if present.
	Common Uses: Useful for extracting day information for reporting, grouping by day, or filtering records by specific days.
*/

select day(now());

select day(hiredate) from emp.emp;