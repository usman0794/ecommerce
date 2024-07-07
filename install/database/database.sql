-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 28, 2023 at 01:04 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `genius_shop_single`
--

-- --------------------------------------------------------

--
-- Table structure for table `addons`
--

CREATE TABLE `addons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `keyword` varchar(191) DEFAULT NULL,
  `type` varchar(191) DEFAULT NULL,
  `uninstall_files` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `email` varchar(191) NOT NULL,
  `phone` varchar(191) NOT NULL,
  `role_id` int(191) NOT NULL DEFAULT 0,
  `photo` varchar(191) DEFAULT NULL,
  `password` varchar(191) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `remember_token` varchar(100) DEFAULT NULL,
  `email_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `shop_name` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `phone`, `role_id`, `photo`, `password`, `status`, `remember_token`, `email_token`, `created_at`, `updated_at`, `shop_name`) VALUES
(1, 'Admin', 'admin@gmail.com', '01629552892', 0, '1556780563user.png', '$2y$10$bvMVG9qQG2H90HfR3Wj8aeyTTK4t1lypd1.1PgP/At8qdEDYThI3O', 1, 'oL63V64ZkIgPEe7PzYSxlez4NCQC8SQonoLg1eg4WyRMMzZ5bQv4Ivra5zJz', NULL, '2018-02-28 23:27:08', '2020-11-19 04:40:00', 'Genius Store'),
(5, 'Mr Mamun', 'mamun@gmail.com', '34534534', 17, '1568803644User.png', '$2y$10$3AEjcvFBiQHECgtH9ivXTeQZfMf.rw318G820TtVBsYaCt7UNOwGC', 1, NULL, NULL, '2019-09-18 04:47:24', '2019-09-18 21:21:49', NULL),
(6, 'Mr. Manik', 'manik@gmail.com', '5079956958', 18, '1568863361user-admin.png', '$2y$10$Z3Jx5jHjV2m4HtZHzeaKMuwxkLAKfJ1AX3Ed5MPACvFJLFkEWN9L.', 1, NULL, NULL, '2019-09-18 21:22:41', '2019-09-18 21:22:41', NULL),
(7, 'Mr. Pratik', 'shaon@gmail.com', '34534534', 16, '1568863396user-admin.png', '$2y$10$u.93l4y6wOz6vq3BlAxvU.LuJ16/uBQ9s2yesRGTWUtLRiQSwoH1C', 1, '7nIlCaoDI2jBZDDZVeJPV6FGVjtrfVM6t7QnWx0L8AwUw24wp5IQxbU3YNLe', NULL, '2019-09-18 21:23:16', '2019-09-18 21:23:16', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin_languages`
--

CREATE TABLE `admin_languages` (
  `id` int(191) NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT 0,
  `language` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `file` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `rtl` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin_languages`
--

INSERT INTO `admin_languages` (`id`, `is_default`, `language`, `file`, `name`, `rtl`) VALUES
(1, 1, 'English', '1567232745AoOcvCtY.json', '1567232745AoOcvCtY', 0),
(2, 0, 'Bangla', '1567247534xTuVLrXh.json', '1567247534xTuVLrXh', 1),
(3, 0, 'عربى', '15970374764TGUNJJs.json', '15970374764TGUNJJs', 0);

-- --------------------------------------------------------

--
-- Table structure for table `admin_user_conversations`
--

CREATE TABLE `admin_user_conversations` (
  `id` int(191) NOT NULL,
  `subject` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(191) NOT NULL,
  `message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `type` enum('Ticket','Dispute') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_number` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin_user_conversations`
--

INSERT INTO `admin_user_conversations` (`id`, `subject`, `user_id`, `message`, `created_at`, `updated_at`, `type`, `order_number`) VALUES
(3, 'Order Confirmation', 13, 'sdf', '2019-08-19 23:17:51', '2019-08-19 23:17:51', 'Dispute', 'adasd423423'),
(9, 'TEST', 22, 'tes', '2020-03-30 05:03:37', '2020-03-30 05:03:37', 'Ticket', NULL),
(10, 'leave application', 13, 'werewr', '2020-08-11 02:17:13', '2020-08-11 02:17:13', NULL, NULL),
(15, 'sda', 22, 'fghj', '2021-12-12 17:21:01', '2021-12-12 17:21:01', NULL, NULL),
(17, 'gfgfg', 22, 'fgfgfg', '2021-12-14 12:52:32', '2021-12-14 12:52:32', NULL, NULL),
(18, 'dsghte', 22, 'fgjdfgjdfj', '2022-02-05 23:34:52', '2022-02-05 23:34:52', NULL, NULL),
(19, 'Helleo', 22, 'jyjtyurtyi', '2022-02-05 23:35:14', '2022-02-05 23:35:14', 'Ticket', NULL),
(21, 'Helleo', 22, 'etrwy', '2022-02-21 00:32:01', '2022-02-21 00:32:01', 'Dispute', 'jtcWfaomu8');

-- --------------------------------------------------------

--
-- Table structure for table `admin_user_messages`
--

CREATE TABLE `admin_user_messages` (
  `id` int(191) NOT NULL,
  `conversation_id` int(191) NOT NULL,
  `message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin_user_messages`
--

INSERT INTO `admin_user_messages` (`id`, `conversation_id`, `message`, `user_id`, `created_at`, `updated_at`) VALUES
(5, 3, 'sdf', 13, '2019-08-19 23:17:51', '2019-08-19 23:17:51'),
(15, 9, 'tes', 22, '2020-03-30 05:03:38', '2020-03-30 05:03:38'),
(16, 10, 'werewr', NULL, '2020-08-11 02:17:13', '2020-08-11 02:17:13'),
(21, 15, 'fghj', NULL, '2021-12-12 17:21:01', '2021-12-12 17:21:01'),
(23, 17, 'fgfgfg', NULL, '2021-12-14 12:52:32', '2021-12-14 12:52:32'),
(24, 18, 'fgjdfgjdfj', NULL, '2022-02-05 23:34:52', '2022-02-05 23:34:52'),
(25, 19, 'jyjtyurtyi', 22, '2022-02-05 23:35:14', '2022-02-05 23:35:14'),
(26, 19, 'ghdfghdgh', NULL, '2022-02-05 23:35:26', '2022-02-05 23:35:26'),
(27, 19, 'hgjgjuh', 22, '2022-02-05 23:58:50', '2022-02-05 23:58:50'),
(28, 19, 'gjyfu', 22, '2022-02-05 23:58:58', '2022-02-05 23:58:58'),
(30, 21, 'etrwy', 22, '2022-02-21 00:32:01', '2022-02-21 00:32:01'),
(31, 21, 'tuyrir', 22, '2022-02-21 00:32:34', '2022-02-21 00:32:34');

-- --------------------------------------------------------

--
-- Table structure for table `arrival_sections`
--

CREATE TABLE `arrival_sections` (
  `id` int(5) NOT NULL,
  `title` varchar(500) NOT NULL,
  `header` varchar(500) NOT NULL,
  `photo` varchar(300) NOT NULL,
  `up_sale` varchar(255) DEFAULT NULL,
  `url` text DEFAULT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT current_timestamp(6),
  `updated_at` timestamp(6) NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `arrival_sections`
--

INSERT INTO `arrival_sections` (`id`, `title`, `header`, `photo`, `up_sale`, `url`, `created_at`, `updated_at`) VALUES
(3, 'MEN COLLECTION', 'New Autumn Arrival 2021', '166306363884png.png', 'SALE UP TO 30%', 'https://codecanyon.net/item/geniuscart-single-or-multivendor-ecommerce-system-with-physical-and-digital-product-marketplace/24089099', '2022-02-01 03:03:51.000000', '2022-09-13 04:07:18.000000'),
(4, 'EXO TRAVEL BAGS', 'BAGS AND SHOES', '166306365085png.png', 'SALE UP TO 50%', 'https://codecanyon.net/item/geniuscart-single-or-multivendor-ecommerce-system-with-physical-and-digital-product-marketplace/24089099', '2022-02-01 04:08:01.000000', '2022-09-13 04:07:30.000000'),
(7, 'NEW ARRIVALS', 'Casual Shoes', '166306009486png.png', 'SALE UP TO 70%', 'https://codecanyon.net/item/geniuscart-single-or-multivendor-ecommerce-system-with-physical-and-digital-product-marketplace/24089099', '2022-02-01 04:08:01.000000', '2022-09-13 04:28:51.000000');

-- --------------------------------------------------------

--
-- Table structure for table `attributes`
--

CREATE TABLE `attributes` (
  `id` int(11) NOT NULL,
  `attributable_id` int(11) DEFAULT NULL,
  `attributable_type` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `input_name` varchar(255) DEFAULT NULL,
  `price_status` int(3) NOT NULL DEFAULT 1 COMMENT '0 - hide, 1- show	',
  `details_status` int(3) NOT NULL DEFAULT 1 COMMENT '0 - hide, 1- show	',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `attributes`
--

INSERT INTO `attributes` (`id`, `attributable_id`, `attributable_type`, `name`, `input_name`, `price_status`, `details_status`, `created_at`, `updated_at`) VALUES
(14, 5, 'App\\Models\\Category', 'Warranty Type', 'warranty_type', 1, 1, '2019-09-23 22:56:07', '2019-09-23 22:56:07'),
(20, 4, 'App\\Models\\Category', 'Warranty Type', 'warranty_type', 1, 1, '2019-09-24 00:41:46', '2019-10-03 00:18:54'),
(21, 4, 'App\\Models\\Category', 'Brand', 'brand', 1, 1, '2019-09-24 00:44:13', '2019-10-03 00:19:13'),
(22, 2, 'App\\Models\\Subcategory', 'Color Family', 'color_family', 1, 1, '2019-09-24 00:45:45', '2019-09-24 00:45:45'),
(24, 1, 'App\\Models\\Childcategory', 'Display Size', 'display_size', 1, 1, '2019-09-24 00:54:17', '2019-09-24 00:54:17'),
(25, 12, 'App\\Models\\Subcategory', 'demo', 'demo', 1, 1, '2019-09-24 01:26:47', '2019-09-24 01:26:47'),
(30, 3, 'App\\Models\\Subcategory', 'Interior Color', 'interior_color', 1, 1, '2019-09-24 04:31:44', '2019-09-24 04:31:44'),
(31, 8, 'App\\Models\\Childcategory', 'Temperature', 'temperature', 1, 1, '2019-09-24 04:34:35', '2019-09-24 04:34:35'),
(32, 18, 'App\\Models\\Category', 'Demo', 'demo', 1, 1, '2019-10-02 23:39:12', '2019-10-02 23:39:12'),
(33, 4, 'App\\Models\\Category', 'RAM', 'ram', 0, 1, '2019-10-12 03:22:03', '2020-11-09 02:26:58'),
(39, 16, 'App\\Models\\Category', 'Brand', 'brand', 1, 1, '2022-03-24 15:50:51', '2022-03-24 15:50:51'),
(40, 16, 'App\\Models\\Category', 'Warrenty', 'warrenty', 1, 1, '2022-03-24 15:54:30', '2022-03-24 15:54:30'),
(41, 16, 'App\\Models\\Category', 'Belt', 'belt', 1, 1, '2022-03-24 15:55:52', '2022-03-24 15:55:52');

-- --------------------------------------------------------

--
-- Table structure for table `attribute_options`
--

CREATE TABLE `attribute_options` (
  `id` int(11) NOT NULL,
  `attribute_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `attribute_options`
--

INSERT INTO `attribute_options` (`id`, `attribute_id`, `name`, `created_at`, `updated_at`) VALUES
(107, 14, 'No Warranty', '2019-09-23 22:56:07', '2019-09-23 22:56:07'),
(108, 14, 'Local seller Warranty', '2019-09-23 22:56:07', '2019-09-23 22:56:07'),
(109, 14, 'Non local warranty', '2019-09-23 22:56:07', '2019-09-23 22:56:07'),
(110, 14, 'International Manufacturer Warranty', '2019-09-23 22:56:07', '2019-09-23 22:56:07'),
(111, 14, 'International Seller Warranty', '2019-09-23 22:56:07', '2019-09-23 22:56:07'),
(157, 22, 'Black', '2019-09-24 00:46:26', '2019-09-24 00:46:26'),
(158, 22, 'White', '2019-09-24 00:46:26', '2019-09-24 00:46:26'),
(159, 22, 'Sliver', '2019-09-24 00:46:26', '2019-09-24 00:46:26'),
(160, 22, 'Red', '2019-09-24 00:46:26', '2019-09-24 00:46:26'),
(161, 22, 'Dark Grey', '2019-09-24 00:46:26', '2019-09-24 00:46:26'),
(162, 22, 'Dark Blue', '2019-09-24 00:46:26', '2019-09-24 00:46:26'),
(163, 22, 'Brown', '2019-09-24 00:46:26', '2019-09-24 00:46:26'),
(172, 24, '40', '2019-09-24 01:25:32', '2019-09-24 01:25:32'),
(173, 24, '22', '2019-09-24 01:25:32', '2019-09-24 01:25:32'),
(174, 24, '24', '2019-09-24 01:25:32', '2019-09-24 01:25:32'),
(175, 24, '32', '2019-09-24 01:25:32', '2019-09-24 01:25:32'),
(176, 24, '21', '2019-09-24 01:25:32', '2019-09-24 01:25:32'),
(177, 25, 'demo 1', '2019-09-24 01:26:47', '2019-09-24 01:26:47'),
(178, 25, 'demo 2', '2019-09-24 01:26:47', '2019-09-24 01:26:47'),
(187, 30, 'Yellow', '2019-09-24 04:31:44', '2019-09-24 04:31:44'),
(188, 30, 'White', '2019-09-24 04:31:44', '2019-09-24 04:31:44'),
(189, 31, '22', '2019-09-24 04:34:35', '2019-09-24 04:34:35'),
(190, 31, '34', '2019-09-24 04:34:35', '2019-09-24 04:34:35'),
(191, 31, '45', '2019-09-24 04:34:35', '2019-09-24 04:34:35'),
(195, 20, 'Local seller warranty', '2019-10-03 00:18:54', '2019-10-03 00:18:54'),
(196, 20, 'No warranty', '2019-10-03 00:18:54', '2019-10-03 00:18:54'),
(197, 20, 'international manufacturer warranty', '2019-10-03 00:18:54', '2019-10-03 00:18:54'),
(198, 20, 'Non-local warranty', '2019-10-03 00:18:54', '2019-10-03 00:18:54'),
(199, 21, 'Symphony', '2019-10-03 00:19:13', '2019-10-03 00:19:13'),
(200, 21, 'Oppo', '2019-10-03 00:19:13', '2019-10-03 00:19:13'),
(201, 21, 'EStore', '2019-10-03 00:19:13', '2019-10-03 00:19:13'),
(202, 21, 'Infinix', '2019-10-03 00:19:13', '2019-10-03 00:19:13'),
(203, 21, 'Apple', '2019-10-03 00:19:13', '2019-10-03 00:19:13'),
(253, 32, 'demo 1', '2019-10-13 03:18:04', '2019-10-13 03:18:04'),
(254, 32, 'demo 2', '2019-10-13 03:18:04', '2019-10-13 03:18:04'),
(255, 32, 'demo 3', '2019-10-13 03:18:04', '2019-10-13 03:18:04'),
(259, 33, '1 GB', '2020-11-09 02:26:58', '2020-11-09 02:26:58'),
(260, 33, '2 GB', '2020-11-09 02:26:58', '2020-11-09 02:26:58'),
(261, 33, '3 GB', '2020-11-09 02:26:58', '2020-11-09 02:26:58'),
(269, 39, 'G-Shock', '2022-03-24 15:50:51', '2022-03-24 15:50:51'),
(270, 39, 'Diesel', '2022-03-24 15:50:51', '2022-03-24 15:50:51'),
(271, 39, 'Longines', '2022-03-24 15:50:51', '2022-03-24 15:50:51'),
(272, 39, 'Hamilton', '2022-03-24 15:50:51', '2022-03-24 15:50:51'),
(273, 39, 'Citizen', '2022-03-24 15:50:51', '2022-03-24 15:50:51'),
(274, 40, 'Local Sell Warrenty', '2022-03-24 15:54:30', '2022-03-24 15:54:30'),
(275, 40, 'Manufacture Warrenty', '2022-03-24 15:54:30', '2022-03-24 15:54:30'),
(276, 40, 'International Warrenty', '2022-03-24 15:54:30', '2022-03-24 15:54:30'),
(277, 41, 'Leather', '2022-03-24 15:55:52', '2022-03-24 15:55:52'),
(278, 41, 'Stainless steel', '2022-03-24 15:55:52', '2022-03-24 15:55:52'),
(279, 41, 'Rubber', '2022-03-24 15:55:52', '2022-03-24 15:55:52'),
(280, 41, 'Normal', '2022-03-24 15:55:52', '2022-03-24 15:55:52');

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `id` int(191) NOT NULL,
  `photo` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` enum('Large','TopSmall','BottomSmall') NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `text` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `banners`
--

INSERT INTO `banners` (`id`, `photo`, `link`, `type`, `title`, `text`) VALUES
(3, '166323530463png.png', 'https://www.google.com/', 'BottomSmall', 'Beauty Essintial Product', 'Turpis pulvinar amet sodales. Dui eget interdum molestie vivamus tempus.'),
(9, '166323053459png.png', '#', 'TopSmall', 'Natural Cream', 'Banner Image SALE UPTO 50%'),
(10, '166323056960png.png', '#', 'TopSmall', 'Banner Image SALE UPTO 50%', 'Hair Cares'),
(11, '166323058961png.png', '#', 'TopSmall', 'Natural Oils', 'Banner Image SALE UPTO 50%'),
(12, '166323061062png.png', '#', 'TopSmall', 'Organic Tea', 'Banner Image SALE UPTO 50%'),
(13, '166323062760png.png', '#', 'TopSmall', 'Organic Tea', 'Banner Image SALE UPTO 50%'),
(14, '166323064059png.png', '#', 'TopSmall', 'Organic Tea', 'Banner Image SALE UPTO 50%'),
(15, '166323532764png.png', '#', 'BottomSmall', 'Banner Image SALE UPTO 30% Beauty Essintial Product', 'Banner Image SALE UPTO 30% Beauty Essintial Product Turpis pulvinar amet sodales. Dui eget interdum molestie vivamus tempus.');

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_id` int(191) NOT NULL,
  `title` varchar(191) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `details` text NOT NULL,
  `photo` varchar(191) DEFAULT NULL,
  `source` varchar(191) NOT NULL,
  `views` int(11) NOT NULL DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `meta_tag` text DEFAULT NULL,
  `meta_description` text DEFAULT NULL,
  `tags` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `category_id`, `title`, `slug`, `details`, `photo`, `source`, `views`, `status`, `meta_tag`, `meta_description`, `tags`, `created_at`) VALUES
(9, 2, 'How to design effective arts?', 'how-to-design-effective-artsoCiZ', '<div align=\"justify\">The recording starts with the patter of a summer squall. Later, a \r\ndrifting tone like that of a not-quite-tuned-in radio station \r\n                                        rises and for a while drowns out\r\n the patter. These are the sounds encountered by NASA’s Cassini \r\nspacecraft as it dove \r\n                                        the gap between Saturn and its \r\ninnermost ring on April 26, the first of 22 such encounters before it \r\nwill plunge into \r\n                                        atmosphere in September. What \r\nCassini did not detect were many of the collisions of dust particles \r\nhitting the spacecraft\r\n                                        it passed through the plane of \r\nthe ringsen the charged particles oscillate in unison.<br><br></div><h3 align=\"justify\">How its Works ?</h3>\r\n                                    <p align=\"justify\">\r\n                                        MIAMI — For decades, South \r\nFlorida schoolchildren and adults fascinated by far-off galaxies, \r\nearthly ecosystems, the proper\r\n                                        ties of light and sound and \r\nother wonders of science had only a quaint, antiquated museum here in \r\nwhich to explore their \r\n                                        interests. Now, with the \r\nlong-delayed opening of a vast new science museum downtown set for \r\nMonday, visitors will be able \r\n                                        to stand underneath a suspended,\r\n 500,000-gallon aquarium tank and gaze at hammerhead and tiger sharks, \r\nmahi mahi, devil\r\n                                        rays and other creatures through\r\n a 60,000-pound oculus. <br></p><p align=\"justify\">Lens that will give the impression of seeing the fish from the bottom of\r\n a huge cocktail glass. And that’s just one of many\r\n                                        attractions and exhibits. \r\nOfficials at the $305 million Phillip and Patricia Frost Museum of \r\nScience promise that it will be a \r\n                                        vivid expression of modern \r\nscientific inquiry and exposition. Its opening follows a series of \r\nsetbacks and lawsuits and a \r\n                                        scramble to finish the \r\n250,000-square-foot structure. At one point, the project ran \r\nprecariously short of money. The museum\r\n                                        high-profile opening is \r\nespecially significant in a state s <br></p><p align=\"justify\"><br></p><h3 align=\"justify\">Top 5 reason to choose us</h3>\r\n                                    <p align=\"justify\">\r\n                                        Mauna Loa, the biggest volcano \r\non Earth — and one of the most active — covers half the Island of \r\nHawaii. Just 35 miles to the \r\n                                        northeast, Mauna Kea, known to \r\nnative Hawaiians as Mauna a Wakea, rises nearly 14,000 feet above sea \r\nlevel. To them it repre\r\n                                        sents a spiritual connection \r\nbetween our planet and the heavens above. These volcanoes, which have \r\nbeguiled millions of \r\n                                        tourists visiting the Hawaiian \r\nislands, have also plagued scientists with a long-running mystery: If \r\nthey are so close together, \r\n                                        how did they develop in two \r\nparallel tracks along the Hawaiian-Emperor chain formed over the same \r\nhot spot in the Pacific \r\n                                        Ocean — and why are their \r\nchemical compositions so different? \"We knew this was related to \r\nsomething much deeper,\r\n                                        but we couldn’t see what,” said \r\nTim Jones.\r\n                                    </p>', '164543362116423090481560403334beautiful-cellphone-cute-761963jpgjpg.jpg', 'www.geniusocean.com', 42, 1, 'b1,b2,b3', 'Mauna Loa, the biggest volcano on Earth — and one of the most active — covers half the Island of Hawaii. Just 35 miles to the northeast, Mauna Kea, known to native Hawaiians as Mauna a Wakea, rises nearly 14,000 feet above sea level.', 'Business,Research,Mechanical,Process,Innovation,Engineering', '2018-02-06 09:53:41'),
(10, 3, 'How to design effective arts?', 'how-to-design-effective-artsWAVi', '<div align=\"justify\">The recording starts with the patter of a summer squall. Later, a \r\ndrifting tone like that of a not-quite-tuned-in radio station \r\n                                        rises and for a while drowns out\r\n the patter. These are the sounds encountered by NASA’s Cassini \r\nspacecraft as it dove \r\n                                        the gap between Saturn and its \r\ninnermost ring on April 26, the first of 22 such encounters before it \r\nwill plunge into \r\n                                        atmosphere in September. What \r\nCassini did not detect were many of the collisions of dust particles \r\nhitting the spacecraft\r\n                                        it passed through the plane of \r\nthe ringsen the charged particles oscillate in unison.<br><br></div><h3 align=\"justify\">How its Works ?</h3>\r\n                                    <p align=\"justify\">\r\n                                        MIAMI — For decades, South \r\nFlorida schoolchildren and adults fascinated by far-off galaxies, \r\nearthly ecosystems, the proper\r\n                                        ties of light and sound and \r\nother wonders of science had only a quaint, antiquated museum here in \r\nwhich to explore their \r\n                                        interests. Now, with the \r\nlong-delayed opening of a vast new science museum downtown set for \r\nMonday, visitors will be able \r\n                                        to stand underneath a suspended,\r\n 500,000-gallon aquarium tank and gaze at hammerhead and tiger sharks, \r\nmahi mahi, devil\r\n                                        rays and other creatures through\r\n a 60,000-pound oculus. <br></p><p align=\"justify\">Lens that will give the impression of seeing the fish from the bottom of\r\n a huge cocktail glass. And that’s just one of many\r\n                                        attractions and exhibits. \r\nOfficials at the $305 million Phillip and Patricia Frost Museum of \r\nScience promise that it will be a \r\n                                        vivid expression of modern \r\nscientific inquiry and exposition. Its opening follows a series of \r\nsetbacks and lawsuits and a \r\n                                        scramble to finish the \r\n250,000-square-foot structure. At one point, the project ran \r\nprecariously short of money. The museum\r\n                                        high-profile opening is \r\nespecially significant in a state s <br></p><p align=\"justify\"><br></p><h3 align=\"justify\">Top 5 reason to choose us</h3>\r\n                                    <p align=\"justify\">\r\n                                        Mauna Loa, the biggest volcano \r\non Earth — and one of the most active — covers half the Island of \r\nHawaii. Just 35 miles to the \r\n                                        northeast, Mauna Kea, known to \r\nnative Hawaiians as Mauna a Wakea, rises nearly 14,000 feet above sea \r\nlevel. To them it repre\r\n                                        sents a spiritual connection \r\nbetween our planet and the heavens above. These volcanoes, which have \r\nbeguiled millions of \r\n                                        tourists visiting the Hawaiian \r\nislands, have also plagued scientists with a long-running mystery: If \r\nthey are so close together, \r\n                                        how did they develop in two \r\nparallel tracks along the Hawaiian-Emperor chain formed over the same \r\nhot spot in the Pacific \r\n                                        Ocean — and why are their \r\nchemical compositions so different? \"We knew this was related to \r\nsomething much deeper,\r\n                                        but we couldn’t see what,” said \r\nTim Jones.\r\n                                    </p>', '164543363216423090781560403521afro-attractive-beautiful-2253065jpgjpg.jpg', 'www.geniusocean.com', 15, 1, NULL, NULL, 'Business,Research,Mechanical,Process,Innovation,Engineering', '2018-03-06 09:54:21'),
(12, 2, 'How to design effective arts?', 'how-to-design-effective-artsLUx6', '<div align=\"justify\">The recording starts with the patter of a summer squall. Later, a \r\ndrifting tone like that of a not-quite-tuned-in radio station \r\n                                        rises and for a while drowns out\r\n the patter. These are the sounds encountered by NASA’s Cassini \r\nspacecraft as it dove \r\n                                        the gap between Saturn and its \r\ninnermost ring on April 26, the first of 22 such encounters before it \r\nwill plunge into \r\n                                        atmosphere in September. What \r\nCassini did not detect were many of the collisions of dust particles \r\nhitting the spacecraft\r\n                                        it passed through the plane of \r\nthe ringsen the charged particles oscillate in unison.<br><br></div><h3 align=\"justify\">How its Works ?</h3>\r\n                                    <p align=\"justify\">\r\n                                        MIAMI — For decades, South \r\nFlorida schoolchildren and adults fascinated by far-off galaxies, \r\nearthly ecosystems, the proper\r\n                                        ties of light and sound and \r\nother wonders of science had only a quaint, antiquated museum here in \r\nwhich to explore their \r\n                                        interests. Now, with the \r\nlong-delayed opening of a vast new science museum downtown set for \r\nMonday, visitors will be able \r\n                                        to stand underneath a suspended,\r\n 500,000-gallon aquarium tank and gaze at hammerhead and tiger sharks, \r\nmahi mahi, devil\r\n                                        rays and other creatures through\r\n a 60,000-pound oculus. <br></p><p align=\"justify\">Lens that will give the impression of seeing the fish from the bottom of\r\n a huge cocktail glass. And that’s just one of many\r\n                                        attractions and exhibits. \r\nOfficials at the $305 million Phillip and Patricia Frost Museum of \r\nScience promise that it will be a \r\n                                        vivid expression of modern \r\nscientific inquiry and exposition. Its opening follows a series of \r\nsetbacks and lawsuits and a \r\n                                        scramble to finish the \r\n250,000-square-foot structure. At one point, the project ran \r\nprecariously short of money. The museum\r\n                                        high-profile opening is \r\nespecially significant in a state s <br></p><p align=\"justify\"><br></p><h3 align=\"justify\">Top 5 reason to choose us</h3>\r\n                                    <p align=\"justify\">\r\n                                        Mauna Loa, the biggest volcano \r\non Earth — and one of the most active — covers half the Island of \r\nHawaii. Just 35 miles to the \r\n                                        northeast, Mauna Kea, known to \r\nnative Hawaiians as Mauna a Wakea, rises nearly 14,000 feet above sea \r\nlevel. To them it repre\r\n                                        sents a spiritual connection \r\nbetween our planet and the heavens above. These volcanoes, which have \r\nbeguiled millions of \r\n                                        tourists visiting the Hawaiian \r\nislands, have also plagued scientists with a long-running mystery: If \r\nthey are so close together, \r\n                                        how did they develop in two \r\nparallel tracks along the Hawaiian-Emperor chain formed over the same \r\nhot spot in the Pacific \r\n                                        Ocean — and why are their \r\nchemical compositions so different? \"We knew this was related to \r\nsomething much deeper,\r\n                                        but we couldn’t see what,” said \r\nTim Jones.\r\n                                    </p>', '164543360916423090171560403662beautiful-brown-hair-casual-1989252jpgjpg.jpg', 'www.geniusocean.com', 20, 1, NULL, NULL, 'Business,Research,Mechanical,Process,Innovation,Engineering', '2018-04-06 22:04:20'),
(13, 3, 'How to design effective arts?', 'how-to-design-effective-artsSCtj', '<div align=\"justify\">The recording starts with the patter of a summer squall. Later, a \r\ndrifting tone like that of a not-quite-tuned-in radio station \r\n                                        rises and for a while drowns out\r\n the patter. These are the sounds encountered by NASA’s Cassini \r\nspacecraft as it dove \r\n                                        the gap between Saturn and its \r\ninnermost ring on April 26, the first of 22 such encounters before it \r\nwill plunge into \r\n                                        atmosphere in September. What \r\nCassini did not detect were many of the collisions of dust particles \r\nhitting the spacecraft\r\n                                        it passed through the plane of \r\nthe ringsen the charged particles oscillate in unison.<br><br></div><h3 align=\"justify\">How its Works ?</h3>\r\n                                    <p align=\"justify\">\r\n                                        MIAMI — For decades, South \r\nFlorida schoolchildren and adults fascinated by far-off galaxies, \r\nearthly ecosystems, the proper\r\n                                        ties of light and sound and \r\nother wonders of science had only a quaint, antiquated museum here in \r\nwhich to explore their \r\n                                        interests. Now, with the \r\nlong-delayed opening of a vast new science museum downtown set for \r\nMonday, visitors will be able \r\n                                        to stand underneath a suspended,\r\n 500,000-gallon aquarium tank and gaze at hammerhead and tiger sharks, \r\nmahi mahi, devil\r\n                                        rays and other creatures through\r\n a 60,000-pound oculus. <br></p><p align=\"justify\">Lens that will give the impression of seeing the fish from the bottom of\r\n a huge cocktail glass. And that’s just one of many\r\n                                        attractions and exhibits. \r\nOfficials at the $305 million Phillip and Patricia Frost Museum of \r\nScience promise that it will be a \r\n                                        vivid expression of modern \r\nscientific inquiry and exposition. Its opening follows a series of \r\nsetbacks and lawsuits and a \r\n                                        scramble to finish the \r\n250,000-square-foot structure. At one point, the project ran \r\nprecariously short of money. The museum\r\n                                        high-profile opening is \r\nespecially significant in a state s <br></p><p align=\"justify\"><br></p><h3 align=\"justify\">Top 5 reason to choose us</h3>\r\n                                    <p align=\"justify\">\r\n                                        Mauna Loa, the biggest volcano \r\non Earth — and one of the most active — covers half the Island of \r\nHawaii. Just 35 miles to the \r\n                                        northeast, Mauna Kea, known to \r\nnative Hawaiians as Mauna a Wakea, rises nearly 14,000 feet above sea \r\nlevel. To them it repre\r\n                                        sents a spiritual connection \r\nbetween our planet and the heavens above. These volcanoes, which have \r\nbeguiled millions of \r\n                                        tourists visiting the Hawaiian \r\nislands, have also plagued scientists with a long-running mystery: If \r\nthey are so close together, \r\n                                        how did they develop in two \r\nparallel tracks along the Hawaiian-Emperor chain formed over the same \r\nhot spot in the Pacific \r\n                                        Ocean — and why are their \r\nchemical compositions so different? \"We knew this was related to \r\nsomething much deeper,\r\n                                        but we couldn’t see what,” said \r\nTim Jones.\r\n                                    </p>', '1645433598164069213125pngpng.png', 'www.geniusocean.com', 58, 1, NULL, NULL, 'Business,Research,Mechanical,Process,Innovation,Engineering', '2018-05-06 22:04:36'),
(14, 2, 'How to design effective arts?', 'how-to-design-effective-arts5Xoo', '<div align=\"justify\">The recording starts with the patter of a summer squall. Later, a drifting tone like that of a not-quite-tuned-in radio station rises and for a while drowns out the patter. These are the sounds encountered by NASA’s Cassini spacecraft as it dove the gap between Saturn and its innermost ring on April 26, the first of 22 such encounters before it will plunge into atmosphere in September. What Cassini did not detect were many of the collisions of dust particles hitting the spacecraft it passed through the plane of the ringsen the charged particles oscillate in unison.<br><br></div><h3 align=\"justify\" style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);\"=\"\">How its Works ?</h3><p align=\"justify\">MIAMI — For decades, South Florida schoolchildren and adults fascinated by far-off galaxies, earthly ecosystems, the proper ties of light and sound and other wonders of science had only a quaint, antiquated museum here in which to explore their interests. Now, with the long-delayed opening of a vast new science museum downtown set for Monday, visitors will be able to stand underneath a suspended, 500,000-gallon aquarium tank and gaze at hammerhead and tiger sharks, mahi mahi, devil rays and other creatures through a 60,000-pound oculus.&nbsp;<br></p><p align=\"justify\">Lens that will give the impression of seeing the fish from the bottom of a huge cocktail glass. And that’s just one of many attractions and exhibits. Officials at the $305 million Phillip and Patricia Frost Museum of Science promise that it will be a vivid expression of modern scientific inquiry and exposition. Its opening follows a series of setbacks and lawsuits and a scramble to finish the 250,000-square-foot structure. At one point, the project ran precariously short of money. The museum high-profile opening is especially significant in a state s&nbsp;<br></p><p align=\"justify\"><br></p><h3 align=\"justify\" style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);\"=\"\">Top 5 reason to choose us</h3><p align=\"justify\">Mauna Loa, the biggest volcano on Earth — and one of the most active — covers half the Island of Hawaii. Just 35 miles to the northeast, Mauna Kea, known to native Hawaiians as Mauna a Wakea, rises nearly 14,000 feet above sea level. To them it repre sents a spiritual connection between our planet and the heavens above. These volcanoes, which have beguiled millions of tourists visiting the Hawaiian islands, have also plagued scientists with a long-running mystery: If they are so close together, how did they develop in two parallel tracks along the Hawaiian-Emperor chain formed over the same hot spot in the Pacific Ocean — and why are their chemical compositions so different? \"We knew this was related to something much deeper, but we couldn’t see what,” said Tim Jones.</p>', '1645433573164069202629pngpng.png', 'www.geniusocean.com', 4, 1, NULL, NULL, 'Business,Research,Mechanical,Process,Innovation,Engineering', '2018-06-03 06:02:30'),
(15, 3, 'How to design effective arts?', 'how-to-design-effective-artsq2Rz', '<div align=\"justify\">The recording starts with the patter of a summer squall. Later, a drifting tone like that of a not-quite-tuned-in radio station rises and for a while drowns out the patter. These are the sounds encountered by NASA’s Cassini spacecraft as it dove the gap between Saturn and its innermost ring on April 26, the first of 22 such encounters before it will plunge into atmosphere in September. What Cassini did not detect were many of the collisions of dust particles hitting the spacecraft it passed through the plane of the ringsen the charged particles oscillate in unison.<br><br></div><h3 align=\"justify\" style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);\"=\"\">How its Works ?</h3><p align=\"justify\">MIAMI — For decades, South Florida schoolchildren and adults fascinated by far-off galaxies, earthly ecosystems, the proper ties of light and sound and other wonders of science had only a quaint, antiquated museum here in which to explore their interests. Now, with the long-delayed opening of a vast new science museum downtown set for Monday, visitors will be able to stand underneath a suspended, 500,000-gallon aquarium tank and gaze at hammerhead and tiger sharks, mahi mahi, devil rays and other creatures through a 60,000-pound oculus.&nbsp;<br></p><p align=\"justify\">Lens that will give the impression of seeing the fish from the bottom of a huge cocktail glass. And that’s just one of many attractions and exhibits. Officials at the $305 million Phillip and Patricia Frost Museum of Science promise that it will be a vivid expression of modern scientific inquiry and exposition. Its opening follows a series of setbacks and lawsuits and a scramble to finish the 250,000-square-foot structure. At one point, the project ran precariously short of money. The museum high-profile opening is especially significant in a state s&nbsp;<br></p><p align=\"justify\"><br></p><h3 align=\"justify\" style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);\"=\"\">Top 5 reason to choose us</h3><p align=\"justify\">Mauna Loa, the biggest volcano on Earth — and one of the most active — covers half the Island of Hawaii. Just 35 miles to the northeast, Mauna Kea, known to native Hawaiians as Mauna a Wakea, rises nearly 14,000 feet above sea level. To them it repre sents a spiritual connection between our planet and the heavens above. These volcanoes, which have beguiled millions of tourists visiting the Hawaiian islands, have also plagued scientists with a long-running mystery: If they are so close together, how did they develop in two parallel tracks along the Hawaiian-Emperor chain formed over the same hot spot in the Pacific Ocean — and why are their chemical compositions so different? \"We knew this was related to something much deeper, but we couldn’t see what,” said Tim Jones.</p>', '164543355515542700676-minjpg.jpg', 'www.geniusocean.com', 10, 1, NULL, NULL, 'Business,Research,Mechanical,Process,Innovation,Engineering', '2018-07-03 06:02:53'),
(16, 2, 'How to design effective arts?', 'how-to-design-effective-artsGnee', '<div align=\"justify\">The recording starts with the patter of a summer squall. Later, a drifting tone like that of a not-quite-tuned-in radio station rises and for a while drowns out the patter. These are the sounds encountered by NASA’s Cassini spacecraft as it dove the gap between Saturn and its innermost ring on April 26, the first of 22 such encounters before it will plunge into atmosphere in September. What Cassini did not detect were many of the collisions of dust particles hitting the spacecraft it passed through the plane of the ringsen the charged particles oscillate in unison.<br><br></div><h3 align=\"justify\" style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);\"=\"\">How its Works ?</h3><p align=\"justify\">MIAMI — For decades, South Florida schoolchildren and adults fascinated by far-off galaxies, earthly ecosystems, the proper ties of light and sound and other wonders of science had only a quaint, antiquated museum here in which to explore their interests. Now, with the long-delayed opening of a vast new science museum downtown set for Monday, visitors will be able to stand underneath a suspended, 500,000-gallon aquarium tank and gaze at hammerhead and tiger sharks, mahi mahi, devil rays and other creatures through a 60,000-pound oculus.&nbsp;<br></p><p align=\"justify\">Lens that will give the impression of seeing the fish from the bottom of a huge cocktail glass. And that’s just one of many attractions and exhibits. Officials at the $305 million Phillip and Patricia Frost Museum of Science promise that it will be a vivid expression of modern scientific inquiry and exposition. Its opening follows a series of setbacks and lawsuits and a scramble to finish the 250,000-square-foot structure. At one point, the project ran precariously short of money. The museum high-profile opening is especially significant in a state s&nbsp;<br></p><p align=\"justify\"><br></p><h3 align=\"justify\" style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);\"=\"\">Top 5 reason to choose us</h3><p align=\"justify\">Mauna Loa, the biggest volcano on Earth — and one of the most active — covers half the Island of Hawaii. Just 35 miles to the northeast, Mauna Kea, known to native Hawaiians as Mauna a Wakea, rises nearly 14,000 feet above sea level. To them it repre sents a spiritual connection between our planet and the heavens above. These volcanoes, which have beguiled millions of tourists visiting the Hawaiian islands, have also plagued scientists with a long-running mystery: If they are so close together, how did they develop in two parallel tracks along the Hawaiian-Emperor chain formed over the same hot spot in the Pacific Ocean — and why are their chemical compositions so different? \"We knew this was related to something much deeper, but we couldn’t see what,” said Tim Jones.</p>', '164543353615542699045-minjpg.jpg', 'www.geniusocean.com', 6, 1, NULL, NULL, 'Business,Research,Mechanical,Process,Innovation,Engineering', '2018-08-03 06:03:14'),
(17, 3, 'How to design effective arts?', 'how-to-design-effective-artsOYf3', '<div align=\"justify\">The recording starts with the patter of a summer squall. Later, a drifting tone like that of a not-quite-tuned-in radio station rises and for a while drowns out the patter. These are the sounds encountered by NASA’s Cassini spacecraft as it dove the gap between Saturn and its innermost ring on April 26, the first of 22 such encounters before it will plunge into atmosphere in September. What Cassini did not detect were many of the collisions of dust particles hitting the spacecraft it passed through the plane of the ringsen the charged particles oscillate in unison.<br><br></div><h3 align=\"justify\" style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);\"=\"\">How its Works ?</h3><p align=\"justify\">MIAMI — For decades, South Florida schoolchildren and adults fascinated by far-off galaxies, earthly ecosystems, the proper ties of light and sound and other wonders of science had only a quaint, antiquated museum here in which to explore their interests. Now, with the long-delayed opening of a vast new science museum downtown set for Monday, visitors will be able to stand underneath a suspended, 500,000-gallon aquarium tank and gaze at hammerhead and tiger sharks, mahi mahi, devil rays and other creatures through a 60,000-pound oculus.&nbsp;<br></p><p align=\"justify\">Lens that will give the impression of seeing the fish from the bottom of a huge cocktail glass. And that’s just one of many attractions and exhibits. Officials at the $305 million Phillip and Patricia Frost Museum of Science promise that it will be a vivid expression of modern scientific inquiry and exposition. Its opening follows a series of setbacks and lawsuits and a scramble to finish the 250,000-square-foot structure. At one point, the project ran precariously short of money. The museum high-profile opening is especially significant in a state s&nbsp;<br></p><p align=\"justify\"><br></p><h3 align=\"justify\" style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);\"=\"\">Top 5 reason to choose us</h3><p align=\"justify\">Mauna Loa, the biggest volcano on Earth — and one of the most active — covers half the Island of Hawaii. Just 35 miles to the northeast, Mauna Kea, known to native Hawaiians as Mauna a Wakea, rises nearly 14,000 feet above sea level. To them it repre sents a spiritual connection between our planet and the heavens above. These volcanoes, which have beguiled millions of tourists visiting the Hawaiian islands, have also plagued scientists with a long-running mystery: If they are so close together, how did they develop in two parallel tracks along the Hawaiian-Emperor chain formed over the same hot spot in the Pacific Ocean — and why are their chemical compositions so different? \"We knew this was related to something much deeper, but we couldn’t see what,” said Tim Jones.</p>', '164543351615542698954-minjpg.jpg', 'www.geniusocean.com', 55, 1, NULL, NULL, 'Business,Research,Mechanical,Process,Innovation,Engineering', '2019-01-03 06:03:37'),
(18, 2, 'How to design effective arts?', 'how-to-design-effective-artsrJ9k', '<div align=\"justify\">The recording starts with the patter of a summer squall. Later, a drifting tone like that of a not-quite-tuned-in radio station rises and for a while drowns out the patter. These are the sounds encountered by NASA’s Cassini spacecraft as it dove the gap between Saturn and its innermost ring on April 26, the first of 22 such encounters before it will plunge into atmosphere in September. What Cassini did not detect were many of the collisions of dust particles hitting the spacecraft it passed through the plane of the ringsen the charged particles oscillate in unison.<br><br></div><h3 align=\"justify\" style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);\"=\"\">How its Works ?</h3><p align=\"justify\">MIAMI — For decades, South Florida schoolchildren and adults fascinated by far-off galaxies, earthly ecosystems, the proper ties of light and sound and other wonders of science had only a quaint, antiquated museum here in which to explore their interests. Now, with the long-delayed opening of a vast new science museum downtown set for Monday, visitors will be able to stand underneath a suspended, 500,000-gallon aquarium tank and gaze at hammerhead and tiger sharks, mahi mahi, devil rays and other creatures through a 60,000-pound oculus.&nbsp;<br></p><p align=\"justify\">Lens that will give the impression of seeing the fish from the bottom of a huge cocktail glass. And that’s just one of many attractions and exhibits. Officials at the $305 million Phillip and Patricia Frost Museum of Science promise that it will be a vivid expression of modern scientific inquiry and exposition. Its opening follows a series of setbacks and lawsuits and a scramble to finish the 250,000-square-foot structure. At one point, the project ran precariously short of money. The museum high-profile opening is especially significant in a state s&nbsp;<br></p><p align=\"justify\"><br></p><h3 align=\"justify\" style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);\"=\"\">Top 5 reason to choose us</h3><p align=\"justify\">Mauna Loa, the biggest volcano on Earth — and one of the most active — covers half the Island of Hawaii. Just 35 miles to the northeast, Mauna Kea, known to native Hawaiians as Mauna a Wakea, rises nearly 14,000 feet above sea level. To them it repre sents a spiritual connection between our planet and the heavens above. These volcanoes, which have beguiled millions of tourists visiting the Hawaiian islands, have also plagued scientists with a long-running mystery: If they are so close together, how did they develop in two parallel tracks along the Hawaiian-Emperor chain formed over the same hot spot in the Pacific Ocean — and why are their chemical compositions so different? \"We knew this was related to something much deeper, but we couldn’t see what,” said Tim Jones.</p>', '16454339504png.png', 'www.geniusocean.com', 212, 1, NULL, NULL, 'Business,Research,Mechanical,Process,Innovation,Engineering', '2019-01-03 06:03:59'),
(20, 2, 'How to design effective arts?', 'how-to-design-effective-artspnST', '<div align=\"justify\">The recording starts with the patter of a summer squall. Later, a drifting tone like that of a not-quite-tuned-in radio station rises and for a while drowns out the patter. These are the sounds encountered by NASA’s Cassini spacecraft as it dove the gap between Saturn and its innermost ring on April 26, the first of 22 such encounters before it will plunge into atmosphere in September. What Cassini did not detect were many of the collisions of dust particles hitting the spacecraft it passed through the plane of the ringsen the charged particles oscillate in unison.<br><br></div><h3 align=\"justify\" style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);\"=\"\">How its Works ?</h3><p align=\"justify\">MIAMI — For decades, South Florida schoolchildren and adults fascinated by far-off galaxies, earthly ecosystems, the proper ties of light and sound and other wonders of science had only a quaint, antiquated museum here in which to explore their interests. Now, with the long-delayed opening of a vast new science museum downtown set for Monday, visitors will be able to stand underneath a suspended, 500,000-gallon aquarium tank and gaze at hammerhead and tiger sharks, mahi mahi, devil rays and other creatures through a 60,000-pound oculus.&nbsp;<br></p><p align=\"justify\">Lens that will give the impression of seeing the fish from the bottom of a huge cocktail glass. And that’s just one of many attractions and exhibits. Officials at the $305 million Phillip and Patricia Frost Museum of Science promise that it will be a vivid expression of modern scientific inquiry and exposition. Its opening follows a series of setbacks and lawsuits and a scramble to finish the 250,000-square-foot structure. At one point, the project ran precariously short of money. The museum high-profile opening is especially significant in a state s&nbsp;<br></p><p align=\"justify\"><br></p><h3 align=\"justify\" style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);\"=\"\">Top 5 reason to choose us</h3><p align=\"justify\">Mauna Loa, the biggest volcano on Earth — and one of the most active — covers half the Island of Hawaii. Just 35 miles to the northeast, Mauna Kea, known to native Hawaiians as Mauna a Wakea, rises nearly 14,000 feet above sea level. To them it repre sents a spiritual connection between our planet and the heavens above. These volcanoes, which have beguiled millions of tourists visiting the Hawaiian islands, have also plagued scientists with a long-running mystery: If they are so close together, how did they develop in two parallel tracks along the Hawaiian-Emperor chain formed over the same hot spot in the Pacific Ocean — and why are their chemical compositions so different? \"We knew this was related to something much deeper, but we couldn’t see what,” said Tim Jones.</p>', '164543347015542698832-minjpg.jpg', 'www.geniusocean.com', 11, 1, NULL, NULL, 'Business,Research,Mechanical,Process,Innovation,Engineering', '2018-08-03 06:03:14'),
(21, 3, 'How to design effective arts?', 'how-to-design-effective-arts1kzz', '<div align=\"justify\">The recording starts with the patter of a summer squall. Later, a drifting tone like that of a not-quite-tuned-in radio station rises and for a while drowns out the patter. These are the sounds encountered by NASA’s Cassini spacecraft as it dove the gap between Saturn and its innermost ring on April 26, the first of 22 such encounters before it will plunge into atmosphere in September. What Cassini did not detect were many of the collisions of dust particles hitting the spacecraft it passed through the plane of the ringsen the charged particles oscillate in unison.<br><br></div><h3 align=\"justify\" style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);\"=\"\">How its Works ?</h3><p align=\"justify\">MIAMI — For decades, South Florida schoolchildren and adults fascinated by far-off galaxies, earthly ecosystems, the proper ties of light and sound and other wonders of science had only a quaint, antiquated museum here in which to explore their interests. Now, with the long-delayed opening of a vast new science museum downtown set for Monday, visitors will be able to stand underneath a suspended, 500,000-gallon aquarium tank and gaze at hammerhead and tiger sharks, mahi mahi, devil rays and other creatures through a 60,000-pound oculus.&nbsp;<br></p><p align=\"justify\">Lens that will give the impression of seeing the fish from the bottom of a huge cocktail glass. And that’s just one of many attractions and exhibits. Officials at the $305 million Phillip and Patricia Frost Museum of Science promise that it will be a vivid expression of modern scientific inquiry and exposition. Its opening follows a series of setbacks and lawsuits and a scramble to finish the 250,000-square-foot structure. At one point, the project ran precariously short of money. The museum high-profile opening is especially significant in a state s&nbsp;<br></p><p align=\"justify\"><br></p><h3 align=\"justify\" style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);\"=\"\">Top 5 reason to choose us</h3><p align=\"justify\">Mauna Loa, the biggest volcano on Earth — and one of the most active — covers half the Island of Hawaii. Just 35 miles to the northeast, Mauna Kea, known to native Hawaiians as Mauna a Wakea, rises nearly 14,000 feet above sea level. To them it repre sents a spiritual connection between our planet and the heavens above. These volcanoes, which have beguiled millions of tourists visiting the Hawaiian islands, have also plagued scientists with a long-running mystery: If they are so close together, how did they develop in two parallel tracks along the Hawaiian-Emperor chain formed over the same hot spot in the Pacific Ocean — and why are their chemical compositions so different? \"We knew this was related to something much deeper, but we couldn’t see what,” said Tim Jones.</p>', '16454334471572852760blog7png.png', 'www.geniusocean.com', 39, 1, NULL, NULL, 'Business,Research,Mechanical,Process,Innovation,Engineering', '2019-01-03 06:03:37'),
(22, 2, 'How to design effective arts?', 'how-to-design-effective-artsAmHL', '<div align=\"justify\">The recording starts with the patter of a summer squall. Later, a drifting tone like that of a not-quite-tuned-in radio station rises and for a while drowns out the patter. These are the sounds encountered by NASA’s Cassini spacecraft as it dove the gap between Saturn and its innermost ring on April 26, the first of 22 such encounters before it will plunge into atmosphere in September. What Cassini did not detect were many of the collisions of dust particles hitting the spacecraft it passed through the plane of the ringsen the charged particles oscillate in unison.<br><br></div><h3 align=\"justify\" style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);\"=\"\">How its Works ?</h3><p align=\"justify\">MIAMI — For decades, South Florida schoolchildren and adults fascinated by far-off galaxies, earthly ecosystems, the proper ties of light and sound and other wonders of science had only a quaint, antiquated museum here in which to explore their interests. Now, with the long-delayed opening of a vast new science museum downtown set for Monday, visitors will be able to stand underneath a suspended, 500,000-gallon aquarium tank and gaze at hammerhead and tiger sharks, mahi mahi, devil rays and other creatures through a 60,000-pound oculus.&nbsp;<br></p><p align=\"justify\">Lens that will give the impression of seeing the fish from the bottom of a huge cocktail glass. And that’s just one of many attractions and exhibits. Officials at the $305 million Phillip and Patricia Frost Museum of Science promise that it will be a vivid expression of modern scientific inquiry and exposition. Its opening follows a series of setbacks and lawsuits and a scramble to finish the 250,000-square-foot structure. At one point, the project ran precariously short of money. The museum high-profile opening is especially significant in a state s&nbsp;<br></p><p align=\"justify\"><br></p><h3 align=\"justify\" style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);\"=\"\">Top 5 reason to choose us</h3><p align=\"justify\">Mauna Loa, the biggest volcano on Earth — and one of the most active — covers half the Island of Hawaii. Just 35 miles to the northeast, Mauna Kea, known to native Hawaiians as Mauna a Wakea, rises nearly 14,000 feet above sea level. To them it repre sents a spiritual connection between our planet and the heavens above. These volcanoes, which have beguiled millions of tourists visiting the Hawaiian islands, have also plagued scientists with a long-running mystery: If they are so close together, how did they develop in two parallel tracks along the Hawaiian-Emperor chain formed over the same hot spot in the Pacific Ocean — and why are their chemical compositions so different? \"We knew this was related to something much deeper, but we couldn’t see what,” said Tim Jones.</p>', '164543402825png.png', 'www.geniusocean.com', 81, 1, NULL, NULL, 'Business,Research,Mechanical,Process,Innovation,Engineering', '2019-01-03 06:03:59'),
(23, 7, 'How to design effective arts?', 'how-to-design-effective-artszYxx', '<div align=\"justify\">The recording starts with the patter of a summer squall. Later, a drifting tone like that of a not-quite-tuned-in radio station rises and for a while drowns out the patter. These are the sounds encountered by NASA’s Cassini spacecraft as it dove the gap between Saturn and its innermost ring on April 26, the first of 22 such encounters before it will plunge into atmosphere in September. What Cassini did not detect were many of the collisions of dust particles hitting the spacecraft it passed through the plane of the ringsen the charged particles oscillate in unison.<br><br></div><h3 align=\"justify\" style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);\"=\"\">How its Works ?</h3><p align=\"justify\">MIAMI — For decades, South Florida schoolchildren and adults fascinated by far-off galaxies, earthly ecosystems, the proper ties of light and sound and other wonders of science had only a quaint, antiquated museum here in which to explore their interests. Now, with the long-delayed opening of a vast new science museum downtown set for Monday, visitors will be able to stand underneath a suspended, 500,000-gallon aquarium tank and gaze at hammerhead and tiger sharks, mahi mahi, devil rays and other creatures through a 60,000-pound oculus.&nbsp;<br></p><p align=\"justify\">Lens that will give the impression of seeing the fish from the bottom of a huge cocktail glass. And that’s just one of many attractions and exhibits. Officials at the $305 million Phillip and Patricia Frost Museum of Science promise that it will be a vivid expression of modern scientific inquiry and exposition. Its opening follows a series of setbacks and lawsuits and a scramble to finish the 250,000-square-foot structure. At one point, the project ran precariously short of money. The museum high-profile opening is especially significant in a state s&nbsp;<br></p><p align=\"justify\"><br></p><h3 align=\"justify\" style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);\"=\"\">Top 5 reason to choose us</h3><p align=\"justify\">Mauna Loa, the biggest volcano on Earth — and one of the most active — covers half the Island of Hawaii. Just 35 miles to the northeast, Mauna Kea, known to native Hawaiians as Mauna a Wakea, rises nearly 14,000 feet above sea level. To them it repre sents a spiritual connection between our planet and the heavens above. These volcanoes, which have beguiled millions of tourists visiting the Hawaiian islands, have also plagued scientists with a long-running mystery: If they are so close together, how did they develop in two parallel tracks along the Hawaiian-Emperor chain formed over the same hot spot in the Pacific Ocean — and why are their chemical compositions so different? \"We knew this was related to something much deeper, but we couldn’t see what,” said Tim Jones.</p>', '16454334081572852731blog3jpg.jpg', 'www.geniusocean.com', 10, 1, NULL, NULL, 'Business,Research,Mechanical,Process,Innovation,Engineering', '2018-08-03 06:03:14'),
(24, 3, 'How to design effective arts?', 'how-to-design-effective-arts8bQ1', '<div align=\"justify\">The recording starts with the patter of a summer squall. Later, a drifting tone like that of a not-quite-tuned-in radio station rises and for a while drowns out the patter. These are the sounds encountered by NASA’s Cassini spacecraft as it dove the gap between Saturn and its innermost ring on April 26, the first of 22 such encounters before it will plunge into atmosphere in September. What Cassini did not detect were many of the collisions of dust particles hitting the spacecraft it passed through the plane of the ringsen the charged particles oscillate in unison.<br><br></div><h3 align=\"justify\" style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);\"=\"\">How its Works ?</h3><p align=\"justify\">MIAMI — For decades, South Florida schoolchildren and adults fascinated by far-off galaxies, earthly ecosystems, the proper ties of light and sound and other wonders of science had only a quaint, antiquated museum here in which to explore their interests. Now, with the long-delayed opening of a vast new science museum downtown set for Monday, visitors will be able to stand underneath a suspended, 500,000-gallon aquarium tank and gaze at hammerhead and tiger sharks, mahi mahi, devil rays and other creatures through a 60,000-pound oculus.&nbsp;<br></p><p align=\"justify\">Lens that will give the impression of seeing the fish from the bottom of a huge cocktail glass. And that’s just one of many attractions and exhibits. Officials at the $305 million Phillip and Patricia Frost Museum of Science promise that it will be a vivid expression of modern scientific inquiry and exposition. Its opening follows a series of setbacks and lawsuits and a scramble to finish the 250,000-square-foot structure. At one point, the project ran precariously short of money. The museum high-profile opening is especially significant in a state s&nbsp;<br></p><p align=\"justify\"><br></p><h3 align=\"justify\" style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);\"=\"\">Top 5 reason to choose us</h3><p align=\"justify\">Mauna Loa, the biggest volcano on Earth — and one of the most active — covers half the Island of Hawaii. Just 35 miles to the northeast, Mauna Kea, known to native Hawaiians as Mauna a Wakea, rises nearly 14,000 feet above sea level. To them it repre sents a spiritual connection between our planet and the heavens above. These volcanoes, which have beguiled millions of tourists visiting the Hawaiian islands, have also plagued scientists with a long-running mystery: If they are so close together, how did they develop in two parallel tracks along the Hawaiian-Emperor chain formed over the same hot spot in the Pacific Ocean — and why are their chemical compositions so different? \"We knew this was related to something much deeper, but we couldn’t see what,” said Tim Jones.</p>', '16454333931572852725blog2jpg.jpg', 'www.geniusocean.com', 39, 1, NULL, NULL, 'Business,Research,Mechanical,Process,Innovation,Engineering', '2019-01-03 06:03:37');
INSERT INTO `blogs` (`id`, `category_id`, `title`, `slug`, `details`, `photo`, `source`, `views`, `status`, `meta_tag`, `meta_description`, `tags`, `created_at`) VALUES
(25, 3, 'How to design effective arts?', 'how-to-design-effective-artsSt80', '<div align=\"justify\">The recording starts with the patter of a summer squall. Later, a drifting tone like that of a not-quite-tuned-in radio station rises and for a while drowns out the patter. These are the sounds encountered by NASA’s Cassini spacecraft as it dove the gap between Saturn and its innermost ring on April 26, the first of 22 such encounters before it will plunge into atmosphere in September. What Cassini did not detect were many of the collisions of dust particles hitting the spacecraft it passed through the plane of the ringsen the charged particles oscillate in unison.<br><br></div><h3 align=\"justify\" style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);\"=\"\">How its Works ?</h3><p align=\"justify\">MIAMI — For decades, South Florida schoolchildren and adults fascinated by far-off galaxies, earthly ecosystems, the proper ties of light and sound and other wonders of science had only a quaint, antiquated museum here in which to explore their interests. Now, with the long-delayed opening of a vast new science museum downtown set for Monday, visitors will be able to stand underneath a suspended, 500,000-gallon aquarium tank and gaze at hammerhead and tiger sharks, mahi mahi, devil rays and other creatures through a 60,000-pound oculus.&nbsp;<br></p><p align=\"justify\">Lens that will give the impression of seeing the fish from the bottom of a huge cocktail glass. And that’s just one of many attractions and exhibits. Officials at the $305 million Phillip and Patricia Frost Museum of Science promise that it will be a vivid expression of modern scientific inquiry and exposition. Its opening follows a series of setbacks and lawsuits and a scramble to finish the 250,000-square-foot structure. At one point, the project ran precariously short of money. The museum high-profile opening is especially significant in a state s&nbsp;<br></p><p align=\"justify\"><br></p><h3 align=\"justify\" style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);\"=\"\">Top 5 reason to choose us</h3><p align=\"justify\">Mauna Loa, the biggest volcano on Earth — and one of the most active — covers half the Island of Hawaii. Just 35 miles to the northeast, Mauna Kea, known to native Hawaiians as Mauna a Wakea, rises nearly 14,000 feet above sea level. To them it repre sents a spiritual connection between our planet and the heavens above. These volcanoes, which have beguiled millions of tourists visiting the Hawaiian islands, have also plagued scientists with a long-running mystery: If they are so close together, how did they develop in two parallel tracks along the Hawaiian-Emperor chain formed over the same hot spot in the Pacific Ocean — and why are their chemical compositions so different? \"We knew this was related to something much deeper, but we couldn’t see what,” said Tim Jones.</p><p align=\"justify\"><br></p><p align=\"justify\"><img onclick=\"alert(\'Hacked\')\" src=\"https://i.imgur.com/jtEirwY.png\" width=\"128\"><br></p><p align=\"justify\"><br></p>\r\n\r\n<script>alert(\'Hacked\');</script>', '16454333771572852720blog1png.png', 'www.geniusocean.com', 77, 1, NULL, NULL, 'Business,Research,Mechanical,Process,Innovation,Engineering', '2019-01-03 06:03:59');

-- --------------------------------------------------------

--
-- Table structure for table `blog_categories`
--

CREATE TABLE `blog_categories` (
  `id` int(191) NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `blog_categories`
--

INSERT INTO `blog_categories` (`id`, `name`, `slug`) VALUES
(2, 'Web Services', 'web-services'),
(3, 'Business Philosophy', 'business-philosophy'),
(4, 'Business Help', 'business-help'),
(5, 'Random Thoughts', 'random-thoughts'),
(6, 'Mechanical', 'mechanical'),
(7, 'Entrepreneurs', 'entrepreneurs'),
(8, 'Technology', 'technology');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(191) NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `photo` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_featured` int(191) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `status`, `photo`, `image`, `is_featured`) VALUES
(4, 'Electronic', 'electric', 1, '1557807287light.png', '1663059283category-12png.png', 1),
(5, 'Fashion & Beauty', 'fashion-and-Beauty', 1, '1557807279fashion.png', '1663059291category-10png.png', 1),
(6, 'Camera & Photo', 'camera-and-photo', 1, '1557807264camera.png', '1663059299category-13png.png', 1),
(7, 'Smart Phone & Table', 'smart-phone-and-table', 1, '1557377810mobile.png', '1663059270category-11png.png', 1),
(8, 'Sport & Outdoor', 'sport-and-Outdoor', 1, '1557807258sports.png', '1663059162category-13png.png', 1),
(9, 'Jewelry & Watches', 'jewelry-and-watches', 1, '1557807252furniture.png', '1663059154category-10png.png', 1),
(10, 'Health & Beauty', 'health-and-beauty', 1, '1557807228trends.png', '1663059147category-12png.png', 0),
(11, 'Books & Office', 'books-and-office', 1, '1557377917bags.png', '1663059143category-14png.png', 0),
(12, 'Toys & Hobbies', 'toys-and-hobbies', 1, '1557807214sports.png', '1663059138category-11png.png', 0),
(15, 'Automobiles', 'automobiles-and-motorcycles', 1, '1568708648motor.car.png', '1573626289cat-banner.jpg', 0),
(16, 'Home decoration', 'Home-decoration-and-Appliance', 1, '1568708757home.png', '1663059131category-13png.png', 0),
(17, 'Portable & Personal', 'portable-and-personal-electronics', 1, '1568878538electronic.jpg', '1663059125category-13png.png', 0),
(18, 'Outdoor, Recreation', 'Outdoor-Recreation-and-Fitness', 1, '1568878596home.jpg', '1663059118category-10png.png', 0),
(19, 'Surveillance Safety', 'Surveillance-Safety-and-Security', 1, '1573624409icon.png', '1663059111164371008182pngpng.png', 0);

-- --------------------------------------------------------

--
-- Table structure for table `childcategories`
--

CREATE TABLE `childcategories` (
  `id` int(191) NOT NULL,
  `subcategory_id` int(191) NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `childcategories`
--

INSERT INTO `childcategories` (`id`, `subcategory_id`, `name`, `slug`, `status`) VALUES
(1, 2, 'LCD TV', 'lcd-tv', 1),
(2, 2, 'LED TV', 'led-tv', 1),
(3, 2, 'Curved TV', 'curved-tv', 1),
(4, 2, 'Plasma TV', 'plasma-tv', 1),
(5, 3, 'Top Freezer', 'top-freezer', 1),
(6, 3, 'Side-by-Side', 'side-by-side', 1),
(7, 3, 'Counter-Depth', 'counter-depth', 1),
(8, 3, 'Mini Fridge', 'mini-fridge', 1),
(9, 4, 'Front Loading', 'front-loading', 1),
(10, 4, 'Top Loading', 'top-loading', 1),
(11, 4, 'Washer Dryer Combo', 'washer-dryer-combo', 1),
(12, 4, 'Laundry Center', 'laundry-center', 1),
(13, 5, 'Central Air', 'central-air', 1),
(14, 5, 'Window Air', 'window-air', 1),
(15, 5, 'Portable Air', 'portable-air', 1),
(16, 5, 'Hybrid Air', 'hybrid-air', 1);

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(191) NOT NULL,
  `user_id` int(191) UNSIGNED NOT NULL,
  `product_id` int(191) UNSIGNED NOT NULL,
  `text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `user_id`, `product_id`, `text`, `created_at`, `updated_at`) VALUES
(26, 22, 163, 'I think it nice', '2021-12-23 21:48:54', '2021-12-23 21:48:54'),
(27, 22, 170, 'Hello world!', '2021-12-26 12:00:56', '2021-12-26 12:00:56'),
(28, 22, 178, 'fjhdfgt890', '2022-02-07 05:07:05', '2022-02-07 05:42:32'),
(29, 22, 169, 'ghdduery', '2022-03-07 22:35:34', '2022-03-07 22:35:34');

-- --------------------------------------------------------

--
-- Table structure for table `conversations`
--

CREATE TABLE `conversations` (
  `id` int(191) NOT NULL,
  `subject` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `sent_user` int(191) NOT NULL,
  `recieved_user` int(191) NOT NULL,
  `message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `conversations`
--

INSERT INTO `conversations` (`id`, `subject`, `sent_user`, `recieved_user`, `message`, `created_at`, `updated_at`) VALUES
(7, 'lkk', 22, 13, 'klklklk', '2021-12-22 17:00:14', '2021-12-22 17:00:14'),
(10, 'Helleo', 22, 22, 'fgdghdfg', '2022-03-07 21:30:35', '2022-03-07 21:30:35');

-- --------------------------------------------------------

--
-- Table structure for table `counters`
--

CREATE TABLE `counters` (
  `id` int(11) NOT NULL,
  `type` enum('referral','browser') NOT NULL DEFAULT 'referral',
  `referral` varchar(255) DEFAULT NULL,
  `total_count` int(11) NOT NULL DEFAULT 0,
  `todays_count` int(11) NOT NULL DEFAULT 0,
  `today` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `counters`
--

INSERT INTO `counters` (`id`, `type`, `referral`, `total_count`, `todays_count`, `today`) VALUES
(1, 'referral', 'www.facebook.com', 5, 0, NULL),
(2, 'referral', 'geniusocean.com', 926, 0, NULL),
(3, 'browser', 'Windows 10', 6863, 0, NULL),
(4, 'browser', 'Linux', 245, 0, NULL),
(5, 'browser', 'Unknown OS Platform', 742, 0, NULL),
(6, 'browser', 'Windows 7', 488, 0, NULL),
(7, 'referral', 'yandex.ru', 15, 0, NULL),
(8, 'browser', 'Windows 8.1', 556, 0, NULL),
(9, 'referral', 'www.google.com', 8, 0, NULL),
(10, 'browser', 'Android', 505, 0, NULL),
(11, 'browser', 'Mac OS X', 575, 0, NULL),
(12, 'referral', 'l.facebook.com', 4, 0, NULL),
(13, 'referral', 'codecanyon.net', 6, 0, NULL),
(14, 'browser', 'Windows XP', 2, 0, NULL),
(15, 'browser', 'Windows 8', 3, 0, NULL),
(16, 'browser', 'iPad', 6, 0, NULL),
(17, 'browser', 'Ubuntu', 7, 0, NULL),
(18, 'browser', 'iPhone', 32, 0, NULL),
(19, 'referral', 'www.sandbox.paypal.com', 5, 0, NULL),
(20, 'referral', 'baidu.com', 1, 0, NULL),
(21, 'referral', 'org.telegram.messenger', 3, 0, NULL),
(22, 'referral', 'm.facebook.com', 7, 0, NULL),
(23, 'referral', 'ravemodal-dev.herokuapp.com', 1, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` int(11) NOT NULL,
  `country_code` varchar(2) NOT NULL DEFAULT '',
  `country_name` varchar(100) NOT NULL DEFAULT '',
  `tax` double NOT NULL DEFAULT 0,
  `status` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `country_code`, `country_name`, `tax`, `status`) VALUES
(1, 'AF', 'Afghanistan', 0, 1),
(2, 'AL', 'Albania', 0, 1),
(3, 'DZ', 'Algeria', 0, 0),
(4, 'DS', 'American Samoa', 0, 0),
(5, 'AD', 'Andorra', 0, 0),
(6, 'AO', 'Angola', 0, 0),
(7, 'AI', 'Anguilla', 0, 0),
(8, 'AQ', 'Antarctica', 0, 0),
(9, 'AG', 'Antigua and Barbuda', 0, 0),
(10, 'AR', 'Argentina', 0, 0),
(11, 'AM', 'Armenia', 0, 0),
(12, 'AW', 'Aruba', 0, 0),
(13, 'AU', 'Australia', 0, 1),
(14, 'AT', 'Austria', 0, 1),
(15, 'AZ', 'Azerbaijan', 0, 0),
(16, 'BS', 'Bahamas', 0, 0),
(17, 'BH', 'Bahrain', 0, 0),
(18, 'BD', 'Bangladesh', 0, 1),
(19, 'BB', 'Barbados', 0, 0),
(20, 'BY', 'Belarus', 0, 1),
(21, 'BE', 'Belgium', 0, 0),
(22, 'BZ', 'Belize', 0, 0),
(23, 'BJ', 'Benin', 0, 0),
(24, 'BM', 'Bermuda', 0, 0),
(25, 'BT', 'Bhutan', 0, 0),
(26, 'BO', 'Bolivia', 0, 0),
(27, 'BA', 'Bosnia and Herzegovina', 0, 0),
(28, 'BW', 'Botswana', 0, 0),
(29, 'BV', 'Bouvet Island', 0, 0),
(30, 'BR', 'Brazil', 0, 0),
(31, 'IO', 'British Indian Ocean Territory', 0, 0),
(32, 'BN', 'Brunei Darussalam', 0, 0),
(33, 'BG', 'Bulgaria', 0, 0),
(34, 'BF', 'Burkina Faso', 0, 0),
(35, 'BI', 'Burundi', 0, 0),
(36, 'KH', 'Cambodia', 0, 0),
(37, 'CM', 'Cameroon', 0, 0),
(38, 'CA', 'Canada', 0, 0),
(39, 'CV', 'Cape Verde', 0, 0),
(40, 'KY', 'Cayman Islands', 0, 0),
(41, 'CF', 'Central African Republic', 0, 0),
(42, 'TD', 'Chad', 0, 0),
(43, 'CL', 'Chile', 0, 0),
(44, 'CN', 'China', 0, 0),
(45, 'CX', 'Christmas Island', 0, 0),
(46, 'CC', 'Cocos (Keeling) Islands', 0, 0),
(47, 'CO', 'Colombia', 0, 0),
(48, 'KM', 'Comoros', 0, 0),
(49, 'CD', 'Democratic Republic of the Congo', 0, 0),
(50, 'CG', 'Republic of Congo', 0, 0),
(51, 'CK', 'Cook Islands', 0, 0),
(52, 'CR', 'Costa Rica', 0, 0),
(53, 'HR', 'Croatia (Hrvatska)', 0, 0),
(54, 'CU', 'Cuba', 0, 0),
(55, 'CY', 'Cyprus', 0, 0),
(56, 'CZ', 'Czech Republic', 0, 0),
(57, 'DK', 'Denmark', 0, 0),
(58, 'DJ', 'Djibouti', 0, 0),
(59, 'DM', 'Dominica', 0, 0),
(60, 'DO', 'Dominican Republic', 0, 0),
(61, 'TP', 'East Timor', 0, 0),
(62, 'EC', 'Ecuador', 0, 0),
(63, 'EG', 'Egypt', 0, 0),
(64, 'SV', 'El Salvador', 0, 0),
(65, 'GQ', 'Equatorial Guinea', 0, 0),
(66, 'ER', 'Eritrea', 0, 0),
(67, 'EE', 'Estonia', 0, 0),
(68, 'ET', 'Ethiopia', 0, 0),
(69, 'FK', 'Falkland Islands (Malvinas)', 0, 0),
(70, 'FO', 'Faroe Islands', 0, 0),
(71, 'FJ', 'Fiji', 0, 0),
(72, 'FI', 'Finland', 0, 0),
(73, 'FR', 'France', 0, 0),
(74, 'FX', 'France, Metropolitan', 0, 0),
(75, 'GF', 'French Guiana', 0, 0),
(76, 'PF', 'French Polynesia', 0, 0),
(77, 'TF', 'French Southern Territories', 0, 0),
(78, 'GA', 'Gabon', 0, 0),
(79, 'GM', 'Gambia', 0, 0),
(80, 'GE', 'Georgia', 0, 0),
(81, 'DE', 'Germany', 0, 0),
(82, 'GH', 'Ghana', 0, 0),
(83, 'GI', 'Gibraltar', 0, 0),
(84, 'GK', 'Guernsey', 0, 0),
(85, 'GR', 'Greece', 0, 0),
(86, 'GL', 'Greenland', 0, 0),
(87, 'GD', 'Grenada', 0, 0),
(88, 'GP', 'Guadeloupe', 0, 0),
(89, 'GU', 'Guam', 0, 0),
(90, 'GT', 'Guatemala', 0, 0),
(91, 'GN', 'Guinea', 0, 0),
(92, 'GW', 'Guinea-Bissau', 0, 0),
(93, 'GY', 'Guyana', 0, 0),
(94, 'HT', 'Haiti', 0, 0),
(95, 'HM', 'Heard and Mc Donald Islands', 0, 0),
(96, 'HN', 'Honduras', 0, 0),
(97, 'HK', 'Hong Kong', 0, 0),
(98, 'HU', 'Hungary', 0, 0),
(99, 'IS', 'Iceland', 0, 0),
(100, 'IN', 'India', 0, 1),
(101, 'IM', 'Isle of Man', 0, 0),
(102, 'ID', 'Indonesia', 0, 0),
(103, 'IR', 'Iran (Islamic Republic of)', 0, 0),
(104, 'IQ', 'Iraq', 0, 0),
(105, 'IE', 'Ireland', 0, 0),
(106, 'IL', 'Israel', 0, 0),
(107, 'IT', 'Italy', 0, 0),
(108, 'CI', 'Ivory Coast', 0, 0),
(109, 'JE', 'Jersey', 0, 0),
(110, 'JM', 'Jamaica', 0, 0),
(111, 'JP', 'Japan', 0, 0),
(112, 'JO', 'Jordan', 0, 0),
(113, 'KZ', 'Kazakhstan', 0, 0),
(114, 'KE', 'Kenya', 0, 0),
(115, 'KI', 'Kiribati', 0, 0),
(116, 'KP', 'Korea, Democratic People\'s Republic of', 0, 0),
(117, 'KR', 'Korea, Republic of', 0, 0),
(118, 'XK', 'Kosovo', 0, 0),
(119, 'KW', 'Kuwait', 0, 0),
(120, 'KG', 'Kyrgyzstan', 0, 0),
(121, 'LA', 'Lao People\'s Democratic Republic', 0, 0),
(122, 'LV', 'Latvia', 0, 0),
(123, 'LB', 'Lebanon', 0, 0),
(124, 'LS', 'Lesotho', 0, 0),
(125, 'LR', 'Liberia', 0, 0),
(126, 'LY', 'Libyan Arab Jamahiriya', 0, 0),
(127, 'LI', 'Liechtenstein', 0, 0),
(128, 'LT', 'Lithuania', 0, 0),
(129, 'LU', 'Luxembourg', 0, 0),
(130, 'MO', 'Macau', 0, 0),
(131, 'MK', 'North Macedonia', 0, 0),
(132, 'MG', 'Madagascar', 0, 0),
(133, 'MW', 'Malawi', 0, 0),
(134, 'MY', 'Malaysia', 0, 0),
(135, 'MV', 'Maldives', 0, 0),
(136, 'ML', 'Mali', 0, 0),
(137, 'MT', 'Malta', 0, 0),
(138, 'MH', 'Marshall Islands', 0, 0),
(139, 'MQ', 'Martinique', 0, 0),
(140, 'MR', 'Mauritania', 0, 0),
(141, 'MU', 'Mauritius', 0, 0),
(142, 'TY', 'Mayotte', 0, 0),
(143, 'MX', 'Mexico', 0, 0),
(144, 'FM', 'Micronesia, Federated States of', 0, 0),
(145, 'MD', 'Moldova, Republic of', 0, 0),
(146, 'MC', 'Monaco', 0, 0),
(147, 'MN', 'Mongolia', 0, 0),
(148, 'ME', 'Montenegro', 0, 0),
(149, 'MS', 'Montserrat', 0, 0),
(150, 'MA', 'Morocco', 0, 0),
(151, 'MZ', 'Mozambique', 0, 0),
(152, 'MM', 'Myanmar', 0, 0),
(153, 'NA', 'Namibia', 0, 0),
(154, 'NR', 'Nauru', 0, 0),
(155, 'NP', 'Nepal', 0, 0),
(156, 'NL', 'Netherlands', 0, 0),
(157, 'AN', 'Netherlands Antilles', 0, 0),
(158, 'NC', 'New Caledonia', 0, 0),
(159, 'NZ', 'New Zealand', 0, 0),
(160, 'NI', 'Nicaragua', 0, 0),
(161, 'NE', 'Niger', 0, 0),
(162, 'NG', 'Nigeria', 0, 0),
(163, 'NU', 'Niue', 0, 0),
(164, 'NF', 'Norfolk Island', 0, 0),
(165, 'MP', 'Northern Mariana Islands', 0, 0),
(166, 'NO', 'Norway', 0, 0),
(167, 'OM', 'Oman', 0, 0),
(168, 'PK', 'Pakistan', 0, 0),
(169, 'PW', 'Palau', 0, 0),
(170, 'PS', 'Palestine', 0, 0),
(171, 'PA', 'Panama', 0, 0),
(172, 'PG', 'Papua New Guinea', 0, 0),
(173, 'PY', 'Paraguay', 0, 0),
(174, 'PE', 'Peru', 0, 0),
(175, 'PH', 'Philippines', 0, 0),
(176, 'PN', 'Pitcairn', 0, 0),
(177, 'PL', 'Poland', 0, 0),
(178, 'PT', 'Portugal', 0, 0),
(179, 'PR', 'Puerto Rico', 0, 0),
(180, 'QA', 'Qatar', 0, 0),
(181, 'RE', 'Reunion', 0, 0),
(182, 'RO', 'Romania', 0, 0),
(183, 'RU', 'Russian Federation', 0, 1),
(184, 'RW', 'Rwanda', 0, 0),
(185, 'KN', 'Saint Kitts and Nevis', 0, 0),
(186, 'LC', 'Saint Lucia', 0, 0),
(187, 'VC', 'Saint Vincent and the Grenadines', 0, 0),
(188, 'WS', 'Samoa', 0, 0),
(189, 'SM', 'San Marino', 0, 0),
(190, 'ST', 'Sao Tome and Principe', 0, 0),
(191, 'SA', 'Saudi Arabia', 0, 0),
(192, 'SN', 'Senegal', 0, 0),
(193, 'RS', 'Serbia', 0, 0),
(194, 'SC', 'Seychelles', 0, 0),
(195, 'SL', 'Sierra Leone', 0, 0),
(196, 'SG', 'Singapore', 0, 0),
(197, 'SK', 'Slovakia', 0, 0),
(198, 'SI', 'Slovenia', 0, 0),
(199, 'SB', 'Solomon Islands', 0, 0),
(200, 'SO', 'Somalia', 0, 0),
(201, 'ZA', 'South Africa', 0, 0),
(202, 'GS', 'South Georgia South Sandwich Islands', 0, 0),
(203, 'SS', 'South Sudan', 0, 0),
(204, 'ES', 'Spain', 0, 0),
(205, 'LK', 'Sri Lanka', 0, 0),
(206, 'SH', 'St. Helena', 0, 0),
(207, 'PM', 'St. Pierre and Miquelon', 0, 0),
(208, 'SD', 'Sudan', 0, 0),
(209, 'SR', 'Suriname', 0, 0),
(210, 'SJ', 'Svalbard and Jan Mayen Islands', 0, 0),
(211, 'SZ', 'Swaziland', 0, 0),
(212, 'SE', 'Sweden', 0, 0),
(213, 'CH', 'Switzerland', 0, 0),
(214, 'SY', 'Syrian Arab Republic', 0, 0),
(215, 'TW', 'Taiwan', 0, 0),
(216, 'TJ', 'Tajikistan', 0, 0),
(217, 'TZ', 'Tanzania, United Republic of', 0, 0),
(218, 'TH', 'Thailand', 0, 0),
(219, 'TG', 'Togo', 0, 0),
(220, 'TK', 'Tokelau', 0, 0),
(221, 'TO', 'Tonga', 0, 0),
(222, 'TT', 'Trinidad and Tobago', 0, 0),
(223, 'TN', 'Tunisia', 0, 0),
(224, 'TR', 'Turkey', 0, 0),
(225, 'TM', 'Turkmenistan', 0, 0),
(226, 'TC', 'Turks and Caicos Islands', 0, 0),
(227, 'TV', 'Tuvalu', 0, 0),
(228, 'UG', 'Uganda', 0, 1),
(229, 'UA', 'Ukraine', 0, 0),
(230, 'AE', 'United Arab Emirates', 0, 0),
(231, 'GB', 'United Kingdom', 0, 1),
(232, 'US', 'United States', 0, 1),
(233, 'UM', 'United States minor outlying islands', 0, 0),
(234, 'UY', 'Uruguay', 0, 0),
(235, 'UZ', 'Uzbekistan', 0, 0),
(236, 'VU', 'Vanuatu', 0, 0),
(237, 'VA', 'Vatican City State', 2, 1),
(238, 'VE', 'Venezuela', 0, 1),
(239, 'VN', 'Vietnam', 0, 1),
(240, 'VG', 'Virgin Islands (British)', 0, 1),
(241, 'VI', 'Virgin Islands (U.S.)', 0, 1),
(242, 'WF', 'Wallis and Futuna Islands', 0, 1),
(243, 'EH', 'Western Sahara', 0, 1),
(244, 'YE', 'Yemen', 0, 1),
(245, 'ZM', 'Zambia', 5, 1),
(246, 'ZW', 'Zimbabwe', 36, 1);

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` int(11) NOT NULL,
  `code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` tinyint(4) NOT NULL,
  `price` double NOT NULL,
  `times` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `used` int(191) UNSIGNED NOT NULL DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `coupon_type` varchar(255) DEFAULT NULL,
  `category` int(11) DEFAULT NULL,
  `sub_category` int(11) DEFAULT NULL,
  `child_category` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `coupons`
--

INSERT INTO `coupons` (`id`, `code`, `type`, `price`, `times`, `used`, `status`, `start_date`, `end_date`, `coupon_type`, `category`, `sub_category`, `child_category`) VALUES
(1, 'eqwe', 1, 12.22, '990', 18, 1, '2019-01-15', '2026-08-20', NULL, NULL, NULL, NULL),
(2, 'sdsdsasd', 0, 11, NULL, 2, 1, '2019-05-23', '2022-05-26', NULL, NULL, NULL, NULL),
(3, 'werwd', 0, 22, NULL, 3, 1, '2019-05-23', '2023-06-08', NULL, NULL, NULL, NULL),
(4, 'asdasd', 1, 23.5, NULL, 1, 1, '2019-05-23', '2020-05-28', NULL, NULL, NULL, NULL),
(5, 'kopakopakopa', 0, 40, NULL, 3, 1, '2019-05-23', '2032-05-20', NULL, NULL, NULL, NULL),
(6, 'rererere', 1, 5, '665', 1, 1, '2019-05-21', '2022-05-26', 'category', 4, NULL, NULL),
(7, 'abcd', 1, 5, NULL, 0, 1, '2021-09-12', '2021-09-21', 'category', 4, NULL, NULL),
(8, '12345', 0, 34, NULL, 1, 1, '2021-12-15', '2021-12-30', 'category', 4, NULL, NULL),
(9, 'proco', 1, 10, NULL, 0, 1, '2022-01-03', '2022-01-10', 'category', 5, NULL, NULL),
(10, 'procoo', 0, 10, NULL, 0, 1, '2022-09-06', '2022-09-30', 'category', 5, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `currencies`
--

CREATE TABLE `currencies` (
  `id` int(191) NOT NULL,
  `name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `sign` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` double NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `currencies`
--

INSERT INTO `currencies` (`id`, `name`, `sign`, `value`, `is_default`) VALUES
(1, 'USD', '$', 1, 1),
(4, 'BDT', '৳', 84.63, 0),
(6, 'EUR', '€', 0.89, 0),
(8, 'INR', '₹', 68.95, 0),
(9, 'NGN', '₦', 363.919, 0),
(10, 'BRL', 'R$', 4.02, 0);

-- --------------------------------------------------------

--
-- Table structure for table `deposits`
--

CREATE TABLE `deposits` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `deposit_number` varchar(255) DEFAULT NULL,
  `currency` blob DEFAULT NULL,
  `currency_code` varchar(255) DEFAULT NULL,
  `amount` double DEFAULT 0,
  `currency_value` double DEFAULT 0,
  `method` varchar(255) DEFAULT NULL,
  `txnid` varchar(255) DEFAULT NULL,
  `flutter_id` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `deposits`
--

INSERT INTO `deposits` (`id`, `user_id`, `deposit_number`, `currency`, `currency_code`, `amount`, `currency_value`, `method`, `txnid`, `flutter_id`, `status`, `created_at`, `updated_at`) VALUES
(70, 13, NULL, 0x24, 'USD', 100, 1, 'Stripe', 'txn_1HlSKkJlIV5dN9n7yg2ZgIbE', NULL, 1, '2020-11-08 22:50:26', '2020-11-08 22:50:26'),
(71, 13, NULL, 0x24, 'USD', 100, 1, 'Stripe', 'txn_1HlSLhJlIV5dN9n7aaoz6WIH', NULL, 1, '2020-11-08 22:51:25', '2020-11-08 22:51:25'),
(72, 13, NULL, 0x24, 'USD', 100, 1, 'Mobile Money', '69234324233423', NULL, 1, '2020-11-08 22:51:48', '2020-11-08 23:17:06'),
(73, 13, NULL, 0x24, 'USD', 100, 1, 'Mobile Money', '69234324233423', NULL, 1, '2020-11-08 23:17:56', '2020-11-08 23:18:19'),
(74, 13, NULL, 0x24, 'USD', 100, 1, 'Mobile Money', '23423423432432', NULL, 1, '2020-11-08 23:28:41', '2020-11-08 23:28:53'),
(75, 22, NULL, 0x24, 'USD', 500, 1, 'Stripe', 'txn_1Hp4DrJlIV5dN9n7t1iTYL1d', NULL, 1, '2020-11-18 21:54:12', '2020-11-18 21:54:12'),
(76, 22, NULL, 0x24, 'USD', 1000, 1, 'Mobile Money', '69234324233423', NULL, 1, '2020-11-18 23:02:50', '2020-11-18 23:11:32'),
(77, 22, NULL, 0x24, 'USD', 30, 1, 'Paypal', '73C78619CF978200E', NULL, 1, '2021-09-10 22:25:08', '2021-09-10 22:25:08'),
(78, 22, NULL, 0x24, 'USD', 400455, 1, 'Paypal', '3KX550288A083143D', NULL, 1, '2021-12-12 15:39:26', '2021-12-12 15:39:26'),
(79, 22, NULL, 0x24, 'USD', 100, 1, 'Stripe', 'txn_3K6WRAJlIV5dN9n70GBwDbAn', NULL, 1, '2021-12-14 15:32:41', '2021-12-14 15:32:41'),
(80, 22, NULL, 0x24, 'USD', 100, 1, 'Paypal', '7DD5252950230501K', NULL, 1, '2021-12-14 15:59:10', '2021-12-14 15:59:10'),
(81, 22, NULL, 0x24, 'USD', 100, 1, 'Molly Payment', 'tr_sFs2rBK6sT', NULL, 1, '2021-12-14 15:59:40', '2021-12-14 15:59:40'),
(82, 22, NULL, 0x24, 'USD', 100, 1, 'Authorize.net', '40079231225', NULL, 1, '2021-12-14 16:00:30', '2021-12-14 16:00:30'),
(83, 22, NULL, 0x24, 'USD', 100, 1, 'Mercadopago', '1244588594', NULL, 1, '2021-12-14 16:01:40', '2021-12-14 16:01:40'),
(84, 22, NULL, 0x24, 'USD', 100, 1, 'Flutterwave', NULL, 'SBw01639472516', 0, '2021-12-14 16:01:56', '2021-12-14 16:01:56'),
(85, 22, NULL, 0xe0a7b3, 'BDT', 1.1816140848399, 84.63, 'SSLCommerz', 'SSLCZ_TXN_61b85fc6044a9', NULL, 1, '2021-12-14 16:11:34', '2021-12-14 16:11:41'),
(86, 22, NULL, 0xe0a7b3, 'BDT', 1.1816140848399, 84.63, 'SSLCommerz', 'SSLCZ_TXN_61b85fe1dd9d2', NULL, 1, '2021-12-14 16:12:01', '2021-12-14 16:12:07'),
(87, 22, NULL, 0xe282b9, 'INR', 1.4503263234228, 68.95, 'Paytm', '20211214111212800110168951203256029', NULL, 1, '2021-12-14 17:46:47', '2021-12-14 17:47:19'),
(88, 22, NULL, 0xe282b9, 'INR', 1.4503263234228, 68.95, 'Instamojo', '3adde727acd54f7ca0a57698bc3d0385', NULL, 1, '2021-12-14 18:08:34', '2021-12-14 18:08:34'),
(89, 22, NULL, 0xe282b9, 'INR', 1.4503263234228, 68.95, 'Paytm', '20211214111212800110168630103261249', NULL, 1, '2021-12-14 18:09:07', '2021-12-14 18:10:35'),
(90, 22, NULL, 0xe282a6, 'NGN', 0.2747864222533, 363.919, 'Paystack', NULL, NULL, 1, '2021-12-14 18:11:02', '2021-12-14 18:11:02'),
(91, 22, NULL, 0x24, 'USD', 50, 1, 'Flutterwave', '2699723', 'HHwZ1639557171', 1, '2021-12-15 02:32:51', '2021-12-15 02:33:13'),
(92, 22, NULL, 0xe0a7b3, 'BDT', 1.1816140848399, 84.63, 'SSLCommerz', 'SSLCZ_TXN_61b9aa479d33e', NULL, 1, '2021-12-15 02:41:43', '2021-12-15 02:41:47'),
(93, 22, NULL, 0xe0a7b3, 'BDT', 1.1816140848399, 84.63, 'SSLCommerz', 'SSLCZ_TXN_61b9ab61f41b9', NULL, 1, '2021-12-15 02:46:26', '2021-12-15 02:46:28'),
(94, 22, NULL, 0x24, 'USD', 100, 1, 'Paypal', '0RR72967LE978735V', NULL, 1, '2022-03-24 10:51:19', '2022-03-24 10:51:19'),
(95, 22, NULL, 0x24, 'USD', 10, 1, 'Paypal', '00554153MA792844F', NULL, 1, '2022-03-24 11:26:49', '2022-03-24 11:26:49'),
(96, 22, NULL, 0x24, 'USD', 2000, 1, 'Stripe', 'txn_3KgiIHJlIV5dN9n71BFGSxys', NULL, 1, '2022-03-24 11:29:05', '2022-03-24 11:29:05'),
(97, 22, NULL, 0x24, 'USD', 10, 1, 'Authorize.net', '40085654964', NULL, 1, '2022-03-24 11:39:19', '2022-03-24 11:39:19'),
(98, 22, NULL, 0x24, 'USD', 400, 1, 'Mercadopago', '1247049741', NULL, 1, '2022-03-24 11:40:40', '2022-03-24 11:40:40'),
(99, 22, NULL, 0x24, 'USD', 10, 1, 'Flutterwave', NULL, 'avdC1648096855', 1, '2022-03-24 11:40:55', '2022-09-26 00:24:12'),
(100, 22, NULL, 0x24, 'USD', 400, 1, 'Flutterwave', '3244951', 'oWol1648096990', 1, '2022-03-24 11:43:10', '2022-03-24 11:44:09'),
(101, 22, 'Qq8W1664167385', NULL, 'USD', 1, 1, NULL, NULL, NULL, 1, '2022-09-25 22:43:05', '2022-09-26 00:24:06'),
(102, 22, 'WDgu1664167456', NULL, 'USD', 1, 1, 'Paypal', '00P43935DC983013E', NULL, 1, '2022-09-25 22:44:16', '2022-09-26 00:11:10'),
(103, 22, '27je1664173547', NULL, 'USD', 2, 1, 'Paypal', '7GB024530S901952T', NULL, 1, '2022-09-26 00:25:47', '2022-09-26 00:26:22'),
(104, 22, 'anfn1664173619', NULL, 'USD', 2, 1, 'Stripe', 'txn_3LmAmnJlIV5dN9n71HhLqhR0', NULL, 1, '2022-09-26 00:26:59', '2022-09-26 00:27:26'),
(105, 22, '9hTi1664179989', NULL, 'USD', 2, 1, 'Stripe', 'txn_3LmCRZJlIV5dN9n7071VY1VQ', NULL, 1, '2022-09-26 02:13:09', '2022-09-26 02:13:38'),
(106, 22, 'ndM31664180590', NULL, 'USD', 2, 1, 'Paypal', '4R92756047478135S', NULL, 1, '2022-09-26 02:23:10', '2022-09-26 02:24:17'),
(107, 22, 'HoDr1664180664', NULL, 'USD', 2, 1, 'Stripe', 'txn_3LmCcMJlIV5dN9n71CSxQu7q', NULL, 1, '2022-09-26 02:24:24', '2022-09-26 02:24:47'),
(108, 22, 'lYQ21664180696', NULL, 'USD', 2, 1, 'Molly', 'tr_wBVPawtDTr', NULL, 1, '2022-09-26 02:24:56', '2022-09-26 02:28:21'),
(109, 22, '5LkI1664180912', NULL, 'USD', 2, 1, 'Authorize.Net', '40103111056', NULL, 1, '2022-09-26 02:28:30', '2022-09-26 02:41:21'),
(110, 22, '93Rg1664181741', NULL, 'USD', 2, 1, 'Flutter Wave', '3767245', NULL, 1, '2022-09-26 02:42:21', '2022-09-26 02:49:10'),
(111, 22, 'YRte1664183268', NULL, 'USD', 2, 1, 'Stripe', '1308521305', NULL, 1, '2022-09-26 03:07:48', '2022-09-26 03:44:18'),
(112, 22, 'femP1664185497', NULL, 'INR', 0.029006526468455, 68.95, NULL, NULL, NULL, 0, '2022-09-26 03:44:57', '2022-09-26 03:44:57'),
(113, 22, 'j6DB1664249216', NULL, 'INR', 1.03, 68.95, 'Instamojo', NULL, '05896bf372634da89f80d3d3fde12cf3', 0, '2022-09-26 21:26:56', '2022-09-26 21:36:13'),
(114, 22, 'IhlX1664252398', NULL, 'INR', 0.029006526468455, 68.95, 'Paytm', '20220927111212800110168135104122093', NULL, 1, '2022-09-26 22:19:58', '2022-09-26 22:23:40'),
(115, 22, 'kpBP1664252658', NULL, 'INR', 0.029006526468455, 68.95, 'Paytm', '20220927111212800110168025505494840', NULL, 1, '2022-09-26 22:24:18', '2022-09-26 22:25:08'),
(116, 22, 'E1Dl1664252727', NULL, 'INR', 0.029006526468455, 68.95, 'Razorpay', 'pay_KMnEarIRhbheHs', NULL, 1, '2022-09-26 22:25:27', '2022-09-26 22:31:59'),
(117, 22, 'Tcxs1664253272', NULL, 'BDT', 0.02, 84.63, 'Stripe', 'SSLCZ_TXN_63327eb0c8e47', NULL, 1, '2022-09-26 22:34:32', '2022-09-26 22:40:38'),
(118, 22, 'bdic1664253783', NULL, 'NGN', 0, 363.919, 'Paystack', NULL, NULL, 1, '2022-09-26 22:43:03', '2022-09-26 22:45:41'),
(119, 22, 'tXHz1664253947', NULL, 'NGN', 0.0054957284450661, 363.919, 'Flutter Wave', '3769493', NULL, 1, '2022-09-26 22:45:47', '2022-09-26 22:46:51'),
(120, 22, 'sXCM1664272218', NULL, 'USD', 1, 1, 'Stripe', '1308547023', NULL, 1, '2022-09-27 03:50:18', '2022-09-27 03:51:02'),
(121, 22, 'O0yW1664272353', NULL, 'USD', 1, 1, 'Authorize.Net', '40103225823', NULL, 1, '2022-09-27 03:52:33', '2022-09-27 03:52:52'),
(122, 22, 'eHvH1664272419', NULL, 'USD', 1, 1, 'Authorize.Net', '40103225922', NULL, 1, '2022-09-27 03:53:39', '2022-09-27 03:54:12'),
(123, 22, NULL, 0xe282b9, 'INR', 1.4503263234228, 68.95, 'Instamojo', 'c3f658358b934c779a033e47db948d6c', NULL, 1, '2022-10-25 15:45:29', '2022-10-25 15:45:29'),
(124, 22, NULL, 0x24, 'USD', 100, 1, 'Flutterwave', '3892157', 'yvWM1666687589', 1, '2022-10-25 15:46:29', '2022-10-25 15:46:52');

-- --------------------------------------------------------

--
-- Table structure for table `email_templates`
--

CREATE TABLE `email_templates` (
  `id` int(11) NOT NULL,
  `email_type` varchar(255) DEFAULT NULL,
  `email_subject` mediumtext DEFAULT NULL,
  `email_body` longtext DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `email_templates`
--

INSERT INTO `email_templates` (`id`, `email_type`, `email_subject`, `email_body`, `status`) VALUES
(1, 'new_order', 'Your Order Placed Successfully', '<p>Hello {customer_name},<br>Your Order Number is {order_number}<br>Your order has been placed successfully</p>', 1),
(2, 'new_registration', 'Welcome To Royal Cart', '<p>Hello {customer_name},<br>You have successfully registered to {website_title}, We wish you will have a wonderful experience using our service.</p><p>Thank You<br></p>', 1),
(3, 'vendor_accept', 'Your Vendor Account Activated', '<p>Hello {customer_name},<br>Your Vendor Account Activated Successfully. Please Login to your account and build your own shop.</p><p>Thank You<br></p>', 1),
(4, 'subscription_warning', 'Your subscrption plan will end after five days', '<p>Hello {customer_name},<br>Your subscription plan duration will end after five days. Please renew your plan otherwise all of your products will be deactivated.</p><p>Thank You<br></p>', 1),
(5, 'vendor_verification', 'Request for verification.', '<p>Hello {customer_name},<br>You are requested verify your account. Please send us photo of your passport.</p><p>Thank You<br></p>', 1),
(6, 'wallet_deposit', 'Balance Added to Your Account.', '<p>Hello {customer_name},<br>${deposit_amount} has been deposited in your account. Your current balance is ${wallet_balance}</p><p>Thank You<br></p>', 1);

-- --------------------------------------------------------

--
-- Table structure for table `faqs`
--

CREATE TABLE `faqs` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) NOT NULL,
  `details` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `faqs`
--

INSERT INTO `faqs` (`id`, `title`, `details`) VALUES
(1, 'Right my front it wound cause fully', '<div style=\"text-align: justify;\">Nam enim risus, molestie et, porta ac, aliquam ac, risus. Quisque lobortis. Phasellus pellentesque purus in massa. Aenean in pede. Phasellus ac libero ac tellus pellentesque semper. Sed ac felis. Sed commodo, magna quis lacinia ornare, quam ante aliquam nisi, eu iaculis leo purus venenatis dui.</div>'),
(3, 'Man particular insensible celebrated', '<div style=\"text-align: justify;\"><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut tincidunt, odio vitae elementum ultricies, mauris massa auctor ipsum, vitae finibus odio eros et dui. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Suspendisse potenti. Cras nec nisl ultricies, vestibulum turpis a, cursus erat. Sed lectus turpis, aliquam eget posuere a, congue non risus. Proin consequat, felis id venenatis porttitor, est lorem luctus nulla, a vehicula orci tortor eget erat. Nunc nec sodales mauris, in scelerisque libero. Proin urna felis, egestas id malesuada non, interdum ut mi. Morbi diam lorem, maximus in felis non, fringilla mollis urna.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Vestibulum pulvinar arcu eget ligula dictum, ac dignissim eros aliquam. Vivamus id elementum mauris. Vivamus iaculis nisi erat, at egestas diam rhoncus eget. Suspendisse at metus quam. Nullam egestas dolor nec est elementum tempus et sit amet est. Vestibulum eu diam sit amet enim varius efficitur. Proin laoreet sapien ac lacus euismod, et malesuada nibh consectetur.</p></div>'),
(4, 'Civilly why how end viewing related', '<div style=\"text-align: justify;\"><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut tincidunt, odio vitae elementum ultricies, mauris massa auctor ipsum, vitae finibus odio eros et dui. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Suspendisse potenti. Cras nec nisl ultricies, vestibulum turpis a, cursus erat. Sed lectus turpis, aliquam eget posuere a, congue non risus. Proin consequat, felis id venenatis porttitor, est lorem luctus nulla, a vehicula orci tortor eget erat. Nunc nec sodales mauris, in scelerisque libero. Proin urna felis, egestas id malesuada non, interdum ut mi. Morbi diam lorem, maximus in felis non, fringilla mollis urna.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Vestibulum pulvinar arcu eget ligula dictum, ac dignissim eros aliquam. Vivamus id elementum mauris. Vivamus iaculis nisi erat, at egestas diam rhoncus eget. Suspendisse at metus quam. Nullam egestas dolor nec est elementum tempus et sit amet est. Vestibulum eu diam sit amet enim varius efficitur. Proin laoreet sapien ac lacus euismod, et malesuada nibh consectetur.</p></div>'),
(5, 'Six started far placing saw respect', '<div style=\"text-align: justify;\"><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut tincidunt, odio vitae elementum ultricies, mauris massa auctor ipsum, vitae finibus odio eros et dui. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Suspendisse potenti. Cras nec nisl ultricies, vestibulum turpis a, cursus erat. Sed lectus turpis, aliquam eget posuere a, congue non risus. Proin consequat, felis id venenatis porttitor, est lorem luctus nulla, a vehicula orci tortor eget erat. Nunc nec sodales mauris, in scelerisque libero. Proin urna felis, egestas id malesuada non, interdum ut mi. Morbi diam lorem, maximus in felis non, fringilla mollis urna.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Vestibulum pulvinar arcu eget ligula dictum, ac dignissim eros aliquam. Vivamus id elementum mauris. Vivamus iaculis nisi erat, at egestas diam rhoncus eget. Suspendisse at metus quam. Nullam egestas dolor nec est elementum tempus et sit amet est. Vestibulum eu diam sit amet enim varius efficitur. Proin laoreet sapien ac lacus euismod, et malesuada nibh consectetur.</p></div>'),
(6, 'She jointure goodness interest debat', '<div style=\"text-align: center;\"><div style=\"text-align: justify;\"><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;\"=\"\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut tincidunt, odio vitae elementum ultricies, mauris massa auctor ipsum, vitae finibus odio eros et dui. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Suspendisse potenti. Cras nec nisl ultricies, vestibulum turpis a, cursus erat. Sed lectus turpis, aliquam eget posuere a, congue non risus. Proin consequat, felis id venenatis porttitor, est lorem luctus nulla, a vehicula orci tortor eget erat. Nunc nec sodales mauris, in scelerisque libero. Proin urna felis, egestas id malesuada non, interdum ut mi. Morbi diam lorem, maximus in felis non, fringilla mollis urna.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;\"=\"\">Vestibulum pulvinar arcu eget ligula dictum, ac dignissim eros aliquam. Vivamus id elementum mauris. Vivamus iaculis nisi erat, at egestas diam rhoncus eget. Suspendisse at metus quam. Nullam egestas dolor nec est elementum tempus et sit amet est. Vestibulum eu diam sit amet enim varius efficitur. Proin laoreet sapien ac lacus euismod, et malesuada nibh consectetur.</p></div></div>'),
(7, 'Duis eu molestie quam, sed rhoncus nibh', '<p open=\"\" sans\",=\"\" arial,=\"\" sans-serif;\"=\"\" style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; color: rgb(0, 0, 0); text-align: justify; padding: 0px;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut tincidunt, odio vitae elementum ultricies, mauris massa auctor ipsum, vitae finibus odio eros et dui. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Suspendisse potenti. Cras nec nisl ultricies, vestibulum turpis a, cursus erat. Sed lectus turpis, aliquam eget posuere a, congue non risus. Proin consequat, felis id venenatis porttitor, est lorem luctus nulla, a vehicula orci tortor eget erat. Nunc nec sodales mauris, in scelerisque libero. Proin urna felis, egestas id malesuada non, interdum ut mi. Morbi diam lorem, maximus in felis non, fringilla mollis urna.</p><p open=\"\" sans\",=\"\" arial,=\"\" sans-serif;\"=\"\" style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; color: rgb(0, 0, 0); text-align: justify; padding: 0px;\">Vestibulum pulvinar arcu eget ligula dictum, ac dignissim eros aliquam. Vivamus id elementum mauris. Vivamus iaculis nisi erat, at egestas diam rhoncus eget. Suspendisse at metus quam. Nullam egestas dolor nec est elementum tempus et sit amet est. Vestibulum eu diam sit amet enim varius efficitur. Proin laoreet sapien ac lacus euismod, et malesuada nibh consectetur.</p>');

-- --------------------------------------------------------

--
-- Table structure for table `favorite_sellers`
--

CREATE TABLE `favorite_sellers` (
  `id` int(191) NOT NULL,
  `user_id` int(191) NOT NULL,
  `vendor_id` int(191) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `favorite_sellers`
--

INSERT INTO `favorite_sellers` (`id`, `user_id`, `vendor_id`) VALUES
(1, 22, 13),
(2, 22, 13);

-- --------------------------------------------------------

--
-- Table structure for table `fonts`
--

CREATE TABLE `fonts` (
  `id` int(11) NOT NULL,
  `is_default` tinyint(4) DEFAULT 0,
  `font_family` varchar(100) DEFAULT NULL,
  `font_value` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `fonts`
--

INSERT INTO `fonts` (`id`, `is_default`, `font_family`, `font_value`) VALUES
(1, 0, 'Roboto', 'Roboto'),
(3, 0, 'Roboto Mono', 'Roboto+Mono'),
(4, 0, 'Libre Caslon Display', 'Libre+Caslon+Display'),
(5, 0, 'Pangolin', 'Pangolin'),
(6, 0, 'Dancing Script', 'Dancing+Script'),
(7, 1, 'Open Sans', 'Open+Sans');

-- --------------------------------------------------------

--
-- Table structure for table `galleries`
--

CREATE TABLE `galleries` (
  `id` int(191) UNSIGNED NOT NULL,
  `product_id` int(191) UNSIGNED NOT NULL,
  `photo` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `galleries`
--

INSERT INTO `galleries` (`id`, `product_id`, `photo`) VALUES
(125, 122, '1568027503rFK94cnU.jpg'),
(126, 122, '1568027503i1X2FtIi.jpg'),
(127, 122, '156802750316jxawoZ.jpg'),
(128, 122, '1568027503QRBf290F.jpg'),
(129, 121, '1568027539SQqUc8Bu.jpg'),
(130, 121, '1568027539Zs5OTzjq.jpg'),
(131, 121, '1568027539C45VRZq1.jpg'),
(132, 121, '15680275398ovCzFnJ.jpg'),
(133, 120, '1568027565bJgX744G.jpg'),
(134, 120, '1568027565j0RPFUgX.jpg'),
(135, 120, '1568027565QGi6Lhyo.jpg'),
(136, 120, '15680275658MAY3VKp.jpg'),
(137, 119, '1568027610p9R6ivC6.jpg'),
(138, 119, '1568027610t2Aq7E5D.jpg'),
(139, 119, '1568027611ikz4n0fx.jpg'),
(140, 119, '15680276117BLgrCub.jpg'),
(141, 118, '156802763634t0c8tG.jpg'),
(142, 118, '1568027636fuJplSf3.jpg'),
(143, 118, '1568027636MXcgCQHU.jpg'),
(144, 118, '1568027636lfexGTpt.jpg'),
(145, 117, '1568027665rFHWlsAJ.jpg'),
(146, 117, '15680276655LPktA9k.jpg'),
(147, 117, '1568027665vcNWWq3u.jpg'),
(148, 117, '1568027665gQnqKhCw.jpg'),
(149, 116, '1568027692FPQpwtWN.jpg'),
(150, 116, '1568027692zBaGjOIC.jpg'),
(151, 116, '1568027692UXpDx63F.jpg'),
(152, 116, '1568027692KdIWbIGK.jpg'),
(153, 95, '1568027743xS8gHocM.jpg'),
(154, 95, '1568027743aVUOljdD.jpg'),
(155, 95, '156802774327OOA1Zj.jpg'),
(156, 95, '1568027743kGBx6mxa.jpg'),
(187, 112, '1568029210JSAwjRPr.jpg'),
(188, 112, '1568029210EiVUkcK6.jpg'),
(189, 112, '1568029210fJSo5hya.jpg'),
(190, 112, '15680292101vCcGfq8.jpg'),
(217, 159, '1570085246audi-automobile-car-909907.jpg'),
(218, 159, '1570085246automobile-automotive-car-112460.jpg'),
(274, 178, '1639377201kIRW1EDl.jpg'),
(275, 178, '16393772019VK5FLtl.jpg'),
(276, 178, '1639377201krle8zlu.jpg'),
(277, 175, '16393776956AA40xFx.jpg'),
(278, 175, '16393776955klqsJ7E.jpg'),
(279, 175, '1639377695kWR5DE5x.jpg'),
(280, 169, '1639377747A3Pknjfy.jpg'),
(281, 169, '1639377747dxsp2VSK.jpg'),
(282, 164, '16393780458Yr3ZAOE.jpg'),
(283, 164, '1639378045UMFwFsPS.jpg'),
(284, 164, '16393780453ZLjK3mm.jpg'),
(285, 163, '1639378095FKuTnjNm.jpg'),
(286, 163, '1639378095fjzWQrCS.jpg'),
(287, 163, '16393780950yzaxhTO.jpg'),
(288, 162, '1639378165t5CzXscD.jpg'),
(289, 162, '1639378165qI2PTBtC.jpg'),
(290, 162, '1639378165jYceIttx.jpg'),
(291, 161, '1639378430m3XEmUer.jpg'),
(292, 161, '1639378430qqzusNiP.jpg'),
(293, 161, '1639378430euqFZ796.jpg'),
(294, 160, '1639392393qABYd9Jp.jpg'),
(295, 160, '1639392393M7WZcZyF.jpg'),
(296, 160, '1639392394NcXuluij.jpg'),
(297, 144, '1639392542Hi8kqofd.jpg'),
(298, 144, '1639392543aNErwy42.jpg'),
(299, 144, '1639392543TClWju2X.jpg'),
(303, 135, '1639392748zU2kggIw.jpg'),
(304, 135, '1639392748KS5BV2nQ.jpg'),
(305, 135, '1639392748T3zkUMnp.jpg'),
(309, 114, '16394527172MC08Ov5.jpg'),
(310, 114, '1639452717EByuwyqy.jpg'),
(311, 114, '1639452717nNfXnbRZ.jpg'),
(312, 128, '16394564079EvhKQXl.jpg'),
(313, 128, '1639456407vtTRoAr7.jpg'),
(314, 128, '1639456408cd9XLUJ1.jpg'),
(326, 170, '1646901584l8MraaNk.jpg'),
(327, 170, '1646901584I1CFhs35.jpg'),
(328, 170, '1646901584Okkqp3E2.jpg'),
(329, 170, '1646901585daDTZaH9.jpg'),
(330, 168, '1648013520wLz6NjQ8.jpg'),
(331, 168, '1648013521CUVnKkuW.jpg'),
(332, 168, '1648013521ZCJGdOET.jpg'),
(333, 168, '1648013521cfKHnzKx.jpg'),
(334, 168, '1648013521nwKHsHXv.jpg'),
(335, 165, '16480136903vx2nVLT.jpg'),
(336, 165, '1648013690zDZkb083.jpg'),
(337, 165, '1648013690prNoHG1K.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `generalsettings`
--

CREATE TABLE `generalsettings` (
  `id` bigint(20) NOT NULL,
  `logo` varchar(191) DEFAULT NULL,
  `favicon` varchar(191) NOT NULL,
  `title` varchar(191) NOT NULL,
  `colors` varchar(191) DEFAULT NULL,
  `loader` varchar(191) NOT NULL,
  `admin_loader` varchar(191) DEFAULT NULL,
  `is_talkto` tinyint(1) NOT NULL DEFAULT 1,
  `talkto` text DEFAULT NULL,
  `is_language` tinyint(1) NOT NULL DEFAULT 1,
  `is_loader` tinyint(1) NOT NULL DEFAULT 1,
  `is_disqus` tinyint(1) NOT NULL DEFAULT 0,
  `disqus` longtext DEFAULT NULL,
  `guest_checkout` tinyint(1) NOT NULL DEFAULT 0,
  `currency_format` tinyint(1) NOT NULL DEFAULT 0,
  `withdraw_fee` double NOT NULL DEFAULT 0,
  `withdraw_charge` double NOT NULL DEFAULT 0,
  `shipping_cost` double NOT NULL DEFAULT 0,
  `mail_driver` varchar(191) DEFAULT NULL,
  `mail_host` varchar(191) DEFAULT NULL,
  `mail_port` varchar(191) DEFAULT NULL,
  `mail_encryption` varchar(191) DEFAULT NULL,
  `mail_user` varchar(191) DEFAULT NULL,
  `mail_pass` varchar(191) DEFAULT NULL,
  `from_email` varchar(191) DEFAULT NULL,
  `from_name` varchar(191) DEFAULT NULL,
  `is_smtp` tinyint(1) NOT NULL DEFAULT 0,
  `is_comment` tinyint(1) NOT NULL DEFAULT 1,
  `is_currency` tinyint(1) NOT NULL DEFAULT 1,
  `is_affilate` tinyint(1) NOT NULL DEFAULT 1,
  `affilate_charge` int(100) NOT NULL DEFAULT 0,
  `affilate_banner` text DEFAULT NULL,
  `fixed_commission` double NOT NULL DEFAULT 0,
  `percentage_commission` double NOT NULL DEFAULT 0,
  `reg_vendor` tinyint(1) NOT NULL DEFAULT 0,
  `footer_color` varchar(191) DEFAULT NULL,
  `copyright_color` varchar(191) DEFAULT NULL,
  `copyright` varchar(255) DEFAULT NULL,
  `is_admin_loader` tinyint(1) NOT NULL DEFAULT 0,
  `is_verification_email` tinyint(1) NOT NULL DEFAULT 0,
  `wholesell` int(191) NOT NULL DEFAULT 0,
  `is_capcha` tinyint(1) NOT NULL DEFAULT 0,
  `capcha_secret_key` varchar(100) DEFAULT NULL,
  `capcha_site_key` varchar(100) DEFAULT NULL,
  `error_banner_404` varchar(191) DEFAULT NULL,
  `error_banner_500` varchar(191) DEFAULT NULL,
  `is_popup` tinyint(1) NOT NULL DEFAULT 0,
  `popup_background` text DEFAULT NULL,
  `breadcrumb_banner` varchar(500) DEFAULT NULL,
  `invoice_logo` varchar(191) DEFAULT NULL,
  `user_image` varchar(191) DEFAULT NULL,
  `vendor_color` varchar(191) DEFAULT NULL,
  `is_secure` tinyint(1) NOT NULL DEFAULT 0,
  `is_report` tinyint(1) NOT NULL,
  `footer_logo` text DEFAULT NULL,
  `show_stock` tinyint(1) NOT NULL DEFAULT 0,
  `is_maintain` tinyint(1) NOT NULL DEFAULT 0,
  `header_color` enum('light','dark') NOT NULL DEFAULT 'light',
  `maintain_text` text DEFAULT NULL,
  `is_buy_now` tinyint(4) NOT NULL,
  `version` varchar(40) DEFAULT NULL,
  `affilate_product` tinyint(1) NOT NULL DEFAULT 1,
  `verify_product` tinyint(1) NOT NULL DEFAULT 0,
  `page_count` int(11) NOT NULL DEFAULT 0,
  `flash_count` int(11) NOT NULL DEFAULT 0,
  `hot_count` int(11) NOT NULL DEFAULT 0,
  `new_count` int(11) NOT NULL DEFAULT 0,
  `sale_count` int(11) NOT NULL DEFAULT 0,
  `best_seller_count` int(11) NOT NULL DEFAULT 0,
  `popular_count` int(11) NOT NULL DEFAULT 0,
  `top_rated_count` int(11) NOT NULL DEFAULT 0,
  `big_save_count` int(11) NOT NULL DEFAULT 0,
  `trending_count` int(11) NOT NULL DEFAULT 0,
  `seller_product_count` int(11) NOT NULL DEFAULT 0,
  `wishlist_count` int(11) NOT NULL DEFAULT 0,
  `vendor_page_count` int(11) NOT NULL DEFAULT 0,
  `min_price` double NOT NULL DEFAULT 0,
  `max_price` double NOT NULL DEFAULT 0,
  `post_count` tinyint(1) NOT NULL DEFAULT 0,
  `product_page` text DEFAULT NULL,
  `wishlist_page` text DEFAULT NULL,
  `is_contact_seller` tinyint(1) NOT NULL DEFAULT 0,
  `is_debug` tinyint(1) NOT NULL DEFAULT 0,
  `decimal_separator` varchar(10) DEFAULT NULL,
  `thousand_separator` varchar(10) DEFAULT NULL,
  `is_cookie` tinyint(1) NOT NULL DEFAULT 0,
  `product_affilate` tinyint(1) NOT NULL DEFAULT 0,
  `product_affilate_bonus` int(10) NOT NULL DEFAULT 0,
  `is_reward` int(11) NOT NULL DEFAULT 0,
  `reward_point` int(11) NOT NULL DEFAULT 0,
  `reward_dolar` int(11) NOT NULL DEFAULT 0,
  `physical` tinyint(4) NOT NULL DEFAULT 1,
  `digital` tinyint(4) NOT NULL DEFAULT 1,
  `license` tinyint(4) NOT NULL DEFAULT 1,
  `listing` tinyint(4) NOT NULL DEFAULT 1,
  `affilite` tinyint(4) NOT NULL DEFAULT 1,
  `partner_title` varchar(250) DEFAULT NULL,
  `partner_text` longtext DEFAULT NULL,
  `deal_title` varchar(255) DEFAULT NULL,
  `deal_details` varchar(600) DEFAULT NULL,
  `deal_time` date DEFAULT NULL,
  `deal_background` varchar(500) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `generalsettings`
--

INSERT INTO `generalsettings` (`id`, `logo`, `favicon`, `title`, `colors`, `loader`, `admin_loader`, `is_talkto`, `talkto`, `is_language`, `is_loader`, `is_disqus`, `disqus`, `guest_checkout`, `currency_format`, `withdraw_fee`, `withdraw_charge`, `shipping_cost`, `mail_driver`, `mail_host`, `mail_port`, `mail_encryption`, `mail_user`, `mail_pass`, `from_email`, `from_name`, `is_smtp`, `is_comment`, `is_currency`, `is_affilate`, `affilate_charge`, `affilate_banner`, `fixed_commission`, `percentage_commission`, `reg_vendor`, `footer_color`, `copyright_color`, `copyright`, `is_admin_loader`, `is_verification_email`, `wholesell`, `is_capcha`, `capcha_secret_key`, `capcha_site_key`, `error_banner_404`, `error_banner_500`, `is_popup`, `popup_background`, `breadcrumb_banner`, `invoice_logo`, `user_image`, `vendor_color`, `is_secure`, `is_report`, `footer_logo`, `show_stock`, `is_maintain`, `header_color`, `maintain_text`, `is_buy_now`, `version`, `affilate_product`, `verify_product`, `page_count`, `flash_count`, `hot_count`, `new_count`, `sale_count`, `best_seller_count`, `popular_count`, `top_rated_count`, `big_save_count`, `trending_count`, `seller_product_count`, `wishlist_count`, `vendor_page_count`, `min_price`, `max_price`, `post_count`, `product_page`, `wishlist_page`, `is_contact_seller`, `is_debug`, `decimal_separator`, `thousand_separator`, `is_cookie`, `product_affilate`, `product_affilate_bonus`, `is_reward`, `reward_point`, `reward_dolar`, `physical`, `digital`, `license`, `listing`, `affilite`, `partner_title`, `partner_text`, `deal_title`, `deal_details`, `deal_time`, `deal_background`) VALUES
(1, '1685267209logopng.png', '16480155641571567283faviconpng.png', 'eCommerce', '#424a4d', '1564224328loading3.gif', '1564224329loading3.gif', 0, 'Cillum eu id enim aliquip aute ullamco anim. Culpa deserunt nostrud excepteur voluptate velit ipsum esse enim.', 1, 1, 0, 'junnun', 1, 1, 10, 5, 5, 'smtp', 'smtp.mailtrap.io', '25', 'TLS', 'bc0787d74e8e64', 'd1e867c163fea6', 'test@junnun.royalscripts.com', 'GeniusTest', 1, 1, 1, 1, 10, '15587771131554048228onepiece.jpeg', 5, 5, 1, '#143250', '#02020c', 'COPYRIGHT © 2022. All Rights Reserved By GeniusOcean', 1, 0, 7, 0, '6LcnPoEaAAAAACV_xC4jdPqumaYKBnxz9Sj6y0zk', '6LcnPoEaAAAAAF6QhKPZ8V4744yiEnr41li3SYDn', '1566878455404.png', '1587792059error-500.png', 1, '1592369253banner.jpg', '1648110638breadpng.png', '1685267207logopng.png', '1567655174profile.jpg', '#666666', 0, 1, '1685267208logopng.png', 1, 0, 'light', '<div style=\"text-align: center;\"><font size=\"5\"><br></font></div><h1 style=\"text-align: center;\"><font size=\"6\">UNDER MAINTENANCE!</font></h1>', 1, '2.0', 1, 1, 12, 6, 12, 12, 12, 12, 4, 4, 4, 4, 3, 12, 12, 0, 1000000, 6, NULL, '12,24,36,48,60', 1, 1, '.', ',', 1, 1, 5, 1, 10, 15, 1, 1, 1, 1, 1, 'Our Partners', 'Cillum eu id enim aliquip aute ullamco anim. Culpa deserunt nostrud excepteur voluptate velit ipsum esse enim.', 'CLICK SHOP NOW FOR ALL DEAL OF THE PRODUCT', 'Donec condimentum Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras cursus pretium sapien, in pulvinar ipsum molestie id. Aliquam erat volutpat. Duis quam tellus, ullamcorper.....', '2023-09-23', '164743040383png.png');

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` int(191) NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT 0,
  `language` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(100) NOT NULL,
  `rtl` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `is_default`, `language`, `file`, `name`, `rtl`) VALUES
(1, 1, 'English', '1605519199OsGO7B86.json', '1605519199OsGO7B86', 0),
(2, 0, 'العربية', '1662525873Kynbiefk.json', '1662525873Kynbiefk', 1);

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(191) NOT NULL,
  `conversation_id` int(191) NOT NULL,
  `message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `sent_user` int(191) DEFAULT NULL,
  `recieved_user` int(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `conversation_id`, `message`, `sent_user`, `recieved_user`, `created_at`, `updated_at`) VALUES
(18, 7, 'klklklk', 22, NULL, '2021-12-22 17:00:14', '2021-12-22 17:00:14'),
(19, 7, '==+', 22, NULL, '2021-12-22 17:00:49', '2021-12-22 17:00:49'),
(23, 10, 'fgdghdfg', 22, NULL, '2022-03-07 21:30:35', '2022-03-07 21:30:35');

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` int(191) NOT NULL,
  `order_id` int(191) UNSIGNED DEFAULT NULL,
  `user_id` int(191) DEFAULT NULL,
  `vendor_id` int(191) DEFAULT NULL,
  `product_id` int(191) DEFAULT NULL,
  `conversation_id` int(191) DEFAULT NULL,
  `is_read` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `order_id`, `user_id`, `vendor_id`, `product_id`, `conversation_id`, `is_read`, `created_at`, `updated_at`) VALUES
(84, NULL, NULL, NULL, NULL, 11, 1, '2021-12-12 15:46:50', '2021-12-22 11:41:43'),
(108, NULL, NULL, NULL, NULL, 19, 1, '2022-02-05 23:35:14', '2022-02-21 03:03:55'),
(109, NULL, NULL, NULL, NULL, 19, 1, '2022-02-05 23:58:50', '2022-02-21 03:03:55'),
(110, NULL, NULL, NULL, NULL, 19, 1, '2022-02-05 23:58:58', '2022-02-21 03:03:55'),
(111, NULL, NULL, NULL, NULL, 20, 1, '2022-02-05 23:59:44', '2022-02-21 03:03:55'),
(119, NULL, NULL, NULL, NULL, 21, 1, '2022-02-21 00:32:01', '2022-02-21 03:03:55'),
(120, NULL, NULL, NULL, NULL, 21, 1, '2022-02-21 00:32:34', '2022-02-21 03:03:55'),
(164, NULL, NULL, NULL, 384, NULL, 0, '2023-05-28 03:03:09', '2023-05-28 03:03:09'),
(166, NULL, NULL, NULL, 384, NULL, 0, '2023-05-28 03:03:54', '2023-05-28 03:03:54');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `user_id` int(191) DEFAULT NULL,
  `cart` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `method` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pickup_location` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `totalQty` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `pay_amount` double NOT NULL,
  `txnid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `charge_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_number` varchar(255) NOT NULL,
  `payment_status` varchar(255) NOT NULL DEFAULT 'Pending',
  `customer_email` varchar(255) NOT NULL,
  `customer_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `customer_country` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_phone` varchar(255) NOT NULL,
  `customer_address` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `customer_city` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `customer_zip` varchar(255) DEFAULT NULL,
  `shipping_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `shipping_country` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_email` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `shipping_phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `shipping_address` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `shipping_city` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `shipping_zip` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `order_note` text CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `coupon_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `coupon_discount` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('pending','processing','completed','declined','on delivery') NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `affilate_user` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `affilate_charge` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency_sign` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency_name` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency_value` double NOT NULL,
  `shipping_cost` double NOT NULL,
  `packing_cost` double NOT NULL DEFAULT 0,
  `tax` double NOT NULL,
  `tax_location` varchar(191) DEFAULT NULL,
  `dp` tinyint(1) NOT NULL DEFAULT 0,
  `pay_id` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vendor_shipping_id` int(191) NOT NULL DEFAULT 0,
  `vendor_packing_id` int(191) NOT NULL DEFAULT 0,
  `wallet_price` double NOT NULL DEFAULT 0,
  `shipping_title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `packing_title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_state` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_state` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount` int(10) NOT NULL DEFAULT 0,
  `affilate_users` text DEFAULT NULL,
  `commission` double NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `cart`, `method`, `shipping`, `pickup_location`, `totalQty`, `pay_amount`, `txnid`, `charge_id`, `order_number`, `payment_status`, `customer_email`, `customer_name`, `customer_country`, `customer_phone`, `customer_address`, `customer_city`, `customer_zip`, `shipping_name`, `shipping_country`, `shipping_email`, `shipping_phone`, `shipping_address`, `shipping_city`, `shipping_zip`, `order_note`, `coupon_code`, `coupon_discount`, `status`, `created_at`, `updated_at`, `affilate_user`, `affilate_charge`, `currency_sign`, `currency_name`, `currency_value`, `shipping_cost`, `packing_cost`, `tax`, `tax_location`, `dp`, `pay_id`, `vendor_shipping_id`, `vendor_packing_id`, `wallet_price`, `shipping_title`, `packing_title`, `customer_state`, `shipping_state`, `discount`, `affilate_users`, `commission`) VALUES
(269, 22, '{\"totalQty\":1,\"totalPrice\":34,\"items\":{\"384\":{\"qty\":1,\"size_key\":0,\"size_qty\":\"\",\"size_price\":\"\",\"size\":\"\",\"color\":\"\",\"stock\":4,\"price\":34,\"item\":{\"id\":384,\"user_id\":\"0\",\"slug\":\"physical-product-title-will-be-here-b6r8457qbn3\",\"name\":\"Physical Product Title will be here\",\"photo\":\"1675053315Z9yfuKPk.png\",\"size\":\"\",\"size_qty\":\"\",\"size_price\":\"\",\"color\":\"\",\"price\":34,\"stock\":\"5\",\"type\":\"Physical\",\"file\":null,\"link\":null,\"license\":\"\",\"license_qty\":\"\",\"measure\":null,\"whole_sell_qty\":\"\",\"whole_sell_discount\":\"\",\"attributes\":null,\"minimum_qty\":null,\"size_all\":null,\"color_all\":null},\"license\":\"\",\"dp\":\"0\",\"keys\":\"\",\"values\":\"\",\"item_price\":34,\"discount\":0,\"affilate_user\":0}}}', 'Cash On Delivery', 'shipto', 'Azampur', '1', 34, NULL, NULL, '6GGg1685264589', 'Pending', 'user@gmail.com', 'User', 'Bangladesh', '34534534534', 'Test Address', 'Test City', '1231', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2023-05-28 03:03:09', '2023-05-28 03:03:09', NULL, NULL, '$', 'USD', 1, 0, 0, 0, 'Comilla', 0, NULL, 0, 0, 0, 'Free Shipping', 'Default Packaging', '15', NULL, 0, NULL, 0),
(270, 22, '{\"totalQty\":1,\"totalPrice\":34,\"items\":{\"384\":{\"qty\":1,\"size_key\":0,\"size_qty\":\"\",\"size_price\":\"\",\"size\":\"\",\"color\":\"\",\"stock\":4,\"price\":34,\"item\":{\"id\":384,\"user_id\":\"0\",\"slug\":\"physical-product-title-will-be-here-b6r8457qbn3\",\"name\":\"Physical Product Title will be here\",\"photo\":\"1675053315Z9yfuKPk.png\",\"size\":\"\",\"size_qty\":\"\",\"size_price\":\"\",\"color\":\"\",\"price\":34,\"stock\":\"5\",\"type\":\"Physical\",\"file\":null,\"link\":null,\"license\":\"\",\"license_qty\":\"\",\"measure\":null,\"whole_sell_qty\":\"\",\"whole_sell_discount\":\"\",\"attributes\":null,\"minimum_qty\":null,\"size_all\":null,\"color_all\":null},\"license\":\"\",\"dp\":\"0\",\"keys\":\"\",\"values\":\"\",\"item_price\":34,\"discount\":0,\"affilate_user\":0}}}', 'Cash On Delivery', 'shipto', 'Azampur', '1', 34, NULL, NULL, 'e5Pz1685264634', 'Pending', 'user@gmail.com', 'User', 'Bangladesh', '34534534534', 'Test Address', 'Test City', '1231', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2023-05-28 03:03:54', '2023-05-28 03:03:54', NULL, NULL, '$', 'USD', 1, 0, 0, 0, 'Comilla', 0, NULL, 0, 0, 0, 'Free Shipping', 'Default Packaging', '15', NULL, 0, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `order_tracks`
--

CREATE TABLE `order_tracks` (
  `id` int(191) NOT NULL,
  `order_id` int(191) NOT NULL,
  `title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `order_tracks`
--

INSERT INTO `order_tracks` (`id`, `order_id`, `title`, `text`, `created_at`, `updated_at`) VALUES
(1, 269, 'Pending', 'You have successfully placed your order.', '2023-05-28 03:03:09', '2023-05-28 03:03:09'),
(2, 270, 'Pending', 'You have successfully placed your order.', '2023-05-28 03:03:54', '2023-05-28 03:03:54');

-- --------------------------------------------------------

--
-- Table structure for table `packages`
--

CREATE TABLE `packages` (
  `id` int(191) NOT NULL,
  `user_id` int(191) NOT NULL DEFAULT 0,
  `title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subtitle` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` double NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `packages`
--

INSERT INTO `packages` (`id`, `user_id`, `title`, `subtitle`, `price`) VALUES
(1, 0, 'Default Packaging', 'Default packaging by store', 0),
(2, 0, 'Gift Packaging', 'Exclusive Gift packaging', 15),
(4, 22, 'Large box', 'Large box', 2);

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(191) NOT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(500) DEFAULT NULL,
  `meta_tag` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `header` tinyint(1) NOT NULL DEFAULT 0,
  `footer` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `title`, `slug`, `details`, `photo`, `meta_tag`, `meta_description`, `header`, `footer`) VALUES
(1, 'About Us', 'about', '<div helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" font-weight:=\"\" 400;=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" start;=\"\" text-indent:=\"\" 0px;=\"\" text-transform:=\"\" none;=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" text-decoration-style:=\"\" initial;=\"\" text-decoration-color:=\"\" initial;\"=\"\"><h2><font size=\"6\">Title number 1</font><br></h2><p>Lorem Ipsum&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p></div><div helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" font-weight:=\"\" 400;=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" start;=\"\" text-indent:=\"\" 0px;=\"\" text-transform:=\"\" none;=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" text-decoration-style:=\"\" initial;=\"\" text-decoration-color:=\"\" initial;\"=\"\"><h2><font size=\"6\">Title number 2</font><br></h2><p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p></div><div helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" font-weight:=\"\" 400;=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" start;=\"\" text-indent:=\"\" 0px;=\"\" text-transform:=\"\" none;=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" text-decoration-style:=\"\" initial;=\"\" text-decoration-color:=\"\" initial;\"=\"\"></div>', '164593825554png.png', NULL, NULL, 1, 0),
(2, 'Privacy & Policy', 'privacy', '<div helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" font-weight:=\"\" 400;=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" start;=\"\" text-indent:=\"\" 0px;=\"\" text-transform:=\"\" none;=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" text-decoration-style:=\"\" initial;=\"\" text-decoration-color:=\"\" initial;\"=\"\"><h2 style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0.5rem; font-weight: 500; line-height: 1.44444; font-size: 52px; color: rgb(20, 50, 80); font-family: &quot;Open Sans&quot;, sans-serif;\"><font size=\"6\" style=\"box-sizing: border-box;\">Title number 1</font><br style=\"box-sizing: border-box;\"></h2><h2><div helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" font-weight:=\"\" 400;=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" start;=\"\" text-indent:=\"\" 0px;=\"\" text-transform:=\"\" none;=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" text-decoration-style:=\"\" initial;=\"\" text-decoration-color:=\"\" initial;\"=\"\" style=\"color: rgb(70, 85, 65); font-size: 16px;\"><p>Lorem Ipsum&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p></div></h2><h2 style=\"line-height: 1.44444;\"><font size=\"6\">Title number 2</font><br></h2><h2><div helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" font-weight:=\"\" 400;=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" start;=\"\" text-indent:=\"\" 0px;=\"\" text-transform:=\"\" none;=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" text-decoration-style:=\"\" initial;=\"\" text-decoration-color:=\"\" initial;\"=\"\" style=\"color: rgb(70, 85, 65); font-size: 16px;\"><p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p></div></h2></div>', '164593897354png.png', 'test,test1,test2,test3', 'Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', 1, 1),
(3, 'Terms & Condition', 'terms', '<div helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" font-weight:=\"\" 400;=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" start;=\"\" text-indent:=\"\" 0px;=\"\" text-transform:=\"\" none;=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" text-decoration-style:=\"\" initial;=\"\" text-decoration-color:=\"\" initial;\"=\"\"><h2 style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0.5rem; font-weight: 500; line-height: 1.44444; font-size: 52px; color: rgb(20, 50, 80); font-family: &quot;Open Sans&quot;, sans-serif;\"><font size=\"6\" style=\"box-sizing: border-box;\">Title number 1</font><br style=\"box-sizing: border-box;\"></h2><h2><div helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" font-weight:=\"\" 400;=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" start;=\"\" text-indent:=\"\" 0px;=\"\" text-transform:=\"\" none;=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" text-decoration-style:=\"\" initial;=\"\" text-decoration-color:=\"\" initial;\"=\"\" style=\"color: rgb(70, 85, 65); font-size: 16px;\"><p>Lorem Ipsum&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p></div></h2><h2 style=\"line-height: 1.44444;\"><font size=\"6\">Title number 2</font><br></h2><h2><div helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" font-weight:=\"\" 400;=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" start;=\"\" text-indent:=\"\" 0px;=\"\" text-transform:=\"\" none;=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" text-decoration-style:=\"\" initial;=\"\" text-decoration-color:=\"\" initial;\"=\"\" style=\"color: rgb(70, 85, 65); font-size: 16px;\"><p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p></div></h2></div>', '164593902254png.png', 't1,t2,t3,t4', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `pagesettings`
--

CREATE TABLE `pagesettings` (
  `id` int(10) UNSIGNED NOT NULL,
  `contact_email` varchar(191) NOT NULL,
  `street` text DEFAULT NULL,
  `phone` text DEFAULT NULL,
  `fax` text DEFAULT NULL,
  `email` text DEFAULT NULL,
  `site` text DEFAULT NULL,
  `best_seller_banner` text DEFAULT NULL,
  `best_seller_banner_link` text DEFAULT NULL,
  `big_save_banner` text DEFAULT NULL,
  `big_save_banner_link` text DEFAULT NULL,
  `best_seller_banner1` text DEFAULT NULL,
  `best_seller_banner_link1` text DEFAULT NULL,
  `big_save_banner1` text DEFAULT NULL,
  `big_save_banner_link1` text DEFAULT NULL,
  `big_save_banner_subtitle` varchar(255) DEFAULT NULL,
  `big_save_banner_title` varchar(255) DEFAULT NULL,
  `big_save_banner_text` text DEFAULT NULL,
  `rightbanner1` text DEFAULT NULL,
  `rightbanner2` text DEFAULT NULL,
  `rightbannerlink1` text DEFAULT NULL,
  `rightbannerlink2` text DEFAULT NULL,
  `home` tinyint(1) NOT NULL DEFAULT 0,
  `blog` tinyint(1) NOT NULL DEFAULT 0,
  `faq` tinyint(1) NOT NULL DEFAULT 0,
  `contact` tinyint(1) NOT NULL DEFAULT 0,
  `category` tinyint(1) NOT NULL DEFAULT 0,
  `arrival_section` tinyint(1) NOT NULL DEFAULT 1,
  `our_services` tinyint(1) NOT NULL DEFAULT 1,
  `slider` tinyint(1) NOT NULL DEFAULT 0,
  `partner` tinyint(1) NOT NULL DEFAULT 1,
  `top_big_trending` tinyint(1) NOT NULL DEFAULT 0,
  `top_banner` int(11) NOT NULL DEFAULT 1,
  `large_banner` int(11) NOT NULL DEFAULT 1,
  `bottom_banner` int(11) NOT NULL DEFAULT 1,
  `best_selling` int(11) NOT NULL DEFAULT 1,
  `newsletter` int(11) NOT NULL DEFAULT 1,
  `deal_of_the_day` int(11) NOT NULL DEFAULT 1,
  `best_sellers` tinyint(4) NOT NULL DEFAULT 1,
  `third_left_banner` int(11) NOT NULL,
  `popular_products` tinyint(4) NOT NULL DEFAULT 1,
  `flash_deal` tinyint(4) NOT NULL DEFAULT 1,
  `top_brand` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pagesettings`
--

INSERT INTO `pagesettings` (`id`, `contact_email`, `street`, `phone`, `fax`, `email`, `site`, `best_seller_banner`, `best_seller_banner_link`, `big_save_banner`, `big_save_banner_link`, `best_seller_banner1`, `best_seller_banner_link1`, `big_save_banner1`, `big_save_banner_link1`, `big_save_banner_subtitle`, `big_save_banner_title`, `big_save_banner_text`, `rightbanner1`, `rightbanner2`, `rightbannerlink1`, `rightbannerlink2`, `home`, `blog`, `faq`, `contact`, `category`, `arrival_section`, `our_services`, `slider`, `partner`, `top_big_trending`, `top_banner`, `large_banner`, `bottom_banner`, `best_selling`, `newsletter`, `deal_of_the_day`, `best_sellers`, `third_left_banner`, `popular_products`, `flash_deal`, `top_brand`) VALUES
(1, 'admin@geniusocean.com', '3584 Hickory Heights Drive , USA', '00 000 000 000', '00 000 000 000', 'admin@geniusocean.com', 'https://geniusocean.com/', '1639369899side-banner22png.png', 'http://google.com', '1639370813Bottom31png.png', 'http://google.com', '1639369899bottom3-bigg1png.png', 'http://google.com', '16632315121png.png', 'http://google.com', 'SPECIAL OFFER', 'Special Beauty Care Available', 'On purchases with your City Furniture Credit Card from 6/16/2021 – 7/6/2021.', '1573547281sm-banner.jpg', '1573547653sm-banner.jpg', 'https://codecanyon.net/user/geniusocean/portfolio', 'https://codecanyon.net/user/geniusocean/portfolio', 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `partners`
--

CREATE TABLE `partners` (
  `id` int(191) NOT NULL,
  `photo` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `partners`
--

INSERT INTO `partners` (`id`, `photo`, `link`) VALUES
(7, '1571289583p1.jpg', 'https://codecanyon.net/user/geniusocean/portfolio'),
(8, '1571289601p2.jpg', 'https://codecanyon.net/user/geniusocean/portfolio'),
(9, '1571289608p3.jpg', 'https://codecanyon.net/user/geniusocean/portfolio'),
(10, '1571289614p4.jpg', 'https://codecanyon.net/user/geniusocean/portfolio'),
(11, '1571289621p5.jpg', 'https://codecanyon.net/user/geniusocean/portfolio'),
(12, '1571289627p6.jpg', 'https://codecanyon.net/user/geniusocean/portfolio'),
(13, '1571289634p7.jpg', 'https://codecanyon.net/user/geniusocean/portfolio'),
(14, '1571289642p8.jpg', 'https://codecanyon.net/user/geniusocean/portfolio'),
(15, '1571289650p9.jpg', 'https://codecanyon.net/user/geniusocean/portfolio'),
(16, '1571289657p10.jpg', 'https://codecanyon.net/user/geniusocean/portfolio'),
(18, '1571289669p12.jpg', 'https://codecanyon.net/user/geniusocean/portfolio'),
(19, '1571289675p13.jpg', 'https://codecanyon.net/user/geniusocean/portfolio');

-- --------------------------------------------------------

--
-- Table structure for table `payment_gateways`
--

CREATE TABLE `payment_gateways` (
  `id` int(191) NOT NULL,
  `subtitle` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` enum('manual','automatic') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'manual',
  `information` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keyword` varchar(191) DEFAULT NULL,
  `currency_id` varchar(191) NOT NULL DEFAULT '*',
  `checkout` int(191) NOT NULL DEFAULT 1,
  `deposit` int(191) NOT NULL DEFAULT 1,
  `subscription` int(191) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `payment_gateways`
--

INSERT INTO `payment_gateways` (`id`, `subtitle`, `title`, `details`, `name`, `type`, `information`, `keyword`, `currency_id`, `checkout`, `deposit`, `subscription`) VALUES
(1, 'Pay with cash upon delivery.', 'Cash On Delivery', NULL, NULL, 'manual', NULL, 'cod', '*', 1, 0, 0),
(2, '(5 - 6 days)', 'Mobile Money', '<b>Payment Number: </b>69234324233423', NULL, 'manual', NULL, NULL, '*', 1, 1, 1),
(4, NULL, NULL, NULL, 'SSLCommerz', 'automatic', '{\"store_id\":\"geniu5e1b00621f81e\",\"store_password\":\"geniu5e1b00621f81e@ssl\",\"sandbox_check\":1,\"text\":\"Pay Via SSLCommerz.\"}', 'sslcommerz', '[\"4\"]', 1, 1, 1),
(6, NULL, NULL, NULL, 'Flutter Wave', 'automatic', '{\"public_key\":\"FLWPUBK_TEST-299dc2c8bf4c7f14f7d7f48c32433393-X\",\"secret_key\":\"FLWSECK_TEST-afb1f2a4789002d7c0f2185b830450b7-X\",\"text\":\"Pay via your Flutter Wave account.\"}', 'flutterwave', '[\"1\",\"9\"]', 1, 1, 1),
(7, NULL, NULL, NULL, 'Mercadopago', 'automatic', '{\"public_key\":\"TEST-6f72a502-51c8-4e9a-8ca3-cb7fa0addad8\",\"token\":\"TEST-6068652511264159-022306-e78da379f3963916b1c7130ff2906826-529753482\",\"sandbox_check\":1,\"text\":\"Pay Via MercadoPago\"}', 'mercadopago', '[\"1\"]', 1, 1, 1),
(8, NULL, NULL, NULL, 'Authorize.Net', 'automatic', '{\"login_id\":\"76zu9VgUSxrJ\",\"txn_key\":\"2Vj62a6skSrP5U3X\",\"sandbox_check\":1,\"text\":\"Pay Via Authorize.Net\"}', 'authorize.net', '[\"1\"]', 1, 1, 1),
(9, NULL, NULL, NULL, 'Razorpay', 'automatic', '{\"key\":\"rzp_test_xDH74d48cwl8DF\",\"secret\":\"cr0H1BiQ20hVzhpHfHuNbGri\",\"text\":\"Pay via your Razorpay account.\"}', 'razorpay', '[\"8\"]', 1, 1, 1),
(10, NULL, NULL, NULL, 'Mollie Payment', 'automatic', '{\"key\":\"test_5HcWVs9qc5pzy36H9Tu9mwAyats33J\",\"text\":\"Pay with Mollie Payment.\"}', 'mollie', '[\"1\",\"6\"]', 1, 1, 1),
(11, NULL, NULL, NULL, 'Paytm', 'automatic', '{\"merchant\":\"tkogux49985047638244\",\"secret\":\"LhNGUUKE9xCQ9xY8\",\"website\":\"WEBSTAGING\",\"industry\":\"Retail\",\"sandbox_check\":1,\"text\":\"Pay via your Paytm account.\"}', 'paytm', '[\"8\"]', 1, 1, 1),
(12, NULL, NULL, NULL, 'Paystack', 'automatic', '{\"key\":\"pk_test_162a56d42131cbb01932ed0d2c48f9cb99d8e8e2\",\"email\":\"junnuns@gmail.com\",\"text\":\"Pay via your Paystack account.\"}', 'paystack', '[\"9\"]', 1, 1, 1),
(13, NULL, NULL, NULL, 'Instamojo', 'automatic', '{\"key\":\"test_172371aa837ae5cad6047dc3052\",\"token\":\"test_4ac5a785e25fc596b67dbc5c267\",\"sandbox_check\":1,\"text\":\"Pay via your Instamojo account.\"}', 'instamojo', '[\"8\"]', 1, 1, 1),
(14, NULL, NULL, NULL, 'Stripe', 'automatic', '{\"key\":\"pk_test_UnU1Coi1p5qFGwtpjZMRMgJM\",\"secret\":\"sk_test_QQcg3vGsKRPlW6T3dXcNJsor\",\"text\":\"Pay via your Credit Card.\"}', 'stripe', '[\"1\"]', 1, 1, 1),
(15, NULL, NULL, NULL, 'Paypal', 'automatic', '{\"client_id\":\"AcWYnysKa_elsQIAnlfsJXokR64Z31CeCbpis9G3msDC-BvgcbAwbacfDfEGSP-9Dp9fZaGgD05pX5Qi\",\"client_secret\":\"EGZXTq6d6vBPq8kysVx8WQA5NpavMpDzOLVOb9u75UfsJ-cFzn6aeBXIMyJW2lN1UZtJg5iDPNL9ocYE\",\"sandbox_check\":1,\"text\":\"Pay via your PayPal account.\"}', 'paypal', '[\"1\"]', 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `pickups`
--

CREATE TABLE `pickups` (
  `id` int(191) UNSIGNED NOT NULL,
  `location` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `pickups`
--

INSERT INTO `pickups` (`id`, `location`) VALUES
(2, 'Azampur'),
(3, 'Dhaka'),
(4, 'Kazipara'),
(5, 'Kamarpara'),
(6, 'Uttara');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(191) UNSIGNED NOT NULL,
  `sku` varchar(255) DEFAULT NULL,
  `product_type` enum('normal','affiliate') NOT NULL DEFAULT 'normal',
  `affiliate_link` text DEFAULT NULL,
  `category_id` int(191) UNSIGNED NOT NULL,
  `subcategory_id` int(191) UNSIGNED DEFAULT NULL,
  `childcategory_id` int(191) UNSIGNED DEFAULT NULL,
  `attributes` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `thumbnail` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size_qty` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size_price` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` double NOT NULL,
  `previous_price` double DEFAULT NULL,
  `details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stock` int(191) DEFAULT NULL,
  `policy` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(2) UNSIGNED NOT NULL DEFAULT 1,
  `views` int(191) UNSIGNED NOT NULL DEFAULT 0,
  `tags` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `features` text DEFAULT NULL,
  `colors` text DEFAULT NULL,
  `product_condition` tinyint(1) NOT NULL DEFAULT 0,
  `ship` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_meta` tinyint(1) NOT NULL DEFAULT 0,
  `meta_tag` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `youtube` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` enum('Physical','Digital','License','Listing') NOT NULL,
  `license` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `license_qty` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `platform` varchar(255) DEFAULT NULL,
  `region` varchar(255) DEFAULT NULL,
  `licence_type` varchar(255) DEFAULT NULL,
  `measure` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `featured` tinyint(2) UNSIGNED NOT NULL DEFAULT 0,
  `best` tinyint(10) UNSIGNED NOT NULL DEFAULT 0,
  `top` tinyint(10) UNSIGNED NOT NULL DEFAULT 0,
  `hot` tinyint(10) UNSIGNED NOT NULL DEFAULT 0,
  `latest` tinyint(10) UNSIGNED NOT NULL DEFAULT 0,
  `big` tinyint(10) UNSIGNED NOT NULL DEFAULT 0,
  `trending` tinyint(1) NOT NULL DEFAULT 0,
  `sale` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_discount` tinyint(1) NOT NULL DEFAULT 0,
  `discount_date` date DEFAULT NULL,
  `whole_sell_qty` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `whole_sell_discount` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_catalog` tinyint(1) NOT NULL DEFAULT 0,
  `catalog_id` int(191) NOT NULL DEFAULT 0,
  `preordered` tinyint(1) NOT NULL DEFAULT 0,
  `minimum_qty` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color_all` text DEFAULT NULL,
  `size_all` text DEFAULT NULL,
  `stock_check` int(11) NOT NULL DEFAULT 1,
  `cross_products` varchar(255) DEFAULT NULL,
  `user_id` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `sku`, `product_type`, `affiliate_link`, `category_id`, `subcategory_id`, `childcategory_id`, `attributes`, `name`, `slug`, `photo`, `thumbnail`, `file`, `size`, `size_qty`, `size_price`, `color`, `price`, `previous_price`, `details`, `stock`, `policy`, `status`, `views`, `tags`, `features`, `colors`, `product_condition`, `ship`, `is_meta`, `meta_tag`, `meta_description`, `youtube`, `type`, `license`, `license_qty`, `link`, `platform`, `region`, `licence_type`, `measure`, `featured`, `best`, `top`, `hot`, `latest`, `big`, `trending`, `sale`, `created_at`, `updated_at`, `is_discount`, `discount_date`, `whole_sell_qty`, `whole_sell_discount`, `is_catalog`, `catalog_id`, `preordered`, `minimum_qty`, `color_all`, `size_all`, `stock_check`, `cross_products`, `user_id`) VALUES
(95, 'pr495jsv1', 'affiliate', 'https://www.amazon.com/Rolex-Master-Automatic-self-Wind-Certified-Pre-Owned/dp/B07MHJ8SVQ/ref=lp_13779934011_1_2?s=apparel&ie=UTF8&qid=1565186470&sr=1-2&nodeID=13779934011&psd=1', 4, NULL, NULL, NULL, 'Affiliate Product Title will Be Here. Affiliate Product Title will Be Here 95', 'affiliate-product-title-will-be-here-affiliate-product-title-will-be-here-95-pr495jsv1', '1568027732dTwHda8l.png', '1577617660xEcrWcwo.jpg', NULL, 'S,S,S,M,M,M,L,L,L,XL,XL,XL,XXL,XXL,XXL', '96,100,100,99,100,100,100,100,100,99,100,98,100,100,100', '1,2,3,1,2,3,1,2,3,1,2,3,1,2,3', '#000000,#f41c1c,#3c34d5,#c12ec8,#007137,#000000,#f41c1c,#3c34d5,#007137,#c12ec8,#f41c1c,#3c34d5,#007137,#000000,#c12ec8', 50, 100, 'Donec condimentum\n\n           Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras cursus pretium sapien, in pulvinar ipsum molestie id. Aliquam erat volutpat. Duis quam tellus, ullamcorper at tristique ac, viverra at diam. Donec egestas eu odio tincidunt ultrices. Suspendisse egestas vulputate mauris non commodo. In convallis aliquam vulputate. Quisque varius est ac lorem venenatis lobortis. Fusce a iaculis mi, ut elementum ex. Mauris faucibus enim quis lacinia mollis. Vivamus in volutpat ante. Nullam nec vulputate mi. Fusce tempor cursus odio, nec cursus purus malesuada sit amet.\n           Aliquam ultricies\n\n           Fusce vitae lacinia mauris, eget vehicula augue. Phasellus efficitur felis non ligula dictum, sit amet faucibus nulla sollicitudin. Donec condimentum metus enim, id molestie urna ultrices sed. Nunc rhoncus purus venenatis nulla efficitur, a ultrices elit ornare. Donec vitae congue ante. Sed eleifend ex sit amet odio vestibulum, ac sagittis quam finibus. Ut egestas sit amet urna eu blandit. Duis iaculis ante vitae risus condimentum, vitae laoreet sem dapibus. Aliquam ultricies risus quis sagittis fermentum. Suspendisse interdum magna erat, viverra elementum sem sollicitudin eget\n           Aliquam ultricies\n\n           Fusce vitae lacinia mauris, eget vehicula augue. Phasellus efficitur felis non ligula dictum, sit amet faucibus nulla sollicitudin. Donec condimentum metus enim, id molestie urna ultrices sed. Nunc rhoncus purus venenatis nulla efficitur, a ultrices elit ornare. Donec vitae congue ante. Sed eleifend ex sit amet odio vestibulum, ac sagittis quam finibus. Ut egestas sit amet urna eu blandit. Duis iaculis ante vitae risus condimentum, vitae laoreet sem dapibus. Aliquam ultricies risus quis sagittis fermentum. Suspendisse interdum magna erat, viverra elementum sem sollicitudin eget\n           ', 55548, '<h4 class=\"title\" style=\"font-weight: 600; line-height: 1.2381; font-size: 20px; color: rgb(5, 14, 51);\"><div class=\"product-services\" style=\"display: flex; margin-top: 1.5em; color: rgb(118, 118, 120); font-family: Jost, sans-serif; font-size: 16px; font-weight: 400;\"><span style=\"width: 115px; font-weight: 600; padding-right: 0px;\">Services:</span><ul class=\"product-services-list\" style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; list-style-position: initial; list-style-image: initial; flex: 0 0 calc(100% - 115px); line-height: 28px;\"><li class=\"product-service-item\">30 Day Return Policy</li><li class=\"product-service-item\">Cash on Delivery available</li><li class=\"product-service-item\">Free Delivery</li></ul></div><div class=\"woocommerce-product-details__short-description\" style=\"display: flex; margin-top: 1.5em; color: rgb(118, 118, 120); font-family: Jost, sans-serif; font-size: 16px; font-weight: 400;\"><span style=\"width: 115px; font-weight: 600; padding-right: 0px;\">Highlights:</span><div class=\"short-description\" style=\"flex: 0 0 calc(100% - 115px);\"><ul style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; list-style-position: initial; list-style-image: initial; line-height: 28px;\"><li>Regular Fit.</li><li>Full sleeves.</li><li>70% cotton, 30% polyester.</li><li>Easy to wear and versatile as Casual.</li><li>Machine wash, tumble dry.</li></ul></div></div></h4>', 1, 78, 'watch', NULL, NULL, 2, '5-7 days', 0, NULL, NULL, NULL, 'License', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 1, 0, 1, 1, 1, '2019-09-09 07:36:06', '2022-10-18 17:48:07', 1, '2021-06-30', '10,20,30,40', '5,10,15,20', 0, 0, 0, NULL, NULL, NULL, 1, NULL, 0),
(112, NULL, 'normal', NULL, 8, NULL, NULL, NULL, 'License key title will be here according to your wish 1', 'license-key-title-will-be-here-according-to-your-wish-1-', '1648013610nbbGKBia.png', '1648013611p5T1Ljor.jpg', '156801752005.zip', NULL, NULL, NULL, NULL, 80, 100, 'Donec condimentum\r\n\r\n           Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras cursus pretium sapien, in pulvinar ipsum molestie id. Aliquam erat volutpat. Duis quam tellus, ullamcorper at tristique ac, viverra at diam. Donec egestas eu odio tincidunt ultrices. Suspendisse egestas vulputate mauris non commodo. In convallis aliquam vulputate. Quisque varius est ac lorem venenatis lobortis. Fusce a iaculis mi, ut elementum ex. Mauris faucibus enim quis lacinia mollis. Vivamus in volutpat ante. Nullam nec vulputate mi. Fusce tempor cursus odio, nec cursus purus malesuada sit amet.\r\n           Aliquam ultricies\r\n\r\n           Fusce vitae lacinia mauris, eget vehicula augue. Phasellus efficitur felis non ligula dictum, sit amet faucibus nulla sollicitudin. Donec condimentum metus enim, id molestie urna ultrices sed. Nunc rhoncus purus venenatis nulla efficitur, a ultrices elit ornare. Donec vitae congue ante. Sed eleifend ex sit amet odio vestibulum, ac sagittis quam finibus. Ut egestas sit amet urna eu blandit. Duis iaculis ante vitae risus condimentum, vitae laoreet sem dapibus. Aliquam ultricies risus quis sagittis fermentum. Suspendisse interdum magna erat, viverra elementum sem sollicitudin eget\r\n           Aliquam ultricies\r\n\r\n           Fusce vitae lacinia mauris, eget vehicula augue. Phasellus efficitur felis non ligula dictum, sit amet faucibus nulla sollicitudin. Donec condimentum metus enim, id molestie urna ultrices sed. Nunc rhoncus purus venenatis nulla efficitur, a ultrices elit ornare. Donec vitae congue ante. Sed eleifend ex sit amet odio vestibulum, ac sagittis quam finibus. Ut egestas sit amet urna eu blandit. Duis iaculis ante vitae risus condimentum, vitae laoreet sem dapibus. Aliquam ultricies risus quis sagittis fermentum. Suspendisse interdum magna erat, viverra elementum sem sollicitudin eget', NULL, '<h4 class=\"title\" style=\"font-weight: 600; line-height: 1.2381; font-size: 20px; color: rgb(5, 14, 51);\"><div class=\"product-services\" style=\"display: flex; margin-top: 1.5em; color: rgb(118, 118, 120); font-family: Jost, sans-serif; font-size: 16px; font-weight: 400;\"><span style=\"width: 115px; font-weight: 600; padding-right: 0px;\">Services:</span><ul class=\"product-services-list\" style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; list-style-position: initial; list-style-image: initial; flex: 0 0 calc(100% - 115px); line-height: 28px;\"><li class=\"product-service-item\">30 Day Return Policy</li><li class=\"product-service-item\">Cash on Delivery available</li><li class=\"product-service-item\">Free Delivery</li></ul></div><div class=\"woocommerce-product-details__short-description\" style=\"display: flex; margin-top: 1.5em; color: rgb(118, 118, 120); font-family: Jost, sans-serif; font-size: 16px; font-weight: 400;\"><span style=\"width: 115px; font-weight: 600; padding-right: 0px;\">Highlights:</span><div class=\"short-description\" style=\"flex: 0 0 calc(100% - 115px);\"><ul style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; list-style-position: initial; list-style-image: initial; line-height: 28px;\"><li>Regular Fit.</li><li>Full sleeves.</li><li>70% cotton, 30% polyester.</li><li>Easy to wear and versatile as Casual.</li><li>Machine wash, tumble dry.</li></ul></div></div></h4>', 1, 18, 'game', 'Keyword 2,Keyword1', '#e80707,#113fe0', 0, NULL, 0, NULL, NULL, 'https://www.youtube.com/watch?v=HxNydN5tScI', 'License', '888888888888888888888888', '1.0E+25', NULL, NULL, NULL, NULL, NULL, 1, 0, 0, 1, 1, 0, 1, 0, '2019-09-09 12:25:20', '2022-10-25 16:20:25', 0, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, 1, NULL, 0),
(114, NULL, 'normal', NULL, 10, NULL, NULL, NULL, 'License key title will be here according to your wish 1', 'license-key-title-will-be-here-according-to-your-wish-1-', '1639452704vGVh3Hle.png', '1639452704LCoONyz3.jpg', '156801752005.zip', NULL, NULL, NULL, NULL, 80, 100, 'Donec condimentum\n\n           Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras cursus pretium sapien, in pulvinar ipsum molestie id. Aliquam erat volutpat. Duis quam tellus, ullamcorper at tristique ac, viverra at diam. Donec egestas eu odio tincidunt ultrices. Suspendisse egestas vulputate mauris non commodo. In convallis aliquam vulputate. Quisque varius est ac lorem venenatis lobortis. Fusce a iaculis mi, ut elementum ex. Mauris faucibus enim quis lacinia mollis. Vivamus in volutpat ante. Nullam nec vulputate mi. Fusce tempor cursus odio, nec cursus purus malesuada sit amet.\n           Aliquam ultricies\n\n           Fusce vitae lacinia mauris, eget vehicula augue. Phasellus efficitur felis non ligula dictum, sit amet faucibus nulla sollicitudin. Donec condimentum metus enim, id molestie urna ultrices sed. Nunc rhoncus purus venenatis nulla efficitur, a ultrices elit ornare. Donec vitae congue ante. Sed eleifend ex sit amet odio vestibulum, ac sagittis quam finibus. Ut egestas sit amet urna eu blandit. Duis iaculis ante vitae risus condimentum, vitae laoreet sem dapibus. Aliquam ultricies risus quis sagittis fermentum. Suspendisse interdum magna erat, viverra elementum sem sollicitudin eget\n           Aliquam ultricies\n\n           Fusce vitae lacinia mauris, eget vehicula augue. Phasellus efficitur felis non ligula dictum, sit amet faucibus nulla sollicitudin. Donec condimentum metus enim, id molestie urna ultrices sed. Nunc rhoncus purus venenatis nulla efficitur, a ultrices elit ornare. Donec vitae congue ante. Sed eleifend ex sit amet odio vestibulum, ac sagittis quam finibus. Ut egestas sit amet urna eu blandit. Duis iaculis ante vitae risus condimentum, vitae laoreet sem dapibus. Aliquam ultricies risus quis sagittis fermentum. Suspendisse interdum magna erat, viverra elementum sem sollicitudin eget\n           ', NULL, '<h4 class=\"title\" style=\"font-weight: 600; line-height: 1.2381; font-size: 20px; color: rgb(5, 14, 51);\"><div class=\"product-services\" style=\"display: flex; margin-top: 1.5em; color: rgb(118, 118, 120); font-family: Jost, sans-serif; font-size: 16px; font-weight: 400;\"><span style=\"width: 115px; font-weight: 600; padding-right: 0px;\">Services:</span><ul class=\"product-services-list\" style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; list-style-position: initial; list-style-image: initial; flex: 0 0 calc(100% - 115px); line-height: 28px;\"><li class=\"product-service-item\">30 Day Return Policy</li><li class=\"product-service-item\">Cash on Delivery available</li><li class=\"product-service-item\">Free Delivery</li></ul></div><div class=\"woocommerce-product-details__short-description\" style=\"display: flex; margin-top: 1.5em; color: rgb(118, 118, 120); font-family: Jost, sans-serif; font-size: 16px; font-weight: 400;\"><span style=\"width: 115px; font-weight: 600; padding-right: 0px;\">Highlights:</span><div class=\"short-description\" style=\"flex: 0 0 calc(100% - 115px);\"><ul style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; list-style-position: initial; list-style-image: initial; line-height: 28px;\"><li>Regular Fit.</li><li>Full sleeves.</li><li>70% cotton, 30% polyester.</li><li>Easy to wear and versatile as Casual.</li><li>Machine wash, tumble dry.</li></ul></div></div></h4>', 1, 17, 'game', NULL, NULL, 0, NULL, 0, NULL, NULL, 'https://www.youtube.com/watch?v=HxNydN5tScI', 'License', '888888888888888888888888', '1.0E+25', NULL, NULL, NULL, NULL, NULL, 1, 0, 0, 1, 0, 0, 1, 1, '2019-09-09 12:25:20', '2022-03-06 00:14:57', 0, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, 1, NULL, 0),
(116, 'pr496jsv1', 'affiliate', 'https://www.amazon.com/Rolex-Master-Automatic-self-Wind-Certified-Pre-Owned/dp/B07MHJ8SVQ/ref=lp_13779934011_1_2?s=apparel&ie=UTF8&qid=1565186470&sr=1-2&nodeID=13779934011&psd=1', 4, NULL, NULL, NULL, 'Affiliate Product Title will Be Here. Affiliate Product Title will Be Here 116', 'affiliate-product-title-will-be-here-affiliate-product-title-will-be-here-116-pr496jsv1', '1568027684whVhJDrR.png', '1577617649gNetfByq.jpg', NULL, 'S,S,S,M,M,M,L,L,L,XL,XL,XL,Extra Large,Extra Large,Extra Large', '100,100,100,100,100,100,100,100,100,100,100,100,100,100,100', '1,2,3,1,2,3,1,2,3,1,2,3,1,2,3', '#000000,#f41c1c,#3c34d5,#c12ec8,#007137,#000000,#f41c1c,#3c34d5,#007137,#c12ec8,#f41c1c,#3c34d5,#007137,#000000,#c12ec8', 50, 100, 'Donec condimentum\n\n           Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras cursus pretium sapien, in pulvinar ipsum molestie id. Aliquam erat volutpat. Duis quam tellus, ullamcorper at tristique ac, viverra at diam. Donec egestas eu odio tincidunt ultrices. Suspendisse egestas vulputate mauris non commodo. In convallis aliquam vulputate. Quisque varius est ac lorem venenatis lobortis. Fusce a iaculis mi, ut elementum ex. Mauris faucibus enim quis lacinia mollis. Vivamus in volutpat ante. Nullam nec vulputate mi. Fusce tempor cursus odio, nec cursus purus malesuada sit amet.\n           Aliquam ultricies\n\n           Fusce vitae lacinia mauris, eget vehicula augue. Phasellus efficitur felis non ligula dictum, sit amet faucibus nulla sollicitudin. Donec condimentum metus enim, id molestie urna ultrices sed. Nunc rhoncus purus venenatis nulla efficitur, a ultrices elit ornare. Donec vitae congue ante. Sed eleifend ex sit amet odio vestibulum, ac sagittis quam finibus. Ut egestas sit amet urna eu blandit. Duis iaculis ante vitae risus condimentum, vitae laoreet sem dapibus. Aliquam ultricies risus quis sagittis fermentum. Suspendisse interdum magna erat, viverra elementum sem sollicitudin eget\n           Aliquam ultricies\n\n           Fusce vitae lacinia mauris, eget vehicula augue. Phasellus efficitur felis non ligula dictum, sit amet faucibus nulla sollicitudin. Donec condimentum metus enim, id molestie urna ultrices sed. Nunc rhoncus purus venenatis nulla efficitur, a ultrices elit ornare. Donec vitae congue ante. Sed eleifend ex sit amet odio vestibulum, ac sagittis quam finibus. Ut egestas sit amet urna eu blandit. Duis iaculis ante vitae risus condimentum, vitae laoreet sem dapibus. Aliquam ultricies risus quis sagittis fermentum. Suspendisse interdum magna erat, viverra elementum sem sollicitudin eget\n           ', 55555, '<h4 class=\"title\" style=\"font-weight: 600; line-height: 1.2381; font-size: 20px; color: rgb(5, 14, 51);\"><div class=\"product-services\" style=\"display: flex; margin-top: 1.5em; color: rgb(118, 118, 120); font-family: Jost, sans-serif; font-size: 16px; font-weight: 400;\"><span style=\"width: 115px; font-weight: 600; padding-right: 0px;\">Services:</span><ul class=\"product-services-list\" style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; list-style-position: initial; list-style-image: initial; flex: 0 0 calc(100% - 115px); line-height: 28px;\"><li class=\"product-service-item\">30 Day Return Policy</li><li class=\"product-service-item\">Cash on Delivery available</li><li class=\"product-service-item\">Free Delivery</li></ul></div><div class=\"woocommerce-product-details__short-description\" style=\"display: flex; margin-top: 1.5em; color: rgb(118, 118, 120); font-family: Jost, sans-serif; font-size: 16px; font-weight: 400;\"><span style=\"width: 115px; font-weight: 600; padding-right: 0px;\">Highlights:</span><div class=\"short-description\" style=\"flex: 0 0 calc(100% - 115px);\"><ul style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; list-style-position: initial; list-style-image: initial; line-height: 28px;\"><li>Regular Fit.</li><li>Full sleeves.</li><li>70% cotton, 30% polyester.</li><li>Easy to wear and versatile as Casual.</li><li>Machine wash, tumble dry.</li></ul></div></div></h4>', 1, 38, 'watch', 'Keyword1,Keyword 2', '#ff1a1a,#0fbcd4', 2, '5-7 days', 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 1, 0, 1, 1, 0, '2019-09-09 12:36:06', '2022-02-15 05:34:11', 1, '2021-06-30', '10,20,30,40', '5,10,15,20', 0, 0, 0, NULL, NULL, NULL, 1, NULL, 0),
(117, 'pr497jsv1', 'affiliate', 'https://www.amazon.com/Rolex-Master-Automatic-self-Wind-Certified-Pre-Owned/dp/B07MHJ8SVQ/ref=lp_13779934011_1_2?s=apparel&ie=UTF8&qid=1565186470&sr=1-2&nodeID=13779934011&psd=1', 4, NULL, NULL, NULL, 'Affiliate Product Title will Be Here. Affiliate Product Title will Be Here 117', 'affiliate-product-title-will-be-here-affiliate-product-title-will-be-here-117-pr497jsv1', '1568027658Up0FIXsW.png', '1577617641ogGOi53N.jpg', NULL, 'S,S,S,M,M,M,L,L,L,XL,XL,XL,XXL,XXL,XXL', '100,100,100,100,100,100,100,99,100,100,100,100,100,100,100', '1,2,3,1,2,3,1,2,3,1,2,3,1,2,3', '#000000,#f41c1c,#3c34d5,#c12ec8,#007137,#000000,#f41c1c,#3c34d5,#007137,#c12ec8,#f41c1c,#3c34d5,#007137,#000000,#c12ec8', 50, 100, 'Donec condimentum\n\n           Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras cursus pretium sapien, in pulvinar ipsum molestie id. Aliquam erat volutpat. Duis quam tellus, ullamcorper at tristique ac, viverra at diam. Donec egestas eu odio tincidunt ultrices. Suspendisse egestas vulputate mauris non commodo. In convallis aliquam vulputate. Quisque varius est ac lorem venenatis lobortis. Fusce a iaculis mi, ut elementum ex. Mauris faucibus enim quis lacinia mollis. Vivamus in volutpat ante. Nullam nec vulputate mi. Fusce tempor cursus odio, nec cursus purus malesuada sit amet.\n           Aliquam ultricies\n\n           Fusce vitae lacinia mauris, eget vehicula augue. Phasellus efficitur felis non ligula dictum, sit amet faucibus nulla sollicitudin. Donec condimentum metus enim, id molestie urna ultrices sed. Nunc rhoncus purus venenatis nulla efficitur, a ultrices elit ornare. Donec vitae congue ante. Sed eleifend ex sit amet odio vestibulum, ac sagittis quam finibus. Ut egestas sit amet urna eu blandit. Duis iaculis ante vitae risus condimentum, vitae laoreet sem dapibus. Aliquam ultricies risus quis sagittis fermentum. Suspendisse interdum magna erat, viverra elementum sem sollicitudin eget\n           Aliquam ultricies\n\n           Fusce vitae lacinia mauris, eget vehicula augue. Phasellus efficitur felis non ligula dictum, sit amet faucibus nulla sollicitudin. Donec condimentum metus enim, id molestie urna ultrices sed. Nunc rhoncus purus venenatis nulla efficitur, a ultrices elit ornare. Donec vitae congue ante. Sed eleifend ex sit amet odio vestibulum, ac sagittis quam finibus. Ut egestas sit amet urna eu blandit. Duis iaculis ante vitae risus condimentum, vitae laoreet sem dapibus. Aliquam ultricies risus quis sagittis fermentum. Suspendisse interdum magna erat, viverra elementum sem sollicitudin eget\n           ', 55554, '<h4 class=\"title\" style=\"font-weight: 600; line-height: 1.2381; font-size: 20px; color: rgb(5, 14, 51);\"><div class=\"product-services\" style=\"display: flex; margin-top: 1.5em; color: rgb(118, 118, 120); font-family: Jost, sans-serif; font-size: 16px; font-weight: 400;\"><span style=\"width: 115px; font-weight: 600; padding-right: 0px;\">Services:</span><ul class=\"product-services-list\" style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; list-style-position: initial; list-style-image: initial; flex: 0 0 calc(100% - 115px); line-height: 28px;\"><li class=\"product-service-item\">30 Day Return Policy</li><li class=\"product-service-item\">Cash on Delivery available</li><li class=\"product-service-item\">Free Delivery</li></ul></div><div class=\"woocommerce-product-details__short-description\" style=\"display: flex; margin-top: 1.5em; color: rgb(118, 118, 120); font-family: Jost, sans-serif; font-size: 16px; font-weight: 400;\"><span style=\"width: 115px; font-weight: 600; padding-right: 0px;\">Highlights:</span><div class=\"short-description\" style=\"flex: 0 0 calc(100% - 115px);\"><ul style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; list-style-position: initial; list-style-image: initial; line-height: 28px;\"><li>Regular Fit.</li><li>Full sleeves.</li><li>70% cotton, 30% polyester.</li><li>Easy to wear and versatile as Casual.</li><li>Machine wash, tumble dry.</li></ul></div></div></h4>', 1, 6, 'watch', NULL, NULL, 2, '5-7 days', 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 1, 0, 1, 1, 0, '2019-09-09 12:36:06', '2022-09-04 04:47:37', 1, '2021-06-30', '10,20,30,40', '5,10,15,20', 0, 0, 0, NULL, NULL, NULL, 1, NULL, 0),
(118, 'pr498jsv1', 'affiliate', 'https://www.amazon.com/Rolex-Master-Automatic-self-Wind-Certified-Pre-Owned/dp/B07MHJ8SVQ/ref=lp_13779934011_1_2?s=apparel&ie=UTF8&qid=1565186470&sr=1-2&nodeID=13779934011&psd=1', 4, NULL, NULL, NULL, 'Affiliate Product Title will Be Here. Affiliate Product Title will Be Here 118', 'affiliate-product-title-will-be-here-affiliate-product-title-will-be-here-118-pr498jsv1', '1568027631cnmEylRa.png', '1577617633KxEnzs97.jpg', NULL, 'S,S,S,M,M,M,L,L,L,XL,XL,XL,XXL,XXL,XXL', '100,100,100,100,100,100,100,100,100,99,100,100,100,100,100', '1,2,3,1,2,3,1,2,3,1,2,3,1,2,3', '#000000,#f41c1c,#3c34d5,#c12ec8,#007137,#000000,#f41c1c,#3c34d5,#007137,#c12ec8,#f41c1c,#3c34d5,#007137,#000000,#c12ec8', 50, 100, 'Donec condimentum\n\n           Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras cursus pretium sapien, in pulvinar ipsum molestie id. Aliquam erat volutpat. Duis quam tellus, ullamcorper at tristique ac, viverra at diam. Donec egestas eu odio tincidunt ultrices. Suspendisse egestas vulputate mauris non commodo. In convallis aliquam vulputate. Quisque varius est ac lorem venenatis lobortis. Fusce a iaculis mi, ut elementum ex. Mauris faucibus enim quis lacinia mollis. Vivamus in volutpat ante. Nullam nec vulputate mi. Fusce tempor cursus odio, nec cursus purus malesuada sit amet.\n           Aliquam ultricies\n\n           Fusce vitae lacinia mauris, eget vehicula augue. Phasellus efficitur felis non ligula dictum, sit amet faucibus nulla sollicitudin. Donec condimentum metus enim, id molestie urna ultrices sed. Nunc rhoncus purus venenatis nulla efficitur, a ultrices elit ornare. Donec vitae congue ante. Sed eleifend ex sit amet odio vestibulum, ac sagittis quam finibus. Ut egestas sit amet urna eu blandit. Duis iaculis ante vitae risus condimentum, vitae laoreet sem dapibus. Aliquam ultricies risus quis sagittis fermentum. Suspendisse interdum magna erat, viverra elementum sem sollicitudin eget\n           Aliquam ultricies\n\n           Fusce vitae lacinia mauris, eget vehicula augue. Phasellus efficitur felis non ligula dictum, sit amet faucibus nulla sollicitudin. Donec condimentum metus enim, id molestie urna ultrices sed. Nunc rhoncus purus venenatis nulla efficitur, a ultrices elit ornare. Donec vitae congue ante. Sed eleifend ex sit amet odio vestibulum, ac sagittis quam finibus. Ut egestas sit amet urna eu blandit. Duis iaculis ante vitae risus condimentum, vitae laoreet sem dapibus. Aliquam ultricies risus quis sagittis fermentum. Suspendisse interdum magna erat, viverra elementum sem sollicitudin eget\n           ', 55554, '<h4 class=\"title\" style=\"font-weight: 600; line-height: 1.2381; font-size: 20px; color: rgb(5, 14, 51);\"><div class=\"product-services\" style=\"display: flex; margin-top: 1.5em; color: rgb(118, 118, 120); font-family: Jost, sans-serif; font-size: 16px; font-weight: 400;\"><span style=\"width: 115px; font-weight: 600; padding-right: 0px;\">Services:</span><ul class=\"product-services-list\" style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; list-style-position: initial; list-style-image: initial; flex: 0 0 calc(100% - 115px); line-height: 28px;\"><li class=\"product-service-item\">30 Day Return Policy</li><li class=\"product-service-item\">Cash on Delivery available</li><li class=\"product-service-item\">Free Delivery</li></ul></div><div class=\"woocommerce-product-details__short-description\" style=\"display: flex; margin-top: 1.5em; color: rgb(118, 118, 120); font-family: Jost, sans-serif; font-size: 16px; font-weight: 400;\"><span style=\"width: 115px; font-weight: 600; padding-right: 0px;\">Highlights:</span><div class=\"short-description\" style=\"flex: 0 0 calc(100% - 115px);\"><ul style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; list-style-position: initial; list-style-image: initial; line-height: 28px;\"><li>Regular Fit.</li><li>Full sleeves.</li><li>70% cotton, 30% polyester.</li><li>Easy to wear and versatile as Casual.</li><li>Machine wash, tumble dry.</li></ul></div></div></h4>', 1, 5, 'watch', NULL, NULL, 2, '5-7 days', 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 1, 0, 1, 1, 0, '2019-09-09 12:36:06', '2022-09-04 03:54:11', 1, '2021-06-30', '10,20,30,40', '5,10,15,20', 0, 0, 0, NULL, NULL, NULL, 1, NULL, 0),
(119, 'pr499jsv1', 'affiliate', 'https://www.amazon.com/Rolex-Master-Automatic-self-Wind-Certified-Pre-Owned/dp/B07MHJ8SVQ/ref=lp_13779934011_1_2?s=apparel&ie=UTF8&qid=1565186470&sr=1-2&nodeID=13779934011&psd=1', 4, NULL, NULL, NULL, 'Affiliate Product Title will Be Here. Affiliate Product Title will Be Here 1', 'affiliate-product-title-will-be-here-affiliate-product-title-will-be-here-1-pr499jsv1', '1568027603i5UAZiKB.png', '1577617624IKzGBL9L.jpg', NULL, 'S,S,S,M,M,M,L,L,L,XL,XL,XL,XXL,XXL,XXL', '100,100,100,100,100,100,100,100,100,100,100,100,100,100,100', '1,2,3,1,2,3,1,2,3,1,2,3,1,2,3', '#000000,#f41c1c,#3c34d5,#c12ec8,#007137,#000000,#f41c1c,#3c34d5,#007137,#c12ec8,#f41c1c,#3c34d5,#007137,#000000,#c12ec8', 50, 100, 'Donec condimentum\n\n           Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras cursus pretium sapien, in pulvinar ipsum molestie id. Aliquam erat volutpat. Duis quam tellus, ullamcorper at tristique ac, viverra at diam. Donec egestas eu odio tincidunt ultrices. Suspendisse egestas vulputate mauris non commodo. In convallis aliquam vulputate. Quisque varius est ac lorem venenatis lobortis. Fusce a iaculis mi, ut elementum ex. Mauris faucibus enim quis lacinia mollis. Vivamus in volutpat ante. Nullam nec vulputate mi. Fusce tempor cursus odio, nec cursus purus malesuada sit amet.\n           Aliquam ultricies\n\n           Fusce vitae lacinia mauris, eget vehicula augue. Phasellus efficitur felis non ligula dictum, sit amet faucibus nulla sollicitudin. Donec condimentum metus enim, id molestie urna ultrices sed. Nunc rhoncus purus venenatis nulla efficitur, a ultrices elit ornare. Donec vitae congue ante. Sed eleifend ex sit amet odio vestibulum, ac sagittis quam finibus. Ut egestas sit amet urna eu blandit. Duis iaculis ante vitae risus condimentum, vitae laoreet sem dapibus. Aliquam ultricies risus quis sagittis fermentum. Suspendisse interdum magna erat, viverra elementum sem sollicitudin eget\n           Aliquam ultricies\n\n           Fusce vitae lacinia mauris, eget vehicula augue. Phasellus efficitur felis non ligula dictum, sit amet faucibus nulla sollicitudin. Donec condimentum metus enim, id molestie urna ultrices sed. Nunc rhoncus purus venenatis nulla efficitur, a ultrices elit ornare. Donec vitae congue ante. Sed eleifend ex sit amet odio vestibulum, ac sagittis quam finibus. Ut egestas sit amet urna eu blandit. Duis iaculis ante vitae risus condimentum, vitae laoreet sem dapibus. Aliquam ultricies risus quis sagittis fermentum. Suspendisse interdum magna erat, viverra elementum sem sollicitudin eget\n           ', 55555, '<h4 class=\"title\" style=\"font-weight: 600; line-height: 1.2381; font-size: 20px; color: rgb(5, 14, 51);\"><div class=\"product-services\" style=\"display: flex; margin-top: 1.5em; color: rgb(118, 118, 120); font-family: Jost, sans-serif; font-size: 16px; font-weight: 400;\"><span style=\"width: 115px; font-weight: 600; padding-right: 0px;\">Services:</span><ul class=\"product-services-list\" style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; list-style-position: initial; list-style-image: initial; flex: 0 0 calc(100% - 115px); line-height: 28px;\"><li class=\"product-service-item\">30 Day Return Policy</li><li class=\"product-service-item\">Cash on Delivery available</li><li class=\"product-service-item\">Free Delivery</li></ul></div><div class=\"woocommerce-product-details__short-description\" style=\"display: flex; margin-top: 1.5em; color: rgb(118, 118, 120); font-family: Jost, sans-serif; font-size: 16px; font-weight: 400;\"><span style=\"width: 115px; font-weight: 600; padding-right: 0px;\">Highlights:</span><div class=\"short-description\" style=\"flex: 0 0 calc(100% - 115px);\"><ul style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; list-style-position: initial; list-style-image: initial; line-height: 28px;\"><li>Regular Fit.</li><li>Full sleeves.</li><li>70% cotton, 30% polyester.</li><li>Easy to wear and versatile as Casual.</li><li>Machine wash, tumble dry.</li></ul></div></div></h4>', 1, 12, 'watch', NULL, NULL, 2, '5-7 days', 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 1, 0, 1, 1, 0, '2019-09-09 12:36:06', '2022-02-08 22:33:50', 1, '2021-06-30', '10,20,30,40', '5,10,15,20', 0, 0, 0, NULL, NULL, NULL, 1, NULL, 0),
(120, 'pr500jsv1', 'affiliate', 'https://www.amazon.com/Rolex-Master-Automatic-self-Wind-Certified-Pre-Owned/dp/B07MHJ8SVQ/ref=lp_13779934011_1_2?s=apparel&ie=UTF8&qid=1565186470&sr=1-2&nodeID=13779934011&psd=1', 4, NULL, NULL, NULL, 'Affiliate Product Title will Be Here. Affiliate Product Title will Be Here 120', 'affiliate-product-title-will-be-here-affiliate-product-title-will-be-here-120-pr500jsv1', '1568027558gLSECTIh.png', '1577617616ol3RAb6T.jpg', NULL, 'S,S,S,M,M,M,L,L,L,XL,XL,XL,XXL,XXL,XXL', '100,100,100,100,100,100,100,100,100,100,100,100,100,100,100', '1,2,3,1,2,3,1,2,3,1,2,3,1,2,3', '#000000,#f41c1c,#3c34d5,#c12ec8,#007137,#000000,#f41c1c,#3c34d5,#007137,#c12ec8,#f41c1c,#3c34d5,#007137,#000000,#c12ec8', 50, 100, 'Donec condimentum\n\n           Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras cursus pretium sapien, in pulvinar ipsum molestie id. Aliquam erat volutpat. Duis quam tellus, ullamcorper at tristique ac, viverra at diam. Donec egestas eu odio tincidunt ultrices. Suspendisse egestas vulputate mauris non commodo. In convallis aliquam vulputate. Quisque varius est ac lorem venenatis lobortis. Fusce a iaculis mi, ut elementum ex. Mauris faucibus enim quis lacinia mollis. Vivamus in volutpat ante. Nullam nec vulputate mi. Fusce tempor cursus odio, nec cursus purus malesuada sit amet.\n           Aliquam ultricies\n\n           Fusce vitae lacinia mauris, eget vehicula augue. Phasellus efficitur felis non ligula dictum, sit amet faucibus nulla sollicitudin. Donec condimentum metus enim, id molestie urna ultrices sed. Nunc rhoncus purus venenatis nulla efficitur, a ultrices elit ornare. Donec vitae congue ante. Sed eleifend ex sit amet odio vestibulum, ac sagittis quam finibus. Ut egestas sit amet urna eu blandit. Duis iaculis ante vitae risus condimentum, vitae laoreet sem dapibus. Aliquam ultricies risus quis sagittis fermentum. Suspendisse interdum magna erat, viverra elementum sem sollicitudin eget\n           Aliquam ultricies\n\n           Fusce vitae lacinia mauris, eget vehicula augue. Phasellus efficitur felis non ligula dictum, sit amet faucibus nulla sollicitudin. Donec condimentum metus enim, id molestie urna ultrices sed. Nunc rhoncus purus venenatis nulla efficitur, a ultrices elit ornare. Donec vitae congue ante. Sed eleifend ex sit amet odio vestibulum, ac sagittis quam finibus. Ut egestas sit amet urna eu blandit. Duis iaculis ante vitae risus condimentum, vitae laoreet sem dapibus. Aliquam ultricies risus quis sagittis fermentum. Suspendisse interdum magna erat, viverra elementum sem sollicitudin eget\n           ', 55555, '<h4 class=\"title\" style=\"font-weight: 600; line-height: 1.2381; font-size: 20px; color: rgb(5, 14, 51);\"><div class=\"product-services\" style=\"display: flex; margin-top: 1.5em; color: rgb(118, 118, 120); font-family: Jost, sans-serif; font-size: 16px; font-weight: 400;\"><span style=\"width: 115px; font-weight: 600; padding-right: 0px;\">Services:</span><ul class=\"product-services-list\" style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; list-style-position: initial; list-style-image: initial; flex: 0 0 calc(100% - 115px); line-height: 28px;\"><li class=\"product-service-item\">30 Day Return Policy</li><li class=\"product-service-item\">Cash on Delivery available</li><li class=\"product-service-item\">Free Delivery</li></ul></div><div class=\"woocommerce-product-details__short-description\" style=\"display: flex; margin-top: 1.5em; color: rgb(118, 118, 120); font-family: Jost, sans-serif; font-size: 16px; font-weight: 400;\"><span style=\"width: 115px; font-weight: 600; padding-right: 0px;\">Highlights:</span><div class=\"short-description\" style=\"flex: 0 0 calc(100% - 115px);\"><ul style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; list-style-position: initial; list-style-image: initial; line-height: 28px;\"><li>Regular Fit.</li><li>Full sleeves.</li><li>70% cotton, 30% polyester.</li><li>Easy to wear and versatile as Casual.</li><li>Machine wash, tumble dry.</li></ul></div></div></h4>', 1, 5, 'watch', NULL, NULL, 2, '5-7 days', 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 1, 0, 1, 1, 0, '2019-09-09 12:36:06', '2022-02-08 22:33:50', 1, '2021-06-30', '10,20,30,40', '5,10,15,20', 0, 0, 0, NULL, NULL, NULL, 1, NULL, 0),
(121, 'pr501jsv1', 'affiliate', 'https://www.amazon.com/Rolex-Master-Automatic-self-Wind-Certified-Pre-Owned/dp/B07MHJ8SVQ/ref=lp_13779934011_1_2?s=apparel&ie=UTF8&qid=1565186470&sr=1-2&nodeID=13779934011&psd=1', 4, NULL, NULL, NULL, 'Affiliate Product Title will Be Here. Affiliate Product Title will Be Here 121', 'affiliate-product-title-will-be-here-affiliate-product-title-will-be-here-121-pr501jsv1', '1568027534O1QEBPpR.png', '1577617608MSgUIoEZ.jpg', NULL, 'S,S,S,M,M,M,L,L,L,XL,XL,XL,XXL,XXL,XXL', '100,100,100,100,100,100,100,100,100,100,100,100,100,100,100', '1,2,3,1,2,3,1,2,3,1,2,3,1,2,3', '#000000,#f41c1c,#3c34d5,#c12ec8,#007137,#000000,#f41c1c,#3c34d5,#007137,#c12ec8,#f41c1c,#3c34d5,#007137,#000000,#c12ec8', 50, 100, 'Donec condimentum\n\n           Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras cursus pretium sapien, in pulvinar ipsum molestie id. Aliquam erat volutpat. Duis quam tellus, ullamcorper at tristique ac, viverra at diam. Donec egestas eu odio tincidunt ultrices. Suspendisse egestas vulputate mauris non commodo. In convallis aliquam vulputate. Quisque varius est ac lorem venenatis lobortis. Fusce a iaculis mi, ut elementum ex. Mauris faucibus enim quis lacinia mollis. Vivamus in volutpat ante. Nullam nec vulputate mi. Fusce tempor cursus odio, nec cursus purus malesuada sit amet.\n           Aliquam ultricies\n\n           Fusce vitae lacinia mauris, eget vehicula augue. Phasellus efficitur felis non ligula dictum, sit amet faucibus nulla sollicitudin. Donec condimentum metus enim, id molestie urna ultrices sed. Nunc rhoncus purus venenatis nulla efficitur, a ultrices elit ornare. Donec vitae congue ante. Sed eleifend ex sit amet odio vestibulum, ac sagittis quam finibus. Ut egestas sit amet urna eu blandit. Duis iaculis ante vitae risus condimentum, vitae laoreet sem dapibus. Aliquam ultricies risus quis sagittis fermentum. Suspendisse interdum magna erat, viverra elementum sem sollicitudin eget\n           Aliquam ultricies\n\n           Fusce vitae lacinia mauris, eget vehicula augue. Phasellus efficitur felis non ligula dictum, sit amet faucibus nulla sollicitudin. Donec condimentum metus enim, id molestie urna ultrices sed. Nunc rhoncus purus venenatis nulla efficitur, a ultrices elit ornare. Donec vitae congue ante. Sed eleifend ex sit amet odio vestibulum, ac sagittis quam finibus. Ut egestas sit amet urna eu blandit. Duis iaculis ante vitae risus condimentum, vitae laoreet sem dapibus. Aliquam ultricies risus quis sagittis fermentum. Suspendisse interdum magna erat, viverra elementum sem sollicitudin eget\n           ', 55555, '<h4 class=\"title\" style=\"font-weight: 600; line-height: 1.2381; font-size: 20px; color: rgb(5, 14, 51);\"><div class=\"product-services\" style=\"display: flex; margin-top: 1.5em; color: rgb(118, 118, 120); font-family: Jost, sans-serif; font-size: 16px; font-weight: 400;\"><span style=\"width: 115px; font-weight: 600; padding-right: 0px;\">Services:</span><ul class=\"product-services-list\" style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; list-style-position: initial; list-style-image: initial; flex: 0 0 calc(100% - 115px); line-height: 28px;\"><li class=\"product-service-item\">30 Day Return Policy</li><li class=\"product-service-item\">Cash on Delivery available</li><li class=\"product-service-item\">Free Delivery</li></ul></div><div class=\"woocommerce-product-details__short-description\" style=\"display: flex; margin-top: 1.5em; color: rgb(118, 118, 120); font-family: Jost, sans-serif; font-size: 16px; font-weight: 400;\"><span style=\"width: 115px; font-weight: 600; padding-right: 0px;\">Highlights:</span><div class=\"short-description\" style=\"flex: 0 0 calc(100% - 115px);\"><ul style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; list-style-position: initial; list-style-image: initial; line-height: 28px;\"><li>Regular Fit.</li><li>Full sleeves.</li><li>70% cotton, 30% polyester.</li><li>Easy to wear and versatile as Casual.</li><li>Machine wash, tumble dry.</li></ul></div></div></h4>', 1, 16, 'watch', NULL, NULL, 2, '5-7 days', 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 1, 0, 1, 1, 0, '2019-09-09 12:36:06', '2022-02-08 22:33:50', 1, '2021-06-30', '10,20,30,40', '5,10,15,20', 0, 0, 0, NULL, NULL, NULL, 1, NULL, 0),
(122, 'pr502jsv1', 'affiliate', 'https://www.amazon.com/Rolex-Master-Automatic-self-Wind-Certified-Pre-Owned/dp/B07MHJ8SVQ/ref=lp_13779934011_1_2?s=apparel&ie=UTF8&qid=1565186470&sr=1-2&nodeID=13779934011&psd=1', 4, NULL, NULL, NULL, 'Affiliate Product Title will Be Here. Affiliate Product Title will Be Here 122', 'affiliate-product-title-will-be-here-affiliate-product-title-will-be-here-122-pr502jsv1', '1568027493eLqHNoZP.png', '1577617600WtjwVRxD.jpg', NULL, 'S,S,S,M,M,M,L,L,L,XL,XL,XL,XXL,XXL,XXL', '100,100,100,100,100,100,100,100,100,100,100,100,100,100,100', '1,2,3,1,2,3,1,2,3,1,2,3,1,2,3', '#000000,#f41c1c,#3c34d5,#c12ec8,#007137,#000000,#f41c1c,#3c34d5,#007137,#c12ec8,#f41c1c,#3c34d5,#007137,#000000,#c12ec8', 50, 100, 'Donec condimentum\n\n           Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras cursus pretium sapien, in pulvinar ipsum molestie id. Aliquam erat volutpat. Duis quam tellus, ullamcorper at tristique ac, viverra at diam. Donec egestas eu odio tincidunt ultrices. Suspendisse egestas vulputate mauris non commodo. In convallis aliquam vulputate. Quisque varius est ac lorem venenatis lobortis. Fusce a iaculis mi, ut elementum ex. Mauris faucibus enim quis lacinia mollis. Vivamus in volutpat ante. Nullam nec vulputate mi. Fusce tempor cursus odio, nec cursus purus malesuada sit amet.\n           Aliquam ultricies\n\n           Fusce vitae lacinia mauris, eget vehicula augue. Phasellus efficitur felis non ligula dictum, sit amet faucibus nulla sollicitudin. Donec condimentum metus enim, id molestie urna ultrices sed. Nunc rhoncus purus venenatis nulla efficitur, a ultrices elit ornare. Donec vitae congue ante. Sed eleifend ex sit amet odio vestibulum, ac sagittis quam finibus. Ut egestas sit amet urna eu blandit. Duis iaculis ante vitae risus condimentum, vitae laoreet sem dapibus. Aliquam ultricies risus quis sagittis fermentum. Suspendisse interdum magna erat, viverra elementum sem sollicitudin eget\n           Aliquam ultricies\n\n           Fusce vitae lacinia mauris, eget vehicula augue. Phasellus efficitur felis non ligula dictum, sit amet faucibus nulla sollicitudin. Donec condimentum metus enim, id molestie urna ultrices sed. Nunc rhoncus purus venenatis nulla efficitur, a ultrices elit ornare. Donec vitae congue ante. Sed eleifend ex sit amet odio vestibulum, ac sagittis quam finibus. Ut egestas sit amet urna eu blandit. Duis iaculis ante vitae risus condimentum, vitae laoreet sem dapibus. Aliquam ultricies risus quis sagittis fermentum. Suspendisse interdum magna erat, viverra elementum sem sollicitudin eget\n           ', 55555, '<h4 class=\"title\" style=\"font-weight: 600; line-height: 1.2381; font-size: 20px; color: rgb(5, 14, 51);\"><div class=\"product-services\" style=\"display: flex; margin-top: 1.5em; color: rgb(118, 118, 120); font-family: Jost, sans-serif; font-size: 16px; font-weight: 400;\"><span style=\"width: 115px; font-weight: 600; padding-right: 0px;\">Services:</span><ul class=\"product-services-list\" style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; list-style-position: initial; list-style-image: initial; flex: 0 0 calc(100% - 115px); line-height: 28px;\"><li class=\"product-service-item\">30 Day Return Policy</li><li class=\"product-service-item\">Cash on Delivery available</li><li class=\"product-service-item\">Free Delivery</li></ul></div><div class=\"woocommerce-product-details__short-description\" style=\"display: flex; margin-top: 1.5em; color: rgb(118, 118, 120); font-family: Jost, sans-serif; font-size: 16px; font-weight: 400;\"><span style=\"width: 115px; font-weight: 600; padding-right: 0px;\">Highlights:</span><div class=\"short-description\" style=\"flex: 0 0 calc(100% - 115px);\"><ul style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; list-style-position: initial; list-style-image: initial; line-height: 28px;\"><li>Regular Fit.</li><li>Full sleeves.</li><li>70% cotton, 30% polyester.</li><li>Easy to wear and versatile as Casual.</li><li>Machine wash, tumble dry.</li></ul></div></div></h4>', 1, 28, 'watch', NULL, NULL, 2, '5-7 days', 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 1, 0, 1, 1, 0, '2019-09-09 12:36:06', '2022-02-08 22:33:50', 1, '2021-06-30', '10,20,30,40', '5,10,15,20', 0, 0, 0, NULL, NULL, NULL, 1, NULL, 0),
(128, 'pr613jsv1', 'normal', NULL, 5, 6, NULL, NULL, 'Top Rated product title will be here according to your wish 102', 'top-rated-product-title-will-be-here-according-to-your-wish-102-pr613jsv1', '1639456384gCuvZIXe.png', '1639456386BpfFKqHN.jpg', NULL, 'S,S,S,M,M,M,L,L,L,XL,XL,XL,XXL,XXL,XXL', '97,100,99,100,100,100,100,100,100,100,100,100,100,100,100', '1,2,3,1,2,3,1,2,3,1,2,3,1,2,3', '#000000,#f41c1c,#3c34d5,#c12ec8,#007137,#000000,#f41c1c,#3c34d5,#007137,#c12ec8,#f41c1c,#3c34d5,#007137,#000000,#c12ec8', 100, 500, 'Donec condimentum\n\n           Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras cursus pretium sapien, in pulvinar ipsum molestie id. Aliquam erat volutpat. Duis quam tellus, ullamcorper at tristique ac, viverra at diam. Donec egestas eu odio tincidunt ultrices. Suspendisse egestas vulputate mauris non commodo. In convallis aliquam vulputate. Quisque varius est ac lorem venenatis lobortis. Fusce a iaculis mi, ut elementum ex. Mauris faucibus enim quis lacinia mollis. Vivamus in volutpat ante. Nullam nec vulputate mi. Fusce tempor cursus odio, nec cursus purus malesuada sit amet.\n           Aliquam ultricies\n\n           Fusce vitae lacinia mauris, eget vehicula augue. Phasellus efficitur felis non ligula dictum, sit amet faucibus nulla sollicitudin. Donec condimentum metus enim, id molestie urna ultrices sed. Nunc rhoncus purus venenatis nulla efficitur, a ultrices elit ornare. Donec vitae congue ante. Sed eleifend ex sit amet odio vestibulum, ac sagittis quam finibus. Ut egestas sit amet urna eu blandit. Duis iaculis ante vitae risus condimentum, vitae laoreet sem dapibus. Aliquam ultricies risus quis sagittis fermentum. Suspendisse interdum magna erat, viverra elementum sem sollicitudin eget\n           Aliquam ultricies\n\n           Fusce vitae lacinia mauris, eget vehicula augue. Phasellus efficitur felis non ligula dictum, sit amet faucibus nulla sollicitudin. Donec condimentum metus enim, id molestie urna ultrices sed. Nunc rhoncus purus venenatis nulla efficitur, a ultrices elit ornare. Donec vitae congue ante. Sed eleifend ex sit amet odio vestibulum, ac sagittis quam finibus. Ut egestas sit amet urna eu blandit. Duis iaculis ante vitae risus condimentum, vitae laoreet sem dapibus. Aliquam ultricies risus quis sagittis fermentum. Suspendisse interdum magna erat, viverra elementum sem sollicitudin eget\n           ', NULL, '<h4 class=\"title\" style=\"font-weight: 600; line-height: 1.2381; font-size: 20px; color: rgb(5, 14, 51);\"><div class=\"product-services\" style=\"display: flex; margin-top: 1.5em; color: rgb(118, 118, 120); font-family: Jost, sans-serif; font-size: 16px; font-weight: 400;\"><span style=\"width: 115px; font-weight: 600; padding-right: 0px;\">Services:</span><ul class=\"product-services-list\" style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; list-style-position: initial; list-style-image: initial; flex: 0 0 calc(100% - 115px); line-height: 28px;\"><li class=\"product-service-item\">30 Day Return Policy</li><li class=\"product-service-item\">Cash on Delivery available</li><li class=\"product-service-item\">Free Delivery</li></ul></div><div class=\"woocommerce-product-details__short-description\" style=\"display: flex; margin-top: 1.5em; color: rgb(118, 118, 120); font-family: Jost, sans-serif; font-size: 16px; font-weight: 400;\"><span style=\"width: 115px; font-weight: 600; padding-right: 0px;\">Highlights:</span><div class=\"short-description\" style=\"flex: 0 0 calc(100% - 115px);\"><ul style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; list-style-position: initial; list-style-image: initial; line-height: 28px;\"><li>Regular Fit.</li><li>Full sleeves.</li><li>70% cotton, 30% polyester.</li><li>Easy to wear and versatile as Casual.</li><li>Machine wash, tumble dry.</li></ul></div></div></h4>', 1, 28, 'fashion', 'Keyword1,Keyword 2', '#42c406,#f00505', 2, '5-7 days', 0, 'fashion', 'Fashion meta tag from Demo store.', 'https://www.youtube.com/watch?v=HxNydN5tScI', 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, 1, 1, 0, 1, 1, '2019-09-09 13:00:05', '2022-10-30 11:48:59', 1, '2022-03-24', '10,20,30,40', '5,10,15,20', 0, 0, 0, NULL, NULL, NULL, 1, NULL, 0);
INSERT INTO `products` (`id`, `sku`, `product_type`, `affiliate_link`, `category_id`, `subcategory_id`, `childcategory_id`, `attributes`, `name`, `slug`, `photo`, `thumbnail`, `file`, `size`, `size_qty`, `size_price`, `color`, `price`, `previous_price`, `details`, `stock`, `policy`, `status`, `views`, `tags`, `features`, `colors`, `product_condition`, `ship`, `is_meta`, `meta_tag`, `meta_description`, `youtube`, `type`, `license`, `license_qty`, `link`, `platform`, `region`, `licence_type`, `measure`, `featured`, `best`, `top`, `hot`, `latest`, `big`, `trending`, `sale`, `created_at`, `updated_at`, `is_discount`, `discount_date`, `whole_sell_qty`, `whole_sell_discount`, `is_catalog`, `catalog_id`, `preordered`, `minimum_qty`, `color_all`, `size_all`, `stock_check`, `cross_products`, `user_id`) VALUES
(135, '3uZ9903ofs1', 'normal', NULL, 11, NULL, 1, NULL, '32 \'\'NAPCO D/GLASS ULTRA SLIM HD lED TV ES700E', '32-napco-dglass-ultra-slim-hd-led-tv-es700e-3uz9903ofs1', '1639392738Dts57dc4.png', '1639392738TGJsX6up.jpg', NULL, NULL, NULL, NULL, NULL, 30, 50, 'Donec condimentum\n\n           Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras cursus pretium sapien, in pulvinar ipsum molestie id. Aliquam erat volutpat. Duis quam tellus, ullamcorper at tristique ac, viverra at diam. Donec egestas eu odio tincidunt ultrices. Suspendisse egestas vulputate mauris non commodo. In convallis aliquam vulputate. Quisque varius est ac lorem venenatis lobortis. Fusce a iaculis mi, ut elementum ex. Mauris faucibus enim quis lacinia mollis. Vivamus in volutpat ante. Nullam nec vulputate mi. Fusce tempor cursus odio, nec cursus purus malesuada sit amet.\n           Aliquam ultricies\n\n           Fusce vitae lacinia mauris, eget vehicula augue. Phasellus efficitur felis non ligula dictum, sit amet faucibus nulla sollicitudin. Donec condimentum metus enim, id molestie urna ultrices sed. Nunc rhoncus purus venenatis nulla efficitur, a ultrices elit ornare. Donec vitae congue ante. Sed eleifend ex sit amet odio vestibulum, ac sagittis quam finibus. Ut egestas sit amet urna eu blandit. Duis iaculis ante vitae risus condimentum, vitae laoreet sem dapibus. Aliquam ultricies risus quis sagittis fermentum. Suspendisse interdum magna erat, viverra elementum sem sollicitudin eget\n           Aliquam ultricies\n\n           Fusce vitae lacinia mauris, eget vehicula augue. Phasellus efficitur felis non ligula dictum, sit amet faucibus nulla sollicitudin. Donec condimentum metus enim, id molestie urna ultrices sed. Nunc rhoncus purus venenatis nulla efficitur, a ultrices elit ornare. Donec vitae congue ante. Sed eleifend ex sit amet odio vestibulum, ac sagittis quam finibus. Ut egestas sit amet urna eu blandit. Duis iaculis ante vitae risus condimentum, vitae laoreet sem dapibus. Aliquam ultricies risus quis sagittis fermentum. Suspendisse interdum magna erat, viverra elementum sem sollicitudin eget\n           ', 395, '<h4 class=\"title\" style=\"font-weight: 600; line-height: 1.2381; font-size: 20px; color: rgb(5, 14, 51);\"><div class=\"product-services\" style=\"display: flex; margin-top: 1.5em; color: rgb(118, 118, 120); font-family: Jost, sans-serif; font-size: 16px; font-weight: 400;\"><span style=\"width: 115px; font-weight: 600; padding-right: 0px;\">Services:</span><ul class=\"product-services-list\" style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; list-style-position: initial; list-style-image: initial; flex: 0 0 calc(100% - 115px); line-height: 28px;\"><li class=\"product-service-item\">30 Day Return Policy</li><li class=\"product-service-item\">Cash on Delivery available</li><li class=\"product-service-item\">Free Delivery</li></ul></div><div class=\"woocommerce-product-details__short-description\" style=\"display: flex; margin-top: 1.5em; color: rgb(118, 118, 120); font-family: Jost, sans-serif; font-size: 16px; font-weight: 400;\"><span style=\"width: 115px; font-weight: 600; padding-right: 0px;\">Highlights:</span><div class=\"short-description\" style=\"flex: 0 0 calc(100% - 115px);\"><ul style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; list-style-position: initial; list-style-image: initial; line-height: 28px;\"><li>Regular Fit.</li><li>Full sleeves.</li><li>70% cotton, 30% polyester.</li><li>Easy to wear and versatile as Casual.</li><li>Machine wash, tumble dry.</li></ul></div></div></h4>', 1, 98, 'lcd,tv,led', NULL, NULL, 2, '24 hour', 0, NULL, NULL, 'https://www.youtube.com/watch?v=LIqQNG_q2us', 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 0, 0, 1, 0, 1, 1, '2019-09-29 23:08:12', '2022-10-30 12:01:14', 1, '2022-03-23', '15,20,30,40,50', '10,15,20,25,30', 1, 0, 0, NULL, NULL, NULL, 0, NULL, 0),
(144, 'vrX2915O5c1', 'normal', NULL, 4, 2, 1, '{\"warranty_type\":{\"values\":[\"No warranty\",\"international manufacturer warranty\",\"Non-local warranty\"],\"prices\":[\"5\",\"10\",\"15\"],\"details_status\":1},\"color_family\":{\"values\":[\"Black\",\"White\",\"Sliver\",\"Red\"],\"prices\":[\"10\",\"12\",\"15\",\"20\"],\"details_status\":1}}', '32 \'\'NAPCO D/GLASS ULTRA SLIM HD lED TV ES700E', '32-napco-dglass-ultra-slim-hd-led-tv-es700e-vrx2915o5c1', '1639392531ypne3xL8.png', '1639392531mZxqr9sa.jpg', NULL, NULL, NULL, NULL, NULL, 300, 500, 'Donec condimentum\n\n           Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras cursus pretium sapien, in pulvinar ipsum molestie id. Aliquam erat volutpat. Duis quam tellus, ullamcorper at tristique ac, viverra at diam. Donec egestas eu odio tincidunt ultrices. Suspendisse egestas vulputate mauris non commodo. In convallis aliquam vulputate. Quisque varius est ac lorem venenatis lobortis. Fusce a iaculis mi, ut elementum ex. Mauris faucibus enim quis lacinia mollis. Vivamus in volutpat ante. Nullam nec vulputate mi. Fusce tempor cursus odio, nec cursus purus malesuada sit amet.\n           Aliquam ultricies\n\n           Fusce vitae lacinia mauris, eget vehicula augue. Phasellus efficitur felis non ligula dictum, sit amet faucibus nulla sollicitudin. Donec condimentum metus enim, id molestie urna ultrices sed. Nunc rhoncus purus venenatis nulla efficitur, a ultrices elit ornare. Donec vitae congue ante. Sed eleifend ex sit amet odio vestibulum, ac sagittis quam finibus. Ut egestas sit amet urna eu blandit. Duis iaculis ante vitae risus condimentum, vitae laoreet sem dapibus. Aliquam ultricies risus quis sagittis fermentum. Suspendisse interdum magna erat, viverra elementum sem sollicitudin eget\n           Aliquam ultricies\n\n           Fusce vitae lacinia mauris, eget vehicula augue. Phasellus efficitur felis non ligula dictum, sit amet faucibus nulla sollicitudin. Donec condimentum metus enim, id molestie urna ultrices sed. Nunc rhoncus purus venenatis nulla efficitur, a ultrices elit ornare. Donec vitae congue ante. Sed eleifend ex sit amet odio vestibulum, ac sagittis quam finibus. Ut egestas sit amet urna eu blandit. Duis iaculis ante vitae risus condimentum, vitae laoreet sem dapibus. Aliquam ultricies risus quis sagittis fermentum. Suspendisse interdum magna erat, viverra elementum sem sollicitudin eget\n           ', 395, '<h4 class=\"title\" style=\"font-weight: 600; line-height: 1.2381; font-size: 20px; color: rgb(5, 14, 51);\"><div class=\"product-services\" style=\"display: flex; margin-top: 1.5em; color: rgb(118, 118, 120); font-family: Jost, sans-serif; font-size: 16px; font-weight: 400;\"><span style=\"width: 115px; font-weight: 600; padding-right: 0px;\">Services:</span><ul class=\"product-services-list\" style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; list-style-position: initial; list-style-image: initial; flex: 0 0 calc(100% - 115px); line-height: 28px;\"><li class=\"product-service-item\">30 Day Return Policy</li><li class=\"product-service-item\">Cash on Delivery available</li><li class=\"product-service-item\">Free Delivery</li></ul></div><div class=\"woocommerce-product-details__short-description\" style=\"display: flex; margin-top: 1.5em; color: rgb(118, 118, 120); font-family: Jost, sans-serif; font-size: 16px; font-weight: 400;\"><span style=\"width: 115px; font-weight: 600; padding-right: 0px;\">Highlights:</span><div class=\"short-description\" style=\"flex: 0 0 calc(100% - 115px);\"><ul style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; list-style-position: initial; list-style-image: initial; line-height: 28px;\"><li>Regular Fit.</li><li>Full sleeves.</li><li>70% cotton, 30% polyester.</li><li>Easy to wear and versatile as Casual.</li><li>Machine wash, tumble dry.</li></ul></div></div></h4>', 1, 54, 'lcd,tv,led', NULL, NULL, 2, '24 hour', 0, NULL, NULL, 'https://www.youtube.com/watch?v=LIqQNG_q2us', 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, 1, 0, 1, 1, '2019-10-02 21:21:58', '2022-11-01 16:08:02', 0, NULL, '15,20,30,40,50', '10,15,20,25,30', 0, 135, 0, '5', NULL, NULL, 0, NULL, 0),
(159, 'zhv5144fRY1', 'normal', NULL, 5, 6, NULL, '{\"warranty_type\":{\"values\":[\"No Warranty\",\"Local seller Warranty\",\"Non local warranty\"],\"prices\":[\"0\",\"5\",\"10\"],\"details_status\":1}}', 'Revel - Real Estate HTML Template', 'revel-real-estate-html-template-zhv5144fry1', '1639392452QopalU8v.png', '16393924528O19PHvm.jpg', NULL, NULL, NULL, NULL, NULL, 300, 346, 'Donec condimentum\n\n           Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras cursus pretium sapien, in pulvinar ipsum molestie id. Aliquam erat volutpat. Duis quam tellus, ullamcorper at tristique ac, viverra at diam. Donec egestas eu odio tincidunt ultrices. Suspendisse egestas vulputate mauris non commodo. In convallis aliquam vulputate. Quisque varius est ac lorem venenatis lobortis. Fusce a iaculis mi, ut elementum ex. Mauris faucibus enim quis lacinia mollis. Vivamus in volutpat ante. Nullam nec vulputate mi. Fusce tempor cursus odio, nec cursus purus malesuada sit amet.\n           Aliquam ultricies\n\n           Fusce vitae lacinia mauris, eget vehicula augue. Phasellus efficitur felis non ligula dictum, sit amet faucibus nulla sollicitudin. Donec condimentum metus enim, id molestie urna ultrices sed. Nunc rhoncus purus venenatis nulla efficitur, a ultrices elit ornare. Donec vitae congue ante. Sed eleifend ex sit amet odio vestibulum, ac sagittis quam finibus. Ut egestas sit amet urna eu blandit. Duis iaculis ante vitae risus condimentum, vitae laoreet sem dapibus. Aliquam ultricies risus quis sagittis fermentum. Suspendisse interdum magna erat, viverra elementum sem sollicitudin eget\n           Aliquam ultricies\n\n           Fusce vitae lacinia mauris, eget vehicula augue. Phasellus efficitur felis non ligula dictum, sit amet faucibus nulla sollicitudin. Donec condimentum metus enim, id molestie urna ultrices sed. Nunc rhoncus purus venenatis nulla efficitur, a ultrices elit ornare. Donec vitae congue ante. Sed eleifend ex sit amet odio vestibulum, ac sagittis quam finibus. Ut egestas sit amet urna eu blandit. Duis iaculis ante vitae risus condimentum, vitae laoreet sem dapibus. Aliquam ultricies risus quis sagittis fermentum. Suspendisse interdum magna erat, viverra elementum sem sollicitudin eget\n           ', 34634, '<h4 class=\"title\" style=\"font-weight: 600; line-height: 1.2381; font-size: 20px; color: rgb(5, 14, 51);\"><div class=\"product-services\" style=\"display: flex; margin-top: 1.5em; color: rgb(118, 118, 120); font-family: Jost, sans-serif; font-size: 16px; font-weight: 400;\"><span style=\"width: 115px; font-weight: 600; padding-right: 0px;\">Services:</span><ul class=\"product-services-list\" style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; list-style-position: initial; list-style-image: initial; flex: 0 0 calc(100% - 115px); line-height: 28px;\"><li class=\"product-service-item\">30 Day Return Policy</li><li class=\"product-service-item\">Cash on Delivery available</li><li class=\"product-service-item\">Free Delivery</li></ul></div><div class=\"woocommerce-product-details__short-description\" style=\"display: flex; margin-top: 1.5em; color: rgb(118, 118, 120); font-family: Jost, sans-serif; font-size: 16px; font-weight: 400;\"><span style=\"width: 115px; font-weight: 600; padding-right: 0px;\">Highlights:</span><div class=\"short-description\" style=\"flex: 0 0 calc(100% - 115px);\"><ul style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; list-style-position: initial; list-style-image: initial; line-height: 28px;\"><li>Regular Fit.</li><li>Full sleeves.</li><li>70% cotton, 30% polyester.</li><li>Easy to wear and versatile as Casual.</li><li>Machine wash, tumble dry.</li></ul></div></div></h4>', 1, 26, NULL, NULL, NULL, 2, '24 hour', 0, NULL, NULL, 'https://www.youtube.com/watch?v=MIJBxqzazeM', 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, 1, 1, 0, 1, 0, '2019-10-03 00:47:25', '2022-03-01 05:48:19', 0, NULL, '15,20,30,40,50', '10,15,20,25,30', 0, 0, 0, '5', NULL, NULL, 0, NULL, 0),
(160, 'o1L5621DiS1', 'normal', NULL, 5, 6, NULL, NULL, 'Zain - Digital Agency and Startup HTML Template', 'zain-digital-agency-and-startup-html-template-o1l5621dis1', '1639392363pYiiT6Vy.png', '1639392364Li5C3bEO.jpg', NULL, NULL, NULL, NULL, NULL, 346, 346, 'Donec condimentum\n\n           Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras cursus pretium sapien, in pulvinar ipsum molestie id. Aliquam erat volutpat. Duis quam tellus, ullamcorper at tristique ac, viverra at diam. Donec egestas eu odio tincidunt ultrices. Suspendisse egestas vulputate mauris non commodo. In convallis aliquam vulputate. Quisque varius est ac lorem venenatis lobortis. Fusce a iaculis mi, ut elementum ex. Mauris faucibus enim quis lacinia mollis. Vivamus in volutpat ante. Nullam nec vulputate mi. Fusce tempor cursus odio, nec cursus purus malesuada sit amet.\n           Aliquam ultricies\n\n           Fusce vitae lacinia mauris, eget vehicula augue. Phasellus efficitur felis non ligula dictum, sit amet faucibus nulla sollicitudin. Donec condimentum metus enim, id molestie urna ultrices sed. Nunc rhoncus purus venenatis nulla efficitur, a ultrices elit ornare. Donec vitae congue ante. Sed eleifend ex sit amet odio vestibulum, ac sagittis quam finibus. Ut egestas sit amet urna eu blandit. Duis iaculis ante vitae risus condimentum, vitae laoreet sem dapibus. Aliquam ultricies risus quis sagittis fermentum. Suspendisse interdum magna erat, viverra elementum sem sollicitudin eget\n           Aliquam ultricies\n\n           Fusce vitae lacinia mauris, eget vehicula augue. Phasellus efficitur felis non ligula dictum, sit amet faucibus nulla sollicitudin. Donec condimentum metus enim, id molestie urna ultrices sed. Nunc rhoncus purus venenatis nulla efficitur, a ultrices elit ornare. Donec vitae congue ante. Sed eleifend ex sit amet odio vestibulum, ac sagittis quam finibus. Ut egestas sit amet urna eu blandit. Duis iaculis ante vitae risus condimentum, vitae laoreet sem dapibus. Aliquam ultricies risus quis sagittis fermentum. Suspendisse interdum magna erat, viverra elementum sem sollicitudin eget\n           ', 34, '<h4 class=\"title\" style=\"font-weight: 600; line-height: 1.2381; font-size: 20px; color: rgb(5, 14, 51);\"><div class=\"product-services\" style=\"display: flex; margin-top: 1.5em; color: rgb(118, 118, 120); font-family: Jost, sans-serif; font-size: 16px; font-weight: 400;\"><span style=\"width: 115px; font-weight: 600; padding-right: 0px;\">Services:</span><ul class=\"product-services-list\" style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; list-style-position: initial; list-style-image: initial; flex: 0 0 calc(100% - 115px); line-height: 28px;\"><li class=\"product-service-item\">30 Day Return Policy</li><li class=\"product-service-item\">Cash on Delivery available</li><li class=\"product-service-item\">Free Delivery</li></ul></div><div class=\"woocommerce-product-details__short-description\" style=\"display: flex; margin-top: 1.5em; color: rgb(118, 118, 120); font-family: Jost, sans-serif; font-size: 16px; font-weight: 400;\"><span style=\"width: 115px; font-weight: 600; padding-right: 0px;\">Highlights:</span><div class=\"short-description\" style=\"flex: 0 0 calc(100% - 115px);\"><ul style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; list-style-position: initial; list-style-image: initial; line-height: 28px;\"><li>Regular Fit.</li><li>Full sleeves.</li><li>70% cotton, 30% polyester.</li><li>Easy to wear and versatile as Casual.</li><li>Machine wash, tumble dry.</li></ul></div></div></h4>', 1, 64, NULL, NULL, NULL, 2, '24 hour', 0, NULL, NULL, 'https://www.youtube.com/watch?v=MIJBxqzazeM', 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, 1, 1, 1, 0, 1, '2019-10-03 00:54:14', '2022-10-27 13:01:26', 0, NULL, '15,20,30,40,50', '10,15,20,25,30', 0, 0, 0, '5', NULL, NULL, 0, NULL, 0),
(161, 'D2e6433Yi01', 'normal', NULL, 4, 2, 1, '{\"warranty_type\":{\"values\":[\"Local seller warranty\",\"No warranty\",\"international manufacturer warranty\"],\"prices\":[\"10\",\"15\",\"20\"],\"details_status\":1},\"brand\":{\"values\":[\"Oppo\",\"EStore\",\"Infinix\"],\"prices\":[\"10\",\"15\",\"20\"],\"details_status\":1},\"ram\":{\"values\":[\"2 GB\",\"3 GB\"],\"prices\":[\"0\",\"0\"],\"details_status\":1},\"color_family\":{\"values\":[\"White\",\"Sliver\",\"Red\",\"Dark Grey\"],\"prices\":[\"10\",\"15\",\"20\",\"25\"],\"details_status\":1}}', 'Revel - Real Estate HTML Template', 'revel-real-estate-html-template-d2e6433yi01', '16393784188Gm57Wu2.png', '1639378418BxWim5Uq.jpg', NULL, NULL, NULL, NULL, NULL, 300, 400, 'Donec condimentum\n\n           Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras cursus pretium sapien, in pulvinar ipsum molestie id. Aliquam erat volutpat. Duis quam tellus, ullamcorper at tristique ac, viverra at diam. Donec egestas eu odio tincidunt ultrices. Suspendisse egestas vulputate mauris non commodo. In convallis aliquam vulputate. Quisque varius est ac lorem venenatis lobortis. Fusce a iaculis mi, ut elementum ex. Mauris faucibus enim quis lacinia mollis. Vivamus in volutpat ante. Nullam nec vulputate mi. Fusce tempor cursus odio, nec cursus purus malesuada sit amet.\n           Aliquam ultricies\n\n           Fusce vitae lacinia mauris, eget vehicula augue. Phasellus efficitur felis non ligula dictum, sit amet faucibus nulla sollicitudin. Donec condimentum metus enim, id molestie urna ultrices sed. Nunc rhoncus purus venenatis nulla efficitur, a ultrices elit ornare. Donec vitae congue ante. Sed eleifend ex sit amet odio vestibulum, ac sagittis quam finibus. Ut egestas sit amet urna eu blandit. Duis iaculis ante vitae risus condimentum, vitae laoreet sem dapibus. Aliquam ultricies risus quis sagittis fermentum. Suspendisse interdum magna erat, viverra elementum sem sollicitudin eget\n           Aliquam ultricies\n\n           Fusce vitae lacinia mauris, eget vehicula augue. Phasellus efficitur felis non ligula dictum, sit amet faucibus nulla sollicitudin. Donec condimentum metus enim, id molestie urna ultrices sed. Nunc rhoncus purus venenatis nulla efficitur, a ultrices elit ornare. Donec vitae congue ante. Sed eleifend ex sit amet odio vestibulum, ac sagittis quam finibus. Ut egestas sit amet urna eu blandit. Duis iaculis ante vitae risus condimentum, vitae laoreet sem dapibus. Aliquam ultricies risus quis sagittis fermentum. Suspendisse interdum magna erat, viverra elementum sem sollicitudin eget\n           ', 0, '<h4 class=\"title\" style=\"font-weight: 600; line-height: 1.2381; font-size: 20px; color: rgb(5, 14, 51);\"><div class=\"product-services\" style=\"display: flex; margin-top: 1.5em; color: rgb(118, 118, 120); font-family: Jost, sans-serif; font-size: 16px; font-weight: 400;\"><span style=\"width: 115px; font-weight: 600; padding-right: 0px;\">Services:</span><ul class=\"product-services-list\" style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; list-style-position: initial; list-style-image: initial; flex: 0 0 calc(100% - 115px); line-height: 28px;\"><li class=\"product-service-item\">30 Day Return Policy</li><li class=\"product-service-item\">Cash on Delivery available</li><li class=\"product-service-item\">Free Delivery</li></ul></div><div class=\"woocommerce-product-details__short-description\" style=\"display: flex; margin-top: 1.5em; color: rgb(118, 118, 120); font-family: Jost, sans-serif; font-size: 16px; font-weight: 400;\"><span style=\"width: 115px; font-weight: 600; padding-right: 0px;\">Highlights:</span><div class=\"short-description\" style=\"flex: 0 0 calc(100% - 115px);\"><ul style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; list-style-position: initial; list-style-image: initial; line-height: 28px;\"><li>Regular Fit.</li><li>Full sleeves.</li><li>70% cotton, 30% polyester.</li><li>Easy to wear and versatile as Casual.</li><li>Machine wash, tumble dry.</li></ul></div></div></h4>', 1, 85, NULL, NULL, NULL, 2, '24 hour', 0, NULL, NULL, 'https://www.youtube.com/watch?v=MIJBxqzazeM', 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 0, 1, 1, 1, 0, 0, '2019-10-03 01:07:59', '2022-09-25 21:34:15', 0, NULL, '15,20,30,40,50', '10,15,20,25,30', 0, 0, 0, NULL, '#241c1c,#f52424,#437a0b', NULL, 0, NULL, 0),
(162, 'tOC5844N0t1', 'normal', NULL, 4, 2, 1, '{\"warranty_type\":{\"values\":[\"Local seller warranty\",\"No warranty\",\"international manufacturer warranty\",\"Non-local warranty\"],\"prices\":[\"10\",\"15\",\"20\",\"25\"],\"details_status\":1},\"brand\":{\"values\":[\"Symphony\",\"Oppo\",\"EStore\",\"Infinix\",\"Apple\"],\"prices\":[\"5\",\"10\",\"15\",\"20\",\"25\"],\"details_status\":1},\"color_family\":{\"values\":[\"Black\",\"Sliver\",\"Dark Grey\",\"Brown\"],\"prices\":[\"10\",\"15\",\"20\",\"35\"],\"details_status\":1},\"display_size\":{\"values\":[\"40\",\"22\",\"24\",\"32\",\"21\"],\"prices\":[\"120\",\"10\",\"20\",\"15\",\"60\"],\"details_status\":1}}', 'Zain - Digital Agency and Startup HTML Template', 'zain-digital-agency-and-startup-html-template-toc5844n0t1', '1639378156F9SBl2Yx.png', '1639378156sxEgX2Pk.jpg', NULL, NULL, NULL, NULL, NULL, 400, 450, 'Donec condimentum\n\n           Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras cursus pretium sapien, in pulvinar ipsum molestie id. Aliquam erat volutpat. Duis quam tellus, ullamcorper at tristique ac, viverra at diam. Donec egestas eu odio tincidunt ultrices. Suspendisse egestas vulputate mauris non commodo. In convallis aliquam vulputate. Quisque varius est ac lorem venenatis lobortis. Fusce a iaculis mi, ut elementum ex. Mauris faucibus enim quis lacinia mollis. Vivamus in volutpat ante. Nullam nec vulputate mi. Fusce tempor cursus odio, nec cursus purus malesuada sit amet.\n           Aliquam ultricies\n\n           Fusce vitae lacinia mauris, eget vehicula augue. Phasellus efficitur felis non ligula dictum, sit amet faucibus nulla sollicitudin. Donec condimentum metus enim, id molestie urna ultrices sed. Nunc rhoncus purus venenatis nulla efficitur, a ultrices elit ornare. Donec vitae congue ante. Sed eleifend ex sit amet odio vestibulum, ac sagittis quam finibus. Ut egestas sit amet urna eu blandit. Duis iaculis ante vitae risus condimentum, vitae laoreet sem dapibus. Aliquam ultricies risus quis sagittis fermentum. Suspendisse interdum magna erat, viverra elementum sem sollicitudin eget\n           Aliquam ultricies\n\n           Fusce vitae lacinia mauris, eget vehicula augue. Phasellus efficitur felis non ligula dictum, sit amet faucibus nulla sollicitudin. Donec condimentum metus enim, id molestie urna ultrices sed. Nunc rhoncus purus venenatis nulla efficitur, a ultrices elit ornare. Donec vitae congue ante. Sed eleifend ex sit amet odio vestibulum, ac sagittis quam finibus. Ut egestas sit amet urna eu blandit. Duis iaculis ante vitae risus condimentum, vitae laoreet sem dapibus. Aliquam ultricies risus quis sagittis fermentum. Suspendisse interdum magna erat, viverra elementum sem sollicitudin eget\n           ', 446, '<h4 class=\"title\" style=\"font-weight: 600; line-height: 1.2381; font-size: 20px; color: rgb(5, 14, 51);\"><div class=\"product-services\" style=\"display: flex; margin-top: 1.5em; color: rgb(118, 118, 120); font-family: Jost, sans-serif; font-size: 16px; font-weight: 400;\"><span style=\"width: 115px; font-weight: 600; padding-right: 0px;\">Services:</span><ul class=\"product-services-list\" style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; list-style-position: initial; list-style-image: initial; flex: 0 0 calc(100% - 115px); line-height: 28px;\"><li class=\"product-service-item\">30 Day Return Policy</li><li class=\"product-service-item\">Cash on Delivery available</li><li class=\"product-service-item\">Free Delivery</li></ul></div><div class=\"woocommerce-product-details__short-description\" style=\"display: flex; margin-top: 1.5em; color: rgb(118, 118, 120); font-family: Jost, sans-serif; font-size: 16px; font-weight: 400;\"><span style=\"width: 115px; font-weight: 600; padding-right: 0px;\">Highlights:</span><div class=\"short-description\" style=\"flex: 0 0 calc(100% - 115px);\"><ul style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; list-style-position: initial; list-style-image: initial; line-height: 28px;\"><li>Regular Fit.</li><li>Full sleeves.</li><li>70% cotton, 30% polyester.</li><li>Easy to wear and versatile as Casual.</li><li>Machine wash, tumble dry.</li></ul></div></div></h4>', 1, 392, 'dsf,hgf', 'Test,test1', '#000000,#d14141', 2, '24', 0, NULL, NULL, 'https://www.youtube.com/watch?v=MIJBxqzazeM', 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 1, 1, 1, 0, 1, '2019-10-05 00:11:44', '2022-10-30 02:38:26', 0, NULL, '15,20,30,40,50', '10,15,20,25,30', 0, 0, 0, NULL, '#c71f1f,#000000,#00c236', NULL, 0, NULL, 0),
(163, '1ui8665inp1', 'normal', NULL, 7, NULL, NULL, NULL, 'Zain - Digital Agency and Startup HTML Template', 'zain-digital-agency-and-startup-html-template-1ui8665inp1', '1648014087Du4NpEMJ.png', '16480140873qDlGgIK.jpg', NULL, 'S,S,S,M,M,M,L,L,L,XL,XL,XL', '100,100,100,100,100,100,100,100,100,100,100,100', '1,2,3,1,2,3,1,2,3,1,2,3', '#000000,#f41c1c,#3c34d5,#c12ec8,#007137,#000000,#f41c1c,#3c34d5,#007137,#c12ec8,#f41c1c,#3c34d5', 300, 464, 'Donec condimentum\r\n\r\n           Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras cursus pretium sapien, in pulvinar ipsum molestie id. Aliquam erat volutpat. Duis quam tellus, ullamcorper at tristique ac, viverra at diam. Donec egestas eu odio tincidunt ultrices. Suspendisse egestas vulputate mauris non commodo. In convallis aliquam vulputate. Quisque varius est ac lorem venenatis lobortis. Fusce a iaculis mi, ut elementum ex. Mauris faucibus enim quis lacinia mollis. Vivamus in volutpat ante. Nullam nec vulputate mi. Fusce tempor cursus odio, nec cursus purus malesuada sit amet.\r\n           Aliquam ultricies\r\n\r\n           Fusce vitae lacinia mauris, eget vehicula augue. Phasellus efficitur felis non ligula dictum, sit amet faucibus nulla sollicitudin. Donec condimentum metus enim, id molestie urna ultrices sed. Nunc rhoncus purus venenatis nulla efficitur, a ultrices elit ornare. Donec vitae congue ante. Sed eleifend ex sit amet odio vestibulum, ac sagittis quam finibus. Ut egestas sit amet urna eu blandit. Duis iaculis ante vitae risus condimentum, vitae laoreet sem dapibus. Aliquam ultricies risus quis sagittis fermentum. Suspendisse interdum magna erat, viverra elementum sem sollicitudin eget\r\n           Aliquam ultricies\r\n\r\n           Fusce vitae lacinia mauris, eget vehicula augue. Phasellus efficitur felis non ligula dictum, sit amet faucibus nulla sollicitudin. Donec condimentum metus enim, id molestie urna ultrices sed. Nunc rhoncus purus venenatis nulla efficitur, a ultrices elit ornare. Donec vitae congue ante. Sed eleifend ex sit amet odio vestibulum, ac sagittis quam finibus. Ut egestas sit amet urna eu blandit. Duis iaculis ante vitae risus condimentum, vitae laoreet sem dapibus. Aliquam ultricies risus quis sagittis fermentum. Suspendisse interdum magna erat, viverra elementum sem sollicitudin eget', 734, '<h4 class=\"title\" style=\"font-weight: 600; line-height: 1.2381; font-size: 20px; color: rgb(5, 14, 51);\"><div class=\"product-services\" style=\"display: flex; margin-top: 1.5em; color: rgb(118, 118, 120); font-family: Jost, sans-serif; font-size: 16px; font-weight: 400;\"><span style=\"width: 115px; font-weight: 600; padding-right: 0px;\">Services:</span><ul class=\"product-services-list\" style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; list-style-position: initial; list-style-image: initial; flex: 0 0 calc(100% - 115px); line-height: 28px;\"><li class=\"product-service-item\">30 Day Return Policy</li><li class=\"product-service-item\">Cash on Delivery available</li><li class=\"product-service-item\">Free Delivery</li></ul></div><div class=\"woocommerce-product-details__short-description\" style=\"display: flex; margin-top: 1.5em; color: rgb(118, 118, 120); font-family: Jost, sans-serif; font-size: 16px; font-weight: 400;\"><span style=\"width: 115px; font-weight: 600; padding-right: 0px;\">Highlights:</span><div class=\"short-description\" style=\"flex: 0 0 calc(100% - 115px);\"><ul style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; list-style-position: initial; list-style-image: initial; line-height: 28px;\"><li>Regular Fit.</li><li>Full sleeves.</li><li>70% cotton, 30% polyester.</li><li>Easy to wear and versatile as Casual.</li><li>Machine wash, tumble dry.</li></ul></div></div></h4>', 1, 91, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, 'https://www.youtube.com/watch?v=MIJBxqzazeM', 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, 1, 0, 1, 0, 1, '2019-10-05 00:58:14', '2022-09-27 05:27:04', 1, '2022-06-10', '10,20,30,40', '5,10,15,20', 0, 0, 0, NULL, NULL, NULL, 1, NULL, 0),
(164, 'RXp8737LeV1', 'normal', NULL, 5, 9, NULL, NULL, 'Zain - Digital Agency and Startup HTML Template', 'zain-digital-agency-and-startup-html-template-rxp8737lev1', '1639378035iwML8B6F.png', '1639378035XJWgisPU.jpg', NULL, 'S,S,S,M,M,M,L,L,L,XL,XL,XL,XXL,XXL,XXL', '99,100,100,100,100,100,100,100,100,100,100,100,100,100,100', '1,2,3,1,2,3,1,2,3,1,2,3,1,2,3', '#000000,#f41c1c,#3c34d5,#c12ec8,#007137,#000000,#f41c1c,#3c34d5,#007137,#c12ec8,#f41c1c,#3c34d5,#007137,#000000,#c12ec8', 300, 548, 'Donec condimentum\n\n           Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras cursus pretium sapien, in pulvinar ipsum molestie id. Aliquam erat volutpat. Duis quam tellus, ullamcorper at tristique ac, viverra at diam. Donec egestas eu odio tincidunt ultrices. Suspendisse egestas vulputate mauris non commodo. In convallis aliquam vulputate. Quisque varius est ac lorem venenatis lobortis. Fusce a iaculis mi, ut elementum ex. Mauris faucibus enim quis lacinia mollis. Vivamus in volutpat ante. Nullam nec vulputate mi. Fusce tempor cursus odio, nec cursus purus malesuada sit amet.\n           Aliquam ultricies\n\n           Fusce vitae lacinia mauris, eget vehicula augue. Phasellus efficitur felis non ligula dictum, sit amet faucibus nulla sollicitudin. Donec condimentum metus enim, id molestie urna ultrices sed. Nunc rhoncus purus venenatis nulla efficitur, a ultrices elit ornare. Donec vitae congue ante. Sed eleifend ex sit amet odio vestibulum, ac sagittis quam finibus. Ut egestas sit amet urna eu blandit. Duis iaculis ante vitae risus condimentum, vitae laoreet sem dapibus. Aliquam ultricies risus quis sagittis fermentum. Suspendisse interdum magna erat, viverra elementum sem sollicitudin eget\n           Aliquam ultricies\n\n           Fusce vitae lacinia mauris, eget vehicula augue. Phasellus efficitur felis non ligula dictum, sit amet faucibus nulla sollicitudin. Donec condimentum metus enim, id molestie urna ultrices sed. Nunc rhoncus purus venenatis nulla efficitur, a ultrices elit ornare. Donec vitae congue ante. Sed eleifend ex sit amet odio vestibulum, ac sagittis quam finibus. Ut egestas sit amet urna eu blandit. Duis iaculis ante vitae risus condimentum, vitae laoreet sem dapibus. Aliquam ultricies risus quis sagittis fermentum. Suspendisse interdum magna erat, viverra elementum sem sollicitudin eget\n           ', 4587, '<h4 class=\"title\" style=\"font-weight: 600; line-height: 1.2381; font-size: 20px; color: rgb(5, 14, 51);\"><div class=\"product-services\" style=\"display: flex; margin-top: 1.5em; color: rgb(118, 118, 120); font-family: Jost, sans-serif; font-size: 16px; font-weight: 400;\"><span style=\"width: 115px; font-weight: 600; padding-right: 0px;\">Services:</span><ul class=\"product-services-list\" style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; list-style-position: initial; list-style-image: initial; flex: 0 0 calc(100% - 115px); line-height: 28px;\"><li class=\"product-service-item\">30 Day Return Policy</li><li class=\"product-service-item\">Cash on Delivery available</li><li class=\"product-service-item\">Free Delivery</li></ul></div><div class=\"woocommerce-product-details__short-description\" style=\"display: flex; margin-top: 1.5em; color: rgb(118, 118, 120); font-family: Jost, sans-serif; font-size: 16px; font-weight: 400;\"><span style=\"width: 115px; font-weight: 600; padding-right: 0px;\">Highlights:</span><div class=\"short-description\" style=\"flex: 0 0 calc(100% - 115px);\"><ul style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; list-style-position: initial; list-style-image: initial; line-height: 28px;\"><li>Regular Fit.</li><li>Full sleeves.</li><li>70% cotton, 30% polyester.</li><li>Easy to wear and versatile as Casual.</li><li>Machine wash, tumble dry.</li></ul></div></div></h4>', 1, 227, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, 'https://www.youtube.com/watch?v=MIJBxqzazeM', 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 1, 0, 0, 1, '2019-10-05 00:59:33', '2022-03-24 15:58:27', 1, '2022-04-05', '10,20,30,40', '5,10,15,20', 0, 0, 0, NULL, NULL, NULL, 1, NULL, 0),
(165, 'RXp8737Le1', 'normal', NULL, 16, NULL, NULL, NULL, 'Zain - Digital Agency and Startup HTML Template', 'zain-digital-agency-and-startup-html-template-rxp8737le1', '1648013669fVYfMbbZ.png', '1648013669ZDg86Ncm.jpg', NULL, NULL, NULL, NULL, NULL, 300, 548, 'Donec condimentum\r\n\r\n           Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras cursus pretium sapien, in pulvinar ipsum molestie id. Aliquam erat volutpat. Duis quam tellus, ullamcorper at tristique ac, viverra at diam. Donec egestas eu odio tincidunt ultrices. Suspendisse egestas vulputate mauris non commodo. In convallis aliquam vulputate. Quisque varius est ac lorem venenatis lobortis. Fusce a iaculis mi, ut elementum ex. Mauris faucibus enim quis lacinia mollis. Vivamus in volutpat ante. Nullam nec vulputate mi. Fusce tempor cursus odio, nec cursus purus malesuada sit amet.\r\n           Aliquam ultricies\r\n\r\n           Fusce vitae lacinia mauris, eget vehicula augue. Phasellus efficitur felis non ligula dictum, sit amet faucibus nulla sollicitudin. Donec condimentum metus enim, id molestie urna ultrices sed. Nunc rhoncus purus venenatis nulla efficitur, a ultrices elit ornare. Donec vitae congue ante. Sed eleifend ex sit amet odio vestibulum, ac sagittis quam finibus. Ut egestas sit amet urna eu blandit. Duis iaculis ante vitae risus condimentum, vitae laoreet sem dapibus. Aliquam ultricies risus quis sagittis fermentum. Suspendisse interdum magna erat, viverra elementum sem sollicitudin eget\r\n           Aliquam ultricies\r\n\r\n           Fusce vitae lacinia mauris, eget vehicula augue. Phasellus efficitur felis non ligula dictum, sit amet faucibus nulla sollicitudin. Donec condimentum metus enim, id molestie urna ultrices sed. Nunc rhoncus purus venenatis nulla efficitur, a ultrices elit ornare. Donec vitae congue ante. Sed eleifend ex sit amet odio vestibulum, ac sagittis quam finibus. Ut egestas sit amet urna eu blandit. Duis iaculis ante vitae risus condimentum, vitae laoreet sem dapibus. Aliquam ultricies risus quis sagittis fermentum. Suspendisse interdum magna erat, viverra elementum sem sollicitudin eget', 4586, '<h4 class=\"title\" style=\"font-weight: 600; line-height: 1.2381; font-size: 20px; color: rgb(5, 14, 51);\"><div class=\"product-services\" style=\"display: flex; margin-top: 1.5em; color: rgb(118, 118, 120); font-family: Jost, sans-serif; font-size: 16px; font-weight: 400;\"><span style=\"width: 115px; font-weight: 600; padding-right: 0px;\">Services:</span><ul class=\"product-services-list\" style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; list-style-position: initial; list-style-image: initial; flex: 0 0 calc(100% - 115px); line-height: 28px;\"><li class=\"product-service-item\">30 Day Return Policy</li><li class=\"product-service-item\">Cash on Delivery available</li><li class=\"product-service-item\">Free Delivery</li></ul></div><div class=\"woocommerce-product-details__short-description\" style=\"display: flex; margin-top: 1.5em; color: rgb(118, 118, 120); font-family: Jost, sans-serif; font-size: 16px; font-weight: 400;\"><span style=\"width: 115px; font-weight: 600; padding-right: 0px;\">Highlights:</span><div class=\"short-description\" style=\"flex: 0 0 calc(100% - 115px);\"><ul style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; list-style-position: initial; list-style-image: initial; line-height: 28px;\"><li>Regular Fit.</li><li>Full sleeves.</li><li>70% cotton, 30% polyester.</li><li>Easy to wear and versatile as Casual.</li><li>Machine wash, tumble dry.</li></ul></div></div></h4>', 1, 44, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, 'https://www.youtube.com/watch?v=MIJBxqzazeM', 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 0, 1, 0, 0, 1, 0, '2019-10-05 01:00:19', '2022-09-01 02:51:33', 0, NULL, '10,20,30,40', '5,10,15,20', 1, 0, 0, NULL, NULL, NULL, 0, NULL, 0),
(168, 'tbs53803yh1', 'normal', NULL, 16, NULL, 1, '{\"brand\":{\"values\":[\"G-Shock\",\"Diesel\",\"Longines\",\"Hamilton\",\"Citizen\"],\"prices\":[\"5\",\"5\",\"5\",\"5\",\"5\"],\"details_status\":1},\"warrenty\":{\"values\":[\"Local Sell Warrenty\",\"Manufacture Warrenty\",\"International Warrenty\"],\"prices\":[\"5\",\"5\",\"5\"],\"details_status\":1},\"belt\":{\"values\":[\"Leather\",\"Stainless steel\",\"Rubber\",\"Normal\"],\"prices\":[\"5\",\"5\",\"5\",\"5\"],\"details_status\":1}}', 'Revel - Real Estate Huuu', 'revel-real-estate-huuu-tbs53803yh1', '1648013500i2EEZrBt.png', '1648013500IhrIbnTy.jpg', NULL, NULL, NULL, NULL, NULL, 300, 345, 'Donec condimentum\r\n\r\n           Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras cursus pretium sapien, in pulvinar ipsum molestie id. Aliquam erat volutpat. Duis quam tellus, ullamcorper at tristique ac, viverra at diam. Donec egestas eu odio tincidunt ultrices. Suspendisse egestas vulputate mauris non commodo. In convallis aliquam vulputate. Quisque varius est ac lorem venenatis lobortis. Fusce a iaculis mi, ut elementum ex. Mauris faucibus enim quis lacinia mollis. Vivamus in volutpat ante. Nullam nec vulputate mi. Fusce tempor cursus odio, nec cursus purus malesuada sit amet.\r\n           Aliquam ultricies\r\n\r\n           Fusce vitae lacinia mauris, eget vehicula augue. Phasellus efficitur felis non ligula dictum, sit amet faucibus nulla sollicitudin. Donec condimentum metus enim, id molestie urna ultrices sed. Nunc rhoncus purus venenatis nulla efficitur, a ultrices elit ornare. Donec vitae congue ante. Sed eleifend ex sit amet odio vestibulum, ac sagittis quam finibus. Ut egestas sit amet urna eu blandit. Duis iaculis ante vitae risus condimentum, vitae laoreet sem dapibus. Aliquam ultricies risus quis sagittis fermentum. Suspendisse interdum magna erat, viverra elementum sem sollicitudin eget\r\n           Aliquam ultricies\r\n\r\n           Fusce vitae lacinia mauris, eget vehicula augue. Phasellus efficitur felis non ligula dictum, sit amet faucibus nulla sollicitudin. Donec condimentum metus enim, id molestie urna ultrices sed. Nunc rhoncus purus venenatis nulla efficitur, a ultrices elit ornare. Donec vitae congue ante. Sed eleifend ex sit amet odio vestibulum, ac sagittis quam finibus. Ut egestas sit amet urna eu blandit. Duis iaculis ante vitae risus condimentum, vitae laoreet sem dapibus. Aliquam ultricies risus quis sagittis fermentum. Suspendisse interdum magna erat, viverra elementum sem sollicitudin eget', 6345, '<h4 class=\"title\" style=\"font-weight: 600; line-height: 1.2381; font-size: 20px; color: rgb(5, 14, 51);\"><div class=\"product-services\" style=\"display: flex; margin-top: 1.5em; color: rgb(118, 118, 120); font-family: Jost, sans-serif; font-size: 16px; font-weight: 400;\"><span style=\"width: 115px; font-weight: 600; padding-right: 0px;\">Services:</span><ul class=\"product-services-list\" style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; list-style-position: initial; list-style-image: initial; flex: 0 0 calc(100% - 115px); line-height: 28px;\"><li class=\"product-service-item\">30 Day Return Policy</li><li class=\"product-service-item\">Cash on Delivery available</li><li class=\"product-service-item\">Free Delivery</li></ul></div><div class=\"woocommerce-product-details__short-description\" style=\"display: flex; margin-top: 1.5em; color: rgb(118, 118, 120); font-family: Jost, sans-serif; font-size: 16px; font-weight: 400;\"><span style=\"width: 115px; font-weight: 600; padding-right: 0px;\">Highlights:</span><div class=\"short-description\" style=\"flex: 0 0 calc(100% - 115px);\"><ul style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; list-style-position: initial; list-style-image: initial; line-height: 28px;\"><li>Regular Fit.</li><li>Full sleeves.</li><li>70% cotton, 30% polyester.</li><li>Easy to wear and versatile as Casual.</li><li>Machine wash, tumble dry.</li></ul></div></div></h4>', 1, 76, NULL, NULL, NULL, 0, '5-10 days', 0, NULL, NULL, 'https://www.youtube.com/watch?v=MIJBxqzazeM', 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 1, 1, 0, 0, 1, '2019-10-12 04:17:25', '2022-03-24 15:58:05', 0, NULL, '10,20,30,40', '5,10,15,20', 0, 0, 0, NULL, '#f10e0e,#3e5ee7,#139d1c', NULL, 0, NULL, 0),
(169, 'TRg5938WNy1', 'normal', NULL, 5, 6, NULL, '{\"warranty_type\":{\"values\":[\"No Warranty\",\"Local seller Warranty\",\"Non local warranty\",\"International Manufacturer Warranty\",\"International Seller Warranty\"],\"prices\":[\"0\",\"5\",\"0\",\"5\",\"5\"],\"details_status\":1}}', 'Top Rated product title will be here according to your wish 123', 'top-rated-product-title-will-be-here-according-to-your-wish-123-trg5938wny1', '1639377739mqNT2g2x.png', '1639377739Zf2W38p8.jpg', NULL, NULL, NULL, NULL, NULL, 100, 500, 'Donec condimentum\r\n\r\n           Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras cursus pretium sapien, in pulvinar ipsum molestie id. Aliquam erat volutpat. Duis quam tellus, ullamcorper at tristique ac, viverra at diam. Donec egestas eu odio tincidunt ultrices. Suspendisse egestas vulputate mauris non commodo. In convallis aliquam vulputate. Quisque varius est ac lorem venenatis lobortis. Fusce a iaculis mi, ut elementum ex. Mauris faucibus enim quis lacinia mollis. Vivamus in volutpat ante. Nullam nec vulputate mi. Fusce tempor cursus odio, nec cursus purus malesuada sit amet.\r\n           Aliquam ultricies\r\n\r\n           Fusce vitae lacinia mauris, eget vehicula augue. Phasellus efficitur felis non ligula dictum, sit amet faucibus nulla sollicitudin. Donec condimentum metus enim, id molestie urna ultrices sed. Nunc rhoncus purus venenatis nulla efficitur, a ultrices elit ornare. Donec vitae congue ante. Sed eleifend ex sit amet odio vestibulum, ac sagittis quam finibus. Ut egestas sit amet urna eu blandit. Duis iaculis ante vitae risus condimentum, vitae laoreet sem dapibus. Aliquam ultricies risus quis sagittis fermentum. Suspendisse interdum magna erat, viverra elementum sem sollicitudin eget\r\n           Aliquam ultricies\r\n\r\n           Fusce vitae lacinia mauris, eget vehicula augue. Phasellus efficitur felis non ligula dictum, sit amet faucibus nulla sollicitudin. Donec condimentum metus enim, id molestie urna ultrices sed. Nunc rhoncus purus venenatis nulla efficitur, a ultrices elit ornare. Donec vitae congue ante. Sed eleifend ex sit amet odio vestibulum, ac sagittis quam finibus. Ut egestas sit amet urna eu blandit. Duis iaculis ante vitae risus condimentum, vitae laoreet sem dapibus. Aliquam ultricies risus quis sagittis fermentum. Suspendisse interdum magna erat, viverra elementum sem sollicitudin eget', NULL, '<h4 class=\"title\" style=\"font-weight: 600; line-height: 1.2381; font-size: 20px; color: rgb(5, 14, 51);\"><div class=\"product-services\" style=\"display: flex; margin-top: 1.5em; color: rgb(118, 118, 120); font-family: Jost, sans-serif; font-size: 16px; font-weight: 400;\"><span style=\"width: 115px; font-weight: 600; padding-right: 0px;\">Services:</span><ul class=\"product-services-list\" style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; list-style-position: initial; list-style-image: initial; flex: 0 0 calc(100% - 115px); line-height: 28px;\"><li class=\"product-service-item\">30 Day Return Policy</li><li class=\"product-service-item\">Cash on Delivery available</li><li class=\"product-service-item\">Free Delivery</li></ul></div><div class=\"woocommerce-product-details__short-description\" style=\"display: flex; margin-top: 1.5em; color: rgb(118, 118, 120); font-family: Jost, sans-serif; font-size: 16px; font-weight: 400;\"><span style=\"width: 115px; font-weight: 600; padding-right: 0px;\">Highlights:</span><div class=\"short-description\" style=\"flex: 0 0 calc(100% - 115px);\"><ul style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; list-style-position: initial; list-style-image: initial; line-height: 28px;\"><li>Regular Fit.</li><li>Full sleeves.</li><li>70% cotton, 30% polyester.</li><li>Easy to wear and versatile as Casual.</li><li>Machine wash, tumble dry.</li></ul></div></div></h4>', 1, 76, 'fashion', NULL, NULL, 2, '5-7 days', 0, 'fashion', 'Fashion meta tag from Demo store.', 'https://www.youtube.com/watch?v=HxNydN5tScI', 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, 1, 0, 0, 1, 0, '2019-10-12 04:26:18', '2022-10-30 04:11:10', 0, NULL, '10,20,30,40', '5,10,15,20', 0, 123, 0, NULL, NULL, '44,42,40', 0, NULL, 0);
INSERT INTO `products` (`id`, `sku`, `product_type`, `affiliate_link`, `category_id`, `subcategory_id`, `childcategory_id`, `attributes`, `name`, `slug`, `photo`, `thumbnail`, `file`, `size`, `size_qty`, `size_price`, `color`, `price`, `previous_price`, `details`, `stock`, `policy`, `status`, `views`, `tags`, `features`, `colors`, `product_condition`, `ship`, `is_meta`, `meta_tag`, `meta_description`, `youtube`, `type`, `license`, `license_qty`, `link`, `platform`, `region`, `licence_type`, `measure`, `featured`, `best`, `top`, `hot`, `latest`, `big`, `trending`, `sale`, `created_at`, `updated_at`, `is_discount`, `discount_date`, `whole_sell_qty`, `whole_sell_discount`, `is_catalog`, `catalog_id`, `preordered`, `minimum_qty`, `color_all`, `size_all`, `stock_check`, `cross_products`, `user_id`) VALUES
(170, '6Vb6172gWR1', 'normal', NULL, 5, 6, NULL, NULL, 'Top Rated product title will be here according to your wish 123', 'top-rated-product-title-will-be-here-according-to-your-wish-123-6vb6172gwr1', '16480134488OmlUgJN.png', '1648013448fKLXa8ZZ.jpg', NULL, NULL, NULL, NULL, NULL, 100, 500, 'Donec condimentum\r\n\r\n           Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras cursus pretium sapien, in pulvinar ipsum molestie id. Aliquam erat volutpat. Duis quam tellus, ullamcorper at tristique ac, viverra at diam. Donec egestas eu odio tincidunt ultrices. Suspendisse egestas vulputate mauris non commodo. In convallis aliquam vulputate. Quisque varius est ac lorem venenatis lobortis. Fusce a iaculis mi, ut elementum ex. Mauris faucibus enim quis lacinia mollis. Vivamus in volutpat ante. Nullam nec vulputate mi. Fusce tempor cursus odio, nec cursus purus malesuada sit amet.\r\n           Aliquam ultricies\r\n\r\n           Fusce vitae lacinia mauris, eget vehicula augue. Phasellus efficitur felis non ligula dictum, sit amet faucibus nulla sollicitudin. Donec condimentum metus enim, id molestie urna ultrices sed. Nunc rhoncus purus venenatis nulla efficitur, a ultrices elit ornare. Donec vitae congue ante. Sed eleifend ex sit amet odio vestibulum, ac sagittis quam finibus. Ut egestas sit amet urna eu blandit. Duis iaculis ante vitae risus condimentum, vitae laoreet sem dapibus. Aliquam ultricies risus quis sagittis fermentum. Suspendisse interdum magna erat, viverra elementum sem sollicitudin eget\r\n           Aliquam ultricies\r\n\r\n           Fusce vitae lacinia mauris, eget vehicula augue. Phasellus efficitur felis non ligula dictum, sit amet faucibus nulla sollicitudin. Donec condimentum metus enim, id molestie urna ultrices sed. Nunc rhoncus purus venenatis nulla efficitur, a ultrices elit ornare. Donec vitae congue ante. Sed eleifend ex sit amet odio vestibulum, ac sagittis quam finibus. Ut egestas sit amet urna eu blandit. Duis iaculis ante vitae risus condimentum, vitae laoreet sem dapibus. Aliquam ultricies risus quis sagittis fermentum. Suspendisse interdum magna erat, viverra elementum sem sollicitudin eget', NULL, '<h4 class=\"title\" style=\"font-weight: 600; line-height: 1.2381; font-size: 20px; color: rgb(5, 14, 51);\"><div class=\"product-services\" style=\"display: flex; margin-top: 1.5em; color: rgb(118, 118, 120); font-family: Jost, sans-serif; font-size: 16px; font-weight: 400;\"><span style=\"width: 115px; font-weight: 600; padding-right: 0px;\">Services:</span><ul class=\"product-services-list\" style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; list-style-position: initial; list-style-image: initial; flex: 0 0 calc(100% - 115px); line-height: 28px;\"><li class=\"product-service-item\">30 Day Return Policy</li><li class=\"product-service-item\">Cash on Delivery available</li><li class=\"product-service-item\">Free Delivery</li></ul></div><div class=\"woocommerce-product-details__short-description\" style=\"display: flex; margin-top: 1.5em; color: rgb(118, 118, 120); font-family: Jost, sans-serif; font-size: 16px; font-weight: 400;\"><span style=\"width: 115px; font-weight: 600; padding-right: 0px;\">Highlights:</span><div class=\"short-description\" style=\"flex: 0 0 calc(100% - 115px);\"><ul style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; list-style-position: initial; list-style-image: initial; line-height: 28px;\"><li>Regular Fit.</li><li>Full sleeves.</li><li>70% cotton, 30% polyester.</li><li>Easy to wear and versatile as Casual.</li><li>Machine wash, tumble dry.</li></ul></div></div></h4>', 1, 138, 'fashion', NULL, NULL, 2, '5-7 days', 0, 'fashion', 'Fashion meta tag from Demo store.', 'https://www.youtube.com/watch?v=HxNydN5tScI', 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 1, 0, 1, 0, 0, 1, '2019-10-12 04:29:55', '2022-09-25 21:34:50', 1, '2022-03-17', '10,20,30,40', '5,10,15,20', 0, 123, 0, NULL, NULL, NULL, 0, NULL, 0),
(175, '9gn6494iUN1', 'normal', NULL, 5, 7, NULL, '{\"warranty_type\":{\"values\":[\"Local seller Warranty\",\"International Manufacturer Warranty\"],\"prices\":[\"5\",\"5\"],\"details_status\":1}}', 'Physical Product Title Title will Be Here 102', 'physical-product-title-title-will-be-here-102-9gn6494iun1', '1648013375aGqS3Zgd.png', '1648013376Q0pmYfnP.jpg', NULL, NULL, NULL, NULL, NULL, 100, 200, 'Donec condimentum\r\n\r\n           Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras cursus pretium sapien, in pulvinar ipsum molestie id. Aliquam erat volutpat. Duis quam tellus, ullamcorper at tristique ac, viverra at diam. Donec egestas eu odio tincidunt ultrices. Suspendisse egestas vulputate mauris non commodo. In convallis aliquam vulputate. Quisque varius est ac lorem venenatis lobortis. Fusce a iaculis mi, ut elementum ex. Mauris faucibus enim quis lacinia mollis. Vivamus in volutpat ante. Nullam nec vulputate mi. Fusce tempor cursus odio, nec cursus purus malesuada sit amet.\r\n           Aliquam ultricies\r\n\r\n           Fusce vitae lacinia mauris, eget vehicula augue. Phasellus efficitur felis non ligula dictum, sit amet faucibus nulla sollicitudin. Donec condimentum metus enim, id molestie urna ultrices sed. Nunc rhoncus purus venenatis nulla efficitur, a ultrices elit ornare. Donec vitae congue ante. Sed eleifend ex sit amet odio vestibulum, ac sagittis quam finibus. Ut egestas sit amet urna eu blandit. Duis iaculis ante vitae risus condimentum, vitae laoreet sem dapibus. Aliquam ultricies risus quis sagittis fermentum. Suspendisse interdum magna erat, viverra elementum sem sollicitudin eget\r\n           Aliquam ultricies\r\n\r\n           Fusce vitae lacinia mauris, eget vehicula augue. Phasellus efficitur felis non ligula dictum, sit amet faucibus nulla sollicitudin. Donec condimentum metus enim, id molestie urna ultrices sed. Nunc rhoncus purus venenatis nulla efficitur, a ultrices elit ornare. Donec vitae congue ante. Sed eleifend ex sit amet odio vestibulum, ac sagittis quam finibus. Ut egestas sit amet urna eu blandit. Duis iaculis ante vitae risus condimentum, vitae laoreet sem dapibus. Aliquam ultricies risus quis sagittis fermentum. Suspendisse interdum magna erat, viverra elementum sem sollicitudin eget', NULL, '<h4 class=\"title\" style=\"font-weight: 600; line-height: 1.2381; font-size: 20px; color: rgb(5, 14, 51);\"><div class=\"product-services\" style=\"display: flex; margin-top: 1.5em; color: rgb(118, 118, 120); font-family: Jost, sans-serif; font-size: 16px; font-weight: 400;\"><span style=\"width: 115px; font-weight: 600; padding-right: 0px;\">Services:</span><ul class=\"product-services-list\" style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; list-style-position: initial; list-style-image: initial; flex: 0 0 calc(100% - 115px); line-height: 28px;\"><li class=\"product-service-item\">30 Day Return Policy</li><li class=\"product-service-item\">Cash on Delivery available</li><li class=\"product-service-item\">Free Delivery</li></ul></div><div class=\"woocommerce-product-details__short-description\" style=\"display: flex; margin-top: 1.5em; color: rgb(118, 118, 120); font-family: Jost, sans-serif; font-size: 16px; font-weight: 400;\"><span style=\"width: 115px; font-weight: 600; padding-right: 0px;\">Highlights:</span><div class=\"short-description\" style=\"flex: 0 0 calc(100% - 115px);\"><ul style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; list-style-position: initial; list-style-image: initial; line-height: 28px;\"><li>Regular Fit.</li><li>Full sleeves.</li><li>70% cotton, 30% polyester.</li><li>Easy to wear and versatile as Casual.</li><li>Machine wash, tumble dry.</li></ul></div></div></h4>', 1, 322, 'clothing,bag', NULL, NULL, 2, '5-7 days', 0, 'clothing,bag', 'clothing, bag', 'https://www.youtube.com/watch?v=HxNydN5tScI', 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 1, 1, 0, 0, 1, '2019-10-12 04:35:03', '2023-05-28 03:08:32', 1, '2022-03-17', '10,20,30,40', '5,10,15,20', 0, 102, 0, NULL, '#14de0d,#000000,#f20c0c,#17eab7', NULL, 0, NULL, 0),
(178, 'Tcv6794KXS1', 'normal', NULL, 5, 7, NULL, NULL, 'Physical Product Title Title will Be Here 99', 'physical-product-title-title-will-be-here-99-tcv6794kxs1', '1639377187LerG6ypK.png', '1639377189b67fhAxf.jpg', NULL, NULL, NULL, NULL, NULL, 100, 200, 'Donec condimentum\r\n\r\n           Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras cursus pretium sapien, in pulvinar ipsum molestie id. Aliquam erat volutpat. Duis quam tellus, ullamcorper at tristique ac, viverra at diam. Donec egestas eu odio tincidunt ultrices. Suspendisse egestas vulputate mauris non commodo. In convallis aliquam vulputate. Quisque varius est ac lorem venenatis lobortis. Fusce a iaculis mi, ut elementum ex. Mauris faucibus enim quis lacinia mollis. Vivamus in volutpat ante. Nullam nec vulputate mi. Fusce tempor cursus odio, nec cursus purus malesuada sit amet.\r\n           Aliquam ultricies\r\n\r\n           Fusce vitae lacinia mauris, eget vehicula augue. Phasellus efficitur felis non ligula dictum, sit amet faucibus nulla sollicitudin. Donec condimentum metus enim, id molestie urna ultrices sed. Nunc rhoncus purus venenatis nulla efficitur, a ultrices elit ornare. Donec vitae congue ante. Sed eleifend ex sit amet odio vestibulum, ac sagittis quam finibus. Ut egestas sit amet urna eu blandit. Duis iaculis ante vitae risus condimentum, vitae laoreet sem dapibus. Aliquam ultricies risus quis sagittis fermentum. Suspendisse interdum magna erat, viverra elementum sem sollicitudin eget\r\n           Aliquam ultricies\r\n\r\n           Fusce vitae lacinia mauris, eget vehicula augue. Phasellus efficitur felis non ligula dictum, sit amet faucibus nulla sollicitudin. Donec condimentum metus enim, id molestie urna ultrices sed. Nunc rhoncus purus venenatis nulla efficitur, a ultrices elit ornare. Donec vitae congue ante. Sed eleifend ex sit amet odio vestibulum, ac sagittis quam finibus. Ut egestas sit amet urna eu blandit. Duis iaculis ante vitae risus condimentum, vitae laoreet sem dapibus. Aliquam ultricies risus quis sagittis fermentum. Suspendisse interdum magna erat, viverra elementum sem sollicitudin eget', NULL, '<h4 class=\"title\" style=\"font-weight: 600; line-height: 1.2381; font-size: 20px; color: rgb(5, 14, 51);\"><div class=\"product-services\" style=\"display: flex; margin-top: 1.5em; color: rgb(118, 118, 120); font-family: Jost, sans-serif; font-size: 16px; font-weight: 400;\"><span style=\"width: 115px; font-weight: 600; padding-right: 0px;\">Services:</span><ul class=\"product-services-list\" style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; list-style-position: initial; list-style-image: initial; flex: 0 0 calc(100% - 115px); line-height: 28px;\"><li class=\"product-service-item\">30 Day Return Policy</li><li class=\"product-service-item\">Cash on Delivery available</li><li class=\"product-service-item\">Free Delivery</li></ul></div><div class=\"woocommerce-product-details__short-description\" style=\"display: flex; margin-top: 1.5em; color: rgb(118, 118, 120); font-family: Jost, sans-serif; font-size: 16px; font-weight: 400;\"><span style=\"width: 115px; font-weight: 600; padding-right: 0px;\">Highlights:</span><div class=\"short-description\" style=\"flex: 0 0 calc(100% - 115px);\"><ul style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; list-style-position: initial; list-style-image: initial; line-height: 28px;\"><li>Regular Fit.</li><li>Full sleeves.</li><li>70% cotton, 30% polyester.</li><li>Easy to wear and versatile as Casual.</li><li>Machine wash, tumble dry.</li></ul></div></div></h4>', 1, 443, 'clothing,bag', NULL, NULL, 2, '5-7 days', 0, 'clothing,bag', 'clothing, bag', 'https://www.youtube.com/watch?v=HxNydN5tScI', 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 1, 0, 0, 0, 0, '2019-10-12 04:40:20', '2023-05-28 02:54:28', 0, NULL, '10,20,30,40', '5,10,15,20', 0, 99, 0, NULL, NULL, NULL, 0, '159,169', 0),
(381, 'aVD6449eYs', 'normal', NULL, 4, 2, 1, NULL, 'Listing Product', 'listing-product-c4s381mw1', '1663666696iKb9VO8f.png', '1663666696qZIjBLj7.jpg', NULL, NULL, NULL, NULL, NULL, 5, 5, '<h4 class=\"heading\" style=\"margin-bottom: 5px; font-weight: 600; line-height: 30px; font-size: 20px; color: rgb(44, 48, 77); width: 1563px; background-color: rgb(242, 243, 248);\">Listing Product&nbsp;</h4>', 5, '<h4 class=\"heading\" style=\"margin-bottom: 5px; font-weight: 600; line-height: 30px; font-size: 20px; color: rgb(44, 48, 77); width: 1563px; background-color: rgb(242, 243, 248);\">Listing Product&nbsp;</h4>', 1, 8, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Listing', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2022-09-20 03:38:16', '2022-09-27 22:33:56', 0, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, 0, NULL, 0),
(384, 'b6r8457qbn3', 'normal', NULL, 5, 8, NULL, NULL, 'Physical Product Title will be here', 'physical-product-title-will-be-here-b6r8457qbn3', '1675053315Z9yfuKPk.png', '16750533159Lyq1YHG.jpg', NULL, NULL, NULL, NULL, NULL, 34, 0, '<span style=\"color: rgb(77, 81, 86); font-family: arial, sans-serif;\">In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available.</span><br>', 4, '<span style=\"color: rgb(77, 81, 86); font-family: arial, sans-serif;\">In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available.</span><br>', 1, 12, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, 'https://www.youtube.com/watch?v=g6fnFALEseI', 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 1, 1, 1, 0, '2022-10-30 02:31:25', '2023-05-28 03:03:09', 0, NULL, NULL, NULL, 1, 0, 0, NULL, NULL, NULL, 0, '144,161,381,382', 0),
(385, NULL, 'normal', NULL, 4, NULL, NULL, NULL, 'Physical Product Title will be here', 'physical-product-title-will-be-here-', '1675053446iCxPWgtT.png', '1675053446NhRxJoVo.jpg', NULL, NULL, NULL, NULL, NULL, 45, 543, '<span style=\"color: rgb(77, 81, 86); font-family: arial, sans-serif;\">In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available.</span><br>', NULL, '<span style=\"color: rgb(77, 81, 86); font-family: arial, sans-serif;\">In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available.</span><br>', 1, 13, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Digital', NULL, NULL, 'http://localhost/new-work/new-update-onlinestore/user/login', NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2022-10-30 04:58:19', '2023-05-28 02:52:51', 0, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, 1, '159,160,164', 0);

-- --------------------------------------------------------

--
-- Table structure for table `product_clicks`
--

CREATE TABLE `product_clicks` (
  `id` int(191) NOT NULL,
  `product_id` int(191) NOT NULL,
  `date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `product_clicks`
--

INSERT INTO `product_clicks` (`id`, `product_id`, `date`) VALUES
(1, 385, '2023-05-28'),
(2, 385, '2023-05-28'),
(3, 385, '2023-05-28'),
(4, 385, '2023-05-28'),
(5, 385, '2023-05-28'),
(6, 385, '2023-05-28'),
(7, 385, '2023-05-28'),
(8, 385, '2023-05-28'),
(9, 385, '2023-05-28'),
(10, 178, '2023-05-28'),
(11, 175, '2023-05-28');

-- --------------------------------------------------------

--
-- Table structure for table `ratings`
--

CREATE TABLE `ratings` (
  `id` int(191) NOT NULL,
  `user_id` int(191) NOT NULL,
  `product_id` int(191) NOT NULL,
  `review` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rating` tinyint(2) NOT NULL,
  `review_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `ratings`
--

INSERT INTO `ratings` (`id`, `user_id`, `product_id`, `review`, `rating`, `review_date`) VALUES
(13, 22, 162, 'Nice', 5, '2022-09-05 05:23:47');

-- --------------------------------------------------------

--
-- Table structure for table `replies`
--

CREATE TABLE `replies` (
  `id` int(11) NOT NULL,
  `user_id` int(191) UNSIGNED NOT NULL,
  `comment_id` int(191) UNSIGNED NOT NULL,
  `text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `replies`
--

INSERT INTO `replies` (`id`, `user_id`, `comment_id`, `text`, `created_at`, `updated_at`) VALUES
(32, 22, 26, 'Nice one', '2021-12-23 21:49:00', '2021-12-23 21:49:00');

-- --------------------------------------------------------

--
-- Table structure for table `reports`
--

CREATE TABLE `reports` (
  `id` int(191) NOT NULL,
  `user_id` int(191) NOT NULL,
  `product_id` int(192) NOT NULL,
  `title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` int(10) UNSIGNED NOT NULL,
  `photo` varchar(191) DEFAULT NULL,
  `title` varchar(191) DEFAULT NULL,
  `subtitle` text DEFAULT NULL,
  `details` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `photo`, `title`, `subtitle`, `details`) VALUES
(4, '1557343012img.jpg', 'Jhon Smith', 'CEO & Founder', 'Lorem ipsum dolor sit amet, consectetur elitad adipiscing Cras non placerat mi.'),
(5, '1557343018img.jpg', 'Jhon Smith', 'CEO & Founder', 'Lorem ipsum dolor sit amet, consectetur elitad adipiscing Cras non placerat mi.'),
(6, '1557343024img.jpg', 'Jhon Smith', 'CEO & Founder', 'Lorem ipsum dolor sit amet, consectetur elitad adipiscing Cras non placerat mi.');

-- --------------------------------------------------------

--
-- Table structure for table `rewards`
--

CREATE TABLE `rewards` (
  `id` bigint(20) NOT NULL,
  `order_amount` double NOT NULL DEFAULT 0,
  `reward` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `rewards`
--

INSERT INTO `rewards` (`id`, `order_amount`, `reward`) VALUES
(13, 200, 15),
(14, 300, 20);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(191) NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `section` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `section`) VALUES
(16, 'Manager', 'orders , categories , products , affilate_products , bulk_product_upload , product_discussion , set_coupons , customers , customer_deposits , vendors , vendor_subscriptions , vendor_verifications , vendor_subscription_plans , messages , general_settings , home_page_settings , menu_page_settings , payment_settings , social_settings , language_settings , seo_tools , subscribers'),
(17, 'Moderator', 'orders , products , customers , vendors , categories , blog , messages , home_page_settings , payment_settings , social_settings , language_settings , seo_tools , subscribers'),
(18, 'Staff', 'orders , products , vendors , vendor_subscription_plans , categories , blog , home_page_settings , menu_page_settings , language_settings , seo_tools , subscribers');

-- --------------------------------------------------------

--
-- Table structure for table `seotools`
--

CREATE TABLE `seotools` (
  `id` int(10) UNSIGNED NOT NULL,
  `google_analytics` text DEFAULT NULL,
  `facebook_pixel` text DEFAULT NULL,
  `meta_keys` text DEFAULT NULL,
  `meta_description` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `seotools`
--

INSERT INTO `seotools` (`id`, `google_analytics`, `facebook_pixel`, `meta_keys`, `meta_description`) VALUES
(1, 'UA-137437974-1', 'UA-137437974-1', 'Genius,Ocean,Sea,Etc,SeaGenius', 'dsjhdeykfuyoty');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` int(191) NOT NULL,
  `user_id` int(191) NOT NULL DEFAULT 0,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `user_id`, `title`, `details`, `photo`) VALUES
(10, 0, 'Manage Quality', 'Best Quality Gaurentee', '1667473770badgepng.png'),
(11, 0, 'Win $100 To Shop', 'Enter Now', '1667473742carts1png.png'),
(12, 0, 'Best Online Support', 'Hour: 10:00AM - 5:00PM', '1667473728customer-service-agentpng.png'),
(13, 0, 'Money Gurantee', 'With A 30 Days', '1667473683money-bagpng.png');

-- --------------------------------------------------------

--
-- Table structure for table `shippings`
--

CREATE TABLE `shippings` (
  `id` int(11) NOT NULL,
  `user_id` int(191) NOT NULL DEFAULT 0,
  `title` text DEFAULT NULL,
  `subtitle` text DEFAULT NULL,
  `price` double NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `shippings`
--

INSERT INTO `shippings` (`id`, `user_id`, `title`, `subtitle`, `price`) VALUES
(1, 0, 'Free Shipping', '(10 - 12 days)', 0),
(2, 0, 'Express Shipping', '(5 - 6 days)', 10),
(5, 22, 'EMS', '8-15 Days', 26);

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` int(191) UNSIGNED NOT NULL,
  `subtitle_text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subtitle_size` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subtitle_color` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subtitle_anime` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_size` varchar(50) DEFAULT NULL,
  `title_color` varchar(50) DEFAULT NULL,
  `title_anime` varchar(50) DEFAULT NULL,
  `details_text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details_size` varchar(50) DEFAULT NULL,
  `details_color` varchar(50) DEFAULT NULL,
  `details_anime` varchar(50) DEFAULT NULL,
  `photo` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `subtitle_text`, `subtitle_size`, `subtitle_color`, `subtitle_anime`, `title_text`, `title_size`, `title_color`, `title_anime`, `details_text`, `details_size`, `details_color`, `details_anime`, `photo`, `position`, `link`) VALUES
(8, 'Best Accessories', '24', '#1f224f', 'slideInUp', 'Get Up to 40% Off', '60', '#1f224f', 'slideInDown', 'Gadget for everyday to make your life more interesting and easier even smarter.', '16', '#1f224f', 'slideInLeft', '16474305667png.png', 'left', 'https://codecanyon.net/user/geniusocean/portfolio'),
(9, 'Fresh Foods', '24', '#1f224f', 'slideInUp', 'Get Up to 40% Off', '60', '#1f224f', 'slideInDown', 'Buy the best Organic Food for your Healthy Future and Family.', '16', '#1f224f', 'slideInDown', '164743050917png.png', 'left', 'https://codecanyon.net/user/geniusocean/portfolio'),
(10, 'Best Furniture', '24', '#1f224f', 'slideInUp', 'Get Up to 40% Off', '60', '#1f224f', 'slideInDown', 'Furniture must have personality, as well as be beautiful and make your home Gorgeous.', '16', '#1f224f', 'slideInRight', '164743055618png.png', 'left', 'https://codecanyon.net/user/geniusocean/portfolio');

-- --------------------------------------------------------

--
-- Table structure for table `socialsettings`
--

CREATE TABLE `socialsettings` (
  `id` int(10) UNSIGNED NOT NULL,
  `facebook` varchar(191) NOT NULL,
  `gplus` varchar(191) NOT NULL,
  `twitter` varchar(191) NOT NULL,
  `linkedin` varchar(191) NOT NULL,
  `dribble` varchar(191) DEFAULT NULL,
  `f_status` tinyint(4) NOT NULL DEFAULT 1,
  `g_status` tinyint(4) NOT NULL DEFAULT 1,
  `t_status` tinyint(4) NOT NULL DEFAULT 1,
  `l_status` tinyint(4) NOT NULL DEFAULT 1,
  `d_status` tinyint(4) NOT NULL DEFAULT 1,
  `f_check` tinyint(10) DEFAULT NULL,
  `g_check` tinyint(10) DEFAULT NULL,
  `fclient_id` text DEFAULT NULL,
  `fclient_secret` text DEFAULT NULL,
  `fredirect` text DEFAULT NULL,
  `gclient_id` text DEFAULT NULL,
  `gclient_secret` text DEFAULT NULL,
  `gredirect` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `socialsettings`
--

INSERT INTO `socialsettings` (`id`, `facebook`, `gplus`, `twitter`, `linkedin`, `dribble`, `f_status`, `g_status`, `t_status`, `l_status`, `d_status`, `f_check`, `g_check`, `fclient_id`, `fclient_secret`, `fredirect`, `gclient_id`, `gclient_secret`, `gredirect`) VALUES
(1, 'https://www.facebook.com/', 'https://plus.google.com/', 'https://twitter.com/', 'https://www.linkedin.com/', 'https://dribbble.com/', 1, 1, 1, 1, 1, 1, 1, '503140663460329', 'f66cd670ec43d14209a2728af26dcc43', 'https://dev.geniusocean.net/xcart/auth/facebook/callback', '904681031719-sh1aolu42k7l93ik0bkiddcboghbpcfi.apps.googleusercontent.com', 'yGBWmUpPtn5yWhDAsXnswEX3', 'https://dev.geniusocean.net/xcart/auth/google/callback');

-- --------------------------------------------------------

--
-- Table structure for table `social_links`
--

CREATE TABLE `social_links` (
  `id` int(191) NOT NULL,
  `user_id` int(191) NOT NULL DEFAULT 0,
  `link` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `social_links`
--

INSERT INTO `social_links` (`id`, `user_id`, `link`, `icon`, `status`) VALUES
(1, 0, 'https://www.facebook.com/', 'fab fa-facebook-f', 1),
(2, 0, 'https://twitter.com/', 'fab fa-twitter', 1),
(3, 0, 'https://linkedin.com/', 'fab fa-linkedin-in', 1),
(4, 0, 'https://www.google.com/', 'fab fa-google-plus-g', 1),
(5, 0, 'https://dribbble.com/', 'fab fa-dribbble', 1),
(6, 13, 'https://www.google.com/', 'fab fa-google', 1),
(7, 13, 'https://twitter.com/', 'fab fa-twitter', 1),
(8, 13, 'https://www.facebook.com/', 'fab fa-facebook', 1),
(9, 13, 'https://linkedin.com/', 'fab fa-linkedin', 1),
(10, 22, 'https://www.google.com/', 'fab fa-google', 1);

-- --------------------------------------------------------

--
-- Table structure for table `social_providers`
--

CREATE TABLE `social_providers` (
  `id` int(191) NOT NULL,
  `user_id` int(191) NOT NULL,
  `provider_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `provider` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `states`
--

CREATE TABLE `states` (
  `id` bigint(20) NOT NULL,
  `country_id` int(11) NOT NULL DEFAULT 0,
  `state` varchar(111) DEFAULT NULL,
  `tax` double NOT NULL DEFAULT 0,
  `status` int(11) NOT NULL DEFAULT 1,
  `owner_id` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `states`
--

INSERT INTO `states` (`id`, `country_id`, `state`, `tax`, `status`, `owner_id`) VALUES
(2, 245, 'New Youk', 2, 1, 0),
(4, 246, 'Virginia', 4, 1, 0),
(5, 237, 'Sancta Sedes', 0, 1, 0),
(6, 246, 'Harare', 0, 1, 0),
(7, 245, 'Lusaka', 0, 1, 0),
(8, 244, 'Zinjibar', 0, 1, 0),
(9, 244, 'Mukalla', 0, 1, 0),
(10, 243, 'Smara', 0, 1, 0),
(11, 243, 'Hawza', 0, 1, 0),
(12, 242, 'Vaitupu', 0, 1, 0),
(13, 242, 'Leava', 0, 1, 0),
(14, 18, 'Dhaka', 0, 1, 0),
(15, 18, 'Comilla', 0, 1, 0),
(16, 1, 'Kabul', 0, 1, 0),
(17, 1, 'Kapisa', 0, 1, 0),
(18, 2, 'Fier', 0, 1, 0),
(19, 2, 'Korce', 0, 1, 0),
(20, 13, 'Victoria', 0, 1, 0),
(21, 13, 'Tasmania', 0, 1, 0),
(22, 14, 'Vienna', 0, 1, 0),
(23, 14, 'Styria', 0, 1, 0),
(24, 20, 'Brest Oblast', 0, 1, 0),
(25, 20, 'Vitebsk Oblast', 0, 1, 0),
(26, 100, 'Assam', 0, 1, 0),
(27, 100, 'Bihar', 0, 1, 0),
(28, 100, 'Bombay', 0, 1, 0),
(29, 183, 'Adygea', 0, 1, 0),
(30, 183, 'Buryatia', 0, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `subcategories`
--

CREATE TABLE `subcategories` (
  `id` int(191) NOT NULL,
  `category_id` int(191) NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `subcategories`
--

INSERT INTO `subcategories` (`id`, `category_id`, `name`, `slug`, `status`) VALUES
(2, 4, 'TELEVISION', 'television', 1),
(3, 4, 'REFRIGERATOR', 'refrigerator', 1),
(4, 4, 'WASHING MACHINE', 'washing-machine', 1),
(5, 4, 'AIR CONDITIONERS', 'air-conditioners', 1),
(6, 5, 'ACCESSORIES', 'accessories', 1),
(7, 5, 'BAGS', 'bags', 1),
(8, 5, 'CLOTHINGS', 'clothings', 1),
(9, 5, 'SHOES', 'shoes', 1),
(10, 7, 'APPLE', 'apple', 1),
(11, 7, 'SAMSUNG', 'samsung', 1),
(12, 7, 'LG', 'lg', 1),
(13, 7, 'SONY', 'sony', 1),
(14, 6, 'DSLR', 'dslr', 1),
(15, 6, 'Camera Phone', 'camera-phone', 1),
(16, 6, 'Action Camera', 'animation-camera', 1),
(17, 6, 'Digital Camera', 'digital-camera', 1);

-- --------------------------------------------------------

--
-- Table structure for table `subscribers`
--

CREATE TABLE `subscribers` (
  `id` int(191) NOT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `subscribers`
--

INSERT INTO `subscribers` (`id`, `email`) VALUES
(8, 'shaon@gmail.com'),
(9, 'test@gmail.com'),
(10, 'shaoneel@gmail.com'),
(11, 'mojibur@gmail.com'),
(12, 'tretr@ter.d'),
(13, 'shaons@gmail.com'),
(14, 'shaon@gmail.coms'),
(15, 'junnuns@gmail.com'),
(16, 'admin@gmail.com'),
(17, 'user7@gmail.com'),
(18, 'farhadwts@gmail.com'),
(19, 'pronobsarker16@gmail.com'),
(20, 'shourav@gmail.com'),
(21, 'user@gmail.com'),
(22, 'seller@gmail.com'),
(23, 'teacher@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `subscriptions`
--

CREATE TABLE `subscriptions` (
  `id` int(11) NOT NULL,
  `title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double NOT NULL DEFAULT 0,
  `days` int(11) NOT NULL,
  `allowed_products` int(11) NOT NULL DEFAULT 0,
  `details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `subscriptions`
--

INSERT INTO `subscriptions` (`id`, `title`, `price`, `days`, `allowed_products`, `details`) VALUES
(5, 'Standard', 60, 45, 25, '<ol><li>Lorem ipsum dolor sit amet<br></li><li>Lorem ipsum dolor sit ame<br></li><li>Lorem ipsum dolor sit am<br></li></ol>'),
(6, 'Premium', 120, 90, 90, '<span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" justify;\"=\"\">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</span><br>'),
(7, 'Unlimited', 250, 365, 0, '<span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" justify;\"=\"\">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</span><br>'),
(8, 'Basic', 0, 30, 0, '<ol><li>Lorem ipsum dolor sit amet<br></li><li>Lorem ipsum dolor sit ame<br></li><li>Lorem ipsum dolor sit am<br></li></ol>');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` int(11) NOT NULL,
  `user_id` int(191) DEFAULT NULL,
  `reward_point` double DEFAULT 0,
  `reward_dolar` double NOT NULL DEFAULT 0,
  `txn_number` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` double DEFAULT 0,
  `currency_sign` blob DEFAULT NULL,
  `currency_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency_value` double NOT NULL DEFAULT 0,
  `method` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `txnid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'plus, minus',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `user_id`, `reward_point`, `reward_dolar`, `txn_number`, `amount`, `currency_sign`, `currency_code`, `currency_value`, `method`, `txnid`, `details`, `type`, `created_at`, `updated_at`) VALUES
(71, 13, 0, 0, 's0174260rM', 100, 0x24, 'USD', 1, 'Stripe', 'txn_1HlSKkJlIV5dN9n7yg2ZgIbE', 'Payment Deposit', 'plus', '2020-11-08 22:50:26', '2020-11-08 22:50:26'),
(72, 13, 0, 0, 'qZg7485l5Z', 100, 0x24, 'USD', 1, 'Stripe', 'txn_1HlSLhJlIV5dN9n7aaoz6WIH', 'Payment Deposit', 'plus', '2020-11-08 22:51:25', '2020-11-08 22:51:25'),
(73, 13, 0, 0, 'Evg9026jfN', 100, 0x24, 'USD', 1, 'Mobile Money', '69234324233423', 'Payment Deposit', 'plus', '2020-11-08 23:17:06', '2020-11-08 23:17:06'),
(74, 13, 0, 0, 'ouI90992fw', 100, 0x24, 'USD', 1, 'Mobile Money', '69234324233423', 'Payment Deposit', 'plus', '2020-11-08 23:18:19', '2020-11-08 23:18:19'),
(75, 13, 0, 0, 'CdS9733uNm', 100, 0x24, 'USD', 1, 'Mobile Money', '23423423432432', 'Payment Deposit', 'plus', '2020-11-08 23:28:53', '2020-11-08 23:28:53'),
(76, 22, 0, 0, 'BoT8052pwK', 500, 0x24, 'USD', 1, 'Stripe', 'txn_1Hp4DrJlIV5dN9n7t1iTYL1d', 'Payment Deposit', 'plus', '2020-11-18 21:54:12', '2020-11-18 21:54:12'),
(77, 22, 0, 0, 'gEu8363Jvw', 137.8, 0x24, 'USD', 1, NULL, NULL, 'Payment Via Wallet', 'minus', '2020-11-18 21:59:23', '2020-11-18 21:59:23'),
(78, 22, 0, 0, 'POb0758IGl', 362.2, 0x24, 'USD', 1, NULL, NULL, 'Payment Via Wallet', 'minus', '2020-11-18 22:39:18', '2020-11-18 22:39:18'),
(79, 22, 0, 0, 'NeT2693yEB', 1000, 0x24, 'USD', 1, 'Mobile Money', '69234324233423', 'Payment Deposit', 'plus', '2020-11-18 23:11:33', '2020-11-18 23:11:33'),
(80, 22, 0, 0, 'Z5k2860vix', 412, 0x24, 'USD', 1, NULL, NULL, 'Payment Via Wallet', 'minus', '2020-11-18 23:14:20', '2020-11-18 23:14:20'),
(81, 22, 0, 0, 'o4G6881KtE', 6.6879357201938, 0x24, 'USD', 84.63, NULL, NULL, 'Payment Via Wallet', 'minus', '2021-08-15 22:08:01', '2021-08-15 22:08:01'),
(82, 22, 0, 0, '1kl4166N9X', 20, 0x24, '1', 1, NULL, NULL, 'Payment Via Wallet', 'minus', '2021-08-18 02:09:26', '2021-08-18 02:09:26'),
(83, 22, 0, 0, 'be74667HIy', 114.33, 0x24, 'USD', 1, NULL, NULL, 'Payment Via Wallet', 'minus', '2021-08-18 02:17:47', '2021-08-18 02:17:47'),
(84, 22, 15, 30, NULL, 0, NULL, NULL, 0, NULL, NULL, NULL, 'reward', '2021-08-18 05:14:48', '2021-08-18 05:14:48'),
(85, 22, 15, 30, NULL, 0, NULL, NULL, 0, NULL, NULL, NULL, 'reward', '2021-08-18 05:15:24', '2021-08-18 05:15:24'),
(86, 22, 15, 30, NULL, 0, NULL, NULL, 0, NULL, NULL, NULL, 'reward', '2021-08-18 05:19:12', '2021-08-18 05:19:12'),
(87, 22, 0, 0, 'wXy43082Oc', 30, 0x24, 'USD', 1, 'Paypal', '73C78619CF978200E', 'Payment Deposit', 'plus', '2021-09-10 22:25:08', '2021-09-10 22:25:08'),
(88, 31, 0, 0, 'vbO7527HMB', 1, 0x24, 'USD', 1, NULL, NULL, 'Lorem Ipsum is simply dummy text of the printing', 'plus', '2021-09-10 23:18:47', '2021-09-10 23:18:47'),
(89, 22, 0, 0, 'Mtc7543oEI', 1, 0x24, 'USD', 1, NULL, NULL, 'Lorem Ipsum is simply dummy text of the printing', 'plus', '2021-09-10 23:19:03', '2021-09-10 23:19:03'),
(90, 22, 0, 0, 'b2d7569b7D', 100, 0x24, 'USD', 1, NULL, NULL, 'Lorem Ipsum is simply dummy text of the printing', 'minus', '2021-09-10 23:19:29', '2021-09-10 23:19:29'),
(91, 22, 0, 0, '2sw73324zy', 114.33, 0x24, 'USD', 1, NULL, NULL, 'Payment Via Wallet', 'minus', '2021-09-11 21:28:52', '2021-09-11 21:28:52'),
(92, 22, 0, 0, 'sCV7503GHU', 92, 0x24, 'USD', 1, NULL, NULL, 'Payment Via Wallet', 'minus', '2021-09-11 21:31:43', '2021-09-11 21:31:43'),
(93, 22, 0, 0, '3i58366j66', 400455, 0x24, 'USD', 1, 'Paypal', '3KX550288A083143D', 'Payment Deposit', 'plus', '2021-12-12 15:39:26', '2021-12-12 15:39:26'),
(94, 22, 23, 46, NULL, 0, NULL, NULL, 0, NULL, NULL, NULL, 'reward', '2021-12-12 15:44:22', '2021-12-12 15:44:22'),
(95, 22, 25, 50, NULL, 0, NULL, NULL, 0, NULL, NULL, NULL, 'reward', '2021-12-12 15:44:36', '2021-12-12 15:44:36'),
(96, 36, 0, 0, 'QDY399707p', 1, 0x24, 'USD', 1, NULL, NULL, 'asdf dasdf', 'minus', '2021-12-12 17:13:17', '2021-12-12 17:13:17'),
(97, 22, 0, 0, 'GNM0761Vws', 100, 0x24, 'USD', 1, 'Stripe', 'txn_3K6WRAJlIV5dN9n70GBwDbAn', 'Payment Deposit', 'plus', '2021-12-14 15:32:41', '2021-12-14 15:32:41'),
(98, 22, 0, 0, 'lbU2350IW6', 100, 0x24, 'USD', 1, 'Paypal', '7DD5252950230501K', 'Payment Deposit', 'plus', '2021-12-14 15:59:10', '2021-12-14 15:59:10'),
(99, 22, 0, 0, '2cp2380HGJ', 100, 0x24, 'USD', 1, 'Molly Payment', 'tr_sFs2rBK6sT', 'Payment Deposit', 'plus', '2021-12-14 15:59:40', '2021-12-14 15:59:40'),
(100, 22, 0, 0, NULL, 100, 0x24, 'USD', 1, 'Authorize.net', '40079231225', 'Payment Deposit', 'plus', '2021-12-14 16:00:30', '2021-12-14 16:00:30'),
(101, 22, 0, 0, '1Jy25000Hr', 100, 0x24, 'USD', 1, 'Mercadopago', '1244588594', 'Payment Deposit', 'plus', '2021-12-14 16:01:40', '2021-12-14 16:01:40'),
(102, 22, 0, 0, 'ed13101X6A', 1.1816140848399, 0xe0a7b3, 'BDT', 84.63, 'SSLCommerz', 'SSLCZ_TXN_61b85fc6044a9', 'Payment Deposit', 'plus', '2021-12-14 16:11:41', '2021-12-14 16:11:41'),
(103, 22, 0, 0, 'DzI31274jM', 1.1816140848399, 0xe0a7b3, 'BDT', 84.63, 'SSLCommerz', 'SSLCZ_TXN_61b85fe1dd9d2', 'Payment Deposit', 'plus', '2021-12-14 16:12:07', '2021-12-14 16:12:07'),
(104, 22, 15, 22.5, NULL, 0, NULL, NULL, 0, NULL, NULL, NULL, 'reward', '2021-12-14 17:21:23', '2021-12-14 17:21:23'),
(105, 22, 0, 0, 'sj38839CrG', 1.4503263234228, 0xe282b9, 'INR', 68.95, 'Paytm', '20211214111212800110168951203256029', 'Payment Deposit', 'plus', '2021-12-14 17:47:19', '2021-12-14 17:47:19'),
(106, 22, 0, 0, 'tgr0114viQ', 1.4503263234228, 0xe282b9, 'INR', 68.95, 'Instamojo', '3adde727acd54f7ca0a57698bc3d0385', 'Payment Deposit', 'plus', '2021-12-14 18:08:34', '2021-12-14 18:08:34'),
(107, 22, 0, 0, 'xcS0235yIs', 1.4503263234228, 0xe282b9, 'INR', 68.95, 'Paytm', '20211214111212800110168630103261249', 'Payment Deposit', 'plus', '2021-12-14 18:10:35', '2021-12-14 18:10:35'),
(108, 22, 0, 0, 'zpP0262WPs', 0.2747864222533, 0xe282a6, 'NGN', 363.919, 'Paystack', NULL, 'Payment Deposit', 'plus', '2021-12-14 18:11:02', '2021-12-14 18:11:02'),
(109, 22, 0, 0, 'n7w71945Cx', 50, 0x24, 'USD', 1, 'Flutterwave', '2699723', 'Payment Deposit', 'plus', '2021-12-15 02:33:14', '2021-12-15 02:33:14'),
(110, 22, 0, 0, '3Xm7707QgS', 1.1816140848399, 0xe0a7b3, 'BDT', 84.63, 'SSLCommerz', 'SSLCZ_TXN_61b9aa479d33e', 'Payment Deposit', 'plus', '2021-12-15 02:41:47', '2021-12-15 02:41:47'),
(111, 22, 0, 0, '3r67988yvO', 1.1816140848399, 0xe0a7b3, 'BDT', 84.63, 'SSLCommerz', 'SSLCZ_TXN_61b9ab61f41b9', 'Payment Deposit', 'plus', '2021-12-15 02:46:28', '2021-12-15 02:46:28'),
(112, 22, 0, 0, 'mBS8309q0j', 110, 0xe0a7b3, 'BDT', 84.63, NULL, NULL, 'Payment Via Wallet', 'minus', '2021-12-15 02:51:49', '2021-12-15 02:51:49'),
(113, 22, 10, 15, NULL, 0, NULL, NULL, 0, NULL, NULL, NULL, 'reward', '2021-12-22 11:49:34', '2021-12-22 11:49:34'),
(114, 22, 142, 213, NULL, 0, NULL, NULL, 0, NULL, NULL, NULL, 'reward', '2021-12-27 19:59:45', '2021-12-27 19:59:45'),
(115, 22, 100, 150, NULL, 0, NULL, NULL, 0, NULL, NULL, NULL, 'reward', '2022-02-16 00:06:29', '2022-02-16 00:06:29'),
(116, 22, 0, 0, 'Py338798q8', 100, 0x24, 'USD', 1, 'Paypal', '0RR72967LE978735V', 'Payment Deposit', 'plus', '2022-03-24 10:51:19', '2022-03-24 10:51:19'),
(117, 22, 0, 0, 'IsT600908v', 10, 0x24, 'USD', 1, 'Paypal', '00554153MA792844F', 'Payment Deposit', 'plus', '2022-03-24 11:26:49', '2022-03-24 11:26:49'),
(118, 22, 0, 0, 'Lou6145az7', 2000, 0x24, 'USD', 1, 'Stripe', 'txn_3KgiIHJlIV5dN9n71BFGSxys', 'Payment Deposit', 'plus', '2022-03-24 11:29:05', '2022-03-24 11:29:05'),
(119, 22, 0, 0, NULL, 10, 0x24, 'USD', 1, 'Authorize.net', '40085654964', 'Payment Deposit', 'plus', '2022-03-24 11:39:19', '2022-03-24 11:39:19'),
(120, 22, 0, 0, '5ci68408AS', 400, 0x24, 'USD', 1, 'Mercadopago', '1247049741', 'Payment Deposit', 'plus', '2022-03-24 11:40:40', '2022-03-24 11:40:40'),
(121, 22, 0, 0, 'mN37049ONM', 400, 0x24, 'USD', 1, 'Flutterwave', '3244951', 'Payment Deposit', 'plus', '2022-03-24 11:44:09', '2022-03-24 11:44:09'),
(122, 22, 10, 15, NULL, 0, NULL, NULL, 0, NULL, NULL, NULL, 'reward', '2022-09-21 02:14:30', '2022-09-21 02:14:30'),
(123, 22, 0, 0, 'pwx2670Ap6', 1, NULL, 'USD', 1, 'Paypal', '00P43935DC983013E', 'Payment Deposit', 'plus', '2022-09-26 00:11:10', '2022-09-26 00:11:10'),
(124, 22, 0, 0, 'UoW3446Ovj', 1, NULL, 'USD', 1, NULL, NULL, 'Payment Deposit', 'plus', '2022-09-26 00:24:06', '2022-09-26 00:24:06'),
(125, 22, 0, 0, 'IY43452j2I', 10, 0x24, 'USD', 1, 'Flutterwave', NULL, 'Payment Deposit', 'plus', '2022-09-26 00:24:12', '2022-09-26 00:24:12'),
(126, 22, 0, 0, 'yPz3582mQk', 2, NULL, 'USD', 1, 'Paypal', '7GB024530S901952T', 'Payment Deposit', 'plus', '2022-09-26 00:26:22', '2022-09-26 00:26:22'),
(127, 22, 0, 0, '4yD36469KS', 2, NULL, 'USD', 1, 'Stripe', 'txn_3LmAmnJlIV5dN9n71HhLqhR0', 'Payment Deposit', 'plus', '2022-09-26 00:27:26', '2022-09-26 00:27:26'),
(128, 22, 0, 0, 'PrU0018fnn', 2, NULL, 'USD', 1, 'Stripe', 'txn_3LmCRZJlIV5dN9n7071VY1VQ', 'Payment Deposit', 'plus', '2022-09-26 02:13:38', '2022-09-26 02:13:38'),
(129, 22, 0, 0, 'LnM0657irK', 2, NULL, 'USD', 1, 'Paypal', '4R92756047478135S', 'Payment Deposit', 'plus', '2022-09-26 02:24:17', '2022-09-26 02:24:17'),
(130, 22, 0, 0, 'cqM0687xRj', 2, NULL, 'USD', 1, 'Stripe', 'txn_3LmCcMJlIV5dN9n71CSxQu7q', 'Payment Deposit', 'plus', '2022-09-26 02:24:47', '2022-09-26 02:24:47'),
(131, 22, 0, 0, 'vcT0901fJO', 2, NULL, 'USD', 1, 'Molly', 'tr_wBVPawtDTr', 'Payment Deposit', 'plus', '2022-09-26 02:28:21', '2022-09-26 02:28:21'),
(132, 22, 0, 0, 'AzU1681rIm', 2, NULL, 'USD', 1, 'Authorize.Net', '40103111056', 'Payment Deposit', 'plus', '2022-09-26 02:41:21', '2022-09-26 02:41:21'),
(133, 22, 0, 0, '9pH21500sJ', 2, NULL, 'USD', 1, 'Flutter Wave', '3767245', 'Payment Deposit', 'plus', '2022-09-26 02:49:10', '2022-09-26 02:49:10'),
(134, 22, 0, 0, 'j8126200u8', 0.029006526468455, NULL, 'INR', 68.95, 'Paytm', '20220927111212800110168135104122093', 'Payment Deposit', 'plus', '2022-09-26 22:23:40', '2022-09-26 22:23:40'),
(135, 22, 0, 0, 'HG92708HXi', 0.029006526468455, NULL, 'INR', 68.95, 'Paytm', '20220927111212800110168025505494840', 'Payment Deposit', 'plus', '2022-09-26 22:25:08', '2022-09-26 22:25:08'),
(136, 22, 0, 0, '35x3119W7E', 0.029006526468455, NULL, 'INR', 68.95, 'Razorpay', 'pay_KMnEarIRhbheHs', 'Payment Deposit', 'plus', '2022-09-26 22:31:59', '2022-09-26 22:31:59'),
(137, 22, 0, 0, '6ca3638N1i', 0.02, NULL, 'BDT', 84.63, 'Stripe', 'SSLCZ_TXN_63327eb0c8e47', 'Payment Deposit', 'plus', '2022-09-26 22:40:38', '2022-09-26 22:40:38'),
(138, 22, 0, 0, 'N9q3941Eiv', 0, NULL, 'NGN', 363.919, 'Paystack', NULL, 'Payment Deposit', 'plus', '2022-09-26 22:45:41', '2022-09-26 22:45:41'),
(139, 22, 0, 0, 'ZEw40110p0', 0.0054957284450661, NULL, 'NGN', 363.919, 'Flutter Wave', '3769493', 'Payment Deposit', 'plus', '2022-09-26 22:46:51', '2022-09-26 22:46:51'),
(140, 22, 0, 0, 'zOL2372xg2', 1, NULL, 'USD', 1, 'Authorize.Net', '40103225823', 'Payment Deposit', 'plus', '2022-09-27 03:52:52', '2022-09-27 03:52:52'),
(141, 22, 0, 0, 'dX52452xbH', 1, NULL, 'USD', 1, 'Authorize.Net', '40103225922', 'Payment Deposit', 'plus', '2022-09-27 03:54:12', '2022-09-27 03:54:12'),
(142, 22, 0, 0, 'jyy7529Hit', 1.4503263234228, 0xe282b9, 'INR', 68.95, 'Instamojo', 'c3f658358b934c779a033e47db948d6c', 'Payment Deposit', 'plus', '2022-10-25 15:45:29', '2022-10-25 15:45:29'),
(143, 22, 0, 0, 'RU876124Ed', 100, 0x24, 'USD', 1, 'Flutterwave', '3892157', 'Payment Deposit', 'plus', '2022-10-25 15:46:52', '2022-10-25 15:46:52');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `photo` varchar(191) DEFAULT NULL,
  `zip` varchar(191) DEFAULT NULL,
  `city` varchar(191) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `state` varchar(191) DEFAULT NULL,
  `address` varchar(191) DEFAULT NULL,
  `phone` varchar(191) DEFAULT NULL,
  `fax` varchar(191) DEFAULT NULL,
  `email` varchar(191) NOT NULL,
  `password` varchar(191) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_provider` tinyint(10) NOT NULL DEFAULT 0,
  `status` tinyint(10) NOT NULL DEFAULT 0,
  `verification_link` text DEFAULT NULL,
  `email_verified` enum('Yes','No') NOT NULL DEFAULT 'No',
  `affilate_code` text DEFAULT NULL,
  `affilate_income` double NOT NULL DEFAULT 0,
  `shop_name` text DEFAULT NULL,
  `owner_name` text DEFAULT NULL,
  `shop_number` text DEFAULT NULL,
  `shop_address` text DEFAULT NULL,
  `reg_number` text DEFAULT NULL,
  `shop_message` text DEFAULT NULL,
  `shop_details` text DEFAULT NULL,
  `shop_image` varchar(191) DEFAULT NULL,
  `f_url` text DEFAULT NULL,
  `g_url` text DEFAULT NULL,
  `t_url` text DEFAULT NULL,
  `l_url` text DEFAULT NULL,
  `is_vendor` tinyint(1) NOT NULL DEFAULT 0,
  `f_check` tinyint(1) NOT NULL DEFAULT 0,
  `g_check` tinyint(1) NOT NULL DEFAULT 0,
  `t_check` tinyint(1) NOT NULL DEFAULT 0,
  `l_check` tinyint(1) NOT NULL DEFAULT 0,
  `mail_sent` tinyint(1) NOT NULL DEFAULT 0,
  `shipping_cost` double NOT NULL DEFAULT 0,
  `current_balance` double NOT NULL DEFAULT 0,
  `date` date DEFAULT NULL,
  `ban` tinyint(1) NOT NULL DEFAULT 0,
  `balance` double NOT NULL DEFAULT 0,
  `reward` double NOT NULL DEFAULT 0,
  `email_token` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `photo`, `zip`, `city`, `country`, `state`, `address`, `phone`, `fax`, `email`, `password`, `remember_token`, `created_at`, `updated_at`, `is_provider`, `status`, `verification_link`, `email_verified`, `affilate_code`, `affilate_income`, `shop_name`, `owner_name`, `shop_number`, `shop_address`, `reg_number`, `shop_message`, `shop_details`, `shop_image`, `f_url`, `g_url`, `t_url`, `l_url`, `is_vendor`, `f_check`, `g_check`, `t_check`, `l_check`, `mail_sent`, `shipping_cost`, `current_balance`, `date`, `ban`, `balance`, `reward`, `email_token`) VALUES
(13, 'Vendor', NULL, '1234', NULL, 'Algeria', 'UN', NULL, '3453453345453411', '23123121', 'vendor@gmail.com', '$2y$10$.4NrvXAeyToa4x07EkFvS.XIUEc/aXGsxe1onkQ.Udms4Sl2W9ZYq', 'FZZT79vFSHr5AmVKwnXqxA0kngg49oMItd1ob9zlR6Z1eKsjgLz3hsdh9sZH', '2018-03-07 12:05:44', '2022-10-25 15:49:03', 0, 2, '$2y$10$oIf1at.0LwscVwaX/8h.WuSwMKEAAsn8EJ.9P7mWzNUFIcEBQs8ry', 'Yes', '$2y$10$oIf1at.0LwscVwaX/8h.WuSwMKEAAsn8EJ.9P7mWzNUFIcEBQs8rysdfsdfds', 4920.8, 'Test Stores', 'User', '43543534', 'Space Needle 400 Broad St, Seattles', 'asdasd', 'sdf', NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, 0, 0, 0, 1, 0, 91267.459, '2023-11-11', 0, 699.79, 0, NULL),
(22, 'User', '16429180191556780563userpng.png', '1231', 'Test City', 'Algeria', 'UN', 'Test Address', '34534534534', '34534534534', 'user@gmail.com', '$2y$10$SoiCG9/MlJIvAir5tUKAjevXO0N4P0qEUb27vFMc53uCWMfgd.FLm', '9e39Pt5aqfaCJic4OlS1yCWgh0xmQEdYAVeHEc32WAWYc0Tv2fC2RE9Scz3S', '2019-06-20 06:26:24', '2023-05-28 03:03:54', 0, 0, '1edae93935fba69d9542192fb854a80a', 'Yes', '8f09b9691613ecb8c3f7e36e34b97b80', 4298.635, 'Test Shops', 'Saxena', '213213', 'fgfg', '123213', NULL, NULL, '1640498386Wonderland-AhoraMisma-Ajpg.jpg', NULL, NULL, NULL, NULL, 2, 0, 0, 0, 0, 1, 0, 0, '2022-10-21', 0, 129.68085468421, 240, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_notifications`
--

CREATE TABLE `user_notifications` (
  `id` int(191) NOT NULL,
  `user_id` int(191) NOT NULL,
  `order_number` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_read` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `user_notifications`
--

INSERT INTO `user_notifications` (`id`, `user_id`, `order_number`, `is_read`, `created_at`, `updated_at`) VALUES
(55, 13, 'GJIR1605427368', 1, '2020-11-15 02:02:53', '2021-12-27 05:11:43'),
(56, 13, 'DNJa1605437957', 1, '2020-11-15 04:59:19', '2021-12-27 05:11:43'),
(57, 13, 'jTnc1605497801', 1, '2020-11-15 21:36:43', '2021-12-27 05:11:43'),
(58, 13, 'aM3v1605497852', 1, '2020-11-15 21:37:32', '2021-12-27 05:11:43'),
(59, 13, 'fD7V1605505676', 1, '2020-11-15 23:47:56', '2021-12-27 05:11:43'),
(60, 13, 'XuOe1605758092', 1, '2020-11-18 21:54:53', '2021-12-27 05:11:43'),
(61, 13, 'exVe1605758363', 1, '2020-11-18 21:59:23', '2021-12-27 05:11:43'),
(62, 13, 'slPl1605760756', 1, '2020-11-18 22:39:18', '2021-12-27 05:11:43'),
(63, 13, 'ZYZm1605762860', 1, '2020-11-18 23:14:20', '2021-12-27 05:11:43'),
(64, 13, 'hvKS1605763356', 1, '2020-11-18 23:22:36', '2021-12-27 05:11:43'),
(65, 13, 'txAu1605773022', 1, '2020-11-19 02:03:46', '2021-12-27 05:11:43'),
(66, 13, 'Nyt21605775483', 1, '2020-11-19 02:44:58', '2021-12-27 05:11:43'),
(67, 13, 'znys1605775558', 1, '2020-11-19 02:47:01', '2021-12-27 05:11:43'),
(68, 13, '98fm1605775658', 1, '2020-11-19 02:47:38', '2021-12-27 05:11:43'),
(69, 13, 'KPma1605775845', 1, '2020-11-19 02:50:49', '2021-12-27 05:11:43'),
(70, 13, 'oXwG1605776045', 1, '2020-11-19 02:54:10', '2021-12-27 05:11:43'),
(71, 13, 'pXea1605776622', 1, '2020-11-19 03:03:45', '2021-12-27 05:11:43'),
(72, 13, 'gsh21606208213', 1, '2020-11-24 02:56:53', '2021-12-27 05:11:43'),
(73, 13, 'tmC11627449792', 1, '2021-07-27 23:23:12', '2021-12-27 05:11:43'),
(74, 13, 'LGWb1629106077', 1, '2021-08-16 03:28:23', '2021-12-27 05:11:43'),
(75, 13, 'hdvp1629117683', 1, '2021-08-16 06:41:49', '2021-12-27 05:11:43'),
(76, 13, 'l5WP1629118063', 1, '2021-08-16 06:47:59', '2021-12-27 05:11:43'),
(77, 13, 'oHtb1629178227', 1, '2021-08-16 23:30:48', '2021-12-27 05:11:43'),
(78, 13, 'NO5X1629178367', 1, '2021-08-16 23:33:05', '2021-12-27 05:11:43'),
(79, 13, 'd0Ho1629178447', 1, '2021-08-16 23:34:23', '2021-12-27 05:11:43'),
(80, 13, 'vzK51629178927', 1, '2021-08-16 23:42:28', '2021-12-27 05:11:43'),
(81, 13, 'oSDf1629179544', 1, '2021-08-16 23:52:54', '2021-12-27 05:11:43'),
(82, 13, 'uslT1629180266', 1, '2021-08-17 00:04:42', '2021-12-27 05:11:43'),
(83, 13, '6wsB1629180943', 1, '2021-08-17 00:16:00', '2021-12-27 05:11:43'),
(84, 13, 'R1HI1629181102', 1, '2021-08-17 00:18:38', '2021-12-27 05:11:43'),
(85, 13, 'fzkJ1629262135', 1, '2021-08-17 22:49:04', '2021-12-27 05:11:43'),
(86, 13, 'XQqY1629274145', 1, '2021-08-18 02:09:26', '2021-12-27 05:11:43'),
(87, 13, 'w6XM1629274666', 1, '2021-08-18 02:17:47', '2021-12-27 05:11:43'),
(88, 13, 'VC6q1631339529', 1, '2021-09-10 23:52:11', '2021-12-27 05:11:43'),
(89, 13, 'YoPn1631340268', 1, '2021-09-11 00:04:30', '2021-12-27 05:11:43'),
(90, 13, 'NTQz1631340864', 1, '2021-09-11 00:14:27', '2021-12-27 05:11:43'),
(91, 13, 'hGBt1631346683', 1, '2021-09-11 21:26:54', '2021-12-27 05:11:43'),
(92, 13, 'Vcth1631417332', 1, '2021-09-11 21:28:52', '2021-12-27 05:11:43'),
(93, 13, 'Qnid1631417500', 1, '2021-09-11 21:31:43', '2021-12-27 05:11:43'),
(94, 13, 'WZyT1631417894', 1, '2021-09-11 21:38:17', '2021-12-27 05:11:43'),
(95, 13, '9dTo1631418889', 1, '2021-09-11 21:54:51', '2021-12-27 05:11:43'),
(96, 13, 'JFJe1634625568', 1, '2021-10-19 00:39:31', '2021-12-27 05:11:43'),
(97, 13, 'c4KQ1639297122', 1, '2021-12-12 15:19:12', '2021-12-27 05:11:43'),
(98, 13, '4mCN1639297215', 1, '2021-12-12 15:20:29', '2021-12-27 05:11:43'),
(99, 13, 'MU131639297525', 1, '2021-12-12 15:25:27', '2021-12-27 05:11:43'),
(100, 13, 'DjDE1639297841', 1, '2021-12-12 15:30:42', '2021-12-27 05:11:43'),
(101, 13, 'f97J1639303759', 1, '2021-12-12 17:09:21', '2021-12-27 05:11:43'),
(102, 13, 'Xk9Z1639460878', 1, '2021-12-14 12:48:01', '2021-12-27 05:11:43'),
(103, 13, 'v86x1639464424', 1, '2021-12-14 13:47:07', '2021-12-27 05:11:43'),
(104, 13, 'rvvt1639478271', 1, '2021-12-14 17:37:54', '2021-12-27 05:11:43'),
(105, 13, 'qsyr1639555416', 1, '2021-12-15 15:03:38', '2021-12-27 05:11:43'),
(106, 13, 'lRjO1639555840', 1, '2021-12-15 15:10:54', '2021-12-27 05:11:43'),
(107, 13, 'VgYy1639558309', 1, '2021-12-15 02:51:49', '2021-12-27 05:11:43'),
(108, 13, '39MT1643876226', 0, '2022-02-03 02:17:06', '2022-02-03 02:17:06'),
(109, 13, 'L2Ft1643876229', 0, '2022-02-03 02:17:09', '2022-02-03 02:17:09'),
(110, 13, 'WYTj1643876231', 0, '2022-02-03 02:17:11', '2022-02-03 02:17:11'),
(111, 13, 'g4Z81643876231', 0, '2022-02-03 02:17:12', '2022-02-03 02:17:12'),
(112, 13, 'ODaE1643876236', 0, '2022-02-03 02:17:16', '2022-02-03 02:17:16'),
(113, 13, 'DqRq1643877049', 0, '2022-02-03 02:30:49', '2022-02-03 02:30:49'),
(114, 13, 'B6Nu1643877305', 0, '2022-02-03 02:35:07', '2022-02-03 02:35:07'),
(115, 13, 'nn7o1643877597', 0, '2022-02-03 02:40:00', '2022-02-03 02:40:00'),
(116, 13, 'tbpp1643879252', 0, '2022-02-03 03:07:59', '2022-02-03 03:07:59'),
(117, 13, 'IOLf1644384107', 0, '2022-02-08 23:22:01', '2022-02-08 23:22:01'),
(118, 13, 'L6y81644397444', 0, '2022-02-09 03:04:04', '2022-02-09 03:04:04'),
(119, 13, '7QiH1644398294', 0, '2022-02-09 03:20:54', '2022-02-09 03:20:54'),
(120, 13, 'hG5a1645422741', 0, '2022-02-20 23:52:27', '2022-02-20 23:52:27'),
(121, 13, 'gxMi1645943903', 0, '2022-02-27 00:38:23', '2022-02-27 00:38:23'),
(122, 13, 'rNaD1645943909', 0, '2022-02-27 00:38:29', '2022-02-27 00:38:29'),
(123, 13, 'NzKp1645944334', 0, '2022-02-27 00:45:34', '2022-02-27 00:45:34'),
(124, 13, '8Zwo1645950447', 0, '2022-02-27 02:27:27', '2022-02-27 02:27:27'),
(125, 13, 'u8An1645951432', 0, '2022-02-27 02:44:13', '2022-02-27 02:44:13'),
(126, 13, 'a1Jb1646020193', 0, '2022-02-27 21:49:56', '2022-02-27 21:49:56'),
(127, 13, 'ffB71646888596', 0, '2022-03-09 23:03:16', '2022-03-09 23:03:16'),
(128, 13, 'y0oH1648100767', 0, '2022-03-24 12:46:07', '2022-03-24 12:46:07'),
(129, 13, 'f8Lq1648100818', 0, '2022-03-24 12:46:58', '2022-03-24 12:46:58'),
(130, 13, 'm72i1648100865', 0, '2022-03-24 12:49:17', '2022-03-24 12:49:17'),
(131, 13, 'PIri1648101051', 0, '2022-03-24 12:50:52', '2022-03-24 12:50:52'),
(132, 13, 'BSSm1648101212', 0, '2022-03-24 12:53:34', '2022-03-24 12:53:34'),
(133, 13, 'cOrz1648101301', 0, '2022-03-24 12:55:03', '2022-03-24 12:55:03'),
(134, 13, 'WAnR1648101347', 0, '2022-03-24 12:56:03', '2022-03-24 12:56:03'),
(135, 13, 'AP9qvokR1662285054', 0, '2022-09-04 03:50:55', '2022-09-04 03:50:55'),
(136, 13, 'pdYqUhZX1662285251', 0, '2022-09-04 03:54:11', '2022-09-04 03:54:11'),
(137, 13, 'yXv8gMQX1662288032', 0, '2022-09-04 04:40:33', '2022-09-04 04:40:33'),
(138, 13, 'QVF3HEOj1662288457', 0, '2022-09-04 04:47:37', '2022-09-04 04:47:37'),
(139, 13, 'TMNwAGqx1662292202', 0, '2022-09-04 05:50:02', '2022-09-04 05:50:02'),
(140, 13, 'WqE6WfSB1662446213', 0, '2022-09-06 00:36:53', '2022-09-06 00:36:53'),
(141, 13, 'NU3v1663670548', 0, '2022-09-20 04:42:29', '2022-09-20 04:42:29'),
(142, 13, 'qC4Q1663729871', 0, '2022-09-20 21:11:12', '2022-09-20 21:11:12'),
(143, 13, 'G03L1664084666', 0, '2022-09-24 23:44:28', '2022-09-24 23:44:28'),
(144, 13, 'wkG51664093265', 0, '2022-09-25 02:07:46', '2022-09-25 02:07:46'),
(145, 13, '3G6B1664093877', 0, '2022-09-25 02:17:57', '2022-09-25 02:17:57'),
(146, 13, 'yWIE1664163415', 0, '2022-09-25 21:36:56', '2022-09-25 21:36:56'),
(147, 13, 'YId11664165825', 0, '2022-09-25 22:17:06', '2022-09-25 22:17:06'),
(148, 13, 'oFOZ1664165962', 0, '2022-09-25 22:19:23', '2022-09-25 22:19:23'),
(149, 13, 'lqafTsB71666087556', 0, '2022-10-18 17:05:56', '2022-10-18 17:05:56'),
(150, 13, 'MtBSGWUb1666090087', 0, '2022-10-18 17:48:07', '2022-10-18 17:48:07'),
(151, 13, '2THM1666687253', 0, '2022-10-25 15:41:18', '2022-10-25 15:41:18'),
(152, 13, 'hkWm1666850715', 0, '2022-10-27 13:05:15', '2022-10-27 13:05:15'),
(153, 13, 'UeJa1666850718', 0, '2022-10-27 13:05:18', '2022-10-27 13:05:18'),
(154, 13, 'dX1K1667189283', 0, '2022-10-31 11:08:05', '2022-10-31 11:08:05'),
(155, 13, '5av41667465075', 0, '2022-11-03 15:44:37', '2022-11-03 15:44:37');

-- --------------------------------------------------------

--
-- Table structure for table `user_subscriptions`
--

CREATE TABLE `user_subscriptions` (
  `id` int(191) NOT NULL,
  `user_id` int(191) NOT NULL,
  `subscription_id` int(191) NOT NULL,
  `title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency_sign` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency_code` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency_value` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` double NOT NULL DEFAULT 0,
  `days` int(11) NOT NULL,
  `allowed_products` int(11) NOT NULL DEFAULT 0,
  `details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `method` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Free',
  `txnid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `charge_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `flutter_id` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `payment_number` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `user_subscriptions`
--

INSERT INTO `user_subscriptions` (`id`, `user_id`, `subscription_id`, `title`, `currency_sign`, `currency_code`, `currency_value`, `price`, `days`, `allowed_products`, `details`, `method`, `txnid`, `charge_id`, `flutter_id`, `created_at`, `updated_at`, `status`, `payment_number`) VALUES
(84, 13, 5, 'Standard', '$', 'NGN', '1', 60, 45, 500, '<ol><li>Lorem ipsum dolor sit amet<br></li><li>Lorem ipsum dolor sit ame<br></li><li>Lorem ipsum dolor sit am<br></li></ol>', 'Paystack', '242099342', NULL, NULL, '2019-10-10 02:35:29', '2019-10-10 02:35:29', 1, NULL),
(151, 13, 5, 'Standard', '$', 'USD', '1', 60, 45, 25, '<ol><li>Lorem ipsum dolor sit amet<br></li><li>Lorem ipsum dolor sit ame<br></li><li>Lorem ipsum dolor sit am<br></li></ol>', 'Stripe', 'txn_1HlTPfJlIV5dN9n72gC9N5YJ', 'ch_1HlTPfJlIV5dN9n7dUMT6rYg', NULL, '2020-11-08 23:59:35', '2020-11-08 23:59:35', 1, NULL),
(152, 13, 5, 'Standard', '$', 'USD', '1', 60, 45, 25, '<ol><li>Lorem ipsum dolor sit amet<br></li><li>Lorem ipsum dolor sit ame<br></li><li>Lorem ipsum dolor sit am<br></li></ol>', 'Paypal', '6KD881488A1277949', NULL, NULL, '2020-11-09 00:00:38', '2020-11-09 00:00:38', 1, NULL),
(153, 13, 5, 'Standard', '$', 'USD', '1', 60, 45, 25, '<ol><li>Lorem ipsum dolor sit amet<br></li><li>Lorem ipsum dolor sit ame<br></li><li>Lorem ipsum dolor sit am<br></li></ol>', 'Paypal', '0R5121086C3908633', NULL, NULL, '2020-11-09 00:05:48', '2020-11-09 00:05:48', 1, NULL),
(154, 13, 5, 'Standard', '₦', 'NGN', '363.919', 60, 45, 25, '<ol><li>Lorem ipsum dolor sit amet<br></li><li>Lorem ipsum dolor sit ame<br></li><li>Lorem ipsum dolor sit am<br></li></ol>', 'Paystack', '949523367', NULL, NULL, '2020-11-09 00:06:35', '2020-11-09 00:06:35', 1, NULL),
(155, 31, 5, 'Standard', '$', 'USD', '1', 60, 45, 25, '<ol><li>Lorem ipsum dolor sit amet<br></li><li>Lorem ipsum dolor sit ame<br></li><li>Lorem ipsum dolor sit am<br></li></ol>', 'Free', NULL, NULL, NULL, '2020-11-09 02:00:24', '2020-11-09 02:00:24', 1, NULL),
(156, 22, 8, 'Basic', '$', 'USD', '1', 0, 30, 0, '<ol><li>Lorem ipsum dolor sit amet<br></li><li>Lorem ipsum dolor sit ame<br></li><li>Lorem ipsum dolor sit am<br></li></ol>', 'Free', NULL, NULL, NULL, '2020-11-10 22:48:58', '2020-11-10 22:48:58', 1, NULL),
(157, 13, 7, 'Unlimited', '$', 'USD', '1', 250, 365, 0, '<span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" justify;\"=\"\">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</span><br>', 'Free', NULL, NULL, NULL, '2020-11-11 00:22:09', '2020-11-11 00:22:09', 1, NULL),
(158, 13, 7, 'Unlimited', '$', 'USD', '1', 250, 365, 0, '<span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" justify;\"=\"\">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</span><br>', 'Free', NULL, NULL, NULL, '2020-11-11 00:23:42', '2020-11-11 00:23:42', 1, NULL),
(159, 13, 7, 'Unlimited', '$', 'USD', '1', 250, 365, 0, '<span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" justify;\"=\"\">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</span><br>', 'Molly', 'tr_GujuVzTkBB', NULL, NULL, '2021-09-11 22:00:44', '2021-09-11 22:00:44', 1, NULL),
(162, 22, 7, 'Unlimited', '৳', 'BDT', '84.63', 250, 365, 0, '<span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" justify;\"=\"\">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</span><br>', 'SSLCommerz', 'SSLCZ_TXN_61b9c1097bc27', NULL, NULL, '2021-12-15 04:18:49', '2021-12-15 04:18:53', 1, NULL),
(163, 22, 7, 'Unlimited', '$', 'USD', '1', 250, 365, 0, '<span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" justify;\"=\"\">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</span><br>', 'Stripe', 'txn_3K6ub5JlIV5dN9n70iNV3Ozl', 'ch_3K6ub5JlIV5dN9n70DG2D5OL', NULL, '2021-12-15 04:20:32', '2021-12-15 04:20:32', 1, NULL),
(164, 22, 7, 'Unlimited', '$', 'USD', '1', 250, 365, 0, '<span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" justify;\"=\"\">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</span><br>', 'Stripe', 'txn_3K6ubRJlIV5dN9n70sRXFljG', 'ch_3K6ubRJlIV5dN9n70ckCrcKK', NULL, '2021-12-15 04:20:54', '2021-12-15 04:20:54', 1, NULL),
(165, 22, 7, 'Unlimited', '৳', 'BDT', '84.63', 250, 365, 0, '<span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" justify;\"=\"\">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</span><br>', 'SSLCommerz', 'SSLCZ_TXN_61b9c1968d008', NULL, NULL, '2021-12-15 04:21:10', '2021-12-15 04:21:13', 1, NULL),
(166, 22, 7, 'Unlimited', '৳', 'BDT', '84.63', 250, 365, 0, '<span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" justify;\"=\"\">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</span><br>', 'SSLCommerz', 'SSLCZ_TXN_61b9c212dc758', NULL, NULL, '2021-12-15 04:23:14', '2021-12-15 04:23:18', 1, NULL),
(167, 22, 7, 'Unlimited', '৳', 'BDT', '84.63', 250, 365, 0, '<span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" justify;\"=\"\">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</span><br>', 'SSLCommerz', 'SSLCZ_TXN_61b9c2fc010c8', NULL, NULL, '2021-12-15 04:27:08', '2021-12-15 04:27:11', 1, NULL),
(168, 22, 7, 'Unlimited', '৳', 'BDT', '84.63', 250, 365, 0, '<span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" justify;\"=\"\">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</span><br>', 'SSLCommerz', 'SSLCZ_TXN_61b9c31b72a00', NULL, NULL, '2021-12-15 04:27:39', '2021-12-15 04:27:42', 1, NULL),
(169, 22, 7, 'Unlimited', '৳', 'BDT', '84.63', 250, 365, 0, '<span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" justify;\"=\"\">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</span><br>', 'SSLCommerz', 'SSLCZ_TXN_61b9c510f4116', NULL, NULL, '2021-12-15 04:36:01', '2021-12-15 04:36:04', 1, NULL),
(170, 22, 7, 'Unlimited', '৳', 'BDT', '84.63', 250, 365, 0, '<span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" justify;\"=\"\">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</span><br>', 'SSLCommerz', 'SSLCZ_TXN_61b9c58ea2995', NULL, NULL, '2021-12-15 04:38:06', '2021-12-15 04:38:09', 1, NULL),
(171, 22, 7, 'Unlimited', '৳', 'BDT', '84.63', 250, 365, 0, '<span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" justify;\"=\"\">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</span><br>', 'SSLCommerz', 'SSLCZ_TXN_61b9c5cc649ce', NULL, NULL, '2021-12-15 04:39:08', '2021-12-15 04:39:11', 1, NULL),
(172, 22, 5, 'Standard', '$', 'USD', '1', 60, 45, 25, '<ol><li>Lorem ipsum dolor sit amet<br></li><li>Lorem ipsum dolor sit ame<br></li><li>Lorem ipsum dolor sit am<br></li></ol>', 'Stripe', 'txn_3KTjT0JlIV5dN9n70jJxJUry', 'ch_3KTjT0JlIV5dN9n70b9oPU0r', NULL, '2022-02-16 03:06:31', '2022-02-16 03:06:31', 1, NULL),
(173, 22, 8, 'Basic', '$', 'USD', '1', 0, 30, 0, '<ol><li>Lorem ipsum dolor sit amet<br></li><li>Lorem ipsum dolor sit ame<br></li><li>Lorem ipsum dolor sit am<br></li></ol>', 'Free', NULL, NULL, NULL, '2022-09-21 02:11:49', '2022-09-21 02:11:49', 1, NULL),
(174, 22, 8, 'Basic', '$', 'USD', '1', 0, 30, 0, '<ol><li>Lorem ipsum dolor sit amet<br></li><li>Lorem ipsum dolor sit ame<br></li><li>Lorem ipsum dolor sit am<br></li></ol>', 'Free', NULL, NULL, NULL, '2022-09-21 02:11:52', '2022-09-21 02:11:52', 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vendor_orders`
--

CREATE TABLE `vendor_orders` (
  `id` int(191) NOT NULL,
  `user_id` int(191) NOT NULL,
  `order_id` int(191) NOT NULL,
  `qty` int(191) NOT NULL,
  `price` double NOT NULL,
  `order_number` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('pending','processing','completed','declined','on delivery') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `verifications`
--

CREATE TABLE `verifications` (
  `id` int(191) NOT NULL,
  `user_id` int(191) NOT NULL,
  `attachments` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('Pending','Verified','Declined') DEFAULT NULL,
  `text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `admin_warning` tinyint(1) NOT NULL DEFAULT 0,
  `warning_reason` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `verifications`
--

INSERT INTO `verifications` (`id`, `user_id`, `attachments`, `status`, `text`, `admin_warning`, `warning_reason`, `created_at`, `updated_at`) VALUES
(1, 13, '157096738015693932021.jpg,157096738015693932022.jpg', 'Declined', 'TEST', 0, NULL, '2019-10-13 05:49:40', '2021-12-12 17:19:55'),
(7, 13, '1667302344Screenshot2png.png', 'Verified', 'fdgdfgdf dfgdfgdf', 0, 'Check', '2021-10-19 21:32:20', '2022-11-01 18:35:29');

-- --------------------------------------------------------

--
-- Table structure for table `wishlists`
--

CREATE TABLE `wishlists` (
  `id` int(191) UNSIGNED NOT NULL,
  `user_id` int(191) UNSIGNED NOT NULL,
  `product_id` int(191) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `withdraws`
--

CREATE TABLE `withdraws` (
  `id` int(191) NOT NULL,
  `user_id` int(191) DEFAULT NULL,
  `method` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `acc_email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `iban` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `acc_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `swift` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reference` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` float DEFAULT NULL,
  `fee` float DEFAULT 0,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `status` enum('pending','completed','rejected') NOT NULL DEFAULT 'pending',
  `type` enum('user','vendor') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `withdraws`
--

INSERT INTO `withdraws` (`id`, `user_id`, `method`, `acc_email`, `iban`, `country`, `acc_name`, `address`, `swift`, `reference`, `amount`, `fee`, `created_at`, `updated_at`, `status`, `type`) VALUES
(1, 13, 'Paypal', 'fgdf@sdsa.fgfdg', NULL, NULL, NULL, NULL, NULL, 'TEST', 90, 10, '2020-11-16 10:43:25', '2020-11-16 10:44:32', 'rejected', 'vendor'),
(2, 13, 'Paypal', 'fgdf@sdsa.fgfdg', NULL, NULL, NULL, NULL, NULL, 'TEST', 90, 10, '2020-11-16 10:44:38', '2020-11-16 10:46:39', 'completed', 'vendor'),
(3, 13, 'Paypal', 'fgdf@sdsa.fgfdg', NULL, NULL, NULL, NULL, NULL, 'TEST', 90, 10, '2020-11-16 10:46:50', '2020-11-16 10:52:00', 'completed', 'vendor'),
(4, 13, 'Paypal', 'fgdf@sdsa.fgfdg', NULL, NULL, NULL, NULL, NULL, 'TEST', 90, 10, '2020-11-16 10:52:44', '2020-11-16 10:52:54', 'completed', 'vendor'),
(5, 13, 'Paypal', 'fgdf@sdsa.fgfdg', NULL, NULL, NULL, NULL, NULL, 'TEST', 90, 10, '2020-11-16 10:53:07', '2020-11-16 10:53:13', 'completed', 'vendor'),
(6, 13, 'Paypal', 'fgdf@sdsa.fgfdg', NULL, NULL, NULL, NULL, NULL, 'fdg', 90, 10, '2020-11-16 10:53:32', '2020-11-16 10:53:50', 'completed', 'user'),
(7, 13, 'Paypal', 'fgdf@sdsa.fgfdg', NULL, NULL, NULL, NULL, NULL, 'fdg', 90, 10, '2020-11-16 10:53:35', '2020-11-16 10:53:48', 'rejected', 'user'),
(8, 13, 'Paypal', 'fgdf@sdsa.fgfdg', NULL, NULL, NULL, NULL, NULL, 'fdg', 90, 10, '2020-11-16 10:53:37', '2020-11-16 10:53:45', 'completed', 'user'),
(9, 22, 'Paypal', 'amabarishdas1610@gmail.com', NULL, NULL, NULL, NULL, NULL, 'df', 33, 7, '2021-12-12 08:45:19', '2021-12-12 10:17:17', 'completed', 'user'),
(10, 22, 'Paypal', 'farhadwts@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, 90, 10, '2021-12-14 08:57:37', '2021-12-14 08:57:58', 'rejected', 'user'),
(11, 22, 'Payoneer', 'nn@g.com', NULL, NULL, NULL, NULL, NULL, NULL, 25.4, 6.6, '2021-12-25 22:14:16', '2021-12-25 22:14:16', 'pending', 'user'),
(12, 22, 'Paypal', 'shourav@gmail.com', NULL, NULL, NULL, NULL, NULL, 'fdgujrtyity', 945, 55, '2022-01-19 10:05:54', '2022-01-19 10:06:20', 'completed', 'user'),
(13, 22, 'Paypal', 'user@gmail.com', NULL, NULL, NULL, NULL, NULL, 'sdfgasesesedfg', 375, 25, '2022-03-24 04:50:56', '2022-03-24 04:50:56', 'pending', 'user');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addons`
--
ALTER TABLE `addons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`);

--
-- Indexes for table `admin_languages`
--
ALTER TABLE `admin_languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_user_conversations`
--
ALTER TABLE `admin_user_conversations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_user_messages`
--
ALTER TABLE `admin_user_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `arrival_sections`
--
ALTER TABLE `arrival_sections`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attributes`
--
ALTER TABLE `attributes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attribute_options`
--
ALTER TABLE `attribute_options`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog_categories`
--
ALTER TABLE `blog_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `childcategories`
--
ALTER TABLE `childcategories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `conversations`
--
ALTER TABLE `conversations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `counters`
--
ALTER TABLE `counters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `currencies`
--
ALTER TABLE `currencies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `deposits`
--
ALTER TABLE `deposits`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `email_templates`
--
ALTER TABLE `email_templates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `favorite_sellers`
--
ALTER TABLE `favorite_sellers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fonts`
--
ALTER TABLE `fonts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `galleries`
--
ALTER TABLE `galleries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `generalsettings`
--
ALTER TABLE `generalsettings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_tracks`
--
ALTER TABLE `order_tracks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `packages`
--
ALTER TABLE `packages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pagesettings`
--
ALTER TABLE `pagesettings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `partners`
--
ALTER TABLE `partners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment_gateways`
--
ALTER TABLE `payment_gateways`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pickups`
--
ALTER TABLE `pickups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);
ALTER TABLE `products` ADD FULLTEXT KEY `name` (`name`);
ALTER TABLE `products` ADD FULLTEXT KEY `attributes` (`attributes`);

--
-- Indexes for table `product_clicks`
--
ALTER TABLE `product_clicks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ratings`
--
ALTER TABLE `ratings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `replies`
--
ALTER TABLE `replies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reports`
--
ALTER TABLE `reports`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rewards`
--
ALTER TABLE `rewards`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `seotools`
--
ALTER TABLE `seotools`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shippings`
--
ALTER TABLE `shippings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `socialsettings`
--
ALTER TABLE `socialsettings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `social_links`
--
ALTER TABLE `social_links`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `social_providers`
--
ALTER TABLE `social_providers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `states`
--
ALTER TABLE `states`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subcategories`
--
ALTER TABLE `subcategories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscribers`
--
ALTER TABLE `subscribers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscriptions`
--
ALTER TABLE `subscriptions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_notifications`
--
ALTER TABLE `user_notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_subscriptions`
--
ALTER TABLE `user_subscriptions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vendor_orders`
--
ALTER TABLE `vendor_orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `verifications`
--
ALTER TABLE `verifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wishlists`
--
ALTER TABLE `wishlists`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `withdraws`
--
ALTER TABLE `withdraws`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `addons`
--
ALTER TABLE `addons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `admin_languages`
--
ALTER TABLE `admin_languages`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `admin_user_conversations`
--
ALTER TABLE `admin_user_conversations`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `admin_user_messages`
--
ALTER TABLE `admin_user_messages`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `arrival_sections`
--
ALTER TABLE `arrival_sections`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `attributes`
--
ALTER TABLE `attributes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `attribute_options`
--
ALTER TABLE `attribute_options`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=281;

--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `blog_categories`
--
ALTER TABLE `blog_categories`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `childcategories`
--
ALTER TABLE `childcategories`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `conversations`
--
ALTER TABLE `conversations`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `counters`
--
ALTER TABLE `counters`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=247;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `currencies`
--
ALTER TABLE `currencies`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `deposits`
--
ALTER TABLE `deposits`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=125;

--
-- AUTO_INCREMENT for table `email_templates`
--
ALTER TABLE `email_templates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `favorite_sellers`
--
ALTER TABLE `favorite_sellers`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `fonts`
--
ALTER TABLE `fonts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `galleries`
--
ALTER TABLE `galleries`
  MODIFY `id` int(191) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=341;

--
-- AUTO_INCREMENT for table `generalsettings`
--
ALTER TABLE `generalsettings`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=167;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=271;

--
-- AUTO_INCREMENT for table `order_tracks`
--
ALTER TABLE `order_tracks`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `packages`
--
ALTER TABLE `packages`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `pagesettings`
--
ALTER TABLE `pagesettings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `partners`
--
ALTER TABLE `partners`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `payment_gateways`
--
ALTER TABLE `payment_gateways`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `pickups`
--
ALTER TABLE `pickups`
  MODIFY `id` int(191) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(191) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=386;

--
-- AUTO_INCREMENT for table `product_clicks`
--
ALTER TABLE `product_clicks`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `ratings`
--
ALTER TABLE `ratings`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `replies`
--
ALTER TABLE `replies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `reports`
--
ALTER TABLE `reports`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `rewards`
--
ALTER TABLE `rewards`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `seotools`
--
ALTER TABLE `seotools`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `shippings`
--
ALTER TABLE `shippings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` int(191) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `socialsettings`
--
ALTER TABLE `socialsettings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `social_links`
--
ALTER TABLE `social_links`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `social_providers`
--
ALTER TABLE `social_providers`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `states`
--
ALTER TABLE `states`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `subcategories`
--
ALTER TABLE `subcategories`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `subscribers`
--
ALTER TABLE `subscribers`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `subscriptions`
--
ALTER TABLE `subscriptions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=144;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `user_notifications`
--
ALTER TABLE `user_notifications`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=156;

--
-- AUTO_INCREMENT for table `user_subscriptions`
--
ALTER TABLE `user_subscriptions`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=175;

--
-- AUTO_INCREMENT for table `vendor_orders`
--
ALTER TABLE `vendor_orders`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=323;

--
-- AUTO_INCREMENT for table `verifications`
--
ALTER TABLE `verifications`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `wishlists`
--
ALTER TABLE `wishlists`
  MODIFY `id` int(191) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `withdraws`
--
ALTER TABLE `withdraws`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
