-- phpMyAdmin SQL Dump
-- version 3.2.0.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Aug 29, 2017 at 04:16 AM
-- Server version: 5.1.36
-- PHP Version: 5.3.0

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

--
-- Database: `lsdcdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `studentsassessmentmarks`
--

CREATE TABLE IF NOT EXISTS `studentsassessmentmarks` (
  `StudentAssessmentMarksID` int NOT NULL AUTO_INCREMENT,
  `StudentName` varchar(100) NOT NULL,
  `StudentIDno` varchar(15) NOT NULL,
  `CourseName` varchar(30) NOT NULL,
  `CertificateType` varchar(30) NOT NULL,
  `ModuleName` varchar(40) NOT NULL,
  `SAQAID` varchar(10) NOT NULL,
  `PercentageAchieved` decimal(5,2) NOT NULL,
  `Achivement` varchar(4) NOT NULL,
  PRIMARY KEY (`StudentAssessmentMarksID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
--
-- Dumping data for table `studentsassessmentmarks`
--

