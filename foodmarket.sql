-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 03, 2021 at 10:02 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 7.4.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `foodmarket`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `food`
--

CREATE TABLE `food` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ingredients` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `rate` double DEFAULT NULL,
  `types` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `picturePath` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `food`
--

INSERT INTO `food` (`id`, `name`, `description`, `ingredients`, `price`, `rate`, `types`, `picturePath`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Pizza paperoni', 'Pizza mantap dibuat dengan bahan pilihan , yang di ambil langsung dari kebun dan diproses secara alami', 'komposisi sayuran', 30000, 4.3, 'pizza', 'https://res.cloudinary.com/teguhcodeincom/image/upload/v1622747492/wwvudqtxcghcxnkt1ait.jpg', NULL, NULL, '2021-06-03 12:11:32'),
(2, 'Nasi Padang', 'Murah Bergizi', 'Nasi Sayur, Bumbu Padang', 120000, 4, 'Makanan Berat Bergizi', 'https://res.cloudinary.com/teguhcodeincom/image/upload/v1622747698/jbjmgkkkcj7noxmg9wij.jpg', NULL, '2021-06-02 03:00:40', '2021-06-03 12:14:58'),
(3, 'Sate Ayam', 'Makanan Asli Madura', 'Daging Ayam , Bumbu Kacang', 20000, 5, 'Makanan Berat Bergizi', 'https://res.cloudinary.com/teguhcodeincom/image/upload/v1622749789/tudngcjqfuus3itt92pb.jpg', NULL, '2021-06-02 03:02:26', '2021-06-03 12:49:49'),
(4, 'Nasi Goreng', 'Nasi Goreng', 'Nasi Kecap, Bawang Putih,Bawang Merah,Cabai', 25000, 4, 'Makanan Berat Bergizi', 'https://res.cloudinary.com/teguhcodeincom/image/upload/v1622749826/sgawoh9khm4t3mt4n9jf.jpg', NULL, '2021-06-03 06:21:10', '2021-06-03 12:50:26'),
(5, 'Hamburger', 'burger ku', 'Hamburger', 20000, 3, 'Makaanan', 'https://res.cloudinary.com/teguhcodeincom/image/upload/v1622749894/v72b0uilsl4rr3qrjecw.jpg', NULL, '2021-06-03 10:50:04', '2021-06-03 12:51:34');

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
(12, '2014_10_12_000000_create_users_table', 1),
(13, '2014_10_12_100000_create_password_resets_table', 1),
(14, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(15, '2019_08_19_000000_create_failed_jobs_table', 1),
(16, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(17, '2020_05_21_100000_create_teams_table', 1),
(18, '2020_05_21_200000_create_team_user_table', 1),
(19, '2020_05_21_300000_create_team_invitations_table', 1),
(20, '2021_05_02_133318_create_sessions_table', 1),
(21, '2021_05_02_153659_create_food_table', 1),
(22, '2021_05_02_154123_create_transactions_table', 1),
(23, '2021_06_02_094241_change_picture_field', 2);

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

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 1, 'authToken', '4c9ec4abd3749a052a0d1757feb762ba90e9e3d1792c030e2a50639163d65ade', '[\"*\"]', NULL, '2021-05-03 05:18:30', '2021-05-03 05:18:30'),
(2, 'App\\Models\\User', 1, 'authToken', 'e78a580a64f825a620c7ea36dec754adb0fae2bb4d4c670e7240ad49d4a4ad97', '[\"*\"]', '2021-05-03 05:24:42', '2021-05-03 05:18:56', '2021-05-03 05:24:42'),
(3, 'App\\Models\\User', 2, 'authToken', 'b8b39b17c50db7aff7aa0c609a74388839be6527aa9bd7f744ad170be79bc278', '[\"*\"]', NULL, '2021-05-03 05:45:41', '2021-05-03 05:45:41'),
(4, 'App\\Models\\User', 1, 'authToken', 'cd6becfcc65347435a2fb15279e9c20252d97b8de3ab22dd257d8b0daa78243e', '[\"*\"]', NULL, '2021-05-03 05:46:47', '2021-05-03 05:46:47'),
(5, 'App\\Models\\User', 2, 'authToken', '4b090234042dc28c48319b4c039678beda1ba9a511e96dffdb2f2a95afb39787', '[\"*\"]', NULL, '2021-05-03 05:47:11', '2021-05-03 05:47:11'),
(6, 'App\\Models\\User', 2, 'authToken', '20999824ecbb800e44c05856ddd074997d95b6ea5cbec63758536f9f63fd085d', '[\"*\"]', NULL, '2021-05-03 06:14:09', '2021-05-03 06:14:09'),
(7, 'App\\Models\\User', 4, 'authToken', '80920dfc768ba35430770bacac0d7e0dedbcd0629b39175d7c4c50122207d4f2', '[\"*\"]', NULL, '2021-06-03 09:24:02', '2021-06-03 09:24:02'),
(8, 'App\\Models\\User', 5, 'authToken', '33ccd8d64765c25dc32e64da75876f6e0af49b9fed0ff6bc7e885418ebdef505', '[\"*\"]', NULL, '2021-06-03 09:24:53', '2021-06-03 09:24:53'),
(9, 'App\\Models\\User', 5, 'authToken', 'b7a256b953565105bb3033b24a9b1e502f2a39e427344970e30c764ac774ee50', '[\"*\"]', NULL, '2021-06-03 09:26:07', '2021-06-03 09:26:07'),
(10, 'App\\Models\\User', 5, 'authToken', 'b7231912b88d00312b1fa3a454455a3c2c91457b7550fc0fd3394e62c309a0cd', '[\"*\"]', '2021-06-03 09:44:48', '2021-06-03 09:27:30', '2021-06-03 09:44:48'),
(11, 'App\\Models\\User', 5, 'authToken', '5289b3bc7142bce47ff39055bbabbf0c43b0d4413df3e8e8009dd0875cb41dc6', '[\"*\"]', '2021-06-03 09:57:55', '2021-06-03 09:57:54', '2021-06-03 09:57:55'),
(12, 'App\\Models\\User', 5, 'authToken', '58630c486c16210a26c99371701166876e036b8a302270dfb05dd0d0d7d6c95a', '[\"*\"]', '2021-06-03 10:02:08', '2021-06-03 10:00:52', '2021-06-03 10:02:08'),
(13, 'App\\Models\\User', 5, 'authToken', 'aec36525626d22760ac4c4511b4084e5ec1ea5352cf7eddee3614fa137a4df0c', '[\"*\"]', '2021-06-03 10:19:13', '2021-06-03 10:19:11', '2021-06-03 10:19:13'),
(14, 'App\\Models\\User', 5, 'authToken', '1634be35b2a58287eac4b7b0fc7fb344d338c821e2b0bd5aaac702bf9fe5154c', '[\"*\"]', '2021-06-03 10:24:55', '2021-06-03 10:24:53', '2021-06-03 10:24:55');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('DDbOz6FXGvy3sQEPhky4z4zzU1u1iGPoVvwYI0aT', 2, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36', 'YTo3OntzOjY6Il90b2tlbiI7czo0MDoiZ0hsMHA2N1FoY0hQMm50ZVJUVURtUlZKM2JiNzB0ckNTTkVTSjZGQSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czozOiJ1cmwiO2E6MDp7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjM2OiJodHRwOi8vMTI3LjAuMC4xOjgwMDAvZGFzaGJvYXJkL2Zvb2QiO31zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToyO3M6MTc6InBhc3N3b3JkX2hhc2hfd2ViIjtzOjYwOiIkMnkkMTAkYXNZYXdZZG5tVmJtRmxVM0s2cUsyTzJ6UU8vbFh1cTFuSWhET0F3THgvRmxwUVhvMkxFWS4iO3M6MjE6InBhc3N3b3JkX2hhc2hfc2FuY3R1bSI7czo2MDoiJDJ5JDEwJGFzWWF3WWRubVZibUZsVTNLNnFLMk8yelFPL2xYdXExbkloRE9Bd0x4L0ZscFFYbzJMRVkuIjt9', 1622749894),
('h7DOuyIFnjTiJm4RugBSWJnW16T4s3bh5PvqWvuo', 2, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36', 'YTo3OntzOjY6Il90b2tlbiI7czo0MDoidWdEYzBOT2F5eDJmZjVpOUtGbjc5ZXNNR1hlTFRSMWdMakJRMEdSbCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czozOiJ1cmwiO2E6MDp7fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjI7czoxNzoicGFzc3dvcmRfaGFzaF93ZWIiO3M6NjA6IiQyeSQxMCRhc1lhd1lkbm1WYm1GbFUzSzZxSzJPMnpRTy9sWHVxMW5JaERPQXdMeC9GbHBRWG8yTEVZLiI7czoyMToicGFzc3dvcmRfaGFzaF9zYW5jdHVtIjtzOjYwOiIkMnkkMTAkYXNZYXdZZG5tVmJtRmxVM0s2cUsyTzJ6UU8vbFh1cTFuSWhET0F3THgvRmxwUVhvMkxFWS4iO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjM2OiJodHRwOi8vMTI3LjAuMC4xOjgwMDAvZGFzaGJvYXJkL2Zvb2QiO319', 1622743712);

-- --------------------------------------------------------

--
-- Table structure for table `teams`
--

CREATE TABLE `teams` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_team` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `teams`
--

