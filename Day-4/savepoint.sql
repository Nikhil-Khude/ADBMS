create database TCL;
use TCL;
create table orders( order_id int primary key,custmer_name varchar(100),status varchar (10));
desc orders;
set autocommit =0;
 -- start the transition :
 begin;
 insert into orders values(101,'geet','pending');
 insert into orders values(102,'bob','pending');
 select * from orders;
 rollback;
insert into orders values(101,'geet','pending');
 insert into orders values(102,'bob','pending'); 
 truncate table orders;
 select * from orders;
 insert into orders values(101,'geet','pending');
 insert into orders values(102,'bob','pending'); 
 select  * from  orders;
 commit;
update orders set custmer_name="raj" where order_id=102;
rollback;
 


 -- step1 insert one order
 insert into orders values(103,'om','pending');
 insert into orders values(104,'sahil','pending');
 select * from orders;
 savepoint sp1;
 
 -- step2 update one order
 update orders set status="shipped" where order_id =103;
 savepoint sp2;
 rollback to sp1;
 
 
-- step3 delete one order
delete from orders where order_id =103;
select * from orders;
savepoint sp3;
rollback to savepoint sp1;
select * from orders;
rollback;

 
 
 