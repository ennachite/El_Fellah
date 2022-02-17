-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 17, 2022 at 03:45 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.1

SET FOREIGN_KEY_CHECKS=0;
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fellah`
--
CREATE DATABASE IF NOT EXISTS `fellah` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `fellah`;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE IF NOT EXISTS `posts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `offer_name` varchar(64) NOT NULL,
  `description` text NOT NULL,
  `owner_name` varchar(32) NOT NULL,
  `phone` varchar(16) NOT NULL,
  `area` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `location` text NOT NULL,
  `creation_date` date NOT NULL DEFAULT current_timestamp(),
  `pic_url` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- RELATIONSHIPS FOR TABLE `posts`:
--

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `offer_name`, `description`, `owner_name`, `phone`, `area`, `price`, `location`, `creation_date`, `pic_url`) VALUES
(3, 'old land', 'xxxxxxxxxx', 'Soumya kaddouri', '+212 615129788', 1, 100000, 'Kenitra', '2022-02-15', NULL),
(4, 'New Land', 'ipuhpij', 'Saad Koukous', '+212615129788', 100, 100000, 'Ain Aouda', '2022-02-16', NULL),
(6, 'Ard mzyana', 'Ard fiha nkhel w tmer w rbi3', 'Simo Oublal', '+212789034565', 12, 100000, 'Laayoune', '2022-02-16', 'fellah/Ard mzyanaSimo Oublal.jpg');
SET FOREIGN_KEY_CHECKS=1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
