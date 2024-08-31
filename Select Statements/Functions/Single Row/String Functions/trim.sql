/*  trim function 
syntax
TRIM([{BOTH | LEADING | TRAILING} [remstr] FROM] str)
	BOTH: Removes characters from both the beginning and end of the string. 
	This is the default if no specific direction is given.
	LEADING: Removes characters from the beginning of the string.
	TRAILING: Removes characters from the end of the string.
	remstr: The characters to be removed. If not specified, spaces will be removed.
	str: The string from which the characters will be removed.
*/

select length('  Hello  ');

-- removes all spaces
select trim('  Hello  ');
select length(trim('  Hello  '));

select trim(Leading ' ' from   '  Hello  ');
select length(trim(Leading ' ' from   '  Hello  '));

select trim(Trailing ' ' from   '  Hello  ');
select length(trim(Trailing ' ' from   '  Hello  '));


select trim(Leading '*' from   '**Hello**');
select length(trim(leading '*' from   '**Hello**'));

select trim(Trailing '*' from   '**Hello**');
select length(trim(Trailing '*' from   '**Hello**'));

select trim(both '*' from   '**Hello**');
select length(trim(both '*' from   '**Hello**'));

