/*
Truncating a table in MySQL is a powerful operation that removes all rows from the table while preserving its structure. 
This is often done to quickly clear data from a table without having to delete each row individually.
Syntax
TRUNCATE TABLE table_name;
		Key Points:
			Removes Rows: Truncating a table removes all rows from the table, leaving it empty.
			Preserves Structure: The table's structure, including columns, indexes, and constraints, remains intact.
			Faster than Deletion: Truncating a table is generally faster than deleting rows individually, especially for large tables.
			Cannot Be Reversed: Truncating a table is an irreversible operation. Once a table is truncated, the deleted data cannot be recovered.
			Foreign Key Constraints: If the truncated table is involved in foreign key relationships, the foreign key constraints will be checked. 
				If there are existing foreign key references to the truncated table, the truncation will fail.
			Irreversibility: Be cautious when using TRUNCATE TABLE, as it cannot be undone.
        
        Use Cases:
			Clearing Data: When you need to quickly remove all data from a table, especially for testing or development purposes.
			Performance Optimization: In some cases, truncating a table can improve performance, especially for large tables.
			Data Reset: When you need to reset the data in a table to a known state.
        
*/

-- example
truncate table test;