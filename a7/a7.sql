SQL> @z:/a7triggers.sql;
SQL> ﻿REM Assignment 7
SP2-0734: unknown command beginning "﻿REM Ass..." - rest of line ignored.
SQL> 
SQL> REM --------------------------------------------------------------------------
> REM *** ASSIGNMENT QUESTIONS ***
SQL> REM --------------------------------------------------------------------------
> REM Consider the schema used in Assignment 3.
SQL> 
SQL> REM **Updating the Bakery Database**
SQL> 
SQL> alter table receipts add amount number;

Table altered.

SQL> 
SQL> update receipts r set amount = (
  2  	     select sum(price)
  3  	     from receipts join item_list using (rec_no) join products on (prod_id = item)
  4  	     group by rec_no having rec_no = r.rec_no);

200 rows updated.

SQL> 
SQL> 
SQL> REM **_____Write a PL/SQL Trigger for the following:_____**
SQL> 
SQL> REM 1. The combination of Flavor and Food determines the product id. Hence, while
SQL> REM inserting a new instance into the Products relation, ensure that the same combination
SQL> REM of Flavor and Food is not already available.
SQL> 
SQL> create or replace trigger check_combo
  2  BEFORE INSERT ON Products FOR EACH ROW
  3  declare
  4    flag number:=0;
  5    cursor c1 is select * from products where food=:NEW.food and flavour=:NEW.flavour;
  6    record c1%rowtype;
  7  begin
  8    open c1;
  9    fetch c1 into record;
 10    if c1%NOTFOUND then
 11  	 flag:=1;
 12    end if;
 13    close c1;
 14    if (flag=0) then
 15  	 raise_application_error(-20000,'The combination already exists.');
 16    end if;
 17  end;
 18  /

Trigger created.

SQL> 
SQL> savepoint q1;

Savepoint created.

SQL> 
SQL> REM Validations:
SQL> 
SQL> insert into products values ('11-1','Vanilla','Tart',4);

1 row created.

SQL> insert into products values ('11-2','Vanilla','Tart',2);
insert into products values ('11-2','Vanilla','Tart',2)
            *
ERROR at line 1:
ORA-20000: The combination already exists. 
ORA-06512: at "1057.CHECK_COMBO", line 13 
ORA-04088: error during execution of trigger '1057.CHECK_COMBO' 


SQL> select * from products where prod_id='11-1';

PROD_ID              FLAVOUR              FOOD                      PRICE       
-------------------- -------------------- -------------------- ----------       
11-1                 Vanilla              Tart                          4       

SQL> select * from products where flavour='Lemon' and food='Meringue';

no rows selected

SQL> 
SQL> rollback to q1;

Rollback complete.

SQL> 
SQL> 
SQL> REM 2. While entering an item into the item_list relation, update the amount in Receipts with
SQL> REM the total amount for that receipt number.
SQL> 
SQL> create or replace trigger update_amt
  2  BEFORE INSERT ON item_list FOR EACH ROW
  3  declare
  4    total number;
  5    pr products.price%type;
  6  begin
  7    select price into pr from products where prod_id=:NEW.item;
  8    select sum(price) into total from item_list, products where item=prod_id and rec_no=:NEW.rec_no;
  9    total:=total+pr;
 10    update receipts set amount = total where rec_no=:NEW.rec_no;
 11  end;
 12  /

Trigger created.

SQL> 
SQL> REM Checking items for receipt number 13355
SQL> 
SQL> select * from receipts where rec_no = 13355;

    REC_NO RDATE            CID     AMOUNT                                      
---------- --------- ---------- ----------                                      
     13355 19-OCT-07          7      30.23                                      

SQL> select * from item_list where rec_no = 13355 order by ordinal asc;

    REC_NO    ORDINAL ITEM                                                      
---------- ---------- --------------------                                      
     13355          1 24-8x10                                                   
     13355          2 70-LEM                                                    
     13355          3 46-11                                                     

SQL> 
SQL> insert into item_list values(13355,4,'51-BLU');

1 row created.

SQL> 
SQL> select * from receipts where rec_no = 13355;

    REC_NO RDATE            CID     AMOUNT                                      
---------- --------- ---------- ----------                                      
     13355 19-OCT-07          7      31.38                                      

