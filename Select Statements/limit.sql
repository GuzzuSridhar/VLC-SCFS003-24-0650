/*
Limit clause is used to limit the # records in the result set
*/

-- first 10 records 
select * from emp limit 10;
-- next 10 records
select * from emp limit 10 offset 10;

-- use world
-- queries that can be used for pagination
select * from world.city limit 10 offset 10 ;
select * from world.city limit 10 offset 20 ;
select * from world.city limit 10 offset 30 ;

-- other uses of limit
-- get the employee with highest pay
select * from emp order by sal desc limit 1;

-- get the employee with third highest pay
select * from emp order by sal desc limit 1 offset 2;

-- get the employee with 3 top highest pay
select * from emp order by sal desc limit 3;