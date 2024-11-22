SQL> @C:/Krithika/DBL/a3data.sql;
SQL> REM Assignment 3
SQL> REM Population of Bakery Database
SQL> REM --------------------------------------------------------------------------
> REM CUSTOMERS ( customer number,  Last name, First name)
SQL> REM --------------------------------------------------------------------------
> 
SQL> drop table item_list;

Table dropped.

SQL> drop table receipts;

Table dropped.

SQL> drop table products;

Table dropped.

SQL> drop table customers;

Table dropped.

SQL> 
SQL> create table customers(
  2  	     cust_no number(2) constraint c_pk primary key,
  3  	     lname varchar2(20),
  4  	     fname varchar2(20)
  5  	     );

Table created.

SQL> 
SQL> insert into customers values(1, 'LOGAN', 'JULIET');

1 row created.

SQL> insert into customers values(2, 'ARZT', 'TERRELL');

1 row created.

SQL> insert into customers values(3, 'ESPOSITA', 'TRAVIS');

1 row created.

SQL> insert into customers values(4, 'ENGLEY', 'SIXTA');

1 row created.

SQL> insert into customers values(5, 'DUNLOW', 'OSVALDO');

1 row created.

SQL> insert into customers values(6, 'SLINGLAND', 'JOSETTE');

1 row created.

SQL> insert into customers values(7, 'TOUSSAND', 'SHARRON');

1 row created.

SQL> insert into customers values(8, 'HELING', 'RUPERT');

1 row created.

SQL> insert into customers values(9, 'HAFFERKAMP', 'CUC');

1 row created.

SQL> insert into customers values(10, 'DUKELOW', 'CORETTA');

1 row created.

SQL> insert into customers values(11, 'STADICK', 'MIGDALIA');

1 row created.

SQL> insert into customers values(12, 'MCMAHAN', 'MELLIE');

1 row created.

SQL> insert into customers values(13, 'ARNN', 'KIP');

1 row created.

SQL> insert into customers values(14, 'SOPKO', 'RAYFORD');

1 row created.

SQL> insert into customers values(15, 'CALLENDAR', 'DAVID');

1 row created.

SQL> insert into customers values(16, 'CRUZEN', 'ARIANE');

1 row created.

SQL> insert into customers values(17, 'MESDAQ', 'CHARLENE');

1 row created.

SQL> insert into customers values(18, 'DOMKOWSKI', 'ALMETA');

1 row created.

SQL> insert into customers values(19, 'STENZ', 'NATACHA');

1 row created.

SQL> insert into customers values(20, 'ZEME', 'STEPHEN');

1 row created.

SQL> insert into customers values(21, 'JOHN', 'DAVID');

1 row created.

SQL> 
SQL> REM --------------------------------------------------------------------------
> REM PRODUCTS (product number,  Flavor, Food, Price)
SQL> REM --------------------------------------------------------------------------
> 
SQL> create table products(
  2  	     prod_id varchar2(20) constraint prod_pk primary key,
  3  	     flavour varchar2(20),
  4  	     food varchar2(20),
  5  	     price number(5)
  6  	     );

Table created.

SQL> 
SQL> insert into products values('20-BC-C-10','Chocolate','Cake',8.95);

1 row created.

SQL> insert into products values('20-BC-L-10','Lemon','Cake',8.95);

1 row created.

SQL> insert into products values('20-CA-7.5','Casino','Cake',15.95);

1 row created.

SQL> insert into products values('24-8x10','Opera','Cake',15.95);

1 row created.

SQL> insert into products values('25-STR-9','Strawberry','Cake',11.95);

1 row created.

SQL> insert into products values('26-8x10','Truffle','Cake',15.95);

1 row created.

SQL> insert into products values('45-CH','Chocolate','Eclair',3.25);

1 row created.

SQL> insert into products values('45-CO','Coffee','Eclair',3.5);

1 row created.

SQL> insert into products values('45-VA','Vanilla','Eclair',3.25);

1 row created.

SQL> insert into products values('46-11','Napoleon','Cake',13.49);

1 row created.

SQL> insert into products values('90-ALM-I','Almond','Tart',3.75);

1 row created.

SQL> insert into products values('90-APIE-10','Apple','Pie',5.25);

1 row created.

SQL> insert into products values('90-APP-11','Apple','Tart',3.25);

1 row created.

SQL> insert into products values('90-APR-PF','Apricot','Tart',3.25);

1 row created.

SQL> insert into products values('90-BER-11','Berry','Tart',3.25);

1 row created.

SQL> insert into products values('90-BLK-PF','Blackberry','Tart',3.25);

1 row created.

SQL> insert into products values('90-BLU-11','Blueberry','Tart',3.25);

1 row created.

SQL> insert into products values('90-CH-PF','Chocolate','Tart',3.75);

1 row created.

SQL> insert into products values('90-CHR-11','Cherry','Tart',3.25);

1 row created.

SQL> insert into products values('90-LEM-11','Lemon','Tart',3.25);

1 row created.

SQL> insert into products values('90-PEC-11','Pecan','Tart',3.75);

1 row created.

SQL> insert into products values('70-GA','Ganache','Cookie',1.15);

1 row created.

SQL> insert into products values('70-GON','Gongolais','Cookie',1.15);

1 row created.

SQL> insert into products values('70-R','Raspberry','Cookie',1.09);

1 row created.

SQL> insert into products values('70-LEM','Lemon','Cookie',0.79);

1 row created.

SQL> insert into products values('70-M-CH-DZ','Chocolate','Meringue',1.25);

1 row created.

SQL> insert into products values('70-M-VA-SM-DZ','Vanilla','Meringue',1.15);

1 row created.

SQL> insert into products values('70-MAR','Marzipan','Cookie',1.25);

1 row created.

SQL> insert into products values('70-TU','Tuile','Cookie',1.25);

1 row created.

SQL> insert into products values('70-W','Walnut','Cookie',0.79);

1 row created.

SQL> insert into products values('50-ALM','Almond','Croissant',1.45);

1 row created.

SQL> insert into products values('50-APP','Apple','Croissant',1.45);

1 row created.

SQL> insert into products values('50-APR','Apricot','Croissant',1.45);

1 row created.

SQL> insert into products values('50-CHS','Cheese','Croissant',1.75);

1 row created.

SQL> insert into products values('50-CH','Chocolate','Croissant',1.75);

1 row created.

SQL> insert into products values('51-APR','Apricot','Danish',1.15);

1 row created.

SQL> insert into products values('51-APP','Apple','Danish',1.15);

1 row created.

SQL> insert into products values('51-ATW','Almond','Twist',1.15);

1 row created.

SQL> insert into products values('51-BC','Almond','Bear Claw',1.95);

1 row created.

SQL> insert into products values('51-BLU','Blueberry','Danish',1.15);

1 row created.

SQL> 
SQL> REM --------------------------------------------------------------------------
> REM RECEIPTS(receipt number, receipt Date, Customer)
SQL> REM --------------------------------------------------------------------------
> 
SQL> create table receipts(
  2  	     rec_no number(5) constraint rec_pk primary key,
  3  	     rdate date,
  4  	     cid number(2) constraint rec_fk references customers(cust_no)
  5  	     );

Table created.

SQL> 
SQL> INSERT INTO Receipts values(18129, '28-Oct-2007', 15);

1 row created.

SQL> INSERT INTO Receipts values(51991, '17-Oct-2007', 14);

1 row created.

SQL> INSERT INTO Receipts values(83085, '12-Oct-2007', 7);

1 row created.

SQL> INSERT INTO Receipts values(70723, '28-Oct-2007', 20);

1 row created.

SQL> INSERT INTO Receipts values(13355, '19-Oct-2007', 7);

1 row created.

SQL> INSERT INTO Receipts values(52761, '27-Oct-2007', 8);

1 row created.

SQL> INSERT INTO Receipts values(99002, '13-Oct-2007', 20);

1 row created.

SQL> INSERT INTO Receipts values(58770, '22-Oct-2007', 18);

1 row created.

SQL> INSERT INTO Receipts values(84665, '10-Oct-2007', 6);

1 row created.

SQL> INSERT INTO Receipts values(55944, '16-Oct-2007', 19);

1 row created.

SQL> INSERT INTO Receipts values(42166, '14-Oct-2007', 8);

1 row created.

SQL> INSERT INTO Receipts values(16034, '10-Oct-2007', 4);

1 row created.

SQL> INSERT INTO Receipts values(25906, '29-Oct-2007', 15);

1 row created.

SQL> INSERT INTO Receipts values(27741, '25-Oct-2007', 8);

1 row created.

SQL> INSERT INTO Receipts values(64451, '10-Oct-2007', 11);

1 row created.

SQL> INSERT INTO Receipts values(41028, '6-Oct-2007', 17);

1 row created.

SQL> INSERT INTO Receipts values(73716, '29-Oct-2007', 18);

1 row created.

SQL> INSERT INTO Receipts values(76667, '14-Oct-2007', 15);

1 row created.

SQL> INSERT INTO Receipts values(21040, '3-Oct-2007', 6);

1 row created.

SQL> INSERT INTO Receipts values(48332, '15-Oct-2007', 20);

1 row created.

SQL> INSERT INTO Receipts values(35011, '10-Oct-2007', 20);

1 row created.

SQL> INSERT INTO Receipts values(95962, '26-Oct-2007', 8);

1 row created.

SQL> INSERT INTO Receipts values(44798, '4-Oct-2007', 16);

1 row created.

SQL> INSERT INTO Receipts values(60270, '31-Oct-2007', 11);

1 row created.

SQL> INSERT INTO Receipts values(21162, '4-Oct-2007', 8);

1 row created.

SQL> INSERT INTO Receipts values(77406, '9-Oct-2007', 13);

1 row created.

SQL> INSERT INTO Receipts values(32565, '24-Oct-2007', 14);

1 row created.

SQL> INSERT INTO Receipts values(36343, '31-Oct-2007', 19);

1 row created.

SQL> INSERT INTO Receipts values(96619, '7-Oct-2007', 18);

1 row created.

SQL> INSERT INTO Receipts values(86678, '24-Oct-2007', 3);

1 row created.

SQL> INSERT INTO Receipts values(44330, '20-Oct-2007', 18);

1 row created.

SQL> INSERT INTO Receipts values(91937, '21-Oct-2007', 12);

1 row created.

SQL> INSERT INTO Receipts values(21545, '22-Oct-2007', 12);

1 row created.

SQL> INSERT INTO Receipts values(29226, '26-Oct-2007', 14);

1 row created.

SQL> INSERT INTO Receipts values(25121, '20-Oct-2007', 18);

1 row created.

SQL> INSERT INTO Receipts values(54935, '16-Oct-2007', 14);

1 row created.

SQL> INSERT INTO Receipts values(36423, '24-Oct-2007', 16);

1 row created.

SQL> INSERT INTO Receipts values(83437, '15-Oct-2007', 8);

1 row created.

SQL> INSERT INTO Receipts values(49854, '12-Oct-2007', 2);

1 row created.

SQL> INSERT INTO Receipts values(99994, '21-Oct-2007', 6);

1 row created.

SQL> INSERT INTO Receipts values(21622, '10-Oct-2007', 7);

1 row created.

SQL> INSERT INTO Receipts values(64861, '15-Oct-2007', 10);

1 row created.

SQL> INSERT INTO Receipts values(33456, '5-Oct-2007', 16);

1 row created.

SQL> INSERT INTO Receipts values(75468, '21-Oct-2007', 10);

1 row created.

SQL> INSERT INTO Receipts values(56365, '14-Oct-2007', 12);

1 row created.

SQL> INSERT INTO Receipts values(91192, '10-Oct-2007', 5);

1 row created.

SQL> INSERT INTO Receipts values(82056, '7-Oct-2007', 18);

1 row created.

SQL> INSERT INTO Receipts values(27192, '28-Oct-2007', 9);

1 row created.

SQL> INSERT INTO Receipts values(59716, '30-Oct-2007', 2);

1 row created.

SQL> INSERT INTO Receipts values(82795, '8-Oct-2007', 15);

1 row created.

SQL> INSERT INTO Receipts values(26240, '7-Oct-2007', 16);

1 row created.

SQL> INSERT INTO Receipts values(56724, '9-Oct-2007', 13);

1 row created.

SQL> INSERT INTO Receipts values(70796, '31-Oct-2007', 12);

1 row created.

SQL> INSERT INTO Receipts values(37636, '20-Oct-2007', 1);

1 row created.

SQL> INSERT INTO Receipts values(63998, '13-Oct-2007', 20);

1 row created.

SQL> INSERT INTO Receipts values(48981, '24-Oct-2007', 20);

1 row created.

SQL> INSERT INTO Receipts values(66704, '29-Oct-2007', 14);

1 row created.

SQL> INSERT INTO Receipts values(12698, '23-Oct-2007', 19);

1 row created.

SQL> INSERT INTO Receipts values(79287, '30-Oct-2007', 8);

1 row created.

SQL> INSERT INTO Receipts values(55690, '15-Oct-2007', 19);

1 row created.

SQL> INSERT INTO Receipts values(94371, '22-Oct-2007', 8);

1 row created.

SQL> INSERT INTO Receipts values(26148, '19-Oct-2007', 20);

1 row created.

SQL> INSERT INTO Receipts values(11923, '9-Oct-2007', 15);

1 row created.

SQL> INSERT INTO Receipts values(46598, '3-Oct-2007', 14);

1 row created.

SQL> INSERT INTO Receipts values(76951, '27-Oct-2007', 14);

1 row created.

SQL> INSERT INTO Receipts values(85858, '31-Oct-2007', 1);

1 row created.

SQL> INSERT INTO Receipts values(85881, '13-Oct-2007', 1);

1 row created.

SQL> INSERT INTO Receipts values(89937, '20-Oct-2007', 7);

1 row created.

SQL> INSERT INTO Receipts values(66227, '10-Oct-2007', 1);

1 row created.

SQL> INSERT INTO Receipts values(60240, '17-Oct-2007', 17);

1 row created.

SQL> INSERT INTO Receipts values(86085, '16-Oct-2007', 1);

1 row created.

SQL> INSERT INTO Receipts values(67314, '23-Oct-2007', 6);

1 row created.

SQL> INSERT INTO Receipts values(10013, '17-Oct-2007', 15);

1 row created.

SQL> INSERT INTO Receipts values(26741, '24-Oct-2007', 7);

1 row created.

SQL> INSERT INTO Receipts values(38157, '23-Oct-2007', 16);

1 row created.

SQL> INSERT INTO Receipts values(45873, '5-Oct-2007', 13);

1 row created.

SQL> INSERT INTO Receipts values(37540, '3-Oct-2007', 20);

1 row created.

SQL> INSERT INTO Receipts values(11891, '30-Oct-2007', 7);

1 row created.

SQL> INSERT INTO Receipts values(61797, '30-Oct-2007', 8);

1 row created.

SQL> INSERT INTO Receipts values(52369, '15-Oct-2007', 5);

1 row created.

SQL> INSERT INTO Receipts values(96430, '4-Oct-2007', 18);

1 row created.

SQL> INSERT INTO Receipts values(64301, '12-Oct-2007', 14);

1 row created.

SQL> INSERT INTO Receipts values(45976, '3-Oct-2007', 10);

1 row created.

SQL> INSERT INTO Receipts values(39605, '12-Oct-2007', 12);

1 row created.

SQL> INSERT INTO Receipts values(52013, '5-Oct-2007', 13);

1 row created.

SQL> INSERT INTO Receipts values(88626, '25-Oct-2007', 17);

1 row created.

SQL> INSERT INTO Receipts values(53376, '30-Oct-2007', 8);

1 row created.

SQL> INSERT INTO Receipts values(15584, '13-Oct-2007', 3);

1 row created.

SQL> INSERT INTO Receipts values(73437, '1-Oct-2007', 6);

1 row created.

SQL> INSERT INTO Receipts values(24200, '16-Oct-2007', 9);

1 row created.

SQL> INSERT INTO Receipts values(92252, '25-Oct-2007', 7);

