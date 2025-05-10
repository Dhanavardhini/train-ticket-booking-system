-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3310
-- Generation Time: Feb 15, 2025 at 12:49 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `busbook`
--
CREATE DATABASE IF NOT EXISTS `busbook` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `busbook`;

-- --------------------------------------------------------

--
-- Table structure for table `busbook`
--

CREATE TABLE `busbook` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `phone` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `from` varchar(200) NOT NULL,
  `to` varchar(200) NOT NULL,
  `date` varchar(200) NOT NULL,
  `bustype` varchar(200) NOT NULL,
  `tickets` varchar(200) NOT NULL,
  `price` varchar(200) NOT NULL,
  `payment` varchar(200) NOT NULL,
  `status` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `busbook`
--

INSERT INTO `busbook` (`id`, `name`, `phone`, `email`, `from`, `to`, `date`, `bustype`, `tickets`, `price`, `payment`, `status`) VALUES
(1, 'akshu', '6380134916', 'akshu@gmail.com', 'goa', 'chennai', '23-10-2025', 'sleeper', '1', '450', 'online', 'Approved'),
(2, 'haris', '6380134916', 'haric@gmail.com', 'chennai', 'goa', '23-5-2025', 'nonac', '3', '890', 'online', 'pending'),
(3, 'ganesh', '6380134916', 'akshu@gmail.com', 'goa', 'chennai', '23/10/2025', 'sleeper', '2', '450', 'online', 'confirmed'),
(5, 'subha', '6380134916', 'subha@gmail.com', 'CHENNAI', 'GOA', '2025-02-12', 'Non-AC', '2', '1700', 'Credit Card', 'Approved');

-- --------------------------------------------------------

--
-- Table structure for table `busimg`
--

