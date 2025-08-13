--Assignment 3

--Ans 1
select street_address||',  '||postal_code||',  '||city as Address from locations;

--Ans 2
select first_name||' '||last_name||'  '||'department id is'||'  '||department_id as info from employees;

--Ans 3
select 'My first name is '||first_name||' and I am from '||job_id||' Department' as info from employees;

--Ans 4
desc departments;
select *from departments;

--Ans 5
select job_title||' '||'salary is'||' '||max_salary as salary_info from jobs;

--Ans 6
select location_id||',  '||street_address||',  '||postal_code||',  '||city as Full_Address from locations;

--Ans 7
select distinct job_id from employees;

--Ans 8
select 'Department id of '||first_name||' is '||department_id as info from employees where department_id = 60 or department_id = 110 or department_id = 80 or department_id = 90;

--Ans 9
update employees set salary = salary+5000 where employee_id = 170 or employee_id = 175 or employee_id = 180;

--Ans 10
select first_name||' '||last_name||' is working in '||job_id||' with '||employee_id as Working_info from employees;

--Ans 11
select *from employees where job_id in ('PU_CLERK','ST_CLERK','SH_CLERK')and salary between 5000 and 15000;

--Ans 12
select first_name||' '||last_name as Full_name from employees where department_id <> 80;

--Ans 13
update employees set salary = salary-3000 where employee_id in (201,204,205);

--Ans 14
select *from employees where salary>= 1000 and job_id like '%CLERK';

--Ans 15
select employee_id, first_name, last_name from employees where commission_pct is NULL;

--Ans 16
select first_name||' '||last_name as full_name,job_id,salary from employees where job_id in('IT_PROG','SA_REP') and salary Between 2000 and 15000;

--Ans 17
select first_name||' '||last_name as full_name, email from employees where email like 'J%' order by full_name desc;

--Ans 18
select first_name||' '||last_name as full_name,hire_date,manager_id, job_id from employees where to_char(hire_date, 'MM') = '03' and job_id = 'SA_REP' and manager_id in(146,147,148);

--Ans 19
select 'Myself '||first_name||' '||last_name||', I hired on '||hire_date as self_Intro from employees;

--Ans 20
select *from employees where manager_id>103 and phone_number like '%6';

--Ans 21
select *from employees where first_name in('John','Alexander');