1 row created.

SQL> INSERT INTO Receipts values(39685, '28-Oct-2007', 1);

1 row created.

SQL> INSERT INTO Receipts values(61378, '8-Oct-2007', 11);

1 row created.

SQL> INSERT INTO Receipts values(96761, '14-Oct-2007', 20);

1 row created.

SQL> INSERT INTO Receipts values(26198, '12-Oct-2007', 11);

1 row created.

SQL> INSERT INTO Receipts values(78179, '24-Oct-2007', 14);

1 row created.

SQL> INSERT INTO Receipts values(68890, '27-Oct-2007', 7);

1 row created.

SQL> INSERT INTO Receipts values(75526, '22-Oct-2007', 18);

1 row created.

SQL> INSERT INTO Receipts values(86162, '10-Oct-2007', 16);

1 row created.

SQL> INSERT INTO Receipts values(13496, '30-Oct-2007', 11);

1 row created.

SQL> INSERT INTO Receipts values(60469, '20-Oct-2007', 4);

1 row created.

SQL> INSERT INTO Receipts values(50660, '18-Oct-2007', 9);

1 row created.

SQL> INSERT INTO Receipts values(64553, '8-Oct-2007', 17);

1 row created.

SQL> INSERT INTO Receipts values(57784, '15-Oct-2007', 7);

1 row created.

SQL> INSERT INTO Receipts values(84258, '22-Oct-2007', 2);

1 row created.

SQL> INSERT INTO Receipts values(68199, '4-Oct-2007', 9);

1 row created.

SQL> INSERT INTO Receipts values(78187, '17-Oct-2007', 14);

1 row created.

SQL> INSERT INTO Receipts values(81517, '10-Oct-2007', 1);

1 row created.

SQL> INSERT INTO Receipts values(18951, '14-Oct-2007', 20);

1 row created.

SQL> INSERT INTO Receipts values(20411, '8-Oct-2007', 7);

1 row created.

SQL> INSERT INTO Receipts values(55494, '20-Oct-2007', 15);

1 row created.

SQL> INSERT INTO Receipts values(42162, '16-Oct-2007', 7);

1 row created.

SQL> INSERT INTO Receipts values(49977, '18-Oct-2007', 3);

1 row created.

SQL> INSERT INTO Receipts values(89638, '7-Oct-2007', 4);

1 row created.

SQL> INSERT INTO Receipts values(73438, '18-Oct-2007', 10);

1 row created.

SQL> INSERT INTO Receipts values(96258, '12-Oct-2007', 8);

1 row created.

SQL> INSERT INTO Receipts values(19258, '25-Oct-2007', 5);

1 row created.

SQL> INSERT INTO Receipts values(12800, '22-Oct-2007', 11);

1 row created.

SQL> INSERT INTO Receipts values(81368, '17-Oct-2007', 19);

1 row created.

SQL> INSERT INTO Receipts values(70655, '6-Oct-2007', 2);

1 row created.

SQL> INSERT INTO Receipts values(19002, '19-Oct-2007', 6);

1 row created.

SQL> INSERT INTO Receipts values(31874, '13-Oct-2007', 2);

1 row created.

SQL> INSERT INTO Receipts values(72207, '15-Oct-2007', 1);

1 row created.

SQL> INSERT INTO Receipts values(65091, '9-Oct-2007', 17);

1 row created.

SQL> INSERT INTO Receipts values(42833, '22-Oct-2007', 3);

1 row created.

SQL> INSERT INTO Receipts values(72949, '2-Oct-2007', 6);

1 row created.

SQL> INSERT INTO Receipts values(46248, '12-Oct-2007', 11);

1 row created.

SQL> INSERT INTO Receipts values(38849, '25-Oct-2007', 1);

1 row created.

SQL> INSERT INTO Receipts values(86861, '26-Oct-2007', 9);

1 row created.

SQL> INSERT INTO Receipts values(32701, '19-Oct-2007', 16);

1 row created.

SQL> INSERT INTO Receipts values(89182, '29-Oct-2007', 5);

1 row created.

SQL> INSERT INTO Receipts values(68753, '11-Oct-2007', 5);

1 row created.

SQL> INSERT INTO Receipts values(39217, '19-Oct-2007', 20);

1 row created.

SQL> INSERT INTO Receipts values(96531, '12-Oct-2007', 8);

1 row created.

SQL> INSERT INTO Receipts values(53922, '13-Oct-2007', 2);

1 row created.

SQL> INSERT INTO Receipts values(64477, '16-Oct-2007', 6);

1 row created.

SQL> INSERT INTO Receipts values(99058, '3-Oct-2007', 14);

1 row created.

SQL> INSERT INTO Receipts values(77032, '28-Oct-2007', 14);

1 row created.

SQL> INSERT INTO Receipts values(15286, '11-Oct-2007', 6);

1 row created.

SQL> INSERT INTO Receipts values(59774, '2-Oct-2007', 16);

1 row created.

SQL> INSERT INTO Receipts values(35073, '23-Oct-2007', 5);

1 row created.

SQL> INSERT INTO Receipts values(34910, '7-Oct-2007', 20);

1 row created.

SQL> INSERT INTO Receipts values(17685, '2-Oct-2007', 12);

1 row created.

SQL> INSERT INTO Receipts values(45062, '23-Oct-2007', 1);

1 row created.

SQL> INSERT INTO Receipts values(39109, '2-Oct-2007', 16);

1 row created.

SQL> INSERT INTO Receipts values(37063, '22-Oct-2007', 14);

1 row created.

SQL> INSERT INTO Receipts values(18567, '13-Oct-2007', 7);

1 row created.

SQL> INSERT INTO Receipts values(37586, '3-Oct-2007', 8);

1 row created.

SQL> INSERT INTO Receipts values(62707, '7-Oct-2007', 8);

1 row created.

SQL> INSERT INTO Receipts values(28117, '9-Oct-2007', 5);

1 row created.

SQL> INSERT INTO Receipts values(64574, '2-Oct-2007', 6);

1 row created.

SQL> INSERT INTO Receipts values(40305, '25-Oct-2007', 8);

1 row created.

SQL> INSERT INTO Receipts values(33060, '29-Oct-2007', 20);

1 row created.

SQL> INSERT INTO Receipts values(12396, '10-Oct-2007', 10);

1 row created.

SQL> INSERT INTO Receipts values(43103, '7-Oct-2007', 4);

1 row created.

SQL> INSERT INTO Receipts values(39575, '20-Oct-2007', 20);

1 row created.

SQL> INSERT INTO Receipts values(70162, '9-Oct-2007', 19);

1 row created.

SQL> INSERT INTO Receipts values(23034, '15-Oct-2007', 17);

1 row created.

SQL> INSERT INTO Receipts values(79296, '3-Oct-2007', 19);

1 row created.

SQL> INSERT INTO Receipts values(74741, '12-Oct-2007', 20);

1 row created.

SQL> INSERT INTO Receipts values(98806, '15-Oct-2007', 17);

1 row created.

SQL> INSERT INTO Receipts values(43752, '5-Oct-2007', 5);

1 row created.

SQL> INSERT INTO Receipts values(47353, '12-Oct-2007', 6);

1 row created.

SQL> INSERT INTO Receipts values(39829, '31-Oct-2007', 3);

1 row created.

SQL> INSERT INTO Receipts values(87454, '21-Oct-2007', 6);

1 row created.

SQL> INSERT INTO Receipts values(76663, '4-Oct-2007', 10);

1 row created.

SQL> INSERT INTO Receipts values(85492, '20-Oct-2007', 12);

1 row created.

SQL> INSERT INTO Receipts values(48647, '9-Oct-2007', 3);

1 row created.

SQL> INSERT INTO Receipts values(61008, '9-Oct-2007', 14);

1 row created.

SQL> INSERT INTO Receipts values(96402, '4-Oct-2007', 6);

1 row created.

SQL> INSERT INTO Receipts values(35904, '21-Oct-2007', 10);

1 row created.

SQL> INSERT INTO Receipts values(49845, '31-Oct-2007', 20);

1 row created.

SQL> INSERT INTO Receipts values(46014, '16-Oct-2007', 15);

1 row created.

SQL> INSERT INTO Receipts values(46876, '6-Oct-2007', 13);

1 row created.

SQL> INSERT INTO Receipts values(34579, '8-Oct-2007', 7);

1 row created.

SQL> INSERT INTO Receipts values(17729, '16-Oct-2007', 16);

1 row created.

SQL> INSERT INTO Receipts values(74952, '16-Oct-2007', 5);

1 row created.

SQL> INSERT INTO Receipts values(61948, '4-Oct-2007', 5);

1 row created.

SQL> INSERT INTO Receipts values(41064, '25-Oct-2007', 16);

1 row created.

SQL> INSERT INTO Receipts values(17947, '27-Oct-2007', 7);

1 row created.

SQL> INSERT INTO Receipts values(20913, '7-Oct-2007', 8);

1 row created.

SQL> INSERT INTO Receipts values(95514, '9-Oct-2007', 10);

1 row created.

SQL> INSERT INTO Receipts values(24829, '7-Oct-2007', 15);

1 row created.

SQL> INSERT INTO Receipts values(44590, '12-Oct-2007', 1);

1 row created.

SQL> INSERT INTO Receipts values(65165, '4-Oct-2007', 4);

1 row created.

SQL> INSERT INTO Receipts values(89588, '9-Oct-2007', 7);

1 row created.

SQL> INSERT INTO Receipts values(53240, '3-Oct-2007', 14);

1 row created.

SQL> INSERT INTO Receipts values(46674, '29-Oct-2007', 15);

1 row created.

SQL> INSERT INTO Receipts values(67946, '18-Oct-2007', 7);

1 row created.

SQL> INSERT INTO Receipts values(31233, '20-Oct-2007', 13);

1 row created.

SQL> INSERT INTO Receipts values(15904, '6-Oct-2007', 13);

1 row created.

SQL> INSERT INTO Receipts values(17488, '20-Oct-2007', 6);

1 row created.

SQL> INSERT INTO Receipts values(97097, '23-Oct-2007', 9);

1 row created.

SQL> INSERT INTO Receipts values(50512, '27-Oct-2007', 8);

1 row created.

SQL> INSERT INTO Receipts values(11548, '21-Oct-2007', 13);

1 row created.

SQL> INSERT INTO Receipts values(29908, '14-Oct-2007', 13);

1 row created.

SQL> INSERT INTO Receipts values(20127, '7-Oct-2007', 15);

1 row created.

SQL> INSERT INTO Receipts values(41963, '29-Oct-2007', 8);

1 row created.

SQL> INSERT INTO Receipts values(16532, '21-Oct-2007', 4);

1 row created.

SQL> INSERT INTO Receipts values(34378, '23-Oct-2007', 6);

1 row created.

SQL> 
SQL> REM --------------------------------------------------------------------------
> REM ITEM_LIST (receipt number,  Ordinal, Item)
SQL> REM --------------------------------------------------------------------------
> 
SQL> create table item_list(
  2  	     rec_no number(5) constraint it_fk1 references receipts(rec_no),
  3  	     ordinal number(2),
  4  	     item varchar2(20) constraint it_fk2 references products(prod_id),
  5  	     constraint item_pk primary key(rec_no,ordinal)
  6  	     );

Table created.

SQL> 
SQL> insert into item_list values(18129, 1,  '70-TU');

1 row created.

SQL> insert into item_list values(51991, 1,  '90-APIE-10');

1 row created.

SQL> insert into item_list values(51991, 2,  '90-CH-PF');

1 row created.

SQL> insert into item_list values(51991, 3,  '90-APP-11');

1 row created.

SQL> insert into item_list values(51991, 4,  '26-8x10');

1 row created.

SQL> insert into item_list values(83085, 1,  '25-STR-9');

1 row created.

SQL> insert into item_list values(83085, 2,  '24-8x10');

1 row created.

SQL> insert into item_list values(83085, 3,  '90-APR-PF');

1 row created.

SQL> insert into item_list values(83085, 4,  '51-ATW');

1 row created.

SQL> insert into item_list values(83085, 5,  '26-8x10');

1 row created.

SQL> insert into item_list values(70723, 1,  '45-CO');

1 row created.

SQL> insert into item_list values(13355, 1,  '24-8x10');

1 row created.

SQL> insert into item_list values(13355, 2,  '70-LEM');

1 row created.

SQL> insert into item_list values(13355, 3,  '46-11');

1 row created.

SQL> insert into item_list values(52761, 1,  '90-ALM-I');

1 row created.

SQL> insert into item_list values(52761, 2,  '26-8x10');

1 row created.

SQL> insert into item_list values(52761, 3,  '50-CHS');

1 row created.

SQL> insert into item_list values(52761, 4,  '90-BLK-PF');

1 row created.

SQL> insert into item_list values(52761, 5,  '90-ALM-I');

1 row created.

SQL> insert into item_list values(99002, 1,  '50-CHS');

1 row created.

SQL> insert into item_list values(99002, 2,  '45-VA');

1 row created.

SQL> insert into item_list values(58770, 1,  '50-CHS');

1 row created.

SQL> insert into item_list values(58770, 2,  '46-11');

1 row created.

SQL> insert into item_list values(58770, 3,  '45-CH');

1 row created.

SQL> insert into item_list values(58770, 4,  '20-CA-7.5');

1 row created.

SQL> insert into item_list values(84665, 1,  '90-BER-11');

1 row created.

SQL> insert into item_list values(55944, 1,  '20-CA-7.5');

1 row created.

SQL> insert into item_list values(55944, 2,  '90-LEM-11');

1 row created.

SQL> insert into item_list values(55944, 3,  '70-R');

1 row created.

SQL> insert into item_list values(55944, 4,  '70-R');

1 row created.

SQL> insert into item_list values(55944, 5,  '50-CHS');

1 row created.

SQL> insert into item_list values(42166, 1,  '70-M-VA-SM-DZ');

1 row created.

SQL> insert into item_list values(16034, 1,  '46-11');

1 row created.

SQL> insert into item_list values(16034, 2,  '26-8x10');

1 row created.

SQL> insert into item_list values(16034, 3,  '45-CH');

1 row created.

SQL> insert into item_list values(16034, 4,  '70-R');

1 row created.

SQL> insert into item_list values(16034, 5,  '46-11');

1 row created.

SQL> insert into item_list values(25906, 1,  '25-STR-9');

1 row created.

SQL> insert into item_list values(27741, 1,  '90-BLK-PF');

1 row created.

SQL> insert into item_list values(27741, 2,  '51-BC');

1 row created.

SQL> insert into item_list values(27741, 3,  '90-APR-PF');

1 row created.

SQL> insert into item_list values(64451, 1,  '90-BER-11');

1 row created.

SQL> insert into item_list values(64451, 2,  '51-BC');

1 row created.

SQL> insert into item_list values(64451, 3,  '24-8x10');

1 row created.

SQL> insert into item_list values(64451, 4,  '90-BLK-PF');

1 row created.

SQL> insert into item_list values(41028, 1,  '90-BER-11');

1 row created.

SQL> insert into item_list values(73716, 1,  '90-PEC-11');

1 row created.

SQL> insert into item_list values(73716, 2,  '90-ALM-I');

1 row created.

SQL> insert into item_list values(73716, 3,  '70-LEM');

1 row created.

SQL> insert into item_list values(73716, 4,  '50-CH');

1 row created.

SQL> insert into item_list values(76667, 1,  '70-GON');

1 row created.

SQL> insert into item_list values(76667, 2,  '90-LEM-11');

1 row created.

SQL> insert into item_list values(21040, 1,  '70-R');

1 row created.

SQL> insert into item_list values(21040, 2,  '20-BC-L-10');

1 row created.

SQL> insert into item_list values(21040, 3,  '90-CH-PF');

1 row created.

SQL> insert into item_list values(48332, 1,  '70-GA');

1 row created.

SQL> insert into item_list values(48332, 2,  '70-R');

1 row created.

SQL> insert into item_list values(35011, 1,  '50-CHS');

1 row created.

SQL> insert into item_list values(95962, 1,  '90-APR-PF');

