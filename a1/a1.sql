SQL> set echo on
SQL> @Z:\a1ddl.sql
SQL> REM ***Database Lab***
SQL> REM ***Assignment 1 - DDL commands***
SQL> 
SQL> drop table details;

Table dropped.

SQL> drop table orders;

Table dropped.

SQL> drop table parts;

Table dropped.

SQL> drop table customer;

Table dropped.

SQL> drop table employee;

Table dropped.

SQL> 
SQL> 
SQL> 
SQL> REM ***Creating employee table***
SQL> 
SQL> create table employee(
  2  	     e_no varchar2(5) constraint emp_pk primary key,
  3  	     e_name char(15),
  4  	     e_dob DATE,
  5  	     e_pin number(6),
  6  	     constraint emp_format check(e_no like 'E%')
  7  	     );

Table created.

SQL> 
SQL> REM ***Violating constraints of employee table***
SQL> 
SQL> REM Violating pk constraint for employee table
SQL> insert into employee values ('E001','Mira',TO_DATE('09/03/1985','DD/MM/YYYY'),600013);

1 row created.

SQL> insert into employee values ('E001','Manu',TO_DATE('09/03/1985','DD/MM/YYYY'),600013);
insert into employee values ('E001','Manu',TO_DATE('09/03/1985','DD/MM/YYYY'),600013)
*
ERROR at line 1:
ORA-00001: unique constraint (1057.EMP_PK) violated 


SQL> 
SQL> REM Violating fk constraint for employee table
SQL> insert into employee values ('E006','Devi',TO_DATE('21/05/1992','DD/MM/YYYY'),600020);

1 row created.

SQL> 
SQL> REM Violating check constraint for employee table
SQL> insert into employee values ('e006','Sowmya',TO_DATE('18/11/1991','DD/MM/YYYY'),600020);
insert into employee values ('e006','Sowmya',TO_DATE('18/11/1991','DD/MM/YYYY'),600020)
*
ERROR at line 1:
ORA-02290: check constraint (1057.EMP_FORMAT) violated 


SQL> 
SQL> REM Adding values into employee table
SQL> insert into employee values ('E013','Renu',TO_DATE('15/06/1999','DD/MM/YYYY'),600091);

1 row created.

SQL> 
SQL> select * from employee;

E_NO  E_NAME          E_DOB          E_PIN                                      
----- --------------- --------- ----------                                      
E001  Mira            09-MAR-85     600013                                      
E006  Devi            21-MAY-92     600020                                      
E013  Renu            15-JUN-99     600091                                      

SQL> 
SQL> 
SQL> 
SQL> REM ***Creating customer table***
SQL> create table customer(
  2  	     c_no varchar2(5) constraint cust_pk primary key,
  3  	     c_name char(15),
  4  	     c_street char(15),
  5  	     c_pin number(6),
  6  	     c_dob DATE,
  7  	     c_phNo number(10) constraint ph_uniq UNIQUE,
  8  	     constraint cus_format check(c_no like 'C%')
  9  	     );

Table created.

SQL> 
SQL> REM ***Violating constraints of customer table***
SQL> 
SQL> REM Violating pk constraint for customer table
SQL> insert into customer values ('C001','Rani','Street 1',600304,TO_DATE('31/10/1999','DD/MM/YYYY'),8847383878);

1 row created.

SQL> insert into customer values ('C001','Raj','Street 2',600304,TO_DATE('09/01/1997','DD/MM/YYYY'),8765676867);
insert into customer values ('C001','Raj','Street 2',600304,TO_DATE('09/01/1997','DD/MM/YYYY'),8765676867)
*
ERROR at line 1:
ORA-00001: unique constraint (1057.CUST_PK) violated 


SQL> 
SQL> REM Violating fk constraint for customer table
SQL> insert into customer values ('C003','Sita','Street 4',600304,TO_DATE('25/08/1999','DD/MM/YYYY'),8847383878);
insert into customer values ('C003','Sita','Street 4',600304,TO_DATE('25/08/1999','DD/MM/YYYY'),8847383878)
*
ERROR at line 1:
ORA-00001: unique constraint (1057.PH_UNIQ) violated 


