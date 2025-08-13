--Assignment_10
--Ans_1
select * from emp;

--Ans_2
select unique job from emp;

--Ans_3
select ename, sal from emp order by sal;

--Ans_4
select ename, deptno, job from emp order by job desc, deptno;

--Ans_5
select unique(job) from emp order by job desc;

--Ans_6


--Ans_7
select * from employees where to_char(hire_date,'YYYY')<1981;

--Ans_8
select employee_id, first_name, salary, round(salary/365,2)as daily_salary from employees order by salary; 

--Ans_9
select unique manager.employee_id, manager.first_name, manager.job_id, manager.hire_date from employees emp
join employees manager on emp.manager_id = manager.employee_id;

--Ans_10
select employee_id, first_name, salary from 