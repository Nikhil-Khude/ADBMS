create database user;
use user; 
create table customer(cusr_id int, custname varchar(10),city varchar(15), product varchar(15),price int);
desc customer;
alter table customer add primary key (cusr_id);
insert into customer values( 1,'om','pune','mobile',1500); 
insert into customer values( 2,'rucha','nagpur','laptop',4000);
insert into customer values( 3,'raj','mumbai','mouse',300);
select * from customer;
select custname,product from customer; 
create table clonetable as select * from customer;
select * from customer;  
select * from clonetable;
drop table clonetable;

select custname ,city from customer;
select custname ,city from customer where cusr_id=1;
select custname,product,price from customer where price>1500;
select custname,product,price from customer where price<1500;
select * from customer where price>=1500;
select * from  customer where cusr_id=1; 
select * from  customer where city = "nagpur";

-- ssorting data using order by sinlge column*/
select * from customer order by price;
select * from customer order by price desc;

select * from customer order by cusr_id;
select * from customer order by cusr_id desc;
select * from customer order by city ;
/*sorting data order by multiple columns*/
select * from customer order by city , price;
select * from customer order by price, city;
-- give priport to first column ans sorted by first column

select * from customer order by city desc, price asc; 

/*single-row funtions*/
/* case conversion funtions*/
select upper(custname),lower(product) from customer
where cusr_id<3; /*uppercase and lower case funtion*/
alter table customer add column last_name varchar(20);
update customer set last_name="sharma" where cusr_id=1;
update customer set last_name="verma" where cusr_id=2;
update customer set last_name="dube" where cusr_id=3;
select * from customer;
select concat(custname,last_name)from customer;
select concat (custname,' ',last_name)as fullname from customer;
select substr(custname,1,2)from customer;
select instr(custname,'a')as position from customer;
select substr(custname,1,2)from customer;

