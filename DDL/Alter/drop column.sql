/*
The ALTER TABLE DROP COLUMN statement in SQL is used to remove an existing column from a table. 
This operation can be useful when you no longer need a column, or when you're restructuring your table schema
Syntax
ALTER TABLE table_name
DROP COLUMN column_name;

	ALTER TABLE table_name:
		ALTER TABLE is the SQL command used to modify the structure of an existing table.
		table_name is the name of the table from which you want to remove the column.

	DROP COLUMN column_name:
	DROP COLUMN specifies that you are removing a column.
	column_name is the name of the column to be removed.
    
    Key Points
		Impact on Data:
			When a column is dropped, all data stored in that column for all rows in the table is permanently lost. Ensure that you have backed up any important data before performing this operation.
		Dependent Objects:
			If other database objects (such as views, indexes, or constraints) depend on the column being dropped, you may need to drop or modify those objects first.
		Restrictions:
			Some databases may have restrictions on dropping columns, especially if the column is part of an index or a constraint.

	Data Loss:
			The DROP COLUMN operation will result in the loss of all data stored in that column for existing rows. Make sure you have backed up or migrated any necessary data before executing the command.
	Database Performance:
			Removing a column from a large table may take some time and could impact database performance while the operation is in progress. Plan to perform such operations during off-peak hours if possible.
	Constraints and Indexes:
			If the column being dropped is involved in constraints (e.g., foreign key, unique constraints) or indexes, you must remove or adjust those constraints or indexes before dropping the column.
*/
-- example
Alter table employees drop column birth_date;