SQL> 
SQL> REM Violating check constraint for customer table
SQL> insert into customer values ('c004','Rima','Street 1',600304,TO_DATE('31/10/1999','DD/MM/YYYY'),7764545656);
insert into customer values ('c004','Rima','Street 1',600304,TO_DATE('31/10/1999','DD/MM/YYYY'),7764545656)
*
ERROR at line 1:
ORA-02290: check constraint (1057.CUS_FORMAT) violated 


SQL> 
SQL> REM Adding values into customer table
SQL> insert into customer values ('C002','Raj','Street 2',600304,TO_DATE('09/01/1997','DD/MM/YYYY'),8765676867);

1 row created.

SQL> insert into customer values ('C009','Mani','Street 9',600102,TO_DATE('24/03/2002','DD/MM/YYYY'),7892354260);

1 row created.

SQL> 
SQL> select * from customer;

C_NO  C_NAME          C_STREET             C_PIN C_DOB         C_PHNO           
----- --------------- --------------- ---------- --------- ----------           
C001  Rani            Street 1            600304 31-OCT-99 8847383878           
C002  Raj             Street 2            600304 09-JAN-97 8765676867           
C009  Mani            Street 9            600102 24-MAR-02 7892354260           

SQL> 
SQL> 
SQL> 
SQL> REM ***Creating parts table***
SQL> create table parts(
  2  	     p_no varchar2(5) constraint part_pk primary key,
  3  	     p_name char(15),
  4  	     p_price number(10) constraint pr_nn not null,
  5  	     p_qty number(10) constraint qty_chk check(p_qty>0),
  6  	     constraint part_format check(p_no like 'P%')
  7  	     );

Table created.

SQL> 
SQL> 
SQL> REM ***Violating constraints of parts table***
SQL> 
SQL> REM Violating pk constraint for parts table
SQL> insert into parts values ('P001','Screw',350,56);

1 row created.

SQL> insert into parts values ('P001','Nail',200,40);
insert into parts values ('P001','Nail',200,40)
*
ERROR at line 1:
ORA-00001: unique constraint (1057.PART_PK) violated 


SQL> 
SQL> REM Violating not null constraint for parts table
SQL> insert into parts values ('P002','Bolts',null,70);
insert into parts values ('P002','Bolts',null,70)
                                         *
ERROR at line 1:
ORA-01400: cannot insert NULL into ("1057"."PARTS"."P_PRICE") 


SQL> 
SQL> REM Violating check constraint of quantity for parts table
SQL> insert into parts values ('P003','Virtual item',0,-2);
insert into parts values ('P003','Virtual item',0,-2)
*
ERROR at line 1:
ORA-02290: check constraint (1057.QTY_CHK) violated 


SQL> 
SQL> REM Violating check constraint of part number for parts table
SQL> insert into parts values ('p003','Hammer',500,5);
insert into parts values ('p003','Hammer',500,5)
*
ERROR at line 1:
ORA-02290: check constraint (1057.PART_FORMAT) violated 


SQL> 
SQL> select * from parts;

P_NO  P_NAME             P_PRICE      P_QTY                                     
----- --------------- ---------- ----------                                     
P001  Screw                  350         56                                     

SQL> 
SQL> 
SQL> 
SQL> REM ***Creating orders table***
SQL> create table orders(
  2  	     o_no varchar2(5) constraint ord_pk primary key,
  3  	     e_no varchar2(5) constraint emp_fk2 references employee(e_no),
  4  	     c_no varchar2(5) constraint cust_fk2 references customer(c_no),
  5  	     o_rdate DATE,
  6  	     o_sdate DATE,
  7  	     constraint date_chk check(o_rdate<o_sdate)
  8  	     );

Table created.

SQL> 
SQL> REM ***Violating constraints of orders table***
SQL> 
SQL> REM Violating pk constraint for orders table
SQL> insert into orders values ('1010','E001','C001',TO_DATE('03/08/2009','DD/MM/YYYY'),TO_DATE('09/10/2009','DD/MM/YYYY'));

1 row created.

SQL> insert into orders values ('1010','E002','C002',TO_DATE('04/08/2009','DD/MM/YYYY'),TO_DATE('10/10/2009','DD/MM/YYYY'));
insert into orders values ('1010','E002','C002',TO_DATE('04/08/2009','DD/MM/YYYY'),TO_DATE('10/10/2009','DD/MM/YYYY'))
*
ERROR at line 1:
ORA-00001: unique constraint (1057.ORD_PK) violated 


