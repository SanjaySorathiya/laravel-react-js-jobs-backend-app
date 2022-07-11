-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jul 11, 2022 at 01:09 PM
-- Server version: 8.0.27
-- PHP Version: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `backend_laravel`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
CREATE TABLE IF NOT EXISTS `jobs` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `summary` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('open','in progress','completed','cancelled') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `property_id` int NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jobs`
--

INSERT INTO `jobs` (`id`, `summary`, `description`, `status`, `property_id`, `created_at`, `updated_at`) VALUES
(1, 'Est sint et officia.', 'Ipsum et assumenda ratione quisquam unde. Nesciunt nisi rem omnis. Ut sint quia ex quo. Accusamus consequatur similique distinctio deserunt eligendi quia dolorum iure. Quia et praesentium veritatis culpa velit. Iusto quos rerum est autem iure sit iusto. Ut asperiores sunt delectus fuga et quibusdam tempore.', 'open', 2, '2022-07-10 10:24:39', '2022-07-10 10:24:39'),
(2, 'Modi temporibus deleniti qui.', 'Alias modi perspiciatis dolorem dicta voluptatem est consectetur. Consequuntur aspernatur beatae illum quo. Molestias modi porro atque unde esse quibusdam. Optio consequatur quod tempore quasi. Magnam odit quibusdam vel sit autem in iusto. Eligendi nulla neque omnis sint id.', 'in progress', 4, '2022-07-10 10:24:39', '2022-07-10 16:45:20'),
(3, 'Veritatis laudantium sed dignissimos eaque alias id.', 'Alias et dolore ea aspernatur. Tempora eum id a et officiis voluptatem. Ut perferendis qui saepe et. Corporis consequatur eveniet excepturi.', 'completed', 9, '2022-07-10 10:24:39', '2022-07-10 16:45:29'),
(4, 'Cupiditate velit delectus id a et sunt expedita incidunt.', 'Molestiae quaerat laboriosam quasi. Vero et ipsam nobis vel consequatur distinctio omnis distinctio. Odit aliquam est repudiandae fugiat labore quas sed. Maxime culpa perspiciatis dolorum. Id dolor error fugiat quis. Est consequatur ut voluptas dolorem blanditiis architecto.', 'cancelled', 2, '2022-07-10 10:24:39', '2022-07-10 16:45:37'),
(5, 'Est iste exercitationem aperiam ea.', 'Corrupti in distinctio ipsum dolores. Quis cumque consequatur iure corporis. Exercitationem repudiandae quia deserunt eos ipsa. In officia explicabo eligendi.', 'open', 3, '2022-07-10 10:24:39', '2022-07-10 10:24:39'),
(6, 'Perferendis modi et pariatur unde fugit praesentium.', 'In ipsa sint similique qui eos ex optio. Distinctio rerum non et ad dolorum dolores. Reiciendis quia doloribus saepe possimus laboriosam et sint vel. Quaerat aut voluptatibus eius consectetur accusantium commodi eaque. Non pariatur aliquam consequatur voluptatem autem accusantium. Animi voluptatum accusamus occaecati velit et et.', 'open', 2, '2022-07-10 10:24:39', '2022-07-10 10:24:39'),
(7, 'Omnis assumenda sed minus consequatur explicabo.', 'Accusamus aut eveniet eius consequatur. Odio possimus dolor nostrum iure. Sequi fuga qui voluptate voluptatem qui. Nostrum excepturi est nam maiores quas earum. Illo doloribus repellendus consequatur reprehenderit repellat non repellendus. Sed dolor voluptatem quasi ut.', 'open', 4, '2022-07-10 10:24:39', '2022-07-10 10:24:39'),
(8, 'Non quod cumque repellendus.', 'Est voluptatum autem debitis et dolorum aperiam ab. Unde illo qui mollitia est necessitatibus neque quod. Dignissimos possimus quia sed. Enim aut et aut voluptatem. Corporis nam voluptate aut cum expedita dolorem. Officia veniam aspernatur qui voluptatem nam excepturi quo. Eos aut corporis aspernatur non dignissimos est.', 'open', 9, '2022-07-10 10:24:39', '2022-07-10 10:24:39'),
(9, 'Excepturi rerum nam perspiciatis pariatur qui temporibus.', 'Cum ullam eaque facere a. Iure molestias ut odio deserunt quia. Recusandae alias quae et sapiente doloremque. Consequuntur maxime et eos dolore libero sequi. Doloribus dolor quos voluptas quis quam nostrum aut. Cumque dolorum eveniet repellat. Deleniti veritatis ea repudiandae quae sed eveniet expedita.', 'open', 6, '2022-07-10 10:24:39', '2022-07-10 10:24:39'),
(10, 'Quos aut sed illum temporibus ut ut.', 'Sit sunt impedit dolorem nesciunt. Fugiat aliquam nobis provident eum facere. Aut incidunt aut illo corrupti quo. Est quaerat enim voluptatem incidunt natus magni sit. Esse ut atque consequuntur numquam quo laboriosam perspiciatis. Eveniet error quam qui veniam harum fuga ut reiciendis.', 'open', 1, '2022-07-10 10:24:39', '2022-07-10 10:24:39'),
(11, 'Api 1 Lorem ipsum dolor sit amet', 'A1 Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'open', 1, '2022-07-10 11:25:37', '2022-07-10 11:25:37');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2022_07_09_231001_create_jobs_table', 1),
(5, '2022_07_09_231024_create_properties_table', 1);

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
-- Table structure for table `properties`
--

DROP TABLE IF EXISTS `properties`;
CREATE TABLE IF NOT EXISTS `properties` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `properties`
--

INSERT INTO `properties` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Laborum ratione reprehenderit deserunt.', '2022-07-10 10:24:39', '2022-07-10 10:24:39'),
(2, 'Aut ratione dolores incidunt quis aperiam.', '2022-07-10 10:24:39', '2022-07-10 10:24:39'),
(3, 'Magnam totam qui qui alias quia ullam.', '2022-07-10 10:24:39', '2022-07-10 10:24:39'),
(4, 'Rerum quis et voluptates reprehenderit.', '2022-07-10 10:24:39', '2022-07-10 10:24:39'),
(5, 'Aut molestiae fuga vel aut.', '2022-07-10 10:24:39', '2022-07-10 10:24:39'),
(6, 'Quia aut aperiam sed aspernatur beatae odit.', '2022-07-10 10:24:39', '2022-07-10 10:24:39'),
(7, 'At voluptas enim nisi laboriosam fugit voluptatum odio pariatur.', '2022-07-10 10:24:39', '2022-07-10 10:24:39'),
(8, 'Tempore qui enim facere vitae.', '2022-07-10 10:24:39', '2022-07-10 10:24:39'),
(9, 'Officia omnis eos quidem voluptatum qui molestiae officiis.', '2022-07-10 10:24:39', '2022-07-10 10:24:39'),
(10, 'Voluptas pariatur dolores ea nisi est eligendi similique.', '2022-07-10 10:24:39', '2022-07-10 10:24:39');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Mr. Trace Quigley', 'effertz.gudrun@example.net', '2022-07-10 10:24:39', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '478KvNwV1N', '2022-07-10 10:24:39', '2022-07-10 10:24:39'),
(2, 'Chelsey Schinner', 'alphonso68@example.com', '2022-07-10 10:24:39', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ZhoVmHfpiG', '2022-07-10 10:24:39', '2022-07-10 10:24:39'),
(3, 'Dr. Cruz Mann', 'ricky.christiansen@example.com', '2022-07-10 10:24:39', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Xl4eHsgq1C', '2022-07-10 10:24:39', '2022-07-10 10:24:39'),
(4, 'Prof. Maxwell Jenkins Sr.', 'kkulas@example.net', '2022-07-10 10:24:39', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '9vUkIqQBhD', '2022-07-10 10:24:39', '2022-07-10 10:24:39'),
(5, 'Carroll Schmeler', 'vonrueden.norwood@example.org', '2022-07-10 10:24:39', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'qY4HHrzQjR', '2022-07-10 10:24:39', '2022-07-10 10:24:39'),
(6, 'Melisa Bashirian', 'xwill@example.org', '2022-07-10 10:24:39', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ojCkA4TFCt', '2022-07-10 10:24:39', '2022-07-10 10:24:39'),
(7, 'Miss Fannie Rogahn', 'satterfield.vesta@example.com', '2022-07-10 10:24:39', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '7xgt7SnZI7', '2022-07-10 10:24:39', '2022-07-10 10:24:39'),
(8, 'Ilene Gislason', 'rkilback@example.org', '2022-07-10 10:24:39', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'prxQtTX0nQ', '2022-07-10 10:24:39', '2022-07-10 10:24:39'),
(9, 'Lawson Gislason Jr.', 'nicola16@example.org', '2022-07-10 10:24:39', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '5OKzQTTEXr', '2022-07-10 10:24:39', '2022-07-10 10:24:39'),
(10, 'Cory Mertz', 'wolff.myrl@example.net', '2022-07-10 10:24:39', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'K6xJbc8dH5', '2022-07-10 10:24:39', '2022-07-10 10:24:39');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
