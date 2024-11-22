REM Assignment 5

REM --------------------------------------------------------------------------
REM *** ASSIGNMENT QUESTIONS ***
REM --------------------------------------------------------------------------
REM Consider the schema used in Assignment 3. 

REM **_____Write a PL/SQL block for the following:_____**

REM 1. Check whether the given combination of food and flavor is available. If any one or both are not available, display the relevant message. 

create or replace function prod_det(food1 products.food%type, flav1 products.flavour%type) return int is
case1 varchar2(15);
case2 varchar2(15);
case3 varchar2(15);
cursor c1 is select prod_id from products where food=food1 and flavour=flav1;
cursor c2 is select prod_id from products where food=food1;
cursor c3 is select prod_id from products where flavour=flav1;
begin
	open c1;
	loop
		fetch c1 into case1;
		if c1%found then
			return 1;
		else
			open c2;
			loop
				fetch c2 into case2;
				if c2%found then
					return 2;
				else
					return 5;
				end if;
			end loop;
			close c2;
			open c3;
			loop
				fetch c3 into case3;
				if c3%found then
					return 3;
				else
					return 4;
				end if;
			end loop;
			close c3;
		end if;
	end loop;
	close c1;
EXCEPTION
when no_data_found then
	return 0;
end;
/

declare
foods products.food%type;
flavours products.flavour%type;
prod products.prod_id%type;
begin
foods:='&foods';
flavours:='&flavours';
prod:=prod_det(foods,flavours);

if prod = 1 then
	dbms_output.put_line('The combination of food '||foods||' and flavour '||flavours||' is available.');
elsif prod = 2 then
	dbms_output.put_line('The food '||foods||' is available, but without the flavour '||flavours||'.');
elsif prod = 3 then
	dbms_output.put_line('The flavour '||flavours||' is available, but without the food '||foods||'.');
elsif prod = 4 then
	dbms_output.put_line('Neither the food '||foods||' nor the flavour '||flavours||' is available.');
elsif prod = 5 then
	dbms_output.put_line('Neither the food '||foods||' nor the flavour '||flavours||' is available.');
end if;

end;
/
/
/

REM Validations:

select * from products where food='Cake' and flavour='Chocolate';
select * from products where food='Cake';
select * from products where food='Random';


REM 2. On a given date, find the number of items sold (Use Implicit cursor). 

create or replace procedure dateitems (dt in date) is
numitems item_list.item%type;
begin
	select count(item) into numitems
		from receipts join item_list using(rec_no) where rdate=dt;
	if sql%notfound then
		dbms_output.put_line('No items sold');
	elsif sql%found then
		dbms_output.put_line('No. of items sold: '||numitems);
	end if;
end;
/

declare
rdate date:=&rdate;
begin
	dateitems(rdate);
end;
/
/

REM Validations:

select count(*) from receipts join item_list using(rec_no) where rdate='20-OCT-07';
select count(*) from receipts join item_list using(rec_no) where rdate='20-MAR-07';


REM 3.  An user desired to buy the product with the specific price. Ask the user for a price, find the food item(s) that is equal or closest to the desired price. 
REM Print the product number, food type, flavor and price. Also print the number of items that is equal or closest to the desired price. 

create or replace procedure price_det (pr in products.price%type) is
flav1 products.flavour%type;
food1 products.food%type;
price1 products.price%type;
pid1 products.prod_id%type;
cursor c1 is select * from products where price in
	(select max(price) from products where price<=pr);
begin
	open c1;
	dbms_output.put_line('PROD_ID           FOOD         FLAVOUR      QTY');
	loop
		fetch c1 into pid1,food1,flav1,price1;
		exit when c1%notfound;
		dbms_output.put_line(pid1||'           '||food1||'         '||flav1||'       '||price1);
	end loop;
	dbms_output.put_line(c1%rowcount||' product(s) were found equal to or closest to the given price.');
	close c1;
end;
/

declare
price number:=&price;
begin
	price_det(price);
end;
/
/

REM Validations:

select * from products where price=15.95;


REM 4. Display the customer name along with the details of item and its quantity ordered for the given order number. Also calculate the total quantity ordered.

create or replace procedure ord_det (rnum in number) is
cursor c1 is select food,flavour,count(*) from item_list,products 
	where rec_no=rnum and item=prod_id 
	group by food,flavour;
namef customers.fname%type;
namel customers.lname%type;
flav1 products.flavour%type;
food1 products.food%type;
qty1 number; 
total number:=0;
begin
	select fname,lname into namef,namel from customers join receipts on (cust_no=cid) where rec_no=rnum;
	dbms_output.put_line('Customer name: '||namef||'  '||namel);
	dbms_output.put_line('Items: ');
	open c1;	
	dbms_output.put_line('FOOD         FLAVOUR         QTY');
	loop
		fetch c1 into food1,flav1,qty1;
		if c1%found then
			total:= total+qty1;
			dbms_output.put_line(food1||'        '||flav1||'         '||qty1);
		else
			exit;
		end if;
	end loop;
	dbms_output.put_line('------------------------------------');
	dbms_output.put_line('Total quantity: '||total);
EXCEPTION
when no_data_found then
	dbms_output.put_line('Order number does not exist!');
end;
/

declare
rec_no number:=&rec_no;
begin
	ord_det(rec_no);
end;
/
/

REM Validations:

select rec_no from customers join receipts on (cust_no=cid) where rec_no=64574;
select rec_no from receipts where rec_no=12345;


REM **************************************** END OF FILE **********************************************
