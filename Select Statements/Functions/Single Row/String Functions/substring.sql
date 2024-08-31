/* 
In MySQL, the SUBSTRING() function is used to extract a portion of a string based on specified start position and length
syntax
SUBSTRING(string, start, length)
SUBSTR(string, start_position, length)

string: The string from which you want to extract a substring.
start_position: The position to start extracting. The first character of the string is at position 1. 
				If this value is negative, extraction starts from the end of the string.
				length: (Optional) The number of characters to extract. 
                If omitted, the function extracts the substring from the start position to the end of the string.
*/

select substring("Hello World", 7, 6);

-- Negative value for start
select substring("Hello World", -5, 6);

-- Table data
select substr(ename, 2) from emp.emp;