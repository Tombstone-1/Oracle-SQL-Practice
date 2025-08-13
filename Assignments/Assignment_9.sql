--Assignment_9 
--Ans_1
select salesman.name, customer.cust_name, customer.city from customer
inner join salesman on customer.sman_id = salesman.salesman_id;

--Ans_2
select salesman.name as salesman, customer.cust_name as customer_name from customer
inner join salesman on customer.sman_id = salesman.salesman_id;

--Ans_3
select salesman.name as salesman, customer.cust_name as customer_name from customer
inner join salesman on customer.sman_id = salesman.salesman_id where commission > 0.12;
 
--Ans_4
select orders.ord_no, purch_amt, customer.cust_name, customer.city from orders
inner join customer on orders.cid = customer.cust_id where orders.purch_amt between 500 and 2000;

--Ans_5
select orders.ord_no,orders.ord_date, orders.purch_amt,customer.cust_name,salesman.name as salesman, salesman.commission from orders
inner join customer on customer.cust_id = orders.cid
inner join salesman on salesman.salesman_id = orders.sid;

--Ans_6
select salesman.name as salesman, customer.cust_name from customer
full outer join salesman on salesman.salesman_id = customer.sman_id;\

--Ans_7
select orders.ord_no, orders.purch_amt, orders.ord_date, 
salesman.salesman_id, salesman.name, salesman.city, salesman.commission, 
customer.cust_id, customer.cust_name, customer.grade 
from orders
full outer join salesman on orders.sid = salesman.salesman_id
full outer join customer on orders.cid = customer.cust_id;

--Ans_8
select customer.cust_name, salesman.name as salesman from customer
 right outer join salesman on customer.sman_id = salesman.salesman_id order by customer.cust_name;
 
--Ans_9
select salesman.name as salesman, customer.cust_name from customer
full outer join salesman on customer.sman_id = salesman.salesman_id order by salesman.name desc;

--Ans_10
select * from orders
inner join customer on orders.cid = customer.cust_id
where customer.grade is not null;
