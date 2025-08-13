-- DDL Commands --

CREATE TABLE student(roll_no int, stud_name varchar(20), stud_class int, marks int);
ALTER TABLE student ADD(city varchar(20)); -- add new column in existing table
ALTER TABLE student MODIFY(marks number(3)); /* for datatype*/
ALTER TABLE student RENAME COLUMN city to Address; /* for rename*/
ALTER TABLE student RENAME TO Tech_Student;        /* table rename*/
ALTER TABLE Tech_student DROP COLUMN address;     /* for drop column*/
DROP TABLE Tech_student; /* drops everything all constraint and table .no need detail one */
TRUNCATE TABLE tech_student; -- delete all records but not table/ faster
select * from tech_student;

--------

-- DML commands--
select * from countries;
create table emp as select * from employees; -- for creating table and simuntaniously get and enter data from other table--
select * from emp;

create table updated_country as select country_id, country_name from countries; -- selective data input on new table create -- 
select * from updated_country;

create table emp_sales as select * from emp where 1=2; -- where we want design only from older table not data.
select * from emp_sales;

INSERT INTO tech_student(roll_no, stud_name, stud_class, marks)values(1, 'john', 10, 98); -- sequence matters 
INSERT INTO tech_student(roll_no, stud_name, stud_class)values(2, 'james doe', 12);  -- none field enter/ shows null
INSERT INTO tech_student(roll_no, stud_name)select employee_id, first_name from employees; -- insert from other table



update tech_student set stud_class = 12;
update tech_student set dob = '09-09-1986'; -- date format dd-mm--yy
alter table tech_student rename column marks to P_marks;
update tech_student set marks = 23 where roll_no = 104;

delete from tech_student;  -- delete all record but slow then truncate
delete from tech_student where roll_no = 115;

desc tech_student; -- gives detail on table structure and datatype.

select P_marks from tech_student;
select P_marks from tech_student where P_marks=33;

-- alias
select first_name as name, salary as in_hand from employees; -- alias clause (as)
select first_name ||' '|| last_name as name from employees;   -- concatinate using || pipe/ use literal '' for space

--airthematic operator
select first_name as name, salary as before, salary+500 as after from employees; --used + and as alias
select employee_id as id, salary as before_salary, salary+500 as after_salary from employees where employee_id = 100 or employee_id = 103; -- always mention column name after relation operator for multiple use.

-- order clause
select * from employees where department_id = 90 or department_id <= 20; --- comparision operator (<> not equal to)

-- distinct
select distinct country from customer; -- execute for only single column

-- relational operators
select first_name, salary from employees where salary<> 17000;

--logical operator
select * from employees where first_name = 'Steven' AND last_name = 'King';
select * from employees where first_name = 'Steven' OR last_name = 'King';
select * from employees where first_name = 'Steven' NOT last_name = 'King';

-- sql conditions/ row restrictions
select * from employees where salary BETWEEN 9000 and 15000;
select * from employees where salary  NOT BETWEEN 9000 and 15000;
select * from tech_student where roll_no in(105, 103, 104);
select * from departments where department_id not in(50,60, 90);
select * from employees where commission_pct IS NULL;
select * from employees where manager_id IS NOT NULL;

-- addition condition
select * from tech_student;
update tech_student set p_marks = p_marks+10 where p_marks<50;

-- like operator '% means character set' case senstive
select first_name from employees where first_name like 'A%'; -- start alphabet
select first_name from employees where first_name like '%a'; -- end alphabet
select first_name from employees where first_name like 'A%m'; -- start a, end m
select first_name from employees where first_name like 'A_i%'; -- start a third with i and second empty
select first_name from employees where first_name like '_i_%'; --middle i only
select first_name from employees where first_name like '_r%';
select first_name, last_name from employees where first_name like 'A%' and last_name like 'B%'; -- first, last bot h

-- order by/sorting 

select * from employees order by first_name;
select * from employees where salary> 10000 order by first_name;
select * from tech_student where p_marks>=50 order by roll_no desc;
select first_name, salary from employees where salary> 10000 order by salary;
select first_name, salary from employees order by first_name asc;

--unique / no difference/ use any
select distinct first_name from employees;
select unique first_name from employees;

-- count -- does not count null
select count(stud_name) from tech_student;
select count(*) as no_of_student from tech_student;
select count(first_name) from employees;
select count(roll_no) from tech_student;
select count(roll_no) from tech_student where p_marks>=75;
select count(first_name) from employees where first_name like'A%';
select count(first_name) from employees where salary> 10000;

