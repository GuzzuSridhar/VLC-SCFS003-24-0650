/*
 A corelated subquery is the which gets executed (multiple times) once per each outer query.
 Also when there is a reference to the outer tables column is in the sub query
*/         
select 
          e1.ename,
          e1. sal,
          e1. deptno,
                ( select
					avg(sal) from emp e2
                    where e2.deptno =e1.deptno
          ) as avg
          from emp e1 
          order by 3
          ;