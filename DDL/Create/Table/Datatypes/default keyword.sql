create table using_default(
	user_name varchar(100) default 'Guest',
    acct enum('a','b', 'c') default 'a',
    lastlogintime timestamp default current_timestamp,
    user_id int default 0
);

create table using_default_new(
	user_name varchar(100) ,
    acct enum('a','b', 'c') default 'a',
    lastlogintime timestamp,
    user_id int
);

-- use the defaults in an insert statement
insert into using_default_new(acct) values ('b');

select * from using_default_new;