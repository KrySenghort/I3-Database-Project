CREATE DATABASE SchoolManagementSystem ;
USE SchoolManagementSystem;

-- Create Teacher Table --
CREATE TABLE Teacher (
    Teacher_id varchar(10) PRIMARY KEY not null,        
    Teacher_name varchar(30) not null,
    gender char not null,
    DOB varchar(15) not null,
    phone_number varchar(15) not null,
    email varchar(40) not null,
	starting_days date not null,
    degree varchar(20) not null,
    salary int not null,
    address varchar(40) not null
);

-- Insert Data into the Teacher Table --
INSERT INTO Teacher (Teacher_id, Teacher_name, gender, DOB, phone_number, email, starting_days, degree, salary, address)
VALUES
    ('T001', 'John Smith', 'M', '1998-02-29', '123-456-7890', 'john.smith@example.com', '2023-06-20', 'BachelorIT', 800, '174 Street 118, Phnom Penh'),
    ('T002', 'Jane Doe', 'F', '1997-01-31', '987-654-3210', 'jane.doe@example.com', '2015-02-25', 'MasterMathematic', 1200, '456 Street 19, Siem Reap'),
    ('T003', 'Michael Anderson', 'M', '1989-10-12', '555-123-4567', 'michael.anderson@example.com', '2016-03-17', 'BachelorScience', 900, '789 Street 22, Battambang'),
    ('T004', 'Emily Wilson', 'F', '2000-01-07', '789-456-1230', 'emily.wilson@example.com', '2017-04-10', 'MasterDatascience', 1500, '1213 Street 44, Kampong Cham'),
    ('T005', 'David Johnson', 'M', '1999-09-25', '222-333-4444', 'david.johnson@example.com', '2018-05-04', 'BachelorMath', 750, '1314 Street 55, Prey Veng'),
    ('T006', 'Sophia Lee', 'F', '1987-05-07', '777-888-9999', 'sophia.lee@example.com', '2019-06-08', 'MasterML', 1300, '1516 Street 77, Takeo'),
    ('T007', 'William Thompson', 'M', '1998-09-07', '444-555-6666', 'william.thompson@example.com', '2020-07-12', 'BachelorNetwork', 850, '1617 Street 88, Kandal'),
    ('T008', 'Olivia Martin', 'F', '2000-03-22', '111-222-3333', 'olivia.martin@example.com', '2021-08-16', 'MasterMath', 1100, '2223 Street 1050, Kampot'),
    ('T009', 'Daniel Harris', 'M', '1986-10-12', '666-777-8888', 'daniel.harris@example.com', '2022-09-20', 'BachelorCommerce', 750, '2526 Street 1080, Banteay Meanchey'),
    ('T010', 'Ava Rodriguez', 'F', '1996-01-25', '999-000-1111', 'ava.rodriguez@example.com', '2019-09-24', 'MasterIT', 1000, '2627 Street 1090, Pailin');
    
-- Create Department Table --
CREATE TABLE Department (
	Department_id varchar(10) PRIMARY KEY not null,
    Department_name varchar(10) not null,
    fee_school int not null
);

-- Insert Data into the Department Table --
INSERT INTO Department (Department_id, Department_name, fee_school)
VALUES
	('D001', 'AMS', 600),
    ('D002', 'GIM', 600),
    ('D003', 'GIC', 600),
    ('D004', 'GCI', 600),
    ('D005', 'GRU', 600),
    ('D006', 'GEE', 600),
    ('D007', 'OAC', 600),
    ('D008', 'GTR', 600),
    ('D009', 'GGG', 600),
    ('D010', 'GCA', 600);
    
-- Create Group Table --
CREATE TABLE Groupe (
	Group_id varchar(10) PRIMARY KEY not null,
    Department_id varchar(10) not null,
    Group_name varchar(10) not null,
    FOREIGN KEY (Department_id) REFERENCES Department (Department_id)
);

-- Insert Data into the Groupe Table
INSERT INTO Groupe (Group_id, Department_id, Group_name)
VALUES
	('G001', 'D001', 'Group A'),
    ('G002', 'D002', 'Group 1'),
    ('G003', 'D003', 'Group A'),
    ('G004', 'D004', 'Group 1'),
    ('G005', 'D005', 'Group A'),
    ('G006', 'D006', 'Group 1'),
    ('G007', 'D007', 'Group A'),
    ('G008', 'D008','Group 1'),
    ('G009', 'D009', 'Group A'),
    ('G010', 'D010', 'Group 1');

-- Create Student Table --
CREATE TABLE Student (
    Student_id varchar(10) PRIMARY KEY not null,
    Group_id varchar(10) not null,
    Student_name varchar(30) not null,
	gender char not null,
    DOB varchar(15) not null,
    generation int not null,
    email varchar(40) not null,
    address varchar(40) not null,
    phone_number varchar(15) not null,
    FOREIGN KEY (Group_id) REFERENCES Groupe (Group_id)
);

