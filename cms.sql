-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 17, 2020 at 09:14 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cms`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `cat_id` int(3) NOT NULL,
  `cat_title` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_title`) VALUES
(1, 'Bootstrap'),
(10, 'HTML 5'),
(11, 'PHP');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `comment_id` int(3) NOT NULL,
  `comment_post_id` int(3) NOT NULL,
  `comment_author` varchar(255) NOT NULL,
  `comment_email` varchar(255) NOT NULL,
  `comment_content` text NOT NULL,
  `comment_status` varchar(255) NOT NULL,
  `comment_date` date NOT NULL,
  `comment_image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`comment_id`, `comment_post_id`, `comment_author`, `comment_email`, `comment_content`, `comment_status`, `comment_date`, `comment_image`) VALUES
(54, 207, 'Drilon', 'Drilon@demi.com', 'kapak', 'approved', '2020-06-17', '91924770_2847861611988153_9144581325666123776_n.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `post_id` int(3) NOT NULL,
  `post_category_id` int(3) NOT NULL,
  `post_title` varchar(255) NOT NULL,
  `post_author` varchar(255) NOT NULL,
  `post_user` varchar(255) NOT NULL,
  `post_date` date NOT NULL,
  `post_image` text NOT NULL,
  `post_content` text NOT NULL,
  `post_tags` varchar(255) NOT NULL,
  `post_comment_count` int(111) NOT NULL,
  `post_status` varchar(255) NOT NULL DEFAULT 'draft',
  `post_views_count` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`post_id`, `post_category_id`, `post_title`, `post_author`, `post_user`, `post_date`, `post_image`, `post_content`, `post_tags`, `post_comment_count`, `post_status`, `post_views_count`) VALUES
(207, 11, 'PHP course', '', 'drilon.demi', '2020-06-16', 'image_1.jpg', '<p>The best php course ever</p>', 'PHP, CMS', 0, 'published', 11),
(208, 1, 'BOOTSTRAP course', '', 'rico', '2020-06-16', 'image_3.jpg', '<p>Best bootstrap course ever</p>', 'Bootstrap, course', 0, 'published', 0),
(209, 10, 'Html course', '', 'xmen', '2020-06-16', 'image_2.jpg', '<p>best html course ever</p>', 'html, edwin, course', 0, 'published', 0),
(210, 10, 'Html course', '', 'xmen', '2020-06-16', 'image_2.jpg', '<p>best html course ever</p>', 'html, edwin, course', 0, 'published', 0),
(211, 1, 'BOOTSTRAP course', '', 'rico', '2020-06-16', 'image_3.jpg', '<p>Best bootstrap course ever</p>', 'Bootstrap, course', 0, 'published', 1),
(212, 11, 'PHP course', '', 'rico', '2020-06-16', 'image_1.jpg', '<p>The best php course ever</p>', 'PHP, CMS', 0, 'published', 0),
(216, 11, 'PHP course', '', 'rico', '2020-06-16', 'image_1.jpg', '<p>The best php course ever</p>', 'PHP, CMS', 0, 'draft', 0),
(217, 1, 'BOOTSTRAP course', '', 'rico', '2020-06-16', 'image_3.jpg', '<p>Best bootstrap course ever</p>', 'Bootstrap, course', 0, 'published', 0),
(218, 10, 'Html course', '', 'xmen', '2020-06-16', 'image_2.jpg', '<p>best html course ever</p>', 'html, edwin, course', 0, 'draft', 0),
(219, 10, 'Html course', '', 'xmen', '2020-06-16', 'image_2.jpg', '<p>best html course ever</p>', 'html, edwin, course', 0, 'published', 0),
(220, 1, 'BOOTSTRAP course', '', 'rico', '2020-06-16', 'image_3.jpg', '<p>Best bootstrap course ever</p>', 'Bootstrap, course', 0, 'published', 0),
(221, 11, 'PHP course', '', 'drilon.demi', '2020-06-16', 'image_1.jpg', '<p>The best php course ever</p>', 'PHP, CMS', 0, 'published', 0),
(222, 11, 'PHP course', '', 'drilon.demi', '2020-06-16', 'image_1.jpg', '<p>The best php course ever</p>', 'PHP, CMS', 0, 'published', 0),
(223, 1, 'BOOTSTRAP course', '', 'rico', '2020-06-16', 'image_3.jpg', '<p>Best bootstrap course ever</p>', 'Bootstrap, course', 0, 'published', 0),
(224, 10, 'Html course', '', 'xmen', '2020-06-16', 'image_2.jpg', '<p>best html course ever</p>', 'html, edwin, course', 0, 'published', 2),
(225, 10, 'Html course', '', 'xmen', '2020-06-16', 'image_2.jpg', '<p>best html course ever</p>', 'html, edwin, course', 0, 'published', 8);

-- --------------------------------------------------------

--
-- Table structure for table `total_visitors`
--

CREATE TABLE `total_visitors` (
  `session` varchar(255) NOT NULL,
  `time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(3) NOT NULL,
  `username` varchar(255) NOT NULL,
  `user_password` varchar(255) NOT NULL,
  `user_firstname` varchar(255) NOT NULL,
  `user_lastname` varchar(255) NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `user_image` text NOT NULL,
  `user_role` varchar(255) NOT NULL,
  `randSalt` varchar(255) NOT NULL DEFAULT '$2y$10$iusesomecrazystrings22'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `user_password`, `user_firstname`, `user_lastname`, `user_email`, `user_image`, `user_role`, `randSalt`) VALUES
