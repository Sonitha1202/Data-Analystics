 use emp;
 select * from employee;
 select avg(salary) from employee where salary > (select avg(salary) from employee); 
 SELECT firstname, salary FROM employee WHERE salary > (SELECT AVG(salary) FROM employee);
 select firstname,salary FROM employee  WHERE salary =  (select MAX(salary) FROM employee); 
SELECT MAX(salary) AS second_highest_salary FROM employee WHERE salary < (SELECT MAX(salary) FROM employee); 
select firstname,salary FROM employee  WHERE salary = (select MAX(salary) FROM employee where salary < (select MAX(salary) from employee)); 
#view
create view employee_salary_view AS select em_id, firstname, salary from employee;
SELECT * FROM employee_salary_view;
create view city AS select firstname,city from employee;
select * from city;
create view  salary AS select firstname,city from employee where salary< 50000;
select * from salary; 
