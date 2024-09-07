/*
The RANK() function in MySQL is a window function that assigns a unique rank to each row within a partition of a result set, based on the values in one or more columns. 
If two rows have the same values, they receive the same rank, but the next rank is skipped. For example, if two rows are ranked 1, the next row will be ranked 3. 
This function is useful for generating ranked results, like finding the top scores in a competition.

use the RANK() function with the OVER() clause to specify the ordering and partitioning criteria.
*/

select empno, sal , rank() over (order by sal desc) as '#'from emp;