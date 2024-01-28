-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 11, 2022 at 04:57 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `watan`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `password`, `image`, `created_at`, `updated_at`) VALUES
(1, 'احمد يحيي', 'admin@admin.com', '$2y$10$.JU9IVY4Tf5LvpN2UFxh3upmuTgpzWSX7Ddoqtx.k78jD5nKeWLNC', 'assets/uploads/admins/66161658316929.webp', NULL, '2022-07-20 11:35:29');

-- --------------------------------------------------------

--
-- Table structure for table `agents`
--

CREATE TABLE `agents` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name_ar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name_en` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name_ku` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `about` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `whatsapp` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `company_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `agents`
--

INSERT INTO `agents` (`id`, `name_ar`, `name_en`, `name_ku`, `image`, `about`, `phone`, `phone_code`, `whatsapp`, `user_id`, `company_id`, `created_at`, `updated_at`) VALUES
(5, 'أحمد طارق عباس يحيي', 'Ahmed Tariq Abbas Yahya', NULL, NULL, 'مهندس اول استشاري بدرجة امتياز مع مرتبة الشرف', '1054778789987', '+20', '+201098380656', 1, 3, '2022-08-24 13:38:42', '2022-08-24 13:38:42'),
(6, 'عبدو', 'abdo', NULL, 'assets/uploads/agents/19171664180794.jpg', 'szxsc', '01011424958', '000111', '1223443', 3, 5, '2022-09-26 08:26:34', '2022-09-26 08:26:34'),
(7, 'عبدو2', 'abdo2', NULL, 'assets/uploads/agents/9051664181168.jpg', 'szxsc22222', '01011478844', '00011122', '123456722', 3, 5, '2022-09-26 08:32:48', '2022-09-26 08:32:48');

-- --------------------------------------------------------

--
-- Table structure for table `areas`
--

CREATE TABLE `areas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name_ar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name_en` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name_ko` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `areas`
--

INSERT INTO `areas` (`id`, `name_ar`, `name_en`, `name_ko`, `image`, `created_at`, `updated_at`) VALUES
(1, 'بغداد', 'Baghdad', NULL, 'assets/uploads/area/35041661158340.webp', '2022-08-21 07:44:37', '2022-08-22 08:52:20'),
(6, 'البصرة', 'Basra', 'بەسرە', 'assets/uploads/area/47011661158443.webp', '2022-08-22 08:54:03', '2022-09-26 10:27:55');

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name_ar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name_en` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name_ko` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description_ar` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description_en` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description_ko` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `name_ar`, `name_en`, `name_ko`, `image`, `description_ar`, `description_en`, `description_ko`, `created_at`, `updated_at`) VALUES
(3, 'توصيل فوري', 'Fast Delivery', 'گەیاندنی دەستبەجێ', 'assets/uploads/blogs/61181661266380.png', '<p><strong>النقاط هو&nbsp;</strong></p>', '<p><em><strong>Hello World</strong></em></p>', '<p>سڵاو جیهان</p>', '2022-08-22 12:19:54', '2022-09-26 12:14:17'),
(4, 'تفكير فى كل ما هو جديد', 'think about all new', 'بیر لە هەموو شتێکی نوێ بکەرەوە', 'assets/uploads/blogs/64021663529517.png', 'اى حاجه يا عم الحج', 'any thing ya basha', 'شتێک هەیە مامی حەج؟', '2022-09-18 21:31:57', '2022-09-26 12:12:03');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name_ar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_en` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name_ko` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name_ar`, `name_en`, `name_ko`, `image`, `created_at`, `updated_at`) VALUES
(13, 'صوره', 'image test', 'وێنە', 'assets/uploads/blogs/58501662884595.png', '2022-09-11 10:23:15', '2022-09-26 12:22:50'),
(14, 'مشروع', 'project', 'پرۆژە', 'assets/uploads/blogs/55501663231201.png', '2022-09-15 10:40:01', '2022-09-26 12:17:48'),
(15, 'شركه', 'company', 'کۆمپانیا', 'assets/uploads/blogs/4501663231254.png', '2022-09-15 10:40:54', '2022-09-26 12:16:18'),
(16, 'تجربي', 'test', 'هەوڵدان', 'assets/uploads/blogs/74451663233031.png', '2022-09-15 11:10:31', '2022-09-26 12:15:06'),
(18, 'مشروع صغير', 'small project', 'پڕۆژەی بچووک', 'assets/uploads/blogs/26851664185923.jpg', '2022-09-26 09:48:25', '2022-09-26 09:52:03');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `classification_of_ads`
--

INSERT INTO `classification_of_ads` (`id`, `name_ar`, `name_en`, `name_ko`, `image`, `created_at`, `updated_at`) VALUES
(17, 'عبدو', 'abdo', 'بیر لە هەموو شتێکی نوێ بکەرەوە', '/classification_of_ads/36411664281249.webp', '2022-09-27 12:20:49', '2022-09-27 12:20:49'),
(18, 'مشروع صغير', 'small project', 'abdo ko', '/classification_of_ads/76441664281516.webp', '2022-09-27 12:25:16', '2022-09-27 12:25:16'),
(19, 'مشروع 2b', 'small projectbb', 'بیر لە هەموو شتێکی نوێ بکەرەوەbb', '/classification_of_ads/85281664368238.webp', '2022-09-28 05:13:52', '2022-09-28 12:30:39');

-- --------------------------------------------------------

--
-- Table structure for table `companies`
--

CREATE TABLE `companies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `facebook` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instagram` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `snapchat` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `latitude` double DEFAULT NULL,
  `longitude` double DEFAULT NULL,
  `about_ar` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `about_en` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `companies`
--

