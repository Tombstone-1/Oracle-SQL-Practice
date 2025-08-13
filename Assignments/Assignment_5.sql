--Assignment 5

--Ans 1
select count(distinct job_id) as available_jobs from employees;

--Ans 2
select max(salary) as Max_payable from employees;

--Ans 3
select max(salary) as Max_salary from employees where job_id = 'IT_PROG';

--Ans 4
select count(*) as no_of_employee, avg(salary) as avg_salary from employees where department_id = 90;

--Ans 5
select max(salary) as highest_salary, min(salary) as lowest_salary, sum(salary) as sum_of_salaries, avg(salary) as avg_salary from employees;

--Ans 6
select max(salary) as highest, min(salary) as lowest,(max(salary) - min(salary)) as Difference from employees;

--Ans 7
select min(salary)as lowest_paid_employee, manager_id from employees GROUP BY manager_id order by manager_id;

--Ans 8
select job_id, avg(salary)as avg_salary from employees group by job_id having job_id <> 'IT_PROG';

--Ans 9 
select job_id, sum(salary) as total_salary, max(salary) as maximum_salary, min(salary)as minimum_salary, avg(salary) as avg_salary from employees where department_id = 90 group by job_id;

--Ans 10
select avg(salary) as avg_salary from employees group by department_id having count(*)> 10;

--Ans 11
select department_id as department_code, count(*) as no_of_employee from employees group by department_id;