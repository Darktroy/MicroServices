-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Oct 30, 2020 at 05:44 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gateway`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(115) NOT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'test 1', NULL, '2020-10-29 12:47:33', NULL),
(2, 'test 2', NULL, '2020-10-29 12:47:33', NULL);

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
(9, '2014_10_12_000000_create_users_table', 1),
(10, '2014_10_12_100000_create_password_resets_table', 1),
(11, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(12, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(13, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(14, '2016_06_01_000004_create_oauth_clients_table', 1),
(15, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(16, '2019_08_19_000000_create_failed_jobs_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('099c8fab653b2f297591dfc36ce82ecb999a2ba091f2d385fa634f97f2f73b2c6ff9fb3e639ba14b', 4, '91e04c3d-4e49-41d4-bff4-27ff098d0f25', 'MyApp', '[]', 0, '2020-10-29 10:25:57', '2020-10-29 10:25:57', '2021-10-29 12:25:57'),
('3663dd12e0e360b8e5cd90c70dbfb0d7268ea7154568ee8040e349a962d7dd679b6fe7b28b4c388e', 2, '91e04c3d-4e49-41d4-bff4-27ff098d0f25', 'Personal Access Token', '[]', 0, '2020-10-29 09:07:05', '2020-10-29 09:07:05', '2021-10-29 11:07:05'),
('3e57e38531368c433f6e2b71f4484fcceeaafeaee56933fbc7fae646d1670f85420181ba7ed60c49', 3, '91e04c3d-4e49-41d4-bff4-27ff098d0f25', 'MyApp', '[]', 0, '2020-10-29 10:28:01', '2020-10-29 10:28:01', '2021-10-29 12:28:01'),
('789ab127057064b7d19991202a6c0b46b0705f9be154010df5d9e7016572da7399b4bc7925bc017b', 3, '91e04c3d-4e49-41d4-bff4-27ff098d0f25', 'MyApp', '[]', 0, '2020-10-29 10:24:58', '2020-10-29 10:24:58', '2021-10-29 12:24:58'),
('929e48ffe231272d7fc685948dd2cb95ede85144b4b12cfcd40c8abbddee00732a505182aee753f1', 2, '91e04c3d-4e49-41d4-bff4-27ff098d0f25', 'MyApp', '[]', 0, '2020-10-29 10:09:59', '2020-10-29 10:09:59', '2021-10-29 12:09:59'),
('acb017c323c087ffeb96ae9d2d6fa865774ff3ef3859b7d2ec37f5656f2291efd446442ddb7e3db7', 2, '91e04c3d-4e49-41d4-bff4-27ff098d0f25', 'Personal Access Token', '[]', 0, '2020-10-29 09:07:07', '2020-10-29 09:07:07', '2021-10-29 11:07:07'),
('b98997ca878cfb754963496e4540ca6daddc2aebf6f22ac74e69270c80f36bd8270f8b8aba5e76cf', 2, '91e04c3d-4e49-41d4-bff4-27ff098d0f25', 'Personal Access Token', '[]', 0, '2020-10-29 09:55:28', '2020-10-29 09:55:28', '2021-10-29 11:55:28'),
('f46eced414be1bfa430a9ef7241e602acd1d2ceba2f4ebf77a211885696bc0b962902f1200e5c5e3', 2, '91e04c3d-4e49-41d4-bff4-27ff098d0f25', 'MyApp', '[]', 0, '2020-10-29 10:13:36', '2020-10-29 10:13:36', '2021-10-29 12:13:36'),
('f8f206b09b951e76ca99349a68375a4caf40171985a373c1781b3ab8ca102b76c0db39cb9656aee3', 2, '91e04c3d-4e49-41d4-bff4-27ff098d0f25', 'Personal Access Token', '[]', 0, '2020-10-29 07:12:27', '2020-10-29 07:12:27', '2021-10-29 09:12:27'),
('fa7f5f712cd2a1b897a047c64aae6c383ef1d832ffa654092c00169e3a4cffe9f5ff8f188d234c9f', 2, '91e04c3d-4e49-41d4-bff4-27ff098d0f25', 'MyApp', '[]', 0, '2020-10-29 10:10:43', '2020-10-29 10:10:43', '2021-10-29 12:10:43');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
('91e04c3d-4e49-41d4-bff4-27ff098d0f25', NULL, 'Laravel Personal Access Client', 'q72gqMb40T3aFbUxY9vU3v1lUJ5pdtmKPBPx3saG', NULL, 'http://localhost', 1, 0, 0, '2020-10-28 20:49:37', '2020-10-28 20:49:37'),
('91e04c3d-7647-4c38-b860-2ae02f960c5c', NULL, 'Laravel Password Grant Client', 'IgOmAyuoYgMxNNC1Rqto7gwgk1Q0G9F8f6RhdkMI', 'users', 'http://localhost', 0, 1, 0, '2020-10-28 20:49:37', '2020-10-28 20:49:37'),
('91e1726e-408f-493b-8770-52c89cc04a23', NULL, 'Laravel Personal Access Client', 'YJedxkBn8tSLcbn9G6Nyk2F6S5Wwh6UkuSAv6sas', NULL, 'http://localhost', 1, 0, 0, '2020-10-29 10:32:14', '2020-10-29 10:32:14'),
('91e1726e-7b18-4034-a20e-5981a85f347e', NULL, 'Laravel Password Grant Client', 'ecnXtCD9OnMtPYrg17cKDUuyLBZ39TMJxmDhYJNH', 'users', 'http://localhost', 0, 1, 0, '2020-10-29 10:32:15', '2020-10-29 10:32:15'),
('91e1777b-a203-4556-905c-f24311d2f0a1', NULL, 'Laravel Password Grant Client', 'Cg8T19UgfA0bbx3DZ6GoxWV849AOp9P5gOlCfByV', 'users', 'http://localhost', 0, 1, 0, '2020-10-29 10:46:22', '2020-10-29 10:46:22');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, '91e04c3d-4e49-41d4-bff4-27ff098d0f25', '2020-10-28 20:49:37', '2020-10-28 20:49:37'),
(2, '91e1726e-408f-493b-8770-52c89cc04a23', '2020-10-29 10:32:15', '2020-10-29 10:32:15');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(2, 'test name', 'test@test.test', NULL, '$2y$10$so1wlCdYat6pbJIX/urcnuoNAo/VrBjzssCuUTCW82Pc94TvbMicu', NULL, '2020-10-29 07:11:49', '2020-10-29 07:11:49'),
(3, 'test name 2', 'test@test.test2', NULL, '$2y$10$ylZul97OMZbBnqkHC1fpuOFbgDvPSRhlbPsO78HbJ0sJPhRD4Bmq.', NULL, '2020-10-29 10:24:58', '2020-10-29 10:24:58'),
(4, 'test name 2', 'test@test.test3', NULL, '$2y$10$DIIFlE1RlqbCkfeWC4PiEeMD0AvyP0Ia0lrz3Fyn0bL91xhbYzrQe', NULL, '2020-10-29 10:25:57', '2020-10-29 10:25:57');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
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
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

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
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
