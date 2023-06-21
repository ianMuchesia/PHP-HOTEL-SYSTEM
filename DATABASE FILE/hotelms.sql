-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 09, 2023 a6 10:41 AM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hotelms`
--

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `booking_id` int(10) NOT NULL,
  `customer_id` int(10) NOT NULL,
  `room_id` int(10) NOT NULL,
  `booking_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `check_in` varchar(100) DEFAULT NULL,
  `check_out` varchar(100) NOT NULL,
  `total_price` int(10) NOT NULL,
  `remaining_price` int(10) NOT NULL,
  `payment_status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`booking_id`, `customer_id`, `room_id`, `booking_date`, `check_in`, `check_out`, `total_price`, `remaining_price`, `payment_status`) VALUES
(1, 1, 5, '2023-06-13 05:45:17', '13-06-2023', '15-06-2023', 30000, 30000, 0),
(2, 2, 2, '2023-06-13 05:46:04', '13-06-2023', '16-06-2023', 45000, 0, 1),
(3, 3, 2, '2023-06-11 06:49:19', '11-06-2023', '14-06-2023', 45000, 3000, 0),
(4, 4, 7, '2023-06-09 06:50:24', '11-06-2023', '15-06-2023', 80000, 10000, 0),
(5, 5, 13, '2023-06-17 06:59:10', '17-06-2023', '20-06-2023', 90000, 0, 1),
(6, 6, 9, '2023-07-08 09:45:56', '08-07-2023', '10-07-2023', 10000, 10000, 0),
(7, 7, 14, '2023-07-08 17:56:41', '08-07-2023', '10-07-2023', 110000, 11500, 0),
(8, 8, 22, '2023-07-09 08:32:57', '09-07-2023', '13-07-2023', 276000, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `complaint`
--

CREATE TABLE `complaint` (
  `id` int(11) NOT NULL,
  `complainant_name` varchar(100) NOT NULL,
  `complaint_type` varchar(100) NOT NULL,
  `complaint` varchar(200) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `resolve_status` tinyint(1) NOT NULL,
  `resolve_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `budget` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `complaint`
--

INSERT INTO `complaint` (`id`, `complainant_name`, `complaint_type`, `complaint`, `created_at`, `resolve_status`, `resolve_date`, `budget`) VALUES
(1, 'Christine Atieno\n', 'Room Windows', 'Doesnot operate properly', '2023-07-16 06:51:24', 1, '2023-07-17 06:51:58', 36000),
(2, 'Saphina Acheieng\n', 'Air Conditioner', 'Sensor Problems', '2023-07-01 06:51:44', 1, '2023-07-03 07:06:02', 79500),
(3, 'Robert Osea\n', 'Bad Smells', 'Some odd smells around room areas', '2023-04-01 07:01:17', 1, '2023-04-01 07:01:52', 5000),
(5, 'Jeremy Muia', 'Faulty Electronics', 'Due to some weird reasons, the electronics are not working as it should; some voltage problems too - M-135', '2023-07-09 08:38:19', 1, '2023-07-09 08:38:39', 25000);

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `customer_id` int(10) NOT NULL,
  `customer_name` varchar(100) NOT NULL,
  `contact_no` bigint(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `id_card_type_id` int(10) NOT NULL,
  `id_card_no` varchar(20) NOT NULL,
  `address` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`customer_id`, `customer_name`, `contact_no`, `email`, `id_card_type_id`, `id_card_no`, `address`) VALUES
