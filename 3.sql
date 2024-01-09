CREATE DATABASE COLLEGE;

USE COLLEGE;

CREATE TABLE STUDENT(ROLL_NO INT PRIMARY KEY, NAME VARCHAR(50), MARKS INT NOT NULL, GRADE VARCHAR(1), CITY VARCHAR(20));

INSERT INTO STUDENT(ROLL_NO, NAME, MARKS, GRADE, CITY) VALUES
(23, "PRIYA SHARMA", 78, "B", "MUMBAI"),
(24, "RAJ MALHOTRA", 92, "A", "DELHI"),
(25, "ANITA MEHTA", 65, "C", "BANGALORE"),
(26, "RAMESH YADAV", 80, "A", "HYDERABAD"),
(27, "KIARA ADVANI", 90, "A", "MUMBAI"),
(28, "VIJAY DEVARKONDA", 76, "B", "HYDERABAD");

SELECT * FROM STUDENT;
SELECT NAME, MARKS FROM STUDENT;
SELECT DISTINCT CITY FROM STUDENT;
SELECT * FROM STUDENT WHERE MARKS>=90;
SELECT * FROM STUDENT WHERE CITY = "DELHI";
SELECT * FROM STUDENT WHERE MARKS>=75 AND CITY = "MUMBAI";
SELECT * FROM STUDENT WHERE MARKS>=75 OR CITY = "MUMBAI";
SELECT * FROM STUDENT WHERE MARKS BETWEEN 80 AND 100;
SELECT * FROM STUDENT WHERE CITY IN ("DELHI", "MUMBAI");
SELECT * FROM STUDENT WHERE CITY NOT IN ("DELHI", "MUMBAI");
SELECT * FROM STUDENT WHERE MARKS>90 LIMIT 3;
SELECT * FROM STUDENT ORDER BY CITY ASC;
SELECT * FROM STUDENT ORDER BY CITY DESC;
SELECT * FROM STUDENT ORDER BY MARKS DESC;
SELECT * FROM STUDENT ORDER BY MARKS DESC LIMIT 3;


DROP DATABASE COLLEGE;