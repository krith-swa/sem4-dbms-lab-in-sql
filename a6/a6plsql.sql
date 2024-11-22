REM Assignment 6

REM --------------------------------------------------------------------------
REM *** ASSIGNMENT QUESTIONS ***
REM --------------------------------------------------------------------------
REM Consider the schema used in Assignment 3. 

REM **_____Write a PL/SQL stored procedure for the following:_____**

REM 1. For the given receipt number, calculate the Discount as follows:
REM For total amount > $10 and total amount < $25: Discount=5%
REM For total amount > $25 and total amount < $50: Discount=10%
REM For total amount > $50: Discount=20%
REM Calculate the amount (after the discount) and update the same in Receipts table.
REM Print the receipt as shown below:
REM ************************************************************
REM Receipt Number:13355 
REM Customer Name: TOUSSAND SHARRON 
REM Receipt Date :19­Oct­2007
REM ************************************************************
REM Sno Flavor Food Price
REM 1. Opera Cake 15.95
REM 2. Lemon Cookie 0.79
REM 3. Napoleon Cake 13.49
REM ­­­­­­­­­­­­­­­­­­­­­­­­­­­­­­­­­­­­­­­­­­­­­­­­­­­­­­­­­­­­
REM Total = $ 30.23
REM Discount(10%) :$ 3.02
REM ­­­­­­­­­­­­­­­­­­­­­­­­­­­­­­­­­­­­­­­­­­­­­­­­­­­­­­­­­­­­
REM Amount to be paid :$ 27.21
REM ************************************************************
REM Great Offers! Discount up to 25% on DIWALI Festival Day...
REM ************************************************************ 


create or replace procedure discount 
(amt in products.price%type, dis out products.price%type, dispct out products.price%type, sp out products.price%type) is
begin
	dis := 0;
	dispct := 0;
	if amt>10 and amt<25 then
		dis := (5*amt)/100.00;
		dispct := 5;
	elsif amt>25 and amt<50 then
		dis := (10*amt)/100.00;
		dispct := 10;
	elsif amt>50 then
		dis := (20*amt)/100.00;
		dispct := 20;
	end if;
	sp := amt - dis;
end;
/

declare
rid receipts.rec_no%type;
billdate receipts.rdate%type;
custfname customers.fname%type;
custlname customers.lname%type;
rtotal products.price%type;
d products.price%type;
dp products.price%type;
finalamt products.price%type;
cursor c1 is select flavour, food, price
	from products join item_list on (prod_id = item)
	where rec_no = rid;
countnum integer;
itemfood products.food%type;
itemfl products.flavour%type;
itemprice products.price%type;

begin

rid := &receipt;

select rdate, fname, lname, count(item), sum(price) as total 
into billdate, custfname, custlname, countnum, rtotal
from receipts join item_list using (rec_no) join products on (prod_id = item) join customers on (cid = cust_no) 
group by rec_no, rdate, fname, lname having rec_no = rid;

discount(rtotal,d,dp,finalamt);

dbms_output.put_line('->');
dbms_output.put_line('*************************************************');
dbms_output.put_line('Receipt no.: '||rid);
dbms_output.put_line('Customer name: '||custfname||' '||custlname);
dbms_output.put_line('Receipt date: '||billdate);
dbms_output.put_line('*************************************************');
dbms_output.put_line('S.No.  Flavour       Food       Price');
open c1;
for sno in 1..countnum loop
	fetch c1 into itemfl, itemfood, itemprice;
	dbms_output.put_line(sno||'     '||itemfl||'        '||itemfood||'         '||itemprice);
	end loop;
close c1;
dbms_output.put_line('__________________________________________________');
dbms_output.put_line('Total = $'||rtotal);
dbms_output.put_line('Discount('||dp||'%): $'||d);
dbms_output.put_line('__________________________________________________');
dbms_output.put_line('Grand Total = $'||finalamt);
dbms_output.put_line('*************************************************');
dbms_output.put_line('Great Offers! Discounts up to 25% on DIWALI Day...');
dbms_output.put_line('*************************************************');

end;
/


REM Validations:

select rdate, fname, lname, count(item) as count, sum(price) as total 
from receipts join item_list using (rec_no) join products on (prod_id = item) join customers on (cid = cust_no) 
group by rec_no, rdate, fname, lname having rec_no = 13355;


