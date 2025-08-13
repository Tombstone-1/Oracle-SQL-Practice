-- Assignment -2 -- 
--Ans 1
CREATE TABLE employ_details(id int, name varchar(30),age number(3), address varchar(20), salary float);

--Ans 2
insert into employ_details(id, name, age, address, salary) values(1, 'Ramesh', 32, 'Ahemdabad', 2000.00);
insert into employ_details(id, name, age, address, salary) values(2, 'Khilan', 25, 'Delhi', 1500.00);
insert into employ_details(id, name, age, address, salary) values(3, 'Kaushik', 23, 'Kota', 2000.00);
insert into employ_details(id, name, age, address, salary) values(4, 'Chaitali', 25, 'Mumbai', 6500.00);
insert into employ_details(id, name, age, address, salary) values(5, 'Hardik', 27, 'Bhopal', 8500.00);
insert into employ_details(id, name, age, address, salary) values(6, 'Komal', 22, 'MP', 4500.00);
insert into employ_details(id, name, age, address, salary) values(7, 'Muffy', 24, 'Indore', 10000.00);

--Ans 3
update employ_details set salary = 8000.00 , age = 23 where id = 6;

--Ans 4
delete from employ_details where name = 'Hardik';

-- Ans 5
update employ_details set address = 'Pune' where address = 'Mumbai' or address = 'MP';

--Ans 6
update employ_details set salary = salary+1000.00 where id = 4 or id = 7;

--Ans 7
select name, age, salary from employ_details;

--Ans 8
select name||' ' ||age||' '||address as Full_information from employ_details;

--Ans 9 
select name||' '||'salary is'||' '||salary from employ_details;

--Ans 10
 select distinct name from employ_details;