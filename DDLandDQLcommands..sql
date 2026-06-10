create database emp;
use emp;
#ddlcommands
create table employee1
(
emp_id INT primary key,
firstname varchar(10),
lastname varchar(10),
salary int,
age int
);
select * from employee1;
insert into employee1 values(5,'sonitha','baddila',50000,21);
insert into employee1 values(6,'asritha','ambure',60000,20);
insert into employee1 values(7,'thanuja','royal',70000,23);
insert into employee1 values(8,'leelarani','baddila',50000,24);
alter table employee1 add dept varchar(10);
select * from employee1;
alter table employee1 drop  column dept
#dqlcommands
create table emp_info
(
firstname varchar(10),
lastname varchar(10),
id int not null,
age int,
city varchar(10),
state varchar(20),
primary key(id)
);
insert into emp_info values('soni','baddila',9098,21,'mpl','AP');
select * from emp_info;
select firstname,lastname from emp_info;
select count(*) from emp_info;
select count(id) from emp_info;
insert into emp_info values('asri','ambure',9065,28,'anagllu','AP');
insert into emp_info values('thanu','royal',6598,21,'bng','kar');
select * from emp_info;
select * from emp_info where age>23;
select * from emp_info where age<23 and age>20;
select * from emp_info where firstname like 'a%';
select * from emp_info where age<30 or age>20;
select *from emp_info;
insert into emp_info values('anu','shree',0876,30,'cn','tn');
#dml
use emp;
create table emp_old
(
first_name varchar(10),
last_name varchar(10),
designation varchar(30),
age int,
salary float
);
#insert
INSERT INTO emp_old
(first_name, last_name, designation, age, salary)
VALUES
('hema', 'vathi', 'hr', 30, 70000),
('indu', 'shree', 'data', 20, 30000),
('hare', 'rama', 'data scientist', 32, 70000),
('pavi', 'kushi', 'hr', 20, 70000);
select * from emp_old where first_name like '%a' ;
select first_name,salary from emp_old where designation = 'data scientist';
select * from emp_old where designation='data scientist';
#update
UPDATE emp_old
SET designation = 'data Analyst'
WHERE first_name = 'hare';
SET SQL_SAFE_UPDATES = 0;
select * from emp_old where first_name='hare';
select * from emp_old ;