1 row created.

SQL> insert into item_list values(95962, 2,  '90-CHR-11');

1 row created.

SQL> insert into item_list values(95962, 3,  '50-CH');

1 row created.

SQL> insert into item_list values(95962, 4,  '45-VA');

1 row created.

SQL> insert into item_list values(44798, 1,  '90-APR-PF');

1 row created.

SQL> insert into item_list values(44798, 2,  '90-CH-PF');

1 row created.

SQL> insert into item_list values(44798, 3,  '90-APIE-10');

1 row created.

SQL> insert into item_list values(44798, 4,  '90-APP-11');

1 row created.

SQL> insert into item_list values(44798, 5,  '25-STR-9');

1 row created.

SQL> insert into item_list values(60270, 1,  '20-BC-L-10');

1 row created.

SQL> insert into item_list values(60270, 2,  '90-BLU-11');

1 row created.

SQL> insert into item_list values(21162, 1,  '90-APP-11');

1 row created.

SQL> insert into item_list values(21162, 2,  '70-TU');

1 row created.

SQL> insert into item_list values(21162, 3,  '90-APR-PF');

1 row created.

SQL> insert into item_list values(77406, 1,  '51-ATW');

1 row created.

SQL> insert into item_list values(77406, 2,  '90-BLK-PF');

1 row created.

SQL> insert into item_list values(77406, 3,  '50-APR');

1 row created.

SQL> insert into item_list values(77406, 4,  '50-APR');

1 row created.

SQL> insert into item_list values(77406, 5,  '24-8x10');

1 row created.

SQL> insert into item_list values(32565, 1,  '50-APP');

1 row created.

SQL> insert into item_list values(32565, 2,  '50-APP');

1 row created.

SQL> insert into item_list values(32565, 3,  '45-VA');

1 row created.

SQL> insert into item_list values(36343, 1,  '51-BC');

1 row created.

SQL> insert into item_list values(36343, 2,  '51-BC');

1 row created.

SQL> insert into item_list values(36343, 3,  '70-M-VA-SM-DZ');

1 row created.

SQL> insert into item_list values(36343, 4,  '50-ALM');

1 row created.

SQL> insert into item_list values(96619, 1,  '90-BLK-PF');

1 row created.

SQL> insert into item_list values(86678, 1,  '70-M-VA-SM-DZ');

1 row created.

SQL> insert into item_list values(86678, 2,  '90-LEM-11');

1 row created.

SQL> insert into item_list values(44330, 1,  '70-R');

1 row created.

SQL> insert into item_list values(44330, 2,  '90-BLU-11');

1 row created.

SQL> insert into item_list values(91937, 1,  '51-BC');

1 row created.

SQL> insert into item_list values(91937, 2,  '51-APR');

1 row created.

SQL> insert into item_list values(21545, 1,  '90-BER-11');

1 row created.

SQL> insert into item_list values(21545, 2,  '70-GA');

1 row created.

SQL> insert into item_list values(21545, 3,  '50-ALM');

1 row created.

SQL> insert into item_list values(21545, 4,  '90-BER-11');

1 row created.

SQL> insert into item_list values(21545, 5,  '45-VA');

1 row created.

SQL> insert into item_list values(29226, 1,  '90-PEC-11');

1 row created.

SQL> insert into item_list values(29226, 2,  '90-APIE-10');

1 row created.

SQL> insert into item_list values(29226, 3,  '51-BC');

1 row created.

SQL> insert into item_list values(29226, 4,  '70-W');

1 row created.

SQL> insert into item_list values(29226, 5,  '50-ALM');

1 row created.

SQL> insert into item_list values(25121, 1,  '50-CHS');

1 row created.

SQL> insert into item_list values(25121, 2,  '90-BER-11');

1 row created.

SQL> insert into item_list values(25121, 3,  '45-CH');

1 row created.

SQL> insert into item_list values(54935, 1,  '70-R');

1 row created.

SQL> insert into item_list values(54935, 2,  '45-CH');

1 row created.

SQL> insert into item_list values(36423, 1,  '45-VA');

1 row created.

SQL> insert into item_list values(83437, 1,  '90-LEM-11');

1 row created.

SQL> insert into item_list values(83437, 2,  '51-APR');

1 row created.

SQL> insert into item_list values(49854, 1,  '90-BER-11');

1 row created.

SQL> insert into item_list values(49854, 2,  '90-APP-11');

1 row created.

SQL> insert into item_list values(99994, 1,  '25-STR-9');

1 row created.

SQL> insert into item_list values(99994, 2,  '26-8x10');

1 row created.

SQL> insert into item_list values(99994, 3,  '90-PEC-11');

1 row created.

SQL> insert into item_list values(99994, 4,  '50-CH');

1 row created.

SQL> insert into item_list values(21622, 1,  '45-CO');

1 row created.

SQL> insert into item_list values(64861, 1,  '50-ALM');

1 row created.

SQL> insert into item_list values(64861, 2,  '46-11');

1 row created.

SQL> insert into item_list values(33456, 1,  '46-11');

1 row created.

SQL> insert into item_list values(33456, 2,  '90-BLK-PF');

1 row created.

SQL> insert into item_list values(75468, 1,  '70-M-CH-DZ');

1 row created.

SQL> insert into item_list values(75468, 2,  '70-M-CH-DZ');

1 row created.

SQL> insert into item_list values(75468, 3,  '90-CHR-11');

1 row created.

SQL> insert into item_list values(56365, 1,  '50-APR');

1 row created.

SQL> insert into item_list values(91192, 1,  '51-APP');

1 row created.

SQL> insert into item_list values(91192, 2,  '51-ATW');

1 row created.

SQL> insert into item_list values(91192, 3,  '50-APP');

1 row created.

SQL> insert into item_list values(82056, 1,  '90-APP-11');

1 row created.

SQL> insert into item_list values(82056, 2,  '50-CH');

1 row created.

SQL> insert into item_list values(82056, 3,  '90-BLK-PF');

1 row created.

SQL> insert into item_list values(82056, 4,  '45-CO');

1 row created.

SQL> insert into item_list values(27192, 1,  '70-R');

1 row created.

SQL> insert into item_list values(27192, 2,  '90-BLU-11');

1 row created.

SQL> insert into item_list values(27192, 3,  '70-TU');

1 row created.

SQL> insert into item_list values(59716, 1,  '51-APR');

1 row created.

SQL> insert into item_list values(59716, 2,  '70-MAR');

1 row created.

SQL> insert into item_list values(59716, 3,  '90-BLU-11');

1 row created.

SQL> insert into item_list values(59716, 4,  '45-CO');

1 row created.

SQL> insert into item_list values(59716, 5,  '90-APP-11');

1 row created.

SQL> insert into item_list values(82795, 1,  '90-APR-PF');

1 row created.

SQL> insert into item_list values(26240, 1,  '20-CA-7.5');

1 row created.

SQL> insert into item_list values(56724, 1,  '70-M-VA-SM-DZ');

1 row created.

SQL> insert into item_list values(70796, 1,  '45-CO');

1 row created.

SQL> insert into item_list values(70796, 2,  '20-BC-L-10');

1 row created.

SQL> insert into item_list values(70796, 3,  '45-CH');

1 row created.

SQL> insert into item_list values(70796, 4,  '90-BLU-11');

1 row created.

SQL> insert into item_list values(37636, 1,  '90-APR-PF');

1 row created.

SQL> insert into item_list values(37636, 2,  '90-CH-PF');

1 row created.

SQL> insert into item_list values(37636, 3,  '24-8x10');

1 row created.

SQL> insert into item_list values(63998, 1,  '70-M-VA-SM-DZ');

1 row created.

SQL> insert into item_list values(48981, 1,  '90-CHR-11');

1 row created.

SQL> insert into item_list values(48981, 2,  '50-CHS');

1 row created.

SQL> insert into item_list values(66704, 1,  '90-BER-11');

1 row created.

SQL> insert into item_list values(66704, 2,  '51-APR');

1 row created.

SQL> insert into item_list values(66704, 3,  '70-LEM');

1 row created.

SQL> insert into item_list values(12698, 1,  '51-APP');

1 row created.

SQL> insert into item_list values(12698, 2,  '70-R');

1 row created.

SQL> insert into item_list values(12698, 3,  '26-8x10');

1 row created.

SQL> insert into item_list values(79287, 1,  '90-PEC-11');

1 row created.

SQL> insert into item_list values(79287, 2,  '45-VA');

1 row created.

SQL> insert into item_list values(79287, 3,  '90-LEM-11');

1 row created.

SQL> insert into item_list values(79287, 4,  '90-APP-11');

1 row created.

SQL> insert into item_list values(79287, 5,  '51-BLU');

1 row created.

SQL> insert into item_list values(55690, 1,  '70-M-CH-DZ');

1 row created.

SQL> insert into item_list values(55690, 2,  '51-BLU');

1 row created.

SQL> insert into item_list values(55690, 3,  '90-APP-11');

1 row created.

SQL> insert into item_list values(94371, 1,  '51-BLU');

1 row created.

SQL> insert into item_list values(26148, 1,  '20-CA-7.5');

1 row created.

SQL> insert into item_list values(26148, 2,  '90-BLU-11');

1 row created.

SQL> insert into item_list values(26148, 3,  '51-BLU');

1 row created.

SQL> insert into item_list values(26148, 4,  '70-M-CH-DZ');

1 row created.

SQL> insert into item_list values(11923, 1,  '70-LEM');

1 row created.

SQL> insert into item_list values(46598, 1,  '70-R');

1 row created.

SQL> insert into item_list values(46598, 2,  '70-W');

1 row created.

SQL> insert into item_list values(46598, 3,  '70-R');

1 row created.

SQL> insert into item_list values(76951, 1,  '51-BLU');

1 row created.

SQL> insert into item_list values(85858, 1,  '20-CA-7.5');

1 row created.

SQL> insert into item_list values(85858, 2,  '70-M-VA-SM-DZ');

1 row created.

SQL> insert into item_list values(85858, 3,  '51-BLU');

1 row created.

SQL> insert into item_list values(85881, 1,  '90-APP-11');

1 row created.

SQL> insert into item_list values(89937, 1,  '51-BLU');

1 row created.

SQL> insert into item_list values(89937, 2,  '51-BC');

1 row created.

SQL> insert into item_list values(89937, 3,  '90-BER-11');

1 row created.

SQL> insert into item_list values(89937, 4,  '70-R');

1 row created.

SQL> insert into item_list values(66227, 1,  '90-APP-11');

1 row created.

SQL> insert into item_list values(66227, 2,  '90-APIE-10');

1 row created.

SQL> insert into item_list values(66227, 3,  '70-MAR');

1 row created.

SQL> insert into item_list values(66227, 4,  '90-BLK-PF');

1 row created.

SQL> insert into item_list values(60240, 1,  '90-APP-11');

1 row created.

SQL> insert into item_list values(60240, 2,  '50-ALM');

1 row created.

SQL> insert into item_list values(86085, 1,  '50-APR');

1 row created.

SQL> insert into item_list values(86085, 2,  '50-APP');

1 row created.

SQL> insert into item_list values(86085, 3,  '90-APR-PF');

1 row created.

SQL> insert into item_list values(86085, 4,  '51-ATW');

1 row created.

SQL> insert into item_list values(67314, 1,  '51-BC');

1 row created.

SQL> insert into item_list values(67314, 2,  '50-CHS');

1 row created.

SQL> insert into item_list values(67314, 3,  '70-TU');

1 row created.

SQL> insert into item_list values(67314, 4,  '20-CA-7.5');

1 row created.

SQL> insert into item_list values(10013, 1,  '70-M-CH-DZ');

1 row created.

SQL> insert into item_list values(26741, 1,  '70-GA');

1 row created.

SQL> insert into item_list values(26741, 2,  '50-APP');

1 row created.

SQL> insert into item_list values(38157, 1,  '70-MAR');

1 row created.

SQL> insert into item_list values(38157, 2,  '90-CHR-11');

1 row created.

SQL> insert into item_list values(38157, 3,  '70-LEM');

1 row created.

SQL> insert into item_list values(38157, 4,  '90-CHR-11');

1 row created.

SQL> insert into item_list values(45873, 1,  '70-M-VA-SM-DZ');

1 row created.

SQL> insert into item_list values(37540, 1,  '45-CO');

1 row created.

SQL> insert into item_list values(37540, 2,  '51-APR');

1 row created.

SQL> insert into item_list values(11891, 1,  '45-CO');

1 row created.

SQL> insert into item_list values(11891, 2,  '50-APR');

1 row created.

SQL> insert into item_list values(11891, 3,  '46-11');

1 row created.

SQL> insert into item_list values(61797, 1,  '70-GON');

1 row created.

SQL> insert into item_list values(61797, 2,  '90-CH-PF');

1 row created.

SQL> insert into item_list values(61797, 3,  '70-M-VA-SM-DZ');

1 row created.

SQL> insert into item_list values(61797, 4,  '70-M-CH-DZ');

1 row created.

SQL> insert into item_list values(61797, 5,  '90-BER-11');

1 row created.

SQL> insert into item_list values(52369, 1,  '90-CHR-11');

1 row created.

SQL> insert into item_list values(52369, 2,  '70-TU');

1 row created.

SQL> insert into item_list values(96430, 1,  '90-PEC-11');

1 row created.

SQL> insert into item_list values(64301, 1,  '70-W');

1 row created.

SQL> insert into item_list values(64301, 2,  '51-APR');

1 row created.

SQL> insert into item_list values(64301, 3,  '90-BER-11');

1 row created.

SQL> insert into item_list values(45976, 1,  '24-8x10');

1 row created.

SQL> insert into item_list values(45976, 2,  '51-BC');

1 row created.

SQL> insert into item_list values(39605, 1,  '90-BER-11');

1 row created.

SQL> insert into item_list values(52013, 1,  '70-W');

1 row created.

SQL> insert into item_list values(52013, 2,  '50-ALM');

1 row created.

SQL> insert into item_list values(52013, 3,  '90-ALM-I');

1 row created.

SQL> insert into item_list values(52013, 4,  '90-APP-11');

1 row created.

SQL> insert into item_list values(88626, 1,  '90-APP-11');

1 row created.

SQL> insert into item_list values(53376, 1,  '51-APR');

1 row created.

SQL> insert into item_list values(53376, 2,  '90-CHR-11');

1 row created.

SQL> insert into item_list values(53376, 3,  '90-APIE-10');

1 row created.

SQL> insert into item_list values(53376, 4,  '46-11');

1 row created.

SQL> insert into item_list values(53376, 5,  '90-BLU-11');

1 row created.

SQL> insert into item_list values(15584, 1,  '70-LEM');

1 row created.

SQL> insert into item_list values(73437, 1,  '70-M-CH-DZ');

1 row created.

SQL> insert into item_list values(24200, 1,  '50-CHS');

1 row created.

SQL> insert into item_list values(92252, 1,  '70-GON');

1 row created.

SQL> insert into item_list values(92252, 2,  '51-ATW');

1 row created.

SQL> insert into item_list values(92252, 3,  '51-BLU');

1 row created.

SQL> insert into item_list values(92252, 4,  '45-VA');

1 row created.

SQL> insert into item_list values(92252, 5,  '70-M-VA-SM-DZ');

1 row created.

SQL> insert into item_list values(39685, 1,  '50-APP');

1 row created.

SQL> insert into item_list values(39685, 2,  '70-M-CH-DZ');

1 row created.

SQL> insert into item_list values(39685, 3,  '90-APR-PF');

1 row created.

SQL> insert into item_list values(39685, 4,  '90-APIE-10');

1 row created.

SQL> insert into item_list values(61378, 1,  '51-APR');

1 row created.

SQL> insert into item_list values(61378, 2,  '90-BLK-PF');

1 row created.

SQL> insert into item_list values(96761, 1,  '26-8x10');

1 row created.

SQL> insert into item_list values(96761, 2,  '70-LEM');

1 row created.

SQL> insert into item_list values(96761, 3,  '50-CHS');

1 row created.

