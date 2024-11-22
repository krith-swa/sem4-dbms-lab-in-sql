SQL> @z:\a3plain.sql;
SQL> REM Assignment 3
SQL> 
SQL> REM --------------------------------------------------------------------------
> REM *** ASSIGNMENT QUESTIONS ***
SQL> REM --------------------------------------------------------------------------
> 
SQL> REM **I**_____Write the following using sub-queries: _____**
SQL> 
SQL> REM 1. Display the food details that is not purchased by any of customers.
SQL> 
SQL> select * from products where prod_id not in (select item from item_list);

PROD_ID              FLAVOUR              FOOD                      PRICE       
-------------------- -------------------- -------------------- ----------       
20-BC-C-10           Chocolate            Cake                       8.95       

SQL> 
SQL> 
SQL> REM 2. Show the customer details who had placed more than 2 orders on the same date.
SQL> 
SQL> select * from customers where cust_no in (select cid from receipts group by cid,rdate having count(rec_no)>2) order by cust_no;

   CUST_NO LNAME                FNAME                                           
---------- -------------------- --------------------                            
         8 HELING               RUPERT                                          
        14 SOPKO                RAYFORD                                         

SQL> 
SQL> 
SQL> REM 3. Display the products details that has been ordered maximum by the customers. (use ALL)
SQL> 
SQL> select * from products where prod_id in (select item from item_list group by item having count(item)>= all(select max(count(item)) from item_list group by item));

PROD_ID              FLAVOUR              FOOD                      PRICE       
-------------------- -------------------- -------------------- ----------       
90-APP-11            Apple                Tart                       3.25       

SQL> 
SQL> 
SQL> REM 4. Show the number of receipts that contain the product whose price is more than the average price of its food type.
SQL> 
SQL> select count(distinct(rec_no)) as no_of_receipts from item_list where item in (select prod_id from products p where price> any (select avg(price) from products group by food having p.food = food));

NO_OF_RECEIPTS                                                                  
--------------                                                                  
           137                                                                  

SQL> 
SQL> 
SQL> 
SQL> REM **II**_____Write the following using JOIN: (Use sub-query if required)_____**
SQL> 
SQL> 
SQL> REM 5. Display the customer details along with receipt number and date for the receipts that are dated on the last day of the receipt month.
SQL> 
SQL> select c.cust_no, c.fname, c.lname, r.rec_no, r.rdate from receipts r join customers c on (c.cust_no = r.cid) where r.rdate = last_day(r.rdate);

   CUST_NO FNAME                LNAME                    REC_NO RDATE           
---------- -------------------- -------------------- ---------- ---------       
         1 JULIET               LOGAN                     85858 31-OCT-07       
         3 TRAVIS               ESPOSITA                  39829 31-OCT-07       
        11 MIGDALIA             STADICK                   60270 31-OCT-07       
        12 MELLIE               MCMAHAN                   70796 31-OCT-07       
        19 NATACHA              STENZ                     36343 31-OCT-07       
        20 STEPHEN              ZEME                      49845 31-OCT-07       

6 rows selected.

SQL> 
SQL> 
SQL> REM 6. Display the receipt number(s) and its total price for the receipt(s) that contain Twist as one among five items. Include only the receipts with total price more than $25.
SQL> 
SQL> select rec_no, sum(price) from item_list
  2  join receipts using (rec_no)
  3  join products on (prod_id = item)
  4  where rec_no in
  5  	     (select rec_no from item_list join products on (prod_id = item)
  6  	     where food = 'Twist' group by rec_no)
  7  group by rec_no having sum(price)>25 and count(*)=5;

    REC_NO SUM(PRICE)                                                           
---------- ----------                                                           
     83085      48.25                                                           
     64477      25.35                                                           
     17729      25.55                                                           

