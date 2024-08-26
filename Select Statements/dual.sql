/*
  Dual is a system table  (empty)
  used for testing and learning
  In Mysql the dual keyword can be ignored
*/

-- Selecting constants
SELECT 1 FROM DUAL;
-- or
select 1;

-- display strings
SELECT 'Hello World' FROM DUAL;

-- display multiple columns
SELECT 1, 2, 3, 4;

-- arithmetic operation
SELECT 10 + (20 * 2);

-- Apply builtin Functions
SELECT LENGTH('Alex');
SELECT UPPER('alex');
SELECT CURRENT_DATE();
SELECT ABS(- 10);

-- conditional display
SELECT 
    CASE
        WHEN 1 > 0 THEN 'True'
        ELSE 'False'
    END;

/* using alias */
-- 'as' is optional
-- all aliases with spaces in them must be included in quotes (single or double)
SELECT 
    2 + 3 AS add_nums,
    3 - 2 sub_nums,
    3 * 2 'multiply numbers',
    4 / 3 AS division;
