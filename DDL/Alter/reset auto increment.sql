/*
Resetting AUTO_INCREMENT: Works if the table is empty or if you set it to a value higher than the current maximum.
Cannot Reset to Lower than Existing Max Value: You must adjust or clear existing data if you want to set it to a lower value.
*/

CREATE TABLE IF NOT EXISTS auto_increment_example (
    id INT AUTO_INCREMENT PRIMARY KEY,  -- Auto-incrementing primary key
    name VARCHAR(100)
);

insert into auto_increment_example(name) values ('a'),('b'),('c');

select * from auto_increment_example; 

-- reset the auto incremment to a different value (lesser value)
alter table auto_increment_example auto_increment = 1; -- no error but ignored when there is data in the table

-- reset the auto incremment to a different value (higher value)
alter table auto_increment_example auto_increment = 100; -- works fine

truncate table auto_increment_example; -- auto_increment is reset to the initial state (all alters are overridden)

delete from auto_increment_example; -- will not reset the auto_increment but will continue with the last generated value

-- inspect the current auto_incremnent value and other details
-- using the show status
show table status like 'auto_increment_example';

-- using the meta data
desc information_schema.tables;
SELECT 
    auto_increment
FROM
    information_schema.tables
WHERE
    table_schema = 'ddl'
        AND table_name = 'auto_increment_example';
        
        