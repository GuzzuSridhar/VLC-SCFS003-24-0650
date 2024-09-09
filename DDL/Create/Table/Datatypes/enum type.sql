/*
CREATE TABLE statement that includes an ENUM data type in MySQL:

	ENUM: The ENUM type is used to define a column that can store one value from a predefined set of options. 
	It's a string object with a set of allowed values, ensuring that only those specific values can be inserted into the column.
    Helps maintain data integrity by restricting the allowed values to a specific list
	Benefits of Using ENUM:
		Data Validation: ENUM ensures that only specific, predefined values are inserted into the column, helping maintain data consistency.
		Compact Storage: Internally, ENUM values are stored as integers (1 based index), which can save space compared to storing them as regular strings.
*/

create table if not exists enum_type(
custid int,
roomtype enum('single','double','king','queen')
);

insert into enum_type values(1,'queen');
insert into enum_type values(1,'queenr');

select * from enum_type;