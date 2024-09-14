/*
you can use the INSERT ... SELECT statement to insert data into a table based on the result of a SELECT query from one or more other tables. 
This is useful for copying data between tables or inserting data that meets certain criteria.
Syntax
INSERT INTO target_table [(column1, column2, ...)]
SELECT column1, column2, ...
FROM source_table
WHERE condition;

	target_table: The table where you want to insert data.
	column1, column2, ...: The columns in the target table where data will be inserted.
	source_table: The table from which data will be selected.
	condition: Optional condition to filter rows from the source table.
*/

insert into test_dml(name) select name from test_dml_one;
create table test_copy as select * from test_dml where 1=2; -- copying the structure
insert into test_copy select * from test_dml where id > 5;