(2, 'rico', '$2y$12$l17Ykb6JcvHQR5W9gSzxi.ak6kPNem13H5iGuAW0RLUhHosr/SjH.', 'rico', 'suaves', 'rico@gmail.com', '', 'admin', ''),
(5, 'drilon.demi', '$1$.ng/Nplo$cp4FalWNvZgTamY6vn6Pq0', 'drilon', 'demi', 'drilondemi2612@gmail.com', '', 'admin', ''),
(6, 'xmen', '12', 'william', 'peterson', 'peterson123@gmail.com', '', 'subscriber', ''),
(7, 'xmen1', '12', 'Roo', 'bo', 'dormito@gmail.com', '', 'subscriber', ''),
(11, 'demo300', '123', 'william', 'peterson', 'demo300@gmail.com', '', 'subscriber', '$2y$10$iusesomecrazystrings22'),
(21, 'demo100', '$1$J5e2y1w3$dGvdY0u7.to2dSJYNh9QO/', 'Demo ', 'dem012', 'asd@gmail.com', '', 'subscriber', '$2y$10$iusesomecrazystrings22');

-- --------------------------------------------------------

--
-- Table structure for table `users_online`
--

CREATE TABLE `users_online` (
  `id` int(11) NOT NULL,
  `session` varchar(255) NOT NULL,
  `time` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users_online`
--

INSERT INTO `users_online` (`id`, `session`, `time`) VALUES
(21, 'j7eu5lrparo05etqpfqa90cnks', 1591220757),
(22, 'br0ggn8cgqecpqige0f7b7q5d3', 1591219547),
(23, 'jsipcne5impnkiconh77c8qek7', 1591219992),
(24, 'jbvsio5l07furaf9q7hkv5obof', 1591285519),
(25, 'oen9edjealb6oljhtlgos2u4t9', 1591371620),
(26, 'hpm3ktn5rf9p5l6f5fq6bc2td6', 1591542176),
(27, '374itajtim6mhi2a7e46e3fp44', 1591973291),
(28, 'hdsvi330mfn2kgl9temf0bb6bf', 1592180899),
(29, 'en9h2ggsillriqnd6gteaq51kl', 1592236656),
(30, '9fkqc04nk2ftp4rs0gv31df84n', 1592264009),
(31, '541ngose95sdal4jsnd8sg6a9o', 1592331458),
(32, 'rgv4sbibk6humv5qme2i6flpcv', 1592419675);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`comment_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`post_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `users_online`
--
ALTER TABLE `users_online`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `comment_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `post_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=229;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `users_online`
--
ALTER TABLE `users_online`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
