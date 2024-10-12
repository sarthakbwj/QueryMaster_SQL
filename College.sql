CREATE DATABASE college; 
USE college;
CREATE TABLE student (
 id INT PRIMARY KEY, 
 name VARCHAR (50),
 age INT NOT NULL
);

INSERT INTO student VALUES(1, "AMAN", 23);
INSERT INTO student VALUES(2, "Sharaddha", 24);

SELECT * FROM student;
