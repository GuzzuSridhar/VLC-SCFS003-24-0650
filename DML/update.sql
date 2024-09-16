create table emp_dml(
	empid int,
    ename varchar(20),
    sal decimal(5,2),
    department int
);

insert into emp_dml values(10,'a',100,100);
insert into emp_dml values(20,'b',200,200);
insert into emp_dml values(4,'c',200,300); 
insert into emp_dml values(5,'e',200,300); 
insert into emp_dml values(6,'f',200,300); 
insert into emp_dml values(4,'g',200,400); 

-- update all records
update emp_dml set ename = 'h';

-- update contionally
update emp_dml set ename = 'a' where empid = 10;

-- delete a record
delete from emp_dml where department = 400;