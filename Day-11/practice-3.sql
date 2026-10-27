create database sqlp;
use sqlp;
create table employee(Emp_no int primary key,
 E_name varchar(50), 
 E_address varchar(50),
 E_ph_no numeric, 
 Dept_no int, 
 Dept_name varchar(15),
 Job_id int, 
 Designation varchar(50), 
 Salary int);
 insert into employee values(1,'nikhil','n.khude203@gmail.com','8459551965','10','it',101,'paithan',100000),
							(2,'krushna','k.hude102@gmail.com',9225562622,11,'hr',102,"shm",80000),
                            (3,'mohit','m.khude103@gmail.com',9699551965,10,'it',103,'pune',50000),
                            (4,'mahesh','mahir@gmail.com',9373744347,11,'hr',104,'mumbai',40000),
                            (5,'anil',"anu@gmail.com",9225562622,12,'sales',105,'hingoli',10000);
select * from employee;
update employee set designation="manager" where  emp_no=1;
update employee set designation="manager" where  emp_no=2;
update employee set designation="cleark" where  emp_no=3;
update employee set designation="cleark" where  emp_no=4;
update employee set designation="saleman" where  emp_no=5;
select  Emp_no, E_name, Salary from employee where designation="manager";
select * from employee where salary>10000;
alter table employee add column join_date date;
update employee set join_date="1980/01/01" where Emp_no=1;
update employee set join_date="1990/02/02" where Emp_no=2;
update employee set join_date="2000-03-03" where Emp_no=3;
update employee set join_date="2010-04-04" where Emp_no=4;
update employee set join_date="2020-04-04" where Emp_no=5;
select designation from employee order by join_date<1981/01/01;
select * from employee where join_date>1981/01/01 order by designation;
select E_name,
timestampdiff(year,join_date,curdate())as experience from employee; 
select E_name from employee where designation="cleark" or
designation= "saleman";
select E_name from employee where E_name like'%m%';
select * from employee;