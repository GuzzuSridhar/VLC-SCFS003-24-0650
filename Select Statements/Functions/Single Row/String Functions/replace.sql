/* Replace Function 
Syntax
REPLACE(string, from_substring, to_substring)
string: The original string where you want to replace a substring.
from_substring: The substring you want to find and replace.
to_substring: The substring that will replace from_substring.
*/

-- Replace a set of characters
select replace("Hello World", "Hello", "Good");

-- Replace character
select replace("apple", 'a', 'o');
-- Making it case sensitive
select lower(replace(upper("apple"), 'A', 'o'));

-- remove a character
select replace("apple", 'a', '');
