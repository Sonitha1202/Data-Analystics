create database joins_sql;
use joins_sql;
create table customer
(
customername  varchar(20),
customerid int,
address varchar(50),
city varchar(20),
postalcode varchar(20),
country varchar(20),
primary key(customerid)
);
create table order_info
(
orderid int,
customerid int,
employeeid int,
orderdate datetime,
shipped int,
primary key (orderid)
);
insert into customer values('soni',1,'colony','bangalore',3029,'india'); 
insert into customer values('soni',2,'colony','bangalore',5027,'india'); 
insert into customer values('soni',3,'colony','bangalore',9025,'india'); 
insert into customer values('soni',4,'colony','bangalore',7023,'india'); 
insert into customer values('soni',5,'colony','bangalore',1022,'india'); 
insert into customer values('soni',6,'colony','bangalore',2022,'india'); 
 select * from customer;
INSERT INTO order_info VALUES (1001, 1, 11, '2024-01-15 10:30:00', 1);
INSERT INTO order_info VALUES (1002, 2, 12, '2024-01-18 14:45:00', 0);
INSERT INTO order_info VALUES (1003, 3, 13, '2024-02-01 09:15:00', 1);
INSERT INTO order_info VALUES (1004, 4, 11, '2024-02-10 16:20:00', 1);
INSERT INTO order_info VALUES (1005, 5, 14, '2024-02-15 11:00:00', 0);
INSERT INTO order_info VALUES (1006, 6, 15, '2024-02-15 15:00:00', 0);
-- INNER JOIN
SELECT c.customerid, c.customername, o.orderid, o.orderdate FROM customer c INNER JOIN order_info o ON c.customerid = o.customerid;
-- LEFT JOIN
SELECT c.customerid, c.customername, o.orderid, o.orderdate FROM customer c LEFT JOIN order_info o ON c.customerid = o.customerid;
-- LEFT OUTER JOIN
SELECT c.customerid, c.customername, o.orderid, o.orderdate FROM customer c LEFT OUTER JOIN order_info o ON c.customerid = o.customerid;
-- RIGHT JOIN
SELECT c.customerid, c.customername, o.orderid, o.orderdate FROM customer c RIGHT JOIN order_info o ON c.customerid = o.customerid;
-- RIGHT OUTER JOIN
SELECT c.customerid, c.customername, o.orderid, o.orderdate FROM customer c RIGHT OUTER JOIN order_info o ON c.customerid = o.customerid;
-- WHERE JOIN (old style join)
SELECT c.customerid, c.customername, o.orderid FROM customer c, order_info o WHERE c.customerid = o.customerid;
-- LEFT OUTER JOIN + UNION-
SELECT c.customerid, c.customername, o.orderid FROM customer c LEFT OUTER JOIN order_info o ON c.customerid = o.customerid
UNION
SELECT c.customerid, c.customername, o.orderid FROM customer c LEFT OUTER JOIN order_info o ON c.customerid = o.customerid WHERE o.shipped = 1;
-- RIGHT OUTER JOIN + UNION
SELECT c.customerid, c.customername, o.orderid FROM customer c RIGHT OUTER JOIN order_info o ON c.customerid = o.customerid
UNION
SELECT c.customerid, c.customername, o.orderid FROM customer c RIGHT OUTER JOIN order_info o ON c.customerid = o.customerid WHERE o.shipped = 1;