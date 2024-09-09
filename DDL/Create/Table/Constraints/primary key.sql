/*
	also known as key or candidate key or primary key
    combination of not null and unique constraints
    unique identifier for every record.
    there can be only one primary key per table (either at column level or at table level)
*/

create table test_pk_col(
	name varchar(100),
    address varchar(200),
    nric varchar(10) primary key -- cannot be null and cannot be repeated (natural key)
);

create table test_pk_col_one(
	ename varchar(100),
    address varchar(200),
    empid varchar(10) primary key -- cannot be null and cannot be repeated (surrogate key)
);

insert into test_pk_col values ('alex','sg','abc123');
insert into test_pk_col values ('alex','sg','abc124');
insert into test_pk_col values ('alex','sg','abc123'); -- not allowed
insert into test_pk_col values ('alex','sg',null);

select * from test_pk_col;

-- auto insert the primary key values

create table test_pk_auto(
	ename varchar(100),
    address varchar(200),
    empid int auto_increment primary key
)auto_increment = 100;

insert into test_pk_auto(ename,address) values ('a','sg');
insert into test_pk_auto(ename,address) values ('a','sg');
select *  from test_pk_auto;

