-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 26, 2020 at 07:13 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.3

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
-- Table structure for table `cms_categories`
--

CREATE TABLE `cms_categories` (
  `cat_id` int(3) NOT NULL,
  `cat_title` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `cms_comments`
--

CREATE TABLE `cms_comments` (
  `comment_id` int(3) NOT NULL,
  `comment_post_id` int(3) NOT NULL,
  `comment_author` varchar(50) NOT NULL,
  `comment_content` text NOT NULL,
  `comment_status` varchar(50) NOT NULL,
  `comment_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `cms_posts`
--

CREATE TABLE `cms_posts` (
  `post_id` int(3) NOT NULL,
  `post_cat_id` int(3) NOT NULL,
  `post_title` varchar(100) NOT NULL,
  `post_author` varchar(50) NOT NULL,
  `post_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `post_image` varchar(50) NOT NULL DEFAULT 'xyz.png',
  `post_content` text NOT NULL,
  `post_tags` varchar(100) NOT NULL,
  `post_status` varchar(100) NOT NULL,
  `post_views_count` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `cms_sessions`
--

CREATE TABLE `cms_sessions` (
  `session_id` int(11) NOT NULL,
  `session` varchar(255) NOT NULL,
  `time` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cms_sessions`
--

INSERT INTO `cms_sessions` (`session_id`, `session`, `time`) VALUES
(4, 'ou098ffhauv6l4g6o5gk4luis2', 1442481813),
(5, '31pps06iohav5p0tc24jj3bh15', 1442430937),
(6, 'i2gidon449fnvapds8j6smimj6', 1442514244),
(7, 'neo04hp0tqgkil4omop2k9hbp7', 1442521381),
(8, 'jg2odiutvq73knv7cd6226u7o0', 1442557870),
(9, '3amfnhkk37b31r38c2lrblhbb0', 1442545641),
(10, 'j8ttg0dl3f0ebh9s5apbd4hd80', 1442566730),
(11, '8mshoktjnb3dk6fp8u7qgvb9m3', 1442622866),
(12, 'bmd3k3ndfjr2vh5355b10bvb72', 1442625385),
(13, '290la5d6mtv2haegtc6ep1vpl4', 1442641506),
(14, 'v1ahsjldpo07f8jmao7mljo9h6', 1442642525),
(15, 'dl7th98b8vmvdb7snikdp74qc1', 1442644575),
(16, '1d3c8m1d7mc03tk92qah547jk5', 1442829018),
(17, '7au4dnllf0qvam71e28qsic7k1', 1442831622),
(18, '6pjud0b11lgjg2hi6ms9jtj3c3', 1442874851),
(19, 'cmcns60apgekf2a1vq2oj8k0k2', 1442875464),
(20, '47gho13l6gbdj2ok0ohhqo5od4', 1442885074),
(21, 'lnvigrhpb2gboen0ifq2v8f132', 1442901186),
(22, 'suf9lmhanikftmro6gaal0dbe0', 1442898402),
(23, 'n1fb34444gvci0kbcn9iue2em6', 1442907112),
(24, 'tg7omqje7c7lj6ukbsiq76mi4c', 1516913634),
(25, 'l4qt4l58rfe7o3aumhfijb6c3j', 1516911563),
(26, 'k4i9dapdi6fs11bipftchinnh6', 1598418756);

-- --------------------------------------------------------

--
-- Table structure for table `cms_users`
--

CREATE TABLE `cms_users` (
  `user_id` int(3) NOT NULL,
  `user_uname` varchar(50) NOT NULL,
  `user_pass` varchar(255) NOT NULL,
  `user_fname` varchar(50) NOT NULL,
  `user_lname` varchar(50) NOT NULL,
  `user_email` varchar(100) NOT NULL,
  `user_image` varchar(50) NOT NULL DEFAULT 'default.png',
  `user_role` varchar(50) NOT NULL DEFAULT 'Subscriber',
  `user_status` varchar(50) NOT NULL DEFAULT 'Active',
  `user_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cms_users`
--

INSERT INTO `cms_users` (`user_id`, `user_uname`, `user_pass`, `user_fname`, `user_lname`, `user_email`, `user_image`, `user_role`, `user_status`, `user_date`) VALUES
(1, 'Securitynoob', '$2y$12$/qyk2Q30VJ7H0Jynh8vZCe8mWumrazUoyXSwfcm.A3clEjOvl/gLu', 'Mehedi', 'Hasan', 'mehedi@security-pedia.com', 'IMG_2491.jpg', 'Administrator', 'Active', '2020-08-24 00:17:44'),
(2, 'Newbie', '$2y$12$AAoH4KMnYTKBmobEN.gmleKxYE1wxGJOVDbzWnEHqM.v4Jd1WHoSq', 'Mehedi', 'Hasan', 'mehedihasan15111@gmail.com', 'IMG_2491.JPG', 'Administrator', 'Active', '2020-08-26 11:09:22');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cms_categories`
--
ALTER TABLE `cms_categories`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `cms_comments`
--
ALTER TABLE `cms_comments`
  ADD PRIMARY KEY (`comment_id`),
  ADD KEY `comment_post_id` (`comment_post_id`);

--
-- Indexes for table `cms_posts`
--
ALTER TABLE `cms_posts`
  ADD PRIMARY KEY (`post_id`),
  ADD KEY `post_cat_id` (`post_cat_id`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `cms_sessions`
--
ALTER TABLE `cms_sessions`
  ADD PRIMARY KEY (`session_id`);

--
-- Indexes for table `cms_users`
--
ALTER TABLE `cms_users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `user_uname` (`user_uname`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cms_categories`
--
ALTER TABLE `cms_categories`
  MODIFY `cat_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT for table `cms_comments`
--
ALTER TABLE `cms_comments`
  MODIFY `comment_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;

--
-- AUTO_INCREMENT for table `cms_posts`
--
ALTER TABLE `cms_posts`
  MODIFY `post_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=112;

--
-- AUTO_INCREMENT for table `cms_sessions`
--
ALTER TABLE `cms_sessions`
  MODIFY `session_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `cms_users`
--
ALTER TABLE `cms_users`
  MODIFY `user_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cms_comments`
--
ALTER TABLE `cms_comments`
  ADD CONSTRAINT `fk_comments_posts` FOREIGN KEY (`comment_post_id`) REFERENCES `cms_posts` (`post_id`);

--
-- Constraints for table `cms_posts`
--
ALTER TABLE `cms_posts`
  ADD CONSTRAINT `fk_posts_cats` FOREIGN KEY (`post_cat_id`) REFERENCES `cms_categories` (`cat_id`),
  ADD CONSTRAINT `fk_posts_users` FOREIGN KEY (`post_author`) REFERENCES `cms_users` (`user_uname`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
