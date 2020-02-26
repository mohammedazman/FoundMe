-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 26, 2020 at 12:12 PM
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
  `status` varchar(10) NOT NULL,
  `cost` double NOT NULL,
  `duration` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `pending` int(11) NOT NULL DEFAULT 0,
  `updates` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `update_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `compigans`
--

INSERT INTO `compigans` (`id`, `owner_id`, `title`, `galary`, `descrption`, `file`, `tags`, `status`, `cost`, `duration`, `pending`, `updates`, `created_at`, `update_at`) VALUES
(45, 68, 'Scrap \'quick-fix diets and tea-toxes', '3cd0afce4a26218d2d395e456304af31.jpg', '<p><span style=\"color: #333333; font-family: Lato, Trebuchet, Arial, sans-serif; font-size: 16px; background-color: #ffffff;\">n&nbsp; August 2019 Mitch Jay was diagnosed with testicular cancer. Treatment was tough but Mitch was fighting despite some setbacks that felt big at the time, but that was nothing compared to what was to come for this 32 year old from Echuca.</span><br style=\"box-sizing: inherit; color: #333333; font-family: Lato, Trebuchet, Arial, sans-serif; font-size: 16px; background-color: #ffffff;\" /><br style=\"box-sizing: inherit; color: #333333; font-family: Lato, Trebuchet, Arial, sans-serif; font-size: 16px; background-color: #ffffff;\" /><span style=\"color: #333333; font-family: Lato, Trebuchet, Arial, sans-serif; font-size: 16px; background-color: #ffffff;\">In early December 2019, Mitch walked into the hospital for what was meant to be a routine surgery, no one ever expected that to be the last time Mitch would use his legs.</span><br style=\"box-sizing: inherit; color: #333333; font-family: Lato, Trebuchet, Arial, sans-serif; font-size: 16px; background-color: #ffffff;\" /><br style=\"box-sizing: inherit; color: #333333; font-family: Lato, Trebuchet, Arial, sans-serif; font-size: 16px; background-color: #ffffff;\" /><span style=\"color: #333333; font-family: Lato, Trebuchet, Arial, sans-serif; font-size: 16px; background-color: #ffffff;\">Due to complications during surgery, Mitch lost a lot of blood. To reduce the risk of infection and ultimately save his life, doctors had no choice but to amputate both o</span></p>', '', '#Human #medical', '3', 3000, '2020-02-26 09:29:55', 0, NULL, '2020-02-26 08:15:42', '2020-02-26 08:15:42'),
(47, 68, 'Water  Recovery', 'e282f302c281f0632e13834861d31f57.jpg', '<p><span style=\"color: #333333; font-family: Lato, Trebuchet, Arial, sans-serif; font-size: 17px; background-color: #ffffff;\">Wednesday 19th of February - One of the most kindest, selfless, bright, happy, loyal and LOVED humans almost lost his life in a horrific motorcycle accident</span></p>', '', '#Human #water', '3', 4000, '2020-02-26 09:29:55', 0, NULL, '2020-02-26 08:28:55', '2020-02-26 08:28:55'),
(48, 68, 'Help samira ', '4f49ef7b0a2c48aa7167d3be3662d1b8.jpg', '<p><span style=\"color: #333333; font-family: Lato, Trebuchet, Arial, sans-serif; font-size: 16px; background-color: #ffffff;\">Our Olga &nbsp;has always been an independent, hard working professional, an amazing arial hoop artist, a&nbsp;caring friend, a loving mother and wife,&nbsp;and not one to ask for help or handouts. &nbsp;So, as a friend, I am writing this on her behalf.&nbsp;</span><br style=\"box-sizing: inherit; color: #333333; font-family: Lato, Trebuchet, Arial, sans-serif; font-size: 16px; background-color: #ffffff;\" /><br style=\"box-sizing: inherit; color: #333333; font-family: Lato, Trebuchet, Arial, sans-serif; font-size: 16px; background-color: #ffffff;\" /><span style=\"color: #333333; font-family: Lato, Trebuchet, Arial, sans-serif; font-size: 16px; background-color: #ffffff;\">Olga is currently facing the greatest challenge of her life.</span><br style=\"box-sizing: inherit; color: #333333; font-family: Lato, Trebuchet, Arial, sans-serif; font-size: 16px; background-color: #ffffff;\" /><br style=\"box-sizing: inherit; color: #333333; font-family: Lato, Trebuchet, Arial, sans-serif; font-size: 16px; background-color: #ffffff;\" /><span style=\"color: #333333; font-family: Lato, Trebuchet, Arial, sans-serif; font-size: 16px; background-color: #ffffff;\">As many of you already know, on the 7th of January, Olga was particapating in the opening ceremony of the Youth Winter Olympics games 2020 in Lausanne, with her beautiful arial&nbsp;hoop act,&nbsp;when she fell from five metres (16 feet) onto the ice during&nbsp;</span></p>', '', '#Human #life', '3', 3800, '2020-02-26 09:29:55', 0, NULL, '2020-02-26 08:52:56', '2020-02-26 08:52:56'),
(49, 68, 'Get Her Life Back ', '9c0e8f9e40ff08b92b5a2123d8fb1303.jpg', '<p><span style=\"color: #333333; font-family: Lato, Trebuchet, Arial, sans-serif; font-size: 16px; background-color: #ffffff;\">Our Olga &nbsp;has always been an independent, hard working professional, an amazing arial hoop artist, a&nbsp;caring friend, a loving mother and wife,&nbsp;and not one to ask for help or handouts. &nbsp;So, as a friend, I am writing this on her behalf.&nbsp;</span><br style=\"box-sizing: inherit; color: #333333; font-family: Lato, Trebuchet, Arial, sans-serif; font-size: 16px; background-color: #ffffff;\" /><br style=\"box-sizing: inherit; color: #333333; font-family: Lato, Trebuchet, Arial, sans-serif; font-size: 16px; background-color: #ffffff;\" /><span style=\"color: #333333; font-family: Lato, Trebuchet, Arial, sans-serif; font-size: 16px; background-color: #ffffff;\">Olga is currently facing the greatest challenge of her life.</span><br style=\"box-sizing: inherit; color: #333333; font-family: Lato, Trebuchet, Arial, sans-serif; font-size: 16px; background-color: #ffffff;\" /><br style=\"box-sizing: inherit; color: #333333; font-family: Lato, Trebuchet, Arial, sans-serif; font-size: 16px; background-color: #ffffff;\" /><span style=\"color: #333333; font-family: Lato, Trebuchet, Arial, sans-serif; font-size: 16px; background-color: #ffffff;\">As many of you already know, on the 7th of January, Olga was particapating in the opening ceremony of the Youth Winter Olympics games 2020 in Lausanne, with her beautiful arial&nbsp;hoop act,&nbsp;when she fell from five metres (16 feet) onto the ice during&nbsp;</span></p>', '', '#Human #life ', '3', 30000, '2020-02-26 09:29:55', 0, NULL, '2020-02-26 08:57:55', '2020-02-26 08:57:55'),
(50, 68, 'Ashleigh Bool - Fight against.', '3cd0afce4a26218d2d395e456304af31.jpg', '<p><span style=\"color: #333333; font-family: Lato, Trebuchet, Arial, sans-serif; font-size: 16px; background-color: #ffffff;\">t breaks my heart to have to do this, In September 2019 Ashleigh was diagnosed with Stage 4 peritoneal cancer and metastatic colorectal cancer. This news is heartbreaking for a bubbly young 25 year old woman with so much to give and so much life to live. It has also devastated her family, she has a one year old nephew who is so in love with his aunty. When the cancer was found, Ashleigh had surgery to remove a tumour on her bowel and now has a stoma bag. The doctor\'s have discovered the cancer is spreading, quickly. There is more tumours on other organs including both ovaries. Ashleighs life expectancy is up to two years if she decides to have an invasive and life threatening HIPEC surgery in Hamilton. To have the surgery, Ash will be away from family and&nbsp;</span></p>', '', '#medical #healing', '2', 15000, '2020-02-26 11:02:36', 0, NULL, '2020-02-26 09:02:11', '2020-02-26 09:02:11'),
(51, 68, ' Help Little Tema Fight Medulloblastoma', '6c1c82528991f78c5454d06cbd6ad8c6.jpg', '<p><span style=\"color: #333333; font-family: Lato, Trebuchet, Arial, sans-serif; font-size: 16px; background-color: #ffffff;\">December 2019, A week before Christmas Tema (Tama\'a) Ongona I Siaatoutai Tuipulotu a Young 4 Yr old girl, Had fallen down the stairs. Tema was taken to the Dr\'s and&nbsp; checked her up but Drs said she\'s ok, after Christmas Tema (Tama\'a) started to Vomit and Complained about her Neck, so we took her to a Different Dr and still they said she\'s ok it\'s just a Virus going around, we took her home and gave Pandol but we began to notice a couple of days after that Tema is becoming unbalanced in her walking and standing. On Thursday 16, of January 2020 I (Tema Father Ben) came home from work in the Morning woke my Daughter (Tema) up, asked her to get ready to go to the Dr\'s again, She started crying to me saying Dad I Can\'t walk and I can\'t&nbsp;</span></p>', '', '#medical #human #healing', '2', 14000, '2020-02-26 11:02:43', 0, NULL, '2020-02-26 09:04:55', '2020-02-26 09:04:55'),
(52, 68, 'Difference with free fundraising ', '120490c03bc595125c8f704b2a8565b6.jpg', '<p><span style=\"color: #333333; font-family: Lato, Trebuchet, Arial, sans-serif; font-size: 16px; background-color: #ffffff;\">December 2019, A week before Christmas Tema (Tama\'a) Ongona I Siaatoutai Tuipulotu a Young 4 Yr old girl, Had fallen down the stairs. Tema was taken to the Dr\'s and&nbsp; checked her up but Drs said she\'s ok, after Christmas Tema (Tama\'a) started to Vomit and Complained about her Neck, so we took her to a Different Dr and still they said she\'s ok it\'s just a Virus going around, we took her home and gave Pandol but we began to notice a couple of days after that Tema is becoming unbalanced in her walking and standing. On Thursday 16, of January 2020 I (Tema Father Ben) came home from work in the Morning woke my Daughter (Tema) up, asked her to get ready to go to the Dr\'s again, She started crying to me saying Dad I Can\'t walk and I can\'t&nbsp;</span></p>', '', '#Didffrent #non', '1', 60000, '2020-02-28 21:00:00', 0, NULL, '2020-02-26 09:12:36', '2020-02-26 09:12:36'),
(53, 68, 'School for Homeless children ', 'da2f1771122db61d63435aa3cc926c9d.jpg', '<p>For our students, their time at Positive Tomorrows is a chance to see they are not alone in facing the challenges of homelessness. All of their peers are also homeless, fostering an environment of understanding that can&rsquo;t be matched in a traditional public school system. We&rsquo;ve developed a three-fold approach to tackling those unique challenges.</p>', '', '#society #yemen #humanity', '2', 2000, '2020-02-26 07:39:44', 0, NULL, '2020-02-26 05:41:29', '2020-02-26 05:41:29'),
(54, 68, 'Water tank in the poor', 'e1432ec2264c4f433c6f81126c087a73.jpg', '<p><span style=\"font-family: blogger_sansregular; font-size: 16px; text-align: justify; background-color: #ffffff;\">Arid land today accounts for over 40% of the land mass and is inhabited by 2.3 billion people, which corresponds to about one third of the world population. The impact of poverty is most strongly felt in the arid regions.</span><br style=\"box-sizing: border-box; font-family: blogger_sansregular; font-size: 16px; text-align: justify; background-color: #ffffff;\" /><span style=\"font-family: blogger_sansregular; font-size: 16px; text-align: justify; background-color: #ffffff;\">In such a context, water tanks capable of storing a large amount of water (and mainly rainwater) help to fight water shortages and therefore reduce the impact of poverty on the populations.</span></p>\n<p><span style=\"font-family: blogger_sansregular; font-size: 16px; text-align: justify; background-color: #ffffff;\">Arid land today accounts for over 40% of the land mass and is inhabited by 2.3 billion people, which corresponds to about one third of the world population. The impact of poverty is most strongly felt in the arid regions.</span><br style=\"box-sizing: border-box; font-family: blogger_sansregular; font-size: 16px; text-align: justify; background-color: #ffffff;\" /><span style=\"font-family: blogger_sansregular; font-size: 16px; text-align: justify; background-color: #ffffff;\">In such a context, water tanks capable of storing a large amount of water (and mainly rainwater) help to fight water shortages and therefore reduce the impact of poverty on the populations.</span></p>', '', '#society #yemen #humanity  ', '2', 50000, '2020-02-26 07:39:52', 0, NULL, '2020-02-26 06:04:10', '2020-02-26 06:04:10'),
(55, 68, 'Feeding the hungry child ', 'f8f03a5c461646d1c93369d66fc96392.png', '<p>Be strong and courageous, for you are the one who will lead these people to possess all the land I swore to their ancestors I would give them. Be strong and very courageous. Be careful to obey all the instructions Moses gave you. Do not deviate from them, turning either to the right or to the left. Then you will be successful in everything you do.</p>', '', '#society #yemen #humanity  #food', '2', 10000, '2020-02-26 07:39:57', 0, NULL, '2020-02-26 06:06:56', '2020-02-26 06:06:56'),
(56, 68, 'Building homes for homeless ', 'b553b7d9628b78cffe8037adc61b5ca3.jpg', '<p><strong style=\"color: #222222; font-family: sans-serif; font-size: 14px; background-color: #ffffff;\">Homelessness</strong><span style=\"color: #222222; font-family: sans-serif; font-size: 14px; background-color: #ffffff;\">&nbsp;is defined as living in housing that is below the minimum standard or lacks secure tenure. People can be categorized as homeless if they are: living on the streets (primary homelessness); moving between temporary shelters, including houses of friends, family and emergency accommodation (secondary homelessness); living in private boarding houses without a private bathroom or security of tenure (tertiary homelessness).</span><sup id=\"cite_ref-:3_1-0\" class=\"reference\" style=\"line-height: 1; unicode-bidi: isolate; white-space: nowrap; font-size: 11.2px; color: #222222; font-family: sans-serif; background-color: #ffffff;\"><a style=\"text-decoration-line: none; color: #0b0080; background: none;\" href=\"https://en.wikipedia.org/wiki/Homelessness#cite_note-:3-1\">[1]</a></sup><span style=\"color: #222222; font-family: sans-serif; font-size: 14px; background-color: #ffffff;\">&nbsp;The legal definition of&nbsp;</span><em style=\"color: #222222; font-family: sans-serif; font-size: 14px; background-color: #ffffff;\">homeless</em><span style=\"color: #222222; font-family: sans-serif; font-size: 14px; background-color: #ffffff;\">&nbsp;varies from country to country, or among different jurisdictions in the same country or region.</span><sup id=\"cite_ref-2\" class=\"reference\" style=\"line-height: 1; unicode-bidi: isolate; white-space: nowrap; font-size: 11.2px; color: #222222; font-family: sans-serif; background-color: #ffffff;\"><a style=\"text-decoration-line: none; color: #0b0080; background: none;\" href=\"https://en.wikipedia.org/wiki/Homelessness#cite_note-2\">[2]</a></sup><span style=\"color: #222222; font-family: sans-serif; font-size: 14px; background-color: #ffffff;\">&nbsp;According to the UK homelessness charity Crisis, a home is not just a physical space: it also provides roots, identity, security, a sense of belonging and a place of emotional wellbeing.</span></p>', '', '#society #humanity  ', '2', 5000000, '2020-02-26 07:40:03', 0, NULL, '2020-02-26 06:12:52', '2020-02-26 06:12:52'),
(57, 69, 'Supports for Fatema', '8ed1ef7b3eefbe1fec6dc80c6f22a50f.png', '', '', '', '2', 0, '2020-02-26 07:40:09', 1, '{\":title\":\"Supports for Fatema\'s Family\",\":galary\":\"8ed1ef7b3eefbe1fec6dc80c6f22a50f.png\",\":descrption\":\"<div style=\\\"box-sizing: inherit; font-family: HelveticaNeue, sans-serif; font-size: 16px; background-color: #ffffff;\\\">\\n<p style=\\\"box-sizing: inherit; margin: 0px 0px 1rem; padding: 0px; font-size: 1rem; line-height: 1.375rem;\\\"><span class=\\\"TextRun SCXW71742279 BCX0\\\" style=\\\"box-sizing: inherit;\\\">In a post on social media post, he said he was building a total of eight homes for those in need, and shared&nbsp;<\\/span><span class=\\\"NormalTextRun SCXW71742279 BCX0\\\" style=\\\"box-sizing: inherit; background-color: initial;\\\">photos of the build coming along nicely.<\\/span><\\/p>\\n<\\/div>\\n<div style=\\\"box-sizing: inherit; font-family: HelveticaNeue, sans-serif; font-size: 16px; background-color: #ffffff;\\\">\\n<p style=\\\"box-sizing: inherit; margin: 0px 0px 1rem; padding: 0px; font-size: 1rem; line-height: 1.375rem;\\\"><span class=\\\"NormalTextRun SCXW71742279 BCX0\\\" style=\\\"box-sizing: inherit; background-color: initial;\\\">McGregor wrote:&nbsp;<\\/span><span class=\\\"TextRun SCXW71742279 BCX0\\\" style=\\\"box-sizing: inherit; background-color: initial;\\\">\\\"Back on the site today, it has been a while.<\\/span><\\/p>\\n<\\/div>\\n<div style=\\\"box-sizing: inherit; font-family: HelveticaNeue, sans-serif; font-size: 16px; background-color: #ffffff;\\\">\\n<p style=\\\"box-sizing: inherit; margin: 0px 0px 1rem; padding: 0px; font-size: 1rem; line-height: 1.375rem;\\\"><span class=\\\"TextRun SCXW71742279 BCX0\\\" style=\\\"box-sizing: inherit;\\\">\\\"This is my first property development. We have 8 homes here closing in on finish.<\\/span><\\/p>\\n<div style=\\\"box-sizing: inherit;\\\">\\n<p style=\\\"box-sizing: inherit; margin: 0px 0px 1rem; padding: 0px; font-size: 1rem; line-height: 1.375rem;\\\"><span class=\\\"TextRun SCXW71742279 BCX0\\\" style=\\\"box-sizing: inherit;\\\">In a post on social media post, he said he was building a total of eight homes for those in need, and shared&nbsp;<\\/span><span class=\\\"NormalTextRun SCXW71742279 BCX0\\\" style=\\\"box-sizing: inherit; background-color: initial;\\\">photos of the build coming along nicely.<\\/span><\\/p>\\n<\\/div>\\n<div style=\\\"box-sizing: inherit;\\\">\\n<p style=\\\"box-sizing: inherit; margin: 0px 0px 1rem; padding: 0px; font-size: 1rem; line-height: 1.375rem;\\\"><span class=\\\"NormalTextRun SCXW71742279 BCX0\\\" style=\\\"box-sizing: inherit; background-color: initial;\\\">McGregor wrote:&nbsp;<\\/span><span class=\\\"TextRun SCXW71742279 BCX0\\\" style=\\\"box-sizing: inherit; background-color: initial;\\\">\\\"Back on the site today, it has been a while.<\\/span><\\/p>\\n<\\/div>\\n<p>&nbsp;<\\/p>\\n<div style=\\\"box-sizing: inherit;\\\">\\n<p style=\\\"box-sizing: inherit; margin: 0px 0px 1rem; padding: 0px; font-size: 1rem; line-height: 1.375rem;\\\"><span class=\\\"TextRun SCXW71742279 BCX0\\\" style=\\\"box-sizing: inherit;\\\">\\\"This is my first property development. We have 8 homes here closing in on finish.<\\/span><\\/p>\\n<div style=\\\"box-sizing: inherit;\\\">\\n<p style=\\\"box-sizing: inherit; margin: 0px 0px 1rem; padding: 0px; font-size: 1rem; line-height: 1.375rem;\\\"><span class=\\\"TextRun SCXW71742279 BCX0\\\" style=\\\"box-sizing: inherit;\\\">In a post on social media post, he said he was building a total of eight homes for those in need, and shared&nbsp;<\\/span><span class=\\\"NormalTextRun SCXW71742279 BCX0\\\" style=\\\"box-sizing: inherit; background-color: initial;\\\">photos of the build coming along nicely.<\\/span><\\/p>\\n<\\/div>\\n<div style=\\\"box-sizing: inherit;\\\">\\n<p style=\\\"box-sizing: inherit; margin: 0px 0px 1rem; padding: 0px; font-size: 1rem; line-height: 1.375rem;\\\"><span class=\\\"NormalTextRun SCXW71742279 BCX0\\\" style=\\\"box-sizing: inherit; background-color: initial;\\\">McGregor wrote:&nbsp;<\\/span><span class=\\\"TextRun SCXW71742279 BCX0\\\" style=\\\"box-sizing: inherit; background-color: initial;\\\">\\\"Back on the site today, it has been a while.<\\/span><\\/p>\\n<\\/div>\\n<p>&nbsp;<\\/p>\\n<div style=\\\"box-sizing: inherit;\\\">\\n<p style=\\\"box-sizing: inherit; margin: 0px 0px 1rem; padding: 0px; font-size: 1rem; line-height: 1.375rem;\\\"><span class=\\\"TextRun SCXW71742279 BCX0\\\" style=\\\"box-sizing: inherit;\\\">\\\"This is my first property development. We have 8 homes here closing in on finish.<\\/span><\\/p>\\n<p><span class=\\\"TextRun SCXW71742279 BCX0\\\" style=\\\"box-sizing: inherit;\\\">&nbsp;<\\/span><\\/p>\\n<\\/div>\\n<\\/div>\\n<\\/div>\",\":file\":\"\",\":tags\":\"#society #Family\",\":cost\":\"10000000\",\":duration\":\"2020-02-26\"}', '2020-02-26 06:17:23', '2020-02-26 06:17:23'),
(58, 69, 'building houses for homeless family', '575ebb0dfafa8ff5a503f989c26d9f3f.jpg', '<div style=\"box-sizing: inherit; font-family: HelveticaNeue, sans-serif; font-size: 16px; background-color: #ffffff;\">\n<p style=\"box-sizing: inherit; margin: 0px 0px 1rem; padding: 0px; font-size: 1rem; line-height: 1.375rem;\"><span class=\"TextRun SCXW71742279 BCX0\" style=\"box-sizing: inherit;\">In a post on social media post, he said he was building a total of eight homes for those in need, and shared&nbsp;</span><span class=\"NormalTextRun SCXW71742279 BCX0\" style=\"box-sizing: inherit; background-color: initial;\">photos of the build coming along nicely. </span><span class=\"NormalTextRun SCXW71742279 BCX0\" style=\"font-size: 1rem; background-color: initial; box-sizing: inherit;\">McGregor wrote:&nbsp;</span><span class=\"TextRun SCXW71742279 BCX0\" style=\"font-size: 1rem; background-color: initial; box-sizing: inherit;\">\"Back on the site today, it has been a while.</span></p>\n</div>\n<div style=\"box-sizing: inherit; font-family: HelveticaNeue, sans-serif; font-size: 16px; background-color: #ffffff;\">\n<p style=\"box-sizing: inherit; margin: 0px 0px 1rem; padding: 0px; font-size: 1rem; line-height: 1.375rem;\"><span class=\"TextRun SCXW71742279 BCX0\" style=\"box-sizing: inherit;\">\"This is my first property development. We have 8 homes here closing in on finish.</span></p>\n<div style=\"box-sizing: inherit;\">\n<p style=\"box-sizing: inherit; margin: 0px 0px 1rem; padding: 0px; font-size: 1rem; line-height: 1.375rem;\"><span class=\"TextRun SCXW71742279 BCX0\" style=\"box-sizing: inherit;\">In a post on social media post, he said he was building a total of eight homes for those in need, and shared&nbsp;</span><span class=\"NormalTextRun SCXW71742279 BCX0\" style=\"box-sizing: inherit; background-color: initial;\">photos of the build coming along nicely.</span></p>\n</div>\n<div style=\"box-sizing: inherit;\">\n<p style=\"box-sizing: inherit; margin: 0px 0px 1rem; padding: 0px; font-size: 1rem; line-height: 1.375rem;\"><span class=\"NormalTextRun SCXW71742279 BCX0\" style=\"box-sizing: inherit; background-color: initial;\">McGregor wrote:&nbsp;</span><span class=\"TextRun SCXW71742279 BCX0\" style=\"box-sizing: inherit; background-color: initial;\">\"Back on the site today, it has been a while.</span></p>\n</div>\n<p style=\"box-sizing: inherit; margin: 0px 0px 1rem; padding: 0px; font-size: 1rem; line-height: 1.375rem;\">&nbsp;</p>\n<div style=\"box-sizing: inherit;\">\n<p style=\"box-sizing: inherit; margin: 0px 0px 1rem; padding: 0px; font-size: 1rem; line-height: 1.375rem;\"><span class=\"TextRun SCXW71742279 BCX0\" style=\"box-sizing: inherit;\">\"This is my first property development. We have 8 homes here closing in on finish.</span></p>\n<p><span class=\"TextRun SCXW71742279 BCX0\" style=\"box-sizing: inherit;\">&nbsp;</span></p>\n</div>\n</div>', '', '#society #building #family', '2', 400000, '2020-02-26 07:40:13', 1, '{\":title\":\"building houses for homeless family\",\":galary\":\"575ebb0dfafa8ff5a503f989c26d9f3f.jpg\",\":descrption\":\"<div style=\\\"box-sizing: inherit; font-family: HelveticaNeue, sans-serif; font-size: 16px; background-color: #ffffff;\\\">\\n<p style=\\\"box-sizing: inherit; margin: 0px 0px 1rem; padding: 0px; font-size: 1rem; line-height: 1.375rem;\\\"><span class=\\\"TextRun SCXW71742279 BCX0\\\" style=\\\"box-sizing: inherit;\\\">In a post on social media post, he said he was building a total of eight homes for those in need, and shared&nbsp;<\\/span><span class=\\\"NormalTextRun SCXW71742279 BCX0\\\" style=\\\"box-sizing: inherit; background-color: initial;\\\">photos of the build coming along nicely. <\\/span><span class=\\\"NormalTextRun SCXW71742279 BCX0\\\" style=\\\"font-size: 1rem; background-color: initial; box-sizing: inherit;\\\">McGregor wrote:&nbsp;<\\/span><span class=\\\"TextRun SCXW71742279 BCX0\\\" style=\\\"font-size: 1rem; background-color: initial; box-sizing: inherit;\\\">\\\"Back on the site today, it has been a while.<\\/span><\\/p>\\n<\\/div>\\n<div style=\\\"box-sizing: inherit; font-family: HelveticaNeue, sans-serif; font-size: 16px; background-color: #ffffff;\\\">\\n<p style=\\\"box-sizing: inherit; margin: 0px 0px 1rem; padding: 0px; font-size: 1rem; line-height: 1.375rem;\\\"><span class=\\\"TextRun SCXW71742279 BCX0\\\" style=\\\"box-sizing: inherit;\\\">\\\"This is my first property development. We have 8 homes here closing in on finish.<\\/span><\\/p>\\n<div style=\\\"box-sizing: inherit;\\\">\\n<p style=\\\"box-sizing: inherit; margin: 0px 0px 1rem; padding: 0px; font-size: 1rem; line-height: 1.375rem;\\\"><span class=\\\"TextRun SCXW71742279 BCX0\\\" style=\\\"box-sizing: inherit;\\\">In a post on social media post, he said he was building a total of eight homes for those in need, and shared&nbsp;<\\/span><span class=\\\"NormalTextRun SCXW71742279 BCX0\\\" style=\\\"box-sizing: inherit; background-color: initial;\\\">photos of the build coming along nicely.<\\/span><\\/p>\\n<\\/div>\\n<div style=\\\"box-sizing: inherit;\\\">\\n<p style=\\\"box-sizing: inherit; margin: 0px 0px 1rem; padding: 0px; font-size: 1rem; line-height: 1.375rem;\\\"><span class=\\\"NormalTextRun SCXW71742279 BCX0\\\" style=\\\"box-sizing: inherit; background-color: initial;\\\">McGregor wrote:&nbsp;<\\/span><span class=\\\"TextRun SCXW71742279 BCX0\\\" style=\\\"box-sizing: inherit; background-color: initial;\\\">\\\"Back on the site today, it has been a while.<\\/span><\\/p>\\n<\\/div>\\n<p style=\\\"box-sizing: inherit; margin: 0px 0px 1rem; padding: 0px; font-size: 1rem; line-height: 1.375rem;\\\">&nbsp;<\\/p>\\n<div style=\\\"box-sizing: inherit;\\\">\\n<p style=\\\"box-sizing: inherit; margin: 0px 0px 1rem; padding: 0px; font-size: 1rem; line-height: 1.375rem;\\\"><span class=\\\"TextRun SCXW71742279 BCX0\\\" style=\\\"box-sizing: inherit;\\\">\\\"This is my first property development. We have 8 homes here closing in on finish.<\\/span><\\/p>\\n<p><span class=\\\"TextRun SCXW71742279 BCX0\\\" style=\\\"box-sizing: inherit;\\\">&nbsp;<\\/span><\\/p>\\n<\\/div>\\n<\\/div>\",\":file\":\"\",\":tags\":\"#society #building\",\":cost\":\"400000\",\":duration\":\"2020-02-26\"}', '2020-02-26 06:35:13', '2020-02-26 06:35:13');

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

-- --------------------------------------------------------

--
-- Table structure for table `followers`
--

CREATE TABLE `followers` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `compigan_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
  `effected_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `target_user`, `text`, `status`, `type`, `effected_id`, `created_at`, `updated_at`) VALUES
(27382, 'admin', 'New user is added', 1, 'new user', 68, '2020-02-26 07:43:58', '2020-02-26 07:43:58'),
(27386, 'admin', 'New compaign is added by ibtehal Fahdand need approvment', 0, 'new compain', 0, '2020-02-26 08:15:42', '2020-02-26 08:15:42'),
(27389, 'admin', 'New compaign is added by ibtehal Fahdand need approvment', 0, 'new compain', 47, '2020-02-26 08:28:55', '2020-02-26 08:28:55'),
(27410, 'admin', 'New compaign is added by ibtehal Fahdand need approvment', 0, 'new compain', 48, '2020-02-26 08:52:56', '2020-02-26 08:52:56'),
(27416, 'admin', 'New compaign is added by ibtehal Fahdand need approvment', 0, 'new compain', 49, '2020-02-26 08:57:55', '2020-02-26 08:57:55'),
(27420, 'admin', 'New compaign is added by ibtehal Fahdand need approvment', 0, 'new compain', 50, '2020-02-26 09:02:11', '2020-02-26 09:02:11'),
(27424, 'admin', 'New compaign is added by ibtehal Fahdand need approvment', 0, 'new compain', 51, '2020-02-26 09:04:55', '2020-02-26 09:04:55'),
(27440, 'admin', 'New compaign is added by ibtehal Fahdand need approvment', 1, 'new compain', 52, '2020-02-26 09:12:36', '2020-02-26 09:12:36'),
(27441, 'admin', 'New user is added', 0, 'new user', 69, '2020-02-26 09:15:13', '2020-02-26 09:15:13'),
(27442, '68', 'Admin approve your compaign', 0, 'approve compaign', 45, '2020-02-26 09:24:29', '2020-02-26 09:24:29'),
(27443, '68', 'Admin approve your compaign', 0, 'approve compaign', 45, '2020-02-26 09:24:40', '2020-02-26 09:24:40'),
(27444, '68', 'Admin approve your compaign', 0, 'approve compaign', 47, '2020-02-26 09:25:17', '2020-02-26 09:25:17'),
(27445, '68', 'Admin approve your compaign', 0, 'approve compaign', 48, '2020-02-26 09:25:33', '2020-02-26 09:25:33'),
(27446, '68', 'Admin approve your compaign', 0, 'approve compaign', 49, '2020-02-26 09:25:42', '2020-02-26 09:25:42'),
(27447, 'admin', 'New user is added', 0, 'new user', 68, '2020-02-26 04:36:22', '2020-02-26 04:36:22'),
(27448, 'admin', 'New compaign is added by thuraya abdullahand need approvment', 0, 'new compain', 44, '2020-02-26 05:41:29', '2020-02-26 05:41:29'),
(27449, 'admin', 'New compaign is added by thuraya abdullahand need approvment', 0, 'new compain', 45, '2020-02-26 06:04:10', '2020-02-26 06:04:10'),
(27450, 'admin', 'New compaign is added by thuraya abdullahand need approvment', 0, 'new compain', 46, '2020-02-26 06:06:56', '2020-02-26 06:06:56'),
(27451, 'admin', 'New compaign is added by thuraya abdullahand need approvment', 0, 'new compain', 47, '2020-02-26 06:12:52', '2020-02-26 06:12:52'),
(27452, 'admin', 'New user is added', 0, 'new user', 69, '2020-02-26 06:14:42', '2020-02-26 06:14:42'),
(27453, 'admin', 'New compaign is added by loreen alnoodand need approvment', 0, 'new compain', 48, '2020-02-26 06:17:23', '2020-02-26 06:17:23'),
(27454, 'admin', 'New compaign is added by loreen alnoodand need approvment', 0, 'new compain', 49, '2020-02-26 06:35:13', '2020-02-26 06:35:13'),
(27455, '68', 'Admin approve your compaign', 0, 'approve compaign', 44, '2020-02-26 07:39:44', '2020-02-26 07:39:44'),
(27456, '68', 'Admin approve your compaign', 0, 'approve compaign', 45, '2020-02-26 07:39:52', '2020-02-26 07:39:52'),
(27457, '68', 'Admin approve your compaign', 0, 'approve compaign', 46, '2020-02-26 07:39:57', '2020-02-26 07:39:57'),
(27458, '68', 'Admin approve your compaign', 0, 'approve compaign', 47, '2020-02-26 07:40:03', '2020-02-26 07:40:03'),
(27459, '69', 'Admin approve your compaign', 0, 'approve compaign', 48, '2020-02-26 07:40:09', '2020-02-26 07:40:09'),
(27460, '69', 'Admin approve your compaign', 0, 'approve compaign', 49, '2020-02-26 07:40:13', '2020-02-26 07:40:13'),
(27461, '68', 'Admin approve your compaign', 0, 'approve compaign', 50, '2020-02-26 11:02:36', '2020-02-26 11:02:36'),
(27462, '68', 'Admin approve your compaign', 0, 'approve compaign', 51, '2020-02-26 11:02:43', '2020-02-26 11:02:43');

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
(1, 'aaa', 26),
(2, 'ali', 25),
(3, 'afa', 1),
(4, 'ah', 1),
(5, 'a', 209),
(6, '$item', 3),
(7, 'alia', 2),
(8, 'ADSAFFGSD', 5),
(9, 'al', 102),
(10, 'js', 1),
(11, 'aaa  ', 3),
(12, 'ssa', 3),
(13, 'compaign', 2),
(14, 'ddd', 1);

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
(139, 'First Name', 'ibtehal', 68),
(140, 'Last Name', 'Fahd', 68),
(141, 'Phone', '+967 77777777777', 68),
(142, 'Bio', 'Hello This is me ', 68),
(143, 'First Name', 'Noha', 69),
(144, 'Last Name', 'Wajeah', 69),
(145, 'Phone', '+967 77777777777', 69),
(146, 'Bio', 'I am nona %2Cand i am admin ', 69),
(147, 'First Name', 'thuraya', 70),
(148, 'Last Name', 'abdullah', 70),
(149, 'Phone', '+967 778899556', 70),
(150, 'Bio', 'hello its me               ', 70),
(151, 'First Name', 'loreen', 71),
(152, 'Last Name', 'alnood', 71),
(153, 'Phone', '+967 779988779', 71),
(154, 'Bio', '', 71),
(155, 'image', 'ef910f4b36033580e217a6c35a1324d2.png', 71);

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
(68, 'ibtehal@gmail.com', 'ab23302011e4974ab3acd57c81f530d9', 1, 'User', '2020-02-26 07:43:58'),
(69, 'Nona@gamil.com', 'ab23302011e4974ab3acd57c81f530d9', 1, 'Admin', '2020-02-26 09:15:12'),
(70, 'thurayaalnood@gmail.com', 'ab23302011e4974ab3acd57c81f530d9', 1, 'User', '2020-02-26 04:36:22'),
(71, 'loreen@gmail.com', 'ab23302011e4974ab3acd57c81f530d9', 1, 'User', '2020-02-26 06:14:42');

-- --------------------------------------------------------

--
-- Table structure for table `visits`
--

CREATE TABLE `visits` (
  `id` int(11) NOT NULL,
  `page` varchar(32) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `compaign_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `visits`
