CREATE DATABASE hospital;
USE hospital;

-- Room
CREATE TABLE Room (
  room_id INT AUTO_INCREMENT NOT NULL,
  capacity INT NOT NULL,
  PRIMARY KEY (room_id)
);

INSERT INTO Room VALUES
  (1, 2),
  (2, 4),
  (3, 4),
  (4, 4),
  (5, 2),
  (6, 2),
  (7, 2),
  (8, 4),
  (9, 2),
  (10, 4);

SELECT * FROM Room;




-- Department
CREATE TABLE Department(
    department_id INT NOT NULL,
    name VARCHAR(45) NOT NULL,
    categories VARCHAR(40) NOT NULL,
    number_of_room INT NOT NULL,
    number_of_staff INT NOT NULL,
    head_of_department VARCHAR(45) NOT NULL,
    schedule VARCHAR(10) NOT NULL,
    PRIMARY KEY (department_id)
);

SELECT * FROM Department;
DESCRIBE Department;

INSERT INTO Department VALUES(1, 'Department Emergency Medicine', 'Emergency Medicine', 2, 4, 'Chan Dara', '24/7');
INSERT INTO Department VALUES(2, 'Department of Dermatology', 'Dermatology', 2, 4, 'Lim Pisoth', '8-5');
INSERT INTO Department VALUES(3, 'Department of Pediatrics', 'Pediatrics', 2, 4, 'Albert Benzema', '8-5');
INSERT INTO Department VALUES(4, 'Department of Internal Medicine', 'Internal Medicine', 2, 4, 'Kim Vanda', '8-5');
INSERT INTO Department VALUES(5, 'Department of Cardiology', 'Cardiology', 2, 4, 'Mony Votey', '8-5');



-- Staff 
CREATE TABLE Staff (
  staff_id VARCHAR(3),
  first_name VARCHAR(15) NOT NULL,
  last_name VARCHAR(15) NOT NULL,
  dob DATE NOT NULL,
  email VARCHAR(35),
  gender VARCHAR(1),
  nationality VARCHAR(15),
  phone_number VARCHAR(15) NOT NULL,
  room_id INT NOT NULL,
  speciality VARCHAR(20) NOT NULL,
  address VARCHAR(30) NOT NULL,
  salary INT NOT NULL,
  department_id INT,
  PRIMARY KEY (staff_id),
  FOREIGN KEY (room_id) REFERENCES Room (room_id),
  FOREIGN KEY (department_id) REFERENCES Department (department_id)
);

INSERT INTO Staff VALUES
  ('s01', 'Chork', 'Darisa', '1999-11-30', 'darisa@gmail.com', 'F', 'Cambodian', '12346798', 1, 'nurse', 'Kampongcham', 600, 1),
  ('s02', 'Dok', 'Sopheaktra', '1999-09-14', 'sopheaktra@gmail.com', 'F', 'Cambodian', '87556712', 2, 'nurse', 'Phnom Penh', 600, 2),
  ('s03', 'Eng', 'Sreymeas', '2000-08-07', 'sreymeas@gmail.com', 'F', 'Cambodian', '77532319', 3, 'nurse', 'Phnom Penh', 500, 3),
  ('s04', 'Kong', 'Kea', '1999-03-26', 'kea@gmail.com', 'F', 'Thai', '87997133', 4, 'nurse', 'Kandal', 600, 4),
  ('s05', 'Meas', 'Pisey', '2000-11-12', 'pisey@gmail.com', 'F', 'Cambodian', '96200123', 5, 'nurse', 'Phnom Penh', 500, 5),
  ('s06', 'Mit', 'Mongkul', '2000-02-11', 'mongkul@gmail.com', 'M', 'Cambodian', '88925561', 6, 'pharmacy', 'Phnom Penh', 500, 1),
  ('s07', 'Noa', 'Pichda', '1999-02-08', 'pichda@gmail.com', 'F', 'Cambodian', '96145988', 7, 'pharmacy', 'Phnom Penh', 600, 2),
  ('s08', 'Franklin', 'Jessica', '2001-01-05', 'Jessica07@gmail.com', 'F', 'French', '870908234', 8, 'pharmacy', 'Paris', 600, 3),
  ('s09', 'Tith', 'Sovan', '2000-12-03', 'sovan@gmail.com', 'M', 'Cambodian', '977040242', 9, 'pharmacy', 'Phnom Penh', 500, 4),
  ('s10', 'Yang', 'Meyseu', '2001-05-25', 'meyseu@gmail.com', 'M', 'Chinese', '96236511', 10, 'pharmacy', 'Phnom Penh', 500, 5);