CREATE TABLE `busimg` (
  `id` int(11) NOT NULL,
  `bus_name` varchar(200) NOT NULL,
  `from` varchar(200) NOT NULL,
  `to` varchar(200) NOT NULL,
  `date` varchar(100) NOT NULL,
  `bus_type` varchar(200) NOT NULL,
  `price` varchar(200) NOT NULL,
  `file` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `busimg`
--

INSERT INTO `busimg` (`id`, `bus_name`, `from`, `to`, `date`, `bus_type`, `price`, `file`) VALUES
(1, 'KPN TRAVELS', 'CHENNAI', 'GOA', '23-5-2025', 'AC', '850', '../upload/67a9cc2c3d317-buses.jpg'),
(2, 'RATHIMEENA TRAVELS', 'MADURAI', 'TRICHY', '30-5-2025', 'AC', '590', '../upload/67a9dd82877a0-bu.jpg'),
(3, 'SKY TRAVELS', 'COIMBATORE', 'KUMBAKONAM', '01-2-2025', 'AC', '1200', '../upload/67a9ddc290cbb-bus4.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE `register` (
  `username` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`username`, `email`, `password`) VALUES
('Akshaya', 'akshu@gmail.com', '123456'),
('', '', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `busbook`
--
ALTER TABLE `busbook`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `busimg`
--
ALTER TABLE `busimg`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `busbook`
--
ALTER TABLE `busbook`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `busimg`
--
ALTER TABLE `busimg`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- Database: `data`
--
CREATE DATABASE IF NOT EXISTS `data` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `data`;

-- --------------------------------------------------------

--
-- Table structure for table `signup`
--

CREATE TABLE `signup` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `signup`
--

INSERT INTO `signup` (`id`, `name`, `email`, `password`) VALUES
(1, 'dhanam', 'dhanam2@gmail.com', '12345');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `signup`
--
ALTER TABLE `signup`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `signup`
--
ALTER TABLE `signup`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- Database: `data_backend`
--
CREATE DATABASE IF NOT EXISTS `data_backend` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `data_backend`;

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE `register` (
  `username` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`username`, `email`, `password`) VALUES
('dhanm', 'dhanm@gmail.com', '12345');
--
-- Database: `employeemanage`
--
CREATE DATABASE IF NOT EXISTS `employeemanage` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `employeemanage`;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`name`, `password`) VALUES
('admin@gmail.com', 'dfghj'),
('admin@gmail.com', 'hgghhj'),
('admin@gmail.com', 'adminasd'),
('admin@gmail.com', '12345'),
('admin@gmail.com', 'asdfggb'),
('admin@gmail.com', 'asdcvb'),
('admin@gmail.com', 'admin23'),
('admin@gmail.com', 'asdfg'),
('admin@gmail.com', 'asdfggh'),
('admin@gmail.com', 'asdfg'),
('admin@gmail.com', 'adminer'),
('admin@gmail.com', 'admin1');

-- --------------------------------------------------------

--
-- Table structure for table `entryform`
--

CREATE TABLE `entryform` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `dep` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `entryform`
--

INSERT INTO `entryform` (`id`, `name`, `dep`, `email`) VALUES
(1, 'Akshaya', 'web Development', 'akshaya@gmail.com'),
(2, 'harish', 'software Development', 'haric@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `leave`
--

CREATE TABLE `leave` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `email` varchar(255) NOT NULL,
  `dep` varchar(255) NOT NULL,
  `from_date` varchar(255) NOT NULL,
  `to_date` varchar(255) NOT NULL,
  `leavetype` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `leave`
--

INSERT INTO `leave` (`id`, `name`, `email`, `dep`, `from_date`, `to_date`, `leavetype`) VALUES
(1, 'Haris', 'haric@gmail.com', 'software Development', '2024-05-23', '2024-05-28', 'vacation'),
(2, 'Akshaya', 'Akshaya@gmail.com', 'software Development', '2024-12-09', '2024-12-03', 'sick');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`name`, `password`) VALUES
('akshu@gmail.com', 'asdfgh');

-- --------------------------------------------------------

--
-- Table structure for table `userdetails`
--

CREATE TABLE `userdetails` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `dep` varchar(255) NOT NULL,
  `position` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` int(250) NOT NULL,
  `leavedate` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `userdetails`
--

INSERT INTO `userdetails` (`id`, `name`, `dep`, `position`, `email`, `phone`, `leavedate`, `status`) VALUES
(1, 'anu', 'Front-End-Development', 'Junior Developer', 'anu@gmail.com', 2147483647, '16/12/2024', 'absent'),
(2, 'Akshaya', 'Front-End-Development', 'Senior developer', 'akshaya@gmail.com', 2147483647, '16/12/2024', 'absent');

-- --------------------------------------------------------

--
-- Table structure for table `webdevelopment`
--

CREATE TABLE `webdevelopment` (
  `id` int(11) NOT NULL,
  `depname` varchar(255) NOT NULL,
  `employees` varchar(255) NOT NULL,
  `manager` varchar(255) NOT NULL,
  `tl` varchar(255) NOT NULL,
  `branch` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `webdevelopment`
--

INSERT INTO `webdevelopment` (`id`, `depname`, `employees`, `manager`, `tl`, `branch`) VALUES
(2, 'web Development', '10', 'Anu', 'Monika', 'chennai'),
(3, 'Front-End Development', '5', 'Ragul', 'Subha', 'Bangalore'),
(4, 'Back-End Development', '8', 'Nivetha', 'Surya', 'Hydrabad');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `entryform`
--
ALTER TABLE `entryform`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `leave`
--
ALTER TABLE `leave`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userdetails`
--
ALTER TABLE `userdetails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `webdevelopment`
--
ALTER TABLE `webdevelopment`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `entryform`
--
ALTER TABLE `entryform`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `leave`
--
ALTER TABLE `leave`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `userdetails`
--
ALTER TABLE `userdetails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `webdevelopment`
--
ALTER TABLE `webdevelopment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- Database: `eventbook`
--
CREATE DATABASE IF NOT EXISTS `eventbook` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `eventbook`;

-- --------------------------------------------------------

--
-- Table structure for table `enterbook`
--

CREATE TABLE `enterbook` (
  `id` int(200) NOT NULL,
  `name` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `phone` varchar(200) NOT NULL,
  `event` varchar(200) NOT NULL,
  `tickets` varchar(200) NOT NULL,
  `event_date` varchar(150) NOT NULL,
  `time` varchar(100) NOT NULL,
  `payment` varchar(100) NOT NULL,
  `price` varchar(200) NOT NULL,
  `status` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `enterbook`
--

INSERT INTO `enterbook` (`id`, `name`, `email`, `phone`, `event`, `tickets`, `event_date`, `time`, `payment`, `price`, `status`) VALUES
(2, 'akshaya', 'akshu@gmail.com', '9159783990', 'musicshow', '1', '22/1/2025', '12.30', 'cash', '1200', 'approved'),
(3, 'Monika', 'kanmani@gmail.com', '7890654326', 'musicshow', '1', '2024-03-02', '23:05', 'cash', '1000', 'Pending'),
(4, 'makesh', 'makesh@gmail.com', '7890654326', 'Music Show', '2', '2025-02-05', '02:05', 'cash', '1440', 'approved');

-- --------------------------------------------------------

--
-- Table structure for table `eventsimg`
--

CREATE TABLE `eventsimg` (
  `id` int(11) NOT NULL,
  `event_type` varchar(100) NOT NULL,
  `event_date` varchar(100) NOT NULL,
  `price` varchar(250) NOT NULL,
  `event_status` varchar(200) NOT NULL,
  `file` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `eventsimg`
--

INSERT INTO `eventsimg` (`id`, `event_type`, `event_date`, `price`, `event_status`, `file`) VALUES
(1, 'Music Show', '2025-01-05', '720', 'Upcoming', '../upload/67a08e79931c7-mu.jpeg'),
(2, 'Fasion Show', '2025-04-07', '550', 'Upcoming', '../upload/67a08f857ee16-fa.jpeg'),
(4, 'Comedy Show', '2025-05-02', '1000', 'Upcoming', '../upload/67a0947000f8b-com.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `funbook`
--

CREATE TABLE `funbook` (
  `id` int(200) NOT NULL,
  `name` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `phone` varchar(200) NOT NULL,
  `event` varchar(200) NOT NULL,
  `tickets` varchar(200) NOT NULL,
  `event_date` varchar(200) NOT NULL,
  `time` varchar(155) NOT NULL,
  `payment` varchar(155) NOT NULL,
  `price` varchar(200) NOT NULL,
  `status` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `funbook`
--

INSERT INTO `funbook` (`id`, `name`, `email`, `phone`, `event`, `tickets`, `event_date`, `time`, `payment`, `price`, `status`) VALUES
(1, 'harish', 'harisc@gmail.com', '9159783990', 'musicshow', '1', '22/1/2025', '12.30', 'cash', '1200', 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `funimg`
--

CREATE TABLE `funimg` (
  `id` int(200) NOT NULL,
  `event_type` varchar(200) NOT NULL,
  `event_date` varchar(200) NOT NULL,
  `price` varchar(200) NOT NULL,
  `event_status` varchar(200) NOT NULL,
  `file` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `funimg`
--

INSERT INTO `funimg` (`id`, `event_type`, `event_date`, `price`, `event_status`, `file`) VALUES
(1, 'Wedding Reception', '2025-04-01', '5000', 'Upcoming', '../upload/67a0a7e65f5fb-w1.jpeg'),
(2, 'Birthday Party', '2025-06-10', '5000', 'Upcoming', '../upload/67a0a83c4c4a8-w2.jpeg'),
(4, 'Anniversary Celebration', '2025-05-02', '15500', 'Upcoming', '../upload/67a0aa1ae13dd-w3.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE `register` (
  `username` varchar(150) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`username`, `email`, `password`) VALUES
('akshu', 'akshu@gmail.com', '123456'),
('haris', 'haric@gmail.com', '123456');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `enterbook`
--
ALTER TABLE `enterbook`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `eventsimg`
--
ALTER TABLE `eventsimg`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `funbook`
--
ALTER TABLE `funbook`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `funimg`
--
ALTER TABLE `funimg`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `enterbook`
--
ALTER TABLE `enterbook`
  MODIFY `id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `eventsimg`
--
ALTER TABLE `eventsimg`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `funbook`
--
ALTER TABLE `funbook`
  MODIFY `id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `funimg`
--
ALTER TABLE `funimg`
  MODIFY `id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- Database: `flightbook`
--
CREATE DATABASE IF NOT EXISTS `flightbook` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `flightbook`;

-- --------------------------------------------------------

--
-- Table structure for table `businessbook`
--

CREATE TABLE `businessbook` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `departure` varchar(255) NOT NULL,
  `destination` varchar(255) NOT NULL,
  `tickets` varchar(255) NOT NULL,
  `date` varchar(255) NOT NULL,
  `price` varchar(200) NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `businessbook`
--

INSERT INTO `businessbook` (`id`, `name`, `email`, `phone`, `departure`, `destination`, `tickets`, `date`, `price`, `status`) VALUES
(3, 'Akshaya', 'akshu@gmail.com', '6380134916', 'chennai', 'trichy', '2', '23/5/2025', '25,000', 'not approved'),
(4, 'monika', 'moni@gmail.com', '7418663540', 'combatore', 'madurai', '2', '20251-03-02', '40000', 'approved'),
(6, 'Moni', 'makesh123@gmail.com', '999999999', 'chennai', 'usa', '1', '2025-02-28', '199999', 'approved');

-- --------------------------------------------------------

--
-- Table structure for table `fbook`
--

CREATE TABLE `fbook` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `departure` varchar(255) NOT NULL,
  `destination` varchar(255) NOT NULL,
  `tickets` varchar(255) NOT NULL,
  `date` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `fbook`
--

INSERT INTO `fbook` (`id`, `name`, `email`, `phone`, `departure`, `destination`, `tickets`, `date`, `price`, `status`) VALUES
(1, 'Dhanam', 'anu@gmail.com', '6380134916', 'chennai', 'trichy', '7', '23/5/2025', '350', 'not approved'),
(2, 'swathi', 'swathi@gmail.com', '7890654326', 'Goa', 'hyderabad', '1', '2025-03-02', '25000', 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `ft`
--

CREATE TABLE `ft` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `brand` varchar(255) NOT NULL,
  `file` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ft`
--

INSERT INTO `ft` (`id`, `name`, `price`, `brand`, `file`) VALUES
(1, 'Indigo', '10000', 'Madurai to Chennai', '../upload/6799faf84d3ed-f4.jpeg'),
(2, 'Air indians', '6000', 'Trichy to Madurai', '../upload/6799fb5a72af5-f5.jpeg'),
(3, 'United Airlines', '25000', 'Goa to Hyderabad', '../upload/6799fbe78b3ff-f6.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `img`
--

CREATE TABLE `img` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `brand` varchar(255) NOT NULL,
  `file` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `img`
--

INSERT INTO `img` (`id`, `name`, `price`, `brand`, `file`) VALUES
(1, 'indian airlines', '25000', 'Coimbatore to Chennai', '../upload/678f881becde9-f1.jpg'),
(2, 'Indigo', '25000', 'Mumbai to Delhi', '../upload/678f8ffe8a331-f2.jpg'),
(3, 'Delta Airlines', '20000', 'Delhi to Chennai', '../upload/6799ff69dc734-f7.jpeg'),
(4, 'boeing', '199999', 'chennai to usa', '../upload/67a776e8e7468-a1.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE `register` (
  `id` int(200) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`id`, `username`, `email`, `password`) VALUES
(4, 'akshaya', 'akshu@gmail.com', 'haris'),
(23, 'akshu', 'akshu@gmail.com', '123456');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `businessbook`
--
ALTER TABLE `businessbook`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fbook`
--
ALTER TABLE `fbook`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ft`
--
ALTER TABLE `ft`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `img`
--
ALTER TABLE `img`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `register`
--
ALTER TABLE `register`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `businessbook`
--
ALTER TABLE `businessbook`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `fbook`
--
ALTER TABLE `fbook`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `ft`
--
ALTER TABLE `ft`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `img`
--
ALTER TABLE `img`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `register`
--
ALTER TABLE `register`
  MODIFY `id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- Database: `gym`
--
CREATE DATABASE IF NOT EXISTS `gym` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `gym`;

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`name`, `password`) VALUES
('akshu@gmail.com', '123456'),
('akshu@gmail.com', 'asdfghj'),
('akshu@gmail.com', 'adfghj'),
('akshu@gmail.com', 'hghkuhi'),
('akshu@gmail.com', 'akshaya'),
('akshu@gmail.com', 'asdfgh'),
('akshu@gmail.com', '123456');

-- --------------------------------------------------------

--
-- Table structure for table `newuser`
--

CREATE TABLE `newuser` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `age` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `date` varchar(255) NOT NULL,
  `member` varchar(255) NOT NULL,
  `payment` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `newuser`
--

INSERT INTO `newuser` (`id`, `name`, `age`, `gender`, `city`, `phone`, `date`, `member`, `payment`) VALUES
(1, 'anu', '23', 'female', 'ariyalur', '9159783990', '23/5/2024', '1months', 'online'),
(2, 'dhanam', '23', 'Female', 'kumbakonam', '7890654326', '2024-05-04', '1 Month', 'Cash'),
(3, 'Monika', '23', 'Female', 'bangalore', '6380134916', '2024-07-05', '1 Month', 'Cash');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `id` int(255) NOT NULL,
  `file` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `jd` varchar(255) NOT NULL,
  `fees` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`id`, `file`, `name`, `jd`, `fees`) VALUES
