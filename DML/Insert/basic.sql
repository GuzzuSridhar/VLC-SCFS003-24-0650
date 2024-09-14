

-- insert one row

		-- insert in to selected columns
		-- ensure that the ignored columns have the following
			-- default values
			-- auto Increment
			-- set to accept null values
		insert into test_dml(name) values('alex');

		-- insert in to all columns
		-- table with no auto Increment columns
		insert into test_dml_one values(1,'david');
        insert into test_dml_one values(2,'bill');

-- insert multiple rows (coma seperated)
		insert into test_dml_one values(3,'Jim'),(4,'Jill');
		insert into test_dml(name) values('Tim'),('david');
        
-- insert ignore (ignores the insert if the key is present)
	insert ignore into test_dml_one values(1,'david');
    
-- on duplicate key update
	insert into test_dml_one values(1,'somebody') on duplicate key update name = values(name);
    
    select * from test_dml_one;
