/*
Complex Queries
*/

-- Format string with first character in Caps
SELECT 
    CONCAT(UPPER(LEFT(ename, 1)),
            LOWER(RIGHT(ename, LENGTH(ename) - 1))) AS Name
FROM
    emp.emp;

-- or

SELECT 
    CONCAT(UPPER(LEFT(ename, 1)),
            LOWER(SUBSTR(ename, 2))) AS Name
FROM
    emp.emp;

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