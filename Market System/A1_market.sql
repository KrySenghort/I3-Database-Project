-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jun 12, 2023 at 04:27 AM
-- Server version: 8.0.31
-- PHP Version: 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `market`
--
CREATE DATABASE IF NOT EXISTS `supermarket`;
USE `supermarket`;

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
CREATE TABLE IF NOT EXISTS `customer` (
  `c_id` varchar(30) NOT NULL,
  `c_name` varchar(40) NOT NULL,
  `c_phNum` varchar(15) NOT NULL,
  `c_email` varchar(100) DEFAULT NULL,
  `c_commune` varchar(50) DEFAULT NULL,
  `c_district` varchar(50) DEFAULT NULL,
  `c_province` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`c_id`),
  UNIQUE KEY `e_phNum` (`c_phNum`),
  UNIQUE KEY `e_email` (`c_email`)
);

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`c_id`, `c_name`, `c_phNum`, `c_email`, `c_commune`, `c_district`, `c_province`) VALUES
('e1', 'Khon Yin Sakal', '12843854', 'sakalyin95@gmail.com', 'Toul Sangke2', NULL, 'Phnom Penh'),
('e2', 'Buth Khemera', '42943435', 'khemera23@gmail.com', NULL, 'Sras Jork', 'Battambang'),
('e3', 'Aov Keatmeng', '43453592', 'keatmeng77@gmail.com', 'Toul Sangke', NULL, 'Kampong Cham'),
('e4', 'Chum Piseth', '974245144', 'piset493@gmail.com', NULL, NULL, 'Siem Riep'),
('e5', 'Hok KimLeang', '886464635', 'kimleang55@gmail.com', NULL, 'Daun Penh', 'Phnom Penh');

-- --------------------------------------------------------

--
-- Table structure for table `delivery`
--

DROP TABLE IF EXISTS `delivery`;
CREATE TABLE IF NOT EXISTS `delivery` (
  `d_id` varchar(30) NOT NULL,
  `d_name` varchar(30) NOT NULL,
  `d_phNum` varchar(15) NOT NULL,
  `d_email` varchar(100) NOT NULL,
  `d_area` varchar(100) NOT NULL,
  `d_price` varchar(50) NOT NULL,
  PRIMARY KEY (`d_id`),
  UNIQUE KEY `d_id` (`d_id`),
  UNIQUE KEY `d_phNum` (`d_phNum`),
  UNIQUE KEY `d_email` (`d_email`)
);

--
-- Dumping data for table `delivery`
--

