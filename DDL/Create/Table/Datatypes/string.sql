/*
CREATE TABLE statement that includes various string data types in MySQL
	VARCHAR(n): A variable-length string that can hold up to n characters. It’s suitable for fields where the length of the string can vary, such as usernames or email addresses.
		Example: VARCHAR(50) stores up to 50 characters.
	CHAR(n): A fixed-length string. The storage length is always n characters, padded with spaces if the string is shorter than n. This is ideal for fields where the string length is always consistent, such as hashed passwords.
		Example: CHAR(64) stores exactly 64 characters.
	-------------------- CLOB TYPES -------------------------------------------------
	TEXT: A variable-length string that can store up to 65,535 characters (~64 KB). Use TEXT for fields that may contain large chunks of text, like user bios or comments.
	TINYTEXT: A smaller version of TEXT, storing up to 255 characters. Useful for short fields like URLs or tags.
	MEDIUMTEXT: A larger text field, storing up to 16,777,215 characters (~16 MB). Useful for longer descriptions or larger text data.
	LONGTEXT: The largest text data type, capable of storing up to 4,294,967,295 characters (~4 GB). This is suitable for storing extremely large data, such as entire articles or log files.
*/

use ddl;
create table if not exists string_types (	
username varchar(50), -- variable lenngth string with max of 50 characters
password char(15) -- fixed length of characters
);

-- usage of CLOB
create table if not exists string_text_types (
	username varchar(50),
    homepage tinytext,
    bio text,
    full_bio mediumtext,
    about longtext
);
