SELECT (SELECT 10 + 10);

select 
          e1.ename,
          e1. sal,
          ( select
					max(sal) from emp
          ) as max,
          ( select
					min(sal) from emp
          ) as min,
          ( select
					avg(sal) from emp
          ) as avg
          from emp e1;
          
