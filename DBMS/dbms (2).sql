-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 04, 2016 at 08:17 PM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `dbms`
--

-- --------------------------------------------------------

--
-- Table structure for table `area`
--

CREATE TABLE IF NOT EXISTS `area` (
  `areaCode` char(5) NOT NULL,
  `AREA` varchar(50) NOT NULL,
  `orID` int(5) NOT NULL,
  `vPlate` varchar(6) NOT NULL,
  `dlID` int(5) NOT NULL,
  `cID` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `area`
--

INSERT INTO `area` (`areaCode`, `AREA`, `orID`, `vPlate`, `dlID`, `cID`) VALUES
('AA', 'Al-AIn', 1, 'A00001', 16, 8),
('ABD', 'Abudhabi', 2, 'EF4567', 17, 9),
('AJM', 'Ajman', 3, 'E225RT', 18, 10),
('DXB', 'Dubai', 4, 'L56109', 19, 11),
('RAK', 'Ras-Al-Kheima', 5, 'RT1258', 20, 12),
('SHJ', 'Sharjah', 6, 'W5515E', 21, 13),
('UAQ', 'Umm-Al-Quwain', 7, 'W3S001', 22, 14);

-- --------------------------------------------------------

--
-- Table structure for table `client`
--

CREATE TABLE IF NOT EXISTS `client` (
`clientID` int(5) NOT NULL,
  `firstName` varchar(30) NOT NULL,
  `lastName` varchar(30) NOT NULL,
  `odrID` int(5) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `client`
--

INSERT INTO `client` (`clientID`, `firstName`, `lastName`, `odrID`) VALUES
(8, 'Abdullah', 'Abdelwahab', 1),
(9, 'Monster', 'Sandwich', 2),
(10, 'Emaan', 'Nananana', 3),
(11, 'Maaz', 'Barz', 4),
(12, 'Halima', 'Lima', 5),
(13, 'Aliyu', 'Hafiz', 6),
(14, 'Bello', 'Dangiwa', 7);

-- --------------------------------------------------------

--
-- Table structure for table `delivery`
--

CREATE TABLE IF NOT EXISTS `delivery` (
`devID` int(5) NOT NULL,
  `firstName` varchar(30) NOT NULL,
  `ordrID` int(5) NOT NULL,
  `emID` int(5) NOT NULL,
  `rID` int(5) NOT NULL,
  `vID` varchar(6) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `delivery`
--

INSERT INTO `delivery` (`devID`, `firstName`, `ordrID`, `emID`, `rID`, `vID`) VALUES
(16, 'Abdullah', 1, 69, 4, 'A00001'),
(17, 'Maaz', 4, 70, 5, 'E225RT'),
(18, 'Halima', 5, 71, 6, 'E666'),
(19, 'Emaan', 3, 72, 7, 'E155M4'),
(21, 'Bello', 7, 75, 9, 'L56109'),
(22, 'Monster', 2, 76, 10, 'D3AD66'),
(23, 'Aliyu', 6, 74, 8, 'EF4567');

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE IF NOT EXISTS `department` (
`deptID` int(5) NOT NULL,
  `role` varchar(20) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`deptID`, `role`) VALUES
(25, 'Manager'),
(26, 'Technician'),
(27, 'Driver'),
(28, 'Admin');

-- --------------------------------------------------------

--
-- Stand-in structure for view `driversview`
--
CREATE TABLE IF NOT EXISTS `driversview` (
`vehiclePlate` varchar(6)
,`eID` int(5)
,`depID` int(5)
,`ordID` int(5)
,`areaCode` char(5)
,`AREA` varchar(50)
,`orID` int(5)
,`vPlate` varchar(6)
,`dlID` int(5)
,`cID` int(5)
);
-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE IF NOT EXISTS `employee` (
`empID` int(5) NOT NULL,
  `firstName` varchar(20) NOT NULL,
  `lastName` varchar(20) NOT NULL,
  `dID` int(5) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`empID`, `firstName`, `lastName`, `dID`) VALUES
(65, 'Talal', 'Shiekh', 25),
(66, 'Mohammed', 'Hamdan', 28),
(67, 'Hind', 'Zantout', 25),
(68, 'Hani', 'Ahmad', 26),
(69, 'Stephen', 'Gill', 27),
(70, 'Kevin', 'Elleven', 27),
(71, 'Chriss', 'Patt', 27),
(72, 'Dead', 'Pool', 27),
(73, 'Muthahira', 'Bhatti', 28),
(74, 'Connor ', 'McGregor', 27),
(75, 'Muhammad', 'Mahd', 27),
(76, 'Muhammad', 'Motasim', 27);

-- --------------------------------------------------------

--
-- Stand-in structure for view `managersview`
--
CREATE TABLE IF NOT EXISTS `managersview` (
`orderID` int(5)
,`ccID` int(5)
,`ddID` int(5)
,`rrID` int(5)
,`clientID` int(5)
,`firstName` varchar(30)
,`lastName` varchar(30)
,`odrID` int(5)
);
-- --------------------------------------------------------

--
-- Table structure for table `orderrate`
--

CREATE TABLE IF NOT EXISTS `orderrate` (
`rateID` int(5) NOT NULL,
  `rate` char(10) NOT NULL,
  `location` varchar(150) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orderrate`
--

INSERT INTO `orderrate` (`rateID`, `rate`, `location`) VALUES
(4, '20 AED', 'Sharjah'),
(5, '30 AED', 'Dubai'),
(6, '40 AED', 'Abudhabi'),
(7, '45 AED', 'Um-Al-Quwian'),
(8, '50 AED', 'Ras-Al-Kheima'),
(9, '10 AED', 'Ajman'),
(10, '55 AED', 'Al-Ain');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE IF NOT EXISTS `orders` (
`orderID` int(5) NOT NULL,
  `ccID` int(5) NOT NULL,
  `ddID` int(5) NOT NULL,
  `rrID` int(5) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`orderID`, `ccID`, `ddID`, `rrID`) VALUES
(1, 8, 16, 4),
(2, 9, 17, 5),
(3, 10, 18, 6),
(4, 11, 19, 7),
(5, 12, 21, 8),
(6, 13, 22, 9),
(7, 14, 23, 10);

-- --------------------------------------------------------

--
-- Table structure for table `rate`
--

CREATE TABLE IF NOT EXISTS `rate` (
  `rrateID` int(5) NOT NULL,
  `aCode` char(5) NOT NULL,
  `orrderID` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rate`
--

INSERT INTO `rate` (`rrateID`, `aCode`, `orrderID`) VALUES
(4, 'SHJ', 6),
(5, 'DXB', 4),
(6, 'ABD', 2),
(7, 'UAQ', 7),
(8, 'RAK', 5),
(9, 'AJM', 3),
(10, 'AA', 1);

-- --------------------------------------------------------

--
-- Table structure for table `vehicles`
--

CREATE TABLE IF NOT EXISTS `vehicles` (
  `vehiclePlate` varchar(6) NOT NULL,
  `eID` int(5) NOT NULL,
  `depID` int(5) NOT NULL,
  `ordID` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vehicles`
--

INSERT INTO `vehicles` (`vehiclePlate`, `eID`, `depID`, `ordID`) VALUES
('A00001', 69, 27, 1),
('D3AD66', 70, 27, 2),
('E155M4', 71, 27, 3),
('E225RT', 72, 27, 4),
('E666', 74, 27, 5),
('EF4567', 75, 27, 6),
('L56109', 76, 27, 7),
('LK5156', 65, 25, 4),
('M5564L', 66, 28, 3),
('RT1258', 67, 25, NULL),
('W3S001', 68, 26, NULL),
('W5515E', 73, 28, NULL);

-- --------------------------------------------------------

--
-- Structure for view `driversview`
--
DROP TABLE IF EXISTS `driversview`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `driversview` AS select `v`.`vehiclePlate` AS `vehiclePlate`,`v`.`eID` AS `eID`,`v`.`depID` AS `depID`,`v`.`ordID` AS `ordID`,`a`.`areaCode` AS `areaCode`,`a`.`AREA` AS `AREA`,`a`.`orID` AS `orID`,`a`.`vPlate` AS `vPlate`,`a`.`dlID` AS `dlID`,`a`.`cID` AS `cID` from (`vehicles` `v` join `area` `a`) where (`v`.`vehiclePlate` = `a`.`vPlate`);

-- --------------------------------------------------------

--
-- Structure for view `managersview`
--
DROP TABLE IF EXISTS `managersview`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `managersview` AS select `o`.`orderID` AS `orderID`,`o`.`ccID` AS `ccID`,`o`.`ddID` AS `ddID`,`o`.`rrID` AS `rrID`,`c`.`clientID` AS `clientID`,`c`.`firstName` AS `firstName`,`c`.`lastName` AS `lastName`,`c`.`odrID` AS `odrID` from (`orders` `o` join `client` `c`) where (`o`.`orderID` = `c`.`odrID`);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `area`
--
ALTER TABLE `area`
 ADD PRIMARY KEY (`areaCode`), ADD KEY `orID` (`orID`), ADD KEY `vPlate` (`vPlate`), ADD KEY `dlID` (`dlID`), ADD KEY `cID` (`cID`);

--
-- Indexes for table `client`
--
ALTER TABLE `client`
 ADD PRIMARY KEY (`clientID`), ADD UNIQUE KEY `clientID` (`clientID`), ADD KEY `odrID` (`odrID`);

--
-- Indexes for table `delivery`
--
ALTER TABLE `delivery`
 ADD PRIMARY KEY (`devID`), ADD UNIQUE KEY `devID` (`devID`), ADD KEY `ordrID` (`ordrID`), ADD KEY `emID` (`emID`), ADD KEY `rID` (`rID`), ADD KEY `vID` (`vID`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
 ADD PRIMARY KEY (`deptID`), ADD UNIQUE KEY `deptID` (`deptID`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
 ADD PRIMARY KEY (`empID`), ADD UNIQUE KEY `empID` (`empID`), ADD KEY `dID` (`dID`), ADD KEY `emp_ind` (`empID`,`firstName`);

--
-- Indexes for table `orderrate`
--
ALTER TABLE `orderrate`
 ADD PRIMARY KEY (`rateID`), ADD UNIQUE KEY `rateID` (`rateID`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
 ADD PRIMARY KEY (`orderID`), ADD UNIQUE KEY `orderID` (`orderID`), ADD KEY `ccID` (`ccID`), ADD KEY `ddID` (`ddID`), ADD KEY `rrID` (`rrID`), ADD KEY `order_ind` (`orderID`,`ccID`,`ddID`);

--
-- Indexes for table `rate`
--
ALTER TABLE `rate`
 ADD KEY `rrateID` (`rrateID`), ADD KEY `aCode` (`aCode`), ADD KEY `orrderID` (`orrderID`);

--
-- Indexes for table `vehicles`
--
ALTER TABLE `vehicles`
 ADD PRIMARY KEY (`vehiclePlate`), ADD UNIQUE KEY `vehiclePlate` (`vehiclePlate`), ADD KEY `eID` (`eID`), ADD KEY `depID` (`depID`), ADD KEY `ordID` (`ordID`), ADD KEY `vehicle_ind` (`vehiclePlate`,`eID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `client`
--
ALTER TABLE `client`
MODIFY `clientID` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `delivery`
--
ALTER TABLE `delivery`
MODIFY `devID` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
MODIFY `deptID` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
MODIFY `empID` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=77;
--
-- AUTO_INCREMENT for table `orderrate`
--
ALTER TABLE `orderrate`
MODIFY `rateID` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
MODIFY `orderID` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `area`
--
ALTER TABLE `area`
ADD CONSTRAINT `area_ibfk_1` FOREIGN KEY (`orID`) REFERENCES `orders` (`orderID`),
ADD CONSTRAINT `area_ibfk_2` FOREIGN KEY (`vPlate`) REFERENCES `vehicles` (`vehiclePlate`),
ADD CONSTRAINT `area_ibfk_3` FOREIGN KEY (`dlID`) REFERENCES `delivery` (`devID`),
ADD CONSTRAINT `area_ibfk_4` FOREIGN KEY (`cID`) REFERENCES `client` (`clientID`);

--
-- Constraints for table `client`
--
ALTER TABLE `client`
ADD CONSTRAINT `client_ibfk_1` FOREIGN KEY (`odrID`) REFERENCES `orders` (`orderID`);

--
-- Constraints for table `delivery`
--
ALTER TABLE `delivery`
ADD CONSTRAINT `delivery_ibfk_1` FOREIGN KEY (`ordrID`) REFERENCES `orders` (`orderID`),
ADD CONSTRAINT `delivery_ibfk_2` FOREIGN KEY (`emID`) REFERENCES `employee` (`empID`),
ADD CONSTRAINT `delivery_ibfk_3` FOREIGN KEY (`rID`) REFERENCES `orderrate` (`rateID`),
ADD CONSTRAINT `delivery_ibfk_4` FOREIGN KEY (`vID`) REFERENCES `vehicles` (`vehiclePlate`);

--
-- Constraints for table `employee`
--
ALTER TABLE `employee`
ADD CONSTRAINT `employee_ibfk_1` FOREIGN KEY (`dID`) REFERENCES `department` (`deptID`);

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`ccID`) REFERENCES `client` (`clientID`),
ADD CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`ddID`) REFERENCES `delivery` (`devID`),
ADD CONSTRAINT `orders_ibfk_3` FOREIGN KEY (`rrID`) REFERENCES `orderrate` (`rateID`);

--
-- Constraints for table `rate`
--
ALTER TABLE `rate`
ADD CONSTRAINT `rate_ibfk_1` FOREIGN KEY (`rrateID`) REFERENCES `orderrate` (`rateID`),
ADD CONSTRAINT `rate_ibfk_2` FOREIGN KEY (`aCode`) REFERENCES `area` (`areaCode`),
ADD CONSTRAINT `rate_ibfk_3` FOREIGN KEY (`orrderID`) REFERENCES `orders` (`orderID`);

--
-- Constraints for table `vehicles`
--
ALTER TABLE `vehicles`
ADD CONSTRAINT `vehicles_ibfk_1` FOREIGN KEY (`eID`) REFERENCES `employee` (`empID`),
ADD CONSTRAINT `vehicles_ibfk_2` FOREIGN KEY (`depID`) REFERENCES `department` (`deptID`),
ADD CONSTRAINT `vehicles_ibfk_3` FOREIGN KEY (`ordID`) REFERENCES `orders` (`orderID`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
