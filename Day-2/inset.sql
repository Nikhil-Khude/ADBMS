create database college;
use college;
show databases;
create table employees(empid int,firstname varchar(10),lastname varchar(10),empage int,empzone varchar(10));
desc employees;
insert into employees values(1, 'rita', 'zade','20','west ');
select * from employees;

insert into employees(empid,firstname,lastname,empage,empzone)
values(2,'ram','joshi',22,'north'),
	  (2,null,'joshi',24,'north'),
      (3,'ram',null,25,null);
insert into employees(empid,firstname,lastname)
values(5,'geeta','rao'),
	(6,null,'garg');
update employees set firstname='sita' where empage=24;
      



