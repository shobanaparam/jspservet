-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 20, 2018 at 05:55 AM
-- Server version: 5.7.14
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `crystal1`
--

-- --------------------------------------------------------

--
-- Table structure for table `reserve1`
--

CREATE TABLE `reserve1` (
  `id` int(11) NOT NULL,
  `UserName` varchar(255) NOT NULL,
  `Address` varchar(255) NOT NULL,
  `Room` varchar(255) NOT NULL,
  `Beds` int(11) NOT NULL,
  `ADate` date NOT NULL,
  `DDate` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reserve1`
--

INSERT INTO `reserve1` (`id`, `UserName`, `Address`, `Room`, `Beds`, `ADate`, `DDate`) VALUES
(9, 'Kumar', 'sdshcds', 'NON DULEXE', 1, '2018-05-21', '2018-06-21');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `reserve1`
--
ALTER TABLE `reserve1`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `reserve1`
--
ALTER TABLE `reserve1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