(1, '../upload/6770ee97e86d9-p.jpeg', 'Anusri', '23/05/2024', '22000'),
(2, '../upload/6770f12cca0a8-p.jpeg', 'Hema', '10/05/2024', '10000'),
(3, '../upload/6770f15c8b5ea-p.jpeg', 'Ragul', '12/10/2025', '20000'),
(4, '../upload/6770f1764c12a-p.jpeg', 'Kathiravan', '20/9/2025', '12000'),
(5, '../upload/6770f1a4c51c9-p.jpeg', 'Ganesh', '2/8/2024', '5000'),
(6, '../upload/6770f1bc5ddc5-p.jpeg', 'Makesh', '4/8/2024', '12000'),
(7, '../upload/6770f778d6201-p.jpeg', 'Tesa', '4/8/2024', '12000');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `imgp` varchar(255) NOT NULL,
  `name` varchar(250) NOT NULL,
  `phone` varchar(250) NOT NULL,
  `jd` varchar(250) NOT NULL,
  `expired` varchar(250) NOT NULL,
  `imgr` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `imgp`, `name`, `phone`, `jd`, `expired`, `imgr`) VALUES
(2, '../upload/6766db975e15e-pr.jpeg', 'Nivetha', '9094407981', '2/10/2024', '10/10/2024', '../upload/6767f091c812e-rene.jpeg'),
(3, '../upload/6766db975e15e-pr.jpeg', 'Ragul', '7418663540', '2/10/2024', '10/10/2024', '../upload/6767f091c812e-rene.jpeg\r\n');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `newuser`
--
ALTER TABLE `newuser`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
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
-- AUTO_INCREMENT for table `newuser`
--
ALTER TABLE `newuser`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- Database: `hotel`
--
CREATE DATABASE IF NOT EXISTS `hotel` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `hotel`;

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

