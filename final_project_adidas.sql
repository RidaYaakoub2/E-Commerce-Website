-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 31, 2022 at 01:20 PM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `final_project_adidas`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `cat_id` int(11) NOT NULL,
  `cat_image` varchar(250) NOT NULL,
  `cat_name` varchar(70) NOT NULL,
  `cat_status` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_image`, `cat_name`, `cat_status`) VALUES
(4, 'othersCat.png', 'Others', 1),
(1, 'ClothingCat.jpg', 'Clothing', 1),
(3, 'BagsCat.jfif', 'Bags', 1),
(2, 'CatShoes.pk_.jpg-3.jpg', 'Shoes', 1);

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(255) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `address` varchar(400) NOT NULL,
  `status` int(11) NOT NULL,
  `user_type` varchar(10) NOT NULL,
  `phone_number` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `username`, `email`, `password`, `address`, `status`, `user_type`, `phone_number`) VALUES
(1, 'Hassan', 'ghanem.hasan@aut.edu', '$2y$10$IRUBNVIDUz.AidSLP.6msumdCp3yCcC7bZ430vz24x0eHMh4graQG', 'dsg', 1, 'admin', 7865543),
(2, 'Reda', 'yaakoub.reda@aut.edu', '$2y$10$9QNA69uCNz9A.SKVCooJwu3hfUyoSswmxr7GosMfkYGjif6CKDH.W', 'dsg', 1, 'admin', 7865543),
(3, 'Ghadir', 'fawaz.ghadir@aut.edu', '$2y$10$VJu16daE0Tk6BNQNbubea.q1Khvqu3M.I4zbzUZVI.1jbs5S3ti1.', 'dsg', 1, 'admin', 7865543),
(4, 'ALI', 'Ali@gmail.com', '$2y$10$W4CJ/aThGDetUqxpy447tuCimntJlkXkYDHjwZMdHuE6X8m6EY4bq', 'Tyre', 1, 'customer', 7865543),
(5, 'Mark', 'Mark@gmail.com', '$2y$10$UOZfDuepW0.wxSumoYihFu5PmVWTsOxkP6374mafljbiP6NGulBjq', 'ds', 1, 'customer', 7865543),
(6, 'Abdallah', 'Abdallah@gmail.com', '$2y$10$up1lCAaiv2YsDBW1dS1U..bPp90GYRh3rRbMYy4ELJc3uhod9Ervu', 'ds', 1, 'customer', 7865543),
(7, 'Mohamad', 'Mohamad@gmail.com', '$2y$10$XTbIZcBmmlZQD5V2.CPVneZEFzfw8gVaExgOSmFb2BxlKUV2nyrQu', 'ds', 1, 'customer', 7865543),
(8, 'Georges', 'Georges@gmail.com', '$2y$10$S09tLlSazt3PkYbg2apd7e7K.BlRnDIk/ezOOvs40nP4OgIWT0B4O', 'ds', 1, 'customer', 7865543),
(9, 'Rami', 'Rami@gmail.com', '$2y$10$Syb63Psar4lZnxgA9EDcGOPHBvk5Fc76p4vjx23bJJ9s7DHLNXC5K', 'ds', 1, 'customer', 7865543),
(10, 'Abbas', 'Abbas@gmail.com', '$2y$10$10Z4FiX7NoeXm0dP.CP/WeHgRriBibmr2KkG8HHpfySJfNzXrGPba', 'ds', 1, 'customer', 7865543);

-- --------------------------------------------------------

--
-- Table structure for table `logins_registers`
--

CREATE TABLE `logins_registers` (
  `id` int(11) NOT NULL,
  `user_email` varchar(50) NOT NULL,
  `date_time` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `action_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `logins_registers`
--

