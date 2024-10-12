CREATE DATABASE college1;
USE college1;

-- create Table under DB, define columns and data type
CREATE TABLE student1(
  rollno INT PRIMARY KEY,
  name VARCHAR(50)
  );

SELECT * FROM student1;  -- select all data and show data. 

-- insert multiple lines of data into table 
insert into student1 
(rollno, name)
VALUES
(101,"Karan"),
(102,"Arjun"),
(103,"Ram");


-- insert 1 line data into table
INSERT INTO student1 VALUES (104,"Shyam");




