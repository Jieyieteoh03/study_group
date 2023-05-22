-- Adminer 4.8.0 MySQL 5.5.5-10.5.17-MariaDB-1:10.5.17+maria~ubu2004 dump

SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

SET NAMES utf8mb4;

DROP TABLE IF EXISTS `contact_form`;
CREATE TABLE `contact_form` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `email` varchar(100) NOT NULL,
  `message` text NOT NULL,
  `added_on` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `contact_form` (`id`, `name`, `email`, `message`, `added_on`) VALUES
(1,	'Teoh',	'jieyiet2003@gmail.com',	'qwertyuiop',	'2023-05-22 06:14:53'),
(2,	'Teoh',	'pugcuteness13@gmail.com',	'11234567890',	'2023-05-22 06:24:43'),
(3,	'Teoh',	'pugcuteness13@gmail.com',	'1234567890',	'2023-05-22 06:26:02'),
(4,	'Teoh',	'jieyiet2003@gmail.com',	'1234567890',	'2023-05-22 06:26:55');

-- 2023-05-22 06:32:59
