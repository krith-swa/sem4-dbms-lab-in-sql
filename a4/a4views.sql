REM Assignment 4

REM --------------------------------------------------------------------------
REM *** ASSIGNMENT QUESTIONS ***
REM --------------------------------------------------------------------------
REM Consider the schema used in Assignment 3. 

REM **_____Create view(s) based on table(s) or view(s) and observe their behavior while performing update operations on them_____**

REM 1. Create a view named Blue_Flavor, which displays the product details (product id, food, price) of Blueberry flavor.

REM Creating view:
create or replace view Blue_Flavor as 
select prod_id, food, price from products 
where flavour='Blueberry';

REM Displaying view:
select * from Blue_Flavor;

REM Savepoint:
savepoint question1;

REM Checking if updatable:
select COLUMN_NAME, UPDATABLE, INSERTABLE, DELETABLE
from USER_UPDATABLE_COLUMNS
where TABLE_NAME='BLUE_FLAVOR';

REM Insertion:
insert into Blue_Flavor values ('61-GC','Cake',9.20);

REM Insertion verification:
select * from Blue_Flavor;
select * from products where prod_id='61-GC';

REM Updation:
update Blue_Flavor set prod_id='61-BLU' where prod_id='90-BLU-11';
update Blue_Flavor set food='Cake' where prod_id='51-BLU';
update Blue_Flavor set price=3.75 where prod_id='90-BLU-11';

REM Updation verification:
select * from Blue_Flavor where prod_id='61-BLU';
select * from products where prod_id='61-BLU';

select * from Blue_Flavor where prod_id='51-BLU';
select * from products where prod_id='51-BLU';

select * from Blue_Flavor where prod_id='90-BLU-11';
select * from products where prod_id='51-BLU';

REM Deletion:
delete from Blue_Flavor where prod_id='51-BLU';

REM Deletion verification:
select * from Blue_Flavor;
select * from products where prod_id='51-BLU';

REM Insertion in table:
insert into products values('88-SS-10','Blueberry','Cone', 2.95);

REM Insertion verification:
select * from Blue_Flavor;
select * from products where prod_id='88-SS-10';

REM Updation in table:
update products set prod_id='61-BLU' where prod_id='90-BLU-11';
update products set food='Cake' where prod_id='51-BLU';
update products set price=4.25 where prod_id='90-BLU-11';

REM Updation verification:
select * from Blue_Flavor where prod_id='61-BLU';
select * from products where prod_id='61-BLU';

select * from Blue_Flavor where prod_id='51-BLU';
select * from products where prod_id='51-BLU';

select * from Blue_Flavor where prod_id='90-BLU-11';
select * from products where prod_id='51-BLU';

REM Deletion in table:
delete from Blue_Flavor where prod_id='51-BLU';

REM Deletion verification:
select * from Blue_Flavor;
select * from products where prod_id='51-BLU';

rollback to question1;

REM ***Inference:***
REM ***Insertion: Insertion into the view is reflected in the parent table but not in the view. Insertion into the parent table is reflected in both.***
REM ***Updation: All the attributes in the view are updatable (key preserved). Updation in the main table is reflected in both.***
REM ***Deletion: Deletion in view and parent is reflected in both.***


REM 2. Create a view named Cheap_Food, which displays the details (product id, flavor, food, price) of products with price lesser than $1. Ensure that, the price of these food(s) should never rise above $1 through view.

REM Creating view:
create or replace view Cheap_Food as 
select prod_id, flavour, food, price from products 
where price < 1 
with check option;

REM Displaying view:
select * from Cheap_Food;

REM Savepoint:
savepoint question2;

REM Checking if updatable:
select COLUMN_NAME, UPDATABLE, INSERTABLE, DELETABLE
from USER_UPDATABLE_COLUMNS
where TABLE_NAME='CHEAP_FOOD';

REM Insertion:
insert into Cheap_Food values ('89-NE','Blackberry','Tart',7.50);
insert into Cheap_Food values ('89-NE','Blackberry','Tart',0.50);

REM Insertion verification:
select * from Cheap_Food;
select * from products where prod_id='89-NE';

REM Updation:
update Cheap_Food set prod_id='90-NEW' where prod_id='89-NE';
update Cheap_Food set food='Chips' where prod_id='51-BLU';
update Cheap_Food set price=3.75 where prod_id='90-BLU-11';

REM Updation verification:
select * from Cheap_Food where prod_id='61-BLU';
select * from products where prod_id='61-BLU';