SQL> insert into item_list values(96761, 4,  '50-CHS');

1 row created.

SQL> insert into item_list values(26198, 1,  '70-GA');

1 row created.

SQL> insert into item_list values(26198, 2,  '70-GON');

1 row created.

SQL> insert into item_list values(26198, 3,  '50-APP');

1 row created.

SQL> insert into item_list values(26198, 4,  '20-BC-L-10');

1 row created.

SQL> insert into item_list values(26198, 5,  '70-R');

1 row created.

SQL> insert into item_list values(78179, 1,  '51-BLU');

1 row created.

SQL> insert into item_list values(78179, 2,  '50-CHS');

1 row created.

SQL> insert into item_list values(78179, 3,  '90-BLK-PF');

1 row created.

SQL> insert into item_list values(78179, 4,  '45-CO');

1 row created.

SQL> insert into item_list values(78179, 5,  '70-R');

1 row created.

SQL> insert into item_list values(68890, 1,  '50-ALM');

1 row created.

SQL> insert into item_list values(75526, 1,  '90-LEM-11');

1 row created.

SQL> insert into item_list values(86162, 1,  '51-BLU');

1 row created.

SQL> insert into item_list values(86162, 2,  '50-ALM');

1 row created.

SQL> insert into item_list values(86162, 3,  '50-CHS');

1 row created.

SQL> insert into item_list values(86162, 4,  '70-TU');

1 row created.

SQL> insert into item_list values(86162, 5,  '50-ALM');

1 row created.

SQL> insert into item_list values(13496, 1,  '70-W');

1 row created.

SQL> insert into item_list values(13496, 2,  '90-ALM-I');

1 row created.

SQL> insert into item_list values(13496, 3,  '51-ATW');

1 row created.

SQL> insert into item_list values(13496, 4,  '50-APP');

1 row created.

SQL> insert into item_list values(60469, 1,  '51-APR');

1 row created.

SQL> insert into item_list values(50660, 1,  '70-TU');

1 row created.

SQL> insert into item_list values(50660, 2,  '90-APIE-10');

1 row created.

SQL> insert into item_list values(64553, 1,  '51-BC');

1 row created.

SQL> insert into item_list values(64553, 2,  '90-APP-11');

1 row created.

SQL> insert into item_list values(64553, 3,  '70-LEM');

1 row created.

SQL> insert into item_list values(64553, 4,  '90-APP-11');

1 row created.

SQL> insert into item_list values(57784, 1,  '90-CH-PF');

1 row created.

SQL> insert into item_list values(84258, 1,  '51-APP');

1 row created.

SQL> insert into item_list values(84258, 2,  '51-BC');

1 row created.

SQL> insert into item_list values(68199, 1,  '51-APR');

1 row created.

SQL> insert into item_list values(68199, 2,  '24-8x10');

1 row created.

SQL> insert into item_list values(78187, 1,  '51-ATW');

1 row created.

SQL> insert into item_list values(78187, 2,  '51-ATW');

1 row created.

SQL> insert into item_list values(81517, 1,  '70-M-CH-DZ');

1 row created.

SQL> insert into item_list values(81517, 2,  '51-ATW');

1 row created.

SQL> insert into item_list values(18951, 1,  '51-APR');

1 row created.

SQL> insert into item_list values(20411, 1,  '90-APP-11');

1 row created.

SQL> insert into item_list values(20411, 2,  '90-APR-PF');

1 row created.

SQL> insert into item_list values(55494, 1,  '90-APP-11');

1 row created.

SQL> insert into item_list values(55494, 2,  '45-VA');

1 row created.

SQL> insert into item_list values(42162, 1,  '70-M-VA-SM-DZ');

1 row created.

SQL> insert into item_list values(49977, 1,  '26-8x10');

1 row created.

SQL> insert into item_list values(49977, 2,  '45-CO');

1 row created.

SQL> insert into item_list values(49977, 3,  '45-CH');

1 row created.

SQL> insert into item_list values(49977, 4,  '20-BC-L-10');

1 row created.

SQL> insert into item_list values(89638, 1,  '70-M-CH-DZ');

1 row created.

SQL> insert into item_list values(89638, 2,  '70-M-CH-DZ');

1 row created.

SQL> insert into item_list values(89638, 3,  '50-ALM');

1 row created.

SQL> insert into item_list values(89638, 4,  '90-CH-PF');

1 row created.

SQL> insert into item_list values(73438, 1,  '90-CHR-11');

1 row created.

SQL> insert into item_list values(73438, 2,  '50-APR');

1 row created.

SQL> insert into item_list values(96258, 1,  '90-CHR-11');

1 row created.

SQL> insert into item_list values(96258, 2,  '90-BLK-PF');

1 row created.

SQL> insert into item_list values(96258, 3,  '24-8x10');

1 row created.

SQL> insert into item_list values(96258, 4,  '70-LEM');

1 row created.

SQL> insert into item_list values(19258, 1,  '90-CHR-11');

1 row created.

SQL> insert into item_list values(12800, 1,  '70-LEM');

1 row created.

SQL> insert into item_list values(12800, 2,  '20-CA-7.5');

1 row created.

SQL> insert into item_list values(12800, 3,  '90-ALM-I');

1 row created.

SQL> insert into item_list values(12800, 4,  '90-APR-PF');

1 row created.

SQL> insert into item_list values(81368, 1,  '50-CHS');

1 row created.

SQL> insert into item_list values(81368, 2,  '90-CH-PF');

1 row created.

SQL> insert into item_list values(70655, 1,  '26-8x10');

1 row created.

SQL> insert into item_list values(70655, 2,  '70-TU');

1 row created.

SQL> insert into item_list values(70655, 3,  '90-ALM-I');

1 row created.

SQL> insert into item_list values(70655, 4,  '45-CO');

1 row created.

SQL> insert into item_list values(19002, 1,  '26-8x10');

1 row created.

SQL> insert into item_list values(19002, 2,  '25-STR-9');

1 row created.

SQL> insert into item_list values(31874, 1,  '70-MAR');

1 row created.

SQL> insert into item_list values(31874, 2,  '70-MAR');

1 row created.

SQL> insert into item_list values(31874, 3,  '90-LEM-11');

1 row created.

SQL> insert into item_list values(72207, 1,  '70-MAR');

1 row created.

SQL> insert into item_list values(72207, 2,  '20-CA-7.5');

1 row created.

SQL> insert into item_list values(65091, 1,  '51-APR');

1 row created.

SQL> insert into item_list values(42833, 1,  '90-CHR-11');

1 row created.

SQL> insert into item_list values(42833, 2,  '70-W');

1 row created.

SQL> insert into item_list values(42833, 3,  '51-BC');

1 row created.

SQL> insert into item_list values(72949, 1,  '51-APR');

1 row created.

SQL> insert into item_list values(72949, 2,  '70-LEM');

1 row created.

SQL> insert into item_list values(72949, 3,  '90-BLK-PF');

1 row created.

SQL> insert into item_list values(72949, 4,  '51-BLU');

1 row created.

SQL> insert into item_list values(72949, 5,  '70-W');

1 row created.

SQL> insert into item_list values(46248, 1,  '70-M-CH-DZ');

1 row created.

SQL> insert into item_list values(38849, 1,  '45-VA');

1 row created.

SQL> insert into item_list values(38849, 2,  '70-M-VA-SM-DZ');

1 row created.

SQL> insert into item_list values(38849, 3,  '46-11');

1 row created.

SQL> insert into item_list values(38849, 4,  '51-ATW');

1 row created.

SQL> insert into item_list values(38849, 5,  '50-APR');

1 row created.

SQL> insert into item_list values(86861, 1,  '20-BC-L-10');

1 row created.

SQL> insert into item_list values(86861, 2,  '50-CHS');

1 row created.

SQL> insert into item_list values(86861, 3,  '70-GON');

1 row created.

SQL> insert into item_list values(86861, 4,  '51-BLU');

1 row created.

SQL> insert into item_list values(32701, 1,  '90-BLK-PF');

1 row created.

SQL> insert into item_list values(32701, 2,  '50-APR');

1 row created.

SQL> insert into item_list values(32701, 3,  '20-CA-7.5');

1 row created.

SQL> insert into item_list values(89182, 1,  '51-APR');

1 row created.

SQL> insert into item_list values(89182, 2,  '51-APP');

1 row created.

SQL> insert into item_list values(89182, 3,  '70-LEM');

1 row created.

SQL> insert into item_list values(89182, 4,  '50-ALM');

1 row created.

SQL> insert into item_list values(89182, 5,  '45-CH');

1 row created.

SQL> insert into item_list values(68753, 1,  '70-R');

1 row created.

SQL> insert into item_list values(68753, 2,  '46-11');

1 row created.

SQL> insert into item_list values(68753, 3,  '51-BLU');

1 row created.

SQL> insert into item_list values(68753, 4,  '70-W');

1 row created.

SQL> insert into item_list values(68753, 5,  '51-BC');

1 row created.

SQL> insert into item_list values(39217, 1,  '90-ALM-I');

1 row created.

SQL> insert into item_list values(39217, 2,  '51-ATW');

1 row created.

SQL> insert into item_list values(39217, 3,  '45-CH');

1 row created.

SQL> insert into item_list values(39217, 4,  '90-BLK-PF');

1 row created.

SQL> insert into item_list values(96531, 1,  '24-8x10');

1 row created.

SQL> insert into item_list values(96531, 2,  '50-APP');

1 row created.

SQL> insert into item_list values(96531, 3,  '70-GA');

1 row created.

SQL> insert into item_list values(96531, 4,  '50-CHS');

1 row created.

SQL> insert into item_list values(53922, 1,  '70-M-VA-SM-DZ');

1 row created.

SQL> insert into item_list values(53922, 2,  '46-11');

1 row created.

SQL> insert into item_list values(53922, 3,  '20-BC-L-10');

1 row created.

SQL> insert into item_list values(53922, 4,  '70-GON');

1 row created.

SQL> insert into item_list values(64477, 1,  '70-TU');

1 row created.

SQL> insert into item_list values(64477, 2,  '90-PEC-11');

1 row created.

SQL> insert into item_list values(64477, 3,  '90-BLK-PF');

1 row created.

SQL> insert into item_list values(64477, 4,  '51-ATW');

1 row created.

SQL> insert into item_list values(64477, 5,  '20-CA-7.5');

1 row created.

SQL> insert into item_list values(99058, 1,  '50-CHS');

1 row created.

SQL> insert into item_list values(99058, 2,  '90-BLU-11');

1 row created.

SQL> insert into item_list values(99058, 3,  '51-BLU');

1 row created.

SQL> insert into item_list values(99058, 4,  '45-CH');

1 row created.

SQL> insert into item_list values(99058, 5,  '90-CHR-11');

1 row created.

SQL> insert into item_list values(77032, 1,  '50-CH');

1 row created.

SQL> insert into item_list values(77032, 2,  '46-11');

1 row created.

SQL> insert into item_list values(77032, 3,  '50-ALM');

1 row created.

SQL> insert into item_list values(77032, 4,  '70-MAR');

1 row created.

SQL> insert into item_list values(15286, 1,  '70-MAR');

1 row created.

SQL> insert into item_list values(15286, 2,  '50-APP');

1 row created.

SQL> insert into item_list values(15286, 3,  '90-APR-PF');

1 row created.

SQL> insert into item_list values(59774, 1,  '51-BLU');

1 row created.

SQL> insert into item_list values(59774, 2,  '70-GA');

1 row created.

SQL> insert into item_list values(59774, 3,  '90-ALM-I');

1 row created.

SQL> insert into item_list values(35073, 1,  '90-CHR-11');

1 row created.

SQL> insert into item_list values(35073, 2,  '70-GON');

1 row created.

SQL> insert into item_list values(34910, 1,  '51-APP');

1 row created.

SQL> insert into item_list values(34910, 2,  '24-8x10');

1 row created.

SQL> insert into item_list values(34910, 3,  '90-PEC-11');

1 row created.

SQL> insert into item_list values(34910, 4,  '51-BC');

1 row created.

SQL> insert into item_list values(17685, 1,  '20-BC-L-10');

1 row created.

SQL> insert into item_list values(17685, 2,  '50-APP');

1 row created.

SQL> insert into item_list values(17685, 3,  '51-ATW');

1 row created.

SQL> insert into item_list values(17685, 4,  '70-MAR');

1 row created.

SQL> insert into item_list values(45062, 1,  '50-CHS');

1 row created.

SQL> insert into item_list values(45062, 2,  '20-CA-7.5');

1 row created.

SQL> insert into item_list values(39109, 1,  '90-APIE-10');

1 row created.

SQL> insert into item_list values(39109, 2,  '90-APP-11');

1 row created.

SQL> insert into item_list values(37063, 1,  '70-TU');

1 row created.

SQL> insert into item_list values(37063, 2,  '90-APP-11');

1 row created.

SQL> insert into item_list values(37063, 3,  '70-W');

1 row created.

SQL> insert into item_list values(18567, 1,  '70-LEM');

1 row created.

SQL> insert into item_list values(18567, 2,  '90-APR-PF');

1 row created.

SQL> insert into item_list values(37586, 1,  '70-TU');

1 row created.

SQL> insert into item_list values(62707, 1,  '70-R');

1 row created.

SQL> insert into item_list values(62707, 2,  '90-CHR-11');

1 row created.

SQL> insert into item_list values(62707, 3,  '20-BC-L-10');

1 row created.

SQL> insert into item_list values(62707, 4,  '90-APR-PF');

1 row created.

SQL> insert into item_list values(28117, 1,  '90-CH-PF');

1 row created.

SQL> insert into item_list values(28117, 2,  '50-APP');

1 row created.

SQL> insert into item_list values(28117, 3,  '25-STR-9');

1 row created.

SQL> insert into item_list values(64574, 1,  '51-ATW');

1 row created.

SQL> insert into item_list values(64574, 2,  '70-TU');

1 row created.

SQL> insert into item_list values(64574, 3,  '70-W');

1 row created.

SQL> insert into item_list values(40305, 1,  '20-CA-7.5');

1 row created.

SQL> insert into item_list values(40305, 2,  '70-GA');

1 row created.

SQL> insert into item_list values(33060, 1,  '45-CO');

1 row created.

SQL> insert into item_list values(33060, 2,  '46-11');

1 row created.

SQL> insert into item_list values(33060, 3,  '90-BLK-PF');

1 row created.

SQL> insert into item_list values(12396, 1,  '90-BER-11');

1 row created.

SQL> insert into item_list values(12396, 2,  '70-M-VA-SM-DZ');

1 row created.

SQL> insert into item_list values(12396, 3,  '51-BC');

1 row created.

SQL> insert into item_list values(12396, 4,  '90-APR-PF');

1 row created.

SQL> insert into item_list values(12396, 5,  '20-CA-7.5');

1 row created.

SQL> insert into item_list values(43103, 1,  '70-M-CH-DZ');

1 row created.

SQL> insert into item_list values(39575, 1,  '70-M-CH-DZ');

1 row created.

SQL> insert into item_list values(70162, 1,  '46-11');

1 row created.

SQL> insert into item_list values(70162, 2,  '70-M-CH-DZ');

1 row created.

SQL> insert into item_list values(70162, 3,  '50-APR');

1 row created.

SQL> insert into item_list values(70162, 4,  '70-MAR');

1 row created.

SQL> insert into item_list values(23034, 1,  '70-M-CH-DZ');

1 row created.

SQL> insert into item_list values(23034, 2,  '90-APR-PF');

1 row created.

SQL> insert into item_list values(79296, 1,  '90-PEC-11');

1 row created.

SQL> insert into item_list values(79296, 2,  '50-APR');

1 row created.

SQL> insert into item_list values(79296, 3,  '90-ALM-I');

1 row created.

SQL> insert into item_list values(79296, 4,  '51-BC');

1 row created.

SQL> insert into item_list values(79296, 5,  '90-PEC-11');

1 row created.

SQL> insert into item_list values(74741, 1,  '90-APP-11');

1 row created.

SQL> insert into item_list values(74741, 2,  '51-APP');

