CREATE DATABASE Pharmacy;
USE Pharmacy;

create table Customer
(
Customer_ID int auto_increment not null,
Customer_name varchar(45) not null,
Customer_sex varchar(6) not null,
Customer_Address varchar(45) not null,
Customer_phone_numer varchar(13) not null,
primary key(Customer_ID)
);

CREATE TABLE Medicine (
    Medicine_ID INT not null,
    Medicine_Name VARCHAR(30) not null,
    Medicine_Type VARCHAR(60) not null,
    Price_original float not null,
    Price float not null,
    Expired_Date DATE,
    Quantity_Pack INT,
    PRIMARY KEY (Medicine_ID)
);

CREATE TABLE Staff (
    Staff_ID INT auto_increment not null,
    Staff_Name VARCHAR(30) not null,
    Sex VARCHAR(4) not null,
    Position VARCHAR(30) not null,
    Hired_Date DATE not null,
    DoB DATE not null,
    Salary float not null,
    PRIMARY KEY (Staff_ID)
);

CREATE TABLE buy
(
    Order_ID INT not null,
    Customer_ID INT not null,
    Medicine_ID INT not null,
    Staff_ID INT not null,
    Buy_Amount INT not null,
	Prescription char(3) not null,
    Date DATE not null,
    Time TIME not null,
    PRIMARY KEY(Order_ID),
    FOREIGN KEY(Customer_ID) REFERENCES customer(Customer_ID),
    FOREIGN KEY(Medicine_ID) REFERENCES medicine(Medicine_ID),
    FOREIGN KEY(Staff_ID) REFERENCES staff(Staff_ID)
);
insert into customer (Customer_ID,Customer_name, Customer_sex,Customer_Address,Customer_phone_numer)
values(3412,'Srey Leak','F','Toul Kork','0964278523'),
	  (2123,'Vuthy Rithy','M','Boeung Keng Kang','012582342'),
      (3987,'Sopheap Sok','M','Borey Chip Mong','012489238'),
      (4311,'Srey Neang','F', 'Tuol Sangke','0882044757'),
      (5323,'Rithy Kim','M', 'Chroy Changvar','0962384525'),
      (6612,'Pisey Khy','F','Sen Sok','0964378523'),
      (7123,'Sovann Ratha','M','Dangkor','012582343'),
      (7987,'Chanvatey Mao','F','Chamkarmon','012489239'),
      (8311,'Sopheak Sopheap','M','Mean Chey', '0882094757'),
      (9323,'Raksa Samnang','F','Toul Svay Prey', '0962384526'),
      (1112,'Sophorn Chheng','M', 'Boeung Salang','0964478523'),
      (1123,'Sreyleak Ouk','F','Sen Sok','012582344'),
      (1198,'Raksmey Tha','M','Tuol Kouk', '012489240'),
      (1233,'Sopheak Sopheap','f','Chamkarmon', '0882144757'),
      (1324,'Sopanha Som','M','Chbar Ampov','0962384527'),
      (1232,'HENG RAKSA','F','7Makara','0964078523'),
      (1321,'MEAN CHANNY','M','TTP','012582340'),
      (1213,'Kosal Dalin','F','BKK','012489236'),
      (1131,'Phann Sreynea','F','Borey Peng Houy','0881944757'),
      (1323,'Kim Somnang','F','Sen Sok','0962384523');
 
INSERT INTO staff (Staff_ID, Staff_Name, Sex, Position, Hired_Date, DoB, Salary)
VALUES
    (1, 'Srey Meas', 'F', 'pharmacist', '2015-03-13', '1983-04-12', 800),
    (2, 'Pov Cheata', 'F', 'cashier', '2019-09-24', '1997-05-08', 500),
    (3, 'Dann Sina', 'M', 'pharmacy technician', '2018-07-12', '1990-08-11', 600),
    (4, 'Kim Leakhena', 'F', 'pharmacist', '2017-02-09', '1981-04-12', 800),
    (5, 'Sey Hak', 'M', 'pharmacy technician', '2021-11-02', '1991-02-13', 650),
    (6, 'Sok Sopheak', 'M', 'pharmacy technician', '2020-08-02', '1995-09-20', 550),
    (7, 'Kheng Vannak', 'M', 'pharmacy technician', '2022-05-21', '1997-03-05', 600),
    (8, 'Chamroeun Ravy', 'M', 'cashier', '2022-05-21', '1998-07-15', 450),
    (9, 'Chan Sreyroth', 'F', 'pharmacy technician', '2021-03-07', '1996-10-25', 500),
    (10, 'Mao Visal', 'M', 'cashier', '2019-01-17', '1998-06-10', 400);

