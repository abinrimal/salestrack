-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 19, 2020 at 11:28 AM
-- Server version: 10.1.22-MariaDB
-- PHP Version: 7.3.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sales_funnel`
--

-- --------------------------------------------------------

--
-- Table structure for table `branches`
--

CREATE TABLE `branches` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `branch_code` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT 'na',
  `phone` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `added_by` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_by` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT 'na',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `branches`
--

INSERT INTO `branches` (`id`, `branch_code`, `address`, `phone`, `description`, `added_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(2, 'New Road', 'Pako Road, New Road, Kathmandu', '9845431044', 'Some description here', '', '1', '2020-11-18 08:11:09', '2020-11-18 11:12:47'),
(6, 'VirginJhamsikhel', 'Basundhara', '9801204566', 'This is the test, some desc.', '1', '1', '2020-11-18 11:13:54', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cms_apicustom`
--

CREATE TABLE `cms_apicustom` (
  `id` int(10) UNSIGNED NOT NULL,
  `permalink` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tabel` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `aksi` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kolom` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `orderby` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_query_1` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sql_where` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nama` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keterangan` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameter` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `method_type` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` longtext COLLATE utf8mb4_unicode_ci,
  `responses` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cms_apikey`
--

CREATE TABLE `cms_apikey` (
  `id` int(10) UNSIGNED NOT NULL,
  `screetkey` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hit` int(11) DEFAULT NULL,
  `status` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cms_dashboard`
--

CREATE TABLE `cms_dashboard` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cms_email_queues`
--

CREATE TABLE `cms_email_queues` (
  `id` int(10) UNSIGNED NOT NULL,
  `send_at` datetime DEFAULT NULL,
  `email_recipient` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_from_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_from_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_cc_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_subject` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_content` text COLLATE utf8mb4_unicode_ci,
  `email_attachments` text COLLATE utf8mb4_unicode_ci,
  `is_sent` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cms_email_templates`
--

CREATE TABLE `cms_email_templates` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cc_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cms_email_templates`
--

INSERT INTO `cms_email_templates` (`id`, `name`, `slug`, `subject`, `content`, `description`, `from_name`, `from_email`, `cc_email`, `created_at`, `updated_at`) VALUES
(1, 'Email Template Forgot Password Backend', 'forgot_password_backend', NULL, '<p>Hi,</p><p>Someone requested forgot password, here is your new password : </p><p>[password]</p><p><br></p><p>--</p><p>Regards,</p><p>Admin</p>', '[password]', 'System', 'system@crudbooster.com', NULL, '2020-11-09 07:45:16', NULL),
(2, 'sales Email', 'sales', 'Thank you for purchasing with Us!', '<p>Dear [customer_name],</p><p><br></p><p>Thank you for purchasing [product_name] from us. We hope we have fulfilled your requirements.</p><p><br></p><p>Visit us Again!</p><p><br>Regards,<br>[seller_name]<br></p>', 'After Sales Email', 'Virgin Mobile', 'info@virginmobile.com.np', 'abinrimal7@gmail.com', '2020-11-19 03:31:53', '2020-11-19 04:16:36');

-- --------------------------------------------------------

--
-- Table structure for table `cms_logs`
--

CREATE TABLE `cms_logs` (
  `id` int(10) UNSIGNED NOT NULL,
  `ipaddress` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `useragent` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text COLLATE utf8mb4_unicode_ci,
  `id_cms_users` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cms_logs`
--

INSERT INTO `cms_logs` (`id`, `ipaddress`, `useragent`, `url`, `description`, `details`, `id_cms_users`, `created_at`, `updated_at`) VALUES
(1, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.183 Safari/537.36', 'http://localhost:9090/salesfunnel/admin/login', 'admin@crudbooster.com login with IP Address ::1', '', 1, '2020-11-09 08:25:03', NULL),
(2, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.193 Safari/537.36', 'http://localhost:9090/salesfunnel/admin/login', 'admin@crudbooster.com login with IP Address ::1', '', 1, '2020-11-17 08:21:19', NULL),
(3, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.193 Safari/537.36', 'http://localhost:9090/salesfunnel/admin/product_type/add-save', 'Add New Data Mobile at Product Types', '', 1, '2020-11-17 09:27:58', NULL),
(4, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.193 Safari/537.36', 'http://localhost:9090/salesfunnel/admin/product_type/add-save', 'Add New Data Earphone at Product Types', '', 1, '2020-11-17 09:28:22', NULL),
(5, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.193 Safari/537.36', 'http://localhost:9090/salesfunnel/admin/menu_management/edit-save/1', 'Update data Product Category at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>name</td><td>Product Types</td><td>Product Category</td></tr><tr><td>color</td><td></td><td>normal</td></tr></tbody></table>', 1, '2020-11-17 09:31:22', NULL),
(6, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.193 Safari/537.36', 'http://localhost:9090/salesfunnel/admin/login', 'admin@crudbooster.com login with IP Address ::1', '', 1, '2020-11-18 07:56:29', NULL),
(7, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.193 Safari/537.36', 'http://localhost:9090/salesfunnel/admin/branches/add-save', 'Add New Data  at Branches  Setup', '', 1, '2020-11-18 08:07:59', NULL),
(8, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.193 Safari/537.36', 'http://localhost:9090/salesfunnel/admin/branches/delete/1', 'Delete data 1 at Branches  Setup', '', 1, '2020-11-18 08:10:47', NULL),
(9, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.193 Safari/537.36', 'http://localhost:9090/salesfunnel/admin/branches/add-save', 'Add New Data  at Branches  Setup', '', 1, '2020-11-18 08:11:09', NULL),
(10, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.193 Safari/537.36', 'http://localhost:9090/salesfunnel/admin/branches/add-save', 'Add New Data  at Branches  Setup', '', 1, '2020-11-18 09:40:04', NULL),
(11, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.193 Safari/537.36', 'http://localhost:9090/salesfunnel/admin/branches/add-save', 'Add New Data  at Branches  Setup', '', 1, '2020-11-18 09:57:18', NULL),
(12, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.193 Safari/537.36', 'http://localhost:9090/salesfunnel/admin/users/add-save', 'Add New Data Abin Rimal at Users Management', '', 1, '2020-11-18 10:18:57', NULL),
(13, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.193 Safari/537.36', 'http://localhost:9090/salesfunnel/admin/logout', 'admin@crudbooster.com logout', '', 1, '2020-11-18 10:19:17', NULL),
(14, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.193 Safari/537.36', 'http://localhost:9090/salesfunnel/admin/login', 'abinrimal7@gmail.com login with IP Address ::1', '', 2, '2020-11-18 10:19:32', NULL),
(15, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.193 Safari/537.36', 'http://localhost:9090/salesfunnel/admin/branches/edit-save/3', 'Update data  at Branches  Setup', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody></tbody></table>', 2, '2020-11-18 10:19:55', NULL),
(16, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.193 Safari/537.36', 'http://localhost:9090/salesfunnel/admin/branches/add-save', 'Add New Data  at Branches  Setup', '', 2, '2020-11-18 10:20:21', NULL),
(17, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.193 Safari/537.36', 'http://localhost:9090/salesfunnel/admin/logout', 'abinrimal7@gmail.com logout', '', 2, '2020-11-18 10:20:33', NULL),
(18, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.193 Safari/537.36', 'http://localhost:9090/salesfunnel/admin/login', 'admin@crudbooster.com login with IP Address ::1', '', 1, '2020-11-18 10:22:18', NULL),
(19, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.193 Safari/537.36', 'http://localhost:9090/salesfunnel/admin/branches/edit-save/3', 'Update data  at Branches  Setup', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>updated_by</td><td>2</td><td>1</td></tr></tbody></table>', 1, '2020-11-18 10:23:23', NULL),
(20, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.193 Safari/537.36', 'http://localhost:9090/salesfunnel/admin/branches/edit-save/4', 'Update data  at Branches  Setup', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>phone</td><td>9845431044</td><td>9845431049</td></tr></tbody></table>', 1, '2020-11-18 10:23:59', NULL),
(21, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.193 Safari/537.36', 'http://localhost:9090/salesfunnel/admin/branches/edit-save/5', 'Update data  at Branches  Setup', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>description</td><td>this is a test</td><td>this is a tester</td></tr></tbody></table>', 1, '2020-11-18 10:24:13', NULL),
(22, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.193 Safari/537.36', 'http://localhost:9090/salesfunnel/admin/branches/delete/3', 'Delete data 3 at Branches  Setup', '', 1, '2020-11-18 10:24:51', NULL),
(23, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.193 Safari/537.36', 'http://localhost:9090/salesfunnel/admin/branches/delete/5', 'Delete data 5 at Branches  Setup', '', 1, '2020-11-18 10:25:02', NULL),
(24, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.193 Safari/537.36', 'http://localhost:9090/salesfunnel/admin/branches/delete/4', 'Delete data 4 at Branches  Setup', '', 1, '2020-11-18 10:25:20', NULL),
(25, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.193 Safari/537.36', 'http://localhost:9090/salesfunnel/admin/branches/edit-save/2', 'Update data  at Branches  Setup', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>updated_by</td><td>na</td><td>1</td></tr></tbody></table>', 1, '2020-11-18 11:12:48', NULL),
(26, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.193 Safari/537.36', 'http://localhost:9090/salesfunnel/admin/branches/add-save', 'Add New Data  at Branches  Setup', '', 1, '2020-11-18 11:13:54', NULL),
(27, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.193 Safari/537.36', 'http://localhost:9090/salesfunnel/admin/login', 'abinrimal7@gmail.com login with IP Address ::1', '', 2, '2020-11-18 21:19:24', NULL),
(28, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.193 Safari/537.36', 'http://localhost:9090/salesfunnel/admin/customers/add-save', 'Add New Data Vivek Bindra at Customers', '', 2, '2020-11-18 21:36:55', NULL),
(29, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.193 Safari/537.36', 'http://localhost:9090/salesfunnel/admin/customers/add-save', 'Add New Data Abin Rimal at Customers', '', 2, '2020-11-18 21:40:02', NULL),
(30, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.193 Safari/537.36', 'http://localhost:9090/salesfunnel/admin/products/add-save', 'Add New Data Golden Horse Automatic at Products', '', 2, '2020-11-19 01:49:54', NULL),
(31, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.193 Safari/537.36', 'http://localhost:9090/salesfunnel/admin/sales/add-save', 'Add New Data  at Sales', '', 2, '2020-11-19 02:26:01', NULL),
(32, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.193 Safari/537.36', 'http://localhost:9090/salesfunnel/admin/sales/edit-save/1', 'Update data  at Sales', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>status</td><td>NO</td><td>Yes</td></tr></tbody></table>', 2, '2020-11-19 02:28:28', NULL),
(33, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.193 Safari/537.36', 'http://localhost:9090/salesfunnel/admin/menu_management/edit-save/2', 'Update data Branch  Setup at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>name</td><td>Branches  Setup</td><td>Branch  Setup</td></tr><tr><td>color</td><td></td><td>normal</td></tr><tr><td>sorting</td><td>5</td><td></td></tr></tbody></table>', 2, '2020-11-19 02:33:45', NULL),
(34, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.193 Safari/537.36', 'http://localhost:9090/salesfunnel/admin/sales/edit-save/1', 'Update data  at Sales', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>price</td><td>2000</td><td>4000</td></tr></tbody></table>', 2, '2020-11-19 02:42:09', NULL),
(35, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.193 Safari/537.36', 'http://localhost:9090/salesfunnel/admin/sales/add-save', 'Add New Data  at Sales', '', 2, '2020-11-19 02:46:49', NULL),
(36, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.193 Safari/537.36', 'http://localhost:9090/salesfunnel/admin/sales/edit-save/2', 'Update data  at Sales', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>status</td><td>NO</td><td>Yes</td></tr><tr><td>verified_by</td><td></td><td>2</td></tr></tbody></table>', 2, '2020-11-19 02:47:16', NULL),
(37, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.193 Safari/537.36', 'http://localhost:9090/salesfunnel/admin/sales/edit-save/1', 'Update data  at Sales', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody></tbody></table>', 2, '2020-11-19 02:54:01', NULL),
(38, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.193 Safari/537.36', 'http://localhost:9090/salesfunnel/admin/sales/edit-save/1', 'Update data  at Sales', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody></tbody></table>', 2, '2020-11-19 03:21:11', NULL),
(39, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.193 Safari/537.36', 'http://localhost:9090/salesfunnel/admin/sales/add-save', 'Add New Data  at Sales', '', 2, '2020-11-19 03:22:37', NULL),
(40, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.193 Safari/537.36', 'http://localhost:9090/salesfunnel/admin/email_templates/add-save', 'Add New Data sales Email at Email Templates', '', 2, '2020-11-19 03:31:53', NULL),
(41, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.193 Safari/537.36', 'http://localhost:9090/salesfunnel/admin/email_templates/edit-save/2', 'Update data sales Email at Email Templates', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>content</td><td><p>303x69\r\n</p><div class=\"note-handle\" style=\"box-sizing: border-box;\"><div class=\"note-control-selection\" style=\"box-sizing: border-box; position: absolute; display: block; border: 1px solid black; left: 10px; top: 190px; width: 303px; height: 69px;\"><br class=\"Apple-interchange-newline\"><div class=\"note-control-holder note-control-nw\" style=\"box-sizing: border-box; position: absolute; width: 7px; height: 7px; border-width: 1px 0px 0px 1px; border-top-style: solid; border-right-style: initial; border-bottom-style: initial; border-left-style: solid; border-top-color: black; border-right-color: initial; border-bottom-color: initial; border-left-color: black; border-image: initial; top: -5px; left: -5px;\"></div><div class=\"note-control-holder note-control-ne\" style=\"box-sizing: border-box; position: absolute; width: 7px; height: 7px; border-top: 1px solid black; border-right: 1px solid black; border-bottom: 0px; border-left: none; border-image: initial; top: -5px; right: -5px;\"></div><div class=\"note-control-holder note-control-sw\" style=\"box-sizing: border-box; position: absolute; width: 7px; height: 7px; border-width: 0px 0px 1px 1px; border-top-style: initial; border-right-style: initial; border-bottom-style: solid; border-left-style: solid; border-top-color: initial; border-right-color: initial; border-bottom-color: black; border-left-color: black; border-image: initial; bottom: -5px; left: -5px;\"></div><div class=\"note-control-sizing note-control-se\" style=\"box-sizing: border-box; position: absolute; width: 7px; height: 7px; background-color: white; border: 1px solid black; right: -5px; bottom: -5px; cursor: se-resize;\"></div><div class=\"note-control-selection-info\" style=\"box-sizing: border-box; position: absolute; right: 0px; bottom: 0px; padding: 5px; margin: 5px; font-size: 12px; color: white; background-color: black; border-radius: 5px; opacity: 0.7;\">303x69</div></div></div><p><br></p><div class=\"note-editable panel-body\" contenteditable=\"true\" spellcheck=\"false\" style=\"box-sizing: border-box; padding: 10px; outline: 0px; overflow: auto; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255); height: 325px;\"><br class=\"Apple-interchange-newline\"></div><p>Dear {{customer_name}},</p><p><br></p><p>Thank you for purchasing {{product_name}} from us. We hope we have fulfilled your requirements.&nbsp;</p><p><br></p><p>Visit us Again!</p><p><br></p><p><img src=\"http://localhost:9090/salesfunnel/uploads/2/2020-11/bd15b0db801dce42c71e4da9dd6b56b6.png\" style=\"width: 302.632px; height: 69px;\"><br></p><p>Regards,</p><p>{{seller_name}}</p><p>{{Company_name}}</p><p>{{company_details}}</p></td><td><div class=\"note-handle\" style=\"box-sizing: border-box;\"><div class=\"note-control-holder note-control-ne\" style=\"box-sizing: border-box; position: absolute; width: 7px; height: 7px; border-top: 1px solid black; border-right: 1px solid black; border-bottom: 0px; border-left: none; border-image: initial; top: -5px; right: -5px;\"></div><div class=\"note-control-holder note-control-sw\" style=\"box-sizing: border-box; position: absolute; width: 7px; height: 7px; border-width: 0px 0px 1px 1px; border-top-style: initial; border-right-style: initial; border-bottom-style: solid; border-left-style: solid; border-top-color: initial; border-right-color: initial; border-bottom-color: black; border-left-color: black; border-image: initial; bottom: -5px; left: -5px;\"></div><div class=\"note-control-sizing note-control-se\" style=\"box-sizing: border-box; position: absolute; width: 7px; height: 7px; background-color: white; border: 1px solid black; right: -5px; bottom: -5px; cursor: se-resize;\"></div><div class=\"note-control-selection-info\" style=\"box-sizing: border-box; position: absolute; right: 0px; bottom: 0px; padding: 5px; margin: 5px; font-size: 12px; color: white; background-color: black; border-radius: 5px; opacity: 0.7;\">303x69</div></div><div class=\"note-editable panel-body\" contenteditable=\"true\" spellcheck=\"false\" style=\"box-sizing: border-box; padding: 10px; outline: 0px; overflow: auto; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255); height: 325px;\"><p>Dear {{customer_name}},</p><p>Thank you for purchasing {{product_name}} from us. We hope we have fulfilled your requirements. </p><p><br></p><p>Visit us Again!</p><p><br></p><p><img src=\"http://localhost:9090/salesfunnel/uploads/2/2020-11/bd15b0db801dce42c71e4da9dd6b56b6.png\" style=\"width: 302.632px; height: 69px;\"></p><p>Regards,</p><p>{{seller_name}}</p><p>{{Company_name}}</p><p>{{company_details}}</p></div></td></tr></tbody></table>', 2, '2020-11-19 03:35:14', NULL),
(42, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.193 Safari/537.36', 'http://localhost:9090/salesfunnel/admin/sales/add-save', 'Add New Data  at Sales', '', 2, '2020-11-19 03:59:23', NULL),
(43, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.193 Safari/537.36', 'http://localhost:9090/salesfunnel/admin/email_templates/edit-save/2', 'Update data sales Email at Email Templates', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>content</td><td><div class=\"note-handle\" style=\"box-sizing: border-box;\"><div class=\"note-control-holder note-control-ne\" style=\"box-sizing: border-box; position: absolute; width: 7px; height: 7px; border-top: 1px solid black; border-right: 1px solid black; border-bottom: 0px; border-left: none; border-image: initial; top: -5px; right: -5px;\"></div><div class=\"note-control-holder note-control-sw\" style=\"box-sizing: border-box; position: absolute; width: 7px; height: 7px; border-width: 0px 0px 1px 1px; border-top-style: initial; border-right-style: initial; border-bottom-style: solid; border-left-style: solid; border-top-color: initial; border-right-color: initial; border-bottom-color: black; border-left-color: black; border-image: initial; bottom: -5px; left: -5px;\"></div><div class=\"note-control-sizing note-control-se\" style=\"box-sizing: border-box; position: absolute; width: 7px; height: 7px; background-color: white; border: 1px solid black; right: -5px; bottom: -5px; cursor: se-resize;\"></div><div class=\"note-control-selection-info\" style=\"box-sizing: border-box; position: absolute; right: 0px; bottom: 0px; padding: 5px; margin: 5px; font-size: 12px; color: white; background-color: black; border-radius: 5px; opacity: 0.7;\">303x69</div></div><div class=\"note-editable panel-body\" contenteditable=\"true\" spellcheck=\"false\" style=\"box-sizing: border-box; padding: 10px; outline: 0px; overflow: auto; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255); height: 325px;\"><p>Dear {{customer_name}},</p><p>Thank you for purchasing {{product_name}} from us. We hope we have fulfilled your requirements. </p><p><br></p><p>Visit us Again!</p><p><br></p><p><img src=\"http://localhost:9090/salesfunnel/uploads/2/2020-11/bd15b0db801dce42c71e4da9dd6b56b6.png\" style=\"width: 302.632px; height: 69px;\"></p><p>Regards,</p><p>{{seller_name}}</p><p>{{Company_name}}</p><p>{{company_details}}</p></div></td><td><div class=\"note-handle\" style=\"box-sizing: border-box;\"><div class=\"note-control-holder note-control-ne\" style=\"box-sizing: border-box; position: absolute; width: 7px; height: 7px; border-top: 1px solid black; border-right: 1px solid black; border-bottom: 0px; border-left: none; border-image: initial; top: -5px; right: -5px;\"></div><div class=\"note-control-holder note-control-sw\" style=\"box-sizing: border-box; position: absolute; width: 7px; height: 7px; border-width: 0px 0px 1px 1px; border-top-style: initial; border-right-style: initial; border-bottom-style: solid; border-left-style: solid; border-top-color: initial; border-right-color: initial; border-bottom-color: black; border-left-color: black; border-image: initial; bottom: -5px; left: -5px;\"></div><div class=\"note-control-sizing note-control-se\" style=\"box-sizing: border-box; position: absolute; width: 7px; height: 7px; background-color: white; border: 1px solid black; right: -5px; bottom: -5px; cursor: se-resize;\"></div><div class=\"note-control-selection-info\" style=\"box-sizing: border-box; position: absolute; right: 0px; bottom: 0px; padding: 5px; margin: 5px; font-size: 12px; color: white; background-color: black; border-radius: 5px; opacity: 0.7;\">303x69</div></div><div class=\"note-editable panel-body\" contenteditable=\"true\" spellcheck=\"false\" style=\"box-sizing: border-box; padding: 10px; outline: 0px; overflow: auto; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255); height: 325px;\"><p>Dear [customer_name],</p><p>Thank you for purchasing [product_name] from us. We hope we have fulfilled your requirements. </p><p><br></p><p>Visit us Again!</p><p><br></p><p></p><p>Regards,</p><p>[seller_name]</p><p>[Company_name]</p><p>[company_details]</p></div></td></tr></tbody></table>', 2, '2020-11-19 04:03:35', NULL),
(44, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.193 Safari/537.36', 'http://localhost:9090/salesfunnel/admin/sales/edit-save/10', 'Update data  at Sales', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>status</td><td>NO</td><td>Yes</td></tr><tr><td>verified_by</td><td></td><td>2</td></tr></tbody></table>', 2, '2020-11-19 04:04:22', NULL),
(45, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.193 Safari/537.36', 'http://localhost:9090/salesfunnel/admin/email_templates/edit-save/2', 'Update data sales Email at Email Templates', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>content</td><td><div class=\"note-handle\" style=\"box-sizing: border-box;\"><div class=\"note-control-holder note-control-ne\" style=\"box-sizing: border-box; position: absolute; width: 7px; height: 7px; border-top: 1px solid black; border-right: 1px solid black; border-bottom: 0px; border-left: none; border-image: initial; top: -5px; right: -5px;\"></div><div class=\"note-control-holder note-control-sw\" style=\"box-sizing: border-box; position: absolute; width: 7px; height: 7px; border-width: 0px 0px 1px 1px; border-top-style: initial; border-right-style: initial; border-bottom-style: solid; border-left-style: solid; border-top-color: initial; border-right-color: initial; border-bottom-color: black; border-left-color: black; border-image: initial; bottom: -5px; left: -5px;\"></div><div class=\"note-control-sizing note-control-se\" style=\"box-sizing: border-box; position: absolute; width: 7px; height: 7px; background-color: white; border: 1px solid black; right: -5px; bottom: -5px; cursor: se-resize;\"></div><div class=\"note-control-selection-info\" style=\"box-sizing: border-box; position: absolute; right: 0px; bottom: 0px; padding: 5px; margin: 5px; font-size: 12px; color: white; background-color: black; border-radius: 5px; opacity: 0.7;\">303x69</div></div><div class=\"note-editable panel-body\" contenteditable=\"true\" spellcheck=\"false\" style=\"box-sizing: border-box; padding: 10px; outline: 0px; overflow: auto; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255); height: 325px;\"><p>Dear [customer_name],</p><p>Thank you for purchasing [product_name] from us. We hope we have fulfilled your requirements. </p><p><br></p><p>Visit us Again!</p><p><br></p><p></p><p>Regards,</p><p>[seller_name]</p><p>[Company_name]</p><p>[company_details]</p></div></td><td><div class=\"note-handle\" style=\"box-sizing: border-box;\"><div class=\"note-control-holder note-control-ne\" style=\"box-sizing: border-box; position: absolute; width: 7px; height: 7px; border-top: 1px solid black; border-right: 1px solid black; border-bottom: 0px; border-left: none; border-image: initial; top: -5px; right: -5px;\"></div><div class=\"note-control-holder note-control-sw\" style=\"box-sizing: border-box; position: absolute; width: 7px; height: 7px; border-width: 0px 0px 1px 1px; border-top-style: initial; border-right-style: initial; border-bottom-style: solid; border-left-style: solid; border-top-color: initial; border-right-color: initial; border-bottom-color: black; border-left-color: black; border-image: initial; bottom: -5px; left: -5px;\"></div><div class=\"note-control-sizing note-control-se\" style=\"box-sizing: border-box; position: absolute; width: 7px; height: 7px; background-color: white; border: 1px solid black; right: -5px; bottom: -5px; cursor: se-resize;\"></div><div class=\"note-control-selection-info\" style=\"box-sizing: border-box; position: absolute; right: 0px; bottom: 0px; padding: 5px; margin: 5px; font-size: 12px; color: white; background-color: black; border-radius: 5px; opacity: 0.7;\">303x69</div></div><div class=\"note-editable panel-body\" contenteditable=\"true\" spellcheck=\"false\" style=\"box-sizing: border-box; padding: 10px; outline: 0px; overflow: auto; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255); height: 325px;\"><p>Dear [customer_name],</p><p>Thank you for purchasing [product_name] from us. We hope we have fulfilled your requirements. </p><p><br></p><p>Visit us Again!</p><p><br></p><p></p><p>Regards,</p><p>[seller_name]</p></div></td></tr></tbody></table>', 2, '2020-11-19 04:12:15', NULL),
(46, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.193 Safari/537.36', 'http://localhost:9090/salesfunnel/admin/sales/add-save', 'Add New Data  at Sales', '', 2, '2020-11-19 04:13:09', NULL),
(47, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.193 Safari/537.36', 'http://localhost:9090/salesfunnel/admin/email_templates/edit-save/2', 'Update data sales Email at Email Templates', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>content</td><td><div class=\"note-handle\" style=\"box-sizing: border-box;\"><div class=\"note-control-holder note-control-ne\" style=\"box-sizing: border-box; position: absolute; width: 7px; height: 7px; border-top: 1px solid black; border-right: 1px solid black; border-bottom: 0px; border-left: none; border-image: initial; top: -5px; right: -5px;\"></div><div class=\"note-control-holder note-control-sw\" style=\"box-sizing: border-box; position: absolute; width: 7px; height: 7px; border-width: 0px 0px 1px 1px; border-top-style: initial; border-right-style: initial; border-bottom-style: solid; border-left-style: solid; border-top-color: initial; border-right-color: initial; border-bottom-color: black; border-left-color: black; border-image: initial; bottom: -5px; left: -5px;\"></div><div class=\"note-control-sizing note-control-se\" style=\"box-sizing: border-box; position: absolute; width: 7px; height: 7px; background-color: white; border: 1px solid black; right: -5px; bottom: -5px; cursor: se-resize;\"></div><div class=\"note-control-selection-info\" style=\"box-sizing: border-box; position: absolute; right: 0px; bottom: 0px; padding: 5px; margin: 5px; font-size: 12px; color: white; background-color: black; border-radius: 5px; opacity: 0.7;\">303x69</div></div><div class=\"note-editable panel-body\" contenteditable=\"true\" spellcheck=\"false\" style=\"box-sizing: border-box; padding: 10px; outline: 0px; overflow: auto; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255); height: 325px;\"><p>Dear [customer_name],</p><p>Thank you for purchasing [product_name] from us. We hope we have fulfilled your requirements. </p><p><br></p><p>Visit us Again!</p><p><br></p><p></p><p>Regards,</p><p>[seller_name]</p></div></td><td><p>Dear [customer_name],</p><p><br></p><p>Thank you for purchasing [product_name] from us. We hope we have fulfilled your requirements.</p><p><br></p><p>Visit us Again!</p><p><br>Regards,<br>[seller_name]<br></p></td></tr><tr><td>description</td><td>test mail</td><td>After Sales Email</td></tr><tr><td>from_name</td><td>Abin Rimal</td><td>Virgin Mobile</td></tr><tr><td>cc_email</td><td>abinrimal7@gmail.com</td><td></td></tr></tbody></table>', 2, '2020-11-19 04:16:36', NULL),
(48, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.193 Safari/537.36', 'http://localhost:9090/salesfunnel/admin/products/add-save', 'Add New Data iPhone 11 Pro Max 4GB 64GB Space Gray at Products', '', 2, '2020-11-19 04:19:58', NULL),
(49, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.193 Safari/537.36', 'http://localhost:9090/salesfunnel/admin/customers/add-save', 'Add New Data Sujan Maharjan at Customers', '', 2, '2020-11-19 04:22:12', NULL),
(50, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.193 Safari/537.36', 'http://localhost:9090/salesfunnel/admin/customers/edit-save/3', 'Update data Sujan Maharjan at Customers', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>email</td><td>sujan.hamarjan75@gmail.com</td><td>sujan.maharjan75@gmail.com</td></tr></tbody></table>', 2, '2020-11-19 04:22:45', NULL),
(51, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.193 Safari/537.36', 'http://localhost:9090/salesfunnel/admin/sales/add-save', 'Add New Data  at Sales', '', 2, '2020-11-19 04:24:23', NULL),
(52, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.193 Safari/537.36', 'http://localhost:9090/salesfunnel/admin/logout', 'abinrimal7@gmail.com logout', '', 2, '2020-11-19 04:31:04', NULL),
(53, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.193 Safari/537.36', 'http://localhost:9090/salesfunnel/admin/login', 'abinrimal7@gmail.com login with IP Address ::1', '', 2, '2020-11-19 04:32:07', NULL),
(54, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.193 Safari/537.36', 'http://localhost:9090/salesfunnel/admin/users/add-save', 'Add New Data Virgin Mobile Pvt Ltd at Users Management', '', 2, '2020-11-19 04:34:10', NULL),
(55, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.193 Safari/537.36', 'http://localhost:9090/salesfunnel/admin/logout', 'abinrimal7@gmail.com logout', '', 2, '2020-11-19 04:34:28', NULL),
(56, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.193 Safari/537.36', 'http://localhost:9090/salesfunnel/admin/logout', 'abinrimal7@gmail.com logout', '', 2, '2020-11-19 04:35:06', NULL),
(57, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.193 Safari/537.36', 'http://localhost:9090/salesfunnel/admin/login', 'info@virginmobile.com.np login with IP Address ::1', '', 3, '2020-11-19 04:35:23', NULL),
(58, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.193 Safari/537.36', 'http://localhost:9090/salesfunnel/admin/logout', 'info@virginmobile.com.np logout', '', 3, '2020-11-19 04:35:37', NULL),
(59, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.193 Safari/537.36', 'http://localhost:9090/salesfunnel/admin/login', 'abinrimal7@gmail.com login with IP Address ::1', '', 2, '2020-11-19 04:36:03', NULL),
(60, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.193 Safari/537.36', 'http://localhost:9090/salesfunnel/admin/menu_management/edit-save/5', 'Update data Sales Details at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td></td><td>normal</td></tr></tbody></table>', 2, '2020-11-19 04:37:04', NULL),
(61, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.193 Safari/537.36', 'http://localhost:9090/salesfunnel/admin/menu_management/edit-save/5', 'Update data Sales Details at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody></tbody></table>', 2, '2020-11-19 04:37:28', NULL),
(62, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.193 Safari/537.36', 'http://localhost:9090/salesfunnel/admin/menu_management/edit-save/3', 'Update data Customers at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td></td><td>normal</td></tr><tr><td>sorting</td><td>2</td><td></td></tr></tbody></table>', 2, '2020-11-19 04:37:50', NULL),
(63, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.193 Safari/537.36', 'http://localhost:9090/salesfunnel/admin/menu_management/edit-save/4', 'Update data Products at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td></td><td>normal</td></tr><tr><td>sorting</td><td>3</td><td></td></tr></tbody></table>', 2, '2020-11-19 04:38:13', NULL),
(64, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.193 Safari/537.36', 'http://localhost:9090/salesfunnel/admin/menu_management/edit-save/1', 'Update data Product Category at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>sorting</td><td>4</td><td></td></tr></tbody></table>', 2, '2020-11-19 04:38:36', NULL),
(65, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.193 Safari/537.36', 'http://localhost:9090/salesfunnel/admin/menu_management/edit-save/2', 'Update data Branch  Setup at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>sorting</td><td>5</td><td></td></tr></tbody></table>', 2, '2020-11-19 04:39:01', NULL),
(66, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.193 Safari/537.36', 'http://localhost:9090/salesfunnel/admin/logout', 'abinrimal7@gmail.com logout', '', 2, '2020-11-19 04:39:16', NULL),
(67, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.193 Safari/537.36', 'http://localhost:9090/salesfunnel/admin/login', 'info@virginmobile.com.np login with IP Address ::1', '', 3, '2020-11-19 04:40:23', NULL),
(68, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.193 Safari/537.36', 'http://localhost:9090/salesfunnel/admin/logout', 'info@virginmobile.com.np logout', '', 3, '2020-11-19 04:42:27', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cms_menus`
--

CREATE TABLE `cms_menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'url',
  `path` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `is_dashboard` tinyint(1) NOT NULL DEFAULT '0',
  `id_cms_privileges` int(11) DEFAULT NULL,
  `sorting` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cms_menus`
--

INSERT INTO `cms_menus` (`id`, `name`, `type`, `path`, `color`, `icon`, `parent_id`, `is_active`, `is_dashboard`, `id_cms_privileges`, `sorting`, `created_at`, `updated_at`) VALUES
(1, 'Product Category', 'Route', 'AdminProductTypeControllerGetIndex', 'normal', 'fa fa-glass', 0, 1, 0, 1, 4, '2020-11-17 09:25:17', '2020-11-19 04:38:35'),
(2, 'Branch  Setup', 'Route', 'AdminBranchesControllerGetIndex', 'normal', 'fa fa-home', 0, 1, 0, 1, 5, '2020-11-18 07:58:05', '2020-11-19 04:39:00'),
(3, 'Customers', 'Route', 'AdminCustomersControllerGetIndex', 'normal', 'fa fa-female', 0, 1, 0, 1, 2, '2020-11-18 21:26:52', '2020-11-19 04:37:49'),
(4, 'Products', 'Route', 'AdminProductsControllerGetIndex', 'normal', 'fa fa-product-hunt', 0, 1, 0, 1, 3, '2020-11-18 21:41:52', '2020-11-19 04:38:12'),
(5, 'Sales Details', 'Route', 'AdminSalesControllerGetIndex', 'normal', 'fa fa-shopping-cart', 0, 1, 0, 1, 1, '2020-11-19 01:54:16', '2020-11-19 04:37:27');

-- --------------------------------------------------------

--
-- Table structure for table `cms_menus_privileges`
--

CREATE TABLE `cms_menus_privileges` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_cms_menus` int(11) DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cms_menus_privileges`
--

INSERT INTO `cms_menus_privileges` (`id`, `id_cms_menus`, `id_cms_privileges`) VALUES
(9, 5, 2),
(10, 5, 1),
(11, 3, 2),
(12, 3, 1),
(13, 4, 2),
(14, 4, 1),
(15, 1, 2),
(16, 1, 1),
(17, 2, 2),
(18, 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `cms_moduls`
--

CREATE TABLE `cms_moduls` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `path` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `table_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_protected` tinyint(1) NOT NULL DEFAULT '0',
  `is_active` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cms_moduls`
--

INSERT INTO `cms_moduls` (`id`, `name`, `icon`, `path`, `table_name`, `controller`, `is_protected`, `is_active`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Notifications', 'fa fa-cog', 'notifications', 'cms_notifications', 'NotificationsController', 1, 1, '2020-11-09 07:45:16', NULL, NULL),
(2, 'Privileges', 'fa fa-cog', 'privileges', 'cms_privileges', 'PrivilegesController', 1, 1, '2020-11-09 07:45:16', NULL, NULL),
(3, 'Privileges Roles', 'fa fa-cog', 'privileges_roles', 'cms_privileges_roles', 'PrivilegesRolesController', 1, 1, '2020-11-09 07:45:16', NULL, NULL),
(4, 'Users Management', 'fa fa-users', 'users', 'cms_users', 'AdminCmsUsersController', 0, 1, '2020-11-09 07:45:16', NULL, NULL),
(5, 'Settings', 'fa fa-cog', 'settings', 'cms_settings', 'SettingsController', 1, 1, '2020-11-09 07:45:16', NULL, NULL),
(6, 'Module Generator', 'fa fa-database', 'module_generator', 'cms_moduls', 'ModulsController', 1, 1, '2020-11-09 07:45:16', NULL, NULL),
(7, 'Menu Management', 'fa fa-bars', 'menu_management', 'cms_menus', 'MenusController', 1, 1, '2020-11-09 07:45:16', NULL, NULL),
(8, 'Email Templates', 'fa fa-envelope-o', 'email_templates', 'cms_email_templates', 'EmailTemplatesController', 1, 1, '2020-11-09 07:45:16', NULL, NULL),
(9, 'Statistic Builder', 'fa fa-dashboard', 'statistic_builder', 'cms_statistics', 'StatisticBuilderController', 1, 1, '2020-11-09 07:45:16', NULL, NULL),
(10, 'API Generator', 'fa fa-cloud-download', 'api_generator', '', 'ApiCustomController', 1, 1, '2020-11-09 07:45:16', NULL, NULL),
(11, 'Log User Access', 'fa fa-flag-o', 'logs', 'cms_logs', 'LogsController', 1, 1, '2020-11-09 07:45:16', NULL, NULL),
(12, 'Product Category', 'fa fa-glass', 'product_type', 'product_type', 'AdminProductTypeController', 0, 0, '2020-11-17 09:25:17', NULL, NULL),
(13, 'Branches  Setup', 'fa fa-cog', 'branches', 'branches', 'AdminBranchesController', 0, 0, '2020-11-18 07:58:04', NULL, NULL),
(14, 'Customers', 'fa fa-female', 'customers', 'customers', 'AdminCustomersController', 0, 0, '2020-11-18 21:26:50', NULL, NULL),
(15, 'Products', 'fa fa-product-hunt', 'products', 'products', 'AdminProductsController', 0, 0, '2020-11-18 21:41:51', NULL, NULL),
(16, 'Sales', 'fa fa-shopping-cart', 'sales', 'sales', 'AdminSalesController', 0, 0, '2020-11-19 01:54:14', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cms_notifications`
--

CREATE TABLE `cms_notifications` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_cms_users` int(11) DEFAULT NULL,
  `content` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_read` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cms_notifications`
--

INSERT INTO `cms_notifications` (`id`, `id_cms_users`, `content`, `url`, `is_read`, `created_at`, `updated_at`) VALUES
(1, 1, 'Hellow World1', 'http://localhost:9090/salesfunnel/admin/sales', 0, '2020-11-19 02:42:09', NULL),
(2, 2, 'Hellow World1', 'http://localhost:9090/salesfunnel/admin/sales', 1, '2020-11-19 02:42:09', NULL),
(3, 3, 'Hellow World1', 'http://localhost:9090/salesfunnel/admin/sales', 0, '2020-11-19 02:42:09', NULL),
(4, 1, 'New Sales Added for 2', 'http://localhost:9090/salesfunnel/admin/sales', 0, '2020-11-19 02:46:49', NULL),
(5, 2, 'New Sales Added for 2', 'http://localhost:9090/salesfunnel/admin/sales', 1, '2020-11-19 02:46:49', NULL),
(6, 3, 'New Sales Added for 2', 'http://localhost:9090/salesfunnel/admin/sales', 0, '2020-11-19 02:46:49', NULL),
(7, 1, '2 Sales Edited', 'http://localhost:9090/salesfunnel/admin/sales', 0, '2020-11-19 02:47:16', NULL),
(8, 2, '2 Sales Edited', 'http://localhost:9090/salesfunnel/admin/sales', 1, '2020-11-19 02:47:16', NULL),
(9, 3, '2 Sales Edited', 'http://localhost:9090/salesfunnel/admin/sales', 0, '2020-11-19 02:47:16', NULL),
(10, 1, '1 Sales Updated by Abin Rimal', 'http://localhost:9090/salesfunnel/admin/sales', 0, '2020-11-19 02:54:01', NULL),
(11, 2, '1 Sales Updated by Abin Rimal', 'http://localhost:9090/salesfunnel/admin/sales', 0, '2020-11-19 02:54:01', NULL),
(12, 3, '1 Sales Updated by Abin Rimal', 'http://localhost:9090/salesfunnel/admin/sales', 0, '2020-11-19 02:54:01', NULL),
(13, 1, 'Golden Horse Automatic Sales Updated by Abin Rimal', 'http://localhost:9090/salesfunnel/admin/sales', 0, '2020-11-19 03:21:11', NULL),
(14, 2, 'Golden Horse Automatic Sales Updated by Abin Rimal', 'http://localhost:9090/salesfunnel/admin/sales', 1, '2020-11-19 03:21:11', NULL),
(15, 3, 'Golden Horse Automatic Sales Updated by Abin Rimal', 'http://localhost:9090/salesfunnel/admin/sales', 0, '2020-11-19 03:21:11', NULL),
(16, 1, 'Abin Rimal added new Sales of Golden Horse Automaticfor Rs.4000', 'http://localhost:9090/salesfunnel/admin/sales', 0, '2020-11-19 03:22:37', NULL),
(17, 2, 'Abin Rimal added new Sales of Golden Horse Automaticfor Rs.4000', 'http://localhost:9090/salesfunnel/admin/sales', 0, '2020-11-19 03:22:37', NULL),
(18, 3, 'Abin Rimal added new Sales of Golden Horse Automaticfor Rs.4000', 'http://localhost:9090/salesfunnel/admin/sales', 0, '2020-11-19 03:22:37', NULL),
(19, 1, 'Abin Rimal added new Sales of Golden Horse Automaticfor Rs.2000', 'http://localhost:9090/salesfunnel/admin/sales', 0, '2020-11-19 03:39:03', NULL),
(20, 2, 'Abin Rimal added new Sales of Golden Horse Automaticfor Rs.2000', 'http://localhost:9090/salesfunnel/admin/sales', 0, '2020-11-19 03:39:03', NULL),
(21, 3, 'Abin Rimal added new Sales of Golden Horse Automaticfor Rs.2000', 'http://localhost:9090/salesfunnel/admin/sales', 0, '2020-11-19 03:39:03', NULL),
(22, 1, 'Abin Rimal added new Sales of Golden Horse Automaticfor Rs.2000', 'http://localhost:9090/salesfunnel/admin/sales', 0, '2020-11-19 03:42:12', NULL),
(23, 2, 'Abin Rimal added new Sales of Golden Horse Automaticfor Rs.2000', 'http://localhost:9090/salesfunnel/admin/sales', 0, '2020-11-19 03:42:12', NULL),
(24, 3, 'Abin Rimal added new Sales of Golden Horse Automaticfor Rs.2000', 'http://localhost:9090/salesfunnel/admin/sales', 0, '2020-11-19 03:42:12', NULL),
(25, 1, 'Abin Rimal added new Sales of Golden Horse Automaticfor Rs.2000', 'http://localhost:9090/salesfunnel/admin/sales', 0, '2020-11-19 03:44:39', NULL),
(26, 2, 'Abin Rimal added new Sales of Golden Horse Automaticfor Rs.2000', 'http://localhost:9090/salesfunnel/admin/sales', 0, '2020-11-19 03:44:39', NULL),
(27, 3, 'Abin Rimal added new Sales of Golden Horse Automaticfor Rs.2000', 'http://localhost:9090/salesfunnel/admin/sales', 0, '2020-11-19 03:44:39', NULL),
(28, 1, 'Abin Rimal added new Sales of Golden Horse Automaticfor Rs.2000', 'http://localhost:9090/salesfunnel/admin/sales', 0, '2020-11-19 03:52:11', NULL),
(29, 2, 'Abin Rimal added new Sales of Golden Horse Automaticfor Rs.2000', 'http://localhost:9090/salesfunnel/admin/sales', 0, '2020-11-19 03:52:11', NULL),
(30, 3, 'Abin Rimal added new Sales of Golden Horse Automaticfor Rs.2000', 'http://localhost:9090/salesfunnel/admin/sales', 0, '2020-11-19 03:52:11', NULL),
(31, 1, 'Abin Rimal added new Sales of Golden Horse Automaticfor Rs.4000', 'http://localhost:9090/salesfunnel/admin/sales', 0, '2020-11-19 03:55:34', NULL),
(32, 2, 'Abin Rimal added new Sales of Golden Horse Automaticfor Rs.4000', 'http://localhost:9090/salesfunnel/admin/sales', 0, '2020-11-19 03:55:34', NULL),
(33, 3, 'Abin Rimal added new Sales of Golden Horse Automaticfor Rs.4000', 'http://localhost:9090/salesfunnel/admin/sales', 0, '2020-11-19 03:55:34', NULL),
(34, 1, 'Abin Rimal added new Sales of Golden Horse Automaticfor Rs.4000', 'http://localhost:9090/salesfunnel/admin/sales', 0, '2020-11-19 03:56:59', NULL),
(35, 2, 'Abin Rimal added new Sales of Golden Horse Automaticfor Rs.4000', 'http://localhost:9090/salesfunnel/admin/sales', 0, '2020-11-19 03:56:59', NULL),
(36, 3, 'Abin Rimal added new Sales of Golden Horse Automaticfor Rs.4000', 'http://localhost:9090/salesfunnel/admin/sales', 0, '2020-11-19 03:56:59', NULL),
(37, 1, 'Abin Rimal added new Sales of Golden Horse Automaticfor Rs.4000', 'http://localhost:9090/salesfunnel/admin/sales', 0, '2020-11-19 03:59:21', NULL),
(38, 2, 'Abin Rimal added new Sales of Golden Horse Automaticfor Rs.4000', 'http://localhost:9090/salesfunnel/admin/sales', 0, '2020-11-19 03:59:21', NULL),
(39, 3, 'Abin Rimal added new Sales of Golden Horse Automaticfor Rs.4000', 'http://localhost:9090/salesfunnel/admin/sales', 0, '2020-11-19 03:59:21', NULL),
(40, 1, 'Golden Horse Automatic Sales Updated by Abin Rimal', 'http://localhost:9090/salesfunnel/admin/sales', 0, '2020-11-19 04:04:18', NULL),
(41, 2, 'Golden Horse Automatic Sales Updated by Abin Rimal', 'http://localhost:9090/salesfunnel/admin/sales', 0, '2020-11-19 04:04:18', NULL),
(42, 3, 'Golden Horse Automatic Sales Updated by Abin Rimal', 'http://localhost:9090/salesfunnel/admin/sales', 0, '2020-11-19 04:04:18', NULL),
(43, 1, 'Abin Rimal added new Sales of Golden Horse Automaticfor Rs.330000', 'http://localhost:9090/salesfunnel/admin/sales', 0, '2020-11-19 04:13:07', NULL),
(44, 2, 'Abin Rimal added new Sales of Golden Horse Automaticfor Rs.330000', 'http://localhost:9090/salesfunnel/admin/sales', 0, '2020-11-19 04:13:07', NULL),
(45, 3, 'Abin Rimal added new Sales of Golden Horse Automaticfor Rs.330000', 'http://localhost:9090/salesfunnel/admin/sales', 0, '2020-11-19 04:13:07', NULL),
(46, 1, 'Abin Rimal added new Sales of iPhone 11 Pro Max 4GB 64GB Space Grayfor Rs.170000', 'http://localhost:9090/salesfunnel/admin/sales', 0, '2020-11-19 04:24:22', NULL),
(47, 2, 'Abin Rimal added new Sales of iPhone 11 Pro Max 4GB 64GB Space Grayfor Rs.170000', 'http://localhost:9090/salesfunnel/admin/sales', 0, '2020-11-19 04:24:22', NULL),
(48, 3, 'Abin Rimal added new Sales of iPhone 11 Pro Max 4GB 64GB Space Grayfor Rs.170000', 'http://localhost:9090/salesfunnel/admin/sales', 0, '2020-11-19 04:24:22', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cms_privileges`
--

CREATE TABLE `cms_privileges` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_superadmin` tinyint(1) DEFAULT NULL,
  `theme_color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cms_privileges`
--

INSERT INTO `cms_privileges` (`id`, `name`, `is_superadmin`, `theme_color`, `created_at`, `updated_at`) VALUES
(1, 'Super Administrator', 1, 'skin-red', '2020-11-09 07:45:16', NULL),
(2, 'Admin', 0, 'skin-purple', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cms_privileges_roles`
--

CREATE TABLE `cms_privileges_roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `is_visible` tinyint(1) DEFAULT NULL,
  `is_create` tinyint(1) DEFAULT NULL,
  `is_read` tinyint(1) DEFAULT NULL,
  `is_edit` tinyint(1) DEFAULT NULL,
  `is_delete` tinyint(1) DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL,
  `id_cms_moduls` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cms_privileges_roles`
--

INSERT INTO `cms_privileges_roles` (`id`, `is_visible`, `is_create`, `is_read`, `is_edit`, `is_delete`, `id_cms_privileges`, `id_cms_moduls`, `created_at`, `updated_at`) VALUES
(1, 1, 0, 0, 0, 0, 1, 1, '2020-11-09 07:45:16', NULL),
(2, 1, 1, 1, 1, 1, 1, 2, '2020-11-09 07:45:16', NULL),
(3, 0, 1, 1, 1, 1, 1, 3, '2020-11-09 07:45:16', NULL),
(4, 1, 1, 1, 1, 1, 1, 4, '2020-11-09 07:45:16', NULL),
(5, 1, 1, 1, 1, 1, 1, 5, '2020-11-09 07:45:16', NULL),
(6, 1, 1, 1, 1, 1, 1, 6, '2020-11-09 07:45:16', NULL),
(7, 1, 1, 1, 1, 1, 1, 7, '2020-11-09 07:45:16', NULL),
(8, 1, 1, 1, 1, 1, 1, 8, '2020-11-09 07:45:16', NULL),
(9, 1, 1, 1, 1, 1, 1, 9, '2020-11-09 07:45:16', NULL),
(10, 1, 1, 1, 1, 1, 1, 10, '2020-11-09 07:45:16', NULL),
(11, 1, 0, 1, 0, 1, 1, 11, '2020-11-09 07:45:16', NULL),
(12, 1, 1, 1, 1, 1, 1, 12, NULL, NULL),
(13, 1, 1, 1, 1, 1, 1, 13, NULL, NULL),
(14, 1, 1, 1, 1, 1, 1, 14, NULL, NULL),
(15, 1, 1, 1, 1, 1, 1, 15, NULL, NULL),
(16, 1, 1, 1, 1, 1, 1, 16, NULL, NULL),
(17, 1, 1, 1, 1, 0, 2, 13, NULL, NULL),
(18, 1, 1, 1, 1, 0, 2, 14, NULL, NULL),
(19, 1, 1, 1, 1, 0, 2, 12, NULL, NULL),
(20, 1, 1, 1, 1, 0, 2, 15, NULL, NULL),
(21, 1, 1, 1, 1, 0, 2, 16, NULL, NULL),
(22, 1, 1, 1, 1, 0, 2, 4, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cms_settings`
--

CREATE TABLE `cms_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `content_input_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dataenum` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `helper` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `group_setting` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `label` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cms_settings`
--

INSERT INTO `cms_settings` (`id`, `name`, `content`, `content_input_type`, `dataenum`, `helper`, `created_at`, `updated_at`, `group_setting`, `label`) VALUES
(1, 'login_background_color', NULL, 'text', NULL, 'Input hexacode', '2020-11-09 07:45:16', NULL, 'Login Register Style', 'Login Background Color'),
(2, 'login_font_color', NULL, 'text', NULL, 'Input hexacode', '2020-11-09 07:45:16', NULL, 'Login Register Style', 'Login Font Color'),
(3, 'login_background_image', NULL, 'upload_image', NULL, NULL, '2020-11-09 07:45:16', NULL, 'Login Register Style', 'Login Background Image'),
(4, 'email_sender', 'info@jlpt.org.np', 'text', NULL, NULL, '2020-11-09 07:45:16', NULL, 'Email Setting', 'Email Sender'),
(5, 'smtp_driver', 'smtp', 'select', 'smtp,mail,sendmail', NULL, '2020-11-09 07:45:16', NULL, 'Email Setting', 'Mail Driver'),
(6, 'smtp_host', 'everest.silverlining.com.np', 'text', NULL, NULL, '2020-11-09 07:45:16', NULL, 'Email Setting', 'SMTP Host'),
(7, 'smtp_port', '587', 'text', NULL, 'default 25', '2020-11-09 07:45:16', NULL, 'Email Setting', 'SMTP Port'),
(8, 'smtp_username', 'info@jlpt.org.np', 'text', NULL, NULL, '2020-11-09 07:45:16', NULL, 'Email Setting', 'SMTP Username'),
(9, 'smtp_password', 'iJz4b4h{63Yt', 'text', NULL, NULL, '2020-11-09 07:45:16', NULL, 'Email Setting', 'SMTP Password'),
(10, 'appname', 'Sales Track', 'text', NULL, NULL, '2020-11-09 07:45:16', NULL, 'Application Setting', 'Application Name'),
(11, 'default_paper_size', 'Legal', 'text', NULL, 'Paper size, ex : A4, Legal, etc', '2020-11-09 07:45:16', NULL, 'Application Setting', 'Default Paper Print Size'),
(12, 'logo', 'uploads/2020-11/d10d4af364d8ba0df6b545b2423e559c.png', 'upload_image', NULL, NULL, '2020-11-09 07:45:16', NULL, 'Application Setting', 'Logo'),
(13, 'favicon', 'uploads/2020-11/f37d57117e69157200d925ff972e4c92.png', 'upload_image', NULL, NULL, '2020-11-09 07:45:16', NULL, 'Application Setting', 'Favicon'),
(14, 'api_debug_mode', 'true', 'select', 'true,false', NULL, '2020-11-09 07:45:16', NULL, 'Application Setting', 'API Debug Mode'),
(15, 'google_api_key', NULL, 'text', NULL, NULL, '2020-11-09 07:45:16', NULL, 'Application Setting', 'Google API Key'),
(16, 'google_fcm_key', NULL, 'text', NULL, NULL, '2020-11-09 07:45:16', NULL, 'Application Setting', 'Google FCM Key');

-- --------------------------------------------------------

--
-- Table structure for table `cms_statistics`
--

CREATE TABLE `cms_statistics` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cms_statistic_components`
--

CREATE TABLE `cms_statistic_components` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_cms_statistics` int(11) DEFAULT NULL,
  `componentID` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `component_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `area_name` varchar(55) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sorting` int(11) DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `config` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cms_users`
--

CREATE TABLE `cms_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cms_users`
--

INSERT INTO `cms_users` (`id`, `name`, `photo`, `email`, `password`, `id_cms_privileges`, `created_at`, `updated_at`, `status`) VALUES
(1, 'Super Admin', NULL, 'admin@crudbooster.com', '$2y$10$/.Ga8jUu.CdJVHF0QQKb5OWRodFbQzDx7LqA/C5D.uTF7.rUKxFem', 1, '2020-11-09 07:45:16', NULL, 'Active'),
(2, 'Abin Rimal', 'uploads/1/2020-11/virgin.png', 'abinrimal7@gmail.com', '$2y$10$QPyQlSDqmDWqDPjSSxcPGegBznlnLsERE9wZPDx.QbORDuLdvYVr6', 1, '2020-11-18 10:18:57', NULL, NULL),
(3, 'Virgin Mobile Pvt Ltd', 'uploads/2/2020-11/virgin.png', 'info@virginmobile.com.np', '$2y$10$JeB4MxC/R8ueT8SZHPiPQeSEXAnnYhqABZBY.gdCffr2wdGCJDeuO', 2, '2020-11-19 04:34:10', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `full_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `added_by` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_by` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `full_name`, `phone`, `address`, `email`, `added_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Vivek Bindra', '9848094455', 'Basundhara Chowki', 'abinrimal7@gmail.com', '2', '2', '2020-11-18 21:36:55', NULL),
(2, 'Abin Rimal', '9845431044', 'Maharajung - 03', 'abin.rimal06@gmail.com', '2', '2', '2020-11-18 21:40:02', NULL),
(3, 'Sujan Maharjan', '9851198511', 'Basundhara', 'sujan.maharjan75@gmail.com', '2', '2', '2020-11-19 04:22:12', '2020-11-19 04:22:45');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
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
(3, '2016_08_07_145904_add_table_cms_apicustom', 1),
(4, '2016_08_07_150834_add_table_cms_dashboard', 1),
(5, '2016_08_07_151210_add_table_cms_logs', 1),
(6, '2016_08_07_151211_add_details_cms_logs', 1),
(7, '2016_08_07_152014_add_table_cms_privileges', 1),
(8, '2016_08_07_152214_add_table_cms_privileges_roles', 1),
(9, '2016_08_07_152320_add_table_cms_settings', 1),
(10, '2016_08_07_152421_add_table_cms_users', 1),
(11, '2016_08_07_154624_add_table_cms_menus_privileges', 1),
(12, '2016_08_07_154624_add_table_cms_moduls', 1),
(13, '2016_08_17_225409_add_status_cms_users', 1),
(14, '2016_08_20_125418_add_table_cms_notifications', 1),
(15, '2016_09_04_033706_add_table_cms_email_queues', 1),
(16, '2016_09_16_035347_add_group_setting', 1),
(17, '2016_09_16_045425_add_label_setting', 1),
(18, '2016_09_17_104728_create_nullable_cms_apicustom', 1),
(19, '2016_10_01_141740_add_method_type_apicustom', 1),
(20, '2016_10_01_141846_add_parameters_apicustom', 1),
(21, '2016_10_01_141934_add_responses_apicustom', 1),
(22, '2016_10_01_144826_add_table_apikey', 1),
(23, '2016_11_14_141657_create_cms_menus', 1),
(24, '2016_11_15_132350_create_cms_email_templates', 1),
(25, '2016_11_15_190410_create_cms_statistics', 1),
(26, '2016_11_17_102740_create_cms_statistic_components', 1),
(27, '2017_06_06_164501_add_deleted_at_cms_moduls', 1),
(28, '2019_08_19_000000_create_failed_jobs_table', 1),
(30, '2020_11_17_150805_create_product_type_table', 2),
(31, '2020_11_18_100648_create_customers_table', 3),
(32, '2020_11_18_101841_create_products_table', 3),
(33, '2020_11_18_103152_create_sales_table', 3),
(34, '2020_11_18_132456_create_branches_table', 3);

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
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `imei` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `picture` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stock_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stock_quality` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `added_by` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_by` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `product_name`, `model`, `imei`, `price`, `category`, `picture`, `description`, `stock_id`, `stock_quality`, `added_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Golden Horse Automatic', '21342', '2312312312', '330000', '1', 'uploads/2/2020-11/swsc_image_student.png', NULL, NULL, '10', '2', '2', '2020-11-19 01:49:54', NULL),
(2, 'iPhone 11 Pro Max 4GB 64GB Space Gray', '64GB Space Gray', '1234', '170000', '1', 'uploads/2/2020-11/phone_xs_max_0b4628d1_9204_4a34_b8c7_1a75f3bbfe9b_2048x2048.jpg', NULL, NULL, '0', '2', '2', '2020-11-19 04:19:58', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product_type`
--

CREATE TABLE `product_type` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_type`
--

INSERT INTO `product_type` (`id`, `type_name`, `created_at`, `updated_at`) VALUES
(1, 'Mobile', '2020-11-17 09:27:58', NULL),
(2, 'Earphone', '2020-11-17 09:28:22', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `warrenty_card` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT 'na',
  `branch` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `added_by` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `verified_by` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`id`, `customer`, `product`, `price`, `warrenty_card`, `branch`, `status`, `added_by`, `verified_by`, `created_at`, `updated_at`) VALUES
(1, '2', '1', '4000', 'uploads/2/2020-11/virgin.png', '2', 'NO', '1', '2', '2020-11-19 02:26:01', '2020-11-19 03:21:11'),
(2, '1', '1', '4000', 'uploads/2/2020-11/virgin.png', '6', 'Yes', '2', '1', '2020-11-19 02:46:49', '2020-11-19 02:47:16'),
(3, '2', '1', '4000', 'uploads/2/2020-11/virgin.png', '6', 'NO', '2', NULL, '2020-11-19 03:22:37', NULL),
(4, '2', '1', '2000', 'uploads/2/2020-11/virgin.png', '2', 'NO', '2', NULL, '2020-11-19 03:39:03', NULL),
(5, '1', '1', '2000', 'uploads/2/2020-11/virgin.png', '2', 'NO', '2', NULL, '2020-11-19 03:42:12', NULL),
(6, '1', '1', '2000', 'uploads/2/2020-11/virgin.png', '2', 'NO', '2', NULL, '2020-11-19 03:44:39', NULL),
(7, '1', '1', '2000', 'uploads/2/2020-11/virgin.png', '2', 'NO', '2', NULL, '2020-11-19 03:52:11', NULL),
(8, '1', '1', '4000', 'uploads/2/2020-11/virgin.png', '2', 'NO', '2', NULL, '2020-11-19 03:55:34', NULL),
(9, '1', '1', '4000', 'uploads/2/2020-11/virgin.png', '2', 'NO', '2', NULL, '2020-11-19 03:56:59', NULL),
(10, '1', '1', '4000', 'uploads/2/2020-11/virgin.png', '2', 'Yes', '2', '2', '2020-11-19 03:59:21', '2020-11-19 04:04:18'),
(11, '1', '1', '330000', 'uploads/2/2020-11/virgin.png', '6', 'NO', '2', NULL, '2020-11-19 04:13:07', NULL),
(12, '3', '2', '170000', 'uploads/2/2020-11/virgin.png', '2', 'NO', '2', NULL, '2020-11-19 04:24:22', NULL);

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
-- Indexes for dumped tables
--

--
-- Indexes for table `branches`
--
ALTER TABLE `branches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_apicustom`
--
ALTER TABLE `cms_apicustom`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_apikey`
--
ALTER TABLE `cms_apikey`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_dashboard`
--
ALTER TABLE `cms_dashboard`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_email_queues`
--
ALTER TABLE `cms_email_queues`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_email_templates`
--
ALTER TABLE `cms_email_templates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_logs`
--
ALTER TABLE `cms_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_menus`
--
ALTER TABLE `cms_menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_menus_privileges`
--
ALTER TABLE `cms_menus_privileges`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_moduls`
--
ALTER TABLE `cms_moduls`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_notifications`
--
ALTER TABLE `cms_notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_privileges`
--
ALTER TABLE `cms_privileges`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_privileges_roles`
--
ALTER TABLE `cms_privileges_roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_settings`
--
ALTER TABLE `cms_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_statistics`
--
ALTER TABLE `cms_statistics`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_statistic_components`
--
ALTER TABLE `cms_statistic_components`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_users`
--
ALTER TABLE `cms_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

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
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_type`
--
ALTER TABLE `product_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
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
-- AUTO_INCREMENT for table `branches`
--
ALTER TABLE `branches`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `cms_apicustom`
--
ALTER TABLE `cms_apicustom`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cms_apikey`
--
ALTER TABLE `cms_apikey`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cms_dashboard`
--
ALTER TABLE `cms_dashboard`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cms_email_queues`
--
ALTER TABLE `cms_email_queues`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cms_email_templates`
--
ALTER TABLE `cms_email_templates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `cms_logs`
--
ALTER TABLE `cms_logs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `cms_menus`
--
ALTER TABLE `cms_menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `cms_menus_privileges`
--
ALTER TABLE `cms_menus_privileges`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `cms_moduls`
--
ALTER TABLE `cms_moduls`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `cms_notifications`
--
ALTER TABLE `cms_notifications`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `cms_privileges`
--
ALTER TABLE `cms_privileges`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `cms_privileges_roles`
--
ALTER TABLE `cms_privileges_roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `cms_settings`
--
ALTER TABLE `cms_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `cms_statistics`
--
ALTER TABLE `cms_statistics`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cms_statistic_components`
--
ALTER TABLE `cms_statistic_components`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cms_users`
--
ALTER TABLE `cms_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `product_type`
--
ALTER TABLE `product_type`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
