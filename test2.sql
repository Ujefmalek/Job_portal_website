-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 31, 2022 at 08:33 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.3.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `test2`
--

DELIMITER $$
--
-- Procedures
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `add_job_provider` (IN `ema` VARCHAR(30))  BEGIN
INSERT INTO `users`(`email`, `password`, `name`) SELECT `email`,`password`,`name` FROM jp_users WHERE `jp_users`.`email`=ema;
UPDATE `users` SET `user_type`=1 WHERE `users`.`email`=ema;
END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `candidates`
--

CREATE TABLE `candidates` (
  `job_id` int(10) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `resume` mediumblob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `candidates`
--

INSERT INTO `candidates` (`job_id`, `name`, `email`, `resume`) VALUES
(3, 'ujef mohammad malek', 'ujefmalek50@gmail.com', 0x456e676c697368322e706466),
(4, 'malek', 'ujefmalek49@gmail.com', 0x456e676c697368312e706466),
(4, 'anis vahora', 'abcd@gmail.com', 0x313943503031335f33435034325f4c41422d312e646f6378),
(3, 'mehul mistry', 'abcd@gmail.com', 0x30204c4556454c204446442e706466),
(5, 'Rocky', 'kgf@gmail.com', 0x556a65665f6d616c656b5f726573756d652e706466),
(3, 'rocky', 'kgf@gmail.com', 0x556a65665f6d616c656b5f726573756d652e706466);

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `job_id` int(11) NOT NULL,
  `email` varchar(30) NOT NULL,
  `job_title` varchar(30) NOT NULL,
  `job_description` varchar(100) NOT NULL,
  `skills_require` varchar(100) NOT NULL,
  `last_date` varchar(20) NOT NULL,
  `salary` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `jobs`
--

INSERT INTO `jobs` (`job_id`, `email`, `job_title`, `job_description`, `skills_require`, `last_date`, `salary`) VALUES
(3, 'ujefmalek49@gmail.com', 'developer', 'daily task is work on android app development', 'android studio, java, kotlin', '2022-04-30', '20000'),
(4, 'ujefmalek49@gmail.com', 'Worker', 'Carry bags and bring them to another place.', 'Hard-working person', '2022-04-14', '10000'),
(5, 'ujefmalek49@gmail.com', 'Tester', 'Daily task is to test various apps and website and find bugs within it.', 'Programming languages, Analysis skill, OOPs', '2022-04-20', '25000'),
(6, 'malekujef7@gmail.com', 'Salesman', 'Take the company products and sell them to customers by reaching their home.', 'Communication, Salesman marketing', '2022-05-10', '11000');

-- --------------------------------------------------------

--
-- Table structure for table `jp_users`
--

CREATE TABLE `jp_users` (
  `email` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `cn` varchar(50) NOT NULL,
  `cw` varchar(50) NOT NULL,
  `phone` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `jp_users`
--

INSERT INTO `jp_users` (`email`, `name`, `password`, `cn`, `cw`, `phone`) VALUES
('ujefmalek49@gmail.com', 'ujef mohammad malek', '12345678', 'the_ujef', 'www.ujef.com', '9978926446'),
('malekujef7@gmail.com', 'rakshit vaja', '00000000', 'infikey', 'www.infikey.com', '9978926446');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `email` varchar(30) NOT NULL,
  `password` varchar(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `address` varchar(100) NOT NULL,
  `city` varchar(30) NOT NULL,
  `zip` int(10) NOT NULL,
  `user_type` int(5) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`email`, `password`, `name`, `address`, `city`, `zip`, `user_type`) VALUES
('ujefmalek50@gmail.com', '00000000', 'malek ujef', 'ismail nagar bhalej road anand', 'anand', 388001, 0),
('abcd@gmail.com', 'abcdefgh', 'abc xyz', 'av road vvnagar ', 'anand', 388001, 0),
('malekujef7@gmail.com', '00000000', 'rakshit vaja', '', '', 0, 1),
('ujefmalek49@gmail.com', '12345678', 'ujef mohammad malek', '', '', 0, 1),
('kgf@gmail.com', 'kgf2', 'rocky', 'kolar gold mine', 'banglore', 331100, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`job_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `job_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
