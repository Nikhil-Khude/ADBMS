create database companyNK;
show databases ;
use companyNK;
create table employees(
empid int,
empname varchar(10),
salary int,
joindate date
);
desc employees;
alter table employees  modify column empname varchar(50);
create table department(
deptid int,
deptname varchar(50)
);
desc department;
alter table employees add email varchar(100);
desc employees;
alter table employees add deptid int(10);
alter table department add deptlocation varchar(10);
desc department;
alter table employees modify column empname varchar(100);
alter table department add phone int not null;
desc employees ;
alter table department modify deptid int(10)primary key;
alter table employees add primary key (deptid);
alter table employees add foreign key (deptid)references department(deptid);
alter table employees add constraint fk_employees_department foreign key (deptid) references department (deptid);
desc department;
alter table department drop primary key; 
desc department;
alter table employees rename column empname to employeename;
desc employees;
alter table department drop column phone;
desc department;
alter table employees rename employeedetails;
drop table department;