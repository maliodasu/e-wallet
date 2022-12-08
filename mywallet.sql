-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 08, 2022 at 09:00 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mywallet`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounts`
--

CREATE TABLE `accounts` (
  `id` int(10) UNSIGNED NOT NULL,
  `client_id` int(11) NOT NULL,
  `balance` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `accounts`
--

INSERT INTO `accounts` (`id`, `client_id`, `balance`, `created_at`, `updated_at`) VALUES
(1, 1, 100, '2022-12-08 00:41:13', '2022-12-08 00:41:13'),
(2, 2, 100, '2022-12-08 00:41:30', '2022-12-08 00:41:30'),
(3, 3, 100, '2022-12-08 00:42:48', '2022-12-08 00:42:48'),
(4, 4, 1000, '2022-12-08 00:43:25', '2022-12-08 00:43:25'),
(5, 5, 1000, '2022-12-08 00:43:58', '2022-12-08 00:43:58');

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE `clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `names` varchar(191) NOT NULL,
  `contact` varchar(191) NOT NULL,
  `email` varchar(191) NOT NULL,
  `password` varchar(191) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `secret_key` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `clients`
--

INSERT INTO `clients` (`id`, `names`, `contact`, `email`, `password`, `remember_token`, `secret_key`, `created_at`, `updated_at`) VALUES
(1, 'kamal', '+6281573223098', 'kamalmlzka@gmail.com', '$2y$10$L1dXuHN.vUZpBxXlAUYCHOfc3yn5jrxvfFwH3GSbFGHvgeBiRJuPK', 'HCAGdOGYMsfYZlxWtZURsxghNm1EWH1mSVZEVdKX99WLTKha1oX7GyaN3fbq', 'ojvpd719c0KVd5RBydZ5z9ruUlkKGW', '2022-12-08 00:41:13', '2022-12-08 00:41:13'),
(2, 'iqnaz', '+6285224536870', 'iqnaznadhif@gmail.com', '$2y$10$j9IkTBJtm7WG0JXDOridcedqhb.AjBb0IHmEJP6khHpzoMGk7SnUC', NULL, 'V5xEgOOhLnpMQXyIL2Yq8hyy6kPnkt', '2022-12-08 00:41:30', '2022-12-08 00:41:30'),
(3, 'zaidan', '+6281222750472', 'zaidanrafif@gmail.com', '$2y$10$piKO2vZfgiKxVVhaGsrhx.h9p1sMaDtKGH7zqRuyKqyMlyP.MH7o.', 'n1wMOktTVXZnxVDlqfV4RHUfVxhvlklqB4Gt1IiXgirgaQ1TgiUbZ8MxJV0Z', 'OZ9ZJexxLH6R1leae4xtKf4UXCWD4r', '2022-12-08 00:42:48', '2022-12-08 00:42:48'),
(4, 'evan', '+6281388266627', 'rizkypanjer@gmail.com', '$2y$10$0qSuJGlod69Kgcr38ENIfe78v9onlZsJzZB5XhvKcHkfQr6IjPtBK', NULL, 'nZcvoJoAQ7Ysxwxz6i5dda4tPIyBbb', '2022-12-08 00:43:25', '2022-12-08 00:43:25'),
(5, 'arya', '+6282130364139', 'aryasatama@gmail.com', '$2y$10$Q7TjSrglOBSeU1WHdjnR/eUNzL3WDo8961kpYvVyycVE20uGLBVOK', NULL, 'HHDXfvt0IXOCewR6TJqlrOdM3J9UoV', '2022-12-08 00:43:58', '2022-12-08 00:43:58');

-- --------------------------------------------------------

--
-- Table structure for table `helps`
--

CREATE TABLE `helps` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(191) NOT NULL,
  `title` varchar(191) NOT NULL,
  `message` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `helps`
--

INSERT INTO `helps` (`id`, `email`, `title`, `message`, `created_at`, `updated_at`) VALUES
(1, 'kamalmlzka@gmail.com', 'Deposit error', 'I deposited my money 12 usd but my account does not reflect it', '2017-12-31 08:17:25', '2017-12-31 08:17:25'),
(2, 'iqnaznadhif@gmail.com', 'Incorrect amount', 'Deposited incorrect amount to my acount', '2017-12-31 08:41:55', '2017-12-31 08:41:55');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2017_12_29_134846_create_clients_table', 1),
(4, '2017_12_29_163103_create_transaction_table', 1),
(5, '2017_12_30_220001_create_account_table', 1),
(6, '2017_12_31_105758_create_help_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) NOT NULL,
  `token` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` int(10) UNSIGNED NOT NULL,
  `trans_id` varchar(191) NOT NULL,
  `client_id` int(11) NOT NULL,
  `type` varchar(191) NOT NULL,
  `amount` double NOT NULL,
  `currency` varchar(191) NOT NULL,
  `fee` double NOT NULL,
  `sender` varchar(191) NOT NULL,
  `receiver` varchar(191) NOT NULL,
  `status` varchar(191) NOT NULL,
  `description` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `trans_id`, `client_id`, `type`, `amount`, `currency`, `fee`, `sender`, `receiver`, `status`, `description`, `created_at`, `updated_at`) VALUES
(1, 'ch_1Beu6oASBN7os99X9aYkJidN', 3, 'card', 2400, 'usd', 0, 'admin', 'Kelompok WhyPhi', 'completed', 'Card Deposit to My-Wallet', '2017-12-30 20:51:22', '2017-12-30 20:51:22'),
(2, '2ncylSetRmSNbIB', 3, 'send', 8.23, 'usd', 0, 'kamal', 'iqnaz', 'completed', 'Fee payment', '2017-12-31 11:00:20', '2017-12-31 11:00:20'),
(3, 'dO9Vg4fCaEDhSHn', 4, 'send', 54.34, 'usd', 0, 'iqnaz', 'kamal', 'completed', 'repay loans', '2017-12-31 11:03:22', '2017-12-31 11:03:22'),
(4, 'nEh4iYoGNhd6N2K', 3, 'send', 55.9, 'usd', 0, 'kamal', 'iqnaz', 'completed', 'fees', '2017-12-31 17:03:54', '2017-12-31 17:03:54');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `email` varchar(191) NOT NULL,
  `password` varchar(191) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@gmail.com', '$2y$10$L1dXuHN.vUZpBxXlAUYCHOfc3yn5jrxvfFwH3GSbFGHvgeBiRJuPK', NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `clients_email_unique` (`email`);

--
-- Indexes for table `helps`
--
ALTER TABLE `helps`
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
-- AUTO_INCREMENT for table `accounts`
--
ALTER TABLE `accounts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `clients`
--
ALTER TABLE `clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `helps`
--
ALTER TABLE `helps`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
