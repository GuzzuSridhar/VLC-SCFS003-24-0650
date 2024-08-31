/*
The LOCATE() function in MySQL is used to find the position of a substring within a string. 
It returns the first occurrence of the substring, starting from the beginning of the string or from a specified position. 
If the substring is not found, it returns 0.
Syntax
LOCATE(substring, string, start_position)
	substring: The substring you want to find within the string.
	string: The string in which to search for the substring.
	start_position (optional): The position in the string to start the search. 
    This argument is optional, and if omitted, the search begins from the start of the string (position 1).
    
    Return Value
    The function returns an integer indicating the position of the first occurrence of the substring.
	If the substring is not found, it returns 0.
	The position returned is 1-based, meaning the first character of the string is considered position 1.
    
    Comparison with INSTR():
	LOCATE(): Allows specifying a starting position for the search.
	INSTR(): Always starts searching from the beginning of the string and does not allow specifying a starting position.
*/

select locate('World', 'Hello World');

select locate('o', 'Hello World', 6);