INSERT INTO Staff VALUES
  ('d01', 'Lim', 'Pisoth', '1973-07-27', 'garciacynthia@gmail.com', 'M', 'Cambodian', '822064108', 1, 'Pediatrics', 'Phnom Penh', 1200, 1),
  ('d02', 'Albert', 'Benzema', '1986-01-02', 'flowersadam@gmail.com', 'M', 'France', '282096921', 2, 'Dermatology', 'Phnom Penh', 1300, 2),
  ('d03', 'Raphael', 'Hernandez', '1962-11-28', 'sramirez@gmail.com', 'M', 'France', '341023995', 3, 'Dermatology', 'Phnom Penh', 1300, 3),
  ('d04', 'Tes', 'Sombath', '1960-06-28', 'vjordan@gmail.com', 'M', 'Cambodian', '440426357', 4, 'Pediatrics', 'Phnom Penh', 1200, 4),
  ('d05', 'Brak', 'Oudom', '1960-12-28', 'donna50@gmail.com', 'M', 'Cambodian', '304132782', 5, 'Internal Medicine', 'Phnom Penh', 1000, 5),
  ('d06', 'Keo', 'Raksmey', '1998-05-13', 'amywhite@gmail.com', 'F', 'Cambodian', '438463820', 6, 'Cardiology', 'Phnom Penh', 1100, 1),
  ('d07', 'Kim', 'Vanda', '1979-05-20', 'morgancheyenne@gmail.com', 'M', 'Cambodian', '723166304', 7, 'Internal Medicine', 'Phnom Penh', 1000, 2),
  ('d08', 'Chan', 'Dara', '1978-12-29', 'brandon14@gmail.com', 'M', 'Cambodian', '724342239', 8, 'Emergency Medicine', 'Phnom Penh', 1400, 3),
  ('d09', 'Mony', 'Votey', '1997-05-05', 'michael28@gmail.com', 'F', 'Cambodian', '395141365', 9, 'Cardiology', 'Phnom Penh', 1100, 4),
  ('d10', 'Heng', 'Jasmine', '1986-03-17', 'mramirez@gmail.com', 'F', 'Cambodian', '590709120', 10, 'Emergency Medicine', 'Phnom Penh', 1400, 5);

SELECT * FROM Staff;




-- Patient
CREATE TABLE Patient (
    patient_id VARCHAR(5) NOT NULL,
    first_name VARCHAR(15) NOT NULL,
    last_name VARCHAR(15) NOT NULL,
    dob DATE NOT NULL,
    gender VARCHAR(1),
    nationality VARCHAR(30),
    address VARCHAR(45),
    email VARCHAR(20),
    phone_number VARCHAR(15),
    disease VARCHAR(45) NOT NULL,
    room_id INT NOT NULL,
    staff_id VARCHAR(5) NOT NULL,
    PRIMARY KEY(patient_id),
    FOREIGN KEY (room_id) REFERENCES Room (room_id),
    FOREIGN KEY (staff_id) REFERENCES Staff (staff_id)
);
SELECT * FROM Patient;
DESCRIBE Patient;

