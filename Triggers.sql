CREATE TABLE Department
(
	Dept_ID int PRIMARY KEY,
	Dept_Name varchar(50)
);

INSERT INTO Department (Dept_ID,Dept_Name) VALUES (101,'CSE');
INSERT INTO Department (Dept_ID,Dept_Name) VALUES (102,'ECE');
INSERT INTO Department (Dept_ID,Dept_Name) VALUES (103,'EEE');

SELECT * FROM Department;

CREATE TABLE Students
(
	ID bigserial PRIMARY KEY,
	FirstName varchar(50),
	LastName varchar(50),
 	Gender varchar(50),
 	Email varchar(50),
 	Grade varchar(3),
 	Dept_ID int NOT NULL,
 	FOREIGN KEY(Dept_ID) REFERENCES Department(Dept_ID)
);




INSERT INTO Students (FirstName,LastName,Gender,Email,Grade,Dept_ID) VALUES ('Farha','Jafar','Female','farha@gmail.com', 'A+',101); 
INSERT INTO Students (FirstName,LastName,Gender,Email,Grade,Dept_ID) VALUES ('Adithya','Channdran','Female','adithya@gmail.com','A',102);
INSERT INTO Students (FirstName,LastName,Gender,Email,Grade,Dept_ID) VALUES ('Febin','Favas','Male','febin@gmail.com', 'A+',103); 
INSERT INTO Students (FirstName,LastName,Gender,Email,Grade,Dept_ID) VALUES ('Fasil','Jafar','Male','fasil@gmail.com', 'B+',102);
INSERT INTO Students (FirstName,LastName,Gender,Email,Grade,Dept_ID) VALUES ('Fahmi','Razak','Female','fahmi@gmail.com', 'A+',101); 


SELECT * FROM Employees;



CREATE OR REPLACE FUNCTION total_Students()
RETURNS int as $total$
DECLARE total int;
BEGIN
SELECT COUNT(*) INTO total from Students;
RETURN total;
END;
$total$ language plpgsql;

SELECT total_Students();


CREATE TABLE Staff
(
	ID int NOT NULL PRIMARY KEY,
	FIRSTNAME text NOT NULL ,
	LASTNAME text NOT NULL
);

SELECT *FROM Staff;

CREATE OR REPLACE FUNCTION Staff_details
RETURNS trigger as $insert$
BEGIN
INSERT INTO Staff(ID , firstname , lastname )VALUES(new.ID,new.firstname,new.lastname);
RETURN new;
END;
$insert$ language plpgsql;


CREATE TRIGGER employees_insert after insert on Students
FOR EACH ROW EXECUTE PROCEDURE Staff_details; 
