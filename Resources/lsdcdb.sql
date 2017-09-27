 Server: localhost  -   Database: lsdcdb
 
-- phpMyAdmin SQL Dump
-- version 3.2.0.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Sep 27, 2017 at 02:16 AM
-- Server version: 5.1.36
-- PHP Version: 5.3.0

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

--
-- Database: `lsdcdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `lookuptable`
--

CREATE TABLE IF NOT EXISTS `lookuptable` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Type` varchar(10) NOT NULL,
  `Code` varchar(10) NOT NULL,
  `Description` varchar(50) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=41 ;

--
-- Dumping data for table `lookuptable`
--

INSERT INTO `lookuptable` (`ID`, `Type`, `Code`, `Description`) VALUES
(1, 'Course', 'AD', 'Office Administration'),
(2, 'Course', 'SD', 'Systems Development'),
(3, 'Cert', 'NT', 'National Certificate'),
(4, 'Cert', 'CT', 'Certificate'),
(5, 'Course', 'TS', 'Technical Support'),
(6, 'Course', 'FO', 'Forklift Operation'),
(7, 'Course', 'KO', 'Krane Operator'),
(8, 'Course', 'REC', 'Receptionist'),
(9, 'Course', 'CL', 'Computer Literacy'),
(10, 'Course', 'CC', 'Call Centre'),
(11, 'Course', 'WR', 'Wholesale and Retail'),
(12, 'Course', 'OT', 'Other'),
(13, 'Ach', 'P', 'Pass'),
(14, 'Ach', 'F', 'Fail'),
(15, 'Modules', 'IC', 'Introduction to Computers'),
(16, 'Modules', 'ME', 'Maintaining Office Equipment'),
(17, 'Modules', 'CN', 'Principles of Computer Networks'),
(18, 'Modules', 'CA', 'Computer Architecture'),
(19, 'Modules', 'PRF', 'Present Information In Report Formats'),
(20, 'Modules', 'WPST', 'Write/Presents/Sign Texts'),
(21, 'Modules', 'ICT', 'ICT Risks'),
(22, 'Modules', 'LC', 'Language & Communication in Occupational Learning'),
(23, 'Modules', 'OSC', 'Oral & Sign Communication'),
(24, 'Modules', 'PR', 'Presentation'),
(25, 'Modules', 'SP', 'Spreadsheet'),
(26, 'Modules', 'WP', 'Word Processing'),
(27, 'SAQA', '7785', '7785'),
(28, 'SAQA', '117925', '117925'),
(29, 'SAQA', '13931', '13931'),
(30, 'SAQA', '14913', '14913'),
(31, 'SAQA', '14917', '14917'),
(32, 'SAQA', '110023', '110023'),
(33, 'SAQA', '116945', '116945'),
(34, 'SAQA', '117926', '117926'),
(35, 'SAQA', '119467', '119467'),
(36, 'SAQA', '119472', '119472'),
(37, 'SAQA', '116930', '116930'),
(38, 'SAQA', '116943', '116943'),
(39, 'SAQA', '116942', '116942'),
(40, 'SAQA', '119078', '119078');

-- --------------------------------------------------------

--
-- Table structure for table `studentpersonalinformation`
--

CREATE TABLE IF NOT EXISTS `studentpersonalinformation` (
  `studentpersonalinformationID` int(11) NOT NULL,
  `StudentFirstName` varchar(100) NOT NULL,
  `StudentMiddleName` varchar(100) NOT NULL,
  `StudentLastName` varchar(100) NOT NULL,
  `StudentIDno` varchar(13) NOT NULL,
  `StudentAge` int(3) NOT NULL,
  `StudentOccupation` varchar(30) NOT NULL,
  `StudentGender` varchar(6) NOT NULL,
  `StudentHomeAddress` varchar(40) NOT NULL,
  `StudentsContactDetails` bigint(10) NOT NULL,
  PRIMARY KEY (`studentpersonalinformationID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `studentpersonalinformation`
--

INSERT INTO `studentpersonalinformation` (`studentpersonalinformationID`, `StudentFirstName`, `StudentMiddleName`, `StudentLastName`, `StudentIDno`, `StudentAge`, `StudentOccupation`, `StudentGender`, `StudentHomeAddress`, `StudentsContactDetails`) VALUES
(1, 'Don', 'John', 'Laka', '9901012223334', 18, 'Unemployed', 'Male', 'Plot 613 Bosplaas West', 815265598);

-- --------------------------------------------------------

--
-- Table structure for table `studentsassessmentmarks`
--

CREATE TABLE IF NOT EXISTS `studentsassessmentmarks` (
  `studentassessmentmarksID` mediumint(9) NOT NULL AUTO_INCREMENT,
  `StudentName` varchar(100) NOT NULL,
  `StudentIDno` varchar(15) NOT NULL,
  `CourseName` varchar(30) NOT NULL,
  `CertificateType` varchar(30) NOT NULL,
  `ModuleName` varchar(40) NOT NULL,
  `SAQAID` varchar(10) NOT NULL,
  `PercentageAchieved` decimal(5,2) NOT NULL,
  `Achievement` varchar(4) NOT NULL,
  PRIMARY KEY (`studentassessmentmarksID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1025 ;

--
-- Dumping data for table `studentsassessmentmarks`
--

INSERT INTO `studentsassessmentmarks` (`studentassessmentmarksID`, `StudentName`, `StudentIDno`, `CourseName`, `CertificateType`, `ModuleName`, `SAQAID`, `PercentageAchieved`, `Achievement`) VALUES
(1022, 'Boipelo Maluleka', '9501234567891', 'AD', 'NT', 'IC', '117925', '88.00', ''),
(1021, 'Leeuw Maluleka', '9004021548957', 'System Development', 'National Certificate', 'Architecture', '13931', '69.00', 'Pass'),
(1023, 'Moeti Malesela', '8701234567890', 'TS', 'NT', 'WP', '116942', '83.00', 'P'),
(1024, 'lebohang More', '990123456789', 'SD', 'NT', 'IC', '117925', '40.00', 'F');

-- --------------------------------------------------------

--
-- Table structure for table `studentsonarrears`
--

CREATE TABLE IF NOT EXISTS `studentsonarrears` (
  `StudentsOnArrearsID` int(11) NOT NULL,
  `StudentName` varchar(100) NOT NULL,
  `StudentIDno` varchar(15) NOT NULL,
  `CourseName` varchar(30) NOT NULL,
  `CertificateType` varchar(30) NOT NULL,
  `TotalCourseFee` varchar(40) NOT NULL,
  `CourseDuration` varchar(10) NOT NULL,
  `MonthsBehind` decimal(5,2) NOT NULL,
  `InterestPercentage` decimal(5,0) NOT NULL,
  `AmountDue` varchar(20) NOT NULL,
  PRIMARY KEY (`StudentsOnArrearsID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `studentsonarrears`
--


