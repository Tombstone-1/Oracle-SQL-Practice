-- Assignment_6

--Ans 1
select upper(first_name) from employees;

--Ans 2
select initcap(last_name) from employees;

--Ans 3
select lower(job_id) from employees;

--Ans 4
select substr(first_name,1,3) from employees;

--Ans 5
select instr(first_name,'a'), first_name from employees;

--Ans 6
select unique length(commission_pct) from employees;

--Ans 7
select * from employees order by first_name, department_id desc;

--Ans 8
select ltrim('www.3ritech.com','w') from dual;

--Ans 9 
select replace('www.3ritech.com','.com','') from dual;

--Ans 10
select lpad('string',11,'@') from dual;

--Ans 11
select rpad('string',11,'@') from dual;

--Ans 12
select lpad('sqltutorials',13,'_') from dual;

--Ans 13
select rpad('sqltutorials',13,'$') from dual;

--Ans 14
-- didn't work // select lpad(rpad('sql',6,'#'),6,'#') from dual;
select concat(lpad(first_name,length(first_name)+3,'&'),'&&&') from employees;

--Ans 15
select replace('sqltutorials','s','$') from dual;

--Ans 16
select replace(first_name,'a','@') from employees;

--Ans 17
select reverse(last_name) from employees;

--Ans 18 
select substr(first_name||' '||last_name,instr(first_name||' '||last_name,' '),length(first_name||' '||last_name))from employees;

--Ans 19
select round(2345.67895643,3) from dual;

--Ans 20
select trunc(2345.67895643,3) from dual;

--Ans 21
select mod(56,3) from dual;

--Ans 22
select reverse('programming_language') from dual;

--Ans 23
select concat('&&&','sql') from dual;

--Ans 24 
select concat(lpad('sql',6,'#'),'###') from dual;

--Ans 25
select trim(both '$' from trim(both '#' from '###$$$sqlprogramming$$$$####')) from dual;