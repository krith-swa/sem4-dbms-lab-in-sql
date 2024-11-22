REM Assignment 7

REM --------------------------------------------------------------------------
REM *** ASSIGNMENT QUESTIONS ***
REM --------------------------------------------------------------------------
REM Consider the schema used in Assignment 3. 

REM **Updating the Bakery Database**

alter table receipts add amount number;

update receipts r set amount = (
	select sum(price) 
	from receipts join item_list using (rec_no) join products on (prod_id = item) 
	group by rec_no having rec_no = r.rec_no);

REM **_____Write a PL/SQL Trigger for the following:_____**

REM 1. The combination of Flavor and Food determines the product id. Hence, while
REM inserting a new instance into the Products relation, ensure that the same combination
REM of Flavor and Food is not already available. 

create or replace trigger check_combo 
BEFORE INSERT ON Products FOR EACH ROW 
declare
  flag number:=0;
  cursor c1 is select * from products where food=:NEW.food and flavour=:NEW.flavour;
  record c1%rowtype;
begin
  open c1;
  fetch c1 into record;
  if c1%NOTFOUND then
    flag:=1;
  end if;
  close c1;
  if (flag=0) then 
    raise_application_error(-20000,'The combination already exists.');
  end if;
end;
/

savepoint q1;

REM Validations:

insert into products values ('11-1','Vanilla','Tart',4);
insert into products values ('11-2','Vanilla','Tart',2);
select * from products where prod_id='11-1';
select * from products where flavour='Lemon' and food='Meringue';

rollback to q1;


REM 2. While entering an item into the item_list relation, update the amount in Receipts with
REM the total amount for that receipt number. 
create or replace trigger update_amt 
BEFORE INSERT ON item_list FOR EACH ROW
declare 
  total number;
  pr products.price%type;
begin
  select price into pr from products where prod_id=:NEW.item;
  select sum(price) into total from item_list, products where item=prod_id and rec_no=:NEW.rec_no;
  total:=total+pr;
  update receipts set amount = total where rec_no=:NEW.rec_no;
end;
/

REM Checking items for receipt number 13355

select * from receipts where rec_no = 13355;
select * from item_list where rec_no = 13355 order by ordinal asc;

insert into item_list values(13355,4,'51-BLU');

select * from receipts where rec_no = 13355;
select * from item_list where rec_no = 13355 order by ordinal asc;


REM 3. Implement the following constraints for Item_list relation:
REM a. A receipt can contain a maximum of five items only.
REM b. A receipt should not allow an item to be purchased more than thrice. 

create or replace trigger check_receipts 
BEFORE INSERT ON item_list FOR EACH ROW 
declare
  cursor c1 is  select count(*) as cnt1 from item_list where rec_no=:NEW.rec_no;
  cursor c2 is  select count(*) as cnt2 from item_list where rec_no=:NEW.rec_no and item=:NEW.item;
  record1 c1%rowtype;
  record2 c2%rowtype;
begin
  open c1;
  open c2;
  fetch c1 into record1;
  fetch c2 into record2;
  if record1.cnt1>=5 and record2.cnt2>=3 then
    raise_application_error(-20000,'The receipt has five items. The item has been purchased thrice.');
  elsif record1.cnt1>=5 then
    raise_application_error(-20001,'The receipt already has five items.');
  elsif record2.cnt2>=3 then
    raise_application_error(-20002,'The item to be purchased has already been purchased thrice.');
  end if;
  close c2;
  close c1;
end;
/

REM Validations:

savepoint q3;

select * from item_list where rec_no = 44798 order by ordinal asc;
insert into item_list values (44798,6,'51-BC');
select * from item_list where rec_no = 44798 order by ordinal asc;

select * from item_list where rec_no = 53240 order by ordinal asc;
insert into item_list values (53240,3,'51-ATW');
insert into item_list values (53240,4,'51-ATW');
insert into item_list values (53240,5,'51-ATW');
select * from item_list where rec_no = 53240 order by ordinal asc;

rollback to q3;


REM **************************************** END OF FILE **********************************************