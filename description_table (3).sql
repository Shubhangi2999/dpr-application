-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 25, 2019 at 02:47 AM
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
-- Table structure for table `description_table`
--

CREATE TABLE `description_table` (
  `Description` varchar(255) DEFAULT NULL,
  `Dept_id` int(20) DEFAULT NULL,
  `Desc_id` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `description_table`
--

INSERT INTO `description_table` (`Description`, `Dept_id`, `Desc_id`) VALUES
('UT', 104, 1019),
('Production Rating', 101, 10101),
('Production_rating_overall', 101, 10102),
('Off spec generation during production', 101, 10103),
('Off spec percentage during prod. till date', 101, 10104),
('Yeild gain/loss', 101, 10105),
('OPH Out let Temperature', 101, 10106),
('APH Out let Temperature', 101, 10107),
('Steam Generation-Boiler', 102, 10201),
('WHB Steam Generation', 102, 10202),
('Sp. Steam Consumption Plant', 102, 10203),
('Sp. Steam Consumption Turbine', 102, 10204),
('Specific Water Consumption', 102, 10205),
('Water Recycle ETP', 102, 10206),
(' Water Recycle STP', 102, 10207),
('Power Generation', 102, 10208),
('Plant Steam generation', 102, 10209),
('Steam Venting', 102, 10210),
('Actual Power consumed by Plant ', 102, 10211),
('Dummy load power', 102, 10212),
('Power Export', 102, 10213),
('Power Plant Consumption', 102, 10214),
('Water Recovery in STP', 102, 10215),
('Water Recovery in Backwash', 102, 10216),
('Water Recovery in Zero Water Plant', 102, 10217),
('Packing Quantity', 103, 10301),
('Packing Tolerance', 103, 10302),
('Inventory', 103, 10303),
('TTAT Time', 103, 10304),
('Stock as on date', 103, 10305),
('Complaints-Quality', 104, 10401),
('Reasons for off specs', 104, 10402),
('Lump Generation', 104, 10403),
('Rerun Satus', 104, 10404),
('CPK -Iodine', 104, 10405),
('CPK-DBP', 104, 10406),
('Total Off Spec generation after packing', 104, 10407),
('Off spec in On spec silo', 104, 10408),
('Off spec due to fines', 104, 10409),
('Off spec packed from silo 02 & 12', 104, 10410),
('Overall Off spec in percentage', 104, 10411),
('FG1', 104, 10412),
('FG2', 104, 10413),
('FG3', 104, 10414),
('Slow', 104, 10415),
('Silo 2&12', 104, 10416),
('RP', 104, 10417),
('SS', 104, 10418),
('Coal_tar_consumption', 105, 10501),
('CBFS_imported_consumption', 105, 10502),
('RIL/CBO_consumption', 105, 10503),
('AFS_opening_stock', 105, 10504),
('AFS_order_quantity', 105, 10505),
('AFS_dispatched_quantity', 105, 10506),
('AFS_reciept_quantity', 105, 10507),
('AFS_consumption', 105, 10508),
('AFS_closing_stock', 105, 10509),
('FS_oil_reciept', 105, 10511),
('CBO/RIL_stock', 105, 10512),
('Coal_tar_stock', 105, 10513),
('CBFS_stock_(imp)_port', 105, 10514),
('CBFS_stock_(imp)_plant', 105, 10515),
('LDO', 105, 10516),
('Molasses', 105, 10517),
('PR-PENDING(0-15)', 105, 10518),
('PR-PENDING(16-30)', 105, 10519),
('PR-PENDING(>30)', 105, 10520),
('OVERDUE_PO_DELIVERY(0-30)', 105, 10521),
('OVERDUE_PO_DELIVERY(31-60)', 105, 10522),
('OVERDUE_PO_DELIVERY(>60)', 105, 10523),
('GRN_PENDING(0-3)', 105, 10524),
('GRN_PENDING(>3)', 105, 10525),
('TANKER_TTAT', 105, 10526),
('INVENTORY_COST', 105, 10527),
('Sanctioned Manpower', 106, 10601),
('Actual Manpower', 106, 10602),
('Over Time', 106, 10603),
('Training Hrs', 106, 10604),
('Shifts', 106, 10605),
('Training Topic', 106, 10606),
('Training Faculty', 106, 10607),
('PM slippage', 107, 10701),
('Notification Pending', 107, 10702),
(' Maintainance Cost', 107, 10703),
('Event Report-open', 107, 10704),
('MOC-Pending', 107, 10705),
('Breakdown hrs-Not Affecting Production', 107, 10706),
('Energy Sales', 107, 10707),
('Ratio:Own Energy consumption Vs Export', 107, 10708),
('Excess/ Short supply against commitment', 107, 10709),
('.import of power from MSEDCL', 107, 10710),
('S&S expenses', 107, 10711),
('R&M Stores Consumption', 107, 10712),
('Total S&S / R&M Expenses', 107, 10713),
('SAFETY_JOBS', 108, 10801),
('HAZARD_IDENTIFICATION', 108, 10802),
('HAZARD_PENDING', 108, 10803),
('NEAR_MISS_STATUS', 108, 10804),
('NEAR_MISS_PENDING', 108, 10805),
('ACCIDENTS', 108, 10806),
('DAILY_ABNORMALITIES_REVIEW', 108, 10807),
('Capex Status', 109, 10901),
('Capex Expenses', 109, 10902),
('Capex ROI', 109, 10903),
('Leakages', 110, 11001),
('Saving', 110, 11002),
('Good work done', 110, 11003),
('Admin Expenses', 110, 11004),
('Security concern/Violation', 110, 11005),
('CSR Highlights', 110, 11006),
('number_of_trucks_planned`', 111, 11101),
('number_of_trucks_reported', 111, 11102),
('SNA', 111, 11103),
('SNA-REMARKS', 111, 11104),
('OTHERS_STATUS', 111, 11105),
('Daily_dispatch', 111, 11106),
('Order_status', 111, 11107),
('Order_vs_dispatch_in_%', 111, 11108),
('Daily_dispatch_usl', 111, 11109),
('Daily_dispatch_lsl', 111, 11110),
('OTIF', 111, 11111);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `description_table`
--
ALTER TABLE `description_table`
  ADD PRIMARY KEY (`Desc_id`),
  ADD KEY `Dept_id` (`Dept_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
