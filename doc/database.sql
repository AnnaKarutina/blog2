-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 01, 2019 at 11:41 AM
-- Server version: 5.6.41
-- PHP Version: 7.2.7

SET FOREIGN_KEY_CHECKS=0;
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";

--
-- Database: `anna_blog`
--
CREATE DATABASE IF NOT EXISTS `anna_blog` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `anna_blog`;

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

DROP TABLE IF EXISTS `post`;
CREATE TABLE IF NOT EXISTS `post` (
  `post_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `post_subject` varchar(255) NOT NULL,
  `post_text` text NOT NULL,
  `post_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `user_id` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`post_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`post_id`, `post_subject`, `post_text`, `post_created`, `user_id`) VALUES
  (1, 'Minu esimene postitus', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '2019-02-01 09:06:09', 1);

-- --------------------------------------------------------

--
-- Table structure for table `translations`
--

DROP TABLE IF EXISTS `translations`;
CREATE TABLE IF NOT EXISTS `translations` (
  `translation_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `phrase` varchar(191) NOT NULL,
  `language` char(3) NOT NULL,
  `translation` varchar(191) DEFAULT NULL,
  `controller` varchar(15) NOT NULL,
  `action` varchar(20) NOT NULL,
  PRIMARY KEY (`translation_id`),
  UNIQUE KEY `language_phrase_controller_action_index` (`language`,`phrase`,`controller`,`action`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `translations`
--

INSERT INTO `translations` (`translation_id`, `phrase`, `language`, `translation`, `controller`, `action`) VALUES
  (1, 'Action', 'en', '{untranslated}', 'welcome', 'index'),
  (2, 'Server returned response in an unexpected format', 'en', '{untranslated}', 'global', 'global'),
  (3, 'Forbidden', 'en', '{untranslated}', 'global', 'global'),
  (4, 'Server returned an error', 'en', '{untranslated}', 'global', 'global'),
  (5, 'Action', 'en', '{untranslated}', 'halo', 'index'),
  (6, 'Logout', 'en', '{untranslated}', 'global', 'global'),
  (7, 'Settings', 'en', '{untranslated}', 'global', 'global'),
  (8, 'Logged in as', 'en', '{untranslated}', 'global', 'global'),
  (9, 'Log out', 'en', '{untranslated}', 'global', 'global'),
  (10, 'Action', 'et', '{untranslated}', 'welcome', 'index'),
  (11, 'Log out', 'et', '{untranslated}', 'global', 'global'),
  (12, 'Server returned response in an unexpected format', 'et', '{untranslated}', 'global', 'global'),
  (13, 'Forbidden', 'et', '{untranslated}', 'global', 'global'),
  (14, 'Server returned an error', 'et', '{untranslated}', 'global', 'global'),
  (15, 'Please sign in', 'et', '{untranslated}', 'global', 'global'),
  (16, 'Email', 'et', '{untranslated}', 'global', 'global'),
  (17, 'Password', 'et', '{untranslated}', 'global', 'global'),
  (18, 'Sign in', 'et', '{untranslated}', 'global', 'global'),
  (19, 'Please sign in', 'en', '{untranslated}', 'global', 'global'),
  (20, 'Email', 'en', '{untranslated}', 'global', 'global'),
  (21, 'Password', 'en', '{untranslated}', 'global', 'global'),
  (22, 'Sign in', 'en', '{untranslated}', 'global', 'global'),
  (23, 'Wrong username or password', 'en', '{untranslated}', 'global', 'global'),
  (24, 'Oops...', 'en', '{untranslated}', 'global', 'global'),
  (25, 'Close', 'en', '{untranslated}', 'global', 'global'),
  (26, 'Server returned an error. Please try again later ', 'en', '{untranslated}', 'global', 'global'),
  (27, 'Action', 'en', '{untranslated}', 'global', 'global'),
  (28, 'Action', 'et', '{untranslated}', 'global', 'global'),
  (29, 'Oops...', 'et', '{untranslated}', 'global', 'global'),
  (30, 'Close', 'et', '{untranslated}', 'global', 'global'),
  (31, 'Server returned an error. Please try again later ', 'et', '{untranslated}', 'global', 'global');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `user_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `is_admin` tinyint(4) NOT NULL DEFAULT '0',
  `password` varchar(191) NOT NULL,
  `email` varchar(191) NOT NULL,
  `deleted` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `name` varchar(191) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `is_admin`, `password`, `email`, `deleted`, `name`) VALUES
  (1, 1, '$2y$10$vTje.ndUFKHyuotY99iYkO.2aHJUgOsy2x0RMXP1UmrTe6CQsKbtm', 'demo@example.com', 0, 'Demo User');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `post`
--
ALTER TABLE `post`
  ADD CONSTRAINT `post_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);
SET FOREIGN_KEY_CHECKS=1;
COMMIT;