INSERT INTO `companies` (`id`, `facebook`, `instagram`, `twitter`, `snapchat`, `latitude`, `longitude`, `about_ar`, `about_en`, `user_id`, `created_at`, `updated_at`) VALUES
(2, 'facebook.com', 'instagram.com', 'twitter.com', 'snapchat.com', NULL, NULL, 'asdfghjk', NULL, 3, '2022-09-07 17:02:38', '2022-09-07 17:02:38'),
(3, 'https://www.facebook.com/', 'https://www.instagram.com/', 'https://www.twitter.com/', NULL, 33.20554858, 30.20554858, 'شركة هوم تاون من كبرى الشركات العاملة في قطاع العقارات، وبرزت hometown developments من بين مئات الشركات الأخرى بفضل مشروعاتها العصرية التي تراعي رغبات ومتطلبات عملائها، وتضمن توفير أقصى درجات الراحة والمتعة لهم، لذلك من الطبيعي أن تحتل مركز رائد في القطاع العقاري.', 'Hometown is one of the largest companies operating in the real estate sector, and hometown developments has emerged among hundreds of other companies thanks to its modern projects that take into account the desires and requirements of its customers, and ensure the utmost comfort and pleasure for them, so it is natural to occupy a leading position in the real estate sector.', 1, '2022-08-24 13:34:29', '2022-08-24 13:34:29'),
(5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, '2022-09-08 09:06:14', '2022-09-08 09:06:14'),
(6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, '2022-09-08 11:37:22', '2022-09-08 11:37:22'),
(7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, '2022-09-12 14:09:09', '2022-09-12 14:09:09'),
(8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, '2022-09-12 16:24:31', '2022-09-12 16:24:31'),
(9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, '2022-09-12 16:39:14', '2022-09-12 16:39:14'),
(10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, '2022-09-12 16:51:13', '2022-09-12 16:51:13'),
(11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, '2022-09-12 16:51:36', '2022-09-12 16:51:36'),
(12, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, '2022-09-13 09:57:01', '2022-09-13 09:57:01'),
(13, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, '2022-09-13 14:55:14', '2022-09-13 14:55:14'),
(14, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, '2022-09-14 09:39:01', '2022-09-14 09:39:01'),
(15, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, '2022-09-14 14:29:15', '2022-09-14 14:29:15'),
(16, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, '2022-09-14 14:29:36', '2022-09-14 14:29:36'),
(17, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, '2022-09-14 14:30:39', '2022-09-14 14:30:39'),
(18, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, '2022-09-14 14:32:24', '2022-09-14 14:32:24'),
(19, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, '2022-09-14 14:33:04', '2022-09-14 14:33:04'),
(20, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, '2022-09-14 14:45:47', '2022-09-14 14:45:47'),
(21, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, '2022-09-14 14:45:47', '2022-09-14 14:45:47'),
(22, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, '2022-09-14 14:47:17', '2022-09-14 14:47:17'),
(23, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, '2022-09-14 14:47:59', '2022-09-14 14:47:59'),
(24, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, '2022-09-14 14:53:58', '2022-09-14 14:53:58'),
(25, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, '2022-09-17 09:37:40', '2022-09-17 09:37:40'),
(26, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, '2022-09-17 09:38:15', '2022-09-17 09:38:15'),
(27, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, '2022-09-17 09:38:59', '2022-09-17 09:38:59'),
(28, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, '2022-09-17 10:08:01', '2022-09-17 10:08:01'),
(29, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, '2022-09-17 10:08:51', '2022-09-17 10:08:51'),
(30, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, '2022-09-17 10:09:54', '2022-09-17 10:09:54'),
(31, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, '2022-09-17 10:29:19', '2022-09-17 10:29:19'),
(32, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, '2022-09-17 10:38:45', '2022-09-17 10:38:45'),
(33, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, '2022-09-17 16:43:12', '2022-09-17 16:43:12'),
(34, 'facebook.com', 'instagram.com', 'twitter.com', 'snapchat.com', NULL, NULL, NULL, NULL, 4, '2022-09-18 10:31:13', '2022-09-18 10:31:13'),
(35, 'facebook.com', 'instagram.com', 'twitter.com', 'snapchat.com', NULL, NULL, NULL, NULL, 5, '2022-09-18 11:22:43', '2022-09-18 11:22:43'),
(36, 'facebook.com', 'instagram.com', 'twitter.com', 'snapchat.com', NULL, NULL, NULL, NULL, 6, '2022-09-18 12:54:36', '2022-09-18 12:54:36'),
(37, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6, '2022-09-18 12:57:05', '2022-09-18 12:57:05'),
(38, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6, '2022-09-18 13:00:07', '2022-09-18 13:00:07'),
(39, 'facebook.com', 'instagram.com', 'twitter.com', 'snapchat.com', NULL, NULL, NULL, NULL, 7, '2022-09-18 13:03:14', '2022-09-18 13:03:14'),
(40, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9, '2022-09-18 22:35:52', '2022-09-18 22:35:52'),
(41, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10, '2022-09-18 22:36:37', '2022-09-18 22:36:37'),
(42, 'facebook.com', 'instagram.com', 'twitter.com', 'snapchat.com', NULL, NULL, NULL, NULL, 11, '2022-09-19 09:29:07', '2022-09-19 09:29:07'),
(43, 'facebook.com', 'instagram.com', 'twitter.com', 'snapchat.com', NULL, NULL, NULL, NULL, 12, '2022-09-19 09:32:42', '2022-09-19 09:32:42'),
(44, 'facebook.com', 'instagram.com', 'twitter.com', 'snapchat.com', NULL, NULL, NULL, NULL, 13, '2022-09-19 09:33:13', '2022-09-19 09:33:13'),
(45, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14, '2022-09-19 09:33:54', '2022-09-19 09:33:54'),
(46, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15, '2022-09-19 09:57:41', '2022-09-19 09:57:41');