-- Top rows / Top Gun Maverick
/* oracle - rownum
sql server- top
mysql - fetch */
select * from employees where ROWNUM<=5;
select * from employees where ROWNUM<=5 order by first_name;

-- aggregrate functions:/cannot use where on max min?
select * from tech_student;
select avg(p_marks) as avg from tech_student;
select sum(p_marks) as sum from tech_student;
select count(*) as count from tech_student;
select min(p_marks)as min, max(p_marks)as max from tech_student;

-- group by/ works with aggregate fx
select department_id from employees group by department_id; --works like distinct
select max(salary) as maxsalperdeprt, department_id from employees group by department_id order by department_id;

--Having clause same as where but can use with aggregate fx
select count(*) as emp_deprt, department_id from employees group by department_id having count(*)>5;

--character row / just for display
select upper(first_name), lower(last_name) from employees;
select initcap('data') from dual; -- its a dummy table already present

update tech_student set stud_name = initcap(stud_name); -- changes in dB
select length('abc') from dual;  -- count string length

select first_name from employees where length(first_name) = 3;
select concat(first_name,last_name) from employees;

select substr('Mumbai',3,5) as city from dual; -- start point and how much character to return / slices
select substr(first_name,2,2) from employees where first_name = 'Ellen';
select substr(first_name,3,3),first_name from employees where length(first_name)>5 and first_name = initcap(first_name);

select instr(first_name, 'e') from employees; -- checks scnd word (position) is there on string or not./ case- senstive
select first_name, job_id from employees where instr(job_id,'SA')>=1;

select lpad(stud_name,6,'Pd'), stud_name from tech_student; -- padd the column for formal looking (coln_name, no. of toatl digit, what to fill)
select Rpad(stud_name,6,'Pd'), stud_name from tech_student; -- same but right side

select replace(stud_name,'n','q'),stud_name from tech_student; --(coln_name, replace, with)
select reverse(stud_name) from tech_student; -- complete reverse

select trim(' ' from '  abc  ') from dual;  -- 3 option leading(start), trailing(end), both 
select trim(trailing ' ' from '  abc  ') from dual;
select ltrim('aab','a') from dual; -- coln_name, remove character
select rtrim('aab','b') from dual;
select trim(both 'n' from 'nkuttan')from dual; 
select rtrim(first_name,'E') from employees;

-- 2 feb here--
-- Number Function
select round(45.67859,2) from dual;
select trunc(45.67859,2) from dual;
select mod(9,4) from dual;
select ceil(25.02) from dual;
select floor(23.99) from dual;

--Date function
select current_date from dual; -- show sysdate and today's date.
SELECT TO_CHAR(SYSDATE, 'FMDay, DD Month YYYY') FROM dual; -- for writting in this format Friday,24 February 2023
select sysdate from dual;
select current_timestamp from dual; -- show complete date and full time with timezone.
select extract(day from hire_date), hire_date from employees; -- show day in DD format extracted from any format.
select extract(month from date '2019-1-12') from dual; --mention dual dummy table so have to mention date in oracle setted datetime format
select last_day(date '20-9-4') from dual; -- any format with digits only
select months_between('09-01-22','09-09-21') from dual; -- months_between(end(to) , start(from))
select add_months('09-01-22',3) from dual; --adding 3 to the existing month 1 so it becomes 4 .

select round(to_date('15-jul-95'),'month') from dual; --just round of the july month which is near to august to august.
select trunc(to_date('25-jul-95'),'month') from dual; -- trunc on same month 

