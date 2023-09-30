create database Clinic;
use Clinic;
create table Staff(
Staff_ID Varchar(10) not null,
First_Name Varchar(30) not null,
Last_Name Varchar(30) not null,
Gender Char not null,
Phone_Number varchar(20) not null,
Email Varchar(30) not null,
Staff_Position Varchar(20) not null,
Salary Varchar(20) not null,
Start_Work_Date Date not null,
Start_Time_Work Time,
End_Time_Work Time,
primary key(Staff_ID)
);

Create table Doctor(
Doctor_ID Varchar(10) not null,
First_Name Varchar(30) not null,
Last_Name Varchar(30) not null,
primary key(Doctor_ID)
);

Create table Patient(
Patient_ID int auto_increment not null,
First_Name Varchar(30) not null,
Last_Name Varchar(30) not null,
Gender Char not null,
DoB Date not null,
Phone_Number Varchar(20) not null,
Address Varchar(20) not null,
primary key(Patient_ID)
);

create table Reciept(
Doctor_ID Varchar(10) not null,
Patient_ID int not null,
Reciept_ID Varchar(10) not null,
Date_of_Treatment Date not null,
Staff_ID Varchar(10) not null,
Price_of_Treatment Varchar(20) not null,
Payment_Method Varchar(20) not null,
primary key(Reciept_ID),
foreign key(Doctor_ID) references Doctor(Doctor_ID),
foreign key(Patient_ID) references Patient(Patient_ID),
foreign key(Staff_ID) references Staff(Staff_ID)
);

Insert into Staff(Staff_ID,First_Name,Last_Name,Gender,Phone_Number,Email,Staff_Position,Salary,Start_Work_Date,Start_Time_Work,End_Time_Work)
values
    ('D001', 'John', 'Doe', 'M', '017678920', 'john.doe@example.com', 'Cardiology','$1000','2020-12-23','07:00','11:00'),
    ('D002', 'Jane', 'Smith', 'F', '087654321', 'jane.smith@example.com', 'Dermatology','$1500','2019-10-29','07:00','11:00'),
    ('D003', 'David', 'Johnson', 'M', '06789123', 'david.johnson@example.com', 'Orthopedics','$2000','2015-12-21','07:00','17:00'),
    ('D004', 'Sarah', 'Williams', 'F', '078912340', 'sarah.williams@example.com', 'Pediatrics','$1000','2022-09-09','17:00','22:00'),
    ('D005', 'Michael', 'Brown', 'M', '01654987', 'michael.brown@example.com', 'Ophthalmology','$1000','2020-11-13','13:00','17:00'),
    ('D006', 'Emily', 'Davis', 'F', '097498732', 'emily.davis@example.com', 'Gastroenterology','$1800','2020-12-23','17:00','22:00'),
    ('D007', 'Daniel', 'Miller', 'M', '098732165', 'daniel.miller@example.com', 'Neurology','$1200','2022-11-20','07:00','11:00'),
    ('D008', 'Olivia', 'Wilson', 'F', '015935788', 'olivia.wilson@example.com', 'Obstetrics','$800','2022-08-20','13:00','17:00'),
    ('D009', 'Matthew', 'Taylor', 'M', '087395145', 'matthew.taylor@example.com', 'Psychiatry','$2000','2020-12-23','07:00','13:00'),
    ('D010', 'Ava', 'Anderson', 'F', '012612378', 'ava.anderson@example.com', 'Cardiology','$1600','2023-12-23','13:00','20:00'),
    ('S001', 'John', 'Doe', 'M', '012 345 678', 'johndoe@email.com', 'Nurse','$600','2018-12-21','13:00','20:00'),
	('S002', 'Jane', 'Dayea', 'F', '017 456 789', 'janesmith@email.com', 'Nurse','$600','2020-10-20','07:00','13:00'),
	('S003', 'David', 'Leang', 'M', '011 567 891', 'davidlee@email.com', 'Nurse','$800','2019-12-03','13:00','20:00'),
	('S004', 'Sarah', 'Jinna', 'F', '096 456 789', 'sarahjohnson@email.com', 'Driver','$400','2022-10-20','13:00','20:00'),
	('S005', 'Michael', 'Jones', 'M', '060 789 012', 'michaeljones@email.com', 'Driver','$400','2023-12-23','07:00','13:00'),
	('S006', 'Emily', 'Davis', 'F', '086 890 1234', 'emilydavis@email.com', 'Cashier','$350','2021-08-29','13:00','20:00'),
	('S007', 'Robert', 'Brown', 'M', '089 012 345', 'robertbrown@email.com', 'Cashier','$350','2022-12-30','07:00','13:00'),
	('S008', 'Jessica', 'Garcia', 'F', '015 234 567', 'jessicagarcia@email.com', 'Cleaner','$250','2022-10-12','07:00','13:00'),
	('S009', 'Christopher', 'Wilson', 'M', '069 456 789', 'christopherwilson@email.com', 'Cleaner','$250','2023-12-23','13:00','20:00'),
	('S010', 'Bunthoen', 'Kaisol', 'F', '012 345 500', 'bunthoeunkaisol@email.com', 'Nurse','$600','2023-12-21','07:00','13:00');
    
