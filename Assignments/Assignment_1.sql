-- Assignment 1 --

--Ans 1 -- 
CREATE TABLE customer(customer_name char(20), customer_street char(30), customer_city char(30));

-- Ans 2 -- 
ALTER TABLE customer ADD(phone_number number(10),country char(20));

-- Ans 3 --
ALTER TABLE customer RENAME COLUMN phone_number TO Mobile;

-- Ans 4 --
CREATE TABLE branch(branch_name char(15), branch_city char(30));

-- Ans 5 --
ALTER TABLE branch MODIFY(branch_name varchar(20));

-- Ans 6 --
INSERT INTO customer(customer_name, customer_street, customer_city,  mobile, country)values('Ayush pandey','Dighi', 'pune',3456217856,'India');
INSERT INTO customer(customer_name, customer_street, customer_city,  mobile, country)values('Somnath','talegaon', 'pune',3456546756,'India');
INSERT INTO customer(customer_name, customer_street, customer_city,  mobile, country)values('Dheeraj','pimple saudagar', 'pune',3456785856,'India');

-- Ans 7 --
create table cust_info as select * from customer where 1=2;

-- Ans 8 -- 
TRUNCATE TABLE cust_info;

-- Ans 9 --
desc customer;
desc branch;

--Ans 10 -- 
INSERT INTO cust_info(customer_name, customer_street, customer_city,  mobile, country)select customer_name, customer_street, customer_city,  mobile, country from customer;

--Ans 11 --
INSERT INTO branch(branch_name, branch_city)values('birla vikas','satna');
INSERT INTO branch(branch_name, branch_city)values('chinchwad','chinchwad Gaon');
INSERT INTO branch(branch_name, branch_city)values('temura','telegana');
INSERT INTO branch(branch_name, branch_city)values('patna','patna');
INSERT INTO branch(branch_name, branch_city)values('central university','Delhi');

-- Ans 12 --
ALTER TABLE branch RENAME To branch_info;