1 row created.

SQL> insert into item_list values(74741, 3,  '70-MAR');

1 row created.

SQL> insert into item_list values(98806, 1,  '26-8x10');

1 row created.

SQL> insert into item_list values(98806, 2,  '50-APR');

1 row created.

SQL> insert into item_list values(98806, 3,  '90-APIE-10');

1 row created.

SQL> insert into item_list values(98806, 4,  '51-APP');

1 row created.

SQL> insert into item_list values(43752, 1,  '90-BLU-11');

1 row created.

SQL> insert into item_list values(47353, 1,  '90-APR-PF');

1 row created.

SQL> insert into item_list values(47353, 2,  '90-APIE-10');

1 row created.

SQL> insert into item_list values(47353, 3,  '70-TU');

1 row created.

SQL> insert into item_list values(47353, 4,  '90-BLK-PF');

1 row created.

SQL> insert into item_list values(39829, 1,  '20-BC-L-10');

1 row created.

SQL> insert into item_list values(87454, 1,  '90-APIE-10');

1 row created.

SQL> insert into item_list values(87454, 2,  '50-APP');

1 row created.

SQL> insert into item_list values(76663, 1,  '25-STR-9');

1 row created.

SQL> insert into item_list values(76663, 2,  '90-APP-11');

1 row created.

SQL> insert into item_list values(85492, 1,  '70-M-CH-DZ');

1 row created.

SQL> insert into item_list values(85492, 2,  '25-STR-9');

1 row created.

SQL> insert into item_list values(85492, 3,  '90-BLU-11');

1 row created.

SQL> insert into item_list values(85492, 4,  '70-M-CH-DZ');

1 row created.

SQL> insert into item_list values(48647, 1,  '51-BC');

1 row created.

SQL> insert into item_list values(48647, 2,  '90-APIE-10');

1 row created.

SQL> insert into item_list values(48647, 3,  '90-CHR-11');

1 row created.

SQL> insert into item_list values(61008, 1,  '20-CA-7.5');

1 row created.

SQL> insert into item_list values(61008, 2,  '90-APP-11');

1 row created.

SQL> insert into item_list values(96402, 1,  '50-ALM');

1 row created.

SQL> insert into item_list values(96402, 2,  '20-CA-7.5');

1 row created.

SQL> insert into item_list values(96402, 3,  '90-APP-11');

1 row created.

SQL> insert into item_list values(35904, 1,  '46-11');

1 row created.

SQL> insert into item_list values(35904, 2,  '90-APR-PF');

1 row created.

SQL> insert into item_list values(49845, 1,  '90-BLK-PF');

1 row created.

SQL> insert into item_list values(49845, 2,  '70-LEM');

1 row created.

SQL> insert into item_list values(49845, 3,  '50-CH');

1 row created.

SQL> insert into item_list values(49845, 4,  '90-PEC-11');

1 row created.

SQL> insert into item_list values(46014, 1,  '51-ATW');

1 row created.

SQL> insert into item_list values(46014, 2,  '90-APR-PF');

1 row created.

SQL> insert into item_list values(46014, 3,  '45-VA');

1 row created.

SQL> insert into item_list values(46014, 4,  '90-CH-PF');

1 row created.

SQL> insert into item_list values(46014, 5,  '90-BLK-PF');

1 row created.

SQL> insert into item_list values(46876, 1,  '70-TU');

1 row created.

SQL> insert into item_list values(46876, 2,  '51-APP');

1 row created.

SQL> insert into item_list values(34579, 1,  '24-8x10');

1 row created.

SQL> insert into item_list values(34579, 2,  '70-GA');

1 row created.

SQL> insert into item_list values(34579, 3,  '70-TU');

1 row created.

SQL> insert into item_list values(34579, 4,  '26-8x10');

1 row created.

SQL> insert into item_list values(17729, 1,  '51-ATW');

1 row created.

SQL> insert into item_list values(17729, 2,  '50-APP');

1 row created.

SQL> insert into item_list values(17729, 3,  '90-BLU-11');

1 row created.

SQL> insert into item_list values(17729, 4,  '90-CH-PF');

1 row created.

SQL> insert into item_list values(17729, 5,  '20-CA-7.5');

1 row created.

SQL> insert into item_list values(74952, 1,  '45-VA');

1 row created.

SQL> insert into item_list values(74952, 2,  '90-APP-11');

1 row created.

SQL> insert into item_list values(74952, 3,  '90-BER-11');

1 row created.

SQL> insert into item_list values(61948, 1,  '70-MAR');

1 row created.

SQL> insert into item_list values(61948, 2,  '70-GON');

1 row created.

SQL> insert into item_list values(61948, 3,  '45-CH');

1 row created.

SQL> insert into item_list values(61948, 4,  '24-8x10');

1 row created.

SQL> insert into item_list values(41064, 1,  '70-R');

1 row created.

SQL> insert into item_list values(41064, 2,  '90-APR-PF');

1 row created.

SQL> insert into item_list values(41064, 3,  '51-APP');

1 row created.

SQL> insert into item_list values(17947, 1,  '50-APP');

1 row created.

SQL> insert into item_list values(20913, 1,  '90-LEM-11');

1 row created.

SQL> insert into item_list values(20913, 2,  '70-M-CH-DZ');

1 row created.

SQL> insert into item_list values(20913, 3,  '70-LEM');

1 row created.

SQL> insert into item_list values(95514, 1,  '45-CH');

1 row created.

SQL> insert into item_list values(95514, 2,  '46-11');

1 row created.

SQL> insert into item_list values(95514, 3,  '70-MAR');

1 row created.

SQL> insert into item_list values(95514, 4,  '51-APP');

1 row created.

SQL> insert into item_list values(24829, 1,  '20-CA-7.5');

1 row created.

SQL> insert into item_list values(44590, 1,  '90-BLU-11');

1 row created.

SQL> insert into item_list values(44590, 2,  '24-8x10');

1 row created.

SQL> insert into item_list values(44590, 3,  '90-BLU-11');

1 row created.

SQL> insert into item_list values(44590, 4,  '45-CH');

1 row created.

SQL> insert into item_list values(44590, 5,  '90-PEC-11');

1 row created.

SQL> insert into item_list values(65165, 1,  '24-8x10');

1 row created.

SQL> insert into item_list values(65165, 2,  '90-ALM-I');

1 row created.

SQL> insert into item_list values(65165, 3,  '70-R');

1 row created.

SQL> insert into item_list values(65165, 4,  '45-CO');

1 row created.

SQL> insert into item_list values(89588, 1,  '90-BLK-PF');

1 row created.

SQL> insert into item_list values(53240, 1,  '25-STR-9');

1 row created.

SQL> insert into item_list values(53240, 2,  '51-ATW');

1 row created.

SQL> insert into item_list values(46674, 1,  '51-BC');

1 row created.

SQL> insert into item_list values(67946, 1,  '90-PEC-11');

1 row created.

SQL> insert into item_list values(67946, 2,  '90-APR-PF');

1 row created.

SQL> insert into item_list values(67946, 3,  '90-APR-PF');

1 row created.

SQL> insert into item_list values(67946, 4,  '90-LEM-11');

1 row created.

SQL> insert into item_list values(31233, 1,  '70-M-VA-SM-DZ');

1 row created.

SQL> insert into item_list values(31233, 2,  '50-APR');

1 row created.

SQL> insert into item_list values(31233, 3,  '50-CHS');

1 row created.

SQL> insert into item_list values(31233, 4,  '51-BC');

1 row created.

SQL> insert into item_list values(15904, 1,  '90-CH-PF');

1 row created.

SQL> insert into item_list values(17488, 1,  '50-APP');

1 row created.

SQL> insert into item_list values(97097, 1,  '70-MAR');

1 row created.

SQL> insert into item_list values(50512, 1,  '90-APP-11');

1 row created.

SQL> insert into item_list values(11548, 1,  '45-CO');

1 row created.

SQL> insert into item_list values(11548, 2,  '90-APIE-10');

1 row created.

SQL> insert into item_list values(29908, 1,  '45-VA');

1 row created.

SQL> insert into item_list values(29908, 2,  '51-ATW');

1 row created.

SQL> insert into item_list values(29908, 3,  '25-STR-9');

1 row created.

SQL> insert into item_list values(29908, 4,  '70-GA');

1 row created.

SQL> insert into item_list values(29908, 5,  '90-CH-PF');

1 row created.

SQL> insert into item_list values(20127, 1,  '90-BER-11');

1 row created.

SQL> insert into item_list values(20127, 2,  '70-M-CH-DZ');

1 row created.

SQL> insert into item_list values(41963, 1,  '50-ALM');

1 row created.

SQL> insert into item_list values(41963, 2,  '90-CH-PF');

1 row created.

SQL> insert into item_list values(16532, 1,  '50-APP');

1 row created.

SQL> insert into item_list values(16532, 2,  '70-MAR');

1 row created.

SQL> insert into item_list values(16532, 3,  '70-TU');

1 row created.

SQL> insert into item_list values(16532, 4,  '24-8x10');

1 row created.

SQL> insert into item_list values(34378, 1,  '90-CHR-11');

1 row created.

SQL> insert into item_list values(34378, 2,  '45-VA');

1 row created.

SQL> 
SQL> REM *** End of database population ***
SQL> 
SQL> REM ******************** END OF FILE ******************************************************
SQL> 
SQL> 
SQL> REM Checking tables
SQL> 
SQL> select * from customers;

   CUST_NO LNAME                FNAME                                           
---------- -------------------- --------------------                            
         1 LOGAN                JULIET                                          
         2 ARZT                 TERRELL                                         
         3 ESPOSITA             TRAVIS                                          
         4 ENGLEY               SIXTA                                           
         5 DUNLOW               OSVALDO                                         
         6 SLINGLAND            JOSETTE                                         
         7 TOUSSAND             SHARRON                                         
         8 HELING               RUPERT                                          
         9 HAFFERKAMP           CUC                                             
        10 DUKELOW              CORETTA                                         
        11 STADICK              MIGDALIA                                        

   CUST_NO LNAME                FNAME                                           
---------- -------------------- --------------------                            
        12 MCMAHAN              MELLIE                                          
        13 ARNN                 KIP                                             
        14 SOPKO                RAYFORD                                         
        15 CALLENDAR            DAVID                                           
        16 CRUZEN               ARIANE                                          
        17 MESDAQ               CHARLENE                                        
        18 DOMKOWSKI            ALMETA                                          
        19 STENZ                NATACHA                                         
        20 ZEME                 STEPHEN                                         
        21 JOHN                 DAVID                                           

21 rows selected.

SQL> select * from products;

PROD_ID              FLAVOUR              FOOD                      PRICE       
-------------------- -------------------- -------------------- ----------       
20-BC-C-10           Chocolate            Cake                          9       
20-BC-L-10           Lemon                Cake                          9       
20-CA-7.5            Casino               Cake                         16       
24-8x10              Opera                Cake                         16       
25-STR-9             Strawberry           Cake                         12       
26-8x10              Truffle              Cake                         16       
45-CH                Chocolate            Eclair                        3       
45-CO                Coffee               Eclair                        4       
45-VA                Vanilla              Eclair                        3       
46-11                Napoleon             Cake                         13       
90-ALM-I             Almond               Tart                          4       

PROD_ID              FLAVOUR              FOOD                      PRICE       
-------------------- -------------------- -------------------- ----------       
90-APIE-10           Apple                Pie                           5       
90-APP-11            Apple                Tart                          3       
90-APR-PF            Apricot              Tart                          3       
90-BER-11            Berry                Tart                          3       
90-BLK-PF            Blackberry           Tart                          3       
90-BLU-11            Blueberry            Tart                          3       
90-CH-PF             Chocolate            Tart                          4       
90-CHR-11            Cherry               Tart                          3       
90-LEM-11            Lemon                Tart                          3       
90-PEC-11            Pecan                Tart                          4       
70-GA                Ganache              Cookie                        1       

PROD_ID              FLAVOUR              FOOD                      PRICE       
-------------------- -------------------- -------------------- ----------       
70-GON               Gongolais            Cookie                        1       
70-R                 Raspberry            Cookie                        1       
70-LEM               Lemon                Cookie                        1       
70-M-CH-DZ           Chocolate            Meringue                      1       
70-M-VA-SM-DZ        Vanilla              Meringue                      1       
70-MAR               Marzipan             Cookie                        1       
70-TU                Tuile                Cookie                        1       
70-W                 Walnut               Cookie                        1       
50-ALM               Almond               Croissant                     1       
50-APP               Apple                Croissant                     1       
50-APR               Apricot              Croissant                     1       

PROD_ID              FLAVOUR              FOOD                      PRICE       
-------------------- -------------------- -------------------- ----------       
50-CHS               Cheese               Croissant                     2       
50-CH                Chocolate            Croissant                     2       
51-APR               Apricot              Danish                        1       
51-APP               Apple                Danish                        1       
51-ATW               Almond               Twist                         1       
51-BC                Almond               Bear Claw                     2       
51-BLU               Blueberry            Danish                        1       

40 rows selected.

SQL> select * from receipts;

    REC_NO RDATE            CID                                                 
---------- --------- ----------                                                 
     18129 28-OCT-07         15                                                 
     51991 17-OCT-07         14                                                 
     83085 12-OCT-07          7                                                 
     70723 28-OCT-07         20                                                 
     13355 19-OCT-07          7                                                 
     52761 27-OCT-07          8                                                 
     99002 13-OCT-07         20                                                 
     58770 22-OCT-07         18                                                 
     84665 10-OCT-07          6                                                 
     55944 16-OCT-07         19                                                 
     42166 14-OCT-07          8                                                 

    REC_NO RDATE            CID                                                 
---------- --------- ----------                                                 
     16034 10-OCT-07          4                                                 
     25906 29-OCT-07         15                                                 
     27741 25-OCT-07          8                                                 
     64451 10-OCT-07         11                                                 
     41028 06-OCT-07         17                                                 
     73716 29-OCT-07         18                                                 
     76667 14-OCT-07         15                                                 
     21040 03-OCT-07          6                                                 
     48332 15-OCT-07         20                                                 
     35011 10-OCT-07         20                                                 
     95962 26-OCT-07          8                                                 

    REC_NO RDATE            CID                                                 
---------- --------- ----------                                                 
     44798 04-OCT-07         16                                                 
     60270 31-OCT-07         11                                                 
     21162 04-OCT-07          8                                                 
     77406 09-OCT-07         13                                                 
     32565 24-OCT-07         14                                                 
     36343 31-OCT-07         19                                                 
     96619 07-OCT-07         18                                                 
     86678 24-OCT-07          3                                                 
     44330 20-OCT-07         18                                                 
     91937 21-OCT-07         12                                                 
     21545 22-OCT-07         12                                                 

    REC_NO RDATE            CID                                                 
---------- --------- ----------                                                 
     29226 26-OCT-07         14                                                 
     25121 20-OCT-07         18                                                 
     54935 16-OCT-07         14                                                 
     36423 24-OCT-07         16                                                 
     83437 15-OCT-07          8                                                 
     49854 12-OCT-07          2                                                 
     99994 21-OCT-07          6                                                 
     21622 10-OCT-07          7                                                 
     64861 15-OCT-07         10                                                 
     33456 05-OCT-07         16                                                 
     75468 21-OCT-07         10                                                 

    REC_NO RDATE            CID                                                 
---------- --------- ----------                                                 
     56365 14-OCT-07         12                                                 
     91192 10-OCT-07          5                                                 
     82056 07-OCT-07         18                                                 
     27192 28-OCT-07          9                                                 
     59716 30-OCT-07          2                                                 
     82795 08-OCT-07         15                                                 
     26240 07-OCT-07         16                                                 
     56724 09-OCT-07         13                                                 
     70796 31-OCT-07         12                                                 
     37636 20-OCT-07          1                                                 
     63998 13-OCT-07         20                                                 

    REC_NO RDATE            CID                                                 
