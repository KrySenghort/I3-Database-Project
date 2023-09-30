create database library02;
use library02;

create table staff(   
staff_id int auto_increment not null,
name  varchar(20) not null,
email varchar(20) not null,
date_start date  not null,
DOB date not null,
phone varchar(20) not null,
address varchar(50) not null,
primary key(staff_id)
);
create table borrower(
student_id int auto_increment not null,
student_name varchar(20) not null,
gender varchar(6) not null,
email varchar(20) not null,
phone varchar(20) not null,
department varchar(20) not null,
primary key(student_id)
);
create table book
(
book_id int auto_increment not null,
title varchar(50) not null,
book_isbn varchar(50) not null,
author varchar(50) not null, 
genre varchar(50) not null,
amount int not null,
borrow_date date,
staff_id int not null,
student_id int not null,
primary key(book_id),
Foreign key(staff_id) references staff(staff_id), 
Foreign key(student_id) references borrower(student_id)
);
Insert into staff(staff_id, name, email,date_start, DOB, phone, address) values(1,'william', 'william@gmail.com',CAST('1976-02-26' As Date),CAST('2017-06-11' As Date),'0892325453','Velvong 7makara');
Insert into staff(staff_id, name, email,date_start, DOB, phone, address) values(2,'Beuk', 'Beuk@gmail.com',CAST('1969-05-10' As Date),CAST('2018-08-24'As Date),'012345678','Velvong 7makara');
Insert into staff(staff_id, name, email,date_start, DOB, phone, address) values(3,'Nguyen', 'Nguyen@gmail.com',CAST('1987-09-18'As Date),CAST('2016-08-05'As Date),'012345679','Jbal Ompov');
Insert into staff(staff_id, name, email,date_start, DOB, phone, address) values(4,'Vorn Viva', 'Vornviva@gmail.com',CAST('1969-04-19'As Date),CAST('2019-08-04'As Date),'012345670','Steung Mean Chey');
Insert into staff(staff_id, name, email,date_start, DOB, phone, address) values(5,'Kanha', 'Kanha@gmail.com',CAST('1964-11-07'As Date),CAST('2019-10-08'As Date),'012345671','Chorm Chav');
Insert into staff(staff_id, name, email,date_start, DOB, phone, address) values(6,'Metheavy', 'Metheavy@gmail.com',CAST('1992-12-21'As Date),CAST('2019-03-15'As Date),'012345672','Pochintong');
Insert into staff(staff_id, name, email,date_start, DOB, phone, address) values(7,'Saravita', 'Saravita@gmail.com',CAST('1990-12-17'As Date),CAST('2013-06-12'As Date),'012345673','Chak Orngre');
Insert into staff(staff_id, name, email,date_start, DOB, phone, address) values(8,'Suly Pheng', 'sulypheng@gmail.com',CAST('1954-12-25'As Date),CAST('2020-01-14'As Date),'012345674','PhnomPenh Tmey');
Insert into staff(staff_id, name, email,date_start, DOB, phone, address) values(9,'Megaporn', 'megaporn@gmail.com',CAST('1935-06-06'As Date),CAST('2018-04-29'As Date),'012345675','7makara');
Insert into staff(staff_id, name, email,date_start, DOB, phone, address) values(10,'Sun Oukhong', 'sunoukhong@gmail.com',CAST('1993-12-21'As Date),CAST('2014-06-14'As Date),'012345676','Po Sen Chey');

INSERT INTO borrower(student_id, student_name, gender, email, phone, department) VALUES (11, 'Jones','M','jonesin@gmail.com','012446243','AMS');
INSERT INTO borrower(student_id, student_name, gender, email, phone, department) VALUES (22, 'Smith','M','smiths@gmail.com','012121212','AMS');
INSERT INTO borrower(student_id, student_name, gender, email, phone, department) VALUES (33, 'Johnson','F','johnsonj@gmail.com','987654321','GCI');
INSERT INTO borrower(student_id, student_name, gender, email, phone, department) VALUES (44, 'Brown','M','brownb@gmail.com','01234654','GCA');
INSERT INTO borrower(student_id, student_name, gender, email, phone, department) VALUES (55, 'Davis','F','davisd@gmail.com','09263517','GTI');
INSERT INTO borrower(student_id, student_name, gender, email, phone, department) VALUES (66, 'Miller','M','millerm@egmail.com','09545334','GIC');
INSERT INTO borrower(student_id, student_name, gender, email, phone, department) VALUES (77, 'Wilson','F','wilsonw@gmail.com','08585582','AMS');
INSERT INTO borrower(student_id, student_name, gender, email, phone, department) VALUES (88, 'Anderson','M','anderson@gmail.com','012520605','GCA');
INSERT INTO borrower(student_id, student_name, gender, email, phone, department) VALUES (99, 'Taylor','F','taylort@gmail.com','08955107','GIM');
INSERT INTO borrower(student_id, student_name, gender, email, phone, department) VALUES (1010, 'Clark','M','clarkc@gmail.com','09254533','AMS');

Insert into book(book_id,title,book_isbn,author,genre,amount,book_date_instock,staff_id,student_id)values(111, 'Broken', 'b2023484', 'Johnny sin', 'romantic', 50, CAST('2022-06-06'As Date), 2,44);
Insert into book(book_id,title,book_isbn,author,genre,amount,book_date_instock,staff_id,student_id)values(222, 'Twisted love', 'b2028428', 'Ana Chuang', 'romantic', 70,CAST('2022-07-05'As Date), 3, 55);
Insert into book(book_id,title,book_isbn,author,genre,amount,book_date_instock,staff_id,student_id)values(333, 'Twisted game', 'b2905034', 'Ana Chuang', 'romantic', 45, CAST('2019-04-23'As Date), 3, 66);
Insert into book(book_id,title,book_isbn,author,genre,amount,book_date_instock,staff_id,student_id)values(444, 'Twisted hate', 'b2173842', 'Ana Chuang', 'romantic', 63, CAST('2021-09-05'As Date), 4,77);
Insert into book(book_id,title,book_isbn,author,genre,amount,book_date_instock,staff_id,student_id)values(555, 'Twisted lie', 'b2603028',  'Ana Chuang', 'romantic',52, CAST('2020-05-14' AS Date),6,88);
Insert into book(book_id,title,book_isbn,author,genre,amount,book_date_instock,staff_id,student_id)values(666, 'Comeback', 'b2019482', 'Lyn Ashwood',  'comedy',12, CAST('2021-06-30' AS Date), 3, 99);
Insert into book(book_id,title,book_isbn,author,genre,amount,book_date_instock,staff_id,student_id)values(777, 'You’re reached Sam', 'b2034671', 'Dustin Thao', 'horror',16,CAST('2020-03-15' AS Date), 7, 22);
Insert into book(book_id,title,book_isbn,author,genre,amount,book_date_instock,staff_id,student_id)values(888, 'It starts with us', 'b2030137', 'Colleen Hoover', 'romantic',23, CAST('2023-01-28' AS Date), 9, 22);
Insert into book(book_id,title,book_isbn,author,genre,amount,book_date_instock,staff_id,student_id)values(999, 'The Seven Husbands', 'b2034512', 'Tylor Jenkins Reld', 'comedy',45, CAST('2023-02-12' AS Date), 3, 55);
Insert into book(book_id,title,book_isbn,author,genre,amount,book_date_instock,staff_id,student_id)values(101010, 'Once a Kprom', 'b2045672',  'Kat Cho', 'romantic',34, CAST('2019-09-12' AS Date), 4,77);