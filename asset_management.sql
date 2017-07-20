-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 20, 2017 at 12:59 PM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `asset_management`
--

-- --------------------------------------------------------

--
-- Table structure for table `asset`
--

CREATE TABLE `asset` (
  `ID` mediumint(9) NOT NULL,
  `BRAND` varchar(100) DEFAULT NULL,
  `TYPE` varchar(100) DEFAULT NULL,
  `GROUP_ID` tinyint(4) NOT NULL,
  `BUY_DATE` date NOT NULL DEFAULT '1945-01-01',
  `EXPIRED_MAINTENANCE_DATE` date NOT NULL DEFAULT '1945-01-01',
  `PHOTO` varchar(255) DEFAULT NULL,
  `LOCATION` varchar(100) NOT NULL,
  `BUY_PRICE` double DEFAULT NULL,
  `CABLE_X_COORDINATE` varchar(4) DEFAULT NULL,
  `CABLE_Y_COORDINATE` varchar(4) DEFAULT NULL,
  `CABLE_TYPE` varchar(50) DEFAULT NULL,
  `SERIAL_NUMBER` varchar(50) DEFAULT NULL,
  `HA_MODE` varchar(100) DEFAULT NULL,
  `SPECIFICATION` text,
  `ASSET_FUNCTION` varchar(255) DEFAULT NULL,
  `ACTIVE` enum('Y','N') NOT NULL DEFAULT 'Y',
  `USER_ID` smallint(6) NOT NULL,
  `LAST_UPDATE` datetime DEFAULT NULL,
  `LAST_UPDATE_USER_ID` smallint(6) DEFAULT NULL,
  `HOSTNAME` varchar(100) DEFAULT '',
  `END_OF_SALE_DATE` date NOT NULL DEFAULT '1945-01-01',
  `END_OF_LIFE_DATE` date NOT NULL DEFAULT '1945-01-01',
  `IP_ADDRESS` varchar(50) DEFAULT NULL,
  `OPERATING_SYSTEM` varchar(100) DEFAULT NULL,
  `PORT` varchar(10) DEFAULT NULL,
  `END_OF_SUPPORT_DATE` date NOT NULL DEFAULT '1945-01-01'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `asset_document`
--

CREATE TABLE `asset_document` (
  `ID` mediumint(9) NOT NULL,
  `ASSET_ID` mediumint(9) NOT NULL,
  `NAME` varchar(255) NOT NULL,
  `PATH` varchar(255) NOT NULL,
  `DESCRIPTION` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `asset_group`
--

CREATE TABLE `asset_group` (
  `ID` tinyint(4) NOT NULL,
  `NAME` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `asset_maintenance`
--

CREATE TABLE `asset_maintenance` (
  `ID` mediumint(9) NOT NULL,
  `ASSET_ID` mediumint(9) NOT NULL,
  `EVENT_DATE` datetime NOT NULL,
  `DESCRIPTION` text,
  `DOCUMENT_PATH` varchar(255) NOT NULL DEFAULT '',
  `USER_ID` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `asset_port`
--

CREATE TABLE `asset_port` (
  `ID` int(11) NOT NULL,
  `PORT` varchar(10) NOT NULL,
  `IP_ADDRESS` varchar(50) NOT NULL,
  `ASSET_ID` mediumint(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `asset_procurement_maintenance`
--

CREATE TABLE `asset_procurement_maintenance` (
  `ID` mediumint(9) NOT NULL,
  `ASSET_ID` mediumint(9) NOT NULL,
  `FILLING_DATE` date NOT NULL,
  `DESCRIPTION` text NOT NULL,
  `USER_ID` smallint(6) NOT NULL,
  `DOCUMENT_PATH` varchar(255) DEFAULT NULL,
  `DONE_DATE` date DEFAULT NULL,
  `STATUS` enum('ON PROCESS','DONE','CHANGE DEVICE') DEFAULT 'ON PROCESS'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `asset_troubleshoot`
--

CREATE TABLE `asset_troubleshoot` (
  `ID` mediumint(9) NOT NULL,
  `ASSET_ID` mediumint(9) NOT NULL,
  `DESCRIPTION` text NOT NULL,
  `TROUBLESHOOT` text,
  `SOLVED` enum('Y','N') NOT NULL DEFAULT 'N',
  `DOCUMENT_PATH` varchar(255) DEFAULT NULL,
  `USER_ID` smallint(6) NOT NULL,
  `USER_ID_SOLVED` smallint(6) DEFAULT NULL,
  `EVENT_DATE` datetime NOT NULL,
  `SOLVED_DATE` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `asset_upcoming_event`
--

CREATE TABLE `asset_upcoming_event` (
  `ID` mediumint(9) NOT NULL,
  `ASSET_ID` mediumint(9) NOT NULL,
  `REMINDER_DATE` datetime NOT NULL,
  `DESCRIPTION` text NOT NULL,
  `USER_ID` smallint(6) NOT NULL,
  `STATUS` enum('DONE','PENDING','WAITING REMINDER') NOT NULL DEFAULT 'WAITING REMINDER'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `document`
--

CREATE TABLE `document` (
  `ID` mediumint(9) NOT NULL,
  `NAME` varchar(255) NOT NULL,
  `PATH` varchar(255) NOT NULL,
  `DESCRIPTION` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `parameter`
--

CREATE TABLE `parameter` (
  `ID` smallint(6) NOT NULL,
  `NAME` varchar(100) NOT NULL,
  `DESCRIPTION` text,
  `VALUE` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `parameter`
--

INSERT INTO `parameter` (`ID`, `NAME`, `DESCRIPTION`, `VALUE`) VALUES
(1, 'Alert Calendar Day ', 'Sistem akan mengirimkan notifikasi H-7 ', '7'),
(2, 'Periode Anggaran Baru', 'Periode anggaran untuk setiap tahun', '03-01');

-- --------------------------------------------------------

--
-- Table structure for table `project`
--

CREATE TABLE `project` (
  `ID` int(11) NOT NULL,
  `PROJECT_NAME` varchar(255) NOT NULL,
  `START_DATE` date NOT NULL,
  `END_DATE` date NOT NULL,
  `BUDGET` int(11) DEFAULT NULL,
  `EXPENSE` int(11) DEFAULT NULL,
  `STATUS` enum('ACTIVE','NON ACTIVE') DEFAULT NULL,
  `DESCRIPTION` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `project_asset`
--

CREATE TABLE `project_asset` (
  `PROJECT_ID` int(11) NOT NULL,
  `ASSET_ID` mediumint(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `ID` smallint(6) NOT NULL,
  `USERNAME` varchar(50) NOT NULL,
  `PASSWORD` varchar(255) NOT NULL,
  `LAST_LOGIN` datetime DEFAULT NULL,
  `ACTIVE` enum('Y','N') DEFAULT 'Y',
  `USER_TYPE` enum('ORGANIC','VENDOR','SYS') DEFAULT 'ORGANIC'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `asset`
--
ALTER TABLE `asset`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ASSET_GROUP` (`GROUP_ID`),
  ADD KEY `ASSET_USER` (`USER_ID`),
  ADD KEY `ASSET_USER_UPDATE` (`LAST_UPDATE_USER_ID`);

--
-- Indexes for table `asset_document`
--
ALTER TABLE `asset_document`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ASSET_DOCUMENT_ASSET` (`ASSET_ID`);

--
-- Indexes for table `asset_group`
--
ALTER TABLE `asset_group`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `asset_maintenance`
--
ALTER TABLE `asset_maintenance`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ASSET_MAINTENANCE_USER` (`USER_ID`),
  ADD KEY `ASSET_MAINTENANCE_ASSET` (`ASSET_ID`);

--
-- Indexes for table `asset_port`
--
ALTER TABLE `asset_port`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `FK_PORT_ASSET` (`ASSET_ID`);

--
-- Indexes for table `asset_procurement_maintenance`
--
ALTER TABLE `asset_procurement_maintenance`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ASSET_PROCUREMENT_MAINTENANCES_USER` (`USER_ID`),
  ADD KEY `ASSET_PROCUREMENT_MAINTENANCES_ASSET` (`ASSET_ID`);

--
-- Indexes for table `asset_troubleshoot`
--
ALTER TABLE `asset_troubleshoot`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ASSET_TROUBLE_ASSET` (`ASSET_ID`),
  ADD KEY `ASSET_TROUBLES_USER` (`USER_ID`),
  ADD KEY `ASSET_TROUBLES_USER2` (`USER_ID_SOLVED`);

--
-- Indexes for table `asset_upcoming_event`
--
ALTER TABLE `asset_upcoming_event`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ASSET_UPCOMING_USER` (`USER_ID`),
  ADD KEY `ASSET_UPCOMING_ASSET` (`ASSET_ID`);

--
-- Indexes for table `document`
--
ALTER TABLE `document`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `parameter`
--
ALTER TABLE `parameter`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `project`
--
ALTER TABLE `project`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `asset`
--
ALTER TABLE `asset`
  MODIFY `ID` mediumint(9) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `asset_document`
--
ALTER TABLE `asset_document`
  MODIFY `ID` mediumint(9) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `asset_group`
--
ALTER TABLE `asset_group`
  MODIFY `ID` tinyint(4) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `asset_maintenance`
--
ALTER TABLE `asset_maintenance`
  MODIFY `ID` mediumint(9) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `asset_port`
--
ALTER TABLE `asset_port`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `asset_procurement_maintenance`
--
ALTER TABLE `asset_procurement_maintenance`
  MODIFY `ID` mediumint(9) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `asset_troubleshoot`
--
ALTER TABLE `asset_troubleshoot`
  MODIFY `ID` mediumint(9) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `asset_upcoming_event`
--
ALTER TABLE `asset_upcoming_event`
  MODIFY `ID` mediumint(9) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `document`
--
ALTER TABLE `document`
  MODIFY `ID` mediumint(9) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `parameter`
--
ALTER TABLE `parameter`
  MODIFY `ID` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `project`
--
ALTER TABLE `project`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `ID` smallint(6) NOT NULL AUTO_INCREMENT;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `asset`
--
ALTER TABLE `asset`
  ADD CONSTRAINT `ASSET_GROUP` FOREIGN KEY (`GROUP_ID`) REFERENCES `asset_group` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ASSET_USER` FOREIGN KEY (`USER_ID`) REFERENCES `user` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ASSET_USER_UPDATE` FOREIGN KEY (`LAST_UPDATE_USER_ID`) REFERENCES `user` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `asset_document`
--
ALTER TABLE `asset_document`
  ADD CONSTRAINT `ASSET_DOCUMENT_ASSET` FOREIGN KEY (`ASSET_ID`) REFERENCES `asset` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `asset_maintenance`
--
ALTER TABLE `asset_maintenance`
  ADD CONSTRAINT `ASSET_MAINTENANCE_ASSET` FOREIGN KEY (`ASSET_ID`) REFERENCES `asset` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ASSET_MAINTENANCE_USER` FOREIGN KEY (`USER_ID`) REFERENCES `user` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `asset_port`
--
ALTER TABLE `asset_port`
  ADD CONSTRAINT `FK_PORT_ASSET` FOREIGN KEY (`ASSET_ID`) REFERENCES `asset` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `asset_procurement_maintenance`
--
ALTER TABLE `asset_procurement_maintenance`
  ADD CONSTRAINT `ASSET_PROCUREMENT_MAINTENANCES_ASSET` FOREIGN KEY (`ASSET_ID`) REFERENCES `asset` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ASSET_PROCUREMENT_MAINTENANCES_USER` FOREIGN KEY (`USER_ID`) REFERENCES `user` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `asset_troubleshoot`
--
ALTER TABLE `asset_troubleshoot`
  ADD CONSTRAINT `ASSET_TROUBLES_USER` FOREIGN KEY (`USER_ID`) REFERENCES `user` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ASSET_TROUBLES_USER2` FOREIGN KEY (`USER_ID_SOLVED`) REFERENCES `user` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ASSET_TROUBLE_ASSET` FOREIGN KEY (`ASSET_ID`) REFERENCES `asset` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `asset_upcoming_event`
--
ALTER TABLE `asset_upcoming_event`
  ADD CONSTRAINT `ASSET_UPCOMING_ASSET` FOREIGN KEY (`ASSET_ID`) REFERENCES `asset` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ASSET_UPCOMING_USER` FOREIGN KEY (`USER_ID`) REFERENCES `user` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
