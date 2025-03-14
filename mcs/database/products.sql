-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 14, 2025 at 02:51 AM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mcs`
--

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Nike', '2025-03-14 00:49:37', '2025-03-14 00:49:37'),
(2, 'Adidas', '2025-03-14 00:49:37', '2025-03-14 00:49:37'),
(3, 'Puma', '2025-03-14 00:49:37', '2025-03-14 00:49:37'),
(4, 'Reebok', '2025-03-14 00:49:37', '2025-03-14 00:49:37');

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` bigint UNSIGNED NOT NULL,
  `Quantity` int NOT NULL,
  `customize_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customize_color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `products_id` bigint UNSIGNED NOT NULL,
  `users_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `carts`
--

INSERT INTO `carts` (`id`, `Quantity`, `customize_image`, `customize_color`, `description`, `size`, `status`, `created_at`, `updated_at`, `products_id`, `users_id`) VALUES
(10, 2, NULL, 'Red', 'Customized sneakers', 'Large', 'pending', '2025-03-14 00:55:49', '2025-03-14 00:55:49', 1, 1),
(11, 1, NULL, 'Black', 'Limited edition', 'Medium', 'completed', '2025-03-14 00:55:49', '2025-03-14 00:55:49', 2, 2),
(12, 3, NULL, 'Blue', 'Exclusive release', 'Small', 'pending', '2025-03-14 00:55:49', '2025-03-14 00:55:49', 3, 3),
(13, 1, NULL, 'White', 'Standard', 'Large', 'processing', '2025-03-14 00:55:49', '2025-03-14 00:55:49', 4, 4),
(14, 2, NULL, 'Red', 'Customized sneakers', 'Large', 'pending', '2025-03-14 00:56:36', '2025-03-14 00:56:36', 1, 1),
(15, 1, NULL, 'Black', 'Limited edition', 'Medium', 'completed', '2025-03-14 00:56:36', '2025-03-14 00:56:36', 2, 2),
(16, 3, NULL, 'Blue', 'Exclusive release', 'Small', 'pending', '2025-03-14 00:56:36', '2025-03-14 00:56:36', 3, 3),
(17, 1, NULL, 'White', 'Standard', 'Large', 'processing', '2025-03-14 00:56:36', '2025-03-14 00:56:36', 4, 4),
(18, 2, NULL, 'Red', 'Customized sneakers', 'Large', 'pending', '2025-03-14 00:57:12', '2025-03-14 00:57:12', 1, 1),
(19, 1, NULL, 'Black', 'Limited edition', 'Medium', 'completed', '2025-03-14 00:57:12', '2025-03-14 00:57:12', 2, 2),
(20, 3, NULL, 'Blue', 'Exclusive release', 'Small', 'pending', '2025-03-14 00:57:12', '2025-03-14 00:57:12', 3, 3),
(21, 1, NULL, 'White', 'Standard', 'Large', 'processing', '2025-03-14 00:57:12', '2025-03-14 00:57:12', 4, 4),
(22, 2, NULL, 'Red', 'Customized sneakers', 'Large', 'pending', '2025-03-14 00:57:28', '2025-03-14 00:57:28', 1, 1),
(23, 1, NULL, 'Black', 'Limited edition', 'Medium', 'completed', '2025-03-14 00:57:28', '2025-03-14 00:57:28', 2, 2),
(24, 3, NULL, 'Blue', 'Exclusive release', 'Small', 'pending', '2025-03-14 00:57:28', '2025-03-14 00:57:28', 3, 3),
(25, 1, NULL, 'White', 'Standard', 'Large', 'processing', '2025-03-14 00:57:28', '2025-03-14 00:57:28', 4, 4),
(26, 2, NULL, 'Red', 'Customized sneakers', 'Large', 'pending', '2025-03-14 00:57:44', '2025-03-14 00:57:44', 1, 1),
(27, 1, NULL, 'Black', 'Limited edition', 'Medium', 'completed', '2025-03-14 00:57:44', '2025-03-14 00:57:44', 2, 2),
(28, 3, NULL, 'Blue', 'Exclusive release', 'Small', 'pending', '2025-03-14 00:57:44', '2025-03-14 00:57:44', 3, 3),
(29, 1, NULL, 'White', 'Standard', 'Large', 'processing', '2025-03-14 00:57:44', '2025-03-14 00:57:44', 4, 4),
(30, 2, NULL, 'Red', 'Customized sneakers', 'Large', 'pending', '2025-03-14 00:57:44', '2025-03-14 00:57:44', 1, 1),
(31, 1, NULL, 'Black', 'Limited edition', 'Medium', 'completed', '2025-03-14 00:57:44', '2025-03-14 00:57:44', 2, 2),
(32, 3, NULL, 'Blue', 'Exclusive release', 'Small', 'pending', '2025-03-14 00:57:44', '2025-03-14 00:57:44', 3, 3),
(33, 1, NULL, 'White', 'Standard', 'Large', 'processing', '2025-03-14 00:57:44', '2025-03-14 00:57:44', 4, 4),
(34, 2, NULL, 'Red', 'Customized sneakers', 'Large', 'pending', '2025-03-14 00:57:59', '2025-03-14 00:57:59', 1, 1),
(35, 1, NULL, 'Black', 'Limited edition', 'Medium', 'completed', '2025-03-14 00:57:59', '2025-03-14 00:57:59', 2, 2),
(36, 3, NULL, 'Blue', 'Exclusive release', 'Small', 'pending', '2025-03-14 00:57:59', '2025-03-14 00:57:59', 3, 3),
(37, 1, NULL, 'White', 'Standard', 'Large', 'processing', '2025-03-14 00:57:59', '2025-03-14 00:57:59', 4, 4),
(38, 2, NULL, 'Red', 'Customized sneakers', 'Large', 'pending', '2025-03-14 00:57:59', '2025-03-14 00:57:59', 1, 1),
(39, 1, NULL, 'Black', 'Limited edition', 'Medium', 'completed', '2025-03-14 00:57:59', '2025-03-14 00:57:59', 2, 2),
(40, 3, NULL, 'Blue', 'Exclusive release', 'Small', 'pending', '2025-03-14 00:57:59', '2025-03-14 00:57:59', 3, 3),
(41, 1, NULL, 'White', 'Standard', 'Large', 'processing', '2025-03-14 00:57:59', '2025-03-14 00:57:59', 4, 4),
(42, 2, NULL, 'Red', 'Customized sneakers', 'Large', 'pending', '2025-03-14 00:58:03', '2025-03-14 00:58:03', 1, 1),
(43, 1, NULL, 'Black', 'Limited edition', 'Medium', 'completed', '2025-03-14 00:58:03', '2025-03-14 00:58:03', 2, 2),
(44, 3, NULL, 'Blue', 'Exclusive release', 'Small', 'pending', '2025-03-14 00:58:03', '2025-03-14 00:58:03', 3, 3),
(45, 1, NULL, 'White', 'Standard', 'Large', 'processing', '2025-03-14 00:58:03', '2025-03-14 00:58:03', 4, 4),
(46, 2, NULL, 'Red', 'Customized sneakers', 'Large', 'pending', '2025-03-14 00:58:03', '2025-03-14 00:58:03', 1, 1),
(47, 1, NULL, 'Black', 'Limited edition', 'Medium', 'completed', '2025-03-14 00:58:03', '2025-03-14 00:58:03', 2, 2),
(48, 3, NULL, 'Blue', 'Exclusive release', 'Small', 'pending', '2025-03-14 00:58:03', '2025-03-14 00:58:03', 3, 3),
(49, 1, NULL, 'White', 'Standard', 'Large', 'processing', '2025-03-14 00:58:03', '2025-03-14 00:58:03', 4, 4);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `size`, `created_at`, `updated_at`) VALUES
(1, 'Shoes', 'Large', '2025-03-14 00:51:35', '2025-03-14 00:51:35'),
(2, 'Clothing', 'Medium', '2025-03-14 00:51:35', '2025-03-14 00:51:35'),
(3, 'Accessories', 'Small', '2025-03-14 00:51:35', '2025-03-14 00:51:35'),
(4, 'Electronics', 'N/A', '2025-03-14 00:51:35', '2025-03-14 00:51:35');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(2, '2019_08_19_000000_create_failed_jobs_table', 1),
(3, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(4, '2025_03_07_044135_create_category_table', 1),
(5, '2025_03_07_044144_create_brands_table', 1),
(6, '2025_03_13_172651_create_users_table', 1),
(7, '2025_03_13_172951_create_products_table', 1),
(8, '2025_03_13_173725_create_carts_table', 1),
(9, '2025_03_13_173815_create_transactions_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `qty` double NOT NULL,
  `price` decimal(8,2) NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand_id` bigint UNSIGNED NOT NULL,
  `category_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `qty`, `price`, `description`, `brand_id`, `category_id`, `created_at`, `updated_at`) VALUES
(1, 'Sneakers', 10, 99.99, 'Customized sneakers', 1, 1, '2025-03-14 00:51:53', '2025-03-14 00:51:53'),
(2, 'Limited Shoes', 5, 149.99, 'Limited edition', 2, 1, '2025-03-14 00:51:53', '2025-03-14 00:51:53'),
(3, 'Exclusive Shoes', 8, 129.99, 'Exclusive release', 3, 1, '2025-03-14 00:51:53', '2025-03-14 00:51:53'),
(4, 'Standard Shoes', 15, 79.99, 'Standard', 4, 1, '2025-03-14 00:51:53', '2025-03-14 00:51:53');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint UNSIGNED NOT NULL,
  `price` int NOT NULL,
  `status` enum('pending','processing','completed','cancelled') COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_completed` timestamp NULL DEFAULT NULL,
  `contact_number` varchar(11) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pickup_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `users_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `price`, `status`, `type`, `date_completed`, `contact_number`, `Address`, `pickup_date`, `users_id`, `created_at`, `updated_at`) VALUES