SQL> select * from item_list where rec_no = 13355 order by ordinal asc;

    REC_NO    ORDINAL ITEM                                                      
---------- ---------- --------------------                                      
     13355          1 24-8x10                                                   
     13355          2 70-LEM                                                    
     13355          3 46-11                                                     
     13355          4 51-BLU                                                    

SQL> 
SQL> 
SQL> REM 3. Implement the following constraints for Item_list relation:
SQL> REM a. A receipt can contain a maximum of five items only.
SQL> REM b. A receipt should not allow an item to be purchased more than thrice.
SQL> 
SQL> create or replace trigger check_receipts
  2  BEFORE INSERT ON item_list FOR EACH ROW
  3  declare
  4    cursor c1 is  select count(*) as cnt1 from item_list where rec_no=:NEW.rec_no;
  5    cursor c2 is  select count(*) as cnt2 from item_list where rec_no=:NEW.rec_no and item=:NEW.item;
  6    record1 c1%rowtype;
  7    record2 c2%rowtype;
  8  begin
  9    open c1;
 10    open c2;
 11    fetch c1 into record1;
 12    fetch c2 into record2;
 13    if record1.cnt1>=5 and record2.cnt2>=3 then
 14  	 raise_application_error(-20000,'The receipt has five items. The item has been purchased thrice.');
 15    elsif record1.cnt1>=5 then
 16  	 raise_application_error(-20001,'The receipt already has five items.');
 17    elsif record2.cnt2>=3 then
 18  	 raise_application_error(-20002,'The item to be purchased has already been purchased thrice.');
 19    end if;
 20    close c2;
 21    close c1;
 22  end;
 23  /

Trigger created.

SQL> 
SQL> REM Validations:
SQL> 
SQL> savepoint q3;

Savepoint created.

SQL> 
SQL> select * from item_list where rec_no = 44798 order by ordinal asc;

    REC_NO    ORDINAL ITEM                                                      
---------- ---------- --------------------                                      
     44798          1 90-APR-PF                                                 
     44798          2 90-CH-PF                                                  
     44798          3 90-APIE-10                                                
     44798          4 90-APP-11                                                 
     44798          5 25-STR-9                                                  

SQL> insert into item_list values (44798,6,'51-BC');
insert into item_list values (44798,6,'51-BC')
            *
ERROR at line 1:
ORA-20001: The receipt already has five items. 
ORA-06512: at "1057.CHECK_RECEIPTS", line 14 
ORA-04088: error during execution of trigger '1057.CHECK_RECEIPTS' 


SQL> select * from item_list where rec_no = 44798 order by ordinal asc;

    REC_NO    ORDINAL ITEM                                                      
---------- ---------- --------------------                                      
     44798          1 90-APR-PF                                                 
     44798          2 90-CH-PF                                                  
     44798          3 90-APIE-10                                                
     44798          4 90-APP-11                                                 
     44798          5 25-STR-9                                                  

SQL> 
SQL> select * from item_list where rec_no = 53240 order by ordinal asc;

    REC_NO    ORDINAL ITEM                                                      
---------- ---------- --------------------                                      
     53240          1 25-STR-9                                                  
     53240          2 51-ATW                                                    

SQL> insert into item_list values (53240,3,'51-ATW');

1 row created.

SQL> insert into item_list values (53240,4,'51-ATW');

1 row created.

SQL> insert into item_list values (53240,5,'51-ATW');
insert into item_list values (53240,5,'51-ATW')
            *
ERROR at line 1:
ORA-20002: The item to be purchased has already been purchased thrice. 
ORA-06512: at "1057.CHECK_RECEIPTS", line 16 
ORA-04088: error during execution of trigger '1057.CHECK_RECEIPTS' 


SQL> select * from item_list where rec_no = 53240 order by ordinal asc;

    REC_NO    ORDINAL ITEM                                                      
---------- ---------- --------------------                                      
     53240          1 25-STR-9                                                  
     53240          2 51-ATW                                                    
     53240          3 51-ATW                                                    
     53240          4 51-ATW                                                    

SQL> 
SQL> rollback to q3;

Rollback complete.

SQL> 
SQL> 
SQL> REM **************************************** END OF FILE **********************************************
SQL> 
SQL> spool off;
