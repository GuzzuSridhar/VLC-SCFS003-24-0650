/*
In MySQL, you can use the ALTER TABLE statement to drop constraints from a table. 
The syntax and steps vary depending on the type of constraint you want to remove.
Syntax
	ALTER TABLE table_name
	MODIFY COLUMN column_name data_type NULL;

	ALTER TABLE table_name
		DROP PRIMARY KEY;
	ALTER TABLE table_name
		DROP INDEX constraint_name; (for unique constraint)
	ALTER TABLE table_name
		DROP FOREIGN KEY constraint_name;
	ALTER TABLE table_name
		DROP CHECK constraint_name;
	ALTER TABLE table_name
		DROP CHECK constraint_name;
*/

-- example of dropping a primary key with an Auto_increment
 alter table employees drop primary key; -- will show an error
  alter table employees modify employee_id int; -- removing the auto_increment
  alter table employees drop primary key; -- success
  
  -- drop unique constraint
  alter table employees drop INDEX email;
  
  -- check the ddl of the table
  show create table employees;
  
  