INSERT INTO `delivery` (`d_id`, `d_name`, `d_phNum`, `d_email`, `d_area`, `d_price`) VALUES
('d1', 'Swift Delivery', '12743877', 'info@swiftdelivery.com', '', ''),
('d2', 'Express Logistics', '886574444', 'contact@expresslogistics.com', '', ''),
('d3', 'Speedy Couriers', '987476666', 'info@speedycouriers.com', '', ''),
('d4', 'Reliable Transport', '98432785', 'support@reliabletransport.com', '', ''),
('d5', 'SwiftDispatch', '11657333', 'hello@swiftdispatch.com', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
CREATE TABLE IF NOT EXISTS `employee` (
  `e_id` varchar(30) NOT NULL,
  `e_Fname` varchar(20) NOT NULL,
  `e_Lname` varchar(20) NOT NULL,
  `e_gender` enum('M','F','Other') DEFAULT NULL,
  `e_dob` date NOT NULL,
  `e_salary` float NOT NULL,
  `e_role` varchar(30) NOT NULL,
  `e_phNum` varchar(15) NOT NULL,
  `e_email` varchar(100) NOT NULL,
  `e_hire` date NOT NULL,
  `supervisor_id` varchar(30) DEFAULT NULL,
  `e_address` varchar(200) NOT NULL,
  PRIMARY KEY (`e_id`),
  UNIQUE KEY `e_phNum` (`e_phNum`),
  UNIQUE KEY `e_email` (`e_email`),
  KEY `supervisor_id` (`supervisor_id`)
);

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`e_id`, `e_Fname`, `e_Lname`, `e_gender`, `e_dob`, `e_salary`, `e_role`, `e_phNum`, `e_email`, `e_hire`, `supervisor_id`, `e_address`) VALUES
('e1', 'John', 'Doe', 'F', '0000-00-00', 450, 'manager', '12483888', 'john.doe@email.com', '2020-01-01', NULL, 'Phnom Penh'),
('e2', 'Jane', 'Doe', 'M', '0000-00-00', 180, 'security', '11234789', 'jane.doe@email.com', '2020-01-01', 'e1', 'Battambang'),
('e3', 'Peter', 'Smith', 'F', '0000-00-00', 200, 'cashier', '975556347', 'peter.smith@email.com', '2020-01-01', 'e1', 'Kampong Cham'),
('e4', 'Mary', 'Jones', 'F', '0000-00-00', 200, 'cashier', '883334758', 'mary.jones@email.com', '2020-05-28', 'e1', 'Siem Riep'),
('e5', 'David', 'Brown', 'M', '0000-00-00', 200, 'cashier', '965375371', 'david.brown@email.com', '2020-06-02', 'e1', 'Phnom Penh'),
('e6', 'Henry', 'Thomas', 'F', '0000-00-00', 200, 'cleaner', '77434888', 'henry.thomas@gmail.com', '2020-01-12', 'e1', 'Phnom Penh');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
CREATE TABLE IF NOT EXISTS `product` (
  `pro_id` varchar(30) NOT NULL,
  `pro_name` varchar(100) NOT NULL,
  `pro_price` float NOT NULL,
  `pro_exp` date DEFAULT NULL,
  `promo_id` varchar(30) NOT NULL,
  `pro_UPC` varchar(12) DEFAULT NULL,
  `pro_stock` int NOT NULL,
  `pro_unit` varchar(30) NOT NULL,
  `s_id` varchar(30) NOT NULL,
  PRIMARY KEY (`pro_id`),
  UNIQUE KEY `pro_id` (`pro_id`),
  UNIQUE KEY `pro_UPC` (`pro_UPC`),
  KEY `promo_id` (`promo_id`),
  KEY `s_id` (`s_id`)
);

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`pro_id`, `pro_name`, `pro_price`, `pro_exp`, `promo_id`, `pro_UPC`, `pro_stock`, `pro_unit`, `s_id`) VALUES
('16', 'Diapers', 20, '2024-04-29', '', '520055905909', 7, 'pack of 50', 'w5'),
('17', 'Sunscreen', 14.99, '2025-05-03', '22', '888490045300', 0, '250ml bottle', 'w5'),
('18', 'Tissues', 3.49, '2024-05-17', '', '545034590300', 9, 'pack of 4', ''),
('15', 'Razor', 1, '2024-12-05', '', '420968964521', 10, 'pack of 5', 'w5'),
('14', 'Shampoo', 6.25, '2025-01-08', '', '897971384380', 13, '500ml bottle', 'w5'),
('13', 'Toothpaste', 4.99, '2024-08-02', '', '438500536088', 30, '200g bottle', 'w2'),
('12', 'Toothbrush', 3, '2025-12-29', '', '435352003211', 18, 'single', 'w2'),
('11', 'Chocolate bars', 2.99, '2023-11-02', '', '328423043052', 25, '100g bar', ''),
('10', 'Crackers', 0.99, '2023-01-22', '', '430503400053', 8, 'pack', ''),
('8', 'Milk 1.5L', 5, '2024-08-23', '', '535436924821', 18, '1.5L carton', 'w7'),
('9', 'Milk 1.5L', 5, '2023-06-14', 'exp001', '535436324821', 15, '1.5L carton', 'w7'),
('7', 'Black Pepper Powder 50g', 1.1, '2023-04-26', '', '345385010134', 10, '50g bottle', 'w7'),
('6', 'Marinated Drumsticks 200g', 4.99, '2023-04-19', '', '329840013837', 15, '200g pack', 'w3'),
('5', 'Frozen Chicken 1000g', 10.99, '2023-05-12', '', '313004568300', 12, '1000g pack', 'w3'),
('4', 'Frozen Chicken 300g', 4.99, '2023-03-29', '', '564833884507', 3, '300g pack', 'w3'),
('3', 'BBQ Pizza 12\"', 10.99, '2023-03-22', '', '742485031399', 8, 'box', 'w1'),
('2', 'Spicy Pizza 8\"', 7.99, '2023-03-15', '', '602457389120', 7, 'box', 'w1'),
('1', 'Spicy Pizza 12\"', 9.99, '2023-03-08', '', '745719856275', 10, 'box', 'w1'),
('19', 'Sunscreen', 14.99, '2023-06-18', 'exp001', '888490065300', 6, '250ml bottle', 'w5'),
('20', 'Crackers', 0.99, '2023-06-13', 'exp001', '430503100053', 12, 'pack', ''),
('21', 'Spicy Pizza 12\"', 9.99, '2023-11-20', '', '327438856942', 4, 'box', 'w6'),
('22', 'BBQ Pizza 12\"', 10.99, '2023-11-20', '', '218944389321', 5, 'box', 'w6');

-- --------------------------------------------------------

--
-- Table structure for table `promotion`
--

