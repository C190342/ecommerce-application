-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- ホスト: 127.0.0.1
-- 生成日時: 2021-09-13 17:55:53
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
(1, 'Nestor Hirthe', 'admin@admin.com', NULL, '$2y$10$ZpoEDS/F.q/se2qrlZTR5eEWkxRZUYdSc98BVaoUXmJpx7RWBEmxq', NULL, '2021-09-13 08:47:19', '2021-09-13 08:47:19');

-- --------------------------------------------------------

--
-- テーブルの構造 `attributes`
--

CREATE TABLE `attributes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_filterable` tinyint(1) NOT NULL DEFAULT 0,
  `is_required` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- テーブルのデータのダンプ `attributes`
--

INSERT INTO `attributes` (`id`, `code`, `name`, `is_filterable`, `is_required`, `created_at`, `updated_at`) VALUES
(1, 'size', 'Size', 1, 1, '2021-09-13 08:47:19', '2021-09-13 08:47:19'),
(2, 'color', 'Color', 1, 1, '2021-09-13 08:47:19', '2021-09-13 08:47:19');

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
(1, 1, 'small', NULL, '2021-09-13 08:47:19', '2021-09-13 08:47:19'),
(2, 1, 'medium', NULL, '2021-09-13 08:47:19', '2021-09-13 08:47:19'),
(3, 1, 'large', NULL, '2021-09-13 08:47:19', '2021-09-13 08:47:19'),
(4, 2, 'black', NULL, '2021-09-13 08:47:19', '2021-09-13 08:47:19'),
(5, 2, 'white', NULL, '2021-09-13 08:47:19', '2021-09-13 08:47:19'),
(6, 2, 'silver', NULL, '2021-09-13 08:47:19', '2021-09-13 08:47:19'),
(7, 2, 'gray', NULL, '2021-09-13 08:47:19', '2021-09-13 08:47:19'),
(8, 2, 'blue', NULL, '2021-09-13 08:47:19', '2021-09-13 08:47:19'),
(9, 2, 'red', NULL, '2021-09-13 08:47:19', '2021-09-13 08:47:19'),
(10, 2, 'orange', NULL, '2021-09-13 08:47:19', '2021-09-13 08:47:19'),
(11, 2, 'yellow', NULL, '2021-09-13 08:47:19', '2021-09-13 08:47:19');

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
(1, 'Apple', 'apple', 'brands/apple_logo.jpg', '2021-09-13 08:47:19', '2021-09-13 08:47:19'),
(2, 'Dell', 'dell', 'brands/dell_logo.jpg', '2021-09-13 08:47:19', '2021-09-13 08:47:19'),
(3, 'HP', 'hp', 'brands/hp_logo.jpg', '2021-09-13 08:47:19', '2021-09-13 08:47:19'),
(4, 'Acer', 'acer', 'brands/acer_logo.jpg', '2021-09-13 08:47:19', '2021-09-13 08:47:19'),
(5, 'Lenovo', 'lenovo', 'brands/lenovo_logo.jpg', '2021-09-13 08:47:19', '2021-09-13 08:47:19'),
(6, 'Samsung', 'samsung', 'brands/samsung_logo.jpg', '2021-09-13 08:47:19', '2021-09-13 08:47:19'),
(7, 'Sony', 'sony', 'brands/sony_logo.jpg', '2021-09-13 08:47:19', '2021-09-13 08:47:19'),
(8, 'Xiaomi', 'xiaomi', 'brands/xiaomi_logo.jpg', '2021-09-13 08:47:19', '2021-09-13 08:47:19'),
(9, 'Canon', 'canon', 'brands/canon_logo.jpg', '2021-09-13 08:47:19', '2021-09-13 08:47:19'),
(10, 'Nikon', 'nikon', 'brands/nikon_logo.jpg', '2021-09-13 08:47:19', '2021-09-13 08:47:19'),
(11, 'Sennheiser', 'sennheiser', 'brands/sennheiser_logo.jpg', '2021-09-13 08:47:19', '2021-09-13 08:47:19');

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
(1, 'Root', 'root', 'This is the root category, don\'t delete this one', NULL, 0, 0, NULL, '2021-09-13 08:47:19', '2021-09-13 08:47:19'),
(2, 'Laptops', 'laptops', 'This is the Laptops category, don\'t delete this one', 1, 1, 1, NULL, '2021-09-13 08:47:19', '2021-09-13 08:47:19'),
(3, 'Phones', 'phones', 'This is the Phones category, don\'t delete this one', 1, 1, 1, NULL, '2021-09-13 08:47:19', '2021-09-13 08:47:19'),
(4, 'Cameras', 'cameras', 'This is the Cameras category, don\'t delete this one', 1, 1, 1, NULL, '2021-09-13 08:47:19', '2021-09-13 08:47:19'),
(5, 'Accessories', 'accessories', 'This is the Accessories category, don\'t delete this one', 1, 1, 1, NULL, '2021-09-13 08:47:19', '2021-09-13 08:47:19');

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
(115, '2014_10_12_000000_create_users_table', 1),
(116, '2014_10_12_100000_create_password_resets_table', 1),
(117, '2019_08_19_000000_create_failed_jobs_table', 1),
(118, '2021_07_06_065711_create_admins_table', 1),
(119, '2021_07_06_081549_create_settings_table', 1),
(120, '2021_07_07_012753_create_categories_table', 1),
(121, '2021_07_07_051807_create_attributes_table', 1),
(122, '2021_07_07_172529_create_attribute_values_table', 1),
(123, '2021_07_13_124717_create_brands_table', 1),
(124, '2021_07_13_125520_create_products_table', 1),
(125, '2021_07_13_134538_create_product_images_table', 1),
(126, '2021_07_13_135207_create_product_attributes_table', 1),
(127, '2021_07_13_135438_create_attribute_value_product_attribute_table', 1),
(128, '2021_07_13_140843_create_product_categories_table', 1),
(129, '2021_07_15_100132_drop_attribute_value_product_attribute_table', 1),
(130, '2021_07_15_100220_alter_product_attributes_table', 1),
(131, '2021_07_19_103246_create_orders_table', 1),
(132, '2021_07_19_103503_create_order_items_table', 1),
(133, '2021_08_25_165032_create_shoppingcart_table', 1),
(134, '2021_09_13_142433_create_slides_table', 1);

-- --------------------------------------------------------

--
-- テーブルの構造 `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_number` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `status` enum('pending','processing','completed','decline') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `tax` decimal(8,2) NOT NULL,
  `sub_total` decimal(8,2) NOT NULL,
  `grand_total` decimal(8,2) NOT NULL,
  `item_count` int(10) UNSIGNED NOT NULL,
  `payment_method` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'stripe',
  `name_on_card` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `charge_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `brand` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `funding` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `exp_month` varchar(2) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `exp_year` varchar(4) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_check` tinyint(1) NOT NULL DEFAULT 0,
  `postal_code_check` tinyint(1) NOT NULL DEFAULT 0,
  `cvc_check` tinyint(1) NOT NULL DEFAULT 0,
  `last4` varchar(4) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_status` tinyint(1) NOT NULL DEFAULT 0,
  `shipped` tinyint(1) NOT NULL DEFAULT 0,
  `delivered` timestamp NULL DEFAULT NULL,
  `error` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `first_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prefecture` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_code` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- テーブルの構造 `order_items`
--

CREATE TABLE `order_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `quantity` int(10) UNSIGNED NOT NULL,
  `price` decimal(8,2) NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attributes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
  `summary` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `overview` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `specification` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quantity` int(10) UNSIGNED NOT NULL,
  `shipping_fee` decimal(8,2) DEFAULT NULL,
  `price` decimal(8,2) NOT NULL,
  `sale_price` decimal(8,2) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `featured` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- テーブルのデータのダンプ `products`
--