--

INSERT INTO `visits` (`id`, `page`, `user_id`, `compaign_id`, `created_at`) VALUES
(1978, 'home\\singUp', NULL, NULL, '2020-02-26 07:22:03'),
(1979, 'home\\editeProfile', 68, NULL, '2020-02-26 07:44:00'),
(1980, 'home\\profile', 68, NULL, '2020-02-26 07:44:41'),
(1981, 'home\\addcompaign', 68, NULL, '2020-02-26 07:45:02'),
(1982, 'home\\addcompaign', 68, NULL, '2020-02-26 07:50:16'),
(1983, 'home\\addcompaign', 68, NULL, '2020-02-26 07:50:17'),
(1984, 'home\\addcompaign', 68, NULL, '2020-02-26 07:50:17'),
(1985, 'home\\addcompaign', 68, NULL, '2020-02-26 07:52:03'),
(1986, 'home\\addcompaign', 68, NULL, '2020-02-26 07:53:08'),
(1987, 'home\\addcompaign', 68, NULL, '2020-02-26 07:54:29'),
(1988, 'home\\addcompaign', 68, NULL, '2020-02-26 07:54:58'),
(1989, 'home\\addcompaign', 68, NULL, '2020-02-26 07:56:35'),
(1990, 'home\\addcompaign', 68, NULL, '2020-02-26 08:01:38'),
(1991, 'home\\addcompaign', 68, NULL, '2020-02-26 08:05:01'),
(1992, 'home\\addcompaign', 68, NULL, '2020-02-26 08:06:09'),
(1993, 'home\\detailsCompagin', 68, 44, '2020-02-26 08:08:23'),
(1994, 'home\\detailsCompagin', 68, 44, '2020-02-26 08:12:47'),
(1995, 'home\\detailsCompagin', 68, 44, '2020-02-26 08:12:58'),
(1996, 'home\\addcompaign', 68, NULL, '2020-02-26 08:14:49'),
(1997, 'home\\detailsCompagin', 68, 45, '2020-02-26 08:15:43'),
(1998, 'home\\addcompaign', 68, NULL, '2020-02-26 08:19:08'),
(1999, 'home\\addcompaign', 68, NULL, '2020-02-26 08:20:36'),
(2000, 'home\\addcompaign', 68, NULL, '2020-02-26 08:21:53'),
(2001, 'home\\detailsCompagin', 68, 47, '2020-02-26 08:28:56'),
(2002, 'home\\detailsCompagin', 68, 47, '2020-02-26 08:35:01'),
(2003, 'home\\detailsCompagin', 68, 47, '2020-02-26 08:35:07'),
(2004, 'home\\detailsCompagin', 68, 47, '2020-02-26 08:35:07'),
(2005, 'home\\detailsCompagin', 68, 47, '2020-02-26 08:35:38'),
(2006, 'home\\detailsCompagin', 68, 47, '2020-02-26 08:38:31'),
(2007, 'home\\detailsCompagin', 68, 47, '2020-02-26 08:39:30'),
(2008, 'home\\detailsCompagin', 68, 47, '2020-02-26 08:39:51'),
(2009, 'home\\detailsCompagin', 68, 47, '2020-02-26 08:40:35'),
(2010, 'home\\detailsCompagin', 68, 47, '2020-02-26 08:42:32'),
(2011, 'home\\detailsCompagin', 68, 47, '2020-02-26 08:45:30'),
(2012, 'home\\detailsCompagin', 68, 47, '2020-02-26 08:46:09'),
(2013, 'home\\detailsCompagin', 68, 47, '2020-02-26 08:46:09'),
(2014, 'home\\detailsCompagin', 68, 47, '2020-02-26 08:47:05'),
(2015, 'home\\detailsCompagin', 68, 47, '2020-02-26 08:49:23'),
(2016, 'home\\addcompaign', 68, NULL, '2020-02-26 08:49:34'),
(2017, 'home\\detailsCompagin', 68, 48, '2020-02-26 08:52:56'),
(2018, 'home\\addcompaign', 68, NULL, '2020-02-26 08:53:25'),
(2019, 'home\\addcompaign', 68, NULL, '2020-02-26 08:55:15'),
(2020, 'home\\addcompaign', 68, NULL, '2020-02-26 08:56:38'),
(2021, 'home\\detailsCompagin', 68, 49, '2020-02-26 08:57:55'),
(2022, 'home\\addcompaign', 68, NULL, '2020-02-26 09:00:29'),
(2023, 'home\\detailsCompagin', 68, 50, '2020-02-26 09:02:12'),
(2024, 'home\\addcompaign', 68, NULL, '2020-02-26 09:04:01'),
(2025, 'home\\detailsCompagin', 68, 51, '2020-02-26 09:04:55'),
(2026, 'home\\index', 68, NULL, '2020-02-26 09:05:03'),
(2027, 'home\\index', 68, NULL, '2020-02-26 09:06:52'),
(2028, 'home\\index', 68, NULL, '2020-02-26 09:07:39'),
(2029, 'home\\allcompagin', 68, NULL, '2020-02-26 09:08:04'),
(2030, 'home\\index', 68, NULL, '2020-02-26 09:08:28'),
(2031, 'home\\index', 68, NULL, '2020-02-26 09:09:51'),
(2032, 'home\\addcompaign', 68, NULL, '2020-02-26 09:10:38'),
(2033, 'home\\detailsCompagin', 68, 52, '2020-02-26 09:12:36'),
(2034, 'home\\index', 68, NULL, '2020-02-26 09:12:46'),
(2035, 'home\\index', NULL, NULL, '2020-02-26 09:13:28'),
(2036, 'home\\login', NULL, NULL, '2020-02-26 09:13:35'),
(2037, 'home\\singUp', NULL, NULL, '2020-02-26 09:13:42'),
(2038, 'home\\editeProfile', 69, NULL, '2020-02-26 09:15:13'),
(2039, 'home\\profile', 69, NULL, '2020-02-26 09:15:41'),
(2040, 'home\\index', NULL, NULL, '2020-02-26 09:16:22'),
(2041, 'home\\login', NULL, NULL, '2020-02-26 09:16:29'),
(2042, 'home\\login', NULL, NULL, '2020-02-26 09:16:41'),
(2043, 'home\\login', NULL, NULL, '2020-02-26 09:17:25'),
(2044, 'cp\\index', 69, NULL, '2020-02-26 09:17:41'),
(2045, 'home\\index', 69, NULL, '2020-02-26 09:18:51'),
(2046, 'cp\\index', 69, NULL, '2020-02-26 09:19:08'),
(2047, 'cp\\pindingCompaigns', 69, NULL, '2020-02-26 09:19:57'),
(2048, 'cp\\pindingCompaigns', 69, NULL, '2020-02-26 09:22:33'),
(2049, 'cp\\pindingCompaigns', 69, NULL, '2020-02-26 09:25:09'),
(2050, 'home\\index', NULL, NULL, '2020-02-26 09:25:56'),
(2051, 'home\\login', NULL, NULL, '2020-02-26 09:26:08'),
(2052, 'home\\index', 68, NULL, '2020-02-26 09:26:23'),
(2053, 'home\\index', 68, NULL, '2020-02-26 09:29:38'),
(2054, 'home\\index', 68, NULL, '2020-02-26 09:29:50'),
(2055, 'home\\index', 68, NULL, '2020-02-26 09:32:01'),
(2056, 'home\\index', 68, NULL, '2020-02-26 09:33:03'),
(2057, 'home\\notification', 68, NULL, '2020-02-26 09:33:11'),
(2058, 'home\\index', NULL, NULL, '2020-02-26 09:33:41'),
(2059, 'home\\login', NULL, NULL, '2020-02-26 09:33:52'),
(2060, 'home\\login', NULL, NULL, '2020-02-26 09:34:10'),
(2061, 'home\\login', NULL, NULL, '2020-02-26 09:34:46'),
(2062, 'cp\\index', 69, NULL, '2020-02-26 09:35:06'),
(2063, 'cp\\index', 69, NULL, '2020-02-26 09:36:06'),
(2064, 'cp\\index', 69, NULL, '2020-02-26 09:36:43'),
(2065, 'cp\\index', 69, NULL, '2020-02-26 09:36:47'),
(2066, 'cp\\index', 69, NULL, '2020-02-26 09:40:36'),
(2067, 'cp\\index', 69, NULL, '2020-02-26 09:41:39'),
(2068, 'cp\\index', 69, NULL, '2020-02-26 09:41:54'),
(2069, 'cp\\index', 69, NULL, '2020-02-26 09:45:20'),
(2070, 'home\\index', NULL, NULL, '2020-02-26 09:48:38'),
(2071, 'home\\login', NULL, NULL, '2020-02-26 09:49:40'),
(2072, 'cp\\index', 69, NULL, '2020-02-26 09:50:16'),
(2073, 'cp\\index', 69, NULL, '2020-02-26 10:00:03'),
(2074, 'cp\\index', 69, NULL, '2020-02-26 10:00:30'),
(2075, 'cp\\index', 69, NULL, '2020-02-26 10:00:37'),
(2076, 'cp\\index', 69, NULL, '2020-02-26 10:01:24'),
(2077, 'cp\\pindingCompaigns', 69, NULL, '2020-02-26 10:01:37'),
(2078, 'cp\\pindingCompaigns', 69, NULL, '2020-02-26 10:02:02'),
(2079, 'cp\\pindingCompaigns', 69, NULL, '2020-02-26 10:02:17'),
(2080, 'cp\\pindingCompaigns', 69, NULL, '2020-02-26 10:02:36'),
(2081, 'cp\\pindingCompaigns', 69, NULL, '2020-02-26 10:03:32'),
(2082, 'home\\notification', 69, NULL, '2020-02-26 10:03:55'),
(2083, 'cp\\pindingCompaigns', 69, NULL, '2020-02-26 10:04:09'),
(2084, 'home\\notification', 69, NULL, '2020-02-26 10:05:13'),
(2085, 'home\\notification', 69, NULL, '2020-02-26 10:07:54'),
(2086, 'home\\notification', 69, NULL, '2020-02-26 10:08:33'),
(2087, 'home\\detailsCompagin', 69, 52, '2020-02-26 10:12:00'),
(2088, 'home\\notification', 69, NULL, '2020-02-26 10:12:16'),
(2089, 'home\\notification', 69, NULL, '2020-02-26 10:12:21'),
(2090, 'home\\notification', 69, NULL, '2020-02-26 10:12:40'),
(2091, 'home\\notification', 69, NULL, '2020-02-26 10:13:03'),
(2092, 'home\\notification', 69, NULL, '2020-02-26 10:13:31'),
(2093, 'home\\notification', 69, NULL, '2020-02-26 10:15:40'),
(2094, 'home\\notification', 69, NULL, '2020-02-26 10:16:18'),
(2095, 'home\\notification', 69, NULL, '2020-02-26 10:16:31'),
(2096, 'home\\notification', 69, NULL, '2020-02-26 10:18:34'),
(2097, 'home\\notification', 69, NULL, '2020-02-26 10:20:42'),
(2098, 'home\\notification', 69, NULL, '2020-02-26 10:21:20'),
(2099, 'home\\notification', 69, NULL, '2020-02-26 10:22:25'),
(2100, 'home\\notification', 69, NULL, '2020-02-26 10:22:26'),
(2101, 'home\\notification', 69, NULL, '2020-02-26 10:23:05'),
(2102, 'home\\notification', 69, NULL, '2020-02-26 10:25:04'),
(2103, 'home\\notification', 69, NULL, '2020-02-26 10:25:19'),
(2104, 'home\\notification', 69, NULL, '2020-02-26 10:25:39'),
(2105, 'cp\\notification', 69, NULL, '2020-02-26 10:26:13'),
(2106, 'home\\index', 69, NULL, '2020-02-26 10:26:37'),
(2107, 'cp\\notification', 69, NULL, '2020-02-26 10:27:45'),
(2108, 'cp\\index', 69, NULL, '2020-02-26 10:29:37'),
(2109, 'cp\\pindingCompaigns', 69, NULL, '2020-02-26 10:29:51'),
(2110, 'cp\\activeUsers', 69, NULL, '2020-02-26 10:30:32'),
(2111, 'home\\notification', 69, NULL, '2020-02-26 10:32:13'),
(2112, 'cp\\notification', 69, NULL, '2020-02-26 10:32:25'),
(2113, 'cp\\index', 69, NULL, '2020-02-26 10:34:12'),
(2114, 'cp\\pindingCompaigns', 69, NULL, '2020-02-26 10:34:19'),
(2115, 'cp\\activeUsers', 69, NULL, '2020-02-26 10:35:24'),
(2116, 'cp\\activeUsers', 69, NULL, '2020-02-26 10:35:38'),
(2117, 'cp\\notification', 69, NULL, '2020-02-26 10:36:51'),
(2118, 'cp\\pindingCompaigns', 69, NULL, '2020-02-26 10:37:02'),
(2119, 'cp\\pindingCompaigns', 69, NULL, '2020-02-26 10:37:19'),
(2120, 'cp\\pindingCompaigns', 69, NULL, '2020-02-26 10:37:27'),
(2121, 'cp\\notification', 69, NULL, '2020-02-26 10:37:30'),
(2122, 'cp\\pindingCompaigns', 69, NULL, '2020-02-26 10:37:41'),
(2123, 'cp\\notification', 69, NULL, '2020-02-26 10:37:53'),
(2124, 'cp\\notification', 69, NULL, '2020-02-26 10:40:59'),
(2125, 'cp\\notification', 69, NULL, '2020-02-26 10:42:09'),
(2126, 'cp\\notification', 69, NULL, '2020-02-26 10:42:34'),
(2127, 'cp\\notification', 69, NULL, '2020-02-26 10:43:12'),
(2128, 'cp\\notification', 69, NULL, '2020-02-26 10:44:05'),
(2129, 'cp\\notification', 69, NULL, '2020-02-26 10:44:26'),
(2130, 'cp\\notification', 69, NULL, '2020-02-26 10:47:00'),
(2131, 'cp\\notification', 69, NULL, '2020-02-26 10:47:01'),
(2132, 'cp\\notification', 69, NULL, '2020-02-26 10:47:24'),
(2133, 'cp\\notification', 69, NULL, '2020-02-26 10:48:09'),
(2134, 'home\\index', 69, NULL, '2020-02-26 10:48:19'),
(2135, 'cp\\index', 69, NULL, '2020-02-26 10:48:25'),
(2136, 'cp\\notification', 69, NULL, '2020-02-26 10:48:32'),
(2137, 'home\\index', 69, NULL, '2020-02-26 11:00:12'),
(2138, 'home\\allcompagin', 69, NULL, '2020-02-26 11:00:30'),
(2139, 'home\\allcompagin', 69, NULL, '2020-02-26 11:00:56'),
(2140, 'home\\index', 69, NULL, '2020-02-26 11:01:14'),
(2141, 'cp\\index', 69, NULL, '2020-02-26 11:02:15'),
(2142, 'cp\\pindingCompaigns', 69, NULL, '2020-02-26 11:02:21'),
(2143, 'home\\index', 69, NULL, '2020-02-26 11:02:48'),
(2144, 'home\\allcompagin', 69, NULL, '2020-02-26 11:03:09'),
(2145, 'home\\index', 69, NULL, '2020-02-26 11:03:29'),
(2146, 'home\\allcompagin', 69, NULL, '2020-02-26 11:04:18'),
(2147, 'home\\index', 69, NULL, '2020-02-26 11:05:53'),
(2148, 'cp\\index', 69, NULL, '2020-02-26 11:09:16'),
(2149, 'cp\\pindingCompaigns', 69, NULL, '2020-02-26 11:09:24'),
(2150, 'cp\\activeUsers', 69, NULL, '2020-02-26 11:09:30'),
(2151, 'home\\index', 69, NULL, '2020-02-26 11:09:41');

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
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `compigans`
--
ALTER TABLE `compigans`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `donations`
--
ALTER TABLE `donations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `followers`
--
ALTER TABLE `followers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27463;

--
-- AUTO_INCREMENT for table `popular_search`
--
ALTER TABLE `popular_search`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `profiles`
--
ALTER TABLE `profiles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=156;

--
-- AUTO_INCREMENT for table `shares`
--
ALTER TABLE `shares`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT for table `visits`
--
ALTER TABLE `visits`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2152;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `fk_compigans` FOREIGN KEY (`compigan_id`) REFERENCES `compigans` (`id`),
  ADD CONSTRAINT `fk_users` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

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
