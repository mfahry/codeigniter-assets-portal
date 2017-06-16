-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 15, 2017 at 03:54 AM
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
  `CABLE_X_COORDINATE` tinyint(4) DEFAULT NULL,
  `CABLE_Y_COORDINATE` tinyint(4) DEFAULT NULL,
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

--
-- Dumping data for table `asset`
--

INSERT INTO `asset` (`ID`, `BRAND`, `TYPE`, `GROUP_ID`, `BUY_DATE`, `EXPIRED_MAINTENANCE_DATE`, `PHOTO`, `LOCATION`, `BUY_PRICE`, `CABLE_X_COORDINATE`, `CABLE_Y_COORDINATE`, `CABLE_TYPE`, `SERIAL_NUMBER`, `HA_MODE`, `SPECIFICATION`, `ASSET_FUNCTION`, `ACTIVE`, `USER_ID`, `LAST_UPDATE`, `LAST_UPDATE_USER_ID`, `HOSTNAME`, `END_OF_SALE_DATE`, `END_OF_LIFE_DATE`, `IP_ADDRESS`, `OPERATING_SYSTEM`, `PORT`, `END_OF_SUPPORT_DATE`) VALUES
(119, 'Palo Alto ', 'PA-5020', 1, '1945-01-01', '2018-04-30', '', 'BRI 1 SUDIRMAN', 0, 0, 0, '', '0011C101472', '', '', '', 'Y', 1, '0000-00-00 00:00:00', 0, 'Ostrich', '1945-01-01', '1945-01-01', '', '', '', '1945-01-01'),
(120, 'Palo Alto ', 'PA-5020', 1, '1945-01-01', '2018-04-30', '', 'BRI 1 SUDIRMAN', 0, 0, 0, '', '0011C101421', '', '', '', 'Y', 1, '0000-00-00 00:00:00', 0, 'Cassowary', '1945-01-01', '1945-01-01', '', '', '', '1945-01-01'),
(121, 'Cisco', 'Ironport C370', 4, '1945-01-01', '2018-04-30', '', 'BRI 1 SUDIRMAN', 0, 0, 0, '', '7828BCB194436-5P4FSR1', '', '', '', 'Y', 1, '0000-00-00 00:00:00', 0, 'Magpie', '2014-01-28', '2019-07-31', '', '', '', '2014-01-28'),
(122, 'Sourcefire', 'Defense Center 750', 8, '1945-01-01', '1945-01-01', '', 'BRI 1 SUDIRMAN', 0, 0, 0, '', 'AZGZ1210141-A', '', '', '', 'N', 1, '0000-00-00 00:00:00', 0, 'Cormorant', '1945-01-01', '1945-01-01', '', '', '', '1945-01-01'),
(123, 'Juniper', 'Juniper NetScreen ISG-2000', 1, '1945-01-01', '2016-12-31', '', 'BRI 1 SUDIRMAN', 0, 0, 0, '', '0079012009000380', '', '', '', 'Y', 1, '0000-00-00 00:00:00', 0, 'Bima 1', '1945-01-01', '1945-01-01', '', '', '', '1945-01-01'),
(124, 'Juniper', 'Juniper NetScreen ISG-2000', 1, '1945-01-01', '2016-12-31', '', 'BRI 1 SUDIRMAN', 0, 0, 0, '', '0079012009000347', '', '', '', 'Y', 1, '0000-00-00 00:00:00', 0, 'Bima 2', '1945-01-01', '1945-01-01', '', '', '', '1945-01-01'),
(125, 'Checkpoint', 'Check Point Power-1 5070', 1, '1945-01-01', '2016-12-31', '', 'BRI 1 SUDIRMAN', 0, 0, 0, '', 'MAC : 00:90:fb:22:68:ec ', '', '', '', 'Y', 1, '0000-00-00 00:00:00', 0, 'Deathstar 1', '2017-03-31', '2017-04-01', '', '', '', '2017-04-01'),
(126, 'Checkpoint', 'Check Point Power-1 5070', 1, '1945-01-01', '2016-12-31', '', 'BRI 1 SUDIRMAN', 0, 0, 0, '', 'MAC : 00:90:fb:22:68:f6', '', '', '', 'Y', 1, '0000-00-00 00:00:00', 0, 'Deathstar 2', '2017-03-31', '2017-04-01', '', '', '', '2017-04-01'),
(127, 'Juniper', 'Juniper NSMXpress', 1, '1945-01-01', '1945-01-01', '', 'BRI 1 SUDIRMAN', 0, 0, 0, '', '0213052009000008', '', '', '', 'N', 1, '0000-00-00 00:00:00', 0, '', '2020-07-31', '1945-01-01', '', '', '', '2017-07-31'),
(128, 'Checkpoint', 'Checkpoint CPAP-SG4807', 1, '1945-01-01', '2013-12-15', '', 'BRI 1 SUDIRMAN', 0, 0, 0, '', '1223B00162', '', '', '', 'Y', 1, '0000-00-00 00:00:00', 0, 'Fenrir 1', '1945-01-01', '1945-01-01', '', '', '', '1945-01-01'),
(129, 'Checkpoint', 'Checkpoint CPAP-SG4807', 1, '1945-01-01', '2013-12-15', '', 'BRI 1 SUDIRMAN', 0, 0, 0, '', '1223B00118', '', '', '', 'Y', 1, '0000-00-00 00:00:00', 0, 'Fenrir 2', '1945-01-01', '1945-01-01', '', '', '', '1945-01-01'),
(130, 'Checkpoint', 'Checkpoint Smart-15', 1, '1945-01-01', '2013-12-15', '', 'BRI 1 SUDIRMAN', 0, 0, 0, '', 'LR201208006764', '', '', '', 'Y', 1, '0000-00-00 00:00:00', 0, 'Freya', '2019-09-20', '1945-01-01', '', '', '', '2017-09-30'),
(131, 'F5', 'F5 BIG-IP 6900 Series', 5, '1945-01-01', '2013-10-20', '', 'BRI 1 SUDIRMAN', 0, 0, 0, '', 'F5-PYZB-RNKR', '', '', '', 'N', 1, '0000-00-00 00:00:00', 0, '', '1945-01-01', '2013-10-20', '', '', '', '2013-10-20'),
(132, 'Cisco', 'Cisco Ironport C30', 4, '1945-01-01', '1945-01-01', '', 'BRI 1 SUDIRMAN', 0, 0, 0, '', '000F1F6BE38B-9YVGX41', '', '', '', 'Y', 1, '0000-00-00 00:00:00', 0, '', '2006-12-31', '2006-12-30', '', '', '', '2006-12-31'),
(133, 'Cisco', 'Sourcefire 3D7030', 6, '1945-01-01', '2016-12-31', '', 'BRI 1 SUDIRMAN', 0, 0, 0, '', 'SFI130400138-T', '', '', '', 'Y', 1, '0000-00-00 00:00:00', 0, 'Semeru', '1945-01-01', '1945-01-01', '', '', '', '1945-01-01'),
(134, 'Cisco', 'Sourcefire 3D7030', 6, '1945-01-01', '2016-12-31', '', 'BRI 1 SUDIRMAN', 0, 0, 0, '', 'SFI130400129-T', '', '', '', 'Y', 1, '0000-00-00 00:00:00', 0, 'Krakatau', '1945-01-01', '1945-01-01', '', '', '', '1945-01-01'),
(135, 'Cisco', 'Sourcefire 3D7120', 6, '1945-01-01', '2016-12-31', '', 'BRI 1 SUDIRMAN', 0, 0, 0, '', '13011500400305-A', '', '', '', 'Y', 1, '0000-00-00 00:00:00', 0, 'Rinjani', '1945-01-01', '1945-01-01', '', '', '', '1945-01-01'),
(136, 'Cisco', 'Sourcefire 3D7120', 6, '1945-01-01', '2016-12-31', '', 'BRI 1 SUDIRMAN', 0, 0, 0, '', '13011500400314-A', '', '', '', 'Y', 1, '0000-00-00 00:00:00', 0, 'Kerinci', '1945-01-01', '1945-01-01', '', '', '', '1945-01-01'),
(137, 'McAfee', 'MFE Firewall Ent S4016 Appl', 1, '1945-01-01', '2012-12-29', '', 'BRI 1 SUDIRMAN', 0, 0, 0, '', 'SWLR-QSDF-PKSB-W605', '', '', '', 'Y', 1, '0000-00-00 00:00:00', 0, 'Tiger-1', '1945-01-01', '1945-01-01', '', '', '', '1945-01-01'),
(138, 'McAfee', 'MFE Firewall Ent S4016 Appl', 1, '1945-01-01', '2012-12-29', '', 'BRI 1 SUDIRMAN', 0, 0, 0, '', 'SWV8-8NNV-J2W5-8B26', '', '', '', 'Y', 1, '0000-00-00 00:00:00', 0, 'Tiger-2', '1945-01-01', '1945-01-01', '', '', '', '1945-01-01'),
(139, 'McAfee', 'MFE Firewall Ent S4016 Appl', 1, '1945-01-01', '2012-12-30', '', 'BRI 1 SUDIRMAN', 0, 0, 0, '', 'SWRR-H9E2-Z6JB-9V39', '', '', '', 'Y', 1, '0000-00-00 00:00:00', 0, 'Ox-1', '1945-01-01', '1945-01-01', '', '', '', '1945-01-01'),
(140, 'McAfee', 'MFE Firewall Ent S4016 Appl', 1, '1945-01-01', '2012-12-30', '', 'BRI 1 SUDIRMAN', 0, 0, 0, '', 'SWGE-NNRF-L8KS-L769', '', '', '', 'Y', 1, '0000-00-00 00:00:00', 0, 'Ox-2', '1945-01-01', '1945-01-01', '', '', '', '1945-01-01'),
(141, 'Radware', 'LinkProof OnDemand Switch with BWM, IPS v6.12.02', 7, '1945-01-01', '1945-01-01', '', 'BRI 1 SUDIRMAN', 0, 0, 0, '', '31904071', '', '', '', 'Y', 1, '0000-00-00 00:00:00', 0, 'Albatross', '1945-01-01', '1945-01-01', '', '', '', '1945-01-01'),
(142, 'Radware', 'LinkProof OnDemand Switch with BWM, IPS v6.12.02', 7, '1945-01-01', '1945-01-01', '', 'BRI 1 SUDIRMAN', 0, 0, 0, '', '31106946', '', '', '', 'Y', 1, '0000-00-00 00:00:00', 0, 'Albatross Peer', '1945-01-01', '1945-01-01', '', '', '', '1945-01-01'),
(143, 'Juniper', 'Juniper NetScreen NS5400', 1, '1945-01-01', '1945-01-01', '', 'BRI 1 SUDIRMAN', 0, 0, 0, '', '0047012005000034', '', '', '', 'Y', 1, '0000-00-00 00:00:00', 0, '', '2016-01-01', '1945-01-01', '', '', '', '2018-05-01'),
(144, 'Juniper', 'Juniper SRX650', 1, '1945-01-01', '1945-01-01', '', 'BRI 1 SUDIRMAN', 0, 0, 0, '', ' AJ1110AA0143', '', '', '', 'Y', 1, '0000-00-00 00:00:00', 0, 'Rabbit', '2016-05-01', '1945-01-01', '', '', '', '2018-05-01'),
(145, 'Thales', 'PayShield 7100', 3, '1945-01-01', '1945-01-01', '', 'BRI 1 SUDIRMAN', 0, 0, 0, '', '', '', '', '', 'N', 1, '0000-00-00 00:00:00', 0, '', '1945-01-01', '1945-01-01', '', '', '', '1945-01-01'),
(146, 'Thales', 'PayShield 7100 (Dev GTI)', 3, '1945-01-01', '1945-01-01', '', 'BRI 1 SUDIRMAN', 0, 0, 0, '', '', '', '', '', 'Y', 1, '0000-00-00 00:00:00', 0, '', '1945-01-01', '1945-01-01', '', '', '', '1945-01-01'),
(147, 'Thales', 'PayShield 8000', 3, '1945-01-01', '1945-01-01', '', 'BRI 1 SUDIRMAN', 0, 0, 0, '', '', '', '', '', 'N', 1, '0000-00-00 00:00:00', 0, '', '1945-01-01', '1945-01-01', '', '', '', '1945-01-01'),
(148, 'Thales', 'PayShield 8000', 3, '1945-01-01', '1945-01-01', '', 'BRI 1 SUDIRMAN', 0, 0, 0, '', '', '', '', '', 'Y', 1, '0000-00-00 00:00:00', 0, '', '1945-01-01', '1945-01-01', '', '', '', '1945-01-01'),
(149, 'Thales', 'PayShield 8000', 3, '1945-01-01', '1945-01-01', '', 'BRI 1 SUDIRMAN', 0, 0, 0, '', '', '', '', '', 'Y', 1, '0000-00-00 00:00:00', 0, '', '1945-01-01', '1945-01-01', '', '', '', '1945-01-01'),
(150, 'Thales', 'PayShield 9000 ', 3, '1945-01-01', '2016-12-31', '', 'BRI 1 SUDIRMAN', 0, 0, 0, '', 'B4665275907W', '', '', '', 'Y', 1, '0000-00-00 00:00:00', 0, '', '1945-01-01', '1945-01-01', '', '', '', '1945-01-01'),
(151, 'Thales', 'PayShield 9000', 3, '1945-01-01', '2016-12-31', '', 'BRI 1 SUDIRMAN', 0, 0, 0, '', 'B4665275908X', '', '', '', 'Y', 1, '0000-00-00 00:00:00', 0, '', '1945-01-01', '1945-01-01', '', '', '', '1945-01-01'),
(152, 'Thales', 'PayShield 9000', 3, '1945-01-01', '2016-12-31', '', 'BRI 1 SUDIRMAN', 0, 0, 0, '', 'B4665275909Y', '', '', '', 'Y', 1, '0000-00-00 00:00:00', 0, '', '1945-01-01', '1945-01-01', '', '', '', '1945-01-01'),
(153, 'Thales', 'PayShield 9000', 3, '1945-01-01', '2016-12-31', '', 'BRI 1 SUDIRMAN', 0, 0, 0, '', 'B4665276754B', '', '', '', 'Y', 1, '0000-00-00 00:00:00', 0, '', '1945-01-01', '1945-01-01', '', '', '', '1945-01-01'),
(154, 'Thales', 'PayShield 9000', 3, '1945-01-01', '2016-12-31', '', 'BRI 1 SUDIRMAN', 0, 0, 0, '', 'B4665276756D', '', '', '', 'Y', 1, '0000-00-00 00:00:00', 0, '', '1945-01-01', '1945-01-01', '', '', '', '1945-01-01'),
(155, 'Thales', 'PayShield 9000', 3, '1945-01-01', '2016-12-31', '', 'BRI 1 SUDIRMAN', 0, 0, 0, '', 'B4665276844C', '', '', '', 'Y', 1, '0000-00-00 00:00:00', 0, '', '1945-01-01', '1945-01-01', '', '', '', '1945-01-01'),
(156, 'Thales', 'PayShield 9000', 3, '1945-01-01', '2016-12-31', '', 'BRI 1 SUDIRMAN', 0, 0, 0, '', 'B4665346859A', '', '', '', 'Y', 1, '0000-00-00 00:00:00', 0, '', '1945-01-01', '1945-01-01', '', '', '', '1945-01-01'),
(157, 'Thales', 'PayShield 9000', 3, '1945-01-01', '2016-12-31', '', 'BRI 1 SUDIRMAN', 0, 0, 0, '', 'B4665346860T', '', '', '', 'Y', 1, '0000-00-00 00:00:00', 0, '', '1945-01-01', '1945-01-01', '', '', '', '1945-01-01'),
(158, 'Palo Alto ', 'PA-5020', 1, '1945-01-01', '2018-04-30', '', 'GEDUNG TEKNOLOGI INFORMASI (GTI)', 0, 0, 0, '', '0011C100668', '', '', '', 'Y', 1, '0000-00-00 00:00:00', 0, 'Pheasant', '1945-01-01', '1945-01-01', '', '', '', '1945-01-01'),
(159, 'Palo Alto ', 'PA-5020', 1, '1945-01-01', '2018-04-30', '', 'GEDUNG TEKNOLOGI INFORMASI (GTI)', 0, 0, 0, '', '0011C102887', '', '', '', 'Y', 1, '0000-00-00 00:00:00', 0, 'Starling', '1945-01-01', '1945-01-01', '', '', '', '1945-01-01'),
(160, 'Palo Alto ', 'PA-5020', 1, '1945-01-01', '2018-04-30', '', 'GEDUNG TEKNOLOGI INFORMASI (GTI)', 0, 0, 0, '', '0011C100679', '', '', '', 'Y', 1, '0000-00-00 00:00:00', 0, 'Swan', '1945-01-01', '1945-01-01', '', '', '', '1945-01-01'),
(161, 'Checkpoint', 'CPAP-IP297-D-AC-DS 002', 1, '1945-01-01', '2018-04-30', '', 'GEDUNG TEKNOLOGI INFORMASI (GTI)', 0, 0, 0, '', '93113700065', '', '', '', 'Y', 1, '0000-00-00 00:00:00', 0, 'Crow', '1945-01-01', '2018-12-31', '', '', '', '2018-12-31'),
(162, 'Trendmicro', 'Threat Discovery Appliance 6000', 1, '1945-01-01', '2018-04-30', '', 'GEDUNG TEKNOLOGI INFORMASI (GTI)', 0, 0, 0, '', '2YNTSBX', '', '', '', 'Y', 1, '0000-00-00 00:00:00', 0, 'Goose', '1945-01-01', '1945-01-01', '', '', '', '1945-01-01'),
(163, 'Juniper', 'SRX3400', 1, '1945-01-01', '2018-04-30', '', 'GEDUNG TEKNOLOGI INFORMASI (GTI)', 0, 0, 0, '', 'AA1111AA0018', '', '', '', 'Y', 1, '0000-00-00 00:00:00', 0, 'Buzzard', '1945-01-01', '2019-11-30', '', '', '', '2019-11-30'),
(164, 'Juniper', 'SRX3400', 1, '1945-01-01', '2018-04-30', '', 'GEDUNG TEKNOLOGI INFORMASI (GTI)', 0, 0, 0, '', 'AA2211AA0007', '', '', '', 'Y', 1, '0000-00-00 00:00:00', 0, 'Tinamou', '1945-01-01', '2019-11-30', '', '', '', '2019-11-30'),
(165, 'Juniper', 'ISG2000', 1, '1945-01-01', '2018-04-30', '', 'GEDUNG TEKNOLOGI INFORMASI (GTI)', 0, 0, 0, '', '0079012011000246', '', '', '', 'Y', 1, '0000-00-00 00:00:00', 0, 'Ibis', '1945-01-01', '1945-01-01', '', '', '', '1945-01-01'),
(166, 'Juniper', 'ISG2000', 1, '1945-01-01', '2018-04-30', '', 'GEDUNG TEKNOLOGI INFORMASI (GTI)', 0, 0, 0, '', '0079052011000084', '', '', '', 'Y', 1, '0000-00-00 00:00:00', 0, 'Kiwi', '1945-01-01', '1945-01-01', '', '', '', '1945-01-01'),
(167, 'Checkpoint', 'Checkpoint CPAP-SG4807', 1, '1945-01-01', '2013-05-01', '', 'GEDUNG TEKNOLOGI INFORMASI (GTI)', 0, 0, 0, '', '1218B00579', '', '', '', 'Y', 1, '0000-00-00 00:00:00', 0, 'Loki 1', '1945-01-01', '1945-01-01', '', '', '', '1945-01-01'),
(168, 'Checkpoint', 'Checkpoint CPAP-SG4807', 1, '1945-01-01', '2013-05-01', '', 'GEDUNG TEKNOLOGI INFORMASI (GTI)', 0, 0, 0, '', '1218B00633', '', '', '', 'Y', 1, '0000-00-00 00:00:00', 0, 'Loki 2', '1945-01-01', '1945-01-01', '', '', '', '1945-01-01'),
(169, 'Checkpoint', 'Checkpoint Smart-15', 1, '1945-01-01', '2013-05-01', '', 'GEDUNG TEKNOLOGI INFORMASI (GTI)', 0, 0, 0, '', 'LR201208008771', '', '', '', 'Y', 1, '0000-00-00 00:00:00', 0, 'Baldr', '2019-09-20', '1945-01-01', '', '', '', '2017-09-30'),
(170, 'Cisco', 'Sourcefire Defense Center 1500', 6, '1945-01-01', '2016-12-31', '', 'GEDUNG TEKNOLOGI INFORMASI (GTI)', 0, 0, 0, '', 'BZDW25200062-A', '', '', '', 'Y', 1, '0000-00-00 00:00:00', 0, 'Jayawijaya', '1945-01-01', '1945-01-01', '', '', '', '1945-01-01'),
(171, 'Cisco', 'Sourcefire 3D7030', 6, '1945-01-01', '2016-12-31', '', 'GEDUNG TEKNOLOGI INFORMASI (GTI)', 0, 0, 0, '', 'SFI130400130-T', '', '', '', 'Y', 1, '0000-00-00 00:00:00', 0, 'Merapi', '1945-01-01', '1945-01-01', '', '', '', '1945-01-01'),
(172, 'Thales', 'PayShield 9000', 3, '1945-01-01', '2016-12-31', '', 'GEDUNG TEKNOLOGI INFORMASI (GTI)', 0, 0, 0, '', 'B4665316417P', '', '', '', 'Y', 1, '0000-00-00 00:00:00', 0, '', '1945-01-01', '1945-01-01', '', '', '', '1945-01-01'),
(173, 'Thales', 'PayShield 9000', 3, '1945-01-01', '2016-12-31', '', 'GEDUNG TEKNOLOGI INFORMASI (GTI)', 0, 0, 0, '', 'B4665276062G', '', '', '', 'Y', 1, '0000-00-00 00:00:00', 0, '', '1945-01-01', '1945-01-01', '', '', '', '1945-01-01'),
(174, 'Thales', 'PayShield 9000', 3, '1945-01-01', '2016-12-31', '', 'GEDUNG TEKNOLOGI INFORMASI (GTI)', 0, 0, 0, '', 'B4665275599E', '', '', '', 'Y', 1, '0000-00-00 00:00:00', 0, '', '1945-01-01', '1945-01-01', '', '', '', '1945-01-01'),
(175, 'Thales', 'PayShield 9000', 3, '1945-01-01', '2016-12-31', '', 'GEDUNG TEKNOLOGI INFORMASI (GTI)', 0, 0, 0, '', 'B4665328432B', '', '', '', 'Y', 1, '0000-00-00 00:00:00', 0, '', '1945-01-01', '1945-01-01', '', '', '', '1945-01-01'),
(176, 'Thales', 'PayShield 9000', 3, '1945-01-01', '2016-12-31', '', 'GEDUNG TEKNOLOGI INFORMASI (GTI)', 0, 0, 0, '', 'B4665341070D', '', '', '', 'Y', 1, '0000-00-00 00:00:00', 0, '', '1945-01-01', '1945-01-01', '', '', '', '1945-01-01'),
(177, 'Thales ', 'PayShield 9000', 3, '1945-01-01', '2016-12-31', '', 'GEDUNG TEKNOLOGI INFORMASI (GTI)', 0, 0, 0, '', '', '', '', '', 'Y', 1, '0000-00-00 00:00:00', 0, '', '1945-01-01', '1945-01-01', '', '', '', '1945-01-01'),
(178, 'Juniper', 'Juniper NSMXpress', 1, '1945-01-01', '2016-12-31', '', 'GEDUNG TEKNOLOGI INFORMASI (GTI)', 0, 0, 0, '', '0213082011200033', '', '', '', 'N', 1, '0000-00-00 00:00:00', 0, '', '1945-01-01', '1945-01-01', '', '', '', '1945-01-01'),
(179, 'Juniper', 'Juniper SRX3400', 1, '1945-01-01', '2016-12-31', '', 'DATA CENTER RECOVERY (DRC)', 0, 0, 0, '', 'AA2909AA0026', '', '', '', 'Y', 1, '0000-00-00 00:00:00', 0, 'SRX A', '2019-11-30', '2019-11-30', '', '', '', '2019-11-30'),
(180, 'Juniper', 'Juniper SRX3400', 1, '1945-01-01', '2016-12-31', '', 'DATA CENTER RECOVERY (DRC)', 0, 0, 0, '', 'AA2909AA0022', '', '', '', 'Y', 1, '0000-00-00 00:00:00', 0, 'SRX B', '2019-11-30', '2019-11-30', '', '', '', '2019-11-30'),
(181, 'Juniper', 'Juniper NSMXpress', 1, '1945-01-01', '2016-12-31', '', 'DATA CENTER RECOVERY (DRC)', 0, 0, 0, '', '0213062009000084', '', '', '', 'Y', 1, '0000-00-00 00:00:00', 0, '', '2020-07-31', '1945-01-01', '', '', '', '2017-07-31'),
(182, 'Checkpoint', 'Check Point Power-1 5070', 1, '1945-01-01', '2016-12-31', '', 'DATA CENTER RECOVERY (DRC)', 0, 0, 0, '', 'MAC : 00:90:fb:1c:eb:16 ', '', '', '', 'Y', 1, '0000-00-00 00:00:00', 0, '', '2017-03-31', '1945-01-01', '', '', '', '2017-04-01'),
(183, 'Cisco', 'Sourcefire 3D7120', 6, '1945-01-01', '2016-12-31', '', 'DATA CENTER RECOVERY (DRC)', 0, 0, 0, '', '13011500400308-A', '', '', '', 'Y', 1, '0000-00-00 00:00:00', 0, 'Batur', '1945-01-01', '1945-01-01', '', '', '', '1945-01-01'),
(184, 'Thales', 'PayShield 9000', 3, '1945-01-01', '2016-12-31', '', 'DATA CENTER RECOVERY (DRC)', 0, 0, 0, '', 'B4665346858Z', '', '', '', 'Y', 1, '0000-00-00 00:00:00', 0, '', '1945-01-01', '1945-01-01', '', '', '', '1945-01-01'),
(185, 'Thales', 'PayShield 9000 ', 3, '1945-01-01', '1945-01-01', '', 'GEDUNG TEKNOLOGI INFORMASI (GTI)', 0, 0, 0, '', 'B4665275907W', '', 'Hardware Version Number/Build Number : 0004 | Firmware Version Number : 2.3c | Revision : 1346:0914', '', 'Y', 1, '0000-00-00 00:00:00', 0, '', '1945-01-01', '1945-01-01', '', '', '', '1945-01-01'),
(186, 'Thales', 'PayShield 9000', 3, '1945-01-01', '1945-01-01', '', 'GEDUNG TEKNOLOGI INFORMASI (GTI)', 0, 0, 0, '', 'B4665275908X', '', 'Hardware Version Number/Build Number : 0004 | Firmware Version Number : 2.3c | Revision : 1346:0914', '', 'Y', 1, '0000-00-00 00:00:00', 0, '', '1945-01-01', '1945-01-01', '', '', '', '1945-01-01'),
(187, 'Thales', 'PayShield 9000', 3, '1945-01-01', '1945-01-01', '', 'GEDUNG TEKNOLOGI INFORMASI (GTI)', 0, 0, 0, '', 'B4665275909Y', '', 'Hardware Version Number/Build Number : 0004 | Firmware Version Number : 2.3c | Revision : 1346:0914', '', 'Y', 1, '0000-00-00 00:00:00', 0, '', '1945-01-01', '1945-01-01', '', '', '', '1945-01-01'),
(188, 'Thales', 'PayShield 9000', 3, '1945-01-01', '1945-01-01', '', 'GEDUNG TEKNOLOGI INFORMASI (GTI)', 0, 0, 0, '', 'B4665276754B', '', 'Hardware Version Number/Build Number : 0004 | Firmware Version Number : 2.3c | Revision : 1346:0914', '', 'Y', 1, '0000-00-00 00:00:00', 0, '', '1945-01-01', '1945-01-01', '', '', '', '1945-01-01'),
(189, 'Thales', 'PayShield 9000', 3, '1945-01-01', '1945-01-01', '', 'GEDUNG TEKNOLOGI INFORMASI (GTI)', 0, 0, 0, '', 'B4665276756D', '', 'Hardware Version Number/Build Number : 0004 | Firmware Version Number : 2.3c | Revision : 1346:0914', '', 'Y', 1, '0000-00-00 00:00:00', 0, '', '1945-01-01', '1945-01-01', '', '', '', '1945-01-01'),
(190, 'Thales', 'PayShield 9000', 3, '1945-01-01', '1945-01-01', '', 'GEDUNG TEKNOLOGI INFORMASI (GTI)', 0, 0, 0, '', 'B4665276844C', '', 'Hardware Version Number/Build Number : 0004 | Firmware Version Number : 2.3c | Revision : 1346:0914', '', 'Y', 1, '0000-00-00 00:00:00', 0, '', '1945-01-01', '1945-01-01', '', '', '', '1945-01-01'),
(191, 'Thales', 'PayShield 9000', 3, '1945-01-01', '1945-01-01', '', 'GEDUNG TEKNOLOGI INFORMASI (GTI)', 0, 0, 0, '', 'B4665346859A', '', 'Hardware Version Number/Build Number : 0004 | Firmware Version Number : 2.3c | Revision : 1346:0914', '', 'Y', 1, '0000-00-00 00:00:00', 0, '', '1945-01-01', '1945-01-01', '', '', '', '1945-01-01'),
(192, 'Thales', 'PayShield 9000', 3, '1945-01-01', '1945-01-01', '', 'GEDUNG TEKNOLOGI INFORMASI (GTI)', 0, 0, 0, '', 'B4665346860T', '', 'Hardware Version Number/Build Number : 0004 | Firmware Version Number : 2.3c | Revision : 1346:0914', '', 'Y', 1, '0000-00-00 00:00:00', 0, '', '1945-01-01', '1945-01-01', '', '', '', '1945-01-01'),
(193, 'Thales', 'PayShield 9000', 3, '1945-01-01', '1945-01-01', '', 'GEDUNG TEKNOLOGI INFORMASI (GTI)', 0, 0, 0, '', 'B4665316417P', '', 'Hardware Version Number/Build Number : 0004 | Firmware Version Number : 2.3c | Revision : 1346:0914', '', 'Y', 1, '0000-00-00 00:00:00', 0, '', '1945-01-01', '1945-01-01', '', '', '', '1945-01-01'),
(194, 'Thales', 'PayShield 9000', 3, '1945-01-01', '1945-01-01', '', 'GEDUNG TEKNOLOGI INFORMASI (GTI)', 0, 0, 0, '', 'B4665276062G', '', 'Hardware Version Number/Build Number : 0004 | Firmware Version Number : 2.3c | Revision : 1346:0914', '', 'Y', 1, '0000-00-00 00:00:00', 0, '', '1945-01-01', '1945-01-01', '', '', '', '1945-01-01'),
(195, 'Thales', 'PayShield 9000', 3, '1945-01-01', '1945-01-01', '', 'GEDUNG TEKNOLOGI INFORMASI (GTI)', 0, 0, 0, '', 'B4665275599E', '', 'Hardware Version Number/Build Number : 0004 | Firmware Version Number : 2.3c | Revision : 1346:0914', '', 'Y', 1, '0000-00-00 00:00:00', 0, '', '1945-01-01', '1945-01-01', '', '', '', '1945-01-01'),
(196, 'Thales', 'PayShield 9000', 3, '1945-01-01', '1945-01-01', '', 'GEDUNG TEKNOLOGI INFORMASI (GTI)', 0, 0, 0, '', 'B4665328432B', '', 'Hardware Version Number/Build Number : 0004 | Firmware Version Number : 2.3c | Revision : 1346:0914', '', 'Y', 1, '0000-00-00 00:00:00', 0, '', '1945-01-01', '1945-01-01', '', '', '', '1945-01-01'),
(197, 'Thales', 'PayShield 9000', 3, '1945-01-01', '1945-01-01', '', 'GEDUNG TEKNOLOGI INFORMASI (GTI)', 0, 0, 0, '', 'B4665341070D', '', 'Hardware Version Number/Build Number : 0004 | Firmware Version Number : 2.3c | Revision : 1346:0914', '', 'Y', 1, '0000-00-00 00:00:00', 0, '', '1945-01-01', '1945-01-01', '', '', '', '1945-01-01'),
(198, 'Thales', 'PayShield 9000', 3, '1945-01-01', '1945-01-01', '', 'GEDUNG TEKNOLOGI INFORMASI (GTI)', 0, 0, 0, '', 'B4665346858Z', '', 'Hardware Version Number/Build Number : 0004 | Firmware Version Number : 2.3c | Revision : 1346:0914', '', 'Y', 1, '0000-00-00 00:00:00', 0, '', '1945-01-01', '1945-01-01', '', '', '', '1945-01-01'),
(199, '', '', 9, '1945-01-01', '1945-01-01', '', 'BRI 1 SUDIRMAN', 0, 0, 0, '', '', '', '', 'RSA ACE Server', 'Y', 1, '0000-00-00 00:00:00', 0, '', '1945-01-01', '1945-01-01', '172.22.64.2', 'Windows 2008 Server Enterprise', '', '1945-01-01'),
(200, '', '', 9, '1945-01-01', '1945-01-01', '', 'DATA CENTER RECOVERY (DRC)', 0, 0, 0, '', '', '', '', 'RSA ACE Server Backup', 'Y', 1, '0000-00-00 00:00:00', 0, '', '1945-01-01', '1945-01-01', '', 'Windows 2008 Server Enterprise', '', '1945-01-01'),
(201, '', '', 9, '1945-01-01', '1945-01-01', '', 'BRI 1 SUDIRMAN', 0, 0, 0, '', '', '', '', 'Active Directory Forest - corp.bri.co.id', 'Y', 1, '0000-00-00 00:00:00', 0, '', '1945-01-01', '1945-01-01', '131.100.55.101', 'Windows 2003 Server Enterprise', '', '1945-01-01'),
(202, '', '', 9, '1945-01-01', '1945-01-01', '', 'BRI 1 SUDIRMAN', 0, 0, 0, '', '', '', '', 'Active Directory - ho.corp.bri.co.id', 'Y', 1, '0000-00-00 00:00:00', 0, '', '1945-01-01', '1945-01-01', '131.100.55.103', 'Windows 2003 Server Enterprise', '', '1945-01-01'),
(203, '', '', 9, '1945-01-01', '1945-01-01', '', 'BRI 1 SUDIRMAN', 0, 0, 0, '', '', '', '', 'Active Directory - ho.corp.bri.co.id', 'Y', 1, '0000-00-00 00:00:00', 0, '', '1945-01-01', '1945-01-01', '131.100.55.104', 'Windows 2003 Server Enterprise', '', '1945-01-01'),
(204, '', '', 9, '1945-01-01', '1945-01-01', '', 'BRI 1 SUDIRMAN', 0, 0, 0, '', '', '', '', 'Certification Authority Server', 'Y', 1, '0000-00-00 00:00:00', 0, '', '1945-01-01', '1945-01-01', '131.100.55.115', 'Windows 2003 Server Enterprise', '', '1945-01-01'),
(205, '', '', 9, '1945-01-01', '1945-01-01', '', 'BRI 1 SUDIRMAN', 0, 0, 0, '', '', '', '', 'Cisco ACS Server for Windows', 'Y', 1, '0000-00-00 00:00:00', 0, '', '1945-01-01', '1945-01-01', '172.22.48.13', '', '', '1945-01-01'),
(206, '', '', 9, '1945-01-01', '1945-01-01', '', 'BRI 1 SUDIRMAN', 0, 0, 0, '', '', '', '', 'Brinets User Logon AddOns Service', 'Y', 1, '0000-00-00 00:00:00', 0, '', '1945-01-01', '1945-01-01', '172.21.49.130', 'Windows 2003 Server Enterprise x64', '', '1945-01-01'),
(207, '', '', 9, '1945-01-01', '1945-01-01', '', 'BRI 1 SUDIRMAN', 0, 0, 0, '', '', '', '', 'Password Management Admin', 'Y', 1, '0000-00-00 00:00:00', 0, '', '1945-01-01', '1945-01-01', '1.0.0.50', 'Windows 2003 Server Enterprise', '', '1945-01-01'),
(208, '', '', 9, '1945-01-01', '1945-01-01', '', 'BRI 1 SUDIRMAN', 0, 0, 0, '', '', '', '', 'Password Management Admin', 'Y', 1, '0000-00-00 00:00:00', 0, '', '1945-01-01', '1945-01-01', '1.0.0.51', 'Windows 2003 Server Enterprise', '', '1945-01-01'),
(209, '', '', 9, '1945-01-01', '1945-01-01', '', 'BRI 1 SUDIRMAN', 0, 0, 0, '', '', '', '', 'Password Management 3', 'Y', 1, '0000-00-00 00:00:00', 0, '', '1945-01-01', '1945-01-01', '1.0.0.64', 'Windows 2003 Server Enterprise', '', '1945-01-01'),
(210, '', '', 9, '1945-01-01', '1945-01-01', '', 'BRI 1 SUDIRMAN', 0, 0, 0, '', '', '', '', 'Password Management 4', 'Y', 1, '0000-00-00 00:00:00', 0, '', '1945-01-01', '1945-01-01', '1.0.0.65', 'Windows 2003 Server Enterprise', '', '1945-01-01'),
(211, '', '', 9, '1945-01-01', '1945-01-01', '', 'BRI 1 SUDIRMAN', 0, 0, 0, '', '', '', '', 'Password Management 5', 'Y', 1, '0000-00-00 00:00:00', 0, '', '1945-01-01', '1945-01-01', '1.0.0.66', 'Windows 2003 Server Enterprise', '', '1945-01-01'),
(212, '', '', 9, '1945-01-01', '1945-01-01', '', 'BRI 1 SUDIRMAN', 0, 0, 0, '', '', '', '', 'Password Management 6', 'Y', 1, '0000-00-00 00:00:00', 0, '', '1945-01-01', '1945-01-01', '172.21.50.55', 'Windows 2003 Server Enterprise', '', '1945-01-01'),
(213, '', '', 9, '1945-01-01', '1945-01-01', '', 'BRI 1 SUDIRMAN', 0, 0, 0, '', '', '', '', 'Password Management 7', 'Y', 1, '0000-00-00 00:00:00', 0, '', '1945-01-01', '1945-01-01', '172.21.50.56', 'Windows 2003 Server Enterprise', '', '1945-01-01'),
(214, '', '', 9, '1945-01-01', '1945-01-01', '', 'BRI 1 SUDIRMAN', 0, 0, 0, '', '', '', '', 'Password Management 8', 'Y', 1, '0000-00-00 00:00:00', 0, '', '1945-01-01', '1945-01-01', '172.21.50.57', 'Windows 2003 Server Enterprise', '', '1945-01-01'),
(215, '', '', 9, '1945-01-01', '1945-01-01', '', 'GEDUNG TEKNOLOGI INFORMASI (GTI)', 0, 0, 0, '', '', '', '', 'Password Management Database', 'Y', 1, '0000-00-00 00:00:00', 0, '', '1945-01-01', '1945-01-01', '172.18.97.35', 'Windows 2008 Server Enterprise', '', '1945-01-01'),
(216, '', '', 9, '1945-01-01', '1945-01-01', '', 'BRI 1 SUDIRMAN', 0, 0, 0, '', '', '', '', 'VM DNS Internal Primary', 'Y', 1, '0000-00-00 00:00:00', 0, '', '1945-01-01', '1945-01-01', '172.21.53.34', 'Windows 2003 Server Enterprise', '', '1945-01-01'),
(217, '', '', 9, '1945-01-01', '1945-01-01', '', 'BRI 1 SUDIRMAN', 0, 0, 0, '', '', '', '', 'VM DNS Internal Secondary', 'Y', 1, '0000-00-00 00:00:00', 0, '', '1945-01-01', '1945-01-01', '172.21.51.34', '', '', '1945-01-01'),
(218, '', '', 9, '1945-01-01', '1945-01-01', '', 'BRI 1 SUDIRMAN', 0, 0, 0, '', '', '', '', 'DNS Internal Primary', 'Y', 1, '0000-00-00 00:00:00', 0, '', '1945-01-01', '1945-01-01', '172.21.53.33', 'Ubuntu Server 10.10 x64', '', '1945-01-01'),
(219, '', '', 9, '1945-01-01', '1945-01-01', '', 'BRI 1 SUDIRMAN', 0, 0, 0, '', '', '', '', 'DNS Internal Secondary', 'Y', 1, '0000-00-00 00:00:00', 0, '', '1945-01-01', '1945-01-01', '172.21.51.33', 'Ubuntu Server 10.10 x64', '', '1945-01-01'),
(220, '', '', 9, '1945-01-01', '1945-01-01', '', 'GEDUNG TEKNOLOGI INFORMASI (GTI)', 0, 0, 0, '', '', '', '', 'DNS UKO #1', 'Y', 1, '0000-00-00 00:00:00', 0, '', '1945-01-01', '1945-01-01', '172.18.97.32', 'Ubuntu Server 12.04 LTS x64', '', '1945-01-01'),
(221, '', '', 9, '1945-01-01', '1945-01-01', '', 'GEDUNG TEKNOLOGI INFORMASI (GTI)', 0, 0, 0, '', '', '', '', 'DNS UKO #2', 'Y', 1, '0000-00-00 00:00:00', 0, '', '1945-01-01', '1945-01-01', '172.18.97.33', 'Ubuntu Server 12.04 LTS x64', '', '1945-01-01'),
(222, '', '', 9, '1945-01-01', '1945-01-01', '', 'GEDUNG TEKNOLOGI INFORMASI (GTI)', 0, 0, 0, '', '', '', '', 'DNS UKO #3', 'Y', 1, '0000-00-00 00:00:00', 0, '', '1945-01-01', '1945-01-01', '172.18.97.34', 'Ubuntu Server 12.04 LTS x64', '', '1945-01-01'),
(223, '', '', 9, '1945-01-01', '1945-01-01', '', 'DATA CENTER RECOVERY (DRC)', 0, 0, 0, '', '', '', '', 'DNS Internal Backup Primary', 'Y', 1, '0000-00-00 00:00:00', 0, '', '1945-01-01', '1945-01-01', '', 'Ubuntu Server 10.10 x64', '', '1945-01-01'),
(224, '', '', 9, '1945-01-01', '1945-01-01', '', 'DATA CENTER RECOVERY (DRC)', 0, 0, 0, '', '', '', '', 'DNS Internal Backup Secondary', 'Y', 1, '0000-00-00 00:00:00', 0, '', '1945-01-01', '1945-01-01', '', 'Ubuntu Server 10.10 x64', '', '1945-01-01'),
(225, '', '', 9, '1945-01-01', '1945-01-01', '', 'BRI 1 SUDIRMAN', 0, 0, 0, '', '', '', '', 'DNS Internet Master', 'Y', 1, '0000-00-00 00:00:00', 0, '', '1945-01-01', '1945-01-01', '172.22.48.81', 'Windows 2003 Server Enterprise', '', '1945-01-01'),
(226, '', '', 9, '1945-01-01', '1945-01-01', '', 'BRI 1 SUDIRMAN', 0, 0, 0, '', '', '', '', 'DNS Internet Slave', 'Y', 1, '0000-00-00 00:00:00', 0, '', '1945-01-01', '1945-01-01', '172.22.48.80', 'Ubuntu Server 12.04 LTS x64', '', '1945-01-01'),
(227, '', '', 9, '1945-01-01', '1945-01-01', '', 'BRI 1 SUDIRMAN', 0, 0, 0, '', '', '', '', 'BRI WS LDAP AD Authentication Service', 'Y', 1, '0000-00-00 00:00:00', 0, '', '1945-01-01', '1945-01-01', '172.21.20.22', 'Centos 6.3 x64', '', '1945-01-01'),
(228, '', '', 10, '1945-01-01', '1945-01-01', '', 'GEDUNG TEKNOLOGI INFORMASI (GTI)', 0, 0, 0, '', '', '', '', 'bri.co.id Backend', 'Y', 1, '0000-00-00 00:00:00', 0, '', '1945-01-01', '1945-01-01', '172.18.65.28', 'Ubuntu Server 12.04 LTS x64', '', '1945-01-01'),
(229, '', '', 10, '1945-01-01', '1945-01-01', '', 'GEDUNG TEKNOLOGI INFORMASI (GTI)', 0, 0, 0, '', '', '', '', 'corp.bri.co.id Backend', 'Y', 1, '0000-00-00 00:00:00', 0, '', '1945-01-01', '1945-01-01', '172.18.65.18', 'Ubuntu Server 10.04 LTS x64', '', '1945-01-01'),
(230, '', '', 10, '1945-01-01', '1945-01-01', '', 'BRI 1 SUDIRMAN', 0, 0, 0, '', '', '', '', 'bri.co.id Frontend / Internal Application Mail Gateway', 'Y', 1, '0000-00-00 00:00:00', 0, '', '1945-01-01', '1945-01-01', '131.100.55.166', 'Ubuntu Server 12.04 LTS x64', '', '1945-01-01'),
(231, '', '', 10, '1945-01-01', '1945-01-01', '', 'BRI 1 SUDIRMAN', 0, 0, 0, '', '', '', '', 'corp.bri.co.id Frontend', 'Y', 1, '0000-00-00 00:00:00', 0, '', '1945-01-01', '1945-01-01', '131.100.55.225', 'Fedora 7', '', '1945-01-01'),
(232, '', '', 10, '1945-01-01', '1945-01-01', '', 'BRI 1 SUDIRMAN', 0, 0, 0, '', '', '', '', 'External Mailer BRI', 'Y', 1, '0000-00-00 00:00:00', 0, '', '1945-01-01', '1945-01-01', '172.22.48.108', 'Ubuntu Server 12.04 LTS x64', '', '1945-01-01'),
(233, '', '', 11, '1945-01-01', '1945-01-01', '', 'GEDUNG TEKNOLOGI INFORMASI (GTI)', 0, 0, 0, '', '', '', '', 'Cacti', 'Y', 1, '0000-00-00 00:00:00', 0, '', '1945-01-01', '1945-01-01', '172.21.56.233', 'Ubuntu Server 10.04 LTS x86', '', '1945-01-01'),
(234, '', '', 11, '1945-01-01', '1945-01-01', '', 'GEDUNG TEKNOLOGI INFORMASI (GTI)', 0, 0, 0, '', '', '', '', 'Portal STI', 'Y', 1, '0000-00-00 00:00:00', 0, '', '1945-01-01', '1945-01-01', '172.21.56.236', '', '', '1945-01-01'),
(235, '', '', 11, '1945-01-01', '1945-01-01', '', 'GEDUNG TEKNOLOGI INFORMASI (GTI)', 0, 0, 0, '', '', '', '', 'Portal UKO', 'Y', 1, '0000-00-00 00:00:00', 0, '', '1945-01-01', '1945-01-01', '172.21.56.235', 'Windows 2003 Server Enterprise', '', '1945-01-01'),
(236, '', '', 11, '1945-01-01', '1945-01-01', '', 'GEDUNG TEKNOLOGI INFORMASI (GTI)', 0, 0, 0, '', '', '', '', 'Portal Fax', 'Y', 1, '0000-00-00 00:00:00', 0, '', '1945-01-01', '1945-01-01', '10.108.12.34', '', '', '1945-01-01');

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

