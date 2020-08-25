CREATE DATABASE Employ;

CREATE TABLE Employees
(
	ID bigserial,
	FirstName varchar(50),
	LastName varchar(50),
 	Gender varchar(50),
 	Email varchar(50),
 	Salary int,
	Dept_ID int
);

CREATE TABLE Stream
(
	Dept_ID int,
	Dept_Name varchar(50),
);

INSERT INTO Employees (FirstName,LastName,Gender,Email,Salary,Dept_ID) VALUES ('krishna','reddy','Male','krishnalumia535@gmail.com', 10000, 501);
INSERT INTO Employees (FirstName,LastName,Gender,Email,Salary,Dept_ID) VALUES ('venky','vinod','Male,'sample1@gmail.com', 20000, 502);
INSERT INTO Employees (FirstName,LastName,Gender,Email,Salary,Dept_ID) VALUES ('sai','kumar','Male','sample2@gmail.com', 30000, 503);
INSERT INTO Employees (FirstName,LastName,Gender,Email,Salary,Dept_ID) VALUES ('gani','reddy','Male','sample3@gmail.com', 40000 ,5013;

SELECT * FROM Employees;

INSERT INTO Stream (Dept_ID,Dept_Name) VALUES (501,'Devops');
INSERT INTO Stream (Dept_ID,Dept_Name) VALUES (502,'Kloudone');
INSERT INTO Stream (Dept_ID,Dept_Name) VALUES (503,'Kloudlearn');
INSERT INTO Stream (Dept_ID,Dept_Name) VALUES (504,'Acalvio');

SELECT * FROM Stream;

SELECT FirstName,Email FROM Employees;

UPDATE Employees SET Salary = 30000 WHERE ID = 2;

SELECT * FROM Employees ORDER BY FirstName ASC;

SELECT * FROM Employees LIMIT 3;

SELECT * FROM Employees OFFSET 2 LIMIT 3;

SELECT * FROM Employees WHERE Gender IN ('Male');

DELETE FROM Employees WHERE ID = 3;

DELETE FROM Stream WHERE Dept_ID = 503;
