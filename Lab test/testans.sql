SQL> @z:/test.sql;
SQL> REM *** LAB TEST		     23/4/22 ***
SQL> 
SQL> REM Dropping tables
SQL> 
SQL> drop table drive_truck;

Table dropped.

SQL> drop table truck;

Table dropped.

SQL> drop table city;

Table dropped.

SQL> drop table driver;

Table dropped.

SQL> 
SQL> REM Creating tables
SQL> 
SQL> create table driver(
  2  	     dcode varchar2(5)
  3  		     constraint driver_pk primary key
  4  		     constraint d_format check(dcode like 'D%'),
  5  	     dname varchar2(15),
  6  	     dob date,
  7  	     gender varchar2(6)
  8  	     );

Table created.

SQL> 
SQL> create table city(
  2  	     ccode varchar2(5) constraint city_pk primary key,
  3  	     cname varchar(15),
  4  	     constraint code_uniq unique(ccode,cname)
  5  	     );

Table created.

SQL> 
SQL> create table truck(
  2  	     truckcode varchar2(5) constraint truck_pk primary key,
  3  	     ttype varchar2(1) constraint type_chk check(ttype in ('L','H'))
  4  	     );

Table created.

SQL> 
SQL> create table drive_truck(
  2  	     truckcode varchar2(5) constraint truck_fk1 references truck(truckcode),
  3  	     dcode varchar2(5) constraint driver_fk1 references driver(dcode),
  4  	     dot date,
  5  	     ccode varchar2(5) constraint city_fk1 references city(ccode),
  6  	     constraint drive_pk primary key(truckcode,dcode,dot)
  7  	     );

Table created.

SQL> 
SQL> 
SQL> REM Solutions
SQL> REM b) Create the above-mentioned tables and populate the tables accordingly to retrieve the values from the table.
SQL> 
SQL> REM Inserting values into driver table:
SQL> 
SQL> insert into driver values ('D001','Mani','20-MAR-1977','male');

1 row created.

SQL> insert into driver values ('D001','Roger','20-MAR-1972','male');
insert into driver values ('D001','Roger','20-MAR-1972','male')
*
ERROR at line 1:
ORA-00001: unique constraint (1057.DRIVER_PK) violated 


SQL> insert into driver values ('0324','Roger','20-MAR-1972','male');
insert into driver values ('0324','Roger','20-MAR-1972','male')
*
ERROR at line 1:
ORA-02290: check constraint (1057.D_FORMAT) violated 


SQL> insert into driver values ('D005','Naren','17-MAY-1975','male');

1 row created.

SQL> 
SQL> select * from driver;

DCODE DNAME           DOB       GENDER                                          
----- --------------- --------- ------                                          
D001  Mani            20-MAR-77 male                                            
D005  Naren           17-MAY-75 male                                            

SQL> 
SQL> REM Inserting values into city table:
SQL> 
SQL> insert into city values ('C001','Chennai');

1 row created.

SQL> insert into city values ('C001','Cochin');
insert into city values ('C001','Cochin')
*
ERROR at line 1:
ORA-00001: unique constraint (1057.CITY_PK) violated 


SQL> insert into city values ('C005','Mumbai');

1 row created.

SQL> insert into city values ('C006','Kolkata');

1 row created.

SQL> insert into city values ('C007','Delhi');

1 row created.

SQL> insert into city values ('C008','Madurai');

1 row created.

SQL> 
SQL> select * from city;

CCODE CNAME                                                                     
----- ---------------                                                           
C001  Chennai                                                                   
C005  Mumbai                                                                    
C006  Kolkata                                                                   
C007  Delhi                                                                     
C008  Madurai                                                                   

SQL> 
SQL> REM Inserting values into truck table:
SQL> 
SQL> insert into truck values ('T001','L');

1 row created.

SQL> insert into truck values ('T001','H');
insert into truck values ('T001','H')
*
ERROR at line 1:
ORA-00001: unique constraint (1057.TRUCK_PK) violated 


SQL> insert into truck values ('T002','M');
insert into truck values ('T002','M')
*
ERROR at line 1:
ORA-02290: check constraint (1057.TYPE_CHK) violated 


SQL> insert into truck values ('T005','H');

