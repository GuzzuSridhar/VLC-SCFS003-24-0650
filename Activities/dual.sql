/*
  Dual is a system table  (empty)
  used for testing and learning
  In Mysql the dual keyword can be ignored
*/

-- Selecting constants
select 1 from dual;
-- or
select 1;

-- display strings
select 'Hello World' from dual;

-- display multiple columns
select 1,2,3,4 ;

-- arithmetic operation
select 10+(20 *2);

-- Apply builtin Functions
select length('Alex');
select upper ('alex');
select current_date();
select abs(-10);

-- conditional display
select CASE when 1>0 then 'True' ELSE 'False' END;
