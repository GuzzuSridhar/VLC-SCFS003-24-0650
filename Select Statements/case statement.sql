/*
The CASE statement in MySQL is a conditional expression that allows you to perform conditional logic within a SQL query. It can be used to create custom columns, filter results, or perform different calculations based on certain conditions. 
The CASE statement evaluates conditions in a specified order and returns the result of the first condition that evaluates to TRUE.
Syntax

Simple CASE:
CASE expression
    WHEN value1 THEN result1
    WHEN value2 THEN result2
    ...
    ELSE default_result
END
	expression: The value or expression to be compared.
	value1, value2, ...: The values to be compared against the expression.
	result1, result2, ...: The results returned when the corresponding value matches the expression.
	default_result: The result returned if none of the WHEN conditions are met (optional).
    
Searched CASE:
CASE
    WHEN condition1 THEN result1
    WHEN condition2 THEN result2
    ...
    ELSE default_result
END
	condition1, condition2, ...: The conditions to be evaluated.
	result1, result2, ...: The results returned when the corresponding condition is met.
	default_result: The result returned if none of the conditions are met (optional).
*/

select 
ename,
CASE deptno
	when 10 then 'Sales'
    when 20 then 'Mktg'
    when 30 then 'IT'
    else 'unassigned'
end
as department_detail
from emp.emp;

select 
ename,
CASE 
	when sal < 2000 then 'Low'
    when sal between 2001 and 3000 then 'Avg'
    when sal > 3000 then 'good'
    else 'not good'
end
as salgrade
from emp.emp;

