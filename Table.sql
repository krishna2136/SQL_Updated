CREATE TABLE College
(
	College_ID int PRIMARY KEY,
	Dept_Name varchar(50)
);

INSERT INTO College (College_ID,Dept_Name) VALUES (501,'CSE');
INSERT INTO College (College_ID,Dept_Name) VALUES (502,'ECE');
INSERT INTO College (College_ID,Dept_Name) VALUES (503,'EEE');

SELECT * FROM College;

CREATE TABLE Students
(
	ID bigserial PRIMARY KEY,
	FirstName varchar(50),
	LastName varchar(50),
 	Gender varchar(50),
 	Email varchar(50),
 	College_ID int NOT NULL,
 	FOREIGN KEY(College_ID) REFERENCES College(College_ID)
);

INSERT INTO Employees (FirstName,LastName,Gender,Email,College_ID) VALUES ('krishna','reddy','Male','krishnalumia535@gmail.com', 501);
INSERT INTO Employees (FirstName,LastName,Gender,Email,College_ID) VALUES ('venky','vinod','Male,'sample1@gmail.com', 502);
INSERT INTO Employees (FirstName,LastName,Gender,Email,College_ID) VALUES ('sai','kumar','Male','sample2@gmail.com', 503);
INSERT INTO Employees (FirstName,LastName,Gender,Email,College_ID) VALUES ('gani','reddy','Male','sample3@gmail.com', 504;

SELECT * FROM Employees;

