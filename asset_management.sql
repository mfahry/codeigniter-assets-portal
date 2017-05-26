-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 22, 2017 at 04:43 AM
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
  `BRAND` varchar(100) NOT NULL,
  `TYPE` varchar(100) NOT NULL,
  `GROUP_ID` tinyint(4) NOT NULL,
  `BUY_DATE` date NOT NULL,
  `EXPIRED_MAINTENANCE_DATE` date NOT NULL,
  `PHOTO` varchar(255) DEFAULT NULL,
  `LOCATION` varchar(100) NOT NULL,
  `BUY_PRICE` double DEFAULT NULL,
  `CABLE_X_COORDINATE` tinyint(4) NOT NULL,
  `CABLE_Y_COORDINATE` tinyint(4) NOT NULL,
  `CABLE_TYPE` varchar(50) DEFAULT NULL,
  `SERIAL_NUMBER` varchar(50) DEFAULT NULL,
  `HA_MODE` varchar(100) DEFAULT NULL,
  `SPECIFICATION` text,
  `ASSET_FUNCTION` varchar(255) DEFAULT NULL,
  `ACTIVE` enum('Y','N') DEFAULT 'Y',
  `USER_ID` smallint(6) NOT NULL,
  `LAST_UPDATE` datetime DEFAULT NULL,
  `LAST_UPDATE_USER_ID` smallint(6) DEFAULT NULL,
  `HOSTNAME` varchar(100) NOT NULL DEFAULT '',
  `END_OF_SALE_DATE` date NOT NULL,
  `END_OF_LIFE_DATE` date NOT NULL,
  `IP_ADDRESS` varchar(50) DEFAULT NULL,
  `OPERATING_SYSTEM` varchar(100) DEFAULT NULL,
  `PORT` varchar(10) NOT NULL,
  `END_OF_SUPPORT_DATE` date NOT NULL DEFAULT '1970-01-01'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `asset`
--

INSERT INTO `asset` (`ID`, `BRAND`, `TYPE`, `GROUP_ID`, `BUY_DATE`, `EXPIRED_MAINTENANCE_DATE`, `PHOTO`, `LOCATION`, `BUY_PRICE`, `CABLE_X_COORDINATE`, `CABLE_Y_COORDINATE`, `CABLE_TYPE`, `SERIAL_NUMBER`, `HA_MODE`, `SPECIFICATION`, `ASSET_FUNCTION`, `ACTIVE`, `USER_ID`, `LAST_UPDATE`, `LAST_UPDATE_USER_ID`, `HOSTNAME`, `END_OF_SALE_DATE`, `END_OF_LIFE_DATE`, `IP_ADDRESS`, `OPERATING_SYSTEM`, `PORT`, `END_OF_SUPPORT_DATE`) VALUES
(5, 'FUJITSU', 'A11011', 1, '2017-01-01', '2017-02-02', NULL, 'SUDIRMAN', 100000, 0, 0, NULL, NULL, NULL, NULL, NULL, 'Y', 1, NULL, 1, '', '2017-01-02', '2017-06-06', '127.0.0.1', 'DEBIAN LINUX', '', '1970-01-01'),
(6, 'Huawei', '100-HH01', 2, '2017-05-04', '2017-05-04', '', 'Gedung Teknologi Informasi', 1000000, 100, 17, 'Throughput', '0001-2126-1882-1925-3119-212', 'AP', 'CPU 100HZ\r\nMemory 400 MB ', 'Server Zabbix Monitoring ', 'Y', 1, '2017-05-15 14:49:28', NULL, 'Zabbix Server', '2017-05-04', '2017-05-04', '127.001.001.121', 'Windows Server', '', '1970-01-01'),
(7, 'Huawei', '100-HH01', 3, '2017-05-04', '2017-05-04', '', 'Gedung Teknologi Informasi', 1000000, 100, 17, 'Throughput', '0001-2126-1882-1925-3119-212', 'AP', 'CPU 100HZ\r\nMemory 400 MB              		', 'Server Zabbix Monitoring              		', 'Y', 1, '2017-05-15 14:50:28', NULL, 'Zabbix Server', '2017-05-04', '2017-05-04', '127.001.001.121', 'Windows Server', '', '1970-01-01'),
(8, 'adad', 'daad', 2, '2017-05-04', '2017-05-04', '', 'adad', 100000, 10, 10, 'ddad', '1211-1144-1141-1411-1414-441', 'AA', 'ad              		', 'add', 'Y', 1, '2017-05-16 14:05:51', 1, 'dad', '2017-05-04', '2017-05-04', '127.000.100.011', 'adaddad', '8080', '2017-05-21'),
(9, 'q', 'q', 2, '2017-05-04', '2017-05-04', 'uploads/asset/Office_comparison.pdf', 'q', 10000, 1, 1, 'q', '1111-1111-1111-1111-1111-111', 'AP', '1              		', '1              		', 'N', 1, '2017-05-12 09:36:39', NULL, 'q', '2017-05-04', '2017-05-04', '121.111.111.111', 'q', '', '1970-01-01'),
(10, 'ppp', 'ppp', 1, '2017-05-05', '2017-05-05', 'uploads/asset/01-04__HRD__Form_Tes_Kepribadian_(DISC)1.xls', 'pp', 909, 1, 1, '1111', '1983-9183-9013-9017-3111-11_', 'AP', 'a', 'a', 'Y', 1, NULL, NULL, 'ppp', '2017-05-05', '2017-05-05', '180.183.081.083', 'ppp', '', '1970-01-01'),
(11, 'ppp', 'ppp', 3, '2017-05-05', '2017-05-05', 'uploads/asset/01-04__HRD__Form_Tes_Kepribadian_(DISC)2.xls', 'pp', 909, 1, 1, '1111', '1983-9183-9013-9017-3111-11_', 'AP', 'a', 'a', 'N', 1, '2017-05-15 14:50:58', NULL, 'ppp', '2017-05-05', '2017-05-05', '180.183.081.083', 'ppp', '', '1970-01-01'),
(13, 'ppp', 'ppp', 1, '2017-05-05', '2017-05-05', 'uploads/asset/01-04__HRD__Form_Tes_Kepribadian_(DISC)4.xls', 'pp', 909, 1, 1, '1111', '1983-9183-9013-9017-3111-11_', 'AP', 'a', 'a', 'N', 1, '2017-05-15 14:51:19', NULL, 'ppp', '2017-05-05', '2017-05-05', '180.183.081.083', 'ppp', '', '1970-01-01');

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

