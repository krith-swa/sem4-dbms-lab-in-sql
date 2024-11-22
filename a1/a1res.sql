SQL> @Z:\a1ddl.sql

Table dropped.


Table dropped.


Table dropped.


Table dropped.


Table dropped.


Table created.


1 row created.

insert into employee values ('E001','Manu',TO_DATE('09/03/1985','DD/MM/YYYY'),600013)
*
ERROR at line 1:
ORA-00001: unique constraint (1057.EMP_PK) violated 



1 row created.

insert into employee values ('e006','Sowmya',TO_DATE('18/11/1991','DD/MM/YYYY'),600020)
*
ERROR at line 1:
ORA-02290: check constraint (1057.EMP_FORMAT) violated 



1 row created.


E_NO  E_NAME          E_DOB          E_PIN                                      
----- --------------- --------- ----------                                      
E001  Mira            09-MAR-85     600013                                      
E006  Devi            21-MAY-92     600020                                      
E013  Renu            15-JUN-99     600091                                      


Table created.


1 row created.

insert into customer values ('C001','Raj','Street 2',600304,TO_DATE('09/01/1997','DD/MM/YYYY'),8765676867)
*
ERROR at line 1:
ORA-00001: unique constraint (1057.CUST_PK) violated 


insert into customer values ('C003','Sita','Street 4',600304,TO_DATE('25/08/1999','DD/MM/YYYY'),8847383878)
*
ERROR at line 1:
ORA-00001: unique constraint (1057.PH_UNIQ) violated 


insert into customer values ('c004','Rima','Street 1',600304,TO_DATE('31/10/1999','DD/MM/YYYY'),7764545656)
*
ERROR at line 1:
ORA-02290: check constraint (1057.CUS_FORMAT) violated 



1 row created.


1 row created.


C_NO  C_NAME          C_STREET             C_PIN C_DOB         C_PHNO           
----- --------------- --------------- ---------- --------- ----------           
C001  Rani            Street 1            600304 31-OCT-99 8847383878           
C002  Raj             Street 2            600304 09-JAN-97 8765676867           
C009  Mani            Street 9            600102 24-MAR-02 7892354260           


Table created.


1 row created.

insert into parts values ('P001','Nail',200,40)
*
ERROR at line 1:
ORA-00001: unique constraint (1057.PART_PK) violated 


insert into parts values ('P002','Bolts',null,70)
                                         *
ERROR at line 1:
ORA-01400: cannot insert NULL into ("1057"."PARTS"."P_PRICE") 


insert into parts values ('P003','Virtual item',0,-2)
*
ERROR at line 1:
ORA-02290: check constraint (1057.QTY_CHK) violated 


insert into parts values ('p003','Hammer',500,5)
*
ERROR at line 1:
ORA-02290: check constraint (1057.PART_FORMAT) violated 



P_NO  P_NAME             P_PRICE      P_QTY                                     
----- --------------- ---------- ----------                                     
P001  Screw                  350         56                                     


Table created.


1 row created.

insert into orders values ('1010','E002','C002',TO_DATE('04/08/2009','DD/MM/YYYY'),TO_DATE('10/10/2009','DD/MM/YYYY'))
*
ERROR at line 1:
ORA-00001: unique constraint (1057.ORD_PK) violated 


insert into orders values ('1015','E111','C001',TO_DATE('04/08/2009','DD/MM/YYYY'),TO_DATE('11/10/2009','DD/MM/YYYY'))
*
ERROR at line 1:
ORA-02291: integrity constraint (1057.EMP_FK2) violated - parent key not found 


insert into orders values ('1015','E001','C111',TO_DATE('04/08/2009','DD/MM/YYYY'),TO_DATE('11/10/2009','DD/MM/YYYY'))
*
ERROR at line 1:
ORA-02291: integrity constraint (1057.CUST_FK2) violated - parent key not found 


insert into orders values ('1200','E002','C002',TO_DATE('04/08/2009','DD/MM/YYYY'),TO_DATE('11/10/2008','DD/MM/YYYY'))
*
ERROR at line 1:
ORA-02291: integrity constraint (1057.EMP_FK2) violated - parent key not found 



O_NO  E_NO  C_NO  O_RDATE   O_SDATE                                             
----- ----- ----- --------- ---------                                           
1010  E001  C001  03-AUG-09 09-OCT-09                                           


Table created.

insert into details values ('1005','P001',7)
*
ERROR at line 1:
ORA-02291: integrity constraint (1057.ORD_FK1) violated - parent key not found 


insert into details values ('1005','P001',8)
*
ERROR at line 1:
ORA-02291: integrity constraint (1057.ORD_FK1) violated - parent key not found 


insert into details values ('1050','P001',5)
*
ERROR at line 1:
ORA-02291: integrity constraint (1057.ORD_FK1) violated - parent key not found 


insert into details values ('1005','P009',5)
*
ERROR at line 1:
ORA-02291: integrity constraint (1057.ORD_FK2) violated - parent key not found 



no rows selected

 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 P_NO                                      NOT NULL VARCHAR2(5)
 P_NAME                                             CHAR(15)
 P_PRICE                                   NOT NULL NUMBER(10)
 P_QTY                                              NUMBER(10)


Table altered.

 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 E_NO                                      NOT NULL VARCHAR2(5)
 E_NAME                                             CHAR(15)
 E_DOB                                              DATE
 E_PIN                                              NUMBER(6)


Table altered.

 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 C_NO                                      NOT NULL VARCHAR2(5)
 C_NAME                                             CHAR(15)
 C_STREET                                           CHAR(15)
 C_PIN                                              NUMBER(6)
 C_DOB                                              DATE
 C_PHNO                                             NUMBER(10)


Table altered.

 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 C_NO                                      NOT NULL VARCHAR2(5)
 C_NAME                                             CHAR(30)
 C_STREET                                           CHAR(15)
 C_PIN                                              NUMBER(6)
 C_DOB                                              DATE
 C_PHNO                                             NUMBER(10)


Table altered.

 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 C_NO                                      NOT NULL VARCHAR2(5)
 C_NAME                                             CHAR(30)
 C_STREET                                           CHAR(15)
 C_PIN                                              NUMBER(6)
 C_PHNO                                             NUMBER(10)


Table altered.

 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 O_NO                                      NOT NULL VARCHAR2(5)
 E_NO                                               VARCHAR2(5)
 C_NO                                               VARCHAR2(5)
 O_RDATE                                   NOT NULL DATE
 O_SDATE                                            DATE


1 row created.


1 row created.


1 row created.


O_NO  E_NO  C_NO  O_RDATE   O_SDATE                                             
----- ----- ----- --------- ---------                                           
1010  E001  C001  03-AUG-09 09-OCT-09                                           
2001  E001  C001  19-DEC-21 23-JAN-22                                           
2002  E001  C001  05-JUL-20 08-NOV-20                                           


O_NO  P_NO                   QTY                                                
----- --------------- ----------                                                
2001  P001                     3                                                

delete from orders where o_no='2001'
*
ERROR at line 1:
ORA-02292: integrity constraint (1057.ORD_FK1) violated - child record found 



Table altered.


Table altered.


1 row deleted.


O_NO  E_NO  C_NO  O_RDATE   O_SDATE                                             
----- ----- ----- --------- ---------                                           
1010  E001  C001  03-AUG-09 09-OCT-09                                           
2002  E001  C001  05-JUL-20 08-NOV-20                                           


no rows selected

SQL> spool off
