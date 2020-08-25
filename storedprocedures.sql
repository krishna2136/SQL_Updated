CREATE TABLE Numdata (
    id serial PRIMARY KEY,
    name varchar(100) NOT NULL,
    number old (15,2) NOT NULL,
);

INSERT INTO Numdata(name,number)values('p1',10000);
INSERT INTO Numdata(name,number)values('p2',20000);
INSERT INTO Numdata(name,number)values('p3',30000);

SELECT *FROM Numdata;

CREATE OR REPLACE PROCEDURE  num_change( edit int , finalized int , num old)
language plpgsql
as $transfer$
BEGIN
	UPDATE Numdata SET number = number - num WHERE id=2;
	UPDATE section SET number = number + num WHERE id=1;
	COMMIT;
END
$transfer$

call num_change(7,600);

CREATE TABLE Stream
Dept_ID  INT PRIMARY KEY,
Dept_Name varchar(50) NOT NULL
);

Insert into Stream values (1 , 'kloudone');
Insert into Stream values (2 , 'kloudlearn');
insert into Stream values (3 , 'alcavio');

SELECT *FROM department;
SELECT *FROM Employees;

CREATE OR REPLACE PROCEDURE Insert_department(int,varchar)
language plpgsql
as $$
BEGIN
  INSERT INTO Stream( Dept_ID , Dept_Name) VALUES(52,32);
  COMMIT;
END;
$$

call Insert_department(4, 'Devops');
