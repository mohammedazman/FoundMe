-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 06 فبراير 2020 الساعة 09:48
-- إصدار الخادم: 10.4.8-MariaDB
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
-- بنية الجدول `comments`
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
-- إرجاع أو استيراد بيانات الجدول `comments`
--

INSERT INTO `comments` (`id`, `user_id`, `compigan_id`, `message`, `status`, `created_at`) VALUES
(1, 29, 2, 'he', 1, '2020-02-05 13:15:14');

-- --------------------------------------------------------

--
-- بنية الجدول `compigans`
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
-- إرجاع أو استيراد بيانات الجدول `compigans`
--

INSERT INTO `compigans` (`id`, `owner_id`, `title`, `galary`, `descrption`, `file`, `tags`, `status`, `cost`, `duration`, `pending`, `updates`, `created_at`, `update_at`) VALUES
(1, 29, 'this is new compaiin', '1.jpg', '<p>texttexttexttexttexttexttexttexttexttexttexttexttexttexttexttexttexttexttexttexttexttexttexttexttexttexttexttexttexttexttexttexttexttexttexttexttexttexttexttexttexttexttexttexttexttexttexttexttexttexttexttexttexttexttexttexttexttexttexttexttexttexttexttexttexttexttexttexttexttexttexttexttexttexttexttexttext</p>', '', 'hh', '2', 30000, 2020, 0, NULL, '2020-01-27 19:02:52', '2020-01-27 19:02:52'),
(2, 29, 'gjhgkj,hgkjhgjk', '1.jpg', '<p>kjgufjfkjhglkjgkjhlkjhkljhklk</p>', '', 'kgjkhgkhgkjhg', '2', 9000, 2020, 0, NULL, '2020-01-28 07:23:49', '2020-01-28 07:23:49'),
(3, 28, 'this is new compaiin', '1.jpg', '<p>this is content</p>', '982a52dbcd21a39b8b382250be2bed13.pdf', 'ggg', '0', 700, 2020, 0, NULL, '2020-01-30 08:43:27', '2020-01-30 08:43:27'),
(4, 28, 'this is new compibnmbnjbhjmngn', '1.jpg', '<p>this is contextthis is contextthis is contextthis is contextthis is contextthis is context</p>', '144fd7b425e91b1160e0224dbd227a83.pdf', 'ggg', '0', 700, 2020, 0, NULL, '2020-01-30 09:41:32', '2020-01-30 09:41:32'),
(5, 55, 'this is new compiign', '1.jpg', '<p>this is discthis is discthis is discthis is discthis is discthis is discthis is discthis is discthis is discthis is discthis is discthis is disc</p>', 'c43262c417d551a0ec9db9670e842b4c.pdf', 'ggg', '3', 30000, 2020, 0, NULL, '2020-02-02 08:18:38', '2020-02-02 08:18:38'),
(8, 55, 'this is new compaiin', '1.jpg', '<p>hhhhhhhhhhhhhhhh</p>', '', 'ggg', '1', 600, 2020, 0, NULL, '2020-02-03 23:00:10', '2020-02-03 23:00:10'),
(9, 55, 'this is new compaiin', '1.jpg', '<p>hhhhhhhhhhhhhhhh</p>', '', 'ggg', '1', 600, 2020, 0, NULL, '2020-02-03 23:01:05', '2020-02-03 23:01:05'),
(10, 55, 'this is new compaiin', '1.jpg', '<p>hhhhhhhhhhhhhhhhhhhhhhhhh</p>', '', 'ggg', '1', 600, 2020, 0, NULL, '2020-02-03 23:14:01', '2020-02-03 23:14:01'),
(11, 55, 'gjhgkj,hgkjhgjk', '1.jpg', '<p>uuuuuuuuuuuuuuuuuu</p>', '', 'hh', '1', 600, 275760, 0, NULL, '2020-02-03 23:17:43', '2020-02-03 23:17:43'),
(12, 55, 'last tryyyyyyyyyyyyy', '1.jpg', '<p>hhhhhhhhhhhhhhhhhhhh</p>', '', 'try', '1', 19, 2020, 0, NULL, '2020-02-03 23:28:23', '2020-02-03 23:28:23'),
(13, 55, 'last tryyyyyyyyyyyyy', '1.jpg', '<p>hhhhhhhhhhhhhhhhhhhh</p>', '', 'try', '1', 19, 2020, 0, NULL, '2020-02-03 23:28:38', '2020-02-03 23:28:38'),
(14, 55, 'last tryyyyyyyyyyyyy', '1.jpg', '<p>hhhhhhhhhhhhhhhhhhhh</p>', '', 'try', '1', 19, 2020, 0, NULL, '2020-02-03 23:28:42', '2020-02-03 23:28:42'),
(15, 55, 'last tryyyyyyyyyyyyy', '1.jpg', '<p>hhhhhhhhhhhhhhhhhhhh</p>', '', 'try', '1', 19, 2020, 0, NULL, '2020-02-03 23:28:44', '2020-02-03 23:28:44'),
(16, 55, 'last tryyyyyyyyyyyyy', '1.jpg', '<p>hhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh</p>', '', 'kytiukj,m', '1', 666, 2020, 0, NULL, '2020-02-03 23:32:47', '2020-02-03 23:32:47'),
(17, 28, 'this is new compibnmbnjbhjmngn', '1.jpg', '<p>jjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjj</p>', '', 'hh', '1', 900, 2020, 0, NULL, '2020-02-04 06:26:51', '2020-02-04 06:26:51'),
(18, 28, 'this is new compibnmbnjbhjmngn', '1.jpg', '<p>hgggggggggggggggggggggggggggggg</p>', '', 'ggg', '1', 777, 2020, 0, NULL, '2020-02-04 07:46:09', '2020-02-04 07:46:09'),
(19, 28, 'hhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh', '1.jpg', '<p>kuhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh</p>', '', 'hh', '1', 600, 2020, 0, NULL, '2020-02-04 10:22:03', '2020-02-04 10:22:03'),
(20, 28, 'Progeamming', '1.jpg', '<p>nnnnnnnnnnnnnnn</p>', '', 'web', '1', 27, 2020, 0, NULL, '2020-02-04 11:16:22', '2020-02-04 11:16:22'),
(21, 35, 'this is new compibnmbnjbhjmngn', '1.jpg', '<p>ttttttttttttttttttttttttttttttttttttttttttttttt</p>', '', 'ggg', '1', 500, 2020, 0, NULL, '2020-02-04 17:12:44', '2020-02-04 17:12:44'),
(22, 28, 'this is new compibnmbnjbhjmngn', '1.jpg', '<p>gggggggggggggggggggggggggggg</p>', '', 'ggg', '1', 500, 2020, 0, NULL, '2020-02-04 18:28:09', '2020-02-04 18:28:09'),
(23, 28, 'this is new compaiin', '1.jpg', '<p>hhhhhhhhhhhhhhhhhhhhh</p>', '', 'ggg', '1', 500, 2020, 0, NULL, '2020-02-04 18:31:55', '2020-02-04 18:31:55'),
(24, 28, 'this is new compibnmbnjbhjmngn', '1.jpg', '<p>ggggggggggggggggggggg</p>', '', 'ggg', '1', 500, 2020, 0, NULL, '2020-02-04 19:10:47', '2020-02-04 19:10:47'),
(25, 28, 'this is new compibnmbnjbhjmngn', '1.jpg', '<p>hhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh</p>', '', 'ggg', '1', 666, 2020, 0, NULL, '2020-02-04 19:15:11', '2020-02-04 19:15:11'),
(26, 28, 'noha saeed alwajeeh', 'f9d8d88af617756fd373efb59af98613.png', '                      ', '', 'sport live news', '1', 20, 2020, 0, NULL, '2020-02-05 09:41:25', '2020-02-05 09:41:25');

