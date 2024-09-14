/*
In MySQL, you can rename a column using the ALTER TABLE statement. The syntax for renaming columns is s.
Syntax
ALTER TABLE table_name
CHANGE COLUMN old_column_name new_column_name datatype [constraints];

	Specify Data Type:
			When renaming a column, you must provide the column’s data type. MySQL does not allow you to rename a column without specifying the data type.
	Update Dependencies:
			After renaming tables or columns, ensure that all dependent objects (like views, stored procedures, or application code) are updated to reflect the new names.
	No Data Loss:
			Renaming tables or columns does not affect existing data. The data remains intact, but the column or table name changes.
	Limitations:
			ALTER TABLE with CHANGE COLUMN might be limited in its ability to handle complex scenarios in some MySQL versions or configurations. Always verify the changes in a development environment before applying them to production.
*/

alter table employees change column last_name surname varchar(50);

-- cnage column name and data type
alter table employees change column surname last_name char(50);