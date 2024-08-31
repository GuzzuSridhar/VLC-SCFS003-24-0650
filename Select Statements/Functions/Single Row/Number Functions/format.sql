/*
The FORMAT function in MySQL is used to format a number with a specified number of decimal places and optionally a thousands separator. 
It returns a formatted string representing the number.
Syntax
FORMAT(number, decimal_places, [locale])
	number: The number to be formatted.
	decimal_places: The number of decimal places you want in the formatted number.
	locale (optional): A locale code that determines the formatting conventions (e.g., commas, periods).

	If the decimal_places is negative, the number will be rounded to the nearest integer.
	If the locale parameter is not specified, MySQL uses the default locale for the session.
	The FORMAT function returns a string, so you can use it in string concatenation or other string operations.
    The function rounds the number to the specified number of decimal places.
*/

select format(123456.8788, 2);

select format(123456.8788, 2, 'de_DE');