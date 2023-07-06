-- phpMyAdmin SQL Dump
-- version 2.11.6
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 21, 2022 at 04:55 PM
-- Server version: 5.0.51
-- PHP Version: 5.2.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `elms`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL auto_increment,
  `UserName` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `updationDate` timestamp NOT NULL default '0000-00-00 00:00:00' on update CURRENT_TIMESTAMP,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `UserName`, `Password`, `updationDate`) VALUES
(1, 'admin', 'ffafb6be360dd2b02c37270900f48757', '2022-05-21 21:41:22');

-- --------------------------------------------------------

--
-- Table structure for table `tbldepartments`
--

CREATE TABLE `tbldepartments` (
  `id` int(11) NOT NULL auto_increment,
  `DepartmentName` varchar(150) default NULL,
  `DepartmentShortName` varchar(100) default NULL,
  `DepartmentCode` varchar(50) default NULL,
  `CreationDate` timestamp NULL default CURRENT_TIMESTAMP,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `tbldepartments`
--

INSERT INTO `tbldepartments` (`id`, `DepartmentName`, `DepartmentShortName`, `DepartmentCode`, `CreationDate`) VALUES
(1, 'Human Resource', 'HR', 'HR001', '2021-04-01 12:46:25'),
(2, 'Information Technology', 'IT', 'IT001', '2021-04-01 12:49:37'),
(3, 'Operations', 'OP', 'OP1', '2021-04-03 02:58:56'),
(5, 'Marketing', 'Mkt', 'Mkt001', '2022-05-21 21:43:03');

-- --------------------------------------------------------

--
-- Table structure for table `tblemployees`
--

CREATE TABLE `tblemployees` (
  `id` int(11) NOT NULL auto_increment,
  `EmpId` varchar(100) NOT NULL,
  `FirstName` varchar(150) default NULL,
  `LastName` varchar(150) default NULL,
  `EmailId` varchar(200) default NULL,
  `Password` varchar(180) default NULL,
  `Gender` varchar(100) default NULL,
  `Dob` varchar(100) default NULL,
  `Department` varchar(255) default NULL,
  `Address` varchar(255) default NULL,
  `City` varchar(200) default NULL,
  `Country` varchar(150) default NULL,
  `Phonenumber` char(11) default NULL,
  `Status` int(1) default NULL,
  `RegDate` timestamp NULL default CURRENT_TIMESTAMP,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `tblemployees`
--

INSERT INTO `tblemployees` (`id`, `EmpId`, `FirstName`, `LastName`, `EmailId`, `Password`, `Gender`, `Dob`, `Department`, `Address`, `City`, `Country`, `Phonenumber`, `Status`, `RegDate`) VALUES
(1, 'EMP10806121', 'Ashish', 'kumar', 'ashishlucky.iit@gmail.com', 'ffafb6be360dd2b02c37270900f48757', 'Male', '8 January, 1990', 'Human Resource', 'Patna', 'Patna', 'India', '8797399787', 1, '2021-04-01 16:59:59'),
(2, 'DEMP2132', 'Amit', 'kumar', 'test@gmail.com', 'f925916e2754e5e03f75dd58a5733251', 'Male', '3 February, 1990', 'Information Technology', 'New Delhi', 'Delhi', 'India', '8587944255', 1, '2021-03-10 19:10:02');

-- --------------------------------------------------------

--
-- Table structure for table `tblleaves`
--

CREATE TABLE `tblleaves` (
  `id` int(11) NOT NULL auto_increment,
  `LeaveType` varchar(110) default NULL,
  `ToDate` varchar(120) default NULL,
  `FromDate` varchar(120) default NULL,
  `Description` mediumtext,
  `PostingDate` timestamp NULL default CURRENT_TIMESTAMP,
  `AdminRemark` mediumtext,
  `AdminRemarkDate` varchar(120) default NULL,
  `Status` int(1) default NULL,
  `IsRead` int(1) default NULL,
  `empid` int(11) default NULL,
  PRIMARY KEY  (`id`),
  KEY `UserEmail` (`empid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `tblleaves`
--

INSERT INTO `tblleaves` (`id`, `LeaveType`, `ToDate`, `FromDate`, `Description`, `PostingDate`, `AdminRemark`, `AdminRemarkDate`, `Status`, `IsRead`, `empid`) VALUES
(11, 'Medical Leave test', '23/05/2022', '10/05/2022', 'Due to fever', '2022-05-21 21:54:05', 'take rest', '2022-05-21 21:55:46 ', 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblleavetype`
--

CREATE TABLE `tblleavetype` (
  `id` int(11) NOT NULL auto_increment,
  `LeaveType` varchar(200) default NULL,
  `Description` mediumtext,
  `CreationDate` timestamp NOT NULL default CURRENT_TIMESTAMP,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `tblleavetype`
--

INSERT INTO `tblleavetype` (`id`, `LeaveType`, `Description`, `CreationDate`) VALUES
(1, 'Casual Leave', 'Casual Leave ', '2021-04-01 17:37:56'),
(2, 'Medical Leave test', 'Medical Leave  test', '2021-04-06 18:46:09'),
(3, 'Restricted Holiday(RH)', 'Restricted Holiday(RH)', '2021-04-06 18:46:38');
