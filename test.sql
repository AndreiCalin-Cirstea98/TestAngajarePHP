-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 26, 2021 at 04:18 AM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

CREATE DATABASE test;

--
-- Database: `test`
--

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

CREATE TABLE `articles` (
  `id` smallint(6) NOT NULL,
  `sku` text NOT NULL,
  `item_name` varchar(50) NOT NULL,
  `description` varchar(200) NOT NULL,
  `price` smallint(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `articles`
--

INSERT INTO `articles` (`id`, `sku`, `item_name`, `description`, `price`) VALUES
(1, 'WC-JT-MD-PP', 'Jacket', '2019 Winter Collection, Medium, Purple', 80),
(2, 'HT-CC-LRG-SF', 'Chocolate bar', 'Holiday Treats, Large, Sugar-free', 5),
(3, 'SE-RS-10-BL', 'Running shoes', 'Summer Edition, Size 10, Blue', 35),
(4, 'HDPH-WT-BTWS', 'Headphones', 'White, Bluetooth wireless', 20);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` smallint(6) NOT NULL,
  `role` varchar(10) NOT NULL DEFAULT 'basic_user',
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `pass` text NOT NULL,
  `profile_picture` text DEFAULT NULL,
  `question` text NOT NULL,
  `answer` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `role`, `first_name`, `last_name`, `email`, `pass`, `profile_picture`, `question`, `answer`) VALUES
(1, 'admin', 'Andrei-Calin', 'Cirstea', 'andrei.cirstea98@gmail.com', '482c811da5d5b4bc6d497ffa98491e38', NULL, 'q5', 'answer123'),
(2, 'basic_user', 'basic', 'user', 'basicuser@yahoo.com', '482c811da5d5b4bc6d497ffa98491e38', NULL, 'q2', 'answer123');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `articles`
--
ALTER TABLE `articles`
  MODIFY `id` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
