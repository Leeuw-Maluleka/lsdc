
-- phpMyAdmin SQL Dump
-- version 3.2.0.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Sep 19, 2017 at 01:07 AM
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
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `lookuptable`
--


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
  `Achivement` varchar(4) NOT NULL,
  PRIMARY KEY (`studentassessmentmarksID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1022 ;

--
-- Dumping data for table `studentsassessmentmarks`
--

INSERT INTO `studentsassessmentmarks` (`studentassessmentmarksID`, `StudentName`, `StudentIDno`, `CourseName`, `CertificateType`, `ModuleName`, `SAQAID`, `PercentageAchieved`, `Achivement`) VALUES
(1021, 'Leeuw Maluleka', '9004021548957', 'System Development', 'National Certificate', 'Architecture', '13931', '69.00', 'Pass');

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


