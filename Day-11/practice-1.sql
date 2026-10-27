create database sqlp;
use sqlp;
create table employee(emp_id INT PRIMARY KEY ,
emp_name VARCHAR(30) NOT NULL,
department VARCHAR(20),
salary INT,
city VARCHAR(20)
);
select * from employee;
insert into employee values(1,'Amit',"IT",40000,"Pune"),
							(2,"rahul","hr","30000","mumbai"),
                            (3,"sneha","it",50000,"pune"),
							(4,"priya","sales",35000,"nashik"),
                            (5,"raj","hr",45000,"mumbai");
select * from employee;
select emp_name,salary from employee;
select emp_name from employee as salry where salary>35000;
select * from employee where department="it";
select * from employee where salary between 30000 and 45000;
select * from employee where city in("pune","mumbai");
select emp_id from employee order by salary desc;
select max(salary) as salary from employee;
select avg(salary) as avgs from employee;
select department,count(*) from employee as count_emp group by department;
select department,count(*) from employee  group by department having count(*)>1;
SELECT department, COUNT(*)
FROM employee
GROUP BY department
HAVING COUNT(*) > 1;
select department,count(*) as totale from employee group by department;
select department,sum(salary) as salarys from employee group by department;
select * from employee;
update employee set salary="45000" where emp_id=1;
delete from employee where emp_id=4;
alter table employee;
alter table employee add column email varchar(50);
update employee set salary=35000 where department="hr";
create table department(dept_id INT Primary Key,dept_name VARCHAR(30));
create table staff(staff_id INT Primary Key,staff_name VARCHAR(30),dept_id INT);
select * from staff;
alter table staff add constraint checke Foreign Key (dept_id)references department(dept_id);
select * from staff;
select * from department;
INSERT INTO department VALUES
(1, 'IT'),
(2, 'HR'),
(3, 'Sales');
INSERT INTO staff VALUES
(101, 'Amit', 1),
(102, 'Rahul', 2),
(103, 'Sneha', 1),
(104, 'Priya', 3);
select * from staff as s
inner join department as d
on s.staff_name= d.dept_name;
select * from staff;
select * from department;
select s.staff_name,d.dept_name
from staff as s
inner join department as d
on s.dept_id=d.dept_id;
alter table staff add column salary int;
update staff set salary=20000 where staff_id=101;
update staff set salary=30000 where staff_id=102;
update staff set salary=40000 where staff_id=103;
update staff set salary=50000 where staff_id=104;
select * from staff;
select * from staff where salary>40000;
begin;
start transaction;
rollback;
update staff set salary=80000 where staff_id=103;
rollback;
savepoint sp1;
update staff set salary=10000 where staff_id=103;
rollback to sp1;
commit;
rollback;
drop database sqlp;