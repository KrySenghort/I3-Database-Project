-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 15, 2023 at 08:13 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `database`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `idcustomer` varchar(11) NOT NULL,
  `cake_id` varchar(11) NOT NULL,
  `size_cake` varchar(1) NOT NULL,
  `ranking_buy` int(11) NOT NULL,
  `discount` int(11) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `email` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`idcustomer`, `cake_id`, `size_cake`, `ranking_buy`, `discount`, `phone`, `email`) VALUES
('e20200836', 'A001', 'M', 30, 0, '010636809', 'ngimpanha12@gmail.com'),
('e20200837', 'A002', 'M', 30, 0, '010636809', 'ne20200837@gmail.com'),
('e20200838', 'A004', 'M', 30, 0, '010636809', 'e20200838@gmail.com'),
('e20200839', 'A005', 'M', 30, 0, '010636809', 'e20200839@gmail.com'),
('e20200840', 'A006', 'M', 30, 0, '010636809', 'e20200840@gmail.com'),
('e20200841', 'A007', 'M', 30, 0, '010636809', 'e20200841@gmail.com'),
('e20200842', 'A008', 'M', 30, 0, '010636809', 'e20200842@gmail.com'),
('e20200843', 'A009', 'M', 30, 0, '010636809', 'e20200843@gmail.com'),
('e20200844', 'A010', 'M', 30, 0, '010636809', 'e20200844@gmail.com'),
('e20200845', 'A011', 'M', 30, 0, '010636809', 'e20200845@gmail.com'),
('e20200846', 'A012', 'M', 30, 0, '010636809', 'e20200846@gmail.com'),
('e20200847', 'A013', 'M', 30, 0, '010636809', 'ne20200847@gmail.com'),
('e20200848', 'A014', 'M', 30, 0, '010636809', 'e20200848@gmail.com'),
('e20200849', 'A015', 'M', 30, 0, '010636809', 'e20200849@gmail.com'),
('e20200850', 'A016', 'M', 30, 0, '010636809', 'e20200850@gmail.com'),
('e20200851', 'A017', 'M', 30, 0, '010636809', 'e20200851@gmail.com'),
('e20200852', 'A018', 'M', 30, 0, '010636809', 'e20200852@gmail.com'),
('e20200853', 'A019', 'M', 30, 0, '010636809', 'e20200853@gmail.com'),
('e20200854', 'A020', 'M', 30, 0, '010636809', 'e20200854@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `ordering`
--

CREATE TABLE `ordering` (
  `order_id` int(11) NOT NULL,
  `idcustomer` varchar(11) NOT NULL,
  `cake_id` varchar(11) NOT NULL,
  `date_order` varchar(100) NOT NULL,
  `amount` float NOT NULL,
  `quantity` int(25) NOT NULL,
  `address` varchar(500) NOT NULL,
  `payment` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ordering`
--

INSERT INTO `ordering` (`order_id`, `idcustomer`, `cake_id`, `date_order`, `amount`, `quantity`, `address`, `payment`) VALUES
(1, 'e20200836', 'A001', '15-06-2023', 5, 3, 'ngimpanha12@gmail.com', 15),
(2, 'e20200837', 'A002', '15-06-2023', 6, 1, 'ne20200837@gmail.com', 6),
(3, 'e20200838', 'A004', '15-06-2023', 7, 2, 'e20200838@gmail.com', 7),
(4, 'e20200839', 'A005', '15-06-2023', 10, 1, 'e20200839@gmail.com', 20),
(5, 'e20200840', 'A006', '15-06-2023', 4, 1, 'e20200840@gmail.com', 4),
(6, 'e20200841', 'A007', '15-06-2023', 10, 2, 'e20200841@gmail.com', 20),
(7, 'e20200842', 'A008', '15-06-2023', 20, 3, 'e20200842@gmail.com', 60),
(8, 'e20200843', 'A009', '15-06-2023', 10, 1, 'e20200843@gmail.com', 10),
(9, 'e20200844', 'A010', '15-06-2023', 9, 1, 'e20200844@gmail.com', 9),
(10, 'e20200845', 'A011', '15-06-2023', 7, 1, 'e20200845@gmail.com', 7),
(11, 'e20200846', 'A012', '15-06-2023', 2, 1, 'e20200846@gmail.com', 2),
(12, 'e20200847', 'A013', '15-06-2023', 17, 1, 'ne20200847@gmail.com', 17),
(13, 'e20200848', 'A014', '15-06-2023', 30, 2, 'e20200848@gmail.com', 60),
(14, 'e20200849', 'A015', '15-06-2023', 28, 3, 'e20200849@gmail.com', 64),
(15, 'e20200850', 'A016', '15-06-2023', 14, 2, 'e20200850@gmail.com', 28),
(16, 'e20200851', 'A017', '15-06-2023', 16, 1, 'e20200851@gmail.com', 16),
(17, 'e20200852', 'A018', '15-06-2023', 18, 2, 'e20200852@gmail.com', 36),
(18, 'e20200853', 'A019', '15-06-2023', 29, 2, 'e20200853@gmail.com', 58),
(19, 'e20200854', 'A020', '15-06-2023', 30, 3, 'e20200854@gmail.com', 90);

-- --------------------------------------------------------

--
-- Table structure for table `store`
--

CREATE TABLE `store` (
  `cake_id` varchar(11) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `quality_S` int(11) NOT NULL,
  `quatity_M` int(11) NOT NULL,
  `quantity_L` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `store`
--

INSERT INTO `store` (`cake_id`, `product_name`, `quality_S`, `quatity_M`, `quantity_L`) VALUES
('A001', 'Pineapple Cake', 10, 20, 10),
('A0010', 'Caramel Mix Fruit Cake', 10, 12, 13),
('A0012', 'Dutch Exotic Cake', 15, 10, 12),
('A0013', 'Caffr Breve', 20, 12, 10),
('A0014', 'Cappuccino', 50, 50, 50),
('A0015', 'Macchiaio', 40, 40, 40),
('A0016', 'Americano', 45, 45, 45),
('A0017', 'Black Eye', 50, 50, 50),
('A0018', 'Latte Macchiato', 45, 45, 45),
('A0019', 'Mocha', 30, 45, 30),
('A002', 'Black Forest Cake', 18, 10, 10),
('A0020', 'Latte', 71, 30, 30),
('A0021', 'Irish', 26, 27, 40),
('A0022', 'Long Black', 40, 30, 45),
('A0023', 'Flat White', 60, 40, 30),
('A0024', 'Espresso', 14, 50, 34),
('A0025', 'Doppoi', 85, 30, 60),
('A0026', 'Piccolo Latte', 56, 40, 30),
('A0027', 'Cortado', 40, 40, 40),
('A0028', 'Gibraltar', 79, 20, 30),
('A0029', 'Lungo', 80, 30, 50),
('A003', 'Strawberry Cake', 10, 10, 10),
('A004', 'Mango Cake', 15, 17, 20),
('A005', 'Butter Scotch Cake', 10, 15, 10),
('A006', 'White Forest Cake', 10, 12, 15),
('A007', 'Choco Vanilla Cake', 17, 12, 10),
('A008', 'Choco Chips cake', 10, 10, 12),
('A009', 'Mix Fruit Ceke', 20, 10, 10);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`idcustomer`);

--
-- Indexes for table `ordering`
--
ALTER TABLE `ordering`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `store`
--
ALTER TABLE `store`
  ADD PRIMARY KEY (`cake_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ordering`
--
ALTER TABLE `ordering`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