(1, 'Alfred Musau', 0700012400, 'alfred@gmail.com', 1, '422510099122', '3166 Rockford Road'),
(2, 'Grace Kimangi', 0728702149, 'grace@gmail.com', 2, '422510099122', '1954 Armory Road'),
(3, 'George Yugi', 0712477784, 'georges@gmail.com', 1, '422510099122', '4879 Shearwood Forest Drive'),
(4, 'Grace Mwende', 0714785465, 'gracemwende@gmail.com', 3, '0', '926 Richland Avenue\n'),
(5, 'Jonnel Ceazer', 0712497800, 'jonnel@gmail.com', 1, '422510099122', '4698 Columbia Road\n'),
(6, 'Magdalene Gathoni', 0724555478, 'maggie@gmail.com', 4, 'AASS 12454784541', '4764 Warner Street\n'),
(7, 'Salma Ali', 0724500069, 'salma@gmail.com', 1, '457896000002', '1680  Brownton Road'),
(8, 'Cole Musili', 0724577784, 'cole@gmail.com', 1, '147000245810', '766  Lodgeville Road');

-- --------------------------------------------------------

--
-- Table structure for table `emp_history`
--

CREATE TABLE `emp_history` (
  `id` int(11) NOT NULL,
  `emp_id` int(11) NOT NULL,
  `shift_id` int(11) NOT NULL,
  `from_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `to_date` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `emp_history`
--

INSERT INTO `emp_history` (`id`, `emp_id`, `shift_id`, `from_date`, `to_date`, `created_at`) VALUES
(1, 1, 1, '2023-06-13 05:39:06', '2023-06-15 02:22:26', '2023-06-13 05:39:06'),
(2, 2, 3, '2023-06-13 05:39:39', '2023-06-15 02:22:43', '2023-06-13 05:39:39'),
(3, 3, 1, '2023-06-13 05:40:18', '2023-06-15 02:22:49', '2023-06-13 05:40:18'),
(4, 4, 1, '2023-06-13 05:40:56', '2023-06-15 02:22:35', '2023-06-13 05:40:56'),
(5, 5, 1, '2023-06-13 05:41:31', NULL, '2023-06-13 05:41:31'),
(6, 6, 3, '2023-06-13 05:42:03', NULL, '2023-06-13 05:42:03'),
(7, 7, 4, '2023-06-13 05:42:35', '2023-06-18 02:35:02', '2023-06-13 05:42:35'),
(8, 8, 3, '2023-06-13 05:43:13', '2023-06-18 02:32:26', '2023-06-13 05:43:13'),
(9, 9, 2, '2023-06-13 05:43:49', NULL, '2023-06-13 05:43:49'),
(10, 10, 1, '2023-06-13 06:30:45', '2023-06-18 02:34:28', '2023-06-13 06:30:45'),
(11, 1, 2, '2023-06-15 06:52:26', '2023-06-17 02:23:05', '2023-06-15 06:52:26'),
(12, 4, 3, '2023-06-15 06:52:35', NULL, '2023-06-15 06:52:35'),
(13, 2, 3, '2023-06-15 06:52:43', NULL, '2023-06-15 06:52:43'),
(14, 3, 3, '2023-06-15 06:52:49', NULL, '2023-06-15 06:52:49'),
(15, 1, 3, '2023-06-17 06:53:05', NULL, '2023-06-17 06:53:05'),
(16, 8, 1, '2023-06-18 07:02:26', NULL, '2023-06-18 07:02:26'),
(17, 11, 2, '2023-06-18 07:04:03', NULL, '2023-06-18 07:04:03'),
(18, 10, 2, '2023-06-18 07:04:28', NULL, '2023-06-18 07:04:28'),
(19, 7, 2, '2023-06-18 07:05:02', NULL, '2023-06-18 07:05:02'),
(20, 12, 1, '2023-07-08 17:54:22', NULL, '2023-07-08 17:54:22'),
(21, 13, 2, '2023-07-09 08:35:27', NULL, '2023-07-09 08:35:27');

-- --------------------------------------------------------

--
-- Table structure for table `id_card_type`
--

CREATE TABLE `id_card_type` (
  `id_card_type_id` int(10) NOT NULL,
  `id_card_type` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `id_card_type`
--

INSERT INTO `id_card_type` (`id_card_type_id`, `id_card_type`) VALUES
(1, 'National Identity Card'),
(2, 'Passport Card'),
(3, 'Huduma No. Card'),
(4, 'Kenya Driving License');

-- --------------------------------------------------------

--
-- Table structure for table `room`
--

CREATE TABLE `room` (
  `room_id` int(10) NOT NULL,
  `room_type_id` int(10) NOT NULL,
  `room_no` varchar(10) NOT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `check_in_status` tinyint(1) NOT NULL,
  `check_out_status` tinyint(1) NOT NULL,
  `deleteStatus` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `room`
--

INSERT INTO `room` (`room_id`, `room_type_id`, `room_no`, `status`, `check_in_status`, `check_out_status`, `deleteStatus`) VALUES
(1, 2, 'A-101', NULL, 0, 0, 1),
(2, 2, 'A-102', 1, 1, 1, 0),
(3, 3, 'A-103', NULL, 0, 0, 0),
(4, 4, 'A-104', NULL, 0, 0, 0),
(5, 1, 'B-101', 1, 0, 0, 0),
(6, 2, 'B-102', NULL, 0, 0, 1),
(7, 3, 'B-103', 1, 0, 0, 0),
(8, 4, 'B-104', NULL, 0, 0, 1),
(9, 1, 'C-101', 1, 0, 0, 0),
(10, 2, 'C-102', NULL, 0, 0, 0),
(11, 3, 'C-103', NULL, 0, 0, 1),
(12, 4, 'C-104', NULL, 0, 0, 0),
(13, 4, 'D-101', NULL, 0, 1, 1),
(14, 5, 'K-699', 1, 1, 0, 0),
(15, 5, 'K-799', NULL, 0, 0, 0),
(16, 5, 'K-899', NULL, 0, 0, 0),
(17, 6, 'M-333', NULL, 0, 0, 0),
(18, 6, 'M-444', NULL, 0, 0, 0),
(19, 6, 'M-555', NULL, 0, 0, 0),
(20, 9, 'P-696', NULL, 0, 0, 0),
(21, 10, 'M-966', NULL, 0, 0, 0),
(22, 10, 'M-869', NULL, 0, 1, 0),
(23, 8, 'Z-666', NULL, 0, 0, 0),
(24, 7, 'X-969', NULL, 0, 0, 0),
(25, 8, 'Z-111', NULL, 0, 0, 0),
(26, 6, 'M-135', NULL, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `room_type`
--

CREATE TABLE `room_type` (
  `room_type_id` int(10) NOT NULL,
  `room_type` varchar(100) NOT NULL,
  `price` int(10) NOT NULL,
  `max_person` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `room_type`
--

INSERT INTO `room_type` (`room_type_id`, `room_type`, `price`, `max_person`) VALUES
(1, 'Single', 10000, 1),
(2, 'Double', 15000, 2),
(3, 'Triple', 20000, 3),
(4, 'Family', 30000, 2),
(5, 'King Sized', 55000, 4),
(6, 'Master Suite', 65000, 6),
(7, 'Mini-Suite', 36000, 3),
(8, 'Connecting Rooms', 80000, 6),
(9, 'Presidential Suite', 210000, 4),
(10, 'Murphy Room', 69000, 3);

-- --------------------------------------------------------

--
-- Table structure for table `shift`
--

CREATE TABLE `shift` (
  `shift_id` int(10) NOT NULL,
  `shift` varchar(100) NOT NULL,
  `shift_timing` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `shift`
--

INSERT INTO `shift` (`shift_id`, `shift`, `shift_timing`) VALUES
(1, 'Morning', '5:00 AM - 10:00 AM'),
(2, 'Day', '10:00 AM - 4:00PM'),
(3, 'Evening', '4:00 PM - 10:00 PM'),
(4, 'Night', '10:00PM - 5:00AM');

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `emp_id` int(11) NOT NULL,
  `emp_name` varchar(100) NOT NULL,
  `staff_type_id` int(11) NOT NULL,
  `shift_id` int(11) NOT NULL,
  `id_card_type` int(11) NOT NULL,
  `id_card_no` varchar(20) NOT NULL,
  `address` varchar(100) NOT NULL,
  `contact_no` bigint(20) NOT NULL,
  `salary` bigint(20) NOT NULL,
  `joining_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`emp_id`, `emp_name`, `staff_type_id`, `shift_id`, `id_card_type`, `id_card_no`, `address`, `contact_no`, `salary`, `joining_date`, `updated_at`) VALUES
