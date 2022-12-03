-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 02, 2022 at 07:52 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `task`
--

-- --------------------------------------------------------

--
-- Table structure for table `bookings`
--

CREATE TABLE `bookings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `seat_id` bigint(20) UNSIGNED NOT NULL,
  `from_stop_id` bigint(20) UNSIGNED NOT NULL,
  `to_stop_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bookings`
--

INSERT INTO `bookings` (`id`, `user_id`, `seat_id`, `from_stop_id`, `to_stop_id`, `created_at`, `updated_at`) VALUES
(1, 1, 2, 1, 3, '2022-12-02 14:33:38', '2022-12-02 14:33:38'),
(2, 2, 1, 1, 4, '2022-12-02 15:07:34', '2022-12-02 15:07:34');

-- --------------------------------------------------------

--
-- Table structure for table `buses`
--

CREATE TABLE `buses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `buses`
--

INSERT INTO `buses` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Bus Cairo-Asyut', '2022-12-02 14:18:13', '2022-12-02 14:18:13'),
(2, 'Bus  Alminia-Asyut', '2022-12-02 14:18:13', '2022-12-02 14:18:13');

-- --------------------------------------------------------

--
-- Table structure for table `bus_seats`
--

CREATE TABLE `bus_seats` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `bus_id` bigint(20) UNSIGNED NOT NULL,
  `seat_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bus_seats`
--

INSERT INTO `bus_seats` (`id`, `bus_id`, `seat_number`, `created_at`, `updated_at`) VALUES
(1, 1, 'A-1', '2022-12-02 14:18:14', '2022-12-02 14:18:14'),
(2, 1, 'A-2', '2022-12-02 14:18:14', '2022-12-02 14:18:14'),
(3, 1, 'A-3', '2022-12-02 14:18:14', '2022-12-02 14:18:14'),
(4, 1, 'A-4', '2022-12-02 14:18:14', '2022-12-02 14:18:14'),
(5, 1, 'A-5', '2022-12-02 14:18:14', '2022-12-02 14:18:14'),
(6, 1, 'A-6', '2022-12-02 14:18:14', '2022-12-02 14:18:14'),
(7, 1, 'A-7', '2022-12-02 14:18:14', '2022-12-02 14:18:14'),
(8, 1, 'A-8', '2022-12-02 14:18:14', '2022-12-02 14:18:14'),
(9, 1, 'A-9', '2022-12-02 14:18:14', '2022-12-02 14:18:14'),
(11, 1, 'A-11', '2022-12-02 14:18:14', '2022-12-02 14:18:14'),
(12, 1, 'A-12', '2022-12-02 14:18:14', '2022-12-02 14:18:14'),
(13, 2, 'B-1', '2022-12-02 14:18:14', '2022-12-02 14:18:14'),
(14, 2, 'B-2', '2022-12-02 14:18:14', '2022-12-02 14:18:14'),
(15, 2, 'B-3', '2022-12-02 14:18:15', '2022-12-02 14:18:15'),
(16, 2, 'B-4', '2022-12-02 14:18:15', '2022-12-02 14:18:15'),
(17, 2, 'B-5', '2022-12-02 14:18:15', '2022-12-02 14:18:15'),
(18, 2, 'B-6', '2022-12-02 14:18:15', '2022-12-02 14:18:15'),
(19, 2, 'B-7', '2022-12-02 14:18:15', '2022-12-02 14:18:15'),
(20, 2, 'B-8', '2022-12-02 14:18:15', '2022-12-02 14:18:15'),
(21, 2, 'B-9', '2022-12-02 14:18:15', '2022-12-02 14:18:15'),
(22, 2, 'B-11', '2022-12-02 14:18:15', '2022-12-02 14:18:15'),
(23, 2, 'B-12', '2022-12-02 14:18:15', '2022-12-02 14:18:15'),
(24, 2, 'B-12', '2022-12-02 14:18:15', '2022-12-02 14:18:15');

-- --------------------------------------------------------

--
-- Table structure for table `bus_stops`
--

CREATE TABLE `bus_stops` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `bus_id` bigint(20) UNSIGNED NOT NULL,
  `stop_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bus_stops`
--