INSERT INTO `logins_registers` (`id`, `user_email`, `date_time`, `action_status`) VALUES
(2, 'hassanghanem030@gmail.com', '2022-01-15 22:35:16', 2),
(3, 'reda@gmail.com', '2022-01-15 22:36:10', 2),
(4, 'Ghadir@gmail.com', '2022-01-15 22:36:38', 2),
(5, 'Ali@aut.edu', '2022-01-15 22:37:05', 2),
(6, 'Mark@gmail.com', '2022-01-15 22:37:18', 2),
(7, 'Abdallah@gmail.com', '2022-01-15 22:37:57', 2),
(8, 'Mohamad@gmail.com', '2022-01-15 22:39:58', 2),
(9, 'Georges@gmail.com', '2022-01-15 22:40:10', 2),
(10, 'Rami@gmail.com', '2022-01-15 22:40:35', 2),
(11, 'hassanghanem030@gmail.com', '2022-01-15 22:40:45', 1),
(12, 'Abbas@gmail.com', '2022-01-15 22:45:16', 2),
(13, 'fawaz.ghadir@aut.edu', '2022-01-15 22:47:33', 1),
(14, 'ghanem.hasan@aut.edu', '2022-01-15 22:48:02', 1),
(15, 'yaakoub.reda@aut.edu', '2022-01-15 22:48:13', 1),
(16, 'Mark@gmail.com', '2022-01-15 22:48:21', 3),
(17, 'ghanem.hasan@aut.edu', '2022-01-15 22:49:24', 1),
(18, 'ghanem.hasan@aut.edu', '2022-01-15 22:49:54', 0),
(19, 'ghanem.hasan@aut.edu', '2022-01-15 22:50:02', 1),
(20, 'Mark@gmail.com', '2022-01-15 22:50:21', 0),
(21, 'Mark@gmail.com', '2022-01-15 22:50:23', 3),
(22, 'ghanem.hasan@aut.edu', '2022-01-15 22:50:30', 1),
(23, 'ghanem.hasan@aut.edu', '2022-01-16 00:11:40', 1),
(24, 'ghanem.hasan@aut.edu', '2022-01-16 00:26:25', 1),
(25, 'Mark@gmail.com', '2022-01-16 00:49:39', 3),
(26, 'ghanem.hasan@aut.edu', '2022-01-16 00:50:22', 1),
(27, 'ghanem.hasan@aut.edu', '2022-01-16 01:35:41', 1),
(28, 'ghanem.hasan@aut.edu', '2022-01-16 01:38:23', 1),
(29, 'ali@gmail.com', '2022-01-16 01:38:42', 3),
(30, 'ghanem.hasan@aut.edu', '2022-01-16 01:40:58', 1),
(31, 'Mark@gmail.com', '2022-01-16 01:49:57', 3),
(32, 'Mark@gmail.com', '2022-01-16 01:50:07', 3),
(33, 'ghanem.hasan@aut.edu', '2022-01-16 01:50:36', 1),
(34, 'Abbas@gmail.com', '2022-01-16 01:52:14', 3),
(35, 'Abbas@gmail.com', '2022-01-16 01:54:41', 3),
(36, 'ghanem.hasan@aut.edu', '2022-01-16 01:55:42', 1),
(37, 'ghanem.hasan@aut.edu', '2022-01-16 02:08:22', 1),
(38, 'Georges@gmail.com', '2022-01-16 02:08:44', 3),
(39, 'Georges@gmail.com', '2022-01-16 02:09:42', 3),
(40, 'ghanem.hasan@aut.edu', '2022-01-16 02:09:53', 1),
(41, 'Mohamad@gmail.com', '2022-01-16 11:17:18', 3),
(42, 'ghanem.hasan@aut.edu', '2022-01-16 11:20:52', 1),
(43, 'Mohamad@gmail.com', '2022-01-16 11:45:59', 3),
(44, 'ghanem.hasan@aut.edu', '2022-01-16 11:46:29', 1),
(45, 'Mark@gmail.com', '2022-01-16 12:00:02', 3),
(46, 'Mohamad@gmail.com', '2022-01-16 12:00:39', 3),
(47, 'ghanem.hasan@aut.edu', '2022-01-16 12:04:49', 1),
(48, 'Mark@gmail.com', '2022-01-16 12:07:49', 3),
(49, 'Mohamad@gmail.com', '2022-01-16 12:09:14', 3),
(50, 'Abbas@gmail.com', '2022-01-16 12:10:36', 3),
(51, 'ali@gmail.com', '2022-01-16 12:11:37', 3),
(52, 'ghanem.hasan@aut.edu', '2022-01-16 12:34:19', 1),
(53, 'Abdallah@gmail.com', '2022-01-16 12:36:11', 3),
(54, 'ghanem.hasan@aut.edu', '2022-01-16 12:36:51', 1),
(55, 'Mark@gmail.com', '2022-01-16 12:39:55', 3),
(56, 'ghanem.hasan@aut.edu', '2022-01-16 12:40:20', 1),
(57, 'ali@gmail.com', '2022-01-16 14:42:45', 3),
(58, 'ghanem.hasan@aut.edu', '2022-01-16 14:43:10', 1),
(59, 'ghanem.hasan@aut.edu', '2022-01-16 14:49:49', 1),
(60, 'Mark@gmail.com', '2022-01-16 14:50:23', 3),
(61, 'ghanem.hasan@aut.edu', '2022-01-16 14:50:38', 1),
(62, 'ali@gmail.com', '2022-01-16 14:53:43', 3),
(63, 'ghanem.hasan@aut.edu', '2022-01-16 14:54:00', 1),
(64, 'Mark@gmail.com', '2022-01-16 15:12:26', 3),
(65, 'ghanem.hasan@aut.edu', '2022-01-16 15:13:40', 1),
(66, 'ali@gmail.com', '2022-01-16 15:33:22', 0),
(67, 'ali@gmail.com', '2022-01-16 15:33:25', 3),
(68, 'Mark@gmail.com', '2022-01-16 15:43:07', 3),
(69, 'ghanem.hasan@aut.edu', '2022-01-16 15:55:07', 1),
(70, 'Mohamad@gmail.com', '2022-01-16 16:13:29', 3),
(71, 'Mohamad@gmail.com', '2022-01-16 16:14:19', 3),
(72, 'Mohamad@gmail.com', '2022-01-16 16:14:52', 0),
(73, 'Mohamad@gmail.com', '2022-01-16 16:14:55', 3),
(74, 'ghanem.hasan@aut.edu', '2022-01-16 16:15:25', 1),
(75, 'Mohamad@gmail.com', '2022-01-16 16:16:39', 3),
(76, 'Mohamad@gmail.com', '2022-01-16 16:19:00', 3),
(77, 'Mohamad@gmail.com', '2022-01-16 16:22:44', 3),
(78, 'Mark@gmail.com', '2022-01-16 17:11:48', 3),
(79, 'Mark@gmail.com', '2022-01-16 17:12:15', 3),
(80, 'Mohamad@gmail.com', '2022-01-16 17:19:26', 3),
(81, 'ghanem.hasan@aut.edu', '2022-01-16 17:26:51', 1),
(82, 'Mark@gmail.com', '2022-01-16 17:46:03', 3),
(83, 'ghanem.hasan@aut.edu', '2022-01-16 17:47:27', 1),
(84, 'Mark@gmail.com', '2022-01-16 17:49:16', 0),
(85, 'Mark@gmail.com', '2022-01-16 17:49:20', 3),
(86, 'Mark@gmail.com', '2022-01-16 17:49:44', 3),
(87, 'ghanem.hasan@aut.edu', '2022-01-16 17:50:05', 1),
(88, 'Mohamad@gmail.com', '2022-01-16 23:41:19', 3),
(89, 'ghanem.hasan@aut.edu', '2022-01-16 23:42:16', 1),
(90, 'ali@gmail.com', '2022-01-16 23:43:19', 3),
(91, 'ghanem.hasan@aut.edu', '2022-01-16 23:43:45', 1),
(92, 'Mark@gmail.com', '2022-01-17 07:52:56', 3),
(93, 'Mark@gmail.com', '2022-01-17 07:53:14', 3),
(94, 'ghanem.hasan@aut.edu', '2022-01-17 07:57:04', 0),
(95, 'ghanem.hasan@aut.edu', '2022-01-17 07:57:10', 1),
(96, 'Mark@gmail.com', '2022-01-17 08:45:44', 3),
(97, 'ghanem.hasan@aut.edu', '2022-01-17 08:46:27', 1),
(98, 'Mark@gmail.com', '2022-01-17 08:51:45', 3),
(99, 'ghanem.hasan@aut.edu', '2022-01-17 08:52:10', 1),
(100, 'Mark@gmail.com', '2022-01-17 19:11:11', 3),
(101, 'ghanem.hasan@aut.edu', '2022-01-17 19:11:56', 1),
(102, 'Mark@gmail.com', '2022-01-19 20:10:12', 3),
(103, 'ghanem.hasan@aut.edu', '2022-01-19 20:10:49', 1),
(104, 'ghanem.hasan@aut.edu', '2022-01-20 21:22:29', 1),
(105, 'ghanem.hasan@aut.edu', '2022-01-27 16:54:17', 1),
(106, 'ghanem.hasan@aut.edu', '2022-01-27 18:12:13', 1),
(107, 'ali@gmail.com', '2022-01-27 18:13:18', 3),
(108, 'ghanem.hasan@aut.edu', '2022-01-27 18:14:10', 1),
(109, 'ali@gmail.com', '2022-01-30 17:28:10', 3),
(110, 'ali@gmail.com', '2022-01-30 18:10:59', 3),
(111, 'ali@gmail.com', '2022-01-30 18:12:42', 3),
(112, 'Mark@gmail.com', '2022-01-30 18:23:40', 3),
(113, 'Mohamad@gmail.com', '2022-01-30 18:26:38', 3),
(114, 'Mark@gmail.com', '2022-01-30 18:29:14', 3),
(115, 'Mark@gmail.com', '2022-01-30 18:30:38', 3),
(116, 'Abbas@gmail.com', '2022-01-30 18:32:43', 3),
(117, 'ghanem.hasan@aut.edu', '2022-01-30 18:33:47', 1),
(118, 'Mark@gmail.com', '2022-01-30 18:51:31', 3),
(119, 'ghanem.hasan@aut.edu', '2022-01-30 18:54:48', 1),
(120, 'Mark@gmail.com', '2022-01-30 19:22:20', 3),
(121, 'ghanem.hasan@aut.edu', '2022-01-30 19:31:15', 1),
(122, 'ali@gmail.com', '2022-01-30 23:05:04', 3),
(123, 'ghanem.hasan@aut.edu', '2022-01-30 23:05:45', 1),
(124, 'Mohamad@gmail.com', '2022-01-30 23:54:32', 3),
(125, 'ghanem.hasan@aut.edu', '2022-01-30 23:55:49', 1),
(126, 'Mark@gmail.com', '2022-01-31 00:21:59', 3),
(127, 'ghanem.hasan@aut.edu', '2022-01-31 00:22:41', 1),
(128, 'Mohamad@gmail.com', '2022-01-31 01:25:48', 3),
(129, 'ghanem.hasan@aut.edu', '2022-01-31 01:26:19', 1),
(130, 'Ghadir@gmail.com', '2022-01-31 13:20:06', 0),
(131, 'Abbas@gmail.com', '2022-01-31 13:20:18', 3),
(132, 'Mohamad@gmail.com', '2022-01-31 13:21:16', 3),
(133, 'ghanem.hasan@aut.edu', '2022-01-31 13:22:29', 1),
(134, 'ghanem.hasan@aut.edu', '2022-01-31 13:24:57', 1),
(135, 'Ali@aut.edu', '2022-01-31 13:25:23', 0),
(136, 'ali@gmail.com', '2022-01-31 13:25:51', 3),
(137, 'ali@gmail.com', '2022-01-31 13:28:38', 3),
(138, 'ghanem.hasan@aut.edu', '2022-01-31 13:28:58', 1),
(139, 'Rami@gmail.com', '2022-01-31 13:43:20', 3),
(140, 'ghanem.hasan@aut.edu', '2022-01-31 13:44:01', 1),
(141, 'Georges@gmail.com', '2022-01-31 13:48:46', 3),
(142, 'ghanem.hasan@aut.edu', '2022-01-31 13:49:20', 1);

