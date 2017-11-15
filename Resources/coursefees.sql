INSERT INTO lookuptable(`Type`, `ParentCode`, `Code`, `Description`) VALUES ('Course', 'NT', 'EUC', 'End User Computing (NQF L3)')
--Technical support (NQF L4)
INSERT INTO lookuptable(`Type`, `ParentCode`, `Code`, `Description`) VALUES ('Course', 'NT', 'ECD', 'Early Childhood Development (L4)')
INSERT INTO lookuptable(`Type`, `ParentCode`, `Code`, `Description`) VALUES ('Course', 'NT', 'WRO', 'Wholesale & Retail Operations (L3)')
INSERT INTO lookuptable(`Type`, `ParentCode`, `Code`, `Description`) VALUES ('Course', 'NT', 'SD', 'Software Development (L4 / L5)')
INSERT INTO lookuptable(`Type`, `ParentCode`, `Code`, `Description`) VALUES ('Course', 'NT', 'LD', 'Leadership Development (NQF L4)')
INSERT INTO lookuptable(`Type`, `ParentCode`, `Code`, `Description`) VALUES ('Course', 'NT', 'SE', 'Sound Engineering (NQF L5)')
INSERT INTO lookuptable(`Type`, `ParentCode`, `Code`, `Description`) VALUES ('Course', 'NT', 'ADV', 'Advertising (NQF L5)')


INSERT INTO coursefees (CourseCode, Payment, Registration, Certification, Duration, Timestamp) VALUES ('EUC', '570', '1200', '1000', 11, CURRENT_TIMESTAMP);
INSERT INTO coursefees (CourseCode, Payment, Registration, Certification, Duration, Timestamp) VALUES ('TS', '650', '1200', '1000', 11, CURRENT_TIMESTAMP);
INSERT INTO coursefees (CourseCode, Payment, Registration, Certification, Duration, Timestamp) VALUES ('ECD', '570', '1200', '1000', 11, CURRENT_TIMESTAMP);
INSERT INTO coursefees (CourseCode, Payment, Registration, Certification, Duration, Timestamp) VALUES ('WRO', '640', '1000', '1000', 11, CURRENT_TIMESTAMP);
INSERT INTO coursefees (CourseCode, Payment, Registration, Certification, Duration, Timestamp) VALUES ('SD', '650', '1200', '1000', 11, CURRENT_TIMESTAMP);
INSERT INTO coursefees (CourseCode, Payment, Registration, Certification, Duration, Timestamp) VALUES ('LD', '910', '1500', '1000', 11, CURRENT_TIMESTAMP);
INSERT INTO coursefees (CourseCode, Payment, Registration, Certification, Duration, Timestamp) VALUES ('SE', '910', '1500', '1000', 11, CURRENT_TIMESTAMP);
INSERT INTO coursefees (CourseCode, Payment, Registration, Certification, Duration, Timestamp) VALUES ('ADV', '910', '1500', '1000', 11, CURRENT_TIMESTAMP);


