create database companyDB;
use companyDB;
create table Employees(EmpID Integer Primary Key, EmpName varchar(50), Salary int, JoinDate date );
create table Departments (DeptID Integer Primary Key, DeptName varchar(50));
alter table Employees add column Email VARCHAR(100);
alter table Departments add column dept_location varchar(50); 
alter table Employees add column phone numeric not null;
alter table Employees modify EmpName varchar(100);
show create table Departments;
alter table Departments drop primary key;
alter table Departments add primary key(DeptID);
select * from Employees;
select * from Departments;
alter table Employees
add constraint check_id
foreign key (EmpID)
references Departments(DeptID);
alter table Employees rename column EmpID to EmployeeName;
alter table Employees add column age int;
alter table Employees add constraint check_age_salary check(salary>5000 and age>18);
alter table Employees drop column phone;
rename table Employees to EmployeeDetails;
alter table EmployeeDetails drop check check_age_salary;
drop table Departments;
alter table  EmployeeDetails drop foreign key check_id;
drop database companyDB;
