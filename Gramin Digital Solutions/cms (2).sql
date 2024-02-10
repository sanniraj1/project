-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jul 22, 2022 at 11:06 AM
-- Server version: 10.4.10-MariaDB
-- PHP Version: 7.4.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cms`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL,
  `updationDate` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `updationDate`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', '18-07-2019 14:18:16');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
CREATE TABLE IF NOT EXISTS `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `categoryName` varchar(255) DEFAULT NULL,
  `categoryDescription` longtext DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `categoryName`, `categoryDescription`, `creationDate`, `updationDate`) VALUES
(1, 'Road', '', '2022-05-20 05:41:29', NULL),
(2, 'Street Light', '', '2022-05-20 05:41:38', NULL),
(3, 'Electricity', '', '2022-05-20 05:41:48', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `complaintremark`
--

DROP TABLE IF EXISTS `complaintremark`;
CREATE TABLE IF NOT EXISTS `complaintremark` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `complaintNumber` int(11) NOT NULL,
  `status` varchar(255) NOT NULL,
  `remark` mediumtext NOT NULL,
  `remarkDate` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `complaintremark`
--

INSERT INTO `complaintremark` (`id`, `complaintNumber`, `status`, `remark`, `remarkDate`) VALUES
(1, 1, 'in process', 'gyjjyhlujl;', '2022-05-21 14:48:40'),
(2, 2, 'closed', 'Your problem is solved', '2022-05-23 07:37:39'),
(3, 3, 'in process', 'kjhfkjasd dsadkfhdafkb', '2022-07-21 05:56:44'),
(4, 4, 'in process', 'dklajflk', '2022-07-21 06:14:09'),
(5, 4, 'closed', 'nndsan nsab', '2022-07-21 06:15:07');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

DROP TABLE IF EXISTS `contact`;
CREATE TABLE IF NOT EXISTS `contact` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `mobile` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `message` longtext NOT NULL,
  `dom` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `name`, `mobile`, `email`, `subject`, `message`, `dom`) VALUES
(1, 'Raj Kumar', '1234567890', 'rajkumar@gmail.com', 'Nothing', 'Test Message', '2022-05-23 06:17:38');

-- --------------------------------------------------------

--
-- Table structure for table `notifi`
--

DROP TABLE IF EXISTS `notifi`;
CREATE TABLE IF NOT EXISTS `notifi` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `heading` longtext NOT NULL,
  `description` longtext NOT NULL,
  `dop` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notifi`
--

INSERT INTO `notifi` (`id`, `heading`, `description`, `dop`) VALUES
(1, 'jkhkjh', 'hjkfhkj', '2022-07-22 10:37:11');

-- --------------------------------------------------------

--
-- Table structure for table `state`
--

DROP TABLE IF EXISTS `state`;
CREATE TABLE IF NOT EXISTS `state` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `stateName` varchar(255) DEFAULT NULL,
  `stateDescription` tinytext DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `state`
--

INSERT INTO `state` (`id`, `stateName`, `stateDescription`, `postingDate`, `updationDate`) VALUES
(1, 'Jharkhand', '', '2022-05-20 05:42:04', NULL),
(2, 'Bihar', '', '2022-05-20 05:42:07', NULL),
(3, 'Punjab', '', '2022-05-20 05:42:10', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `subcategory`
--

DROP TABLE IF EXISTS `subcategory`;
CREATE TABLE IF NOT EXISTS `subcategory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `categoryid` int(11) DEFAULT NULL,
  `subcategory` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subcategory`
--

INSERT INTO `subcategory` (`id`, `categoryid`, `subcategory`, `creationDate`, `updationDate`) VALUES
(1, 1, 'abc', '2022-05-20 05:59:02', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblcomplaints`
--

DROP TABLE IF EXISTS `tblcomplaints`;
CREATE TABLE IF NOT EXISTS `tblcomplaints` (
  `complaintNumber` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) DEFAULT NULL,
  `category` int(11) DEFAULT NULL,
  `subcategory` varchar(255) DEFAULT NULL,
  `complaintType` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `noc` varchar(255) DEFAULT NULL,
  `complaintDetails` mediumtext DEFAULT NULL,
  `complaintFile` varchar(255) DEFAULT NULL,
  `complaintvideo` varchar(500) NOT NULL,
  `regDate` timestamp NULL DEFAULT current_timestamp(),
  `status` varchar(50) DEFAULT NULL,
  `lastUpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  PRIMARY KEY (`complaintNumber`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcomplaints`
--

INSERT INTO `tblcomplaints` (`complaintNumber`, `userId`, `category`, `subcategory`, `complaintType`, `state`, `noc`, `complaintDetails`, `complaintFile`, `complaintvideo`, `regDate`, `status`, `lastUpdationDate`) VALUES
(1, 1, 1, 'abc', ' Complaint', 'Jharkhand', 'Hello', 'kjhsd jksd ds', '', '', '2022-05-20 06:44:57', 'in process', '2022-05-21 14:48:40'),
(2, 1, 1, 'abc', ' Complaint', 'Jharkhand', 'dsfs', 'lkcsldj', 'bkp copy.png', '', '2022-05-20 06:48:20', 'closed', '2022-05-23 07:37:39'),
(3, 1, 1, 'abc', ' Complaint', 'Jharkhand', 'hero', 'kjjek sdk', '', 'Desert.jpg', '2022-05-20 06:51:44', 'in process', '2022-07-21 05:56:44'),
(4, 2, 1, 'abc', ' Complaint', 'Jharkhand', 'dlkjdfa bsdfhdas', 'dddshfa dfjkdshffsa kjsdf', '2cf6f50b-29e5-4a87-9dee-ddc38a91fb51.jpg', '', '2022-07-21 06:09:58', 'closed', '2022-07-21 06:15:07');

-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

DROP TABLE IF EXISTS `userlog`;
CREATE TABLE IF NOT EXISTS `userlog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `userip` binary(16) NOT NULL,
  `loginTime` timestamp NOT NULL DEFAULT current_timestamp(),
  `logout` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fullName` varchar(255) DEFAULT NULL,
  `userEmail` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `contactNo` bigint(11) DEFAULT NULL,
  `address` tinytext DEFAULT NULL,
  `State` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `pincode` int(6) DEFAULT NULL,
  `userImage` varchar(255) DEFAULT NULL,
  `regDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` timestamp NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp(),
  `status` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fullName`, `userEmail`, `password`, `contactNo`, `address`, `State`, `country`, `pincode`, `userImage`, `regDate`, `updationDate`, `status`) VALUES
(1, 'Rahul Kumar', 'rahul@gmail.com', '439ed537979d8e831561964dbbbd7413', 1234567890, NULL, NULL, NULL, NULL, '2ec5514b65bdb23768402fdc9382e502.jpg', '2022-05-20 05:38:32', '2022-05-20 05:39:12', 1),
(2, 'Shyam Sundar Pradhan', 'spwebcare@gmail.com', '5a4cd850fc787d454416aa3a47580468', 6207408069, 'Village-Baghraidih, PO-Raidih, PS-Kharsawan', 'Jharkhand', 'India', 833220, NULL, '2022-07-12 11:51:16', '2022-07-21 06:13:31', 1),
(3, 'user123', 'user123@gmail.com', 'ee11cbb19052e40b07aac0ca060c23ee', 1234567890, NULL, NULL, NULL, NULL, NULL, '2022-07-21 04:58:16', '0000-00-00 00:00:00', 1);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