-- --------------------------------------------------------

--
-- Table structure for table `ordered`
--

CREATE TABLE `ordered` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `date_time` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ordered`
--

INSERT INTO `ordered` (`id`, `customer_id`, `status`, `date_time`) VALUES
(115, 5, 1, '2022-01-29 18:30:52'),
(117, 5, 1, '2022-01-30 18:51:53'),
(120, 7, 1, '2022-01-30 23:55:25'),
(121, 5, 1, '2022-01-31 00:22:23'),
(122, 7, 1, '2022-01-31 01:26:06'),
(123, 10, 1, '2022-01-31 13:20:59'),
(124, 7, 2, '2022-01-31 13:22:14'),
(125, 4, 1, '2022-01-31 13:28:26'),
(126, 4, 0, '2022-01-31 13:28:47'),
(127, 9, 0, '2022-01-31 13:43:49'),
(128, 8, 0, '2022-01-31 13:49:06');

-- --------------------------------------------------------

--
-- Table structure for table `ordered_details`
--

CREATE TABLE `ordered_details` (
  `id` int(11) NOT NULL,
  `ordered_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ordered_details`
--

INSERT INTO `ordered_details` (`id`, `ordered_id`, `product_id`, `product_quantity`) VALUES
(8, 115, 29, 3),
(9, 115, 20, 3),
(10, 115, 25, 3),
(15, 117, 12, 3),
(16, 117, 1, 3),
(17, 117, 3, 3),
(18, 117, 5, 3),
(25, 120, 2, 3),
(26, 120, 26, 3),
(27, 120, 21, 5),
(28, 121, 33, 3),
(29, 121, 16, 3),
(30, 122, 30, 4),
(31, 122, 28, 3),
(32, 122, 29, 3),
(33, 123, 35, 2),
(34, 123, 23, 3),
(35, 123, 17, 2),
(36, 123, 25, 2),
(37, 123, 16, 2),
(38, 124, 37, 2),
(39, 124, 27, 2),
(40, 124, 34, 2),
(41, 124, 8, 2),
(42, 125, 20, 2),
(43, 125, 10, 3),
(44, 125, 9, 3),
(45, 125, 31, 2),
(46, 126, 37, 2),
(47, 127, 31, 3),
(48, 127, 27, 3),
(49, 127, 7, 3),
(50, 128, 1, 3),
(51, 128, 12, 3);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_category` varchar(255) NOT NULL,
  `product_gender` varchar(10) NOT NULL,
  `product_price` float NOT NULL,
  `product_final_price` float NOT NULL,
  `product_quantity` int(11) NOT NULL,
  `product_image` varchar(100) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `product_name`, `product_category`, `product_gender`, `product_price`, `product_final_price`, `product_quantity`, `product_image`, `status`) VALUES
