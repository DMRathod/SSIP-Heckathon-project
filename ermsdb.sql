-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Feb 22, 2019 at 08:00 AM
-- Server version: 5.7.23
-- PHP Version: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ermsdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

DROP TABLE IF EXISTS `attendance`;
CREATE TABLE IF NOT EXISTS `attendance` (
  `Eid` int(25) NOT NULL,
  `Ename` varchar(25) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `attendance`
--

INSERT INTO `attendance` (`Eid`, `Ename`, `Email`, `date`) VALUES
(13, 'Test', 'testuser@gmail.com', '2019-02-21 20:05:38'),
(13, 'Test', 'testuser@gmail.com', '2019-02-21 20:05:38'),
(14, 'utsav', 'uts@gmail.com', '2019-02-21 20:05:38'),
(13, 'Test', 'testuser@gmail.com', '2019-02-21 20:05:38'),
(13, 'Test', 'testuser@gmail.com', '2019-02-22 01:21:01'),
(14, 'utsav', 'uts@gmail.com', '2019-02-22 05:13:29'),
(14, 'utsav', 'uts@gmail.com', '2019-02-22 05:18:53'),
(14, 'utsav', 'uts@gmail.com', '2019-02-22 06:55:33'),
(14, 'utsav', 'uts@gmail.com', '2019-02-22 07:22:56');

-- --------------------------------------------------------

--
-- Table structure for table `empeducation`
--

DROP TABLE IF EXISTS `empeducation`;
CREATE TABLE IF NOT EXISTS `empeducation` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `EmpID` int(10) DEFAULT NULL,
  `CoursePG` varchar(45) DEFAULT NULL,
  `SchoolCollegePG` varchar(45) DEFAULT NULL,
  `YearPassingPG` varchar(45) DEFAULT NULL,
  `PercentagePG` varchar(4) DEFAULT NULL,
  `CourseGra` varchar(45) DEFAULT NULL,
  `SchoolCollegeGra` varchar(45) DEFAULT NULL,
  `YearPassingGra` varchar(45) DEFAULT NULL,
  `PercentageGra` varchar(4) DEFAULT NULL,
  `CourseSSC` varchar(45) DEFAULT NULL,
  `SchoolCollegeSSC` varchar(45) DEFAULT NULL,
  `YearPassingSSC` varchar(45) DEFAULT NULL,
  `PercentageSSC` varchar(4) DEFAULT NULL,
  `CourseHSC` varchar(45) DEFAULT NULL,
  `SchoolCollegeHSC` varchar(45) DEFAULT NULL,
  `YearPassingHSC` varchar(45) DEFAULT NULL,
  `PercentageHSC` varchar(4) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `empeducation`
--

INSERT INTO `empeducation` (`Id`, `EmpID`, `CoursePG`, `SchoolCollegePG`, `YearPassingPG`, `PercentagePG`, `CourseGra`, `SchoolCollegeGra`, `YearPassingGra`, `PercentageGra`, `CourseSSC`, `SchoolCollegeSSC`, `YearPassingSSC`, `PercentageSSC`, `CourseHSC`, `SchoolCollegeHSC`, `YearPassingHSC`, `PercentageHSC`) VALUES
(2, 2, 'abc', 'ghf', '2016', '89%', 'B.Tech(IT)', 'LPU', '2013', '86%', 'Science', 'DPS Senoir secondary School', '2009', '64%', 'Science', 'DPS Senoir secondary School', '2008', '90%'),
(3, 3, 'C.A.', 'CA college', '2004', '89%', 'Bachelor in charted accountant', 'CA college', '1996', '95%', 'Science', 'convent school', '1993', '70%', 'Science', 'convent school', '1991', '89%'),
(4, 7, 'MCA', 'ramnagar', '1990', '64 %', 'BCA', 'TVN', '1997', '68 %', 'Science', 'TVN', '1992', '76 %', 'Science', 'TVN', '2010', '89 %'),
(5, 12, 'NA', 'NA', 'NA', 'NA', 'B.Tech', 'VIT', '1996', '75%', 'Science', 'GHI convent school', '1993', '66%', 'Science', 'GHI convent school', '1990', '65%'),
(6, 13, 'MBAA', 'SMU', '2018', '70', 'B.Tech', 'LPU', '2015', '80', 'PCM', 'Test', '2010', '74', 'PCM', 'ABC', '2008', '85');

-- --------------------------------------------------------

--
-- Table structure for table `empexpireince`
--

DROP TABLE IF EXISTS `empexpireince`;
CREATE TABLE IF NOT EXISTS `empexpireince` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `EmpID` varchar(5) DEFAULT NULL,
  `Employer1Name` varchar(75) DEFAULT NULL,
  `Employer1Designation` varchar(50) DEFAULT NULL,
  `Employer1CTC` varchar(50) DEFAULT NULL,
  `Employer1WorkDuration` varchar(11) DEFAULT NULL,
  `Employer2Name` varchar(75) DEFAULT NULL,
  `Employer2Designation` varchar(50) DEFAULT NULL,
  `Employer2CTC` varchar(50) DEFAULT NULL,
  `Employer2WorkDuration` varchar(11) DEFAULT NULL,
  `Employer3Name` varchar(75) DEFAULT NULL,
  `Employer3Designation` varchar(50) DEFAULT NULL,
  `Employer3CTC` varchar(50) DEFAULT NULL,
  `Employer3WorkDuration` varchar(11) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `empexpireince`
--

INSERT INTO `empexpireince` (`ID`, `EmpID`, `Employer1Name`, `Employer1Designation`, `Employer1CTC`, `Employer1WorkDuration`, `Employer2Name`, `Employer2Designation`, `Employer2CTC`, `Employer2WorkDuration`, `Employer3Name`, `Employer3Designation`, `Employer3CTC`, `Employer3WorkDuration`) VALUES
(2, '4', 'abc.pvt.td', 'software tester', '20,000 p/m', '4 yrs', 'tch.pvt.td', 'software tester', '32000 p/m', '4 yrs', 'dfg.pvt.td', 'SR.software tester', '45000 p/m', '7 yrs'),
(7, '2', 'SAR pvt.ltd', 'Software Developer', '25000 p/m', '3 yrs', 'abc enterprise', 'software developer', '30000 p/m', '3 yrs', 'dgfhgfg.pt.ltd', 'software developer', '35000 p/m', '2 yrs till '),
(8, '3', 'GHA pvt.ltd', 'accountant', '25000', '5 yrs', 'HRCH pvt.ltd', 'accountant', '75000', '5 yrs', 'TCGHB pvt ltd', 'Sr.Accountant', '95000 ', '8 yrs till'),
(9, '7', 'FAG pvt.ltd', 'HR Executive', '25000 p/m', '6 yrs', 'TYS', 'HR Executive', '35000 p/m', '7 yrs', 'hirp pvt.ltd', 'HR Executive', '45000 p/m', '4 yrs till'),
(10, '12', 'dfg.pvt.ltd', 'accountant', '25000 p/m', '1 yrs', 'fghpvt.ltd', 'accountant', '30000 p/m', '3 yrs', 'fghpvt.ltd', 'accountant', '45000 p/m', '5 yrs till'),
(11, '13', 'ABC', 'Developer', '12000 ', '2 years', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA'),
(12, '14', '', '', '', '', '', '', '', '', '', '', '', ''),
(13, '14', '', '', '', '', '', '', '', '', '', '', '', ''),
(14, '14', '', '', '', '', '', '', '', '', '', '', '', ''),
(15, '14', '', '', '', '', '', '', '', '', '', '', '', ''),
(16, '14', '', '', '', '', '', '', '', '', '', '', '', ''),
(17, '14', '', '', '', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `empleave`
--

DROP TABLE IF EXISTS `empleave`;
CREATE TABLE IF NOT EXISTS `empleave` (
  `ID` int(20) NOT NULL,
  `name` varchar(40) NOT NULL,
  `reason` varchar(100) NOT NULL,
  `LeaveCount` int(20) NOT NULL DEFAULT '0',
  `approve` tinyint(1) NOT NULL DEFAULT '0',
  `reject` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `empleave`
--

INSERT INTO `empleave` (`ID`, `name`, `reason`, `LeaveCount`, `approve`, `reject`) VALUES
(14, 'utsav', 'test', 1, 1, 2),
(14, 'utsav', 'test', 1, 1, 0),
(13, 'Test', 'seek', 0, 1, 2),
(13, 'Test', 'seek', 0, 0, 0),
(9, 'Garuv', 'seek', 1, 1, 0),
(13, 'Test', 'seekk', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `employeedetail`
--

DROP TABLE IF EXISTS `employeedetail`;
CREATE TABLE IF NOT EXISTS `employeedetail` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `EmpFname` varchar(50) DEFAULT NULL,
  `EmpLName` varchar(50) NOT NULL,
  `EmpCode` varchar(50) DEFAULT NULL,
  `EmpDept` varchar(120) DEFAULT NULL,
  `EmpDesignation` varchar(120) DEFAULT NULL,
  `EmpContactNo` bigint(10) DEFAULT NULL,
  `EmpGender` enum('Male','Female') DEFAULT NULL,
  `EmpEmail` varchar(200) DEFAULT NULL,
  `EmpPassword` varchar(100) DEFAULT NULL,
  `EmpJoingdate` date DEFAULT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `EmpCode` (`EmpCode`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employeedetail`
--

INSERT INTO `employeedetail` (`ID`, `EmpFname`, `EmpLName`, `EmpCode`, `EmpDept`, `EmpDesignation`, `EmpContactNo`, `EmpGender`, `EmpEmail`, `EmpPassword`, `EmpJoingdate`, `PostingDate`) VALUES
(4, 'Sarita', 'Pandey', '2019001', 'IT', 'Software developer', 8250994210, '', 'abhi@gmail.com', '156975', '2017-06-17', '2019-02-06 06:42:47'),
(7, 'Ragunath', 'Shahye', '2019002', 'computer', 'software developer', 9945679024, NULL, 'shahye@gmail.com', '99999', '2017-06-12', '2019-02-08 07:22:40'),
(9, 'Garuv', 'Bhatia', '2019003', 'computer', 'software developer', 8796780950, NULL, 'jk@gmail.com', '12', '2017-05-13', '2019-02-11 05:12:28'),
(10, 'Khusi', 'Dev', '2019004', 'IT', 'software developer', 875678499, NULL, 'hjk@gmail.com', '1990', '2016-07-13', '2019-02-11 05:18:08'),
(11, 'SARITA', 'pANDEY', '2019005', 'IT', 'software developer', 657483989, NULL, 'PANDEY@GMAIL.COM', '1111', '2017-07-24', '2019-02-11 08:50:55'),
(12, 'Dinesh', 'Karthik', '2019006', 'IT', 'software developer', 897957897, NULL, 'dinesh@gmail.com', '8989', '2016-06-30', '2019-02-11 12:30:50'),
(13, 'Test', 'User', '2019007', 'IT', 'Software developer', 123456789, 'Male', 'testuser@gmail.com', 'Test@123', '2018-10-09', '2019-02-11 16:21:58'),
(14, 'utsav', 'akruwala', '2019008', 'computer', 'software developer', 789678956, NULL, 'uts@gmail.com', '123', '2017-05-06', '2019-02-18 10:02:24'),
(15, 'dharmraj', 'rathod', '2019009', 'computer', 'software devlopper', 679567848, NULL, 'dharm@gmail.com', '123', '2018-06-07', '2019-02-18 11:18:10'),
(17, 'dharmraj', 'rathod', '2019010', 'IT', 'software developer', 678956789, NULL, '', '', '2018-08-08', '2019-02-21 08:59:26'),
(22, 'foran', 'modi', '2019011', 'computer', 'software developer', 689985678, NULL, 'modi@gmail.com', '1234', '2017-09-09', '2019-02-22 04:31:22'),
(23, 'dhruvi', 'bikadiya', '2019012', 'IT', 'software developer', 897698567, NULL, 'dhruvi@gmail.com', '123456', '2016-08-08', '2019-02-22 04:32:07'),
(24, 'nikhat', 'shahin', '2019013', 'computer', 'software developer', 674889356, NULL, 'ns@gmail.com', '1890', '2018-07-08', '2019-02-22 04:34:15'),
(25, 'abc', 'xyz', '134', NULL, NULL, NULL, NULL, 'abc@gmail.com', '123', NULL, '2019-02-22 06:58:51');

-- --------------------------------------------------------

--
-- Table structure for table `tbladmin`
--

DROP TABLE IF EXISTS `tbladmin`;
CREATE TABLE IF NOT EXISTS `tbladmin` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `AdminName` varchar(50) DEFAULT NULL,
  `AdminuserName` varchar(50) DEFAULT NULL,
  `Password` varchar(45) DEFAULT NULL,
  `AdminRegdate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbladmin`
--

INSERT INTO `tbladmin` (`ID`, `AdminName`, `AdminuserName`, `Password`, `AdminRegdate`) VALUES
(1, 'UTSAV', 'UTSAV', 'UTSAV', '2019-02-07 16:52:45');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
