/* Lpad Function 
Syntax
LPAD(string, length, pad_string)
string: The original string that you want to pad.
length: The desired total length of the string after padding.
pad_string: The string or character to use for padding. If this is longer than needed, only the leftmost portion will be used.
*/

select lpad('123', 10, '0');
select lpad('123', 10, '-');
select lpad('123', 10, ' ');

select lpad('abc', 10, 'xy');

select lpad(ename, 20, ' ') as right_Justify from emp.emp;