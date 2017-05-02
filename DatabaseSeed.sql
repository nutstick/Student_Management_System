-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 02, 2017 at 02:55 AM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 7.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbproject`
--

-- --------------------------------------------------------

--
-- Table structure for table `activities`
--

CREATE TABLE `activities` (
  `Aname` varchar(171) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Ayear` year(4) NOT NULL,
  `Adetail` varchar(171) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Aadvisor` int(11) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `activities`
--

INSERT INTO `activities` (`Aname`, `Ayear`, `Adetail`, `Aadvisor`, `id`) VALUES
('Bit Byte Camp 14', 2017, 'Student camp to help high-school student in other provinces', 1, 1),
('Teacher venerated Day', 2017, 'Students regard in teacher\'s favour', 4, 3),
('Visanu Camp', 2017, 'Camp for freshy to make relation between friend and senior', 2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `behavior_records`
--

CREATE TABLE `behavior_records` (
  `Btime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `SID` char(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Bpunisher` varchar(171) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Bdeduct_score` int(11) NOT NULL,
  `Bdetail` varchar(171) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `behavior_records`
--

INSERT INTO `behavior_records` (`Btime`, `SID`, `Bpunisher`, `Bdeduct_score`, `Bdetail`) VALUES
('2017-05-01 19:00:06', '5731234521', '2', 5, 'Wearing workshop jacket.'),
('2017-05-01 19:00:06', '5731234721', '2', 10, 'Wearing Workshop jacket and high heels.');

-- --------------------------------------------------------

--
-- Table structure for table `competitions`
--

CREATE TABLE `competitions` (
  `Coname` varchar(171) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Coyear` year(4) NOT NULL,
  `Coaward` varchar(171) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `Cadvisor` int(11) DEFAULT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `competitions`
--

INSERT INTO `competitions` (`Coname`, `Coyear`, `Coaward`, `Cadvisor`, `id`) VALUES
('ACM-ICPC Regional Contest', 2016, 'ACM-ICPC Thailand Regional 2016', 2, 1),
('NSC', 2017, 'Invention or program award for help people', 4, 2);

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `CID` char(7) COLLATE utf8_unicode_ci NOT NULL,
  `Ctype` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `Cname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Ccredit` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`CID`, `Ctype`, `Cname`, `Ccredit`) VALUES
('0123101', 'GENED', 'PARAGRAP WRITING', 3),
('2110211', 'NONE', 'INTRO DATA STRUCT', 3),
('2110316', 'NONE', 'PROG LANG PRIN', 3),
('2110318', 'NONE', 'DIS SYS ESS', 1),
('2110332', 'NONE', 'SYS ANAL DESIGN', 3),
('2110422', 'NONE', 'DB MGT SYS DESIGN', 3),
('2304102', 'NONE', 'GEN PHYS II', 3),
('2601111', 'GENED', 'BUS ACCTG', 3),
('5500208', 'NONE', 'COM PRES SKIL', 3);

-- --------------------------------------------------------

--
-- Table structure for table `course_syllabus_of_departments`
--

CREATE TABLE `course_syllabus_of_departments` (
  `CID` char(7) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Dname` varchar(171) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `course_syllabus_of_departments`
--

INSERT INTO `course_syllabus_of_departments` (`CID`, `Dname`) VALUES
('2110316', 'Computer Engineering'),
('2110318', 'Computer Engineering'),
('2110332', 'Computer Engineering'),
('2110422', 'Computer Engineering');

-- --------------------------------------------------------

--
-- Table structure for table `data_rows`
--

CREATE TABLE `data_rows` (
  `id` int(10) UNSIGNED NOT NULL,
  `data_type_id` int(10) UNSIGNED NOT NULL,
  `field` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `browse` tinyint(1) NOT NULL DEFAULT '1',
  `read` tinyint(1) NOT NULL DEFAULT '1',
  `edit` tinyint(1) NOT NULL DEFAULT '1',
  `add` tinyint(1) NOT NULL DEFAULT '1',
  `delete` tinyint(1) NOT NULL DEFAULT '1',
  `details` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_rows`
--

INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`) VALUES
(26, 3, 'id', 'number', 'id', 1, 0, 0, 0, 0, 0, NULL),
(28, 3, 'email', 'text', 'E-mail', 1, 1, 1, 1, 1, 1, NULL),
(29, 3, 'password', 'password', 'Password', 1, 0, 0, 1, 1, 0, NULL),
(30, 3, 'remember_token', 'text', 'remember_token', 0, 0, 0, 0, 0, 0, NULL),
(31, 3, 'created_at', 'timestamp', 'created_at', 0, 1, 1, 0, 0, 0, NULL),
(32, 3, 'updated_at', 'timestamp', 'updated_at', 0, 0, 0, 0, 0, 0, NULL),
(33, 3, 'avatar', 'image', 'Avatar', 0, 1, 1, 1, 1, 1, NULL),
(34, 5, 'id', 'number', 'id', 1, 0, 0, 0, 0, 0, ''),
(35, 5, 'name', 'text', 'name', 1, 1, 1, 1, 1, 1, ''),
(36, 5, 'created_at', 'timestamp', 'created_at', 0, 0, 0, 0, 0, 0, ''),
(37, 5, 'updated_at', 'timestamp', 'updated_at', 0, 0, 0, 0, 0, 0, ''),
(45, 6, 'id', 'number', 'id', 1, 0, 0, 0, 0, 0, ''),
(46, 6, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, ''),
(47, 6, 'created_at', 'timestamp', 'created_at', 0, 0, 0, 0, 0, 0, ''),
(48, 6, 'updated_at', 'timestamp', 'updated_at', 0, 0, 0, 0, 0, 0, ''),
(49, 6, 'display_name', 'text', 'Display Name', 1, 1, 1, 1, 1, 1, ''),
(52, 3, 'role_id', 'text', 'role_id', 0, 1, 1, 1, 1, 1, NULL),
(83, 10, 'CID', 'text', 'Course ID', 1, 1, 1, 1, 1, 1, NULL),
(84, 10, 'Ctype', 'text', 'Type', 1, 1, 1, 1, 1, 1, NULL),
(85, 10, 'Cname', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL),
(86, 10, 'Ccredit', 'text', 'Credit', 1, 1, 1, 1, 1, 1, NULL),
(87, 11, 'SID', 'text', 'Student ID', 1, 1, 1, 1, 1, 1, NULL),
(88, 11, 'SFname', 'text', 'First name', 1, 1, 1, 1, 1, 1, NULL),
(89, 11, 'SLname', 'text', 'Last name', 1, 1, 1, 1, 1, 1, NULL),
(90, 11, 'Sgender', 'radio_btn', 'Gender', 1, 1, 1, 1, 1, 1, '{\"options\":{\"male\":\"ชาย\",\"female\":\"หญิง\"}}'),
(91, 11, 'Sbirth', 'date', 'Birthdate', 1, 1, 1, 1, 1, 1, NULL),
(92, 11, 'Snation', 'select_dropdown', 'Nationality', 1, 1, 1, 1, 1, 1, '{\"options\":{\"th\":\"ไทย\",\"cn\":\"จีน\",\"us\":\"อเมริกัน\"}}'),
(93, 11, 'Senroll_date', 'date', 'Enrollment Date', 1, 1, 1, 1, 1, 1, NULL),
(94, 11, 'Sedu_stat', 'select_dropdown', 'Education status', 1, 1, 1, 1, 1, 1, '{\"options\":{\"PRO\":\"Probation\",\"NONE\":\"-\"}}'),
(95, 11, 'Shealth_stat', 'select_dropdown', 'Health status', 1, 1, 1, 1, 1, 1, '{\"options\":{\"HEALTHY\":\"Healthy\",\"SICKED\":\"Sicked\"}}'),
(96, 11, 'Sbehav_score', 'number', 'Behavior Score', 1, 1, 1, 1, 1, 1, NULL),
(97, 11, 'Sdetail', 'text_area', 'General Detail', 0, 1, 1, 1, 1, 1, NULL),
(98, 12, 'Btime', 'timestamp', 'Time', 1, 1, 1, 1, 1, 1, NULL),
(99, 12, 'SID', 'text', 'SID', 1, 1, 1, 1, 1, 1, NULL),
(100, 12, 'Bpunisher', 'text', 'Punisher', 1, 1, 1, 1, 1, 1, NULL),
(101, 12, 'Bdeduct_score', 'number', 'Deducted Score', 1, 1, 1, 1, 1, 1, NULL),
(102, 12, 'Bdetail', 'text_area', 'Detail', 0, 1, 1, 1, 1, 1, NULL),
(103, 17, 'id', 'number', 'id', 1, 0, 0, 0, 0, 0, NULL),
(104, 17, 'SID', 'select_dropdown', 'Student ID', 1, 1, 1, 1, 1, 1, '{\"relationship\":{\"method\":\"SID\",\"key\":\"SID\",\"label\":\"full\"}}'),
(105, 17, 'section_id', 'select_dropdown', 'Section', 1, 1, 1, 1, 1, 1, '{\"relationship\":{\"key\":\"id\",\"label\":\"full\"}}'),
(106, 18, 'Coname', 'text', 'Competition Name', 1, 1, 1, 1, 1, 1, NULL),
(107, 18, 'Coyear', 'number', 'Year', 1, 1, 1, 1, 1, 1, NULL),
(108, 18, 'Coaward', 'text_area', 'Competition Award Detail', 0, 1, 1, 1, 1, 1, NULL),
(109, 18, 'Cadvisor', 'select_dropdown', 'Competition Advisor', 0, 1, 1, 1, 1, 1, '{\"relationship\":{\"key\":\"id\",\"label\":\"users.fname\",\"method\":\"Cadvisor\"}}'),
(110, 18, 'id', 'number', 'Id', 1, 0, 0, 0, 0, 0, NULL),
(111, 20, 'Aname', 'text', 'Activity Name', 1, 1, 1, 1, 1, 1, NULL),
(112, 20, 'Ayear', 'number', 'Year', 1, 1, 1, 1, 1, 1, NULL),
(113, 20, 'Adetail', 'text_area', 'Activity Detail', 1, 1, 1, 1, 1, 1, NULL),
(114, 20, 'Aadvisor', 'select_dropdown', 'Advisor', 1, 1, 1, 1, 1, 1, '{\"relationship\":{\"key\":\"id\",\"label\":\"users.fname\",\"method\":\"Aadvisor\"}}'),
(115, 20, 'id', 'checkbox', 'Id', 1, 0, 0, 0, 0, 0, NULL),
(117, 3, 'lname', 'text', 'Last Name', 1, 1, 1, 1, 1, 1, NULL),
(118, 3, 'fname', 'text', 'First name', 1, 1, 1, 1, 1, 1, NULL),
(119, 21, 'id', 'checkbox', 'Id', 1, 0, 0, 0, 0, 0, NULL),
(120, 21, 'CID', 'select_dropdown', 'Course ID', 1, 1, 1, 1, 1, 1, '{\"relationship\":{\"key\":\"CID\",\"label\":\"CID\"}}'),
(121, 21, 'SeNum', 'number', 'Section Number', 1, 1, 1, 1, 1, 1, NULL),
(122, 21, 'SeTerm', 'number', 'Term', 1, 1, 1, 1, 1, 1, NULL),
(123, 21, 'SeYear', 'number', 'Year', 1, 1, 1, 1, 1, 1, NULL),
(124, 21, 'SeNote', 'text_area', 'Note', 0, 1, 1, 1, 1, 1, NULL),
(125, 22, 'Dname', 'text', 'Department Name', 1, 1, 1, 1, 1, 1, NULL),
(126, 22, 'Dfaculty', 'text', 'Faculty', 1, 1, 1, 1, 1, 1, NULL),
(127, 11, 'TID', 'checkbox', 'TID', 1, 1, 1, 1, 1, 1, NULL),
(128, 11, 'Dname', 'checkbox', 'Dname', 1, 1, 1, 1, 1, 1, NULL),
(129, 11, 'Sgrad_stat', 'checkbox', 'Sgrad Stat', 1, 1, 1, 1, 1, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `data_types`
--

CREATE TABLE `data_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT '0',
  `server_side` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_types`
--

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `controller`, `description`, `generate_permissions`, `server_side`, `created_at`, `updated_at`) VALUES
(3, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', NULL, NULL, 1, 0, '2017-04-17 09:01:12', '2017-04-29 06:12:30'),
(5, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', '', '', 1, 0, '2017-04-17 09:01:12', '2017-04-17 09:01:12'),
(6, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', '', '', 1, 0, '2017-04-17 09:01:12', '2017-04-17 09:01:12'),
(10, 'courses', 'courses', 'Course', 'Courses', 'voyager-book', 'App\\Course', 'CourseController', NULL, 1, 0, '2017-04-20 18:49:37', '2017-04-20 19:02:37'),
(11, 'students', 'students', 'Student', 'Students', 'voyager-study', 'App\\Student', 'StudentController', 'Students', 1, 1, '2017-04-21 21:56:08', '2017-05-01 12:09:09'),
(12, 'behavior_records', 'behavior-records', 'Behavior Record', 'Behavior Records', NULL, 'App\\BehaviorRecord', NULL, NULL, 1, 0, '2017-04-22 00:28:46', '2017-04-22 00:28:46'),
(17, 'student_enroll_in_section', 'enrollment', 'Enrollment', 'Enrollment', NULL, 'App\\Enrollment', 'EnrollmentController', NULL, 1, 0, '2017-04-25 20:14:27', '2017-04-25 20:14:27'),
(18, 'competitions', 'competitions', 'Competition', 'Competitions', 'voyager-trophy', 'App\\Competition', 'CompetitionController', NULL, 1, 0, '2017-04-29 05:16:21', '2017-04-30 19:06:43'),
(20, 'activities', 'activities', 'Activity', 'Activities', 'voyager-star-two', 'App\\Activity', 'ActivityController', NULL, 1, 0, '2017-04-29 06:09:00', '2017-04-30 19:09:10'),
(21, 'sections', 'sections', 'Section', 'Sections', 'voyager-list-add', 'App\\Section', 'SectionController', NULL, 1, 0, '2017-05-01 05:39:31', '2017-05-01 17:54:02'),
(22, 'departments', 'departments', 'Department', 'Departments', 'voyager-shop', 'App\\Department', 'DepartmentController', NULL, 1, 0, '2017-05-01 09:17:26', '2017-05-01 09:26:38');

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `Dname` varchar(171) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Dfaculty` varchar(171) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`Dname`, `Dfaculty`) VALUES
('Computer Engineering', 'Faculty of Engineering');

-- --------------------------------------------------------

--
-- Table structure for table `managers`
--

CREATE TABLE `managers` (
  `id` int(11) NOT NULL,
  `user` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `managers`
--

INSERT INTO `managers` (`id`, `user`) VALUES
(1, 3);

-- --------------------------------------------------------

--
-- Table structure for table `managers_of_dept`
--

CREATE TABLE `managers_of_dept` (
  `id` int(11) NOT NULL,
  `Dname` varchar(171) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `managers_of_dept`
--

INSERT INTO `managers_of_dept` (`id`, `Dname`) VALUES
(1, 'Computer Engineering');

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2017-04-17 09:01:12', '2017-04-17 09:01:12');

-- --------------------------------------------------------

--
-- Table structure for table `menu_items`
--

CREATE TABLE `menu_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
(1, 1, 'Dashboard', '/admin', '_self', 'voyager-boat', NULL, NULL, 1, '2017-04-17 09:01:12', '2017-04-17 09:01:12', NULL, NULL),
(4, 1, 'Users', '/admin/users', '_self', 'voyager-person', NULL, NULL, 9, '2017-04-17 09:01:12', '2017-05-01 09:18:57', NULL, NULL),
(7, 1, 'Roles', '/admin/roles', '_self', 'voyager-lock', NULL, NULL, 7, '2017-04-17 09:01:12', '2017-04-30 21:12:50', NULL, NULL),
(8, 1, 'Tools', '', '_self', 'voyager-tools', NULL, NULL, 11, '2017-04-17 09:01:12', '2017-05-01 09:18:57', NULL, NULL),
(9, 1, 'Menu Builder', '/admin/menus', '_self', 'voyager-list', NULL, 8, 1, '2017-04-17 09:01:12', '2017-04-17 10:04:43', NULL, NULL),
(10, 1, 'Database', '/admin/database', '_self', 'voyager-data', NULL, 8, 2, '2017-04-17 09:01:12', '2017-04-17 10:04:43', NULL, NULL),
(11, 1, 'Settings', '/admin/settings', '_self', 'voyager-settings', NULL, NULL, 12, '2017-04-17 09:01:12', '2017-05-01 09:18:57', NULL, NULL),
(12, 1, 'Students', '/admin/students', '_self', 'voyager-study', '#000000', NULL, 3, '2017-04-17 10:05:20', '2017-04-30 21:12:51', NULL, ''),
(13, 1, 'Courses', '/admin/courses', '_self', 'voyager-book', '#000000', NULL, 4, '2017-04-20 18:51:25', '2017-04-30 21:12:51', NULL, ''),
(14, 1, 'Competitions', '/admin/competitions', '_self', 'voyager-trophy', '#000000', NULL, 5, '2017-04-30 08:50:48', '2017-04-30 21:12:51', NULL, ''),
(15, 1, 'Activities', '/admin/activities', '_self', 'voyager-star-two', '#000000', NULL, 6, '2017-04-30 19:10:14', '2017-04-30 21:12:50', NULL, ''),
(16, 1, 'Statistics', '/admin/statistics', '_self', 'voyager-bar-chart', '#000000', NULL, 2, '2017-04-30 21:12:26', '2017-04-30 21:12:51', NULL, ''),
(17, 1, 'Departments', '/admin/departments', '_self', 'voyager-shop', '#000000', NULL, 8, '2017-05-01 09:18:50', '2017-05-01 09:18:57', NULL, '');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_01_01_000000_add_voyager_user_fields', 1),
(4, '2016_01_01_000000_create_data_types_table', 1),
(5, '2016_01_01_000000_create_pages_table', 1),
(6, '2016_01_01_000000_create_posts_table', 1),
(7, '2016_02_15_204651_create_categories_table', 1),
(8, '2016_05_19_173453_create_menu_table', 1),
(9, '2016_10_21_190000_create_roles_table', 1),
(10, '2016_10_21_190000_create_settings_table', 1),
(11, '2016_11_30_135954_create_permission_table', 1),
(12, '2016_11_30_141208_create_permission_role_table', 1),
(13, '2016_12_26_201236_data_types__add__server_side', 1),
(14, '2017_01_13_000000_add_route_to_menu_items_table', 1),
(15, '2017_01_14_005015_create_translations_table', 1),
(16, '2017_01_15_000000_add_permission_group_id_to_permissions_table', 1),
(17, '2017_01_15_000000_create_permission_groups_table', 1),
(18, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 1),
(19, '2017_03_06_000000_add_controller_to_data_types_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `permission_group_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`, `permission_group_id`) VALUES
(1, 'browse_admin', NULL, '2017-04-17 09:01:12', '2017-04-17 09:01:12', NULL),
(2, 'browse_database', NULL, '2017-04-17 09:01:12', '2017-04-17 09:01:12', NULL),
(3, 'browse_media', NULL, '2017-04-17 09:01:12', '2017-04-17 09:01:12', NULL),
(4, 'browse_settings', NULL, '2017-04-17 09:01:12', '2017-04-17 09:01:12', NULL),
(5, 'browse_menus', 'menus', '2017-04-17 09:01:12', '2017-04-17 09:01:12', NULL),
(6, 'read_menus', 'menus', '2017-04-17 09:01:12', '2017-04-17 09:01:12', NULL),
(7, 'edit_menus', 'menus', '2017-04-17 09:01:12', '2017-04-17 09:01:12', NULL),
(8, 'add_menus', 'menus', '2017-04-17 09:01:12', '2017-04-17 09:01:12', NULL),
(9, 'delete_menus', 'menus', '2017-04-17 09:01:12', '2017-04-17 09:01:12', NULL),
(15, 'browse_roles', 'roles', '2017-04-17 09:01:12', '2017-04-17 09:01:12', NULL),
(16, 'read_roles', 'roles', '2017-04-17 09:01:12', '2017-04-17 09:01:12', NULL),
(17, 'edit_roles', 'roles', '2017-04-17 09:01:12', '2017-04-17 09:01:12', NULL),
(18, 'add_roles', 'roles', '2017-04-17 09:01:12', '2017-04-17 09:01:12', NULL),
(19, 'delete_roles', 'roles', '2017-04-17 09:01:12', '2017-04-17 09:01:12', NULL),
(20, 'browse_users', 'users', '2017-04-17 09:01:12', '2017-04-17 09:01:12', NULL),
(21, 'read_users', 'users', '2017-04-17 09:01:12', '2017-04-17 09:01:12', NULL),
(22, 'edit_users', 'users', '2017-04-17 09:01:12', '2017-04-17 09:01:12', NULL),
(23, 'add_users', 'users', '2017-04-17 09:01:12', '2017-04-17 09:01:12', NULL),
(24, 'delete_users', 'users', '2017-04-17 09:01:12', '2017-04-17 09:01:12', NULL),
(50, 'browse_courses', 'courses', '2017-04-20 18:49:37', '2017-04-20 18:49:37', NULL),
(51, 'read_courses', 'courses', '2017-04-20 18:49:37', '2017-04-20 18:49:37', NULL),
(52, 'edit_courses', 'courses', '2017-04-20 18:49:37', '2017-04-20 18:49:37', NULL),
(53, 'add_courses', 'courses', '2017-04-20 18:49:37', '2017-04-20 18:49:37', NULL),
(54, 'delete_courses', 'courses', '2017-04-20 18:49:37', '2017-04-20 18:49:37', NULL),
(55, 'browse_students', 'students', '2017-04-21 21:56:09', '2017-04-21 21:56:09', NULL),
(56, 'read_students', 'students', '2017-04-21 21:56:09', '2017-04-21 21:56:09', NULL),
(57, 'edit_students', 'students', '2017-04-21 21:56:09', '2017-04-21 21:56:09', NULL),
(58, 'add_students', 'students', '2017-04-21 21:56:09', '2017-04-21 21:56:09', NULL),
(59, 'delete_students', 'students', '2017-04-21 21:56:09', '2017-04-21 21:56:09', NULL),
(60, 'browse_behavior_records', 'behavior_records', '2017-04-22 00:28:46', '2017-04-22 00:28:46', NULL),
(61, 'read_behavior_records', 'behavior_records', '2017-04-22 00:28:46', '2017-04-22 00:28:46', NULL),
(62, 'edit_behavior_records', 'behavior_records', '2017-04-22 00:28:46', '2017-04-22 00:28:46', NULL),
(63, 'add_behavior_records', 'behavior_records', '2017-04-22 00:28:46', '2017-04-22 00:28:46', NULL),
(64, 'delete_behavior_records', 'behavior_records', '2017-04-22 00:28:46', '2017-04-22 00:28:46', NULL),
(65, 'browse_student_enroll_in_section', 'student_enroll_in_section', '2017-04-25 20:14:27', '2017-04-25 20:14:27', NULL),
(66, 'read_student_enroll_in_section', 'student_enroll_in_section', '2017-04-25 20:14:27', '2017-04-25 20:14:27', NULL),
(67, 'edit_student_enroll_in_section', 'student_enroll_in_section', '2017-04-25 20:14:27', '2017-04-25 20:14:27', NULL),
(68, 'add_student_enroll_in_section', 'student_enroll_in_section', '2017-04-25 20:14:27', '2017-04-25 20:14:27', NULL),
(69, 'delete_student_enroll_in_section', 'student_enroll_in_section', '2017-04-25 20:14:27', '2017-04-25 20:14:27', NULL),
(70, 'browse_competitions', 'competitions', '2017-04-29 05:16:21', '2017-04-29 05:16:21', NULL),
(71, 'read_competitions', 'competitions', '2017-04-29 05:16:21', '2017-04-29 05:16:21', NULL),
(72, 'edit_competitions', 'competitions', '2017-04-29 05:16:21', '2017-04-29 05:16:21', NULL),
(73, 'add_competitions', 'competitions', '2017-04-29 05:16:21', '2017-04-29 05:16:21', NULL),
(74, 'delete_competitions', 'competitions', '2017-04-29 05:16:21', '2017-04-29 05:16:21', NULL),
(75, 'browse_activities', 'activities', '2017-04-29 06:09:00', '2017-04-29 06:09:00', NULL),
(76, 'read_activities', 'activities', '2017-04-29 06:09:00', '2017-04-29 06:09:00', NULL),
(77, 'edit_activities', 'activities', '2017-04-29 06:09:00', '2017-04-29 06:09:00', NULL),
(78, 'add_activities', 'activities', '2017-04-29 06:09:00', '2017-04-29 06:09:00', NULL),
(79, 'delete_activities', 'activities', '2017-04-29 06:09:00', '2017-04-29 06:09:00', NULL),
(80, 'browse_sections', 'sections', '2017-05-01 05:39:31', '2017-05-01 05:39:31', NULL),
(81, 'read_sections', 'sections', '2017-05-01 05:39:31', '2017-05-01 05:39:31', NULL),
(82, 'edit_sections', 'sections', '2017-05-01 05:39:31', '2017-05-01 05:39:31', NULL),
(83, 'add_sections', 'sections', '2017-05-01 05:39:31', '2017-05-01 05:39:31', NULL),
(84, 'delete_sections', 'sections', '2017-05-01 05:39:31', '2017-05-01 05:39:31', NULL),
(85, 'browse_departments', 'departments', '2017-05-01 09:17:26', '2017-05-01 09:17:26', NULL),
(86, 'read_departments', 'departments', '2017-05-01 09:17:26', '2017-05-01 09:17:26', NULL),
(87, 'edit_departments', 'departments', '2017-05-01 09:17:26', '2017-05-01 09:17:26', NULL),
(88, 'add_departments', 'departments', '2017-05-01 09:17:26', '2017-05-01 09:17:26', NULL),
(89, 'delete_departments', 'departments', '2017-05-01 09:17:26', '2017-05-01 09:17:26', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `permission_groups`
--

CREATE TABLE `permission_groups` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(1, 3),
(1, 4),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(50, 1),
(50, 3),
(50, 4),
(51, 1),
(51, 3),
(51, 4),
(52, 1),
(52, 3),
(52, 4),
(53, 1),
(53, 3),
(53, 4),
(54, 1),
(54, 3),
(54, 4),
(55, 1),
(55, 3),
(55, 4),
(56, 1),
(56, 3),
(56, 4),
(57, 1),
(57, 3),
(57, 4),
(58, 1),
(58, 3),
(58, 4),
(59, 1),
(59, 3),
(59, 4),
(60, 1),
(60, 3),
(60, 4),
(61, 1),
(61, 3),
(61, 4),
(62, 1),
(62, 3),
(62, 4),
(63, 1),
(63, 3),
(63, 4),
(64, 1),
(64, 3),
(64, 4),
(65, 3),
(65, 4),
(66, 3),
(66, 4),
(67, 3),
(67, 4),
(68, 3),
(68, 4),
(69, 3),
(69, 4),
(70, 1),
(70, 3),
(70, 4),
(71, 1),
(71, 3),
(71, 4),
(72, 1),
(72, 3),
(72, 4),
(73, 1),
(73, 3),
(73, 4),
(74, 1),
(74, 3),
(74, 4),
(75, 1),
(75, 3),
(75, 4),
(76, 1),
(76, 3),
(76, 4),
(77, 1),
(77, 3),
(77, 4),
(78, 1),
(78, 3),
(78, 4),
(79, 1),
(79, 3),
(79, 4),
(80, 1),
(80, 3),
(80, 4),
(81, 1),
(81, 3),
(81, 4),
(82, 1),
(82, 3),
(82, 4),
(83, 1),
(83, 3),
(83, 4),
(84, 1),
(84, 3),
(84, 4),
(85, 1),
(85, 3),
(85, 4),
(86, 1),
(86, 3),
(86, 4),
(87, 1),
(88, 1),
(89, 1);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Administrator', '2017-04-17 09:01:12', '2017-04-17 09:01:12'),
(2, 'user', 'Normal User', '2017-04-17 09:01:12', '2017-04-17 09:01:12'),
(3, 'teacher', 'Teacher', '2017-04-30 08:51:48', '2017-04-30 08:51:48'),
(4, 'manager', 'Manager', '2017-05-01 05:48:00', '2017-05-01 05:48:00');

-- --------------------------------------------------------

--
-- Table structure for table `sections`
--

CREATE TABLE `sections` (
  `id` int(11) NOT NULL,
  `CID` char(7) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `SeNum` int(11) NOT NULL,
  `SeTerm` int(11) NOT NULL,
  `SeYear` int(11) NOT NULL,
  `SeNote` varchar(171) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `sections`
--

INSERT INTO `sections` (`id`, `CID`, `SeNum`, `SeTerm`, `SeYear`, `SeNote`) VALUES
(9, '0123101', 1, 2, 2017, '1ST ECON ONLY'),
(10, '0123101', 2, 2, 2017, '1ST ECON ONLY'),
(11, '0123101', 3, 2, 2017, '1ST ECON ONLY'),
(12, '0123101', 4, 2, 2017, '1ST ECON ONLY'),
(13, '0123101', 5, 2, 2017, '1ST ECON ONLY'),
(14, '0123101', 6, 2, 2017, '1ST ECON ONLY'),
(15, '0123101', 7, 2, 2017, 'GENED-HU'),
(16, '0123101', 8, 2, 2017, 'GENED-HU'),
(17, '0123101', 9, 2, 2017, 'GENED-HU'),
(18, '0123101', 10, 2, 2017, 'GENED-HU'),
(19, '0123101', 11, 2, 2017, 'GENED-HU'),
(20, '0123101', 12, 2, 2017, 'GENED-HU'),
(21, '0123101', 13, 2, 2017, 'GENED-HU'),
(22, '0123101', 14, 2, 2017, 'GENED-HU'),
(23, '0123101', 15, 2, 2017, 'GENED-HU'),
(24, '0123101', 16, 2, 2017, 'GENED-HU'),
(25, '0123101', 17, 2, 2017, 'GENED-HU'),
(26, '0123101', 18, 2, 2017, 'GENED-HU'),
(27, '0123101', 19, 2, 2017, 'GENED-HU'),
(28, '0123101', 20, 2, 2017, 'GENED-HU'),
(29, '0123101', 21, 2, 2017, 'GENED-HU'),
(30, '0123101', 22, 2, 2017, 'GENED-HU'),
(31, '0123101', 23, 2, 2017, 'GENED-HU'),
(32, '0123101', 24, 2, 2017, 'GENED-HU'),
(33, '0123101', 25, 2, 2017, 'GENED-HU'),
(34, '0123101', 26, 2, 2017, 'GENED-HU'),
(35, '0123101', 27, 2, 2017, 'GENED-HU'),
(36, '0123101', 28, 2, 2017, 'GENED-HU'),
(37, '0123101', 29, 2, 2017, 'GENED-HU'),
(38, '0123101', 30, 2, 2017, 'GENED-HU'),
(39, '0123101', 31, 2, 2017, 'GENED-HU'),
(40, '0123101', 32, 2, 2017, 'GENED-HU'),
(44, '2110211', 1, 2, 2017, ''),
(45, '2110211', 2, 2, 2017, ''),
(46, '2110211', 3, 2, 2017, ''),
(4, '2110316', 1, 2, 2017, NULL),
(2, '2110318', 1, 2, 2017, NULL),
(5, '2110318', 2, 2, 2017, NULL),
(6, '2110318', 33, 2, 2017, NULL),
(3, '2110332', 1, 2, 2017, NULL),
(7, '2110332', 2, 2, 2017, NULL),
(8, '2110332', 33, 2, 2017, NULL),
(1, '2110422', 1, 2, 2017, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` text COLLATE utf8mb4_unicode_ci,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`) VALUES
(1, 'title', 'Site Title', 'Site Title', '', 'text', 1),
(2, 'description', 'Site Description', 'Site Description', '', 'text', 2),
(3, 'logo', 'Site Logo', '', '', 'image', 3),
(4, 'admin_bg_image', 'Admin Background Image', 'settings/April2017/dxFEs9a8YWGjwnyVkUg3.jpg', '', 'image', 9),
(5, 'admin_title', 'Admin Title', 'Student Management', '', 'text', 4),
(6, 'admin_description', 'Admin Description', 'Welcome to Chulalongkorn Student Management System', '', 'text', 5),
(7, 'admin_loader', 'Admin Loader', '', '', 'image', 6),
(8, 'admin_icon_image', 'Admin Icon Image', 'settings/April2017/IUprdvyQ1hRVgVpDKWN7.png', '', 'image', 7),
(9, 'google_analytics_client_id', 'Google Analytics Client ID', '', '', 'text', 9);

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `SID` char(10) COLLATE utf8_unicode_ci NOT NULL,
  `SFname` varchar(171) COLLATE utf8_unicode_ci NOT NULL,
  `SLname` varchar(171) COLLATE utf8_unicode_ci NOT NULL,
  `Sgender` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `Sbirth` date NOT NULL,
  `Snation` varchar(171) COLLATE utf8_unicode_ci NOT NULL,
  `Senroll_date` date NOT NULL,
  `Sedu_stat` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `Shealth_stat` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `Sbehav_score` int(11) NOT NULL DEFAULT '0',
  `Sdetail` varchar(171) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TID` int(11) NOT NULL,
  `Dname` varchar(171) COLLATE utf8_unicode_ci NOT NULL,
  `Sgrad_stat` varchar(20) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`SID`, `SFname`, `SLname`, `Sgender`, `Sbirth`, `Snation`, `Senroll_date`, `Sedu_stat`, `Shealth_stat`, `Sbehav_score`, `Sdetail`, `TID`, `Dname`, `Sgrad_stat`) VALUES
('5630544321', 'TempName 0', 'TempSur 0', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 2, 'Computer Engineering', 'STUDYING'),
('5630545321', 'TempName 1', 'TempSur 1', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 3, 'Computer Engineering', 'STUDYING'),
('5630546321', 'TempName 2', 'TempSur 2', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 4, 'Computer Engineering', 'STUDYING'),
('5630547321', 'TempName 3', 'TempSur 3', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 5, 'Computer Engineering', 'STUDYING'),
('5630548321', 'TempName 4', 'TempSur 4', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 6, 'Computer Engineering', 'STUDYING'),
('5630549321', 'TempName 5', 'TempSur 5', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 7, 'Computer Engineering', 'STUDYING'),
('5630550321', 'TempName 6', 'TempSur 6', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 8, 'Computer Engineering', 'STUDYING'),
('5630551321', 'TempName 7', 'TempSur 7', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 9, 'Computer Engineering', 'STUDYING'),
('5630552321', 'TempName 8', 'TempSur 8', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 10, 'Computer Engineering', 'STUDYING'),
('5630553321', 'TempName 9', 'TempSur 9', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 11, 'Computer Engineering', 'STUDYING'),
('5630554321', 'TempName 10', 'TempSur 10', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 12, 'Computer Engineering', 'STUDYING'),
('5630555321', 'TempName 11', 'TempSur 11', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 13, 'Computer Engineering', 'STUDYING'),
('5630556321', 'TempName 12', 'TempSur 12', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 14, 'Computer Engineering', 'STUDYING'),
('5630557321', 'TempName 13', 'TempSur 13', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 15, 'Computer Engineering', 'STUDYING'),
('5630558321', 'TempName 14', 'TempSur 14', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 16, 'Computer Engineering', 'STUDYING'),
('5630559321', 'TempName 15', 'TempSur 15', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 17, 'Computer Engineering', 'STUDYING'),
('5630560321', 'TempName 16', 'TempSur 16', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 18, 'Computer Engineering', 'STUDYING'),
('5630561321', 'TempName 17', 'TempSur 17', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 19, 'Computer Engineering', 'STUDYING'),
('5630562321', 'TempName 18', 'TempSur 18', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 20, 'Computer Engineering', 'STUDYING'),
('5630563321', 'TempName 19', 'TempSur 19', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 21, 'Computer Engineering', 'STUDYING'),
('5630564321', 'TempName 20', 'TempSur 20', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 22, 'Computer Engineering', 'STUDYING'),
('5630565321', 'TempName 21', 'TempSur 21', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 23, 'Computer Engineering', 'STUDYING'),
('5630566321', 'TempName 22', 'TempSur 22', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 24, 'Computer Engineering', 'STUDYING'),
('5630567321', 'TempName 23', 'TempSur 23', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 25, 'Computer Engineering', 'STUDYING'),
('5630568321', 'TempName 24', 'TempSur 24', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 26, 'Computer Engineering', 'STUDYING'),
('5630569321', 'TempName 25', 'TempSur 25', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 27, 'Computer Engineering', 'STUDYING'),
('5630570321', 'TempName 26', 'TempSur 26', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 28, 'Computer Engineering', 'STUDYING'),
('5630571321', 'TempName 27', 'TempSur 27', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 29, 'Computer Engineering', 'STUDYING'),
('5630572321', 'TempName 28', 'TempSur 28', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 30, 'Computer Engineering', 'STUDYING'),
('5630573321', 'TempName 29', 'TempSur 29', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 31, 'Computer Engineering', 'STUDYING'),
('5630574321', 'TempName 30', 'TempSur 30', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 32, 'Computer Engineering', 'STUDYING'),
('5630575321', 'TempName 31', 'TempSur 31', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 33, 'Computer Engineering', 'STUDYING'),
('5630576321', 'TempName 32', 'TempSur 32', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 34, 'Computer Engineering', 'STUDYING'),
('5630577321', 'TempName 33', 'TempSur 33', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 35, 'Computer Engineering', 'STUDYING'),
('5630578321', 'TempName 34', 'TempSur 34', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 36, 'Computer Engineering', 'STUDYING'),
('5630579321', 'TempName 35', 'TempSur 35', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 37, 'Computer Engineering', 'STUDYING'),
('5630580321', 'TempName 36', 'TempSur 36', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 38, 'Computer Engineering', 'STUDYING'),
('5630581321', 'TempName 37', 'TempSur 37', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 39, 'Computer Engineering', 'STUDYING'),
('5630582321', 'TempName 38', 'TempSur 38', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 40, 'Computer Engineering', 'STUDYING'),
('5630583321', 'TempName 39', 'TempSur 39', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 41, 'Computer Engineering', 'STUDYING'),
('5630584321', 'TempName 40', 'TempSur 40', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 42, 'Computer Engineering', 'STUDYING'),
('5630585321', 'TempName 41', 'TempSur 41', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 43, 'Computer Engineering', 'STUDYING'),
('5630586321', 'TempName 42', 'TempSur 42', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 44, 'Computer Engineering', 'STUDYING'),
('5630587321', 'TempName 43', 'TempSur 43', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 45, 'Computer Engineering', 'STUDYING'),
('5630588321', 'TempName 44', 'TempSur 44', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 46, 'Computer Engineering', 'STUDYING'),
('5630589321', 'TempName 45', 'TempSur 45', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 47, 'Computer Engineering', 'STUDYING'),
('5630590321', 'TempName 46', 'TempSur 46', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 48, 'Computer Engineering', 'STUDYING'),
('5630591321', 'TempName 47', 'TempSur 47', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 49, 'Computer Engineering', 'STUDYING'),
('5630592321', 'TempName 48', 'TempSur 48', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 50, 'Computer Engineering', 'STUDYING'),
('5630593321', 'TempName 49', 'TempSur 49', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 51, 'Computer Engineering', 'STUDYING'),
('5630594321', 'TempName 50', 'TempSur 50', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 52, 'Computer Engineering', 'STUDYING'),
('5630595321', 'TempName 51', 'TempSur 51', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 53, 'Computer Engineering', 'STUDYING'),
('5630596321', 'TempName 52', 'TempSur 52', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 54, 'Computer Engineering', 'STUDYING'),
('5630597321', 'TempName 53', 'TempSur 53', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 55, 'Computer Engineering', 'STUDYING'),
('5630598321', 'TempName 54', 'TempSur 54', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 56, 'Computer Engineering', 'STUDYING'),
('5630599321', 'TempName 55', 'TempSur 55', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 57, 'Computer Engineering', 'STUDYING'),
('5630600321', 'TempName 56', 'TempSur 56', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 58, 'Computer Engineering', 'STUDYING'),
('5630601321', 'TempName 57', 'TempSur 57', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 59, 'Computer Engineering', 'STUDYING'),
('5630602321', 'TempName 58', 'TempSur 58', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 60, 'Computer Engineering', 'STUDYING'),
('5630603321', 'TempName 59', 'TempSur 59', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 61, 'Computer Engineering', 'STUDYING'),
('5630604321', 'TempName 60', 'TempSur 60', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 62, 'Computer Engineering', 'STUDYING'),
('5630605321', 'TempName 61', 'TempSur 61', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 63, 'Computer Engineering', 'STUDYING'),
('5630606321', 'TempName 62', 'TempSur 62', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 64, 'Computer Engineering', 'STUDYING'),
('5630607321', 'TempName 63', 'TempSur 63', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 65, 'Computer Engineering', 'STUDYING'),
('5630608321', 'TempName 64', 'TempSur 64', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 66, 'Computer Engineering', 'STUDYING'),
('5630609321', 'TempName 65', 'TempSur 65', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 67, 'Computer Engineering', 'STUDYING'),
('5630610321', 'TempName 66', 'TempSur 66', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 68, 'Computer Engineering', 'STUDYING'),
('5630611321', 'TempName 67', 'TempSur 67', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 69, 'Computer Engineering', 'STUDYING'),
('5630612321', 'TempName 68', 'TempSur 68', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 70, 'Computer Engineering', 'STUDYING'),
('5630613321', 'TempName 69', 'TempSur 69', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 71, 'Computer Engineering', 'STUDYING'),
('5630614321', 'TempName 70', 'TempSur 70', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 72, 'Computer Engineering', 'STUDYING'),
('5630615321', 'TempName 71', 'TempSur 71', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 73, 'Computer Engineering', 'STUDYING'),
('5630616321', 'TempName 72', 'TempSur 72', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 74, 'Computer Engineering', 'STUDYING'),
('5630617321', 'TempName 73', 'TempSur 73', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 75, 'Computer Engineering', 'STUDYING'),
('5630618321', 'TempName 74', 'TempSur 74', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 76, 'Computer Engineering', 'STUDYING'),
('5630619321', 'TempName 75', 'TempSur 75', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 77, 'Computer Engineering', 'STUDYING'),
('5630620321', 'TempName 76', 'TempSur 76', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 78, 'Computer Engineering', 'STUDYING'),
('5630621321', 'TempName 77', 'TempSur 77', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 79, 'Computer Engineering', 'STUDYING'),
('5630622321', 'TempName 78', 'TempSur 78', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 80, 'Computer Engineering', 'STUDYING'),
('5630623321', 'TempName 79', 'TempSur 79', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 81, 'Computer Engineering', 'STUDYING'),
('5630624321', 'TempName 80', 'TempSur 80', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 82, 'Computer Engineering', 'STUDYING'),
('5630625321', 'TempName 81', 'TempSur 81', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 83, 'Computer Engineering', 'STUDYING'),
('5630626321', 'TempName 82', 'TempSur 82', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 84, 'Computer Engineering', 'STUDYING'),
('5630627321', 'TempName 83', 'TempSur 83', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 85, 'Computer Engineering', 'STUDYING'),
('5630628321', 'TempName 84', 'TempSur 84', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 86, 'Computer Engineering', 'STUDYING'),
('5630629321', 'TempName 85', 'TempSur 85', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 87, 'Computer Engineering', 'STUDYING'),
('5630630321', 'TempName 86', 'TempSur 86', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 88, 'Computer Engineering', 'STUDYING'),
('5630631321', 'TempName 87', 'TempSur 87', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 89, 'Computer Engineering', 'STUDYING'),
('5630632321', 'TempName 88', 'TempSur 88', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 90, 'Computer Engineering', 'STUDYING'),
('5630633321', 'TempName 89', 'TempSur 89', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 91, 'Computer Engineering', 'STUDYING'),
('5630634321', 'TempName 90', 'TempSur 90', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 92, 'Computer Engineering', 'STUDYING'),
('5630635321', 'TempName 91', 'TempSur 91', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 93, 'Computer Engineering', 'STUDYING'),
('5630636321', 'TempName 92', 'TempSur 92', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 94, 'Computer Engineering', 'STUDYING'),
('5630637321', 'TempName 93', 'TempSur 93', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 95, 'Computer Engineering', 'STUDYING'),
('5630638321', 'TempName 94', 'TempSur 94', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 96, 'Computer Engineering', 'STUDYING'),
('5630639321', 'TempName 95', 'TempSur 95', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 97, 'Computer Engineering', 'STUDYING'),
('5630640321', 'TempName 96', 'TempSur 96', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 98, 'Computer Engineering', 'STUDYING'),
('5630641321', 'TempName 97', 'TempSur 97', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 99, 'Computer Engineering', 'STUDYING'),
('5630642321', 'TempName 98', 'TempSur 98', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 100, 'Computer Engineering', 'STUDYING'),
('5630643321', 'TempName 99', 'TempSur 99', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 101, 'Computer Engineering', 'STUDYING'),
('5631234521', 'Kapparino', 'Keeporino', 'male', '1994-06-23', 'th', '2013-12-31', 'NONE', 'HEALTHY', 0, NULL, 2, 'Computer Engineering', 'STUDYING'),
('5631234621', 'SumTing', 'Wong', 'female', '1995-02-21', 'th', '2013-12-31', 'NONE', 'HEALTHY', 0, NULL, 2, 'Computer Engineering', 'STUDYING'),
('5631234721', 'Skipperino', 'Kripperino', 'male', '1994-09-26', 'th', '2013-12-31', 'NONE', 'HEALTHY', 0, NULL, 2, 'Computer Engineering', 'STUDYING'),
('5631234821', 'NoName', 'NoLastName', 'male', '1994-12-01', 'th', '2013-12-31', 'NONE', 'HEALTHY', 0, NULL, 2, 'Computer Engineering', 'STUDYING'),
('5631234921', 'Maho', 'Hiyajo', 'female', '1995-01-01', 'th', '2013-12-31', 'NONE', 'HEALTHY', 0, NULL, 2, 'Computer Engineering', 'STUDYING'),
('5730644321', 'TempName 100', 'TempSur 100', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 102, 'Computer Engineering', 'STUDYING'),
('5730645321', 'TempName 101', 'TempSur 101', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 103, 'Computer Engineering', 'STUDYING'),
('5730646321', 'TempName 102', 'TempSur 102', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 104, 'Computer Engineering', 'STUDYING'),
('5730647321', 'TempName 103', 'TempSur 103', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 105, 'Computer Engineering', 'STUDYING'),
('5730648321', 'TempName 104', 'TempSur 104', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 106, 'Computer Engineering', 'STUDYING'),
('5730649321', 'TempName 105', 'TempSur 105', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 107, 'Computer Engineering', 'STUDYING'),
('5730650321', 'TempName 106', 'TempSur 106', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 108, 'Computer Engineering', 'STUDYING'),
('5730651321', 'TempName 107', 'TempSur 107', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 109, 'Computer Engineering', 'STUDYING'),
('5730652321', 'TempName 108', 'TempSur 108', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 110, 'Computer Engineering', 'STUDYING'),
('5730653321', 'TempName 109', 'TempSur 109', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 111, 'Computer Engineering', 'STUDYING'),
('5730654321', 'TempName 110', 'TempSur 110', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 112, 'Computer Engineering', 'STUDYING'),
('5730655321', 'TempName 111', 'TempSur 111', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 113, 'Computer Engineering', 'STUDYING'),
('5730656321', 'TempName 112', 'TempSur 112', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 114, 'Computer Engineering', 'STUDYING'),
('5730657321', 'TempName 113', 'TempSur 113', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 115, 'Computer Engineering', 'STUDYING'),
('5730658321', 'TempName 114', 'TempSur 114', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 116, 'Computer Engineering', 'STUDYING'),
('5730659321', 'TempName 115', 'TempSur 115', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 117, 'Computer Engineering', 'STUDYING'),
('5730660321', 'TempName 116', 'TempSur 116', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 118, 'Computer Engineering', 'STUDYING'),
('5730661321', 'TempName 117', 'TempSur 117', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 119, 'Computer Engineering', 'STUDYING'),
('5730662321', 'TempName 118', 'TempSur 118', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 120, 'Computer Engineering', 'STUDYING'),
('5730663321', 'TempName 119', 'TempSur 119', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 121, 'Computer Engineering', 'STUDYING'),
('5730664321', 'TempName 120', 'TempSur 120', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 122, 'Computer Engineering', 'STUDYING'),
('5730665321', 'TempName 121', 'TempSur 121', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 123, 'Computer Engineering', 'STUDYING'),
('5730666321', 'TempName 122', 'TempSur 122', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 124, 'Computer Engineering', 'STUDYING'),
('5730667321', 'TempName 123', 'TempSur 123', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 125, 'Computer Engineering', 'STUDYING'),
('5730668321', 'TempName 124', 'TempSur 124', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 126, 'Computer Engineering', 'STUDYING'),
('5730669321', 'TempName 125', 'TempSur 125', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 127, 'Computer Engineering', 'STUDYING'),
('5730670321', 'TempName 126', 'TempSur 126', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 128, 'Computer Engineering', 'STUDYING'),
('5730671321', 'TempName 127', 'TempSur 127', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 129, 'Computer Engineering', 'STUDYING'),
('5730672321', 'TempName 128', 'TempSur 128', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 130, 'Computer Engineering', 'STUDYING'),
('5730673321', 'TempName 129', 'TempSur 129', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 131, 'Computer Engineering', 'STUDYING'),
('5730674321', 'TempName 130', 'TempSur 130', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 132, 'Computer Engineering', 'STUDYING'),
('5730675321', 'TempName 131', 'TempSur 131', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 133, 'Computer Engineering', 'STUDYING'),
('5730676321', 'TempName 132', 'TempSur 132', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 134, 'Computer Engineering', 'STUDYING'),
('5730677321', 'TempName 133', 'TempSur 133', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 135, 'Computer Engineering', 'STUDYING'),
('5730678321', 'TempName 134', 'TempSur 134', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 136, 'Computer Engineering', 'STUDYING'),
('5730679321', 'TempName 135', 'TempSur 135', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 137, 'Computer Engineering', 'STUDYING'),
('5730680321', 'TempName 136', 'TempSur 136', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 138, 'Computer Engineering', 'STUDYING'),
('5730681321', 'TempName 137', 'TempSur 137', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 139, 'Computer Engineering', 'STUDYING'),
('5730682321', 'TempName 138', 'TempSur 138', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 140, 'Computer Engineering', 'STUDYING'),
('5730683321', 'TempName 139', 'TempSur 139', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 141, 'Computer Engineering', 'STUDYING'),
('5730684321', 'TempName 140', 'TempSur 140', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 142, 'Computer Engineering', 'STUDYING'),
('5730685321', 'TempName 141', 'TempSur 141', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 143, 'Computer Engineering', 'STUDYING'),
('5730686321', 'TempName 142', 'TempSur 142', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 144, 'Computer Engineering', 'STUDYING'),
('5730687321', 'TempName 143', 'TempSur 143', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 145, 'Computer Engineering', 'STUDYING'),
('5730688321', 'TempName 144', 'TempSur 144', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 146, 'Computer Engineering', 'STUDYING'),
('5730689321', 'TempName 145', 'TempSur 145', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 147, 'Computer Engineering', 'STUDYING'),
('5730690321', 'TempName 146', 'TempSur 146', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 148, 'Computer Engineering', 'STUDYING'),
('5730691321', 'TempName 147', 'TempSur 147', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 149, 'Computer Engineering', 'STUDYING'),
('5730692321', 'TempName 148', 'TempSur 148', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 150, 'Computer Engineering', 'STUDYING'),
('5730693321', 'TempName 149', 'TempSur 149', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 151, 'Computer Engineering', 'STUDYING'),
('5730694321', 'TempName 150', 'TempSur 150', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 152, 'Computer Engineering', 'STUDYING'),
('5730695321', 'TempName 151', 'TempSur 151', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 153, 'Computer Engineering', 'STUDYING'),
('5730696321', 'TempName 152', 'TempSur 152', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 154, 'Computer Engineering', 'STUDYING'),
('5730697321', 'TempName 153', 'TempSur 153', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 155, 'Computer Engineering', 'STUDYING'),
('5730698321', 'TempName 154', 'TempSur 154', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 156, 'Computer Engineering', 'STUDYING'),
('5730699321', 'TempName 155', 'TempSur 155', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 157, 'Computer Engineering', 'STUDYING'),
('5730700321', 'TempName 156', 'TempSur 156', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 158, 'Computer Engineering', 'STUDYING'),
('5730701321', 'TempName 157', 'TempSur 157', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 159, 'Computer Engineering', 'STUDYING'),
('5730702321', 'TempName 158', 'TempSur 158', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 160, 'Computer Engineering', 'STUDYING'),
('5730703321', 'TempName 159', 'TempSur 159', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 161, 'Computer Engineering', 'STUDYING'),
('5730704321', 'TempName 160', 'TempSur 160', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 162, 'Computer Engineering', 'STUDYING'),
('5730705321', 'TempName 161', 'TempSur 161', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 163, 'Computer Engineering', 'STUDYING'),
('5730706321', 'TempName 162', 'TempSur 162', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 164, 'Computer Engineering', 'STUDYING'),
('5730707321', 'TempName 163', 'TempSur 163', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 165, 'Computer Engineering', 'STUDYING'),
('5730708321', 'TempName 164', 'TempSur 164', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 166, 'Computer Engineering', 'STUDYING'),
('5730709321', 'TempName 165', 'TempSur 165', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 167, 'Computer Engineering', 'STUDYING'),
('5730710321', 'TempName 166', 'TempSur 166', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 168, 'Computer Engineering', 'STUDYING'),
('5730711321', 'TempName 167', 'TempSur 167', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 169, 'Computer Engineering', 'STUDYING'),
('5730712321', 'TempName 168', 'TempSur 168', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 170, 'Computer Engineering', 'STUDYING'),
('5730713321', 'TempName 169', 'TempSur 169', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 171, 'Computer Engineering', 'STUDYING'),
('5730714321', 'TempName 170', 'TempSur 170', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 172, 'Computer Engineering', 'STUDYING'),
('5730715321', 'TempName 171', 'TempSur 171', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 173, 'Computer Engineering', 'STUDYING'),
('5730716321', 'TempName 172', 'TempSur 172', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 174, 'Computer Engineering', 'STUDYING'),
('5730717321', 'TempName 173', 'TempSur 173', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 175, 'Computer Engineering', 'STUDYING'),
('5730718321', 'TempName 174', 'TempSur 174', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 176, 'Computer Engineering', 'STUDYING'),
('5730719321', 'TempName 175', 'TempSur 175', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 177, 'Computer Engineering', 'STUDYING'),
('5730720321', 'TempName 176', 'TempSur 176', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 178, 'Computer Engineering', 'STUDYING'),
('5730721321', 'TempName 177', 'TempSur 177', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 179, 'Computer Engineering', 'STUDYING'),
('5730722321', 'TempName 178', 'TempSur 178', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 180, 'Computer Engineering', 'STUDYING'),
('5730723321', 'TempName 179', 'TempSur 179', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 181, 'Computer Engineering', 'STUDYING'),
('5730724321', 'TempName 180', 'TempSur 180', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 182, 'Computer Engineering', 'STUDYING'),
('5730725321', 'TempName 181', 'TempSur 181', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 183, 'Computer Engineering', 'STUDYING'),
('5730726321', 'TempName 182', 'TempSur 182', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 184, 'Computer Engineering', 'STUDYING'),
('5730727321', 'TempName 183', 'TempSur 183', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 185, 'Computer Engineering', 'STUDYING'),
('5730728321', 'TempName 184', 'TempSur 184', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 186, 'Computer Engineering', 'STUDYING'),
('5730729321', 'TempName 185', 'TempSur 185', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 187, 'Computer Engineering', 'STUDYING'),
('5730730321', 'TempName 186', 'TempSur 186', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 188, 'Computer Engineering', 'STUDYING'),
('5730731321', 'TempName 187', 'TempSur 187', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 189, 'Computer Engineering', 'STUDYING'),
('5730732321', 'TempName 188', 'TempSur 188', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 190, 'Computer Engineering', 'STUDYING'),
('5730733321', 'TempName 189', 'TempSur 189', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 191, 'Computer Engineering', 'STUDYING'),
('5730734321', 'TempName 190', 'TempSur 190', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 192, 'Computer Engineering', 'STUDYING'),
('5730735321', 'TempName 191', 'TempSur 191', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 193, 'Computer Engineering', 'STUDYING'),
('5730736321', 'TempName 192', 'TempSur 192', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 194, 'Computer Engineering', 'STUDYING'),
('5730737321', 'TempName 193', 'TempSur 193', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 195, 'Computer Engineering', 'STUDYING'),
('5730738321', 'TempName 194', 'TempSur 194', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 196, 'Computer Engineering', 'STUDYING'),
('5730739321', 'TempName 195', 'TempSur 195', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 197, 'Computer Engineering', 'STUDYING'),
('5730740321', 'TempName 196', 'TempSur 196', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 198, 'Computer Engineering', 'STUDYING'),
('5730741321', 'TempName 197', 'TempSur 197', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 199, 'Computer Engineering', 'STUDYING'),
('5730742321', 'TempName 198', 'TempSur 198', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 200, 'Computer Engineering', 'STUDYING'),
('5730743321', 'TempName 199', 'TempSur 199', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 201, 'Computer Engineering', 'STUDYING'),
('5731234521', 'John', 'Doe', 'male', '1996-04-11', 'th', '2014-12-31', 'NONE', 'HEALTHY', 0, NULL, 1, 'Computer Engineering', 'STUDYING'),
('5731234621', 'Minato', 'Namikaze', 'male', '1996-03-23', 'th', '2014-12-31', 'NONE', 'HEALTHY', 0, NULL, 2, 'Computer Engineering', 'STUDYING'),
('5731234721', 'Ming', 'Lee', 'female', '1995-10-04', 'th', '2014-12-31', 'NONE', 'HEALTHY', 0, NULL, 1, 'Computer Engineering', 'STUDYING'),
('5731234821', 'Kappa', 'Keepo', 'male', '1996-01-26', 'th', '2014-12-31', 'NONE', 'HEALTHY', 0, NULL, 2, 'Computer Engineering', 'STUDYING'),
('5731234921', 'Kurisu', 'Makise', 'female', '1995-12-15', 'th', '2014-12-31', 'NONE', 'HEALTHY', 0, NULL, 2, 'Computer Engineering', 'STUDYING'),
('5731337521', 'Jane', 'Doe', 'female', '1996-01-01', 'th', '2014-12-31', 'PRO', 'HEALTHY', 0, NULL, 2, 'Computer Engineering', 'STUDYING'),
('5735432121', 'Lorem', 'Ipsum', 'female', '1995-11-11', 'th', '2014-12-31', 'NONE', 'HEALTHY', 0, NULL, 1, 'Computer Engineering', 'STUDYING'),
('5738008135', 'InsertFirstNameHere', 'InsertLastNameHere', 'male', '1995-09-12', 'th', '2014-12-31', 'NONE', 'HEALTHY', 0, NULL, 1, 'Computer Engineering', 'STUDYING'),
('5830744321', 'TempName 200', 'TempSur 200', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 202, 'Computer Engineering', 'STUDYING'),
('5830745321', 'TempName 201', 'TempSur 201', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 203, 'Computer Engineering', 'STUDYING'),
('5830746321', 'TempName 202', 'TempSur 202', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 204, 'Computer Engineering', 'STUDYING'),
('5830747321', 'TempName 203', 'TempSur 203', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 205, 'Computer Engineering', 'STUDYING'),
('5830748321', 'TempName 204', 'TempSur 204', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 206, 'Computer Engineering', 'STUDYING'),
('5830749321', 'TempName 205', 'TempSur 205', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 207, 'Computer Engineering', 'STUDYING'),
('5830750321', 'TempName 206', 'TempSur 206', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 208, 'Computer Engineering', 'STUDYING'),
('5830751321', 'TempName 207', 'TempSur 207', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 209, 'Computer Engineering', 'STUDYING'),
('5830752321', 'TempName 208', 'TempSur 208', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 210, 'Computer Engineering', 'STUDYING'),
('5830753321', 'TempName 209', 'TempSur 209', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 211, 'Computer Engineering', 'STUDYING'),
('5830754321', 'TempName 210', 'TempSur 210', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 212, 'Computer Engineering', 'STUDYING'),
('5830755321', 'TempName 211', 'TempSur 211', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 213, 'Computer Engineering', 'STUDYING'),
('5830756321', 'TempName 212', 'TempSur 212', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 214, 'Computer Engineering', 'STUDYING'),
('5830757321', 'TempName 213', 'TempSur 213', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 215, 'Computer Engineering', 'STUDYING'),
('5830758321', 'TempName 214', 'TempSur 214', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 216, 'Computer Engineering', 'STUDYING'),
('5830759321', 'TempName 215', 'TempSur 215', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 217, 'Computer Engineering', 'STUDYING'),
('5830760321', 'TempName 216', 'TempSur 216', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 218, 'Computer Engineering', 'STUDYING'),
('5830761321', 'TempName 217', 'TempSur 217', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 219, 'Computer Engineering', 'STUDYING'),
('5830762321', 'TempName 218', 'TempSur 218', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 220, 'Computer Engineering', 'STUDYING'),
('5830763321', 'TempName 219', 'TempSur 219', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 221, 'Computer Engineering', 'STUDYING'),
('5830764321', 'TempName 220', 'TempSur 220', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 222, 'Computer Engineering', 'STUDYING'),
('5830765321', 'TempName 221', 'TempSur 221', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 223, 'Computer Engineering', 'STUDYING'),
('5830766321', 'TempName 222', 'TempSur 222', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 224, 'Computer Engineering', 'STUDYING'),
('5830767321', 'TempName 223', 'TempSur 223', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 225, 'Computer Engineering', 'STUDYING'),
('5830768321', 'TempName 224', 'TempSur 224', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 226, 'Computer Engineering', 'STUDYING'),
('5830769321', 'TempName 225', 'TempSur 225', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 227, 'Computer Engineering', 'STUDYING'),
('5830770321', 'TempName 226', 'TempSur 226', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 228, 'Computer Engineering', 'STUDYING'),
('5830771321', 'TempName 227', 'TempSur 227', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 229, 'Computer Engineering', 'STUDYING'),
('5830772321', 'TempName 228', 'TempSur 228', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 230, 'Computer Engineering', 'STUDYING'),
('5830773321', 'TempName 229', 'TempSur 229', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 231, 'Computer Engineering', 'STUDYING'),
('5830774321', 'TempName 230', 'TempSur 230', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 232, 'Computer Engineering', 'STUDYING'),
('5830775321', 'TempName 231', 'TempSur 231', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 233, 'Computer Engineering', 'STUDYING'),
('5830776321', 'TempName 232', 'TempSur 232', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 234, 'Computer Engineering', 'STUDYING'),
('5830777321', 'TempName 233', 'TempSur 233', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 235, 'Computer Engineering', 'STUDYING'),
('5830778321', 'TempName 234', 'TempSur 234', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 236, 'Computer Engineering', 'STUDYING'),
('5830779321', 'TempName 235', 'TempSur 235', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 237, 'Computer Engineering', 'STUDYING'),
('5830780321', 'TempName 236', 'TempSur 236', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 238, 'Computer Engineering', 'STUDYING'),
('5830781321', 'TempName 237', 'TempSur 237', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 239, 'Computer Engineering', 'STUDYING'),
('5830782321', 'TempName 238', 'TempSur 238', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 240, 'Computer Engineering', 'STUDYING'),
('5830783321', 'TempName 239', 'TempSur 239', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 241, 'Computer Engineering', 'STUDYING'),
('5830784321', 'TempName 240', 'TempSur 240', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 242, 'Computer Engineering', 'STUDYING'),
('5830785321', 'TempName 241', 'TempSur 241', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 243, 'Computer Engineering', 'STUDYING'),
('5830786321', 'TempName 242', 'TempSur 242', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 244, 'Computer Engineering', 'STUDYING'),
('5830787321', 'TempName 243', 'TempSur 243', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 245, 'Computer Engineering', 'STUDYING'),
('5830788321', 'TempName 244', 'TempSur 244', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 246, 'Computer Engineering', 'STUDYING'),
('5830789321', 'TempName 245', 'TempSur 245', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 247, 'Computer Engineering', 'STUDYING'),
('5830790321', 'TempName 246', 'TempSur 246', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 248, 'Computer Engineering', 'STUDYING'),
('5830791321', 'TempName 247', 'TempSur 247', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 249, 'Computer Engineering', 'STUDYING'),
('5830792321', 'TempName 248', 'TempSur 248', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 250, 'Computer Engineering', 'STUDYING'),
('5830793321', 'TempName 249', 'TempSur 249', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 251, 'Computer Engineering', 'STUDYING'),
('5830794321', 'TempName 250', 'TempSur 250', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 252, 'Computer Engineering', 'STUDYING'),
('5830795321', 'TempName 251', 'TempSur 251', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 253, 'Computer Engineering', 'STUDYING'),
('5830796321', 'TempName 252', 'TempSur 252', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 254, 'Computer Engineering', 'STUDYING'),
('5830797321', 'TempName 253', 'TempSur 253', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 255, 'Computer Engineering', 'STUDYING'),
('5830798321', 'TempName 254', 'TempSur 254', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 256, 'Computer Engineering', 'STUDYING'),
('5830799321', 'TempName 255', 'TempSur 255', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 257, 'Computer Engineering', 'STUDYING'),
('5830800321', 'TempName 256', 'TempSur 256', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 258, 'Computer Engineering', 'STUDYING'),
('5830801321', 'TempName 257', 'TempSur 257', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 259, 'Computer Engineering', 'STUDYING'),
('5830802321', 'TempName 258', 'TempSur 258', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 260, 'Computer Engineering', 'STUDYING'),
('5830803321', 'TempName 259', 'TempSur 259', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 261, 'Computer Engineering', 'STUDYING'),
('5830804321', 'TempName 260', 'TempSur 260', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 262, 'Computer Engineering', 'STUDYING'),
('5830805321', 'TempName 261', 'TempSur 261', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 263, 'Computer Engineering', 'STUDYING'),
('5830806321', 'TempName 262', 'TempSur 262', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 264, 'Computer Engineering', 'STUDYING'),
('5830807321', 'TempName 263', 'TempSur 263', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 265, 'Computer Engineering', 'STUDYING'),
('5830808321', 'TempName 264', 'TempSur 264', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 266, 'Computer Engineering', 'STUDYING'),
('5830809321', 'TempName 265', 'TempSur 265', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 267, 'Computer Engineering', 'STUDYING'),
('5830810321', 'TempName 266', 'TempSur 266', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 268, 'Computer Engineering', 'STUDYING'),
('5830811321', 'TempName 267', 'TempSur 267', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 269, 'Computer Engineering', 'STUDYING'),
('5830812321', 'TempName 268', 'TempSur 268', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 270, 'Computer Engineering', 'STUDYING'),
('5830813321', 'TempName 269', 'TempSur 269', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 271, 'Computer Engineering', 'STUDYING'),
('5830814321', 'TempName 270', 'TempSur 270', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 272, 'Computer Engineering', 'STUDYING'),
('5830815321', 'TempName 271', 'TempSur 271', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 273, 'Computer Engineering', 'STUDYING'),
('5830816321', 'TempName 272', 'TempSur 272', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 274, 'Computer Engineering', 'STUDYING'),
('5830817321', 'TempName 273', 'TempSur 273', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 275, 'Computer Engineering', 'STUDYING'),
('5830818321', 'TempName 274', 'TempSur 274', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 276, 'Computer Engineering', 'STUDYING'),
('5830819321', 'TempName 275', 'TempSur 275', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 277, 'Computer Engineering', 'STUDYING'),
('5830820321', 'TempName 276', 'TempSur 276', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 278, 'Computer Engineering', 'STUDYING'),
('5830821321', 'TempName 277', 'TempSur 277', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 279, 'Computer Engineering', 'STUDYING'),
('5830822321', 'TempName 278', 'TempSur 278', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 280, 'Computer Engineering', 'STUDYING'),
('5830823321', 'TempName 279', 'TempSur 279', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 281, 'Computer Engineering', 'STUDYING'),
('5830824321', 'TempName 280', 'TempSur 280', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 282, 'Computer Engineering', 'STUDYING'),
('5830825321', 'TempName 281', 'TempSur 281', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 283, 'Computer Engineering', 'STUDYING'),
('5830826321', 'TempName 282', 'TempSur 282', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 284, 'Computer Engineering', 'STUDYING'),
('5830827321', 'TempName 283', 'TempSur 283', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 285, 'Computer Engineering', 'STUDYING'),
('5830828321', 'TempName 284', 'TempSur 284', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 286, 'Computer Engineering', 'STUDYING'),
('5830829321', 'TempName 285', 'TempSur 285', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 287, 'Computer Engineering', 'STUDYING'),
('5830830321', 'TempName 286', 'TempSur 286', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 288, 'Computer Engineering', 'STUDYING'),
('5830831321', 'TempName 287', 'TempSur 287', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 289, 'Computer Engineering', 'STUDYING'),
('5830832321', 'TempName 288', 'TempSur 288', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 290, 'Computer Engineering', 'STUDYING'),
('5830833321', 'TempName 289', 'TempSur 289', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 291, 'Computer Engineering', 'STUDYING'),
('5830834321', 'TempName 290', 'TempSur 290', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 292, 'Computer Engineering', 'STUDYING'),
('5830835321', 'TempName 291', 'TempSur 291', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 293, 'Computer Engineering', 'STUDYING'),
('5830836321', 'TempName 292', 'TempSur 292', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 294, 'Computer Engineering', 'STUDYING'),
('5830837321', 'TempName 293', 'TempSur 293', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 295, 'Computer Engineering', 'STUDYING'),
('5830838321', 'TempName 294', 'TempSur 294', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 296, 'Computer Engineering', 'STUDYING'),
('5830839321', 'TempName 295', 'TempSur 295', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 297, 'Computer Engineering', 'STUDYING'),
('5830840321', 'TempName 296', 'TempSur 296', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 298, 'Computer Engineering', 'STUDYING'),
('5830841321', 'TempName 297', 'TempSur 297', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 299, 'Computer Engineering', 'STUDYING'),
('5830842321', 'TempName 298', 'TempSur 298', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 300, 'Computer Engineering', 'STUDYING'),
('5830843321', 'TempName 299', 'TempSur 299', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 301, 'Computer Engineering', 'STUDYING'),
('5831234521', 'Jeanne', 'Doe', 'female', '1996-05-26', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 2, 'Computer Engineering', 'STUDYING'),
('5831234621', 'Janet', 'Doe', 'female', '1996-04-22', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 2, 'Computer Engineering', 'STUDYING'),
('5831234721', 'Johnny', 'Doe', 'male', '1997-01-26', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 2, 'Computer Engineering', 'STUDYING'),
('5831234821', 'Kappa', 'Keepo', 'male', '1996-07-05', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 2, 'Computer Engineering', 'STUDYING'),
('5930844321', 'TempName 300', 'TempSur 300', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 302, 'Computer Engineering', 'STUDYING'),
('5930845321', 'TempName 301', 'TempSur 301', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 303, 'Computer Engineering', 'STUDYING'),
('5930846321', 'TempName 302', 'TempSur 302', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 304, 'Computer Engineering', 'STUDYING'),
('5930847321', 'TempName 303', 'TempSur 303', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 305, 'Computer Engineering', 'STUDYING'),
('5930848321', 'TempName 304', 'TempSur 304', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 306, 'Computer Engineering', 'STUDYING');
INSERT INTO `students` (`SID`, `SFname`, `SLname`, `Sgender`, `Sbirth`, `Snation`, `Senroll_date`, `Sedu_stat`, `Shealth_stat`, `Sbehav_score`, `Sdetail`, `TID`, `Dname`, `Sgrad_stat`) VALUES
('5930849321', 'TempName 305', 'TempSur 305', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 307, 'Computer Engineering', 'STUDYING'),
('5930850321', 'TempName 306', 'TempSur 306', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 308, 'Computer Engineering', 'STUDYING'),
('5930851321', 'TempName 307', 'TempSur 307', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 309, 'Computer Engineering', 'STUDYING'),
('5930852321', 'TempName 308', 'TempSur 308', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 310, 'Computer Engineering', 'STUDYING'),
('5930853321', 'TempName 309', 'TempSur 309', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 311, 'Computer Engineering', 'STUDYING'),
('5930854321', 'TempName 310', 'TempSur 310', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 312, 'Computer Engineering', 'STUDYING'),
('5930855321', 'TempName 311', 'TempSur 311', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 313, 'Computer Engineering', 'STUDYING'),
('5930856321', 'TempName 312', 'TempSur 312', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 314, 'Computer Engineering', 'STUDYING'),
('5930857321', 'TempName 313', 'TempSur 313', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 315, 'Computer Engineering', 'STUDYING'),
('5930858321', 'TempName 314', 'TempSur 314', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 316, 'Computer Engineering', 'STUDYING'),
('5930859321', 'TempName 315', 'TempSur 315', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 317, 'Computer Engineering', 'STUDYING'),
('5930860321', 'TempName 316', 'TempSur 316', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 318, 'Computer Engineering', 'STUDYING'),
('5930861321', 'TempName 317', 'TempSur 317', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 319, 'Computer Engineering', 'STUDYING'),
('5930862321', 'TempName 318', 'TempSur 318', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 320, 'Computer Engineering', 'STUDYING'),
('5930863321', 'TempName 319', 'TempSur 319', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 321, 'Computer Engineering', 'STUDYING'),
('5930864321', 'TempName 320', 'TempSur 320', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 322, 'Computer Engineering', 'STUDYING'),
('5930865321', 'TempName 321', 'TempSur 321', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 323, 'Computer Engineering', 'STUDYING'),
('5930866321', 'TempName 322', 'TempSur 322', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 324, 'Computer Engineering', 'STUDYING'),
('5930867321', 'TempName 323', 'TempSur 323', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 325, 'Computer Engineering', 'STUDYING'),
('5930868321', 'TempName 324', 'TempSur 324', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 326, 'Computer Engineering', 'STUDYING'),
('5930869321', 'TempName 325', 'TempSur 325', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 327, 'Computer Engineering', 'STUDYING'),
('5930870321', 'TempName 326', 'TempSur 326', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 328, 'Computer Engineering', 'STUDYING'),
('5930871321', 'TempName 327', 'TempSur 327', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 329, 'Computer Engineering', 'STUDYING'),
('5930872321', 'TempName 328', 'TempSur 328', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 330, 'Computer Engineering', 'STUDYING'),
('5930873321', 'TempName 329', 'TempSur 329', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 331, 'Computer Engineering', 'STUDYING'),
('5930874321', 'TempName 330', 'TempSur 330', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 332, 'Computer Engineering', 'STUDYING'),
('5930875321', 'TempName 331', 'TempSur 331', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 333, 'Computer Engineering', 'STUDYING'),
('5930876321', 'TempName 332', 'TempSur 332', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 334, 'Computer Engineering', 'STUDYING'),
('5930877321', 'TempName 333', 'TempSur 333', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 335, 'Computer Engineering', 'STUDYING'),
('5930878321', 'TempName 334', 'TempSur 334', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 336, 'Computer Engineering', 'STUDYING'),
('5930879321', 'TempName 335', 'TempSur 335', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 337, 'Computer Engineering', 'STUDYING'),
('5930880321', 'TempName 336', 'TempSur 336', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 338, 'Computer Engineering', 'STUDYING'),
('5930881321', 'TempName 337', 'TempSur 337', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 339, 'Computer Engineering', 'STUDYING'),
('5930882321', 'TempName 338', 'TempSur 338', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 340, 'Computer Engineering', 'STUDYING'),
('5930883321', 'TempName 339', 'TempSur 339', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 341, 'Computer Engineering', 'STUDYING'),
('5930884321', 'TempName 340', 'TempSur 340', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 342, 'Computer Engineering', 'STUDYING'),
('5930885321', 'TempName 341', 'TempSur 341', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 343, 'Computer Engineering', 'STUDYING'),
('5930886321', 'TempName 342', 'TempSur 342', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 344, 'Computer Engineering', 'STUDYING'),
('5930887321', 'TempName 343', 'TempSur 343', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 345, 'Computer Engineering', 'STUDYING'),
('5930888321', 'TempName 344', 'TempSur 344', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 346, 'Computer Engineering', 'STUDYING'),
('5930889321', 'TempName 345', 'TempSur 345', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 347, 'Computer Engineering', 'STUDYING'),
('5930890321', 'TempName 346', 'TempSur 346', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 348, 'Computer Engineering', 'STUDYING'),
('5930891321', 'TempName 347', 'TempSur 347', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 349, 'Computer Engineering', 'STUDYING'),
('5930892321', 'TempName 348', 'TempSur 348', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 350, 'Computer Engineering', 'STUDYING'),
('5930893321', 'TempName 349', 'TempSur 349', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 351, 'Computer Engineering', 'STUDYING'),
('5930894321', 'TempName 350', 'TempSur 350', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 352, 'Computer Engineering', 'STUDYING'),
('5930895321', 'TempName 351', 'TempSur 351', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 353, 'Computer Engineering', 'STUDYING'),
('5930896321', 'TempName 352', 'TempSur 352', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 354, 'Computer Engineering', 'STUDYING'),
('5930897321', 'TempName 353', 'TempSur 353', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 355, 'Computer Engineering', 'STUDYING'),
('5930898321', 'TempName 354', 'TempSur 354', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 356, 'Computer Engineering', 'STUDYING'),
('5930899321', 'TempName 355', 'TempSur 355', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 357, 'Computer Engineering', 'STUDYING'),
('5930900321', 'TempName 356', 'TempSur 356', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 358, 'Computer Engineering', 'STUDYING'),
('5930901321', 'TempName 357', 'TempSur 357', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 359, 'Computer Engineering', 'STUDYING'),
('5930902321', 'TempName 358', 'TempSur 358', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 360, 'Computer Engineering', 'STUDYING'),
('5930903321', 'TempName 359', 'TempSur 359', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 361, 'Computer Engineering', 'STUDYING'),
('5930904321', 'TempName 360', 'TempSur 360', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 362, 'Computer Engineering', 'STUDYING'),
('5930905321', 'TempName 361', 'TempSur 361', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 363, 'Computer Engineering', 'STUDYING'),
('5930906321', 'TempName 362', 'TempSur 362', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 364, 'Computer Engineering', 'STUDYING'),
('5930907321', 'TempName 363', 'TempSur 363', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 365, 'Computer Engineering', 'STUDYING'),
('5930908321', 'TempName 364', 'TempSur 364', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 366, 'Computer Engineering', 'STUDYING'),
('5930909321', 'TempName 365', 'TempSur 365', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 367, 'Computer Engineering', 'STUDYING'),
('5930910321', 'TempName 366', 'TempSur 366', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 368, 'Computer Engineering', 'STUDYING'),
('5930911321', 'TempName 367', 'TempSur 367', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 369, 'Computer Engineering', 'STUDYING'),
('5930912321', 'TempName 368', 'TempSur 368', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 370, 'Computer Engineering', 'STUDYING'),
('5930913321', 'TempName 369', 'TempSur 369', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 371, 'Computer Engineering', 'STUDYING'),
('5930914321', 'TempName 370', 'TempSur 370', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 372, 'Computer Engineering', 'STUDYING'),
('5930915321', 'TempName 371', 'TempSur 371', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 373, 'Computer Engineering', 'STUDYING'),
('5930916321', 'TempName 372', 'TempSur 372', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 374, 'Computer Engineering', 'STUDYING'),
('5930917321', 'TempName 373', 'TempSur 373', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 375, 'Computer Engineering', 'STUDYING'),
('5930918321', 'TempName 374', 'TempSur 374', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 376, 'Computer Engineering', 'STUDYING'),
('5930919321', 'TempName 375', 'TempSur 375', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 377, 'Computer Engineering', 'STUDYING'),
('5930920321', 'TempName 376', 'TempSur 376', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 378, 'Computer Engineering', 'STUDYING'),
('5930921321', 'TempName 377', 'TempSur 377', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 379, 'Computer Engineering', 'STUDYING'),
('5930922321', 'TempName 378', 'TempSur 378', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 380, 'Computer Engineering', 'STUDYING'),
('5930923321', 'TempName 379', 'TempSur 379', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 381, 'Computer Engineering', 'STUDYING'),
('5930924321', 'TempName 380', 'TempSur 380', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 382, 'Computer Engineering', 'STUDYING'),
('5930925321', 'TempName 381', 'TempSur 381', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 383, 'Computer Engineering', 'STUDYING'),
('5930926321', 'TempName 382', 'TempSur 382', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 384, 'Computer Engineering', 'STUDYING'),
('5930927321', 'TempName 383', 'TempSur 383', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 385, 'Computer Engineering', 'STUDYING'),
('5930928321', 'TempName 384', 'TempSur 384', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 386, 'Computer Engineering', 'STUDYING'),
('5930929321', 'TempName 385', 'TempSur 385', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 387, 'Computer Engineering', 'STUDYING'),
('5930930321', 'TempName 386', 'TempSur 386', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 388, 'Computer Engineering', 'STUDYING'),
('5930931321', 'TempName 387', 'TempSur 387', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 389, 'Computer Engineering', 'STUDYING'),
('5930932321', 'TempName 388', 'TempSur 388', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 390, 'Computer Engineering', 'STUDYING'),
('5930933321', 'TempName 389', 'TempSur 389', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 391, 'Computer Engineering', 'STUDYING'),
('5930934321', 'TempName 390', 'TempSur 390', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 392, 'Computer Engineering', 'STUDYING'),
('5930935321', 'TempName 391', 'TempSur 391', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 393, 'Computer Engineering', 'STUDYING'),
('5930936321', 'TempName 392', 'TempSur 392', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 394, 'Computer Engineering', 'STUDYING'),
('5930937321', 'TempName 393', 'TempSur 393', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 395, 'Computer Engineering', 'STUDYING'),
('5930938321', 'TempName 394', 'TempSur 394', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 396, 'Computer Engineering', 'STUDYING'),
('5930939321', 'TempName 395', 'TempSur 395', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 397, 'Computer Engineering', 'STUDYING'),
('5930940321', 'TempName 396', 'TempSur 396', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 398, 'Computer Engineering', 'STUDYING'),
('5930941321', 'TempName 397', 'TempSur 397', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 399, 'Computer Engineering', 'STUDYING'),
('5930942321', 'TempName 398', 'TempSur 398', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 400, 'Computer Engineering', 'STUDYING'),
('5930943321', 'TempName 399', 'TempSur 399', 'male', '1996-12-07', 'th', '2015-12-31', 'NONE', 'HEALTHY', 0, NULL, 401, 'Computer Engineering', 'STUDYING');

-- --------------------------------------------------------

--
-- Table structure for table `student_compete_in_competition`
--

CREATE TABLE `student_compete_in_competition` (
  `id` int(11) NOT NULL,
  `SID` char(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `competition` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `student_compete_in_competition`
--

INSERT INTO `student_compete_in_competition` (`id`, `SID`, `competition`) VALUES
(9, '5631234521', 1),
(10, '5631234621', 1),
(11, '5631234721', 1),
(12, '5631234821', 1),
(8, '5631234921', 2),
(7, '5731234521', 1),
(6, '5731234621', 2),
(4, '5731234721', 1),
(3, '5731234921', 2),
(1, '5731337521', 1),
(2, '5731337521', 2),
(5, '5735432121', 1),
(13, '5831234921', 1);

-- --------------------------------------------------------

--
-- Table structure for table `student_enroll_in_section`
--

CREATE TABLE `student_enroll_in_section` (
  `id` int(11) NOT NULL,
  `SID` char(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `section_id` int(11) NOT NULL,
  `grade` float(3,2) DEFAULT NULL,
  `score` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `student_enroll_in_section`
--

INSERT INTO `student_enroll_in_section` (`id`, `SID`, `section_id`, `grade`, `score`) VALUES
(1, '5732541985', 1, 2.50, 65),
(2, '5732541985', 2, 1.50, 56),
(3, '5732541985', 3, 2.50, 67),
(4, '5732541985', 4, 2.00, 61),
(5, '5731234521', 2, 4.00, 90),
(6, '5731234521', 5, 4.00, 84),
(7, '5738008135', 7, 2.00, 62),
(8, '5738008135', 6, 3.50, 75),
(9, '5731337521', 5, 2.50, 65),
(10, '5731337521', 2, 3.50, 78),
(11, '5735432121', 3, 4.00, 80),
(12, '5735432121', 4, 4.00, 81),
(13, '5731234621', 6, 3.00, 72),
(14, '5731234621', 8, 3.00, 74),
(15, '5731234721', 2, 4.00, 92),
(16, '5731234721', 1, 3.50, 77),
(17, '5731234821', 2, 1.50, 57),
(18, '5731234821', 5, 2.50, 68),
(19, '5731234921', 3, 4.00, 99),
(20, '5731234921', 4, 4.00, 96),
(21, '5631234521', 1, 3.00, 70),
(22, '5631234521', 4, 2.00, 63),
(23, '5631234521', 5, 2.50, 68),
(24, '5631234621', 2, 3.50, 77),
(25, '5631234621', 8, 4.00, 80),
(26, '5631234721', 1, 2.00, 61),
(27, '5631234721', 2, 3.00, 72),
(28, '5631234821', 6, 3.00, 72),
(29, '5631234821', 8, 4.00, 88),
(30, '5631234921', 1, 4.00, 91),
(31, '5631234921', 2, 4.00, 92),
(32, '5631234921', 3, 4.00, 93),
(33, '5631234921', 4, 4.00, 90),
(34, '5831234521', 1, 2.00, 63),
(35, '5831234521', 2, 2.00, 62),
(36, '5831234621', 6, 2.00, 61),
(37, '5831234621', 8, 2.50, 67),
(38, '5831234721', 6, 3.00, 70),
(39, '5831234821', 7, 2.50, 66),
(40, '5831234821', 5, 3.50, 77),
(41, '5731234921', 1, 4.00, 99),
(42, '5731234921', 2, 4.00, 99),
(1243, '5630544321', 1, 3.50, 75),
(1244, '5630544321', 9, 1.00, 53),
(1245, '5630544321', 41, 2.50, 67),
(1246, '5630545321', 2, 4.00, 95),
(1247, '5630545321', 10, 1.00, 51),
(1248, '5630545321', 42, 3.00, 74),
(1249, '5630546321', 3, 4.00, 84),
(1250, '5630546321', 11, 2.00, 62),
(1251, '5630546321', 43, 2.50, 66),
(1252, '5630547321', 4, 4.00, 93),
(1253, '5630547321', 12, 1.00, 51),
(1254, '5630547321', 41, 4.00, 91),
(1255, '5630548321', 5, 3.00, 71),
(1256, '5630548321', 13, 3.00, 71),
(1257, '5630548321', 42, 2.50, 68),
(1258, '5630549321', 6, 3.00, 73),
(1259, '5630549321', 14, 4.00, 98),
(1260, '5630549321', 43, 4.00, 97),
(1261, '5630550321', 7, 4.00, 100),
(1262, '5630550321', 15, 4.00, 86),
(1263, '5630550321', 41, 4.00, 99),
(1264, '5630551321', 8, 3.50, 77),
(1265, '5630551321', 16, 4.00, 84),
(1266, '5630551321', 42, 3.50, 76),
(1267, '5630552321', 1, 1.00, 51),
(1268, '5630552321', 17, 1.00, 50),
(1269, '5630552321', 43, 4.00, 93),
(1270, '5630553321', 2, 2.50, 68),
(1271, '5630553321', 18, 2.50, 68),
(1272, '5630553321', 41, 4.00, 80),
(1273, '5630554321', 3, 2.50, 65),
(1274, '5630554321', 19, 1.50, 59),
(1275, '5630554321', 42, 3.00, 73),
(1276, '5630555321', 4, 4.00, 99),
(1277, '5630555321', 20, 3.00, 71),
(1278, '5630555321', 43, 3.50, 76),
(1279, '5630556321', 5, 3.00, 71),
(1280, '5630556321', 21, 2.50, 65),
(1281, '5630556321', 41, 1.00, 50),
(1282, '5630557321', 6, 2.00, 62),
(1283, '5630557321', 22, 4.00, 95),
(1284, '5630557321', 42, 3.00, 71),
(1285, '5630558321', 7, 3.00, 73),
(1286, '5630558321', 23, 4.00, 96),
(1287, '5630558321', 43, 4.00, 96),
(1288, '5630559321', 8, 3.00, 74),
(1289, '5630559321', 24, 3.50, 79),
(1290, '5630559321', 41, 3.00, 71),
(1291, '5630560321', 1, 1.00, 52),
(1292, '5630560321', 25, 1.50, 59),
(1293, '5630560321', 42, 4.00, 87),
(1294, '5630561321', 2, 2.00, 63),
(1295, '5630561321', 26, 3.50, 75),
(1296, '5630561321', 43, 4.00, 92),
(1297, '5630562321', 3, 4.00, 87),
(1298, '5630562321', 27, 3.00, 73),
(1299, '5630562321', 41, 4.00, 90),
(1300, '5630563321', 4, 1.00, 51),
(1301, '5630563321', 28, 4.00, 98),
(1302, '5630563321', 42, 3.00, 70),
(1303, '5630564321', 5, 0.00, 49),
(1304, '5630564321', 29, 1.00, 53),
(1305, '5630564321', 43, 1.50, 59),
(1306, '5630565321', 6, 1.00, 54),
(1307, '5630565321', 30, 4.00, 90),
(1308, '5630565321', 41, 4.00, 85),
(1309, '5630566321', 7, 4.00, 94),
(1310, '5630566321', 31, 1.00, 50),
(1311, '5630566321', 42, 1.50, 58),
(1312, '5630567321', 8, 1.00, 50),
(1313, '5630567321', 32, 4.00, 89),
(1314, '5630567321', 43, 1.50, 55),
(1315, '5630568321', 1, 4.00, 90),
(1316, '5630568321', 33, 4.00, 95),
(1317, '5630568321', 41, 2.00, 62),
(1318, '5630569321', 2, 4.00, 95),
(1319, '5630569321', 34, 4.00, 87),
(1320, '5630569321', 42, 3.00, 71),
(1321, '5630570321', 3, 1.50, 57),
(1322, '5630570321', 35, 2.00, 62),
(1323, '5630570321', 43, 3.50, 79),
(1324, '5630571321', 4, 2.50, 68),
(1325, '5630571321', 36, 4.00, 93),
(1326, '5630571321', 41, 4.00, 87),
(1327, '5630572321', 5, 3.00, 72),
(1328, '5630572321', 37, 4.00, 100),
(1329, '5630572321', 42, 1.50, 56),
(1330, '5630573321', 6, 2.00, 62),
(1331, '5630573321', 38, 4.00, 96),
(1332, '5630573321', 43, 4.00, 98),
(1333, '5630574321', 7, 3.00, 70),
(1334, '5630574321', 39, 2.50, 65),
(1335, '5630574321', 41, 1.00, 51),
(1336, '5630575321', 8, 3.00, 73),
(1337, '5630575321', 40, 3.00, 73),
(1338, '5630575321', 42, 4.00, 95),
(1339, '5630576321', 1, 3.00, 74),
(1340, '5630576321', 9, 2.00, 64),
(1341, '5630576321', 43, 4.00, 84),
(1342, '5630577321', 2, 3.00, 70),
(1343, '5630577321', 10, 2.00, 64),
(1344, '5630577321', 41, 4.00, 82),
(1345, '5630578321', 3, 4.00, 95),
(1346, '5630578321', 11, 4.00, 94),
(1347, '5630578321', 42, 1.00, 53),
(1348, '5630579321', 4, 1.50, 59),
(1349, '5630579321', 12, 3.00, 70),
(1350, '5630579321', 43, 4.00, 87),
(1351, '5630580321', 5, 4.00, 98),
(1352, '5630580321', 13, 2.00, 61),
(1353, '5630580321', 41, 1.50, 55),
(1354, '5630581321', 6, 4.00, 100),
(1355, '5630581321', 14, 3.00, 73),
(1356, '5630581321', 42, 3.00, 71),
(1357, '5630582321', 7, 2.50, 67),
(1358, '5630582321', 15, 1.00, 51),
(1359, '5630582321', 43, 4.00, 88),
(1360, '5630583321', 8, 0.00, 49),
(1361, '5630583321', 16, 4.00, 99),
(1362, '5630583321', 41, 4.00, 98),
(1363, '5630584321', 1, 2.50, 68),
(1364, '5630584321', 17, 4.00, 85),
(1365, '5630584321', 42, 2.00, 62),
(1366, '5630585321', 2, 1.00, 54),
(1367, '5630585321', 18, 3.00, 72),
(1368, '5630585321', 43, 4.00, 86),
(1369, '5630586321', 3, 1.00, 54),
(1370, '5630586321', 19, 3.50, 76),
(1371, '5630586321', 41, 3.50, 78),
(1372, '5630587321', 4, 4.00, 89),
(1373, '5630587321', 20, 4.00, 94),
(1374, '5630587321', 42, 4.00, 83),
(1375, '5630588321', 5, 4.00, 90),
(1376, '5630588321', 21, 1.00, 54),
(1377, '5630588321', 43, 2.50, 68),
(1378, '5630589321', 6, 3.00, 74),
(1379, '5630589321', 22, 4.00, 88),
(1380, '5630589321', 41, 3.00, 70),
(1381, '5630590321', 7, 4.00, 98),
(1382, '5630590321', 23, 3.00, 72),
(1383, '5630590321', 42, 3.50, 77),
(1384, '5630591321', 8, 4.00, 97),
(1385, '5630591321', 24, 3.00, 72),
(1386, '5630591321', 43, 3.50, 78),
(1387, '5630592321', 1, 4.00, 87),
(1388, '5630592321', 25, 2.50, 67),
(1389, '5630592321', 41, 2.00, 61),
(1390, '5630593321', 2, 2.00, 61),
(1391, '5630593321', 26, 3.00, 71),
(1392, '5630593321', 42, 4.00, 97),
(1393, '5630594321', 3, 1.50, 55),
(1394, '5630594321', 27, 3.00, 74),
(1395, '5630594321', 43, 2.00, 60),
(1396, '5630595321', 4, 2.50, 66),
(1397, '5630595321', 28, 3.00, 74),
(1398, '5630595321', 41, 4.00, 89),
(1399, '5630596321', 5, 2.00, 60),
(1400, '5630596321', 29, 4.00, 93),
(1401, '5630596321', 42, 1.50, 55),
(1402, '5630597321', 6, 1.00, 51),
(1403, '5630597321', 30, 0.00, 48),
(1404, '5630597321', 43, 1.50, 55),
(1405, '5630598321', 7, 3.00, 71),
(1406, '5630598321', 31, 4.00, 90),
(1407, '5630598321', 41, 4.00, 83),
(1408, '5630599321', 8, 3.00, 72),
(1409, '5630599321', 32, 2.00, 60),
(1410, '5630599321', 42, 4.00, 100),
(1411, '5630600321', 1, 4.00, 90),
(1412, '5630600321', 33, 3.00, 74),
(1413, '5630600321', 43, 4.00, 94),
(1414, '5630601321', 2, 1.00, 51),
(1415, '5630601321', 34, 3.50, 75),
(1416, '5630601321', 41, 3.00, 74),
(1417, '5630602321', 3, 1.50, 57),
(1418, '5630602321', 35, 0.00, 49),
(1419, '5630602321', 42, 2.50, 68),
(1420, '5630603321', 4, 1.50, 56),
(1421, '5630603321', 36, 3.00, 74),
(1422, '5630603321', 43, 2.50, 65),
(1423, '5630604321', 5, 3.00, 74),
(1424, '5630604321', 37, 4.00, 85),
(1425, '5630604321', 41, 4.00, 84),
(1426, '5630605321', 6, 4.00, 97),
(1427, '5630605321', 38, 3.00, 73),
(1428, '5630605321', 42, 4.00, 93),
(1429, '5630606321', 7, 1.00, 52),
(1430, '5630606321', 39, 2.50, 65),
(1431, '5630606321', 43, 2.50, 68),
(1432, '5630607321', 8, 4.00, 93),
(1433, '5630607321', 40, 3.50, 76),
(1434, '5630607321', 41, 3.00, 72),
(1435, '5630608321', 1, 4.00, 92),
(1436, '5630608321', 9, 2.50, 68),
(1437, '5630608321', 42, 2.50, 68),
(1438, '5630609321', 2, 4.00, 91),
(1439, '5630609321', 10, 4.00, 96),
(1440, '5630609321', 43, 4.00, 83),
(1441, '5630610321', 3, 3.00, 73),
(1442, '5630610321', 11, 2.50, 66),
(1443, '5630610321', 41, 2.00, 60),
(1444, '5630611321', 4, 3.00, 72),
(1445, '5630611321', 12, 1.50, 56),
(1446, '5630611321', 42, 3.50, 77),
(1447, '5630612321', 5, 4.00, 93),
(1448, '5630612321', 13, 4.00, 97),
(1449, '5630612321', 43, 2.00, 61),
(1450, '5630613321', 6, 2.50, 67),
(1451, '5630613321', 14, 2.50, 68),
(1452, '5630613321', 41, 4.00, 91),
(1453, '5630614321', 7, 1.00, 54),
(1454, '5630614321', 15, 2.00, 62),
(1455, '5630614321', 42, 4.00, 97),
(1456, '5630615321', 8, 2.50, 67),
(1457, '5630615321', 16, 4.00, 80),
(1458, '5630615321', 43, 2.00, 60),
(1459, '5630616321', 1, 1.00, 52),
(1460, '5630616321', 17, 2.00, 61),
(1461, '5630616321', 41, 1.00, 51),
(1462, '5630617321', 2, 4.00, 87),
(1463, '5630617321', 18, 4.00, 96),
(1464, '5630617321', 42, 4.00, 86),
(1465, '5630618321', 3, 2.00, 64),
(1466, '5630618321', 19, 4.00, 86),
(1467, '5630618321', 43, 0.00, 49),
(1468, '5630619321', 4, 3.00, 74),
(1469, '5630619321', 20, 4.00, 85),
(1470, '5630619321', 41, 4.00, 84),
(1471, '5630620321', 5, 3.50, 76),
(1472, '5630620321', 21, 4.00, 88),
(1473, '5630620321', 42, 1.00, 52),
(1474, '5630621321', 6, 3.50, 79),
(1475, '5630621321', 22, 0.00, 49),
(1476, '5630621321', 43, 2.00, 62),
(1477, '5630622321', 7, 4.00, 91),
(1478, '5630622321', 23, 4.00, 95),
(1479, '5630622321', 41, 3.50, 78),
(1480, '5630623321', 8, 2.00, 60),
(1481, '5630623321', 24, 4.00, 85),
(1482, '5630623321', 42, 3.50, 78),
(1483, '5630624321', 1, 4.00, 89),
(1484, '5630624321', 25, 2.50, 67),
(1485, '5630624321', 43, 1.00, 54),
(1486, '5630625321', 2, 1.00, 52),
(1487, '5630625321', 26, 4.00, 87),
(1488, '5630625321', 41, 4.00, 95),
(1489, '5630626321', 3, 4.00, 96),
(1490, '5630626321', 27, 3.00, 70),
(1491, '5630626321', 42, 1.00, 50),
(1492, '5630627321', 4, 3.50, 75),
(1493, '5630627321', 28, 2.50, 69),
(1494, '5630627321', 43, 0.00, 49),
(1495, '5630628321', 5, 4.00, 91),
(1496, '5630628321', 29, 3.00, 73),
(1497, '5630628321', 41, 3.00, 72),
(1498, '5630629321', 6, 4.00, 94),
(1499, '5630629321', 30, 4.00, 80),
(1500, '5630629321', 42, 3.00, 73),
(1501, '5630630321', 7, 2.50, 69),
(1502, '5630630321', 31, 3.00, 72),
(1503, '5630630321', 43, 3.50, 76),
(1504, '5630631321', 8, 4.00, 87),
(1505, '5630631321', 32, 1.00, 52),
(1506, '5630631321', 41, 4.00, 85),
(1507, '5630632321', 1, 1.50, 57),
(1508, '5630632321', 33, 4.00, 100),
(1509, '5630632321', 42, 4.00, 92),
(1510, '5630633321', 2, 1.00, 54),
(1511, '5630633321', 34, 4.00, 82),
(1512, '5630633321', 43, 3.00, 70),
(1513, '5630634321', 3, 3.50, 76),
(1514, '5630634321', 35, 4.00, 82),
(1515, '5630634321', 41, 3.50, 76),
(1516, '5630635321', 4, 4.00, 90),
(1517, '5630635321', 36, 3.00, 74),
(1518, '5630635321', 42, 4.00, 89),
(1519, '5630636321', 5, 4.00, 96),
(1520, '5630636321', 37, 2.00, 63),
(1521, '5630636321', 43, 3.50, 79),
(1522, '5630637321', 6, 3.00, 73),
(1523, '5630637321', 38, 2.50, 69),
(1524, '5630637321', 41, 4.00, 83),
(1525, '5630638321', 7, 1.00, 54),
(1526, '5630638321', 39, 1.50, 58),
(1527, '5630638321', 42, 1.00, 52),
(1528, '5630639321', 8, 1.00, 53),
(1529, '5630639321', 40, 4.00, 99),
(1530, '5630639321', 43, 4.00, 95),
(1531, '5630640321', 1, 3.50, 77),
(1532, '5630640321', 9, 2.50, 65),
(1533, '5630640321', 41, 3.00, 72),
(1534, '5630641321', 2, 1.00, 52),
(1535, '5630641321', 10, 4.00, 96),
(1536, '5630641321', 42, 3.50, 78),
(1537, '5630642321', 3, 3.00, 71),
(1538, '5630642321', 11, 4.00, 85),
(1539, '5630642321', 43, 4.00, 86),
(1540, '5630643321', 4, 3.50, 77),
(1541, '5630643321', 12, 2.00, 61),
(1542, '5630643321', 41, 1.50, 59),
(1543, '5730644321', 5, 1.00, 54),
(1544, '5730644321', 13, 3.00, 73),
(1545, '5730644321', 42, 4.00, 87),
(1546, '5730645321', 6, 4.00, 80),
(1547, '5730645321', 14, 4.00, 83),
(1548, '5730645321', 43, 1.00, 52),
(1549, '5730646321', 7, 2.00, 61),
(1550, '5730646321', 15, 2.50, 66),
(1551, '5730646321', 41, 3.00, 73),
(1552, '5730647321', 8, 3.50, 78),
(1553, '5730647321', 16, 4.00, 81),
(1554, '5730647321', 42, 2.50, 69),
(1555, '5730648321', 1, 1.50, 55),
(1556, '5730648321', 17, 4.00, 83),
(1557, '5730648321', 43, 2.00, 60),
(1558, '5730649321', 2, 2.00, 60),
(1559, '5730649321', 18, 4.00, 87),
(1560, '5730649321', 41, 3.50, 79),
(1561, '5730650321', 3, 4.00, 93),
(1562, '5730650321', 19, 4.00, 90),
(1563, '5730650321', 42, 4.00, 94),
(1564, '5730651321', 4, 1.00, 51),
(1565, '5730651321', 20, 4.00, 95),
(1566, '5730651321', 43, 3.50, 79),
(1567, '5730652321', 5, 4.00, 82),
(1568, '5730652321', 21, 2.00, 63),
(1569, '5730652321', 41, 1.50, 57),
(1570, '5730653321', 6, 3.50, 78),
(1571, '5730653321', 22, 4.00, 82),
(1572, '5730653321', 42, 0.00, 48),
(1573, '5730654321', 7, 1.00, 50),
(1574, '5730654321', 23, 1.50, 58),
(1575, '5730654321', 43, 4.00, 98),
(1576, '5730655321', 8, 3.00, 70),
(1577, '5730655321', 24, 2.50, 65),
(1578, '5730655321', 41, 3.00, 72),
(1579, '5730656321', 1, 1.50, 57),
(1580, '5730656321', 25, 2.00, 61),
(1581, '5730656321', 42, 2.50, 68),
(1582, '5730657321', 2, 4.00, 90),
(1583, '5730657321', 26, 2.50, 69),
(1584, '5730657321', 43, 4.00, 86),
(1585, '5730658321', 3, 1.00, 51),
(1586, '5730658321', 27, 1.50, 58),
(1587, '5730658321', 41, 2.00, 60),
(1588, '5730659321', 4, 3.50, 77),
(1589, '5730659321', 28, 4.00, 85),
(1590, '5730659321', 42, 1.50, 55),
(1591, '5730660321', 5, 4.00, 88),
(1592, '5730660321', 29, 4.00, 99),
(1593, '5730660321', 43, 1.50, 55),
(1594, '5730661321', 6, 3.50, 78),
(1595, '5730661321', 30, 3.50, 78),
(1596, '5730661321', 41, 4.00, 83),
(1597, '5730662321', 7, 4.00, 86),
(1598, '5730662321', 31, 4.00, 99),
(1599, '5730662321', 42, 4.00, 88),
(1600, '5730663321', 8, 4.00, 95),
(1601, '5730663321', 32, 2.00, 63),
(1602, '5730663321', 43, 2.00, 64),
(1603, '5730664321', 1, 4.00, 97),
(1604, '5730664321', 33, 2.50, 65),
(1605, '5730664321', 41, 1.50, 58),
(1606, '5730665321', 2, 1.00, 50),
(1607, '5730665321', 34, 1.50, 57),
(1608, '5730665321', 42, 2.00, 60),
(1609, '5730666321', 3, 2.00, 63),
(1610, '5730666321', 35, 1.50, 56),
(1611, '5730666321', 43, 1.00, 51),
(1612, '5730667321', 4, 2.00, 64),
(1613, '5730667321', 36, 4.00, 95),
(1614, '5730667321', 41, 1.00, 54),
(1615, '5730668321', 5, 4.00, 86),
(1616, '5730668321', 37, 4.00, 88),
(1617, '5730668321', 42, 4.00, 93),
(1618, '5730669321', 6, 4.00, 94),
(1619, '5730669321', 38, 4.00, 86),
(1620, '5730669321', 43, 2.50, 65),
(1621, '5730670321', 7, 3.50, 76),
(1622, '5730670321', 39, 4.00, 97),
(1623, '5730670321', 41, 1.50, 56),
(1624, '5730671321', 8, 1.50, 59),
(1625, '5730671321', 40, 4.00, 89),
(1626, '5730671321', 42, 1.50, 59),
(1627, '5730672321', 1, 4.00, 82),
(1628, '5730672321', 9, 1.50, 56),
(1629, '5730672321', 43, 4.00, 96),
(1630, '5730673321', 2, 2.00, 60),
(1631, '5730673321', 10, 2.00, 62),
(1632, '5730673321', 41, 2.50, 66),
(1633, '5730674321', 3, 4.00, 89),
(1634, '5730674321', 11, 4.00, 97),
(1635, '5730674321', 42, 4.00, 80),
(1636, '5730675321', 4, 3.50, 76),
(1637, '5730675321', 12, 4.00, 86),
(1638, '5730675321', 43, 4.00, 89),
(1639, '5730676321', 5, 4.00, 88),
(1640, '5730676321', 13, 4.00, 97),
(1641, '5730676321', 41, 4.00, 80),
(1642, '5730677321', 6, 4.00, 87),
(1643, '5730677321', 14, 2.50, 65),
(1644, '5730677321', 42, 2.00, 60),
(1645, '5730678321', 7, 4.00, 88),
(1646, '5730678321', 15, 2.00, 64),
(1647, '5730678321', 43, 2.50, 69),
(1648, '5730679321', 8, 4.00, 83),
(1649, '5730679321', 16, 1.00, 50),
(1650, '5730679321', 41, 3.00, 71),
(1651, '5730680321', 1, 3.50, 78),
(1652, '5730680321', 17, 4.00, 99),
(1653, '5730680321', 42, 4.00, 88),
(1654, '5730681321', 2, 3.50, 79),
(1655, '5730681321', 18, 4.00, 98),
(1656, '5730681321', 43, 2.50, 66),
(1657, '5730682321', 3, 4.00, 90),
(1658, '5730682321', 19, 4.00, 87),
(1659, '5730682321', 41, 1.00, 53),
(1660, '5730683321', 4, 3.50, 75),
(1661, '5730683321', 20, 3.00, 73),
(1662, '5730683321', 42, 2.50, 67),
(1663, '5730684321', 5, 1.50, 55),
(1664, '5730684321', 21, 4.00, 85),
(1665, '5730684321', 43, 4.00, 82),
(1666, '5730685321', 6, 3.00, 70),
(1667, '5730685321', 22, 4.00, 82),
(1668, '5730685321', 41, 4.00, 80),
(1669, '5730686321', 7, 4.00, 82),
(1670, '5730686321', 23, 2.50, 67),
(1671, '5730686321', 42, 4.00, 86),
(1672, '5730687321', 8, 3.00, 73),
(1673, '5730687321', 24, 2.50, 65),
(1674, '5730687321', 43, 1.50, 59),
(1675, '5730688321', 1, 4.00, 99),
(1676, '5730688321', 25, 0.00, 49),
(1677, '5730688321', 41, 0.00, 49),
(1678, '5730689321', 2, 2.50, 68),
(1679, '5730689321', 26, 3.00, 72),
(1680, '5730689321', 42, 3.00, 71),
(1681, '5730690321', 3, 3.50, 79),
(1682, '5730690321', 27, 4.00, 93),
(1683, '5730690321', 43, 4.00, 90),
(1684, '5730691321', 4, 3.00, 73),
(1685, '5730691321', 28, 2.50, 67),
(1686, '5730691321', 41, 1.00, 54),
(1687, '5730692321', 5, 1.00, 53),
(1688, '5730692321', 29, 2.50, 66),
(1689, '5730692321', 42, 1.50, 58),
(1690, '5730693321', 6, 1.50, 55),
(1691, '5730693321', 30, 4.00, 96),
(1692, '5730693321', 43, 4.00, 87),
(1693, '5730694321', 7, 3.00, 70),
(1694, '5730694321', 31, 2.50, 67),
(1695, '5730694321', 41, 2.50, 68),
(1696, '5730695321', 8, 4.00, 96),
(1697, '5730695321', 32, 4.00, 94),
(1698, '5730695321', 42, 4.00, 89),
(1699, '5730696321', 1, 1.00, 51),
(1700, '5730696321', 33, 3.50, 78),
(1701, '5730696321', 43, 4.00, 97),
(1702, '5730697321', 2, 4.00, 93),
(1703, '5730697321', 34, 1.00, 51),
(1704, '5730697321', 41, 4.00, 96),
(1705, '5730698321', 3, 2.50, 69),
(1706, '5730698321', 35, 3.50, 76),
(1707, '5730698321', 42, 4.00, 99),
(1708, '5730699321', 4, 4.00, 84),
(1709, '5730699321', 36, 4.00, 82),
(1710, '5730699321', 43, 2.50, 65),
(1711, '5730700321', 5, 4.00, 95),
(1712, '5730700321', 37, 1.00, 53),
(1713, '5730700321', 41, 3.50, 75),
(1714, '5730701321', 6, 1.50, 57),
(1715, '5730701321', 38, 2.50, 69),
(1716, '5730701321', 42, 4.00, 94),
(1717, '5730702321', 7, 2.50, 65),
(1718, '5730702321', 39, 3.50, 76),
(1719, '5730702321', 43, 4.00, 81),
(1720, '5730703321', 8, 1.50, 59),
(1721, '5730703321', 40, 4.00, 98),
(1722, '5730703321', 41, 2.50, 69),
(1723, '5730704321', 1, 1.00, 54),
(1724, '5730704321', 9, 4.00, 93),
(1725, '5730704321', 42, 4.00, 86),
(1726, '5730705321', 2, 2.00, 61),
(1727, '5730705321', 10, 0.00, 48),
(1728, '5730705321', 43, 0.00, 48),
(1729, '5730706321', 3, 3.00, 74),
(1730, '5730706321', 11, 0.00, 49),
(1731, '5730706321', 41, 4.00, 93),
(1732, '5730707321', 4, 2.50, 69),
(1733, '5730707321', 12, 3.50, 79),
(1734, '5730707321', 42, 1.50, 58),
(1735, '5730708321', 5, 4.00, 89),
(1736, '5730708321', 13, 2.00, 60),
(1737, '5730708321', 43, 4.00, 93),
(1738, '5730709321', 6, 4.00, 87),
(1739, '5730709321', 14, 2.50, 67),
(1740, '5730709321', 41, 2.00, 60),
(1741, '5730710321', 7, 4.00, 82),
(1742, '5730710321', 15, 1.50, 55),
(1743, '5730710321', 42, 4.00, 85),
(1744, '5730711321', 8, 4.00, 81),
(1745, '5730711321', 16, 4.00, 91),
(1746, '5730711321', 43, 2.50, 66),
(1747, '5730712321', 1, 2.50, 68),
(1748, '5730712321', 17, 1.50, 55),
(1749, '5730712321', 41, 4.00, 84),
(1750, '5730713321', 2, 4.00, 92),
(1751, '5730713321', 18, 3.50, 75),
(1752, '5730713321', 42, 4.00, 99),
(1753, '5730714321', 3, 1.00, 53),
(1754, '5730714321', 19, 3.50, 77),
(1755, '5730714321', 43, 4.00, 84),
(1756, '5730715321', 4, 4.00, 92),
(1757, '5730715321', 20, 3.00, 70),
(1758, '5730715321', 41, 0.00, 48),
(1759, '5730716321', 5, 4.00, 100),
(1760, '5730716321', 21, 4.00, 99),
(1761, '5730716321', 42, 3.00, 73),
(1762, '5730717321', 6, 1.50, 55),
(1763, '5730717321', 22, 0.00, 49),
(1764, '5730717321', 43, 1.00, 53),
(1765, '5730718321', 7, 4.00, 80),
(1766, '5730718321', 23, 3.00, 70),
(1767, '5730718321', 41, 4.00, 93),
(1768, '5730719321', 8, 3.00, 70),
(1769, '5730719321', 24, 4.00, 84),
(1770, '5730719321', 42, 4.00, 92),
(1771, '5730720321', 1, 1.00, 54),
(1772, '5730720321', 25, 4.00, 83),
(1773, '5730720321', 43, 0.00, 49),
(1774, '5730721321', 2, 4.00, 92),
(1775, '5730721321', 26, 4.00, 94),
(1776, '5730721321', 41, 1.00, 50),
(1777, '5730722321', 3, 3.00, 73),
(1778, '5730722321', 27, 2.50, 69),
(1779, '5730722321', 42, 4.00, 87),
(1780, '5730723321', 4, 2.00, 62),
(1781, '5730723321', 28, 2.50, 69),
(1782, '5730723321', 43, 4.00, 100),
(1783, '5730724321', 5, 4.00, 90),
(1784, '5730724321', 29, 3.50, 79),
(1785, '5730724321', 41, 4.00, 80),
(1786, '5730725321', 6, 3.50, 78),
(1787, '5730725321', 30, 4.00, 82),
(1788, '5730725321', 42, 4.00, 85),
(1789, '5730726321', 7, 3.00, 73),
(1790, '5730726321', 31, 4.00, 81),
(1791, '5730726321', 43, 2.50, 67),
(1792, '5730727321', 8, 4.00, 91),
(1793, '5730727321', 32, 4.00, 92),
(1794, '5730727321', 41, 1.50, 55),
(1795, '5730728321', 1, 3.50, 77),
(1796, '5730728321', 33, 4.00, 83),
(1797, '5730728321', 42, 0.00, 49),
(1798, '5730729321', 2, 3.50, 76),
(1799, '5730729321', 34, 2.50, 65),
(1800, '5730729321', 43, 3.00, 73),
(1801, '5730730321', 3, 4.00, 95),
(1802, '5730730321', 35, 4.00, 90),
(1803, '5730730321', 41, 2.00, 61),
(1804, '5730731321', 4, 4.00, 98),
(1805, '5730731321', 36, 4.00, 89),
(1806, '5730731321', 42, 2.50, 69),
(1807, '5730732321', 5, 3.00, 71),
(1808, '5730732321', 37, 2.50, 65),
(1809, '5730732321', 43, 3.50, 76),
(1810, '5730733321', 6, 2.50, 65),
(1811, '5730733321', 38, 3.00, 73),
(1812, '5730733321', 41, 2.00, 63),
(1813, '5730734321', 7, 3.00, 74),
(1814, '5730734321', 39, 0.00, 49),
(1815, '5730734321', 42, 3.00, 72),
(1816, '5730735321', 8, 1.00, 52),
(1817, '5730735321', 40, 3.50, 75),
(1818, '5730735321', 43, 3.00, 73),
(1819, '5730736321', 1, 4.00, 99),
(1820, '5730736321', 9, 3.00, 70),
(1821, '5730736321', 41, 4.00, 97),
(1822, '5730737321', 2, 1.50, 55),
(1823, '5730737321', 10, 1.00, 53),
(1824, '5730737321', 42, 3.50, 76),
(1825, '5730738321', 3, 3.50, 78),
(1826, '5730738321', 11, 4.00, 100),
(1827, '5730738321', 43, 3.00, 73),
(1828, '5730739321', 4, 1.00, 54),
(1829, '5730739321', 12, 4.00, 91),
(1830, '5730739321', 41, 3.00, 74),
(1831, '5730740321', 5, 1.50, 56),
(1832, '5730740321', 13, 3.00, 70),
(1833, '5730740321', 42, 3.00, 73),
(1834, '5730741321', 6, 4.00, 81),
(1835, '5730741321', 14, 4.00, 88),
(1836, '5730741321', 43, 1.00, 54),
(1837, '5730742321', 7, 4.00, 96),
(1838, '5730742321', 15, 4.00, 93),
(1839, '5730742321', 41, 2.50, 67),
(1840, '5730743321', 8, 3.00, 73),
(1841, '5730743321', 16, 4.00, 99),
(1842, '5730743321', 42, 1.50, 55),
(1843, '5830744321', 1, 3.50, 78),
(1844, '5830744321', 17, 1.50, 57),
(1845, '5830744321', 43, 4.00, 99),
(1846, '5830745321', 2, 4.00, 98),
(1847, '5830745321', 18, 3.00, 73),
(1848, '5830745321', 41, 3.00, 72),
(1849, '5830746321', 3, 4.00, 89),
(1850, '5830746321', 19, 2.00, 61),
(1851, '5830746321', 42, 4.00, 83),
(1852, '5830747321', 4, 1.00, 50),
(1853, '5830747321', 20, 4.00, 87),
(1854, '5830747321', 43, 3.50, 76),
(1855, '5830748321', 5, 2.00, 60),
(1856, '5830748321', 21, 1.50, 55),
(1857, '5830748321', 41, 4.00, 84),
(1858, '5830749321', 6, 4.00, 87),
(1859, '5830749321', 22, 4.00, 88),
(1860, '5830749321', 42, 3.00, 72),
(1861, '5830750321', 7, 4.00, 99),
(1862, '5830750321', 23, 2.50, 66),
(1863, '5830750321', 43, 2.50, 68),
(1864, '5830751321', 8, 2.00, 60),
(1865, '5830751321', 24, 3.00, 71),
(1866, '5830751321', 41, 2.50, 66),
(1867, '5830752321', 1, 4.00, 82),
(1868, '5830752321', 25, 1.50, 57),
(1869, '5830752321', 42, 3.00, 70),
(1870, '5830753321', 2, 1.50, 57),
(1871, '5830753321', 26, 4.00, 84),
(1872, '5830753321', 43, 3.00, 74),
(1873, '5830754321', 3, 4.00, 88),
(1874, '5830754321', 27, 4.00, 91),
(1875, '5830754321', 41, 1.00, 51),
(1876, '5830755321', 4, 4.00, 98),
(1877, '5830755321', 28, 4.00, 91),
(1878, '5830755321', 42, 4.00, 86),
(1879, '5830756321', 5, 4.00, 94),
(1880, '5830756321', 29, 4.00, 85),
(1881, '5830756321', 43, 3.00, 70),
(1882, '5830757321', 6, 4.00, 95),
(1883, '5830757321', 30, 4.00, 87),
(1884, '5830757321', 41, 3.50, 75),
(1885, '5830758321', 7, 4.00, 97),
(1886, '5830758321', 31, 4.00, 89),
(1887, '5830758321', 42, 4.00, 86),
(1888, '5830759321', 8, 3.50, 79),
(1889, '5830759321', 32, 1.50, 57),
(1890, '5830759321', 43, 2.50, 66),
(1891, '5830760321', 1, 3.00, 71),
(1892, '5830760321', 33, 4.00, 82),
(1893, '5830760321', 41, 3.00, 74),
(1894, '5830761321', 2, 1.00, 52),
(1895, '5830761321', 34, 4.00, 99),
(1896, '5830761321', 42, 4.00, 96),
(1897, '5830762321', 3, 4.00, 88),
(1898, '5830762321', 35, 4.00, 97),
(1899, '5830762321', 43, 4.00, 96),
(1900, '5830763321', 4, 1.00, 53),
(1901, '5830763321', 36, 2.00, 63),
(1902, '5830763321', 41, 2.50, 67),
(1903, '5830764321', 5, 2.50, 67),
(1904, '5830764321', 37, 2.50, 69),
(1905, '5830764321', 42, 4.00, 97),
(1906, '5830765321', 6, 2.50, 67),
(1907, '5830765321', 38, 4.00, 96),
(1908, '5830765321', 43, 3.50, 79),
(1909, '5830766321', 7, 1.00, 50),
(1910, '5830766321', 39, 2.50, 69),
(1911, '5830766321', 41, 4.00, 82),
(1912, '5830767321', 8, 4.00, 92),
(1913, '5830767321', 40, 3.00, 71),
(1914, '5830767321', 42, 3.00, 70),
(1915, '5830768321', 1, 1.50, 57),
(1916, '5830768321', 9, 4.00, 94),
(1917, '5830768321', 43, 3.00, 74),
(1918, '5830769321', 2, 4.00, 96),
(1919, '5830769321', 10, 3.50, 79),
(1920, '5830769321', 41, 4.00, 98),
(1921, '5830770321', 3, 1.00, 50),
(1922, '5830770321', 11, 4.00, 92),
(1923, '5830770321', 42, 3.00, 73),
(1924, '5830771321', 4, 4.00, 86),
(1925, '5830771321', 12, 3.00, 70),
(1926, '5830771321', 43, 4.00, 84),
(1927, '5830772321', 5, 4.00, 97),
(1928, '5830772321', 13, 3.00, 73),
(1929, '5830772321', 41, 3.00, 72),
(1930, '5830773321', 6, 2.50, 68),
(1931, '5830773321', 14, 3.50, 77),
(1932, '5830773321', 42, 4.00, 95),
(1933, '5830774321', 7, 3.50, 76),
(1934, '5830774321', 15, 3.00, 71),
(1935, '5830774321', 43, 3.00, 70),
(1936, '5830775321', 8, 1.50, 58),
(1937, '5830775321', 16, 3.00, 73),
(1938, '5830775321', 41, 4.00, 90),
(1939, '5830776321', 1, 1.50, 55),
(1940, '5830776321', 17, 1.00, 53),
(1941, '5830776321', 42, 4.00, 81),
(1942, '5830777321', 2, 4.00, 97),
(1943, '5830777321', 18, 4.00, 90),
(1944, '5830777321', 43, 4.00, 92),
(1945, '5830778321', 3, 4.00, 92),
(1946, '5830778321', 19, 4.00, 91),
(1947, '5830778321', 41, 0.00, 48),
(1948, '5830779321', 4, 1.00, 54),
(1949, '5830779321', 20, 3.00, 71),
(1950, '5830779321', 42, 4.00, 97),
(1951, '5830780321', 5, 4.00, 92),
(1952, '5830780321', 21, 1.50, 56),
(1953, '5830780321', 43, 2.00, 62),
(1954, '5830781321', 6, 1.50, 59),
(1955, '5830781321', 22, 4.00, 95),
(1956, '5830781321', 41, 4.00, 84),
(1957, '5830782321', 7, 4.00, 85),
(1958, '5830782321', 23, 1.50, 56),
(1959, '5830782321', 42, 2.00, 62),
(1960, '5830783321', 8, 4.00, 96),
(1961, '5830783321', 24, 3.50, 77),
(1962, '5830783321', 43, 4.00, 86),
(1963, '5830784321', 1, 3.50, 77),
(1964, '5830784321', 25, 3.50, 77),
(1965, '5830784321', 41, 1.50, 57),
(1966, '5830785321', 2, 2.50, 68),
(1967, '5830785321', 26, 4.00, 93),
(1968, '5830785321', 42, 4.00, 92),
(1969, '5830786321', 3, 2.50, 69),
(1970, '5830786321', 27, 1.00, 53),
(1971, '5830786321', 43, 4.00, 87),
(1972, '5830787321', 4, 3.00, 74),
(1973, '5830787321', 28, 4.00, 80),
(1974, '5830787321', 41, 2.50, 66),
(1975, '5830788321', 5, 2.50, 65),
(1976, '5830788321', 29, 4.00, 85),
(1977, '5830788321', 42, 4.00, 80),
(1978, '5830789321', 6, 1.00, 52),
(1979, '5830789321', 30, 1.50, 59),
(1980, '5830789321', 43, 1.50, 59),
(1981, '5830790321', 7, 4.00, 87),
(1982, '5830790321', 31, 4.00, 90),
(1983, '5830790321', 41, 3.00, 72),
(1984, '5830791321', 8, 2.00, 61),
(1985, '5830791321', 32, 4.00, 95),
(1986, '5830791321', 42, 3.00, 72),
(1987, '5830792321', 1, 4.00, 84),
(1988, '5830792321', 33, 3.50, 75),
(1989, '5830792321', 43, 2.50, 67),
(1990, '5830793321', 2, 3.00, 74),
(1991, '5830793321', 34, 4.00, 100),
(1992, '5830793321', 41, 1.50, 59),
(1993, '5830794321', 3, 0.00, 48),
(1994, '5830794321', 35, 4.00, 97),
(1995, '5830794321', 42, 4.00, 98),
(1996, '5830795321', 4, 1.00, 53),
(1997, '5830795321', 36, 1.50, 57),
(1998, '5830795321', 43, 1.50, 58),
(1999, '5830796321', 5, 4.00, 83),
(2000, '5830796321', 37, 2.50, 68),
(2001, '5830796321', 41, 4.00, 85),
(2002, '5830797321', 6, 2.00, 62),
(2003, '5830797321', 38, 4.00, 86),
(2004, '5830797321', 42, 4.00, 88),
(2005, '5830798321', 7, 4.00, 98),
(2006, '5830798321', 39, 4.00, 81),
(2007, '5830798321', 43, 2.00, 60),
(2008, '5830799321', 8, 3.00, 72),
(2009, '5830799321', 40, 4.00, 87),
(2010, '5830799321', 41, 2.00, 60),
(2011, '5830800321', 1, 4.00, 89),
(2012, '5830800321', 9, 1.50, 59),
(2013, '5830800321', 42, 3.00, 71),
(2014, '5830801321', 2, 3.50, 77),
(2015, '5830801321', 10, 3.00, 72),
(2016, '5830801321', 43, 1.50, 59),
(2017, '5830802321', 3, 4.00, 94),
(2018, '5830802321', 11, 3.50, 78),
(2019, '5830802321', 41, 4.00, 93),
(2020, '5830803321', 4, 1.50, 59),
(2021, '5830803321', 12, 2.50, 68),
(2022, '5830803321', 42, 4.00, 86),
(2023, '5830804321', 5, 1.00, 52),
(2024, '5830804321', 13, 2.50, 69),
(2025, '5830804321', 43, 4.00, 92),
(2026, '5830805321', 6, 0.00, 48),
(2027, '5830805321', 14, 4.00, 85),
(2028, '5830805321', 41, 3.50, 76),
(2029, '5830806321', 7, 3.50, 77),
(2030, '5830806321', 15, 4.00, 95),
(2031, '5830806321', 42, 4.00, 92),
(2032, '5830807321', 8, 4.00, 89),
(2033, '5830807321', 16, 2.50, 68),
(2034, '5830807321', 43, 2.50, 65),
(2035, '5830808321', 1, 1.00, 52),
(2036, '5830808321', 17, 4.00, 95),
(2037, '5830808321', 41, 4.00, 83),
(2038, '5830809321', 2, 4.00, 90),
(2039, '5830809321', 18, 3.50, 75),
(2040, '5830809321', 42, 1.00, 52),
(2041, '5830810321', 3, 2.00, 62),
(2042, '5830810321', 19, 2.00, 61),
(2043, '5830810321', 43, 4.00, 86),
(2044, '5830811321', 4, 1.00, 51),
(2045, '5830811321', 20, 3.50, 75),
(2046, '5830811321', 41, 1.50, 58),
(2047, '5830812321', 5, 4.00, 91),
(2048, '5830812321', 21, 1.00, 51),
(2049, '5830812321', 42, 2.00, 60),
(2050, '5830813321', 6, 3.50, 77),
(2051, '5830813321', 22, 2.50, 69),
(2052, '5830813321', 43, 4.00, 90),
(2053, '5830814321', 7, 4.00, 90),
(2054, '5830814321', 23, 4.00, 92),
(2055, '5830814321', 41, 3.50, 76),
(2056, '5830815321', 8, 3.00, 73),
(2057, '5830815321', 24, 1.00, 50),
(2058, '5830815321', 42, 4.00, 99),
(2059, '5830816321', 1, 4.00, 92),
(2060, '5830816321', 25, 4.00, 91),
(2061, '5830816321', 43, 2.00, 64),
(2062, '5830817321', 2, 3.00, 72),
(2063, '5830817321', 26, 2.50, 69),
(2064, '5830817321', 41, 1.00, 51),
(2065, '5830818321', 3, 3.00, 71),
(2066, '5830818321', 27, 2.00, 61),
(2067, '5830818321', 42, 4.00, 91),
(2068, '5830819321', 4, 4.00, 96),
(2069, '5830819321', 28, 4.00, 89),
(2070, '5830819321', 43, 4.00, 92),
(2071, '5830820321', 5, 1.50, 56),
(2072, '5830820321', 29, 3.50, 78),
(2073, '5830820321', 41, 1.50, 56),
(2074, '5830821321', 6, 1.50, 56),
(2075, '5830821321', 30, 1.00, 50),
(2076, '5830821321', 42, 4.00, 90),
(2077, '5830822321', 7, 4.00, 98),
(2078, '5830822321', 31, 4.00, 85),
(2079, '5830822321', 43, 3.50, 78),
(2080, '5830823321', 8, 4.00, 89),
(2081, '5830823321', 32, 4.00, 99),
(2082, '5830823321', 41, 3.00, 70),
(2083, '5830824321', 1, 2.00, 64),
(2084, '5830824321', 33, 2.00, 61),
(2085, '5830824321', 42, 3.50, 79),
(2086, '5830825321', 2, 4.00, 90),
(2087, '5830825321', 34, 2.50, 68),
(2088, '5830825321', 43, 2.50, 69),
(2089, '5830826321', 3, 4.00, 81),
(2090, '5830826321', 35, 4.00, 91),
(2091, '5830826321', 41, 2.50, 66),
(2092, '5830827321', 4, 4.00, 100),
(2093, '5830827321', 36, 3.00, 71),
(2094, '5830827321', 42, 4.00, 96),
(2095, '5830828321', 5, 2.50, 65),
(2096, '5830828321', 37, 1.50, 59),
(2097, '5830828321', 43, 4.00, 93),
(2098, '5830829321', 6, 1.00, 51),
(2099, '5830829321', 38, 4.00, 96),
(2100, '5830829321', 41, 4.00, 90),
(2101, '5830830321', 7, 2.00, 61),
(2102, '5830830321', 39, 4.00, 87),
(2103, '5830830321', 42, 1.50, 58),
(2104, '5830831321', 8, 4.00, 98),
(2105, '5830831321', 40, 3.00, 70),
(2106, '5830831321', 43, 4.00, 97),
(2107, '5830832321', 1, 4.00, 87),
(2108, '5830832321', 9, 2.50, 69),
(2109, '5830832321', 41, 4.00, 88),
(2110, '5830833321', 2, 1.00, 52),
(2111, '5830833321', 10, 4.00, 84),
(2112, '5830833321', 42, 2.50, 67),
(2113, '5830834321', 3, 1.00, 52),
(2114, '5830834321', 11, 1.50, 56),
(2115, '5830834321', 43, 4.00, 80),
(2116, '5830835321', 4, 3.50, 78),
(2117, '5830835321', 12, 4.00, 87),
(2118, '5830835321', 41, 4.00, 82),
(2119, '5830836321', 5, 3.50, 79),
(2120, '5830836321', 13, 1.50, 59),
(2121, '5830836321', 42, 3.50, 78),
(2122, '5830837321', 6, 3.50, 75),
(2123, '5830837321', 14, 2.00, 60),
(2124, '5830837321', 43, 1.00, 50),
(2125, '5830838321', 7, 4.00, 97),
(2126, '5830838321', 15, 2.00, 60),
(2127, '5830838321', 41, 4.00, 82),
(2128, '5830839321', 8, 2.00, 61),
(2129, '5830839321', 16, 4.00, 83),
(2130, '5830839321', 42, 4.00, 87),
(2131, '5830840321', 1, 2.50, 68),
(2132, '5830840321', 17, 3.50, 77),
(2133, '5830840321', 43, 1.00, 52),
(2134, '5830841321', 2, 3.50, 76),
(2135, '5830841321', 18, 3.50, 79),
(2136, '5830841321', 41, 1.50, 58),
(2137, '5830842321', 3, 1.00, 52),
(2138, '5830842321', 19, 3.50, 78),
(2139, '5830842321', 42, 4.00, 91),
(2140, '5830843321', 4, 4.00, 95),
(2141, '5830843321', 20, 4.00, 98),
(2142, '5830843321', 43, 2.50, 66),
(2143, '5930844321', 5, 1.50, 57),
(2144, '5930844321', 21, 4.00, 92),
(2145, '5930844321', 41, 3.50, 78),
(2146, '5930845321', 6, 4.00, 89),
(2147, '5930845321', 22, 2.00, 62),
(2148, '5930845321', 42, 4.00, 89),
(2149, '5930846321', 7, 2.00, 62),
(2150, '5930846321', 23, 2.50, 68),
(2151, '5930846321', 43, 1.50, 57),
(2152, '5930847321', 8, 4.00, 96),
(2153, '5930847321', 24, 4.00, 96),
(2154, '5930847321', 41, 1.00, 53),
(2155, '5930848321', 1, 3.00, 74),
(2156, '5930848321', 25, 4.00, 99),
(2157, '5930848321', 42, 4.00, 91),
(2158, '5930849321', 2, 3.00, 70),
(2159, '5930849321', 26, 2.50, 65),
(2160, '5930849321', 43, 1.50, 56),
(2161, '5930850321', 3, 4.00, 92),
(2162, '5930850321', 27, 2.00, 63),
(2163, '5930850321', 41, 2.00, 61),
(2164, '5930851321', 4, 1.50, 58),
(2165, '5930851321', 28, 2.00, 64),
(2166, '5930851321', 42, 1.50, 58),
(2167, '5930852321', 5, 2.50, 67),
(2168, '5930852321', 29, 2.50, 65),
(2169, '5930852321', 43, 1.00, 53),
(2170, '5930853321', 6, 1.00, 53),
(2171, '5930853321', 30, 2.00, 62),
(2172, '5930853321', 41, 2.00, 61),
(2173, '5930854321', 7, 3.50, 75),
(2174, '5930854321', 31, 3.00, 73),
(2175, '5930854321', 42, 1.00, 51),
(2176, '5930855321', 8, 1.50, 57),
(2177, '5930855321', 32, 3.00, 71),
(2178, '5930855321', 43, 2.00, 62),
(2179, '5930856321', 1, 2.00, 64),
(2180, '5930856321', 33, 4.00, 93),
(2181, '5930856321', 41, 1.50, 58),
(2182, '5930857321', 2, 4.00, 100),
(2183, '5930857321', 34, 1.50, 55),
(2184, '5930857321', 42, 3.00, 72),
(2185, '5930858321', 3, 4.00, 80),
(2186, '5930858321', 35, 3.50, 78),
(2187, '5930858321', 43, 1.50, 55),
(2188, '5930859321', 4, 4.00, 88),
(2189, '5930859321', 36, 1.00, 51),
(2190, '5930859321', 41, 3.00, 74),
(2191, '5930860321', 5, 2.50, 68),
(2192, '5930860321', 37, 4.00, 97),
(2193, '5930860321', 42, 2.50, 68),
(2194, '5930861321', 6, 4.00, 86),
(2195, '5930861321', 38, 3.00, 73),
(2196, '5930861321', 43, 4.00, 86),
(2197, '5930862321', 7, 4.00, 96),
(2198, '5930862321', 39, 4.00, 87),
(2199, '5930862321', 41, 3.50, 75),
(2200, '5930863321', 8, 2.50, 65),
(2201, '5930863321', 40, 3.00, 73),
(2202, '5930863321', 42, 3.00, 74),
(2203, '5930864321', 1, 1.00, 53),
(2204, '5930864321', 9, 3.00, 73),
(2205, '5930864321', 43, 3.00, 72),
(2206, '5930865321', 2, 3.00, 73),
(2207, '5930865321', 10, 2.00, 64),
(2208, '5930865321', 41, 2.50, 69),
(2209, '5930866321', 3, 4.00, 83),
(2210, '5930866321', 11, 4.00, 82),
(2211, '5930866321', 42, 4.00, 86),
(2212, '5930867321', 4, 4.00, 90),
(2213, '5930867321', 12, 3.00, 73),
(2214, '5930867321', 43, 3.00, 72),
(2215, '5930868321', 5, 3.00, 73),
(2216, '5930868321', 13, 4.00, 96),
(2217, '5930868321', 41, 4.00, 85),
(2218, '5930869321', 6, 4.00, 95),
(2219, '5930869321', 14, 1.50, 55),
(2220, '5930869321', 42, 3.00, 70),
(2221, '5930870321', 7, 4.00, 85),
(2222, '5930870321', 15, 3.00, 71),
(2223, '5930870321', 43, 4.00, 91),
(2224, '5930871321', 8, 3.50, 79),
(2225, '5930871321', 16, 2.00, 64),
(2226, '5930871321', 41, 0.00, 49),
(2227, '5930872321', 1, 1.00, 52),
(2228, '5930872321', 17, 1.00, 53),
(2229, '5930872321', 42, 4.00, 94),
(2230, '5930873321', 2, 1.50, 56),
(2231, '5930873321', 18, 1.00, 50),
(2232, '5930873321', 43, 1.50, 58),
(2233, '5930874321', 3, 2.00, 61),
(2234, '5930874321', 19, 4.00, 88),
(2235, '5930874321', 41, 2.00, 63),
(2236, '5930875321', 4, 3.50, 79),
(2237, '5930875321', 20, 4.00, 89),
(2238, '5930875321', 42, 2.50, 67),
(2239, '5930876321', 5, 4.00, 96),
(2240, '5930876321', 21, 3.00, 74),
(2241, '5930876321', 43, 2.00, 63),
(2242, '5930877321', 6, 4.00, 94),
(2243, '5930877321', 22, 3.50, 75),
(2244, '5930877321', 41, 4.00, 81),
(2245, '5930878321', 7, 1.50, 55),
(2246, '5930878321', 23, 4.00, 91),
(2247, '5930878321', 42, 1.50, 58),
(2248, '5930879321', 8, 1.50, 59),
(2249, '5930879321', 24, 1.50, 56),
(2250, '5930879321', 43, 1.00, 53),
(2251, '5930880321', 1, 3.50, 76),
(2252, '5930880321', 25, 4.00, 99),
(2253, '5930880321', 41, 4.00, 85),
(2254, '5930881321', 2, 2.00, 61),
(2255, '5930881321', 26, 4.00, 81),
(2256, '5930881321', 42, 1.00, 54),
(2257, '5930882321', 3, 4.00, 80),
(2258, '5930882321', 27, 1.50, 59),
(2259, '5930882321', 43, 1.00, 51),
(2260, '5930883321', 4, 2.50, 67),
(2261, '5930883321', 28, 2.00, 60),
(2262, '5930883321', 41, 3.00, 71),
(2263, '5930884321', 5, 4.00, 98),
(2264, '5930884321', 29, 4.00, 98),
(2265, '5930884321', 42, 2.50, 69),
(2266, '5930885321', 6, 4.00, 96),
(2267, '5930885321', 30, 4.00, 93),
(2268, '5930885321', 43, 3.50, 78),
(2269, '5930886321', 7, 3.00, 72),
(2270, '5930886321', 31, 1.00, 54),
(2271, '5930886321', 41, 4.00, 96),
(2272, '5930887321', 8, 3.00, 72),
(2273, '5930887321', 32, 2.00, 62),
(2274, '5930887321', 42, 0.00, 48),
(2275, '5930888321', 1, 4.00, 84),
(2276, '5930888321', 33, 2.50, 65),
(2277, '5930888321', 43, 1.50, 56),
(2278, '5930889321', 2, 1.00, 50),
(2279, '5930889321', 34, 2.00, 63),
(2280, '5930889321', 41, 2.50, 69),
(2281, '5930890321', 3, 4.00, 100),
(2282, '5930890321', 35, 1.50, 58),
(2283, '5930890321', 42, 2.00, 63),
(2284, '5930891321', 4, 2.50, 68),
(2285, '5930891321', 36, 1.00, 52),
(2286, '5930891321', 43, 4.00, 98),
(2287, '5930892321', 5, 4.00, 90),
(2288, '5930892321', 37, 3.50, 75),
(2289, '5930892321', 41, 2.00, 63),
(2290, '5930893321', 6, 2.00, 61),
(2291, '5930893321', 38, 3.00, 70),
(2292, '5930893321', 42, 3.50, 75),
(2293, '5930894321', 7, 4.00, 98),
(2294, '5930894321', 39, 3.50, 79),
(2295, '5930894321', 43, 1.50, 59),
(2296, '5930895321', 8, 3.50, 78),
(2297, '5930895321', 40, 4.00, 96),
(2298, '5930895321', 41, 4.00, 97),
(2299, '5930896321', 1, 4.00, 91),
(2300, '5930896321', 9, 3.00, 71),
(2301, '5930896321', 42, 3.50, 76),
(2302, '5930897321', 2, 4.00, 87),
(2303, '5930897321', 10, 2.00, 63),
(2304, '5930897321', 43, 2.00, 64),
(2305, '5930898321', 3, 4.00, 81),
(2306, '5930898321', 11, 4.00, 100),
(2307, '5930898321', 41, 2.00, 60),
(2308, '5930899321', 4, 4.00, 96),
(2309, '5930899321', 12, 3.50, 78),
(2310, '5930899321', 42, 1.50, 55),
(2311, '5930900321', 5, 4.00, 87),
(2312, '5930900321', 13, 3.00, 72),
(2313, '5930900321', 43, 1.50, 58),
(2314, '5930901321', 6, 1.50, 56),
(2315, '5930901321', 14, 3.00, 70),
(2316, '5930901321', 41, 4.00, 84),
(2317, '5930902321', 7, 4.00, 92),
(2318, '5930902321', 15, 3.50, 75),
(2319, '5930902321', 42, 2.50, 67),
(2320, '5930903321', 8, 4.00, 90),
(2321, '5930903321', 16, 2.50, 65),
(2322, '5930903321', 43, 1.50, 58),
(2323, '5930904321', 1, 1.50, 55),
(2324, '5930904321', 17, 3.50, 75),
(2325, '5930904321', 41, 1.00, 50),
(2326, '5930905321', 2, 4.00, 82),
(2327, '5930905321', 18, 4.00, 94),
(2328, '5930905321', 42, 1.00, 52),
(2329, '5930906321', 3, 4.00, 91),
(2330, '5930906321', 19, 4.00, 92),
(2331, '5930906321', 43, 1.50, 55),
(2332, '5930907321', 4, 1.50, 56),
(2333, '5930907321', 20, 4.00, 99),
(2334, '5930907321', 41, 2.00, 61),
(2335, '5930908321', 5, 0.00, 49),
(2336, '5930908321', 21, 0.00, 49),
(2337, '5930908321', 42, 2.50, 67),
(2338, '5930909321', 6, 4.00, 93),
(2339, '5930909321', 22, 1.50, 56),
(2340, '5930909321', 43, 2.50, 67),
(2341, '5930910321', 7, 2.50, 67),
(2342, '5930910321', 23, 1.00, 54),
(2343, '5930910321', 41, 3.50, 79),
(2344, '5930911321', 8, 2.50, 69),
(2345, '5930911321', 24, 4.00, 89),
(2346, '5930911321', 42, 4.00, 100),
(2347, '5930912321', 1, 4.00, 97),
(2348, '5930912321', 25, 4.00, 93),
(2349, '5930912321', 43, 4.00, 98),
(2350, '5930913321', 2, 4.00, 99),
(2351, '5930913321', 26, 2.00, 63),
(2352, '5930913321', 41, 4.00, 98),
(2353, '5930914321', 3, 4.00, 88),
(2354, '5930914321', 27, 4.00, 100),
(2355, '5930914321', 42, 2.00, 61),
(2356, '5930915321', 4, 3.00, 70),
(2357, '5930915321', 28, 3.50, 75),
(2358, '5930915321', 43, 3.50, 77),
(2359, '5930916321', 5, 4.00, 95),
(2360, '5930916321', 29, 3.00, 71),
(2361, '5930916321', 41, 1.00, 52),
(2362, '5930917321', 6, 4.00, 80),
(2363, '5930917321', 30, 4.00, 92),
(2364, '5930917321', 42, 4.00, 89),
(2365, '5930918321', 7, 4.00, 89),
(2366, '5930918321', 31, 4.00, 81),
(2367, '5930918321', 43, 1.50, 56),
(2368, '5930919321', 8, 4.00, 80),
(2369, '5930919321', 32, 3.00, 73),
(2370, '5930919321', 41, 3.50, 79),
(2371, '5930920321', 1, 3.00, 71),
(2372, '5930920321', 33, 4.00, 84),
(2373, '5930920321', 42, 3.50, 75),
(2374, '5930921321', 2, 4.00, 99),
(2375, '5930921321', 34, 4.00, 90),
(2376, '5930921321', 43, 1.50, 59),
(2377, '5930922321', 3, 4.00, 86),
(2378, '5930922321', 35, 4.00, 85),
(2379, '5930922321', 41, 4.00, 91),
(2380, '5930923321', 4, 4.00, 96),
(2381, '5930923321', 36, 3.00, 72),
(2382, '5930923321', 42, 2.00, 62),
(2383, '5930924321', 5, 4.00, 80),
(2384, '5930924321', 37, 4.00, 100),
(2385, '5930924321', 43, 3.50, 77),
(2386, '5930925321', 6, 4.00, 83),
(2387, '5930925321', 38, 4.00, 86),
(2388, '5930925321', 41, 1.50, 57),
(2389, '5930926321', 7, 2.50, 67),
(2390, '5930926321', 39, 2.50, 66),
(2391, '5930926321', 42, 2.00, 64),
(2392, '5930927321', 8, 4.00, 85),
(2393, '5930927321', 40, 4.00, 86),
(2394, '5930927321', 43, 2.00, 61),
(2395, '5930928321', 1, 4.00, 96),
(2396, '5930928321', 9, 2.00, 61),
(2397, '5930928321', 41, 4.00, 99),
(2398, '5930929321', 2, 4.00, 95),
(2399, '5930929321', 10, 4.00, 82),
(2400, '5930929321', 42, 1.00, 52),
(2401, '5930930321', 3, 4.00, 99),
(2402, '5930930321', 11, 1.50, 59),
(2403, '5930930321', 43, 1.00, 53),
(2404, '5930931321', 4, 4.00, 95),
(2405, '5930931321', 12, 1.00, 50),
(2406, '5930931321', 41, 4.00, 84),
(2407, '5930932321', 5, 2.50, 68),
(2408, '5930932321', 13, 4.00, 95),
(2409, '5930932321', 42, 1.00, 51),
(2410, '5930933321', 6, 2.00, 63),
(2411, '5930933321', 14, 1.00, 52),
(2412, '5930933321', 43, 4.00, 91),
(2413, '5930934321', 7, 2.50, 66),
(2414, '5930934321', 15, 3.00, 73),
(2415, '5930934321', 41, 2.00, 63),
(2416, '5930935321', 8, 4.00, 95),
(2417, '5930935321', 16, 4.00, 86),
(2418, '5930935321', 42, 2.00, 60),
(2419, '5930936321', 1, 3.50, 79),
(2420, '5930936321', 17, 4.00, 91),
(2421, '5930936321', 43, 3.50, 79),
(2422, '5930937321', 2, 0.00, 48),
(2423, '5930937321', 18, 1.00, 52),
(2424, '5930937321', 41, 4.00, 91),
(2425, '5930938321', 3, 4.00, 87),
(2426, '5930938321', 19, 4.00, 89),
(2427, '5930938321', 42, 2.50, 67),
(2428, '5930939321', 4, 4.00, 80),
(2429, '5930939321', 20, 3.50, 76),
(2430, '5930939321', 43, 0.00, 49),
(2431, '5930940321', 5, 3.50, 75),
(2432, '5930940321', 21, 3.00, 70),
(2433, '5930940321', 41, 4.00, 92),
(2434, '5930941321', 6, 4.00, 85),
(2435, '5930941321', 22, 1.50, 56),
(2436, '5930941321', 42, 4.00, 99),
(2437, '5930942321', 7, 4.00, 99),
(2438, '5930942321', 23, 2.00, 63),
(2439, '5930942321', 43, 2.50, 66),
(2440, '5930943321', 8, 3.00, 72),
(2441, '5930943321', 24, 4.00, 88),
(2442, '5930943321', 41, 4.00, 87);

-- --------------------------------------------------------

--
-- Table structure for table `student_particippate_in_activity`
--

CREATE TABLE `student_particippate_in_activity` (
  `id` int(11) NOT NULL,
  `SID` char(10) COLLATE utf8mb4_bin NOT NULL,
  `activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `student_particippate_in_activity`
--

INSERT INTO `student_particippate_in_activity` (`id`, `SID`, `activity`) VALUES
(9, '5631234921', 2),
(8, '5631234921', 3),
(1, '5731234521', 1),
(2, '5731234521', 2),
(7, '5731234921', 2),
(6, '5731234921', 3),
(4, '5732541985', 1),
(3, '5732541985', 3),
(5, '5738008135', 2),
(10, '5831234521', 2),
(11, '5831234621', 2),
(12, '5831234721', 2),
(13, '5831234821', 2);

-- --------------------------------------------------------

--
-- Table structure for table `teachers`
--

CREATE TABLE `teachers` (
  `id` int(11) NOT NULL,
  `user` int(10) NOT NULL,
  `Dname` varchar(171) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `teachers`
--

INSERT INTO `teachers` (`id`, `user`, `Dname`) VALUES
(1, 2, ''),
(2, 4, ''),
(7, 5, ''),
(8, 6, ''),
(9, 7, ''),
(10, 8, '');

-- --------------------------------------------------------

--
-- Table structure for table `teachers_in_dept`
--

CREATE TABLE `teachers_in_dept` (
  `id` int(11) NOT NULL,
  `Dname` varchar(171) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `teachers_in_dept`
--

INSERT INTO `teachers_in_dept` (`id`, `Dname`) VALUES
(1, 'Computer Engineering'),
(2, 'Computer Engineering');

-- --------------------------------------------------------

--
-- Table structure for table `teach_sections`
--

CREATE TABLE `teach_sections` (
  `TID` int(11) NOT NULL,
  `CID` char(7) COLLATE utf8mb4_bin NOT NULL,
  `SeNum` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `teach_sections`
--

INSERT INTO `teach_sections` (`TID`, `CID`, `SeNum`) VALUES
(1, '2110316', 1),
(1, '2110318', 1),
(1, '2110332', 1),
(1, '2110422', 1),
(2, '2110318', 2),
(2, '2110318', 33),
(2, '2110332', 2),
(2, '2110332', 33);

-- --------------------------------------------------------

--
-- Table structure for table `translations`
--

CREATE TABLE `translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `table_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `translations`
--

INSERT INTO `translations` (`id`, `table_name`, `column_name`, `foreign_key`, `locale`, `value`, `created_at`, `updated_at`) VALUES
(1, 'data_types', 'display_name_singular', 1, 'pt', 'Post', '2017-04-17 09:01:12', '2017-04-17 09:01:12'),
(2, 'data_types', 'display_name_singular', 2, 'pt', 'Página', '2017-04-17 09:01:12', '2017-04-17 09:01:12'),
(3, 'data_types', 'display_name_singular', 3, 'pt', 'Utilizador', '2017-04-17 09:01:12', '2017-04-17 09:01:12'),
(4, 'data_types', 'display_name_singular', 4, 'pt', 'Categoria', '2017-04-17 09:01:12', '2017-04-17 09:01:12'),
(5, 'data_types', 'display_name_singular', 5, 'pt', 'Menu', '2017-04-17 09:01:12', '2017-04-17 09:01:12'),
(6, 'data_types', 'display_name_singular', 6, 'pt', 'Função', '2017-04-17 09:01:12', '2017-04-17 09:01:12'),
(7, 'data_types', 'display_name_plural', 1, 'pt', 'Posts', '2017-04-17 09:01:12', '2017-04-17 09:01:12'),
(8, 'data_types', 'display_name_plural', 2, 'pt', 'Páginas', '2017-04-17 09:01:12', '2017-04-17 09:01:12'),
(9, 'data_types', 'display_name_plural', 3, 'pt', 'Utilizadores', '2017-04-17 09:01:12', '2017-04-17 09:01:12'),
(10, 'data_types', 'display_name_plural', 4, 'pt', 'Categorias', '2017-04-17 09:01:12', '2017-04-17 09:01:12'),
(11, 'data_types', 'display_name_plural', 5, 'pt', 'Menus', '2017-04-17 09:01:12', '2017-04-17 09:01:12'),
(12, 'data_types', 'display_name_plural', 6, 'pt', 'Funções', '2017-04-17 09:01:12', '2017-04-17 09:01:12'),
(13, 'pages', 'title', 1, 'pt', 'Olá Mundo', '2017-04-17 09:01:12', '2017-04-17 09:01:12'),
(14, 'pages', 'slug', 1, 'pt', 'ola-mundo', '2017-04-17 09:01:12', '2017-04-17 09:01:12'),
(15, 'pages', 'body', 1, 'pt', '<p>Olá Mundo. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\r\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', '2017-04-17 09:01:12', '2017-04-17 09:01:12'),
(16, 'menu_items', 'title', 1, 'pt', 'Painel de Controle', '2017-04-17 09:01:12', '2017-04-17 09:01:12'),
(17, 'menu_items', 'title', 2, 'pt', 'Media', '2017-04-17 09:01:12', '2017-04-17 09:01:12'),
(18, 'menu_items', 'title', 3, 'pt', 'Publicações', '2017-04-17 09:01:12', '2017-04-17 09:01:12'),
(19, 'menu_items', 'title', 4, 'pt', 'Utilizadores', '2017-04-17 09:01:12', '2017-04-17 09:01:12'),
(20, 'menu_items', 'title', 5, 'pt', 'Categorias', '2017-04-17 09:01:12', '2017-04-17 09:01:12'),
(21, 'menu_items', 'title', 6, 'pt', 'Páginas', '2017-04-17 09:01:12', '2017-04-17 09:01:12'),
(22, 'menu_items', 'title', 7, 'pt', 'Funções', '2017-04-17 09:01:12', '2017-04-17 09:01:12'),
(23, 'menu_items', 'title', 8, 'pt', 'Ferramentas', '2017-04-17 09:01:12', '2017-04-17 09:01:12'),
(24, 'menu_items', 'title', 9, 'pt', 'Menus', '2017-04-17 09:01:12', '2017-04-17 09:01:12'),
(25, 'menu_items', 'title', 10, 'pt', 'Base de dados', '2017-04-17 09:01:12', '2017-04-17 09:01:12'),
(26, 'menu_items', 'title', 11, 'pt', 'Configurações', '2017-04-17 09:01:12', '2017-04-17 09:01:12');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `role_id` int(11) DEFAULT NULL,
  `fname` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lname` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `fname`, `lname`, `email`, `avatar`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 1, 'Admin', '', 'admin@admin.com', 'users/default.png', '$2y$10$uv5MPvXtQmY6xMjq2Gnl2uognr3MrjCdbXgxFwZQs7H7G5uWrwKjO', 'beHPtMdBFNareZBVRXW8pC67Ht7euQEoRkpDnRGnEooVJ3Xvlf5KNXvgxBtX', '2017-04-17 02:01:12', '2017-04-17 02:01:12'),
(2, 3, 'Teacher', 'A', 'user1@user.com', 'users/default.png', '$2y$10$ryGMOJwDBNmAqeZjyzaICOzfPnVY.yTZ/k9XPRpuGvks7QtRxIxq.', 'fCi6qV7GuQf5Mmxc3PaVzwXOC6ZZdFakh3UVIIKfzeb288RR61e473km2lNS', '2017-04-16 19:01:12', '2017-04-30 19:48:05'),
(3, 2, 'Manager', '', 'user2@user.com', 'users/default.png', '$2y$10$uv5MPvXtQmY6xMjq2Gnl2uognr3MrjCdbXgxFwZQs7H7G5uWrwKjO', 'beHPtMdBFNareZBVRXW8pC67Ht7euQEoRkpDnRGnEooVJ3Xvlf5KNXvgxBtX', '2017-04-16 19:01:12', '2017-04-16 19:01:12'),
(4, 2, 'TeacherB', '', 'user3@user.com', 'users/default.png', '$2y$10$uv5MPvXtQmY6xMjq2Gnl2uognr3MrjCdbXgxFwZQs7H7G5uWrwKjO', 'beHPtMdBFNareZBVRXW8pC67Ht7euQEoRkpDnRGnEooVJ3Xvlf5KNXvgxBtX', '2017-04-16 19:01:12', '2017-04-16 19:01:12'),
(5, 3, 'Teacher', '1', 'Teacher1@chula.ac.th', 'users/default.png', '', NULL, NULL, NULL),
(6, 3, 'Teacher', '2', 'Teacher2@chula.ac.th', 'users/default.png', '', NULL, NULL, NULL),
(7, 3, 'Teacher', '3', 'Teacher3@chula.ac.th', 'users/default.png', '', NULL, NULL, NULL),
(8, 3, 'Teacher', '4', 'Teacher4@chula.ac.th', 'users/default.png', '', NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activities`
--
ALTER TABLE `activities`
  ADD PRIMARY KEY (`Aname`,`Ayear`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `behavior_records`
--
ALTER TABLE `behavior_records`
  ADD PRIMARY KEY (`Btime`,`SID`),
  ADD KEY `fk_students` (`SID`);

--
-- Indexes for table `competitions`
--
ALTER TABLE `competitions`
  ADD PRIMARY KEY (`Coname`,`Coyear`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`CID`);

--
-- Indexes for table `course_syllabus_of_departments`
--
ALTER TABLE `course_syllabus_of_departments`
  ADD PRIMARY KEY (`CID`,`Dname`),
  ADD KEY `fk_departments` (`Dname`);

--
-- Indexes for table `data_rows`
--
ALTER TABLE `data_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `data_rows_data_type_id_foreign` (`data_type_id`);

--
-- Indexes for table `data_types`
--
ALTER TABLE `data_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `data_types_name_unique` (`name`),
  ADD UNIQUE KEY `data_types_slug_unique` (`slug`);

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`Dname`);

--
-- Indexes for table `managers`
--
ALTER TABLE `managers`
  ADD PRIMARY KEY (`user`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `managers_of_dept`
--
ALTER TABLE `managers_of_dept`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_name_unique` (`name`);

--
-- Indexes for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_items_menu_id_foreign` (`menu_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permissions_key_index` (`key`);

--
-- Indexes for table `permission_groups`
--
ALTER TABLE `permission_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permission_groups_name_unique` (`name`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_permission_id_index` (`permission_id`),
  ADD KEY `permission_role_role_id_index` (`role_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indexes for table `sections`
--
ALTER TABLE `sections`
  ADD PRIMARY KEY (`CID`,`SeNum`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`SID`);

--
-- Indexes for table `student_compete_in_competition`
--
ALTER TABLE `student_compete_in_competition`
  ADD PRIMARY KEY (`id`),
  ADD KEY `SID` (`SID`,`competition`),
  ADD KEY `fk_completitions` (`competition`);

--
-- Indexes for table `student_enroll_in_section`
--
ALTER TABLE `student_enroll_in_section`
  ADD PRIMARY KEY (`id`),
  ADD KEY `SID` (`SID`,`section_id`);

--
-- Indexes for table `student_particippate_in_activity`
--
ALTER TABLE `student_particippate_in_activity`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `SID` (`SID`,`activity`),
  ADD KEY `fk_activities` (`activity`);

--
-- Indexes for table `teachers`
--
ALTER TABLE `teachers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teachers_in_dept`
--
ALTER TABLE `teachers_in_dept`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teach_sections`
--
ALTER TABLE `teach_sections`
  ADD PRIMARY KEY (`TID`,`CID`,`SeNum`);

--
-- Indexes for table `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activities`
--
ALTER TABLE `activities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `competitions`
--
ALTER TABLE `competitions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `data_rows`
--
ALTER TABLE `data_rows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=130;
--
-- AUTO_INCREMENT for table `data_types`
--
ALTER TABLE `data_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `managers`
--
ALTER TABLE `managers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;
--
-- AUTO_INCREMENT for table `permission_groups`
--
ALTER TABLE `permission_groups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `sections`
--
ALTER TABLE `sections`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;
--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `student_compete_in_competition`
--
ALTER TABLE `student_compete_in_competition`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `student_enroll_in_section`
--
ALTER TABLE `student_enroll_in_section`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2443;
--
-- AUTO_INCREMENT for table `student_particippate_in_activity`
--
ALTER TABLE `student_particippate_in_activity`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `teachers`
--
ALTER TABLE `teachers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `behavior_records`
--
ALTER TABLE `behavior_records`
  ADD CONSTRAINT `fk_students` FOREIGN KEY (`SID`) REFERENCES `students` (`SID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `course_syllabus_of_departments`
--
ALTER TABLE `course_syllabus_of_departments`
  ADD CONSTRAINT `course_syllabus_of_departments_ibfk_1` FOREIGN KEY (`CID`) REFERENCES `courses` (`CID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_departments` FOREIGN KEY (`Dname`) REFERENCES `departments` (`Dname`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `data_rows`
--
ALTER TABLE `data_rows`
  ADD CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `sections`
--
ALTER TABLE `sections`
  ADD CONSTRAINT `fk_courses` FOREIGN KEY (`CID`) REFERENCES `courses` (`CID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `student_compete_in_competition`
--
ALTER TABLE `student_compete_in_competition`
  ADD CONSTRAINT `fk_completitions` FOREIGN KEY (`competition`) REFERENCES `competitions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `student_particippate_in_activity`
--
ALTER TABLE `student_particippate_in_activity`
  ADD CONSTRAINT `fk_activities` FOREIGN KEY (`activity`) REFERENCES `activities` (`id`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