-- --------------------------------------------------------

--
-- Table structure for table `contact_us`
--

CREATE TABLE `contact_us` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contact_us`
--

INSERT INTO `contact_us` (`id`, `name`, `email`, `subject`, `message`, `created_at`, `updated_at`) VALUES
(1, 'محمد خالد', 'ahmed@gmail.com', 'استفسار', 'اريد طريقة الدخول للتطبيق من فضلكم', '2022-09-14 11:34:38', '2022-09-14 11:34:38');

-- --------------------------------------------------------

--
-- Table structure for table `files_of_projects_and_posts`
--

CREATE TABLE `files_of_projects_and_posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `project_id` bigint(20) UNSIGNED DEFAULT NULL,
  `post_id` bigint(20) UNSIGNED DEFAULT NULL,
  `attachment` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` enum('image','video','file') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'image',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
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
-- Table structure for table `packages`
--

CREATE TABLE `packages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `value` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(225) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `packages`
--

INSERT INTO `packages` (`id`, `value`, `type`, `created_at`, `updated_at`) VALUES
(126, '30', 'monthly', '2022-10-10 11:00:12', NULL),
(127, '365', 'years', '2022-10-10 11:02:31', NULL),
(128, '90', '3 month', '2022-10-10 11:02:00', '2022-10-10 11:03:20'),
(129, '7', 'weekly', '2022-10-10 11:05:26', NULL);

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
  `status` enum('sale','rent') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `views` bigint(20) NOT NULL DEFAULT 0,
  `title_ar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description_ar` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_en` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description_en` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_ku` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description_ku` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `furniture` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` double DEFAULT NULL,
  `currency` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'USD',
  `size` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bedroom` int(11) DEFAULT NULL,
  `baby_room` int(11) DEFAULT NULL,
  `kitchen` int(11) DEFAULT NULL,
  `reception_room` int(11) DEFAULT NULL,
  `living_room` int(11) DEFAULT NULL,
  `dining_room` int(11) DEFAULT NULL,
  `bath_room` int(11) DEFAULT NULL,
  `advertizer_name_ar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `advertizer_name_en` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `advertizer_name_ku` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `whatsapp` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `latitude` double DEFAULT NULL,
  `longitude` double DEFAULT NULL,
  `location_name_ar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location_name_en` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location_name_ku` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_sold` tinyint(4) NOT NULL DEFAULT 0,
  `is_inves_bed` tinyint(1) NOT NULL DEFAULT 0,
  `agent_id` bigint(20) UNSIGNED DEFAULT NULL,
  `company_id` bigint(20) UNSIGNED DEFAULT NULL,
  `area_id` bigint(20) UNSIGNED DEFAULT NULL,
  `sub_area_id` bigint(20) UNSIGNED DEFAULT NULL,
  `category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `sub_category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `status`, `phone`, `phone_code`, `views`, `title_ar`, `description_ar`, `title_en`, `description_en`, `title_ku`, `description_ku`, `furniture`, `type`, `price`, `currency`, `size`, `bedroom`, `baby_room`, `kitchen`, `reception_room`, `living_room`, `dining_room`, `bath_room`, `advertizer_name_ar`, `advertizer_name_en`, `advertizer_name_ku`, `whatsapp`, `latitude`, `longitude`, `location_name_ar`, `location_name_en`, `location_name_ku`, `is_sold`, `is_inves_bed`, `agent_id`, `company_id`, `area_id`, `sub_area_id`, `category_id`, `sub_category_id`, `user_id`, `created_at`, `updated_at`) VALUES
(14, NULL, NULL, NULL, 0, 'صصصصب', NULL, NULL, NULL, NULL, NULL, '0', NULL, 2586, 'USD', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 5, 2, NULL, NULL, NULL, NULL, 1, '2022-10-10 13:52:19', NULL),
(15, NULL, NULL, NULL, 0, 'صصصص', NULL, NULL, NULL, NULL, NULL, '0', NULL, 517, 'USD', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 3, '2022-10-10 13:52:13', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_id` bigint(20) UNSIGNED DEFAULT NULL,
  `agent_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `sub_category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `latitude` double DEFAULT NULL,
  `longitude` double DEFAULT NULL,
  `min_price` double DEFAULT NULL,
  `max_price` double DEFAULT NULL,
  `project_status` enum('new','ongoing','finished') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'new',
  `area_range` double DEFAULT NULL,
  `min_price_of_meter` double DEFAULT NULL,
  `max_price_of_meter` double DEFAULT NULL,
  `desc` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_terms` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_invested` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`id`, `name`, `company_id`, `agent_id`, `user_id`, `category_id`, `sub_category_id`, `latitude`, `longitude`, `min_price`, `max_price`, `project_status`, `area_range`, `min_price_of_meter`, `max_price_of_meter`, `desc`, `payment_terms`, `payment_details`, `is_invested`, `created_at`, `updated_at`) VALUES
(6, 'sdsa', NULL, 5, 5, NULL, NULL, NULL, NULL, NULL, NULL, 'new', NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL);

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ratings`
--

INSERT INTO `ratings` (`id`, `name_ar`, `name_en`, `name_ko`, `image`, `updated_at`, `created_at`) VALUES
(2, 'مشروع صغير', 'abdo', 'پاککردنەوە', '/classification_of_ads/19181664371002.webp', '2022-09-28 13:16:42', '2022-09-28 13:02:45');

-- --------------------------------------------------------

--
-- Table structure for table `reports`
--

CREATE TABLE `reports` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `post_id` bigint(20) UNSIGNED DEFAULT NULL,
  `project_id` bigint(20) UNSIGNED DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reports`
--