CREATE TABLE `book` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `number_of_days` int(255) NOT NULL,
  `from_date` varchar(255) NOT NULL,
  `to_date` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `book`
--

INSERT INTO `book` (`id`, `name`, `email`, `phone`, `number_of_days`, `from_date`, `to_date`, `price`, `status`) VALUES
(4, 'Dhanam', 'dhanam@gmail.com', '6380134916', 4, '2024-05-03', '2025-04-24', '40000', 'confimed'),
(5, 'swathi', 'anui@gmail.com', '543216788', 2, '2024-04-03', '2024-04-05', '30000', 'Pending'),
(6, 'Monika', 'moni@gmail.com', '6380134916', 4, '2024-05-03', '2024-05-06', '80000', 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `image`
--

CREATE TABLE `image` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` varchar(200) NOT NULL,
  `max` varchar(200) NOT NULL,
  `file` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `image`
--

INSERT INTO `image` (`id`, `name`, `price`, `max`, `file`) VALUES
(1, 'Double Room', '15000', '5', '../upload/676511d1c4991-room1.jpg'),
(2, 'Single Room', '10000', '3', '../upload/6765121c16432-room2.jpg'),
(3, 'Suite Room', '20000', '8', '../upload/6765124be084a-room3.jpg'),
(4, 'Double Room', '15 000', '5', '../upload/6765127ad18f3-room4.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE `register` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`id`, `username`, `email`, `password`) VALUES
(1, 'Akshaya', 'akshu@gmail.com', '123456');

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`id`, `name`, `phone`, `email`) VALUES
(1, 'anu', '9094407980', 'hema@gmail.com'),
(2, 'Gowri', '6380134916', 'gowri@gmail.com'),
(4, 'Monika', '6379106669', 'moni@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `image`
--
ALTER TABLE `image`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `register`
--
ALTER TABLE `register`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `book`
--
ALTER TABLE `book`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `image`
--
ALTER TABLE `image`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `register`
--
ALTER TABLE `register`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- Database: `housebook`
--
CREATE DATABASE IF NOT EXISTS `housebook` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `housebook`;

-- --------------------------------------------------------

--
-- Table structure for table `apartimg`
--

CREATE TABLE `apartimg` (
  `id` int(200) NOT NULL,
  `title` varchar(250) NOT NULL,
  `description` varchar(250) NOT NULL,
  `price` int(250) NOT NULL,
  `file` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `apartimg`
--

INSERT INTO `apartimg` (`id`, `title`, `description`, `price`, `file`) VALUES
(6, 'Maple Grove Apartments', '✔ 2 Bedrooms & 2 Bathrooms\r\n', 25000, '../upload/67a35420a7481-a1.jpeg'),
(8, 'Silverstone Apartments', 'Luxurious 2BHK Apartment in City Center\r\n', 300000, '../upload/67a765403903e-a2.jpeg'),
(9, 'Maple Grove Apartments', 'Fully Furnished with Modern Interiors', 5000000, '../upload/67a765ce36e49-a3.jpeg'),
(10, 'Riverside Flats', '1, 2, and 3-bedroom apartments', 520000, '../upload/67a76cbf5faf5-a4.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `bookapart`
--

CREATE TABLE `bookapart` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `phone` varchar(200) NOT NULL,
  `stay_duration` varchar(255) NOT NULL,
  `no_of_guests` varchar(200) NOT NULL,
  `payment` varchar(100) NOT NULL,
  `apartment_name` varchar(100) NOT NULL,
  `price` varchar(200) NOT NULL,
  `status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bookapart`
--

INSERT INTO `bookapart` (`id`, `name`, `email`, `phone`, `stay_duration`, `no_of_guests`, `payment`, `apartment_name`, `price`, `status`) VALUES
(1, 'akshaya', 'akshu@gmail.com', '6380134916', '2', '3', 'cash', 'sapre apartments', '25000', 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `bookvilla`
--

CREATE TABLE `bookvilla` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(200) NOT NULL,
  `phone` varchar(200) NOT NULL,
  `stay_duration` varchar(100) NOT NULL,
  `no_of_guests` varchar(100) NOT NULL,
  `payment` varchar(100) NOT NULL,
  `apartment_name` varchar(100) NOT NULL,
  `price` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bookvilla`
--

INSERT INTO `bookvilla` (`id`, `name`, `email`, `phone`, `stay_duration`, `no_of_guests`, `payment`, `apartment_name`, `price`, `status`) VALUES
(1, 'akshaya', 'akshu@gmail.com', '9159783990', '1', '1', 'cash', 'Serene Haven Villa', '35000', 'approved'),
(2, 'makesh', 'makesh123@gmail.com', '7890654326', '1', '1', 'creditcard', 'Ocean Breeze Villa', '100000', 'Pending');

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE `register` (
  `id` int(11) NOT NULL,
  `username` varchar(150) NOT NULL,
  `email` varchar(150) NOT NULL,
  `password` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`id`, `username`, `email`, `password`) VALUES
(1, 'Akshaya', 'akshu@gmail.com', '123456'),
(2, 'kavya', 'kavya@gmail.com', '123456'),
(3, 'dhanam', 'dhanm@gmail.com', '1234');

-- --------------------------------------------------------

--
-- Table structure for table `villaimg`
--

CREATE TABLE `villaimg` (
  `id` int(200) NOT NULL,
  `title` varchar(250) NOT NULL,
  `description` varchar(250) NOT NULL,
  `price` varchar(250) NOT NULL,
  `file` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `villaimg`
--

INSERT INTO `villaimg` (`id`, `title`, `description`, `price`, `file`) VALUES
(5, 'Serene Haven Villa', 'nature-surrounded villa', '35000', '../upload/67a76e86167b5-v1.jpg'),
(6, 'Ocean Breeze Villa', 'countryside villa perfect for a quiet getaway', '100000', '../upload/67a76edece47f-v2.jpg'),
(7, 'Sunset Horizon Villa', 'waterfront villa with modern comforts', '65000', '../upload/67a76f0e4fb21-v3.jpg'),
(8, 'Royal Orchid Villa', 'premium villa with elegant interiors', '450000', '../upload/67a76f3dcfc7a-v4.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `apartimg`
--
ALTER TABLE `apartimg`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bookapart`
--
ALTER TABLE `bookapart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bookvilla`
--
ALTER TABLE `bookvilla`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `register`
--
ALTER TABLE `register`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `villaimg`
--
ALTER TABLE `villaimg`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `apartimg`
--
ALTER TABLE `apartimg`
  MODIFY `id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `bookapart`
--
ALTER TABLE `bookapart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `bookvilla`
--
ALTER TABLE `bookvilla`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `register`
--
ALTER TABLE `register`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `villaimg`
--
ALTER TABLE `villaimg`
  MODIFY `id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- Database: `movie`
--
CREATE DATABASE IF NOT EXISTS `movie` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `movie`;

-- --------------------------------------------------------

--
-- Table structure for table `action`
--

CREATE TABLE `action` (
  `name` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `ceats` varchar(255) NOT NULL,
  `file` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `action`
--

INSERT INTO `action` (`name`, `price`, `ceats`, `file`) VALUES
('War', '240', '100', '../upload/67737d9d795c4-a1.jpeg'),
('The violent Breed', '180', '150', '../upload/67737ddee7b64-a2.jpeg'),
('Fall out', '120', '200', '../upload/67737e037f81b-a3.jpeg'),
('The Man from Toranto', '150', '500', '../upload/67737e3d7c7c2-a4.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `horror`
--

CREATE TABLE `horror` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `ceats` varchar(255) NOT NULL,
  `file` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `horror`
--

INSERT INTO `horror` (`id`, `name`, `price`, `ceats`, `file`) VALUES
(1, 'conjuring', '150', '100', '../upload/67727981969c9-h1.jpeg'),
(2, 'Dragula', '150', '100', '../upload/67727a970fd8c-h2.jpeg'),
(3, 'Fright night', '230', '150', '../upload/67727b0a81541-h3.jpeg'),
(4, 'smile', '170', '230', '../upload/67727ae0c6346-h4.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `kids`
--

CREATE TABLE `kids` (
  `id` int(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `ceats` varchar(255) NOT NULL,
  `file` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kids`
--

INSERT INTO `kids` (`id`, `name`, `price`, `ceats`, `file`) VALUES
(1, 'chotobeem', '250', '20', '../upload/6772530e93726-kid.jpeg'),
(2, 'mufasa', '250', '20', '../upload/677275005f300-k2.jpeg'),
(3, 'kids aliens', '180', '200', '../upload/67727f1c28a7e-k3.jpeg'),
(4, 'Toystory', '250', '45', '../upload/67727f3fe5c42-k4.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `ticket`
--

CREATE TABLE `ticket` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `count` varchar(255) NOT NULL,
  `mname` varchar(255) NOT NULL,
  `mtype` varchar(255) NOT NULL,
  `time` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ticket`
--

INSERT INTO `ticket` (`id`, `name`, `phone`, `count`, `mname`, `mtype`, `time`, `price`, `status`) VALUES
(1, 'Ganesh', '1234567890', '3', 'chotaBheem', 'kids', '10.00', '300', 'confirmed'),
(2, 'Anu', '7418663540', '120', 'chootabeem', 'kids', '01:40', '350', 'completed'),
(4, 'anas', '7890654326', '2', 'mufasa', 'Kids', '02:10', '500', 'pending'),
(5, 'dhanam', '6380134916', '1', 'conjuring', 'Horror', '06:14', '150', 'pending'),
(6, 'Haris', '9500300481', '2', 'The violent Breed', 'action', '23:10', '360', 'completed'),
(7, 'Akshaya', '6380134916', '1', 'War', 'action', '01:00', '480', 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `username` varchar(255) NOT NULL,
  `email` varchar(150) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`username`, `email`, `password`) VALUES
('Akshaya', 'akshu@gmail.com', '123456');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `horror`
--
ALTER TABLE `horror`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kids`
--
ALTER TABLE `kids`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ticket`
--
ALTER TABLE `ticket`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `horror`
--
ALTER TABLE `horror`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `kids`
--
ALTER TABLE `kids`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `ticket`
--
ALTER TABLE `ticket`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- Database: `onlinebirthproject`
--
CREATE DATABASE IF NOT EXISTS `onlinebirthproject` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `onlinebirthproject`;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`username`, `password`) VALUES
('admin@gmail.com', 'admin123'),
('admin@gmail.com', 'asdfgh');

-- --------------------------------------------------------

--
-- Table structure for table `birth`
--

CREATE TABLE `birth` (
  `name` varchar(255) NOT NULL,
  `date_of_birth` varchar(255) NOT NULL,
  `place_of_birth` varchar(255) NOT NULL,
  `parents_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `birth`
--

INSERT INTO `birth` (`name`, `date_of_birth`, `place_of_birth`, `parents_name`) VALUES
('subha', '2024-02-23', 'kumbakonam', 'senbba'),
('akshaya', '2000-05-26', 'ariyalur', 'sentamil selvan');

-- --------------------------------------------------------

--
-- Table structure for table `death`
--

CREATE TABLE `death` (
  `name` varchar(255) NOT NULL,
  `date_of_death` varchar(255) NOT NULL,
  `place_of_death` varchar(255) NOT NULL,
  `cause_of_death` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `death`
--

INSERT INTO `death` (`name`, `date_of_death`, `place_of_death`, `cause_of_death`) VALUES
('ramu', '2024-03-23', 'trichy', 'cancer');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`email`, `password`) VALUES
('akshata26051999@gmail.com', 'asdfgh'),
('akshata26051999@gmail.com', 'asdfghj');
--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Table structure for table `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) NOT NULL DEFAULT '',
  `user` varchar(255) NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `query` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Table structure for table `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) NOT NULL,
  `col_name` varchar(64) NOT NULL,
  `col_type` varchar(64) NOT NULL,
  `col_length` text DEFAULT NULL,
  `col_collation` varchar(64) NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) DEFAULT '',
  `col_default` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Table structure for table `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `column_name` varchar(64) NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `transformation` varchar(255) NOT NULL DEFAULT '',
  `transformation_options` varchar(255) NOT NULL DEFAULT '',
  `input_transformation` varchar(255) NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) NOT NULL,
  `settings_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Table structure for table `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL,
  `export_type` varchar(10) NOT NULL,
  `template_name` varchar(64) NOT NULL,
  `template_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Table structure for table `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db` varchar(64) NOT NULL DEFAULT '',
  `table` varchar(64) NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) NOT NULL,
  `item_name` varchar(64) NOT NULL,
  `item_type` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Table structure for table `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Dumping data for table `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"busbook\",\"table\":\"register\"},{\"db\":\"busbook\",\"table\":\"busbook\"},{\"db\":\"busbook\",\"table\":\"busimg\"},{\"db\":\"vechile_system\",\"table\":\"user\"},{\"db\":\"housebook\",\"table\":\"bookvilla\"},{\"db\":\"housebook\",\"table\":\"bookapart\"}]');

-- --------------------------------------------------------

--
-- Table structure for table `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) NOT NULL DEFAULT '',
  `master_table` varchar(64) NOT NULL DEFAULT '',
  `master_field` varchar(64) NOT NULL DEFAULT '',
  `foreign_db` varchar(64) NOT NULL DEFAULT '',
  `foreign_table` varchar(64) NOT NULL DEFAULT '',
  `foreign_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Table structure for table `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `search_name` varchar(64) NOT NULL DEFAULT '',
  `search_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `display_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `prefs` text NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

-- --------------------------------------------------------

--
-- Table structure for table `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text NOT NULL,
  `schema_sql` text DEFAULT NULL,
  `data_sql` longtext DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data for table `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2025-02-10 10:59:47', '{\"Console\\/Mode\":\"collapse\"}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) NOT NULL,
  `tab` varchar(64) NOT NULL,
  `allowed` enum('Y','N') NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Table structure for table `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) NOT NULL,
  `usergroup` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indexes for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexes for table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indexes for table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexes for table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexes for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indexes for table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexes for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexes for table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexes for table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexes for table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexes for table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexes for table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
--
-- Database: `tourmanage`
--
CREATE DATABASE IF NOT EXISTS `tourmanage` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `tourmanage`;

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `phone` varchar(200) NOT NULL,
  `arrival_date` varchar(200) NOT NULL,
  `departure` varchar(200) NOT NULL,
  `number_of_days` int(200) NOT NULL,
  `price` varchar(200) NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`id`, `name`, `email`, `phone`, `arrival_date`, `departure`, `number_of_days`, `price`, `status`) VALUES
(5, 'hariswaran', 'hari@gmail.com', '9500300481', '2024-05-24', '2024-05-25', 3, '30000', 'Approved');

-- --------------------------------------------------------

--
-- Table structure for table `roomimage`
--

CREATE TABLE `roomimage` (
  `id` int(11) NOT NULL,
  `packname` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `file` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `roomimage`
--

INSERT INTO `roomimage` (`id`, `packname`, `city`, `price`, `file`) VALUES
(4, 'Vacation package', 'Goa', '15000', '../upload/675d56f24addd-goa.jpg'),
(5, 'Family Package', 'kashmir', '12000', '../upload/675d5ed6c6948-kashmir.jpg'),
(6, 'Tour Package', 'shimla', '25000', '../upload/675d60351e6b1-shimla.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `username` varchar(200) NOT NULL,
  `email` varchar(150) NOT NULL,
  `password` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`username`, `email`, `password`) VALUES
('akshaya', 'akshu@gmail.com', '123456'),
('haris', 'haric@gmail.com', '123456'),
('makesh', 'makesh123@gmail.com', 'Makesh282@');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roomimage`
--
ALTER TABLE `roomimage`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `booking`
--
ALTER TABLE `booking`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `roomimage`
--
ALTER TABLE `roomimage`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- Database: `trainbook`
--
CREATE DATABASE IF NOT EXISTS `trainbook` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `trainbook`;

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE `register` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`id`, `username`, `email`, `password`) VALUES
(1, 'akshaya', 'akshu@gmail.com', '123456'),
(2, 'haris', 'haric@gmail.com', '123456'),
(3, 'admin', 'admin@gmail.com', '123456');

-- --------------------------------------------------------

--
-- Table structure for table `train_book`
--

CREATE TABLE `train_book` (
  `id` int(200) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `train_name` varchar(100) NOT NULL,
  `from` varchar(100) NOT NULL,
  `to` varchar(100) NOT NULL,
  `tickets` varchar(100) NOT NULL,
  `date` varchar(100) NOT NULL,
  `price` varchar(100) NOT NULL,
  `payment` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `train_book`
--

INSERT INTO `train_book` (`id`, `name`, `email`, `phone`, `train_name`, `from`, `to`, `tickets`, `date`, `price`, `payment`, `status`) VALUES
(2, 'haris', 'haric@gmail.com', '9500300481', 'Anthiudaya Express', 'trichy', 'chennai', '2', '23-4-2025', '450', 'debitcard', 'confirmed'),
(3, 'Akshaya', 'akshu@gmail.com', '6380134916', 'Vaagai Express', 'goa', 'madurai', '2', '2025-05-23', '460', 'Net Banking', ''),
(4, 'Ganesh', 'ganesh@gmail.com', '6380134916', 'Vaagai Express', 'goa', 'madurai', '2', '2025-05-23', '460', 'Net Banking', '');

-- --------------------------------------------------------

--
-- Table structure for table `train_details`
--

CREATE TABLE `train_details` (
  `id` int(200) NOT NULL,
  `train_name` varchar(200) NOT NULL,
  `price` varchar(200) NOT NULL,
  `from` varchar(200) NOT NULL,
  `to` varchar(200) NOT NULL,
  `date` varchar(200) NOT NULL,
  `file` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `train_details`
--

INSERT INTO `train_details` (`id`, `train_name`, `price`, `from`, `to`, `date`, `file`) VALUES
(1, 'Rajdhani Express', '450', 'chennai', 'goa', '23-05-2025', '../upload/67add41b46ed5-t1.jpg'),
(2, 'Shatabdi Express', '350', 'delhi', 'chennai', '25-10-2025', '../upload/67add474c6416-t2.jpg'),
(3, 'Garib Rath Express', '500', 'madurai', 'trichy', '25-10-2025', '../upload/67add4be79a7b-t3.jpg'),
(4, 'Vaagai Express', '230', 'goa', 'madurai', '2025-05-23', '../upload/67af218c8091d-t1.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `register`
--
ALTER TABLE `register`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `train_book`
--
ALTER TABLE `train_book`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `train_details`
--
ALTER TABLE `train_details`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `register`
--
ALTER TABLE `register`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `train_book`
--
ALTER TABLE `train_book`
  MODIFY `id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `train_details`
--
ALTER TABLE `train_details`
  MODIFY `id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- Database: `vechile_system`
--
CREATE DATABASE IF NOT EXISTS `vechile_system` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `vechile_system`;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `name` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`name`, `password`) VALUES
('admin@gmail.com', 'asdfgf'),
('admin@gmail.com', 'anu123'),
('admin@gmail.com', 'admin1'),
('admin@gmail.com', 'admin1'),
('akshaya', 'asdfgh'),
('admin@gmail.com', 'admin1'),
('admin@gmail.com', 'admin1'),
('admin@gmail.com', 'admin1'),
('admin@gmail.com', 'admin1'),
('admin@gmail.com', 'admin1'),
('admin@gmail.com', 'asdfgh'),
('admin@gmail.com', 'asdfgh'),
('admin@gmail.com', 'admin1'),
('admin@gmail.com', 'admin1'),
('admin@gmail.com', 'admin1'),
('admin@gmail.com', 'admin1'),
('admin@gmail.com', 'admin1'),
('admin@gmail.com', 'asdfgh'),
('admin@gmail.com', 'admin1'),
('admin@gmail.com', 'admin1'),
('admin@gmail.com', 'admin1'),
('admin@gmail.com', 'admin1'),
('admin@gmail.com', 'admin1'),
('admin@gmail.com', 'admin1'),
('admin@gmail.com', 'admin1'),
('admin@gmail.com', 'admin1'),
('admin@gmail.com', 'asdfgh'),
('admin@gmail.com', 'admin1'),
('admin@gmail.com', 'admina'),
('admin@gmail.com', 'admin1'),
('admin@gmail.com', 'admin2'),
('admin123@gmail.com', '123456'),
('admin@gmail.com', '123456'),
('admin@gmail.com', 'admin1'),
('admin@gmail.com', 'admin1'),
('admin@gmail.com', 'admin1'),
('admin@gmail.com', 'asdfgh'),
('admin@gmail.com', 'admin1'),
('admin@gmail.com', 'admin1'),
('admin@gmail.com', 'admin1'),
('admin@gmail.com', 'admin1'),
('admin@gmail.com', 'admin1'),
('admin@gmail.com', 'admin1'),
('admin@gmail.com', '123456'),
('admin@gmail.com', '123456'),
('admin@gmail.com', '123456'),
('admin@gmail.com', 'admin1'),
('admin@gmail.com', 'admin1'),
('admin@gmail.com', 'admin1'),
('admin@gmail.com', '123456'),
('admin@gmail.com', '123455'),
('admin@gmail.com', '123456'),
('admin@gmail.com', '123456'),
('admin@gmail.com', '123456'),
('admin@gmail.com', '123456'),
('admin@gmail.com', '123456'),
('admin@gmail.com', '123456'),
('admin@gmail.com', 'admin1'),
('admin@gmail.com', '123456'),
('admin@gmail.com', '123456'),
('admin@gmail.com', '123456'),
('admin@gmail.com', '123456'),
('admin@gmail.com', '123456'),
('admin@gmail.com', '123456'),
('admin@gmail.com', '123456'),
('admin@gmail.com', '123456'),
('admin@gmail.com', '123456'),
('admin@gmail.com', '123456');

-- --------------------------------------------------------

--
-- Table structure for table `fourimage`
--

CREATE TABLE `fourimage` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `brand` varchar(255) NOT NULL,
  `file` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `fourimage`
--

INSERT INTO `fourimage` (`id`, `name`, `price`, `brand`, `file`) VALUES
(1, 'honda', '20000', 'suzuki', '../upload/67504095a7691-car1.jpg'),
(2, 'Rolesroys', '4000', 'moto', '../upload/675040d208e13-car2.jpg'),
(3, 'lambogini', '50000', 'toyoto', '../upload/675040e97f6c0-car3.jpg'),
(4, 'sumo', '6000', 'amaciter', '../upload/6750411b7306c-car4.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `fourwheel`
--

CREATE TABLE `fourwheel` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `phone` varchar(200) NOT NULL,
  `number_of_days` int(200) NOT NULL,
  `pickup_location` varchar(200) NOT NULL,
  `from_date` varchar(200) NOT NULL,
  `to_date` varchar(200) NOT NULL,
  `status` varchar(255) DEFAULT NULL,
  `price` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `fourwheel`
--

INSERT INTO `fourwheel` (`id`, `name`, `email`, `phone`, `number_of_days`, `pickup_location`, `from_date`, `to_date`, `status`, `price`) VALUES
(9, 'makesh', 'b@gmail.com', '9944429723', 23, 'chennai', '22/3/2024', '10/3/2024', 'pending', '1500'),
(21, 'ganesh', 'b@gmail.com', '9944429723', 23, 'chennai', '22/3/2024', '10/3/2024', 'completed', '2000'),
(22, 'ishu', 'ishu@gmail.com', '123456789', 4, 'ariyalur', '2024-03-02', '2024-03-03', 'pending', '16000'),
(23, 'bharani', 'bharani@gmail.com', '1234567890', 4, 'salem', '2024-05-03', '2024-06-04', 'pending', '80000'),
(24, 'Monika', 'anu@gmail.com', '9159783990', 3, 'kumbakonam', '2025-01-30', '2025-01-31', NULL, '60000');

-- --------------------------------------------------------

--
-- Table structure for table `image`
--

CREATE TABLE `image` (
  `id` int(200) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `brand` varchar(255) NOT NULL,
  `file` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `image`
--

INSERT INTO `image` (`id`, `name`, `price`, `brand`, `file`) VALUES
(1, 'honda', '2000', 'hero', '../upload/675042627770d-674ea1ab8e1d2-animal.jpg'),
(2, 'pulser', '4000', 'roys', '../upload/6750427c5649f-674da372bc9e3-th.jpg'),
(3, 'bullet', '5000', 'royal enfield', '../upload/675042c0d1196-674eb89326df1-one.jpg'),
(4, 'yamaha', '5000', 'tvs', '../upload/675042e2b6b02-674ef79a94937-cars.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `twowheelerbook`
--

CREATE TABLE `twowheelerbook` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `phone` varchar(200) NOT NULL,
  `number_of_days` int(200) NOT NULL,
  `pickup_location` varchar(200) NOT NULL,
  `from_date` varchar(200) NOT NULL,
  `to_date` varchar(200) NOT NULL,
  `Status` varchar(255) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `twowheelerbook`
--

INSERT INTO `twowheelerbook` (`id`, `name`, `email`, `phone`, `number_of_days`, `pickup_location`, `from_date`, `to_date`, `Status`, `price`) VALUES
(3, 'ganesh', 'b@gmail.com', '9944429723', 23, 'chennai', '22/3/2024', '10/3/2024', 'completed', '3000'),
(4, 'gowri', 'gowri@gmail.com', '9159783990', 12, 'chennai', '2024-03-12', '2024-03-13', 'completed', '2000'),
(7, 'moni', 'akshaya26@gmail.com', '6787989000', 3, 'salem', '2024-04-02', '2024-05-04', 'pending', '15000'),
(8, 'swathi', 'swathi@gmail.com', '1234567890', 3, 'kumbakonam', '2024-03-02', '2024-04-03', 'completed', '60000'),
(9, 'Akshaya', 'akshaya26@gmail.com', '9159783990', 2, 'ariyalur', '2024-03-01', '2024-03-02', 'pending', '8000'),
(10, 'rakshana', 'rakshana@gmail.com', '7418663540', 2, 'salem', '2024-05-02', '2024-03-03', NULL, '4000');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `username` varchar(200) NOT NULL,
  `email` varchar(150) NOT NULL,
  `password` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`username`, `email`, `password`) VALUES
('Akshaya', 'akshu@gmail.com', '123456');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `fourimage`
--
ALTER TABLE `fourimage`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fourwheel`
--
ALTER TABLE `fourwheel`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `image`
--
ALTER TABLE `image`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `twowheelerbook`
--
ALTER TABLE `twowheelerbook`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `fourimage`
--
ALTER TABLE `fourimage`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `fourwheel`
--
ALTER TABLE `fourwheel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `image`
--
ALTER TABLE `image`
  MODIFY `id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `twowheelerbook`
--
ALTER TABLE `twowheelerbook`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
