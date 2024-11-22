SQL> set echo on
SQL> @z:\a2dml.sql
SQL> REM ***DATABASE MANAGEMENT SYSTEMS LAB***
SQL> REM ***Assignment 2: DML Fundamentals***
SQL> 
SQL> REM ***Drop nobel table***
SQL> drop table nobel;

Table dropped.

SQL> 
SQL> 
SQL> REM ***Creating nobel relation***
SQL> create table nobel(
  2  laureate_id number(3) constraint laur_pk PRIMARY KEY,
  3  name varchar2(30) constraint name_nn NOT NULL,
  4  gender char(1) constraint gen_ch check (gender in('m','f')),
  5  category char(3) constraint cat_ch check (category in('Phy','Che','Med','Lit','Pea','Eco','Lit')),
  6  field varchar2(25),
  7  year_award number(4),
  8  aff_role varchar2(30),
  9  dob date,
 10  country varchar2(10)
 11  );

Table created.

SQL> 
SQL> 
SQL> REM ***Populate nobel relation***
SQL> insert into nobel values(100,'Robert B. Laughlin','m','Phy','Condensed matter',1998,'Stanford University','01-nov-1950','USA');

1 row created.

SQL> insert into nobel values(101,'Horst L Stormer','m','Phy','Condensed matter',1998,'Columbia University','06-apr-1949','Germany');

1 row created.

SQL> insert into nobel values(102,'Daniel C. Tsui','m','Phy','Condensed matter',1998,'Princeton University','28-feb-1939','China');

1 row created.

SQL> insert into nobel values(103,'Walter Kohn','m','Che','Theoretical Chemistry',1998,'University of California','09-mar-1923','Austria');

1 row created.

SQL> insert into nobel values(104,'John Pople','m','Che','Theoretical Chemistry',1998,'North Western University','31-oct-1925','UK');

1 row created.

SQL> insert into nobel values(106,'John Hume','m','Pea','Negotiation',1998,'Labour party Leader','18-jan-1937','Ireland');

1 row created.

SQL> insert into nobel values(107,'David Trimble','m','Pea','Negotiation',1998,'Ulster Unionist party Leader','15-oct-1944','Ireland');

1 row created.

SQL> insert into nobel values(108,'Louis J Ignaroo','m','Med','Cardiovascular system',1998,'University of California','31-may-1941','USA');

1 row created.

SQL> insert into nobel values(109,'Amartya Sen','m','Eco','Welfare Economics',1998,'Trinity College','03-nov-1933','India');

1 row created.

SQL> insert into nobel values(110,'Jose Saramago','m','Lit','Portuguese',1998,null,'16-nov-1922','Portugal');

1 row created.

SQL> insert into nobel values(111,'Eric A Cornell','m','Phy','Atomic physics',2001,'University of Colorado','19-dec-1961','USA');

1 row created.

SQL> insert into nobel values(112,'Carl E Wieman','m','Phy','Atomic physics',2001,'University of Colorado','26-mar-1951','USA');

1 row created.

SQL> insert into nobel values(113,'Ryoji Noyori','m','Che','Organic Chemistry',2001,'Nagoya University','03-sep-1938','Japan');

1 row created.

SQL> insert into nobel values(114,'K Barry Sharpless','m','Che','Organic Chemistry',2001,'Scripps Research Institute','28-apr-1941','USA');

1 row created.

SQL> insert into nobel values(115,'Kofi Annan','m','Pea','World organizing',2001,'UN General','08-apr-1938','Ghana');

1 row created.

SQL> insert into nobel values(116,'Joerge A Akeriof','m','Eco','Economic of Information',2001,'University of California','17-jun-1940','USA');

1 row created.

SQL> insert into nobel values(117,'V S Naipaul','m','Lit','English',2001,null,'17-aug-1932','UK');

1 row created.

SQL> insert into nobel values(118,'Charles A Kao','m','Phy','Fiber technology',2009,'University of Hongkong','04-nov-1933','China');

1 row created.

SQL> insert into nobel values(119,'Willard S Boyle','m','Phy','Semiconductor technology',2009,'Bell Laboratories','19-aug-1924','Canada');

1 row created.

SQL> insert into nobel values(120,'George E Smith','m','Phy','Semiconductor technology',2009,'Bell Laboratories','10-may-1930','USA');

1 row created.

