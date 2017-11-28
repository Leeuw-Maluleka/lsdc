
INSERT INTO lookuptable (Type, ParentCode, Code, Description, Timestamp) 
VALUES ('Course', 'ST', 'ICL', 'Intermediate computer literacy', NOW());

INSERT INTO coursefees (CourseCode, Payment, Duration)
VALUES ('ICL', 2550, 1.5);
-- --------------------------------------------------------------------------------

INSERT INTO lookuptable (Type, ParentCode, Code, Description, Timestamp) 
VALUES ('Course', 'ST', 'DC', 'Data Capturing', NOW());

INSERT INTO coursefees (CourseCode, Payment, Duration)
VALUES ('DC', 2500, 1.5);
-- --------------------------------------------------------------------------------

INSERT INTO lookuptable (Type, ParentCode, Code, Description, Timestamp) 
VALUES ('Course', 'ST', 'PM', 'Project Management', NOW());

INSERT INTO coursefees (CourseCode, Payment, Registration, Duration)
VALUES ('PM', 1775, 1775, 0.75);
-- --------------------------------------------------------------------------------

INSERT INTO lookuptable (Type, ParentCode, Code, Description, Timestamp) 
VALUES ('Course', 'ST', 'PR', 'PC Repairs', NOW());

INSERT INTO coursefees (CourseCode, Payment, Registration, Duration)
VALUES ('PR', 1850, 1825, 1.75);
-- --------------------------------------------------------------------------------

INSERT INTO lookuptable (Type, ParentCode, Code, Description, Timestamp) 
VALUES ('Course', 'ST', 'SCC', 'Call Centre', NOW());

INSERT INTO coursefees (CourseCode, Payment, Duration)
VALUES ('SCC', 2650, 2);
-- --------------------------------------------------------------------------------

INSERT INTO lookuptable (Type, ParentCode, Code, Description, Timestamp) 
VALUES ('Course', 'ST', 'CA', 'Cash Controller/Cashier', NOW());

INSERT INTO coursefees (CourseCode, Payment, Duration)
VALUES ('CA', 2700, 1.5);
-- --------------------------------------------------------------------------------

INSERT INTO lookuptable (Type, ParentCode, Code, Description, Timestamp) 
VALUES ('Course', 'ST', 'DH', 'Dispatcher/ Health and Safety', NOW());

INSERT INTO coursefees (CourseCode, Payment, Duration)
VALUES ('DH', 2700, 0.25);
-- --------------------------------------------------------------------------------

INSERT INTO lookuptable (Type, ParentCode, Code, Description, Timestamp) 
VALUES ('Course', 'ST', 'BS', 'Business skills', NOW());

INSERT INTO coursefees (CourseCode, Payment, Duration)
VALUES ('BS', 3500, 1.5);
