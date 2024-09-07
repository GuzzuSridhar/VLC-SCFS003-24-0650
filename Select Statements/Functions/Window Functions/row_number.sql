/*
The ROW_NUMBER() function in MySQL is a window function that assigns a unique sequential integer to rows within a result set. 
This integer represents the row’s position within its partition, based on the specified ORDER BY clause. 
It is often used for tasks such as ranking results or identifying specific rows in a set.
Syntax
ROW_NUMBER() OVER (
    PARTITION BY partition_column
    ORDER BY order_column
) AS alias_name
	PARTITION BY partition_column: (Optional) Divides the result set into partitions (groups) to which the ROW_NUMBER() function is applied. Each partition's row numbering starts at 1.
	ORDER BY order_column: Defines the order in which rows are assigned their unique numbers within each partition.
	AS alias_name: Assigns an alias to the result of the ROW_NUMBER() function.
    
    Unique Numbers: ROW_NUMBER() guarantees a unique sequential number for each row within its partition. 
    If there are ties (i.e., rows with the same value in the ORDER BY column), each row still receives a unique number.
	Order of Rows: The order specified in the ORDER BY clause affects the sequence of the row numbers. Changing the order will result in different row numbers.
*/

select ename, sal, row_number() over (order by sal ) as row_num from emp;