-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 01, 2017 at 01:04 PM
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

-- --------------------------------------------------------

--
-- Table structure for table `course_syllabus_of_departments`
--

CREATE TABLE `course_syllabus_of_departments` (
  `CID` char(7) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Dname` varchar(171) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

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
(118, 3, 'fname', 'checkbox', 'First name', 1, 1, 1, 1, 1, 1, NULL);

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
(11, 'students', 'students', 'Student', 'Students', 'voyager-study', 'App\\Student', 'StudentController', 'Students', 1, 0, '2017-04-21 21:56:08', '2017-04-21 21:56:08'),
(12, 'behavior_records', 'behavior-records', 'Behavior Record', 'Behavior Records', NULL, 'App\\BehaviorRecord', NULL, NULL, 1, 0, '2017-04-22 00:28:46', '2017-04-22 00:28:46'),
(17, 'student_enroll_in_section', 'enrollment', 'Enrollment', 'Enrollment', NULL, 'App\\Enrollment', 'EnrollmentController', NULL, 1, 0, '2017-04-25 20:14:27', '2017-04-25 20:14:27'),
(18, 'competitions', 'competitions', 'Competition', 'Competitions', 'voyager-trophy', 'App\\Competition', 'CompetitionController', NULL, 1, 0, '2017-04-29 05:16:21', '2017-04-30 19:06:43'),
(20, 'activities', 'activities', 'Activity', 'Activities', 'voyager-star-two', 'App\\Activity', 'ActivityController', NULL, 1, 0, '2017-04-29 06:09:00', '2017-04-30 19:09:10');

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `Dname` varchar(171) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Dfaculty` varchar(171) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

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
(2, 1, 'Media', '/admin/media', '_self', 'voyager-images', NULL, NULL, 9, '2017-04-17 09:01:12', '2017-04-30 21:12:50', NULL, NULL),
(4, 1, 'Users', '/admin/users', '_self', 'voyager-person', NULL, NULL, 8, '2017-04-17 09:01:12', '2017-04-30 21:12:50', NULL, NULL),
(7, 1, 'Roles', '/admin/roles', '_self', 'voyager-lock', NULL, NULL, 7, '2017-04-17 09:01:12', '2017-04-30 21:12:50', NULL, NULL),
(8, 1, 'Tools', '', '_self', 'voyager-tools', NULL, NULL, 10, '2017-04-17 09:01:12', '2017-04-30 21:12:50', NULL, NULL),
(9, 1, 'Menu Builder', '/admin/menus', '_self', 'voyager-list', NULL, 8, 1, '2017-04-17 09:01:12', '2017-04-17 10:04:43', NULL, NULL),
(10, 1, 'Database', '/admin/database', '_self', 'voyager-data', NULL, 8, 2, '2017-04-17 09:01:12', '2017-04-17 10:04:43', NULL, NULL),
(11, 1, 'Settings', '/admin/settings', '_self', 'voyager-settings', NULL, NULL, 11, '2017-04-17 09:01:12', '2017-04-30 21:12:50', NULL, NULL),
(12, 1, 'Students', '/admin/students', '_self', 'voyager-study', '#000000', NULL, 3, '2017-04-17 10:05:20', '2017-04-30 21:12:51', NULL, ''),
(13, 1, 'Courses', '/admin/courses', '_self', 'voyager-book', '#000000', NULL, 4, '2017-04-20 18:51:25', '2017-04-30 21:12:51', NULL, ''),
(14, 1, 'Competitions', '/admin/competitions', '_self', 'voyager-trophy', '#000000', NULL, 5, '2017-04-30 08:50:48', '2017-04-30 21:12:51', NULL, ''),
(15, 1, 'Activities', '/admin/activities', '_self', 'voyager-star-two', '#000000', NULL, 6, '2017-04-30 19:10:14', '2017-04-30 21:12:50', NULL, ''),
(16, 1, 'Statistics', '/admin/statistics', '_self', 'voyager-bar-chart', '#000000', NULL, 2, '2017-04-30 21:12:26', '2017-04-30 21:12:51', NULL, '');

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
(79, 'delete_activities', 'activities', '2017-04-29 06:09:00', '2017-04-29 06:09:00', NULL);

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
(51, 1),
(51, 3),
(52, 1),
(52, 3),
(53, 1),
(53, 3),
(54, 1),
(54, 3),
(55, 1),
(55, 3),
(56, 1),
(56, 3),
(57, 1),
(57, 3),
(58, 1),
(58, 3),
(59, 1),
(59, 3),
(60, 1),
(60, 3),
(61, 1),
(61, 3),
(62, 1),
(62, 3),
(63, 1),
(63, 3),
(64, 1),
(64, 3),
(65, 3),
(66, 3),
(67, 3),
(68, 3),
(69, 3),
(70, 1),
(70, 3),
(71, 1),
(71, 3),
(72, 1),
(72, 3),
(73, 1),
(73, 3),
(74, 1),
(74, 3),
(75, 1),
(75, 3),
(76, 1),
(76, 3),
(77, 1),
(77, 3),
(78, 1),
(78, 3),
(79, 1),
(79, 3);

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
(3, 'teacher', 'Teacher', '2017-04-30 08:51:48', '2017-04-30 08:51:48');

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

-- --------------------------------------------------------

--
-- Table structure for table `student_compete_in_competition`
--

CREATE TABLE `student_compete_in_competition` (
  `id` int(11) NOT NULL,
  `SID` char(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `competition` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Table structure for table `student_enroll_in_section`
--

CREATE TABLE `student_enroll_in_section` (
  `id` int(11) NOT NULL,
  `SID` char(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `section_id` int(11) NOT NULL,
  `grade` float(3,2) DEFAULT NULL,
  `score` float(3,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Table structure for table `student_particippate_in_activity`
--

CREATE TABLE `student_particippate_in_activity` (
  `id` int(11) NOT NULL,
  `SID` char(10) COLLATE utf8mb4_bin NOT NULL,
  `activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Table structure for table `teachers`
--

CREATE TABLE `teachers` (
  `id` int(11) NOT NULL,
  `user` int(10) NOT NULL,
  `Dname` varchar(171) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- teachersInDept

CREATE TABLE `teachers_in_dept` (
  `id` int(11) NOT NULL,
  `Dname` varchar(171) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- managers 

CREATE TABLE `managers` (
  `id` int(11) NOT NULL,
  `user` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- managers_of_dept

CREATE TABLE `managers_of_dept` (
  `id` int(11) NOT NULL,
  `Dname` varchar(171) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Table structure for table `teach_sections`
--

CREATE TABLE `teach_sections` (
  `TID` int(11) NOT NULL,
  `CID` char(7) COLLATE utf8mb4_bin NOT NULL,
  `SeNum` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

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

ALTER TABLE `teachers_in_dept`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `managers`
  ADD PRIMARY KEY (`user`),
  ADD UNIQUE KEY `id` (`id`);
  
ALTER TABLE `managers_of_dept`
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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=119;
--
-- AUTO_INCREMENT for table `data_types`
--
ALTER TABLE `data_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;
--
-- AUTO_INCREMENT for table `permission_groups`
--
ALTER TABLE `permission_groups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `sections`
--
ALTER TABLE `sections`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `student_compete_in_competition`
--
ALTER TABLE `student_compete_in_competition`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `student_enroll_in_section`
--
ALTER TABLE `student_enroll_in_section`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `student_particippate_in_activity`
--
ALTER TABLE `student_particippate_in_activity`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `teachers`
--
ALTER TABLE `teachers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

ALTER TABLE `managers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
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
-- Constraints for table `student_compete_in_competition`
--
ALTER TABLE `student_compete_in_competition`
  ADD CONSTRAINT `fk_completitions` FOREIGN KEY (`competition`) REFERENCES `competitions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `student_particippate_in_activity`
--
ALTER TABLE `student_particippate_in_activity`
  ADD CONSTRAINT `fk_activities` FOREIGN KEY (`activity`) REFERENCES `activities` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `sections`
--
ALTER TABLE `sections`
  ADD CONSTRAINT `fk_courses` FOREIGN KEY (`CID`) REFERENCES `courses` (`CID`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
