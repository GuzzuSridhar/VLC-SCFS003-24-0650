start transaction;
	select * from emp.emp where empno = 7369 FOR UPDATE; -- lock on record with empno 7369 is acquired
	update emp.emp set sal = 100 where empno = 7369;
    -- dml
    -- dml
commit; -- the lock is released