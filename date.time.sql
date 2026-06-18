use joins_sql;
select * from order_info;
select orderid,employeeid,DATEDIFF(CURDATE(),orderdate)AS Days_Passed FROM order_info;
#datetime
#datediff
SELECT DATEDIFF('2025-01-01', '2024-01-01') AS Days_Difference;
#dateformat
SELECT DATE_FORMAT(CURDATE(), '%d-%m-%Y') AS Formatted_Date;
#daynumber
SELECT DAY(CURDATE()) AS Day_Number;
#quaternumber
SELECT QUARTER(CURDATE()) AS Quarter_No;
#addnewdate
SELECT DATE_ADD(CURDATE(), INTERVAL 10 DAY) AS New_Date;