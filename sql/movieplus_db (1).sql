-- phpMyAdmin SQL Dump
-- version 4.3.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 03, 2016 at 02:50 PM
-- Server version: 5.6.24
-- PHP Version: 5.6.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `movieplus_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `cinema`
--

CREATE TABLE IF NOT EXISTS `cinema` (
  `cid` int(11) NOT NULL,
  `cname` text NOT NULL,
  `location` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cinema`
--

INSERT INTO `cinema` (`cid`, `cname`, `location`) VALUES
(1, 'Ladkrabang Cinema', 'ลาดกระบัง'),
(2, 'Hua Takhe Cinema', 'หัวตะเข้'),
(3, 'Seansuk Cinema', 'แสนสุข'),
(4, 'Rung Arun Cinema', 'รุ่งอรุณ');

-- --------------------------------------------------------

--
-- Table structure for table `movie`
--

CREATE TABLE IF NOT EXISTS `movie` (
  `mid` int(11) NOT NULL,
  `mname` mediumtext NOT NULL,
  `detail` mediumtext NOT NULL,
  `poster` mediumtext NOT NULL,
  `trailer` text NOT NULL,
  `type` text NOT NULL,
  `mtime` text NOT NULL,
  `director` text NOT NULL,
  `status` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `movie`
--

INSERT INTO `movie` (`mid`, `mname`, `detail`, `poster`, `trailer`, `type`, `mtime`, `director`, `status`) VALUES
(1, 'Inferno โลกันตนรก', 'ศาสตราจารย์โรเบิร์ต แลงดอน นักสัญลักษณ์วิทยาคนดัง (รับบทโดยทอม แฮงค์ส) ต้องตามรอยเงื่อนงำที่เกี่ยวพันกับ "Inferno" ผลงานชิ้นเอกของดันเต้เพื่อหยุดยั้งแผนการฆ่าล่างเผ่าพันธุ์มนุษย์จากวายร้ายสติเฟื่อง ทว่าเขากลับฟื้นขึ้นมาในโรงพยาบาลแห่งหนึ่งในอิตาลีด้วยอาการความจำเสื่อม และถูกตามล่าหมายชีวิต เขาได้ร่วมมือกับเซียนนา บรู๊คส์ (เฟลิซิตี้ โจนส์) คุณหมอที่เขาหวังว่าจะช่วยเขารื้อฟื้นความทรงจำได้สำเร็จ พวกเขาเดินทางไปทั่วยุโรปโดยแข่งกับเวลาเพื่อหยุดยั้งไม่ให้ไวรัสร้ายที่จะคร่าชีวิตประชากรครึ่งโลกถูกปลดปล่อยออกมา', 'https://upload.wikimedia.org/wikipedia/th/thumb/d/de/Inferno_Tom_Hanks_Felicity_Jones_film_poster.jpg/250px-Inferno_Tom_Hanks_Felicity_Jones_film_poster.jpg', 'https://youtu.be/aVBdeeXuXLU', 'ระทึกขวัญ', '121', 'Ron Howard', 'show now');

-- --------------------------------------------------------

--
-- Table structure for table `showtime`
--

CREATE TABLE IF NOT EXISTS `showtime` (
  `shtid` int(11) NOT NULL,
  `mid` int(11) NOT NULL,
  `tid` int(11) NOT NULL,
  `shttime` text NOT NULL,
  `language` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `showtime`
--

INSERT INTO `showtime` (`shtid`, `mid`, `tid`, `shttime`, `language`) VALUES
(1, 1, 1, '', 'TH/TH'),
(2, 1, 2, '', 'TH/TH'),
(3, 1, 3, '', 'TH/TH'),
(4, 1, 4, '', 'TH/TH');

-- --------------------------------------------------------

--
-- Table structure for table `theatre`
--

CREATE TABLE IF NOT EXISTS `theatre` (
  `tid` int(11) NOT NULL,
  `tname` text NOT NULL,
  `cid` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `theatre`
--

INSERT INTO `theatre` (`tid`, `tname`, `cid`) VALUES
(1, 'Theatre 1', 1),
(2, 'Theatre 2', 1),
(3, 'Theatre 3', 1),
(4, 'Theatre 4', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cinema`
--
ALTER TABLE `cinema`
  ADD PRIMARY KEY (`cid`);

--
-- Indexes for table `movie`
--
ALTER TABLE `movie`
  ADD PRIMARY KEY (`mid`);

--
-- Indexes for table `showtime`
--
ALTER TABLE `showtime`
  ADD PRIMARY KEY (`shtid`);

--
-- Indexes for table `theatre`
--
ALTER TABLE `theatre`
  ADD PRIMARY KEY (`tid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cinema`
--
ALTER TABLE `cinema`
  MODIFY `cid` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `movie`
--
ALTER TABLE `movie`
  MODIFY `mid` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `showtime`
--
ALTER TABLE `showtime`
  MODIFY `shtid` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `theatre`
--
ALTER TABLE `theatre`
  MODIFY `tid` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
