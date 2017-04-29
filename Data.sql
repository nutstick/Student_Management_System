INSERT INTO `departments` (`Dname`, `Dfaculty`) VALUES
('Computer Engineering', 'Faculty of Engineering');


INSERT INTO `courses` (`CID`, `Ctype`, `Cname`, `Ccredit`) VALUES
-- ('2110422', 'NONE', 'DB MGT SYS DESIGN', 3),
('2110318', 'NONE', 'DIS SYS ESS', 1),
('2110332', 'NONE', 'SYS ANAL DESIGN', 3),
('2110316', 'NONE', 'PROG LANG PRIN', 3);


INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
-- (1, 1, 'Admin', 'admin@admin.com', 'users/default.png', '$2y$10$uv5MPvXtQmY6xMjq2Gnl2uognr3MrjCdbXgxFwZQs7H7G5uWrwKjO', 'beHPtMdBFNareZBVRXW8pC67Ht7euQEoRkpDnRGnEooVJ3Xvlf5KNXvgxBtX', '2017-04-17 09:01:12', '2017-04-17 09:01:12'),
(2, 2, 'Twitter', 'user1@user.com', 'users/default.png', '$2y$10$uv5MPvXtQmY6xMjq2Gnl2uognr3MrjCdbXgxFwZQs7H7G5uWrwKjO', 'beHPtMdBFNareZBVRXW8pC67Ht7euQEoRkpDnRGnEooVJ3Xvlf5KNXvgxBtX', '2017-04-17 09:01:12', '2017-04-17 09:01:12'),
(3, 2, 'Manager', 'user2@user.com', 'users/default.png', '$2y$10$uv5MPvXtQmY6xMjq2Gnl2uognr3MrjCdbXgxFwZQs7H7G5uWrwKjO', 'beHPtMdBFNareZBVRXW8pC67Ht7euQEoRkpDnRGnEooVJ3Xvlf5KNXvgxBtX', '2017-04-17 09:01:12', '2017-04-17 09:01:12'),
(4, 2, 'TeacherB', 'user3@user.com', 'users/default.png', '$2y$10$uv5MPvXtQmY6xMjq2Gnl2uognr3MrjCdbXgxFwZQs7H7G5uWrwKjO', 'beHPtMdBFNareZBVRXW8pC67Ht7euQEoRkpDnRGnEooVJ3Xvlf5KNXvgxBtX', '2017-04-17 09:01:12', '2017-04-17 09:01:12');

INSERT INTO `teachers` (`id`, `user`, `Dname`) VALUES
(1, 2, 'Computer Engineering'),
(2, 4, 'Computer Engineering');

INSERT INTO `students` (`SID`, `SFname`, `SLname`, `Sgender`, `Sbirth`, `Snation`, `Senroll_date`, `Sedu_stat`, `Shealth_stat`, `Sbehav_score`, `Sdetail`) VALUES
-- ('5732541985', 'BB', 'L', 'female', '1996-02-13', 'th', '2014-12-31', 'PRO', 'HEALTHY', 0, NULL),
('5731234521', 'John', 'Doe', 'male', '1996-04-11', 'th', '2014-12-31', 'NONE', 'HEALTHY', 0, NULL),
('5731337521', 'Jane', 'Doe', 'female', '1996-01-01', 'th', '2014-12-31', 'PRO', 'HEALTHY', 0, NULL),
('5738008135', 'InsertFirstNameHere', 'InsertLastNameHere', 'male', '1995-09-12', 'th', '2014-12-31', 'NONE', 'HEALTHY', 0, NULL),
('5735432121', 'Lorem', 'Ipsum', 'female', '1995-11-11', 'th', '2014-12-31', 'NONE', 'HEALTHY', 0, NULL),
('5731234621', 'Minato', 'Namikaze', 'male', '1996-03-23', 'th', '2014-12-31', 'NONE', 'HEALTHY', 0, NULL),
('5731234721', 'Ming', 'Lee', 'female', '1995-10-04', 'th', '2014-12-31', 'NONE', 'HEALTHY', 0, NULL),
('5731234821', 'Kappa', 'Keepo', 'male', '1996-01-26', 'th', '2014-12-31', 'NONE', 'HEALTHY', 0, NULL),
('5731234921', 'Kurisu', 'Makise', 'female', '1995-12-15', 'th', '2014-12-31', 'NONE', 'HEALTHY', 0, NULL);




INSERT INTO `sections` (`id`, `CID`, `SeNum`, `SeTerm`, `SeYear`) VALUES
(1, '2110422', 1, 2, 2017),
(2, '2110318', 1, 2, 2017),
(3, '2110332', 1, 2, 2017),
(4, '2110316', 1, 2, 2017),
(5, '2110318', 2, 2, 2017),
(6, '2110318', 33, 2, 2017),
(7, '2110332', 2, 2, 2017),
(8, '2110332', 33, 2, 2017);


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
(20, '5731234921', 4, 4, 96);


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
(6, '5731234921', 3);

INSERT INTO `student_compete_in_competition` (`id`, `SID`, `competition`) VALUES
(1, '5731337521', 1),
(2, '5731337521', 2),
(3, '5731234921', 2),
(4, '5731234721', 1),
(5, '5735432121', 1),
(6, '5731234621', 2),
(7, '5731234521', 1);

INSERT INTO `behavior_records` (`SID`, `Bpunisher`, `Bdeduct_score`, `Bdetail`) VALUES
('5731234521', 2, 5, 'Wearing workshop jacket.'),
('5731234721', 2, 10, 'Wearing Workshop jacket and high heels.');

INSERT INTO `course_syllabus_of_departments` (`CID`, `Dname`) VALUES
('2110422', 'Computer Engineering'),
('2110318', 'Computer Engineering'),
('2110332', 'Computer Engineering'),
('2110316', 'Computer Engineering');