---------- --------- ----------                                                 
     48981 24-OCT-07         20                                                 
     66704 29-OCT-07         14                                                 
     12698 23-OCT-07         19                                                 
     79287 30-OCT-07          8                                                 
     55690 15-OCT-07         19                                                 
     94371 22-OCT-07          8                                                 
     26148 19-OCT-07         20                                                 
     11923 09-OCT-07         15                                                 
     46598 03-OCT-07         14                                                 
     76951 27-OCT-07         14                                                 
     85858 31-OCT-07          1                                                 

    REC_NO RDATE            CID                                                 
---------- --------- ----------                                                 
     85881 13-OCT-07          1                                                 
     89937 20-OCT-07          7                                                 
     66227 10-OCT-07          1                                                 
     60240 17-OCT-07         17                                                 
     86085 16-OCT-07          1                                                 
     67314 23-OCT-07          6                                                 
     10013 17-OCT-07         15                                                 
     26741 24-OCT-07          7                                                 
     38157 23-OCT-07         16                                                 
     45873 05-OCT-07         13                                                 
     37540 03-OCT-07         20                                                 

    REC_NO RDATE            CID                                                 
---------- --------- ----------                                                 
     11891 30-OCT-07          7                                                 
     61797 30-OCT-07          8                                                 
     52369 15-OCT-07          5                                                 
     96430 04-OCT-07         18                                                 
     64301 12-OCT-07         14                                                 
     45976 03-OCT-07         10                                                 
     39605 12-OCT-07         12                                                 
     52013 05-OCT-07         13                                                 
     88626 25-OCT-07         17                                                 
     53376 30-OCT-07          8                                                 
     15584 13-OCT-07          3                                                 

    REC_NO RDATE            CID                                                 
---------- --------- ----------                                                 
     73437 01-OCT-07          6                                                 
     24200 16-OCT-07          9                                                 
     92252 25-OCT-07          7                                                 
     39685 28-OCT-07          1                                                 
     61378 08-OCT-07         11                                                 
     96761 14-OCT-07         20                                                 
     26198 12-OCT-07         11                                                 
     78179 24-OCT-07         14                                                 
     68890 27-OCT-07          7                                                 
     75526 22-OCT-07         18                                                 
     86162 10-OCT-07         16                                                 

    REC_NO RDATE            CID                                                 
---------- --------- ----------                                                 
     13496 30-OCT-07         11                                                 
     60469 20-OCT-07          4                                                 
     50660 18-OCT-07          9                                                 
     64553 08-OCT-07         17                                                 
     57784 15-OCT-07          7                                                 
     84258 22-OCT-07          2                                                 
     68199 04-OCT-07          9                                                 
     78187 17-OCT-07         14                                                 
     81517 10-OCT-07          1                                                 
     18951 14-OCT-07         20                                                 
     20411 08-OCT-07          7                                                 

    REC_NO RDATE            CID                                                 
---------- --------- ----------                                                 
     55494 20-OCT-07         15                                                 
     42162 16-OCT-07          7                                                 
     49977 18-OCT-07          3                                                 
     89638 07-OCT-07          4                                                 
     73438 18-OCT-07         10                                                 
     96258 12-OCT-07          8                                                 
     19258 25-OCT-07          5                                                 
     12800 22-OCT-07         11                                                 
     81368 17-OCT-07         19                                                 
     70655 06-OCT-07          2                                                 
     19002 19-OCT-07          6                                                 

    REC_NO RDATE            CID                                                 
---------- --------- ----------                                                 
     31874 13-OCT-07          2                                                 
     72207 15-OCT-07          1                                                 
     65091 09-OCT-07         17                                                 
     42833 22-OCT-07          3                                                 
     72949 02-OCT-07          6                                                 
     46248 12-OCT-07         11                                                 
     38849 25-OCT-07          1                                                 
     86861 26-OCT-07          9                                                 
     32701 19-OCT-07         16                                                 
     89182 29-OCT-07          5                                                 
     68753 11-OCT-07          5                                                 

    REC_NO RDATE            CID                                                 
---------- --------- ----------                                                 
     39217 19-OCT-07         20                                                 
     96531 12-OCT-07          8                                                 
     53922 13-OCT-07          2                                                 
     64477 16-OCT-07          6                                                 
     99058 03-OCT-07         14                                                 
     77032 28-OCT-07         14                                                 
     15286 11-OCT-07          6                                                 
     59774 02-OCT-07         16                                                 
     35073 23-OCT-07          5                                                 
     34910 07-OCT-07         20                                                 
     17685 02-OCT-07         12                                                 

    REC_NO RDATE            CID                                                 
---------- --------- ----------                                                 
     45062 23-OCT-07          1                                                 
     39109 02-OCT-07         16                                                 
     37063 22-OCT-07         14                                                 
     18567 13-OCT-07          7                                                 
     37586 03-OCT-07          8                                                 
     62707 07-OCT-07          8                                                 
     28117 09-OCT-07          5                                                 
     64574 02-OCT-07          6                                                 
     40305 25-OCT-07          8                                                 
     33060 29-OCT-07         20                                                 
     12396 10-OCT-07         10                                                 

    REC_NO RDATE            CID                                                 
---------- --------- ----------                                                 
     43103 07-OCT-07          4                                                 
     39575 20-OCT-07         20                                                 
     70162 09-OCT-07         19                                                 
     23034 15-OCT-07         17                                                 
     79296 03-OCT-07         19                                                 
     74741 12-OCT-07         20                                                 
     98806 15-OCT-07         17                                                 
     43752 05-OCT-07          5                                                 
     47353 12-OCT-07          6                                                 
     39829 31-OCT-07          3                                                 
     87454 21-OCT-07          6                                                 

    REC_NO RDATE            CID                                                 
---------- --------- ----------                                                 
     76663 04-OCT-07         10                                                 
     85492 20-OCT-07         12                                                 
     48647 09-OCT-07          3                                                 
     61008 09-OCT-07         14                                                 
     96402 04-OCT-07          6                                                 
     35904 21-OCT-07         10                                                 
     49845 31-OCT-07         20                                                 
     46014 16-OCT-07         15                                                 
     46876 06-OCT-07         13                                                 
     34579 08-OCT-07          7                                                 
     17729 16-OCT-07         16                                                 

    REC_NO RDATE            CID                                                 
---------- --------- ----------                                                 
     74952 16-OCT-07          5                                                 
     61948 04-OCT-07          5                                                 
     41064 25-OCT-07         16                                                 
     17947 27-OCT-07          7                                                 
     20913 07-OCT-07          8                                                 
     95514 09-OCT-07         10                                                 
     24829 07-OCT-07         15                                                 
     44590 12-OCT-07          1                                                 
     65165 04-OCT-07          4                                                 
     89588 09-OCT-07          7                                                 
     53240 03-OCT-07         14                                                 

    REC_NO RDATE            CID                                                 
---------- --------- ----------                                                 
     46674 29-OCT-07         15                                                 
     67946 18-OCT-07          7                                                 
     31233 20-OCT-07         13                                                 
     15904 06-OCT-07         13                                                 
     17488 20-OCT-07          6                                                 
     97097 23-OCT-07          9                                                 
     50512 27-OCT-07          8                                                 
     11548 21-OCT-07         13                                                 
     29908 14-OCT-07         13                                                 
     20127 07-OCT-07         15                                                 
     41963 29-OCT-07          8                                                 

    REC_NO RDATE            CID                                                 
---------- --------- ----------                                                 
     16532 21-OCT-07          4                                                 
     34378 23-OCT-07          6                                                 

200 rows selected.

SQL> select * from item_list;

    REC_NO    ORDINAL ITEM                                                      
---------- ---------- --------------------                                      
     18129          1 70-TU                                                     
     51991          1 90-APIE-10                                                
     51991          2 90-CH-PF                                                  
     51991          3 90-APP-11                                                 
     51991          4 26-8x10                                                   
     83085          1 25-STR-9                                                  
     83085          2 24-8x10                                                   
     83085          3 90-APR-PF                                                 
     83085          4 51-ATW                                                    
     83085          5 26-8x10                                                   
     70723          1 45-CO                                                     

    REC_NO    ORDINAL ITEM                                                      
---------- ---------- --------------------                                      
     13355          1 24-8x10                                                   
     13355          2 70-LEM                                                    
     13355          3 46-11                                                     
     52761          1 90-ALM-I                                                  
     52761          2 26-8x10                                                   
     52761          3 50-CHS                                                    
     52761          4 90-BLK-PF                                                 
     52761          5 90-ALM-I                                                  
     99002          1 50-CHS                                                    
     99002          2 45-VA                                                     
     58770          1 50-CHS                                                    

    REC_NO    ORDINAL ITEM                                                      
---------- ---------- --------------------                                      
     58770          2 46-11                                                     
     58770          3 45-CH                                                     
     58770          4 20-CA-7.5                                                 
     84665          1 90-BER-11                                                 
     55944          1 20-CA-7.5                                                 
     55944          2 90-LEM-11                                                 
     55944          3 70-R                                                      
     55944          4 70-R                                                      
     55944          5 50-CHS                                                    
     42166          1 70-M-VA-SM-DZ                                             
     16034          1 46-11                                                     

    REC_NO    ORDINAL ITEM                                                      
---------- ---------- --------------------                                      
     16034          2 26-8x10                                                   
     16034          3 45-CH                                                     
     16034          4 70-R                                                      
     16034          5 46-11                                                     
     25906          1 25-STR-9                                                  
     27741          1 90-BLK-PF                                                 
     27741          2 51-BC                                                     
     27741          3 90-APR-PF                                                 
     64451          1 90-BER-11                                                 
     64451          2 51-BC                                                     
     64451          3 24-8x10                                                   

    REC_NO    ORDINAL ITEM                                                      
---------- ---------- --------------------                                      
     64451          4 90-BLK-PF                                                 
     41028          1 90-BER-11                                                 
     73716          1 90-PEC-11                                                 
     73716          2 90-ALM-I                                                  
     73716          3 70-LEM                                                    
     73716          4 50-CH                                                     
     76667          1 70-GON                                                    
     76667          2 90-LEM-11                                                 
     21040          1 70-R                                                      
     21040          2 20-BC-L-10                                                
     21040          3 90-CH-PF                                                  

    REC_NO    ORDINAL ITEM                                                      
---------- ---------- --------------------                                      
     48332          1 70-GA                                                     
     48332          2 70-R                                                      
     35011          1 50-CHS                                                    
     95962          1 90-APR-PF                                                 
     95962          2 90-CHR-11                                                 
     95962          3 50-CH                                                     
     95962          4 45-VA                                                     
     44798          1 90-APR-PF                                                 
     44798          2 90-CH-PF                                                  
     44798          3 90-APIE-10                                                
     44798          4 90-APP-11                                                 

    REC_NO    ORDINAL ITEM                                                      
---------- ---------- --------------------                                      
     44798          5 25-STR-9                                                  
     60270          1 20-BC-L-10                                                
     60270          2 90-BLU-11                                                 
     21162          1 90-APP-11                                                 
     21162          2 70-TU                                                     
     21162          3 90-APR-PF                                                 
     77406          1 51-ATW                                                    
     77406          2 90-BLK-PF                                                 
     77406          3 50-APR                                                    
     77406          4 50-APR                                                    
     77406          5 24-8x10                                                   

    REC_NO    ORDINAL ITEM                                                      
---------- ---------- --------------------                                      
     32565          1 50-APP                                                    
     32565          2 50-APP                                                    
     32565          3 45-VA                                                     
     36343          1 51-BC                                                     
     36343          2 51-BC                                                     
     36343          3 70-M-VA-SM-DZ                                             
     36343          4 50-ALM                                                    
     96619          1 90-BLK-PF                                                 
     86678          1 70-M-VA-SM-DZ                                             
     86678          2 90-LEM-11                                                 
     44330          1 70-R                                                      

    REC_NO    ORDINAL ITEM                                                      
---------- ---------- --------------------                                      
     44330          2 90-BLU-11                                                 
     91937          1 51-BC                                                     
     91937          2 51-APR                                                    
     21545          1 90-BER-11                                                 
     21545          2 70-GA                                                     
     21545          3 50-ALM                                                    
     21545          4 90-BER-11                                                 
     21545          5 45-VA                                                     
     29226          1 90-PEC-11                                                 
     29226          2 90-APIE-10                                                
     29226          3 51-BC                                                     

    REC_NO    ORDINAL ITEM                                                      
---------- ---------- --------------------                                      
     29226          4 70-W                                                      
     29226          5 50-ALM                                                    
     25121          1 50-CHS                                                    
     25121          2 90-BER-11                                                 
     25121          3 45-CH                                                     
     54935          1 70-R                                                      
     54935          2 45-CH                                                     
     36423          1 45-VA                                                     
     83437          1 90-LEM-11                                                 
     83437          2 51-APR                                                    
     49854          1 90-BER-11                                                 

    REC_NO    ORDINAL ITEM                                                      
---------- ---------- --------------------                                      
     49854          2 90-APP-11                                                 
     99994          1 25-STR-9                                                  
     99994          2 26-8x10                                                   
     99994          3 90-PEC-11                                                 
     99994          4 50-CH                                                     
     21622          1 45-CO                                                     
     64861          1 50-ALM                                                    
     64861          2 46-11                                                     
     33456          1 46-11                                                     
     33456          2 90-BLK-PF                                                 
     75468          1 70-M-CH-DZ                                                

    REC_NO    ORDINAL ITEM                                                      
---------- ---------- --------------------                                      
     75468          2 70-M-CH-DZ                                                
     75468          3 90-CHR-11                                                 
     56365          1 50-APR                                                    
     91192          1 51-APP                                                    
     91192          2 51-ATW                                                    
     91192          3 50-APP                                                    
     82056          1 90-APP-11                                                 
     82056          2 50-CH                                                     
     82056          3 90-BLK-PF                                                 
     82056          4 45-CO                                                     
     27192          1 70-R                                                      

    REC_NO    ORDINAL ITEM                                                      
---------- ---------- --------------------                                      
     27192          2 90-BLU-11                                                 
     27192          3 70-TU                                                     
     59716          1 51-APR                                                    
     59716          2 70-MAR                                                    
     59716          3 90-BLU-11                                                 
     59716          4 45-CO                                                     
     59716          5 90-APP-11                                                 
     82795          1 90-APR-PF                                                 
     26240          1 20-CA-7.5                                                 
     56724          1 70-M-VA-SM-DZ                                             
     70796          1 45-CO                                                     

    REC_NO    ORDINAL ITEM                                                      
---------- ---------- --------------------                                      
     70796          2 20-BC-L-10                                                
     70796          3 45-CH                                                     
     70796          4 90-BLU-11                                                 
     37636          1 90-APR-PF                                                 
     37636          2 90-CH-PF                                                  
     37636          3 24-8x10                                                   
     63998          1 70-M-VA-SM-DZ                                             
     48981          1 90-CHR-11                                                 
     48981          2 50-CHS                                                    
     66704          1 90-BER-11                                                 
     66704          2 51-APR                                                    

    REC_NO    ORDINAL ITEM                                                      
---------- ---------- --------------------                                      
     66704          3 70-LEM                                                    
     12698          1 51-APP                                                    
     12698          2 70-R                                                      
     12698          3 26-8x10                                                   
     79287          1 90-PEC-11                                                 
     79287          2 45-VA                                                     
     79287          3 90-LEM-11                                                 
     79287          4 90-APP-11                                                 
     79287          5 51-BLU                                                    
     55690          1 70-M-CH-DZ                                                
     55690          2 51-BLU                                                    

    REC_NO    ORDINAL ITEM                                                      
---------- ---------- --------------------                                      
     55690          3 90-APP-11                                                 
     94371          1 51-BLU                                                    
     26148          1 20-CA-7.5                                                 
     26148          2 90-BLU-11                                                 
     26148          3 51-BLU                                                    
     26148          4 70-M-CH-DZ                                                
     11923          1 70-LEM                                                    
     46598          1 70-R                                                      
     46598          2 70-W                                                      
     46598          3 70-R                                                      
     76951          1 51-BLU                                                    

    REC_NO    ORDINAL ITEM                                                      