select * from Cheap_Food where prod_id='51-BLU';
select * from products where prod_id='51-BLU';

select * from Cheap_Food where prod_id='90-BLU-11';
select * from products where prod_id='51-BLU';

REM Deletion:
delete from Cheap_Food where prod_id='51-BLU';

REM Deletion verification:
select * from Cheap_Food;
select * from products where prod_id='51-BLU';

REM Insertion in table:
insert into products values('88-SS-10','Blueberry','Cone', 0.75);

REM Insertion verification:
select * from Cheap_Food;
select * from products where prod_id='88-SS-10';

REM Updation in table:
update products set prod_id='61-BLU' where prod_id='90-BLU-11';
update products set food='Cake' where prod_id='51-BLU';
update products set price=4.25 where prod_id='90-BLU-11';

REM Updation verification:
select * from Cheap_Food where prod_id='61-BLU';
select * from products where prod_id='61-BLU';

select * from Cheap_Foodwhere prod_id='51-BLU';
select * from products where prod_id='51-BLU';

select * from Cheap_Food where prod_id='90-BLU-11';
select * from products where prod_id='51-BLU';

REM Deletion in table:
delete from Blue_Flavor where prod_id='51-BLU';

REM Deletion verification:
select * from Cheap_Food;
select * from products where prod_id='51-BLU';

rollback to question2;

REM ***Inference:***
REM ***Insertion: Insertion in view and parent is reflected in both. Insertion of price > 1 is not allowed due to the 'with check' option***
REM ***Updation: All the attributes in the view are updatable (key preserved). Updation in the main table is reflected in both.***
REM ***Deletion: Deletion in view and parent is reflected in both.***


REM 3. Create a view called Hot_Food that show the product id and its quantity where the same product is ordered more than once in the same receipt. 

REM Creating view:
create or replace view Hot_Food as
select item as product, count(item) as quantity from item_list i 
where 1 < (select count(item) from item_list 
	where i.rec_no = rec_no and i.item = item) 
group by item 
order by item asc;

REM alt query
REM select item, count(*) as quantity
from item_list
group by rno, item
having count(*)>1;

REM Displaying view:
select * from Hot_Food;

REM Savepoint:
savepoint question3;

REM Checking if updatable:
select COLUMN_NAME, UPDATABLE, INSERTABLE, DELETABLE
from USER_UPDATABLE_COLUMNS
where TABLE_NAME='HOT_FOOD';

REM Insertion:
insert into Hot_Food values ('999-ZA',2);

REM Insertion verification:
select * from Hot_Food;
select * from item_list where item='999-ZA';

REM Updation:
update Hot_Food set prod_id='61-BLU' where item='90-BLU-11';
update Hot_Food set food='Cake' where item='51-BLU';
update Hot_Food set price=3.75 where item='90-BLU-11';

REM Updation verification:
select * from Hot_Food where item='61-BLU';
select * from item_list where item='61-BLU';

select * from Hot_Food where item='51-BLU';
select * from item_list where item='51-BLU';

select * from Hot_Food where item='90-BLU-11';
select * from item_list where item='51-BLU';

REM Deletion:
delete from Hot_Food where item='51-BLU';

REM Deletion verification:
select * from Hot_Food;
select * from item_list where item='51-BLU';

REM Insertion in table:
insert into item_list values(82778,1,'33-SS-10');

REM Insertion verification:
select * from Hot_Food;
select * from item_list where item='33-SS-10';

REM Updation in table:


REM Updation verification:


REM Deletion in table:
delete from Hot_Food where item='51-BLU';

REM Deletion verification:
select * from Hot_Food;
select * from item_list where item='51-BLU';

rollback to question3;

REM ***Inference:***
REM ***Insertion: Insertion parent is reflected in both. Insertion in view is not allowed due to the presence of virtual column (group by column).***
REM ***Updation: None of the attributes in the view are updatable (virtual column). Updation in the main table is reflected in both.***
REM ***Deletion: Deletion in view is not allowed (data manipulation not allowed). Deletion in parent is reflected in both.***


REM 4. Create a view named Pie_Food that will display the details (customer lname, flavor, receipt number and date, ordinal) who had ordered the Pie food with receipt details.  

REM Creating view:
create or replace view Pie_Food as
select lname, flavour, rec_no, rdate, ordinal 
from customers 
join receipts on (cust_no = cid)
join item_list using (rec_no)
join products on (item = prod_id) 
where food='Pie';

