INSERT INTO `departments` (`Dname`, `Dfaculty`) VALUES
('Computer Engineering', 'Faculty of Engineering');

INSERT INTO `users` (`id`, `role_id`, `fname`, `email`, `avatar`, `password`, `remember_token`, `created_at`, `updated_at`, `lname`) VALUES
(1, 1, 'Admin', 'admin@admin.com', 'users/default.png', '$2y$10$uv5MPvXtQmY6xMjq2Gnl2uognr3MrjCdbXgxFwZQs7H7G5uWrwKjO', 'beHPtMdBFNareZBVRXW8pC67Ht7euQEoRkpDnRGnEooVJ3Xvlf5KNXvgxBtX', '2017-04-17 09:01:12', '2017-04-17 09:01:12', ''),
(2, 3, 'Teacher', 'user1@user.com', 'users/default.png', '$2y$10$ryGMOJwDBNmAqeZjyzaICOzfPnVY.yTZ/k9XPRpuGvks7QtRxIxq.', 'fCi6qV7GuQf5Mmxc3PaVzwXOC6ZZdFakh3UVIIKfzeb288RR61e473km2lNS', '2017-04-17 02:01:12', '2017-05-01 02:48:05', 'A'),
(3, 2, 'Manager', 'user2@user.com', 'users/default.png', '$2y$10$uv5MPvXtQmY6xMjq2Gnl2uognr3MrjCdbXgxFwZQs7H7G5uWrwKjO', 'beHPtMdBFNareZBVRXW8pC67Ht7euQEoRkpDnRGnEooVJ3Xvlf5KNXvgxBtX', '2017-04-17 02:01:12', '2017-04-17 02:01:12', ''),
(4, 2, 'TeacherB', 'user3@user.com', 'users/default.png', '$2y$10$uv5MPvXtQmY6xMjq2Gnl2uognr3MrjCdbXgxFwZQs7H7G5uWrwKjO', 'beHPtMdBFNareZBVRXW8pC67Ht7euQEoRkpDnRGnEooVJ3Xvlf5KNXvgxBtX', '2017-04-17 02:01:12', '2017-04-17 02:01:12', '');

INSERT INTO `courses` (`CID`, `Ctype`, `Cname`, `Ccredit`) VALUES
('2110422', 'NONE', 'DB MGT SYS DESIGN', 3),
('2110318', 'NONE', 'DIS SYS ESS', 1),
('2110332', 'NONE', 'SYS ANAL DESIGN', 3),
('2110316', 'NONE', 'PROG LANG PRIN', 3);

INSERT INTO `teachers` (`id`, `user`) VALUES
(1, 2),
(2, 4);

INSERT INTO `teachers_in_dept` (`id`, `Dname`) VALUES
(1, 'Computer Engineering'),
(2, 'Computer Engineering');

INSERT INTO `managers` (`id`, `user`) VALUES
(1, 3);

INSERT INTO `managers_of_dept` (`id`, `Dname`) VALUES
(1, 'Computer Engineering');

INSERT INTO `students` (`SID`, `SFname`, `SLname`, `Sgender`, `Sbirth`, `Snation`, `Senroll_date`, `Sedu_stat`, `Shealth_stat`, `Sbehav_score`, `Sdetail`, `TID`, `Dname`, `Sgrad_stat`) VALUES
('5731234521', 'John', 'Doe', 'male', '1996-04-11', 'th', '2014-12-31', 'NONE', 'HEALTHY', 0, NULL, 1, 'Computer Engineering', 'STUDYING'),
('5731337521', 'Jane', 'Doe', 'female', '1996-01-01', 'th', '2014-12-31', 'PRO', 'HEALTHY', 0, NULL, 2, 'Computer Engineering', 'STUDYING'),
('5738008135', 'InsertFirstNameHere', 'InsertLastNameHere', 'male', '1995-09-12', 'th', '2014-12-31', 'NONE', 'HEALTHY', 0, NULL, 1, 'Computer Engineering', 'STUDYING'),
('5735432121', 'Lorem', 'Ipsum', 'female', '1995-11-11', 'th', '2014-12-31', 'NONE', 'HEALTHY', 0, NULL, 1, 'Computer Engineering', 'STUDYING'),
('5731234621', 'Minato', 'Namikaze', 'male', '1996-03-23', 'th', '2014-12-31', 'NONE', 'HEALTHY', 0, NULL, 2, 'Computer Engineering', 'STUDYING'),
('5731234721', 'Ming', 'Lee', 'female', '1995-10-04', 'th', '2014-12-31', 'NONE', 'HEALTHY', 0, NULL, 1, 'Computer Engineering', 'STUDYING'),
('5731234821', 'Kappa', 'Keepo', 'male', '1996-01-26', 'th', '2014-12-31', 'NONE', 'HEALTHY', 0, NULL, 2, 'Computer Engineering', 'STUDYING'),
('5731234921', 'Kurisu', 'Makise', 'female', '1995-12-15', 'th', '2014-12-31', 'NONE', 'HEALTHY', 0, NULL, 2, 'Computer Engineering', 'STUDYING'),