DROP TABLE IF EXISTS `promotion`;
CREATE TABLE IF NOT EXISTS `promotion` (
  `promo_id` varchar(30) NOT NULL,
  `promo_percentage` int NOT NULL,
  `promo_end` date DEFAULT NULL,
  `promo_start` date DEFAULT NULL,
  `promo_description` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`promo_id`)
);

--
-- Dumping data for table `promotion`
--

INSERT INTO `promotion` (`promo_id`, `promo_percentage`, `promo_end`, `promo_start`, `promo_description`) VALUES
('CM0001', 15, '2022-01-01', '2021-01-20', 'Christmas 2021'),
('CNY0001', 10, '2023-02-01', '2023-01-22', 'ChineseNewYear 2023'),
('KNY0001', 25, '2023-04-30', '2023-04-14', 'KhmerNewYear 2023'),
('CM0002', 15, '2023-01-01', '2022-12-20', 'Christmas 2022'),
('exp001', 50, NULL, NULL, 'Near expiring Product'),
('Sales001', 25, '2023-06-01', '2023-07-01', 'June 2023 special');

-- --------------------------------------------------------

--
-- Table structure for table `purchase`
--

DROP TABLE IF EXISTS `purchase`;
CREATE TABLE IF NOT EXISTS `purchase` (
  `p_id` varchar(50) NOT NULL,
  `p_date` date NOT NULL,
  `cashier_id` varchar(30) NOT NULL,
  `customer_id` varchar(30) DEFAULT NULL,
  `p_subtotal` float NOT NULL,
  `p_quantity` int NOT NULL,
  `pro_id` varchar(30) NOT NULL,
  `p_receipt` double NOT NULL,
  PRIMARY KEY (`p_id`),
  KEY `cashier_id` (`cashier_id`),
  KEY `customer_id` (`customer_id`),
  KEY `pro_id` (`pro_id`)
);

--
-- Dumping data for table `purchase`
--

INSERT INTO `purchase` (`p_id`, `p_date`, `cashier_id`, `customer_id`, `p_subtotal`, `p_quantity`, `pro_id`, `p_receipt`) VALUES
('p1', '2023-02-15', 'e3', 'c1', 15.98, 2, '2', 1),
('p2', '2023-03-28', 'e4', 'c2', 32.97, 3, '3', 2),
('p3', '2023-03-28', 'e4', 'c2', 2.99, 1, '11', 2),
('p4', '2023-03-28', 'e4', 'c2', 4.99, 1, '4', 2),
('p5', '2023-04-19', 'e3', 'c1', 21.98, 2, '5', 3),
('p6', '2023-04-19', 'e3', 'c1', 19.96, 4, '6', 3),
('p7', '2023-05-10', 'e4', 'c3', 14.97, 3, '4', 4),
('p8', '2023-05-10', 'e4', 'c3', 15.98, 2, '2', 4),
('p9', '2023-05-10', 'e4', 'c4', 9.98, 2, '13', 5),
('p10', '2023-05-12', 'e3', 'c5', 0.99, 1, '20', 6),
('p11', '2023-05-12', 'e3', 'c5', 29.98, 2, '17', 6),
('p12', '2023-05-12', 'e3', 'c5', 20, 1, '16', 6);

-- --------------------------------------------------------

--
-- Table structure for table `supply`
--

DROP TABLE IF EXISTS `supply`;
CREATE TABLE IF NOT EXISTS `supply` (
  `s_id` varchar(30) NOT NULL,
  `s_date` date NOT NULL,
  `w_id` varchar(30),
  `pro_id` varchar(100) NOT NULL,
  `s_quantity` int NOT NULL,
  `s_price` float NOT NULL,
  `s_subtotal` float NOT NULL,
  `d_id` varchar(30) DEFAULT NULL,
  `d_cost` float DEFAULT NULL,
  `s_receipt` double NOT NULL,
  PRIMARY KEY (`s_id`),
  UNIQUE KEY `s_id` (`s_id`),
  KEY `d_id` (`d_id`),
  KEY `w_id` (`w_id`),
  KEY `pro_id` (`pro_id`)
);

--
-- Dumping data for table `supply`
--

