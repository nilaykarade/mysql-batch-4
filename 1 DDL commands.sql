show databases;
create database if not exists ecom_db;
drop database ecom_db;

use ecom_db;

#create command for customer table
create table customers(
customer_id int primary key,
customer_name varchar(25) not null,
customer_email varchar(30) not null,
customer_contact varchar(15) not null
);

alter table cutosmers 
rename customers;

describe customers;

#drop table customers;
alter table customers
add passcode varchar(10);

# alter - add multiple columns
alter table customers
add customer_address varchar(30),
add customer_date_joined date, 
add customer_premium_membership bool; 

#true - 1, false - 0

describe customers;

#modilfy existing column - data type or size
alter table customers 
modify customer_contact int,
modify customer_address varchar(50);

describe customers;

#delete a column
alter table customers 
drop column customer_contact, 
drop column customer_address;


#add deleted columns
alter table customers 
add customer_contact varchar(10), 
add customer_address varchar(10);

#renaming columns
alter table customers 
change customer_contact customer_mobile_no varchar(10),
change customer_address customer_delivery_address VARCHAR(30);

#change table name
alter table customers
rename ecommerce_customers;


desc customers;

#drop product table --

create table if not exists products(
product_id          int unsigned auto_increment primary key, 
product_name       varchar(50), 
product_description varchar(2000), 
product_category   varchar(30), 
unit_price          float
);

