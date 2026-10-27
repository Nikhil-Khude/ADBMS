create database sqlp1;
use sqlp1;
create table STAFF(Staff_no int primary key,
 S_name varchar(50), 
 S_address varchar(50), 
 S_ph_no numeric, 
 Branch_no int, 
 Branch_name varchar(50), 
 Role_id int, 
 Position varchar(50), 
 Basic_Salary int, 
 Hire_Date date
 );
 insert into staff values(1,'nikhil','paithan',8459551965,10,'it',101,'PRESIDENT',1000000,'1980-11-25');
insert into staff values(2,'mohit','pune',9699551965,11,'hr',102,'analyst',80000,'1990-12-29');
insert into staff values(3,'krish','mumbai',9225562622,10,'it',103,'manager',60000,'2000-02-11');
insert into staff values(4,'pratik','sangli',9172050549,11,'hr',104,'cleark',50000,'2010-01-01');
insert into staff values(5,'anil','hingoli',9022657557,12,'sales',105,'mgr',30000,'2020-07-01');

select Staff_no, S_name, Basic_Salary from staff where position="manager"  or position='mgr'; 
select * from staff where basic_salary>50000;
select * from staff where hire_date>'1990-01-01' order by position asc;
 select timestampdiff(year ,hire_date,curdate()) as experience
 from staff;
 select * from staff;
 select S_name from staff where position="cleark" or position='analyst';
 select S_name from staff where hire_date in("1980-11-25","1990-12-29","2000-02-11", "2010-01-01");
 select S_name from staff where Branch_no between 10 and 11;
 select S_name from staff where S_name like 'n%'or
 S_name like'k%';
 select max(basic_salary) from staff;
 select S_name, left(S_name,3)from staff where S_name like 'p%';
 select * from staff;
 select * from staff where position not in('PRESIDENT','mgr') order by basic_salary;
 select branch_name,max(basic_salary),min(basic_salary),count(*) from staff group by branch_name;
 select sum(basic_salary)from staff;
 select branch_name,avg(basic_salary) from staff where branch_name="it";
 select distinct basic_salary from staff;
 drop database sqlp1;