SQL> 
SQL> REM Violating fk constraint for orders table
SQL> insert into orders values ('1015','E111','C001',TO_DATE('04/08/2009','DD/MM/YYYY'),TO_DATE('11/10/2009','DD/MM/YYYY'));
insert into orders values ('1015','E111','C001',TO_DATE('04/08/2009','DD/MM/YYYY'),TO_DATE('11/10/2009','DD/MM/YYYY'))
*
ERROR at line 1:
ORA-02291: integrity constraint (1057.EMP_FK2) violated - parent key not found 


SQL> insert into orders values ('1015','E001','C111',TO_DATE('04/08/2009','DD/MM/YYYY'),TO_DATE('11/10/2009','DD/MM/YYYY'));
insert into orders values ('1015','E001','C111',TO_DATE('04/08/2009','DD/MM/YYYY'),TO_DATE('11/10/2009','DD/MM/YYYY'))
*
ERROR at line 1:
ORA-02291: integrity constraint (1057.CUST_FK2) violated - parent key not found 


SQL> 
SQL> REM Violating check constraint rd<sd for orders table
SQL> insert into orders values ('1200','E002','C002',TO_DATE('04/08/2009','DD/MM/YYYY'),TO_DATE('11/10/2008','DD/MM/YYYY'));
insert into orders values ('1200','E002','C002',TO_DATE('04/08/2009','DD/MM/YYYY'),TO_DATE('11/10/2008','DD/MM/YYYY'))
*
ERROR at line 1:
ORA-02290: check constraint (1057.DATE_CHK) violated 


SQL> 
SQL> select * from orders;

O_NO  E_NO  C_NO  O_RDATE   O_SDATE                                             
----- ----- ----- --------- ---------                                           
1010  E001  C001  03-AUG-09 09-OCT-09                                           

SQL> 
SQL> 
SQL> 
SQL> REM ***Creating details table***
SQL> create table details(
  2  	     o_no varchar2(5) constraint ord_fk1 references orders(o_no),
  3  	     p_no varchar2(15) constraint ord_fk2 references parts(p_no),
  4  	     qty number(10) constraint qty_ch2 check(qty>0),
  5  	     constraint ord_pk_pk primary key(o_no,p_no)
  6  	     );

Table created.

SQL> 
SQL> REM ***Violating constraints of details table***
SQL> 
SQL> REM Violating pk constraint for details table
SQL> insert into details values ('1005','P001',7);
insert into details values ('1005','P001',7)
*
ERROR at line 1:
ORA-02291: integrity constraint (1057.ORD_FK1) violated - parent key not found 


SQL> insert into details values ('1005','P001',8);
insert into details values ('1005','P001',8)
*
ERROR at line 1:
ORA-02291: integrity constraint (1057.ORD_FK1) violated - parent key not found 


SQL> 
SQL> REM Violating fk constraint for details table
SQL> insert into details values ('1050','P001',5);
insert into details values ('1050','P001',5)
*
ERROR at line 1:
ORA-02291: integrity constraint (1057.ORD_FK1) violated - parent key not found 


SQL> insert into details values ('1005','P009',5);
insert into details values ('1005','P009',5)
*
ERROR at line 1:
ORA-02291: integrity constraint (1057.ORD_FK2) violated - parent key not found 


SQL> 
SQL> select * from details;

no rows selected

SQL> 
SQL> 
SQL> 
SQL> REM ***2nd part***
SQL> 
SQL> REM 7 It is identified that the following attributes are to be included in respective relations:
SQL> Parts (reorder level), Employees (hiredate)
SP2-0734: unknown command beginning "Parts (reo..." - rest of line ignored.
SQL> 
SQL> desc parts;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 P_NO                                      NOT NULL VARCHAR2(5)
 P_NAME                                             CHAR(15)
 P_PRICE                                   NOT NULL NUMBER(10)
 P_QTY                                              NUMBER(10)

SQL> 
SQL> alter table parts
  2  	     add reord_lev number(5);

Table altered.

SQL> 
SQL> desc employee;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 E_NO                                      NOT NULL VARCHAR2(5)
 E_NAME                                             CHAR(15)
 E_DOB                                              DATE
 E_PIN                                              NUMBER(6)

SQL> 
SQL> alter table employee
  2  	     add hiredate DATE;

Table altered.

