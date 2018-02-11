DROP TABLE IF EXISTS `coursefees` ;

CREATE TABLE IF NOT EXISTS `coursefees` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `CourseCode` varchar(10) NOT NULL,
  `Payment` decimal(6,2) NOT NULL,
  `Registration` decimal(6,2) DEFAULT NULL,
  `Certification` decimal(6,2) DEFAULT NULL,
  `CarryCard` decimal(6,2) DEFAULT NULL,
  `Discount` decimal(6,2) DEFAULT NULL,
  `Duration` int(11) NOT NULL,
  `Timestamp` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=52 ;

--
-- Dumping data for table `coursefees`
--

INSERT INTO `coursefees` (`ID`, `CourseCode`, `Payment`, `Registration`, `Certification`, `CarryCard`, `Discount`, `Duration`, `Timestamp`) VALUES
(4, 'ECD', '910.00', '1000.00', '1000.00', NULL, '-10.00', 11, '2017-11-15 18:28:13'),
(5, 'EUC', '570.00', '1200.00', '1000.00', NULL, NULL, 11, '2017-11-15 18:37:33'),
(6, 'TS', '650.00', '1200.00', '1000.00', NULL, NULL, 11, '2017-11-15 18:37:33'),
(8, 'WRO', '640.00', '1000.00', '1000.00', NULL, NULL, 11, '2017-11-15 18:37:34'),
(9, 'SWD', '650.00', '1200.00', '1000.00', NULL, NULL, 11, '2017-11-15 18:37:34'),
(10, 'LD', '910.00', '1500.00', '1000.00', NULL, '-10.00', 11, '2017-11-15 18:37:34'),
(11, 'SE', '910.00', '1500.00', '1000.00', NULL, '-10.00', 11, '2017-11-15 18:37:34'),
(12, 'ADV', '910.00', '1500.00', '1000.00', NULL, '-10.00', 11, '2017-11-15 18:37:34'),
(13, 'TT', '100.00', '200.00', '300.00', '10.00', NULL, 12, '0000-00-00 00:00:00'),
(15, 'ITE', '570.00', '250.00', '570.00', NULL, NULL, 10, '2017-11-22 21:54:10'),
(16, 'OA', '550.00', '250.00', '550.00', NULL, NULL, 10, '2017-11-22 21:54:10'),
(17, 'RC', '590.00', '250.00', '590.00', NULL, NULL, 6, '2017-11-22 22:00:45'),
(18, 'ACL', '580.00', '250.00', '580.00', NULL, NULL, 6, '2017-11-22 22:00:45'),
(19, 'RO', '500.00', '250.00', '500.00', NULL, NULL, 10, '2017-11-22 22:00:45'),
(20, 'CC', '520.00', '250.00', '520.00', NULL, NULL, 6, '2017-11-22 22:00:45'),
(21, 'STS', '650.00', '250.00', '650.00', NULL, NULL, 10, '2017-11-22 22:00:46'),
(22, 'EYD', '1000.00', '1000.00', '500.00', NULL, NULL, 6, '2017-11-22 22:00:46'),
(23, 'LED', '1000.00', '1000.00', '500.00', NULL, NULL, 6, '2017-11-22 22:00:46'),
(24, 'SG', '1000.00', '1000.00', '500.00', NULL, NULL, 6, '2017-11-22 22:00:46'),
(25, 'CRC', '520.00', '250.00', '520.00', NULL, NULL, 6, '2017-11-28 21:32:54'),
(28, 'ICL', '2550.00', NULL, NULL, NULL, NULL, 2, '2017-11-28 22:38:39'),
(29, 'DC', '2500.00', NULL, NULL, NULL, NULL, 2, '2017-11-28 22:38:39'),
(30, 'PM', '0.00', '1775.00', '1775.00', NULL, NULL, 1, '2017-11-28 22:38:39'),
(31, 'PR', '0.00', '1850.00', '1825.00', NULL, '-25.00', 2, '2017-11-28 22:38:39'),
(32, 'SCC', '2650.00', NULL, NULL, NULL, NULL, 2, '2017-11-28 22:38:39'),
(33, 'CA', '2700.00', NULL, NULL, NULL, NULL, 2, '2017-11-28 22:38:40'),
(34, 'DH', '2700.00', NULL, NULL, NULL, NULL, 1, '2017-11-28 22:38:40'),
(35, 'BS', '3500.00', NULL, NULL, NULL, NULL, 2, '2017-11-28 22:38:40'),
(47, 'FK', '0.00', '1200.00', '250.00', '70.00', NULL, 1, '2017-11-29 21:27:48'),
(48, 'FW', '0.00', '500.00', '250.00', '70.00', '-250.00', 1, '2017-11-29 21:27:48'),
(49, 'FF', '0.00', '0.00', '700.00', NULL, '250.00', 1, '2017-11-29 21:27:49'),
(50, 'WB', '0.00', '0.00', '2500.00', NULL, NULL, 2, '2017-11-29 21:27:49'),
(51, 'WBA', '0.00', '0.00', '5000.00', NULL, NULL, 4, '2017-11-29 21:27:49');

