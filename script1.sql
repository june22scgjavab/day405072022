 CREATE DATABASE mydatabase; 
 USE mydatabase;
 -- for creating a table
 drop table emp_master;
CREATE TABLE emp_master     
 (
   code VARCHAR(5) PRIMARY KEY,
   name VARCHAR(20),
   desig VARCHAR(10),
   dept VARCHAR(10),
   basic FLOAT(7,2)
);

INSERT INTO emp_master VALUES('E0001','Ram','Manager','Sales',15000.50);
INSERT INTO emp_master VALUES('E0002','Tom','AsstMgr','Sales',12000.50);
INSERT INTO emp_master VALUES('E0003','Zuben','Manager','Mkt',15000.25);
INSERT INTO emp_master VALUES('E0004','Radhika','Clerk','HR',6000.00);
INSERT INTO emp_master VALUES('E0005','Ahmed','Typist','HR',7000.00);

COMMIT;

SELECT code,basic FROM emp_master;

SHOW databases;


DESC emp_master;

ALTER TABLE emp_master 
ADD COLUMN address VARCHAR(40);

ALTER TABLE emp_master
MODIFY COLUMN address VARCHAR(100);

ALTER TABLE emp_master
RENAME COLUMN address TO residential_address;

ALTER table emp_master drop residential_address;

CREATE TABLE student (
roll INT,
name VARCHAR(20)
);

desc student;

ALTER TABLE student add primary key(roll);

ALTER TABLE student drop primary key;

CREATE TABLE bookdetails(
 bookid INTEGER PRIMARY KEY,
 title VARCHAR(20) NOT NULL,   -- We are not allowed to leave the value of this column
 price FLOAT(6,2) NOT NULL,
 author1 VARCHAR(20) NOT NULL,
 author2 VARCHAR(20),
 dateofpub DATE
);
INSERT INTO bookdetails VALUES(1,'Java',600,'Patrick',null,'1985-12-01');

SELECT * FROM bookdetails;

INSERT INTO bookdetails(bookid,title,price,author1,author2,dateofpub) 
VALUES(2,'HTML',300,'Robbert','Jack',null);


INSERT INTO bookdetails(title,author1,author2,price,bookid) VALUES('CSS','Jack','Marry',300,3);
INSERT INTO bookdetails(bookid,title,price,author1,dateofpub) VALUES(4,'DBMS',500,'Nitin','2010-02-23');

INSERT INTO bookdetails VALUES(4,'DBMS',500,'Nitin','2010-02-23');
INSERT INTO bookdetails VALUES(5,'DBMS',500,'Nitin','null','2010-02-23');

INSERT INTO bookdetails VALUES(6,'DBMS',500,'Nitin','Ashok','Radha','2010-02-23');
INSERT INTO bookdetails(title,author1,author2,price,bookid,dateofpub) VALUES('CSS','Jack','Marry',300,30,'Hi');

CREATE TABLE bookdetailsbackup(
 bookid INTEGER PRIMARY KEY,
 title VARCHAR(20) NOT NULL,   
 price FLOAT(6,2) NOT NULL,
 author1 VARCHAR(20) NOT NULL,
 author2 VARCHAR(20),
 dateofpub DATE
);

SELECT * FROM bookdetailsbackup;

INSERT INTO bookdetailsbackup SELECT * FROM bookdetails;

CREATE TABLE bookdetailsbackup2(
 bookid INTEGER PRIMARY KEY,
 title VARCHAR(20) NOT NULL,   
 price FLOAT(6,2) NOT NULL
);
	
INSERT INTO bookdetailsbackup2 SELECT bookid,title,price FROM bookdetails;

SELECT * from bookdetails;

SELECT * FROM bookdetails
where title='JAVA';
INSERT INTO bookdetails VALUES(10,null,600,'Patrick',null,'1985-12-01');

CREATE TABLE customer(
id INTEGER PRIMARY KEY,
name VARCHAR(20) NOT NULL,
address VARCHAR(30) default 'Delhi'
);

INSERT INTO customer VALUES(1,'Abhi','Kolkata');
INSERT INTO customer(id,name) VALUES(2,'Gaytri');
INSERT INTO customer VALUES(3,'Sudesh',null);

SELECT * FROM customer;
INSERT INTO customer VALUES(3,'Adil',null);
INSERT INTO customer VALUES(null,'Adil',null);

create TABLE employees (
id INTEGER PRIMARY KEY,
name VARCHAR(30) NOT NULL,
votersid INTEGER UNIQUE);
INSERT INTO employees VALUES(1,'Ram',1234567);
INSERT INTO employees VALUES(2,'Jatin',null);
INSERT INTO employees VALUES(3,'Rakesh',null);
INSERT INTO employees VALUES(4,'Amit',1234567);

SELECT * FROM employees;

