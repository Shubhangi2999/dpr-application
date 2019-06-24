-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 24, 2019 at 10:13 AM
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
  `lsl` int(11) NOT NULL,
  `msl` int(11) NOT NULL,
  `usl` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `grade_info`
--

INSERT INTO `grade_info` (`GradeName`, `lsl`, `msl`, `usl`) VALUES
('N110', 140, 145, 150),
('N121', 116, 121, 126),
('N134', 137, 142, 147),
('N220', 116, 121, 126),
('N234', 115, 120, 125),
('N326', 77, 82, 87),
('N330', 77, 82, 87),
('N339', 85, 90, 95),
('N375', 85, 90, 95),
('JC300P', 79, 82, 85),
('BC2432', 82, 0, 87),
('BC2056', 85, 90, 95),
('BC2109', 107, 112, 117),
('BC2110', 135, 140, 145),
('BC2123', 55, 60, 65),
('BC2229', 135, 140, 145),
('BC2045', 73, 78, 83),
('BC2207', 87, 90, 93),
('BC2341', 64, 69, 74);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