INSERT INTO `reports` (`id`, `user_id`, `post_id`, `project_id`, `description`, `created_at`, `updated_at`) VALUES
(11, NULL, NULL, 6, 'asdffdsa', NULL, NULL),
(12, 5, NULL, NULL, 'asdffdsa', NULL, NULL),
(13, 5, NULL, 6, 'asdffdsa', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name_ar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name_en` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name_ko` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `name_ar`, `name_en`, `name_ko`, `image`, `icon`, `created_at`, `updated_at`) VALUES
(1, 'تنظيف', 'clean', 'پاککردنەوە', 'assets/uploads/service/images/19821661162251.webp', 'assets/uploads/service/icons/66431661330498.png', '2022-08-22 09:57:31', '2022-09-26 12:10:37'),
(2, 'اثاث', 'fignature', 'بەسرە...', 'assets/uploads/service/images/18761661162522.webp', 'assets/uploads/service/icons/11661661330458.png', '2022-08-22 10:02:02', '2022-09-26 12:02:02'),
(5, 'عبدو', 'abdo', 'پاککردنەوەe', NULL, 'assets/uploads/service/icons/45731664205079.jpg', '2022-09-26 15:11:19', '2022-09-26 15:11:19'),
(6, 'عبدو2e', 'abdoe', 'بەسرە...re', NULL, 'assets/uploads/service/icons/16291664205265.jpg', '2022-09-26 15:14:25', '2022-09-26 15:14:25'),
(7, 'عبدو22', 'abdo22', 'بەسرە22', NULL, 'assets/uploads/service/icons/48181664252765.jpg', '2022-09-27 04:26:05', '2022-09-27 04:26:05');

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
(1, 2, 1, 1, '2022-05-21 07:00:39', '2022-05-21 07:00:39');

-- --------------------------------------------------------

--
-- Table structure for table `setting`
--

