/* 
The INSTR() function in MySQL is used to find the position of the first occurrence of a substring within another string.
Syntax
INSTR(string, substring)
string: The string to be searched.
substring: The substring you want to find within the string.
 */
 
 -- Example
  SELECT 
 INSTR('Hello, World!', 'World') AS result;
 
 -- Substring Not Found --> returns 0
 select instr("HEllo World", "Test");
 
 -- Case sensitivity -- (Not applicable by default)
 select instr("HEllo World", "world");