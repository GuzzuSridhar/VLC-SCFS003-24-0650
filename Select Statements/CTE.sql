with numemp as (
	select ename, sal, row_number() over (order by sal desc) as row_num from emp
    )
-- select ename, sal from numemp where row_num between 11 and 15 ;
-- select ename, sal from numemp where row_num = 5;
select * from numemp;
