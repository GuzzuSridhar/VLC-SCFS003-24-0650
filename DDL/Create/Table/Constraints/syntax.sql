/*
Column-Level Constraints: Apply rules directly to individual columns.
	NOT NULL
    PRIMARY KEY
    UNIQUE
    CHECK
    DEFAULT
    
Table-Level Constraints: Apply rules that involve multiple columns or entire table relationships.
	PRIMARY KEY
    UNIQUE
	CHECK
    FOREIGN KEY
    
Primary Key Constraint
----------------------
	Column level single column
    --------------------------
	CREATE TABLE IF NOT EXISTS table_name (
    column_name data_type PRIMARY KEY,
    ...
	);

   multiple columns (table level)
   ------------------------------
			CREATE TABLE IF NOT EXISTS table_name (
			column_name data_type PRIMARY KEY,
			...
		);

Unique Constraint
-----------------
		Column level single column
        -------------------------
		CREATE TABLE IF NOT EXISTS table_name (
		column_name data_type UNIQUE,
		...
	);
		multiple columns (table level)
        -----------------------------
		CREATE TABLE IF NOT EXISTS table_name (
		column_name data_type,
		...
        UNIQUE (column_name,column_name),
	);

Foreign Key Constraint
----------------------
		table level only
        ---------------
		CREATE TABLE IF NOT EXISTS table_name (
		column_name data_type,
		FOREIGN KEY (column_name) REFERENCES referenced_table(referenced_column) [actions],
		...
	);

Check Constraint
----------------
		Column level
        -------------
		CREATE TABLE IF NOT EXISTS table_name (
		column_name data_type CHECK (condition),
		...	
	);
		table level
        -----------
		CREATE TABLE IF NOT EXISTS table_name (
		column_name data_type,
		CHECK (condition),
		...
	);
    
Default Constraint
------------------
		Column level only
        -------------
		CREATE TABLE IF NOT EXISTS table_name (
		column_name data_type DEFAULT default_value,
		...
	);
		

Summary
    -------
		CREATE TABLE IF NOT EXISTS table_name (
		column1 data_type constraint,
		column2 data_type constraint,
		...
		PRIMARY KEY (primary_key_column),
		UNIQUE (unique_column),
		FOREIGN KEY (foreign_key_column) REFERENCES referenced_table(referenced_column) [actions],
		CHECK (check_condition),
	);

*/