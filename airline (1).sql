-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 26, 2025 at 10:44 AM
-- Server version: 8.0.33
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `airline`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `firstname` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `lastname` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `nic` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `passport` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `address` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `dob` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `gender` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `contact` bigint NOT NULL,
  `photo` longblob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id`, `firstname`, `lastname`, `nic`, `passport`, `address`, `dob`, `gender`, `contact`, `photo`) VALUES
('CS001', 'Harsh', 'Pandit', '425467', '362437', 'Lohta', '2024-09-25', 'Male', 6392922230, img1.jpeg)

-- --------------------------------------------------------

--
-- Table structure for table `flight`
--

CREATE TABLE `flight` (
  `id` varchar(255) NOT NULL,
  `flightname` varchar(255) NOT NULL,
  `source` varchar(255) NOT NULL,
  `depart` varchar(255) NOT NULL,
  `date` varchar(255) NOT NULL,
  `deptime` varchar(255) NOT NULL,
  `arrtime` varchar(255) NOT NULL,
  `flightcharge` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `flight`
--

INSERT INTO `flight` (`id`, `flightname`, `source`, `depart`, `date`, `deptime`, `arrtime`, `flightcharge`) VALUES
('FO001', 'Indigo', 'India', 'UK', '2024-10-17', '8:00 am', '10:00 pm', '20000'),
('FO002', 'AIRJETINDIA', 'India', 'Srilanka', '2024-10-16', '10:00 AM', '3:00 PM', '4000');

-- --------------------------------------------------------

--
-- Table structure for table `ticket`
--

CREATE TABLE `ticket` (
  `id` varchar(255) NOT NULL,
  `flightid` varchar(255) NOT NULL,
  `custid` varchar(255) NOT NULL,
  `class` varchar(255) NOT NULL,
  `price` int NOT NULL,
  `seats` int NOT NULL,
  `date` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `ticket`
--

INSERT INTO `ticket` (`id`, `flightid`, `custid`, `class`, `price`, `seats`, `date`) VALUES
('TO001', 'FO001', 'CS001', 'Economy', 20000, 1, '2024-10-10'),
('TO002', 'FO001', 'CS001', 'Economy', 20000, 1, '2024-10-17'),
('TO003', 'FO001', 'CS001', 'Economy', 20000, 3, '2024-10-08'),
('TO004', 'FO001', 'CS001', 'Economy', 20000, 1, '2024-12-05'),
('TO005', 'FO001', 'CS001', 'Economy', 20000, 1, '2024-12-03'),
('TO006', 'FO001', 'cs001', 'Economy', 40000, 2, '2025-05-07');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` varchar(255) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `firstname`, `lastname`, `username`, `password`) VALUES
('UO001', 'Harsh', 'Mishra', 'Harsh', '123456'),
('UO002', 'Nikhil', 'Mishra', 'Nikhil@111', 'NIKHIL'),
('UO003', 'sanskritee', 'moti', 'sanskritee333', '12345');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
