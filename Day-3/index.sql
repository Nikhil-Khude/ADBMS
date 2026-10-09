show databases;
use company_db;
create table employee11(empid int primary key,firstname varchar(10),lastname varchar(10),empage int,salary int);
-- to allow naming and defaing a check constraint on multiple columns
alter table employee11 add check(salary>=5000);
alter table employee11 add constraint chk_empage_salary
check(empage>20 and salary>=5000);
desc employee11;
insert into employee11 values(1,'ram','kumar',22,6000);
select * from employee11;
alter table employee11 drop check chk_empage_salary;
desc employee11;
show create table employee11;
create index demoindex on employee11(firstname);
show indexes from employee11;

create index demoindex2 on employee11(firstname ,lastname);
drop index demoindex on employee11;
drop index demoindex2 on employee11;

