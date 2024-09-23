SET SQL_SAFE_UPDATES = 0;

DROP DATABASE IF EXISTS ECOMMERCE;
CREATE DATABASE IF NOT EXISTS ECOMMERCE;
USE ECOMMERCE;

CREATE TABLE CUSTOMER(ID INT PRIMARY KEY AUTO_INCREMENT,
USER_NAME VARCHAR(255) UNIQUE,
BALANCE LONG DEFAULT(550) NOT NULL, CONSTRAINT ACC_BALANCE_CHK CHECK(BALANCE>500));

INSERT INTO CUSTOMER(ID, USER_NAME, BALANCE) VALUES(1, 'johndoe', 10000), (2, 'parthy9', 5000000000);

-- CREATE TABLE ORDERS(ID INT PRIMARY KEY, CUST_ID INT, 
-- ITEM VARCHAR(255), FOREIGN KEY(CUST_ID) REFERENCES CUSTOMER(ID) ON DELETE CASCADE);
CREATE TABLE ORDERS(ID INT PRIMARY KEY, CUST_ID INT, 
ITEM VARCHAR(255), FOREIGN KEY(CUST_ID) REFERENCES CUSTOMER(ID) ON DELETE SET NULL);

INSERT INTO ORDERS(ID, CUST_ID, ITEM) VALUES(1, 1, 'Chole Bhature');
INSERT INTO ORDERS(ID, CUST_ID, ITEM) VALUES(2, 2, 'Chesse Pizza');

SELECT * FROM CUSTOMER;
SELECT * FROM ORDERS;

-- DUPLICATES NOT ALLOWED
-- INSERT INTO CUSTOMER(ID, USER_NAME) VALUES(3, 'vedanty1');

INSERT INTO CUSTOMER(USER_NAME, BALANCE) VALUES('vedanty1', 10000000000000000);

SELECT * FROM CUSTOMER;

-- AN ATTRIBUTE CAN BE PRIMARY KEY AND FOREIGN KEY BOTH

SHOW TABLES;
SELECT * FROM ORDERS;

-- ADD NEW COLUMN
ALTER TABLE ORDERS ADD TOTAL_PRICE FLOAT NOT NULL DEFAULT(330);

SELECT * FROM ORDERS;

-- MODIFY EXISTING COLUMN
ALTER TABLE ORDERS MODIFY TOTAL_PRICE DOUBLE NOT NULL;

SELECT * FROM ORDERS;

DESC ORDERS;

-- CHANGE COLUMN - RENAME EXISTING COLUMN AND CHANGE IT'S DATA TYPE
ALTER TABLE ORDERS CHANGE COLUMN TOTAL_PRICE TOTAL_AMOUNT FLOAT;

ALTER TABLE ORDERS RENAME TO CUSTOMER_ORDERS;

SELECT * FROM CUSTOMER;

INSERT INTO CUSTOMER VALUES(4, 'jason', 2000000), (5, 'alan_walker', 4000000000000000);

-- UPDATE
UPDATE CUSTOMER SET USER_NAME="alanwalker4" WHERE ID=5;
UPDATE CUSTOMER SET BALANCE=69000000000000, USER_NAME="alanwalker" WHERE ID=5;

SELECT * FROM CUSTOMER;

UPDATE CUSTOMER_ORDERS SET TOTAL_AMOUNT=1000;

SELECT * FROM CUSTOMER_ORDERS;

ALTER TABLE ORDERS DROP COLUMN TOTAL_AMOUNT;

DELETE FROM CUSTOMER WHERE ID=5;
DELETE FROM CUSTOMER;

SELECT * FROM CUSTOMER;

REPLACE INTO CUSTOMER(ID, USER_NAME, BALANCE) VALUES(6, "imjessica", 450000000),
(4, "jasondurlo", 9500000);

REPLACE INTO CUSTOMER SET ID=7, USER_NAME="robinhood", BALANCE=550000; 

REPLACE INTO CUSTOMER(ID, USER_NAME) SELECT ID, USER_NAME FROM  CUSTOMER WHERE ID=7;
