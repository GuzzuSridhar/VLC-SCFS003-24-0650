-- display current user
 select user();
 
 -- create user named alex
  create user if not exists 'alex'@'localhost' identified by 'pass';
  
  -- no privileges by default on any schema
  
  -- to grant privileges
  grant select on ddl.* to 'alex'@'localhost';
  flush privileges;
  
  -- to view the privileges of a user
  show grants for 'alex'@'localhost';
  
  -- revoke privileges
  revoke update on ddl.* from 'alex'@'localhost';
  flush privileges;
  
  -- using the ALL PRIVILEGES
  grant all privileges on ddl.* to 'alex'@'localhost';
  flush privileges;
  revoke all privileges on ddl.* from 'alex'@'localhost';
  flush privileges;
  
  -- with grant option (grants the permission to grant rights to other user)
   grant all privileges on ddl.* to 'alex'@'localhost' with grant option;
   flush privileges;
   revoke grant option on ddl.* from 'alex'@'localhost';
   flush privileges;
   