---------- ---------- --------------------                                      
     85858          1 20-CA-7.5                                                 
     85858          2 70-M-VA-SM-DZ                                             
     85858          3 51-BLU                                                    
     85881          1 90-APP-11                                                 
     89937          1 51-BLU                                                    
     89937          2 51-BC                                                     
     89937          3 90-BER-11                                                 
     89937          4 70-R                                                      
     66227          1 90-APP-11                                                 
     66227          2 90-APIE-10                                                
     66227          3 70-MAR                                                    

    REC_NO    ORDINAL ITEM                                                      
---------- ---------- --------------------                                      
     66227          4 90-BLK-PF                                                 
     60240          1 90-APP-11                                                 
     60240          2 50-ALM                                                    
     86085          1 50-APR                                                    
     86085          2 50-APP                                                    
     86085          3 90-APR-PF                                                 
     86085          4 51-ATW                                                    
     67314          1 51-BC                                                     
     67314          2 50-CHS                                                    
     67314          3 70-TU                                                     
     67314          4 20-CA-7.5                                                 

    REC_NO    ORDINAL ITEM                                                      
---------- ---------- --------------------                                      
     10013          1 70-M-CH-DZ                                                
     26741          1 70-GA                                                     
     26741          2 50-APP                                                    
     38157          1 70-MAR                                                    
     38157          2 90-CHR-11                                                 
     38157          3 70-LEM                                                    
     38157          4 90-CHR-11                                                 
     45873          1 70-M-VA-SM-DZ                                             
     37540          1 45-CO                                                     
     37540          2 51-APR                                                    
     11891          1 45-CO                                                     

    REC_NO    ORDINAL ITEM                                                      
---------- ---------- --------------------                                      
     11891          2 50-APR                                                    
     11891          3 46-11                                                     
     61797          1 70-GON                                                    
     61797          2 90-CH-PF                                                  
     61797          3 70-M-VA-SM-DZ                                             
     61797          4 70-M-CH-DZ                                                
     61797          5 90-BER-11                                                 
     52369          1 90-CHR-11                                                 
     52369          2 70-TU                                                     
     96430          1 90-PEC-11                                                 
     64301          1 70-W                                                      

    REC_NO    ORDINAL ITEM                                                      
---------- ---------- --------------------                                      
     64301          2 51-APR                                                    
     64301          3 90-BER-11                                                 
     45976          1 24-8x10                                                   
     45976          2 51-BC                                                     
     39605          1 90-BER-11                                                 
     52013          1 70-W                                                      
     52013          2 50-ALM                                                    
     52013          3 90-ALM-I                                                  
     52013          4 90-APP-11                                                 
     88626          1 90-APP-11                                                 
     53376          1 51-APR                                                    

    REC_NO    ORDINAL ITEM                                                      
---------- ---------- --------------------                                      
     53376          2 90-CHR-11                                                 
     53376          3 90-APIE-10                                                
     53376          4 46-11                                                     
     53376          5 90-BLU-11                                                 
     15584          1 70-LEM                                                    
     73437          1 70-M-CH-DZ                                                
     24200          1 50-CHS                                                    
     92252          1 70-GON                                                    
     92252          2 51-ATW                                                    
     92252          3 51-BLU                                                    
     92252          4 45-VA                                                     

    REC_NO    ORDINAL ITEM                                                      
---------- ---------- --------------------                                      
     92252          5 70-M-VA-SM-DZ                                             
     39685          1 50-APP                                                    
     39685          2 70-M-CH-DZ                                                
     39685          3 90-APR-PF                                                 
     39685          4 90-APIE-10                                                
     61378          1 51-APR                                                    
     61378          2 90-BLK-PF                                                 
     96761          1 26-8x10                                                   
     96761          2 70-LEM                                                    
     96761          3 50-CHS                                                    
     96761          4 50-CHS                                                    

    REC_NO    ORDINAL ITEM                                                      
---------- ---------- --------------------                                      
     26198          1 70-GA                                                     
     26198          2 70-GON                                                    
     26198          3 50-APP                                                    
     26198          4 20-BC-L-10                                                
     26198          5 70-R                                                      
     78179          1 51-BLU                                                    
     78179          2 50-CHS                                                    
     78179          3 90-BLK-PF                                                 
     78179          4 45-CO                                                     
     78179          5 70-R                                                      
     68890          1 50-ALM                                                    

    REC_NO    ORDINAL ITEM                                                      
---------- ---------- --------------------                                      
     75526          1 90-LEM-11                                                 
     86162          1 51-BLU                                                    
     86162          2 50-ALM                                                    
     86162          3 50-CHS                                                    
     86162          4 70-TU                                                     
     86162          5 50-ALM                                                    
     13496          1 70-W                                                      
     13496          2 90-ALM-I                                                  
     13496          3 51-ATW                                                    
     13496          4 50-APP                                                    
     60469          1 51-APR                                                    

    REC_NO    ORDINAL ITEM                                                      
---------- ---------- --------------------                                      
     50660          1 70-TU                                                     
     50660          2 90-APIE-10                                                
     64553          1 51-BC                                                     
     64553          2 90-APP-11                                                 
     64553          3 70-LEM                                                    
     64553          4 90-APP-11                                                 
     57784          1 90-CH-PF                                                  
     84258          1 51-APP                                                    
     84258          2 51-BC                                                     
     68199          1 51-APR                                                    
     68199          2 24-8x10                                                   

    REC_NO    ORDINAL ITEM                                                      
---------- ---------- --------------------                                      
     78187          1 51-ATW                                                    
     78187          2 51-ATW                                                    
     81517          1 70-M-CH-DZ                                                
     81517          2 51-ATW                                                    
     18951          1 51-APR                                                    
     20411          1 90-APP-11                                                 
     20411          2 90-APR-PF                                                 
     55494          1 90-APP-11                                                 
     55494          2 45-VA                                                     
     42162          1 70-M-VA-SM-DZ                                             
     49977          1 26-8x10                                                   

    REC_NO    ORDINAL ITEM                                                      
---------- ---------- --------------------                                      
     49977          2 45-CO                                                     
     49977          3 45-CH                                                     
     49977          4 20-BC-L-10                                                
     89638          1 70-M-CH-DZ                                                
     89638          2 70-M-CH-DZ                                                
     89638          3 50-ALM                                                    
     89638          4 90-CH-PF                                                  
     73438          1 90-CHR-11                                                 
     73438          2 50-APR                                                    
     96258          1 90-CHR-11                                                 
     96258          2 90-BLK-PF                                                 

    REC_NO    ORDINAL ITEM                                                      
---------- ---------- --------------------                                      
     96258          3 24-8x10                                                   
     96258          4 70-LEM                                                    
     19258          1 90-CHR-11                                                 
     12800          1 70-LEM                                                    
     12800          2 20-CA-7.5                                                 
     12800          3 90-ALM-I                                                  
     12800          4 90-APR-PF                                                 
     81368          1 50-CHS                                                    
     81368          2 90-CH-PF                                                  
     70655          1 26-8x10                                                   
     70655          2 70-TU                                                     

    REC_NO    ORDINAL ITEM                                                      
---------- ---------- --------------------                                      
     70655          3 90-ALM-I                                                  
     70655          4 45-CO                                                     
     19002          1 26-8x10                                                   
     19002          2 25-STR-9                                                  
     31874          1 70-MAR                                                    
     31874          2 70-MAR                                                    
     31874          3 90-LEM-11                                                 
     72207          1 70-MAR                                                    
     72207          2 20-CA-7.5                                                 
     65091          1 51-APR                                                    
     42833          1 90-CHR-11                                                 

    REC_NO    ORDINAL ITEM                                                      
---------- ---------- --------------------                                      
     42833          2 70-W                                                      
     42833          3 51-BC                                                     
     72949          1 51-APR                                                    
     72949          2 70-LEM                                                    
     72949          3 90-BLK-PF                                                 
     72949          4 51-BLU                                                    
     72949          5 70-W                                                      
     46248          1 70-M-CH-DZ                                                
     38849          1 45-VA                                                     
     38849          2 70-M-VA-SM-DZ                                             
     38849          3 46-11                                                     

    REC_NO    ORDINAL ITEM                                                      
---------- ---------- --------------------                                      
     38849          4 51-ATW                                                    
     38849          5 50-APR                                                    
     86861          1 20-BC-L-10                                                
     86861          2 50-CHS                                                    
     86861          3 70-GON                                                    
     86861          4 51-BLU                                                    
     32701          1 90-BLK-PF                                                 
     32701          2 50-APR                                                    
     32701          3 20-CA-7.5                                                 
     89182          1 51-APR                                                    
     89182          2 51-APP                                                    

    REC_NO    ORDINAL ITEM                                                      
---------- ---------- --------------------                                      
     89182          3 70-LEM                                                    
     89182          4 50-ALM                                                    
     89182          5 45-CH                                                     
     68753          1 70-R                                                      
     68753          2 46-11                                                     
     68753          3 51-BLU                                                    
     68753          4 70-W                                                      
     68753          5 51-BC                                                     
     39217          1 90-ALM-I                                                  
     39217          2 51-ATW                                                    
     39217          3 45-CH                                                     

    REC_NO    ORDINAL ITEM                                                      
---------- ---------- --------------------                                      
     39217          4 90-BLK-PF                                                 
     96531          1 24-8x10                                                   
     96531          2 50-APP                                                    
     96531          3 70-GA                                                     
     96531          4 50-CHS                                                    
     53922          1 70-M-VA-SM-DZ                                             
     53922          2 46-11                                                     
     53922          3 20-BC-L-10                                                
     53922          4 70-GON                                                    
     64477          1 70-TU                                                     
     64477          2 90-PEC-11                                                 

    REC_NO    ORDINAL ITEM                                                      
---------- ---------- --------------------                                      
     64477          3 90-BLK-PF                                                 
     64477          4 51-ATW                                                    
     64477          5 20-CA-7.5                                                 
     99058          1 50-CHS                                                    
     99058          2 90-BLU-11                                                 
     99058          3 51-BLU                                                    
     99058          4 45-CH                                                     
     99058          5 90-CHR-11                                                 
     77032          1 50-CH                                                     
     77032          2 46-11                                                     
     77032          3 50-ALM                                                    

    REC_NO    ORDINAL ITEM                                                      
---------- ---------- --------------------                                      
     77032          4 70-MAR                                                    
     15286          1 70-MAR                                                    
     15286          2 50-APP                                                    
     15286          3 90-APR-PF                                                 
     59774          1 51-BLU                                                    
     59774          2 70-GA                                                     
     59774          3 90-ALM-I                                                  
     35073          1 90-CHR-11                                                 
     35073          2 70-GON                                                    
     34910          1 51-APP                                                    
     34910          2 24-8x10                                                   

    REC_NO    ORDINAL ITEM                                                      
---------- ---------- --------------------                                      
     34910          3 90-PEC-11                                                 
     34910          4 51-BC                                                     
     17685          1 20-BC-L-10                                                
     17685          2 50-APP                                                    
     17685          3 51-ATW                                                    
     17685          4 70-MAR                                                    
     45062          1 50-CHS                                                    
     45062          2 20-CA-7.5                                                 
     39109          1 90-APIE-10                                                
     39109          2 90-APP-11                                                 
     37063          1 70-TU                                                     

    REC_NO    ORDINAL ITEM                                                      
---------- ---------- --------------------                                      
     37063          2 90-APP-11                                                 
     37063          3 70-W                                                      
     18567          1 70-LEM                                                    
     18567          2 90-APR-PF                                                 
     37586          1 70-TU                                                     
     62707          1 70-R                                                      
     62707          2 90-CHR-11                                                 
     62707          3 20-BC-L-10                                                
     62707          4 90-APR-PF                                                 
     28117          1 90-CH-PF                                                  
     28117          2 50-APP                                                    

    REC_NO    ORDINAL ITEM                                                      
---------- ---------- --------------------                                      
     28117          3 25-STR-9                                                  
     64574          1 51-ATW                                                    
     64574          2 70-TU                                                     
     64574          3 70-W                                                      
     40305          1 20-CA-7.5                                                 
     40305          2 70-GA                                                     
     33060          1 45-CO                                                     
     33060          2 46-11                                                     
     33060          3 90-BLK-PF                                                 
     12396          1 90-BER-11                                                 
     12396          2 70-M-VA-SM-DZ                                             

    REC_NO    ORDINAL ITEM                                                      
---------- ---------- --------------------                                      
     12396          3 51-BC                                                     
     12396          4 90-APR-PF                                                 
     12396          5 20-CA-7.5                                                 
     43103          1 70-M-CH-DZ                                                
     39575          1 70-M-CH-DZ                                                
     70162          1 46-11                                                     
     70162          2 70-M-CH-DZ                                                
     70162          3 50-APR                                                    
     70162          4 70-MAR                                                    
     23034          1 70-M-CH-DZ                                                
     23034          2 90-APR-PF                                                 

    REC_NO    ORDINAL ITEM                                                      
---------- ---------- --------------------                                      
     79296          1 90-PEC-11                                                 
     79296          2 50-APR                                                    
     79296          3 90-ALM-I                                                  
     79296          4 51-BC                                                     
     79296          5 90-PEC-11                                                 
     74741          1 90-APP-11                                                 
     74741          2 51-APP                                                    
     74741          3 70-MAR                                                    
     98806          1 26-8x10                                                   
     98806          2 50-APR                                                    
     98806          3 90-APIE-10                                                

    REC_NO    ORDINAL ITEM                                                      
---------- ---------- --------------------                                      
     98806          4 51-APP                                                    
     43752          1 90-BLU-11                                                 
     47353          1 90-APR-PF                                                 
     47353          2 90-APIE-10                                                
     47353          3 70-TU                                                     
     47353          4 90-BLK-PF                                                 
     39829          1 20-BC-L-10                                                
     87454          1 90-APIE-10                                                
     87454          2 50-APP                                                    
     76663          1 25-STR-9                                                  
     76663          2 90-APP-11                                                 

    REC_NO    ORDINAL ITEM                                                      
---------- ---------- --------------------                                      
     85492          1 70-M-CH-DZ                                                
     85492          2 25-STR-9                                                  
     85492          3 90-BLU-11                                                 
     85492          4 70-M-CH-DZ                                                
     48647          1 51-BC                                                     
     48647          2 90-APIE-10                                                
     48647          3 90-CHR-11                                                 
     61008          1 20-CA-7.5                                                 
     61008          2 90-APP-11                                                 
     96402          1 50-ALM                                                    
     96402          2 20-CA-7.5                                                 

    REC_NO    ORDINAL ITEM                                                      
---------- ---------- --------------------                                      
     96402          3 90-APP-11                                                 
     35904          1 46-11                                                     
     35904          2 90-APR-PF                                                 
     49845          1 90-BLK-PF                                                 
     49845          2 70-LEM                                                    
     49845          3 50-CH                                                     
     49845          4 90-PEC-11                                                 
     46014          1 51-ATW                                                    
     46014          2 90-APR-PF                                                 
     46014          3 45-VA                                                     
     46014          4 90-CH-PF                                                  

    REC_NO    ORDINAL ITEM                                                      
---------- ---------- --------------------                                      
     46014          5 90-BLK-PF                                                 
     46876          1 70-TU                                                     
     46876          2 51-APP                                                    
     34579          1 24-8x10                                                   
     34579          2 70-GA                                                     
     34579          3 70-TU                                                     
     34579          4 26-8x10                                                   
     17729          1 51-ATW                                                    
     17729          2 50-APP                                                    
     17729          3 90-BLU-11                                                 
     17729          4 90-CH-PF                                                  

    REC_NO    ORDINAL ITEM                                                      
---------- ---------- --------------------                                      
     17729          5 20-CA-7.5                                                 
     74952          1 45-VA                                                     
     74952          2 90-APP-11                                                 
     74952          3 90-BER-11                                                 
     61948          1 70-MAR                                                    
     61948          2 70-GON                                                    
     61948          3 45-CH                                                     
     61948          4 24-8x10                                                   
     41064          1 70-R                                                      
     41064          2 90-APR-PF                                                 
     41064          3 51-APP                                                    

    REC_NO    ORDINAL ITEM                                                      