--
-- Dumping data for table `asset_group`
--

INSERT INTO `asset_group` (`ID`, `NAME`) VALUES
(1, 'Firewall'),
(2, 'Server'),
(3, 'HSM'),
(4, 'Antispam'),
(5, 'SSL Accelelator'),
(6, 'IPS'),
(7, 'Link Balancer'),
(8, 'lain-lain'),
(9, 'Non Perangkat - Authentication'),
(10, 'Non Perangkat - Mail Server'),
(11, 'Non Perangkat - Support'),
(12, 'Non Perangkat - Management'),
(13, 'Non Perangkat - Management Proxy'),
(14, 'Non Perangkat - NTP Server'),
(15, 'Non Perangkat - Antivirus');

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

--
-- Dumping data for table `asset_procurement_maintenance`
--

INSERT INTO `asset_procurement_maintenance` (`ID`, `ASSET_ID`, `FILLING_DATE`, `DESCRIPTION`, `USER_ID`, `DOCUMENT_PATH`, `DONE_DATE`, `STATUS`) VALUES
(1, 119, '2016-04-01', 'SPK No 523 P-PBJ/PTI/05/2016', 1, '', '2016-05-01', 'DONE'),
(2, 120, '2016-04-01', 'SPK No 523 P-PBJ/PTI/05/2016', 1, '', '2016-05-01', 'DONE'),
(3, 121, '2016-04-01', 'SPK No 523 P-PBJ/PTI/05/2016', 1, '', '2016-05-01', 'DONE'),
(4, 123, '2015-09-01', 'SPK No.B.931 P-PBJ/PTI/10/2015', 1, '', '2015-10-01', 'DONE'),
(5, 124, '2015-09-01', 'SPK No.B.931 P-PBJ/PTI/10/2015', 1, '', '2015-10-01', 'DONE'),
(6, 125, '2015-09-01', 'SPK No.B.931 P-PBJ/PTI/10/2015', 1, '', '2015-10-01', 'DONE'),
(7, 126, '2015-09-01', 'SPK No.B.931 P-PBJ/PTI/10/2015', 1, '', '2015-10-01', 'DONE'),
(8, 133, '2016-02-01', 'SPK terbit Maret 2016', 1, '', '2016-03-01', 'DONE'),
(9, 134, '2016-02-01', 'SPK terbit Maret 2016', 1, '', '2016-03-01', 'DONE'),
(10, 135, '2016-02-01', 'SPK terbit Maret 2016', 1, '', '2016-03-01', 'DONE'),
(11, 136, '2016-02-01', 'SPK terbit Maret 2016', 1, '', '2016-03-01', 'DONE'),
(12, 150, '2015-11-01', 'SPK B.1227.P-PBJ/PTI/12/2015', 1, '', '2015-12-01', 'DONE'),
(13, 151, '2015-11-01', 'SPK B.1227.P-PBJ/PTI/12/2015', 1, '', '2015-12-01', 'DONE'),
(14, 152, '2015-11-01', 'SPK B.1227.P-PBJ/PTI/12/2015', 1, '', '2015-12-01', 'DONE'),
(15, 153, '2015-11-01', 'SPK B.1227.P-PBJ/PTI/12/2015', 1, '', '2015-12-01', 'DONE'),
(16, 154, '2015-11-01', 'SPK B.1227.P-PBJ/PTI/12/2015', 1, '', '2015-12-01', 'DONE'),
(17, 155, '2015-11-01', 'SPK B.1227.P-PBJ/PTI/12/2015', 1, '', '2015-12-01', 'DONE'),
(18, 156, '2015-10-01', 'SPK B.1103.P-PBJ/PTI/11/2015', 1, '', '2015-11-01', 'DONE'),
(19, 157, '2015-10-01', 'SPK B.1103.P-PBJ/PTI/11/2015', 1, '', '2015-11-01', 'DONE'),
(20, 158, '2016-04-01', 'SPK No 523 P-PBJ/PTI/05/2016', 1, '', '2016-05-01', 'DONE'),
(21, 159, '2016-04-01', 'SPK No 523 P-PBJ/PTI/05/2016', 1, '', '2016-05-01', 'DONE'),
(22, 160, '2016-04-01', 'SPK No 523 P-PBJ/PTI/05/2016', 1, '', '2016-05-01', 'DONE'),
(23, 161, '2016-04-01', 'SPK No 523 P-PBJ/PTI/05/2016', 1, '', '2016-05-01', 'DONE'),
(24, 162, '2016-04-01', 'SPK No 523 P-PBJ/PTI/05/2016', 1, '', '2016-05-01', 'DONE'),
(25, 163, '2016-04-01', 'SPK No 523 P-PBJ/PTI/05/2016', 1, '', '2016-05-01', 'DONE'),
(26, 164, '2016-04-01', 'SPK No 523 P-PBJ/PTI/05/2016', 1, '', '2016-05-01', 'DONE'),
(27, 165, '2016-04-01', 'SPK No 523 P-PBJ/PTI/05/2016', 1, '', '2016-05-01', 'DONE'),
(28, 166, '2016-04-01', 'SPK No 523 P-PBJ/PTI/05/2016', 1, '', '2016-05-01', 'DONE'),
(29, 170, '2016-02-01', 'SPK terbit Maret 2016', 1, '', '2016-03-01', 'DONE'),
(30, 171, '2016-02-01', 'SPK terbit Maret 2016', 1, '', '2016-03-01', 'DONE'),
(31, 172, '2015-11-01', 'SPK B.1227.P-PBJ/PTI/12/2015', 1, '', '2015-12-01', 'DONE'),
(32, 173, '2015-11-01', 'SPK B.1227.P-PBJ/PTI/12/2015', 1, '', '2015-12-01', 'DONE'),
(33, 174, '2015-11-01', 'SPK B.1227.P-PBJ/PTI/12/2015', 1, '', '2015-12-01', 'DONE'),
(34, 175, '2015-11-01', 'SPK B.1227.P-PBJ/PTI/12/2015', 1, '', '2015-12-01', 'DONE'),
(35, 176, '2015-10-01', 'SPK B.1103.P-PBJ/PTI/11/2015', 1, '', '2015-11-01', 'DONE'),
(36, 177, '2015-10-01', 'SPK B.1103.P-PBJ/PTI/11/2015', 1, '', '2015-11-01', 'DONE'),
(37, 178, '2015-09-01', 'SPK No.B.931 P-PBJ/PTI/10/2015', 1, '', '2015-10-01', 'DONE'),
(38, 179, '2015-09-01', 'SPK No.B.931 P-PBJ/PTI/10/2015', 1, '', '2015-10-01', 'DONE'),
(39, 180, '2015-09-01', 'SPK No.B.931 P-PBJ/PTI/10/2015', 1, '', '2015-10-01', 'DONE'),
(40, 181, '2015-09-01', 'SPK No.B.931 P-PBJ/PTI/10/2015', 1, '', '2015-10-01', 'DONE'),
(41, 182, '2015-09-01', 'SPK No.B.931 P-PBJ/PTI/10/2015', 1, '', '2015-10-01', 'DONE'),
(42, 183, '2016-02-01', 'SPK terbit Maret 2016', 1, '', '2016-03-01', 'DONE'),
(43, 184, '2015-10-01', 'SPK B.1103.P-PBJ/PTI/11/2015', 1, '', '2015-11-01', 'DONE'),
(44, 123, '2016-10-01', 'No.B.70-OPT/OMS/10/2016 \nMenunggu Approval DirOps', 1, '', '0000-00-00', 'ON PROCESS'),
(45, 124, '2016-10-01', 'No.B.70-OPT/OMS/10/2016 \nMenunggu Approval DirOps', 1, '', '0000-00-00', 'ON PROCESS'),
(46, 125, '2016-10-01', 'No.B.70-OPT/OMS/10/2016 \nMenunggu Approval DirOps', 1, '', '0000-00-00', 'ON PROCESS'),
(47, 126, '2016-10-01', 'No.B.70-OPT/OMS/10/2016 \nMenunggu Approval DirOps', 1, '', '0000-00-00', 'ON PROCESS'),
(48, 128, '2015-06-01', 'B.22ip-TSI-POT-06-2015\n\nDiganti Perangkat baru\nIP B.54-OPT/OMS/08/2016\nStatus: Menunggu Kajian dan IP Anggran di PPT', 1, '', '2016-08-01', 'CHANGE DEVICE'),
(49, 129, '2015-06-01', 'B.22ip-TSI-POT-06-2015\n\nDiganti Perangkat baru\nIP B.54-OPT/OMS/08/2016\nStatus: Menunggu Kajian dan IP Anggran di PPT', 1, '', '2016-08-01', 'CHANGE DEVICE'),
(50, 130, '2015-06-01', 'B.22ip-TSI-POT-06-2015\n\nDiganti Perangkat baru\nIP B.54-OPT/OMS/08/2016\nStatus: Menunggu Kajian dan IP Anggran di PPT', 1, '', '2016-08-01', 'CHANGE DEVICE'),
(51, 133, '2016-10-01', 'No.B.71-OPT/OMS/10/2016', 1, '', '0000-00-00', 'ON PROCESS'),
(52, 134, '2016-10-01', 'No.B.71-OPT/OMS/10/2016', 1, '', '0000-00-00', 'ON PROCESS'),
(53, 135, '2016-10-01', 'No.B.71-OPT/OMS/10/2016', 1, '', '0000-00-00', 'ON PROCESS'),
(54, 136, '2016-10-01', 'No.B.71-OPT/OMS/10/2016', 1, '', '0000-00-00', 'ON PROCESS'),
(55, 131, '2016-04-01', 'Diganti Perangkat baru\nIP B.34-OPT/OMS/04/2016\nPengadaan di PBJ: Penilaian Teknis', 1, '', '2016-04-01', 'CHANGE DEVICE'),
(56, 132, '2016-04-01', 'Diganti Perangkat baru\nIP Kembali dari DirOps akan dijelaskan segera', 1, '', '2016-04-01', 'CHANGE DEVICE'),
(57, 137, '2016-09-01', 'Diganti Perangkat baru\nIP_B.62-OPT/OMS/09/2016\nStatus: Menunggu Kajian dan IP Anggran di PPT', 1, '', '2016-09-01', 'CHANGE DEVICE'),
(58, 138, '2016-09-01', 'Diganti Perangkat baru\nIP_B.62-OPT/OMS/09/2016\nStatus: Menunggu Kajian dan IP Anggran di PPT', 1, '', '2016-09-01', 'CHANGE DEVICE'),
(59, 139, '2016-09-01', 'Diganti Perangkat baru\nIP_B.62-OPT/OMS/09/2016\nStatus: Menunggu Kajian dan IP Anggran di PPT', 1, '', '2016-09-01', 'CHANGE DEVICE'),
(60, 140, '2016-09-01', 'Diganti Perangkat baru\nIP_B.62-OPT/OMS/09/2016\nStatus: Menunggu Kajian dan IP Anggran di PPT', 1, '', '2016-09-01', 'CHANGE DEVICE'),
(61, 167, '2015-06-01', 'B.22ip-TSI-POT-06-2015\n\nDiganti Perangkat baru\nIP B.55-OPT-OMS/08/2016\nStatus: Menunggu Kajian dan IP Anggran di PPT', 1, '', '2016-08-01', 'CHANGE DEVICE'),
(62, 168, '0000-00-00', 'B.22ip-TSI-POT-06-2015\n\nDiganti Perangkat baru\nIP B.55-OPT-OMS/08/2016\nStatus: Menunggu Kajian dan IP Anggran di PPT', 1, '', '2016-08-01', 'CHANGE DEVICE'),
(63, 169, '0000-00-00', 'B.22ip-TSI-POT-06-2015\n\nDiganti Perangkat baru\nIP B.55-OPT-OMS/08/2016\nStatus: Menunggu Kajian dan IP Anggran di PPT', 1, '', '2016-08-01', 'CHANGE DEVICE'),
(64, 170, '2016-10-01', 'No.B.71-OPT/OMS/10/2016', 1, '', '0000-00-00', 'ON PROCESS'),
(65, 171, '2016-10-01', 'No.B.71-OPT/OMS/10/2016', 1, '', '0000-00-00', 'ON PROCESS'),
(66, 178, '2016-10-01', 'No.B.70-OPT/OMS/10/2016', 1, '', '0000-00-00', 'ON PROCESS'),
(67, 179, '2016-10-01', 'No.B.70-OPT/OMS/10/2016', 1, '', '0000-00-00', 'ON PROCESS'),
(68, 180, '2016-10-01', 'No.B.70-OPT/OMS/10/2016', 1, '', '0000-00-00', 'ON PROCESS'),
(69, 181, '2016-10-01', 'No.B.70-OPT/OMS/10/2016', 1, '', '0000-00-00', 'ON PROCESS'),
(70, 182, '2016-10-01', 'No.B.70-OPT/OMS/10/2016', 1, '', '0000-00-00', 'ON PROCESS'),
(71, 183, '2015-07-01', 'B.38ip-TSI-POT-07-2015', 1, '', '0000-00-00', 'ON PROCESS');

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
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', '2017-06-15 08:02:49', 'Y', 'SYS'),
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
  MODIFY `ID` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=237;
--
-- AUTO_INCREMENT for table `asset_document`
--
ALTER TABLE `asset_document`
  MODIFY `ID` mediumint(9) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `asset_group`
--
ALTER TABLE `asset_group`
  MODIFY `ID` tinyint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `asset_maintenance`
--
ALTER TABLE `asset_maintenance`
  MODIFY `ID` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `asset_port`
--
ALTER TABLE `asset_port`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `asset_procurement_maintenance`
--
ALTER TABLE `asset_procurement_maintenance`
  MODIFY `ID` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;
--
-- AUTO_INCREMENT for table `asset_troubleshoot`
--
ALTER TABLE `asset_troubleshoot`
  MODIFY `ID` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `asset_upcoming_event`
--
ALTER TABLE `asset_upcoming_event`
  MODIFY `ID` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `document`
--
ALTER TABLE `document`
  MODIFY `ID` mediumint(9) NOT NULL AUTO_INCREMENT;
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
