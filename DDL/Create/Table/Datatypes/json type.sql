/*
CREATE TABLE statement that includes a JSON data type in MySQL:

	JSON: This data type stores JSON (JavaScript Object Notation) objects. It allows you to store structured data, such as objects and arrays, directly in a MySQL table. 
	The JSON type ensures that the data stored is valid JSON and provides functions to query and manipulate JSON data.
*/

create table json_type(
product_id int,
description varchar(100),
details json
);

insert into json_type values(1, 'Laptop', '{ "brand":"Dell", "model": "xps"}' );

select * from json_type;

select description from json_type;

-- select specific json key attribute from the table (with quotes)
select 
	details->'$.brand' as brand
from json_type;

-- select specific json key attribute from the table (without quotes)
select 
	details->>'$.brand' as brand
from json_type;


