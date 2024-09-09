/*
CREATE TABLE statement that includes various numeric data types in MySQL:

	INT: Integer, commonly used for IDs. It can store whole numbers from -2,147,483,648 to 2,147,483,647.
	TINYINT: Stores small integer values from -128 to 127, or 0 to 255 if unsigned.
	SMALLINT: Stores medium-sized integers from -32,768 to 32,767, or 0 to 65,535 if unsigned.
	MEDIUMINT: Stores larger integer values from -8,388,608 to 8,388,607, or 0 to 16,777,215 if unsigned.
	BIGINT: Stores very large integers from -9,223,372,036,854,775,808 to 9,223,372,036,854,775,807.
     ---------------------- DECIMAL TYPES --------------------------------
	DECIMAL(m, d): Fixed-point number where m is the total number of digits and d is the number of digits after the decimal point. It’s ideal for precise financial data.
	FLOAT(m, d): Floating-point number with less precision than DOUBLE. m is the total number of digits and d is the number after the decimal.
	DOUBLE(m, d): Double precision floating-point number with higher precision than FLOAT.
	NUMERIC(m, d): Synonym for DECIMAL in MySQL, used for fixed-point precision.
    
    numeric data types like INT, FLOAT, DECIMAL, etc., can be defined as signed or unsigned. The default behavior for numeric types is signed, meaning they can hold both positive and negative values.
    Signed: The default, allows negative, zero, and positive values.
	Unsigned: Only allows zero and positive values, which increases the range of positive numbers that can be stored.
*/

-- By default all the numeic fields are signed and can hold +ve and -ve values
create table if not exists num_types(
	d INT ,      							-- Integer
    age TINYINT,                            -- Tiny integer, small range of values
    score SMALLINT,                         -- Small integer, moderate range of values
    salary MEDIUMINT,                       -- Medium integer, larger range of values
    population BIGINT,                      -- Big integer, very large range of values
    price DECIMAL(10, 2),                   -- Fixed-point number with 
    discount_rate FLOAT,          			-- Floating-point number 
    exchange_rate DOUBLE       				-- Double precision floating-point number 
);

-- Precision and Scale
 create table test_dec(testa decimal(5,2));
 
 insert into test_dec values(100.44);
 insert into test_dec values(100.447); -- truncated but the insert will be successfull
 insert into test_dec values(1007.44); -- error


