-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 28, 2019 at 02:36 AM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bichar2`
--

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `commentID` int(11) NOT NULL,
  `comment` varchar(140) NOT NULL,
  `commentOn` int(11) NOT NULL,
  `commentBy` int(11) NOT NULL,
  `CommentAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`commentID`, `comment`, `commentOn`, `commentBy`, `CommentAt`) VALUES
(1, 'test1', 142, 143, '2019-08-19 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `follow`
--

CREATE TABLE `follow` (
  `followID` int(11) NOT NULL,
  `sender` int(11) NOT NULL,
  `receiver` int(11) NOT NULL,
  `followOn` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `follow`
--

INSERT INTO `follow` (`followID`, `sender`, `receiver`, `followOn`) VALUES
(1, 2, 7, '0000-00-00 00:00:00'),
(2, 2, 5, '0000-00-00 00:00:00'),
(3, 2, 3, '0000-00-00 00:00:00'),
(4, 2, 3, '0000-00-00 00:00:00'),
(5, 3, 2, '0000-00-00 00:00:00'),
(6, 3, 4, '0000-00-00 00:00:00'),
(7, 3, 7, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `likes`
--

CREATE TABLE `likes` (
  `likeID` int(11) NOT NULL,
  `likeBy` int(11) NOT NULL,
  `likeOn` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `likes`
--

INSERT INTO `likes` (`likeID`, `likeBy`, `likeOn`) VALUES
(50, 3, 132),
(65, 2, 149);

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `messageID` int(11) NOT NULL,
  `message` text NOT NULL,
  `messageTo` int(11) NOT NULL,
  `messageFrom` int(11) NOT NULL,
  `messageOn` datetime NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`messageID`, `message`, `messageTo`, `messageFrom`, `messageOn`, `status`) VALUES
(1, 'hi', 3, 2, '0000-00-00 00:00:00', 0),
(2, 'k xa', 3, 2, '2019-08-25 04:18:21', 0);

-- --------------------------------------------------------

--
-- Table structure for table `notification`
--

CREATE TABLE `notification` (
  `ID` int(11) NOT NULL,
  `notificationFor` int(11) NOT NULL,
  `notificationForm` int(11) NOT NULL,
  `target` int(11) NOT NULL,
  `type` enum('follow','retweet','like','mention') NOT NULL,
  `time` datetime NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `trends`
--

CREATE TABLE `trends` (
  `trendID` int(11) NOT NULL,
  `hashtag` varchar(140) NOT NULL,
  `createdOn` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `trends`
--

INSERT INTO `trends` (`trendID`, `hashtag`, `createdOn`) VALUES
(1, 'php', '0000-00-00 00:00:00'),
(2, 'tag', '2019-08-08 19:54:56'),
(3, 'marvel', '2019-08-08 19:56:15'),
(8, 'lagrandee', '2019-08-08 20:45:51'),
(20, 'web', '2019-08-24 20:57:28'),
(21, 'bca', '2019-08-25 07:14:00');

-- --------------------------------------------------------

--
-- Table structure for table `tweets`
--

CREATE TABLE `tweets` (
  `tweetID` int(11) NOT NULL,
  `status` varchar(140) NOT NULL,
  `tweetBy` int(11) NOT NULL,
  `retweetID` int(11) NOT NULL,
  `retweetBy` int(11) NOT NULL,
  `tweetImage` varchar(255) NOT NULL,
  `likesCount` int(11) NOT NULL,
  `retweetCount` int(11) NOT NULL,
  `postedOn` datetime NOT NULL,
  `retweetMsg` varchar(140) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tweets`
--

INSERT INTO `tweets` (`tweetID`, `status`, `tweetBy`, `retweetID`, `retweetBy`, `tweetImage`, `likesCount`, `retweetCount`, `postedOn`, `retweetMsg`) VALUES
(49, 'https://www.google.com', 2, 0, 0, '', 1, 1, '2019-08-07 15:07:18', ''),
(130, 'abc', 3, 0, 0, '', 0, 0, '2019-08-20 19:53:05', ''),
(131, 'https://www.google.com', 2, 49, 3, '', 1, 1, '2019-08-21 15:26:14', '123'),
(132, '#tag hello', 3, 0, 0, '', 1, 2, '2019-08-22 05:30:08', ''),
(133, '#tag hello', 3, 132, 3, '', 1, 1, '2019-08-22 09:15:34', 'demo'),
(135, 'Zindagi Rocks', 3, 0, 0, '', 0, 1, '2019-08-24 03:34:28', ''),
(143, 'ssss', 3, 142, 3, 'users/viber image.jpg', 0, 1, '2019-08-24 10:10:20', 'sss'),
(144, 'ssss', 3, 0, 0, 'users/viber image.jpg', 0, 0, '2019-08-24 06:25:27', ''),
(145, 'ssss', 3, 0, 0, 'users/viber image.jpg', 0, 0, '2019-08-24 06:32:30', ''),
(146, '@kebal k xa', 3, 0, 0, '', 0, 0, '2019-08-24 17:11:42', ''),
(147, '#web Web Technology', 3, 0, 0, '', 0, 0, '2019-08-24 17:12:28', ''),
(149, 'Welcome back #php', 2, 0, 0, '', 1, 1, '2019-08-25 04:04:12', ''),
(150, 'Welcome back #php', 2, 149, 2, '', 1, 1, '2019-08-25 04:04:12', 'sss');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `username` varchar(40) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(32) NOT NULL,
  `screenName` varchar(40) NOT NULL,
  `profileImage` varchar(255) NOT NULL,
  `profileCover` varchar(255) NOT NULL,
  `following` int(11) NOT NULL,
  `followers` int(11) NOT NULL,
  `bio` varchar(40) NOT NULL,
  `country` varchar(255) NOT NULL,
  `website` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `email`, `password`, `screenName`, `profileImage`, `profileCover`, `following`, `followers`, `bio`, `country`, `website`) VALUES
(2, 'kebal', 'kebalbhandari@outlook.com', '55eee474cb73cb626a0da2bdf8163473', 'kebal', 'users/background111.jpg', 'users/background.jpg', 4, 1, 'i love php', '', ''),
(3, 'saurav', 'saurav07@gmail.com', '8cf674180ea201eb14b12486eaef9f28', 'Saurav', 'users/viber image.jpg', 'users/capt.jpg', 3, 2, '', '', ''),
(4, 'samir', 'samirthapa@gmail.com', 'd524813536b71639999ba12bdb3621a8', 'Samir Thapa', 'users/viber image.jpg', 'users/Screenshot (2).png', 0, 1, '', '', ''),
(5, 'madan', 'madanbhandari@gmail.com', '0b2cddb043c7a9273088ea16e24e0400', 'Madan Bhandari', 'assets/images/defaultProfileImage.png', 'assets/images/defaultCoverImage.png', 0, 1, '', '', ''),
(6, 'Ram', 'ram@gmail.com', '6a557ed1005dddd940595b8fc6ed47b2', 'Ram', 'users/stonedpenguins.JPG', 'users/mapnepal1.JPG', 0, 0, 'i love php', 'nepal', 'ram.com'),
(7, 'Suruchee', 'suruchi@gmail.com', 'b1758d8657f2b3eed3dd6bd44cad2f64', 'Suruchi Baral', 'assets/images/defaultProfileImage.png', 'assets/images/defaultCoverImage.png', 0, 2, '', '', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`commentID`);

--
-- Indexes for table `follow`
--
ALTER TABLE `follow`
  ADD PRIMARY KEY (`followID`);

--
-- Indexes for table `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`likeID`),
  ADD UNIQUE KEY `likeBy` (`likeBy`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`messageID`);

--
-- Indexes for table `notification`
--
ALTER TABLE `notification`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `trends`
--
ALTER TABLE `trends`
  ADD PRIMARY KEY (`trendID`),
  ADD UNIQUE KEY `hashtag` (`hashtag`);

--
-- Indexes for table `tweets`
--
ALTER TABLE `tweets`
  ADD PRIMARY KEY (`tweetID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `commentID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `follow`
--
ALTER TABLE `follow`
  MODIFY `followID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `likes`
--
ALTER TABLE `likes`
  MODIFY `likeID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `messageID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `notification`
--
ALTER TABLE `notification`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `trends`
--
ALTER TABLE `trends`
  MODIFY `trendID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `tweets`
--
ALTER TABLE `tweets`
  MODIFY `tweetID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=151;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
