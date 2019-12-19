-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 19, 2019 at 11:03 AM
-- Server version: 10.1.32-MariaDB
-- PHP Version: 5.6.36

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `nodejs_rest`
--

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `father_name` varchar(200) NOT NULL,
  `program` varchar(100) NOT NULL,
  `contact` varchar(200) NOT NULL,
  `email` varchar(100) NOT NULL,
  `address` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`id`, `name`, `father_name`, `program`, `contact`, `email`, `address`) VALUES
(1, 'Khuaam Abbasi', 'Naeem Abbasi', 'BBA', '', 'khurramit@gmail.com', 'Khanpur Haripur'),
(2, 'Mohsin Ali', 'Abdual Khalid', 'BSSE', '', 'mohsinali@gmail.com', 'Abbottabad'),
(4, 'Mohiab Ahmed', 'Abdullah Malik', 'BBA', '', 'malik@gmail.com', 'Abbottabad'),
(6, 'ALI', 'Ahmed', 'BBA', '', 'ali@hmail.com', 'Abbottabad'),
(7, 'Mujeeb Ahmed', 'CH Rehmat Ali', 'MA Urdu', '', 'mujeeb@hmail.com', 'Lahore'),
(8, 'Imram Khan Niazi', 'Ishfaq Ahmed Niazi', 'MA Political Science', '', 'ik@hmail.com', 'Lahore'),
(9, 'Saad Zaman', 'Akhtar Zaman', 'MA Political Science', '', 'sd@hmail.com', 'Lahore'),
(11, 'Saad Zaman', 'Akhtar Zaman', 'MA Political Science', '099056341243', 'sd@hmail.com', 'Lahore'),
(12, 'Saad Zaman Abbasi', 'Naeem Abbasi', 'BBA', '03332312345', 'khurramit@gmail.com', 'Khanpur Haripur');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