SQL> 
SQL> REM 8 The width of a customer name is not adequate for most of the customers.
SQL> 
SQL> desc customer;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 C_NO                                      NOT NULL VARCHAR2(5)
 C_NAME                                             CHAR(15)
 C_STREET                                           CHAR(15)
 C_PIN                                              NUMBER(6)
 C_DOB                                              DATE
 C_PHNO                                             NUMBER(10)

SQL> 
SQL> alter table customer
  2  	     modify c_name char(30);

Table altered.

SQL> 
SQL> desc customer;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 C_NO                                      NOT NULL VARCHAR2(5)
 C_NAME                                             CHAR(30)
 C_STREET                                           CHAR(15)
 C_PIN                                              NUMBER(6)
 C_DOB                                              DATE
 C_PHNO                                             NUMBER(10)

SQL> 
SQL> REM 9 The date­of­birth of a customer can be addressed later / removed from the schema
SQL> 
SQL> alter table customer
  2  	     drop column c_dob;

Table altered.

SQL> 
SQL> desc customer;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 C_NO                                      NOT NULL VARCHAR2(5)
 C_NAME                                             CHAR(30)
 C_STREET                                           CHAR(15)
 C_PIN                                              NUMBER(6)
 C_PHNO                                             NUMBER(10)

SQL> 
SQL> REM 10 An order can not be placed without the receive date.
SQL> 
SQL> 
SQL> alter table orders
  2  	     modify o_rdate DATE constraint ord_notnn NOT NULL;

Table altered.

SQL> 
SQL> desc orders;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 O_NO                                      NOT NULL VARCHAR2(5)
 E_NO                                               VARCHAR2(5)
 C_NO                                               VARCHAR2(5)
 O_RDATE                                   NOT NULL DATE
 O_SDATE                                            DATE

SQL> 
SQL> REM 11 A customer may cancel an order or ordered part(s) may not be available in a stock.
SQL> Hence on removing the details of the order, ensure that all the corresponding details
SP2-0734: unknown command beginning "Hence on r..." - rest of line ignored.
SQL> are also deleted.
SP2-0734: unknown command beginning "are also d..." - rest of line ignored.
SQL> 
SQL> REM inserting some values into the tables
SQL> 
SQL> insert into orders values ('2001','E001','C001',TO_DATE('19/12/2021','DD/MM/YYYY'),TO_DATE('23/01/2022','DD/MM/YYYY'));

1 row created.

SQL> 
SQL> insert into orders values ('2002','E001','C001',TO_DATE('05/07/2020','DD/MM/YYYY'),TO_DATE('08/11/2020','DD/MM/YYYY'));

1 row created.

SQL> 
SQL> insert into details values ('2001','P001',3);

1 row created.

SQL> 
SQL> REM displaying the tables
SQL> 
SQL> select * from orders;

O_NO  E_NO  C_NO  O_RDATE   O_SDATE                                             
----- ----- ----- --------- ---------                                           
1010  E001  C001  03-AUG-09 09-OCT-09                                           
2001  E001  C001  19-DEC-21 23-JAN-22                                           
2002  E001  C001  05-JUL-20 08-NOV-20                                           

SQL> 
SQL> select * from details;

O_NO  P_NO                   QTY                                                
----- --------------- ----------                                                
2001  P001                     3                                                

SQL> 
SQL> REM Violating integrity constraint - child record found
SQL> 
SQL> delete from orders where o_no='2001';
delete from orders where o_no='2001'
*
ERROR at line 1:
ORA-02292: integrity constraint (1057.ORD_FK1) violated - child record found 


SQL> 
SQL> REM ON DELETE CASCADE
SQL> 
SQL> alter table details drop constraint ord_fk1;

Table altered.

SQL> 
SQL> alter table details add constraint ord_fk3 foreign key(o_no) references orders(o_no) on delete cascade;

Table altered.

SQL> 
SQL> delete from orders where o_no='2001';

1 row deleted.

SQL> 
SQL> REM Check to see that the cancelled order is deleted from all tables
SQL> 
SQL> select * from orders;

O_NO  E_NO  C_NO  O_RDATE   O_SDATE                                             
----- ----- ----- --------- ---------                                           
1010  E001  C001  03-AUG-09 09-OCT-09                                           
2002  E001  C001  05-JUL-20 08-NOV-20                                           

SQL> 
SQL> select * from details;

no rows selected

SQL> spool off
