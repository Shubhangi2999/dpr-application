-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 27, 2019 at 06:09 AM
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
-- Table structure for table `grade_info`
--

CREATE TABLE `grade_info` (
  `GradeName` varchar(8) NOT NULL,
  `lsl_IAN` int(11) NOT NULL,
  `msl_IAN` int(11) NOT NULL,
  `usl_IAN` int(11) NOT NULL,
  `msl_oan` int(11) NOT NULL,
  `lsl_oan` int(11) NOT NULL,
  `usl_oan` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `grade_info`
--

INSERT INTO `grade_info` (`GradeName`, `lsl_IAN`, `msl_IAN`, `usl_IAN`, `msl_oan`, `lsl_oan`, `usl_oan`) VALUES
('BC2045', 73, 78, 83, 143, 138, 148),
('BC2056', 85, 90, 95, 135, 130, 140),
('BC2109', 107, 112, 117, 137, 132, 142),
('BC2110', 135, 140, 145, 133, 128, 138),
('BC2123', 55, 60, 65, 144, 139, 149),
('BC2207', 87, 90, 93, 135, 131, 139),
('BC2229', 135, 140, 145, 155, 149, 161),
('BC2341', 64, 69, 74, 101, 96, 106),
('BC2432', 82, 0, 87, 0, 68, 74),
('JC300P', 79, 82, 85, 102, 99, 105),
('N110', 140, 145, 150, 113, 108, 118),
('N121', 116, 121, 126, 132, 127, 137),
('N134', 137, 142, 147, 127, 122, 132),
('N220', 116, 121, 126, 114, 109, 119),
('N234', 115, 120, 125, 125, 120, 130),
('N326', 77, 82, 87, 72, 67, 77),
('N330', 77, 82, 87, 102, 97, 107),
('N339', 85, 90, 95, 120, 115, 125),
('N375', 85, 90, 95, 114, 109, 119);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `grade_info`
--
ALTER TABLE `grade_info`
  ADD PRIMARY KEY (`GradeName`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