--
-- Dumping data for table `asset_document`
--

INSERT INTO `asset_document` (`ID`, `ASSET_ID`, `NAME`, `PATH`, `DESCRIPTION`) VALUES
(6, 10, 'dhthr', 'uploads/asset/Form_Candidate_Application.doc', 'ds'),
(9, 9, 'How to', 'uploads/asset/Total_List_Perangkat-Februari-20175.xlsx', 'aa'),
(10, 9, 'How to 2', 'uploads/asset/Total_List_Perangkat-Februari-20176.xlsx', 'bb'),
(11, 7, 'Manual Book', '', 'a'),
(12, 13, 'ada', 'uploads/asset/Form_Candidate_Application1.doc', ''),
(15, 8, 'aadad', '', 'adadad'),
(16, 8, 'aafff', '', 'dddd');

-- --------------------------------------------------------

--
-- Table structure for table `asset_group`
--

CREATE TABLE `asset_group` (
  `ID` tinyint(4) NOT NULL,
  `NAME` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `asset_group`
--

INSERT INTO `asset_group` (`ID`, `NAME`) VALUES
(1, 'FIREWALL'),
(2, 'SERVER'),
(3, 'HSM');

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

--
-- Dumping data for table `asset_maintenance`
--

INSERT INTO `asset_maintenance` (`ID`, `ASSET_ID`, `EVENT_DATE`, `DESCRIPTION`, `DOCUMENT_PATH`, `USER_ID`) VALUES
(1, 10, '2017-05-05 12:00:00', 'aaaa hha', 'uploads/maintenance/Office_comparison.pdf', 1),
(2, 6, '2017-05-18 12:00:00', 'adada', 'uploads/maintenance/Total_List_Perangkat-Februari-20172.xlsx', 2);

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

--
-- Dumping data for table `asset_port`
--

INSERT INTO `asset_port` (`ID`, `PORT`, `IP_ADDRESS`, `ASSET_ID`) VALUES
(5, 'sqsq', '11', 10),
(6, 'dgdg', '6767', 10),
(21, '111', '127.0.0.1', 9),
(22, '222', '127.0.0.2', 9),
(25, '8080', '127.0.0.1', 7),
(26, 'adadad', '', 11),
(27, 'ddd', '', 11),
(29, '8080', '', 8);

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
  `STATUS` enum('ON PROCESS','DONE') DEFAULT 'ON PROCESS'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `asset_procurement_maintenance`
--

INSERT INTO `asset_procurement_maintenance` (`ID`, `ASSET_ID`, `FILLING_DATE`, `DESCRIPTION`, `USER_ID`, `DOCUMENT_PATH`, `DONE_DATE`, `STATUS`) VALUES
(1, 7, '2017-05-08', 'aaaa', 1, 'uploads/procurement/Office_comparison.pdf', '2017-05-20', 'DONE');

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

--
-- Dumping data for table `asset_troubleshoot`
--

INSERT INTO `asset_troubleshoot` (`ID`, `ASSET_ID`, `DESCRIPTION`, `TROUBLESHOOT`, `SOLVED`, `DOCUMENT_PATH`, `USER_ID`, `USER_ID_SOLVED`, `EVENT_DATE`, `SOLVED_DATE`) VALUES
(1, 6, 'description', 'sss 44444444', 'Y', 'uploads/troubleshoot/Office-Vergleich.pdf', 1, 1, '2017-05-05 12:00:00', '2017-05-06'),
(2, 7, 'SSS', 'ASAS', 'Y', 'uploads/troubleshoot/Total_List_Perangkat-Februari-20171.xlsx', 2, 7, '2017-05-03 12:00:00', '2017-05-06');

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

--
-- Dumping data for table `asset_upcoming_event`
--

INSERT INTO `asset_upcoming_event` (`ID`, `ASSET_ID`, `REMINDER_DATE`, `DESCRIPTION`, `USER_ID`, `STATUS`) VALUES
(1, 10, '2017-05-08 00:00:00', 'aaa', 1, 'DONE'),
(2, 9, '2017-05-10 00:00:00', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer posuere erat a ante Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer posuere erat a ante Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer posuere erat a ante Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer posuere erat a ante.', 1, 'PENDING'),
(3, 7, '2017-05-18 00:00:00', 'a', 2, 'WAITING REMINDER'),
(4, 10, '2017-05-18 00:00:00', 'aaa', 2, 'DONE'),
(5, 9, '2017-05-18 00:00:00', 'sad', 2, 'DONE'),
(6, 9, '2017-05-18 00:00:00', 'aaa', 2, 'DONE');

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

--
-- Dumping data for table `document`
--

INSERT INTO `document` (`ID`, `NAME`, `PATH`, `DESCRIPTION`) VALUES
(1, 'User Manual How to', 'uploads/document/Office-Vergleich.pdf', 'Silahkan dinikmati HHAHAA');

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
(1, 'Waktu Pengingat (Notifikasi Telegram) ', 'Notifikasi ke telegram ada dikirimkan saat 1 minggu sebelum waktu berakhir', '7');

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
-- Dumping data for table `user`
--

INSERT INTO `user` (`ID`, `USERNAME`, `PASSWORD`, `LAST_LOGIN`, `ACTIVE`, `USER_TYPE`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', '2017-05-17 08:28:57', 'Y', 'SYS'),
(2, 'mfahry', '1640ccf230ce510c66e787dff0a4eec1', '2017-05-18 08:47:30', 'Y', 'ORGANIC'),
(3, 'nonot', '99f2e975bb5b9a82b1d2386ad2adb527', NULL, 'Y', 'ORGANIC'),
(4, 'khilmi', 'd613e3e68f4f9c16e788fa8299ab0edb', NULL, 'Y', 'ORGANIC'),
(5, 'caturadi', '2d08fda6aa81c7435e80e208527dc286', NULL, 'Y', 'ORGANIC'),
(6, 'mochan', '80acbdd07c105377ed97689a0d4bf03b', NULL, 'Y', 'ORGANIC'),
(7, 'nanang', 'cc8839950896aa17b3224887089241ba', NULL, 'Y', 'ORGANIC'),
(8, 'bogi', '4fb491e0557d6dff026934472d269a40', NULL, 'Y', 'ORGANIC'),
(9, 'sysadmin', '48a365b4ce1e322a55ae9017f3daf0c0', '2017-05-16 11:34:05', 'Y', 'SYS'),
(10, 'vendor', '7c3613dba5171cb6027c67835dd3b9d4', '2017-05-16 13:19:10', 'Y', 'VENDOR');

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
  MODIFY `ID` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `asset_document`
--
ALTER TABLE `asset_document`
  MODIFY `ID` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `asset_group`
--
ALTER TABLE `asset_group`
  MODIFY `ID` tinyint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `asset_maintenance`
--
ALTER TABLE `asset_maintenance`
  MODIFY `ID` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `asset_port`
--
ALTER TABLE `asset_port`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
--
-- AUTO_INCREMENT for table `asset_procurement_maintenance`
--
ALTER TABLE `asset_procurement_maintenance`
  MODIFY `ID` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `asset_troubleshoot`
--
ALTER TABLE `asset_troubleshoot`
  MODIFY `ID` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `asset_upcoming_event`
--
ALTER TABLE `asset_upcoming_event`
  MODIFY `ID` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `document`
--
ALTER TABLE `document`
  MODIFY `ID` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `parameter`
--
ALTER TABLE `parameter`
  MODIFY `ID` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `ID` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
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
