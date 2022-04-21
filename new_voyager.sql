-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Apr 21, 2022 at 03:58 PM
-- Server version: 5.7.36
-- PHP Version: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `new_voyager`
--

-- --------------------------------------------------------

--
-- Table structure for table `add_to_shelves`
--

DROP TABLE IF EXISTS `add_to_shelves`;
CREATE TABLE IF NOT EXISTS `add_to_shelves` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `shelf_name` char(12) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `row_number` int(11) DEFAULT NULL,
  `extra` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `pack_id` int(11) DEFAULT NULL,
  `Pox_id` int(11) DEFAULT NULL,
  `Barcode_id` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `add_to_shelves`
--

INSERT INTO `add_to_shelves` (`id`, `shelf_name`, `row_number`, `extra`, `created_at`, `updated_at`, `pack_id`, `Pox_id`, `Barcode_id`) VALUES
(21, 'A', 1, NULL, '2022-04-20 19:08:25', '2022-04-20 19:08:25', 254, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `alreadycovereds`
--

DROP TABLE IF EXISTS `alreadycovereds`;
CREATE TABLE IF NOT EXISTS `alreadycovereds` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `order_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `product_dimensions` int(11) DEFAULT NULL,
  `product_weight` int(11) DEFAULT NULL,
  `no_of_items` int(11) DEFAULT NULL,
  `paid_amount` int(11) DEFAULT NULL,
  `reference` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `arrivals`
--

DROP TABLE IF EXISTS `arrivals`;
CREATE TABLE IF NOT EXISTS `arrivals` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `box_id` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `source_market` text COLLATE utf8mb4_unicode_ci,
  `General_images` longtext COLLATE utf8mb4_unicode_ci,
  `Product_dimension` text COLLATE utf8mb4_unicode_ci,
  `Product_Weight` text COLLATE utf8mb4_unicode_ci,
  `Arrival_Images` longtext COLLATE utf8mb4_unicode_ci,
  `Pox_id` text COLLATE utf8mb4_unicode_ci,
  `Barcode_id` int(11) DEFAULT NULL,
  `Second` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=258 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `barccodes`
--

DROP TABLE IF EXISTS `barccodes`;
CREATE TABLE IF NOT EXISTS `barccodes` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `Barcode_id` int(11) DEFAULT NULL,
  `order_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=179 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `barccodes`
--

INSERT INTO `barccodes` (`id`, `Barcode_id`, `order_id`, `created_at`, `updated_at`) VALUES
(159, 1111111111, NULL, '2022-03-09 18:00:08', '2022-03-09 18:00:08'),
(160, 1111111112, NULL, '2022-03-09 18:00:08', '2022-03-09 18:00:08'),
(161, 1111111113, NULL, '2022-03-09 18:00:08', '2022-03-09 18:00:08'),
(162, 1111111114, NULL, '2022-03-09 18:00:08', '2022-03-09 18:00:08'),
(163, 1111111115, NULL, '2022-03-09 18:00:08', '2022-03-09 18:00:08'),
(164, 1111111116, NULL, '2022-03-09 18:00:08', '2022-03-09 18:00:08'),
(165, 1111111117, NULL, '2022-03-09 18:00:08', '2022-03-09 18:00:08'),
(166, 1111111118, NULL, '2022-03-09 18:00:08', '2022-03-09 18:00:08'),
(167, 1111111119, NULL, '2022-03-09 18:00:08', '2022-03-09 18:00:08'),
(168, 1111111120, NULL, '2022-03-09 18:00:08', '2022-03-09 18:00:08'),
(169, 1111111121, NULL, '2022-03-09 18:00:08', '2022-03-09 18:00:08'),
(170, 1111111122, NULL, '2022-03-09 18:00:08', '2022-03-09 18:00:08'),
(171, 1111111123, NULL, '2022-03-09 18:00:08', '2022-03-09 18:00:08'),
(172, 1111111124, NULL, '2022-03-09 18:00:08', '2022-03-09 18:00:08'),
(173, 1111111125, NULL, '2022-03-09 18:00:08', '2022-03-09 18:00:08'),
(174, 1111111126, NULL, '2022-03-09 18:00:08', '2022-03-09 18:00:08'),
(175, 1111111127, NULL, '2022-03-09 18:00:08', '2022-03-09 18:00:08'),
(176, 1111111128, NULL, '2022-03-09 18:00:08', '2022-03-09 18:00:08'),
(177, 1111111129, NULL, '2022-03-09 18:00:08', '2022-03-09 18:00:08'),
(178, 1111111130, NULL, '2022-03-09 18:00:08', '2022-03-09 18:00:08');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `categories_slug_unique` (`slug`),
  KEY `categories_parent_id_foreign` (`parent_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `parent_id`, `order`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, NULL, 1, 'Category 1', 'category-1', '2021-12-06 11:50:20', '2021-12-06 11:50:20'),
(2, NULL, 1, 'Category 2', 'category-2', '2021-12-06 11:50:20', '2021-12-06 11:50:20');

-- --------------------------------------------------------

--
-- Table structure for table `coverrequests`
--

DROP TABLE IF EXISTS `coverrequests`;
CREATE TABLE IF NOT EXISTS `coverrequests` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `order_id` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` text COLLATE utf8mb4_unicode_ci,
  `Product_Dimension` int(11) DEFAULT NULL,
  `Product_Weight` int(11) DEFAULT NULL,
  `no_of_items` int(11) DEFAULT NULL,
  `Paid_Amount` int(11) DEFAULT NULL,
  `reference` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_statuss` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `currentships`
--

DROP TABLE IF EXISTS `currentships`;
CREATE TABLE IF NOT EXISTS `currentships` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `data_rows`
--

DROP TABLE IF EXISTS `data_rows`;
CREATE TABLE IF NOT EXISTS `data_rows` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `data_type_id` int(10) UNSIGNED NOT NULL,
  `field` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `browse` tinyint(1) NOT NULL DEFAULT '1',
  `read` tinyint(1) NOT NULL DEFAULT '1',
  `edit` tinyint(1) NOT NULL DEFAULT '1',
  `add` tinyint(1) NOT NULL DEFAULT '1',
  `delete` tinyint(1) NOT NULL DEFAULT '1',
  `details` text COLLATE utf8mb4_unicode_ci,
  `order` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `data_rows_data_type_id_foreign` (`data_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=346 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_rows`
--

INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES
(1, 1, 'id', 'number', 'رقم الصندوق', 1, 1, 1, 0, 0, 0, '{}', 1),
(2, 1, 'name', 'text', 'اسم االمستخدم', 1, 1, 1, 1, 1, 1, '{}', 2),
(3, 1, 'email', 'text', 'البريد الالكتروني', 1, 1, 1, 1, 1, 1, '{}', 3),
(4, 1, 'password', 'password', 'كلمه السر', 1, 0, 0, 1, 1, 0, '{}', 4),
(5, 1, 'remember_token', 'text', 'Remember Token', 0, 0, 0, 0, 0, 0, '{}', 5),
(6, 1, 'created_at', 'timestamp', 'أنشئت في', 0, 1, 1, 0, 0, 0, '{}', 6),
(7, 1, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7),
(8, 1, 'avatar', 'image', 'الصورة الشخصية', 0, 1, 1, 1, 1, 1, '{}', 8),
(9, 1, 'user_belongsto_role_relationship', 'relationship', 'دور المستخدم', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":\"0\",\"taggable\":\"0\"}', 10),
(10, 1, 'user_belongstomany_role_relationship', 'relationship', 'دور المستخدم', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}', 11),
(11, 1, 'settings', 'hidden', 'Settings', 0, 0, 0, 0, 0, 0, '{}', 12),
(12, 2, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, '{}', 1),
(13, 2, 'name', 'text', 'اسم', 1, 1, 1, 1, 1, 1, '{}', 2),
(14, 2, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '{}', 3),
(15, 2, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 4),
(16, 3, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(17, 3, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(18, 3, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(19, 3, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(20, 3, 'display_name', 'text', 'Display Name', 1, 1, 1, 1, 1, 1, NULL, 5),
(21, 1, 'role_id', 'text', 'Role', 0, 1, 1, 1, 1, 1, '{}', 9),
(22, 4, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(23, 4, 'parent_id', 'select_dropdown', 'Parent', 0, 0, 1, 1, 1, 1, '{\"default\":\"\",\"null\":\"\",\"options\":{\"\":\"-- None --\"},\"relationship\":{\"key\":\"id\",\"label\":\"name\"}}', 2),
(24, 4, 'order', 'text', 'Order', 1, 1, 1, 1, 1, 1, '{\"default\":1}', 3),
(25, 4, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 4),
(26, 4, 'slug', 'text', 'Slug', 1, 1, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"name\"}}', 5),
(27, 4, 'created_at', 'timestamp', 'Created At', 0, 0, 1, 0, 0, 0, NULL, 6),
(28, 4, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(29, 5, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(30, 5, 'author_id', 'text', 'Author', 1, 0, 1, 1, 0, 1, NULL, 2),
(31, 5, 'category_id', 'text', 'Category', 1, 0, 1, 1, 1, 0, NULL, 3),
(32, 5, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, NULL, 4),
(33, 5, 'excerpt', 'text_area', 'Excerpt', 1, 0, 1, 1, 1, 1, NULL, 5),
(34, 5, 'body', 'rich_text_box', 'Body', 1, 0, 1, 1, 1, 1, NULL, 6),
(35, 5, 'image', 'image', 'Post Image', 0, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"1000\",\"height\":\"null\"},\"quality\":\"70%\",\"upsize\":true,\"thumbnails\":[{\"name\":\"medium\",\"scale\":\"50%\"},{\"name\":\"small\",\"scale\":\"25%\"},{\"name\":\"cropped\",\"crop\":{\"width\":\"300\",\"height\":\"250\"}}]}', 7),
(36, 5, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\",\"forceUpdate\":true},\"validation\":{\"rule\":\"unique:posts,slug\"}}', 8),
(37, 5, 'meta_description', 'text_area', 'Meta Description', 1, 0, 1, 1, 1, 1, NULL, 9),
(38, 5, 'meta_keywords', 'text_area', 'Meta Keywords', 1, 0, 1, 1, 1, 1, NULL, 10),
(39, 5, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"DRAFT\",\"options\":{\"PUBLISHED\":\"published\",\"DRAFT\":\"draft\",\"PENDING\":\"pending\"}}', 11),
(40, 5, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 12),
(41, 5, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 13),
(42, 5, 'seo_title', 'text', 'SEO Title', 0, 1, 1, 1, 1, 1, NULL, 14),
(43, 5, 'featured', 'checkbox', 'Featured', 1, 1, 1, 1, 1, 1, NULL, 15),
(44, 6, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, '{}', 1),
(45, 6, 'author_id', 'text', 'Author', 1, 0, 0, 0, 0, 0, '{}', 2),
(46, 6, 'title', 'text', 'الاسم', 1, 1, 1, 1, 1, 1, '{}', 3),
(47, 6, 'excerpt', 'text_area', 'مقتطفات', 0, 0, 1, 1, 1, 1, '{}', 4),
(48, 6, 'body', 'rich_text_box', 'الجسم', 0, 0, 1, 1, 1, 1, '{}', 5),
(49, 6, 'slug', 'text', 'لقب', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\"},\"validation\":{\"rule\":\"unique:pages,slug\"}}', 6),
(50, 6, 'meta_description', 'text', 'الوصف', 0, 0, 1, 1, 1, 1, '{}', 7),
(51, 6, 'meta_keywords', 'text', 'الكلمات الدالة', 0, 0, 1, 1, 1, 1, '{}', 8),
(52, 6, 'status', 'select_dropdown', 'الحالة', 1, 1, 1, 1, 1, 1, '{\"default\":\"INACTIVE\",\"options\":{\"INACTIVE\":\"INACTIVE\",\"ACTIVE\":\"ACTIVE\"}}', 9),
(53, 6, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, '{}', 10),
(54, 6, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 11),
(55, 6, 'image', 'image', 'صورة الصفحة', 0, 1, 1, 1, 1, 1, '{}', 12),
(56, 9, 'id', 'text', 'رقم القطعة', 1, 1, 1, 0, 0, 0, '{}', 1),
(58, 9, 'created_at', 'timestamp', 'تاريخ التسجيل', 0, 0, 0, 0, 0, 0, '{}', 4),
(59, 9, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 5),
(60, 11, 'id', 'hidden', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(61, 11, 'name', 'text', 'اسم ألرف', 0, 1, 1, 1, 1, 1, '{}', 2),
(62, 11, 'created_at', 'timestamp', 'تاريخ التسجيل', 0, 1, 1, 1, 0, 1, '{}', 4),
(63, 11, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 5),
(64, 9, 'box_id', 'text', 'Box Id', 0, 0, 0, 0, 0, 0, '{}', 3),
(65, 9, 'source_market', 'text', 'Source Market', 0, 1, 1, 1, 1, 1, '{}', 6),
(67, 9, 'Product_dimension', 'text', 'ابعاد المنتج', 0, 1, 1, 1, 1, 1, '{}', 11),
(68, 9, 'Product_Weight', 'text', 'وزن المنتج', 0, 1, 1, 1, 1, 1, '{}', 12),
(69, 12, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(70, 12, 'name', 'text', 'اسم المصدر', 0, 1, 1, 1, 1, 1, '{}', 2),
(71, 9, 'arrival_belongsto_user_relationship', 'relationship', 'رقم الصندوق', 0, 0, 0, 0, 0, 0, '{\"model\":\"App\\\\Models\\\\User\",\"table\":\"users\",\"type\":\"belongsTo\",\"column\":\"box_id\",\"key\":\"id\",\"label\":\"id\",\"pivot_table\":\"arrivals\",\"pivot\":\"0\",\"taggable\":\"0\"}', 7),
(72, 9, 'arrival_belongsto_source_relationship', 'relationship', 'مصدر الشاحن', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\Source\",\"table\":\"sources\",\"type\":\"belongsTo\",\"column\":\"source_market\",\"key\":\"name\",\"label\":\"name\",\"pivot_table\":\"arrivals\",\"pivot\":\"0\",\"taggable\":\"0\"}', 10),
(74, 13, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(76, 13, 'row_number', 'text', 'رقم العمود', 0, 1, 1, 1, 1, 1, '{}', 4),
(77, 13, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 5),
(78, 13, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 6),
(81, 17, 'id', 'hidden', 'رقم الاضافة للرفوف', 1, 1, 1, 0, 0, 0, '{}', 1),
(82, 17, 'shelf_name', 'text', 'اسم الرف', 0, 1, 1, 1, 1, 1, '{}', 6),
(83, 17, 'row_number', 'text', 'رقم العمود', 0, 1, 1, 1, 1, 1, '{}', 7),
(85, 17, 'extra', 'rich_text_box', 'معلومات اضافية', 0, 0, 0, 0, 0, 1, '{}', 8),
(86, 17, 'created_at', 'timestamp', 'تاريخ التسجيل', 0, 0, 0, 0, 0, 0, '{}', 9),
(87, 17, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 10),
(88, 17, 'add_to_shelf_belongsto_shelf_relationship', 'relationship', 'رقم الرف', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\Shelf\",\"table\":\"shelves\",\"type\":\"belongsTo\",\"column\":\"shelf_name\",\"key\":\"name\",\"label\":\"name\",\"pivot_table\":\"add_to_shelves\",\"pivot\":\"0\",\"taggable\":\"0\"}', 4),
(89, 17, 'add_to_shelf_belongsto_row_relationship', 'relationship', 'رقم العمود', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\NewRow\",\"table\":\"new_rows\",\"type\":\"belongsTo\",\"column\":\"row_number\",\"key\":\"name\",\"label\":\"name\",\"pivot_table\":\"add_to_shelves\",\"pivot\":\"0\",\"taggable\":\"0\"}', 5),
(91, 12, 'created_at', 'timestamp', 'تاريخ التسجيل', 0, 1, 1, 1, 0, 1, '{}', 3),
(92, 12, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 4),
(93, 1, 'email_verified_at', 'timestamp', 'Email Verified At', 0, 0, 0, 0, 0, 0, '{}', 6),
(94, 1, 'address', 'text', 'العنوان', 0, 1, 1, 1, 1, 1, '{}', 12),
(95, 1, 'phone_number', 'text', 'رقم الهاتف', 0, 1, 1, 1, 1, 1, '{}', 13),
(96, 13, 'name', 'text', 'Name', 0, 1, 1, 1, 1, 1, '{}', 5),
(97, 19, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(98, 19, 'name', 'text', 'رقم عمود الرف', 1, 1, 1, 1, 1, 1, '{}', 3),
(100, 19, 'created_at', 'timestamp', 'تاريخ التسجيل', 0, 0, 0, 0, 0, 0, '{}', 4),
(101, 19, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 5),
(103, 22, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 0),
(104, 22, 'user_id', 'text', 'User Id', 0, 1, 1, 1, 1, 1, '{}', 2),
(105, 22, 'order_id', 'text', 'Order Id', 0, 1, 1, 1, 1, 1, '{}', 3),
(106, 22, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 4),
(107, 22, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 5),
(108, 22, 'recover_belongsto_arrival_relationship', 'relationship', 'User Id', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\Arrival\",\"table\":\"arrivals\",\"type\":\"belongsTo\",\"column\":\"user_id\",\"key\":\"box_id\",\"label\":\"box_id\",\"pivot_table\":\"arrivals\",\"pivot\":\"0\",\"taggable\":\"0\"}', 6),
(114, 23, 'id', 'text', 'Id', 1, 1, 1, 0, 0, 0, '{}', 1),
(115, 23, 'user_id', 'text', 'User Id', 0, 1, 1, 1, 1, 1, '{}', 2),
(117, 23, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 4),
(118, 23, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 5),
(119, 24, 'id', 'text', 'رقم الطلب', 1, 1, 1, 0, 0, 0, '{}', 0),
(120, 24, 'order_id', 'text', 'رقم القطعة الأولي', 0, 0, 1, 1, 1, 1, '{}', 8),
(121, 24, 'created_at', 'timestamp', 'تاريخ التسجيل', 0, 1, 1, 1, 0, 1, '{}', 3),
(122, 24, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 12),
(123, 25, 'id', 'text', 'رقم الشحن', 1, 0, 0, 0, 0, 0, '{}', 0),
(124, 25, 'order_id', 'text', 'رقم القطعة', 0, 1, 1, 1, 1, 1, '{}', 3),
(125, 25, 'created_at', 'timestamp', 'تاريخ الطلب', 0, 1, 0, 0, 0, 0, '{}', 5),
(126, 25, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 6),
(128, 24, 'user_id', 'text', 'رقم الصندوق', 0, 1, 1, 1, 1, 1, '{}', 2),
(131, 27, 'id', 'text', 'id', 1, 1, 1, 0, 0, 0, '{}', 0),
(133, 27, 'Status', 'text', 'Status', 0, 1, 1, 1, 1, 1, '{}', 3),
(134, 27, 'created_at', 'timestamp', 'تاريخ التسجيل', 0, 1, 1, 1, 0, 1, '{}', 4),
(135, 27, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 5),
(137, 29, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(138, 29, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 2),
(139, 29, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 3),
(140, 17, 'add_to_shelf_belongsto_arrival_relationship_1', 'relationship', 'رقم الشحنة', 0, 0, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\Arrival\",\"table\":\"arrivals\",\"type\":\"belongsTo\",\"column\":\"pack_id\",\"key\":\"id\",\"label\":\"id\",\"pivot_table\":\"add_to_shelves\",\"pivot\":\"0\",\"taggable\":\"0\"}', 2),
(141, 17, 'pack_id', 'text', 'رقم القطعة', 0, 1, 1, 1, 1, 1, '{}', 3),
(142, 23, 'Product_Shelf_id', 'text', 'Product Shelf Id', 0, 1, 1, 1, 1, 1, '{}', 3),
(143, 23, 'Product_arrival_id', 'text', 'Product Arrival Id', 0, 1, 1, 1, 1, 1, '{}', 6),
(144, 23, 'Shelf', 'text', 'Shelf', 0, 1, 1, 1, 1, 1, '{}', 7),
(145, 23, 'row', 'text', 'Row', 0, 1, 1, 1, 1, 1, '{}', 8),
(146, 23, 'Source_Market', 'text', 'Source Market', 0, 1, 1, 1, 1, 1, '{}', 9),
(147, 23, 'Product_image', 'text', 'Product Image', 0, 1, 1, 1, 1, 1, '{}', 10),
(148, 23, 'Product_Dimension', 'text', 'Product Dimension', 0, 1, 1, 1, 1, 1, '{}', 11),
(149, 23, 'Product_Weight', 'text', 'Product Weight', 0, 1, 1, 1, 1, 1, '{}', 12),
(150, 24, 'Product_Dimension', 'text', 'ابعاد القطع', 0, 0, 1, 1, 1, 1, '{}', 10),
(151, 24, 'Product_Weight', 'text', 'وزن القطع', 0, 0, 1, 1, 1, 1, '{}', 11),
(152, 30, 'id', 'text', 'رقم التغليف', 1, 1, 0, 0, 0, 0, '{}', 1),
(153, 30, 'package_id', 'text', 'رقم  طلب التغليف', 0, 1, 1, 1, 1, 1, '{}', 2),
(154, 30, 'package_images', 'image', 'صور التغليف', 0, 1, 1, 1, 1, 1, '{}', 6),
(155, 30, 'shelf', 'text', 'Shelf', 0, 1, 1, 1, 1, 1, '{}', 9),
(156, 30, 'row', 'text', 'Row', 0, 1, 1, 1, 1, 1, '{}', 10),
(157, 30, 'package_dimensions', 'text', 'ابعاد التغليف', 0, 1, 1, 1, 1, 1, '{}', 7),
(158, 30, 'package_weight', 'text', 'وزن التغليف', 0, 1, 1, 1, 1, 1, '{}', 8),
(159, 30, 'created_at', 'timestamp', 'تاريخ التسجيل', 0, 0, 0, 1, 0, 1, '{}', 11),
(160, 30, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 12),
(161, 30, 'secondcover_belongsto_coverrequest_relationship', 'relationship', 'رقم  طلب التغليف', 0, 0, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\Coverrequest\",\"table\":\"coverrequests\",\"type\":\"belongsTo\",\"column\":\"package_id\",\"key\":\"id\",\"label\":\"id\",\"pivot_table\":\"add_to_shelves\",\"pivot\":\"0\",\"taggable\":\"0\"}', 3),
(162, 30, 'secondcover_belongsto_shelf_relationship', 'relationship', 'اسم الرف', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\Shelf\",\"table\":\"shelves\",\"type\":\"belongsTo\",\"column\":\"shelf\",\"key\":\"name\",\"label\":\"name\",\"pivot_table\":\"add_to_shelves\",\"pivot\":\"0\",\"taggable\":\"0\"}', 4),
(163, 30, 'secondcover_belongsto_row_relationship', 'relationship', 'رقم العمود', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\Row\",\"table\":\"rows\",\"type\":\"belongsTo\",\"column\":\"row\",\"key\":\"name\",\"label\":\"name\",\"pivot_table\":\"add_to_shelves\",\"pivot\":\"0\",\"taggable\":\"0\"}', 5),
(165, 31, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(166, 31, 'Name', 'text', 'Name', 0, 1, 1, 1, 1, 1, '{}', 2),
(167, 31, 'Country', 'text', 'Country', 0, 1, 1, 1, 1, 1, '{}', 3),
(168, 31, 'Email', 'text', 'Email', 0, 1, 1, 1, 1, 1, '{}', 4),
(169, 31, 'Phone', 'text', 'Phone', 0, 1, 1, 1, 1, 1, '{}', 5),
(170, 31, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 6),
(171, 31, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7),
(172, 32, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(173, 32, 'Date_Of_Arrival', 'text', 'Date Of Arrival', 0, 1, 1, 1, 1, 1, '{}', 3),
(174, 32, 'User_Number', 'text', 'User Number', 0, 1, 1, 1, 1, 1, '{}', 4),
(175, 32, 'Source_Market', 'text', 'Source Market', 0, 1, 1, 1, 1, 1, '{}', 5),
(176, 32, 'P_Dimensions', 'text', 'P Dimensions', 0, 1, 1, 1, 1, 1, '{}', 8),
(177, 32, 'P_Weight', 'text', 'P Weight', 0, 1, 1, 1, 1, 1, '{}', 9),
(178, 32, 'Arrival_ID', 'text', 'Arrival ID', 0, 1, 1, 1, 1, 1, '{}', 2),
(179, 32, 'Add_To_Shelf_ID', 'text', 'Add To Shelf ID', 0, 1, 1, 1, 1, 1, '{}', 6),
(181, 32, 'ND_Taghleef_ID', 'text', '2nd Cover ID', 0, 1, 1, 1, 1, 1, '{}', 7),
(182, 32, 'created_at', 'timestamp', 'تاريخ التسجيل', 0, 1, 1, 1, 0, 1, '{}', 11),
(183, 32, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 12),
(187, 27, 'order_id', 'text', 'Order Id', 0, 1, 1, 1, 1, 1, '{}', 5),
(188, 32, 'order_status', 'text', 'Order Status', 0, 1, 1, 1, 1, 1, '{}', 13),
(189, 32, 'Shelf', 'text', 'Shelf', 0, 1, 1, 1, 1, 1, '{}', 14),
(190, 32, 'Row', 'text', 'Row', 0, 1, 1, 1, 1, 1, '{}', 15),
(191, 32, 'CoverRequest_ID', 'text', 'CoverRequest ID', 0, 1, 1, 1, 1, 1, '{}', 16),
(192, 32, 'nd_shelf', 'text', 'Nd Shelf', 0, 1, 1, 1, 1, 1, '{}', 17),
(193, 32, 'nd_row', 'text', 'Nd Row', 0, 1, 1, 1, 1, 1, '{}', 18),
(194, 32, 'nd_dimensions', 'text', 'Nd Dimensions', 0, 1, 1, 1, 1, 1, '{}', 19),
(195, 32, 'nd_weight', 'text', 'Nd Weight', 0, 1, 1, 1, 1, 1, '{}', 20),
(196, 32, 'ND_Packaged_Order_Id', 'text', 'ND Packaged Order Id', 0, 1, 1, 1, 1, 1, '{}', 21),
(197, 32, 'Cover_Images', 'image', 'Cover Images', 0, 1, 1, 1, 1, 1, '{}', 22),
(200, 9, 'General_images', 'image', 'الصور العامة', 0, 1, 1, 1, 1, 1, '{}', 8),
(201, 9, 'Arrival_Images', 'image', 'صور الوصول', 0, 1, 1, 1, 1, 1, '{}', 9),
(202, 32, 'General_Images', 'image', 'General Images', 0, 1, 1, 1, 1, 1, '{}', 9),
(203, 32, 'Arrival_Images', 'image', 'Arrival Images', 0, 1, 1, 1, 1, 1, '{}', 23),
(204, 9, 'Pox_id', 'text', 'رقم الصندوق', 0, 1, 1, 0, 0, 1, '{}', 2),
(205, 33, 'id', 'text', 'رقم تسجيل الباركود', 1, 1, 1, 0, 0, 0, '{}', 0),
(206, 33, 'Barcode_id', 'text', 'الباركود', 0, 1, 1, 0, 0, 0, '{}', 2),
(207, 33, 'order_id', 'hidden', 'Order Id', 0, 0, 0, 0, 0, 0, '{}', 3),
(208, 33, 'created_at', 'timestamp', 'تاريخ التسجيل', 0, 1, 1, 1, 0, 1, '{}', 4),
(209, 33, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 5),
(210, 9, 'arrival_belongsto_barccode_relationship', 'relationship', 'رقم الباركود', 0, 0, 0, 1, 0, 1, '{\"model\":\"App\\\\Models\\\\Barccode\",\"table\":\"barccodes\",\"type\":\"belongsTo\",\"column\":\"Barcode_id\",\"key\":\"id\",\"label\":\"id\",\"pivot_table\":\"add_to_shelves\",\"pivot\":\"0\",\"taggable\":\"0\"}', 14),
(211, 9, 'Barcode_id', 'text', 'رقم الباركود', 0, 0, 0, 1, 0, 1, '{}', 13),
(212, 17, 'Pox_id', 'text', 'Pox Id', 0, 0, 0, 0, 0, 1, '{}', 8),
(213, 17, 'Barcode_id', 'text', 'Barcode Id', 0, 0, 0, 1, 0, 1, '{}', 9),
(214, 17, 'add_to_shelf_belongsto_barccode_relationship', 'relationship', 'باركود التخزين', 0, 0, 0, 1, 0, 1, '{\"model\":\"App\\\\Models\\\\Barccode\",\"table\":\"barccodes\",\"type\":\"belongsTo\",\"column\":\"Barcode_id\",\"key\":\"id\",\"label\":\"id\",\"pivot_table\":\"add_to_shelves\",\"pivot\":\"0\",\"taggable\":\"0\"}', 11),
(215, 39, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(216, 39, 'created_at', 'timestamp', 'تاريخ التسجيل', 0, 1, 1, 1, 0, 1, '{}', 2),
(217, 39, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 3),
(218, 39, 'cover_request_id', 'select_dropdown', 'Cover Request Id', 0, 1, 1, 1, 1, 1, '{}', 4),
(221, 39, 'shipment_src', 'text', 'شركة الشحن', 0, 1, 1, 0, 0, 1, '{}', 5),
(222, 39, 'pre_cover_hasone_coverrequest_relationship', 'relationship', 'رقم طلب التغليف', 1, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\Coverrequest\",\"table\":\"coverrequests\",\"type\":\"belongsTo\",\"column\":\"cover_request_id\",\"key\":\"id\",\"label\":\"id\",\"pivot_table\":\"add_to_shelves\",\"pivot\":\"0\",\"taggable\":\"0\"}', 7),
(223, 40, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 0),
(224, 40, 'created_at', 'timestamp', 'تاريخ التسجيل', 0, 0, 0, 1, 0, 1, '{}', 2),
(225, 40, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 3),
(228, 32, 'Arrive_Barcode', 'text', 'Arrive Barcode', 0, 1, 1, 1, 1, 1, '{}', 24),
(229, 32, 'AddShelf_Barcode', 'text', 'AddShelf Barcode', 0, 1, 1, 1, 1, 1, '{}', 25),
(230, 42, 'id', 'text', 'Id', 1, 1, 0, 0, 0, 0, '{}', 1),
(231, 42, 'created_at', 'timestamp', 'تاريخ التسجيل', 0, 1, 1, 1, 0, 1, '{}', 2),
(232, 42, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 3),
(238, 24, 'no_of_items', 'text', 'عدد القطع', 0, 1, 1, 1, 1, 1, '{}', 4),
(239, 24, 'Paid_Amount', 'text', 'المبلغ المدفوع', 0, 1, 1, 1, 1, 1, '{}', 5),
(240, 24, 'reference', 'text', 'المرجعية', 0, 1, 1, 1, 1, 1, '{}', 6),
(241, 24, 'order_statuss', 'text', 'حالة الطلب', 0, 1, 1, 1, 1, 1, '{}', 7),
(242, 43, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(243, 43, 'created_at', 'timestamp', 'تاريخ التسجيل', 0, 1, 1, 1, 0, 1, '{}', 2),
(244, 43, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 3),
(245, 44, 'id', 'text', 'رقم الطلب', 1, 1, 0, 0, 0, 0, '{}', 0),
(246, 44, 'created_at', 'timestamp', 'تاريخ الطلب', 0, 1, 1, 1, 0, 1, '{}', 2),
(247, 44, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 5),
(248, 44, 'req_code', 'text', 'كود الطلب', 0, 1, 1, 1, 1, 1, '{}', 6),
(249, 44, 'Goal_Country', 'text', 'البلد الهدف', 0, 1, 1, 1, 1, 1, '{}', 7),
(250, 44, 'Box_id', 'text', 'رقم الصندوق', 0, 1, 1, 1, 1, 1, '{}', 9),
(251, 44, 'email', 'text', 'الأيميل', 0, 1, 1, 1, 1, 1, '{}', 10),
(252, 44, 'item_status', 'text', 'حالة القطعة', 0, 1, 1, 1, 1, 1, '{}', 11),
(253, 44, 'items_weight', 'text', 'الوزن', 0, 1, 1, 1, 1, 1, '{}', 8),
(254, 46, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(255, 46, 'created_at', 'timestamp', 'تاريخ التسجيل', 0, 1, 1, 1, 0, 1, '{}', 2),
(256, 46, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 3),
(257, 47, 'id', 'text', 'Id', 1, 1, 1, 0, 0, 0, '{}', 0),
(258, 47, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 2),
(259, 47, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 3),
(260, 47, 'user_id', 'text', 'User Id', 0, 1, 1, 1, 1, 1, '{}', 4),
(261, 47, 'Source', 'text', 'Source', 0, 1, 1, 1, 1, 1, '{}', 5),
(262, 47, 'weight', 'text', 'Weight', 0, 1, 1, 1, 1, 1, '{}', 6),
(263, 47, 'pics', 'text', 'Pics', 0, 1, 1, 1, 1, 1, '{}', 7),
(264, 47, 'store_status', 'text', 'Store Status', 0, 1, 1, 1, 1, 1, '{}', 8),
(265, 47, 'order_id', 'text', 'Order Id', 0, 1, 1, 1, 1, 1, '{}', 9),
(266, 47, 'shelf', 'text', 'Shelf', 0, 1, 1, 1, 1, 1, '{}', 10),
(267, 47, 'row', 'text', 'Row', 0, 1, 1, 1, 1, 1, '{}', 11),
(268, 42, 'status', 'text', 'Status', 0, 1, 1, 1, 1, 1, '{}', 4),
(269, 48, 'id', 'text', 'رقم الطلب', 1, 1, 1, 0, 0, 0, '{}', 1),
(270, 48, 'created_at', 'timestamp', 'تاريخ الطلب', 0, 1, 1, 1, 0, 1, '{}', 2),
(271, 48, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 3),
(272, 48, 'cover_order_id', 'text', 'رقم القطعة', 0, 1, 1, 1, 1, 1, '{}', 4),
(273, 49, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(274, 49, 'created_at', 'timestamp', 'تاريخ التسجيل', 0, 1, 1, 1, 0, 1, '{}', 2),
(275, 49, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 3),
(279, 51, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 0),
(280, 51, 'created_at', 'timestamp', 'تاريخ التسجيل', 0, 0, 0, 1, 0, 1, '{}', 2),
(281, 51, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 3),
(282, 51, 'order_id', 'text', 'رقم الطلب', 0, 1, 1, 1, 1, 1, '{}', 4),
(283, 44, 'order_id', 'text', 'رقم القطعة', 0, 1, 1, 1, 1, 1, '{}', 3),
(284, 51, 'user_id', 'text', 'رقم الصندوق', 0, 1, 1, 1, 1, 1, '{}', 5),
(285, 51, 'product_dimensions', 'text', 'أبعاد القطعة', 0, 1, 1, 1, 1, 1, '{}', 6),
(286, 51, 'product_weight', 'text', 'وزن القطعة', 0, 1, 1, 1, 1, 1, '{}', 7),
(287, 51, 'no_of_items', 'text', 'عدد الاجزاء', 0, 1, 1, 1, 1, 1, '{}', 8),
(288, 51, 'paid_amount', 'text', 'المبلغ', 0, 1, 1, 1, 1, 1, '{}', 9),
(289, 51, 'reference', 'text', 'المرجعية', 0, 1, 1, 1, 1, 1, '{}', 10),
(291, 51, 'status', 'text', 'حالة القطعة', 0, 0, 0, 1, 1, 1, '{}', 11),
(292, 44, 'number_items', 'text', 'عدد الأجزاء', 0, 1, 1, 1, 1, 1, '{}', 4),
(293, 52, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 0),
(294, 52, 'created_at', 'timestamp', 'تاريخ الإضافة', 0, 1, 1, 1, 0, 1, '{}', 7),
(295, 52, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 3),
(296, 52, 'Type_Order', 'text', 'نوع الشحنة', 0, 1, 1, 1, 1, 1, '{}', 4),
(297, 52, 'Reciver_name', 'text', 'أسم المستلم', 0, 1, 1, 1, 1, 1, '{}', 5),
(298, 52, 'Country', 'text', 'البلد', 0, 1, 1, 1, 1, 1, '{}', 6),
(299, 52, 'no_items', 'text', 'عدد الأجزاء', 0, 1, 1, 1, 1, 1, '{}', 8),
(300, 52, 'Product_weight', 'text', 'وزن القطعة', 0, 1, 1, 1, 1, 1, '{}', 9),
(301, 52, 'policy_number', 'text', 'رقم البوليصة', 0, 1, 1, 1, 1, 1, '{}', 10),
(302, 52, 'status', 'text', 'حالة البوليصة', 0, 1, 1, 1, 1, 1, '{}', 11),
(303, 52, 'order_id', 'text', 'رقم القطعة', 0, 1, 1, 1, 1, 1, '{}', 2),
(304, 52, 'Shipping_Company', 'text', 'شركة الشحن', 0, 0, 0, 1, 1, 1, '{}', 12),
(305, 52, 'Pdf_Policy', 'image', 'البوليصة', 0, 0, 0, 1, 1, 1, '{}', 13),
(306, 52, 'Includings_in_Shipment', 'text', 'محتويات الشحنة', 0, 0, 0, 1, 1, 1, '{}', 14),
(307, 52, 'price_Of_In_Items', 'text', 'المبلغ', 0, 0, 0, 1, 1, 1, '{}', 15),
(308, 40, 'order_id', 'text', 'رقم القطعة', 0, 1, 1, 1, 1, 1, '{}', 6),
(309, 40, 'policy_number', 'text', 'رقم البوليصة', 0, 1, 1, 1, 1, 1, '{}', 7),
(310, 40, 'final_weight', 'text', 'الوزن النهائي', 0, 1, 1, 1, 1, 1, '{}', 8),
(311, 40, 'no_of_items', 'text', 'عدد الأجزاء', 0, 1, 1, 1, 1, 1, '{}', 9),
(312, 40, 'reciever_name', 'text', 'أسم المستلم', 0, 1, 1, 1, 1, 1, '{}', 10),
(314, 25, 'reciever_name', 'text', 'أسم المستلم', 0, 1, 1, 1, 1, 1, '{}', 6),
(315, 25, 'no_items', 'text', 'عدد الأجزاء', 0, 1, 1, 1, 1, 1, '{}', 7),
(316, 25, 'policy_number', 'text', 'رقم البوليصة', 0, 1, 1, 1, 1, 1, '{}', 8),
(317, 25, 'final_weight', 'text', 'الوزن النهائي', 0, 1, 1, 1, 1, 1, '{}', 9),
(318, 53, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 0),
(319, 53, 'created_at', 'timestamp', 'تاريخ الوصول', 0, 1, 1, 1, 0, 1, '{}', 4),
(320, 53, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 2),
(321, 53, 'order_id', 'text', 'رقم القطعة', 0, 1, 1, 1, 1, 1, '{}', 3),
(322, 54, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 0),
(323, 54, 'created_at', 'timestamp', 'تاريخ التسجيل', 0, 0, 0, 1, 0, 1, '{}', 2),
(324, 54, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 3),
(325, 54, 'status', 'text', 'Status', 0, 1, 1, 1, 1, 1, '{}', 5),
(326, 54, 'store_place', 'text', 'Store Place', 0, 1, 1, 1, 1, 1, '{}', 6),
(327, 54, 'user_id', 'text', 'User Id', 0, 0, 0, 1, 1, 1, '{}', 7),
(328, 54, 'order_id', 'text', 'Order Id', 0, 1, 1, 1, 1, 1, '{}', 4),
(329, 9, 'Second', 'text', 'Second', 0, 0, 0, 1, 0, 1, '{}', 12),
(330, 47, 'sec_pics', 'text', 'Sec Pics', 0, 1, 1, 1, 1, 1, '{}', 12),
(341, 52, 'reference', 'text', 'Reference', 0, 0, 0, 1, 1, 1, '{}', 16),
(342, 52, 'user_id', 'text', 'User Id', 0, 0, 0, 1, 1, 1, '{}', 17),
(343, 25, 'reference', 'text', 'الكود', 0, 1, 1, 1, 1, 1, '{}', 9),
(344, 25, 'user_id', 'text', 'رقم الصندوق', 0, 1, 1, 1, 1, 1, '{}', 10),
(345, 53, 'user_id', 'text', 'User Id', 0, 1, 1, 1, 1, 1, '{}', 5);

-- --------------------------------------------------------

--
-- Table structure for table `data_types`
--

DROP TABLE IF EXISTS `data_types`;
CREATE TABLE IF NOT EXISTS `data_types` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT '0',
  `server_side` tinyint(4) NOT NULL DEFAULT '0',
  `details` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `data_types_name_unique` (`name`),
  UNIQUE KEY `data_types_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_types`
--

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `details`, `created_at`, `updated_at`) VALUES
(1, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', '\\App\\Http\\Controllers\\Voyager\\usersController', NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"desc\",\"default_search_key\":null,\"scope\":null}', '2021-12-06 11:49:07', '2022-03-01 09:35:21'),
(2, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"desc\",\"default_search_key\":null,\"scope\":null}', '2021-12-06 11:49:07', '2021-12-07 13:06:45'),
(3, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, 'TCG\\Voyager\\Http\\Controllers\\VoyagerRoleController', '', 1, 0, NULL, '2021-12-06 11:49:07', '2021-12-06 11:49:07'),
(4, 'categories', 'categories', 'Category', 'Categories', 'voyager-categories', 'TCG\\Voyager\\Models\\Category', NULL, '', '', 1, 0, NULL, '2021-12-06 11:50:20', '2021-12-06 11:50:20'),
(5, 'posts', 'posts', 'Post', 'Posts', 'voyager-news', 'TCG\\Voyager\\Models\\Post', 'TCG\\Voyager\\Policies\\PostPolicy', '', '', 1, 0, NULL, '2021-12-06 11:50:20', '2021-12-06 11:50:20'),
(6, 'pages', 'pages', 'Page', 'Pages', 'voyager-file-text', 'TCG\\Voyager\\Models\\Page', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"desc\",\"default_search_key\":null,\"scope\":null}', '2021-12-06 11:50:20', '2021-12-07 13:10:31'),
(9, 'arrivals', 'arrivals', 'Arrival', 'Arrivals', NULL, 'App\\Models\\Arrival', NULL, '\\App\\Http\\Controllers\\Voyager\\ArrivalController', NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2021-12-06 12:19:36', '2022-04-03 17:31:39'),
(10, 'shelf', 'shelf', 'Shelf', 'Shelves', NULL, 'App\\Models\\Shelf', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2021-12-06 12:21:09', '2021-12-06 12:21:09'),
(11, 'shelves', 'shelves', 'Shelf', 'Shelves', NULL, 'App\\Models\\Shelf', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2021-12-06 12:24:17', '2022-04-03 17:35:34'),
(12, 'sources', 'sources', 'Source', 'Sources', NULL, 'App\\Models\\Source', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2021-12-06 12:28:48', '2022-04-03 17:36:00'),
(13, 'rows', 'rows', 'Row', 'Rows', NULL, 'App\\Models\\Row', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2021-12-06 13:01:57', '2021-12-08 11:34:31'),
(16, 'add_to_table', 'add-to-table', 'Add To Table', 'Add To Tables', NULL, 'App\\Models\\AddToTable', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2021-12-06 13:49:10', '2021-12-06 13:49:10'),
(17, 'add_to_shelves', 'add-to-shelves', 'الاضافة الي الرفوف', 'Add_To_Shelf', NULL, 'App\\Models\\AddToShelf', NULL, '\\App\\Http\\Controllers\\Voyager\\AddToShelfController', NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2021-12-06 13:54:09', '2022-04-03 17:31:14'),
(19, 'new_rows', 'new-rows', 'New Row', 'New Rows', NULL, 'App\\Models\\NewRow', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2021-12-08 15:31:21', '2022-04-03 17:34:11'),
(22, 'recovers', 'recovers', 'Recover', 'Recovers', NULL, 'App\\Models\\Recover', NULL, '\\App\\Http\\Controllers\\Voyager\\RecoversController', NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2021-12-12 12:24:30', '2021-12-15 18:06:47'),
(23, 'usersorders', 'usersorders', 'Usersorder', 'Usersorders', NULL, 'App\\Models\\Usersorder', NULL, '\\App\\Http\\Controllers\\Voyager\\UserOrdersController', NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2021-12-15 18:32:38', '2021-12-22 12:30:01'),
(24, 'coverrequests', 'coverrequests', 'Coverrequest', 'Coverrequests', NULL, 'App\\Models\\Coverrequest', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2021-12-15 20:35:59', '2022-04-20 18:43:29'),
(25, 'shipppeditems', 'shipppeditems', 'Shipppeditem', 'Shipppeditems', NULL, 'App\\Models\\Shipppeditem', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2021-12-16 12:50:33', '2022-04-21 10:33:29'),
(26, 'orderstatus', 'orderstatus', 'Orderstatus', 'Orderstatuses', NULL, 'App\\Models\\Orderstatus', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2021-12-19 11:51:40', '2021-12-19 11:51:40'),
(27, 'orderstatuses', 'orderstatuses', 'Orderstatus', 'Orderstatuses', NULL, 'App\\Models\\Orderstatus', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2021-12-19 12:00:14', '2022-04-03 17:34:21'),
(28, 'requeststry', 'requeststry', 'Requeststry', 'Requeststries', NULL, 'App\\Models\\Requeststry', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2021-12-22 11:01:41', '2021-12-22 11:01:41'),
(29, 'requeststries', 'requeststries', 'Requeststry', 'Requeststries', NULL, 'App\\Models\\Requeststry', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2021-12-22 11:05:05', '2021-12-22 11:05:05'),
(30, 'secondcovers', 'secondcovers', 'Secondcover', 'Secondcovers', NULL, 'App\\Models\\Secondcover', NULL, '\\App\\Http\\Controllers\\Voyager\\SecondcoversController', NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2021-12-22 18:49:40', '2022-04-03 17:35:26'),
(31, 'userwindows', 'userwindows', 'Userwindow', 'Userwindows', NULL, 'App\\Models\\Userwindow', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2021-12-26 10:44:24', '2021-12-26 10:44:24'),
(32, 'packwindows', 'packwindows', 'Packwindow', 'Packwindows', NULL, 'App\\Models\\Packwindow', NULL, '\\App\\Http\\Controllers\\Voyager\\PackwindowsController', NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2021-12-26 10:52:29', '2022-04-03 17:34:39'),
(33, 'barccodes', 'barccodes', 'Barccode', 'Barccodes', NULL, 'App\\Models\\Barccode', NULL, '\\App\\Http\\Controllers\\Voyager\\BarcodesController', NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2021-12-30 11:55:54', '2022-04-03 17:32:00'),
(37, 'precovering', 'precovering', 'Precovering', 'Precoverings', NULL, 'App\\Models\\Precovering', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2022-02-28 09:27:18', '2022-02-28 09:27:18'),
(38, 'pre_cover', 'pre-cover', 'Pre Cover', 'Pre Covers', NULL, 'App\\Models\\PreCover', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2022-02-28 09:39:20', '2022-02-28 09:39:20'),
(39, 'pre_covers', 'pre-covers', 'Pre Cover', 'Pre Covers', NULL, 'App\\Models\\PreCover', NULL, '\\App\\Http\\Controllers\\Voyager\\PreCoverController', NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2022-02-28 09:41:43', '2022-04-03 17:34:53'),
(40, 'shipmethods', 'shipmethods', 'Shipmethod', 'Shipmethods', NULL, 'App\\Models\\Shipmethod', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2022-02-28 14:33:27', '2022-04-03 17:35:48'),
(41, 'recoverequest', 'recoverequest', 'Recoverequest', 'Recoverequests', NULL, 'App\\Models\\Recoverequest', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2022-03-02 14:43:12', '2022-03-02 14:43:12'),
(42, 'recoverenquiries', 'recoverenquiries', 'Recoverenquiry', 'Recoverenquiries', NULL, 'App\\Models\\Recoverenquiry', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2022-03-02 14:50:03', '2022-04-03 17:35:01'),
(43, 'statuspackets', 'statuspackets', 'Statuspacket', 'Statuspackets', NULL, 'App\\Models\\Statuspacket', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2022-03-03 15:13:04', '2022-04-03 17:36:08'),
(44, 'ship_talabats', 'ship-talabats', 'Ship Talabat', 'Ship Talabats', NULL, 'App\\Models\\ShipTalabat', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2022-03-03 16:52:58', '2022-03-22 09:47:30'),
(45, 'currentship', 'currentship', 'Currentship', 'Currentships', NULL, 'App\\Models\\Currentship', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2022-03-07 11:15:29', '2022-03-07 11:15:29'),
(46, 'currentships', 'currentships', 'Currentship', 'Currentships', NULL, 'App\\Models\\Currentship', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2022-03-07 11:19:58', '2022-04-03 17:32:29'),
(47, 'items', 'items', 'Item', 'Items', NULL, 'App\\Models\\Item', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2022-03-09 17:32:22', '2022-04-03 11:26:40'),
(48, 'packremovals', 'packremovals', 'Packremoval', 'Packremovals', NULL, 'App\\Models\\Packremoval', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2022-03-10 13:18:01', '2022-03-22 09:38:21'),
(49, 'firstpayments', 'firstpayments', 'Firstpayment', 'Firstpayments', NULL, 'App\\Models\\Firstpayment', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2022-03-13 10:02:25', '2022-04-03 17:34:02'),
(51, 'alreadycovereds', 'alreadycovereds', 'Alreadycovered', 'Alreadycovereds', NULL, 'App\\Models\\Alreadycovered', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2022-03-13 11:42:10', '2022-04-03 17:31:27'),
(52, 'policies', 'policies', 'Policy', 'Policies', NULL, 'App\\Models\\Policy', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2022-03-13 18:13:51', '2022-04-21 10:30:38'),
(53, 'finalarrivals', 'finalarrivals', 'Finalarrival', 'Finalarrivals', NULL, 'App\\Models\\Finalarrival', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2022-03-16 10:15:32', '2022-04-21 10:45:30'),
(54, 'returnitems', 'returnitems', 'Returnitem', 'Returnitems', NULL, 'App\\Models\\Returnitem', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2022-03-16 13:51:58', '2022-04-03 17:35:15');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `finalarrivals`
--

DROP TABLE IF EXISTS `finalarrivals`;
CREATE TABLE IF NOT EXISTS `finalarrivals` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `order_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `finalarrivals`
--

INSERT INTO `finalarrivals` (`id`, `created_at`, `updated_at`, `order_id`, `user_id`) VALUES
(12, '2022-04-20 16:40:10', '2022-04-20 16:40:10', 1, NULL),
(13, '2022-04-21 10:47:07', '2022-04-21 10:47:07', 8, 38);

-- --------------------------------------------------------

--
-- Table structure for table `firstpayments`
--

DROP TABLE IF EXISTS `firstpayments`;
CREATE TABLE IF NOT EXISTS `firstpayments` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

DROP TABLE IF EXISTS `items`;
CREATE TABLE IF NOT EXISTS `items` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `Source` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `weight` int(11) DEFAULT NULL,
  `pics` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `store_status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_id` int(11) DEFAULT NULL,
  `shelf` char(12) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `row` int(11) DEFAULT NULL,
  `sec_pics` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=261 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`id`, `created_at`, `updated_at`, `user_id`, `Source`, `weight`, `pics`, `store_status`, `order_id`, `shelf`, `row`, `sec_pics`) VALUES
(242, '2022-04-20 16:33:18', '2022-04-21 10:34:07', 35, 'شركة سوق', 66, 'arrivals\\April2022\\Rhg3PoMeMehBqKBvhKuS.png', 'مسحوبة من المستودع', 220, 'B', 2, 'arrivals\\April2022\\1MZDIfTEoPVh8mCAsv4v.png'),
(247, '2022-04-20 18:40:16', '2022-04-20 18:40:16', 38, 'شركة سوق', NULL, NULL, 'موجودة في المسودع', 230, 'B', 1, NULL),
(248, '2022-04-20 18:50:00', '2022-04-21 10:09:30', 38, 'شركة سوق', NULL, NULL, 'مسحوبة من المستودع', 232, 'c', 1, NULL),
(249, '2022-04-20 18:51:20', '2022-04-20 18:51:20', 38, 'شركة أمازون', NULL, NULL, 'موجودة في المسودع', 234, 'A', 1, NULL),
(250, '2022-04-20 18:52:38', '2022-04-20 18:52:38', 38, 'شركة سوق', NULL, NULL, 'موجودة في المسودع', 236, 'B', 1, NULL),
(251, '2022-04-20 18:53:35', '2022-04-20 18:53:35', 38, 'شركة سوق', NULL, NULL, 'موجودة في المسودع', 238, 'B', 2, NULL),
(252, '2022-04-20 18:55:04', '2022-04-20 18:55:04', 38, 'شركة سوق', 55, NULL, 'موجودة في المسودع', 240, 'B', 2, NULL),
(253, '2022-04-20 18:58:10', '2022-04-20 18:58:10', 38, 'شركة سوق', NULL, NULL, 'موجودة في المسودع', 242, 'A', 1, NULL),
(254, '2022-04-20 18:59:22', '2022-04-20 19:09:55', 38, 'شركة أمازون', NULL, NULL, 'مسحوبة من المستودع', 244, 'A', 3, NULL),
(255, '2022-04-20 19:00:58', '2022-04-20 19:00:58', 38, 'شركة سوق', NULL, NULL, 'موجودة في المسودع', 246, 'B', 2, NULL),
(256, '2022-04-20 19:02:04', '2022-04-20 19:09:55', 38, 'شركة سوق', NULL, NULL, 'مسحوبة من المستودع', 248, 'B', 1, NULL),
(257, '2022-04-20 19:03:28', '2022-04-21 13:12:35', 38, 'شركة سوق', 55, NULL, 'مسحوبة من المستودع', 250, 'B', 5, NULL),
(258, '2022-04-20 19:04:03', '2022-04-20 19:04:03', 38, 'شركة سوق', 55, NULL, 'موجودة في المسودع', 252, 'B', 1, NULL),
(259, '2022-04-20 19:08:27', '2022-04-20 19:08:27', 38, 'شركة أمازون', NULL, NULL, 'موجودة في المسودع', 254, 'A', 1, NULL),
(260, '2022-04-20 19:08:38', '2022-04-20 19:08:38', 38, 'شركة سوق', NULL, NULL, 'موجودة في المسودع', 256, 'B', 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

DROP TABLE IF EXISTS `menus`;
CREATE TABLE IF NOT EXISTS `menus` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `menus_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2021-12-06 11:49:07', '2021-12-06 11:49:07');

-- --------------------------------------------------------

--
-- Table structure for table `menu_items`
--

DROP TABLE IF EXISTS `menu_items`;
CREATE TABLE IF NOT EXISTS `menu_items` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `menu_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `menu_items_menu_id_foreign` (`menu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
(1, 1, 'الرئيسية', '', '_self', 'voyager-boat', '#000000', NULL, 1, '2021-12-06 11:49:07', '2021-12-07 12:30:52', 'voyager.dashboard', 'null'),
(3, 1, 'المستخدمين', '', '_self', 'voyager-person', '#000000', NULL, 2, '2021-12-06 11:49:07', '2021-12-07 13:36:51', 'voyager.users.index', 'null'),
(6, 1, 'Menu Builder', '', '_self', 'voyager-list', NULL, 5, 1, '2021-12-06 11:49:07', '2021-12-06 13:24:39', 'voyager.menus.index', NULL),
(7, 1, 'Database', '', '_self', 'voyager-data', NULL, 5, 2, '2021-12-06 11:49:07', '2021-12-06 13:24:39', 'voyager.database.index', NULL),
(8, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 5, 3, '2021-12-06 11:49:07', '2021-12-06 13:24:39', 'voyager.compass.index', NULL),
(9, 1, 'BREAD', '', '_self', 'voyager-bread', NULL, 5, 4, '2021-12-06 11:49:07', '2021-12-06 13:24:39', 'voyager.bread.index', NULL),
(10, 1, 'الإعدادات', '', '_self', 'voyager-settings', '#000000', NULL, 24, '2021-12-06 11:49:07', '2022-03-17 10:18:41', 'voyager.settings.index', 'null'),
(13, 1, 'صفحات ثابتة', '', '_self', 'voyager-file-text', '#000000', NULL, 22, '2021-12-06 11:50:20', '2022-03-17 10:18:44', 'voyager.pages.index', 'null'),
(16, 1, 'تسجيل الوصول', '', '_self', 'voyager-boat', '#000000', NULL, 7, '2021-12-06 12:19:36', '2021-12-30 14:25:23', 'voyager.arrivals.index', 'null'),
(18, 1, 'الرفوف', '', '_self', 'voyager-external', '#000000', NULL, 5, '2021-12-06 12:24:17', '2021-12-30 14:25:23', 'voyager.shelves.index', 'null'),
(19, 1, 'مصادر الشحنات', '', '_self', 'voyager-markdown', '#000000', NULL, 4, '2021-12-06 12:28:48', '2021-12-30 14:25:23', 'voyager.sources.index', 'null'),
(22, 1, 'أضافة للرفوف', '', '_self', 'voyager-check-circle', '#000000', NULL, 8, '2021-12-06 13:54:09', '2021-12-30 14:25:23', 'voyager.add-to-shelves.index', 'null'),
(23, 1, 'العمليات', '', '_self', 'voyager-bread', '#000000', 27, 1, '2021-12-07 12:34:53', '2021-12-07 12:49:33', 'voyager.bread.index', 'null'),
(24, 1, 'قاعدة البيانات', '', '_self', 'voyager-data', '#000000', 27, 2, '2021-12-07 12:36:58', '2021-12-07 12:46:12', 'voyager.database.index', 'null'),
(25, 1, 'البوصلة', '', '_self', 'voyager-compass', '#000000', 27, 3, '2021-12-07 12:38:53', '2021-12-07 12:46:46', 'voyager.compass.index', 'null'),
(26, 1, 'القوائم', '', '_self', 'voyager-medal-rank-star', '#000000', 27, 4, '2021-12-07 12:42:15', '2021-12-07 12:47:34', 'voyager.menus.index', 'null'),
(27, 1, 'تحكم', '#', '_self', 'voyager-tools', '#000000', NULL, 23, '2021-12-07 12:44:22', '2022-03-17 10:18:41', NULL, ''),
(28, 1, 'أعمدة الرف', '', '_self', 'voyager-cursor', '#000000', NULL, 6, '2021-12-08 15:31:22', '2021-12-30 14:25:23', 'voyager.new-rows.index', 'null'),
(31, 1, 'إنشاء طلب التغليف من العميل', '', '_self', 'voyager-book-download', '#000000', NULL, 9, '2021-12-15 18:32:40', '2022-03-08 08:13:19', 'voyager.usersorders.index', 'null'),
(32, 1, 'طلبات اعادة التغليف', '', '_self', 'voyager-plug', '#000000', NULL, 10, '2021-12-15 20:35:59', '2022-03-07 06:13:26', 'voyager.coverrequests.index', 'null'),
(38, 1, 'تغليف القطعة', '', '_self', 'voyager-thumbs-up', '#000000', NULL, 30, '2021-12-22 18:49:40', '2022-03-17 10:18:41', 'voyager.secondcovers.index', 'null'),
(40, 1, 'باركود الخانات', 'http://127.0.0.1:8000/ShelfBarcode', '_self', 'voyager-lighthouse', '#000000', NULL, 21, '2021-12-23 15:00:04', '2022-03-17 10:18:44', NULL, ''),
(41, 1, 'حالة الصندوق', '', '_self', 'voyager-smile', '#000000', NULL, 20, '2021-12-26 10:44:25', '2022-03-17 10:18:44', 'voyager.userwindows.index', 'null'),
(42, 1, 'حالة القطعة', '', '_self', 'voyager-question', '#000000', NULL, 19, '2021-12-26 10:52:29', '2022-03-17 10:18:44', 'voyager.packwindows.index', 'null'),
(44, 1, 'طلبات تم شحنها', '', '_self', 'voyager-watch', '#000000', NULL, 16, '2021-12-27 19:27:28', '2022-03-16 09:53:58', 'voyager.shipppeditems.index', 'null'),
(45, 1, 'طباعة الباركود', '', '_self', 'voyager-news', '#000000', NULL, 3, '2021-12-30 11:55:54', '2021-12-30 14:25:23', 'voyager.barccodes.index', 'null'),
(48, 1, 'تجهيز الشحن', '', '_self', 'voyager-laptop', '#000000', NULL, 29, '2022-02-28 09:41:43', '2022-03-17 10:18:41', 'voyager.pre-covers.index', 'null'),
(49, 1, 'تسليم شركات الشحن', '', '_self', 'voyager-campfire', '#000000', NULL, 15, '2022-02-28 14:33:27', '2022-03-16 09:05:52', 'voyager.shipmethods.index', 'null'),
(51, 1, 'حالات تخزين القطع', '', '_self', 'voyager-kraken', '#000000', NULL, 25, '2022-03-02 14:50:03', '2022-03-17 10:18:41', 'voyager.recoverenquiries.index', 'null'),
(53, 1, 'طلبات الشحن', '', '_self', 'voyager-cannon', '#000000', NULL, 13, '2022-03-03 16:52:58', '2022-03-13 12:53:36', 'voyager.ship-talabats.index', 'null'),
(55, 1, 'المرجعية', '', '_self', 'voyager-whale', '#000000', NULL, 26, '2022-03-07 11:19:58', '2022-03-17 10:18:41', 'voyager.currentships.index', 'null'),
(56, 1, 'القطع', '', '_self', 'voyager-treasure', '#000000', NULL, 27, '2022-03-09 17:32:22', '2022-03-17 10:18:41', 'voyager.items.index', 'null'),
(57, 1, 'سحب القطع من المستودع', '', '_self', 'voyager-trees', '#000000', NULL, 11, '2022-03-10 13:18:02', '2022-03-10 17:23:38', 'voyager.packremovals.index', 'null'),
(58, 1, 'عملية الدفع الأولي من العميل', '', '_self', 'voyager-credit-card', '#000000', NULL, 28, '2022-03-13 10:02:26', '2022-03-17 10:18:41', 'voyager.firstpayments.index', 'null'),
(60, 1, 'طلبات تم تغليفها', '', '_self', 'voyager-treasure-open', '#000000', NULL, 12, '2022-03-13 11:42:10', '2022-03-13 12:53:36', 'voyager.alreadycovereds.index', 'null'),
(61, 1, 'شاشة البوليصة', '', '_self', 'voyager-edit', '#000000', NULL, 14, '2022-03-13 18:13:51', '2022-03-13 18:17:59', 'voyager.policies.index', 'null'),
(62, 1, 'تم الوصول', '', '_self', 'voyager-pen', '#000000', NULL, 17, '2022-03-16 10:15:32', '2022-03-16 10:16:39', 'voyager.finalarrivals.index', 'null'),
(63, 1, 'طلبات الإرجاع', '', '_self', 'voyager-exclamation', '#000000', NULL, 18, '2022-03-16 13:51:58', '2022-03-17 10:18:44', 'voyager.returnitems.index', 'null');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_01_01_000000_add_voyager_user_fields', 1),
(4, '2016_01_01_000000_create_data_types_table', 1),
(5, '2016_05_19_173453_create_menu_table', 1),
(6, '2016_10_21_190000_create_roles_table', 1),
(7, '2016_10_21_190000_create_settings_table', 1),
(8, '2016_11_30_135954_create_permission_table', 1),
(9, '2016_11_30_141208_create_permission_role_table', 1),
(10, '2016_12_26_201236_data_types__add__server_side', 1),
(11, '2017_01_13_000000_add_route_to_menu_items_table', 1),
(12, '2017_01_14_005015_create_translations_table', 1),
(13, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 1),
(14, '2017_03_06_000000_add_controller_to_data_types_table', 1),
(15, '2017_04_21_000000_add_order_to_data_rows_table', 1),
(16, '2017_07_05_210000_add_policyname_to_data_types_table', 1),
(17, '2017_08_05_000000_add_group_to_settings_table', 1),
(18, '2017_11_26_013050_add_user_role_relationship', 1),
(19, '2017_11_26_015000_create_user_roles_table', 1),
(20, '2018_03_11_000000_add_user_settings', 1),
(21, '2018_03_14_000000_add_details_to_data_types_table', 1),
(22, '2018_03_16_000000_make_settings_value_nullable', 1),
(23, '2019_08_19_000000_create_failed_jobs_table', 1),
(24, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(25, '2016_01_01_000000_create_pages_table', 2),
(26, '2016_01_01_000000_create_posts_table', 2),
(27, '2016_02_15_204651_create_categories_table', 2),
(28, '2017_04_11_000000_alter_post_nullable_fields_table', 2),
(29, '2016_06_01_000001_create_oauth_auth_codes_table', 3),
(30, '2016_06_01_000002_create_oauth_access_tokens_table', 3),
(31, '2016_06_01_000003_create_oauth_refresh_tokens_table', 3),
(32, '2016_06_01_000004_create_oauth_clients_table', 3),
(33, '2016_06_01_000005_create_oauth_personal_access_clients_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `new_rows`
--

DROP TABLE IF EXISTS `new_rows`;
CREATE TABLE IF NOT EXISTS `new_rows` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` char(12) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `new_rows`
--

INSERT INTO `new_rows` (`id`, `name`, `created_at`, `updated_at`) VALUES
(8, '1', '2021-12-08 18:29:35', '2021-12-08 18:29:35'),
(10, '2', '2022-04-03 10:42:45', '2022-04-03 10:42:45'),
(11, '3', '2022-04-03 10:42:50', '2022-04-03 10:42:50'),
(12, '4', '2022-04-03 10:42:57', '2022-04-03 10:42:57'),
(13, '5', '2022-04-03 10:43:02', '2022-04-03 10:43:02');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

DROP TABLE IF EXISTS `oauth_access_tokens`;
CREATE TABLE IF NOT EXISTS `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_access_tokens_user_id_index` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

DROP TABLE IF EXISTS `oauth_auth_codes`;
CREATE TABLE IF NOT EXISTS `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_auth_codes_user_id_index` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

DROP TABLE IF EXISTS `oauth_clients`;
CREATE TABLE IF NOT EXISTS `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_clients_user_id_index` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', 'iWvZQS3xzyheCNoWmFpYPbqtBFxlHIJOEQaFHqMP', NULL, 'http://localhost', 1, 0, 0, '2022-04-20 17:26:41', '2022-04-20 17:26:41'),
(2, NULL, 'Laravel Password Grant Client', '9HgJKehcn2D2PGko18Vy2WI7bk7sh8n40PLDxFGz', 'users', 'http://localhost', 0, 1, 0, '2022-04-20 17:26:41', '2022-04-20 17:26:41');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

DROP TABLE IF EXISTS `oauth_personal_access_clients`;
CREATE TABLE IF NOT EXISTS `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2022-04-20 17:26:41', '2022-04-20 17:26:41');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

DROP TABLE IF EXISTS `oauth_refresh_tokens`;
CREATE TABLE IF NOT EXISTS `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orderstatuses`
--

DROP TABLE IF EXISTS `orderstatuses`;
CREATE TABLE IF NOT EXISTS `orderstatuses` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `Status` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `order_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=241 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orderstatuses`
--

INSERT INTO `orderstatuses` (`id`, `Status`, `created_at`, `updated_at`, `order_id`) VALUES
(222, 'مخزنة', '2022-04-20 16:25:49', '2022-04-20 16:33:18', 220),
(223, 'مخزنة', '2022-04-20 18:13:14', '2022-04-20 18:13:34', 222),
(224, 'مخزنة', '2022-04-20 18:25:02', '2022-04-20 18:25:19', 224),
(225, 'مخزنة', '2022-04-20 18:36:16', '2022-04-20 18:36:39', 226),
(226, 'مخزنة', '2022-04-20 18:38:00', '2022-04-20 18:38:15', 228),
(227, 'مخزنة', '2022-04-20 18:40:00', '2022-04-20 18:40:16', 230),
(228, 'مخزنة', '2022-04-20 18:49:48', '2022-04-20 18:50:00', 232),
(229, 'مخزنة', '2022-04-20 18:51:03', '2022-04-20 18:51:20', 234),
(230, 'مخزنة', '2022-04-20 18:52:24', '2022-04-20 18:52:38', 236),
(231, 'مخزنة', '2022-04-20 18:53:23', '2022-04-20 18:53:35', 238),
(232, 'مخزنة', '2022-04-20 18:54:50', '2022-04-20 18:55:04', 240),
(233, 'مخزنة', '2022-04-20 18:57:56', '2022-04-20 18:58:10', 242),
(234, 'مخزنة', '2022-04-20 18:59:09', '2022-04-20 18:59:22', 244),
(235, 'مخزنة', '2022-04-20 19:00:44', '2022-04-20 19:00:58', 246),
(236, 'مخزنة', '2022-04-20 19:01:50', '2022-04-20 19:02:04', 248),
(237, 'مخزنة', '2022-04-20 19:03:15', '2022-04-20 19:03:28', 250),
(238, 'مخزنة', '2022-04-20 19:03:50', '2022-04-20 19:04:03', 252),
(239, 'مخزنة', '2022-04-20 19:08:04', '2022-04-20 19:08:27', 254),
(240, 'مخزنة', '2022-04-20 19:08:14', '2022-04-20 19:08:38', 256);

-- --------------------------------------------------------

--
-- Table structure for table `packremovals`
--

DROP TABLE IF EXISTS `packremovals`;
CREATE TABLE IF NOT EXISTS `packremovals` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `cover_order_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `packwindows`
--

DROP TABLE IF EXISTS `packwindows`;
CREATE TABLE IF NOT EXISTS `packwindows` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `Date_Of_Arrival` date DEFAULT NULL,
  `User_Number` int(11) DEFAULT NULL,
  `Source_Market` text COLLATE utf8mb4_unicode_ci,
  `P_Dimensions` int(11) DEFAULT NULL,
  `P_Weight` int(11) DEFAULT NULL,
  `Arrival_ID` int(11) DEFAULT NULL,
  `Add_To_Shelf_ID` int(11) DEFAULT NULL,
  `General_Images` longtext COLLATE utf8mb4_unicode_ci,
  `ND_Taghleef_ID` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `order_status` text COLLATE utf8mb4_unicode_ci,
  `Shelf` text COLLATE utf8mb4_unicode_ci,
  `Row` text COLLATE utf8mb4_unicode_ci,
  `CoverRequest_ID` int(11) DEFAULT NULL,
  `nd_shelf` text COLLATE utf8mb4_unicode_ci,
  `nd_row` text COLLATE utf8mb4_unicode_ci,
  `nd_dimensions` text COLLATE utf8mb4_unicode_ci,
  `nd_weight` text COLLATE utf8mb4_unicode_ci,
  `ND_Packaged_Order_Id` int(11) DEFAULT NULL,
  `Cover_Images` longtext COLLATE utf8mb4_unicode_ci,
  `Arrival_Images` longtext COLLATE utf8mb4_unicode_ci,
  `Arrive_Barcode` int(11) DEFAULT NULL,
  `AddShelf_Barcode` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=242 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `packwindows`
--

INSERT INTO `packwindows` (`id`, `Date_Of_Arrival`, `User_Number`, `Source_Market`, `P_Dimensions`, `P_Weight`, `Arrival_ID`, `Add_To_Shelf_ID`, `General_Images`, `ND_Taghleef_ID`, `created_at`, `updated_at`, `order_status`, `Shelf`, `Row`, `CoverRequest_ID`, `nd_shelf`, `nd_row`, `nd_dimensions`, `nd_weight`, `ND_Packaged_Order_Id`, `Cover_Images`, `Arrival_Images`, `Arrive_Barcode`, `AddShelf_Barcode`) VALUES
(223, '2022-04-20', 35, 'شركة سوق', 25, 66, 220, 3, 'arrivals\\April2022\\Rhg3PoMeMehBqKBvhKuS.png', NULL, '2022-04-20 16:25:49', '2022-04-20 16:33:18', 'مخزنة', 'B', '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'arrivals\\April2022\\1MZDIfTEoPVh8mCAsv4v.png', NULL, NULL),
(224, '2022-04-20', 38, 'شركة سوق', 25, 55, 222, 5, NULL, NULL, '2022-04-20 18:13:14', '2022-04-20 18:13:34', 'مخزنة', 'B', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(225, '2022-04-20', 38, 'شركة سوق', 25, 55, 224, 6, NULL, NULL, '2022-04-20 18:25:02', '2022-04-20 18:25:19', 'مخزنة', 'A', '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(226, '2022-04-20', 38, 'شركة سوق', 25, 55, 226, 7, NULL, NULL, '2022-04-20 18:36:16', '2022-04-20 18:36:39', 'مخزنة', 'c', '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(227, '2022-04-20', 38, 'شركة سوق', NULL, NULL, 228, 8, NULL, NULL, '2022-04-20 18:38:00', '2022-04-20 18:38:15', 'مخزنة', 'A', '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(228, '2022-04-20', 38, 'شركة سوق', NULL, NULL, 230, 9, NULL, NULL, '2022-04-20 18:40:00', '2022-04-20 18:40:16', 'مخزنة', 'B', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(229, '2022-04-20', 38, 'شركة سوق', NULL, NULL, 232, 10, NULL, NULL, '2022-04-20 18:49:48', '2022-04-20 18:50:00', 'مخزنة', 'c', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(230, '2022-04-20', 38, 'شركة أمازون', NULL, NULL, 234, 11, NULL, NULL, '2022-04-20 18:51:03', '2022-04-20 18:51:20', 'مخزنة', 'A', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(231, '2022-04-20', 38, 'شركة سوق', NULL, NULL, 236, 12, NULL, NULL, '2022-04-20 18:52:24', '2022-04-20 18:52:38', 'مخزنة', 'B', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(232, '2022-04-20', 38, 'شركة سوق', NULL, NULL, 238, 13, NULL, NULL, '2022-04-20 18:53:23', '2022-04-20 18:53:35', 'مخزنة', 'B', '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(233, '2022-04-20', 38, 'شركة سوق', 25, 55, 240, 14, NULL, NULL, '2022-04-20 18:54:50', '2022-04-20 18:55:04', 'مخزنة', 'B', '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(234, '2022-04-20', 38, 'شركة سوق', NULL, NULL, 242, 15, NULL, NULL, '2022-04-20 18:57:56', '2022-04-20 18:58:10', 'مخزنة', 'A', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(235, '2022-04-20', 38, 'شركة أمازون', NULL, NULL, 244, 16, NULL, NULL, '2022-04-20 18:59:09', '2022-04-20 18:59:22', 'مخزنة', 'A', '3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(236, '2022-04-20', 38, 'شركة سوق', NULL, NULL, 246, 17, NULL, NULL, '2022-04-20 19:00:44', '2022-04-20 19:00:58', 'مخزنة', 'B', '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(237, '2022-04-20', 38, 'شركة سوق', NULL, NULL, 248, 18, NULL, NULL, '2022-04-20 19:01:50', '2022-04-20 19:02:04', 'مخزنة', 'B', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(238, '2022-04-20', 38, 'شركة سوق', 45, 55, 250, 19, NULL, NULL, '2022-04-20 19:03:15', '2022-04-20 19:03:28', 'مخزنة', 'B', '5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(239, '2022-04-20', 38, 'شركة سوق', 25, 55, 252, 20, NULL, NULL, '2022-04-20 19:03:50', '2022-04-20 19:04:03', 'مخزنة', 'B', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(240, '2022-04-20', 38, 'شركة أمازون', NULL, NULL, 254, 21, NULL, NULL, '2022-04-20 19:08:04', '2022-04-20 19:08:27', 'مخزنة', 'A', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(241, '2022-04-20', 38, 'شركة سوق', NULL, NULL, 256, 22, NULL, NULL, '2022-04-20 19:08:14', '2022-04-20 19:08:38', 'مخزنة', 'B', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

DROP TABLE IF EXISTS `pages`;
CREATE TABLE IF NOT EXISTS `pages` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `author_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci,
  `body` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `status` enum('ACTIVE','INACTIVE') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'INACTIVE',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `pages_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `author_id`, `title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `created_at`, `updated_at`) VALUES
(1, 0, 'Hello World', 'Hang the jib grog grog blossom grapple dance the hempen jig gangway pressgang bilge rat to go on account lugger. Nelsons folly gabion line draught scallywag fire ship gaff fluke fathom case shot. Sea Legs bilge rat sloop matey gabion long clothes run a shot across the bow Gold Road cog league.', '<p>Hello World. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', 'pages/page1.jpg', 'hello-world', 'Yar Meta Description', 'Keyword1, Keyword2', 'ACTIVE', '2021-12-06 11:50:20', '2021-12-06 11:50:20'),
(2, 37, 'ffewfwef', NULL, NULL, 'pages/April2022/EkTYF3VMAReycvsqFmSK.jpg', 'ffewfwef', NULL, NULL, 'INACTIVE', '2022-04-19 00:22:18', '2022-04-19 00:22:18'),
(3, 37, 'rwerwer', NULL, NULL, 'pages/April2022/gY1tcgC7MqyQU5hlfo15.jpg', 'rwerwer', NULL, NULL, 'INACTIVE', '2022-04-19 00:24:54', '2022-04-19 00:24:54');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('api@gmail.com', '$2y$10$PrMu7MX56a46xYysRMh7OecElmLXiEM6nkFlmCJ/xpBRCNJhiKYnO', '2022-04-21 11:06:26');

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

DROP TABLE IF EXISTS `permissions`;
CREATE TABLE IF NOT EXISTS `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `permissions_key_index` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=246 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES
(1, 'browse_admin', NULL, '2021-12-06 11:49:08', '2021-12-06 11:49:08'),
(2, 'browse_bread', NULL, '2021-12-06 11:49:08', '2021-12-06 11:49:08'),
(3, 'browse_database', NULL, '2021-12-06 11:49:08', '2021-12-06 11:49:08'),
(4, 'browse_media', NULL, '2021-12-06 11:49:08', '2021-12-06 11:49:08'),
(5, 'browse_compass', NULL, '2021-12-06 11:49:08', '2021-12-06 11:49:08'),
(6, 'browse_menus', 'menus', '2021-12-06 11:49:08', '2021-12-06 11:49:08'),
(7, 'read_menus', 'menus', '2021-12-06 11:49:08', '2021-12-06 11:49:08'),
(8, 'edit_menus', 'menus', '2021-12-06 11:49:08', '2021-12-06 11:49:08'),
(9, 'add_menus', 'menus', '2021-12-06 11:49:08', '2021-12-06 11:49:08'),
(10, 'delete_menus', 'menus', '2021-12-06 11:49:08', '2021-12-06 11:49:08'),
(11, 'browse_roles', 'roles', '2021-12-06 11:49:08', '2021-12-06 11:49:08'),
(12, 'read_roles', 'roles', '2021-12-06 11:49:08', '2021-12-06 11:49:08'),
(13, 'edit_roles', 'roles', '2021-12-06 11:49:08', '2021-12-06 11:49:08'),
(14, 'add_roles', 'roles', '2021-12-06 11:49:08', '2021-12-06 11:49:08'),
(15, 'delete_roles', 'roles', '2021-12-06 11:49:08', '2021-12-06 11:49:08'),
(16, 'browse_users', 'users', '2021-12-06 11:49:08', '2021-12-06 11:49:08'),
(17, 'read_users', 'users', '2021-12-06 11:49:08', '2021-12-06 11:49:08'),
(18, 'edit_users', 'users', '2021-12-06 11:49:08', '2021-12-06 11:49:08'),
(19, 'add_users', 'users', '2021-12-06 11:49:08', '2021-12-06 11:49:08'),
(20, 'delete_users', 'users', '2021-12-06 11:49:08', '2021-12-06 11:49:08'),
(21, 'browse_settings', 'settings', '2021-12-06 11:49:08', '2021-12-06 11:49:08'),
(22, 'read_settings', 'settings', '2021-12-06 11:49:08', '2021-12-06 11:49:08'),
(23, 'edit_settings', 'settings', '2021-12-06 11:49:08', '2021-12-06 11:49:08'),
(24, 'add_settings', 'settings', '2021-12-06 11:49:08', '2021-12-06 11:49:08'),
(25, 'delete_settings', 'settings', '2021-12-06 11:49:08', '2021-12-06 11:49:08'),
(26, 'browse_categories', 'categories', '2021-12-06 11:50:20', '2021-12-06 11:50:20'),
(27, 'read_categories', 'categories', '2021-12-06 11:50:20', '2021-12-06 11:50:20'),
(28, 'edit_categories', 'categories', '2021-12-06 11:50:20', '2021-12-06 11:50:20'),
(29, 'add_categories', 'categories', '2021-12-06 11:50:20', '2021-12-06 11:50:20'),
(30, 'delete_categories', 'categories', '2021-12-06 11:50:20', '2021-12-06 11:50:20'),
(31, 'browse_posts', 'posts', '2021-12-06 11:50:20', '2021-12-06 11:50:20'),
(32, 'read_posts', 'posts', '2021-12-06 11:50:20', '2021-12-06 11:50:20'),
(33, 'edit_posts', 'posts', '2021-12-06 11:50:20', '2021-12-06 11:50:20'),
(34, 'add_posts', 'posts', '2021-12-06 11:50:20', '2021-12-06 11:50:20'),
(35, 'delete_posts', 'posts', '2021-12-06 11:50:20', '2021-12-06 11:50:20'),
(36, 'browse_pages', 'pages', '2021-12-06 11:50:20', '2021-12-06 11:50:20'),
(37, 'read_pages', 'pages', '2021-12-06 11:50:20', '2021-12-06 11:50:20'),
(38, 'edit_pages', 'pages', '2021-12-06 11:50:20', '2021-12-06 11:50:20'),
(39, 'add_pages', 'pages', '2021-12-06 11:50:20', '2021-12-06 11:50:20'),
(40, 'delete_pages', 'pages', '2021-12-06 11:50:20', '2021-12-06 11:50:20'),
(51, 'browse_arrivals', 'arrivals', '2021-12-06 12:19:36', '2021-12-06 12:19:36'),
(52, 'read_arrivals', 'arrivals', '2021-12-06 12:19:36', '2021-12-06 12:19:36'),
(53, 'edit_arrivals', 'arrivals', '2021-12-06 12:19:36', '2021-12-06 12:19:36'),
(54, 'add_arrivals', 'arrivals', '2021-12-06 12:19:36', '2021-12-06 12:19:36'),
(55, 'delete_arrivals', 'arrivals', '2021-12-06 12:19:36', '2021-12-06 12:19:36'),
(56, 'browse_shelf', 'shelf', '2021-12-06 12:21:09', '2021-12-06 12:21:09'),
(57, 'read_shelf', 'shelf', '2021-12-06 12:21:09', '2021-12-06 12:21:09'),
(58, 'edit_shelf', 'shelf', '2021-12-06 12:21:09', '2021-12-06 12:21:09'),
(59, 'add_shelf', 'shelf', '2021-12-06 12:21:09', '2021-12-06 12:21:09'),
(60, 'delete_shelf', 'shelf', '2021-12-06 12:21:09', '2021-12-06 12:21:09'),
(61, 'browse_shelves', 'shelves', '2021-12-06 12:24:17', '2021-12-06 12:24:17'),
(62, 'read_shelves', 'shelves', '2021-12-06 12:24:17', '2021-12-06 12:24:17'),
(63, 'edit_shelves', 'shelves', '2021-12-06 12:24:17', '2021-12-06 12:24:17'),
(64, 'add_shelves', 'shelves', '2021-12-06 12:24:17', '2021-12-06 12:24:17'),
(65, 'delete_shelves', 'shelves', '2021-12-06 12:24:17', '2021-12-06 12:24:17'),
(66, 'browse_sources', 'sources', '2021-12-06 12:28:48', '2021-12-06 12:28:48'),
(67, 'read_sources', 'sources', '2021-12-06 12:28:48', '2021-12-06 12:28:48'),
(68, 'edit_sources', 'sources', '2021-12-06 12:28:48', '2021-12-06 12:28:48'),
(69, 'add_sources', 'sources', '2021-12-06 12:28:48', '2021-12-06 12:28:48'),
(70, 'delete_sources', 'sources', '2021-12-06 12:28:48', '2021-12-06 12:28:48'),
(71, 'browse_rows', 'rows', '2021-12-06 13:01:57', '2021-12-06 13:01:57'),
(72, 'read_rows', 'rows', '2021-12-06 13:01:57', '2021-12-06 13:01:57'),
(73, 'edit_rows', 'rows', '2021-12-06 13:01:57', '2021-12-06 13:01:57'),
(74, 'add_rows', 'rows', '2021-12-06 13:01:57', '2021-12-06 13:01:57'),
(75, 'delete_rows', 'rows', '2021-12-06 13:01:57', '2021-12-06 13:01:57'),
(76, 'browse_add_to_table', 'add_to_table', '2021-12-06 13:49:10', '2021-12-06 13:49:10'),
(77, 'read_add_to_table', 'add_to_table', '2021-12-06 13:49:10', '2021-12-06 13:49:10'),
(78, 'edit_add_to_table', 'add_to_table', '2021-12-06 13:49:10', '2021-12-06 13:49:10'),
(79, 'add_add_to_table', 'add_to_table', '2021-12-06 13:49:10', '2021-12-06 13:49:10'),
(80, 'delete_add_to_table', 'add_to_table', '2021-12-06 13:49:10', '2021-12-06 13:49:10'),
(81, 'browse_add_to_shelves', 'add_to_shelves', '2021-12-06 13:54:09', '2021-12-06 13:54:09'),
(82, 'read_add_to_shelves', 'add_to_shelves', '2021-12-06 13:54:09', '2021-12-06 13:54:09'),
(83, 'edit_add_to_shelves', 'add_to_shelves', '2021-12-06 13:54:09', '2021-12-06 13:54:09'),
(84, 'add_add_to_shelves', 'add_to_shelves', '2021-12-06 13:54:09', '2021-12-06 13:54:09'),
(85, 'delete_add_to_shelves', 'add_to_shelves', '2021-12-06 13:54:09', '2021-12-06 13:54:09'),
(86, 'browse_new_rows', 'new_rows', '2021-12-08 15:31:22', '2021-12-08 15:31:22'),
(87, 'read_new_rows', 'new_rows', '2021-12-08 15:31:22', '2021-12-08 15:31:22'),
(88, 'edit_new_rows', 'new_rows', '2021-12-08 15:31:22', '2021-12-08 15:31:22'),
(89, 'add_new_rows', 'new_rows', '2021-12-08 15:31:22', '2021-12-08 15:31:22'),
(90, 'delete_new_rows', 'new_rows', '2021-12-08 15:31:22', '2021-12-08 15:31:22'),
(96, 'browse_recovers', 'recovers', '2021-12-12 12:24:30', '2021-12-12 12:24:30'),
(97, 'read_recovers', 'recovers', '2021-12-12 12:24:30', '2021-12-12 12:24:30'),
(98, 'edit_recovers', 'recovers', '2021-12-12 12:24:30', '2021-12-12 12:24:30'),
(99, 'add_recovers', 'recovers', '2021-12-12 12:24:30', '2021-12-12 12:24:30'),
(100, 'delete_recovers', 'recovers', '2021-12-12 12:24:30', '2021-12-12 12:24:30'),
(101, 'browse_usersorders', 'usersorders', '2021-12-15 18:32:38', '2021-12-15 18:32:38'),
(102, 'read_usersorders', 'usersorders', '2021-12-15 18:32:38', '2021-12-15 18:32:38'),
(103, 'edit_usersorders', 'usersorders', '2021-12-15 18:32:38', '2021-12-15 18:32:38'),
(104, 'add_usersorders', 'usersorders', '2021-12-15 18:32:38', '2021-12-15 18:32:38'),
(105, 'delete_usersorders', 'usersorders', '2021-12-15 18:32:38', '2021-12-15 18:32:38'),
(106, 'browse_coverrequests', 'coverrequests', '2021-12-15 20:35:59', '2021-12-15 20:35:59'),
(107, 'read_coverrequests', 'coverrequests', '2021-12-15 20:35:59', '2021-12-15 20:35:59'),
(108, 'edit_coverrequests', 'coverrequests', '2021-12-15 20:35:59', '2021-12-15 20:35:59'),
(109, 'add_coverrequests', 'coverrequests', '2021-12-15 20:35:59', '2021-12-15 20:35:59'),
(110, 'delete_coverrequests', 'coverrequests', '2021-12-15 20:35:59', '2021-12-15 20:35:59'),
(111, 'browse_shipppeditems', 'shipppeditems', '2021-12-16 12:50:33', '2021-12-16 12:50:33'),
(112, 'read_shipppeditems', 'shipppeditems', '2021-12-16 12:50:33', '2021-12-16 12:50:33'),
(113, 'edit_shipppeditems', 'shipppeditems', '2021-12-16 12:50:33', '2021-12-16 12:50:33'),
(114, 'add_shipppeditems', 'shipppeditems', '2021-12-16 12:50:33', '2021-12-16 12:50:33'),
(115, 'delete_shipppeditems', 'shipppeditems', '2021-12-16 12:50:33', '2021-12-16 12:50:33'),
(116, 'browse_orderstatus', 'orderstatus', '2021-12-19 11:51:42', '2021-12-19 11:51:42'),
(117, 'read_orderstatus', 'orderstatus', '2021-12-19 11:51:42', '2021-12-19 11:51:42'),
(118, 'edit_orderstatus', 'orderstatus', '2021-12-19 11:51:42', '2021-12-19 11:51:42'),
(119, 'add_orderstatus', 'orderstatus', '2021-12-19 11:51:42', '2021-12-19 11:51:42'),
(120, 'delete_orderstatus', 'orderstatus', '2021-12-19 11:51:42', '2021-12-19 11:51:42'),
(121, 'browse_orderstatuses', 'orderstatuses', '2021-12-19 12:00:14', '2021-12-19 12:00:14'),
(122, 'read_orderstatuses', 'orderstatuses', '2021-12-19 12:00:14', '2021-12-19 12:00:14'),
(123, 'edit_orderstatuses', 'orderstatuses', '2021-12-19 12:00:14', '2021-12-19 12:00:14'),
(124, 'add_orderstatuses', 'orderstatuses', '2021-12-19 12:00:14', '2021-12-19 12:00:14'),
(125, 'delete_orderstatuses', 'orderstatuses', '2021-12-19 12:00:16', '2021-12-19 12:00:16'),
(126, 'browse_requeststry', 'requeststry', '2021-12-22 11:01:41', '2021-12-22 11:01:41'),
(127, 'read_requeststry', 'requeststry', '2021-12-22 11:01:41', '2021-12-22 11:01:41'),
(128, 'edit_requeststry', 'requeststry', '2021-12-22 11:01:41', '2021-12-22 11:01:41'),
(129, 'add_requeststry', 'requeststry', '2021-12-22 11:01:41', '2021-12-22 11:01:41'),
(130, 'delete_requeststry', 'requeststry', '2021-12-22 11:01:41', '2021-12-22 11:01:41'),
(131, 'browse_requeststries', 'requeststries', '2021-12-22 11:05:05', '2021-12-22 11:05:05'),
(132, 'read_requeststries', 'requeststries', '2021-12-22 11:05:05', '2021-12-22 11:05:05'),
(133, 'edit_requeststries', 'requeststries', '2021-12-22 11:05:05', '2021-12-22 11:05:05'),
(134, 'add_requeststries', 'requeststries', '2021-12-22 11:05:05', '2021-12-22 11:05:05'),
(135, 'delete_requeststries', 'requeststries', '2021-12-22 11:05:05', '2021-12-22 11:05:05'),
(136, 'browse_secondcovers', 'secondcovers', '2021-12-22 18:49:40', '2021-12-22 18:49:40'),
(137, 'read_secondcovers', 'secondcovers', '2021-12-22 18:49:40', '2021-12-22 18:49:40'),
(138, 'edit_secondcovers', 'secondcovers', '2021-12-22 18:49:40', '2021-12-22 18:49:40'),
(139, 'add_secondcovers', 'secondcovers', '2021-12-22 18:49:40', '2021-12-22 18:49:40'),
(140, 'delete_secondcovers', 'secondcovers', '2021-12-22 18:49:40', '2021-12-22 18:49:40'),
(141, 'browse_userwindows', 'userwindows', '2021-12-26 10:44:25', '2021-12-26 10:44:25'),
(142, 'read_userwindows', 'userwindows', '2021-12-26 10:44:25', '2021-12-26 10:44:25'),
(143, 'edit_userwindows', 'userwindows', '2021-12-26 10:44:25', '2021-12-26 10:44:25'),
(144, 'add_userwindows', 'userwindows', '2021-12-26 10:44:25', '2021-12-26 10:44:25'),
(145, 'delete_userwindows', 'userwindows', '2021-12-26 10:44:25', '2021-12-26 10:44:25'),
(146, 'browse_packwindows', 'packwindows', '2021-12-26 10:52:29', '2021-12-26 10:52:29'),
(147, 'read_packwindows', 'packwindows', '2021-12-26 10:52:29', '2021-12-26 10:52:29'),
(148, 'edit_packwindows', 'packwindows', '2021-12-26 10:52:29', '2021-12-26 10:52:29'),
(149, 'add_packwindows', 'packwindows', '2021-12-26 10:52:29', '2021-12-26 10:52:29'),
(150, 'delete_packwindows', 'packwindows', '2021-12-26 10:52:29', '2021-12-26 10:52:29'),
(151, 'browse_barccodes', 'barccodes', '2021-12-30 11:55:54', '2021-12-30 11:55:54'),
(152, 'read_barccodes', 'barccodes', '2021-12-30 11:55:54', '2021-12-30 11:55:54'),
(153, 'edit_barccodes', 'barccodes', '2021-12-30 11:55:54', '2021-12-30 11:55:54'),
(154, 'add_barccodes', 'barccodes', '2021-12-30 11:55:54', '2021-12-30 11:55:54'),
(155, 'delete_barccodes', 'barccodes', '2021-12-30 11:55:54', '2021-12-30 11:55:54'),
(156, 'browse_precovering', 'precovering', '2022-02-28 09:27:18', '2022-02-28 09:27:18'),
(157, 'read_precovering', 'precovering', '2022-02-28 09:27:18', '2022-02-28 09:27:18'),
(158, 'edit_precovering', 'precovering', '2022-02-28 09:27:18', '2022-02-28 09:27:18'),
(159, 'add_precovering', 'precovering', '2022-02-28 09:27:18', '2022-02-28 09:27:18'),
(160, 'delete_precovering', 'precovering', '2022-02-28 09:27:18', '2022-02-28 09:27:18'),
(161, 'browse_pre_cover', 'pre_cover', '2022-02-28 09:39:20', '2022-02-28 09:39:20'),
(162, 'read_pre_cover', 'pre_cover', '2022-02-28 09:39:20', '2022-02-28 09:39:20'),
(163, 'edit_pre_cover', 'pre_cover', '2022-02-28 09:39:20', '2022-02-28 09:39:20'),
(164, 'add_pre_cover', 'pre_cover', '2022-02-28 09:39:20', '2022-02-28 09:39:20'),
(165, 'delete_pre_cover', 'pre_cover', '2022-02-28 09:39:20', '2022-02-28 09:39:20'),
(166, 'browse_pre_covers', 'pre_covers', '2022-02-28 09:41:43', '2022-02-28 09:41:43'),
(167, 'read_pre_covers', 'pre_covers', '2022-02-28 09:41:43', '2022-02-28 09:41:43'),
(168, 'edit_pre_covers', 'pre_covers', '2022-02-28 09:41:43', '2022-02-28 09:41:43'),
(169, 'add_pre_covers', 'pre_covers', '2022-02-28 09:41:43', '2022-02-28 09:41:43'),
(170, 'delete_pre_covers', 'pre_covers', '2022-02-28 09:41:43', '2022-02-28 09:41:43'),
(171, 'browse_shipmethods', 'shipmethods', '2022-02-28 14:33:27', '2022-02-28 14:33:27'),
(172, 'read_shipmethods', 'shipmethods', '2022-02-28 14:33:27', '2022-02-28 14:33:27'),
(173, 'edit_shipmethods', 'shipmethods', '2022-02-28 14:33:27', '2022-02-28 14:33:27'),
(174, 'add_shipmethods', 'shipmethods', '2022-02-28 14:33:27', '2022-02-28 14:33:27'),
(175, 'delete_shipmethods', 'shipmethods', '2022-02-28 14:33:27', '2022-02-28 14:33:27'),
(176, 'browse_recoverequest', 'recoverequest', '2022-03-02 14:43:12', '2022-03-02 14:43:12'),
(177, 'read_recoverequest', 'recoverequest', '2022-03-02 14:43:12', '2022-03-02 14:43:12'),
(178, 'edit_recoverequest', 'recoverequest', '2022-03-02 14:43:12', '2022-03-02 14:43:12'),
(179, 'add_recoverequest', 'recoverequest', '2022-03-02 14:43:12', '2022-03-02 14:43:12'),
(180, 'delete_recoverequest', 'recoverequest', '2022-03-02 14:43:12', '2022-03-02 14:43:12'),
(181, 'browse_recoverenquiries', 'recoverenquiries', '2022-03-02 14:50:03', '2022-03-02 14:50:03'),
(182, 'read_recoverenquiries', 'recoverenquiries', '2022-03-02 14:50:03', '2022-03-02 14:50:03'),
(183, 'edit_recoverenquiries', 'recoverenquiries', '2022-03-02 14:50:03', '2022-03-02 14:50:03'),
(184, 'add_recoverenquiries', 'recoverenquiries', '2022-03-02 14:50:03', '2022-03-02 14:50:03'),
(185, 'delete_recoverenquiries', 'recoverenquiries', '2022-03-02 14:50:03', '2022-03-02 14:50:03'),
(186, 'browse_statuspackets', 'statuspackets', '2022-03-03 15:13:04', '2022-03-03 15:13:04'),
(187, 'read_statuspackets', 'statuspackets', '2022-03-03 15:13:04', '2022-03-03 15:13:04'),
(188, 'edit_statuspackets', 'statuspackets', '2022-03-03 15:13:04', '2022-03-03 15:13:04'),
(189, 'add_statuspackets', 'statuspackets', '2022-03-03 15:13:04', '2022-03-03 15:13:04'),
(190, 'delete_statuspackets', 'statuspackets', '2022-03-03 15:13:04', '2022-03-03 15:13:04'),
(191, 'browse_ship_talabats', 'ship_talabats', '2022-03-03 16:52:58', '2022-03-03 16:52:58'),
(192, 'read_ship_talabats', 'ship_talabats', '2022-03-03 16:52:58', '2022-03-03 16:52:58'),
(193, 'edit_ship_talabats', 'ship_talabats', '2022-03-03 16:52:58', '2022-03-03 16:52:58'),
(194, 'add_ship_talabats', 'ship_talabats', '2022-03-03 16:52:58', '2022-03-03 16:52:58'),
(195, 'delete_ship_talabats', 'ship_talabats', '2022-03-03 16:52:58', '2022-03-03 16:52:58'),
(196, 'browse_currentship', 'currentship', '2022-03-07 11:15:29', '2022-03-07 11:15:29'),
(197, 'read_currentship', 'currentship', '2022-03-07 11:15:29', '2022-03-07 11:15:29'),
(198, 'edit_currentship', 'currentship', '2022-03-07 11:15:29', '2022-03-07 11:15:29'),
(199, 'add_currentship', 'currentship', '2022-03-07 11:15:29', '2022-03-07 11:15:29'),
(200, 'delete_currentship', 'currentship', '2022-03-07 11:15:29', '2022-03-07 11:15:29'),
(201, 'browse_currentships', 'currentships', '2022-03-07 11:19:58', '2022-03-07 11:19:58'),
(202, 'read_currentships', 'currentships', '2022-03-07 11:19:58', '2022-03-07 11:19:58'),
(203, 'edit_currentships', 'currentships', '2022-03-07 11:19:58', '2022-03-07 11:19:58'),
(204, 'add_currentships', 'currentships', '2022-03-07 11:19:58', '2022-03-07 11:19:58'),
(205, 'delete_currentships', 'currentships', '2022-03-07 11:19:58', '2022-03-07 11:19:58'),
(206, 'browse_items', 'items', '2022-03-09 17:32:22', '2022-03-09 17:32:22'),
(207, 'read_items', 'items', '2022-03-09 17:32:22', '2022-03-09 17:32:22'),
(208, 'edit_items', 'items', '2022-03-09 17:32:22', '2022-03-09 17:32:22'),
(209, 'add_items', 'items', '2022-03-09 17:32:22', '2022-03-09 17:32:22'),
(210, 'delete_items', 'items', '2022-03-09 17:32:22', '2022-03-09 17:32:22'),
(211, 'browse_packremovals', 'packremovals', '2022-03-10 13:18:02', '2022-03-10 13:18:02'),
(212, 'read_packremovals', 'packremovals', '2022-03-10 13:18:02', '2022-03-10 13:18:02'),
(213, 'edit_packremovals', 'packremovals', '2022-03-10 13:18:02', '2022-03-10 13:18:02'),
(214, 'add_packremovals', 'packremovals', '2022-03-10 13:18:02', '2022-03-10 13:18:02'),
(215, 'delete_packremovals', 'packremovals', '2022-03-10 13:18:02', '2022-03-10 13:18:02'),
(216, 'browse_firstpayments', 'firstpayments', '2022-03-13 10:02:26', '2022-03-13 10:02:26'),
(217, 'read_firstpayments', 'firstpayments', '2022-03-13 10:02:26', '2022-03-13 10:02:26'),
(218, 'edit_firstpayments', 'firstpayments', '2022-03-13 10:02:26', '2022-03-13 10:02:26'),
(219, 'add_firstpayments', 'firstpayments', '2022-03-13 10:02:26', '2022-03-13 10:02:26'),
(220, 'delete_firstpayments', 'firstpayments', '2022-03-13 10:02:26', '2022-03-13 10:02:26'),
(226, 'browse_alreadycovereds', 'alreadycovereds', '2022-03-13 11:42:10', '2022-03-13 11:42:10'),
(227, 'read_alreadycovereds', 'alreadycovereds', '2022-03-13 11:42:10', '2022-03-13 11:42:10'),
(228, 'edit_alreadycovereds', 'alreadycovereds', '2022-03-13 11:42:10', '2022-03-13 11:42:10'),
(229, 'add_alreadycovereds', 'alreadycovereds', '2022-03-13 11:42:10', '2022-03-13 11:42:10'),
(230, 'delete_alreadycovereds', 'alreadycovereds', '2022-03-13 11:42:10', '2022-03-13 11:42:10'),
(231, 'browse_policies', 'policies', '2022-03-13 18:13:51', '2022-03-13 18:13:51'),
(232, 'read_policies', 'policies', '2022-03-13 18:13:51', '2022-03-13 18:13:51'),
(233, 'edit_policies', 'policies', '2022-03-13 18:13:51', '2022-03-13 18:13:51'),
(234, 'add_policies', 'policies', '2022-03-13 18:13:51', '2022-03-13 18:13:51'),
(235, 'delete_policies', 'policies', '2022-03-13 18:13:51', '2022-03-13 18:13:51'),
(236, 'browse_finalarrivals', 'finalarrivals', '2022-03-16 10:15:32', '2022-03-16 10:15:32'),
(237, 'read_finalarrivals', 'finalarrivals', '2022-03-16 10:15:32', '2022-03-16 10:15:32'),
(238, 'edit_finalarrivals', 'finalarrivals', '2022-03-16 10:15:32', '2022-03-16 10:15:32'),
(239, 'add_finalarrivals', 'finalarrivals', '2022-03-16 10:15:32', '2022-03-16 10:15:32'),
(240, 'delete_finalarrivals', 'finalarrivals', '2022-03-16 10:15:32', '2022-03-16 10:15:32'),
(241, 'browse_returnitems', 'returnitems', '2022-03-16 13:51:58', '2022-03-16 13:51:58'),
(242, 'read_returnitems', 'returnitems', '2022-03-16 13:51:58', '2022-03-16 13:51:58'),
(243, 'edit_returnitems', 'returnitems', '2022-03-16 13:51:58', '2022-03-16 13:51:58'),
(244, 'add_returnitems', 'returnitems', '2022-03-16 13:51:58', '2022-03-16 13:51:58'),
(245, 'delete_returnitems', 'returnitems', '2022-03-16 13:51:58', '2022-03-16 13:51:58');

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

DROP TABLE IF EXISTS `permission_role`;
CREATE TABLE IF NOT EXISTS `permission_role` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`),
  KEY `permission_role_permission_id_index` (`permission_id`),
  KEY `permission_role_role_id_index` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
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
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(51, 1),
(52, 1),
(53, 1),
(54, 1),
(55, 1),
(56, 1),
(57, 1),
(58, 1),
(59, 1),
(60, 1),
(61, 1),
(62, 1),
(63, 1),
(64, 1),
(65, 1),
(66, 1),
(67, 1),
(68, 1),
(69, 1),
(70, 1),
(71, 1),
(72, 1),
(73, 1),
(74, 1),
(75, 1),
(76, 1),
(77, 1),
(78, 1),
(79, 1),
(80, 1),
(81, 1),
(82, 1),
(83, 1),
(84, 1),
(85, 1),
(86, 1),
(87, 1),
(88, 1),
(89, 1),
(90, 1),
(96, 1),
(97, 1),
(98, 1),
(99, 1),
(100, 1),
(101, 1),
(102, 1),
(103, 1),
(104, 1),
(105, 1),
(106, 1),
(107, 1),
(108, 1),
(109, 1),
(110, 1),
(111, 1),
(112, 1),
(113, 1),
(114, 1),
(115, 1),
(116, 1),
(117, 1),
(118, 1),
(119, 1),
(120, 1),
(121, 1),
(122, 1),
(123, 1),
(124, 1),
(125, 1),
(126, 1),
(127, 1),
(128, 1),
(129, 1),
(130, 1),
(131, 1),
(132, 1),
(133, 1),
(134, 1),
(135, 1),
(136, 1),
(137, 1),
(138, 1),
(139, 1),
(140, 1),
(141, 1),
(142, 1),
(143, 1),
(144, 1),
(145, 1),
(146, 1),
(147, 1),
(148, 1),
(149, 1),
(150, 1),
(151, 1),
(152, 1),
(153, 1),
(154, 1),
(155, 1),
(156, 1),
(157, 1),
(158, 1),
(159, 1),
(160, 1),
(161, 1),
(162, 1),
(163, 1),
(164, 1),
(165, 1),
(166, 1),
(167, 1),
(168, 1),
(169, 1),
(170, 1),
(171, 1),
(172, 1),
(173, 1),
(174, 1),
(175, 1),
(176, 1),
(177, 1),
(178, 1),
(179, 1),
(180, 1),
(181, 1),
(182, 1),
(183, 1),
(184, 1),
(185, 1),
(186, 1),
(187, 1),
(188, 1),
(189, 1),
(190, 1),
(191, 1),
(192, 1),
(193, 1),
(194, 1),
(195, 1),
(196, 1),
(197, 1),
(198, 1),
(199, 1),
(200, 1),
(201, 1),
(202, 1),
(203, 1),
(204, 1),
(205, 1),
(206, 1),
(207, 1),
(208, 1),
(209, 1),
(210, 1),
(211, 1),
(212, 1),
(213, 1),
(214, 1),
(215, 1),
(216, 1),
(217, 1),
(218, 1),
(219, 1),
(220, 1),
(226, 1),
(227, 1),
(228, 1),
(229, 1),
(230, 1),
(231, 1),
(232, 1),
(233, 1),
(234, 1),
(235, 1),
(236, 1),
(237, 1),
(238, 1),
(239, 1),
(240, 1),
(241, 1),
(242, 1),
(243, 1),
(244, 1),
(245, 1);

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 37, 'authToken', 'a71e12092da4ad2914798fe4300b8cdf20bc7bdc389064347b5a1ade852a2900', '[\"*\"]', NULL, '2022-04-20 17:48:28', '2022-04-20 17:48:28'),
(2, 'App\\Models\\User', 38, 'authToken', '7aae57dcf55a95c98667f682347e87c41e4e74297b888d80358c4870d1b10df8', '[\"*\"]', NULL, '2022-04-20 17:50:50', '2022-04-20 17:50:50');

-- --------------------------------------------------------

--
-- Table structure for table `policies`
--

DROP TABLE IF EXISTS `policies`;
CREATE TABLE IF NOT EXISTS `policies` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `Type_Order` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Reciver_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `no_items` int(11) DEFAULT NULL,
  `Product_weight` int(11) DEFAULT NULL,
  `policy_number` int(11) DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_id` int(11) DEFAULT NULL,
  `Shipping_Company` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Pdf_Policy` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Includings_in_Shipment` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price_Of_In_Items` int(11) DEFAULT NULL,
  `reference` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
CREATE TABLE IF NOT EXISTS `posts` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `author_id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `status` enum('PUBLISHED','DRAFT','PENDING') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'DRAFT',
  `featured` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `posts_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `author_id`, `category_id`, `title`, `seo_title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `featured`, `created_at`, `updated_at`) VALUES
(1, 0, NULL, 'Lorem Ipsum Post', NULL, 'This is the excerpt for the Lorem Ipsum Post', '<p>This is the body of the lorem ipsum post</p>', 'posts/post1.jpg', 'lorem-ipsum-post', 'This is the meta description', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2021-12-06 11:50:20', '2021-12-06 11:50:20'),
(2, 0, NULL, 'My Sample Post', NULL, 'This is the excerpt for the sample Post', '<p>This is the body for the sample post, which includes the body.</p>\n                <h2>We can use all kinds of format!</h2>\n                <p>And include a bunch of other stuff.</p>', 'posts/post2.jpg', 'my-sample-post', 'Meta Description for sample post', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2021-12-06 11:50:20', '2021-12-06 11:50:20'),
(3, 0, NULL, 'Latest Post', NULL, 'This is the excerpt for the latest post', '<p>This is the body for the latest post</p>', 'posts/post3.jpg', 'latest-post', 'This is the meta description', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2021-12-06 11:50:20', '2021-12-06 11:50:20'),
(4, 0, NULL, 'Yarr Post', NULL, 'Reef sails nipperkin bring a spring upon her cable coffer jury mast spike marooned Pieces of Eight poop deck pillage. Clipper driver coxswain galleon hempen halter come about pressgang gangplank boatswain swing the lead. Nipperkin yard skysail swab lanyard Blimey bilge water ho quarter Buccaneer.', '<p>Swab deadlights Buccaneer fire ship square-rigged dance the hempen jig weigh anchor cackle fruit grog furl. Crack Jennys tea cup chase guns pressgang hearties spirits hogshead Gold Road six pounders fathom measured fer yer chains. Main sheet provost come about trysail barkadeer crimp scuttle mizzenmast brig plunder.</p>\n<p>Mizzen league keelhaul galleon tender cog chase Barbary Coast doubloon crack Jennys tea cup. Blow the man down lugsail fire ship pinnace cackle fruit line warp Admiral of the Black strike colors doubloon. Tackle Jack Ketch come about crimp rum draft scuppers run a shot across the bow haul wind maroon.</p>\n<p>Interloper heave down list driver pressgang holystone scuppers tackle scallywag bilged on her anchor. Jack Tar interloper draught grapple mizzenmast hulk knave cable transom hogshead. Gaff pillage to go on account grog aft chase guns piracy yardarm knave clap of thunder.</p>', 'posts/post4.jpg', 'yarr-post', 'this be a meta descript', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2021-12-06 11:50:20', '2021-12-06 11:50:20');

-- --------------------------------------------------------

--
-- Table structure for table `pre_covers`
--

DROP TABLE IF EXISTS `pre_covers`;
CREATE TABLE IF NOT EXISTS `pre_covers` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `cover_request_id` int(11) DEFAULT NULL,
  `shipment_src` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pre_covers`
--

INSERT INTO `pre_covers` (`id`, `created_at`, `updated_at`, `cover_request_id`, `shipment_src`) VALUES
(22, '2022-02-28 16:55:35', '2022-02-28 16:55:35', 102, 'Fedex');

-- --------------------------------------------------------

--
-- Table structure for table `recoverenquiries`
--

DROP TABLE IF EXISTS `recoverenquiries`;
CREATE TABLE IF NOT EXISTS `recoverenquiries` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=218 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `recoverenquiries`
--

INSERT INTO `recoverenquiries` (`id`, `created_at`, `updated_at`, `status`) VALUES
(1, '2022-04-20 16:33:48', '2022-04-20 16:35:26', 'مسحوبة من المستودع'),
(2, '2022-04-20 18:40:42', '2022-04-20 18:49:30', 'مسحوبة من المستودع'),
(3, '2022-04-20 18:50:18', '2022-04-21 10:08:49', 'مسحوبة من المستودع'),
(4, '2022-04-20 18:51:30', '2022-04-20 18:51:30', 'موجودة في المستودع'),
(5, '2022-04-20 18:52:49', '2022-04-20 18:52:49', 'موجودة في المستودع'),
(6, '2022-04-20 18:53:41', '2022-04-20 18:53:41', 'موجودة في المستودع'),
(7, '2022-04-20 18:55:13', '2022-04-20 18:55:13', 'موجودة في المستودع'),
(8, '2022-04-20 18:58:21', '2022-04-21 10:34:07', 'مسحوبة من المستودع'),
(9, '2022-04-20 18:59:34', '2022-04-20 18:59:34', 'موجودة في المستودع'),
(10, '2022-04-20 19:01:03', '2022-04-20 19:01:03', 'موجودة في المستودع'),
(11, '2022-04-20 19:02:14', '2022-04-21 10:09:30', 'مسحوبة من المستودع'),
(12, '2022-04-20 19:05:08', '2022-04-20 19:05:08', 'موجودة في المستودع'),
(13, '2022-04-20 19:08:51', '2022-04-20 19:09:55', 'مسحوبة من المستودع'),
(14, '2022-04-21 12:55:30', '2022-04-21 13:12:35', 'مسحوبة من المستودع');

-- --------------------------------------------------------

--
-- Table structure for table `recoverequest`
--

DROP TABLE IF EXISTS `recoverequest`;
CREATE TABLE IF NOT EXISTS `recoverequest` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `returnitems`
--

DROP TABLE IF EXISTS `returnitems`;
CREATE TABLE IF NOT EXISTS `returnitems` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `store_place` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `order_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `returnitems`
--

INSERT INTO `returnitems` (`id`, `created_at`, `updated_at`, `status`, `store_place`, `user_id`, `order_id`) VALUES
(5, '2022-04-20 18:36:57', '2022-04-20 18:36:57', 'موجودة في المستودع', 'c-2', NULL, 226),
(6, '2022-04-20 18:38:59', '2022-04-20 18:38:59', 'موجودة في المستودع', 'A-2', NULL, 228);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
CREATE TABLE IF NOT EXISTS `roles` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Administrator', '2021-12-06 11:49:08', '2021-12-06 11:49:08'),
(2, 'user', 'Normal User', '2021-12-06 11:49:08', '2021-12-06 11:49:08');

-- --------------------------------------------------------

--
-- Table structure for table `rows`
--

DROP TABLE IF EXISTS `rows`;
CREATE TABLE IF NOT EXISTS `rows` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `row_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `rows`
--

INSERT INTO `rows` (`id`, `row_number`, `created_at`, `updated_at`, `name`) VALUES
(9, '1', '2021-12-07 17:14:30', '2021-12-07 17:14:30', '1');

-- --------------------------------------------------------

--
-- Table structure for table `secondcovers`
--

DROP TABLE IF EXISTS `secondcovers`;
CREATE TABLE IF NOT EXISTS `secondcovers` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `package_id` int(11) DEFAULT NULL,
  `package_images` text COLLATE utf8mb4_unicode_ci,
  `shelf` text COLLATE utf8mb4_unicode_ci,
  `row` text COLLATE utf8mb4_unicode_ci,
  `package_dimensions` int(11) DEFAULT NULL,
  `package_weight` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
CREATE TABLE IF NOT EXISTS `settings` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `details` text COLLATE utf8mb4_unicode_ci,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `group` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `settings_key_unique` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES
(1, 'site.title', 'Site Title', 'Site Title', '', 'text', 1, 'Site'),
(2, 'site.description', 'Site Description', 'Site Description', '', 'text', 2, 'Site'),
(3, 'site.logo', 'Site Logo', '', '', 'image', 3, 'Site'),
(4, 'site.google_analytics_tracking_id', 'Google Analytics Tracking ID', NULL, '', 'text', 4, 'Site'),
(5, 'admin.bg_image', 'Admin Background Image', '', '', 'image', 5, 'Admin'),
(6, 'admin.title', 'Admin Title', 'Voyager', '', 'text', 1, 'Admin'),
(7, 'admin.description', 'Admin Description', 'Welcome to Voyager. The Missing Admin for Laravel', '', 'text', 2, 'Admin'),
(8, 'admin.loader', 'Admin Loader', '', '', 'image', 3, 'Admin'),
(9, 'admin.icon_image', 'Admin Icon Image', '', '', 'image', 4, 'Admin'),
(10, 'admin.google_analytics_client_id', 'Google Analytics Client ID (used for admin dashboard)', '879453315758-kodho90obr9nvn7bgn2brv2qmoe06mo6.apps.googleusercontent.com', '', 'text', 1, 'Admin');

-- --------------------------------------------------------

--
-- Table structure for table `shelves`
--

DROP TABLE IF EXISTS `shelves`;
CREATE TABLE IF NOT EXISTS `shelves` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` char(12) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shelves`
--

INSERT INTO `shelves` (`id`, `created_at`, `updated_at`, `name`) VALUES
(16, '2021-12-08 16:26:52', '2021-12-08 16:26:52', 'A'),
(17, '2021-12-08 17:12:48', '2021-12-08 17:12:48', 'B'),
(18, '2021-12-08 17:12:54', '2021-12-08 17:12:54', 'c'),
(19, '2021-12-08 17:13:08', '2021-12-08 17:13:08', 'D'),
(20, '2021-12-08 17:13:13', '2021-12-08 17:13:13', 'E'),
(21, '2021-12-08 17:13:18', '2021-12-08 17:13:18', 'F');

-- --------------------------------------------------------

--
-- Table structure for table `shipmethods`
--

DROP TABLE IF EXISTS `shipmethods`;
CREATE TABLE IF NOT EXISTS `shipmethods` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `order_id` int(11) DEFAULT NULL,
  `policy_number` int(11) DEFAULT NULL,
  `final_weight` int(11) DEFAULT NULL,
  `no_of_items` int(11) DEFAULT NULL,
  `reciever_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `shipppeditems`
--

DROP TABLE IF EXISTS `shipppeditems`;
CREATE TABLE IF NOT EXISTS `shipppeditems` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `order_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `reciever_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `no_items` int(11) DEFAULT NULL,
  `policy_number` int(11) DEFAULT NULL,
  `final_weight` int(11) DEFAULT NULL,
  `reference` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shipppeditems`
--

INSERT INTO `shipppeditems` (`id`, `order_id`, `created_at`, `updated_at`, `reciever_name`, `no_items`, `policy_number`, `final_weight`, `reference`, `user_id`) VALUES
(2, 13, '2022-04-20 19:14:33', '2022-04-20 19:14:33', 'admin@admin.com', 2, 123, NULL, '[254,256]', NULL),
(3, 11, '2022-04-21 10:35:38', '2022-04-21 10:35:38', 'admin@admin.com', 1, 1232, NULL, '[248]', NULL),
(5, 14, '2022-04-21 13:16:24', '2022-04-21 13:16:24', 'admin@admin.com', 1, 1232, 55, '[257]', 38);

-- --------------------------------------------------------

--
-- Table structure for table `ship_talabats`
--

DROP TABLE IF EXISTS `ship_talabats`;
CREATE TABLE IF NOT EXISTS `ship_talabats` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `req_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Goal_Country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Box_id` int(11) DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `item_status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `items_weight` int(11) DEFAULT NULL,
  `order_id` int(11) DEFAULT NULL,
  `number_items` int(11) DEFAULT NULL,
  `paid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sources`
--

DROP TABLE IF EXISTS `sources`;
CREATE TABLE IF NOT EXISTS `sources` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sources`
--

INSERT INTO `sources` (`id`, `name`, `created_at`, `updated_at`) VALUES
(6, 'شركة سوق', '2021-12-07 17:13:27', '2021-12-07 17:13:27'),
(7, 'شركة أمازون', '2021-12-22 14:08:00', '2021-12-22 14:08:50');

-- --------------------------------------------------------

--
-- Table structure for table `statuspackets`
--

DROP TABLE IF EXISTS `statuspackets`;
CREATE TABLE IF NOT EXISTS `statuspackets` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `translations`
--

DROP TABLE IF EXISTS `translations`;
CREATE TABLE IF NOT EXISTS `translations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int(10) UNSIGNED NOT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `translations`
--

INSERT INTO `translations` (`id`, `table_name`, `column_name`, `foreign_key`, `locale`, `value`, `created_at`, `updated_at`) VALUES
(1, 'data_types', 'display_name_singular', 5, 'pt', 'Post', '2021-12-06 11:50:20', '2021-12-06 11:50:20'),
(2, 'data_types', 'display_name_singular', 6, 'pt', 'Página', '2021-12-06 11:50:20', '2021-12-06 11:50:20'),
(3, 'data_types', 'display_name_singular', 1, 'pt', 'Utilizador', '2021-12-06 11:50:20', '2021-12-06 11:50:20'),
(4, 'data_types', 'display_name_singular', 4, 'pt', 'Categoria', '2021-12-06 11:50:20', '2021-12-06 11:50:20'),
(5, 'data_types', 'display_name_singular', 2, 'pt', 'Menu', '2021-12-06 11:50:20', '2021-12-06 11:50:20'),
(6, 'data_types', 'display_name_singular', 3, 'pt', 'Função', '2021-12-06 11:50:20', '2021-12-06 11:50:20'),
(7, 'data_types', 'display_name_plural', 5, 'pt', 'Posts', '2021-12-06 11:50:20', '2021-12-06 11:50:20'),
(8, 'data_types', 'display_name_plural', 6, 'pt', 'Páginas', '2021-12-06 11:50:20', '2021-12-06 11:50:20'),
(9, 'data_types', 'display_name_plural', 1, 'pt', 'Utilizadores', '2021-12-06 11:50:20', '2021-12-06 11:50:20'),
(10, 'data_types', 'display_name_plural', 4, 'pt', 'Categorias', '2021-12-06 11:50:20', '2021-12-06 11:50:20'),
(11, 'data_types', 'display_name_plural', 2, 'pt', 'Menus', '2021-12-06 11:50:20', '2021-12-06 11:50:20'),
(12, 'data_types', 'display_name_plural', 3, 'pt', 'Funções', '2021-12-06 11:50:20', '2021-12-06 11:50:20'),
(13, 'categories', 'slug', 1, 'pt', 'categoria-1', '2021-12-06 11:50:20', '2021-12-06 11:50:20'),
(14, 'categories', 'name', 1, 'pt', 'Categoria 1', '2021-12-06 11:50:20', '2021-12-06 11:50:20'),
(15, 'categories', 'slug', 2, 'pt', 'categoria-2', '2021-12-06 11:50:20', '2021-12-06 11:50:20'),
(16, 'categories', 'name', 2, 'pt', 'Categoria 2', '2021-12-06 11:50:20', '2021-12-06 11:50:20'),
(17, 'pages', 'title', 1, 'pt', 'Olá Mundo', '2021-12-06 11:50:20', '2021-12-06 11:50:20'),
(18, 'pages', 'slug', 1, 'pt', 'ola-mundo', '2021-12-06 11:50:20', '2021-12-06 11:50:20'),
(19, 'pages', 'body', 1, 'pt', '<p>Olá Mundo. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\r\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', '2021-12-06 11:50:20', '2021-12-06 11:50:20'),
(20, 'menu_items', 'title', 1, 'pt', 'Painel de Controle', '2021-12-06 11:50:20', '2021-12-06 11:50:20'),
(21, 'menu_items', 'title', 2, 'pt', 'Media', '2021-12-06 11:50:20', '2021-12-06 11:50:20'),
(22, 'menu_items', 'title', 12, 'pt', 'Publicações', '2021-12-06 11:50:20', '2021-12-06 11:50:20'),
(23, 'menu_items', 'title', 3, 'pt', 'Utilizadores', '2021-12-06 11:50:20', '2021-12-06 11:50:20'),
(24, 'menu_items', 'title', 11, 'pt', 'Categorias', '2021-12-06 11:50:20', '2021-12-06 11:50:20'),
(25, 'menu_items', 'title', 13, 'pt', 'Páginas', '2021-12-06 11:50:20', '2021-12-06 11:50:20'),
(26, 'menu_items', 'title', 4, 'pt', 'Funções', '2021-12-06 11:50:20', '2021-12-06 11:50:20'),
(27, 'menu_items', 'title', 5, 'pt', 'Ferramentas', '2021-12-06 11:50:20', '2021-12-06 11:50:20'),
(28, 'menu_items', 'title', 6, 'pt', 'Menus', '2021-12-06 11:50:20', '2021-12-06 11:50:20'),
(29, 'menu_items', 'title', 7, 'pt', 'Base de dados', '2021-12-06 11:50:20', '2021-12-06 11:50:20'),
(30, 'menu_items', 'title', 10, 'pt', 'Configurações', '2021-12-06 11:50:20', '2021-12-06 11:50:20');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `role_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci,
  `phone_number` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  KEY `users_role_id_foreign` (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `email_verified_at`, `password`, `remember_token`, `settings`, `created_at`, `updated_at`, `address`, `phone_number`) VALUES
(33, 2, 'Ali', 'A@e.com', 'users/default.png', NULL, '$2y$10$1M/K4EyDLbX7Cq2O6Slcw.Dk9/VO3DlMV/83zZh.MG63F26cZj0xC', NULL, NULL, '2021-12-29 20:24:43', '2021-12-29 20:24:43', NULL, NULL),
(34, 2, 'SpiderMan', 'Spider@gmail.com', 'users/default.png', NULL, '$2y$10$psCrIMtFbljstqmqiMsoauFJS2rVBlmtJo43TgiFNocYc5hllsQgO', NULL, NULL, '2021-12-30 11:27:42', '2021-12-30 11:27:42', 'Usa', '456789123'),
(35, 2, 'sss', 'sss.com', 'users/default.png', NULL, '$2y$10$We.zuW6b8L5mrRux4Rtuj.fk3KxlVsgRIzP5LYSQouHnGOjKoAUr.', NULL, NULL, '2021-12-31 00:59:32', '2022-01-06 19:08:38', 'fhcfcdm', 'qded'),
(36, 1, 'nada', 'your@email.com', 'users/default.png', NULL, '$2y$10$r1QjHVVWbuO22VLzcKDOPOG18ZTEYp9Q2otrGd85LT.xU5SIDu6Z6', NULL, NULL, '2022-04-03 17:12:30', '2022-04-03 17:12:30', NULL, NULL),
(37, 1, 'admin', 'admin@admin.com', 'users/default.png', NULL, '$2y$10$2VesknCaaHXVnFOfRd7baOa8p9BcxdHL4NaEejniNj6eQm7s6Dv5C', 'CdB3r0dqUsgLEF2wv9gx2YQU8IHhEwJFTH1svDOWFFCNj0GHkuZkH3Z9MwUp', NULL, '2022-04-03 17:19:22', '2022-04-03 17:19:24', NULL, NULL),
(38, 2, 'api', 'api@gmail.com', 'users/default.png', NULL, '$2y$10$a8ZG/opw1Yf6mjRWNExJ4.lyJ0/zXG2QOXnZhwf5xqWwD584VHrr.', NULL, NULL, '2022-04-20 17:50:50', '2022-04-21 11:19:44', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `usersorders`
--

DROP TABLE IF EXISTS `usersorders`;
CREATE TABLE IF NOT EXISTS `usersorders` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `Product_Shelf_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `Product_arrival_id` int(11) DEFAULT NULL,
  `Shelf` text COLLATE utf8mb4_unicode_ci,
  `row` text COLLATE utf8mb4_unicode_ci,
  `Source_Market` text COLLATE utf8mb4_unicode_ci,
  `Product_image` int(11) DEFAULT NULL,
  `Product_Dimension` int(11) DEFAULT NULL,
  `Product_Weight` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=261 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `usersorders`
--

INSERT INTO `usersorders` (`id`, `user_id`, `Product_Shelf_id`, `created_at`, `updated_at`, `Product_arrival_id`, `Shelf`, `row`, `Source_Market`, `Product_image`, `Product_Dimension`, `Product_Weight`) VALUES
(259, 38, 21, '2022-04-20 19:08:27', '2022-04-20 19:08:27', 254, 'A', '1', 'شركة أمازون', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `userwindows`
--

DROP TABLE IF EXISTS `userwindows`;
CREATE TABLE IF NOT EXISTS `userwindows` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `Name` text COLLATE utf8mb4_unicode_ci,
  `Country` text COLLATE utf8mb4_unicode_ci,
  `Email` text COLLATE utf8mb4_unicode_ci,
  `Phone` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `Box_ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `userwindows`
--

INSERT INTO `userwindows` (`id`, `Name`, `Country`, `Email`, `Phone`, `created_at`, `updated_at`, `Box_ID`) VALUES
(32, 'sss', 'fhcfcdm', 'sss.com', 'qded', '2022-04-03 16:17:39', '2022-04-03 16:17:39', 35),
(33, 'SpiderMan', 'Usa', 'Spider@gmail.com', '456789123', '2022-04-03 16:25:09', '2022-04-03 16:25:09', 34),
(34, 'Ali', NULL, 'A@e.com', NULL, '2022-04-03 16:25:13', '2022-04-03 16:25:13', 33);

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

DROP TABLE IF EXISTS `user_roles`;
CREATE TABLE IF NOT EXISTS `user_roles` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `user_roles_user_id_index` (`user_id`),
  KEY `user_roles_role_id_index` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

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
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

--
-- Constraints for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
