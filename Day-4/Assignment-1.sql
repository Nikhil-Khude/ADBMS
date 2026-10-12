create database CompanyDB;
use CompanyDB;
create table Employees(
EmpID Int Primary Key, 
EmpName varchar(10),
Salary int, 
JoinDate date);
desc Employees;
select * from Employees;
create table department (
dept_id int primary key, 
deptname varchar(10));
alter table Employees add column Email varchar(100);
alter table department add column dept_location varchar(100);
select * from department;
alter table Employees add column Phone numeric not null;
alter table Employees modify empname varchar(100);
alter table department drop primary key;
alter table department add primary key(dept_id);
alter table Employees add dept_id int;
alter table Employees add foreign key Employees(dept_id) references department (dept_id);
desc Employees;
select* from Employees;
show create table Employees;
alter table Employees rename column empname to employeesname;
alter table Employees add column age int;
alter table Employees add constraint chk_salary_age check(age>20 and salary>5000);
alter table Employees drop Phone; 
rename table Employees to employeedetails; 
select * from employeedetails;
alter table employeedetails drop check chk_salary_age;
drop table department;
select * from department;
show create table department;
alter table employeedetails drop foreign key employeedetails_ibfk_1;
drop table department;
drop database Company_DB;