REM Displaying view:
select * from Pie_Food;

REM Savepoint:
savepoint question4;

REM Checking if updatable:
select COLUMN_NAME, UPDATABLE, INSERTABLE, DELETABLE
from USER_UPDATABLE_COLUMNS
where TABLE_NAME='PIE_FOOD';

REM Insertion:
insert into Pie_Food values ('HOLMES','Lemon',83939,'21-OCT-2007',1);

REM Insertion verification:
select * from Pie_Food;

REM Updation:
update Pie_Food set lname='NEWNAME' where lname='LOGAN';
update Pie_Food set flavor='NEWFLAVOUR' where lname='LOGAN';
update Pie_Food set rno=56789 where lname='LOGAN';
update Pie_Food set ordinal=10 where lname='LOGAN';

REM Updation verification:
select * from Pie_Food;

REM Deletion:
delete from Pie_Food where lname='LOGAN';

REM Deletion verification:
select * from Pie_Food;
select * from receipts where rec_no=66227;

REM Insertion in table:


REM Insertion verification:


REM Updation in table:


REM Updation verification:


REM Deletion in table:


REM Deletion verification:


rollback to question4;

REM ***Inference:***
REM ***Insertion: Insertion parent is reflected in both. Insertion in view is only allowed in key preserved columns (rno and ordinal are composite keys).***
REM ***Updation: Updation in view is only allowed in key preserved columns (rno and ordinal are composite keys). Updation in the main table is reflected in both.***
REM ***Deletion: Deletion in view is updated in the view alone. Deletion in parent is not reflected in view.***


REM 5. Create a view Cheap_View from Cheap_Food that shows only the product id, flavor and food.

REM Creating view:
create or replace view Cheap_View as
select prod_id, flavour, food from Cheap_Food;

REM Displaying view:
select * from Cheap_View;

REM Savepoint:
savepoint question5;

REM Checking if updatable:
select COLUMN_NAME, UPDATABLE, INSERTABLE, DELETABLE
from USER_UPDATABLE_COLUMNS
where TABLE_NAME='CHEAP_VIEW';

REM Insertion:
insert into Cheap_View values ('61-GC','Strawberry','Cake');

REM Insertion verification:
select * from Cheap_View;
select * from products where prod_id='61-GC';

REM Updation:
update Cheap_View set prod_id='61-BLU' where prod_id='90-BLU-11';
update Cheap_View set flavour='Banana' where prod_id='51-BLU';
update Cheap_View set price=3.75 where prod_id='90-BLU-11';

REM Updation verification:
select * from Cheap_View where prod_id='61-BLU';
select * from products where prod_id='61-BLU';

select * from Cheap_View where prod_id='51-BLU';
select * from products where prod_id='51-BLU';

select * from Cheap_View where prod_id='90-BLU-11';
select * from products where prod_id='51-BLU';

REM Deletion:
delete from Cheap_View where prod_id='51-BLU';

REM Deletion verification:
select * from Cheap_View;
select * from products where prod_id='51-BLU';

REM Insertion in table:
insert into products values('88-SS-10','Blueberry','Cone', 2.95);

REM Insertion verification:
select * from Cheap_View;
select * from products where prod_id='88-SS-10';

REM Updation in table:
update products set prod_id='61-BLU' where prod_id='90-BLU-11';
update products set flavour='Chocolate' where prod_id='51-BLU';
update products set price=4.25 where prod_id='90-BLU-11';

REM Updation verification:
select * from Cheap_View where prod_id='61-BLU';
select * from products where prod_id='61-BLU';

select * from Cheap_View where prod_id='51-BLU';
select * from products where prod_id='51-BLU';

select * from Cheap_View where prod_id='90-BLU-11';
select * from products where prod_id='51-BLU';

REM Deletion in table:
delete from Cheap_View where prod_id='51-BLU';

REM Deletion verification:
select * from Cheap_View;
select * from products where prod_id='51-BLU';

rollback to question5;

REM ***Inference:***
REM ***Insertion: Insertion in view is not possible since the with check parent column is absent in child view. Insertion in parent is reflected in both. Insertion of price > 1 is not allowed due to with check option.***
REM ***Updation: All the attributes in the view are updatable (key preserved). Updation in the main table is reflected in both.***
REM ***Deletion: Deletion in view and parent is reflected in both.***


REM 6. Drop the view Cheap_View. 
drop view Cheap_View;
select * from Cheap_View;


REM **************************************** END OF FILE **********************************************