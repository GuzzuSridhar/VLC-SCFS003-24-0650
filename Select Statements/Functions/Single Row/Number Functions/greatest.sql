/*
The GREATEST() function in MySQL returns the largest (maximum) value from a list of arguments.
Syntax
GREATEST(value1, value2, value3, ...)
*/

select greatest(10,20,100);

-- With Null values
select greatest(10,20,100, NULL);

-- with Strings
select greatest('apple', 'banana', 'grapes');