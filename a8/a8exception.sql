REM Assignment 8

REM --------------------------------------------------------------------------
REM *** ASSIGNMENT QUESTIONS ***
REM --------------------------------------------------------------------------
REM Consider the schema used in Assignment 3. 

REM **_____Write a PL/SQL block to handle the following exceptions:_____**

REM 1. For the given receipt number, if there are no rows then display as "No order with the
REM given receipt <number>". If the receipt contains more than one item, display as
REM "The given receipt <number> contains more than one item". If the receipt contains
REM single item, display as "The given receipt <number> contains exactly one item". Use
REM predefined exception handling. 

create or replace procedure numitems (rno in receipts.rec_no%type) is 
numrows number;
begin
	select count(item) into numrows from item_list where rec_no = rno;
	if (numrows = 0) then
		dbms_output.put_line('No order with the given receipt number '||rno);
	elsif (numrows = 1) then
		dbms_output.put_line('The given receipt '||rno||' contains exactly one item.');
	elsif (numrows > 1) then
		dbms_output.put_line('The given receipt '||rno||' contains more than one item');
	end if;
EXCEPTION
when no_data_found then
	dbms_output.put_line('Invalid receipt number');
end;
/

declare
rid receipts.rec_no%type;

begin

rid := &receipt;
numitems(rid);

end;
/
/
/

REM Validations:

select rec_no, count(item) as numrows from item_list group by rec_no having rec_no = 34378 or rec_no = 17947 or rec_no = 88888;


REM 2. While inserting the receipt details, raise an exception when the receipt date is greater than the current date. 
create or replace trigger check_rdate
BEFORE INSERT ON receipts FOR EACH ROW
declare
	cursor c1 is select * from receipts where rdate > (select sysdate from dual);
	record c1%rowtype;
begin
	open c1;
	fetch c1 into record;
	if c1%found then
		raise_application_error(-20000,'Receipt date cannot be after current date!');
	end if;
end;
/

REM Validations:

insert into receipts values (12299,'01-JUL-2022',11);



REM **************************************** END OF FILE **********************************************