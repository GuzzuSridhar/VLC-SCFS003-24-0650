create schema test;
use test;

create table t1(a int); 
create table t2(b int); 

insert into t1 values(1);
insert into t1 values(2);
insert into t1 values(3);
insert into t1 values(5);
insert into t1 values(7);
insert into t1 values(10);
insert into t1 values(null);

insert into t2 values(1);
insert into t2 values(14);
insert into t2 values(15);
insert into t2 values(3);
insert into t2 values(7);
insert into t2 values(10);
insert into t2 values(null);