SQL> insert into nobel values(121,'Venkatraman Ramakrishnan','m','Che','Biochemistry',2009,'MRC Laboratory','19-aug-1952','India');

1 row created.

SQL> insert into nobel values(122,'Ada E Yonath','f','Che','Biochemistry',2009,'Weizmann Institute of Science','22-jun-1939','Isreal');

1 row created.

SQL> insert into nobel values(123,'Elizabeth H Blackburn','f','Med','Enzymes',2009,'University of California','26-nov-1948','Australia');

1 row created.

SQL> insert into nobel values(124,'Carol W Greider','f','Med','Enzymes',2009,'Johns Hopkins University','15-apr-1961','USA');

1 row created.

SQL> insert into nobel values(125,'Barack H Obama','m','Pea','World organizing',2009,'President of USA','04-aug-1961','USA');

1 row created.

SQL> insert into nobel values(126,'Oliver E Williamson','m','Eco','Economic governance',2009,'University of California','27-sep-1932','USA');

1 row created.

SQL> insert into nobel values(127,'Elinor Ostrom','m','Eco','Economic governance',2009,'Indiana University','07-aug-1933','USA');

1 row created.

SQL> insert into nobel values(128,'Herta Muller','f','Lit','German',2009,null,'17-aug-1953','Romania');

1 row created.

SQL> 
SQL> REM ***************************END OF INSERT****************************************
SQL> 
SQL> 
SQL> REM Displaying the table
SQL> select * from nobel;

LAUREATE_ID NAME                           G CAT FIELD                          
----------- ------------------------------ - --- -------------------------      
YEAR_AWARD AFF_ROLE                       DOB       COUNTRY                     
---------- ------------------------------ --------- ----------                  
        100 Robert B. Laughlin             m Phy Condensed matter               
      1998 Stanford University            01-NOV-50 USA                         
                                                                                
        101 Horst L Stormer                m Phy Condensed matter               
      1998 Columbia University            06-APR-49 Germany                     
                                                                                
        102 Daniel C. Tsui                 m Phy Condensed matter               
      1998 Princeton University           28-FEB-39 China                       
                                                                                

LAUREATE_ID NAME                           G CAT FIELD                          
----------- ------------------------------ - --- -------------------------      
YEAR_AWARD AFF_ROLE                       DOB       COUNTRY                     
---------- ------------------------------ --------- ----------                  
        103 Walter Kohn                    m Che Theoretical Chemistry          
      1998 University of California       09-MAR-23 Austria                     
                                                                                
        104 John Pople                     m Che Theoretical Chemistry          
      1998 North Western University       31-OCT-25 UK                          
                                                                                
        106 John Hume                      m Pea Negotiation                    
      1998 Labour party Leader            18-JAN-37 Ireland                     
                                                                                

LAUREATE_ID NAME                           G CAT FIELD                          
----------- ------------------------------ - --- -------------------------      
YEAR_AWARD AFF_ROLE                       DOB       COUNTRY                     
---------- ------------------------------ --------- ----------                  
        107 David Trimble                  m Pea Negotiation                    
      1998 Ulster Unionist party Leader   15-OCT-44 Ireland                     
                                                                                
        108 Louis J Ignaroo                m Med Cardiovascular system          
      1998 University of California       31-MAY-41 USA                         
                                                                                
        109 Amartya Sen                    m Eco Welfare Economics              
      1998 Trinity College                03-NOV-33 India                       
                                                                                

LAUREATE_ID NAME                           G CAT FIELD                          
----------- ------------------------------ - --- -------------------------      
YEAR_AWARD AFF_ROLE                       DOB       COUNTRY                     
---------- ------------------------------ --------- ----------                  
        110 Jose Saramago                  m Lit Portuguese                     
      1998                                16-NOV-22 Portugal                    
                                                                                
        111 Eric A Cornell                 m Phy Atomic physics                 
      2001 University of Colorado         19-DEC-61 USA                         
                                                                                
        112 Carl E Wieman                  m Phy Atomic physics                 
      2001 University of Colorado         26-MAR-51 USA                         
                                                                                

