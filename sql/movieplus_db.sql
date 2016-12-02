-- phpMyAdmin SQL Dump
-- version 4.3.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 02, 2016 at 10:44 AM
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
-- Table structure for table `movie`
--

CREATE TABLE IF NOT EXISTS `movie` (
  `id` int(11) NOT NULL,
  `name` mediumtext NOT NULL,
  `detail` mediumtext NOT NULL,
  `poster` mediumtext NOT NULL,
  `trailer` text NOT NULL,
  `type` text NOT NULL,
  `time` text NOT NULL,
  `director` text NOT NULL,
  `status` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `movie`
--

INSERT INTO `movie` (`id`, `name`, `detail`, `poster`, `trailer`, `type`, `time`, `director`, `status`) VALUES
(1, 'Inferno โลกันตนรก', 'ศาสตราจารย์โรเบิร์ต แลงดอน นักสัญลักษณ์วิทยาคนดัง (รับบทโดยทอม แฮงค์ส) ต้องตามรอยเงื่อนงำที่เกี่ยวพันกับ \\"Inferno\\" ผลงานชิ้นเอกของดันเต้เพื่อหยุดยั้งแผนการฆ่าล่างเผ่าพันธุ์มนุษย์จากวายร้ายสติเฟื่อง ทว่าเขากลับฟื้นขึ้นมาในโรงพยาบาลแห่งหนึ่งในอิตาลีด้วยอาการความจำเสื่อม และถูกตามล่าหมายชีวิต เขาได้ร่วมมือกับเซียนนา บรู๊คส์ (เฟลิซิตี้ โจนส์) คุณหมอที่เขาหวังว่าจะช่วยเขารื้อฟื้นความทรงจำได้สำเร็จ พวกเขาเดินทางไปทั่วยุโรปโดยแข่งกับเวลาเพื่อหยุดยั้งไม่ให้ไวรัสร้ายที่จะคร่าชีวิตประชากรครึ่งโลกถูกปลดปล่อยออกมา', 'https://upload.wikimedia.org/wikipedia/th/thumb/d/de/Inferno_Tom_Hanks_Felicity_Jones_film_poster.jpg/250px-Inferno_Tom_Hanks_Felicity_Jones_film_poster.jpg', 'https://youtu.be/aVBdeeXuXLU', 'ระทึกขวัญ', '121', 'Ron Howard', 'show now');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `movie`
--
ALTER TABLE `movie`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `movie`
--
ALTER TABLE `movie`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
