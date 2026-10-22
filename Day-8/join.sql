create database basicjoin;
use basicjoin;
create table employees(employee_id int primary key,ename varchar(10));
insert into employees values(101,'raghav'),
							(102,'raashi'),
                            (103,'rohan'),
                            (104,'mohan');
select * from employees;
create table projects(project_id int primary key,pname varchar(10)
,employee_id int, foreign key (employee_id) references employees(employee_id));
desc projects;
insert into projects (project_id,pname,employee_id)
values(1,'project A',101),
	(2,'project B',102),
    (3,'project C',103),
    (4,'project D',104),
    (5,'project E',103),
    (6,'project ',null);
select * from projects; 
insert into employees values(105,'nikhil');
insert into employees values(106,'mohit');
select * from employees
join projects
on employees.employee_id=projects.employee_id;

select e.ename,p.pname from projects p
inner join employees e
on e.employee_id=p.employee_id;


 select e.employee_id,e.ename,p.pname from employees e
 left join projects p 
 on e.employee_id=p.employee_id;
 
 select e.employee_id,e.ename,p.pname from projects p
 left join employees e 
 on e.employee_id=p.employee_id;
 insert into projects(project_id,pname)values(8,'project I');
select e.employee_id ,e.ename,p.pname from employees e 
right join projects p on e.employee_id=p.employee_id;

select * from employees
left join projects 
on employees.employee_id=projects.employee_id
union
select * from employees
right join projects 
on employees.employee_id = projects.employee_id;


/*display emplooyye name who has not assigned any project*/
select employees.ename,projects.pname
from employees
left join projects
on employees.employee_id =projects.employee_id
where projects.employee_id is not null;

select employees.ename,projects.pname
from employees
left join projects
on employees.employee_id =projects.employee_id
where projects.employee_id is null;