CREATE DATABASE University

CREATE TABLE Student(
ID int primary key identity,
Name nvarchar(30) NOT NULL,
Surname nvarchar(30) ,
Phone int unique,
Score int default 50,
Comment nvarchar(100),
IsGraduated  bit default 'False'
)

SELECT * FROM Student

USE University
INSERT INTO Student(Name,Surname,Phone,Comment)
VALUES ('Vugar','Rustemov',0553458729,'hello')

INSERT INTO Student
Values('Sevda','Resulova',0504532671,40,'hi','True')

INSERT INTO Student
Values('Melek','Resulova',0552637561, 60 ,'hi','True'),
       ('Aysel','Qarayeva',0501324567, 100,'hello','False')

 UPDATE Student Set Comment= 'Congratulations'  
 Where Score>(SELECT AVG(Score) FROM Student)

  UPDATE Student Set Comment= 'So Bad'  
 Where Score<(SELECT AVG(Score) FROM Student)
 SELECT * FROM Student



CREATE TABLE GraduatedStudents(
ID int primary key identity,
Name nvarchar(30) NOT NULL,
Surname nvarchar(30) ,
Phone int unique,
Score int default 50,
Comment nvarchar(100),
IsGraduated  bit default 'False'
)

SELECT * FROM GraduatedStudents

INSERT INTO GraduatedStudents(Name,Surname,Phone,Score,Comment,IsGraduated)
Select Name,Surname,Phone,Score,Comment,IsGraduated FROM Student
Where IsGraduated='True'

SELECT * FROM GraduatedStudents

DELETE FROM Student 
WHERE IsGraduated='True'

SELECT * FROM Student
SELECT * FROM GraduatedStudents