--TCL commands
commit;  --just to save all the work done through this user to this table.
Delete; 
Rollback;  --deleted something by mistake? here run this.(beware!! doesn't work for drop though.)
savepoint s1; -- games khele hona bs wai h ye.yaha tk sb chnga si.
--mistake hone pe
rollback to savepoint s1;

--Type conversion --implicit
select concat(3,'t') from dual; -- convert 3 into char
select 3+'5' from dual; --5 is recognize as char but due to + airthematic operator converted into int and ans is 8.

--Type conversion --explicit /force conversion
select to_date('20-feb-2012') from dual; --format problem february 20,2019.
select to_Char(to_date('19-jan-2015'),'dd')from dual; -- output char to char(number,date(),format).
select to_number('33')+to_number('10') from dual;

-- end--

-- general function
select nvl(commission_pct,0) from employees; -- will not work for string
select nvl2(first_name, first_name,'empty') from employees; -- for two arguments / if col string then put string else no.

select nullif('ss','s0s') from dual; -- if both same then return null else not
select nullif(first_name,last_name) from employees;

--take user input for 2 string if equal return string are equal and if not string are not equal.
select nvl2(nullif(first_name,last_name),'string are not Equal', 'String are equal') from employees;

select Coalesce(null,null,'abc') from dual; -- check all column in a row for null value.

select coalesce(commission_pct,salary) from employees; -- if value 1 is null then place value 2 in that position. //same datatype should be there.
select * from tech_student;

-- constraint / primary key
create table customer(cust_id int, cust_name varchar(20), city varchar(15),Constraint cust_pk PRIMARY KEY(cust_id));

insert into customer(cust_id,cust_name,city)values(1,'Ayush','uttarakand');
insert into customer(cust_id,cust_name)values(3,'Somnath');

-- constraint / Not Null
create table student(rollno int, stud_name varchar(20) NOT NULL, marks float, constraint roll_pk primary key(rollno));
insert into student(rollno,stud_name,marks)values(1,'Balendra',78.9);
insert into student(rollno,stud_name)values(2,'baluu miya');
drop table student;

--constraint/ unique
create table student(roll_no int, stud_name varchar(20) NOT NULL unique, marks float, constraint roll_pk primary key(roll_no));
insert into student(roll_no,stud_name,marks)values(1,'Balendra',78.9);
insert into student(roll_no,stud_name,marks)values(2,'Ballu',78.9);
select * from student;

-- Constraint / check
create table student(roll_no int, stud_name varchar(20) NOT NULL unique, marks int, constraint roll_pk primary key(roll_no), constraint marks_chk check(marks between 0 and 100));
insert into student(roll_no,stud_name,marks)values(1,'Balendra',78.9);
insert into student(roll_no,stud_name,marks)values(2,'krishna',100);
insert into student(roll_no,stud_name,marks)values(3,'mahindra',200);
insert into student(roll_no,stud_name,marks)values(4,'Dhirendra',63);

-- constraint / foreign key / parent table from which we are bringing primary key to this table.

create table city(city_id int, city_name varchar(20), constraint city_pk primary key(city_id));
insert into city(city_id, city_name)values(10,'Sealdah');
select * from city;

create table customers(cust_id int, cust_name varchar(20) not null, phone number(11),email varchar(20), city int, constraint cust1_pk primary key(cust_id), constraint cities_fk foreign key(city) references city(city_id));
insert into customers(cust_id,cust_name,phone,email,city)values(8,'Shivam',7865545362,'bharadwaj@mail.com',4);
select * from customers;

-- alter constraint / adding
create table states(state_id int, state_name varchar(20), constraint state_pk Primary key(state_id));
insert into states(state_id, state_name)values(8,'Uttar pradesh');

alter table customers add(state int, constraint state_fk foreign key(state) references states(state_id));
update customers set state = 1 where cust_id = 1;

-- alter constraint / enable-disable / drop / pk drop
alter table customers Disable constraint SYS_C007071; 
alter table customers Enable constraint SYS_C007071;  -- if null is added you have to delete them before executing this one.
alter table customers drop constraint SYS_C007071;   -- can add from alter again
alter table customers drop constraint cust1_pk;

-- candidate key = all column that can be unique for table or record identification.
-- primary key = from all unique column ,one that cannot be not null and unique
-- alternate key = other than primary
-- foreign key = primary key from parent table.
-- super key = combination of two or more column that makes it unique 

--set operator / union -- to get one column data from two or more table only unique and should match datatype
select stud_name from tech_student union select cust_name from customers;

-- set operator / union all -- get all value present in both tables specified colmn no unique
select stud_name from tech_student union all select cust_name from customers;

--set operator /intersect -- commom records from both table if none, no value will show.
select stud_name from tech_Student intersect select cust_name from customers;

-- set operator / minus -- remove the second tables data from the first one if same present.
select stud_name from tech_student minus select cust_name from customers;

-- View // create a view table with specified field that can be changed.its not orginal table just like an copy
create view view_emp as select first_name, last_name, salary from employees where salary>=10000;
select * from view_emp order by salary desc;
update view_emp set salary= salary+5000 where first_name = 'Harrison';
drop view view_emp;

/*sequence // to give auto increment feature to specified colmn
sql - Auto increment
oracle - this method only
*/
create sequence roll_seq increment by 1 start with 1;
select * from tech_Student;
truncate table tech_student;
insert into tech_student(roll_no,stud_name,stud_class,p_marks,dob)values(roll_seq.nextval,'Aditya',12,89,'07-01-23');
update tech_student  set dob='04-01-23' where dob='08-09-23';

--sequence current position or value // using dual dummy table because it doesnot belong to any table.
select roll_seq.nextval from dual;

--sequence drop
drop sequence roll_seq;

--joins / inner join / aka. equi join (=)
--if customer present but no city , no data come - if city there but no customer, then also no data
-- if common name present in both table it will get confuse so give table_name.column_name ex city.city_name
select cust_id, cust_name, city, city_name, state_name from customers 
inner join city on customers.city = city.city_id
inner join states on customers.state = states.state_id;

--joins / outer join / left join -- In this table 1 will show all record whether there's value in table 2 or not.
select customers.cust_id, customers.cust_name, city.city_name, states.state_name from customers
left outer join city on customers.city = city.city_id
left outer join states on customers.state = states.state_id;

--joins / outer join / right join -- In this table 2 will show all record whether there's value in table 1 or not. but not for multiple joins
select customers.cust_id, customers.cust_name, city.city_name, states.state_name from customers
right outer join city on customers.city = city.city_id
right outer join states on customers.state = states.state_id;

-- joins / outer join / full join -- show all records from all all tables 1 , 2, 3
select customers.cust_id, customers.cust_name, city.city_name,states.state_name from customers
full outer join city on customers.city = city.city_id
full outer join states on customers.state = states.state_id;
-- joins / cross join / ex - table 1 five emp and table 2 three departments, every particular employee will have all 3 departments.
select employees.first_name , departments.department_name from departments cross join employees;

--joins / self join / ex - it's join same particular tables where employee is also manager but also an employee. fetching employees will also give manager as an employees.
-- just differentiating manager and employees by using alias at the time of from ( employee manager)

select employees.employee_id,employees.first_name, employees.manager_id, manager.first_name as manager from employees, employees manager 
where employees.manager_id = manager.employee_id order by manager;

select emp.employee_id, emp.first_name,manager.employee_id,manager.first_name as manager from employees emp ,employees manager
where emp.manager_id = manager.employee_id;

--joins only oracle / natural join -- same work as inner join but name of primary key column and foreign key column should be same
--and does not work for different name if given in primary key and foriegn key like department_id and dept_id 
--work for 2 or more table and will show common column one time at first of the table. just need column name same in all table.
select * from employees 
natural join departments;

select * from customers natural join city;

--term / using -- for inner join don't specify inner but for right,left,full specify name then join
select customers.cust_id, customers.cust_name, city.city_name from customers
join city using(city_id);

select customers.cust_id, customers.cust_name, CITY.city_name from customers
full outer join city using(city_id);

select employees.employee_id,employees.first_name,DEPARTMENTS.department_name from
employees join departments using(department_id);

-- task--
select employees.employee_id,employees.first_name,DEPARTMENTS.department_name, employees.hire_date from
employees join departments using(department_id)where to_char(hire_date, 'MM') = 03 order by hire_date;

--09-feb-2023
-- subqueries --query inside the query // inside parenthesis stuff will get exceuted first
--single row queries
select first_name, last_name, salary from employees where salary>
(select salary from employees where first_name='Nancy' and last_name = 'Greenberg'); -- this one is subquery and first think this then main query.

select first_name, last_name, salary, department_id from employees where salary>
(select max(salary) from employees where department_id = 50); -- exclude whose department_id is 50

--in clause-- if too many values error comes
select * from employees where salary in (select max(salary) from employees where department_id = 50);

--any clause
select * from employees where salary < any(select salary from employees where department_id = 50);


--task
select * from employees where salary = (select max(salary) from employees);
select * from employees where salary = (select min(salary) from employees);

--display single record of salary who has max salary department wise unique value -- not done
select distinct first_name, salary, department_id from employees where salary in (select  max(salary), department_id from employees group by department_id order by department_id);
select  max(salary), department_id from employees group by department_id order by department_id;

select distinct salary from employees group by department_id order by salary desc;

-- display second,third highest and lowest salary from employees
select min(salary)as second_highest_sal from (select distinct salary from employees order by salary desc)where rownum<3;
select min(salary)as Third_highest_sal from (select distinct salary from employees order by salary desc)where rownum<4;
select max(salary)as second_lowest from (select distinct salary from employees order by salary)where rownum<3;

--merge // merge will merge two tables, we assign 2 column from both table, if same value is present it will update it and if not same then insert it
select * from customers;
select * from stud_info;

merge into stud_info s using customers c on (s.roll_no = c.cust_id) -- mention here on clause()
when matched then 
update set s.name = c.cust_name, s.city = c.city
when not matched then
insert values(c.cust_id, c.cust_name,c.city);

-- DCL commands // on terminal
--Grant / revoke
-- for admin who has all authorities and creating new user
1> sqlplus/ as sysdba;
2> connect
   enter name - system
   password - admin
3> create user john identified by 1234;
4> grant connect to john;
5> grant select on hr.customers to john; 
6> revoke select on hr.employees from john;
7> grant all on hr.customers to john; --gives entire CRUD authority
8> revoke all on hr.customers from john;

-- for user who is new and connecting
1> sqlplus/ as sysdba;
2> connect
   enter name - john
   password - 1234
3> select * from hr.customers;  -- hr is must cause this table is his.


--assignment tables
create table salesman(salesman_id int, name varchar(20),city varchar(20),commission float, constraint s_idpk primary key(salesman_id));
insert into salesman(salesman_id,name,city,commission) values(5003,'Lauson Hen','San Jose',0.12);
select * from salesman;

create table customer(cust_id int, cust_name varchar(20),city varchar(20), grade int, sman_id int,
constraint cust_pk primary key(cust_id), constraint sman_fk foreign key(sman_id) references salesman(salesman_id));

insert into customer(cust_id, cust_name, city, grade, sman_id) values(3008,'Julian Green','London',300,5005);
select * from customer;

create table orders(ord_no int, purch_amt float, ord_date date, cid int, sid int,
constraint cid_fk foreign key(cid) references customer(cust_id),
constraint sid_fk foreign key(sid) references salesman(salesman_id));

insert into orders(ord_no, purch_amt,ord_date,cid,sid)
values(70013,3045.6,'25-04-2012',3002,5001);

--Assignment 10 test table
create table dept(   
  deptno     number(2,0),   
  dname      varchar2(14),   
  loc        varchar2(13),   
  constraint pk_dept primary key (deptno)   
);

create table emp(   
  empno    number(4,0),   
  ename    varchar2(10),   
  job      varchar2(9),   
  mgr      number(4,0),   
  hiredate date,   
  sal      number(7,2),   
  comm     number(7,2),   
  deptno   number(2,0),   
  constraint pk_emp primary key (empno),   
  constraint fk_deptno foreign key (deptno) references dept (deptno)   
);

insert into DEPT (DEPTNO, DNAME, LOC) 
values(40, 'OPERATIONS', 'BOSTON');

insert into emp   
values(   
 7934, 'MILLER', 'CLERK', 7782,  
 to_date('23-1-1982','dd-mm-yyyy'),  
 1300, null, 10   
);

--summon the table with relation
select ename, dname, job, empno, hiredate, loc   
from emp, dept   
where emp.deptno = dept.deptno   
order by ename;

-- list department and employees in them
select dname, count(*) count_of_employees 
from dept, emp 
where dept.deptno = emp.deptno 
group by DNAME 
order by 2 desc;



-- Test / Practise.

create table stu(student_id int);
alter table stu modify (constraint stu_pk primary key(student_id));
SELECT ROUND(TRUNC(MOD (1600, 10), 1), 2) FROM dual;

select first_name from employees where first_name like 'E%n';


select department_id, last_name, job_id from employees where department_id in (select departments.department_id from employees
inner join departments on employees.department_id = departments.department_id where department_name = 'Executive');

select concat('*****',rpad('sql',8,'*')) from dual;

select instr('SQL Tutorial',' ') from dual;


select * from employees where first_name like 'A_ex%';

select * from employees where salary between 5000 and 10000 and department_id in(20,50);

select first_name, last_name, salary, salary*(commission_pct*12) as Hike from employees;

select * from employees where salary<22000 and salary>10000;

select first_name, salary from employees where length(salary) = 5 and salary like '2%';