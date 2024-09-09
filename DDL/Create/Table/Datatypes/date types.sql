/*
CREATE TABLE statement in MySQL that includes various date and time types:
	DATE: Stores only the date in the format YYYY-MM-DD. This is useful for storing birthdates, event dates, etc.
		Example: '2024-09-04'
	TIME: Stores only the time in the format HH:MM:SS. Useful for recording specific times without dates.
		Example: '14:30:00' (2:30 PM)
	DATETIME: Stores both date and time in the format YYYY-MM-DD HH:MM:SS. It does not automatically update or track changes, but is useful for recording an event or action that involves both date and time.
		Example: '2024-09-04 14:30:00'
	TIMESTAMP: Stores both date and time, much like DATETIME, but has the added benefit of automatic handling of current time on creation and updates. It’s often used for tracking record creation and updates.
		Example: '2024-09-04 14:30:00'
*/

create table date_types(
 event_name VARCHAR(100),          		       -- Event name, a variable-length string
    event_date DATE,                  		   -- Date in YYYY-MM-DD format, for the event date
    event_time TIME,                           -- Time in HH:MM:SS format, for the event time
    event_datetime DATETIME,          		   -- Date and time in YYYY-MM-DD HH:MM:SS format, combining both date and time
    event_timestamp TIMESTAMP			       -- Timestamp for the record creation, auto-generated with current time

);

insert into date_types values('xyz',(current_date),now(),now(), now());

select * from date_types;