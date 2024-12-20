-- execution takes place from right to left
SELECT * FROM WORKER;
SELECT FIRST_NAME, SALARY FROM WORKER;
SELECT 11+44 AS SUM;
SELECT NOW();
SELECT LCASE('VEDANT YETEKAR') AS NAME;
SELECT LCASE(FIRST_NAME) AS first_name, LCASE(LAST_NAME) as last_name FROM WORKER;
SELECT * FROM WORKER WHERE DEPARTMENT = 'ADMIN';
SELECT * FROM WORKER WHERE SALARY > 100000 AND DEPARTMENT = 'HR';
-- ranges are inclusive
SELECT * FROM WORKER WHERE SALARY BETWEEN 300000 AND 1000000;
SELECT * FROM WORKER WHERE DEPARTMENT IN ('HR', 'ADMIN');
SELECT * FROM WORKER WHERE DEPARTMENT = 'HR' OR DEPARTMENT = 'ACCOUNT';
SELECT * FROM WORKER WHERE DEPARTMENT NOT IN ('HR', 'ADMIN');
SELECT * FROM WORKER WHERE DEPARTMENT IS NOT NULL;
SELECT * FROM WORKER WHERE DEPARTMENT IS NULL;
SELECT * FROM WORKER WHERE DEPARTMENT != 'HR';
INSERT INTO WORKER (FIRST_NAME, LAST_NAME, SALARY, JOINING_DATE, DEPARTMENT) VALUES ('Vedant', 'Yetekar', 3200000, NOW(), 'Software Engineering');
INSERT INTO WORKER (FIRST_NAME, LAST_NAME, SALARY, JOINING_DATE) VALUES ('Parth', 'Yetekar', 3200000, NOW());
SELECT * FROM WORKER;
SELECT * FROM WORKER WHERE DEPARTMENT IS NULL;