INSERT INTO `teams` (`id`, `user_id`, `name`, `personal_team`, `created_at`, `updated_at`) VALUES
(1, 4, 'teguh\'s Team', 1, '2021-06-01 15:20:58', '2021-06-01 15:20:58');

-- --------------------------------------------------------

--
-- Table structure for table `team_invitations`
--

CREATE TABLE `team_invitations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `team_id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `team_user`
--

CREATE TABLE `team_user` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `team_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `food_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `total` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_url` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `user_id`, `food_id`, `quantity`, `total`, `status`, `payment_url`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 2, '60000', 'DELIVERED', '', NULL, '2021-05-03 05:18:30', '2021-06-03 10:03:18');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `houseNumber` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phoneNumber` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `roles` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'USER',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `remember_token`, `current_team_id`, `profile_photo_path`, `address`, `houseNumber`, `phoneNumber`, `city`, `roles`, `created_at`, `updated_at`) VALUES
(2, 'Teguh', 'teguh@admin.com', NULL, '$2y$10$asYawYdnmVbmFlU3K6qK2O2zQO/lXuq1nIhDOAwLx/FlpQXo2LEY.', NULL, NULL, NULL, 1, NULL, 'Jakarta', '21A', '089389283983', 'Seoul', 'ADMIN', '2021-05-03 05:45:41', '2021-05-03 05:45:41'),
(4, 'Novita', 'teguh45@gmail.com', NULL, '$2y$10$asYawYdnmVbmFlU3K6qK2O2zQO/lXuq1nIhDOAwLx/FlpQXo2LEY.', NULL, NULL, 'l7chBTe0YQpRJUh4LOG2Bd1Q8QcN9l30WLn49rZGe8FewK3ryXxqYXUjakiB', 1, 'https://res.cloudinary.com/teguhcodeincom/image/upload/v1622749721/ugofptdxhqb5qs5al0rc.jpg', '13312', '45657568', 'JL HJ RIKN', 'Jakarta', 'USER', '2021-06-01 15:20:58', '2021-06-03 12:48:41'),
(6, 'siska', 'siskakohl@gmail.com', NULL, '$2y$10$asYawYdnmVbmFlU3K6qK2O2zQO/lXuq1nIhDOAwLx/FlpQXo2LEY.', NULL, NULL, NULL, NULL, 'https://res.cloudinary.com/teguhcodeincom/image/upload/v1622749513/mrd4nsrdfnlfwmsiaxgq.jpg', '13312', 'No 76 F', '083135351881', 'Jakarta', 'USER', '2021-06-03 12:45:13', '2021-06-03 12:45:13');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `food`
--
ALTER TABLE `food`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `teams`
--
ALTER TABLE `teams`
  ADD PRIMARY KEY (`id`),
  ADD KEY `teams_user_id_index` (`user_id`);

--
-- Indexes for table `team_invitations`
--
ALTER TABLE `team_invitations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `team_invitations_team_id_email_unique` (`team_id`,`email`);

--
-- Indexes for table `team_user`
--
ALTER TABLE `team_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `team_user_team_id_user_id_unique` (`team_id`,`user_id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
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
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `food`
--
ALTER TABLE `food`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `teams`
--
ALTER TABLE `teams`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `team_invitations`
--
ALTER TABLE `team_invitations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `team_user`
--
ALTER TABLE `team_user`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `team_invitations`
--
ALTER TABLE `team_invitations`
  ADD CONSTRAINT `team_invitations_team_id_foreign` FOREIGN KEY (`team_id`) REFERENCES `teams` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
