/*
The DATE_SUB() function in MySQL is used to subtract a specified time interval from a date or datetime value. 
It's essentially the opposite of the DATE_ADD() function.
Syntax
DATE_SUB(date, INTERVAL expr unit)
	date: The date or datetime value from which you want to subtract the interval.
	expr: The quantity of the time interval you want to subtract (e.g., 10 for 10 days).
	unit: The unit of time for the interval (e.g., DAY, MONTH, YEAR, HOUR, MINUTE, etc.).
*/

select date_sub(curdate(), interval 1 year );

-- using the negative interval to add units
select date_sub(curdate(), interval -1 year );