-- Insert Data into the Student Table --
INSERT INTO Student (Student_id, Group_id, Student_name, gender, DOB, generation, email, address, phone_number)
VALUES
	('S001', 'G001', 'Emily Wilson', 'F', '2002-09-05', 1, 'emily.wilson@example.com', '45 Street 45, Siem Reap', '555-123-4567'),
    ('S002', 'G002', 'Michael Anderson', 'M', '2003-03-12', 1, 'michael.anderson@example.com', '78 Street 78, Battambang', '789-456-1230'),
    ('S003', 'G003', 'Sophia Lee', 'F', '2001-11-25', 1, 'sophia.lee@example.com', '102 Street 102, Kampot', '222-333-4444'),
    ('S004', 'G004', 'William Thompson', 'M', '2002-07-18', 3, 'william.thompson@example.com', '104 Street 104, Pursat', '777-888-9999'),
    ('S005', 'G005', 'Olivia Martin', 'F', '2003-01-03', 2, 'olivia.martin@example.com', '111 Street 111, Kratie', '444-555-6666'),
    ('S006', 'G006', 'Daniel Harris', 'M', '2002-04-30', 1, 'daniel.harris@example.com', '113 Street 113, Takeo', '111-222-3333'),
    ('S007', 'G007', 'Ava Rodriguez', 'F', '2001-10-15', 10, 'ava.rodriguez@example.com', '114 Street 114, Kandal', '666-777-8888'),
    ('S008', 'G008', 'James Campbell', 'M', '2003-06-22', 32, 'james.campbell@example.com', '115 Street 115, Kompong Cham', '999-000-1111'),
    ('S009', 'G009', 'Mia Jackson', 'F', '2002-02-08', 11, 'mia.jackson@example.com', '119 Street 31, Kampot', '222-111-4444'),
    ('S010', 'G010', 'Benjamin Brown', 'M', '2001-08-27', 20, 'benjamin.brown@example.com', '101 Street 101, Kandal', '888-999-2222');
    
-- Create Course Table --
CREATE TABLE Course (
	Course_id varchar(10) PRIMARY KEY not null,
    Course_name varchar(30) not null,
    duration_as_hour int not null,
    credit int not null
);

-- Insert Data into the Course Table --
INSERT INTO Course (Course_id, Course_name, duration_as_hour, credit)
VALUES
	('C001', 'Statistic', 48, 2),
    ('C002', 'OOP', 64, 3),
    ('C003', 'Optimization', 64, 3),
    ('C004', 'French', 64, 2),
    ('C005', 'English', 32, 1),
    ('C006', 'Database', 48, 2),
    ('C007', 'Numerical Analysis', 64, 3),
    ('C008', 'Seminar', 32, 1),
    ('C009', 'Mathematic', 48, 2),
    ('C010', 'Advance Probability', 48, 3);

-- Create Schedule Table --
CREATE TABLE Schedule (
    Schedule_id varchar(10) PRIMARY KEY not null,
    Teacher_id varchar(10),
    Course_id varchar(10),
    Student_id varchar(10),
    date_time datetime not null,
    room_number int not null,
    type_of_teach varchar(10) not null,
    attendent varchar(5) not null,
    FOREIGN KEY (Teacher_id) REFERENCES Teacher (Teacher_id),
    FOREIGN KEY (Course_id) REFERENCES Course (Course_id),
    FOREIGN KEY (Student_id) REFERENCES Student (Student_id)
);

-- Insert Data into the Schedule Table --
INSERT INTO Schedule (Schedule_id, date_time, room_number, type_of_teach, Teacher_id, Course_id, Student_id, attendent)
VALUES
	('SC001', '2023-06-01 09:00:00', 101, 'Lecture', 'T001', 'C001' , 'S001', 'A'),
    ('SC002', '2023-06-01 10:30:00', 202, 'TD', 'T002', 'C002', 'S002', 'P'),
    ('SC003', '2023-06-01 13:00:00', 303, 'Lecture', 'T003', 'C003', 'S003', 'UA'),
    ('SC004', '2023-06-02 11:00:00', 104, 'TP', 'T004', 'C004', 'S004', 'UA'),
    ('SC005', '2023-06-02 14:30:00', 205, 'TD', 'T005', 'C005', 'S005', 'A'),
    ('SC006', '2023-06-03 09:30:00', 306, 'Lecture', 'T006', 'C006', 'S006', 'P'),
    ('SC007', '2023-06-03 12:00:00', 107, 'TP', 'T007', 'C007', 'S007', 'UA'),
    ('SC008', '2023-06-04 10:00:00', 208, 'TD', 'T008', 'C008', 'S008', 'A'),
    ('SC009', '2023-06-04 13:30:00', 309, 'Lecture', 'T009', 'C009', 'S009', 'UA'),
    ('SC010', '2023-06-05 11:30:00', 110, 'TP', 'T010', 'C010', 'S010', 'UA');
    