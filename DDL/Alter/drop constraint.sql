/*
In MySQL, you can use the ALTER TABLE statement to drop constraints from a table. 
The syntax and steps vary depending on the type of constraint you want to remove.
Syntax
	ALTER TABLE table_name
	MODIFY COLUMN column_name data_type NULL;

	ALTER TABLE table_name
		DROP PRIMARY KEY;
	ALTER TABLE table_name
		DROP INDEX constraint_name;
	ALTER TABLE table_name
		DROP FOREIGN KEY constraint_name;
	ALTER TABLE table_name
		DROP CHECK constraint_name;
	ALTER TABLE table_name
		DROP CHECK constraint_name;
*/