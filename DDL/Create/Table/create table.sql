/*
The CREATE TABLE statement in SQL is used to create a new table in a database. 
The syntax allows you to define the table structure, including its columns, data types, constraints, and other attributes.
Syntax
CREATE TABLE IF NOT EXISTS table_name (
    column1 datatype constraints,
    column2 datatype constraints,
    ...
    table_constraints
);

CREATE TABLE IF NOT EXISTS table_name (
    column_name data_type constraints,
    ...
);

	CREATE TABLE IF NOT EXISTS table_name:
		CREATE TABLE is the SQL command to create a new table.
		table_name is the name you assign to the table. It must be unique within the database.
	Columns:
		Each column in the table is defined with a name, data type, and optional constraints.
		Example: column1 datatype constraints.
	Data Types:
		Specifies the type of data the column will hold. Common data types include:
		Numeric Types: INT, FLOAT, DOUBLE, DECIMAL
		String Types: VARCHAR, CHAR, TEXT, BLOB
		Date and Time Types: DATE, TIME, DATETIME, TIMESTAMP
		Other Types: ENUM, SET, JSON
	Constraints:
		Constraints enforce rules on the data within the table. Common constraints include:
			PRIMARY KEY: Uniquely identifies each record in the table.
			UNIQUE: Ensures all values in a column are unique.
			NOT NULL: Ensures that a column cannot have NULL values.
			DEFAULT: Provides a default value for a column if no value is specified.
			CHECK: Ensures that values in a column meet a specific condition (available in MySQL 8.0.16+).
			FOREIGN KEY: Establishes a link between columns in two tables to enforce referential integrity.
	Table Constraints:
		These constraints apply to the entire table, rather than to individual columns. Common table constraints include:
			PRIMARY KEY: Defines a column or a set of columns as the primary key.
			UNIQUE: Ensures that all values in a column or a set of columns are unique.
			FOREIGN KEY: Ensures that a value in one column matches a value in another table's column.
			CHECK: Ensures that all values in a column meet a specific condition.
*/

-- Example
create table IF NOT EXISTS temp(name varchar(20), age int);

-- copy tyhe table structure and data to the new table
create table IF NOT EXISTS test as select * from temp ;

-- copy tyhe table structure only to the new table
create table IF NOT EXISTS test as select * from temp where 1=2;

create table IF NOT EXISTS emp as select * from emp.emp ;
create table IF NOT EXISTS emp as select * from emp.emp where 1 =2;