INSERT INTO Doctor (Doctor_ID, First_Name,Last_Name)
VALUES
    ('D001', 'John', 'Doe'),
    ('D002', 'Jane', 'Smith'),
    ('D003', 'David', 'Johnson'),
    ('D004', 'Sarah', 'Williams'),
    ('D005', 'Michael', 'Brown'),
    ('D006', 'Emily', 'Davis'),
    ('D007', 'Daniel', 'Miller'),
    ('D008', 'Olivia', 'Wilson'),
    ('D009', 'Matthew', 'Taylor'),
    ('D010', 'Ava', 'Anderson');
    
insert into patient(Patient_ID, First_name, Last_name, Gender, DoB, Phone_Number, Address)
 values (1, 'Champa', 'Phea', 'F', '2000-09-23', '089 435 282', 'Phnom Penh'),
 (2, 'Phal', 'Davy', 'F', '2002-10-01', '012 345 678', 'Battambang'),
 (3, 'Rith', 'Bora', 'M', '1997-09-08', '017 238 796 ', 'Kep'),
 (4, 'Jonh', 'Smith', 'M', '2009-10-30', '097 270 100', 'Kep'),
 (5, 'Rith', 'Chanthyda', 'F', '2001-12-24', '012 340 560', 'Phnom Penh'),
 (6, 'Phoung', 'Bunthoeun', 'M', '2000-08-14', '011 235 098', 'Prey Veng'),
 (7, 'Pheng', 'Sothea', 'F', '1998-04-06', '010 235 970', 'Phnom Penh'),
 (8, 'Phun', 'Sreypich', 'M', '2004-09-01', '077 234 098', 'Kompong Cham'),
 (9, 'Nor', 'Phanith', 'M', '2021-12-05', '012 879 000', 'Siem Reap'),
 (10, 'Tang', 'Boramey', 'F', '1990-03-19', '012 980 123', 'Battambang'),
 (11, 'Sok', 'Vireak', 'M', '2003-09-30', '012 087 098', 'Kompong Cham'),
 (12, 'Rathank', 'Tepy', 'F', '1998-01-19', '011 870 800', 'Phnom Penh'),
 (13, 'Mong', 'Rangsey', 'F', '2001-05-22', '012 789 689', 'Prey Veng'),
 (14, 'Tha', 'Socheat', 'M', '1996-05-03', '098 790 099', 'Battambang'),
 (15, 'Meng', 'Mongkol', 'M', '2001-05-05', '012 789 088', 'Phnom Penh');
 
INSERT INTO Reciept (Doctor_ID, Patient_ID, Reciept_ID, Date_of_Treatment, Staff_ID, Price_of_Treatment, Payment_Method)
VALUES
    ('D001', 1, 'RC001', '2023-06-01', 'S006', '$1000', 'Cash'),
    ('D002', 2, 'RC002', '2023-06-02', 'S006', '$1500', 'Card'),
    ('D003', 3, 'RC003', '2023-06-03', 'S006', '$1200', 'ABA'),
    ('D004', 4, 'RC004', '2023-06-04', 'S006', '$1100', 'Card'),
    ('D005', 5, 'RC005', '2023-06-05', 'S006', '$1000', 'Acleda'),
    ('D006', 6, 'RC006', '2023-06-06', 'S007', '$250', 'Acleda'),
    ('D007', 7, 'RC007', '2023-06-07', 'S007', '$300', 'Wing'),
    ('D008', 8, 'RC008', '2023-06-08', 'S007', '$2000', 'ABA'),
    ('D009', 9, 'RC009', '2023-06-09', 'S007', '$1300', 'Cash'),
    ('D010', 10,'RC010', '2023-06-10', 'S007', '$1800', 'ABA');