
CREATE DATABASE EMPL;
USE EMPL;
CREATE TABLE Employee (
    name VARCHAR(50) NOT NULL,
    empid INT PRIMARY KEY,
    email VARCHAR(50) UNIQUE,
    age INT CHECK (age BETWEEN 25 AND 50),
    department VARCHAR(50),
    salary INT DEFAULT 10000
);
INSERT INTO Employee (name, empid, email, age, department, salary)
VALUES
    ('Aman', 110, 'aman0@gmail.com', 43, 'IT', 50000),
    ('Aarya', 111, 'aarya11@gmail.com', 42, 'Engineering', 50000),
    ('Ritik', 112, 'ritik12@gmail.com', 40, 'IT', 10000),
    ('Maya', 113, 'maya13@gmail.com', 43, 'CSE', 20000),
    ('Reet', 114, 'reet14@gmail.com', 45, 'AIML', 40000);

SELECT * FROM Employee
WHERE empid IS NOT NULL;

SELECT * FROM Employee
WHERE salary > 10000;

UPDATE Employee
SET salary = 20000
WHERE department = 'Engineering';

DELETE FROM Employee
WHERE empid = 112;

SELECT * FROM Employee;

ALTER TABLE Employee
ADD location VARCHAR(100);

TRUNCATE TABLE Employee;