(1, 'Mary Delight', 1, 3, 1, '422510099122', 'Kisimani', 0779454777, 101000, '2022-11-13 05:39:06', '2023-06-08 17:36:16'),
(2, 'Cliff Cheruiyot', 3, 3, 1, '422510099122', 'Tudor', 0709994500, 50500, '2022-04-07 20:21:00', '2023-06-08 17:36:23'),
(3, 'Able Mwakio', 2, 3, 1, '422510099122', 'Kizingo', 076543111, 50500, '2022-11-13 05:40:18', '2023-06-08 17:36:27'),
(4, 'Aaron Obala', 2, 3, 2, '0', 'Tudor', 0751112450, 51000, '2012-11-13 05:40:55', '2023-06-08 17:36:33'),
(5, 'Ken Kimani', 4, 1, 1, '12345341212', 'Likoni', 078884500, 148000, '2012-11-13 05:41:31', '2023-06-08 17:36:42'),
(6, 'Moses Odhiambo', 3, 3, 3, '0', 'Bamburi', 070000000, 50000, '2012-11-13 05:42:03', '2023-06-08 17:36:47'),
(7, 'Caroline musau', 2, 2, 1, '422510099122', 'Magongo', 077778450, 70000, '2012-11-13 05:42:35', '2023-06-08 17:36:51'),
(8, 'Brian Kimathi', 1, 1, 4, '0', 'Tudor', 077845554, 145000, '2022-11-13 05:43:13', '2023-06-08 17:36:56'),
(9, 'Robert Lui', 3, 2, 4, '0', 'Mtongwe', 075554500, 80000, '2022-11-13 05:43:49', '2023-06-08 17:36:59'),
(10, 'Nelson Wachira', 5, 2, 1, '422510099122', 'Mtongwe', 075468569, 44000, '2019-11-13 06:30:45', '2023-06-08 17:37:07'),
(11, 'Anne Freshian', 3, 2, 1, '0', 'Mtwapa', 079696969, 50000, '2022-11-18 07:04:03', '2023-06-08 17:37:10'),
(12, 'Robert seda', 2, 1, 4, 'AD69 14579500002', 'Bombolulu', 0775550036, 73500, '2023-06-08 17:54:22', '2023-06-08 17:54:22'),
(13, 'Hillary Ouma', 9, 2, 1, '457854555012', 'Kisimani', 07778560, 65500, '2022-06-09 08:35:27', '2023-06-09 08:35:27');