CREATE TABLE `setting` (
  `id` int(11) NOT NULL,
  `about_ar` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `about_en` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `terms_ar` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `terms_en` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `privacy_ar` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `privacy_en` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `setting`
--

INSERT INTO `setting` (`id`, `about_ar`, `about_en`, `terms_ar`, `terms_en`, `privacy_ar`, `privacy_en`) VALUES
(2, '<p>ما هو لوريم إيبسوم؟ لوريم إيبسوم هو ببساطة نص شكلي يستخدم في صناعة الطباعة والتنضيد. كان Lorem Ipsum هو النص الوهمي القياسي في الصناعة منذ القرن الخامس عشر الميلادي ، عندما أخذت طابعة غير معروفة لوحًا من النوع وتدافعت عليه لعمل كتاب عينة. لقد نجت ليس فقط خمسة قرون ، ولكن أيضًا القفزة في التنضيد الإلكتروني ، وظلت دون تغيير جوهري. تم نشره في الستينيات من القرن الماضي بإصدار أوراق Letraset التي تحتوي على مقاطع Lorem Ipsum ، ومؤخرًا مع برامج النشر المكتبي مثل Aldus PageMaker بما في ذلك إصدارات Lorem Ipsum. لماذا نستخدمه؟ هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها. الهدف من استخدام لوريم إيبسوم هو أنه يحتوي على توزيع طبيعي -إلى حد ما- للأحرف ، بدلاً من استخدام \"هنا يوجد محتوى نصي ، هنا يوجد محتوى نصي\" ، مما يجعلها تبدو وكأنها إنجليزية قابلة للقراءة. تستخدم العديد من حزم النشر المكتبي ومحرري صفحات الويب الآن Lorem Ipsum كنص نموذج افتراضي ، وسيكشف البحث عن \"lorem ipsum\" عن العديد من مواقع الويب التي لا تزال في مهدها. تطورت إصدارات مختلفة على مر السنين ، أحيانًا عن طريق الصدفة ، وأحيانًا عن قصد (روح الدعابة المحقونة وما شابه ذلك). حيث أنها لا تأتي من؟ خلافًا للاعتقاد الشائع ، فإن Lorem Ipsum ليس مجرد نص عشوائي. لها جذور في قطعة من الأدب اللاتيني الكلاسيكي من 45 قبل الميلاد ، مما يجعلها أكثر من 2000 عام. قام ريتشارد مكلينتوك ، الأستاذ اللاتيني في كلية هامبدن سيدني في فرجينيا ، بالبحث عن واحدة من أكثر الكلمات اللاتينية غموضًا ، consectetur ، من مقطع لوريم إيبسوم ، وتصفح اقتباسات الكلمة في الأدب الكلاسيكي ، اكتشف المصدر الذي لا شك فيه. يأتي Lorem Ipsum من الأقسام 1.10.32 و 1.10.33 من \"de Finibus Bonorum et Malorum\" (أقصى الخير والشر) بقلم شيشرون ، الذي كتبه عام 45 قبل الميلاد. هذا الكتاب عبارة عن أطروحة حول نظرية الأخلاق ، وقد حظيت بشعبية كبيرة خلال عصر النهضة. السطر الأول من Lorem Ipsum ، \"Lorem ipsum dolor sit amet ..\" ، يأتي من سطر في القسم 1.10.32.</p>', '<p>ما هو لوريم إيبسوم؟ لوريم إيبسوم هو ببساطة نص شكلي يستخدم في صناعة الطباعة والتنضيد. كان Lorem Ipsum هو النص الوهمي القياسي في الصناعة منذ القرن الخامس عشر الميلادي ، عندما أخذت طابعة غير معروفة لوحًا من النوع وتدافعت عليه لعمل كتاب عينة. لقد نجت ليس فقط خمسة قرون ، ولكن أيضًا القفزة في التنضيد الإلكتروني ، وظلت دون تغيير جوهري. تم نشره في الستينيات من القرن الماضي بإصدار أوراق Letraset التي تحتوي على مقاطع Lorem Ipsum ، ومؤخرًا مع برامج النشر المكتبي مثل Aldus PageMaker بما في ذلك إصدارات Lorem Ipsum. لماذا نستخدمه؟ هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها. الهدف من استخدام لوريم إيبسوم هو أنه يحتوي على توزيع طبيعي -إلى حد ما- للأحرف ، بدلاً من استخدام \"هنا يوجد محتوى نصي ، هنا يوجد محتوى نصي\" ، مما يجعلها تبدو وكأنها إنجليزية قابلة للقراءة. تستخدم العديد من حزم النشر المكتبي ومحرري صفحات الويب الآن Lorem Ipsum كنص نموذج افتراضي ، وسيكشف البحث عن \"lorem ipsum\" عن العديد من مواقع الويب التي لا تزال في مهدها. تطورت إصدارات مختلفة على مر السنين ، أحيانًا عن طريق الصدفة ، وأحيانًا عن قصد (روح الدعابة المحقونة وما شابه ذلك). حيث أنها لا تأتي من؟ خلافًا للاعتقاد الشائع ، فإن Lorem Ipsum ليس مجرد نص عشوائي. لها جذور في قطعة من الأدب اللاتيني الكلاسيكي من 45 قبل الميلاد ، مما يجعلها أكثر من 2000 عام. قام ريتشارد مكلينتوك ، الأستاذ اللاتيني في كلية هامبدن سيدني في فرجينيا ، بالبحث عن واحدة من أكثر الكلمات اللاتينية غموضًا ، consectetur ، من مقطع لوريم إيبسوم ، وتصفح اقتباسات الكلمة في الأدب الكلاسيكي ، اكتشف المصدر الذي لا شك فيه. يأتي Lorem Ipsum من الأقسام 1.10.32 و 1.10.33 من \"de Finibus Bonorum et Malorum\" (أقصى الخير والشر) بقلم شيشرون ، الذي كتبه عام 45 قبل الميلاد. هذا الكتاب عبارة عن أطروحة حول نظرية الأخلاق ، وقد حظيت بشعبية كبيرة خلال عصر النهضة. السطر الأول من Lorem Ipsum ، \"Lorem ipsum dolor sit amet ..\" ، يأتي من سطر في القسم 1.10.32.</p>', '<p>ما هو لوريم إيبسوم؟ لوريم إيبسوم هو ببساطة نص شكلي يستخدم في صناعة الطباعة والتنضيد. كان Lorem Ipsum هو النص الوهمي القياسي في الصناعة منذ القرن الخامس عشر الميلادي ، عندما أخذت طابعة غير معروفة لوحًا من النوع وتدافعت عليه لعمل كتاب عينة. لقد نجت ليس فقط خمسة قرون ، ولكن أيضًا القفزة في التنضيد الإلكتروني ، وظلت دون تغيير جوهري. تم نشره في الستينيات من القرن الماضي بإصدار أوراق Letraset التي تحتوي على مقاطع Lorem Ipsum ، ومؤخرًا مع برامج النشر المكتبي مثل Aldus PageMaker بما في ذلك إصدارات Lorem Ipsum. لماذا نستخدمه؟ هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها. الهدف من استخدام لوريم إيبسوم هو أنه يحتوي على توزيع طبيعي -إلى حد ما- للأحرف ، بدلاً من استخدام \"هنا يوجد محتوى نصي ، هنا يوجد محتوى نصي\" ، مما يجعلها تبدو وكأنها إنجليزية قابلة للقراءة. تستخدم العديد من حزم النشر المكتبي ومحرري صفحات الويب الآن Lorem Ipsum كنص نموذج افتراضي ، وسيكشف البحث عن \"lorem ipsum\" عن العديد من مواقع الويب التي لا تزال في مهدها. تطورت إصدارات مختلفة على مر السنين ، أحيانًا عن طريق الصدفة ، وأحيانًا عن قصد (روح الدعابة المحقونة وما شابه ذلك). حيث أنها لا تأتي من؟ خلافًا للاعتقاد الشائع ، فإن Lorem Ipsum ليس مجرد نص عشوائي. لها جذور في قطعة من الأدب اللاتيني الكلاسيكي من 45 قبل الميلاد ، مما يجعلها أكثر من 2000 عام. قام ريتشارد مكلينتوك ، الأستاذ اللاتيني في كلية هامبدن سيدني في فرجينيا ، بالبحث عن واحدة من أكثر الكلمات اللاتينية غموضًا ، consectetur ، من مقطع لوريم إيبسوم ، وتصفح اقتباسات الكلمة في الأدب الكلاسيكي ، اكتشفf المصدر الذي لا شك فيه. يأتي Lorem Ipsum من الأقسام 1.10.32 و 1.10.33 من \"de Finibus Bonorum et Malorum\" (أقصى الخير والشر) بقلم شيشرون ، الذي كتبه عام 45 قبل الميلاد. هذا الكتاب عبارة عن أطروحة حول نظرية الأخلاق ، وقد حظيت بشعبية كبيرة خلال عصر النهضة. السطر الأول من Lorem Ipsum ، \"Lorem ipsum dolor sit amet ..\" ، يأتي من سطر في القسم 1.10.32.</p>', '<p>What is Lorem Ipsum? Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. Why do we use it? It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like). Where does it come from? Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p>', '<p>ما هو لوريم إيبسوم؟ لوريم إيبسوم هو ببساطة نص شكلي يستخدم في صناعة الطباعة والتنضيد. كان Lorem Ipsum هو النص الوهمي القياسي في الصناعة منذ القرن الخامس عشر الميلادي ، عندما أخذت طابعة غير معروفة لوحًا من النوع وتدافعت عليه لعمل كتاب عينة. لقد نجت ليس فقط خمسة قرون ، ولكن أيضًا القفزة في التنضيد الإلكتروني ، وظلت دون تغيير جوهري. تم نشره في الستينيات من القرن الماضي بإصدار أوراق Letraset التي تحتوي على مقاطع Lorem Ipsum ، ومؤخرًا مع برامج النشر المكتبي مثل Aldus PageMaker بما في ذلك إصدارات Lorem Ipsum. لماذا نستخدمه؟ هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها. الهدف من استخدام لوريم إيبسوم هو أنه يحتوي على توزيع طبيعي -إلى حد ما- للأحرف ، بدلاً من استخدام \"هنا يوجد محتوى نصي ، هنا يوجد محتوى نصي\" ، مما يجعلها تبدو وكأنها إنجليزية قابلة للقراءة. تستخدم العديد من حزم النشر المكتبي ومحرري صفحات الويب الآن Lorem Ipsum كنص نموذج افتراضي ، وسيكشف البحث عن \"lorem ipsum\" عن العديد من مواقع الويب التي لا تزال في مهدها. تطورت إصدارات مختلفة على مر السنين ، أحيانًا عن طريق الصدفة ، وأحيانًا عن قصد (روح الدعابة المحقونة وما شابه ذلك). حيث أنها لا تأتي من؟ خلافًا للاعتقاد الشائع ، فإن Lorem Ipsum ليس مجرد نص عشوائي. لها جذور في قطعة من الأدب اللاتيني الكلاسيكي من 45 قبل الميلاد ، مما يجعلها أكثر من 2000 عام. قام ريتشارد مكلينتوك ، الأستاذ اللاتيني في كلية هامبدن سيدني في فرجينيا ، بالبحث عن واحدة من أكثر الكلمات اللاتينية غموضًا ، consectetur ، من مقطع لوريم إيبسوم ، وتصفح اقتباسات الكلمة في الأدب الكلاسيكي ، اكتشف المصدر الذي لا شك فيه. يأتي Lorem Ipsum من الأقسام 1.10.32 و 1.10.33 من \"de Finibus Bonorum et Malorum\" (أقصى الخير والشر) بقلم شيشرون ، الذي كتبه عام 45 قبل الميلاد. هذا الكتاب عبارة عن أطروحة حول نظرية الأخلاق ، وقد حظيت بشعبية كبيرة خلال عصر النهضة. السطر الأول من Lorem Ipsum ، \"Lorem ipsum dolor sit amet ..\" ، يأتي من سطر في القسم 1.10.32.</p>', '<p>What is Lorem Ipsum? Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. Why do we use it? It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like). Where does it come from? Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p>');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `about_us_ar` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `terms_ar` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `privacy_ar` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `about_us_en` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `terms_en` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `privacy_en` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `about_us_ku` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `terms_ku` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `privacy_ku` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `insta` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `snap_chat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `whatsapp` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `title`, `logo`, `about_us_ar`, `terms_ar`, `privacy_ar`, `about_us_en`, `terms_en`, `privacy_en`, `about_us_ku`, `terms_ku`, `privacy_ku`, `facebook`, `insta`, `twitter`, `snap_chat`, `whatsapp`, `created_at`, `updated_at`) VALUES
(1, 'تطبيق وطن', NULL, 'مرحبا ', 'أن يكون المستخدم ذا أهلية قانونية كاملة للتعاقد والتعامل. اذا كان المستخدم عمره يقل عن 18 عاما يستوجب عليه ان يقوم بالحصول على موافقة والديه أو وصيه للقيام بذلك. ان يقر ويتعهد المستخدم بانه يتمتع بالحق والقدرة القانونية على استخدام موقع وتطبيق معاك حسب ما هو منصوص عليه في هذه الشروط والأحكام.', 'نحن سعداء بكونكم احد عملائنا ، الأمر الذي يستدعي قبولكم الضمني لسياسه الخصوصية الخاصة بتطبيق الفلتر.\n\nهذا الإشعار بالإضافة إلى سياسه الخصوصية الخاصّين بتطبيق الفلتر، يُحددان نوع المعلومات اللازم جمعها عن مستخدمين التطبيق من اجل تقديم الخدمة وتنفيذ طلبات عملائنا بالشكل المناسب .\n\nتنظم هذه الوثيقة مُعالجه بيانات العملاء من نواحي الجمع ، و التخزين ، والولوج ، والاستخدام ، و أخيراً الإهلاك ، بجانب أي صوره اخرى مستلزمة لتقديم الخدمة.\n\nالغرض من جمع أي معلومات عن العميل هو إدارة العمل اليومي بقطاعاتنا من أجل تقديم الخدمة ، بالإضافة إلى تحسين تجربة المستخدمين  ،  ، فضلاً عن الإدارة السليمة للحجم الهائل من المعلومات الشخصية. نحن مستمرون في تعزيز ثقة المستخدم في طريقة تعاملنا مع المعلومات الشخصية الخاصة بهم وتقديم الخدمات بشكل متميز.\n\nمتى نقوم بجمع معلومات الشخصيه ؟\nعلى سبيل المثال، نجمع معلوماتك الشخصية عند:\n\nشراء أو استخدام أي من منتجاتنا وخدماتنا.\n\nالاتصال بنا من خلال قنوات الاتصال المختلفة، أو طلب معلومات حول منتج أو خدمة ما.\n\nما هي المعلومات التي نجمعها عنك ؟\n\n\nعند الضرورة، قد نجمع:\n\nاسمك وعنوانك و / أو رقم هاتفك و / أو رقم هاتفك المحمول وعنوان بريدك الإلكتروني \n\nبيانات الاتصال الخاصة بك. وهي البيانات التي نتعرض لها كمتطلب من متطلبات اتمام عملية الشراء', 'welcome en', 'أن يكون المستخدم ذا أهلية قانونية كاملة للتعاقد والتعامل. اذا كان المستخدم عمره يقل عن 18 عاما يستوجب عليه ان يقوم بالحصول على موافقة والديه أو وصيه للقيام بذلك. ان يقر ويتعهد المستخدم بانه يتمتع بالحق والقدرة القانونية على استخدام موقع وتطبيق معاك حسب ما هو منصوص عليه في هذه الشروط والأحكام.', 'نحن سعداء بكونكم احد عملائنا ، الأمر الذي يستدعي قبولكم الضمني لسياسه الخصوصية الخاصة بتطبيق الفلتر.\n', NULL, 'أن يكون المستخدم ذا أهلية قانونية كاملة للتعاقد والتعامل. اذا كان المستخدم عمره يقل عن 18 عاما يستوجب عليه ان يقوم بالحصول على موافقة والديه أو وصيه للقيام بذلك. ان يقر ويتعهد المستخدم بانه يتمتع بالحق والقدرة القانونية على استخدام موقع وتطبيق معاك حسب ما هو منصوص عليه في هذه الشروط والأحكام.', 'نحن سعداء بكونكم احد عملائنا ، الأمر الذي يستدعي قبولكم الضمني لسياسه الخصوصية الخاصة بتطبيق الفلتر.\n', NULL, NULL, NULL, NULL, '+201098877778', '2022-07-12 14:16:58', '2022-07-12 14:16:58');

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `image`, `link`, `created_at`, `updated_at`) VALUES
(4, 'assets/uploads/sliders/33781662642423.jpg', 'https://www.youtube.com/watch?v=81-lXZrwmNo', '2022-09-08 15:07:03', '2022-09-08 15:07:03'),
(5, 'assets/uploads/sliders/11611662642441.jpeg', 'https://www.youtube.com/watch?v=81-lXZrwmNo', '2022-09-08 15:07:21', '2022-09-08 15:07:21'),
(6, 'assets/uploads/sliders/63551662642453.jpg', 'https://www.youtube.com/watch?v=81-lXZrwmNo', '2022-09-08 15:07:33', '2022-09-08 15:07:33'),
(7, 'assets/uploads/sliders/87621662642463.jpg', 'https://www.youtube.com/watch?v=81-lXZrwmNo', '2022-09-08 15:07:43', '2022-09-08 15:07:43');

-- --------------------------------------------------------

--
-- Table structure for table `sub_areas`
--

CREATE TABLE `sub_areas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name_ar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_en` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_ko` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `area_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sub_areas`
--

INSERT INTO `sub_areas` (`id`, `name_ar`, `name_en`, `name_ko`, `area_id`, `created_at`, `updated_at`) VALUES
(1, 'الرياض', 'elryad', NULL, 1, '2022-05-21 07:00:39', '2022-05-21 07:00:39'),
(3, 'Meghan Travisyyyy', 'EricaRowlandyyyyy', NULL, 1, '2022-08-21 14:21:17', '2022-08-21 14:40:31'),
(4, 'جدة', 'ثبثب', NULL, 1, '2022-08-22 08:15:39', '2022-08-22 08:15:39');

-- --------------------------------------------------------

--
-- Table structure for table `sub_categories`
--

CREATE TABLE `sub_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name_ar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name_en` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name_ko` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sub_categories`
--

INSERT INTO `sub_categories` (`id`, `name_ar`, `name_en`, `name_ko`, `image`, `category_id`, `created_at`, `updated_at`) VALUES
(10, 'عبدو2', 'abdo2', 'بەسرە...', 'assets/uploads/subCategories/7681664508499.jpg', 18, '2022-09-30 03:28:19', '2022-09-30 03:28:19');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `whatsapp` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '0 is blocked , 1 is not blocked',
  `user_type` tinyint(4) NOT NULL COMMENT '1=>"user",2=>"company",3=>"estate_office"	',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `whatsapp`, `phone`, `password`, `image`, `status`, `user_type`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'محمد خالد', 'mo@gmail.com', '+2001010154407', '+2001010448889', '%^&%^$%^#$%#$%ERDSFSDFSDF@#$@#$@#$%$%RT', '1.png', '1', 0, NULL, '2022-08-22 11:36:02', '2022-08-22 11:46:30'),
