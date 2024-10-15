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

SELECT *
FROM new_students
LIMIT 5;