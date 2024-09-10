/*
Used to validate the values entered into a column.
*/

-- at column level
create table check_age(
	empid int,
    age int check (age > 18)
);

insert into check_age values (1,20);
insert into check_age values (1,10);

-- at table level
create table check_age_tab(
	empid int,
    age int,
    check (age > 18)
);

insert into check_age_tab values (1,20);
insert into check_age_tab values (1,10);

-- composite check table
create table emp_total_sal_chk(
	empid int,
    sal int,
    comm int,
    check (sal + comm < 10000) 
    );
    
insert into emp_total_sal_chk values (1,1000,1000);
insert into emp_total_sal_chk values (1,1000,11000);