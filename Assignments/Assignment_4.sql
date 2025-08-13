--Assignment 4

--Ans 1
desc employees;

--Ans 2
select unique salary from employees;

--Ans 3
select unique last_name from employees;

--Ans 4
select * from employees where department_id = 90;

--Ans 5
select * from employees where salary<5000 and job_id = 'SA_MAN';

--Ans 6
select * from employees where hire_date Between '01-06-2003' and '01-06-2006' order by hire_date;

--Ans 7
select * from employees where job_id in('SA_MAN','SA_REP','IT_PROG');

--Ans 8
select * from employees where department_id NOT in(90,60,50);

--Ans 9
select * from departments order by department_name desc;