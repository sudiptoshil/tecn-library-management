-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 06, 2020 at 03:45 PM
-- Server version: 5.7.32
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tecn_library`
--

-- --------------------------------------------------------

--
-- Table structure for table `authors`
--

CREATE TABLE `authors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `author_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `author_status` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `authors`
--

INSERT INTO `authors` (`id`, `author_name`, `address`, `author_status`, `created_at`, `updated_at`) VALUES
(1, 'C.E. Pellow', 'U.K.', 1, '2020-06-15 23:57:47', '2020-11-27 22:54:55'),
(2, 'S. R. Karmakar', 'India', 1, '2020-06-16 00:01:43', '2020-11-27 21:51:14'),
(3, 'J.N. Chakraborty', 'India', 1, '2020-08-17 00:47:05', '2020-11-27 23:04:45'),
(4, 'H. S. Shah', 'India', 1, '2020-08-17 01:12:02', '2020-11-28 02:05:16'),
(5, 'E.Balagurusamy', 'India', 1, '2020-09-17 04:42:48', '2020-09-17 04:42:48'),
(6, 'Engr. Tanjim Mahmud', 'TECN', 1, '2020-10-21 13:25:19', '2020-10-21 13:25:19'),
(7, 'Shushma Gupta', 'India', 1, '2020-10-22 22:08:56', '2020-10-22 22:08:56'),
(8, 'Palash Chandra Nath', 'india', 1, '2020-10-22 22:10:47', '2020-10-23 03:54:06'),
(9, 'M. Krishan Kumar', 'India', 1, '2020-10-23 20:18:53', '2020-10-23 20:18:53'),
(10, 'Sudhir Gupta', 'India', 1, '2020-10-24 06:43:10', '2020-11-28 03:21:25'),
(11, 'Seema Kapoor', 'India', 1, '2020-10-24 07:16:49', '2020-10-24 07:16:49'),
(12, 'W. Clarke', 'U.K.', 1, '2020-10-24 09:41:22', '2020-11-28 02:16:49'),
(13, 'N.S. Caplan', 'India', 1, '2020-10-24 21:09:05', '2020-10-24 21:09:05'),
(14, 'Meenakshi Rastogi', 'India', 1, '2020-10-24 21:10:20', '2020-10-24 21:10:20'),
(15, 'W. T. Brant', 'U.K.', 1, '2020-10-24 21:11:42', '2020-11-27 22:39:26'),
(16, 'Walter Fung', 'U.K.', 1, '2020-10-24 21:20:05', '2020-10-24 21:20:05'),
(17, 'Alison & Terry', 'India', 1, '2020-10-24 21:26:02', '2020-10-24 21:26:02'),
(18, 'Hilary Compbell', 'India', 1, '2020-10-24 21:26:54', '2020-10-24 21:26:54'),
(19, 'Ann Hagger', 'India', 1, '2020-10-24 21:28:03', '2020-10-24 21:28:03'),
(20, 'Amrit Bajaj', 'India', 1, '2020-10-24 21:29:19', '2020-10-24 21:29:19'),
(21, 'Apurba Das', 'India', 1, '2020-10-27 23:25:53', '2020-10-27 23:25:53'),
(22, 'জুয়ান কার্লোস হিবা', 'জেনেভা', 1, '2020-11-01 21:15:26', '2020-11-01 21:15:26'),
(23, 'Tom Welton', 'U.K.', 1, '2020-11-01 21:19:26', '2020-11-28 02:22:53'),
(24, 'A.K.Sen', 'India', 1, '2020-11-03 22:25:37', '2020-11-03 22:25:37'),
(25, 'Alison & Terry', 'India', 1, '2020-11-04 01:07:24', '2020-11-04 01:07:24'),
(26, 'Pratima Paul', 'Dhaka', 1, '2020-11-05 00:07:02', '2020-11-05 00:07:02'),
(27, 'Anita Tyagi', 'India', 1, '2020-11-05 00:30:45', '2020-11-05 01:20:22'),
(28, 'Sandra Detrixhe', 'U.S.A', 1, '2020-11-05 00:32:47', '2020-11-05 00:32:47'),
(29, 'M.A.KASEM', 'DHAKA', 1, '2020-11-05 00:43:02', '2020-11-05 00:43:02'),
(30, 'Premlata Mullick', 'India', 1, '2020-11-05 01:27:48', '2020-11-05 01:27:48'),
(31, 'Manmeet Sodhia', 'India', 1, '2020-11-05 19:53:41', '2020-11-05 19:53:41'),
(32, 'Md. Saiful Azam', 'Dhaka', 1, '2020-11-05 20:11:14', '2020-11-05 20:11:14'),
(33, 'Md. Moshiur Rahman', 'Dhaka', 1, '2020-11-05 20:25:20', '2020-11-05 20:25:20'),
(34, 'V. Ramesh Babu', 'India', 1, '2020-11-05 20:32:03', '2020-11-05 20:32:03'),
(35, 'A.J.Choter', 'U.K', 1, '2020-11-05 23:46:56', '2020-11-05 23:46:56'),
(36, 'Gerry Cooklin', 'India', 1, '2020-11-06 04:00:00', '2020-11-06 04:00:00'),
(37, 'A.J.S.M Khaled', 'Dhaka', 1, '2020-11-06 04:01:53', '2020-11-06 04:01:53'),
(38, 'Gornada Colovic', 'India', 1, '2020-11-06 04:05:50', '2020-11-06 04:05:50'),
(39, 'Prodip V. Mehta', 'India', 1, '2020-11-06 04:06:41', '2020-11-06 23:02:10'),
(40, 'Winifred Aldirch', 'India', 1, '2020-11-06 04:07:57', '2020-11-06 04:07:57'),
(41, 'Moeen Naser', 'Pakistan', 1, '2020-11-06 04:32:04', '2020-11-06 04:32:04'),
(42, 'E.T. Renbourn', 'England', 1, '2020-11-06 04:36:15', '2020-11-06 04:36:15'),
(43, 'Mohiuddin Ahmed', 'Dhaka', 1, '2020-11-06 23:55:43', '2020-11-06 23:55:43'),
(44, 'Dr.Subrata Das', 'India', 1, '2020-11-07 00:51:07', '2020-11-07 00:51:07'),
(45, 'J.Hayavadana', 'India', 1, '2020-11-07 22:22:51', '2020-11-07 22:52:03'),
(46, 'Carr And Latham', 'U.S.A', 1, '2020-11-07 23:01:27', '2020-11-07 23:01:27'),
(47, 'Rajesh Gupta', 'India', 1, '2020-11-07 23:42:48', '2020-11-07 23:42:48'),
(48, 'Anna Jacob Thomas', 'U.K', 1, '2020-11-08 23:24:55', '2020-11-08 23:24:55'),
(49, 'K.H. Watson', 'India', 1, '2020-11-08 23:27:22', '2020-11-08 23:27:22'),
(50, 'Mohon Hasan', 'Dhaka', 1, '2020-11-08 23:32:02', '2020-11-08 23:32:02'),
(51, 'Md.Omar Faruk', 'Dhaka', 1, '2020-11-08 23:37:50', '2020-11-08 23:37:50'),
(52, 'Md.Tajammal Hossain', 'Dhaka', 1, '2020-11-09 00:13:15', '2020-11-09 00:13:15'),
(53, 'Mridul Paul', 'Dhaka', 1, '2020-11-09 00:14:46', '2020-11-09 00:14:46'),
(54, 'Jenny Davis', 'India', 1, '2020-11-09 20:11:35', '2020-11-09 20:11:35'),
(55, 'Bina Abling', 'India', 1, '2020-11-09 20:12:05', '2020-11-09 20:12:05'),
(56, 'M.R. Solomon', 'U.K.', 1, '2020-11-09 20:25:13', '2020-11-09 20:25:13'),
(57, 'Hilde Jaffe', 'U.S.A', 1, '2020-11-09 20:37:07', '2020-11-09 20:37:07'),
(58, 'Natalie Bray', 'U.S.A.', 1, '2020-11-09 20:44:07', '2020-11-09 20:44:07'),
(59, 'Cameron Luther', 'U.K', 1, '2020-11-09 22:20:44', '2020-11-09 22:20:44'),
(60, 'Kamal  Khurana', 'India', 1, '2020-11-09 22:42:27', '2020-11-09 22:42:27'),
(61, 'Harold Carr', 'U.k', 1, '2020-11-09 23:22:05', '2020-11-09 23:22:05'),
(62, 'G.S.Frings', 'U.K', 1, '2020-11-09 23:25:50', '2020-11-09 23:25:50'),
(63, 'Colin Gale', 'U.K', 1, '2020-11-09 23:39:13', '2020-11-09 23:39:13'),
(64, 'Neelima', 'India', 1, '2020-11-09 23:46:04', '2020-11-09 23:46:04'),
(65, 'Jay Diamond', 'U.K', 1, '2020-11-09 23:56:25', '2020-11-09 23:56:25'),
(66, 'Helen Goworek', 'U.K', 1, '2020-11-10 00:02:19', '2020-11-10 00:02:19'),
(67, 'Patrick John Ireland', 'U.K', 1, '2020-11-10 00:11:06', '2020-11-10 00:11:06'),
(68, 'Kathryn McKelvey', 'U.K', 1, '2020-11-10 00:28:18', '2020-11-10 00:28:18'),
(69, 'Maite Lafuente', 'U.K', 1, '2020-11-10 22:11:03', '2020-11-10 22:11:03'),
(70, 'Ritu Bhargav', 'India', 1, '2020-11-10 22:13:01', '2020-11-10 22:13:01'),
(71, 'Mike Easey', 'U.S.A', 1, '2020-11-10 22:30:38', '2020-11-10 22:30:38'),
(72, 'Kathryn McKelvey', 'U.S.A', 1, '2020-11-11 22:52:41', '2020-11-11 22:52:41'),
(73, 'J.W.Parchure', 'India', 1, '2020-11-11 22:56:25', '2020-11-11 22:56:25'),
(74, 'Jacquie Wilson', 'U.S.A', 1, '2020-11-11 23:09:58', '2020-11-11 23:09:58'),
(75, 'Gavin Wadell', 'U.K', 1, '2020-11-11 23:24:45', '2020-11-11 23:24:45'),
(76, 'Kitty G. Dickerson', 'Columbia', 1, '2020-11-11 23:31:28', '2020-11-11 23:31:28'),
(77, 'Sharon Lee Tate', 'U.K', 1, '2020-11-11 23:35:20', '2020-11-11 23:35:20'),
(78, 'Steve Greenberg', 'U.S.A', 1, '2020-11-12 00:00:33', '2020-11-12 00:00:33'),
(79, 'Rajesh. Mullick', 'India', 1, '2020-11-12 00:07:44', '2020-11-12 00:07:44'),
(80, 'V L Mote', 'India', 1, '2020-11-12 00:15:02', '2020-11-12 00:15:02'),
(81, 'Gautam Sharma', 'India', 1, '2020-11-12 00:23:24', '2020-11-12 00:23:24'),
(82, 'C.Amaden', 'U.K', 1, '2020-11-12 00:34:20', '2020-11-12 00:34:20'),
(83, 'M.M. Shoben', 'India', 1, '2020-11-14 09:34:05', '2020-11-14 09:34:05'),
(84, 'Ikat', 'India', 1, '2020-11-14 09:45:22', '2020-11-14 09:45:22'),
(85, 'Helen Joseph', 'U.K', 1, '2020-11-14 22:10:29', '2020-11-14 22:10:29'),
(86, 'Irfan Ahmed', 'Pakistan', 1, '2020-11-14 22:47:34', '2020-11-14 22:47:34'),
(87, 'N.Gokarneshan', 'India', 1, '2020-11-14 22:53:53', '2020-11-14 22:53:53'),
(88, 'Ashenhurst', 'India', 1, '2020-11-14 23:08:07', '2020-11-14 23:08:07'),
(89, 'Thomas Woodhouse', 'India', 1, '2020-11-14 23:16:39', '2020-11-14 23:16:39'),
(90, 'W S Murphy', 'India', 1, '2020-11-14 23:36:30', '2020-11-14 23:36:30'),
(91, 'Talukdar', 'India', 1, '2020-11-23 23:12:57', '2020-11-23 23:12:57'),
(92, 'K.Greenwood', 'U.K', 1, '2020-11-23 23:25:16', '2020-11-23 23:25:16'),
(93, 'P.R.Lord', 'U.S.A', 1, '2020-11-24 00:04:01', '2020-11-24 00:04:01'),
(94, 'Ali Haider', 'Dhaka', 1, '2020-11-24 00:06:51', '2020-11-24 00:06:51'),
(95, 'AKM Fazlul Haq', 'Dhaka', 1, '2020-11-24 00:14:38', '2020-11-24 00:14:38'),
(96, 'Sadhan Chandra ray', 'India', 1, '2020-11-24 00:52:04', '2020-11-24 00:52:04'),
(97, 'Henry Johnson', 'India', 1, '2020-11-24 22:55:52', '2020-11-24 22:55:52'),
(98, 'Terry Brackenbury', 'USA', 1, '2020-11-24 22:56:42', '2020-11-24 22:56:42'),
(99, 'N. Anbumani', 'India', 1, '2020-11-24 23:22:40', '2020-11-24 23:22:40'),
(100, 'David J Spencer', 'USA', 1, '2020-11-24 23:23:48', '2020-11-24 23:23:48'),
(101, 'M. A Malek', 'Dhaka', 1, '2020-11-24 23:57:11', '2020-11-24 23:57:11'),
(102, 'A F Barker', 'India', 1, '2020-11-25 22:43:36', '2020-11-25 22:43:36'),
(103, 'J. R. Holker', 'U.K.', 1, '2020-11-25 22:46:58', '2020-11-25 22:46:58'),
(104, 'J T Taylor', 'India', 1, '2020-11-25 22:49:17', '2020-11-25 22:49:17'),
(105, 'Md. Hamidul Hoque', 'Dhaka', 1, '2020-11-25 22:57:47', '2020-11-25 22:57:47'),
(106, 'Tara McLellan', 'U.S.A.', 1, '2020-11-25 23:33:24', '2020-11-25 23:36:03'),
(107, 'Mary Humphries', 'U.S.A.', 1, '2020-11-26 10:07:25', '2020-11-26 10:07:25'),
(108, 'K.V. pal singh', 'India', 1, '2020-11-26 10:24:59', '2020-11-26 10:24:59'),
(109, 'S.J. Russeel', 'U.K.', 1, '2020-11-26 22:19:12', '2020-11-26 22:19:12'),
(110, 'Sabit Adanur', 'India', 1, '2020-11-26 22:46:23', '2020-11-26 22:46:23'),
(111, 'V. A. Shenai', 'India', 1, '2020-11-26 22:55:25', '2020-11-26 22:55:25'),
(112, 'J. Delmenico', 'U.K.', 1, '2020-11-26 23:16:48', '2020-11-26 23:16:48'),
(113, 'A Ormerod', 'U.K.', 1, '2020-11-26 23:25:00', '2020-11-26 23:25:00'),
(114, 'R.B. Singh', 'India', 1, '2020-11-26 23:31:07', '2020-11-26 23:31:07'),
(115, 'J.K. Arora', 'India', 1, '2020-11-26 23:36:31', '2020-11-26 23:36:31'),
(116, 'P. Madhavamoorthi', 'India', 1, '2020-11-26 23:55:03', '2020-11-26 23:55:03'),
(117, 'Gillian Holman', 'U.K.', 1, '2020-11-27 08:29:09', '2020-11-27 08:29:09'),
(118, 'A.K. Sarkar', 'India', 1, '2020-11-27 21:27:57', '2020-11-27 21:27:57'),
(119, 'A D Broadbent', 'Canada', 1, '2020-11-27 21:34:00', '2020-11-27 21:34:00'),
(120, 'L. Tailfer', 'India', 1, '2020-11-27 21:42:51', '2020-11-27 21:42:51'),
(121, 'James Stockton', 'U.S.A', 1, '2020-11-27 22:20:48', '2020-11-27 22:20:48'),
(122, 'M Forhad Hossain', 'Dhaka', 1, '2020-11-28 02:34:31', '2020-11-28 02:34:31'),
(123, 'M.S. Yadav', 'India', 1, '2020-11-28 03:16:13', '2020-11-28 03:16:13'),
(124, 'A. Arora', 'India', 1, '2020-11-28 09:21:22', '2020-11-28 09:21:22'),
(125, 'V. Arora', 'India', 1, '2020-11-28 09:35:58', '2020-11-28 09:35:58'),
(126, 'D. Peterson', 'U.K.', 1, '2020-11-28 22:22:19', '2020-11-28 22:22:19'),
(127, 'H.L. Needles', 'U.S.A', 1, '2020-11-29 22:55:55', '2020-11-29 22:55:55'),
(128, 'A.K.Roy Choudhury', 'India', 1, '2020-11-29 23:05:56', '2020-11-29 23:05:56'),
(129, 'J.L. Smith', 'U.K', 1, '2020-11-29 23:14:28', '2020-11-29 23:14:28'),
(130, 'Mozammel Haque', 'Dhaka', 1, '2020-11-29 23:40:04', '2020-11-29 23:40:04'),
(131, 'Tina Sutton', 'India', 1, '2020-11-29 23:47:34', '2020-11-29 23:47:34'),
(132, 'Texilia', 'Italy', 1, '2020-11-29 23:58:49', '2020-11-29 23:58:49'),
(133, 'Z.J Grosicki', 'U.K', 1, '2020-11-30 00:06:26', '2020-11-30 00:06:26'),
(134, 'T Nakajima', 'Japan', 1, '2020-11-30 00:21:30', '2020-11-30 00:21:30'),
(135, 'Werner Klein', 'U.K', 1, '2020-11-30 00:26:09', '2020-11-30 00:26:09'),
(136, 'B.Purushothama', 'India', 1, '2020-11-30 00:42:38', '2020-11-30 00:42:38'),
(137, 'R.Jagannathan', 'India', 1, '2020-11-30 00:51:04', '2020-11-30 00:51:04'),
(138, 'Pattaabhiram', 'India', 1, '2020-11-30 01:04:33', '2020-11-30 01:04:33'),
(139, 'Milind Koranne', 'U.K', 1, '2020-11-30 22:33:41', '2020-11-30 22:33:41'),
(140, 'S.Y. Nanal', 'India', 1, '2020-11-30 22:51:24', '2020-11-30 22:51:24'),
(141, 'J.S. Robinson', 'U.S.A', 1, '2020-11-30 23:12:28', '2020-11-30 23:12:28'),
(142, 'N.Niijjaawan', 'U.K', 1, '2020-11-30 23:17:53', '2020-11-30 23:17:53'),
(143, 'SITRA', 'India', 1, '2020-11-30 23:39:26', '2020-11-30 23:39:26'),
(144, 'Ayub Nabi Khan', 'Dhaka', 1, '2020-12-01 00:33:53', '2020-12-01 00:33:53'),
(145, 'D.C. Hossack', 'England', 1, '2020-12-01 23:22:54', '2020-12-01 23:22:54'),
(146, 'B.C. Goswami', 'India', 1, '2020-12-01 23:39:04', '2020-12-01 23:39:04'),
(147, 'H.J. Selling', 'England', 1, '2020-12-01 23:43:18', '2020-12-01 23:43:18'),
(148, 'Hollins Rayner', 'U.K', 1, '2020-12-01 23:47:51', '2020-12-01 23:47:51'),
(149, 'Miles Collins', 'U.K', 1, '2020-12-01 23:52:09', '2020-12-01 23:52:09'),
(150, 'C.Vickerman', 'India', 1, '2020-12-01 23:56:37', '2020-12-01 23:56:37'),
(151, 'A.F.Barker', 'U.K', 1, '2020-12-02 00:00:42', '2020-12-02 00:00:42'),
(152, 'Abu Sina MD Rokunul Kader', 'Dhaka', 1, '2020-12-02 00:22:49', '2020-12-02 00:22:49'),
(153, 'T.K. Pattabhiram', 'India', 1, '2020-12-02 03:23:45', '2020-12-02 03:23:45'),
(154, 'S.K. Shrivastava', 'India', 1, '2020-12-02 03:39:32', '2020-12-02 03:39:32');

-- --------------------------------------------------------

--
-- Table structure for table `bookings`
--

CREATE TABLE `bookings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `student_id` bigint(20) DEFAULT NULL,
  `teacher_id` bigint(20) DEFAULT NULL,
  `book_id` bigint(20) NOT NULL,
  `request_date` date NOT NULL,
  `issue_date` date DEFAULT NULL,
  `return_date` date DEFAULT NULL,
  `x_date` date DEFAULT NULL COMMENT 'expected return date',
  `returned_date` date DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0' COMMENT 'pending = 0, receive=1 return=2 ,cancel=4 ,',
  `reason` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `charge_id` bigint(20) DEFAULT NULL,
  `charge` float DEFAULT NULL,
  `charge_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `charge_paid` int(11) DEFAULT '2' COMMENT 'paid =1 not paid=0',
  `payment_date` date DEFAULT NULL,
  `issued_by` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `received_by` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bookings`
--

INSERT INTO `bookings` (`id`, `student_id`, `teacher_id`, `book_id`, `request_date`, `issue_date`, `return_date`, `x_date`, `returned_date`, `status`, `reason`, `charge_id`, `charge`, `charge_type`, `charge_paid`, `payment_date`, `issued_by`, `received_by`, `created_at`, `updated_at`) VALUES
(1, 25, NULL, 1008, '2020-09-24', '2020-09-24', '2020-09-24', '2020-09-16', '2020-09-24', '3', NULL, NULL, 500, NULL, 1, '2020-09-24', NULL, NULL, '2020-09-24 05:49:10', '2020-09-24 06:23:37'),
(2, 25, NULL, 1008, '2020-09-24', '2020-09-24', '2020-09-24', '2020-09-24', '2020-09-24', '3', NULL, NULL, 500, NULL, 0, NULL, NULL, NULL, '2020-09-24 05:54:12', '2020-09-24 06:24:33'),
(3, 25, NULL, 1009, '2020-09-24', '2020-09-24', '2020-09-27', '2020-09-24', '2020-09-27', '3', NULL, NULL, 500, NULL, 0, NULL, NULL, NULL, '2020-09-24 06:21:52', '2020-09-26 23:37:34'),
(4, 25, NULL, 1008, '2020-09-27', '2020-09-27', '2020-09-27', '2020-09-16', '2020-09-27', '3', NULL, NULL, 500, NULL, 0, NULL, NULL, NULL, '2020-09-26 23:35:15', '2020-09-27 02:56:48'),
(5, 25, NULL, 1048, '2020-09-27', '2020-09-27', '2020-09-27', '2020-09-27', '2020-09-27', '3', NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, '2020-09-26 23:35:51', '2020-09-27 02:41:25'),
(6, 25, NULL, 1009, '2020-09-27', NULL, NULL, '2020-09-27', NULL, '0', NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2020-09-26 23:47:01', '2020-09-26 23:47:01'),
(7, 25, NULL, 1016, '2020-09-27', '2020-09-27', NULL, '2020-09-27', NULL, '4', 'no need', NULL, NULL, NULL, 0, NULL, NULL, NULL, '2020-09-26 23:47:45', '2020-09-26 23:49:36'),
(8, 25, NULL, 1010, '2020-09-27', '2020-09-27', '2020-09-27', '2020-09-27', '2020-09-27', '3', NULL, NULL, 250, NULL, 0, NULL, NULL, NULL, '2020-09-26 23:52:53', '2020-09-27 03:45:44'),
(9, 25, NULL, 1012, '2020-09-27', NULL, NULL, '2020-09-27', NULL, '0', NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2020-09-27 02:54:16', '2020-09-27 02:54:16'),
(10, 25, NULL, 1016, '2020-09-27', '2020-09-27', '2020-09-27', '2020-09-27', '2020-09-27', '3', NULL, NULL, 200, NULL, 0, NULL, NULL, NULL, '2020-09-27 02:55:10', '2020-09-27 02:56:16'),
(11, 25, NULL, 1008, '2020-09-27', '2020-09-27', '2020-09-27', '2020-09-27', '2020-09-27', '3', NULL, NULL, 500, NULL, 0, NULL, NULL, NULL, '2020-09-27 03:04:10', '2020-09-27 03:05:37'),
(12, 25, NULL, 1055, '2020-09-27', '2020-09-27', '2020-09-27', '2020-09-27', '2020-09-27', '3', NULL, NULL, 1200, NULL, 0, NULL, NULL, NULL, '2020-09-27 03:06:20', '2020-09-27 03:06:50'),
(13, 25, NULL, 1054, '2020-09-27', '2020-09-27', '2020-09-27', '2020-09-27', '2020-09-27', '3', NULL, NULL, 350, NULL, 0, NULL, NULL, NULL, '2020-09-27 03:11:14', '2020-09-27 03:22:02'),
(14, 25, NULL, 1025, '2020-09-27', '2020-09-27', '2020-09-27', '2020-09-27', '2020-09-27', '3', NULL, NULL, 350, NULL, 0, NULL, NULL, NULL, '2020-09-27 03:48:42', '2020-09-27 03:50:47'),
(15, 25, NULL, 1055, '2020-09-27', '2020-09-27', '2020-09-27', '2020-09-27', '2020-09-27', '3', NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, '2020-09-27 03:55:57', '2020-09-27 03:56:41'),
(16, 25, NULL, 1049, '2020-09-27', '2020-09-27', '2020-09-27', '2020-09-25', '2020-09-27', '3', NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, '2020-09-27 05:04:50', '2020-09-27 05:06:00'),
(17, NULL, 13, 1058, '2020-10-21', '2020-10-21', '2020-10-21', '2020-10-23', '2020-10-21', '3', NULL, NULL, 0, NULL, 2, NULL, NULL, NULL, '2020-10-21 13:45:30', '2020-10-21 13:46:42'),
(18, NULL, 13, 1058, '2020-10-21', '2020-10-21', '2020-10-21', '2020-10-22', '2020-10-21', '3', NULL, NULL, 0, NULL, 2, NULL, NULL, NULL, '2020-10-21 13:48:03', '2020-10-21 13:49:42'),
(19, NULL, 13, 1058, '2020-10-21', '2020-10-21', '2020-10-21', '2020-10-30', NULL, '2', NULL, NULL, 788, NULL, 2, NULL, NULL, NULL, '2020-10-21 13:51:01', '2020-10-21 14:03:42'),
(20, NULL, 13, 279, '2020-11-13', '2020-11-13', '2020-11-13', '2020-11-15', '2020-11-13', '3', NULL, NULL, 0, NULL, 2, NULL, NULL, NULL, '2020-11-13 14:02:11', '2020-11-13 14:16:07'),
(21, NULL, 13, 313, '2020-11-15', '2020-11-15', '2020-11-15', '2020-11-16', '2020-11-15', '3', NULL, NULL, 0, NULL, 2, NULL, NULL, NULL, '2020-11-15 00:24:23', '2020-11-15 00:31:10'),
(22, NULL, 13, 286, '2020-11-16', NULL, NULL, '2020-11-03', NULL, '0', NULL, NULL, NULL, NULL, 2, NULL, NULL, NULL, '2020-11-16 02:01:48', '2020-11-16 02:01:48'),
(23, 25, NULL, 286, '2020-11-16', NULL, NULL, '2020-11-17', NULL, '0', NULL, NULL, NULL, NULL, 2, NULL, NULL, NULL, '2020-11-16 02:09:51', '2020-11-16 02:09:51'),
(24, 25, NULL, 282, '2020-11-16', NULL, NULL, '2020-11-17', NULL, '0', NULL, NULL, NULL, NULL, 2, NULL, NULL, NULL, '2020-11-16 02:12:06', '2020-11-16 02:12:06');

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` int(11) DEFAULT NULL,
  `book_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `isbn` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `edition` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `copy` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `author_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `publication_id` int(11) DEFAULT NULL,
  `popularity` int(11) NOT NULL DEFAULT '0',
  `language` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `subcategory_id` int(11) DEFAULT NULL,
  `department_id` int(10) UNSIGNED DEFAULT NULL,
  `teacher_id` int(10) UNSIGNED DEFAULT NULL,
  `rack` int(11) DEFAULT NULL,
  `price` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `enlisted_date` date DEFAULT NULL,
  `condition` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `show` tinyint(4) DEFAULT NULL,
  `removed` tinyint(4) DEFAULT NULL,
  `book_status` int(11) DEFAULT '0' COMMENT '0=available; 1=removed; 2=lost; 3=occupied',
  `reason` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `book_file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `book_description` text COLLATE utf8mb4_unicode_ci,
  `date` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `code`, `book_name`, `isbn`, `edition`, `copy`, `author_id`, `publication_id`, `popularity`, `language`, `category_id`, `subcategory_id`, `department_id`, `teacher_id`, `rack`, `price`, `enlisted_date`, `condition`, `show`, `removed`, `book_status`, `reason`, `book_file`, `book_description`, `date`, `created_at`, `updated_at`) VALUES
(279, NULL, 'Fashion Marketing', NULL, '3rd', '1', '71', 17, 1, 'English', NULL, NULL, 13, NULL, 2, NULL, '2015-03-20', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-11 22:48:47', '2020-11-13 14:16:07'),
(280, NULL, 'Fashion Marketing', NULL, '3rd', '1', '71', 17, 0, 'English', 69, 74, 13, NULL, 2, NULL, '2015-03-20', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-11 22:49:28', '2020-11-11 22:49:28'),
(281, NULL, 'Fashion Source Book', NULL, '2nd', '1', '68', 17, 0, 'English', 56, 61, 13, NULL, 2, NULL, '2011-07-24', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-11 22:54:43', '2020-11-11 22:54:43'),
(282, NULL, 'Fundamental of Designing For Textiles Others End Uses', NULL, '1st', '1', '73', 29, 1, 'English', 70, 75, 13, NULL, 2, NULL, '2013-02-27', NULL, NULL, NULL, 3, NULL, NULL, NULL, NULL, '2020-11-11 23:03:03', '2020-11-16 02:12:06'),
(283, NULL, 'Handbook of Textile Design', NULL, '1st', '1', '74', 1, 0, 'English', 70, 75, 13, NULL, 2, NULL, '2011-07-27', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-11 23:12:41', '2020-11-11 23:12:41'),
(284, NULL, 'Handbook of Textile Design', NULL, '1st', '1', '74', 1, 0, 'English', 70, 75, 13, NULL, 2, NULL, '2011-07-27', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-11 23:13:03', '2020-11-11 23:13:03'),
(285, NULL, 'History of Fashion', NULL, '1st', '1', '31', 2, 0, 'English', 71, 76, 13, NULL, 2, NULL, '2013-02-27', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-11 23:17:31', '2020-11-11 23:17:31'),
(286, NULL, 'type scripts1234', NULL, '2nd', '2', '2', 1, 2, 'english', NULL, NULL, 5, NULL, 1, '200', '2020-11-12', 'paperback', NULL, NULL, 3, NULL, NULL, 'programming', NULL, '2020-11-11 23:19:46', '2020-11-16 02:09:51'),
(287, NULL, 'History of Fashion', NULL, '1st', '1', '31', 2, 0, 'English', 71, 76, 13, NULL, 2, NULL, '2011-07-24', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-11 23:20:19', '2020-11-11 23:20:19'),
(288, NULL, 'History of Fashion', NULL, '1st', '1', '31', 2, 0, 'English', 71, 76, 13, NULL, 2, NULL, '2011-07-24', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-11 23:20:36', '2020-11-11 23:20:36'),
(289, NULL, 'History of Fashion', NULL, '1st', '1', '31', 2, 0, 'English', 71, 76, 13, NULL, 2, NULL, '2013-02-27', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-11 23:22:14', '2020-11-11 23:22:14'),
(290, NULL, 'History of Fashion', NULL, '1st', '1', '31', 2, 0, 'English', 71, 76, 13, NULL, 2, NULL, '2013-02-27', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-11 23:22:45', '2020-11-11 23:22:45'),
(291, NULL, 'How Fashion Works', NULL, '2nd', '1', '75', 17, 0, 'English', 56, 61, 13, NULL, 2, NULL, '2013-02-27', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-11 23:26:50', '2020-11-11 23:26:50'),
(292, NULL, 'How Fashion Works', NULL, '2nd', '1', '75', 17, 0, 'English', 56, 61, 13, NULL, 2, NULL, '2013-02-27', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-11 23:27:12', '2020-11-11 23:27:12'),
(293, NULL, 'How Fashion Works', NULL, '2nd', '1', '75', 17, 0, 'English', 56, 61, 13, NULL, 2, NULL, '2013-02-27', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-11 23:27:31', '2020-11-11 23:27:31'),
(294, NULL, 'How Fashion Works', NULL, '2nd', '1', '75', 17, 0, 'English', 56, 61, 13, NULL, 2, NULL, '2013-02-27', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-11 23:27:49', '2020-11-11 23:27:49'),
(295, NULL, 'How Fashion Works', NULL, '2nd', '1', '75', 17, 0, 'English', 56, 61, 13, NULL, 2, NULL, '2013-02-27', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-11 23:28:06', '2020-11-11 23:28:06'),
(296, NULL, 'Inside Fashion Design', NULL, '4th', '1', '77', 16, 0, 'English', 56, 61, 13, NULL, 2, NULL, '2013-02-27', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-11 23:37:30', '2020-11-11 23:37:30'),
(297, NULL, 'Inside Fashion Design', NULL, '4th', '1', '77', 16, 0, 'English', 56, 61, 13, NULL, 2, NULL, '2013-02-27', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-11 23:37:52', '2020-11-11 23:37:52'),
(298, NULL, 'Inside the Fashion Business', NULL, '7th', '1', '76', 16, 0, 'English', 72, 77, 13, NULL, 2, NULL, '2013-02-27', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-11 23:42:00', '2020-11-11 23:42:00'),
(299, NULL, 'Inside the Fashion Business', NULL, '7th', '1', '76', 16, 0, 'English', 72, 77, 13, NULL, 2, NULL, '2013-02-27', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-11 23:42:36', '2020-11-11 23:42:36'),
(300, NULL, 'Ornamentation And Textiles Design', NULL, '1st', '1', '27', 41, 0, 'English', 70, 75, 13, NULL, 2, NULL, '2016-03-21', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-11 23:47:21', '2020-11-11 23:47:21'),
(301, NULL, 'Merchandising of Fashion Products', NULL, '1st', '1', '60', 41, 0, 'English', NULL, NULL, 13, NULL, 2, NULL, '2016-03-21', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-11 23:52:05', '2020-11-11 23:53:27'),
(302, NULL, 'Merchandising of Fashion Products', NULL, '1st', '1', '60', 41, 0, 'English', 73, 78, 13, NULL, 2, NULL, '2016-03-21', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-11 23:56:10', '2020-11-11 23:56:10'),
(303, NULL, 'Merchandising of Fashion Products', NULL, '1st', '1', '60', 41, 0, 'English', 73, 78, 13, NULL, 2, NULL, '2016-03-21', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-11 23:56:35', '2020-11-11 23:56:35'),
(304, NULL, 'Rendering Fashion,Fabric,&Prints', NULL, '1st', '1', '78', 16, 0, 'English', 74, 79, 13, NULL, 2, NULL, '2011-07-27', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-12 00:03:13', '2020-11-12 00:03:13'),
(305, NULL, 'Rendering Fashion,Fabric,&Prints', NULL, '1st', '1', '78', 16, 0, 'English', 74, 79, 13, NULL, 2, NULL, '2011-07-27', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-12 00:03:31', '2020-11-12 00:03:31'),
(306, NULL, 'Rendering Fashion,Fabric,&Prints', NULL, '1st', '1', '78', 16, 0, 'English', 74, 79, 13, NULL, 2, NULL, '2013-07-27', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-12 00:04:26', '2020-11-12 00:04:26'),
(307, NULL, 'Textbook of  Textile Design', NULL, '1st', '1', '79', 27, 0, 'English', 70, 75, 13, NULL, 2, NULL, '2013-02-27', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-12 00:10:31', '2020-11-12 00:10:31'),
(308, NULL, 'Textbook of  Textile Designing', NULL, '1st', '1', '30', 2, 0, 'English', NULL, NULL, 13, NULL, 2, NULL, '2011-07-26', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-12 00:12:24', '2020-11-12 00:13:44'),
(309, NULL, 'Textbook of  Textile Designing', NULL, '1st', '1', '30', 2, 0, 'English', 70, 75, 13, NULL, 2, NULL, '2011-07-26', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-12 00:13:11', '2020-11-12 00:13:11'),
(310, NULL, 'Textile and Fashion', NULL, '1st', '1', '0', 37, 0, 'English', 70, 75, 13, NULL, 2, NULL, '2011-07-26', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-12 00:17:20', '2020-11-12 00:17:20'),
(311, NULL, 'Textile and Fashion', NULL, '1st', '1', '0', 37, 0, 'English', 70, 75, 13, NULL, 2, NULL, '2011-07-26', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-12 00:17:38', '2020-11-12 00:17:38'),
(312, NULL, 'Textile Motifs of India', NULL, '1st', '1', '81', 30, 0, 'English', NULL, NULL, 13, NULL, 2, NULL, '2011-07-26', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-12 00:26:05', '2020-11-12 00:58:10'),
(313, NULL, 'The Art Of Fashion Draping', NULL, '3rd', '1', '82', 26, 1, 'English', 76, 81, 13, NULL, 2, NULL, '2011-07-26', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-12 00:36:12', '2020-11-15 00:31:10'),
(314, NULL, 'The Art Of Fashion Draping', NULL, '3rd', '1', '82', 26, 0, 'English', 76, 81, 13, NULL, 2, NULL, '2011-07-26', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-12 00:36:26', '2020-11-12 00:36:26'),
(315, NULL, 'The Art Of Fashion Draping', NULL, '3rd', '1', '82', 26, 0, 'English', 76, 81, 13, NULL, 2, NULL, '2016-03-21', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-12 00:37:14', '2020-11-12 00:37:14'),
(316, NULL, 'Garments Technology For Designers', NULL, '1st', '1', '36', 17, 0, 'English', 60, 65, 13, NULL, 2, NULL, '2011-07-28', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-12 00:40:47', '2020-11-12 00:40:47'),
(317, NULL, 'Garments Technology For Designers', NULL, '1st', '1', '36', 17, 0, 'English', 60, 65, 13, NULL, 2, NULL, '2011-07-28', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-12 00:41:11', '2020-11-12 00:41:11'),
(318, NULL, 'Interior Textiles', NULL, '1st', '1', '27', 41, 0, 'English', 77, 82, 13, NULL, 2, NULL, '2016-03-21', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-12 00:44:13', '2020-11-12 00:44:13'),
(319, NULL, 'Handbook of Fashion Technology', NULL, '1st', '1', '27', 41, 0, 'English', 56, 61, 13, NULL, 2, NULL, '2016-03-21', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-12 00:51:00', '2020-11-12 00:51:00'),
(320, NULL, 'Handbook of Fashion Technology', NULL, '1st', '1', '27', 41, 0, 'English', 56, 61, 13, NULL, 2, NULL, '2016-03-21', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-12 00:51:17', '2020-11-12 00:51:17'),
(321, NULL, 'Pattern Cutting and Making Up', NULL, '1st', '1', '83', 27, 0, 'English', NULL, NULL, 3, NULL, 3, NULL, '2011-07-24', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-14 09:36:38', '2020-11-14 09:40:24'),
(322, NULL, 'Pattern Cutting and Making Up', NULL, '1st', '1', '83', 27, 0, 'English', NULL, NULL, 3, NULL, 3, NULL, '2013-02-27', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-14 09:37:59', '2020-11-14 09:40:59'),
(323, NULL, 'Pattern Cutting and Making Up', NULL, '1st', '1', '83', 27, 0, 'English', NULL, NULL, 3, NULL, 3, NULL, '2013-02-27', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-14 09:38:39', '2020-11-14 09:41:34'),
(324, NULL, 'Pattern Cutting and Making Up', NULL, '1st', '1', '83', 27, 0, 'English', 78, 83, 3, NULL, 3, NULL, '2013-02-27', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-14 09:39:43', '2020-11-14 09:39:43'),
(325, NULL, 'Ikat Patterns From Indonesia, Malaysia and India', NULL, '1st', '1', '84', 55, 0, 'English', 79, 84, 3, NULL, 3, NULL, '2011-07-28', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-14 09:47:50', '2020-11-14 09:47:50'),
(326, NULL, 'Pattern Grading for Men\'s clothes', NULL, '1st', '1', '36', 17, 0, 'English', 80, 85, 3, NULL, 3, NULL, '2011-07-28', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-14 09:53:08', '2020-11-14 09:53:08'),
(327, NULL, 'Pattern Grading for Women\'s clothes', NULL, '1st', '1', '36', 17, 0, 'English', 80, 85, 3, NULL, 3, NULL, '2011-07-25', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-14 09:54:40', '2020-11-14 09:54:40'),
(328, NULL, 'Pattern Grading for Women\'s clothes', NULL, '1st', '1', '36', 17, 0, 'English', 80, 85, 3, NULL, 3, NULL, '2011-07-25', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-14 09:55:12', '2020-11-14 09:55:12'),
(329, NULL, 'Patternmaking For Fashion Design', NULL, '4th', '1', '85', 16, 0, 'English', 78, 83, 3, NULL, 3, NULL, '2011-07-24', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-14 22:29:04', '2020-11-14 22:29:04'),
(330, NULL, 'Patternmaking For Fashion Design', NULL, '4th', '1', '85', 16, 0, 'English', 78, 83, 3, NULL, 3, NULL, '2011-07-24', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-14 22:29:30', '2020-11-14 22:29:30'),
(331, NULL, 'Patternmaking For Fashion Design', NULL, '4th', '1', '85', 16, 0, 'English', 78, 83, 3, NULL, 3, NULL, '2012-03-24', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-14 22:30:08', '2020-11-14 22:30:08'),
(332, NULL, 'Patternmaking For Fashion Design', NULL, '4th', '1', '85', 16, 0, 'English', 78, 83, 3, NULL, 3, NULL, '2012-03-24', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-14 22:30:38', '2020-11-14 22:30:38'),
(333, NULL, 'Patternmaking For Fashion Design', NULL, '5th', '1', '85', 16, 0, 'English', 78, 83, 3, NULL, 3, NULL, '2018-02-25', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-14 22:31:29', '2020-11-14 22:31:29'),
(334, NULL, 'Patternmaking For Fashion Design', NULL, '5th', '1', '85', 16, 0, 'English', 78, 83, 3, NULL, 3, NULL, '2018-02-25', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-14 22:31:52', '2020-11-14 22:31:52'),
(335, NULL, 'Patternmaking For Fashion Design', NULL, '5th', '1', '85', 16, 0, 'English', 78, 83, 3, NULL, 3, NULL, '2016-06-04', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-14 22:32:56', '2020-11-14 22:32:56'),
(336, NULL, 'Patternmaking For Fashion Design', NULL, '5th', '1', '85', 16, 0, 'English', 78, 83, 3, NULL, 3, NULL, '2016-06-04', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-14 22:33:18', '2020-11-14 22:33:18'),
(337, NULL, 'Patternmaking For Fashion Design', NULL, '5th', '1', '85', 16, 0, 'English', 78, 83, 3, NULL, 3, NULL, '2016-06-04', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-14 22:33:38', '2020-11-14 22:33:38'),
(338, NULL, 'Patternmaking For Fashion Design', NULL, '5th', '1', '85', 16, 0, 'English', 78, 83, 3, NULL, 3, NULL, '2016-06-04', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-14 22:33:57', '2020-11-14 22:33:57'),
(339, NULL, 'Patternmaking For Fashion Design', NULL, '5th', '1', '85', 16, 0, 'English', 78, 83, 3, NULL, 3, NULL, '2016-06-04', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-14 22:34:15', '2020-11-14 22:34:15'),
(340, NULL, 'Patternmaking For Fashion Design', NULL, '5th', '1', '85', 16, 0, 'English', 78, 83, 3, NULL, 3, NULL, '2016-06-04', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-14 22:34:41', '2020-11-14 22:34:41'),
(341, NULL, 'Patternmaking For Fashion Design', NULL, '5th', '1', '85', 16, 0, 'English', 78, 83, 3, NULL, 3, NULL, '2016-06-04', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-14 22:35:06', '2020-11-14 22:35:06'),
(342, NULL, 'Patternmaking For Fashion Design', NULL, '5th', '1', '85', 16, 0, 'English', 78, 83, 3, NULL, 3, NULL, '2016-06-04', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-14 22:35:27', '2020-11-14 22:35:27'),
(343, NULL, 'Patternmaking For Fashion Design', NULL, '5th', '1', '85', 16, 0, 'English', 78, 83, 3, NULL, 3, NULL, '2016-06-04', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-14 22:35:46', '2020-11-14 22:35:46'),
(344, NULL, 'Patternmaking For Fashion Design', NULL, '5th', '1', '85', 16, 0, 'English', 78, 83, 3, NULL, 3, NULL, '2017-01-29', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-14 22:37:18', '2020-11-14 22:37:18'),
(345, NULL, 'Pocket Weaving Expert', NULL, '1st', '1', '86', 48, 0, 'English', 81, 86, 3, NULL, 3, NULL, '2011-07-24', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-14 22:52:05', '2020-11-14 22:52:05'),
(346, NULL, 'Practical Guide To Fabric Manufacture And Cloth Analysis Laborataries', NULL, '1st', '1', '87', 56, 0, 'English', 82, 87, 3, NULL, 3, NULL, '2013-02-27', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-14 23:03:17', '2020-11-14 23:03:17'),
(347, NULL, 'Practical Guide To Fabric Manufacture And Cloth Analysis Laborataries', NULL, '1st', '1', '87', 56, 0, 'English', 82, 87, 3, NULL, 3, NULL, '2013-02-27', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-14 23:03:58', '2020-11-14 23:03:58'),
(348, NULL, 'Practical Guide To Fabric Manufacture And Cloth Analysis Laborataries', NULL, '1st', '1', '87', 56, 0, 'English', 82, 87, 3, NULL, 3, NULL, '2013-02-27', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-14 23:04:11', '2020-11-14 23:04:11'),
(349, NULL, 'Practical Guide To Fabric Manufacture And Cloth Analysis Laborataries', NULL, '1st', '1', '87', 56, 0, 'English', 82, 87, 3, NULL, 3, NULL, '2013-02-27', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-14 23:04:23', '2020-11-14 23:04:23'),
(350, NULL, 'Practical Guide To Fabric Manufacture And Cloth Analysis Laborataries', NULL, '1st', '1', '87', 56, 0, 'English', 82, 87, 3, NULL, 3, NULL, '2013-02-27', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-14 23:04:41', '2020-11-14 23:04:41'),
(351, NULL, 'Textile Calculation & Structure Of Fabric', NULL, '1st', '1', '88', 4, 0, 'English', 83, 88, 4, NULL, 3, NULL, '2013-02-27', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-14 23:11:26', '2020-11-14 23:11:26'),
(352, NULL, 'Textile Calculation & Structure Of Fabric', NULL, '1st', '1', '88', 4, 0, 'English', 83, 88, 4, NULL, 3, NULL, '2013-02-27', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-14 23:11:43', '2020-11-14 23:11:43'),
(353, NULL, 'Textile Calculation & Structure Of Fabric', NULL, '1st', '1', '88', 4, 0, 'English', 83, 88, 4, NULL, 3, NULL, '2018-02-25', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-14 23:12:39', '2020-11-14 23:12:39'),
(354, NULL, 'Textile Calculation & Structure Of Fabric', NULL, '1st', '1', '88', 4, 0, 'English', 83, 88, 4, NULL, 3, NULL, '2018-02-25', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-14 23:12:58', '2020-11-14 23:12:58'),
(355, NULL, 'Textile Weaving & design', NULL, '1st', '1', '90', 4, 0, 'English', NULL, NULL, 3, NULL, 3, NULL, '2013-02-07', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-14 23:40:12', '2020-11-23 22:58:29'),
(356, NULL, 'Textile Weaving & design', NULL, '1st', '1', '90', 4, 0, 'English', NULL, NULL, 3, NULL, 3, NULL, '2013-02-07', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-14 23:40:33', '2020-11-23 22:57:57'),
(357, NULL, 'Textile Weaving & design', NULL, '1st', '1', '0', 4, 0, 'English', 85, 90, 3, NULL, 3, NULL, '2013-02-07', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-14 23:41:37', '2020-11-14 23:41:37'),
(358, NULL, 'Textile Weaving & design', NULL, '1st', '1', '90', 4, 0, 'English', NULL, NULL, 3, NULL, 3, NULL, '2016-03-21', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-14 23:42:13', '2020-11-23 22:57:08'),
(359, NULL, 'The Finishing of Jute & Linen Fabrics', NULL, '1st', '1', '89', 4, 0, 'English', 84, 89, 3, NULL, 3, NULL, '2011-07-24', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-23 23:05:10', '2020-11-23 23:05:10'),
(360, NULL, 'The Finishing of Jute & Linen Fabrics', NULL, '1st', '1', '89', 4, 0, 'English', 84, 89, 3, NULL, 3, NULL, '2011-07-24', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-23 23:05:32', '2020-11-23 23:05:32'),
(361, NULL, 'The Finishing of Jute & Linen Fabrics', NULL, '1st', '1', '89', 4, 0, 'English', 84, 89, 3, NULL, 3, NULL, '2013-02-27', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-23 23:06:26', '2020-11-23 23:06:26'),
(362, NULL, 'The Finishing of Jute & Linen Fabrics', NULL, '1st', '1', '89', 4, 0, 'English', 84, 89, 3, NULL, 3, NULL, '2013-02-27', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-23 23:06:46', '2020-11-23 23:06:46'),
(363, NULL, 'The Finishing of Jute & Linen Fabrics', NULL, '1st', '1', '89', 4, 0, 'English', 84, 89, 3, NULL, 3, NULL, '2013-02-27', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-23 23:07:09', '2020-11-23 23:07:09'),
(364, NULL, 'The Finishing of Jute & Linen Fabrics', NULL, '1st', '1', '89', 4, 0, 'English', 84, 89, 3, NULL, 3, NULL, '2013-02-27', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-23 23:07:36', '2020-11-23 23:07:36'),
(365, NULL, 'The Finishing of Jute & Linen Fabrics', NULL, '1st', '1', '89', 4, 0, 'English', 84, 89, 3, NULL, 3, NULL, '2013-02-27', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-23 23:08:09', '2020-11-23 23:08:09'),
(366, NULL, 'Weaving', NULL, '1st', '1', '91', 56, 0, 'English', 86, 91, 3, NULL, 3, NULL, '2013-02-27', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-23 23:18:18', '2020-11-23 23:18:18'),
(367, NULL, 'Weaving', NULL, '1st', '1', '91', 56, 0, 'English', 86, 91, 3, NULL, 3, NULL, '2013-02-27', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-23 23:19:33', '2020-11-23 23:19:33'),
(368, NULL, 'Weaving', NULL, '1st', '1', '91', 56, 0, 'English', 86, 91, 3, NULL, 3, NULL, '2013-02-27', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-23 23:19:54', '2020-11-23 23:19:54'),
(369, NULL, 'Weaving', NULL, '1st', '1', '91', 56, 0, 'English', 86, 91, 3, NULL, 3, NULL, '2013-02-27', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-23 23:20:19', '2020-11-23 23:20:19'),
(370, NULL, 'Weaving', NULL, '1st', '1', '91', 56, 0, 'English', 86, 91, 3, NULL, 3, NULL, '2013-02-27', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-23 23:20:45', '2020-11-23 23:20:45'),
(371, NULL, 'Weaving Preparation', NULL, '1st', '1', '87', 4, 0, 'English', 87, 92, 3, NULL, 3, NULL, '2016-03-21', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-23 23:49:58', '2020-11-23 23:49:58'),
(372, NULL, 'Weaving Preparation', NULL, '1st', '1', '87', 4, 0, 'English', 87, 92, 3, NULL, 3, NULL, '2018-02-25', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-23 23:53:45', '2020-11-23 23:53:45'),
(373, NULL, 'Weaving Preparation', NULL, '1st', '1', '87', 4, 0, 'English', 87, 92, 3, NULL, 3, NULL, '2018-02-25', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-23 23:54:07', '2020-11-23 23:54:07'),
(374, NULL, 'Weaving Control of Fabric Struture', NULL, '1st', '1', '92', 1, 0, 'English', 83, 88, 3, NULL, 3, NULL, '2011-04-20', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-23 23:55:47', '2020-11-23 23:55:47'),
(375, NULL, 'Weaving Control of Fabric Struture', NULL, '1st', '1', '92', 1, 0, 'English', 83, 88, 3, NULL, 3, NULL, '2011-07-28', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-23 23:56:23', '2020-11-23 23:56:23'),
(376, NULL, 'Weaving Conversion of Yarn To Fabric', NULL, '2nd', '1', '93', 1, 0, 'English', 88, 93, 3, NULL, 3, NULL, '2013-02-27', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-24 00:08:57', '2020-11-24 00:08:57'),
(377, NULL, 'Weaving Conversion of Yarn To Fabric', NULL, '2nd', '1', '93', 1, 0, 'English', 88, 93, 3, NULL, 3, NULL, '2015-04-02', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-24 00:09:51', '2020-11-24 00:09:51'),
(378, NULL, 'Weaving Conversion of Yarn To Fabric', NULL, '2nd', '1', '93', 1, 0, 'English', 88, 93, 3, NULL, 3, NULL, '2015-04-02', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-24 00:10:07', '2020-11-24 00:10:07'),
(379, NULL, 'Weaving', NULL, '1st', '1', '94', 40, 0, 'English', 85, 90, 3, NULL, 3, NULL, '2016-03-21', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-24 00:12:43', '2020-11-24 00:12:43'),
(380, NULL, 'Fundamental and Advances in Knitting Technology', NULL, '1st', '1', '96', 1, 0, 'English', 89, 94, 3, NULL, 3, NULL, '2015-06-10', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-24 00:59:25', '2020-11-24 00:59:25'),
(381, NULL, 'Fundamental and Advances in Knitting Technology', NULL, '1st', '1', '96', 1, 0, 'English', 89, 94, 3, NULL, 3, NULL, '2018-02-25', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-24 01:00:11', '2020-11-24 01:00:11'),
(382, NULL, 'Fundamental and Advances in Knitting Technology', NULL, '1st', '1', '96', 1, 0, 'English', 89, 94, 3, NULL, 3, NULL, '2018-02-25', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-24 01:00:25', '2020-11-24 01:00:25'),
(383, NULL, 'Fundamental and Advances in Knitting Technology', NULL, '1st', '1', '96', 1, 0, 'English', 89, 94, 3, NULL, 3, NULL, '2013-02-27', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-24 01:01:47', '2020-11-24 01:01:47'),
(384, NULL, 'Fabric Manufacturing- 3', NULL, '1st', '1', '28', 57, 0, 'Bangla', 83, 88, 3, NULL, 3, NULL, '2013-07-06', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-24 01:02:39', '2020-11-24 01:02:39'),
(385, NULL, 'Fabric Manufacturing- 3', NULL, '1st', '1', '28', 57, 0, 'Bangla', 83, 88, 3, NULL, 3, NULL, '2013-07-06', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-24 01:02:59', '2020-11-24 01:02:59'),
(386, NULL, 'Fabric Manufacturing- 3', NULL, '1st', '1', '28', 57, 0, 'Bangla', 83, 88, 3, NULL, 3, NULL, '2013-07-06', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-24 01:03:22', '2020-11-24 01:03:22'),
(387, NULL, 'Introduction to Knitting Technology', NULL, '1st', '1', '97', 4, 0, 'English', 89, 94, 3, NULL, 3, NULL, '2016-03-21', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-24 23:00:46', '2020-11-24 23:00:46'),
(388, NULL, 'Knitted Clothing Technology', NULL, '1st', '1', '0', 17, 0, 'English', 89, 94, 3, NULL, 3, NULL, '2011-07-26', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-24 23:04:07', '2020-11-24 23:04:07'),
(389, NULL, 'Knitted Clothing Technology', NULL, '1st', '1', '0', 17, 0, 'English', 89, 94, 3, NULL, 3, NULL, '2011-07-26', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-24 23:05:23', '2020-11-24 23:05:23'),
(390, NULL, 'Knitted Clothing Technology', NULL, '1st', '1', '0', 17, 0, 'English', 89, 94, 3, NULL, 3, NULL, '2012-04-27', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-24 23:06:16', '2020-11-24 23:06:16'),
(391, NULL, 'Knitted Clothing Technology', NULL, '1st', '1', '0', 17, 0, 'English', 89, 94, 3, NULL, 3, NULL, '2013-02-27', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-24 23:07:07', '2020-11-24 23:07:07'),
(392, NULL, 'Knitted Clothing Technology', NULL, '1st', '1', '0', 17, 0, 'English', 89, 94, 3, NULL, 3, NULL, '2013-02-27', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-24 23:07:34', '2020-11-24 23:07:34'),
(393, NULL, 'Knitted Clothing Technology', NULL, '1st', '1', '0', 17, 0, 'English', 89, 94, 3, NULL, 3, NULL, '2013-02-27', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-24 23:08:04', '2020-11-24 23:08:04'),
(394, NULL, 'Knitted Clothing Technology', NULL, '1st', '1', '0', 17, 0, 'English', 89, 94, 3, NULL, 3, NULL, '2013-02-27', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-24 23:08:24', '2020-11-24 23:08:24'),
(395, NULL, 'Knitted Clothing Technology', NULL, '1st', '1', '0', 17, 0, 'English', 89, 94, 3, NULL, 3, NULL, '2013-02-27', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-24 23:08:45', '2020-11-24 23:08:45'),
(396, NULL, 'Knitting', NULL, '1st', '1', '99', 29, 0, 'English', 89, 94, 3, NULL, 3, NULL, '2011-07-24', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-24 23:28:14', '2020-11-24 23:28:14'),
(397, NULL, 'Knitting', NULL, '1st', '1', '99', 29, 0, 'English', 89, 94, 3, NULL, 3, NULL, '2011-07-24', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-24 23:28:45', '2020-11-24 23:28:45'),
(398, NULL, 'Knitting', NULL, '1st', '1', '99', 29, 0, 'English', 89, 94, 3, NULL, 3, NULL, '2016-03-21', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-24 23:29:39', '2020-11-24 23:29:39'),
(399, NULL, 'Knitting Technology', NULL, '1st', '1', '31', 2, 0, 'English', 89, 94, 3, NULL, 3, NULL, '2016-07-28', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-24 23:33:30', '2020-11-24 23:33:30'),
(400, NULL, 'Knitting Technology', NULL, '1st', '1', '31', 2, 0, 'English', 89, 94, 3, NULL, 3, NULL, '2016-07-28', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-24 23:34:22', '2020-11-24 23:34:22'),
(401, NULL, 'Knitting Technology', NULL, '3rd', '1', '100', 1, 0, 'English', 89, 94, 3, NULL, 3, NULL, '2011-04-20', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-24 23:37:19', '2020-11-24 23:37:19'),
(402, NULL, 'Knitting Technology', NULL, '3rd', '1', '100', 1, 0, 'English', 89, 94, 3, NULL, 3, NULL, '2011-04-20', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-24 23:37:38', '2020-11-24 23:37:38'),
(403, NULL, 'Knitting Technology', NULL, '3rd', '1', '100', 1, 0, 'English', 89, 94, 3, NULL, 3, NULL, '2011-04-20', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-24 23:37:54', '2020-11-24 23:37:54'),
(404, NULL, 'Knitting Technology', NULL, '3rd', '1', '100', 1, 0, 'English', 89, 94, 3, NULL, 3, NULL, '2011-04-20', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-24 23:38:12', '2020-11-24 23:38:12'),
(405, NULL, 'Knitting Technology', NULL, '3rd', '1', '100', 1, 0, 'English', 89, 94, 3, NULL, 3, NULL, '2011-04-20', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-24 23:38:31', '2020-11-24 23:38:31'),
(406, NULL, 'Knitting Technology', NULL, '3rd', '1', '100', 1, 0, 'English', 89, 94, 3, NULL, 3, NULL, '2011-04-20', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-24 23:38:49', '2020-11-24 23:38:49'),
(407, NULL, 'Knitting', NULL, '1st', '1', '99', 29, 0, 'English', 89, 94, 3, NULL, 3, NULL, '2018-02-25', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-24 23:44:58', '2020-11-24 23:44:58'),
(408, NULL, 'Knitting', NULL, '1st', '1', '99', 29, 0, 'English', 89, 94, 3, NULL, 3, NULL, '2018-02-25', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-24 23:45:16', '2020-11-24 23:45:16'),
(409, NULL, 'Modern Knitting Technology', NULL, '1st', '1', '0', 41, 0, 'English', 89, 94, 3, NULL, 3, NULL, '2016-03-21', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-24 23:53:34', '2020-11-24 23:53:34'),
(410, NULL, 'Knitting Expert', NULL, '1st', '1', '86', 24, 0, 'English', 89, 94, 3, NULL, 3, NULL, '2011-07-24', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-24 23:55:40', '2020-11-24 23:55:40'),
(411, NULL, 'Knitting and knit Dyeing Technology', NULL, '1st', '1', '101', 45, 0, 'Bangla', 89, 94, 3, NULL, 3, NULL, '2016-03-21', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-24 23:59:30', '2020-11-24 23:59:30'),
(412, NULL, 'Advanced Drafting and Draping', NULL, '2nd', '1', '31', 2, 0, 'English', 90, 95, 3, NULL, 3, NULL, '2011-07-26', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-25 00:11:13', '2020-11-25 00:11:13'),
(413, NULL, 'Advanced Drafting and Draping', NULL, '2nd', '1', '31', 2, 0, 'English', 90, 95, 3, NULL, 3, NULL, '2011-07-26', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-25 00:11:33', '2020-11-25 00:11:33'),
(414, NULL, 'Advanced Drafting and Draping', NULL, '2nd', '1', '31', 2, 0, 'English', 90, 95, 3, NULL, 3, NULL, '2013-02-27', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-25 00:12:27', '2020-11-25 00:12:27'),
(415, NULL, 'Advanced Drafting and Draping', NULL, '2nd', '1', '31', 2, 0, 'English', 90, 95, 3, NULL, 3, NULL, '2013-02-27', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-25 00:12:54', '2020-11-25 00:12:54'),
(416, NULL, 'Advanced Drafting and Draping', NULL, '2nd', '1', '31', 2, 0, 'English', 90, 95, 3, NULL, 3, NULL, '2013-02-27', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-25 00:13:14', '2020-11-25 00:13:14'),
(417, NULL, 'Advanced Drafting and Draping', NULL, '2nd', '1', '31', 2, 0, 'English', 90, 95, 3, NULL, 3, NULL, '2013-02-27', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-25 00:13:31', '2020-11-25 00:13:31'),
(418, NULL, 'Advanced Drafting and Draping', NULL, '2nd', '1', '31', 2, 0, 'English', 90, 95, 3, NULL, 3, NULL, '2013-02-27', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-25 00:13:52', '2020-11-25 00:13:52'),
(419, NULL, 'Analysis of Woven Fabrics', NULL, '2nd', '1', '102', 4, 0, 'English', 91, 97, 3, NULL, 3, NULL, '2013-02-27', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-25 22:52:05', '2020-11-25 22:52:05'),
(420, NULL, 'Bonded Fabrics', NULL, '1st', '1', '103', 1, 0, 'English', 91, NULL, 3, NULL, 3, NULL, '2017-01-27', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-25 23:11:38', '2020-11-25 23:11:38'),
(421, NULL, 'Cotton Weaving And Designing', NULL, '1st', '1', '0', 4, 0, 'English', 85, 90, 3, NULL, 3, NULL, '2012-04-26', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-25 23:16:22', '2020-11-25 23:16:22'),
(422, NULL, 'Cotton Weaving And Designing', NULL, '1st', '1', '0', 4, 0, 'English', 85, 90, 3, NULL, 3, NULL, '2011-07-24', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-25 23:17:10', '2020-11-25 23:17:10'),
(423, NULL, 'Cotton Weaving And Designing', NULL, '1st', '1', '0', 4, 0, 'English', 85, 90, 3, NULL, 3, NULL, '2011-07-24', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-25 23:17:40', '2020-11-25 23:17:40'),
(424, NULL, 'Cotton Weaving And Designing', NULL, '1st', '1', '0', 4, 0, 'English', 85, 90, 3, NULL, 3, NULL, '2013-02-27', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-25 23:20:05', '2020-11-25 23:20:05'),
(425, NULL, 'Cotton Weaving And Designing', NULL, '1st', '1', '0', 4, 0, 'English', 85, 90, 3, NULL, 3, NULL, '2013-02-27', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-25 23:20:26', '2020-11-25 23:20:26'),
(426, NULL, 'পাট শিল্পের কলা কৌশল', NULL, '3rd', '1', '105', 58, 0, 'Bangla', 84, 89, 3, NULL, 3, NULL, '2011-07-24', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-25 23:29:05', '2020-11-25 23:29:05'),
(427, NULL, 'পাট শিল্পের কলা কৌশল', NULL, '3rd', '1', '105', 58, 0, 'Bangla', 84, 89, 3, NULL, 3, NULL, '2011-07-24', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-25 23:29:22', '2020-11-25 23:29:22'),
(428, NULL, 'পাট শিল্পের কলা কৌশল', NULL, '3rd', '1', '105', 58, 0, 'Bangla', 84, 89, 3, NULL, 3, NULL, '2011-07-20', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-25 23:30:06', '2020-11-25 23:30:06'),
(429, NULL, 'Fabric Manufacturing-1', NULL, '3rd', '1', '33', 46, 0, 'English', 91, 102, 3, NULL, 3, NULL, '2012-04-26', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-26 09:38:25', '2020-11-26 09:38:25'),
(430, NULL, 'Fabric Manufacturing-1', NULL, '3rd', '1', '33', 46, 0, 'English', 91, 102, 3, NULL, 3, NULL, '2012-04-26', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-26 09:40:08', '2020-11-26 09:40:08'),
(431, NULL, 'Fabric Manufacturing-1', NULL, '3rd', '1', '33', 46, 0, 'English', 91, 102, 3, NULL, 3, NULL, '2012-04-26', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-26 09:40:34', '2020-11-26 09:40:34'),
(432, NULL, 'Fabric Manufacturing-1', NULL, '3rd', '1', '33', 46, 0, 'English', 91, 102, 3, NULL, 3, NULL, '2012-04-26', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-26 09:40:58', '2020-11-26 09:40:58'),
(433, NULL, 'Fabric Manufacturing-1', NULL, '3rd', '1', '33', 46, 0, 'English', 91, 102, 3, NULL, 3, NULL, '2017-01-29', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-26 09:42:19', '2020-11-26 09:42:19'),
(434, NULL, 'Fabric Manufacturing-1', NULL, '3rd', '1', '33', 46, 0, 'English', NULL, NULL, 3, NULL, 3, NULL, '2018-02-25', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-26 09:49:36', '2020-11-26 09:54:04'),
(435, NULL, 'Fabric Manufacturing-1', NULL, '3rd', '1', '33', 46, 0, 'English', NULL, NULL, 3, NULL, 3, NULL, '2018-02-25', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-26 09:49:54', '2020-11-26 09:54:30'),
(436, NULL, 'Fabric Manufacturing-2', NULL, '4th', '1', '33', 46, 0, 'English', 91, 102, 3, NULL, 3, NULL, '2018-02-25', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-26 09:51:41', '2020-11-26 09:51:41'),
(437, NULL, 'Fabric Manufacturing-2', NULL, '4th', '1', '33', 46, 0, 'English', 91, 102, 3, NULL, 3, NULL, '2018-02-25', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-26 09:51:59', '2020-11-26 09:51:59'),
(438, NULL, 'Fabroc Harmony', NULL, '1st', '1', '106', 59, 0, 'English', 95, 103, 3, NULL, 3, NULL, '2011-07-20', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-26 10:00:08', '2020-11-26 10:00:08'),
(439, NULL, 'Fabroc Harmony', NULL, '1st', '1', '106', 59, 0, 'English', 95, 103, 3, NULL, 3, NULL, '2011-07-26', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-26 10:01:06', '2020-11-26 10:01:06'),
(440, NULL, 'Fabroc Harmony', NULL, '1st', '1', '106', 59, 0, 'English', 95, 103, 3, NULL, 3, NULL, '2011-07-26', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-26 10:01:26', '2020-11-26 10:01:26'),
(441, NULL, 'Fabric Reference', NULL, '4th', '1', '107', 16, 0, 'English', 9, 8, 3, NULL, 3, NULL, '2016-06-04', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-26 10:10:24', '2020-11-26 10:10:24'),
(442, NULL, 'Fabric Reference', NULL, '4th', '1', '107', 16, 0, 'English', 9, 8, 3, NULL, 3, NULL, '2016-06-04', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-26 10:10:58', '2020-11-26 10:10:58'),
(443, NULL, 'Fabric Reference', NULL, '4th', '1', '107', 16, 0, 'English', 9, 8, 3, NULL, 3, NULL, '2016-06-04', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-26 10:11:11', '2020-11-26 10:11:11'),
(444, NULL, 'Fabric Reference', NULL, '4th', '1', '107', 16, 0, 'English', 9, 8, 3, NULL, 3, NULL, '2016-06-04', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-26 10:11:38', '2020-11-26 10:11:38'),
(445, NULL, 'Fabric Reference', NULL, '4th', '1', '107', 16, 0, 'English', 9, 8, 3, NULL, 3, NULL, '2016-06-04', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-26 10:11:52', '2020-11-26 10:11:52'),
(446, NULL, 'Fabric Structure & Design', NULL, '4th', '1', '33', 46, 0, 'English', 83, 88, 3, NULL, 3, NULL, '2017-01-29', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-26 10:14:59', '2020-11-26 10:14:59'),
(447, NULL, 'Fabric Structure & Design', NULL, '4th', '1', '33', 46, 0, 'English', 83, 88, 3, NULL, 3, NULL, '2018-02-25', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-26 10:16:17', '2020-11-26 10:16:17'),
(448, NULL, 'Fabric Structure & Design', NULL, '4th', '1', '33', 46, 0, 'English', 83, 88, 3, NULL, 3, NULL, '2018-02-25', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-26 10:16:36', '2020-11-26 10:16:36'),
(449, NULL, 'Fabric Structure & Design', NULL, '2nd', '1', '87', 29, 0, 'English', 83, 88, 3, NULL, 3, NULL, '2018-02-25', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-26 10:18:38', '2020-11-26 10:18:38'),
(450, NULL, 'Fabric Structure & Design', NULL, '2nd', '1', '87', 29, 0, 'English', 83, 88, 3, NULL, 3, NULL, '2018-02-25', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-26 10:18:59', '2020-11-26 10:18:59'),
(451, NULL, 'Fabric Studies', NULL, '1st', '1', '108', 2, 0, 'English', 91, 102, 3, NULL, 3, NULL, '2011-07-28', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-26 21:54:56', '2020-11-26 21:54:56'),
(452, NULL, 'Fabric Studies', NULL, '1st', '1', '108', 2, 0, 'English', 91, 102, 3, NULL, 3, NULL, '2013-02-27', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-26 21:56:10', '2020-11-26 21:56:10'),
(453, NULL, 'Fabric Studies', NULL, '1st', '1', '108', 2, 0, 'English', 91, 102, 3, NULL, 3, NULL, '2013-02-27', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-26 21:56:33', '2020-11-26 21:56:33'),
(454, NULL, 'Fabric for Fashion & Textile Design', NULL, '1st', '1', '60', 41, 0, 'English', 70, 75, 3, NULL, 3, NULL, '2016-03-21', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-26 22:15:04', '2020-11-26 22:15:04'),
(455, NULL, 'Fabric for Fashion & Textile Design', NULL, '1st', '1', '60', 41, 0, 'English', 70, 75, 3, NULL, 3, NULL, '2018-02-25', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-26 22:15:58', '2020-11-26 22:15:58'),
(456, NULL, 'Fabric for Fashion & Textile Design', NULL, '1st', '1', '60', 41, 0, 'English', 70, 75, 3, NULL, 3, NULL, '2018-02-25', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-26 22:16:15', '2020-11-26 22:16:15'),
(457, NULL, 'Handbook of Nonwoven', NULL, '1st', '1', '109', 1, 0, 'English', 96, 105, 3, NULL, 3, NULL, '2013-02-27', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-26 22:23:51', '2020-11-26 22:23:51'),
(458, NULL, 'Handbook of Nonwoven', NULL, '1st', '1', '109', 1, 0, 'English', 96, 105, 3, NULL, 3, NULL, '2013-02-27', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-26 22:24:33', '2020-11-26 22:24:33'),
(459, NULL, 'Handbook of Nonwoven', NULL, '1st', '1', '109', 1, 0, 'English', 96, 105, 3, NULL, 3, NULL, '2013-02-27', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-26 22:24:56', '2020-11-26 22:24:56'),
(460, NULL, 'Handbook of Nonwoven', NULL, '1st', '1', '109', 1, 0, 'English', 96, 105, 3, NULL, 3, NULL, '2013-02-27', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-26 22:25:56', '2020-11-26 22:25:56'),
(461, NULL, 'Handbook of Nonwoven', NULL, '1st', '1', '109', 1, 0, 'English', 96, 105, 3, NULL, 3, NULL, '2013-02-27', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-26 22:26:15', '2020-11-26 22:26:15'),
(462, NULL, 'Handbook of Nonwoven', NULL, '1st', '1', '109', 1, 0, 'English', 96, 105, 3, NULL, 3, NULL, '2011-04-20', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-26 22:28:42', '2020-11-26 22:28:42'),
(463, NULL, 'Handbook of Textile Design', NULL, '1st', '1', '74', 1, 0, 'English', 70, 75, 3, NULL, 3, NULL, '2011-07-27', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-26 22:36:24', '2020-11-26 22:36:24'),
(464, NULL, 'Handbook of Textile Design', NULL, '1st', '1', '74', 1, 0, 'English', 70, 75, 3, NULL, 3, NULL, '2011-07-27', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-26 22:36:45', '2020-11-26 22:36:45'),
(465, NULL, 'Handbook of Textile Design', NULL, '1st', '1', '74', 1, 0, 'English', 70, 75, 3, NULL, 3, NULL, '2016-06-04', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-26 22:37:31', '2020-11-26 22:37:31'),
(466, NULL, 'Handbook of Textile Design', NULL, '1st', '1', '74', 1, 0, 'English', 70, 75, 3, NULL, 3, NULL, '2016-06-04', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-26 22:37:46', '2020-11-26 22:37:46'),
(467, NULL, 'Handbook of Weaving', NULL, '1st', '1', '74', 4, 0, 'English', NULL, NULL, 3, NULL, 3, NULL, '2013-02-27', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-26 22:40:03', '2020-11-26 22:50:18'),
(468, NULL, 'Handbook of Weaving', NULL, '1st', '1', '74', 4, 0, 'English', NULL, NULL, 3, NULL, 3, NULL, '2013-02-27', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-26 22:41:36', '2020-11-26 22:50:52'),
(469, NULL, 'Handbook of Weaving', NULL, '1st', '1', '110', 5, 0, 'English', 85, 90, 3, NULL, 3, NULL, '2015-06-10', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-26 22:53:18', '2020-11-26 22:53:18'),
(470, NULL, 'History of Textile Design', NULL, '2nd', '1', '111', 60, 0, 'English', 70, 75, 3, NULL, 3, NULL, '2016-06-04', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-26 23:01:15', '2020-11-26 23:01:15'),
(471, NULL, 'History of Textile Design', NULL, '2nd', '1', '111', 60, 0, 'English', 70, 75, 3, NULL, 3, NULL, '2016-06-04', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-26 23:01:33', '2020-11-26 23:01:33'),
(472, NULL, 'History of Textile Design', NULL, '2nd', '1', '111', 60, 0, 'English', 70, 75, 3, NULL, 3, NULL, '2016-06-04', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-26 23:01:51', '2020-11-26 23:01:51'),
(473, NULL, 'History of Textile Design', NULL, '2nd', '1', '111', 60, 0, 'English', 70, 75, 3, NULL, 3, NULL, '2016-06-04', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-26 23:02:14', '2020-11-26 23:02:14'),
(474, NULL, 'History of Textile Design', NULL, '2nd', '1', '111', 60, 0, 'English', 70, 75, 3, NULL, 3, NULL, '2016-06-04', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-26 23:02:32', '2020-11-26 23:02:32'),
(475, NULL, 'History of Textile Design', NULL, '2nd', '1', '111', 60, 0, 'English', 70, 75, 3, NULL, 3, NULL, '2016-06-04', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-26 23:02:50', '2020-11-26 23:02:50'),
(476, NULL, 'History of Textile Design', NULL, '2nd', '1', '111', 60, 0, 'English', 70, 75, 3, NULL, 3, NULL, '2016-06-04', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-26 23:03:14', '2020-11-26 23:03:14'),
(477, NULL, 'History of Textile Design', NULL, '2nd', '1', '111', 60, 0, 'English', 70, 75, 3, NULL, 3, NULL, '2016-06-04', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-26 23:03:32', '2020-11-26 23:03:32'),
(478, NULL, 'History of Textile Design', NULL, '2nd', '1', '111', 60, 0, 'English', 70, 75, 3, NULL, 3, NULL, '2016-06-04', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-26 23:03:50', '2020-11-26 23:03:50'),
(479, NULL, 'History of Textile Design', NULL, '2nd', '1', '111', 60, 0, 'English', 70, 75, 3, NULL, 3, NULL, '2016-06-04', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-26 23:04:10', '2020-11-26 23:04:10'),
(480, NULL, 'Ikat Pattern', NULL, '2nd', '1', '0', 30, 0, 'English', 80, 85, 3, NULL, 3, NULL, '2011-07-25', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-26 23:10:19', '2020-11-26 23:10:19'),
(481, NULL, 'Ikat Pattern', NULL, '2nd', '1', '0', 30, 0, 'English', 80, 85, 3, NULL, 3, NULL, '2011-07-25', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-26 23:11:00', '2020-11-26 23:11:00'),
(482, NULL, 'Permanent Setting of Wool', NULL, '1st', '1', '112', 1, 0, 'English', 97, 106, 3, NULL, 3, NULL, '2017-01-29', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-26 23:20:37', '2020-11-26 23:20:37'),
(483, NULL, 'Modern Preparation of Weaving Machinery', NULL, '1st', '1', '113', 1, 0, 'English', 87, 92, 3, NULL, 3, NULL, '2011-07-28', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-26 23:27:41', '2020-11-26 23:27:41'),
(484, NULL, 'Modern Weaving Calculation', NULL, '1st', '1', '0', 56, 0, 'English', 98, 107, 3, NULL, 3, NULL, '2013-02-27', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-26 23:32:35', '2020-11-26 23:32:35'),
(485, NULL, 'Modern Weaving Calculation', NULL, '1st', '1', '0', 56, 0, 'English', 98, 107, 3, NULL, 3, NULL, '2013-02-27', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-26 23:32:46', '2020-11-26 23:32:46'),
(486, NULL, 'Modern Weaving Calculation', NULL, '1st', '1', '0', 56, 0, 'English', 98, 107, 3, NULL, 3, NULL, '2013-02-27', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-26 23:32:59', '2020-11-26 23:32:59'),
(487, NULL, 'Modern Weaving Calculation', NULL, '1st', '1', '0', 56, 0, 'English', 98, 107, 3, NULL, 3, NULL, '2013-02-27', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-26 23:33:15', '2020-11-26 23:33:15'),
(488, NULL, 'Modern Weaving Calculation', NULL, '1st', '1', '0', 56, 0, 'English', 98, 107, 3, NULL, 3, NULL, '2013-02-27', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-26 23:33:32', '2020-11-26 23:33:32'),
(489, NULL, 'Modern Weaving Technology', NULL, '1st', '1', '115', 4, 0, 'English', 99, 108, 3, NULL, 3, NULL, '2013-02-27', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-26 23:41:18', '2020-11-26 23:41:18'),
(490, NULL, 'Modern Weaving Technology', NULL, '1st', '1', '115', 4, 0, 'English', 99, 108, 3, NULL, 3, NULL, '2013-02-27', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-26 23:41:36', '2020-11-26 23:41:36'),
(491, NULL, 'Modern Weaving Technology', NULL, '1st', '1', '115', 4, 0, 'English', 99, 108, 3, NULL, 3, NULL, '2013-02-27', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-26 23:41:56', '2020-11-26 23:41:56'),
(492, NULL, 'Modern Weaving Technology', NULL, '1st', '1', '115', 4, 0, 'English', 99, 108, 3, NULL, 3, NULL, '2013-02-27', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-26 23:42:14', '2020-11-26 23:42:14'),
(493, NULL, 'Modern Weaving Technology', NULL, '1st', '1', '115', 4, 0, 'English', 99, 108, 3, NULL, 3, NULL, '2013-02-27', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-26 23:42:27', '2020-11-26 23:42:27'),
(494, NULL, 'Modern Weaving Technology', NULL, '1st', '1', '115', 4, 0, 'English', 99, 108, 3, NULL, 3, NULL, '2013-02-27', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-26 23:42:59', '2020-11-26 23:42:59'),
(495, NULL, 'Modern Weaving Technology', NULL, '1st', '1', '115', 4, 0, 'English', 99, 108, 3, NULL, 3, NULL, '2015-06-10', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-26 23:43:45', '2020-11-26 23:43:45'),
(496, NULL, 'Modern Weaving Technology', NULL, '1st', '1', '115', 4, 0, 'English', 99, 108, 3, NULL, 3, NULL, '2016-03-21', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-26 23:45:33', '2020-11-26 23:45:33'),
(497, NULL, 'Modern Weaving Technology', NULL, '1st', '1', '27', 41, 0, 'English', 99, 108, 3, NULL, 3, NULL, '2016-03-21', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-26 23:47:22', '2020-11-26 23:47:22'),
(498, NULL, 'Modern Weaving Technology', NULL, '1st', '1', '27', 41, 0, 'English', 99, 108, 3, NULL, 3, NULL, '2017-01-29', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-26 23:48:04', '2020-11-26 23:48:04'),
(499, NULL, 'Modern Weaving Technology', NULL, '1st', '1', '27', 41, 0, 'English', 99, 108, 3, NULL, 3, NULL, '2018-02-25', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-26 23:48:40', '2020-11-26 23:48:40'),
(500, NULL, 'Modern Weaving Technology', NULL, '1st', '1', '27', 41, 0, 'English', 99, 108, 3, NULL, 3, NULL, '2018-02-25', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-26 23:49:25', '2020-11-26 23:49:25'),
(501, NULL, 'Nonwoven', NULL, '1st', '1', '116', 56, 0, 'English', 96, 105, 3, NULL, 3, NULL, '2013-02-27', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-26 23:57:07', '2020-11-26 23:57:07'),
(502, NULL, 'Nonwoven', NULL, '1st', '1', '116', 56, 0, 'English', 96, 105, 3, NULL, 3, NULL, '2013-02-27', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-26 23:57:24', '2020-11-26 23:57:24'),
(503, NULL, 'Nonwoven', NULL, '1st', '1', '116', 56, 0, 'English', 96, 105, 3, NULL, 3, NULL, '2013-02-27', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-26 23:57:44', '2020-11-26 23:57:44'),
(504, NULL, 'Nonwoven', NULL, '1st', '1', '116', 56, 0, 'English', 96, 105, 3, NULL, 3, NULL, '2013-02-27', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-26 23:58:12', '2020-11-26 23:58:12'),
(505, NULL, 'Nonwoven', NULL, '1st', '1', '116', 56, 0, 'English', 96, 105, 3, NULL, 3, NULL, '2013-02-27', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-26 23:58:31', '2020-11-26 23:58:31'),
(506, NULL, 'Pattern Cutting for Lingerie, Beachwear and Leisurewear', NULL, '2nd', '1', '0', 17, 0, 'English', 78, 83, 3, NULL, 3, NULL, '2011-07-26', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-27 07:05:04', '2020-11-27 07:05:04'),
(507, NULL, 'Pattern Cutting for Lingerie, Beachwear and Leisurewear', NULL, '2nd', '1', '0', 17, 0, 'English', 78, 83, 3, NULL, 3, NULL, '2011-07-26', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-27 07:05:35', '2020-11-27 07:05:35'),
(508, NULL, 'Pattern Cutting for Lingerie, Beachwear and Leisurewear', NULL, '2nd', '1', '0', 17, 0, 'English', 78, 83, 3, NULL, 3, NULL, '2013-02-27', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-27 07:06:29', '2020-11-27 07:06:29'),
(509, NULL, 'Pattern Cutting for Women\'s outwear', NULL, '1st', '1', '36', 17, 0, 'English', 78, 83, 3, NULL, 3, NULL, '2011-07-26', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-27 07:10:25', '2020-11-27 07:10:25');
INSERT INTO `books` (`id`, `code`, `book_name`, `isbn`, `edition`, `copy`, `author_id`, `publication_id`, `popularity`, `language`, `category_id`, `subcategory_id`, `department_id`, `teacher_id`, `rack`, `price`, `enlisted_date`, `condition`, `show`, `removed`, `book_status`, `reason`, `book_file`, `book_description`, `date`, `created_at`, `updated_at`) VALUES
(510, NULL, 'Pattern Cutting for Women\'s outwear', NULL, '1st', '1', '36', 17, 0, 'English', 78, 83, 3, NULL, 3, NULL, '2011-07-26', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-27 07:10:54', '2020-11-27 07:10:54'),
(511, NULL, 'Pattern Cutting for Women\'s outwear', NULL, '1st', '1', '36', 17, 0, 'English', NULL, NULL, 3, NULL, 3, NULL, '2013-02-27', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-27 07:11:34', '2020-11-27 07:14:40'),
(512, NULL, 'Pattern Cutting for Women\'s outwear', NULL, '1st', '1', '36', 17, 0, 'English', NULL, NULL, 3, NULL, 3, NULL, '2013-02-27', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-27 07:11:58', '2020-11-27 07:15:10'),
(513, NULL, 'Pattern Cutting for Women\'s outwear', NULL, '1st', '1', '36', 17, 0, 'English', NULL, NULL, 3, NULL, 3, NULL, '2013-02-27', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-27 07:12:13', '2020-11-27 07:15:40'),
(514, NULL, 'Pattern Cutting for Women\'s Tailored Jackets', NULL, '1st', '1', '40', 17, 0, 'English', 78, 83, 3, NULL, 3, NULL, '2011-07-26', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-27 07:18:50', '2020-11-27 07:18:50'),
(515, NULL, 'Pattern Cutting for Women\'s Tailored Jackets', NULL, '1st', '1', '40', 17, 0, 'English', 78, 83, 3, NULL, 3, NULL, '2013-02-27', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-27 07:20:31', '2020-11-27 07:20:31'),
(516, NULL, 'Pattern Cutting for Women\'s Tailored Jackets', NULL, '1st', '1', '40', 17, 0, 'English', 78, 83, 3, NULL, 3, NULL, '2013-02-27', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-27 07:20:59', '2020-11-27 07:20:59'),
(517, NULL, 'Pattern Cutting for Women\'s Tailored Jackets', NULL, '1st', '1', '40', 17, 0, 'English', 78, 83, 3, NULL, 3, NULL, '2013-02-27', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-27 07:21:14', '2020-11-27 07:21:14'),
(518, NULL, 'Pattern Cutting for Women\'s Tailored Jackets', NULL, '1st', '1', '40', 17, 0, 'English', 78, 83, 3, NULL, 3, NULL, '2013-02-27', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-27 07:21:30', '2020-11-27 07:21:30'),
(519, NULL, 'Pattern Cutting for Women\'s Tailored Jackets', NULL, '1st', '1', '40', 17, 0, 'English', 78, 83, 3, NULL, 3, NULL, '2013-02-27', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-27 07:21:48', '2020-11-27 07:21:48'),
(520, NULL, 'Pattern Cutting Made Easy', NULL, '1st', '1', '117', 26, 0, 'English', 78, 83, 3, NULL, 3, NULL, '2011-07-24', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-27 08:32:31', '2020-11-27 08:32:31'),
(521, NULL, 'Pattern Cutting Made Easy', NULL, '1st', '1', '117', 26, 0, 'English', 78, 83, 3, NULL, 3, NULL, '2011-07-24', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-27 08:32:57', '2020-11-27 08:32:57'),
(522, NULL, 'Pattern Cutting Made Easy', NULL, '1st', '1', '117', 26, 0, 'English', 78, 83, 3, NULL, 3, NULL, '2013-02-27', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-27 08:35:02', '2020-11-27 08:35:02'),
(523, NULL, 'Pattern Cutting Made Easy', NULL, '1st', '1', '117', 26, 0, 'English', 78, 83, 3, NULL, 3, NULL, '2013-02-27', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-27 08:36:02', '2020-11-27 08:36:02'),
(524, NULL, 'Pattern Cutting Made Easy', NULL, '1st', '1', '117', 26, 0, 'English', 78, 83, 3, NULL, 3, NULL, '2013-02-27', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-27 08:36:30', '2020-11-27 08:36:30'),
(525, NULL, 'Pattern Cutting Made Easy', NULL, '1st', '1', '117', 26, 0, 'English', 78, 83, 3, NULL, 3, NULL, '2013-02-27', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-27 08:36:54', '2020-11-27 08:36:54'),
(526, NULL, 'Flourecent Whitening Agent', NULL, '1st', '1', '0', 1, 0, 'English', 100, 109, 2, NULL, 4, NULL, '2013-02-27', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-27 21:30:15', '2020-11-27 21:30:15'),
(527, NULL, 'Flourecent Whitening Agent', NULL, '1st', '1', '0', 1, 0, 'English', 100, 109, 2, NULL, 4, NULL, '2013-02-27', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-27 21:30:34', '2020-11-27 21:30:34'),
(528, NULL, 'Basic Principles of textile Colouration', NULL, '1st', '1', '119', 61, 0, 'English', 102, 111, 2, NULL, 4, NULL, '2012-04-20', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-27 21:39:29', '2020-11-27 21:39:29'),
(529, NULL, 'Basic Principles of textile Colouration', NULL, '1st', '1', '119', 61, 0, 'English', 102, 111, 2, NULL, 4, NULL, '2013-07-06', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-27 21:40:43', '2020-11-27 21:40:43'),
(530, NULL, 'Bleaching of Linen, Cotton yarn & Fabrics', NULL, '1st', '1', '0', 4, 0, 'English', 101, 110, 2, NULL, 4, NULL, '2013-02-27', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-27 21:44:42', '2020-11-27 21:44:42'),
(531, NULL, 'Bleaching of Linen, Cotton yarn & Fabrics', NULL, '1st', '1', '0', 4, 0, 'English', 101, 110, 2, NULL, 4, NULL, '2013-02-27', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-27 21:45:04', '2020-11-27 21:45:04'),
(532, NULL, 'Bleaching of Linen, Cotton yarn & Fabrics', NULL, '1st', '1', '0', 4, 0, 'English', 101, 110, 2, NULL, 4, NULL, '2013-02-27', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-27 21:45:35', '2020-11-27 21:45:35'),
(533, NULL, 'Bleaching of Linen, Cotton yarn & Fabrics', NULL, '1st', '1', '0', 4, 0, 'English', 101, 110, 2, NULL, 4, NULL, '2013-02-27', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-27 21:45:53', '2020-11-27 21:45:53'),
(534, NULL, 'Bleaching of Linen, Cotton yarn & Fabrics', NULL, '1st', '1', '0', 4, 0, 'English', 101, 110, 2, NULL, 4, NULL, '2013-02-27', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-27 21:46:14', '2020-11-27 21:46:14'),
(535, NULL, 'Bleaching of Linen, Cotton yarn & Fabrics', NULL, '1st', '1', '0', 4, 0, 'English', 101, 110, 2, NULL, 4, NULL, '2013-02-27', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-27 21:46:33', '2020-11-27 21:46:33'),
(536, NULL, 'Chemical Technology in the Pre-Treatment Processing of Textiles', NULL, '1st', '1', '2', 62, 0, 'English', 100, 109, 2, NULL, 4, NULL, '2013-02-27', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-27 21:56:03', '2020-11-27 21:56:03'),
(537, NULL, 'Chemical Technology in the Pre-Treatment Processing of Textiles', NULL, '1st', '1', '2', 62, 0, 'English', 100, 109, 2, NULL, 4, NULL, '2013-02-27', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-27 21:56:28', '2020-11-27 21:56:28'),
(538, NULL, 'Chemical Technology in the Pre-Treatment Processing of Textiles', NULL, '1st', '1', '2', 62, 0, 'English', 100, 109, 2, NULL, 4, NULL, '2013-02-27', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-27 21:56:54', '2020-11-27 21:56:54'),
(539, NULL, 'Chemicals of Dyes & Pigments', NULL, '1st', '1', '1', 40, 0, 'English', 100, 109, 2, NULL, 4, NULL, '2017-01-29', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-27 22:03:15', '2020-11-27 22:03:15'),
(540, NULL, 'Chemicals of Dyes & Pigments', NULL, '1st', '1', '1', 40, 0, 'English', 100, 109, 2, NULL, 4, NULL, '2018-02-25', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-27 22:04:13', '2020-11-27 22:04:13'),
(541, NULL, 'Chemicals of Dyes & Pigments', NULL, '1st', '1', '1', 40, 0, 'English', 100, 109, 2, NULL, 4, NULL, '2018-02-25', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-27 22:04:32', '2020-11-27 22:04:32'),
(542, NULL, 'Color Harmony', NULL, '1st', '1', '4', 59, 0, 'English', 4, 3, 2, NULL, 4, NULL, '2011-07-27', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-27 22:16:49', '2020-11-27 22:16:49'),
(543, NULL, 'Designer\'s Guide to Color -2', NULL, '1st', '1', '121', 63, 0, 'English', NULL, NULL, 2, NULL, 4, NULL, '2011-02-27', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-27 22:23:10', '2020-11-27 22:26:49'),
(544, NULL, 'Designer\'s Guide to Color -3', NULL, '1st', '1', '121', 63, 0, 'English', NULL, NULL, 2, NULL, 4, NULL, '2011-02-27', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-27 22:23:42', '2020-11-27 22:29:56'),
(545, NULL, 'Designer\'s Guide to Color -3', NULL, '1st', '1', '121', 63, 0, 'English', NULL, NULL, 2, NULL, 4, NULL, '2011-02-27', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-27 22:24:02', '2020-11-27 22:29:14'),
(546, NULL, 'Designer\'s Guide to Color -4', NULL, '1st', '1', '121', 63, 0, 'English', NULL, NULL, 2, NULL, 4, NULL, '2011-02-27', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-27 22:24:50', '2020-11-27 22:30:33'),
(547, NULL, 'Designer\'s Guide to Color -5', NULL, '1st', '1', '121', 63, 0, 'English', NULL, NULL, 2, NULL, 4, NULL, '2011-02-27', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-27 22:25:22', '2020-11-27 22:31:15'),
(548, NULL, 'Digital Textile Designing', NULL, '1st', '1', '27', 41, 0, 'English', 16, 19, 2, NULL, 4, NULL, '2016-03-21', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-27 22:36:14', '2020-11-27 22:36:14'),
(549, NULL, 'Dry Cleaning Scouring Dyeing of Garments Furs & Rugs', NULL, '1st', '1', '15', 4, 0, 'English', 16, 19, 2, NULL, 4, NULL, '2013-02-27', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-27 22:43:04', '2020-11-27 22:43:04'),
(550, NULL, 'Dry Cleaning Scouring Dyeing of Garments Furs & Rugs', NULL, '1st', '1', '15', 4, 0, 'English', 16, 19, 2, NULL, 4, NULL, '2013-02-27', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-27 22:43:28', '2020-11-27 22:43:28'),
(551, NULL, 'Dry Cleaning Scouring Dyeing of Garments Furs & Rugs', NULL, '1st', '1', '15', 4, 0, 'English', 16, 19, 2, NULL, 4, NULL, '2018-02-25', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-27 22:44:36', '2020-11-27 22:44:36'),
(552, NULL, 'Dry Cleaning Scouring Dyeing of Garments Furs & Rugs', NULL, '1st', '1', '15', 4, 0, 'English', 16, 19, 2, NULL, 4, NULL, '2018-02-25', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-27 22:44:54', '2020-11-27 22:44:54'),
(553, NULL, 'Dyeing And Chemical Technology of Textiles Fibres', NULL, '5th', '1', '1', 40, 0, 'English', 16, 19, 2, NULL, 4, NULL, '2016-03-21', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-27 22:49:59', '2020-11-27 22:49:59'),
(554, NULL, 'Dyeing of Textile materials', NULL, '1st', '1', '11', 41, 0, 'English', 16, 19, 2, NULL, 4, NULL, '2016-03-21', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-27 22:52:21', '2020-11-27 22:52:21'),
(555, NULL, 'Dyes & Dyeing', NULL, '1st', '1', '1', 4, 0, 'English', 16, 19, 2, NULL, 4, NULL, '2013-02-27', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-27 22:56:36', '2020-11-27 22:56:36'),
(556, NULL, 'Dyes & Dyeing', NULL, '1st', '1', '1', 4, 0, 'English', 16, 19, 2, NULL, 4, NULL, '2013-02-27', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-27 22:56:53', '2020-11-27 22:56:53'),
(557, NULL, 'Elementary Idea of Textile Dyeing, Printing and Finishing', NULL, '1st', '1', '108', 2, 0, 'English', 16, 19, 2, NULL, 4, NULL, '2011-07-28', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-27 23:00:25', '2020-11-27 23:00:25'),
(558, NULL, 'Elementary Idea of Textile Dyeing, Printing and Finishing', NULL, '1st', '1', '108', 2, 0, 'English', 16, 19, 2, NULL, 4, NULL, '2013-02-27', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-27 23:01:35', '2020-11-27 23:01:35'),
(559, NULL, 'Fundamentals and Practices in Colouration of Textiles', NULL, '1st', '1', '3', 1, 0, 'English', 75, 80, 2, NULL, 4, NULL, '2013-02-27', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-27 23:07:51', '2020-11-27 23:07:51'),
(560, NULL, 'Fundamentals and Practices in Colouration of Textiles', NULL, '1st', '1', '3', 1, 0, 'English', 75, 80, 2, NULL, 4, NULL, '2015-06-10', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-27 23:08:29', '2020-11-27 23:08:29'),
(561, NULL, 'Industrial Practice in Color measurement', NULL, '1st', '1', '4', 56, 0, 'English', 102, 111, 2, NULL, 4, NULL, '2013-02-27', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-28 02:08:41', '2020-11-28 02:08:41'),
(562, NULL, 'Industrial Practice in Color measurement', NULL, '1st', '1', '4', 56, 0, 'English', 102, 111, 2, NULL, 4, NULL, '2013-02-27', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-28 02:08:59', '2020-11-28 02:08:59'),
(563, NULL, 'Industrial Practice in Color measurement', NULL, '1st', '1', '4', 56, 0, 'English', 102, 111, 2, NULL, 4, NULL, '2013-02-27', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-28 02:09:16', '2020-11-28 02:09:16'),
(564, NULL, 'Industrial Practice in Color measurement', NULL, '1st', '1', '4', 56, 0, 'English', 102, 111, 2, NULL, 4, NULL, '2013-02-27', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-28 02:09:37', '2020-11-28 02:09:37'),
(565, NULL, 'Industrial Practice in Color measurement', NULL, '1st', '1', '4', 56, 0, 'English', 102, 111, 2, NULL, 4, NULL, '2013-02-27', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-28 02:09:57', '2020-11-28 02:09:57'),
(566, NULL, 'Instrumental Color Measurement and Computer Aided Color Matching for Textiles', NULL, '1st', '1', '4', 56, 0, 'English', 28, 33, 2, NULL, 4, NULL, '2013-02-27', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-28 02:14:16', '2020-11-28 02:14:16'),
(567, NULL, 'Instrumental Color Measurement and Computer Aided Color Matching for Textiles', NULL, '1st', '1', '4', 56, 0, 'English', 28, 33, 2, NULL, 4, NULL, '2013-02-27', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-28 02:14:39', '2020-11-28 02:14:39'),
(568, NULL, 'Instrumental Color Measurement and Computer Aided Color Matching for Textiles', NULL, '1st', '1', '4', 56, 0, 'English', 28, 33, 2, NULL, 4, NULL, '2013-02-27', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-28 02:14:52', '2020-11-28 02:14:52'),
(569, NULL, 'Instrumental Color Measurement and Computer Aided Color Matching for Textiles', NULL, '1st', '1', '4', 56, 0, 'English', 28, 33, 2, NULL, 4, NULL, '2013-02-27', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-28 02:15:08', '2020-11-28 02:15:08'),
(570, NULL, 'Instrumental Color Measurement and Computer Aided Color Matching for Textiles', NULL, '1st', '1', '4', 56, 0, 'English', 28, 33, 2, NULL, 4, NULL, '2013-02-27', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-28 02:15:29', '2020-11-28 02:15:29'),
(571, NULL, 'An Introduction to Textile Printing', NULL, '4th', '1', '0', 1, 0, 'English', 16, 19, 2, NULL, 4, NULL, '2013-02-27', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-28 02:19:15', '2020-11-28 02:19:15'),
(572, NULL, 'Ionic Liquids in Synthesis', NULL, '2nd', '1', '23', 3, 0, 'English', 16, 6, 2, NULL, 4, NULL, '2011-04-20', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-28 02:25:01', '2020-11-28 02:25:01'),
(573, NULL, 'Ionic Liquids in Synthesis', NULL, '2nd', '1', '23', 3, 0, 'English', 16, 6, 2, NULL, 4, NULL, '2011-04-20', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-28 02:25:21', '2020-11-28 02:25:21'),
(574, NULL, 'Pocket Color Matching Expert', NULL, '1st', '1', '86', 24, 0, 'English', 75, 80, 2, NULL, 4, NULL, '2014-06-22', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-28 02:28:48', '2020-11-28 02:28:48'),
(575, NULL, 'Pocket Color Matching Expert', NULL, '1st', '1', '86', 24, 0, 'English', 75, 80, 2, NULL, 4, NULL, '2014-06-22', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-28 02:29:03', '2020-11-28 02:29:03'),
(576, NULL, 'Pocket Color Matching Expert', NULL, '1st', '1', '86', 24, 0, 'English', 75, 80, 2, NULL, 4, NULL, '2014-06-22', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-28 02:29:20', '2020-11-28 02:29:20'),
(577, NULL, 'Pocket Color Matching Expert', NULL, '1st', '1', '86', 24, 0, 'English', 75, 80, 2, NULL, 4, NULL, '2014-06-22', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-28 02:29:30', '2020-11-28 02:29:30'),
(578, NULL, 'Pocket Color Matching Expert', NULL, '1st', '1', '86', 24, 0, 'English', 75, 80, 2, NULL, 4, NULL, '2014-06-22', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-28 02:29:56', '2020-11-28 02:29:56'),
(579, NULL, 'Practice of Textile Coloration', NULL, '1st', '1', '122', 40, 0, 'English', 75, 80, 2, NULL, 4, NULL, '2012-03-24', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-28 02:36:48', '2020-11-28 02:36:48'),
(580, NULL, 'Practice of Textile Coloration', NULL, '1st', '1', '122', 40, 0, 'English', 75, 80, 2, NULL, 4, NULL, '2012-03-24', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-28 02:37:07', '2020-11-28 02:37:07'),
(581, NULL, 'Practice of Textile Coloration', NULL, '1st', '1', '122', 40, 0, 'English', 75, 80, 2, NULL, 4, NULL, '2012-03-24', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-28 02:37:28', '2020-11-28 02:37:28'),
(582, NULL, 'Practice of Textile Coloration', NULL, '1st', '1', '122', 40, 0, 'English', 75, 80, 2, NULL, 4, NULL, '2012-03-24', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-28 02:37:49', '2020-11-28 02:37:49'),
(583, NULL, 'Practice of Textile Coloration', NULL, '1st', '1', '122', 40, 0, 'English', 75, 80, 2, NULL, 4, NULL, '2017-01-29', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-28 02:38:45', '2020-11-28 02:38:45'),
(584, NULL, 'Practice of Textile Coloration', NULL, '1st', '1', '122', 40, 0, 'English', 75, 80, 2, NULL, 4, NULL, '2018-02-25', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-28 02:39:43', '2020-11-28 02:39:43'),
(585, NULL, 'Practice of Textile Coloration', NULL, '1st', '1', '122', 40, 0, 'English', 75, 80, 2, NULL, 4, NULL, '2018-02-25', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-28 02:40:12', '2020-11-28 02:40:12'),
(586, NULL, 'Practice of Textile Coloration', NULL, '1st', '1', '122', 40, 0, 'English', 75, 80, 2, NULL, 4, NULL, '2018-02-25', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-28 02:40:31', '2020-11-28 02:40:31'),
(587, NULL, 'Practice of Textile Coloration', NULL, '1st', '1', '122', 40, 0, 'English', 75, 80, 2, NULL, 4, NULL, '2018-02-25', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-28 02:40:58', '2020-11-28 02:40:58'),
(588, NULL, 'Practice of Textile Coloration', NULL, '1st', '1', '122', 40, 0, 'English', 75, 80, 2, NULL, 4, NULL, '2012-04-26', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-28 02:41:49', '2020-11-28 02:41:49'),
(589, NULL, 'Practice of Textile Coloration', NULL, '1st', '1', '122', 40, 0, 'English', 75, 80, 2, NULL, 4, NULL, '2012-04-26', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-28 02:42:08', '2020-11-28 02:42:08'),
(590, NULL, 'Practice of Textile Coloration', NULL, '1st', '1', '122', 40, 0, 'English', 75, 80, 2, NULL, 4, NULL, '2012-04-26', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-28 02:42:20', '2020-11-28 02:42:20'),
(591, NULL, 'Practice of Textile Coloration', NULL, '1st', '1', '122', 40, 0, 'English', 75, 80, 2, NULL, 4, NULL, '2012-04-26', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-28 02:42:37', '2020-11-28 02:42:37'),
(592, NULL, 'Practice of Textile Coloration', NULL, '1st', '1', '122', 40, 0, 'English', 75, 80, 2, NULL, 4, NULL, '2012-04-26', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-28 02:42:47', '2020-11-28 02:42:47'),
(593, NULL, 'Practice of Textile Coloration', NULL, '1st', '1', '122', 40, 0, 'English', 75, 80, 2, NULL, 4, NULL, '2016-03-21', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-28 02:43:39', '2020-11-28 02:43:39'),
(594, NULL, 'Practice of Textile Coloration', NULL, '1st', '1', '122', 40, 0, 'English', 75, 80, 2, NULL, 4, NULL, '2016-04-06', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-28 02:44:45', '2020-11-28 02:44:45'),
(595, NULL, 'Practice of Textile Coloration', NULL, '1st', '1', '122', 40, 0, 'English', 75, 80, 2, NULL, 4, NULL, '2016-04-06', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-28 02:45:01', '2020-11-28 02:45:01'),
(596, NULL, 'Practice of Textile Coloration', NULL, '1st', '1', '122', 40, 0, 'English', 75, 80, 2, NULL, 4, NULL, '2016-04-06', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-28 02:45:17', '2020-11-28 02:45:17'),
(597, NULL, 'Practice of Textile Coloration', NULL, '1st', '1', '122', 40, 0, 'English', 75, 80, 2, NULL, 4, NULL, '2016-04-06', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-28 02:45:31', '2020-11-28 02:45:31'),
(598, NULL, 'Practice of Textile Coloration', NULL, '1st', '1', '122', 40, 0, 'English', 75, 80, 2, NULL, 4, NULL, '2016-04-06', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-28 02:45:47', '2020-11-28 02:45:47'),
(599, NULL, 'Printing & Washing of Textiles', NULL, '1st', '1', '64', 41, 0, 'English', 17, 18, 2, NULL, 4, NULL, '2014-06-22', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-28 02:51:51', '2020-11-28 02:51:51'),
(600, NULL, 'Printing & Washing of Textiles', NULL, '1st', '1', '64', 41, 0, 'English', 17, 18, 2, NULL, 4, NULL, '2014-06-22', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-28 02:52:14', '2020-11-28 02:52:14'),
(601, NULL, 'Printing & Washing of Textiles', NULL, '1st', '1', '64', 41, 0, 'English', 17, 18, 2, NULL, 4, NULL, '2018-02-25', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-28 02:52:50', '2020-11-28 02:52:50'),
(602, NULL, 'Printing & Washing of Textiles', NULL, '1st', '1', '64', 41, 0, 'English', 17, 18, 2, NULL, 4, NULL, '2018-02-25', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-28 02:53:10', '2020-11-28 02:53:10'),
(603, NULL, 'Textile finishing', NULL, '1st', '1', '90', 4, 0, 'English', 77, 82, 2, NULL, 4, NULL, '2013-02-27', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-28 03:02:25', '2020-11-28 03:02:25'),
(604, NULL, 'Textile finishing', NULL, '1st', '1', '90', 4, 0, 'English', 77, 82, 2, NULL, 4, NULL, '2013-02-27', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-28 03:04:19', '2020-11-28 03:04:19'),
(605, NULL, 'Textile finishing', NULL, '1st', '1', '90', 4, 0, 'English', 77, 82, 2, NULL, 4, NULL, '2013-02-27', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-28 03:04:37', '2020-11-28 03:04:37'),
(606, NULL, 'Textile finishing', NULL, '1st', '1', '90', 4, 0, 'English', 77, 82, 2, NULL, 4, NULL, '2013-02-27', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-28 03:04:59', '2020-11-28 03:04:59'),
(607, NULL, 'Textile finishing', NULL, '1st', '1', '90', 4, 0, 'English', 77, 82, 2, NULL, 4, NULL, '2018-02-25', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-28 03:05:42', '2020-11-28 03:05:42'),
(608, NULL, 'Textile finishing', NULL, '1st', '1', '90', 4, 0, 'English', 77, 82, 2, NULL, 4, NULL, '2018-02-25', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-28 03:06:05', '2020-11-28 03:06:05'),
(609, NULL, 'Silk Dyeing Printing & Finishing', NULL, '1st', '1', '88', 4, 0, 'English', 103, 112, 2, NULL, 4, NULL, '2013-02-27', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-28 03:13:01', '2020-11-28 03:13:01'),
(610, NULL, 'Silk Dyeing Printing & Finishing', NULL, '1st', '1', '88', 4, 0, 'English', 103, 112, 2, NULL, 4, NULL, '2013-02-27', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-28 03:13:16', '2020-11-28 03:13:16'),
(611, NULL, 'Silk Dyeing Printing & Finishing', NULL, '1st', '1', '88', 4, 0, 'English', 103, 112, 2, NULL, 4, NULL, '2013-02-27', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-28 03:13:27', '2020-11-28 03:13:27'),
(612, NULL, 'Silk Dyeing Printing & Finishing', NULL, '1st', '1', '88', 4, 0, 'English', 103, 112, 2, NULL, 4, NULL, '2013-02-27', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-28 03:13:46', '2020-11-28 03:13:46'),
(613, NULL, 'Synthetic Dyes', NULL, '1st', '1', '123', 64, 0, 'English', 77, 82, 2, NULL, 4, NULL, '2013-07-06', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-28 03:18:41', '2020-11-28 03:18:41'),
(614, NULL, 'Technology of Synthetic Dyes, Pigments & Intermediates', NULL, '1st', '1', '10', 65, 0, 'English', 77, 82, 2, NULL, 4, NULL, '2013-02-27', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-28 03:25:51', '2020-11-28 03:25:51'),
(615, NULL, 'Textbook of Dyes', NULL, '1st', '1', '124', 41, 0, 'English', 77, 82, 2, NULL, 4, NULL, '2013-02-27', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-28 09:33:03', '2020-11-28 09:33:03'),
(616, NULL, 'Textile Chemistry', NULL, '1st', '1', '125', 4, 0, 'English', NULL, NULL, 2, NULL, 4, NULL, '2014-06-22', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-28 09:41:06', '2020-11-28 09:41:58'),
(617, NULL, 'Textile Auxiliaries And Chamicals', NULL, '1st', '1', '10', 66, 0, 'English', 100, 109, 2, NULL, 4, NULL, '2011-07-24', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-28 22:20:43', '2020-11-28 22:20:43'),
(618, NULL, 'Textile Colour Mixing', NULL, '1st', '1', '126', 4, 0, 'English', 102, 111, 2, NULL, 4, NULL, '2013-02-27', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-28 22:24:44', '2020-11-28 22:24:44'),
(619, NULL, 'Textile Colour Mixing', NULL, '1st', '1', '126', 4, 0, 'English', 102, 111, 2, NULL, 4, NULL, '2013-02-27', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-28 22:24:58', '2020-11-28 22:24:58'),
(620, NULL, 'Textile Colour Mixing', NULL, '1st', '1', '126', 4, 0, 'English', 102, 111, 2, NULL, 4, NULL, '2011-07-24', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-28 22:25:28', '2020-11-28 22:25:28'),
(621, NULL, 'Textile Fibers Dyes,Finishes And Processes', NULL, '1st', '1', '127', 67, 0, 'English', 77, 82, 2, NULL, 4, NULL, '0011-07-24', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-29 23:02:45', '2020-11-29 23:02:45'),
(622, NULL, 'Textile Fibers Dyes,Finishes And Processes', NULL, '1st', '1', '127', 67, 0, 'English', 77, 82, 2, NULL, 4, NULL, '0011-07-24', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-29 23:03:07', '2020-11-29 23:03:07'),
(623, NULL, 'Textile Preparation and Dying', NULL, '1st', '1', '128', 68, 0, 'English', 77, 82, 2, NULL, 4, NULL, '2012-04-27', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-29 23:10:36', '2020-11-29 23:10:36'),
(624, NULL, 'Textile Preparation and Dying', NULL, '1st', '1', '128', 68, 0, 'English', 77, 82, 2, NULL, 4, NULL, '2012-04-27', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-29 23:12:11', '2020-11-29 23:12:11'),
(625, NULL, 'Textile Processing Printing Dying & Finishing', NULL, '1st', '1', '129', 4, 0, 'English', NULL, NULL, 2, NULL, 4, NULL, '2013-02-27', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-29 23:17:38', '2020-11-29 23:22:13'),
(626, NULL, 'Textile Processing Printing Dying & Finishing', NULL, '1st', '1', '129', 4, 0, 'English', NULL, NULL, 2, NULL, 4, NULL, '2013-02-27', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-29 23:17:58', '2020-11-29 23:23:18'),
(627, NULL, 'Textile Processing Printing Dying & Finishing', NULL, '1st', '1', '129', 4, 0, 'English', NULL, NULL, 2, NULL, 4, NULL, '2013-02-27', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-29 23:18:20', '2020-11-29 23:23:53'),
(628, NULL, 'Textile Processing Printing Dying & Finishing', NULL, '1st', '1', '129', 4, 0, 'English', NULL, NULL, 2, NULL, 4, NULL, '2013-02-27', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-29 23:18:37', '2020-11-29 23:24:28'),
(629, NULL, 'Textile Processing Printing Dying & Finishing', NULL, '1st', '1', '129', 4, 0, 'English', NULL, NULL, 2, NULL, 4, NULL, '2011-04-20', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-29 23:20:55', '2020-11-29 23:25:24'),
(630, NULL, 'Textile Processing Printing Dying & Finishing', NULL, '1st', '1', '129', 4, 0, 'English', NULL, NULL, 2, NULL, 4, NULL, '2017-07-24', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-29 23:28:48', '2020-11-29 23:33:09'),
(631, NULL, 'Textile Processing Printing Dying & Finishing', NULL, '1st', '1', '129', 4, 0, 'English', 77, 82, 2, NULL, 4, NULL, '2017-07-24', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-29 23:29:28', '2020-11-29 23:29:28'),
(632, NULL, 'Textile Processing Printing Dying & Finishing', NULL, '1st', '1', '129', 4, 0, 'English', 77, 82, 2, NULL, 4, NULL, '2017-07-24', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-29 23:30:08', '2020-11-29 23:30:08'),
(633, NULL, 'The Basic Concept of Textile Colaration', NULL, '1st', '1', '130', 40, 0, 'English', 102, 111, 2, NULL, 4, NULL, '2017-02-09', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-29 23:44:31', '2020-11-29 23:44:31'),
(634, NULL, 'The Complete Color Harmony', NULL, '1st', '1', '131', 35, 0, 'English', 4, 3, 2, NULL, 4, NULL, '2011-02-27', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-29 23:51:06', '2020-11-29 23:51:06'),
(635, NULL, 'The Complete Color Harmony', NULL, '1st', '1', '131', 35, 0, 'English', 4, 3, 2, NULL, 4, NULL, '2011-02-27', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-29 23:51:29', '2020-11-29 23:51:29'),
(636, NULL, 'The Dying of Textile Materials', NULL, '1st', '1', '132', 69, 0, 'English', 77, 82, 2, NULL, 4, NULL, '2016-06-04', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-30 00:01:45', '2020-11-30 00:01:45'),
(637, NULL, 'Watson\'s Textiles Design and Color', NULL, '1st', '1', '133', 1, 0, 'English', 70, 75, 2, NULL, 4, NULL, '2017-01-29', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-30 00:09:52', '2020-11-30 00:09:52'),
(638, NULL, 'Watson\'s Textiles Design and Color', NULL, '1st', '1', '133', 1, 0, 'English', 70, 75, 2, NULL, 4, NULL, '2013-02-27', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-30 00:11:15', '2020-11-30 00:11:15'),
(639, NULL, 'Watson\'s Textiles Design and Color', NULL, '1st', '1', '133', 1, 0, 'English', 70, 75, 2, NULL, 4, NULL, '2013-02-27', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-30 00:11:34', '2020-11-30 00:11:34'),
(640, NULL, 'Watson\'s Textiles Design and Color', NULL, '1st', '1', '133', 1, 0, 'English', 70, 75, 2, NULL, 4, NULL, '2013-02-27', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-30 00:11:58', '2020-11-30 00:11:58'),
(641, NULL, 'Watson\'s Textiles Design and Color', NULL, '1st', '1', '133', 1, 0, 'English', 70, 75, 2, NULL, 4, NULL, '2013-02-27', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-30 00:12:17', '2020-11-30 00:12:17'),
(642, NULL, 'Watson\'s Textiles Design and Color', NULL, '1st', '1', '133', 1, 0, 'English', 70, 75, 2, NULL, 4, NULL, '2011-07-24', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-30 00:15:42', '2020-11-30 00:15:42'),
(643, NULL, 'Watson\'s Textiles Design and Color', NULL, '1st', '1', '133', 1, 0, 'English', 70, 75, 2, NULL, 4, NULL, '2011-07-24', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-30 00:16:02', '2020-11-30 00:16:02'),
(644, NULL, 'Watson\'s Textiles Design and Color', NULL, '1st', '1', '133', 1, 0, 'English', 70, 75, 2, NULL, 4, NULL, '2011-07-24', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-30 00:16:20', '2020-11-30 00:16:20'),
(645, NULL, 'Watson\'s Textiles Design and Color', NULL, '1st', '1', '133', 1, 0, 'English', 70, 75, 2, NULL, 4, NULL, '2011-07-24', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-30 00:16:37', '2020-11-30 00:16:37'),
(646, NULL, 'Advanced Fiber Spinning', NULL, '1st', '1', '134', 1, 0, 'English', 104, 113, 4, NULL, 5, NULL, '2013-02-27', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-30 00:23:30', '2020-11-30 00:23:30'),
(647, NULL, 'A Practical Guide To The Blowroom and Carding', NULL, '2nd', '1', '135', 8, 0, 'English', 106, 114, 4, NULL, 5, NULL, '2012-04-26', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-30 00:34:15', '2020-11-30 00:34:15'),
(648, NULL, 'A Practical Guide To The Blowroom and Carding', NULL, '2nd', '1', '135', 8, 0, 'English', 106, 114, 4, NULL, 5, NULL, '2012-04-26', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-30 00:34:34', '2020-11-30 00:34:34'),
(649, NULL, 'A Practical Guide To The Blowroom and Carding', NULL, '2nd', '1', '135', 8, 0, 'English', 106, 114, 4, NULL, 5, NULL, '2014-06-22', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-30 00:37:15', '2020-11-30 00:37:15'),
(650, NULL, 'A Practical Guide To The Blowroom and Carding', NULL, '2nd', '1', '135', 8, 0, 'English', 106, 114, 4, NULL, 5, NULL, '2014-06-22', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-30 00:37:35', '2020-11-30 00:37:35'),
(651, NULL, 'A Practical Guide To Ring Spinning', NULL, '2nd', '1', '135', 8, 0, 'English', 106, 114, 4, NULL, 5, NULL, '2012-04-26', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-30 00:39:29', '2020-11-30 00:39:29'),
(652, NULL, 'A Practical Guide To Ring Spinning', NULL, '2nd', '1', '135', 8, 0, 'English', 106, 114, 4, NULL, 5, NULL, '2014-06-22', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-30 00:40:14', '2020-11-30 00:40:14'),
(653, NULL, 'A Practical Guide To Ring Spinning', NULL, '2nd', '1', '135', 8, 0, 'English', 106, 114, 4, NULL, 5, NULL, '2014-06-22', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-30 00:40:38', '2020-11-30 00:40:38'),
(654, NULL, 'A Practical Guide To Quality Management in spinning', NULL, '1st', '1', '136', 1, 0, 'English', 107, 115, 4, NULL, 5, NULL, '2013-02-27', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-30 00:46:35', '2020-11-30 00:46:35'),
(655, NULL, 'A Practical Guide To Quality Management in spinning', NULL, '1st', '1', '136', 1, 0, 'English', 107, 115, 4, NULL, 5, NULL, '2013-02-27', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-30 00:47:02', '2020-11-30 00:47:02'),
(656, NULL, 'A Practical Guide To Quality Management in spinning', NULL, '1st', '1', '136', 1, 0, 'English', 107, 115, 4, NULL, 5, NULL, '2013-02-27', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-30 00:47:18', '2020-11-30 00:47:18'),
(657, NULL, 'A Practical Guide To Quality Management in spinning', NULL, '1st', '1', '136', 1, 0, 'English', 107, 115, 4, NULL, 5, NULL, '2015-04-02', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-30 00:48:27', '2020-11-30 00:48:27'),
(658, NULL, 'A Practical Guide To Quality Management in spinning', NULL, '1st', '1', '136', 1, 0, 'English', 107, 115, 4, NULL, 5, NULL, '2015-04-02', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-30 00:48:47', '2020-11-30 00:48:47'),
(659, NULL, 'Blended and Man Made Fiber spinning', NULL, '1st', '1', '137', 56, 0, 'English', 108, 116, 4, NULL, 5, NULL, '2013-02-27', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-30 00:55:15', '2020-11-30 00:55:15'),
(660, NULL, 'Blended and Man Made Fiber spinning', NULL, '1st', '1', '137', 56, 0, 'English', 108, 116, 4, NULL, 5, NULL, '2013-02-27', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-30 00:55:38', '2020-11-30 00:55:38'),
(661, NULL, 'Blended and Man Made Fiber spinning', NULL, '1st', '1', '137', 56, 0, 'English', 108, 116, 4, NULL, 5, NULL, '2013-02-27', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-30 00:55:58', '2020-11-30 00:55:58'),
(662, NULL, 'Blended and Man Made Fiber spinning', NULL, '1st', '1', '137', 56, 0, 'English', 108, 116, 4, NULL, 5, NULL, '2013-02-27', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-30 00:56:25', '2020-11-30 00:56:25'),
(663, NULL, 'Blended and Man Made Fiber spinning', NULL, '1st', '1', '137', 56, 0, 'English', 108, 116, 4, NULL, 5, NULL, '2013-02-27', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-30 00:56:45', '2020-11-30 00:56:45'),
(664, NULL, 'The Technology of Short staple spinning', NULL, '1st', '1', '135', 23, 0, 'English', 106, 114, 4, NULL, 5, NULL, '2012-04-26', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-30 01:02:24', '2020-11-30 01:02:24'),
(665, NULL, 'A Practical Guide To The Blowroom and Carding', NULL, '2nd', '1', '135', 23, 0, 'English', NULL, NULL, 4, NULL, 5, NULL, '2012-03-24', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-30 01:07:30', '2020-11-30 01:09:05'),
(666, NULL, 'A Practical Guide To The Blowroom and Carding', NULL, '2nd', '1', '135', 23, 0, 'English', NULL, NULL, 4, NULL, 5, NULL, '2012-03-24', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-30 01:07:47', '2020-11-30 01:09:32'),
(667, NULL, 'A Practical Guide To The Blowroom and Carding', NULL, '2nd', '1', '135', 23, 0, 'English', NULL, NULL, 4, NULL, 5, NULL, '2012-03-24', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-30 01:08:06', '2020-11-30 01:09:58'),
(668, NULL, 'Essential Calculations of Practical Cotton Spinning', NULL, '1st', '1', '138', 56, 0, 'English', 109, 117, 4, NULL, 5, NULL, '2013-02-27', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-30 04:26:25', '2020-11-30 04:26:25'),
(669, NULL, 'Essential Calculations of Practical Cotton Spinning', NULL, '1st', '1', '138', 56, 0, 'English', 109, 117, 4, NULL, 5, NULL, '2013-02-27', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-30 04:26:55', '2020-11-30 04:26:55'),
(670, NULL, 'Essential Calculations of Practical Cotton Spinning', NULL, '1st', '1', '138', 56, 0, 'English', 109, 117, 4, NULL, 5, NULL, '2013-02-27', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-30 04:27:18', '2020-11-30 04:27:18'),
(671, NULL, 'Essential Calculations of Practical Cotton Spinning', NULL, '1st', '1', '138', 56, 0, 'English', 109, 117, 4, NULL, 5, NULL, '2013-02-27', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-30 04:27:37', '2020-11-30 04:27:37'),
(672, NULL, 'Essential Calculations of Practical Cotton Spinning', NULL, '1st', '1', '138', 56, 0, 'English', 109, 117, 4, NULL, 5, NULL, '2013-02-27', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-30 04:27:57', '2020-11-30 04:27:57'),
(673, NULL, 'Essential Calculations of Practical Cotton Spinning', NULL, '1st', '1', '138', 56, 0, 'English', 109, 117, 4, NULL, 5, NULL, '2015-03-20', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-30 04:28:45', '2020-11-30 04:28:45'),
(674, NULL, 'Essential Calculations of Practical Cotton Spinning', NULL, '1st', '1', '138', 56, 0, 'English', 109, 117, 4, NULL, 5, NULL, '2015-04-02', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-30 04:29:23', '2020-11-30 04:29:23'),
(675, NULL, 'Essential Calculations of Practical Cotton Spinning', NULL, '1st', '1', '138', 56, 0, 'English', 109, 117, 4, NULL, 5, NULL, '2015-04-02', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-30 04:29:46', '2020-11-30 04:29:46'),
(676, NULL, 'Essential Calculations of Practical Cotton Spinning', NULL, '1st', '1', '138', 56, 0, 'English', 109, 117, 4, NULL, 5, NULL, '2015-04-02', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-30 04:30:07', '2020-11-30 04:30:07'),
(677, NULL, 'Essential Calculations of Practical Cotton Spinning', NULL, '1st', '1', '138', 56, 0, 'English', 109, 117, 4, NULL, 5, NULL, '2015-04-02', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-30 04:30:34', '2020-11-30 04:30:34'),
(678, NULL, 'A Practical Guide To Combing And Drawing', NULL, '2nd', '1', '135', 23, 0, 'English', 104, 113, 4, NULL, 5, NULL, '2012-03-24', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-30 22:24:09', '2020-11-30 22:24:09'),
(679, NULL, 'A Practical Guide To Combing And Drawing', NULL, '2nd', '1', '135', 23, 0, 'English', 104, 113, 4, NULL, 5, NULL, '2012-03-24', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-30 22:24:34', '2020-11-30 22:24:34'),
(680, NULL, 'A Practical Guide To Combing And Drawing', NULL, '2nd', '1', '135', 23, 0, 'English', 104, 113, 4, NULL, 5, NULL, '2012-03-24', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-30 22:24:56', '2020-11-30 22:24:56'),
(681, NULL, 'Flax,Tow and Jute Spinning', NULL, '1st', '1', '88', 4, 0, 'English', 110, 118, 4, NULL, 5, NULL, '2013-01-27', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-30 22:29:08', '2020-11-30 22:29:08'),
(682, NULL, 'Flax,Tow and Jute Spinning', NULL, '1st', '1', '88', 4, 0, 'English', 110, 118, 4, NULL, 5, NULL, '2013-01-27', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-30 22:29:28', '2020-11-30 22:29:28'),
(683, NULL, 'Flax,Tow and Jute Spinning', NULL, '1st', '1', '88', 4, 0, 'English', 110, 118, 4, NULL, 5, NULL, '2011-04-20', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-30 22:30:28', '2020-11-30 22:30:28'),
(684, NULL, 'Fundamental of Yarn Winding', NULL, '1st', '1', '139', 1, 0, 'English', 111, 119, 4, NULL, 5, NULL, '2016-03-21', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-30 22:35:37', '2020-11-30 22:35:37'),
(685, NULL, 'High Speed Spinning of Polyester and Its Blends with Viscose', NULL, '1st', '1', '140', 1, 0, 'English', 106, 114, 4, NULL, 5, NULL, '2013-02-27', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-30 22:54:09', '2020-11-30 22:54:09'),
(686, NULL, 'High Speed Spinning of Polyester and Its Blends with Viscose', NULL, '1st', '1', '140', 1, 0, 'English', 106, 114, 4, NULL, 5, NULL, '2016-03-21', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-30 22:54:47', '2020-11-30 22:54:47'),
(687, NULL, 'Manual of Textile Institute', NULL, '1st', '1', '135', 40, 0, 'English', 106, 114, 4, NULL, 5, NULL, '2013-02-27', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-30 22:57:35', '2020-11-30 22:57:35'),
(688, NULL, 'Manual of Textile Institute', NULL, '1st', '1', '135', 40, 0, 'English', 106, 114, 4, NULL, 5, NULL, '2013-02-27', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-30 22:57:56', '2020-11-30 22:57:56'),
(689, NULL, 'Manual of Textile Institute', NULL, '1st', '1', '135', 40, 0, 'English', 106, 114, 4, NULL, 5, NULL, '2013-02-27', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-30 22:58:16', '2020-11-30 22:58:16'),
(690, NULL, 'Manual of Textile Institute', NULL, '1st', '1', '135', 40, 0, 'English', 106, 114, 4, NULL, 5, NULL, '2013-02-27', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-30 22:58:36', '2020-11-30 22:58:36'),
(691, NULL, 'The Technology of Short-staple spinning', NULL, '2nd', '1', '135', 23, 0, 'English', 106, 114, 4, NULL, 5, NULL, '2013-07-06', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-30 23:01:43', '2020-11-30 23:01:43'),
(692, NULL, 'A Practical Guide To The Blowroom and Carding', NULL, '2nd', '1', '135', 23, 0, 'English', 106, 114, 4, NULL, 5, NULL, '2013-07-06', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-30 23:02:49', '2020-11-30 23:02:49'),
(693, NULL, 'A Practical Guide To Combing And Drawing', NULL, '2nd', '1', '135', 23, 0, 'English', 106, 114, 4, NULL, 5, NULL, '2013-07-06', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-30 23:04:17', '2020-11-30 23:04:17'),
(694, NULL, 'A Practical Guide To Ring Spinning', NULL, '2nd', '1', '135', 23, 0, 'English', 106, 114, 4, NULL, 5, NULL, '2013-07-06', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-30 23:05:06', '2020-11-30 23:05:06'),
(695, NULL, 'Man-Made Fibres and Their Processing', NULL, '2nd', '1', '135', 23, 0, 'English', 106, 114, 4, NULL, 5, NULL, '2013-07-06', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-30 23:07:22', '2020-11-30 23:07:22'),
(696, NULL, 'New Spinning Systems', NULL, '2nd', '1', '135', 23, 0, 'English', 106, 114, 4, NULL, 5, NULL, '2013-07-06', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-30 23:08:24', '2020-11-30 23:08:24'),
(697, NULL, 'Manufacture of Yarns and Fabrics From Synthetic Fibers', NULL, '1st', '1', '141', 56, 0, 'English', 112, 120, 4, NULL, 5, NULL, '2011-07-28', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-30 23:16:19', '2020-11-30 23:16:19'),
(698, NULL, 'Modern Approach to Maintenance in Spinning', NULL, '1st', '1', '142', 1, 0, 'English', 107, 115, 4, NULL, 5, NULL, '2013-02-27', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-30 23:20:47', '2020-11-30 23:20:47'),
(699, NULL, 'New Spinning Systems', NULL, '2nd', '1', '135', 23, 0, 'English', 106, 114, 4, NULL, 5, NULL, '2012-04-26', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-30 23:24:52', '2020-11-30 23:24:52'),
(700, NULL, 'Man-Made Fibres and Their Processing', NULL, '2nd', '1', '135', 23, 0, 'English', NULL, NULL, 4, NULL, 5, NULL, '2012-04-26', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-30 23:25:10', '2020-11-30 23:26:04'),
(701, NULL, 'New Spinning Systems', NULL, '2nd', '1', '135', 23, 0, 'English', NULL, NULL, 4, NULL, 5, NULL, '2014-06-22', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-30 23:26:54', '2020-11-30 23:30:04'),
(702, NULL, 'New Spinning Systems', NULL, '2nd', '1', '135', 23, 0, 'English', NULL, NULL, 4, NULL, 5, NULL, '2014-06-22', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-30 23:27:18', '2020-11-30 23:30:32'),
(703, NULL, 'A Practical Guide To Combing And Drawing', NULL, '2nd', '1', '135', 23, 0, 'English', NULL, NULL, 4, NULL, 5, NULL, '2014-06-22', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-30 23:28:21', '2020-11-30 23:29:22'),
(704, NULL, 'A Practical Guide To Combing And Drawing', NULL, '2nd', '1', '135', 23, 0, 'English', 106, 114, 4, NULL, 5, NULL, '2014-06-22', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-30 23:31:54', '2020-11-30 23:31:54'),
(705, NULL, 'A Practical Guide To The Blowroom and Carding', NULL, '2nd', '1', '135', 23, 0, 'English', 106, 114, 4, NULL, 5, NULL, '2014-06-22', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-30 23:34:27', '2020-11-30 23:34:27'),
(706, NULL, 'A Practical Guide To The Blowroom and Carding', NULL, '2nd', '1', '135', 23, 0, 'English', 106, 114, 4, NULL, 5, NULL, '2014-06-22', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-30 23:34:55', '2020-11-30 23:34:55'),
(707, NULL, 'The Technology of Short staple spinning', NULL, '2nd', '1', '135', 23, 0, 'English', 106, 114, 4, NULL, 5, NULL, '2014-06-22', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-30 23:36:18', '2020-11-30 23:36:18'),
(708, NULL, 'The Technology of Short staple spinning', NULL, '2nd', '1', '135', 23, 0, 'English', 106, 114, 4, NULL, 5, NULL, '2014-06-22', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-30 23:36:41', '2020-11-30 23:36:41'),
(709, NULL, 'Sitra Norms For Spinning', NULL, '7th', '1', '143', 70, 0, 'English', 106, 114, 4, NULL, 5, NULL, '2015-04-02', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-30 23:41:27', '2020-11-30 23:41:27'),
(710, NULL, 'Sitra Norms For Spinning', NULL, '7th', '1', '143', 70, 0, 'English', 106, 114, 4, NULL, 5, NULL, '2015-04-02', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-30 23:41:59', '2020-11-30 23:41:59'),
(711, NULL, 'New Spinning Systems', NULL, '2nd', '1', '135', 23, 0, 'English', 106, 114, 4, NULL, 5, NULL, '2012-03-24', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-30 23:43:42', '2020-11-30 23:43:42'),
(712, NULL, 'New Spinning Systems', NULL, '2nd', '1', '135', 23, 0, 'English', 106, 114, 4, NULL, 5, NULL, '2012-03-24', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-30 23:44:01', '2020-11-30 23:44:01'),
(713, NULL, 'New Spinning Systems', NULL, '2nd', '1', '135', 23, 0, 'English', 106, 114, 4, NULL, 5, NULL, '2012-03-24', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-30 23:44:52', '2020-11-30 23:44:52'),
(714, NULL, 'A Practical Guide To Ring Spinning', NULL, '2nd', '1', '135', 23, 0, 'English', 108, 116, 4, NULL, 5, NULL, '2012-03-24', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-30 23:50:55', '2020-11-30 23:50:55'),
(715, NULL, 'A Practical Guide To Ring Spinning', NULL, '2nd', '1', '135', 23, 0, 'English', 108, 116, 4, NULL, 5, NULL, '2012-03-24', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-30 23:52:00', '2020-11-30 23:52:00'),
(716, NULL, 'A Practical Guide To Ring Spinning', NULL, '2nd', '1', '135', 23, 0, 'English', 108, 116, 4, NULL, 5, NULL, '2012-03-24', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-30 23:52:26', '2020-11-30 23:52:26'),
(717, NULL, 'Man-Made Fibres and Their Processing', NULL, '2nd', '1', '135', 23, 0, 'English', 106, 114, 4, NULL, 5, NULL, '2012-03-24', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-30 23:57:05', '2020-11-30 23:57:05'),
(718, NULL, 'Man-Made Fibres and Their Processing', NULL, '2nd', '1', '135', 23, 0, 'English', 106, 114, 4, NULL, 5, NULL, '2012-03-24', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-11-30 23:58:15', '2020-11-30 23:58:15'),
(719, NULL, 'Practical Guide To Spinning', NULL, '1st', '1', '90', 4, 0, 'English', 107, 115, 4, NULL, 5, NULL, '2011-07-24', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-12-01 00:21:58', '2020-12-01 00:21:58'),
(720, NULL, 'Practical Guide To Spinning', NULL, '1st', '1', '90', 4, 0, 'English', 107, 115, 4, NULL, 5, NULL, '2011-07-24', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-12-01 00:22:31', '2020-12-01 00:22:31'),
(721, NULL, 'Practical Open End Spinning', NULL, '1st', '1', '137', 56, 0, 'English', 106, 114, 4, NULL, 5, NULL, '2013-02-27', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-12-01 00:29:11', '2020-12-01 00:29:11'),
(722, NULL, 'Practical Open End Spinning', NULL, '1st', '1', '137', 56, 0, 'English', 106, 114, 4, NULL, 5, NULL, '2013-02-27', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-12-01 00:29:43', '2020-12-01 00:29:43'),
(723, NULL, 'Practical Open End Spinning', NULL, '1st', '1', '137', 56, 0, 'English', 106, 114, 4, NULL, 5, NULL, '2013-02-27', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-12-01 00:30:02', '2020-12-01 00:30:02'),
(724, NULL, 'Practical Open End Spinning', NULL, '1st', '1', '137', 56, 0, 'English', 106, 114, 4, NULL, 5, NULL, '2013-02-27', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-12-01 00:30:23', '2020-12-01 00:30:23'),
(725, NULL, 'Practical Open End Spinning', NULL, '1st', '1', '137', 56, 0, 'English', 106, 114, 4, NULL, 5, NULL, '2013-02-27', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-12-01 00:30:47', '2020-12-01 00:30:47'),
(726, NULL, 'Principles of Short Staple Spinning', NULL, '2nd', '1', '144', 40, 0, 'English', 106, 114, 4, NULL, 5, NULL, '2012-03-24', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-12-01 00:37:37', '2020-12-01 00:37:37'),
(727, NULL, 'Principles of Short Staple Spinning', NULL, '2nd', '1', '144', 40, 0, 'English', 106, 114, 4, NULL, 5, NULL, '2012-03-24', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-12-01 00:38:20', '2020-12-01 00:38:20'),
(728, NULL, 'Principles of Short Staple Spinning', NULL, '2nd', '1', '144', 40, 0, 'English', 106, 114, 4, NULL, 5, NULL, '2012-03-24', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-12-01 00:38:40', '2020-12-01 00:38:40');
INSERT INTO `books` (`id`, `code`, `book_name`, `isbn`, `edition`, `copy`, `author_id`, `publication_id`, `popularity`, `language`, `category_id`, `subcategory_id`, `department_id`, `teacher_id`, `rack`, `price`, `enlisted_date`, `condition`, `show`, `removed`, `book_status`, `reason`, `book_file`, `book_description`, `date`, `created_at`, `updated_at`) VALUES
(729, NULL, 'Principles of Short Staple Spinning', NULL, '2nd', '1', '144', 40, 0, 'English', 106, 114, 4, NULL, 5, NULL, '2012-03-24', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-12-01 00:39:06', '2020-12-01 00:39:06'),
(730, NULL, 'Principles of Short Staple Spinning', NULL, '2nd', '1', '144', 40, 0, 'English', 106, 114, 4, NULL, 5, NULL, '2012-04-26', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-12-01 00:42:08', '2020-12-01 00:42:08'),
(731, NULL, 'Principles of Short Staple Spinning', NULL, '2nd', '1', '144', 40, 0, 'English', 106, 114, 4, NULL, 5, NULL, '2012-04-26', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-12-01 00:42:30', '2020-12-01 00:42:30'),
(732, NULL, 'Principles of Short Staple Spinning', NULL, '2nd', '1', '144', 40, 0, 'English', 106, 114, 4, NULL, 5, NULL, '2012-04-26', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-12-01 00:43:00', '2020-12-01 00:43:00'),
(733, NULL, 'Principles of Short Staple Spinning', NULL, '2nd', '1', '144', 40, 0, 'English', 106, 114, 4, NULL, 5, NULL, '2012-04-26', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-12-01 00:43:25', '2020-12-01 00:43:25'),
(734, NULL, 'Principles of Short Staple Spinning', NULL, '2nd', '1', '144', 40, 0, 'English', 106, 114, 4, NULL, 5, NULL, '2012-04-26', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-12-01 00:43:50', '2020-12-01 00:43:50'),
(735, NULL, 'Principles of Short Staple Spinning', NULL, '2nd', '1', '144', 40, 0, 'English', 106, 114, 4, NULL, 5, NULL, '2012-04-26', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-12-01 00:44:20', '2020-12-01 00:44:20'),
(736, NULL, 'Principles of Short Staple Spinning', NULL, '2nd', '1', '144', 40, 0, 'English', 106, 114, 4, NULL, 5, NULL, '2012-04-26', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-12-01 00:46:14', '2020-12-01 00:46:14'),
(737, NULL, 'Principles of Short Staple Spinning', NULL, '2nd', '1', '144', 40, 0, 'English', 106, 114, 4, NULL, 5, NULL, '2012-04-26', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-12-01 00:47:07', '2020-12-01 00:47:07'),
(738, NULL, 'Principles of Short Staple Spinning', NULL, '2nd', '1', '144', 40, 0, 'English', 106, 114, 4, NULL, 5, NULL, '2012-04-26', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-12-01 00:47:26', '2020-12-01 00:47:26'),
(739, NULL, 'Principles of Short Staple Spinning', NULL, '2nd', '1', '144', 40, 0, 'English', 106, 114, 4, NULL, 5, NULL, '2012-04-26', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-12-01 00:49:44', '2020-12-01 00:49:44'),
(740, NULL, 'Principles of Short Staple Spinning', NULL, '2nd', '1', '144', 40, 0, 'English', 106, 114, 4, NULL, 5, NULL, '2014-06-21', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-12-01 00:54:59', '2020-12-01 00:54:59'),
(741, NULL, 'Principles of Short Staple Spinning', NULL, '2nd', '1', '144', 40, 0, 'English', 106, 114, 4, NULL, 5, NULL, '2014-06-21', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-12-01 00:55:31', '2020-12-01 00:55:31'),
(742, NULL, 'Principles of Short Staple Spinning', NULL, '2nd', '1', '144', 40, 0, 'English', 106, 114, 4, NULL, 5, NULL, '2014-06-21', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-12-01 00:56:06', '2020-12-01 00:56:06'),
(743, NULL, 'Principles of Short Staple Spinning', NULL, '2nd', '1', '144', 40, 0, 'English', 106, 114, 4, NULL, 5, NULL, '2014-06-21', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-12-01 01:03:05', '2020-12-01 01:03:05'),
(744, NULL, 'Principles of Short Staple Spinning', NULL, '2nd', '1', '144', 40, 0, 'English', 106, 114, 4, NULL, 5, NULL, '2014-06-21', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-12-01 01:03:25', '2020-12-01 01:03:25'),
(745, NULL, 'The Technology of Short staple spinning', NULL, '2nd', '1', '135', 23, 0, 'English', 104, 113, 4, NULL, 5, NULL, '2012-03-24', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-12-01 22:37:14', '2020-12-01 22:37:14'),
(746, NULL, 'The Technology of Short staple spinning', NULL, '2nd', '1', '135', 23, 0, 'English', 104, 113, 4, NULL, 5, NULL, '2012-03-24', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-12-01 22:37:40', '2020-12-01 22:37:40'),
(747, NULL, 'The Technology of Short staple spinning', NULL, '2nd', '1', '135', 23, 0, 'English', 104, 113, 4, NULL, 5, NULL, '2012-03-24', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-12-01 22:38:02', '2020-12-01 22:38:02'),
(748, NULL, 'Man-Made Fibres and Their Processing', NULL, '2nd', '1', '135', 23, 0, 'English', 104, 113, 4, NULL, 5, NULL, '2012-03-24', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-12-01 22:41:03', '2020-12-01 22:41:03'),
(749, NULL, 'Principles of Short Staple Spinning', NULL, '1st', '103212016', '144', 40, 0, 'English', 104, 113, 4, NULL, 5, NULL, '2016-03-21', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-12-01 22:46:06', '2020-12-01 22:46:06'),
(750, NULL, 'Principles of Short Staple Spinning', NULL, '1st', '103212016', '144', 40, 0, 'English', 104, 113, 4, NULL, 5, NULL, '2017-01-29', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-12-01 22:47:15', '2020-12-01 22:47:15'),
(751, NULL, 'Principles of Short Staple Spinning', NULL, '1st', '103212016', '144', 40, 0, 'English', 104, 113, 4, NULL, 5, NULL, '2018-02-25', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-12-01 22:48:14', '2020-12-01 22:48:14'),
(752, NULL, 'Principles of Short Staple Spinning', NULL, '1st', '103212016', '144', 40, 0, 'English', 104, 113, 4, NULL, 5, NULL, '2018-02-25', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-12-01 22:48:34', '2020-12-01 22:48:34'),
(753, NULL, 'A Practical Guide To Ring Spinning', NULL, '1st', '1', '135', 23, 0, 'English', 104, 113, 4, NULL, 5, NULL, '2012-03-24', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-12-01 22:50:51', '2020-12-01 22:50:51'),
(754, NULL, 'A Practical Guide To Ring Spinning', NULL, '2nd', '1', '135', 23, 0, 'English', 104, 113, 4, NULL, 5, NULL, '2012-03-24', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-12-01 22:51:26', '2020-12-01 22:51:26'),
(755, NULL, 'A Practical Guide To Ring Spinning', NULL, '2nd', '1', '135', 23, 0, 'English', 104, 113, 4, NULL, 5, NULL, '2012-03-24', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-12-01 22:51:47', '2020-12-01 22:51:47'),
(756, NULL, 'Spinning', NULL, '1st', '1', '93', 1, 0, 'English', 104, 113, 4, NULL, 5, NULL, '2011-07-27', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-12-01 22:59:20', '2020-12-01 22:59:20'),
(757, NULL, 'Spinning', NULL, '1st', '1', '93', 1, 0, 'English', 104, 113, 4, NULL, 5, NULL, '2013-02-27', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-12-01 23:00:00', '2020-12-01 23:00:00'),
(758, NULL, 'Spinning', NULL, '1st', '1', '93', 1, 0, 'English', 104, 113, 4, NULL, 5, NULL, '2013-02-27', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-12-01 23:00:15', '2020-12-01 23:00:15'),
(759, NULL, 'Spinning,Extruding and Processing of Fibers', NULL, '1st', '1', '141', 56, 0, 'English', 104, 113, 4, NULL, 5, NULL, '2011-07-24', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-12-01 23:08:58', '2020-12-01 23:08:58'),
(760, NULL, 'Spinning,Extruding and Processing of Fibers', NULL, '1st', '1', '141', 56, 0, 'English', 104, 113, 4, NULL, 5, NULL, '2011-07-24', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-12-01 23:09:31', '2020-12-01 23:09:31'),
(761, NULL, 'Spinning,Extruding and Processing of Fibers', NULL, '1st', '1', '141', 56, 0, 'English', 104, 113, 4, NULL, 5, NULL, '2011-07-28', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-12-01 23:10:43', '2020-12-01 23:10:43'),
(762, NULL, 'Tape Yarns', NULL, '1st', '1', '145', 1, 0, 'English', 106, 114, 4, NULL, 5, NULL, '2011-07-28', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-12-01 23:28:33', '2020-12-01 23:28:33'),
(763, NULL, 'Tape Yarns', NULL, '1st', '1', '145', 1, 0, 'English', 106, 114, 4, NULL, 5, NULL, '2011-07-28', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-12-01 23:28:53', '2020-12-01 23:28:53'),
(764, NULL, 'Tape Yarns', NULL, '1st', '1', '145', 1, 0, 'English', 106, 114, 4, NULL, 5, NULL, '2017-01-29', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-12-01 23:29:34', '2020-12-01 23:29:34'),
(765, NULL, 'Textile Mechanics and Spinning Calculations', NULL, '1st', '1', '137', 56, 0, 'English', 109, 117, 4, NULL, 5, NULL, '2013-02-27', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-12-01 23:34:41', '2020-12-01 23:34:41'),
(766, NULL, 'Textile Mechanics and Spinning Calculations', NULL, '1st', '1', '137', 56, 0, 'English', 109, 117, 4, NULL, 5, NULL, '2013-02-27', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-12-01 23:35:15', '2020-12-01 23:35:15'),
(767, NULL, 'Textile Mechanics and Spinning Calculations', NULL, '1st', '1', '137', 56, 0, 'English', 109, 117, 4, NULL, 5, NULL, '2013-02-27', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-12-01 23:35:39', '2020-12-01 23:35:39'),
(768, NULL, 'Textile Mechanics and Spinning Calculations', NULL, '1st', '1', '137', 56, 0, 'English', 109, 117, 4, NULL, 5, NULL, '2013-02-27', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-12-01 23:36:01', '2020-12-01 23:36:01'),
(769, NULL, 'Textile Mechanics and Spinning Calculations', NULL, '1st', '1', '137', 56, 0, 'English', 109, 117, 4, NULL, 5, NULL, '2013-02-27', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-12-01 23:36:19', '2020-12-01 23:36:19'),
(770, NULL, 'Textile Yarns', NULL, '1st', '1', '146', 3, 0, 'English', 104, 113, 4, NULL, 5, NULL, '2013-02-27', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-12-01 23:41:07', '2020-12-01 23:41:07'),
(771, NULL, 'Twistless Yarns', NULL, '1st', '1', '147', 1, 0, 'English', 106, 114, 4, NULL, 5, NULL, '2011-07-28', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-12-01 23:44:42', '2020-12-01 23:44:42'),
(772, NULL, 'Twistless Yarns', NULL, '1st', '1', '147', 1, 0, 'English', 106, 114, 4, NULL, 5, NULL, '2017-01-29', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-12-01 23:45:10', '2020-12-01 23:45:10'),
(773, NULL, 'Waste Silk Spinning', NULL, '1st', '1', '148', 4, 0, 'English', 104, 113, 4, NULL, 5, NULL, '2013-02-27', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-12-01 23:50:29', '2020-12-01 23:50:29'),
(774, NULL, 'Woollen & Worsted Spinning', NULL, '1st', '1', '149', 4, 0, 'English', 106, 114, 4, NULL, 5, NULL, '2013-02-27', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-12-01 23:53:59', '2020-12-01 23:53:59'),
(775, NULL, 'Woollen & Worsted Spinning', NULL, '1st', '1', '149', 4, 0, 'English', 106, 114, 4, NULL, 5, NULL, '2013-02-27', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-12-01 23:54:23', '2020-12-01 23:54:23'),
(776, NULL, 'Woollen Spinning', NULL, '1st', '1', '150', 4, 0, 'English', 106, 114, 4, NULL, 5, NULL, '2013-02-27', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-12-01 23:59:01', '2020-12-01 23:59:01'),
(777, NULL, 'Woollen Spinning', NULL, '1st', '1', '150', 4, 0, 'English', 106, 114, 4, NULL, 5, NULL, '2013-02-27', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-12-01 23:59:15', '2020-12-01 23:59:15'),
(778, NULL, 'Woollen & Worsted Spinning', NULL, '1st', '1', '151', 4, 0, 'English', 104, 113, 4, NULL, 5, NULL, '2011-04-20', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-12-02 00:02:25', '2020-12-02 00:02:25'),
(779, NULL, 'Yarn Manufacturing-2', NULL, '1st', '1', '33', 46, 0, 'English', 113, 121, 4, NULL, 5, NULL, '2012-04-26', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-12-02 00:06:56', '2020-12-02 00:06:56'),
(780, NULL, 'Yarn Manufacturing-1', NULL, '1st', '1', '33', 46, 0, 'English', 113, 121, 4, NULL, 5, NULL, '2012-04-26', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-12-02 00:09:02', '2020-12-02 00:09:02'),
(781, NULL, 'Yarn Manufacturing-1', NULL, '1st', '1', '33', 46, 0, 'English', 113, 121, 4, NULL, 5, NULL, '2012-04-26', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-12-02 00:10:20', '2020-12-02 00:10:20'),
(782, NULL, 'Yarn Manufacturing-1', NULL, '1st', '1', '33', 46, 0, 'English', 113, 121, 4, NULL, 5, NULL, '2012-04-26', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-12-02 00:10:43', '2020-12-02 00:10:43'),
(783, NULL, 'Yarn Manufacturing-1', NULL, '1st', '1', '33', 46, 0, 'English', 113, 121, 4, NULL, 5, NULL, '2012-04-26', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-12-02 00:11:07', '2020-12-02 00:11:07'),
(784, NULL, 'Yarn Manufacturing-1', NULL, '1st', '1', '33', 46, 0, 'English', 113, 121, 4, NULL, 5, NULL, '2012-04-26', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-12-02 00:11:31', '2020-12-02 00:11:31'),
(785, NULL, 'Yarn Manufacturing-1', NULL, '1st', '1', '33', 46, 0, 'English', 113, 121, 4, NULL, 5, NULL, '2012-04-26', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-12-02 00:12:20', '2020-12-02 00:12:20'),
(786, NULL, 'Yarn Manufacturing-1', NULL, '1st', '1', '33', 46, 0, 'English', 113, 121, 4, NULL, 5, NULL, '2012-04-26', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-12-02 00:12:41', '2020-12-02 00:12:41'),
(787, NULL, 'Yarn Manufacturing-1', NULL, '1st', '1', '33', 46, 0, 'English', 113, 121, 4, NULL, 5, NULL, '2012-04-26', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-12-02 00:13:01', '2020-12-02 00:13:01'),
(788, NULL, 'Yarn Manufacturing-1', NULL, '1st', '1', '33', 46, 0, 'English', 113, 121, 4, NULL, 5, NULL, '2012-04-26', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-12-02 00:13:26', '2020-12-02 00:13:26'),
(789, NULL, 'Advanced Long Staple Spinning', NULL, '1st', '1', '95', 57, 0, 'Bangla', 113, 121, 4, NULL, 5, NULL, '2012-03-24', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-12-02 00:16:53', '2020-12-02 00:16:53'),
(790, NULL, 'Advanced Long Staple Spinning', NULL, '1st', '1', '95', 57, 0, 'Bangla', 113, 121, 4, NULL, 5, NULL, '2012-03-24', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-12-02 00:17:11', '2020-12-02 00:17:11'),
(791, NULL, 'Advanced Long Staple Spinning', NULL, '1st', '1', '95', 57, 0, 'Bangla', 113, 121, 4, NULL, 5, NULL, '2012-03-24', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-12-02 00:17:30', '2020-12-02 00:17:30'),
(792, NULL, 'Advanced Long Staple Spinning', NULL, '1st', '1', '95', 57, 0, 'Bangla', 113, 121, 4, NULL, 5, NULL, '2012-03-24', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-12-02 00:17:48', '2020-12-02 00:17:48'),
(793, NULL, 'Advanced Long Staple Spinning', NULL, '1st', '1', '95', 57, 0, 'Bangla', 113, 121, 4, NULL, 5, NULL, '2012-03-24', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-12-02 00:18:11', '2020-12-02 00:18:11'),
(794, NULL, 'Advanced Short Staple Spinning', NULL, '1st', '1', '95', 57, 0, 'Bangla', 113, 121, 4, NULL, 5, NULL, '2012-03-24', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-12-02 00:19:23', '2020-12-02 00:19:23'),
(795, NULL, 'Advanced Short Staple Spinning', NULL, '1st', '1', '95', 57, 0, 'Bangla', 113, 121, 4, NULL, 5, NULL, '2012-03-24', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-12-02 00:19:46', '2020-12-02 00:19:46'),
(796, NULL, 'Advanced Short Staple Spinning', NULL, '1st', '1', '95', 57, 0, 'Bangla', 113, 121, 4, NULL, 5, NULL, '2012-03-24', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-12-02 00:20:02', '2020-12-02 00:20:02'),
(797, NULL, 'Advanced Short Staple Spinning', NULL, '1st', '1', '95', 57, 0, 'Bangla', 113, 121, 4, NULL, 5, NULL, '2012-03-24', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-12-02 00:20:19', '2020-12-02 00:20:19'),
(798, NULL, 'Advanced Short Staple Spinning', NULL, '1st', '1', '95', 57, 0, 'Bangla', 113, 121, 4, NULL, 5, NULL, '2012-03-24', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-12-02 00:20:39', '2020-12-02 00:20:39'),
(799, NULL, 'Yarn Manufacturing-1', NULL, '1st', '1', '152', 71, 0, 'Bangla', 113, 121, 4, NULL, 5, NULL, '2013-07-06', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-12-02 00:25:20', '2020-12-02 00:25:20'),
(800, NULL, 'Yarn Manufacturing-1', NULL, '1st', '1', '152', 71, 0, 'Bangla', 113, 121, 4, NULL, 5, NULL, '2013-07-06', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-12-02 00:25:37', '2020-12-02 00:25:37'),
(801, NULL, 'Yarn Manufacturing-1', NULL, '1st', '1', '152', 71, 0, 'Bangla', 113, 121, 4, NULL, 5, NULL, '2013-07-06', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-12-02 00:25:53', '2020-12-02 00:25:53'),
(802, NULL, 'Yarn Manufacturing-1', NULL, '1st', '1', '152', 71, 0, 'Bangla', 113, 121, 4, NULL, 5, NULL, '2013-07-06', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-12-02 00:26:08', '2020-12-02 00:26:08'),
(803, NULL, 'Yarn Manufacturing-1', NULL, '1st', '1', '152', 71, 0, 'Bangla', 113, 121, 4, NULL, 5, NULL, '2013-07-06', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-12-02 00:26:26', '2020-12-02 00:26:26'),
(804, NULL, 'Spinning Fundamentals of Man Made Fibres', NULL, '1st', '1', '153', 56, 0, 'English', NULL, NULL, 4, NULL, 5, NULL, '2013-02-27', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-12-02 03:28:15', '2020-12-02 03:32:15'),
(805, NULL, 'Spinning Fundamentals of Man Made Fibres', NULL, '1st', '1', '153', 56, 0, 'English', NULL, NULL, 4, NULL, 5, NULL, '2013-02-27', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-12-02 03:28:44', '2020-12-02 03:33:03'),
(806, NULL, 'Spinning Fundamentals of Man Made Fibres', NULL, '1st', '1', '153', 56, 0, 'English', NULL, NULL, 4, NULL, 5, NULL, '2013-02-27', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-12-02 03:29:01', '2020-12-02 03:33:47'),
(807, NULL, 'Spinning Fundamentals of Man Made Fibres', NULL, '1st', '1', '153', 56, 0, 'English', 106, 114, 4, NULL, 5, NULL, '2013-02-27', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-12-02 03:35:36', '2020-12-02 03:35:36'),
(808, NULL, 'Spinning Fundamentals of Man Made Fibres', NULL, '1st', '1', '153', 56, 0, 'English', 106, 114, 4, NULL, 5, NULL, '2013-02-27', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-12-02 03:36:04', '2020-12-02 03:36:04'),
(809, NULL, 'Spinning Fundamentals of Man Made Fibres', NULL, '1st', '1', '153', 56, 0, 'English', 106, 114, 4, NULL, 5, NULL, '2013-02-27', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-12-02 03:36:31', '2020-12-02 03:36:31'),
(810, NULL, 'Spinning Fundamentals of Man Made Fibres', NULL, '1st', '1', '153', 56, 0, 'English', 106, 114, 4, NULL, 5, NULL, '2013-02-27', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-12-02 03:36:56', '2020-12-02 03:36:56'),
(811, NULL, 'Spinning Fundamentals of Man Made Fibres', NULL, '1st', '1', '153', 56, 0, 'English', 106, 114, 4, NULL, 5, NULL, '2013-02-27', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-12-02 03:37:15', '2020-12-02 03:37:15'),
(812, NULL, 'Spinning Fundamentals of Man Made Fibres', NULL, '1st', '1', '153', 56, 0, 'English', 106, 114, 4, NULL, 5, NULL, '2013-02-27', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-12-02 03:37:41', '2020-12-02 03:37:41'),
(813, NULL, 'Spinning Fundamentals of Man Made Fibres', NULL, '1st', '1', '153', 56, 0, 'English', 106, 114, 4, NULL, 5, NULL, '2013-02-27', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-12-02 03:38:03', '2020-12-02 03:38:03'),
(814, NULL, 'Spinners Handbook of Quality Control', NULL, '1st', '1', '154', 56, 0, 'English', 106, 114, 4, NULL, 5, NULL, '2013-02-27', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-12-02 03:42:14', '2020-12-02 03:42:14'),
(815, NULL, 'Spinners Handbook of Quality Control', NULL, '1st', '1', '154', 56, 0, 'English', 106, 114, 4, NULL, 5, NULL, '2013-02-27', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-12-02 03:42:41', '2020-12-02 03:42:41'),
(816, NULL, 'Spinners Handbook of Quality Control', NULL, '1st', '1', '154', 56, 0, 'English', 106, 114, 4, NULL, 5, NULL, '2013-02-27', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-12-02 03:43:05', '2020-12-02 03:43:05'),
(817, NULL, 'Spinners Handbook of Quality Control', NULL, '1st', '1', '154', 56, 0, 'English', 106, 114, 4, NULL, 5, NULL, '2013-02-27', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-12-02 03:43:40', '2020-12-02 03:43:40'),
(818, NULL, 'Spinners Handbook of Quality Control', NULL, '1st', '1', '154', 56, 0, 'English', 106, 114, 4, NULL, 5, NULL, '2013-02-27', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-12-02 03:43:57', '2020-12-02 03:43:57');

-- --------------------------------------------------------

--
-- Table structure for table `book_infos`
--

CREATE TABLE `book_infos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `book_id` int(11) DEFAULT NULL,
  `accession_no` varchar(11) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `isbn_no` varchar(11) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `book_code` varchar(11) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0=available; 1=removed; 2=lost; 3=occupied',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `book_infos`
--

INSERT INTO `book_infos` (`id`, `book_id`, `accession_no`, `isbn_no`, `book_code`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, '123', '556', '678', 0, '2020-11-03 00:03:17', '2020-11-03 00:03:17'),
(2, 1, '1234', '3456', '2345', 0, '2020-11-03 00:03:17', '2020-11-03 00:03:17'),
(3, 2, '4241', NULL, NULL, 0, '2020-11-03 06:05:29', '2020-11-03 06:05:29'),
(4, 3, '3150', NULL, NULL, 0, '2020-11-03 06:07:41', '2020-11-03 06:07:41'),
(5, 4, '3149', NULL, NULL, 0, '2020-11-03 06:10:51', '2020-11-03 06:10:51'),
(6, 5, '3547', NULL, NULL, 0, '2020-11-03 06:16:32', '2020-11-03 06:16:32'),
(7, 6, '3548', NULL, NULL, 0, '2020-11-03 06:17:52', '2020-11-03 06:17:52'),
(8, 7, '3549', NULL, NULL, 0, '2020-11-03 06:19:17', '2020-11-03 06:19:17'),
(9, 8, '3550', NULL, NULL, 0, '2020-11-03 06:20:26', '2020-11-03 06:20:26'),
(10, 9, '3551', NULL, NULL, 0, '2020-11-03 06:21:31', '2020-11-03 06:21:31'),
(11, 10, '3552', NULL, NULL, 0, '2020-11-03 06:22:57', '2020-11-03 06:22:57'),
(12, 11, '3553', NULL, NULL, 0, '2020-11-03 06:24:05', '2020-11-03 06:24:05'),
(13, 12, '3554', NULL, NULL, 0, '2020-11-03 06:25:10', '2020-11-03 06:25:10'),
(14, 13, '3555', NULL, NULL, 0, '2020-11-03 06:26:06', '2020-11-03 06:26:06'),
(15, 14, '3556', NULL, NULL, 0, '2020-11-03 06:27:04', '2020-11-03 06:27:04'),
(16, 15, '4481', NULL, NULL, 0, '2020-11-03 06:28:34', '2020-11-03 06:28:34'),
(17, 16, '3149', NULL, NULL, 0, '2020-11-03 22:06:31', '2020-11-03 22:06:31'),
(18, 17, '3549', NULL, NULL, 0, '2020-11-03 22:10:54', '2020-11-03 22:10:54'),
(19, 18, '3550', NULL, NULL, 0, '2020-11-03 22:13:33', '2020-11-03 22:13:33'),
(20, 19, '3551', NULL, NULL, 0, '2020-11-03 22:15:03', '2020-11-03 22:15:03'),
(21, 20, '3555', NULL, NULL, 0, '2020-11-03 22:18:18', '2020-11-03 22:18:18'),
(22, 21, '4481', NULL, NULL, 0, '2020-11-03 22:19:28', '2020-11-03 22:19:28'),
(23, 22, '3661', NULL, NULL, 0, '2020-11-04 00:08:01', '2020-11-04 00:08:01'),
(24, 23, '5249', NULL, NULL, 0, '2020-11-04 00:09:26', '2020-11-04 00:09:26'),
(25, 24, '5250', NULL, NULL, 0, '2020-11-04 00:10:40', '2020-11-04 00:10:40'),
(26, 25, '4137', NULL, NULL, 0, '2020-11-04 00:12:27', '2020-11-04 00:12:27'),
(27, 26, '4138', NULL, NULL, 0, '2020-11-04 00:13:19', '2020-11-04 00:13:19'),
(28, 27, '4463', NULL, NULL, 0, '2020-11-04 00:14:53', '2020-11-04 00:14:53'),
(29, 28, '3759', NULL, NULL, 0, '2020-11-04 00:19:41', '2020-11-04 00:19:41'),
(30, 29, '5073', NULL, NULL, 0, '2020-11-04 00:20:47', '2020-11-04 00:20:47'),
(31, 30, '5219', NULL, NULL, 0, '2020-11-04 00:23:01', '2020-11-04 00:23:01'),
(32, 31, '5220', NULL, NULL, 0, '2020-11-04 00:24:16', '2020-11-04 00:24:16'),
(33, 32, '5127', NULL, NULL, 0, '2020-11-04 00:26:34', '2020-11-04 00:26:34'),
(34, 33, '5128', NULL, NULL, 0, '2020-11-04 00:29:47', '2020-11-04 00:29:47'),
(35, 34, '4468', NULL, NULL, 0, '2020-11-04 00:37:07', '2020-11-04 00:37:07'),
(36, 35, '4482', NULL, NULL, 0, '2020-11-04 00:40:18', '2020-11-04 00:40:18'),
(37, 36, '3674', NULL, NULL, 0, '2020-11-04 00:42:16', '2020-11-04 00:42:16'),
(38, 37, '3675', NULL, NULL, 0, '2020-11-04 00:43:30', '2020-11-04 00:43:30'),
(39, 38, '4440', NULL, NULL, 0, '2020-11-04 00:45:13', '2020-11-04 00:45:13'),
(40, 39, '3033', NULL, NULL, 0, '2020-11-04 00:47:18', '2020-11-04 00:47:18'),
(41, 40, '3762', NULL, NULL, 0, '2020-11-04 00:52:02', '2020-11-04 00:52:02'),
(42, 41, '3763', NULL, NULL, 0, '2020-11-04 00:53:46', '2020-11-04 00:53:46'),
(43, 42, '3764', NULL, NULL, 0, '2020-11-04 00:54:45', '2020-11-04 00:54:45'),
(44, 43, '3765', NULL, NULL, 0, '2020-11-04 00:55:38', '2020-11-04 00:55:38'),
(45, 44, '3766', NULL, NULL, 0, '2020-11-04 00:57:25', '2020-11-04 00:57:25'),
(46, 45, '3186', NULL, NULL, 0, '2020-11-04 01:11:30', '2020-11-04 01:11:30'),
(47, 46, '5199', NULL, NULL, 0, '2020-11-04 01:12:49', '2020-11-04 01:12:49'),
(48, 47, '5200', NULL, NULL, 0, '2020-11-04 01:13:47', '2020-11-04 01:13:47'),
(49, 48, '3192', NULL, NULL, 0, '2020-11-04 01:21:03', '2020-11-04 01:21:03'),
(50, 49, '3193', NULL, NULL, 0, '2020-11-04 01:22:47', '2020-11-04 01:22:47'),
(51, 50, '3769', NULL, NULL, 0, '2020-11-04 01:27:16', '2020-11-04 01:27:16'),
(52, 51, '3770', NULL, NULL, 0, '2020-11-04 01:28:39', '2020-11-04 01:28:39'),
(53, 52, '3771', NULL, NULL, 0, '2020-11-04 01:29:53', '2020-11-04 01:29:53'),
(54, 53, '3772', NULL, NULL, 0, '2020-11-04 01:30:58', '2020-11-04 01:30:58'),
(55, 54, '3773', NULL, NULL, 0, '2020-11-04 01:32:16', '2020-11-04 01:32:16'),
(56, 55, '3307', NULL, NULL, 0, '2020-11-04 23:57:52', '2020-11-04 23:57:52'),
(57, 56, '4479', NULL, NULL, 0, '2020-11-05 00:02:56', '2020-11-05 00:02:56'),
(58, 57, '3305', NULL, NULL, 0, '2020-11-05 00:17:45', '2020-11-05 00:17:45'),
(59, 58, '3305', NULL, NULL, 0, '2020-11-05 00:24:24', '2020-11-05 00:24:24'),
(60, 59, '3306', NULL, NULL, 0, '2020-11-05 00:26:16', '2020-11-05 00:26:16'),
(61, 60, '3243', NULL, NULL, 0, '2020-11-05 00:41:05', '2020-11-05 00:41:05'),
(62, 61, '4451', NULL, NULL, 0, '2020-11-05 01:02:16', '2020-11-05 01:02:16'),
(63, 62, '5099', NULL, NULL, 0, '2020-11-05 01:05:13', '2020-11-05 01:05:13'),
(64, 63, '5171', NULL, NULL, 0, '2020-11-05 01:07:23', '2020-11-05 01:07:23'),
(65, 64, '5172', NULL, NULL, 0, '2020-11-05 01:10:27', '2020-11-05 01:10:27'),
(66, 65, '4557', NULL, NULL, 0, '2020-11-05 01:11:53', '2020-11-05 01:11:53'),
(67, 66, '4558', NULL, NULL, 0, '2020-11-05 01:13:23', '2020-11-05 01:13:23'),
(68, 67, '4559', NULL, NULL, 0, '2020-11-05 01:14:42', '2020-11-05 01:14:42'),
(69, 68, '4560', NULL, NULL, 0, '2020-11-05 01:15:52', '2020-11-05 01:15:52'),
(70, 69, '4561', NULL, NULL, 0, '2020-11-05 01:17:05', '2020-11-05 01:17:05'),
(71, 70, '4477', NULL, NULL, 0, '2020-11-05 01:25:54', '2020-11-05 01:25:54'),
(72, 71, '3813', NULL, NULL, 0, '2020-11-05 01:31:03', '2020-11-05 01:31:03'),
(73, 72, '3814', NULL, NULL, 0, '2020-11-05 01:33:28', '2020-11-05 01:33:28'),
(74, 73, '4167', NULL, NULL, 0, '2020-11-05 01:35:22', '2020-11-05 01:35:22'),
(75, 74, '4168', NULL, NULL, 0, '2020-11-05 01:37:38', '2020-11-05 01:37:38'),
(76, 75, '4169', NULL, NULL, 0, '2020-11-05 01:38:59', '2020-11-05 01:38:59'),
(77, 76, '4170', NULL, NULL, 0, '2020-11-05 01:40:36', '2020-11-05 01:40:36'),
(78, 77, '4171', NULL, NULL, 0, '2020-11-05 01:41:35', '2020-11-05 01:41:35'),
(79, 78, '4171', NULL, NULL, 0, '2020-11-05 01:42:58', '2020-11-05 01:42:58'),
(80, 79, '4172', NULL, NULL, 0, '2020-11-05 01:45:38', '2020-11-05 01:45:38'),
(81, 80, '4173', NULL, NULL, 0, '2020-11-05 01:46:28', '2020-11-05 01:46:28'),
(82, 81, '4174', NULL, NULL, 0, '2020-11-05 01:48:13', '2020-11-05 01:48:13'),
(83, 82, '4175', NULL, NULL, 0, '2020-11-05 01:49:10', '2020-11-05 01:49:10'),
(84, 83, '4176', NULL, NULL, 0, '2020-11-05 01:50:08', '2020-11-05 01:50:08'),
(85, 84, '4282', NULL, NULL, 0, '2020-11-05 01:51:41', '2020-11-05 01:51:41'),
(86, 85, '4283', NULL, NULL, 0, '2020-11-05 01:52:51', '2020-11-05 01:52:51'),
(87, 86, '3267', NULL, NULL, 0, '2020-11-05 19:47:43', '2020-11-05 19:47:43'),
(88, 87, '3267', NULL, NULL, 0, '2020-11-05 19:56:46', '2020-11-05 19:56:46'),
(89, 88, '3268', NULL, NULL, 0, '2020-11-05 19:57:46', '2020-11-05 19:57:46'),
(90, 89, '3812', NULL, NULL, 0, '2020-11-05 20:02:39', '2020-11-05 20:02:39'),
(91, 90, '3811', NULL, NULL, 0, '2020-11-05 20:04:26', '2020-11-05 20:04:26'),
(92, 91, '3409', NULL, NULL, 0, '2020-11-05 22:19:25', '2020-11-05 22:19:25'),
(93, 92, '3410', NULL, NULL, 0, '2020-11-05 22:20:36', '2020-11-05 22:20:36'),
(94, 93, '3411', NULL, NULL, 0, '2020-11-05 22:21:39', '2020-11-05 22:21:39'),
(95, 94, '3412', NULL, NULL, 0, '2020-11-05 22:23:44', '2020-11-05 22:23:44'),
(96, 95, '3557', NULL, NULL, 0, '2020-11-05 22:25:47', '2020-11-05 22:25:47'),
(97, 96, '3558', NULL, NULL, 0, '2020-11-05 22:26:47', '2020-11-05 22:26:47'),
(98, 97, '3559', NULL, NULL, 0, '2020-11-05 22:27:46', '2020-11-05 22:27:46'),
(99, 98, '3560', NULL, NULL, 0, '2020-11-05 22:28:38', '2020-11-05 22:28:38'),
(100, 99, '4039', NULL, NULL, 0, '2020-11-05 22:33:41', '2020-11-05 22:33:41'),
(101, 100, '4040', NULL, NULL, 0, '2020-11-05 22:34:38', '2020-11-05 22:34:38'),
(102, 101, '3561', NULL, NULL, 0, '2020-11-05 22:36:51', '2020-11-05 22:36:51'),
(103, 102, '4041', NULL, NULL, 0, '2020-11-05 22:38:02', '2020-11-05 22:38:02'),
(104, 103, '4042', NULL, NULL, 0, '2020-11-05 22:38:56', '2020-11-05 22:38:56'),
(105, 104, '4442', NULL, NULL, 0, '2020-11-05 22:40:32', '2020-11-05 22:40:32'),
(106, 105, '4984', NULL, NULL, 0, '2020-11-05 22:41:36', '2020-11-05 22:41:36'),
(107, 106, '3413', NULL, NULL, 0, '2020-11-05 22:50:04', '2020-11-05 22:50:04'),
(108, 107, '3414', NULL, NULL, 0, '2020-11-05 22:51:08', '2020-11-05 22:51:08'),
(109, 108, '3415', NULL, NULL, 0, '2020-11-05 22:52:34', '2020-11-05 22:52:34'),
(110, 109, '3516', NULL, NULL, 0, '2020-11-05 22:53:42', '2020-11-05 22:53:42'),
(111, 110, '4798', NULL, NULL, 0, '2020-11-05 22:55:19', '2020-11-05 22:55:19'),
(112, 111, '4799', NULL, NULL, 0, '2020-11-05 22:57:26', '2020-11-05 22:57:26'),
(113, 112, '4800', NULL, NULL, 0, '2020-11-05 23:02:49', '2020-11-05 23:02:49'),
(114, 113, '4801', NULL, NULL, 0, '2020-11-05 23:03:59', '2020-11-05 23:03:59'),
(115, 114, '4802', NULL, NULL, 0, '2020-11-05 23:05:32', '2020-11-05 23:05:32'),
(116, 115, '5033', NULL, NULL, 0, '2020-11-05 23:06:40', '2020-11-05 23:06:40'),
(117, 116, '5189', NULL, NULL, 0, '2020-11-05 23:08:22', '2020-11-05 23:08:22'),
(118, 117, '5190', NULL, NULL, 0, '2020-11-05 23:09:42', '2020-11-05 23:09:42'),
(119, 118, '3487', NULL, NULL, 0, '2020-11-05 23:14:15', '2020-11-05 23:14:15'),
(120, 119, '3488', NULL, NULL, 0, '2020-11-05 23:15:42', '2020-11-05 23:15:42'),
(121, 120, '3489', NULL, NULL, 0, '2020-11-05 23:16:29', '2020-11-05 23:16:29'),
(122, 121, '3490', NULL, NULL, 0, '2020-11-05 23:17:25', '2020-11-05 23:17:25'),
(123, 122, '3491', NULL, NULL, 0, '2020-11-05 23:18:21', '2020-11-05 23:18:21'),
(124, 123, '3492', NULL, NULL, 0, '2020-11-05 23:19:32', '2020-11-05 23:19:32'),
(125, 124, '3493', NULL, NULL, 0, '2020-11-05 23:22:54', '2020-11-05 23:22:54'),
(126, 125, '3494', NULL, NULL, 0, '2020-11-05 23:26:20', '2020-11-05 23:26:20'),
(127, 126, '3495', NULL, NULL, 0, '2020-11-05 23:27:27', '2020-11-05 23:27:27'),
(128, 127, '3954', NULL, NULL, 0, '2020-11-05 23:41:47', '2020-11-05 23:41:47'),
(129, 128, '4346', NULL, NULL, 0, '2020-11-05 23:43:03', '2020-11-05 23:43:03'),
(130, 129, '4459', NULL, NULL, 0, '2020-11-05 23:44:00', '2020-11-05 23:44:00'),
(131, 130, '3576', NULL, NULL, 0, '2020-11-06 22:20:08', '2020-11-06 22:20:08'),
(132, 131, '3219', NULL, NULL, 0, '2020-11-06 22:21:29', '2020-11-06 22:21:29'),
(133, 132, '3241', NULL, NULL, 0, '2020-11-06 22:28:01', '2020-11-06 22:28:01'),
(134, 133, '3242', NULL, NULL, 0, '2020-11-06 22:30:05', '2020-11-06 22:30:05'),
(135, 134, '3579', NULL, NULL, 0, '2020-11-06 22:32:09', '2020-11-06 22:32:09'),
(136, 135, '4239', NULL, NULL, 0, '2020-11-06 22:33:12', '2020-11-06 22:33:12'),
(137, 136, '5034', NULL, NULL, 0, '2020-11-06 22:37:38', '2020-11-06 22:37:38'),
(138, 137, '3853', NULL, NULL, 0, '2020-11-06 22:48:32', '2020-11-06 22:48:32'),
(139, 138, '4460', NULL, NULL, 0, '2020-11-06 22:51:43', '2020-11-06 22:51:43'),
(140, 139, '3960', NULL, NULL, 0, '2020-11-06 22:53:04', '2020-11-06 22:53:04'),
(141, 140, '3961', NULL, NULL, 0, '2020-11-06 22:54:21', '2020-11-06 22:54:21'),
(142, 141, '3962', NULL, NULL, 0, '2020-11-06 22:55:15', '2020-11-06 22:55:15'),
(143, 142, '3207', NULL, NULL, 0, '2020-11-06 23:03:59', '2020-11-06 23:03:59'),
(144, 143, '3208', NULL, NULL, 0, '2020-11-06 23:05:20', '2020-11-06 23:05:20'),
(145, 144, '3235', NULL, NULL, 0, '2020-11-06 23:21:49', '2020-11-06 23:21:49'),
(146, 145, '3238', NULL, NULL, 0, '2020-11-06 23:23:56', '2020-11-06 23:23:56'),
(147, 146, '3285', NULL, NULL, 0, '2020-11-06 23:27:03', '2020-11-06 23:27:03'),
(148, 147, '3828', NULL, NULL, 0, '2020-11-06 23:28:19', '2020-11-06 23:28:19'),
(149, 148, '5233', NULL, NULL, 0, '2020-11-06 23:29:46', '2020-11-06 23:29:46'),
(150, 149, '5234', NULL, NULL, 0, '2020-11-06 23:31:10', '2020-11-06 23:31:10'),
(151, 150, '4495', NULL, NULL, 0, '2020-11-06 23:34:15', '2020-11-06 23:34:15'),
(152, 151, '3201', NULL, NULL, 0, '2020-11-06 23:37:55', '2020-11-06 23:37:55'),
(153, 152, '3202', NULL, NULL, 0, '2020-11-06 23:39:29', '2020-11-06 23:39:29'),
(154, 153, '3852', NULL, NULL, 0, '2020-11-06 23:41:46', '2020-11-06 23:41:46'),
(155, 154, '5223', NULL, NULL, 0, '2020-11-06 23:45:36', '2020-11-06 23:45:36'),
(156, 155, '5224', NULL, NULL, 0, '2020-11-06 23:46:54', '2020-11-06 23:46:54'),
(157, 156, '3304', NULL, NULL, 0, '2020-11-06 23:59:59', '2020-11-06 23:59:59'),
(158, 157, '3029', NULL, NULL, 0, '2020-11-07 00:06:14', '2020-11-07 00:06:14'),
(159, 158, '3179', NULL, NULL, 0, '2020-11-07 00:17:49', '2020-11-07 00:17:49'),
(160, 159, '3614', NULL, NULL, 0, '2020-11-07 00:30:04', '2020-11-07 00:30:04'),
(161, 160, '4470', NULL, NULL, 0, '2020-11-07 00:33:45', '2020-11-07 00:33:45'),
(162, 161, '5025', NULL, NULL, 0, '2020-11-07 00:35:03', '2020-11-07 00:35:03'),
(163, 162, '5026', NULL, NULL, 0, '2020-11-07 00:36:24', '2020-11-07 00:36:24'),
(164, 163, '5257', NULL, NULL, 0, '2020-11-07 00:42:00', '2020-11-07 00:42:00'),
(165, 164, '5258', NULL, NULL, 0, '2020-11-07 00:43:32', '2020-11-07 00:43:32'),
(166, 165, '3972', NULL, NULL, 0, '2020-11-07 21:56:37', '2020-11-07 21:56:37'),
(167, 166, '4456', NULL, NULL, 0, '2020-11-07 21:57:48', '2020-11-07 21:57:48'),
(168, 167, '5135', NULL, NULL, 0, '2020-11-07 21:59:02', '2020-11-07 21:59:02'),
(169, 168, '5136', NULL, NULL, 0, '2020-11-07 22:00:02', '2020-11-07 22:00:02'),
(170, 169, '3158', NULL, NULL, 0, '2020-11-07 22:25:14', '2020-11-07 22:25:14'),
(171, 170, '3159', NULL, NULL, 0, '2020-11-07 22:26:35', '2020-11-07 22:26:35'),
(172, 171, '3160', NULL, NULL, 0, '2020-11-07 22:33:07', '2020-11-07 22:33:07'),
(173, 172, '3967', NULL, NULL, 0, '2020-11-07 22:40:44', '2020-11-07 22:40:44'),
(174, 173, '3968', NULL, NULL, 0, '2020-11-07 22:42:39', '2020-11-07 22:42:39'),
(175, 174, '3967', NULL, NULL, 0, '2020-11-07 22:46:10', '2020-11-07 22:46:10'),
(176, 175, '5187', NULL, NULL, 0, '2020-11-07 22:53:13', '2020-11-07 22:53:13'),
(177, 176, '5188', NULL, NULL, 0, '2020-11-07 22:54:16', '2020-11-07 22:54:16'),
(178, 177, '4454', NULL, NULL, 0, '2020-11-07 23:10:14', '2020-11-07 23:10:14'),
(179, 178, '5241', NULL, NULL, 0, '2020-11-07 23:13:46', '2020-11-07 23:13:46'),
(180, 179, '5242', NULL, NULL, 0, '2020-11-07 23:15:31', '2020-11-07 23:15:31'),
(181, 180, '3147', NULL, NULL, 0, '2020-11-07 23:16:40', '2020-11-07 23:16:40'),
(182, 181, '3532', NULL, NULL, 0, '2020-11-07 23:26:14', '2020-11-07 23:26:14'),
(183, 182, '3533', NULL, NULL, 0, '2020-11-07 23:27:28', '2020-11-07 23:27:28'),
(184, 183, '3534', NULL, NULL, 0, '2020-11-07 23:28:57', '2020-11-07 23:28:57'),
(185, 184, '3535', NULL, NULL, 0, '2020-11-07 23:29:49', '2020-11-07 23:29:49'),
(186, 185, '3536', NULL, NULL, 0, '2020-11-07 23:30:39', '2020-11-07 23:30:39'),
(187, 186, '4085', NULL, NULL, 0, '2020-11-07 23:33:24', '2020-11-07 23:33:24'),
(188, 187, '4086', NULL, NULL, 0, '2020-11-07 23:35:17', '2020-11-07 23:35:17'),
(189, 188, '4087', NULL, NULL, 0, '2020-11-07 23:36:09', '2020-11-07 23:36:09'),
(190, 189, '4088', NULL, NULL, 0, '2020-11-07 23:36:36', '2020-11-07 23:36:36'),
(191, 190, '4088', NULL, NULL, 0, '2020-11-07 23:36:54', '2020-11-07 23:36:54'),
(192, 191, '4089', NULL, NULL, 0, '2020-11-07 23:37:11', '2020-11-07 23:37:11'),
(193, 192, '4977', NULL, NULL, 0, '2020-11-07 23:39:53', '2020-11-07 23:39:53'),
(194, 193, '3761', NULL, NULL, 0, '2020-11-07 23:46:02', '2020-11-07 23:46:02'),
(195, 194, '4474', NULL, NULL, 0, '2020-11-08 00:00:27', '2020-11-08 00:00:27'),
(196, 195, '3286', NULL, NULL, 0, '2020-11-08 23:42:59', '2020-11-08 23:42:59'),
(197, 196, '4925', NULL, NULL, 0, '2020-11-08 23:45:59', '2020-11-08 23:45:59'),
(198, 197, '4926', NULL, NULL, 0, '2020-11-08 23:46:54', '2020-11-08 23:46:54'),
(199, 198, '5123', NULL, NULL, 0, '2020-11-08 23:47:22', '2020-11-08 23:47:22'),
(200, 199, '5124', NULL, NULL, 0, '2020-11-08 23:48:31', '2020-11-08 23:48:31'),
(201, 200, '5125', NULL, NULL, 0, '2020-11-08 23:48:53', '2020-11-08 23:48:53'),
(202, 201, '5186', NULL, NULL, 0, '2020-11-08 23:50:05', '2020-11-08 23:50:05'),
(203, 202, '3286', NULL, NULL, 0, '2020-11-08 23:54:34', '2020-11-08 23:54:34'),
(204, 203, '4443', NULL, NULL, 0, '2020-11-08 23:57:44', '2020-11-08 23:57:44'),
(205, 204, '3515', NULL, NULL, 0, '2020-11-08 23:59:49', '2020-11-08 23:59:49'),
(206, 205, '3516', NULL, NULL, 0, '2020-11-09 00:00:16', '2020-11-09 00:00:16'),
(207, 206, '3517', NULL, NULL, 0, '2020-11-09 00:00:48', '2020-11-09 00:00:48'),
(208, 207, '3518', NULL, NULL, 0, '2020-11-09 00:01:16', '2020-11-09 00:01:16'),
(209, 208, '3519', NULL, NULL, 0, '2020-11-09 00:01:36', '2020-11-09 00:01:36'),
(210, 209, '4496', NULL, NULL, 0, '2020-11-09 00:20:00', '2020-11-09 00:20:00'),
(211, 210, '4483', NULL, NULL, 0, '2020-11-09 09:26:19', '2020-11-09 09:26:19'),
(212, 211, '4452', NULL, NULL, 0, '2020-11-09 09:31:48', '2020-11-09 09:31:48'),
(213, 212, '3312', NULL, NULL, 0, '2020-11-09 09:35:51', '2020-11-09 09:35:51'),
(214, 213, '3312', NULL, NULL, 0, '2020-11-09 09:40:08', '2020-11-09 09:40:08'),
(215, 214, '3313', NULL, NULL, 0, '2020-11-09 09:41:05', '2020-11-09 09:41:05'),
(216, 215, '4439', NULL, NULL, 0, '2020-11-09 20:29:24', '2020-11-09 20:29:24'),
(217, 216, '3203', NULL, NULL, 0, '2020-11-09 20:32:36', '2020-11-09 20:32:36'),
(218, 217, '3216', NULL, NULL, 0, '2020-11-09 20:34:04', '2020-11-09 20:34:04'),
(219, 218, '3804', NULL, NULL, 0, '2020-11-09 20:34:47', '2020-11-09 20:34:47'),
(220, 219, '3258', NULL, NULL, 0, '2020-11-09 22:24:16', '2020-11-09 22:24:16'),
(221, 220, '3257', NULL, NULL, 0, '2020-11-09 22:25:23', '2020-11-09 22:25:23'),
(222, 221, '3165', NULL, NULL, 0, '2020-11-09 22:29:50', '2020-11-09 22:29:50'),
(223, 222, '5166', NULL, NULL, 0, '2020-11-09 22:30:29', '2020-11-09 22:30:29'),
(224, 223, '5165', NULL, NULL, 0, '2020-11-09 22:34:24', '2020-11-09 22:34:24'),
(225, 224, '3292', NULL, NULL, 0, '2020-11-09 22:39:12', '2020-11-09 22:39:12'),
(226, 225, '3293', NULL, NULL, 0, '2020-11-09 22:39:33', '2020-11-09 22:39:33'),
(227, 226, '3767', NULL, NULL, 0, '2020-11-09 22:40:29', '2020-11-09 22:40:29'),
(228, 227, '3768', NULL, NULL, 0, '2020-11-09 22:41:02', '2020-11-09 22:41:02'),
(229, 228, '3290', NULL, NULL, 0, '2020-11-09 22:46:26', '2020-11-09 22:46:26'),
(230, 229, '3291', NULL, NULL, 0, '2020-11-09 22:47:43', '2020-11-09 22:47:43'),
(231, 230, '3802', NULL, NULL, 0, '2020-11-09 22:48:23', '2020-11-09 22:48:23'),
(232, 231, '4838', NULL, NULL, 0, '2020-11-09 22:56:31', '2020-11-09 22:56:31'),
(233, 232, '4839', NULL, NULL, 0, '2020-11-09 22:56:55', '2020-11-09 22:56:55'),
(234, 233, '4840', NULL, NULL, 0, '2020-11-09 22:57:17', '2020-11-09 22:57:17'),
(235, 234, '4841', NULL, NULL, 0, '2020-11-09 22:57:42', '2020-11-09 22:57:42'),
(236, 235, '4842', NULL, NULL, 0, '2020-11-09 22:58:09', '2020-11-09 22:58:09'),
(237, 236, '4476', NULL, NULL, 0, '2020-11-09 23:02:03', '2020-11-09 23:02:03'),
(238, 237, '3779', NULL, NULL, 0, '2020-11-09 23:05:51', '2020-11-09 23:05:51'),
(239, 238, '3780', NULL, NULL, 0, '2020-11-09 23:06:22', '2020-11-09 23:06:22'),
(240, 239, '3781', NULL, NULL, 0, '2020-11-09 23:06:35', '2020-11-09 23:06:35'),
(241, 240, '3782', NULL, NULL, 0, '2020-11-09 23:06:55', '2020-11-09 23:06:55'),
(242, 241, '3244', NULL, NULL, 0, '2020-11-09 23:17:13', '2020-11-09 23:17:13'),
(243, 242, '3245', NULL, NULL, 0, '2020-11-09 23:17:38', '2020-11-09 23:17:38'),
(244, 243, '3783', NULL, NULL, 0, '2020-11-09 23:18:15', '2020-11-09 23:18:15'),
(245, 244, '3784', NULL, NULL, 0, '2020-11-09 23:18:40', '2020-11-09 23:18:40'),
(246, 245, '3785', NULL, NULL, 0, '2020-11-09 23:19:18', '2020-11-09 23:19:18'),
(247, 246, '3786', NULL, NULL, 0, '2020-11-09 23:19:41', '2020-11-09 23:19:41'),
(248, 247, '3788', NULL, NULL, 0, '2020-11-09 23:29:32', '2020-11-09 23:29:32'),
(249, 248, '3789', NULL, NULL, 0, '2020-11-09 23:29:56', '2020-11-09 23:29:56'),
(250, 249, '3790', NULL, NULL, 0, '2020-11-09 23:30:13', '2020-11-09 23:30:13'),
(251, 250, '3611', NULL, NULL, 0, '2020-11-09 23:34:07', '2020-11-09 23:34:07'),
(252, 251, '3259', NULL, NULL, 0, '2020-11-09 23:35:33', '2020-11-09 23:35:33'),
(253, 252, '3260', NULL, NULL, 0, '2020-11-09 23:36:01', '2020-11-09 23:36:01'),
(254, 253, '3803', NULL, NULL, 0, '2020-11-09 23:37:01', '2020-11-09 23:37:01'),
(255, 254, '3794', NULL, NULL, 0, '2020-11-09 23:43:34', '2020-11-09 23:43:34'),
(256, 255, '3795', NULL, NULL, 0, '2020-11-09 23:43:52', '2020-11-09 23:43:52'),
(257, 256, '4133', NULL, NULL, 0, '2020-11-09 23:47:49', '2020-11-09 23:47:49'),
(258, 257, '4134', NULL, NULL, 0, '2020-11-09 23:48:16', '2020-11-09 23:48:16'),
(259, 258, '4327', NULL, NULL, 0, '2020-11-09 23:49:19', '2020-11-09 23:49:19'),
(260, 259, '4472', NULL, NULL, 0, '2020-11-09 23:49:56', '2020-11-09 23:49:56'),
(261, 260, '3796', NULL, NULL, 0, '2020-11-09 23:59:46', '2020-11-09 23:59:46'),
(262, 261, '5070', NULL, NULL, 0, '2020-11-10 00:07:15', '2020-11-10 00:07:15'),
(263, 262, '3223', NULL, NULL, 0, '2020-11-10 00:15:18', '2020-11-10 00:15:18'),
(264, 263, '3224', NULL, NULL, 0, '2020-11-10 00:15:48', '2020-11-10 00:15:48'),
(265, 264, '3280', NULL, NULL, 0, '2020-11-10 00:19:53', '2020-11-10 00:19:53'),
(266, 265, '3222', NULL, NULL, 0, '2020-11-10 00:23:23', '2020-11-10 00:23:23'),
(267, 266, '3281', NULL, NULL, 0, '2020-11-10 00:24:37', '2020-11-10 00:24:37'),
(268, 267, '3282', NULL, NULL, 0, '2020-11-10 00:25:04', '2020-11-10 00:25:04'),
(269, 268, '3225', NULL, NULL, 0, '2020-11-10 00:31:15', '2020-11-10 00:31:15'),
(270, 269, '3226', NULL, NULL, 0, '2020-11-10 00:31:35', '2020-11-10 00:31:35'),
(271, 270, '3181', NULL, NULL, 0, '2020-11-10 22:18:03', '2020-11-10 22:18:03'),
(272, 271, '4523', NULL, NULL, 0, '2020-11-10 22:22:05', '2020-11-10 22:22:05'),
(273, 272, '3798', NULL, NULL, 0, '2020-11-10 22:26:22', '2020-11-10 22:26:22'),
(274, 273, '3799', NULL, NULL, 0, '2020-11-10 22:27:28', '2020-11-10 22:27:28'),
(275, 274, '3236', NULL, NULL, 0, '2020-11-10 22:32:54', '2020-11-10 22:32:54'),
(276, 275, '3237', NULL, NULL, 0, '2020-11-10 22:33:18', '2020-11-10 22:33:18'),
(277, 276, NULL, NULL, NULL, 0, '2020-11-11 01:20:35', '2020-11-11 01:20:35'),
(278, 277, NULL, NULL, NULL, 0, '2020-11-11 01:20:53', '2020-11-11 01:20:53'),
(279, 278, '23412', '6778', '123', 0, '2020-11-11 01:37:27', '2020-11-11 01:37:27'),
(280, 278, '2345', '5432', '2345', 0, '2020-11-11 01:37:27', '2020-11-11 01:37:27'),
(281, 279, '4186', NULL, NULL, 0, '2020-11-11 22:48:47', '2020-11-11 22:48:47'),
(282, 280, '4187', NULL, NULL, 0, '2020-11-11 22:49:28', '2020-11-11 22:49:28'),
(283, 281, '3184', NULL, NULL, 0, '2020-11-11 22:54:43', '2020-11-11 22:54:43'),
(284, 282, '3974', NULL, NULL, 0, '2020-11-11 23:03:03', '2020-11-11 23:03:03'),
(285, 283, '3269', NULL, NULL, 0, '2020-11-11 23:12:41', '2020-11-11 23:12:41'),
(286, 284, '3270', NULL, NULL, 0, '2020-11-11 23:13:03', '2020-11-11 23:13:03'),
(287, 285, '3817', NULL, NULL, 0, '2020-11-11 23:17:31', '2020-11-11 23:17:31'),
(288, 286, '1234', '2345', '2345', 0, '2020-11-11 23:19:46', '2020-11-11 23:19:46'),
(289, 286, '3400', '2345', '3000', 0, '2020-11-11 23:19:46', '2020-11-11 23:19:46'),
(290, 287, '3189', NULL, NULL, 0, '2020-11-11 23:20:19', '2020-11-11 23:20:19'),
(291, 288, '3185', NULL, NULL, 0, '2020-11-11 23:20:36', '2020-11-11 23:20:36'),
(292, 289, '3815', NULL, NULL, 0, '2020-11-11 23:22:14', '2020-11-11 23:22:14'),
(293, 290, '3816', NULL, NULL, 0, '2020-11-11 23:22:45', '2020-11-11 23:22:45'),
(294, 291, '3805', NULL, NULL, 0, '2020-11-11 23:26:50', '2020-11-11 23:26:50'),
(295, 292, '3806', NULL, NULL, 0, '2020-11-11 23:27:12', '2020-11-11 23:27:12'),
(296, 293, '3807', NULL, NULL, 0, '2020-11-11 23:27:31', '2020-11-11 23:27:31'),
(297, 294, '3808', NULL, NULL, 0, '2020-11-11 23:27:49', '2020-11-11 23:27:49'),
(298, 295, '3809', NULL, NULL, 0, '2020-11-11 23:28:06', '2020-11-11 23:28:06'),
(299, 296, '3261', NULL, NULL, 0, '2020-11-11 23:37:30', '2020-11-11 23:37:30'),
(300, 297, '3800', NULL, NULL, 0, '2020-11-11 23:37:52', '2020-11-11 23:37:52'),
(301, 298, '3262', NULL, NULL, 0, '2020-11-11 23:42:00', '2020-11-11 23:42:00'),
(302, 299, '3797', NULL, NULL, 0, '2020-11-11 23:42:36', '2020-11-11 23:42:36'),
(303, 300, '4437', NULL, NULL, 0, '2020-11-11 23:47:21', '2020-11-11 23:47:21'),
(304, 301, '4473', NULL, NULL, 0, '2020-11-11 23:52:05', '2020-11-11 23:52:05'),
(305, 302, '5177', NULL, NULL, 0, '2020-11-11 23:56:10', '2020-11-11 23:56:10'),
(306, 303, '5178', NULL, NULL, 0, '2020-11-11 23:56:35', '2020-11-11 23:56:35'),
(307, 304, '3263', NULL, NULL, 0, '2020-11-12 00:03:13', '2020-11-12 00:03:13'),
(308, 305, '3264', NULL, NULL, 0, '2020-11-12 00:03:31', '2020-11-12 00:03:31'),
(309, 306, '3855', NULL, NULL, 0, '2020-11-12 00:04:26', '2020-11-12 00:04:26'),
(310, 307, '3871', NULL, NULL, 0, '2020-11-12 00:10:31', '2020-11-12 00:10:31'),
(311, 308, '3229', NULL, NULL, 0, '2020-11-12 00:12:24', '2020-11-12 00:12:24'),
(312, 309, '3230', NULL, NULL, 0, '2020-11-12 00:13:11', '2020-11-12 00:13:11'),
(313, 310, '3248', NULL, NULL, 0, '2020-11-12 00:17:20', '2020-11-12 00:17:20'),
(314, 311, '3249', NULL, NULL, 0, '2020-11-12 00:17:38', '2020-11-12 00:17:38'),
(315, 312, '3209', NULL, NULL, 0, '2020-11-12 00:26:05', '2020-11-12 00:26:05'),
(316, 313, '3252', NULL, NULL, 0, '2020-11-12 00:36:12', '2020-11-12 00:36:12'),
(317, 314, '3253', NULL, NULL, 0, '2020-11-12 00:36:26', '2020-11-12 00:36:26'),
(318, 315, '4526', NULL, NULL, 0, '2020-11-12 00:37:14', '2020-11-12 00:37:14'),
(319, 316, '3308', NULL, NULL, 0, '2020-11-12 00:40:47', '2020-11-12 00:40:47'),
(320, 317, '3309', NULL, NULL, 0, '2020-11-12 00:41:11', '2020-11-12 00:41:11'),
(321, 318, '4480', NULL, NULL, 0, '2020-11-12 00:44:13', '2020-11-12 00:44:13'),
(322, 319, '5169', NULL, NULL, 0, '2020-11-12 00:51:00', '2020-11-12 00:51:00'),
(323, 320, '5170', NULL, NULL, 0, '2020-11-12 00:51:17', '2020-11-12 00:51:17'),
(324, 321, '3200', NULL, NULL, 0, '2020-11-14 09:36:38', '2020-11-14 09:36:38'),
(325, 322, '3836', NULL, NULL, 0, '2020-11-14 09:37:59', '2020-11-14 09:37:59'),
(326, 323, '3837', NULL, NULL, 0, '2020-11-14 09:38:39', '2020-11-14 09:38:39'),
(327, 324, '3981', NULL, NULL, 0, '2020-11-14 09:39:43', '2020-11-14 09:39:43'),
(328, 325, '3376', NULL, NULL, 0, '2020-11-14 09:47:50', '2020-11-14 09:47:50'),
(329, 326, '3294', NULL, NULL, 0, '2020-11-14 09:53:08', '2020-11-14 09:53:08'),
(330, 327, '3220', NULL, NULL, 0, '2020-11-14 09:54:40', '2020-11-14 09:54:40'),
(331, 328, '3221', NULL, NULL, 0, '2020-11-14 09:55:12', '2020-11-14 09:55:12'),
(332, 329, '3145', NULL, NULL, 0, '2020-11-14 22:29:04', '2020-11-14 22:29:04'),
(333, 330, '3146', NULL, NULL, 0, '2020-11-14 22:29:30', '2020-11-14 22:29:30'),
(334, 331, '3400', NULL, NULL, 0, '2020-11-14 22:30:08', '2020-11-14 22:30:08'),
(335, 332, '3801', NULL, NULL, 0, '2020-11-14 22:30:38', '2020-11-14 22:30:38'),
(336, 333, '5267', NULL, NULL, 0, '2020-11-14 22:31:30', '2020-11-14 22:31:30'),
(337, 334, '5268', NULL, NULL, 0, '2020-11-14 22:31:52', '2020-11-14 22:31:52'),
(338, 335, '4712', NULL, NULL, 0, '2020-11-14 22:32:56', '2020-11-14 22:32:56'),
(339, 336, '4713', NULL, NULL, 0, '2020-11-14 22:33:18', '2020-11-14 22:33:18'),
(340, 337, '4714', NULL, NULL, 0, '2020-11-14 22:33:38', '2020-11-14 22:33:38'),
(341, 338, '4715', NULL, NULL, 0, '2020-11-14 22:33:57', '2020-11-14 22:33:57'),
(342, 339, '4716', NULL, NULL, 0, '2020-11-14 22:34:15', '2020-11-14 22:34:15'),
(343, 340, '4717', NULL, NULL, 0, '2020-11-14 22:34:41', '2020-11-14 22:34:41'),
(344, 341, '4718', NULL, NULL, 0, '2020-11-14 22:35:06', '2020-11-14 22:35:06'),
(345, 342, '4719', NULL, NULL, 0, '2020-11-14 22:35:27', '2020-11-14 22:35:27'),
(346, 343, '4720', NULL, NULL, 0, '2020-11-14 22:35:46', '2020-11-14 22:35:46'),
(347, 344, '5098', NULL, NULL, 0, '2020-11-14 22:37:18', '2020-11-14 22:37:18'),
(348, 345, '3175', NULL, NULL, 0, '2020-11-14 22:52:05', '2020-11-14 22:52:05'),
(349, 346, '3915', NULL, NULL, 0, '2020-11-14 23:03:17', '2020-11-14 23:03:17'),
(350, 347, '3916', NULL, NULL, 0, '2020-11-14 23:03:58', '2020-11-14 23:03:58'),
(351, 348, '3917', NULL, NULL, 0, '2020-11-14 23:04:11', '2020-11-14 23:04:11'),
(352, 349, '3918', NULL, NULL, 0, '2020-11-14 23:04:23', '2020-11-14 23:04:23'),
(353, 350, '3919', NULL, NULL, 0, '2020-11-14 23:04:41', '2020-11-14 23:04:41'),
(354, 351, '3713', NULL, NULL, 0, '2020-11-14 23:11:26', '2020-11-14 23:11:26'),
(355, 352, '3714', NULL, NULL, 0, '2020-11-14 23:11:43', '2020-11-14 23:11:43'),
(356, 353, '5183', NULL, NULL, 0, '2020-11-14 23:12:39', '2020-11-14 23:12:39'),
(357, 354, '5184', NULL, NULL, 0, '2020-11-14 23:12:58', '2020-11-14 23:12:58'),
(358, 355, '3722', NULL, NULL, 0, '2020-11-14 23:40:12', '2020-11-14 23:40:12'),
(359, 356, '3723', NULL, NULL, 0, '2020-11-14 23:40:33', '2020-11-14 23:40:33'),
(360, 358, '4501', NULL, NULL, 0, '2020-11-14 23:42:13', '2020-11-14 23:42:13'),
(361, 359, '3166', NULL, NULL, 0, '2020-11-23 23:05:10', '2020-11-23 23:05:10'),
(362, 360, '3167', NULL, NULL, 0, '2020-11-23 23:05:32', '2020-11-23 23:05:32'),
(363, 361, '3727', NULL, NULL, 0, '2020-11-23 23:06:26', '2020-11-23 23:06:26'),
(364, 362, '3728', NULL, NULL, 0, '2020-11-23 23:06:46', '2020-11-23 23:06:46'),
(365, 363, '3729', NULL, NULL, 0, '2020-11-23 23:07:09', '2020-11-23 23:07:09'),
(366, 364, '3730', NULL, NULL, 0, '2020-11-23 23:07:36', '2020-11-23 23:07:36'),
(367, 365, '3731', NULL, NULL, 0, '2020-11-23 23:08:09', '2020-11-23 23:08:09'),
(368, 366, '3929', NULL, NULL, 0, '2020-11-23 23:18:18', '2020-11-23 23:18:18'),
(369, 367, '3925', NULL, NULL, 0, '2020-11-23 23:19:33', '2020-11-23 23:19:33'),
(370, 368, '3926', NULL, NULL, 0, '2020-11-23 23:19:54', '2020-11-23 23:19:54'),
(371, 369, '3927', NULL, NULL, 0, '2020-11-23 23:20:19', '2020-11-23 23:20:19'),
(372, 370, '3928', NULL, NULL, 0, '2020-11-23 23:20:45', '2020-11-23 23:20:45'),
(373, 371, '4500', NULL, NULL, 0, '2020-11-23 23:49:58', '2020-11-23 23:49:58'),
(374, 372, '5121', NULL, NULL, 0, '2020-11-23 23:53:45', '2020-11-23 23:53:45'),
(375, 373, '5122', NULL, NULL, 0, '2020-11-23 23:54:07', '2020-11-23 23:54:07'),
(376, 374, '3028', NULL, NULL, 0, '2020-11-23 23:55:47', '2020-11-23 23:55:47'),
(377, 375, '3289', NULL, NULL, 0, '2020-11-23 23:56:23', '2020-11-23 23:56:23'),
(378, 376, '3950', NULL, NULL, 0, '2020-11-24 00:08:57', '2020-11-24 00:08:57'),
(379, 377, '4280', NULL, NULL, 0, '2020-11-24 00:09:51', '2020-11-24 00:09:51'),
(380, 378, '4281', NULL, NULL, 0, '2020-11-24 00:10:07', '2020-11-24 00:10:07'),
(381, 379, '4450', NULL, NULL, 0, '2020-11-24 00:12:43', '2020-11-24 00:12:43'),
(382, 380, '4344', NULL, NULL, 0, '2020-11-24 00:59:25', '2020-11-24 00:59:25'),
(383, 381, '5137', NULL, NULL, 0, '2020-11-24 01:00:11', '2020-11-24 01:00:11'),
(384, 382, '5138', NULL, NULL, 0, '2020-11-24 01:00:25', '2020-11-24 01:00:25'),
(385, 383, '3953', NULL, NULL, 0, '2020-11-24 01:01:47', '2020-11-24 01:01:47'),
(386, 384, '4034', NULL, NULL, 0, '2020-11-24 01:02:39', '2020-11-24 01:02:39'),
(387, 385, '4035', NULL, NULL, 0, '2020-11-24 01:02:59', '2020-11-24 01:02:59'),
(388, 386, '4036', NULL, NULL, 0, '2020-11-24 01:03:22', '2020-11-24 01:03:22'),
(389, 387, '4467', NULL, NULL, 0, '2020-11-24 23:00:46', '2020-11-24 23:00:46'),
(390, 388, '3239', NULL, NULL, 0, '2020-11-24 23:04:07', '2020-11-24 23:04:07'),
(391, 389, '3240', NULL, NULL, 0, '2020-11-24 23:05:23', '2020-11-24 23:05:23'),
(392, 390, '3615', NULL, NULL, 0, '2020-11-24 23:06:16', '2020-11-24 23:06:16'),
(393, 391, '3823', NULL, NULL, 0, '2020-11-24 23:07:07', '2020-11-24 23:07:07'),
(394, 392, '3824', NULL, NULL, 0, '2020-11-24 23:07:34', '2020-11-24 23:07:34'),
(395, 393, '3825', NULL, NULL, 0, '2020-11-24 23:08:04', '2020-11-24 23:08:04'),
(396, 394, '3826', NULL, NULL, 0, '2020-11-24 23:08:24', '2020-11-24 23:08:24'),
(397, 395, '3827', NULL, NULL, 0, '2020-11-24 23:08:45', '2020-11-24 23:08:45'),
(398, 396, '3212', NULL, NULL, 0, '2020-11-24 23:28:14', '2020-11-24 23:28:14'),
(399, 397, '3213', NULL, NULL, 0, '2020-11-24 23:28:45', '2020-11-24 23:28:45'),
(400, 398, '4487', NULL, NULL, 0, '2020-11-24 23:29:39', '2020-11-24 23:29:39'),
(401, 399, '3299', NULL, NULL, 0, '2020-11-24 23:33:30', '2020-11-24 23:33:30'),
(402, 400, '3300', NULL, NULL, 0, '2020-11-24 23:34:22', '2020-11-24 23:34:22'),
(403, 401, '3022', NULL, NULL, 0, '2020-11-24 23:37:19', '2020-11-24 23:37:19'),
(404, 402, '3023', NULL, NULL, 0, '2020-11-24 23:37:38', '2020-11-24 23:37:38'),
(405, 403, '3024', NULL, NULL, 0, '2020-11-24 23:37:54', '2020-11-24 23:37:54'),
(406, 404, '3025', NULL, NULL, 0, '2020-11-24 23:38:12', '2020-11-24 23:38:12'),
(407, 405, '3026', NULL, NULL, 0, '2020-11-24 23:38:31', '2020-11-24 23:38:31'),
(408, 406, '3027', NULL, NULL, 0, '2020-11-24 23:38:49', '2020-11-24 23:38:49'),
(409, 407, '5201', NULL, NULL, 0, '2020-11-24 23:44:58', '2020-11-24 23:44:58'),
(410, 408, '5202', NULL, NULL, 0, '2020-11-24 23:45:16', '2020-11-24 23:45:16'),
(411, 409, '4446', NULL, NULL, 0, '2020-11-24 23:53:34', '2020-11-24 23:53:34'),
(412, 410, '3178', NULL, NULL, 0, '2020-11-24 23:55:40', '2020-11-24 23:55:40'),
(413, 411, '4491', NULL, NULL, 0, '2020-11-24 23:59:30', '2020-11-24 23:59:30'),
(414, 412, '3246', NULL, NULL, 0, '2020-11-25 00:11:13', '2020-11-25 00:11:13'),
(415, 413, '3247', NULL, NULL, 0, '2020-11-25 00:11:33', '2020-11-25 00:11:33'),
(416, 414, '3774', NULL, NULL, 0, '2020-11-25 00:12:27', '2020-11-25 00:12:27'),
(417, 415, '3775', NULL, NULL, 0, '2020-11-25 00:12:54', '2020-11-25 00:12:54'),
(418, 416, '3776', NULL, NULL, 0, '2020-11-25 00:13:14', '2020-11-25 00:13:14'),
(419, 417, '3777', NULL, NULL, 0, '2020-11-25 00:13:31', '2020-11-25 00:13:31'),
(420, 418, '3778', NULL, NULL, 0, '2020-11-25 00:13:52', '2020-11-25 00:13:52'),
(421, 419, '3660', NULL, NULL, 0, '2020-11-25 22:52:05', '2020-11-25 22:52:05'),
(422, 420, '4994', NULL, NULL, 0, '2020-11-25 23:11:38', '2020-11-25 23:11:38'),
(423, 421, '3578', NULL, NULL, 0, '2020-11-25 23:16:22', '2020-11-25 23:16:22'),
(424, 422, '3161', NULL, NULL, 0, '2020-11-25 23:17:10', '2020-11-25 23:17:10'),
(425, 423, '3162', NULL, NULL, 0, '2020-11-25 23:17:40', '2020-11-25 23:17:40'),
(426, 424, '3685', NULL, NULL, 0, '2020-11-25 23:20:05', '2020-11-25 23:20:05'),
(427, 425, '3686', NULL, NULL, 0, '2020-11-25 23:20:26', '2020-11-25 23:20:26'),
(428, 426, '3156', NULL, NULL, 0, '2020-11-25 23:29:05', '2020-11-25 23:29:05'),
(429, 427, '3157', NULL, NULL, 0, '2020-11-25 23:29:22', '2020-11-25 23:29:22'),
(430, 428, '3380', NULL, NULL, 0, '2020-11-25 23:30:06', '2020-11-25 23:30:06'),
(431, 429, '3499', NULL, NULL, 0, '2020-11-26 09:38:25', '2020-11-26 09:38:25'),
(432, 430, '3496', NULL, NULL, 0, '2020-11-26 09:40:08', '2020-11-26 09:40:08'),
(433, 431, '3497', NULL, NULL, 0, '2020-11-26 09:40:34', '2020-11-26 09:40:34'),
(434, 432, '3498', NULL, NULL, 0, '2020-11-26 09:40:58', '2020-11-26 09:40:58'),
(435, 433, '5020', NULL, NULL, 0, '2020-11-26 09:42:19', '2020-11-26 09:42:19'),
(436, 434, '5143', NULL, NULL, 0, '2020-11-26 09:49:36', '2020-11-26 09:49:36'),
(437, 435, '5144', NULL, NULL, 0, '2020-11-26 09:49:54', '2020-11-26 09:49:54'),
(438, 436, '5149', NULL, NULL, 0, '2020-11-26 09:51:41', '2020-11-26 09:51:41'),
(439, 437, '5150', NULL, NULL, 0, '2020-11-26 09:51:59', '2020-11-26 09:51:59'),
(440, 438, '3379', NULL, NULL, 0, '2020-11-26 10:00:08', '2020-11-26 10:00:08'),
(441, 439, '3250', NULL, NULL, 0, '2020-11-26 10:01:06', '2020-11-26 10:01:06'),
(442, 440, '3251', NULL, NULL, 0, '2020-11-26 10:01:26', '2020-11-26 10:01:26'),
(443, 441, '4622', NULL, NULL, 0, '2020-11-26 10:10:24', '2020-11-26 10:10:24'),
(444, 442, '4623', NULL, NULL, 0, '2020-11-26 10:10:58', '2020-11-26 10:10:58'),
(445, 443, '4624', NULL, NULL, 0, '2020-11-26 10:11:11', '2020-11-26 10:11:11'),
(446, 444, '4625', NULL, NULL, 0, '2020-11-26 10:11:38', '2020-11-26 10:11:38'),
(447, 445, '4626', NULL, NULL, 0, '2020-11-26 10:11:52', '2020-11-26 10:11:52'),
(448, 446, '5019', NULL, NULL, 0, '2020-11-26 10:14:59', '2020-11-26 10:14:59'),
(449, 447, '5141', NULL, NULL, 0, '2020-11-26 10:16:17', '2020-11-26 10:16:17'),
(450, 448, '5142', NULL, NULL, 0, '2020-11-26 10:16:36', '2020-11-26 10:16:36'),
(451, 449, '5129', NULL, NULL, 0, '2020-11-26 10:18:38', '2020-11-26 10:18:38'),
(452, 450, '5130', NULL, NULL, 0, '2020-11-26 10:18:59', '2020-11-26 10:18:59'),
(453, 451, '3301', NULL, NULL, 0, '2020-11-26 21:54:56', '2020-11-26 21:54:56'),
(454, 452, '3792', NULL, NULL, 0, '2020-11-26 21:56:10', '2020-11-26 21:56:10'),
(455, 453, '3793', NULL, NULL, 0, '2020-11-26 21:56:33', '2020-11-26 21:56:33'),
(456, 454, '4438', NULL, NULL, 0, '2020-11-26 22:15:04', '2020-11-26 22:15:04'),
(457, 455, '5173', NULL, NULL, 0, '2020-11-26 22:15:58', '2020-11-26 22:15:58'),
(458, 456, '5174', NULL, NULL, 0, '2020-11-26 22:16:15', '2020-11-26 22:16:15'),
(459, 457, '3829', NULL, NULL, 0, '2020-11-26 22:23:51', '2020-11-26 22:23:51'),
(460, 458, '3830', NULL, NULL, 0, '2020-11-26 22:24:33', '2020-11-26 22:24:33'),
(461, 459, '3831', NULL, NULL, 0, '2020-11-26 22:24:56', '2020-11-26 22:24:56'),
(462, 460, '3832', NULL, NULL, 0, '2020-11-26 22:25:56', '2020-11-26 22:25:56'),
(463, 461, '3833', NULL, NULL, 0, '2020-11-26 22:26:15', '2020-11-26 22:26:15'),
(464, 462, '3032', NULL, NULL, 0, '2020-11-26 22:28:42', '2020-11-26 22:28:42'),
(465, 463, '3269', NULL, NULL, 0, '2020-11-26 22:36:24', '2020-11-26 22:36:24'),
(466, 464, '3270', NULL, NULL, 0, '2020-11-26 22:36:45', '2020-11-26 22:36:45'),
(467, 465, '4923', NULL, NULL, 0, '2020-11-26 22:37:31', '2020-11-26 22:37:31'),
(468, 466, '4924', NULL, NULL, 0, '2020-11-26 22:37:46', '2020-11-26 22:37:46'),
(469, 467, '3717', NULL, NULL, 0, '2020-11-26 22:40:03', '2020-11-26 22:40:03'),
(470, 468, '3718', NULL, NULL, 0, '2020-11-26 22:41:36', '2020-11-26 22:41:36'),
(471, 469, '4328', NULL, NULL, 0, '2020-11-26 22:53:18', '2020-11-26 22:53:18'),
(472, 470, '4547', NULL, NULL, 0, '2020-11-26 23:01:15', '2020-11-26 23:01:15'),
(473, 471, '4548', NULL, NULL, 0, '2020-11-26 23:01:33', '2020-11-26 23:01:33'),
(474, 472, '4549', NULL, NULL, 0, '2020-11-26 23:01:51', '2020-11-26 23:01:51'),
(475, 473, '4550', NULL, NULL, 0, '2020-11-26 23:02:14', '2020-11-26 23:02:14'),
(476, 474, '4551', NULL, NULL, 0, '2020-11-26 23:02:32', '2020-11-26 23:02:32'),
(477, 475, '4552', NULL, NULL, 0, '2020-11-26 23:02:50', '2020-11-26 23:02:50'),
(478, 476, '4553', NULL, NULL, 0, '2020-11-26 23:03:14', '2020-11-26 23:03:14'),
(479, 477, '4554', NULL, NULL, 0, '2020-11-26 23:03:32', '2020-11-26 23:03:32'),
(480, 478, '4555', NULL, NULL, 0, '2020-11-26 23:03:51', '2020-11-26 23:03:51'),
(481, 479, '4556', NULL, NULL, 0, '2020-11-26 23:04:10', '2020-11-26 23:04:10'),
(482, 480, '3214', NULL, NULL, 0, '2020-11-26 23:10:19', '2020-11-26 23:10:19'),
(483, 481, '3215', NULL, NULL, 0, '2020-11-26 23:11:00', '2020-11-26 23:11:00'),
(484, 482, '4992', NULL, NULL, 0, '2020-11-26 23:20:37', '2020-11-26 23:20:37'),
(485, 483, '3297', NULL, NULL, 0, '2020-11-26 23:27:41', '2020-11-26 23:27:41'),
(486, 484, '3920', NULL, NULL, 0, '2020-11-26 23:32:35', '2020-11-26 23:32:35'),
(487, 485, '3921', NULL, NULL, 0, '2020-11-26 23:32:46', '2020-11-26 23:32:46'),
(488, 486, '3922', NULL, NULL, 0, '2020-11-26 23:32:59', '2020-11-26 23:32:59'),
(489, 487, '3923', NULL, NULL, 0, '2020-11-26 23:33:15', '2020-11-26 23:33:15'),
(490, 488, '3924', NULL, NULL, 0, '2020-11-26 23:33:32', '2020-11-26 23:33:32'),
(491, 489, '3648', NULL, NULL, 0, '2020-11-26 23:41:18', '2020-11-26 23:41:18'),
(492, 490, '3649', NULL, NULL, 0, '2020-11-26 23:41:36', '2020-11-26 23:41:36'),
(493, 491, '3650', NULL, NULL, 0, '2020-11-26 23:41:56', '2020-11-26 23:41:56'),
(494, 492, '3651', NULL, NULL, 0, '2020-11-26 23:42:14', '2020-11-26 23:42:14'),
(495, 493, '3652', NULL, NULL, 0, '2020-11-26 23:42:27', '2020-11-26 23:42:27'),
(496, 494, '3653', NULL, NULL, 0, '2020-11-26 23:42:59', '2020-11-26 23:42:59'),
(497, 495, '4342', NULL, NULL, 0, '2020-11-26 23:43:45', '2020-11-26 23:43:45'),
(498, 496, '4499', NULL, NULL, 0, '2020-11-26 23:45:34', '2020-11-26 23:45:34'),
(499, 497, '4471', NULL, NULL, 0, '2020-11-26 23:47:22', '2020-11-26 23:47:22'),
(500, 498, '5091', NULL, NULL, 0, '2020-11-26 23:48:04', '2020-11-26 23:48:04'),
(501, 499, '5175', NULL, NULL, 0, '2020-11-26 23:48:40', '2020-11-26 23:48:40'),
(502, 500, '5176', NULL, NULL, 0, '2020-11-26 23:49:25', '2020-11-26 23:49:25'),
(503, 501, '3940', NULL, NULL, 0, '2020-11-26 23:57:07', '2020-11-26 23:57:07'),
(504, 502, '3941', NULL, NULL, 0, '2020-11-26 23:57:24', '2020-11-26 23:57:24'),
(505, 503, '3942', NULL, NULL, 0, '2020-11-26 23:57:44', '2020-11-26 23:57:44'),
(506, 504, '3943', NULL, NULL, 0, '2020-11-26 23:58:12', '2020-11-26 23:58:12'),
(507, 505, '3944', NULL, NULL, 0, '2020-11-26 23:58:31', '2020-11-26 23:58:31'),
(508, 506, '3227', NULL, NULL, 0, '2020-11-27 07:05:04', '2020-11-27 07:05:04'),
(509, 507, '3228', NULL, NULL, 0, '2020-11-27 07:05:35', '2020-11-27 07:05:35'),
(510, 508, '3838', NULL, NULL, 0, '2020-11-27 07:06:29', '2020-11-27 07:06:29'),
(511, 509, '3231', NULL, NULL, 0, '2020-11-27 07:10:25', '2020-11-27 07:10:25'),
(512, 510, '3232', NULL, NULL, 0, '2020-11-27 07:10:54', '2020-11-27 07:10:54'),
(513, 511, '3844', NULL, NULL, 0, '2020-11-27 07:11:34', '2020-11-27 07:11:34'),
(514, 512, '3845', NULL, NULL, 0, '2020-11-27 07:11:58', '2020-11-27 07:11:58'),
(515, 513, '3846', NULL, NULL, 0, '2020-11-27 07:12:13', '2020-11-27 07:12:13'),
(516, 514, '3233', NULL, NULL, 0, '2020-11-27 07:18:50', '2020-11-27 07:18:50'),
(517, 515, '3839', NULL, NULL, 0, '2020-11-27 07:20:31', '2020-11-27 07:20:31'),
(518, 516, '3840', NULL, NULL, 0, '2020-11-27 07:20:59', '2020-11-27 07:20:59'),
(519, 517, '3841', NULL, NULL, 0, '2020-11-27 07:21:14', '2020-11-27 07:21:14'),
(520, 518, '3842', NULL, NULL, 0, '2020-11-27 07:21:30', '2020-11-27 07:21:30'),
(521, 519, '3843', NULL, NULL, 0, '2020-11-27 07:21:48', '2020-11-27 07:21:48'),
(522, 520, '3190', NULL, NULL, 0, '2020-11-27 08:32:31', '2020-11-27 08:32:31'),
(523, 521, '3191', NULL, NULL, 0, '2020-11-27 08:32:57', '2020-11-27 08:32:57'),
(524, 522, '3847', NULL, NULL, 0, '2020-11-27 08:35:02', '2020-11-27 08:35:02'),
(525, 523, '3848', NULL, NULL, 0, '2020-11-27 08:36:02', '2020-11-27 08:36:02'),
(526, 524, '3849', NULL, NULL, 0, '2020-11-27 08:36:30', '2020-11-27 08:36:30'),
(527, 525, '3850', NULL, NULL, 0, '2020-11-27 08:36:54', '2020-11-27 08:36:54'),
(528, 526, '3738', NULL, NULL, 0, '2020-11-27 21:30:15', '2020-11-27 21:30:15'),
(529, 527, '3739', NULL, NULL, 0, '2020-11-27 21:30:34', '2020-11-27 21:30:34'),
(530, 528, '3612', NULL, NULL, 0, '2020-11-27 21:39:29', '2020-11-27 21:39:29'),
(531, 529, '4005', NULL, NULL, 0, '2020-11-27 21:40:43', '2020-11-27 21:40:43'),
(532, 530, '3689', NULL, NULL, 0, '2020-11-27 21:44:42', '2020-11-27 21:44:42'),
(533, 531, '3690', NULL, NULL, 0, '2020-11-27 21:45:04', '2020-11-27 21:45:04'),
(534, 532, '3691', NULL, NULL, 0, '2020-11-27 21:45:35', '2020-11-27 21:45:35'),
(535, 533, '3692', NULL, NULL, 0, '2020-11-27 21:45:53', '2020-11-27 21:45:53'),
(536, 534, '3693', NULL, NULL, 0, '2020-11-27 21:46:14', '2020-11-27 21:46:14'),
(537, 535, '3694', NULL, NULL, 0, '2020-11-27 21:46:33', '2020-11-27 21:46:33'),
(538, 536, '3741', NULL, NULL, 0, '2020-11-27 21:56:03', '2020-11-27 21:56:03'),
(539, 537, '3742', NULL, NULL, 0, '2020-11-27 21:56:28', '2020-11-27 21:56:28'),
(540, 538, '3743', NULL, NULL, 0, '2020-11-27 21:56:54', '2020-11-27 21:56:54'),
(541, 539, '5067', NULL, NULL, 0, '2020-11-27 22:03:15', '2020-11-27 22:03:15'),
(542, 540, '5133', NULL, NULL, 0, '2020-11-27 22:04:13', '2020-11-27 22:04:13'),
(543, 541, '5134', NULL, NULL, 0, '2020-11-27 22:04:32', '2020-11-27 22:04:32'),
(544, 542, '3271', NULL, NULL, 0, '2020-11-27 22:16:49', '2020-11-27 22:16:49'),
(545, 543, '3272', NULL, NULL, 0, '2020-11-27 22:23:10', '2020-11-27 22:23:10'),
(546, 544, '3273', NULL, NULL, 0, '2020-11-27 22:23:42', '2020-11-27 22:23:42'),
(547, 545, '3274', NULL, NULL, 0, '2020-11-27 22:24:02', '2020-11-27 22:24:02'),
(548, 546, '3275', NULL, NULL, 0, '2020-11-27 22:24:50', '2020-11-27 22:24:50'),
(549, 547, '3276', NULL, NULL, 0, '2020-11-27 22:25:22', '2020-11-27 22:25:22'),
(550, 548, '4466', NULL, NULL, 0, '2020-11-27 22:36:14', '2020-11-27 22:36:14'),
(551, 549, '3666', NULL, NULL, 0, '2020-11-27 22:43:04', '2020-11-27 22:43:04'),
(552, 550, '3667', NULL, NULL, 0, '2020-11-27 22:43:28', '2020-11-27 22:43:28'),
(553, 551, '5155', NULL, NULL, 0, '2020-11-27 22:44:36', '2020-11-27 22:44:36'),
(554, 552, '5156', NULL, NULL, 0, '2020-11-27 22:44:54', '2020-11-27 22:44:54'),
(555, 553, '4489', NULL, NULL, 0, '2020-11-27 22:49:59', '2020-11-27 22:49:59'),
(556, 554, '4465', NULL, NULL, 0, '2020-11-27 22:52:21', '2020-11-27 22:52:21'),
(557, 555, '3723', NULL, NULL, 0, '2020-11-27 22:56:36', '2020-11-27 22:56:36'),
(558, 556, '3724', NULL, NULL, 0, '2020-11-27 22:56:53', '2020-11-27 22:56:53'),
(559, 557, '3302', NULL, NULL, 0, '2020-11-27 23:00:25', '2020-11-27 23:00:25'),
(560, 558, '3787', NULL, NULL, 0, '2020-11-27 23:01:35', '2020-11-27 23:01:35'),
(561, 559, '3970', NULL, NULL, 0, '2020-11-27 23:07:51', '2020-11-27 23:07:51'),
(562, 560, '4348', NULL, NULL, 0, '2020-11-27 23:08:29', '2020-11-27 23:08:29'),
(563, 561, '3930', NULL, NULL, 0, '2020-11-28 02:08:41', '2020-11-28 02:08:41'),
(564, 562, '3931', NULL, NULL, 0, '2020-11-28 02:08:59', '2020-11-28 02:08:59'),
(565, 563, '3932', NULL, NULL, 0, '2020-11-28 02:09:16', '2020-11-28 02:09:16'),
(566, 564, '3933', NULL, NULL, 0, '2020-11-28 02:09:37', '2020-11-28 02:09:37'),
(567, 565, '3934', NULL, NULL, 0, '2020-11-28 02:09:57', '2020-11-28 02:09:57'),
(568, 566, '3935', NULL, NULL, 0, '2020-11-28 02:14:16', '2020-11-28 02:14:16'),
(569, 567, '3936', NULL, NULL, 0, '2020-11-28 02:14:39', '2020-11-28 02:14:39'),
(570, 568, '3937', NULL, NULL, 0, '2020-11-28 02:14:52', '2020-11-28 02:14:52'),
(571, 569, '3938', NULL, NULL, 0, '2020-11-28 02:15:08', '2020-11-28 02:15:08'),
(572, 570, '3939', NULL, NULL, 0, '2020-11-28 02:15:29', '2020-11-28 02:15:29'),
(573, 571, '3854', NULL, NULL, 0, '2020-11-28 02:19:15', '2020-11-28 02:19:15'),
(574, 572, '3020', NULL, NULL, 0, '2020-11-28 02:25:01', '2020-11-28 02:25:01'),
(575, 573, '3021', NULL, NULL, 0, '2020-11-28 02:25:21', '2020-11-28 02:25:21'),
(576, 574, '4095', NULL, NULL, 0, '2020-11-28 02:28:48', '2020-11-28 02:28:48'),
(577, 575, '4096', NULL, NULL, 0, '2020-11-28 02:29:03', '2020-11-28 02:29:03'),
(578, 576, '4097', NULL, NULL, 0, '2020-11-28 02:29:20', '2020-11-28 02:29:20'),
(579, 577, '4098', NULL, NULL, 0, '2020-11-28 02:29:30', '2020-11-28 02:29:30'),
(580, 578, '4099', NULL, NULL, 0, '2020-11-28 02:29:56', '2020-11-28 02:29:56'),
(581, 579, '3405', NULL, NULL, 0, '2020-11-28 02:36:48', '2020-11-28 02:36:48'),
(582, 580, '3406', NULL, NULL, 0, '2020-11-28 02:37:07', '2020-11-28 02:37:07'),
(583, 581, '3407', NULL, NULL, 0, '2020-11-28 02:37:28', '2020-11-28 02:37:28'),
(584, 582, '3408', NULL, NULL, 0, '2020-11-28 02:37:49', '2020-11-28 02:37:49'),
(585, 583, '4981', NULL, NULL, 0, '2020-11-28 02:38:45', '2020-11-28 02:38:45'),
(586, 584, '5251', NULL, NULL, 0, '2020-11-28 02:39:43', '2020-11-28 02:39:43'),
(587, 585, '5252', NULL, NULL, 0, '2020-11-28 02:40:12', '2020-11-28 02:40:12'),
(588, 586, '5253', NULL, NULL, 0, '2020-11-28 02:40:31', '2020-11-28 02:40:31'),
(589, 587, '5254', NULL, NULL, 0, '2020-11-28 02:40:58', '2020-11-28 02:40:58'),
(590, 588, '3570', NULL, NULL, 0, '2020-11-28 02:41:49', '2020-11-28 02:41:49'),
(591, 589, '3571', NULL, NULL, 0, '2020-11-28 02:42:08', '2020-11-28 02:42:08'),
(592, 590, '3572', NULL, NULL, 0, '2020-11-28 02:42:20', '2020-11-28 02:42:20'),
(593, 591, '3573', NULL, NULL, 0, '2020-11-28 02:42:37', '2020-11-28 02:42:37'),
(594, 592, '3574', NULL, NULL, 0, '2020-11-28 02:42:47', '2020-11-28 02:42:47'),
(595, 593, '4493', NULL, NULL, 0, '2020-11-28 02:43:39', '2020-11-28 02:43:39'),
(596, 594, '4808', NULL, NULL, 0, '2020-11-28 02:44:45', '2020-11-28 02:44:45'),
(597, 595, '4809', NULL, NULL, 0, '2020-11-28 02:45:01', '2020-11-28 02:45:01'),
(598, 596, '4810', NULL, NULL, 0, '2020-11-28 02:45:17', '2020-11-28 02:45:17'),
(599, 597, '4811', NULL, NULL, 0, '2020-11-28 02:45:31', '2020-11-28 02:45:31'),
(600, 598, '4812', NULL, NULL, 0, '2020-11-28 02:45:47', '2020-11-28 02:45:47'),
(601, 599, '4131', NULL, NULL, 0, '2020-11-28 02:51:51', '2020-11-28 02:51:51'),
(602, 600, '4132', NULL, NULL, 0, '2020-11-28 02:52:14', '2020-11-28 02:52:14'),
(603, 601, '5167', NULL, NULL, 0, '2020-11-28 02:52:50', '2020-11-28 02:52:50'),
(604, 602, '5168', NULL, NULL, 0, '2020-11-28 02:53:10', '2020-11-28 02:53:10'),
(605, 603, '3708', NULL, NULL, 0, '2020-11-28 03:02:25', '2020-11-28 03:02:25'),
(606, 604, '3719', NULL, NULL, 0, '2020-11-28 03:04:19', '2020-11-28 03:04:19'),
(607, 605, '3720', NULL, NULL, 0, '2020-11-28 03:04:37', '2020-11-28 03:04:37'),
(608, 606, '3721', NULL, NULL, 0, '2020-11-28 03:04:59', '2020-11-28 03:04:59'),
(609, 607, '5139', NULL, NULL, 0, '2020-11-28 03:05:42', '2020-11-28 03:05:42'),
(610, 608, '5140', NULL, NULL, 0, '2020-11-28 03:06:05', '2020-11-28 03:06:05'),
(611, 609, '3709', NULL, NULL, 0, '2020-11-28 03:13:01', '2020-11-28 03:13:01'),
(612, 610, '3710', NULL, NULL, 0, '2020-11-28 03:13:16', '2020-11-28 03:13:16'),
(613, 611, '3711', NULL, NULL, 0, '2020-11-28 03:13:27', '2020-11-28 03:13:27'),
(614, 612, '3712', NULL, NULL, 0, '2020-11-28 03:13:46', '2020-11-28 03:13:46'),
(615, 613, '4008', NULL, NULL, 0, '2020-11-28 03:18:41', '2020-11-28 03:18:41'),
(616, 614, '3747', NULL, NULL, 0, '2020-11-28 03:25:51', '2020-11-28 03:25:51'),
(617, 615, '3758', NULL, NULL, 0, '2020-11-28 09:33:03', '2020-11-28 09:33:03'),
(618, 616, '4139', NULL, NULL, 0, '2020-11-28 09:41:06', '2020-11-28 09:41:06'),
(619, 617, '3211', NULL, NULL, 0, '2020-11-28 22:20:43', '2020-11-28 22:20:43'),
(620, 618, '3680', NULL, NULL, 0, '2020-11-28 22:24:44', '2020-11-28 22:24:44'),
(621, 619, '3681', NULL, NULL, 0, '2020-11-28 22:24:58', '2020-11-28 22:24:58'),
(622, 620, '3217', NULL, NULL, 0, '2020-11-28 22:25:28', '2020-11-28 22:25:28'),
(623, 621, '3151', NULL, NULL, 0, '2020-11-29 23:02:45', '2020-11-29 23:02:45'),
(624, 622, '3152', NULL, NULL, 0, '2020-11-29 23:03:07', '2020-11-29 23:03:07'),
(625, 623, '3613', NULL, NULL, 0, '2020-11-29 23:10:36', '2020-11-29 23:10:36'),
(626, 624, '4003', NULL, NULL, 0, '2020-11-29 23:12:11', '2020-11-29 23:12:11'),
(627, 625, '3641', NULL, NULL, 0, '2020-11-29 23:17:38', '2020-11-29 23:17:38'),
(628, 626, '3642', NULL, NULL, 0, '2020-11-29 23:17:58', '2020-11-29 23:17:58'),
(629, 627, '3643', NULL, NULL, 0, '2020-11-29 23:18:20', '2020-11-29 23:18:20'),
(630, 628, '3644', NULL, NULL, 0, '2020-11-29 23:18:37', '2020-11-29 23:18:37'),
(631, 629, '3017', NULL, NULL, 0, '2020-11-29 23:20:55', '2020-11-29 23:20:55'),
(632, 630, '3210', NULL, NULL, 0, '2020-11-29 23:28:48', '2020-11-29 23:28:48'),
(633, 631, '5119', NULL, NULL, 0, '2020-11-29 23:29:28', '2020-11-29 23:29:28');
INSERT INTO `book_infos` (`id`, `book_id`, `accession_no`, `isbn_no`, `book_code`, `status`, `created_at`, `updated_at`) VALUES
(634, 632, '5120', NULL, NULL, 0, '2020-11-29 23:30:08', '2020-11-29 23:30:08'),
(635, 633, '5024', NULL, NULL, 0, '2020-11-29 23:44:31', '2020-11-29 23:44:31'),
(636, 634, '3277', NULL, NULL, 0, '2020-11-29 23:51:06', '2020-11-29 23:51:06'),
(637, 635, '3278', NULL, NULL, 0, '2020-11-29 23:51:29', '2020-11-29 23:51:29'),
(638, 636, '4586', NULL, NULL, 0, '2020-11-30 00:01:45', '2020-11-30 00:01:45'),
(639, 637, '5096', NULL, NULL, 0, '2020-11-30 00:09:52', '2020-11-30 00:09:52'),
(640, 638, '3867', NULL, NULL, 0, '2020-11-30 00:11:15', '2020-11-30 00:11:15'),
(641, 639, '3868', NULL, NULL, 0, '2020-11-30 00:11:34', '2020-11-30 00:11:34'),
(642, 640, '3869', NULL, NULL, 0, '2020-11-30 00:11:58', '2020-11-30 00:11:58'),
(643, 641, '3870', NULL, NULL, 0, '2020-11-30 00:12:17', '2020-11-30 00:12:17'),
(644, 642, '3196', NULL, NULL, 0, '2020-11-30 00:15:42', '2020-11-30 00:15:42'),
(645, 643, '3197', NULL, NULL, 0, '2020-11-30 00:16:02', '2020-11-30 00:16:02'),
(646, 644, '3198', NULL, NULL, 0, '2020-11-30 00:16:20', '2020-11-30 00:16:20'),
(647, 645, '3199', NULL, NULL, 0, '2020-11-30 00:16:37', '2020-11-30 00:16:37'),
(648, 646, '3949', NULL, NULL, 0, '2020-11-30 00:23:30', '2020-11-30 00:23:30'),
(649, 647, '3586', NULL, NULL, 0, '2020-11-30 00:34:15', '2020-11-30 00:34:15'),
(650, 648, '3587', NULL, NULL, 0, '2020-11-30 00:34:34', '2020-11-30 00:34:34'),
(651, 649, '4123', NULL, NULL, 0, '2020-11-30 00:37:15', '2020-11-30 00:37:15'),
(652, 650, '4124', NULL, NULL, 0, '2020-11-30 00:37:35', '2020-11-30 00:37:35'),
(653, 651, '3588', NULL, NULL, 0, '2020-11-30 00:39:29', '2020-11-30 00:39:29'),
(654, 652, '4119', NULL, NULL, 0, '2020-11-30 00:40:14', '2020-11-30 00:40:14'),
(655, 653, '4120', NULL, NULL, 0, '2020-11-30 00:40:38', '2020-11-30 00:40:38'),
(656, 654, '3957', NULL, NULL, 0, '2020-11-30 00:46:35', '2020-11-30 00:46:35'),
(657, 655, '3958', NULL, NULL, 0, '2020-11-30 00:47:02', '2020-11-30 00:47:02'),
(658, 656, '3959', NULL, NULL, 0, '2020-11-30 00:47:18', '2020-11-30 00:47:18'),
(659, 657, '4284', NULL, NULL, 0, '2020-11-30 00:48:27', '2020-11-30 00:48:27'),
(660, 658, '4285', NULL, NULL, 0, '2020-11-30 00:48:47', '2020-11-30 00:48:47'),
(661, 659, '3880', NULL, NULL, 0, '2020-11-30 00:55:15', '2020-11-30 00:55:15'),
(662, 660, '3881', NULL, NULL, 0, '2020-11-30 00:55:38', '2020-11-30 00:55:38'),
(663, 661, '3882', NULL, NULL, 0, '2020-11-30 00:55:58', '2020-11-30 00:55:58'),
(664, 662, '3883', NULL, NULL, 0, '2020-11-30 00:56:25', '2020-11-30 00:56:25'),
(665, 663, '3884', NULL, NULL, 0, '2020-11-30 00:56:45', '2020-11-30 00:56:45'),
(666, 664, '3589', NULL, NULL, 0, '2020-11-30 01:02:24', '2020-11-30 01:02:24'),
(667, 665, '3384', NULL, NULL, 0, '2020-11-30 01:07:30', '2020-11-30 01:07:30'),
(668, 666, '3385', NULL, NULL, 0, '2020-11-30 01:07:47', '2020-11-30 01:07:47'),
(669, 667, '3386', NULL, NULL, 0, '2020-11-30 01:08:06', '2020-11-30 01:08:06'),
(670, 668, '3895', NULL, NULL, 0, '2020-11-30 04:26:25', '2020-11-30 04:26:25'),
(671, 669, '3896', NULL, NULL, 0, '2020-11-30 04:26:55', '2020-11-30 04:26:55'),
(672, 670, '3897', NULL, NULL, 0, '2020-11-30 04:27:18', '2020-11-30 04:27:18'),
(673, 671, '3898', NULL, NULL, 0, '2020-11-30 04:27:37', '2020-11-30 04:27:37'),
(674, 672, '3899', NULL, NULL, 0, '2020-11-30 04:27:57', '2020-11-30 04:27:57'),
(675, 673, '4219', NULL, NULL, 0, '2020-11-30 04:28:45', '2020-11-30 04:28:45'),
(676, 674, '4286', NULL, NULL, 0, '2020-11-30 04:29:23', '2020-11-30 04:29:23'),
(677, 675, '4287', NULL, NULL, 0, '2020-11-30 04:29:46', '2020-11-30 04:29:46'),
(678, 676, '4288', NULL, NULL, 0, '2020-11-30 04:30:07', '2020-11-30 04:30:07'),
(679, 677, '4289', NULL, NULL, 0, '2020-11-30 04:30:34', '2020-11-30 04:30:34'),
(680, 678, '3387', NULL, NULL, 0, '2020-11-30 22:24:09', '2020-11-30 22:24:09'),
(681, 679, '3388', NULL, NULL, 0, '2020-11-30 22:24:34', '2020-11-30 22:24:34'),
(682, 680, '3389', NULL, NULL, 0, '2020-11-30 22:24:56', '2020-11-30 22:24:56'),
(683, 681, '3715', NULL, NULL, 0, '2020-11-30 22:29:08', '2020-11-30 22:29:08'),
(684, 682, '3716', NULL, NULL, 0, '2020-11-30 22:29:28', '2020-11-30 22:29:28'),
(685, 683, '3148', NULL, NULL, 0, '2020-11-30 22:30:28', '2020-11-30 22:30:28'),
(686, 684, '4457', NULL, NULL, 0, '2020-11-30 22:35:37', '2020-11-30 22:35:37'),
(687, 685, '3973', NULL, NULL, 0, '2020-11-30 22:54:09', '2020-11-30 22:54:09'),
(688, 686, '4370', NULL, NULL, 0, '2020-11-30 22:54:47', '2020-11-30 22:54:47'),
(689, 687, '3986', NULL, NULL, 0, '2020-11-30 22:57:35', '2020-11-30 22:57:35'),
(690, 688, '3987', NULL, NULL, 0, '2020-11-30 22:57:56', '2020-11-30 22:57:56'),
(691, 689, '3988', NULL, NULL, 0, '2020-11-30 22:58:16', '2020-11-30 22:58:16'),
(692, 690, '3989', NULL, NULL, 0, '2020-11-30 22:58:36', '2020-11-30 22:58:36'),
(693, 691, '3997', NULL, NULL, 0, '2020-11-30 23:01:43', '2020-11-30 23:01:43'),
(694, 692, '3998', NULL, NULL, 0, '2020-11-30 23:02:49', '2020-11-30 23:02:49'),
(695, 693, '3999', NULL, NULL, 0, '2020-11-30 23:04:17', '2020-11-30 23:04:17'),
(696, 694, '4000', NULL, NULL, 0, '2020-11-30 23:05:06', '2020-11-30 23:05:06'),
(697, 695, '4001', NULL, NULL, 0, '2020-11-30 23:07:22', '2020-11-30 23:07:22'),
(698, 696, '4002', NULL, NULL, 0, '2020-11-30 23:08:24', '2020-11-30 23:08:24'),
(699, 697, '3377', NULL, NULL, 0, '2020-11-30 23:16:19', '2020-11-30 23:16:19'),
(700, 698, '3963', NULL, NULL, 0, '2020-11-30 23:20:47', '2020-11-30 23:20:47'),
(701, 699, '3590', NULL, NULL, 0, '2020-11-30 23:24:52', '2020-11-30 23:24:52'),
(702, 700, '3591', NULL, NULL, 0, '2020-11-30 23:25:10', '2020-11-30 23:25:10'),
(703, 701, '4117', NULL, NULL, 0, '2020-11-30 23:26:54', '2020-11-30 23:26:54'),
(704, 702, '4118', NULL, NULL, 0, '2020-11-30 23:27:18', '2020-11-30 23:27:18'),
(705, 703, '4121', NULL, NULL, 0, '2020-11-30 23:28:21', '2020-11-30 23:28:21'),
(706, 704, '4122', NULL, NULL, 0, '2020-11-30 23:31:54', '2020-11-30 23:31:54'),
(707, 705, '4123', NULL, NULL, 0, '2020-11-30 23:34:27', '2020-11-30 23:34:27'),
(708, 706, '4124', NULL, NULL, 0, '2020-11-30 23:34:55', '2020-11-30 23:34:55'),
(709, 707, '4125', NULL, NULL, 0, '2020-11-30 23:36:18', '2020-11-30 23:36:18'),
(710, 708, '4126', NULL, NULL, 0, '2020-11-30 23:36:41', '2020-11-30 23:36:41'),
(711, 709, '4293', NULL, NULL, 0, '2020-11-30 23:41:27', '2020-11-30 23:41:27'),
(712, 710, '4294', NULL, NULL, 0, '2020-11-30 23:41:59', '2020-11-30 23:41:59'),
(713, 711, '3393', NULL, NULL, 0, '2020-11-30 23:43:42', '2020-11-30 23:43:42'),
(714, 712, '3394', NULL, NULL, 0, '2020-11-30 23:44:01', '2020-11-30 23:44:01'),
(715, 713, '3395', NULL, NULL, 0, '2020-11-30 23:44:52', '2020-11-30 23:44:52'),
(716, 714, '3390', NULL, NULL, 0, '2020-11-30 23:50:55', '2020-11-30 23:50:55'),
(717, 715, '3391', NULL, NULL, 0, '2020-11-30 23:52:00', '2020-11-30 23:52:00'),
(718, 716, '3392', NULL, NULL, 0, '2020-11-30 23:52:26', '2020-11-30 23:52:26'),
(719, 717, '3398', NULL, NULL, 0, '2020-11-30 23:57:05', '2020-11-30 23:57:05'),
(720, 718, '3396', NULL, NULL, 0, '2020-11-30 23:58:15', '2020-11-30 23:58:15'),
(721, 719, '3168', NULL, NULL, 0, '2020-12-01 00:21:58', '2020-12-01 00:21:58'),
(722, 720, '3169', NULL, NULL, 0, '2020-12-01 00:22:31', '2020-12-01 00:22:31'),
(723, 721, '3885', NULL, NULL, 0, '2020-12-01 00:29:11', '2020-12-01 00:29:11'),
(724, 722, '3886', NULL, NULL, 0, '2020-12-01 00:29:43', '2020-12-01 00:29:43'),
(725, 723, '3887', NULL, NULL, 0, '2020-12-01 00:30:02', '2020-12-01 00:30:02'),
(726, 724, '3888', NULL, NULL, 0, '2020-12-01 00:30:23', '2020-12-01 00:30:23'),
(727, 725, '3889', NULL, NULL, 0, '2020-12-01 00:30:47', '2020-12-01 00:30:47'),
(728, 726, '3417', NULL, NULL, 0, '2020-12-01 00:37:37', '2020-12-01 00:37:37'),
(729, 727, '3418', NULL, NULL, 0, '2020-12-01 00:38:20', '2020-12-01 00:38:20'),
(730, 728, '3419', NULL, NULL, 0, '2020-12-01 00:38:40', '2020-12-01 00:38:40'),
(731, 729, '3420', NULL, NULL, 0, '2020-12-01 00:39:06', '2020-12-01 00:39:06'),
(732, 730, '3537', NULL, NULL, 0, '2020-12-01 00:42:08', '2020-12-01 00:42:08'),
(733, 731, '3538', NULL, NULL, 0, '2020-12-01 00:42:30', '2020-12-01 00:42:30'),
(734, 732, '3539', NULL, NULL, 0, '2020-12-01 00:43:00', '2020-12-01 00:43:00'),
(735, 733, '3540', NULL, NULL, 0, '2020-12-01 00:43:25', '2020-12-01 00:43:25'),
(736, 734, '3541', NULL, NULL, 0, '2020-12-01 00:43:50', '2020-12-01 00:43:50'),
(737, 735, '3542', NULL, NULL, 0, '2020-12-01 00:44:20', '2020-12-01 00:44:20'),
(738, 736, '3543', NULL, NULL, 0, '2020-12-01 00:46:14', '2020-12-01 00:46:14'),
(739, 737, '3544', NULL, NULL, 0, '2020-12-01 00:47:07', '2020-12-01 00:47:07'),
(740, 738, '3545', NULL, NULL, 0, '2020-12-01 00:47:26', '2020-12-01 00:47:26'),
(741, 739, '3546', NULL, NULL, 0, '2020-12-01 00:49:44', '2020-12-01 00:49:44'),
(742, 740, '4090', NULL, NULL, 0, '2020-12-01 00:54:59', '2020-12-01 00:54:59'),
(743, 741, '4091', NULL, NULL, 0, '2020-12-01 00:55:31', '2020-12-01 00:55:31'),
(744, 742, '4092', NULL, NULL, 0, '2020-12-01 00:56:06', '2020-12-01 00:56:06'),
(745, 743, '4093', NULL, NULL, 0, '2020-12-01 01:03:05', '2020-12-01 01:03:05'),
(746, 744, '4094', NULL, NULL, 0, '2020-12-01 01:03:25', '2020-12-01 01:03:25'),
(747, 745, '3381', NULL, NULL, 0, '2020-12-01 22:37:14', '2020-12-01 22:37:14'),
(748, 746, '3382', NULL, NULL, 0, '2020-12-01 22:37:40', '2020-12-01 22:37:40'),
(749, 747, '3383', NULL, NULL, 0, '2020-12-01 22:38:02', '2020-12-01 22:38:02'),
(750, 748, '3397', NULL, NULL, 0, '2020-12-01 22:41:03', '2020-12-01 22:41:03'),
(751, 749, '4369', NULL, NULL, 0, '2020-12-01 22:46:06', '2020-12-01 22:46:06'),
(752, 750, '4989', NULL, NULL, 0, '2020-12-01 22:47:15', '2020-12-01 22:47:15'),
(753, 751, '5181', NULL, NULL, 0, '2020-12-01 22:48:14', '2020-12-01 22:48:14'),
(754, 752, '5182', NULL, NULL, 0, '2020-12-01 22:48:34', '2020-12-01 22:48:34'),
(755, 753, '3390', NULL, NULL, 0, '2020-12-01 22:50:51', '2020-12-01 22:50:51'),
(756, 754, '3391', NULL, NULL, 0, '2020-12-01 22:51:26', '2020-12-01 22:51:26'),
(757, 755, '3392', NULL, NULL, 0, '2020-12-01 22:51:47', '2020-12-01 22:51:47'),
(758, 756, '3279', NULL, NULL, 0, '2020-12-01 22:59:20', '2020-12-01 22:59:20'),
(759, 757, '3857', NULL, NULL, 0, '2020-12-01 23:00:00', '2020-12-01 23:00:00'),
(760, 758, '3858', NULL, NULL, 0, '2020-12-01 23:00:15', '2020-12-01 23:00:15'),
(761, 759, '3182', NULL, NULL, 0, '2020-12-01 23:08:58', '2020-12-01 23:08:58'),
(762, 760, '3183', NULL, NULL, 0, '2020-12-01 23:09:31', '2020-12-01 23:09:31'),
(763, 761, '3378', NULL, NULL, 0, '2020-12-01 23:10:43', '2020-12-01 23:10:43'),
(764, 762, '3310', NULL, NULL, 0, '2020-12-01 23:28:33', '2020-12-01 23:28:33'),
(765, 763, '3311', NULL, NULL, 0, '2020-12-01 23:28:53', '2020-12-01 23:28:53'),
(766, 764, '4991', NULL, NULL, 0, '2020-12-01 23:29:34', '2020-12-01 23:29:34'),
(767, 765, '3890', NULL, NULL, 0, '2020-12-01 23:34:41', '2020-12-01 23:34:41'),
(768, 766, '3891', NULL, NULL, 0, '2020-12-01 23:35:15', '2020-12-01 23:35:15'),
(769, 767, '3892', NULL, NULL, 0, '2020-12-01 23:35:39', '2020-12-01 23:35:39'),
(770, 768, '3893', NULL, NULL, 0, '2020-12-01 23:36:01', '2020-12-01 23:36:01'),
(771, 769, '3894', NULL, NULL, 0, '2020-12-01 23:36:19', '2020-12-01 23:36:19'),
(772, 770, '3878', NULL, NULL, 0, '2020-12-01 23:41:07', '2020-12-01 23:41:07'),
(773, 771, '3288', NULL, NULL, 0, '2020-12-01 23:44:42', '2020-12-01 23:44:42'),
(774, 772, '4995', NULL, NULL, 0, '2020-12-01 23:45:10', '2020-12-01 23:45:10'),
(775, 773, '3682', NULL, NULL, 0, '2020-12-01 23:50:29', '2020-12-01 23:50:29'),
(776, 774, '3668', NULL, NULL, 0, '2020-12-01 23:53:59', '2020-12-01 23:53:59'),
(777, 775, '3669', NULL, NULL, 0, '2020-12-01 23:54:23', '2020-12-01 23:54:23'),
(778, 776, '3725', NULL, NULL, 0, '2020-12-01 23:59:01', '2020-12-01 23:59:01'),
(779, 777, '3726', NULL, NULL, 0, '2020-12-01 23:59:15', '2020-12-01 23:59:15'),
(780, 778, '30', NULL, NULL, 0, '2020-12-02 00:02:25', '2020-12-02 00:02:25'),
(781, 779, '3500', NULL, NULL, 0, '2020-12-02 00:06:56', '2020-12-02 00:06:56'),
(782, 780, '3501', NULL, NULL, 0, '2020-12-02 00:09:02', '2020-12-02 00:09:02'),
(783, 781, '3502', NULL, NULL, 0, '2020-12-02 00:10:20', '2020-12-02 00:10:20'),
(784, 782, '3503', NULL, NULL, 0, '2020-12-02 00:10:43', '2020-12-02 00:10:43'),
(785, 783, '3504', NULL, NULL, 0, '2020-12-02 00:11:07', '2020-12-02 00:11:07'),
(786, 784, '3505', NULL, NULL, 0, '2020-12-02 00:11:31', '2020-12-02 00:11:31'),
(787, 785, '3506', NULL, NULL, 0, '2020-12-02 00:12:20', '2020-12-02 00:12:20'),
(788, 786, '3507', NULL, NULL, 0, '2020-12-02 00:12:41', '2020-12-02 00:12:41'),
(789, 787, '3508', NULL, NULL, 0, '2020-12-02 00:13:01', '2020-12-02 00:13:01'),
(790, 788, '3509', NULL, NULL, 0, '2020-12-02 00:13:26', '2020-12-02 00:13:26'),
(791, 789, '3434', NULL, NULL, 0, '2020-12-02 00:16:53', '2020-12-02 00:16:53'),
(792, 790, '3435', NULL, NULL, 0, '2020-12-02 00:17:11', '2020-12-02 00:17:11'),
(793, 791, '3436', NULL, NULL, 0, '2020-12-02 00:17:30', '2020-12-02 00:17:30'),
(794, 792, '3437', NULL, NULL, 0, '2020-12-02 00:17:48', '2020-12-02 00:17:48'),
(795, 793, '3438', NULL, NULL, 0, '2020-12-02 00:18:11', '2020-12-02 00:18:11'),
(796, 794, '3429', NULL, NULL, 0, '2020-12-02 00:19:23', '2020-12-02 00:19:23'),
(797, 795, '3430', NULL, NULL, 0, '2020-12-02 00:19:46', '2020-12-02 00:19:46'),
(798, 796, '3431', NULL, NULL, 0, '2020-12-02 00:20:02', '2020-12-02 00:20:02'),
(799, 797, '3432', NULL, NULL, 0, '2020-12-02 00:20:19', '2020-12-02 00:20:19'),
(800, 798, '3433', NULL, NULL, 0, '2020-12-02 00:20:39', '2020-12-02 00:20:39'),
(801, 799, '4009', NULL, NULL, 0, '2020-12-02 00:25:20', '2020-12-02 00:25:20'),
(802, 800, '4010', NULL, NULL, 0, '2020-12-02 00:25:37', '2020-12-02 00:25:37'),
(803, 801, '4011', NULL, NULL, 0, '2020-12-02 00:25:53', '2020-12-02 00:25:53'),
(804, 802, '4012', NULL, NULL, 0, '2020-12-02 00:26:08', '2020-12-02 00:26:08'),
(805, 803, '4013', NULL, NULL, 0, '2020-12-02 00:26:26', '2020-12-02 00:26:26'),
(806, 804, '3900', NULL, NULL, 0, '2020-12-02 03:28:15', '2020-12-02 03:28:15'),
(807, 805, '3901', NULL, NULL, 0, '2020-12-02 03:28:44', '2020-12-02 03:28:44'),
(808, 806, '3902', NULL, NULL, 0, '2020-12-02 03:29:01', '2020-12-02 03:29:01'),
(809, 807, '3903', NULL, NULL, 0, '2020-12-02 03:35:36', '2020-12-02 03:35:36'),
(810, 808, '3904', NULL, NULL, 0, '2020-12-02 03:36:04', '2020-12-02 03:36:04'),
(811, 809, '3905', NULL, NULL, 0, '2020-12-02 03:36:31', '2020-12-02 03:36:31'),
(812, 810, '3906', NULL, NULL, 0, '2020-12-02 03:36:56', '2020-12-02 03:36:56'),
(813, 811, '3907', NULL, NULL, 0, '2020-12-02 03:37:15', '2020-12-02 03:37:15'),
(814, 812, '3908', NULL, NULL, 0, '2020-12-02 03:37:41', '2020-12-02 03:37:41'),
(815, 813, '3909', NULL, NULL, 0, '2020-12-02 03:38:03', '2020-12-02 03:38:03'),
(816, 814, '3910', NULL, NULL, 0, '2020-12-02 03:42:14', '2020-12-02 03:42:14'),
(817, 815, '3911', NULL, NULL, 0, '2020-12-02 03:42:41', '2020-12-02 03:42:41'),
(818, 816, '3912', NULL, NULL, 0, '2020-12-02 03:43:05', '2020-12-02 03:43:05'),
(819, 817, '3913', NULL, NULL, 0, '2020-12-02 03:43:40', '2020-12-02 03:43:40'),
(820, 818, '3914', NULL, NULL, 0, '2020-12-02 03:43:57', '2020-12-02 03:43:57');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_status` int(11) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `category_status`, `created_at`, `updated_at`) VALUES
(4, 'Colour', 1, '2020-06-20 03:35:53', '2020-11-27 22:07:17'),
(5, 'Yarn', 1, '2020-06-20 03:36:00', '2020-10-23 02:04:06'),
(6, 'Wet Process', 1, '2020-06-20 03:36:04', '2020-10-23 02:04:05'),
(7, 'EEE', 1, '2020-08-16 22:43:39', '2020-10-23 02:04:21'),
(8, 'Computer Science and Engineering', 1, '2020-09-17 04:41:20', '2020-10-23 02:04:49'),
(9, 'Reference', 1, '2020-10-21 13:25:37', '2020-11-26 10:04:39'),
(10, 'Color', 1, '2020-10-22 22:09:32', '2020-11-27 22:11:58'),
(11, 'Bd History', 1, '2020-10-23 03:23:33', '2020-10-23 03:23:33'),
(12, 'Chemistry', 1, '2020-10-23 03:25:06', '2020-10-23 03:25:06'),
(13, 'Apparel Manufacturing', 1, '2020-10-24 00:31:17', '2020-10-24 00:31:17'),
(14, 'Changing Trends', 1, '2020-10-24 21:32:00', '2020-10-24 21:32:00'),
(15, 'Cloth', 1, '2020-10-24 21:45:25', '2020-10-24 21:45:25'),
(16, 'Textiles', 1, '2020-10-24 21:56:31', '2020-10-24 21:56:31'),
(17, 'Textiles', 1, '2020-10-24 21:57:36', '2020-10-24 21:57:36'),
(18, 'Clothing Textile', 1, '2020-10-27 21:21:27', '2020-10-27 21:21:27'),
(19, 'Science', 1, '2020-10-27 23:20:42', '2020-10-27 23:20:42'),
(20, 'Apparel', 1, '2020-10-28 21:19:32', '2020-10-28 21:19:32'),
(21, 'Apparel Manufacturing', 1, '2020-10-29 06:55:55', '2020-10-29 06:55:55'),
(22, 'Apparel', 1, '2020-10-30 06:23:48', '2020-10-30 06:23:48'),
(23, 'Apparel', 1, '2020-10-30 06:43:57', '2020-10-30 06:43:57'),
(24, 'Apparel', 1, '2020-10-30 07:02:49', '2020-10-30 07:02:49'),
(25, 'পোশাক শিল্প', 1, '2020-11-01 21:11:14', '2020-11-01 21:11:14'),
(26, 'Garments Industry', 1, '2020-11-01 21:20:20', '2020-11-01 21:20:20'),
(27, 'Textiles', 1, '2020-11-03 22:27:00', '2020-11-03 22:27:00'),
(28, 'Computer Aided', 1, '2020-11-04 01:01:02', '2020-11-04 01:01:02'),
(29, 'Pattern', 1, '2020-11-04 01:16:21', '2020-11-04 01:16:21'),
(30, 'Dress', 1, '2020-11-04 23:54:15', '2020-11-04 23:54:15'),
(31, 'Embroidery', 1, '2020-11-04 23:58:51', '2020-11-04 23:58:51'),
(32, 'Engendering', 1, '2020-11-05 00:03:50', '2020-11-05 00:03:50'),
(33, 'Sewing', 1, '2020-11-05 00:27:02', '2020-11-05 00:27:02'),
(34, 'Garments', 1, '2020-11-05 00:44:02', '2020-11-05 00:44:02'),
(35, 'Garments', 1, '2020-11-05 01:22:24', '2020-11-05 01:22:24'),
(36, 'Garments', 1, '2020-11-05 20:09:25', '2020-11-05 20:09:25'),
(37, 'Garments', 1, '2020-11-05 22:46:23', '2020-11-05 22:46:23'),
(38, 'Apparel', 1, '2020-11-05 23:34:14', '2020-11-05 23:34:14'),
(39, 'Clothing', 1, '2020-11-05 23:47:27', '2020-11-05 23:47:27'),
(40, 'Pattern', 1, '2020-11-06 22:39:19', '2020-11-06 22:39:19'),
(41, 'Garments', 1, '2020-11-06 22:45:24', '2020-11-06 22:45:24'),
(42, 'Apparel', 1, '2020-11-06 22:57:55', '2020-11-06 22:57:55'),
(43, 'Pattern Cutting', 1, '2020-11-06 23:06:25', '2020-11-06 23:17:53'),
(44, 'Apparel', 1, '2020-11-06 23:56:03', '2020-11-06 23:56:03'),
(45, 'Clothing', 1, '2020-11-07 00:01:26', '2020-11-07 00:01:26'),
(46, 'Apparel', 1, '2020-11-07 00:08:44', '2020-11-07 00:08:44'),
(47, 'Apparel', 1, '2020-11-07 00:48:44', '2020-11-07 00:48:44'),
(48, 'Statistics', 1, '2020-11-07 22:19:38', '2020-11-07 22:19:38'),
(49, 'Garments', 1, '2020-11-07 22:58:04', '2020-11-07 22:58:04'),
(50, 'Clothing', 1, '2020-11-07 23:03:49', '2020-11-07 23:03:49'),
(51, 'Denim', 1, '2020-11-07 23:20:23', '2020-11-07 23:20:23'),
(52, 'Apparel', 1, '2020-11-07 23:49:16', '2020-11-07 23:49:16'),
(53, 'Textiles', 1, '2020-11-07 23:51:43', '2020-11-07 23:51:43'),
(54, 'Garments', 1, '2020-11-08 23:32:40', '2020-11-08 23:32:40'),
(55, 'Knitting', 1, '2020-11-09 00:16:15', '2020-11-09 00:16:15'),
(56, 'Fashion', 1, '2020-11-09 20:13:44', '2020-11-09 20:13:44'),
(57, 'Fashion', 1, '2020-11-09 20:14:45', '2020-11-09 20:14:45'),
(58, 'Career', 1, '2020-11-09 20:15:47', '2020-11-09 20:15:47'),
(59, 'Fashion', 1, '2020-11-09 20:17:58', '2020-11-09 20:17:58'),
(60, 'Fashion', 1, '2020-11-09 20:20:18', '2020-11-09 20:20:18'),
(61, 'Fashion', 1, '2020-11-09 20:22:01', '2020-11-09 20:22:01'),
(62, 'Fashion', 1, '2020-11-09 20:39:36', '2020-11-09 20:39:36'),
(63, 'Dress', 1, '2020-11-09 23:09:47', '2020-11-09 23:09:47'),
(64, 'Fashion', 1, '2020-11-09 23:11:14', '2020-11-09 23:11:14'),
(65, 'Fashion', 1, '2020-11-09 23:23:13', '2020-11-09 23:23:13'),
(66, 'Fashion', 1, '2020-11-09 23:39:38', '2020-11-09 23:39:38'),
(67, 'Fashion', 1, '2020-11-10 00:05:01', '2020-11-10 00:05:01'),
(68, 'Fashion', 1, '2020-11-10 22:09:11', '2020-11-10 22:09:11'),
(69, 'Fashion', 1, '2020-11-10 22:29:02', '2020-11-10 22:29:02'),
(70, 'Textiles', 1, '2020-11-11 22:58:12', '2020-11-11 22:58:12'),
(71, 'Fashion', 1, '2020-11-11 23:14:04', '2020-11-11 23:14:04'),
(72, 'Fashion', 1, '2020-11-11 23:38:27', '2020-11-11 23:38:27'),
(73, 'Fashion', 1, '2020-11-11 23:48:48', '2020-11-11 23:48:48'),
(74, 'Fashion', 1, '2020-11-11 23:57:59', '2020-11-11 23:57:59'),
(75, 'Textiles', 1, '2020-11-12 00:21:35', '2020-11-12 00:21:35'),
(76, 'Fashion', 1, '2020-11-12 00:32:13', '2020-11-12 00:32:13'),
(77, 'Textiles', 1, '2020-11-12 00:41:41', '2020-11-12 00:41:41'),
(78, 'Pattern', 1, '2020-11-14 09:32:08', '2020-11-14 09:32:08'),
(79, 'Ikat', 1, '2020-11-14 09:43:48', '2020-11-14 09:43:48'),
(80, 'Pattern', 1, '2020-11-14 09:48:32', '2020-11-14 09:48:32'),
(81, 'Weaving', 1, '2020-11-14 22:48:10', '2020-11-14 22:48:10'),
(82, 'Fabric', 1, '2020-11-14 22:54:36', '2020-11-14 22:54:36'),
(83, 'Fabric', 1, '2020-11-14 23:05:59', '2020-11-14 23:05:59'),
(84, 'Fabric', 1, '2020-11-14 23:17:04', '2020-11-14 23:17:04'),
(85, 'Weaving', 1, '2020-11-14 23:37:00', '2020-11-14 23:37:00'),
(86, 'Weaving', 1, '2020-11-23 23:13:28', '2020-11-23 23:13:28'),
(87, 'Weaving', 1, '2020-11-23 23:43:13', '2020-11-23 23:43:13'),
(88, 'Weaving', 1, '2020-11-23 23:59:25', '2020-11-23 23:59:25'),
(89, 'Fabric', 1, '2020-11-24 00:53:24', '2020-11-24 00:53:24'),
(90, 'Weaving', 1, '2020-11-25 00:07:31', '2020-11-25 00:07:31'),
(91, 'Fabric Manufacturing', 1, '2020-11-25 22:40:55', '2020-11-26 09:31:51'),
(92, 'Fabric', 1, '2020-11-25 23:47:28', '2020-11-25 23:47:28'),
(93, 'Fabric', 1, '2020-11-26 09:21:37', '2020-11-26 09:21:37'),
(94, 'Fabric', 1, '2020-11-26 09:28:27', '2020-11-26 09:28:27'),
(95, 'Home Fabric', 1, '2020-11-26 09:55:47', '2020-11-26 09:55:47'),
(96, 'Handbook', 1, '2020-11-26 22:17:22', '2020-11-26 22:20:52'),
(97, 'Wool', 1, '2020-11-26 23:14:01', '2020-11-26 23:14:01'),
(98, 'Weaving', 1, '2020-11-26 23:29:48', '2020-11-26 23:29:48'),
(99, 'Weaving', 1, '2020-11-26 23:38:29', '2020-11-26 23:38:29'),
(100, 'Dyeing', 1, '2020-11-27 21:26:02', '2020-11-27 21:26:02'),
(101, 'Dyeing', 1, '2020-11-27 21:31:48', '2020-11-27 21:31:48'),
(102, 'Textiles', 1, '2020-11-27 21:37:17', '2020-11-27 21:37:17'),
(103, 'Silk', 1, '2020-11-28 03:08:42', '2020-11-28 03:08:42'),
(104, 'Fiber', 1, '2020-11-30 00:19:49', '2020-11-30 00:19:49'),
(105, 'Textiles', 1, '2020-11-30 00:28:09', '2020-11-30 00:28:09'),
(106, 'Fiber', 1, '2020-11-30 00:29:19', '2020-11-30 00:29:19'),
(107, 'Spinning', 1, '2020-11-30 00:43:31', '2020-11-30 00:43:31'),
(108, 'Fiber', 1, '2020-11-30 00:51:56', '2020-11-30 00:51:56'),
(109, 'Calculation', 1, '2020-11-30 01:05:22', '2020-11-30 01:05:22'),
(110, 'Jute', 1, '2020-11-30 22:25:43', '2020-11-30 22:25:43'),
(111, 'Yarn', 1, '2020-11-30 22:31:53', '2020-11-30 22:31:53'),
(112, 'Fiber', 1, '2020-11-30 23:12:57', '2020-11-30 23:12:57'),
(113, 'Yarn', 1, '2020-12-02 00:03:42', '2020-12-02 00:03:42');

-- --------------------------------------------------------

--
-- Table structure for table `charges`
--

CREATE TABLE `charges` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `charge_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `percent` int(11) DEFAULT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `charges`
--

INSERT INTO `charges` (`id`, `charge_name`, `percent`, `type`, `created_at`, `updated_at`) VALUES
(1, 'charge1', 25, 'tution free2', '2020-06-17 23:33:18', '2020-06-17 23:58:00'),
(2, 'charge2', 50, 'charge2', NULL, NULL),
(3, 'charge3', 75, 'charge3', NULL, NULL),
(4, 'niloy', NULL, '25', '2020-07-01 06:31:35', '2020-07-01 06:31:35'),
(5, 'Test', NULL, '20', '2020-07-01 06:38:23', '2020-07-01 06:38:23'),
(6, 'Delay', NULL, '20%', '2020-08-16 22:51:00', '2020-08-16 22:51:00'),
(7, 'session fee', NULL, '50%', '2020-08-17 00:48:41', '2020-08-17 00:48:41'),
(8, 'over due', NULL, '100', '2020-09-08 09:43:28', '2020-09-08 09:43:28');

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `department_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `department_status` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`id`, `department_name`, `department_status`, `created_at`, `updated_at`) VALUES
(1, 'Apparel Engineering', 1, '2020-06-15 22:48:50', '2020-10-23 07:03:18'),
(2, 'Wet Process Engineering', 1, '2020-06-15 22:52:22', '2020-10-23 07:02:45'),
(3, 'Fabric Engineering', 1, '2020-06-18 01:50:53', '2020-10-23 07:08:38'),
(4, 'Yarn Engineering', 1, '2020-06-29 02:26:47', '2020-10-23 07:03:33'),
(5, 'Computer Science and Engineering', 1, '2020-08-16 22:46:55', '2020-10-23 07:03:53'),
(6, 'EEE', 1, '2020-08-17 00:47:56', '2020-10-23 07:08:40'),
(7, 'Mechanical  Engineering', 1, '2020-09-08 09:36:54', '2020-10-23 07:06:24'),
(8, 'Chemistry', 1, '2020-09-08 09:52:11', '2020-10-23 07:08:42'),
(9, 'Physics', 1, '2020-09-17 04:43:17', '2020-10-23 07:06:49'),
(10, 'Mathematics', 1, '2020-10-22 22:10:13', '2020-10-23 07:08:35'),
(11, 'English', 1, '2020-10-23 03:35:11', '2020-10-23 07:08:45'),
(12, 'Business studies', 1, '2020-10-23 03:36:08', '2020-10-23 07:08:47'),
(13, 'F & D', NULL, '2020-10-23 03:36:59', '2020-10-23 03:36:59'),
(14, 'Fibre', NULL, '2020-10-23 03:38:18', '2020-10-23 03:38:18'),
(15, 'General Book', NULL, '2020-10-23 03:39:15', '2020-10-23 03:39:15'),
(16, 'General Textile', NULL, '2020-10-23 03:39:51', '2020-10-23 03:39:51'),
(17, 'Knitting', NULL, '2020-10-23 03:40:28', '2020-10-23 03:40:28'),
(18, 'Literature', NULL, '2020-10-23 03:40:48', '2020-10-23 03:40:48'),
(19, 'Mathermatics', NULL, '2020-10-23 03:41:34', '2020-10-23 03:41:34'),
(20, 'Mechanical Engineering', NULL, '2020-10-23 03:42:00', '2020-10-23 03:42:00'),
(21, 'Physics', NULL, '2020-10-23 03:42:33', '2020-10-23 03:42:33'),
(22, 'Reference Book', NULL, '2020-10-23 03:43:11', '2020-10-23 03:43:11'),
(23, 'Religious', NULL, '2020-10-23 03:43:53', '2020-10-23 03:43:53'),
(24, 'Service Book', NULL, '2020-10-23 03:44:19', '2020-10-23 03:44:19'),
(25, 'Statistics', NULL, '2020-10-23 03:44:55', '2020-10-23 03:44:55'),
(26, 'Testing', NULL, '2020-10-23 03:45:21', '2020-10-23 03:45:21'),
(27, 'Wet Processing', NULL, '2020-10-23 03:46:51', '2020-10-23 03:46:51'),
(28, 'Yarn', NULL, '2020-10-23 03:47:58', '2020-10-23 03:47:58');

-- --------------------------------------------------------

--
-- Table structure for table `designations`
--

CREATE TABLE `designations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `designation_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `designations`
--

INSERT INTO `designations` (`id`, `designation_name`, `created_at`, `updated_at`) VALUES
(1, 'Principal', '2020-09-03 05:39:30', '2020-10-23 02:06:54'),
(2, 'Professor', '2020-09-03 05:49:19', '2020-10-23 02:07:04'),
(3, 'Associate  Professor', '2020-09-07 04:37:17', '2020-10-23 02:07:19'),
(4, 'Assistant Professor', '2020-09-08 06:42:18', '2020-10-23 02:07:35'),
(5, 'Chief Instructor', '2020-09-08 09:44:20', '2020-10-23 02:08:27'),
(6, 'Lecturer', '2020-10-23 02:08:35', '2020-10-23 02:08:35'),
(7, 'Registrar', '2020-10-23 02:09:12', '2020-10-23 02:09:12'),
(8, 'Junior Instructor', '2020-10-23 02:09:42', '2020-10-23 02:09:42'),
(9, 'Assistant Instructor', '2020-10-23 02:10:30', '2020-10-23 02:10:30');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_06_15_074252_create_publications_table', 1),
(5, '2020_06_15_075040_create_books_table', 1),
(6, '2020_06_15_080931_create_authors_table', 1),
(7, '2020_06_15_081145_create_notices_table', 1),
(8, '2020_06_15_081416_create_charges_table', 1),
(9, '2020_06_15_082113_create_recks_table', 2),
(10, '2020_06_15_082301_create_departments_table', 3),
(11, '2020_06_15_082415_create_categories_table', 4),
(12, '2020_06_15_082537_create_subcategories_table', 5),
(14, '2020_06_15_082729_create_students_table', 6),
(15, '2020_06_15_083631_create_teachers_table', 7),
(16, '2020_06_22_093210_create_bookings_table', 8),
(17, '2020_09_01_112431_create_book_infos_table', 9),
(18, '2020_09_03_110839_create_designations_table', 10);

-- --------------------------------------------------------

--
-- Table structure for table `notices`
--

CREATE TABLE `notices` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL COMMENT 'publish = 1 unpublish=0',
  `privacy` tinyint(4) NOT NULL COMMENT 'teacher = 2 student =1 all =3',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notices`
--

INSERT INTO `notices` (`id`, `title`, `description`, `status`, `privacy`, `created_at`, `updated_at`) VALUES
(1, 'lorem ipsum dolor emit', 'lorem ipsum dolor emit', 1, 0, '2020-06-16 01:40:31', '2020-06-19 22:35:02'),
(2, 'রেড জোনে চট্টগ্রামের ৯ উপজেলা', 'করোনা আক্রান্ত রোগীর সংখ্যা বিবেচনায় মহানগরের পাশাপাশি চট্টগ্রামের ১৪ উপজেলাকেও বিভিন্ন জোনে ভাগ করা হয়েছে। সিভিল সার্জন কার্যালয়ের এক বিজ্ঞপ্তিতে এ তথ্য জানানো হয়েছে। সিভিল সার্জন ডা. সেখ ফজলে রাব্বি গত ১৪ জুন স্বাক্ষরিত বিজ্ঞপ্তি অনুযায়ী জেলার ৯টি উপজেলাকে লাল জোনে, ৩টি উপজেলাকে হলুদ জোনে এবং ২টি উপজেলাকে সবুজ জোন হিসেবে চিহ্নিত করা হয়েছে।...', 1, 0, '2020-06-16 01:45:46', '2020-06-16 02:28:35'),
(3, 'lorem ipsum dolor for all student', 'lorem ipsum dolor for all student', 1, 1, '2020-09-04 23:56:36', '2020-09-04 23:56:36'),
(4, 'notice for all teacher', 'notice for all teacher', 1, 2, '2020-09-05 00:04:09', '2020-09-05 00:04:09'),
(5, 'notice for teacher and both', 'notice for teacher and both', 1, 3, '2020-09-05 00:05:33', '2020-09-05 00:05:33'),
(6, 'Return of book', 'hjhjh', 1, 1, '2020-09-08 10:34:59', '2020-09-08 10:34:59'),
(7, 'ABCD', 'frtgrfgrgh', 1, 2, '2020-11-15 00:32:43', '2020-11-15 00:32:43');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('sudiptoshil@outlook.com', '$2y$10$OejscTHlDSg50kX0n7ihYurwyU4LQFoXqGut/ATiqMBrJofYe5W7y', '2020-08-16 00:39:10');

-- --------------------------------------------------------

--
-- Table structure for table `publications`
--

CREATE TABLE `publications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `publication_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `publication_status` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `publications`
--

INSERT INTO `publications` (`id`, `publication_name`, `address`, `publication_status`, `created_at`, `updated_at`) VALUES
(1, 'Woodhead Publication', 'U.S.A', 1, '2020-06-16 00:50:18', '2020-10-23 03:58:31'),
(2, 'Kalyani Publishers', 'India', 1, '2020-10-22 22:11:38', '2020-10-22 22:11:38'),
(3, 'Wiley Publication', 'Germany', 1, '2020-10-23 03:59:20', '2020-10-23 03:59:20'),
(4, 'Abhishek Publisher', 'India', 1, '2020-10-23 04:00:24', '2020-10-23 04:00:24'),
(5, 'C.R.C', 'England', 1, '2020-10-23 04:02:06', '2020-10-23 04:02:06'),
(6, 'Deboyyoti Datta', 'India', 1, '2020-10-23 04:04:01', '2020-10-23 04:04:01'),
(7, 'Hakkani publication', 'Dhaka', 1, '2020-10-23 04:04:35', '2020-10-23 04:04:35'),
(8, 'Oxrord University Press', 'U.K.', 1, '2020-10-23 04:05:14', '2020-10-23 04:05:14'),
(9, 'Cambridge University Press', 'U.k.', 1, '2020-10-23 04:05:58', '2020-10-23 04:05:58'),
(10, 'Sahitya Samsad', 'India', 1, '2020-10-23 04:11:44', '2020-10-23 04:11:44'),
(11, 'New Central Book Agency', 'India', 1, '2020-10-23 04:42:32', '2020-10-23 04:42:32'),
(12, 'Penguine', 'U.K.', 1, '2020-10-23 04:43:37', '2020-10-23 04:43:37'),
(13, 'Sawrov Publisher', 'India', 1, '2020-10-23 04:49:12', '2020-10-23 04:49:12'),
(14, 'Pustak Mahal', 'India', 1, '2020-10-23 04:50:04', '2020-10-23 04:50:04'),
(15, 'Cengage Learning', 'India', 1, '2020-10-23 04:50:39', '2020-10-23 04:50:39'),
(16, 'Pearson Education', 'India', 1, '2020-10-23 04:51:28', '2020-10-23 04:51:28'),
(17, 'Blackwell', 'U.K.', 1, '2020-10-23 04:51:55', '2020-10-23 04:51:55'),
(18, 'S.P.D.', 'India', 1, '2020-10-23 04:52:32', '2020-10-23 04:52:32'),
(19, 'Atech Ad', 'Bangladesh', 1, '2020-10-23 04:53:09', '2020-10-23 04:53:09'),
(20, 'Nawroz Kitabistan', 'Dhaka', 1, '2020-10-23 04:54:09', '2020-10-23 04:54:09'),
(21, 'A.P. H.', 'India', 1, '2020-10-23 04:54:53', '2020-10-23 04:54:53'),
(22, 'Indigo Books', 'India', 1, '2020-10-23 04:55:20', '2020-10-23 04:55:20'),
(23, 'Textile Institute', 'U.K.', 1, '2020-10-23 04:56:07', '2020-10-23 04:56:07'),
(24, 'Irfan Ahmed Sheikh', 'Pakistan', 1, '2020-10-23 04:56:38', '2020-10-23 04:56:38'),
(25, 'N.A. I.', 'India', 1, '2020-10-23 04:57:18', '2020-10-23 04:57:18'),
(26, 'Om Books International', 'India', 1, '2020-10-23 04:57:50', '2020-10-23 04:57:50'),
(27, 'C.B.S.', 'India', 1, '2020-10-23 04:59:06', '2020-10-23 04:59:06'),
(28, 'Shudhir Gupta', 'India', 1, '2020-10-23 04:59:43', '2020-10-23 04:59:43'),
(29, 'New age', 'India', 1, '2020-10-23 05:00:06', '2020-10-23 05:00:06'),
(30, 'The Pepin Press', 'Maloyasia', 1, '2020-10-23 05:00:49', '2020-10-23 05:00:49'),
(31, 'Adams Edu', 'U.S.A.', 1, '2020-10-23 05:01:34', '2020-10-23 05:01:34'),
(32, 'Cengage Learning', 'India', 1, '2020-10-23 06:42:07', '2020-10-23 06:42:07'),
(33, 'Shudhir Gupta', 'India', 1, '2020-10-23 06:44:49', '2020-10-23 06:44:49'),
(34, 'Chronicle Books', 'U.S.A.', 1, '2020-10-23 06:45:46', '2020-10-23 06:45:46'),
(35, 'Impact', 'India', 1, '2020-10-23 06:46:06', '2020-10-23 06:46:06'),
(36, 'N.T.J.', 'Japan', 1, '2020-10-23 06:46:55', '2020-10-23 06:46:55'),
(37, 'McGrawhill Edu.', 'India', 1, '2020-10-23 06:48:57', '2020-10-23 06:48:57'),
(38, 'Progati', 'India', 1, '2020-10-23 06:49:24', '2020-10-23 06:49:24'),
(39, 'Kuldey Jain', 'India', 1, '2020-10-23 07:16:32', '2020-10-23 07:16:32'),
(40, 'Books Fair', 'Dhaka', 1, '2020-10-23 08:45:03', '2020-10-23 08:45:03'),
(41, 'Sonali Publication', 'India', 1, '2020-10-24 07:17:49', '2020-10-24 07:17:49'),
(42, 'আন্তর্জাতিক শ্রম অফিস', 'জেনেভা', 1, '2020-11-01 21:16:36', '2020-11-01 21:16:36'),
(43, 'Intl. Labor Office', 'Geneva', 1, '2020-11-01 21:21:56', '2020-11-01 21:21:56'),
(44, 'University Press Ltd', 'Dhaka', 1, '2020-11-05 00:10:48', '2020-11-05 00:20:52'),
(45, 'Granthanir Prokashani', 'Dhaka', 1, '2020-11-05 00:49:51', '2020-11-05 00:52:38'),
(46, 'Brothers Publication', 'Dhaka', 1, '2020-11-05 20:24:27', '2020-11-05 20:24:27'),
(47, 'B.S.P Pub..', 'U.K', 1, '2020-11-05 23:49:17', '2020-11-05 23:49:17'),
(48, 'Irfan Publication', 'Pakistan', 1, '2020-11-07 00:16:52', '2020-11-07 00:16:52'),
(49, 'S.M. Khaled Publication', 'Dhaka', 1, '2020-11-07 22:12:03', '2020-11-07 22:12:03'),
(50, 'U b S Publication', 'India', 1, '2020-11-08 00:06:04', '2020-11-08 00:06:04'),
(51, 'Isamoti Pub.', 'Dhaka', 1, '2020-11-08 23:53:35', '2020-11-08 23:53:35'),
(52, 'A.R.Pub.', 'Dhaka', 1, '2020-11-09 00:15:29', '2020-11-09 00:15:29'),
(53, 'B.Jain Pub..', 'India', 1, '2020-11-10 22:14:53', '2020-11-10 22:14:53'),
(54, 'Paragon Books Ltd', 'U.K', 1, '2020-11-10 22:20:09', '2020-11-10 22:20:09'),
(55, 'Ikat Publication', 'India', 1, '2020-11-14 09:45:56', '2020-11-14 09:45:56'),
(56, 'Mahajan Publishers', 'India', 1, '2020-11-14 22:59:17', '2020-11-14 22:59:17'),
(57, 'Prime', 'Dhaka', 1, '2020-11-24 00:19:51', '2020-11-24 00:19:51'),
(58, 'Manjur Khan', 'Dhaka', 1, '2020-11-25 22:58:25', '2020-11-25 22:58:25'),
(59, 'Rocport Publisher', 'U.K.', 1, '2020-11-25 23:34:26', '2020-11-26 09:58:40'),
(60, 'Sevak Publication', 'India', 1, '2020-11-26 22:57:10', '2020-11-26 22:57:10'),
(61, 'Society of Dyers & Colourist', 'Canada', 1, '2020-11-27 21:35:07', '2020-11-27 21:35:07'),
(62, 'Elsevier', 'U.S.A.', 1, '2020-11-27 21:53:15', '2020-11-27 21:53:15'),
(63, 'Cronicle Books', 'U.S.A.', 1, '2020-11-27 22:19:54', '2020-11-27 22:19:54'),
(64, 'Campus Books', 'India', 1, '2020-11-28 03:15:41', '2020-11-28 03:15:41'),
(65, 'EIRI', 'India', 1, '2020-11-28 03:22:20', '2020-11-28 03:22:20'),
(66, 'Giri Board', 'India', 1, '2020-11-28 22:15:26', '2020-11-28 22:15:26'),
(67, 'Standard Publishers', 'India', 1, '2020-11-29 22:57:28', '2020-11-29 22:57:28'),
(68, 'Oxford & IBH Publishing', 'India', 1, '2020-11-29 23:07:16', '2020-11-29 23:07:16'),
(69, 'Eurotex', 'Italy', 1, '2020-11-29 23:59:48', '2020-11-29 23:59:48'),
(70, 'SITRA Publication', 'India', 1, '2020-11-30 23:38:51', '2020-11-30 23:38:51'),
(71, 'Nurun Nahar Publication', 'Dhaka', 1, '2020-12-02 00:23:47', '2020-12-02 00:23:47');

-- --------------------------------------------------------

--
-- Table structure for table `recks`
--

CREATE TABLE `recks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `recks`
--

INSERT INTO `recks` (`id`, `no`, `created_at`, `updated_at`) VALUES
(1, '1', '2020-06-18 00:13:15', '2020-10-22 22:12:09'),
(2, '2', '2020-08-17 00:48:13', '2020-10-23 02:11:42'),
(3, '3', '2020-09-08 09:42:36', '2020-10-23 02:11:50'),
(4, '4', '2020-09-20 00:09:41', '2020-10-23 02:11:57'),
(5, '5', '2020-09-20 00:56:23', '2020-10-23 02:12:27'),
(6, '6', '2020-10-22 22:12:33', '2020-10-23 02:12:34'),
(7, '7', '2020-10-23 03:26:40', '2020-10-23 03:26:40'),
(8, '8', '2020-10-23 03:26:47', '2020-10-23 03:26:47'),
(9, '2', '2020-10-23 03:29:21', '2020-10-23 03:29:21'),
(10, '9', '2020-10-23 03:30:58', '2020-10-23 03:30:58'),
(11, '10', '2020-10-23 03:31:04', '2020-10-23 03:31:04'),
(12, '11', '2020-10-23 03:31:09', '2020-10-23 03:31:09'),
(13, '12', '2020-10-23 03:31:16', '2020-10-23 03:31:16'),
(14, '13', '2020-10-23 03:31:22', '2020-10-23 03:31:22'),
(15, '14', '2020-10-23 03:31:29', '2020-10-23 03:31:29'),
(16, '15', '2020-10-23 03:31:35', '2020-10-23 03:31:35'),
(17, '16', '2020-10-23 03:31:41', '2020-10-23 03:31:41'),
(18, '17', '2020-10-23 03:31:47', '2020-10-23 03:31:47'),
(19, '18', '2020-10-23 03:31:53', '2020-10-23 03:31:53'),
(20, '19', '2020-10-23 03:31:59', '2020-10-23 03:31:59'),
(21, '20', '2020-10-23 03:32:05', '2020-10-23 03:32:05'),
(22, '21', '2020-10-23 03:32:11', '2020-10-23 03:32:11'),
(23, '22', '2020-10-23 03:32:17', '2020-10-23 03:32:17'),
(24, '23', '2020-10-23 03:32:26', '2020-10-23 03:32:26');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reg_no` int(11) NOT NULL,
  `department_id` int(11) NOT NULL,
  `year` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `student_session` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `varify_token` text COLLATE utf8mb4_unicode_ci,
  `remember_token` text COLLATE utf8mb4_unicode_ci,
  `varification_status` tinyint(4) NOT NULL DEFAULT '0',
  `photo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `student_status` tinyint(4) DEFAULT '0' COMMENT 'pending =0 active=1 cancel=2',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `name`, `reg_no`, `department_id`, `year`, `student_session`, `phone`, `email`, `note`, `password`, `varify_token`, `remember_token`, `varification_status`, `photo`, `student_status`, `created_at`, `updated_at`) VALUES
(2, 'NILOY BARUA', 123456, 1, '4th', '', '123456', 'niloy2@gmail.com', 'jnjknjjnjkgjnbkndfjbndfbkjfdnbdfjbnfj', '$2y$10$9UNzV2b7zOg/mjI/Zg9vwOQ/KxHBN1bdaAdplhauVXB7udngnp4au', NULL, NULL, 0, 'public/student-images/61wumn0iZSL._SY445_.jpg', 0, '2020-06-16 23:19:34', '2020-11-15 00:34:00'),
(15, 'B', 12345, 1, '2015', '', '9765', 'mdismail_2008@yahoo.com', 'sdf', '$2y$10$xAvxTmHo8EJM9EdMq0aX9uaLovdA53XVAs1KClo6H6V/yMLg54/5u', 'tvdMYjmwGuw2cU6mCFHMq0gUCUtHJ49idbSRYfw5', NULL, 0, 'public/student-images/sign.jpg', 1, '2020-06-24 06:28:32', '2020-09-24 06:04:30'),
(16, 'CURSOR', 1234567, 2, '2015', '', '777', 'mdismail_2008@yahoo.com', 'aaa', '$2y$10$Uv5AhMtA2lH9qQ4DoBTFquo6pyFdFA85YQmoiQBaaC.2cn.v0ovb.', 'sI3RGElU6mFPSIEApU1FtkSQm3kF4a8P7mkEerMv', NULL, 0, 'public/student-images/sign.jpg', 1, '2020-06-25 07:29:17', '2020-09-24 06:04:32'),
(19, 'student panel', 876, 1, '3rd', '', '01558238060', 'student@gmail.com', 'dertyu', '$2y$10$C.NR0zcuN/hf3ykq5e9MIeC/FDJwN241iZ00kCifYVaU9in1t2eHG', 'cRvAZ1XL0PjJGBLBHytT0p4KGBNsL4o6iSQGH1fI', NULL, 0, 'public/student-images/04-macbook-pro-2019.webp', 1, '2020-06-27 00:05:33', '2020-09-24 06:04:34'),
(20, 'jjj', 1478, 1, '2nd', '', '222', 'niloy@gmail.com', '1112121', '$2y$10$wt1uIunDO57Ng8h9nPJaNOvrac4w0XKfP6cqB5fw5GpToHtEjkkTy', 'A4ZasvIErJnPqZ1OlXchM44ZjkbzD2ubHIg5HrQK', NULL, 0, NULL, 1, '2020-07-04 05:51:16', '2020-09-24 06:04:35'),
(21, 'mm', 123698, 1, '2nd', '', NULL, 'vendor@gmail.com', NULL, '$2y$10$IBV2MaxZnZXd/bhuIuz6UuZ7IJUuEyJubB0/onLVaCGtKdRIcEL4a', '5Z9GvbAJvbXnaVsnFRMrol8T5W76gcXOCejBdR0T', NULL, 0, NULL, 1, '2020-07-04 06:04:31', '2020-09-24 06:04:36'),
(22, 'sudipto kumar shil', 1234, 4, '2020', '2020-2024', '01624772008', 'sudiptoshil@outlook.com', 'good', '$2y$10$tHUoBouAQopjZon13o5UZuhe2l2m9RcxnGdzOzBurpFRJAj8cCuiG', '6QJRglI3nJKzhDQKRUzc07L81x02P4yCtTZEGVhP', NULL, 0, 'public/student-images/Untitled.png', 1, '2020-09-04 23:29:27', '2020-09-24 06:04:37'),
(23, 'Khan Md. Foysol', 9090, 2, '2020', '2020-21', '01919899001', 'kmf@tecn.gov.bd', NULL, '$2y$10$KVRNHWIt8nYF7kAGDRelyOhd9fjzE2MTZiIFOqhf1V5Z2Yuj6hd86', 'FicpRb8JXYL01zDj79mNuiblSV9wlS8zCrgOj92S', NULL, 0, 'public/student-images/Desert.jpg', 1, '2020-09-08 06:40:50', '2020-09-24 06:04:37'),
(24, 'Hasan Mahmud', 1, 7, '2020', '2020-21', '01818188886', 'hm@tecn.gov.bd', NULL, '$2y$10$xhd5WHbuBLrxnI580idQKOgk1nzKQHt6in1u4pE4QmOZoawWgUtZ6', 'fzcsT2Y1ljpSKM481faUHZVX43jpJUBY0jgPlY5i', NULL, 0, NULL, 0, '2020-09-08 09:47:20', '2020-09-24 02:03:14'),
(25, 'Hector S', 1212, 3, '1234', '1234', '01866000054', 'AAA@gmail.com', NULL, '$2y$10$uXUFwGquWtrBWeNKtlQI5uEjJZRgY.hZ38NsA2Lp/NufATk6Pn0rW', '5QlfR7gGwOg6IpIizFdFLqbeH1OsrL0cI4uMIQtK', NULL, 0, NULL, 1, '2020-09-15 23:32:35', '2020-09-24 06:20:11'),
(26, 'Tanvir Hasan', 9, 3, '2019', '2017-18', '0181867676', 'tanvir@outlook.com', NULL, '$2y$10$hppAzeN.eky7ziVIQV7A/.ZKCPBDePkjefH/0GH1vgstrbix83c4i', 'y74XS9c3XI20IlJo4zkxtv6MEjOIvxMFAnMctZW4', NULL, 0, 'public/student-images/roc-theory-small.png', 1, '2020-10-21 13:32:10', '2020-10-21 13:36:47');

-- --------------------------------------------------------

--
-- Table structure for table `subcategories`
--

CREATE TABLE `subcategories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sub_cat_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subcategories`
--

INSERT INTO `subcategories` (`id`, `sub_cat_name`, `category_id`, `created_at`, `updated_at`) VALUES
(3, 'Harmony', 4, '2020-06-20 03:37:50', '2020-11-27 22:15:19'),
(4, 'Very Romantic', 7, '2020-06-20 03:38:02', '2020-09-16 02:14:52'),
(5, 'Very Funny', 6, '2020-06-20 03:38:12', '2020-06-20 03:38:12'),
(6, 'Ionic Liquids', 16, '2020-08-16 22:45:06', '2020-11-28 02:20:44'),
(7, 'High Level Language', 8, '2020-09-17 04:41:55', '2020-09-17 04:41:55'),
(8, 'Fabric', 9, '2020-10-21 13:26:26', '2020-11-26 10:08:51'),
(9, 'Harmony', 4, '2020-10-22 22:09:56', '2020-11-25 23:31:33'),
(10, 'Clothing', 10, '2020-10-23 08:32:29', '2020-10-23 08:32:29'),
(11, 'Manufacturing & Machine Maintenance', 10, '2020-10-23 08:49:26', '2020-10-23 08:49:26'),
(12, 'Merchandising', 10, '2020-10-23 20:09:25', '2020-10-23 20:09:25'),
(13, 'Costing', 10, '2020-10-24 00:24:03', '2020-10-24 00:24:03'),
(14, 'Sewn Product', 13, '2020-10-24 00:31:46', '2020-10-24 00:31:46'),
(15, 'Apparel Manufacturing', 10, '2020-10-24 09:29:39', '2020-10-24 09:29:39'),
(16, 'Machine Design', 13, '2020-10-24 09:39:54', '2020-10-24 09:39:54'),
(17, 'Apparel Industry', 14, '2020-10-24 21:32:28', '2020-10-24 21:32:28'),
(18, 'Washing & Printing', 17, '2020-10-24 21:45:51', '2020-11-28 02:48:27'),
(19, 'Dyeing & Printing', 16, '2020-10-24 21:59:10', '2020-11-27 22:33:49'),
(20, 'Home Furnishing', 20, '2020-10-27 21:21:55', '2020-11-07 23:47:50'),
(21, 'Laundry', 18, '2020-10-27 21:24:15', '2020-10-27 21:24:15'),
(22, 'Clothing Comfort', 19, '2020-10-27 23:21:24', '2020-10-27 23:21:24'),
(23, 'Clothing', 10, '2020-10-28 21:20:22', '2020-10-28 21:20:22'),
(24, 'Manufacturing & Machine Maintenance', 10, '2020-10-29 06:51:43', '2020-10-29 06:51:43'),
(25, 'Machine Maintenance', 21, '2020-10-29 06:56:50', '2020-10-29 06:56:50'),
(26, 'Industrial Production', 10, '2020-10-30 06:22:30', '2020-11-05 20:29:48'),
(27, 'Merchandising', 22, '2020-10-30 06:24:12', '2020-10-30 06:24:12'),
(28, 'Costing', 23, '2020-10-30 06:44:26', '2020-10-30 06:44:26'),
(29, 'Apparel Costing', 23, '2020-10-30 07:03:22', '2020-10-30 07:03:22'),
(30, 'Manufacturing', 20, '2020-10-31 23:26:53', '2020-10-31 23:26:53'),
(31, 'উন্নতি সাধন', 25, '2020-11-01 21:11:42', '2020-11-01 21:11:42'),
(32, 'Production Development', 26, '2020-11-01 21:20:55', '2020-11-01 21:20:55'),
(33, 'Coloration', 28, '2020-11-04 01:02:00', '2020-11-28 02:11:25'),
(34, 'Designing', 29, '2020-11-04 01:17:08', '2020-11-04 01:17:08'),
(35, 'Pattern Designing', 30, '2020-11-04 23:55:12', '2020-11-04 23:55:12'),
(36, 'Embroidery Technique', 31, '2020-11-05 00:00:15', '2020-11-05 00:00:15'),
(37, 'Garments Industry', 32, '2020-11-05 00:04:39', '2020-11-05 00:04:39'),
(38, 'Every Thing', 33, '2020-11-05 00:28:27', '2020-11-05 00:28:27'),
(39, 'Garments Technology', 34, '2020-11-05 00:45:02', '2020-11-05 00:45:02'),
(40, 'Garments Construction', 35, '2020-11-05 01:23:30', '2020-11-05 01:23:30'),
(41, 'Manufacturing', 36, '2020-11-05 20:10:19', '2020-11-05 20:10:19'),
(42, 'Merchandising', 37, '2020-11-05 22:46:49', '2020-11-05 22:46:49'),
(43, 'Industrial Production', 38, '2020-11-05 23:35:04', '2020-11-05 23:40:18'),
(44, 'Production', 39, '2020-11-05 23:48:08', '2020-11-05 23:48:08'),
(45, 'Grading', 40, '2020-11-06 22:39:56', '2020-11-06 22:39:56'),
(46, 'Management System', 41, '2020-11-06 22:46:15', '2020-11-06 22:46:15'),
(47, 'Managing Quality', 42, '2020-11-06 22:58:55', '2020-11-06 22:58:55'),
(48, 'Wears', 43, '2020-11-06 23:07:11', '2020-11-06 23:18:37'),
(49, 'Quata', 44, '2020-11-06 23:56:51', '2020-11-06 23:56:51'),
(50, 'Hygine', 45, '2020-11-07 00:02:02', '2020-11-07 00:02:02'),
(51, 'Expert', 46, '2020-11-07 00:09:13', '2020-11-07 00:12:16'),
(52, 'Quality Characteristic', 47, '2020-11-07 00:49:50', '2020-11-07 00:49:50'),
(53, 'Apparel Managaement', 48, '2020-11-07 22:20:30', '2020-11-07 22:20:30'),
(54, 'Management', 49, '2020-11-07 22:58:49', '2020-11-07 22:58:49'),
(55, 'Manufacturing', 50, '2020-11-07 23:04:32', '2020-11-07 23:06:45'),
(56, 'Manufacturing', 51, '2020-11-07 23:21:14', '2020-11-07 23:21:14'),
(57, 'Art of Sewing', 52, '2020-11-07 23:49:43', '2020-11-07 23:49:43'),
(58, 'Clothing', 53, '2020-11-07 23:52:31', '2020-11-07 23:52:31'),
(59, 'Garments Guide', 54, '2020-11-08 23:33:20', '2020-11-08 23:33:20'),
(60, 'Garments & Sweater', 55, '2020-11-09 00:17:10', '2020-11-09 00:17:10'),
(61, 'Designing', 56, '2020-11-09 20:14:08', '2020-11-09 20:14:08'),
(62, 'Fashion Sketch', 57, '2020-11-09 20:15:13', '2020-11-09 20:15:13'),
(63, 'Textiles & Fashion', 58, '2020-11-09 20:16:17', '2020-11-09 20:16:17'),
(64, 'Consumer Behavior', 59, '2020-11-09 20:18:35', '2020-11-09 20:18:35'),
(65, 'Designing', 60, '2020-11-09 20:20:47', '2020-11-09 20:20:47'),
(66, 'Draping & Patternmaking', 61, '2020-11-09 20:22:39', '2020-11-09 20:22:39'),
(67, 'Designing & Draping', 59, '2020-11-09 20:40:16', '2020-11-09 20:40:16'),
(68, 'Dress Fitting', 63, '2020-11-09 23:10:22', '2020-11-09 23:10:22'),
(69, 'Fabric Harmony', 64, '2020-11-09 23:12:26', '2020-11-09 23:12:26'),
(70, 'Consumer Concept', 65, '2020-11-09 23:24:10', '2020-11-09 23:24:10'),
(71, 'Textiles & Fashion', 66, '2020-11-09 23:40:14', '2020-11-09 23:40:14'),
(72, 'Buying', 67, '2020-11-10 00:05:40', '2020-11-10 00:05:40'),
(73, 'Illustration', 68, '2020-11-10 22:10:10', '2020-11-10 22:10:10'),
(74, 'Marketing', 69, '2020-11-10 22:29:41', '2020-11-10 22:29:41'),
(75, 'Designing', 70, '2020-11-11 22:58:56', '2020-11-11 22:58:56'),
(76, 'History', 71, '2020-11-11 23:14:53', '2020-11-11 23:14:53'),
(77, 'Business', 72, '2020-11-11 23:39:08', '2020-11-11 23:39:08'),
(78, 'Merchandising', 73, '2020-11-11 23:49:26', '2020-11-11 23:49:26'),
(79, 'Fabric & Prints', 74, '2020-11-11 23:58:55', '2020-11-11 23:58:55'),
(80, 'Colouration', 75, '2020-11-12 00:22:12', '2020-11-27 23:03:12'),
(81, 'Draping', 76, '2020-11-12 00:32:47', '2020-11-12 00:32:47'),
(82, 'Dyeing Printing', 77, '2020-11-12 00:42:43', '2020-11-28 03:00:33'),
(83, 'Making Up', 78, '2020-11-14 09:32:36', '2020-11-14 09:32:36'),
(84, 'Motif Design', 79, '2020-11-14 09:44:11', '2020-11-14 09:44:11'),
(85, 'Clothing', 80, '2020-11-14 09:48:57', '2020-11-14 09:48:57'),
(86, 'Weaving expert', 81, '2020-11-14 22:49:19', '2020-11-14 22:49:19'),
(87, 'Clothing', 82, '2020-11-14 22:55:21', '2020-11-14 22:55:21'),
(88, 'Structure', 83, '2020-11-14 23:06:50', '2020-11-14 23:06:50'),
(89, 'পাট শিল্প', 84, '2020-11-14 23:22:32', '2020-11-25 23:26:22'),
(90, 'Designing', 85, '2020-11-14 23:37:28', '2020-11-14 23:37:28'),
(91, 'Management', 86, '2020-11-23 23:14:58', '2020-11-23 23:14:58'),
(92, 'Preparation', 87, '2020-11-23 23:44:00', '2020-11-23 23:44:00'),
(93, 'Yarn To Fabric', 88, '2020-11-24 00:00:32', '2020-11-24 00:00:32'),
(94, 'Knitting', 89, '2020-11-24 00:54:02', '2020-11-24 00:54:02'),
(95, 'Draping', 90, '2020-11-25 00:08:14', '2020-11-25 00:08:14'),
(96, 'Woven', 4, '2020-11-25 22:39:31', '2020-11-25 22:39:31'),
(97, 'Woven', 4, '2020-11-25 22:41:29', '2020-11-25 22:41:29'),
(98, 'Bonded Fabrics', 4, '2020-11-25 22:54:00', '2020-11-25 23:08:39'),
(99, 'Decorating', 4, '2020-11-25 23:47:59', '2020-11-25 23:47:59'),
(100, 'Harmony', 4, '2020-11-26 09:22:07', '2020-11-26 09:22:07'),
(101, 'Manufacturing', 4, '2020-11-26 09:28:59', '2020-11-26 09:28:59'),
(102, 'Manufacturing', 91, '2020-11-26 09:34:45', '2020-11-26 09:34:45'),
(103, 'Decorating', 95, '2020-11-26 09:56:17', '2020-11-26 09:56:17'),
(104, 'Fabric', 9, '2020-11-26 10:05:28', '2020-11-26 10:05:28'),
(105, 'Nonwoven', 96, '2020-11-26 22:17:46', '2020-11-26 22:21:39'),
(106, 'Setting', 97, '2020-11-26 23:14:26', '2020-11-26 23:14:26'),
(107, 'Calculation', 98, '2020-11-26 23:30:16', '2020-11-26 23:30:16'),
(108, 'Technology', 99, '2020-11-26 23:38:56', '2020-11-26 23:38:56'),
(109, 'Chemicals', 100, '2020-11-27 21:26:31', '2020-11-27 21:49:12'),
(110, 'Bleaching', 101, '2020-11-27 21:32:43', '2020-11-27 21:32:43'),
(111, 'Colouration', 102, '2020-11-27 21:37:40', '2020-11-27 21:37:40'),
(112, 'Dyeing & Printing', 103, '2020-11-28 03:10:02', '2020-11-28 03:10:02'),
(113, 'Spinning', 104, '2020-11-30 00:20:40', '2020-11-30 00:20:40'),
(114, 'Spinning', 106, '2020-11-30 00:29:48', '2020-11-30 00:29:48'),
(115, 'Management', 107, '2020-11-30 00:43:57', '2020-11-30 00:43:57'),
(116, 'Spinning', 108, '2020-11-30 00:52:20', '2020-11-30 00:52:20'),
(117, 'Spinning', 109, '2020-11-30 01:05:43', '2020-11-30 01:05:43'),
(118, 'Spinning', 110, '2020-11-30 22:26:06', '2020-11-30 22:26:06'),
(119, 'Winding', 111, '2020-11-30 22:32:36', '2020-11-30 22:32:36'),
(120, 'Yarn', 112, '2020-11-30 23:13:28', '2020-11-30 23:13:28'),
(121, 'Manufacturing', 113, '2020-12-02 00:04:15', '2020-12-02 00:04:15');

-- --------------------------------------------------------

--
-- Table structure for table `teachers`
--

CREATE TABLE `teachers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `department_id` int(11) NOT NULL,
  `designation_id` int(10) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `teacher_status` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `teachers`
--

INSERT INTO `teachers` (`id`, `name`, `department_id`, `designation_id`, `email`, `password`, `mobile_number`, `teacher_status`, `created_at`, `updated_at`) VALUES
(2, 'Mark', 3, 2, 'mark@gmail.com', '$2y$10$YnVYXm/3RogGnhnnXzBBUOjWHMJUxliWW13zS9ZV9XQXdj64eS8Fe', '123456', 0, '2020-06-27 05:54:16', '2020-09-20 02:36:40'),
(3, 'Tanjim', 2, 2, 'mdismail_2008@yahoo.com', '$2y$10$kk.WfPCnCzSGT8aHOa5QDuUI4On5s3z4GIju1nSsn3kZkOddX7nii', '556', 0, '2020-06-27 05:55:54', '2020-09-20 02:36:39'),
(4, 'Tanjim', 2, 2, 'mdismail_2008@yahoo.com', '$2y$10$EL5Z9WKWz8TEyok/z4/c9OiCEq1PBs2VfTg7daT4ndUFxlVihLkkW', '556', 0, '2020-06-27 05:56:05', '2020-09-20 02:36:39'),
(5, 'David', 2, 2, 'david@gmail.com', '$2y$10$ZpAbatygqm135xJ2kW5nbuEi/HgAo5hCHg4fN/NaHidkAUnHILsDm', '123456', NULL, '2020-06-27 06:09:55', '2020-06-27 06:09:55'),
(6, 'Tanjim', 2, 2, 'mdismail_2008@yahoo.com', '$2y$10$Ox.okUVNlulE8bc.h3GE9Op3pRIoWIycpLtq6Wh/782f.XVaIvQGC', '556', NULL, '2020-06-27 06:19:15', '2020-06-27 06:19:15'),
(9, 'who', 3, 2, 'aaa@gmail.com', '$2y$10$mQtxwpyH6huVuT143bkRjO7WMgQfWxAXgNTCOFPRr0MLN05RG9x0m', '123456789', 0, '2020-06-30 03:22:42', '2020-07-01 06:16:49'),
(10, 'admin_super', 3, 1, '111@yahoo.com', '$2y$10$ZmdzYZZcn1.mwrU1JpTDBuYnNhpVF.sBuLkPUlw/cAU0nSpfK9/.6', '556', NULL, '2020-07-02 03:46:06', '2020-07-02 03:46:06'),
(11, 'BBB', 1, 2, 'mdismail_2008@yahoo.com', '$2y$10$FGu1Zo6e97K17LnTgIXzBOuWQXwaH5mHnlsoezeCYGfBd9TgMBlKm', '556', NULL, '2020-07-03 22:39:41', '2020-07-03 22:39:41'),
(13, 'sudipto kumar shil', 4, 2, 'sudiptoshil@outlook.com', '$2y$10$.0BnDCotZLXkZ68FW.WGNeGB5BCDpttQZyepQCAVoh6YnDKXYsf4K', '01624772008', NULL, '2020-09-04 23:11:27', '2020-09-04 23:11:27'),
(14, 'Engr.A.K.M Fazlul Haque', 5, 4, 'akm@tecn.gov.bd', '$2y$10$YDLlzx0BxBy78uPY9Kbn4e2LIvGApy76jZoxYunMJk0mkZPFKH872', '01818189999', NULL, '2020-09-08 06:44:02', '2020-09-08 06:44:02'),
(15, 'Abdus Sattar', 8, 3, 'as@tecn.gov.bd', '$2y$10$pTjOZrwR6/0f2jbHuwfvuOcO0McEzFNWG4JZaz/hyu9j.Jif93yj.', '0181899494', NULL, '2020-09-08 09:53:03', '2020-09-08 09:53:03'),
(16, 'Hector S', 3, 3, 'sayem@gmail.com', '$2y$10$.iQpeLJwupcVvfULBKqU0.Fr8yryI29OhCo2ImyybaXZkGLIC/5DW', '1234567', NULL, '2020-09-16 02:31:01', '2020-09-16 02:31:01'),
(17, 'admin', 2, 2, 'sam@gmail', '$2y$10$5LllfKNUHBLFkWE47u6/..d1hwQfWBlgU1B.f3Pq6aAiZ3iO8RsZK', '321', NULL, '2020-09-26 04:35:07', '2020-09-26 04:35:07'),
(18, 'Saiful Islam', 7, 8, 's@gamil.com', '$2y$10$XfFmx6KGDLhxRZ6lb/rdCONLJczqTTwrfLNF0DxiT346.9akxp5kG', '01819099900', NULL, '2020-11-15 00:36:36', '2020-11-15 00:36:36');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'sudipto kumar shil', 'sudiptoshil@outlook.com', NULL, '$2y$10$HgeE3AlnBidwVEN74yKeH.LmG/UvJf2WjzngJi4KOWluXLNhTxwga', NULL, '2020-06-15 05:45:32', '2020-06-15 05:45:32');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `authors`
--
ALTER TABLE `authors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bookings`
--
ALTER TABLE `bookings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `book_infos`
--
ALTER TABLE `book_infos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `charges`
--
ALTER TABLE `charges`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `designations`
--
ALTER TABLE `designations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notices`
--
ALTER TABLE `notices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `publications`
--
ALTER TABLE `publications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `recks`
--
ALTER TABLE `recks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `reg_no` (`reg_no`);

--
-- Indexes for table `subcategories`
--
ALTER TABLE `subcategories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teachers`
--
ALTER TABLE `teachers`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `authors`
--
ALTER TABLE `authors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=155;

--
-- AUTO_INCREMENT for table `bookings`
--
ALTER TABLE `bookings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=819;

--
-- AUTO_INCREMENT for table `book_infos`
--
ALTER TABLE `book_infos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=821;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=114;

--
-- AUTO_INCREMENT for table `charges`
--
ALTER TABLE `charges`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `designations`
--
ALTER TABLE `designations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `notices`
--
ALTER TABLE `notices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `publications`
--
ALTER TABLE `publications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT for table `recks`
--
ALTER TABLE `recks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `subcategories`
--
ALTER TABLE `subcategories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=122;

--
-- AUTO_INCREMENT for table `teachers`
--
ALTER TABLE `teachers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
