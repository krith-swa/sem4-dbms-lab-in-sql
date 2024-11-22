REM practice procedures

declare
ename emp1.first_name%type;
esal emp1.salary%type;
num emp1.employee_id%type;
inc number(6);
begin
	num:=&eno;
	inc:=&increment;
	update emp1 set salary=salary+inc where employee_id=num;
	if sql%found then
		select employee_id, first_name, salary into num, ename, esal from emp1 where employee_id=num;
		dbms_output.put_line('NUMBER: '||num||' NAME: '||ename||' SALARY: '||esal);
	else
		dbms_output.put_line('Record not found!');
	end if;
end;
/

create or replace procedure emp_det(eno in emp1.employee_id%type, name out emp1.first_name%type, sal out emp1.salary%type) is
begin
	select first_name, salary into name, sal from emp1 where employee_id=eno;
end;
/

declare
eno emp1.employee_id%type;
ename emp1.first_name%type;
esal emp1.salary%type;
begin
	eno:=&eno;
	emp_det(eno,ename,esal);
	dbms_output.put_line('NUMBER: '||eno||' NAME: '||ename||' SALARY: '||esal);
end;
/

create or replace function emp_sal(eno emp1.employee_id%type) return real is sal emp1.salary%type;
begin
	select salary into sal from emp1 where employee_id=eno;
	dbms_output.put_line('Salary: '||sal);
	return sal;
end;
/

select emp_sal(10) from dual;