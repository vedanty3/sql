CREATE DATABASE IF NOT EXISTS COLLEGE;

USE COLLEGE;

CREATE TABLE STUDENT(ROLL_NO INT PRIMARY KEY, NAME VARCHAR(50), MARKS INT NOT NULL, GRADE VARCHAR(1), CITY VARCHAR(20));

INSERT INTO STUDENT(ROLL_NO, NAME, MARKS, GRADE, CITY) VALUES
(23, "PRIYA SHARMA", 78, "B", "MUMBAI"),
(24, "RAJ MALHOTRA", 92, "A", "DELHI"),
(25, "ANITA MEHTA", 65, "C", "BANGALORE"),
(26, "RAMESH YADAV", 80, "A", "HYDERABAD"),
(27, "KIARA ADVANI", 90, "A", "MUMBAI"),
(28, "VIJAY DEVARKONDA", 76, "B", "HYDERABAD");

SELECT CITY, AVG(MARKS) FROM STUDENT GROUP BY CITY ORDER BY CITY;
SELECT CITY, AVG(MARKS) FROM STUDENT GROUP BY CITY ORDER BY CITY DESC;

CREATE TABLE Customer (
    CustomerID INT PRIMARY KEY,
    Name VARCHAR(50),
    PaymentMode VARCHAR(20),
    City VARCHAR(50)
);

INSERT INTO Customer (CustomerID, Name, PaymentMode, City)
VALUES
    (1, 'John Doe', 'Credit Card', 'New York'),
    (2, 'Jane Smith', 'Cash', 'Los Angeles'),
    (3, 'Robert Johnson', 'PayPal', 'Chicago'),
    (4, 'Emily Davis', 'Debit Card', 'Houston'),
    (5, 'Michael Wilson', 'Bank Transfer', 'Miami'),
        (6, 'Barry Johnson', 'PayPal', 'Chicago'),
    (7, 'Emily Smith', 'Debit Card', 'Houston'),
    (8, 'Michael Jackson', 'Bank Transfer', 'Miami');
    
SELECT * FROM CUSTOMER;
SELECT PaymentMode, COUNT(NAME) FROM CUSTOMER GROUP BY PAYMENTMODE;

DROP DATABASE COLLEGE;