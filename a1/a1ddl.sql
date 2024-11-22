REM ***Database Lab***
REM ***Assignment 1 - DDL commands***

drop table details;
drop table orders;
drop table parts;
drop table customer;
drop table employee;



REM ***Creating employee table***

create table employee(
	e_no varchar2(5) constraint emp_pk primary key,
	e_name char(15),
	e_dob DATE,
	e_pin number(6),
	constraint emp_format check(e_no like 'E%')
	);
	
REM ***Violating constraints of employee table***

REM Violating pk constraint for employee table
insert into employee values ('E001','Mira',TO_DATE('09/03/1985','DD/MM/YYYY'),600013);
insert into employee values ('E001','Manu',TO_DATE('09/03/1985','DD/MM/YYYY'),600013);

REM Violating fk constraint for employee table
insert into employee values ('E006','Devi',TO_DATE('21/05/1992','DD/MM/YYYY'),600020);

REM Violating check constraint for employee table
insert into employee values ('e006','Sowmya',TO_DATE('18/11/1991','DD/MM/YYYY'),600020);

REM Adding values into employee table
insert into employee values ('E013','Renu',TO_DATE('15/06/1999','DD/MM/YYYY'),600091);

select * from employee;



REM ***Creating customer table***
create table customer(
	c_no varchar2(5) constraint cust_pk primary key,
	c_name char(15),
	c_street char(15),
	c_pin number(6),
	c_dob DATE,
	c_phNo number(10) constraint ph_uniq UNIQUE,
	constraint cus_format check(c_no like 'C%')
	);
	
REM ***Violating constraints of customer table***

REM Violating pk constraint for customer table
insert into customer values ('C001','Rani','Street 1',600304,TO_DATE('31/10/1999','DD/MM/YYYY'),8847383878);
insert into customer values ('C001','Raj','Street 2',600304,TO_DATE('09/01/1997','DD/MM/YYYY'),8765676867);

REM Violating fk constraint for customer table
insert into customer values ('C003','Sita','Street 4',600304,TO_DATE('25/08/1999','DD/MM/YYYY'),8847383878);

REM Violating check constraint for customer table
insert into customer values ('c004','Rima','Street 1',600304,TO_DATE('31/10/1999','DD/MM/YYYY'),7764545656);

REM Adding values into customer table
insert into customer values ('C002','Raj','Street 2',600304,TO_DATE('09/01/1997','DD/MM/YYYY'),8765676867);
insert into customer values ('C009','Mani','Street 9',600102,TO_DATE('24/03/2002','DD/MM/YYYY'),7892354260);

select * from customer;



REM ***Creating parts table***
create table parts(
	p_no varchar2(5) constraint part_pk primary key,
	p_name char(15),
	p_price number(10) constraint pr_nn not null,
	p_qty number(10) constraint qty_chk check(p_qty>0),
	constraint part_format check(p_no like 'P%')
	);
	
	
REM ***Violating constraints of parts table***

REM Violating pk constraint for parts table
insert into parts values ('P001','Screw',350,56);
insert into parts values ('P001','Nail',200,40);

REM Violating not null constraint for parts table
insert into parts values ('P002','Bolts',null,70);

REM Violating check constraint of quantity for parts table
insert into parts values ('P003','Virtual item',0,-2);

REM Violating check constraint of part number for parts table
insert into parts values ('p003','Hammer',500,5);

select * from parts;



REM ***Creating orders table***
create table orders(
	o_no varchar2(5) constraint ord_pk primary key,
	e_no varchar2(5) constraint emp_fk2 references employee(e_no),
	c_no varchar2(5) constraint cust_fk2 references customer(c_no),	
	o_rdate DATE,
	o_sdate DATE, 
	constraint date_chk check(o_rdate<o_sdate)
	);
	
REM ***Violating constraints of orders table***

REM Violating pk constraint for orders table
insert into orders values ('1010','E001','C001',TO_DATE('03/08/2009','DD/MM/YYYY'),TO_DATE('09/10/2009','DD/MM/YYYY'));
insert into orders values ('1010','E002','C002',TO_DATE('04/08/2009','DD/MM/YYYY'),TO_DATE('10/10/2009','DD/MM/YYYY'));

REM Violating fk constraint for orders table
insert into orders values ('1015','E111','C001',TO_DATE('04/08/2009','DD/MM/YYYY'),TO_DATE('11/10/2009','DD/MM/YYYY'));
insert into orders values ('1015','E001','C111',TO_DATE('04/08/2009','DD/MM/YYYY'),TO_DATE('11/10/2009','DD/MM/YYYY'));

REM Violating check constraint rd<sd for orders table
insert into orders values ('1200','E002','C002',TO_DATE('04/08/2009','DD/MM/YYYY'),TO_DATE('11/10/2008','DD/MM/YYYY'));

select * from orders;



REM ***Creating details table***
create table details(
	o_no varchar2(5) constraint ord_fk1 references orders(o_no),
	p_no varchar2(15) constraint ord_fk2 references parts(p_no),
	qty number(10) constraint qty_ch2 check(qty>0),
	constraint ord_pk_pk primary key(o_no,p_no)
	);
	
REM ***Violating constraints of details table***

REM Violating pk constraint for details table
insert into details values ('1005','P001',7);
insert into details values ('1005','P001',8);

REM Violating fk constraint for details table
insert into details values ('1050','P001',5);
insert into details values ('1005','P009',5);

select * from details;



REM ***2nd part***

REM 7 It is identified that the following attributes are to be included in respective relations:
Parts (reorder level), Employees (hiredate)

desc parts;

alter table parts
	add reord_lev number(5);

desc employee;

alter table employee
	add hiredate DATE;
	
REM 8 The width of a customer name is not adequate for most of the customers. 
	
desc customer;

alter table customer
	modify c_name char(30);
	
desc customer;

REM 9 The date­of­birth of a customer can be addressed later / removed from the schema

alter table customer
	drop column c_dob;
	
desc customer;

REM 10 An order can not be placed without the receive date. 

alter table orders
	modify o_rdate DATE constraint ord_notnn NOT NULL;
	
desc orders;

REM 11 A customer may cancel an order or ordered part(s) may not be available in a stock.
Hence on removing the details of the order, ensure that all the corresponding details
are also deleted.

REM inserting some values into the tables

insert into orders values ('2001','E001','C001',TO_DATE('19/12/2021','DD/MM/YYYY'),TO_DATE('23/01/2022','DD/MM/YYYY'));

insert into orders values ('2002','E001','C001',TO_DATE('05/07/2020','DD/MM/YYYY'),TO_DATE('08/11/2020','DD/MM/YYYY'));

insert into details values ('2001','P001',3);

REM displaying the tables

select * from orders;

select * from details;

REM Violating integrity constraint - child record found

delete from orders where o_no='2001';

REM ON DELETE CASCADE

alter table details drop constraint ord_fk1;

alter table details add constraint ord_fk3 foreign key(o_no) references orders(o_no) on delete cascade;
	
delete from orders where o_no='2001';

REM Check to see that the cancelled order is deleted from all tables

select * from orders;

select * from details;