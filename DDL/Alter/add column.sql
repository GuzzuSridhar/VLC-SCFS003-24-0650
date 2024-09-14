/*
The ALTER TABLE ADD COLUMN statement in SQL is used to add a new column to an existing table. 
This operation allows you to extend the table's schema by introducing additional fields to store more data.
Syntax
ALTER TABLE table_name
ADD column_name datatype [constraints];
	
    ALTER TABLE table_name:
		ALTER TABLE is the SQL command used to modify the structure of an existing table.
		table_name is the name of the table to which you want to add the new column.

	ADD column_name:
		ADD specifies that you are adding a new column.
		column_name is the name you assign to the new column. It must be unique within the table and adhere to naming conventions.

	datatype:
		Defines the type of data that the new column will store. Common data types include:
		VARCHAR(n): Variable-length string with a maximum length of n characters.
		INT: Integer value.
		DECIMAL: Decimal number with p total digits and s digits after the decimal point.
		DATE: Date in YYYY-MM-DD format.
		DATETIME: Date and time in YYYY-MM-DD HH:MM:SS format.
*/

-- adding a column
alter table employees add middle_name varchar(50);

-- adding a column with constraint
 alter table employees add status ENUM('active','inactive','leave') default 'active';
 
 -- invalid colum addition (adding an existing column)
 alter table employees add hire_date date not null default (current_date);