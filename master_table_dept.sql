-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 28, 2019 at 06:27 AM
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
-- Table structure for table `master_table_dept`
--

CREATE TABLE `master_table_dept` (
  `Department_Name` varchar(255) DEFAULT NULL,
  `Dept_id` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `master_table_dept`
--

INSERT INTO `master_table_dept` (`Department_Name`, `Dept_id`) VALUES
('Production', 101),
('Utility', 102),
('WareHouse', 103),
('Quality', 104),
('Materials', 105),
('HR and Admin', 106),
('Engineering', 107),
('Safety', 108),
('Project', 109),
('Others', 1010),
('Logistics', 1011),
('Electrical', 1012),
('Mechanical', 1013),
('Instrumentation', 1014),
('WCM', 1015);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `master_table_dept`
--
ALTER TABLE `master_table_dept`
  ADD PRIMARY KEY (`Dept_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `master_table_dept`
--
ALTER TABLE `master_table_dept`
  MODIFY `Dept_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1016;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
