-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 28, 2020 at 01:13 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project_sirius`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `name` tinytext NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` tinytext NOT NULL,
  `contact` text NOT NULL,
  `event_name` varchar(255) NOT NULL,
  `event_description` longtext NOT NULL,
  `event_date` varchar(150) NOT NULL,
  `event_organiser` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `name`, `email`, `password`, `contact`, `event_name`, `event_description`, `event_date`, `event_organiser`) VALUES
(1, 'Naina', 'nc@gmail.com', 'd371b9b4f429e33cc0b938f10f9dc5685b6a119a2847c6168ede044f07fbb8b9300fde0f414f14a821a0f5ad800d31443262ad3ff9b78e949fc2cff4b00e61f1', '0', '', '', '', ''),
(4, 'Ashutosh lala', 'anshusandhi@gmail.com', 'af2ad964e44136a0e441828878a9274b6a0b80585b9e414453e49d39f9dcbb5ba84d86fb072c2c42c58848836b21b2e7a03faa0a44bb8aea06f0aca6c3fbd615', '9556861910', 'aa', '1234', '2020-10-10', 'a11');

-- --------------------------------------------------------

--
-- Table structure for table `template_preview`
--

CREATE TABLE `template_preview` (
  `id` int(11) NOT NULL,
  `font_size` smallint(6) NOT NULL,
  `font_color` varchar(50) NOT NULL,
  `x_coordinate` int(11) NOT NULL,
  `y_coordinate` int(11) NOT NULL,
  `font_type` varchar(50) NOT NULL,
  `template_image` varchar(255) NOT NULL,
  `admin_fk` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `template_preview`
--

INSERT INTO `template_preview` (`id`, `font_size`, `font_color`, `x_coordinate`, `y_coordinate`, `font_type`, `template_image`, `admin_fk`) VALUES
(1, 100, '0,0,0', 950, 950, 'TimesNewRoman', 'Naina_1.png', 1),
(2, 12, '18,12,122', 2, 1, 'Calibri', 'Ashutosh lala_4.jpg', 4);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `unique_id` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL,
  `user_name` tinytext NOT NULL,
  `email` varchar(100) NOT NULL,
  `rating` longtext NOT NULL,
  `comments_abt_event` longtext NOT NULL,
  `suggestions` longtext NOT NULL,
  `admin_fk` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`unique_id`, `user_id`, `user_name`, `email`, `rating`, `comments_abt_event`, `suggestions`, `admin_fk`) VALUES
('', 1, 'abcs', 'anshusandhi6@gmail.com', '1', 'dsdsds', 'sdsds', 0),
('vishal_aa', 11, 'vishal', 'vishal@gmail.com', '1', 'ssssssssssss', 'abcd', 4),
('amit_aa', 12, 'amit', 'amit@gmail.com', '', '', '', 4),
('anshuman_aa', 13, 'anshuman', 'anshu@gmail.com', '', '', '', 4);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `template_preview`
--
ALTER TABLE `template_preview`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admin_fk` (`admin_fk`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `template_preview`
--
ALTER TABLE `template_preview`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `template_preview`
--
ALTER TABLE `template_preview`
  ADD CONSTRAINT `template_preview_ibfk_1` FOREIGN KEY (`admin_fk`) REFERENCES `admin` (`admin_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
