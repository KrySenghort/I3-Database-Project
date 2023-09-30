CREATE DATABASE project_04_student_exam;
USE project_04_student_exam;

CREATE TABLE students(
	studentID INT PRIMARY KEY NOT NULL,
    name VARCHAR(30),
    gender CHAR,
    birthdate DATE,
    city VARCHAR(30)
);

CREATE TABLE teachers(
	teacherID SMALLINT PRIMARY KEY NOT NULL,
    name VARCHAR(30),
    specialist VARCHAR(40)
);

CREATE TABLE courses(
	courseID SMALLINT PRIMARY KEY NOT NULL,
    courseName VARCHAR(40),
    teacherID SMALLINT,
    CONSTRAINT FktecherDI FOREIGN KEY(teacherID) REFERENCES teachers(teacherID)
);

CREATE TABLE Exam(
	studentID INT,
    courseID SMALLINT,
    score SMALLINT,
    CONSTRAINT FkstudentID FOREIGN KEY(studentID) REFERENCES students(studentID),
    CONSTRAINT FkcourseID FOREIGN KEY(courseID) REFERENCES courses(courseID)
);