-- --------------------------------------------------------

--
-- بنية الجدول `donations`
--

CREATE TABLE `donations` (
  `id` int(11) NOT NULL,
  `compigan_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `amount` decimal(10,0) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- بنية الجدول `followers`
--

CREATE TABLE `followers` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `compigan_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- بنية الجدول `notifications`
--

CREATE TABLE `notifications` (
  `id` int(11) NOT NULL,
  `target_user` varchar(11) NOT NULL,
  `text` text NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `type` varchar(20) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- إرجاع أو استيراد بيانات الجدول `notifications`
--

INSERT INTO `notifications` (`id`, `target_user`, `text`, `status`, `type`, `created_at`, `updated_at`) VALUES
(7, 'admin', 'New user is added and need activation', 0, 'new user', '2020-01-27 18:29:04', '2020-01-27 18:29:04'),
(8, 'admin', 'New compaign is added by thurya abdu and need approvment', 0, 'new compain', '2020-01-27 19:02:52', '2020-01-27 19:02:52'),
(9, 'admin', 'New user is added and need activation', 0, 'new user', '2020-01-28 07:16:38', '2020-01-28 07:16:38'),
(10, 'admin', 'New compaign is added by thurya abduand need approvment', 0, 'new compain', '2020-01-28 07:23:49', '2020-01-28 07:23:49'),
(11, 'admin', 'New user is added and need activation', 0, 'new user', '2020-01-28 07:39:17', '2020-01-28 07:39:17'),
(12, 'admin', 'New user is added and need activation', 0, 'new user', '2020-01-29 06:28:31', '2020-01-29 06:28:31'),
(13, 'admin', 'New user is added and need activation', 0, 'new user', '2020-01-29 07:09:41', '2020-01-29 07:09:41'),
(14, 'admin', 'New user is added and need activation', 0, 'new user', '2020-01-29 07:34:41', '2020-01-29 07:34:41'),
(15, 'admin', 'New user is added and need activation', 0, 'new user', '2020-01-29 07:36:01', '2020-01-29 07:36:01'),
(16, 'admin', 'New user is added and need activation', 0, 'new user', '2020-01-29 09:27:19', '2020-01-29 09:27:19'),
(17, 'admin', 'New user is added and need activation', 0, 'new user', '2020-01-29 09:27:53', '2020-01-29 09:27:53'),
(18, 'admin', 'New user is added and need activation', 0, 'new user', '2020-01-29 09:35:56', '2020-01-29 09:35:56'),
(19, 'admin', 'New user is added and need activation', 0, 'new user', '2020-01-29 09:37:54', '2020-01-29 09:37:54'),
(20, 'admin', 'New user is added and need activation', 0, 'new user', '2020-01-29 09:38:35', '2020-01-29 09:38:35'),
(21, 'admin', 'New user is added and need activation', 0, 'new user', '2020-01-29 09:39:04', '2020-01-29 09:39:04'),
(22, 'admin', 'New user is added and need activation', 0, 'new user', '2020-01-29 09:39:28', '2020-01-29 09:39:28'),
(23, 'admin', 'New user is added and need activation', 0, 'new user', '2020-01-29 09:41:13', '2020-01-29 09:41:13'),
(24, 'admin', 'New user is added and need activation', 0, 'new user', '2020-01-29 09:42:11', '2020-01-29 09:42:11'),
(33, 'admin', 'New compaign is added by ibtehal Fahdand need approvment', 0, 'new compain', '2020-01-30 08:43:28', '2020-01-30 08:43:28'),
(34, 'admin', 'New compaign is added by ibtehal Fahdand need approvment', 0, 'new compain', '2020-01-30 09:41:32', '2020-01-30 09:41:32'),
(35, '28', 'your compaign is approved .', 1, 'aprroved compaign', '2020-02-02 07:28:38', '2020-02-02 07:28:38'),
(36, '28', 'your compaign is rejected .', 0, 'reject compaign', '2020-02-02 07:28:51', '2020-02-02 07:28:51'),
(37, 'admin', 'New user is added and need activation', 0, 'new user', '2020-02-02 08:09:11', '2020-02-02 08:09:11'),
(38, 'admin', 'New compaign is added by mokhtar ghaleband need approvment', 0, 'new compain', '2020-02-02 08:18:38', '2020-02-02 08:18:38'),
(39, '55', 'your compaign : this is new compiign', 0, 'aprroved compaign', '2020-02-02 08:29:13', '2020-02-02 08:29:13'),
(40, '55', 'your compaign : this is new compiign', 0, 'aprroved compaign', '2020-02-02 08:29:39', '2020-02-02 08:29:39'),
(41, '28', 'your compaign is paused by admin .', 0, 'paused compaign', '2020-02-02 08:29:48', '2020-02-02 08:29:48'),
(42, 'admin', 'New user is added and need activation', 0, 'new user', '2020-02-03 09:07:58', '2020-02-03 09:07:58'),
(43, 'admin', 'New compaign is added by mokhtar ghaleband need approvment', 0, 'new compain', '2020-02-03 21:56:14', '2020-02-03 21:56:14'),
(44, 'admin', 'New compaign is added by mokhtar ghaleband need approvment', 0, 'new compain', '2020-02-03 22:54:17', '2020-02-03 22:54:17'),
(45, 'admin', 'New compaign is added by mokhtar ghaleband need approvment', 0, 'new compain', '2020-02-03 23:00:10', '2020-02-03 23:00:10'),
(46, 'admin', 'New compaign is added by mokhtar ghaleband need approvment', 0, 'new compain', '2020-02-03 23:01:05', '2020-02-03 23:01:05'),
(47, 'admin', 'New compaign is added by mokhtar ghaleband need approvment', 0, 'new compain', '2020-02-03 23:14:01', '2020-02-03 23:14:01'),
(48, 'admin', 'New compaign is added by mokhtar ghaleband need approvment', 0, 'new compain', '2020-02-03 23:17:43', '2020-02-03 23:17:43'),
(49, 'admin', 'New compaign is added by mokhtar ghaleband need approvment', 0, 'new compain', '2020-02-03 23:28:23', '2020-02-03 23:28:23'),
(50, 'admin', 'New compaign is added by mokhtar ghaleband need approvment', 0, 'new compain', '2020-02-03 23:28:38', '2020-02-03 23:28:38'),
(51, 'admin', 'New compaign is added by mokhtar ghaleband need approvment', 0, 'new compain', '2020-02-03 23:28:42', '2020-02-03 23:28:42'),
(52, 'admin', 'New compaign is added by mokhtar ghaleband need approvment', 0, 'new compain', '2020-02-03 23:28:44', '2020-02-03 23:28:44'),
(53, 'admin', 'New compaign is added by mokhtar ghaleband need approvment', 0, 'new compain', '2020-02-03 23:32:47', '2020-02-03 23:32:47'),
(54, 'admin', 'New compaign is added by ibtehal Fahdand need approvment', 0, 'new compain', '2020-02-04 06:26:52', '2020-02-04 06:26:52'),
(55, 'admin', 'New compaign is added by ibtehal Fahdand need approvment', 0, 'new compain', '2020-02-04 07:46:09', '2020-02-04 07:46:09'),
(56, 'admin', 'New compaign is added by ibtehal Fahdand need approvment', 0, 'new compain', '2020-02-04 10:22:04', '2020-02-04 10:22:04'),
(57, 'admin', 'New compaign is added by ibtehal Fahdand need approvment', 0, 'new compain', '2020-02-04 11:16:22', '2020-02-04 11:16:22'),
(58, 'admin', 'New compaign is added by lama ibtand need approvment', 0, 'new compain', '2020-02-04 17:12:44', '2020-02-04 17:12:44'),
(59, 'admin', 'New compaign is added by ibtehal Fahdand need approvment', 0, 'new compain', '2020-02-04 18:28:09', '2020-02-04 18:28:09'),
(60, 'admin', 'New compaign is added by ibtehal Fahdand need approvment', 0, 'new compain', '2020-02-04 18:31:55', '2020-02-04 18:31:55'),
(61, 'admin', 'New compaign is added by ibtehal Fahdand need approvment', 0, 'new compain', '2020-02-04 19:10:47', '2020-02-04 19:10:47'),
(62, 'admin', 'New compaign is added by ibtehal Fahdand need approvment', 0, 'new compain', '2020-02-04 19:15:11', '2020-02-04 19:15:11'),
(63, 'admin', 'New compaign is added by ibtehal Fahdand need approvment', 0, 'new compain', '2020-02-05 09:41:25', '2020-02-05 09:41:25');

-- --------------------------------------------------------

--
-- بنية الجدول `profiles`
--

CREATE TABLE `profiles` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `value` text NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- إرجاع أو استيراد بيانات الجدول `profiles`
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
-- بنية الجدول `shares`
--

CREATE TABLE `shares` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `compigan_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- بنية الجدول `users`
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
-- إرجاع أو استيراد بيانات الجدول `users`
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

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_users` (`user_id`),
  ADD KEY `compigan_id` (`compigan_id`);

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
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `compigans`
--
ALTER TABLE `compigans`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `donations`
--
ALTER TABLE `donations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `followers`
--
ALTER TABLE `followers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

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
-- قيود الجداول المحفوظة
--

--
-- القيود للجدول `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `fk_compigans` FOREIGN KEY (`compigan_id`) REFERENCES `compigans` (`id`),
  ADD CONSTRAINT `fk_users` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- القيود للجدول `compigans`
--
ALTER TABLE `compigans`
  ADD CONSTRAINT `compigans_ibfk_1` FOREIGN KEY (`owner_id`) REFERENCES `users` (`id`);

--
-- القيود للجدول `donations`
--
ALTER TABLE `donations`
  ADD CONSTRAINT `donations_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `donations_ibfk_2` FOREIGN KEY (`compigan_id`) REFERENCES `compigans` (`id`);

--
-- القيود للجدول `followers`
--
ALTER TABLE `followers`
  ADD CONSTRAINT `followers_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `followers_ibfk_2` FOREIGN KEY (`compigan_id`) REFERENCES `compigans` (`id`);

--
-- القيود للجدول `profiles`
--
ALTER TABLE `profiles`
  ADD CONSTRAINT `profiles_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- القيود للجدول `shares`
--
ALTER TABLE `shares`
  ADD CONSTRAINT `shares_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `shares_ibfk_2` FOREIGN KEY (`compigan_id`) REFERENCES `compigans` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
