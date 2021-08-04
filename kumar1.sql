INSERT INTO Worker 
	(WORKER_ID, FIRST_NAME, LAST_NAME, SAL, JOINING_DATE, DEPT) VALUES
		(007, 'Satish', 'Kumar', 75000, '14-01-20', 'Acc')
        
select upper(first_name) as Upper_FName from worker

INSERT INTO Worker 
	(WORKER_ID, FIRST_NAME, LAST_NAME, SAL, JOINING_DATE, DEPT) VALUES
		(011, 'Sat', 'Kumar', 75000, '14-01-20', 'Acc')
        
        
        
commit

rollback

select upper(first_name) as Upper_FName, upper(last_name) as Upper_LName from worker

select distinct dept from worker

select distinct first_name,last_name from worker

select distinct first_name from worker

select instr(first_name, 'rz') from worker where first_name='Niharika'

select length(LTRIM(RTrim(first_name))) from worker where worker_id = 13

select INSTR(first_name, 'hi', INSTR(first_name, 'hi')+1) from worker where worker_id = 13

select concat 
(   concat
    (first_name, '_'), last_name) AS WORKER_NAME
        from worker

select * from emp order by name asc, salary desc


select * from worker where first_name like '_____h'

select * from worker where sal between 100000 and 500000


select * from worker where year(joining_date)=2014 and month(joining_date)=2


select count(*) from worker where first_name like '%a%'

select count(*) AS COUNT from worker where sal>100000

select concat(first_name, concat(' ',last_name)) as worker_name, sal from worker where sal between 50000 and 100000

select sum(sal) from worker where dept='Acc'

select max(sal) from worker where dept='Acc'

select min(sal) from worker where dept='Admin'

select * from worker where sal=(select max(sal) from worker where dept='Acc') and dept='Acc'

commit

select * from departments



commit


select * from employees where department_id IN (select department_id from departments where location_id=1700)

select first_name, last_name from employees where salary=(select MAX(salary) from employees) order by first_name,last_name

select * from employees where salary > (select avg(salary) from employees)

commit

SELECT TO_CHAR
    (SYSDATE, 'MM-DD-YYYY HH24:MI:SS') "NOW"
     FROM DUAL

CREATE TABLE sales_info(join_date DATE, sale_id INT, sale_usd INT)


drop table sales_info

select dept from worker group by dept

select dept, sum(sal) from worker group by dept















select dept,avg(sal), max(sal), min(sal),count(*) as Emp_count from worker group by dept order by Emp_count asc


select dept,avg(sal), max(sal), min(sal),count(*) as Emp_count from (select * from worker where sal>200000) group by dept

select * from (select * from worker where sal != (select max(sal) from worker) order by sal desc) where rownum = 1

select * from worker where sal >= any (select max(sal) from worker group by dept)

select * from worker where sal >= (select min(max_sal) from (select max(sal) as max_sal from worker group by dept))

select ascii ('A') from dual
select ascii ('@') from dual

select * from dual

select lower(first_name) from employees
select lower('HAI') from dual

select upper ('welcome') from dual

select first_name, last_name, length(first_name) "Length_first_name",length(last_name) "Length_last_name" from employees

select initcap (first_name) from employees

select translate ('welcome','ec','AN') from dual

select REPLACE ('welcome','come','foodie') from dual

select substr('Oracle', 3, 4) from dual

select INSTR('welcome','e') from dual

select INSTR('welcome','e',+1,2) from dual

select INSTR('welcome','e',-1,2) from dual

select INSTR('welcome','e'+1,3) from dual ## This should give ans as 0(zero)##

select TRIM ('     welcome      ') from dual

select LTRIM ('     welcome      ') from dual

select RTRIM ('     welcome      ') from dual

select salary from employees

select MAX(salary) from employees where salary<(select MAX(salary) from employees where salary<(select MAX(salary)from employees))

select * from employees where ROWNUM<15

SELECT Salary FROM (SELECT rownum MAXSALARY, salary Salary FROM ( SELECT DISTINCT(salary) FROM employees ORDER BY salary DESC))WHERE MAXSALARY = &n

SELECT DISTINCT salary FROM employees ORDER BY salary DESC

SELECT rownum MAXSALARY, salary SALARY FROM (SELECT DISTINCT salary FROM employees ORDER BY salary DESC)

select * from employees

SELECT Salary FROM (SELECT rownum MINSALARY, salary Salary FROM ( SELECT DISTINCT(salary) FROM employees ORDER BY salary ASC))WHERE MINSALARY = 1



select name from student where hobby_id = (select hobby_id from hobby where hobby_name = 'Cricket')

select T.name, X.hobby_name from Student T, Hobby X where T.student_id = x.student_id

select student.name, hobby.hobby_name from Student, Hobby where student.student_id = hobby.student_id

select X.name, Y.hobby_name from student X inner join hobby Y on X.student_id = Y.student_id;
select X.name, Y.hobby_name from student X full join hobby Y on X.student_id = Y.student_id;
select X.name, Y.hobby_name from student X left join hobby Y on X.student_id = Y.student_id;
select X.name, Y.hobby_name from student X right join hobby Y on X.student_id = Y.student_id;

select * from employees
select * from worker
select dept, sum(sal) as Dept_Salary from worker Group by dept 
