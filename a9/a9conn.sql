REM Assignment 9

REM --------------------------------------------------------------------------
REM *** ASSIGNMENT QUESTIONS ***
REM --------------------------------------------------------------------------

REM To calculate the net pay of an employee, develop a PL/SQL procedure/function that
REM accepts only the eid and basic and calculates as per the following:
REM Dearness Allowance [DA] = 60%
REM House Rent Allowance [HRA]=11%
REM Provident Fund [PF] = 4%
REM Mediclaim [MC] = 3%
REM Gross = Basic + DA + HRA
REM Total Deduction = PF + MC
REM Net Pay = Gross – Total Deduction
REM Call the procedure/function from the application by passing appropriate parameter(s)
REM and update the corresponding record.

drop table emp_payroll;

create table emp_payroll(
	eid number(5) constraint e_pk primary key,
	ename varchar2(20),
	dob date,
	sex varchar2(10),
	desg varchar2(30),
	basic number,
	da number,
	hra number,
	pf number,
	mc number,
	gross number,
	tot_deduc number,
	net_pay number
	);

desc emp_payroll;

select * from emp_payroll;

create or replace procedure calcpay 
(eidip in emp_payroll.eid%type) as
	b emp_payroll.basic%type;
	daip emp_payroll.da%type;
	hraip emp_payroll.hra%type;
	pfip emp_payroll.pf%type;
	mcip emp_payroll.mc%type;
	grossip emp_payroll.gross%type;
	totded emp_payroll.tot_deduc%type;
	netpay emp_payroll.net_pay%type;
begin
	select basic into b from emp_payroll where eid = eidip;
	update emp_payroll set da = 0.6*b, hra = 0.11*b, pf = 0.04*b, mc = 0.03*b where eid  = eidip;
	select da, hra, pf, mc into daip, hraip, pfip, mcip from emp_payroll where eid = eidip;
	totded:= pfip+mcip;
	grossip:=b+daip+hraip;
	netpay:=grossip-totded;
	update emp_payroll set tot_deduc = totded, gross = grossip, net_pay = netpay where eid  = eidip;
end;
/




REM **************************************** END OF FILE **********************************************