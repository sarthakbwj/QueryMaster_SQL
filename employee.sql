-- create DB and use DB
CREATE DATABASE xyz_company;
USE xyz_company;

-- create table in DB, define coloums and their datatype
CREATE TABLE employee(
	id INT PRIMARY KEY,
    name VARCHAR(100),
    salary INT
);

-- add values in table
INSERT INTO employee
(id,name,salary)
VALUES
(1,"Adam",25000),
(2,"Bob",20000),
(3,"Casey",40000);

-- select all data and display it
SELECT * FROM employee;