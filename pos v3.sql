-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 26, 2022 at 12:15 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pos`
--

-- --------------------------------------------------------

--
-- Table structure for table `account_other_costs`
--

CREATE TABLE `account_other_costs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `date` date DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `account_other_costs`
--

INSERT INTO `account_other_costs` (`id`, `date`, `amount`, `description`, `image`, `created_at`, `updated_at`) VALUES
(3, '2022-02-01', 10000, 'Monitor', '2022020106473474360.png', '2022-02-01 00:47:25', '2022-02-01 00:47:25'),
(4, '2022-02-01', 15000, 'Logo Design', '202202010648logo.png', '2022-02-01 00:48:04', '2022-02-01 00:48:04');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(16, 'Mobile', 1, 1, NULL, '2022-02-01 00:29:22', '2022-02-01 00:29:22'),
(17, 'Monitor', 1, 1, NULL, '2022-02-01 00:29:30', '2022-02-01 00:29:30'),
(18, 'TV', 1, 1, NULL, '2022-02-01 00:29:37', '2022-02-01 00:29:37'),
(19, 'Laptop', 1, 1, NULL, '2022-02-01 00:29:44', '2022-02-01 00:29:44'),
(20, 'Desktop', 1, 1, NULL, '2022-02-01 00:29:53', '2022-02-01 00:29:53'),
(21, 'AC', 1, 1, NULL, '2022-02-01 00:30:05', '2022-02-01 00:30:05');

-- --------------------------------------------------------

--
-- Table structure for table `chats`
--

CREATE TABLE `chats` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `text` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sender_id` int(11) DEFAULT NULL,
  `reciever_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `chats`
--

INSERT INTO `chats` (`id`, `user_id`, `text`, `sender_id`, `reciever_id`, `created_at`, `updated_at`) VALUES
(28, 1, 'hi mayruful', 1, 54, '2022-01-30 03:56:01', '2022-01-30 03:56:01'),
(29, 1, 'Hi Mahdi', 1, 55, '2022-01-30 03:56:17', '2022-01-30 03:56:17'),
(30, 1, 'jvkj', 1, 76, '2022-01-31 22:27:55', '2022-01-31 22:27:55'),
(31, 1, 'hi', 1, 87, '2022-02-06 00:14:17', '2022-02-06 00:14:17'),
(32, 1, 'Hello Guys, This is a public Group Chat. Everyone can text here', NULL, NULL, '2022-02-26 04:38:09', '2022-02-26 04:38:09'),
(33, 86, 'Ok, We will text here for random chat', NULL, NULL, '2022-02-26 04:51:12', '2022-02-26 04:51:12'),
(34, 86, 'Hi, Sahadat.', 86, 1, '2022-02-26 04:52:18', '2022-02-26 04:52:18'),
(35, 1, 'Hello Mayruful.', 1, 86, '2022-02-26 04:53:24', '2022-02-26 04:53:24'),
(36, 1, 'Have you finished writing the report?', 1, 87, '2022-02-26 04:54:25', '2022-02-26 04:54:25'),
(37, 87, 'Welcome to the public group', NULL, NULL, '2022-02-26 05:00:19', '2022-02-26 05:00:19'),
(38, 87, 'No, I am waiting for you and mayruful. We will do it together.', 87, 1, '2022-02-26 05:02:11', '2022-02-26 05:02:11'),
(39, 87, 'hi mayruful', 87, 86, '2022-02-26 05:02:30', '2022-02-26 05:02:30'),
(40, 1, 'Let\'s make easy solution for Inventory Management', NULL, NULL, '2022-02-26 05:05:14', '2022-02-26 05:05:14'),
(41, 1, 'Please, give me a call : 01738309749', 1, 86, '2022-02-26 05:06:49', '2022-02-26 05:06:49'),
(42, 1, 'OK. we are coming. 🕗', 1, 87, '2022-02-26 05:07:47', '2022-02-26 05:07:47');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `name`, `mobile_no`, `email`, `address`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(13, 'Delwar Raju', '01929999749', NULL, 'Sylhet', 1, NULL, NULL, '2022-02-01 00:49:53', '2022-02-01 00:49:53'),
(14, 'Tanvir Ahmed', '01903409749', NULL, 'KumarPara', 1, NULL, NULL, '2022-02-01 00:52:01', '2022-02-01 00:52:01'),
(15, 'Fozlur Rahman', '01899999749', NULL, 'Uposohor , Block A', 1, NULL, NULL, '2022-02-01 00:53:31', '2022-02-01 00:53:31'),
(16, 'Hasan Khan', '01923098749', NULL, 'Gazipur,102, Dhaka', 1, NULL, NULL, '2022-02-01 00:54:49', '2022-02-01 00:54:49'),
(17, 'Abdullah', '01987809749', NULL, 'Alompur, Sylhet', 1, NULL, NULL, '2022-02-06 02:30:50', '2022-02-06 02:30:50'),
(18, 'Alom Chowdhury', '01789609749', NULL, 'Mothijhil,Dhaka', 1, NULL, NULL, '2022-02-08 02:48:54', '2022-02-08 02:48:54'),
(19, 'Arif Azad', '01735306579', NULL, 'Arambag, Sylhet', 1, NULL, NULL, '2022-02-26 04:31:59', '2022-02-26 04:31:59'),
(20, 'Riyad Chowdhury', '01924509749', NULL, 'Tilagor, Sylhet', 1, NULL, NULL, '2022-02-26 05:11:53', '2022-02-26 05:11:53'),
(21, 'Sakhawath', '01740962011', NULL, 'Noyasorok, Sylhet', 1, NULL, NULL, '2022-02-26 05:13:45', '2022-02-26 05:13:45');

