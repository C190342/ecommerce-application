-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- ホスト: 127.0.0.1
-- 生成日時: 2021-08-23 17:15:45
-- サーバのバージョン： 10.4.19-MariaDB
-- PHP のバージョン: 8.0.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- データベース: `ecommerce`
--

-- --------------------------------------------------------

--
-- テーブルの構造 `admins`
--

CREATE TABLE `admins` (
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
-- テーブルのデータのダンプ `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Giles Predovic', 'admin@admin.com', NULL, '$2y$10$TeBU8tDsSx04Mf23LmxR2OJ0EPXIMR9ZRdtnJTGQ/2yrY3rNwuAyq', NULL, '2021-07-17 06:44:02', '2021-07-17 06:44:02');

-- --------------------------------------------------------

--
-- テーブルの構造 `attributes`
--

CREATE TABLE `attributes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `frontend_type` enum('select','radio','text','text_area') COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_filterable` tinyint(1) NOT NULL DEFAULT 0,
  `is_required` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- テーブルのデータのダンプ `attributes`
--

INSERT INTO `attributes` (`id`, `code`, `name`, `frontend_type`, `is_filterable`, `is_required`, `created_at`, `updated_at`) VALUES
(3, 'form', 'Form', 'select', 1, 1, '2021-08-02 02:07:55', '2021-08-20 04:25:27'),
(5, 'color', 'Color', 'radio', 1, 1, '2021-08-03 06:12:30', '2021-08-03 06:12:30'),
(6, 'size', 'Size', 'select', 1, 1, '2021-08-20 04:23:41', '2021-08-20 04:23:41');

-- --------------------------------------------------------

--
-- テーブルの構造 `attribute_values`
--

CREATE TABLE `attribute_values` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `attribute_id` bigint(20) UNSIGNED NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` decimal(2,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- テーブルのデータのダンプ `attribute_values`
--

INSERT INTO `attribute_values` (`id`, `attribute_id`, `value`, `price`, `created_at`, `updated_at`) VALUES
(13, 3, 'asas', '0.50', '2021-08-02 08:17:09', '2021-08-02 08:17:09'),
(14, 5, 'red', '0.00', '2021-08-03 06:12:47', '2021-08-03 06:12:47'),
(15, 5, 'blue', '0.00', '2021-08-06 05:05:07', '2021-08-06 05:05:07'),
(16, 5, 'black', '0.25', '2021-08-06 05:05:27', '2021-08-06 05:05:27'),
(17, 5, 'white', '0.00', '2021-08-06 05:05:39', '2021-08-06 05:05:39'),
(18, 6, 'S', NULL, '2021-08-20 04:24:16', '2021-08-20 04:24:16'),
(19, 6, 'M', NULL, '2021-08-20 04:24:20', '2021-08-20 04:24:20'),
(20, 6, 'L', NULL, '2021-08-20 04:24:24', '2021-08-20 04:24:24');

-- --------------------------------------------------------

--
-- テーブルの構造 `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- テーブルのデータのダンプ `brands`
--

INSERT INTO `brands` (`id`, `name`, `slug`, `logo`, `created_at`, `updated_at`) VALUES
(4, 'HP', 'hp', NULL, '2021-07-28 08:15:18', '2021-07-28 08:15:18'),
(5, 'Dell', 'dell', NULL, '2021-07-28 08:15:28', '2021-07-28 08:15:28'),
(6, 'Samsung', 'samsung', NULL, '2021-07-28 08:15:38', '2021-07-28 08:15:38'),
(7, 'Apple', 'apple', NULL, '2021-07-28 08:15:45', '2021-07-28 08:15:45'),
(8, 'Canon', 'canon', NULL, '2021-07-28 08:16:21', '2021-07-28 08:16:21'),
(9, 'Sony', 'sony', NULL, '2021-07-28 08:16:29', '2021-07-28 08:16:29'),
(10, 'Fujitsu', 'fujitsu', NULL, '2021-07-28 08:16:48', '2021-07-28 08:16:48'),
(11, 'Asus', 'asus', NULL, '2021-07-28 08:17:19', '2021-07-28 08:17:19'),
(12, 'Acer', 'acer', NULL, '2021-07-28 08:17:24', '2021-07-28 08:17:24'),
(13, 'MSI', 'msi', NULL, '2021-07-28 08:48:50', '2021-07-28 08:48:50'),
(14, 'branh01', 'branh01', NULL, '2021-08-18 05:47:08', '2021-08-18 05:47:08');

-- --------------------------------------------------------

--
-- テーブルの構造 `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT 1,
  `featured` tinyint(1) NOT NULL DEFAULT 0,
  `menu` tinyint(1) NOT NULL DEFAULT 1,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- テーブルのデータのダンプ `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `description`, `parent_id`, `featured`, `menu`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Categories', 'categories', 'Root of categories', NULL, 1, 1, NULL, NULL, NULL),
(2, 'Laptops', 'laptops', 'Category of Laptops', 1, 1, 1, NULL, '2021-07-28 08:09:02', '2021-07-28 08:09:02'),
(3, 'Smartphones', 'smartphones', 'Category of Smartphones', 1, 1, 1, NULL, '2021-07-28 08:09:40', '2021-07-28 08:09:40'),
(4, 'Cameras', 'cameras', 'Category of Cameras', 1, 1, 1, NULL, '2021-07-28 08:10:03', '2021-07-28 08:10:03'),
(5, 'Accessories', 'accessories', 'Category of Accessories', 1, 1, 1, NULL, '2021-07-28 08:10:50', '2021-07-28 08:10:50'),
(6, 'Headphones', 'headphones', 'Category of Headphones', 5, 1, 1, NULL, '2021-07-28 08:11:59', '2021-07-28 08:11:59'),
(7, 'Phone Cases', 'phone-cases', 'Category of Phone Cases', 5, 1, 1, NULL, '2021-07-28 08:14:36', '2021-07-28 08:14:36'),
(8, 'Category 01', 'category-01', 'use UploadAble;use UploadAble;use UploadAble;VVVuse UploadAble;use UploadAble;use UploadAble;', 4, 1, 1, 'categories/j5zcpwZMpW1PDdkXNNcNFj8FS.png', '2021-08-18 00:00:12', '2021-08-18 00:00:12');

-- --------------------------------------------------------

--
-- テーブルの構造 `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- テーブルの構造 `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- テーブルのデータのダンプ `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2021_07_06_065711_create_admins_table', 1),
(5, '2021_07_06_081549_create_settings_table', 1),
(6, '2021_07_07_012753_create_categories_table', 1),
(7, '2021_07_07_051807_create_attributes_table', 1),
(8, '2021_07_07_172529_create_attribute_values_table', 1),
(9, '2021_07_13_124717_create_brands_table', 1),
(10, '2021_07_13_125520_create_products_table', 1),
(11, '2021_07_13_134538_create_product_images_table', 1),
(12, '2021_07_13_135207_create_product_attributes_table', 1),
(13, '2021_07_13_135438_create_attribute_value_product_attribute_table', 1),
(14, '2021_07_13_140843_create_product_categories_table', 1),
(15, '2021_07_15_100132_drop_attribute_value_product_attribute_table', 1),
(16, '2021_07_15_100220_alter_product_attributes_table', 1),
(17, '2021_07_19_103246_create_orders_table', 2),
(18, '2021_07_19_103503_create_order_items_table', 2);

-- --------------------------------------------------------

--
-- テーブルの構造 `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_number` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `status` enum('pending','processing','completed','decline') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `grand_total` decimal(20,2) NOT NULL,
  `item_count` int(10) UNSIGNED NOT NULL,
  `payment_status` tinyint(1) NOT NULL DEFAULT 1,
  `payment_method` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- テーブルのデータのダンプ `orders`
--

INSERT INTO `orders` (`id`, `order_number`, `user_id`, `status`, `grand_total`, `item_count`, `payment_status`, `payment_method`, `first_name`, `last_name`, `address`, `city`, `country`, `post_code`, `phone_number`, `notes`, `created_at`, `updated_at`) VALUES
(8, 'ORD-610CD23347328', 2, 'completed', '382000.00', 3, 1, NULL, 'nakamura', 'mei', '1777番地1', '熊谷市', 'Japan', '360-0025', '0485238855', 'Templates are executed by applying them to a data structure. Annotations in the template refer to elements of the data structure (typically a field of a struct or a key in a map) to control execution and derive values to be displayed. Execution of the template walks the structure and sets the cursor, represented by a period \'.\' and called \"dot\", to the value at the current location in the structure as execution proceeds.', '2021-08-06 06:09:55', '2021-08-06 06:09:55'),
(12, 'ORD-610CD672E488F', 2, 'pending', '108000.00', 1, 0, NULL, 'ikeda', 'suzuka', '3-3-11-1', '上尾市', 'Japan', '362-0015', '0363624983', 'The round() function rounds a floating-point number.\r\n\r\nTip: To round a number UP to the nearest integer, look at the ceil() function.\r\n\r\nTip: To round a number DOWN to the nearest integer, look at the floor() function.', '2021-08-06 06:28:02', '2021-08-06 06:28:02'),
(13, 'ORD-610CE1FD622A8', 2, 'pending', '108000.00', 1, 0, NULL, '西晴夫', '大西晴夫', '13-9', '横浜市金沢区', 'Japan', '236-0002', '0457690024', 'NA', '2021-08-06 07:17:17', '2021-08-06 07:17:17'),
(18, 'ORD-610CEBB46340F', 2, 'pending', '33300.00', 2, 0, NULL, '原良成', '藤原良成', '1丁目15-1', '立川市', 'Japan', '190-0012', '0425280801', NULL, '2021-08-06 07:58:44', '2021-08-06 07:58:44'),
(20, 'ORD-610CED2CCD363', 2, 'pending', '30000.00', 1, 0, NULL, '志功', '栗原 志功', '3-3-11-1', '上尾市', 'Japan', '362-0015', '0363624983', 'adsad', '2021-08-06 08:05:00', '2021-08-06 08:05:00'),
(23, 'ORD-610CEDA154648', 2, 'pending', '30000.00', 1, 0, NULL, '谷和子', '永谷和子', '3-30-5', '横浜市神奈川区', 'Japan', '221-0835', '0454121111', NULL, '2021-08-06 08:06:57', '2021-08-06 08:06:57'),
(27, 'ORD-610CEE658B021', 2, 'pending', '30000.00', 1, 0, NULL, '狩', '狩 野 伸 彌', '2-3-3', '横浜市西区', 'Japan', '220-6113', '0456827700', NULL, '2021-08-06 08:10:13', '2021-08-06 08:10:13'),
(28, 'ORD-610CEF53F3D71', 1, 'completed', '128000.00', 2, 1, NULL, '西晴夫', '大西晴夫', '13-9', '横浜市金沢区', 'Japan', '236-0002', '0457690024', NULL, '2021-08-06 08:14:12', '2021-08-06 08:14:12'),
(29, 'ORD-611DDC89627E0', 2, 'pending', '108000.00', 1, 0, NULL, 'Shigeo', 'Matsui', '東淀川町玉川ビル105号', '立川市', 'Japan', '1900012', '0425280801', NULL, '2021-08-19 04:22:33', '2021-08-19 04:22:33');

-- --------------------------------------------------------

--
-- テーブルの構造 `order_items`
--

CREATE TABLE `order_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `quantity` int(10) UNSIGNED NOT NULL,
  `price` decimal(20,6) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- テーブルのデータのダンプ `order_items`
--

INSERT INTO `order_items` (`id`, `order_id`, `product_id`, `quantity`, `price`, `created_at`, `updated_at`) VALUES
(9, 8, 7, 2, '378000.000000', '2021-08-06 06:09:55', '2021-08-06 06:09:55'),
(10, 8, 11, 1, '4000.000000', '2021-08-06 06:09:55', '2021-08-06 06:09:55'),
(17, 12, 6, 1, '108000.000000', '2021-08-06 06:28:02', '2021-08-06 06:28:02'),
(18, 13, 6, 1, '108000.000000', '2021-08-06 07:17:17', '2021-08-06 07:17:17'),
(23, 18, 15, 1, '3300.000000', '2021-08-06 07:58:44', '2021-08-06 07:58:44'),
(24, 18, 12, 1, '30000.000000', '2021-08-06 07:58:44', '2021-08-06 07:58:44'),
(27, 20, 12, 1, '30000.000000', '2021-08-06 08:05:00', '2021-08-06 08:05:00'),
(30, 23, 12, 1, '30000.000000', '2021-08-06 08:06:57', '2021-08-06 08:06:57'),
(34, 27, 12, 1, '30000.000000', '2021-08-06 08:10:13', '2021-08-06 08:10:13'),
(35, 28, 6, 1, '98000.000000', '2021-08-06 08:14:12', '2021-08-06 08:14:12'),
(36, 28, 12, 1, '30000.000000', '2021-08-06 08:14:12', '2021-08-06 08:14:12'),
(37, 29, 6, 1, '108000.000000', '2021-08-19 04:22:33', '2021-08-19 04:22:33');

-- --------------------------------------------------------

--
-- テーブルの構造 `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- テーブルの構造 `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `brand_id` bigint(20) UNSIGNED NOT NULL,
  `sku` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quantity` int(10) UNSIGNED NOT NULL,
  `weight` decimal(8,2) DEFAULT NULL,
  `price` decimal(8,2) DEFAULT NULL,
  `sale_price` decimal(8,2) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `featured` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- テーブルのデータのダンプ `products`
--

INSERT INTO `products` (`id`, `brand_id`, `sku`, `name`, `slug`, `description`, `quantity`, `weight`, `price`, `sale_price`, `status`, `featured`, `created_at`, `updated_at`) VALUES
(6, 11, 'Laptop Asus A33', 'Laptop Asus A33', 'laptop-asus-a33', 'Laptop Asus A33 Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', 20, '2800.00', '100000.00', '98000.00', 1, 1, '2021-07-28 08:20:02', '2021-07-28 08:20:02'),
(7, 7, 'iMac 17\" A123', 'iMac 17\" A123', 'imac-17-a123', 'iMac 17\" A123 Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 20, '2100.00', '200000.00', '189000.00', 1, 1, '2021-07-28 08:46:26', '2021-07-28 08:46:26'),
(8, 13, 'MSI M86', 'MSI M86', 'msi-m86', 'MSI M86 Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 10, '3000.00', '120000.00', '118900.00', 1, 1, '2021-07-28 08:49:51', '2021-07-28 08:49:51'),
(9, 9, 'sony h3', 'sony h3', 'sony-h3', 'sony h3 Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 30, '200.00', '3300.00', NULL, 1, 1, '2021-07-28 08:50:57', '2021-07-28 08:50:57'),
(10, 7, 'i23 headphone', 'i23 headphone', 'i23-headphone', 'i23 headphone Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 100, '150.00', '8000.00', '7900.00', 1, 1, '2021-07-28 08:52:42', '2021-07-28 08:52:42'),
(11, 9, 'sony g6', 'sony g6', 'sony-g6', 'sony g6 Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 30, '220.00', '4000.00', NULL, 1, 1, '2021-07-28 08:54:00', '2021-07-28 08:54:00'),
(12, 6, 'note 3', 'note 3', 'note-3', 'note 3 Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 10, '500.00', '30000.00', NULL, 1, 1, '2021-07-28 08:55:41', '2021-07-28 08:55:41'),
(13, 6, 'note 4', 'note 4', 'note-4', 'note 4 Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 10, '560.00', '6000.00', NULL, 1, 1, '2021-07-28 08:56:41', '2021-07-28 08:56:41'),
(15, 7, 'ksdjhsfjd', 'product 07', 'product-07', NULL, 12, NULL, '3300.00', NULL, 0, 0, '2021-08-05 06:28:43', '2021-08-05 06:28:43');

-- --------------------------------------------------------

--
-- テーブルの構造 `product_attributes`
--

CREATE TABLE `product_attributes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `attribute_id` bigint(20) UNSIGNED NOT NULL,
  `value` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` decimal(8,2) DEFAULT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- テーブルのデータのダンプ `product_attributes`
--

INSERT INTO `product_attributes` (`id`, `attribute_id`, `value`, `quantity`, `price`, `product_id`, `created_at`, `updated_at`) VALUES
(19, 5, 'white', 10, '0.00', 6, '2021-08-06 05:06:52', '2021-08-06 05:06:52'),
(20, 5, 'black', 10, '0.25', 6, '2021-08-06 05:07:12', '2021-08-06 05:07:12'),
(21, 5, 'red', 10, '10000.00', 6, '2021-08-06 05:10:10', '2021-08-06 05:10:10'),
(23, 3, 'asas', 100, '10000.00', 6, '2021-08-20 04:21:32', '2021-08-20 04:21:32'),
(24, 6, 'S', 100, '0.00', 6, '2021-08-20 04:24:42', '2021-08-20 04:24:42'),
(25, 6, 'M', 100, '0.00', 6, '2021-08-20 04:24:54', '2021-08-20 04:24:54'),
(26, 6, 'L', 100, '1000.00', 6, '2021-08-20 04:25:05', '2021-08-20 04:25:05');

-- --------------------------------------------------------

--
-- テーブルの構造 `product_categories`
--

CREATE TABLE `product_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- テーブルのデータのダンプ `product_categories`
--

INSERT INTO `product_categories` (`id`, `category_id`, `product_id`, `created_at`, `updated_at`) VALUES
(8, 2, 6, NULL, NULL),
(9, 2, 7, NULL, NULL),
(10, 2, 8, NULL, NULL),
(11, 6, 9, NULL, NULL),
(12, 6, 10, NULL, NULL),
(13, 6, 11, NULL, NULL),
(14, 3, 12, NULL, NULL),
(15, 3, 13, NULL, NULL),
(17, 1, 15, NULL, NULL),
(18, 2, 15, NULL, NULL),
(19, 1, 13, NULL, NULL);

-- --------------------------------------------------------

--
-- テーブルの構造 `product_images`
--

CREATE TABLE `product_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `thumbnail` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `full` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- テーブルのデータのダンプ `product_images`
--

INSERT INTO `product_images` (`id`, `product_id`, `thumbnail`, `full`, `created_at`, `updated_at`) VALUES
(20, 6, NULL, 'products/15BagEHymWO4fzT322AR5t4lO.png', '2021-07-28 08:39:48', '2021-07-28 08:39:48'),
(21, 6, NULL, 'products/oInvPoEcqS8HZG335omSC0ZeC.png', '2021-07-28 08:42:52', '2021-07-28 08:42:52'),
(22, 6, NULL, 'products/3lzatsXPWowySarJ2ZxxEZxde.png', '2021-07-28 08:42:52', '2021-07-28 08:42:52'),
(23, 7, NULL, 'products/hDYrJCWl3I4IBtsoJYyUylV4m.png', '2021-07-28 08:47:13', '2021-07-28 08:47:13'),
(24, 7, NULL, 'products/n2hPIdMM1yZ1vUvXPEb2FF9ni.png', '2021-07-28 08:47:13', '2021-07-28 08:47:13'),
(25, 7, NULL, 'products/7og80CCjFmjj0NpXfaiDjTvsP.png', '2021-07-28 08:47:16', '2021-07-28 08:47:16'),
(26, 7, NULL, 'products/9lbSYug9T7PH5BZkACReDhHfB.png', '2021-07-28 08:47:16', '2021-07-28 08:47:16'),
(27, 9, NULL, 'products/jQoHf7kmvCbPDhOngEnsSofIG.png', '2021-07-28 08:51:22', '2021-07-28 08:51:22'),
(28, 9, NULL, 'products/oSwgKHY1BZxfVpE0JGrielRC9.png', '2021-07-28 08:51:22', '2021-07-28 08:51:22'),
(29, 9, NULL, 'products/2A6dnRs5r0sLAHY5adBc6tLYF.png', '2021-07-28 08:51:26', '2021-07-28 08:51:26'),
(30, 9, NULL, 'products/M7WtZsuAwthD6Dn3x8sCPp4Lp.png', '2021-07-28 08:51:26', '2021-07-28 08:51:26'),
(31, 10, NULL, 'products/oxXtZKMj0eaVidOXzV30S5hkc.png', '2021-07-28 08:52:59', '2021-07-28 08:52:59'),
(32, 10, NULL, 'products/CHwJvMED0p68MBj34lTzb40nv.png', '2021-07-28 08:52:59', '2021-07-28 08:52:59'),
(33, 10, NULL, 'products/5WAn1GDNwd4KLhZMeMjowDraS.png', '2021-07-28 08:53:03', '2021-07-28 08:53:03'),
(34, 10, NULL, 'products/jXw5UToLhbQofydGZeJrJP9al.png', '2021-07-28 08:53:03', '2021-07-28 08:53:03'),
(35, 11, NULL, 'products/MqDW3CAxKllFUvsNLjVSwMg4z.png', '2021-07-28 08:54:18', '2021-07-28 08:54:18'),
(36, 11, NULL, 'products/XMSCB9gJxDkkYkLWbf0XsT3Qw.png', '2021-07-28 08:54:18', '2021-07-28 08:54:18'),
(37, 11, NULL, 'products/n4j1hZZr6gPlafclV37IRYhjI.png', '2021-07-28 08:54:21', '2021-07-28 08:54:21'),
(38, 11, NULL, 'products/9tvExyn5pb1HvFkwAHA3gKT2f.png', '2021-07-28 08:54:21', '2021-07-28 08:54:21'),
(39, 12, NULL, 'products/usKsDkxcGVlOlw8ROlfpRGQOQ.png', '2021-07-28 08:55:56', '2021-07-28 08:55:56'),
(40, 12, NULL, 'products/lwkfyHP2yh7kPLwaipEXWXHJN.png', '2021-07-28 08:55:56', '2021-07-28 08:55:56'),
(41, 12, NULL, 'products/NEhxLnJiAUY5DdTuYNwLahXIk.png', '2021-07-28 08:55:58', '2021-07-28 08:55:58'),
(42, 12, NULL, 'products/dQQViQgo0sit6y5BzikwIWsoD.png', '2021-07-28 08:55:58', '2021-07-28 08:55:58'),
(48, 6, NULL, 'products/zowWryyHD5cMizy0gZv9WVEwf.jpg', '2021-08-18 00:53:03', '2021-08-18 00:53:03');

-- --------------------------------------------------------

--
-- テーブルの構造 `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- テーブルのデータのダンプ `settings`
--

INSERT INTO `settings` (`id`, `key`, `value`, `created_at`, `updated_at`) VALUES
(1, 'site_name', 'E-Commerce', '2021-07-17 06:44:02', '2021-07-17 06:44:02'),
(2, 'site_title', 'E-Commerce Application', '2021-07-17 06:44:02', '2021-07-17 06:44:02'),
(3, 'default_email_address', 'admin@admin.com', '2021-07-17 06:44:02', '2021-07-17 06:44:02'),
(4, 'currency_code', 'JPY', '2021-07-17 06:44:02', '2021-07-19 05:17:01'),
(5, 'currency_symbol', '￥', '2021-07-17 06:44:02', '2021-07-19 05:17:01'),
(6, 'site_logo', 'settings/h3yfXsr4OAUxkggLQW6C5G7zB.png', '2021-07-17 06:44:02', '2021-07-19 01:16:12'),
(7, 'site_favicon', 'settings/HmAJlUwZXDjxcS1hRjgILGpTq.png', '2021-07-17 06:44:02', '2021-07-19 01:17:47'),
(8, 'footer_copyright_text', 'Privacy Policy - Terms of Use - User Information Legal Enquiry Guide', '2021-07-17 06:44:02', '2021-07-21 00:57:33'),
(9, 'seo_meta_title', 'Enter seo meta title', '2021-07-17 06:44:02', '2021-07-21 00:57:33'),
(10, 'seo_meta_description', 'Enter seo meta Description', '2021-07-17 06:44:02', '2021-07-21 00:57:33'),
(11, 'social_facebook', 'http://localhost/', '2021-07-17 06:44:02', '2021-07-21 07:54:23'),
(12, 'social_twitter', 'http://localhost/', '2021-07-17 06:44:02', '2021-07-21 07:54:23'),
(13, 'social_instagram', 'http://localhost/', '2021-07-17 06:44:02', '2021-07-21 07:54:23'),
(14, 'social_linkedin', 'http://localhost/', '2021-07-17 06:44:02', '2021-07-21 07:54:23'),
(15, 'google_analytics', 'abc', '2021-07-17 06:44:02', '2021-08-18 08:21:16'),
(16, 'facebook_pixels', NULL, '2021-07-17 06:44:02', '2021-08-18 08:21:16'),
(17, 'stripe_payment_method', '1', '2021-07-17 06:44:02', '2021-07-19 05:16:35'),
(18, 'stripe_key', 'ABCKEY', '2021-07-17 06:44:02', '2021-07-19 05:16:35'),
(19, 'stripe_secret_key', 'ABCKEYY', '2021-07-17 06:44:02', '2021-07-19 05:16:35'),
(20, 'paypal_payment_method', '1', '2021-07-17 06:44:02', '2021-07-19 05:16:35'),
(21, 'paypal_client_id', '0123456789', '2021-07-17 06:44:02', '2021-07-19 05:16:35'),
(22, 'paypal_secret_id', '01234567899', '2021-07-17 06:44:02', '2021-07-19 05:16:35'),
(23, 'phone_number', '(+81)0987654321', NULL, NULL),
(24, 'fax_number', '(+81)0987654322', NULL, NULL);

-- --------------------------------------------------------

--
-- テーブルの構造 `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip` varchar(7) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(13) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` tinyint(1) NOT NULL DEFAULT 0,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- テーブルのデータのダンプ `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `email_verified_at`, `password`, `address`, `city`, `country`, `avatar`, `zip`, `phone`, `gender`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Anh', 'Pham', 'anhpham@example.co.jp', NULL, '$2y$10$vNI0zSY8InY1iyj.hK4Q0Oan5YRq/Rx6xcs4lAhYG2rKxgi4A/g3W', '緑町19-17 新井ハイツ', '坂戸市', 'VN', NULL, NULL, NULL, 0, NULL, '2021-07-18 02:31:36', '2021-07-18 02:31:36'),
(2, 'Anh', 'Pham', 'anhpham01@example.co.jp', NULL, '$2y$10$vRGIZKGPjjpyviOkl24p6eHcB6Ok1sWSDVyIStm5aWPz3uNnxjVzG', '123 Street Xanh Pone', 'Hai Phong', 'VN', 'users/avatar/94WuLpN9DSxWPc2O4BSwN77am.jpg', '5100023', '0987654321', 1, '0UbaldJfqbnIJlJ1n3FxEd9zIbTsnslcZSyRoElskZSYNWraYxU7xTRxOZTK', '2021-08-06 05:21:11', '2021-08-23 02:31:48'),
(3, 'Mei', 'Yamada', 'yamada@example.com', NULL, '$2y$10$0DyGP9UEedFXNeTR1tjKceNCFtIj6tsRxvAUu2zlZT3OwteIBNTdK', '1777番地1', '熊谷市', 'VN', NULL, '3510001', '0123456789', 0, NULL, '2021-08-17 08:15:49', '2021-08-17 08:15:49'),
(4, 'Takao', 'Suzuki', 'suzuki@example.com', NULL, '$2y$10$E1Uix9p.izjCwaSX9uruyuWRXlMBhSTaf6pxsgCtpazfQlJxnA/iy', '2-3-1', '新宿区', 'US', NULL, '1630927', '0359098750', 0, NULL, '2021-08-18 01:19:27', '2021-08-18 01:19:27'),
(6, 'Yuri', 'Honda', 'honda@example.com', NULL, '$2y$10$U7INXX8IvsXfQhA6jR88bed9IlW1Ybf31/NC09D6iLPzqKlkeUtYK', '3-3-11-1', '上尾市', 'SG', 'users/avatar/YaSGW1MP6uA1F7cF0k7VmnL5J.jpg', '3620001', '09065317593', 0, NULL, '2021-08-18 02:07:12', '2021-08-18 08:48:48'),
(7, 'Shinyou', 'Yamamoto', 'yamamoto@example.com', NULL, '$2y$10$oELXzI5IAGifo8ptmZeHpe2l5FjeTevdXhLg.D5UCw5PiY1NtH1yu', '1丁目15-1', '立川市', 'KR', 'users/avatar/Dy68mHHK0Lm1UccOD8kzoc4oz.jpg', '3640042', '099876115', 0, NULL, '2021-08-18 02:10:52', '2021-08-23 02:34:26'),
(8, 'Kame', 'Arata', 'arata@example.com', NULL, '$2y$10$WW/j4JINsA01Y6RtvOXdMOMkdwOraQm9EA33/lnGQ4URjMF.KGKKC', '3-3-11-1', '上尾市', 'JP', 'users/avatar/q9IBARITO8kDBuiif4S2JnMoJ.jpg', '7516892', '0963587421', 0, 'BLOD8UqnI91bbkKmLiz5PzbPtJ4jqudSXcd6sbsXIY9slqQc5BcTNpICmPh3', '2021-08-18 02:16:17', '2021-08-19 08:09:37'),
(9, 'Kaori', 'Ikeda', 'ikeda@example.com', NULL, '$2y$10$WYzcHqnW2ES.KvwqVawKV.nbS7uPG7epNT6IV/yUjwIdDNniZPL9a', '坂戸市、本町２－３', '埼玉県', 'JP', 'users/avatar/8LzzkooG6CLQuJTNpme2YFRSK.jpg', '3500011', '0123456789', 1, '9ObN3i8gzxj3aAGngykpEga6meN0JxwpiXxnYPv2RiJtup2KWLJT7B3Nd4UD', '2021-08-23 01:41:35', '2021-08-23 02:20:20');

--
-- ダンプしたテーブルのインデックス
--

--
-- テーブルのインデックス `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`);

--
-- テーブルのインデックス `attributes`
--
ALTER TABLE `attributes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `attributes_code_unique` (`code`);

--
-- テーブルのインデックス `attribute_values`
--
ALTER TABLE `attribute_values`
  ADD PRIMARY KEY (`id`),
  ADD KEY `attribute_values_attribute_id_foreign` (`attribute_id`);

--
-- テーブルのインデックス `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- テーブルのインデックス `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`);

--
-- テーブルのインデックス `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- テーブルのインデックス `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- テーブルのインデックス `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `orders_order_number_unique` (`order_number`),
  ADD KEY `orders_user_id_foreign` (`user_id`);

--
-- テーブルのインデックス `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_items_order_id_index` (`order_id`),
  ADD KEY `order_items_product_id_index` (`product_id`);

--
-- テーブルのインデックス `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- テーブルのインデックス `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_brand_id_foreign` (`brand_id`);

--
-- テーブルのインデックス `product_attributes`
--
ALTER TABLE `product_attributes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_attributes_product_id_foreign` (`product_id`),
  ADD KEY `product_attributes_attribute_id_foreign` (`attribute_id`);

--
-- テーブルのインデックス `product_categories`
--
ALTER TABLE `product_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_categories_category_id_index` (`category_id`),
  ADD KEY `product_categories_product_id_index` (`product_id`);

--
-- テーブルのインデックス `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_images_product_id_foreign` (`product_id`);

--
-- テーブルのインデックス `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- テーブルのインデックス `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- ダンプしたテーブルの AUTO_INCREMENT
--

--
-- テーブルの AUTO_INCREMENT `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- テーブルの AUTO_INCREMENT `attributes`
--
ALTER TABLE `attributes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- テーブルの AUTO_INCREMENT `attribute_values`
--
ALTER TABLE `attribute_values`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- テーブルの AUTO_INCREMENT `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- テーブルの AUTO_INCREMENT `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- テーブルの AUTO_INCREMENT `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- テーブルの AUTO_INCREMENT `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- テーブルの AUTO_INCREMENT `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- テーブルの AUTO_INCREMENT `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- テーブルの AUTO_INCREMENT `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- テーブルの AUTO_INCREMENT `product_attributes`
--
ALTER TABLE `product_attributes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- テーブルの AUTO_INCREMENT `product_categories`
--
ALTER TABLE `product_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- テーブルの AUTO_INCREMENT `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- テーブルの AUTO_INCREMENT `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- テーブルの AUTO_INCREMENT `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- ダンプしたテーブルの制約
--

--
-- テーブルの制約 `attribute_values`
--
ALTER TABLE `attribute_values`
  ADD CONSTRAINT `attribute_values_attribute_id_foreign` FOREIGN KEY (`attribute_id`) REFERENCES `attributes` (`id`);

--
-- テーブルの制約 `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- テーブルの制約 `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `order_items_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `order_items_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- テーブルの制約 `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_brand_id_foreign` FOREIGN KEY (`brand_id`) REFERENCES `brands` (`id`) ON DELETE CASCADE;

--
-- テーブルの制約 `product_attributes`
--
ALTER TABLE `product_attributes`
  ADD CONSTRAINT `product_attributes_attribute_id_foreign` FOREIGN KEY (`attribute_id`) REFERENCES `attributes` (`id`),
  ADD CONSTRAINT `product_attributes_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

--
-- テーブルの制約 `product_categories`
--
ALTER TABLE `product_categories`
  ADD CONSTRAINT `product_categories_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`),
  ADD CONSTRAINT `product_categories_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

--
-- テーブルの制約 `product_images`
--
ALTER TABLE `product_images`
  ADD CONSTRAINT `product_images_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
