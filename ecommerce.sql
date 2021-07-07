-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- ホスト: 127.0.0.1
-- 生成日時: 2021-07-07 17:55:57
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
(1, 'Theresia Tromp', 'admin@admin.com', NULL, '$2y$10$7tgN0cw4FNZDLJHu97nIy.ssI50IAqb2qR8e.t4zWtnhUhMm6qUBO', NULL, '2021-07-06 21:29:34', '2021-07-06 21:29:34');

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
(1, 'size', 'Size', 'select', 1, 1, '2021-07-06 21:29:35', '2021-07-06 21:29:35'),
(2, 'color', 'Color', 'select', 1, 1, '2021-07-06 21:29:35', '2021-07-06 21:29:35'),
(4, 'form', 'Form', 'select', 1, 0, '2021-07-07 08:54:50', '2021-07-07 08:54:50'),
(5, 'test', 'Attribute Test', 'text_area', 0, 1, '2021-07-07 08:55:20', '2021-07-07 08:55:20');

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
(1, 1, 'small', NULL, '2021-07-07 08:28:56', '2021-07-07 08:28:56'),
(2, 1, 'medium', NULL, '2021-07-07 08:28:56', '2021-07-07 08:28:56'),
(3, 1, 'large', NULL, '2021-07-07 08:28:56', '2021-07-07 08:28:56'),
(4, 2, 'black', NULL, '2021-07-07 08:28:56', '2021-07-07 08:28:56'),
(5, 2, 'blue', NULL, '2021-07-07 08:28:56', '2021-07-07 08:28:56'),
(6, 2, 'red', NULL, '2021-07-07 08:28:56', '2021-07-07 08:28:56'),
(7, 2, 'orange', NULL, '2021-07-07 08:28:56', '2021-07-07 08:28:56');

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
(1, 'Root', 'root', 'This is the root category, don\'t delete this one', NULL, 0, 0, NULL, '2021-07-06 21:29:35', '2021-07-06 21:29:35'),
(2, 'Darian Lockman III', 'darian-lockman-iii', 'I shall be a queer thing, to be almost out of breath, and said anxiously to herself, (not in a.', 1, 0, 1, NULL, '2021-07-06 21:29:35', '2021-07-06 21:29:35'),
(3, 'Norbert Daniel', 'norbert-daniel', 'Mock Turtle with a little bird as soon as the March Hare and the other players, and shouting \'Off.', 1, 0, 1, NULL, '2021-07-06 21:29:35', '2021-07-06 21:29:35'),
(4, 'Leola Reichert V', 'leola-reichert-v', 'Duchess\'s cook. She carried the pepper-box in her face, with such a capital one for catching mice.', 1, 0, 1, NULL, '2021-07-06 21:29:35', '2021-07-06 21:29:35'),
(5, 'Lurline Wisoky', 'lurline-wisoky', 'Dormouse. \'Write that down,\' the King in a hoarse, feeble voice: \'I heard every word you fellows.', 1, 0, 1, NULL, '2021-07-06 21:29:35', '2021-07-06 21:29:35'),
(6, 'Mrs. Otha Shields I', 'mrs-otha-shields-i', 'I think I can find out the answer to it?\' said the Mock Turtle, \'but if you\'ve seen them so.', 1, 0, 1, NULL, '2021-07-06 21:29:35', '2021-07-06 21:29:35'),
(7, 'Eliezer Cole', 'eliezer-cole', 'Alice laughed so much frightened to say \"HOW DOTH THE LITTLE BUSY BEE,\" but it makes me grow large.', 1, 0, 1, NULL, '2021-07-06 21:29:35', '2021-07-06 21:29:35'),
(8, 'Miss Reina Walter', 'miss-reina-walter', 'There was no more of the right-hand bit to try the first really clever thing the King added in a.', 1, 0, 1, NULL, '2021-07-06 21:29:35', '2021-07-06 21:29:35'),
(9, 'Alison Hessel I', 'alison-hessel-i', 'Lory hastily. \'I thought it must make me smaller, I can say.\' This was not a moment to be ashamed.', 1, 0, 1, NULL, '2021-07-06 21:29:35', '2021-07-06 21:29:35'),
(10, 'Ignacio Doyle', 'ignacio-doyle', 'Alice, a little worried. \'Just about as it can\'t possibly make me grow smaller, I can listen all.', 1, 0, 1, NULL, '2021-07-06 21:29:35', '2021-07-06 21:29:35'),
(11, 'Nicholas Schamberger', 'nicholas-schamberger', 'The Queen\'s Croquet-Ground A large rose-tree stood near the right way to fly up into a sort of.', 1, 0, 1, NULL, '2021-07-06 21:29:35', '2021-07-06 21:29:35'),
(12, 'Rebekah Homenick', 'rebekah-homenick', 'RED rose-tree, and we put a stop to this,\' she said to the conclusion that it was a paper label.', 1, 0, 1, NULL, '2021-07-06 21:29:35', '2021-07-06 21:29:35'),
(13, 'Lucius Bergstrom', 'lucius-bergstrom', 'Bill\'s place for a conversation. Alice felt so desperate that she had never forgotten that, if you.', 1, 0, 1, NULL, '2021-07-06 21:29:35', '2021-07-06 21:29:35'),
(14, 'Mrs. Karelle Emard IV', 'mrs-karelle-emard-iv', 'March Hare went on. \'Would you tell me,\' said Alice, surprised at this, but at the window, I only.', 1, 0, 1, NULL, '2021-07-06 21:29:35', '2021-07-06 21:29:35'),
(15, 'Mr. Jayson Schimmel', 'mr-jayson-schimmel', 'Queen never left off quarrelling with the game,\' the Queen added to one of the legs of the.', 1, 0, 1, NULL, '2021-07-06 21:29:35', '2021-07-06 21:29:35'),
(16, 'Jocelyn Walker', 'jocelyn-walker', 'Queen said to the shore, and then raised himself upon tiptoe, put his mouth close to her, so she.', 1, 0, 1, NULL, '2021-07-06 21:29:35', '2021-07-06 21:29:35'),
(17, 'Elias Moen', 'elias-moen', 'There were doors all round her at the stick, and held it out to the door, and tried to beat time.', 1, 0, 1, NULL, '2021-07-06 21:29:35', '2021-07-06 21:29:35'),
(18, 'Dr. Brigitte Dickens', 'dr-brigitte-dickens', 'White Rabbit as he spoke. \'UNimportant, of course, I meant,\' the King said to one of the trees.', 1, 0, 1, NULL, '2021-07-06 21:29:35', '2021-07-06 21:29:35'),
(19, 'Nathanael Keebler DVM', 'nathanael-keebler-dvm', 'Alice was beginning to end,\' said the Eaglet. \'I don\'t know where Dinn may be,\' said the Mock.', 1, 0, 1, NULL, '2021-07-06 21:29:35', '2021-07-06 21:29:35'),
(20, 'Dr. Abel Barrows IV', 'dr-abel-barrows-iv', 'Hatter grumbled: \'you shouldn\'t have put it into one of the table. \'Nothing can be clearer than.', 1, 0, 1, NULL, '2021-07-06 21:29:35', '2021-07-06 21:29:35'),
(21, 'Jessyca Kunde', 'jessyca-kunde', 'VERY unpleasant state of mind, she turned the corner, but the Hatter and the second verse of the.', 1, 0, 1, NULL, '2021-07-06 21:29:35', '2021-07-06 21:29:35'),
(22, 'Charity Hirthe PhD', 'charity-hirthe-phd', 'Hardly knowing what she was quite pale (with passion, Alice thought), and it put more.', 1, 0, 1, NULL, '2021-07-06 21:29:35', '2021-07-06 21:29:35'),
(23, 'Annabel Dietrich DVM', 'annabel-dietrich-dvm', 'I will tell you my history, and you\'ll understand why it is almost certain to disagree with you.', 1, 0, 1, NULL, '2021-07-06 21:29:35', '2021-07-06 21:29:35'),
(24, 'Dayna Hagenes', 'dayna-hagenes', 'Gryphon, half to itself, half to itself, \'Oh dear! Oh dear! I\'d nearly forgotten to ask.\' \'It.', 1, 0, 1, NULL, '2021-07-06 21:29:35', '2021-07-06 21:29:35'),
(25, 'Ericka Little', 'ericka-little', 'Hatter went on, \'What HAVE you been doing here?\' \'May it please your Majesty,\' he began, \'for.', 1, 0, 1, NULL, '2021-07-06 21:29:35', '2021-07-06 21:29:35'),
(26, 'Trace Ankunding', 'trace-ankunding', 'King repeated angrily, \'or I\'ll have you executed, whether you\'re a little hot tea upon its nose.', 1, 0, 1, NULL, '2021-07-06 21:29:35', '2021-07-06 21:29:35'),
(27, 'Lynn Batz', 'lynn-batz', 'Mouse, turning to the cur, \"Such a trial, dear Sir, With no jury or judge, would be quite as safe.', 1, 0, 1, NULL, '2021-07-06 21:29:35', '2021-07-06 21:29:35'),
(28, 'Dr. Ray Buckridge', 'dr-ray-buckridge', 'So she sat down and make THEIR eyes bright and eager with many a strange tale, perhaps even with.', 1, 0, 1, NULL, '2021-07-06 21:29:35', '2021-07-06 21:29:35'),
(29, 'Prof. Dora Greenholt V', 'prof-dora-greenholt-v', 'Alice for some minutes. The Caterpillar and Alice guessed in a ring, and begged the Mouse was.', 1, 0, 1, NULL, '2021-07-06 21:29:35', '2021-07-06 21:29:35'),
(30, 'Sienna Thiel PhD', 'sienna-thiel-phd', 'Queen, who had followed him into the garden at once; but, alas for poor Alice! when she caught it.', 1, 0, 1, NULL, '2021-07-06 21:29:35', '2021-07-06 21:29:35'),
(31, 'Lucius West', 'lucius-west', 'I shall fall right THROUGH the earth! How funny it\'ll seem to have him with them,\' the Mock.', 1, 0, 1, NULL, '2021-07-06 21:29:35', '2021-07-06 21:29:35'),
(32, 'delete category', 'delete-category', 'for delete testing', 2, 1, 1, 'categories/SBocAay9VURflH5jUGioeKK9k.png', '2021-07-06 21:37:21', '2021-07-06 21:37:21');

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
(73, '2014_10_12_000000_create_users_table', 1),
(74, '2014_10_12_100000_create_password_resets_table', 1),
(75, '2019_08_19_000000_create_failed_jobs_table', 1),
(76, '2021_07_06_065711_create_admins_table', 1),
(77, '2021_07_06_081549_create_settings_table', 1),
(78, '2021_07_07_012753_create_categories_table', 1),
(79, '2021_07_07_051807_create_attributes_table', 1),
(80, '2021_07_07_172529_create_attribute_values_table', 2);

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
(1, 'site_name', 'E-Commerce Application', '2021-07-06 21:29:35', '2021-07-07 08:00:51'),
(2, 'site_title', 'E-Commerce', '2021-07-06 21:29:35', '2021-07-06 21:29:35'),
(3, 'default_email_address', 'admin@admin.com', '2021-07-06 21:29:35', '2021-07-06 21:29:35'),
(4, 'currency_code', 'GBP', '2021-07-06 21:29:35', '2021-07-06 21:29:35'),
(5, 'currency_symbol', '£', '2021-07-06 21:29:35', '2021-07-06 21:29:35'),
(6, 'site_logo', 'settings/h7XLx8FncEnorOaPCuc5gYx02.png', '2021-07-06 21:29:35', '2021-07-07 07:46:48'),
(7, 'site_favicon', 'settings/TfQVI2VQPeiQs42S24GO9YEE1.ico', '2021-07-06 21:29:35', '2021-07-07 07:56:42'),
(8, 'footer_copyright_text', '', '2021-07-06 21:29:35', '2021-07-06 21:29:35'),
(9, 'seo_meta_title', '', '2021-07-06 21:29:35', '2021-07-06 21:29:35'),
(10, 'seo_meta_description', '', '2021-07-06 21:29:35', '2021-07-06 21:29:35'),
(11, 'social_facebook', '', '2021-07-06 21:29:35', '2021-07-06 21:29:35'),
(12, 'social_twitter', '', '2021-07-06 21:29:35', '2021-07-06 21:29:35'),
(13, 'social_instagram', '', '2021-07-06 21:29:35', '2021-07-06 21:29:35'),
(14, 'social_linkedin', '', '2021-07-06 21:29:35', '2021-07-06 21:29:35'),
(15, 'google_analytics', '', '2021-07-06 21:29:35', '2021-07-06 21:29:35'),
(16, 'facebook_pixels', '', '2021-07-06 21:29:35', '2021-07-06 21:29:35'),
(17, 'stripe_payment_method', '', '2021-07-06 21:29:35', '2021-07-06 21:29:35'),
(18, 'stripe_key', '', '2021-07-06 21:29:35', '2021-07-06 21:29:35'),
(19, 'stripe_secret_key', '', '2021-07-06 21:29:35', '2021-07-06 21:29:35'),
(20, 'paypal_payment_method', '', '2021-07-06 21:29:35', '2021-07-06 21:29:35'),
(21, 'paypal_client_id', '', '2021-07-06 21:29:35', '2021-07-06 21:29:35'),
(22, 'paypal_secret_id', '', '2021-07-06 21:29:35', '2021-07-06 21:29:35');

-- --------------------------------------------------------

--
-- テーブルの構造 `users`
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
-- テーブルのインデックス `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- テーブルの AUTO_INCREMENT `attribute_values`
--
ALTER TABLE `attribute_values`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- テーブルの AUTO_INCREMENT `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- テーブルの AUTO_INCREMENT `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- テーブルの AUTO_INCREMENT `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- テーブルの AUTO_INCREMENT `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- テーブルの AUTO_INCREMENT `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- ダンプしたテーブルの制約
--

--
-- テーブルの制約 `attribute_values`
--
ALTER TABLE `attribute_values`
  ADD CONSTRAINT `attribute_values_attribute_id_foreign` FOREIGN KEY (`attribute_id`) REFERENCES `attributes` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