-- --------------------------------------------------------

--
-- Table structure for table `designations`
--

CREATE TABLE `designations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `designations`
--

INSERT INTO `designations` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Employee', '2021-01-02 16:07:30', '2021-01-02 16:07:30');

-- --------------------------------------------------------

--
-- Table structure for table `employee_attendances`
--

CREATE TABLE `employee_attendances` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `employee_id` int(11) NOT NULL COMMENT 'employee_id = user_id',
  `date` date NOT NULL,
  `attend_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employee_attendances`
--

INSERT INTO `employee_attendances` (`id`, `employee_id`, `date`, `attend_status`, `created_at`, `updated_at`) VALUES
(50, 95, '2022-01-01', 'Present', '2022-02-01 00:24:11', '2022-02-01 00:24:11'),
(51, 96, '2022-01-01', 'Leave', '2022-02-01 00:24:12', '2022-02-01 00:24:12'),
(52, 97, '2022-01-01', 'Present', '2022-02-01 00:24:12', '2022-02-01 00:24:12'),
(53, 98, '2022-01-01', 'Absent', '2022-02-01 00:24:12', '2022-02-01 00:24:12'),
(54, 99, '2022-01-01', 'Present', '2022-02-01 00:24:12', '2022-02-01 00:24:12'),
(55, 100, '2022-01-01', 'Present', '2022-02-01 00:24:12', '2022-02-01 00:24:12'),
(56, 101, '2022-01-01', 'Present', '2022-02-01 00:24:12', '2022-02-01 00:24:12'),
(57, 95, '2022-01-29', 'Present', '2022-02-01 00:24:36', '2022-02-01 00:24:36'),
(58, 96, '2022-01-29', 'Leave', '2022-02-01 00:24:36', '2022-02-01 00:24:36'),
(59, 97, '2022-01-29', 'Present', '2022-02-01 00:24:36', '2022-02-01 00:24:36'),
(60, 98, '2022-01-29', 'Absent', '2022-02-01 00:24:36', '2022-02-01 00:24:36'),
(61, 99, '2022-01-29', 'Present', '2022-02-01 00:24:36', '2022-02-01 00:24:36'),
(62, 100, '2022-01-29', 'Present', '2022-02-01 00:24:36', '2022-02-01 00:24:36'),
(63, 101, '2022-01-29', 'Present', '2022-02-01 00:24:36', '2022-02-01 00:24:36'),
(64, 95, '2022-02-01', 'Present', '2022-02-01 00:24:55', '2022-02-01 00:24:55'),
(65, 96, '2022-02-01', 'Present', '2022-02-01 00:24:55', '2022-02-01 00:24:55'),
(66, 97, '2022-02-01', 'Present', '2022-02-01 00:24:55', '2022-02-01 00:24:55'),
(67, 98, '2022-02-01', 'Present', '2022-02-01 00:24:55', '2022-02-01 00:24:55'),
(68, 99, '2022-02-01', 'Absent', '2022-02-01 00:24:55', '2022-02-01 00:24:55'),
(69, 100, '2022-02-01', 'Absent', '2022-02-01 00:24:55', '2022-02-01 00:24:55'),
(70, 101, '2022-02-01', 'Present', '2022-02-01 00:24:55', '2022-02-01 00:24:55'),
(71, 95, '2022-02-02', 'Present', '2022-02-01 01:11:51', '2022-02-01 01:11:51'),
(72, 96, '2022-02-02', 'Leave', '2022-02-01 01:11:51', '2022-02-01 01:11:51'),
(73, 97, '2022-02-02', 'Present', '2022-02-01 01:11:51', '2022-02-01 01:11:51'),
(74, 98, '2022-02-02', 'Absent', '2022-02-01 01:11:51', '2022-02-01 01:11:51'),
(75, 99, '2022-02-02', 'Present', '2022-02-01 01:11:51', '2022-02-01 01:11:51'),
(76, 100, '2022-02-02', 'Present', '2022-02-01 01:11:51', '2022-02-01 01:11:51'),
(77, 101, '2022-02-02', 'Present', '2022-02-01 01:11:51', '2022-02-01 01:11:51');

-- --------------------------------------------------------

--
-- Table structure for table `employee_leaves`
--

CREATE TABLE `employee_leaves` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `employee_id` int(11) NOT NULL COMMENT 'employee_id = user_id',
  `leave_purpose_id` int(11) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employee_leaves`
--

INSERT INTO `employee_leaves` (`id`, `employee_id`, `leave_purpose_id`, `start_date`, `end_date`, `created_at`, `updated_at`) VALUES
(4, 95, 3, '2022-02-01', '2022-02-05', '2022-02-01 00:22:28', '2022-02-01 00:22:28'),
(5, 98, 4, '2022-02-04', '2022-02-06', '2022-02-01 00:23:32', '2022-02-01 00:23:32'),
(6, 97, 3, '2022-02-03', '2022-02-10', '2022-02-01 01:11:20', '2022-02-01 01:11:20');

-- --------------------------------------------------------

--
-- Table structure for table `employee_salary_logs`
--

CREATE TABLE `employee_salary_logs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `employee_id` int(11) NOT NULL COMMENT 'employee_id = user_id',
  `previous_salary` int(11) DEFAULT NULL,
  `present_salary` int(11) DEFAULT NULL,
  `increment_salary` int(11) DEFAULT NULL,
  `effected_date` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employee_salary_logs`
--

