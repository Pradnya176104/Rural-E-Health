-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 26, 2022 at 12:15 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ehealth`
--

-- --------------------------------------------------------

--
-- Table structure for table `aarogyvibhagregdata`
--

CREATE TABLE `aarogyvibhagregdata` (
  `uname` varchar(20) NOT NULL,
  `ucontact` varchar(20) NOT NULL,
  `uemail` varchar(20) NOT NULL,
  `upassword` varchar(20) NOT NULL,
  `village` varchar(10) NOT NULL,
  `district` varchar(10) NOT NULL,
  `pincode` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `aarogyvibhagregdata`
--

INSERT INTO `aarogyvibhagregdata` (`uname`, `ucontact`, `uemail`, `upassword`, `village`, `district`, `pincode`) VALUES
('pradnya', '7775005614', 'pradnya@gmail.com', '12345678', 'chalisgaon', 'jalgaon', 424101),
('Nikita', '965796757', 'niki@gmail.com', '12345678', 'Shirpur', 'Dhule', 123456),
('Guresh', '9675567890', 'g@gmail.com', '1234567890', 'Nashik', 'Nashik', 434201),
('Aachal ', '9933226679', 'aachal@gmail.com', '12345678', 'Yaval', 'Jalgaon', 424101);

-- --------------------------------------------------------

--
-- Table structure for table `addcase`
--

CREATE TABLE `addcase` (
  `Id` int(30) NOT NULL,
  `pname` varchar(40) NOT NULL,
  `age` int(30) NOT NULL,
  `pgender` varchar(10) NOT NULL,
  `paddress` varchar(50) NOT NULL,
  `pmobile` varchar(40) NOT NULL,
  `Symptom_1` varchar(60) NOT NULL,
  `Symptom_2` varchar(60) NOT NULL,
  `Symptom_3` varchar(60) NOT NULL,
  `Disease` varchar(20) NOT NULL,
  `Specialistdr` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `addcase`
--

INSERT INTO `addcase` (`Id`, `pname`, `age`, `pgender`, `paddress`, `pmobile`, `Symptom_1`, `Symptom_2`, `Symptom_3`, `Disease`, `Specialistdr`) VALUES
(3, 'pradnya', 22, 'Female', 'nashik', '1234567890', 'Fatigue', 'Lump or area of thickening that can be felt under the skin', 'Weight changes', 'Cancer', 'dr rane'),
(4, 'pradnya', 33, 'Female', 'bdsf', '123345567890', 'Fatigue', 'Lump or area of thickening that can be felt under the skin', 'Weight changes', 'Cancer', 'dr rane');

-- --------------------------------------------------------

--
-- Table structure for table `adminlogin`
--

CREATE TABLE `adminlogin` (
  `uid` int(20) NOT NULL,
  `uname` varchar(40) NOT NULL,
  `ucontact` varchar(40) NOT NULL,
  `uemail` varchar(40) NOT NULL,
  `upassword` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `adminlogin`
--

INSERT INTO `adminlogin` (`uid`, `uname`, `ucontact`, `uemail`, `upassword`) VALUES
(1, 'pradnya', '777505614', 'p@gmail.com', '12345678'),
(2, 'nikita', '9657966757', 'nikita@gmail.com', '123'),
(3, 'diksha', '8329194147', 'd@gmail.com', '12345678');

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE `comment` (
  `id` int(20) NOT NULL,
  `comment` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `commentviewfordoc`
--

CREATE TABLE `commentviewfordoc` (
  `ID` int(20) NOT NULL,
  `pname` varchar(30) NOT NULL,
  `comment` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `commentviewfordoc`
--

INSERT INTO `commentviewfordoc` (`ID`, `pname`, `comment`) VALUES
(1, 'pradnya', 'takecare'),
(2, 'Pradnya', 'Take Sleep. '),
(3, 'pradnya', 'Sleep');

-- --------------------------------------------------------

--
-- Table structure for table `dataset`
--

CREATE TABLE `dataset` (
  `Disease` varchar(40) NOT NULL,
  `Symptom_1` varchar(40) NOT NULL,
  `Symptom_2` varchar(40) NOT NULL,
  `Symptom_3` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dataset`
