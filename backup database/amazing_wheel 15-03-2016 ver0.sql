-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 15, 2016 at 06:54 AM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `amazing_wheel`
--

-- --------------------------------------------------------

--
-- Table structure for table `levels`
--

CREATE TABLE IF NOT EXISTS `levels` (
  `_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `level` int(11) NOT NULL,
  `current_exp` int(11) NOT NULL,
  `max_exp_to_next_level` int(11) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4 ;

--
-- Dumping data for table `levels`
--

INSERT INTO `levels` (`_id`, `level`, `current_exp`, `max_exp_to_next_level`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, 0, 100, NULL, '2016-03-13 23:42:49', '2016-03-13 23:42:49'),
(2, 2, 101, 250, NULL, '2016-03-13 23:42:49', '2016-03-13 23:42:49'),
(3, 2, 251, 450, NULL, '2016-03-13 23:42:49', '2016-03-13 23:42:49');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE IF NOT EXISTS `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2014_09_15_163208_create_users_table', 1),
('2014_09_15_164006_create_tokens_table', 1),
('2014_10_03_180144_create_reset_keys_table', 1),
('2014_10_14_163208_create_levels_table', 1),
('2014_11_11_113836_create_relation_foreignkeys', 1);

-- --------------------------------------------------------

--
-- Table structure for table `reset_keys`
--

CREATE TABLE IF NOT EXISTS `reset_keys` (
  `_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `expiration_date` datetime NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`_id`),
  KEY `reset_keys_user_id_index` (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=18 ;

--
-- Dumping data for table `reset_keys`
--

INSERT INTO `reset_keys` (`_id`, `user_id`, `key`, `expiration_date`, `created_at`, `updated_at`) VALUES
(1, 3, 'cloxQ2RsMVVRMHFnM0luQ3VTSzdBPT0=', '2016-03-15 04:14:09', '2016-03-14 09:14:09', '2016-03-14 09:14:09'),
(2, 3, 'NTkwMkpQTTZyVzRBSFR0RTZjNms1QT09', '2016-03-15 04:15:34', '2016-03-14 09:15:34', '2016-03-14 09:15:34'),
(3, 3, 'NTVRMU44RElZZGhOTnk2TkxtT2d3PT0=', '2016-03-15 04:15:35', '2016-03-14 09:15:35', '2016-03-14 09:15:35'),
(4, 3, 'VDRBdklTTWJ4cEpTaGd0OE10ZFBnPT0=', '2016-03-15 04:25:19', '2016-03-14 09:25:19', '2016-03-14 09:25:19'),
(5, 3, 'aE9ZRDZhOVcyaklyMkI5b3J2c0l1dz09', '2016-03-15 13:41:59', '2016-03-14 18:41:59', '2016-03-14 18:41:59'),
(6, 3, 'bFZpNVJlYWZZVXRGM1RhS3I4WFV3PT0=', '2016-03-15 14:00:57', '2016-03-14 19:00:57', '2016-03-14 19:00:57'),
(7, 3, 'SHY0UWJ4c2xRR1V4WUpOYUJpdz09', '2016-03-15 14:03:24', '2016-03-14 19:03:24', '2016-03-14 19:03:24'),
(8, 3, 'Y1lJTWJuRWpTNTBNdFZDMXRsbTdRPT0=', '2016-03-15 14:03:44', '2016-03-14 19:03:44', '2016-03-14 19:03:44'),
(9, 3, 'bkVTZ0NDRmU1UEJNUVVnUmNjNVB6dz09', '2016-03-15 14:08:14', '2016-03-14 19:08:14', '2016-03-14 19:08:14'),
(10, 3, 'T2ZDa2NxV3IwM1dLOFNOQjUzVnVRPT0=', '2016-03-15 14:09:03', '2016-03-14 19:09:03', '2016-03-14 19:09:03'),
(11, 3, 'MzVSSWhMUnhKS0NUcm9XcnJTTVN3PT0=', '2016-03-15 14:12:36', '2016-03-14 19:12:36', '2016-03-14 19:12:36'),
(12, 3, 'UUlRbDVqSDZ5bHp6Z2VjQldoM3Z3PT0=', '2016-03-15 14:12:39', '2016-03-14 19:12:39', '2016-03-14 19:12:39'),
(13, 3, 'QVdsUndRd1UzMjVhR3poaUFRdEt3PT0=', '2016-03-15 14:12:59', '2016-03-14 19:12:59', '2016-03-14 19:12:59'),
(14, 3, 'blZVWlBwTjMwd2c3NjkzSkRJVXlFZz09', '2016-03-15 14:13:00', '2016-03-14 19:13:00', '2016-03-14 19:13:00'),
(15, 3, 'OXJYenJWR2ZBclZHVDlseXBrem4xQT09', '2016-03-15 14:13:40', '2016-03-14 19:13:40', '2016-03-14 19:13:40'),
(16, 1, 'SXN1d0o3Wno0THd6b2N0ZEtVRjZSZz09', '2016-03-15 14:14:03', '2016-03-14 19:14:03', '2016-03-14 19:14:03');

-- --------------------------------------------------------

--
-- Table structure for table `tokens`
--

CREATE TABLE IF NOT EXISTS `tokens` (
  `_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `device_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `device_os` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `device_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`_id`),
  KEY `tokens_user_id_index` (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=11 ;

--
-- Dumping data for table `tokens`
--

INSERT INTO `tokens` (`_id`, `user_id`, `key`, `device_id`, `device_os`, `device_token`, `created_at`, `updated_at`) VALUES
(7, 11, 'akM5TGNSNTIwOGJvTUNLMkpFWjIzOVVMclJnQlBVVkVTRG1JQUNJPQ==', '123456', 'IOS', '', '2016-03-14 21:25:58', '2016-03-14 21:25:58');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `facebook_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `stars_number` int(11) DEFAULT NULL,
  `number_of_free_roll` int(11) DEFAULT '1',
  `level_id` int(10) unsigned NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`_id`),
  KEY `users_level_id_index` (`level_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=12 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`_id`, `email`, `name`, `password`, `facebook_id`, `phone_number`, `stars_number`, `number_of_free_roll`, `level_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'vuquangson1610@gmail.com', 'quang son', '$2y$10$05PFShgW1pPx6w/jOYO25ucpGiYQ4Qxhu3e1qmg11c3Jo3mHR0cZ.', NULL, '0982413281', 500, 1, 1, NULL, '2016-03-13 23:42:49', '2016-03-13 23:42:49'),
(2, 'phuocdh53@gmail.com', 'phuoc doan', '$2y$10$05PFShgW1pPx6w/jOYO25ucpGiYQ4Qxhu3e1qmg11c3Jo3mHR0cZ.', NULL, '0982411234', 1500, 2, 2, NULL, '2016-03-13 23:42:49', '2016-03-13 23:42:49'),
(3, 'quypham@gmail.com', 'pham van quy', '$2y$10$EFpvfjFQNgHbw0.no7D55uj/W2MRquWg4tLUfM4CGx8muxvO9QkC6', NULL, '0912460337', NULL, 1, 1, NULL, '2016-03-13 23:42:55', '2016-03-14 21:38:51'),
(4, 'quypham123@gmail.com', 'pham van quy', '$2y$10$sG4Lw7QrO0YwXpScHqniw.oqt73pA3MsftSKuTKi.iP1q4XVslTsy', NULL, '0912460337', NULL, 1, 1, NULL, '2016-03-14 20:54:06', '2016-03-14 20:54:06'),
(5, 'quypham1234@gmail.com', 'pham van quy', '$2y$10$puWHH/W7Du9wvMprsVzt2uOrIIRA2HILHGXtnXRfUPE6bqrMJTkZW', NULL, '0912460337', NULL, 1, 1, NULL, '2016-03-14 20:55:12', '2016-03-14 20:55:12'),
(6, 'quypham12334@gmail.com', 'pham van quy', '$2y$10$q0DOgpjnXBp5MDrd9THS6OXDe3oDD0fJMddWO2InNm5Kc/6wL4oca', NULL, '0912460337', NULL, 1, 1, NULL, '2016-03-14 20:56:20', '2016-03-14 20:56:20'),
(11, 'langtutuoiteen5011@yahoo.com', 'Sơn Quang Vũ', '$2y$10$VbqaStMPiM4VJ2Pt6BO57.F5RGeoaIYbmdYWo1TxZlMM2rNVJYbUu', '760838853939850', NULL, NULL, 1, 1, NULL, '2016-03-14 21:25:58', '2016-03-14 21:25:58');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `reset_keys`
--
ALTER TABLE `reset_keys`
  ADD CONSTRAINT `reset_keys_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`_id`) ON DELETE CASCADE;

--
-- Constraints for table `tokens`
--
ALTER TABLE `tokens`
  ADD CONSTRAINT `tokens_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`_id`) ON DELETE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_level_id_foreign` FOREIGN KEY (`level_id`) REFERENCES `levels` (`_id`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
