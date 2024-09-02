-- rollup, extension with group by clause
-- produces another row and shows the grand total (super-aggregate value)
-- Group-Level Totals: 
	-- The ROLLUP operator first calculates the aggregate functions (like SUM, COUNT, AVG, etc.) 
    -- for each group defined in the GROUP BY clause.
	-- Subtotals: Next, it calculates subtotals by rolling up from the last column 
			--	in the GROUP BY clause to the first.
	-- Grand Total: Finally, it generates a grand total that aggregates the entire result set.


SELECT 
    deptno, ROUND(AVG(sal), 2) 'Avg'
FROM
    emp
GROUP BY deptno WITH ROLLUP;


SELECT 
    deptno, mgr, SUM(sal)
FROM
    emp
GROUP BY deptno , mgr WITH ROLLUP;