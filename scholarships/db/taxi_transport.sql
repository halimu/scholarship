-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 11, 2020 at 08:37 AM
-- Server version: 10.1.29-MariaDB
-- PHP Version: 7.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `taxi_transport`
--

-- --------------------------------------------------------

--
-- Table structure for table `car`
--

CREATE TABLE `car` (
  `plateNo` varchar(45) NOT NULL,
  `carModel` varchar(20) DEFAULT NULL,
  `carLicense` varchar(20) DEFAULT NULL,
  `carColor` varchar(20) DEFAULT NULL,
  `tinNo` int(20) DEFAULT NULL,
  `driverID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `car`
--

INSERT INTO `car` (`plateNo`, `carModel`, `carLicense`, `carColor`, `tinNo`, `driverID`) VALUES
('099', 'lkk', 'lkk', 'jjj', 9989, 1);

-- --------------------------------------------------------

--
-- Table structure for table `customee`
--

CREATE TABLE `customee` (
  `sno` int(11) NOT NULL,
  `Owner_of_work` varchar(50) NOT NULL,
  `Gender` varchar(50) NOT NULL,
  `Address` varchar(50) NOT NULL,
  `Role_category` char(50) NOT NULL,
  `Words_category` char(50) NOT NULL,
  `Total_works` int(50) NOT NULL,
  `Phone_number` text NOT NULL,
  `Date_received` date NOT NULL,
  `Total_per_month` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `custID` int(11) NOT NULL,
  `userName` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`custID`, `userName`) VALUES
(2, 'r');

-- --------------------------------------------------------

--
-- Table structure for table `driver`
--

CREATE TABLE `driver` (
  `driverID` int(11) NOT NULL,
  `LicenseClass` varchar(20) DEFAULT NULL,
  `userName` varchar(45) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  `custID` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `driver`
--

INSERT INTO `driver` (`driverID`, `LicenseClass`, `userName`, `status`, `custID`) VALUES
(1, 'B1', 'jambiani', '0', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `logins`
--

CREATE TABLE `logins` (
  `userName` varchar(45) NOT NULL,
  `pass` varchar(45) DEFAULT NULL,
  `role` varchar(45) DEFAULT NULL,
  `f_Name` varchar(45) DEFAULT NULL,
  `l_Name` varchar(45) DEFAULT NULL,
  `address` varchar(45) DEFAULT NULL,
  `phone` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `national` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `logins`
--

INSERT INTO `logins` (`userName`, `pass`, `role`, `f_Name`, `l_Name`, `address`, `phone`, `email`, `national`) VALUES
('jambiani', '54321', 'Driver', 'kk', 'mm', 'nn', '0655009069', '0655009069@ggg', 'Tanzanian'),
('r', '12345', 'Admin', 'hamad', 'haji', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `reply`
--

CREATE TABLE `reply` (
  `replyNo` int(20) NOT NULL,
  `requestNo` int(20) DEFAULT NULL,
  `Date` date DEFAULT NULL,
  `driverID` int(11) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `request`
--

CREATE TABLE `request` (
  `requestNo` int(20) NOT NULL,
  `date` date DEFAULT NULL,
  `Description` text,
  `driverID` int(11) DEFAULT NULL,
  `custID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `station`
--

CREATE TABLE `station` (
  `stationID` int(20) NOT NULL,
  `plateNo` varchar(45) DEFAULT NULL,
  `stationName` varchar(20) DEFAULT NULL,
  `stationStreet` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `station`
--

INSERT INTO `station` (`stationID`, `plateNo`, `stationName`, `stationStreet`) VALUES
(1, '099', 'kkk', 'kkkk');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `car`
--
ALTER TABLE `car`
  ADD PRIMARY KEY (`plateNo`),
  ADD KEY `driverFK_idx` (`driverID`);

--
-- Indexes for table `customee`
--
ALTER TABLE `customee`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`custID`),
  ADD KEY `useFK_idx` (`userName`),
  ADD KEY `id_idx` (`userName`);

--
-- Indexes for table `driver`
--
ALTER TABLE `driver`
  ADD PRIMARY KEY (`driverID`),
  ADD KEY `useFK_idx` (`userName`);

--
-- Indexes for table `logins`
--
ALTER TABLE `logins`
  ADD PRIMARY KEY (`userName`);

--
-- Indexes for table `reply`
--
ALTER TABLE `reply`
  ADD PRIMARY KEY (`replyNo`),
  ADD KEY `repFK_idx` (`requestNo`);

--
-- Indexes for table `request`
--
ALTER TABLE `request`
  ADD PRIMARY KEY (`requestNo`),
  ADD KEY `reqFK_idx` (`custID`);

--
-- Indexes for table `station`
--
ALTER TABLE `station`
  ADD PRIMARY KEY (`stationID`),
  ADD KEY `stFK_idx` (`plateNo`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customee`
--
ALTER TABLE `customee`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `custID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `driver`
--
ALTER TABLE `driver`
  MODIFY `driverID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `reply`
--
ALTER TABLE `reply`
  MODIFY `replyNo` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `request`
--
ALTER TABLE `request`
  MODIFY `requestNo` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `station`
--
ALTER TABLE `station`
  MODIFY `stationID` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `car`
--
ALTER TABLE `car`
  ADD CONSTRAINT `driverFK` FOREIGN KEY (`driverID`) REFERENCES `driver` (`driverID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `customer`
--
ALTER TABLE `customer`
  ADD CONSTRAINT `id` FOREIGN KEY (`userName`) REFERENCES `logins` (`userName`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `driver`
--
ALTER TABLE `driver`
  ADD CONSTRAINT `useFK` FOREIGN KEY (`userName`) REFERENCES `logins` (`userName`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `reply`
--
ALTER TABLE `reply`
  ADD CONSTRAINT `repFK` FOREIGN KEY (`requestNo`) REFERENCES `request` (`requestNo`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `request`
--
ALTER TABLE `request`
  ADD CONSTRAINT `reqFK` FOREIGN KEY (`custID`) REFERENCES `customer` (`custID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `station`
--
ALTER TABLE `station`
  ADD CONSTRAINT `stFK` FOREIGN KEY (`plateNo`) REFERENCES `car` (`plateNo`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