INSERT INTO Patient (patient_id, first_name, last_name, dob, gender, nationality, address, email, phone_number, disease, room_id, staff_id)
VALUES
    ('p0001', 'Bun', 'Vitou', '2002-05-23', 'M', 'Cambodia', 'Phnom Penh', 'Vitou23@gmail.com', '1234567890', 'Anaphylaxiy', 1, 'd08'),
    ('p0002', 'Tak', 'Setha', '2000-09-30', 'M', 'Cambodia', 'Phnom Penh', 'Setha30@gmail.com', '85465858', 'Cardiac Arrest', 2, 'd08'),
    ('p0003', 'John', 'Wick', '2001-12-12', 'F', 'Russian', 'Phnom Penh', 'Lyna12@gmail.com', '92203040', 'Asthma, Type 1 Diabetes', 3, 'd04'),
    ('p0004', 'Chan', 'Vatana', '1998-04-09', 'M', 'Cambodia', 'Kandal', 'Vatana09@gmail.com', '77192932', 'Ear Infections, Pneumonia', 4, 'd04'),
    ('p0005', 'Keo', 'Pich', '2003-10-18', 'F', 'Cambodia', 'Takeo', 'Pich18@gmail.com', '88343443', 'Acne Vulgaris', 5, 'd02'),
    ('p0006', 'Lim', 'Pisey', '2000-02-25', 'F', 'Cambodia', 'Phnom Penh', 'Pisey25@gmail.com', '88444333', 'Skin Cancer, Rosacea', 6, 'd03'),
    ('p0007', 'Sok', 'Channa', '1997-06-01', 'F', 'Cambodia', 'Phnom Penh', 'Channa01@gmail.com', '23595969', 'Heart Attack, Arrhythmia', 7, 'd07'),
    ('p0008', 'Long', 'Sopheab', '1998-09-07', 'M', 'Cambodia', 'Takeo', 'Sopheab07@gmail.com', '77477477', 'Heart Blood Pressure', 8, 'd05'),
    ('p0009', 'Thon', 'Manith', '2003-04-24', 'F', 'Cambodia', 'Kandal', 'Manith24@gmail.com', '98121292', 'Chronic Kidney Disease', 9, 'd06'),
    ('p0010', 'Phal', 'Sothy', '2002-08-15', 'M', 'Cambodia', 'Phnom Penh', 'Sophy15@gmail.com', '80445545', 'Types 2 Diabetes', 10, 'd06');





-- medicine
create table medicine
(
    medicine_id int auto_increment not null,
    `name` varchar(30) not null,
    `description` varchar(225),
    company varchar(30) not null,
    price float,
    country varchar(20) not null,
    primary key(medicine_id)
);

INSERT INTO medicine (`name`, `description`, company, price, country)
VALUES 
('Epinephrine', 'A medication used to treat severe allergic reactions (anaphylaxis) and cardiac arrest.', 'ABC Pharmaceuticals', 10, 'United States'),
('Nitroglycerin', 'A medication used to relieve and prevent chest pain (angina) and treat heart failure.', 'XYZ Pharmaceuticals', 8, 'United Kingdom'),
('Albuterol', 'A bronchodilator used to treat and prevent bronchospasm in conditions such as asthma and COPD.', 'PQR Pharmaceuticals', 6, 'Germany'),
('Naloxone', 'A medication used to rapidly reverse opioid overdose.', 'DEF Pharmaceuticals', 12, 'France'),
('Amoxicillin', 'An antibiotic commonly prescribed for various bacterial infections in children.', 'ABC Pharmaceuticals', 5, 'United States'),
('Ibuprofen', 'A nonsteroidal anti-inflammatory drug used to relieve pain, reduce fever, and alleviate inflammation.', 'XYZ Pharmaceuticals', 4, 'United Kingdom'),
('Diphenhydramine', 'An antihistamine used to relieve symptoms of allergies, such as itching, sneezing, and runny nose.', 'PQR Pharmaceuticals', 3, 'Germany'),
('Acetaminophen (Paracetamol)', 'A common over-the-counter medication used to reduce pain and fever in children.', 'DEF Pharmaceuticals', 3, 'France'),
('Hydrocortisone Cream', 'A topical corticosteroid used to relieve inflammation and itching associated with skin conditions.', 'ABC Pharmaceuticals', 8, 'United States'),
('Clotrimazole', 'An antifungal medication used to treat various fungal skin infections.', 'XYZ Pharmaceuticals', 6, 'United Kingdom'),
('Benzoyl Peroxide Gel', 'A medication used for the treatment of acne, often available in topical formulations.', 'PQR Pharmaceuticals', 7, 'Germany'),
('Clobetasol Propionate Cream', 'A high-potency corticosteroid cream used to treat inflammatory skin conditions.', 'DEF Pharmaceuticals', 9, 'France'),
('Aspirin', 'A medication used to reduce pain, inflammation, and prevent blood clotting.', 'GHI Pharmaceuticals', 5, 'United States'),
('Atorvastatin', 'A medication used to lower cholesterol levels and reduce the risk of cardiovascular diseases.', 'JKL Pharmaceuticals', 7, 'United Kingdom'),
('Warfarin', 'An anticoagulant medication used to prevent blood clots.', 'MNO Pharmaceuticals', 6, 'Germany'),
('Metoprolol', 'A beta-blocker medication used to treat high blood pressure and heart-related conditions.', 'PQR Pharmaceuticals', 4, 'France'),
('Metformin', 'An oral medication used to manage and treat type 2 diabetes.', 'ABC Pharmaceuticals', 6, 'United States'),
('Losartan', 'An angiotensin receptor blocker (ARB) used to treat high blood pressure and protect the kidneys.', 'XYZ Pharmaceuticals', 5, 'United Kingdom'),
('Simvastatin', 'A medication used to lower cholesterol levels and reduce the risk of cardiovascular diseases.', 'PQR Pharmaceuticals', 7, 'Germany'),
('Levothyroxine', 'A hormone replacement medication used to treat an underactive thyroid gland.', 'DEF Pharmaceuticals', 5, 'France');

