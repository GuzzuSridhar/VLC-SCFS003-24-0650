/*
The DENSE_RANK() function in MySQL is similar to the RANK() function, but with a key difference: 
	it does not skip ranks when there are ties. If two rows have the same rank, the next rank will follow sequentially, without gaps.
	For example, 
    if two rows are ranked 1, the next row will be ranked 2 (unlike RANK(), where it would be ranked 3). 
    This function is useful when you want consecutive ranking numbers without gaps.
*/

select empno, sal , dense_rank() over (order by sal desc) as '#'from emp;