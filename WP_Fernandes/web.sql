-- phpMyAdmin SQL Dump
-- version 4.5.0.2
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 07, 2015 at 07:30 AM
-- Server version: 10.0.17-MariaDB
-- PHP Version: 5.6.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `web`
--

-- --------------------------------------------------------

--
-- Table structure for table `content`
--

CREATE TABLE `content` (
  `name` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `text` varchar(255) NOT NULL,
  `category` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `content`
--

INSERT INTO `content` (`name`, `url`, `text`, `category`) VALUES
('Barack Obama', 'www.twitter.com/BarackObama', 'Get the facts on important issues like climate change—join the OFA Truth Team: http://ofa.bo/g9TB ', 'politics'),
('instagram', 'www.twitter.com/instagram', '“By taking the detail out, it becomes more of a memory, because a lot of our memories are lacking in detail as well.” —@willwhipple', 'blog');

-- --------------------------------------------------------

--
-- Table structure for table `info`
--

CREATE TABLE `info` (
  `name` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `logo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `info`
--

INSERT INTO `info` (`name`, `url`, `description`, `logo`) VALUES
('AC/DC', 'www.twitter.com/acdc', 'Greatest rock band of all time', 'images/acdc.jpeg'),
('Barack Obama', 'www.twitter.com/BarackObama', 'President of the USA', 'http://imgur.com/G1DOzyJ'),
('Britney', 'www.twitter.com/britneyspears', 'crazy', 'http://imgur.com/gallery/4sErRGd'),
('Cass', 'www.twitter.com/@Cassi_ferns', 'Cassandra student', 'http://imgur.com/0cJ5G9F'),
('instagram', 'www.twitter.com/instagram', 'picture and video blog ', 'http://imgur.com/gallery/w8Q22aR'),
('justin timberlake', 'www.twitter.com/jtimberlake', 'singer hip hop', 'http://imgur.com/gallery/7wnh2wS'),
('Kevin Hart', 'www.twitter.com/KevinHart4real', 'Comedian and Actor', 'http://imgur.com/V8Ud0YM'),
('Marshall Mathers', 'www.twitter.com/eminem', 'Rapper and singer', 'http://imgur.com/iYOWOK2'),
('Monster', 'www.twitter.com/Monstervich', 'Sandvich co', 'http://imgur.com/gallery/bSP7fQn'),
('MTV', 'https://twitter.com/MTV', 'The official Twitter account for MTV, USA! Tweets by @Kaitiii | Snapchat/KiK: MTV', 'https://pbs.twimg.com/profile_images/665575201510260736/MW-OrW2z_400x400.png'),
('Rihanna', 'www.twitter.com/rihanna', 'singer and songwriter', 'http://imgur.com/gallery/SOmflEB');

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `name` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `text` varchar(255) NOT NULL,
  `friends` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tweets`
--

CREATE TABLE `tweets` (
  `name` varchar(255) NOT NULL,
  `tweet` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tweets`
--

INSERT INTO `tweets` (`name`, `tweet`) VALUES
('AC/DC', 'Head here to check out fan photos from each show on the North American leg of the #RockOrBustWorldTour: http://rockorbusttour.acdc.com/ '),
('Barack Obama', '"I need you to stay involved. I need you to stay active." —President Obama #OFAFallSummit'),
('Britney', 'So long, Rogelio! #BritneyOnJTV'),
('Cass', '5pm and still in my pyjamas. #summer'),
('instagram', '“If you’re passionate about something — like, truly, truly passionate — don’t stop doing it.” —@jennxpenn'),
('justin timberlake', 'Almost time. #CMAawards '),
('Kevin Hart', 'I just got a real bad craving for some chicken nuggets'),
('Marshall Mathers', 'Im here.. reading through the 90,000 questions now! #DearSlim #Southpaw'),
('Monster', '#crimefest  I''d steal Kootra''s hat'),
('Rihanna', '#FENTYCORP ');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `content`
--
ALTER TABLE `content`
  ADD KEY `name` (`name`);

--
-- Indexes for table `info`
--
ALTER TABLE `info`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD KEY `name` (`name`);

--
-- Indexes for table `tweets`
--
ALTER TABLE `tweets`
  ADD KEY `name` (`name`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `news`
--
ALTER TABLE `news`
  ADD CONSTRAINT `news_ibfk_1` FOREIGN KEY (`name`) REFERENCES `info` (`name`);

--
-- Constraints for table `tweets`
--
ALTER TABLE `tweets`
  ADD CONSTRAINT `tweets_ibfk_1` FOREIGN KEY (`name`) REFERENCES `info` (`name`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
