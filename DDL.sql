CREATE DATABASE Employ;

CREATE TABLE Employees
(
	ID bigserial,
	FirstName varchar(50),
	LastName varchar(50),
 	Gender varchar(50),
 	Email varchar(50),
 	Salary int
);

CREATE TABLE Department
(
	Dept_ID int,
	Dept_Name varchar(50),
);

ALTER TABLE Employees ADD Dept_ID int NOT NULL;

INSERT INTO Employees (FirstName,LastName,Gender,Email,Salary,Dept_ID) VALUES ('krishna','reddy','Male','krishnalumia535@gmail.com', 10000, 501);
INSERT INTO Employees (FirstName,LastName,Gender,Email,Salary,Dept_ID) VALUES (''venky','vinod','Male,'sample1@gmail.com', 20000, 502);

SELECT * FROM Employees;

DROP TABLE Employees;