SQL> 
SQL> 
SQL> REM 7. Display the details (customer details, receipt number, item) for the product that was purchased by the least number of customers.
SQL> 
SQL> select i.item, rec_no, p.flavour, p.food, c.cust_no, c.fname, c.lname
  2  from item_list i
  3  join receipts r using (rec_no)
  4  join customers c on (c.cust_no = r.cid)
  5  join products p on (p.prod_id = i.item)
  6  where i.item in (
  7  	     select item from item_list group by item having count(item) in (
  8  		     select min(count(item)) from item_list group by item
  9  		     )
 10  	     );

ITEM                     REC_NO FLAVOUR              FOOD                       
-------------------- ---------- -------------------- --------------------       
   CUST_NO FNAME                LNAME                                           
---------- -------------------- --------------------                            
50-CH                     73716 Chocolate            Croissant                  
        18 ALMETA               DOMKOWSKI                                       
                                                                                
50-CH                     95962 Chocolate            Croissant                  
         8 RUPERT               HELING                                          
                                                                                
50-CH                     99994 Chocolate            Croissant                  
         6 JOSETTE              SLINGLAND                                       
                                                                                

ITEM                     REC_NO FLAVOUR              FOOD                       
-------------------- ---------- -------------------- --------------------       
   CUST_NO FNAME                LNAME                                           
---------- -------------------- --------------------                            
50-CH                     82056 Chocolate            Croissant                  
        18 ALMETA               DOMKOWSKI                                       
                                                                                
50-CH                     77032 Chocolate            Croissant                  
        14 RAYFORD              SOPKO                                           
                                                                                
50-CH                     49845 Chocolate            Croissant                  
        20 STEPHEN              ZEME                                            
                                                                                

6 rows selected.

SQL> 
SQL> 
SQL> REM 8. Display the customer details along with the receipt number who ordered all the flavors of Meringue in the same receipt.
SQL> 
SQL> select cust_no, fname, lname, rec_no from customers
  2  join receipts on (cust_no = cid)
  3  where rec_no in (
  4  	     select rec_no from item_list join products p on (prod_id = item)
  5  	     where flavour in (select flavour from products where food='Meringue') and food='Meringue'
  6  	     group by rec_no having count(distinct(flavour))=(select count(*) from products where food='Meringue')
  7  	     );

   CUST_NO FNAME                LNAME                    REC_NO                 
---------- -------------------- -------------------- ----------                 
         8 RUPERT               HELING                    61797                 

SQL> 
SQL> 
SQL> 
SQL> REM **III**_____Write the following using Set Operations: _____**
SQL> 
SQL> REM 9. Display the product details of both Pie and BEAR CLAW.
SQL> REM UNION
SQL> 
SQL> (select * from products where food='Pie') union (select * from products where food='Bear Claw');

PROD_ID              FLAVOUR              FOOD                      PRICE       
-------------------- -------------------- -------------------- ----------       
51-BC                Almond               Bear Claw                  1.95       
90-APIE-10           Apple                Pie                        5.25       

SQL> 
SQL> 
SQL> REM 10. Display the customers details who haven't placed any orders.
SQL> REM DIFF OF SETS
SQL> 
SQL> select * from customers where cust_no in (
  2  	     (select cust_no from customers) minus (select cid from receipts)
  3  	     );

   CUST_NO LNAME                FNAME                                           
---------- -------------------- --------------------                            
        21 JOHN                 DAVID                                           

SQL> 
SQL> 
SQL> REM 11. Display the food that has the same flavor as that of the common flavor between the Meringue and Tart.
SQL> REM INTERSECTION
SQL> 
SQL> select food from products where flavour in (
  2  	     (select flavour from products where food='Meringue')
  3  	     intersect
  4  	     (select flavour from products where food='Tart')
  5  	     );

FOOD                                                                            
--------------------                                                            
Cake                                                                            
Eclair                                                                          
Tart                                                                            
Meringue                                                                        
Croissant                                                                       

SQL> 
SQL> 
SQL> 
SQL> REM **************************************** END OF FILE **********************************************
SQL> 
SQL> spool off;