-- --------------------------------------------------------

--
-- Table structure for table `staff_type`
--

CREATE TABLE `staff_type` (
  `staff_type_id` int(10) NOT NULL,
  `staff_type` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `staff_type`
--

INSERT INTO `staff_type` (`staff_type_id`, `staff_type`) VALUES
(1, 'Manager'),
(2, 'Housekeeping Manager'),
(3, 'Front Desk Receptionist'),
(4, 'Cheif'),
(5, 'Waiter'),
(6, 'Room Attendant'),
(7, 'Concierge'),
(8, 'Hotel Maintenance Engineer'),
(9, 'Hotel Sales Manager');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `username` varchar(15) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `username`, `email`, `password`, `created_at`) VALUES
(2, 'Evans Mwirigi', 'Evans Mwirigi', 'evans@gmail.com', 'fb1e75090b96d2e0abec0ec980c2f392', '2023-06-12 12:49:22'),
(3, 'msodoki', 'msodoki', 'msodoki@gmail.com', 'd0a512f262ed34abed0c45cefe08c429', '2023-06-12 12:49:22');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`booking_id`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `room_id` (`room_id`);

--
-- Indexes for table `complaint`
--
ALTER TABLE `complaint`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customer_id`),
  ADD KEY `customer_id_type` (`id_card_type_id`);

--
-- Indexes for table `emp_history`
--
ALTER TABLE `emp_history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `emp_id` (`emp_id`),
  ADD KEY `shift_id` (`shift_id`);

