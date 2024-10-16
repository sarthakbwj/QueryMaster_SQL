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

-- INNER JOIN
SELECT *
FROM pupil
INNER JOIN courses
ON pupil.id = courses.id;


