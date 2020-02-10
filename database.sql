CREATE DATABASE Umuzi;

CREATE TABLE customers (
    customerid serial PRIMARY KEY,
    firstname varchar(50),
    lastname varchar(50),
    gender varchar,
    address varchar(200), 
    phone int,
    email varchar(100),
    city varchar(20),
    country varchar(50),
  
);

INSERT INTO customers ("customerid", "firstname", "lastname", "gender", "address", "phone", "email", "city", "country") VALUES
(1,	'John',	'Hibert',	'Male',	'284 chaucer st',	84789657,	'john@gmail.com',	'Johannesburg',	'South Africa'),
(2,	'Thando',	'Sithole',	'Female',	'240 Sect 1',	794445584,	'thando@gmail.com',	'Cape Town',	'South Africa'),
(3,	'Leon',	'Glen',	'Male',	'81 Everton Rd,Gilits',	820832830,	'Leon@gmail.com',	'Durban',	'South Africa'),
(4,	'Charl',	'Muller',	'Male',	'290A Dorset Ecke',	856872553,	'Charl.muller@yahoo.com',	'Berlin',	'Germany'),
(5,	'Julia',	'Stein',	'Female',	'2 Wernerring',	672445058,	'Js234@yahoo.com',	'Frankfurt',	'Germany');



CREATE TABLE employees (
    employeeid serial PRIMARY KEY,
    firstname varchar(50),
    lastname varchar(50),
    email varchar(100),
    jobtitle varchar(20),
   
);

INSERT INTO employees ("employeeid", "firstname", "lastname", "email", "jobtitle") VALUES
(1,	'Kani',	'Matthew',	'mat@gmail.com',	'Manager'),
(2,	'Lesly',	'Cronje',	'LesC@gmail.com',	'Clerk'),
(3,	'Gideon',	'Maduku',	'm@gmail.com',	'Accountant');


CREATE TABLE orders (
    orderid serail PRIMARY KEY,
    productid int REFERENCES products(productid),
    paymentid int REFERENCES payments(paymentid),
    fulfilledbyemployeeid int,
    daterequired date,
    dateshipped date,
    status varchar(20),
   
 
);

INSERT INTO orders ("orderid", "productid", "paymentid", "fulfilledbyemployeeid", "daterequired", "dateshipped", "status") VALUES
(1,	1,	1,	2,	'2018-05-09',	NULL,	'Not shipped'),
(2,	1,	2,	2,	'2018-04-09',	'2018-03-09',	'Shipped'),
(3,	3,	3,	3,	'2018-06-09',	NULL,	'Not shipped');


CREATE TABLE payments (
    customerid int,
    paymentid serial PRIMARY KEY,
    paymentdate date,
    amount numeric,
    
);

INSERT INTO payments ("customerid", "paymentid", "paymentdate", "amount") VALUES
(1,	1,	'2018-01-09 00:00:00',	150.75),
(5,	2,	'2018-03-09 00:00:00',	150.75),
(4,	3,	'2018-03-09 00:00:00',	700.60);



CREATE TABLE products (
    productid serial PRIMARY KEY,
    productname varchar(100),
    description varchar(300),
    buyprice numeric,
   
);

INSERT INTO products ("productid", "productname", "description", "buyprice") VALUES
(1,	'Harley Davidson Chopper',	'This replica features working kickstands, font suspension, gear-shift lever',	150.75),
(2,	'Classic Car',	'Turnable front wheels , steering function',	550.75),
(3,	'Sports Car',	'Turnable front wheels, steering function',	700.60);
