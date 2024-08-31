/*
Complex Queries
*/

-- Format string with first character in Caps
select 
concat(upper(left(ename,1)),lower(right(ename,length(ename)-1))) as Name 
from emp.emp;