INSERT INTO `products` (`id`, `brand_id`, `sku`, `name`, `slug`, `summary`, `overview`, `description`, `specification`, `quantity`, `shipping_fee`, `price`, `sale_price`, `status`, `featured`, `created_at`, `updated_at`) VALUES
(1, 1, 'MacBook Air', 'MacBook Air', 'macBook-air', 'Power. It’s in the Air.', '<p>Our thinnest, lightest notebook, completely transformed by the Apple M1 chip. CPU speeds up to 3.5x faster. GPU speeds up to 5x faster. Our most advanced Neural Engine for up to 9x faster machine learning. The longest battery life ever in a MacBook Air. And a silent, fanless design. This much power has never been this ready to go.</p><ul><li>13.3-inch Retina display</li><li>Apple M1 chip</li><li>Up to 16GB memory</li><li>Up to 2TB storage</li><li>Up to 18 hours battery life</li></ul>', '<h4>Small chip. Giant leap.</h4><p>It’s here. Our first chip designed specifically for Mac. Packed with an astonishing 16 billion transistors, the Apple M1 system on a chip (SoC) integrates the CPU, GPU, Neural Engine, I/O, and so much more onto a single tiny chip. With incredible performance, custom technologies, and industry-leading power efficiency,1 M1 is not just a next step for Mac — it’s another level entirely.</p> <p><strong>Up to 9x faster. Even for a 16‑core Neural Engine, that’s a lot to process.</strong> Apps on MacBook Air can use machine learning (ML) to automatically retouch photos like a pro, make smart tools such as magic wands and audio filters more accurate at auto‑detection, and so much more. That’s not just brain power — that’s the power of a full stack of ML technologies.</p>', NULL, 50, '0.00', '89999.00', NULL, 1, 1, '2021-09-13 08:47:19', '2021-09-13 08:47:19'),
(2, 1, 'MacBook Pro 13”', 'MacBook Pro 13”', 'macbook-pro-13', 'All systems Pro.', '<p>The Apple M1 chip gives the 13‑inch MacBook Pro speed and power beyond belief. With up to 2.8x CPU performance. Up to 5x the graphics speed. Our most advanced Neural Engine for up to 11x faster machine learning. And up to 20 hours of battery life — the longest of any Mac ever. It’s our most popular pro notebook, taken to a whole new level.</p><ul><li>13.3-inch Retina display</li><li>Apple M1 chip <br>Also available with Intel Core i5 or i7 processor</li><li>Up to 16GB memory</li><li>Up to 2TB storage</li><li>Up to 20 hours battery life</li></ul>', '<h4>Small chip. Giant leap.</h4><p>It’s here. Our first chip designed specifically for Mac. Packed with an astonishing 16 billion transistors, the Apple M1 system on a chip (SoC) integrates the CPU, GPU, Neural Engine, I/O, and so much more onto a single tiny chip. With incredible performance, custom technologies, and industry-leading power efficiency,1 M1 is not just a next step for Mac — it’s another level entirely.</p> <p><strong>Up to 9x faster. Even for a 16‑core Neural Engine, that’s a lot to process.</strong> Apps on MacBook Air can use machine learning (ML) to automatically retouch photos like a pro, make smart tools such as magic wands and audio filters more accurate at auto‑detection, and so much more. That’s not just brain power — that’s the power of a full stack of ML technologies.</p>', NULL, 50, '0.00', '129999.00', NULL, 1, 1, '2021-09-13 08:47:19', '2021-09-13 08:47:19'),
(3, 1, 'MacBook Pro 16”', 'MacBook Pro 16”', 'macbook-pro-16', 'The best for the brightest.', '<p>Designed for those who defy limits and change the world, the 16-inch MacBook Pro is by far the most powerful notebook we have ever made. With an immersive Retina display, superfast processors, advanced graphics, the largest battery capacity ever in a MacBook Pro, Magic Keyboard, and massive storage, it’s the ultimate pro notebook for the ultimate user.</p><ul><li>16-inch Retina display with True Tone</li><li>Apple M1 chip</li><li>Up to 16GB memory</li><li>Up to 2TB storage</li><li>Up to 18 hours battery life</li></ul>', '<h4>Small chip. Giant leap.</h4><p>It’s here. Our first chip designed specifically for Mac. Packed with an astonishing 16 billion transistors, the Apple M1 system on a chip (SoC) integrates the CPU, GPU, Neural Engine, I/O, and so much more onto a single tiny chip. With incredible performance, custom technologies, and industry-leading power efficiency,1 M1 is not just a next step for Mac — it’s another level entirely.</p> <p><strong>Up to 9x faster. Even for a 16‑core Neural Engine, that’s a lot to process.</strong> Apps on MacBook Air can use machine learning (ML) to automatically retouch photos like a pro, make smart tools such as magic wands and audio filters more accurate at auto‑detection, and so much more. That’s not just brain power — that’s the power of a full stack of ML technologies.</p>', NULL, 50, '0.00', '239999.00', NULL, 1, 1, '2021-09-13 08:47:19', '2021-09-13 08:47:19'),
(4, 1, 'MacBook Air1', 'MacBook Air1', 'macBook-air1', 'Power. It’s in the Air.', '<p>Our thinnest, lightest notebook, completely transformed by the Apple M1 chip. CPU speeds up to 3.5x faster. GPU speeds up to 5x faster. Our most advanced Neural Engine for up to 9x faster machine learning. The longest battery life ever in a MacBook Air. And a silent, fanless design. This much power has never been this ready to go.</p><ul><li>13.3-inch Retina display</li><li>Apple M1 chip</li><li>Up to 16GB memory</li><li>Up to 2TB storage</li><li>Up to 18 hours battery life</li></ul>', '<h4>Small chip. Giant leap.</h4><p>It’s here. Our first chip designed specifically for Mac. Packed with an astonishing 16 billion transistors, the Apple M1 system on a chip (SoC) integrates the CPU, GPU, Neural Engine, I/O, and so much more onto a single tiny chip. With incredible performance, custom technologies, and industry-leading power efficiency,1 M1 is not just a next step for Mac — it’s another level entirely.</p> <p><strong>Up to 9x faster. Even for a 16‑core Neural Engine, that’s a lot to process.</strong> Apps on MacBook Air can use machine learning (ML) to automatically retouch photos like a pro, make smart tools such as magic wands and audio filters more accurate at auto‑detection, and so much more. That’s not just brain power — that’s the power of a full stack of ML technologies.</p>', NULL, 50, '0.00', '89999.00', NULL, 1, 1, '2021-09-13 08:47:19', '2021-09-13 08:47:19'),
(5, 1, 'MacBook Pro 13” 1', 'MacBook Pro 13” 1', 'macbook-pro-13-1', 'All systems Pro.', '<p>The Apple M1 chip gives the 13‑inch MacBook Pro speed and power beyond belief. With up to 2.8x CPU performance. Up to 5x the graphics speed. Our most advanced Neural Engine for up to 11x faster machine learning. And up to 20 hours of battery life — the longest of any Mac ever. It’s our most popular pro notebook, taken to a whole new level.</p><ul><li>13.3-inch Retina display</li><li>Apple M1 chip <br>Also available with Intel Core i5 or i7 processor</li><li>Up to 16GB memory</li><li>Up to 2TB storage</li><li>Up to 20 hours battery life</li></ul>', '<h4>Small chip. Giant leap.</h4><p>It’s here. Our first chip designed specifically for Mac. Packed with an astonishing 16 billion transistors, the Apple M1 system on a chip (SoC) integrates the CPU, GPU, Neural Engine, I/O, and so much more onto a single tiny chip. With incredible performance, custom technologies, and industry-leading power efficiency,1 M1 is not just a next step for Mac — it’s another level entirely.</p> <p><strong>Up to 9x faster. Even for a 16‑core Neural Engine, that’s a lot to process.</strong> Apps on MacBook Air can use machine learning (ML) to automatically retouch photos like a pro, make smart tools such as magic wands and audio filters more accurate at auto‑detection, and so much more. That’s not just brain power — that’s the power of a full stack of ML technologies.</p>', NULL, 50, '0.00', '129999.00', NULL, 1, 1, '2021-09-13 08:47:19', '2021-09-13 08:47:19'),
(6, 1, 'MacBook Pro 16” 1', 'MacBook Pro 16” 1', 'macbook-pro-16-1', 'The best for the brightest.', '<p>Designed for those who defy limits and change the world, the 16-inch MacBook Pro is by far the most powerful notebook we have ever made. With an immersive Retina display, superfast processors, advanced graphics, the largest battery capacity ever in a MacBook Pro, Magic Keyboard, and massive storage, it’s the ultimate pro notebook for the ultimate user.</p><ul><li>16-inch Retina display with True Tone</li><li>Apple M1 chip</li><li>Up to 16GB memory</li><li>Up to 2TB storage</li><li>Up to 18 hours battery life</li></ul>', '<h4>Small chip. Giant leap.</h4><p>It’s here. Our first chip designed specifically for Mac. Packed with an astonishing 16 billion transistors, the Apple M1 system on a chip (SoC) integrates the CPU, GPU, Neural Engine, I/O, and so much more onto a single tiny chip. With incredible performance, custom technologies, and industry-leading power efficiency,1 M1 is not just a next step for Mac — it’s another level entirely.</p> <p><strong>Up to 9x faster. Even for a 16‑core Neural Engine, that’s a lot to process.</strong> Apps on MacBook Air can use machine learning (ML) to automatically retouch photos like a pro, make smart tools such as magic wands and audio filters more accurate at auto‑detection, and so much more. That’s not just brain power — that’s the power of a full stack of ML technologies.</p>', NULL, 50, '0.00', '239999.00', NULL, 1, 1, '2021-09-13 08:47:19', '2021-09-13 08:47:19'),
(7, 1, 'MacBook Air2', 'MacBook Air2', 'macBook-air2', 'Power. It’s in the Air.', '<p>Our thinnest, lightest notebook, completely transformed by the Apple M1 chip. CPU speeds up to 3.5x faster. GPU speeds up to 5x faster. Our most advanced Neural Engine for up to 9x faster machine learning. The longest battery life ever in a MacBook Air. And a silent, fanless design. This much power has never been this ready to go.</p><ul><li>13.3-inch Retina display</li><li>Apple M1 chip</li><li>Up to 16GB memory</li><li>Up to 2TB storage</li><li>Up to 18 hours battery life</li></ul>', '<h4>Small chip. Giant leap.</h4><p>It’s here. Our first chip designed specifically for Mac. Packed with an astonishing 16 billion transistors, the Apple M1 system on a chip (SoC) integrates the CPU, GPU, Neural Engine, I/O, and so much more onto a single tiny chip. With incredible performance, custom technologies, and industry-leading power efficiency,1 M1 is not just a next step for Mac — it’s another level entirely.</p> <p><strong>Up to 9x faster. Even for a 16‑core Neural Engine, that’s a lot to process.</strong> Apps on MacBook Air can use machine learning (ML) to automatically retouch photos like a pro, make smart tools such as magic wands and audio filters more accurate at auto‑detection, and so much more. That’s not just brain power — that’s the power of a full stack of ML technologies.</p>', NULL, 50, '0.00', '89999.00', NULL, 1, 1, '2021-09-13 08:47:19', '2021-09-13 08:47:19'),
(8, 1, 'MacBook Pro 13” 2', 'MacBook Pro 13” 2', 'macbook-pro-13-2', 'All systems Pro.', '<p>The Apple M1 chip gives the 13‑inch MacBook Pro speed and power beyond belief. With up to 2.8x CPU performance. Up to 5x the graphics speed. Our most advanced Neural Engine for up to 11x faster machine learning. And up to 20 hours of battery life — the longest of any Mac ever. It’s our most popular pro notebook, taken to a whole new level.</p><ul><li>13.3-inch Retina display</li><li>Apple M1 chip <br>Also available with Intel Core i5 or i7 processor</li><li>Up to 16GB memory</li><li>Up to 2TB storage</li><li>Up to 20 hours battery life</li></ul>', '<h4>Small chip. Giant leap.</h4><p>It’s here. Our first chip designed specifically for Mac. Packed with an astonishing 16 billion transistors, the Apple M1 system on a chip (SoC) integrates the CPU, GPU, Neural Engine, I/O, and so much more onto a single tiny chip. With incredible performance, custom technologies, and industry-leading power efficiency,1 M1 is not just a next step for Mac — it’s another level entirely.</p> <p><strong>Up to 9x faster. Even for a 16‑core Neural Engine, that’s a lot to process.</strong> Apps on MacBook Air can use machine learning (ML) to automatically retouch photos like a pro, make smart tools such as magic wands and audio filters more accurate at auto‑detection, and so much more. That’s not just brain power — that’s the power of a full stack of ML technologies.</p>', NULL, 50, '0.00', '129999.00', NULL, 1, 1, '2021-09-13 08:47:19', '2021-09-13 08:47:19'),
(9, 1, 'MacBook Pro 16” 2', 'MacBook Pro 16” 2', 'macbook-pro-16-2', 'The best for the brightest.', '<p>Designed for those who defy limits and change the world, the 16-inch MacBook Pro is by far the most powerful notebook we have ever made. With an immersive Retina display, superfast processors, advanced graphics, the largest battery capacity ever in a MacBook Pro, Magic Keyboard, and massive storage, it’s the ultimate pro notebook for the ultimate user.</p><ul><li>16-inch Retina display with True Tone</li><li>Apple M1 chip</li><li>Up to 16GB memory</li><li>Up to 2TB storage</li><li>Up to 18 hours battery life</li></ul>', '<h4>Small chip. Giant leap.</h4><p>It’s here. Our first chip designed specifically for Mac. Packed with an astonishing 16 billion transistors, the Apple M1 system on a chip (SoC) integrates the CPU, GPU, Neural Engine, I/O, and so much more onto a single tiny chip. With incredible performance, custom technologies, and industry-leading power efficiency,1 M1 is not just a next step for Mac — it’s another level entirely.</p> <p><strong>Up to 9x faster. Even for a 16‑core Neural Engine, that’s a lot to process.</strong> Apps on MacBook Air can use machine learning (ML) to automatically retouch photos like a pro, make smart tools such as magic wands and audio filters more accurate at auto‑detection, and so much more. That’s not just brain power — that’s the power of a full stack of ML technologies.</p>', NULL, 50, '0.00', '239999.00', NULL, 1, 1, '2021-09-13 08:47:19', '2021-09-13 08:47:19'),
(10, 1, 'MacBook Air3', 'MacBook Air3', 'macBook-air3', 'Power. It’s in the Air.', '<p>Our thinnest, lightest notebook, completely transformed by the Apple M1 chip. CPU speeds up to 3.5x faster. GPU speeds up to 5x faster. Our most advanced Neural Engine for up to 9x faster machine learning. The longest battery life ever in a MacBook Air. And a silent, fanless design. This much power has never been this ready to go.</p><ul><li>13.3-inch Retina display</li><li>Apple M1 chip</li><li>Up to 16GB memory</li><li>Up to 2TB storage</li><li>Up to 18 hours battery life</li></ul>', '<h4>Small chip. Giant leap.</h4><p>It’s here. Our first chip designed specifically for Mac. Packed with an astonishing 16 billion transistors, the Apple M1 system on a chip (SoC) integrates the CPU, GPU, Neural Engine, I/O, and so much more onto a single tiny chip. With incredible performance, custom technologies, and industry-leading power efficiency,1 M1 is not just a next step for Mac — it’s another level entirely.</p> <p><strong>Up to 9x faster. Even for a 16‑core Neural Engine, that’s a lot to process.</strong> Apps on MacBook Air can use machine learning (ML) to automatically retouch photos like a pro, make smart tools such as magic wands and audio filters more accurate at auto‑detection, and so much more. That’s not just brain power — that’s the power of a full stack of ML technologies.</p>', NULL, 50, '0.00', '89999.00', NULL, 1, 1, '2021-09-13 08:47:19', '2021-09-13 08:47:19'),
(11, 1, 'MacBook Pro 13” 3', 'MacBook Pro 13” 3', 'macbook-pro-13-3', 'All systems Pro.', '<p>The Apple M1 chip gives the 13‑inch MacBook Pro speed and power beyond belief. With up to 2.8x CPU performance. Up to 5x the graphics speed. Our most advanced Neural Engine for up to 11x faster machine learning. And up to 20 hours of battery life — the longest of any Mac ever. It’s our most popular pro notebook, taken to a whole new level.</p><ul><li>13.3-inch Retina display</li><li>Apple M1 chip <br>Also available with Intel Core i5 or i7 processor</li><li>Up to 16GB memory</li><li>Up to 2TB storage</li><li>Up to 20 hours battery life</li></ul>', '<h4>Small chip. Giant leap.</h4><p>It’s here. Our first chip designed specifically for Mac. Packed with an astonishing 16 billion transistors, the Apple M1 system on a chip (SoC) integrates the CPU, GPU, Neural Engine, I/O, and so much more onto a single tiny chip. With incredible performance, custom technologies, and industry-leading power efficiency,1 M1 is not just a next step for Mac — it’s another level entirely.</p> <p><strong>Up to 9x faster. Even for a 16‑core Neural Engine, that’s a lot to process.</strong> Apps on MacBook Air can use machine learning (ML) to automatically retouch photos like a pro, make smart tools such as magic wands and audio filters more accurate at auto‑detection, and so much more. That’s not just brain power — that’s the power of a full stack of ML technologies.</p>', NULL, 50, '0.00', '129999.00', NULL, 1, 1, '2021-09-13 08:47:19', '2021-09-13 08:47:19'),
(12, 1, 'MacBook Pro 16” 3', 'MacBook Pro 16” 3', 'macbook-pro-16-3', 'The best for the brightest.', '<p>Designed for those who defy limits and change the world, the 16-inch MacBook Pro is by far the most powerful notebook we have ever made. With an immersive Retina display, superfast processors, advanced graphics, the largest battery capacity ever in a MacBook Pro, Magic Keyboard, and massive storage, it’s the ultimate pro notebook for the ultimate user.</p><ul><li>16-inch Retina display with True Tone</li><li>Apple M1 chip</li><li>Up to 16GB memory</li><li>Up to 2TB storage</li><li>Up to 18 hours battery life</li></ul>', '<h4>Small chip. Giant leap.</h4><p>It’s here. Our first chip designed specifically for Mac. Packed with an astonishing 16 billion transistors, the Apple M1 system on a chip (SoC) integrates the CPU, GPU, Neural Engine, I/O, and so much more onto a single tiny chip. With incredible performance, custom technologies, and industry-leading power efficiency,1 M1 is not just a next step for Mac — it’s another level entirely.</p> <p><strong>Up to 9x faster. Even for a 16‑core Neural Engine, that’s a lot to process.</strong> Apps on MacBook Air can use machine learning (ML) to automatically retouch photos like a pro, make smart tools such as magic wands and audio filters more accurate at auto‑detection, and so much more. That’s not just brain power — that’s the power of a full stack of ML technologies.</p>', NULL, 50, '0.00', '239999.00', NULL, 1, 1, '2021-09-13 08:47:19', '2021-09-13 08:47:19'),
(13, 1, 'MacBook Air4', 'MacBook Air4', 'macBook-air4', 'Power. It’s in the Air.', '<p>Our thinnest, lightest notebook, completely transformed by the Apple M1 chip. CPU speeds up to 3.5x faster. GPU speeds up to 5x faster. Our most advanced Neural Engine for up to 9x faster machine learning. The longest battery life ever in a MacBook Air. And a silent, fanless design. This much power has never been this ready to go.</p><ul><li>13.3-inch Retina display</li><li>Apple M1 chip</li><li>Up to 16GB memory</li><li>Up to 2TB storage</li><li>Up to 18 hours battery life</li></ul>', '<h4>Small chip. Giant leap.</h4><p>It’s here. Our first chip designed specifically for Mac. Packed with an astonishing 16 billion transistors, the Apple M1 system on a chip (SoC) integrates the CPU, GPU, Neural Engine, I/O, and so much more onto a single tiny chip. With incredible performance, custom technologies, and industry-leading power efficiency,1 M1 is not just a next step for Mac — it’s another level entirely.</p> <p><strong>Up to 9x faster. Even for a 16‑core Neural Engine, that’s a lot to process.</strong> Apps on MacBook Air can use machine learning (ML) to automatically retouch photos like a pro, make smart tools such as magic wands and audio filters more accurate at auto‑detection, and so much more. That’s not just brain power — that’s the power of a full stack of ML technologies.</p>', NULL, 50, '0.00', '89999.00', NULL, 1, 1, '2021-09-13 08:47:19', '2021-09-13 08:47:19'),
(14, 1, 'MacBook Pro 13” 4', 'MacBook Pro 13” 4', 'macbook-pro-13-4', 'All systems Pro.', '<p>The Apple M1 chip gives the 13‑inch MacBook Pro speed and power beyond belief. With up to 2.8x CPU performance. Up to 5x the graphics speed. Our most advanced Neural Engine for up to 11x faster machine learning. And up to 20 hours of battery life — the longest of any Mac ever. It’s our most popular pro notebook, taken to a whole new level.</p><ul><li>13.3-inch Retina display</li><li>Apple M1 chip <br>Also available with Intel Core i5 or i7 processor</li><li>Up to 16GB memory</li><li>Up to 2TB storage</li><li>Up to 20 hours battery life</li></ul>', '<h4>Small chip. Giant leap.</h4><p>It’s here. Our first chip designed specifically for Mac. Packed with an astonishing 16 billion transistors, the Apple M1 system on a chip (SoC) integrates the CPU, GPU, Neural Engine, I/O, and so much more onto a single tiny chip. With incredible performance, custom technologies, and industry-leading power efficiency,1 M1 is not just a next step for Mac — it’s another level entirely.</p> <p><strong>Up to 9x faster. Even for a 16‑core Neural Engine, that’s a lot to process.</strong> Apps on MacBook Air can use machine learning (ML) to automatically retouch photos like a pro, make smart tools such as magic wands and audio filters more accurate at auto‑detection, and so much more. That’s not just brain power — that’s the power of a full stack of ML technologies.</p>', NULL, 50, '0.00', '129999.00', NULL, 1, 1, '2021-09-13 08:47:19', '2021-09-13 08:47:19'),
(15, 1, 'MacBook Pro 16” 4', 'MacBook Pro 16” 4', 'macbook-pro-16-4', 'The best for the brightest.', '<p>Designed for those who defy limits and change the world, the 16-inch MacBook Pro is by far the most powerful notebook we have ever made. With an immersive Retina display, superfast processors, advanced graphics, the largest battery capacity ever in a MacBook Pro, Magic Keyboard, and massive storage, it’s the ultimate pro notebook for the ultimate user.</p><ul><li>16-inch Retina display with True Tone</li><li>Apple M1 chip</li><li>Up to 16GB memory</li><li>Up to 2TB storage</li><li>Up to 18 hours battery life</li></ul>', '<h4>Small chip. Giant leap.</h4><p>It’s here. Our first chip designed specifically for Mac. Packed with an astonishing 16 billion transistors, the Apple M1 system on a chip (SoC) integrates the CPU, GPU, Neural Engine, I/O, and so much more onto a single tiny chip. With incredible performance, custom technologies, and industry-leading power efficiency,1 M1 is not just a next step for Mac — it’s another level entirely.</p> <p><strong>Up to 9x faster. Even for a 16‑core Neural Engine, that’s a lot to process.</strong> Apps on MacBook Air can use machine learning (ML) to automatically retouch photos like a pro, make smart tools such as magic wands and audio filters more accurate at auto‑detection, and so much more. That’s not just brain power — that’s the power of a full stack of ML technologies.</p>', NULL, 50, '0.00', '239999.00', NULL, 1, 1, '2021-09-13 08:47:19', '2021-09-13 08:47:19'),
(16, 1, 'MacBook Air5', 'MacBook Air5', 'macBook-air5', 'Power. It’s in the Air.', '<p>Our thinnest, lightest notebook, completely transformed by the Apple M1 chip. CPU speeds up to 3.5x faster. GPU speeds up to 5x faster. Our most advanced Neural Engine for up to 9x faster machine learning. The longest battery life ever in a MacBook Air. And a silent, fanless design. This much power has never been this ready to go.</p><ul><li>13.3-inch Retina display</li><li>Apple M1 chip</li><li>Up to 16GB memory</li><li>Up to 2TB storage</li><li>Up to 18 hours battery life</li></ul>', '<h4>Small chip. Giant leap.</h4><p>It’s here. Our first chip designed specifically for Mac. Packed with an astonishing 16 billion transistors, the Apple M1 system on a chip (SoC) integrates the CPU, GPU, Neural Engine, I/O, and so much more onto a single tiny chip. With incredible performance, custom technologies, and industry-leading power efficiency,1 M1 is not just a next step for Mac — it’s another level entirely.</p> <p><strong>Up to 9x faster. Even for a 16‑core Neural Engine, that’s a lot to process.</strong> Apps on MacBook Air can use machine learning (ML) to automatically retouch photos like a pro, make smart tools such as magic wands and audio filters more accurate at auto‑detection, and so much more. That’s not just brain power — that’s the power of a full stack of ML technologies.</p>', NULL, 50, '0.00', '89999.00', NULL, 1, 1, '2021-09-13 08:47:19', '2021-09-13 08:47:19'),
(17, 1, 'MacBook Pro 13” 5', 'MacBook Pro 13” 5', 'macbook-pro-13-5', 'All systems Pro.', '<p>The Apple M1 chip gives the 13‑inch MacBook Pro speed and power beyond belief. With up to 2.8x CPU performance. Up to 5x the graphics speed. Our most advanced Neural Engine for up to 11x faster machine learning. And up to 20 hours of battery life — the longest of any Mac ever. It’s our most popular pro notebook, taken to a whole new level.</p><ul><li>13.3-inch Retina display</li><li>Apple M1 chip <br>Also available with Intel Core i5 or i7 processor</li><li>Up to 16GB memory</li><li>Up to 2TB storage</li><li>Up to 20 hours battery life</li></ul>', '<h4>Small chip. Giant leap.</h4><p>It’s here. Our first chip designed specifically for Mac. Packed with an astonishing 16 billion transistors, the Apple M1 system on a chip (SoC) integrates the CPU, GPU, Neural Engine, I/O, and so much more onto a single tiny chip. With incredible performance, custom technologies, and industry-leading power efficiency,1 M1 is not just a next step for Mac — it’s another level entirely.</p> <p><strong>Up to 9x faster. Even for a 16‑core Neural Engine, that’s a lot to process.</strong> Apps on MacBook Air can use machine learning (ML) to automatically retouch photos like a pro, make smart tools such as magic wands and audio filters more accurate at auto‑detection, and so much more. That’s not just brain power — that’s the power of a full stack of ML technologies.</p>', NULL, 50, '0.00', '129999.00', NULL, 1, 1, '2021-09-13 08:47:19', '2021-09-13 08:47:19'),
(18, 1, 'MacBook Pro 16” 5', 'MacBook Pro 16” 5', 'macbook-pro-16-5', 'The best for the brightest.', '<p>Designed for those who defy limits and change the world, the 16-inch MacBook Pro is by far the most powerful notebook we have ever made. With an immersive Retina display, superfast processors, advanced graphics, the largest battery capacity ever in a MacBook Pro, Magic Keyboard, and massive storage, it’s the ultimate pro notebook for the ultimate user.</p><ul><li>16-inch Retina display with True Tone</li><li>Apple M1 chip</li><li>Up to 16GB memory</li><li>Up to 2TB storage</li><li>Up to 18 hours battery life</li></ul>', '<h4>Small chip. Giant leap.</h4><p>It’s here. Our first chip designed specifically for Mac. Packed with an astonishing 16 billion transistors, the Apple M1 system on a chip (SoC) integrates the CPU, GPU, Neural Engine, I/O, and so much more onto a single tiny chip. With incredible performance, custom technologies, and industry-leading power efficiency,1 M1 is not just a next step for Mac — it’s another level entirely.</p> <p><strong>Up to 9x faster. Even for a 16‑core Neural Engine, that’s a lot to process.</strong> Apps on MacBook Air can use machine learning (ML) to automatically retouch photos like a pro, make smart tools such as magic wands and audio filters more accurate at auto‑detection, and so much more. That’s not just brain power — that’s the power of a full stack of ML technologies.</p>', NULL, 50, '0.00', '239999.00', NULL, 1, 1, '2021-09-13 08:47:19', '2021-09-13 08:47:19'),
(19, 2, 'Inspiron 15 3000 AMD', 'Inspiron 15 3000 AMD', 'inspiron-15-3000-amd', 'Fuel your connections.', '<p>15-inch laptop optimized for fast and smooth performance to keep you connected. Ideal for productivity. Featuring 11th Gen Intel® Core™ processors.</p>', '<h4>Runs smooth. Looks sharp.</h4><p><strong>Power up: </strong>The latest 11th Generation Intel® Core™ processors deliver incredible responsiveness and smooth, seamless multitasking. Enjoy the extra power of optional NVIDIA® GeForce® MX450 discrete graphics with up to 2GB GDDR5 graphics memory.</p><p><strong>Keeps its cool: </strong>A redesigned thermal system unleashes the power of your device while also preserving its thin design. Dual heat pipes move heat away from your CPU and GPU, more fan blades move more air and a drop-hinge allows air to circulate underneath your laptop.</p><p><strong>Peace and quiet: </strong> With a fluid dynamic bearing system, your laptop’s fan is not only long-lasting, but it also runs quietly while keeping your device performing at its best.</p><p><strong>Better performance: </strong>Enjoy up to 512GB PCIe NVMe SSDs for responsive and stable performance on-the-go.</p><p><strong>A does-it-all port: </strong>Available on configurations with an i7 processor, a Thunderbolt™ 4 port over USB Type-C™  supports DisplayPort and Power Delivery, meaning the one port can charge the laptop, connect to peripherals, and supply monitors with a display signal.</p>', NULL, 50, '0.00', '74800.00', NULL, 1, 1, '2021-09-13 08:47:19', '2021-09-13 08:47:19'),
(20, 2, 'G15 Ryzen Edition Gaming', 'G15 Ryzen Edition Gaming', 'g15-ryzen-edition-gaming', 'Power up your skills.', '<p>15.6-inch gaming laptop with AMD Ryzen™ 5000 H-Series Mobile Processors, NVIDIA® GeForce® graphics and Game Shift technology.</p>', '<h4>Take every adventure to its peak</h4><p><strong>Power up: </strong>The latest 11th Generation Intel® Core™ processors deliver incredible responsiveness and smooth, seamless multitasking. Enjoy the extra power of optional NVIDIA® GeForce® MX450 discrete graphics with up to 2GB GDDR5 graphics memory.</p><p><strong>Keeps its cool: </strong>A redesigned thermal system unleashes the power of your device while also preserving its thin design. Dual heat pipes move heat away from your CPU and GPU, more fan blades move more air and a drop-hinge allows air to circulate underneath your laptop.</p><p><strong>Peace and quiet: </strong> With a fluid dynamic bearing system, your laptop’s fan is not only long-lasting, but it also runs quietly while keeping your device performing at its best.</p><p><strong>Better performance: </strong>Enjoy up to 512GB PCIe NVMe SSDs for responsive and stable performance on-the-go.</p><p><strong>A does-it-all port: </strong>Available on configurations with an i7 processor, a Thunderbolt™ 4 port over USB Type-C™  supports DisplayPort and Power Delivery, meaning the one port can charge the laptop, connect to peripherals, and supply monitors with a display signal.</p>', NULL, 50, '0.00', '150364.00', NULL, 1, 1, '2021-09-13 08:47:19', '2021-09-13 08:47:19'),
(21, 2, 'Vostro 5510', 'Vostro 5510', 'vostro-5510', 'Get down to business.', '<p>15.6-inch laptop designed to optimize productivity. Features dual heat pipes and up to the latest 11th Gen Intel® Core™ processors.</p>', '<h4>Take every adventure to its peak</h4><p><strong>Power up: </strong>The latest 11th Generation Intel® Core™ processors deliver incredible responsiveness and smooth, seamless multitasking. Enjoy the extra power of optional NVIDIA® GeForce® MX450 discrete graphics with up to 2GB GDDR5 graphics memory.</p><p><strong>Keeps its cool: </strong>A redesigned thermal system unleashes the power of your device while also preserving its thin design. Dual heat pipes move heat away from your CPU and GPU, more fan blades move more air and a drop-hinge allows air to circulate underneath your laptop.</p><p><strong>Peace and quiet: </strong> With a fluid dynamic bearing system, your laptop’s fan is not only long-lasting, but it also runs quietly while keeping your device performing at its best.</p><p><strong>Better performance: </strong>Enjoy up to 512GB PCIe NVMe SSDs for responsive and stable performance on-the-go.</p><p><strong>A does-it-all port: </strong>Available on configurations with an i7 processor, a Thunderbolt™ 4 port over USB Type-C™  supports DisplayPort and Power Delivery, meaning the one port can charge the laptop, connect to peripherals, and supply monitors with a display signal.</p>', NULL, 50, '0.00', '125982.00', NULL, 1, 1, '2021-09-13 08:47:19', '2021-09-13 08:47:19'),
(22, 2, 'Inspiron 15 3000 AMD 1', 'Inspiron 15 3000 AMD 1', 'inspiron-15-3000-amd-1', 'Fuel your connections.', '<p>15-inch laptop optimized for fast and smooth performance to keep you connected. Ideal for productivity. Featuring 11th Gen Intel® Core™ processors.</p>', '<h4>Runs smooth. Looks sharp.</h4><p><strong>Power up: </strong>The latest 11th Generation Intel® Core™ processors deliver incredible responsiveness and smooth, seamless multitasking. Enjoy the extra power of optional NVIDIA® GeForce® MX450 discrete graphics with up to 2GB GDDR5 graphics memory.</p><p><strong>Keeps its cool: </strong>A redesigned thermal system unleashes the power of your device while also preserving its thin design. Dual heat pipes move heat away from your CPU and GPU, more fan blades move more air and a drop-hinge allows air to circulate underneath your laptop.</p><p><strong>Peace and quiet: </strong> With a fluid dynamic bearing system, your laptop’s fan is not only long-lasting, but it also runs quietly while keeping your device performing at its best.</p><p><strong>Better performance: </strong>Enjoy up to 512GB PCIe NVMe SSDs for responsive and stable performance on-the-go.</p><p><strong>A does-it-all port: </strong>Available on configurations with an i7 processor, a Thunderbolt™ 4 port over USB Type-C™  supports DisplayPort and Power Delivery, meaning the one port can charge the laptop, connect to peripherals, and supply monitors with a display signal.</p>', NULL, 50, '0.00', '74800.00', NULL, 1, 1, '2021-09-13 08:47:19', '2021-09-13 08:47:19'),
(23, 2, 'G15 Ryzen Edition Gaming 1', 'G15 Ryzen Edition Gaming 1', 'g15-ryzen-edition-gaming-1', 'Power up your skills.', '<p>15.6-inch gaming laptop with AMD Ryzen™ 5000 H-Series Mobile Processors, NVIDIA® GeForce® graphics and Game Shift technology.</p>', '<h4>Take every adventure to its peak</h4><p><strong>Power up: </strong>The latest 11th Generation Intel® Core™ processors deliver incredible responsiveness and smooth, seamless multitasking. Enjoy the extra power of optional NVIDIA® GeForce® MX450 discrete graphics with up to 2GB GDDR5 graphics memory.</p><p><strong>Keeps its cool: </strong>A redesigned thermal system unleashes the power of your device while also preserving its thin design. Dual heat pipes move heat away from your CPU and GPU, more fan blades move more air and a drop-hinge allows air to circulate underneath your laptop.</p><p><strong>Peace and quiet: </strong> With a fluid dynamic bearing system, your laptop’s fan is not only long-lasting, but it also runs quietly while keeping your device performing at its best.</p><p><strong>Better performance: </strong>Enjoy up to 512GB PCIe NVMe SSDs for responsive and stable performance on-the-go.</p><p><strong>A does-it-all port: </strong>Available on configurations with an i7 processor, a Thunderbolt™ 4 port over USB Type-C™  supports DisplayPort and Power Delivery, meaning the one port can charge the laptop, connect to peripherals, and supply monitors with a display signal.</p>', NULL, 50, '0.00', '150364.00', NULL, 1, 1, '2021-09-13 08:47:19', '2021-09-13 08:47:19'),
(24, 2, 'Vostro 5510 1', 'Vostro 5510 1', 'vostro-5510-1', 'Get down to business.', '<p>15.6-inch laptop designed to optimize productivity. Features dual heat pipes and up to the latest 11th Gen Intel® Core™ processors.</p>', '<h4>Take every adventure to its peak</h4><p><strong>Power up: </strong>The latest 11th Generation Intel® Core™ processors deliver incredible responsiveness and smooth, seamless multitasking. Enjoy the extra power of optional NVIDIA® GeForce® MX450 discrete graphics with up to 2GB GDDR5 graphics memory.</p><p><strong>Keeps its cool: </strong>A redesigned thermal system unleashes the power of your device while also preserving its thin design. Dual heat pipes move heat away from your CPU and GPU, more fan blades move more air and a drop-hinge allows air to circulate underneath your laptop.</p><p><strong>Peace and quiet: </strong> With a fluid dynamic bearing system, your laptop’s fan is not only long-lasting, but it also runs quietly while keeping your device performing at its best.</p><p><strong>Better performance: </strong>Enjoy up to 512GB PCIe NVMe SSDs for responsive and stable performance on-the-go.</p><p><strong>A does-it-all port: </strong>Available on configurations with an i7 processor, a Thunderbolt™ 4 port over USB Type-C™  supports DisplayPort and Power Delivery, meaning the one port can charge the laptop, connect to peripherals, and supply monitors with a display signal.</p>', NULL, 50, '0.00', '125982.00', NULL, 1, 1, '2021-09-13 08:47:19', '2021-09-13 08:47:19'),
(25, 2, 'Inspiron 15 3000 AMD 2', 'Inspiron 15 3000 AMD 2', 'inspiron-15-3000-amd-2', 'Fuel your connections.', '<p>15-inch laptop optimized for fast and smooth performance to keep you connected. Ideal for productivity. Featuring 11th Gen Intel® Core™ processors.</p>', '<h4>Runs smooth. Looks sharp.</h4><p><strong>Power up: </strong>The latest 11th Generation Intel® Core™ processors deliver incredible responsiveness and smooth, seamless multitasking. Enjoy the extra power of optional NVIDIA® GeForce® MX450 discrete graphics with up to 2GB GDDR5 graphics memory.</p><p><strong>Keeps its cool: </strong>A redesigned thermal system unleashes the power of your device while also preserving its thin design. Dual heat pipes move heat away from your CPU and GPU, more fan blades move more air and a drop-hinge allows air to circulate underneath your laptop.</p><p><strong>Peace and quiet: </strong> With a fluid dynamic bearing system, your laptop’s fan is not only long-lasting, but it also runs quietly while keeping your device performing at its best.</p><p><strong>Better performance: </strong>Enjoy up to 512GB PCIe NVMe SSDs for responsive and stable performance on-the-go.</p><p><strong>A does-it-all port: </strong>Available on configurations with an i7 processor, a Thunderbolt™ 4 port over USB Type-C™  supports DisplayPort and Power Delivery, meaning the one port can charge the laptop, connect to peripherals, and supply monitors with a display signal.</p>', NULL, 50, '0.00', '74800.00', NULL, 1, 1, '2021-09-13 08:47:19', '2021-09-13 08:47:19'),
(26, 2, 'G15 Ryzen Edition Gaming 2', 'G15 Ryzen Edition Gaming 2', 'g15-ryzen-edition-gaming-2', 'Power up your skills.', '<p>15.6-inch gaming laptop with AMD Ryzen™ 5000 H-Series Mobile Processors, NVIDIA® GeForce® graphics and Game Shift technology.</p>', '<h4>Take every adventure to its peak</h4><p><strong>Power up: </strong>The latest 11th Generation Intel® Core™ processors deliver incredible responsiveness and smooth, seamless multitasking. Enjoy the extra power of optional NVIDIA® GeForce® MX450 discrete graphics with up to 2GB GDDR5 graphics memory.</p><p><strong>Keeps its cool: </strong>A redesigned thermal system unleashes the power of your device while also preserving its thin design. Dual heat pipes move heat away from your CPU and GPU, more fan blades move more air and a drop-hinge allows air to circulate underneath your laptop.</p><p><strong>Peace and quiet: </strong> With a fluid dynamic bearing system, your laptop’s fan is not only long-lasting, but it also runs quietly while keeping your device performing at its best.</p><p><strong>Better performance: </strong>Enjoy up to 512GB PCIe NVMe SSDs for responsive and stable performance on-the-go.</p><p><strong>A does-it-all port: </strong>Available on configurations with an i7 processor, a Thunderbolt™ 4 port over USB Type-C™  supports DisplayPort and Power Delivery, meaning the one port can charge the laptop, connect to peripherals, and supply monitors with a display signal.</p>', NULL, 50, '0.00', '150364.00', NULL, 1, 1, '2021-09-13 08:47:19', '2021-09-13 08:47:19'),
(27, 2, 'Vostro 5510 2', 'Vostro 5510 2', 'vostro-5510-2', 'Get down to business.', '<p>15.6-inch laptop designed to optimize productivity. Features dual heat pipes and up to the latest 11th Gen Intel® Core™ processors.</p>', '<h4>Take every adventure to its peak</h4><p><strong>Power up: </strong>The latest 11th Generation Intel® Core™ processors deliver incredible responsiveness and smooth, seamless multitasking. Enjoy the extra power of optional NVIDIA® GeForce® MX450 discrete graphics with up to 2GB GDDR5 graphics memory.</p><p><strong>Keeps its cool: </strong>A redesigned thermal system unleashes the power of your device while also preserving its thin design. Dual heat pipes move heat away from your CPU and GPU, more fan blades move more air and a drop-hinge allows air to circulate underneath your laptop.</p><p><strong>Peace and quiet: </strong> With a fluid dynamic bearing system, your laptop’s fan is not only long-lasting, but it also runs quietly while keeping your device performing at its best.</p><p><strong>Better performance: </strong>Enjoy up to 512GB PCIe NVMe SSDs for responsive and stable performance on-the-go.</p><p><strong>A does-it-all port: </strong>Available on configurations with an i7 processor, a Thunderbolt™ 4 port over USB Type-C™  supports DisplayPort and Power Delivery, meaning the one port can charge the laptop, connect to peripherals, and supply monitors with a display signal.</p>', NULL, 50, '0.00', '125982.00', NULL, 1, 1, '2021-09-13 08:47:19', '2021-09-13 08:47:19'),
(28, 2, 'Inspiron 15 3000 AMD 3', 'Inspiron 15 3000 AMD 3', 'inspiron-15-3000-amd-3', 'Fuel your connections.', '<p>15-inch laptop optimized for fast and smooth performance to keep you connected. Ideal for productivity. Featuring 11th Gen Intel® Core™ processors.</p>', '<h4>Runs smooth. Looks sharp.</h4><p><strong>Power up: </strong>The latest 11th Generation Intel® Core™ processors deliver incredible responsiveness and smooth, seamless multitasking. Enjoy the extra power of optional NVIDIA® GeForce® MX450 discrete graphics with up to 2GB GDDR5 graphics memory.</p><p><strong>Keeps its cool: </strong>A redesigned thermal system unleashes the power of your device while also preserving its thin design. Dual heat pipes move heat away from your CPU and GPU, more fan blades move more air and a drop-hinge allows air to circulate underneath your laptop.</p><p><strong>Peace and quiet: </strong> With a fluid dynamic bearing system, your laptop’s fan is not only long-lasting, but it also runs quietly while keeping your device performing at its best.</p><p><strong>Better performance: </strong>Enjoy up to 512GB PCIe NVMe SSDs for responsive and stable performance on-the-go.</p><p><strong>A does-it-all port: </strong>Available on configurations with an i7 processor, a Thunderbolt™ 4 port over USB Type-C™  supports DisplayPort and Power Delivery, meaning the one port can charge the laptop, connect to peripherals, and supply monitors with a display signal.</p>', NULL, 50, '0.00', '74800.00', NULL, 1, 1, '2021-09-13 08:47:19', '2021-09-13 08:47:19'),
(29, 2, 'G15 Ryzen Edition Gaming 3', 'G15 Ryzen Edition Gaming 3', 'g15-ryzen-edition-gaming-3', 'Power up your skills.', '<p>15.6-inch gaming laptop with AMD Ryzen™ 5000 H-Series Mobile Processors, NVIDIA® GeForce® graphics and Game Shift technology.</p>', '<h4>Take every adventure to its peak</h4><p><strong>Power up: </strong>The latest 11th Generation Intel® Core™ processors deliver incredible responsiveness and smooth, seamless multitasking. Enjoy the extra power of optional NVIDIA® GeForce® MX450 discrete graphics with up to 2GB GDDR5 graphics memory.</p><p><strong>Keeps its cool: </strong>A redesigned thermal system unleashes the power of your device while also preserving its thin design. Dual heat pipes move heat away from your CPU and GPU, more fan blades move more air and a drop-hinge allows air to circulate underneath your laptop.</p><p><strong>Peace and quiet: </strong> With a fluid dynamic bearing system, your laptop’s fan is not only long-lasting, but it also runs quietly while keeping your device performing at its best.</p><p><strong>Better performance: </strong>Enjoy up to 512GB PCIe NVMe SSDs for responsive and stable performance on-the-go.</p><p><strong>A does-it-all port: </strong>Available on configurations with an i7 processor, a Thunderbolt™ 4 port over USB Type-C™  supports DisplayPort and Power Delivery, meaning the one port can charge the laptop, connect to peripherals, and supply monitors with a display signal.</p>', NULL, 50, '0.00', '150364.00', NULL, 1, 1, '2021-09-13 08:47:19', '2021-09-13 08:47:19'),
(30, 2, 'Vostro 5510 3', 'Vostro 5510 3', 'vostro-5510-3', 'Get down to business.', '<p>15.6-inch laptop designed to optimize productivity. Features dual heat pipes and up to the latest 11th Gen Intel® Core™ processors.</p>', '<h4>Take every adventure to its peak</h4><p><strong>Power up: </strong>The latest 11th Generation Intel® Core™ processors deliver incredible responsiveness and smooth, seamless multitasking. Enjoy the extra power of optional NVIDIA® GeForce® MX450 discrete graphics with up to 2GB GDDR5 graphics memory.</p><p><strong>Keeps its cool: </strong>A redesigned thermal system unleashes the power of your device while also preserving its thin design. Dual heat pipes move heat away from your CPU and GPU, more fan blades move more air and a drop-hinge allows air to circulate underneath your laptop.</p><p><strong>Peace and quiet: </strong> With a fluid dynamic bearing system, your laptop’s fan is not only long-lasting, but it also runs quietly while keeping your device performing at its best.</p><p><strong>Better performance: </strong>Enjoy up to 512GB PCIe NVMe SSDs for responsive and stable performance on-the-go.</p><p><strong>A does-it-all port: </strong>Available on configurations with an i7 processor, a Thunderbolt™ 4 port over USB Type-C™  supports DisplayPort and Power Delivery, meaning the one port can charge the laptop, connect to peripherals, and supply monitors with a display signal.</p>', NULL, 50, '0.00', '125982.00', NULL, 1, 1, '2021-09-13 08:47:19', '2021-09-13 08:47:19'),
(31, 2, 'Inspiron 15 3000 AMD 4', 'Inspiron 15 3000 AMD 4', 'inspiron-15-3000-amd-4', 'Fuel your connections.', '<p>15-inch laptop optimized for fast and smooth performance to keep you connected. Ideal for productivity. Featuring 11th Gen Intel® Core™ processors.</p>', '<h4>Runs smooth. Looks sharp.</h4><p><strong>Power up: </strong>The latest 11th Generation Intel® Core™ processors deliver incredible responsiveness and smooth, seamless multitasking. Enjoy the extra power of optional NVIDIA® GeForce® MX450 discrete graphics with up to 2GB GDDR5 graphics memory.</p><p><strong>Keeps its cool: </strong>A redesigned thermal system unleashes the power of your device while also preserving its thin design. Dual heat pipes move heat away from your CPU and GPU, more fan blades move more air and a drop-hinge allows air to circulate underneath your laptop.</p><p><strong>Peace and quiet: </strong> With a fluid dynamic bearing system, your laptop’s fan is not only long-lasting, but it also runs quietly while keeping your device performing at its best.</p><p><strong>Better performance: </strong>Enjoy up to 512GB PCIe NVMe SSDs for responsive and stable performance on-the-go.</p><p><strong>A does-it-all port: </strong>Available on configurations with an i7 processor, a Thunderbolt™ 4 port over USB Type-C™  supports DisplayPort and Power Delivery, meaning the one port can charge the laptop, connect to peripherals, and supply monitors with a display signal.</p>', NULL, 50, '0.00', '74800.00', NULL, 1, 1, '2021-09-13 08:47:19', '2021-09-13 08:47:19'),
(32, 2, 'G15 Ryzen Edition Gaming 4', 'G15 Ryzen Edition Gaming 4', 'g15-ryzen-edition-gaming-4', 'Power up your skills.', '<p>15.6-inch gaming laptop with AMD Ryzen™ 5000 H-Series Mobile Processors, NVIDIA® GeForce® graphics and Game Shift technology.</p>', '<h4>Take every adventure to its peak</h4><p><strong>Power up: </strong>The latest 11th Generation Intel® Core™ processors deliver incredible responsiveness and smooth, seamless multitasking. Enjoy the extra power of optional NVIDIA® GeForce® MX450 discrete graphics with up to 2GB GDDR5 graphics memory.</p><p><strong>Keeps its cool: </strong>A redesigned thermal system unleashes the power of your device while also preserving its thin design. Dual heat pipes move heat away from your CPU and GPU, more fan blades move more air and a drop-hinge allows air to circulate underneath your laptop.</p><p><strong>Peace and quiet: </strong> With a fluid dynamic bearing system, your laptop’s fan is not only long-lasting, but it also runs quietly while keeping your device performing at its best.</p><p><strong>Better performance: </strong>Enjoy up to 512GB PCIe NVMe SSDs for responsive and stable performance on-the-go.</p><p><strong>A does-it-all port: </strong>Available on configurations with an i7 processor, a Thunderbolt™ 4 port over USB Type-C™  supports DisplayPort and Power Delivery, meaning the one port can charge the laptop, connect to peripherals, and supply monitors with a display signal.</p>', NULL, 50, '0.00', '150364.00', NULL, 1, 1, '2021-09-13 08:47:19', '2021-09-13 08:47:19');
INSERT INTO `products` (`id`, `brand_id`, `sku`, `name`, `slug`, `summary`, `overview`, `description`, `specification`, `quantity`, `shipping_fee`, `price`, `sale_price`, `status`, `featured`, `created_at`, `updated_at`) VALUES
(33, 2, 'Vostro 5510 4', 'Vostro 5510 4', 'vostro-5510-4', 'Get down to business.', '<p>15.6-inch laptop designed to optimize productivity. Features dual heat pipes and up to the latest 11th Gen Intel® Core™ processors.</p>', '<h4>Take every adventure to its peak</h4><p><strong>Power up: </strong>The latest 11th Generation Intel® Core™ processors deliver incredible responsiveness and smooth, seamless multitasking. Enjoy the extra power of optional NVIDIA® GeForce® MX450 discrete graphics with up to 2GB GDDR5 graphics memory.</p><p><strong>Keeps its cool: </strong>A redesigned thermal system unleashes the power of your device while also preserving its thin design. Dual heat pipes move heat away from your CPU and GPU, more fan blades move more air and a drop-hinge allows air to circulate underneath your laptop.</p><p><strong>Peace and quiet: </strong> With a fluid dynamic bearing system, your laptop’s fan is not only long-lasting, but it also runs quietly while keeping your device performing at its best.</p><p><strong>Better performance: </strong>Enjoy up to 512GB PCIe NVMe SSDs for responsive and stable performance on-the-go.</p><p><strong>A does-it-all port: </strong>Available on configurations with an i7 processor, a Thunderbolt™ 4 port over USB Type-C™  supports DisplayPort and Power Delivery, meaning the one port can charge the laptop, connect to peripherals, and supply monitors with a display signal.</p>', NULL, 50, '0.00', '125982.00', NULL, 1, 1, '2021-09-13 08:47:19', '2021-09-13 08:47:19'),
(34, 2, 'Inspiron 15 3000 AMD 5', 'Inspiron 15 3000 AMD 5', 'inspiron-15-3000-amd-5', 'Fuel your connections.', '<p>15-inch laptop optimized for fast and smooth performance to keep you connected. Ideal for productivity. Featuring 11th Gen Intel® Core™ processors.</p>', '<h4>Runs smooth. Looks sharp.</h4><p><strong>Power up: </strong>The latest 11th Generation Intel® Core™ processors deliver incredible responsiveness and smooth, seamless multitasking. Enjoy the extra power of optional NVIDIA® GeForce® MX450 discrete graphics with up to 2GB GDDR5 graphics memory.</p><p><strong>Keeps its cool: </strong>A redesigned thermal system unleashes the power of your device while also preserving its thin design. Dual heat pipes move heat away from your CPU and GPU, more fan blades move more air and a drop-hinge allows air to circulate underneath your laptop.</p><p><strong>Peace and quiet: </strong> With a fluid dynamic bearing system, your laptop’s fan is not only long-lasting, but it also runs quietly while keeping your device performing at its best.</p><p><strong>Better performance: </strong>Enjoy up to 512GB PCIe NVMe SSDs for responsive and stable performance on-the-go.</p><p><strong>A does-it-all port: </strong>Available on configurations with an i7 processor, a Thunderbolt™ 4 port over USB Type-C™  supports DisplayPort and Power Delivery, meaning the one port can charge the laptop, connect to peripherals, and supply monitors with a display signal.</p>', NULL, 50, '0.00', '74800.00', NULL, 1, 1, '2021-09-13 08:47:19', '2021-09-13 08:47:19'),
(35, 2, 'G15 Ryzen Edition Gaming 5', 'G15 Ryzen Edition Gaming 5', 'g15-ryzen-edition-gaming-5', 'Power up your skills.', '<p>15.6-inch gaming laptop with AMD Ryzen™ 5000 H-Series Mobile Processors, NVIDIA® GeForce® graphics and Game Shift technology.</p>', '<h4>Take every adventure to its peak</h4><p><strong>Power up: </strong>The latest 11th Generation Intel® Core™ processors deliver incredible responsiveness and smooth, seamless multitasking. Enjoy the extra power of optional NVIDIA® GeForce® MX450 discrete graphics with up to 2GB GDDR5 graphics memory.</p><p><strong>Keeps its cool: </strong>A redesigned thermal system unleashes the power of your device while also preserving its thin design. Dual heat pipes move heat away from your CPU and GPU, more fan blades move more air and a drop-hinge allows air to circulate underneath your laptop.</p><p><strong>Peace and quiet: </strong> With a fluid dynamic bearing system, your laptop’s fan is not only long-lasting, but it also runs quietly while keeping your device performing at its best.</p><p><strong>Better performance: </strong>Enjoy up to 512GB PCIe NVMe SSDs for responsive and stable performance on-the-go.</p><p><strong>A does-it-all port: </strong>Available on configurations with an i7 processor, a Thunderbolt™ 4 port over USB Type-C™  supports DisplayPort and Power Delivery, meaning the one port can charge the laptop, connect to peripherals, and supply monitors with a display signal.</p>', NULL, 50, '0.00', '150364.00', NULL, 1, 1, '2021-09-13 08:47:19', '2021-09-13 08:47:19'),
(36, 2, 'Vostro 5510 5', 'Vostro 5510 5', 'vostro-5510-5', 'Get down to business.', '<p>15.6-inch laptop designed to optimize productivity. Features dual heat pipes and up to the latest 11th Gen Intel® Core™ processors.</p>', '<h4>Take every adventure to its peak</h4><p><strong>Power up: </strong>The latest 11th Generation Intel® Core™ processors deliver incredible responsiveness and smooth, seamless multitasking. Enjoy the extra power of optional NVIDIA® GeForce® MX450 discrete graphics with up to 2GB GDDR5 graphics memory.</p><p><strong>Keeps its cool: </strong>A redesigned thermal system unleashes the power of your device while also preserving its thin design. Dual heat pipes move heat away from your CPU and GPU, more fan blades move more air and a drop-hinge allows air to circulate underneath your laptop.</p><p><strong>Peace and quiet: </strong> With a fluid dynamic bearing system, your laptop’s fan is not only long-lasting, but it also runs quietly while keeping your device performing at its best.</p><p><strong>Better performance: </strong>Enjoy up to 512GB PCIe NVMe SSDs for responsive and stable performance on-the-go.</p><p><strong>A does-it-all port: </strong>Available on configurations with an i7 processor, a Thunderbolt™ 4 port over USB Type-C™  supports DisplayPort and Power Delivery, meaning the one port can charge the laptop, connect to peripherals, and supply monitors with a display signal.</p>', NULL, 50, '0.00', '125982.00', NULL, 1, 1, '2021-09-13 08:47:19', '2021-09-13 08:47:19'),
(37, 3, 'HP ProBook 430 G8 Notebook PC', 'HP ProBook 430 G8 Notebook PC', 'hp-probook-430-g8-notebook-pc', 'Power and style for your growing business', '<p><ul><li>Windows 10 Pro 64</li><li>11th Generation Intel® Core™ i7 processor</li><li>16 GB memory; 512 GB SSD storage; 32 GB CPIe NVMe Intel® Optane</li><li>13.3\" diagonal FHD display</li><li>Intel® Iris® Xᵉ Graphics</li></ul></p>', '<p>With a new compact design, the HP ProBook 430 Laptop PC delivers commercial performance, security, and durability to professionals at growing companies who move from desk to meeting room to home.</p><h4>A new design that fits modern workstyles</h4><p>The compact, light, 16mm chassis with aluminum components is easy to carry from place to place. Enjoy an over 84-percent screen-to-body ratio and a quiet, responsive keyboard.</p><h4>Protected by HP Wolf Security</h4><p>HP Wolf Security for Business creates a hardware-enforced, always-on, resilient defense. From the BIOS to the browser, above, in, and below the OS, these constantly evolving solutions help protect your PC from modern threats.</p><h4>Power that lasts</h4><p>Equipped with the latest Intel® processor[2] and high- performance memory, the HP ProBook 430 drives performance with long battery life and high-speed solid-state drives.</p><hr><h4>Return & exchange information</h4><p>HP.com will accept returns or exchanges for this product up to 30 days after delivery. A restocking fee may apply. For details, please visit: https://www.hp.com/us-en/shop/cv/returnsandexchanges.</p>', NULL, 50, '0.00', '118900.00', NULL, 1, 1, '2021-09-13 08:47:19', '2021-09-13 08:47:19'),
(38, 3, 'HP 250 G7 Notebook PC', 'HP 250 G7 Notebook PC', 'hp-250-g7-notebook-pc', 'Affordable notebooks with essential business features', '<p><ul><li>Windows 10 Pro 64</li><li>11th Generation Intel® Core™ i7 processor</li><li>16 GB memory; 512 GB SSD storage; 32 GB CPIe NVMe Intel® Optane</li><li>13.3\" diagonal FHD display</li><li>Intel® Iris® Xᵉ Graphics</li></ul></p>', '<p>Get connected with the value-priced HP 250 Laptop PC with the latest technology and a durable chassis that helps protect the PC. Complete business tasks with Intel® processors[2] and essential collaboration tools.</p><h4>Powered for business</h4><p>The compact, light, 16mm chassis with aluminum components is easy to carry from place to place. Enjoy an over 84-percent screen-to-body ratio and a quiet, responsive keyboard.</p><h4>Durable mobile design</h4><p>HP Wolf Security for Business creates a hardware-enforced, always-on, resilient defense. From the BIOS to the browser, above, in, and below the OS, these constantly evolving solutions help protect your PC from modern threats.</p><h4>Power that lasts</h4><p>Equipped with the latest Intel® processor[2] and high- performance memory, the HP ProBook 430 drives performance with long battery life and high-speed solid-state drives.</p><hr><h4>Return & exchange information</h4><p>HP.com will accept returns or exchanges for this product up to 30 days after delivery. A restocking fee may apply. For details, please visit: https://www.hp.com/us-en/shop/cv/returnsandexchanges.</p>', NULL, 50, '0.00', '84900.00', NULL, 1, 1, '2021-09-13 08:47:19', '2021-09-13 08:47:19'),
(39, 3, 'HP ZBook Firefly 15.6 inch G8 Mobile Workstation PC', 'HP ZBook Firefly 15.6 inch G8 Mobile Workstation PC', 'hp-zbook-firefly-g8-mobile-workstation-pc', 'High-end performance for technical and creative professionals', '<p><ul><li>Windows 10 Pro 64</li><li>11th Generation Intel® Core™ i7 processor</li><li>16 GB memory; 512 GB SSD storage; 32 GB CPIe NVMe Intel® Optane</li><li>13.3\" diagonal FHD display</li><li>Intel® Iris® Xᵉ Graphics</li></ul></p>', '<p>Our lightest 15” ZBook provides true mobility for people who push the typical business PC past its breaking point. In the office or in the field, with pro-level performance and a full-size numeric keypad, you have everything to review work and manage projects from anywhere.</p><h4>Powered for business</h4><p>The compact, light, 16mm chassis with aluminum components is easy to carry from place to place. Enjoy an over 84-percent screen-to-body ratio and a quiet, responsive keyboard.</p><h4>Durable mobile design</h4><p>HP Wolf Security for Business creates a hardware-enforced, always-on, resilient defense. From the BIOS to the browser, above, in, and below the OS, these constantly evolving solutions help protect your PC from modern threats.</p><h4>Power that lasts</h4><p>Equipped with the latest Intel® processor[2] and high- performance memory, the HP ProBook 430 drives performance with long battery life and high-speed solid-state drives.</p><hr><h4>Return & exchange information</h4><p>HP.com will accept returns or exchanges for this product up to 30 days after delivery. A restocking fee may apply. For details, please visit: https://www.hp.com/us-en/shop/cv/returnsandexchanges.</p>', NULL, 50, '0.00', '179900.00', NULL, 1, 1, '2021-09-13 08:47:19', '2021-09-13 08:47:19'),
(40, 3, 'HP ProBook 430 G8 Notebook PC1', 'HP ProBook 430 G8 Notebook PC1', 'hp-probook-430-g8-notebook-pc1', 'Power and style for your growing business', '<p><ul><li>Windows 10 Pro 64</li><li>11th Generation Intel® Core™ i7 processor</li><li>16 GB memory; 512 GB SSD storage; 32 GB CPIe NVMe Intel® Optane</li><li>13.3\" diagonal FHD display</li><li>Intel® Iris® Xᵉ Graphics</li></ul></p>', '<p>With a new compact design, the HP ProBook 430 Laptop PC delivers commercial performance, security, and durability to professionals at growing companies who move from desk to meeting room to home.</p><h4>A new design that fits modern workstyles</h4><p>The compact, light, 16mm chassis with aluminum components is easy to carry from place to place. Enjoy an over 84-percent screen-to-body ratio and a quiet, responsive keyboard.</p><h4>Protected by HP Wolf Security</h4><p>HP Wolf Security for Business creates a hardware-enforced, always-on, resilient defense. From the BIOS to the browser, above, in, and below the OS, these constantly evolving solutions help protect your PC from modern threats.</p><h4>Power that lasts</h4><p>Equipped with the latest Intel® processor[2] and high- performance memory, the HP ProBook 430 drives performance with long battery life and high-speed solid-state drives.</p><hr><h4>Return & exchange information</h4><p>HP.com will accept returns or exchanges for this product up to 30 days after delivery. A restocking fee may apply. For details, please visit: https://www.hp.com/us-en/shop/cv/returnsandexchanges.</p>', NULL, 50, '0.00', '118900.00', NULL, 1, 1, '2021-09-13 08:47:19', '2021-09-13 08:47:19'),
(41, 3, 'HP 250 G7 Notebook PC1', 'HP 250 G7 Notebook PC1', 'hp-250-g7-notebook-pc1', 'Affordable notebooks with essential business features', '<p><ul><li>Windows 10 Pro 64</li><li>11th Generation Intel® Core™ i7 processor</li><li>16 GB memory; 512 GB SSD storage; 32 GB CPIe NVMe Intel® Optane</li><li>13.3\" diagonal FHD display</li><li>Intel® Iris® Xᵉ Graphics</li></ul></p>', '<p>Get connected with the value-priced HP 250 Laptop PC with the latest technology and a durable chassis that helps protect the PC. Complete business tasks with Intel® processors[2] and essential collaboration tools.</p><h4>Powered for business</h4><p>The compact, light, 16mm chassis with aluminum components is easy to carry from place to place. Enjoy an over 84-percent screen-to-body ratio and a quiet, responsive keyboard.</p><h4>Durable mobile design</h4><p>HP Wolf Security for Business creates a hardware-enforced, always-on, resilient defense. From the BIOS to the browser, above, in, and below the OS, these constantly evolving solutions help protect your PC from modern threats.</p><h4>Power that lasts</h4><p>Equipped with the latest Intel® processor[2] and high- performance memory, the HP ProBook 430 drives performance with long battery life and high-speed solid-state drives.</p><hr><h4>Return & exchange information</h4><p>HP.com will accept returns or exchanges for this product up to 30 days after delivery. A restocking fee may apply. For details, please visit: https://www.hp.com/us-en/shop/cv/returnsandexchanges.</p>', NULL, 50, '0.00', '84900.00', NULL, 1, 1, '2021-09-13 08:47:19', '2021-09-13 08:47:19'),
(42, 3, 'HP ZBook Firefly 15.6 inch G8 Mobile Workstation PC1', 'HP ZBook Firefly 15.6 inch G8 Mobile Workstation PC1', 'hp-zbook-firefly-g8-mobile-workstation-pc1', 'High-end performance for technical and creative professionals', '<p><ul><li>Windows 10 Pro 64</li><li>11th Generation Intel® Core™ i7 processor</li><li>16 GB memory; 512 GB SSD storage; 32 GB CPIe NVMe Intel® Optane</li><li>13.3\" diagonal FHD display</li><li>Intel® Iris® Xᵉ Graphics</li></ul></p>', '<p>Our lightest 15” ZBook provides true mobility for people who push the typical business PC past its breaking point. In the office or in the field, with pro-level performance and a full-size numeric keypad, you have everything to review work and manage projects from anywhere.</p><h4>Powered for business</h4><p>The compact, light, 16mm chassis with aluminum components is easy to carry from place to place. Enjoy an over 84-percent screen-to-body ratio and a quiet, responsive keyboard.</p><h4>Durable mobile design</h4><p>HP Wolf Security for Business creates a hardware-enforced, always-on, resilient defense. From the BIOS to the browser, above, in, and below the OS, these constantly evolving solutions help protect your PC from modern threats.</p><h4>Power that lasts</h4><p>Equipped with the latest Intel® processor[2] and high- performance memory, the HP ProBook 430 drives performance with long battery life and high-speed solid-state drives.</p><hr><h4>Return & exchange information</h4><p>HP.com will accept returns or exchanges for this product up to 30 days after delivery. A restocking fee may apply. For details, please visit: https://www.hp.com/us-en/shop/cv/returnsandexchanges.</p>', NULL, 50, '0.00', '179900.00', NULL, 1, 1, '2021-09-13 08:47:19', '2021-09-13 08:47:19'),
(43, 3, 'HP ProBook 430 G8 Notebook PC2', 'HP ProBook 430 G8 Notebook PC2', 'hp-probook-430-g8-notebook-pc2', 'Power and style for your growing business', '<p><ul><li>Windows 10 Pro 64</li><li>11th Generation Intel® Core™ i7 processor</li><li>16 GB memory; 512 GB SSD storage; 32 GB CPIe NVMe Intel® Optane</li><li>13.3\" diagonal FHD display</li><li>Intel® Iris® Xᵉ Graphics</li></ul></p>', '<p>With a new compact design, the HP ProBook 430 Laptop PC delivers commercial performance, security, and durability to professionals at growing companies who move from desk to meeting room to home.</p><h4>A new design that fits modern workstyles</h4><p>The compact, light, 16mm chassis with aluminum components is easy to carry from place to place. Enjoy an over 84-percent screen-to-body ratio and a quiet, responsive keyboard.</p><h4>Protected by HP Wolf Security</h4><p>HP Wolf Security for Business creates a hardware-enforced, always-on, resilient defense. From the BIOS to the browser, above, in, and below the OS, these constantly evolving solutions help protect your PC from modern threats.</p><h4>Power that lasts</h4><p>Equipped with the latest Intel® processor[2] and high- performance memory, the HP ProBook 430 drives performance with long battery life and high-speed solid-state drives.</p><hr><h4>Return & exchange information</h4><p>HP.com will accept returns or exchanges for this product up to 30 days after delivery. A restocking fee may apply. For details, please visit: https://www.hp.com/us-en/shop/cv/returnsandexchanges.</p>', NULL, 50, '0.00', '118900.00', NULL, 1, 1, '2021-09-13 08:47:19', '2021-09-13 08:47:19'),
(44, 3, 'HP 250 G7 Notebook PC2', 'HP 250 G7 Notebook PC2', 'hp-250-g7-notebook-pc2', 'Affordable notebooks with essential business features', '<p><ul><li>Windows 10 Pro 64</li><li>11th Generation Intel® Core™ i7 processor</li><li>16 GB memory; 512 GB SSD storage; 32 GB CPIe NVMe Intel® Optane</li><li>13.3\" diagonal FHD display</li><li>Intel® Iris® Xᵉ Graphics</li></ul></p>', '<p>Get connected with the value-priced HP 250 Laptop PC with the latest technology and a durable chassis that helps protect the PC. Complete business tasks with Intel® processors[2] and essential collaboration tools.</p><h4>Powered for business</h4><p>The compact, light, 16mm chassis with aluminum components is easy to carry from place to place. Enjoy an over 84-percent screen-to-body ratio and a quiet, responsive keyboard.</p><h4>Durable mobile design</h4><p>HP Wolf Security for Business creates a hardware-enforced, always-on, resilient defense. From the BIOS to the browser, above, in, and below the OS, these constantly evolving solutions help protect your PC from modern threats.</p><h4>Power that lasts</h4><p>Equipped with the latest Intel® processor[2] and high- performance memory, the HP ProBook 430 drives performance with long battery life and high-speed solid-state drives.</p><hr><h4>Return & exchange information</h4><p>HP.com will accept returns or exchanges for this product up to 30 days after delivery. A restocking fee may apply. For details, please visit: https://www.hp.com/us-en/shop/cv/returnsandexchanges.</p>', NULL, 50, '0.00', '84900.00', NULL, 1, 1, '2021-09-13 08:47:19', '2021-09-13 08:47:19'),
(45, 3, 'HP ZBook Firefly 15.6 inch G8 Mobile Workstation PC2', 'HP ZBook Firefly 15.6 inch G8 Mobile Workstation PC2', 'hp-zbook-firefly-g8-mobile-workstation-pc2', 'High-end performance for technical and creative professionals', '<p><ul><li>Windows 10 Pro 64</li><li>11th Generation Intel® Core™ i7 processor</li><li>16 GB memory; 512 GB SSD storage; 32 GB CPIe NVMe Intel® Optane</li><li>13.3\" diagonal FHD display</li><li>Intel® Iris® Xᵉ Graphics</li></ul></p>', '<p>Our lightest 15” ZBook provides true mobility for people who push the typical business PC past its breaking point. In the office or in the field, with pro-level performance and a full-size numeric keypad, you have everything to review work and manage projects from anywhere.</p><h4>Powered for business</h4><p>The compact, light, 16mm chassis with aluminum components is easy to carry from place to place. Enjoy an over 84-percent screen-to-body ratio and a quiet, responsive keyboard.</p><h4>Durable mobile design</h4><p>HP Wolf Security for Business creates a hardware-enforced, always-on, resilient defense. From the BIOS to the browser, above, in, and below the OS, these constantly evolving solutions help protect your PC from modern threats.</p><h4>Power that lasts</h4><p>Equipped with the latest Intel® processor[2] and high- performance memory, the HP ProBook 430 drives performance with long battery life and high-speed solid-state drives.</p><hr><h4>Return & exchange information</h4><p>HP.com will accept returns or exchanges for this product up to 30 days after delivery. A restocking fee may apply. For details, please visit: https://www.hp.com/us-en/shop/cv/returnsandexchanges.</p>', NULL, 50, '0.00', '179900.00', NULL, 1, 1, '2021-09-13 08:47:19', '2021-09-13 08:47:19'),
(46, 3, 'HP ProBook 430 G8 Notebook PC3', 'HP ProBook 430 G8 Notebook PC3', 'hp-probook-430-g8-notebook-pc3', 'Power and style for your growing business', '<p><ul><li>Windows 10 Pro 64</li><li>11th Generation Intel® Core™ i7 processor</li><li>16 GB memory; 512 GB SSD storage; 32 GB CPIe NVMe Intel® Optane</li><li>13.3\" diagonal FHD display</li><li>Intel® Iris® Xᵉ Graphics</li></ul></p>', '<p>With a new compact design, the HP ProBook 430 Laptop PC delivers commercial performance, security, and durability to professionals at growing companies who move from desk to meeting room to home.</p><h4>A new design that fits modern workstyles</h4><p>The compact, light, 16mm chassis with aluminum components is easy to carry from place to place. Enjoy an over 84-percent screen-to-body ratio and a quiet, responsive keyboard.</p><h4>Protected by HP Wolf Security</h4><p>HP Wolf Security for Business creates a hardware-enforced, always-on, resilient defense. From the BIOS to the browser, above, in, and below the OS, these constantly evolving solutions help protect your PC from modern threats.</p><h4>Power that lasts</h4><p>Equipped with the latest Intel® processor[2] and high- performance memory, the HP ProBook 430 drives performance with long battery life and high-speed solid-state drives.</p><hr><h4>Return & exchange information</h4><p>HP.com will accept returns or exchanges for this product up to 30 days after delivery. A restocking fee may apply. For details, please visit: https://www.hp.com/us-en/shop/cv/returnsandexchanges.</p>', NULL, 50, '0.00', '118900.00', NULL, 1, 1, '2021-09-13 08:47:19', '2021-09-13 08:47:19'),
(47, 3, 'HP 250 G7 Notebook PC3', 'HP 250 G7 Notebook PC3', 'hp-250-g7-notebook-pc3', 'Affordable notebooks with essential business features', '<p><ul><li>Windows 10 Pro 64</li><li>11th Generation Intel® Core™ i7 processor</li><li>16 GB memory; 512 GB SSD storage; 32 GB CPIe NVMe Intel® Optane</li><li>13.3\" diagonal FHD display</li><li>Intel® Iris® Xᵉ Graphics</li></ul></p>', '<p>Get connected with the value-priced HP 250 Laptop PC with the latest technology and a durable chassis that helps protect the PC. Complete business tasks with Intel® processors[2] and essential collaboration tools.</p><h4>Powered for business</h4><p>The compact, light, 16mm chassis with aluminum components is easy to carry from place to place. Enjoy an over 84-percent screen-to-body ratio and a quiet, responsive keyboard.</p><h4>Durable mobile design</h4><p>HP Wolf Security for Business creates a hardware-enforced, always-on, resilient defense. From the BIOS to the browser, above, in, and below the OS, these constantly evolving solutions help protect your PC from modern threats.</p><h4>Power that lasts</h4><p>Equipped with the latest Intel® processor[2] and high- performance memory, the HP ProBook 430 drives performance with long battery life and high-speed solid-state drives.</p><hr><h4>Return & exchange information</h4><p>HP.com will accept returns or exchanges for this product up to 30 days after delivery. A restocking fee may apply. For details, please visit: https://www.hp.com/us-en/shop/cv/returnsandexchanges.</p>', NULL, 50, '0.00', '84900.00', NULL, 1, 1, '2021-09-13 08:47:19', '2021-09-13 08:47:19'),
(48, 3, 'HP ZBook Firefly 15.6 inch G8 Mobile Workstation PC3', 'HP ZBook Firefly 15.6 inch G8 Mobile Workstation PC3', 'hp-zbook-firefly-g8-mobile-workstation-pc3', 'High-end performance for technical and creative professionals', '<p><ul><li>Windows 10 Pro 64</li><li>11th Generation Intel® Core™ i7 processor</li><li>16 GB memory; 512 GB SSD storage; 32 GB CPIe NVMe Intel® Optane</li><li>13.3\" diagonal FHD display</li><li>Intel® Iris® Xᵉ Graphics</li></ul></p>', '<p>Our lightest 15” ZBook provides true mobility for people who push the typical business PC past its breaking point. In the office or in the field, with pro-level performance and a full-size numeric keypad, you have everything to review work and manage projects from anywhere.</p><h4>Powered for business</h4><p>The compact, light, 16mm chassis with aluminum components is easy to carry from place to place. Enjoy an over 84-percent screen-to-body ratio and a quiet, responsive keyboard.</p><h4>Durable mobile design</h4><p>HP Wolf Security for Business creates a hardware-enforced, always-on, resilient defense. From the BIOS to the browser, above, in, and below the OS, these constantly evolving solutions help protect your PC from modern threats.</p><h4>Power that lasts</h4><p>Equipped with the latest Intel® processor[2] and high- performance memory, the HP ProBook 430 drives performance with long battery life and high-speed solid-state drives.</p><hr><h4>Return & exchange information</h4><p>HP.com will accept returns or exchanges for this product up to 30 days after delivery. A restocking fee may apply. For details, please visit: https://www.hp.com/us-en/shop/cv/returnsandexchanges.</p>', NULL, 50, '0.00', '179900.00', NULL, 1, 1, '2021-09-13 08:47:19', '2021-09-13 08:47:19'),
(49, 3, 'HP ProBook 430 G8 Notebook PC4', 'HP ProBook 430 G8 Notebook PC4', 'hp-probook-430-g8-notebook-pc4', 'Power and style for your growing business', '<p><ul><li>Windows 10 Pro 64</li><li>11th Generation Intel® Core™ i7 processor</li><li>16 GB memory; 512 GB SSD storage; 32 GB CPIe NVMe Intel® Optane</li><li>13.3\" diagonal FHD display</li><li>Intel® Iris® Xᵉ Graphics</li></ul></p>', '<p>With a new compact design, the HP ProBook 430 Laptop PC delivers commercial performance, security, and durability to professionals at growing companies who move from desk to meeting room to home.</p><h4>A new design that fits modern workstyles</h4><p>The compact, light, 16mm chassis with aluminum components is easy to carry from place to place. Enjoy an over 84-percent screen-to-body ratio and a quiet, responsive keyboard.</p><h4>Protected by HP Wolf Security</h4><p>HP Wolf Security for Business creates a hardware-enforced, always-on, resilient defense. From the BIOS to the browser, above, in, and below the OS, these constantly evolving solutions help protect your PC from modern threats.</p><h4>Power that lasts</h4><p>Equipped with the latest Intel® processor[2] and high- performance memory, the HP ProBook 430 drives performance with long battery life and high-speed solid-state drives.</p><hr><h4>Return & exchange information</h4><p>HP.com will accept returns or exchanges for this product up to 30 days after delivery. A restocking fee may apply. For details, please visit: https://www.hp.com/us-en/shop/cv/returnsandexchanges.</p>', NULL, 50, '0.00', '118900.00', NULL, 1, 1, '2021-09-13 08:47:19', '2021-09-13 08:47:19'),
(50, 3, 'HP 250 G7 Notebook PC4', 'HP 250 G7 Notebook PC4', 'hp-250-g7-notebook-pc4', 'Affordable notebooks with essential business features', '<p><ul><li>Windows 10 Pro 64</li><li>11th Generation Intel® Core™ i7 processor</li><li>16 GB memory; 512 GB SSD storage; 32 GB CPIe NVMe Intel® Optane</li><li>13.3\" diagonal FHD display</li><li>Intel® Iris® Xᵉ Graphics</li></ul></p>', '<p>Get connected with the value-priced HP 250 Laptop PC with the latest technology and a durable chassis that helps protect the PC. Complete business tasks with Intel® processors[2] and essential collaboration tools.</p><h4>Powered for business</h4><p>The compact, light, 16mm chassis with aluminum components is easy to carry from place to place. Enjoy an over 84-percent screen-to-body ratio and a quiet, responsive keyboard.</p><h4>Durable mobile design</h4><p>HP Wolf Security for Business creates a hardware-enforced, always-on, resilient defense. From the BIOS to the browser, above, in, and below the OS, these constantly evolving solutions help protect your PC from modern threats.</p><h4>Power that lasts</h4><p>Equipped with the latest Intel® processor[2] and high- performance memory, the HP ProBook 430 drives performance with long battery life and high-speed solid-state drives.</p><hr><h4>Return & exchange information</h4><p>HP.com will accept returns or exchanges for this product up to 30 days after delivery. A restocking fee may apply. For details, please visit: https://www.hp.com/us-en/shop/cv/returnsandexchanges.</p>', NULL, 50, '0.00', '84900.00', NULL, 1, 1, '2021-09-13 08:47:19', '2021-09-13 08:47:19'),
(51, 3, 'HP ZBook Firefly 15.6 inch G8 Mobile Workstation PC4', 'HP ZBook Firefly 15.6 inch G8 Mobile Workstation PC4', 'hp-zbook-firefly-g8-mobile-workstation-pc4', 'High-end performance for technical and creative professionals', '<p><ul><li>Windows 10 Pro 64</li><li>11th Generation Intel® Core™ i7 processor</li><li>16 GB memory; 512 GB SSD storage; 32 GB CPIe NVMe Intel® Optane</li><li>13.3\" diagonal FHD display</li><li>Intel® Iris® Xᵉ Graphics</li></ul></p>', '<p>Our lightest 15” ZBook provides true mobility for people who push the typical business PC past its breaking point. In the office or in the field, with pro-level performance and a full-size numeric keypad, you have everything to review work and manage projects from anywhere.</p><h4>Powered for business</h4><p>The compact, light, 16mm chassis with aluminum components is easy to carry from place to place. Enjoy an over 84-percent screen-to-body ratio and a quiet, responsive keyboard.</p><h4>Durable mobile design</h4><p>HP Wolf Security for Business creates a hardware-enforced, always-on, resilient defense. From the BIOS to the browser, above, in, and below the OS, these constantly evolving solutions help protect your PC from modern threats.</p><h4>Power that lasts</h4><p>Equipped with the latest Intel® processor[2] and high- performance memory, the HP ProBook 430 drives performance with long battery life and high-speed solid-state drives.</p><hr><h4>Return & exchange information</h4><p>HP.com will accept returns or exchanges for this product up to 30 days after delivery. A restocking fee may apply. For details, please visit: https://www.hp.com/us-en/shop/cv/returnsandexchanges.</p>', NULL, 50, '0.00', '179900.00', NULL, 1, 1, '2021-09-13 08:47:19', '2021-09-13 08:47:19'),
(52, 3, 'HP ProBook 430 G8 Notebook PC5', 'HP ProBook 430 G8 Notebook PC5', 'hp-probook-430-g8-notebook-pc5', 'Power and style for your growing business', '<p><ul><li>Windows 10 Pro 64</li><li>11th Generation Intel® Core™ i7 processor</li><li>16 GB memory; 512 GB SSD storage; 32 GB CPIe NVMe Intel® Optane</li><li>13.3\" diagonal FHD display</li><li>Intel® Iris® Xᵉ Graphics</li></ul></p>', '<p>With a new compact design, the HP ProBook 430 Laptop PC delivers commercial performance, security, and durability to professionals at growing companies who move from desk to meeting room to home.</p><h4>A new design that fits modern workstyles</h4><p>The compact, light, 16mm chassis with aluminum components is easy to carry from place to place. Enjoy an over 84-percent screen-to-body ratio and a quiet, responsive keyboard.</p><h4>Protected by HP Wolf Security</h4><p>HP Wolf Security for Business creates a hardware-enforced, always-on, resilient defense. From the BIOS to the browser, above, in, and below the OS, these constantly evolving solutions help protect your PC from modern threats.</p><h4>Power that lasts</h4><p>Equipped with the latest Intel® processor[2] and high- performance memory, the HP ProBook 430 drives performance with long battery life and high-speed solid-state drives.</p><hr><h4>Return & exchange information</h4><p>HP.com will accept returns or exchanges for this product up to 30 days after delivery. A restocking fee may apply. For details, please visit: https://www.hp.com/us-en/shop/cv/returnsandexchanges.</p>', NULL, 50, '0.00', '118900.00', NULL, 1, 1, '2021-09-13 08:47:19', '2021-09-13 08:47:19'),
(53, 3, 'HP 250 G7 Notebook PC5', 'HP 250 G7 Notebook PC5', 'hp-250-g7-notebook-pc5', 'Affordable notebooks with essential business features', '<p><ul><li>Windows 10 Pro 64</li><li>11th Generation Intel® Core™ i7 processor</li><li>16 GB memory; 512 GB SSD storage; 32 GB CPIe NVMe Intel® Optane</li><li>13.3\" diagonal FHD display</li><li>Intel® Iris® Xᵉ Graphics</li></ul></p>', '<p>Get connected with the value-priced HP 250 Laptop PC with the latest technology and a durable chassis that helps protect the PC. Complete business tasks with Intel® processors[2] and essential collaboration tools.</p><h4>Powered for business</h4><p>The compact, light, 16mm chassis with aluminum components is easy to carry from place to place. Enjoy an over 84-percent screen-to-body ratio and a quiet, responsive keyboard.</p><h4>Durable mobile design</h4><p>HP Wolf Security for Business creates a hardware-enforced, always-on, resilient defense. From the BIOS to the browser, above, in, and below the OS, these constantly evolving solutions help protect your PC from modern threats.</p><h4>Power that lasts</h4><p>Equipped with the latest Intel® processor[2] and high- performance memory, the HP ProBook 430 drives performance with long battery life and high-speed solid-state drives.</p><hr><h4>Return & exchange information</h4><p>HP.com will accept returns or exchanges for this product up to 30 days after delivery. A restocking fee may apply. For details, please visit: https://www.hp.com/us-en/shop/cv/returnsandexchanges.</p>', NULL, 50, '0.00', '84900.00', NULL, 1, 1, '2021-09-13 08:47:19', '2021-09-13 08:47:19'),
(54, 3, 'HP ZBook Firefly 15.6 inch G8 Mobile Workstation PC5', 'HP ZBook Firefly 15.6 inch G8 Mobile Workstation PC5', 'hp-zbook-firefly-g8-mobile-workstation-pc5', 'High-end performance for technical and creative professionals', '<p><ul><li>Windows 10 Pro 64</li><li>11th Generation Intel® Core™ i7 processor</li><li>16 GB memory; 512 GB SSD storage; 32 GB CPIe NVMe Intel® Optane</li><li>13.3\" diagonal FHD display</li><li>Intel® Iris® Xᵉ Graphics</li></ul></p>', '<p>Our lightest 15” ZBook provides true mobility for people who push the typical business PC past its breaking point. In the office or in the field, with pro-level performance and a full-size numeric keypad, you have everything to review work and manage projects from anywhere.</p><h4>Powered for business</h4><p>The compact, light, 16mm chassis with aluminum components is easy to carry from place to place. Enjoy an over 84-percent screen-to-body ratio and a quiet, responsive keyboard.</p><h4>Durable mobile design</h4><p>HP Wolf Security for Business creates a hardware-enforced, always-on, resilient defense. From the BIOS to the browser, above, in, and below the OS, these constantly evolving solutions help protect your PC from modern threats.</p><h4>Power that lasts</h4><p>Equipped with the latest Intel® processor[2] and high- performance memory, the HP ProBook 430 drives performance with long battery life and high-speed solid-state drives.</p><hr><h4>Return & exchange information</h4><p>HP.com will accept returns or exchanges for this product up to 30 days after delivery. A restocking fee may apply. For details, please visit: https://www.hp.com/us-en/shop/cv/returnsandexchanges.</p>', NULL, 50, '0.00', '179900.00', NULL, 1, 1, '2021-09-13 08:47:19', '2021-09-13 08:47:19'),
(55, 4, 'Predator Triton 500', 'Predator Triton 500', 'predator-triton-500', 'FORGED THIN', '<p>Model Name: PT515-51-73Z5</p><p>Part Number: NH.Q4WAA.006</p>', '<p>Our lightest 15” ZBook provides true mobility for people who push the typical business PC past its breaking point. In the office or in the field, with pro-level performance and a full-size numeric keypad, you have everything to review work and manage projects from anywhere.</p><h4>Powered for business</h4><p>The compact, light, 16mm chassis with aluminum components is easy to carry from place to place. Enjoy an over 84-percent screen-to-body ratio and a quiet, responsive keyboard.</p><h4>Durable mobile design</h4><p>HP Wolf Security for Business creates a hardware-enforced, always-on, resilient defense. From the BIOS to the browser, above, in, and below the OS, these constantly evolving solutions help protect your PC from modern threats.</p><h4>Power that lasts</h4><p>Equipped with the latest Intel® processor[2] and high- performance memory, the HP ProBook 430 drives performance with long battery life and high-speed solid-state drives.</p><hr><h4>Return & exchange information</h4><p>HP.com will accept returns or exchanges for this product up to 30 days after delivery. A restocking fee may apply. For details, please visit: https://www.hp.com/us-en/shop/cv/returnsandexchanges.</p>', NULL, 50, '0.00', '269900.00', NULL, 1, 1, '2021-09-13 08:47:19', '2021-09-13 08:47:19'),
(56, 4, 'Acer Chromebook Spin 311', 'Acer Chromebook Spin 311', 'acer-chromebook-spin-311', 'keeps up with you and your life all day long.', '<p>Model Name: CP311-3H-K23X</p><p>Part Number: NX.HUVAA.005</p><p>The Acer Chromebook Spin 311 is the ideal laptop for all ages from the very young upwards. With its safety certification, state-of-the-art low-energy consuming processor, military standard specs and a long battery life, it can stand up to the daily rigors and intense usage of students inside or outside the classroom.</p>', '<p>Our lightest 15” ZBook provides true mobility for people who push the typical business PC past its breaking point. In the office or in the field, with pro-level performance and a full-size numeric keypad, you have everything to review work and manage projects from anywhere.</p><h4>Powered for business</h4><p>The compact, light, 16mm chassis with aluminum components is easy to carry from place to place. Enjoy an over 84-percent screen-to-body ratio and a quiet, responsive keyboard.</p><h4>Durable mobile design</h4><p>HP Wolf Security for Business creates a hardware-enforced, always-on, resilient defense. From the BIOS to the browser, above, in, and below the OS, these constantly evolving solutions help protect your PC from modern threats.</p><h4>Power that lasts</h4><p>Equipped with the latest Intel® processor[2] and high- performance memory, the HP ProBook 430 drives performance with long battery life and high-speed solid-state drives.</p><hr><h4>Return & exchange information</h4><p>HP.com will accept returns or exchanges for this product up to 30 days after delivery. A restocking fee may apply. For details, please visit: https://www.hp.com/us-en/shop/cv/returnsandexchanges.</p>', NULL, 50, '0.00', '29900.00', NULL, 1, 1, '2021-09-13 08:47:19', '2021-09-13 08:47:19'),
(57, 4, 'Aspire 5', 'Aspire 5', 'aspire-5', 'keeps up with you and your life all day long.', '<p>Model Name: A515-43-R6DE</p><p>Part Number: NX.HG8AA.002</p><p>AMD Ryzen 7 (3700U, 2.30 GHz, 4 MB) - 15.6\" LED - 16:9 Full HD - LCD - ComfyView - AMD Radeon™ RX Vega 10 - 8 GB DDR4 SDRAM - No - Color Pure Silver - Weight (Approximate) 4.19 lb - Maximum Battery Run Time 7 Hour</p>', '<p>Our lightest 15” ZBook provides true mobility for people who push the typical business PC past its breaking point. In the office or in the field, with pro-level performance and a full-size numeric keypad, you have everything to review work and manage projects from anywhere.</p><h4>Powered for business</h4><p>The compact, light, 16mm chassis with aluminum components is easy to carry from place to place. Enjoy an over 84-percent screen-to-body ratio and a quiet, responsive keyboard.</p><h4>Durable mobile design</h4><p>HP Wolf Security for Business creates a hardware-enforced, always-on, resilient defense. From the BIOS to the browser, above, in, and below the OS, these constantly evolving solutions help protect your PC from modern threats.</p><h4>Power that lasts</h4><p>Equipped with the latest Intel® processor[2] and high- performance memory, the HP ProBook 430 drives performance with long battery life and high-speed solid-state drives.</p><hr><h4>Return & exchange information</h4><p>HP.com will accept returns or exchanges for this product up to 30 days after delivery. A restocking fee may apply. For details, please visit: https://www.hp.com/us-en/shop/cv/returnsandexchanges.</p>', NULL, 50, '0.00', '64900.00', NULL, 1, 1, '2021-09-13 08:47:19', '2021-09-13 08:47:19'),
(58, 4, 'Predator Triton 5001', 'Predator Triton 5001', 'predator-triton-5001', 'FORGED THIN', '<p>Model Name: PT515-51-73Z5</p><p>Part Number: NH.Q4WAA.006</p>', '<p>Our lightest 15” ZBook provides true mobility for people who push the typical business PC past its breaking point. In the office or in the field, with pro-level performance and a full-size numeric keypad, you have everything to review work and manage projects from anywhere.</p><h4>Powered for business</h4><p>The compact, light, 16mm chassis with aluminum components is easy to carry from place to place. Enjoy an over 84-percent screen-to-body ratio and a quiet, responsive keyboard.</p><h4>Durable mobile design</h4><p>HP Wolf Security for Business creates a hardware-enforced, always-on, resilient defense. From the BIOS to the browser, above, in, and below the OS, these constantly evolving solutions help protect your PC from modern threats.</p><h4>Power that lasts</h4><p>Equipped with the latest Intel® processor[2] and high- performance memory, the HP ProBook 430 drives performance with long battery life and high-speed solid-state drives.</p><hr><h4>Return & exchange information</h4><p>HP.com will accept returns or exchanges for this product up to 30 days after delivery. A restocking fee may apply. For details, please visit: https://www.hp.com/us-en/shop/cv/returnsandexchanges.</p>', NULL, 50, '0.00', '269900.00', NULL, 1, 1, '2021-09-13 08:47:19', '2021-09-13 08:47:19'),
(59, 4, 'Acer Chromebook Spin 3111', 'Acer Chromebook Spin 3111', 'acer-chromebook-spin-3111', 'keeps up with you and your life all day long.', '<p>Model Name: CP311-3H-K23X</p><p>Part Number: NX.HUVAA.005</p><p>The Acer Chromebook Spin 311 is the ideal laptop for all ages from the very young upwards. With its safety certification, state-of-the-art low-energy consuming processor, military standard specs and a long battery life, it can stand up to the daily rigors and intense usage of students inside or outside the classroom.</p>', '<p>Our lightest 15” ZBook provides true mobility for people who push the typical business PC past its breaking point. In the office or in the field, with pro-level performance and a full-size numeric keypad, you have everything to review work and manage projects from anywhere.</p><h4>Powered for business</h4><p>The compact, light, 16mm chassis with aluminum components is easy to carry from place to place. Enjoy an over 84-percent screen-to-body ratio and a quiet, responsive keyboard.</p><h4>Durable mobile design</h4><p>HP Wolf Security for Business creates a hardware-enforced, always-on, resilient defense. From the BIOS to the browser, above, in, and below the OS, these constantly evolving solutions help protect your PC from modern threats.</p><h4>Power that lasts</h4><p>Equipped with the latest Intel® processor[2] and high- performance memory, the HP ProBook 430 drives performance with long battery life and high-speed solid-state drives.</p><hr><h4>Return & exchange information</h4><p>HP.com will accept returns or exchanges for this product up to 30 days after delivery. A restocking fee may apply. For details, please visit: https://www.hp.com/us-en/shop/cv/returnsandexchanges.</p>', NULL, 50, '0.00', '29900.00', NULL, 1, 1, '2021-09-13 08:47:19', '2021-09-13 08:47:19'),
(60, 4, 'Aspire 51', 'Aspire 51', 'aspire-51', 'keeps up with you and your life all day long.', '<p>Model Name: A515-43-R6DE</p><p>Part Number: NX.HG8AA.002</p><p>AMD Ryzen 7 (3700U, 2.30 GHz, 4 MB) - 15.6\" LED - 16:9 Full HD - LCD - ComfyView - AMD Radeon™ RX Vega 10 - 8 GB DDR4 SDRAM - No - Color Pure Silver - Weight (Approximate) 4.19 lb - Maximum Battery Run Time 7 Hour</p>', '<p>Our lightest 15” ZBook provides true mobility for people who push the typical business PC past its breaking point. In the office or in the field, with pro-level performance and a full-size numeric keypad, you have everything to review work and manage projects from anywhere.</p><h4>Powered for business</h4><p>The compact, light, 16mm chassis with aluminum components is easy to carry from place to place. Enjoy an over 84-percent screen-to-body ratio and a quiet, responsive keyboard.</p><h4>Durable mobile design</h4><p>HP Wolf Security for Business creates a hardware-enforced, always-on, resilient defense. From the BIOS to the browser, above, in, and below the OS, these constantly evolving solutions help protect your PC from modern threats.</p><h4>Power that lasts</h4><p>Equipped with the latest Intel® processor[2] and high- performance memory, the HP ProBook 430 drives performance with long battery life and high-speed solid-state drives.</p><hr><h4>Return & exchange information</h4><p>HP.com will accept returns or exchanges for this product up to 30 days after delivery. A restocking fee may apply. For details, please visit: https://www.hp.com/us-en/shop/cv/returnsandexchanges.</p>', NULL, 50, '0.00', '64900.00', NULL, 1, 1, '2021-09-13 08:47:19', '2021-09-13 08:47:19'),
(61, 4, 'Predator Triton 5002', 'Predator Triton 5002', 'predator-triton-5002', 'FORGED THIN', '<p>Model Name: PT515-51-73Z5</p><p>Part Number: NH.Q4WAA.006</p>', '<p>Our lightest 15” ZBook provides true mobility for people who push the typical business PC past its breaking point. In the office or in the field, with pro-level performance and a full-size numeric keypad, you have everything to review work and manage projects from anywhere.</p><h4>Powered for business</h4><p>The compact, light, 16mm chassis with aluminum components is easy to carry from place to place. Enjoy an over 84-percent screen-to-body ratio and a quiet, responsive keyboard.</p><h4>Durable mobile design</h4><p>HP Wolf Security for Business creates a hardware-enforced, always-on, resilient defense. From the BIOS to the browser, above, in, and below the OS, these constantly evolving solutions help protect your PC from modern threats.</p><h4>Power that lasts</h4><p>Equipped with the latest Intel® processor[2] and high- performance memory, the HP ProBook 430 drives performance with long battery life and high-speed solid-state drives.</p><hr><h4>Return & exchange information</h4><p>HP.com will accept returns or exchanges for this product up to 30 days after delivery. A restocking fee may apply. For details, please visit: https://www.hp.com/us-en/shop/cv/returnsandexchanges.</p>', NULL, 50, '0.00', '269900.00', NULL, 1, 1, '2021-09-13 08:47:19', '2021-09-13 08:47:19'),
(62, 4, 'Acer Chromebook Spin 3112', 'Acer Chromebook Spin 3112', 'acer-chromebook-spin-3112', 'keeps up with you and your life all day long.', '<p>Model Name: CP311-3H-K23X</p><p>Part Number: NX.HUVAA.005</p><p>The Acer Chromebook Spin 311 is the ideal laptop for all ages from the very young upwards. With its safety certification, state-of-the-art low-energy consuming processor, military standard specs and a long battery life, it can stand up to the daily rigors and intense usage of students inside or outside the classroom.</p>', '<p>Our lightest 15” ZBook provides true mobility for people who push the typical business PC past its breaking point. In the office or in the field, with pro-level performance and a full-size numeric keypad, you have everything to review work and manage projects from anywhere.</p><h4>Powered for business</h4><p>The compact, light, 16mm chassis with aluminum components is easy to carry from place to place. Enjoy an over 84-percent screen-to-body ratio and a quiet, responsive keyboard.</p><h4>Durable mobile design</h4><p>HP Wolf Security for Business creates a hardware-enforced, always-on, resilient defense. From the BIOS to the browser, above, in, and below the OS, these constantly evolving solutions help protect your PC from modern threats.</p><h4>Power that lasts</h4><p>Equipped with the latest Intel® processor[2] and high- performance memory, the HP ProBook 430 drives performance with long battery life and high-speed solid-state drives.</p><hr><h4>Return & exchange information</h4><p>HP.com will accept returns or exchanges for this product up to 30 days after delivery. A restocking fee may apply. For details, please visit: https://www.hp.com/us-en/shop/cv/returnsandexchanges.</p>', NULL, 50, '0.00', '29900.00', NULL, 1, 1, '2021-09-13 08:47:19', '2021-09-13 08:47:19');
INSERT INTO `products` (`id`, `brand_id`, `sku`, `name`, `slug`, `summary`, `overview`, `description`, `specification`, `quantity`, `shipping_fee`, `price`, `sale_price`, `status`, `featured`, `created_at`, `updated_at`) VALUES
(63, 4, 'Aspire 52', 'Aspire 52', 'aspire-52', 'keeps up with you and your life all day long.', '<p>Model Name: A515-43-R6DE</p><p>Part Number: NX.HG8AA.002</p><p>AMD Ryzen 7 (3700U, 2.30 GHz, 4 MB) - 15.6\" LED - 16:9 Full HD - LCD - ComfyView - AMD Radeon™ RX Vega 10 - 8 GB DDR4 SDRAM - No - Color Pure Silver - Weight (Approximate) 4.19 lb - Maximum Battery Run Time 7 Hour</p>', '<p>Our lightest 15” ZBook provides true mobility for people who push the typical business PC past its breaking point. In the office or in the field, with pro-level performance and a full-size numeric keypad, you have everything to review work and manage projects from anywhere.</p><h4>Powered for business</h4><p>The compact, light, 16mm chassis with aluminum components is easy to carry from place to place. Enjoy an over 84-percent screen-to-body ratio and a quiet, responsive keyboard.</p><h4>Durable mobile design</h4><p>HP Wolf Security for Business creates a hardware-enforced, always-on, resilient defense. From the BIOS to the browser, above, in, and below the OS, these constantly evolving solutions help protect your PC from modern threats.</p><h4>Power that lasts</h4><p>Equipped with the latest Intel® processor[2] and high- performance memory, the HP ProBook 430 drives performance with long battery life and high-speed solid-state drives.</p><hr><h4>Return & exchange information</h4><p>HP.com will accept returns or exchanges for this product up to 30 days after delivery. A restocking fee may apply. For details, please visit: https://www.hp.com/us-en/shop/cv/returnsandexchanges.</p>', NULL, 50, '0.00', '64900.00', NULL, 1, 1, '2021-09-13 08:47:19', '2021-09-13 08:47:19'),
(64, 4, 'Predator Triton 5003', 'Predator Triton 5003', 'predator-triton-5003', 'FORGED THIN', '<p>Model Name: PT515-51-73Z5</p><p>Part Number: NH.Q4WAA.006</p>', '<p>Our lightest 15” ZBook provides true mobility for people who push the typical business PC past its breaking point. In the office or in the field, with pro-level performance and a full-size numeric keypad, you have everything to review work and manage projects from anywhere.</p><h4>Powered for business</h4><p>The compact, light, 16mm chassis with aluminum components is easy to carry from place to place. Enjoy an over 84-percent screen-to-body ratio and a quiet, responsive keyboard.</p><h4>Durable mobile design</h4><p>HP Wolf Security for Business creates a hardware-enforced, always-on, resilient defense. From the BIOS to the browser, above, in, and below the OS, these constantly evolving solutions help protect your PC from modern threats.</p><h4>Power that lasts</h4><p>Equipped with the latest Intel® processor[2] and high- performance memory, the HP ProBook 430 drives performance with long battery life and high-speed solid-state drives.</p><hr><h4>Return & exchange information</h4><p>HP.com will accept returns or exchanges for this product up to 30 days after delivery. A restocking fee may apply. For details, please visit: https://www.hp.com/us-en/shop/cv/returnsandexchanges.</p>', NULL, 50, '0.00', '269900.00', NULL, 1, 1, '2021-09-13 08:47:19', '2021-09-13 08:47:19'),
(65, 4, 'Acer Chromebook Spin 3113', 'Acer Chromebook Spin 3113', 'acer-chromebook-spin-3113', 'keeps up with you and your life all day long.', '<p>Model Name: CP311-3H-K23X</p><p>Part Number: NX.HUVAA.005</p><p>The Acer Chromebook Spin 311 is the ideal laptop for all ages from the very young upwards. With its safety certification, state-of-the-art low-energy consuming processor, military standard specs and a long battery life, it can stand up to the daily rigors and intense usage of students inside or outside the classroom.</p>', '<p>Our lightest 15” ZBook provides true mobility for people who push the typical business PC past its breaking point. In the office or in the field, with pro-level performance and a full-size numeric keypad, you have everything to review work and manage projects from anywhere.</p><h4>Powered for business</h4><p>The compact, light, 16mm chassis with aluminum components is easy to carry from place to place. Enjoy an over 84-percent screen-to-body ratio and a quiet, responsive keyboard.</p><h4>Durable mobile design</h4><p>HP Wolf Security for Business creates a hardware-enforced, always-on, resilient defense. From the BIOS to the browser, above, in, and below the OS, these constantly evolving solutions help protect your PC from modern threats.</p><h4>Power that lasts</h4><p>Equipped with the latest Intel® processor[2] and high- performance memory, the HP ProBook 430 drives performance with long battery life and high-speed solid-state drives.</p><hr><h4>Return & exchange information</h4><p>HP.com will accept returns or exchanges for this product up to 30 days after delivery. A restocking fee may apply. For details, please visit: https://www.hp.com/us-en/shop/cv/returnsandexchanges.</p>', NULL, 50, '0.00', '29900.00', NULL, 1, 1, '2021-09-13 08:47:19', '2021-09-13 08:47:19'),
(66, 4, 'Aspire 53', 'Aspire 53', 'aspire-53', 'keeps up with you and your life all day long.', '<p>Model Name: A515-43-R6DE</p><p>Part Number: NX.HG8AA.002</p><p>AMD Ryzen 7 (3700U, 2.30 GHz, 4 MB) - 15.6\" LED - 16:9 Full HD - LCD - ComfyView - AMD Radeon™ RX Vega 10 - 8 GB DDR4 SDRAM - No - Color Pure Silver - Weight (Approximate) 4.19 lb - Maximum Battery Run Time 7 Hour</p>', '<p>Our lightest 15” ZBook provides true mobility for people who push the typical business PC past its breaking point. In the office or in the field, with pro-level performance and a full-size numeric keypad, you have everything to review work and manage projects from anywhere.</p><h4>Powered for business</h4><p>The compact, light, 16mm chassis with aluminum components is easy to carry from place to place. Enjoy an over 84-percent screen-to-body ratio and a quiet, responsive keyboard.</p><h4>Durable mobile design</h4><p>HP Wolf Security for Business creates a hardware-enforced, always-on, resilient defense. From the BIOS to the browser, above, in, and below the OS, these constantly evolving solutions help protect your PC from modern threats.</p><h4>Power that lasts</h4><p>Equipped with the latest Intel® processor[2] and high- performance memory, the HP ProBook 430 drives performance with long battery life and high-speed solid-state drives.</p><hr><h4>Return & exchange information</h4><p>HP.com will accept returns or exchanges for this product up to 30 days after delivery. A restocking fee may apply. For details, please visit: https://www.hp.com/us-en/shop/cv/returnsandexchanges.</p>', NULL, 50, '0.00', '64900.00', NULL, 1, 1, '2021-09-13 08:47:19', '2021-09-13 08:47:19'),
(67, 4, 'Predator Triton 5004', 'Predator Triton 5004', 'predator-triton-5004', 'FORGED THIN', '<p>Model Name: PT515-51-73Z5</p><p>Part Number: NH.Q4WAA.006</p>', '<p>Our lightest 15” ZBook provides true mobility for people who push the typical business PC past its breaking point. In the office or in the field, with pro-level performance and a full-size numeric keypad, you have everything to review work and manage projects from anywhere.</p><h4>Powered for business</h4><p>The compact, light, 16mm chassis with aluminum components is easy to carry from place to place. Enjoy an over 84-percent screen-to-body ratio and a quiet, responsive keyboard.</p><h4>Durable mobile design</h4><p>HP Wolf Security for Business creates a hardware-enforced, always-on, resilient defense. From the BIOS to the browser, above, in, and below the OS, these constantly evolving solutions help protect your PC from modern threats.</p><h4>Power that lasts</h4><p>Equipped with the latest Intel® processor[2] and high- performance memory, the HP ProBook 430 drives performance with long battery life and high-speed solid-state drives.</p><hr><h4>Return & exchange information</h4><p>HP.com will accept returns or exchanges for this product up to 30 days after delivery. A restocking fee may apply. For details, please visit: https://www.hp.com/us-en/shop/cv/returnsandexchanges.</p>', NULL, 50, '0.00', '269900.00', NULL, 1, 1, '2021-09-13 08:47:19', '2021-09-13 08:47:19'),
(68, 4, 'Acer Chromebook Spin 3114', 'Acer Chromebook Spin 3114', 'acer-chromebook-spin-3114', 'keeps up with you and your life all day long.', '<p>Model Name: CP311-3H-K23X</p><p>Part Number: NX.HUVAA.005</p><p>The Acer Chromebook Spin 311 is the ideal laptop for all ages from the very young upwards. With its safety certification, state-of-the-art low-energy consuming processor, military standard specs and a long battery life, it can stand up to the daily rigors and intense usage of students inside or outside the classroom.</p>', '<p>Our lightest 15” ZBook provides true mobility for people who push the typical business PC past its breaking point. In the office or in the field, with pro-level performance and a full-size numeric keypad, you have everything to review work and manage projects from anywhere.</p><h4>Powered for business</h4><p>The compact, light, 16mm chassis with aluminum components is easy to carry from place to place. Enjoy an over 84-percent screen-to-body ratio and a quiet, responsive keyboard.</p><h4>Durable mobile design</h4><p>HP Wolf Security for Business creates a hardware-enforced, always-on, resilient defense. From the BIOS to the browser, above, in, and below the OS, these constantly evolving solutions help protect your PC from modern threats.</p><h4>Power that lasts</h4><p>Equipped with the latest Intel® processor[2] and high- performance memory, the HP ProBook 430 drives performance with long battery life and high-speed solid-state drives.</p><hr><h4>Return & exchange information</h4><p>HP.com will accept returns or exchanges for this product up to 30 days after delivery. A restocking fee may apply. For details, please visit: https://www.hp.com/us-en/shop/cv/returnsandexchanges.</p>', NULL, 50, '0.00', '29900.00', NULL, 1, 1, '2021-09-13 08:47:19', '2021-09-13 08:47:19'),
(69, 4, 'Aspire 54', 'Aspire 54', 'aspire-54', 'keeps up with you and your life all day long.', '<p>Model Name: A515-43-R6DE</p><p>Part Number: NX.HG8AA.002</p><p>AMD Ryzen 7 (3700U, 2.30 GHz, 4 MB) - 15.6\" LED - 16:9 Full HD - LCD - ComfyView - AMD Radeon™ RX Vega 10 - 8 GB DDR4 SDRAM - No - Color Pure Silver - Weight (Approximate) 4.19 lb - Maximum Battery Run Time 7 Hour</p>', '<p>Our lightest 15” ZBook provides true mobility for people who push the typical business PC past its breaking point. In the office or in the field, with pro-level performance and a full-size numeric keypad, you have everything to review work and manage projects from anywhere.</p><h4>Powered for business</h4><p>The compact, light, 16mm chassis with aluminum components is easy to carry from place to place. Enjoy an over 84-percent screen-to-body ratio and a quiet, responsive keyboard.</p><h4>Durable mobile design</h4><p>HP Wolf Security for Business creates a hardware-enforced, always-on, resilient defense. From the BIOS to the browser, above, in, and below the OS, these constantly evolving solutions help protect your PC from modern threats.</p><h4>Power that lasts</h4><p>Equipped with the latest Intel® processor[2] and high- performance memory, the HP ProBook 430 drives performance with long battery life and high-speed solid-state drives.</p><hr><h4>Return & exchange information</h4><p>HP.com will accept returns or exchanges for this product up to 30 days after delivery. A restocking fee may apply. For details, please visit: https://www.hp.com/us-en/shop/cv/returnsandexchanges.</p>', NULL, 50, '0.00', '64900.00', NULL, 1, 1, '2021-09-13 08:47:19', '2021-09-13 08:47:19'),
(70, 4, 'Predator Triton 5005', 'Predator Triton 5005', 'predator-triton-5005', 'FORGED THIN', '<p>Model Name: PT515-51-73Z5</p><p>Part Number: NH.Q4WAA.006</p>', '<p>Our lightest 15” ZBook provides true mobility for people who push the typical business PC past its breaking point. In the office or in the field, with pro-level performance and a full-size numeric keypad, you have everything to review work and manage projects from anywhere.</p><h4>Powered for business</h4><p>The compact, light, 16mm chassis with aluminum components is easy to carry from place to place. Enjoy an over 84-percent screen-to-body ratio and a quiet, responsive keyboard.</p><h4>Durable mobile design</h4><p>HP Wolf Security for Business creates a hardware-enforced, always-on, resilient defense. From the BIOS to the browser, above, in, and below the OS, these constantly evolving solutions help protect your PC from modern threats.</p><h4>Power that lasts</h4><p>Equipped with the latest Intel® processor[2] and high- performance memory, the HP ProBook 430 drives performance with long battery life and high-speed solid-state drives.</p><hr><h4>Return & exchange information</h4><p>HP.com will accept returns or exchanges for this product up to 30 days after delivery. A restocking fee may apply. For details, please visit: https://www.hp.com/us-en/shop/cv/returnsandexchanges.</p>', NULL, 50, '0.00', '269900.00', NULL, 1, 1, '2021-09-13 08:47:19', '2021-09-13 08:47:19'),
(71, 4, 'Acer Chromebook Spin 3115', 'Acer Chromebook Spin 3115', 'acer-chromebook-spin-3115', 'keeps up with you and your life all day long.', '<p>Model Name: CP311-3H-K23X</p><p>Part Number: NX.HUVAA.005</p><p>The Acer Chromebook Spin 311 is the ideal laptop for all ages from the very young upwards. With its safety certification, state-of-the-art low-energy consuming processor, military standard specs and a long battery life, it can stand up to the daily rigors and intense usage of students inside or outside the classroom.</p>', '<p>Our lightest 15” ZBook provides true mobility for people who push the typical business PC past its breaking point. In the office or in the field, with pro-level performance and a full-size numeric keypad, you have everything to review work and manage projects from anywhere.</p><h4>Powered for business</h4><p>The compact, light, 16mm chassis with aluminum components is easy to carry from place to place. Enjoy an over 84-percent screen-to-body ratio and a quiet, responsive keyboard.</p><h4>Durable mobile design</h4><p>HP Wolf Security for Business creates a hardware-enforced, always-on, resilient defense. From the BIOS to the browser, above, in, and below the OS, these constantly evolving solutions help protect your PC from modern threats.</p><h4>Power that lasts</h4><p>Equipped with the latest Intel® processor[2] and high- performance memory, the HP ProBook 430 drives performance with long battery life and high-speed solid-state drives.</p><hr><h4>Return & exchange information</h4><p>HP.com will accept returns or exchanges for this product up to 30 days after delivery. A restocking fee may apply. For details, please visit: https://www.hp.com/us-en/shop/cv/returnsandexchanges.</p>', NULL, 50, '0.00', '29900.00', NULL, 1, 1, '2021-09-13 08:47:19', '2021-09-13 08:47:19'),
(72, 4, 'Aspire 55', 'Aspire 55', 'aspire-55', 'keeps up with you and your life all day long.', '<p>Model Name: A515-43-R6DE</p><p>Part Number: NX.HG8AA.002</p><p>AMD Ryzen 7 (3700U, 2.30 GHz, 4 MB) - 15.6\" LED - 16:9 Full HD - LCD - ComfyView - AMD Radeon™ RX Vega 10 - 8 GB DDR4 SDRAM - No - Color Pure Silver - Weight (Approximate) 4.19 lb - Maximum Battery Run Time 7 Hour</p>', '<p>Our lightest 15” ZBook provides true mobility for people who push the typical business PC past its breaking point. In the office or in the field, with pro-level performance and a full-size numeric keypad, you have everything to review work and manage projects from anywhere.</p><h4>Powered for business</h4><p>The compact, light, 16mm chassis with aluminum components is easy to carry from place to place. Enjoy an over 84-percent screen-to-body ratio and a quiet, responsive keyboard.</p><h4>Durable mobile design</h4><p>HP Wolf Security for Business creates a hardware-enforced, always-on, resilient defense. From the BIOS to the browser, above, in, and below the OS, these constantly evolving solutions help protect your PC from modern threats.</p><h4>Power that lasts</h4><p>Equipped with the latest Intel® processor[2] and high- performance memory, the HP ProBook 430 drives performance with long battery life and high-speed solid-state drives.</p><hr><h4>Return & exchange information</h4><p>HP.com will accept returns or exchanges for this product up to 30 days after delivery. A restocking fee may apply. For details, please visit: https://www.hp.com/us-en/shop/cv/returnsandexchanges.</p>', NULL, 50, '0.00', '64900.00', NULL, 1, 1, '2021-09-13 08:47:19', '2021-09-13 08:47:19'),
(73, 5, 'Legion 7i (15\") with RTX 2080', 'Legion 7i (15\") with RTX 2080', 'legion-7i-with-rtx-2080', 'keeps up with you and your life all day long.', '<p>Team SoloMid Partnership</p><p>Legion gaming accessories are crafted to help you win, delivering legendary performance, reliability, and aesthetics. Whether you need an armored bag to protect your gear, a precision mouse to improve your aim, or a tactile keyboard for fearlessly commanding your siege, each addition makes a powerful ally on your path to victory</p>', '<p>Our lightest 15” ZBook provides true mobility for people who push the typical business PC past its breaking point. In the office or in the field, with pro-level performance and a full-size numeric keypad, you have everything to review work and manage projects from anywhere.</p><h4>Powered for business</h4><p>The compact, light, 16mm chassis with aluminum components is easy to carry from place to place. Enjoy an over 84-percent screen-to-body ratio and a quiet, responsive keyboard.</p><h4>Durable mobile design</h4><p>HP Wolf Security for Business creates a hardware-enforced, always-on, resilient defense. From the BIOS to the browser, above, in, and below the OS, these constantly evolving solutions help protect your PC from modern threats.</p><h4>Power that lasts</h4><p>Equipped with the latest Intel® processor[2] and high- performance memory, the HP ProBook 430 drives performance with long battery life and high-speed solid-state drives.</p><hr><h4>Return & exchange information</h4><p>HP.com will accept returns or exchanges for this product up to 30 days after delivery. A restocking fee may apply. For details, please visit: https://www.hp.com/us-en/shop/cv/returnsandexchanges.</p>', NULL, 50, '0.00', '271900.00', NULL, 1, 1, '2021-09-13 08:47:19', '2021-09-13 08:47:19'),
(74, 5, 'ThinkPad X1 Extreme Gen 3 Intel', 'ThinkPad X1 Extreme Gen 3 Intel', 'thinkpad-x1-extreme-gen-3-intel', '10th Generation Intel® Core™ i7-10750H Processor.', '<p>10th Gen Intel® H Core™ processors are a powerhouse perfect for creators, gaming enthusiasts and other demanding multitaskers. Creators appreciate the lightweight portability and stunning graphics performance from the ThinkPad X1 Extreme’s NVIDIA® GeForce® GTX 1650TI GPU. IT admins love the ThinkPad name and all that it produces—robust security and privacy features, trusted reliability, and craftsmanship renowned throughout the world.</p>', '<p>Our lightest 15” ZBook provides true mobility for people who push the typical business PC past its breaking point. In the office or in the field, with pro-level performance and a full-size numeric keypad, you have everything to review work and manage projects from anywhere.</p><h4>Powered for business</h4><p>The compact, light, 16mm chassis with aluminum components is easy to carry from place to place. Enjoy an over 84-percent screen-to-body ratio and a quiet, responsive keyboard.</p><h4>Durable mobile design</h4><p>HP Wolf Security for Business creates a hardware-enforced, always-on, resilient defense. From the BIOS to the browser, above, in, and below the OS, these constantly evolving solutions help protect your PC from modern threats.</p><h4>Power that lasts</h4><p>Equipped with the latest Intel® processor[2] and high- performance memory, the HP ProBook 430 drives performance with long battery life and high-speed solid-state drives.</p><hr><h4>Return & exchange information</h4><p>HP.com will accept returns or exchanges for this product up to 30 days after delivery. A restocking fee may apply. For details, please visit: https://www.hp.com/us-en/shop/cv/returnsandexchanges.</p>', NULL, 50, '0.00', '148900.00', NULL, 1, 1, '2021-09-13 08:47:19', '2021-09-13 08:47:19'),
(75, 5, 'ThinkPad P1 Workstation Gen 4 Intel', 'ThinkPad P1 Workstation Gen 4 Intel', 'thinkpad-p1-workstation-gen-4-intel', 'Stylish, lightweight, & packed with power.', '<p>The ThinkPad P1 Gen 4 performance laptop blends form and function with an elegant carbon-fiber weave and lightweight design, starting at just 1.8kg / 3.99lbs. The stylish exterior conceals impressive performance with the latest 11th Gen Intel® Core™ or Xeon® processors. Plus, choose professional NVIDIA® RTX™ graphics—supporting up to the NVIDIA® RTX™ A5000 backed by ISV certifications or the powerful NVIDIA® GeForce RTX™ 3070 or 3080.</p>', '<p>Our lightest 15” ZBook provides true mobility for people who push the typical business PC past its breaking point. In the office or in the field, with pro-level performance and a full-size numeric keypad, you have everything to review work and manage projects from anywhere.</p><h4>Powered for business</h4><p>The compact, light, 16mm chassis with aluminum components is easy to carry from place to place. Enjoy an over 84-percent screen-to-body ratio and a quiet, responsive keyboard.</p><h4>Durable mobile design</h4><p>HP Wolf Security for Business creates a hardware-enforced, always-on, resilient defense. From the BIOS to the browser, above, in, and below the OS, these constantly evolving solutions help protect your PC from modern threats.</p><h4>Power that lasts</h4><p>Equipped with the latest Intel® processor[2] and high- performance memory, the HP ProBook 430 drives performance with long battery life and high-speed solid-state drives.</p><hr><h4>Return & exchange information</h4><p>HP.com will accept returns or exchanges for this product up to 30 days after delivery. A restocking fee may apply. For details, please visit: https://www.hp.com/us-en/shop/cv/returnsandexchanges.</p>', NULL, 50, '0.00', '339900.00', NULL, 1, 1, '2021-09-13 08:47:19', '2021-09-13 08:47:19'),
(76, 5, 'Legion 7i (15\") with RTX 20801', 'Legion 7i (15\") with RTX 20801', 'legion-7i-with-rtx-20801', 'keeps up with you and your life all day long.', '<p>Team SoloMid Partnership</p><p>Legion gaming accessories are crafted to help you win, delivering legendary performance, reliability, and aesthetics. Whether you need an armored bag to protect your gear, a precision mouse to improve your aim, or a tactile keyboard for fearlessly commanding your siege, each addition makes a powerful ally on your path to victory</p>', '<p>Our lightest 15” ZBook provides true mobility for people who push the typical business PC past its breaking point. In the office or in the field, with pro-level performance and a full-size numeric keypad, you have everything to review work and manage projects from anywhere.</p><h4>Powered for business</h4><p>The compact, light, 16mm chassis with aluminum components is easy to carry from place to place. Enjoy an over 84-percent screen-to-body ratio and a quiet, responsive keyboard.</p><h4>Durable mobile design</h4><p>HP Wolf Security for Business creates a hardware-enforced, always-on, resilient defense. From the BIOS to the browser, above, in, and below the OS, these constantly evolving solutions help protect your PC from modern threats.</p><h4>Power that lasts</h4><p>Equipped with the latest Intel® processor[2] and high- performance memory, the HP ProBook 430 drives performance with long battery life and high-speed solid-state drives.</p><hr><h4>Return & exchange information</h4><p>HP.com will accept returns or exchanges for this product up to 30 days after delivery. A restocking fee may apply. For details, please visit: https://www.hp.com/us-en/shop/cv/returnsandexchanges.</p>', NULL, 50, '0.00', '271900.00', NULL, 1, 1, '2021-09-13 08:47:19', '2021-09-13 08:47:19'),
(77, 5, 'ThinkPad X1 Extreme Gen 3 Intel1', 'ThinkPad X1 Extreme Gen 3 Intel1', 'thinkpad-x1-extreme-gen-3-intel1', '10th Generation Intel® Core™ i7-10750H Processor.', '<p>10th Gen Intel® H Core™ processors are a powerhouse perfect for creators, gaming enthusiasts and other demanding multitaskers. Creators appreciate the lightweight portability and stunning graphics performance from the ThinkPad X1 Extreme’s NVIDIA® GeForce® GTX 1650TI GPU. IT admins love the ThinkPad name and all that it produces—robust security and privacy features, trusted reliability, and craftsmanship renowned throughout the world.</p>', '<p>Our lightest 15” ZBook provides true mobility for people who push the typical business PC past its breaking point. In the office or in the field, with pro-level performance and a full-size numeric keypad, you have everything to review work and manage projects from anywhere.</p><h4>Powered for business</h4><p>The compact, light, 16mm chassis with aluminum components is easy to carry from place to place. Enjoy an over 84-percent screen-to-body ratio and a quiet, responsive keyboard.</p><h4>Durable mobile design</h4><p>HP Wolf Security for Business creates a hardware-enforced, always-on, resilient defense. From the BIOS to the browser, above, in, and below the OS, these constantly evolving solutions help protect your PC from modern threats.</p><h4>Power that lasts</h4><p>Equipped with the latest Intel® processor[2] and high- performance memory, the HP ProBook 430 drives performance with long battery life and high-speed solid-state drives.</p><hr><h4>Return & exchange information</h4><p>HP.com will accept returns or exchanges for this product up to 30 days after delivery. A restocking fee may apply. For details, please visit: https://www.hp.com/us-en/shop/cv/returnsandexchanges.</p>', NULL, 50, '0.00', '148900.00', NULL, 1, 1, '2021-09-13 08:47:19', '2021-09-13 08:47:19'),
(78, 5, 'ThinkPad P1 Workstation Gen 4 Intel1', 'ThinkPad P1 Workstation Gen 4 Intel1', 'thinkpad-p1-workstation-gen-4-intel1', 'Stylish, lightweight, & packed with power.', '<p>The ThinkPad P1 Gen 4 performance laptop blends form and function with an elegant carbon-fiber weave and lightweight design, starting at just 1.8kg / 3.99lbs. The stylish exterior conceals impressive performance with the latest 11th Gen Intel® Core™ or Xeon® processors. Plus, choose professional NVIDIA® RTX™ graphics—supporting up to the NVIDIA® RTX™ A5000 backed by ISV certifications or the powerful NVIDIA® GeForce RTX™ 3070 or 3080.</p>', '<p>Our lightest 15” ZBook provides true mobility for people who push the typical business PC past its breaking point. In the office or in the field, with pro-level performance and a full-size numeric keypad, you have everything to review work and manage projects from anywhere.</p><h4>Powered for business</h4><p>The compact, light, 16mm chassis with aluminum components is easy to carry from place to place. Enjoy an over 84-percent screen-to-body ratio and a quiet, responsive keyboard.</p><h4>Durable mobile design</h4><p>HP Wolf Security for Business creates a hardware-enforced, always-on, resilient defense. From the BIOS to the browser, above, in, and below the OS, these constantly evolving solutions help protect your PC from modern threats.</p><h4>Power that lasts</h4><p>Equipped with the latest Intel® processor[2] and high- performance memory, the HP ProBook 430 drives performance with long battery life and high-speed solid-state drives.</p><hr><h4>Return & exchange information</h4><p>HP.com will accept returns or exchanges for this product up to 30 days after delivery. A restocking fee may apply. For details, please visit: https://www.hp.com/us-en/shop/cv/returnsandexchanges.</p>', NULL, 50, '0.00', '339900.00', NULL, 1, 1, '2021-09-13 08:47:19', '2021-09-13 08:47:19'),
(79, 5, 'Legion 7i (15\") with RTX 20802', 'Legion 7i (15\") with RTX 20802', 'legion-7i-with-rtx-20802', 'keeps up with you and your life all day long.', '<p>Team SoloMid Partnership</p><p>Legion gaming accessories are crafted to help you win, delivering legendary performance, reliability, and aesthetics. Whether you need an armored bag to protect your gear, a precision mouse to improve your aim, or a tactile keyboard for fearlessly commanding your siege, each addition makes a powerful ally on your path to victory</p>', '<p>Our lightest 15” ZBook provides true mobility for people who push the typical business PC past its breaking point. In the office or in the field, with pro-level performance and a full-size numeric keypad, you have everything to review work and manage projects from anywhere.</p><h4>Powered for business</h4><p>The compact, light, 16mm chassis with aluminum components is easy to carry from place to place. Enjoy an over 84-percent screen-to-body ratio and a quiet, responsive keyboard.</p><h4>Durable mobile design</h4><p>HP Wolf Security for Business creates a hardware-enforced, always-on, resilient defense. From the BIOS to the browser, above, in, and below the OS, these constantly evolving solutions help protect your PC from modern threats.</p><h4>Power that lasts</h4><p>Equipped with the latest Intel® processor[2] and high- performance memory, the HP ProBook 430 drives performance with long battery life and high-speed solid-state drives.</p><hr><h4>Return & exchange information</h4><p>HP.com will accept returns or exchanges for this product up to 30 days after delivery. A restocking fee may apply. For details, please visit: https://www.hp.com/us-en/shop/cv/returnsandexchanges.</p>', NULL, 50, '0.00', '271900.00', NULL, 1, 1, '2021-09-13 08:47:19', '2021-09-13 08:47:19'),
(80, 5, 'ThinkPad X1 Extreme Gen 3 Intel2', 'ThinkPad X1 Extreme Gen 3 Intel2', 'thinkpad-x1-extreme-gen-3-intel2', '10th Generation Intel® Core™ i7-10750H Processor.', '<p>10th Gen Intel® H Core™ processors are a powerhouse perfect for creators, gaming enthusiasts and other demanding multitaskers. Creators appreciate the lightweight portability and stunning graphics performance from the ThinkPad X1 Extreme’s NVIDIA® GeForce® GTX 1650TI GPU. IT admins love the ThinkPad name and all that it produces—robust security and privacy features, trusted reliability, and craftsmanship renowned throughout the world.</p>', '<p>Our lightest 15” ZBook provides true mobility for people who push the typical business PC past its breaking point. In the office or in the field, with pro-level performance and a full-size numeric keypad, you have everything to review work and manage projects from anywhere.</p><h4>Powered for business</h4><p>The compact, light, 16mm chassis with aluminum components is easy to carry from place to place. Enjoy an over 84-percent screen-to-body ratio and a quiet, responsive keyboard.</p><h4>Durable mobile design</h4><p>HP Wolf Security for Business creates a hardware-enforced, always-on, resilient defense. From the BIOS to the browser, above, in, and below the OS, these constantly evolving solutions help protect your PC from modern threats.</p><h4>Power that lasts</h4><p>Equipped with the latest Intel® processor[2] and high- performance memory, the HP ProBook 430 drives performance with long battery life and high-speed solid-state drives.</p><hr><h4>Return & exchange information</h4><p>HP.com will accept returns or exchanges for this product up to 30 days after delivery. A restocking fee may apply. For details, please visit: https://www.hp.com/us-en/shop/cv/returnsandexchanges.</p>', NULL, 50, '0.00', '148900.00', NULL, 1, 1, '2021-09-13 08:47:19', '2021-09-13 08:47:19'),
(81, 5, 'ThinkPad P1 Workstation Gen 4 Intel2', 'ThinkPad P1 Workstation Gen 4 Intel2', 'thinkpad-p1-workstation-gen-4-intel2', 'Stylish, lightweight, & packed with power.', '<p>The ThinkPad P1 Gen 4 performance laptop blends form and function with an elegant carbon-fiber weave and lightweight design, starting at just 1.8kg / 3.99lbs. The stylish exterior conceals impressive performance with the latest 11th Gen Intel® Core™ or Xeon® processors. Plus, choose professional NVIDIA® RTX™ graphics—supporting up to the NVIDIA® RTX™ A5000 backed by ISV certifications or the powerful NVIDIA® GeForce RTX™ 3070 or 3080.</p>', '<p>Our lightest 15” ZBook provides true mobility for people who push the typical business PC past its breaking point. In the office or in the field, with pro-level performance and a full-size numeric keypad, you have everything to review work and manage projects from anywhere.</p><h4>Powered for business</h4><p>The compact, light, 16mm chassis with aluminum components is easy to carry from place to place. Enjoy an over 84-percent screen-to-body ratio and a quiet, responsive keyboard.</p><h4>Durable mobile design</h4><p>HP Wolf Security for Business creates a hardware-enforced, always-on, resilient defense. From the BIOS to the browser, above, in, and below the OS, these constantly evolving solutions help protect your PC from modern threats.</p><h4>Power that lasts</h4><p>Equipped with the latest Intel® processor[2] and high- performance memory, the HP ProBook 430 drives performance with long battery life and high-speed solid-state drives.</p><hr><h4>Return & exchange information</h4><p>HP.com will accept returns or exchanges for this product up to 30 days after delivery. A restocking fee may apply. For details, please visit: https://www.hp.com/us-en/shop/cv/returnsandexchanges.</p>', NULL, 50, '0.00', '339900.00', NULL, 1, 1, '2021-09-13 08:47:20', '2021-09-13 08:47:20'),
(82, 5, 'Legion 7i (15\") with RTX 20803', 'Legion 7i (15\") with RTX 20803', 'legion-7i-with-rtx-20803', 'keeps up with you and your life all day long.', '<p>Team SoloMid Partnership</p><p>Legion gaming accessories are crafted to help you win, delivering legendary performance, reliability, and aesthetics. Whether you need an armored bag to protect your gear, a precision mouse to improve your aim, or a tactile keyboard for fearlessly commanding your siege, each addition makes a powerful ally on your path to victory</p>', '<p>Our lightest 15” ZBook provides true mobility for people who push the typical business PC past its breaking point. In the office or in the field, with pro-level performance and a full-size numeric keypad, you have everything to review work and manage projects from anywhere.</p><h4>Powered for business</h4><p>The compact, light, 16mm chassis with aluminum components is easy to carry from place to place. Enjoy an over 84-percent screen-to-body ratio and a quiet, responsive keyboard.</p><h4>Durable mobile design</h4><p>HP Wolf Security for Business creates a hardware-enforced, always-on, resilient defense. From the BIOS to the browser, above, in, and below the OS, these constantly evolving solutions help protect your PC from modern threats.</p><h4>Power that lasts</h4><p>Equipped with the latest Intel® processor[2] and high- performance memory, the HP ProBook 430 drives performance with long battery life and high-speed solid-state drives.</p><hr><h4>Return & exchange information</h4><p>HP.com will accept returns or exchanges for this product up to 30 days after delivery. A restocking fee may apply. For details, please visit: https://www.hp.com/us-en/shop/cv/returnsandexchanges.</p>', NULL, 50, '0.00', '271900.00', NULL, 1, 1, '2021-09-13 08:47:20', '2021-09-13 08:47:20'),
(83, 5, 'ThinkPad X1 Extreme Gen 3 Intel3', 'ThinkPad X1 Extreme Gen 3 Intel3', 'thinkpad-x1-extreme-gen-3-intel3', '10th Generation Intel® Core™ i7-10750H Processor.', '<p>10th Gen Intel® H Core™ processors are a powerhouse perfect for creators, gaming enthusiasts and other demanding multitaskers. Creators appreciate the lightweight portability and stunning graphics performance from the ThinkPad X1 Extreme’s NVIDIA® GeForce® GTX 1650TI GPU. IT admins love the ThinkPad name and all that it produces—robust security and privacy features, trusted reliability, and craftsmanship renowned throughout the world.</p>', '<p>Our lightest 15” ZBook provides true mobility for people who push the typical business PC past its breaking point. In the office or in the field, with pro-level performance and a full-size numeric keypad, you have everything to review work and manage projects from anywhere.</p><h4>Powered for business</h4><p>The compact, light, 16mm chassis with aluminum components is easy to carry from place to place. Enjoy an over 84-percent screen-to-body ratio and a quiet, responsive keyboard.</p><h4>Durable mobile design</h4><p>HP Wolf Security for Business creates a hardware-enforced, always-on, resilient defense. From the BIOS to the browser, above, in, and below the OS, these constantly evolving solutions help protect your PC from modern threats.</p><h4>Power that lasts</h4><p>Equipped with the latest Intel® processor[2] and high- performance memory, the HP ProBook 430 drives performance with long battery life and high-speed solid-state drives.</p><hr><h4>Return & exchange information</h4><p>HP.com will accept returns or exchanges for this product up to 30 days after delivery. A restocking fee may apply. For details, please visit: https://www.hp.com/us-en/shop/cv/returnsandexchanges.</p>', NULL, 50, '0.00', '148900.00', NULL, 1, 1, '2021-09-13 08:47:20', '2021-09-13 08:47:20'),
(84, 5, 'ThinkPad P1 Workstation Gen 4 Intel3', 'ThinkPad P1 Workstation Gen 4 Intel3', 'thinkpad-p1-workstation-gen-4-intel3', 'Stylish, lightweight, & packed with power.', '<p>The ThinkPad P1 Gen 4 performance laptop blends form and function with an elegant carbon-fiber weave and lightweight design, starting at just 1.8kg / 3.99lbs. The stylish exterior conceals impressive performance with the latest 11th Gen Intel® Core™ or Xeon® processors. Plus, choose professional NVIDIA® RTX™ graphics—supporting up to the NVIDIA® RTX™ A5000 backed by ISV certifications or the powerful NVIDIA® GeForce RTX™ 3070 or 3080.</p>', '<p>Our lightest 15” ZBook provides true mobility for people who push the typical business PC past its breaking point. In the office or in the field, with pro-level performance and a full-size numeric keypad, you have everything to review work and manage projects from anywhere.</p><h4>Powered for business</h4><p>The compact, light, 16mm chassis with aluminum components is easy to carry from place to place. Enjoy an over 84-percent screen-to-body ratio and a quiet, responsive keyboard.</p><h4>Durable mobile design</h4><p>HP Wolf Security for Business creates a hardware-enforced, always-on, resilient defense. From the BIOS to the browser, above, in, and below the OS, these constantly evolving solutions help protect your PC from modern threats.</p><h4>Power that lasts</h4><p>Equipped with the latest Intel® processor[2] and high- performance memory, the HP ProBook 430 drives performance with long battery life and high-speed solid-state drives.</p><hr><h4>Return & exchange information</h4><p>HP.com will accept returns or exchanges for this product up to 30 days after delivery. A restocking fee may apply. For details, please visit: https://www.hp.com/us-en/shop/cv/returnsandexchanges.</p>', NULL, 50, '0.00', '339900.00', NULL, 1, 1, '2021-09-13 08:47:20', '2021-09-13 08:47:20'),
(85, 5, 'Legion 7i (15\") with RTX 20804', 'Legion 7i (15\") with RTX 20804', 'legion-7i-with-rtx-20804', 'keeps up with you and your life all day long.', '<p>Team SoloMid Partnership</p><p>Legion gaming accessories are crafted to help you win, delivering legendary performance, reliability, and aesthetics. Whether you need an armored bag to protect your gear, a precision mouse to improve your aim, or a tactile keyboard for fearlessly commanding your siege, each addition makes a powerful ally on your path to victory</p>', '<p>Our lightest 15” ZBook provides true mobility for people who push the typical business PC past its breaking point. In the office or in the field, with pro-level performance and a full-size numeric keypad, you have everything to review work and manage projects from anywhere.</p><h4>Powered for business</h4><p>The compact, light, 16mm chassis with aluminum components is easy to carry from place to place. Enjoy an over 84-percent screen-to-body ratio and a quiet, responsive keyboard.</p><h4>Durable mobile design</h4><p>HP Wolf Security for Business creates a hardware-enforced, always-on, resilient defense. From the BIOS to the browser, above, in, and below the OS, these constantly evolving solutions help protect your PC from modern threats.</p><h4>Power that lasts</h4><p>Equipped with the latest Intel® processor[2] and high- performance memory, the HP ProBook 430 drives performance with long battery life and high-speed solid-state drives.</p><hr><h4>Return & exchange information</h4><p>HP.com will accept returns or exchanges for this product up to 30 days after delivery. A restocking fee may apply. For details, please visit: https://www.hp.com/us-en/shop/cv/returnsandexchanges.</p>', NULL, 50, '0.00', '271900.00', NULL, 1, 1, '2021-09-13 08:47:20', '2021-09-13 08:47:20'),
(86, 5, 'ThinkPad X1 Extreme Gen 3 Intel4', 'ThinkPad X1 Extreme Gen 3 Intel4', 'thinkpad-x1-extreme-gen-3-intel4', '10th Generation Intel® Core™ i7-10750H Processor.', '<p>10th Gen Intel® H Core™ processors are a powerhouse perfect for creators, gaming enthusiasts and other demanding multitaskers. Creators appreciate the lightweight portability and stunning graphics performance from the ThinkPad X1 Extreme’s NVIDIA® GeForce® GTX 1650TI GPU. IT admins love the ThinkPad name and all that it produces—robust security and privacy features, trusted reliability, and craftsmanship renowned throughout the world.</p>', '<p>Our lightest 15” ZBook provides true mobility for people who push the typical business PC past its breaking point. In the office or in the field, with pro-level performance and a full-size numeric keypad, you have everything to review work and manage projects from anywhere.</p><h4>Powered for business</h4><p>The compact, light, 16mm chassis with aluminum components is easy to carry from place to place. Enjoy an over 84-percent screen-to-body ratio and a quiet, responsive keyboard.</p><h4>Durable mobile design</h4><p>HP Wolf Security for Business creates a hardware-enforced, always-on, resilient defense. From the BIOS to the browser, above, in, and below the OS, these constantly evolving solutions help protect your PC from modern threats.</p><h4>Power that lasts</h4><p>Equipped with the latest Intel® processor[2] and high- performance memory, the HP ProBook 430 drives performance with long battery life and high-speed solid-state drives.</p><hr><h4>Return & exchange information</h4><p>HP.com will accept returns or exchanges for this product up to 30 days after delivery. A restocking fee may apply. For details, please visit: https://www.hp.com/us-en/shop/cv/returnsandexchanges.</p>', NULL, 50, '0.00', '148900.00', NULL, 1, 1, '2021-09-13 08:47:20', '2021-09-13 08:47:20'),
(87, 5, 'ThinkPad P1 Workstation Gen 4 Intel4', 'ThinkPad P1 Workstation Gen 4 Intel4', 'thinkpad-p1-workstation-gen-4-intel4', 'Stylish, lightweight, & packed with power.', '<p>The ThinkPad P1 Gen 4 performance laptop blends form and function with an elegant carbon-fiber weave and lightweight design, starting at just 1.8kg / 3.99lbs. The stylish exterior conceals impressive performance with the latest 11th Gen Intel® Core™ or Xeon® processors. Plus, choose professional NVIDIA® RTX™ graphics—supporting up to the NVIDIA® RTX™ A5000 backed by ISV certifications or the powerful NVIDIA® GeForce RTX™ 3070 or 3080.</p>', '<p>Our lightest 15” ZBook provides true mobility for people who push the typical business PC past its breaking point. In the office or in the field, with pro-level performance and a full-size numeric keypad, you have everything to review work and manage projects from anywhere.</p><h4>Powered for business</h4><p>The compact, light, 16mm chassis with aluminum components is easy to carry from place to place. Enjoy an over 84-percent screen-to-body ratio and a quiet, responsive keyboard.</p><h4>Durable mobile design</h4><p>HP Wolf Security for Business creates a hardware-enforced, always-on, resilient defense. From the BIOS to the browser, above, in, and below the OS, these constantly evolving solutions help protect your PC from modern threats.</p><h4>Power that lasts</h4><p>Equipped with the latest Intel® processor[2] and high- performance memory, the HP ProBook 430 drives performance with long battery life and high-speed solid-state drives.</p><hr><h4>Return & exchange information</h4><p>HP.com will accept returns or exchanges for this product up to 30 days after delivery. A restocking fee may apply. For details, please visit: https://www.hp.com/us-en/shop/cv/returnsandexchanges.</p>', NULL, 50, '0.00', '339900.00', NULL, 1, 1, '2021-09-13 08:47:20', '2021-09-13 08:47:20'),
(88, 5, 'Legion 7i (15\") with RTX 20805', 'Legion 7i (15\") with RTX 20805', 'legion-7i-with-rtx-20805', 'keeps up with you and your life all day long.', '<p>Team SoloMid Partnership</p><p>Legion gaming accessories are crafted to help you win, delivering legendary performance, reliability, and aesthetics. Whether you need an armored bag to protect your gear, a precision mouse to improve your aim, or a tactile keyboard for fearlessly commanding your siege, each addition makes a powerful ally on your path to victory</p>', '<p>Our lightest 15” ZBook provides true mobility for people who push the typical business PC past its breaking point. In the office or in the field, with pro-level performance and a full-size numeric keypad, you have everything to review work and manage projects from anywhere.</p><h4>Powered for business</h4><p>The compact, light, 16mm chassis with aluminum components is easy to carry from place to place. Enjoy an over 84-percent screen-to-body ratio and a quiet, responsive keyboard.</p><h4>Durable mobile design</h4><p>HP Wolf Security for Business creates a hardware-enforced, always-on, resilient defense. From the BIOS to the browser, above, in, and below the OS, these constantly evolving solutions help protect your PC from modern threats.</p><h4>Power that lasts</h4><p>Equipped with the latest Intel® processor[2] and high- performance memory, the HP ProBook 430 drives performance with long battery life and high-speed solid-state drives.</p><hr><h4>Return & exchange information</h4><p>HP.com will accept returns or exchanges for this product up to 30 days after delivery. A restocking fee may apply. For details, please visit: https://www.hp.com/us-en/shop/cv/returnsandexchanges.</p>', NULL, 50, '0.00', '271900.00', NULL, 1, 1, '2021-09-13 08:47:20', '2021-09-13 08:47:20'),
(89, 5, 'ThinkPad X1 Extreme Gen 3 Intel5', 'ThinkPad X1 Extreme Gen 3 Intel5', 'thinkpad-x1-extreme-gen-3-intel5', '10th Generation Intel® Core™ i7-10750H Processor.', '<p>10th Gen Intel® H Core™ processors are a powerhouse perfect for creators, gaming enthusiasts and other demanding multitaskers. Creators appreciate the lightweight portability and stunning graphics performance from the ThinkPad X1 Extreme’s NVIDIA® GeForce® GTX 1650TI GPU. IT admins love the ThinkPad name and all that it produces—robust security and privacy features, trusted reliability, and craftsmanship renowned throughout the world.</p>', '<p>Our lightest 15” ZBook provides true mobility for people who push the typical business PC past its breaking point. In the office or in the field, with pro-level performance and a full-size numeric keypad, you have everything to review work and manage projects from anywhere.</p><h4>Powered for business</h4><p>The compact, light, 16mm chassis with aluminum components is easy to carry from place to place. Enjoy an over 84-percent screen-to-body ratio and a quiet, responsive keyboard.</p><h4>Durable mobile design</h4><p>HP Wolf Security for Business creates a hardware-enforced, always-on, resilient defense. From the BIOS to the browser, above, in, and below the OS, these constantly evolving solutions help protect your PC from modern threats.</p><h4>Power that lasts</h4><p>Equipped with the latest Intel® processor[2] and high- performance memory, the HP ProBook 430 drives performance with long battery life and high-speed solid-state drives.</p><hr><h4>Return & exchange information</h4><p>HP.com will accept returns or exchanges for this product up to 30 days after delivery. A restocking fee may apply. For details, please visit: https://www.hp.com/us-en/shop/cv/returnsandexchanges.</p>', NULL, 50, '0.00', '148900.00', NULL, 1, 1, '2021-09-13 08:47:20', '2021-09-13 08:47:20');
INSERT INTO `products` (`id`, `brand_id`, `sku`, `name`, `slug`, `summary`, `overview`, `description`, `specification`, `quantity`, `shipping_fee`, `price`, `sale_price`, `status`, `featured`, `created_at`, `updated_at`) VALUES
(90, 5, 'ThinkPad P1 Workstation Gen 4 Intel5', 'ThinkPad P1 Workstation Gen 4 Intel5', 'thinkpad-p1-workstation-gen-4-intel5', 'Stylish, lightweight, & packed with power.', '<p>The ThinkPad P1 Gen 4 performance laptop blends form and function with an elegant carbon-fiber weave and lightweight design, starting at just 1.8kg / 3.99lbs. The stylish exterior conceals impressive performance with the latest 11th Gen Intel® Core™ or Xeon® processors. Plus, choose professional NVIDIA® RTX™ graphics—supporting up to the NVIDIA® RTX™ A5000 backed by ISV certifications or the powerful NVIDIA® GeForce RTX™ 3070 or 3080.</p>', '<p>Our lightest 15” ZBook provides true mobility for people who push the typical business PC past its breaking point. In the office or in the field, with pro-level performance and a full-size numeric keypad, you have everything to review work and manage projects from anywhere.</p><h4>Powered for business</h4><p>The compact, light, 16mm chassis with aluminum components is easy to carry from place to place. Enjoy an over 84-percent screen-to-body ratio and a quiet, responsive keyboard.</p><h4>Durable mobile design</h4><p>HP Wolf Security for Business creates a hardware-enforced, always-on, resilient defense. From the BIOS to the browser, above, in, and below the OS, these constantly evolving solutions help protect your PC from modern threats.</p><h4>Power that lasts</h4><p>Equipped with the latest Intel® processor[2] and high- performance memory, the HP ProBook 430 drives performance with long battery life and high-speed solid-state drives.</p><hr><h4>Return & exchange information</h4><p>HP.com will accept returns or exchanges for this product up to 30 days after delivery. A restocking fee may apply. For details, please visit: https://www.hp.com/us-en/shop/cv/returnsandexchanges.</p>', NULL, 50, '0.00', '339900.00', NULL, 1, 1, '2021-09-13 08:47:20', '2021-09-13 08:47:20'),
(91, 1, 'iPhone XR', 'iPhone XR', 'iphone-xr', '早い話、速いです。', '<p>iPhone XR (PRODUCT)REDを買うたびに、COVID-19対策のために 「世界エイズ・結核・マラリア対策基金（グローバルファンド）」に 直接寄付されます。</p>', '<p><h4>同梱物</h4>Appleは、環境に関する目標の達成に向けた取り組みを続けています。その一環として、iPhone XRには電源アダプタとEarPodsが付属していません。製品には、USB‑C電源アダプタとコンピュータのポートに対応する、高速充電ができるUSB-C - Lightningケーブルが同梱されています。</p><p>このiPhoneに対応する、今お使いのUSB-A - Lightningケーブル、電源アダプタ、ヘッドフォンを再利用することをおすすめしますが、新しいApple電源アダプタやヘッドフォンが必要な場合は、購入することができます。</p>', NULL, 50, '0.00', '60280.00', NULL, 1, 1, '2021-09-13 08:47:20', '2021-09-13 08:47:20'),
(92, 1, 'iPhone 11', 'iPhone 11', 'iphone-11', '早い話、速いです。', '<p>iPhone 11 (PRODUCT)REDを買うたびに、COVID-19対策のために 「世界エイズ・結核・マラリア対策基金（グローバルファンド）」に 直接寄付されます。</p>', '<p><h4>同梱物</h4>Appleは、環境に関する目標の達成に向けた取り組みを続けています。その一環として、iPhone 11には電源アダプタとEarPodsが付属していません。製品には、USB‑C電源アダプタとコンピュータのポートに対応する、高速充電ができるUSB-C - Lightningケーブルが同梱されています。</p><p>このiPhoneに対応する、今お使いのUSB-A - Lightningケーブル、電源アダプタ、ヘッドフォンを再利用することをおすすめしますが、新しいApple電源アダプタやヘッドフォンが必要な場合は、購入することができます。</p>', NULL, 50, '0.00', '71280.00', NULL, 1, 1, '2021-09-13 08:47:20', '2021-09-13 08:47:20'),
(93, 1, 'iPhone SE', 'iPhone SE', 'iphone-se', '早い話、速いです。', '<p>iPhone SE (PRODUCT)REDを買うたびに、COVID-19対策のために 「世界エイズ・結核・マラリア対策基金（グローバルファンド）」に 直接寄付されます。</p>', '<p><h4>同梱物</h4>Appleは、環境に関する目標の達成に向けた取り組みを続けています。その一環として、iPhone SEには電源アダプタとEarPodsが付属していません。製品には、USB‑C電源アダプタとコンピュータのポートに対応する、高速充電ができるUSB-C - Lightningケーブルが同梱されています。</p><p>このiPhoneに対応する、今お使いのUSB-A - Lightningケーブル、電源アダプタ、ヘッドフォンを再利用することをおすすめしますが、新しいApple電源アダプタやヘッドフォンが必要な場合は、購入することができます。</p>', NULL, 50, '0.00', '49280.00', NULL, 1, 1, '2021-09-13 08:47:20', '2021-09-13 08:47:20'),
(94, 1, 'iPhone 12', 'iPhone 12', 'iphone-12', '早い話、速いです。', '<p>iPhone 12とiPhone 12 mini (PRODUCT)REDを買うたびに、COVID-19対策のために 「世界エイズ・結核・マラリア対策基金（グローバルファンド）」に 直接寄付されます。</p>', '<p><h4>同梱物</h4>Appleは、環境に関する目標の達成に向けた取り組みを続けています。その一環として、iPhone 12とiPhone 12 miniには電源アダプタとEarPodsが付属していません。製品には、USB‑C電源アダプタとコンピュータのポートに対応する、高速充電ができるUSB-C - Lightningケーブルが同梱されています。</p><p>このiPhoneに対応する、今お使いのUSB-A - Lightningケーブル、電源アダプタ、ヘッドフォンを再利用することをおすすめしますが、新しいApple電源アダプタやヘッドフォンが必要な場合は、購入することができます。</p><p><h4>MagSafe。すべてが、ピタッと。</h4>MagSafeは、アクセサリの新しいエコシステムです。装着が簡単で、ワイヤレス充電がよりすばやくできます。組み合わせは数えきれないほど。どんなスタイルにもマッチします。</p>', NULL, 50, '0.00', '82280.00', NULL, 1, 1, '2021-09-13 08:47:20', '2021-09-13 08:47:20'),
(95, 1, 'iPhone 12 Pro', 'iPhone 12 Pro', 'iphone-12-pro', '早い話、速いです。', '<p>iPhone 12 ProとiPhone 12 Pro Max (PRODUCT)REDを買うたびに、COVID-19対策のために 「世界エイズ・結核・マラリア対策基金（グローバルファンド）」に 直接寄付されます。</p>', '<p><h4>同梱物</h4>Appleは、環境に関する目標の達成に向けた取り組みを続けています。その一環として、iPhone 12 ProとiPhone 12 Pro Maxには電源アダプタとEarPodsが付属していません。製品には、USB‑C電源アダプタとコンピュータのポートに対応する、高速充電ができるUSB-C - Lightningケーブルが同梱されています。</p><p>このiPhoneに対応する、今お使いのUSB-A - Lightningケーブル、電源アダプタ、ヘッドフォンを再利用することをおすすめしますが、新しいApple電源アダプタやヘッドフォンが必要な場合は、購入することができます。</p><p><h4>MagSafe。すべてが、ピタッと。</h4>MagSafeは、アクセサリの新しいエコシステムです。装着が簡単で、ワイヤレス充電がよりすばやくできます。組み合わせは数えきれないほど。どんなスタイルにもマッチします。</p>', NULL, 50, '0.00', '117480.00', NULL, 1, 1, '2021-09-13 08:47:20', '2021-09-13 08:47:20'),
(96, 6, 'Galaxy Z Fold3 5G', 'Galaxy Z Fold3 5G', 'galaxy-z-fold3-5g', 'Enjoy the highest online instant trade-in values', '<p>When the 7.6-inch Infinity Flex Display lights up like magic, the front camera disappears — leaving behind nothing but your YouTube video.* With less bezel, no notch and an Under Display Camera, its the worlds first foldable phone with an uninterrupted view.</p>', '<p><h4>Easy Multitasking</h4>Your phone delivers PC-like productivity, but folds in your palm for portability. Flex mode provides multidimensional experience, so you can do things faster, better and more efficiency.*</p><p><small>*Certain applications may not support Flex mode.</small></p>', NULL, 50, '0.00', '114900.00', NULL, 1, 1, '2021-09-13 08:47:20', '2021-09-13 08:47:20'),
(97, 6, 'Galaxy Z Flip3 5G', 'Galaxy Z Flip3 5G', 'galaxy-z-flip3-5g', 'A full-sized smartphone that folds to fit small-sized pockets.', '<p>When the 7.6-inch Infinity Flex Display lights up like magic, the front camera disappears — leaving behind nothing but your YouTube video.* With less bezel, no notch and an Under Display Camera, its the worlds first foldable phone with an uninterrupted view.</p>', '<p><h4>Easy Multitasking</h4>Your phone delivers PC-like productivity, but folds in your palm for portability. Flex mode provides multidimensional experience, so you can do things faster, better and more efficiency.*</p><p><small>*Certain applications may not support Flex mode.</small></p>', NULL, 50, '0.00', '34900.00', NULL, 1, 1, '2021-09-13 08:47:20', '2021-09-13 08:47:20'),
(98, 6, 'Galaxy S21 Ultra 5G', 'Galaxy S21 Ultra 5G', 'galaxy-s21-ultra-5g', 'The real metal finish on the main camera adds unity to the design.', '<p>The New Dual Zoom lens system is faster and sharper than any zoom before, featuring a 10MP Dual telephoto lens4 and enhanced Super Resolution. It even has a Zoom Lock feature so you can stabilize shots while zooming. Now zoom up to 100X with clarity and precision.</p>', '<p><h4>Easy Multitasking</h4>Your phone delivers PC-like productivity, but folds in your palm for portability. Flex mode provides multidimensional experience, so you can do things faster, better and more efficiency.*</p><p><small>*Certain applications may not support Flex mode.</small></p>', NULL, 50, '0.00', '39900.00', NULL, 1, 1, '2021-09-13 08:47:20', '2021-09-13 08:47:20'),
(99, 6, 'Galaxy XCover Pro 64GB', 'Galaxy XCover Pro 64GB', 'galaxy-xcover-pro-64gb', 'Work Anywhere. Without Sacrifice.', '<p>This military-grade phone is built to stand up to challenges the real world dishes out, while providing an easy-to-use and familiar environment.</p><p>Built for the future of work with the ability to do more with a single device.</p>', '<p><h4>Easy Multitasking</h4>Your phone delivers PC-like productivity, but folds in your palm for portability. Flex mode provides multidimensional experience, so you can do things faster, better and more efficiency.*</p><p><small>*Certain applications may not support Flex mode.</small></p>', NULL, 50, '0.00', '42400.00', NULL, 1, 1, '2021-09-13 08:47:20', '2021-09-13 08:47:20'),
(100, 7, 'Sony Xperia Pro', 'Sony Xperia Pro', 'sony-xperia-pro', 'Native Sony Alpha camera support.', '<p>This military-grade phone is built to stand up to challenges the real world dishes out, while providing an easy-to-use and familiar environment.</p><p>Built for the future of work with the ability to do more with a single device.</p>', '<p><h4>Easy Multitasking</h4>Your phone delivers PC-like productivity, but folds in your palm for portability. Flex mode provides multidimensional experience, so you can do things faster, better and more efficiency.*</p><p><small>*Certain applications may not support Flex mode.</small></p>', NULL, 50, '0.00', '249800.00', NULL, 1, 1, '2021-09-13 08:47:20', '2021-09-13 08:47:20'),
(101, 7, 'Sony Xperia 10 III', 'Sony Xperia 10 III', 'sony-xperia-10-iii', 'Corning Gorilla Glass 6.', '<p>This military-grade phone is built to stand up to challenges the real world dishes out, while providing an easy-to-use and familiar environment.</p><p>Built for the future of work with the ability to do more with a single device.</p>', '<p><h4>Easy Multitasking</h4>Your phone delivers PC-like productivity, but folds in your palm for portability. Flex mode provides multidimensional experience, so you can do things faster, better and more efficiency.*</p><p><small>*Certain applications may not support Flex mode.</small></p>', NULL, 50, '0.00', '38700.00', NULL, 1, 1, '2021-09-13 08:47:20', '2021-09-13 08:47:20'),
(102, 7, 'Sony Xperia 5 III', 'Sony Xperia 5 III', 'sony-xperia-5-iii', 'Qualcomm SM8350 Snapdragon 888 5G.', '<p>This military-grade phone is built to stand up to challenges the real world dishes out, while providing an easy-to-use and familiar environment.</p><p>Built for the future of work with the ability to do more with a single device.</p>', '<p><h4>Easy Multitasking</h4>Your phone delivers PC-like productivity, but folds in your palm for portability. Flex mode provides multidimensional experience, so you can do things faster, better and more efficiency.*</p><p><small>*Certain applications may not support Flex mode.</small></p>', NULL, 50, '0.00', '99900.00', NULL, 1, 1, '2021-09-13 08:47:20', '2021-09-13 08:47:20'),
(103, 7, 'Sony Xperia 1 III', 'Sony Xperia 1 III', 'sony-xperia-1-iii', 'OLED, 1B colors, 120Hz, HDR BT.2020.', '<p>This military-grade phone is built to stand up to challenges the real world dishes out, while providing an easy-to-use and familiar environment.</p><p>Built for the future of work with the ability to do more with a single device.</p>', '<p><h4>Easy Multitasking</h4>Your phone delivers PC-like productivity, but folds in your palm for portability. Flex mode provides multidimensional experience, so you can do things faster, better and more efficiency.*</p><p><small>*Certain applications may not support Flex mode.</small></p>', NULL, 50, '0.00', '125700.00', NULL, 1, 1, '2021-09-13 08:47:20', '2021-09-13 08:47:20'),
(104, 7, 'Sony Xperia 10 III Lite', 'Sony Xperia 10 III Lite', 'sony-xperia-10-iii-lite', 'Li-Po 4500 mAh, non-removable.', '<p>This military-grade phone is built to stand up to challenges the real world dishes out, while providing an easy-to-use and familiar environment.</p><p>Built for the future of work with the ability to do more with a single device.</p>', '<p><h4>Easy Multitasking</h4>Your phone delivers PC-like productivity, but folds in your palm for portability. Flex mode provides multidimensional experience, so you can do things faster, better and more efficiency.*</p><p><small>*Certain applications may not support Flex mode.</small></p>', NULL, 50, '0.00', '69900.00', NULL, 1, 1, '2021-09-13 08:47:20', '2021-09-13 08:47:20'),
(105, 8, 'Xiaomi Redmi Note 10T 5G', 'Xiaomi Redmi Note 10T 5G', 'xiaomi-redmi-note-10t-5g', 'Corning Gorilla Glass 3.', '<p>This military-grade phone is built to stand up to challenges the real world dishes out, while providing an easy-to-use and familiar environment.</p><p>Built for the future of work with the ability to do more with a single device.</p>', '<p><h4>Easy Multitasking</h4>Your phone delivers PC-like productivity, but folds in your palm for portability. Flex mode provides multidimensional experience, so you can do things faster, better and more efficiency.*</p><p><small>*Certain applications may not support Flex mode.</small></p>', NULL, 50, '0.00', '39900.00', NULL, 1, 1, '2021-09-13 08:47:20', '2021-09-13 08:47:20'),
(106, 8, 'Xiaomi Redmi 10', 'Xiaomi Redmi 10', 'xiaomi-redmi-10', 'Corning Gorilla Glass 3.', '<p>This military-grade phone is built to stand up to challenges the real world dishes out, while providing an easy-to-use and familiar environment.</p><p>Built for the future of work with the ability to do more with a single device.</p>', '<p><h4>Easy Multitasking</h4>Your phone delivers PC-like productivity, but folds in your palm for portability. Flex mode provides multidimensional experience, so you can do things faster, better and more efficiency.*</p><p><small>*Certain applications may not support Flex mode.</small></p>', NULL, 50, '0.00', '33900.00', NULL, 1, 1, '2021-09-13 08:47:20', '2021-09-13 08:47:20'),
(107, 8, 'Xiaomi Redmi Note 8', 'Xiaomi Redmi Note 8', 'xiaomi-redmi-note-8', 'Corning Gorilla Glass 5.', '<p>This military-grade phone is built to stand up to challenges the real world dishes out, while providing an easy-to-use and familiar environment.</p><p>Built for the future of work with the ability to do more with a single device.</p>', '<p><h4>Easy Multitasking</h4>Your phone delivers PC-like productivity, but folds in your palm for portability. Flex mode provides multidimensional experience, so you can do things faster, better and more efficiency.*</p><p><small>*Certain applications may not support Flex mode.</small></p>', NULL, 50, '0.00', '24000.00', NULL, 1, 1, '2021-09-13 08:47:20', '2021-09-13 08:47:20'),
(108, 8, 'Xiaomi Mi 11X Pro', 'Xiaomi Mi 11X Pro', 'xiaomi-mi-11x-pro', 'Corning Gorilla Glass 5.', '<p>This military-grade phone is built to stand up to challenges the real world dishes out, while providing an easy-to-use and familiar environment.</p><p>Built for the future of work with the ability to do more with a single device.</p>', '<p><h4>Easy Multitasking</h4>Your phone delivers PC-like productivity, but folds in your palm for portability. Flex mode provides multidimensional experience, so you can do things faster, better and more efficiency.*</p><p><small>*Certain applications may not support Flex mode.</small></p>', NULL, 50, '0.00', '38000.00', NULL, 1, 1, '2021-09-13 08:47:20', '2021-09-13 08:47:20'),
(109, 9, 'EOS Kiss X10i', 'EOS Kiss X10i', 'eos-kiss-x10i', 'Digital AF/AE single-lens reflex camera.', '<p>This military-grade phone is built to stand up to challenges the real world dishes out, while providing an easy-to-use and familiar environment.</p><p>Built for the future of work with the ability to do more with a single device.</p>', '<p><h4>Easy Multitasking</h4>Your phone delivers PC-like productivity, but folds in your palm for portability. Flex mode provides multidimensional experience, so you can do things faster, better and more efficiency.*</p><p><small>*Certain applications may not support Flex mode.</small></p>', NULL, 50, '0.00', '142000.00', NULL, 1, 1, '2021-09-13 08:47:20', '2021-09-13 08:47:20'),
(110, 9, 'EOS-1D X Mark III', 'EOS-1D X Mark III', 'eos-1d-x-mark-iii', 'In addition to smooth, high-resolution 4K/60P video capture.', '<p>This military-grade phone is built to stand up to challenges the real world dishes out, while providing an easy-to-use and familiar environment.</p><p>Built for the future of work with the ability to do more with a single device.</p>', '<p><h4>Easy Multitasking</h4>Your phone delivers PC-like productivity, but folds in your palm for portability. Flex mode provides multidimensional experience, so you can do things faster, better and more efficiency.*</p><p><small>*Certain applications may not support Flex mode.</small></p>', NULL, 50, '0.00', '720000.00', NULL, 1, 1, '2021-09-13 08:47:20', '2021-09-13 08:47:20'),
(111, 9, 'EOS 90D', 'EOS 90D', 'eos-90d', 'In addition to smooth, high-resolution 4K/60P video capture.', '<p>This military-grade phone is built to stand up to challenges the real world dishes out, while providing an easy-to-use and familiar environment.</p><p>Built for the future of work with the ability to do more with a single device.</p>', '<p><h4>Easy Multitasking</h4>Your phone delivers PC-like productivity, but folds in your palm for portability. Flex mode provides multidimensional experience, so you can do things faster, better and more efficiency.*</p><p><small>*Certain applications may not support Flex mode.</small></p>', NULL, 50, '0.00', '217000.00', NULL, 1, 1, '2021-09-13 08:47:20', '2021-09-13 08:47:20'),
(112, 9, 'EOS REBEL SL3', 'EOS REBEL SL3', 'eos-rebel-sl3', 'In addition to smooth, high-resolution 4K/60P video capture.', '<p>This military-grade phone is built to stand up to challenges the real world dishes out, while providing an easy-to-use and familiar environment.</p><p>Built for the future of work with the ability to do more with a single device.</p>', '<p><h4>Easy Multitasking</h4>Your phone delivers PC-like productivity, but folds in your palm for portability. Flex mode provides multidimensional experience, so you can do things faster, better and more efficiency.*</p><p><small>*Certain applications may not support Flex mode.</small></p>', NULL, 50, '0.00', '62000.00', NULL, 1, 1, '2021-09-13 08:47:20', '2021-09-13 08:47:20'),
(113, 10, 'D6', 'D6', 'd6', 'ニコン史上最強のAF性能と高速連続撮影.', '<p>This military-grade phone is built to stand up to challenges the real world dishes out, while providing an easy-to-use and familiar environment.</p><p>Built for the future of work with the ability to do more with a single device.</p>', '<p><h4>Easy Multitasking</h4>Your phone delivers PC-like productivity, but folds in your palm for portability. Flex mode provides multidimensional experience, so you can do things faster, better and more efficiency.*</p><p><small>*Certain applications may not support Flex mode.</small></p>', NULL, 50, '0.00', '713000.00', NULL, 1, 1, '2021-09-13 08:47:20', '2021-09-13 08:47:20'),
(114, 10, 'D850', 'D850', 'd850', 'FXフォーマットベース フルフレームの4K', '<p>This military-grade phone is built to stand up to challenges the real world dishes out, while providing an easy-to-use and familiar environment.</p><p>Built for the future of work with the ability to do more with a single device.</p>', '<p><h4>Easy Multitasking</h4>Your phone delivers PC-like productivity, but folds in your palm for portability. Flex mode provides multidimensional experience, so you can do things faster, better and more efficiency.*</p><p><small>*Certain applications may not support Flex mode.</small></p>', NULL, 50, '0.00', '304000.00', NULL, 1, 1, '2021-09-13 08:47:20', '2021-09-13 08:47:20'),
(115, 10, 'D810A', 'D810A', 'd810a', '天体撮影に特化した機能', '<p>This military-grade phone is built to stand up to challenges the real world dishes out, while providing an easy-to-use and familiar environment.</p><p>Built for the future of work with the ability to do more with a single device.</p>', '<p><h4>Easy Multitasking</h4>Your phone delivers PC-like productivity, but folds in your palm for portability. Flex mode provides multidimensional experience, so you can do things faster, better and more efficiency.*</p><p><small>*Certain applications may not support Flex mode.</small></p>', NULL, 50, '0.00', '376200.00', NULL, 1, 1, '2021-09-13 08:47:20', '2021-09-13 08:47:20'),
(116, 10, 'D780', 'D780', 'd780', '高感度で実現するノイズを抑制した高い解像感', '<p>This military-grade phone is built to stand up to challenges the real world dishes out, while providing an easy-to-use and familiar environment.</p><p>Built for the future of work with the ability to do more with a single device.</p>', '<p><h4>Easy Multitasking</h4>Your phone delivers PC-like productivity, but folds in your palm for portability. Flex mode provides multidimensional experience, so you can do things faster, better and more efficiency.*</p><p><small>*Certain applications may not support Flex mode.</small></p>', NULL, 50, '0.00', '248300.00', NULL, 1, 1, '2021-09-13 08:47:20', '2021-09-13 08:47:20'),
(117, 7, 'SONY WF 1000XM4', 'SONY WF 1000XM4', 'sony-wf-1000xm4', 'WF-1000XM3よりもさらに高いノイズキャンセリング性能', '<p>This military-grade phone is built to stand up to challenges the real world dishes out, while providing an easy-to-use and familiar environment.</p><p>Built for the future of work with the ability to do more with a single device.</p>', '<p><h4>Easy Multitasking</h4>Your phone delivers PC-like productivity, but folds in your palm for portability. Flex mode provides multidimensional experience, so you can do things faster, better and more efficiency.*</p><p><small>*Certain applications may not support Flex mode.</small></p>', NULL, 20, '0.00', '33000.00', NULL, 1, 1, '2021-09-13 08:47:20', '2021-09-13 08:47:20'),
(118, 7, 'SONY WH 1000XM4', 'SONY WH 1000XM4', 'sony-wh-1000xm4', 'Extremeがリアルタイムで音楽を解析、最適な音にアップスケーリング。', '<p>This military-grade phone is built to stand up to challenges the real world dishes out, while providing an easy-to-use and familiar environment.</p><p>Built for the future of work with the ability to do more with a single device.</p>', '<p><h4>Easy Multitasking</h4>Your phone delivers PC-like productivity, but folds in your palm for portability. Flex mode provides multidimensional experience, so you can do things faster, better and more efficiency.*</p><p><small>*Certain applications may not support Flex mode.</small></p>', NULL, 20, '0.00', '42000.00', NULL, 1, 1, '2021-09-13 08:47:20', '2021-09-13 08:47:20'),
(119, 7, 'SONY WF 1000XM3', 'SONY WF 1000XM3', 'sony-wf-1000xm3', 'ワイヤレスでもハイレゾ相当の高音質を実現', '<p>This military-grade phone is built to stand up to challenges the real world dishes out, while providing an easy-to-use and familiar environment.</p><p>Built for the future of work with the ability to do more with a single device.</p>', '<p><h4>Easy Multitasking</h4>Your phone delivers PC-like productivity, but folds in your palm for portability. Flex mode provides multidimensional experience, so you can do things faster, better and more efficiency.*</p><p><small>*Certain applications may not support Flex mode.</small></p>', NULL, 20, '0.00', '25800.00', NULL, 1, 1, '2021-09-13 08:47:20', '2021-09-13 08:47:20'),
(120, 7, 'SONY MDR-ZX110NC', 'SONY MDR-ZX110NC', 'sony-mdr-zx110nc', 'ノイズキャンセリングヘッドホン', '<p>This military-grade phone is built to stand up to challenges the real world dishes out, while providing an easy-to-use and familiar environment.</p><p>Built for the future of work with the ability to do more with a single device.</p>', '<p><h4>Easy Multitasking</h4>Your phone delivers PC-like productivity, but folds in your palm for portability. Flex mode provides multidimensional experience, so you can do things faster, better and more efficiency.*</p><p><small>*Certain applications may not support Flex mode.</small></p>', NULL, 20, '0.00', '3820.00', NULL, 1, 1, '2021-09-13 08:47:20', '2021-09-13 08:47:20'),
(121, 11, 'HD 400S', 'HD 400S', 'hd-400s', '密閉型 リモコン付き', '<p>This military-grade phone is built to stand up to challenges the real world dishes out, while providing an easy-to-use and familiar environment.</p><p>Built for the future of work with the ability to do more with a single device.</p>', '<p><h4>Easy Multitasking</h4>Your phone delivers PC-like productivity, but folds in your palm for portability. Flex mode provides multidimensional experience, so you can do things faster, better and more efficiency.*</p><p><small>*Certain applications may not support Flex mode.</small></p>', NULL, 20, '0.00', '8655.00', NULL, 1, 1, '2021-09-13 08:47:20', '2021-09-13 08:47:20'),
(122, 11, 'HD 559', 'HD 559', 'hd-559', 'オープン型', '<p>This military-grade phone is built to stand up to challenges the real world dishes out, while providing an easy-to-use and familiar environment.</p><p>Built for the future of work with the ability to do more with a single device.</p>', '<p><h4>Easy Multitasking</h4>Your phone delivers PC-like productivity, but folds in your palm for portability. Flex mode provides multidimensional experience, so you can do things faster, better and more efficiency.*</p><p><small>*Certain applications may not support Flex mode.</small></p>', NULL, 20, '0.00', '10791.00', NULL, 1, 1, '2021-09-13 08:47:20', '2021-09-13 08:47:20'),
(123, 11, 'HD 598', 'HD 598', 'hd-598', 'オープン型', '<p>This military-grade phone is built to stand up to challenges the real world dishes out, while providing an easy-to-use and familiar environment.</p><p>Built for the future of work with the ability to do more with a single device.</p>', '<p><h4>Easy Multitasking</h4>Your phone delivers PC-like productivity, but folds in your palm for portability. Flex mode provides multidimensional experience, so you can do things faster, better and more efficiency.*</p><p><small>*Certain applications may not support Flex mode.</small></p>', NULL, 20, '0.00', '16800.00', NULL, 1, 1, '2021-09-13 08:47:20', '2021-09-13 08:47:20'),
(124, 11, 'HD 600', 'HD 600', 'hd-600', 'オープン型', '<p>This military-grade phone is built to stand up to challenges the real world dishes out, while providing an easy-to-use and familiar environment.</p><p>Built for the future of work with the ability to do more with a single device.</p>', '<p><h4>Easy Multitasking</h4>Your phone delivers PC-like productivity, but folds in your palm for portability. Flex mode provides multidimensional experience, so you can do things faster, better and more efficiency.*</p><p><small>*Certain applications may not support Flex mode.</small></p>', NULL, 20, '0.00', '39500.00', NULL, 1, 1, '2021-09-13 08:47:20', '2021-09-13 08:47:20');

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
(1, 2, 1, '2021-09-13 08:47:20', '2021-09-13 08:47:20'),
(2, 2, 2, '2021-09-13 08:47:20', '2021-09-13 08:47:20'),
(3, 2, 3, '2021-09-13 08:47:20', '2021-09-13 08:47:20'),
(4, 2, 4, '2021-09-13 08:47:20', '2021-09-13 08:47:20'),
(5, 2, 5, '2021-09-13 08:47:20', '2021-09-13 08:47:20'),
(6, 2, 6, '2021-09-13 08:47:20', '2021-09-13 08:47:20'),
(7, 2, 7, '2021-09-13 08:47:20', '2021-09-13 08:47:20'),
(8, 2, 8, '2021-09-13 08:47:20', '2021-09-13 08:47:20'),
(9, 2, 9, '2021-09-13 08:47:20', '2021-09-13 08:47:20'),
(10, 2, 10, '2021-09-13 08:47:20', '2021-09-13 08:47:20'),
(11, 2, 11, '2021-09-13 08:47:20', '2021-09-13 08:47:20'),
(12, 2, 12, '2021-09-13 08:47:20', '2021-09-13 08:47:20'),
(13, 2, 13, '2021-09-13 08:47:20', '2021-09-13 08:47:20'),
(14, 2, 14, '2021-09-13 08:47:20', '2021-09-13 08:47:20'),
(15, 2, 15, '2021-09-13 08:47:20', '2021-09-13 08:47:20'),
(16, 2, 16, '2021-09-13 08:47:20', '2021-09-13 08:47:20'),
(17, 2, 17, '2021-09-13 08:47:20', '2021-09-13 08:47:20'),
(18, 2, 18, '2021-09-13 08:47:20', '2021-09-13 08:47:20'),
(19, 2, 19, '2021-09-13 08:47:20', '2021-09-13 08:47:20'),
(20, 2, 20, '2021-09-13 08:47:20', '2021-09-13 08:47:20'),
(21, 2, 21, '2021-09-13 08:47:20', '2021-09-13 08:47:20'),
(22, 2, 22, '2021-09-13 08:47:20', '2021-09-13 08:47:20'),
(23, 2, 23, '2021-09-13 08:47:20', '2021-09-13 08:47:20'),
(24, 2, 24, '2021-09-13 08:47:20', '2021-09-13 08:47:20'),
(25, 2, 25, '2021-09-13 08:47:20', '2021-09-13 08:47:20'),
(26, 2, 26, '2021-09-13 08:47:20', '2021-09-13 08:47:20'),
(27, 2, 27, '2021-09-13 08:47:20', '2021-09-13 08:47:20'),
(28, 2, 28, '2021-09-13 08:47:20', '2021-09-13 08:47:20'),
(29, 2, 29, '2021-09-13 08:47:20', '2021-09-13 08:47:20'),
(30, 2, 30, '2021-09-13 08:47:20', '2021-09-13 08:47:20'),
(31, 2, 31, '2021-09-13 08:47:20', '2021-09-13 08:47:20'),
(32, 2, 32, '2021-09-13 08:47:20', '2021-09-13 08:47:20'),
(33, 2, 33, '2021-09-13 08:47:20', '2021-09-13 08:47:20'),
(34, 2, 34, '2021-09-13 08:47:20', '2021-09-13 08:47:20'),
(35, 2, 35, '2021-09-13 08:47:20', '2021-09-13 08:47:20'),
(36, 2, 36, '2021-09-13 08:47:20', '2021-09-13 08:47:20'),
(37, 2, 37, '2021-09-13 08:47:20', '2021-09-13 08:47:20'),
(38, 2, 38, '2021-09-13 08:47:20', '2021-09-13 08:47:20'),
(39, 2, 39, '2021-09-13 08:47:20', '2021-09-13 08:47:20'),
(40, 2, 40, '2021-09-13 08:47:20', '2021-09-13 08:47:20'),
(41, 2, 41, '2021-09-13 08:47:20', '2021-09-13 08:47:20'),
(42, 2, 42, '2021-09-13 08:47:20', '2021-09-13 08:47:20'),
(43, 2, 43, '2021-09-13 08:47:20', '2021-09-13 08:47:20'),
(44, 2, 44, '2021-09-13 08:47:20', '2021-09-13 08:47:20'),
(45, 2, 45, '2021-09-13 08:47:20', '2021-09-13 08:47:20'),
(46, 2, 46, '2021-09-13 08:47:20', '2021-09-13 08:47:20'),
(47, 2, 47, '2021-09-13 08:47:20', '2021-09-13 08:47:20'),
(48, 2, 48, '2021-09-13 08:47:20', '2021-09-13 08:47:20'),
(49, 2, 49, '2021-09-13 08:47:20', '2021-09-13 08:47:20'),
(50, 2, 50, '2021-09-13 08:47:20', '2021-09-13 08:47:20'),
(51, 2, 51, '2021-09-13 08:47:20', '2021-09-13 08:47:20'),
(52, 2, 52, '2021-09-13 08:47:20', '2021-09-13 08:47:20'),
(53, 2, 53, '2021-09-13 08:47:20', '2021-09-13 08:47:20'),
(54, 2, 54, '2021-09-13 08:47:20', '2021-09-13 08:47:20'),
(55, 2, 55, '2021-09-13 08:47:20', '2021-09-13 08:47:20'),
(56, 2, 56, '2021-09-13 08:47:20', '2021-09-13 08:47:20'),
(57, 2, 57, '2021-09-13 08:47:20', '2021-09-13 08:47:20'),
(58, 2, 58, '2021-09-13 08:47:20', '2021-09-13 08:47:20'),
(59, 2, 59, '2021-09-13 08:47:20', '2021-09-13 08:47:20'),
(60, 2, 60, '2021-09-13 08:47:20', '2021-09-13 08:47:20'),
(61, 2, 61, '2021-09-13 08:47:20', '2021-09-13 08:47:20'),
(62, 2, 62, '2021-09-13 08:47:20', '2021-09-13 08:47:20'),
(63, 2, 63, '2021-09-13 08:47:20', '2021-09-13 08:47:20'),
(64, 2, 64, '2021-09-13 08:47:20', '2021-09-13 08:47:20'),
(65, 2, 65, '2021-09-13 08:47:20', '2021-09-13 08:47:20'),
(66, 2, 66, '2021-09-13 08:47:20', '2021-09-13 08:47:20'),
(67, 2, 67, '2021-09-13 08:47:20', '2021-09-13 08:47:20'),
(68, 2, 68, '2021-09-13 08:47:20', '2021-09-13 08:47:20'),
(69, 2, 69, '2021-09-13 08:47:20', '2021-09-13 08:47:20'),
(70, 2, 70, '2021-09-13 08:47:20', '2021-09-13 08:47:20'),
(71, 2, 71, '2021-09-13 08:47:20', '2021-09-13 08:47:20'),
(72, 2, 72, '2021-09-13 08:47:20', '2021-09-13 08:47:20'),
(73, 2, 73, '2021-09-13 08:47:20', '2021-09-13 08:47:20'),
(74, 2, 74, '2021-09-13 08:47:20', '2021-09-13 08:47:20'),
(75, 2, 75, '2021-09-13 08:47:20', '2021-09-13 08:47:20'),
(76, 2, 76, '2021-09-13 08:47:20', '2021-09-13 08:47:20'),
(77, 2, 77, '2021-09-13 08:47:20', '2021-09-13 08:47:20'),
(78, 2, 78, '2021-09-13 08:47:20', '2021-09-13 08:47:20'),
(79, 2, 79, '2021-09-13 08:47:20', '2021-09-13 08:47:20'),
(80, 2, 80, '2021-09-13 08:47:20', '2021-09-13 08:47:20'),
(81, 2, 81, '2021-09-13 08:47:20', '2021-09-13 08:47:20'),
(82, 2, 82, '2021-09-13 08:47:20', '2021-09-13 08:47:20'),
(83, 2, 83, '2021-09-13 08:47:20', '2021-09-13 08:47:20'),
(84, 2, 84, '2021-09-13 08:47:20', '2021-09-13 08:47:20'),
(85, 2, 85, '2021-09-13 08:47:20', '2021-09-13 08:47:20'),
(86, 2, 86, '2021-09-13 08:47:20', '2021-09-13 08:47:20'),
(87, 2, 87, '2021-09-13 08:47:20', '2021-09-13 08:47:20'),
(88, 2, 88, '2021-09-13 08:47:20', '2021-09-13 08:47:20'),
(89, 2, 89, '2021-09-13 08:47:20', '2021-09-13 08:47:20'),
(90, 2, 90, '2021-09-13 08:47:20', '2021-09-13 08:47:20'),
(91, 3, 91, '2021-09-13 08:47:20', '2021-09-13 08:47:20'),
(92, 3, 92, '2021-09-13 08:47:20', '2021-09-13 08:47:20'),
(93, 3, 93, '2021-09-13 08:47:20', '2021-09-13 08:47:20'),
(94, 3, 94, '2021-09-13 08:47:20', '2021-09-13 08:47:20'),
(95, 3, 95, '2021-09-13 08:47:20', '2021-09-13 08:47:20'),
(96, 3, 96, '2021-09-13 08:47:20', '2021-09-13 08:47:20'),
(97, 3, 97, '2021-09-13 08:47:20', '2021-09-13 08:47:20'),
(98, 3, 98, '2021-09-13 08:47:20', '2021-09-13 08:47:20'),
(99, 3, 99, '2021-09-13 08:47:20', '2021-09-13 08:47:20'),
(100, 3, 100, '2021-09-13 08:47:20', '2021-09-13 08:47:20'),
(101, 3, 101, '2021-09-13 08:47:20', '2021-09-13 08:47:20'),
(102, 3, 102, '2021-09-13 08:47:20', '2021-09-13 08:47:20'),
(103, 3, 103, '2021-09-13 08:47:20', '2021-09-13 08:47:20'),
(104, 3, 104, '2021-09-13 08:47:20', '2021-09-13 08:47:20'),
(105, 3, 105, '2021-09-13 08:47:20', '2021-09-13 08:47:20'),
(106, 3, 106, '2021-09-13 08:47:20', '2021-09-13 08:47:20'),
(107, 3, 107, '2021-09-13 08:47:20', '2021-09-13 08:47:20'),
(108, 3, 108, '2021-09-13 08:47:20', '2021-09-13 08:47:20'),
(109, 4, 109, '2021-09-13 08:47:20', '2021-09-13 08:47:20'),
(110, 4, 110, '2021-09-13 08:47:20', '2021-09-13 08:47:20'),
(111, 4, 111, '2021-09-13 08:47:20', '2021-09-13 08:47:20'),
(112, 4, 112, '2021-09-13 08:47:20', '2021-09-13 08:47:20'),
(113, 4, 113, '2021-09-13 08:47:20', '2021-09-13 08:47:20'),
(114, 4, 114, '2021-09-13 08:47:20', '2021-09-13 08:47:20'),
(115, 4, 115, '2021-09-13 08:47:20', '2021-09-13 08:47:20'),
(116, 4, 116, '2021-09-13 08:47:20', '2021-09-13 08:47:20'),
(117, 5, 117, '2021-09-13 08:47:20', '2021-09-13 08:47:20'),
(118, 5, 118, '2021-09-13 08:47:20', '2021-09-13 08:47:20'),
(119, 5, 119, '2021-09-13 08:47:20', '2021-09-13 08:47:20'),
(120, 5, 120, '2021-09-13 08:47:20', '2021-09-13 08:47:20'),
(121, 5, 121, '2021-09-13 08:47:20', '2021-09-13 08:47:20'),
(122, 5, 122, '2021-09-13 08:47:20', '2021-09-13 08:47:20'),
(123, 5, 123, '2021-09-13 08:47:20', '2021-09-13 08:47:20'),
(124, 5, 124, '2021-09-13 08:47:20', '2021-09-13 08:47:20');

