/*
The HOUR() function in MySQL is used to extract the hour part from a time or datetime value. 
It returns the hour as an integer between 0 and 23.
Syntax
HOUR(time)
	time: The time or datetime value from which you want to extract the hour.
    
    Format: The result is an integer between 0 and 23, representing the hour part of the provided time or datetime.
	Time and Datetime Values: The function works with both TIME and DATETIME data types. If the datetime has a date component, it is ignored, and only the time part is considered.
	Common Uses: Useful for extracting hour information for reporting, grouping by hour, or filtering records by specific hours.
*/

select hour(now());
-- if the param is of date type the result is always 0
select hour(curdate());