-- --------------------------------------------------------

--
-- Stand-in structure for view `coursefeesview`
--
CREATE TABLE IF NOT EXISTS `coursefeesview` (
`CourseCode` varchar(10)
,`Description` varchar(50)
,`Payment` decimal(6,2)
,`Registration` decimal(6,2)
,`Certification` decimal(6,2)
,`CarryCard` decimal(6,2)
,`Duration` int(11)
,`Discount` decimal(6,2)
,`TotalFees` decimal(20,2)
);
-- --------------------------------------------------------

--
-- Stand-in structure for view `coursehierachyfeesview`
--
CREATE TABLE IF NOT EXISTS `coursehierachyfeesview` (
`Type` varchar(10)
,`ParentCode` varchar(10)
,`ParentDesc` varchar(50)
,`Code` varchar(10)
,`Description` varchar(50)
,`Payment` decimal(6,2)
,`Registration` decimal(6,2)
,`Certification` decimal(6,2)
,`CarryCard` decimal(6,2)
,`Duration` int(11)
,`Discount` decimal(6,2)
,`TotalFees` decimal(20,2)
);
-- --------------------------------------------------------

--
-- Stand-in structure for view `courseregistrations`
--
CREATE TABLE IF NOT EXISTS `courseregistrations` (
`name` varchar(256)
,`CourseCode` varchar(10)
,`Description` varchar(50)
,`Payment` decimal(6,2)
,`Registration` decimal(6,2)
,`Certification` decimal(6,2)
,`CarryCard` decimal(6,2)
,`Duration` int(11)
,`TotalFees` decimal(20,2)
,`TimeStamp` datetime
);
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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=81 ;

--
-- Dumping data for table `lookuptable`
--

INSERT INTO `lookuptable` (`ID`, `Type`, `ParentCode`, `Code`, `Description`, `Timestamp`) VALUES
(3, 'Cert', NULL, 'NT', 'National Certificate', '2017-11-15 17:56:04'),
(5, 'Course', 'NT', 'TS', 'Technical Support', '2017-11-15 17:56:04'),
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
(49, 'Course', 'NT', 'ADV', 'Advertising (NQF L5)', '2017-11-15 17:56:04'),
(50, 'Cert', NULL, 'SP', 'Skills Programmes', '2017-11-21 20:09:45'),
(51, 'Course', 'SP', 'ITE', 'IT: End-User- Computing', '2017-11-21 20:23:37'),
(52, 'Course', 'SP', 'OA', 'Office Administration', '2017-11-21 20:23:37'),
(53, 'Course', 'SP', 'RC', 'Receptionist', '2017-11-21 20:23:37'),
(54, 'Course', 'SP', 'ACL', 'Advanced Computer Literacy', '2017-11-21 20:23:37'),
(55, 'Course', 'SP', 'RO', 'Retail Operations', '2017-11-21 20:23:37'),
(56, 'Course', 'SP', 'CRC', 'Credit controller', '2017-11-21 20:23:37'),
(57, 'Course', 'SP', 'STS', 'Technical Support', '2017-11-21 20:23:38'),
(58, 'Course', 'SP', 'EYD', 'Early Childhood Development', '2017-11-21 20:23:38'),
(59, 'Course', 'SP', 'LED', 'Leadership Development', '2017-11-21 20:23:38'),
(60, 'Course', 'SP', 'SG', 'Sound Engineering', '2017-11-21 20:23:38'),
(66, 'Course', 'ST', 'ICL', 'Intermediate computer literacy', '2017-11-28 22:38:39'),
(67, 'Course', 'ST', 'DC', 'Data Capturing', '2017-11-28 22:38:39'),
(68, 'Course', 'ST', 'PM', 'Project Management', '2017-11-28 22:38:39'),
(69, 'Course', 'ST', 'PR', 'PC Repairs', '2017-11-28 22:38:39'),
(70, 'Course', 'ST', 'SCC', 'Call Centre', '2017-11-28 22:38:39'),
(71, 'Course', 'ST', 'CA', 'Cash Controller/Cashier', '2017-11-28 22:38:39'),
(72, 'Course', 'ST', 'DH', 'Dispatcher/ Health and Safety', '2017-11-28 22:38:40'),
(73, 'Course', 'ST', 'BS', 'Business skills', '2017-11-28 22:38:40'),
(74, 'Cert', NULL, 'CS', 'On Special', '2017-11-29 09:10:02'),
(76, 'Course', 'CS', 'FK', 'Forklift Operator (NQF L3)', '2017-11-29 20:41:26'),
(77, 'Course', 'CS', 'FW', 'Forklift (License Renewal)', '2017-11-29 20:41:26'),
(78, 'Course', 'CS', 'FF', 'Fire Fighter (NQF L3)', '2017-11-29 20:41:26'),
(79, 'Course', 'CS', 'WB', 'Web Design Introduction', '2017-11-29 20:41:26'),
(80, 'Course', 'CS', 'WBA', 'Web Design Advanced', '2017-11-29 20:41:26');