(1, 'Bag', 'Bags', 'male', 40, 32, 28, 'R.jpg', 1),
(2, 'wristwatch gold', 'Others', 'female', 100, 100, 12, 'OIP11.jpg', 1),
(3, 'white shoes', 'Shoes', 'kids', 50, 40, 25, 'OIP6.jpg', 1),
(4, 'black shoes', 'Shoes', 'male', 50, 50, 50, 'R1.jpg', 1),
(5, 'lunet', 'Others', 'male', 30, 27, 9, 'fd451e2b-d2fe-4083-8781-e5eef56aa148.jpg', 1),
(6, 'lunet', 'Others', 'female', 30, 27, 13, 'OIP.jpg', 1),
(7, 'black bag', 'Bags', 'male', 50, 50, 20, 'OIP10.jpg', 1),
(8, 'Cap', 'Others', 'female', 10, 10, 20, 'OIF8.png', 1),
(9, 'Bag', 'Bags', 'male', 30, 27, 30, 'OIP9.jpg', 1),
(10, 'blue shoes', 'Shoes', 'male', 50, 45, 45, 'OIP7.jpg', 1),
(11, 'shoes', 'Shoes', 'female', 50, 45, 47, '16d584b7-8fa4-4b2b-9aec-b32b086432e4.jpg', 1),
(12, 'black short', 'Clothing', 'male', 20, 18, 45, '2a401f24-0722-4e60-a906-5107c7ddc13b.jpg', 1),
(13, 'white short', 'Clothing', 'male', 20, 18, 50, '8d8f41bc-d521-4db9-8f93-d5b6e3080dd2.jpg', 1),
(14, 'blue short', 'Clothing', 'female', 20, 18, 50, 'cfa153f9-e679-4fe0-bb10-c24104f4cab0.jpg', 1),
(15, 'black tshirt', 'Clothing', 'male', 50, 50, 50, '9ae10e4e-d23f-4b53-9403-01294b2aaf4e.jpg', 1),
(16, 'white tshirt', 'Clothing', 'male', 50, 50, 38, 'OIP2.jpg', 1),
(17, 'white tshirt', 'Clothing', 'male', 50, 45, 50, 'OIP3.jpg', 1),
(18, 'green tshirt', 'Clothing', 'male', 50, 50, 44, 'OIP4.jpg', 1),
(19, 'black pijama', 'Clothing', 'kids', 100, 80, 50, '155494.jpg', 1),
(20, 'shoes', 'Shoes', 'male', 100, 100, 45, 'OIP23.jpg', 1),
(21, 'Caps', 'Others', 'female', 10, 8, 200, 'OIP20.jpg', 1),
(22, 'black bag', 'Bags', 'female', 120, 114, 17, 'OIP16.jpg', 1),
(23, 'shoes', 'Shoes', 'female', 50, 45, 50, 'OIP22.jpg', 1),
(24, 'shoes', 'Shoes', 'male', 120, 120, 49, 'OIP24.jpg', 1),
(25, 'shoes', 'Shoes', 'kids', 100, 100, 8, 'th.jpg', 1),
(26, 'lunet', 'Others', 'male', 150, 135, 20, 'OIF19.jpg', 1),
(27, 'bag', 'Bags', 'kids', 130, 130, 17, 'OIP12.jpg', 1),
(28, 'Red shoes', 'Shoes', 'kids', 100, 100, 31, 'download.jpg', 1),
(29, 'black budy', 'Clothing', 'female', 120, 120, 30, 'OIF30.jpg', 1),
(30, 'shoes', 'Shoes', 'female', 120, 120, 41, 'download1.jpg', 1),
(31, 'bag', 'Bags', 'kids', 120, 108, 50, 'OIP25.jpg', 1),
(32, 'orange shoes', 'Shoes', 'kids', 70, 49, 50, 'OIP21.jpg', 1),
(33, 'tshirt', 'Clothing', 'male', 50, 40, 20, 'OIP26.jpg', 1),
(34, 'lunet', 'Others', 'female', 120, 96, 47, 'th1.jpg', 1),
(35, 'shoes', 'Shoes', 'male', 120, 108, 47, 'OIP18.jpg', 1),
(36, 'perfume', 'Others', 'male', 30, 15, 97, 'OIP29.jpg', 1),
(37, 'gloves', 'Others', 'male', 50, 50, 26, 'OIP13.jpg', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `logins_registers`
--
ALTER TABLE `logins_registers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ordered`
--
ALTER TABLE `ordered`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ordered_details`
--
ALTER TABLE `ordered_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `logins_registers`
--
ALTER TABLE `logins_registers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=143;

--
-- AUTO_INCREMENT for table `ordered`
--
ALTER TABLE `ordered`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=129;

--
-- AUTO_INCREMENT for table `ordered_details`
--
ALTER TABLE `ordered_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
