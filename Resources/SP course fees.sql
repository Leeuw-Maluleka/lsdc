INSERT INTO lookuptable (Type, Code, Description, Timestamp) VALUES ('Cert', 'CS', 'On Special', Now());
-- ---------------------------------------------------------------------------------------------------------
INSERT INTO lookuptable (Type, ParentCode, Code, Description, Timestamp) 
VALUES ('Course', 'CS', 'FK', 'Forklift Operator (NQF L3)', NOW());

INSERT INTO lookuptable (Type, ParentCode, Code, Description, Timestamp) 
VALUES ('Course', 'CS', 'FW', 'Forkift (License Renewal)', NOW());

INSERT INTO lookuptable (Type, ParentCode, Code, Description, Timestamp) 
VALUES ('Course', 'CS', 'FF', 'Fire Fighter (NQF L3)', NOW());

INSERT INTO lookuptable (Type, ParentCode, Code, Description, Timestamp) 
VALUES ('Course', 'CS', 'WB', 'Web Design Introduction', NOW());

INSERT INTO lookuptable (Type, ParentCode, Code, Description, Timestamp) 
VALUES ('Course', 'CS', 'WBA', 'Web Design Advanced', NOW());

Courses on Special	Total Fee	Training	Certification	Carry Card	Duration
					Assessment & Moderation				
										
-- Forklift Operator (NQF L3)	R	1520	R	1200	R	250	R	70	5	Days
INSERT INTO coursefees (CourseCode, Payment, Certification, CarryCard, Duration, Timestamp) 
VALUES ('FK', 1200, 250, 70, 0, NOW());

-- Forklift (License Renewal)	R	570	R	500	R	250	R	70	1	Days
INSERT INTO coursefees (CourseCode, Payment, Certification, CarryCard, Duration, Timestamp) 
VALUES ('FW', 500, 250, 70, 0, NOW());

-- Fire Fighter (NQF L3)	R	950	R	700					5	Days
INSERT INTO coursefees (CourseCode, Payment, Duration, Timestamp) 
VALUES ('FF', 700, 0, NOW());

-- Web Design Introduction	R	2500							8	Weeks
INSERT INTO coursefees (CourseCode, Payment, Duration, Timestamp) 
VALUES ('WB', 2500, 2, NOW());

-- Web Design Advanced	R	5000							4 Months
INSERT INTO coursefees (CourseCode, Payment, Duration, Timestamp) 
VALUES ('WBA', 5000, 4, NOW()); -- ------------------------------------
