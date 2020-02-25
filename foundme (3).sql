-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 16, 2020 at 07:08 AM
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

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `user_id`, `compigan_id`, `message`, `status`, `created_at`) VALUES
(0, 28, 4, 'hi', 1, '2020-02-15 20:45:21');

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
(1, 28, 'this is new compaiin', '1.jpg', '<p>texttexttexttexttexttexttexttexttexttexttexttexttexttexttexttexttexttexttexttexttexttexttexttexttexttexttexttexttexttexttexttexttexttexttexttexttexttexttexttexttexttexttexttexttexttexttexttexttexttexttexttexttexttexttexttexttexttexttexttexttexttexttexttexttexttexttexttexttexttexttexttexttexttexttexttexttext</p>', '', 'hh', '3', 30000, 2020, 0, NULL, '2020-01-27 19:02:52', '2020-01-27 19:02:52'),
(2, 28, 'gjhgkj,hgkjhgjk', '1.jpg', '<p>kjgufjfkjhglkjgkjhlkjhkljhklk</p>', '', 'kgjkhgkhgkjhg', '3', 9000, 2020, 0, NULL, '2020-01-28 07:23:49', '2020-01-28 07:23:49'),
(3, 28, 'this is new compaiin', '1.jpg', '<p>this is content</p>', '982a52dbcd21a39b8b382250be2bed13.pdf', 'ggg', '3', 700, 2020, 0, '', '2020-01-30 08:43:27', '2020-01-30 08:43:27'),
(4, 28, 'this is new compibnmbnjbhjmngn', '1.jpg', '<p>this is contextthis is contextthis is contextthis is contextthis is contextthis is context</p>', '144fd7b425e91b1160e0224dbd227a83.pdf', 'ggg', '3', 700, 2020, 0, NULL, '2020-01-30 09:41:32', '2020-01-30 09:41:32'),
(5, 55, 'this is new compiign', '1.jpg', '<p>this is discthis is discthis is discthis is discthis is discthis is discthis is discthis is discthis is discthis is discthis is discthis is disc</p>', 'c43262c417d551a0ec9db9670e842b4c.pdf', 'ggg', '3', 30000, 2020, 0, NULL, '2020-02-02 08:18:38', '2020-02-02 08:18:38'),
(8, 55, 'this is new compaiin', '1.jpg', '<p>hhhhhhhhhhhhhhhh</p>', '', 'ggg', '3', 600, 2020, 0, NULL, '2020-02-03 23:00:10', '2020-02-03 23:00:10'),
(9, 55, 'this is new compaiin', '1.jpg', '<p>hhhhhhhhhhhhhhhh</p>', '', 'ggg', '3', 600, 2020, 0, NULL, '2020-02-03 23:01:05', '2020-02-03 23:01:05'),
(10, 55, 'this is new compaiin', '1.jpg', '<p>hhhhhhhhhhhhhhhhhhhhhhhhh</p>', '', 'ggg', '3', 600, 2020, 0, NULL, '2020-02-03 23:14:01', '2020-02-03 23:14:01'),
(11, 55, 'gjhgkj,hgkjhgjk', '1.jpg', '<p>uuuuuuuuuuuuuuuuuu</p>', '', 'hh', '3', 600, 275760, 0, NULL, '2020-02-03 23:17:43', '2020-02-03 23:17:43'),
(12, 55, 'last tryyyyyyyyyyyyy', '1.jpg', '<p>hhhhhhhhhhhhhhhhhhhh</p>', '', 'try', '3', 19, 2020, 0, NULL, '2020-02-03 23:28:23', '2020-02-03 23:28:23'),
(13, 55, 'last tryyyyyyyyyyyyy', '1.jpg', '<p>hhhhhhhhhhhhhhhhhhhh</p>', '', 'try', '3', 19, 2020, 0, NULL, '2020-02-03 23:28:38', '2020-02-03 23:28:38'),
(14, 55, 'last tryyyyyyyyyyyyy', '1.jpg', '<p>hhhhhhhhhhhhhhhhhhhh</p>', '', 'try', '3', 19, 2020, 0, NULL, '2020-02-03 23:28:42', '2020-02-03 23:28:42'),
(15, 55, 'last tryyyyyyyyyyyyy', '1.jpg', '<p>hhhhhhhhhhhhhhhhhhhh</p>', '', 'try', '3', 19, 2020, 0, NULL, '2020-02-03 23:28:44', '2020-02-03 23:28:44'),
(16, 55, 'last tryyyyyyyyyyyyy', '1.jpg', '<p>hhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh</p>', '', 'kytiukj,m', '3', 666, 2020, 0, NULL, '2020-02-03 23:32:47', '2020-02-03 23:32:47'),
(17, 28, 'this is new compibnmbnjbhjmngn', '1.jpg', '<p>jjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjj</p>', '', 'hh', '3', 900, 2020, 0, NULL, '2020-02-04 06:26:51', '2020-02-04 06:26:51'),
(18, 28, 'this is new compibnmbnjbhjmngn', '1.jpg', '<p>hgggggggggggggggggggggggggggggg</p>', '', 'ggg', '3', 777, 2020, 0, NULL, '2020-02-04 07:46:09', '2020-02-04 07:46:09'),
(19, 28, 'hhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh', '1.jpg', '<p>kuhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh</p>', '', 'hh', '3', 600, 2020, 0, NULL, '2020-02-04 10:22:03', '2020-02-04 10:22:03'),
(20, 28, 'Progeamming', '1.jpg', '<p>nnnnnnnnnnnnnnn</p>', '', 'web', '3', 27, 2020, 0, NULL, '2020-02-04 11:16:22', '2020-02-04 11:16:22'),
(21, 35, 'this is new compibnmbnjbhjmngn', '1.jpg', '<p>ttttttttttttttttttttttttttttttttttttttttttttttt</p>', '', 'ggg', '3', 500, 2020, 0, NULL, '2020-02-04 17:12:44', '2020-02-04 17:12:44'),
(22, 28, 'this is new compibnmbnjbhjmngn', '1.jpg', '<p>gggggggggggggggggggggggggggg</p>', '', 'ggg', '3', 500, 2020, 0, NULL, '2020-02-04 18:28:09', '2020-02-04 18:28:09'),
(23, 28, 'this is new compaiin', '1.jpg', '<p>hhhhhhhhhhhhhhhhhhhhh</p>', '', 'ggg', '3', 500, 2020, 0, NULL, '2020-02-04 18:31:55', '2020-02-04 18:31:55'),
(24, 28, 'this is new compibnmbnjbhjmngn', '1.jpg', '<p>ggggggggggggggggggggg</p>', '', 'ggg', '3', 500, 2020, 0, NULL, '2020-02-04 19:10:47', '2020-02-04 19:10:47'),
(25, 28, 'this is new compibnmbnjbhjmngn', '1.jpg', '<p>hhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh</p>', '', 'ggg', '3', 666, 2020, 0, NULL, '2020-02-04 19:15:11', '2020-02-04 19:15:11'),
(27, 28, 'why why why ya zeman', '', '', '', '#why #this', '3', 678, 2020, 0, NULL, '2020-02-15 22:55:09', '2020-02-15 22:55:09');

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
(112, '28', 'ibtehal Fahd start following your compaign', 1, 'follow compaign', 3, '2020-02-10 09:10:08', '2020-02-10 09:10:08'),
(113, '28', 'ibtehal Fahd start following your compaign', 1, 'follow compaign', 3, '2020-02-10 09:38:53', '2020-02-10 09:38:53'),
(114, '28', 'ibtehal Fahd start following your compaign', 1, 'follow compaign', 3, '2020-02-10 09:44:02', '2020-02-10 09:44:02'),
(115, '28', 'lama ibt donate 400$ to your compaign', 1, 'add donation', 3, '2020-02-10 18:36:30', '2020-02-10 18:36:30'),
(116, '28', 'lama ibt donate 300$ to your compaign', 1, 'add donation', 3, '2020-02-10 18:42:21', '2020-02-10 18:42:21'),
(117, '28', 'lama ibt donate 20$ to your compaign', 1, 'add donation', 3, '2020-02-10 18:44:12', '2020-02-10 18:44:12'),
(120, '28', 'lama ibt donate 20$ to your compaign', 1, 'add donation', 3, '2020-02-10 18:54:26', '2020-02-10 18:54:26'),
(121, '28', 'lama ibt donate 20$ to your compaign', 1, 'add donation', 3, '2020-02-10 18:57:00', '2020-02-10 18:57:00'),
(122, '55', 'new donate to campaign that you follow', 0, 'add donation', 3, '2020-02-10 18:57:00', '2020-02-10 18:57:00'),
(123, '28', 'new donate to campaign that you follow', 1, 'add donation', 3, '2020-02-10 18:57:00', '2020-02-10 18:57:00'),
(124, 'admin', 'Update compaign is require by ibtehaly fahdekand need approvment', 0, 'new compain', 0, '2020-02-15 19:17:21', '2020-02-15 19:17:21'),
(125, '28', 'Admin Reject your compaign update', 0, 'Reject Update', 3, '2020-02-15 19:38:55', '2020-02-15 19:38:55'),
(126, 'admin', 'New compaign is added by ibtehaly fahdekand need approvment', 0, 'new compain', 0, '2020-02-15 22:55:09', '2020-02-15 22:55:09');

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
(14, 'compaiin', 5),
(15, 'ff', 2),
(16, 'ffff', 4),
(17, 'fffffffff', 1),
(18, 'kjklj ', 1);

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
(27, 'First Name', 'ibtehaly', 28),
(28, 'Last Name', 'fahdek', 28),
(29, 'Phone', '+967777777777', 28),
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
(110, 'Phone', '+967 77777777777', 56),
(111, 'Bio', 'yes+this+is+me+', 28);

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
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `compaign_id` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `visits`
--

