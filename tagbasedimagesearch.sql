-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Dec 07, 2023 at 06:51 AM
-- Server version: 5.0.27-community-nt
-- PHP Version: 5.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `tagbasedimagesearch`
--
CREATE DATABASE IF NOT EXISTS `tagbasedimagesearch` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `tagbasedimagesearch`;

-- --------------------------------------------------------

--
-- Table structure for table `uploadedimages`
--

CREATE TABLE IF NOT EXISTS `uploadedimages` (
  `ImageId` int(11) NOT NULL,
  `UserId` varchar(40) NOT NULL,
  `ImageName` varchar(40) NOT NULL,
  `Tag1` varchar(60) NOT NULL,
  `Tag2` varchar(60) NOT NULL,
  `Tag3` varchar(60) NOT NULL,
  `Tag4` varchar(60) NOT NULL,
  `TotalViews` int(11) NOT NULL,
  PRIMARY KEY  (`ImageId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `uploadedimages`
--

INSERT INTO `uploadedimages` (`ImageId`, `UserId`, `ImageName`, `Tag1`, `Tag2`, `Tag3`, `Tag4`, `TotalViews`) VALUES
(1, 'amsasi', 'ayyappanimg.jpg', 'Spiritual', 'Temples', 'God', 'Ayyappan', 1),
(2, 'amsasi', 'T9.jpg', 'Temples', 'Thirupathy', 'God', 'Perumal', 2),
(3, 'amsasi', 'ayyappa10.jpg', 'Temples', 'Sabarimalai', 'God', 'Ayyappan', 3),
(4, 'amsasi', 'ayyappa2.jpg', 'Temples', 'Sabarimalai', 'God', 'Ayyappan', 2),
(5, 'rani', '01.jpg', 'Natural', 'Flower', 'Color', 'Rose', 0),
(6, 'rani', 'dahlia.jpg', 'Natural', 'Flower', 'Yellow', 'Dahila', 0),
(7, 'rani', 'rose.jpg', 'Natural', 'Flower', 'Yellow', 'Rose', 0),
(8, 'rani', 'LordKrisha.jpg', 'Spiritual', 'God', 'Krishna', 'Lord', 0);

-- --------------------------------------------------------

--
-- Table structure for table `userregistration`
--

CREATE TABLE IF NOT EXISTS `userregistration` (
  `Userid` varchar(30) NOT NULL,
  `Password` varchar(30) NOT NULL,
  `Name` varchar(30) NOT NULL,
  `Gender` varchar(10) NOT NULL,
  `DOB` date NOT NULL,
  `MailId` varchar(40) NOT NULL,
  `MobileNo` varchar(15) NOT NULL,
  PRIMARY KEY  (`Userid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userregistration`
--

INSERT INTO `userregistration` (`Userid`, `Password`, `Name`, `Gender`, `DOB`, `MailId`, `MobileNo`) VALUES
('amsasi', 'sasirani', 'SasiKumar.A.M', 'Male', '1980-06-22', 'amsasi78@gmail.com', '9842168547'),
('rani', 'sasirani', 'NagaRani.S', 'Female', '1985-03-25', 'ranisasi@gmail.com', '9842168547');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
