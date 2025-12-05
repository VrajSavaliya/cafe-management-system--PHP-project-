-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 05, 2025 at 12:32 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cafe_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `cafe_system`
--

CREATE TABLE `cafe_system` (
  `id` int(11) NOT NULL,
  `table_number` int(11) NOT NULL,
  `cart_items` text NOT NULL,
  `total_price` decimal(10,2) NOT NULL,
  `order_time` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cafe_system`
--

INSERT INTO `cafe_system` (`id`, `table_number`, `cart_items`, `total_price`, `order_time`) VALUES
(76, 1, 'Burger  x 2', 400.00, '2025-11-30 07:27:47'),
(77, 2, 'cocktail x 02, Pizza x 01, springroll x 01, momo x 02', 1800.00, '2025-11-30 07:30:56'),
(78, 3, 'Coffee x 02, Pizza x 01', 900.00, '2025-11-30 07:31:12'),
(79, 3, 'cocktail x 02', 600.00, '2025-11-30 08:06:28');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `Username` varchar(20) NOT NULL,
  `Password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`Username`, `Password`) VALUES
('admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `id` int(11) NOT NULL,
  `item_name` varchar(100) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `photo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`id`, `item_name`, `price`, `photo`) VALUES
(20, 'Burger ', 200.00, 'Photos/Burger.png'),
(21, 'cocktail', 300.00, 'Photos/cocktail.png'),
(22, 'Coffee', 250.00, 'Photos/Coffee.jpg'),
(23, 'Pizza', 400.00, 'Photos/Pizza.jpg'),
(24, 'sandwich', 350.00, 'Photos/sandwich.png'),
(25, 'springroll', 200.00, 'Photos/springroll.png'),
(26, 'momo', 300.00, 'Photos/momo.png'),
(27, 'FrenchFries', 250.00, 'Photos/FrenchFries.png');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `review` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `name`, `review`, `created_at`) VALUES
(2, 'Dr  Mehul P Desai', 'Good Food❤', '2025-09-26 12:16:42'),
(3, 'Dr Manish M Kayasth', 'Good Staff 👌', '2025-09-26 12:17:32'),
(4, 'Savaliya bhadreshbhai', '🤘😊☕', '2025-09-27 03:02:00'),
(5, 'Vraj', 'Good🙌', '2025-11-29 09:40:32');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `email` varchar(150) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `created_at`) VALUES
(5, 'customer', 'customer@gmail.com', '$2y$10$HA5FBZ0JG7DqrL5a6JOtNu22C33H0COmSrdkJQH8Sj9PtLApWBsdu', '2025-12-05 11:24:21');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cafe_system`
--
ALTER TABLE `cafe_system`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cafe_system`
--
ALTER TABLE `cafe_system`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;

--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
