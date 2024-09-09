/*
	for any column with a unique constraint cannot contain duplicates
    can be mentioned at column level or table level
*/


-- table level
CREATE TABLE IF NOT EXISTS test_unique (
    employee_id INT,
    first_name VARCHAR(255),
    last_name VARCHAR(255),
    unique key(first_name) -- table level constraint
    );
    
    -- table level constraints are used to create composite constraint
    CREATE TABLE IF NOT EXISTS test_unique_composite (
    employee_id INT,
    first_name VARCHAR(255),
    last_name VARCHAR(255),
    unique key(first_name,last_name) -- table level composite constraint
    );

-- column level
CREATE TABLE IF NOT EXISTS test_unique_column (
    employee_id INT,
    first_name VARCHAR(255) unique, -- column level constraint
    last_name VARCHAR(255)
    );

    
    insert into test_unique_column values (1,'david', 'boon');
    insert into test_unique_column values (2,'david', 'alex'); -- error as the first_name is repeated

	insert into test_unique_composite values (1,'david', 'boon');
    insert into test_unique_composite values (2,'david', 'alex');
    insert into test_unique_composite values (2,'david', 'alex'); -- error as combination is repeated
    
    insert into test_unique_composite values (2,null, null); -- allowed
    insert into test_unique_composite values (2,null, null); -- allowed as no 2 null values are same or equal
    
    -- multiple constraints
    CREATE TABLE IF NOT EXISTS test_multi_cons (
    employee_id INT,
    first_name VARCHAR(255) not null unique, -- column level constraint (multiple)
    last_name VARCHAR(255)
    );