--

INSERT INTO `dataset` (`Disease`, `Symptom_1`, `Symptom_2`, `Symptom_3`) VALUES
('Cancer', 'Fatigue', 'Lump or area of thinking that can be fel', 'Weight changes'),
('Immune System Disorders', 'achy muscles', 'Fatigue', 'swelling and redness'),
('Flue', 'Fever', 'runny or stuffy nose', 'cough'),
('Heart Disease', 'Chest Pain', 'Shortness of breadth', 'Pain in the neck.jaw,throat'),
('Skin Disease', 'raised bumps that are red or white', 'Painful Rash', 'peeling skin');

-- --------------------------------------------------------

--
-- Table structure for table `prescription`
--

CREATE TABLE `prescription` (
  `id` int(11) NOT NULL,
  `image` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `prescription`
--

INSERT INTO `prescription` (`id`, `image`) VALUES
(1, 0x62616e6b696e6720322e6a7067);

-- --------------------------------------------------------

--
-- Table structure for table `specialdocregdata`
--

CREATE TABLE `specialdocregdata` (
  `Id` int(20) NOT NULL,
  `dname` varchar(20) NOT NULL,
  `dmobile` varchar(20) NOT NULL,
  `dcity` varchar(10) NOT NULL,
  `dspecialization` varchar(30) NOT NULL,
  `Disease` varchar(50) NOT NULL,
  `demail` varchar(40) NOT NULL,
  `dpassword` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `specialdocregdata`
--

INSERT INTO `specialdocregdata` (`Id`, `dname`, `dmobile`, `dcity`, `dspecialization`, `Disease`, `demail`, `dpassword`) VALUES
(1, 'dr rane', '9657966757', 'nashik', 'Internists', 'cancer', 'rane@gmail.com', '12345678'),
(2, 'Dr. Mali', '8877886677', 'mumbai', 'Allergists', 'Immune system disorders', 'mali@gmail.com', '12345678'),
(3, 'Dr.nilima', '9090767879', 'pune', 'Family Physicians', 'Flue', 'nilu@gmail.com', '12345678'),
(4, 'dr.Manasi', '9657966757', 'Thane', 'Cardiologists', 'Heart Disease', 'Manasi@gmail.com', '12345678'),
(5, 'Dr.Solanki', '9260332456', 'pune', 'Dermatologists', 'Skin diseases', 'solanki@gmail.com', '12345678'),
(6, 'dr.Mane', '9968467890', 'Nashik', 'Endocrinologists', 'Thyroid', 'mane@gmail.com', '12345678'),
(7, 'Dr.Gauresh', '7776600568', 'Aurangabad', 'Hematologists', 'Blood diseases', 'gauresh@gmail.com', '12345678'),
(8, 'Dr. Gauresh', '8329194147', 'Nashik', 'Cardiologists', 'Heart disease', 'g@gmail.com', '12345678');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addcase`
--
ALTER TABLE `addcase`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `adminlogin`
--
ALTER TABLE `adminlogin`
  ADD PRIMARY KEY (`uid`);

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `commentviewfordoc`
--
ALTER TABLE `commentviewfordoc`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `prescription`
--
ALTER TABLE `prescription`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `specialdocregdata`
--
ALTER TABLE `specialdocregdata`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `addcase`
--
ALTER TABLE `addcase`
  MODIFY `Id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `adminlogin`
--
ALTER TABLE `adminlogin`
  MODIFY `uid` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `comment`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `commentviewfordoc`
--
ALTER TABLE `commentviewfordoc`
  MODIFY `ID` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `prescription`
--
ALTER TABLE `prescription`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `specialdocregdata`
--
ALTER TABLE `specialdocregdata`
  MODIFY `Id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