INSERT INTO `supply` (`s_id`, `s_date`, `w_id`, `pro_id`, `s_quantity`, `s_price`, `s_subtotal`, `d_id`, `d_cost`, `s_receipt`) VALUES
('s1', '2023-01-01', '2', '13', 10, 2.5, 25, 'd1', 10, 1),
('s2', '2023-02-10', '1', '1', 4, 5.99, 23.96, 'd2', 20, 2),
('s3', '2023-02-10', '1', '2', 4, 4.99, 19.96, 'd2', 20, 2),
('s4', '2023-02-10', '1', '3', 4, 8.99, 35.96, 'd2', 20, 2),
('s5', '2023-02-18', '1', '2', 5, 4.99, 24.95, 'd1', 10, 3),
('s6', '2023-04-08', '5', '14', 10, 2.5, 25, 'd3', 25, 4),
('s7', '2023-04-08', '5', '15', 10, 0.4, 4, 'd3', 25, 4),
('s8', '2023-04-08', '5', '16', 10, 13.99, 139.9, 'd3', 25, 4),
('s9', '2023-04-08', '5', '17', 5, 9.99, 49.95, 'd3', 25, 4),
('s10', '2023-05-11', '3', '4', 7, 2.99, 20.93, 'd4', 15, 5),
('s11', '2023-05-11', '3', '5', 7, 7.99, 55.93, 'd4', 15, 5);

-- --------------------------------------------------------

--
-- Table structure for table `wholesaler`
--

DROP TABLE IF EXISTS `wholesaler`;
CREATE TABLE IF NOT EXISTS `wholesaler` (
  `w_id` varchar(30) NOT NULL,
  `w_email` varchar(100) NOT NULL,
  `w_address` varchar(100) NOT NULL,
  `w_phNum` varchar(15) NOT NULL,
  `w_name` varchar(50) NOT NULL,
  PRIMARY KEY (`w_id`),
  UNIQUE KEY `w_id` (`w_id`),
  UNIQUE KEY `w_email` (`w_email`),
  UNIQUE KEY `w_phNum` (`w_phNum`)
);

--
-- Dumping data for table `wholesaler`
--

INSERT INTO `wholesaler` (`w_id`, `w_email`, `w_address`, `w_phNum`, `w_name`) VALUES
('w1', 'acmesupplies@email.com', '123 Main Street, Anytown, CA 91234', '12522171', 'Acme Supplies'),
('w2', 'bigboxstore@email.com', '456 Elm Street, Anytown, CA 91234', '884445095', 'Big Box Store'),
('w3', 'costco@email.com', '789 Oak Street, Anytown, CA 91234', '11440055', 'Costco'),
('w4', 'dollargeneral@email.com', '101 Main Street, Anytown, CA 91234', '975558077', 'Dollar General'),
('w5', 'homedepot@email.com', '234 Elm Street, Anytown, CA 91234', '16488933', 'Home Depot'),
('w6', 'lowes@email.com', '345 Oak Street, Anytown, CA 91234', '12444888', 'Lowe\'s'),
('w7', 'staples@email.com', '678 Oak Street, Anytown, CA 91234', '9643343', 'Staples');

-- --------------------------------------------------------

--
-- Table structure for table `wholesaler_product`
--

DROP TABLE IF EXISTS `wholesaler_product`;
CREATE TABLE IF NOT EXISTS `wholesaler_product` (
  `wp_id` varchar(30) NOT NULL,
  `wp_name` varchar(100) NOT NULL,
  `w_id` varchar(30) NOT NULL,
  PRIMARY KEY (`wp_id`),
  UNIQUE KEY `wp_id` (`wp_id`),
  KEY `w_id` (`w_id`)
);

--
-- Dumping data for table `wholesaler_product`
--

INSERT INTO `wholesaler_product` (`wp_id`, `wp_name`, `w_id`) VALUES
('wp1', 'Spicy Pizza 12\"', 'w1'),
('wp2', 'Spicy Pizza 8\"', 'w1'),
('wp3', 'BBQ Pizza 12\"', 'w1'),
('wp4', 'Pepperoni Pizza 12\'\'', 'w1'),
('wp5', 'BBQ Pizza 8\"', 'w1'),
('wp6', 'Toothbrush', 'w2'),
('wp7', 'ToothPaste', 'w2'),
('wp8', 'Frozen Chicken 300g', 'w3'),
('wp9', 'Frozen Chicken 1000g', 'w3'),
('wp10', 'Marinated Drumsticks 200g', 'w3'),
('wp11', 'Soy Sauce 100g', 'w4'),
('wp12', 'Fish Sauce 100g', 'w4'),
('wp13', 'Shampoo', 'w5'),
('wp14', 'Razor', 'w5'),
('wp15', 'Diapers', 'w5'),
('wp16', 'Sunscreen', 'w5'),
('w17', 'Spicy Pizza 12\"', 'w6'),
('w18', 'BBQ Pizza 12\"', 'w6'),
('w19', 'Pepperoni Pizza 8\"', 'w6'),
('wp20', 'Milk 1.5L', 'w7'),
('wp21', 'Black Pepper Powder 50g', 'w7');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
