-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jun 27, 2020 at 01:04 PM
-- Server version: 5.7.23
-- PHP Version: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `talking_forum`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(70) NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `description`) VALUES
(1, 'Web Programming', 'Post quorum necem nihilo lenius ferociens Gallus ut leo cadaveribus pastus multa huius modi scrutabatur. quae singula narrare non refert, me professione modum, quod evitandum est, excedamus.'),
(2, 'web design ', 'Post quorum necem nihilo lenius ferociens Gallus ut leo cadaveribus pastus multa huius modi scrutabatur. quae singula narrare non refert, me professione modum, quod evitandum est, excedamus.');

-- --------------------------------------------------------

--
-- Table structure for table `replies`
--

DROP TABLE IF EXISTS `replies`;
CREATE TABLE IF NOT EXISTS `replies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `topic_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `body` text NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `replies`
--

INSERT INTO `replies` (`id`, `topic_id`, `user_id`, `body`, `create_date`) VALUES
(1, 1, 2, 'I\'m so suprised about this \r\n\r\n', '2020-06-14 02:39:58'),
(2, 4, 1, 'i can tell you that things isn\'t yet fixed', '2020-06-14 02:39:58'),
(3, 5, 4, '<p>GGGGGGGGG</p>', '2020-06-14 04:52:03');

-- --------------------------------------------------------

--
-- Table structure for table `topics`
--

DROP TABLE IF EXISTS `topics`;
CREATE TABLE IF NOT EXISTS `topics` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `body` text NOT NULL,
  `last_activity` datetime NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `topics`
--

INSERT INTO `topics` (`id`, `category_id`, `user_id`, `title`, `body`, `last_activity`, `create_date`) VALUES
(1, 1, 1, 'Favorite Server-side language ', 'what\'s your favorite server side language', '2020-06-09 00:00:00', '2020-06-14 00:40:19'),
(6, 2, 4, 'FLOW', '<p>DAZDAZD</p>', '2020-06-14 04:52:15', '2020-06-14 04:52:15'),
(7, 1, 6, 'php', '<p>WE CAN PROGRAMM</p>', '2020-06-27 12:19:35', '2020-06-27 12:19:35'),
(5, 2, 4, 'this is a test ', '<p><strong>dada<em>dadadadda</em></strong></p>', '2020-06-14 04:30:12', '2020-06-14 04:30:12'),
(4, 2, 2, 'How did you learn HTML and CSS', 'Post quorum necem nihilo lenius ferociens Gallus ut leo cadaveribus pastus multa huius modi scrutabatur. quae singula narrare non refert, me professione modum, quod evitandum est, excedamus.', '2020-06-23 00:00:00', '2020-06-14 00:40:22');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `avatar` varchar(100) NOT NULL,
  `username` varchar(10) NOT NULL,
  `password` varchar(64) NOT NULL,
  `about` text NOT NULL,
  `last_activity` datetime NOT NULL,
  `join_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `avatar`, `username`, `password`, `about`, `last_activity`, `join_date`) VALUES
(1, 'Tijani abdellatif', 'tijani.idrissi.abdellatif@gmail.com', 'avatar1.jpg', 'kratos', '123', 'i\'m a web developer', '2020-06-16 00:00:00', '2020-06-14 00:34:20'),
(2, 'John ', 'John@gmail.com', 'avatar2.jpg', 'JINO', '1234', 'i\'m a programmer', '2020-06-30 00:00:00', '2020-06-14 02:38:43'),
(3, 'Karim', 'karim@gmail.com', 'photo.jpg', 'flavaflave', '1cb64da6847b80cb1e0a76506dc05965', 'TEST', '2020-06-14 03:34:24', '2020-06-14 03:34:24'),
(4, 'abdellatif tijani', 'tijani@tijani.com', '67195746_2353669028293939_7338011084743245824_n.jpg', 'naruto', '1cb64da6847b80cb1e0a76506dc05965', 'me', '2020-06-14 03:53:57', '2020-06-14 03:53:57'),
(5, 'tatata', 'tata@gmail.com', 'js.png', 'kramou', '1cb64da6847b80cb1e0a76506dc05965', 'dddd', '2020-06-17 01:56:47', '2020-06-17 01:56:47'),
(6, 'abdellatif tijani', 'tijani.idrissi.abdellatif@gmail.com', 'strom.png', 'flex', '1cb64da6847b80cb1e0a76506dc05965', 'je suis un dev', '2020-06-27 12:18:41', '2020-06-27 12:18:41');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