(3, 'Osama arafa1', 'osama7@gmail.com', '122333325', '01011478988', '$2y$10$usajyrWIzQc2HXg5X34E8eQjl0o0jWKkrz7LglnN0fWTzMIvgM802', 'assets/uploads/users/46401663572967.jpg', '0', 2, NULL, '2022-09-07 17:02:38', '2022-09-19 09:36:07'),
(4, 'Osama arafa', 'osama07@gmail.com', '1223333', '010114789880', '$2y$10$bt06j38ZovzP0qYj52DHf.uinnb5/DPWoDPejGWwlKcejDPbGnOKC', 'storage/uploads/users/YWdlbmN5LnBuZw==_1663489873.png', '0', 2, NULL, '2022-09-18 10:31:13', '2022-09-18 10:31:13'),
(5, 'Osama arafa', 'osama17@gmail.com', '1223333', '01011478980', '$2y$10$GYyRNmbj6ybYFGQYlyUg6.V0QGGJar49BhXUXiggCpdQsrfPOwYPW', 'storage/uploads/users/ZG93bmxvYWQgKDEpLnBuZw==_1663492963.png', '0', 2, NULL, '2022-09-18 11:22:43', '2022-09-18 11:22:43'),
(6, 'Osama arafa', 'osama187@gmail.com', '1223333', '010114789808', '$2y$10$Ke5CQ7LkiZIhaPVW9/3kletn5HT5SCvocMxUcdOUKRs/79V4nFwia', 'storage/uploads/users/ZG93bmxvYWQgKDEpLnBuZw==_1663498476.png', '0', 2, NULL, '2022-09-18 12:54:36', '2022-09-18 12:54:36'),
(7, 'Osama arafa', 'osama87@gmail.com', '1223333', '01011478808', '$2y$10$eX4HdjjGeXKfoxbneGZuCuKgPtM9nP8TzPAjUO58XaL1cNxl/KWHu', 'storage/uploads/users/ZG93bmxvYWQgKDEpLnBuZw==_1663498994.png', '0', 2, NULL, '2022-09-18 13:03:14', '2022-09-18 13:03:14'),
(8, 'User', 'user@gmail.com', '123456', '123456', '$2y$10$nCygWqR8Cq4akzCIEy9Tqu3mnVXtFtZmAKo4He5gdI4FL9n0w29Cq', 'storage/uploads/users/YWdlbmN5LnBuZw==_1663533301.png', '0', 1, NULL, '2022-09-18 22:35:01', '2022-09-18 22:35:01'),
(9, 'Company', 'company@gmail.com', '1255488877444', '1234567', '$2y$10$9u/I3NLs5Ei8AQD6kR/QUeatkYjkNaU03n/VRlXdbGorXMatHcDsy', 'storage/uploads/users/YWdlbmN5LnBuZw==_1663533352.png', '0', 2, NULL, '2022-09-18 22:35:52', '2022-09-25 14:33:48'),
(10, 'Project', 'project@gmail.com', '12345678', '12345678', '$2y$10$JVjFiQ4rxguzchPAxmjJOOHFR5V9OWiTrsgifbxHk.rc27fVoWpq2', 'storage/uploads/users/YWdlbmN5LnBuZw==_1663533397.png', '0', 3, NULL, '2022-09-18 22:36:37', '2022-09-18 22:36:37'),
(14, 'Project', 'project0@gmail.com', '123456780', '1234567800', '$2y$10$X5k807ZWfmNB2V6rWliOBORL5v4OUkBHrBZjgh3JySz4p4VKtiq8.', 'storage/uploads/users/YWdlbmN5LnBuZw==_1663572833.png', '0', 3, NULL, '2022-09-19 09:33:54', '2022-09-19 09:33:54'),
(15, 'Projegg', 'project00@gmail.com', '12344525', '12345678000', '$2y$10$knYeaFStmZ7z7gSstBbaY.BeDk5y9HizUlBzF6.S2EWmpgejq0A2K', '', '0', 3, NULL, '2022-09-19 09:57:41', '2022-09-25 14:20:24'),
(16, 'Yehia', 'yehia@gmail.com', '01090439960', '01090439660', '$2y$10$UBlbdh5HHT9xlw2KorEdP.UjRD/7QX8bnuA22Fz53ItyRB57OzZ.K', '', '0', 1, NULL, '2022-09-19 10:01:51', '2022-09-19 10:01:51'),
(17, 'Yehia', 'yehia0@gmail.com', '01090439960', '010904396600', '$2y$10$BORho63LQUMMY5ivCgf7Y.lOEKCe3GQzMnem5oJrKQTt2.npK4cFC', '', '0', 1, NULL, '2022-09-19 10:05:38', '2022-09-19 10:05:38'),
(18, 'yehia Yehia', 'y@gmail.com', '008800', '008800', '$2y$10$k02ET/WjKo9QWVdwsvzF.umzUqul9TNH3fl/Y7qJF0ikDHsEWLgoK', 'storage/uploads/users/aW1hZ2VfcGlja2VyNzg5NDEyNDk3ODUzODI5Mzk0Ny5qcGc=_1663580051.jpg', '0', 1, NULL, '2022-09-19 11:34:11', '2022-09-19 11:34:11'),
(19, 'rr', 'yd@gmail.com', '58', '33', '$2y$10$B5KdIAX5udNeTC/CAjnqROYLH816L/F2YIYZsuV2Pc8uLBVV.kdHK', 'storage/uploads/users/aW1hZ2VfcGlja2VyNzE0Nzg1NjkwNzc4NzQ4NjMuanBn_1663580622.jpg', '0', 1, NULL, '2022-09-19 11:43:42', '2022-09-25 13:59:19');

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
  ADD KEY `agents_company_id_foreign` (`company_id`);

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
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `packages`
--
ALTER TABLE `packages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `packages_users`
--
ALTER TABLE `packages_users`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `agents`
--
ALTER TABLE `agents`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `areas`
--
ALTER TABLE `areas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `classification_of_ads`
--
ALTER TABLE `classification_of_ads`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `companies`
--
ALTER TABLE `companies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `contact_us`
--
ALTER TABLE `contact_us`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `files_of_projects_and_posts`
--
ALTER TABLE `files_of_projects_and_posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `packages`
--
ALTER TABLE `packages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=130;

--
-- AUTO_INCREMENT for table `packages_users`
--
ALTER TABLE `packages_users`
  MODIFY `id` tinyint(4) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `ratings`
--
ALTER TABLE `ratings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `reports`
--
ALTER TABLE `reports`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `services_of_posts`
--
ALTER TABLE `services_of_posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `sub_areas`
--
ALTER TABLE `sub_areas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `sub_categories`
--
ALTER TABLE `sub_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `agents`
--
ALTER TABLE `agents`
  ADD CONSTRAINT `agents_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `agents_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `files_of_projects_and_posts`
--
ALTER TABLE `files_of_projects_and_posts`
  ADD CONSTRAINT `files_of_projects_and_posts_projects_id_foreign` FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

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
-- Constraints for table `reports`
--
ALTER TABLE `reports`
  ADD CONSTRAINT `reports_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `reports_project_id_foreign` FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `reports_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

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
