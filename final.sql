-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 2021 m. Bal 14 d. 18:17
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `final`
--

-- --------------------------------------------------------

--
-- Sukurta duomenų struktūra lentelei `projects`
--

CREATE TABLE `projects` (
  `ID` int(8) NOT NULL,
  `name` varchar(64) COLLATE utf32_swedish_ci NOT NULL,
  `description` varchar(256) COLLATE utf32_swedish_ci DEFAULT NULL,
  `status` varchar(32) COLLATE utf32_swedish_ci NOT NULL,
  `taskQuantity` int(8) NOT NULL,
  `taskLeft` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_swedish_ci;

-- --------------------------------------------------------

--
-- Sukurta duomenų struktūra lentelei `tasks`
--

CREATE TABLE `tasks` (
  `projectID` int(8) DEFAULT NULL,
  `ID` int(8) NOT NULL,
  `name` varchar(64) COLLATE utf32_swedish_ci NOT NULL,
  `description` varchar(256) COLLATE utf32_swedish_ci DEFAULT NULL,
  `priority` varchar(32) COLLATE utf32_swedish_ci NOT NULL,
  `status` varchar(32) COLLATE utf32_swedish_ci NOT NULL,
  `startDate` date DEFAULT NULL,
  `modifiedDate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_swedish_ci;

-- --------------------------------------------------------

--
-- Sukurta duomenų struktūra lentelei `users`
--

CREATE TABLE `users` (
  `ID` int(8) NOT NULL,
  `login` varchar(64) COLLATE utf32_swedish_ci NOT NULL,
  `password` varchar(64) COLLATE utf32_swedish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_swedish_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tasks`
--
ALTER TABLE `tasks`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `ID` int(8) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tasks`
--
ALTER TABLE `tasks`
  MODIFY `ID` int(8) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `ID` int(8) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
