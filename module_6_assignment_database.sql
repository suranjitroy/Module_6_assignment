-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 06, 2023 at 07:32 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `assignment`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Furniture', '2023-11-05 04:57:05', '2023-11-05 04:57:05'),
(2, 'Health & Beauty', '2023-11-05 04:57:05', '2023-11-05 04:57:05'),
(3, 'Sports', '2023-11-05 04:57:05', '2023-11-05 04:57:05'),
(4, 'Home Applince', '2023-11-05 04:57:05', '2023-11-05 04:57:05'),
(5, 'Electronic Device', '2023-11-05 04:57:05', '2023-11-05 04:57:05');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(60) NOT NULL,
  `location` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `name`, `email`, `location`, `created_at`, `updated_at`) VALUES
(1, 'Suranjit Roy', 'suranjit@gmail.com', 'Sutrapur', '2023-11-05 04:25:55', '2023-11-05 04:25:55'),
(2, 'Sathi Ghosh', 'sathi@gmail.com', 'Sutrapur', '2023-11-05 04:25:55', '2023-11-05 04:25:55'),
(3, 'Antu Shaha', 'antu@gmail.com', 'Moghbazar', '2023-11-05 04:25:55', '2023-11-05 04:25:55'),
(4, 'Subarna Shaha', 'subarna@gmail.com', 'Bangla Bazar', '2023-11-05 04:25:55', '2023-11-05 04:25:55'),
(5, 'Prokash Ghosh', 'prokash@gmail.com', 'Poschimdi', '2023-11-05 04:25:55', '2023-11-05 04:25:55'),
(6, 'Arpon Ghosh', 'arpon@gmail.com', 'Poschimdi', '2023-11-05 04:25:55', '2023-11-05 04:25:55'),
(7, 'Bikash Ghosh', 'bikash@gmail.com', 'Poschimdi', '2023-11-05 04:25:55', '2023-11-05 04:25:55'),
(8, 'Bolai Shaha', 'bolai@gmail.com', 'Natore', '2023-11-05 04:25:55', '2023-11-06 05:39:58'),
(9, 'Labonno Shaha', 'labonno@gmail.com', 'Moghbazar', '2023-11-05 04:25:55', '2023-11-05 04:25:55'),
(10, 'Shuvojit Roy', 'shuvo@gmail.com', 'Narayanganj', '2023-11-05 04:25:55', '2023-11-05 04:25:55');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` bigint(20) UNSIGNED NOT NULL,
  `order_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `total` float NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `customer_id`, `order_date`, `total`, `created_at`, `updated_at`) VALUES
(1, 3, '2023-11-05 07:44:15', 98810, '2023-11-05 05:08:46', '2023-11-05 07:44:15'),
(2, 5, '2023-11-05 05:14:57', 100000, '2023-11-05 05:08:46', '2023-11-05 05:14:57'),
(3, 2, '2023-11-15 05:08:46', 680, '2023-11-05 05:08:46', '2023-11-05 05:08:46'),
(4, 4, '2023-11-18 05:08:46', 1500, '2023-11-05 05:08:46', '2023-11-05 05:08:46'),
(5, 1, '2023-11-05 07:44:52', 54500, '2023-11-05 05:08:46', '2023-11-05 07:44:52'),
(6, 2, '2023-11-05 07:45:30', 425, '2023-11-05 05:08:46', '2023-11-05 07:45:30'),
(7, 1, '2023-11-05 07:46:06', 45900, '2023-11-05 05:08:46', '2023-11-05 07:46:06'),
(8, 5, '2023-11-09 05:08:46', 2210, '2023-11-05 05:08:46', '2023-11-05 05:11:27'),
(9, 2, '2023-11-16 05:08:46', 1240, '2023-11-05 05:08:46', '2023-11-05 05:08:46'),
(10, 6, '2023-11-12 05:08:46', 4050, '2023-11-05 05:08:46', '2023-11-05 05:08:46'),
(11, 7, '2023-11-14 05:08:46', 300760, '2023-11-05 05:08:46', '2023-11-05 05:08:46'),
(12, 7, '2023-11-17 05:08:46', 80700, '2023-11-05 05:08:46', '2023-11-05 05:08:46'),
(13, 8, '2023-11-17 05:08:46', 49600, '2023-11-05 05:08:46', '2023-11-05 05:08:46'),
(14, 9, '2023-11-17 05:08:46', 458, '2023-11-05 05:08:46', '2023-11-05 05:08:46'),
(15, 10, '2023-11-17 05:08:46', 1106, '2023-11-05 05:08:46', '2023-11-05 05:08:46');

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `quantity` int(11) DEFAULT NULL,
  `unit_price` float NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`id`, `order_id`, `product_id`, `quantity`, `unit_price`, `created_at`, `updated_at`) VALUES
(1, 5, 7, 2, 50000, '2023-11-05 05:17:05', '2023-11-05 05:17:05'),
(2, 1, 6, 3, 4670, '2023-11-05 05:17:05', '2023-11-06 03:55:59'),
(3, 6, 2, 125, 425, '2023-11-05 05:17:05', '2023-11-05 05:17:05'),
(4, 7, 5, 1, 42300, '2023-11-05 05:17:05', '2023-11-05 05:24:03'),
(5, 1, 4, 3, 1300, '2023-11-05 05:17:05', '2023-11-05 05:17:05'),
(6, 5, 6, 1, 4500, '2023-11-05 05:17:05', '2023-11-05 07:13:29'),
(7, 7, 9, 4, 3600, '2023-11-05 05:17:05', '2023-11-05 05:24:03');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `description` text DEFAULT NULL,
  `price` float NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `category_id`, `description`, `price`, `created_at`, `updated_at`) VALUES
(1, 'Sofa', 1, 'Test', 3500, '2023-11-05 04:59:31', '2023-11-05 04:59:31'),
(2, 'Face Wash', 2, 'Face Wash Test', 425, '2023-11-05 04:59:31', '2023-11-05 04:59:31'),
(3, 'Head Phone', 5, 'Head Phone Test', 220, '2023-11-05 04:59:31', '2023-11-05 05:03:27'),
(4, 'Cricket Bat', 3, 'Cricket Bat Test', 1230, '2023-11-05 04:59:31', '2023-11-05 04:59:31'),
(5, 'TV', 4, 'Singer TV Test', 42300, '2023-11-05 04:59:31', '2023-11-05 04:59:31'),
(6, 'Computer Table', 1, 'Computer Table Test', 4670, '2023-11-05 04:59:31', '2023-11-05 04:59:31'),
(7, 'Wash In Machine', 4, 'Wash In Machine Test', 52000, '2023-11-05 04:59:31', '2023-11-05 04:59:31'),
(8, 'Eye Liner', 2, 'Eye Liner Test', 320, '2023-11-05 04:59:31', '2023-11-05 04:59:31'),
(9, 'Bluetooth', 5, 'Bluetooth Test', 450, '2023-11-05 04:59:31', '2023-11-05 04:59:31'),
(10, 'Badminton', 3, 'Badminton Test', 2205, '2023-11-05 04:59:31', '2023-11-05 04:59:31');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customer_id` (`customer_id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `order_items_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `order_items_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
