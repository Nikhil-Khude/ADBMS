create database companyDB;
show databases;

use companyDB; 
create table Employees(
empid int,
empname varchar(10),
salary int,
joindate date
);
create table department(deptid int, empname varchar(10), salary int, joindate date);
alter table employees add email varchar(100);
desc employees;
alter table department add deptlocation varchar(100);
desc department;
alter table employees add phone varchar(100) not null;
desc employees ;
alter table employees modify empname varchar(100);
alter table department add primary key (deptid);
alter table employees add primary key(empid);
desc employees;
alter table employees add foreign key(deptid) references department(deptid);
alter table  employees rename column empname to employeename;
alter table employees drop column phonne;
alter table employees rename to employeesdetails;	
drop table department;