---------- ---------- --------------------                                      
     17947          1 50-APP                                                    
     20913          1 90-LEM-11                                                 
     20913          2 70-M-CH-DZ                                                
     20913          3 70-LEM                                                    
     95514          1 45-CH                                                     
     95514          2 46-11                                                     
     95514          3 70-MAR                                                    
     95514          4 51-APP                                                    
     24829          1 20-CA-7.5                                                 
     44590          1 90-BLU-11                                                 
     44590          2 24-8x10                                                   

    REC_NO    ORDINAL ITEM                                                      
---------- ---------- --------------------                                      
     44590          3 90-BLU-11                                                 
     44590          4 45-CH                                                     
     44590          5 90-PEC-11                                                 
     65165          1 24-8x10                                                   
     65165          2 90-ALM-I                                                  
     65165          3 70-R                                                      
     65165          4 45-CO                                                     
     89588          1 90-BLK-PF                                                 
     53240          1 25-STR-9                                                  
     53240          2 51-ATW                                                    
     46674          1 51-BC                                                     

    REC_NO    ORDINAL ITEM                                                      
---------- ---------- --------------------                                      
     67946          1 90-PEC-11                                                 
     67946          2 90-APR-PF                                                 
     67946          3 90-APR-PF                                                 
     67946          4 90-LEM-11                                                 
     31233          1 70-M-VA-SM-DZ                                             
     31233          2 50-APR                                                    
     31233          3 50-CHS                                                    
     31233          4 51-BC                                                     
     15904          1 90-CH-PF                                                  
     17488          1 50-APP                                                    
     97097          1 70-MAR                                                    

    REC_NO    ORDINAL ITEM                                                      
---------- ---------- --------------------                                      
     50512          1 90-APP-11                                                 
     11548          1 45-CO                                                     
     11548          2 90-APIE-10                                                
     29908          1 45-VA                                                     
     29908          2 51-ATW                                                    
     29908          3 25-STR-9                                                  
     29908          4 70-GA                                                     
     29908          5 90-CH-PF                                                  
     20127          1 90-BER-11                                                 
     20127          2 70-M-CH-DZ                                                
     41963          1 50-ALM                                                    

    REC_NO    ORDINAL ITEM                                                      
---------- ---------- --------------------                                      
     41963          2 90-CH-PF                                                  
     16532          1 50-APP                                                    
     16532          2 70-MAR                                                    
     16532          3 70-TU                                                     
     16532          4 24-8x10                                                   
     34378          1 90-CHR-11                                                 
     34378          2 45-VA                                                     

557 rows selected.

SQL> @C:/Krithika/DBL/a3queries.sql;
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
20-BC-C-10           Chocolate            Cake                          9       

SQL> REM Verification:
SQL> select * from item_list where item='20-BC-C-10';

no rows selected

SQL> 
SQL> REM 2. Show the customer details who had placed more than 2 orders on the same date.
SQL> 
SQL> select * from customers where cust_no in (select cid from receipts group by cid,rdate having count(rec_no)>2) order by cust_no;

   CUST_NO LNAME                FNAME                                           
---------- -------------------- --------------------                            
         8 HELING               RUPERT                                          
        14 SOPKO                RAYFORD                                         

SQL> REM Verification:
SQL> select cid,rdate,count(rec_no) from receipts group by cid,rdate having count(rec_no)>2;

       CID RDATE     COUNT(REC_NO)                                              
---------- --------- -------------                                              
         8 30-OCT-07             3                                              
        14 03-OCT-07             3                                              

SQL> 
SQL> 
SQL> REM 3. Display the products details that has been ordered maximum by the customers. (use ALL)
SQL> 
SQL> select * from products where prod_id in (select item from item_list group by item having count(item)>= all(select max(count(item)) from item_list group by item));

PROD_ID              FLAVOUR              FOOD                      PRICE       
-------------------- -------------------- -------------------- ----------       
90-APP-11            Apple                Tart                          3       

SQL> REM Verification:
SQL> select item, count(item) from item_list group by item order by count(item) desc;

ITEM                 COUNT(ITEM)                                                
-------------------- -----------                                                
90-APP-11                     25                                                
90-APR-PF                     22                                                
90-BLK-PF                     20                                                
70-M-CH-DZ                    20                                                
51-BC                         19                                                
50-CHS                        19                                                
51-ATW                        18                                                
70-R                          18                                                
50-APP                        17                                                
20-CA-7.5                     17                                                
90-CHR-11                     16                                                

ITEM                 COUNT(ITEM)                                                
-------------------- -----------                                                
46-11                         16                                                
70-TU                         16                                                
90-BER-11                     15                                                
24-8x10                       15                                                
70-MAR                        15                                                
70-LEM                        15                                                
51-BLU                        15                                                
50-ALM                        14                                                
70-M-VA-SM-DZ                 14                                                
90-CH-PF                      14                                                
51-APR                        14                                                

ITEM                 COUNT(ITEM)                                                
-------------------- -----------                                                
90-BLU-11                     13                                                
45-CO                         13                                                
45-VA                         13                                                
90-APIE-10                    13                                                
26-8x10                       12                                                
90-PEC-11                     12                                                
50-APR                        12                                                
45-CH                         12                                                
90-ALM-I                      11                                                
51-APP                        10                                                
25-STR-9                      10                                                

ITEM                 COUNT(ITEM)                                                
-------------------- -----------                                                
70-W                          10                                                
20-BC-L-10                    10                                                
70-GA                          9                                                
90-LEM-11                      9                                                
70-GON                         8                                                
50-CH                          6                                                

39 rows selected.

SQL> 
SQL> 
SQL> REM 4. Show the number of receipts that contain the product whose price is more than the average price of its food type.
SQL> 
SQL> select count(distinct(rec_no)) as no_of_receipts from item_list where item in (select prod_id from products p where price> any (select avg(price) from products group by food having p.food = food));

NO_OF_RECEIPTS                                                                  
--------------                                                                  
            85                                                                  

SQL> REM Verification:
SQL> select food, avg(price) from products group by food;

FOOD                 AVG(PRICE)                                                 
-------------------- ----------                                                 
Cake                         13                                                 
Bear Claw                     2                                                 
Danish                        1                                                 
Eclair               3.33333333                                                 
Twist                         1                                                 
Pie                           5                                                 
Meringue                      1                                                 
Tart                        3.3                                                 
Cookie                        1                                                 
Croissant                   1.4                                                 

10 rows selected.

SQL> select prod_id, food, price from products p_outer where price > any(select avg(price) from products group by food having p_outer.food = food);

PROD_ID              FOOD                      PRICE                            
-------------------- -------------------- ----------                            
20-CA-7.5            Cake                         16                            
24-8x10              Cake                         16                            
26-8x10              Cake                         16                            
45-CO                Eclair                        4                            
90-ALM-I             Tart                          4                            
90-CH-PF             Tart                          4                            
90-PEC-11            Tart                          4                            
50-CHS               Croissant                     2                            
50-CH                Croissant                     2                            

9 rows selected.

SQL> REM select item, count(distinct(rec_no)) from item_list where item in (select prod_id from products p where price> any (select avg(price) from products group by food having p.food = food)) group by item order by item;
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
     83085         48                                                           

SQL> REM Verification:
SQL> select rec_no, sum(price), count(*) from item_list
  2  join receipts using (rec_no)
  3  join products on (prod_id = item)
  4  where rec_no in
  5  	     (select rec_no from item_list join products on (prod_id = item)
  6  	     where food = 'Twist' group by rec_no)
  7  group by rec_no;

    REC_NO SUM(PRICE)   COUNT(*)                                                
---------- ---------- ----------                                                
     83085         48          5                                                
     92252          7          5                                                
     81517          2          2                                                
     13496          7          4                                                
     17685         12          4                                                
     46014         14          5                                                
     91192          3          3                                                
     38849         19          5                                                
     29908         21          5                                                
     17729         25          5                                                
     39217         11          4                                                

    REC_NO SUM(PRICE)   COUNT(*)                                                
---------- ---------- ----------                                                
     64477         25          5                                                
     64574          3          3                                                
     86085          6          4                                                
     78187          2          2                                                
     77406         22          5                                                
     53240         13          2                                                

17 rows selected.

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

SQL> REM Verification:
SQL> select min(count(item)) from item_list group by item;

MIN(COUNT(ITEM))                                                                
----------------                                                                
               6                                                                

SQL> select item, count(item) from item_list group by item having count(item) = 6;

ITEM                 COUNT(ITEM)                                                
-------------------- -----------                                                
50-CH                          6                                                

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

SQL> REM Verification:
SQL> select rec_no, item, flavour, food from item_list join products on (prod_id = item) where flavour in ('Chocolate','Vanilla') and food='Meringue' order by rec_no;

    REC_NO ITEM                 FLAVOUR              FOOD                       
---------- -------------------- -------------------- --------------------       
     10013 70-M-CH-DZ           Chocolate            Meringue                   
     12396 70-M-VA-SM-DZ        Vanilla              Meringue                   
     20127 70-M-CH-DZ           Chocolate            Meringue                   
     20913 70-M-CH-DZ           Chocolate            Meringue                   
     23034 70-M-CH-DZ           Chocolate            Meringue                   
     26148 70-M-CH-DZ           Chocolate            Meringue                   
     31233 70-M-VA-SM-DZ        Vanilla              Meringue                   
     36343 70-M-VA-SM-DZ        Vanilla              Meringue                   
     38849 70-M-VA-SM-DZ        Vanilla              Meringue                   
     39575 70-M-CH-DZ           Chocolate            Meringue                   
     39685 70-M-CH-DZ           Chocolate            Meringue                   

    REC_NO ITEM                 FLAVOUR              FOOD                       
---------- -------------------- -------------------- --------------------       
     42162 70-M-VA-SM-DZ        Vanilla              Meringue                   
     42166 70-M-VA-SM-DZ        Vanilla              Meringue                   
     43103 70-M-CH-DZ           Chocolate            Meringue                   
     45873 70-M-VA-SM-DZ        Vanilla              Meringue                   
     46248 70-M-CH-DZ           Chocolate            Meringue                   
     53922 70-M-VA-SM-DZ        Vanilla              Meringue                   
     55690 70-M-CH-DZ           Chocolate            Meringue                   
     56724 70-M-VA-SM-DZ        Vanilla              Meringue                   
     61797 70-M-CH-DZ           Chocolate            Meringue                   
     61797 70-M-VA-SM-DZ        Vanilla              Meringue                   
     63998 70-M-VA-SM-DZ        Vanilla              Meringue                   

    REC_NO ITEM                 FLAVOUR              FOOD                       
---------- -------------------- -------------------- --------------------       
     70162 70-M-CH-DZ           Chocolate            Meringue                   
     73437 70-M-CH-DZ           Chocolate            Meringue                   
     75468 70-M-CH-DZ           Chocolate            Meringue                   
     75468 70-M-CH-DZ           Chocolate            Meringue                   
     81517 70-M-CH-DZ           Chocolate            Meringue                   
     85492 70-M-CH-DZ           Chocolate            Meringue                   
     85492 70-M-CH-DZ           Chocolate            Meringue                   
     85858 70-M-VA-SM-DZ        Vanilla              Meringue                   
     86678 70-M-VA-SM-DZ        Vanilla              Meringue                   
     89638 70-M-CH-DZ           Chocolate            Meringue                   
     89638 70-M-CH-DZ           Chocolate            Meringue                   

    REC_NO ITEM                 FLAVOUR              FOOD                       
---------- -------------------- -------------------- --------------------       
     92252 70-M-VA-SM-DZ        Vanilla              Meringue                   

34 rows selected.

SQL> select rec_no, count(distinct(flavour)) as diff_flavs, food from item_list join products on (prod_id = item) where flavour in ('Chocolate','Vanilla') and food='Meringue' group by rec_no,food order by rec_no;

    REC_NO DIFF_FLAVS FOOD                                                      
---------- ---------- --------                                                  
     10013          1 Meringue                                                  
     12396          1 Meringue                                                  
     20127          1 Meringue                                                  
     20913          1 Meringue                                                  
     23034          1 Meringue                                                  
     26148          1 Meringue                                                  
     31233          1 Meringue                                                  
     36343          1 Meringue                                                  
     38849          1 Meringue                                                  
     39575          1 Meringue                                                  
     39685          1 Meringue                                                  

    REC_NO DIFF_FLAVS FOOD                                                      
---------- ---------- --------                                                  
     42162          1 Meringue                                                  
     42166          1 Meringue                                                  
     43103          1 Meringue                                                  
     45873          1 Meringue                                                  
     46248          1 Meringue                                                  
     53922          1 Meringue                                                  
     55690          1 Meringue                                                  
     56724          1 Meringue                                                  
     61797          2 Meringue                                                  
     63998          1 Meringue                                                  
     70162          1 Meringue                                                  

    REC_NO DIFF_FLAVS FOOD                                                      
---------- ---------- --------                                                  
     73437          1 Meringue                                                  
     75468          1 Meringue                                                  
     81517          1 Meringue                                                  
     85492          1 Meringue                                                  
     85858          1 Meringue                                                  
     86678          1 Meringue                                                  
     89638          1 Meringue                                                  
     92252          1 Meringue                                                  

30 rows selected.

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
51-BC                Almond               Bear Claw                     2       
90-APIE-10           Apple                Pie                           5       

SQL> REM Verification:
SQL> select * from products where food='Pie' or food='Bear Claw' order by prod_id;

PROD_ID              FLAVOUR              FOOD                      PRICE       
-------------------- -------------------- -------------------- ----------       
51-BC                Almond               Bear Claw                     2       
90-APIE-10           Apple                Pie                           5       

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

SQL> REM Verification:
SQL> select distinct(cust_no) from customers order by cust_no;

   CUST_NO                                                                      
----------                                                                      
         1                                                                      
         2                                                                      
         3                                                                      
         4                                                                      
         5                                                                      
         6                                                                      
         7                                                                      
         8                                                                      
         9                                                                      
        10                                                                      
        11                                                                      

   CUST_NO                                                                      
----------                                                                      
        12                                                                      
        13                                                                      
        14                                                                      
        15                                                                      
        16                                                                      
        17                                                                      
        18                                                                      
        19                                                                      
        20                                                                      
        21                                                                      

21 rows selected.

SQL> select distinct(cid) from receipts order by cid;

       CID                                                                      
----------                                                                      
         1                                                                      
         2                                                                      
         3                                                                      
         4                                                                      
         5                                                                      
         6                                                                      
         7                                                                      
         8                                                                      
         9                                                                      
        10                                                                      
        11                                                                      

       CID                                                                      
----------                                                                      
        12                                                                      
        13                                                                      
        14                                                                      
        15                                                                      
        16                                                                      
        17                                                                      
        18                                                                      
        19                                                                      
        20                                                                      

20 rows selected.

SQL> select cust_no, fname, lname from customers c left outer join receipts r on (c.cust_no = r.cid) where r.rec_no is null;

   CUST_NO FNAME                LNAME                                           
---------- -------------------- --------------------                            
        21 DAVID                JOHN                                            

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

SQL> REM Verification:
SQL> select p1.flavour from products p1, products p2 where (p1.food='Meringue' and p2.food='Tart') and (p1.flavour=p2.flavour);

FLAVOUR                                                                         
--------------------                                                            
Chocolate                                                                       

SQL> select food,flavour from products where flavour in (select p1.flavour from products p1, products p2 where (p1.food='Meringue' and p2.food='Tart') and (p1.flavour=p2.flavour));

FOOD                 FLAVOUR                                                    
-------------------- --------------------                                       
Cake                 Chocolate                                                  
Eclair               Chocolate                                                  
Tart                 Chocolate                                                  
Meringue             Chocolate                                                  
Croissant            Chocolate                                                  

SQL> 
SQL> 
SQL> 
SQL> REM **************************************** END OF FILE **********************************************
SQL> 
SQL> spool off;
