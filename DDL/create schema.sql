/*
In MySQL, the CREATE SCHEMA statement is used to create a new schema (which is synonymous with a database). 
A schema in MySQL is essentially a container for tables, views, indexes, and other database objects.
Syntax
CREATE SCHEMA [IF NOT EXISTS] schema_name
    [DEFAULT CHARACTER SET charset_name]
    [DEFAULT COLLATE collation_name];

		IF NOT EXISTS: 
			Optional. Prevents an error from occurring if a schema with the specified name already exists. If the schema already exists, MySQL will not create it again and will not throw an error.
		schema_name: 
			The name of the schema (or database) you want to create.
		DEFAULT CHARACTER SET: 
			Optional. Specifies the default character set for the schema. If not provided, MySQL uses the default character set of the MySQL server (often UTF-8).
		DEFAULT COLLATE: 
			Optional. Specifies the default collation for the schema. Collation determines how string comparisons are performed. If not provided, MySQL uses the default collation of the specified character set.
            
            
		Key Concepts
        Synonym for Database: 
			In MySQL, CREATE SCHEMA is exactly the same as CREATE DATABASE. They are synonymous, and you can use either depending on your preference or convention.
		Character Set and Collation: 
			By specifying the default character set and collation, you set the encoding and comparison rules for the tables created in this schema unless explicitly overridden.
*/

CREATE SCHEMA if not exists `ddl` ;