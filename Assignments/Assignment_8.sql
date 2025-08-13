--Assignment_8
--Ans_1
select employee_id, first_name, commission_pct from employees where commission_pct between 0.25 and 0.35 order by first_name;

--Ans_2
select job_id, max(salary) from employees group by job_id having max(salary) > 5000;

--Ans_3
select first_name from employees where first_name like 'S%' order by first_name;

--Ans_4
select round(avg(salary),2), count(first_name) from employees where department_id = 100;

--Ans_5
select first_name from employees where length(first_name) > 5 order by first_name;

--Ans_6
select department_id, sum(salary) from employees group by department_id order by department_id;

--Ans_7
select department_id, min(salary) from employees group by department_id order by department_id;

--Ans_8
select manager.employee_id as manager_id, manager.first_name as manager_name, count(emp.employee_id)as number_of_employees from employees emp
join employees manager on emp.manager_id = manager.employee_id 
group by manager.employee_id, manager.first_name order by manager.employee_id;

--Ans_9
select max(salary) from employees where job_id = 'IT_PROG';

--Ans_10
select min(salary)as lowest, max(salary) as highest, round(avg(salary),2)as average, department_id from employees group by department_id order by department_id;