REM 2. Ask the user for the budget and his/her preferred food type. You recommend the best item(s) within the planned budget for the given food type. 
REM The best item is determined by the maximum ordered product among many customers for the given food type.
create or replace procedure calcount 
(budget in products.price%type, val in products.price%type, qty out integer) is 
begin
	if val <= budget then
		qty := budget/val;
	else
		qty := 0;
	end if;
end;
/

declare
budget products.price%type;
val products.price%type;
pfood products.food%type;
qty integer(3);
pid products.prod_id%type;
psample products%rowtype;
cursor c1 is select distinct(p.prod_id), p.food, p.flavour, p.price
	from products p join item_list i on (p.prod_id = i.item)
	where p.price <= budget and p.food = pfood
	group by p.prod_id, p.food, p.flavour, p.price
	order by count(*) desc;
countnum integer;
pfl products.flavour%type;

begin
budget := '&budget';
pfood := '&food';

begin
select p1.prod_id, p1.price, p1.flavour into pid, val, pfl
	from products p1 join item_list i on (p1.prod_id = i.item)
	where p1.price <= budget and p1.food = pfood
	group by p1.prod_id, p1.food, p1.flavour, p1.price
	having count(*) >= all (
		select count(*)
		from products p2 join item_list i on p2.prod_id = i.item
		where p2.price <= budget and p2.food = pfood
		group by p2.prod_id, p2.food, p2.flavour, p2.price);
EXCEPTION
when no_data_found then
	dbms_output.put_line('No recommendations found');
	return;
end;

select count(count(*)) into countnum
	from products p join item_list i on (p.prod_id = i.item)
	where p.price <= budget and p.food = pfood
	group by p.prod_id, p.food, p.flavour, p.price;

dbms_output.put_line('*************************************************************');
dbms_output.put_line('S.No.  Prod_ID       Food        Flavour       Price');
dbms_output.put_line('*************************************************************');

open c1;
for sno in 1..countnum loop
	fetch c1 into psample;
	dbms_output.put_line(sno||' '||psample.prod_id||'    '||psample.food||'   '||psample.flavour||'   '||psample.price);
	end loop;
close c1;
dbms_output.put_line('**************************************************************');

calcount(budget,val,qty);
dbms_output.put_line(pid||' with '||pfl||' flavour is the best item in '||pfood||' type!');
dbms_output.put_line('You are entitled to purchase '||qty||' '||pfood||' '||pfl||'s for the given budget!!!');
dbms_output.put_line('**************************************************************');

end;
/


REM 3. Take a receipt number and item as arguments, and insert this information into the Item list. 
REM However, if there is already a receipt with that receipt number, then keep adding 1 to the maximum ordinal number. 
REM Else, before inserting into the Item list with ordinal as 1, ask the user to give the customer name who placed the order and insert this information into the Receipts.

create or replace procedure insertitem 
(rid in receipts.rec_no%type, ord in item_list.ordinal%type, pid in products.prod_id%type) is
begin
	insert into item_list values (rid,ord,pid);
end;
/

create or replace procedure insertreceipt 
(rid in receipts.rec_no%type, rdt in receipts.rdate%type, rcid in customers.cust_no%type) is
begin
	insert into receipts values (rid,rdt,rcid);
end;
/

create or replace procedure findcust 
(cfname in customers.fname%type, clname in customers.lname%type, foundcid out customers.cust_no%type) is
begin
	begin
		select c.cust_no into foundcid
		from customers c
		where c.fname = cfname and c.lname = clname;
	EXCEPTION
	when no_data_found then
		dbms_output.put_line('Customer ID not found!');
		foundcid := 0;
	end;
end;
/

declare
cfname customers.fname%type;
clname customers.lname%type;
fcid customers.cust_no%type;
rid receipts.rec_no%type;
ord item_list.ordinal%type;
pid products.prod_id%type;
rdt receipts.rdate%type;
item_row item_list%rowtype;
cursor c1 is select * from item_list i 
	where i.rec_no = rid
	order by i.ordinal desc;
maxord item_list.ordinal%type;
flag number(1) := 0;

begin
	rid := '&receipt';
	pid := '&product';
	open c1;
	fetch c1 into item_row;
	if c1%rowcount > 0 then
		flag := 1;
	end if;
	close c1;

	if (flag = 1) then
		ord := item_row.ordinal+1;
	
	else
		cfname := '&firstname';
		clname := '&lastname';
		rdt := '&date';
		findcust(cfname,clname,fcid);
		if (fcid = 0) then
			dbms_output.put_line('Cannot add a new customer. Exiting...');
			return;
		end if;
		insertreceipt(rid,rdt,fcid);
		ord := 1;
	end if;
		
	insertitem(rid,ord,pid);
	dbms_output.put_line('Successfully inserted record!');
	
