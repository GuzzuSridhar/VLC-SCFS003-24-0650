/*
The STR_TO_DATE() function in MySQL is used to convert a string into a DATE, DATETIME, or TIME value based on a specified format. 
This function is particularly useful for parsing date and time strings that are in a different format than MySQL's default date and time formats.
Syntax
STR_TO_DATE(string, format)
string: The string representing the date and/or time to be converted.
format: The format string that specifies the format of the input string. This format string uses the same format specifiers as those used by DATE_FORMAT().
		Common Format Specifiers:
		%Y: Four-digit year (e.g., 2024)
		%y: Two-digit year (e.g., 24)
		%m: Month (01 to 12)
		%d: Day of the month (01 to 31)
		%H: Hour (00 to 23)
		%i: Minutes (00 to 59)
		%s: Seconds (00 to 59)
		%r: Time in 12-hour format (e.g., 08:30:00 AM)
        
        If the string does not match the format exactly, STR_TO_DATE() will return NULL. 
        Ensure that the format string matches the input string format precisely.
        
        When to Use?
        Parsing Date and Time Strings from User Input
			When users provide dates and times in various formats (e.g., "MM/DD/YYYY", "DD-MM-YYYY"), you can use STR_TO_DATE() to convert these strings into a format that MySQL can handle.
		Importing Data from External Sources
			When importing data from CSV files or other external sources where dates and times are in non-standard formats, you can use STR_TO_DATE() to convert the string dates into MySQL date types.
		Handling Dates in Custom Formats
			If you have date data stored in custom formats or varying formats and need to standardize them for comparisons, sorting, or calculations, STR_TO_DATE() helps normalize these values.
*/

-- Convert a string to date
	SELECT str_to_date('20-08-2024', '%d-%m-%Y') as date;

-- extract month of a custom date format
SELECT month(str_to_date('08-31-2024', '%m-%d-%Y')) as date;

-- custom date time
	SELECT str_to_date('20-08-2024 12:35:56', '%d-%m-%Y %h:%i:%s') as date;
