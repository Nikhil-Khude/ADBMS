create database sqlp;
use sqlp;
create table employee(emp_id INT PRIMARY KEY, 
emp_name
VARCHAR(30) NOT NULL,
department VARCHAR(20),
salary INT, city VARCHAR(20));
insert into employee values (1, 'Amit', 'IT', 40000, 'Pune'),
							(2,'Rahul','hr',30000,'Mumbai'),
                            (3,'Sneha','IT','50000','pune'),
                            (4,'priya','Sales',35000,'Nashik'),
                            (5,'Raj','hr','45000','Mumbai');
select* from employee;
select emp_id,emp_name,salary from employee;
select * from employee where salary>35000;
select * from employee where department="it";
select * from employee where salary between 30000 and 45000;
select * from employee where city in("pune","mumbai");
select * from employee order by salary desc;
select max(salary)from employee;
select avg(salary) from employee;
select department,count(*) from employee group by department;
select * from employee;
select department,count(*) as counts from employee group by department having counts>1;
select department,sum(salary) as totals from employee group by department;
update employee set salary=45000 where emp_id=1;
delete from employee where emp_id=4;
alter table employee add column email varchar(50);
update employee set salary=35000 where department="hr";
select * from employee;
create table department (dept_id INT PRIMARY KEY ,dept_name VARCHAR(30));
create table staff (staff_id INT PRIMARY KEY, staff_name VARCHAR(30) ,
dept_id INT);
select * from staff;
select * from department;
alter table staff add constraint fore foreign key(dept_id) references department(dept_id);
insert into staff value(101,"rohit",1),
						(102,'virat',2),
                        (103,'hardik',3),
                        (104,'bhuvi',4);
insert into department value(1,'hr'),
							(2,'it'),
                            (3,'hr'),
                            (4,'sales');
select dept_name,staff_name
from staff as s
inner join department as d
on s.dept_id=d.dept_id;
select * from staff;
alter table staff add column salary int;
update staff set salary =20000 where staff_id=101;
update staff set salary =40000 where staff_id=102;
update staff set salary =50000 where staff_id=103;
update staff set salary =70000 where staff_id=104;
select * from staff;
select * from department;
select * from staff where salary>40000;
select * from employee;
begin;
start transaction;
 update staff set salary =10000 where staff_id=104;
rollback;
update staff set salary =100000 where staff_id=104;
savepoint sp1;
update staff set salary =7000 where staff_id=104;
rollback to savepoint sp1;
commit;

