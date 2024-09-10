CREATE TABLE dept_fk (
    deptno INT primary key,
    dname VARCHAR(20),
    loc VARCHAR(10)
);

create table emp_fk(
	empid int,
    ename varchar(20),
    sal decimal(5,2),
    department int,
    foreign key (department) references dept_fk(deptno)
);

insert into dept_fk values(100,'sales','sg');
insert into dept_fk values(200,'Admin','sg');

insert into emp_fk values(10,'a',100,100);
insert into emp_fk values(20,'b',200,200);
insert into emp_fk values(4,'c',200,300); -- not allowed
