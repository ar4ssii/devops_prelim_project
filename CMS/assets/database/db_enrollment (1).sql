-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 07, 2024 at 05:08 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_enrollment`
--

-- --------------------------------------------------------

--
-- Table structure for table `school_profile`
--

CREATE TABLE `school_profile` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `mobile_number` varchar(15) DEFAULT NULL,
  `telephone_number` varchar(15) DEFAULT NULL,
  `description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `school_profile`
--

INSERT INTO `school_profile` (`id`, `name`, `location`, `email`, `mobile_number`, `telephone_number`, `description`) VALUES
(1, 'San Isidro High School', 'Sta.Ana,Pampanga', 'adie80465@gmail.com', '09750737973', '0975073797355', 'School with a black heart');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_background`
--

CREATE TABLE `tbl_background` (
  `Bg_id` int(11) NOT NULL,
  `Bg` blob NOT NULL,
  `Value` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_background`
--

INSERT INTO `tbl_background` (`Bg_id`, `Bg`, `Value`) VALUES
(1, 0x2e2e2f6173736574732f75706c6f6164732f3432303734323736325f3736343339363535383934373237355f343231373032313031343033373338383839385f6e2e6a7067, 0),
(3, 0x2e2e2f6173736574732f75706c6f6164732f3338353532303439365f3832363937373939353738323431335f333433393035333138333734313230333232385f6e2e6a7067, 0),
(4, 0x2e2e2f6173736574732f75706c6f6164732f77454c434f4d45206241434b2e706e67, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cardcontent`
--

CREATE TABLE `tbl_cardcontent` (
  `cardcontent_id` int(11) NOT NULL,
  `Title` text NOT NULL,
  `Caption` text NOT NULL,
  `Size` int(255) NOT NULL,
  `Color` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_cardcontent`
--

INSERT INTO `tbl_cardcontent` (`cardcontent_id`, `Title`, `Caption`, `Size`, `Color`) VALUES
(3, 'Mission', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', 12, '#507934'),
(4, 'Vission', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute', 12, '#6f8ba5'),
(5, 'Goal', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute', 12, '#ccc685');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_card_images`
--

CREATE TABLE `tbl_card_images` (
  `card&images_id` int(11) NOT NULL,
  `Image` blob NOT NULL,
  `Title` varchar(255) NOT NULL,
  `Caption` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_card_images`
--

INSERT INTO `tbl_card_images` (`card&images_id`, `Image`, `Title`, `Caption`) VALUES
(1, 0x2e2e2f6173736574732f75706c6f6164732f3337303339303933365f3638303634333835303737343436355f333033393631323432383735313730383932365f6e2e6a7067, 'Rhea', 'Ackk'),
(2, 0x2e2e2f6173736574732f75706c6f6164732f3431343637363437365f3834313435373632313038373533315f343833333036313231353132303533333938385f6e2e6a7067, 'ggg', 'Ackk'),
(3, 0x2e2e2f6173736574732f75706c6f6164732f7172636f64655f39313637343034375f38383764653537383361643765373166666636666362313566613330313963622e706e67, 'hhh', 'Ackk'),
(4, 0x2e2e2f6173736574732f75706c6f6164732f50726f66696c652d50686f746f2d6f662d42656175746966756c2d416e696d652d4769726c2e6a7067, 'Pretty Ghorl', 'Ackk');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_logo`
--

CREATE TABLE `tbl_logo` (
  `logoid` int(11) NOT NULL,
  `Logo` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_logo`
--

INSERT INTO `tbl_logo` (`logoid`, `Logo`) VALUES
(1, 0x2e2e2f6173736574732f75706c6f6164732f6c6f676f2e6a7067);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `userID` int(255) NOT NULL,
  `username` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`userID`, `username`, `password`) VALUES
(1, 'admin@admin', 'admin'),
(2, 'student@student', 'student'),
(3, 'juliana@admin', '123'),
(5, 'clarq@admin', '123'),
(7, 'rhea@admin', '123');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `school_profile`
--
ALTER TABLE `school_profile`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_background`
--
ALTER TABLE `tbl_background`
  ADD PRIMARY KEY (`Bg_id`);

--
-- Indexes for table `tbl_cardcontent`
--
ALTER TABLE `tbl_cardcontent`
  ADD PRIMARY KEY (`cardcontent_id`);

--
-- Indexes for table `tbl_card_images`
--
ALTER TABLE `tbl_card_images`
  ADD PRIMARY KEY (`card&images_id`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`userID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `school_profile`
--
ALTER TABLE `school_profile`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_background`
--
ALTER TABLE `tbl_background`
  MODIFY `Bg_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_cardcontent`
--
ALTER TABLE `tbl_cardcontent`
  MODIFY `cardcontent_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_card_images`
--
ALTER TABLE `tbl_card_images`
  MODIFY `card&images_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `userID` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
