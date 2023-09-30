CREATE DATABASE riverpark;
use riverpark;

CREATE TABLE `customer` (
  `customer_id` int(11) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `dob` date NOT NULL,
  `gender` char(1) NOT NULL,
  `phonenumber` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `customer` (`customer_id`, `firstname`, `lastname`, `dob`, `gender`, `phonenumber`, `email`) VALUES
(1, 'SokKhan', 'Jim', '2002-11-03', 'M', '082445621', 'Jim198@gmail.com'),
(2, 'Frog', 'Sell', '2001-11-09', 'F', '094233838', 'Sell168@gmail.com'),
(3, 'Choeun', 'Chork', '2001-11-09', 'M', '096423498', 'chork178@gmail.com'),
(4, 'John', 'Smith', '1998-11-04', 'F', '098672345', 'John234@gmail.com'),
(5, 'Jing', 'Chork', '2001-05-13', 'M', '093342464', 'Jing213@gmail.com'),
(6, 'Roth', 'Von', '2000-02-18', 'M', '086219823', 'Roth234@gmail.com'),
(7, 'Win', 'Da', '2002-01-09', 'F', '097234567', 'DA126@gmail.com'),
(8, 'Ny', 'Roth', '2004-07-12', 'M', '093342464', 'Ny154@gmail.com'),
(9, 'Koy', 'Hon', '2005-03-09', 'F', '092346358', 'Koy368@gmail.com'),
(10, 'Dawin', 'SreyPich', '2006-10-20', 'M', '012984587', 'Dawin621@gmail.com'),
(11, 'Sarah', 'kim', '2002-03-24', 'M', '012345678', 'Sara345@gmail.com'),
(12, 'William', 'Chen', '2006-07-15', 'F', '096452389', 'William111@gmail.com'),
(13, 'Kim', 'Emily', '2001-09-09', 'F', '080345678', 'Kim321@gmail.com'),
(14, 'Richard', 'Nguyen', '1999-06-23', 'M', '091234567', 'Richard168@gmail.com'),
(15, 'Olivia', 'Brown', '2000-09-23', 'M', '097832134', 'Olivia123@gmail.com'),
(16, 'Chen', 'Sophie', '2001-06-09', 'F', '071345678', 'Chen123@gmail.com'),
(17, 'Kim', 'Isabella', '2001-05-13', 'M', '071345678', 'Isabella123@gmail.com'),
(18, 'Davis', 'Michael', '2001-12-09', 'F', '081345667', 'Davis123@gmail.com'),
(19, 'Run', 'Chain', '2004-09-12', 'M', '097838331', 'Run121@gmail.com'),
(20, 'Ju', 'Dy', '2005-02-12', 'F', '088993123', 'Ju234@gmail.com');


CREATE TABLE `service` (
  `service_id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `descripion` varchar(220) NOT NULL,
  `location` varchar(50) NOT NULL,
  `capacity` int(11) NOT NULL,
  `price_USD` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


INSERT INTO `service` (`service_id`, `name`, `descripion`, `location`, `capacity`, `price_USD`) VALUES
(1, 'swimming', '1 ticket 1 day access ', 'section A', 100, 2),
(2, 'Rental space', '1 ticket 1 day access', 'section B', 20, 15),
(3, 'kayaking', 'duration: 1h max: 2 people', 'section A', 25, 3),
(4, 'Boating', 'duration: 1h max: 10 people', 'section A', 10, 3),
(5, 'ziplining', '1 ticket 1 try', 'section c', 10, 2),
(6, 'ski balloons', 'duration: 2h', 'section A', 50, 3);


CREATE TABLE `staff` (
  `staff_id` int(11) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `salary_USD` double NOT NULL,
  `position` varchar(30) NOT NULL,
  `gender` char(1) NOT NULL,
  `phone_number` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `work_schedule` float DEFAULT NULL,
  `manager_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


INSERT INTO `staff` (`staff_id`, `first_name`, `last_name`, `salary_USD`, `position`, `gender`, `phone_number`, `email`, `work_schedule`, `manager_id`) VALUES
(1, 'Ang', 'Sochat', 200, 'Boating', 'F', '08191267', 'angsochat@gmail.com', 5.817, 21),
(2, 'Khea', 'Theavy', 150, 'Boating', 'F', '05473839', 'kheatheavy@gmail.com', 2.817, 21),
(3, 'Art', 'Ou', 250, 'kayaking', 'M', '03482567', 'artou@gmail.com', 5.817, 21),
(4, 'Kha', 'Lita', 250, 'kayaking', 'F', '09743829', 'khalita@gmail.com', 2.817, 21),
(5, 'Lim', 'Ngim', 250, 'Rental space', 'M', '01234614', 'limngim@gmail.com', 5.817, 22),
(6, 'Khan', 'Vibol', 250, 'Rental space', 'M', '09727729', 'khanvibol@gmail.com', 2.817, 22),
(7, 'Nhean', 'Rathana', 350, 'ski balloons', 'M', '08712829', 'nheanrathana@gmail.com', 5.817, 22),
(8, 'Eoun', 'Lying', 350, 'ski balloons', 'F', '09181717', 'eounlying@gmail.com', 2.817, 22),
(9, 'Heng', 'Pitou', 300, 'swimming', 'M', '01223461', 'hengpitou@gmail.com', 5.817, 23),
(10, 'Hout', 'Lengheng', 300, 'swimming', 'M', '03566778', 'houtlengheng@gmail.com', 2.817, 23),
(11, 'Kong', 'Phors', 250, 'ziplining', 'M', '09824561', 'kongphos@gmail.com', 5.817, 23),
(12, 'At', 'Soknim', 250, 'ziplining', 'F', '09183829', 'atsoknim@gmail.com', 2.817, 23),
(13, 'Yea', 'Sopha', 250, 'security', 'M', '09284268', 'yeasopha@gmail.com', 2.817, 24),
(14, 'Kong', 'Chandara', 250, 'security', 'M', '01563737', 'kongchandara@gmail.com', 2.817, 24),
(15, 'Choun', 'Sovisal', 250, 'security', 'M', '09386221', 'chounsovisal@gmail.com', 2.817, 24),
(16, 'Soa', 'Visal', 250, 'security', 'M', '08282892', 'soavisal@gmail.com', 2.817, 24),
(17, 'Chea', 'Chita', 250, 'security', 'F', '07625281', 'cheachita@gmail.com', 5.817, 24),
(18, 'Yum', 'Virak', 250, 'security', 'M', '08282646', 'yumvirak@gmail.com', 5.817, 24),
(19, 'Kong', 'Somnang', 250, 'security', 'M', '02725414', 'kong somnang@gmail.com', 5.817, 24),
(20, 'Lak', 'Thak', 250, 'security', 'F', '09274527', 'lakthak@gmail.com', 5.817, 24),
(21, 'An', 'Sota', 800, 'Manager', 'F', '07191267', 'angsota@gmail.com', 7.915, 21),
(22, 'Kea', 'Theavy', 800, 'Manager', 'M', '08173839', 'keatheavy@gmail.com', 7.915, 22),
(23, 'Aot', 'Ou', 850, 'Manager', 'M', '07482567', 'aotou@gmail.com', 7.915, 23),
(24, 'Kan', 'Lita', 800, 'Manager', 'M', '07143829', 'kanlita@gmail.com', 7.915, 24);


CREATE TABLE `ticket` (
  `ticket_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `service_id` int(11) NOT NULL,
  `staff_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `total_price_USD` double NOT NULL,
  `buy_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


INSERT INTO `ticket` (`ticket_id`, `customer_id`, `service_id`, `staff_id`, `quantity`, `total_price_USD`, `buy_date`) VALUES
(1, 19, 1, 9, 4, 8, '2023-05-29 09:30:12'),
(2, 2, 2, 5, 5, 15, '2023-05-29 09:35:12'),
(3, 4, 4, 1, 5, 15, '2023-05-29 09:37:16'),
(4, 5, 1, 10, 3, 6, '2023-05-29 09:40:12'),
(5, 3, 3, 3, 3, 6, '2023-05-29 09:44:11'),
(6, 1, 6, 8, 3, 9, '2023-05-29 09:45:01'),
(7, 7, 2, 6, 1, 15, '2023-05-29 09:47:36'),
(8, 8, 1, 9, 2, 4, '2023-05-29 09:50:12'),
(9, 9, 6, 8, 1, 3, '2023-05-29 09:55:42'),
(10, 10, 6, 7, 2, 2, '2023-05-29 09:56:10'),
(11, 6, 5, 12, 2, 4, '2023-05-29 10:12:56'),
(12, 12, 1, 10, 6, 12, '2023-05-29 10:30:56'),
(13, 13, 6, 8, 3, 9, '2023-05-29 10:40:11'),
(14, 14, 5, 11, 1, 2, '2023-05-29 11:00:48'),
(15, 11, 1, 9, 1, 2, '2023-05-29 11:09:48'),
(16, 16, 6, 7, 1, 3, '2023-05-29 11:29:44'),
(17, 17, 3, 4, 3, 2, '2023-05-29 11:40:11'),
(18, 18, 4, 2, 6, 18, '2023-05-29 12:09:11'),
(19, 15, 2, 5, 1, 15, '2023-05-29 01:11:11'),
(20, 20, 5, 3, 3, 6, '2023-05-29 01:37:11');

ALTER TABLE `customer`
  ADD PRIMARY KEY (`customer_id`);

ALTER TABLE `service`
  ADD PRIMARY KEY (`service_id`);

ALTER TABLE `staff`
  ADD PRIMARY KEY (`staff_id`);


ALTER TABLE `ticket`
  ADD PRIMARY KEY (`ticket_id`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `service_id` (`service_id`),
  ADD KEY `staff_id` (`staff_id`);

ALTER TABLE `customer`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

ALTER TABLE `service`
  MODIFY `service_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;


ALTER TABLE `staff`
  MODIFY `staff_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

ALTER TABLE `ticket`
  MODIFY `ticket_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;


ALTER TABLE `ticket`
  ADD CONSTRAINT `ticket_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`),
  ADD CONSTRAINT `ticket_ibfk_2` FOREIGN KEY (`service_id`) REFERENCES `service` (`service_id`),
  ADD CONSTRAINT `ticket_ibfk_3` FOREIGN KEY (`staff_id`) REFERENCES `staff` (`staff_id`);
COMMIT;