EXCEPTION
	when no_data_found then
		dbms_output.put_line('Could not insert record!');
end;
/
/

REM Validations:

select * from item_list where rec_no = 8888;
select * from item_list where rec_no = 34378;


REM 4. Write a stored function to display the customer name who ordered maximum for the 
given food and flavor.

create or replace function maxorders
(pid in products.prod_id%type) return varchar2 as
cid customers.cust_no%type;
max int;
name1 customers.fname%type;
name2 customers.lname%type;
name varchar2(40);

begin
	select max(count(*)) into max 
		from receipts r join item_list i on (i.rec_no = r.rec_no)
		where i.item = pid
		group by r.cid;
	select r.cid into cid from receipts r join item_list i on (i.rec_no = r.rec_no) 
		where i.item = pid
		group by r.cid having count(*)=max;
	select c1.fname, c1.lname into name1, name2 from customers c1 where c1.cust_no = cid;

	name := name1||' '||name2;
	return name;
EXCEPTION
	when no_data_found then
		dbms_output.put_line('The specified product does not exist!');
end maxorders;
/

declare
name varchar2(40);
pid products.prod_id%type;
pfood products.food%type;
pfl products.flavour%type;

begin
	pfood := '&food';
	pfl := '&flavour';
	select p1.prod_id into pid from products p1
		where p1.food = pfood and p1.flavour = pfl;
	name := maxorders(pid);
	dbms_output.put_line('Name: '||name);
EXCEPTION
	when no_data_found then
		dbms_output.put_line('The specified product does not exist!');
end;
/


REM 5. Implement Question (2) using stored function to return the amount to be paid and 
update the same, for the given receipt number. 

create or replace function discountfn 
(amt in products.price%type, dis out products.price%type, dispct out products.price%type) 
return products.price%type is
sp products.price%type;

begin
	dis := 0;
	dispct := 0;
	if amt>10 and amt<25 then
		dis := (5*amt)/100.00;
		dispct := 5;
	elsif amt>25 and amt<50 then
		dis := (10*amt)/100.00;
		dispct := 10;
	elsif amt>50 then
		dis := (20*amt)/100.00;
		dispct := 20;
	end if;
	sp := amt - dis;
	return sp;
end;
/

declare
rid receipts.rec_no%type;
billdate receipts.rdate%type;
custfname customers.fname%type;
custlname customers.lname%type;
rtotal products.price%type;
d products.price%type;
dp products.price%type;
finalamt products.price%type;
cursor c1 is select flavour, food, price
	from products join item_list on (prod_id = item)
	where rec_no = rid;
countnum integer;
itemfood products.food%type;
itemfl products.flavour%type;
itemprice products.price%type;

begin

rid := '&receipt';

select rdate, fname, lname, count(item), sum(price) as total 
into billdate, custfname, custlname, countnum, rtotal
from receipts join item_list using (rec_no) join products on (prod_id = item) join customers on (cid = cust_no) 
group by rec_no, rdate, fname, lname having rec_no = rid;

finalamt := discountfn(rtotal,d,dp);

dbms_output.put_line('->');
dbms_output.put_line('*************************************************');
dbms_output.put_line('Receipt no.: '||rid);
dbms_output.put_line('Customer name: '||custfname||' '||custlname);
dbms_output.put_line('Receipt date: '||billdate);
dbms_output.put_line('*************************************************');
dbms_output.put_line('S.No.  Flavour       Food       Price');
open c1;
for sno in 1..countnum loop
	fetch c1 into itemfl, itemfood, itemprice;
	dbms_output.put_line(sno||'     '||itemfl||'        '||itemfood||'         '||itemprice);
	end loop;
close c1;
dbms_output.put_line('__________________________________________________');
dbms_output.put_line('Total = $'||rtotal);
dbms_output.put_line('Discount('||dp||'%): $'||d);
dbms_output.put_line('__________________________________________________');
dbms_output.put_line('Grand Total = $'||finalamt);
dbms_output.put_line('*************************************************');
dbms_output.put_line('Great Offers! Discounts up to 25% on DIWALI Day...');
dbms_output.put_line('*************************************************');

end;
/


REM **************************************** END OF FILE **********************************************