select * from worker

INSERT INTO Worker 
	(WORKER_ID, FIRST_NAME, LAST_NAME, SAL, JOINING_DATE, DEPT) VALUES
		(012, 'Ram', 'Lal', 600000, '14-01-20', 'HR')
        
        commit
        
rollback

select * from worker

INSERT INTO Worker 
	(WORKER_ID, FIRST_NAME, LAST_NAME, SAL, JOINING_DATE, DEPT) VALUES
		(013, 'Shyam', 'Kumar', 450000, '15-01-20', 'Acc')
        
select upper(first_name) from worker

Write an SQL query to print the first three characters of  FIRST_NAME from Worker table.

select substr(FIRST_NAME,1,3) as Sub_Name from Worker

select length(first_name) from worker

commit