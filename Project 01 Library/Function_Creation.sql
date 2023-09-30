CREATE DATABASE library;
use library;

CREATE TABLE students(
	studentID INT PRIMARY KEY NOT NULL,
    name VARCHAR(30),
    surname VARCHAR(30),
    birthdate DATE,
    gender VARCHAR(10),
    class VARCHAR(10),
    point INT
);

CREATE TABLE authors(
	authorID INT PRIMARY KEY NOT NULL,
    name VARCHAR(50),
    surname VARCHAR(50)
);

CREATE TABLE types(
	typeID INT PRIMARY KEY NOT NULL,
    name VARCHAR(25)
);

CREATE TABLE books(
	bookID INT PRIMARY KEY NOT NULL,
	name VARCHAR(90),
	pagecount INT,
	point INT NULL,
	authorID INT, 
	typeID INT,
    CONSTRAINT FkauthorID FOREIGN KEY(authorID) REFERENCES authors(authorID),
    CONSTRAINT FktypeID FOREIGN KEY(typeID) REFERENCES types(typeID)
    );

CREATE TABLE borrows(
	borrowId int PRIMARY KEY NOT NULL,
	studentID int NULL,
	bookID int NULL,
	takenDate datetime NULL,
	broughtDate datetime NULL,
 	CONSTRAINT fkstudentID FOREIGN KEY(studentID) references students(studentID),
 	CONSTRAINT fkbookID FOREIGN KEY(bookID) references books(bookID)
 );
 
 CREATE TABLE testdelete(
	testdeleteID INT PRIMARY KEY NOT NULL, 
    name VARCHAR(40),
    surname VARCHAR(40)    
 );
