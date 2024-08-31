/*
Key Points about Group Functions:
	Operate on Sets of Rows: Group functions operate on a group of rows and return a single result for that group.
	Commonly Used with GROUP BY: These functions are often used with the GROUP BY clause to calculate values for each group of rows.

The WHERE Clause:
	Filters Rows Before Aggregation: 
		The WHERE clause is used to filter rows before any group functions or aggregation is performed. 
		It restricts which rows are included in the final result set based on specified conditions.
	Relationship Between Group Functions and the WHERE Clause:
		No Group Functions in WHERE: You cannot use group functions directly in the WHERE clause. 
		This is because the WHERE clause filters rows before the aggregation happens, and at that point, the aggregate values are not yet calculated.

*/