1 row created.

SQL> 
SQL> select * from truck;

TRUCK T                                                                         
----- -                                                                         
T001  L                                                                         
T005  H                                                                         

SQL> 
SQL> REM Inserting values into drive_truck table:
SQL> 
SQL> insert into drive_truck values ('T001','D001','19-JUN-2020','C001');

1 row created.

SQL> insert into drive_truck values ('T002','D001','19-JUN-2020','C001');
insert into drive_truck values ('T002','D001','19-JUN-2020','C001')
*
ERROR at line 1:
ORA-02291: integrity constraint (1057.TRUCK_FK1) violated - parent key not 
found 


SQL> insert into drive_truck values ('T001','D002','19-JUN-2020','C001');
insert into drive_truck values ('T001','D002','19-JUN-2020','C001')
*
ERROR at line 1:
ORA-02291: integrity constraint (1057.DRIVER_FK1) violated - parent key not 
found 


SQL> insert into drive_truck values ('T005','D001','19-JUN-2020','C002');
insert into drive_truck values ('T005','D001','19-JUN-2020','C002')
*
ERROR at line 1:
ORA-02291: integrity constraint (1057.CITY_FK1) violated - parent key not found 


SQL> insert into drive_truck values ('T001','D001','19-JUN-2020','C002');
insert into drive_truck values ('T001','D001','19-JUN-2020','C002')
*
ERROR at line 1:
ORA-00001: unique constraint (1057.DRIVE_PK) violated 


SQL> insert into drive_truck values ('T005','D005','19-JUN-2020','C005');

1 row created.

SQL> insert into drive_truck values ('T001','D001','20-JUN-2020','C005');

1 row created.

SQL> insert into drive_truck values ('T001','D001','22-JUN-2020','C006');

1 row created.

SQL> insert into drive_truck values ('T001','D001','30-JUN-2020','C007');

1 row created.

SQL> 
SQL> select * from drive_truck;

TRUCK DCODE DOT       CCODE                                                     
----- ----- --------- -----                                                     
T001  D001  19-JUN-20 C001                                                      
T005  D005  19-JUN-20 C005                                                      
T001  D001  20-JUN-20 C005                                                      
T001  D001  22-JUN-20 C006                                                      
T001  D001  30-JUN-20 C007                                                      

SQL> 
SQL> 
SQL> REM c) Include the constraint as mentioned, the gender of driver is always 'male'.
SQL> 
SQL> alter table driver add constraint gend_chk check(gender like 'male');

Table altered.

SQL> 
SQL> insert into driver values ('D010','Tara','14-APR-1980','female');
insert into driver values ('D010','Tara','14-APR-1980','female')
*
ERROR at line 1:
ORA-02290: check constraint (1057.GEND_CHK) violated 


SQL> 
SQL> 
SQL> REM d) Display the details of the youngest driver.
SQL> 
SQL> select * from driver where dob = (
  2  	     select min(dob) from driver
  3  	     );

DCODE DNAME           DOB       GENDER                                          
----- --------------- --------- ------                                          
D005  Naren           17-MAY-75 male                                            

SQL> 
SQL> 
SQL> REM e) Develop a SQL query to list the details of each driver and the number of trips travelled.
SQL> 
SQL> select d.dcode, dname, dob, gender, count(ccode)
  2  from driver d join drive_truck t on (d.dcode = t.dcode)
  3  group by d.dcode, dname, dob, gender;

DCODE DNAME           DOB       GENDER COUNT(CCODE)                             
----- --------------- --------- ------ ------------                             
D001  Mani            20-MAR-77 male              4                             
D005  Naren           17-MAY-75 male              1                             

SQL> 
SQL> 
SQL> REM f) Develop a SQL query to list the details of drivers who have travelled more than three times in the same city.
SQL> 
SQL> select d.dcode, dname, dob, gender
  2  from driver d join drive_truck t on (d.dcode = t.dcode)
  3  group by d.dcode, dname, dob, gender having count(ccode)>3;

DCODE DNAME           DOB       GENDER                                          
----- --------------- --------- ------                                          
D001  Mani            20-MAR-77 male                                            

SQL> 
SQL> 
SQL> REM ***End of file***
SQL> spool off;
