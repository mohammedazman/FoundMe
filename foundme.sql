-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 11, 2020 at 08:03 AM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `foundme`
--

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `compigan_id` int(11) NOT NULL,
  `message` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `compigans`
--

CREATE TABLE `compigans` (
  `id` int(11) NOT NULL,
  `owner_id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `galary` text NOT NULL,
  `descrption` text NOT NULL,
  `file` text NOT NULL,
  `tags` text NOT NULL,
  `status` varchar(10) NOT NULL DEFAULT '1',
  `cost` double NOT NULL,
  `duration` int(11) NOT NULL,
  `pending` int(11) NOT NULL DEFAULT 0,
  `updates` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `update_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `compigans`
--

INSERT INTO `compigans` (`id`, `owner_id`, `title`, `galary`, `descrption`, `file`, `tags`, `status`, `cost`, `duration`, `pending`, `updates`, `created_at`, `update_at`) VALUES
(1, 28, 'this is new compaiin', '1.jpg', '<p>texttexttexttexttexttexttexttexttexttexttexttexttexttexttexttexttexttexttexttexttexttexttexttexttexttexttexttexttexttexttexttexttexttexttexttexttexttexttexttexttexttexttexttexttexttexttexttexttexttexttexttexttexttexttexttexttexttexttexttexttexttexttexttexttexttexttexttexttexttexttexttexttexttexttexttexttext</p>', '', 'hh', '2', 30000, 2020, 0, NULL, '2020-01-27 19:02:52', '2020-01-27 19:02:52'),
(2, 28, 'gjhgkj,hgkjhgjk', '1.jpg', '<p>kjgufjfkjhglkjgkjhlkjhkljhklk</p>', '', 'kgjkhgkhgkjhg', '0', 9000, 2020, 0, NULL, '2020-01-28 07:23:49', '2020-01-28 07:23:49'),
(3, 28, 'this is new compaiin', '1.jpg', '<p>this is content</p>', '982a52dbcd21a39b8b382250be2bed13.pdf', 'ggg', '2', 700, 2020, 0, NULL, '2020-01-30 08:43:27', '2020-01-30 08:43:27'),
(4, 28, 'this is new compibnmbnjbhjmngn', '1.jpg', '<p>this is contextthis is contextthis is contextthis is contextthis is contextthis is context</p>', '144fd7b425e91b1160e0224dbd227a83.pdf', 'ggg', '2', 700, 2020, 0, NULL, '2020-01-30 09:41:32', '2020-01-30 09:41:32'),
(5, 55, 'this is new compiign', '1.jpg', '<p>this is discthis is discthis is discthis is discthis is discthis is discthis is discthis is discthis is discthis is discthis is discthis is disc</p>', 'c43262c417d551a0ec9db9670e842b4c.pdf', 'ggg', '0', 30000, 2020, 0, NULL, '2020-02-02 08:18:38', '2020-02-02 08:18:38'),
(8, 55, 'this is new compaiin', '1.jpg', '<p>hhhhhhhhhhhhhhhh</p>', '', 'ggg', '0', 600, 2020, 0, NULL, '2020-02-03 23:00:10', '2020-02-03 23:00:10'),
(9, 55, 'this is new compaiin', '1.jpg', '<p>hhhhhhhhhhhhhhhh</p>', '', 'ggg', '2', 600, 2020, 0, NULL, '2020-02-03 23:01:05', '2020-02-03 23:01:05'),
(10, 55, 'this is new compaiin', '1.jpg', '<p>hhhhhhhhhhhhhhhhhhhhhhhhh</p>', '', 'ggg', '2', 600, 2020, 0, NULL, '2020-02-03 23:14:01', '2020-02-03 23:14:01'),
(11, 55, 'gjhgkj,hgkjhgjk', '1.jpg', '<p>uuuuuuuuuuuuuuuuuu</p>', '', 'hh', '1', 600, 275760, 0, NULL, '2020-02-03 23:17:43', '2020-02-03 23:17:43'),
(12, 55, 'last tryyyyyyyyyyyyy', '1.jpg', '<p>hhhhhhhhhhhhhhhhhhhh</p>', '', 'try', '1', 19, 2020, 0, NULL, '2020-02-03 23:28:23', '2020-02-03 23:28:23'),
(13, 55, 'last tryyyyyyyyyyyyy', '1.jpg', '<p>hhhhhhhhhhhhhhhhhhhh</p>', '', 'try', '1', 19, 2020, 0, NULL, '2020-02-03 23:28:38', '2020-02-03 23:28:38'),
(14, 55, 'last tryyyyyyyyyyyyy', '1.jpg', '<p>hhhhhhhhhhhhhhhhhhhh</p>', '', 'try', '1', 19, 2020, 0, NULL, '2020-02-03 23:28:42', '2020-02-03 23:28:42'),
(15, 55, 'last tryyyyyyyyyyyyy', '1.jpg', '<p>hhhhhhhhhhhhhhhhhhhh</p>', '', 'try', '1', 19, 2020, 0, NULL, '2020-02-03 23:28:44', '2020-02-03 23:28:44'),
(16, 55, 'last tryyyyyyyyyyyyy', '1.jpg', '<p>hhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh</p>', '', 'kytiukj,m', '3', 666, 2020, 0, NULL, '2020-02-03 23:32:47', '2020-02-03 23:32:47'),
(17, 28, 'this is new compibnmbnjbhjmngn', '1.jpg', '<p>jjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjj</p>', '', 'hh', '2', 900, 2020, 0, NULL, '2020-02-04 06:26:51', '2020-02-04 06:26:51'),
(18, 28, 'this is new compibnmbnjbhjmngn', '1.jpg', '<p>hgggggggggggggggggggggggggggggg</p>', '', 'ggg', '3', 777, 2020, 0, NULL, '2020-02-04 07:46:09', '2020-02-04 07:46:09'),
(19, 28, 'hhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh', '1.jpg', '<p>kuhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh</p>', '', 'hh', '1', 600, 2020, 0, NULL, '2020-02-04 10:22:03', '2020-02-04 10:22:03'),
(20, 28, 'Progeamming', '1.jpg', '<p>nnnnnnnnnnnnnnn</p>', '', 'web', '1', 27, 2020, 0, NULL, '2020-02-04 11:16:22', '2020-02-04 11:16:22'),
(21, 35, 'this is new compibnmbnjbhjmngn', '1.jpg', '<p>ttttttttttttttttttttttttttttttttttttttttttttttt</p>', '', 'ggg', '1', 500, 2020, 0, NULL, '2020-02-04 17:12:44', '2020-02-04 17:12:44'),
(22, 28, 'this is new compibnmbnjbhjmngn', '1.jpg', '<p>gggggggggggggggggggggggggggg</p>', '', 'ggg', '1', 500, 2020, 0, NULL, '2020-02-04 18:28:09', '2020-02-04 18:28:09'),
(23, 28, 'this is new compaiin', '1.jpg', '<p>hhhhhhhhhhhhhhhhhhhhh</p>', '', 'ggg', '1', 500, 2020, 0, NULL, '2020-02-04 18:31:55', '2020-02-04 18:31:55'),
(24, 28, 'this is new compibnmbnjbhjmngn', '1.jpg', '<p>ggggggggggggggggggggg</p>', '', 'ggg', '1', 500, 2020, 0, NULL, '2020-02-04 19:10:47', '2020-02-04 19:10:47'),
(25, 28, 'this is new compibnmbnjbhjmngn', '1.jpg', '<p>hhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh</p>', '', 'ggg', '1', 666, 2020, 0, NULL, '2020-02-04 19:15:11', '2020-02-04 19:15:11');

-- --------------------------------------------------------

--
-- Table structure for table `donations`
--

CREATE TABLE `donations` (
  `id` int(11) NOT NULL,
  `compigan_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `amount` decimal(10,0) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `donations`
--

INSERT INTO `donations` (`id`, `compigan_id`, `user_id`, `amount`, `created_at`) VALUES
(1, 16, 55, '40', '2020-02-09 19:59:14'),
(2, 16, 55, '40', '2020-02-09 20:01:16'),
(3, 16, 55, '50', '2020-02-09 20:01:47'),
(4, 3, 35, '400', '2020-02-10 18:36:30'),
(5, 3, 35, '300', '2020-02-10 18:42:21'),
(6, 3, 35, '20', '2020-02-10 18:44:09'),
(9, 3, 35, '20', '2020-02-10 18:54:26'),
(10, 3, 35, '20', '2020-02-10 18:57:00');

-- --------------------------------------------------------

--
-- Table structure for table `followers`
--

CREATE TABLE `followers` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `compigan_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `followers`
--

INSERT INTO `followers` (`id`, `user_id`, `compigan_id`) VALUES
(9, 55, 3),
(10, 28, 3);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` int(11) NOT NULL,
  `target_user` varchar(11) NOT NULL,
  `text` text NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `type` varchar(20) NOT NULL,
  `effected_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `target_user`, `text`, `status`, `type`, `effected_id`, `created_at`, `updated_at`) VALUES
(89, '28', 'Admin reject your compaign', 1, 'reject Compaign', 2, '2020-02-09 18:14:23', '2020-02-09 18:14:23'),
(90, '28', 'Admin approve your compaign', 1, 'approve compaign', 4, '2020-02-09 18:14:27', '2020-02-09 18:14:27'),
(91, '55', 'Admin reject your compaign', 0, 'reject Compaign', 8, '2020-02-09 18:14:31', '2020-02-09 18:14:31'),
(92, '55', 'Admin approve your compaign', 0, 'approve compaign', 5, '2020-02-09 18:14:34', '2020-02-09 18:14:34'),
(93, '28', 'Admin pause your compaign', 1, 'pause compaign', 4, '2020-02-09 18:14:58', '2020-02-09 18:14:58'),
(94, '55', 'Admin delete your compaign', 0, 'delete compaign', 5, '2020-02-09 18:15:07', '2020-02-09 18:15:07'),
(95, '28', 'Admin resum your compaign', 1, 'resum compaign', 4, '2020-02-09 18:15:16', '2020-02-09 18:15:16'),
(96, '28', 'Admin active your compaign', 1, 'active compaign', 1, '2020-02-09 18:15:26', '2020-02-09 18:15:26'),
(97, '28', 'Admin approve your compaign', 1, 'approve compaign', 3, '2020-02-09 18:16:04', '2020-02-09 18:16:04'),
(98, '55', 'Admin approve your compaign', 0, 'approve compaign', 9, '2020-02-09 18:16:08', '2020-02-09 18:16:08'),
(99, '55', 'Admin approve your compaign', 0, 'approve compaign', 10, '2020-02-09 18:16:12', '2020-02-09 18:16:12'),
(100, '28', 'Admin approve your compaign', 1, 'approve compaign', 18, '2020-02-09 18:16:18', '2020-02-09 18:16:18'),
(101, '28', 'Admin approve your compaign', 1, 'approve compaign', 17, '2020-02-09 18:16:23', '2020-02-09 18:16:23'),
(102, '55', 'Admin approve your compaign', 0, 'approve compaign', 16, '2020-02-09 18:16:29', '2020-02-09 18:16:29'),
(103, '55', 'Admin pause your compaign', 0, 'pause compaign', 16, '2020-02-09 18:16:53', '2020-02-09 18:16:53'),
(104, '28', 'Admin pause your compaign', 1, 'pause compaign', 18, '2020-02-09 18:16:58', '2020-02-09 18:16:58'),
(105, '55', 'New donar is added by mokhtar ghalebabout:40$', 0, 'add donation', 16, '2020-02-09 20:01:16', '2020-02-09 20:01:16'),
(106, '55', 'New donar is added by mokhtar ghalebabout:50$', 0, 'add donation', 16, '2020-02-09 20:01:47', '2020-02-09 20:01:47'),
(112, '28', 'ibtehal Fahd start following your compaign', 0, 'follow compaign', 3, '2020-02-10 09:10:08', '2020-02-10 09:10:08'),
(113, '28', 'ibtehal Fahd start following your compaign', 0, 'follow compaign', 3, '2020-02-10 09:38:53', '2020-02-10 09:38:53'),
(114, '28', 'ibtehal Fahd start following your compaign', 0, 'follow compaign', 3, '2020-02-10 09:44:02', '2020-02-10 09:44:02'),
(115, '28', 'lama ibt donate 400$ to your compaign', 0, 'add donation', 3, '2020-02-10 18:36:30', '2020-02-10 18:36:30'),
(116, '28', 'lama ibt donate 300$ to your compaign', 0, 'add donation', 3, '2020-02-10 18:42:21', '2020-02-10 18:42:21'),
(117, '28', 'lama ibt donate 20$ to your compaign', 0, 'add donation', 3, '2020-02-10 18:44:12', '2020-02-10 18:44:12'),
(120, '28', 'lama ibt donate 20$ to your compaign', 0, 'add donation', 3, '2020-02-10 18:54:26', '2020-02-10 18:54:26'),
(121, '28', 'lama ibt donate 20$ to your compaign', 0, 'add donation', 3, '2020-02-10 18:57:00', '2020-02-10 18:57:00'),
(122, '55', 'new donate to campaign that you follow', 0, 'add donation', 3, '2020-02-10 18:57:00', '2020-02-10 18:57:00'),
(123, '28', 'new donate to campaign that you follow', 0, 'add donation', 3, '2020-02-10 18:57:00', '2020-02-10 18:57:00');

-- --------------------------------------------------------

--
-- Table structure for table `popular_search`
--

CREATE TABLE `popular_search` (
  `id` int(11) NOT NULL,
  `query` varchar(255) NOT NULL,
  `total_search` int(11) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `popular_search`
--

INSERT INTO `popular_search` (`id`, `query`, `total_search`) VALUES
(11, 'compaign', 4),
(12, 'aaa', 1),
(13, 'comp', 2),
(14, 'compaiin', 5);

-- --------------------------------------------------------

--
-- Table structure for table `profiles`
--

CREATE TABLE `profiles` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `value` text NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `profiles`
--

INSERT INTO `profiles` (`id`, `name`, `value`, `user_id`) VALUES
(27, 'First Name', 'ibtehal', 28),
(28, 'Last Name', 'Fahd', 28),
(29, 'Phone', '777', 28),
(30, 'First Name', 'thurya', 29),
(31, 'Last Name', 'abdu', 29),
(32, 'Phone', '7766766', 29),
(33, 'First Name', 'admin', 31),
(34, 'Last Name', 'aladmin', 31),
(35, 'Phone', '7777766666', 31),
(36, 'First Name', 'lama', 32),
(37, 'Last Name', 'hhhh', 32),
(38, 'Phone', '775704262', 32),
(39, 'First Name', 'bushra', 33),
(40, 'Last Name', 'almahdi', 33),
(41, 'Phone', '7757354429', 33),
(42, 'First Name', 'lama', 34),
(43, 'Last Name', 'hhhh', 34),
(44, 'Phone', '775704262', 34),
(45, 'First Name', 'lama', 35),
(46, 'Last Name', 'ibt', 35),
(47, 'Phone', '+967 775704262', 35),
(90, 'First Name', 'ibtehal', 50),
(91, 'Last Name', 'Fahd', 50),
(92, 'Phone', '+967 775704262', 50),
(93, 'First Name', 'ibtehal', 51),
(94, 'Last Name', 'Fahd', 51),
(95, 'Phone', '+967 775704262', 51),
(96, 'First Name', 'ibtehal', 52),
(97, 'Last Name', 'Fahd', 52),
(98, 'Phone', '+967 775704262', 52),
(99, 'First Name', 'ibtehal', 53),
(100, 'Last Name', 'Fahd', 53),
(101, 'Phone', '+967 775704262', 53),
(102, 'First Name', 'amal', 54),
(103, 'Last Name', 'Fahd', 54),
(104, 'Phone', '+967 775704262', 54),
(105, 'First Name', 'mokhtar', 55),
(106, 'Last Name', 'ghaleb', 55),
(107, 'Phone', '+967 77777777777', 55),
(108, 'First Name', 'lana', 56),
(109, 'Last Name', 'abdu', 56),
(110, 'Phone', '+967 77777777777', 56);

-- --------------------------------------------------------

--
-- Table structure for table `shares`
--

CREATE TABLE `shares` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `compigan_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `type` varchar(10) NOT NULL DEFAULT 'user',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `status`, `type`, `created_at`) VALUES
(28, 'ibtehaly@gmail.com', 'ab23302011e4974ab3acd57c81f530d9', 1, 'User', '2020-01-27 16:51:47'),
(29, 'thuraya@gmail.com', 'ab23302011e4974ab3acd57c81f530d9', 1, 'Admin', '2020-01-27 17:08:50'),
(30, 'nona@gmail.com', 'ab23302011e4974ab3acd57c81f530d9', 1, 'User', '2020-01-27 18:19:01'),
(31, 'admin@gmail.com', '075770b78cc386579d94f83ffb1bd682', 1, 'User', '2020-01-27 18:29:04'),
(32, 'gg@gmaiol.com', 'ab23302011e4974ab3acd57c81f530d9', 1, 'User', '2020-01-28 07:16:38'),
(33, 'bushra@gmail.com', 'ab23302011e4974ab3acd57c81f530d9', 1, 'User', '2020-01-28 07:39:17'),
(34, 'lama@gmail.com', 'ab23302011e4974ab3acd57c81f530d9', 1, 'User', '2020-01-29 06:28:31'),
(35, 'ibtehal515@gmail.com', 'ab23302011e4974ab3acd57c81f530d9', 1, 'User', '2020-01-29 07:09:40'),
(50, 'ibtehal5715@gmail.com', 'ab23302011e4974ab3acd57c81f530d9', 1, 'User', '2020-01-29 11:45:21'),
(51, 'ibtehal56615@gmail.com', 'ab23302011e4974ab3acd57c81f530d9', 1, 'User', '2020-01-29 11:47:03'),
(52, 'ibtehal5661665@gmail.com', 'ab23302011e4974ab3acd57c81f530d9', 1, 'User', '2020-01-29 11:48:46'),
(53, 'ibtehal56666615@gmail.com', 'ab23302011e4974ab3acd57c81f530d9', 1, 'User', '2020-01-29 11:51:10'),
(54, 'amaal@gmail.com', 'ab23302011e4974ab3acd57c81f530d9', 1, 'User', '2020-01-29 16:50:27'),
(55, 'mokhtar@gamil.com', 'ab23302011e4974ab3acd57c81f530d9', 1, 'User', '2020-02-02 08:09:11'),
(56, 'lana@gmail.com', 'ab23302011e4974ab3acd57c81f530d9', 1, 'User', '2020-02-03 09:07:57');

-- --------------------------------------------------------

--
-- Table structure for table `visits`
--

CREATE TABLE `visits` (
  `id` int(11) NOT NULL,
  `page` varchar(32) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `compigans`
--
ALTER TABLE `compigans`
  ADD PRIMARY KEY (`id`),
  ADD KEY `owner_id` (`owner_id`);

--
-- Indexes for table `donations`
--
ALTER TABLE `donations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `compigan_id` (`compigan_id`);

--
-- Indexes for table `followers`
--
ALTER TABLE `followers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `compigan_id` (`compigan_id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `popular_search`
--
ALTER TABLE `popular_search`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `profiles`
--
ALTER TABLE `profiles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `shares`
--
ALTER TABLE `shares`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `compigan_id` (`compigan_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `visits`
--
ALTER TABLE `visits`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `compigans`
--
ALTER TABLE `compigans`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `donations`
--
ALTER TABLE `donations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `followers`
--
ALTER TABLE `followers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=124;

--
-- AUTO_INCREMENT for table `popular_search`
--
ALTER TABLE `popular_search`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `profiles`
--
ALTER TABLE `profiles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=111;

--
-- AUTO_INCREMENT for table `shares`
--
ALTER TABLE `shares`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `visits`
--
ALTER TABLE `visits`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `compigans`
--
ALTER TABLE `compigans`
  ADD CONSTRAINT `compigans_ibfk_1` FOREIGN KEY (`owner_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `donations`
--
ALTER TABLE `donations`
  ADD CONSTRAINT `donations_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `donations_ibfk_2` FOREIGN KEY (`compigan_id`) REFERENCES `compigans` (`id`);

--
-- Constraints for table `followers`
--
ALTER TABLE `followers`
  ADD CONSTRAINT `followers_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `followers_ibfk_2` FOREIGN KEY (`compigan_id`) REFERENCES `compigans` (`id`);

--
-- Constraints for table `profiles`
--
ALTER TABLE `profiles`
  ADD CONSTRAINT `profiles_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `shares`
--
ALTER TABLE `shares`
  ADD CONSTRAINT `shares_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `shares_ibfk_2` FOREIGN KEY (`compigan_id`) REFERENCES `compigans` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