('5631234521', 'Kapparino', 'Keeporino', 'male', '1994-06-23', 'th', '2013-12-31', 'NONE', 'HEALTHY', 0, NULL, 2, 'Computer Engineering', 'STUDYING'),
('5631234621', 'SumTing', 'Wong', 'female', '1995-02-21', 'th', '2013-12-31', 'NONE', 'HEALTHY', 0, NULL, 2, 'Computer Engineering', 'STUDYING'),
('5631234721', 'Skipperino', 'Kripperino', 'male', '1994-09-26', 'th', '2013-12-31', 'NONE', 'HEALTHY', 0, NULL, 2, 'Computer Engineering', 'STUDYING'),
('5631234821', 'NoName', 'NoLastName', 'male', '1994-12-01', 'th', '2013-12-31', 'NONE', 'HEALTHY', 0, NULL, 2, 'Computer Engineering', 'STUDYING'),
('5631234921', 'Maho', 'Hiyajo', 'female', '1995-01-01', 'th', '2013-12-31', 'NONE', 'HEALTHY', 0, NULL, 2, 'Computer Engineering', 'STUDYING'),

('5831234521', 'Jeanne', 'Doe', 'female', '1996-05-26', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 2, 'Computer Engineering', 'STUDYING'),
('5831234621', 'Janet', 'Doe', 'female', '1996-04-22', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 2, 'Computer Engineering', 'STUDYING'),
('5831234721', 'Johnny', 'Doe', 'male', '1997-01-26', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 2, 'Computer Engineering', 'STUDYING'),
('5831234821', 'Kappa', 'Keepo', 'male', '1996-07-05', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 2, 'Computer Engineering', 'STUDYING')
;


--
-- Dumping data for table `sections`
--

INSERT INTO `sections` (`id`, `CID`, `SeNum`, `SeTerm`, `SeYear`, `SeNote`) VALUES
(4, '2110316', 1, 2, 2017, NULL),
(2, '2110318', 1, 2, 2017, NULL),
(5, '2110318', 2, 2, 2017, NULL),
(6, '2110318', 33, 2, 2017, NULL),
(3, '2110332', 1, 2, 2017, NULL),
(7, '2110332', 2, 2, 2017, NULL),
(8, '2110332', 33, 2, 2017, NULL),
(1, '2110422', 1, 2, 2017, NULL);


INSERT INTO `student_enroll_in_section` (`id`, `SID`, `section_id`, `grade`, `score`) VALUES
(1, '5732541985', 1, 2.5, 65),
(2, '5732541985', 2, 1.5, 56),
(3, '5732541985', 3, 2.5, 67),
(4, '5732541985', 4, 2, 61),
(5, '5731234521', 2, 4, 90),
(6, '5731234521', 5, 4, 84),
(7, '5738008135', 7, 2, 62),
(8, '5738008135', 6, 3.5, 75),
(9, '5731337521', 5, 2.5, 65),
(10, '5731337521', 2, 3.5, 78),
(11, '5735432121', 3, 4, 80),
(12, '5735432121', 4, 4, 81),
(13, '5731234621', 6, 3, 72),
(14, '5731234621', 8, 3, 74),
(15, '5731234721', 2, 4, 92),
(16, '5731234721', 1, 3.5, 77),
(17, '5731234821', 2, 1.5, 57),
(18, '5731234821', 5, 2.5, 68),
(19, '5731234921', 3, 4, 99),
(20, '5731234921', 4, 4, 96),
(41, '5731234921', 1, 4, 99),
(42, '5731234921', 2, 4, 99),

