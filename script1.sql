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