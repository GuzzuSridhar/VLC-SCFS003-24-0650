-- display all constraints from a a given table
SELECT 
    tc.CONSTRAINT_NAME,
    tc.CONSTRAINT_TYPE,
    kcu.COLUMN_NAME,
    kcu.REFERENCED_TABLE_NAME,
    kcu.REFERENCED_COLUMN_NAME
FROM 
    INFORMATION_SCHEMA.TABLE_CONSTRAINTS tc
    LEFT JOIN INFORMATION_SCHEMA.KEY_COLUMN_USAGE kcu
        ON tc.CONSTRAINT_NAME = kcu.CONSTRAINT_NAME
        AND tc.TABLE_NAME = kcu.TABLE_NAME
WHERE 
    tc.TABLE_NAME = 'emp'
    AND tc.TABLE_SCHEMA = 'emp'
ORDER BY 
    tc.CONSTRAINT_NAME, kcu.ORDINAL_POSITION;
    
    -- show primary key
SELECT * 
FROM INFORMATION_SCHEMA.TABLE_CONSTRAINTS
WHERE TABLE_NAME = 'table_name' 
AND CONSTRAINT_TYPE = 'PRIMARY KEY';

-- show unique constraints
SELECT * 
FROM INFORMATION_SCHEMA.TABLE_CONSTRAINTS
WHERE TABLE_NAME = 'table_name' 
AND CONSTRAINT_TYPE = 'UNIQUE';

-- show Foreign Key Constraints
SELECT * 
FROM INFORMATION_SCHEMA.KEY_COLUMN_USAGE
WHERE TABLE_NAME = 'table_name'
AND REFERENCED_TABLE_NAME IS NOT NULL;

-- show Check Constraints
SELECT * 
FROM INFORMATION_SCHEMA.CHECK_CONSTRAINTS
WHERE CONSTRAINT_SCHEMA = 'database_name'
AND TABLE_NAME = 'table_name';