select * from medicine;

-- Receipt
create TABLE Receipt(
    receipt_id INT NOT NULL,
    staff_id VARCHAR(45) NOT NULL,
    patient_id VARCHAR(45) NOT NULL,
    medicine_id INT NOT NULL,
    date DATE NOT NULL,
    price FLOAT NOT NULL,
    PRIMARY KEY (receipt_id),
    FOREIGN KEY (staff_id) REFERENCES Staff (staff_id),
    FOREIGN KEY (patient_id) REFERENCES Patient (patient_id)
);

INSERT INTO Receipt VALUES(1,'S01','P0001',1,'2021-12-01',30);
INSERT INTO Receipt VALUES(2,'S01','P0002',2,'2021-12-01',60);
INSERT INTO Receipt VALUES(3,'S01','P0003',3,'2021-1-13',25);
INSERT INTO Receipt VALUES(4,'S01','P0004',4,'2021-1-14',30);
INSERT INTO Receipt VALUES(5,'S01','P0005',5,'2021-7-13',110);
INSERT INTO Receipt VALUES(6,'S01','P0006',6,'2021-12-5',20);
INSERT INTO Receipt VALUES(7,'S03','P0007',7,'2021-1-13',15);
INSERT INTO Receipt VALUES(8,'S03','P0008',8,'2021-1-14',230);
INSERT INTO Receipt VALUES(9,'S02','P0009',9,'2021-12-01',80);
INSERT INTO Receipt VALUES(10,'S02','P0010',10,'2021-12-01',40);

SELECT * FROM Receipt;

USE hospital;

ALTER TABLE department
DROP COLUMN head_of_department,
DROP COLUMN schedule;

ALTER TABLE department
ADD COLUMN open_time int,
ADD COLUMN close_time int;

UPDATE department
SET open_time = 0
WHERE department_id = 1;

UPDATE department
SET open_time = 8
WHERE department_id >= 2;

UPDATE department
SET close_time = 24
WHERE department_id = 1;

UPDATE department
SET close_time = 5
WHERE department_id >= 2;

ALTER TABLE department
ADD COLUMN short_name VARCHAR(3);

UPDATE department
SET short_name =
	CASE
    	WHEN department_id = 1 THEN 'DEM'
        WHEN department_id = 2 THEN 'DOD'
        WHEN department_id = 3 THEN 'DOP'
        WHEN department_id = 4 THEN 'DIM'
        WHEN department_id = 5 THEN 'DOC'
	END;




