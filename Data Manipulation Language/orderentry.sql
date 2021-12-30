-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 30, 2021 at 08:13 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `orderentry`
--

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `cust_id` char(5) NOT NULL,
  `cust_name` varchar(25) NOT NULL,
  `cust_address` varchar(30) DEFAULT NULL,
  `cust_city` varchar(25) DEFAULT NULL,
  `cust_province` varchar(20) DEFAULT NULL,
  `cust_zip` varchar(5) DEFAULT NULL,
  `cust_country` varchar(20) DEFAULT NULL,
  `cust_contact` varchar(11) NOT NULL,
  `cust_email` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`cust_id`, `cust_name`, `cust_address`, `cust_city`, `cust_province`, `cust_zip`, `cust_country`, `cust_contact`, `cust_email`) VALUES
('1002', 'Mouse House', '333 Fromage Lane', 'Columbus', 'OH', '43333', 'USA', 'Jerry Mouse', 'NULL'),
('1003', 'J. Jones', '1 Sunny Place', 'Muncie', 'IN', '42222', 'USA', 'Jim Jones', 'rabbit@was'),
('1004', 'Yosemite Place', '829 Riverside Drive', 'Phoenix', 'AZ', '88888', 'USA', 'Y Sam', 'sam@yosemi'),
('1005', 'E Fudd', '4545 53rd Street', 'Chicago', 'IL', '54545', 'USA', 'E Fudd', 'NULL');

-- --------------------------------------------------------

--
-- Table structure for table `orderitems`
--

CREATE TABLE `orderitems` (
  `order_num` int(11) NOT NULL,
  `order_item` int(11) NOT NULL,
  `prod_id` varchar(10) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orderitems`
--

INSERT INTO `orderitems` (`order_num`, `order_item`, `prod_id`, `quantity`) VALUES
(20005, 1, 'ANV01', 10),
(20005, 2, 'ANV02', 3),
(20005, 3, 'TNT2', 5),
(20005, 4, 'FB', 1),
(20006, 1, 'JP2000', 1),
(20007, 1, 'TNT2', 100),
(20008, 1, 'FC', 50),
(20009, 1, 'FB', 1),
(20009, 2, 'OL1', 1),
(20009, 3, 'SLING', 1),
(20009, 4, 'ANV03', 1);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_num` int(11) NOT NULL,
  `order_date` date NOT NULL,
  `cust_id` char(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `productnotes`
--

CREATE TABLE `productnotes` (
  `note_id` char(3) NOT NULL,
  `prod_id` varchar(10) NOT NULL,
  `note_date` date NOT NULL,
  `note_text` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `prod_id` varchar(10) NOT NULL,
  `vend_id` char(4) NOT NULL,
  `prod_name` varchar(25) NOT NULL,
  `prod_price` int(11) NOT NULL,
  `prod_desc` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`prod_id`, `vend_id`, `prod_name`, `prod_price`, `prod_desc`) VALUES
('ANV01', '1001', '.5 ton anvil', 6, '.5 ton anvil, black, complete with handy hook'),
('ANV02', '1001', '1 ton anvil', 10, '1 ton anvil, black, complete with handy hook and carrying case'),
('ANV03', '1001', '2 ton anvil', 15, '2 ton anvil black, complete with hand hook and carrying case'),
('DTNTR', '1003', 'Detonator', 13, 'Detonator (plunger powered), fuses not included'),
('FB', '1003', 'Bird Seed', 10, 'Large bag (suitable for road runners)'),
('FC', '1003', 'Carrots', 3, 'Carrots (rabbit hunting season only)'),
('FU1', '1002', 'Fuses', 3, '1 dozen, extra long'),
('JP1000', '1005', 'JetPack 1000', 35, 'JetPack 1000, intended for single use'),
('JP2000', '1005', 'JetPack 2000', 55, 'JetPack 2000, multi-use'),
('OL1', '1002', 'Oil can', 9, 'Oil can, red'),
('SAFE', '1003', 'Safe', 50, 'Safe with combination lock'),
('SLING', '1003', 'Sling', 4, 'Sling, one size fits all'),
('TNT1', '1003', 'TNT (1 stick)', 3, 'TNT, red, single stick');

-- --------------------------------------------------------

--
-- Table structure for table `vendors`
--

CREATE TABLE `vendors` (
  `vend_id` char(4) NOT NULL,
  `vend_name` varchar(25) NOT NULL,
  `vend_address` varchar(30) DEFAULT NULL,
  `vend_city` varchar(20) DEFAULT NULL,
  `vend_state` varchar(5) DEFAULT NULL,
  `vend_zip` varchar(7) DEFAULT NULL,
  `vend_country` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `vendors`
--

INSERT INTO `vendors` (`vend_id`, `vend_name`, `vend_address`, `vend_city`, `vend_state`, `vend_zip`, `vend_country`) VALUES
('1001', 'Anvils R Us', '123 Main Street', 'Southfield', 'MI', '48075', 'USA'),
('1002', 'LT Supplies', '500 Park Street', 'Anytown', 'OH', '44333', 'USA'),
('1003', 'ACME', '555 High Street', 'Los Angeles', 'CA', '90046', 'USA'),
('1004', 'Furball Inc.', '1000 5th Avenue', 'New York', 'NY', '11111', 'USA'),
('1005', 'Jet Set', '42 Galaxy Road', 'London', 'NULL', 'N16 6PS', 'England');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`cust_id`);

--
-- Indexes for table `orderitems`
--
ALTER TABLE `orderitems`
  ADD PRIMARY KEY (`order_num`,`order_item`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_num`);

--
-- Indexes for table `productnotes`
--
ALTER TABLE `productnotes`
  ADD PRIMARY KEY (`note_id`),
  ADD KEY `prod_id` (`prod_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`prod_id`);

--
-- Indexes for table `vendors`
--
ALTER TABLE `vendors`
  ADD PRIMARY KEY (`vend_id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `productnotes`
--
ALTER TABLE `productnotes`
  ADD CONSTRAINT `productnotes_ibfk_1` FOREIGN KEY (`prod_id`) REFERENCES `products` (`prod_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
