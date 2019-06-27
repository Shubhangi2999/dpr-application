-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 27, 2019 at 07:58 AM
-- Server version: 10.1.35-MariaDB
-- PHP Version: 7.2.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `performance_indicator`
--

-- --------------------------------------------------------

--
-- Table structure for table `transition_table`
--

CREATE TABLE `transition_table` (
  `Today_Date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Obtained_value` bigint(255) NOT NULL,
  `Target_Value` bigint(255) DEFAULT NULL,
  `Desc_id` varchar(255) COLLATE utf8_bin NOT NULL,
  `GradeName` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `Remarks` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `ToDate` bigint(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `transition_table`
--

INSERT INTO `transition_table` (`Today_Date`, `Obtained_value`, `Target_Value`, `Desc_id`, `GradeName`, `Remarks`, `ToDate`) VALUES
('2019-06-27 11:17:54', 10, 10, '10301', '', '', NULL),
('2019-06-27 11:17:54', 10, 10, '10302', '', '', NULL),
('2019-06-27 11:17:54', 10, 10, '10303', '', '', NULL),
('2019-06-27 11:17:54', 10, 10, '10304', '', '', NULL),
('2019-06-27 11:17:54', 10, 10, '10305', '', '', NULL),
('2019-06-27 11:17:54', 10, 10, '10306', '', '', NULL),
('2019-06-27 11:17:54', 10, 10, '10307', '', '', NULL),
('2019-06-27 11:17:54', 10, 10, '10308', '', '', NULL),
('2019-06-27 11:17:54', 10, 10, '10309', '', '', NULL),
('2019-06-27 11:17:54', 10, 10, '103010', '', '', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `transition_table`
--
ALTER TABLE `transition_table`
  ADD KEY `Desc_id` (`Desc_id`),
  ADD KEY `GradeName` (`GradeName`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