INSERT INTO `bus_stops` (`id`, `bus_id`, `stop_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2022-12-02 14:18:13', '2022-12-02 14:18:13'),
(2, 1, 2, '2022-12-02 14:18:13', '2022-12-02 14:18:13'),
(3, 1, 3, '2022-12-02 14:18:13', '2022-12-02 14:18:13'),
(4, 1, 4, '2022-12-02 14:18:14', '2022-12-02 14:18:14'),
(5, 2, 3, '2022-12-02 14:18:14', '2022-12-02 14:18:14'),
(6, 2, 4, '2022-12-02 14:18:14', '2022-12-02 14:18:14');

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_12_02_171638_create_buses_table', 1),
(6, '2022_12_02_171704_create_stops_table', 1),
(7, '2022_12_02_175532_create_bus_seats_table', 1),
(8, '2022_12_02_175532_create_bus_stops_table', 1),
(9, '2022_12_02_175539_create_bookings_table', 2);

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
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 1, 'apiToken', '02dd34bfbb3bd5f502ac14f6e6e0691a4a885053e17caf75dcf0e293ddc39ac5', '[\"*\"]', '2022-12-02 15:23:03', NULL, '2022-12-02 14:25:55', '2022-12-02 15:23:03');

-- --------------------------------------------------------

--
-- Table structure for table `stops`
--

CREATE TABLE `stops` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `stops`
--

INSERT INTO `stops` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Cairo', '2022-12-02 14:18:13', '2022-12-02 14:18:13'),
(2, 'AlFayyum', '2022-12-02 14:18:13', '2022-12-02 14:18:13'),
(3, 'AlMinya', '2022-12-02 14:18:13', '2022-12-02 14:18:13'),
(4, 'Asyut', '2022-12-02 14:18:13', '2022-12-02 14:18:13');

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
(1, 'admin', 'admin@admin.com', '2022-12-02 14:18:13', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Whxm5wLDNn', '2022-12-02 14:18:13', '2022-12-02 14:18:13'),
(2, 'Marvin Schiller', 'liliane.homenick@example.org', '2022-12-02 15:07:33', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'jToa3ag5Hc', '2022-12-02 15:07:33', '2022-12-02 15:07:33'),
(3, 'Eldon Kerluke', 'shagenes@example.org', '2022-12-02 15:12:56', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'N8mAFm8fEw', '2022-12-02 15:12:56', '2022-12-02 15:12:56'),
(4, 'Angelita Watsica', 'humberto81@example.org', '2022-12-02 15:13:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'vxxhZFisGL', '2022-12-02 15:13:26', '2022-12-02 15:13:26'),
(5, 'Manuela Swift', 'jpaucek@example.net', '2022-12-02 15:13:48', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'DKsE8iIzmy', '2022-12-02 15:13:48', '2022-12-02 15:13:48'),
(6, 'Jacynthe Hane', 'yrice@example.com', '2022-12-02 15:18:48', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '9uXJtrJoR2', '2022-12-02 15:18:48', '2022-12-02 15:18:48'),
(7, 'Clare Eichmann', 'sawayn.monte@example.org', '2022-12-02 15:18:48', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'rIXLgSgi35', '2022-12-02 15:18:48', '2022-12-02 15:18:48'),
(8, 'Kennedy Waelchi II', 'will.sister@example.org', '2022-12-02 15:19:20', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'd2cFrYW4Ai', '2022-12-02 15:19:20', '2022-12-02 15:19:20'),
(9, 'Dr. Amya Jenkins Jr.', 'lkilback@example.net', '2022-12-02 15:19:20', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'sptIyh19aF', '2022-12-02 15:19:20', '2022-12-02 15:19:20'),
(10, 'Dr. Bennie Stiedemann II', 'adams.leone@example.com', '2022-12-02 15:19:33', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'myUdN2Miws', '2022-12-02 15:19:33', '2022-12-02 15:19:33'),
(11, 'Prof. Marquis Zboncak MD', 'nkiehn@example.net', '2022-12-02 15:19:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'UzfrRx1KUA', '2022-12-02 15:19:34', '2022-12-02 15:19:34'),
(12, 'Jules Hessel', 'vandervort.fabiola@example.com', '2022-12-02 15:19:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'LaqRQrFIPf', '2022-12-02 15:19:51', '2022-12-02 15:19:51'),
(13, 'Winnifred Howell', 'ratke.juana@example.net', '2022-12-02 15:19:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'lgaWLtoGGV', '2022-12-02 15:19:51', '2022-12-02 15:19:51'),
(14, 'Javonte Prohaska', 'earl.flatley@example.com', '2022-12-02 15:20:37', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'q9CHbHqlbF', '2022-12-02 15:20:37', '2022-12-02 15:20:37'),
(15, 'Justina Waters', 'slang@example.com', '2022-12-02 15:20:38', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'bhatEa22ii', '2022-12-02 15:20:38', '2022-12-02 15:20:38'),
(16, 'Mollie Bogan', 'stanton.keely@example.com', '2022-12-02 15:20:57', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'c77arftppO', '2022-12-02 15:20:57', '2022-12-02 15:20:57'),
(17, 'Dr. Steve Ratke', 'gschmidt@example.org', '2022-12-02 15:20:57', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'c7PupRMVNw', '2022-12-02 15:20:57', '2022-12-02 15:20:57'),
(18, 'Garfield Heller', 'rmaggio@example.org', '2022-12-02 15:21:18', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'mZhCbshdva', '2022-12-02 15:21:18', '2022-12-02 15:21:18'),
(19, 'Kitty Haley', 'ejast@example.net', '2022-12-02 15:21:18', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'RIh5vqL3tq', '2022-12-02 15:21:18', '2022-12-02 15:21:18'),
(20, 'Gertrude Goyette', 'miller.franco@example.net', '2022-12-02 15:34:12', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'tKpuPGo8HY', '2022-12-02 15:34:12', '2022-12-02 15:34:12'),
(21, 'Mr. Lindsey Carter', 'matilda10@example.org', '2022-12-02 15:34:12', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'C8MsoXnBIE', '2022-12-02 15:34:12', '2022-12-02 15:34:12'),
(22, 'Mrs. Brenna Wisoky', 'sswaniawski@example.com', '2022-12-02 15:35:00', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'nSR2tqdjq7', '2022-12-02 15:35:00', '2022-12-02 15:35:00'),
(23, 'Dudley Champlin', 'weber.macie@example.net', '2022-12-02 15:35:00', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'WvTi6TvLs5', '2022-12-02 15:35:00', '2022-12-02 15:35:00'),
(24, 'Ms. Maximillia Rosenbaum', 'kessler.arden@example.org', '2022-12-02 15:36:22', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '00OI6C6GJk', '2022-12-02 15:36:22', '2022-12-02 15:36:22'),
(25, 'Mrs. Marguerite Daniel V', 'elesch@example.net', '2022-12-02 15:36:22', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'm23aVhVTBH', '2022-12-02 15:36:22', '2022-12-02 15:36:22'),
(26, 'Kailee Kunde', 'maximilian33@example.org', '2022-12-02 15:36:36', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ZEuY3lK80u', '2022-12-02 15:36:36', '2022-12-02 15:36:36'),
(27, 'Dr. Emilie Lind', 'langosh.giovanna@example.net', '2022-12-02 15:36:37', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'GgtJFYjL0A', '2022-12-02 15:36:37', '2022-12-02 15:36:37'),
(28, 'Paul Feeney Sr.', 'labadie.karson@example.net', '2022-12-02 15:37:07', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'wWzPLd1Tlm', '2022-12-02 15:37:07', '2022-12-02 15:37:07'),
(29, 'Makenna Armstrong', 'efren.pagac@example.net', '2022-12-02 15:37:08', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'NROvLct9Ew', '2022-12-02 15:37:08', '2022-12-02 15:37:08'),
(30, 'Gaston Kulas', 'cordell.swaniawski@example.com', '2022-12-02 15:48:37', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'RdleO02u7P', '2022-12-02 15:48:37', '2022-12-02 15:48:37'),
(31, 'Violet Marks', 'vebert@example.net', '2022-12-02 15:48:37', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Dp2n5rNrwn', '2022-12-02 15:48:37', '2022-12-02 15:48:37'),
(32, 'Shanel Greenholt PhD', 'mclaughlin.novella@example.net', '2022-12-02 15:49:10', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'KkHvolSCzY', '2022-12-02 15:49:10', '2022-12-02 15:49:10'),
(33, 'Lauren McClure', 'lempi.barrows@example.net', '2022-12-02 15:49:10', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'QXHZvVc2KV', '2022-12-02 15:49:10', '2022-12-02 15:49:10'),
(34, 'Cale Grady MD', 'qkonopelski@example.net', '2022-12-02 15:49:37', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'HHg1PNsQlb', '2022-12-02 15:49:37', '2022-12-02 15:49:37'),
(35, 'Mr. Eldred Hayes', 'arlo19@example.net', '2022-12-02 15:49:37', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'hrhuLuvEI5', '2022-12-02 15:49:37', '2022-12-02 15:49:37'),
(36, 'Maye Funk', 'hillary70@example.com', '2022-12-02 15:53:45', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'mg7OgnsaKk', '2022-12-02 15:53:45', '2022-12-02 15:53:45'),
(37, 'Stefan Kuvalis', 'arutherford@example.net', '2022-12-02 15:53:45', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'llqhVfeAkv', '2022-12-02 15:53:45', '2022-12-02 15:53:45'),
(38, 'Green Rowe', 'wolff.gwen@example.net', '2022-12-02 15:54:49', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'pjr09YXi5l', '2022-12-02 15:54:49', '2022-12-02 15:54:49'),
(39, 'Miss Dolores Price V', 'annabell46@example.org', '2022-12-02 15:54:49', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'usdg1gVqKE', '2022-12-02 15:54:49', '2022-12-02 15:54:49'),
(40, 'Eino Haag', 'roxane.spinka@example.com', '2022-12-02 15:55:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '4BAUnZ8BuK', '2022-12-02 15:55:03', '2022-12-02 15:55:03'),
(41, 'Clinton Cruickshank', 'ohara.deion@example.net', '2022-12-02 15:55:52', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Dw8eOni2P6', '2022-12-02 15:55:52', '2022-12-02 15:55:52'),
(42, 'Mckenzie Hahn', 'ruthe.leannon@example.org', '2022-12-02 15:55:52', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ZalvJGGo3I', '2022-12-02 15:55:52', '2022-12-02 15:55:52'),
(43, 'Prof. Ezequiel Boyle', 'ettie25@example.org', '2022-12-02 15:56:21', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'a3gSxuNaoF', '2022-12-02 15:56:21', '2022-12-02 15:56:21'),
(44, 'Jameson Purdy II', 'ratke.maximilian@example.org', '2022-12-02 15:56:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '1MsIUFKXHV', '2022-12-02 15:56:58', '2022-12-02 15:56:58'),
(45, 'Gaylord Sporer', 'pstiedemann@example.net', '2022-12-02 15:57:20', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '9TFJaYc1xe', '2022-12-02 15:57:20', '2022-12-02 15:57:20'),
(46, 'Dr. Rebecca Renner', 'lucius50@example.com', '2022-12-02 15:57:20', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'vjuJyGknlv', '2022-12-02 15:57:20', '2022-12-02 15:57:20'),
(47, 'Prof. June Bins', 'margaret.conn@example.org', '2022-12-02 16:17:44', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'g7BRrPlaG1', '2022-12-02 16:17:45', '2022-12-02 16:17:45'),
(48, 'Miracle Treutel', 'ward.jared@example.org', '2022-12-02 16:17:45', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'vnN7Cc6b9b', '2022-12-02 16:17:45', '2022-12-02 16:17:45');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bookings`
--
ALTER TABLE `bookings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bookings_user_id_foreign` (`user_id`),
  ADD KEY `bookings_seat_id_foreign` (`seat_id`),
  ADD KEY `bookings_from_stop_id_foreign` (`from_stop_id`),
  ADD KEY `bookings_to_stop_id_foreign` (`to_stop_id`);

--
-- Indexes for table `buses`
--
ALTER TABLE `buses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bus_seats`
--
ALTER TABLE `bus_seats`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bus_seats_bus_id_foreign` (`bus_id`);

--
-- Indexes for table `bus_stops`
--
ALTER TABLE `bus_stops`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bus_stops_bus_id_foreign` (`bus_id`),
  ADD KEY `bus_stops_stop_id_foreign` (`stop_id`);

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
-- Indexes for table `stops`
--
ALTER TABLE `stops`
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
-- AUTO_INCREMENT for table `bookings`
--
ALTER TABLE `bookings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `buses`
--
ALTER TABLE `buses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `bus_seats`
--
ALTER TABLE `bus_seats`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `bus_stops`
--
ALTER TABLE `bus_stops`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `stops`
--
ALTER TABLE `stops`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bookings`
--
ALTER TABLE `bookings`
  ADD CONSTRAINT `bookings_from_stop_id_foreign` FOREIGN KEY (`from_stop_id`) REFERENCES `stops` (`id`),
  ADD CONSTRAINT `bookings_seat_id_foreign` FOREIGN KEY (`seat_id`) REFERENCES `bus_seats` (`id`),
  ADD CONSTRAINT `bookings_to_stop_id_foreign` FOREIGN KEY (`to_stop_id`) REFERENCES `stops` (`id`),
  ADD CONSTRAINT `bookings_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `bus_seats`
--
ALTER TABLE `bus_seats`
  ADD CONSTRAINT `bus_seats_bus_id_foreign` FOREIGN KEY (`bus_id`) REFERENCES `buses` (`id`);

--
-- Constraints for table `bus_stops`
--
ALTER TABLE `bus_stops`
  ADD CONSTRAINT `bus_stops_bus_id_foreign` FOREIGN KEY (`bus_id`) REFERENCES `buses` (`id`),
  ADD CONSTRAINT `bus_stops_stop_id_foreign` FOREIGN KEY (`stop_id`) REFERENCES `stops` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
