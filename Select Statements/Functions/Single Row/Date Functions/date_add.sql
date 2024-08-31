/*
The DATE_ADD() function in MySQL is used to add a specified time interval to a date or datetime value. 
This function is particularly useful when you need to calculate future or past dates based on a given date.
Syntax
DATE_ADD(date, INTERVAL expr unit)
	date: The date or datetime value to which you want to add the interval.
	expr: The quantity of the time interval you want to add (e.g., 10 for 10 days).
	unit: The unit of time for the interval (e.g., DAY, MONTH, YEAR, HOUR, MINUTE, etc.).
*/

-- add an year to current date
select date_add(current_date(), INTERVAL 1 year);
-- add a month to current date
select date_add(current_date(), INTERVAL 1 month);
-- add 10 days to current date
select date_add(current_date(), INTERVAL 10 day);

-- combine units
select 
	date_add(
	date_add(curdate(), INTERVAL 1 year),
    INTERVAL 1 Month);
    
-- using negative values as intervals
select date_add(current_date(), INTERVAL -1 year);
