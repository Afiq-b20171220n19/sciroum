-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 04, 2018 at 12:28 PM
-- Server version: 5.6.20
-- PHP Version: 5.5.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `room`
--

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE IF NOT EXISTS `course` (
  `coursecode` varchar(6) NOT NULL,
  `course` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`coursecode`, `course`) VALUES
('BCNS', 'COMPUTER NETWORK SECURITY'),
('BCOMP', 'COMPUTING'),
('BCSDA', 'COMPUTING WITH DATA ANALYTICS'),
('BSCM', 'CREATIVE MULTIMEDIA'),
('BSDM', 'DIGITAL MEDIA'),
('BSIC', 'INTERNET COMPUTING');

-- --------------------------------------------------------

--
-- Table structure for table `lecturer`
--

CREATE TABLE IF NOT EXISTS `lecturer` (
  `lectid` varchar(5) NOT NULL,
  `lecturer` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lecturer`
--

INSERT INTO `lecturer` (`lectid`, `lecturer`) VALUES
('AU', 'DR AU THIEN WAN'),
('DS', 'NOOR DEENINA SALLEH'),
('EJ', 'MOHD EFFENDY MOHD JEFFERY'),
('HI', 'HJ IRWAN MASHADI HJ MASHUD'),
('IB', 'DR IBRAHM'),
('IM', 'HAJI IDHAM MASWADI BIN HAJI MASHUD'),
('IV', 'DR IBRAHIM VENKAT'),
('NS', 'DR NOR ZAINAH HJ SIAU'),
('RR', 'HJ RUDY RAMLE');

-- --------------------------------------------------------

--
-- Table structure for table `module`
--

CREATE TABLE IF NOT EXISTS `module` (
  `modcod` varchar(10) NOT NULL DEFAULT '',
  `module` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `module`
--

INSERT INTO `module` (`modcod`, `module`) VALUES
('BA1101', 'Business Statistics'),
('CC2211', 'Creative Technology 1'),
('CC2221', 'Digital Arts and Design'),
('CC2223', 'Introduction to Audio and Video Production 1'),
('CI2109', 'Programming 3'),
('CI2110', 'Database Systems Development'),
('CI2212', 'Human Computer Interface'),
('CN2201', 'Introduction to Networking'),
('CN2202', 'Data and Computer Networking');

-- --------------------------------------------------------

--
-- Table structure for table `room`
--

CREATE TABLE IF NOT EXISTS `room` (
  `roomNo` varchar(10) NOT NULL,
  `capacity` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `room`
--

INSERT INTO `room` (`roomNo`, `capacity`) VALUES
('1F115', 25),
('1F116', 25),
('1F117', 25),
('1F4849', 50),
('1F50', 25),
('1F51', 25),
('1F59', 25),
('1F60', 25),
('1F61', 25),
('Concourse', 100),
('GF36', 25),
('GF37', 25),
('GF38', 25),
('GF47', 25),
('GF48', 25),
('GF49', 25),
('LT1', 100),
('LT2', 100),
('LT3', 100);

-- --------------------------------------------------------

--
-- Table structure for table `roomstatus`
--

CREATE TABLE IF NOT EXISTS `roomstatus` (
`slotID` int(3) NOT NULL,
  `roomNo` varchar(10) NOT NULL,
  `lectid` varchar(3) NOT NULL,
  `modcod` varchar(10) NOT NULL,
  `day` varchar(10) NOT NULL,
  `start` time NOT NULL,
  `end` time NOT NULL,
  `coursecode` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=21 ;

--
-- Dumping data for table `roomstatus`
--

INSERT INTO `roomstatus` (`slotID`, `roomNo`, `lectid`, `modcod`, `day`, `start`, `end`, `coursecode`, `type`) VALUES
(16, '1F51', 'IB', 'BA1101', 'Monday', '08:00:00', '10:00:00', 'BCNS', 'practical'),
(17, '1F50', 'AU', 'CN2202', 'Monday', '13:00:00', '16:00:00', 'BCNS', 'lecture'),
(18, '1F50', 'IV', 'CI2109', 'Saturday', '08:00:00', '10:00:00', 'BCOMP', 'tutorial'),
(19, 'GF48', 'AU', 'CN2202', 'Tuesday', '08:00:00', '10:00:00', 'BCOMP', 'lecture'),
(20, 'Concourse', 'DS', 'BA1101', 'Monday', '10:00:00', '12:00:00', 'BCNS', 'practical');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
`id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `password` varchar(20) NOT NULL,
  `access_level` varchar(6) NOT NULL,
  `status` varchar(8) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=142 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `firstname`, `lastname`, `password`, `access_level`, `status`) VALUES
(108, 'admin', 'admin', 'admin', 'pass', 'admin', 'accepted'),
(137, 'PAU', 'Pau', 'Zan', 'PuZan', 'user', 'pending'),
(138, 'MAJIDAH', 'majidah', 'abdullah', '123', 'user', 'accepted'),
(139, 'GANGNAM', 'gangnam', 'style', '123', 'user', 'accepted'),
(140, 'IHSANYASSIN', 'ihsan ', 'Yassin', '123', 'user', 'accepted'),
(141, 'MUNAP', 'Munap ', 'Pulan', '123', 'user', 'accepted');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `course`
--
ALTER TABLE `course`
 ADD PRIMARY KEY (`coursecode`), ADD UNIQUE KEY `coursecode` (`coursecode`);

--
-- Indexes for table `lecturer`
--
ALTER TABLE `lecturer`
 ADD PRIMARY KEY (`lectid`);

--
-- Indexes for table `module`
--
ALTER TABLE `module`
 ADD PRIMARY KEY (`modcod`);

--
-- Indexes for table `room`
--
ALTER TABLE `room`
 ADD PRIMARY KEY (`roomNo`);

--
-- Indexes for table `roomstatus`
--
ALTER TABLE `roomstatus`
 ADD PRIMARY KEY (`slotID`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `roomstatus`
--
ALTER TABLE `roomstatus`
MODIFY `slotID` int(3) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=142;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
