/*
	add constraint is used to add table level constraints
    Syntax
    ALTER TABLE table_name
			ADD CONSTRAINT constraint_name PRIMARY KEY (column_name);
            
	ALTER TABLE child_table
			ADD CONSTRAINT fk_constraint_name FOREIGN KEY (column_name)
			REFERENCES parent_table (parent_column)
			ON DELETE action
			ON UPDATE action;
	
    ALTER TABLE table_name
			ADD CONSTRAINT constraint_name CHECK (condition);
            
	ALTER TABLE table_name
			ADD CONSTRAINT constraint_name UNIQUE (column_name);
            
	For column level constraints
			ALTER TABLE table_name
			MODIFY COLUMN column_name data_type NOT NULL;

*/

create table test(t int);

alter table test add constraint my_key primary key(t); -- my_key here is the name of the constraint

alter table test add constraint check (t >10); 