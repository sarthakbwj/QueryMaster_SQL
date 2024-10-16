USE college;

-- create table in DB, define coloums and their datatype
CREATE TABLE new_students(
	rollno INT PRIMARY KEY,
    name VARCHAR(100),
    marks INT NOT NULL,
    grade VARCHAR(1),
    city VARCHAR(20)
);

INSERT INTO new_students
(rollno, name, marks, grade, city)
VALUES
(101, "anil", 78, "C", "Pune"),
(102,"bhumika", 93, "A", "Mumbai"),
(103, "chetan", 85, "B", "Mumbai"),
(104, "dhruv", 96, "A", "Delhi"),
(105, "emanuel", 12, "F", "Delhi"),
(106, "farah", 82, "B", "Delhi");

-- select everything from the table and show/print
-- star is pronounced as 'all'
SELECT * FROM new_students;

-- select the columns from tabel
SELECT name, city FROM new_students;

-- select distinct names from a column
SELECT DISTINCT city FROM new_students;

-- the 'WHERE' clause is used the apply conditions
SELECT * FROM new_students WHERE marks > 85;

-- 2 conditions under "WHERE" clause using "AND" operator
SELECT *
FROM new_students
WHERE city = "Mumbai" and marks > 90;

-- 2 conditions under "WHERE" clause using "OR" operator
SELECT *
FROM new_students
WHERE city = "Mumbai" or marks > 90;

-- 2 conditions under "WHERE" clause using "BETWEEN" operator
SELECT *
FROM new_students
WHERE marks BETWEEN 80 and 90;

-- 1 condition under "WHERE" clause using "IN" operator
SELECT *
FROM new_students
WHERE city IN ('Mumbai', 'Delhi');

-- 1 condition under "WHERE" clause using "NOT IN" operator
SELECT *
FROM new_students
WHERE city NOT IN ('Mumbai', 'Delhi');

-- Limit clause 
SELECT *
FROM new_students
LIMIT 3;

-- order marks in Ascending
SELECT *
FROM new_students
ORDER BY marks ASC;

-- using aggregate functions
SELECT AVG(marks) 
FROM new_students;

SELECT COUNT(marks) 
FROM new_students;

-- GROUP BY clause
SELECT city, COUNT(name)
FROM new_students
GROUP BY city;

SELECT city, AVG(marks)
FROM new_students
GROUP BY city
ORDER BY avg(marks);

SELECT grade, COUNT(name)
FROM new_students
GROUP BY grade
ORDER BY grade ASC;


-- Having Clause 
SELECT city, COUNT(rollno)
FROM new_students
GROUP BY city
HAVING MAX(marks) > 90;

SELECT city
FROM new_students
WHERE grade = "A"
GROUP BY city
HAVING MAX(marks) >= 93
ORDER BY city ASC;


-- UPDATE Command 

SET SQL_SAFE_UPDATES = 0;

UPDATE new_stduents
SET grade = "O"
WHERE grade = "A";

UPDATE new_stduents
SET marks = 92
WHERE rollno = 105;

UPDATE new_stduents
SET marks = marks + 1;

-- Delete Command 

DELETE FROM new_students
WHERE marks < 35;  

-- ADD/DROP column
ALTER TABLE new_students
ADD COLUMN age INT NOT NULL DEFAULT 19;

-- MODIFY column
ALTER TABLE new_students
MODIFY COLUMN age VARCHAR(2);

ALTER TABLE new_students
CHANGE age stu_age INT;

INSERT INTO new_students
(rollno, name, marks, stu_age)
VALUES
(107, gargi, 68, 100);

-- Alter name of table
ALTER TABLE new_students
RENAME TO stu;


SELECT * from new_students;
 
 