INSERT INTO medicine (Medicine_ID, Medicine_Name, Medicine_Type,Price_original, Price, Expired_Date, Quantity_Pack)
VALUES
    (1421, 'Amoxicillin', 'Antibiotic (Ciprofloxacin)',2.0, 2.5, '2026-06-25', 22),
    (2912, 'Ciprofloxacin', 'Antibiotic (Amoxicillin)',1.3, 1.8, '2027-09-14', 35),
    (1897, 'Azithromycin', 'Antibiotic (Ciprofloxacin)',0.5, 0.9, '2026-04-30', 22),
    (4372, 'Amlodipine', 'Calcium channel blocker(Hydrochlorothiazide)',3.25, 3.75, '2025-08-19', 20),
    (5681, 'Hydrochlorothiazide', 'Thiazide Diuretic (Amlodipine)', 0.8,1.2, '2026-07-17', 39),
    (6213, 'Gabapentin', 'Anticonvulsant',1.75, 2.25, '2026-11-22', 40),
    (7156, 'Metformin', 'Antidiabetic',0.5, 0.85, '2025-12-08', 21),
    (8212, 'Omeprazole', 'Proton Pump Inhibitor',0.7, 1.1, '2026-09-05', 37),
    (9423, 'Escitalopram', 'SSRI antidepressant(Fluoxetine)', 1.8,2.3, '2027-10-16', 32),
    (1032, 'Fluoxetine', 'SSRI antidepressant(Escitalopram)',1.1, 1.5, '2026-03-29', 43),
    (1176, 'Sertraline', 'Reuptake Inhibitor antidepressant', 1.0,1.4, '2028-05-07', 23),
    (1243, 'Amlodipine', 'Calcium Channel Blocker (Losartan)',1.3, 1.8, '2027-02-09', 44),
    (1398, 'Escitalopram', 'Reuptake Inhibitor antidepressant',1.2, 1.6, '2026-07-02', 37),
    (1554, 'Losartan', 'Angiotensin II Receptor Blocker (Amlodipine)',0.9, 1.3, '2025-11-11', 20),
    (1689, 'Montelukast', 'Leukotriene Receptor Antagonist',1.2, 1.7, '2026-09-15', 49),
    (1223, 'Ocycodone', 'Opioid Analgesic',0.6, 1, '2025-02-12', 37),
    (2482, 'Paracetamol', 'Analgesic/Antipyretic', 0.75,1.25, '2026-03-13', 37),
    (2348, 'Aspririn', 'Nonsteroidal Anti-Inflammatory Drug', 0.45,0.75, '2026-03-15', 44),
    (823, 'ibuprofen', 'Nonsteroidal Anti-Inflammatory Drug', 0.45,0.75, '2025-03-19', 36),
    (3243, 'basaglar', 'Long-acting Insulin',1.5, 2.00, '2028-02-12', 34);

INSERT INTO buy (Order_ID, Customer_ID, Medicine_ID, Staff_ID, Buy_Amount, Date, Time, Prescription)
VALUES
    (1, 1232, 1223, 1, 2, '2023-02-01', '08:11:23','Yes'),
    (2, 1131, 7156, 2, 3, '2023-02-01', '10:15:20','Yes'),
    (3, 2123, 2912, 3, 1, '2023-02-02', '09:12:21','Yes'),
    (4, 4311, 7156, 2, 2, '2023-02-02', '09:30:18','Yes'),
    (5, 1232, 2482, 3, 1, '2023-02-02', '10:00:11','Yes'),
    (6, 7987, 2348, 1, 2, '2023-03-02', '13:10:19','Yes'),
    (7, 9323, 2912, 3, 2, '2023-03-02', '13:40:20','Yes'),
    (8, 1198, 1897, 2, 1, '2023-03-02', '15:18:29','Yes'),
    (9, 2123, 1223, 1, 3, '2023-03-02', '15:30:30','Yes');