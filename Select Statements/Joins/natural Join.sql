/*
A natural join is a type of relational join operation in SQL that automatically combines rows from two or more tables 
based on common column names. 
The join condition is implicitly defined by matching columns with identical names in the joining tables.
Syntax
SELECT column_list
FROM table1
NATURAL JOIN table2;

	Advantages of Natural Joins:
	Simplified Syntax: Natural joins provide a concise and readable way to join tables.
	Automatic Join Condition: You don't need to explicitly specify the join condition, which can reduce the likelihood of errors.
	Efficient Execution: Many database systems optimize natural joins to improve performance.

	Limitations of Natural Join
	Dependency on Column Names: 
		The join condition is based solely on column names, 
        which can be limiting if you need to join on columns with different names.
	Potential for Ambiguity: 
		If multiple columns have the same name in both tables, 
        it can lead to unexpected results. In such cases, 
        it's often better to use an explicit join with a specified join condition.
*/


-- Usage
 SELECT 
    *
FROM
    emp.emp
        NATURAL JOIN
    emp.dept;