-- --------------------------------------------------------

--
-- テーブルの構造 `product_images`
--

CREATE TABLE `product_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `full` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- テーブルのデータのダンプ `product_images`
--

INSERT INTO `product_images` (`id`, `product_id`, `full`, `created_at`, `updated_at`) VALUES
(1, 1, 'products/macBook-air.jpg', '2021-09-13 08:47:20', '2021-09-13 08:47:20'),
(2, 2, 'products/macbook-pro-13.jpg', '2021-09-13 08:47:20', '2021-09-13 08:47:20'),
(3, 3, 'products/macbook-pro-16.jpg', '2021-09-13 08:47:20', '2021-09-13 08:47:20'),
(4, 4, 'products/macBook-air1.jpg', '2021-09-13 08:47:20', '2021-09-13 08:47:20'),
(5, 5, 'products/macbook-pro-13-1.jpg', '2021-09-13 08:47:20', '2021-09-13 08:47:20'),
(6, 6, 'products/macbook-pro-16-1.jpg', '2021-09-13 08:47:20', '2021-09-13 08:47:20'),
(7, 7, 'products/macBook-air2.jpg', '2021-09-13 08:47:20', '2021-09-13 08:47:20'),
(8, 8, 'products/macbook-pro-13-2.jpg', '2021-09-13 08:47:20', '2021-09-13 08:47:20'),
(9, 9, 'products/macbook-pro-16-2.jpg', '2021-09-13 08:47:20', '2021-09-13 08:47:20'),
(10, 10, 'products/macBook-air3.jpg', '2021-09-13 08:47:20', '2021-09-13 08:47:20'),
(11, 11, 'products/macbook-pro-13-3.jpg', '2021-09-13 08:47:20', '2021-09-13 08:47:20'),
(12, 12, 'products/macbook-pro-16-3.jpg', '2021-09-13 08:47:20', '2021-09-13 08:47:20'),
(13, 13, 'products/macBook-air4.jpg', '2021-09-13 08:47:20', '2021-09-13 08:47:20'),
(14, 14, 'products/macbook-pro-13-4.jpg', '2021-09-13 08:47:20', '2021-09-13 08:47:20'),
(15, 15, 'products/macbook-pro-16-4.jpg', '2021-09-13 08:47:20', '2021-09-13 08:47:20'),
(16, 16, 'products/macBook-air5.jpg', '2021-09-13 08:47:20', '2021-09-13 08:47:20'),
(17, 17, 'products/macbook-pro-13-5.jpg', '2021-09-13 08:47:20', '2021-09-13 08:47:20'),
(18, 18, 'products/macbook-pro-16-5.jpg', '2021-09-13 08:47:20', '2021-09-13 08:47:20'),
(19, 19, 'products/inspiron-15-3000-amd.jpg', '2021-09-13 08:47:20', '2021-09-13 08:47:20'),
(20, 20, 'products/g15-ryzen-edition-gaming.jpg', '2021-09-13 08:47:20', '2021-09-13 08:47:20'),
(21, 21, 'products/vostro-5510.jpg', '2021-09-13 08:47:20', '2021-09-13 08:47:20'),
(22, 22, 'products/inspiron-15-3000-amd-1.jpg', '2021-09-13 08:47:20', '2021-09-13 08:47:20'),
(23, 23, 'products/g15-ryzen-edition-gaming-1.jpg', '2021-09-13 08:47:20', '2021-09-13 08:47:20'),
(24, 24, 'products/vostro-5510-1.jpg', '2021-09-13 08:47:20', '2021-09-13 08:47:20'),
(25, 25, 'products/inspiron-15-3000-amd-2.jpg', '2021-09-13 08:47:20', '2021-09-13 08:47:20'),
(26, 26, 'products/g15-ryzen-edition-gaming-2.jpg', '2021-09-13 08:47:20', '2021-09-13 08:47:20'),
(27, 27, 'products/vostro-5510-2.jpg', '2021-09-13 08:47:20', '2021-09-13 08:47:20'),
(28, 28, 'products/inspiron-15-3000-amd-3.jpg', '2021-09-13 08:47:20', '2021-09-13 08:47:20'),
(29, 29, 'products/g15-ryzen-edition-gaming-3.jpg', '2021-09-13 08:47:20', '2021-09-13 08:47:20'),
(30, 30, 'products/vostro-5510-3.jpg', '2021-09-13 08:47:20', '2021-09-13 08:47:20'),
(31, 31, 'products/inspiron-15-3000-amd-4.jpg', '2021-09-13 08:47:20', '2021-09-13 08:47:20'),
(32, 32, 'products/g15-ryzen-edition-gaming-4.jpg', '2021-09-13 08:47:20', '2021-09-13 08:47:20'),
(33, 33, 'products/vostro-5510-4.jpg', '2021-09-13 08:47:20', '2021-09-13 08:47:20'),
(34, 34, 'products/inspiron-15-3000-amd-5.jpg', '2021-09-13 08:47:20', '2021-09-13 08:47:20'),
(35, 35, 'products/g15-ryzen-edition-gaming-5.jpg', '2021-09-13 08:47:20', '2021-09-13 08:47:20'),
(36, 36, 'products/vostro-5510-5.jpg', '2021-09-13 08:47:20', '2021-09-13 08:47:20'),
(37, 37, 'products/hp-probook-430-g8-notebook-pc.jpg', '2021-09-13 08:47:20', '2021-09-13 08:47:20'),
(38, 38, 'products/hp-250-g7-notebook-pc.jpg', '2021-09-13 08:47:20', '2021-09-13 08:47:20'),
(39, 39, 'products/hp-zbook-firefly-g8-mobile-workstation-pc.jpg', '2021-09-13 08:47:20', '2021-09-13 08:47:20'),
(40, 40, 'products/hp-probook-430-g8-notebook-pc1.jpg', '2021-09-13 08:47:20', '2021-09-13 08:47:20'),
(41, 41, 'products/hp-250-g7-notebook-pc1.jpg', '2021-09-13 08:47:20', '2021-09-13 08:47:20'),
(42, 42, 'products/hp-zbook-firefly-g8-mobile-workstation-pc1.jpg', '2021-09-13 08:47:20', '2021-09-13 08:47:20'),
(43, 43, 'products/hp-probook-430-g8-notebook-pc2.jpg', '2021-09-13 08:47:20', '2021-09-13 08:47:20'),
(44, 44, 'products/hp-250-g7-notebook-pc2.jpg', '2021-09-13 08:47:20', '2021-09-13 08:47:20'),
(45, 45, 'products/hp-zbook-firefly-g8-mobile-workstation-pc2.jpg', '2021-09-13 08:47:20', '2021-09-13 08:47:20'),
(46, 46, 'products/hp-probook-430-g8-notebook-pc3.jpg', '2021-09-13 08:47:20', '2021-09-13 08:47:20'),
(47, 47, 'products/hp-250-g7-notebook-pc3.jpg', '2021-09-13 08:47:20', '2021-09-13 08:47:20'),
(48, 48, 'products/hp-zbook-firefly-g8-mobile-workstation-pc3.jpg', '2021-09-13 08:47:20', '2021-09-13 08:47:20'),
(49, 49, 'products/hp-probook-430-g8-notebook-pc4.jpg', '2021-09-13 08:47:20', '2021-09-13 08:47:20'),
(50, 50, 'products/hp-250-g7-notebook-pc4.jpg', '2021-09-13 08:47:20', '2021-09-13 08:47:20'),
(51, 51, 'products/hp-zbook-firefly-g8-mobile-workstation-pc4.jpg', '2021-09-13 08:47:20', '2021-09-13 08:47:20'),
(52, 52, 'products/hp-probook-430-g8-notebook-pc5.jpg', '2021-09-13 08:47:20', '2021-09-13 08:47:20'),
(53, 53, 'products/hp-250-g7-notebook-pc5.jpg', '2021-09-13 08:47:20', '2021-09-13 08:47:20'),
(54, 54, 'products/hp-zbook-firefly-g8-mobile-workstation-pc5.jpg', '2021-09-13 08:47:20', '2021-09-13 08:47:20'),
(55, 55, 'products/predator-triton-500.jpg', '2021-09-13 08:47:20', '2021-09-13 08:47:20'),
(56, 56, 'products/acer-chromebook-spin-311.jpg', '2021-09-13 08:47:20', '2021-09-13 08:47:20'),
(57, 57, 'products/aspire-5.jpg', '2021-09-13 08:47:20', '2021-09-13 08:47:20'),
(58, 58, 'products/predator-triton-5001.jpg', '2021-09-13 08:47:20', '2021-09-13 08:47:20'),
(59, 59, 'products/acer-chromebook-spin-3111.jpg', '2021-09-13 08:47:20', '2021-09-13 08:47:20'),
(60, 60, 'products/aspire-51.jpg', '2021-09-13 08:47:20', '2021-09-13 08:47:20'),
(61, 61, 'products/predator-triton-5002.jpg', '2021-09-13 08:47:20', '2021-09-13 08:47:20'),
(62, 62, 'products/acer-chromebook-spin-3112.jpg', '2021-09-13 08:47:20', '2021-09-13 08:47:20'),
(63, 63, 'products/aspire-52.jpg', '2021-09-13 08:47:20', '2021-09-13 08:47:20'),
(64, 64, 'products/predator-triton-5003.jpg', '2021-09-13 08:47:20', '2021-09-13 08:47:20'),
(65, 65, 'products/acer-chromebook-spin-3113.jpg', '2021-09-13 08:47:20', '2021-09-13 08:47:20'),
(66, 66, 'products/aspire-53.jpg', '2021-09-13 08:47:20', '2021-09-13 08:47:20'),
(67, 67, 'products/predator-triton-5004.jpg', '2021-09-13 08:47:20', '2021-09-13 08:47:20'),
(68, 68, 'products/acer-chromebook-spin-3114.jpg', '2021-09-13 08:47:20', '2021-09-13 08:47:20'),
(69, 69, 'products/aspire-54.jpg', '2021-09-13 08:47:20', '2021-09-13 08:47:20'),
(70, 70, 'products/predator-triton-5005.jpg', '2021-09-13 08:47:20', '2021-09-13 08:47:20'),
(71, 71, 'products/acer-chromebook-spin-3115.jpg', '2021-09-13 08:47:20', '2021-09-13 08:47:20'),
(72, 72, 'products/aspire-55.jpg', '2021-09-13 08:47:20', '2021-09-13 08:47:20'),
(73, 73, 'products/legion-7i-with-rtx-2080.jpg', '2021-09-13 08:47:20', '2021-09-13 08:47:20'),
(74, 74, 'products/thinkpad-x1-extreme-gen-3-intel.jpg', '2021-09-13 08:47:20', '2021-09-13 08:47:20'),
(75, 75, 'products/thinkpad-p1-workstation-gen-4-intel.jpg', '2021-09-13 08:47:20', '2021-09-13 08:47:20'),
(76, 76, 'products/legion-7i-with-rtx-20801.jpg', '2021-09-13 08:47:20', '2021-09-13 08:47:20'),
(77, 77, 'products/thinkpad-x1-extreme-gen-3-intel1.jpg', '2021-09-13 08:47:20', '2021-09-13 08:47:20'),
(78, 78, 'products/thinkpad-p1-workstation-gen-4-intel1.jpg', '2021-09-13 08:47:20', '2021-09-13 08:47:20'),
(79, 79, 'products/legion-7i-with-rtx-20802.jpg', '2021-09-13 08:47:20', '2021-09-13 08:47:20'),
(80, 80, 'products/thinkpad-x1-extreme-gen-3-intel2.jpg', '2021-09-13 08:47:20', '2021-09-13 08:47:20'),
(81, 81, 'products/thinkpad-p1-workstation-gen-4-intel2.jpg', '2021-09-13 08:47:20', '2021-09-13 08:47:20'),
(82, 82, 'products/legion-7i-with-rtx-20803.jpg', '2021-09-13 08:47:20', '2021-09-13 08:47:20'),
(83, 83, 'products/thinkpad-x1-extreme-gen-3-intel3.jpg', '2021-09-13 08:47:20', '2021-09-13 08:47:20'),
(84, 84, 'products/thinkpad-p1-workstation-gen-4-intel3.jpg', '2021-09-13 08:47:20', '2021-09-13 08:47:20'),
(85, 85, 'products/legion-7i-with-rtx-20804.jpg', '2021-09-13 08:47:20', '2021-09-13 08:47:20'),
(86, 86, 'products/thinkpad-x1-extreme-gen-3-intel4.jpg', '2021-09-13 08:47:20', '2021-09-13 08:47:20'),
(87, 87, 'products/thinkpad-p1-workstation-gen-4-intel4.jpg', '2021-09-13 08:47:20', '2021-09-13 08:47:20'),
(88, 88, 'products/legion-7i-with-rtx-20805.jpg', '2021-09-13 08:47:20', '2021-09-13 08:47:20'),
(89, 89, 'products/thinkpad-x1-extreme-gen-3-intel5.jpg', '2021-09-13 08:47:20', '2021-09-13 08:47:20'),
(90, 90, 'products/thinkpad-p1-workstation-gen-4-intel5.jpg', '2021-09-13 08:47:20', '2021-09-13 08:47:20'),
(91, 91, 'products/iphone-xr.jpg', '2021-09-13 08:47:20', '2021-09-13 08:47:20'),
(92, 92, 'products/iphone-11.jpg', '2021-09-13 08:47:20', '2021-09-13 08:47:20'),
(93, 93, 'products/iphone-se.jpg', '2021-09-13 08:47:20', '2021-09-13 08:47:20'),
(94, 94, 'products/iphone-12.jpg', '2021-09-13 08:47:20', '2021-09-13 08:47:20'),
(95, 95, 'products/iphone-12-pro.jpg', '2021-09-13 08:47:20', '2021-09-13 08:47:20'),
(96, 96, 'products/galaxy-z-fold3-5g.jpg', '2021-09-13 08:47:20', '2021-09-13 08:47:20'),
(97, 97, 'products/galaxy-z-flip3-5g.jpg', '2021-09-13 08:47:20', '2021-09-13 08:47:20'),
(98, 98, 'products/galaxy-s21-ultra-5g.jpg', '2021-09-13 08:47:20', '2021-09-13 08:47:20'),
(99, 99, 'products/galaxy-xcover-pro-64gb.jpg', '2021-09-13 08:47:20', '2021-09-13 08:47:20'),
(100, 100, 'products/sony-xperia-pro.jpg', '2021-09-13 08:47:20', '2021-09-13 08:47:20'),
(101, 101, 'products/sony-xperia-10-iii.jpg', '2021-09-13 08:47:20', '2021-09-13 08:47:20'),
(102, 102, 'products/sony-xperia-5-iii.jpg', '2021-09-13 08:47:20', '2021-09-13 08:47:20'),
(103, 103, 'products/sony-xperia-1-iii.jpg', '2021-09-13 08:47:20', '2021-09-13 08:47:20'),
(104, 104, 'products/sony-xperia-10-iii-lite.jpg', '2021-09-13 08:47:20', '2021-09-13 08:47:20'),
(105, 105, 'products/xiaomi-redmi-note-10t-5g.jpg', '2021-09-13 08:47:20', '2021-09-13 08:47:20'),
(106, 106, 'products/xiaomi-redmi-10.jpg', '2021-09-13 08:47:20', '2021-09-13 08:47:20'),
(107, 107, 'products/xiaomi-redmi-note-8.jpg', '2021-09-13 08:47:20', '2021-09-13 08:47:20'),
(108, 108, 'products/xiaomi-redmi-note-8.jpg', '2021-09-13 08:47:20', '2021-09-13 08:47:20'),
(109, 109, 'products/eos-kiss-x10i.jpg', '2021-09-13 08:47:20', '2021-09-13 08:47:20'),
(110, 110, 'products/eos-1d-x-mark-iii.jpg', '2021-09-13 08:47:20', '2021-09-13 08:47:20'),
(111, 111, 'products/eos-90d.jpg', '2021-09-13 08:47:20', '2021-09-13 08:47:20'),
(112, 112, 'products/eos-rebel-sl3.jpg', '2021-09-13 08:47:20', '2021-09-13 08:47:20'),
(113, 113, 'products/d6.jpg', '2021-09-13 08:47:20', '2021-09-13 08:47:20'),
(114, 114, 'products/d850.jpg', '2021-09-13 08:47:20', '2021-09-13 08:47:20'),
(115, 115, 'products/d810a.jpg', '2021-09-13 08:47:20', '2021-09-13 08:47:20'),
(116, 116, 'products/d780.jpg', '2021-09-13 08:47:20', '2021-09-13 08:47:20'),
(117, 117, 'products/sony-wf-1000xm4.jpg', '2021-09-13 08:47:20', '2021-09-13 08:47:20'),
(118, 118, 'products/sony-wh-1000xm4.jpg', '2021-09-13 08:47:20', '2021-09-13 08:47:20'),
(119, 119, 'products/sony-wf-1000xm3.jpg', '2021-09-13 08:47:20', '2021-09-13 08:47:20'),
(120, 120, 'products/sony-mdr-zx110nc.jpg', '2021-09-13 08:47:20', '2021-09-13 08:47:20'),
(121, 121, 'products/hd-400s.jpg', '2021-09-13 08:47:20', '2021-09-13 08:47:20'),
(122, 122, 'products/hd-559.jpg', '2021-09-13 08:47:20', '2021-09-13 08:47:20'),
(123, 123, 'products/hd-598.jpg', '2021-09-13 08:47:20', '2021-09-13 08:47:20'),
(124, 124, 'products/hd-600.jpg', '2021-09-13 08:47:20', '2021-09-13 08:47:20');

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
(1, 'site_name', 'E-Commerce', '2021-09-13 08:47:19', '2021-09-13 08:47:19'),
(2, 'site_title', 'E-Commerce Application', '2021-09-13 08:47:19', '2021-09-13 08:47:19'),
(3, 'default_email_address', 'admin@example.com', '2021-09-13 08:47:19', '2021-09-13 08:47:19'),
(4, 'phone_number', '(+81)0987654321', '2021-09-13 08:47:19', '2021-09-13 08:47:19'),
(5, 'fax_number', '(+81)0987654322', '2021-09-13 08:47:19', '2021-09-13 08:47:19'),
(6, 'currency_code', 'JPY', '2021-09-13 08:47:19', '2021-09-13 08:47:19'),
(7, 'currency_symbol', '￥', '2021-09-13 08:47:19', '2021-09-13 08:47:19'),
(8, 'site_logo', 'settings/logobook.png', '2021-09-13 08:47:19', '2021-09-13 08:47:19'),
(9, 'site_favicon', 'settings/faviconbook.ico', '2021-09-13 08:47:19', '2021-09-13 08:47:19'),
(10, 'footer_copyright_text', 'All rights reserved', '2021-09-13 08:47:19', '2021-09-13 08:47:19'),
(11, 'seo_meta_title', '', '2021-09-13 08:47:19', '2021-09-13 08:47:19'),
(12, 'seo_meta_description', '', '2021-09-13 08:47:19', '2021-09-13 08:47:19'),
(13, 'social_facebook', 'http://localhost/', '2021-09-13 08:47:19', '2021-09-13 08:47:19'),
(14, 'social_twitter', 'http://localhost/', '2021-09-13 08:47:19', '2021-09-13 08:47:19'),
(15, 'social_instagram', 'http://localhost/', '2021-09-13 08:47:19', '2021-09-13 08:47:19'),
(16, 'social_linkedin', 'http://localhost/', '2021-09-13 08:47:19', '2021-09-13 08:47:19'),
(17, 'google_analytics', '', '2021-09-13 08:47:19', '2021-09-13 08:47:19'),
(18, 'facebook_pixels', '', '2021-09-13 08:47:19', '2021-09-13 08:47:19'),
(19, 'stripe_payment_method', '1', '2021-09-13 08:47:19', '2021-09-13 08:47:19'),
(20, 'stripe_key', 'pk_test_51JSupyDq7S3lTZH24ldmwoyzE4gq5fU4NvsuBmH9wh3B3zOcabL0LoOIcGroKw9b7t9caQItr4cOCCFSTqiDMRBn00Q4WwgC8K', '2021-09-13 08:47:19', '2021-09-13 08:47:19'),
(21, 'stripe_secret_key', 'sk_test_51JSupyDq7S3lTZH2FASQIZqoJJnwISYmx4Ow7ktKg08hThVPAIPOVnE3nZC8TjZLboR2UuQJMyEQB9szuVMcuA600027B3dR9e', '2021-09-13 08:47:19', '2021-09-13 08:47:19'),
(22, 'paypal_payment_method', '0', '2021-09-13 08:47:19', '2021-09-13 08:47:19'),
(23, 'paypal_client_id', '', '2021-09-13 08:47:19', '2021-09-13 08:47:19'),
(24, 'paypal_secret_id', '', '2021-09-13 08:47:19', '2021-09-13 08:47:19');

-- --------------------------------------------------------

--
-- テーブルの構造 `shoppingcart`
--

CREATE TABLE `shoppingcart` (
  `identifier` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `instance` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- テーブルの構造 `slides`
--

CREATE TABLE `slides` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `show` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- テーブルのデータのダンプ `slides`
--

INSERT INTO `slides` (`id`, `title`, `image`, `link`, `show`, `created_at`, `updated_at`) VALUES
(1, 'Laptops', 'slides/laptops_slide.jpg', 'http://localhost/category/laptops', 1, '2021-09-13 08:47:20', '2021-09-13 08:47:20'),
(2, 'Phones', 'slides/phones_slide.jpg', 'http://localhost/category/phones', 1, '2021-09-13 08:47:20', '2021-09-13 08:47:20'),
(3, 'Cameras', 'slides/cameras_slide.jpg', 'http://localhost/category/cameras', 1, '2021-09-13 08:47:20', '2021-09-13 08:47:20'),
(4, 'anh', 'slides/0x1e06okG1inqISzna5WLp1R5.jpg', 'http://localhost/category/laptops', 0, '2021-09-13 08:55:00', '2021-09-13 08:55:00');

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
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(13) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` tinyint(1) NOT NULL DEFAULT 0,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- テーブルのデータのダンプ `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `email_verified_at`, `password`, `address`, `city`, `country`, `zip`, `phone`, `avatar`, `gender`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Haruto', 'Yamamoto', 'yamamoto@example.com', NULL, '$2y$10$jkbDPXnPZRzNY9M0/xsDreh3gnnFbGZbbH.b4vNHjj/aXl6YgyL4W', '87503 Cordie Isle Suite 943\nAltenwerthtown, IN 62436', 'Lake Clay', 'Seychelles', '07348-9161', '032-5837-2966', NULL, 0, NULL, '2021-09-13 08:47:18', '2021-09-13 08:47:18'),
(2, 'Mio', 'Ishibe', 'ishibe@example.com', NULL, '$2y$10$CueP7umQvELFeSrPsYmwaukdlQW5kPkSy1GUEzXooGnB37Z0jugYy', '4481 Delbert Circle\nDarienview, UT 30373-1591', 'Grimesburgh', 'Solomon Islands', '45704', '076-3699-2412', NULL, 1, NULL, '2021-09-13 08:47:18', '2021-09-13 08:47:18'),
(3, 'Souta', 'Narashi', 'narashi@example.com', NULL, '$2y$10$Jn8fwiSfSpArd7EINin4x.Q43NcGJB2PPPID59HA4PNA1cZ32qbZC', '74024 Wilmer Walks\nChristopherfort, AK 93155', 'South Helenastad', 'Kuwait', '03708-3665', '041-2568-6931', NULL, 1, NULL, '2021-09-13 08:47:18', '2021-09-13 08:47:18'),
(4, 'Ichika', 'Akiba', 'akiba@example.com', NULL, '$2y$10$u7M5RV/aOHm9Nez51ZqwQ.vVXQJe0oug6oZMqP0C1eYRcbxsi7BYG', '8749 Dickens Square Suite 368\nBradtkeside, NV 45608', 'Lake Daytonstad', 'Indonesia', '24841-2685', '015-4536-5403', NULL, 0, NULL, '2021-09-13 08:47:18', '2021-09-13 08:47:18'),
(5, 'Haruki', 'Saitou', 'saitou@example.com', NULL, '$2y$10$fbuK8BDdw14KYWfgxbfqmO8rCk9PtT7UG8ywpj4ZJe92euqxYQeAu', '251 Haag Forge\nBinsville, LA 04749', 'Claudiaborough', 'Guatemala', '22378', '050-5436-9805', NULL, 1, NULL, '2021-09-13 08:47:19', '2021-09-13 08:47:19'),
(6, 'Hana', 'Iwamoto', 'iwamoto@example.com', NULL, '$2y$10$mQKMtywGpkmuKz3yKFs42ujS2Aml/mEIVGVsjS498PYmPrxPTXgrC', '77188 Rolfson Hollow Suite 626\nPort Emile, NM 10051-0967', 'West Brice', 'Bolivia', '67847', '014-0392-9907', NULL, 1, NULL, '2021-09-13 08:47:19', '2021-09-13 08:47:19'),
(7, 'Yuito', 'Tomishima', 'tomishima@example.com', NULL, '$2y$10$HRCeXz7vvvagn6VtZn6Uu.SzJbMeafqFFh5CINCiPYXDUCYdyqJi2', '29881 Asha Flats\nEast Rosamondborough, NC 72188', 'Trudieton', 'Saint Kitts and Nevis', '84677-0107', '011-8498-0147', NULL, 0, NULL, '2021-09-13 08:47:19', '2021-09-13 08:47:19'),
(8, 'Aoi', 'Kaimori', 'kaimori@example.com', NULL, '$2y$10$vAyA9m2P7CSb9LIZkBRv.Ox2JerNlQDjssI445Wt784hMu4D/i4Oe', '75170 Ava Corners\nJacobsstad, MT 18415-8587', 'South Elwin', 'Solomon Islands', '99491', '016-5226-1045', NULL, 0, NULL, '2021-09-13 08:47:19', '2021-09-13 08:47:19');

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
-- テーブルのインデックス `shoppingcart`
--
ALTER TABLE `shoppingcart`
  ADD PRIMARY KEY (`identifier`,`instance`);

--
-- テーブルのインデックス `slides`
--
ALTER TABLE `slides`
  ADD PRIMARY KEY (`id`);

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- テーブルの AUTO_INCREMENT `attribute_values`
--
ALTER TABLE `attribute_values`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- テーブルの AUTO_INCREMENT `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- テーブルの AUTO_INCREMENT `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- テーブルの AUTO_INCREMENT `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- テーブルの AUTO_INCREMENT `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=135;

--
-- テーブルの AUTO_INCREMENT `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- テーブルの AUTO_INCREMENT `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- テーブルの AUTO_INCREMENT `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=125;

--
-- テーブルの AUTO_INCREMENT `product_attributes`
--
ALTER TABLE `product_attributes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- テーブルの AUTO_INCREMENT `product_categories`
--
ALTER TABLE `product_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=125;

--
-- テーブルの AUTO_INCREMENT `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=125;

--
-- テーブルの AUTO_INCREMENT `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- テーブルの AUTO_INCREMENT `slides`
--
ALTER TABLE `slides`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- テーブルの AUTO_INCREMENT `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

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
