SQL> @C:/Krithika/DBL/a9conn.sql;
SQL> ﻿REM Assignment 9
SP2-0734: unknown command beginning "﻿REM Ass..." - rest of line ignored.
SQL> 
SQL> REM --------------------------------------------------------------------------
> REM *** ASSIGNMENT QUESTIONS ***
SQL> REM --------------------------------------------------------------------------
> 
SQL> REM To calculate the net pay of an employee, develop a PL/SQL procedure/function that
SQL> REM accepts only the eid and basic and calculates as per the following:
SQL> REM Dearness Allowance [DA] = 60%
SQL> REM House Rent Allowance [HRA]=11%
SQL> REM Provident Fund [PF] = 4%
SQL> REM Mediclaim [MC] = 3%
SQL> REM Gross = Basic + DA + HRA
SQL> REM Total Deduction = PF + MC
SQL> REM Net Pay = Gross – Total Deduction
SQL> REM Call the procedure/function from the application by passing appropriate parameter(s)
SQL> REM and update the corresponding record.
SQL> 
SQL> drop table emp_payroll;
drop table emp_payroll

Table dropped.

SQL> 
SQL> create table emp_payroll(
  2  	     eid number(5) constraint e_pk primary key,
  3  	     ename varchar2(20),
  4  	     dob date,
  5  	     sex varchar2(10),
  6  	     desg varchar2(30),
  7  	     basic number,
  8  	     da number,
  9  	     hra number,
 10  	     pf number,
 11  	     mc number,
 12  	     gross number,
 13  	     tot_deduc number,
 14  	     net_pay number
 15  	     );

Table created.

SQL> 
SQL> desc emp_payroll;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 EID                                       NOT NULL NUMBER(5)
 ENAME                                              VARCHAR2(20)
 DOB                                                DATE
 SEX                                                VARCHAR2(10)
 DESG                                               VARCHAR2(30)
 BASIC                                              NUMBER
 DA                                                 NUMBER
 HRA                                                NUMBER
 PF                                                 NUMBER
 MC                                                 NUMBER
 GROSS                                              NUMBER
 TOT_DEDUC                                          NUMBER
 NET_PAY                                            NUMBER

SQL> 
SQL> select * from emp_payroll;

no rows selected

SQL> 
SQL> create or replace procedure calcpay
  2  (eidip in emp_payroll.eid%type) as
  3  	     b emp_payroll.basic%type;
  4  	     daip emp_payroll.da%type;
  5  	     hraip emp_payroll.hra%type;
  6  	     pfip emp_payroll.pf%type;
  7  	     mcip emp_payroll.mc%type;
  8  	     grossip emp_payroll.gross%type;
  9  	     totded emp_payroll.tot_deduc%type;
 10  	     netpay emp_payroll.net_pay%type;
 11  begin
 12  	     select basic into b from emp_payroll where eid = eidip;
 13  	     update emp_payroll set da = 0.6*b, hra = 0.11*b, pf = 0.04*b, mc = 0.03*b where eid  = eidip;
 14  	     select da, hra, pf, mc into daip, hraip, pfip, mcip from emp_payroll where eid = eidip;
 15  	     totded:= pfip+mcip;
 16  	     grossip:=b+daip+hraip;
 17  	     netpay:=grossip-totded;
 18  	     update emp_payroll set tot_deduc = totded, gross = grossip, net_pay = netpay where eid  = eidip;
 19  end;
 20  /

Procedure created.

SQL> 
SQL> 
SQL> 
SQL> 
SQL> REM **************************************** END OF FILE **********************************************
