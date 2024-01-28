-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Dec 11, 2023 at 01:53 PM
-- Server version: 10.6.15-MariaDB-cll-lve
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `u563657457_watan`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `password`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@admin.com', '$2y$10$qCMbfEQrSTeRicDibR9ivOqzBsDCzmYU3.ngxYzYLPsZf5ILP3QHm', 'assets/uploads/admins/23051668324991.webp', '2022-11-01 09:30:26', '2022-11-13 09:36:31'),
(12, 'Mustafa', 'mustafarm17@gmail.com', '$2y$10$SVcj0Z3CgqqnIkRqMaNf1edOwR7akzoAjaPj8YXg8OhbovwFUD8OW', NULL, '2023-10-21 12:45:12', '2023-10-21 12:45:12');

-- --------------------------------------------------------

--
-- Table structure for table `agents`
--

CREATE TABLE `agents` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `about` text DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `type` tinyint(4) NOT NULL DEFAULT 2 COMMENT '2=>"compamy & real state" 3=>"project"',
  `languages` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`languages`)),
  `password` varchar(191) NOT NULL,
  `facebook` varchar(255) DEFAULT NULL,
  `instagram` varchar(255) DEFAULT NULL,
  `twitter` varchar(255) DEFAULT NULL,
  `snapchat` varchar(255) DEFAULT NULL,
  `phone_code` varchar(255) DEFAULT NULL,
  `whatsapp` varchar(255) DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `company_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `agents`
--

INSERT INTO `agents` (`id`, `name`, `image`, `about`, `phone`, `email`, `type`, `languages`, `password`, `facebook`, `instagram`, `twitter`, `snapchat`, `phone_code`, `whatsapp`, `user_id`, `company_id`, `created_at`, `updated_at`) VALUES
(49, 'اسامه', 'storage/uploads/agents//cGhvdG9fMjAyMy0xMS0wM18yMi0yNS0xMi5qcGc=_1699520599.jpg', 'about', '012017094145', 'ahmeds@gmail.com', 2, '[\"ar\",\"dxsd\"]', '$2y$10$UySe7yeCwwn2p5Q/vhkkk.p2t6i8cLu6OB96c1JyzgCyA7wLeigny', 'facebook.com', 'instagram.com', 'twitter.com', 'snapchat.com', '+20', '1111111111', 158, 157, '2023-11-09 11:03:19', '2023-11-09 11:03:19'),
(52, 'test', 'storage/uploads/agents//SU1HXzIwMjMxMDMxXzA5MjkzMi5qcGc=_1699526868.jpg', 'vvvvvv', '1201709414', 'ahmedsss@gmail.com', 2, '[\"en\"]', '$2y$10$fpnQLae7ky5hW3lf.HN4..h1NKuxFsjczgbHw7eUpgrnli6ormE/2', NULL, NULL, NULL, NULL, '+964', '1201709414', 161, 100, '2023-11-09 12:47:48', '2023-11-09 12:47:48'),
(53, 'test', 'storage/uploads/agents//NTRkNmY2NGQzZmE4NmM2NzRhNzA1ZGEyYTlmYzM5OWMucG5n_1699528572.png', 'frr08520852580', '08520852580', 'ahmedmohamed23345@gmail.com', 2, '[\"en\",\"ar\",\"ar\",\"ar\"]', '$2y$10$.NUbrkwFUHPZNZtxBSs/yevVew9W53fkxvDEOWLtAbD4RSsQBZu0K', NULL, NULL, NULL, NULL, '+964', '08520852580', 162, 157, '2023-11-09 13:16:12', '2023-11-09 13:16:12'),
(54, 'uuu', 'storage/uploads/agents//aW1hZ2VzLmpwZWctMS5qcGc=_1699529089.jpg', 'yy', '08520852583', 'hh@gmail.com', 2, '[\"ar\",\"ar\",\"ar\",\"ar\"]', '$2y$10$iTkTSTbK2oWllfiVe.SIOOkajFHLpEyuSpnUh4x.ARelfYqZgGej2', 'b', NULL, NULL, NULL, '+964', '08520852583', 163, 157, '2023-11-09 13:24:49', '2023-11-09 13:24:49');

-- --------------------------------------------------------

--
-- Table structure for table `areas`
--

CREATE TABLE `areas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name_ar` varchar(255) DEFAULT NULL,
  `name_en` varchar(255) DEFAULT NULL,
  `name_ku` varchar(191) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `areas`
--

INSERT INTO `areas` (`id`, `name_ar`, `name_en`, `name_ku`, `image`, `created_at`, `updated_at`) VALUES
(1, 'بغداد', 'Baghdad', NULL, 'assets/uploads/area/35041661158340.webp', '2022-08-21 07:44:37', '2022-08-22 08:52:20'),
(6, 'البصرة', 'Basra', NULL, 'assets/uploads/area/47011661158443.webp', '2022-08-22 08:54:03', '2022-08-22 08:54:03'),
(15, 'بابل', 'Babel', 'Babel', 'assets/uploads/area/46081697871596.webp', '2023-10-21 08:59:56', '2023-10-21 08:59:56'),
(17, 'Chancellor Shaw', 'Benjamin Lowe', 'Florence Kirk', NULL, '2023-10-24 10:23:38', '2023-10-24 10:23:38'),
(18, 'Demetria Collier', 'Macon Potts', 'Yardley Hammond', NULL, '2023-10-24 10:24:27', '2023-10-24 10:24:27'),
(19, 'الموصل', 'Mosule', 'موصل', NULL, '2023-11-23 00:15:24', '2023-11-23 00:15:24');

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name_ar` varchar(255) DEFAULT NULL,
  `name_en` varchar(255) DEFAULT NULL,
  `name_ku` varchar(191) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `description_ar` text DEFAULT NULL,
  `description_en` text DEFAULT NULL,
  `description_ku` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `name_ar`, `name_en`, `name_ku`, `image`, `description_ar`, `description_en`, `description_ku`, `created_at`, `updated_at`) VALUES
(3, 'توصيل فوري', 'Fast Delivery', NULL, 'assets/uploads/blogs/61181661266380.png', '<p><strong>النقاط هو&nbsp;</strong></p>', '<p><em><strong>Hello World</strong></em></p>', '0', '2022-08-22 12:19:54', '2022-08-23 14:53:27'),
(4, 'تفكير فى كل ما هو جديد', 'think about all new', 'ئەسکەندەریە', 'assets/uploads/blogs/64021663529517.png', 'اى حاجه يا عم الحج', 'any thing ya basha', 'ئەسکەندەریە', '2022-09-18 21:31:57', '2022-10-25 09:39:02');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name_ar` varchar(255) NOT NULL,
  `name_en` varchar(100) DEFAULT NULL,
  `name_ko` varchar(191) DEFAULT NULL,
  `image` varchar(250) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name_ar`, `name_en`, `name_ko`, `image`, `created_at`, `updated_at`) VALUES
(14, 'مشاريع', 'Projects', NULL, 'assets/uploads/blogs/55501663231201.png', '2022-09-15 10:40:01', '2022-09-25 21:02:06'),
(15, 'شركات', 'Companies', NULL, 'assets/uploads/blogs/4501663231254.png', '2022-09-15 10:40:54', '2022-09-25 21:02:31'),
(16, 'العملاء', 'Clients', NULL, 'assets/uploads/blogs/74451663233031.png', '2022-09-15 11:10:31', '2022-09-25 21:01:28');

-- --------------------------------------------------------

--
-- Table structure for table `classification_of_ads`
--

CREATE TABLE `classification_of_ads` (
  `id` bigint(20) NOT NULL,
  `name_ar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name_en` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name_ko` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `classification_of_ads`
--

INSERT INTO `classification_of_ads` (`id`, `name_ar`, `name_en`, `name_ko`, `image`, `created_at`, `updated_at`) VALUES
(17, 'عبدو', 'abdo', 'بیر لە هەموو شتێکی نوێ بکەرەوە', '/classification_of_ads/36411664281249.webp', '2022-09-27 12:20:49', '2022-09-27 12:20:49'),
(18, 'مشروع صغير', 'small project', 'abdo ko', '/classification_of_ads/76441664281516.webp', '2022-09-27 12:25:16', '2022-09-27 12:25:16'),
(19, 'aaaaaaa', 'small projectbb', 'بیر لە هەموو شتێکی نوێ بکەرەوەbb', '/classification_of_ads/85281664368238.webp', '2022-09-28 05:13:52', '2022-11-02 14:03:44');

-- --------------------------------------------------------

--
-- Table structure for table `companies`
--

CREATE TABLE `companies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `facebook` varchar(255) DEFAULT NULL,
  `instagram` varchar(255) DEFAULT NULL,
  `twitter` varchar(255) DEFAULT NULL,
  `snapchat` varchar(191) DEFAULT NULL,
  `latitude` double DEFAULT NULL,
  `longitude` double DEFAULT NULL,
  `about_ar` text DEFAULT NULL,
  `about_en` text DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `companies`
--

INSERT INTO `companies` (`id`, `facebook`, `instagram`, `twitter`, `snapchat`, `latitude`, `longitude`, `about_ar`, `about_en`, `user_id`, `created_at`, `updated_at`) VALUES
(2, 'facebook.com', 'instagram.com', 'twitter.com', 'snapchat.com', NULL, NULL, NULL, NULL, 101, '2022-09-07 17:02:38', '2022-10-25 11:56:33'),
(3, 'https://www.facebook.com/', 'https://www.instagram.com/', 'https://www.twitter.com/', NULL, 33.20554858, 30.20554858, 'شركة هوم تاون من كبرى الشركات العاملة في قطاع العقارات، وبرزت hometown developments من بين مئات الشركات الأخرى بفضل مشروعاتها العصرية التي تراعي رغبات ومتطلبات عملائها، وتضمن توفير أقصى درجات الراحة والمتعة لهم، لذلك من الطبيعي أن تحتل مركز رائد في القطاع العقاري.', 'Hometown is one of the largest companies operating in the real estate sector, and hometown developments has emerged among hundreds of other companies thanks to its modern projects that take into account the desires and requirements of its customers, and ensure the utmost comfort and pleasure for them, so it is natural to occupy a leading position in the real estate sector.', 1, '2022-08-24 13:34:29', '2022-08-24 13:34:29'),
(34, 'facebook.com', 'instagram.com', 'twitter.com', 'snapchat.com', NULL, NULL, NULL, NULL, 4, '2022-09-18 10:31:13', '2022-09-18 10:31:13'),
(35, 'facebook.com', 'instagram.com', 'twitter.com', 'snapchat.com', NULL, NULL, NULL, NULL, 5, '2022-09-18 11:22:43', '2022-09-18 11:22:43'),
(36, 'facebook.com', 'instagram.com', 'twitter.com', 'snapchat.com', NULL, NULL, NULL, NULL, 6, '2022-09-18 12:54:36', '2022-09-18 12:54:36'),
(39, 'facebook.com', 'instagram.com', 'twitter.com', 'snapchat.com', NULL, NULL, NULL, NULL, 7, '2022-09-18 13:03:14', '2022-09-18 13:03:14'),
(40, 'facebook.com', 'instagram.com', 'twitter.com', 'snapchat.com', NULL, NULL, NULL, NULL, 9, '2022-09-18 22:35:52', '2022-10-23 11:31:21'),
(41, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10, '2022-09-18 22:36:37', '2022-09-18 22:36:37'),
(42, 'facebook.com', 'instagram.com', 'twitter.com', 'snapchat.com', NULL, NULL, NULL, NULL, 11, '2022-09-19 09:29:07', '2022-09-19 09:29:07'),
(43, 'facebook.com', 'instagram.com', 'twitter.com', 'snapchat.com', NULL, NULL, NULL, NULL, 12, '2022-09-19 09:32:42', '2022-09-19 09:32:42'),
(44, 'facebook.com', 'instagram.com', 'twitter.com', 'snapchat.com', NULL, NULL, NULL, NULL, 13, '2022-09-19 09:33:13', '2022-09-19 09:33:13'),
(45, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14, '2022-09-19 09:33:54', '2022-09-19 09:33:54'),
(46, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15, '2022-09-19 09:57:41', '2022-09-19 09:57:41'),
(47, 'facebook.com', 'instagram.com', 'twitter.com', 'snapchat.com', NULL, NULL, NULL, NULL, 20, '2022-09-22 10:09:34', '2022-09-22 10:09:34'),
(48, 'facebook.com', 'instagram.com', 'twitter.com', 'snapchat.com', NULL, NULL, NULL, NULL, 21, '2022-09-25 10:21:41', '2022-09-25 10:21:41'),
(49, 'facebook.com', 'instagram.com', 'twitter.com', 'snapchat.com', NULL, NULL, NULL, NULL, 23, '2022-09-29 11:51:29', '2022-09-29 11:51:29'),
(50, 'facebook.com', 'instagram.com', 'twitter.com', 'snapchat.com', NULL, NULL, NULL, NULL, 31, '2022-10-10 13:09:29', '2022-10-10 13:09:29'),
(51, 'facebook.com', 'instagram.com', 'twitter.com', 'snapchat.com', NULL, NULL, NULL, NULL, 52, '2022-10-11 16:11:30', '2022-10-11 16:11:30'),
(63, 'facebook.com', 'instagram.com', 'twitter.com', 'snapchat.com', NULL, NULL, NULL, NULL, 87, '2022-10-23 11:39:58', '2022-10-23 11:41:18'),
(64, 'facebook.com', 'instagram.com', 'twitter.com', 'snapchat.com', NULL, NULL, NULL, NULL, 98, '2022-10-25 14:12:27', '2022-10-25 14:12:27'),
(65, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 99, '2022-10-25 14:22:57', '2022-10-25 14:22:57'),
(67, 'facebook.com', 'instagram.com', 'twitter.com', 'snapchat.com', 2.222222, 5.555555, NULL, NULL, 103, '2022-10-31 09:03:05', '2022-10-31 09:03:05'),
(68, 'facebook.com', 'instagram.com', 'twitter.com', 'snapchat.com', 2.222222, 5.555555, NULL, NULL, 105, '2022-10-31 09:36:59', '2022-10-31 09:36:59'),
(69, 'facebook.com', 'instagram.com', 'twitter.com', 'snapchat.com', NULL, NULL, NULL, NULL, 109, '2022-11-16 09:46:14', '2022-11-16 09:46:14'),
(70, 'facebook.com', 'instagram.com', 'twitter.com', 'snapchat.com', NULL, NULL, NULL, NULL, 100, '2022-11-16 09:51:00', '2022-11-16 09:51:00'),
(71, NULL, NULL, NULL, NULL, 30.469981396221286, 31.18743896484375, NULL, NULL, 111, '2022-11-16 10:19:55', '2022-11-16 10:19:55'),
(72, NULL, NULL, NULL, NULL, 30.45577676937485, 31.18743896484375, NULL, NULL, 112, '2022-11-16 10:37:24', '2022-11-16 10:37:24'),
(73, NULL, NULL, NULL, NULL, 30.105923751427014, 31.245827261533293, NULL, NULL, 113, '2022-11-27 09:24:31', '2022-11-27 09:24:31'),
(74, NULL, NULL, NULL, NULL, 29.98833218202948, 31.24376917177915, NULL, NULL, 114, '2022-11-27 09:38:57', '2022-11-27 09:38:57'),
(75, 'ff', 'inin', 'ttt', 'sss', 29.962382261558773, 31.072121080136753, NULL, NULL, 115, '2022-11-27 09:43:47', '2022-11-27 09:43:47'),
(76, NULL, NULL, NULL, NULL, 30.351938860865324, 31.258866947852766, NULL, NULL, 116, '2022-11-27 10:21:05', '2022-11-27 10:21:05'),
(77, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 117, '2022-11-29 13:01:52', '2022-11-29 13:01:52'),
(78, NULL, NULL, NULL, NULL, 30.58059899608775, 31.01676332438649, NULL, NULL, 119, '2022-12-04 14:35:05', '2022-12-04 14:35:05'),
(79, NULL, NULL, NULL, NULL, 30.57108221531894, 31.021750982553698, NULL, NULL, 120, '2022-12-04 14:56:03', '2022-12-04 14:56:03'),
(80, NULL, NULL, NULL, NULL, 30.561100198047107, 31.00611400019173, NULL, NULL, 122, '2022-12-12 10:39:08', '2022-12-12 10:39:08'),
(81, NULL, NULL, NULL, NULL, 30.566555613831454, 31.008136023772977, NULL, NULL, 123, '2022-12-12 11:10:43', '2022-12-12 11:10:43'),
(83, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 128, '2023-01-09 15:19:43', '2023-01-09 15:19:43'),
(87, 'facebook.com', NULL, NULL, NULL, 37.420245482357515, -122.05423528497869, NULL, NULL, 141, '2023-09-03 10:11:57', '2023-09-03 10:11:57'),
(89, 'facebook.com', 'instagram.com', 'twitter.com', 'snapchat.com', NULL, NULL, NULL, NULL, 144, '2023-10-09 14:35:33', '2023-10-09 14:35:33'),
(106, 'facebook.com', 'instagram.com', 'twitter.com', 'snapchat.com', 0, 0, NULL, NULL, 171, '2023-11-12 09:27:44', '2023-11-12 09:27:44'),
(111, 'facebook.com', 'instagram.com', 'twitter.com', 'snapchat.com', 0, 0, NULL, NULL, 176, '2023-11-12 10:02:41', '2023-11-12 10:02:41');

-- --------------------------------------------------------

--
-- Table structure for table `contact_us`
--

CREATE TABLE `contact_us` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contact_us`
--

INSERT INTO `contact_us` (`id`, `name`, `email`, `subject`, `message`, `created_at`, `updated_at`) VALUES
(1, 'محمد خالد', 'ahmed@gmail.com', 'استفسار', 'اريد طريقة الدخول للتطبيق من فضلكم', '2022-09-14 11:34:38', '2022-09-14 11:34:38'),
(2, 'Osama Arafa', 'osamaarafa15@gmail.com', 'subject', 'can you telll me about servives', '2022-09-29 15:07:13', '2022-09-29 15:07:13'),
(3, 'Osama Arafa', 'osamaarafa15@gmail.com', 'subject', 'can you telll me about servives', '2022-09-29 18:19:47', '2022-09-29 18:19:47'),
(4, 'Osama Arafa', 'osamaarafa15@gmail.com', NULL, 'mm', '2022-09-29 18:20:28', '2022-09-29 18:20:28'),
(6, 'Osama Arafa', 'osamaarafa15@gmail.com', 'subject', 'can you telll me about servives', '2022-10-01 11:20:08', '2022-10-01 11:20:08'),
(7, 'Ahmad Yehia Kandeel', 'yehia@gmail.com', 'first time call contact us apis', 'let\'s have a party 🎉🥳', '2022-10-01 12:52:55', '2022-10-01 12:52:55'),
(8, 'Ahmad Yehia', 'yehia@gmail.com', 'solving error of the state', 'انجز با واشتغل 😡👊', '2022-10-01 13:02:52', '2022-10-01 13:02:52'),
(18, 'Osama Arafa', 'osamaarafa15@gmail.com', 'subject', 'can you telll me about servives', '2022-11-17 09:48:54', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `files_of_projects_and_posts`
--

CREATE TABLE `files_of_projects_and_posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `project_id` bigint(20) UNSIGNED DEFAULT NULL,
  `post_id` bigint(20) UNSIGNED DEFAULT NULL,
  `attachment` varchar(255) DEFAULT NULL,
  `type` enum('image','video','file') NOT NULL DEFAULT 'image',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `files_of_projects_and_posts`
--

INSERT INTO `files_of_projects_and_posts` (`id`, `project_id`, `post_id`, `attachment`, `type`, `created_at`, `updated_at`) VALUES
(1, 2, NULL, 'assets/uploads/projects/1.png', 'image', NULL, NULL),
(2, 2, NULL, 'assets/uploads/projects/2.png', 'image', NULL, NULL),
(3, 2, NULL, 'assets/uploads/projects/3.png', 'image', NULL, NULL),
(4, 2, NULL, 'assets/uploads/projects/4.png', 'image', NULL, NULL),
(5, 2, NULL, 'assets/uploads/projects/5.png', 'file', NULL, NULL),
(6, 2, NULL, 'assets/uploads/projects/6.png', 'image', NULL, NULL),
(7, 2, NULL, 'assets/uploads/projects/99.mp4', 'video', NULL, NULL),
(8, 2, 1, 'assets/uploads/projects/6.png', 'image', NULL, NULL),
(9, 2, 1, 'assets/uploads/projects/5.png', 'file', NULL, NULL),
(10, NULL, 8, 'storage/uploads/post/images//U2Vla1BuZy5jb21fc21va2UtZWZmZWN0LXBuZ181NDAzMzcucG5n_1663835209.png', 'image', '2022-09-22 10:26:49', '2022-09-22 10:26:49'),
(11, NULL, 10, 'storage/uploads/post/images//U2Vla1BuZy5jb21fc21va2UtZWZmZWN0LXBuZ181NDAzMzcucG5n_1663839621.png', 'image', '2022-09-22 11:40:21', '2022-09-22 11:40:21'),
(12, NULL, 15, 'storage/uploads/post/images//aXRlbV9pbWFnZTMucG5n_1664019647.png', 'image', '2022-09-24 13:40:47', '2022-09-24 13:40:47'),
(13, NULL, 15, 'storage/uploads/post/images//aXRlbV9pbWFnZTIucG5n_1664019647.png', 'image', '2022-09-24 13:40:47', '2022-09-24 13:40:47'),
(14, NULL, 16, 'storage/uploads/post/images//aXRlbV9pbWFnZTMucG5n_1664025102.png', 'image', '2022-09-24 15:11:42', '2022-09-24 15:11:42'),
(15, NULL, 16, 'storage/uploads/post/images//aXRlbV9pbWFnZTIucG5n_1664025102.png', 'image', '2022-09-24 15:11:42', '2022-09-24 15:11:42'),
(16, NULL, 17, 'storage/uploads/post/images//aXRlbV9pbWFnZTMucG5n_1664026540.png', 'image', '2022-09-24 15:35:40', '2022-09-24 15:35:40'),
(17, NULL, 17, 'storage/uploads/post/images//aXRlbV9pbWFnZTIucG5n_1664026540.png', 'image', '2022-09-24 15:35:40', '2022-09-24 15:35:40'),
(18, NULL, 18, 'storage/uploads/post/images//aXRlbV9pbWFnZTMucG5n_1664027118.png', 'image', '2022-09-24 15:45:18', '2022-09-24 15:45:18'),
(19, NULL, 18, 'storage/uploads/post/images//aXRlbV9pbWFnZTIucG5n_1664027118.png', 'image', '2022-09-24 15:45:18', '2022-09-24 15:45:18'),
(20, NULL, 19, 'storage/uploads/post/images//U2Vla1BuZy5jb21fc21va2UtZWZmZWN0LXBuZ181NDAzMzcucG5n_1664115281.png', 'image', '2022-09-25 16:14:41', '2022-09-25 16:14:41'),
(21, NULL, 20, 'storage/uploads/post/images//U2Vla1BuZy5jb21fc21va2UtZWZmZWN0LXBuZ181NDAzMzcucG5n_1664115300.png', 'image', '2022-09-25 16:15:00', '2022-09-25 16:15:00'),
(22, NULL, 20, 'storage/uploads/post/images//U2Vla1BuZy5jb21fc21va2UtZWZmZWN0LXBuZ181NDAzMzcucG5n_1664115300.png', 'image', '2022-09-25 16:15:00', '2022-09-25 16:15:00'),
(23, 15, NULL, 'storage/uploads/project/images//U2Vla1BuZy5jb21fc21va2UtZWZmZWN0LXBuZ181NDAzMzcgKDEpLnBuZw==_1664276515.png', 'image', '2022-09-27 13:01:55', '2022-09-27 13:01:55'),
(24, 16, NULL, 'https://www.youtube.com/watch?v=w6wV_KRRFMk', 'video', '2022-09-27 13:45:52', '2022-09-27 13:45:52'),
(25, 16, NULL, 'https://www.youtube.com/watch?v=vmFA1Myamf4', 'video', '2022-09-27 13:45:52', '2022-09-27 13:45:52'),
(26, 17, NULL, 'storage/uploads/project/images//U2Vla1BuZy5jb21fc21va2UtZWZmZWN0LXBuZ181NDAzMzcgKDEpLnBuZw==_1664279153.png', 'image', '2022-09-27 13:45:53', '2022-09-27 13:45:53'),
(27, 17, NULL, 'https://www.youtube.com/watch?v=w6wV_KRRFMk', 'video', '2022-09-27 13:45:53', '2022-09-27 13:45:53'),
(28, 17, NULL, 'https://www.youtube.com/watch?v=vmFA1Myamf4', 'video', '2022-09-27 13:45:53', '2022-09-27 13:45:53'),
(36, NULL, 24, 'storage/uploads/post/images//U2Vla1BuZy5jb21fc21va2UtZWZmZWN0LXBuZ181NDAzMzcucG5n_1665304339.png', 'image', '2022-10-09 10:32:19', '2022-10-09 10:32:19'),
(37, NULL, 29, 'storage/uploads/post/images//YWdlbmN5LnBuZw==_1665925139.png', 'image', '2022-10-16 14:58:59', '2022-10-16 14:58:59'),
(38, NULL, 32, 'post/images//72181666766059.webp', 'image', '2022-10-26 08:34:19', '2022-10-26 08:34:19'),
(39, NULL, 33, 'post/images//64371666766307.webp', 'image', '2022-10-26 08:38:28', '2022-10-26 08:38:28'),
(40, NULL, 34, 'storage/uploads/post/videos//dmlkZW9wbGF5YmFjay53ZWJt_1666769477.webm', 'video', '2022-10-26 09:31:17', '2022-10-26 09:31:17'),
(41, NULL, 35, 'post/images//47281666777799.webp', 'image', '2022-10-26 11:49:59', '2022-10-26 11:49:59'),
(42, NULL, 35, 'post/images//83321666777799.webp', 'image', '2022-10-26 11:49:59', '2022-10-26 11:49:59'),
(43, NULL, 35, 'post/images//35401666777799.webp', 'image', '2022-10-26 11:49:59', '2022-10-26 11:49:59'),
(44, NULL, 35, 'post/images//5211666777799.webp', 'image', '2022-10-26 11:49:59', '2022-10-26 11:49:59'),
(45, NULL, 35, 'storage/uploads/post/videos//Z3JlZW5faG9ybmV0XzY2Ni0yMDIxMDYxOS0wMDAxLm1wNA==_1666777799.mp4', 'video', '2022-10-26 11:49:59', '2022-10-26 11:49:59'),
(46, NULL, 36, 'post/images//46431666782074.webp', 'image', '2022-10-26 13:01:14', '2022-10-26 13:01:14'),
(47, NULL, 36, 'post/images//80031666782074.webp', 'image', '2022-10-26 13:01:14', '2022-10-26 13:01:14'),
(48, NULL, 38, 'post/images//93661666782074.webp', 'image', '2022-10-26 13:01:14', '2022-10-26 13:01:14'),
(49, NULL, 37, 'post/images//47601666782074.webp', 'image', '2022-10-26 13:01:14', '2022-10-26 13:01:14'),
(50, NULL, 38, 'storage/uploads/post/videos//MTQxNC5tcDQ=_1666782074.mp4', 'video', '2022-10-26 13:01:14', '2022-10-26 13:01:14'),
(51, NULL, 37, 'storage/uploads/post/videos//dmlkZW9wbGF5YmFjay53ZWJt_1666791411.webm', 'video', '2022-10-26 15:36:51', '2022-10-26 15:36:51'),
(57, NULL, 43, 'post/images//2601666876507.webp', 'image', '2022-10-27 15:15:07', '2022-10-27 15:15:07'),
(58, NULL, 43, 'post/images//27801666877369.webp', 'image', '2022-10-27 15:29:29', '2022-10-27 15:29:29'),
(59, NULL, 43, 'post/images//45911666877470.webp', 'image', '2022-10-27 15:31:10', '2022-10-27 15:31:10'),
(60, NULL, 43, 'post/images//28441666877485.webp', 'image', '2022-10-27 15:31:25', '2022-10-27 15:31:25'),
(61, NULL, 46, 'post/file//28331667111670.webp', 'image', '2022-10-30 08:34:30', '2022-10-30 08:34:30'),
(62, NULL, 46, 'post/file//97201667111670.webp', 'image', '2022-10-30 08:34:30', '2022-10-30 08:34:30'),
(63, NULL, 47, 'post/file//93521667111857.webp', 'file', '2022-10-30 08:37:37', '2022-10-30 08:37:37'),
(64, NULL, 47, 'post/file//10891667111857.webp', 'file', '2022-10-30 08:37:37', '2022-10-30 08:37:37'),
(65, NULL, 48, 'post/images//37161667119558.webp', 'image', '2022-10-30 10:45:58', '2022-10-30 10:45:58'),
(66, NULL, 48, 'post/images//39461667119558.webp', 'image', '2022-10-30 10:45:58', '2022-10-30 10:45:58'),
(67, NULL, 48, 'post/file//5921667119558.webp', 'file', '2022-10-30 10:45:58', '2022-10-30 10:45:58'),
(68, NULL, 48, 'post/file//43921667119558.webp', 'file', '2022-10-30 10:45:58', '2022-10-30 10:45:58'),
(72, NULL, 69, 'post/images//97241667136390.webp', 'image', '2022-10-30 15:26:30', '2022-10-30 15:26:30'),
(73, NULL, 77, 'post/images//25101667138651.webp', 'image', '2022-10-30 16:04:11', '2022-10-30 16:04:11'),
(74, NULL, 79, 'post/images//55231667139309.webp', 'image', '2022-10-30 16:15:09', '2022-10-30 16:15:09'),
(75, NULL, 79, 'post/images//27201667139309.webp', 'image', '2022-10-30 16:15:10', '2022-10-30 16:15:10'),
(76, NULL, 80, 'post/images//90041667140393.webp', 'image', '2022-10-30 16:33:13', '2022-10-30 16:33:13'),
(77, NULL, 80, 'storage/uploads/post/videos//aW1hZ2VfcGlja2VyNzEyODQyMjg3ODg4NDY5ODg2MC5tcDQ=_1667140393.mp4', 'video', '2022-10-30 16:33:13', '2022-10-30 16:33:13'),
(78, NULL, 81, 'post/images//65341667140896.webp', 'image', '2022-10-30 16:41:36', '2022-10-30 16:41:36'),
(80, NULL, 81, 'post/images//14181667140897.webp', 'image', '2022-10-30 16:41:37', '2022-10-30 16:41:37'),
(82, NULL, 82, 'post/images//14091667198715.webp', 'image', '2022-10-31 08:45:15', '2022-10-31 08:45:15'),
(83, NULL, 82, 'post/images//73841667198715.webp', 'image', '2022-10-31 08:45:15', '2022-10-31 08:45:15'),
(84, NULL, 82, 'post/images//59321667198715.webp', 'image', '2022-10-31 08:45:15', '2022-10-31 08:45:15'),
(85, NULL, 82, 'post/images//41631667198715.webp', 'image', '2022-10-31 08:45:16', '2022-10-31 08:45:16'),
(86, NULL, 82, 'storage/uploads/post/videos//aW1hZ2VfcGlja2VyMjA5NTM0NzI2MjAzMTEwOTEzOC5tcDQ=_1667198716.mp4', 'video', '2022-10-31 08:45:16', '2022-10-31 08:45:16'),
(96, 54, NULL, 'post/images//26071667305906.webp', 'image', '2022-11-01 14:31:46', '2022-11-01 14:31:46'),
(97, 54, NULL, 'post/images//44811667305906.webp', 'image', '2022-11-01 14:31:46', '2022-11-01 14:31:46'),
(98, 54, NULL, 'post/images//76321667305906.webp', 'image', '2022-11-01 14:31:46', '2022-11-01 14:31:46'),
(99, 54, NULL, 'storage/uploads/projects/videos//aW1hZ2VfcGlja2VyODU4MjAxNzI4MjQxMjA5NDk0Mi5tcDQ=_1667305906.mp4', 'video', '2022-11-01 14:31:46', '2022-11-01 14:31:46'),
(100, 54, NULL, 'post/file//59691667305906.webp', 'file', '2022-11-01 14:31:47', '2022-11-01 14:31:47'),
(101, 54, NULL, 'post/file//62851667305907.webp', 'file', '2022-11-01 14:31:47', '2022-11-01 14:31:47'),
(102, 55, NULL, 'post/images//63011667307888.webp', 'image', '2022-11-01 15:04:51', '2022-11-01 15:04:51'),
(103, 55, NULL, 'post/file//28511667307891.webp', 'file', '2022-11-01 15:04:54', '2022-11-01 15:04:54'),
(109, NULL, 81, 'storage/uploads/projects/videos//aW1hZ2VfcGlja2VyODY2MjY4MjExMjMzODkzODQ5OC5tcDQ=_1667727216.mp4', 'video', '2022-11-06 11:33:36', '2022-11-06 11:33:36'),
(111, 65, NULL, 'post/images//99801667740984.webp', 'image', '2022-11-06 15:23:05', '2022-11-06 15:23:05'),
(112, 65, NULL, 'post/file//36251667740985.webp', 'file', '2022-11-06 15:23:05', '2022-11-06 15:23:05'),
(114, 66, NULL, 'post/images//78891667803023.webp', 'image', '2022-11-07 08:37:03', '2022-11-07 08:37:03'),
(115, 66, NULL, 'post/images//96621667803023.webp', 'image', '2022-11-07 08:37:03', '2022-11-07 08:37:03'),
(116, 66, NULL, 'post/images//83371667803023.webp', 'image', '2022-11-07 08:37:03', '2022-11-07 08:37:03'),
(117, 66, NULL, 'post/images//15321667803023.webp', 'image', '2022-11-07 08:37:03', '2022-11-07 08:37:03'),
(118, 66, NULL, 'storage/uploads/projects/videos//aW1hZ2VfcGlja2VyNjY1ODM0OTg4NTcyOTU5OTQ2OC5tcDQ=_1667803023.mp4', 'video', '2022-11-07 08:37:03', '2022-11-07 08:37:03'),
(119, 66, NULL, 'post/file//1221667803023.webp', 'file', '2022-11-07 08:37:04', '2022-11-07 08:37:04'),
(120, 67, NULL, 'post/images//14851667804271.webp', 'image', '2022-11-07 08:57:51', '2022-11-07 08:57:51'),
(121, 67, NULL, 'storage/uploads/projects/videos//aW1hZ2VfcGlja2VyOTc5NzM3MDM4NDk2MjY0MjYubXA0_1667804271.mp4', 'video', '2022-11-07 08:57:51', '2022-11-07 08:57:51'),
(122, 67, NULL, 'post/file//91641667804271.webp', 'file', '2022-11-07 08:57:51', '2022-11-07 08:57:51'),
(123, 65, NULL, 'projects/images//24431667829450.webp', 'image', '2022-11-07 15:57:30', '2022-11-07 15:57:30'),
(124, 65, NULL, 'storage/uploads/projects/videos//aW1hZ2VfcGlja2VyNzE3ODE1ODYwMjc2MDk4MjA3MS5tcDQ=_1667829450.mp4', 'video', '2022-11-07 15:57:30', '2022-11-07 15:57:30'),
(125, 65, NULL, 'post/file//14151667829450.webp', 'file', '2022-11-07 15:57:30', '2022-11-07 15:57:30'),
(126, NULL, 86, 'post/images//72361668070250.webp', 'image', '2022-11-10 10:50:50', '2022-11-10 10:50:50'),
(127, NULL, 86, 'storage/uploads/post/videos//aW1hZ2VfcGlja2VyNjA2NjEwMTIwNjIwNTA1MzY2MS5tcDQ=_1668070250.mp4', 'video', '2022-11-10 10:50:50', '2022-11-10 10:50:50'),
(128, NULL, 87, 'post/images//3811670843054.webp', 'image', '2022-12-12 13:04:14', '2022-12-12 13:04:14'),
(129, NULL, 87, 'storage/uploads/post/videos//aW1hZ2VfcGlja2VyNzg2ODkzMzk4NDg3Nzc2NjA5OC5tcDQ=_1670843054.mp4', 'video', '2022-12-12 13:04:14', '2022-12-12 13:04:14'),
(130, NULL, 88, 'post/images//30871672729392.webp', 'image', '2023-01-03 09:03:12', '2023-01-03 09:03:12'),
(131, NULL, 88, 'post/images//64391672729392.webp', 'image', '2023-01-03 09:03:12', '2023-01-03 09:03:12'),
(132, NULL, 89, 'post/images//88761672747752.webp', 'image', '2023-01-03 14:09:12', '2023-01-03 14:09:12'),
(133, NULL, 90, 'post/images//8951672753375.webp', 'image', '2023-01-03 15:42:56', '2023-01-03 15:42:56'),
(134, NULL, 90, 'storage/uploads/post/videos//aW1hZ2VfcGlja2VyNzA2MDU0NzI1NTQzODkxMDI5Ny5tcDQ=_1672753376.mp4', 'video', '2023-01-03 15:42:56', '2023-01-03 15:42:56'),
(135, NULL, 91, 'post/images//37991673253155.webp', 'image', '2023-01-09 10:32:36', '2023-01-09 10:32:36'),
(136, NULL, 91, 'storage/uploads/post/videos//aW1hZ2VfcGlja2VyMjQyMzcwNTM5OTA1MzkxMDM3Mi5tcDQ=_1673253156.mp4', 'video', '2023-01-09 10:32:36', '2023-01-09 10:32:36'),
(137, NULL, 92, 'post/images//65181693065980.webp', 'image', '2023-08-26 18:06:20', '2023-08-26 18:06:20'),
(138, NULL, 92, 'post/images//98771693065980.webp', 'image', '2023-08-26 18:06:20', '2023-08-26 18:06:20'),
(139, NULL, 93, 'post/images//91301693730090.webp', 'image', '2023-09-03 10:34:50', '2023-09-03 10:34:50'),
(140, NULL, 93, 'post/images//9051693730090.webp', 'image', '2023-09-03 10:34:51', '2023-09-03 10:34:51'),
(141, NULL, 99, 'post/images//42401696850848.webp', 'image', '2023-10-09 13:27:28', '2023-10-09 13:27:28'),
(142, NULL, 103, 'post/images//1351697457037.webp', 'image', '2023-10-16 13:50:37', '2023-10-16 13:50:37'),
(143, NULL, 104, 'post/images//58231697459266.webp', 'image', '2023-10-16 14:27:46', '2023-10-16 14:27:46'),
(144, NULL, 105, 'post/images//81131697463614.webp', 'image', '2023-10-16 15:40:14', '2023-10-16 15:40:14'),
(145, NULL, 106, 'post/images//78221697464428.webp', 'image', '2023-10-16 15:53:49', '2023-10-16 15:53:49'),
(146, NULL, 107, 'post/images//45011697872221.webp', 'image', '2023-10-21 09:10:21', '2023-10-21 09:10:21'),
(147, NULL, 107, 'post/images//56141697872221.webp', 'image', '2023-10-21 09:10:22', '2023-10-21 09:10:22'),
(148, NULL, 108, 'post/images//58261698063438.webp', 'image', '2023-10-23 14:17:18', '2023-10-23 14:17:18'),
(149, NULL, 109, 'post/images//70081699254658.webp', 'image', '2023-11-06 09:10:58', '2023-11-06 09:10:58'),
(150, NULL, 110, 'post/images//30781699254833.webp', 'image', '2023-11-06 09:13:53', '2023-11-06 09:13:53'),
(151, NULL, 111, 'post/images//93421699256218.webp', 'image', '2023-11-06 09:36:58', '2023-11-06 09:36:58'),
(152, NULL, 112, 'post/images//74731699271049.webp', 'image', '2023-11-06 13:44:09', '2023-11-06 13:44:09'),
(153, NULL, 113, 'post/images//40021699273637.webp', 'image', '2023-11-06 14:27:17', '2023-11-06 14:27:17'),
(154, NULL, 114, 'post/images//11231699274764.webp', 'image', '2023-11-06 14:46:04', '2023-11-06 14:46:04'),
(155, NULL, 114, 'post/images//48951699274764.webp', 'image', '2023-11-06 14:46:04', '2023-11-06 14:46:04'),
(156, NULL, 115, 'post/images//35271699274858.webp', 'image', '2023-11-06 14:47:38', '2023-11-06 14:47:38'),
(157, NULL, 116, 'post/images//64391699275724.webp', 'image', '2023-11-06 15:02:04', '2023-11-06 15:02:04'),
(158, NULL, 117, 'post/images//94831699341901.webp', 'image', '2023-11-07 09:25:01', '2023-11-07 09:25:01'),
(159, NULL, 118, 'post/images//53741699429916.webp', 'image', '2023-11-08 09:51:56', '2023-11-08 09:51:56'),
(160, NULL, 119, 'post/images//3561699430562.webp', 'image', '2023-11-08 10:02:42', '2023-11-08 10:02:42'),
(161, NULL, 120, 'post/images//84891699430636.webp', 'image', '2023-11-08 10:03:56', '2023-11-08 10:03:56'),
(162, NULL, 121, 'post/images//7261699449662.webp', 'image', '2023-11-08 15:21:02', '2023-11-08 15:21:02'),
(163, NULL, 122, 'post/images//37731699450786.webp', 'image', '2023-11-08 15:39:47', '2023-11-08 15:39:47'),
(164, NULL, 123, 'post/images//53961699451289.webp', 'image', '2023-11-08 15:48:09', '2023-11-08 15:48:09'),
(165, NULL, 124, 'post/images//74401699513029.webp', 'image', '2023-11-09 08:57:09', '2023-11-09 08:57:09'),
(166, NULL, 125, 'post/images//62611701175566.webp', 'image', '2023-11-28 14:46:06', '2023-11-28 14:46:06'),
(167, NULL, 126, 'post/images//20621702123800.webp', 'image', '2023-12-09 14:10:00', '2023-12-09 14:10:00');

-- --------------------------------------------------------

--
-- Table structure for table `firebase_tokens`
--

CREATE TABLE `firebase_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `token` text DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `software_type` enum('ios','android','web') DEFAULT 'android',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `firebase_tokens`
--

INSERT INTO `firebase_tokens` (`id`, `token`, `user_id`, `software_type`, `created_at`, `updated_at`) VALUES
(1, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOlwvXC90YWh0d2xhMjhoYS5jb21cL2FwaVwvYXV0aFwvcmVnaXN0ZXIiLCJpYXQiOjE2NjU0MDA5MzUsIm5iZiI6MTY2NTQwMDkzNSwianRpIjoiTzBBRkE5QzMyVUtDNEpDQSIsInN1YiI6MTEzLCJwcnYiOiIyM2JkNWM4OTQ5ZjYwMGFkYjM5ZTcwMWM0MDA4NzJkYjdhNTk3NmY3In0.W1rMpJC0HYP0zSp6pHw0_SPnIk_p5ayyo9HKtkPrwSE', 3, 'android', '2022-10-23 15:29:22', '2022-10-23 15:29:22'),
(2, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOlwvXC90YWh0d2xhMjhoYS5jb21cL2FwaVwvYXV0aFwvcmVnaXN0ZXIiLCJpYXQiOjE2NjU0MDA5MzUsIm5iZiI6MTY2NTQwMDkzNSwianRpIjoiTzBBRkE5QzMyVUtDNEpDQSIsInN1YiI6MTEzLCJwcnYiOiIyM2JkNWM4OTQ5ZjYwMGFkYjM5ZTcwMWM0MDA4NzJkYjdhNTk3NmY3In0.W1rMpJC0HYP0zSp6pHw0_SPnIk_p5ayyo9HKtkPrwSE', 85, 'android', '2022-10-23 15:29:22', '2022-10-23 15:29:22'),
(3, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwczpcL1wvd2F0YW4ubW90YXdlcm9uLmNvbVwvYXBpXC9hdXRoXC9sb2dpbiIsImlhdCI6MTY2ODkzMjQ4MCwibmJmIjoxNjY4OTMyNDgwLCJqdGkiOiJrUWZiU2VpeDhCa01vakR6Iiwic3ViIjoxMDYsInBydiI6IjIzYmQ1Yzg5NDlmNjAwYWRiMzllNzAxYzQwMDg3MmRiN2E1OTc2ZjcifQ.-SLo3LPMoOf_LMdJk4BHRdOW_pgbG8kMcJGJS9NKvok', 106, 'android', '2022-11-22 10:21:41', '2022-11-22 10:21:41'),
(4, 'dBIl-_g1SgG5Wrvym_IrgO:APA91bGgaDthNnIFhxpAZF_szwIIcXCXrleAZ9rr9EI6cnGgMEFRE8qk3oAc_akZBlSd4pRnxMb8b6GfUvp8TVaZS8qGXMV0HE6LVj6bb4sIimpfX6hCrN0xXgloTNm1zHebmBa6QAat', 100, 'android', '2022-11-22 10:27:44', '2022-11-22 10:27:44'),
(5, 'd4IVA9k6QwaZekYFrg3_Me:APA91bEZLv3NlxwR09QKrO3wkiamwnc9JufvgkWTcJRb68vyxMAkUIUQ_luXPTSWPeSLUp7qIsyu6atGSviAv5A76G6PGEqxk3u4UCa_o8JTUpQ63KHK55aLdMdAv54PUJcRyfOcIB-3', 100, 'android', '2022-11-22 13:40:58', '2022-11-22 13:40:58'),
(6, 'cY3HKxUZRdaHVdfFG4p-17:APA91bG_Nc4-XmL39neNvxgAH6t-PblV5B-Y2rRMFZvPzRhJfD70JagDLclUqIb7-idVqoPJwd2Dv7h-Q_UVqQrXxw4jrXQ7imcwiLRKXGbhf0OgDDfRnrjwLeOJnliId2lo4FUR204l', 100, 'android', '2022-11-24 08:57:37', '2022-11-24 08:57:37'),
(7, 'cM9qrFuXTbifmKiheAadky:APA91bEQ4sMOB4Pz63P68Ihfbd3JTWFrTiL0lK2AD6rl7W7ribOlfwbl6o_Y71Jmi0yiFhZWXDHdCvb-qLSYuFXSCdRk05rcEmn4qsNZiCuUFfYT7Zn-PUf2TU0vPBmmA4bqv44LhrJG', 100, 'android', '2022-11-26 09:15:15', '2022-11-26 09:15:15'),
(8, 'cY3HKxUZRdaHVdfFG4p-17:APA91bG_Nc4-XmL39neNvxgAH6t-PblV5B-Y2rRMFZvPzRhJfD70JagDLclUqIb7-idVqoPJwd2Dv7h-Q_UVqQrXxw4jrXQ7imcwiLRKXGbhf0OgDDfRnrjwLeOJnliId2lo4FUR204l', 113, 'android', '2022-11-27 09:27:41', '2022-11-27 09:27:41'),
(9, 'cY3HKxUZRdaHVdfFG4p-17:APA91bG_Nc4-XmL39neNvxgAH6t-PblV5B-Y2rRMFZvPzRhJfD70JagDLclUqIb7-idVqoPJwd2Dv7h-Q_UVqQrXxw4jrXQ7imcwiLRKXGbhf0OgDDfRnrjwLeOJnliId2lo4FUR204l', 114, 'android', '2022-11-27 09:40:54', '2022-11-27 09:40:54'),
(10, 'cUSsq6hVQAGQoxZSxDGADH:APA91bG2O4N3G3EcwXL4nyx8L0CtXlhar6GIIn6BRF6A80KvGBv2UC42fx8oUFjyjWDtk5uCkutMfp7tE5oZONoI50j6GHUvJWizfrYZOU3HAHO79kS8szPwvWG5jfZNQAh3H_rKc5kx', 100, 'android', '2022-11-27 09:56:33', '2022-11-27 09:56:33'),
(11, 'cY3HKxUZRdaHVdfFG4p-17:APA91bG_Nc4-XmL39neNvxgAH6t-PblV5B-Y2rRMFZvPzRhJfD70JagDLclUqIb7-idVqoPJwd2Dv7h-Q_UVqQrXxw4jrXQ7imcwiLRKXGbhf0OgDDfRnrjwLeOJnliId2lo4FUR204l', 115, 'android', '2022-11-27 09:59:04', '2022-11-27 09:59:04'),
(12, 'cY3HKxUZRdaHVdfFG4p-17:APA91bG_Nc4-XmL39neNvxgAH6t-PblV5B-Y2rRMFZvPzRhJfD70JagDLclUqIb7-idVqoPJwd2Dv7h-Q_UVqQrXxw4jrXQ7imcwiLRKXGbhf0OgDDfRnrjwLeOJnliId2lo4FUR204l', 116, 'android', '2022-11-27 10:42:01', '2022-11-27 10:42:01'),
(13, 'cY3HKxUZRdaHVdfFG4p-17:APA91bG_Nc4-XmL39neNvxgAH6t-PblV5B-Y2rRMFZvPzRhJfD70JagDLclUqIb7-idVqoPJwd2Dv7h-Q_UVqQrXxw4jrXQ7imcwiLRKXGbhf0OgDDfRnrjwLeOJnliId2lo4FUR204l', 10, 'android', '2022-11-27 15:07:23', '2022-11-27 15:07:23'),
(22, 'cAieUI_vQvm4lYSTNpNP_P:APA91bGJakbN8GtDWLaiSW68GCc9JLHnhYejD-R6mTBihRTfpub6rwzSQIvxNFpG6lzPAcjbnQRdNUUcO86x-N5BdSr4j6l9GfhdMYMkf8zhhCSfrWtv7TRG9E1cODmgewDixrY5SyXk', 117, 'android', '2022-11-29 13:03:26', '2022-11-29 13:03:26'),
(25, 'f4NTUj69SveUVq67r5OzBC:APA91bGaH5o6LVx9G_iddhiraF7TesDxX7XukFc7AFFpfNj5AF4A7oh_VvQ1OKT32s3HE-KKIofVYn9NyWXfRjWHO_YVbhc5p7Yu08LyFDudZuWGL-oWQaQ6aW3Po40PCeoUMSgBhedh', 116, 'android', '2022-11-30 09:46:26', '2022-11-30 09:46:26'),
(27, 'df5_z1wASHqAgZSUQJgsUw:APA91bH2PX0wEBR22zkONSJbY0cM15WBbOFkPXz7Ez6xfwVV_zzXgy26S95numQ8ISHDAtoETWeHNFVohqZeUde8fX4fx1ymJPiLWcIuhQqt6Q1k29o6HLJ08pHsafJZKUnAPya8YrK7', 116, 'android', '2022-11-30 10:57:08', '2022-11-30 10:57:08'),
(40, 'cdsz3ElcQ461gBpgbsgimc:APA91bHI8D-g2iWl175b8iacYxSeaAQTYrAEuF31Zxph4teIKg6wIEaMQ76bFykSjar_EM2dTRYpIzkACPznxfRJ-mtqlRFfb3k8py092qlvDRGyayM9qDTsPYkKlmYctm5ZOHuUr5em', 116, 'android', '2022-12-01 13:42:20', '2022-12-01 13:42:20'),
(76, 'fkwQcZ6ZQGqL9rU51m4r3S:APA91bFTVDKsLmwIt6pV9Zrd26Qpnij966WbMZtWcpCEFTXME0_U23icpDtlPLDVL8ByA4-BtIqnBKFf9TXlV9rslgfWpxHEjgLooiFKra9m8hMGMOi__sNMa-PS9S_AbT-0BC8KFrE_', 120, 'android', '2022-12-04 15:21:49', '2022-12-04 15:21:49'),
(81, 'dn4CRfOWTDyGsAV_1XGdZ7:APA91bEKSIw9M0sTpkgoW3IxrKJNwoxOjhh9TwPnAdzkpeowip19jDES4s9dRMdmVNEKPTTuzwLTcwPWNuddbo8hioHus_sMunTQ9Ee4PJZzHLRI6Fz3WaId_CdW1yR0pC0Plqy98ZIL', 10, 'android', '2022-12-04 15:59:24', '2022-12-04 15:59:24'),
(84, 'ch0X4ZwoQkGW8KxmsHi4r2:APA91bF-H2xZx1uUJ4DonS0sRAeNSZCSQ7urHr_-a4WmH1KNR_gv9OZmYS2ol960lduOUKLuoM_RJXcdqaRoJoPpPtO4rb4ERAQ86z4uWp4yIuw07322dfAxieKpxNHSM4-OLwHKLDZI', 100, 'android', '2022-12-05 10:09:03', '2022-12-05 10:09:03'),
(89, 'cM9qrFuXTbifmKiheAadky:APA91bEMRrTA4N-mWAiHDcP7OpYtY03I524Umcan39HWNvQj6P2L4s0gvdjzUAybh3LEnE5kQ5y0YgJdI0FUjio5VM5yWXRygvTu0Suk2R1ErSQrS10T7H41P4divfTuRqaZ1DSRTBu2', 100, 'android', '2022-12-07 14:39:43', '2022-12-07 14:39:43'),
(90, 'clk2KsGhV0_em9CvW9jdmm:APA91bHPpno9NIHTPIDBxt4UnLzsm9fVz0Ds9kQgF5jkISm05DpANU_aLjJBRAUdkIQVKr0Nm2YKc7Aotl-l5dKI8lxYP3umvIUKBDWmVCq0y9hqwlTY-OhtC4WPdjJyMJ6bBORGplS6', 100, 'ios', '2022-12-11 23:43:46', '2022-12-11 23:43:46'),
(103, 'fDsjXmPdC0YZrri8sl52mj:APA91bERulBfW22MZSFjAB1nSS3rpb6Ps27ofwvRHsaXMetKCb4IXpzFQ5dDKzNWOZyUvuLJtk8oSroPoeurxOkeiKSQxB2GuUL8jwtfH8bsAo1g0-waJo8YI70_HD6D7X9edGDCVbuu', 100, 'ios', '2022-12-21 15:10:34', '2022-12-21 15:10:34'),
(105, 'cM9qrFuXTbifmKiheAadky:APA91bFp742KXdk0HOA_YRBFXDMuLXmt7lC14GbG2W5k4MGDnelaYMLA_fQpzR16ZZILwYbIDl8rAsBPbK152oCdk64fiJsB6rfGscRUV6MWGu4G6QFR8-8-PwkgLvWO9KuDTRsbnuse', 100, 'android', '2023-01-03 08:58:31', '2023-01-03 08:58:31'),
(134, 'fgQp4GIQSZKSmQEVIWA1iJ:APA91bEjeFF9A82bl4vF_WKzU8v82s7Uqi1iKDJIQEpBY8qaTyHqRGz2EuNF0BiVxsIikmBDd8G-BQ5rLqO6RJbIYeFcrBJ4-eBtaiOsburA8jmLPe5fELpJaU5jePYaKrTG-tZ2aIQh', 100, 'android', '2023-02-12 11:42:41', '2023-02-12 11:42:41'),
(136, 'dtQrkfvlTBaBfkiOinhkI0:APA91bE-tEB6VQY7tnlNRV-URxCp18lu2NtT27Bj1dQsDrOVqR6zA5aeWG8oc_k7CHdu8mDj2m9NHJKj3hmS8qMEfLX20veRXCni8CxAEqBW5qKPWokpO6sw-aUljCeP5CmarzYILlQz', 100, 'android', '2023-05-15 17:00:15', '2023-05-15 17:00:15'),
(141, 'eRyZeib8T7i_U4UKyiichn:APA91bFDFu1HuxHmpiB8RJaU9481dgyUoL7l5IV1x1Cl2WQ-1Nxc22LcqgZ_V1eC7ihCgqkHaW4yOOLPIBYLGmhQETN1DQiJoiyHIVbJnjLUNQLukFqgkMl4mhH0mVXJc0S810vv5rTQ', 100, 'android', '2023-10-16 15:13:04', '2023-10-16 15:13:04'),
(147, 'eQGyY2_zQlaW9hLs27a2Ut:APA91bGpNd9UAfmPh6EDbNU-1wuI8BA951KVUa2ysYMBhjCuaGXMvlSHxlSZ60B29m3MDxm_BzuAcFr1wMvvHh0H29IoUGESVHyWNyreGUm-HXXIiptPrTBxE40xifVIndAZ6FVCKVdb', 146, 'android', '2023-10-21 13:07:38', '2023-10-21 13:07:38'),
(160, 'ddzzdAQiQN-0NHHXx2yQhL:APA91bFsO5sXLoaSA5GnNpuhyd93Lakl-IvtNMUqr7gaaJuA9hKgosn7oWTp7yC-Td9DcJTnEy8-rcJJyg1X4cf543suNNLuaAUhEYGrJEpkro9sF4KLX-w5eebQmSXhUkayzWajO9Y3', 157, 'android', '2023-11-08 15:46:33', '2023-11-08 15:46:33'),
(171, 'eP2ciunfRHqbcrraCF8SCH:APA91bGkCnOGYmBSL_rmLqEd5A8MOA8A5hKTdOW7JWN2LG28fCWXcI33dli38WJRm8SGu8lI3AhMXt3_AKKKPRr1b8F4SDVa_zny1Grj78Mh2wGJgB7Laa4cutaHt3YIUqQIwGqwMLPz', 176, 'android', '2023-11-12 10:03:21', '2023-11-12 10:03:21'),
(175, 'e_5NRn3qQNaSOXBLRaUBqm:APA91bEUGAPblfHJLwapNEIETjZ_fjeaFtw2XFXmu9Mcm7QOzFja8p8ZQcs7_7QQejyEqLsvqteCVa5OOud93mncnUzhG-pM4iOkCVnrF38gQi7rZzop0zFnsjo6QbgEtsO-niRgTeSf', 146, 'android', '2023-11-28 14:19:54', '2023-11-28 14:19:54'),
(177, 'daNymYwvQtqTIWRf-LureK:APA91bECwVGRb4i1DFRF8fNTEUdDr1__9owL0YFJRRoa7k-RmWBo7P4UexJ4oqo19PhLcs_DUjBrmiwBsexaWD7YCVmPYpYyWCI89ZcyrnqYPfZf10KfAwoq39Iid-JBjD_79K9FTELV', 146, 'android', '2023-12-09 14:15:50', '2023-12-09 14:15:50');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(3, '2022_03_20_123415_create_admins_table', 1),
(4, '2022_03_20_134518_create_settings_table', 1),
(5, '2022_08_18_144158_create_sliders_table', 2),
(6, '2022_08_18_162530_create_areas_table', 3),
(7, '2022_08_18_162552_create_sub_areas_table', 3),
(8, '2022_08_21_164212_create_categories_table', 4),
(9, '2022_08_22_095635_create_sub_categories_table', 5),
(11, '2022_07_21_143846_create_users_table', 6),
(12, '2022_08_22_111452_create_companies_table', 6),
(13, '2022_08_02_160430_create_agents_table', 7),
(14, '2022_08_22_110612_create_services_table', 7),
(15, '2022_08_22_131435_create_blogs_table', 7),
(16, '2022_08_23_123108_create_projects_table', 8);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` int(20) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL COMMENT 'if is null this will be for all users',
  `title` varchar(255) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `user_id`, `title`, `message`, `created_at`, `updated_at`) VALUES
(1, 3, 'اشعار جديد', 'اهلا بك في التطبيق ... انضم الينا الان واربح الجوائز', '2022-09-12 11:46:13', '2022-09-12 11:46:13'),
(2, 3, 'اشعار جديد', 'اهلا بك في التطبيق ... انضم الينا الان واربح الجوائز', '2022-09-12 11:46:13', '2022-09-12 11:46:13'),
(3, 1, 'إشعار بلاغات', 'لقد تم الإبلاغ عن اعلانك رقم 2', '2022-10-23 15:37:47', '2022-10-23 15:37:47'),
(5, 3, 'aaaa', 'aaaa', '2022-10-25 15:03:03', '2022-10-25 15:03:03'),
(7, NULL, 'اشعار جديد', 'اشعار جديد', '2022-10-26 15:15:46', '2022-10-26 15:15:46'),
(8, NULL, 'title', 'details', '2022-11-20 10:19:07', '2022-11-20 10:19:07'),
(9, 3, 'الاشعار الجديد وصل', 'يحيى بيمسى يا باشا', '2022-11-20 12:42:19', '2022-11-20 12:42:19'),
(10, 3, 'رساله من الداش بورد', 'هتشتغل', '2022-11-22 11:50:09', '2022-11-22 11:50:09'),
(11, 85, 'رساله من الداش بورد', 'هتشتغل', '2022-11-22 11:50:09', '2022-11-22 11:50:09'),
(12, 100, 'رساله من الداش بورد', 'هتشتغل', '2022-11-22 11:50:09', '2022-11-22 11:50:09'),
(13, 106, 'رساله من الداش بورد', 'هتشتغل', '2022-11-22 11:50:09', '2022-11-22 11:50:09'),
(14, 3, 'ااااا', 'تعبغبهبخع', '2022-11-22 11:51:32', '2022-11-22 11:51:32'),
(15, 85, 'ااااا', 'تعبغبهبخع', '2022-11-22 11:51:32', '2022-11-22 11:51:32'),
(16, 100, 'ااااا', 'تعبغبهبخع', '2022-11-22 11:51:32', '2022-11-22 11:51:32'),
(17, 106, 'ااااا', 'تعبغبهبخع', '2022-11-22 11:51:32', '2022-11-22 11:51:32'),
(18, NULL, 'dddddddddd', 'dddddddddd', '2022-11-22 13:10:01', '2022-11-22 13:10:01'),
(19, NULL, 'a', 's', '2022-11-22 13:45:56', '2022-11-22 13:45:56'),
(20, NULL, 'qqqqq', 'eeeeee', '2022-11-22 13:46:18', '2022-11-22 13:46:18'),
(21, NULL, 'vvgc', 'ghxyxy', '2022-11-22 13:47:29', '2022-11-22 13:47:29'),
(22, NULL, 'eee', 'eeee', '2022-11-22 13:52:09', '2022-11-22 13:52:09'),
(23, NULL, 'l', '[[[[[', '2022-11-22 13:55:50', '2022-11-22 13:55:50'),
(24, NULL, 'يحيى بيمسى', 'احلى مسا يا ولاد', '2022-11-22 14:29:12', '2022-11-22 14:29:12'),
(25, NULL, 'شششششش', 'ششششش', '2022-11-22 14:30:04', '2022-11-22 14:30:04'),
(26, NULL, 'ييي', 'يبسرسير', '2022-11-22 14:33:05', '2022-11-22 14:33:05'),
(27, NULL, 'بلتبغ', 'بغتفغ', '2022-11-22 14:51:50', '2022-11-22 14:51:50'),
(28, NULL, 'رىئؤ', 'ىئيلى', '2022-11-22 14:52:03', '2022-11-22 14:52:03'),
(29, NULL, 'sdd', 'ddd', '2022-11-22 15:14:40', '2022-11-22 15:14:40'),
(30, NULL, 'g', 't', '2022-11-22 15:14:51', '2022-11-22 15:14:51'),
(31, NULL, 'AAAAAA', 'aaaaa', '2022-11-22 15:17:42', '2022-11-22 15:17:42'),
(32, NULL, 'fffff', 'gggggggg', '2022-11-23 08:31:47', '2022-11-23 08:31:47'),
(33, NULL, 'aqaqaq', 'cvvcvcvcvcvc', '2022-11-23 14:41:27', '2022-11-23 14:41:27'),
(34, NULL, '3333', '4\r\n4\r\n4\r\n4', '2022-11-23 14:45:01', '2022-11-23 14:45:01'),
(35, NULL, 'dd', 'sss', '2022-11-23 14:50:22', '2022-11-23 14:50:22'),
(36, NULL, '333', '333', '2022-11-23 14:54:36', '2022-11-23 14:54:36'),
(37, NULL, 'qqq', 'qqq', '2022-11-23 14:56:08', '2022-11-23 14:56:08'),
(38, NULL, 'qqqq', 'eeeee', '2022-11-23 15:05:38', '2022-11-23 15:05:38'),
(39, NULL, 'qqq', 'qqqq', '2022-11-23 15:07:24', '2022-11-23 15:07:24'),
(40, NULL, 'w', 'wwwww', '2022-11-23 15:12:14', '2022-11-23 15:12:14'),
(41, NULL, 'wwww', 'wwwwwww', '2022-11-23 15:14:30', '2022-11-23 15:14:30'),
(42, NULL, 'eeeee', 'eeeeeeeee', '2022-11-23 15:17:31', '2022-11-23 15:17:31'),
(43, NULL, 'sss', 'ssss', '2022-11-23 15:20:49', '2022-11-23 15:20:49'),
(44, NULL, 'qqq', 'qqqq', '2022-11-23 15:22:14', '2022-11-23 15:22:14'),
(45, NULL, 'w', 'bbbb', '2022-11-23 15:27:39', '2022-11-23 15:27:39'),
(46, NULL, 'vvvvvv', 'tttttttt', '2022-11-23 15:28:49', '2022-11-23 15:28:49'),
(47, NULL, 'wwww', 'wwwww', '2022-11-24 08:51:10', '2022-11-24 08:51:10'),
(48, NULL, 'ss', 'wwww', '2022-11-24 13:08:51', '2022-11-24 13:08:51'),
(49, NULL, 'dddd', 'ddddddd', '2022-11-24 15:16:28', '2022-11-24 15:16:28'),
(50, NULL, 'eeee', 'qqqqqqq', '2022-11-24 15:36:37', '2022-11-24 15:36:37'),
(51, 100, 'إشعار بلاغات', 'لقد تم الإبلاغ عن اعلانك رقم 86', '2022-11-26 08:36:12', '2022-11-26 08:36:12'),
(52, NULL, 'ggg', 'ggggg', '2022-11-28 10:04:04', '2022-11-28 10:04:04'),
(53, NULL, 'عمك سعدون شغااال', 'احلى مسا من يحيى يا سعدووون', '2022-11-29 13:52:38', '2022-11-29 13:52:38'),
(54, NULL, 'هههههههههههه', 'ههههههههههههههههه', '2022-11-29 14:23:17', '2022-11-29 14:23:17'),
(55, NULL, 'cvzv', 'zxdvszdv', '2022-11-30 10:14:54', '2022-11-30 10:14:54'),
(56, NULL, 'ios', 'اشتغلت !!!', '2023-01-05 11:29:12', '2023-01-05 11:29:12'),
(57, NULL, 'ss', 'ss', '2023-02-16 12:01:53', '2023-02-16 12:01:53'),
(58, 140, 'إشعار بلاغات', 'لقد تم الإبلاغ عن اعلانك رقم 93', '2023-09-03 10:36:24', '2023-09-03 10:36:24');

-- --------------------------------------------------------

--
-- Table structure for table `packages`
--

CREATE TABLE `packages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `type` varchar(225) NOT NULL,
  `number_of_days` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `packages`
--

INSERT INTO `packages` (`id`, `price`, `type`, `number_of_days`, `created_at`, `updated_at`) VALUES
(132, 250.00, 'weekly', 7, '2022-10-26 14:25:18', '2022-10-26 14:26:19'),
(133, 1000.00, 'monthly', 30, '2022-10-26 14:25:46', '2022-10-26 14:26:26'),
(134, 3000.00, '3 month', 90, '2022-10-26 14:27:28', '2022-10-26 14:27:28'),
(135, 12000.00, 'year', 365, '2022-10-26 14:28:01', '2022-10-26 14:28:01');

-- --------------------------------------------------------

--
-- Table structure for table `packages_users`
--

CREATE TABLE `packages_users` (
  `id` tinyint(4) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `package_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `packages_users`
--

INSERT INTO `packages_users` (`id`, `user_id`, `package_id`, `created_at`, `updated_at`) VALUES
(5, 3, 132, '2022-10-12 14:24:58', '2022-10-26 12:42:31');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `status` enum('sale','rent') DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `phone_code` varchar(255) DEFAULT NULL,
  `views` bigint(20) NOT NULL DEFAULT 0,
  `title_ar` varchar(191) DEFAULT NULL,
  `description_ar` text DEFAULT NULL,
  `title_en` varchar(191) DEFAULT NULL,
  `description_en` varchar(191) DEFAULT NULL,
  `title_ku` varchar(191) DEFAULT NULL,
  `description_ku` varchar(191) DEFAULT NULL,
  `status_post` enum('pending','activate') NOT NULL DEFAULT 'activate',
  `furniture` enum('0','1') DEFAULT '0',
  `type` varchar(191) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `currency` varchar(191) DEFAULT 'USD',
  `size` text DEFAULT NULL,
  `bedroom` int(11) DEFAULT NULL,
  `baby_room` int(11) DEFAULT NULL,
  `kitchen` int(11) DEFAULT NULL,
  `reception_room` int(11) DEFAULT NULL,
  `living_room` int(11) DEFAULT NULL,
  `dining_room` int(11) DEFAULT NULL,
  `bath_room` int(11) DEFAULT NULL,
  `advertizer_name_ar` varchar(255) DEFAULT NULL,
  `advertizer_name_en` varchar(191) DEFAULT NULL,
  `advertizer_name_ku` varchar(191) DEFAULT NULL,
  `whatsapp` varchar(255) DEFAULT NULL,
  `latitude` double DEFAULT NULL,
  `longitude` double DEFAULT NULL,
  `location_name_ar` varchar(191) DEFAULT NULL,
  `location_name_en` varchar(191) DEFAULT NULL,
  `location_name_ku` varchar(191) DEFAULT NULL,
  `is_sold` tinyint(4) NOT NULL DEFAULT 0,
  `is_inves_bed` tinyint(1) NOT NULL DEFAULT 0,
  `agent_id` bigint(20) UNSIGNED DEFAULT NULL,
  `company_id` bigint(20) UNSIGNED DEFAULT NULL,
  `area_id` bigint(20) UNSIGNED DEFAULT NULL,
  `sub_area_id` bigint(20) UNSIGNED DEFAULT NULL,
  `category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `sub_category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `status`, `phone`, `phone_code`, `views`, `title_ar`, `description_ar`, `title_en`, `description_en`, `title_ku`, `description_ku`, `status_post`, `furniture`, `type`, `price`, `currency`, `size`, `bedroom`, `baby_room`, `kitchen`, `reception_room`, `living_room`, `dining_room`, `bath_room`, `advertizer_name_ar`, `advertizer_name_en`, `advertizer_name_ku`, `whatsapp`, `latitude`, `longitude`, `location_name_ar`, `location_name_en`, `location_name_ku`, `is_sold`, `is_inves_bed`, `agent_id`, `company_id`, `area_id`, `sub_area_id`, `category_id`, `sub_category_id`, `user_id`, `created_at`, `updated_at`) VALUES
(8, 'sale', '0123333333', NULL, 3, 'title ar', 'description ar', 'title en', 'description en', 'title ku', 'description Ku', 'activate', '0', 'House', '200', 'USD', '20', 3, NULL, 1, NULL, 1, 1, 2, 'osama ar', 'osama en', 'osama Ku', '02111222223', 2.555555, 10.4455555, 'location_name ar', 'location_name en', 'location_name Ku', 1, 0, NULL, 2, 1, 1, NULL, NULL, 3, '2022-09-22 10:26:49', '2022-10-13 14:27:17'),
(9, 'sale', '0123333333', NULL, 0, 'title ar', 'description ar', 'title en', 'description en', 'title ku', 'description Ku', 'activate', '0', 'House', '200', 'USD', '20', 3, NULL, 1, NULL, 1, 1, 2, 'osama ar', 'osama en', 'osama Ku', '02111222223', 2.555555, 10.4455555, 'location_name ar', 'location_name en', 'location_name Ku', 0, 0, NULL, 2, 1, 1, NULL, NULL, 3, '2022-09-22 11:40:15', '2022-09-22 11:40:15'),
(12, 'sale', '0123333333', NULL, 0, 'title ar', 'description ar', 'title en', 'description en', 'title ku', 'description Ku', 'activate', '0', 'House', '200', 'USD', '20', 3, NULL, 1, NULL, 1, 1, 2, 'osama ar', 'osama en', 'osama Ku', '02111222223', 2.555555, 10.4455555, 'location_name ar', 'location_name en', 'location_name Ku', 0, 0, NULL, 2, 1, 1, NULL, NULL, 3, '2022-09-22 11:44:23', '2022-09-22 11:44:23'),
(13, 'sale', '0123333333', NULL, 0, 'title ar', 'description ar', 'title en', 'description en', 'title ku', 'description Ku', 'activate', '0', 'House', '200', 'USD', '20', 3, NULL, 1, NULL, 1, 1, 2, 'osama ar', 'osama en', 'osama Ku', '02111222223', 2.555555, 10.4455555, 'location_name ar', 'location_name en', 'location_name Ku', 0, 0, NULL, 2, 1, 1, NULL, NULL, 3, '2022-09-22 11:45:50', '2022-09-22 11:45:50'),
(14, 'sale', '0123333333', NULL, 0, 'title ar', 'description ar', 'title en', 'description en', 'title ku', 'description Ku', 'activate', '0', 'House', '200', 'USD', '20', 3, NULL, 1, NULL, 1, 1, 2, 'osama ar', 'osama en', 'osama Ku', '02111222223', 2.555555, 10.4455555, 'location_name ar', 'location_name en', 'location_name Ku', 0, 0, NULL, 2, 1, 1, NULL, NULL, 3, '2022-09-22 11:46:03', '2022-09-22 11:46:03'),
(15, 'rent', '0123333333', NULL, 51, 'title ar', 'description ar', 'title en', 'description en', 'title ku', 'description Ku', 'activate', '1', 'Vila', '50000', 'IQD', '250', 7, NULL, 2, NULL, 3, 2, 3, 'osama ar', 'osama en', 'osama Ku', '02111222223', 2.555555, 10.4455555, 'location_name ar', 'location_name en', 'location_name Ku', 0, 0, NULL, 2, 6, 1, NULL, NULL, 3, '2022-09-24 13:40:47', '2023-11-13 13:02:13'),
(16, 'rent', '0123333333', NULL, 0, 'title ar', 'description ar', 'title en', 'description en', 'title ku', 'description Ku', 'activate', '1', 'Vila', '50000', 'IQD', '250', 7, NULL, 2, NULL, 3, 2, 3, 'osama ar', 'osama en', 'osama Ku', '02111222223', 2.555555, 10.4455555, 'location_name ar', 'location_name en', 'location_name Ku', 0, 0, NULL, 2, 6, 1, NULL, NULL, 3, '2022-09-24 15:11:42', '2022-09-24 15:11:42'),
(17, 'rent', '0123333333', NULL, 0, 'title ar', 'description ar', 'title en', 'description en', 'title ku', 'description Ku', 'activate', '1', 'Vila', '50000', 'IQD', '250', 7, NULL, 2, NULL, 3, 2, 3, 'osama ar', 'osama en', 'osama Ku', '02111222223', 31.009312, 30.560832, 'location_name ar', 'location_name en', 'location_name Ku', 0, 0, NULL, 2, 6, 1, NULL, NULL, 3, '2022-09-24 15:35:40', '2022-09-24 15:35:40'),
(18, 'rent', '0123333333', NULL, 2, 'title ar', 'description ar', 'title en', 'description en', 'title ku', 'description Ku', 'activate', '1', 'Vila', '50000', 'IQD', '250', 7, NULL, 2, NULL, 3, 2, 3, 'osama ar', 'osama en', 'osama Ku', '02111222223', 30.560832, 31.009312, 'location_name ar', 'location_name en', 'location_name Ku', 0, 0, NULL, 2, 6, 1, NULL, NULL, 3, '2022-09-24 15:45:18', '2022-10-06 14:55:02'),
(19, 'sale', '0123333333', NULL, 1, 'title ar', 'description ar', 'title en', 'description en', 'title ku', 'description Ku', 'activate', '0', 'House', '200', 'USD', '20', 3, NULL, 1, NULL, 1, 1, 2, 'osama ar', 'osama en', 'osama Ku', '02111222223', 2.555555, 10.4455555, 'location_name ar', 'location_name en', 'location_name Ku', 0, 0, NULL, 2, 1, 1, NULL, NULL, 3, '2022-09-25 16:14:41', '2022-09-26 00:42:13'),
(20, 'sale', '0123333333', NULL, 3, 'title ar', 'description ar', 'title en', 'description en', 'title ku', 'description Ku', 'activate', '0', 'House', '200', 'USD', '20', 3, NULL, 1, NULL, 1, 1, 2, 'osama ar', 'osama en', 'osama Ku', '02111222223', 2.555555, 10.4455555, 'location_name ar', 'location_name en', 'location_name Ku', 0, 0, NULL, 2, 1, 1, NULL, NULL, 3, '2022-09-25 16:15:00', '2022-09-25 23:25:03'),
(22, 'sale', '0123333333', NULL, 3, 'title ar', 'description ar', 'title en', 'description en', 'title ku', 'description Ku', 'activate', '0', 'House', '200', 'USD', '20', 3, NULL, 1, NULL, 1, 1, 2, 'osama ar', 'osama en', 'osama Ku', '02111222223', 2.555555, 10.4455555, 'location_name ar', 'location_name en', 'location_name Ku', 0, 0, NULL, 2, 1, 1, NULL, NULL, 3, '2022-09-26 00:46:59', '2022-09-29 18:21:53'),
(23, 'sale', '0123333333', NULL, 13, 'title ar', 'description ar', 'title en', 'description en', 'title ku', 'description Ku', 'activate', '0', 'House', '200', 'USD', '20', 3, NULL, 1, NULL, 1, 1, 2, 'osama ar', 'osama en', 'osama Ku', '02111222223', 2.555555, 10.4455555, 'location_name ar', 'location_name en', 'location_name Ku', 0, 0, NULL, 2, 1, 1, NULL, NULL, 3, '2022-09-26 00:47:00', '2022-10-16 11:13:47'),
(24, 'sale', '0123333333', NULL, 13, 'title ar', 'description ar', 'title en', 'description en', 'title ku', 'description Ku', 'activate', '0', 'House', '200', 'USD', '20', 3, NULL, 1, NULL, 1, 1, 2, 'osama ar', 'osama en', 'osama Ku', '02111222223', 2.555555, 10.4455555, 'location_name ar', 'location_name en', 'location_name Ku', 0, 0, NULL, 2, 1, 1, NULL, NULL, 3, '2022-10-09 10:32:19', '2022-11-20 08:44:39'),
(25, 'sale', '0123333333', NULL, 11, 'aaaaaarrrrrrrrrrr', 'description ar', 'eeeeennnnnnn', 'description en', 'kkkkuuuuu', 'description Ku', 'activate', '0', 'House', '200', 'USD', '20', 3, NULL, 1, NULL, 1, 1, 2, 'osama ar', 'osama en', 'osama Ku', '02111222223', 2.555555, 10.4455555, 'location_name ar', 'location_name en', 'location_name Ku', 0, 0, NULL, NULL, 1, 1, NULL, NULL, 21, '2022-10-16 10:27:17', '2022-10-27 15:41:28'),
(27, 'sale', '0123333333', NULL, 0, 'title ar', 'description ar', 'title en', 'description en', 'title ku', 'description Ku', 'activate', '0', 'House', '200', 'USD', '20', 3, NULL, 1, NULL, 1, 1, 2, 'osama ar', 'osama en', 'osama Ku', '02111222223', 2.555555, 10.4455555, 'location_name ar', 'location_name en', 'location_name Ku', 0, 0, NULL, 2, 1, 1, NULL, NULL, 3, '2022-10-16 14:56:22', '2022-10-16 14:56:22'),
(28, 'sale', '0123333333', NULL, 2, 'title ar', 'description ar', 'title en', 'description en', 'title ku', 'description Ku', 'activate', '0', 'House', '200', 'USD', '20', 3, NULL, 1, NULL, 1, 1, 2, 'osama ar', 'osama en', 'osama Ku', '02111222223', 30.50965530605307, 30.946990393309278, 'location_name ar', 'location_name en', 'location_name Ku', 0, 0, NULL, 2, 1, 1, NULL, NULL, 3, '2022-10-16 14:56:45', '2022-10-16 14:57:14'),
(29, 'sale', '0123333333', NULL, 23, 'title ar', 'description ar', 'title en', 'description en', 'title ku', 'description Ku', 'activate', '0', 'House', '200', 'USD', '20', 3, NULL, 1, NULL, 1, 1, 2, 'osama ar', 'osama en', 'osama Ku', '02111222223', 30.50965530605307, 30.946990393309278, 'location_name ar', 'location_name en', 'location_name Ku', 0, 0, NULL, 2, 1, 1, NULL, NULL, 3, '2022-10-16 14:58:59', '2022-11-30 09:37:23'),
(30, 'sale', '0123333333', NULL, 4, 'title ar', 'description ar', 'title en', 'description en', 'title ku', 'description Ku', 'activate', '0', 'House', '200', 'USD', '20', 3, NULL, 1, NULL, 1, 1, 2, 'osama ar', 'osama en', 'osama Ku', '02111222223', 2.555555, 10.4455555, 'location_name ar', 'location_name en', 'location_name Ku', 0, 0, NULL, 2, 1, 1, NULL, NULL, 3, '2022-10-25 16:02:24', '2022-11-27 14:47:48'),
(31, 'sale', '0123333333', NULL, 4, 'title ar', 'description ar', 'title en', 'description en', 'title ku', 'description Ku', 'activate', '0', 'House', '200', 'USD', '20', 3, NULL, 1, NULL, 1, 1, 2, 'osama ar', 'osama en', 'osama Ku', '02111222223', 2.555555, 10.4455555, 'location_name ar', 'location_name en', 'location_name Ku', 0, 0, NULL, 2, 1, 1, NULL, NULL, 3, '2022-10-26 08:28:59', '2023-03-02 11:54:27'),
(34, 'sale', '0123333333', NULL, 7, 'title ar', 'description ar', 'title en', 'description en', 'title ku', 'description Ku', 'activate', '0', 'House', '200', 'USD', '20', 3, NULL, 1, NULL, 1, 1, 2, 'osama ar', 'osama en', 'osama Ku', '02111222223', 2.555555, 10.4455555, 'location_name ar', 'location_name en', 'location_name Ku', 1, 0, NULL, 2, 1, 1, NULL, NULL, 89, '2022-10-26 09:31:17', '2022-10-26 11:43:08'),
(36, 'sale', '01098604983', NULL, 13, 'شقة للبيع بالتجمع الخامس', 'شقة 176م بكمبوند سيفورا هايتس دقائق معدودة من شارع التسعين و خلف الجامعة الامريكية\nمساحات خضراء كبيره', 'Apartment for sale in Fifth Settlement', 'Apartment 176 m in Sephora Heights compound, a few minutes from the 90th Street and behind the American University\nLarge green spaces', 'شوقە بۆ فرۆشتن لە شارۆچکەی پێنجەم', 'شوقە 176 م لە کۆمەڵگەی سیفۆرا هایتس، چەند خولەکێک لە شەقامی 90 و پشت زانکۆی ئەمریکی دوورە\nفەزای سەوزی گەورە', 'activate', '0', '2', '3000', 'USD', '178', 6, NULL, 4, NULL, 2, 1, 2, 'عبدالله محمود', 'Abdallah Mahmoud', 'عەبدوڵڵا مەحمود', '01098604983', 30.5607184, 31.0087024, 'التجمع الخامس', 'location_name en', 'Fifth Settlement', 0, 0, NULL, 2, 1, 1, NULL, NULL, 3, '2022-10-26 13:01:14', '2023-03-02 11:54:34'),
(37, 'sale', '0123333333', NULL, 0, 'title ar', 'description ar', 'title en', 'description en', 'title ku', 'description Ku', 'activate', '0', 'House', '200', 'USD', '20', 3, NULL, 1, NULL, 1, 1, 2, 'osama ar', 'osama en', 'osama Ku', '02111222223', 2.555555, 10.4455555, 'location_name ar', 'location_name en', 'location_name Ku', 1, 0, NULL, 2, 1, 1, NULL, NULL, 89, '2022-10-26 15:36:51', '2022-10-26 15:50:49'),
(38, 'sale', '01098604983', NULL, 11, 'شقة للبيع بالتجمع الخامس', 'شقة 176م بكمبوند سيفورا هايتس دقائق معدودة من شارع التسعين و خلف الجامعة الامريكية\nمساحات خضراء كبيره', 'Apartment for sale in Fifth Settlement', 'Apartment 176 m in Sephora Heights compound, a few minutes from the 90th Street and behind the American University\nLarge green spaces', 'شوقە بۆ فرۆشتن لە شارۆچکەی پێنجەم', 'شوقە 176 م لە کۆمەڵگەی سیفۆرا هایتس، چەند خولەکێک لە شەقامی 90 و پشت زانکۆی ئەمریکی دوورە\nفەزای سەوزی گەورە', 'activate', '0', '2', '3000', 'USD', '178', 6, NULL, 4, NULL, 2, 1, 2, 'عبدالله محمود', 'Abdallah Mahmoud', 'عەبدوڵڵا مەحمود', '01098604983', 30.5607184, 31.0087024, 'التجمع الخامس', 'location_name en', 'Fifth Settlement', 0, 0, NULL, NULL, 1, 1, NULL, NULL, 84, '2022-10-27 09:09:32', '2023-01-24 11:51:02'),
(41, 'sale', '01098604983', NULL, 4, 'شقة للبيع بالتجمع الخامس', 'شقة 176م بكمبوند سيفورا هايتس دقائق معدودة من شارع التسعين و خلف الجامعة الامريكية\nمساحات خضراء كبيره', 'Apartment for sale in Fifth Settlement', 'Apartment 176 m in Sephora Heights compound, a few minutes from the 90th Street and behind the American University\nLarge green spaces', 'شوقە بۆ فرۆشتن لە شارۆچکەی پێنجەم', 'شوقە 176 م لە کۆمەڵگەی سیفۆرا هایتس، چەند خولەکێک لە شەقامی 90 و پشت زانکۆی ئەمریکی دوورە\nفەزای سەوزی گەورە', 'activate', '0', '2', '3000', 'USD', '178', 6, NULL, 4, NULL, 2, 1, 2, 'عبدالله محمود', 'Abdallah Mahmoud', 'عەبدوڵڵا مەحمود', '01098604983', 30.5607184, 31.0087024, 'التجمع الخامس', 'location_name en', 'Fifth Settlement', 1, 0, NULL, NULL, 1, 1, NULL, NULL, 84, '2022-10-27 09:12:03', '2022-10-27 14:24:45'),
(42, 'sale', '0123333333', NULL, 1, 'title ar', 'description ar', 'title en', 'description en', 'title ku', 'description Ku', 'activate', '0', 'House', '200', 'USD', '20', 3, NULL, 1, NULL, 1, 1, 2, 'osama ar', 'osama en', 'osama Ku', '02111222223', 2.555555, 10.4455555, 'location_name ar', 'location_name en', 'location_name Ku', 0, 0, NULL, NULL, 1, 1, NULL, NULL, 98, '2022-10-27 09:43:44', '2022-10-28 20:48:58'),
(43, 'rent', '01098604983', NULL, 17, 'شقة للبيع بالتجمع الخامس', 'شقة 176م بكمبوند سيفورا هايتس دقائق معدودة من شارع التسعين و خلف الجامعة الامريكية\nمساحات خضراء كبيره', 'Apartment for sale in Fifth Settlement', 'Apartment 176 m in Sephora Heights compound, a few minutes from the 90th Street and behind the American University\nLarge green spaces', 'شوقە بۆ فرۆشتن لە شارۆچکەی پێنجەم', 'شوقە 176 م لە کۆمەڵگەی سیفۆرا هایتس، چەند خولەکێک لە شەقامی 90 و پشت زانکۆی ئەمریکی دوورە\nفەزای سەوزی گەورە', 'activate', '0', '2', '3000', 'USD', '178', 6, NULL, 4, NULL, 2, 1, 2, 'عبدالله محمود', 'Abdallah Mahmoud', 'عەبدوڵڵا مەحمود', '01098604983', 30.5607184, 31.0087024, 'التجمع الخامس', 'location_name en', 'Fifth Settlement', 0, 0, NULL, NULL, 1, 1, NULL, NULL, 98, '2022-10-27 09:49:27', '2022-10-27 23:05:18'),
(44, 'sale', '01098604983', NULL, 0, 'شقة للبيع بالتجمع الخامس', 'شقة 176م بكمبوند سيفورا هايتس دقائق معدودة من شارع التسعين و خلف الجامعة الامريكية\nمساحات خضراء كبيره', 'Apartment for sale in Fifth Settlement', 'Apartment 176 m in Sephora Heights compound, a few minutes from the 90th Street and behind the American University\nLarge green spaces', 'شوقە بۆ فرۆشتن لە شارۆچکەی پێنجەم', 'شوقە 176 م لە کۆمەڵگەی سیفۆرا هایتس، چەند خولەکێک لە شەقامی 90 و پشت زانکۆی ئەمریکی دوورە\nفەزای سەوزی گەورە', 'activate', '0', '2', '3000', 'USD', '178', 6, NULL, 4, NULL, 2, 1, 2, 'عبدالله محمود', 'Abdallah Mahmoud', 'عەبدوڵڵا مەحمود', '01098604983', 30.5607184, 31.0087024, 'التجمع الخامس', 'location_name en', 'Fifth Settlement', 1, 0, NULL, NULL, 1, 1, NULL, NULL, 84, '2022-10-27 14:43:44', '2022-10-27 14:43:59'),
(45, 'rent', '01098604983', NULL, 13, 'شقة للبيع بالتجمع الخامس', 'شقة 176م بكمبوند سيفورا هايتس دقائق معدودة من شارع التسعين و خلف الجامعة الامريكية\nمساحات خضراء كبيره', 'Apartment for sale in Fifth Settlement', 'Apartment 176 m in Sephora Heights compound, a few minutes from the 90th Street and behind the American University\nLarge green spaces', 'شوقە بۆ فرۆشتن لە شارۆچکەی پێنجەم', 'شوقە 176 م لە کۆمەڵگەی سیفۆرا هایتس، چەند خولەکێک لە شەقامی 90 و پشت زانکۆی ئەمریکی دوورە\nفەزای سەوزی گەورە', 'activate', '0', '2', '3000', 'USD', '178', 6, NULL, 4, NULL, 2, 1, 2, 'عبدالله محمود', 'Abdallah Mahmoud', 'عەبدوڵڵا مەحمود', '01098604983', 30.5607184, 31.0087024, 'التجمع الخامس', 'location_name en', 'Fifth Settlement', 1, 0, NULL, NULL, 1, 1, NULL, NULL, 84, '2022-10-27 14:45:59', '2022-10-28 20:48:45'),
(46, 'rent', '0123333333', NULL, 2, 'title ar', 'description ar', 'title en', 'description en', 'title ku', 'description Ku', 'activate', '0', 'House', '200', 'USD', '20', 3, NULL, 1, NULL, 1, 1, 2, 'osama ar', 'osama en', 'osama Ku', '02111222223', 2.555555, 10.4455555, 'location_name ar', 'location_name en', 'location_name Ku', 0, 0, NULL, NULL, 1, 1, NULL, NULL, 98, '2022-10-30 08:34:30', '2022-11-09 09:57:01'),
(47, 'rent', '0123333333', NULL, 3, 'title ar', 'description ar', 'title en', 'description en', 'title ku', 'description Ku', 'activate', '0', 'House', '200', 'USD', '20', 3, NULL, 1, NULL, 1, 1, 2, 'osama ar', 'osama en', 'osama Ku', '02111222223', 2.555555, 10.4455555, 'location_name ar', 'location_name en', 'location_name Ku', 0, 0, NULL, NULL, 1, 1, NULL, NULL, 98, '2022-10-30 08:37:37', '2022-10-30 10:59:46'),
(48, 'rent', '01090439660', NULL, 3, 'title ar', 'description ar', 'title en', 'description en', 'title ku', 'description Ku', 'activate', '0', 'House', '200', 'USD', '20', 3, NULL, 1, NULL, 1, 1, 2, 'يحيى', 'Yehia', 'yyyyyy', '01090439660', 2.555555, 10.4455555, 'location_name ar', 'location_name en', 'location_name Ku', 0, 0, NULL, NULL, 1, 1, NULL, NULL, 98, '2022-10-30 10:45:58', '2022-11-27 11:12:33'),
(49, 'rent', '01098604983', NULL, 2, 'عنووووان', 'تفاااصيل', 'عنووووان', 'تفاااصيل', 'عنووووان', 'تفاااصيل', 'activate', '1', '2', '3000', 'USD', '0', 0, NULL, 1, NULL, 5, 1, 2, 'Ahmad Yehia', 'Ahmad Yehia', 'Ahmad Yehia', '01090439660', 30.5607184, 31.0087024, NULL, NULL, NULL, 0, 0, NULL, NULL, 1, 1, NULL, NULL, 84, '2022-10-30 13:20:56', '2022-11-27 11:12:31'),
(67, 'sale', '5555584844', NULL, 3, 'ggggg', 'gftg', 'ggggg', 'gftg', 'ggggg', 'gftg', 'activate', '1', '3', '84', 'USD', '0', 1, NULL, 3, NULL, 3, 3, 3, 'fffffff', 'fffffff', 'fffffff', '85844415841', 20.123, 30.123, NULL, NULL, NULL, 0, 0, NULL, NULL, 6, 6, NULL, NULL, 100, '2022-10-30 14:47:07', '2023-01-24 11:44:06'),
(68, 'sale', '3333333', NULL, 3, 'bdh', 'udhfh', 'bdh', 'udhfh', 'bdh', 'udhfh', 'activate', '1', '2', '666', 'USD', '0', 0, NULL, 4, NULL, 4, 2, 3, 'hhhhh', 'hhhhh', 'hhhhh', '33333333', 20.123, 30.123, NULL, NULL, NULL, 0, 0, NULL, NULL, 7, 9, NULL, NULL, 100, '2022-10-30 15:08:36', '2023-01-24 11:44:30'),
(69, 'rent', '0123333333', NULL, 3, 'title ar', 'description ar', 'title en', 'description en', 'title ku', 'description Ku', 'activate', '0', 'House', '200', 'USD', '20', 3, NULL, 1, NULL, 1, 1, 2, 'osama ar', 'osama en', 'osama Ku', '02111222223', 2.555555, 10.4455555, 'location_name ar', 'location_name en', 'location_name Ku', 0, 0, NULL, NULL, 1, 1, NULL, NULL, 98, '2022-10-30 15:26:30', '2023-01-24 11:41:50'),
(70, 'sale', '588', NULL, 2, 'hhvv', 'hhg', 'hhvv', 'hhg', 'hhvv', 'hhg', 'activate', '1', '4', '8888', 'USD', '0', 0, NULL, 1, NULL, 1, 1, 1, 'yyy', 'yyy', 'yyy', '880', 20.123, 30.123, NULL, NULL, NULL, 0, 0, NULL, NULL, 7, 7, NULL, NULL, 100, '2022-10-30 15:28:40', '2022-11-26 09:10:42'),
(71, 'sale', '88798', NULL, 1, 'ggg', 'fff', 'ggg', 'fff', 'ggg', 'fff', 'activate', '1', '2', '588', 'USD', '0', 0, NULL, 1, NULL, 1, 1, 1, 'لغغع', 'لغغع', 'لغغع', '6666666', 20.123, 30.123, NULL, NULL, NULL, 0, 0, NULL, NULL, 6, 6, NULL, NULL, 100, '2022-10-30 15:33:10', '2022-11-09 13:25:03'),
(72, 'sale', '88798', NULL, 2, 'ggg', 'fff', 'ggg', 'fff', 'ggg', 'fff', 'activate', '1', '2', '588', 'USD', '0', 0, NULL, 1, NULL, 1, 1, 1, 'لغغع', 'لغغع', 'لغغع', '6666666', 20.123, 30.123, NULL, NULL, NULL, 0, 0, NULL, NULL, 6, 6, NULL, NULL, 100, '2022-10-30 15:36:41', '2022-11-09 13:25:00'),
(73, 'rent', '0000000', NULL, 2, 'addAdsModel.titleAr', 'addAdsModel.descriptionAr', 'addAdsModel.titleEn', 'addAdsModel.descriptionEn', 'addAdsModel.titleKu', 'addAdsModel.descriptionKu', 'activate', '1', '5', '5000', 'USD', '500', 1, NULL, 1, NULL, 1, 1, 1, 'addAdsModel.advertizerNameAr', 'addAdsModel.advertizerNameEn', 'addAdsModel.advertizerNameKu', '00000000000', 30.022, 21.0222, 'addAdsModel.locationNameAr', 'addAdsModel.locationNameEn', 'addAdsModel. locationNameKu', 0, 0, NULL, NULL, 6, 6, NULL, NULL, 100, '2022-10-30 15:44:25', '2022-11-24 13:46:15'),
(75, 'rent', '0000000', NULL, 0, 'addAdsModel.titleAr test', 'addAdsModel.descriptionAr333333333', 'addAdsModel.titleEn test', 'addAdsModel.descriptionEn00000000000', 'addAdsModel.titleKu test', 'addAdsModel.descriptionKu777777777', 'activate', '1', '5', '5000', 'USD', '500', 1, NULL, 1, NULL, 1, 1, 1, 'addAdsModel.advertizerNameAr', 'addAdsModel.advertizerNameEn', 'addAdsModel.advertizerNameKu', '00000000000', 30.022, 21.0222, 'addAdsModel.locationNameAr', 'addAdsModel.locationNameEn', 'addAdsModel. locationNameKu', 1, 0, NULL, NULL, 6, 6, NULL, NULL, 100, '2022-10-30 15:50:05', '2022-11-10 14:08:33'),
(77, 'sale', '444', NULL, 0, 'zz', 'drfdss', 'zz', 'drfdss', 'zz', 'drfdss', 'activate', '1', '4', '5555', 'USD', '0', 2, NULL, 4, NULL, 4, 4, 4, 'aa', 'aa', 'aa', '444', 20.123, 30.123, NULL, NULL, NULL, 0, 0, NULL, NULL, 7, 9, NULL, NULL, 100, '2022-10-30 16:04:11', '2022-10-30 16:04:11'),
(78, 'sale', '0808080', NULL, 5, 'البوست دا دمااار', 'دى جدعنه منى بس 😂✌️', 'البوست دا دمااار', 'دى جدعنه منى بس 😂✌️', 'البوست دا دمااار', 'دى جدعنه منى بس 😂✌️', 'activate', '1', '4', '800', 'USD', '0', 0, NULL, 3, NULL, 4, 5, 2, 'يحيى', 'يحيى', 'يحيى', '90909090', 20.123, 30.123, NULL, NULL, NULL, 0, 0, NULL, NULL, 7, 9, NULL, NULL, 100, '2022-10-30 16:08:56', '2023-02-05 21:41:46'),
(79, 'sale', '5588', NULL, 3, 'غغغغغغغ', 'ففففغغغغ', 'غغغغغغغ', 'ففففغغغغ', 'غغغغغغغ', 'ففففغغغغ', 'activate', '1', '4', '500', 'USD', '0', 0, NULL, 1, NULL, 1, 1, 1, 'غففف', 'غففف', 'غففف', '8875', 20.123, 30.123, NULL, NULL, NULL, 0, 0, NULL, NULL, 8, 11, NULL, NULL, 100, '2022-10-30 16:15:09', '2023-02-05 21:41:04'),
(80, 'sale', '5455', NULL, 5, 'الب', 'لبلا', 'الب', 'لبلا', 'الب', 'لبلا', 'activate', '1', '4', '557', 'USD', '0', 1, NULL, 3, NULL, 3, 3, 3, 'ةبل', 'ةبل', 'ةبل', '5541', 20.123, 30.123, NULL, NULL, NULL, 1, 0, NULL, NULL, 6, 6, NULL, NULL, 100, '2022-10-30 16:33:13', '2022-11-26 09:10:32'),
(83, 'rent', '0123333333', NULL, 5, 'title ar', 'description ar', 'title en', 'description en', 'title ku', 'description Ku', 'activate', '0', 'House', '200', 'USD', '20', 3, NULL, 1, NULL, 1, 1, 2, 'osama ar', 'osama en', 'osama Ku', '02111222223', 2.555555, 10.4455555, 'الرياض - بغداد', 'elryad - Baghdad', ' - ', 0, 0, NULL, NULL, 1, 1, NULL, NULL, 98, '2022-11-02 13:18:55', '2022-11-24 13:40:17'),
(84, 'rent', '0123333333', NULL, 8, 'title ar', 'description ar', 'title en', 'description en', 'title ku', 'description Ku', 'activate', '0', 'House', '200', 'USD', '20', 3, NULL, 1, NULL, 1, 1, 2, 'osama ar', 'osama en', 'osama Ku', '02111222223', 2.555555, 10.4455555, 'الاسكندريه 1 - الاسكندريه', 'Alex1 - Alex', 'ئەسکەندەریە - ئەسکەندەریە', 0, 0, NULL, NULL, 8, 11, NULL, NULL, 98, '2022-11-02 13:20:14', '2022-11-28 10:54:12'),
(85, 'rent', '01098604983', NULL, 21, 'تتت', 'نسنؤن', 'تتت', 'نسنؤن', 'تتت', 'نسنؤن', 'activate', '0', '2', '3000', 'IQD', '178', 2, NULL, 4, NULL, 4, 4, 4, 'وتء', 'وتء', 'وتء', '01098604983', 20.123, 30.123, 'الرياض - بغداد', 'elryad - Baghdad', ' - ', 1, 0, NULL, NULL, 1, 1, NULL, NULL, 100, '2022-11-06 10:09:44', '2022-11-17 09:47:53'),
(86, 'rent', '01098604983', NULL, 90, 'اول بوست ليا مع اللوكيشن', 'عظمه ياض ياض يحيى', 'اول بوست ليا مع اللوكيشن', 'عظمه ياض ياض يحيى', 'اول بوست ليا مع اللوكيشن', 'عظمه ياض ياض يحيى', 'activate', '0', '2', '3,000', 'IQD', '500', 0, NULL, 4, NULL, 3, 1, 4, 'Ahmad Yehia', 'Ahmad Yehia', 'Ahmad Yehia', '01098604983', 30.5607184, 31.0087024, 'القاهره 3 - القاهره', 'cairo 3 - cairo', ' - ', 0, 0, NULL, NULL, 7, 9, NULL, NULL, 100, '2022-11-10 10:50:50', '2023-11-13 13:02:23'),
(87, 'sale', '23232323232', NULL, 4, 'الاعلان دا اتعدل بتاع الرقم الكبير', 'الرقم الكبير دا كان اختبار بس عشان الفرزه بتاع الارقام تكون شغاله', 'الاعلان دا اتعدل بتاع الرقم الكبير', 'الرقم الكبير دا كان اختبار بس عشان الفرزه بتاع الارقام تكون شغاله', 'الاعلان دا اتعدل بتاع الرقم الكبير', 'الرقم الكبير دا كان اختبار بس عشان الفرزه بتاع الارقام تكون شغاله', 'activate', '0', '3', '128,000', 'IQD', '120', 0, NULL, 3, NULL, 4, 5, 2, 'تتهتااااا', 'تتهتااااا', 'تتهتااااا', '32323232323', 30.56609133506894, 31.039949194785265, 'البصره 1 - البصرة', 'basra 1 - Basra', ' - ', 0, 0, NULL, NULL, 6, 5, NULL, NULL, 100, '2022-12-12 13:04:14', '2023-01-24 13:09:27'),
(88, 'sale', '077', NULL, 1, 'Mustafa test', 'bbbbbb', 'Mustafa test', 'bbbbbb', 'Mustafa test', 'bbbbbb', 'activate', '1', '6', '5,000', 'USD', '600', 1, NULL, 3, NULL, 3, 3, 2, 'Mustafa test', 'Mustafa test', 'Mustafa test', '077', 0, 0, 'الرياض - بغداد', 'elryad - Baghdad', ' - ', 0, 0, NULL, NULL, 1, 1, NULL, NULL, 100, '2023-01-03 09:03:12', '2023-03-02 11:54:03'),
(89, 'sale', '999', NULL, 5, 'عه٦٦٦٦٠٠٠٠٠٠٠٠٠٤٤٤٤٤٤٠', 'هههههههههه', 'عه٦٦٦٦٠٠٠٠٠٠٠٠٠٤٤٤٤٤٤٠', 'هههههههههه', 'عه٦٦٦٦٠٠٠٠٠٠٠٠٠٤٤٤٤٤٤٠', 'هههههههههه', 'activate', '1', '0', '2,000', 'IQD', '5,000', 0, NULL, 1, NULL, 1, 2, 1, 'يخيى', 'يخيى', 'يخيى', '99999', 0, 0, 'الرياض - بغداد', 'elryad - Baghdad', ' - ', 0, 0, NULL, NULL, 1, 1, NULL, NULL, 100, '2023-01-03 14:09:12', '2023-11-08 10:37:33'),
(90, 'sale', '1234567890', NULL, 5, 'Yehia test', 'all is done', 'Yehia test', 'all is done', 'Yehia test', 'all is done', 'activate', '1', '0', '50,000', 'IQD', '500', 0, NULL, 2, NULL, 13, 3, 4, 'يحيى', 'يحيى', 'يحيى', '1234567890', 30.575840722445996, 31.017032927530664, 'البصره 1 - البصرة', 'basra 1 - Basra', ' - ', 0, 0, NULL, NULL, 6, 5, NULL, NULL, 100, '2023-01-03 15:42:55', '2023-08-19 11:18:09'),
(91, 'sale', '0109043966', NULL, 18, 'اختبار لرفع اعلان', 'اعلااااان', 'اختبار لرفع اعلان', 'اعلااااان', 'اختبار لرفع اعلان', 'اعلااااان', 'activate', '0', '3', '5,000', 'IQD', '5,000', 0, NULL, 4, NULL, 4, 5, 3, 'احمد يحيى', 'احمد يحيى', 'احمد يحيى', '0109043966', 30.564234197799728, 31.01191046779141, 'الرياض - بغداد', 'elryad - Baghdad', ' - ', 0, 0, NULL, NULL, 1, 1, NULL, NULL, 100, '2023-01-09 10:32:35', '2023-11-08 09:55:00'),
(92, 'sale', '07704687126', NULL, 1, '123', '1234', '123', '1234', '123', '1234', 'activate', '1', '1', '1,000', 'USD', '100', 15, NULL, 13, NULL, 12, 11, 14, 'mustafa 44', 'mustafa 44', 'mustafa 44', '07704687126', 37.42056772438252, -122.080078125, 'Meghan Travisyyyy - بغداد', 'EricaRowlandyyyyy - Baghdad', ' - ', 0, 0, NULL, NULL, 1, 3, NULL, NULL, 140, '2023-08-26 18:06:20', '2023-09-03 11:08:57'),
(93, 'rent', '12345678901', NULL, 11, 'محل للايجار', 'محل للايجار اااااا', 'محل للايجار', 'محل للايجار اااااا', 'محل للايجار', 'محل للايجار اااااا', 'activate', '1', '5', '1,000,000', 'USD', '100', 2, NULL, 1, NULL, 1, 1, 1, 'Must', 'Must', 'Must', '12345678901', 37.37779657237117, -122.11341164328834, 'الرياض - بغداد', 'elryad - Baghdad', ' - ', 0, 0, NULL, NULL, 1, 1, NULL, NULL, 140, '2023-09-03 10:34:50', '2023-11-08 10:37:31'),
(94, 'rent', '0123333333', NULL, 0, 'title ar', 'description ar 1', 'title en', 'description en', 'title ku', 'description Ku', 'activate', '0', 'House', '200', 'USD', '20', 3, NULL, 1, NULL, 1, 1, 2, 'osama ar', 'osama en', 'osama Ku', '02111222223', 2.555555, 10.4455555, 'Meghan Travisyyyy - بغداد', 'EricaRowlandyyyyy - Baghdad', ' - ', 0, 0, NULL, NULL, 1, 3, NULL, NULL, 98, '2023-10-09 11:59:10', '2023-10-09 11:59:10'),
(95, 'rent', '0123333333', NULL, 0, 'title ar', 'description ar 1', 'title en', 'description en', 'title ku', 'description Ku', 'activate', '0', 'House', '200', 'USD', '20', 3, NULL, 1, NULL, 1, 1, 2, 'osama ar', 'osama en', 'osama Ku', '02111222223', 2.555555, 10.4455555, 'Meghan Travisyyyy - بغداد', 'EricaRowlandyyyyy - Baghdad', ' - ', 0, 0, NULL, NULL, 1, 3, NULL, NULL, 98, '2023-10-09 13:05:54', '2023-10-09 13:05:54'),
(96, 'rent', '0123333333', NULL, 0, 'title ar', 'description ar 1', 'title en', 'description en', 'title ku', 'description Ku', 'activate', '0', 'House', '200', 'USD', '20', 3, NULL, 1, NULL, 1, 1, 2, 'osama ar', 'osama en', 'osama Ku', '02111222223', 2.555555, 10.4455555, 'البصره 2 - بغداد', 'basra 2 - Baghdad', ' - ', 0, 0, NULL, NULL, 1, 6, NULL, NULL, 142, '2023-10-09 13:09:13', '2023-10-09 13:09:13'),
(97, 'rent', '0123333333', NULL, 1, 'title ar', 'description ar 1', 'title en', 'description en', 'title ku', 'description Ku', 'activate', '0', 'House', '200', 'USD', '20', 3, NULL, 1, NULL, 1, 1, 2, 'osama ar', 'osama en', 'osama Ku', '02111222223', 2.555555, 10.4455555, 'البصره 2 - بغداد', 'basra 2 - Baghdad', ' - ', 0, 0, NULL, NULL, 1, 6, NULL, NULL, 142, '2023-10-09 13:10:57', '2023-11-08 10:37:27'),
(98, 'rent', '0123333333', NULL, 0, 'title ar', 'description ar 1', 'title en', 'description en', 'title ku', 'description Ku', 'activate', '0', 'House', '200', 'USD', '20', 3, NULL, 1, NULL, 1, 1, 2, 'osama ar', 'osama en', 'osama Ku', '02111222223', 2.555555, 10.4455555, 'البصره 2 - بغداد', 'basra 2 - Baghdad', ' - ', 0, 0, NULL, NULL, 1, 6, NULL, NULL, 142, '2023-10-09 13:11:04', '2023-10-09 13:11:04'),
(99, 'sale', '0855888888', NULL, 0, 'gghhh', 'ghjjju', 'gghhh', 'ghjjju', 'gghhh', 'ghjjju', 'activate', '1', '2', '8,555', 'USD', '0,855', 2, NULL, 2, NULL, 2, 2, 2, 'fffg', 'fffg', 'fffg', '5888566666', 30.564963791680924, 31.00943429129464, 'الرياض - بغداد', 'elryad - Baghdad', ' - ', 0, 0, NULL, NULL, 1, 1, NULL, NULL, 142, '2023-10-09 13:27:28', '2023-10-09 13:27:28'),
(101, 'sale', '01098604983', NULL, 4, 'شقة للبيع بالتجمع الخامس', 'شقة 176م بكمبوند سيفورا هايتس دقائق معدودة من شارع التسعين و خلف الجامعة الامريكية\r\nمساحات خضراء كبيره', 'Apartment for sale in Fifth Settlement', 'Apartment 176 m in Sephora Heights compound, a few minutes from the 90th Street and behind the American University\r\nLarge green spaces', 'شوقە بۆ فرۆشتن لە شارۆچکەی پێنجەم', 'شوقە 176 م لە کۆمەڵگەی سیفۆرا هایتس، چەند خولەکێک لە شەقامی 90 و پشت زانکۆی ئەمریکی دوورە\r\nفەزای سەوزی گەورە', 'activate', '0', '2', '3000', 'USD', '178', 6, NULL, 4, NULL, 2, 1, 2, 'عبدالله محمود', 'Abdallah Mahmoud', 'عەبدوڵڵا مەحمود', '01098604983', 30.5607184, 31.0087024, 'التجمع الخامس', 'location_name en', 'Fifth Settlement', 1, 0, NULL, NULL, 1, 1, NULL, NULL, 143, '2022-10-27 09:12:03', '2022-10-27 14:24:45'),
(102, 'rent', '01098604983', NULL, 5, 'شقة للايجار بالتجمع الخامس', 'شقة 176م بكمبوند سيفورا هايتس دقائق معدودة من شارع التسعين و خلف الجامعة الامريكية\r\nمساحات خضراء كبيره', 'Apartment for sale in Fifth Settlement', 'Apartment 176 m in Sephora Heights compound, a few minutes from the 90th Street and behind the American University\r\nLarge green spaces', 'شوقە بۆ فرۆشتن لە شارۆچکەی پێنجەم', 'شوقە 176 م لە کۆمەڵگەی سیفۆرا هایتس، چەند خولەکێک لە شەقامی 90 و پشت زانکۆی ئەمریکی دوورە\r\nفەزای سەوزی گەورە', 'activate', '0', '2', '3000', 'USD', '178', 6, NULL, 4, NULL, 2, 1, 2, 'عبدالله محمود', 'Abdallah Mahmoud', 'عەبدوڵڵا مەحمود', '01098604983', 30.5607184, 31.0087024, 'التجمع الخامس', 'location_name en', 'Fifth Settlement', 0, 0, NULL, NULL, 1, 1, NULL, NULL, 143, '2022-10-27 09:12:03', '2023-11-08 10:37:22'),
(103, 'sale', '01062477474', NULL, 2, 'watan', 'watan', 'watan', 'watan', 'watan', 'watan', 'activate', '1', '2', '120', 'USD', '50', 2, NULL, 4, NULL, 3, 4, 4, 'mohamed', 'mohamed', 'mohamed', '01062477474', 30.62761479827123, 31.015189034598194, 'الرياض - بغداد', 'elryad - Baghdad', ' - ', 0, 0, NULL, NULL, 1, 1, NULL, NULL, 100, '2023-10-16 13:50:37', '2023-11-08 10:37:19'),
(104, 'sale', '01062477474', NULL, 1, 'watan', 'watN', 'watan', 'watN', 'watan', 'watN', 'pending', '1', '3', '120', 'USD', '15', 2, NULL, 3, NULL, 3, 4, 3, 'Ahmed', 'Ahmed', 'Ahmed', '01062477474', 30.560740569246626, 31.018131801060264, 'الرياض - بغداد', 'elryad - Baghdad', ' - ', 0, 0, NULL, NULL, 1, 1, NULL, NULL, 100, '2023-10-16 14:27:46', '2023-10-25 09:22:45'),
(105, 'sale', '01062477474', NULL, 0, 'y', 'y', 'y', 'y', 'y', 'y', 'activate', '1', '5', '120', 'USD', '5', -1, NULL, 2, NULL, 2, 2, 2, 'ah.ed', 'ah.ed', 'ah.ed', '01062474474', 30.56209202042556, 31.01499285016743, 'الرياض - بغداد', 'elryad - Baghdad', ' - ', 1, 0, NULL, NULL, 1, 1, NULL, NULL, 100, '2023-10-16 15:40:14', '2023-10-16 15:40:14'),
(107, 'sale', '07704687126', NULL, 7, 'ad 1 test', 'ad 1 test des', 'ad 1 test', 'ad 1 test des', 'ad 1 test', 'ad 1 test des', 'pending', '1', '1', '10,000', 'USD', '100', 15, NULL, 15, NULL, 15, 15, 15, 'Mustafa', 'Mustafa', 'Mustafa', '07704687126', 37.4313496387605, -122.08132657137784, 'المنصور - بغداد', 'المنصور - Baghdad', 'المنصور - ', 1, 0, NULL, NULL, 1, 4, NULL, NULL, 145, '2023-10-21 09:10:21', '2023-10-25 09:16:29'),
(108, 'sale', '01062477474', NULL, 0, 'y', 'y', 'y', 'y', 'y', 'y', 'pending', '1', '3', '120', 'USD', '200', -1, NULL, 1, NULL, 0, 0, 0, 'j', 'j', 'j', '01062477474', 30.565808414108467, 31.01970127650668, 'الرياض - بغداد', 'elryad - Baghdad', ' - ', 1, 0, NULL, NULL, 1, 1, NULL, NULL, 100, '2023-10-23 14:17:18', '2023-10-25 09:26:13'),
(109, 'rent', '01201709414', NULL, 0, 'hhh', 'hhh', 'hhh', 'hhh', 'hhh', 'hhh', 'activate', '1', '0', '999', 'IQD', '999', 1, NULL, 2, NULL, 2, 2, 1, 'hhho', 'hhho', 'hhho', '01201709414', 30.577801258945755, 30.95182146344868, 'الرياض - بغداد', 'elryad - Baghdad', ' - ', 0, 0, NULL, NULL, 1, 1, NULL, NULL, 100, '2023-11-06 09:10:58', '2023-11-09 08:48:32'),
(110, 'sale', '01016252525', NULL, 2, 'ttt', 'tt', 'ttt', 'tt', 'ttt', 'tt', 'activate', '1', '1', '66', 'USD', '666', 1, NULL, 2, NULL, 2, 2, 2, 'ahmed', 'ahmed', 'ahmed', '01201706414', 37.42232763712823, -122.0588545365767, 'البصره 1 - البصرة', 'basra 1 - Basra', ' - ', 1, 0, NULL, NULL, 6, 5, NULL, NULL, 100, '2023-11-06 09:13:53', '2023-11-09 08:48:11'),
(113, 'sale', '01201709414', NULL, 0, 'test', 'gggg', 'test', 'gggg', 'test', 'gggg', 'activate', '1', '1', '250', '1', '66', 1, NULL, 2, NULL, 2, 2, 2, 'test', 'test', 'test', '01201709414', 30.544014803325, 31.008126395089306, 'الرياض - بغداد', 'elryad - Baghdad', ' - ', 0, 0, NULL, NULL, 1, 1, NULL, NULL, 70, '2023-11-06 14:27:17', '2023-11-06 14:27:17'),
(114, 'sale', '01058085263', NULL, 0, 'test', 'test', 'test', 'test', 'test', 'test', 'activate', '1', '0', '555', 'IQD', '111', 2, NULL, 3, NULL, 2, 4, 3, 'aya', 'aya', 'aya', '01085263478', 30.567159794697453, 31.092093331473194, 'البصره 2 - البصرة', 'basra 2 - Basra', ' - ', 0, 0, NULL, NULL, 6, 6, NULL, NULL, 70, '2023-11-06 14:46:04', '2023-11-06 14:46:04'),
(116, 'sale', '01201709414', NULL, 4, 'hhh', 'huu', 'hhh', 'huu', 'hhh', 'huu', 'activate', '1', '1', '666', '2', '6', 2, NULL, 3, NULL, 2, 2, 3, 'tesf', 'tesf', 'tesf', '01201709414', 30.555165634175708, 31.034611293247764, 'الرياض - بغداد', 'elryad - Baghdad', ' - ', 0, 0, NULL, NULL, 1, 1, NULL, NULL, 70, '2023-11-06 15:02:04', '2023-11-06 15:50:52'),
(117, 'rent', '01201709414', NULL, 3, 'test', 'ahmd', 'test', 'ahmd', 'test', 'ahmd', 'activate', '1', '1', '30', 'IQD', '30', 1, NULL, 1, NULL, 1, 1, 1, 'ahe', 'ahe', 'ahe', '01201709414', 37.43729761650121, -122.07558371803978, 'البصره 1 - بغداد', 'basra 1 - Baghdad', ' - ', 0, 0, NULL, NULL, 1, 1, NULL, NULL, 100, '2023-11-07 09:25:01', '2023-11-09 08:48:03'),
(118, 'sale', '01201709414', NULL, 2, 'ads', 'describes', 'ads', 'describes', 'ads', 'describes', 'activate', '1', '1', '99', 'IQD', '999', 1, NULL, 2, NULL, 2, 2, 2, 'test', 'test', 'test', '0120170944', 30.543676879365613, 31.01126534598214, 'الرياض - بغداد', 'elryad - Baghdad', ' - ', 0, 0, NULL, NULL, 1, 1, NULL, NULL, 148, '2023-11-08 09:51:56', '2023-11-08 10:37:10'),
(119, 'sale', '01201709414', NULL, 4, 'juu', 'uuu', 'juu', 'uuu', 'juu', 'uuu', 'activate', '1', '6', '6', 'IQD', '66', 1, NULL, 2, NULL, 2, 2, 0, 'uuu', 'uuu', 'uuu', '01201709414', 30.53472146594649, 31.026371547154014, 'الرياض - بغداد', 'elryad - Baghdad', ' - ', 0, 0, NULL, NULL, 1, 1, NULL, NULL, 148, '2023-11-08 10:02:42', '2023-11-13 12:57:54'),
(120, 'sale', '01201709414', NULL, 16, 'uu', 'juuj', 'uu', 'juuj', 'uu', 'juuj', 'activate', '1', '2', '66', 'IQD', '66', 1, NULL, 1, NULL, 1, 1, 2, 'yyy', 'yyy', 'yyy', '01201709414', 30.55330725131752, 31.015581403459805, 'الرياض - بغداد', 'elryad - Baghdad', ' - ', 0, 0, NULL, NULL, 1, 1, NULL, NULL, 148, '2023-11-08 10:03:56', '2023-11-13 12:57:59'),
(121, 'sale', '01501709558', NULL, 1, 'eee', 'gc', 'eee', 'gc', 'eee', 'gc', 'activate', '1', '1', '55', 'IQD', '55', 1, NULL, 1, NULL, 1, 1, 2, 'ddd', 'ddd', 'ddd', '04587458874', 30.537594047001534, 31.005379813058056, 'Meghan Travisyyyy - بغداد', 'EricaRowlandyyyyy - Baghdad', ' - ', 1, 0, NULL, NULL, 1, 3, NULL, NULL, 157, '2023-11-08 15:21:02', '2023-11-08 15:36:37'),
(122, 'sale', '01122717960', NULL, 1, 'qhhh', 'hsdhdh', 'qhhh', 'hsdhdh', 'qhhh', 'hsdhdh', 'activate', '1', '0', '800', 'IQD', '80', 1, NULL, 4, NULL, 3, 3, 3, '8iird', '8iird', '8iird', '01122717960', 30.549590378857026, 31.012834821428555, 'Meghan Travisyyyy - بغداد', 'EricaRowlandyyyyy - Baghdad', ' - ', 1, 0, NULL, NULL, 1, 3, NULL, NULL, 157, '2023-11-08 15:39:46', '2023-11-08 15:40:57'),
(123, 'sale', '01201709414', NULL, 0, 'fff', 'ff', 'fff', 'ff', 'fff', 'ff', 'activate', '1', '0', '55', 'IQD', '88', 1, NULL, 2, NULL, 2, 2, 2, 'ttt', 'ttt', 'ttt', '01251709414', 30.5539830310193, 31.00577218191964, 'البصره 2 - البصرة', 'basra 2 - Basra', ' - ', 0, 0, NULL, NULL, 6, 6, NULL, NULL, 157, '2023-11-08 15:48:09', '2023-11-08 15:48:09'),
(124, 'rent', '01201709414', NULL, 10, 'TEST', 'test desc', 'TEST', 'test desc', 'TEST', 'test desc', 'pending', '1', '1', '58', 'IQD', '200', 1, NULL, 2, NULL, 2, 2, 2, 'TEST', 'TEST', 'TEST', '01201709414', 37.40913967915322, -122.08681973544034, 'الرياض - بغداد', 'elryad - Baghdad', ' - ', 0, 0, NULL, NULL, 1, 1, NULL, NULL, 100, '2023-11-09 08:57:09', '2023-11-28 12:46:34'),
(125, 'sale', '7204687126', NULL, 1, 'fvsdsdf', 'asfdsfasdfsdf', 'fvsdsdf', 'asfdsfasdfsdf', 'fvsdsdf', 'asfdsfasdfsdf', 'activate', '1', '5', '1,111,111', '2', '200', 2, NULL, 3, NULL, 3, 3, 3, 'mussss', 'mussss', 'mussss', '7204687126', 37.4304574013314, -122.08719426935369, 'Meghan Travisyyyy - بغداد', 'EricaRowlandyyyyy - Baghdad', ' - ', 0, 0, NULL, NULL, 1, 3, NULL, NULL, 146, '2023-11-28 14:46:06', '2023-11-28 14:46:32'),
(126, 'sale', '7704687126', NULL, 2, '123456', '123456', '123456', '123456', '123456', '123456', 'activate', '1', '3', '123,456', 'IQD', '123,456', 1, NULL, 1, NULL, 1, 1, 1, '123456', '123456', '123456', '7704687126', 37.361326272405385, -122.10766878995028, 'الرياض - بغداد', 'elryad - Baghdad', ' - ', 1, 0, NULL, NULL, 1, 1, NULL, NULL, 146, '2023-12-09 14:10:00', '2023-12-09 14:13:16');

-- --------------------------------------------------------

--
-- Table structure for table `post_favourites`
--

CREATE TABLE `post_favourites` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `post_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `post_favourites`
--

INSERT INTO `post_favourites` (`id`, `user_id`, `post_id`, `created_at`, `updated_at`) VALUES
(3, 21, 23, '2022-10-10 14:24:10', '2022-10-10 14:24:10'),
(4, 9, 23, '2022-10-13 10:33:30', '2022-10-13 10:33:30'),
(5, 105, 23, '2022-11-02 09:41:12', '2022-11-02 09:41:12'),
(6, 105, 42, '2022-11-02 10:10:20', '2022-11-02 10:10:20'),
(57, 100, 87, '2023-01-03 09:14:57', '2023-01-03 09:14:57'),
(59, 100, 91, '2023-02-12 11:42:51', '2023-02-12 11:42:51'),
(61, 141, 93, '2023-09-03 10:55:05', '2023-09-03 10:55:05'),
(62, 141, 86, '2023-09-03 10:55:15', '2023-09-03 10:55:15'),
(69, 100, 123, '2023-11-09 08:46:25', '2023-11-09 08:46:25'),
(70, 100, 120, '2023-11-09 08:46:28', '2023-11-09 08:46:28'),
(71, 157, 68, '2023-11-09 09:38:13', '2023-11-09 09:38:13'),
(73, 146, 126, '2023-12-09 14:12:31', '2023-12-09 14:12:31');

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `location_name_ar` varchar(191) DEFAULT NULL,
  `location_name_en` varchar(191) DEFAULT NULL,
  `location_name_ku` varchar(191) DEFAULT NULL,
  `phone_code` varchar(255) NOT NULL DEFAULT '+964',
  `phone` varchar(191) DEFAULT NULL,
  `advertizer_name` varchar(255) DEFAULT NULL,
  `whatsapp` varchar(191) DEFAULT NULL,
  `title_ar` varchar(191) NOT NULL,
  `description_ar` text NOT NULL,
  `title_en` varchar(191) NOT NULL,
  `description_en` text NOT NULL,
  `title_ku` varchar(191) NOT NULL,
  `description_ku` text NOT NULL,
  `views` tinyint(4) NOT NULL DEFAULT 0,
  `type` varchar(191) DEFAULT NULL,
  `currency` enum('USD','IQD') NOT NULL DEFAULT 'USD',
  `company_id` bigint(20) UNSIGNED DEFAULT NULL,
  `agent_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `sub_category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `area_id` int(11) DEFAULT NULL,
  `sub_area_id` int(11) DEFAULT NULL,
  `latitude` double DEFAULT NULL,
  `longitude` double DEFAULT NULL,
  `min_price` varchar(255) DEFAULT NULL,
  `max_price` varchar(191) DEFAULT NULL,
  `project_status` enum('new','ongoing','finished') NOT NULL DEFAULT 'new',
  `area_range` varchar(255) DEFAULT NULL,
  `min_price_of_meter` varchar(191) DEFAULT NULL,
  `max_price_of_meter` varchar(191) DEFAULT NULL,
  `desc` text DEFAULT NULL,
  `payment_terms` text DEFAULT NULL,
  `payment_details` text DEFAULT NULL,
  `is_invested` enum('0','1') NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`id`, `name`, `location_name_ar`, `location_name_en`, `location_name_ku`, `phone_code`, `phone`, `advertizer_name`, `whatsapp`, `title_ar`, `description_ar`, `title_en`, `description_en`, `title_ku`, `description_ku`, `views`, `type`, `currency`, `company_id`, `agent_id`, `user_id`, `category_id`, `sub_category_id`, `area_id`, `sub_area_id`, `latitude`, `longitude`, `min_price`, `max_price`, `project_status`, `area_range`, `min_price_of_meter`, `max_price_of_meter`, `desc`, `payment_terms`, `payment_details`, `is_invested`, `created_at`, `updated_at`) VALUES
(2, 'مشروع العاصمة الادارية', NULL, NULL, NULL, '', NULL, NULL, NULL, '0', '', '', '', '', '', 4, NULL, 'USD', 3, 5, NULL, NULL, NULL, NULL, NULL, 30.71541029954, 29.21541910954, '110000', '175000', 'ongoing', '270', '2200', '5500', 'وصف المشورع وصف المشورع وصف المشورع وصف المشورع وصف المشورع وصف المشورع وصف المشورع وصف المشورع وصف المشورع وصف المشورع وصف المشورع وصف المشورع وصف المشورع وصف المشورع وصف المشورع وصف المشورع', 'شروط الدفع شروط الدفع شروط الدفع شروط الدفعشروط الدفع شروط الدفع شروط الدفع شروط الدفع شروط الدفع شروط الدفعشروط الدفع شروط الدفع شروط الدفعشروط الدفع شروط الدفعشروط الدفع شروط الدفع شروط الدفع شروط الدفع شروط الدفع شروط الدفع', 'تفاصيل الدفع تفاصيل الدفع تفاصيل الدفع تفاصيل الدفع تفاصيل الدفع تفاصيل الدفع تفاصيل الدفع تفاصيل الدفع تفاصيل الدفع تفاصيل الدفع تفاصيل الدفع تفاصيل الدفع تفاصيل الدفع تفاصيل الدفع تفاصيل الدفع تفاصيل الدفع تفاصيل الدفع تفاصيل الدفع تفاصيل الدفع تفاصيل الدفع تفاصيل الدفع تفاصيل الدفع تفاصيل الدفع تفاصيل الدفع تفاصيل الدفع تفاصيل الدفع تفاصيل الدفع ', '0', '2022-08-23 14:24:33', '2022-10-30 10:30:19'),
(4, NULL, 'location_name ar', 'location_name en', 'location_name Ku', '', '0123333333', NULL, '02111222223', 'title ar', 'description ar', 'title en', 'description en', 'title ku', 'description Ku', 2, 'House', 'USD', 2, NULL, 3, NULL, NULL, 1, 1, 2.555555, 10.4455555, '0', '200', 'ongoing', '20', NULL, NULL, NULL, NULL, NULL, '0', '2022-09-27 10:15:14', '2022-10-30 10:33:58'),
(8, NULL, 'location_name ar', 'location_name en', 'location_name Ku', '', '0123333333', NULL, '02111222223', 'title ar', 'description ar', 'title en', 'description en', 'title ku', 'description Ku', 0, 'House', 'USD', 2, NULL, 3, NULL, NULL, 1, 1, 2.555555, 10.4455555, '0', '200', 'ongoing', '20', NULL, NULL, NULL, NULL, NULL, '0', '2022-09-27 11:27:10', '2022-09-27 11:27:10'),
(9, NULL, 'location_name ar', 'location_name en', 'location_name Ku', '', '0123333333', NULL, '02111222223', 'title ar', 'description ar', 'title en', 'description en', 'title ku', 'description Ku', 0, 'House', 'USD', 2, NULL, 3, NULL, NULL, 1, 1, 2.555555, 10.4455555, '0', '200', 'ongoing', '20', NULL, NULL, NULL, NULL, NULL, '0', '2022-09-27 11:28:11', '2022-09-27 11:28:11'),
(10, NULL, 'location_name ar', 'location_name en', 'location_name Ku', '', '0123333333', NULL, '02111222223', 'title ar', 'description ar', 'title en', 'description en', 'title ku', 'description Ku', 1, 'House', 'USD', 2, NULL, 3, NULL, NULL, 1, 1, 2.555555, 10.4455555, '0', '200', 'ongoing', '20', NULL, NULL, NULL, NULL, NULL, '0', '2022-09-27 12:02:15', '2022-10-30 10:34:05'),
(11, NULL, 'location_name ar', 'location_name en', 'location_name Ku', '', '0123333333', NULL, '02111222223', 'title ar', 'description ar', 'title en', 'description en', 'title ku', 'description Ku', 0, 'House', 'USD', 2, NULL, 3, NULL, NULL, 1, 1, 2.555555, 10.4455555, '0', '200', 'ongoing', '20', NULL, NULL, NULL, NULL, NULL, '0', '2022-09-27 12:45:46', '2022-09-27 12:45:46'),
(15, NULL, 'location_name ar', 'location_name en', 'location_name Ku', '', '0123333333', NULL, '02111222223', 'title ar', 'description ar', 'title en', 'description en', 'title ku', 'description Ku', 10, 'House', 'USD', 2, NULL, 3, NULL, NULL, 1, 1, 2.555555, 10.4455555, '0', '200', 'ongoing', '20', NULL, NULL, NULL, NULL, NULL, '0', '2022-09-27 13:01:55', '2022-10-30 10:29:15'),
(16, NULL, 'location_name ar', 'location_name en', 'location_name Ku', '', '0123333333', NULL, '02111222223', 'title ar', 'description ar', 'title en', 'description en', 'title ku', 'description Ku', 0, 'House', 'USD', 2, NULL, 3, NULL, NULL, 1, 1, 2.555555, 10.4455555, '0', '200', 'ongoing', '20', NULL, NULL, NULL, NULL, NULL, '0', '2022-09-27 13:45:52', '2022-09-27 13:45:52'),
(17, NULL, 'location_name ar', 'location_name en', 'location_name Ku', '', '0123333333', NULL, '02111222223', 'title ar', 'description ar', 'title en', 'description en', 'title ku', 'description Ku', 2, 'House', 'USD', 2, NULL, 3, NULL, NULL, 1, 1, 2.555555, 10.4455555, '0', '200', 'ongoing', '20', NULL, NULL, NULL, NULL, NULL, '0', '2022-09-27 13:45:53', '2022-10-26 16:16:55'),
(54, NULL, NULL, NULL, NULL, '', '01090439660', NULL, '01090439660', 'المشورع الاول كله تماام', 'هاااا قول يا رب 😂✌️', 'المشورع الاول كله تماام', 'هاااا قول يا رب 😂✌️', 'المشورع الاول كله تماام', 'هاااا قول يا رب 😂✌️', 9, '2', 'USD', NULL, NULL, 101, NULL, NULL, 1, 4, 20.123, 30.123, '500', '2000', 'finished', '50 - 5200', NULL, NULL, NULL, NULL, NULL, '0', '2022-11-01 14:31:46', '2022-11-06 14:10:43'),
(55, NULL, NULL, NULL, NULL, '', '6', NULL, '5', 'خخ', 'غعغ', 'خخ', 'غعغ', 'خخ', 'غعغ', 2, '4', 'USD', NULL, NULL, 100, NULL, NULL, 8, 11, 20.123, 30.123, '5', '60', 'ongoing', '5 - 50', NULL, NULL, NULL, NULL, NULL, '0', '2022-11-01 15:04:48', '2022-11-01 15:21:23'),
(65, NULL, 'القاهره 3 - القاهره', 'cairo 3 - cairo', ' - ', '', '2', NULL, '5', 'ة', 'ا', 'ة', 'ا', 'ة', 'ا', 6, '4', 'USD', NULL, NULL, 10, NULL, NULL, 8, 11, 20.123, 30.123, '3', '9', 'ongoing', '1 - 2', NULL, NULL, NULL, NULL, NULL, '0', '2022-11-06 15:23:04', '2022-11-09 13:21:06'),
(66, NULL, 'القاهره 2 - القاهره', 'cairo 2 - cairo', ' - ', '', '01090439660', NULL, '01090439660', 'ههههههههعنوان', 'غغغغغغغغغتفاااااااصيل', 'ههههههههعنوان', 'غغغغغغغغغتفاااااااصيل', 'ههههههههعنوان', 'غغغغغغغغغتفاااااااصيل', 7, '6', 'USD', NULL, NULL, 10, NULL, NULL, 8, 11, 20.123, 30.123, '500', '6000', 'finished', '8 - 2000', NULL, NULL, NULL, NULL, NULL, '0', '2022-11-07 08:37:03', '2022-11-26 09:20:03'),
(67, NULL, 'البصره 1 - البصرة', 'basra 1 - Basra', ' - ', '', '66666', NULL, '99999', 'تعديل', 'تفاصيل التعديل', 'تعديل', 'تفاصيل التعديل', 'تعديل', 'تفاصيل التعديل', 16, '6', 'USD', NULL, NULL, 10, NULL, NULL, 7, 8, 20.123, 30.123, '5', '5', 'ongoing', '8 - 55', NULL, NULL, NULL, NULL, NULL, '0', '2022-11-07 08:57:51', '2022-12-07 14:35:07'),
(68, NULL, 'الاسكندريه 1 - الاسكندريه', 'Alex1 - Alex', 'ئەسکەندەریە - ئەسکەندەریە', '', '0123333333', 'advertizer name', '02111222223', 'title ar', 'description ar', 'title en', 'description en', 'title ku', 'description Ku', 4, 'House', 'USD', NULL, NULL, 98, NULL, NULL, 8, 11, 2.555555, 10.4455555, '0', '200', 'ongoing', '20', NULL, NULL, NULL, NULL, NULL, '0', '2022-11-07 10:25:22', '2023-11-09 14:26:16'),
(69, NULL, 'الاسكندريه 1 - الاسكندريه', 'Alex1 - Alex', 'ئەسکەندەریە - ئەسکەندەریە', '+964', '0123333333', 'advertizer name', '02111222223', 'title ar', 'description ar', 'title en', 'description en', 'title ku', 'description Ku', 6, '2', 'USD', NULL, NULL, 10, NULL, NULL, 8, 11, 2.555555, 10.4455555, '0', '200', 'ongoing', '20', NULL, NULL, NULL, NULL, NULL, '0', '2022-11-29 09:03:39', '2023-02-05 21:50:38');

-- --------------------------------------------------------

--
-- Table structure for table `project_favourites`
--

CREATE TABLE `project_favourites` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `project_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `project_favourites`
--

INSERT INTO `project_favourites` (`id`, `user_id`, `project_id`, `created_at`, `updated_at`) VALUES
(5, 105, 68, '2022-11-08 14:42:44', '2022-11-08 14:42:44');

-- --------------------------------------------------------

--
-- Table structure for table `project_payment_plans`
--

CREATE TABLE `project_payment_plans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `project_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `percent` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `project_payment_plans`
--

INSERT INTO `project_payment_plans` (`id`, `project_id`, `title`, `percent`, `created_at`, `updated_at`) VALUES
(3, 8, 'title', '10', '2022-09-27 11:27:10', '2022-09-27 11:27:10'),
(4, 9, 'title', '10', '2022-09-27 11:28:11', '2022-09-27 11:28:11'),
(5, 10, 'title', '10', '2022-09-27 12:02:15', '2022-09-27 12:02:15'),
(6, 11, 'title', '10', '2022-09-27 12:45:46', '2022-09-27 12:45:46'),
(7, 15, 'title', '10', '2022-09-27 13:01:55', '2022-09-27 13:01:55'),
(8, 16, 'title', '10', '2022-09-27 13:45:52', '2022-09-27 13:45:52'),
(9, 17, 'title', '10', '2022-09-27 13:45:53', '2022-09-27 13:45:53'),
(31, 54, 'title', '20', '2022-11-01 14:31:47', '2022-11-01 14:31:47'),
(32, 54, 'title', '50', '2022-11-01 14:31:47', '2022-11-01 14:31:47'),
(33, 55, 'نىع', '653', '2022-11-01 15:04:54', '2022-11-01 15:04:54'),
(34, 55, 'غبغ', '23', '2022-11-01 15:04:54', '2022-11-01 15:04:54'),
(47, 65, 'غ', '3', '2022-11-06 15:23:05', '2022-11-06 15:23:05'),
(53, 66, 'plan 1', '20', '2022-11-07 08:37:04', '2022-11-07 08:37:04'),
(55, 66, 'plan 3', '60', '2022-11-07 08:37:04', '2022-11-07 08:37:04'),
(58, 68, 'title', '10', '2022-11-07 10:25:22', '2022-11-07 10:25:22'),
(59, 66, 'plan 1', '20', '2022-11-07 15:21:24', '2022-11-07 15:21:24'),
(60, 66, 'plan 3', '60', '2022-11-07 15:21:24', '2022-11-07 15:21:24'),
(61, 66, 'بلان', '90', '2022-11-07 15:21:24', '2022-11-07 15:21:24'),
(62, 65, 'ا', '33', '2022-11-07 15:53:27', '2022-11-07 15:53:27'),
(63, 67, 'ا', '5', '2022-11-08 08:32:46', '2022-11-08 08:32:46'),
(64, 67, 'غ', '3', '2022-11-08 08:32:46', '2022-11-08 08:32:46'),
(65, 69, 'title', '10', '2022-11-29 09:03:39', '2022-11-29 09:03:39');

-- --------------------------------------------------------

--
-- Table structure for table `project_unit_details`
--

CREATE TABLE `project_unit_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `project_id` bigint(20) UNSIGNED NOT NULL,
  `price` double NOT NULL,
  `area` varchar(255) NOT NULL,
  `bedrooms` varchar(255) NOT NULL,
  `bathrooms` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `project_unit_details`
--

INSERT INTO `project_unit_details` (`id`, `project_id`, `price`, `area`, `bedrooms`, `bathrooms`, `created_at`, `updated_at`) VALUES
(3, 8, 20, '20', '2', '2', '2022-09-27 11:27:10', '2022-09-27 11:27:10'),
(4, 9, 20, '20', '2', '2', '2022-09-27 11:28:11', '2022-09-27 11:28:11'),
(5, 10, 20, '20', '2', '2', '2022-09-27 12:02:15', '2022-09-27 12:02:15'),
(6, 11, 20, '20', '2', '2', '2022-09-27 12:45:46', '2022-09-27 12:45:46'),
(7, 15, 20, '20', '2', '2', '2022-09-27 13:01:55', '2022-09-27 13:01:55'),
(8, 16, 20, '20', '2', '2', '2022-09-27 13:45:52', '2022-09-27 13:45:52'),
(9, 17, 20, '20', '2', '2', '2022-09-27 13:45:53', '2022-09-27 13:45:53'),
(18, 54, 500, '2000', '5', '2', '2022-11-01 14:31:47', '2022-11-01 14:31:47'),
(19, 54, 1000, '4000', '10', '4', '2022-11-01 14:31:47', '2022-11-01 14:31:47'),
(20, 54, 1000, '5200', '5', '2', '2022-11-01 14:31:47', '2022-11-01 14:31:47'),
(21, 54, 2000, '50', '5', '2', '2022-11-01 14:31:47', '2022-11-01 14:31:47'),
(22, 55, 5, '5', '5', '5', '2022-11-01 15:04:54', '2022-11-01 15:04:54'),
(23, 55, 50, '50', '50', '50', '2022-11-01 15:04:54', '2022-11-01 15:04:54'),
(24, 55, 60, '5', '5', '5', '2022-11-01 15:04:54', '2022-11-01 15:04:54'),
(25, 55, 10, '20', '50', '12', '2022-11-01 15:04:54', '2022-11-01 15:04:54'),
(38, 65, 9, '2', '2', '2', '2022-11-06 15:23:05', '2022-11-06 15:23:05'),
(44, 66, 500, '2000', '2', '3', '2022-11-07 08:37:04', '2022-11-07 08:37:04'),
(45, 66, 1000, '300', '2', '2', '2022-11-07 08:37:04', '2022-11-07 08:37:04'),
(47, 67, 5, '55', '5', '5', '2022-11-07 08:57:51', '2022-11-07 08:57:51'),
(49, 68, 20, '20', '2', '2', '2022-11-07 10:25:22', '2022-11-07 10:25:22'),
(50, 66, 500, '2000', '2', '3', '2022-11-07 15:21:24', '2022-11-07 15:21:24'),
(51, 66, 1000, '300', '2', '2', '2022-11-07 15:21:24', '2022-11-07 15:21:24'),
(52, 66, 6000, '8', '8', '8', '2022-11-07 15:21:24', '2022-11-07 15:21:24'),
(53, 65, 3, '1', '5', '2', '2022-11-07 15:53:27', '2022-11-07 15:53:27'),
(54, 67, 5, '8', '5', '5', '2022-11-08 08:32:46', '2022-11-08 08:32:46'),
(55, 69, 20, '20', '2', '2', '2022-11-29 09:03:39', '2022-11-29 09:03:39');

-- --------------------------------------------------------

--
-- Table structure for table `providers`
--

CREATE TABLE `providers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `provider` varchar(255) DEFAULT NULL,
  `provider_id` varchar(255) DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `providers`
--

INSERT INTO `providers` (`id`, `provider`, `provider_id`, `avatar`, `user_id`, `created_at`, `updated_at`) VALUES
(3, 'google', '101223282679982942194', 'https://lh3.googleusercontent.com/a/ALm5wu3JdAylRcKTTaLX8rrlbrnbqy48c0Rd9inpry9V=s96-c', 74, '2022-10-18 15:41:13', '2022-10-18 15:41:13'),
(5, 'google', '115157581547871236298', 'https://lh3.googleusercontent.com/a/ALm5wu0WynLf_0Nfhw6CkKEgZWrpsHNTCGqRAYuv85XG1g=s96-c', 87, '2022-10-24 10:00:09', '2022-10-24 10:00:09'),
(8, 'google', '116098453637392906496', 'https://lh3.googleusercontent.com/a/ALm5wu29gPCxCj4HuWU3eTRnT-24DestgK_SUrHiSe8x=s96-c', 89, '2022-10-24 10:47:41', '2022-10-24 10:47:41'),
(20, 'facebook', '2186065314913421', 'https://graph.facebook.com/v3.3/2186065314913421/picture?type=normal', 73, '2022-10-25 13:45:21', '2022-10-25 13:45:21'),
(21, 'facebook', '163406779644626', 'https://graph.facebook.com/v3.3/163406779644626/picture?type=normal', 98, '2022-10-25 14:05:38', '2022-10-25 14:05:38'),
(23, 'facebook', '118460051048093', 'https://graph.facebook.com/v3.3/118460051048093/picture?type=normal', 100, '2022-10-25 14:26:40', '2022-10-25 14:26:40'),
(24, 'google', '102184069657595119632', 'https://lh3.googleusercontent.com/a/ALm5wu0r1zJ_TL0s7oB4zQb_UniWu8BlbOd_q3COAQja=s96-c', 107, '2022-11-12 21:23:56', '2022-11-12 21:23:56'),
(25, 'google', '103250583573266445861', 'https://lh3.googleusercontent.com/a/ALm5wu3ZZufQ5WX6gDnBxOLFND43NJO9BhAkf-5omY0CRA=s96-c', 108, '2022-11-16 08:46:52', '2022-11-16 08:46:52'),
(26, 'google', '109109678766172026640', 'https://lh3.googleusercontent.com/a/ALm5wu1i0ocXCjLHtYYsCWjLSjYEiX1eqD2zc9y4tb0=s96-c', 117, '2022-11-29 11:29:56', '2022-11-29 11:29:56'),
(27, 'google', '104794452344003677958', 'https://lh3.googleusercontent.com/a/ALm5wu1UnFO6RgZzalwReBDNN8JRhd1-7zlPNhJU_y4a=s96-c', 118, '2022-11-29 12:53:29', '2022-11-29 12:53:29');

-- --------------------------------------------------------

--
-- Table structure for table `ratings`
--

CREATE TABLE `ratings` (
  `id` int(11) NOT NULL,
  `name_ar` varchar(255) DEFAULT NULL,
  `name_en` varchar(255) DEFAULT NULL,
  `name_ko` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ratings`
--

INSERT INTO `ratings` (`id`, `name_ar`, `name_en`, `name_ko`, `image`, `updated_at`, `created_at`) VALUES
(2, 'مشروع صغيرs', 'abdo', 'پاککردنەوە', '/classification_of_ads/50261665997485.webp', '2022-10-17 09:15:32', '2022-09-28 13:02:45');

-- --------------------------------------------------------

--
-- Table structure for table `reports`
--

CREATE TABLE `reports` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `post_id` bigint(20) UNSIGNED DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `project_id` bigint(20) UNSIGNED DEFAULT NULL,
  `description` text DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reports`
--

INSERT INTO `reports` (`id`, `user_id`, `post_id`, `title`, `project_id`, `description`, `image`, `created_at`, `updated_at`) VALUES
(5, 9, NULL, NULL, 4, 'scdsdsd', NULL, '2022-10-13 09:32:37', '2022-10-13 09:32:37'),
(6, 9, 29, NULL, NULL, 'scdsdsd', NULL, '2022-10-13 09:43:25', '2022-10-13 09:43:25'),
(8, 9, NULL, NULL, 2, 'scdsdsd', NULL, '2022-10-13 12:38:48', '2022-10-13 12:38:48'),
(12, 9, NULL, 'title', 2, 'description description description', NULL, '2022-10-13 15:16:41', '2022-10-13 15:16:41'),
(14, 9, 29, 'title', NULL, 'description description description', NULL, '2022-10-13 15:33:03', '2022-10-13 15:33:03'),
(17, 9, 24, 'اى حاجه', NULL, 'تفاصيل', NULL, '2022-10-16 09:25:35', '2022-10-16 09:25:35'),
(18, 9, NULL, 'title', 17, 'description description description', NULL, '2022-10-16 10:16:59', '2022-10-16 10:16:59'),
(29, 100, 86, NULL, NULL, 'غير مناسب', NULL, '2022-11-26 08:36:12', '2022-11-26 08:36:12'),
(30, 141, 93, NULL, NULL, '11112', NULL, '2023-09-03 10:36:24', '2023-09-03 10:36:24');

-- --------------------------------------------------------

--
-- Table structure for table `reset_code_passwords`
--

CREATE TABLE `reset_code_passwords` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reset_code_passwords`
--

INSERT INTO `reset_code_passwords` (`id`, `email`, `code`, `created_at`, `updated_at`) VALUES
(71, 'yehia@gmail.com', '708750', '2022-11-27 09:08:45', '2022-11-27 09:08:45'),
(72, 'osamaarafa15@gmail.com', '741909', '2022-12-08 13:52:08', '2022-12-08 13:52:08'),
(73, 'ahmad75yehia@gmail.com', '199131', '2023-01-04 08:52:02', '2023-01-04 08:52:02');

-- --------------------------------------------------------

--
-- Table structure for table `rooms`
--

CREATE TABLE `rooms` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `from_user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `to_user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `post_id` bigint(20) UNSIGNED DEFAULT NULL,
  `project_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `rooms`
--

INSERT INTO `rooms` (`id`, `from_user_id`, `to_user_id`, `post_id`, `project_id`, `created_at`, `updated_at`) VALUES
(3, 3, 100, NULL, 2, '2022-10-26 11:57:47', '2022-10-26 11:57:47'),
(7, 100, 98, 43, NULL, '2022-10-27 11:17:17', '2022-10-27 11:17:17'),
(8, 106, 85, NULL, 2, '2022-11-22 10:12:42', '2022-11-28 11:42:25'),
(9, 100, 85, NULL, 2, '2022-11-22 10:29:00', '2022-11-28 13:05:42'),
(10, 113, 100, 86, NULL, '2022-11-27 09:24:58', '2022-11-28 13:31:03'),
(11, 116, 100, 86, NULL, '2022-11-27 10:31:36', '2023-10-31 09:32:02'),
(12, 116, 98, 48, NULL, '2022-11-27 11:12:36', '2023-09-26 14:41:22'),
(13, 106, 89, NULL, 2, '2022-11-28 11:41:34', '2022-11-28 11:41:34'),
(14, 8, 100, 86, NULL, '2022-12-04 08:52:55', '2022-12-04 08:58:56'),
(15, 119, 100, 86, NULL, '2022-12-04 14:35:15', '2022-12-04 15:00:07'),
(16, 120, 100, 86, NULL, '2022-12-04 14:56:31', '2022-12-04 15:40:49'),
(17, 119, 120, NULL, 2, '2022-12-04 15:01:00', '2022-12-04 15:19:12'),
(18, 116, 120, NULL, 2, '2022-12-04 15:20:44', '2022-12-04 15:23:38'),
(19, 121, 100, 86, NULL, '2022-12-04 15:56:13', '2022-12-04 15:57:47'),
(20, 10, 100, 86, NULL, '2022-12-04 15:59:47', '2022-12-05 08:45:29'),
(22, 139, 100, 91, NULL, '2023-02-05 21:59:19', '2023-02-05 22:00:22'),
(23, 141, 140, 93, NULL, '2023-09-03 11:09:17', '2023-09-03 11:11:33'),
(24, 157, 85, NULL, 2, '2023-11-09 09:36:02', '2023-11-09 09:37:06');

-- --------------------------------------------------------

--
-- Table structure for table `room_messages`
--

CREATE TABLE `room_messages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `from_user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `to_user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `room_id` bigint(20) UNSIGNED DEFAULT NULL,
  `type` enum('voice','text','file') NOT NULL DEFAULT 'text',
  `message` text DEFAULT NULL,
  `file` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `room_messages`
--

INSERT INTO `room_messages` (`id`, `from_user_id`, `to_user_id`, `room_id`, `type`, `message`, `file`, `created_at`, `updated_at`) VALUES
(46, 100, 100, 3, 'text', 'Yehia', NULL, '2022-10-26 12:05:34', '2022-10-26 12:05:34'),
(47, 100, 100, 3, 'text', 'Hello', NULL, '2022-10-26 12:45:53', '2022-10-26 12:45:53'),
(48, 100, 100, 3, 'file', NULL, 'storage/uploads/chat/aW1hZ2VfcGlja2VyNzIzNDQxNTA0NDY1MTkxOTM3My5wbmc=_1666781164.png', '2022-10-26 12:46:04', '2022-10-26 12:46:04'),
(49, 100, 100, 3, 'file', NULL, 'storage/uploads/chat/ZTgyODVhNmYtOGQwZi00YWZlLThiYmEtZGE4MTVhYmQ0ZDFmNDM5NjQxMDc5ODE2NjgwOTUzMy5qcGc=_1666781224.jpg', '2022-10-26 12:47:04', '2022-10-26 12:47:04'),
(50, 100, 100, 3, 'file', NULL, 'storage/uploads/chat/aW1hZ2VfcGlja2VyMTg1Njg2NzIwNTc0Njk0MzU4LmpwZw==_1666781254.jpg', '2022-10-26 12:47:34', '2022-10-26 12:47:34'),
(51, 100, 100, 3, 'text', 'Watan', NULL, '2022-10-26 12:47:50', '2022-10-26 12:47:50'),
(52, 100, 100, 3, 'text', 'Watan', NULL, '2022-10-26 13:04:06', '2022-10-26 13:04:06'),
(53, 100, 100, 3, 'file', NULL, 'storage/uploads/chat/aW1hZ2VfcGlja2VyMTIyODkxOTQ5NDMzNjc2MjgzMC5wbmc=_1666782256.png', '2022-10-26 13:04:16', '2022-10-26 13:04:16'),
(55, 100, 98, 7, 'text', 'Hello world 🌎', NULL, '2022-10-27 11:26:33', '2022-10-27 11:26:33'),
(60, 106, 85, 8, 'text', 'يرجي ارسال التفاصيل', NULL, '2022-11-22 10:13:08', '2022-11-22 10:13:08'),
(61, 106, 85, 8, 'text', 'يرجي ارسال التفاصيل', NULL, '2022-11-22 10:14:19', '2022-11-22 10:14:19'),
(62, 106, 85, 8, 'text', 'يرجي ارسال التفاصيل', NULL, '2022-11-22 10:15:19', '2022-11-22 10:15:19'),
(63, 106, 85, 8, 'text', 'يرجي ارسال التفاصيل', NULL, '2022-11-22 10:16:42', '2022-11-22 10:16:42'),
(64, 106, 85, 8, 'text', 'يرجي ارسال التفاصيل', NULL, '2022-11-22 10:18:54', '2022-11-22 10:18:54'),
(65, 106, 85, 8, 'text', 'يرجي ارسال التفاصيل', NULL, '2022-11-22 10:22:10', '2022-11-22 10:22:10'),
(66, 100, 100, 9, 'text', 'يرجي ارسال التفاصيل', NULL, '2022-11-22 10:29:21', '2022-11-22 10:29:21'),
(67, 100, 100, 9, 'text', 'عمك اسامه بيمسى', NULL, '2022-11-22 10:29:55', '2022-11-22 10:29:55'),
(68, 100, 100, 9, 'text', 'عمك اسامه بيمسى', NULL, '2022-11-22 10:31:59', '2022-11-22 10:31:59'),
(69, 100, 100, 9, 'text', 'عمك اسامه بيمسى', NULL, '2022-11-22 13:41:32', '2022-11-22 13:41:32'),
(70, 100, 100, 9, 'text', 'عمك اسامه بيمسى', NULL, '2022-11-22 13:42:48', '2022-11-22 13:42:48'),
(71, 100, 100, 9, 'text', 'عمك اسامه بيمسى', NULL, '2022-11-22 13:43:28', '2022-11-22 13:43:28'),
(72, 100, 100, 9, 'text', 'عمك اسامه بيمسى', NULL, '2022-11-22 13:43:44', '2022-11-22 13:43:44'),
(73, 100, 100, 9, 'text', 'عمك اسامه بيمسى', NULL, '2022-11-22 13:43:56', '2022-11-22 13:43:56'),
(74, 100, 100, 9, 'text', 'عمك اسامه بيمسى', NULL, '2022-11-22 13:44:49', '2022-11-22 13:44:49'),
(75, 100, 100, 9, 'text', 'عمك اسامه بيمسى', NULL, '2022-11-22 13:44:56', '2022-11-22 13:44:56'),
(76, 100, 100, 9, 'text', 'عمك اسامه بيمسى', NULL, '2022-11-22 13:46:26', '2022-11-22 13:46:26'),
(77, 100, 100, 9, 'text', 'عمك اسامه بيمسى', NULL, '2022-11-22 13:47:40', '2022-11-22 13:47:40'),
(78, 100, 100, 9, 'text', 'عمك اسامه بيمسى', NULL, '2022-11-22 13:50:09', '2022-11-22 13:50:09'),
(79, 100, 100, 9, 'text', 'عمك اسامه بيمسى', NULL, '2022-11-22 13:56:05', '2022-11-22 13:56:05'),
(80, 100, 100, 9, 'text', 'عمك اسامه بيمسى', NULL, '2022-11-22 13:59:54', '2022-11-22 13:59:54'),
(81, 100, 100, 9, 'text', 'عمك اسامه بيمسى', NULL, '2022-11-22 14:00:03', '2022-11-22 14:00:03'),
(82, 100, 100, 9, 'text', 'عمك اسامه بيمسى', NULL, '2022-11-22 14:01:51', '2022-11-22 14:01:51'),
(83, 100, 100, 9, 'text', 'عمك اسامه بيمسى', NULL, '2022-11-22 14:03:30', '2022-11-22 14:03:30'),
(84, 100, 100, 9, 'text', 'عمك اسامه بيمسى', NULL, '2022-11-22 14:04:14', '2022-11-22 14:04:14'),
(85, 100, 100, 9, 'text', 'عمك اسامه بيمسى', NULL, '2022-11-22 14:04:29', '2022-11-22 14:04:29'),
(86, 100, 100, 9, 'text', 'عمك اسامه بيمسى', NULL, '2022-11-22 14:11:38', '2022-11-22 14:11:38'),
(87, 100, 100, 9, 'text', 'عمك اسامه بيمسى', NULL, '2022-11-22 14:23:53', '2022-11-22 14:23:53'),
(88, 100, 100, 9, 'text', 'عمك اسامه بيمسى', NULL, '2022-11-22 14:24:05', '2022-11-22 14:24:05'),
(89, 100, 100, 9, 'text', 'عمك اسامه بيمسى', NULL, '2022-11-22 14:42:33', '2022-11-22 14:42:33'),
(90, 100, 100, 9, 'text', 'عمك اسامه بيمسى', NULL, '2022-11-22 14:43:12', '2022-11-22 14:43:12'),
(91, 100, 100, 9, 'text', 'عمك اسامه بيمسى', NULL, '2022-11-22 14:44:16', '2022-11-22 14:44:16'),
(92, 100, 100, 9, 'text', 'عمك اسامه بيمسى', NULL, '2022-11-22 14:44:43', '2022-11-22 14:44:43'),
(93, 100, 100, 9, 'text', 'عمك اسامه بيمسى', NULL, '2022-11-22 14:45:24', '2022-11-22 14:45:24'),
(94, 100, 100, 9, 'text', 'عمك اسامه بيمسى', NULL, '2022-11-22 14:45:40', '2022-11-22 14:45:40'),
(95, 100, 100, 9, 'text', 'عمك اسامه بيمسى', NULL, '2022-11-22 15:13:15', '2022-11-22 15:13:15'),
(96, 100, 100, 9, 'text', 'عمك اسامه بيمسى', NULL, '2022-11-22 15:13:28', '2022-11-22 15:13:28'),
(97, 100, 100, 9, 'text', 'عمك اسامه بيمسى', NULL, '2022-11-22 15:32:30', '2022-11-22 15:32:30'),
(98, 100, 100, 9, 'text', 'عمك اسامه بيمسى', NULL, '2022-11-22 15:35:33', '2022-11-22 15:35:33'),
(99, 100, 100, 9, 'text', 'عمك اسامه بيمسى', NULL, '2022-11-22 15:37:39', '2022-11-22 15:37:39'),
(100, 100, 100, 9, 'text', 'عمك اسامه بيمسى', NULL, '2022-11-22 15:45:27', '2022-11-22 15:45:27'),
(101, 100, 100, 9, 'text', 'عمك اسامه بيمسى', NULL, '2022-11-22 15:57:48', '2022-11-22 15:57:48'),
(102, 100, 100, 9, 'text', 'عمك اسامه بيمسى', NULL, '2022-11-23 08:30:35', '2022-11-23 08:30:35'),
(103, 100, 100, 9, 'text', 'عمك اسامه بيمسى', NULL, '2022-11-23 08:31:00', '2022-11-23 08:31:00'),
(104, 100, 100, 9, 'text', 'عمك اسامه بيمسى', NULL, '2022-11-23 09:04:13', '2022-11-23 09:04:13'),
(105, 100, 100, 9, 'text', 'hello worled', NULL, '2022-11-23 09:04:45', '2022-11-23 09:04:45'),
(106, 100, 100, 9, 'file', NULL, 'storage/uploads/chat/YWdlbmN5LnBuZw==_1669187142.png', '2022-11-23 09:05:42', '2022-11-23 09:05:42'),
(107, 100, 100, 9, 'file', NULL, 'storage/uploads/chat/YWdlbmN5LnBuZw==_1669187161.png', '2022-11-23 09:06:01', '2022-11-23 09:06:01'),
(108, 100, 100, 9, 'file', NULL, 'storage/uploads/chat/YWdlbmN5LnBuZw==_1669188100.png', '2022-11-23 09:21:40', '2022-11-23 09:21:40'),
(109, 100, 100, 9, 'text', 'hello worled', NULL, '2022-11-23 09:22:15', '2022-11-23 09:22:15'),
(110, 100, 100, 9, 'text', 'hello worled', NULL, '2022-11-23 09:22:49', '2022-11-23 09:22:49'),
(111, 100, 100, 9, 'text', 'hello worled', NULL, '2022-11-23 09:28:28', '2022-11-23 09:28:28'),
(112, 100, 100, 9, 'text', 'hello worled', NULL, '2022-11-23 09:28:39', '2022-11-23 09:28:39'),
(113, 100, 100, 9, 'text', 'hello worled', NULL, '2022-11-23 09:28:50', '2022-11-23 09:28:50'),
(114, 100, 100, 9, 'text', 'hello worled33333', NULL, '2022-11-23 09:28:59', '2022-11-23 09:28:59'),
(115, 100, 100, 9, 'text', 'hello worled33333', NULL, '2022-11-23 09:45:20', '2022-11-23 09:45:20'),
(116, 100, 100, 9, 'text', 'hello worled33333', NULL, '2022-11-23 09:45:30', '2022-11-23 09:45:30'),
(117, 100, 100, 9, 'text', 'hello worled33333', NULL, '2022-11-23 09:47:11', '2022-11-23 09:47:11'),
(118, 100, 100, 9, 'text', 'hello worled33333', NULL, '2022-11-23 09:48:41', '2022-11-23 09:48:41'),
(119, 100, 100, 9, 'text', 'hello worled33333', NULL, '2022-11-23 09:48:52', '2022-11-23 09:48:52'),
(120, 100, 100, 9, 'text', 'hello worled33333', NULL, '2022-11-23 09:49:05', '2022-11-23 09:49:05'),
(121, 100, 100, 9, 'text', 'hello worled33333', NULL, '2022-11-23 09:51:19', '2022-11-23 09:51:19'),
(122, 100, 100, 9, 'text', 'hello worled33333', NULL, '2022-11-23 09:55:51', '2022-11-23 09:55:51'),
(123, 100, 100, 9, 'text', 'hello worled33333', NULL, '2022-11-23 09:55:58', '2022-11-23 09:55:58'),
(124, 100, 100, 9, 'text', 'hello worled33333', NULL, '2022-11-23 09:56:05', '2022-11-23 09:56:05'),
(125, 100, 100, 9, 'text', 'hello worled33333', NULL, '2022-11-23 09:56:57', '2022-11-23 09:56:57'),
(126, 100, 100, 9, 'text', 'hello worled33333', NULL, '2022-11-23 09:57:23', '2022-11-23 09:57:23'),
(127, 100, 100, 9, 'text', 'hello worled33333', NULL, '2022-11-23 09:59:05', '2022-11-23 09:59:05'),
(128, 100, 100, 9, 'text', 'hello worled33333', NULL, '2022-11-23 10:06:09', '2022-11-23 10:06:09'),
(129, 100, 100, 9, 'text', 'hello worled33333', NULL, '2022-11-23 10:06:34', '2022-11-23 10:06:34'),
(130, 100, 100, 9, 'text', 'hello worled33333', NULL, '2022-11-23 10:06:56', '2022-11-23 10:06:56'),
(131, 100, 100, 9, 'text', 'hello worled33333', NULL, '2022-11-23 10:07:17', '2022-11-23 10:07:17'),
(132, 100, 100, 9, 'text', 'hello worled33333', NULL, '2022-11-23 10:07:30', '2022-11-23 10:07:30'),
(133, 100, 100, 9, 'text', 'hello worled33333', NULL, '2022-11-23 10:08:12', '2022-11-23 10:08:12'),
(134, 100, 100, 9, 'text', 'hello worled33333', NULL, '2022-11-23 10:09:37', '2022-11-23 10:09:37'),
(135, 100, 100, 9, 'text', 'hello worled33333', NULL, '2022-11-23 10:10:00', '2022-11-23 10:10:00'),
(136, 100, 100, 9, 'text', 'hello worled33333', NULL, '2022-11-23 10:10:09', '2022-11-23 10:10:09'),
(137, 100, 100, 9, 'text', 'hello worled33333', NULL, '2022-11-23 10:12:32', '2022-11-23 10:12:32'),
(138, 100, 100, 9, 'text', 'hello worled33333', NULL, '2022-11-23 10:14:24', '2022-11-23 10:14:24'),
(139, 100, 100, 9, 'text', 'hello worled33333', NULL, '2022-11-23 10:19:28', '2022-11-23 10:19:28'),
(140, 100, 100, 9, 'text', 'hello worled33333', NULL, '2022-11-23 10:20:46', '2022-11-23 10:20:46'),
(141, 100, 100, 9, 'text', 'hello worled33333', NULL, '2022-11-23 10:20:57', '2022-11-23 10:20:57'),
(142, 100, 100, 9, 'text', 'hello worled33333', NULL, '2022-11-23 10:21:51', '2022-11-23 10:21:51'),
(143, 100, 100, 9, 'text', 'hello worled33333', NULL, '2022-11-23 10:22:11', '2022-11-23 10:22:11'),
(144, 100, 100, 9, 'text', 'hello worled33333', NULL, '2022-11-23 10:23:24', '2022-11-23 10:23:24'),
(145, 100, 100, 9, 'text', 'hello worled33333', NULL, '2022-11-23 10:25:48', '2022-11-23 10:25:48'),
(146, 100, 100, 9, 'text', 'hello worled33333', NULL, '2022-11-23 10:28:54', '2022-11-23 10:28:54'),
(147, 100, 100, 9, 'text', 'hello worled33333', NULL, '2022-11-23 10:29:07', '2022-11-23 10:29:07'),
(148, 100, 100, 9, 'text', 'hello worled33333', NULL, '2022-11-23 10:29:29', '2022-11-23 10:29:29'),
(149, 100, 100, 9, 'text', 'hello worled33333', NULL, '2022-11-23 10:29:43', '2022-11-23 10:29:43'),
(150, 100, 100, 9, 'text', 'hello worled33333', NULL, '2022-11-23 10:32:32', '2022-11-23 10:32:32'),
(151, 100, 100, 9, 'text', 'hello worled33333', NULL, '2022-11-23 10:32:47', '2022-11-23 10:32:47'),
(152, 100, 100, 9, 'text', 'hello worled33333', NULL, '2022-11-23 10:33:02', '2022-11-23 10:33:02'),
(153, 100, 100, 9, 'text', 'hello worled33333', NULL, '2022-11-23 10:33:26', '2022-11-23 10:33:26'),
(154, 100, 100, 9, 'text', 'hello worled33333', NULL, '2022-11-23 10:34:17', '2022-11-23 10:34:17'),
(155, 100, 100, 9, 'text', 'hello worled33333', NULL, '2022-11-23 10:38:08', '2022-11-23 10:38:08'),
(156, 100, 100, 9, 'text', 'hello worled33333', NULL, '2022-11-23 10:40:01', '2022-11-23 10:40:01'),
(157, 100, 100, 9, 'text', 'hello worled33333', NULL, '2022-11-23 10:40:51', '2022-11-23 10:40:51'),
(158, 100, 100, 9, 'text', 'hello worled33333', NULL, '2022-11-23 10:41:55', '2022-11-23 10:41:55'),
(159, 100, 100, 9, 'text', 'hello worled33333', NULL, '2022-11-23 10:42:40', '2022-11-23 10:42:40'),
(160, 100, 100, 9, 'text', 'hello worled33333', NULL, '2022-11-23 10:44:41', '2022-11-23 10:44:41'),
(161, 100, 100, 9, 'text', 'hello worled33333', NULL, '2022-11-23 10:47:59', '2022-11-23 10:47:59'),
(162, 100, 100, 9, 'text', 'hello worled33333', NULL, '2022-11-23 10:58:38', '2022-11-23 10:58:38'),
(163, 100, 100, 9, 'text', 'hello worled33333', NULL, '2022-11-23 11:02:11', '2022-11-23 11:02:11'),
(164, 100, 100, 9, 'text', 'hello worled33333', NULL, '2022-11-23 11:06:37', '2022-11-23 11:06:37'),
(165, 100, 100, 9, 'text', 'hello worled33333', NULL, '2022-11-23 11:18:49', '2022-11-23 11:18:49'),
(166, 100, 100, 9, 'text', 'hello worled33333', NULL, '2022-11-23 11:18:57', '2022-11-23 11:18:57'),
(167, 100, 100, 9, 'text', 'hello worled33333', NULL, '2022-11-23 11:19:08', '2022-11-23 11:19:08'),
(168, 100, 100, 9, 'text', 'hello worled33333', NULL, '2022-11-23 11:21:43', '2022-11-23 11:21:43'),
(169, 100, 100, 9, 'text', 'hello worled33333', NULL, '2022-11-23 11:21:55', '2022-11-23 11:21:55'),
(170, 100, 100, 9, 'text', 'hello worled33333', NULL, '2022-11-23 11:22:09', '2022-11-23 11:22:09'),
(171, 100, 100, 9, 'text', 'hello worled33333', NULL, '2022-11-23 11:23:37', '2022-11-23 11:23:37'),
(172, 100, 100, 9, 'text', 'hello worled33333', NULL, '2022-11-23 11:23:49', '2022-11-23 11:23:49'),
(173, 100, 100, 9, 'text', 'hello 777777777', NULL, '2022-11-23 11:23:57', '2022-11-23 11:23:57'),
(174, 100, 100, 9, 'text', 'hello 777777777', NULL, '2022-11-23 11:24:17', '2022-11-23 11:24:17'),
(175, 100, 100, 9, 'text', 'hello 777777777', NULL, '2022-11-23 11:24:24', '2022-11-23 11:24:24'),
(176, 100, 100, 9, 'text', 'hello 777777777', NULL, '2022-11-23 11:24:28', '2022-11-23 11:24:28'),
(177, 100, 100, 9, 'text', 'hello 666', NULL, '2022-11-23 11:24:49', '2022-11-23 11:24:49'),
(178, 100, 100, 9, 'text', 'hello 666', NULL, '2022-11-23 11:24:58', '2022-11-23 11:24:58'),
(179, 100, 100, 9, 'text', 'hello 666', NULL, '2022-11-23 11:46:41', '2022-11-23 11:46:41'),
(180, 100, 100, 9, 'text', 'hello 666', NULL, '2022-11-23 11:48:23', '2022-11-23 11:48:23'),
(181, 100, 100, 9, 'text', 'hello 666', NULL, '2022-11-23 11:50:04', '2022-11-23 11:50:04'),
(182, 100, 100, 9, 'text', 'hello 666', NULL, '2022-11-23 11:53:46', '2022-11-23 11:53:46'),
(183, 100, 100, 9, 'text', 'hello 666', NULL, '2022-11-23 11:54:31', '2022-11-23 11:54:31'),
(184, 100, 100, 9, 'text', 'hello 666', NULL, '2022-11-23 11:54:54', '2022-11-23 11:54:54'),
(185, 100, 100, 9, 'text', 'hello 666', NULL, '2022-11-23 11:55:34', '2022-11-23 11:55:34'),
(186, 100, 100, 9, 'text', 'hello 666', NULL, '2022-11-23 11:56:10', '2022-11-23 11:56:10'),
(187, 100, 100, 9, 'text', 'hello 666', NULL, '2022-11-23 11:56:25', '2022-11-23 11:56:25'),
(188, 100, 100, 9, 'text', 'hello 555566', NULL, '2022-11-23 11:56:42', '2022-11-23 11:56:42'),
(189, 100, 100, 9, 'text', 'hello 555566', NULL, '2022-11-23 11:57:13', '2022-11-23 11:57:13'),
(190, 100, 100, 9, 'text', 'hello 555566', NULL, '2022-11-23 11:58:33', '2022-11-23 11:58:33'),
(191, 100, 100, 9, 'text', 'hello 555566', NULL, '2022-11-23 11:58:40', '2022-11-23 11:58:40'),
(192, 100, 100, 9, 'text', 'hello 555566', NULL, '2022-11-23 11:58:47', '2022-11-23 11:58:47'),
(193, 100, 100, 9, 'text', 'hello qqqqq', NULL, '2022-11-23 11:58:53', '2022-11-23 11:58:53'),
(194, 100, 100, 9, 'text', 'hello qqqqq', NULL, '2022-11-23 11:59:00', '2022-11-23 11:59:00'),
(195, 100, 100, 9, 'text', 'hello qqqqq', NULL, '2022-11-23 11:59:06', '2022-11-23 11:59:06'),
(196, 100, 100, 9, 'text', 'hello eee', NULL, '2022-11-23 11:59:12', '2022-11-23 11:59:12'),
(197, 100, 100, 9, 'text', 'hello eee', NULL, '2022-11-23 12:47:15', '2022-11-23 12:47:15'),
(198, 100, 100, 9, 'text', 'hello eee', NULL, '2022-11-23 12:47:25', '2022-11-23 12:47:25'),
(199, 100, 100, 9, 'text', 'hello eee', NULL, '2022-11-23 12:47:32', '2022-11-23 12:47:32'),
(200, 100, 100, 9, 'text', 'hello eee', NULL, '2022-11-23 12:48:56', '2022-11-23 12:48:56'),
(201, 100, 100, 9, 'text', 'hello eee', NULL, '2022-11-23 12:49:02', '2022-11-23 12:49:02'),
(202, 100, 100, 9, 'text', 'hello eee', NULL, '2022-11-23 12:49:06', '2022-11-23 12:49:06'),
(203, 100, 100, 9, 'text', 'hello eee', NULL, '2022-11-23 12:50:17', '2022-11-23 12:50:17'),
(204, 100, 100, 9, 'text', 'hello eee', NULL, '2022-11-23 12:50:24', '2022-11-23 12:50:24'),
(205, 100, 100, 9, 'text', 'hello eee', NULL, '2022-11-23 12:50:39', '2022-11-23 12:50:39'),
(206, 100, 100, 9, 'text', 'hello eee', NULL, '2022-11-23 12:53:12', '2022-11-23 12:53:12'),
(207, 100, 100, 9, 'text', 'hello eee', NULL, '2022-11-23 12:53:24', '2022-11-23 12:53:24'),
(208, 100, 100, 9, 'text', 'hello eee', NULL, '2022-11-23 12:54:26', '2022-11-23 12:54:26'),
(209, 100, 100, 9, 'text', 'hello eee', NULL, '2022-11-23 12:54:36', '2022-11-23 12:54:36'),
(210, 100, 100, 9, 'text', 'hello eee', NULL, '2022-11-23 12:56:40', '2022-11-23 12:56:40'),
(211, 100, 100, 9, 'text', 'hello eee', NULL, '2022-11-23 12:56:51', '2022-11-23 12:56:51'),
(212, 100, 100, 9, 'text', 'hello eee', NULL, '2022-11-23 13:08:27', '2022-11-23 13:08:27'),
(213, 100, 100, 9, 'text', 'hello eee', NULL, '2022-11-23 13:08:38', '2022-11-23 13:08:38'),
(214, 100, 100, 9, 'text', 'hellopppppp', NULL, '2022-11-23 13:09:00', '2022-11-23 13:09:00'),
(215, 100, 100, 9, 'text', 'hellopppppp', NULL, '2022-11-23 13:09:03', '2022-11-23 13:09:03'),
(216, 100, 100, 9, 'text', 'hellopppppp', NULL, '2022-11-23 13:09:12', '2022-11-23 13:09:12'),
(217, 100, 100, 9, 'text', 'hellopppppp', NULL, '2022-11-23 13:09:16', '2022-11-23 13:09:16'),
(218, 100, 100, 9, 'text', 'hellopppppp', NULL, '2022-11-23 13:09:38', '2022-11-23 13:09:38'),
(219, 100, 100, 9, 'text', 'hellopppppprrrr', NULL, '2022-11-23 13:09:46', '2022-11-23 13:09:46'),
(220, 100, 100, 9, 'text', 'hellopppppprrrr', NULL, '2022-11-23 13:10:31', '2022-11-23 13:10:31'),
(221, 100, 100, 9, 'file', NULL, 'storage/uploads/chat/YWdlbmN5LnBuZw==_1669201912.png', '2022-11-23 13:11:52', '2022-11-23 13:11:52'),
(222, 100, 100, 9, 'file', NULL, 'storage/uploads/chat/YWdlbmN5LnBuZw==_1669201920.png', '2022-11-23 13:12:00', '2022-11-23 13:12:00'),
(223, 100, 100, 9, 'file', NULL, 'storage/uploads/chat/YWdlbmN5LnBuZw==_1669201965.png', '2022-11-23 13:12:45', '2022-11-23 13:12:45'),
(224, 100, 100, 9, 'text', 'hellopppppprrrr', NULL, '2022-11-23 13:13:00', '2022-11-23 13:13:00'),
(225, 100, 100, 9, 'text', 'hellopppppprrrr', NULL, '2022-11-23 13:15:17', '2022-11-23 13:15:17'),
(226, 100, 100, 9, 'text', 'hellopppppprrrr', NULL, '2022-11-23 13:15:37', '2022-11-23 13:15:37'),
(227, 100, 100, 9, 'text', 'hellopppppprrrr', NULL, '2022-11-23 13:15:42', '2022-11-23 13:15:42'),
(228, 100, 100, 9, 'text', 'hellopppppprrrr', NULL, '2022-11-23 13:15:47', '2022-11-23 13:15:47'),
(229, 100, 100, 9, 'text', 'hellopppppprrrr', NULL, '2022-11-23 13:16:31', '2022-11-23 13:16:31'),
(230, 100, 100, 9, 'text', 'hellopppppprrrr', NULL, '2022-11-23 13:21:29', '2022-11-23 13:21:29'),
(231, 100, 100, 9, 'text', 'hellopppppprrrr', NULL, '2022-11-23 13:21:54', '2022-11-23 13:21:54'),
(232, 100, 100, 9, 'text', '888888', NULL, '2022-11-23 13:22:07', '2022-11-23 13:22:07'),
(233, 100, 100, 9, 'text', '888888', NULL, '2022-11-23 13:22:12', '2022-11-23 13:22:12'),
(234, 100, 100, 9, 'text', '888888', NULL, '2022-11-23 13:22:19', '2022-11-23 13:22:19'),
(235, 100, 100, 9, 'text', '888888', NULL, '2022-11-23 13:22:24', '2022-11-23 13:22:24'),
(236, 100, 100, 9, 'text', '888888', NULL, '2022-11-23 13:22:29', '2022-11-23 13:22:29'),
(237, 100, 100, 9, 'text', '888888', NULL, '2022-11-23 13:25:02', '2022-11-23 13:25:02'),
(238, 100, 100, 9, 'text', '888888', NULL, '2022-11-23 13:25:14', '2022-11-23 13:25:14'),
(239, 100, 100, 9, 'text', '888888a', NULL, '2022-11-23 13:25:20', '2022-11-23 13:25:20'),
(240, 100, 100, 9, 'text', '888888a', NULL, '2022-11-23 13:25:33', '2022-11-23 13:25:33'),
(241, 100, 100, 9, 'text', '888888as', NULL, '2022-11-23 13:25:46', '2022-11-23 13:25:46'),
(242, 100, 100, 9, 'text', '888888as', NULL, '2022-11-23 13:39:09', '2022-11-23 13:39:09'),
(243, 100, 100, 9, 'text', '888888as', NULL, '2022-11-23 13:39:18', '2022-11-23 13:39:18'),
(244, 100, 100, 9, 'text', '888888asa', NULL, '2022-11-23 13:39:24', '2022-11-23 13:39:24'),
(245, 100, 100, 9, 'text', '888888asa', NULL, '2022-11-23 13:39:46', '2022-11-23 13:39:46'),
(246, 100, 100, 9, 'text', '888888asa', NULL, '2022-11-23 13:40:01', '2022-11-23 13:40:01'),
(247, 100, 100, 9, 'text', '888888asa', NULL, '2022-11-23 13:41:02', '2022-11-23 13:41:02'),
(248, 100, 100, 9, 'text', '888888asa', NULL, '2022-11-23 13:41:28', '2022-11-23 13:41:28'),
(249, 100, 100, 9, 'text', '6666.0.0.0', NULL, '2022-11-23 13:41:52', '2022-11-23 13:41:52'),
(250, 100, 100, 9, 'text', '6666.0.0.0', NULL, '2022-11-23 13:48:36', '2022-11-23 13:48:36'),
(251, 100, 100, 9, 'text', '6666.0.0.0', NULL, '2022-11-23 13:48:48', '2022-11-23 13:48:48'),
(252, 100, 100, 9, 'text', '525252510000', NULL, '2022-11-23 13:49:03', '2022-11-23 13:49:03'),
(253, 100, 100, 9, 'text', '525252510000', NULL, '2022-11-23 13:49:11', '2022-11-23 13:49:11'),
(254, 100, 100, 9, 'text', '525252510000', NULL, '2022-11-23 13:52:28', '2022-11-23 13:52:28'),
(255, 100, 100, 9, 'text', '525252510000', NULL, '2022-11-23 13:52:36', '2022-11-23 13:52:36'),
(256, 100, 100, 9, 'text', '52525251**-**-*-*', NULL, '2022-11-23 13:52:49', '2022-11-23 13:52:49'),
(257, 100, 100, 9, 'text', '52525251**-**-*-*', NULL, '2022-11-23 13:53:08', '2022-11-23 13:53:08'),
(258, 100, 100, 9, 'text', '52525251**-**-*-*', NULL, '2022-11-23 13:53:13', '2022-11-23 13:53:13'),
(259, 100, 100, 9, 'text', '52525251**-**-*-*', NULL, '2022-11-23 13:54:59', '2022-11-23 13:54:59'),
(260, 100, 100, 9, 'text', '7878787878787878', NULL, '2022-11-23 13:55:22', '2022-11-23 13:55:22'),
(261, 100, 100, 9, 'text', '7878787878787878', NULL, '2022-11-23 13:55:28', '2022-11-23 13:55:28'),
(262, 100, 100, 9, 'text', '8989898989', NULL, '2022-11-23 13:55:39', '2022-11-23 13:55:39'),
(263, 100, 100, 9, 'text', '8989898989', NULL, '2022-11-23 14:01:57', '2022-11-23 14:01:57'),
(264, 100, 100, 9, 'text', '8989898989', NULL, '2022-11-23 14:02:12', '2022-11-23 14:02:12'),
(265, 100, 100, 9, 'text', '8989898989333333', NULL, '2022-11-23 14:02:22', '2022-11-23 14:02:22'),
(266, 100, 100, 9, 'text', '8989898989333333', NULL, '2022-11-23 14:02:43', '2022-11-23 14:02:43'),
(267, 100, 100, 9, 'text', '8989898989333333', NULL, '2022-11-23 14:03:22', '2022-11-23 14:03:22'),
(268, 100, 100, 9, 'text', '8989898989333333', NULL, '2022-11-23 14:06:13', '2022-11-23 14:06:13'),
(269, 100, 100, 9, 'text', '8989898989333333', NULL, '2022-11-23 14:06:26', '2022-11-23 14:06:26'),
(270, 100, 100, 9, 'text', '12121212121', NULL, '2022-11-23 14:06:41', '2022-11-23 14:06:41'),
(271, 100, 100, 9, 'text', '12121212121', NULL, '2022-11-23 14:11:33', '2022-11-23 14:11:33'),
(272, 100, 100, 9, 'text', '12121212121', NULL, '2022-11-23 14:11:43', '2022-11-23 14:11:43'),
(273, 100, 100, 9, 'text', '12121212121', NULL, '2022-11-23 14:14:36', '2022-11-23 14:14:36'),
(274, 100, 100, 9, 'text', '12121212121', NULL, '2022-11-23 14:14:45', '2022-11-23 14:14:45'),
(275, 100, 100, 9, 'text', '12121212121', NULL, '2022-11-23 14:14:54', '2022-11-23 14:14:54'),
(276, 100, 100, 9, 'text', '12121212121', NULL, '2022-11-23 14:15:03', '2022-11-23 14:15:03'),
(277, 100, 100, 9, 'text', '12121212121', NULL, '2022-11-23 14:19:56', '2022-11-23 14:19:56'),
(278, 100, 100, 9, 'text', '12121212121', NULL, '2022-11-23 14:20:12', '2022-11-23 14:20:12'),
(279, 100, 100, 9, 'text', '2020202020', NULL, '2022-11-23 14:20:24', '2022-11-23 14:20:24'),
(280, 100, 100, 9, 'text', '2020202020', NULL, '2022-11-23 14:20:29', '2022-11-23 14:20:29'),
(281, 100, 100, 9, 'text', '2020202020', NULL, '2022-11-23 14:24:07', '2022-11-23 14:24:07'),
(282, 100, 100, 9, 'text', '2020202020', NULL, '2022-11-23 14:26:16', '2022-11-23 14:26:16'),
(283, 100, 100, 9, 'text', '2020202020', NULL, '2022-11-23 14:26:27', '2022-11-23 14:26:27'),
(284, 100, 100, 9, 'text', '2020202020', NULL, '2022-11-23 14:26:39', '2022-11-23 14:26:39'),
(285, 100, 100, 9, 'text', '2020202020', NULL, '2022-11-23 14:26:48', '2022-11-23 14:26:48'),
(286, 100, 100, 9, 'text', '2020202020', NULL, '2022-11-23 14:28:22', '2022-11-23 14:28:22'),
(287, 100, 100, 9, 'text', '2020202020', NULL, '2022-11-23 14:28:31', '2022-11-23 14:28:31'),
(288, 100, 100, 9, 'text', '2020202020', NULL, '2022-11-23 14:28:45', '2022-11-23 14:28:45'),
(289, 100, 100, 9, 'text', '2020202020', NULL, '2022-11-23 14:29:43', '2022-11-23 14:29:43'),
(290, 100, 100, 9, 'text', '2020202020', NULL, '2022-11-23 14:33:39', '2022-11-23 14:33:39'),
(291, 100, 100, 9, 'text', '2020202020', NULL, '2022-11-23 14:33:47', '2022-11-23 14:33:47'),
(292, 100, 100, 9, 'text', '000000', NULL, '2022-11-23 14:34:18', '2022-11-23 14:34:18'),
(293, 100, 100, 9, 'text', '000000', NULL, '2022-11-23 14:35:31', '2022-11-23 14:35:31'),
(294, 100, 100, 9, 'text', '000000', NULL, '2022-11-23 14:35:45', '2022-11-23 14:35:45'),
(295, 100, 100, 9, 'text', '000000', NULL, '2022-11-23 14:35:55', '2022-11-23 14:35:55'),
(296, 100, 100, 9, 'text', '000000', NULL, '2022-11-23 14:36:35', '2022-11-23 14:36:35'),
(297, 100, 100, 9, 'text', '000000', NULL, '2022-11-23 14:36:47', '2022-11-23 14:36:47'),
(298, 100, 100, 9, 'text', '000000', NULL, '2022-11-23 14:36:56', '2022-11-23 14:36:56'),
(299, 100, 100, 9, 'text', '000000', NULL, '2022-11-23 14:37:06', '2022-11-23 14:37:06'),
(300, 100, 100, 9, 'text', '000000', NULL, '2022-11-23 14:53:29', '2022-11-23 14:53:29'),
(301, 100, 100, 9, 'text', '000000', NULL, '2022-11-23 15:10:06', '2022-11-23 15:10:06'),
(302, 100, 100, 9, 'text', '000000', NULL, '2022-11-23 15:10:21', '2022-11-23 15:10:21'),
(303, 100, 100, 9, 'text', '000000', NULL, '2022-11-23 15:10:26', '2022-11-23 15:10:26'),
(304, 100, 100, 9, 'text', '333232322222', NULL, '2022-11-23 15:10:36', '2022-11-23 15:10:36'),
(305, 100, 100, 9, 'text', '333232322222', NULL, '2022-11-23 15:18:59', '2022-11-23 15:18:59'),
(306, 100, 100, 9, 'text', '333232322222', NULL, '2022-11-23 15:20:10', '2022-11-23 15:20:10'),
(307, 100, 100, 9, 'text', '333232322222', NULL, '2022-11-23 15:22:00', '2022-11-23 15:22:00'),
(308, 100, 100, 9, 'text', '333232322222', NULL, '2022-11-23 15:41:37', '2022-11-23 15:41:37'),
(309, 100, 100, 9, 'text', '333232322222', NULL, '2022-11-23 15:41:55', '2022-11-23 15:41:55'),
(310, 100, 100, 9, 'text', '333232322222', NULL, '2022-11-23 15:42:28', '2022-11-23 15:42:28'),
(311, 100, 100, 9, 'text', '333232322222', NULL, '2022-11-23 15:42:43', '2022-11-23 15:42:43'),
(312, 100, 100, 9, 'text', '333232322222', NULL, '2022-11-23 15:46:15', '2022-11-23 15:46:15'),
(313, 100, 100, 9, 'text', '333232322222', NULL, '2022-11-23 15:46:25', '2022-11-23 15:46:25'),
(314, 100, 100, 9, 'text', '333232322222', NULL, '2022-11-23 15:47:56', '2022-11-23 15:47:56'),
(315, 100, 100, 9, 'text', '333232322222', NULL, '2022-11-23 15:49:10', '2022-11-23 15:49:10'),
(316, 100, 100, 9, 'text', '333232322222', NULL, '2022-11-23 15:50:00', '2022-11-23 15:50:00'),
(317, 100, 100, 9, 'text', '333232322222', NULL, '2022-11-23 15:55:54', '2022-11-23 15:55:54'),
(318, 100, 100, 9, 'text', '333232322222', NULL, '2022-11-23 15:56:48', '2022-11-23 15:56:48'),
(319, 100, 100, 9, 'text', '333232322222', NULL, '2022-11-23 15:57:04', '2022-11-23 15:57:04'),
(320, 100, 100, 9, 'text', '333232322222', NULL, '2022-11-23 15:57:17', '2022-11-23 15:57:17'),
(321, 100, 100, 9, 'text', '333232322222', NULL, '2022-11-23 15:57:28', '2022-11-23 15:57:28'),
(322, 100, 100, 9, 'text', '1021021021021', NULL, '2022-11-23 15:57:51', '2022-11-23 15:57:51'),
(323, 100, 100, 9, 'text', '1021021021021', NULL, '2022-11-23 15:58:01', '2022-11-23 15:58:01'),
(324, 100, 100, 9, 'text', '1021021021021', NULL, '2022-11-23 15:58:10', '2022-11-23 15:58:10'),
(325, 100, 100, 9, 'text', '1021021021021', NULL, '2022-11-23 16:02:31', '2022-11-23 16:02:31'),
(326, 100, 100, 9, 'text', '1021021021021', NULL, '2022-11-23 16:04:28', '2022-11-23 16:04:28'),
(327, 100, 100, 9, 'text', '1021021021021', NULL, '2022-11-23 16:04:37', '2022-11-23 16:04:37'),
(328, 100, 100, 9, 'text', '1021021021021', NULL, '2022-11-23 16:04:57', '2022-11-23 16:04:57'),
(329, 100, 100, 9, 'text', '1021021021021', NULL, '2022-11-23 16:05:07', '2022-11-23 16:05:07'),
(330, 100, 100, 9, 'text', '1021021021021', NULL, '2022-11-24 08:31:01', '2022-11-24 08:31:01'),
(331, 100, 100, 9, 'text', '878755', NULL, '2022-11-24 08:31:20', '2022-11-24 08:31:20'),
(332, 100, 100, 9, 'text', '878755', NULL, '2022-11-24 08:31:25', '2022-11-24 08:31:25'),
(333, 100, 100, 9, 'text', '878755', NULL, '2022-11-24 08:31:34', '2022-11-24 08:31:34'),
(334, 100, 100, 9, 'text', '878755', NULL, '2022-11-24 08:31:39', '2022-11-24 08:31:39'),
(335, 100, 100, 9, 'text', '888899999', NULL, '2022-11-24 08:31:51', '2022-11-24 08:31:51'),
(336, 100, 100, 9, 'text', '888899999', NULL, '2022-11-24 08:31:58', '2022-11-24 08:31:58'),
(337, 100, 100, 9, 'text', '888899999', NULL, '2022-11-24 08:35:02', '2022-11-24 08:35:02'),
(338, 100, 100, 9, 'text', '888899999\'\'\'', NULL, '2022-11-24 08:35:15', '2022-11-24 08:35:15'),
(339, 100, 100, 9, 'text', '888899999\'\'\'', NULL, '2022-11-24 08:35:26', '2022-11-24 08:35:26'),
(340, 100, 100, 9, 'text', '888899999\'\'\'ooooo', NULL, '2022-11-24 08:35:36', '2022-11-24 08:35:36'),
(341, 100, 100, 9, 'text', '888899999\'\'\'ooooo', NULL, '2022-11-24 08:39:23', '2022-11-24 08:39:23'),
(342, 100, 100, 9, 'text', '888899999\'\'\'ooooo', NULL, '2022-11-24 08:39:34', '2022-11-24 08:39:34'),
(343, 100, 100, 9, 'text', '8888ppppppppp', NULL, '2022-11-24 08:39:51', '2022-11-24 08:39:51'),
(344, 100, 100, 9, 'text', '8888ppppppppp', NULL, '2022-11-24 08:47:03', '2022-11-24 08:47:03'),
(345, 100, 100, 9, 'text', '8888ppppppppp', NULL, '2022-11-24 08:47:26', '2022-11-24 08:47:26'),
(346, 100, 100, 9, 'text', '8888ppppppppp', NULL, '2022-11-24 08:48:19', '2022-11-24 08:48:19'),
(347, 100, 100, 9, 'text', '8888ppppppppp', NULL, '2022-11-24 08:48:38', '2022-11-24 08:48:38'),
(348, 100, 100, 9, 'text', '8888ppppppppp', NULL, '2022-11-24 08:49:43', '2022-11-24 08:49:43'),
(349, 100, 100, 9, 'text', '8888ppppppppp', NULL, '2022-11-24 08:52:37', '2022-11-24 08:52:37'),
(350, 100, 100, 9, 'text', '8888ppppppppp', NULL, '2022-11-24 08:56:07', '2022-11-24 08:56:07'),
(351, 100, 100, 9, 'text', '8888ppppppppp', NULL, '2022-11-24 08:56:21', '2022-11-24 08:56:21'),
(352, 100, 100, 9, 'text', '8888ppppppppp', NULL, '2022-11-24 08:59:36', '2022-11-24 08:59:36'),
(353, 100, 100, 9, 'text', '8888ppppppppp', NULL, '2022-11-24 09:00:04', '2022-11-24 09:00:04'),
(354, 100, 100, 9, 'text', '8888ppppppppppooooo', NULL, '2022-11-24 09:00:44', '2022-11-24 09:00:44'),
(355, 100, 100, 9, 'text', '8888ppppppppppooooo', NULL, '2022-11-24 09:01:25', '2022-11-24 09:01:25'),
(356, 100, 100, 9, 'text', '8888ppppppppppooooo', NULL, '2022-11-24 09:06:49', '2022-11-24 09:06:49'),
(357, 100, 100, 9, 'text', '8888ppppppppppooooo', NULL, '2022-11-24 09:06:58', '2022-11-24 09:06:58'),
(358, 100, 100, 9, 'text', '8888ppppppppppooooo', NULL, '2022-11-24 09:08:26', '2022-11-24 09:08:26'),
(359, 100, 100, 9, 'text', '8888ppppppppppooooo', NULL, '2022-11-24 09:10:33', '2022-11-24 09:10:33'),
(360, 100, 100, 9, 'text', '8888ppppppppppooooo', NULL, '2022-11-24 09:10:46', '2022-11-24 09:10:46'),
(361, 100, 100, 9, 'text', '8888ppppppppppooooo', NULL, '2022-11-24 09:10:54', '2022-11-24 09:10:54'),
(362, 100, 100, 9, 'text', '8896969', NULL, '2022-11-24 09:11:13', '2022-11-24 09:11:13'),
(363, 100, 100, 9, 'text', '8896969', NULL, '2022-11-24 09:12:25', '2022-11-24 09:12:25'),
(364, 100, 100, 9, 'text', '8896969', NULL, '2022-11-24 09:12:34', '2022-11-24 09:12:34'),
(365, 100, 100, 9, 'text', '8896969', NULL, '2022-11-24 09:12:41', '2022-11-24 09:12:41'),
(366, 100, 100, 9, 'text', '8896969000000', NULL, '2022-11-24 09:12:58', '2022-11-24 09:12:58'),
(367, 100, 100, 9, 'text', '8896969000000', NULL, '2022-11-24 09:22:29', '2022-11-24 09:22:29'),
(368, 100, 100, 9, 'text', '8896969000000', NULL, '2022-11-24 09:23:43', '2022-11-24 09:23:43'),
(369, 100, 100, 9, 'text', '8896969000000', NULL, '2022-11-24 09:24:16', '2022-11-24 09:24:16'),
(370, 100, 100, 9, 'text', '8896969004444', NULL, '2022-11-24 09:26:46', '2022-11-24 09:26:46'),
(371, 100, 100, 9, 'text', '8896969004444', NULL, '2022-11-24 09:27:34', '2022-11-24 09:27:34'),
(372, 100, 100, 9, 'text', '8896969004444', NULL, '2022-11-24 09:28:02', '2022-11-24 09:28:02'),
(373, 100, 100, 9, 'text', '8896969004444', NULL, '2022-11-24 09:29:34', '2022-11-24 09:29:34'),
(374, 100, 100, 9, 'text', '8896969004444', NULL, '2022-11-24 09:31:18', '2022-11-24 09:31:18'),
(375, 100, 100, 9, 'text', '8896969004444', NULL, '2022-11-24 09:31:39', '2022-11-24 09:31:39'),
(376, 100, 100, 9, 'text', '8896969004444', NULL, '2022-11-24 09:32:47', '2022-11-24 09:32:47'),
(377, 100, 100, 9, 'text', '8896969004444qqqq', NULL, '2022-11-24 09:33:01', '2022-11-24 09:33:01'),
(378, 100, 100, 9, 'text', '8896969004444qqqq', NULL, '2022-11-24 09:34:03', '2022-11-24 09:34:03'),
(379, 100, 100, 9, 'text', '8896969004444qqqq', NULL, '2022-11-24 09:34:16', '2022-11-24 09:34:16'),
(380, 100, 100, 9, 'text', '8896969004444qqqq', NULL, '2022-11-24 09:35:37', '2022-11-24 09:35:37'),
(381, 100, 100, 9, 'text', '8896969004444qqqq', NULL, '2022-11-24 09:35:52', '2022-11-24 09:35:52'),
(382, 100, 100, 9, 'text', '8896969004444qqqq', NULL, '2022-11-24 09:39:06', '2022-11-24 09:39:06'),
(383, 100, 100, 9, 'text', '8896969004444qqqq', NULL, '2022-11-24 09:39:16', '2022-11-24 09:39:16'),
(384, 100, 100, 9, 'text', '8896969004444qqqq', NULL, '2022-11-24 09:39:46', '2022-11-24 09:39:46'),
(385, 100, 100, 9, 'text', '8896969004444qqqq', NULL, '2022-11-24 09:39:56', '2022-11-24 09:39:56'),
(386, 100, 100, 9, 'text', '8896969004444qqqq', NULL, '2022-11-24 09:40:04', '2022-11-24 09:40:04'),
(387, 100, 100, 9, 'text', '8896969004444qqqq', NULL, '2022-11-24 09:40:12', '2022-11-24 09:40:12'),
(388, 100, 100, 9, 'text', '8896969004444qqqq', NULL, '2022-11-24 09:40:19', '2022-11-24 09:40:19'),
(389, 100, 100, 9, 'text', '8896969004444qqqq', NULL, '2022-11-24 09:40:36', '2022-11-24 09:40:36'),
(390, 100, 100, 9, 'text', '8896969004444qqqq', NULL, '2022-11-24 09:41:26', '2022-11-24 09:41:26'),
(391, 100, 100, 9, 'text', '8896969004444qqqq', NULL, '2022-11-24 09:41:33', '2022-11-24 09:41:33'),
(392, 100, 100, 9, 'text', 'sssssssss', NULL, '2022-11-24 09:41:42', '2022-11-24 09:41:42'),
(393, 100, 100, 9, 'text', 'sssssssss', NULL, '2022-11-24 09:41:55', '2022-11-24 09:41:55'),
(394, 100, 100, 9, 'text', 'sssssssss', NULL, '2022-11-24 09:42:23', '2022-11-24 09:42:23'),
(395, 100, 100, 9, 'text', 'sssssssss', NULL, '2022-11-24 09:42:31', '2022-11-24 09:42:31'),
(396, 100, 100, 9, 'text', 'sssssssss', NULL, '2022-11-24 09:42:45', '2022-11-24 09:42:45'),
(397, 100, 100, 9, 'text', 'sssssssss', NULL, '2022-11-24 09:42:58', '2022-11-24 09:42:58'),
(398, 100, 100, 9, 'text', 'sssssssss', NULL, '2022-11-24 09:43:01', '2022-11-24 09:43:01'),
(399, 100, 100, 9, 'text', 'sssssssss', NULL, '2022-11-24 09:44:56', '2022-11-24 09:44:56'),
(400, 100, 100, 9, 'text', 'sssssssss', NULL, '2022-11-24 09:45:07', '2022-11-24 09:45:07'),
(401, 100, 100, 9, 'text', 'eeeee', NULL, '2022-11-24 09:45:15', '2022-11-24 09:45:15'),
(402, 100, 100, 9, 'text', 'eeeee', NULL, '2022-11-24 09:45:47', '2022-11-24 09:45:47'),
(403, 100, 100, 9, 'text', 'eeeee', NULL, '2022-11-24 09:45:58', '2022-11-24 09:45:58'),
(404, 100, 100, 9, 'text', 'eeeee', NULL, '2022-11-24 09:46:03', '2022-11-24 09:46:03'),
(405, 100, 100, 9, 'text', 'eeeee', NULL, '2022-11-24 09:46:08', '2022-11-24 09:46:08'),
(406, 100, 100, 9, 'text', 'eeeee', NULL, '2022-11-24 09:47:42', '2022-11-24 09:47:42'),
(407, 100, 100, 9, 'text', 'eeeee', NULL, '2022-11-24 09:47:51', '2022-11-24 09:47:51'),
(408, 100, 100, 9, 'text', 'eeeee', NULL, '2022-11-24 09:48:06', '2022-11-24 09:48:06'),
(409, 100, 100, 9, 'text', 'eeeee', NULL, '2022-11-24 09:48:43', '2022-11-24 09:48:43'),
(410, 100, 100, 9, 'text', 'eeeee', NULL, '2022-11-24 09:48:52', '2022-11-24 09:48:52'),
(411, 100, 100, 9, 'text', 'eeeee', NULL, '2022-11-24 09:49:05', '2022-11-24 09:49:05'),
(412, 100, 100, 9, 'text', 'eeeee', NULL, '2022-11-24 09:49:10', '2022-11-24 09:49:10'),
(413, 100, 100, 9, 'text', 'eeeee', NULL, '2022-11-24 09:55:58', '2022-11-24 09:55:58'),
(414, 100, 100, 9, 'text', 'eeeee', NULL, '2022-11-24 09:56:06', '2022-11-24 09:56:06'),
(415, 100, 100, 9, 'text', 'eeeee', NULL, '2022-11-24 09:56:09', '2022-11-24 09:56:09'),
(416, 100, 100, 9, 'text', 'eeeee', NULL, '2022-11-24 09:56:13', '2022-11-24 09:56:13'),
(417, 100, 100, 9, 'text', 'eeeee', NULL, '2022-11-24 09:56:20', '2022-11-24 09:56:20'),
(418, 100, 100, 9, 'text', 'eeeeeqqqqq', NULL, '2022-11-24 09:56:31', '2022-11-24 09:56:31'),
(419, 100, 100, 9, 'text', 'eeeeeqqqqq', NULL, '2022-11-24 10:00:40', '2022-11-24 10:00:40'),
(420, 100, 100, 9, 'text', 'eeeeeqqqqq', NULL, '2022-11-24 10:01:03', '2022-11-24 10:01:03'),
(421, 100, 100, 9, 'text', 'eeeeeqqqqq', NULL, '2022-11-24 10:01:11', '2022-11-24 10:01:11'),
(422, 100, 100, 9, 'text', 'eeeeeqqqqq', NULL, '2022-11-24 10:01:34', '2022-11-24 10:01:34'),
(423, 100, 100, 9, 'text', 'eeeeeqqqqq', NULL, '2022-11-24 10:09:06', '2022-11-24 10:09:06'),
(424, 100, 100, 9, 'text', 'eeeeeqqqqq', NULL, '2022-11-24 10:11:00', '2022-11-24 10:11:00'),
(425, 100, 100, 9, 'text', 'eeeeeqqqqq', NULL, '2022-11-24 10:13:51', '2022-11-24 10:13:51'),
(426, 100, 100, 9, 'text', 'eeeeeqqqqq', NULL, '2022-11-24 10:15:26', '2022-11-24 10:15:26'),
(427, 100, 100, 9, 'text', 'eeeeeqqqqqqqqrrrrrr', NULL, '2022-11-24 10:15:55', '2022-11-24 10:15:55'),
(428, 100, 100, 9, 'text', 'eeeeeqqqqqqqqrrrrrr', NULL, '2022-11-24 10:22:54', '2022-11-24 10:22:54'),
(429, 100, 100, 9, 'text', 'eeeeeqqqqqqqqrrrrrr', NULL, '2022-11-24 10:23:02', '2022-11-24 10:23:02'),
(430, 100, 100, 9, 'text', 'eeeeeqqqqqqqqrrrrrr', NULL, '2022-11-24 10:23:30', '2022-11-24 10:23:30'),
(431, 100, 100, 9, 'text', 'eeeeeqqqqqqqqrrrrrr', NULL, '2022-11-24 10:24:10', '2022-11-24 10:24:10'),
(432, 100, 100, 9, 'text', 'eeeeeqqqqqqqqrrrrrr', NULL, '2022-11-24 10:24:21', '2022-11-24 10:24:21'),
(433, 100, 100, 9, 'text', 'wwwwwwwwwwwwwwwwww', NULL, '2022-11-24 10:24:35', '2022-11-24 10:24:35'),
(434, 100, 100, 9, 'text', 'wwwwwwwwwwwwwwwwww', NULL, '2022-11-24 10:24:45', '2022-11-24 10:24:45'),
(435, 100, 100, 9, 'text', 'wwwwwwwwwwwwwwwwww', NULL, '2022-11-24 10:26:20', '2022-11-24 10:26:20'),
(436, 100, 100, 9, 'text', 'wwwwwwwwwwwwwwwwww', NULL, '2022-11-24 10:26:29', '2022-11-24 10:26:29'),
(437, 100, 100, 9, 'text', 'wwwwwwwwwwwwwwwwww', NULL, '2022-11-24 10:26:42', '2022-11-24 10:26:42'),
(438, 100, 100, 9, 'text', 'wwwwwwwwwwwwwwwwww', NULL, '2022-11-24 10:29:16', '2022-11-24 10:29:16'),
(439, 100, 100, 9, 'text', 'wwwwwwwwwwwwwwwwww', NULL, '2022-11-24 10:29:29', '2022-11-24 10:29:29'),
(440, 100, 100, 9, 'text', 'qwqwqw', NULL, '2022-11-24 10:29:50', '2022-11-24 10:29:50'),
(441, 100, 100, 9, 'text', 'qwqwqw', NULL, '2022-11-24 10:30:02', '2022-11-24 10:30:02'),
(442, 100, 100, 9, 'text', 'qwqwqw', NULL, '2022-11-24 10:30:09', '2022-11-24 10:30:09'),
(443, 100, 100, 9, 'text', 'qwqwqw', NULL, '2022-11-24 10:47:46', '2022-11-24 10:47:46'),
(444, 100, 100, 9, 'text', 'qwqwqw', NULL, '2022-11-24 10:47:57', '2022-11-24 10:47:57'),
(445, 100, 100, 9, 'text', 'qwqwqw', NULL, '2022-11-24 10:48:09', '2022-11-24 10:48:09'),
(446, 100, 100, 9, 'text', 'qwqwqw', NULL, '2022-11-24 10:48:20', '2022-11-24 10:48:20'),
(447, 100, 100, 9, 'text', 'qwqwqw', NULL, '2022-11-24 11:07:14', '2022-11-24 11:07:14'),
(448, 100, 100, 9, 'text', 'qwqwqw', NULL, '2022-11-24 11:07:27', '2022-11-24 11:07:27'),
(449, 100, 100, 9, 'text', 'qwqwqw', NULL, '2022-11-24 11:07:35', '2022-11-24 11:07:35'),
(450, 100, 100, 9, 'text', 'qwqwqw', NULL, '2022-11-24 11:07:44', '2022-11-24 11:07:44'),
(451, 100, 100, 9, 'text', 'qwqwqw', NULL, '2022-11-24 11:09:00', '2022-11-24 11:09:00'),
(452, 100, 100, 9, 'text', 'qwqwqw', NULL, '2022-11-24 11:23:13', '2022-11-24 11:23:13'),
(453, 100, 100, 9, 'text', 'qwqwqw', NULL, '2022-11-24 11:23:24', '2022-11-24 11:23:24'),
(454, 100, 100, 9, 'text', 'ewewewew', NULL, '2022-11-24 11:23:34', '2022-11-24 11:23:34'),
(455, 100, 100, 9, 'text', 'ewewewew', NULL, '2022-11-24 11:24:26', '2022-11-24 11:24:26'),
(456, 100, 100, 9, 'text', 'ewewewew', NULL, '2022-11-24 11:24:36', '2022-11-24 11:24:36'),
(457, 100, 100, 9, 'text', 'ewewewew', NULL, '2022-11-24 11:24:47', '2022-11-24 11:24:47'),
(458, 100, 100, 9, 'text', 'ewewewew', NULL, '2022-11-24 11:30:48', '2022-11-24 11:30:48'),
(459, 100, 100, 9, 'text', 'ewewewew', NULL, '2022-11-24 11:31:00', '2022-11-24 11:31:00'),
(460, 100, 100, 9, 'text', 'ewewewew', NULL, '2022-11-24 11:31:08', '2022-11-24 11:31:08'),
(461, 100, 100, 9, 'text', 'ewewewew', NULL, '2022-11-24 11:32:46', '2022-11-24 11:32:46'),
(462, 100, 100, 9, 'text', 'ewewewew', NULL, '2022-11-24 11:32:52', '2022-11-24 11:32:52'),
(463, 100, 100, 9, 'text', 'ewewewew', NULL, '2022-11-24 11:32:58', '2022-11-24 11:32:58'),
(464, 100, 100, 9, 'text', 'ewewewew6666', NULL, '2022-11-24 11:33:40', '2022-11-24 11:33:40'),
(465, 100, 100, 9, 'text', 'ewewewew6666', NULL, '2022-11-24 11:38:26', '2022-11-24 11:38:26'),
(466, 100, 100, 9, 'text', 'ewewewew6666', NULL, '2022-11-24 11:38:33', '2022-11-24 11:38:33'),
(467, 100, 100, 9, 'text', 'ewewewew6666', NULL, '2022-11-24 11:38:38', '2022-11-24 11:38:38'),
(468, 100, 100, 9, 'text', 'ewewewew6666', NULL, '2022-11-24 11:39:58', '2022-11-24 11:39:58'),
(469, 100, 100, 9, 'text', 'ewewewew6666', NULL, '2022-11-24 11:40:03', '2022-11-24 11:40:03'),
(470, 100, 100, 9, 'text', 'ewewewew6666', NULL, '2022-11-24 11:41:04', '2022-11-24 11:41:04'),
(471, 100, 100, 9, 'text', 'ewewewew6666', NULL, '2022-11-24 11:41:11', '2022-11-24 11:41:11'),
(472, 100, 100, 9, 'text', 'ewewewew6666', NULL, '2022-11-24 11:41:26', '2022-11-24 11:41:26'),
(473, 100, 100, 9, 'text', 'ewewewew6666', NULL, '2022-11-24 11:41:30', '2022-11-24 11:41:30'),
(474, 100, 100, 9, 'text', 'ewewewew6666', NULL, '2022-11-24 11:42:43', '2022-11-24 11:42:43'),
(475, 100, 100, 9, 'text', 'ewewewew6666', NULL, '2022-11-24 11:42:55', '2022-11-24 11:42:55'),
(476, 100, 100, 9, 'text', 'ewewewew6666', NULL, '2022-11-24 11:43:09', '2022-11-24 11:43:09'),
(477, 100, 100, 9, 'text', 'ewewewew6666', NULL, '2022-11-24 11:43:34', '2022-11-24 11:43:34'),
(478, 100, 100, 9, 'text', 'ewewewew6666', NULL, '2022-11-24 11:46:45', '2022-11-24 11:46:45'),
(479, 100, 100, 9, 'text', 'ewewewew6666', NULL, '2022-11-24 11:46:59', '2022-11-24 11:46:59'),
(480, 100, 100, 9, 'text', 'ewewewew6666', NULL, '2022-11-24 11:47:18', '2022-11-24 11:47:18'),
(481, 100, 100, 9, 'text', '0.0.0.0.0.0.0.0.0.', NULL, '2022-11-24 11:47:56', '2022-11-24 11:47:56'),
(482, 100, 100, 9, 'text', '0.0.0.0.0.0.0.0.0.', NULL, '2022-11-24 11:48:09', '2022-11-24 11:48:09'),
(483, 100, 100, 9, 'text', '0.0.0.0.0.0.0.0.0.', NULL, '2022-11-24 11:48:16', '2022-11-24 11:48:16'),
(484, 100, 100, 9, 'text', '0.0.0.0.0.0.0.0.0.', NULL, '2022-11-24 11:48:31', '2022-11-24 11:48:31'),
(485, 100, 100, 9, 'text', '0.0.0.0.0.0.0.0.0.', NULL, '2022-11-24 11:48:33', '2022-11-24 11:48:33'),
(486, 100, 100, 9, 'text', '0.0.0.0.0.0.0.0.0.', NULL, '2022-11-24 11:54:54', '2022-11-24 11:54:54'),
(487, 100, 100, 9, 'text', '0.0.0.0.0.0.0.0.0.', NULL, '2022-11-24 11:55:14', '2022-11-24 11:55:14'),
(488, 100, 100, 9, 'text', '0.0.0.0.0.0.0.0.0.', NULL, '2022-11-24 11:55:34', '2022-11-24 11:55:34'),
(489, 100, 100, 9, 'text', '0.0.0.0.0.0.0.0.0.', NULL, '2022-11-24 11:57:13', '2022-11-24 11:57:13'),
(490, 100, 100, 9, 'text', '0.0.0.0.0.0.0.0.0.', NULL, '2022-11-24 11:57:56', '2022-11-24 11:57:56'),
(491, 100, 100, 9, 'text', '0.0.0.0.0.0.0.0.0.', NULL, '2022-11-24 11:58:03', '2022-11-24 11:58:03'),
(492, 100, 100, 9, 'text', '0.0.0.0.0.0.0.0.0.', NULL, '2022-11-24 11:58:35', '2022-11-24 11:58:35'),
(493, 100, 100, 9, 'text', '0.0.0.0.0.0.0.0.0.', NULL, '2022-11-24 11:58:48', '2022-11-24 11:58:48'),
(494, 100, 100, 9, 'text', '0.0.0.0.0.0.0.0.0.', NULL, '2022-11-24 11:59:17', '2022-11-24 11:59:17'),
(495, 100, 100, 9, 'text', '0.0.0.0.0.0.0.0.0.', NULL, '2022-11-24 11:59:32', '2022-11-24 11:59:32'),
(496, 100, 100, 9, 'text', '0.0.0.0.0.0.0.0.0.', NULL, '2022-11-24 12:00:22', '2022-11-24 12:00:22'),
(497, 100, 100, 9, 'text', '0.0.0.0.0.0.0.0.0.', NULL, '2022-11-24 12:00:37', '2022-11-24 12:00:37'),
(498, 100, 100, 9, 'text', '0.0.0.0.0.0.0.0.0.', NULL, '2022-11-24 12:54:22', '2022-11-24 12:54:22'),
(499, 100, 100, 9, 'text', '0.0.0.0.0.0.0.0.0.', NULL, '2022-11-24 12:56:30', '2022-11-24 12:56:30'),
(500, 100, 100, 9, 'text', '0.0.0.0.0.0.0.0.0.', NULL, '2022-11-24 13:01:37', '2022-11-24 13:01:37'),
(501, 100, 100, 9, 'text', '0.0.0.0.0.0.0.0.0.', NULL, '2022-11-24 13:03:12', '2022-11-24 13:03:12'),
(502, 100, 100, 9, 'text', '0.0.0.0.0.0.0.0.0.', NULL, '2022-11-24 13:03:38', '2022-11-24 13:03:38'),
(503, 100, 100, 9, 'text', '0.0.0.0.0.0.0.0.0.', NULL, '2022-11-24 13:06:11', '2022-11-24 13:06:11'),
(504, 100, 100, 9, 'text', '0.0.0.0.0.0.0.0.0.', NULL, '2022-11-24 13:07:22', '2022-11-24 13:07:22'),
(505, 100, 100, 9, 'text', '0.0.0.0.0.0.0.0.0.', NULL, '2022-11-24 13:07:59', '2022-11-24 13:07:59'),
(506, 100, 100, 9, 'text', '0.0.0.0.0.0.0.0.0.', NULL, '2022-11-24 13:11:03', '2022-11-24 13:11:03'),
(507, 100, 100, 9, 'text', '0.0.0.0.0.0.0.0.0.', NULL, '2022-11-24 13:11:32', '2022-11-24 13:11:32'),
(508, 100, 100, 9, 'text', '0.0.0.0.0.0.0.0.0.', NULL, '2022-11-24 13:13:53', '2022-11-24 13:13:53'),
(509, 100, 100, 9, 'text', '0.0.0.0.0.0.0.0.0.', NULL, '2022-11-24 13:14:03', '2022-11-24 13:14:03'),
(510, 100, 100, 9, 'text', '0.0.0.0.0.0.0.0.0.', NULL, '2022-11-24 13:15:01', '2022-11-24 13:15:01'),
(511, 100, 100, 9, 'text', '0.0.0.0.0.0.0.0.0.', NULL, '2022-11-24 13:15:06', '2022-11-24 13:15:06'),
(512, 100, 100, 9, 'text', '0.0.0.0.0.0.0.0.0.', NULL, '2022-11-24 13:15:15', '2022-11-24 13:15:15'),
(513, 100, 100, 9, 'text', '0.0.0.0.0.0.0.0.0.', NULL, '2022-11-24 13:16:02', '2022-11-24 13:16:02'),
(514, 100, 100, 9, 'text', '0.0.0.0.0.0.0.0.0.', NULL, '2022-11-24 13:20:16', '2022-11-24 13:20:16'),
(515, 100, 100, 9, 'text', '0.0.0.0.0.0.0.0.0.', NULL, '2022-11-24 13:20:37', '2022-11-24 13:20:37'),
(516, 100, 100, 9, 'text', '0.0.0.0.0.0.0.0.0.', NULL, '2022-11-24 13:20:51', '2022-11-24 13:20:51'),
(517, 100, 100, 9, 'text', '0.0.0.0.0.0.0.0.0.', NULL, '2022-11-24 13:22:32', '2022-11-24 13:22:32'),
(518, 100, 100, 9, 'text', '0.0.0.0.0.0.0.0.0.', NULL, '2022-11-24 13:23:19', '2022-11-24 13:23:19'),
(519, 100, 100, 9, 'text', '0.0.0.0.0.0.0.0.0.', NULL, '2022-11-24 13:24:07', '2022-11-24 13:24:07'),
(520, 100, 100, 9, 'text', '0.0.0.0.0.0.0.0.0.', NULL, '2022-11-24 13:24:34', '2022-11-24 13:24:34'),
(521, 100, 100, 9, 'text', '0.0.0.0.0.0.0.0.0.', NULL, '2022-11-24 13:24:55', '2022-11-24 13:24:55'),
(522, 100, 100, 9, 'text', '0.0.0.0.0.0.0.0.0.', NULL, '2022-11-24 13:25:04', '2022-11-24 13:25:04'),
(523, 100, 100, 9, 'text', '0.0.0.0.0.0.0.0.0.', NULL, '2022-11-24 13:26:00', '2022-11-24 13:26:00'),
(524, 100, 100, 9, 'text', '0.0.0.0.0.0.0.0.0.', NULL, '2022-11-24 13:27:38', '2022-11-24 13:27:38'),
(525, 100, 100, 9, 'text', '0.0.0.0.0.0.0.0.0.', NULL, '2022-11-24 13:29:05', '2022-11-24 13:29:05'),
(526, 100, 100, 9, 'text', '0.0.0.0.0.0.0.0.0.', NULL, '2022-11-24 13:36:02', '2022-11-24 13:36:02'),
(527, 100, 100, 9, 'text', '0.0.0.0.0.0.0.0.0.3333', NULL, '2022-11-24 13:36:19', '2022-11-24 13:36:19'),
(528, 100, 100, 9, 'text', '0.0.0.0.0.0.0.0.0.3333', NULL, '2022-11-24 13:39:00', '2022-11-24 13:39:00'),
(529, 100, 100, 9, 'text', '0.0.0.0.0.0.0.0.0.3333', NULL, '2022-11-24 13:41:03', '2022-11-24 13:41:03'),
(530, 100, 100, 9, 'text', '0.0.0.0.0.0.0.0.0.3333', NULL, '2022-11-24 13:41:14', '2022-11-24 13:41:14'),
(531, 100, 100, 9, 'text', '0.0.0.0.0.0.0.0.0.3333', NULL, '2022-11-24 13:44:36', '2022-11-24 13:44:36'),
(532, 100, 100, 9, 'text', '0.0.0.0.0.0.0.0.0.3333', NULL, '2022-11-24 13:48:54', '2022-11-24 13:48:54'),
(533, 100, 100, 9, 'text', '0.0.0.0.0.0.0.0.0.3333', NULL, '2022-11-24 13:51:26', '2022-11-24 13:51:26'),
(534, 100, 100, 9, 'text', '0.0.0.0.0.0.0.0.0.3333', NULL, '2022-11-24 13:52:26', '2022-11-24 13:52:26'),
(535, 100, 100, 9, 'text', '0.0.0.0.0.0.0.0.0.3333', NULL, '2022-11-24 13:52:36', '2022-11-24 13:52:36'),
(536, 100, 100, 9, 'text', '0.0.0.0.0.0.0.0.0.3333', NULL, '2022-11-24 13:52:53', '2022-11-24 13:52:53'),
(537, 100, 100, 9, 'text', '0.0.0.0.0.0.0.0.0.3333', NULL, '2022-11-24 13:53:05', '2022-11-24 13:53:05'),
(538, 100, 100, 9, 'text', '0.0.0.0.0.0.0.0.0.3333', NULL, '2022-11-24 13:53:40', '2022-11-24 13:53:40'),
(539, 100, 100, 9, 'text', '0.0.0.0.0.0.0.0.0.3333', NULL, '2022-11-24 13:53:56', '2022-11-24 13:53:56'),
(540, 100, 100, 9, 'text', '0.0.0.0.0.0.0.0.0.3333', NULL, '2022-11-24 13:54:52', '2022-11-24 13:54:52'),
(541, 100, 100, 9, 'text', '0.0.0.0.0.0.0.0.0.3333', NULL, '2022-11-24 13:56:34', '2022-11-24 13:56:34'),
(542, 100, 100, 9, 'text', '0.0.0.0.0.0.0.0.0.3333', NULL, '2022-11-24 13:56:55', '2022-11-24 13:56:55'),
(543, 100, 100, 9, 'text', '0.0.0.0.0.0.0.0.0.3333', NULL, '2022-11-24 13:58:24', '2022-11-24 13:58:24'),
(544, 100, 100, 9, 'text', '0.0.0.0.0.0.0.0.0.3333', NULL, '2022-11-24 14:06:59', '2022-11-24 14:06:59'),
(545, 100, 100, 9, 'text', '0.0.0.0.0.0.0.0.0.3333', NULL, '2022-11-24 14:08:12', '2022-11-24 14:08:12'),
(546, 100, 100, 9, 'text', '0.0.0.0.0.0.0.0.0.3333', NULL, '2022-11-24 14:08:21', '2022-11-24 14:08:21'),
(547, 100, 100, 9, 'text', '0.0.0.0.0.0.0.0.0.3333', NULL, '2022-11-24 14:08:30', '2022-11-24 14:08:30'),
(548, 100, 100, 9, 'text', '0.0.0.0.0.0.0.0.0.3333', NULL, '2022-11-24 14:08:52', '2022-11-24 14:08:52'),
(549, 100, 100, 9, 'text', '0.0.0.0.0.0.0.0.0.3333', NULL, '2022-11-24 14:09:02', '2022-11-24 14:09:02'),
(550, 100, 100, 9, 'text', '0.0.0.0.0.0.0.0.0.3333', NULL, '2022-11-24 14:15:20', '2022-11-24 14:15:20'),
(551, 100, 100, 9, 'text', '0.0.0.0.0.0.0.0.0.3333', NULL, '2022-11-24 14:16:12', '2022-11-24 14:16:12'),
(552, 100, 100, 9, 'text', '0.0.0.0.0.0.0.0.0.3333', NULL, '2022-11-24 14:16:25', '2022-11-24 14:16:25'),
(553, 100, 100, 9, 'text', '0.0.0.0.0.0.0.0.0.3333', NULL, '2022-11-24 14:16:58', '2022-11-24 14:16:58'),
(554, 100, 100, 9, 'text', '0.0.0.0.0.0.0.0.0.3333', NULL, '2022-11-24 14:17:21', '2022-11-24 14:17:21'),
(555, 100, 100, 9, 'text', '0.0.0.0.0.0.0.0.0.3333', NULL, '2022-11-24 14:17:28', '2022-11-24 14:17:28'),
(556, 100, 100, 9, 'text', '0.0.0.0.0.0.0.0.0.3333', NULL, '2022-11-24 14:17:39', '2022-11-24 14:17:39'),
(557, 100, 100, 9, 'text', '0.0.0.0.0.0.0.0.0.3333', NULL, '2022-11-24 14:20:33', '2022-11-24 14:20:33'),
(558, 100, 100, 9, 'text', '0.0.0.0.0.0.0.0.0.3333', NULL, '2022-11-24 14:22:25', '2022-11-24 14:22:25'),
(559, 100, 100, 9, 'text', '0.0.0.0.0.0.0.0.0.3333', NULL, '2022-11-24 14:23:14', '2022-11-24 14:23:14'),
(560, 100, 100, 9, 'text', '0.0.0.0.0.0.0.0.0.3333', NULL, '2022-11-24 14:23:31', '2022-11-24 14:23:31'),
(561, 100, 100, 9, 'text', '0.0.0.0.0.0.0.0.0.3333', NULL, '2022-11-24 14:25:03', '2022-11-24 14:25:03'),
(562, 100, 100, 9, 'text', '0.0.0.0.0.0.0.0.0.3333', NULL, '2022-11-24 14:31:57', '2022-11-24 14:31:57'),
(563, 100, 100, 9, 'text', '0.0.0.0.0.0.0.0.0.3333', NULL, '2022-11-24 14:33:55', '2022-11-24 14:33:55'),
(564, 100, 100, 9, 'text', '0.0.0.0.0.0.0.0.0.3333', NULL, '2022-11-24 14:39:12', '2022-11-24 14:39:12'),
(565, 100, 100, 9, 'text', '0.0.0.0.0.0.0.0.0.3333', NULL, '2022-11-24 14:40:13', '2022-11-24 14:40:13'),
(566, 100, 100, 9, 'text', '0.0.0.0.0.0.0.0.0.3333', NULL, '2022-11-24 14:41:15', '2022-11-24 14:41:15');
INSERT INTO `room_messages` (`id`, `from_user_id`, `to_user_id`, `room_id`, `type`, `message`, `file`, `created_at`, `updated_at`) VALUES
(567, 100, 100, 9, 'text', '0.0.0.0.0.0.0.0.0.3333', NULL, '2022-11-24 14:42:10', '2022-11-24 14:42:10'),
(568, 100, 100, 9, 'text', '0.0.0.0.0.0.0.0.0.3333', NULL, '2022-11-24 14:42:29', '2022-11-24 14:42:29'),
(569, 100, 100, 9, 'text', '0.0.0.0.0.0.0.0.0.3333', NULL, '2022-11-24 14:43:26', '2022-11-24 14:43:26'),
(570, 100, 100, 9, 'text', '0.0.0.0.0.0.0.0.0.3333', NULL, '2022-11-24 14:43:50', '2022-11-24 14:43:50'),
(571, 100, 100, 9, 'text', '0.0.0.0.0.0.0.0.0.3333', NULL, '2022-11-24 14:44:13', '2022-11-24 14:44:13'),
(572, 100, 100, 9, 'text', '0.0.0.0.0.0.0.0.0.3333', NULL, '2022-11-24 14:52:57', '2022-11-24 14:52:57'),
(573, 100, 100, 9, 'text', '0.0.0.0.0.0.0.0.0.3333', NULL, '2022-11-24 14:53:27', '2022-11-24 14:53:27'),
(574, 100, 100, 9, 'text', '0.0.0.0.0.0.0.0.0.3333', NULL, '2022-11-24 14:59:57', '2022-11-24 14:59:57'),
(575, 100, 100, 9, 'text', '0.0.0.0.0.0.0.0.0.3333', NULL, '2022-11-24 15:04:24', '2022-11-24 15:04:24'),
(576, 100, 100, 9, 'text', '0.0.0.0.0.0.0.0.0.3333', NULL, '2022-11-24 15:06:11', '2022-11-24 15:06:11'),
(577, 100, 100, 9, 'text', '0.0.0.0.0.0.0.0.0.3333', NULL, '2022-11-24 15:08:09', '2022-11-24 15:08:09'),
(578, 100, 100, 9, 'text', '0.0.0.0.0.0.0.0.0.3333', NULL, '2022-11-24 15:08:39', '2022-11-24 15:08:39'),
(579, 100, 100, 9, 'text', '0.0.0.0.0.0.0.0.0.3333', NULL, '2022-11-24 15:09:18', '2022-11-24 15:09:18'),
(580, 100, 100, 9, 'text', '0.0.0.0.0.0.0.0.0.3333', NULL, '2022-11-24 15:09:40', '2022-11-24 15:09:40'),
(581, 100, 100, 9, 'text', '0.0.0.0.0.0.0.0.0.3333', NULL, '2022-11-24 15:10:36', '2022-11-24 15:10:36'),
(582, 100, 100, 9, 'text', '0.0.0.0.0.0.0.0.0.3333', NULL, '2022-11-24 15:13:43', '2022-11-24 15:13:43'),
(583, 100, 100, 9, 'text', '0.0.0.0.0.0.0.0.0.3333', NULL, '2022-11-24 15:34:54', '2022-11-24 15:34:54'),
(584, 100, 100, 9, 'text', '0.0.0.0.0.0.0.0.0.3333', NULL, '2022-11-24 15:35:56', '2022-11-24 15:35:56'),
(585, 100, 100, 9, 'text', '44444', NULL, '2022-11-24 15:36:01', '2022-11-24 15:36:01'),
(586, 100, 100, 9, 'text', '44444', NULL, '2022-11-24 15:36:55', '2022-11-24 15:36:55'),
(587, 100, 100, 9, 'text', '44444', NULL, '2022-11-24 15:37:03', '2022-11-24 15:37:03'),
(588, 100, 100, 9, 'text', '44444', NULL, '2022-11-24 16:00:52', '2022-11-24 16:00:52'),
(589, 100, 100, 9, 'text', '44444', NULL, '2022-11-24 16:01:04', '2022-11-24 16:01:04'),
(590, 100, 100, 3, 'text', 'اننن', NULL, '2022-11-26 08:39:24', '2022-11-26 08:39:24'),
(591, 113, 100, 10, 'text', 'هلااا والله 🤩', NULL, '2022-11-27 09:25:13', '2022-11-27 09:25:13'),
(592, 113, 100, 10, 'text', '💖', NULL, '2022-11-27 09:25:52', '2022-11-27 09:25:52'),
(593, 116, 100, 11, 'text', 'Oo', NULL, '2022-11-27 10:31:41', '2022-11-27 10:31:41'),
(594, 116, 100, 11, 'text', 'Yy', NULL, '2022-11-27 10:33:33', '2022-11-27 10:33:33'),
(595, 116, 100, 11, 'text', 'Oo', NULL, '2022-11-27 10:35:19', '2022-11-27 10:35:19'),
(596, 116, 100, 11, 'text', 'U', NULL, '2022-11-27 10:35:28', '2022-11-27 10:35:28'),
(597, 100, 100, 11, 'text', 'ننن', NULL, '2022-11-27 10:35:34', '2022-11-27 10:35:34'),
(598, 116, 98, 12, 'text', 'Hh', NULL, '2022-11-27 11:33:40', '2022-11-27 11:33:40'),
(599, 116, 98, 12, 'text', 'Hh', NULL, '2022-11-27 11:33:48', '2022-11-27 11:33:48'),
(600, 100, 100, 11, 'text', 'ههه', NULL, '2022-11-27 11:35:26', '2022-11-27 11:35:26'),
(601, 100, 100, 11, 'text', 'ههه', NULL, '2022-11-27 11:35:35', '2022-11-27 11:35:35'),
(602, 100, 100, 11, 'text', '٦٦٦', NULL, '2022-11-27 11:35:43', '2022-11-27 11:35:43'),
(603, 116, 100, 11, 'text', 'Nn', NULL, '2022-11-27 11:35:51', '2022-11-27 11:35:51'),
(604, 116, 100, 11, 'text', 'Mm', NULL, '2022-11-27 11:36:10', '2022-11-27 11:36:10'),
(605, 100, 100, 11, 'text', 'غع', NULL, '2022-11-27 11:37:13', '2022-11-27 11:37:13'),
(606, 116, 100, 11, 'text', 'Ll', NULL, '2022-11-27 11:37:24', '2022-11-27 11:37:24'),
(607, 116, 100, 11, 'text', 'Kok', NULL, '2022-11-27 11:41:41', '2022-11-27 11:41:41'),
(608, 116, 100, 11, 'text', 'Kok', NULL, '2022-11-27 11:41:51', '2022-11-27 11:41:51'),
(609, 100, 100, 11, 'text', '٥٥', NULL, '2022-11-27 11:41:56', '2022-11-27 11:41:56'),
(610, 116, 100, 11, 'text', 'Gg', NULL, '2022-11-27 11:41:59', '2022-11-27 11:41:59'),
(611, 116, 100, 11, 'text', 'Hh', NULL, '2022-11-27 11:46:05', '2022-11-27 11:46:05'),
(612, 116, 100, 11, 'text', 'Fufi', NULL, '2022-11-27 11:50:04', '2022-11-27 11:50:04'),
(613, 116, 100, 11, 'text', 'Popop', NULL, '2022-11-27 11:54:19', '2022-11-27 11:54:19'),
(614, 116, 98, 12, 'text', 'ججج', NULL, '2022-11-27 13:06:58', '2022-11-27 13:06:58'),
(615, 100, 100, 11, 'text', 'ففف', NULL, '2022-11-27 13:07:22', '2022-11-27 13:07:22'),
(616, 116, 100, 11, 'text', 'حح', NULL, '2022-11-27 13:07:30', '2022-11-27 13:07:30'),
(617, 116, 100, 11, 'text', 'ع٧ل', NULL, '2022-11-27 13:07:43', '2022-11-27 13:07:43'),
(618, 100, 100, 11, 'text', 'تت', NULL, '2022-11-27 13:14:36', '2022-11-27 13:14:36'),
(619, 116, 100, 11, 'text', 'جج', NULL, '2022-11-27 13:14:53', '2022-11-27 13:14:53'),
(620, 116, 100, 11, 'text', 'عىهة', NULL, '2022-11-27 13:15:06', '2022-11-27 13:15:06'),
(621, 116, 98, 12, 'text', 'وتت', NULL, '2022-11-27 13:15:51', '2022-11-27 13:15:51'),
(622, 116, 100, 11, 'text', 'ججججج', NULL, '2022-11-27 13:16:13', '2022-11-27 13:16:13'),
(623, 100, 100, 9, 'text', 'يرجي ارسال التفاصيل', NULL, '2022-11-27 14:14:31', '2022-11-27 14:14:31'),
(624, 100, 100, 9, 'text', 'يرجي ارسال التفاصيل', NULL, '2022-11-27 14:14:46', '2022-11-27 14:14:46'),
(625, 100, 100, 9, 'text', 'يرجي ارسال التفاصيل', NULL, '2022-11-27 14:14:59', '2022-11-27 14:14:59'),
(626, 100, 100, 9, 'text', 'يرجي ارسال التفاصيل', NULL, '2022-11-27 14:15:15', '2022-11-27 14:15:15'),
(627, 100, 100, 9, 'text', 'يرجي ارسال التفاصيل', NULL, '2022-11-27 14:15:24', '2022-11-27 14:15:24'),
(628, 100, 100, 9, 'text', 'يرجي ارسال التفاصيل', NULL, '2022-11-27 14:15:35', '2022-11-27 14:15:35'),
(629, 100, 100, 9, 'text', 'يرجي ارسال التفاصيل', NULL, '2022-11-27 14:15:45', '2022-11-27 14:15:45'),
(630, 100, 100, 9, 'text', 'يرجي ارسال التفاصيل', NULL, '2022-11-27 14:15:52', '2022-11-27 14:15:52'),
(631, 100, 100, 9, 'text', 'يرجي ارسال التفاصيل', NULL, '2022-11-27 14:22:07', '2022-11-27 14:22:07'),
(632, 100, 100, 9, 'text', 'يرجي ارسال التفاصيل', NULL, '2022-11-27 14:22:15', '2022-11-27 14:22:15'),
(633, 100, 100, 9, 'text', 'يرجي ارسال التفاصيل', NULL, '2022-11-27 14:22:31', '2022-11-27 14:22:31'),
(634, 100, 100, 9, 'text', 'يرجي ارسال التفاصيل', NULL, '2022-11-27 14:24:00', '2022-11-27 14:24:00'),
(635, 100, 100, 9, 'text', 'يرجي ارسال التفاصيل', NULL, '2022-11-27 14:24:15', '2022-11-27 14:24:15'),
(636, 100, 100, 9, 'text', 'يرجي ارسال التفاصيل', NULL, '2022-11-27 14:24:38', '2022-11-27 14:24:38'),
(637, 100, 100, 9, 'text', 'يرجي ارسال التفاصيل', NULL, '2022-11-27 14:24:50', '2022-11-27 14:24:50'),
(638, 100, 100, 9, 'text', 'يرجي ارسال التفاصيل', NULL, '2022-11-27 14:25:14', '2022-11-27 14:25:14'),
(639, 100, 100, 9, 'text', 'يرجي ارسال التفاصيل', NULL, '2022-11-27 14:30:57', '2022-11-27 14:30:57'),
(640, 100, 100, 9, 'text', 'tttttttttttttttttttttttt', NULL, '2022-11-27 14:31:12', '2022-11-27 14:31:12'),
(641, 100, 100, 9, 'text', 'wwwwwwwwwwwwwwwwwwwwww', NULL, '2022-11-27 14:31:22', '2022-11-27 14:31:22'),
(642, 100, 100, 9, 'text', 'qqqqqqqqqqqqqqqqqqqqq', NULL, '2022-11-27 14:31:33', '2022-11-27 14:31:33'),
(643, 100, 100, 9, 'text', 'qqqqqqqqqqqqqqqqqqqqq', NULL, '2022-11-28 08:25:15', '2022-11-28 08:25:15'),
(644, 100, 100, 9, 'text', 'rrrrrrrrrrrrrrrrr', NULL, '2022-11-28 08:27:57', '2022-11-28 08:27:57'),
(645, 100, 100, 9, 'text', 'rrrrrrrrrrrrrrrrr', NULL, '2022-11-28 08:50:13', '2022-11-28 08:50:13'),
(646, 100, 100, 9, 'text', 'rrrrrrrrrrrrrrrrr', NULL, '2022-11-28 08:50:21', '2022-11-28 08:50:21'),
(647, 100, 100, 9, 'text', 'rrrrrrrrrrrrrrrrr', NULL, '2022-11-28 08:50:29', '2022-11-28 08:50:29'),
(648, 100, 100, 9, 'text', 'rrrrrrrrrrrrrrrrr', NULL, '2022-11-28 08:50:41', '2022-11-28 08:50:41'),
(649, 100, 100, 9, 'text', 'rrrrrrrrrrrrrrrrr', NULL, '2022-11-28 08:52:21', '2022-11-28 08:52:21'),
(650, 100, 100, 9, 'text', 'rrrrrrrrrrrrrrrrr', NULL, '2022-11-28 08:52:24', '2022-11-28 08:52:24'),
(651, 100, 100, 9, 'text', 'rrrrrrrrrrrrrrrrr', NULL, '2022-11-28 08:54:55', '2022-11-28 08:54:55'),
(652, 100, 100, 9, 'text', 'rrrrrrrrrrrrrrrrr', NULL, '2022-11-28 08:55:01', '2022-11-28 08:55:01'),
(653, 100, 100, 9, 'text', 'rrrrrrrrrrrrrrrrr', NULL, '2022-11-28 08:55:31', '2022-11-28 08:55:31'),
(654, 100, 100, 9, 'text', 'rrrrrrrrrrrrrrrrr', NULL, '2022-11-28 08:58:06', '2022-11-28 08:58:06'),
(655, 100, 100, 9, 'text', 'rrrrrrrrrrrrrrrrr', NULL, '2022-11-28 08:58:16', '2022-11-28 08:58:16'),
(656, 100, 100, 9, 'text', 'rrrrrrrrrrrrrrrrr', NULL, '2022-11-28 08:58:22', '2022-11-28 08:58:22'),
(657, 100, 100, 9, 'text', 'rrrrrrrrrrrrrrrrr', NULL, '2022-11-28 08:58:45', '2022-11-28 08:58:45'),
(658, 100, 100, 9, 'text', 'rrrrrrrrrrrrrrrrr', NULL, '2022-11-28 08:59:17', '2022-11-28 08:59:17'),
(659, 100, 100, 9, 'text', 'rrrrrrrrrrrrrrrrr', NULL, '2022-11-28 09:00:03', '2022-11-28 09:00:03'),
(660, 100, 100, 9, 'text', 'rrrrrrrrrrrrrrrrr', NULL, '2022-11-28 09:08:43', '2022-11-28 09:08:43'),
(661, 100, 100, 9, 'text', 'rrrrrrrrrrrrrrrrr', NULL, '2022-11-28 09:08:52', '2022-11-28 09:08:52'),
(662, 100, 100, 9, 'text', 'rrrrrrrrrrrrrrrrr', NULL, '2022-11-28 09:09:05', '2022-11-28 09:09:05'),
(663, 100, 100, 9, 'text', 'rrrrrrrrrrrrrrrrr', NULL, '2022-11-28 09:11:52', '2022-11-28 09:11:52'),
(664, 100, 100, 9, 'text', 'rrrrrrrrrrrrrrrrr', NULL, '2022-11-28 09:12:03', '2022-11-28 09:12:03'),
(665, 100, 100, 9, 'text', 'rrrrrrrrrrrrrrrrr', NULL, '2022-11-28 09:13:12', '2022-11-28 09:13:12'),
(666, 100, 100, 9, 'text', 'rrrrrrrrrrrrrrrrr', NULL, '2022-11-28 09:13:23', '2022-11-28 09:13:23'),
(667, 100, 100, 9, 'text', 'rrrrrrrrrrrrrrrrr', NULL, '2022-11-28 09:14:50', '2022-11-28 09:14:50'),
(668, 100, 100, 9, 'text', 'rrrrrrrrrrrrrrrrr', NULL, '2022-11-28 09:15:00', '2022-11-28 09:15:00'),
(669, 100, 100, 9, 'text', 'rrrrrrrrrrrrrrrrr', NULL, '2022-11-28 09:16:32', '2022-11-28 09:16:32'),
(670, 100, 100, 9, 'text', 'rrrrrrrrrrrrrrrrr', NULL, '2022-11-28 09:16:40', '2022-11-28 09:16:40'),
(671, 100, 100, 9, 'text', 'rrrrrrrrrrrrrrrrr', NULL, '2022-11-28 09:17:00', '2022-11-28 09:17:00'),
(672, 100, 100, 9, 'text', 'rrrrrrrrrrrrrrrrr', NULL, '2022-11-28 09:17:08', '2022-11-28 09:17:08'),
(673, 100, 100, 9, 'text', 'rrrrrrrrrrrrrrrrr', NULL, '2022-11-28 09:17:47', '2022-11-28 09:17:47'),
(674, 100, 100, 9, 'text', 'rrrrrrrrrrrrrrrrr', NULL, '2022-11-28 09:19:50', '2022-11-28 09:19:50'),
(675, 100, 100, 9, 'text', 'rrrrrrrrrrrrrrrrr', NULL, '2022-11-28 09:20:15', '2022-11-28 09:20:15'),
(676, 100, 100, 9, 'text', 'rrrrrrrrrrrrrrrrr', NULL, '2022-11-28 09:27:31', '2022-11-28 09:27:31'),
(677, 100, 100, 9, 'text', 'rrrrrrrrrrrrrrrrr', NULL, '2022-11-28 09:29:54', '2022-11-28 09:29:54'),
(678, 100, 100, 9, 'text', 'rrrrrrrrrrrrrrrrr', NULL, '2022-11-28 09:30:07', '2022-11-28 09:30:07'),
(679, 100, 100, 9, 'text', 'rrrrrrrrrrrrrrrrr', NULL, '2022-11-28 09:30:24', '2022-11-28 09:30:24'),
(680, 100, 100, 9, 'text', 'rrrrrrrrrrrrrrrrr', NULL, '2022-11-28 10:01:57', '2022-11-28 10:01:57'),
(681, 100, 100, 9, 'text', 'rrrrrrrrrrrrrrrrr', NULL, '2022-11-28 10:02:08', '2022-11-28 10:02:08'),
(682, 100, 100, 9, 'text', 'rrrrrrrrrrrrrrrrr', NULL, '2022-11-28 10:02:24', '2022-11-28 10:02:24'),
(683, 100, 100, 9, 'text', 'rrrrrrrrrrrrrrrrr', NULL, '2022-11-28 10:02:57', '2022-11-28 10:02:57'),
(684, 100, 100, 9, 'text', 'rrrrrrrrrrrrrrrrr', NULL, '2022-11-28 10:03:00', '2022-11-28 10:03:00'),
(685, 100, 100, 9, 'text', 'rrrrrrrrrrrrrrrrr', NULL, '2022-11-28 10:03:03', '2022-11-28 10:03:03'),
(686, 100, 100, 9, 'text', 'rrrrrrrrrrrrrrrrr', NULL, '2022-11-28 10:07:36', '2022-11-28 10:07:36'),
(687, 100, 100, 9, 'text', 'rrrrrrrrrrrrrrrrr', NULL, '2022-11-28 10:07:53', '2022-11-28 10:07:53'),
(688, 100, 100, 9, 'text', 'rrrrrrrrrrrrrrrrr', NULL, '2022-11-28 10:08:40', '2022-11-28 10:08:40'),
(689, 100, 100, 9, 'text', 'rrrrrrrrrrrrrrrrr', NULL, '2022-11-28 10:08:44', '2022-11-28 10:08:44'),
(690, 100, 100, 9, 'text', 'rrrrrrrrrrrrrrrrr', NULL, '2022-11-28 10:09:13', '2022-11-28 10:09:13'),
(691, 100, 100, 9, 'text', 'rrrrrrrrrrrrrrrrr', NULL, '2022-11-28 10:09:19', '2022-11-28 10:09:19'),
(692, 100, 100, 9, 'text', 'rrrrrrrrrrrrrrrrr', NULL, '2022-11-28 10:09:23', '2022-11-28 10:09:23'),
(693, 100, 100, 9, 'text', 'rrrrrrrrrrrrrrrrr', NULL, '2022-11-28 10:09:25', '2022-11-28 10:09:25'),
(694, 100, 100, 9, 'text', 'rrrrrrrrrrrrrrrrr', NULL, '2022-11-28 10:09:37', '2022-11-28 10:09:37'),
(695, 100, 100, 9, 'text', 'rrrrrrrrrrrrrrrrr', NULL, '2022-11-28 10:09:43', '2022-11-28 10:09:43'),
(696, 100, 100, 9, 'text', 'rrrrrrrrrrrrrrrrr', NULL, '2022-11-28 10:09:48', '2022-11-28 10:09:48'),
(697, 100, 100, 9, 'text', 'rrrrrrrrrrrrrrrrr', NULL, '2022-11-28 10:09:53', '2022-11-28 10:09:53'),
(698, 100, 100, 9, 'text', 'rrrrrrrrrrrrrrrrr', NULL, '2022-11-28 10:10:02', '2022-11-28 10:10:02'),
(699, 100, 100, 9, 'text', 'rrrrrrrrrrrrrrrrr', NULL, '2022-11-28 10:14:29', '2022-11-28 10:14:29'),
(700, 100, 100, 9, 'text', 'rrrrrrrrrrrrrrrrr', NULL, '2022-11-28 10:15:06', '2022-11-28 10:15:06'),
(701, 100, 100, 9, 'text', 'rrrrrrrrrrrrrrrrr', NULL, '2022-11-28 10:15:17', '2022-11-28 10:15:17'),
(702, 100, 100, 9, 'text', 'rrrrrrrrrrrrrrrrr', NULL, '2022-11-28 10:15:59', '2022-11-28 10:15:59'),
(703, 100, 100, 9, 'text', 'rrrrrrrrrrrrrrrrr', NULL, '2022-11-28 10:17:02', '2022-11-28 10:17:02'),
(704, 100, 100, 9, 'text', 'rrrrrrrrrrrrrrrrr', NULL, '2022-11-28 10:21:04', '2022-11-28 10:21:04'),
(705, 100, 100, 9, 'text', 'rrrrrrrrrrrrrrrrr', NULL, '2022-11-28 10:25:54', '2022-11-28 10:25:54'),
(706, 100, 100, 9, 'text', 'rrrrrrrrrrrrrrrrr', NULL, '2022-11-28 10:26:01', '2022-11-28 10:26:01'),
(707, 100, 100, 9, 'text', 'rrrrrrrrrrrrrrrrr', NULL, '2022-11-28 10:26:11', '2022-11-28 10:26:11'),
(708, 100, 100, 9, 'text', 'rrrrrrrrrrrrrrrrr', NULL, '2022-11-28 10:29:55', '2022-11-28 10:29:55'),
(709, 100, 100, 9, 'text', 'rrrrrrrrrrrrrrrrr', NULL, '2022-11-28 10:31:11', '2022-11-28 10:31:11'),
(710, 100, 100, 9, 'text', 'rrrrrrrrrrrrrrrrr', NULL, '2022-11-28 10:32:44', '2022-11-28 10:32:44'),
(711, 100, 100, 9, 'text', 'rrrrrrrrrrrrrrrrr', NULL, '2022-11-28 10:35:33', '2022-11-28 10:35:33'),
(712, 100, 100, 9, 'text', 'rrrrrrrrrrrrrrrrr', NULL, '2022-11-28 10:37:45', '2022-11-28 10:37:45'),
(713, 100, 100, 9, 'text', 'rrrrrrrrrrrrrrrrr', NULL, '2022-11-28 10:38:51', '2022-11-28 10:38:51'),
(714, 100, 100, 9, 'text', 'rrrrrrrrrrrrrrrrr', NULL, '2022-11-28 10:40:02', '2022-11-28 10:40:02'),
(715, 100, 100, 9, 'text', 'rrrrrrrrrrrrrrrrr', NULL, '2022-11-28 10:41:25', '2022-11-28 10:41:25'),
(716, 100, 100, 9, 'text', 'rrrrrrrrrrrrrrrrr', NULL, '2022-11-28 10:42:47', '2022-11-28 10:42:47'),
(717, 100, 100, 9, 'text', 'rrrrrrrrrrrrrrrrr', NULL, '2022-11-28 10:43:27', '2022-11-28 10:43:27'),
(718, 100, 100, 9, 'text', 'rrrrrrrrrrrrrrrrr', NULL, '2022-11-28 10:46:57', '2022-11-28 10:46:57'),
(719, 100, 100, 9, 'text', 'rrrrrrrrrrrrrrrrr', NULL, '2022-11-28 10:47:32', '2022-11-28 10:47:32'),
(720, 100, 100, 9, 'text', 'rrrrrrrrrrrrrrrrr', NULL, '2022-11-28 10:47:39', '2022-11-28 10:47:39'),
(721, 100, 100, 9, 'text', 'sssssss', NULL, '2022-11-28 10:47:55', '2022-11-28 10:47:55'),
(722, 10, 85, 9, 'text', 'ننن', NULL, '2022-11-28 10:49:24', '2022-11-28 10:49:24'),
(723, 100, 100, 9, 'text', 'sssssss', NULL, '2022-11-28 10:49:43', '2022-11-28 10:49:43'),
(724, 100, 100, 9, 'text', 'sssssss', NULL, '2022-11-28 10:49:57', '2022-11-28 10:49:57'),
(725, 10, 85, 9, 'text', 'نبنب', NULL, '2022-11-28 10:50:13', '2022-11-28 10:50:13'),
(726, 100, 100, 9, 'text', 'sssssss', NULL, '2022-11-28 10:50:24', '2022-11-28 10:50:24'),
(727, 100, 100, 9, 'text', 'sssssss', NULL, '2022-11-28 10:50:35', '2022-11-28 10:50:35'),
(728, 100, 100, 9, 'text', 'sssssss', NULL, '2022-11-28 10:51:36', '2022-11-28 10:51:36'),
(729, 100, 100, 9, 'text', 'sssssss', NULL, '2022-11-28 10:51:46', '2022-11-28 10:51:46'),
(730, 100, 100, 9, 'text', 'sssssss', NULL, '2022-11-28 10:51:52', '2022-11-28 10:51:52'),
(731, 100, 100, 9, 'text', '999999', NULL, '2022-11-28 10:52:14', '2022-11-28 10:52:14'),
(732, 10, 85, 9, 'text', 'هغبتلب', NULL, '2022-11-28 10:52:42', '2022-11-28 10:52:42'),
(733, 10, 85, 9, 'text', 'اهباع', NULL, '2022-11-28 10:52:45', '2022-11-28 10:52:45'),
(734, 10, 98, 7, 'text', 'تتره', NULL, '2022-11-28 10:54:19', '2022-11-28 10:54:19'),
(735, 10, 98, 7, 'text', 'تتبا', NULL, '2022-11-28 10:54:26', '2022-11-28 10:54:26'),
(736, 100, 100, 11, 'text', 'نتا', NULL, '2022-11-28 11:00:41', '2022-11-28 11:00:41'),
(737, 100, 98, 7, 'text', 'نهو', NULL, '2022-11-28 11:00:58', '2022-11-28 11:00:58'),
(738, 100, 98, 7, 'text', 'اتت', NULL, '2022-11-28 11:02:07', '2022-11-28 11:02:07'),
(739, 100, 100, 9, 'text', '999999', NULL, '2022-11-28 11:02:54', '2022-11-28 11:02:54'),
(740, 100, 100, 9, 'text', '999999', NULL, '2022-11-28 11:03:18', '2022-11-28 11:03:18'),
(741, 100, 100, 9, 'text', '999999', NULL, '2022-11-28 11:05:49', '2022-11-28 11:05:49'),
(742, 100, 100, 9, 'text', '999999', NULL, '2022-11-28 11:07:01', '2022-11-28 11:07:01'),
(743, 100, 85, 9, 'text', 'نرنرن', NULL, '2022-11-28 11:07:13', '2022-11-28 11:07:13'),
(744, 100, 100, 9, 'text', '999999', NULL, '2022-11-28 11:07:18', '2022-11-28 11:07:18'),
(745, 100, 85, 9, 'text', 'غغغ', NULL, '2022-11-28 11:10:23', '2022-11-28 11:10:23'),
(746, 100, 85, 9, 'text', 'غ', NULL, '2022-11-28 11:10:26', '2022-11-28 11:10:26'),
(747, 100, 116, 9, 'text', '999999', NULL, '2022-11-28 11:18:27', '2022-11-28 11:18:27'),
(748, 100, 100, 11, 'text', 'H', NULL, '2022-11-28 11:18:44', '2022-11-28 11:18:44'),
(749, 100, 116, 9, 'text', '999999', NULL, '2022-11-28 11:18:49', '2022-11-28 11:18:49'),
(750, 116, 100, 9, 'text', '999999', NULL, '2022-11-28 11:19:49', '2022-11-28 11:19:49'),
(751, 116, 100, 11, 'text', '999999', NULL, '2022-11-28 11:20:49', '2022-11-28 11:20:49'),
(752, 116, 100, 11, 'text', 'tttt', NULL, '2022-11-28 11:20:57', '2022-11-28 11:20:57'),
(753, 100, 100, 11, 'text', 'Fgh', NULL, '2022-11-28 11:21:01', '2022-11-28 11:21:01'),
(754, 116, 100, 11, 'text', 'tttt', NULL, '2022-11-28 11:33:26', '2022-11-28 11:33:26'),
(755, 116, 100, 11, 'text', 'tttt', NULL, '2022-11-28 11:33:34', '2022-11-28 11:33:34'),
(756, 100, 100, 11, 'text', 'Uyyy', NULL, '2022-11-28 11:33:39', '2022-11-28 11:33:39'),
(757, 116, 100, 11, 'text', 'tttt', NULL, '2022-11-28 11:35:28', '2022-11-28 11:35:28'),
(758, 116, 100, 11, 'text', 'tttt', NULL, '2022-11-28 11:35:35', '2022-11-28 11:35:35'),
(759, 116, 100, 11, 'text', 'tttt', NULL, '2022-11-28 11:35:41', '2022-11-28 11:35:41'),
(760, 116, 100, 11, 'text', 'tttt', NULL, '2022-11-28 11:36:05', '2022-11-28 11:36:05'),
(761, 116, 100, 11, 'text', 'tttt', NULL, '2022-11-28 11:36:16', '2022-11-28 11:36:16'),
(762, 116, 100, 11, 'text', 'tttt', NULL, '2022-11-28 11:36:51', '2022-11-28 11:36:51'),
(763, 106, 85, 8, 'text', 'يرجي ارسال التفاصيل', NULL, '2022-11-28 11:37:29', '2022-11-28 11:37:29'),
(764, 106, 85, 8, 'text', 'يرجي ارسال التفاصيل', NULL, '2022-11-28 11:37:49', '2022-11-28 11:37:49'),
(765, 116, 100, 11, 'text', 'tttt', NULL, '2022-11-28 11:38:50', '2022-11-28 11:38:50'),
(766, 116, 100, 11, 'text', 'tttt', NULL, '2022-11-28 11:39:00', '2022-11-28 11:39:00'),
(767, 116, 100, 11, 'text', 'zzzzzzz', NULL, '2022-11-28 11:39:08', '2022-11-28 11:39:08'),
(768, 100, 100, 11, 'text', 'Uuuu', NULL, '2022-11-28 11:39:16', '2022-11-28 11:39:16'),
(769, 100, 100, 11, 'text', 'Tu78', NULL, '2022-11-28 11:39:27', '2022-11-28 11:39:27'),
(770, 100, 100, 11, 'text', 'Uuy', NULL, '2022-11-28 11:39:33', '2022-11-28 11:39:33'),
(771, 100, 100, 11, 'text', 'Yty', NULL, '2022-11-28 11:39:38', '2022-11-28 11:39:38'),
(772, 106, 85, 8, 'text', 'يرجي ارسال التفاصيل', NULL, '2022-11-28 11:42:25', '2022-11-28 11:42:25'),
(773, 100, 100, 11, 'text', 'Uuuuu', NULL, '2022-11-28 11:42:32', '2022-11-28 11:42:32'),
(774, 100, 100, 11, 'text', 'Hhhh', NULL, '2022-11-28 11:42:44', '2022-11-28 11:42:44'),
(775, 100, 100, 11, 'text', 'Ftgjf', NULL, '2022-11-28 11:42:58', '2022-11-28 11:42:58'),
(776, 100, 100, 11, 'text', 'Hrhd', NULL, '2022-11-28 11:43:33', '2022-11-28 11:43:33'),
(777, 100, 100, 11, 'text', 'Jfhjf', NULL, '2022-11-28 11:43:39', '2022-11-28 11:43:39'),
(778, 100, 100, 11, 'text', 'Hudufuf', NULL, '2022-11-28 11:43:43', '2022-11-28 11:43:43'),
(780, 100, 85, 9, 'text', 'Hffbfhf', NULL, '2022-11-28 11:44:12', '2022-11-28 11:44:12'),
(781, 100, 100, 11, 'text', 'Jfjf', NULL, '2022-11-28 11:44:22', '2022-11-28 11:44:22'),
(783, 100, 100, 11, 'text', 'Jxjxi', NULL, '2022-11-28 11:44:43', '2022-11-28 11:44:43'),
(784, 100, 100, 11, 'text', 'Fhjfjf', NULL, '2022-11-28 11:44:54', '2022-11-28 11:44:54'),
(785, 100, 85, 9, 'text', '112345', NULL, '2022-11-28 11:45:01', '2022-11-28 11:45:01'),
(786, 100, 85, 9, 'text', 'Hh', NULL, '2022-11-28 11:47:03', '2022-11-28 11:47:03'),
(787, 116, 100, 11, 'text', 'zzzzzzz', NULL, '2022-11-28 11:48:43', '2022-11-28 11:48:43'),
(788, 116, 100, 11, 'text', 'zzzzzzz', NULL, '2022-11-28 11:49:01', '2022-11-28 11:49:01'),
(789, 100, 100, 11, 'text', 'Pppppppppppppppppp', NULL, '2022-11-28 11:49:38', '2022-11-28 11:49:38'),
(790, 116, 100, 11, 'text', 'zzzzzzz', NULL, '2022-11-28 13:00:11', '2022-11-28 13:00:11'),
(791, 116, 100, 11, 'text', 'zzzzzzz', NULL, '2022-11-28 13:00:22', '2022-11-28 13:00:22'),
(792, 116, 100, 11, 'text', 'zzzzzzz', NULL, '2022-11-28 13:00:32', '2022-11-28 13:00:32'),
(793, 116, 100, 11, 'text', 'vvvvvvvv', NULL, '2022-11-28 13:01:54', '2022-11-28 13:01:54'),
(794, 116, 100, 11, 'text', 'vvvvvvvv', NULL, '2022-11-28 13:02:06', '2022-11-28 13:02:06'),
(795, 100, 100, 11, 'text', 'تتتت', NULL, '2022-11-28 13:03:11', '2022-11-28 13:03:11'),
(796, 100, 100, 11, 'text', 'تتاا', NULL, '2022-11-28 13:03:25', '2022-11-28 13:03:25'),
(797, 100, 100, 11, 'text', 'ف', NULL, '2022-11-28 13:04:02', '2022-11-28 13:04:02'),
(798, 100, 100, 11, 'text', 'تبتب', NULL, '2022-11-28 13:04:11', '2022-11-28 13:04:11'),
(799, 116, 100, 11, 'text', 'vvvvvvvv', NULL, '2022-11-28 13:04:19', '2022-11-28 13:04:19'),
(800, 100, 100, 11, 'text', 'اااغ', NULL, '2022-11-28 13:04:35', '2022-11-28 13:04:35'),
(801, 100, 85, 9, 'text', 'تبلتتت', NULL, '2022-11-28 13:05:42', '2022-11-28 13:05:42'),
(802, 100, 100, 11, 'text', 'ة نىال', NULL, '2022-11-28 13:05:52', '2022-11-28 13:05:52'),
(803, 116, 100, 11, 'text', 'vvvvvvvv', NULL, '2022-11-28 13:11:29', '2022-11-28 13:11:29'),
(804, 116, 100, 11, 'text', 'vvvvvvvv', NULL, '2022-11-28 13:11:40', '2022-11-28 13:11:40'),
(805, 100, 100, 11, 'text', 'والل', NULL, '2022-11-28 13:11:49', '2022-11-28 13:11:49'),
(806, 116, 100, 11, 'text', 'vvvvvvvv', NULL, '2022-11-28 13:12:31', '2022-11-28 13:12:31'),
(807, 116, 100, 11, 'text', 'vvvvvvvv', NULL, '2022-11-28 13:12:40', '2022-11-28 13:12:40'),
(808, 100, 100, 11, 'text', 'نتتت', NULL, '2022-11-28 13:12:52', '2022-11-28 13:12:52'),
(809, 100, 100, 11, 'text', 'الل', NULL, '2022-11-28 13:12:55', '2022-11-28 13:12:55'),
(810, 100, 100, 11, 'text', 'لنات', NULL, '2022-11-28 13:13:00', '2022-11-28 13:13:00'),
(811, 116, 100, 11, 'text', 'vvvvvvvv', NULL, '2022-11-28 13:21:23', '2022-11-28 13:21:23'),
(812, 116, 100, 11, 'text', 'vvvvvvvv', NULL, '2022-11-28 13:21:30', '2022-11-28 13:21:30'),
(813, 100, 100, 11, 'text', 'لتلغ', NULL, '2022-11-28 13:21:37', '2022-11-28 13:21:37'),
(814, 100, 100, 11, 'text', 'نتل', NULL, '2022-11-28 13:21:41', '2022-11-28 13:21:41'),
(815, 116, 100, 11, 'text', 'vvvvvvvv', NULL, '2022-11-28 13:21:47', '2022-11-28 13:21:47'),
(816, 116, 100, 11, 'text', 'vvvvvvvv', NULL, '2022-11-28 13:23:55', '2022-11-28 13:23:55'),
(817, 116, 100, 11, 'text', 'vvvvvvvv', NULL, '2022-11-28 13:24:05', '2022-11-28 13:24:05'),
(818, 116, 100, 11, 'text', 'vvvvvvvv', NULL, '2022-11-28 13:24:28', '2022-11-28 13:24:28'),
(819, 116, 100, 11, 'text', 'vvvvvvvv', NULL, '2022-11-28 13:24:37', '2022-11-28 13:24:37'),
(820, 116, 100, 11, 'text', 'vvvvvvvv', NULL, '2022-11-28 13:25:03', '2022-11-28 13:25:03'),
(821, 116, 100, 11, 'text', 'vvvvvvvv', NULL, '2022-11-28 13:25:26', '2022-11-28 13:25:26'),
(822, 116, 100, 11, 'text', 'vvvvvvvv', NULL, '2022-11-28 13:25:31', '2022-11-28 13:25:31'),
(823, 100, 100, 11, 'text', 'خ', NULL, '2022-11-28 13:25:40', '2022-11-28 13:25:40'),
(824, 100, 100, 11, 'text', 'خ', NULL, '2022-11-28 13:25:43', '2022-11-28 13:25:43'),
(825, 100, 100, 11, 'text', 'خمم', NULL, '2022-11-28 13:25:48', '2022-11-28 13:25:48'),
(826, 116, 100, 11, 'text', 'vvvvvvvv', NULL, '2022-11-28 13:25:53', '2022-11-28 13:25:53'),
(827, 116, 100, 11, 'text', 'vvvvvvvv', NULL, '2022-11-28 13:28:16', '2022-11-28 13:28:16'),
(828, 116, 100, 11, 'text', 'vvvvvvvv', NULL, '2022-11-28 13:28:26', '2022-11-28 13:28:26'),
(829, 100, 100, 11, 'text', 'ججججج', NULL, '2022-11-28 13:28:35', '2022-11-28 13:28:35'),
(830, 100, 100, 11, 'text', 'جججج', NULL, '2022-11-28 13:28:40', '2022-11-28 13:28:40'),
(831, 116, 100, 11, 'text', 'vvvvvvvv', NULL, '2022-11-28 13:29:57', '2022-11-28 13:29:57'),
(832, 116, 100, 11, 'text', 'vvvvvvvv', NULL, '2022-11-28 13:30:02', '2022-11-28 13:30:02'),
(833, 116, 100, 11, 'text', 'vvvvvvvv', NULL, '2022-11-28 13:30:06', '2022-11-28 13:30:06'),
(834, 100, 100, 11, 'text', 'ااه', NULL, '2022-11-28 13:30:09', '2022-11-28 13:30:09'),
(835, 100, 100, 11, 'text', 'انىنى', NULL, '2022-11-28 13:30:11', '2022-11-28 13:30:11'),
(836, 100, 100, 11, 'text', 'عبهب٩', NULL, '2022-11-28 13:30:13', '2022-11-28 13:30:13'),
(837, 116, 100, 11, 'text', 'vvvvvvvv', NULL, '2022-11-28 13:30:16', '2022-11-28 13:30:16'),
(838, 100, 100, 11, 'text', 'غثهله', NULL, '2022-11-28 13:30:21', '2022-11-28 13:30:21'),
(839, 100, 100, 11, 'text', 'تبخلع', NULL, '2022-11-28 13:30:23', '2022-11-28 13:30:23'),
(840, 100, 100, 11, 'text', 'تبعيهله', NULL, '2022-11-28 13:30:24', '2022-11-28 13:30:24'),
(841, 100, 100, 11, 'text', 'بتلهب', NULL, '2022-11-28 13:30:26', '2022-11-28 13:30:26'),
(842, 100, 100, 11, 'text', 'بهلهبه', NULL, '2022-11-28 13:30:27', '2022-11-28 13:30:27'),
(843, 116, 100, 11, 'text', 'vvvvvvvv', NULL, '2022-11-28 13:30:31', '2022-11-28 13:30:31'),
(844, 116, 100, 11, 'text', 'vvvvvvvv', NULL, '2022-11-28 13:30:32', '2022-11-28 13:30:32'),
(845, 116, 100, 11, 'text', 'vvvvvvvv', NULL, '2022-11-28 13:30:34', '2022-11-28 13:30:34'),
(846, 116, 100, 11, 'text', 'vvvvvvvv', NULL, '2022-11-28 13:30:35', '2022-11-28 13:30:35'),
(847, 100, 100, 11, 'text', 'غسعله', NULL, '2022-11-28 13:30:37', '2022-11-28 13:30:37'),
(848, 100, 100, 11, 'text', 'ان رنىهيهل', NULL, '2022-11-28 13:30:45', '2022-11-28 13:30:45'),
(849, 116, 100, 11, 'text', 'vvvvvvvv', NULL, '2022-11-28 13:30:47', '2022-11-28 13:30:47'),
(850, 100, 100, 10, 'text', 'متىىخ', NULL, '2022-11-28 13:31:00', '2022-11-28 13:31:00'),
(851, 100, 100, 10, 'text', 'يا خ اه ج عن', NULL, '2022-11-28 13:31:03', '2022-11-28 13:31:03'),
(852, 116, 100, 11, 'text', 'vvvvvvvv', NULL, '2022-11-28 13:37:13', '2022-11-28 13:37:13'),
(853, 116, 100, 11, 'text', 'vvvvvvvv', NULL, '2022-11-28 13:44:12', '2022-11-28 13:44:12'),
(854, 116, 100, 11, 'text', 'vvvvvvvv', NULL, '2022-11-28 13:44:21', '2022-11-28 13:44:21'),
(855, 116, 100, 11, 'text', 'vvvvvvvv', NULL, '2022-11-28 13:44:30', '2022-11-28 13:44:30'),
(856, 116, 100, 11, 'text', 'vvvvvvvv', NULL, '2022-11-28 13:44:58', '2022-11-28 13:44:58'),
(857, 116, 100, 11, 'text', 'vvvvvvvv', NULL, '2022-11-28 13:59:38', '2022-11-28 13:59:38'),
(858, 116, 100, 11, 'text', 'vvvvvvvv', NULL, '2022-11-28 13:59:49', '2022-11-28 13:59:49'),
(859, 116, 100, 11, 'text', 'vvvvvvvv', NULL, '2022-11-28 14:00:02', '2022-11-28 14:00:02'),
(860, 116, 100, 11, 'text', 'vvvvvvvv', NULL, '2022-11-28 14:01:15', '2022-11-28 14:01:15'),
(861, 116, 100, 11, 'text', 'vvvvvvvv', NULL, '2022-11-28 14:01:36', '2022-11-28 14:01:36'),
(862, 116, 100, 11, 'text', 'vvvvvvvv', NULL, '2022-11-28 14:01:39', '2022-11-28 14:01:39'),
(863, 116, 100, 11, 'text', 'vvvvvvvv', NULL, '2022-11-28 14:01:40', '2022-11-28 14:01:40'),
(864, 116, 100, 11, 'text', '11111111111111', NULL, '2022-11-28 14:02:30', '2022-11-28 14:02:30'),
(865, 116, 100, 11, 'text', '222222222222', NULL, '2022-11-28 14:02:42', '2022-11-28 14:02:42'),
(866, 116, 100, 11, 'text', '222222222222', NULL, '2022-11-28 14:02:53', '2022-11-28 14:02:53'),
(867, 116, 100, 11, 'text', '222222222222', NULL, '2022-11-28 14:03:10', '2022-11-28 14:03:10'),
(868, 116, 100, 11, 'text', '222222222222', NULL, '2022-11-28 14:03:24', '2022-11-28 14:03:24'),
(869, 116, 100, 11, 'text', '222222222222', NULL, '2022-11-28 15:51:11', '2022-11-28 15:51:11'),
(870, 116, 100, 11, 'text', '222222222222', NULL, '2022-11-28 15:51:56', '2022-11-28 15:51:56'),
(871, 116, 100, 11, 'text', '222222222222', NULL, '2022-11-28 15:52:17', '2022-11-28 15:52:17'),
(872, 116, 100, 11, 'text', '222222222222', NULL, '2022-11-28 15:52:56', '2022-11-28 15:52:56'),
(873, 116, 100, 11, 'text', '222222222222', NULL, '2022-11-28 15:53:20', '2022-11-28 15:53:20'),
(874, 116, 100, 11, 'text', '222222222222', NULL, '2022-11-28 16:15:02', '2022-11-28 16:15:02'),
(875, 116, 100, 11, 'text', '222222222222', NULL, '2022-11-28 16:15:18', '2022-11-28 16:15:18'),
(876, 116, 100, 11, 'text', '222222222222', NULL, '2022-11-28 16:16:05', '2022-11-28 16:16:05'),
(877, 116, 100, 11, 'text', '222222222222', NULL, '2022-11-28 16:16:19', '2022-11-28 16:16:19'),
(878, 116, 100, 11, 'text', '222222222222', NULL, '2022-11-28 16:18:13', '2022-11-28 16:18:13'),
(879, 116, 100, 11, 'text', '222222222222', NULL, '2022-11-29 11:16:16', '2022-11-29 11:16:16'),
(880, 116, 100, 11, 'text', '222222222222', NULL, '2022-11-29 11:16:35', '2022-11-29 11:16:35'),
(881, 116, 100, 11, 'text', '222222222222', NULL, '2022-11-29 11:16:54', '2022-11-29 11:16:54'),
(882, 116, 100, 11, 'text', '222222222222', NULL, '2022-11-29 14:20:56', '2022-11-29 14:20:56'),
(883, 116, 100, 11, 'text', '222222222222', NULL, '2022-11-29 14:22:11', '2022-11-29 14:22:11'),
(884, 100, 100, 11, 'text', 'ااا', NULL, '2022-11-30 08:50:32', '2022-11-30 08:50:32'),
(885, 116, 100, 11, 'text', 'Uu', NULL, '2022-11-30 08:50:35', '2022-11-30 08:50:35'),
(886, 100, 100, 11, 'text', 'يبب', NULL, '2022-11-30 08:50:46', '2022-11-30 08:50:46'),
(887, 116, 100, 11, 'text', 'Dfi', NULL, '2022-11-30 08:51:09', '2022-11-30 08:51:09'),
(888, 116, 100, 11, 'text', 'Ivogog', NULL, '2022-11-30 08:51:47', '2022-11-30 08:51:47'),
(889, 116, 100, 11, 'text', 'Jci', NULL, '2022-11-30 08:52:40', '2022-11-30 08:52:40'),
(890, 100, 100, 11, 'text', '٨خ', NULL, '2022-11-30 08:52:50', '2022-11-30 08:52:50'),
(891, 116, 100, 11, 'text', 'Gcig', NULL, '2022-11-30 08:53:02', '2022-11-30 08:53:02'),
(892, 100, 100, 11, 'text', 'للبب', NULL, '2022-11-30 08:53:12', '2022-11-30 08:53:12'),
(893, 116, 100, 11, 'text', 'Hff', NULL, '2022-11-30 08:53:33', '2022-11-30 08:53:33'),
(894, 100, 100, 11, 'text', 'ععععع', NULL, '2022-11-30 08:53:40', '2022-11-30 08:53:40'),
(895, 100, 100, 11, 'text', 'ععههه', NULL, '2022-11-30 08:54:18', '2022-11-30 08:54:18'),
(896, 116, 100, 11, 'text', 'Gggh', NULL, '2022-11-30 08:54:25', '2022-11-30 08:54:25'),
(897, 100, 100, 11, 'text', 'عهخخخ', NULL, '2022-11-30 08:54:32', '2022-11-30 08:54:32'),
(898, 116, 100, 11, 'text', 'H uv', NULL, '2022-11-30 08:55:21', '2022-11-30 08:55:21'),
(899, 116, 100, 11, 'text', 'Fugi', NULL, '2022-11-30 08:55:41', '2022-11-30 08:55:41'),
(900, 100, 100, 11, 'text', 'ععهع', NULL, '2022-11-30 08:55:54', '2022-11-30 08:55:54'),
(901, 100, 100, 11, 'text', 'قفف', NULL, '2022-11-30 08:56:19', '2022-11-30 08:56:19'),
(902, 116, 100, 11, 'text', 'Ufud6', NULL, '2022-11-30 08:56:30', '2022-11-30 08:56:30'),
(903, 100, 100, 11, 'text', 'ففففف', NULL, '2022-11-30 08:56:43', '2022-11-30 08:56:43'),
(904, 100, 100, 11, 'text', 'دلاق', NULL, '2022-11-30 08:59:03', '2022-11-30 08:59:03'),
(905, 116, 100, 11, 'text', 'Yffhj', NULL, '2022-11-30 08:59:48', '2022-11-30 08:59:48'),
(906, 100, 100, 11, 'text', 'زدات', NULL, '2022-11-30 09:00:04', '2022-11-30 09:00:04'),
(907, 116, 100, 11, 'text', 'Hfd', NULL, '2022-11-30 09:00:15', '2022-11-30 09:00:15'),
(908, 116, 100, 11, 'text', 'Hd', NULL, '2022-11-30 09:00:48', '2022-11-30 09:00:48'),
(909, 100, 100, 11, 'text', 'نات', NULL, '2022-11-30 09:01:01', '2022-11-30 09:01:01'),
(910, 116, 100, 11, 'text', 'Ffufu', NULL, '2022-11-30 09:01:24', '2022-11-30 09:01:24'),
(911, 116, 100, 11, 'text', 'Ggg', NULL, '2022-11-30 09:01:37', '2022-11-30 09:01:37'),
(912, 116, 100, 11, 'text', 'ةةى', NULL, '2022-11-30 09:06:09', '2022-11-30 09:06:09'),
(913, 100, 100, 11, 'text', 'تععع', NULL, '2022-11-30 09:08:12', '2022-11-30 09:08:12'),
(914, 100, 100, 11, 'text', 'خخقخ٤خ', NULL, '2022-11-30 09:21:58', '2022-11-30 09:21:58'),
(915, 100, 116, 11, 'text', '222222222222', NULL, '2022-11-30 09:49:46', '2022-11-30 09:49:46'),
(916, 100, 116, 11, 'text', '222222222222', NULL, '2022-11-30 09:50:05', '2022-11-30 09:50:05'),
(917, 116, 100, 11, 'text', 'Hxhbx', NULL, '2022-11-30 09:50:23', '2022-11-30 09:50:23'),
(918, 100, 100, 11, 'text', 'اااتت', NULL, '2022-11-30 09:50:43', '2022-11-30 09:50:43'),
(919, 100, 116, 11, 'text', '222222222222', NULL, '2022-11-30 09:50:51', '2022-11-30 09:50:51'),
(920, 116, 100, 11, 'text', 'Hhhfjf', NULL, '2022-11-30 09:51:31', '2022-11-30 09:51:31'),
(921, 116, 100, 11, 'text', 'Hhh', NULL, '2022-11-30 09:54:25', '2022-11-30 09:54:25'),
(922, 100, 100, 11, 'text', 'مبننلل', NULL, '2022-11-30 09:54:59', '2022-11-30 09:54:59'),
(923, 100, 100, 11, 'text', 'للغغ', NULL, '2022-11-30 09:55:06', '2022-11-30 09:55:06'),
(924, 100, 100, 11, 'text', 'صصصص', NULL, '2022-11-30 09:55:55', '2022-11-30 09:55:55'),
(925, 100, 100, 11, 'text', 'تتع', NULL, '2022-11-30 10:11:03', '2022-11-30 10:11:03'),
(926, 100, 100, 11, 'text', 'بلل', NULL, '2022-11-30 10:11:16', '2022-11-30 10:11:16'),
(927, 100, 116, 11, 'text', '222222222222', NULL, '2022-11-30 10:11:25', '2022-11-30 10:11:25'),
(928, 116, 100, 11, 'text', 'Jdjfi', NULL, '2022-11-30 10:12:18', '2022-11-30 10:12:18'),
(929, 116, 100, 11, 'text', 'Fff', NULL, '2022-11-30 10:12:33', '2022-11-30 10:12:33'),
(930, 100, 116, 11, 'text', '222222222222', NULL, '2022-11-30 10:27:12', '2022-11-30 10:27:12'),
(931, 116, 100, 11, 'text', 'Vvv', NULL, '2022-11-30 10:30:51', '2022-11-30 10:30:51'),
(932, 100, 100, 11, 'text', 'وتلات', NULL, '2022-11-30 10:31:06', '2022-11-30 10:31:06'),
(933, 100, 100, 11, 'text', 'نااعع', NULL, '2022-11-30 10:31:15', '2022-11-30 10:31:15'),
(934, 116, 100, 11, 'text', 'Fhfjfi', NULL, '2022-11-30 10:31:22', '2022-11-30 10:31:22'),
(935, 116, 100, 11, 'text', 'Fig', NULL, '2022-11-30 10:31:55', '2022-11-30 10:31:55'),
(936, 116, 100, 11, 'text', 'Ifu', NULL, '2022-11-30 10:32:10', '2022-11-30 10:32:10'),
(937, 100, 100, 11, 'text', 'عععن', NULL, '2022-11-30 10:32:18', '2022-11-30 10:32:18'),
(938, 116, 100, 11, 'text', 'Ugo', NULL, '2022-11-30 10:32:24', '2022-11-30 10:32:24'),
(939, 100, 116, 11, 'text', '222222222222', NULL, '2022-11-30 10:32:58', '2022-11-30 10:32:58'),
(940, 100, 116, 11, 'text', '222222222222', NULL, '2022-11-30 10:36:05', '2022-11-30 10:36:05'),
(941, 100, 116, 11, 'text', '222222222222', NULL, '2022-11-30 10:36:22', '2022-11-30 10:36:22'),
(942, 100, 100, 11, 'text', 'لاتااتف', NULL, '2022-11-30 10:36:31', '2022-11-30 10:36:31'),
(943, 116, 100, 11, 'text', 'Guv', NULL, '2022-11-30 10:42:45', '2022-11-30 10:42:45'),
(944, 116, 100, 11, 'text', 'Hhh', NULL, '2022-11-30 10:45:21', '2022-11-30 10:45:21'),
(945, 116, 100, 11, 'text', 'Guf', NULL, '2022-11-30 10:46:12', '2022-11-30 10:46:12'),
(946, 116, 100, 11, 'text', 'Ufu', NULL, '2022-11-30 10:46:19', '2022-11-30 10:46:19'),
(947, 116, 100, 11, 'text', 'Fuf', NULL, '2022-11-30 10:46:34', '2022-11-30 10:46:34'),
(948, 100, 100, 11, 'text', 'تبتبتين', NULL, '2022-11-30 10:46:43', '2022-11-30 10:46:43'),
(949, 116, 100, 11, 'text', 'Fgjg', NULL, '2022-11-30 10:47:02', '2022-11-30 10:47:02'),
(950, 100, 100, 11, 'text', 'ززبل', NULL, '2022-11-30 10:47:08', '2022-11-30 10:47:08'),
(951, 100, 100, 11, 'text', 'تال', NULL, '2022-11-30 10:47:18', '2022-11-30 10:47:18'),
(952, 116, 100, 11, 'text', 'Jxj', NULL, '2022-11-30 10:47:34', '2022-11-30 10:47:34'),
(953, 100, 100, 11, 'text', 'امق', NULL, '2022-11-30 10:51:32', '2022-11-30 10:51:32'),
(954, 116, 100, 11, 'text', 'Tut', NULL, '2022-11-30 10:51:52', '2022-11-30 10:51:52'),
(955, 100, 100, 11, 'text', 'قعق', NULL, '2022-11-30 10:51:57', '2022-11-30 10:51:57'),
(956, 116, 100, 11, 'text', 'Ifk', NULL, '2022-11-30 10:52:06', '2022-11-30 10:52:06'),
(957, 116, 100, 11, 'text', 'Rig', NULL, '2022-11-30 10:52:15', '2022-11-30 10:52:15'),
(958, 100, 100, 11, 'text', 'نبنبن', NULL, '2022-11-30 10:52:34', '2022-11-30 10:52:34'),
(959, 116, 100, 11, 'text', 'Jdyff', NULL, '2022-11-30 10:52:39', '2022-11-30 10:52:39'),
(960, 116, 100, 11, 'text', 'Jfjdi', NULL, '2022-11-30 10:52:46', '2022-11-30 10:52:46'),
(961, 116, 100, 11, 'text', 'Igogi', NULL, '2022-11-30 10:52:51', '2022-11-30 10:52:51'),
(962, 100, 100, 11, 'text', 'زخدخ', NULL, '2022-11-30 10:52:56', '2022-11-30 10:52:56'),
(963, 116, 100, 11, 'text', 'Oo', NULL, '2022-11-30 10:54:17', '2022-11-30 10:54:17'),
(964, 116, 100, 11, 'text', 'Tyu', NULL, '2022-11-30 10:54:31', '2022-11-30 10:54:31'),
(965, 116, 100, 11, 'text', 'Cucu', NULL, '2022-11-30 10:55:24', '2022-11-30 10:55:24'),
(966, 116, 100, 11, 'text', 'Ycu', NULL, '2022-11-30 10:55:39', '2022-11-30 10:55:39'),
(967, 116, 100, 11, 'text', 'Fhfg', NULL, '2022-11-30 10:55:47', '2022-11-30 10:55:47'),
(968, 100, 100, 11, 'text', 'Dfgh', NULL, '2022-11-30 10:55:53', '2022-11-30 10:55:53'),
(969, 100, 100, 11, 'text', 'Cvgg', NULL, '2022-11-30 10:56:05', '2022-11-30 10:56:05'),
(970, 116, 100, 11, 'text', 'Jjxjc', NULL, '2022-11-30 10:56:15', '2022-11-30 10:56:15'),
(971, 100, 100, 11, 'text', 'الخ', NULL, '2022-11-30 10:58:06', '2022-11-30 10:58:06'),
(972, 116, 100, 11, 'text', 'Hdjg', NULL, '2022-11-30 11:00:24', '2022-11-30 11:00:24'),
(973, 100, 100, 11, 'text', 'انع', NULL, '2022-11-30 11:00:29', '2022-11-30 11:00:29'),
(974, 100, 116, 11, 'text', '222222222222', NULL, '2022-11-30 15:36:27', '2022-11-30 15:36:27'),
(975, 100, 116, 11, 'text', '222222222222', NULL, '2022-11-30 15:36:51', '2022-11-30 15:36:51'),
(976, 116, 100, 11, 'text', 'Ooo', NULL, '2022-12-01 13:28:14', '2022-12-01 13:28:14'),
(977, 116, 100, 11, 'text', 'Hhg', NULL, '2022-12-01 13:28:26', '2022-12-01 13:28:26'),
(978, 100, 100, 11, 'text', 'Hfgj', NULL, '2022-12-01 13:28:33', '2022-12-01 13:28:33'),
(979, 100, 100, 11, 'text', 'Hff', NULL, '2022-12-01 13:28:41', '2022-12-01 13:28:41'),
(980, 100, 100, 11, 'text', 'Yyy', NULL, '2022-12-01 13:29:52', '2022-12-01 13:29:52'),
(981, 100, 116, 11, 'text', '222222222222', NULL, '2022-12-01 13:31:05', '2022-12-01 13:31:05'),
(982, 100, 100, 11, 'text', 'Kk', NULL, '2022-12-01 13:31:17', '2022-12-01 13:31:17'),
(983, 116, 100, 11, 'text', 'Ppp', NULL, '2022-12-01 13:31:52', '2022-12-01 13:31:52'),
(984, 100, 100, 11, 'text', 'Hhh', NULL, '2022-12-01 13:31:57', '2022-12-01 13:31:57'),
(985, 100, 116, 11, 'text', '222222222222', NULL, '2022-12-01 13:32:04', '2022-12-01 13:32:04'),
(986, 116, 100, 11, 'text', 'Pp', NULL, '2022-12-01 13:34:28', '2022-12-01 13:34:28'),
(987, 100, 100, 11, 'text', 'Fff', NULL, '2022-12-01 13:34:37', '2022-12-01 13:34:37'),
(988, 116, 100, 11, 'text', 'Ppp', NULL, '2022-12-01 13:34:42', '2022-12-01 13:34:42'),
(990, 116, 100, 11, 'text', '6yuu', NULL, '2022-12-01 13:36:38', '2022-12-01 13:36:38'),
(991, 116, 100, 11, 'text', 'Uuii', NULL, '2022-12-01 13:36:48', '2022-12-01 13:36:48'),
(995, 116, 100, 11, 'text', '6666', NULL, '2022-12-01 13:37:09', '2022-12-01 13:37:09'),
(996, 116, 100, 11, 'text', '666', NULL, '2022-12-01 13:37:13', '2022-12-01 13:37:13'),
(998, 116, 100, 11, 'text', 'Uuuuu', NULL, '2022-12-01 13:37:35', '2022-12-01 13:37:35'),
(999, 116, 100, 11, 'text', 'Pp', NULL, '2022-12-01 13:42:39', '2022-12-01 13:42:39'),
(1000, 100, 100, 11, 'text', 'Ccc', NULL, '2022-12-01 13:42:44', '2022-12-01 13:42:44'),
(1001, 116, 100, 11, 'text', 'Ooo', NULL, '2022-12-01 13:42:58', '2022-12-01 13:42:58'),
(1002, 100, 100, 11, 'text', '0000', NULL, '2022-12-01 13:43:02', '2022-12-01 13:43:02'),
(1004, 100, 100, 11, 'text', 'Huu', NULL, '2022-12-01 13:46:01', '2022-12-01 13:46:01'),
(1005, 100, 100, 11, 'text', 'Ftyy', NULL, '2022-12-01 13:46:08', '2022-12-01 13:46:08'),
(1006, 100, 100, 11, 'text', 'Ggh', NULL, '2022-12-01 13:46:40', '2022-12-01 13:46:40'),
(1008, 100, 100, 11, 'text', 'Bvvb', NULL, '2022-12-01 13:47:07', '2022-12-01 13:47:07'),
(1009, 100, 116, 11, 'text', '222222222222', NULL, '2022-12-01 13:47:25', '2022-12-01 13:47:25'),
(1010, 100, 100, 11, 'text', 'Ygf', NULL, '2022-12-01 13:49:43', '2022-12-01 13:49:43'),
(1011, 116, 100, 11, 'text', 'Tyyyy', NULL, '2022-12-01 13:49:53', '2022-12-01 13:49:53'),
(1014, 116, 100, 11, 'text', 'Tttt', NULL, '2022-12-01 13:52:19', '2022-12-01 13:52:19'),
(1015, 100, 116, 11, 'text', '222222222222', NULL, '2022-12-01 13:52:21', '2022-12-01 13:52:21'),
(1016, 100, 116, 11, 'text', '222222222222', NULL, '2022-12-01 13:53:03', '2022-12-01 13:53:03'),
(1017, 100, 100, 11, 'text', 'Hhhh', NULL, '2022-12-01 13:53:15', '2022-12-01 13:53:15'),
(1021, 100, 100, 11, 'text', 'Hhgf', NULL, '2022-12-01 15:35:43', '2022-12-01 15:35:43'),
(1022, 100, 100, 11, 'text', 'Jhfd', NULL, '2022-12-01 15:35:56', '2022-12-01 15:35:56'),
(1024, 100, 100, 11, 'text', 'Hhhh', NULL, '2022-12-01 15:37:33', '2022-12-01 15:37:33'),
(1042, 100, 100, 11, 'text', 'االى', NULL, '2022-12-01 16:10:07', '2022-12-01 16:10:07'),
(1043, 100, 100, 11, 'text', 'Bccf', NULL, '2022-12-01 16:10:14', '2022-12-01 16:10:14'),
(1044, 100, 100, 11, 'text', 'اااا', NULL, '2022-12-01 16:10:20', '2022-12-01 16:10:20'),
(1045, 100, 100, 11, 'text', 'تالع', NULL, '2022-12-01 16:11:39', '2022-12-01 16:11:39'),
(1046, 100, 100, 11, 'text', 'Hhh', NULL, '2022-12-01 16:11:53', '2022-12-01 16:11:53'),
(1047, 100, 100, 11, 'text', 'Uuuu', NULL, '2022-12-01 16:11:59', '2022-12-01 16:11:59'),
(1048, 100, 100, 11, 'text', 'Tttt', NULL, '2022-12-01 16:12:05', '2022-12-01 16:12:05'),
(1049, 100, 100, 11, 'text', 'اتتت', NULL, '2022-12-01 16:12:11', '2022-12-01 16:12:11'),
(1050, 100, 100, 11, 'text', 'ججج', NULL, '2022-12-04 08:49:59', '2022-12-04 08:49:59'),
(1051, 116, 100, 11, 'text', 'غغغ', NULL, '2022-12-04 08:50:23', '2022-12-04 08:50:23'),
(1052, 116, 100, 11, 'text', 'للف', NULL, '2022-12-04 08:50:30', '2022-12-04 08:50:30'),
(1053, 116, 100, 14, 'text', 'Oo', NULL, '2022-12-04 08:53:09', '2022-12-04 08:53:09'),
(1054, 8, 100, 14, 'text', '66', NULL, '2022-12-04 08:54:37', '2022-12-04 08:54:37'),
(1055, 100, 100, 14, 'text', 'جج', NULL, '2022-12-04 08:54:53', '2022-12-04 08:54:53'),
(1056, 100, 100, 14, 'text', 'ججج', NULL, '2022-12-04 08:55:09', '2022-12-04 08:55:09'),
(1057, 8, 100, 14, 'text', 'Fgg', NULL, '2022-12-04 08:55:15', '2022-12-04 08:55:15'),
(1058, 100, 100, 14, 'text', '888', NULL, '2022-12-04 08:57:49', '2022-12-04 08:57:49'),
(1059, 8, 100, 14, 'text', 'خخخ', NULL, '2022-12-04 08:58:41', '2022-12-04 08:58:41'),
(1060, 8, 100, 14, 'text', 'خهه', NULL, '2022-12-04 08:58:49', '2022-12-04 08:58:49'),
(1061, 100, 100, 14, 'text', 'Hhh', NULL, '2022-12-04 08:58:56', '2022-12-04 08:58:56'),
(1062, 100, 100, 11, 'text', 'Ttt', NULL, '2022-12-04 14:19:44', '2022-12-04 14:19:44'),
(1063, 116, 100, 11, 'text', 'Qq', NULL, '2022-12-04 14:19:57', '2022-12-04 14:19:57'),
(1064, 100, 100, 11, 'text', '000', NULL, '2022-12-04 14:20:06', '2022-12-04 14:20:06'),
(1065, 116, 100, 11, 'text', 'Kkk', NULL, '2022-12-04 14:21:01', '2022-12-04 14:21:01'),
(1066, 100, 100, 11, 'text', 'Qq', NULL, '2022-12-04 14:21:08', '2022-12-04 14:21:08'),
(1067, 116, 100, 11, 'text', 'Uuu', NULL, '2022-12-04 14:21:12', '2022-12-04 14:21:12'),
(1068, 116, 100, 11, 'text', 'Ppp', NULL, '2022-12-04 14:21:46', '2022-12-04 14:21:46'),
(1069, 100, 100, 11, 'text', '555', NULL, '2022-12-04 14:21:52', '2022-12-04 14:21:52'),
(1070, 116, 100, 11, 'text', 'Uuh', NULL, '2022-12-04 14:22:05', '2022-12-04 14:22:05'),
(1071, 100, 100, 11, 'text', 'Jfjfj', NULL, '2022-12-04 14:22:48', '2022-12-04 14:22:48'),
(1072, 100, 100, 11, 'text', 'Ppp', NULL, '2022-12-04 14:23:54', '2022-12-04 14:23:54'),
(1073, 116, 100, 11, 'text', 'Iiii', NULL, '2022-12-04 14:24:02', '2022-12-04 14:24:02'),
(1074, 100, 100, 11, 'text', 'Yyyyyyyy', NULL, '2022-12-04 14:24:23', '2022-12-04 14:24:23'),
(1075, 119, 100, 15, 'text', 'Hello', NULL, '2022-12-04 14:35:28', '2022-12-04 14:35:28'),
(1076, 100, 100, 15, 'text', 'Ccc', NULL, '2022-12-04 14:35:39', '2022-12-04 14:35:39'),
(1077, 100, 119, 15, 'text', '222222222222', NULL, '2022-12-04 14:37:09', '2022-12-04 14:37:09'),
(1078, 100, 119, 15, 'text', '222222222222', NULL, '2022-12-04 14:37:22', '2022-12-04 14:37:22'),
(1079, 100, 119, 15, 'text', 'hhhh111000', NULL, '2022-12-04 14:37:36', '2022-12-04 14:37:36'),
(1080, 100, 119, 15, 'text', 'hhhh111000', NULL, '2022-12-04 14:45:20', '2022-12-04 14:45:20'),
(1081, 100, 100, 15, 'text', 'Ggf', NULL, '2022-12-04 14:45:35', '2022-12-04 14:45:35'),
(1082, 100, 100, 15, 'text', 'Cfgy', NULL, '2022-12-04 14:45:47', '2022-12-04 14:45:47'),
(1083, 119, 100, 15, 'text', 'Uyfg', NULL, '2022-12-04 14:47:00', '2022-12-04 14:47:00'),
(1084, 100, 100, 15, 'text', 'Hffg', NULL, '2022-12-04 14:47:03', '2022-12-04 14:47:03'),
(1085, 100, 100, 15, 'text', 'Oo', NULL, '2022-12-04 14:51:45', '2022-12-04 14:51:45'),
(1086, 119, 100, 15, 'text', 'Pp', NULL, '2022-12-04 14:52:06', '2022-12-04 14:52:06'),
(1087, 100, 100, 15, 'text', 'Jjj', NULL, '2022-12-04 14:52:10', '2022-12-04 14:52:10'),
(1088, 100, 119, 15, 'text', 'hhhh111000', NULL, '2022-12-04 14:52:19', '2022-12-04 14:52:19'),
(1089, 119, 100, 15, 'text', 'Ggyh', NULL, '2022-12-04 14:52:45', '2022-12-04 14:52:45'),
(1090, 100, 100, 15, 'text', 'Vvcdd', NULL, '2022-12-04 14:52:50', '2022-12-04 14:52:50'),
(1091, 100, 119, 15, 'text', 'hhhh111000', NULL, '2022-12-04 14:52:57', '2022-12-04 14:52:57'),
(1092, 120, 100, 16, 'text', 'Yyuu66', NULL, '2022-12-04 14:56:38', '2022-12-04 14:56:38'),
(1093, 100, 100, 16, 'text', 'Pp', NULL, '2022-12-04 14:56:46', '2022-12-04 14:56:46'),
(1094, 100, 100, 16, 'text', 'Uhh', NULL, '2022-12-04 14:56:57', '2022-12-04 14:56:57'),
(1095, 100, 100, 16, 'text', 'Hff', NULL, '2022-12-04 14:57:14', '2022-12-04 14:57:14'),
(1096, 120, 100, 16, 'text', 'Jjh', NULL, '2022-12-04 14:57:18', '2022-12-04 14:57:18'),
(1097, 100, 120, 15, 'text', 'hhhh111000', NULL, '2022-12-04 15:00:02', '2022-12-04 15:00:02'),
(1098, 100, 120, 15, 'text', 'hhhh111000', NULL, '2022-12-04 15:00:07', '2022-12-04 15:00:07'),
(1099, 119, 120, 17, 'text', 'hhhh111000', NULL, '2022-12-04 15:01:17', '2022-12-04 15:01:17'),
(1100, 119, 120, 17, 'text', 'hhhh111000', NULL, '2022-12-04 15:01:35', '2022-12-04 15:01:35'),
(1101, 120, 100, 16, 'text', '00', NULL, '2022-12-04 15:11:31', '2022-12-04 15:11:31'),
(1102, 100, 100, 16, 'text', 'Uu', NULL, '2022-12-04 15:11:37', '2022-12-04 15:11:37'),
(1103, 100, 100, 16, 'text', 'Pp', NULL, '2022-12-04 15:12:06', '2022-12-04 15:12:06'),
(1104, 120, 100, 16, 'text', 'Ll', NULL, '2022-12-04 15:12:14', '2022-12-04 15:12:14'),
(1105, 120, 100, 16, 'text', 'Ffrt', NULL, '2022-12-04 15:13:59', '2022-12-04 15:13:59'),
(1106, 100, 100, 16, 'text', '1111', NULL, '2022-12-04 15:14:04', '2022-12-04 15:14:04'),
(1107, 120, 120, 17, 'text', 'Ppp', NULL, '2022-12-04 15:14:46', '2022-12-04 15:14:46'),
(1108, 119, 120, 17, 'text', 'Ff', NULL, '2022-12-04 15:14:53', '2022-12-04 15:14:53'),
(1109, 119, 120, 17, 'text', 'Gghhte', NULL, '2022-12-04 15:15:01', '2022-12-04 15:15:01'),
(1110, 120, 120, 17, 'text', '0000', NULL, '2022-12-04 15:15:06', '2022-12-04 15:15:06'),
(1111, 119, 120, 17, 'text', 'Bivycyc8h000000', NULL, '2022-12-04 15:15:19', '2022-12-04 15:15:19'),
(1112, 120, 120, 17, 'text', 'Llllll', NULL, '2022-12-04 15:15:27', '2022-12-04 15:15:27'),
(1113, 120, 120, 17, 'text', 'Jjjjj', NULL, '2022-12-04 15:15:42', '2022-12-04 15:15:42'),
(1114, 119, 120, 17, 'text', '7777', NULL, '2022-12-04 15:15:48', '2022-12-04 15:15:48'),
(1115, 119, 120, 17, 'text', 'Ppp', NULL, '2022-12-04 15:18:57', '2022-12-04 15:18:57'),
(1116, 119, 120, 17, 'text', 'Ppp', NULL, '2022-12-04 15:19:05', '2022-12-04 15:19:05'),
(1117, 119, 120, 17, 'text', 'Ibivibi', NULL, '2022-12-04 15:19:09', '2022-12-04 15:19:09'),
(1118, 120, 120, 17, 'text', 'Shxhxj', NULL, '2022-12-04 15:19:12', '2022-12-04 15:19:12'),
(1119, 116, 120, 18, 'text', '0p0p0p', NULL, '2022-12-04 15:21:18', '2022-12-04 15:21:18'),
(1120, 116, 120, 18, 'text', 'Ppp', NULL, '2022-12-04 15:21:55', '2022-12-04 15:21:55'),
(1121, 120, 120, 18, 'text', 'Yy', NULL, '2022-12-04 15:22:03', '2022-12-04 15:22:03'),
(1122, 116, 120, 18, 'text', '999', NULL, '2022-12-04 15:22:07', '2022-12-04 15:22:07'),
(1123, 116, 120, 18, 'text', 'Yyxgxh', NULL, '2022-12-04 15:22:17', '2022-12-04 15:22:17'),
(1124, 116, 120, 18, 'text', 'Ooo', NULL, '2022-12-04 15:22:50', '2022-12-04 15:22:50'),
(1125, 120, 120, 18, 'text', 'Hhgg', NULL, '2022-12-04 15:22:53', '2022-12-04 15:22:53'),
(1126, 120, 120, 18, 'text', 'Ggg', NULL, '2022-12-04 15:22:58', '2022-12-04 15:22:58'),
(1127, 116, 120, 18, 'text', 'Ll', NULL, '2022-12-04 15:23:02', '2022-12-04 15:23:02'),
(1128, 120, 120, 18, 'text', 'Hhh', NULL, '2022-12-04 15:23:06', '2022-12-04 15:23:06'),
(1129, 120, 120, 18, 'text', '99', NULL, '2022-12-04 15:23:33', '2022-12-04 15:23:33'),
(1130, 116, 120, 18, 'text', 'Rr', NULL, '2022-12-04 15:23:38', '2022-12-04 15:23:38'),
(1131, 120, 100, 16, 'text', '778778', NULL, '2022-12-04 15:24:25', '2022-12-04 15:24:25'),
(1132, 116, 100, 16, 'text', 'Ppp', NULL, '2022-12-04 15:24:31', '2022-12-04 15:24:31'),
(1133, 120, 100, 16, 'text', 'Hgfr', NULL, '2022-12-04 15:24:34', '2022-12-04 15:24:34'),
(1134, 116, 100, 16, 'text', 'Yytr', NULL, '2022-12-04 15:24:39', '2022-12-04 15:24:39'),
(1135, 100, 100, 16, 'text', 'Ppp', NULL, '2022-12-04 15:24:50', '2022-12-04 15:24:50'),
(1136, 120, 100, 16, 'text', 'Jchx', NULL, '2022-12-04 15:24:53', '2022-12-04 15:24:53'),
(1137, 100, 100, 16, 'text', 'Kk', NULL, '2022-12-04 15:25:48', '2022-12-04 15:25:48'),
(1138, 120, 100, 16, 'text', 'Pp', NULL, '2022-12-04 15:25:53', '2022-12-04 15:25:53'),
(1139, 100, 100, 16, 'text', 'Ggff', NULL, '2022-12-04 15:39:19', '2022-12-04 15:39:19'),
(1140, 120, 100, 16, 'text', 'Gjzugos', NULL, '2022-12-04 15:39:33', '2022-12-04 15:39:33'),
(1141, 120, 100, 16, 'text', 'Jvkcy', NULL, '2022-12-04 15:39:38', '2022-12-04 15:39:38'),
(1142, 120, 100, 16, 'text', 'Sydufj', NULL, '2022-12-04 15:39:43', '2022-12-04 15:39:43'),
(1143, 100, 100, 16, 'text', 'Hhhhhh', NULL, '2022-12-04 15:40:06', '2022-12-04 15:40:06'),
(1144, 100, 100, 16, 'text', 'Gxdtgs', NULL, '2022-12-04 15:40:49', '2022-12-04 15:40:49'),
(1145, 121, 100, 19, 'text', 'Uu', NULL, '2022-12-04 15:56:21', '2022-12-04 15:56:21'),
(1146, 100, 100, 19, 'text', 'Yy', NULL, '2022-12-04 15:56:32', '2022-12-04 15:56:32');
INSERT INTO `room_messages` (`id`, `from_user_id`, `to_user_id`, `room_id`, `type`, `message`, `file`, `created_at`, `updated_at`) VALUES
(1147, 100, 100, 19, 'text', '000', NULL, '2022-12-04 15:56:41', '2022-12-04 15:56:41'),
(1148, 100, 100, 19, 'text', 'Rr', NULL, '2022-12-04 15:56:50', '2022-12-04 15:56:50'),
(1149, 100, 100, 19, 'text', 'Bb', NULL, '2022-12-04 15:57:22', '2022-12-04 15:57:22'),
(1150, 121, 100, 19, 'text', 'Frt', NULL, '2022-12-04 15:57:27', '2022-12-04 15:57:27'),
(1151, 100, 100, 19, 'text', 'Ffdd', NULL, '2022-12-04 15:57:34', '2022-12-04 15:57:34'),
(1152, 100, 100, 19, 'text', 'Ydsd', NULL, '2022-12-04 15:57:41', '2022-12-04 15:57:41'),
(1153, 100, 100, 19, 'text', 'Hathd', NULL, '2022-12-04 15:57:47', '2022-12-04 15:57:47'),
(1154, 10, 100, 20, 'text', 'Rtt', NULL, '2022-12-04 15:59:51', '2022-12-04 15:59:51'),
(1155, 100, 100, 20, 'text', 'Koo', NULL, '2022-12-04 15:59:59', '2022-12-04 15:59:59'),
(1156, 10, 100, 20, 'text', 'T7i', NULL, '2022-12-04 16:00:02', '2022-12-04 16:00:02'),
(1157, 100, 100, 20, 'text', 'Uu', NULL, '2022-12-04 16:00:25', '2022-12-04 16:00:25'),
(1158, 100, 100, 20, 'text', 'Tyxic', NULL, '2022-12-04 16:02:24', '2022-12-04 16:02:24'),
(1159, 100, 100, 20, 'text', '9y8t9', NULL, '2022-12-04 16:02:27', '2022-12-04 16:02:27'),
(1160, 100, 100, 20, 'text', 'Yyt', NULL, '2022-12-04 16:04:44', '2022-12-04 16:04:44'),
(1161, 100, 100, 20, 'text', 'Ppp', NULL, '2022-12-04 16:06:59', '2022-12-04 16:06:59'),
(1162, 100, 100, 11, 'text', 'Oo', NULL, '2022-12-04 16:07:45', '2022-12-04 16:07:45'),
(1163, 100, 100, 11, 'text', 'M0m0m0', NULL, '2022-12-04 16:08:23', '2022-12-04 16:08:23'),
(1164, 100, 10, 20, 'text', 'جججج', NULL, '2022-12-05 08:45:05', '2022-12-05 08:45:05'),
(1165, 116, 100, 20, 'text', 'Htfy', NULL, '2022-12-05 08:45:29', '2022-12-05 08:45:29'),
(1166, 100, 116, 11, 'text', 'تتتن', NULL, '2022-12-05 08:47:43', '2022-12-05 08:47:43'),
(1167, 116, 100, 11, 'text', 'Gfdd', NULL, '2022-12-05 08:47:51', '2022-12-05 08:47:51'),
(1168, 100, 116, 11, 'text', 'اااتن', NULL, '2022-12-05 08:47:58', '2022-12-05 08:47:58'),
(1169, 116, 100, 11, 'text', 'Jdsss', NULL, '2022-12-05 08:48:01', '2022-12-05 08:48:01'),
(1170, 100, 116, 11, 'text', 'ييصق', NULL, '2022-12-05 08:48:06', '2022-12-05 08:48:06'),
(1171, 116, 100, 11, 'text', 'Bsst', NULL, '2022-12-05 08:48:09', '2022-12-05 08:48:09'),
(1172, 116, 116, 11, 'text', '000', NULL, '2022-12-05 08:49:59', '2022-12-05 08:49:59'),
(1173, 116, 100, 11, 'text', 'Ooo', NULL, '2022-12-05 08:51:33', '2022-12-05 08:51:33'),
(1174, 100, 116, 11, 'text', 'بللف', NULL, '2022-12-05 08:52:00', '2022-12-05 08:52:00'),
(1175, 116, 100, 11, 'text', 'Hggg', NULL, '2022-12-05 08:52:04', '2022-12-05 08:52:04'),
(1176, 100, 116, 11, 'text', 'هلااا يا سعد', NULL, '2022-12-05 09:15:16', '2022-12-05 09:15:16'),
(1177, 116, 100, 11, 'text', 'هلااا يا يحيى', NULL, '2022-12-05 09:15:42', '2022-12-05 09:15:42'),
(1178, 116, 100, 11, 'text', 'Oo', NULL, '2022-12-11 23:44:51', '2022-12-11 23:44:51'),
(1179, 116, 100, 11, 'text', 'Yy', NULL, '2022-12-11 23:45:04', '2022-12-11 23:45:04'),
(1180, 100, 116, 11, 'text', 'Ff', NULL, '2022-12-11 23:45:11', '2022-12-11 23:45:11'),
(1181, 116, 100, 11, 'text', '444', NULL, '2022-12-11 23:45:20', '2022-12-11 23:45:20'),
(1183, 139, 100, 22, 'text', 'ااا', NULL, '2023-02-05 21:59:23', '2023-02-05 21:59:23'),
(1184, 139, 100, 22, 'file', NULL, 'storage/uploads/chat/MWM4MTVjMTEtOGRjMC00ZDEwLWJmOTAtOTkzODU1MWM2M2IzNTk4ODA3OTcwMjMwMDM0NjQ5My5qcGc=_1675627185.jpg', '2023-02-05 21:59:45', '2023-02-05 21:59:45'),
(1185, 139, 100, 22, 'file', NULL, 'storage/uploads/chat/aW1hZ2VfcGlja2VyOTEzODQ3MzQwMTU0NzE0ODAzMi5qcGc=_1675627222.jpg', '2023-02-05 22:00:22', '2023-02-05 22:00:22'),
(1186, 141, 140, 23, 'text', 'test', NULL, '2023-09-03 11:09:27', '2023-09-03 11:09:27'),
(1187, 141, 140, 23, 'file', NULL, 'storage/uploads/chat/MTg1YWZkZGYtYTQwZC00NzczLTg3ZDgtYTBmZDZhOGYxMzIwNTEyMjUyMDMzMTQ1NTg4NzY1LmpwZw==_1693732293.jpg', '2023-09-03 11:11:33', '2023-09-03 11:11:33'),
(1188, 116, 100, 11, 'text', 'ته', NULL, '2023-09-21 15:23:47', '2023-09-21 15:23:47'),
(1189, 116, 100, 11, 'file', NULL, 'storage/uploads/chat/aW1hZ2VfcGlja2VyMTEyODk4NTc1MzgwMzUyOTUxMy5qcGc=_1695302650.jpg', '2023-09-21 15:24:10', '2023-09-21 15:24:10'),
(1190, 116, 100, 11, 'text', 'ط', NULL, '2023-09-21 15:24:19', '2023-09-21 15:24:19'),
(1191, 100, 116, 11, 'text', '😂', NULL, '2023-09-21 15:24:36', '2023-09-21 15:24:36'),
(1192, 116, 100, 11, 'text', 'سوري', NULL, '2023-09-21 16:04:40', '2023-09-21 16:04:40'),
(1193, 116, 100, 11, 'text', 'ههههه', NULL, '2023-09-21 16:04:43', '2023-09-21 16:04:43'),
(1194, 100, 116, 11, 'text', 'مين', NULL, '2023-09-21 16:05:23', '2023-09-21 16:05:23'),
(1195, 116, 100, 11, 'text', 'احمد الصباغ  flutter developer ف الشركه هنا', NULL, '2023-09-21 16:06:16', '2023-09-21 16:06:16'),
(1196, 100, 116, 11, 'text', 'ههههه هلا يا عم احمد', NULL, '2023-09-21 16:06:39', '2023-09-21 16:06:39'),
(1197, 100, 116, 11, 'text', 'نورت Top Business ♥️✌️', NULL, '2023-09-21 16:06:51', '2023-09-21 16:06:51'),
(1198, 116, 100, 11, 'text', 'كنت بلعب بجرب التطبيق بس معرفش لنه شغال 😂😂', NULL, '2023-09-21 16:06:58', '2023-09-21 16:06:58'),
(1199, 116, 100, 11, 'text', 'حبيبي ي هندسه والله تسلم', NULL, '2023-09-21 16:07:21', '2023-09-21 16:07:21'),
(1200, 100, 116, 11, 'text', 'عيب عليك هو احنا كنا اى حد برضه 😂✌️', NULL, '2023-09-21 16:07:25', '2023-09-21 16:07:25'),
(1201, 116, 100, 11, 'text', 'سيرتك معانا بالخير ديما😂😂', NULL, '2023-09-21 16:07:40', '2023-09-21 16:07:40'),
(1202, 100, 116, 11, 'text', 'حبيبى والله', NULL, '2023-09-21 16:07:54', '2023-09-21 16:07:54'),
(1203, 100, 116, 11, 'text', 'كلكم والله وحشتونى', NULL, '2023-09-21 16:08:02', '2023-09-21 16:08:02'),
(1204, 100, 116, 11, 'text', 'امانه عليك سلملى عليهم', NULL, '2023-09-21 16:08:10', '2023-09-21 16:08:10'),
(1205, 116, 100, 11, 'text', 'الله يخليك', NULL, '2023-09-21 16:08:15', '2023-09-21 16:08:15'),
(1206, 116, 100, 11, 'text', 'يوصل', NULL, '2023-09-21 16:08:25', '2023-09-21 16:08:25'),
(1207, 100, 116, 11, 'text', 'عيش با فى التطبيق هو اااه مش الى هو اوووى بس اهو شغلل 😂', NULL, '2023-09-21 16:09:02', '2023-09-21 16:09:02'),
(1208, 116, 100, 11, 'text', 'هههههه', NULL, '2023-09-21 16:09:24', '2023-09-21 16:09:24'),
(1209, 116, 100, 11, 'text', 'اهم حاجه انه شغال', NULL, '2023-09-21 16:09:29', '2023-09-21 16:09:29'),
(1210, 100, 116, 11, 'text', 'هما طالبين فيه تعديلات ولا حاجه ؟!', NULL, '2023-09-21 16:10:00', '2023-09-21 16:10:00'),
(1211, 116, 100, 11, 'text', 'طالبين', NULL, '2023-09-21 16:10:16', '2023-09-21 16:10:16'),
(1212, 116, 100, 11, 'text', 'بس بشمهندس احمد سعد اللب هيشتغل عليه', NULL, '2023-09-21 16:10:32', '2023-09-21 16:10:32'),
(1213, 116, 100, 11, 'text', 'انما انا بلعب وبتفرج بس 😂😂', NULL, '2023-09-21 16:10:59', '2023-09-21 16:10:59'),
(1214, 100, 116, 11, 'text', 'خير خير لو حاجه وقفت معاكم انا موجود', NULL, '2023-09-21 16:11:12', '2023-09-21 16:11:12'),
(1215, 100, 116, 11, 'text', 'لا يا باشا خد راحتك التطبيق تطبيقك 😂😂', NULL, '2023-09-21 16:11:34', '2023-09-21 16:11:34'),
(1216, 116, 100, 11, 'text', 'تسلم والله مننحرمش', NULL, '2023-09-21 16:11:54', '2023-09-21 16:11:54'),
(1217, 116, 100, 11, 'text', 'وإن شاء الله نشوفك علي خير', NULL, '2023-09-21 16:12:10', '2023-09-21 16:12:10'),
(1218, 100, 116, 11, 'text', 'ان شاء الله ♥️', NULL, '2023-09-21 16:12:21', '2023-09-21 16:12:21'),
(1219, 116, 100, 11, 'text', '😍😍', NULL, '2023-09-21 16:12:43', '2023-09-21 16:12:43'),
(1220, 116, 100, 11, 'text', 'Hi', NULL, '2023-09-26 14:40:46', '2023-09-26 14:40:46'),
(1221, 116, 100, 11, 'text', 'Hi', NULL, '2023-09-26 14:40:54', '2023-09-26 14:40:54'),
(1222, 116, 100, 11, 'text', 'Go', NULL, '2023-09-26 14:41:03', '2023-09-26 14:41:03'),
(1223, 116, 98, 12, 'text', 'Pull', NULL, '2023-09-26 14:41:22', '2023-09-26 14:41:22'),
(1224, 100, 116, 11, 'text', 'بتجرب تانى 😂', NULL, '2023-09-26 14:47:23', '2023-09-26 14:47:23'),
(1225, 116, 100, 11, 'text', 'ايوه', NULL, '2023-09-26 14:51:25', '2023-09-26 14:51:25'),
(1226, 100, 116, 11, 'text', 'Test', NULL, '2023-10-31 09:32:02', '2023-10-31 09:32:02'),
(1227, 157, 85, 24, 'text', 'يرجي ارسال التفاصيل', NULL, '2023-11-09 09:36:43', '2023-11-09 09:36:43'),
(1228, 157, 85, 24, 'text', 'Hi', NULL, '2023-11-09 09:37:06', '2023-11-09 09:37:06');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name_ar` varchar(255) DEFAULT NULL,
  `name_en` varchar(255) DEFAULT NULL,
  `name_ko` varchar(191) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `name_ar`, `name_en`, `name_ko`, `image`, `icon`, `created_at`, `updated_at`) VALUES
(1, 'ميزه 4', 'mezaa4', 'مىبخثىخصفىخصفهن', 'assets/uploads/service/images/19821661162251.webp', 'assets/uploads/service/icons/66431661330498.png', '2022-08-22 09:57:31', '2022-11-02 11:28:06'),
(2, 'ميزه 3', 'mezaa 3', 'ررثترلاضثرضثعرضثممم', 'assets/uploads/service/images/18761661162522.webp', 'assets/uploads/service/icons/11661661330458.png', '2022-08-22 10:02:02', '2022-11-02 11:27:38'),
(5, 'ميزه 1', 'mezaa1', 'ررثترلاضثرضثعرضث', NULL, 'assets/uploads/service/icons/91651667381181.png', '2022-09-24 15:09:04', '2022-11-02 11:26:21'),
(7, 'ميزه 2', 'mezaa 2', 'بیر لە هەموو شتێکیlkنوێg بکەرەوەbb', NULL, 'assets/uploads/service/icons/69731667381211.png', '2022-09-24 15:10:28', '2022-11-02 11:26:51'),
(11, 'تيست', 'test', 'test', NULL, 'assets/uploads/service/icons/94031697878792.png', '2023-10-21 10:59:52', '2023-10-21 10:59:52');

-- --------------------------------------------------------

--
-- Table structure for table `services_of_posts`
--

CREATE TABLE `services_of_posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `service_id` bigint(20) UNSIGNED DEFAULT NULL,
  `post_id` bigint(20) UNSIGNED DEFAULT NULL,
  `project_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `services_of_posts`
--

INSERT INTO `services_of_posts` (`id`, `service_id`, `post_id`, `project_id`, `created_at`, `updated_at`) VALUES
(1, 2, 1, 1, '2022-05-21 07:00:39', '2022-05-21 07:00:39'),
(2, 1, NULL, NULL, '2022-09-22 10:12:54', '2022-09-22 10:12:54'),
(3, 2, 3, NULL, NULL, NULL),
(4, 2, NULL, NULL, '2022-09-22 10:12:54', '2022-09-22 10:12:54'),
(5, 4, 3, NULL, NULL, NULL),
(6, 1, NULL, NULL, '2022-09-22 10:16:10', '2022-09-22 10:16:10'),
(7, 6, 4, NULL, NULL, NULL),
(8, 2, NULL, NULL, '2022-09-22 10:16:10', '2022-09-22 10:16:10'),
(9, 8, 4, NULL, NULL, NULL),
(10, 1, NULL, NULL, '2022-09-22 10:23:54', '2022-09-22 10:23:54'),
(11, 10, 6, NULL, NULL, NULL),
(12, 2, NULL, NULL, '2022-09-22 10:23:54', '2022-09-22 10:23:54'),
(13, 12, 6, NULL, NULL, NULL),
(14, 1, NULL, NULL, '2022-09-22 10:26:49', '2022-09-22 10:26:49'),
(15, 1, 8, NULL, NULL, NULL),
(16, 2, NULL, NULL, '2022-09-22 10:26:49', '2022-09-22 10:26:49'),
(17, 2, 8, NULL, NULL, NULL),
(18, NULL, NULL, NULL, '2022-09-22 11:40:15', '2022-09-22 11:40:15'),
(19, NULL, NULL, NULL, '2022-09-22 11:40:15', '2022-09-22 11:40:15'),
(20, NULL, NULL, NULL, '2022-09-22 11:40:21', '2022-09-22 11:40:21'),
(21, NULL, NULL, NULL, '2022-09-22 11:40:21', '2022-09-22 11:40:21'),
(22, 1, NULL, NULL, '2022-09-22 11:42:23', '2022-09-22 11:42:23'),
(23, 2, NULL, NULL, '2022-09-22 11:42:23', '2022-09-22 11:42:23'),
(24, 1, 14, NULL, '2022-09-22 11:46:03', '2022-09-22 11:46:03'),
(25, 2, 14, NULL, '2022-09-22 11:46:03', '2022-09-22 11:46:03'),
(26, 1, 15, NULL, '2022-09-24 13:40:47', '2022-09-24 13:40:47'),
(27, 2, 15, NULL, '2022-09-24 13:40:47', '2022-09-24 13:40:47'),
(28, 1, 16, NULL, '2022-09-24 15:11:42', '2022-09-24 15:11:42'),
(29, 2, 16, NULL, '2022-09-24 15:11:42', '2022-09-24 15:11:42'),
(30, 2, 16, NULL, '2022-09-24 15:11:42', '2022-09-24 15:11:42'),
(31, 3, 16, NULL, '2022-09-24 15:11:42', '2022-09-24 15:11:42'),
(32, 1, 17, NULL, '2022-09-24 15:35:40', '2022-09-24 15:35:40'),
(33, 2, 17, NULL, '2022-09-24 15:35:40', '2022-09-24 15:35:40'),
(34, 2, 17, NULL, '2022-09-24 15:35:40', '2022-09-24 15:35:40'),
(35, 3, 17, NULL, '2022-09-24 15:35:40', '2022-09-24 15:35:40'),
(36, 1, 18, NULL, '2022-09-24 15:45:18', '2022-09-24 15:45:18'),
(37, 2, 18, NULL, '2022-09-24 15:45:18', '2022-09-24 15:45:18'),
(38, 2, 18, NULL, '2022-09-24 15:45:18', '2022-09-24 15:45:18'),
(39, 3, 18, NULL, '2022-09-24 15:45:18', '2022-09-24 15:45:18'),
(40, 1, 19, NULL, '2022-09-25 16:14:41', '2022-09-25 16:14:41'),
(41, 2, 19, NULL, '2022-09-25 16:14:41', '2022-09-25 16:14:41'),
(42, 1, 20, NULL, '2022-09-25 16:15:00', '2022-09-25 16:15:00'),
(43, 2, 20, NULL, '2022-09-25 16:15:00', '2022-09-25 16:15:00'),
(44, 1, 21, NULL, '2022-09-26 00:46:54', '2022-09-26 00:46:54'),
(45, 2, 21, NULL, '2022-09-26 00:46:54', '2022-09-26 00:46:54'),
(46, 1, 22, NULL, '2022-09-26 00:46:59', '2022-09-26 00:46:59'),
(47, 2, 22, NULL, '2022-09-26 00:46:59', '2022-09-26 00:46:59'),
(48, 1, 23, NULL, '2022-09-26 00:47:00', '2022-09-26 00:47:00'),
(49, 2, 23, NULL, '2022-09-26 00:47:00', '2022-09-26 00:47:00'),
(50, 1, NULL, 6, '2022-09-27 11:18:22', '2022-09-27 11:18:22'),
(51, 2, NULL, 6, '2022-09-27 11:18:22', '2022-09-27 11:18:22'),
(52, 1, NULL, 7, '2022-09-27 11:26:29', '2022-09-27 11:26:29'),
(53, 2, NULL, 7, '2022-09-27 11:26:29', '2022-09-27 11:26:29'),
(54, 1, NULL, 8, '2022-09-27 11:27:10', '2022-09-27 11:27:10'),
(55, 2, NULL, 8, '2022-09-27 11:27:10', '2022-09-27 11:27:10'),
(56, 1, NULL, 9, '2022-09-27 11:28:11', '2022-09-27 11:28:11'),
(57, 2, NULL, 9, '2022-09-27 11:28:11', '2022-09-27 11:28:11'),
(58, 1, NULL, 10, '2022-09-27 12:02:15', '2022-09-27 12:02:15'),
(59, 2, NULL, 10, '2022-09-27 12:02:15', '2022-09-27 12:02:15'),
(60, 1, NULL, 11, '2022-09-27 12:45:46', '2022-09-27 12:45:46'),
(61, 2, NULL, 11, '2022-09-27 12:45:46', '2022-09-27 12:45:46'),
(62, 1, NULL, 15, '2022-09-27 13:01:55', '2022-09-27 13:01:55'),
(63, 2, NULL, 15, '2022-09-27 13:01:55', '2022-09-27 13:01:55'),
(64, 1, NULL, 16, '2022-09-27 13:45:52', '2022-09-27 13:45:52'),
(65, 2, NULL, 16, '2022-09-27 13:45:52', '2022-09-27 13:45:52'),
(66, 1, NULL, 17, '2022-09-27 13:45:53', '2022-09-27 13:45:53'),
(67, 2, NULL, 17, '2022-09-27 13:45:53', '2022-09-27 13:45:53'),
(68, 1, NULL, 18, '2022-09-28 21:37:28', '2022-09-28 21:37:28'),
(69, 2, NULL, 18, '2022-09-28 21:37:28', '2022-09-28 21:37:28'),
(70, 1, NULL, 19, '2022-09-29 11:52:59', '2022-09-29 11:52:59'),
(71, 2, NULL, 19, '2022-09-29 11:52:59', '2022-09-29 11:52:59'),
(72, 1, 24, NULL, '2022-10-09 10:32:19', '2022-10-09 10:32:19'),
(73, 2, 24, NULL, '2022-10-09 10:32:19', '2022-10-09 10:32:19'),
(74, 1, 25, NULL, '2022-10-16 10:27:17', '2022-10-16 10:27:17'),
(75, 2, 25, NULL, '2022-10-16 10:27:17', '2022-10-16 10:27:17'),
(76, 1, 26, NULL, '2022-10-16 10:29:32', '2022-10-16 10:29:32'),
(77, 2, 26, NULL, '2022-10-16 10:29:32', '2022-10-16 10:29:32'),
(78, 1, 27, NULL, '2022-10-16 14:56:22', '2022-10-16 14:56:22'),
(79, 2, 27, NULL, '2022-10-16 14:56:22', '2022-10-16 14:56:22'),
(80, 1, 28, NULL, '2022-10-16 14:56:45', '2022-10-16 14:56:45'),
(81, 2, 28, NULL, '2022-10-16 14:56:45', '2022-10-16 14:56:45'),
(82, 1, 29, NULL, '2022-10-16 14:58:59', '2022-10-16 14:58:59'),
(83, 2, 29, NULL, '2022-10-16 14:58:59', '2022-10-16 14:58:59'),
(84, 1, 30, NULL, '2022-10-25 16:02:24', '2022-10-25 16:02:24'),
(85, 2, 30, NULL, '2022-10-25 16:02:24', '2022-10-25 16:02:24'),
(86, 1, 32, NULL, '2022-10-26 08:34:19', '2022-10-26 08:34:19'),
(87, 2, 32, NULL, '2022-10-26 08:34:19', '2022-10-26 08:34:19'),
(88, 1, 33, NULL, '2022-10-26 08:38:28', '2022-10-26 08:38:28'),
(89, 2, 33, NULL, '2022-10-26 08:38:28', '2022-10-26 08:38:28'),
(90, 1, 34, NULL, '2022-10-26 09:31:17', '2022-10-26 09:31:17'),
(91, 2, 34, NULL, '2022-10-26 09:31:17', '2022-10-26 09:31:17'),
(92, 1, 35, NULL, '2022-10-26 11:49:59', '2022-10-26 11:49:59'),
(93, 2, 35, NULL, '2022-10-26 11:49:59', '2022-10-26 11:49:59'),
(94, 1, 36, NULL, '2022-10-26 13:01:14', '2022-10-26 13:01:14'),
(95, 2, 36, NULL, '2022-10-26 13:01:14', '2022-10-26 13:01:14'),
(96, 1, 37, NULL, '2022-10-26 15:36:51', '2022-10-26 15:36:51'),
(97, 2, 37, NULL, '2022-10-26 15:36:51', '2022-10-26 15:36:51'),
(100, 1, 38, NULL, '2022-10-27 09:09:32', '2022-10-27 09:09:32'),
(101, 2, 38, NULL, '2022-10-27 09:09:32', '2022-10-27 09:09:32'),
(102, 1, 39, NULL, '2022-10-27 09:09:37', '2022-10-27 09:09:37'),
(103, 2, 39, NULL, '2022-10-27 09:09:37', '2022-10-27 09:09:37'),
(104, 1, 40, NULL, '2022-10-27 09:09:49', '2022-10-27 09:09:49'),
(105, 2, 40, NULL, '2022-10-27 09:09:49', '2022-10-27 09:09:49'),
(106, 1, 41, NULL, '2022-10-27 09:12:03', '2022-10-27 09:12:03'),
(107, 2, 41, NULL, '2022-10-27 09:12:03', '2022-10-27 09:12:03'),
(108, 1, 42, NULL, '2022-10-27 09:43:44', '2022-10-27 09:43:44'),
(109, 2, 42, NULL, '2022-10-27 09:43:44', '2022-10-27 09:43:44'),
(111, 2, 43, NULL, '2022-10-27 09:49:27', '2022-10-27 09:49:27'),
(112, 1, 44, NULL, '2022-10-27 14:43:44', '2022-10-27 14:43:44'),
(113, 2, 44, NULL, '2022-10-27 14:43:44', '2022-10-27 14:43:44'),
(114, 1, 45, NULL, '2022-10-27 14:45:59', '2022-10-27 14:45:59'),
(115, 2, 45, NULL, '2022-10-27 14:45:59', '2022-10-27 14:45:59'),
(117, 1, 43, NULL, '2022-10-27 15:31:10', '2022-10-27 15:31:10'),
(118, 1, 43, NULL, '2022-10-27 15:31:25', '2022-10-27 15:31:25'),
(119, 1, 46, NULL, '2022-10-30 08:34:30', '2022-10-30 08:34:30'),
(120, 2, 46, NULL, '2022-10-30 08:34:30', '2022-10-30 08:34:30'),
(121, 1, 47, NULL, '2022-10-30 08:37:37', '2022-10-30 08:37:37'),
(122, 2, 47, NULL, '2022-10-30 08:37:37', '2022-10-30 08:37:37'),
(126, 2, NULL, 22, '2022-10-30 10:26:29', '2022-10-30 10:26:29'),
(127, 1, 48, NULL, '2022-10-30 10:45:58', '2022-10-30 10:45:58'),
(128, 2, 48, NULL, '2022-10-30 10:45:58', '2022-10-30 10:45:58'),
(129, 1, NULL, 22, '2022-10-30 10:58:02', '2022-10-30 10:58:02'),
(130, 1, 53, NULL, '2022-10-30 13:40:30', '2022-10-30 13:40:30'),
(131, 2, 53, NULL, '2022-10-30 13:40:30', '2022-10-30 13:40:30'),
(132, 1, 60, NULL, '2022-10-30 14:07:47', '2022-10-30 14:07:47'),
(133, 2, 60, NULL, '2022-10-30 14:07:47', '2022-10-30 14:07:47'),
(134, 1, 61, NULL, '2022-10-30 14:09:04', '2022-10-30 14:09:04'),
(135, 2, 61, NULL, '2022-10-30 14:09:04', '2022-10-30 14:09:04'),
(136, 1, 64, NULL, '2022-10-30 14:24:19', '2022-10-30 14:24:19'),
(137, 2, 64, NULL, '2022-10-30 14:24:19', '2022-10-30 14:24:19'),
(138, 1, 65, NULL, '2022-10-30 14:39:06', '2022-10-30 14:39:06'),
(139, 2, 65, NULL, '2022-10-30 14:39:06', '2022-10-30 14:39:06'),
(140, 1, 66, NULL, '2022-10-30 14:42:43', '2022-10-30 14:42:43'),
(141, 2, 66, NULL, '2022-10-30 14:42:43', '2022-10-30 14:42:43'),
(142, 1, 67, NULL, '2022-10-30 14:47:07', '2022-10-30 14:47:07'),
(143, 2, 67, NULL, '2022-10-30 14:47:07', '2022-10-30 14:47:07'),
(144, 1, 69, NULL, '2022-10-30 15:26:30', '2022-10-30 15:26:30'),
(145, 2, 69, NULL, '2022-10-30 15:26:30', '2022-10-30 15:26:30'),
(146, 1, 77, NULL, '2022-10-30 16:04:11', '2022-10-30 16:04:11'),
(147, 2, 77, NULL, '2022-10-30 16:04:11', '2022-10-30 16:04:11'),
(148, 1, 79, NULL, '2022-10-30 16:15:10', '2022-10-30 16:15:10'),
(149, 2, 79, NULL, '2022-10-30 16:15:10', '2022-10-30 16:15:10'),
(150, 5, 79, NULL, '2022-10-30 16:15:10', '2022-10-30 16:15:10'),
(151, 7, 79, NULL, '2022-10-30 16:15:10', '2022-10-30 16:15:10'),
(152, 1, 80, NULL, '2022-10-30 16:33:13', '2022-10-30 16:33:13'),
(153, 2, 80, NULL, '2022-10-30 16:33:13', '2022-10-30 16:33:13'),
(158, 1, 82, NULL, '2022-10-31 08:45:16', '2022-10-31 08:45:16'),
(159, 2, 82, NULL, '2022-10-31 08:45:16', '2022-10-31 08:45:16'),
(162, 1, NULL, 24, '2022-11-01 12:58:24', '2022-11-01 12:58:24'),
(163, 2, NULL, 24, '2022-11-01 12:58:24', '2022-11-01 12:58:24'),
(169, 1, NULL, 54, '2022-11-01 14:31:46', '2022-11-01 14:31:46'),
(170, 2, NULL, 54, '2022-11-01 14:31:46', '2022-11-01 14:31:46'),
(171, 7, NULL, 54, '2022-11-01 14:31:46', '2022-11-01 14:31:46'),
(172, 1, NULL, 55, '2022-11-01 15:04:51', '2022-11-01 15:04:51'),
(173, 1, 83, NULL, '2022-11-02 13:18:55', '2022-11-02 13:18:55'),
(174, 2, 83, NULL, '2022-11-02 13:18:55', '2022-11-02 13:18:55'),
(175, 1, 84, NULL, '2022-11-02 13:20:14', '2022-11-02 13:20:14'),
(176, 2, 84, NULL, '2022-11-02 13:20:14', '2022-11-02 13:20:14'),
(177, 1, NULL, 56, '2022-11-02 13:21:12', '2022-11-02 13:21:12'),
(178, 2, NULL, 56, '2022-11-02 13:21:12', '2022-11-02 13:21:12'),
(179, 1, 85, NULL, '2022-11-06 10:09:44', '2022-11-06 10:09:44'),
(180, 2, 85, NULL, '2022-11-06 10:09:44', '2022-11-06 10:09:44'),
(207, 1, NULL, 57, '2022-11-06 11:24:23', '2022-11-06 11:24:23'),
(208, 2, NULL, 57, '2022-11-06 11:24:23', '2022-11-06 11:24:23'),
(209, 1, NULL, 58, '2022-11-06 13:13:40', '2022-11-06 13:13:40'),
(210, 2, NULL, 58, '2022-11-06 13:13:40', '2022-11-06 13:13:40'),
(211, 1, NULL, 59, '2022-11-06 13:13:41', '2022-11-06 13:13:41'),
(212, 2, NULL, 59, '2022-11-06 13:13:41', '2022-11-06 13:13:41'),
(213, 1, NULL, 60, '2022-11-06 13:13:43', '2022-11-06 13:13:43'),
(214, 2, NULL, 60, '2022-11-06 13:13:43', '2022-11-06 13:13:43'),
(215, 1, NULL, 61, '2022-11-06 13:13:44', '2022-11-06 13:13:44'),
(216, 2, NULL, 61, '2022-11-06 13:13:44', '2022-11-06 13:13:44'),
(230, 1, NULL, 62, '2022-11-06 15:58:23', '2022-11-06 15:58:23'),
(235, 1, NULL, 68, '2022-11-07 10:25:22', '2022-11-07 10:25:22'),
(236, 2, NULL, 68, '2022-11-07 10:25:22', '2022-11-07 10:25:22'),
(241, 7, NULL, 66, '2022-11-07 15:21:24', '2022-11-07 15:21:24'),
(242, 2, NULL, 66, '2022-11-07 15:21:24', '2022-11-07 15:21:24'),
(246, 1, NULL, 65, '2022-11-07 15:57:30', '2022-11-07 15:57:30'),
(247, 2, NULL, 65, '2022-11-07 15:57:30', '2022-11-07 15:57:30'),
(248, 5, NULL, 65, '2022-11-07 15:57:30', '2022-11-07 15:57:30'),
(249, 1, NULL, 67, '2022-11-08 08:32:46', '2022-11-08 08:32:46'),
(250, 1, NULL, 67, '2022-11-08 08:32:46', '2022-11-08 08:32:46'),
(251, 2, NULL, 67, '2022-11-08 08:32:46', '2022-11-08 08:32:46'),
(252, 5, NULL, 67, '2022-11-08 08:32:46', '2022-11-08 08:32:46'),
(255, 1, NULL, 69, '2022-11-29 09:03:39', '2022-11-29 09:03:39'),
(256, 2, NULL, 69, '2022-11-29 09:03:39', '2022-11-29 09:03:39'),
(262, 1, 88, NULL, '2023-01-03 09:03:12', '2023-01-03 09:03:12'),
(263, 2, 88, NULL, '2023-01-03 09:03:12', '2023-01-03 09:03:12'),
(281, 1, 87, NULL, '2023-01-24 13:09:27', '2023-01-24 13:09:27'),
(282, 2, 87, NULL, '2023-01-24 13:09:27', '2023-01-24 13:09:27'),
(283, 5, 87, NULL, '2023-01-24 13:09:27', '2023-01-24 13:09:27'),
(284, 1, 87, NULL, '2023-01-24 13:09:27', '2023-01-24 13:09:27'),
(285, 2, 87, NULL, '2023-01-24 13:09:27', '2023-01-24 13:09:27'),
(286, 5, 87, NULL, '2023-01-24 13:09:27', '2023-01-24 13:09:27'),
(287, 1, 91, NULL, '2023-01-24 13:16:59', '2023-01-24 13:16:59'),
(288, 2, 91, NULL, '2023-01-24 13:16:59', '2023-01-24 13:16:59'),
(289, 1, 92, NULL, '2023-08-26 18:06:20', '2023-08-26 18:06:20'),
(290, 2, 92, NULL, '2023-08-26 18:06:20', '2023-08-26 18:06:20'),
(291, 5, 93, NULL, '2023-09-03 10:34:51', '2023-09-03 10:34:51'),
(292, 1, 94, NULL, '2023-10-09 11:59:10', '2023-10-09 11:59:10'),
(293, 2, 94, NULL, '2023-10-09 11:59:10', '2023-10-09 11:59:10'),
(294, 1, 95, NULL, '2023-10-09 13:05:54', '2023-10-09 13:05:54'),
(295, 2, 95, NULL, '2023-10-09 13:05:54', '2023-10-09 13:05:54'),
(296, 1, 96, NULL, '2023-10-09 13:09:13', '2023-10-09 13:09:13'),
(297, 2, 96, NULL, '2023-10-09 13:09:13', '2023-10-09 13:09:13'),
(298, 1, 97, NULL, '2023-10-09 13:10:57', '2023-10-09 13:10:57'),
(299, 2, 97, NULL, '2023-10-09 13:10:57', '2023-10-09 13:10:57'),
(300, 1, 98, NULL, '2023-10-09 13:11:04', '2023-10-09 13:11:04'),
(301, 2, 98, NULL, '2023-10-09 13:11:04', '2023-10-09 13:11:04'),
(302, 1, 99, NULL, '2023-10-09 13:27:28', '2023-10-09 13:27:28'),
(303, 2, 103, NULL, '2023-10-16 13:50:37', '2023-10-16 13:50:37'),
(304, 1, 104, NULL, '2023-10-16 14:27:46', '2023-10-16 14:27:46'),
(305, 1, 105, NULL, '2023-10-16 15:40:14', '2023-10-16 15:40:14'),
(306, 1, 106, NULL, '2023-10-16 15:53:49', '2023-10-16 15:53:49'),
(307, 1, 108, NULL, '2023-10-23 14:17:18', '2023-10-23 14:17:18'),
(309, 1, 110, NULL, '2023-11-06 09:13:53', '2023-11-06 09:13:53'),
(310, 1, 111, NULL, '2023-11-06 09:36:58', '2023-11-06 09:36:58'),
(311, 2, 111, NULL, '2023-11-06 09:36:58', '2023-11-06 09:36:58'),
(312, 1, 112, NULL, '2023-11-06 13:44:09', '2023-11-06 13:44:09'),
(313, 1, 113, NULL, '2023-11-06 14:27:17', '2023-11-06 14:27:17'),
(314, 1, 114, NULL, '2023-11-06 14:46:04', '2023-11-06 14:46:04'),
(315, 1, 115, NULL, '2023-11-06 14:47:38', '2023-11-06 14:47:38'),
(316, 1, 116, NULL, '2023-11-06 15:02:04', '2023-11-06 15:02:04'),
(317, 2, 116, NULL, '2023-11-06 15:02:04', '2023-11-06 15:02:04'),
(319, 1, 118, NULL, '2023-11-08 09:51:56', '2023-11-08 09:51:56'),
(320, 1, 119, NULL, '2023-11-08 10:02:42', '2023-11-08 10:02:42'),
(321, 1, 120, NULL, '2023-11-08 10:03:56', '2023-11-08 10:03:56'),
(322, 1, 121, NULL, '2023-11-08 15:21:02', '2023-11-08 15:21:02'),
(323, 1, 122, NULL, '2023-11-08 15:39:47', '2023-11-08 15:39:47'),
(324, 1, 123, NULL, '2023-11-08 15:48:09', '2023-11-08 15:48:09'),
(326, 1, 117, NULL, '2023-11-09 08:48:03', '2023-11-09 08:48:03'),
(327, 1, 117, NULL, '2023-11-09 08:48:03', '2023-11-09 08:48:03'),
(328, 1, 109, NULL, '2023-11-09 08:48:32', '2023-11-09 08:48:32'),
(329, 1, 109, NULL, '2023-11-09 08:48:32', '2023-11-09 08:48:32'),
(330, 1, 109, NULL, '2023-11-09 08:48:32', '2023-11-09 08:48:32'),
(332, 1, 124, NULL, '2023-11-09 08:57:35', '2023-11-09 08:57:35'),
(333, 1, 125, NULL, '2023-11-28 14:46:06', '2023-11-28 14:46:06'),
(334, 2, 125, NULL, '2023-11-28 14:46:06', '2023-11-28 14:46:06'),
(335, 5, 125, NULL, '2023-11-28 14:46:06', '2023-11-28 14:46:06'),
(336, 1, 126, NULL, '2023-12-09 14:10:00', '2023-12-09 14:10:00');

-- --------------------------------------------------------

--
-- Table structure for table `setting`
--

CREATE TABLE `setting` (
  `id` int(11) NOT NULL,
  `about_ar` text NOT NULL,
  `about_en` text NOT NULL,
  `terms_ar` text NOT NULL,
  `terms_en` text NOT NULL,
  `privacy_ar` text NOT NULL,
  `privacy_en` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `setting`
--

INSERT INTO `setting` (`id`, `about_ar`, `about_en`, `terms_ar`, `terms_en`, `privacy_ar`, `privacy_en`) VALUES
(2, '<p>ما هو لوريم إيبسوم؟ لوريم إيبسوم هو ببساطة نص شكلي يستخدم في صناعة الطباعة والتنضيد. كان Lorem Ipsum هو النص الوهمي القياسي في الصناعة منذ القرن الخامس عشر الميلادي ، عندما أخذت طابعة غير معروفة لوحًا من النوع وتدافعت عليه لعمل كتاب عينة. لقد نجت ليس فقط خمسة قرون ، ولكن أيضًا القفزة في التنضيد الإلكتروني ، وظلت دون تغيير جوهري. تم نشره في الستينيات من القرن الماضي بإصدار أوراق Letraset التي تحتوي على مقاطع Lorem Ipsum ، ومؤخرًا مع برامج النشر المكتبي مثل Aldus PageMaker بما في ذلك إصدارات Lorem Ipsum. لماذا نستخدمه؟ هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها. الهدف من استخدام لوريم إيبسوم هو أنه يحتوي على توزيع طبيعي -إلى حد ما- للأحرف ، بدلاً من استخدام \"هنا يوجد محتوى نصي ، هنا يوجد محتوى نصي\" ، مما يجعلها تبدو وكأنها إنجليزية قابلة للقراءة. تستخدم العديد من حزم النشر المكتبي ومحرري صفحات الويب الآن Lorem Ipsum كنص نموذج افتراضي ، وسيكشف البحث عن \"lorem ipsum\" عن العديد من مواقع الويب التي لا تزال في مهدها. تطورت إصدارات مختلفة على مر السنين ، أحيانًا عن طريق الصدفة ، وأحيانًا عن قصد (روح الدعابة المحقونة وما شابه ذلك). حيddث أنها لا تأتي من؟ خلافًا للاعتقاد الشائع ، فإن Lorem Ipsum ليس مجرد نص عشوائي. لها جذور في قطعة من الأدب اللاتيني الكلاسيكي من 45 قبل الميلاد ، مما يجعلها أكثر من 2000 عام. قام ريتشارد مكلينتوك ، الأستاذ اللاتيني في كلية هامبدن سيدني في فرجينيا ، بالبحث عن واحدة من أكثر الكلمات اللاتينية غموضًا ، consectetur ، من مقطع لوريم إيبسوم ، وتصفح اقتباسات الكلمة في الأدب الكلاسيكي ، اكتشف المصدر الذي لا شك فيه. يأتي Lorem Ipsum من الأقسام 1.10.32 و 1.10.33 من \"de Finibus Bonorum et Malorum\" (أقصى الخير والشر) بقلم شيشرون ، الذي كتبه عام 45 قبل الميلاد. هذا الكتاب عبارة عن أطروحة حول نظرية الأخلاق ، وقد حظيت بشعبية كبيرة خلال عصر النهضة. السطر الأول من Lorem Ipsum ، \"Lorem ipsum dolor sit amet ..\" ، يأتي من سطر في القسم 1.10.32.</p>', '<p>ما هو لوريم إيبسوم؟ لوريم إيبسوم هو ببساطة نص شكلي يستخدم في صناعة الطباعة والتنضيد. كان Lorem Ipsum هو النص الوهمي القياسي في الصناعة منذ القرن الخامس عشر الميلادي ، عندما أخذت طابعة غير معروفة لوحًا من النوع وتدافعت عليه لعمل كتاب عينة. لقد نجت ليس فقط خمسة قرون ، ولكن أيضًا القفزة في التنضيد الإلكتروني ، وظلت دون تغيير جوهري. تم نشره في الستينيات من القرن الماضي بإصدار أوراق Letraset التي تحتوي على مقاطع Lorem Ipsum ، ومؤخرًا مع برامج النشر المكتبي مثل Aldus PageMaker بما في ذلك إصدارات Lorem Ipsum. لماذا نستخدمه؟ هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها. الهدف من استخدام لوريم إيبسوم هو أنه يحتوي على توزيع طبيعي -إلى حد ما- للأحرف ، بدلاً من استخدام \"هنا يوجد محتوى نصي ، هنا يوجد محتوى نصي\" ، مما يجعلها تبدو وكأنها إنجليزية قابلة للقراءة. تستخدم العديد من حزم النشر المكتبي ومحرري صفحات الويب الآن Lorem Ipsum كنص نموذج افتراضي ، وسيكشف البحث عن \"lorem ipsum\" عن العديد من مواقع الويب التي لا تزال في مهدها. تطورت إصدارات مختلفة على مر السنين ، أحيانًا عن طريق الصدفة ، وأحيانًا عن قصد (روح الدعابة المحقونة وما شابه ذلك). حيث أنها لا تأتي من؟ خلافًا للاعتقاد الشائع ، فإن Lorem Ipsum ليس مجرد نص عشوائي. لها جذور في قطعة من الأدب اللاتيني الكلاسيكي من 45 قبل الميلاد ، مما يجعلها أكثر من 2000 عام. قام ريتشارد مكلينتوك ، الأستاذ اللاتيني في كلية هامبدن سيدني في فرجينيا ، بالبحث عن واحدة من أكثر الكلمات اللاتينية غموضًا ، consectetur ، من مقطع لوريم إيبسوم ، وتصفح اقتباسات الكلمة في الأدب الكلاسيكي ، اكتشف المصدر الذي لا شك فيه. يأتي Lorem Ipsum من الأقسام 1.10.32 و 1.10.33 من \"de Finibus Bonorum et Malorum\" (أقصى الخير والشر) بقلم شيشرون ، الذي كتبه عام 45 قبل الميلاد. هذا الكتاب عبارة عن أطروحة حول نظرية الأخلاق ، وقد حظيت بشعبية كبيرة خلال عصر النهضة. السطر الأول من Lorem Ipsum ، \"Lorem ipsum dolor sit amet ..\" ، يأتي من سطر في القسم 1.10.32.</p>', '<p>ما هو لوريم إيبسوم؟ لوريم إيبسوم هو ببساطة نص شكلي يستخدم في صناعة الطباعة والتنضيد. كان Lorem Ipsum هو النص الوهمي القياسي في الصناعة منذ القرن الخامس عشر الميلادي ، عندما أخذت طابعة غير معروفة لوحًا من النوع وتدافعت عليه لعمل كتاب عينة. لقد نجت ليس فقط خمسة قرون ، ولكن أيضًا القفزة في التنضيد الإلكتروني ، وظلت دون تغيير جوهري. تم نشره في الستينيات من القرن الماضي بإصدار أوراق Letraset التي تحتوي على مقاطع Lorem Ipsum ، ومؤخرًا مع برامج النشر المكتبي مثل Aldus PageMaker بما في ذلك إصدارات Lorem Ipsum. لماذا نستخدمه؟ هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها. الهدف من استخدام لوريم إيبسوم هو أنه يحتوي على توزيع طبيعي -إلى حد ما- للأحرف ، بدلاً من استخدام \"هنا يوجد محتوى نصي ، هنا يوجد محتوى نصي\" ، مما يجعلها تبدو وكأنها إنجليزية قابلة للقراءة. تستخدم العديد من حزم النشر المكتبي ومحرري صفحات الويب الآن Lorem Ipsum كنص نموذج افتراضي ، وسيكشف البحث عن \"lorem ipsum\" عن العديد من مواقع الويب التي لا تزال في مهدها. تطورت إصدارات مختلفة على مر السنين ، أحيانًا عن طريق الصدفة ، وأحيانًا عن قصد (روح الدعابة المحقونة وما شابه ذلك). حيث أنها لا تأتي من؟ خلافًا للاعتقاد الشائع ، فإن Lorem Ipsum ليس مجرد نص عشوائي. لها جذور في قطعة من الأدب اللاتيني الكلاسيكي من 45 قبل الميلاد ، مما يجعلها أكثر من 2000 عام. قام ريتشارد مكلينتوك ، الأستاذ اللاتيني في كلية هامبدن سيدني في فرجينيا ، بالبحث عن واحدة من أكثر الكلمات اللاتينية غموضًا ، consectetur ، من مقطع لوريم إيبسوم ، وتصفح اقتباسات الكلمة في الأدب الكلاسيكي ، اكتشفf المصدر الذي لا شك فيه. يأتي Lorem Ipsum من الأقسام 1.10.32 و 1.10.33 من \"de Finibus Bonorum et Malorum\" (أقصى الخير والشر) بقلم شيشرون ، الذي كتبه عام 45 قبل الميلاد. هذا الكتاب عبارة عن أطروحة حول نظرية الأخلاق ، وقد حظيت بشعبية كبيرة خلال عصر النهضة. السطر الأول من Lorem Ipsum ، \"Lorem ipsum dolor sit amet ..\" ، يأتي من سطر في القسم 1.10.32.</p>', '<p>What is Lorem Ipsum? Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. Why do we use it? It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like). Where does it come from? Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p>', '<p>ما هو لوريم إيبسوم؟ لوريم إيبسوم هو ببساطة نص شكلي يستخدم في صناعة الطباعة والتنضيد. كان Lorem Ipsum هو النص الوهمي القياسي في الصناعة منذ القرن الخامس عشر الميلادي ، عندما أخذت طابعة غير معروفة لوحًا من النوع وتدافعت عليه لعمل كتاب عينة. لقد نجت ليس فقط خمسة قرون ، ولكن أيضًا القفزة في التنضيد الإلكتروني ، وظلت دون تغيير جوهري. تم نشره في الستينيات من القرن الماضي بإصدار أوراق Letraset التي تحتوي على مقاطع Lorem Ipsum ، ومؤخرًا مع برامج النشر المكتبي مثل Aldus PageMaker بما في ذلك إصدارات Lorem Ipsum. لماذا نستخدمه؟ هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها. الهدف من استخدام لوريم إيبسوم هو أنه يحتوي على توزيع طبيعي -إلى حد ما- للأحرف ، بدلاً من استخدام \"هنا يوجد محتوى نصي ، هنا يوجد محتوى نصي\" ، مما يجعلها تبدو وكأنها إنجليزية قابلة للقراءة. تستخدم العديد من حزم النشر المكتبي ومحرري صفحات الويب الآن Lorem Ipsum كنص نموذج افتراضي ، وسيكشف البحث عن \"lorem ipsum\" عن العديد من مواقع الويب التي لا تزال في مهدها. تطورت إصدارات مختلفة على مر السنين ، أحيانًا عن طريق الصدفة ، وأحيانًا عن قصد (روح الدعابة المحقونة وما شابه ذلك). حيث أنها لا تأتي من؟ خلافًا للاعتقاد الشائع ، فإن Lorem Ipsum ليس مجرد نص عشوائي. لها جذور في قطعة من الأدب اللاتيني الكلاسيكي من 45 قبل الميلاد ، مما يجعلها أكثر من 2000 عام. قام ريتشارد مكلينتوك ، الأستاذ اللاتيني في كلية هامبدن سيدني في فرجينيا ، بالبحث عن واحدة من أكثر الكلمات اللاتينية غموضًا ، consectetur ، من مقطع لوريم إيبسوم ، وتصفح اقتباسات الكلمة في الأدب الكلاسيكي ، اكتشف المصدر الذي لا شك فيه. يأتي Lorem Ipsum من الأقسام 1.10.32 و 1.10.33 من \"de Finibus Bonorum et Malorum\" (أقصى الخير والشر) بقلم شيشرون ، الذي كتبه عام 45 قبل الميلاد. هذا الكتاب عبارة عن أطروحة حول نظرية الأخلاق ، وقد حظيت بشعبية كبيرة خلال عصر النهضة. السطر الأول من Lorem Ipsum ، \"Lorem ipsum dolor sit amet ..\" ، يأتي من سطر في القسم 1.10.32.</p>', '<p>What is Lorem Ipsum? Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. Why do we use it? It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like). Where does it come from? Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p>');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `about_us_ar` text DEFAULT NULL,
  `terms_ar` text DEFAULT NULL,
  `privacy_ar` text DEFAULT NULL,
  `about_us_en` text DEFAULT NULL,
  `terms_en` text DEFAULT NULL,
  `privacy_en` text DEFAULT NULL,
  `about_us_ku` text DEFAULT NULL,
  `terms_ku` text DEFAULT NULL,
  `privacy_ku` text DEFAULT NULL,
  `facebook` varchar(255) DEFAULT NULL,
  `insta` varchar(255) DEFAULT NULL,
  `twitter` varchar(255) DEFAULT NULL,
  `snap_chat` varchar(255) DEFAULT NULL,
  `whatsapp` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `title`, `logo`, `about_us_ar`, `terms_ar`, `privacy_ar`, `about_us_en`, `terms_en`, `privacy_en`, `about_us_ku`, `terms_ku`, `privacy_ku`, `facebook`, `insta`, `twitter`, `snap_chat`, `whatsapp`, `created_at`, `updated_at`) VALUES
(1, 'تطبيق وطن', NULL, '<p>من المهم الاعتناء بالمريض ، على أن يتابعه الطبيب ، ولكنه وقت الألم والمعاناة الشديدة. للوصول إلى أدق التفاصيل ، لا ينبغي لأحد أن يمارس أي نوع من العمل ما لم يستفيد منه. لا تغضب من الألم في التوبيخ في اللذة لأنه يريد أن يكون شعرة من الألم على أمل ألا يكون هناك تكاثر. ما لم يعمهم الشهوة ، لا يخرجون ؛ إنهم مخطئون الذين يتخلون عن واجباتهم ويلين قلوبهم ، هذا هو الكدح.</p>', '<p>أن يكون المستخدم ذا أهلية قانونية كاملة للتعاقد والتعامل. اذا كان المستخدم عمره يقل عن 18 عاما يستوجب عليه ان يقوم بالحصول على موافقة والديه أو وصيه للقيام بذلك. ان يقر ويتعهد المستخدم بانه يتمتع بالحق والقدرة القانونية على استخدام موقع وتطبيق معاك حسب ما هو منصوص عليه في هذه الشروط والأحكام.</p>', '<p>نحن سعداء بكونكم احد عملائنا ، الأمر الذي يستدعي قبولكم الضمني لسياسه الخصوصية الخاصة بتطبيق الفلتر. هذا الإشعار بالإضافة إلى سياسه الخصوصية الخاصّين بتطبيق الفلتر، يُحددان نوع المعلومات اللازم جمعها عن مستخدمين التطبيق من اجل تقديم الخدمة وتنفيذ طلبات عملائنا بالشكل المناسب . تنظم هذه الوثيقة مُعالجه بيانات العملاء من نواحي الجمع ، و التخزين ، والولوج ، والاستخدام ، و أخيراً الإهلاك ، بجانب أي صوره اخرى مستلزمة لتقديم الخدمة. الغرض من جمع أي معلومات عن العميل هو إدارة العمل اليومي بقطاعاتنا من أجل تقديم الخدمة ، بالإضافة إلى تحسين تجربة المستخدمين ، ، فضلاً عن الإدارة السليمة للحجم الهائل من المعلومات الشخصية. نحن مستمرون في تعزيز ثقة المستخدم في طريقة تعاملنا مع المعلومات الشخصية الخاصة بهم وتقديم الخدمات بشكل متميز. متى نقوم بجمع معلومات الشخصيه ؟ على سبيل المثال، نجمع معلوماتك الشخصية عند: شراء أو استخدام أي من منتجاتنا وخدماتنا. الاتصال بنا من خلال قنوات الاتصال المختلفة، أو طلب معلومات حول منتج أو خدمة ما. ما هي المعلومات التي نجمعها عنك ؟ عند الضرورة، قد نجمع: اسمك وعنوانك و / أو رقم هاتفك و / أو رقم هاتفك المحمول وعنوان بريدك الإلكتروني بيانات الاتصال الخاصة بك. وهي البيانات التي نتعرض لها كمتطلب من متطلبات اتمام عملية الشراء</p>', '<p>It is important to take care of the patient, to be followed by the doctor, but it is a time of great pain and suffering. For to come to the smallest detail, no one should practice any kind of work unless he derives some benefit from it. Do not be angry with the pain in the reprimand in the pleasure he wants to be a hair from the pain in the hope that there is no breeding. Unless they are blinded by lust, they do not come out; they are in fault who abandon their duties and soften their hearts, that is toil.</p>', '<p>That the user has full legal capacity to contract and deal. If the user is under the age of 18, he must obtain the consent of his parents or guardian to do so. The user acknowledges and undertakes that he has the right and the legal ability to use the Ma\'3ak website and application as stipulated in these terms and conditions.</p>', '<p>We are glad that you are one of our customers, which requires your tacit acceptance of the filter application\'s privacy policy. This notice, in addition to the privacy policy of the filter application, determines the type of information that must be collected about the users of the application in order to provide the service and implement our customers’ requests in an appropriate manner. This document regulates the processing of customer data in terms of collection, storage, access, use, and finally depreciation, along with any other form required to provide the service. The purpose of collecting any information about the customer is to manage the daily work of our sectors in order to provide the service, as well as to improve the experience of users, as well as to properly manage the vast volume of personal information. We continue to enhance user confidence in the way we deal with their personal information and provide services in an outstanding manner. When do we collect personal information? For example, we collect your personal information when: You purchase or use any of our products and services. Contacting us through various communication channels, or requesting information about a product or service. What information do we collect about you? Where necessary, we may collect: your name, address, telephone number, mobile phone number, email address, your contact data. It is the data that we are exposed to as a requirement to complete the purchase process</p>', '<p>گرنگە ئاگاداری نەخۆش بیت، بۆ ئەوەی پزیشکیش بەدواداچوونی بۆ بکرێت، بەڵام کاتێکی ئازار و ناخۆشییەکی زۆرە. چونکە بۆ ئەوەی بگەینە بچووکترین وردەکاری، کەس نابێت هیچ جۆرە کارێک پراکتیزە بکات، مەگەر هەندێک سوودی لێ وەرنەگرێت. توڕە مەبە لە ئازار لە سەرزەنشت لە چێژدا ئەو دەیەوێت قژێک بێت لە ئازارەکە بەو هیوایەی کە زاوزێکردن نەبێت. تا شەهوەت کوێر نەبن، نایەنە دەرەوە، ئەوان تاوانبارن کە واز لە ئەرکەکانیان دێنن و دڵیان نەرم دەکەنەوە، واتە زەحمەت.</p>', '<p>کە بەکارهێنەر توانای یاسایی تەواوی هەبێت بۆ گرێبەستکردن و مامەڵەکردن. ئەگەر بەکارهێنەر تەمەنی لە خوار ١٨ ساڵەوە بوو، دەبێت ڕەزامەندی دایک و باوکی یان سەرپەرشتیاری خۆی وەربگرێت بۆ ئەو کارە. بەکارهێنەر دان بەوەدا دەنێت و بەڵێن دەدات کە ماف و توانای یاسایی هەیە بۆ بەکارهێنانی ماڵپەڕ و بەرنامەی Ma\'3ak وەک لەم مەرج و ڕێسایانەدا هاتووە.</p>', '<p>خۆشحاڵین کە تۆ یەکێکیت لە کڕیارەکانمان، ئەمەش پێویستی بە قبوڵکردنی بێدەنگی تۆ هەیە لە سیاسەتی نهێنی بەرنامەی فلتەرەکە. ئەم ئاگادارییە، جگە لە سیاسەتی نهێنی بەرنامەی فلتەر، جۆری ئەو زانیاریانە دیاری دەکات کە دەبێت سەبارەت بە بەکارهێنەرانی بەرنامەکە کۆبکرێتەوە بۆ ئەوەی خزمەتگوزارییەکە پێشکەش بکرێت و داواکارییەکانی کڕیارەکانمان بە شێوەیەکی گونجاو جێبەجێ بکرێت. ئەم بەڵگەنامەیە پرۆسێسکردنی زانیارییەکانی کڕیار لە ڕووی کۆکردنەوە، هەڵگرتن، دەستڕاگەیشتن، بەکارهێنان و لە کۆتاییدا کەمکردنەوەی بەها ڕێکدەخات، لەگەڵ هەر فۆرمێکی تر کە پێویستە بۆ پێشکەشکردنی خزمەتگوزارییەکە. مەبەست لە کۆکردنەوەی هەر زانیارییەک دەربارەی کڕیار، بەڕێوەبردنی کاری ڕۆژانەی کەرتەکانمانە بە مەبەستی پێشکەشکردنی خزمەتگوزارییەکە، هەروەها باشترکردنی ئەزموونی بەکارهێنەران، هەروەها بەڕێوەبردنی قەبارەی زۆری زانیاری کەسی بە شێوەیەکی دروست. ئێمە بەردەوامین لە بەرزکردنەوەی متمانەی بەکارهێنەران لە شێوازی مامەڵەکردنمان لەگەڵ زانیارییە کەسییەکانیان و پێشکەشکردنی خزمەتگوزارییەکان بە شێوەیەکی نایاب. کەی زانیاری کەسی کۆدەکەینەوە؟ بۆ نموونە، ئێمە زانیارییە کەسییەکانی تۆ کۆدەکەینەوە کاتێک: تۆ هەریەکێک لە بەرهەم و خزمەتگوزارییەکانمان دەکڕیت یان بەکاری دەهێنیت. پەیوەندیکردن بە ئێمەوە لە ڕێگەی کەناڵە جیاوازەکانی پەیوەندیکردن، یان داوای زانیاری دەربارەی بەرهەمێک یان خزمەتگوزارییەک. چ زانیارییەک لەسەر ئێوە کۆدەکەینەوە؟ لە شوێنی پێویستدا، ڕەنگە ئێمە کۆبکەینەوە: ناو، ناونیشان، ژمارەی تەلەفۆن، ژمارەی مۆبایل، ناونیشانی ئیمەیڵ، زانیاری پەیوەندیکردنت. ئەو داتایانەن کە ئێمە وەک مەرجێک بۆ تەواوکردنی پرۆسەی کڕین بەرکەوتوو دەبین</p>', 'https://www.facebook.com/', 'https://www.instagram.com/', 'https://www.twitter.com/', 'https://www.snapchat.com/', '201098877778', '2022-07-12 14:16:58', '2022-07-12 14:16:58');

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `number_of_days` int(11) DEFAULT NULL,
  `started_at` date DEFAULT NULL,
  `expired_at` date DEFAULT NULL,
  `status` enum('1','0') NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `image`, `link`, `number_of_days`, `started_at`, `expired_at`, `status`, `created_at`, `updated_at`) VALUES
(6, 'assets/uploads/sliders/63551662642453.jpg', 'https://www.youtube.com/watch?v=81-lXZrwmNo', 100, NULL, '2024-01-29', '1', '2022-09-08 15:07:33', '2023-10-21 10:54:58'),
(16, 'assets/uploads/sliders/93121668599568.png', 'https://www.facebook.com/', NULL, NULL, NULL, '1', NULL, '2022-11-20 08:18:01'),
(18, 'assets/uploads/sliders/16101699535853.png', 'https://www.facebook.com/', 100, '2023-11-09', '2024-02-17', '1', '2023-11-09 15:17:33', '2023-11-09 15:17:33'),
(19, 'assets/uploads/sliders/58881699535888.png', 'https://www.facebook.com/', 100, '2023-11-09', '2024-02-17', '1', '2023-11-09 15:18:08', '2023-11-09 15:18:08'),
(20, 'assets/uploads/sliders/91221699535904.png', 'https://www.facebook.com/', 100, '2023-11-09', '2024-02-17', '1', '2023-11-09 15:18:24', '2023-11-09 15:18:24');

-- --------------------------------------------------------

--
-- Table structure for table `sub_areas`
--

CREATE TABLE `sub_areas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name_ar` varchar(255) NOT NULL,
  `name_en` varchar(255) NOT NULL,
  `name_ku` varchar(191) DEFAULT NULL,
  `area_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sub_areas`
--

INSERT INTO `sub_areas` (`id`, `name_ar`, `name_en`, `name_ku`, `area_id`, `created_at`, `updated_at`) VALUES
(1, 'الرياض', 'elryad', NULL, 1, '2022-05-21 07:00:39', '2022-05-21 07:00:39'),
(3, 'Meghan Travisyyyy', 'EricaRowlandyyyyy', NULL, 1, '2022-08-21 14:21:17', '2022-08-21 14:40:31'),
(4, 'المنصور', 'المنصور', 'المنصور', 1, '2022-08-22 08:15:39', '2023-10-21 09:02:59'),
(5, 'البصره 1', 'basra 1', NULL, 6, '2022-09-21 22:15:41', '2022-09-21 22:15:41'),
(6, 'البصره 2', 'basra 2', NULL, 6, '2022-09-21 22:15:57', '2022-09-21 22:15:57'),
(14, 'نينوى', 'Nenawa', 'نينوى', 19, '2023-11-23 00:15:54', '2023-11-23 00:15:54');

-- --------------------------------------------------------

--
-- Table structure for table `sub_categories`
--

CREATE TABLE `sub_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name_ar` varchar(255) DEFAULT NULL,
  `name_en` varchar(255) DEFAULT NULL,
  `name_ku` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `whatsapp` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `status` enum('0','1') NOT NULL DEFAULT '1' COMMENT '0 is blocked , 1 is not blocked',
  `user_type` tinyint(4) DEFAULT 1 COMMENT '0=>"temp_from_social_media",1=>"user",2=>"company",3=>"estate_office",4=>"agent"',
  `packages_balance` bigint(20) NOT NULL DEFAULT 15,
  `package_expired_date` date DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `whatsapp`, `phone`, `password`, `image`, `status`, `user_type`, `packages_balance`, `package_expired_date`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'محمد خالد', 'mo@gmail.com', '+2001010154407', '+2001010448889', '%^&%^$%^#$%#$%ERDSFSDFSDF@#$@#$@#$%$%RT', '1.png', '1', 0, 15, NULL, NULL, '2022-08-22 11:36:02', '2022-08-22 11:46:30'),
(3, 'Osama arafa', 'osama78@gmail.com', '1223333', '010114789888', '$2y$10$.hU/KKLvgTu/AGW6VNWCbedIXBa3GmK1THmWptZevVBDEgk3/8St6', 'assets/uploads/users/46401663572967.jpg', '0', 2, 15, NULL, NULL, '2022-09-07 17:02:38', '2023-11-13 11:30:23'),
(8, 'User', 'user@gmail.com', '123456', '123456', '$2y$10$nCygWqR8Cq4akzCIEy9Tqu3mnVXtFtZmAKo4He5gdI4FL9n0w29Cq', 'assets/uploads/users/8951663794319.png', '1', 1, 15, NULL, NULL, '2022-09-18 22:35:01', '2022-09-21 23:06:21'),
(9, 'companies', 'company@gmail.com', '1223333', '0101147882', '$2y$10$nJNwLC5JslOCIarWIwQxQ.oVIV83t7TRJFzaGBcn2sKi8i8vqHVbW', 'storage/uploads/users/YWdlbmN5LnBuZw==_1663533352.png', '0', 2, 15, NULL, NULL, '2022-09-18 22:35:52', '2022-10-23 11:31:21'),
(10, 'Project', 'project@gmail.com', '12345678', '12345678', '$2y$10$JVjFiQ4rxguzchPAxmjJOOHFR5V9OWiTrsgifbxHk.rc27fVoWpq2', 'storage/uploads/users/YWdlbmN5LnBuZw==_1663533397.png', '1', 3, 15, NULL, NULL, '2022-09-18 22:36:37', '2022-09-24 12:19:53'),
(21, 'Osama arafa', 'osama71@gmail.com', '1223333', '010114789881', '$2y$10$lZuFHq5ESPtaygJBXuEUCuOPZ2SqljFWjMohAes8xn1dDkyQSTYhK', '', '0', 2, 15, NULL, NULL, '2022-09-25 10:21:41', '2022-09-25 10:21:41'),
(23, 'YEHIA', 'osama@skjd.com', '0000', '01201554596', '$2y$10$QqXZ5nrEi.TDT.EKV4bOGuLyAnOF.uYs50/LMm6kwE316lvEeH/2.', '/tmp/phpFBo9Ff', '0', 4, 15, NULL, NULL, '2022-10-06 14:38:32', '2022-10-06 14:38:32'),
(26, 'osama', 'osama@skjd1.com', '1111111111', '012015545961', '$2y$10$Inz5fFQvoifP4ymDZsvXiuUF2WR.R8W5Ayn6ulMeCdR2QhUSwH99G', NULL, '0', 4, 15, NULL, NULL, '2022-10-10 13:01:47', '2022-10-10 13:01:47'),
(27, 'osama', 'osama@skjad1.com', '1111111111', '0120155459611', '$2y$10$P0nCRM/qPfdgJ8Y8go2XH.DGswKTKKh9HIzw5/wWZVH2cAMYJEZ6K', NULL, '0', 4, 15, NULL, NULL, '2022-10-10 13:01:58', '2022-10-10 13:01:58'),
(31, 'Osama arafa', 'osam17@gmail.com', '1223333', '01011478822', '$2y$10$9gFIAZG4sk18O0.LtXPb9ubZKF.O0tkWuWGcISN0590.RkUw8p91G', '', '0', 2, 15, NULL, NULL, '2022-10-10 13:09:29', '2022-10-10 13:09:29'),
(36, 'اسامه', 'osama11@skjd.com', '025566655', '0120155459', '$2y$10$ip2eBe3.sTxIfTjhesEQA.DK3DYZMAJ3sHAO3JIP.mdKd8O/Yclda', NULL, '0', 4, 15, NULL, NULL, '2022-10-11 10:51:49', '2022-10-11 10:51:49'),
(52, 'Osama arafa', 'osam175@gmail.com', '1223333', '010114788225', '$2y$10$FEpowgKLLwb5K33BnwdEs.KnSSB74iP3IFG08nuNzQMBUyd1/zINm', '', '0', 2, 15, NULL, NULL, '2022-10-11 16:11:30', '2022-10-11 16:11:30'),
(67, 'yv6v6llllllllll', 'ffghjuj', '95896', '998699', '$2y$10$tOtP47AyOE0.smXATUt2Ku/NJQLVCMnaSZvZKxacMHMZDW0c1tueu', '/tmp/phpZXX5hC', '0', 4, 15, NULL, NULL, '2022-10-13 13:35:40', '2022-10-13 13:37:55'),
(73, 'Osama Arafa', 'osamaarafa96@yahoo.com', NULL, NULL, 'dfsdfdsfvsdfsd', NULL, '0', 1, 15, NULL, NULL, '2022-10-18 15:39:51', '2022-10-18 15:39:51'),
(74, 'Ahmed Eltatawe', 'eltatawea@gmail.com', '1223333', '01011478820', NULL, 'storage/uploads/users/U2Vla1BuZy5jb21fc21va2UtZWZmZWN0LXBuZ181NDAzMzcgKDEpLnBuZw==_1666101840.png', '1', 1, 15, NULL, NULL, '2022-10-18 15:41:13', '2022-11-01 08:58:41'),
(85, 'Osama arafa', 'osamaarafa5@gmail.com', '1223333', '010011478', '$2y$10$JodlQUBShqG87uw2OJhs8OIqvfcQzAqAAgBAms0VhMb0PtG56v9um', '', '1', 1, 15, NULL, NULL, '2022-10-19 13:46:51', '2022-10-19 13:46:51'),
(86, 'Osama arafa', '5555@gmail.com', '1223333', '01078820', '$2y$10$fYHoqTylk3VQxP4I8uMeh.P9zb20lzYI5YHpWaKIjO2qMpYmIK18C', 'storage/uploads/users/U2Vla1BuZy5jb21fc21va2UtZWZmZWN0LXBuZ181NDAzMzcgKDEpLnBuZw==_1666689111.png', '1', 2, 15, NULL, NULL, '2022-10-19 13:51:30', '2022-10-25 11:11:51'),
(87, 'Yehiaaa', 'yykkndel@gmail.com', '010904396603', '+201090439660', '$2y$10$VsWGHcFzWcYm4mvHEnAAsuW58LYxk4cHCA0aejnCVh2fQNWRLLbPm', 'storage/uploads/users/cGVyc29uLnBuZw==_1666517998.png', '1', 2, 15, NULL, NULL, '2022-10-23 11:39:58', '2023-01-22 12:46:00'),
(89, 'get health', 'gethealth2022@gmail.com', NULL, NULL, NULL, 'https://lh3.googleusercontent.com/a/ALm5wu29gPCxCj4HuWU3eTRnT-24DestgK_SUrHiSe8x=s96-c', '1', 1, 15, NULL, NULL, '2022-10-24 10:47:41', '2022-11-02 14:09:02'),
(96, 'Osama Arafa', 'osamaarafa96@yahoo.com', NULL, NULL, NULL, 'https://graph.facebook.com/v3.3/2186065314913421/picture?type=normal', '0', 3, 15, NULL, NULL, '2022-10-25 13:29:07', '2022-10-25 13:29:07'),
(97, 'Osama Arafa', 'osamaarafa96@yahoo.com', NULL, NULL, NULL, 'https://graph.facebook.com/v3.3/2186065314913421/picture?type=normal', '0', 0, 15, NULL, NULL, '2022-10-25 13:31:14', '2022-10-25 13:31:14'),
(98, 'Osama arafa', 'topbusiness110@gmail.com', '1223333', '010788201444', '$2y$10$2JId.fNTC2wKH1Jov1F8UejW6RcV3RvtKFOX36bKmOjV.QUazheFC', 'storage/uploads/users/U2Vla1BuZy5jb21fc21va2UtZWZmZWN0LXBuZ181NDAzMzcgKDEpLnBuZw==_1666700382.png', '0', 2, 15, NULL, NULL, '2022-10-25 14:05:38', '2022-10-25 14:19:42'),
(100, 'Ahmad Yehia', 'eldapour@outlook.com', '+201122717960', '+201122717960', '$2y$10$FCNyhOQno5Z3cCak1M1xxO0vM1H4s//FVw6eBJH2eYdd7opDfgWVa', 'storage/uploads/users/aW1hZ2VfcGlja2VyNTU0OTMyNjQxMTEyODM0OTc2Ny5wbmc=_1666701053.png', '1', 2, 15, NULL, NULL, '2022-10-25 14:26:40', '2023-10-16 13:41:00'),
(101, 'Ahmad Yehia', 'yehia_yehia@gmail.com', '0000000', '000000', '$2y$10$FCNyhOQno5Z3cCak1M1xxO0vM1H4s//FVw6eBJH2eYdd7opDfgWVa', '/tmp/php68L15f', '1', 2, 15, NULL, NULL, '2022-10-26 13:17:06', '2022-10-26 13:17:06'),
(102, 'yehiaa', 'rr@gmail.com', '5588888', '555555', '$2y$10$FCNyhOQno5Z3cCak1M1xxO0vM1H4s//FVw6eBJH2eYdd7opDfgWVa', '/tmp/phpUZ9mpz', '1', 4, 15, NULL, NULL, '2022-10-30 14:20:06', '2022-10-30 14:20:06'),
(103, 'Osama arafa', 'osamaarafa@gmail.com', '1223333', '0100114780', '$2y$10$K05uR40TCTZdM3zQGWIt4.p./Zdcp0njGu9vUj7NrKymVTc5ggDd.', '', '1', 2, 15, NULL, NULL, '2022-10-31 09:03:05', '2022-10-31 09:03:05'),
(104, 'اساddd', 'osamaa@skajsad1.com', '1111111111', '0120155459611112', '$2y$10$ZxZgJXOzi9ndN1wpwuGUpuPJiDjOAL4zh5zB4byLSs9PszelEMQxm', NULL, '1', 4, 15, NULL, NULL, '2022-10-31 09:04:18', '2022-10-31 09:18:18'),
(105, 'Osama arafa', 'osamaarafa4@gmail.com', '1223333', '010114780', '$2y$10$rkL9.zhRy/uqfe5fojP66OFUvZqbWU1J4WXgiTgV5pTtgz6iygdZW', '', '1', 2, 15, '2022-11-09', NULL, '2022-10-31 09:36:59', '2022-10-31 09:36:59'),
(106, 'اسامه', 'osamaa@skaj.com', '1111111111', '012015542', '$2y$10$/yWdosSG1M/csIWzzYcHAuCw3133S.Cgo4ktjx/cp/U.VqdNRa3Cu', NULL, '1', 4, 15, NULL, NULL, '2022-11-01 15:32:53', '2022-11-01 15:32:53'),
(107, 'Beka Oskonbekov', 'bekaoskonbekov120@gmail.com', NULL, NULL, NULL, 'https://lh3.googleusercontent.com/a/ALm5wu0r1zJ_TL0s7oB4zQb_UniWu8BlbOd_q3COAQja=s96-c', '0', 0, 15, NULL, NULL, '2022-11-12 21:23:56', '2022-11-12 21:23:56'),
(108, 'mohamed faisal', 'hamodyadm4@gmail.com', NULL, NULL, NULL, 'https://lh3.googleusercontent.com/a/ALm5wu3ZZufQ5WX6gDnBxOLFND43NJO9BhAkf-5omY0CRA=s96-c', '0', 0, 15, NULL, NULL, '2022-11-16 08:46:52', '2022-11-16 08:46:52'),
(109, 'Ahmad Yehia', 'ahmad75yehia75@gmail.com', '1223333', '010904396600', '$2y$10$35MOHz9ZsTc7xiOta80bAuVupFhO21NAx3fh8G99cmtISl05QICpO', '', '1', 3, 15, '2022-12-01', NULL, '2022-11-16 09:46:14', '2022-11-16 09:46:14'),
(110, 'Ahmad Yehia', 'ahmad75yehia75@gmail.com2', '1223333', '0109043966002', '$2y$10$V2O5JnYPm6Zdkof1l7SGLucRjgHftGaSzUxfgjJGkCqaFuz.Yctyq', '', '1', 3, 15, '2022-12-01', NULL, '2022-11-16 09:51:00', '2022-11-16 09:51:00'),
(111, 'يحيي', 'ahmad75yehiar@gmail.com', '01088888', '010904396602', '$2y$10$nfDaCtKpkonBdf.7PhBZd.y3YJb.FJu5igewN4sC4cHGCrJ7Udmc2', '', '1', 3, 15, '2022-12-01', NULL, '2022-11-16 10:19:55', '2022-11-16 10:19:55'),
(112, 'يحيى', 'ahmad75yehiiia@gmail.com', '000000', '0109043966003', '$2y$10$Hwr2X6gOfVDyszjk1bM7c.d6PtPyj8ci1Mo/g62BA9t3fmRHXdkFi', '', '1', 3, 15, '2022-12-01', NULL, '2022-11-16 10:37:24', '2022-11-16 10:37:24'),
(113, 'يحيى', '75yehia@gmail.com', '04040450450', '0404040505', '$2y$10$lLTCCFRKl/.QamDcOJIW9OZS3.9vONL9Ua3mnNqCKnf2SIKj30xhK', 'storage/uploads/users/aW1hZ2VfcGlja2VyNzMwMzM1NjM1NjA5MzUwNTQ0OS5qcGc=_1669534108.jpg', '1', 2, 15, '2022-12-12', NULL, '2022-11-27 09:24:31', '2022-11-27 09:28:28'),
(114, 'hhhh', 'yy@gmail.com', '5', '5959', '$2y$10$i4CfQTwptEVlgbaoCCR5QOoylFUSWrR7i0V7w6XVYX3oOy2iQPNb.', '', '1', 3, 15, '2022-12-12', NULL, '2022-11-27 09:38:57', '2022-11-27 09:38:57'),
(115, 'uuu', 'tt@gmail.com', '333233232323', '33232332323', '$2y$10$bEw0qc3S5kjo1ZAWmpf1vOxX5bkTo2KuudCLQv3MWl8s96DJoZnea', '', '1', 2, 15, '2022-12-12', NULL, '2022-11-27 09:43:47', '2022-11-27 09:43:47'),
(116, 'vwvwwv', 'ff@gmail.com', '8865', '988', '$2y$10$q.c6QgqSlD2vxlFR9HgWvOGBu4d.d/L/lr4GUJRTBbhb26RhZG.1u', 'storage/uploads/users/aW1hZ2VfcGlja2VyOTE0MjU4MDY4NDUwMTE0MDg5Mi5qcGc=_1669537265.jpg', '1', 2, 15, '2022-12-12', NULL, '2022-11-27 10:21:05', '2022-11-27 10:42:24'),
(117, 'Ahmad Yehia', 'ahmad.yehia7717@gmail.com', '01090439660', '010904396660', '$2y$10$CZtLXlGcxaCL6764oMHWvOcSkCNV07CUd1N7J6ShYyIJNIwx1zzxC', 'storage/uploads/users/aW1hZ2VfcGlja2VyMzUwNjA4NTQ4MzUzNjY0MzgzMS5qcGc=_1669719712.jpg', '0', 3, 15, NULL, NULL, '2022-11-29 11:29:56', '2022-11-29 13:01:52'),
(118, 'found it', 'lostfounditapp@gmail.com', NULL, NULL, NULL, 'https://lh3.googleusercontent.com/a/ALm5wu1UnFO6RgZzalwReBDNN8JRhd1-7zlPNhJU_y4a=s96-c', '0', 0, 15, NULL, NULL, '2022-11-29 12:53:29', '2022-11-29 12:53:29'),
(119, 'yuyuyuy', 'osama0@gmail.com', '1090439990', '1090439990', '$2y$10$/jF/wqT0l2siU39HpwG5rewYRb2ZD9lRSwjePFan1DNMx0k33885i', 'storage/uploads/users/aW1hZ2VfcGlja2VyNTg4MDAwODkwOTcyODgxNzc5LmpwZw==_1670157305.jpg', '1', 2, 15, '2022-12-19', NULL, '2022-12-04 14:35:05', '2022-12-04 14:35:05'),
(120, 'erererer', 'ggoo@gmail.com', '1010100110', '1010101001', '$2y$10$RgdiUXW1tVgMNl5P9FTWd.NngVnMxzNU9tjHS2ORovxD4WIRryXdu', 'storage/uploads/users/aW1hZ2VfcGlja2VyMTM4MDk5NDcyMzUzNzU3MjIzMS5qcGc=_1670158563.jpg', '1', 3, 15, '2022-12-19', NULL, '2022-12-04 14:56:03', '2022-12-04 14:56:03'),
(121, 'abdo', 'abdo@gmail.com', '0034567890', '0034567890', '$2y$10$RrxjbyIX9HcV2n55WEffWuJC3CRAC1CS.RWQ3U9NRIFROKRUzDlmK', 'storage/uploads/users/aW1hZ2VfcGlja2VyMzgwOTQwMzM3Njk2MTQxNDkwMS5qcGc=_1670162135.jpg', '1', 1, 15, '2022-12-19', NULL, '2022-12-04 15:55:35', '2022-12-04 15:55:35'),
(122, 'احمد يحيى', 'yuyuyu@gmail.com', '1099109669', '1099109669', '$2y$10$P68I2iByrskMO.Jjv9XW9OOpQkNHhQPDXTPfQNO106rPXvAdjacGe', 'storage/uploads/users/aW1hZ2VfcGlja2VyOTA3NjIxODczNDc2NzU0NTY1OC5qcGc=_1670834348.jpg', '1', 2, 15, '2022-12-27', NULL, '2022-12-12 10:39:08', '2022-12-12 10:39:08'),
(123, 'يحيى', 'test@gmail.com', '7713170710', '7713170710', '$2y$10$XlF58b8gH.OKlkB.4Tfm.elL3VJ/VEFW.OkAo5vpdGz11bOKqtbeO', 'storage/uploads/users/aW1hZ2VfcGlja2VyMzMwMjI3MDIzNzk5OTE2Njc5Ni5qcGc=_1670836243.jpg', '1', 2, 15, '2022-12-27', NULL, '2022-12-12 11:10:43', '2022-12-12 11:10:43'),
(124, 'مستخدم جديد', 'rre@gmail.com', '1090439660', '+9642345678900', '$2y$10$FCNyhOQno5Z3cCak1M1xxO0vM1H4s//FVw6eBJH2eYdd7opDfgWVa', 'storage/uploads/users/aW1hZ2VfcGlja2VyNTQ5NDkwNTIzMzQ2MTQ3NzEzNy5qcGc=_1670843321.jpg', '1', 1, 15, '2022-12-27', NULL, '2022-12-12 13:08:41', '2022-12-12 13:20:06'),
(128, 'wattan', 'ww@gmail.com', '8080808080', '+208080808080', '$2y$10$XbHwuyBccqWPHBT2vJcVxuHyp6TLeMf0zj37VnF3jLykOTielsZJ.', '', '1', 2, 15, '2023-01-24', NULL, '2023-01-09 15:19:43', '2023-01-09 15:19:43'),
(139, 'mustafa', 'mustafa17falah@gmail.com', '7704687126', '+9647704687126', '$2y$10$lL.XHwLllBBq1vEM.wMBmez8uOO6yqFtsg2T8jwys91kaNKWdcOXq', 'storage/uploads/users/aW1hZ2VfcGlja2VyNDU5Nzc3MzY4OTMwNzU1NjEwNy5qcGc=_1675627116.jpg', '1', 1, 15, '2023-02-20', NULL, '2023-02-05 21:45:08', '2023-09-03 11:30:01'),
(140, 'Mustafa', 'mustafa17fla0h@gmail.com', '7804121999', '+9647804121999', '$2y$10$ykFzRbiFcva33J2yLZMVmO9Idg04HGOPH/rz7d6cGt5pXgy/LCaye', 'storage/uploads/users/SU1HXzIwMjMwMjE1XzE0NDUyNy5qcGc=_1693065029.jpg', '1', 1, 15, '2023-09-10', NULL, '2023-08-26 17:50:29', '2023-11-23 00:27:48'),
(141, 'mustafaF', 'mustafa@gmail.com', '+9647704687120', '+9647704687120', '$2y$10$Th4pH6TBDzIfbKpZiAg6yeHSHs6HAJDwarXkMlKm4IZa79l5CwIwi', '', '1', 2, 15, '2023-09-18', NULL, '2023-09-03 10:11:57', '2023-09-03 10:11:57'),
(144, 'abdullah alhumsi', 'abdullah.alhumsi@gmail.com', '1223333', '01061994949', '$2y$10$pLxPtCs.lKZLz.p63PcVR.3EJRQpwBZ4ieBr6U.O0KNILhGLoOwUS', '', '1', 2, 15, '2023-10-24', NULL, '2023-10-09 14:35:33', '2023-10-21 13:00:50'),
(146, 'mustafa falah', 'mustafarm17@gmail.com', '+207704687126', '+207704687126', '$2y$10$gmPligWzLilNvswgN.plmuBA.hcw.8KRuTnTcP.axwlnqxlWm6eMe', '', '0', 1, 15, '2023-11-05', NULL, '2023-10-21 13:07:32', '2023-10-21 13:07:46'),
(157, 'ahmed elsapagh', 'ahmed@gmail.com', '1223333', '01201709414', '$2y$10$2bjlhk5L3uKxFmWgIQj8OOhSbj09HdEMa2aZmPTgtn9Qyv6yff84S', '', '1', 2, 15, '2023-11-23', NULL, '2023-11-08 15:18:56', '2023-11-08 15:18:56'),
(158, 'اسامه', 'ahmeds@gmail.com', '1111111111', '012017094145', '$2y$10$UySe7yeCwwn2p5Q/vhkkk.p2t6i8cLu6OB96c1JyzgCyA7wLeigny', '/tmp/phpYekjsl', '1', 4, 15, NULL, NULL, '2023-11-09 11:03:19', '2023-11-09 11:03:19'),
(161, 'test', 'ahmedsss@gmail.com', '1201709414', '1201709414', '$2y$10$fpnQLae7ky5hW3lf.HN4..h1NKuxFsjczgbHw7eUpgrnli6ormE/2', '/tmp/phpQcE4xQ', '1', 4, 15, NULL, NULL, '2023-11-09 12:47:48', '2023-11-09 12:47:48'),
(162, 'test', 'ahmedmohamed23345@gmail.com', '08520852580', '08520852580', '$2y$10$.NUbrkwFUHPZNZtxBSs/yevVew9W53fkxvDEOWLtAbD4RSsQBZu0K', '/tmp/phprxcOuu', '1', 4, 15, NULL, NULL, '2023-11-09 13:16:12', '2023-11-09 13:16:12'),
(163, 'uuu', 'hh@gmail.com', '08520852583', '08520852583', '$2y$10$iTkTSTbK2oWllfiVe.SIOOkajFHLpEyuSpnUh4x.ARelfYqZgGej2', '/tmp/phpdiLgnX', '1', 4, 15, NULL, NULL, '2023-11-09 13:24:49', '2023-11-09 13:24:49'),
(171, 'ahmed elsapagh', 'ahmed1@gmail.com', '1223333', '01201709415', '$2y$10$9HW2OxPzF4bxBt4JfkK1fuOmiR2cc7/K3eWg2yTHp60qT13Klfocu', '', '1', 2, 15, '2023-11-27', NULL, '2023-11-12 09:27:44', '2023-11-12 09:27:44'),
(176, 'ahmed elsapagh2', 'ahmed2@gmail.com', '12233333333', '+9641201709412', '$2y$10$jSaW7SZ0xcBlTqafkSynEeFafIL5LFP.2eUuXaiyBTwdSo7boqzv.', '', '1', 2, 15, '2023-11-27', NULL, '2023-11-12 10:02:41', '2023-11-12 10:07:20');

-- --------------------------------------------------------

--
-- Table structure for table `views`
--

CREATE TABLE `views` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `viewable_type` varchar(255) NOT NULL,
  `viewable_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `views`
--

INSERT INTO `views` (`id`, `viewable_type`, `viewable_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\Post', 15, 3, '2022-09-25 16:42:45', '2022-09-25 16:42:45'),
(2, 'App\\Models\\Post', 20, 3, '2022-09-25 23:21:43', '2022-09-25 23:21:43'),
(3, 'App\\Models\\Post', 20, 22, '2022-09-25 23:24:03', '2022-09-25 23:24:03'),
(4, 'App\\Models\\Post', 20, 8, '2022-09-25 23:25:03', '2022-09-25 23:25:03'),
(5, 'App\\Models\\Post', 19, 22, '2022-09-26 00:42:13', '2022-09-26 00:42:13'),
(6, 'App\\Models\\Post', 23, 22, '2022-09-26 10:32:53', '2022-09-26 10:32:53'),
(7, 'App\\Models\\Post', 22, 22, '2022-09-26 10:33:12', '2022-09-26 10:33:12'),
(8, 'App\\Models\\Post', 1, 22, '2022-09-26 10:57:10', '2022-09-26 10:57:10'),
(9, 'App\\Models\\Post', 18, 22, '2022-09-26 11:16:23', '2022-09-26 11:16:23');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`);

--
-- Indexes for table `agents`
--
ALTER TABLE `agents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `agents_user_id_foreign` (`user_id`),
  ADD KEY `FK_company_id_user` (`company_id`);

--
-- Indexes for table `areas`
--
ALTER TABLE `areas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `classification_of_ads`
--
ALTER TABLE `classification_of_ads`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `companies`
--
ALTER TABLE `companies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_us`
--
ALTER TABLE `contact_us`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `files_of_projects_and_posts`
--
ALTER TABLE `files_of_projects_and_posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `files_of_projects_and_posts_projects_id_foreign` (`project_id`);

--
-- Indexes for table `firebase_tokens`
--
ALTER TABLE `firebase_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `firebase_tokens_user_id_foreign` (`user_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id_fk` (`user_id`);

--
-- Indexes for table `packages`
--
ALTER TABLE `packages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `packages_users`
--
ALTER TABLE `packages_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `packages_users_ibfk_1` (`user_id`),
  ADD KEY `package_id` (`package_id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `posts_agent_id_foreign` (`agent_id`),
  ADD KEY `posts_company_id_foreign` (`company_id`),
  ADD KEY `posts_area_id_foreign` (`area_id`);

--
-- Indexes for table `post_favourites`
--
ALTER TABLE `post_favourites`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_favourites_user_id_foreign` (`user_id`),
  ADD KEY `post_favourites_post_id_foreign` (`post_id`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`),
  ADD KEY `projects_agent_id_foreign` (`agent_id`),
  ADD KEY `projects_category_id_foreign` (`category_id`),
  ADD KEY `projects_company_id_foreign` (`company_id`),
  ADD KEY `projects_sub_category_id_foreign` (`sub_category_id`),
  ADD KEY `projects_user_id_foreign` (`user_id`);

--
-- Indexes for table `project_favourites`
--
ALTER TABLE `project_favourites`
  ADD PRIMARY KEY (`id`),
  ADD KEY `project_favourites_user_id_foreign` (`user_id`),
  ADD KEY `project_favourites_project_id_foreign` (`project_id`);

--
-- Indexes for table `project_payment_plans`
--
ALTER TABLE `project_payment_plans`
  ADD PRIMARY KEY (`id`),
  ADD KEY `project_payment_plans_project_id_foreign` (`project_id`);

--
-- Indexes for table `project_unit_details`
--
ALTER TABLE `project_unit_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `project_unit_details_project_id_foreign` (`project_id`);

--
-- Indexes for table `providers`
--
ALTER TABLE `providers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id_foreign` (`user_id`);

--
-- Indexes for table `ratings`
--
ALTER TABLE `ratings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reports`
--
ALTER TABLE `reports`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reports_user_id_foreign` (`user_id`),
  ADD KEY `reports_post_id_foreign` (`post_id`),
  ADD KEY `reports_project_id_foreign` (`project_id`);

--
-- Indexes for table `reset_code_passwords`
--
ALTER TABLE `reset_code_passwords`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reset_code_passwords_email_index` (`email`);

--
-- Indexes for table `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rooms_from_user_id_foreign` (`from_user_id`),
  ADD KEY `rooms_to_user_id_foreign` (`to_user_id`),
  ADD KEY `rooms_post_id_foreign` (`post_id`),
  ADD KEY `rooms_project_id_foreign` (`project_id`);

--
-- Indexes for table `room_messages`
--
ALTER TABLE `room_messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `room_messages_from_user_id_foreign` (`from_user_id`),
  ADD KEY `room_messages_to_user_id_foreign` (`to_user_id`),
  ADD KEY `room_messages_room_id_foreign` (`room_id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services_of_posts`
--
ALTER TABLE `services_of_posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `services_of_posts_service_id_foreign` (`service_id`),
  ADD KEY `services_of_posts_post_id_foreign` (`post_id`),
  ADD KEY `services_of_posts_project_id_foreign` (`project_id`);

--
-- Indexes for table `setting`
--
ALTER TABLE `setting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sub_areas`
--
ALTER TABLE `sub_areas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sub_areas_area_id_foreign` (`area_id`);

--
-- Indexes for table `sub_categories`
--
ALTER TABLE `sub_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sub_categories_category_id_foreign` (`category_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `views`
--
ALTER TABLE `views`
  ADD PRIMARY KEY (`id`),
  ADD KEY `views_viewable_type_viewable_id_index` (`viewable_type`,`viewable_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `agents`
--
ALTER TABLE `agents`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `areas`
--
ALTER TABLE `areas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `classification_of_ads`
--
ALTER TABLE `classification_of_ads`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `companies`
--
ALTER TABLE `companies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=112;

--
-- AUTO_INCREMENT for table `contact_us`
--
ALTER TABLE `contact_us`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `files_of_projects_and_posts`
--
ALTER TABLE `files_of_projects_and_posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=168;

--
-- AUTO_INCREMENT for table `firebase_tokens`
--
ALTER TABLE `firebase_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=178;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `packages`
--
ALTER TABLE `packages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=137;

--
-- AUTO_INCREMENT for table `packages_users`
--
ALTER TABLE `packages_users`
  MODIFY `id` tinyint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=127;

--
-- AUTO_INCREMENT for table `post_favourites`
--
ALTER TABLE `post_favourites`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT for table `project_favourites`
--
ALTER TABLE `project_favourites`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `project_payment_plans`
--
ALTER TABLE `project_payment_plans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT for table `project_unit_details`
--
ALTER TABLE `project_unit_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `providers`
--
ALTER TABLE `providers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `ratings`
--
ALTER TABLE `ratings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `reports`
--
ALTER TABLE `reports`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `reset_code_passwords`
--
ALTER TABLE `reset_code_passwords`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT for table `rooms`
--
ALTER TABLE `rooms`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `room_messages`
--
ALTER TABLE `room_messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1229;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `services_of_posts`
--
ALTER TABLE `services_of_posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=337;

--
-- AUTO_INCREMENT for table `setting`
--
ALTER TABLE `setting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `sub_areas`
--
ALTER TABLE `sub_areas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `sub_categories`
--
ALTER TABLE `sub_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=177;

--
-- AUTO_INCREMENT for table `views`
--
ALTER TABLE `views`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `agents`
--
ALTER TABLE `agents`
  ADD CONSTRAINT `FK_company_id_user` FOREIGN KEY (`company_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `agents_ibfk_2` FOREIGN KEY (`company_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `agents_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `files_of_projects_and_posts`
--
ALTER TABLE `files_of_projects_and_posts`
  ADD CONSTRAINT `files_of_projects_and_posts_projects_id_foreign` FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `firebase_tokens`
--
ALTER TABLE `firebase_tokens`
  ADD CONSTRAINT `firebase_tokens_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `notifications`
--
ALTER TABLE `notifications`
  ADD CONSTRAINT `user_id_fk` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `post_favourites`
--
ALTER TABLE `post_favourites`
  ADD CONSTRAINT `post_favourites_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `post_favourites_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `projects`
--
ALTER TABLE `projects`
  ADD CONSTRAINT `projects_agent_id_foreign` FOREIGN KEY (`agent_id`) REFERENCES `agents` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `projects_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `projects_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `projects_sub_category_id_foreign` FOREIGN KEY (`sub_category_id`) REFERENCES `sub_categories` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `projects_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `project_favourites`
--
ALTER TABLE `project_favourites`
  ADD CONSTRAINT `project_favourites_project_id_foreign` FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `project_favourites_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `project_payment_plans`
--
ALTER TABLE `project_payment_plans`
  ADD CONSTRAINT `project_payment_plans_project_id_foreign` FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `project_unit_details`
--
ALTER TABLE `project_unit_details`
  ADD CONSTRAINT `project_unit_details_project_id_foreign` FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `providers`
--
ALTER TABLE `providers`
  ADD CONSTRAINT `user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `reports`
--
ALTER TABLE `reports`
  ADD CONSTRAINT `reports_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `reports_project_id_foreign` FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `reports_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `rooms`
--
ALTER TABLE `rooms`
  ADD CONSTRAINT `rooms_from_user_id_foreign` FOREIGN KEY (`from_user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `rooms_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `rooms_project_id_foreign` FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `rooms_to_user_id_foreign` FOREIGN KEY (`to_user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `room_messages`
--
ALTER TABLE `room_messages`
  ADD CONSTRAINT `room_messages_from_user_id_foreign` FOREIGN KEY (`from_user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `room_messages_room_id_foreign` FOREIGN KEY (`room_id`) REFERENCES `rooms` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `room_messages_to_user_id_foreign` FOREIGN KEY (`to_user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `sub_areas`
--
ALTER TABLE `sub_areas`
  ADD CONSTRAINT `sub_areas_area_id_foreign` FOREIGN KEY (`area_id`) REFERENCES `areas` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `sub_categories`
--
ALTER TABLE `sub_categories`
  ADD CONSTRAINT `sub_categories_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
