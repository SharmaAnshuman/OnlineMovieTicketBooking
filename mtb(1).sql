-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Dec 30, 2015 at 08:39 PM
-- Server version: 5.5.24-log
-- PHP Version: 5.3.13

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `mtb`
--

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE IF NOT EXISTS `booking` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `show_id` varchar(200) NOT NULL,
  `mname` varchar(200) NOT NULL,
  `total_seats` varchar(200) NOT NULL,
  `payment_method` varchar(200) NOT NULL,
  `amount` varchar(200) NOT NULL,
  `username` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=40 ;

-- --------------------------------------------------------

--
-- Table structure for table `movie`
--

CREATE TABLE IF NOT EXISTS `movie` (
  `mid` int(11) NOT NULL AUTO_INCREMENT,
  `mname` varchar(150) NOT NULL,
  `minfo` varchar(1000) NOT NULL,
  `mstatus` varchar(150) NOT NULL,
  `mcat` varchar(150) NOT NULL,
  `mposter` varchar(500) NOT NULL,
  `other` varchar(200) NOT NULL,
  PRIMARY KEY (`mid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=70 ;

--
-- Dumping data for table `movie`
--

INSERT INTO `movie` (`mid`, `mname`, `minfo`, `mstatus`, `mcat`, `mposter`, `other`) VALUES
(61, 'Dilwalw', 'Released : Dec 18, 2015 Genre : Action, Comedy, Crime Starcast : Shah Rukh Khan, Kajol, Kriti Sanon Desc : The children of two competing families meet again after a 15-year separation. Duration : 2:10', 'Now Showing', 'Bollywood', 'Dilwale 2015 .jpg', 'nthing'),
(62, 'Bajirao Mastani (2015)', 'Released :  Dec 18, 2015\r\nGenre : Drama, History, Romance\r\nStarcast : Priyanka Chopra, Deepika Padukone, Ranveer\r\nDesc :\r\nBajirao 1, who fought over 41 major battles and many others, is reputed never to have lost a battle. Bajirao is described as â??RANMARDâ?? a man of the battlefield. Bajirao said to his brother â??Remember that night has nothing to do with sleep. It was created by God, to raid territory held by your enemy. The night is your shield, your screen against the cannons and swords of vastly superior enemy forces. â?? Bajirao was a heaven born cavalry leader. In the long and distinguished galaxy of Peshwas, Bajirao was unequaled for the daring and originality of his genius and the volume and value of his achievements.\r\nDuration : 2:10', 'Now Showing', 'Bollywood', 'Bajirao Mastani.jpg', 'nthing'),
(63, 'Pyaar Ka Punchnama 2 (2015)', 'Released : Oct 16, 2015\r\nGenre : Comedy, Drama, Romance\r\nStarcast : Sunny Singh Nijjar, Sonalli Sehgal, Ishita Sharma\r\nDesc :\r\nAfter falling in love, three roommates experience changes in their lives.\r\nDuration : 2:16', 'Now Showing', 'Bollywood', '6_WQTr_IP.jpg', 'nthing'),
(64, 'Hate Story 3 (2015)', 'Released :  Dec 4, 2015\r\nGenre : Thriller\r\nStarcast : Sharman Joshi, Zarine Khan, Karan Singh Grover, Daisy Shah\r\nDesc :\r\nHate Story 3 is an 2015 Indian erotic-thriller film directed by Vishal Pandya. Produced by T-Series, it stars Sharman Joshi, Zarine Khan, Daisy Shah, Karan Singh Grover, in lead roles, and Priyanshu Chatterjee in a pivotal role. Written by Vikram Bhatt and Madhuri Banerji, the film is a sequel to Pandyaâ??s 2014 thriller Hate Story 2.\r\nDuration : 2:10', 'Now Showing', 'Bollywood', 'Hate Story 3.jpg', 'nthing'),
(65, 'The Twilight Saga: Breaking Dawn - Part 2 (2012)', 'Released : 2012\r\nGenre : Adventure | Drama | Fantasy\r\nStarcast : Kristen Stewart, Robert Pattinson, Taylor Lautner\r\nDesc :\r\nAfter the birth of Renesmee, the Cullens gather other vampire clans in order to protect the child from a false allegation that puts the family in front of the Volturi.\r\nDuration : 1:55', 'Now Showing', 'Hollywood(Hindi)', 'twilight.jpg', 'nthing'),
(66, 'The Hunger Games (2012)', 'Released : 2012\r\nGenre : Action | Adventure | Sci-Fi\r\nStarcast : Jennifer Lawrence, Josh Hutcherson and Liam Hemsworth\r\nDesc :\r\nSet in a future where the Capitol selects a boy and girl from the twelve districts to fight to the death on live television', 'Now Showing', 'Hollywood(Hindi)', 'hunger_games_ver26.jpg', 'nthing'),
(67, 'Season of the Witch (2011)', '\r\nReleased : Jan 7, 2011\r\nGenre : Action | Adventure | Fantasy\r\nStarcast : Nicolas Cage, Ron Perlman ,Claire Foy\r\nDesc :\r\nA 14th century Crusader returns to a homeland devastated by the Black Plague. A beleaguered church, deeming sorcery the culprit of the plague, commands the two knights to transport an accused witch to a remote abbey, where monks will perform a ritual in hopes of ending the pestilence. A priest, a grieving knight, a disgraced itinerant and a headstrong youth who can only dream of becoming a knight join a mission troubled by mythically hostile wilderness and fierce contention over the fate of the girl. When the embattled party arrives at the abbey, a horrific discovery jeopardises the knightâ??s pledge to ensure the girl fair treatment, and pits them against an inexplicably powerful and destructive force.\r\nDuration : 93 minutes', 'Now Showing', 'Hollywood(Hindi)', 'Season of the Witch new poster.jpg', 'nthing'),
(68, 'Reasonable Doubt (2014)', 'Released : 17 January 2014\r\nGenre : Crime | Thriller\r\nStarcast : Dominic Cooper, Samuel L. Jackson, Erin Karpluk\r\nDesc :\r\nA District Attorney has his life turned upside down when he involved in a hit and run and another man is arrested for his crime and charged with murder\r\nDuration : 1:31', 'Now Showing', 'Bollywood', 'Reasonable Doubt.jpg', 'nthing'),
(69, 'Avengers Age of Ultron (2015)', 'Released : 1 May 2015 Genre : Action, Adventure, Sci-Fi Starcast : Robert Downey Jr. Chris Evans, Mark Ruffalo Desc : When Tony Stark tries to jumpstart a dormant peacekeeping program, things go awry and it is up to the Avengers to stop the villainous Ultron from enacting his terrible plans. Duration : 2:12\r\n', 'Upcoming', 'Hollywood(Hindi)', '97d0808e3bc02145ef183a0c2af617c4.jpg', 'nthing');

-- --------------------------------------------------------

--
-- Table structure for table `seats`
--

CREATE TABLE IF NOT EXISTS `seats` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `m_id` varchar(100) NOT NULL,
  `show_id` varchar(100) NOT NULL,
  `sname` varchar(100) NOT NULL,
  `sstatus` varchar(100) NOT NULL DEFAULT 'unbook',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=151 ;

-- --------------------------------------------------------

--
-- Table structure for table `showtime`
--

CREATE TABLE IF NOT EXISTS `showtime` (
  `sid` int(11) NOT NULL AUTO_INCREMENT,
  `mid` int(11) NOT NULL,
  `st` varchar(50) NOT NULL,
  `et` varchar(50) NOT NULL,
  `sdate` varchar(200) NOT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=45 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
