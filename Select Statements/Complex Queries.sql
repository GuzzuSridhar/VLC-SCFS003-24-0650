/*
Complex Queries
*/

-- Format string with first character in Caps
select 
concat(upper(left(ename,1)),lower(right(ename,length(ename)-1))) as Name 
from emp.emp;

-- or

select 
concat(upper(left(ename,1)),lower(substr(ename,2))) as Name 
from emp.emp;

-- Count vowels in a string
SELECT 
    LENGTH('Hello') - LENGTH(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE('Hello', 'a', ''),
                            'e',
                            ''),
                        'o',
                        ''),
                    'i',
                    ''),
                'u',
                ''));
SELECT ename,
    LENGTH(ename) - LENGTH(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(lower(ename), 'a', ''),
                            'e',
                            ''),
                        'o',
                        ''),
                    'i',
                    ''),
                'u',
                '')) as '# Vowels'
                from emp.emp;
                
-- print names with a * leading and lagging
SELECT 
    RPAD(LPAD(ename, LENGTH(ename) + 1, '*'),
            LENGTH(ename) + 2,
            '*') AS fun
FROM
    emp;