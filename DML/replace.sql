/*
The REPLACE statement in MySQL is used to insert or update data in a table. 
It works similarly to an INSERT statement but with an additional feature: if a row with the same primary key (or unique key) already exists in the table, 
the REPLACE statement will update that existing row rather than inserting a new one.
Syntax
REPLACE INTO table_name (column1, column2, column3, ...)
VALUES (value1, value2, value3, ...);
	Insert Operation: If the row does not exist (i.e., there is no existing row with the same primary key or unique key), REPLACE will insert a new row with the specified values.
	Update Operation: If a row with the same primary key or unique key already exists, 
					  REPLACE will delete the existing row and insert the new row with the new values. 
					  This means that the existing row is effectively replaced with the new data.
                      
                      Primary Key or Unique Key: The REPLACE statement relies on the presence of a primary key or unique key to determine whether to insert or update. 
												  If the table has no primary key or unique key, REPLACE will insert a new row each time.
					  Deleting Existing Row: When updating an existing row, REPLACE first deletes the old row and then inserts the new row. 
											This operation can affect auto-increment values and trigger events if there are any.
                      
*/

replace into emp (empno, ename, sal, deptno) values (7369,'Alex', 8989, 10);