INSERT INTO `employee_salary_logs` (`id`, `employee_id`, `previous_salary`, `present_salary`, `increment_salary`, `effected_date`, `created_at`, `updated_at`) VALUES
(13, 68, 13000, 13000, 0, '2021-12-01', '2022-01-31 05:29:16', '2022-01-31 05:29:16'),
(14, 69, 13000, 13000, 0, '2021-12-01', '2022-01-31 05:37:11', '2022-01-31 05:37:11'),
(15, 69, 13000, 14000, 1000, '2022-01-31', '2022-01-31 06:19:30', '2022-01-31 06:19:30'),
(16, 70, 13500, 13500, 0, '2021-12-02', '2022-01-31 06:21:22', '2022-01-31 06:21:22'),
(17, 73, 14500, 14500, 0, '2021-12-03', '2022-01-31 06:24:08', '2022-01-31 06:24:08'),
(18, 74, 10500, 10500, 0, '2021-12-04', '2022-01-31 06:25:26', '2022-01-31 06:25:26'),
(19, 75, 11500, 11500, 0, '2021-12-11', '2022-01-31 06:26:47', '2022-01-31 06:26:47'),
(20, 78, 13500, 13500, 0, '2022-02-01', '2022-01-31 13:01:21', '2022-01-31 13:01:21'),
(21, 78, 13500, 14500, 1000, '2022-02-01', '2022-01-31 13:02:47', '2022-01-31 13:02:47'),
(22, 82, 12000, 12000, 0, '2022-02-01', '2022-01-31 13:18:43', '2022-01-31 13:18:43'),
(23, 83, 13500, 13500, 0, '2022-02-02', '2022-01-31 13:21:50', '2022-01-31 13:21:50'),
(24, 84, 14000, 14000, 0, '2022-02-01', '2022-01-31 13:24:55', '2022-01-31 13:24:55'),
(25, 85, 12000, 12000, 0, '2022-02-01', '2022-01-31 13:27:19', '2022-01-31 13:27:19'),
(26, 95, 14500, 14500, 0, '2021-12-01', '2022-02-01 00:11:14', '2022-02-01 00:11:14'),
(27, 96, 15000, 15000, 0, '2021-12-02', '2022-02-01 00:13:14', '2022-02-01 00:13:14'),
(28, 97, 12000, 12000, 0, '2022-01-02', '2022-02-01 00:14:13', '2022-02-01 00:14:13'),
(29, 98, 14500, 14500, 0, '2021-12-01', '2022-02-01 00:15:52', '2022-02-01 00:15:52'),
(30, 99, 13000, 13000, 0, '2021-12-02', '2022-02-01 00:16:55', '2022-02-01 00:16:55'),
(31, 100, 17000, 17000, 0, '2022-01-02', '2022-02-01 00:18:52', '2022-02-01 00:18:52'),
(32, 101, 17500, 17500, 0, '2021-12-02', '2022-02-01 00:20:21', '2022-02-01 00:20:21'),
(33, 95, 14500, 15500, 1000, '2022-02-01', '2022-02-01 00:21:33', '2022-02-01 00:21:33'),
(34, 95, 15500, 20500, 5000, '2022-02-01', '2022-02-01 01:10:52', '2022-02-01 01:10:52');

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
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `group_chats`
--

CREATE TABLE `group_chats` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `group_chats`
--

INSERT INTO `group_chats` (`id`, `user_id`, `name`, `text`, `created_at`, `updated_at`) VALUES
(43, 1, 'Dev Team', NULL, '2022-02-26 04:38:53', '2022-02-26 04:38:53'),
(44, 86, 'Dev Team', NULL, '2022-02-26 04:38:53', '2022-02-26 04:38:53'),
(45, 87, 'Dev Team', NULL, '2022-02-26 04:38:53', '2022-02-26 04:38:53'),
(46, NULL, 'Dev Team', NULL, '2022-02-26 04:38:53', '2022-02-26 04:38:53'),
(47, NULL, 'Dev Team', NULL, '2022-02-26 04:38:53', '2022-02-26 04:38:53'),
(48, 1, 'Dev Team', 'This group is only for developers. Have fun!', '2022-02-26 04:42:48', '2022-02-26 04:42:48'),
(49, 86, 'Dev Team', 'Ok. Thanks for the group', '2022-02-26 04:51:51', '2022-02-26 04:51:51'),
(50, 87, 'Dev Team', 'Developing real life application is really fun', '2022-02-26 05:01:31', '2022-02-26 05:01:31'),
(51, 87, 'Dev Team', 'Best of luck for our IMS web app', '2022-02-26 05:03:53', '2022-02-26 05:03:53'),
(52, 1, 'Dev Team', 'We will do it together ❤❤', '2022-02-26 05:06:15', '2022-02-26 05:06:15');

-- --------------------------------------------------------

--
-- Table structure for table `invoices`
--

