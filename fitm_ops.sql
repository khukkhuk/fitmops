-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 12, 2022 at 03:32 PM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fitm_ops`
--

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `department_id` int(3) UNSIGNED ZEROFILL NOT NULL,
  `department_abb` varchar(4) NOT NULL,
  `department_name` varchar(255) NOT NULL,
  `faculty_id` int(2) UNSIGNED ZEROFILL NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`department_id`, `department_abb`, `department_name`, `faculty_id`) VALUES
(001, 'it', 'เทคโนโลยีสารสนเทศ', 01),
(002, 'iti', 'เทคโนโลยีสารสนเทศ(ต่อเนื่อง)', 01),
(003, 'ine', 'วิศวกรรมสารสนเทศและเครือข่าย', 01),
(004, 'im', 'การจัดการอุตสาหกรรม', 02),
(005, 'iem', 'วิศวกรรมอุตสาหการและการจัดการ', 02),
(006, 'imt', 'การจัดการอุตสาหกรรม(ต่อเนื่อง)', 02),
(007, 'ca', 'คอมพิวเตอร์ช่วยออกแบบและบริหารงานก่อสร้าง', 03),
(008, 'cdm', 'คอมพิวเตอร์ช่วยออกแบบและบริหารงานก่อสร้าง(ต่อเนื่อง)', 03),
(009, 'mm', 'เทคโนโลยีเครื่องจักรกลและกระบวนการผลิต', 04),
(010, 'mmt', 'เทคโนโลยีเครื่องจักรกลและกระบวนการผลิต(ต่อเนื่อง)', 04);

-- --------------------------------------------------------

--
-- Table structure for table `faculties`
--

CREATE TABLE `faculties` (
  `faculty_id` int(2) UNSIGNED ZEROFILL NOT NULL,
  `faculty_abb` varchar(4) NOT NULL,
  `faculty_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `faculties`
--

INSERT INTO `faculties` (`faculty_id`, `faculty_abb`, `faculty_name`) VALUES
(01, 'it', 'เทคโนโลยีสารสนเทศ'),
(02, 'im', 'การจัดการอุตสาหกรรม'),
(03, 'cdm', 'การออกแบบและบริหารงานก่อสร้าง'),
(04, 'aei', 'วิศวกรรมเกษตรเพื่ออุตสาหกรรม');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `student_id` varchar(13) NOT NULL,
  `name` varchar(60) NOT NULL,
  `lastname` varchar(60) NOT NULL,
  `email` varchar(60) NOT NULL,
  `password` varchar(255) NOT NULL,
  `tel` varchar(10) NOT NULL,
  `department_abb` varchar(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`student_id`, `name`, `lastname`, `email`, `password`, `tel`, `department_abb`) VALUES
('620602142130', 'วีรกิจ', 'วิงพัฒน์', '6206021421130@fitm.kmutnb.ac.th', 'weerakitid0', '0634461907', 'iti');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`department_id`);

--
-- Indexes for table `faculties`
--
ALTER TABLE `faculties`
  ADD PRIMARY KEY (`faculty_id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`student_id`),
  ADD KEY `department_id` (`department_abb`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `department_id` int(3) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `faculties`
--
ALTER TABLE `faculties`
  MODIFY `faculty_id` int(2) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
