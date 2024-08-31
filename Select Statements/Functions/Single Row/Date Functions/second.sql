/*
The SECOND() function in MySQL is used to extract the second part from a time or datetime value. 
It returns the second as an integer between 0 and 59.
Syntax
SECOND(time)
time: The time or datetime value from which you want to extract the second.
	Format: The result is an integer between 0 and 59, representing the second part of the provided time or datetime.
	Time and Datetime Values: The function works with both TIME and DATETIME data types. If the datetime has a date component, it is ignored, and only the time part is considered.
	Common Uses: Useful for extracting second information for detailed time reporting, grouping by seconds, or filtering records by specific seconds.
*/

select second(now());

-- if the param is of date type the result is always 0
select hour(curdate());