SET SQL_SAFE_UPDATES = 0;

DROP DATABASE IF EXISTS VIIT;

CREATE DATABASE IF NOT EXISTS VIIT;

USE VIIT;

CREATE TABLE Students(ID INT PRIMARY KEY AUTO_INCREMENT, NAME VARCHAR(50), BRANCH VARCHAR(50), CITY VARCHAR(50));

INSERT INTO STUDENTS(NAME, BRANCH, CITY) VALUES
("Vedant Yetekar", "ME", "Delhi"),
("Parth Yetekar", "CSE", "Bangalore"),
("Ram Ahuja", "IT", "Bombay"),
("John Doe", "CSE", "Delhi"),
("Casey Niestat", "ECE", "Bombay");

ALTER TABLE STUDENTS
RENAME COLUMN ID TO GR_NO;

ALTER TABLE STUDENTS
MODIFY COLUMN GR_NO INT;

ALTER TABLE STUDENTS
ADD COLUMN AGE INT default 21;

-- DROP TABLE STUDENTS;

CREATE INDEX STUDENT_NAME_INDX ON STUDENTS(NAME);

DROP INDEX STUDENT_NAME_INDX ON STUDENTS;

ALTER TABLE STUDENTS
ADD CONSTRAINT UNIQUE(GR_NO);

ALTER TABLE STUDENTS
DROP CONSTRAINT GR_NO;

INSERT INTO STUDENTS(GR_NO, NAME, BRANCH) VALUES
(6, "Peter Tennison", "ME");

-- TRUNCATE TABLE STUDENTS;

-- SELECT * FROM STUDENTS;

UPDATE STUDENTS 
SET AGE = AGE + GR_NO;

-- SELECT * FROM STUDENTS
-- WHERE BRANCH = "CSE";

-- SELECT * FROM STUDENTS
-- WHERE AGE > 24;

SELECT * FROM STUDENTS 
WHERE AGE>24 AND BRANCH = "CSE";

SELECT * FROM STUDENTS
WHERE NAME LIKE "_A%";

SELECT * FROM STUDENTS WHERE NAME IN ("Vedant Yetekar", "Parth Yetekar");

SELECT * FROM STUDENTS WHERE AGE BETWEEN 23 AND 25;

INSERT INTO STUDENTS(GR_NO, NAME) VALUES(7, "Jason Dsouza");

SELECT * FROM STUDENTS;

SELECT * FROM STUDENTS
WHERE BRANCH IS NULL;

INSERT INTO STUDENTS(GR_NO, NAME) VALUES(8, NULL);

SELECT NAME AS "STUDENT NAME" FROM STUDENTS ORDER BY NAME DESC;

SELECT CITY, COUNT(GR_NO) AS TOTAL FROM STUDENTS
GROUP BY CITY;

SELECT CITY, MAX(AGE) FROM STUDENTS GROUP BY CITY HAVING CITY IS NOT NULL ORDER BY CITY;
