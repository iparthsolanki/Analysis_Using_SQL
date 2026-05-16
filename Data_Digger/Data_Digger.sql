create database data_digger;
use data_digger;

create table customers(
customerID int primary key,
Name varchar(50),
Email varchar(50),
Address varchar(50)
);

insert into customers(customerID,Name,Email,Address) values
(1,'Alish jain','@Alish255gmail.com','Ahmdabad'),
(2,'joy solanki','@joy111gmail.com','surat'),
(3,'vivan sukla','@vivan000gmail.com','banglore'),
(4,'akash shah','@akash22gmail.com','delhi'),
(5,'veer rao','@veer@gmail.com','mumbai');

select * from customers;

update customers set Address = 'chennai'
where customerID = 2;
select * from customers;

delete from customers
where customerID = 5;
select * from customers;

select * from customers
where Name = 'Alish jain';

create table orders(
orderID int primary key,
customerID int,
orderDate date,
totalAmount int
);

insert into orders values
(101,1,'2025-11-20',5000),
(102,2,'2025-11-28',3200),
(103,3,'2025-12-01',4500),
(104,4,'2025-12-10',6000),
(105,5,'2025-12-15',2800);

select * from orders
where customerID = 1;

update orders set totalAmount = 10000
where orderID = 103;
select * from orders;

delete from orders
where orderID = 102;
select * from orders;

select * from orders
where orderDate >= curdate()-interval 30 day;

select 
 max(totalAmount) as highest_price ,
 min(totalAmount) as lowest_price,
 avg(totalAmount) as avg_price
 from orders;
 
 create table products(
 productID int primary key,
 productName varchar(25),
 price int,
 stock int
 );
 
 insert into products values
 (01,'A.C',40000,5),
 (02,'T.V',30000,10),
 (03,'Laptop',80000,4),
 (04,'i phone',150000,6),
 (05,'fridge',25000,3);
	
select * from products 
order by price desc;

update products set price = 90000
where productID = 3;
select * from products;

set sql_safe_updates = 0;
delete from products
where stock = 0;

select * from products
where price between 50000 and 150000;

select
max(price) as Expensive_product,
min(price) as chepest_product
from products;

create table fields(
orderDetailID int primary key,
orderID int ,
productID int ,
quantity int,
subTotal int);

insert into fields value
(1,101,1,1,40000),
(2,101,2,1,30000),
(3,102,3,1,80000),
(4,103,4,2,300000),
(5,104,5,1,25000);

select * from fields 
where orderID = 101;

select sum(subTotal) from fields;

select * from fields
order by subTotal desc limit 3 ;

select count(*) as Product_count from fields
where productID = 4;



