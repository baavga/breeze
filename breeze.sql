-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: May 29, 2018 at 10:03 AM
-- Server version: 5.7.19
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `breeze`
--
CREATE DATABASE IF NOT EXISTS `breeze` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `breeze`;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `categories_slug_unique` (`slug`),
  KEY `categories_parent_id_foreign` (`parent_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `parent_id`, `order`, `name`, `slug`, `created_at`, `updated_at`, `image`) VALUES
(7, NULL, 1, 'Шалны халаалт', 'халаалт', '2018-05-19 10:00:28', '2018-05-28 23:51:18', '/storage/icons/9YfoEBYCAuu17afrGK3CW0jOnXEcmpNhhjjnul4w.png');

-- --------------------------------------------------------

--
-- Table structure for table `data_rows`
--

DROP TABLE IF EXISTS `data_rows`;
CREATE TABLE IF NOT EXISTS `data_rows` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
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
  `details` text COLLATE utf8mb4_unicode_ci,
  `order` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `data_rows_data_type_id_foreign` (`data_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `data_rows`
--

INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES
(1, 1, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, '', 1),
(2, 1, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '', 2),
(3, 1, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, '', 3),
(4, 1, 'password', 'password', 'Password', 1, 0, 0, 1, 1, 0, '', 4),
(5, 1, 'remember_token', 'text', 'Remember Token', 0, 0, 0, 0, 0, 0, '', 5),
(6, 1, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, '', 6),
(7, 1, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '', 7),
(8, 1, 'avatar', 'image', 'Avatar', 0, 1, 1, 1, 1, 1, '', 8),
(9, 1, 'user_belongsto_role_relationship', 'relationship', 'Role', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":\"0\"}', 10),
(10, 1, 'user_belongstomany_role_relationship', 'relationship', 'Roles', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}', 11),
(11, 1, 'locale', 'text', 'Locale', 0, 1, 1, 1, 1, 0, '', 12),
(12, 1, 'settings', 'hidden', 'Settings', 0, 0, 0, 0, 0, 0, '', 12),
(13, 2, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, '', 1),
(14, 2, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '', 2),
(15, 2, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '', 3),
(16, 2, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '', 4),
(17, 3, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, '', 1),
(18, 3, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '', 2),
(19, 3, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '', 3),
(20, 3, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '', 4),
(21, 3, 'display_name', 'text', 'Display Name', 1, 1, 1, 1, 1, 1, '', 5),
(22, 1, 'role_id', 'text', 'Role', 1, 1, 1, 1, 1, 1, '', 9),
(23, 4, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(24, 4, 'parent_id', 'select_dropdown', 'Parent', 0, 0, 1, 1, 1, 1, '{\"default\":\"\",\"null\":\"\",\"options\":{\"\":\"-- None --\"},\"relationship\":{\"key\":\"id\",\"label\":\"name\"}}', 2),
(25, 4, 'order', 'text', 'Order', 1, 1, 1, 1, 1, 1, '{\"default\":1}', 3),
(26, 4, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 4),
(27, 4, 'slug', 'text', 'Slug', 1, 1, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"name\"}}', 5),
(28, 4, 'created_at', 'timestamp', 'Created At', 0, 0, 1, 0, 0, 0, NULL, 6),
(29, 4, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(30, 5, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(31, 5, 'author_id', 'text', 'Author', 1, 0, 1, 1, 0, 1, NULL, 2),
(32, 5, 'category_id', 'text', 'Category', 0, 0, 1, 1, 1, 0, NULL, 3),
(33, 5, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, NULL, 4),
(34, 5, 'excerpt', 'text_area', 'Excerpt', 0, 0, 1, 1, 1, 1, NULL, 5),
(35, 5, 'body', 'rich_text_box', 'Body', 1, 0, 1, 1, 1, 1, NULL, 6),
(36, 5, 'image', 'image', 'Post Image', 0, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"1000\",\"height\":\"null\"},\"quality\":\"70%\",\"upsize\":true,\"thumbnails\":[{\"name\":\"medium\",\"scale\":\"50%\"},{\"name\":\"small\",\"scale\":\"25%\"},{\"name\":\"cropped\",\"crop\":{\"width\":\"300\",\"height\":\"250\"}}]}', 7),
(37, 5, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\",\"forceUpdate\":true},\"validation\":{\"rule\":\"unique:posts,slug\"}}', 8),
(38, 5, 'meta_description', 'text_area', 'Meta Description', 0, 0, 1, 1, 1, 1, NULL, 9),
(39, 5, 'meta_keywords', 'text_area', 'Meta Keywords', 0, 0, 1, 1, 1, 1, NULL, 10),
(40, 5, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"DRAFT\",\"options\":{\"PUBLISHED\":\"published\",\"DRAFT\":\"draft\",\"PENDING\":\"pending\"}}', 11),
(41, 5, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 12),
(42, 5, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 13),
(43, 5, 'seo_title', 'text', 'SEO Title', 0, 1, 1, 1, 1, 1, NULL, 14),
(44, 5, 'featured', 'checkbox', 'Featured', 1, 1, 1, 1, 1, 1, NULL, 15),
(45, 6, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, '', 1),
(46, 6, 'author_id', 'text', 'Author', 1, 0, 0, 0, 0, 0, '', 2),
(47, 6, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, '', 3),
(48, 6, 'excerpt', 'text_area', 'Excerpt', 1, 0, 1, 1, 1, 1, '', 4),
(49, 6, 'body', 'rich_text_box', 'Body', 1, 0, 1, 1, 1, 1, '', 5),
(50, 6, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\"},\"validation\":{\"rule\":\"unique:pages,slug\"}}', 6),
(51, 6, 'meta_description', 'text', 'Meta Description', 1, 0, 1, 1, 1, 1, '', 7),
(52, 6, 'meta_keywords', 'text', 'Meta Keywords', 1, 0, 1, 1, 1, 1, '', 8),
(53, 6, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"INACTIVE\",\"options\":{\"INACTIVE\":\"INACTIVE\",\"ACTIVE\":\"ACTIVE\"}}', 9),
(54, 6, 'created_at', 'timestamp', 'Created At', 1, 1, 1, 0, 0, 0, '', 10),
(55, 6, 'updated_at', 'timestamp', 'Updated At', 1, 0, 0, 0, 0, 0, '', 11),
(56, 6, 'image', 'image', 'Page Image', 0, 1, 1, 1, 1, 1, '', 12),
(57, 7, 'id', 'hidden', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(58, 7, 'name', 'text', 'Name', 0, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"9\",\"id\":\"custom_id\"}}', 2),
(59, 7, 'body', 'rich_text_box', 'Body', 0, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"9\",\"id\":\"custom_id\"}}', 3),
(61, 7, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, NULL, 11),
(62, 7, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 12),
(63, 7, 'product_belongsto_user_relationship', 'relationship', 'Users', 0, 0, 1, 1, 1, 1, '{\"model\":\"App\\\\User\",\"table\":\"users\",\"type\":\"belongsTo\",\"column\":\"user_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":\"0\"}', 10),
(64, 7, 'user_id', 'text', 'User Id', 0, 1, 1, 1, 1, 1, NULL, 5),
(65, 7, 'price', 'number', 'Price', 0, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"3\",\"id\":\"custom_id\"}}', 4),
(67, 7, 'shortdesc', 'text_area', 'Shortdesc', 0, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"3\",\"id\":\"custom_id\"}}', 6),
(68, 7, 'image1', 'image', 'Image1', 0, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"600\",\"height\":null},\"display\":{\"width\":\"3\",\"id\":\"custom_id\"}}', 7),
(69, 7, 'image2', 'image', 'Image2', 0, 0, 1, 1, 1, 1, '{\"resize\":{\"width\":\"600\",\"height\":null},\"display\":{\"width\":\"3\",\"id\":\"custom_id\"}}', 8),
(70, 7, 'image3', 'image', 'Image3', 0, 0, 1, 1, 1, 1, '{\"resize\":{\"width\":\"600\",\"height\":null},\"display\":{\"width\":\"3\",\"id\":\"custom_id\"}}', 9),
(71, 7, 'category_id', 'hidden', 'Category Id', 0, 1, 1, 1, 1, 1, NULL, 13),
(72, 4, 'category_hasmany_product_relationship', 'relationship', 'products', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Product\",\"table\":\"products\",\"type\":\"hasMany\",\"column\":\"id\",\"key\":\"category_id\",\"label\":\"name\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":\"0\"}', 8),
(73, 7, 'product_belongsto_category_relationship', 'relationship', 'categories', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Category\",\"table\":\"categories\",\"type\":\"belongsTo\",\"column\":\"category_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":\"0\"}', 14),
(74, 7, 'featured', 'checkbox', 'Featured', 1, 1, 1, 1, 1, 1, NULL, 13),
(75, 7, 'slug', 'text', 'Slug', 0, 1, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"name\",\"forceUpdate\":true},\"validation\":{\"rule\":\"unique:products,slug\"}}', 14),
(76, 4, 'image', 'text', 'Image', 0, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"100\",\"height\":\"100\"},\"display\":{\"width\":\"3\",\"id\":\"custom_id\"}}', 8);

-- --------------------------------------------------------

--
-- Table structure for table `data_types`
--

DROP TABLE IF EXISTS `data_types`;
CREATE TABLE IF NOT EXISTS `data_types` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT '0',
  `server_side` tinyint(4) NOT NULL DEFAULT '0',
  `details` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `data_types_name_unique` (`name`),
  UNIQUE KEY `data_types_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `data_types`
--

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `details`, `created_at`, `updated_at`) VALUES
(1, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', '', '', 1, 0, NULL, '2018-05-04 22:53:54', '2018-05-04 22:53:54'),
(2, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, NULL, '2018-05-04 22:53:54', '2018-05-04 22:53:54'),
(3, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, '', '', 1, 0, NULL, '2018-05-04 22:53:54', '2018-05-04 22:53:54'),
(4, 'categories', 'categories', 'Category', 'Categories', 'voyager-categories', 'App\\Category', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null}', '2018-05-04 22:54:01', '2018-05-28 23:49:40'),
(5, 'posts', 'posts', 'Post', 'Posts', 'voyager-news', 'App\\Post', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null}', '2018-05-04 22:54:02', '2018-05-28 23:39:44'),
(6, 'pages', 'pages', 'Page', 'Pages', 'voyager-file-text', 'TCG\\Voyager\\Models\\Page', NULL, '', '', 1, 0, NULL, '2018-05-04 22:54:03', '2018-05-04 22:54:03'),
(7, 'products', 'products', 'Product', 'Products', 'voyager-bag', 'App\\Product', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null}', '2018-05-04 23:05:46', '2018-05-20 09:49:42');

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

DROP TABLE IF EXISTS `menus`;
CREATE TABLE IF NOT EXISTS `menus` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `menus_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2018-05-04 22:53:55', '2018-05-04 22:53:55');

-- --------------------------------------------------------

--
-- Table structure for table `menu_items`
--

DROP TABLE IF EXISTS `menu_items`;
CREATE TABLE IF NOT EXISTS `menu_items` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
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
  `parameters` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `menu_items_menu_id_foreign` (`menu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
(1, 1, 'Dashboard', '', '_self', 'voyager-boat', NULL, NULL, 1, '2018-05-04 22:53:55', '2018-05-04 22:53:55', 'voyager.dashboard', NULL),
(2, 1, 'Media', '', '_self', 'voyager-images', NULL, NULL, 5, '2018-05-04 22:53:55', '2018-05-04 22:53:55', 'voyager.media.index', NULL),
(3, 1, 'Users', '', '_self', 'voyager-person', NULL, NULL, 4, '2018-05-04 22:53:55', '2018-05-06 19:52:17', 'voyager.users.index', NULL),
(4, 1, 'Roles', '', '_self', 'voyager-lock', NULL, NULL, 3, '2018-05-04 22:53:55', '2018-05-06 19:52:17', 'voyager.roles.index', NULL),
(5, 1, 'Tools', '', '_self', 'voyager-tools', NULL, NULL, 9, '2018-05-04 22:53:55', '2018-05-04 22:53:55', NULL, NULL),
(6, 1, 'Menu Builder', '', '_self', 'voyager-list', NULL, 5, 1, '2018-05-04 22:53:55', '2018-05-06 19:52:17', 'voyager.menus.index', NULL),
(7, 1, 'Database', '', '_self', 'voyager-data', NULL, 5, 2, '2018-05-04 22:53:55', '2018-05-06 19:52:17', 'voyager.database.index', NULL),
(8, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 5, 3, '2018-05-04 22:53:55', '2018-05-06 19:52:17', 'voyager.compass.index', NULL),
(9, 1, 'BREAD', '', '_self', 'voyager-bread', NULL, 5, 4, '2018-05-04 22:53:55', '2018-05-06 19:52:17', 'voyager.bread.index', NULL),
(10, 1, 'Settings', '', '_self', 'voyager-settings', NULL, NULL, 10, '2018-05-04 22:53:55', '2018-05-06 19:52:17', 'voyager.settings.index', NULL),
(11, 1, 'Categories', '', '_self', 'voyager-categories', NULL, NULL, 8, '2018-05-04 22:54:02', '2018-05-04 22:54:02', 'voyager.categories.index', NULL),
(12, 1, 'Posts', '', '_self', 'voyager-news', NULL, NULL, 6, '2018-05-04 22:54:03', '2018-05-04 22:54:03', 'voyager.posts.index', NULL),
(13, 1, 'Pages', '', '_self', 'voyager-file-text', NULL, NULL, 7, '2018-05-04 22:54:04', '2018-05-04 22:54:04', 'voyager.pages.index', NULL),
(14, 1, 'Hooks', '', '_self', 'voyager-hook', NULL, 5, 5, '2018-05-04 22:54:05', '2018-05-06 19:52:17', 'voyager.hooks', NULL),
(16, 1, 'Products', '/admin/products', '_self', 'voyager-bag', '#000000', NULL, 2, '2018-05-04 23:10:10', '2018-05-06 19:52:17', NULL, '');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

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
(33, '2016_01_01_000000_create_pages_table', 2),
(34, '2016_01_01_000000_create_posts_table', 2),
(35, '2016_02_15_204651_create_categories_table', 2),
(36, '2017_04_11_000000_alter_post_nullable_fields_table', 2),
(37, '2018_05_19_073016_add_product_slug', 3);

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

DROP TABLE IF EXISTS `pages`;
CREATE TABLE IF NOT EXISTS `pages` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `author_id` int(11) NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci,
  `body` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `status` enum('ACTIVE','INACTIVE') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'INACTIVE',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `pages_slug_unique` (`slug`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

DROP TABLE IF EXISTS `permissions`;
CREATE TABLE IF NOT EXISTS `permissions` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `permissions_key_index` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES
(1, 'browse_admin', NULL, '2018-05-04 22:53:55', '2018-05-04 22:53:55'),
(2, 'browse_bread', NULL, '2018-05-04 22:53:55', '2018-05-04 22:53:55'),
(3, 'browse_database', NULL, '2018-05-04 22:53:55', '2018-05-04 22:53:55'),
(4, 'browse_media', NULL, '2018-05-04 22:53:55', '2018-05-04 22:53:55'),
(5, 'browse_compass', NULL, '2018-05-04 22:53:55', '2018-05-04 22:53:55'),
(6, 'browse_menus', 'menus', '2018-05-04 22:53:55', '2018-05-04 22:53:55'),
(7, 'read_menus', 'menus', '2018-05-04 22:53:55', '2018-05-04 22:53:55'),
(8, 'edit_menus', 'menus', '2018-05-04 22:53:56', '2018-05-04 22:53:56'),
(9, 'add_menus', 'menus', '2018-05-04 22:53:56', '2018-05-04 22:53:56'),
(10, 'delete_menus', 'menus', '2018-05-04 22:53:56', '2018-05-04 22:53:56'),
(11, 'browse_roles', 'roles', '2018-05-04 22:53:56', '2018-05-04 22:53:56'),
(12, 'read_roles', 'roles', '2018-05-04 22:53:56', '2018-05-04 22:53:56'),
(13, 'edit_roles', 'roles', '2018-05-04 22:53:56', '2018-05-04 22:53:56'),
(14, 'add_roles', 'roles', '2018-05-04 22:53:56', '2018-05-04 22:53:56'),
(15, 'delete_roles', 'roles', '2018-05-04 22:53:56', '2018-05-04 22:53:56'),
(16, 'browse_users', 'users', '2018-05-04 22:53:56', '2018-05-04 22:53:56'),
(17, 'read_users', 'users', '2018-05-04 22:53:56', '2018-05-04 22:53:56'),
(18, 'edit_users', 'users', '2018-05-04 22:53:56', '2018-05-04 22:53:56'),
(19, 'add_users', 'users', '2018-05-04 22:53:56', '2018-05-04 22:53:56'),
(20, 'delete_users', 'users', '2018-05-04 22:53:56', '2018-05-04 22:53:56'),
(21, 'browse_settings', 'settings', '2018-05-04 22:53:56', '2018-05-04 22:53:56'),
(22, 'read_settings', 'settings', '2018-05-04 22:53:56', '2018-05-04 22:53:56'),
(23, 'edit_settings', 'settings', '2018-05-04 22:53:56', '2018-05-04 22:53:56'),
(24, 'add_settings', 'settings', '2018-05-04 22:53:56', '2018-05-04 22:53:56'),
(25, 'delete_settings', 'settings', '2018-05-04 22:53:56', '2018-05-04 22:53:56'),
(26, 'browse_categories', 'categories', '2018-05-04 22:54:02', '2018-05-04 22:54:02'),
(27, 'read_categories', 'categories', '2018-05-04 22:54:02', '2018-05-04 22:54:02'),
(28, 'edit_categories', 'categories', '2018-05-04 22:54:02', '2018-05-04 22:54:02'),
(29, 'add_categories', 'categories', '2018-05-04 22:54:02', '2018-05-04 22:54:02'),
(30, 'delete_categories', 'categories', '2018-05-04 22:54:02', '2018-05-04 22:54:02'),
(31, 'browse_posts', 'posts', '2018-05-04 22:54:03', '2018-05-04 22:54:03'),
(32, 'read_posts', 'posts', '2018-05-04 22:54:03', '2018-05-04 22:54:03'),
(33, 'edit_posts', 'posts', '2018-05-04 22:54:03', '2018-05-04 22:54:03'),
(34, 'add_posts', 'posts', '2018-05-04 22:54:03', '2018-05-04 22:54:03'),
(35, 'delete_posts', 'posts', '2018-05-04 22:54:03', '2018-05-04 22:54:03'),
(36, 'browse_pages', 'pages', '2018-05-04 22:54:04', '2018-05-04 22:54:04'),
(37, 'read_pages', 'pages', '2018-05-04 22:54:04', '2018-05-04 22:54:04'),
(38, 'edit_pages', 'pages', '2018-05-04 22:54:04', '2018-05-04 22:54:04'),
(39, 'add_pages', 'pages', '2018-05-04 22:54:04', '2018-05-04 22:54:04'),
(40, 'delete_pages', 'pages', '2018-05-04 22:54:04', '2018-05-04 22:54:04'),
(41, 'browse_hooks', NULL, '2018-05-04 22:54:05', '2018-05-04 22:54:05'),
(42, 'browse_products', 'products', '2018-05-04 23:05:46', '2018-05-04 23:05:46'),
(43, 'read_products', 'products', '2018-05-04 23:05:46', '2018-05-04 23:05:46'),
(44, 'edit_products', 'products', '2018-05-04 23:05:46', '2018-05-04 23:05:46'),
(45, 'add_products', 'products', '2018-05-04 23:05:46', '2018-05-04 23:05:46'),
(46, 'delete_products', 'products', '2018-05-04 23:05:46', '2018-05-04 23:05:46');

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

DROP TABLE IF EXISTS `permission_role`;
CREATE TABLE IF NOT EXISTS `permission_role` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`),
  KEY `permission_role_permission_id_index` (`permission_id`),
  KEY `permission_role_role_id_index` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(1, 4),
(2, 1),
(3, 1),
(4, 1),
(4, 4),
(5, 1),
(5, 4),
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
(16, 4),
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
(26, 2),
(26, 4),
(27, 1),
(27, 2),
(27, 4),
(28, 1),
(28, 2),
(28, 4),
(29, 1),
(29, 2),
(29, 4),
(30, 1),
(30, 2),
(30, 4),
(31, 1),
(31, 2),
(31, 4),
(32, 1),
(32, 2),
(32, 4),
(33, 1),
(33, 2),
(33, 4),
(34, 1),
(34, 2),
(34, 4),
(35, 1),
(35, 2),
(35, 4),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(41, 1),
(41, 4),
(42, 1),
(42, 2),
(42, 4),
(43, 1),
(43, 2),
(43, 4),
(44, 1),
(44, 2),
(44, 4),
(45, 1),
(45, 2),
(45, 4),
(46, 1),
(46, 2),
(46, 4);

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
CREATE TABLE IF NOT EXISTS `posts` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `author_id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `status` enum('PUBLISHED','DRAFT','PENDING') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'DRAFT',
  `featured` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `posts_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `author_id`, `category_id`, `title`, `seo_title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `featured`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'Ямар бойлер сонгох вэ?', NULL, NULL, '<p>Агшин зуур халаагч<br /><br /></p>', 'posts/May2018/8aTkHzVRPuzGEpe9DhVU.jpg', 'yamar-bojler-songoh-ve', NULL, NULL, 'PUBLISHED', 0, '2018-05-20 08:49:44', '2018-05-20 08:49:44');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8_unicode_ci,
  `image1` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `shortdesc` tinytext COLLATE utf8_unicode_ci,
  `image2` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image3` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `category_id` text COLLATE utf8_unicode_ci,
  `featured` tinyint(4) NOT NULL,
  `slug` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `products_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `body`, `image1`, `created_at`, `updated_at`, `user_id`, `price`, `shortdesc`, `image2`, `image3`, `category_id`, `featured`, `slug`) VALUES
(54, 'Шалны халаалтны термостат', NULL, 'products/May2018/gLiPVG6ru8Ivo8CD7tWp.jpg', '2018-05-19 09:59:00', '2018-05-19 10:00:41', 1, 65000, 'Үйлдвэрлэсэн улс: Солонгос', NULL, NULL, '7', 0, 'Шалны-халаалтны-термостат'),
(55, 'Шалны халаалтны дулаан тусгаарлагч материал', '<p>1м2 = 8000₮</p>', 'products/May2018/YnizHK4s5sj2FgY7jZrt.jpg', '2018-05-19 10:06:00', '2018-05-19 10:06:46', 1, 8000, 'Үйлдвэрлэсэн улс: Солонгос', NULL, NULL, '7', 1, 'Шалны-халаалтны-дулаан-тусгаарлагч-материал'),
(56, 'Шалны плёнкан халаагуур', '<p><span style=\"color: #333333; font-family: Arial; font-size: 12px;\">Дулаан тусгаарлагч болон туслах материал дагалдана</span><br style=\"color: #333333; font-family: Arial; font-size: 12px;\" /><span style=\"color: #333333; font-family: Arial; font-size: 12px;\">Эрчим хүч 20-25% хэмнэлттэй</span><br style=\"color: #333333; font-family: Arial; font-size: 12px;\" /><span style=\"color: #333333; font-family: Arial; font-size: 12px;\">Угсралт хурдан бөгөөд амархан</span><br style=\"color: #333333; font-family: Arial; font-size: 12px;\" /><span style=\"color: #333333; font-family: Arial; font-size: 12px;\">Шал болон хана, таазанд хэрэглэх боломжтой</span><br style=\"color: #333333; font-family: Arial; font-size: 12px;\" /><span style=\"color: #333333; font-family: Arial; font-size: 12px;\">Өвлийн улиралд хөлдөх аюулгүй</span><br style=\"color: #333333; font-family: Arial; font-size: 12px;\" /><span style=\"color: #333333; font-family: Arial; font-size: 12px;\">Агаар бохирдуулахгүй</span><br style=\"color: #333333; font-family: Arial; font-size: 12px;\" /><span style=\"color: #333333; font-family: Arial; font-size: 12px;\">Эрүүл мэндэнд сайн (инфра улаан туяа)</span></p>', 'products/May2018/MdSgaKU0TF4pSgtwXloM.jpg', '2018-05-19 10:09:41', '2018-05-19 10:09:41', 1, NULL, 'Үйлдвэрлэсэн улс: Солонгос', 'products/May2018/4iMcxRacHyqx7ZgcUfoS.jpg', NULL, '7', 1, 'Шалны-плёнкан-халаагуур'),
(57, 'Шалны халаалт', '<p><span style=\"color: #333333; font-family: Arial;\"><span style=\"font-size: 12px;\">м2= 40,000₮</span></span></p>\r\n<p><span style=\"color: #333333; font-family: Arial; font-size: 12px;\">Дулаан тусгаарлагч болон туслах материал дагалдана</span><br style=\"color: #333333; font-family: Arial; font-size: 12px;\" /><span style=\"color: #333333; font-family: Arial; font-size: 12px;\">Эрчим хүч 20-25% хэмнэлттэй</span><br style=\"color: #333333; font-family: Arial; font-size: 12px;\" /><span style=\"color: #333333; font-family: Arial; font-size: 12px;\">Угсралт хурдан бөгөөд амархан</span><br style=\"color: #333333; font-family: Arial; font-size: 12px;\" /><span style=\"color: #333333; font-family: Arial; font-size: 12px;\">Шал болон хана, таазанд хэрэглэх боломжтой</span><br style=\"color: #333333; font-family: Arial; font-size: 12px;\" /><span style=\"color: #333333; font-family: Arial; font-size: 12px;\">Өвлийн улиралд хөлдөх аюулгүй</span><br style=\"color: #333333; font-family: Arial; font-size: 12px;\" /><span style=\"color: #333333; font-family: Arial; font-size: 12px;\">Агаар бохирдуулахгүй</span><br style=\"color: #333333; font-family: Arial; font-size: 12px;\" /><span style=\"color: #333333; font-family: Arial; font-size: 12px;\">Эрүүл мэндэнд сайн (инфра улаан туяа)</span></p>', 'products/May2018/g2WcW2BtGXk0d3CcRg5G.jpg', '2018-05-19 10:12:00', '2018-05-20 09:51:40', 1, 40000, 'Үйлдвэрлэсэн улс: Солонгос', 'products/May2018/xtwszOOhuhfK6diD3lsZ.jpg', 'products/May2018/OxkyVxLl7KxajObmrvnJ.jpg', '7', 1, 'Шалны-халаалт');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
CREATE TABLE IF NOT EXISTS `roles` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Administrator', '2018-05-04 22:53:55', '2018-05-04 22:53:55'),
(2, 'user', 'Normal User', '2018-05-04 22:53:55', '2018-05-04 22:53:55'),
(4, 'Manager', 'Manager', '2018-05-06 09:12:29', '2018-05-06 09:12:29');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
CREATE TABLE IF NOT EXISTS `settings` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `details` text COLLATE utf8mb4_unicode_ci,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `group` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `settings_key_unique` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES
(1, 'site.title', 'Site Title', 'Барилгын материал, сауна, бассейн, бойлер', '', 'text', 1, 'Site'),
(2, 'site.description', 'Site Description', 'Барилгын материал, сауна, бассейн, бойлер', '', 'text', 2, 'Site'),
(3, 'site.logo', 'Site Logo', NULL, '', 'image', 3, 'Site'),
(4, 'admin.google_analytics_tracking_id', 'Google Analytics Tracking ID', NULL, '', 'text', 4, 'Admin'),
(5, 'admin.bg_image', 'Admin Background Image', 'settings/May2018/46sXzFf7aivNzXfSjtQO.gif', '', 'image', 5, 'Admin'),
(6, 'admin.title', 'Admin Title', 'Breeze.mn', '', 'text', 1, 'Admin'),
(7, 'admin.description', 'Admin Description', 'Copyright Breeze.mn', '', 'text', 2, 'Admin'),
(8, 'admin.loader', 'Admin Loader', NULL, '', 'image', 3, 'Admin'),
(9, 'admin.icon_image', 'Admin Icon Image', NULL, '', 'image', 4, 'Admin'),
(10, 'admin.google_analytics_client_id', 'Google Analytics Client ID (used for admin dashboard)', '297342841202-pr9uvbhppe5lp6hnb9qq0erebae6g654.apps.googleusercontent.com', '', 'text', 1, 'Admin'),
(12, 'additional.name', 'Name', 'Мэдкүү', NULL, 'text', 6, 'Additional'),
(13, 'site.google_analytics_tracking_id', 'Google Analytics Tracking ID', '', '', 'text', 4, 'Site');

-- --------------------------------------------------------

--
-- Table structure for table `translations`
--

DROP TABLE IF EXISTS `translations`;
CREATE TABLE IF NOT EXISTS `translations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `table_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `translations`
--

INSERT INTO `translations` (`id`, `table_name`, `column_name`, `foreign_key`, `locale`, `value`, `created_at`, `updated_at`) VALUES
(1, 'data_types', 'display_name_singular', 5, 'pt', 'Post', '2018-05-04 22:54:04', '2018-05-04 22:54:04'),
(2, 'data_types', 'display_name_singular', 6, 'pt', 'Página', '2018-05-04 22:54:04', '2018-05-04 22:54:04'),
(3, 'data_types', 'display_name_singular', 1, 'pt', 'Utilizador', '2018-05-04 22:54:04', '2018-05-04 22:54:04'),
(4, 'data_types', 'display_name_singular', 4, 'pt', 'Categoria', '2018-05-04 22:54:04', '2018-05-04 22:54:04'),
(5, 'data_types', 'display_name_singular', 2, 'pt', 'Menu', '2018-05-04 22:54:04', '2018-05-04 22:54:04'),
(6, 'data_types', 'display_name_singular', 3, 'pt', 'Função', '2018-05-04 22:54:04', '2018-05-04 22:54:04'),
(7, 'data_types', 'display_name_plural', 5, 'pt', 'Posts', '2018-05-04 22:54:04', '2018-05-04 22:54:04'),
(8, 'data_types', 'display_name_plural', 6, 'pt', 'Páginas', '2018-05-04 22:54:04', '2018-05-04 22:54:04'),
(9, 'data_types', 'display_name_plural', 1, 'pt', 'Utilizadores', '2018-05-04 22:54:04', '2018-05-04 22:54:04'),
(10, 'data_types', 'display_name_plural', 4, 'pt', 'Categorias', '2018-05-04 22:54:04', '2018-05-04 22:54:04'),
(11, 'data_types', 'display_name_plural', 2, 'pt', 'Menus', '2018-05-04 22:54:04', '2018-05-04 22:54:04'),
(12, 'data_types', 'display_name_plural', 3, 'pt', 'Funções', '2018-05-04 22:54:04', '2018-05-04 22:54:04'),
(13, 'categories', 'slug', 1, 'pt', 'categoria-1', '2018-05-04 22:54:04', '2018-05-04 22:54:04'),
(14, 'categories', 'name', 1, 'pt', 'Categoria 1', '2018-05-04 22:54:04', '2018-05-04 22:54:04'),
(15, 'categories', 'slug', 2, 'pt', 'categoria-2', '2018-05-04 22:54:04', '2018-05-04 22:54:04'),
(16, 'categories', 'name', 2, 'pt', 'Categoria 2', '2018-05-04 22:54:04', '2018-05-04 22:54:04'),
(17, 'pages', 'title', 1, 'pt', 'Olá Mundo', '2018-05-04 22:54:04', '2018-05-04 22:54:04'),
(18, 'pages', 'slug', 1, 'pt', 'ola-mundo', '2018-05-04 22:54:05', '2018-05-04 22:54:05'),
(19, 'pages', 'body', 1, 'pt', '<p>Olá Mundo. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\r\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', '2018-05-04 22:54:05', '2018-05-04 22:54:05'),
(20, 'menu_items', 'title', 1, 'pt', 'Painel de Controle', '2018-05-04 22:54:05', '2018-05-04 22:54:05'),
(21, 'menu_items', 'title', 2, 'pt', 'Media', '2018-05-04 22:54:05', '2018-05-04 22:54:05'),
(22, 'menu_items', 'title', 12, 'pt', 'Publicações', '2018-05-04 22:54:05', '2018-05-04 22:54:05'),
(23, 'menu_items', 'title', 3, 'pt', 'Utilizadores', '2018-05-04 22:54:05', '2018-05-04 22:54:05'),
(24, 'menu_items', 'title', 11, 'pt', 'Categorias', '2018-05-04 22:54:05', '2018-05-04 22:54:05'),
(25, 'menu_items', 'title', 13, 'pt', 'Páginas', '2018-05-04 22:54:05', '2018-05-04 22:54:05'),
(26, 'menu_items', 'title', 4, 'pt', 'Funções', '2018-05-04 22:54:05', '2018-05-04 22:54:05'),
(27, 'menu_items', 'title', 5, 'pt', 'Ferramentas', '2018-05-04 22:54:05', '2018-05-04 22:54:05'),
(28, 'menu_items', 'title', 6, 'pt', 'Menus', '2018-05-04 22:54:05', '2018-05-04 22:54:05'),
(29, 'menu_items', 'title', 7, 'pt', 'Base de dados', '2018-05-04 22:54:05', '2018-05-04 22:54:05'),
(30, 'menu_items', 'title', 10, 'pt', 'Configurações', '2018-05-04 22:54:05', '2018-05-04 22:54:05');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `role_id` int(10) UNSIGNED DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  KEY `users_role_id_foreign` (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `password`, `remember_token`, `settings`, `created_at`, `updated_at`) VALUES
(1, 1, 'Admin', 'admin@admin.com', 'users\\May2018\\EiwYks3BJUHBULPVRRfb.jpg', '$2y$10$YM5E02S2vZuUQOmYsg3VhuONcMLpM6fzYy7kvXNgJ/qexpgnmaZwa', 'i2GTZfWox6AwYJ3dyhoDS5cflSalmO7bToEBgpifnWPgxrgv6XnIuE4rwoNY', '{\"locale\":\"en\"}', '2018-05-04 22:54:02', '2018-05-20 16:15:03'),
(2, 4, 'Jani', 'b.jani93@yahoo.com', 'users/default.png', '$2y$10$jIbsT0Mfym7Md5iK8urftelPI1vZXgeHhuWyNUUrlux.GwF3Xq3E2', 'cSvdf06P6w1NlbgnbwGxXSn9XL12EcsrqLE9P7dU8EDgu28wUyv7EnhfG42L', '{\"locale\":\"en\"}', '2018-05-05 00:58:42', '2018-05-06 09:14:40'),
(3, 1, 'Jani', 'b.jani94@yahoo.com', 'users/default.png', '$2y$10$9LAQk83eET030pDDQsCG4e6iMOAH1UkN.XZpJ.EjSMbaNxTzNscia', NULL, '{\"locale\":\"en\"}', '2018-05-06 09:08:54', '2018-05-20 16:14:55');

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

DROP TABLE IF EXISTS `user_roles`;
CREATE TABLE IF NOT EXISTS `user_roles` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `user_roles_user_id_index` (`user_id`),
  KEY `user_roles_role_id_index` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

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
--
-- Database: `code`
--
CREATE DATABASE IF NOT EXISTS `code` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `code`;

-- --------------------------------------------------------

--
-- Table structure for table `contact_us`
--

DROP TABLE IF EXISTS `contact_us`;
CREATE TABLE IF NOT EXISTS `contact_us` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  `email` varchar(150) NOT NULL,
  `subject` varchar(200) NOT NULL,
  `msg` text NOT NULL,
  `country` varchar(100) NOT NULL,
  `city` varchar(100) NOT NULL,
  `date_of` varchar(100) NOT NULL,
  `ip` varchar(150) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact_us`
--

INSERT INTO `contact_us` (`id`, `name`, `email`, `subject`, `msg`, `country`, `city`, `date_of`, `ip`) VALUES
(14, 'gajannad rathor', 'gajanand.kgn@gmail.com', 'hey buddy how can i help you', 'here is the message of the contact form', '', '', '', ''),
(15, 'gddgdfgdfg', 'safasfd@dsfsdf.com', 'dsdfsdfsdfsdfsd', 'sds', '', '', '', ''),
(16, 'fdg', 'fffgf@fdgfdg.dfsdf', 'dfsdfsdfsd', 'sdf', '', '', '', ''),
(17, 'gajanand', 'gajanand.kgn@gmail.com', 'subject to', 'here are the message for contacting', '', '', '', '');
--
-- Database: `date`
--
CREATE DATABASE IF NOT EXISTS `date` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `date`;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(4, '2014_10_12_000000_create_users_table', 1),
(5, '2014_10_12_100000_create_password_resets_table', 1),
(7, '2018_03_23_211652_create_posts_table', 2),
(8, '2018_04_01_095941_add_user_id_to_posts', 3),
(9, '2018_04_02_095650_add_posts_cover_image_', 4),
(10, '2018_04_04_150737_create_table_rooms', 5),
(12, '2018_04_07_145744_add_user_admin_field', 6),
(13, '2018_04_08_030115_add_userid1_to_room', 7),
(14, '2018_04_08_132205_add_room_user2_id', 8);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('b.jani93@yahoo.com', '$2y$10$P8iBYLmYwONGHiBFj3kMoux9aJ8WUfa79GfRkd2nUMXZYoJtl7PpK', '2018-04-01 01:35:46');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
CREATE TABLE IF NOT EXISTS `posts` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `cover_image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `body`, `created_at`, `updated_at`, `user_id`, `cover_image`) VALUES
(21, 'Post without img', '<p>no img</p> gg', '2018-04-02 06:00:27', '2018-04-17 08:34:15', 2, 'noimage.jpg'),
(20, 'Agosha 123', '<p>Aigerim hhh</p>', '2018-04-02 04:40:01', '2018-04-17 08:42:29', 2, 'Desert_1522672801.jpg'),
(24, 'First post', '<p>post 1</p>\r\n\r\n<p>&nbsp;</p>', '2018-04-17 09:17:44', '2018-04-17 09:17:44', 2, 'noimage.jpg'),
(26, 'Post 2', '<p>Post 2</p>', '2018-04-18 19:31:05', '2018-04-18 19:31:05', 1, 'noimage.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `rooms`
--

DROP TABLE IF EXISTS `rooms`;
CREATE TABLE IF NOT EXISTS `rooms` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `place` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fee` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user1_id` int(11) NOT NULL,
  `user2_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `rooms`
--

INSERT INTO `rooms` (`id`, `place`, `fee`, `created_at`, `updated_at`, `user1_id`, `user2_id`) VALUES
(9, 'Shangrilla', 5000, '2018-04-08 04:17:29', '2018-04-08 06:21:16', 3, 2),
(10, 'Restaurant', 20000, '2018-04-08 08:08:00', '2018-04-13 01:56:17', 1, 2),
(11, 'Room 3', 500000, '2018-04-08 08:08:54', '2018-04-25 08:14:58', 2, 0),
(12, 'Room 4', 9800, '2018-04-08 08:09:07', '2018-04-25 08:16:58', 2, 0),
(14, 'Shangrilla 2', 400000, '2018-04-25 04:31:08', '2018-04-25 04:33:32', 1, 2),
(15, 'Ub Zoog', 25000, '2018-04-25 08:46:35', '2018-04-25 19:50:56', 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `admin_role` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`, `admin_role`) VALUES
(1, 'Jani', 'b.jani93@yahoo.com', '$2y$10$eOZheQlQ8Nvo.9CzcHZ74OXl3HEA4/ePMp.hnJT5aoV9wPCeNBWku', 'Eorwl0OvJApk7KwzKOtnioC60CwtTEmjknSf597YL00ciMfFnn6cVj4OIM9v', '2018-03-31 23:27:07', '2018-03-31 23:27:07', 'admin'),
(2, 'Fatikha', 'b.jani94@yahoo.com', '$2y$10$qi2KasHbg0n/FcaV6Hjdvud0Bk3D2B9WO.PdBg0mjaes9qQEosBaa', 'qkQ7Fsl3qZJdwFEyrbx2CSkw8vbPeRKolrWR9wLAAc4dFCvAKvphaPGdxtVe', '2018-04-01 18:33:51', '2018-04-01 18:33:51', ''),
(3, 'agosh', 'baavga@yahoo.com', '$2y$10$NbKDOFUrbsnVaBoc.I.g1.g27ZMJMMPFrT8ZuA0RLJtZe5.Gd71Km', 'av6KKAphE0Ynw5hcNv7mmKPcik7k83ySP5tehqAorXvBCRwKnovHVtWdrg5l', '2018-04-08 05:53:45', '2018-04-08 05:53:45', 'user');
--
-- Database: `date1`
--
CREATE DATABASE IF NOT EXISTS `date1` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `date1`;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(4, '2014_10_12_000000_create_users_table', 1),
(5, '2014_10_12_100000_create_password_resets_table', 1),
(7, '2018_03_23_211652_create_posts_table', 2),
(8, '2018_04_01_095941_add_user_id_to_posts', 3),
(9, '2018_04_02_095650_add_posts_cover_image_', 4),
(10, '2018_04_04_150737_create_table_rooms', 5),
(12, '2018_04_07_145744_add_user_admin_field', 6),
(13, '2018_04_08_030115_add_userid1_to_room', 7),
(14, '2018_04_08_132205_add_room_user2_id', 8),
(15, '2018_04_29_083352_add_user_avatar', 9),
(29, '2018_04_29_130902_create_user_info_table', 10);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('b.jani93@yahoo.com', '$2y$10$P8iBYLmYwONGHiBFj3kMoux9aJ8WUfa79GfRkd2nUMXZYoJtl7PpK', '2018-04-01 01:35:46');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
CREATE TABLE IF NOT EXISTS `posts` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `cover_image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `body`, `created_at`, `updated_at`, `user_id`, `cover_image`) VALUES
(30, 'Couple Story', '<p>A happy&nbsp;<em>story</em>&nbsp;of a happy&nbsp;<em>couple</em>. By Cristina Sampang. a-happy-<em>story</em>-of-a-happy-<em>couple</em>&nbsp;A&nbsp;<em>story</em>may have no beginning or end, this is so probably because we can&#39;t remember much how it started and this relationship we would wish not to end. Love was not the basis of our relationship.</p>', '2018-05-03 23:23:24', '2018-05-03 23:23:24', 1, 'Lindsay-Adler-Photography-Couples-Posing-Stacking_2_1525418604.jpg'),
(29, 'Our first couple wedding', '<p>Since the late twentieth century, major social changes in Western countries have led to changes in the demographics of&nbsp;<em>marriage</em>, with the age of&nbsp;<em>first marriage</em>&nbsp;increasing, fewer people marrying, and more<em>couples</em>&nbsp;choosing to cohabit rather than marry.&nbsp;</p>', '2018-05-03 23:09:34', '2018-05-03 23:09:34', 1, 'wedding_1525417774.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `rooms`
--

DROP TABLE IF EXISTS `rooms`;
CREATE TABLE IF NOT EXISTS `rooms` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `place` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fee` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user1_id` int(11) NOT NULL,
  `user2_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `rooms`
--

INSERT INTO `rooms` (`id`, `place`, `fee`, `created_at`, `updated_at`, `user1_id`, `user2_id`) VALUES
(12, 'Room 4', 9800, '2018-04-08 08:09:07', '2018-05-24 01:20:18', 8, 1),
(14, 'Shangrilla 2', 400000, '2018-04-25 04:31:08', '2018-04-25 04:33:32', 0, 0),
(15, 'Ub Zoog', 25000, '2018-04-25 08:46:35', '2018-04-28 23:43:11', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `admin_role` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default.jpg',
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`, `admin_role`, `avatar`) VALUES
(1, 'Jani', 'b.jani93@yahoo.com', '$2y$10$eOZheQlQ8Nvo.9CzcHZ74OXl3HEA4/ePMp.hnJT5aoV9wPCeNBWku', 'TH48W8pdMrGVf9vNxomwoCuDF1TqyEqLpZVJzlu6ylCvgARouhM1IsjIHlhB', '2018-03-31 23:27:07', '2018-03-31 23:27:07', 'admin', 'default.jpg'),
(2, 'Fatikha', 'b.jani94@yahoo.com', '$2y$10$qi2KasHbg0n/FcaV6Hjdvud0Bk3D2B9WO.PdBg0mjaes9qQEosBaa', 'FTvDsiIRRLtpBRglGsxQv0QdYVzmwklSszM2PayW4ao2EDM9bIoWcWb03qVs', '2018-04-01 18:33:51', '2018-05-16 20:19:58', '', '1525439065.jpg'),
(3, 'agosh', 'baavga@yahoo.com', '$2y$10$NbKDOFUrbsnVaBoc.I.g1.g27ZMJMMPFrT8ZuA0RLJtZe5.Gd71Km', '3EslCtQZJCRCjmY9tmvKiltbWIJTdRVm4OEGVIEJ9qD637Soo0fXeUyzg35K', '2018-04-08 05:53:45', '2018-04-08 05:53:45', 'user', 'default.jpg'),
(6, 'Dastan', 'gg@yahoo.com', '910615', 'btCS7phBgaz5ADsNbwGGL9hgdlnzNf209HekpVNvLauaBrsjEzoDjHvtNs1Z', '2018-04-29 08:36:37', '2018-05-03 04:56:44', 'user', '1525027169.jpg'),
(7, 'Erdos', 'erdos@yahoo.com', '$2y$10$MUxh5LEQM8wgN/qPW4SloO8TyceDzki09/H6nQgwwxIA/Iq5f.Why', NULL, '2018-04-29 10:40:33', '2018-04-29 10:41:10', 'user', '1525027262.jpg'),
(8, 'gge', 'ggg@yahoo.com', '$2y$10$8Rh3d0bQIpIa9BdzyNMRbuerDjYigZjHGIF/4nVs/2cnRzHUYwcpW', 'RczZw63jaGDeItHo3vHn6ZcaGJ8ZwKOBRTNjFdmEaanL5ao1kSlmvpKKwWWL', '2018-05-16 20:20:52', '2018-05-16 20:21:13', 'user', '1526530867.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `user_infos`
--

DROP TABLE IF EXISTS `user_infos`;
CREATE TABLE IF NOT EXISTS `user_infos` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `verify_img` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default.jpg',
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `phone_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `birth_date` date NOT NULL DEFAULT '0001-12-31',
  `language` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `website` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `family` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `work_education` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_infos`
--

INSERT INTO `user_infos` (`id`, `user_id`, `verify_img`, `address`, `phone_no`, `birth_date`, `language`, `website`, `family`, `work_education`, `created_at`, `updated_at`) VALUES
(1, '1', 'default.jpg', '', '', '0001-12-31', '', '', '', '', NULL, NULL),
(2, '2', 'default.jpg', 'hhh', '', '0001-12-31', '', '', '', '', NULL, '2018-04-29 08:41:22'),
(3, '3', 'default.jpg', '', '', '0001-12-31', '', '', '', '', NULL, NULL),
(4, '4', 'default.jpg', '', '', '0001-12-31', '', '', '', '', '2018-04-29 08:36:37', '2018-04-29 08:36:37'),
(5, '0', 'default.jpg', '', '', '0001-12-31', '', '', '', '', NULL, NULL),
(6, '0', 'default.jpg', 'Bzd 13 khoroo', '94009717', '0001-12-31', '', '', '', '', NULL, '2018-04-29 08:48:55'),
(7, '0', 'default.jpg', 'Bzd bor ger', '', '0001-12-31', '', '', '', '', '2018-04-29 10:40:33', '2018-04-29 10:41:25'),
(8, '0', 'default.jpg', '', '', '0001-12-31', '', '', '', '', '2018-05-16 20:20:51', '2018-05-16 20:20:51'),
(9, '0', 'default.jpg', 'Kyzyl', '', '0001-12-31', '', '', '', '', '2018-05-16 22:03:26', '2018-05-16 22:04:20');
--
-- Database: `enigma`
--
CREATE DATABASE IF NOT EXISTS `enigma` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `enigma`;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `categories_slug_unique` (`slug`),
  KEY `categories_parent_id_foreign` (`parent_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `parent_id`, `order`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, NULL, 1, 'Category 1', 'category-1', '2018-05-04 22:54:02', '2018-05-04 22:54:02'),
(2, NULL, 1, 'Category 2', 'category-2', '2018-05-04 22:54:02', '2018-05-04 22:54:02'),
(3, NULL, 1, 'Featured', 'featured', '2018-05-05 02:19:16', '2018-05-05 02:19:16'),
(4, NULL, 1, 'heat', 'heat', '2018-05-06 03:19:53', '2018-05-06 03:19:53');

-- --------------------------------------------------------

--
-- Table structure for table `data_rows`
--

DROP TABLE IF EXISTS `data_rows`;
CREATE TABLE IF NOT EXISTS `data_rows` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
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
  `details` text COLLATE utf8mb4_unicode_ci,
  `order` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `data_rows_data_type_id_foreign` (`data_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=75 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `data_rows`
--

INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES
(1, 1, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, '', 1),
(2, 1, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '', 2),
(3, 1, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, '', 3),
(4, 1, 'password', 'password', 'Password', 1, 0, 0, 1, 1, 0, '', 4),
(5, 1, 'remember_token', 'text', 'Remember Token', 0, 0, 0, 0, 0, 0, '', 5),
(6, 1, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, '', 6),
(7, 1, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '', 7),
(8, 1, 'avatar', 'image', 'Avatar', 0, 1, 1, 1, 1, 1, '', 8),
(9, 1, 'user_belongsto_role_relationship', 'relationship', 'Role', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":\"0\"}', 10),
(10, 1, 'user_belongstomany_role_relationship', 'relationship', 'Roles', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}', 11),
(11, 1, 'locale', 'text', 'Locale', 0, 1, 1, 1, 1, 0, '', 12),
(12, 1, 'settings', 'hidden', 'Settings', 0, 0, 0, 0, 0, 0, '', 12),
(13, 2, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, '', 1),
(14, 2, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '', 2),
(15, 2, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '', 3),
(16, 2, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '', 4),
(17, 3, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, '', 1),
(18, 3, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '', 2),
(19, 3, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '', 3),
(20, 3, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '', 4),
(21, 3, 'display_name', 'text', 'Display Name', 1, 1, 1, 1, 1, 1, '', 5),
(22, 1, 'role_id', 'text', 'Role', 1, 1, 1, 1, 1, 1, '', 9),
(23, 4, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(24, 4, 'parent_id', 'select_dropdown', 'Parent', 0, 0, 1, 1, 1, 1, '{\"default\":\"\",\"null\":\"\",\"options\":{\"\":\"-- None --\"},\"relationship\":{\"key\":\"id\",\"label\":\"name\"}}', 2),
(25, 4, 'order', 'text', 'Order', 1, 1, 1, 1, 1, 1, '{\"default\":1}', 3),
(26, 4, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 4),
(27, 4, 'slug', 'text', 'Slug', 1, 1, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"name\"}}', 5),
(28, 4, 'created_at', 'timestamp', 'Created At', 0, 0, 1, 0, 0, 0, NULL, 6),
(29, 4, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(30, 5, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, '', 1),
(31, 5, 'author_id', 'text', 'Author', 1, 0, 1, 1, 0, 1, '', 2),
(32, 5, 'category_id', 'text', 'Category', 1, 0, 1, 1, 1, 0, '', 3),
(33, 5, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, '', 4),
(34, 5, 'excerpt', 'text_area', 'Excerpt', 1, 0, 1, 1, 1, 1, '', 5),
(35, 5, 'body', 'rich_text_box', 'Body', 1, 0, 1, 1, 1, 1, '', 6),
(36, 5, 'image', 'image', 'Post Image', 0, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"1000\",\"height\":\"null\"},\"quality\":\"70%\",\"upsize\":true,\"thumbnails\":[{\"name\":\"medium\",\"scale\":\"50%\"},{\"name\":\"small\",\"scale\":\"25%\"},{\"name\":\"cropped\",\"crop\":{\"width\":\"300\",\"height\":\"250\"}}]}', 7),
(37, 5, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\",\"forceUpdate\":true},\"validation\":{\"rule\":\"unique:posts,slug\"}}', 8),
(38, 5, 'meta_description', 'text_area', 'Meta Description', 1, 0, 1, 1, 1, 1, '', 9),
(39, 5, 'meta_keywords', 'text_area', 'Meta Keywords', 1, 0, 1, 1, 1, 1, '', 10),
(40, 5, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"DRAFT\",\"options\":{\"PUBLISHED\":\"published\",\"DRAFT\":\"draft\",\"PENDING\":\"pending\"}}', 11),
(41, 5, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, '', 12),
(42, 5, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '', 13),
(43, 5, 'seo_title', 'text', 'SEO Title', 0, 1, 1, 1, 1, 1, '', 14),
(44, 5, 'featured', 'checkbox', 'Featured', 1, 1, 1, 1, 1, 1, '', 15),
(45, 6, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, '', 1),
(46, 6, 'author_id', 'text', 'Author', 1, 0, 0, 0, 0, 0, '', 2),
(47, 6, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, '', 3),
(48, 6, 'excerpt', 'text_area', 'Excerpt', 1, 0, 1, 1, 1, 1, '', 4),
(49, 6, 'body', 'rich_text_box', 'Body', 1, 0, 1, 1, 1, 1, '', 5),
(50, 6, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\"},\"validation\":{\"rule\":\"unique:pages,slug\"}}', 6),
(51, 6, 'meta_description', 'text', 'Meta Description', 1, 0, 1, 1, 1, 1, '', 7),
(52, 6, 'meta_keywords', 'text', 'Meta Keywords', 1, 0, 1, 1, 1, 1, '', 8),
(53, 6, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"INACTIVE\",\"options\":{\"INACTIVE\":\"INACTIVE\",\"ACTIVE\":\"ACTIVE\"}}', 9),
(54, 6, 'created_at', 'timestamp', 'Created At', 1, 1, 1, 0, 0, 0, '', 10),
(55, 6, 'updated_at', 'timestamp', 'Updated At', 1, 0, 0, 0, 0, 0, '', 11),
(56, 6, 'image', 'image', 'Page Image', 0, 1, 1, 1, 1, 1, '', 12),
(57, 7, 'id', 'hidden', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(58, 7, 'name', 'text', 'Name', 0, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"9\",\"id\":\"custom_id\"}}', 2),
(59, 7, 'body', 'rich_text_box', 'Body', 0, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"9\",\"id\":\"custom_id\"}}', 3),
(61, 7, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, NULL, 11),
(62, 7, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 12),
(63, 7, 'product_belongsto_user_relationship', 'relationship', 'Users', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\User\",\"table\":\"users\",\"type\":\"belongsTo\",\"column\":\"user_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":\"0\"}', 10),
(64, 7, 'user_id', 'text', 'User Id', 0, 1, 1, 1, 1, 1, NULL, 5),
(65, 7, 'price', 'number', 'Price', 0, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"3\",\"id\":\"custom_id\"}}', 4),
(67, 7, 'shortdesc', 'text', 'Shortdesc', 0, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"3\",\"id\":\"custom_id\"}}', 6),
(68, 7, 'image1', 'image', 'Image1', 0, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"400\",\"height\":null},\"display\":{\"width\":\"3\",\"id\":\"custom_id\"}}', 7),
(69, 7, 'image2', 'image', 'Image2', 0, 0, 1, 1, 1, 1, '{\"resize\":{\"width\":\"400\",\"height\":null},\"display\":{\"width\":\"3\",\"id\":\"custom_id\"}}', 8),
(70, 7, 'image3', 'image', 'Image3', 0, 0, 1, 1, 1, 1, '{\"resize\":{\"width\":\"400\",\"height\":null},\"display\":{\"width\":\"3\",\"id\":\"custom_id\"}}', 9),
(71, 7, 'category_id', 'hidden', 'Category Id', 0, 1, 1, 1, 1, 1, NULL, 13),
(72, 4, 'category_hasmany_product_relationship', 'relationship', 'products', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Product\",\"table\":\"products\",\"type\":\"hasMany\",\"column\":\"id\",\"key\":\"category_id\",\"label\":\"name\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":\"0\"}', 8),
(73, 7, 'product_belongsto_category_relationship', 'relationship', 'categories', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Category\",\"table\":\"categories\",\"type\":\"belongsTo\",\"column\":\"category_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":\"0\"}', 14),
(74, 7, 'featured', 'checkbox', 'Featured', 1, 1, 1, 1, 1, 1, NULL, 13);

-- --------------------------------------------------------

--
-- Table structure for table `data_types`
--

DROP TABLE IF EXISTS `data_types`;
CREATE TABLE IF NOT EXISTS `data_types` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT '0',
  `server_side` tinyint(4) NOT NULL DEFAULT '0',
  `details` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `data_types_name_unique` (`name`),
  UNIQUE KEY `data_types_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `data_types`
--

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `details`, `created_at`, `updated_at`) VALUES
(1, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', '', '', 1, 0, NULL, '2018-05-04 22:53:54', '2018-05-04 22:53:54'),
(2, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, NULL, '2018-05-04 22:53:54', '2018-05-04 22:53:54'),
(3, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, '', '', 1, 0, NULL, '2018-05-04 22:53:54', '2018-05-04 22:53:54'),
(4, 'categories', 'categories', 'Category', 'Categories', 'voyager-categories', 'App\\Category', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null}', '2018-05-04 22:54:01', '2018-05-06 04:01:21'),
(5, 'posts', 'posts', 'Post', 'Posts', 'voyager-news', 'TCG\\Voyager\\Models\\Post', 'TCG\\Voyager\\Policies\\PostPolicy', '', '', 1, 0, NULL, '2018-05-04 22:54:02', '2018-05-04 22:54:02'),
(6, 'pages', 'pages', 'Page', 'Pages', 'voyager-file-text', 'TCG\\Voyager\\Models\\Page', NULL, '', '', 1, 0, NULL, '2018-05-04 22:54:03', '2018-05-04 22:54:03'),
(7, 'products', 'products', 'Product', 'Products', 'voyager-bag', 'App\\Product', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null}', '2018-05-04 23:05:46', '2018-05-06 19:58:43');

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

DROP TABLE IF EXISTS `menus`;
CREATE TABLE IF NOT EXISTS `menus` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `menus_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2018-05-04 22:53:55', '2018-05-04 22:53:55');

-- --------------------------------------------------------

--
-- Table structure for table `menu_items`
--

DROP TABLE IF EXISTS `menu_items`;
CREATE TABLE IF NOT EXISTS `menu_items` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
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
  `parameters` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `menu_items_menu_id_foreign` (`menu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
(1, 1, 'Dashboard', '', '_self', 'voyager-boat', NULL, NULL, 1, '2018-05-04 22:53:55', '2018-05-04 22:53:55', 'voyager.dashboard', NULL),
(2, 1, 'Media', '', '_self', 'voyager-images', NULL, NULL, 5, '2018-05-04 22:53:55', '2018-05-04 22:53:55', 'voyager.media.index', NULL),
(3, 1, 'Users', '', '_self', 'voyager-person', NULL, NULL, 4, '2018-05-04 22:53:55', '2018-05-06 19:52:17', 'voyager.users.index', NULL),
(4, 1, 'Roles', '', '_self', 'voyager-lock', NULL, NULL, 3, '2018-05-04 22:53:55', '2018-05-06 19:52:17', 'voyager.roles.index', NULL),
(5, 1, 'Tools', '', '_self', 'voyager-tools', NULL, NULL, 9, '2018-05-04 22:53:55', '2018-05-04 22:53:55', NULL, NULL),
(6, 1, 'Menu Builder', '', '_self', 'voyager-list', NULL, 5, 1, '2018-05-04 22:53:55', '2018-05-06 19:52:17', 'voyager.menus.index', NULL),
(7, 1, 'Database', '', '_self', 'voyager-data', NULL, 5, 2, '2018-05-04 22:53:55', '2018-05-06 19:52:17', 'voyager.database.index', NULL),
(8, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 5, 3, '2018-05-04 22:53:55', '2018-05-06 19:52:17', 'voyager.compass.index', NULL),
(9, 1, 'BREAD', '', '_self', 'voyager-bread', NULL, 5, 4, '2018-05-04 22:53:55', '2018-05-06 19:52:17', 'voyager.bread.index', NULL),
(10, 1, 'Settings', '', '_self', 'voyager-settings', NULL, NULL, 10, '2018-05-04 22:53:55', '2018-05-06 19:52:17', 'voyager.settings.index', NULL),
(11, 1, 'Categories', '', '_self', 'voyager-categories', NULL, NULL, 8, '2018-05-04 22:54:02', '2018-05-04 22:54:02', 'voyager.categories.index', NULL),
(12, 1, 'Posts', '', '_self', 'voyager-news', NULL, NULL, 6, '2018-05-04 22:54:03', '2018-05-04 22:54:03', 'voyager.posts.index', NULL),
(13, 1, 'Pages', '', '_self', 'voyager-file-text', NULL, NULL, 7, '2018-05-04 22:54:04', '2018-05-04 22:54:04', 'voyager.pages.index', NULL),
(14, 1, 'Hooks', '', '_self', 'voyager-hook', NULL, 5, 5, '2018-05-04 22:54:05', '2018-05-06 19:52:17', 'voyager.hooks', NULL),
(16, 1, 'Products', '/admin/products', '_self', 'voyager-bag', '#000000', NULL, 2, '2018-05-04 23:10:10', '2018-05-06 19:52:17', NULL, '');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

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
(23, '2016_01_01_000000_create_pages_table', 2),
(24, '2016_01_01_000000_create_posts_table', 2),
(25, '2016_02_15_204651_create_categories_table', 2),
(26, '2017_04_11_000000_alter_post_nullable_fields_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

DROP TABLE IF EXISTS `pages`;
CREATE TABLE IF NOT EXISTS `pages` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `author_id` int(11) NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci,
  `body` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `status` enum('ACTIVE','INACTIVE') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'INACTIVE',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `pages_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `author_id`, `title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `created_at`, `updated_at`) VALUES
(1, 0, 'Hello World', 'Hang the jib grog grog blossom grapple dance the hempen jig gangway pressgang bilge rat to go on account lugger. Nelsons folly gabion line draught scallywag fire ship gaff fluke fathom case shot. Sea Legs bilge rat sloop matey gabion long clothes run a shot across the bow Gold Road cog league.', '<p>Hello World. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', 'pages/page1.jpg', 'hello-world', 'Yar Meta Description', 'Keyword1, Keyword2', 'ACTIVE', '2018-05-04 22:54:04', '2018-05-04 22:54:04');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

DROP TABLE IF EXISTS `permissions`;
CREATE TABLE IF NOT EXISTS `permissions` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `permissions_key_index` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES
(1, 'browse_admin', NULL, '2018-05-04 22:53:55', '2018-05-04 22:53:55'),
(2, 'browse_bread', NULL, '2018-05-04 22:53:55', '2018-05-04 22:53:55'),
(3, 'browse_database', NULL, '2018-05-04 22:53:55', '2018-05-04 22:53:55'),
(4, 'browse_media', NULL, '2018-05-04 22:53:55', '2018-05-04 22:53:55'),
(5, 'browse_compass', NULL, '2018-05-04 22:53:55', '2018-05-04 22:53:55'),
(6, 'browse_menus', 'menus', '2018-05-04 22:53:55', '2018-05-04 22:53:55'),
(7, 'read_menus', 'menus', '2018-05-04 22:53:55', '2018-05-04 22:53:55'),
(8, 'edit_menus', 'menus', '2018-05-04 22:53:56', '2018-05-04 22:53:56'),
(9, 'add_menus', 'menus', '2018-05-04 22:53:56', '2018-05-04 22:53:56'),
(10, 'delete_menus', 'menus', '2018-05-04 22:53:56', '2018-05-04 22:53:56'),
(11, 'browse_roles', 'roles', '2018-05-04 22:53:56', '2018-05-04 22:53:56'),
(12, 'read_roles', 'roles', '2018-05-04 22:53:56', '2018-05-04 22:53:56'),
(13, 'edit_roles', 'roles', '2018-05-04 22:53:56', '2018-05-04 22:53:56'),
(14, 'add_roles', 'roles', '2018-05-04 22:53:56', '2018-05-04 22:53:56'),
(15, 'delete_roles', 'roles', '2018-05-04 22:53:56', '2018-05-04 22:53:56'),
(16, 'browse_users', 'users', '2018-05-04 22:53:56', '2018-05-04 22:53:56'),
(17, 'read_users', 'users', '2018-05-04 22:53:56', '2018-05-04 22:53:56'),
(18, 'edit_users', 'users', '2018-05-04 22:53:56', '2018-05-04 22:53:56'),
(19, 'add_users', 'users', '2018-05-04 22:53:56', '2018-05-04 22:53:56'),
(20, 'delete_users', 'users', '2018-05-04 22:53:56', '2018-05-04 22:53:56'),
(21, 'browse_settings', 'settings', '2018-05-04 22:53:56', '2018-05-04 22:53:56'),
(22, 'read_settings', 'settings', '2018-05-04 22:53:56', '2018-05-04 22:53:56'),
(23, 'edit_settings', 'settings', '2018-05-04 22:53:56', '2018-05-04 22:53:56'),
(24, 'add_settings', 'settings', '2018-05-04 22:53:56', '2018-05-04 22:53:56'),
(25, 'delete_settings', 'settings', '2018-05-04 22:53:56', '2018-05-04 22:53:56'),
(26, 'browse_categories', 'categories', '2018-05-04 22:54:02', '2018-05-04 22:54:02'),
(27, 'read_categories', 'categories', '2018-05-04 22:54:02', '2018-05-04 22:54:02'),
(28, 'edit_categories', 'categories', '2018-05-04 22:54:02', '2018-05-04 22:54:02'),
(29, 'add_categories', 'categories', '2018-05-04 22:54:02', '2018-05-04 22:54:02'),
(30, 'delete_categories', 'categories', '2018-05-04 22:54:02', '2018-05-04 22:54:02'),
(31, 'browse_posts', 'posts', '2018-05-04 22:54:03', '2018-05-04 22:54:03'),
(32, 'read_posts', 'posts', '2018-05-04 22:54:03', '2018-05-04 22:54:03'),
(33, 'edit_posts', 'posts', '2018-05-04 22:54:03', '2018-05-04 22:54:03'),
(34, 'add_posts', 'posts', '2018-05-04 22:54:03', '2018-05-04 22:54:03'),
(35, 'delete_posts', 'posts', '2018-05-04 22:54:03', '2018-05-04 22:54:03'),
(36, 'browse_pages', 'pages', '2018-05-04 22:54:04', '2018-05-04 22:54:04'),
(37, 'read_pages', 'pages', '2018-05-04 22:54:04', '2018-05-04 22:54:04'),
(38, 'edit_pages', 'pages', '2018-05-04 22:54:04', '2018-05-04 22:54:04'),
(39, 'add_pages', 'pages', '2018-05-04 22:54:04', '2018-05-04 22:54:04'),
(40, 'delete_pages', 'pages', '2018-05-04 22:54:04', '2018-05-04 22:54:04'),
(41, 'browse_hooks', NULL, '2018-05-04 22:54:05', '2018-05-04 22:54:05'),
(42, 'browse_products', 'products', '2018-05-04 23:05:46', '2018-05-04 23:05:46'),
(43, 'read_products', 'products', '2018-05-04 23:05:46', '2018-05-04 23:05:46'),
(44, 'edit_products', 'products', '2018-05-04 23:05:46', '2018-05-04 23:05:46'),
(45, 'add_products', 'products', '2018-05-04 23:05:46', '2018-05-04 23:05:46'),
(46, 'delete_products', 'products', '2018-05-04 23:05:46', '2018-05-04 23:05:46');

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

DROP TABLE IF EXISTS `permission_role`;
CREATE TABLE IF NOT EXISTS `permission_role` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`),
  KEY `permission_role_permission_id_index` (`permission_id`),
  KEY `permission_role_role_id_index` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(1, 4),
(2, 1),
(3, 1),
(4, 1),
(4, 4),
(5, 1),
(5, 4),
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
(16, 4),
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
(26, 2),
(26, 4),
(27, 1),
(27, 2),
(27, 4),
(28, 1),
(28, 2),
(28, 4),
(29, 1),
(29, 2),
(29, 4),
(30, 1),
(30, 2),
(30, 4),
(31, 1),
(31, 2),
(31, 4),
(32, 1),
(32, 2),
(32, 4),
(33, 1),
(33, 2),
(33, 4),
(34, 1),
(34, 2),
(34, 4),
(35, 1),
(35, 2),
(35, 4),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(41, 4),
(42, 1),
(42, 2),
(42, 4),
(43, 1),
(43, 2),
(43, 4),
(44, 1),
(44, 2),
(44, 4),
(45, 1),
(45, 2),
(45, 4),
(46, 1),
(46, 2),
(46, 4);

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
CREATE TABLE IF NOT EXISTS `posts` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `author_id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `status` enum('PUBLISHED','DRAFT','PENDING') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'DRAFT',
  `featured` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `posts_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `author_id`, `category_id`, `title`, `seo_title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `featured`, `created_at`, `updated_at`) VALUES
(1, 1, 2, 'Lorem Ipsum Post', NULL, 'This is the excerpt for the Lorem Ipsum Post', '<p>This is the body of the lorem ipsum post</p>', 'posts/post1.jpg', 'lorem-ipsum-post', 'This is the meta description', 'keyword1, keyword2, keyword3', 'DRAFT', 1, '2018-05-04 22:54:03', '2018-05-05 02:55:28'),
(2, 0, NULL, 'My Sample Post', NULL, 'This is the excerpt for the sample Post', '<p>This is the body for the sample post, which includes the body.</p>\n                <h2>We can use all kinds of format!</h2>\n                <p>And include a bunch of other stuff.</p>', 'posts/post2.jpg', 'my-sample-post', 'Meta Description for sample post', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2018-05-04 22:54:03', '2018-05-04 22:54:03'),
(3, 0, NULL, 'Latest Post', NULL, 'This is the excerpt for the latest post', '<p>This is the body for the latest post</p>', 'posts/post3.jpg', 'latest-post', 'This is the meta description', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2018-05-04 22:54:03', '2018-05-04 22:54:03'),
(4, 0, NULL, 'Yarr Post', NULL, 'Reef sails nipperkin bring a spring upon her cable coffer jury mast spike marooned Pieces of Eight poop deck pillage. Clipper driver coxswain galleon hempen halter come about pressgang gangplank boatswain swing the lead. Nipperkin yard skysail swab lanyard Blimey bilge water ho quarter Buccaneer.', '<p>Swab deadlights Buccaneer fire ship square-rigged dance the hempen jig weigh anchor cackle fruit grog furl. Crack Jennys tea cup chase guns pressgang hearties spirits hogshead Gold Road six pounders fathom measured fer yer chains. Main sheet provost come about trysail barkadeer crimp scuttle mizzenmast brig plunder.</p>\n<p>Mizzen league keelhaul galleon tender cog chase Barbary Coast doubloon crack Jennys tea cup. Blow the man down lugsail fire ship pinnace cackle fruit line warp Admiral of the Black strike colors doubloon. Tackle Jack Ketch come about crimp rum draft scuppers run a shot across the bow haul wind maroon.</p>\n<p>Interloper heave down list driver pressgang holystone scuppers tackle scallywag bilged on her anchor. Jack Tar interloper draught grapple mizzenmast hulk knave cable transom hogshead. Gaff pillage to go on account grog aft chase guns piracy yardarm knave clap of thunder.</p>', 'posts/post4.jpg', 'yarr-post', 'this be a meta descript', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2018-05-04 22:54:03', '2018-05-04 22:54:03');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8_unicode_ci,
  `image1` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `shortdesc` tinytext COLLATE utf8_unicode_ci,
  `image2` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image3` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `category_id` text COLLATE utf8_unicode_ci,
  `featured` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `body`, `image1`, `created_at`, `updated_at`, `user_id`, `price`, `shortdesc`, `image2`, `image3`, `category_id`, `featured`) VALUES
(1, 'Агшин зуур халаагч', '<p>Зуухны бие&nbsp;</p>', 'products\\May2018\\6JXPrdve3Tmt8cDOtwiD.JPG', '2018-05-04 23:13:00', '2018-05-06 00:50:56', 1, 4500002, 'Зуухны бие уг зуух нь 380 хэмд халах бөгөөд нананана', 'products\\May2018\\Vun7jvzfP6gwynrIXUkc.jpg', NULL, NULL, 0),
(4, 'Huurug', NULL, 'products\\May2018\\xlbp5putIwRYlPxgCNhe.jpg', '2018-05-05 20:52:00', '2018-05-06 04:41:08', 1, 213200, 'Huurug', NULL, NULL, '4', 0),
(18, 'Шалны халаалт', NULL, 'products\\May2018\\HpdxW1KuEs7QgHTeo29f.jpg', '2018-05-06 01:47:00', '2018-05-06 03:46:30', 1, 25000, 'Халаалт', NULL, NULL, '4', 0),
(19, 'Борооны хаялага', '<p>Борооны хаялага</p>', 'products\\May2018\\B8O8k1u6isaUkoWPSZ1S.jpg', '2018-05-06 09:16:00', '2018-05-06 19:59:03', 1, 87000, 'Борооноос хамгаална', 'products\\May2018\\kW6XcA8PN7lMqN14jlxo.jpg', 'products\\May2018\\xDsxLWTDHFFIywXYk8hj.jpg', '4', 1),
(20, NULL, NULL, 'products\\May2018\\VPkhtdU6O1IlzdztS1FE.jpg', '2018-05-06 20:24:56', '2018-05-06 20:24:56', 1, NULL, NULL, NULL, NULL, '1', 0),
(21, NULL, NULL, 'products\\May2018\\rzJKZCfAZfGMhNeBUz2Z.gif', '2018-05-06 20:25:05', '2018-05-06 20:25:05', 1, NULL, NULL, NULL, NULL, '1', 0),
(22, NULL, NULL, 'products\\May2018\\ieapIt8y7A5PjGs0M75W.jpg', '2018-05-06 20:25:00', '2018-05-06 20:27:49', 1, NULL, NULL, NULL, NULL, '1', 0),
(23, 'Дээврийн усны хаялгын систем', '<p>Дээврийн усны хаялгын систем нь бороо болон хайлмал усыг цуглуулж зайлуулсанаар байшин барилгын хана фундамыг хамгаалах үүрэгтэй. Мөн борооны усыг цуглуулж хэрэглэснээр ногоо модоо усалж эргэн тойрноо сайжрулах боломжтой.<br /> Дараах давуу талууд :<br /> &bull; Материал PVC <br /> &bull; Зузаан давхар ханатай <br /> &bull; Угсархад хялбар, хөнгөн<span class=\"text_exposed_show\"><br /> &bull; Удаан эдэлгээтэй<br /> &bull; Температуурын өөрчлөлтөнд маш сайн тэсвэртэй<br /> &bull; Хагарч хугарахгүй хэлбэрээ алдахгүй<br /> &bull; Зэвэрдэггүй, өнгө алдахгүй<br /> &bull; Үзэмж сайтай, байшингийн дизайн үзэмжийг сайжруулж өгнө нэмнэ.</span></p>', 'products\\May2018\\dfN37tXYWCY8Jpds5sxi.png', '2018-05-13 08:35:01', '2018-05-13 08:35:01', 1, NULL, NULL, 'products\\May2018\\bi7icbFyYXid7vtnDrZA.png', NULL, '1', 0),
(24, 'ШАЛНЫ ДУЛААЛГА', '<p>&nbsp;0,5mm зузаантай 1м-ийн үнэ 6000₮</p>', 'products\\May2018\\SC0qkB33uoxFrAs3EHdh.jpg', '2018-05-13 08:37:48', '2018-05-13 08:37:48', 1, 6000, '0,5mm зузаантай 1м-ийн үнэ 6000₮', 'products\\May2018\\e7cNUSnfuGcBriCU9OoL.jpg', NULL, '1', 0);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
CREATE TABLE IF NOT EXISTS `roles` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Administrator', '2018-05-04 22:53:55', '2018-05-04 22:53:55'),
(2, 'user', 'Normal User', '2018-05-04 22:53:55', '2018-05-04 22:53:55'),
(4, 'Manager', 'Manager', '2018-05-06 09:12:29', '2018-05-06 09:12:29');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
CREATE TABLE IF NOT EXISTS `settings` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `details` text COLLATE utf8mb4_unicode_ci,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `group` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `settings_key_unique` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES
(1, 'site.title', 'Site Title', 'Breeze', '', 'text', 1, 'Site'),
(2, 'site.description', 'Site Description', 'Барилгын материалын дэлгүүр', '', 'text', 2, 'Site'),
(3, 'site.logo', 'Site Logo', 'settings\\May2018\\uDvneccT0rKqRLiruYc8.png', '', 'image', 3, 'Site'),
(4, 'admin.google_analytics_tracking_id', 'Google Analytics Tracking ID', NULL, '', 'text', 4, 'Admin'),
(5, 'admin.bg_image', 'Admin Background Image', NULL, '', 'image', 5, 'Admin'),
(6, 'admin.title', 'Admin Title', 'Voyager', '', 'text', 1, 'Admin'),
(7, 'admin.description', 'Admin Description', 'Welcome to Voyager. The Missing Admin for Laravel', '', 'text', 2, 'Admin'),
(8, 'admin.loader', 'Admin Loader', NULL, '', 'image', 3, 'Admin'),
(9, 'admin.icon_image', 'Admin Icon Image', NULL, '', 'image', 4, 'Admin'),
(10, 'admin.google_analytics_client_id', 'Google Analytics Client ID (used for admin dashboard)', '297342841202-pr9uvbhppe5lp6hnb9qq0erebae6g654.apps.googleusercontent.com', '', 'text', 1, 'Admin'),
(12, 'additional.name', 'Name', 'Мэдкүү', NULL, 'text', 6, 'Additional');

-- --------------------------------------------------------

--
-- Table structure for table `translations`
--

DROP TABLE IF EXISTS `translations`;
CREATE TABLE IF NOT EXISTS `translations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `table_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `translations`
--

INSERT INTO `translations` (`id`, `table_name`, `column_name`, `foreign_key`, `locale`, `value`, `created_at`, `updated_at`) VALUES
(1, 'data_types', 'display_name_singular', 5, 'pt', 'Post', '2018-05-04 22:54:04', '2018-05-04 22:54:04'),
(2, 'data_types', 'display_name_singular', 6, 'pt', 'Página', '2018-05-04 22:54:04', '2018-05-04 22:54:04'),
(3, 'data_types', 'display_name_singular', 1, 'pt', 'Utilizador', '2018-05-04 22:54:04', '2018-05-04 22:54:04'),
(4, 'data_types', 'display_name_singular', 4, 'pt', 'Categoria', '2018-05-04 22:54:04', '2018-05-04 22:54:04'),
(5, 'data_types', 'display_name_singular', 2, 'pt', 'Menu', '2018-05-04 22:54:04', '2018-05-04 22:54:04'),
(6, 'data_types', 'display_name_singular', 3, 'pt', 'Função', '2018-05-04 22:54:04', '2018-05-04 22:54:04'),
(7, 'data_types', 'display_name_plural', 5, 'pt', 'Posts', '2018-05-04 22:54:04', '2018-05-04 22:54:04'),
(8, 'data_types', 'display_name_plural', 6, 'pt', 'Páginas', '2018-05-04 22:54:04', '2018-05-04 22:54:04'),
(9, 'data_types', 'display_name_plural', 1, 'pt', 'Utilizadores', '2018-05-04 22:54:04', '2018-05-04 22:54:04'),
(10, 'data_types', 'display_name_plural', 4, 'pt', 'Categorias', '2018-05-04 22:54:04', '2018-05-04 22:54:04'),
(11, 'data_types', 'display_name_plural', 2, 'pt', 'Menus', '2018-05-04 22:54:04', '2018-05-04 22:54:04'),
(12, 'data_types', 'display_name_plural', 3, 'pt', 'Funções', '2018-05-04 22:54:04', '2018-05-04 22:54:04'),
(13, 'categories', 'slug', 1, 'pt', 'categoria-1', '2018-05-04 22:54:04', '2018-05-04 22:54:04'),
(14, 'categories', 'name', 1, 'pt', 'Categoria 1', '2018-05-04 22:54:04', '2018-05-04 22:54:04'),
(15, 'categories', 'slug', 2, 'pt', 'categoria-2', '2018-05-04 22:54:04', '2018-05-04 22:54:04'),
(16, 'categories', 'name', 2, 'pt', 'Categoria 2', '2018-05-04 22:54:04', '2018-05-04 22:54:04'),
(17, 'pages', 'title', 1, 'pt', 'Olá Mundo', '2018-05-04 22:54:04', '2018-05-04 22:54:04'),
(18, 'pages', 'slug', 1, 'pt', 'ola-mundo', '2018-05-04 22:54:05', '2018-05-04 22:54:05'),
(19, 'pages', 'body', 1, 'pt', '<p>Olá Mundo. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\r\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', '2018-05-04 22:54:05', '2018-05-04 22:54:05'),
(20, 'menu_items', 'title', 1, 'pt', 'Painel de Controle', '2018-05-04 22:54:05', '2018-05-04 22:54:05'),
(21, 'menu_items', 'title', 2, 'pt', 'Media', '2018-05-04 22:54:05', '2018-05-04 22:54:05'),
(22, 'menu_items', 'title', 12, 'pt', 'Publicações', '2018-05-04 22:54:05', '2018-05-04 22:54:05'),
(23, 'menu_items', 'title', 3, 'pt', 'Utilizadores', '2018-05-04 22:54:05', '2018-05-04 22:54:05'),
(24, 'menu_items', 'title', 11, 'pt', 'Categorias', '2018-05-04 22:54:05', '2018-05-04 22:54:05'),
(25, 'menu_items', 'title', 13, 'pt', 'Páginas', '2018-05-04 22:54:05', '2018-05-04 22:54:05'),
(26, 'menu_items', 'title', 4, 'pt', 'Funções', '2018-05-04 22:54:05', '2018-05-04 22:54:05'),
(27, 'menu_items', 'title', 5, 'pt', 'Ferramentas', '2018-05-04 22:54:05', '2018-05-04 22:54:05'),
(28, 'menu_items', 'title', 6, 'pt', 'Menus', '2018-05-04 22:54:05', '2018-05-04 22:54:05'),
(29, 'menu_items', 'title', 7, 'pt', 'Base de dados', '2018-05-04 22:54:05', '2018-05-04 22:54:05'),
(30, 'menu_items', 'title', 10, 'pt', 'Configurações', '2018-05-04 22:54:05', '2018-05-04 22:54:05');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `role_id` int(10) UNSIGNED DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  KEY `users_role_id_foreign` (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `password`, `remember_token`, `settings`, `created_at`, `updated_at`) VALUES
(1, 1, 'Admin', 'admin@admin.com', 'users\\May2018\\EiwYks3BJUHBULPVRRfb.jpg', '$2y$10$k.EkEJnTqC4idDosGfiI2O0K3Yfh9zqJJefZ8Y8fIRMGW8KNDpm2e', 'TDjC3TCLNchECSqNv8qEjanQWHBZgbsNfyfS6ZuxLBrsEaZ1cX0S5svoFSeR', '{\"locale\":\"en\"}', '2018-05-04 22:54:02', '2018-05-05 02:50:21'),
(2, 4, 'Jani', 'b.jani93@yahoo.com', 'users/default.png', '$2y$10$jIbsT0Mfym7Md5iK8urftelPI1vZXgeHhuWyNUUrlux.GwF3Xq3E2', 'cSvdf06P6w1NlbgnbwGxXSn9XL12EcsrqLE9P7dU8EDgu28wUyv7EnhfG42L', '{\"locale\":\"en\"}', '2018-05-05 00:58:42', '2018-05-06 09:14:40'),
(3, 1, 'Jani', 'b.jani94@yahoo.com', 'users/default.png', '$2y$10$507QfF2jl.97hEUkAU9oIOJSr.qYiskB28TaJlk7B4pzyXp/mqWvK', NULL, '{\"locale\":\"en\"}', '2018-05-06 09:08:54', '2018-05-06 09:11:23');

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

DROP TABLE IF EXISTS `user_roles`;
CREATE TABLE IF NOT EXISTS `user_roles` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `user_roles_user_id_index` (`user_id`),
  KEY `user_roles_role_id_index` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

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
--
-- Database: `farm`
--
CREATE DATABASE IF NOT EXISTS `farm` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `farm`;

-- --------------------------------------------------------

--
-- Table structure for table `aguulah`
--

DROP TABLE IF EXISTS `aguulah`;
CREATE TABLE IF NOT EXISTS `aguulah` (
  `aguulah_id` int(11) NOT NULL AUTO_INCREMENT,
  `baraa_id` int(11) NOT NULL,
  `too` int(11) NOT NULL,
  `baraa_irsen_vne` double NOT NULL,
  `aguulah_vldegdel_now` int(11) NOT NULL,
  `baraa_zarah_vne` double NOT NULL,
  `irsen_ognoo` date NOT NULL,
  PRIMARY KEY (`aguulah_id`),
  UNIQUE KEY `baraa_id_2` (`baraa_id`),
  KEY `baraa_id` (`baraa_id`)
) ENGINE=InnoDB AUTO_INCREMENT=138 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `aguulah`
--

INSERT INTO `aguulah` (`aguulah_id`, `baraa_id`, `too`, `baraa_irsen_vne`, `aguulah_vldegdel_now`, `baraa_zarah_vne`, `irsen_ognoo`) VALUES
(137, 93, 23, 450, 23, 470, '2018-04-24');

-- --------------------------------------------------------

--
-- Table structure for table `ajiltan`
--

DROP TABLE IF EXISTS `ajiltan`;
CREATE TABLE IF NOT EXISTS `ajiltan` (
  `ajiltan_id` int(11) NOT NULL AUTO_INCREMENT,
  `ajiltan_lastname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ajiltan_firstname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ajiltan_phone` int(11) NOT NULL,
  `ajiltan_address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ajiltan_birth` date NOT NULL,
  `ajiltan_gender` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ajiltan_torol` int(11) NOT NULL,
  `visibled` int(11) NOT NULL,
  PRIMARY KEY (`ajiltan_id`),
  KEY `ajiltan_torol` (`ajiltan_torol`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `ajiltan`
--

INSERT INTO `ajiltan` (`ajiltan_id`, `ajiltan_lastname`, `ajiltan_firstname`, `ajiltan_phone`, `ajiltan_address`, `ajiltan_birth`, `ajiltan_gender`, `ajiltan_torol`, `visibled`) VALUES
(3, 'Admin', 'Admin', 95954472, 'bgd', '2017-05-01', 'эрэгтэй', 1, 0),
(11, 'Болдбаатар', 'Энхбаяр ', 88602411, '19-р хороолол', '0000-00-00', 'Эрэгтэй', 1, 1),
(13, 'Sukhbaatar', 'huslen', 95954472, 'bgd', '2018-04-19', 'Эрэгтэй', 4, 0),
(14, 'Hh', 'Test', 9846, 'Hkd', '2018-04-03', 'Эрэгтэй', 4, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ajiltan_torol`
--

DROP TABLE IF EXISTS `ajiltan_torol`;
CREATE TABLE IF NOT EXISTS `ajiltan_torol` (
  `ajiltan_torol_id` int(11) NOT NULL AUTO_INCREMENT,
  `ajiltan_torol_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `visibled` int(11) NOT NULL,
  PRIMARY KEY (`ajiltan_torol_id`),
  UNIQUE KEY `ajiltan_torol_name` (`ajiltan_torol_name`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `ajiltan_torol`
--

INSERT INTO `ajiltan_torol` (`ajiltan_torol_id`, `ajiltan_torol_name`, `visibled`) VALUES
(1, 'Захирал', 0),
(4, 'Малчин', 0);

-- --------------------------------------------------------

--
-- Table structure for table `baraa`
--

DROP TABLE IF EXISTS `baraa`;
CREATE TABLE IF NOT EXISTS `baraa` (
  `baraa_id` int(11) NOT NULL AUTO_INCREMENT,
  `barcode` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `baraa_torol_id` int(11) NOT NULL,
  `brand_id` int(11) NOT NULL,
  `niilvvlegch_id` int(11) NOT NULL,
  `tailbar` text COLLATE utf8_unicode_ci,
  `cyl` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sph` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `visibled` int(11) NOT NULL,
  PRIMARY KEY (`baraa_id`),
  UNIQUE KEY `barcode` (`barcode`),
  KEY `baraa_torol_id` (`baraa_torol_id`),
  KEY `brand_id` (`brand_id`),
  KEY `niilvvlegch_id` (`niilvvlegch_id`)
) ENGINE=InnoDB AUTO_INCREMENT=98 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `baraa`
--

INSERT INTO `baraa` (`baraa_id`, `barcode`, `baraa_torol_id`, `brand_id`, `niilvvlegch_id`, `tailbar`, `cyl`, `sph`, `visibled`) VALUES
(91, '22', 15, 39, 13, 'gg', NULL, NULL, 1),
(92, '33', 15, 39, 13, '22', NULL, NULL, 1),
(93, '1', 15, 39, 13, 'test123', NULL, NULL, 1),
(94, '495', 15, 39, 13, 'tettt', NULL, NULL, 1),
(95, '2', 16, 39, 13, 'aduu udahgu zaragdah', NULL, NULL, 0),
(97, '889', 15, 39, 13, 'hhhg', NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `baraa_butsaalt`
--

DROP TABLE IF EXISTS `baraa_butsaalt`;
CREATE TABLE IF NOT EXISTS `baraa_butsaalt` (
  `butsaalt_id` int(11) NOT NULL AUTO_INCREMENT,
  `bor_id` int(11) NOT NULL,
  `huw_id` int(11) NOT NULL,
  `too` int(11) NOT NULL,
  `ognoo` date NOT NULL,
  `hudaldsan_ognoo` date NOT NULL,
  `check_status` int(11) NOT NULL,
  PRIMARY KEY (`butsaalt_id`),
  KEY `huw_id` (`huw_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `baraa_huwiarlalt`
--

DROP TABLE IF EXISTS `baraa_huwiarlalt`;
CREATE TABLE IF NOT EXISTS `baraa_huwiarlalt` (
  `huw_id` int(11) NOT NULL AUTO_INCREMENT,
  `salbar_id` int(11) NOT NULL,
  `aguulah_id` int(11) NOT NULL,
  `too` int(11) NOT NULL,
  `salbar_vldegdel_now` int(11) NOT NULL,
  `huwiarlasan_ognoo` date NOT NULL,
  PRIMARY KEY (`huw_id`),
  KEY `salbar_id` (`salbar_id`),
  KEY `aguulah_id` (`aguulah_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `baraa_torol`
--

DROP TABLE IF EXISTS `baraa_torol`;
CREATE TABLE IF NOT EXISTS `baraa_torol` (
  `baraa_torol_id` int(11) NOT NULL AUTO_INCREMENT,
  `baraa_torol_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `visibled` int(11) NOT NULL,
  PRIMARY KEY (`baraa_torol_id`),
  UNIQUE KEY `baraa_torol_name` (`baraa_torol_name`),
  KEY `baraa_torol_id` (`baraa_torol_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `baraa_torol`
--

INSERT INTO `baraa_torol` (`baraa_torol_id`, `baraa_torol_name`, `visibled`) VALUES
(15, 'Сэлэнгэ үүлдэр', 0),
(16, 'Aduu', 0);

-- --------------------------------------------------------

--
-- Table structure for table `baraa_zarah_vne`
--

DROP TABLE IF EXISTS `baraa_zarah_vne`;
CREATE TABLE IF NOT EXISTS `baraa_zarah_vne` (
  `baraa_vne_id` int(11) NOT NULL AUTO_INCREMENT,
  `baraa_id` int(11) NOT NULL,
  `baraa_negj_vne` double NOT NULL,
  PRIMARY KEY (`baraa_vne_id`),
  KEY `baraa_id` (`baraa_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `borluulalt`
--

DROP TABLE IF EXISTS `borluulalt`;
CREATE TABLE IF NOT EXISTS `borluulalt` (
  `borluulalt_id` int(11) NOT NULL AUTO_INCREMENT,
  `newtreh_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `huw_id` int(11) NOT NULL,
  `check_id` int(11) DEFAULT NULL,
  `too` int(11) NOT NULL,
  `zarsan_vne` double NOT NULL,
  `niit_vne` double NOT NULL,
  `noat` int(11) NOT NULL COMMENT '0=нөатгүй , 1= нөаттэй',
  `ognoo` date NOT NULL,
  `hash` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`borluulalt_id`),
  KEY `newtreh_id` (`newtreh_id`),
  KEY `user_id` (`user_id`),
  KEY `huw_id` (`huw_id`),
  KEY `check_id` (`check_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `borluulalt_temp`
--

DROP TABLE IF EXISTS `borluulalt_temp`;
CREATE TABLE IF NOT EXISTS `borluulalt_temp` (
  `temp_id` int(11) NOT NULL AUTO_INCREMENT,
  `newtreh_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `huw_id` int(11) NOT NULL,
  `check_id` int(11) DEFAULT NULL,
  `too` int(11) NOT NULL,
  `zarsan_vne` double NOT NULL,
  `niit_vne` double NOT NULL,
  `ognoo` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`temp_id`),
  KEY `newtreh_id` (`newtreh_id`),
  KEY `check_id` (`check_id`),
  KEY `huw_id` (`huw_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `brand_type`
--

DROP TABLE IF EXISTS `brand_type`;
CREATE TABLE IF NOT EXISTS `brand_type` (
  `brand_id` int(11) NOT NULL AUTO_INCREMENT,
  `brand_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `visibled` int(11) NOT NULL,
  PRIMARY KEY (`brand_id`),
  UNIQUE KEY `brand_name` (`brand_name`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `brand_type`
--

INSERT INTO `brand_type` (`brand_id`, `brand_name`, `visibled`) VALUES
(39, 'mongol selenge uulder', 0);

-- --------------------------------------------------------

--
-- Table structure for table `check_hymdral`
--

DROP TABLE IF EXISTS `check_hymdral`;
CREATE TABLE IF NOT EXISTS `check_hymdral` (
  `chk_id` int(11) NOT NULL AUTO_INCREMENT,
  `huw_id` int(11) NOT NULL,
  `uramshuulal_id` int(11) DEFAULT NULL,
  `e_ognoo` date NOT NULL,
  `d_ognoo` date NOT NULL,
  `check_status` int(11) NOT NULL COMMENT '0-end , 1-now hymdraltai',
  PRIMARY KEY (`chk_id`),
  KEY `huw_id` (`huw_id`),
  KEY `uramshuulal_id` (`uramshuulal_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `haraa_info`
--

DROP TABLE IF EXISTS `haraa_info`;
CREATE TABLE IF NOT EXISTS `haraa_info` (
  `haraa_id` int(11) NOT NULL AUTO_INCREMENT,
  `PD_R` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `PD_L` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `SPH_R` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `SPH_L` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `CYL_R` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `CYL_L` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `AXIS_R` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `AXIS_L` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `newtreh_id` int(11) NOT NULL,
  PRIMARY KEY (`haraa_id`),
  KEY `newtreh_id` (`newtreh_id`),
  KEY `newtreh_id_2` (`newtreh_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `niilvvlegch`
--

DROP TABLE IF EXISTS `niilvvlegch`;
CREATE TABLE IF NOT EXISTS `niilvvlegch` (
  `niilvvlegch_id` int(11) NOT NULL AUTO_INCREMENT,
  `niilvvlegch_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `niilvvlegch_phone` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `niilvvlegch_add` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `visibled` int(11) NOT NULL,
  PRIMARY KEY (`niilvvlegch_id`),
  UNIQUE KEY `niilvvlegch_name` (`niilvvlegch_name`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `niilvvlegch`
--

INSERT INTO `niilvvlegch` (`niilvvlegch_id`, `niilvvlegch_name`, `niilvvlegch_phone`, `niilvvlegch_add`, `visibled`) VALUES
(13, 'Japan', '95954472', 'Japan', 0);

-- --------------------------------------------------------

--
-- Table structure for table `salbar_medeelel`
--

DROP TABLE IF EXISTS `salbar_medeelel`;
CREATE TABLE IF NOT EXISTS `salbar_medeelel` (
  `salbar_id` int(11) NOT NULL AUTO_INCREMENT,
  `salbar_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `salbar_address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `salbar_phone` int(11) NOT NULL,
  `visibled` int(11) NOT NULL,
  PRIMARY KEY (`salbar_id`),
  UNIQUE KEY `salbar_name` (`salbar_name`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `salbar_medeelel`
--

INSERT INTO `salbar_medeelel` (`salbar_id`, `salbar_name`, `salbar_address`, `salbar_phone`, `visibled`) VALUES
(6, 'Farm1', 'Farm1', 95954472, 0);

-- --------------------------------------------------------

--
-- Table structure for table `salbar_newtreh`
--

DROP TABLE IF EXISTS `salbar_newtreh`;
CREATE TABLE IF NOT EXISTS `salbar_newtreh` (
  `newtreh_id` int(11) NOT NULL AUTO_INCREMENT,
  `ajiltan_id` int(11) NOT NULL,
  `salbar_id` int(11) NOT NULL,
  `newtreh_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `newtreh_pass` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `visibled` int(11) NOT NULL,
  PRIMARY KEY (`newtreh_id`),
  KEY `ajiltan_id` (`ajiltan_id`),
  KEY `salbar_id` (`salbar_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `salbar_newtreh`
--

INSERT INTO `salbar_newtreh` (`newtreh_id`, `ajiltan_id`, `salbar_id`, `newtreh_name`, `newtreh_pass`, `type`, `visibled`) VALUES
(3, 3, 6, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'admin', 0),
(11, 13, 6, 'khuslen', '594205b95a62a96deee77f951ae3c1a8', '', 0),
(12, 14, 6, 'Test', '098f6bcd4621d373cade4e832627b4f6', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `toollogo`
--

DROP TABLE IF EXISTS `toollogo`;
CREATE TABLE IF NOT EXISTS `toollogo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `salbar_id` int(11) NOT NULL,
  `baraa_id` int(11) NOT NULL,
  `toolson` int(11) NOT NULL,
  `ognoo` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `uramshuulal`
--

DROP TABLE IF EXISTS `uramshuulal`;
CREATE TABLE IF NOT EXISTS `uramshuulal` (
  `uramshuulal_id` int(11) NOT NULL AUTO_INCREMENT,
  `ehleh_ognoo` date NOT NULL,
  `duusah_ognoo` date NOT NULL,
  `uramshuulal_dvn` int(11) NOT NULL,
  `tailbar` text COLLATE utf8_unicode_ci NOT NULL,
  `salbar_m_id` int(11) NOT NULL,
  `brand_id` int(11) DEFAULT NULL,
  `baraa_t_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`uramshuulal_id`),
  KEY `salbar_m_id` (`salbar_m_id`,`baraa_t_id`,`brand_id`),
  KEY `baraa_t_id` (`baraa_t_id`),
  KEY `brand_id` (`brand_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `ic` bigint(11) NOT NULL,
  `lastname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `firstname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `birthdate` date NOT NULL,
  `phone` int(11) NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `gender` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tailbar` text COLLATE utf8_unicode_ci NOT NULL,
  `haraa_check` int(1) NOT NULL COMMENT '0=no,1=yes',
  `visibled` int(11) NOT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `phone` (`phone`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `ic` (`ic`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_haraa_history`
--

DROP TABLE IF EXISTS `user_haraa_history`;
CREATE TABLE IF NOT EXISTS `user_haraa_history` (
  `history_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `haraa_id` int(11) NOT NULL,
  `ognoo` date NOT NULL,
  PRIMARY KEY (`history_id`),
  KEY `user_id` (`user_id`),
  KEY `haraa_id` (`haraa_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `zarlaga`
--

DROP TABLE IF EXISTS `zarlaga`;
CREATE TABLE IF NOT EXISTS `zarlaga` (
  `zid` int(11) NOT NULL AUTO_INCREMENT,
  `utga` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `zarlaga_type_id` int(11) NOT NULL,
  `salbar_id` int(11) NOT NULL,
  `ajilchin_id` int(11) DEFAULT NULL,
  `mongon_dvn` double NOT NULL,
  `tailbar` text COLLATE utf8_unicode_ci NOT NULL,
  `ognoo` date NOT NULL,
  `zarlaga_status` int(11) NOT NULL COMMENT '1 -төлөвлөгөөт',
  PRIMARY KEY (`zid`),
  KEY `ajilchin_id` (`ajilchin_id`),
  KEY `salbar_id` (`salbar_id`),
  KEY `ajilchin_id_2` (`ajilchin_id`),
  KEY `ajilchin_id_3` (`ajilchin_id`),
  KEY `zarlaga_type_id` (`zarlaga_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `zarlaga_type`
--

DROP TABLE IF EXISTS `zarlaga_type`;
CREATE TABLE IF NOT EXISTS `zarlaga_type` (
  `zarlaga_type_id` int(11) NOT NULL AUTO_INCREMENT,
  `zarlaga_type_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `visibled` int(11) NOT NULL,
  PRIMARY KEY (`zarlaga_type_id`),
  UNIQUE KEY `zarlaga_type_name` (`zarlaga_type_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `aguulah`
--
ALTER TABLE `aguulah`
  ADD CONSTRAINT `aguulah_ibfk_1` FOREIGN KEY (`baraa_id`) REFERENCES `baraa` (`baraa_id`) ON DELETE CASCADE;

--
-- Constraints for table `baraa`
--
ALTER TABLE `baraa`
  ADD CONSTRAINT `baraa_ibfk_1` FOREIGN KEY (`baraa_torol_id`) REFERENCES `baraa_torol` (`baraa_torol_id`),
  ADD CONSTRAINT `baraa_ibfk_2` FOREIGN KEY (`brand_id`) REFERENCES `brand_type` (`brand_id`),
  ADD CONSTRAINT `baraa_ibfk_3` FOREIGN KEY (`niilvvlegch_id`) REFERENCES `niilvvlegch` (`niilvvlegch_id`);

--
-- Constraints for table `baraa_butsaalt`
--
ALTER TABLE `baraa_butsaalt`
  ADD CONSTRAINT `baraa_butsaalt_ibfk_1` FOREIGN KEY (`huw_id`) REFERENCES `baraa_huwiarlalt` (`huw_id`);

--
-- Constraints for table `baraa_huwiarlalt`
--
ALTER TABLE `baraa_huwiarlalt`
  ADD CONSTRAINT `baraa_huwiarlalt_ibfk_1` FOREIGN KEY (`salbar_id`) REFERENCES `salbar_medeelel` (`salbar_id`),
  ADD CONSTRAINT `baraa_huwiarlalt_ibfk_2` FOREIGN KEY (`aguulah_id`) REFERENCES `aguulah` (`aguulah_id`);

--
-- Constraints for table `borluulalt`
--
ALTER TABLE `borluulalt`
  ADD CONSTRAINT `borluulalt_ibfk_1` FOREIGN KEY (`newtreh_id`) REFERENCES `salbar_newtreh` (`newtreh_id`),
  ADD CONSTRAINT `borluulalt_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`),
  ADD CONSTRAINT `borluulalt_ibfk_3` FOREIGN KEY (`huw_id`) REFERENCES `baraa_huwiarlalt` (`huw_id`),
  ADD CONSTRAINT `borluulalt_ibfk_4` FOREIGN KEY (`check_id`) REFERENCES `check_hymdral` (`chk_id`);

--
-- Constraints for table `borluulalt_temp`
--
ALTER TABLE `borluulalt_temp`
  ADD CONSTRAINT `borluulalt_temp_ibfk_1` FOREIGN KEY (`newtreh_id`) REFERENCES `salbar_newtreh` (`newtreh_id`),
  ADD CONSTRAINT `borluulalt_temp_ibfk_4` FOREIGN KEY (`huw_id`) REFERENCES `baraa_huwiarlalt` (`huw_id`),
  ADD CONSTRAINT `borluulalt_temp_ibfk_5` FOREIGN KEY (`check_id`) REFERENCES `check_hymdral` (`chk_id`),
  ADD CONSTRAINT `borluulalt_temp_ibfk_6` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`);

--
-- Constraints for table `check_hymdral`
--
ALTER TABLE `check_hymdral`
  ADD CONSTRAINT `check_hymdral_ibfk_1` FOREIGN KEY (`huw_id`) REFERENCES `baraa_huwiarlalt` (`huw_id`),
  ADD CONSTRAINT `check_hymdral_ibfk_2` FOREIGN KEY (`uramshuulal_id`) REFERENCES `uramshuulal` (`uramshuulal_id`);

--
-- Constraints for table `haraa_info`
--
ALTER TABLE `haraa_info`
  ADD CONSTRAINT `haraa_info_ibfk_1` FOREIGN KEY (`newtreh_id`) REFERENCES `salbar_newtreh` (`newtreh_id`);

--
-- Constraints for table `salbar_newtreh`
--
ALTER TABLE `salbar_newtreh`
  ADD CONSTRAINT `salbar_newtreh_ibfk_1` FOREIGN KEY (`ajiltan_id`) REFERENCES `ajiltan` (`ajiltan_id`),
  ADD CONSTRAINT `salbar_newtreh_ibfk_2` FOREIGN KEY (`salbar_id`) REFERENCES `salbar_medeelel` (`salbar_id`);

--
-- Constraints for table `uramshuulal`
--
ALTER TABLE `uramshuulal`
  ADD CONSTRAINT `uramshuulal_ibfk_1` FOREIGN KEY (`baraa_t_id`) REFERENCES `baraa_torol` (`baraa_torol_id`),
  ADD CONSTRAINT `uramshuulal_ibfk_2` FOREIGN KEY (`brand_id`) REFERENCES `brand_type` (`brand_id`),
  ADD CONSTRAINT `uramshuulal_ibfk_3` FOREIGN KEY (`salbar_m_id`) REFERENCES `salbar_medeelel` (`salbar_id`);

--
-- Constraints for table `user_haraa_history`
--
ALTER TABLE `user_haraa_history`
  ADD CONSTRAINT `user_haraa_history_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`),
  ADD CONSTRAINT `user_haraa_history_ibfk_2` FOREIGN KEY (`haraa_id`) REFERENCES `haraa_info` (`haraa_id`);

--
-- Constraints for table `zarlaga`
--
ALTER TABLE `zarlaga`
  ADD CONSTRAINT `zarlaga_ibfk_1` FOREIGN KEY (`zarlaga_type_id`) REFERENCES `zarlaga_type` (`zarlaga_type_id`),
  ADD CONSTRAINT `zarlaga_ibfk_2` FOREIGN KEY (`salbar_id`) REFERENCES `salbar_medeelel` (`salbar_id`),
  ADD CONSTRAINT `zarlaga_ibfk_3` FOREIGN KEY (`ajilchin_id`) REFERENCES `ajiltan` (`ajiltan_id`);
--
-- Database: `lsapp`
--
CREATE DATABASE IF NOT EXISTS `lsapp` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `lsapp`;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2018_03_22_114535_create_posts_table', 1),
(4, '2018_04_04_094338_create_room_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
CREATE TABLE IF NOT EXISTS `posts` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `body`, `created_at`, `updated_at`) VALUES
(1, 'Post One', 'this is post body', '2018-03-23 00:55:51', '2018-03-23 00:55:51'),
(2, 'Post two', 'this is post body 2', '2018-03-23 01:02:43', '2018-03-23 01:02:43');

-- --------------------------------------------------------

--
-- Table structure for table `rooms`
--

DROP TABLE IF EXISTS `rooms`;
CREATE TABLE IF NOT EXISTS `rooms` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `placename` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `user1_id` int(11) NOT NULL,
  `user2_id` int(11) NOT NULL,
  `status_paid` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `rooms`
--

INSERT INTO `rooms` (`id`, `placename`, `price`, `user1_id`, `user2_id`, `status_paid`, `created_at`, `updated_at`) VALUES
(20, 'shangrilla', 500, 0, 0, 0, '2018-04-11 18:39:32', '2018-04-11 18:39:32'),
(19, 'Room2', 100000, 0, 0, 0, '2018-04-11 18:32:11', '2018-04-11 18:32:11'),
(18, 'room1', 2555, 0, 0, 0, '2018-04-11 18:01:07', '2018-04-11 18:01:07'),
(17, 'Imax', 25000, 0, 0, 0, '2018-04-04 20:03:09', '2018-04-04 20:03:09'),
(16, 'Shangrilla', 5000, 0, 0, 0, '2018-04-04 19:47:55', '2018-04-04 19:47:55');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'breeze', 'b.jani93@yahoo.com', '$2y$10$oAlZjamvQ9jSrxkS7Fbud.EgNwoJuCqgUSuL.FBXvi3n67Jjj5rxm', 'ERJCVLRYuxMVYxczyQuJSpInu0dqv1SUFxGRotyaWHtTpRGSCBi7RIyv9o3D', '2018-04-11 20:32:47', '2018-04-11 20:32:47');
--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
--
-- Database: `vueapp`
--
CREATE DATABASE IF NOT EXISTS `vueapp` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `vueapp`;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `categories_slug_unique` (`slug`),
  KEY `categories_parent_id_foreign` (`parent_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `parent_id`, `order`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, NULL, 1, 'Category 1', 'category-1', '2018-05-26 23:55:00', '2018-05-26 23:55:00'),
(2, NULL, 1, 'Category 2', 'category-2', '2018-05-26 23:55:00', '2018-05-26 23:55:00');

-- --------------------------------------------------------

--
-- Table structure for table `data_rows`
--

DROP TABLE IF EXISTS `data_rows`;
CREATE TABLE IF NOT EXISTS `data_rows` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
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
  `details` text COLLATE utf8mb4_unicode_ci,
  `order` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `data_rows_data_type_id_foreign` (`data_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `data_rows`
--

INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES
(1, 1, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, '', 1),
(2, 1, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '', 2),
(3, 1, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, '', 3),
(4, 1, 'password', 'password', 'Password', 1, 0, 0, 1, 1, 0, '', 4),
(5, 1, 'remember_token', 'text', 'Remember Token', 0, 0, 0, 0, 0, 0, '', 5),
(6, 1, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, '', 6),
(7, 1, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '', 7),
(8, 1, 'avatar', 'image', 'Avatar', 0, 1, 1, 1, 1, 1, '', 8),
(9, 1, 'user_belongsto_role_relationship', 'relationship', 'Role', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":\"0\"}', 10),
(10, 1, 'user_belongstomany_role_relationship', 'relationship', 'Roles', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}', 11),
(11, 1, 'locale', 'text', 'Locale', 0, 1, 1, 1, 1, 0, '', 12),
(12, 1, 'settings', 'hidden', 'Settings', 0, 0, 0, 0, 0, 0, '', 12),
(13, 2, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, '', 1),
(14, 2, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '', 2),
(15, 2, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '', 3),
(16, 2, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '', 4),
(17, 3, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, '', 1),
(18, 3, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '', 2),
(19, 3, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '', 3),
(20, 3, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '', 4),
(21, 3, 'display_name', 'text', 'Display Name', 1, 1, 1, 1, 1, 1, '', 5),
(22, 1, 'role_id', 'text', 'Role', 1, 1, 1, 1, 1, 1, '', 9),
(23, 4, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, '', 1),
(24, 4, 'parent_id', 'select_dropdown', 'Parent', 0, 0, 1, 1, 1, 1, '{\"default\":\"\",\"null\":\"\",\"options\":{\"\":\"-- None --\"},\"relationship\":{\"key\":\"id\",\"label\":\"name\"}}', 2),
(25, 4, 'order', 'text', 'Order', 1, 1, 1, 1, 1, 1, '{\"default\":1}', 3),
(26, 4, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '', 4),
(27, 4, 'slug', 'text', 'Slug', 1, 1, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"name\"}}', 5),
(28, 4, 'created_at', 'timestamp', 'Created At', 0, 0, 1, 0, 0, 0, '', 6),
(29, 4, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '', 7),
(30, 5, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, '', 1),
(31, 5, 'author_id', 'text', 'Author', 1, 0, 1, 1, 0, 1, '', 2),
(32, 5, 'category_id', 'text', 'Category', 1, 0, 1, 1, 1, 0, '', 3),
(33, 5, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, '', 4),
(34, 5, 'excerpt', 'text_area', 'Excerpt', 1, 0, 1, 1, 1, 1, '', 5),
(35, 5, 'body', 'rich_text_box', 'Body', 1, 0, 1, 1, 1, 1, '', 6),
(36, 5, 'image', 'image', 'Post Image', 0, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"1000\",\"height\":\"null\"},\"quality\":\"70%\",\"upsize\":true,\"thumbnails\":[{\"name\":\"medium\",\"scale\":\"50%\"},{\"name\":\"small\",\"scale\":\"25%\"},{\"name\":\"cropped\",\"crop\":{\"width\":\"300\",\"height\":\"250\"}}]}', 7),
(37, 5, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\",\"forceUpdate\":true},\"validation\":{\"rule\":\"unique:posts,slug\"}}', 8),
(38, 5, 'meta_description', 'text_area', 'Meta Description', 1, 0, 1, 1, 1, 1, '', 9),
(39, 5, 'meta_keywords', 'text_area', 'Meta Keywords', 1, 0, 1, 1, 1, 1, '', 10),
(40, 5, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"DRAFT\",\"options\":{\"PUBLISHED\":\"published\",\"DRAFT\":\"draft\",\"PENDING\":\"pending\"}}', 11),
(41, 5, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, '', 12),
(42, 5, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '', 13),
(43, 5, 'seo_title', 'text', 'SEO Title', 0, 1, 1, 1, 1, 1, '', 14),
(44, 5, 'featured', 'checkbox', 'Featured', 1, 1, 1, 1, 1, 1, '', 15),
(45, 6, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, '', 1),
(46, 6, 'author_id', 'text', 'Author', 1, 0, 0, 0, 0, 0, '', 2),
(47, 6, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, '', 3),
(48, 6, 'excerpt', 'text_area', 'Excerpt', 1, 0, 1, 1, 1, 1, '', 4),
(49, 6, 'body', 'rich_text_box', 'Body', 1, 0, 1, 1, 1, 1, '', 5),
(50, 6, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\"},\"validation\":{\"rule\":\"unique:pages,slug\"}}', 6),
(51, 6, 'meta_description', 'text', 'Meta Description', 1, 0, 1, 1, 1, 1, '', 7),
(52, 6, 'meta_keywords', 'text', 'Meta Keywords', 1, 0, 1, 1, 1, 1, '', 8),
(53, 6, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"INACTIVE\",\"options\":{\"INACTIVE\":\"INACTIVE\",\"ACTIVE\":\"ACTIVE\"}}', 9),
(54, 6, 'created_at', 'timestamp', 'Created At', 1, 1, 1, 0, 0, 0, '', 10),
(55, 6, 'updated_at', 'timestamp', 'Updated At', 1, 0, 0, 0, 0, 0, '', 11),
(56, 6, 'image', 'image', 'Page Image', 0, 1, 1, 1, 1, 1, '', 12);

-- --------------------------------------------------------

--
-- Table structure for table `data_types`
--

DROP TABLE IF EXISTS `data_types`;
CREATE TABLE IF NOT EXISTS `data_types` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT '0',
  `server_side` tinyint(4) NOT NULL DEFAULT '0',
  `details` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `data_types_name_unique` (`name`),
  UNIQUE KEY `data_types_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `data_types`
--

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `details`, `created_at`, `updated_at`) VALUES
(1, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', '', '', 1, 0, NULL, '2018-05-26 23:54:44', '2018-05-26 23:54:44'),
(2, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, NULL, '2018-05-26 23:54:44', '2018-05-26 23:54:44'),
(3, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, '', '', 1, 0, NULL, '2018-05-26 23:54:44', '2018-05-26 23:54:44'),
(4, 'categories', 'categories', 'Category', 'Categories', 'voyager-categories', 'TCG\\Voyager\\Models\\Category', NULL, '', '', 1, 0, NULL, '2018-05-26 23:54:58', '2018-05-26 23:54:58'),
(5, 'posts', 'posts', 'Post', 'Posts', 'voyager-news', 'TCG\\Voyager\\Models\\Post', 'TCG\\Voyager\\Policies\\PostPolicy', '', '', 1, 0, NULL, '2018-05-26 23:55:01', '2018-05-26 23:55:01'),
(6, 'pages', 'pages', 'Page', 'Pages', 'voyager-file-text', 'TCG\\Voyager\\Models\\Page', NULL, '', '', 1, 0, NULL, '2018-05-26 23:55:03', '2018-05-26 23:55:03');

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

DROP TABLE IF EXISTS `menus`;
CREATE TABLE IF NOT EXISTS `menus` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `menus_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2018-05-26 23:54:46', '2018-05-26 23:54:46');

-- --------------------------------------------------------

--
-- Table structure for table `menu_items`
--

DROP TABLE IF EXISTS `menu_items`;
CREATE TABLE IF NOT EXISTS `menu_items` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
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
  `parameters` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `menu_items_menu_id_foreign` (`menu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
(1, 1, 'Dashboard', '', '_self', 'voyager-boat', NULL, NULL, 1, '2018-05-26 23:54:46', '2018-05-26 23:54:46', 'voyager.dashboard', NULL),
(2, 1, 'Media', '', '_self', 'voyager-images', NULL, NULL, 5, '2018-05-26 23:54:46', '2018-05-26 23:54:46', 'voyager.media.index', NULL),
(3, 1, 'Users', '', '_self', 'voyager-person', NULL, NULL, 3, '2018-05-26 23:54:46', '2018-05-26 23:54:46', 'voyager.users.index', NULL),
(4, 1, 'Roles', '', '_self', 'voyager-lock', NULL, NULL, 2, '2018-05-26 23:54:46', '2018-05-26 23:54:46', 'voyager.roles.index', NULL),
(5, 1, 'Tools', '', '_self', 'voyager-tools', NULL, NULL, 9, '2018-05-26 23:54:46', '2018-05-26 23:54:46', NULL, NULL),
(6, 1, 'Menu Builder', '', '_self', 'voyager-list', NULL, 5, 10, '2018-05-26 23:54:46', '2018-05-26 23:54:46', 'voyager.menus.index', NULL),
(7, 1, 'Database', '', '_self', 'voyager-data', NULL, 5, 11, '2018-05-26 23:54:46', '2018-05-26 23:54:46', 'voyager.database.index', NULL),
(8, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 5, 12, '2018-05-26 23:54:46', '2018-05-26 23:54:46', 'voyager.compass.index', NULL),
(9, 1, 'BREAD', '', '_self', 'voyager-bread', NULL, 5, 13, '2018-05-26 23:54:46', '2018-05-26 23:54:46', 'voyager.bread.index', NULL),
(10, 1, 'Settings', '', '_self', 'voyager-settings', NULL, NULL, 14, '2018-05-26 23:54:46', '2018-05-26 23:54:46', 'voyager.settings.index', NULL),
(11, 1, 'Categories', '', '_self', 'voyager-categories', NULL, NULL, 8, '2018-05-26 23:54:59', '2018-05-26 23:54:59', 'voyager.categories.index', NULL),
(12, 1, 'Posts', '', '_self', 'voyager-news', NULL, NULL, 6, '2018-05-26 23:55:02', '2018-05-26 23:55:02', 'voyager.posts.index', NULL),
(13, 1, 'Pages', '', '_self', 'voyager-file-text', NULL, NULL, 7, '2018-05-26 23:55:04', '2018-05-26 23:55:04', 'voyager.pages.index', NULL),
(14, 1, 'Hooks', '', '_self', 'voyager-hook', NULL, 5, 13, '2018-05-26 23:55:09', '2018-05-26 23:55:09', 'voyager.hooks', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

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
(23, '2016_01_01_000000_create_pages_table', 2),
(24, '2016_01_01_000000_create_posts_table', 2),
(25, '2016_02_15_204651_create_categories_table', 2),
(26, '2017_04_11_000000_alter_post_nullable_fields_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

DROP TABLE IF EXISTS `pages`;
CREATE TABLE IF NOT EXISTS `pages` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `author_id` int(11) NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci,
  `body` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `status` enum('ACTIVE','INACTIVE') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'INACTIVE',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `pages_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `author_id`, `title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `created_at`, `updated_at`) VALUES
(1, 0, 'Hello World', 'Hang the jib grog grog blossom grapple dance the hempen jig gangway pressgang bilge rat to go on account lugger. Nelsons folly gabion line draught scallywag fire ship gaff fluke fathom case shot. Sea Legs bilge rat sloop matey gabion long clothes run a shot across the bow Gold Road cog league.', '<p>Hello World. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', 'pages/page1.jpg', 'hello-world', 'Yar Meta Description', 'Keyword1, Keyword2', 'ACTIVE', '2018-05-26 23:55:04', '2018-05-26 23:55:04');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

DROP TABLE IF EXISTS `permissions`;
CREATE TABLE IF NOT EXISTS `permissions` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `permissions_key_index` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES
(1, 'browse_admin', NULL, '2018-05-26 23:54:47', '2018-05-26 23:54:47'),
(2, 'browse_bread', NULL, '2018-05-26 23:54:47', '2018-05-26 23:54:47'),
(3, 'browse_database', NULL, '2018-05-26 23:54:47', '2018-05-26 23:54:47'),
(4, 'browse_media', NULL, '2018-05-26 23:54:47', '2018-05-26 23:54:47'),
(5, 'browse_compass', NULL, '2018-05-26 23:54:47', '2018-05-26 23:54:47'),
(6, 'browse_menus', 'menus', '2018-05-26 23:54:47', '2018-05-26 23:54:47'),
(7, 'read_menus', 'menus', '2018-05-26 23:54:47', '2018-05-26 23:54:47'),
(8, 'edit_menus', 'menus', '2018-05-26 23:54:47', '2018-05-26 23:54:47'),
(9, 'add_menus', 'menus', '2018-05-26 23:54:47', '2018-05-26 23:54:47'),
(10, 'delete_menus', 'menus', '2018-05-26 23:54:47', '2018-05-26 23:54:47'),
(11, 'browse_roles', 'roles', '2018-05-26 23:54:48', '2018-05-26 23:54:48'),
(12, 'read_roles', 'roles', '2018-05-26 23:54:48', '2018-05-26 23:54:48'),
(13, 'edit_roles', 'roles', '2018-05-26 23:54:48', '2018-05-26 23:54:48'),
(14, 'add_roles', 'roles', '2018-05-26 23:54:48', '2018-05-26 23:54:48'),
(15, 'delete_roles', 'roles', '2018-05-26 23:54:48', '2018-05-26 23:54:48'),
(16, 'browse_users', 'users', '2018-05-26 23:54:48', '2018-05-26 23:54:48'),
(17, 'read_users', 'users', '2018-05-26 23:54:48', '2018-05-26 23:54:48'),
(18, 'edit_users', 'users', '2018-05-26 23:54:48', '2018-05-26 23:54:48'),
(19, 'add_users', 'users', '2018-05-26 23:54:48', '2018-05-26 23:54:48'),
(20, 'delete_users', 'users', '2018-05-26 23:54:49', '2018-05-26 23:54:49'),
(21, 'browse_settings', 'settings', '2018-05-26 23:54:49', '2018-05-26 23:54:49'),
(22, 'read_settings', 'settings', '2018-05-26 23:54:49', '2018-05-26 23:54:49'),
(23, 'edit_settings', 'settings', '2018-05-26 23:54:49', '2018-05-26 23:54:49'),
(24, 'add_settings', 'settings', '2018-05-26 23:54:49', '2018-05-26 23:54:49'),
(25, 'delete_settings', 'settings', '2018-05-26 23:54:49', '2018-05-26 23:54:49'),
(26, 'browse_categories', 'categories', '2018-05-26 23:55:00', '2018-05-26 23:55:00'),
(27, 'read_categories', 'categories', '2018-05-26 23:55:00', '2018-05-26 23:55:00'),
(28, 'edit_categories', 'categories', '2018-05-26 23:55:00', '2018-05-26 23:55:00'),
(29, 'add_categories', 'categories', '2018-05-26 23:55:00', '2018-05-26 23:55:00'),
(30, 'delete_categories', 'categories', '2018-05-26 23:55:00', '2018-05-26 23:55:00'),
(31, 'browse_posts', 'posts', '2018-05-26 23:55:02', '2018-05-26 23:55:02'),
(32, 'read_posts', 'posts', '2018-05-26 23:55:02', '2018-05-26 23:55:02'),
(33, 'edit_posts', 'posts', '2018-05-26 23:55:03', '2018-05-26 23:55:03'),
(34, 'add_posts', 'posts', '2018-05-26 23:55:03', '2018-05-26 23:55:03'),
(35, 'delete_posts', 'posts', '2018-05-26 23:55:03', '2018-05-26 23:55:03'),
(36, 'browse_pages', 'pages', '2018-05-26 23:55:04', '2018-05-26 23:55:04'),
(37, 'read_pages', 'pages', '2018-05-26 23:55:04', '2018-05-26 23:55:04'),
(38, 'edit_pages', 'pages', '2018-05-26 23:55:04', '2018-05-26 23:55:04'),
(39, 'add_pages', 'pages', '2018-05-26 23:55:04', '2018-05-26 23:55:04'),
(40, 'delete_pages', 'pages', '2018-05-26 23:55:04', '2018-05-26 23:55:04'),
(41, 'browse_hooks', NULL, '2018-05-26 23:55:10', '2018-05-26 23:55:10');

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

DROP TABLE IF EXISTS `permission_role`;
CREATE TABLE IF NOT EXISTS `permission_role` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`),
  KEY `permission_role_permission_id_index` (`permission_id`),
  KEY `permission_role_role_id_index` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

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
(40, 1);

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
CREATE TABLE IF NOT EXISTS `posts` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `author_id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `status` enum('PUBLISHED','DRAFT','PENDING') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'DRAFT',
  `featured` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `posts_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `author_id`, `category_id`, `title`, `seo_title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `featured`, `created_at`, `updated_at`) VALUES
(1, 0, NULL, 'Lorem Ipsum Post', NULL, 'This is the excerpt for the Lorem Ipsum Post', '<p>This is the body of the lorem ipsum post</p>', 'posts/post1.jpg', 'lorem-ipsum-post', 'This is the meta description', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2018-05-26 23:55:03', '2018-05-26 23:55:03'),
(2, 0, NULL, 'My Sample Post', NULL, 'This is the excerpt for the sample Post', '<p>This is the body for the sample post, which includes the body.</p>\n                <h2>We can use all kinds of format!</h2>\n                <p>And include a bunch of other stuff.</p>', 'posts/post2.jpg', 'my-sample-post', 'Meta Description for sample post', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2018-05-26 23:55:03', '2018-05-26 23:55:03'),
(3, 0, NULL, 'Latest Post', NULL, 'This is the excerpt for the latest post', '<p>This is the body for the latest post</p>', 'posts/post3.jpg', 'latest-post', 'This is the meta description', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2018-05-26 23:55:03', '2018-05-26 23:55:03'),
(4, 0, NULL, 'Yarr Post', NULL, 'Reef sails nipperkin bring a spring upon her cable coffer jury mast spike marooned Pieces of Eight poop deck pillage. Clipper driver coxswain galleon hempen halter come about pressgang gangplank boatswain swing the lead. Nipperkin yard skysail swab lanyard Blimey bilge water ho quarter Buccaneer.', '<p>Swab deadlights Buccaneer fire ship square-rigged dance the hempen jig weigh anchor cackle fruit grog furl. Crack Jennys tea cup chase guns pressgang hearties spirits hogshead Gold Road six pounders fathom measured fer yer chains. Main sheet provost come about trysail barkadeer crimp scuttle mizzenmast brig plunder.</p>\n<p>Mizzen league keelhaul galleon tender cog chase Barbary Coast doubloon crack Jennys tea cup. Blow the man down lugsail fire ship pinnace cackle fruit line warp Admiral of the Black strike colors doubloon. Tackle Jack Ketch come about crimp rum draft scuppers run a shot across the bow haul wind maroon.</p>\n<p>Interloper heave down list driver pressgang holystone scuppers tackle scallywag bilged on her anchor. Jack Tar interloper draught grapple mizzenmast hulk knave cable transom hogshead. Gaff pillage to go on account grog aft chase guns piracy yardarm knave clap of thunder.</p>', 'posts/post4.jpg', 'yarr-post', 'this be a meta descript', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2018-05-26 23:55:03', '2018-05-26 23:55:03');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
CREATE TABLE IF NOT EXISTS `roles` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Administrator', '2018-05-26 23:54:46', '2018-05-26 23:54:46'),
(2, 'user', 'Normal User', '2018-05-26 23:54:46', '2018-05-26 23:54:46');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
CREATE TABLE IF NOT EXISTS `settings` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `details` text COLLATE utf8mb4_unicode_ci,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `group` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `settings_key_unique` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES
(1, 'site.title', 'Site Title', 'Site Title', '', 'text', 1, 'Site'),
(2, 'site.description', 'Site Description', 'Site Description', '', 'text', 2, 'Site'),
(3, 'site.logo', 'Site Logo', '', '', 'image', 3, 'Site'),
(4, 'site.google_analytics_tracking_id', 'Google Analytics Tracking ID', '', '', 'text', 4, 'Site'),
(5, 'admin.bg_image', 'Admin Background Image', '', '', 'image', 5, 'Admin'),
(6, 'admin.title', 'Admin Title', 'Voyager', '', 'text', 1, 'Admin'),
(7, 'admin.description', 'Admin Description', 'Welcome to Voyager. The Missing Admin for Laravel', '', 'text', 2, 'Admin'),
(8, 'admin.loader', 'Admin Loader', '', '', 'image', 3, 'Admin'),
(9, 'admin.icon_image', 'Admin Icon Image', '', '', 'image', 4, 'Admin'),
(10, 'admin.google_analytics_client_id', 'Google Analytics Client ID (used for admin dashboard)', '', '', 'text', 1, 'Admin');

-- --------------------------------------------------------

--
-- Table structure for table `translations`
--

DROP TABLE IF EXISTS `translations`;
CREATE TABLE IF NOT EXISTS `translations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `table_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `translations`
--

INSERT INTO `translations` (`id`, `table_name`, `column_name`, `foreign_key`, `locale`, `value`, `created_at`, `updated_at`) VALUES
(1, 'data_types', 'display_name_singular', 5, 'pt', 'Post', '2018-05-26 23:55:04', '2018-05-26 23:55:04'),
(2, 'data_types', 'display_name_singular', 6, 'pt', 'Página', '2018-05-26 23:55:05', '2018-05-26 23:55:05'),
(3, 'data_types', 'display_name_singular', 1, 'pt', 'Utilizador', '2018-05-26 23:55:05', '2018-05-26 23:55:05'),
(4, 'data_types', 'display_name_singular', 4, 'pt', 'Categoria', '2018-05-26 23:55:05', '2018-05-26 23:55:05'),
(5, 'data_types', 'display_name_singular', 2, 'pt', 'Menu', '2018-05-26 23:55:05', '2018-05-26 23:55:05'),
(6, 'data_types', 'display_name_singular', 3, 'pt', 'Função', '2018-05-26 23:55:05', '2018-05-26 23:55:05'),
(7, 'data_types', 'display_name_plural', 5, 'pt', 'Posts', '2018-05-26 23:55:05', '2018-05-26 23:55:05'),
(8, 'data_types', 'display_name_plural', 6, 'pt', 'Páginas', '2018-05-26 23:55:05', '2018-05-26 23:55:05'),
(9, 'data_types', 'display_name_plural', 1, 'pt', 'Utilizadores', '2018-05-26 23:55:05', '2018-05-26 23:55:05'),
(10, 'data_types', 'display_name_plural', 4, 'pt', 'Categorias', '2018-05-26 23:55:05', '2018-05-26 23:55:05'),
(11, 'data_types', 'display_name_plural', 2, 'pt', 'Menus', '2018-05-26 23:55:06', '2018-05-26 23:55:06'),
(12, 'data_types', 'display_name_plural', 3, 'pt', 'Funções', '2018-05-26 23:55:06', '2018-05-26 23:55:06'),
(13, 'categories', 'slug', 1, 'pt', 'categoria-1', '2018-05-26 23:55:06', '2018-05-26 23:55:06'),
(14, 'categories', 'name', 1, 'pt', 'Categoria 1', '2018-05-26 23:55:06', '2018-05-26 23:55:06'),
(15, 'categories', 'slug', 2, 'pt', 'categoria-2', '2018-05-26 23:55:06', '2018-05-26 23:55:06'),
(16, 'categories', 'name', 2, 'pt', 'Categoria 2', '2018-05-26 23:55:06', '2018-05-26 23:55:06'),
(17, 'pages', 'title', 1, 'pt', 'Olá Mundo', '2018-05-26 23:55:07', '2018-05-26 23:55:07'),
(18, 'pages', 'slug', 1, 'pt', 'ola-mundo', '2018-05-26 23:55:07', '2018-05-26 23:55:07'),
(19, 'pages', 'body', 1, 'pt', '<p>Olá Mundo. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\r\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', '2018-05-26 23:55:07', '2018-05-26 23:55:07'),
(20, 'menu_items', 'title', 1, 'pt', 'Painel de Controle', '2018-05-26 23:55:07', '2018-05-26 23:55:07'),
(21, 'menu_items', 'title', 2, 'pt', 'Media', '2018-05-26 23:55:07', '2018-05-26 23:55:07'),
(22, 'menu_items', 'title', 12, 'pt', 'Publicações', '2018-05-26 23:55:08', '2018-05-26 23:55:08'),
(23, 'menu_items', 'title', 3, 'pt', 'Utilizadores', '2018-05-26 23:55:08', '2018-05-26 23:55:08'),
(24, 'menu_items', 'title', 11, 'pt', 'Categorias', '2018-05-26 23:55:08', '2018-05-26 23:55:08'),
(25, 'menu_items', 'title', 13, 'pt', 'Páginas', '2018-05-26 23:55:08', '2018-05-26 23:55:08'),
(26, 'menu_items', 'title', 4, 'pt', 'Funções', '2018-05-26 23:55:08', '2018-05-26 23:55:08'),
(27, 'menu_items', 'title', 5, 'pt', 'Ferramentas', '2018-05-26 23:55:09', '2018-05-26 23:55:09'),
(28, 'menu_items', 'title', 6, 'pt', 'Menus', '2018-05-26 23:55:09', '2018-05-26 23:55:09'),
(29, 'menu_items', 'title', 7, 'pt', 'Base de dados', '2018-05-26 23:55:09', '2018-05-26 23:55:09'),
(30, 'menu_items', 'title', 10, 'pt', 'Configurações', '2018-05-26 23:55:09', '2018-05-26 23:55:09');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `role_id` int(10) UNSIGNED DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  KEY `users_role_id_foreign` (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `password`, `remember_token`, `settings`, `created_at`, `updated_at`) VALUES
(1, 1, 'Admin', 'admin@admin.com', 'users/default.png', '$2y$10$91J67xf.T.h89xh4eR3U8OS6lbCiHzWop.03ZhFjsuO5fbXRfTu6S', 'WlOF8hhJjlGLYYGhOZOip7ATMo8JjN1KqJaPruzD9eMIqARuOhZbB7JLbk3u', NULL, '2018-05-26 23:55:01', '2018-05-26 23:55:01');

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

DROP TABLE IF EXISTS `user_roles`;
CREATE TABLE IF NOT EXISTS `user_roles` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `user_roles_user_id_index` (`user_id`),
  KEY `user_roles_role_id_index` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

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
