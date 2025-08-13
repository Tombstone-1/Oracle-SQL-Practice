--Assignment-7

--Ans_1
select first_name,concat(' $' ,salary + salary*15/100) as increased_salary from employees;

--Ans_2
select employee_id, first_name, salary, to_char(hire_date, 'MONTH DD,YYYY') from employees;

--Ans_3
select length(trim(first_name)) from employees;

--Ans_4 doubt
select * from employees;

--Ans_5
select * from employees where to_char(hire_date,'MM') = 01;

--Ans_6
select * from employees where to_char(hire_date,'Month') like '_a%';

--Ans_7
select * from employees where length(first_name)=6 and first_name like '%s';

--Ans_8
select * from employees where to_char(hire_date,'YY') between '90' and '99';

--Ans_9
select sum(purch_amt) as total_purchase_amount from orders;