CREATE TABLE `invoices` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `invoice_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` date DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0 = Pending | 1 = Approved',
  `created_by` int(11) DEFAULT NULL,
  `approved_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `invoices`
--

INSERT INTO `invoices` (`id`, `invoice_no`, `date`, `description`, `status`, `created_by`, `approved_by`, `created_at`, `updated_at`) VALUES
(16, '1', '2022-01-08', NULL, 1, 1, 1, '2022-02-01 00:49:53', '2022-02-01 00:50:01'),
(17, '2', '2022-02-01', NULL, 1, 1, 1, '2022-02-01 00:52:01', '2022-02-01 00:52:08'),
(18, '3', '2022-02-01', NULL, 1, 1, 1, '2022-02-01 00:53:30', '2022-02-01 00:53:37'),
(19, '4', '2022-02-01', NULL, 1, 1, 1, '2022-02-01 00:54:49', '2022-02-01 00:54:55'),
(20, '5', '2022-02-01', 'Samsung Galaxy A20 5 Pics', 0, 1, NULL, '2022-02-01 00:59:56', '2022-02-01 00:59:56'),
(21, '6', '2022-02-01', 'Samsung 21 inch Monitor full due', 0, 1, NULL, '2022-02-01 01:00:49', '2022-02-01 01:00:49'),
(22, '7', '2022-02-01', NULL, 1, 1, 1, '2022-02-01 01:15:34', '2022-02-01 01:15:46'),
(23, '8', '2022-02-06', NULL, 1, 1, 1, '2022-02-06 02:30:50', '2022-02-06 02:30:58'),
(24, '9', '2022-02-06', NULL, 1, 1, 1, '2022-02-06 02:55:17', '2022-02-06 02:55:23'),
(25, '10', '2022-02-08', NULL, 1, 1, 1, '2022-02-08 02:48:54', '2022-02-08 02:49:02'),
(26, '11', '2022-02-26', NULL, 1, 1, 1, '2022-02-26 04:29:49', '2022-02-26 04:30:03'),
(27, '12', '2022-02-26', NULL, 1, 1, 1, '2022-02-26 04:31:59', '2022-02-26 04:32:11'),
(28, '13', '2022-02-26', 'Samsung 21 inch Monitor to a local businessman', 1, 1, 1, '2022-02-26 05:11:53', '2022-02-26 05:11:58'),
(29, '14', '2022-02-26', 'i-phone 13 Pro Max to a local businessman', 1, 1, 1, '2022-02-26 05:13:45', '2022-02-26 05:13:55');

-- --------------------------------------------------------

--
-- Table structure for table `invoice_details`
--

CREATE TABLE `invoice_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `date` date DEFAULT NULL,
  `invoice_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `selling_qty` double NOT NULL,
  `unit_price` double NOT NULL,
  `selling_price` double NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `invoice_details`
--

INSERT INTO `invoice_details` (`id`, `date`, `invoice_id`, `category_id`, `product_id`, `selling_qty`, `unit_price`, `selling_price`, `status`, `created_at`, `updated_at`) VALUES
(30, '2022-01-08', 16, 16, 16, 10, 48000, 480000, 1, '2022-02-01 00:49:53', '2022-02-01 00:50:01'),
(31, '2022-02-01', 17, 17, 18, 7, 30000, 210000, 1, '2022-02-01 00:52:01', '2022-02-01 00:52:08'),
(32, '2022-02-01', 18, 16, 24, 5, 130000, 650000, 1, '2022-02-01 00:53:31', '2022-02-01 00:53:37'),
(33, '2022-02-01', 19, 16, 24, 3, 130000, 390000, 1, '2022-02-01 00:54:49', '2022-02-01 00:54:55'),
(34, '2022-02-01', 20, 16, 17, 5, 50000, 250000, 0, '2022-02-01 00:59:56', '2022-02-01 00:59:56'),
(35, '2022-02-01', 21, 17, 18, 11, 54000, 594000, 0, '2022-02-01 01:00:50', '2022-02-01 01:00:50'),
(36, '2022-02-01', 22, 16, 16, 11, 50000, 550000, 1, '2022-02-01 01:15:34', '2022-02-01 01:15:46'),
(37, '2022-02-06', 23, 17, 18, 4, 55000, 220000, 1, '2022-02-06 02:30:50', '2022-02-06 02:30:58'),
(38, '2022-02-06', 24, 16, 16, 1, 54000, 54000, 1, '2022-02-06 02:55:17', '2022-02-06 02:55:23'),
(39, '2022-02-08', 25, 19, 20, 2, 55000, 110000, 1, '2022-02-08 02:48:54', '2022-02-08 02:49:02'),
(40, '2022-02-26', 26, 19, 20, 10, 70000, 700000, 1, '2022-02-26 04:29:49', '2022-02-26 04:30:03'),
(41, '2022-02-26', 27, 16, 16, 100, 50000, 5000000, 1, '2022-02-26 04:31:59', '2022-02-26 04:32:10'),
(42, '2022-02-26', 28, 17, 18, 41, 150000, 6150000, 1, '2022-02-26 05:11:53', '2022-02-26 05:11:58'),
(43, '2022-02-26', 29, 16, 24, 71, 300000, 21300000, 1, '2022-02-26 05:13:45', '2022-02-26 05:13:55');

-- --------------------------------------------------------

--
-- Table structure for table `leave_purposes`
--

CREATE TABLE `leave_purposes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `leave_purposes`
--

INSERT INTO `leave_purposes` (`id`, `name`, `created_at`, `updated_at`) VALUES
(3, 'illness', '2022-02-01 00:22:28', '2022-02-01 00:22:28'),
(4, 'Abroad Tour', '2022-02-01 00:23:31', '2022-02-01 00:23:31');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `notices`
--

