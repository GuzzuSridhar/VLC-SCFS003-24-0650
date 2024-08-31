/*
The MINUTE() function in MySQL is used to extract the minute part from a time or datetime value. 
It returns the minute as an integer between 0 and 59.
Syntax
MINUTE(time)
time: The time or datetime value from which you want to extract the minute.
	Format: The result is an integer between 0 and 59, representing the minute part of the provided time or datetime.
	Time and Datetime Values: The function works with both TIME and DATETIME data types. If the datetime has a date component, it is ignored, and only the time part is considered.
	Common Uses: Useful for extracting minute information for reporting, grouping by minute, or filtering records by specific minutes.
*/

select minute(now());
-- if the param is of date type the result is always 0
select hour(curdate());