ALTER TABLE medicine
ADD COLUMN disease varchar(100);

-- Emergency Medicine
UPDATE medicine SET disease = 'Severe Allergic Reactions (Anaphylaxis), Cardiac Arrest' WHERE medicine_id = 1;
UPDATE medicine SET disease = 'Chest Pain (Angina), Heart Failure' WHERE medicine_id = 2;
UPDATE medicine SET disease = 'Bronchospasm in Asthma, COPD' WHERE medicine_id = 3;
UPDATE medicine SET disease = 'Opioid Overdose' WHERE medicine_id = 4;

-- Pediatrics
UPDATE medicine SET disease = 'Various Bacterial Infections in Children' WHERE medicine_id = 5;
UPDATE medicine SET disease = 'Pain, Fever, Inflammation' WHERE medicine_id = 6;
UPDATE medicine SET disease = 'Symptoms of Allergies' WHERE medicine_id = 7;
UPDATE medicine SET disease = 'Pain and Fever in Children' WHERE medicine_id = 8;

-- Dermatology
UPDATE medicine SET disease = 'Inflammation, Itching Associated with Skin Conditions' WHERE medicine_id = 9;
UPDATE medicine SET disease = 'Various Fungal Skin Infections' WHERE medicine_id = 10;
UPDATE medicine SET disease = 'Acne' WHERE medicine_id = 11;
UPDATE medicine SET disease = 'Inflammatory Skin Conditions' WHERE medicine_id = 12;

-- Cardiology
UPDATE medicine SET disease = 'Pain, Inflammation, and Blood Clotting' WHERE medicine_id = 13;
UPDATE medicine SET disease = 'High Cholesterol Levels and Cardiovascular Diseases' WHERE medicine_id = 14;
UPDATE medicine SET disease = 'Blood Clots' WHERE medicine_id = 15;
UPDATE medicine SET disease = 'High Blood Pressure and Heart-related Conditions' WHERE medicine_id = 16;

-- Internal Medicine
UPDATE medicine SET disease = 'Type 2 Diabetes' WHERE medicine_id = 17;
UPDATE medicine SET disease = 'High Blood Pressure and Kidney Protection' WHERE medicine_id = 18;
UPDATE medicine SET disease = 'High Cholesterol Levels and Cardiovascular Diseases' WHERE medicine_id = 19;
UPDATE medicine SET disease = 'Hypothyroidism' WHERE medicine_id = 20;

ALTER TABLE medicine
ADD COLUMN short_name varchar(3);

UPDATE medicine
SET short_name = 
  CASE 
    WHEN medicine_id = 1 THEN 'EPN'
    WHEN medicine_id = 2 THEN 'NTG'
    WHEN medicine_id = 3 THEN 'ALB'
    WHEN medicine_id = 4 THEN 'NAL'
    WHEN medicine_id = 5 THEN 'AMX'
    WHEN medicine_id = 6 THEN 'IBP'
    WHEN medicine_id = 7 THEN 'DPM'
    WHEN medicine_id = 8 THEN 'ACP'
    WHEN medicine_id = 9 THEN 'HCC'
    WHEN medicine_id = 10 THEN 'CLT'
    WHEN medicine_id = 11 THEN 'BPG'
    WHEN medicine_id = 12 THEN 'CPN'
    WHEN medicine_id = 13 THEN 'ASP'
    WHEN medicine_id = 14 THEN 'ATV'
    WHEN medicine_id = 15 THEN 'WAR'
    WHEN medicine_id = 16 THEN 'MET'
    WHEN medicine_id = 17 THEN 'LOS'
    WHEN medicine_id = 18 THEN 'SIM'
    WHEN medicine_id = 19 THEN 'LEV'
    WHEN medicine_id = 20 THEN 'EME'
  END;



UPDATE patient
SET nationality = 'Cambodian' WHERE nationality = 'Cambodia';



ALTER TABLE receipt
CHANGE COLUMN `date` `date_time` datetime;


UPDATE staff
SET nationality = 'French' 
	WHERE nationality = 'France';