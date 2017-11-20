
CREATE TABLE IF NOT EXISTS `coursefees` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `CourseCode` varchar(10) NOT NULL,
  `Payment` decimal(6,2) NOT NULL,
  `Registration` decimal(6,2) DEFAULT NULL,
  `Certification` decimal(6,2) DEFAULT NULL,
  `CarryCard` decimal(6,2) DEFAULT NULL,
  `Duration` int(11) NOT NULL,
  `Timestamp` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`)
) ;

--
-- Dumping data for table `coursefees`
--
DELETE FROM coursefees;
INSERT INTO `coursefees` (`ID`, `CourseCode`, `Payment`, `Registration`, `Certification`, `CarryCard`, `Duration`, `Timestamp`) VALUES
(4, 'ECD', '570.00', '1200.00', '1000.00', NULL, 11, '2017-11-15 18:28:13'),
(5, 'EUC', '570.00', '1200.00', '1000.00', NULL, 11, '2017-11-15 18:37:33'),
(6, 'TS', '650.00', '1200.00', '1000.00', NULL, 11, '2017-11-15 18:37:33'),
(7, 'ECD', '570.00', '1200.00', '1000.00', NULL, 11, '2017-11-15 18:37:34'),
(8, 'WRO', '640.00', '1000.00', '1000.00', NULL, 11, '2017-11-15 18:37:34'),
(9, 'SD', '650.00', '1200.00', '1000.00', NULL, 11, '2017-11-15 18:37:34'),
(10, 'LD', '910.00', '1500.00', '1000.00', NULL, 11, '2017-11-15 18:37:34'),
(11, 'SE', '910.00', '1500.00', '1000.00', NULL, 11, '2017-11-15 18:37:34'),
(12, 'ADV', '910.00', '1500.00', '1000.00', NULL, 11, '2017-11-15 18:37:34');

-- --------------------------------------------------------

--
-- Table structure for table `lookuptable`
--

CREATE TABLE IF NOT EXISTS `lookuptable` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Type` varchar(10) NOT NULL,
  `ParentCode` varchar(10) DEFAULT NULL,
  `Code` varchar(10) NOT NULL,
  `Description` varchar(50) NOT NULL,
  `Timestamp` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`)
);

--
-- Dumping data for table `lookuptable`
--
DELETE FROM lookuptable;
INSERT INTO `lookuptable` (`ID`, `Type`, `ParentCode`, `Code`, `Description`, `Timestamp`) VALUES
(1, 'Course', NULL, 'AD', 'Office Administration', '2017-11-15 17:56:04'),
(2, 'Course', NULL, 'SYD', 'Systems Development', '2017-11-15 17:56:04'),
(3, 'Cert', NULL, 'NT', 'National Certificate', '2017-11-15 17:56:04'),
(4, 'Cert', NULL, 'CT', 'Certificate', '2017-11-15 17:56:04'),
(5, 'Course', 'NT', 'TS', 'Technical Support', '2017-11-15 17:56:04'),
(6, 'Course', NULL, 'FO', 'Forklift Operation', '2017-11-15 17:56:04'),
(7, 'Course', NULL, 'KO', 'Krane Operator', '2017-11-15 17:56:04'),
(8, 'Course', NULL, 'REC', 'Receptionist', '2017-11-15 17:56:04'),
(9, 'Course', NULL, 'CL', 'Computer Literacy', '2017-11-15 17:56:04'),
(10, 'Course', NULL, 'CC', 'Call Centre', '2017-11-15 17:56:04'),
(11, 'Course', NULL, 'WR', 'Wholesale and Retail', '2017-11-15 17:56:04'),
(12, 'Course', NULL, 'OT', 'Other', '2017-11-15 17:56:04'),
(13, 'Ach', NULL, 'P', 'Pass', '2017-11-15 17:56:04'),
(14, 'Ach', NULL, 'F', 'Fail', '2017-11-15 17:56:04'),
(15, 'Modules', NULL, 'IC', 'Introduction to Computers', '2017-11-15 17:56:04'),
(16, 'Modules', NULL, 'ME', 'Maintaining Office Equipment', '2017-11-15 17:56:04'),
(17, 'Modules', NULL, 'CN', 'Principles of Computer Networks', '2017-11-15 17:56:04'),
(18, 'Modules', NULL, 'CA', 'Computer Architecture', '2017-11-15 17:56:04'),
(19, 'Modules', NULL, 'PRF', 'Present Information In Report Formats', '2017-11-15 17:56:04'),
(20, 'Modules', NULL, 'WPST', 'Write/Presents/Sign Texts', '2017-11-15 17:56:04'),
(21, 'Modules', NULL, 'ICT', 'ICT Risks', '2017-11-15 17:56:04'),
(22, 'Modules', NULL, 'LC', 'Language & Communication in Occupational Learning', '2017-11-15 17:56:04'),
(23, 'Modules', NULL, 'OSC', 'Oral & Sign Communication', '2017-11-15 17:56:04'),
(24, 'Modules', NULL, 'PR', 'Presentation', '2017-11-15 17:56:04'),
(25, 'Modules', NULL, 'SP', 'Spreadsheet', '2017-11-15 17:56:04'),
(26, 'Modules', NULL, 'WP', 'Word Processing', '2017-11-15 17:56:04'),
(27, 'SAQA', NULL, '7785', '7785', '2017-11-15 17:56:04'),
(28, 'SAQA', NULL, '117925', '117925', '2017-11-15 17:56:04'),
(29, 'SAQA', NULL, '13931', '13931', '2017-11-15 17:56:04'),
(30, 'SAQA', NULL, '14913', '14913', '2017-11-15 17:56:04'),
(31, 'SAQA', NULL, '14917', '14917', '2017-11-15 17:56:04'),
(32, 'SAQA', NULL, '110023', '110023', '2017-11-15 17:56:04'),
(33, 'SAQA', NULL, '116945', '116945', '2017-11-15 17:56:04'),
(34, 'SAQA', NULL, '117926', '117926', '2017-11-15 17:56:04'),
(35, 'SAQA', NULL, '119467', '119467', '2017-11-15 17:56:04'),
(36, 'SAQA', NULL, '119472', '119472', '2017-11-15 17:56:04'),
(37, 'SAQA', NULL, '116930', '116930', '2017-11-15 17:56:04'),
(38, 'SAQA', NULL, '116943', '116943', '2017-11-15 17:56:04'),
(39, 'SAQA', NULL, '116942', '116942', '2017-11-15 17:56:04'),
(40, 'SAQA', NULL, '119078', '119078', '2017-11-15 17:56:04'),
(41, 'Cert', NULL, 'ST', 'Short Course', '2017-11-15 17:56:04'),
(43, 'Course', 'NT', 'EUC', 'End User Computing (NQF L3)', '2017-11-15 17:56:04'),
(44, 'Course', 'NT', 'ECD', 'Early Childhood Development (L4)', '2017-11-15 17:56:04'),
(45, 'Course', 'NT', 'WRO', 'Wholesale & Retail Operations (L3)', '2017-11-15 17:56:04'),
(46, 'Course', 'NT', 'SWD', 'Software Development (L4 / L5)', '2017-11-15 17:56:04'),
(47, 'Course', 'NT', 'LD', 'Leadership Development (NQF L4)', '2017-11-15 17:56:04'),
(48, 'Course', 'NT', 'SE', 'Sound Engineering (NQF L5)', '2017-11-15 17:56:04'),
(49, 'Course', 'NT', 'ADV', 'Advertising (NQF L5)', '2017-11-15 17:56:04');

-- --------------------------------------------------------

--
-- Table structure for table `members`
--

CREATE TABLE IF NOT EXISTS `members` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(256) NOT NULL,
  `nick_name` varchar(256) NOT NULL,
  `email` varchar(256) NOT NULL,
  `password` varchar(256) NOT NULL,
  `Privileges` int(11) NOT NULL,
  `Timestamp` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
);

--
-- Dumping data for table `members`
--
-- --------------------------------------------------------

--
-- Table structure for table `privileges`
--

CREATE TABLE IF NOT EXISTS `privileges` (
  `ID` int(11) NOT NULL,
  `Description` varchar(50) NOT NULL DEFAULT 'None'
);

--
-- Dumping data for table `privileges`
--
DELETE FROM `privileges`;
INSERT INTO `privileges` (`ID`, `Description`) VALUES
(0, 'None'),
(1, 'Admin'),
(2, 'Guest');

-- --------------------------------------------------------

--
-- Table structure for table `registrations`
--

CREATE TABLE IF NOT EXISTS `registrations` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `CourseCode` varchar(10) NOT NULL,
  `MemberName` varchar(256) NOT NULL,
  `Timestamp` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`)
);

--
-- Dumping data for table `registrations`
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
);

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
  `Timestamp` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`studentassessmentmarksID`)
);

--
-- Dumping data for table `studentsassessmentmarks`
--

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
);

