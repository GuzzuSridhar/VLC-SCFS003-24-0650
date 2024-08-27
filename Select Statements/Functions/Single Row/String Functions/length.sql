/*
Length function
Single row function and hence applied to every record in the table
*/

-- will return the length in bytes
select ename, length(ename) from emp.emp;

-- is used to get the character length for multi byte charater set
select ename, char_length(ename) from emp.emp;
select ename, character_length(ename) from emp.emp;