LAUREATE_ID NAME                           G CAT FIELD                          
----------- ------------------------------ - --- -------------------------      
YEAR_AWARD AFF_ROLE                       DOB       COUNTRY                     
---------- ------------------------------ --------- ----------                  
        113 Ryoji Noyori                   m Che Organic Chemistry              
      2001 Nagoya University              03-SEP-38 Japan                       
                                                                                
        114 K Barry Sharpless              m Che Organic Chemistry              
      2001 Scripps Research Institute     28-APR-41 USA                         
                                                                                
        115 Kofi Annan                     m Pea World organizing               
      2001 UN General                     08-APR-38 Ghana                       
                                                                                

LAUREATE_ID NAME                           G CAT FIELD                          
----------- ------------------------------ - --- -------------------------      
YEAR_AWARD AFF_ROLE                       DOB       COUNTRY                     
---------- ------------------------------ --------- ----------                  
        116 Joerge A Akeriof               m Eco Economic of Information        
      2001 University of California       17-JUN-40 USA                         
                                                                                
        117 V S Naipaul                    m Lit English                        
      2001                                17-AUG-32 UK                          
                                                                                
        118 Charles A Kao                  m Phy Fiber technology               
      2009 University of Hongkong         04-NOV-33 China                       
                                                                                

LAUREATE_ID NAME                           G CAT FIELD                          
----------- ------------------------------ - --- -------------------------      
YEAR_AWARD AFF_ROLE                       DOB       COUNTRY                     
---------- ------------------------------ --------- ----------                  
        119 Willard S Boyle                m Phy Semiconductor technology       
      2009 Bell Laboratories              19-AUG-24 Canada                      
                                                                                
        120 George E Smith                 m Phy Semiconductor technology       
      2009 Bell Laboratories              10-MAY-30 USA                         
                                                                                
        121 Venkatraman Ramakrishnan       m Che Biochemistry                   
      2009 MRC Laboratory                 19-AUG-52 India                       
                                                                                

LAUREATE_ID NAME                           G CAT FIELD                          
----------- ------------------------------ - --- -------------------------      
YEAR_AWARD AFF_ROLE                       DOB       COUNTRY                     
---------- ------------------------------ --------- ----------                  
        122 Ada E Yonath                   f Che Biochemistry                   
      2009 Weizmann Institute of Science  22-JUN-39 Isreal                      
                                                                                
        123 Elizabeth H Blackburn          f Med Enzymes                        
      2009 University of California       26-NOV-48 Australia                   
                                                                                
        124 Carol W Greider                f Med Enzymes                        
      2009 Johns Hopkins University       15-APR-61 USA                         
                                                                                

LAUREATE_ID NAME                           G CAT FIELD                          
----------- ------------------------------ - --- -------------------------      
YEAR_AWARD AFF_ROLE                       DOB       COUNTRY                     
---------- ------------------------------ --------- ----------                  
        125 Barack H Obama                 m Pea World organizing               
      2009 President of USA               04-AUG-61 USA                         
                                                                                
        126 Oliver E Williamson            m Eco Economic governance            
      2009 University of California       27-SEP-32 USA                         
                                                                                
        127 Elinor Ostrom                  m Eco Economic governance            
      2009 Indiana University             07-AUG-33 USA                         
                                                                                

LAUREATE_ID NAME                           G CAT FIELD                          
----------- ------------------------------ - --- -------------------------      
YEAR_AWARD AFF_ROLE                       DOB       COUNTRY                     
---------- ------------------------------ --------- ----------                  
        128 Herta Muller                   f Lit German                         
      2009                                17-AUG-53 Romania                     
                                                                                

28 rows selected.

SQL> 
SQL> 
SQL> REM ***QUESTIONS & ANSWERS***
SQL> 
SQL> 
SQL> REM ***DML***
SQL> 
SQL> REM 1. Display the nobel laureate(s) who born after 1­Jul­1960.
SQL> 
SQL> select * from nobel where dob>'01-jul-1960';

LAUREATE_ID NAME                           G CAT FIELD                          
----------- ------------------------------ - --- -------------------------      
YEAR_AWARD AFF_ROLE                       DOB       COUNTRY                     
---------- ------------------------------ --------- ----------                  
        111 Eric A Cornell                 m Phy Atomic physics                 
      2001 University of Colorado         19-DEC-61 USA                         
                                                                                
        124 Carol W Greider                f Med Enzymes                        
      2009 Johns Hopkins University       15-APR-61 USA                         
                                                                                
        125 Barack H Obama                 m Pea World organizing               
      2009 President of USA               04-AUG-61 USA                         
                                                                                

