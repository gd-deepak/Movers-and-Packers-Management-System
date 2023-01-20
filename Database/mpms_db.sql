-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 22, 2022 at 06:39 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mpms_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `client`
--

CREATE TABLE `client` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `client`
--

INSERT INTO `client` (`id`, `username`, `email`, `password`) VALUES
(1, 'a', 'a@gmail.com', '0cc175b9c0f1b6a831c399e269772661'),
(2, 'a', 'deepakg4283@gmail.com', '498b5924adc469aa7b660f457e0fc7e5'),
(3, 'd', 'd@gmail.com', '8277e0910d750195b448797616e091ad');

-- --------------------------------------------------------

--
-- Table structure for table `client1`
--

CREATE TABLE `client1` (
  `id` int(50) DEFAULT NULL,
  `firstname` varchar(250) DEFAULT NULL,
  `middlename` varchar(255) NOT NULL,
  `lastname` varchar(250) DEFAULT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL,
  `email` varchar(250) NOT NULL,
  `avatar` text DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `type` tinyint(1) NOT NULL DEFAULT 0,
  `date_added` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='2';

--
-- Dumping data for table `client1`
--

INSERT INTO `client1` (`id`, `firstname`, `middlename`, `lastname`, `username`, `password`, `email`, `avatar`, `last_login`, `type`, `date_added`, `date_updated`) VALUES
(NULL, NULL, '', NULL, 'test', '202cb962ac59075b964b07152d234b70', 'test@gmail.com', NULL, NULL, 0, '2022-09-21 23:47:18', '2022-09-21 23:47:18'),
(NULL, NULL, '', NULL, 'deepak', '21232f297a57a5a743894a0e4a801fc3', 'deepak@gmail.com', NULL, NULL, 0, '2022-09-22 00:04:21', '2022-09-22 00:04:21');

-- --------------------------------------------------------

--
-- Table structure for table `inquiry_list`
--

CREATE TABLE `inquiry_list` (
  `id` int(30) NOT NULL,
  `fullname` text NOT NULL,
  `contact` text NOT NULL,
  `email` text DEFAULT NULL,
  `subject` text NOT NULL,
  `message` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `quote_list`
--

CREATE TABLE `quote_list` (
  `id` int(30) NOT NULL,
  `code` varchar(100) NOT NULL,
  `fullname` text NOT NULL,
  `email` text DEFAULT NULL,
  `contact` text NOT NULL,
  `origin` text NOT NULL,
  `destination` text NOT NULL,
  `schedule` date NOT NULL,
  `remarks` text NOT NULL,
  `admin_remarks` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `quote_list`
--

INSERT INTO `quote_list` (`id`, `code`, `fullname`, `email`, `contact`, `origin`, `destination`, `schedule`, `remarks`, `admin_remarks`, `status`, `date_created`, `date_updated`) VALUES
(4, '2022073100001', 'Depak Gadhave', 'deepakg4283@gmail.com', '9096365035', 'Pune', 'Satara', '2022-07-31', 'Shifting for new home', 'Shifting Done', 1, '2022-07-30 21:39:38', '2022-07-30 21:40:18'),
(5, '2022080800001', 'test', '645321@gmai.com', '3542', '6532', '46512', '2022-09-06', 'efdsvsgrfzd', '', 1, '2022-08-08 16:57:18', '2022-09-22 14:46:59'),
(7, '2022092100001', 'test', 'deepakgadhave61@gmail.com', '9096365035', 'satara', 'pune', '2002-01-01', 'shifting', '', 1, '2022-09-21 19:50:17', '2022-09-21 19:51:08'),
(8, '2022092200001', 'rohit', 'demo@gmail.com', '9096365035', 'satara', 'pune', '2022-09-23', 'wants to move the furniture', '', 0, '2022-09-22 15:04:27', '2022-09-22 15:04:27');

-- --------------------------------------------------------

--
-- Table structure for table `quote_services`
--

CREATE TABLE `quote_services` (
  `quote_id` int(30) NOT NULL,
  `service_id` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `quote_services`
--

INSERT INTO `quote_services` (`quote_id`, `service_id`) VALUES
(4, 1),
(5, 1),
(7, 1),
(8, 1);

-- --------------------------------------------------------

--
-- Table structure for table `service_list`
--

CREATE TABLE `service_list` (
  `id` int(30) NOT NULL,
  `name` text NOT NULL,
  `description` text NOT NULL,
  `image_path` text DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `delete_flag` tinyint(1) NOT NULL DEFAULT 0,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `service_list`
--

INSERT INTO `service_list` (`id`, `name`, `description`, `image_path`, `status`, `delete_flag`, `date_created`, `date_updated`) VALUES
(1, 'Packers &amp; Movers', '&lt;br&gt;', 'uploads/services//1_wp1.jpg?v=1653542956', 1, 0, '2022-05-26 13:29:16', '2022-07-30 21:07:06'),
(2, 'Car Transport', '&lt;p&gt;Here We offers the Car transportation services&lt;/p&gt;', 'uploads/services//wp2.jpg?v=1653542991', 1, 0, '2022-05-26 13:29:51', '2022-09-21 23:52:30'),
(3, 'Office Things', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', NULL, 0, 0, '2022-05-26 14:15:54', '2022-09-21 23:54:18'),
(4, 'House Furniture', '&lt;p&gt;We are ready Shift your house furniture also !&lt;/p&gt;', NULL, 1, 0, '2022-05-26 14:17:51', '2022-09-21 23:54:02');

-- --------------------------------------------------------

--
-- Table structure for table `system_info`
--

CREATE TABLE `system_info` (
  `id` int(30) NOT NULL,
  `meta_field` text NOT NULL,
  `meta_value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `system_info`
--

INSERT INTO `system_info` (`id`, `meta_field`, `meta_value`) VALUES
(1, 'name', 'Packers and Movers Management System'),
(6, 'short_name', 'PMMS- PHP'),
(11, 'logo', 'uploads/logo.png?v=1653541594'),
(13, 'user_avatar', 'uploads/user_avatar.jpg'),
(14, 'cover', 'uploads/cover.png?v=1653541595'),
(17, 'phone', '02161269226'),
(18, 'mobile', '9096365035 / 735009833'),
(19, 'email', 'moverspanckers@gmail.com'),
(20, 'address', 'Sector 27A Nigdi Pradhikaran ,Pune 415527');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(50) NOT NULL,
  `firstname` varchar(250) NOT NULL,
  `middlename` text DEFAULT NULL,
  `lastname` varchar(250) NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL,
  `avatar` text DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `type` tinyint(1) NOT NULL DEFAULT 0,
  `date_added` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='2';

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `middlename`, `lastname`, `username`, `password`, `avatar`, `last_login`, `type`, `date_added`, `date_updated`) VALUES
(1, 'Adminstrator', '', 'Admin', 'admin', '0192023a7bbd73250516f069df18b500', 'uploads/avatars/1.png?v=1649834664', NULL, 1, '2021-01-20 14:02:37', '2022-05-16 14:17:49'),
(7, 'vibha', '', 'doijode', 'vibha', '81dc9bdb52d04dc20036dbd8313ed055', NULL, NULL, 2, '2022-05-26 11:04:16', '2022-07-30 21:26:50'),
(8, 'test', '', 'test', 'test', 'c4ded2b85cc5be82fa1d2464eba9a7d3', NULL, NULL, 2, '2022-07-30 21:36:12', '2022-07-30 21:36:12'),
(9, 'test', 'test', 'test', 'test', '098f6bcd4621d373cade4e832627b4f6', NULL, NULL, 1, '2022-08-03 01:08:16', '2022-08-03 01:08:16'),
(10, 'a', 'a', 'a', 'a', '0cc175b9c0f1b6a831c399e269772661', NULL, NULL, 1, '2022-08-12 10:05:26', '2022-08-12 10:05:26'),
(11, 'a', 'a', 'a', 'a', '0cc175b9c0f1b6a831c399e269772661', NULL, NULL, 1, '2022-08-12 10:06:51', '2022-08-12 10:06:51'),
(12, 'Staff', '', 'staff', 'staff', '21232f297a57a5a743894a0e4a801fc3', NULL, NULL, 2, '2022-09-22 00:03:18', '2022-09-22 00:03:18'),
(13, 'test', 'test', 'test', 'test', '098f6bcd4621d373cade4e832627b4f6', NULL, NULL, 2, '2022-09-22 14:43:49', '2022-09-22 14:43:49');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inquiry_list`
--
ALTER TABLE `inquiry_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quote_list`
--
ALTER TABLE `quote_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quote_services`
--
ALTER TABLE `quote_services`
  ADD KEY `quote_id` (`quote_id`),
  ADD KEY `service_id` (`service_id`);

--
-- Indexes for table `service_list`
--
ALTER TABLE `service_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_info`
--
ALTER TABLE `system_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `client`
--
ALTER TABLE `client`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `inquiry_list`
--
ALTER TABLE `inquiry_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `quote_list`
--
ALTER TABLE `quote_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `service_list`
--
ALTER TABLE `service_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `system_info`
--
ALTER TABLE `system_info`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `quote_services`
--
ALTER TABLE `quote_services`
  ADD CONSTRAINT `quote_id_fk_qs` FOREIGN KEY (`quote_id`) REFERENCES `quote_list` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `service_id_fk_qs` FOREIGN KEY (`service_id`) REFERENCES `service_list` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
