/* The TRUNCATE() function in MySQL is used to truncate (shorten) a numeric value to a specified number of decimal places. 
It does not round the number but simply cuts off the digits after the specified decimal place.
Syntax
TRUNCATE(number, decimal_places)
*/

select truncate(2.345444, 2);
select truncate(2.345444, 3);

select truncate(2.345444, 6);
select truncate(2.345444, 7);

