REM ***DATABASE MANAGEMENT SYSTEMS LAB***
REM ***Assignment 2: DML Fundamentals***

REM ***Drop nobel table***
drop table nobel;


REM ***Creating nobel relation***
create table nobel(
laureate_id number(3) constraint laur_pk PRIMARY KEY,
name varchar2(30) constraint name_nn NOT NULL,
gender char(1) constraint gen_ch check (gender in('m','f')),
category char(3) constraint cat_ch check (category in('Phy','Che','Med','Lit','Pea','Eco','Lit')),
field varchar2(25),
year_award number(4),
aff_role varchar2(30),
dob date,
country varchar2(10)
);


REM ***Populate nobel relation***
insert into nobel values(100,'Robert B. Laughlin','m','Phy','Condensed matter',1998,'Stanford University','01-nov-1950','USA');
insert into nobel values(101,'Horst L Stormer','m','Phy','Condensed matter',1998,'Columbia University','06-apr-1949','Germany');
insert into nobel values(102,'Daniel C. Tsui','m','Phy','Condensed matter',1998,'Princeton University','28-feb-1939','China');
insert into nobel values(103,'Walter Kohn','m','Che','Theoretical Chemistry',1998,'University of California','09-mar-1923','Austria');
insert into nobel values(104,'John Pople','m','Che','Theoretical Chemistry',1998,'North Western University','31-oct-1925','UK');
insert into nobel values(106,'John Hume','m','Pea','Negotiation',1998,'Labour party Leader','18-jan-1937','Ireland');
insert into nobel values(107,'David Trimble','m','Pea','Negotiation',1998,'Ulster Unionist party Leader','15-oct-1944','Ireland');
insert into nobel values(108,'Louis J Ignaroo','m','Med','Cardiovascular system',1998,'University of California','31-may-1941','USA');
insert into nobel values(109,'Amartya Sen','m','Eco','Welfare Economics',1998,'Trinity College','03-nov-1933','India');
insert into nobel values(110,'Jose Saramago','m','Lit','Portuguese',1998,null,'16-nov-1922','Portugal');
insert into nobel values(111,'Eric A Cornell','m','Phy','Atomic physics',2001,'University of Colorado','19-dec-1961','USA');
insert into nobel values(112,'Carl E Wieman','m','Phy','Atomic physics',2001,'University of Colorado','26-mar-1951','USA');
insert into nobel values(113,'Ryoji Noyori','m','Che','Organic Chemistry',2001,'Nagoya University','03-sep-1938','Japan');
insert into nobel values(114,'K Barry Sharpless','m','Che','Organic Chemistry',2001,'Scripps Research Institute','28-apr-1941','USA');
insert into nobel values(115,'Kofi Annan','m','Pea','World organizing',2001,'UN General','08-apr-1938','Ghana');
insert into nobel values(116,'Joerge A Akeriof','m','Eco','Economic of Information',2001,'University of California','17-jun-1940','USA');
insert into nobel values(117,'V S Naipaul','m','Lit','English',2001,null,'17-aug-1932','UK');
insert into nobel values(118,'Charles A Kao','m','Phy','Fiber technology',2009,'University of Hongkong','04-nov-1933','China');
insert into nobel values(119,'Willard S Boyle','m','Phy','Semiconductor technology',2009,'Bell Laboratories','19-aug-1924','Canada');
insert into nobel values(120,'George E Smith','m','Phy','Semiconductor technology',2009,'Bell Laboratories','10-may-1930','USA');
insert into nobel values(121,'Venkatraman Ramakrishnan','m','Che','Biochemistry',2009,'MRC Laboratory','19-aug-1952','India');
insert into nobel values(122,'Ada E Yonath','f','Che','Biochemistry',2009,'Weizmann Institute of Science','22-jun-1939','Isreal');
insert into nobel values(123,'Elizabeth H Blackburn','f','Med','Enzymes',2009,'University of California','26-nov-1948','Australia');
insert into nobel values(124,'Carol W Greider','f','Med','Enzymes',2009,'Johns Hopkins University','15-apr-1961','USA');
insert into nobel values(125,'Barack H Obama','m','Pea','World organizing',2009,'President of USA','04-aug-1961','USA');
insert into nobel values(126,'Oliver E Williamson','m','Eco','Economic governance',2009,'University of California','27-sep-1932','USA');
insert into nobel values(127,'Elinor Ostrom','m','Eco','Economic governance',2009,'Indiana University','07-aug-1933','USA');
insert into nobel values(128,'Herta Muller','f','Lit','German',2009,null,'17-aug-1953','Romania');