(21, '5631234521', 1, 3, 70),
(22, '5631234521', 4, 2, 63),
(23, '5631234521', 5, 2.5, 68),
(24, '5631234621', 2, 3.5, 77),
(25, '5631234621', 8, 4, 80),
(26, '5631234721', 1, 2, 61),
(27, '5631234721', 2, 3, 72),
(28, '5631234821', 6, 3, 72),
(29, '5631234821', 8, 4, 88),
(30, '5631234921', 1, 4, 91),
(31, '5631234921', 2, 4, 92),
(32, '5631234921', 3, 4, 93),
(33, '5631234921', 4, 4, 90),

(34, '5831234521', 1, 2, 63),
(35, '5831234521', 2, 2, 62),
(36, '5831234621', 6, 2, 61),
(37, '5831234621', 8, 2.5, 67),
(38, '5831234721', 6, 3, 70),
(39, '5831234821', 7, 2.5, 66),
(40, '5831234821', 5, 3.5, 77)

;


INSERT INTO `teach_sections` (`TID`, `CID`, `SeNum`) VALUES
(1, '2110422', 1),
(1, '2110318', 1),
(1, '2110332', 1),
(1, '2110316', 1),
(2, '2110318', 2),
(2, '2110318', 33),
(2, '2110332', 2),
(2, '2110332', 33);

INSERT INTO `activities` (`Aname`, `Ayear`, `Adetail`, `Aadvisor`,`id`) VALUES
('Bit Byte Camp 14',2017,'Student camp to help high-school student in other provinces',1,1),
('Visanu Camp',2017,'Camp for freshy to make relation between friend and senior',2,2),
('Teacher venerated Day',2017,'Students regard in teacher\'s favour',4,3);

INSERT INTO `competitions`  (`Coname`, `Coyear`, `Coaward`, `Cadvisor`,`id`) VALUES
('ACM-ICPC Regional Contest',2016,'ACM-ICPC Thailand Regional 2016',2,1),
('NSC',2017,'Invention or program award for help people',4,2);

INSERT INTO `student_particippate_in_activity` (`id`, `SID`, `activity`) VALUES
(1, '5731234521', 1),
(2, '5731234521', 2),
(3, '5732541985', 3),
(4, '5732541985', 1),
(5, '5738008135', 2),
(6, '5731234921', 3),
(7, '5731234921', 2),
(8, '5631234921', 3),
(9, '5631234921', 2),
(10, '5831234521', 2),
(11, '5831234621', 2),
(12, '5831234721', 2),
(13, '5831234821', 2);

INSERT INTO `student_compete_in_competition` (`id`, `SID`, `competition`) VALUES
(1, '5731337521', 1),
(2, '5731337521', 2),
(3, '5731234921', 2),
(4, '5731234721', 1),
(5, '5735432121', 1),
(6, '5731234621', 2),
(7, '5731234521', 1),
(8, '5631234921', 2),
(9, '5631234521', 1),
(10, '5631234621', 1),
(11, '5631234721', 1),
(12, '5631234821', 1),
(13, '5831234921', 1);

INSERT INTO `behavior_records` (`SID`, `Bpunisher`, `Bdeduct_score`, `Bdetail`) VALUES
('5731234521', 2, 5, 'Wearing workshop jacket.'),
('5731234721', 2, 10, 'Wearing Workshop jacket and high heels.');

INSERT INTO `course_syllabus_of_departments` (`CID`, `Dname`) VALUES
('2110422', 'Computer Engineering'),
('2110318', 'Computer Engineering'),
('2110332', 'Computer Engineering'),
('2110316', 'Computer Engineering');