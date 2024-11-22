SQL> @z:/a8exception.sql;
SQL> ﻿REM Assignment 8
SP2-0734: unknown command beginning "﻿REM Ass..." - rest of line ignored.
SQL> 
SQL> REM --------------------------------------------------------------------------
> REM *** ASSIGNMENT QUESTIONS ***
SQL> REM --------------------------------------------------------------------------
> REM Consider the schema used in Assignment 3.
SQL> 
SQL> 
SQL> REM **_____Write a PL/SQL block to handle the following exceptions:_____**
SQL> 
SQL> REM 1. For the given receipt number, if there are no rows then display as "No order with the
SQL> REM given receipt <number>". If the receipt contains more than one item, display as
SQL> REM "The given receipt <number> contains more than one item". If the receipt contains
SQL> REM single item, display as "The given receipt <number> contains exactly one item". Use
SQL> REM predefined exception handling.
SQL> 
SQL> create or replace procedure numitems (rno in receipts.rec_no%type) is
  2  numrows number;
  3  begin
  4  	     select count(item) into numrows from item_list where rec_no = rno;
  5  	     if (numrows = 0) then
  6  		     dbms_output.put_line('No order with the given receipt number '||rno);
  7  	     elsif (numrows = 1) then
  8  		     dbms_output.put_line('The given receipt '||rno||' contains exactly one item.');
  9  	     elsif (numrows > 1) then
 10  		     dbms_output.put_line('The given receipt '||rno||' contains more than one item');
 11  	     end if;
 12  EXCEPTION
 13  when no_data_found then
 14  	     dbms_output.put_line('Invalid receipt number');
 15  end;
 16  /

Procedure created.

SQL> 
SQL> declare
  2  rid receipts.rec_no%type;
  3  
  4  begin
  5  
  6  rid := &receipt;
  7  numitems(rid);
  8  
  9  end;
 10  /
Enter value for receipt: 34378
old   6: rid := &receipt;
new   6: rid := 34378;
The given receipt 34378 contains more than one item                             

PL/SQL procedure successfully completed.

SQL> /
Enter value for receipt: 17947
old   6: rid := &receipt;
new   6: rid := 17947;
The given receipt 17947 contains exactly one item.                              

PL/SQL procedure successfully completed.

SQL> /
Enter value for receipt: 88888
old   6: rid := &receipt;
new   6: rid := 88888;
No order with the given receipt number 88888                                    

PL/SQL procedure successfully completed.

SQL> 
SQL> REM Validations:
SQL> 
SQL> select rec_no, count(item) as numrows from item_list group by rec_no having rec_no = 34378 or rec_no = 17947 or rec_no = 88888;

    REC_NO    NUMROWS                                                           
---------- ----------                                                           
     34378          2                                                           
     17947          1                                                           

SQL> 
SQL> 
SQL> REM 2. While inserting the receipt details, raise an exception when the receipt date is greater than the current date.
SQL> 
SQL> create or replace trigger check_rdate
  2  BEFORE INSERT ON receipts FOR EACH ROW
  3  declare
  4  	     cursor c1 is select * from receipts where rdate > (select sysdate from dual);
  5  	     record c1%rowtype;
  6  begin
  7  	     open c1;
  8  	     fetch c1 into record;
  9  	     if c1%found then
 10  		     raise_application_error(-20000,'Receipt date cannot be after current date!');
 11  	     end if;
 12  end;
 13  /

Trigger created.

SQL> 
SQL> REM Validations:
SQL> 
SQL> insert into receipts values (12299,'01-JUL-2022',11);
insert into receipts values (12299,'01-JUL-2022',11)
            *
ERROR at line 1:
ORA-20000: Receipt date cannot be after current date! 
ORA-06512: at "1057.CHECK_RDATE", line 8 
ORA-04088: error during execution of trigger '1057.CHECK_RDATE' 


SQL> 
SQL> 
SQL> 
SQL> REM **************************************** END OF FILE **********************************************
SQL> spool off;