--
-- Indexes for table `id_card_type`
--
ALTER TABLE `id_card_type`
  ADD PRIMARY KEY (`id_card_type_id`);

--
-- Indexes for table `room`
--
ALTER TABLE `room`
  ADD PRIMARY KEY (`room_id`),
  ADD KEY `room_type_id` (`room_type_id`);

--
-- Indexes for table `room_type`
--
ALTER TABLE `room_type`
  ADD PRIMARY KEY (`room_type_id`);

--
-- Indexes for table `shift`
--
ALTER TABLE `shift`
  ADD PRIMARY KEY (`shift_id`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`emp_id`),
  ADD KEY `id_card_type` (`id_card_type`),
  ADD KEY `shift_id` (`shift_id`),
  ADD KEY `staff_type_id` (`staff_type_id`);

--
-- Indexes for table `staff_type`
--
ALTER TABLE `staff_type`
  ADD PRIMARY KEY (`staff_type_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `booking`
--
ALTER TABLE `booking`
  MODIFY `booking_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `complaint`
--
ALTER TABLE `complaint`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `customer_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `emp_history`
--
ALTER TABLE `emp_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `id_card_type`
--
ALTER TABLE `id_card_type`
  MODIFY `id_card_type_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `room`
--
ALTER TABLE `room`
  MODIFY `room_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT for table `room_type`
--
ALTER TABLE `room_type`
  MODIFY `room_type_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `shift`
--
ALTER TABLE `shift`
  MODIFY `shift_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `emp_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `staff_type`
--
ALTER TABLE `staff_type`
  MODIFY `staff_type_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `booking`
--
ALTER TABLE `booking`
  ADD CONSTRAINT `booking_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`),
  ADD CONSTRAINT `booking_ibfk_2` FOREIGN KEY (`room_id`) REFERENCES `room` (`room_id`);

--
-- Constraints for table `customer`
--
ALTER TABLE `customer`
  ADD CONSTRAINT `customer_ibfk_1` FOREIGN KEY (`id_card_type_id`) REFERENCES `id_card_type` (`id_card_type_id`);

--
-- Constraints for table `emp_history`
--
ALTER TABLE `emp_history`
  ADD CONSTRAINT `emp_history_ibfk_1` FOREIGN KEY (`emp_id`) REFERENCES `staff` (`emp_id`),
  ADD CONSTRAINT `emp_history_ibfk_2` FOREIGN KEY (`shift_id`) REFERENCES `shift` (`shift_id`);

--
-- Constraints for table `room`
--
ALTER TABLE `room`
  ADD CONSTRAINT `room_ibfk_1` FOREIGN KEY (`room_type_id`) REFERENCES `room_type` (`room_type_id`);

--
-- Constraints for table `staff`
--
ALTER TABLE `staff`
  ADD CONSTRAINT `staff_ibfk_1` FOREIGN KEY (`id_card_type`) REFERENCES `id_card_type` (`id_card_type_id`),
  ADD CONSTRAINT `staff_ibfk_2` FOREIGN KEY (`shift_id`) REFERENCES `shift` (`shift_id`),
  ADD CONSTRAINT `staff_ibfk_3` FOREIGN KEY (`staff_type_id`) REFERENCES `staff_type` (`staff_type_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