INSERT INTO `visits` (`id`, `page`, `user_id`, `created_at`, `compaign_id`) VALUES
(55, 'home\\index', NULL, '2020-02-11 07:38:01', NULL),
(56, 'home\\detailsCompagin', NULL, '2020-02-11 07:38:12', NULL),
(57, 'home\\detailsCompagin', NULL, '2020-02-11 07:38:36', NULL),
(58, 'home\\donate', NULL, '2020-02-11 07:38:41', NULL),
(59, 'home\\donate', NULL, '2020-02-11 07:40:08', NULL),
(60, 'home\\index', NULL, '2020-02-11 07:40:09', NULL),
(61, 'home\\detailsCompagin', NULL, '2020-02-11 07:40:17', NULL),
(62, 'home\\donate', NULL, '2020-02-11 07:40:20', NULL),
(63, 'home\\donate', NULL, '2020-02-11 07:40:34', NULL),
(64, 'home\\index', NULL, '2020-02-11 07:40:35', NULL),
(65, 'home\\index', NULL, '2020-02-11 07:52:13', NULL),
(66, 'home\\index', NULL, '2020-02-11 07:52:14', NULL),
(67, 'home\\index', NULL, '2020-02-11 07:54:54', NULL),
(68, 'home\\index', NULL, '2020-02-11 07:56:32', NULL),
(69, 'home\\index', NULL, '2020-02-11 07:57:47', NULL),
(70, 'home\\index', NULL, '2020-02-11 08:01:20', NULL),
(71, 'home\\index', NULL, '2020-02-11 08:01:23', NULL),
(72, 'home\\search', NULL, '2020-02-11 08:03:51', NULL),
(73, 'home\\search', NULL, '2020-02-11 08:04:16', NULL),
(74, 'home\\index', NULL, '2020-02-11 08:04:19', NULL),
(75, 'home\\index', NULL, '2020-02-11 08:04:39', NULL),
(76, 'home\\index', NULL, '2020-02-11 08:05:37', NULL),
(77, 'home\\index', NULL, '2020-02-11 08:07:10', NULL),
(78, 'home\\index', NULL, '2020-02-11 08:11:02', NULL),
(79, 'home\\index', NULL, '2020-02-11 08:12:11', NULL),
(80, 'home\\index', NULL, '2020-02-11 08:13:10', NULL),
(81, 'home\\index', NULL, '2020-02-11 08:17:12', NULL),
(82, 'home\\index', NULL, '2020-02-11 08:17:51', NULL),
(83, 'home\\index', NULL, '2020-02-11 08:18:10', NULL),
(84, 'home\\index', NULL, '2020-02-11 08:19:09', NULL),
(85, 'home\\index', NULL, '2020-02-11 08:19:37', NULL),
(86, 'home\\index', NULL, '2020-02-11 08:20:59', NULL),
(87, 'home\\index', NULL, '2020-02-11 08:21:25', NULL),
(88, 'home\\index', NULL, '2020-02-11 08:22:01', NULL),
(89, 'home\\index', NULL, '2020-02-11 08:24:49', NULL),
(90, 'home\\index', NULL, '2020-02-11 08:27:19', NULL),
(91, 'home\\login', NULL, '2020-02-11 08:29:30', NULL),
(92, 'home\\index', 28, '2020-02-11 08:29:48', NULL),
(93, 'home\\login', 28, '2020-02-11 08:29:48', NULL),
(94, 'home\\index', 28, '2020-02-11 08:32:11', NULL),
(95, 'home\\login', 28, '2020-02-11 08:32:11', NULL),
(96, 'home\\index', 28, '2020-02-11 08:32:24', NULL),
(97, 'home\\login', 28, '2020-02-11 08:32:24', NULL),
(98, 'home\\index', 28, '2020-02-11 08:32:35', NULL),
(99, 'home\\login', 28, '2020-02-11 08:32:35', NULL),
(100, 'home\\index', 28, '2020-02-11 08:33:05', NULL),
(101, 'home\\login', 28, '2020-02-11 08:33:05', NULL),
(102, 'home\\index', 28, '2020-02-11 08:33:33', NULL),
(103, 'home\\index', NULL, '2020-02-11 08:33:50', NULL),
(104, 'home\\index', NULL, '2020-02-11 08:38:36', NULL),
(105, 'home\\index', NULL, '2020-02-11 08:40:44', NULL),
(106, 'home\\index', NULL, '2020-02-11 08:41:36', NULL),
(107, 'home\\login', NULL, '2020-02-11 08:41:40', NULL),
(108, 'home\\index', 28, '2020-02-11 08:41:58', NULL),
(109, 'home\\login', 28, '2020-02-11 08:41:58', NULL),
(110, 'home\\index', 28, '2020-02-11 08:42:58', NULL),
(111, 'home\\login', 28, '2020-02-11 08:42:58', NULL),
(112, 'home\\index', 28, '2020-02-11 08:43:18', NULL),
(113, 'home\\index', NULL, '2020-02-11 08:43:24', NULL),
(114, 'home\\index', NULL, '2020-02-11 08:44:22', NULL),
(115, 'home\\login', NULL, '2020-02-11 08:45:09', NULL),
(116, 'home\\login', NULL, '2020-02-11 08:45:21', NULL),
(117, 'home\\index', 28, '2020-02-11 08:45:32', NULL),
(118, 'home\\login', 28, '2020-02-11 08:45:32', NULL),
(119, 'home\\index', 28, '2020-02-11 08:46:49', NULL),
(120, 'home\\login', 28, '2020-02-11 08:46:49', NULL),
(121, 'home\\index', 28, '2020-02-11 08:47:03', NULL),
(122, 'home\\index', NULL, '2020-02-11 08:47:06', NULL),
(123, 'home\\index', NULL, '2020-02-11 08:48:48', NULL),
(124, 'home\\index', NULL, '2020-02-11 08:49:26', NULL),
(125, 'home\\index', NULL, '2020-02-11 08:50:34', NULL),
(126, 'home\\index', NULL, '2020-02-11 08:50:52', NULL),
(127, 'home\\index', NULL, '2020-02-11 08:51:56', NULL),
(128, 'home\\index', NULL, '2020-02-11 08:53:05', NULL),
(129, 'home\\index', NULL, '2020-02-11 09:00:53', NULL),
(130, 'home\\index', NULL, '2020-02-11 09:00:57', NULL),
(131, 'home\\index', NULL, '2020-02-11 09:01:02', NULL),
(132, 'home\\index', NULL, '2020-02-11 09:01:05', NULL),
(133, 'home\\index', NULL, '2020-02-11 09:01:18', NULL),
(134, 'home\\index', NULL, '2020-02-11 09:01:22', NULL),
(135, 'home\\index', NULL, '2020-02-11 09:01:26', NULL),
(136, 'home\\index', NULL, '2020-02-11 09:01:46', NULL),
(137, 'home\\index', NULL, '2020-02-11 09:01:50', NULL),
(138, 'home\\index', NULL, '2020-02-11 09:01:53', NULL),
(139, 'home\\index', NULL, '2020-02-11 09:02:04', NULL),
(140, 'home\\index', NULL, '2020-02-11 09:03:06', NULL),
(141, 'home\\index', NULL, '2020-02-11 09:03:11', NULL),
(142, 'home\\index', NULL, '2020-02-11 09:03:17', NULL),
(143, 'home\\index', NULL, '2020-02-11 09:03:53', NULL),
(144, 'home\\index', NULL, '2020-02-11 09:05:22', NULL),
(145, 'home\\index', NULL, '2020-02-11 09:06:24', NULL),
(146, 'home\\index', NULL, '2020-02-11 09:06:44', NULL),
(147, 'home\\index', NULL, '2020-02-11 09:06:51', NULL),
(148, 'home\\index', NULL, '2020-02-11 09:07:22', NULL),
(149, 'home\\index', NULL, '2020-02-11 09:08:00', NULL),
(150, 'home\\index', NULL, '2020-02-11 09:08:25', NULL),
(151, 'home\\index', NULL, '2020-02-11 09:08:32', NULL),
(152, 'home\\index', NULL, '2020-02-11 09:08:48', NULL),
(153, 'home\\index', NULL, '2020-02-11 09:09:36', NULL),
(154, 'home\\index', NULL, '2020-02-11 09:11:58', NULL),
(155, 'home\\index', NULL, '2020-02-11 09:13:32', NULL),
(156, 'home\\index', NULL, '2020-02-11 09:14:19', NULL),
(157, 'home\\index', NULL, '2020-02-11 09:15:04', NULL),
(158, 'home\\index', NULL, '2020-02-11 09:15:09', NULL),
(159, 'home\\index', NULL, '2020-02-11 09:15:09', NULL),
(160, 'home\\index', NULL, '2020-02-11 09:15:09', NULL),
(161, 'home\\index', NULL, '2020-02-11 09:39:40', NULL),
(162, 'home\\index', NULL, '2020-02-11 09:41:41', NULL),
(163, 'home\\index', NULL, '2020-02-11 09:42:23', NULL),
(164, 'home\\index', NULL, '2020-02-11 09:42:36', NULL),
(165, 'home\\index', NULL, '2020-02-11 09:47:50', NULL),
(166, 'home\\index', NULL, '2020-02-11 09:47:55', NULL),
(167, 'home\\index', NULL, '2020-02-11 09:48:18', NULL),
(168, 'home\\index', NULL, '2020-02-11 09:49:22', NULL),
(169, 'home\\index', NULL, '2020-02-11 09:49:46', NULL),
(170, 'home\\index', NULL, '2020-02-11 09:50:15', NULL),
(171, 'home\\index', NULL, '2020-02-11 09:50:20', NULL),
(172, 'home\\index', NULL, '2020-02-11 10:51:09', NULL),
(173, 'home\\index', NULL, '2020-02-11 10:51:25', NULL),
(174, 'home\\index', NULL, '2020-02-11 10:51:44', NULL),
(175, 'home\\index', NULL, '2020-02-11 10:54:10', NULL),
(176, 'home\\index', NULL, '2020-02-11 10:54:10', NULL),
(177, 'home\\index', NULL, '2020-02-11 10:54:17', NULL),
(178, 'home\\index', NULL, '2020-02-11 10:56:16', NULL),
(179, 'home\\index', NULL, '2020-02-11 10:57:08', NULL),
(180, 'home\\index', NULL, '2020-02-11 10:57:15', NULL),
(181, 'home\\index', NULL, '2020-02-11 10:57:24', NULL),
(182, 'home\\index', NULL, '2020-02-11 10:58:10', NULL),
(183, 'home\\index', NULL, '2020-02-11 10:58:41', NULL),
(184, 'home\\index', NULL, '2020-02-11 10:59:54', NULL),
(185, 'home\\index', NULL, '2020-02-11 11:01:05', NULL),
(186, 'home\\index', NULL, '2020-02-11 11:03:03', NULL),
(187, 'home\\index', NULL, '2020-02-11 11:03:21', NULL),
(188, 'home\\index', NULL, '2020-02-11 11:03:58', NULL),
(189, 'home\\index', NULL, '2020-02-11 11:05:29', NULL),
(190, 'home\\index', NULL, '2020-02-11 11:06:06', NULL),
(191, 'home\\index', NULL, '2020-02-11 11:06:06', NULL),
(192, 'home\\index', NULL, '2020-02-11 11:12:20', NULL),
(193, 'home\\index', NULL, '2020-02-11 11:13:07', NULL),
(194, 'home\\index', NULL, '2020-02-11 11:14:09', NULL),
(195, 'home\\index', NULL, '2020-02-11 11:14:13', NULL),
(196, 'home\\index', NULL, '2020-02-11 11:20:02', NULL),
(197, 'home\\index', NULL, '2020-02-11 11:20:47', NULL),
(198, 'home\\index', NULL, '2020-02-11 11:26:41', NULL),
(199, 'home\\index', NULL, '2020-02-11 11:27:41', NULL),
(200, 'home\\index', NULL, '2020-02-11 11:27:57', NULL),
(201, 'home\\index', NULL, '2020-02-11 11:28:17', NULL),
(202, 'home\\index', NULL, '2020-02-11 11:28:34', NULL),
(203, 'home\\index', NULL, '2020-02-11 11:28:59', NULL),
(204, 'home\\index', NULL, '2020-02-11 11:31:54', NULL),
(205, 'home\\index', NULL, '2020-02-11 11:32:38', NULL),
(206, 'home\\index', NULL, '2020-02-11 11:33:35', NULL),
(207, 'home\\index', NULL, '2020-02-11 11:33:42', NULL),
(208, 'home\\index', NULL, '2020-02-11 11:33:59', NULL),
(209, 'home\\index', NULL, '2020-02-11 11:34:54', NULL),
(210, 'home\\index', NULL, '2020-02-11 11:35:15', NULL),
(211, 'home\\index', NULL, '2020-02-11 11:35:59', NULL),
(212, 'home\\index', NULL, '2020-02-11 11:36:21', NULL),
(213, 'home\\index', NULL, '2020-02-11 11:43:00', NULL),
(214, 'home\\index', NULL, '2020-02-11 11:44:10', NULL),
(215, 'home\\index', NULL, '2020-02-11 11:44:37', NULL),
(216, 'home\\index', NULL, '2020-02-11 11:45:04', NULL),
(217, 'home\\index', NULL, '2020-02-11 11:45:30', NULL),
(218, 'home\\index', NULL, '2020-02-11 11:45:42', NULL),
(219, 'home\\index', NULL, '2020-02-11 11:46:45', NULL),
(220, 'home\\index', NULL, '2020-02-11 11:47:04', NULL),
(221, 'home\\index', NULL, '2020-02-11 11:47:20', NULL),
(222, 'home\\index', NULL, '2020-02-11 11:49:02', NULL),
(223, 'home\\index', NULL, '2020-02-11 11:49:19', NULL),
(224, 'home\\index', NULL, '2020-02-11 11:49:30', NULL),
(225, 'home\\index', NULL, '2020-02-11 11:50:38', NULL),
(226, 'home\\index', NULL, '2020-02-11 11:50:38', NULL),
(227, 'home\\index', NULL, '2020-02-11 11:55:55', NULL),
(228, 'home\\index', NULL, '2020-02-11 11:57:30', NULL),
(229, 'home\\index', NULL, '2020-02-11 11:57:56', NULL),
(230, 'home\\index', NULL, '2020-02-11 11:59:18', NULL),
(231, 'home\\index', NULL, '2020-02-11 12:00:30', NULL),
(232, 'home\\index', NULL, '2020-02-11 12:00:48', NULL),
(233, 'home\\index', NULL, '2020-02-11 12:01:28', NULL),
(234, 'home\\index', NULL, '2020-02-11 12:02:51', NULL),
(235, 'home\\index', NULL, '2020-02-11 12:05:39', NULL),
(236, 'home\\index', NULL, '2020-02-11 12:06:09', NULL),
(237, 'home\\index', NULL, '2020-02-11 12:06:13', NULL),
(238, 'home\\index', NULL, '2020-02-11 12:06:36', NULL),
(239, 'home\\index', NULL, '2020-02-11 12:07:26', NULL),
(240, 'home\\index', NULL, '2020-02-11 12:07:53', NULL),
(241, 'home\\index', NULL, '2020-02-11 12:08:15', NULL),
(242, 'home\\index', NULL, '2020-02-11 12:11:08', NULL),
(243, 'home\\index', NULL, '2020-02-11 12:12:11', NULL),
(244, 'home\\index', NULL, '2020-02-11 12:12:20', NULL),
(245, 'home\\index', NULL, '2020-02-11 12:12:45', NULL),
(246, 'home\\index', NULL, '2020-02-11 12:13:15', NULL),
(247, 'home\\index', NULL, '2020-02-11 12:13:35', NULL),
(248, 'home\\index', NULL, '2020-02-11 12:14:02', NULL),
(249, 'home\\index', NULL, '2020-02-11 12:21:28', NULL),
(250, 'home\\index', NULL, '2020-02-11 12:28:45', NULL),
(251, 'home\\index', NULL, '2020-02-11 12:28:45', NULL),
(252, 'home\\login', NULL, '2020-02-11 12:28:53', NULL),
(253, 'home\\index', 28, '2020-02-11 12:29:12', NULL),
(254, 'home\\login', 28, '2020-02-11 12:29:12', NULL),
(255, 'home\\index', 28, '2020-02-11 12:29:32', NULL),
(256, 'home\\profile', 28, '2020-02-11 12:29:40', NULL),
(257, 'home\\index', 28, '2020-02-11 12:30:09', NULL),
(258, 'home\\notification', 28, '2020-02-11 12:33:42', NULL),
(259, 'home\\notification', 28, '2020-02-11 12:33:50', NULL),
(260, 'home\\notification', 28, '2020-02-11 12:33:56', NULL),
(261, 'home\\detailsCompagin', 28, '2020-02-11 12:34:00', NULL),
(262, 'home\\detailsCompagin', 28, '2020-02-11 12:35:16', NULL),
(263, 'home\\profile', 28, '2020-02-11 12:35:30', NULL),
(264, 'home\\profile', 28, '2020-02-11 17:15:23', NULL),
(265, 'home\\profile', 28, '2020-02-11 17:15:50', NULL),
(266, 'home\\index', 28, '2020-02-11 17:15:53', NULL),
(267, 'home\\index', 28, '2020-02-11 17:22:57', NULL),
(268, 'home\\index', 28, '2020-02-11 17:32:38', NULL),
(269, 'home\\index', 28, '2020-02-11 17:35:25', NULL),
(270, 'home\\index', 28, '2020-02-11 17:36:35', NULL),
(271, 'home\\index', 28, '2020-02-11 17:58:32', NULL),
(272, 'home\\index', 28, '2020-02-11 17:59:21', NULL),
(273, 'home\\index', 28, '2020-02-11 18:00:36', NULL),
(274, 'home\\index', 28, '2020-02-11 18:01:12', NULL),
(275, 'home\\index', 28, '2020-02-11 18:01:32', NULL),
(276, 'home\\index', 28, '2020-02-11 18:02:30', NULL),
(277, 'home\\index', 28, '2020-02-11 18:03:32', NULL),
(278, 'home\\index', 28, '2020-02-11 18:04:48', NULL),
(279, 'home\\index', 28, '2020-02-11 18:06:15', NULL),
(280, 'home\\index', 28, '2020-02-12 02:07:46', NULL),
(281, 'home\\index', 28, '2020-02-12 04:05:19', NULL),
(282, 'home\\index', 28, '2020-02-12 04:05:52', NULL),
(283, 'home\\profile', 28, '2020-02-12 04:06:34', NULL),
(284, 'home\\profile', 28, '2020-02-12 04:14:25', NULL),
(285, 'home\\profile', 28, '2020-02-12 04:17:36', NULL),
(286, 'home\\profile', 28, '2020-02-12 04:18:32', NULL),
(287, 'home\\profile', 28, '2020-02-12 04:23:26', NULL),
(288, 'home\\profile', 28, '2020-02-12 04:23:51', NULL),
(289, 'home\\profile', 28, '2020-02-12 04:24:04', NULL),
(290, 'home\\profile', 28, '2020-02-12 04:26:37', NULL),
(291, 'home\\profile', 28, '2020-02-12 04:26:43', NULL),
(292, 'home\\profile', 28, '2020-02-12 04:26:50', NULL),
(293, 'home\\profile', 28, '2020-02-12 04:27:20', NULL),
(294, 'home\\profile', 28, '2020-02-12 04:33:12', NULL),
(295, 'home\\profile', 28, '2020-02-12 06:33:35', NULL),
(296, 'home\\profile', 28, '2020-02-12 06:47:53', NULL),
(297, 'home\\profile', 28, '2020-02-12 06:48:21', NULL),
(298, 'home\\profile', 28, '2020-02-12 06:48:37', NULL),
(299, 'home\\profile', 28, '2020-02-12 06:49:07', NULL),
(300, 'home\\profile', 28, '2020-02-12 06:49:32', NULL),
(301, 'home\\profile', 28, '2020-02-12 06:49:59', NULL),
(302, 'home\\profile', 28, '2020-02-12 06:53:03', NULL),
(303, 'home\\profile', 28, '2020-02-12 06:54:57', NULL),
(304, 'home\\profile', 28, '2020-02-12 06:56:58', NULL),
(305, 'home\\profile', 28, '2020-02-12 06:57:09', NULL),
(306, 'home\\profile', 28, '2020-02-12 06:57:49', NULL),
(307, 'home\\profile', 28, '2020-02-12 06:58:48', NULL),
(308, 'home\\profile', 28, '2020-02-12 06:59:53', NULL),
(309, 'home\\index', NULL, '2020-02-12 07:01:13', NULL),
(310, 'home\\index', NULL, '2020-02-12 07:03:12', NULL),
(311, 'home\\index', NULL, '2020-02-12 07:06:29', NULL),
(312, 'home\\index', NULL, '2020-02-12 07:07:21', NULL),
(313, 'home\\index', NULL, '2020-02-12 07:07:48', NULL),
(314, 'home\\index', NULL, '2020-02-12 07:08:03', NULL),
(315, 'home\\index', NULL, '2020-02-12 07:08:15', NULL),
(316, 'home\\index', NULL, '2020-02-12 07:12:27', NULL),
(317, 'home\\index', NULL, '2020-02-12 07:12:48', NULL),
(318, 'home\\index', NULL, '2020-02-12 07:16:57', NULL),
(319, 'home\\index', NULL, '2020-02-12 07:17:37', NULL),
(320, 'home\\index', NULL, '2020-02-12 07:17:54', NULL),
(321, 'home\\index', NULL, '2020-02-12 07:18:16', NULL),
(322, 'home\\index', NULL, '2020-02-12 07:19:09', NULL),
(323, 'home\\index', NULL, '2020-02-12 07:19:20', NULL),
(324, 'home\\index', NULL, '2020-02-12 07:20:06', NULL),
(325, 'home\\index', NULL, '2020-02-12 07:21:09', NULL),
(326, 'home\\index', NULL, '2020-02-12 07:22:27', NULL),
(327, 'home\\index', NULL, '2020-02-12 07:22:47', NULL),
(328, 'home\\index', NULL, '2020-02-12 07:24:06', NULL),
(329, 'home\\index', NULL, '2020-02-12 07:43:05', NULL),
(330, 'home\\index', NULL, '2020-02-12 07:46:52', NULL),
(331, 'home\\index', NULL, '2020-02-12 07:47:38', NULL),
(332, 'home\\index', NULL, '2020-02-12 07:48:09', NULL),
(333, 'home\\index', NULL, '2020-02-12 07:49:48', NULL),
(334, 'home\\index', NULL, '2020-02-12 07:51:02', NULL),
(335, 'home\\index', NULL, '2020-02-12 07:51:35', NULL),
(336, 'home\\index', NULL, '2020-02-12 07:51:55', NULL),
(337, 'home\\index', NULL, '2020-02-12 07:52:43', NULL),
(338, 'home\\index', NULL, '2020-02-12 08:12:06', NULL),
(339, 'home\\index', NULL, '2020-02-12 08:16:07', NULL),
(340, 'home\\index', NULL, '2020-02-12 08:25:07', NULL),
(341, 'home\\login', NULL, '2020-02-12 08:25:23', NULL),
(342, 'home\\index', 28, '2020-02-12 08:25:44', NULL),
(343, 'home\\login', 28, '2020-02-12 08:25:44', NULL),
(344, 'home\\index', 28, '2020-02-12 08:26:41', NULL),
(345, 'home\\login', 28, '2020-02-12 08:26:41', NULL),
(346, 'home\\index', 28, '2020-02-12 08:27:00', NULL),
(347, 'home\\login', 28, '2020-02-12 08:27:00', NULL),
(348, 'home\\index', 28, '2020-02-12 08:27:12', NULL),
(349, 'home\\index', 28, '2020-02-12 08:27:12', NULL),
(350, 'home\\profile', 28, '2020-02-12 08:27:16', NULL),
(351, 'home\\profile', 28, '2020-02-12 08:31:10', NULL),
(352, 'home\\profile', 28, '2020-02-12 08:31:18', NULL),
(353, 'home\\index', 28, '2020-02-12 08:34:55', NULL),
(354, 'home\\index', 28, '2020-02-12 08:48:01', NULL),
(355, 'home\\profile', 28, '2020-02-12 08:51:30', NULL),
(356, 'home\\index', 28, '2020-02-12 08:51:46', NULL),
(357, 'home\\index', 28, '2020-02-12 08:54:28', NULL),
(358, 'home\\index', 28, '2020-02-12 08:54:34', NULL),
(359, 'home\\index', 28, '2020-02-12 08:55:06', NULL),
(360, 'home\\index', NULL, '2020-02-12 09:25:49', NULL),
(361, 'home\\index', NULL, '2020-02-12 09:28:41', NULL),
(362, 'home\\index', NULL, '2020-02-12 09:32:53', NULL),
(363, 'home\\index', NULL, '2020-02-12 09:55:06', NULL),
(364, 'home\\index', NULL, '2020-02-12 09:57:10', NULL),
(365, 'home\\login', NULL, '2020-02-12 10:04:04', NULL),
(366, 'home\\index', NULL, '2020-02-12 10:04:08', NULL),
(367, 'home\\index', NULL, '2020-02-12 10:04:14', NULL),
(368, 'home\\index', NULL, '2020-02-12 10:04:19', NULL),
(369, 'home\\index', NULL, '2020-02-12 10:43:40', NULL),
(370, 'home\\index', NULL, '2020-02-12 10:49:31', NULL),
(371, 'home\\index', NULL, '2020-02-12 10:54:28', NULL),
(372, 'home\\index', NULL, '2020-02-12 10:54:48', NULL),
(373, 'home\\index', NULL, '2020-02-12 10:55:01', NULL),
(374, 'home\\index', NULL, '2020-02-12 10:55:34', NULL),
(375, 'home\\index', NULL, '2020-02-12 11:04:40', NULL),
(376, 'home\\index', NULL, '2020-02-12 11:05:31', NULL),
(377, 'home\\index', NULL, '2020-02-12 11:09:33', NULL),
(378, 'home\\index', NULL, '2020-02-12 11:09:40', NULL),
(379, 'home\\index', NULL, '2020-02-12 11:10:19', NULL),
(380, 'home\\index', NULL, '2020-02-12 11:12:08', NULL),
(381, 'home\\index', NULL, '2020-02-12 11:13:24', NULL),
(382, 'home\\index', NULL, '2020-02-12 11:13:25', NULL),
(383, 'home\\index', NULL, '2020-02-12 11:13:58', NULL),
(384, 'home\\index', NULL, '2020-02-12 11:26:36', NULL),
(385, 'home\\index', NULL, '2020-02-12 11:27:15', NULL),
(386, 'home\\index', NULL, '2020-02-12 11:27:30', NULL),
(387, 'home\\index', NULL, '2020-02-12 11:28:34', NULL),
(388, 'home\\index', NULL, '2020-02-12 11:29:12', NULL),
(389, 'home\\index', NULL, '2020-02-12 11:30:13', NULL),
(390, 'home\\index', NULL, '2020-02-12 11:30:38', NULL),
(391, 'home\\index', NULL, '2020-02-12 11:37:23', NULL),
(392, 'home\\index', NULL, '2020-02-12 11:37:44', NULL),
(393, 'home\\index', NULL, '2020-02-12 11:47:44', NULL),
(394, 'home\\index', NULL, '2020-02-12 11:49:23', NULL),
(395, 'home\\index', NULL, '2020-02-12 11:51:44', NULL),
(396, 'home\\index', NULL, '2020-02-12 11:52:42', NULL),
(397, 'home\\errorPage', NULL, '2020-02-12 11:52:47', NULL),
(398, 'home\\index', NULL, '2020-02-12 11:56:28', NULL),
(399, 'home\\index', NULL, '2020-02-12 11:56:31', NULL),
(400, 'home\\index', NULL, '2020-02-12 11:58:42', NULL),
(401, 'home\\index', NULL, '2020-02-12 11:59:33', NULL),
(402, 'home\\index', NULL, '2020-02-12 12:02:09', NULL),
(403, 'home\\index', NULL, '2020-02-12 12:02:10', NULL),
(404, 'home\\index', NULL, '2020-02-12 12:04:41', NULL),
(405, 'home\\index', NULL, '2020-02-12 12:07:24', NULL),
(406, 'home\\index', NULL, '2020-02-12 12:07:35', NULL),
(407, 'home\\index', NULL, '2020-02-12 12:08:43', NULL),
(408, 'home\\index', NULL, '2020-02-12 12:13:00', NULL),
(409, 'home\\index', NULL, '2020-02-12 12:13:12', NULL),
(410, 'home\\index', NULL, '2020-02-12 12:14:14', NULL),
(411, 'home\\index', NULL, '2020-02-12 12:16:51', NULL),
(412, 'home\\index', NULL, '2020-02-12 12:17:13', NULL),
(413, 'home\\index', NULL, '2020-02-12 12:18:45', NULL),
(414, 'home\\index', NULL, '2020-02-12 12:23:34', NULL),
(415, 'home\\login', NULL, '2020-02-13 03:59:34', NULL),
(416, 'home\\index', 28, '2020-02-13 03:59:49', NULL),
(417, 'home\\login', 28, '2020-02-13 03:59:49', NULL),
(418, 'home\\index', 28, '2020-02-13 04:00:20', NULL),
(419, 'home\\login', 28, '2020-02-13 04:00:20', NULL),
(420, 'home\\index', 28, '2020-02-13 04:00:42', NULL),
(421, 'home\\index', 28, '2020-02-13 04:00:42', NULL),
(422, 'home\\profile', 28, '2020-02-13 04:00:48', NULL),
(423, 'home\\profile', 28, '2020-02-13 04:03:50', NULL),
(424, 'home\\index', 28, '2020-02-13 04:03:56', NULL),
(425, 'home\\profile', 28, '2020-02-13 04:05:47', NULL),
(426, 'home\\profile', 28, '2020-02-13 04:06:34', NULL),
(427, 'home\\profile', 28, '2020-02-13 04:08:31', NULL),
(428, 'home\\profile', 28, '2020-02-13 04:08:54', NULL),
(429, 'home\\profile', 28, '2020-02-13 04:20:55', NULL),
(430, 'home\\profile', 28, '2020-02-13 04:22:47', NULL),
(431, 'home\\profile', 28, '2020-02-13 04:23:24', NULL),
(432, 'home\\profile', 28, '2020-02-13 04:25:09', NULL),
(433, 'home\\profile', 28, '2020-02-13 04:26:05', NULL),
(434, 'home\\profile', 28, '2020-02-13 04:28:03', NULL),
(435, 'home\\profile', 28, '2020-02-13 04:28:20', NULL),
(436, 'home\\profile', 28, '2020-02-13 04:56:04', NULL),
(437, 'home\\profile', 28, '2020-02-13 05:06:49', NULL),
(438, 'home\\profile', 28, '2020-02-13 06:50:13', NULL),
(439, 'home\\profile', 28, '2020-02-13 06:53:10', NULL),
(440, 'home\\profile', 28, '2020-02-13 06:53:19', NULL),
(441, 'home\\profile', 28, '2020-02-13 06:54:25', NULL),
(442, 'home\\profile', 28, '2020-02-13 06:56:07', NULL),
(443, 'home\\profile', 28, '2020-02-13 06:56:43', NULL),
(444, 'home\\profile', 28, '2020-02-13 07:05:51', NULL),
(445, 'home\\profile', 28, '2020-02-13 07:05:54', NULL),
(446, 'home\\profile', 28, '2020-02-13 07:06:19', NULL),
(447, 'home\\profile', 28, '2020-02-13 07:13:57', NULL),
(448, 'home\\profile', 28, '2020-02-13 07:14:51', NULL),
(449, 'home\\profile', 28, '2020-02-13 07:16:05', NULL),
(450, 'home\\profile', 28, '2020-02-13 07:21:16', NULL),
(451, 'home\\profile', 28, '2020-02-13 07:21:38', NULL),
(452, 'home\\profile', 28, '2020-02-13 07:21:51', NULL),
(453, 'home\\profile', 28, '2020-02-13 07:23:02', NULL),
(454, 'home\\profile', 28, '2020-02-13 07:24:05', NULL),
(455, 'home\\profile', 28, '2020-02-13 07:25:33', NULL),
(456, 'home\\editeProfile', 28, '2020-02-13 07:25:44', NULL),
(457, 'home\\profile', 28, '2020-02-13 07:26:32', NULL),
(458, 'home\\profile', 28, '2020-02-13 07:28:29', NULL),
(459, 'home\\profile', 28, '2020-02-13 07:29:00', NULL),
(460, 'home\\profile', 28, '2020-02-13 07:30:28', NULL),
(461, 'home\\profile', 28, '2020-02-13 07:31:12', NULL),
(462, 'home\\profile', 28, '2020-02-13 07:31:37', NULL),
(463, 'home\\profile', 28, '2020-02-13 07:33:49', NULL),
(464, 'home\\profile', 28, '2020-02-13 07:35:13', NULL),
(465, 'home\\index', 28, '2020-02-13 07:42:40', NULL),
(466, 'home\\index', 28, '2020-02-13 07:43:04', NULL),
(467, 'home\\index', 28, '2020-02-13 07:43:09', NULL),
(468, 'home\\index', 28, '2020-02-13 07:45:31', NULL),
(469, 'home\\index', 28, '2020-02-13 07:45:39', NULL),
(470, 'home\\index', 28, '2020-02-13 07:46:01', NULL),
(471, 'home\\profile', 28, '2020-02-13 07:46:14', NULL),
(472, 'home\\profile', 28, '2020-02-13 07:53:02', NULL),
(473, 'home\\profile', 28, '2020-02-13 08:06:13', NULL),
(474, 'home\\profile', 28, '2020-02-13 08:06:35', NULL),
(475, 'home\\profile', 28, '2020-02-13 08:06:38', NULL),
(476, 'home\\profile', 28, '2020-02-13 08:10:38', NULL),
(477, 'home\\profile', 28, '2020-02-13 08:10:58', NULL),
(478, 'home\\profile', 28, '2020-02-13 08:11:30', NULL),
(479, 'home\\profile', 28, '2020-02-13 08:12:08', NULL),
(480, 'home\\profile', 28, '2020-02-13 08:13:29', NULL),
(481, 'home\\profile', 28, '2020-02-13 08:14:43', NULL),
(482, 'home\\profile', 28, '2020-02-13 08:15:23', NULL),
(483, 'home\\profile', 28, '2020-02-13 08:16:19', NULL),
(484, 'home\\profile', 28, '2020-02-13 08:17:00', NULL),
(485, 'home\\profile', 28, '2020-02-13 08:19:06', NULL),
(486, 'home\\profile', 28, '2020-02-13 08:19:50', NULL),
(487, 'home\\profile', 28, '2020-02-13 08:20:09', NULL),
(488, 'home\\profile', 28, '2020-02-13 08:20:42', NULL),
(489, 'home\\profile', 28, '2020-02-13 08:20:54', NULL),
(490, 'home\\profile', 28, '2020-02-13 08:21:45', NULL),
(491, 'home\\profile', 28, '2020-02-13 08:22:14', NULL),
(492, 'home\\profile', 28, '2020-02-13 08:23:06', NULL),
(493, 'home\\profile', 28, '2020-02-13 08:23:36', NULL),
(494, 'home\\profile', 28, '2020-02-13 08:24:51', NULL),
(495, 'home\\profile', 28, '2020-02-13 08:25:41', NULL),
(496, 'home\\profile', 28, '2020-02-13 08:27:15', NULL),
(497, 'home\\profile', 28, '2020-02-13 08:27:35', NULL),
(498, 'home\\profile', 28, '2020-02-13 08:28:21', NULL),
(499, 'home\\profile', 28, '2020-02-13 08:28:56', NULL),
(500, 'home\\profile', 28, '2020-02-13 08:29:28', NULL),
(501, 'home\\profile', 28, '2020-02-13 08:34:50', NULL),
(502, 'home\\profile', 28, '2020-02-13 08:35:38', NULL),
(503, 'home\\profile', 28, '2020-02-13 08:36:29', NULL),
(504, 'home\\profile', 28, '2020-02-13 08:37:55', NULL),
(505, 'home\\profile', 28, '2020-02-13 08:38:27', NULL),
(506, 'home\\profile', 28, '2020-02-13 08:39:08', NULL),
(507, 'home\\profile', 28, '2020-02-13 08:42:57', NULL),
(508, 'home\\profile', 28, '2020-02-13 08:52:58', NULL),
(509, 'home\\profile', 28, '2020-02-13 08:54:27', NULL),
(510, 'home\\profile', 28, '2020-02-13 08:54:33', NULL),
(511, 'home\\profile', 28, '2020-02-13 08:55:07', NULL),
(512, 'home\\profile', 28, '2020-02-13 09:08:19', NULL),
(513, 'home\\profile', 28, '2020-02-13 09:10:57', NULL),
(514, 'home\\profile', 28, '2020-02-13 09:13:18', NULL),
(515, 'home\\profile', 28, '2020-02-13 09:13:36', NULL),
(516, 'home\\profile', 28, '2020-02-13 09:13:47', NULL),
(517, 'home\\profile', 28, '2020-02-13 09:14:58', NULL),
(518, 'home\\profile', 28, '2020-02-13 09:15:40', NULL),
(519, 'home\\profile', 28, '2020-02-13 09:16:31', NULL),
(520, 'home\\profile', 28, '2020-02-13 09:17:04', NULL),
(521, 'home\\profile', 28, '2020-02-13 09:17:48', NULL),
(522, 'home\\profile', 28, '2020-02-13 09:18:53', NULL),
(523, 'home\\profile', 28, '2020-02-13 09:24:16', NULL),
(524, 'home\\profile', 28, '2020-02-13 09:28:34', NULL),
(525, 'home\\profile', 28, '2020-02-13 09:29:25', NULL),
(526, 'home\\profile', 28, '2020-02-13 09:31:11', NULL),
(527, 'home\\profile', 28, '2020-02-13 09:31:32', NULL),
(528, 'home\\profile', 28, '2020-02-13 09:34:53', NULL),
(529, 'home\\profile', 28, '2020-02-13 09:35:54', NULL),
(530, 'home\\profile', 28, '2020-02-13 09:36:56', NULL),
(531, 'home\\profile', 28, '2020-02-13 09:37:20', NULL),
(532, 'home\\profile', 28, '2020-02-13 09:37:39', NULL),
(533, 'home\\profile', 28, '2020-02-13 09:37:52', NULL),
(534, 'home\\editeProfile', 28, '2020-02-13 09:37:57', NULL),
(535, 'home\\editeProfile', 28, '2020-02-13 09:38:18', NULL),
(536, 'home\\editeProfile', 28, '2020-02-13 09:38:35', NULL),
(537, 'home\\profile', 28, '2020-02-13 09:43:54', NULL),
(538, 'home\\index', 28, '2020-02-13 09:46:06', NULL),
(539, 'home\\index', 28, '2020-02-13 09:46:30', NULL),
(540, 'home\\profile', 28, '2020-02-13 09:48:31', NULL),
(541, 'home\\profile', 28, '2020-02-13 10:13:02', NULL),
(542, 'home\\addcompaign', 28, '2020-02-13 10:13:12', NULL),
(543, 'home\\profile', 28, '2020-02-13 10:13:17', NULL),
(544, 'home\\profile', 28, '2020-02-13 10:14:15', NULL),
(545, 'home\\profile', 28, '2020-02-13 10:14:46', NULL),
(546, 'home\\profile', 28, '2020-02-13 10:15:45', NULL),
(547, 'home\\profile', 28, '2020-02-13 10:16:04', NULL),
(548, 'home\\profile', 28, '2020-02-13 10:16:08', NULL),
(549, 'home\\profile', 28, '2020-02-13 10:16:49', NULL),
(550, 'home\\index', 28, '2020-02-13 10:17:04', NULL),
(551, 'home\\index', 28, '2020-02-13 10:18:03', NULL),
(552, 'home\\index', 28, '2020-02-13 10:18:25', NULL),
(553, 'home\\profile', 28, '2020-02-13 10:19:01', NULL),
(554, 'home\\editeProfile', 28, '2020-02-13 10:19:04', NULL),
(555, 'home\\editeProfile', 28, '2020-02-13 10:21:55', NULL),
(556, 'home\\index', 28, '2020-02-13 10:35:44', NULL),
(557, 'home\\profile', 28, '2020-02-13 10:36:31', NULL),
(558, 'home\\profile', 28, '2020-02-13 10:36:55', NULL),
(559, 'home\\editeProfile', 28, '2020-02-13 10:38:40', NULL),
(560, 'home\\editeProfile', 28, '2020-02-13 10:41:40', NULL),
(561, 'home\\editeProfile', 28, '2020-02-13 10:56:53', NULL),
(562, 'home\\editeProfile', 28, '2020-02-13 10:57:45', NULL),
(563, 'home\\profile', 28, '2020-02-13 11:10:18', NULL),
(564, 'home\\editeProfile', 28, '2020-02-13 11:11:01', NULL),
(565, 'home\\profile', 28, '2020-02-13 11:11:39', NULL),
(566, 'home\\editeProfile', 28, '2020-02-13 11:17:41', NULL),
(567, 'home\\editeProfile', 28, '2020-02-13 11:22:06', NULL),
(568, 'home\\editeProfile', 28, '2020-02-13 11:22:42', NULL),
(569, 'home\\editeProfile', 28, '2020-02-13 11:23:08', NULL),
(570, 'home\\profile', 28, '2020-02-13 11:23:13', NULL),
(571, 'home\\profile', 28, '2020-02-13 11:31:11', NULL),
(572, 'home\\profile', 28, '2020-02-13 11:33:24', NULL),
(573, 'home\\profile', 28, '2020-02-13 11:34:04', NULL),
(574, 'home\\profile', 28, '2020-02-13 11:38:37', NULL),
(575, 'home\\editeProfile', 28, '2020-02-13 11:42:07', NULL),
(576, 'home\\profile', 28, '2020-02-13 11:43:27', NULL),
(577, 'home\\editeProfile', 28, '2020-02-13 11:43:31', NULL),
(578, 'home\\editeProfile', 28, '2020-02-13 11:43:43', NULL),
(579, 'home\\profile', 28, '2020-02-13 12:17:48', NULL),
(580, 'home\\profile', 28, '2020-02-13 12:17:51', NULL),
(581, 'home\\profile', 28, '2020-02-13 12:19:33', NULL),
(582, 'home\\editeProfile', 28, '2020-02-13 12:19:35', NULL),
(583, 'home\\editeProfile', 28, '2020-02-13 12:19:58', NULL),
(584, 'home\\editeProfile', 28, '2020-02-13 12:20:00', NULL),
(585, 'home\\editeProfile', 28, '2020-02-13 12:20:28', NULL),
(586, 'home\\profile', 28, '2020-02-13 12:20:30', NULL),
(587, 'home\\editeProfile', 28, '2020-02-13 12:20:36', NULL),
(588, 'home\\editeProfile', 28, '2020-02-13 12:20:41', NULL),
(589, 'home\\editeProfile', 28, '2020-02-13 12:21:02', NULL),
(590, 'home\\editeProfile', 28, '2020-02-13 12:21:07', NULL),
(591, 'home\\editeProfile', 28, '2020-02-13 12:21:09', NULL),
(592, 'home\\editeProfile', 28, '2020-02-13 12:21:16', NULL),
(593, 'home\\editeProfile', 28, '2020-02-13 12:21:20', NULL),
(594, 'home\\editeProfile', 28, '2020-02-13 12:21:31', NULL),
(595, 'home\\editeProfile', 28, '2020-02-13 12:21:37', NULL),
(596, 'home\\editeProfile', 28, '2020-02-13 12:23:20', NULL),
(597, 'home\\editeProfile', 28, '2020-02-13 12:23:31', NULL),
(598, 'home\\editeProfile', 28, '2020-02-13 12:25:01', NULL),
(599, 'home\\editeProfile', 28, '2020-02-13 12:27:26', NULL),
(600, 'home\\editeProfile', 28, '2020-02-13 12:29:33', NULL),
(601, 'home\\editeProfile', 28, '2020-02-13 12:29:43', NULL),
(602, 'home\\editeProfile', 28, '2020-02-13 12:30:43', NULL),
(603, 'home\\editeProfile', 28, '2020-02-13 12:31:58', NULL),
(604, 'home\\editeProfile', 28, '2020-02-13 12:32:02', NULL),
(605, 'home\\editeProfile', 28, '2020-02-13 12:32:02', NULL),
(606, 'home\\editeProfile', 28, '2020-02-13 12:35:43', NULL),
(607, 'home\\editeProfile', 28, '2020-02-13 12:36:57', NULL),
(608, 'home\\editeProfile', 28, '2020-02-13 12:37:01', NULL),
(609, 'home\\editeProfile', 28, '2020-02-13 12:37:02', NULL),
(610, 'home\\editeProfile', 28, '2020-02-13 12:37:02', NULL),
(611, 'home\\editeProfile', 28, '2020-02-13 12:37:02', NULL),
(612, 'home\\editeProfile', 28, '2020-02-13 12:37:02', NULL),
(613, 'home\\editeProfile', 28, '2020-02-13 12:37:40', NULL),
(614, 'home\\editeProfile', 28, '2020-02-13 12:37:54', NULL),
(615, 'home\\editeProfile', 28, '2020-02-13 12:39:30', NULL),
(616, 'home\\editeProfile', 28, '2020-02-13 12:39:37', NULL),
(617, 'home\\editeProfile', 28, '2020-02-13 12:39:48', NULL),
(618, 'home\\editeProfile', 28, '2020-02-13 12:40:40', NULL),
(619, 'home\\editeProfile', 28, '2020-02-13 12:41:03', NULL),
(620, 'home\\editeProfile', 28, '2020-02-13 12:41:08', NULL),
(621, 'home\\editeProfile', 28, '2020-02-13 12:42:42', NULL),
(622, 'home\\editeProfile', 28, '2020-02-13 12:43:22', NULL),
(623, 'home\\editeProfile', 28, '2020-02-13 12:44:01', NULL),
(624, 'home\\editeProfile', 28, '2020-02-13 12:44:52', NULL),
(625, 'home\\profile', 28, '2020-02-13 12:45:12', NULL),
(626, 'home\\editeProfile', 28, '2020-02-13 12:45:31', NULL),
(627, 'home\\profile', 28, '2020-02-13 12:47:47', NULL),
(628, 'home\\editeProfile', 28, '2020-02-13 12:48:08', NULL),
(629, 'home\\editeProfile', 28, '2020-02-13 12:49:10', NULL),
(630, 'home\\profile', 28, '2020-02-13 12:50:41', NULL),
(631, 'home\\profile', 28, '2020-02-13 12:50:52', NULL),
(632, 'home\\editeProfile', 28, '2020-02-13 12:51:03', NULL),
(633, 'home\\editeProfile', 28, '2020-02-13 12:56:05', NULL),
(634, 'home\\editeProfile', 28, '2020-02-13 13:01:25', NULL),
(635, 'home\\editeProfile', 28, '2020-02-13 13:04:10', NULL),
(636, 'home\\editeProfile', 28, '2020-02-13 13:05:06', NULL),
(637, 'home\\editeProfile', 28, '2020-02-13 13:05:20', NULL),
(638, 'home\\editeProfile', 28, '2020-02-13 13:07:02', NULL),
(639, 'home\\editeProfile', 28, '2020-02-13 13:07:29', NULL),
(640, 'home\\editeProfile', 28, '2020-02-13 13:08:28', NULL),
(641, 'home\\editeProfile', 28, '2020-02-13 13:08:48', NULL),
(642, 'home\\editeProfile', 28, '2020-02-13 13:10:00', NULL),
(643, 'home\\editeProfile', 28, '2020-02-13 13:10:29', NULL),
(644, 'home\\editeProfile', 28, '2020-02-13 13:11:33', NULL),
(645, 'home\\editeProfile', 28, '2020-02-13 13:12:13', NULL),
(646, 'home\\profile', 28, '2020-02-13 13:12:16', NULL),
(647, 'home\\editeProfile', 28, '2020-02-13 13:12:37', NULL),
(648, 'home\\editeProfile', 28, '2020-02-13 13:14:15', NULL),
(649, 'home\\editeProfile', 28, '2020-02-13 13:16:52', NULL),
(650, 'home\\editeProfile', 28, '2020-02-13 13:17:03', NULL),
(651, 'home\\editeProfile', 28, '2020-02-13 13:17:55', NULL),
(652, 'home\\editeProfile', 28, '2020-02-13 13:19:13', NULL),
(653, 'home\\editeProfile', 28, '2020-02-13 13:19:49', NULL),
(654, 'home\\editeProfile', 28, '2020-02-13 13:23:55', NULL),
(655, 'home\\editeProfile', 28, '2020-02-13 13:26:00', NULL),
(656, 'home\\editeProfile', 28, '2020-02-13 13:27:25', NULL),
(657, 'home\\editeProfile', 28, '2020-02-13 13:27:27', NULL),
(658, 'home\\editeProfile', 28, '2020-02-13 13:27:29', NULL),
(659, 'home\\editeProfile', 28, '2020-02-13 13:27:30', NULL),
(660, 'home\\editeProfile', 28, '2020-02-13 13:27:30', NULL),
(661, 'home\\editeProfile', 28, '2020-02-13 13:27:31', NULL),
(662, 'home\\editeProfile', 28, '2020-02-13 13:27:31', NULL),
(663, 'home\\editeProfile', 28, '2020-02-13 13:27:31', NULL),
(664, 'home\\profile', 28, '2020-02-13 13:28:05', NULL),
(665, 'home\\profile', 28, '2020-02-13 13:29:21', NULL),
(666, 'home\\editeProfile', 28, '2020-02-13 13:29:23', NULL),
(667, 'home\\editeProfile', 28, '2020-02-13 13:30:19', NULL),
(668, 'home\\editeProfile', 28, '2020-02-13 13:30:42', NULL),
(669, 'home\\editeProfile', 28, '2020-02-13 13:30:51', NULL),
(670, 'home\\profile', 28, '2020-02-13 13:30:53', NULL),
(671, 'home\\editeProfile', 28, '2020-02-13 13:30:57', NULL),
(672, 'home\\editeProfile', 28, '2020-02-13 13:31:20', NULL),
(673, 'home\\editeProfile', 28, '2020-02-13 13:31:36', NULL),
(674, 'home\\index', 28, '2020-02-13 13:31:40', NULL),
(675, 'home\\index', 28, '2020-02-13 13:31:41', NULL),
(676, 'home\\profile', 28, '2020-02-13 13:31:44', NULL),
(677, 'home\\editeProfile', 28, '2020-02-13 13:31:47', NULL),
(678, 'home\\editeProfile', 28, '2020-02-13 13:40:27', NULL),
(679, 'home\\profile', 28, '2020-02-13 13:40:43', NULL),
(680, 'home\\editeProfile', 28, '2020-02-13 13:40:47', NULL),
(681, 'home\\editeProfile', 28, '2020-02-13 13:41:00', NULL),
(682, 'home\\editeProfile', 28, '2020-02-13 13:41:02', NULL),
(683, 'home\\editeProfile', 28, '2020-02-13 13:41:02', NULL),
(684, 'home\\editeProfile', 28, '2020-02-13 13:41:02', NULL),
(685, 'home\\editeProfile', 28, '2020-02-13 13:41:02', NULL),
(686, 'home\\editeProfile', 28, '2020-02-13 13:41:02', NULL),
(687, 'home\\editeProfile', 28, '2020-02-13 13:41:02', NULL),
(688, 'home\\editeProfile', 28, '2020-02-13 13:41:02', NULL),
(689, 'home\\editeProfile', 28, '2020-02-13 13:41:20', NULL),
(690, 'home\\editeProfile', 28, '2020-02-13 13:41:27', NULL),
(691, 'home\\editeProfile', 28, '2020-02-13 13:42:08', NULL),
(692, 'home\\profile', 28, '2020-02-13 13:42:16', NULL),
(693, 'home\\editeProfile', 28, '2020-02-13 13:42:26', NULL),
(694, 'home\\editeProfile', 28, '2020-02-13 13:42:39', NULL),
(695, 'home\\editeProfile', 28, '2020-02-13 13:43:23', NULL),
(696, 'home\\index', 28, '2020-02-13 13:43:30', NULL),
(697, 'home\\profile', 28, '2020-02-13 13:43:34', NULL),
(698, 'home\\index', NULL, '2020-02-13 13:43:49', NULL),
(699, 'home\\index', NULL, '2020-02-13 13:43:56', NULL),
(700, 'home\\index', NULL, '2020-02-13 13:43:58', NULL),
(701, 'home\\login', NULL, '2020-02-13 13:44:02', NULL),
(702, 'home\\index', 28, '2020-02-13 13:44:17', NULL),
(703, 'home\\login', 28, '2020-02-13 13:44:17', NULL),
(704, 'home\\index', 28, '2020-02-13 13:44:29', NULL),
(705, 'home\\index', 28, '2020-02-13 13:44:31', NULL),
(706, 'home\\profile', 28, '2020-02-13 13:44:34', NULL),
(707, 'home\\editeProfile', 28, '2020-02-13 13:44:38', NULL),
(708, 'home\\editeProfile', 28, '2020-02-13 13:44:53', NULL),
(709, 'home\\editeProfile', 28, '2020-02-13 13:45:51', NULL),
(710, 'home\\editeProfile', 28, '2020-02-13 13:45:58', NULL),
(711, 'home\\profile', 28, '2020-02-13 13:46:05', NULL),
(712, 'home\\profile', 28, '2020-02-13 13:46:18', NULL),
(713, 'home\\editeProfile', 28, '2020-02-13 13:46:27', NULL),
(714, 'home\\profile', 28, '2020-02-13 13:48:00', NULL),
(715, 'home\\editeProfile', 28, '2020-02-13 13:48:08', NULL),
(716, 'home\\editeProfile', 28, '2020-02-13 13:48:18', NULL),
(717, 'home\\profile', 28, '2020-02-13 13:48:33', NULL),
(718, 'home\\editeProfile', 28, '2020-02-13 13:51:00', NULL),
(719, 'home\\editeProfile', 28, '2020-02-13 13:58:04', NULL),
(720, 'home\\editeProfile', 28, '2020-02-13 13:58:26', NULL),
(721, 'home\\profile', 28, '2020-02-13 13:58:31', NULL),
(722, 'home\\editeProfile', 28, '2020-02-13 13:58:40', NULL),
(723, 'home\\editeProfile', 28, '2020-02-13 14:00:13', NULL),
(724, 'home\\profile', 28, '2020-02-13 14:00:22', NULL),
(725, 'home\\editeProfile', 28, '2020-02-13 14:00:31', NULL),
(726, 'home\\editeProfile', 28, '2020-02-13 14:05:37', NULL),
(727, 'home\\editeProfile', 28, '2020-02-13 14:06:41', NULL),
(728, 'home\\editeProfile', 28, '2020-02-13 14:10:14', NULL),
(729, 'home\\editeProfile', 28, '2020-02-13 14:10:33', NULL),
(730, 'home\\editeProfile', 28, '2020-02-13 14:11:28', NULL),
(731, 'home\\editeProfile', 28, '2020-02-13 14:12:48', NULL),
(732, 'home\\editeProfile', 28, '2020-02-13 14:13:06', NULL),
(733, 'home\\editeProfile', 28, '2020-02-13 14:14:04', NULL),
(734, 'home\\editeProfile', 28, '2020-02-13 14:15:07', NULL),
(735, 'home\\index', NULL, '2020-02-14 16:03:44', NULL),
(736, 'home\\login', NULL, '2020-02-14 16:05:22', NULL),
(737, 'home\\index', 28, '2020-02-14 16:05:39', NULL),
(738, 'home\\login', 28, '2020-02-14 16:05:39', NULL),
(739, 'home\\index', 28, '2020-02-14 16:05:56', NULL),
(740, 'home\\index', 28, '2020-02-14 16:05:56', NULL),
(741, 'home\\profile', 28, '2020-02-14 16:06:58', NULL),
(742, 'home\\editeProfile', 28, '2020-02-14 16:07:04', NULL),
(743, 'home\\profile', 28, '2020-02-14 16:07:09', NULL),
(744, 'home\\editeProfile', 28, '2020-02-14 16:07:16', NULL),
(745, 'home\\profile', 28, '2020-02-14 16:08:08', NULL),
(746, 'home\\index', 28, '2020-02-14 16:15:10', NULL),
(747, 'home\\profile', 28, '2020-02-14 16:15:21', NULL),
(748, 'home\\index', NULL, '2020-02-14 16:15:35', NULL),
(749, 'home\\index', NULL, '2020-02-14 16:16:21', NULL),
(750, 'home\\singUp', NULL, '2020-02-14 16:16:36', NULL),
(751, 'home\\index', NULL, '2020-02-14 16:17:13', NULL),
(752, 'home\\search', NULL, '2020-02-14 16:17:24', NULL),
(753, 'home\\index', NULL, '2020-02-14 16:42:46', NULL),
(754, 'home\\index', NULL, '2020-02-14 16:46:12', NULL),
(755, 'home\\search', NULL, '2020-02-14 16:52:02', NULL),
(756, 'home\\search', NULL, '2020-02-14 16:52:16', NULL),
(757, 'home\\search', NULL, '2020-02-14 16:52:28', NULL),
(758, 'home\\index', NULL, '2020-02-14 16:53:08', NULL),
(759, 'home\\login', NULL, '2020-02-14 16:53:17', NULL),
(760, 'home\\index', 28, '2020-02-14 16:54:00', NULL),
(761, 'home\\profile', 28, '2020-02-14 16:54:10', NULL),
(762, 'home\\index', 28, '2020-02-14 16:56:30', NULL),
(763, 'home\\index', 28, '2020-02-14 16:56:50', NULL),
(764, 'home\\profile', 28, '2020-02-14 16:56:54', NULL),
(765, 'home\\contactus', 28, '2020-02-14 16:58:00', NULL),
(766, 'home\\index', 28, '2020-02-14 16:58:10', NULL),
(767, 'home\\index', 28, '2020-02-14 16:59:08', NULL),
(768, 'home\\index', 28, '2020-02-14 16:59:42', NULL),
(769, 'home\\index', 28, '2020-02-15 05:08:40', NULL),
(770, 'home\\index', 28, '2020-02-15 05:09:11', NULL),
(771, 'home\\index', 28, '2020-02-15 06:04:19', NULL),
(772, 'home\\index', 28, '2020-02-15 12:37:38', NULL),
(773, 'home\\index', 28, '2020-02-15 13:52:33', NULL),
(774, 'home\\index', 28, '2020-02-15 13:53:00', NULL),
(775, 'home\\index', 28, '2020-02-15 14:00:06', NULL),
(776, 'home\\index', 28, '2020-02-15 14:00:28', NULL),
(777, 'home\\index', 28, '2020-02-15 14:03:18', NULL),
(778, 'home\\index', 28, '2020-02-15 14:08:36', NULL),
(779, 'home\\index', 28, '2020-02-15 14:09:22', NULL),
(780, 'home\\index', 28, '2020-02-15 14:10:57', NULL),
(781, 'home\\index', 28, '2020-02-15 14:11:32', NULL),
(782, 'home\\index', 28, '2020-02-15 14:17:01', NULL),
(783, 'home\\index', 28, '2020-02-15 14:18:00', NULL),
(784, 'home\\index', 28, '2020-02-15 14:19:00', NULL),
(785, 'home\\index', 28, '2020-02-15 14:20:14', NULL),
(786, 'home\\index', 28, '2020-02-15 14:20:25', NULL),
(787, 'home\\index', 28, '2020-02-15 14:21:08', NULL),
(788, 'home\\profile', 28, '2020-02-15 14:21:28', NULL),
(789, 'home\\profile', 28, '2020-02-15 14:22:08', NULL),
(790, 'home\\index', 28, '2020-02-15 14:22:16', NULL),
(791, 'home\\index', 28, '2020-02-15 14:27:34', NULL),
(792, 'home\\index', 28, '2020-02-15 14:27:46', NULL),
(793, 'home\\index', 28, '2020-02-15 14:30:52', NULL),
(794, 'home\\index', 28, '2020-02-15 16:50:03', NULL),
(795, 'home\\index', 28, '2020-02-15 16:50:40', NULL),
(796, 'home\\index', 28, '2020-02-15 16:53:33', NULL),
(797, 'home\\index', 28, '2020-02-15 16:54:23', NULL),
(798, 'home\\index', 28, '2020-02-15 16:56:29', NULL),
(799, 'home\\index', 28, '2020-02-15 16:57:38', NULL),
(800, 'home\\index', 28, '2020-02-15 17:01:45', NULL),
(801, 'home\\index', 28, '2020-02-15 17:02:29', NULL),
(802, 'home\\index', NULL, '2020-02-15 17:03:28', NULL),
(803, 'home\\index', NULL, '2020-02-15 17:04:04', NULL),
(804, 'home\\index', NULL, '2020-02-15 17:04:46', NULL),
(805, 'home\\index', NULL, '2020-02-15 17:07:52', NULL),
(806, 'home\\index', NULL, '2020-02-15 17:08:20', NULL),
(807, 'home\\index', NULL, '2020-02-15 17:11:26', NULL),
(808, 'home\\index', NULL, '2020-02-15 17:11:33', NULL),
(809, 'home\\login', NULL, '2020-02-15 17:11:44', NULL),
(810, 'home\\index', NULL, '2020-02-15 17:14:09', NULL),
(811, 'home\\index', NULL, '2020-02-15 17:17:29', NULL),
(812, 'home\\index', NULL, '2020-02-15 17:20:37', NULL),
(813, 'home\\index', NULL, '2020-02-15 17:21:29', NULL),
(814, 'home\\index', NULL, '2020-02-15 17:21:48', NULL),
(815, 'home\\index', NULL, '2020-02-15 17:22:14', NULL),
(816, 'home\\index', NULL, '2020-02-15 17:23:28', NULL),
(817, 'home\\index', NULL, '2020-02-15 17:24:06', NULL),
(818, 'home\\index', NULL, '2020-02-15 17:28:23', NULL),
(819, 'home\\index', NULL, '2020-02-15 17:28:37', NULL),
(820, 'home\\index', NULL, '2020-02-15 17:31:05', NULL),
(821, 'home\\index', NULL, '2020-02-15 18:12:20', NULL),
(822, 'home\\index', NULL, '2020-02-15 18:12:49', NULL),
(823, 'home\\index', NULL, '2020-02-15 18:13:21', NULL),
(824, 'home\\index', NULL, '2020-02-15 18:16:49', NULL),
(825, 'home\\index', NULL, '2020-02-15 18:17:34', NULL),
(826, 'home\\index', NULL, '2020-02-15 18:18:06', NULL),
(827, 'home\\index', NULL, '2020-02-15 18:20:20', NULL),
(828, 'home\\index', NULL, '2020-02-15 18:20:41', NULL),
(829, 'home\\index', NULL, '2020-02-15 18:21:33', NULL),
(830, 'home\\index', NULL, '2020-02-15 18:22:39', NULL),
(831, 'home\\index', NULL, '2020-02-15 18:23:24', NULL),
(832, 'home\\index', NULL, '2020-02-15 18:24:41', NULL),
(833, 'home\\index', NULL, '2020-02-15 18:25:59', NULL),
(834, 'home\\index', NULL, '2020-02-15 18:27:20', NULL),
(835, 'home\\index', NULL, '2020-02-15 18:29:20', NULL),
(836, 'home\\index', NULL, '2020-02-15 18:33:01', NULL),
(837, 'home\\index', NULL, '2020-02-15 18:33:50', NULL),
(838, 'home\\detailsCompagin', NULL, '2020-02-15 18:33:54', NULL),
(839, 'home\\detailsCompagin', NULL, '2020-02-15 18:34:03', NULL),
(840, 'home\\detailsCompagin', NULL, '2020-02-15 18:46:11', NULL),
(841, 'home\\detailsCompagin', NULL, '2020-02-15 18:46:37', NULL),
(842, 'home\\detailsCompagin', NULL, '2020-02-15 18:49:00', NULL),
(843, 'home\\detailsCompagin', NULL, '2020-02-15 18:49:15', NULL),
(844, 'home\\singUp', NULL, '2020-02-15 18:49:58', NULL),
(845, 'home\\detailsCompagin', NULL, '2020-02-15 18:50:05', NULL),
(846, 'home\\login', NULL, '2020-02-15 19:15:27', NULL),
(847, 'home\\index', 28, '2020-02-15 19:15:39', NULL),
(848, 'home\\profile', 28, '2020-02-15 19:15:44', NULL),
(849, 'home\\editCompaign', 28, '2020-02-15 19:15:50', NULL),
(850, 'home\\profile', 28, '2020-02-15 19:17:21', NULL),
(851, 'home\\index', NULL, '2020-02-15 19:17:32', NULL),
(852, 'home\\login', NULL, '2020-02-15 19:17:35', NULL),
(853, 'home\\index', 29, '2020-02-15 19:51:30', NULL),
(854, 'home\\index', 29, '2020-02-15 19:51:35', NULL),
(855, 'home\\index', NULL, '2020-02-15 19:51:48', NULL),
(856, 'home\\index', NULL, '2020-02-15 19:52:49', NULL),
(857, 'home\\index', NULL, '2020-02-15 19:56:54', NULL),
(858, 'home\\index', NULL, '2020-02-15 19:57:06', NULL),
(859, 'home\\index', NULL, '2020-02-15 19:57:16', NULL),
(860, 'home\\index', NULL, '2020-02-15 19:58:23', NULL),
(861, 'home\\index', NULL, '2020-02-15 19:58:34', NULL),
(862, 'home\\index', NULL, '2020-02-15 19:58:37', NULL),
(863, 'home\\index', NULL, '2020-02-15 19:58:41', NULL),
(864, 'home\\index', NULL, '2020-02-15 19:58:54', NULL),
(865, 'home\\index', NULL, '2020-02-15 19:59:02', NULL),
(866, 'home\\index', NULL, '2020-02-15 19:59:14', NULL),
(867, 'home\\login', NULL, '2020-02-15 19:59:45', NULL),
(868, 'home\\login', NULL, '2020-02-15 20:00:21', NULL),
(869, 'home\\login', NULL, '2020-02-15 20:00:41', NULL),
(870, 'home\\singUp', NULL, '2020-02-15 20:00:44', NULL),
(871, 'home\\index', NULL, '2020-02-15 20:00:48', NULL),
(872, 'home\\login', NULL, '2020-02-15 20:01:12', NULL),
(873, 'home\\login', NULL, '2020-02-15 20:01:57', NULL),
(874, 'home\\index', NULL, '2020-02-15 20:02:02', NULL),
(875, 'home\\login', NULL, '2020-02-15 20:02:07', NULL),
(876, 'home\\index', 28, '2020-02-15 20:02:16', NULL),
(877, 'home\\addcompaign', 28, '2020-02-15 20:02:36', NULL),
(878, 'home\\addcompaign', 28, '2020-02-15 20:03:57', NULL),
(879, 'home\\addcompaign', 28, '2020-02-15 20:04:01', NULL),
(880, 'home\\addcompaign', 28, '2020-02-15 20:05:12', NULL),
(881, 'home\\addcompaign', 28, '2020-02-15 20:05:26', NULL),
(882, 'home\\profile', 28, '2020-02-15 20:05:36', NULL),
(883, 'home\\profile', 28, '2020-02-15 20:09:04', NULL),
(884, 'home\\profile', 28, '2020-02-15 20:09:58', NULL),
(885, 'home\\profile', 28, '2020-02-15 20:10:20', NULL),
(886, 'home\\profile', 28, '2020-02-15 20:11:33', NULL),
(887, 'home\\profile', 28, '2020-02-15 20:12:28', NULL),
(888, 'home\\profile', 28, '2020-02-15 20:12:56', NULL),
(889, 'home\\profile', 28, '2020-02-15 20:14:44', NULL),
(890, 'home\\profile', 28, '2020-02-15 20:17:41', NULL),
(891, 'home\\profile', 28, '2020-02-15 20:19:21', NULL),
(892, 'home\\profile', 28, '2020-02-15 20:21:23', NULL),
(893, 'home\\profile', 28, '2020-02-15 20:22:42', NULL),
(894, 'home\\profile', 28, '2020-02-15 20:23:36', NULL),
(895, 'home\\profile', 28, '2020-02-15 20:24:10', NULL),
(896, 'home\\profile', 28, '2020-02-15 20:25:27', NULL),
(897, 'home\\profile', 28, '2020-02-15 20:25:37', NULL),
(898, 'home\\profile', 28, '2020-02-15 20:25:43', NULL),
(899, 'home\\addcompaign', 28, '2020-02-15 20:26:01', NULL),
(900, 'home\\profile', 28, '2020-02-15 20:26:34', NULL),
(901, 'home\\detailsCompagin', 28, '2020-02-15 20:28:06', NULL),
(902, 'home\\detailsCompagin', 28, '2020-02-15 20:28:39', NULL),
(903, 'home\\detailsCompagin', 28, '2020-02-15 20:31:28', NULL),
(904, 'home\\profile', 28, '2020-02-15 20:31:44', NULL),
(905, 'home\\index', 28, '2020-02-15 20:31:47', NULL),
(906, 'home\\detailsCompagin', 28, '2020-02-15 20:31:54', NULL),
(907, 'home\\detailsCompagin', 28, '2020-02-15 20:32:45', NULL),
(908, 'home\\detailsCompagin', 28, '2020-02-15 20:37:23', NULL),
(909, 'home\\detailsCompagin', 28, '2020-02-15 20:38:34', NULL),
(910, 'home\\detailsCompagin', 28, '2020-02-15 20:39:07', NULL),
(911, 'home\\detailsCompagin', 28, '2020-02-15 20:39:59', NULL),
(912, 'home\\detailsCompagin', 28, '2020-02-15 20:40:41', NULL),
(913, 'home\\detailsCompagin', 28, '2020-02-15 20:41:33', NULL),
(914, 'home\\detailsCompagin', 28, '2020-02-15 20:42:58', NULL),
(915, 'home\\detailsCompagin', 28, '2020-02-15 20:43:44', NULL),
(916, 'home\\detailsCompagin', 28, '2020-02-15 20:45:09', NULL),
(917, 'home\\detailsCompagin', 28, '2020-02-15 20:47:37', NULL),
(918, 'home\\detailsCompagin', 28, '2020-02-15 20:48:29', NULL),
(919, 'home\\detailsCompagin', 28, '2020-02-15 21:14:41', NULL),
(920, 'home\\detailsCompagin', 28, '2020-02-15 21:17:13', NULL),
(921, 'home\\detailsCompagin', 28, '2020-02-15 21:17:21', NULL),
(922, 'home\\detailsCompagin', 28, '2020-02-15 21:19:10', NULL),
(923, 'home\\detailsCompagin', 28, '2020-02-15 21:20:07', NULL),
(924, 'home\\detailsCompagin', 28, '2020-02-15 21:21:57', NULL),
(925, 'home\\detailsCompagin', 28, '2020-02-15 21:23:23', NULL),
(926, 'home\\donate', 28, '2020-02-15 21:23:33', NULL),
(927, 'home\\detailsCompagin', 28, '2020-02-15 21:23:41', NULL),
(928, 'home\\detailsCompagin', 28, '2020-02-15 21:24:55', NULL),
(929, 'home\\detailsCompagin', 28, '2020-02-15 21:26:09', NULL),
(930, 'home\\detailsCompagin', 28, '2020-02-15 21:28:47', NULL),
(931, 'home\\detailsCompagin', 28, '2020-02-15 21:28:57', NULL),
(932, 'home\\detailsCompagin', 28, '2020-02-15 21:31:44', NULL),
(933, 'home\\detailsCompagin', 28, '2020-02-15 21:32:37', NULL),
(934, 'home\\detailsCompagin', 28, '2020-02-15 21:33:19', NULL),
(935, 'home\\detailsCompagin', 28, '2020-02-15 21:33:46', NULL),
(936, 'home\\detailsCompagin', 28, '2020-02-15 21:34:02', NULL),
(937, 'home\\detailsCompagin', 28, '2020-02-15 21:35:39', NULL),
(938, 'home\\detailsCompagin', 28, '2020-02-15 21:37:09', NULL),
(939, 'home\\detailsCompagin', 28, '2020-02-15 21:38:51', NULL),
(940, 'home\\detailsCompagin', 28, '2020-02-15 21:40:12', NULL),
(941, 'home\\detailsCompagin', 28, '2020-02-15 21:41:17', NULL),
(942, 'home\\detailsCompagin', 28, '2020-02-15 21:41:40', NULL),
(943, 'home\\profile', 28, '2020-02-15 22:05:49', NULL),
(944, 'home\\profile', 28, '2020-02-15 22:11:14', NULL),
(945, 'home\\detailsCompagin', 28, '2020-02-15 22:11:21', 1);
INSERT INTO `visits` (`id`, `page`, `user_id`, `created_at`, `compaign_id`) VALUES
(946, 'home\\profile', 28, '2020-02-15 22:23:26', NULL),
(947, 'home\\profile', 28, '2020-02-15 22:25:03', NULL),
(948, 'home\\profile', 28, '2020-02-15 22:34:16', NULL),
(949, 'home\\editCompaign', 28, '2020-02-15 22:34:27', 22),
(950, 'home\\profile', 28, '2020-02-15 22:34:32', NULL),
(951, 'home\\index', NULL, '2020-02-15 22:39:02', NULL),
(952, 'home\\login', NULL, '2020-02-15 22:39:07', NULL),
(953, 'home\\index', 28, '2020-02-15 22:41:52', NULL),
(954, 'home\\errorPage', 28, '2020-02-15 22:43:04', NULL),
(955, 'home\\errorPage', 28, '2020-02-15 22:43:43', NULL),
(956, 'home\\errorPage', 28, '2020-02-15 22:44:48', NULL),
(957, 'home\\errorPage', 28, '2020-02-15 22:45:34', NULL),
(958, 'home\\errorPage', 28, '2020-02-15 22:45:40', NULL),
(959, 'home\\errorPage', 28, '2020-02-15 22:45:43', NULL),
(960, 'home\\index', 28, '2020-02-15 22:45:48', NULL),
(961, 'home\\index', NULL, '2020-02-15 22:45:52', NULL),
(962, 'home\\singUp', NULL, '2020-02-15 22:45:58', NULL),
(963, 'home\\singUp', NULL, '2020-02-15 22:47:06', NULL),
(964, 'home\\singUp', NULL, '2020-02-15 22:47:41', NULL),
(965, 'home\\singUp', NULL, '2020-02-15 22:52:54', NULL),
(966, 'home\\index', NULL, '2020-02-15 22:53:30', NULL),
(967, 'home\\login', NULL, '2020-02-15 22:53:39', NULL),
(968, 'home\\index', 28, '2020-02-15 22:53:50', NULL),
(969, 'home\\addcompaign', 28, '2020-02-15 22:53:57', NULL),
(970, 'home\\index', 28, '2020-02-15 22:55:10', NULL),
(971, 'home\\welcome2fundme', 28, '2020-02-15 22:55:39', NULL),
(972, 'home\\index', 28, '2020-02-15 22:55:39', NULL),
(973, 'home\\welcome2fundme', 28, '2020-02-15 22:56:18', NULL),
(974, 'home\\welcome2fundme', 28, '2020-02-15 22:56:19', NULL),
(975, 'home\\index', 28, '2020-02-15 22:56:19', NULL),
(976, 'home\\index', 28, '2020-02-15 22:57:23', NULL),
(977, 'home\\index', 28, '2020-02-15 22:57:25', NULL),
(978, 'home\\login', 28, '2020-02-15 22:57:34', NULL),
(979, 'home\\welcome2fundme', 28, '2020-02-15 22:57:39', NULL),
(980, 'home\\index', 28, '2020-02-15 22:57:40', NULL),
(981, 'home\\index', NULL, '2020-02-15 22:57:48', NULL),
(982, 'home\\singUp', NULL, '2020-02-15 22:58:05', NULL),
(983, 'home\\index', NULL, '2020-02-15 22:59:02', NULL),
(984, 'home\\singUp', NULL, '2020-02-15 23:00:06', NULL),
(985, 'home\\singUp', NULL, '2020-02-15 23:03:23', NULL),
(986, 'home\\index', NULL, '2020-02-15 23:03:25', NULL),
(987, 'home\\index', NULL, '2020-02-15 23:03:54', NULL),
(988, 'home\\index', NULL, '2020-02-15 23:04:57', NULL),
(989, 'home\\index', NULL, '2020-02-15 23:07:55', NULL),
(990, 'home\\index', NULL, '2020-02-15 23:08:21', NULL),
(991, 'home\\index', NULL, '2020-02-15 23:08:45', NULL),
(992, 'home\\index', NULL, '2020-02-15 23:09:11', NULL),
(993, 'home\\index', NULL, '2020-02-15 23:11:08', NULL),
(994, 'home\\index', NULL, '2020-02-15 23:12:00', NULL),
(995, 'home\\index', NULL, '2020-02-15 23:12:39', NULL),
(996, 'home\\index', NULL, '2020-02-15 23:16:00', NULL),
(997, 'home\\index', NULL, '2020-02-15 23:17:32', NULL),
(998, 'home\\index', NULL, '2020-02-15 23:17:36', NULL),
(999, 'home\\index', NULL, '2020-02-15 23:17:50', NULL),
(1000, 'home\\index', NULL, '2020-02-15 23:18:02', NULL),
(1001, 'home\\contactus', NULL, '2020-02-15 23:18:03', NULL),
(1002, 'home\\contactus', NULL, '2020-02-16 05:43:00', NULL),
(1003, 'home\\login', NULL, '2020-02-16 05:43:04', NULL),
(1004, 'home\\index', NULL, '2020-02-16 05:45:34', NULL),
(1005, 'home\\login', NULL, '2020-02-16 05:45:40', NULL),
(1006, 'home\\index', 28, '2020-02-16 05:45:52', NULL),
(1007, 'home\\index', 28, '2020-02-16 05:46:00', NULL),
(1008, 'home\\index', 28, '2020-02-16 05:46:25', NULL),
(1009, 'home\\index', 28, '2020-02-16 05:46:29', NULL),
(1010, 'home\\profile', 28, '2020-02-16 05:46:41', NULL),
(1011, 'home\\index', 28, '2020-02-16 05:48:17', NULL),
(1012, 'home\\search', 28, '2020-02-16 05:48:36', NULL),
(1013, 'home\\index', 28, '2020-02-16 05:48:41', NULL),
(1014, 'home\\profile', 28, '2020-02-16 05:48:46', NULL),
(1015, 'home\\detailsCompagin', 28, '2020-02-16 05:48:52', 18),
(1016, 'home\\index', 28, '2020-02-16 05:49:12', NULL),
(1017, 'home\\detailsCompagin', 28, '2020-02-16 05:51:25', 3),
(1018, 'home\\detailsCompagin', 28, '2020-02-16 05:57:48', 3);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=127;

--
-- AUTO_INCREMENT for table `popular_search`
--
ALTER TABLE `popular_search`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `profiles`
--
ALTER TABLE `profiles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=112;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1019;

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
