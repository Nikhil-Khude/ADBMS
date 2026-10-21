/* filtering data from tables */
/*where select disticnt and or not in not in between like limit is null */
drop database organization;
create database organization;
use organization;
create table employee(empid int not null primary key, first_name varchar(10),last_name varchar(15),
gender char, role varchar(15), dept varchar(15),manager_id varchar(10));

desc employee;
insert into employee values(1,"john","allen",'m','team leader','retail','m11');
insert into employee values(2,"rohit","sharma",'m','team leader','finance','m12');
insert into employee values(3,"ravi","kumar",'m','manager','retail','m13');
insert into employee values(4,"aruna","patel",'f','manager','finance','m14');
insert into employee values(5,"kirti","raj",'f','president','hr','m15');


select * from employee;

select distinct dept from employee order by dept;

select distinct role from employee order by role;

/* and opretor */
select * from employee where role ='president' and dept='hr';
select * from employee where role='president' and dept ='retail';

/* or opretor*/
select * from employee where role ='manager' or role='team leader';

/* in opretor*/

select * from employee where role in('president','manager');
select * from employee where role in('employee','ceo');
select * from employee where role not in('president','manager');
alter table employee add column experience int;
update employee set  experience=8 where empid=1;
update employee set  experience=5 where empid=2;
update employee set  experience=10 where empid=3;
update employee set  experience=8 where empid=4;
update employee set  experience=15 where empid=5;
select * from employee where experience between 2 and 10;
select * from employee where experience=5 or experience=10;

select * from employee where last_name like 'p%';

/*limit opretor*/
select * from employee;
select * from employee order by experience limit 5;

/* is null*/

select * from employee where manager_id is null;
select * from employee where experience is null;

select * from employee where experience is not null;
alter table employee drop column experirnce;
update employee set experience=null where empid=4;

/*agreegate funtion count,sum,avg,min,max*/
select count(*) from employee;
select count(empid) from employee where dept='finance';
select count(empid) from employee where dept='hr';
select min(experience)from employee;
select max(experience) from employee;
select sum(experience)from employee;
select avg(experience)as emp_exr from employee;

/*group by clause:- group by clause divides aset of rows into subgroups 
depending on column or experience values the group by clause is used with aggregate funtion such as
sum avg max min and count*/
select dept,count(*)as employee_count from employee group by dept;
select role,count(*)as employee_count from employee group by role;
select gender ,count(*)as employee_gender from employee group by gender;

/*having clause :- exach group produced by the group by clause is
evaluted by the having clause and if the
result is true the row is included in the result set the having clause was added to sql beacause the ehere keyboard 
cannot be used with aggigate funtion*/

select dept,sum(experience)as total_experience from employee group by dept
having total_experience>=10 and employee_total<=20;

select dept,sum(experience)as total_experience from employee group by dept
having total_experience>=10 and total_experience<=20;
select * from employee;
select role,sum(experience)as total_role from employee group by role
having total_role>=10 and total_role<=20;
/*fetch department wise employee count using having clause and sort the data*/
select dept,count(empid)
from employee
group by dept
having count(empid)>1
order by count(empid)desc;

select dept,sum(experience)as total_ex from employee group by dept
having total_ex>=10 or total_ex<=30;
