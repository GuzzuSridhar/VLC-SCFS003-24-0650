/*
Renaming a table in MySQL is a straightforward process that involves using the RENAME TABLE statement. 
This statement allows you to change the name of an existing table without affecting its data or structure.
Syntax
RENAME TABLE old_table_name TO new_table_name;
RENAME TABLE old_table_name1 TO new_table_name1,
              old_table_name2 TO new_table_name2,
              ...
              old_table_nameN TO new_table_nameN;

	Unique Name: The new table name must be unique within the database. If a table with the same name already exists, the rename operation will fail.
	Data Integrity: Renaming a table does not affect its data or structure. The table's columns, indexes, and constraints will remain unchanged.
	Foreign Keys: If the renamed table is involved in foreign key relationships with other tables, you might need to adjust the foreign key constraints to reference the new table name.
    Error Handling: If an error occurs during the rename operation, the entire statement will fail. It's recommended to perform renames individually if you want to handle errors more granularly.
*/

-- example
rename table test to tested;