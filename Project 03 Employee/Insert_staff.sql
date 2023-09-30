SELECT * FROM cinema_management_system.staff;

INSERT INTO staff (staff_Id, staff_name, staff_gender, staff_birthday, staff_email, staff_phone, staff_address, staff_position, staff_salary)
VALUES
(1, 'John Smith', 'M', '1990-02-15', 'johnsmith@example.com', '1234567890', '123 Main St, City', 'Manager', 5000.00),
(2, 'Emily Johnson', 'F', '1992-06-28', 'emilyjohnson@example.com', '9876543210', '456 Elm St, City', 'Assistant Manager', 4000.00),
(3, 'Michael Davis', 'M', '1985-11-03', 'michaeldavis@example.com', '5555555555', '789 Oak St, City', 'Supervisor', 3500.00),
(4, 'Sarah Thompson', 'F', '1988-09-10', 'sarahthompson@example.com', '1111111111', '321 Pine St, City', 'Sales Associate', 2500.00),
(5, 'David Rodriguez', 'M', '1991-04-20', 'davidrodriguez@example.com', '2222222222', '654 Maple St, City', 'Sales Associate', 2500.00),
(6, 'Jessica Martinez', 'F', '1993-07-14', 'jessicamartinez@example.com', '3333333333', '987 Birch St, City', 'Cashier', 2000.00),
(7, 'Christopher Wilson', 'M', '1987-12-07', 'christopherwilson@example.com', '4444444444', '741 Cedar St, City', 'Janitor', 1800.00),
(8, 'Amanda Anderson', 'F', '1990-03-22', 'amandaanderson@example.com', '5555555555', '963 Walnut St, City', 'Sales Associate', 2500.00),
(9, 'Matthew Thomas', 'M', '1989-08-18', 'matthewthomas@example.com', '6666666666', '159 Oak St, City', 'Sales Associate', 2500.00),
(10, 'Ashley Jackson', 'F', '1992-05-01', 'ashleyjackson@example.com', '7777777777', '357 Elm St, City', 'Cashier', 2000.00),
(11, 'Daniel White', 'M', '1986-10-12', 'danielwhite@example.com', '8888888888', '753 Pine St, City', 'Janitor', 1800.00),
(12, 'Jennifer Harris', 'F', '1984-07-30', 'jenniferharris@example.com', '9999999999', '951 Maple St, City', 'Sales Associate', 2500.00),
(13, 'Robert Clark', 'M', '1995-01-08', 'robertclark@example.com', '1111111111', '357 Cedar St, City', 'Sales Associate', 2500.00),
(14, 'Stephanie Lewis', 'F', '1993-09-25', 'stephanielewis@example.com', '2222222222', '753 Birch St, City', 'Cashier', 2000.00),
(15, 'Joseph Turner', 'M', '1988-04-05', 'josephturner@example.com', '3333333333', '951 Oak St, City', 'Janitor', 1800.00),
(16, 'Elizabeth Green', 'F', '1991-11-19', 'elizabethgreen@example.com', '4444444444', '357 Pine St, City', 'Sales Associate', 2500.00),
(17, 'Joshua Martin', 'M', '1987-02-25', 'joshuamartin@example.com', '5555555555', '753 Maple St, City', 'Sales Associate', 2500.00),
(18, 'Olivia Walker', 'F', '1990-06-09', 'oliviawalker@example.com', '6666666666', '951 Elm St, City', 'Cashier', 2000.00),
(19, 'Andrew Hill', 'M', '1989-01-17', 'andrewhill@example.com', '7777777777', '357 Oak St, City', 'Janitor', 1800.00),
(20, 'Sophia Young', 'F', '1992-08-03', 'sophiayoung@example.com', '8888888888', '753 Cedar St, City', 'Sales Associate', 2500.00),
(21, 'William Turner', 'M', '1986-05-14', 'williamturner@example.com', '9999999999', '951 Pine St, City', 'Sales Associate', 2500.00),
(22, 'Emma Scott', 'F', '1993-12-21', 'emmascott@example.com', '1111111111', '357 Birch St, City', 'Cashier', 2000.00),
(23, 'Alexander Lee', 'M', '1988-07-08', 'alexanderlee@example.com', '2222222222', '753 Oak St, City', 'Janitor', 1800.00),
(24, 'Grace Walker', 'F', '1991-02-15', 'gracewalker@example.com', '3333333333', '951 Elm St, City', 'Sales Associate', 2500.00),
(25, 'Benjamin Hill', 'M', '1989-09-22', 'benjaminhill@example.com', '4444444444', '357 Cedar St, City', 'Sales Associate', 2500.00),
(26, 'Chloe Turner', 'F', '1992-04-29', 'chloeturner@example.com', '5555555555', '753 Maple St, City', 'Cashier', 2000.00),
(27, 'Henry Miller', 'M', '1987-11-06', 'henrymiller@example.com', '6666666666', '951 Elm St, City', 'Janitor', 1800.00),
(28, 'Zoe Peterson', 'F', '1990-06-13', 'zoepeterson@example.com', '7777777777', '357 Pine St, City', 'Sales Associate', 2500.00),
(29, 'Christopher Adams', 'M', '1986-01-20', 'christopheradams@example.com', '8888888888', '753 Cedar St, City', 'Sales Associate', 2500.00),
(30, 'Madison Griffin', 'F', '1993-08-27', 'madisongriffin@example.com', '9999999999', '951 Oak St, City', 'Cashier', 2000.00),
(31, 'Ethan Turner', 'M', '1988-03-05', 'ethanturner@example.com', '1111111111', '357 Maple St, City', 'Janitor', 1800.00),
(32, 'Avery Nelson', 'F', '1991-10-12', 'averynelson@example.com', '2222222222', '753 Elm St, City', 'Sales Associate', 2500.00),
(33, 'Liam Wright', 'M', '1989-05-19', 'liamwright@example.com', '3333333333', '951 Birch St, City', 'Sales Associate', 2500.00),
(34, 'Scarlett Mitchell', 'F', '1992-12-26', 'scarlettmitchell@example.com', '4444444444', '357 Oak St, City', 'Cashier', 2000.00),
(35, 'James Phillips', 'M', '1987-07-03', 'jamesphillips@example.com', '5555555555', '753 Pine St, City', 'Janitor', 1800.00),
(36, 'Natalie Campbell', 'F', '1990-02-10', 'nataliecampbell@example.com', '6666666666', '951 Cedar St, City', 'Sales Associate', 2500.00),
(37, 'Noah Parker', 'M', '1986-09-17', 'noahparker@example.com', '7777777777', '357 Elm St, City', 'Sales Associate', 2500.00),
(38, 'Hannah Wright', 'F', '1993-04-24', 'hannahwright@example.com', '8888888888', '753 Birch St, City', 'Cashier', 2000.00),
(39, 'Michael Kelly', 'M', '1988-11-01', 'michaelkelly@example.com', '9999999999', '951 Pine St, City', 'Janitor', 1800.00),
(40, 'Ava Mitchell', 'F', '1991-06-08', 'avamitchell@example.com', '1111111111', '357 Cedar St, City', 'Sales Associate', 2500.00),
(41, 'Mason Baker', 'M', '1989-01-15', 'masonbaker@example.com', '2222222222', '753 Oak St, City', 'Sales Associate', 2500.00),
(42, 'Lily Roberts', 'F', '1992-08-22', 'lilyroberts@example.com', '3333333333', '951 Elm St, City', 'Cashier', 2000.00),
(43, 'Jacob Adams', 'M', '1987-03-01', 'jacobadams@example.com', '4444444444', '357 Maple St, City', 'Janitor', 1800.00),
(44, 'Abigail Turner', 'F', '1990-10-08', 'abigailturner@example.com', '5555555555', '753 Pine St, City', 'Sales Associate', 2500.00),
(45, 'Elijah Nelson', 'M', '1986-05-15', 'elijahnelson@example.com', '6666666666', '951 Elm St, City', 'Sales Associate', 2500.00),
(46, 'Sofia Wright', 'F', '1993-12-22', 'sofiawright@example.com', '7777777777', '357 Cedar St, City', 'Cashier', 2000.00),
(47, 'Daniel Phillips', 'M', '1988-07-09', 'danielphillips@example.com', '8888888888', '753 Oak St, City', 'Janitor', 1800.00),
(48, 'Victoria Campbell', 'F', '1991-02-16', 'victoriacampbell@example.com', '9999999999', '951 Pine St, City', 'Sales Associate', 2500.00),
(49, 'William Parker', 'M', '1989-09-23', 'williamparker@example.com', '1111111111', '357 Cedar St, City', 'Sales Associate', 2500.00),
(50, 'Samantha Mitchell', 'F', '1992-04-30', 'samanthamitchell@example.com', '2222222222', '753 Maple St, City', 'Cashier', 2000.00),
(51, 'Joseph Baker', 'M', '1987-11-07', 'josephbaker@example.com', '3333333333', '951 Elm St, City', 'Janitor', 1800.00),
(52, 'Avery Roberts', 'F', '1990-06-14', 'averyroberts@example.com', '4444444444', '357 Pine St, City', 'Sales Associate', 2500.00),
(53, 'Oliver Adams', 'M', '1986-01-21', 'oliveradams@example.com', '5555555555', '753 Cedar St, City', 'Sales Associate', 2500.00),
(54, 'Isabella Griffin', 'F', '1993-08-28', 'isabellagriffin@example.com', '6666666666', '951 Oak St, City', 'Cashier', 2000.00),
(55, 'Alexander Turner', 'M', '1988-03-06', 'alexanderturner@example.com', '7777777777', '357 Maple St, City', 'Janitor', 1800.00),
(56, 'Mia Nelson', 'F', '1991-10-13', 'mianelson@example.com', '8888888888', '753 Elm St, City', 'Sales Associate', 2500.00),
(57, 'Daniel Wright', 'M', '1989-05-20', 'danielwright@example.com', '9999999999', '951 Birch St, City', 'Sales Associate', 2500.00),
(58, 'Sophia Mitchell', 'F', '1992-12-27', 'sophiamitchell@example.com', '1111111111', '357 Oak St, City', 'Cashier', 2000.00),
(59, 'Matthew Phillips', 'M', '1987-07-04', 'matthewphillips@example.com', '2222222222', '753 Pine St, City', 'Janitor', 1800.00),
(60, 'Emily Campbell', 'F', '1990-02-11', 'emilycampbell@example.com', '3333333333', '951 Cedar St, City', 'Sales Associate', 2500.00),
(61, 'David Parker', 'M', '1986-09-18', 'davidparker@example.com', '4444444444', '357 Elm St, City', 'Sales Associate', 2500.00),
(62, 'Grace Wright', 'F', '1993-04-25', 'gracewright@example.com', '5555555555', '753 Birch St, City', 'Cashier', 2000.00),
(63, 'Jackson Kelly', 'M', '1988-11-02', 'jacksonkelly@example.com', '6666666666', '951 Pine St, City', 'Janitor', 1800.00),
(64, 'Ella Mitchell', 'F', '1991-06-09', 'ellamitchell@example.com', '7777777777', '357 Cedar St, City', 'Sales Associate', 2500.00),
(65, 'Logan Baker', 'M', '1989-01-16', 'loganbaker@example.com', '8888888888', '753 Oak St, City', 'Sales Associate', 2500.00),
(66, 'Aria Roberts', 'F', '1992-08-23', 'ariaroberts@example.com', '9999999999', '951 Elm St, City', 'Cashier', 2000.00),
(67, 'Caleb Adams', 'M', '1987-03-02', 'calebadams@example.com', '1111111111', '357 Maple St, City', 'Janitor', 1800.00),
(68, 'Harper Turner', 'F', '1990-10-09', 'harperturner@example.com', '2222222222', '753 Pine St, City', 'Sales Associate', 2500.00),
(69, 'Jack Nelson', 'M', '1986-05-16', 'jacknelson@example.com', '3333333333', '951 Elm St, City', 'Sales Associate', 2500.00),
(70, 'Layla Wright', 'F', '1993-12-23', 'laylawright@example.com', '4444444444', '357 Cedar St, City', 'Cashier', 2000.00),
(71, 'Owen Phillips', 'M', '1988-07-10', 'owenphillips@example.com', '5555555555', '753 Oak St, City', 'Janitor', 1800.00),
(72, 'Mila Campbell', 'F', '1991-02-17', 'milacampbell@example.com', '6666666666', '951 Pine St, City', 'Sales Associate', 2500.00),
(73, 'Carter Parker', 'M', '1989-09-24', 'carterparker@example.com', '7777777777', '357 Cedar St, City', 'Sales Associate', 2500.00),
(74, 'Luna Mitchell', 'F', '1992-05-01', 'lunamitchell@example.com', '8888888888', '753 Elm St, City', 'Cashier', 2000.00),
(75, 'Jayden Wright', 'M', '1987-11-08', 'jaydenwright@example.com', '9999999999', '951 Birch St, City', 'Janitor', 1800.00),
(76, 'Penelope Turner', 'F', '1990-06-15', 'penelopeturner@example.com', '1111111111', '357 Oak St, City', 'Sales Associate', 2500.00),
(77, 'Gabriel Adams', 'M', '1989-01-17', 'gabrieladams@example.com', '2222222222', '753 Pine St, City', 'Sales Associate', 2500.00),
(78, 'Savannah Mitchell', 'F', '1992-08-24', 'savannahmitchell@example.com', '3333333333', '951 Cedar St, City', 'Cashier', 2000.00),
(79, 'Ryan Kelly', 'M', '1987-03-03', 'ryankelly@example.com', '4444444444', '357 Elm St, City', 'Janitor', 1800.00),
(80, 'Aubrey Roberts', 'F', '1990-10-10', 'aubreyroberts@example.com', '5555555555', '753 Birch St, City', 'Sales Associate', 2500.00),
(81, 'Nora Evans', 'F', '1993-12-17', 'noraevans@example.com', '6666666666', '951 Oak St, City', 'Cashier', 2000.00),
(82, 'Eli Foster', 'M', '1989-09-24', 'elifoster@example.com', '7777777777', '357 Cedar St, City', 'Janitor', 1800.00),
(83, 'Lily Turner', 'F', '1992-05-01', 'lilyturner@example.com', '8888888888', '753 Elm St, City', 'Sales Associate', 2500.00),
(84, 'Leo Wright', 'M', '1987-11-08', 'leowright@example.com', '9999999999', '951 Birch St, City', 'Sales Associate', 2500.00),
(85, 'Zoe Campbell', 'F', '1990-06-15', 'zoecampbell@example.com', '1111111111', '357 Oak St, City', 'Cashier', 2000.00),
(86, 'Ethan Adams', 'M', '1989-01-17', 'ethanadams@example.com', '2222222222', '753 Pine St, City', 'Janitor', 1800.00),
(87, 'Scarlett Mitchell', 'F', '1992-08-24', 'scarlettmitchell@example.com', '3333333333', '951 Cedar St, City', 'Sales Associate', 2500.00),
(88, 'Sebastian Kelly', 'M', '1987-03-03', 'sebastiankelly@example.com', '4444444444', '357 Elm St, City', 'Sales Associate', 2500.00),
(89, 'Avery Roberts', 'F', '1990-10-10', 'averyroberts@example.com', '5555555555', '753 Birch St, City', 'Cashier', 2000.00),
(90, 'Evelyn Evans', 'F', '1993-12-17', 'evelynevans@example.com', '6666666666', '951 Oak St, City', 'Janitor', 1800.00),
(91, 'Henry Foster', 'M', '1989-09-24', 'henryfoster@example.com', '7777777777', '357 Cedar St, City', 'Sales Associate', 2500.00),
(92, 'Amelia Turner', 'F', '1992-05-01', 'ameliaturner@example.com', '8888888888', '753 Elm St, City', 'Sales Associate', 2500.00),
(93, 'Oliver Wright', 'M', '1987-11-08', 'oliverwright@example.com', '9999999999', '951 Birch St, City', 'Cashier', 2000.00),
(94, 'Charlotte Campbell', 'F', '1990-06-15', 'charlottecampbell@example.com', '1111111111', '357 Oak St, City', 'Janitor', 1800.00),
(95, 'Mason Adams', 'M', '1989-01-17', 'masonadams@example.com', '2222222222', '753 Pine St, City', 'Sales Associate', 2500.00),
(96, 'Sophia Mitchell', 'F', '1992-08-24', 'sophiamitchell@example.com', '3333333333', '951 Cedar St, City', 'Sales Associate', 2500.00),
(97, 'Logan Kelly', 'M', '1987-03-03', 'logankelly@example.com', '4444444444', '357 Elm St, City', 'Cashier', 2000.00),
(98, 'Ava Roberts', 'F', '1990-10-10', 'avaroberts@example.com', '5555555555', '753 Birch St, City', 'Janitor', 1800.00),
(99, 'Jackson Evans', 'M', '1993-12-17', 'jacksonevans@example.com', '6666666666', '951 Oak St, City', 'Sales Associate', 2500.00),
(100, 'Emma Foster', 'F', '1989-09-24', 'emmafoster@example.com', '7777777777', '357 Cedar St, City', 'Sales Associate', 2500.00)

;















