REM ***************************END OF INSERT****************************************


REM Displaying the table
select * from nobel;


REM ***QUESTIONS & ANSWERS***


REM ***DML***

REM 1. Display the nobel laureate(s) who born after 1�Jul�1960.

select * from nobel where dob>'01-jul-1960';


REM 2. Display the Indian laureate (name, category, field, country, year awarded) who was awarded in the Chemistry category.

select name, category, field, country, year_award from nobel where category='Che' and country='India';


REM 3. Display the laureates (name, category,field and year of award) who was awarded between 2000 and 2005 for the Physics or Chemistry category.

select name, category, field, year_award from nobel where (year_award between 2000 and 2005) and (category='Phy' or category='Che');


REM 4. Display the laureates name with their age at the time of award for the Peace category.

select name, year_award - extract(year from dob) as age from nobel where category='Pea';


REM 5. Display the laureates (name,category,aff_role,country) whose name starts with A or ends with a, but not from Isreal.

select name, category, aff_role, country from nobel where (name like 'A%' or name like '%a') and (country!='Isreal');


REM 6. Display the name, gender, affiliation, dob and country of laureates who was born in 1950s. Label the dob column as Born 1950.

select name, gender, aff_role, country, dob as Born_1950 from nobel where extract(year from dob) like '%195_';


REM 7. Display the laureates (name,gender,category,aff_role,country) whose name starts with A, D or H. Remove the laureate if he/she do not have any affiliation. Sort the results in ascending order of name.

REM select name, gender, category aff_role, country from nobel where ((name like 'A%') or (name like 'D%') or (name like 'H%')) and aff_role is not null order by name;
select name, gender, category aff_role, country from nobel where substr(name,1,1) in ('A','D','H') and aff_role is not null order by name;


REM 8. Display the university name(s) that has to its credit by having at least 2 nobel laureate with them.

select distinct(aff_role) from nobel group by aff_role having count(aff_role)>=2 and substr(aff_role,1,10)='University';


REM 9. List the date of birth of youngest and eldest laureates by country�wise. Label the column as Younger, Elder respectively. Include only the country having more than one laureate. Sort the output in alphabetical order of country.

select country, min(dob) Younger, max(dob) Elder from nobel group by country having count(country)>1 order by country;


REM 10. Show the details (year award,category,field) where the award is shared among the laureates in the same category and field. Exclude the laureates from USA.

select year_award, category, field from nobel where country!='USA' group by category, field, year_award having count(laureate_id)>1;



REM ***TCL***

REM 11. Mark an intermediate point in the transaction (savepoint).

REM select * from nobel;
select count(*) no_of_entries from nobel;
savepoint inter;


REM 12. Insert a new tuple into the nobel relation.

insert into nobel values(129,'Akira Suzuki','m','Che','Organic Synthesis',2010,'Hokkaido University','12-sep-1930','Japan');
select * from nobel where laureate_id=129;


REM 13. Update the aff_role of literature laureates as 'Linguists'.

update nobel set aff_role='Linguists' where category='Lit';
select * from nobel where category='Lit';


REM 14. Delete the laureate(s) who was awarded in Enzymes field.

delete from nobel where field='Enzymes';
select * from nobel where field='Enzymes';


REM 15. Discard the most recent update operations (rollback).

select count(*) no_of_entries from nobel;

rollback to inter;

select count(*) no_of_entries from nobel;


REM 16. Commit the changes.

commit;
