/*
The ALTER USER statement in MySQL is used to modify the properties of an existing user account. 
You can use it to change the user’s authentication method, password, account locking status, and more.
Syntax
ALTER USER 'username'@'host' [options];
	Options
		Lock
        Change password
        set resources
*/

-- change the password
 alter user 'alex'@'localhost' identified by 'password';
 
 -- Locking a User
 alter user 'alex'@'localhost' ACCOUNT LOCK; -- user will not be able to login
 
 -- Unlock a user
  alter user 'alex'@'localhost' ACCOUNT UNLOCK;
  
-- set resource
alter user 'alex'@'localhost' with MAX_QUERIES_PER_HOUR 500;