CREATE TABLE `notices` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notices`
--

INSERT INTO `notices` (`id`, `title`, `description`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(12, 'Covid Vaccine', 'Everyone should take vaccine imedately', 1, 1, NULL, '2022-02-01 01:21:51', '2022-02-01 01:22:27');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `ip_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_paid` tinyint(1) NOT NULL DEFAULT 0,
  `is_completed` tinyint(1) NOT NULL DEFAULT 0,
  `is_seen_by_admin` tinyint(1) NOT NULL DEFAULT 0,
  `transaction_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `payment_id` int(20) DEFAULT NULL,
  `shipping_charge` int(255) DEFAULT NULL,
  `custom_discount` int(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `invoice_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `paid_status` varchar(51) COLLATE utf8mb4_unicode_ci NOT NULL,
  `paid_amount` double DEFAULT NULL,
  `due_amount` double DEFAULT NULL,
  `total_amount` double DEFAULT NULL,
  `discount_amount` double DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`id`, `invoice_id`, `customer_id`, `paid_status`, `paid_amount`, `due_amount`, `total_amount`, `discount_amount`, `created_at`, `updated_at`) VALUES
(16, 16, 13, 'full_paid', 479900, 0, 479900, 100, '2022-02-01 00:49:53', '2022-02-01 00:49:53'),
(17, 17, 14, 'partial_paid', 150000, 58500, 208500, 1500, '2022-02-01 00:52:01', '2022-02-01 00:52:01'),
(18, 18, 15, 'full_paid', 648000, 0, 648000, 2000, '2022-02-01 00:53:31', '2022-02-01 00:53:31'),
(19, 19, 16, 'full_due', 0, 390000, 390000, 0, '2022-02-01 00:54:49', '2022-02-01 00:54:49'),
(20, 20, 14, 'partial_paid', 200000, 50000, 250000, 0, '2022-02-01 00:59:56', '2022-02-01 00:59:56'),
(21, 21, 15, 'full_due', 0, 594000, 594000, 0, '2022-02-01 01:00:50', '2022-02-01 01:00:50'),
(22, 22, 14, 'full_paid', 549000, 0, 549000, 1000, '2022-02-01 01:15:34', '2022-02-01 01:15:34'),
(23, 23, 17, 'partial_paid', 200000, 20000, 220000, 0, '2022-02-06 02:30:50', '2022-02-06 02:30:50'),
(24, 24, 13, 'full_due', 0, 54000, 54000, 0, '2022-02-06 02:55:17', '2022-02-06 02:55:17'),
(25, 25, 18, 'full_paid', 109000, 0, 109000, 1000, '2022-02-08 02:48:54', '2022-02-08 02:48:54'),
(26, 26, 17, 'full_paid', 700000, 0, 700000, 0, '2022-02-26 04:29:49', '2022-02-26 04:29:49'),
(27, 27, 19, 'full_paid', 4999900, 0, 4999900, 100, '2022-02-26 04:31:59', '2022-02-26 04:31:59'),
(28, 28, 20, 'full_paid', 6148000, 0, 6148000, 2000, '2022-02-26 05:11:53', '2022-02-26 05:11:53'),
(29, 29, 21, 'full_paid', 21299000, 0, 21299000, 1000, '2022-02-26 05:13:45', '2022-02-26 05:13:45');

-- --------------------------------------------------------

--
-- Table structure for table `payment_details`
--

CREATE TABLE `payment_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `invoice_id` int(11) NOT NULL,
  `current_paid_amount` double DEFAULT NULL,
  `date` date DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payment_details`
--

INSERT INTO `payment_details` (`id`, `invoice_id`, `current_paid_amount`, `date`, `updated_by`, `created_at`, `updated_at`) VALUES
(23, 16, 479900, '2022-01-08', NULL, '2022-02-01 00:49:53', '2022-02-01 00:49:53'),
(24, 17, 150000, '2022-02-01', NULL, '2022-02-01 00:52:01', '2022-02-01 00:52:01'),
(25, 18, 648000, '2022-02-01', NULL, '2022-02-01 00:53:31', '2022-02-01 00:53:31'),
(26, 19, 0, '2022-02-01', NULL, '2022-02-01 00:54:49', '2022-02-01 00:54:49'),
(27, 20, 200000, '2022-02-01', NULL, '2022-02-01 00:59:56', '2022-02-01 00:59:56'),
(28, 21, 0, '2022-02-01', NULL, '2022-02-01 01:00:50', '2022-02-01 01:00:50'),
(29, 22, 549000, '2022-02-01', NULL, '2022-02-01 01:15:34', '2022-02-01 01:15:34'),
(30, 23, 200000, '2022-02-06', NULL, '2022-02-06 02:30:50', '2022-02-06 02:30:50'),
(31, 24, 0, '2022-02-06', NULL, '2022-02-06 02:55:17', '2022-02-06 02:55:17'),
(32, 25, 109000, '2022-02-08', NULL, '2022-02-08 02:48:54', '2022-02-08 02:48:54'),
(33, 26, 700000, '2022-02-26', NULL, '2022-02-26 04:29:49', '2022-02-26 04:29:49'),
(34, 27, 4999900, '2022-02-26', NULL, '2022-02-26 04:31:59', '2022-02-26 04:31:59'),
(35, 28, 6148000, '2022-02-26', NULL, '2022-02-26 05:11:53', '2022-02-26 05:11:53'),
(36, 29, 21299000, '2022-02-26', NULL, '2022-02-26 05:13:45', '2022-02-26 05:13:45');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `supplier_id` int(11) NOT NULL,
  `unit_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` double NOT NULL DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `supplier_id`, `unit_id`, `category_id`, `name`, `quantity`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(16, 10, 2, 16, 'Samsung Galaxy S21', 39, 1, 1, NULL, '2022-02-01 00:30:37', '2022-02-26 04:32:11'),
(17, 10, 2, 16, 'Samsung Galaxy A20', 121, 1, 1, NULL, '2022-02-01 00:32:41', '2022-02-01 01:14:34'),
(18, 10, 2, 17, 'Samsung 21 inch Monitor', 18, 1, 1, NULL, '2022-02-01 00:33:15', '2022-02-26 05:11:58'),
(19, 11, 2, 16, 'Primo V3', 0, 1, 1, NULL, '2022-02-01 00:37:47', '2022-02-01 00:37:47'),
(20, 11, 2, 19, 'Walton Laptop', 8, 1, 1, NULL, '2022-02-01 00:38:43', '2022-02-26 04:30:03'),
(21, 11, 2, 21, 'Walton AC', 0, 1, 1, NULL, '2022-02-01 00:39:04', '2022-02-01 00:39:04'),
(22, 12, 2, 17, 'LG Monitor', 0, 1, 1, NULL, '2022-02-01 00:41:44', '2022-02-01 00:41:44'),
(23, 12, 2, 21, 'LG AC', 0, 1, 1, NULL, '2022-02-01 00:42:05', '2022-02-01 00:42:05'),
(24, 13, 2, 16, 'i-phone 13 Pro Max', 22, 1, 1, NULL, '2022-02-01 00:42:40', '2022-02-26 05:13:55'),
(25, 13, 2, 16, 'i-phone 12 Pro Max', 0, 1, 1, NULL, '2022-02-01 00:43:00', '2022-02-01 00:43:00'),
(26, 13, 2, 17, 'Apple 24 inch Monitor', 21, 1, 1, NULL, '2022-02-01 00:43:33', '2022-02-01 00:46:11'),
(27, 10, 2, 16, 'Samsung Galaxy S20', 0, 1, 1, NULL, '2022-02-01 01:13:41', '2022-02-01 01:13:41');

-- --------------------------------------------------------

--
-- Table structure for table `product__images`
--

CREATE TABLE `product__images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `purchases`
--

CREATE TABLE `purchases` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `supplier_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `purchase_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `buying_qty` double NOT NULL,
  `unit_price` double NOT NULL,
  `buying_price` double NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '0 = pending , 1 = approved',
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `purchases`
--

INSERT INTO `purchases` (`id`, `supplier_id`, `category_id`, `product_id`, `purchase_no`, `date`, `description`, `buying_qty`, `unit_price`, `buying_price`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(30, 10, 16, 16, 'PP1', '2022-01-01', '64 Mega Pixel Camera with 8GB RAM', 101, 45000, 4545000, 1, 1, NULL, '2022-02-01 00:32:00', '2022-02-01 00:32:00'),
(31, 10, 16, 17, 'PP31', '2021-12-01', '48 Mega Pixel Camera with 8GB RAM', 80, 34000, 2720000, 1, 1, NULL, '2022-02-01 00:34:02', '2022-02-01 00:34:02'),
(32, 10, 17, 18, 'PP32', '2021-12-04', 'Full HD Display ratina protection', 30, 25000, 750000, 1, 1, NULL, '2022-02-01 00:34:50', '2022-02-01 00:34:50'),
(33, 10, 16, 16, 'PP33', '2022-02-01', '64 Mega Pixel Camera with 8GB RAM', 60, 45000, 2700000, 1, 1, NULL, '2022-02-01 00:36:17', '2022-02-01 00:36:17'),
(34, 10, 17, 18, 'PP34', '2022-02-01', 'Full HD Display ratina protection', 20, 25000, 500000, 1, 1, NULL, '2022-02-01 00:36:45', '2022-02-01 00:36:45'),
(35, 10, 17, 18, 'PP35', '2022-02-01', 'Full HD Display ratina protection', 20, 25000, 500000, 1, 1, NULL, '2022-02-01 00:36:45', '2022-02-01 00:36:45'),
(36, 11, 19, 20, 'PP36', '2022-02-01', '8 GB RAM , Core i3', 20, 30000, 600000, 1, 1, NULL, '2022-02-01 00:39:54', '2022-02-01 00:39:54'),
(37, 11, 21, 21, 'PP37', '2022-02-01', NULL, 10, 80000, 800000, 0, 1, NULL, '2022-02-01 00:40:21', '2022-02-01 00:40:21'),
(38, 13, 16, 24, 'PP38', '2022-02-01', '64 Mega Pixel Camera with 8GB RAM', 101, 120000, 12120000, 1, 1, NULL, '2022-02-01 00:44:15', '2022-02-01 00:44:15'),
(39, 13, 16, 25, 'PP39', '2022-02-01', '48 Mega Pixel Camera with 8GB RAM', 21, 100000, 2100000, 0, 1, NULL, '2022-02-01 00:44:46', '2022-02-01 00:44:46'),
(40, 13, 17, 26, 'PP40', '2022-02-01', 'Full HD Display ratina protection', 21, 50000, 1050000, 1, 1, NULL, '2022-02-01 00:45:17', '2022-02-01 00:45:17'),
(41, 13, 17, 26, 'PP41', '2022-02-01', '4k Display', 31, 50000, 1550000, 0, 1, NULL, '2022-02-01 00:45:55', '2022-02-01 00:45:55'),
(42, 10, 16, 17, 'PP42', '2022-02-01', '8 GB RAM ,', 41, 40000, 1640000, 1, 1, NULL, '2022-02-01 01:14:21', '2022-02-01 01:14:21');

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

CREATE TABLE `suppliers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `suppliers`
--

INSERT INTO `suppliers` (`id`, `name`, `mobile_no`, `email`, `address`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(10, 'Samsung', '01799709749', 'samsung.bd@gmail.com', 'South Korea', 1, 1, NULL, '2022-02-01 00:27:00', '2022-02-01 00:27:00'),
(11, 'Walton', '01995709749', 'walton.bd@gmail.com', 'Dhaka', 1, 1, NULL, '2022-02-01 00:27:43', '2022-02-01 00:27:43'),
(12, 'LG', '01996509749', 'lg.sk@gmail.com', 'South Korea', 1, 1, NULL, '2022-02-01 00:28:19', '2022-02-01 00:28:19'),
(13, 'Apple', '01997009749', 'apple.us@gmail.com', 'United States', 1, 1, NULL, '2022-02-01 00:28:59', '2022-02-01 00:28:59');

-- --------------------------------------------------------

--
-- Table structure for table `units`
--

CREATE TABLE `units` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `units`
--

INSERT INTO `units` (`id`, `name`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'KG', 1, 1, 1, '2020-11-01 12:34:43', '2020-11-01 12:37:33'),
(2, 'PCS', 1, 1, 1, '2020-11-01 12:40:13', '2020-11-01 12:40:25');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'User',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `religion` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role_two` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Admin = Head Of Software, Operator = Computer Operator, User = Employee',
  `join_date` date DEFAULT NULL,
  `designation_id` int(11) DEFAULT NULL,
  `salary` double DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `approved` int(11) NOT NULL DEFAULT 0,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role`, `name`, `email`, `email_verified_at`, `password`, `mobile`, `address`, `gender`, `image`, `fname`, `mname`, `religion`, `id_no`, `dob`, `code`, `role_two`, `join_date`, `designation_id`, `salary`, `status`, `approved`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'Md Sahadat Husain', 'cse.devsahadat@gmail.com', NULL, '$2y$10$bdiLHOtzNu4NkohyTKD9LureBLLe5mXQiX1eBTX2lxbzIjoBoUgFm', '01738309749', 'tilagor, Sylhet', 'Male', '202201311407IMG_4465-min.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, '2020-10-22 15:17:30', '2022-01-31 08:36:16'),
(86, 'User', 'Md Mayruful Haque', 'mayruful@gmail.com', NULL, '$2y$10$8m/IRpErgPVqE3ZsfUpbV.UTDf/hTfC4m6mNGaxTbCrvBYnqpci5G', '01765207343', 'Subhanghat', 'Male', '202202261050mayruful.jpeg', NULL, NULL, NULL, NULL, NULL, '2746', NULL, NULL, NULL, NULL, 0, 1, NULL, '2022-02-01 00:06:19', '2022-02-26 04:50:29'),
(87, 'User', 'Md Mahdi Tarafder', 'mahdi@gmail.com', NULL, '$2y$10$hhIlhzQUIhjOp5qx7PPlFuaY3sRNoA8pnHV.zW4506EFiPwO78R3K', '01745608040', 'Uposhohor, Block A', 'Male', '202202261059mahdi.jpeg', NULL, NULL, NULL, NULL, NULL, '8434', NULL, NULL, NULL, NULL, 0, 1, NULL, '2022-02-01 00:06:37', '2022-02-26 04:59:51'),
(88, 'User', 'Rinki Dev', 'rinkidev@gmail.com', NULL, '$2y$10$3yij8FFIUgrVx90YHcPkhuMcxdDvCxu00oEeWjVsRA2HpyySCVEna', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '4994', NULL, NULL, NULL, NULL, 0, 1, NULL, '2022-02-01 00:06:55', '2022-02-01 00:09:27'),
(89, 'User', 'Shohag Dev', 'shohagdev@gmail.com', NULL, '$2y$10$9TtTX2tqWdfqtSroabJAFe01Xxs1f7ZdEs1Kop.X5GFbxpTYKgWRe', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '7450', NULL, NULL, NULL, NULL, 0, 1, NULL, '2022-02-01 00:07:22', '2022-02-01 00:09:29'),
(90, 'User', 'James J. Farmer', 'wisiga1380@proxiesblog.com', NULL, '$2y$10$1Y6gGW4ufnmOBP0hD7XMK.JORLWFPgew4jzGqtd8GW.kG7PZmNgW.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '7707', NULL, NULL, NULL, NULL, 0, 1, NULL, '2022-02-01 00:07:35', '2022-02-01 00:09:33'),
(91, 'User', 'Sakib Khan', 'sakibkhan@gmail.com', NULL, '$2y$10$ep4ZSBz9i1nPKnOD3XXlM.odLOGnA3ibb4QItjYEHft6XnDY/unwS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '7018', NULL, NULL, NULL, NULL, 0, 1, NULL, '2022-02-01 00:07:58', '2022-02-01 00:09:36'),
(92, 'User', 'Mayruful Rakib', 'rakib.mayruful@gmail.com', NULL, '$2y$10$2bWUyk3a3RomZNtpVdd6beel47DjU./Ifyl7sBf/er/yUzGMA9Ufe', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '6442', NULL, NULL, NULL, NULL, 0, 0, NULL, '2022-02-01 00:08:25', '2022-02-01 00:08:25'),
(93, 'User', 'Tarafder Mahdi', 'tarafder@gmail.com', NULL, '$2y$10$P5H/Av3Z3sddlzm64C5qp.xguEbebyk1IxhPZ2lVX2Rrw40K1liIK', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2131', NULL, NULL, NULL, NULL, 0, 0, NULL, '2022-02-01 00:08:50', '2022-02-01 00:08:50'),
(94, 'User', 'Haque Mayruful', 'haque@gmail.com', NULL, '$2y$10$e6.kseBEUBWn8TtzG9KPy.dHJmeZ2h4gMoR6lY6QA/.BRs/HST3fS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '6605', NULL, NULL, NULL, NULL, 0, 0, NULL, '2022-02-01 00:09:14', '2022-02-01 00:09:14'),
(95, 'Employee', 'Rasel Ahmed', 'rasel@gmail.com', NULL, '$2y$10$PWRB3if7FBNmGJ1LuQHWSOgF.3j/9ceZNGPIpVM5wR27nZBWCnUPS', '0158735689', 'Shibganj', 'Male', '202202010611face1.jpg', 'Mr jhonn', 'Miss Jequlin', 'Islam', '20210001', '1992-06-05', '1302', NULL, '2021-12-01', 1, 20500, 0, 0, NULL, '2022-02-01 00:11:13', '2022-02-01 01:10:52'),
(96, 'Employee', 'Abul Uddin', 'abuluddin@gmail.com', NULL, '$2y$10$ZYLSkk//EOiZ/kQ6mGS9AeEoPf2fPEXcZvn2Pork9nkUIKLRBn7b2', '01622934346', 'Sylhet', 'Male', '202202010613face3.jpg', 'Kabir Uddin', 'Selina Khan', 'Islam', '20210096', '1998-09-08', '8409', NULL, '2021-12-02', 1, 15000, 0, 1, NULL, '2022-02-01 00:13:14', '2022-02-01 00:20:51'),
(97, 'Employee', 'Karim Uddin', 'karim@gmail.com', NULL, '$2y$10$EDYR./p.3q71TyAz2Iipc.v6TvJCXHPXwbmXlByKiMOhP01QKhK9a', '01628934346', 'Dhaka', 'Male', '202202010614face4.jpg', 'Ali Ahmed', 'Suha Chowdhury', 'Islam', '20220097', '1996-07-08', '3464', NULL, '2022-01-02', 1, 12000, 0, 1, NULL, '2022-02-01 00:14:13', '2022-02-01 00:20:48'),
(98, 'Employee', 'James J. Farmer', 'james.farmer@gmail.com', NULL, '$2y$10$KPjavapxV6n7PEiAJZt9HeX0LSnVLoM3ggrFcnDNLOYdDzZhlqEW2', '99874376734', 'Gazipur,102, Dhaka', 'Male', '202202010615face14.jpg', 'Albert Richard', 'Jenny Marry', 'Christian', '20210098', '1999-12-20', '5280', NULL, '2021-12-01', 1, 14500, 0, 1, NULL, '2022-02-01 00:15:52', '2022-02-01 00:20:44'),
(99, 'Employee', 'Rafik Ahmed', 'rafik@gmail.com', NULL, '$2y$10$SbvYfYOLOoPyEFzKlvsIvOWuGOZzox1Fq8dw6XcDKo7O8tE9gz.TW', '01798487689', 'Shibgonj , Sylhet', 'Male', '202202010616face7.jpg', 'Arif Chowdhury', 'Minara Khatun', 'Islam', '20210099', '1998-09-19', '9120', NULL, '2021-12-02', 1, 13000, 0, 1, NULL, '2022-02-01 00:16:55', '2022-02-01 00:20:41'),
(100, 'Employee', 'Sumona Tarafder', 'sumona@gmil.com', NULL, '$2y$10$scdjqoCBonM5fhIqa1YTK.Btz2eiuipO4i8SxjdrIr8xa3A9UTPPC', '01628094346', 'Uposohor , Block A', 'Female', '202202010618face2.jpg', 'Mahdi Tarafder', 'Samina Chowdhury', 'Islam', '20220100', '1997-09-06', '4855', NULL, '2022-01-02', 1, 17000, 0, 1, NULL, '2022-02-01 00:18:52', '2022-02-01 00:20:37'),
(101, 'Employee', 'Rinki Chy', 'rinki769@gmail.com', NULL, '$2y$10$fIMlCCRnLltKmKQJKuDptuwpA05mZe9ilZSpFlrYb71Q4dLwi4Aya', '01669934346', 'Shibganj', 'Female', '202202010620face6.jpg', 'Shohag Chy', 'Nargis Sultana', 'Hindu', '20210101', '1998-09-10', '9587', NULL, '2021-12-02', 1, 17500, 0, 1, NULL, '2022-02-01 00:20:21', '2022-02-01 00:20:34'),
(102, 'User', 'Adil Ahmed Sir', 'adilAhmed@gmail.com', NULL, '$2y$10$jYuzDAv/yeoygfWklofImewRUUEqxHn5eEUxftnzSeTMRXjcbLCyu', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5760', NULL, NULL, NULL, NULL, 0, 1, NULL, '2022-02-01 01:09:21', '2022-02-01 01:09:31');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account_other_costs`
--
ALTER TABLE `account_other_costs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chats`
--
ALTER TABLE `chats`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `designations`
--
ALTER TABLE `designations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `designations_name_unique` (`name`);

--
-- Indexes for table `employee_attendances`
--
ALTER TABLE `employee_attendances`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee_leaves`
--
ALTER TABLE `employee_leaves`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee_salary_logs`
--
ALTER TABLE `employee_salary_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `group_chats`
--
ALTER TABLE `group_chats`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invoices`
--
ALTER TABLE `invoices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invoice_details`
--
ALTER TABLE `invoice_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `leave_purposes`
--
ALTER TABLE `leave_purposes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `leave_purposes_name_unique` (`name`);

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
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment_details`
--
ALTER TABLE `payment_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product__images`
--
ALTER TABLE `product__images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `purchases`
--
ALTER TABLE `purchases`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `units`
--
ALTER TABLE `units`
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
-- AUTO_INCREMENT for table `account_other_costs`
--
ALTER TABLE `account_other_costs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `chats`
--
ALTER TABLE `chats`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `designations`
--
ALTER TABLE `designations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `employee_attendances`
--
ALTER TABLE `employee_attendances`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- AUTO_INCREMENT for table `employee_leaves`
--
ALTER TABLE `employee_leaves`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `employee_salary_logs`
--
ALTER TABLE `employee_salary_logs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `group_chats`
--
ALTER TABLE `group_chats`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `invoices`
--
ALTER TABLE `invoices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `invoice_details`
--
ALTER TABLE `invoice_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `leave_purposes`
--
ALTER TABLE `leave_purposes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `notices`
--
ALTER TABLE `notices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `payment_details`
--
ALTER TABLE `payment_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `product__images`
--
ALTER TABLE `product__images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `purchases`
--
ALTER TABLE `purchases`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `units`
--
ALTER TABLE `units`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
