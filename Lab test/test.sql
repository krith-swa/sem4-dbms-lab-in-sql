REM *** LAB TEST		23/4/22 ***

REM Dropping tables

drop table drive_truck;
drop table truck;
drop table city;
drop table driver;

REM Creating tables

create table driver(
	dcode varchar2(5) 
		constraint driver_pk primary key 
		constraint d_format check(dcode like 'D%'),
	dname varchar2(15),
	dob date,
	gender varchar2(6)
	);

create table city(
	ccode varchar2(5) constraint city_pk primary key,
	cname varchar(15),
	constraint code_uniq unique(ccode,cname)
	);

create table truck(
	truckcode varchar2(5) constraint truck_pk primary key,
	ttype varchar2(1) constraint type_chk check(ttype in ('L','H'))
	);

create table drive_truck(
	truckcode varchar2(5) constraint truck_fk1 references truck(truckcode),
	dcode varchar2(5) constraint driver_fk1 references driver(dcode),
	dot date,
	ccode varchar2(5) constraint city_fk1 references city(ccode),
	constraint drive_pk primary key(truckcode,dcode,dot)
	);


REM Solutions
REM b) Create the above-mentioned tables and populate the tables accordingly to retrieve the values from the table.

REM Inserting values into driver table:

insert into driver values ('D001','Mani','20-MAR-1977','male');
insert into driver values ('D001','Roger','20-MAR-1972','male');
insert into driver values ('0324','Roger','20-MAR-1972','male');
insert into driver values ('D005','Naren','17-MAY-1975','male');

select * from driver;

REM Inserting values into city table:

insert into city values ('C001','Chennai');
insert into city values ('C001','Cochin');
insert into city values ('C005','Mumbai');
insert into city values ('C006','Kolkata');
insert into city values ('C007','Delhi');
insert into city values ('C008','Madurai');

select * from city;

REM Inserting values into truck table:

insert into truck values ('T001','L');
insert into truck values ('T001','H');
insert into truck values ('T002','M');
insert into truck values ('T005','H');

select * from truck;

REM Inserting values into drive_truck table:

insert into drive_truck values ('T001','D001','19-JUN-2020','C001');
insert into drive_truck values ('T002','D001','19-JUN-2020','C001');
insert into drive_truck values ('T001','D002','19-JUN-2020','C001');
insert into drive_truck values ('T005','D001','19-JUN-2020','C002');
insert into drive_truck values ('T001','D001','19-JUN-2020','C002');
insert into drive_truck values ('T005','D005','19-JUN-2020','C005');
insert into drive_truck values ('T001','D001','20-JUN-2020','C005');
insert into drive_truck values ('T001','D001','22-JUN-2020','C006');
insert into drive_truck values ('T001','D001','30-JUN-2020','C007');

select * from drive_truck;


REM c) Include the constraint as mentioned, the gender of driver is always 'male'.

alter table driver add constraint gend_chk check(gender like 'male');

insert into driver values ('D010','Tara','14-APR-1980','female');


REM d) Display the details of the youngest driver.

select * from driver where dob = (
	select min(dob) from driver
	);


REM e) Develop a SQL query to list the details of each driver and the number of trips travelled.

select d.dcode, dname, dob, gender, count(ccode) 
from driver d join drive_truck t on (d.dcode = t.dcode)
group by d.dcode, dname, dob, gender;


REM f) Develop a SQL query to list the details of drivers who have travelled more than three times in the same city.

select d.dcode, dname, dob, gender
from driver d join drive_truck t on (d.dcode = t.dcode)
group by d.dcode, dname, dob, gender having count(ccode)>3;


REM ***End of file***