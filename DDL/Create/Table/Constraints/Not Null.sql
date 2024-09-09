/*
	the information for a not null column is mandatory
    cannot be ignored
    if the value is to be skipped, the specify a default value for that column
*/

create table test_not_null(
 stud_id int not null default 10, -- the value for this column is mandatory (no null values allowed)
 stud_name varchar(100)  -- nullable column (nulls are allowed for this column)
 );
 
insert into test_not_null values(null,'alex'); -- not allowed
insert into test_not_null values(1,'alex'); -- OK

insert into test_not_null(stud_name) values('alex'); -- ok if the column stud_id has a default value

insert into test_not_null(stud_name) values('alex'); -- ok if the column stud_id has a default value