(5, 200, 'pending', 'online', NULL, '09123456789', '123 Main St, City A', '2025-03-20', 1, '2025-03-14 00:57:12', '2025-03-14 00:57:12'),
(6, 150, 'completed', 'cash', '2025-03-14 00:57:12', '09234567890', '456 Elm St, City B', '2025-03-15', 2, '2025-03-14 00:57:12', '2025-03-14 00:57:12'),
(7, 387, 'processing', 'credit', NULL, '09345678901', '789 Pine St, City C', '2025-03-22', 3, '2025-03-14 00:57:12', '2025-03-14 00:57:12'),
(8, 80, 'cancelled', 'online', NULL, '09456789012', '101 Maple St, City D', '2025-03-25', 4, '2025-03-14 00:57:12', '2025-03-14 00:57:12'),
(9, 200, 'pending', 'online', NULL, '09123456789', '123 Main St, City A', '2025-03-20', 1, '2025-03-14 00:57:28', '2025-03-14 00:57:28'),
(10, 150, 'completed', 'cash', '2025-03-14 00:57:28', '09234567890', '456 Elm St, City B', '2025-03-15', 2, '2025-03-14 00:57:28', '2025-03-14 00:57:28'),
(11, 387, 'processing', 'credit', NULL, '09345678901', '789 Pine St, City C', '2025-03-22', 3, '2025-03-14 00:57:28', '2025-03-14 00:57:28'),
(12, 80, 'cancelled', 'online', NULL, '09456789012', '101 Maple St, City D', '2025-03-25', 4, '2025-03-14 00:57:28', '2025-03-14 00:57:28'),
(13, 200, 'pending', 'online', NULL, '09123456789', '123 Main St, City A', '2025-03-20', 1, '2025-03-14 00:57:44', '2025-03-14 00:57:44'),
(14, 150, 'completed', 'cash', '2025-03-14 00:57:44', '09234567890', '456 Elm St, City B', '2025-03-15', 2, '2025-03-14 00:57:44', '2025-03-14 00:57:44'),
(15, 387, 'processing', 'credit', NULL, '09345678901', '789 Pine St, City C', '2025-03-22', 3, '2025-03-14 00:57:44', '2025-03-14 00:57:44'),
(16, 80, 'cancelled', 'online', NULL, '09456789012', '101 Maple St, City D', '2025-03-25', 4, '2025-03-14 00:57:44', '2025-03-14 00:57:44'),
(17, 200, 'pending', 'online', NULL, '09123456789', '123 Main St, City A', '2025-03-20', 1, '2025-03-14 00:57:59', '2025-03-14 00:57:59'),
(18, 150, 'completed', 'cash', '2025-03-14 00:57:59', '09234567890', '456 Elm St, City B', '2025-03-15', 2, '2025-03-14 00:57:59', '2025-03-14 00:57:59'),
(19, 387, 'processing', 'credit', NULL, '09345678901', '789 Pine St, City C', '2025-03-22', 3, '2025-03-14 00:57:59', '2025-03-14 00:57:59'),
(20, 80, 'cancelled', 'online', NULL, '09456789012', '101 Maple St, City D', '2025-03-25', 4, '2025-03-14 00:57:59', '2025-03-14 00:57:59'),
(21, 200, 'pending', 'online', NULL, '09123456789', '123 Main St, City A', '2025-03-20', 1, '2025-03-14 00:58:03', '2025-03-14 00:58:03'),
(22, 150, 'completed', 'cash', '2025-03-14 00:58:03', '09234567890', '456 Elm St, City B', '2025-03-15', 2, '2025-03-14 00:58:03', '2025-03-14 00:58:03'),
(23, 387, 'processing', 'credit', NULL, '09345678901', '789 Pine St, City C', '2025-03-22', 3, '2025-03-14 00:58:03', '2025-03-14 00:58:03'),
(24, 80, 'cancelled', 'online', NULL, '09456789012', '101 Maple St, City D', '2025-03-25', 4, '2025-03-14 00:58:03', '2025-03-14 00:58:03');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
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
(1, 'John Doe', 'john@example.com', NULL, 'hashed_password', NULL, '2025-03-14 00:55:25', '2025-03-14 00:55:25'),
(2, 'Jane Smith', 'jane@example.com', NULL, 'hashed_password', NULL, '2025-03-14 00:55:25', '2025-03-14 00:55:25'),
(3, 'Alice Brown', 'alice@example.com', NULL, 'hashed_password', NULL, '2025-03-14 00:55:25', '2025-03-14 00:55:25'),
(4, 'Bob White', 'bob@example.com', NULL, 'hashed_password', NULL, '2025-03-14 00:55:25', '2025-03-14 00:55:25');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `carts_products_id_foreign` (`products_id`),
  ADD KEY `carts_users_id_foreign` (`users_id`);

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
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_brand_id_foreign` (`brand_id`),
  ADD KEY `products_category_id_foreign` (`category_id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transactions_users_id_foreign` (`users_id`);

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
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `carts`
--
ALTER TABLE `carts`
  ADD CONSTRAINT `carts_products_id_foreign` FOREIGN KEY (`products_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `carts_users_id_foreign` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_brand_id_foreign` FOREIGN KEY (`brand_id`) REFERENCES `brands` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `transactions`
--
ALTER TABLE `transactions`
  ADD CONSTRAINT `transactions_users_id_foreign` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