-- --------------------------------------------------------

--
-- Stand-in structure for view `lookuptableview`
--
CREATE TABLE IF NOT EXISTS `lookuptableview` (
`Type` varchar(10)
,`ParentCode` varchar(10)
,`ParentDesc` varchar(50)
,`Code` varchar(10)
,`Description` varchar(50)
);
-- --------------------------------------------------------

-- --------------------------------------------------------

--
-- Table structure for table `privileges`
--

-- --------------------------------------------------------

-- --------------------------------------------------------

--
-- Table structure for table `studentpersonalinformation`
--

--
-- Structure for view `coursefeesview`
--
DROP TABLE IF EXISTS `coursefeesview`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `coursefeesview` AS select `c`.`CourseCode` AS `CourseCode`,`l`.`Description` AS `Description`,`c`.`Payment` AS `Payment`,`c`.`Registration` AS `Registration`,`c`.`Certification` AS `Certification`,`c`.`CarryCard` AS `CarryCard`,`c`.`Duration` AS `Duration`,`c`.`Discount` AS `Discount`,(((((`c`.`Payment` * `c`.`Duration`) + `c`.`Certification`) + `c`.`Registration`) + coalesce(`c`.`CarryCard`,0)) + coalesce(`c`.`Discount`,0)) AS `TotalFees` from (`coursefees` `c` join `lookuptable` `l` on(((`c`.`CourseCode` = `l`.`Code`) and (`l`.`Type` = 'Course'))));

-- --------------------------------------------------------

--
-- Structure for view `coursehierachyfeesview`
--
DROP TABLE IF EXISTS `coursehierachyfeesview`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `coursehierachyfeesview` AS select `l`.`Type` AS `Type`,`l`.`Code` AS `ParentCode`,`l`.`Description` AS `ParentDesc`,`l1`.`Code` AS `Code`,`l1`.`Description` AS `Description`,`c`.`Payment` AS `Payment`,`c`.`Registration` AS `Registration`,`c`.`Certification` AS `Certification`,`c`.`CarryCard` AS `CarryCard`,`c`.`Duration` AS `Duration`,`c`.`Discount` AS `Discount`,(((((`c`.`Payment` * `c`.`Duration`) + `c`.`Certification`) + `c`.`Registration`) + coalesce(`c`.`CarryCard`,0)) + coalesce(`c`.`Discount`,0)) AS `TotalFees` from ((`lookuptable` `l` left join `lookuptable` `l1` on((`l1`.`ParentCode` = `l`.`Code`))) join `coursefees` `c` on((`c`.`CourseCode` = `l1`.`Code`)));

-- --------------------------------------------------------

--
-- Structure for view `courseregistrations`
--
DROP TABLE IF EXISTS `courseregistrations`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `courseregistrations` AS select `m`.`name` AS `name`,`c`.`CourseCode` AS `CourseCode`,`l`.`Description` AS `Description`,`c`.`Payment` AS `Payment`,`c`.`Registration` AS `Registration`,`c`.`Certification` AS `Certification`,`c`.`CarryCard` AS `CarryCard`,`c`.`Duration` AS `Duration`,(((((`c`.`Payment` * `c`.`Duration`) + `c`.`Certification`) + `c`.`Registration`) + coalesce(`c`.`CarryCard`,0)) + coalesce(`c`.`Discount`,0)) AS `TotalFees`,`r`.`Timestamp` AS `TimeStamp` from (((`coursefees` `c` join `lookuptable` `l` on(((`c`.`CourseCode` = `l`.`Code`) and (`l`.`Type` = 'Course')))) join `registrations` `r` on((`r`.`CourseCode` = `c`.`CourseCode`))) join `members` `m` on((`m`.`name` = `r`.`MemberName`)));

-- --------------------------------------------------------

--
-- Structure for view `lookuptableview`
--
DROP TABLE IF EXISTS `lookuptableview`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `lookuptableview` AS select `l`.`Type` AS `Type`,`l`.`Code` AS `ParentCode`,`l`.`Description` AS `ParentDesc`,`l1`.`Code` AS `Code`,`l1`.`Description` AS `Description` from (`lookuptable` `l` left join `lookuptable` `l1` on((`l1`.`ParentCode` = `l`.`Code`)));

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
