/* Pads the right side of a string with a specified character or string to reach a given length. 
Syntax
RPAD(string, length, pad_string)
string: The original string that you want to pad.
length: The desired total length of the string after padding.
pad_string: The string or character to use for padding. 
			If this is longer than needed, only the leftmost portion will be used.
*/

select rpad('123', 10, '0');
select rpad('123', 10, '-');

select rpad('abc', 10, 'xy');
