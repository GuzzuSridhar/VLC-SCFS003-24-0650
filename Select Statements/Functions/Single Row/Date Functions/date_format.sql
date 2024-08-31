/*
DATE_FORMAT() function in MySQL is primarily used for displaying date and time values in a specific format. 
It does not alter the underlying data in the database but instead formats the data for output purposes.
Syntax
DATE_FORMAT(date, format)
date: The date or datetime value you want to format.
format: A string specifying the format for the output.

	Common Format Parameters:
		%Y: Four-digit year (e.g., 2024)
		%y: Two-digit year (e.g., 24)
		%m: Month (01 to 12)
		%d: Day of the month (01 to 31)
		%H: Hour (00 to 23)
		%i: Minutes (00 to 59)
		%s: Seconds (00 to 59)
		%p: AM or PM
		%M: Full month name (e.g., August)
		%b: Abbreviated month name (e.g., Aug)
		%D: Day of the month with English suffix (e.g., 20th)
		%W: Full weekday name (e.g., Monday)
		%a: Abbreviated weekday name (e.g., Mon)
		%r: Time in 12-hour format (e.g., 08:30:00 AM)

	Where Formatting Is Useful:
		Reports and Dashboards: Custom date formats to match reporting standards.
		User Interfaces: Displaying dates in user-friendly formats, like August 20, 2024.
		Data Export: Formatting dates in CSV or other export formats according to required standards.
*/