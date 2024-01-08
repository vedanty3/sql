CREATE DATABASE IF NOT EXISTS TEST;

USE TEST;

CREATE TABLE TEST_TABLE1(ID INT NOT NULL);
CREATE TABLE TEST_TABLE2(ID INT UNIQUE);

INSERT INTO TEST_TABLE1(ID) VALUES(1);
INSERT INTO TEST_TABLE1(ID) VALUES(2);

INSERT INTO TEST_TABLE2(ID) VALUES(1);
INSERT INTO TEST_TABLE2(ID) VALUES(2);

SELECT * FROM TEST_TABLE1;
SELECT * FROM TEST_TABLE2;

DROP DATABASE IF EXISTS TEST;