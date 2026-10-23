create database ddl;
use ddl;
create table Employee ( emp_id int primary key ,emp_name varchar(50), City varchar(50), bdate date);
create table Investor ( inv_no int primary key, 
inv_name varchar(50),
 inv_date date ,
 inv_amt int,
 emp_id int);
insert into Employee values(1,'Nikhil','Paithan','2005-11-25');
insert into Employee values(2,'Mohit','pune','2007-02-11');
insert into Employee values(3,'Krish','nagpur','2000-05-03');
insert into Employee values(4,'Pratik','mumbai','1900-04-14');
insert into Employee values(5,'Gauri','ranchi','1984-02-14');
select * from Employee;
alter table Employee add column Age int;
alter table Employee add column Salary int;
alter table Employee add constraint check_age_salary check(Age<=50 and Salary>=10000);
insert into Investor values (101,'rohit','2000-01-01',1000,1001),
							(102,'kohli','2001-02-02',2000,2002),
                            (103,'hardik','2003-03-03',3000,3003),
                            (104,'raina','2004-04-04',4000,4004),
                            (105,'shetty','2005-05-05',5000,5005);
alter table Investor add column Age int;
alter table Investor modify inv_name text;
alter table Employee rename column emp_id to E_id;
select * from Employee;
select * from Investor;
update Employee  set city="Nagpur" where E_id=4;
delete from Investor where inv_no=101;
alter table Investor drop column age;
show create table Employee;
show create table Investor;
alter table Employee drop check check_age_salary ;
alter table Investor add constraint check_inv
foreign key (emp_id) references employee(E_id);
UPDATE Investor SET emp_id = 1 WHERE inv_no = 101;
UPDATE Investor SET emp_id = 2 WHERE inv_no = 102;
UPDATE Investor SET emp_id = 3 WHERE inv_no = 103;
UPDATE Investor SET emp_id = 4 WHERE inv_no = 104;
UPDATE Investor SET emp_id = 5 WHERE inv_no = 105;
select inv_no,inv_name,inv_date,inv_amt from Investor;
rename table Investor to investor1;
truncate investor1;
truncate Employee;
alter table Employee drop check_inv;
SHOW CREATE TABLE investor1;
ALTER TABLE investor1
DROP FOREIGN KEY check_inv;
truncate investor1;
truncate Employee;
drop table Employee;
drop table investor1;