SQL> 
SQL> 
SQL> REM 2. Display the Indian laureate (name, category, field, country, year awarded) who was awarded in the Chemistry category.
SQL> 
SQL> select name, category, field, country, year_award from nobel where category='Che' and country='India';

NAME                           CAT FIELD                     COUNTRY            
------------------------------ --- ------------------------- ----------         
YEAR_AWARD                                                                      
----------                                                                      
Venkatraman Ramakrishnan       Che Biochemistry              India              
      2009                                                                      
                                                                                

SQL> 
SQL> 
SQL> REM 3. Display the laureates (name, category,field and year of award) who was awarded between 2000 and 2005 for the Physics or Chemistry category.
SQL> 
SQL> select name, category, field, year_award from nobel where (year_award between 2000 and 2005) and (category='Phy' or category='Che');

NAME                           CAT FIELD                     YEAR_AWARD         
------------------------------ --- ------------------------- ----------         
Eric A Cornell                 Phy Atomic physics                  2001         
Carl E Wieman                  Phy Atomic physics                  2001         
Ryoji Noyori                   Che Organic Chemistry               2001         
K Barry Sharpless              Che Organic Chemistry               2001         

SQL> 
SQL> 
SQL> REM 4. Display the laureates name with their age at the time of award for the Peace category.
SQL> 
SQL> select name, year_award - extract(year from dob) as age from nobel where category='Pea';

NAME                                  AGE                                       
------------------------------ ----------                                       
John Hume                              61                                       
David Trimble                          54                                       
Kofi Annan                             63                                       
Barack H Obama                         48                                       

SQL> 
SQL> 
SQL> REM 5. Display the laureates (name,category,aff_role,country) whose name starts with A or ends with a, but not from Isreal.
SQL> 
SQL> select name, category, aff_role, country from nobel where (name like 'A%' or name like '%a') and (country!='Isreal');

NAME                           CAT AFF_ROLE                       COUNTRY       
------------------------------ --- ------------------------------ ----------    
Amartya Sen                    Eco Trinity College                India         
Barack H Obama                 Pea President of USA               USA           

SQL> 
SQL> 
SQL> REM 6. Display the name, gender, affiliation, dob and country of laureates who was born in 1950s. Label the dob column as Born 1950.
SQL> 
SQL> select name, gender, aff_role, country, dob as Born_1950 from nobel where extract(year from dob) like '%195_';

NAME                           G AFF_ROLE                       COUNTRY         
------------------------------ - ------------------------------ ----------      
BORN_1950                                                                       
---------                                                                       
Robert B. Laughlin             m Stanford University            USA             
01-NOV-50                                                                       
                                                                                
Carl E Wieman                  m University of Colorado         USA             
26-MAR-51                                                                       
                                                                                
Venkatraman Ramakrishnan       m MRC Laboratory                 India           
19-AUG-52                                                                       
                                                                                

NAME                           G AFF_ROLE                       COUNTRY         
------------------------------ - ------------------------------ ----------      
BORN_1950                                                                       
---------                                                                       
Herta Muller                   f                                Romania         
17-AUG-53                                                                       
                                                                                

SQL> 
SQL> 
SQL> REM 7. Display the laureates (name,gender,category,aff_role,country) whose name starts with A, D or H. Remove the laureate if he/she do not have any affiliation. Sort the results in ascending order of name.
SQL> 
SQL> REM select name, gender, category aff_role, country from nobel where ((name like 'A%') or (name like 'D%') or (name like 'H%')) and aff_role is not null order by name;
SQL> select name, gender, category aff_role, country from nobel where substr(name,1,1) in ('A','D','H') and aff_role is not null order by name;

NAME                           G AFF COUNTRY                                    
------------------------------ - --- ----------                                 
Ada E Yonath                   f Che Isreal                                     
Amartya Sen                    m Eco India                                      
Daniel C. Tsui                 m Phy China                                      
David Trimble                  m Pea Ireland                                    
Horst L Stormer                m Phy Germany                                    

SQL> 
SQL> 
SQL> REM 8. Display the university name(s) that has to its credit by having at least 2 nobel laureate with them.
SQL> 
SQL> select distinct(aff_role) from nobel group by aff_role having count(aff_role)>=2 and substr(aff_role,1,10)='University';

