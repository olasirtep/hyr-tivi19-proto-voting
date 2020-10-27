-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 27.10.2020 klo 09:04
-- Palvelimen versio: 10.4.14-MariaDB
-- PHP Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `voting`
--

-- --------------------------------------------------------

--
-- Rakenne taululle `votes`
--

CREATE TABLE `votes` (
  `id` int(11) NOT NULL,
  `vote_time` datetime NOT NULL DEFAULT current_timestamp(),
  `vote` int(11) NOT NULL,
  `ip` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Vedos taulusta `votes`
--

INSERT INTO `votes` (`id`, `vote_time`, `vote`, `ip`) VALUES
(1, '2020-10-27 09:27:18', 5, '::1'),
(2, '2020-10-27 09:27:56', 5, '::1'),
(3, '2020-10-27 09:29:19', 4, '::1'),
(4, '2020-10-27 09:30:04', 5, '::1'),
(5, '2020-10-27 09:31:26', 3, '::1'),
(6, '2020-10-27 09:33:01', 5, '::1'),
(7, '2020-10-27 09:36:54', 1, '::1'),
(8, '2020-10-27 09:36:56', 2, '::1'),
(9, '2020-10-27 09:36:56', 2, '::1'),
(10, '2020-10-27 09:36:57', 2, '::1'),
(11, '2020-10-27 09:36:57', 3, '::1'),
(12, '2020-10-27 09:36:57', 3, '::1'),
(13, '2020-10-27 09:36:58', 4, '::1'),
(14, '2020-10-27 09:36:58', 4, '::1'),
(15, '2020-10-27 09:36:59', 5, '::1'),
(16, '2020-10-27 09:36:59', 5, '::1'),
(17, '2020-10-27 09:36:59', 5, '::1'),
(18, '2020-10-27 09:37:00', 5, '::1'),
(19, '2020-10-27 09:37:00', 4, '::1'),
(20, '2020-10-27 09:37:00', 4, '::1'),
(21, '2020-10-27 09:37:01', 4, '::1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `votes`
--
ALTER TABLE `votes`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `votes`
--
ALTER TABLE `votes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
