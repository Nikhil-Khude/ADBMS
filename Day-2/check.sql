create database company_db;
use company_db;
create table employee(empid int not null,firstname varchar(10),
lastname varchar(10),empage int);
desc employee;
insert into employee value(1,'riya','rao',20);
select * from employee;
create table employee1 (empid int not null,firstname varchar(10),lastname varchar(10),unique(empid));
desc employee1;
insert into employee1 values(null,'ravi','kumar');
insert into employee1 values(1,'ravi','kumar');
insert into employee1 values(1,'ravi','kumar');
insert into employee1 values(2,'ravi','kumar');
desc employee1;
select * from employee1;

create table employee3 (empid int not null,firstname varchar(10),lastname varchar(10),empage int, check(empage>20));
desc employee3;
insert into employee3 values(1,'geeta','kumari',15);
insert into employee3 values(1,'geeta','kumari',22);
select * from employee3;
alter table employee3 add column salary int, add check(salary>=5000);
desc employee3;
select * from employee3;
update employee3 set salary=5000;
create table employee8 (empid int primary key,firstname varchar(50),lastname varchar(10),empage int);
alter table employee8 add column salary int;
-- insert into employee7 values(1,'ram','kumar',20);
alter table employee8 add constraint chk_empage_salary check(empage>20 AND salary >=5000);
-- alter table employee8 add constraint chk_empage_salary check(empage>20and salary >=5000);

desc employee7;
insert into employee8 values(2,'geeta','gore',21,8000);
select * from employee8;
alter table employee8 drop check chk_empage_salary;
insert into employee8 values(5,'anuska','naik',10,1000);
select * from employee8;

