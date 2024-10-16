USE college;

CREATE TABLE pupil(
  id INT PRIMARY KEY,
  name VARCHAR(50)
);

INSERT INTO pupil(id,name)
VALUES 
(101, "adam"),
(102, "bob"),
(103, "casey");

CREATE TABLE courses(
 id INT PRIMARY KEY,
 course VARCHAR(50)
);

INSERT INTO courses(id,course)
VALUES 
(102, "english"),
(105, "math"),
(103, "science"),
(107, "computer science");

-- INNER join
SELECT *
FROM pupil
INNER JOIN courses
ON pupil.id = courses.id;

-- LEFT join
-- Returns all records from the left table, and the matched records from the right table

SELECT *
FROM pupil
LEFT JOIN courses
ON pupil.id = courses.id;

-- RIGHT join
-- Returns all records from the right table, and the matched records from the left table

SELECT * 
FROM pupil 
RIGHT JOIN courses 
ON pupil.id = courses.id;

-- FULL join 
-- Returns all records when there is a match in either left or right join

SELECT * 
FROM pupil as a
LEFT JOIN courses as b
ON a.id = b.id
UNION
SELECT * 
FROM pupil as a
RIGHT JOIN courses as b
ON a.id = b.id;

-- LEFT EXCLUSIVE 
SELECT * 
FROM pupil as a
LEFT JOIN courses as b
ON a.id = b.id
WHERE b.id IS NULL;

-- RIGHT EXCLUSIVE 
SELECT *
FROM pupil as a
RIGHT JOIN courses as b
ON a.id = b.id
WHERE a.id IS NULL;

-- SELF Join
CREATE TABLE employee(
 id INT PRIMARY KEY,
 name VARCHAR(50),
 manager_id INT
);

INSERT INTO employee (id ,name, manager_id)
VALUES
(101, "adam", 103),
(102, "bob", 104),
(103, "casey", NULL),
(104, "donald", 103);

SELECT a.name as manager_name, b.name
FROM employee AS a
JOIN employee AS b
ON a.id = b.manager_id;

-- UNION
-- It is used to combine the result-set of two or more SELECT statements. Gives UNIQUE records. 
	
SELECT name FROM employee
UNION
SELECT name FROM employee;

-- UNION ALL gives diplicates as well. 