AFF_ROLE                                                                        
------------------------------                                                  
University of California                                                        
University of Colorado                                                          

SQL> 
SQL> 
SQL> REM 9. List the date of birth of youngest and eldest laureates by country­wise. Label the column as Younger, Elder respectively. Include only the country having more than one laureate. Sort the output in alphabetical order of country.
SQL> 
SQL> select country, min(dob) Younger, max(dob) Elder from nobel group by country having count(country)>1 order by country;

COUNTRY    YOUNGER   ELDER                                                      
---------- --------- ---------                                                  
China      04-NOV-33 28-FEB-39                                                  
India      03-NOV-33 19-AUG-52                                                  
Ireland    18-JAN-37 15-OCT-44                                                  
UK         31-OCT-25 17-AUG-32                                                  
USA        10-MAY-30 19-DEC-61                                                  

SQL> 
SQL> 
SQL> REM 10. Show the details (year award,category,field) where the award is shared among the laureates in the same category and field. Exclude the laureates from USA.
SQL> 
SQL> select year_award, category, field from nobel where country!='USA' group by category, field, year_award having count(laureate_id)>1;

YEAR_AWARD CAT FIELD                                                            
---------- --- -------------------------                                        
      1998 Phy Condensed matter                                                 
      1998 Pea Negotiation                                                      
      1998 Che Theoretical Chemistry                                            
      2009 Che Biochemistry                                                     

SQL> 
SQL> 
SQL> 
SQL> REM ***TCL***
SQL> 
SQL> REM 11. Mark an intermediate point in the transaction (savepoint).
SQL> 
SQL> REM select * from nobel;
SQL> select count(*) no_of_entries from nobel;

NO_OF_ENTRIES                                                                   
-------------                                                                   
           28                                                                   

SQL> savepoint inter;

Savepoint created.

SQL> 
SQL> 
SQL> REM 12. Insert a new tuple into the nobel relation.
SQL> 
SQL> insert into nobel values(129,'Akira Suzuki','m','Che','Organic Synthesis',2010,'Hokkaido University','12-sep-1930','Japan');

1 row created.

SQL> select * from nobel where laureate_id=129;

LAUREATE_ID NAME                           G CAT FIELD                          
----------- ------------------------------ - --- -------------------------      
YEAR_AWARD AFF_ROLE                       DOB       COUNTRY                     
---------- ------------------------------ --------- ----------                  
        129 Akira Suzuki                   m Che Organic Synthesis              
      2010 Hokkaido University            12-SEP-30 Japan                       
                                                                                

SQL> 
SQL> 
SQL> REM 13. Update the aff_role of literature laureates as 'Linguists'.
SQL> 
SQL> update nobel set aff_role='Linguists' where category='Lit';

3 rows updated.

SQL> select * from nobel where category='Lit';

LAUREATE_ID NAME                           G CAT FIELD                          
----------- ------------------------------ - --- -------------------------      
YEAR_AWARD AFF_ROLE                       DOB       COUNTRY                     
---------- ------------------------------ --------- ----------                  
        110 Jose Saramago                  m Lit Portuguese                     
      1998 Linguists                      16-NOV-22 Portugal                    
                                                                                
        117 V S Naipaul                    m Lit English                        
      2001 Linguists                      17-AUG-32 UK                          
                                                                                
        128 Herta Muller                   f Lit German                         
      2009 Linguists                      17-AUG-53 Romania                     
                                                                                

SQL> 
SQL> 
SQL> REM 14. Delete the laureate(s) who was awarded in Enzymes field.
SQL> 
SQL> delete from nobel where field='Enzymes';

2 rows deleted.

SQL> select * from nobel where field='Enzymes';

no rows selected

SQL> 
SQL> 
SQL> REM 15. Discard the most recent update operations (rollback).
SQL> 
SQL> select count(*) no_of_entries from nobel;

NO_OF_ENTRIES                                                                   
-------------                                                                   
           27                                                                   

SQL> 
SQL> rollback to inter;

Rollback complete.

SQL> 
SQL> select count(*) no_of_entries from nobel;

NO_OF_ENTRIES                                                                   
-------------                                                                   
           28                                                                   

SQL> 
SQL> 
SQL> REM 16. Commit the changes.
SQL> 
SQL> commit;

Commit complete.

SQL> spool off
