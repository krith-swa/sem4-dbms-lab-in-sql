REM Assignment 3

REM --------------------------------------------------------------------------
REM *** ASSIGNMENT QUESTIONS ***
REM --------------------------------------------------------------------------

REM **I**_____Write the following using sub-queries: _____**

REM 1. Display the food details that is not purchased by any of customers.

select * from products where prod_id not in (select item from item_list);


REM 2. Show the customer details who had placed more than 2 orders on the same date.

select * from customers where cust_no in (select cid from receipts group by cid,rdate having count(rec_no)>2) order by cust_no;


REM 3. Display the products details that has been ordered maximum by the customers. (use ALL)

select * from products where prod_id in (select item from item_list group by item having count(item)>= all(select max(count(item)) from item_list group by item));


REM 4. Show the number of receipts that contain the product whose price is more than the average price of its food type. 

select count(distinct(rec_no)) as no_of_receipts from item_list where item in (select prod_id from products p where price> any (select avg(price) from products group by food having p.food = food));



REM **II**_____Write the following using JOIN: (Use sub-query if required)_____**


REM 5. Display the customer details along with receipt number and date for the receipts that are dated on the last day of the receipt month.

select c.cust_no, c.fname, c.lname, r.rec_no, r.rdate from receipts r join customers c on (c.cust_no = r.cid) where r.rdate = last_day(r.rdate);


REM 6. Display the receipt number(s) and its total price for the receipt(s) that contain Twist as one among five items. Include only the receipts with total price more than $25.

select rec_no, sum(price) from item_list
join receipts using (rec_no)
join products on (prod_id = item)
where rec_no in
	(select rec_no from item_list join products on (prod_id = item)
	where food = 'Twist' group by rec_no)
group by rec_no having sum(price)>25 and count(*)=5;


REM 7. Display the details (customer details, receipt number, item) for the product that was purchased by the least number of customers.

select i.item, rec_no, p.flavour, p.food, c.cust_no, c.fname, c.lname 
from item_list i
join receipts r using (rec_no) 
join customers c on (c.cust_no = r.cid) 
join products p on (p.prod_id = i.item)
where i.item in (
	select item from item_list group by item having count(item) in (
		select min(count(item)) from item_list group by item
		)
	);


REM 8. Display the customer details along with the receipt number who ordered all the flavors of Meringue in the same receipt.

select cust_no, fname, lname, rec_no from customers
join receipts on (cust_no = cid)
where rec_no in (
	select rec_no from item_list join products p on (prod_id = item)
	where flavour in (select flavour from products where food='Meringue') and food='Meringue' 
	group by rec_no having count(distinct(flavour))=(select count(*) from products where food='Meringue') 
	);



REM **III**_____Write the following using Set Operations: _____**

REM 9. Display the product details of both Pie and BEAR CLAW.
REM UNION

(select * from products where food='Pie') union (select * from products where food='Bear Claw');


REM 10. Display the customers details who haven't placed any orders.
REM DIFF OF SETS

select * from customers where cust_no in (
	(select cust_no from customers) minus (select cid from receipts)
	);


REM 11. Display the food that has the same flavor as that of the common flavor between the Meringue and Tart.
REM INTERSECTION

select food from products where flavour in (
	(select flavour from products where food='Meringue')
	intersect
	(select flavour from products where food='Tart')
	);



REM **************************************** END OF FILE **********************************************