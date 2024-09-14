/*
	add constraint is used to add table level constraints
    Syntax
    ALTER TABLE table_name
			ADD CONSTRAINT constraint_name PRIMARY KEY (column_name);

*/

create table test(t int);

alter table test add constraint my_key primary key(t); -- my_key here is the name of the constraint

alter table test add constraint check (t >10); 