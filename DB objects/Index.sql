/*
An index in MySQL is a database structure that improves the speed of data retrieval operations on a table. 
It is similar to an index in a book: it allows the database to quickly find the rows associated with specific values, without having to scan the entire table.

Key Features of Indexes:
	Improved Query Performance: Indexes make data retrieval faster by providing a shortcut to find rows that match a particular condition.
	Data Structure: Internally, MySQL often uses a B-tree or hash table to store the index data.
	Unique and Non-Unique: Indexes can enforce uniqueness (primary key or unique index) or just be a simple non-unique index for performance improvement.
	Overhead: Indexes speed up reads, but they slow down INSERT, UPDATE, and DELETE operations because the index must also be updated.
    
    Implicit Index is created
		when a primary key is applied to a column/s
        when FK is applied to a column/s
        when a unique constraint is applied to a column/s
			
*/