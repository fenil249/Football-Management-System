-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 26, 2021 at 02:35 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.3.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `football`
--

-- --------------------------------------------------------

--
-- Table structure for table `assist`
--

CREATE TABLE `assist` (
  `Player_ID` varchar(20) NOT NULL,
  `Coach_ID` varchar(20) NOT NULL,
  `Performance` varchar(20) DEFAULT NULL,
  `Improvement` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `assist`
--

INSERT INTO `assist` (`Player_ID`, `Coach_ID`, `Performance`, `Improvement`) VALUES
('2019P011', '2019C002', 'Poor', 'Focus on Passing bal'),
('2019P012', '2019C002', 'Poor', 'Stick to Gameplan'),
('2019P013', '2019C002', 'Poor', 'Focus on foot moveme'),
('2019P014', '2019C002', 'Good', 'Tactical Improvement'),
('2019P015', '2019C002', 'Good', 'Tactical Improvement'),
('2019P023', '2019C004', 'Good', 'Tactical Improvement'),
('2019P024', '2019C004', 'Poor', 'Focus on striking we'),
('2019P025', '2019C004', 'Good', 'Tactical Improvement'),
('2019P026', '2019C005', 'Better', NULL),
('2019P027', '2019C005', 'Better', NULL),
('2019P028', '2019C005', 'Poor', 'Focus on defenfing'),
('2019P029', '2019C005', 'Good', 'Tactical Improvement'),
('2019P030', '2019C005', 'Poor', 'Focus on foot moveme'),
('2019P031', '2019C005', 'Better', NULL),
('2019P032', '2019C005', 'Poor', 'Focus on foot moveme'),
('2019P033', '2019C005', 'Good', 'Tactical Improvement'),
('2019P034', '2019C005', 'Better', NULL),
('2019P035', '2019C005', 'Poor', 'Focus on foot moveme'),
('2019P036', '2019C005', 'Poor', 'Focus on Passing bal'),
('2019P037', '2019C005', 'Good', 'Tactical Improvement'),
('2019P038', '2019C005', 'Better', NULL),
('2019P039', '2019C006', 'Poor', 'Focus on striking we'),
('2019P040', '2019C006', 'Better', NULL),
('2019P041', '2019C006', 'Good', 'Tactical Improvement'),
('2019P042', '2019C007', 'Poor', 'Focus on defenfing'),
('2019P043', '2019C007', 'Good', 'Tactical Improvement'),
('2019P044', '2019C007', 'Better', NULL),
('2019P045', '2019C007', 'Good', 'Tactical Improvement'),
('2019P046', '2019C007', 'Better', NULL),
('2019P047', '2019C007', 'Poor', 'Stick to Gameplan'),
('2019P048', '2019C007', 'Good', 'Tactical Improvement'),
('2019P049', '2019C007', 'Good', 'Tactical Improvement'),
('2019P050', '2019C007', 'Poor', 'Focus on Passing bal'),
('2019P051', '2019C007', 'Better', NULL),
('2019P052', '2019C007', 'Better', NULL),
('2019P053', '2019C007', 'Poor', 'Focus on attacking'),
('2019P054', '2019C008', 'Poor', 'Focus on Passing bal'),
('2019P055', '2019C008', 'Good', 'Tactical Improvement'),
('2019P056', '2019C009', 'Better', NULL),
('2019P057', '2019C009', 'Better', NULL),
('2019P058', '2019C009', 'Good', 'Tactical Improvement'),
('2019P059', '2019C009', 'Poor', 'Focus on striking we'),
('2019P060', '2019C009', 'Poor', 'Focus on defenfing'),
('2019P061', '2019C009', 'Better', NULL),
('2019P062', '2019C009', 'Good', 'Tactical Improvement'),
('2019P063', '2019C010', 'Poor', 'Stick to Gameplan'),
('2019P064', '2019C010', 'Good', 'Tactical Improvement'),
('2019P065', '2019C010', 'Poor', 'Focus on Passing bal'),
('2019P066', '2019C010', 'Better', NULL),
('2019P067', '2019C010', 'Better', NULL),
('2019P068', '2019C011', 'Good', 'Tactical Improvement'),
('2019P069', '2019C011', 'Good', 'Tactical Improvement'),
('2019P070', '2019C011', 'Good', 'Tactical Improvement'),
('2019P071', '2019C011', 'Better', NULL),
('2019P072', '2019C011', 'Better', NULL),
('2019P073', '2019C011', 'Poor', 'Focus on attacking'),
('2019P074', '2019C011', 'Better', NULL),
('2019P075', '2019C012', 'Better', NULL),
('2019P076', '2019C012', 'Better', NULL),
('2019P077', '2019C013', 'Poor', 'Focus on defenfing'),
('2019P078', '2019C013', 'Poor', 'Stick to Gameplan'),
('2019P079', '2019C013', 'Good', 'Tactical Improvement'),
('2019P080', '2019C014', 'Poor', 'Focus on Passing bal'),
('2019P081', '2019C014', 'Better', NULL),
('2019P082', '2019C015', 'Good', 'Tactical Improvement');

-- --------------------------------------------------------

--
-- Table structure for table `coach`
--

CREATE TABLE `coach` (
  `Coach_ID` varchar(20) NOT NULL,
  `Name` varchar(40) NOT NULL,
  `Age` int(11) DEFAULT NULL,
  `Email_ID` varchar(40) DEFAULT NULL,
  `Contact_No` bigint(20) NOT NULL,
  `Address` varchar(40) DEFAULT NULL,
  `Experience` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `coach`
--

INSERT INTO `coach` (`Coach_ID`, `Name`, `Age`, `Email_ID`, `Contact_No`, `Address`, `Experience`) VALUES
('2019C002', 'Moksh Kachradas Sisodia', 40, 'mokshPsisodia2@gmaiil.com', 9060615635, '8933 Aberg Circle', 62),
('2019C004', 'Hitesh Shaileshkumar Dholakia', 33, 'hiteshRdholakia4@gmail.com', 9056687165, '7184 Maple Pass', 19),
('2019C005', 'Deven Dineshkumar Desai', 30, NULL, 9062154075, '33416 Sundown Junction', 6),
('2019C006', 'Prakhar Devenkumar Patel', 37, 'prakharPpatel6@gmail.com', 9058546763, '77032 Waxwing Place', 26),
('2019C007', 'Mohit Abhilashbhai Bhatt', 32, NULL, 9059125319, '0 American Ash Pass', 35),
('2019C008', 'Abhilash Rajeshbhai Bhaskran', 36, 'abhilashJbhaskran8@gmail.com', 9055488166, '41 Roth Place', 5),
('2019C009', 'Jainik Jalpesh Patel', 39, 'jainikApatel10@gmail.com', 9058178659, '7954 Melvin Alley', 10),
('2019C010', 'Sheel Dipekkumar Patel', 39, NULL, 9053315325, '1 Meadow Ridge Terrace', 14),
('2019C011', 'Vasu Kaupin Panchal', 42, 'vasupanchal91@gmail.com', 9052101061, '068 Myrtle Place', 67),
('2019C012', 'Bhargav Bhavin Parmar', 33, 'bhargavparmar5@gmail.com', 9051623011, '23576 New Castle Place', 25),
('2019C013', 'Deep Mangeshkumar Joshi', 37, 'deepjoshi3@gmail.com', 9062822551, '945 Derek Junction', 30),
('2019C014', 'Meet Umangbhai Arora', 40, 'meetarora9@gmail.com', 9058434851, '24 Orin Avenue', 34),
('2019C015', 'Devdut Ashishkumar padikal', 34, 'devdutpadikal1@gmail.com', 9062185558, '83111 Cody Place', 25);

-- --------------------------------------------------------

--
-- Table structure for table `complaint`
--

CREATE TABLE `complaint` (
  `Complaint_No` int(11) NOT NULL,
  `Complaint_by` varchar(20) NOT NULL,
  `Type` varchar(40) DEFAULT NULL,
  `Detail` varchar(40) DEFAULT NULL,
  `Resolved_by` varchar(20) DEFAULT NULL,
  `Resolved` varchar(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `complaint`
--

INSERT INTO `complaint` (`Complaint_No`, `Complaint_by`, `Type`, `Detail`, `Resolved_by`, `Resolved`) VALUES
(1, '2019P017', 'kit', 'Kit Not Available', '2019SU001', 'Y'),
(2, '2019P041', 'light', 'Low Intensity of Lights in ground 3', '2019SU006', 'N'),
(3, '2019P075', 'ground', 'Ground needs renovation', '2019SU009', 'N'),
(4, '2019P018', 'time', 'Schedule clashes for 2 groups', '2019SU006', 'Y'),
(5, '2019P014', 'coach behaviour', 'Coach very aggressive to players', '2019SU014', 'N'),
(6, '2019P014', 'fees deduction', 'Deduction of fees demanded by players', '2019SU015', 'N'),
(7, '2019P032', 'usabilty of resources', 'Resources are not usable', '2019SU002', 'Y'),
(8, '2019P035', 'time', 'Schedule clashes for 2 groups', '2019SU003', 'Y'),
(9, '2019P046', 'ground', 'Ground needs renovation', '2019SU004', 'Y'),
(10, '2019P041', 'light', 'Low Intensity of Lights in ground 1', '2019SU006', 'N'),
(11, '2019P054', 'coach behaviour', 'Coach very aggressive to players', '2019SU005', 'Y'),
(12, '2019P065', 'fees deduction', 'Deduction of fees demanded by players', '2019SU002', 'Y'),
(13, '2019P077', 'time', 'Schedule clashes for 2 group', '2019SU003', 'N'),
(14, '2019P058', 'kit', 'Kit Not Available', '2019SU006', 'N'),
(15, '2019P062', 'usabilty of resources', 'Resources are not usable', '2019SU011', 'Y'),
(16, '2019P065', 'light', 'Low Intensity of Lights in ground 5', '2019SU006', 'N'),
(17, '2019P002', 'ground', 'Ground needs renovation', '2019SU008', 'Y'),
(18, '2019P012', 'fees deduction', 'Deduction of fees demanded by players', '2019SU009', 'N'),
(19, '2019P027', 'time', 'Schedule clashes for 2 groups', '2019SU008', 'Y'),
(20, '2019P014', 'light', 'Low Intensity of Lights in ground 2', '2019SU006', 'Y'),
(21, '2019P050', 'usabilty of resources', 'Resources are not usable', '2019SU014', 'Y'),
(22, '2019P059', 'kit', 'Kit Not Available', '2019SU011', 'Y'),
(23, '2019P069', 'ground', 'Ground needs renovation', '2019SU012', 'N'),
(24, '2019P019', 'coach behaviour', 'Coach very aggressive to players', '2019SU006', 'N'),
(25, '2019P033', 'fees deduction', 'Deduction of fees demanded by players', '2019SU001', 'Y'),
(26, '2019P004', 'light', 'Low Intensity of Lights in ground 1', '2019SU002', 'N'),
(27, '2019P039', 'time', 'Schedule clashes for 2 groups', '2019SU006', 'N'),
(28, '2019P046', 'usabilty of resources', 'Resources are not usable', '2019SU003', 'Y'),
(29, '2019P044', 'light', 'Low Intensity of Lights in ground 3', '2019SU016', 'Y'),
(30, '2019P059', 'coach behaviour', 'Coach very aggressive to players', '2019SU005', 'Y'),
(31, '2019P073', 'ground', 'Ground needs renovation', '2019SU006', 'N'),
(32, '2019P042', 'ground', 'Ground needs renovation', '2019SU006', 'Y'),
(33, '2019P054', 'fees deduction', 'Deduction of fees demanded by players', '2019SU012', 'Y'),
(34, '2019P054', 'light', 'Low Intensity of Lights in ground 4', '2019SU006', 'N'),
(35, '2019P003', 'time', 'Schedule clashes for 2 groups', '2019SU007', 'N'),
(36, '2019P074', 'coach behaviour', 'Coach very aggressive to players', '2019SU007', 'Y'),
(37, '2019P022', 'ground', 'Ground needs renovation', '2019SU008', 'N'),
(38, '2019P033', 'kit', 'Kit Not Available', '2019SU015', 'Y'),
(39, '2019P005', 'light', 'Low Intensity of Lights in ground 3', '2019SU006', 'N'),
(40, '2019P029', 'fees deduction', 'Deduction of fees demanded by players', '2019SU010', 'Y'),
(41, '2019P065', 'time', 'Schedule clashes for 2 groups', '2019SU020', 'Y'),
(42, '2019P058', 'ground', 'Ground needs renovation', '2019SU014', 'Y'),
(43, '2019P067', 'light', 'Low Intensity of Lights in ground 5', '2019SU004', 'Y'),
(44, '2019P021', 'kit', 'Kit Not Available', '2019SU006', 'N'),
(45, '2019P008', 'fees deduction', 'Deduction of fees demanded by players', '2019SU004', 'N'),
(46, '2019P045', 'usabilty of resources', 'Resources are not usable', '2019SU006', 'Y'),
(47, '2019P024', 'time', 'Schedule clashes for 2 groups', '2019SU004', 'N'),
(48, '2019P029', 'light', 'Low Intensity of Lights in ground 1', '2019SU004', 'N'),
(49, '2019P069', 'kit', 'Kit Not Available', '2019SU011', 'Y'),
(50, '2019P014', 'usabilty of resources', 'Resources are not usable', '2019SU008', 'Y'),
(51, '2019P031', 'ground', 'Ground needs renovation', '2019SU015', 'Y'),
(52, '2019P042', 'time', 'Schedule clashes for 2 groups', '2019SU004', 'N'),
(53, '2019P043', 'coach behaviour', 'Coach very aggressive to players', '2019SU008', 'Y'),
(54, '2019P052', 'light', 'Low Intensity of Lights in ground 3', '2019SU002', 'Y'),
(55, '2019P010', 'time', 'Schedule clashes for 2 groups', '2019SU003', 'N'),
(56, '2019P061', 'kit', 'Kit Not Available', '2019SU004', 'N'),
(57, '2019P029', 'coach behaviour', 'Coach very aggressive to players', '2019SU001', 'Y'),
(58, '2019P003', 'light', 'Low Intensity of Lights in ground 5', '2019SU004', 'N'),
(59, '2019P018', 'time', 'Schedule clashes for 2 groups', '2019SU020', 'Y'),
(60, '2019P030', 'ground', 'Ground needs renovation', '2019SU004', 'N'),
(61, '2019P042', 'kit', 'Kit Not Available', '2019SU006', 'Y'),
(62, '2019P023', 'usabilty of resources', 'Resources are not usable', '2019SU001', 'Y'),
(63, '2019P081', 'light', 'Low Intensity of Lights in ground 1', '2019SU015', 'Y'),
(64, '2019P027', 'fees deduction', 'Deduction of fees demanded by players', '2019SU007', 'Y'),
(65, '2019P005', 'fees deduction', 'Deduction of fees demanded by players', '2019SU009', 'N'),
(66, '2019P014', 'time', 'Schedule clashes for 2 groups', '2019SU007', 'N'),
(67, '2019P032', 'coach behaviour', 'Coach very aggressive to players', '2019SU001', 'Y'),
(68, '2019P014', 'light', 'Low Intensity of Lights in ground 4', '2019SU006', 'N'),
(69, '2019P047', 'time', 'Schedule clashes for 2 groups', '2019SU007', 'N'),
(70, '2019P048', 'usabilty of resources', 'Resources are not usable', '2019SU002', 'Y'),
(71, '2019P063', 'ground', 'Ground needs renovation', '2019SU014', 'Y'),
(72, '2019P048', 'kit', 'Kit Not Available', '2019SU013', 'Y'),
(73, '2019P022', 'light', 'Low Intensity of Lights in ground 2', '2019SU007', 'N'),
(74, '2019P030', 'fees deduction', 'Deduction of fees demanded by players', '2019SU005', 'Y'),
(75, '2019P036', 'time', 'Schedule clashes for 2 groups', '2019SU007', 'Y'),
(76, '2019P037', 'light', 'Low Intensity of Lights in ground 1', '2019SU003', 'N'),
(77, '2019P048', 'time', 'Schedule clashes for 2 groups', '2019SU005', 'N'),
(78, '2019P005', 'kit', 'Kit Not Available', '2019SU009', 'Y'),
(79, '2019P053', 'ground', 'Ground needs renovation', '2019SU018', 'N'),
(80, '2019P066', 'light', 'Low Intensity of Lights in ground 5', '2019SU006', 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `fitness`
--

CREATE TABLE `fitness` (
  `Player_ID` varchar(20) NOT NULL,
  `Trainer_ID` varchar(20) DEFAULT NULL,
  `Rating` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `fitness`
--

INSERT INTO `fitness` (`Player_ID`, `Trainer_ID`, `Rating`) VALUES
('2019P002', '2019T004', 2),
('2019P003', '2019T003', 2),
('2019P004', '2019T010', 10),
('2019P005', '2019T008', 6),
('2019P006', NULL, 4),
('2019P007', '2019T006', 6),
('2019P008', '2019T008', 2),
('2019P009', '2019T014', 9),
('2019P010', '2019T007', 4),
('2019P011', '2019T014', 6),
('2019P012', '2019T012', 6),
('2019P013', '2019T014', 4),
('2019P014', '2019T008', 4),
('2019P015', '2019T005', 8),
('2019P016', '2019T015', 6),
('2019P017', '2019T013', 9),
('2019P018', NULL, 6),
('2019P019', '2019T015', 9),
('2019P020', '2019T009', 3),
('2019P021', '2019T011', 4),
('2019P022', '2019T003', 8),
('2019P023', '2019T011', 5),
('2019P024', '2019T004', 3),
('2019P025', NULL, 6),
('2019P026', '2019T003', 2),
('2019P027', '2019T012', 3),
('2019P028', '2019T015', 10),
('2019P029', '2019T004', 5),
('2019P030', '2019T009', 8),
('2019P031', '2019T008', 2),
('2019P032', '2019T010', 10),
('2019P033', '2019T012', 9),
('2019P034', NULL, 10),
('2019P035', '2019T012', 9),
('2019P036', '2019T008', 10),
('2019P037', NULL, 6),
('2019P038', '2019T014', 9),
('2019P039', '2019T010', 7),
('2019P041', '2019T005', 5),
('2019P042', '2019T010', 7),
('2019P043', '2019T006', 5),
('2019P044', '2019T014', 9),
('2019P045', '2019T008', 7),
('2019P046', NULL, 10),
('2019P047', '2019T015', 10),
('2019P048', NULL, 9),
('2019P049', '2019T008', 10),
('2019P050', '2019T015', 8),
('2019P051', '2019T011', 9),
('2019P052', '2019T010', 2),
('2019P053', '2019T013', 4),
('2019P054', '2019T014', 2),
('2019P055', '2019T006', 4),
('2019P056', '2019T004', 5),
('2019P057', '2019T011', 9),
('2019P058', '2019T010', 7),
('2019P059', '2019T012', 9),
('2019P060', '2019T014', 8),
('2019P061', '2019T007', 8),
('2019P062', '2019T003', 3),
('2019P063', '2019T006', 3),
('2019P064', '2019T014', 6),
('2019P065', '2019T004', 10),
('2019P066', '2019T009', 6),
('2019P067', '2019T007', 2),
('2019P068', '2019T015', 8),
('2019P069', '2019T007', 4),
('2019P070', '2019T008', 9),
('2019P071', '2019T003', 8),
('2019P072', '2019T014', 6),
('2019P073', '2019T013', 9),
('2019P074', '2019T012', 9),
('2019P075', '2019T010', 10),
('2019P076', '2019T009', 10),
('2019P077', '2019T015', 3),
('2019P078', NULL, 9),
('2019P079', '2019T006', 2),
('2019P080', '2019T007', 8),
('2019P081', '2019T013', 2),
('2019P082', '2019T009', 5);

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `User_ID` varchar(20) NOT NULL,
  `Password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`User_ID`, `Password`) VALUES
('2019C002', 'PWD2019C002'),
('2019C004', 'PWD2019C004'),
('2019C005', 'PWD2019C005'),
('2019C006', 'PWD2019C006'),
('2019C007', 'PWD2019C007'),
('2019C008', 'PWD2019C008'),
('2019C009', 'PWD2019C009'),
('2019C012', 'PWD2019C012'),
('2019C013', 'PWD2019C013'),
('2019C014', 'PWD2019C014'),
('2019C015', 'PWD2019C015'),
('2019P001', 'PWD2019P001'),
('2019P002', 'PWD2019P002'),
('2019P003', 'PWD2019P003'),
('2019P004', 'PWD2019P004'),
('2019P005', 'PWD2019P005'),
('2019P006', 'PWD2019P006'),
('2019P007', 'PWD2019P007'),
('2019P008', 'PWD2019P008'),
('2019P009', 'PWD2019P009'),
('2019P010', 'PWD2019P010'),
('2019P011', 'PWD2019P011'),
('2019P012', 'PWD2019P012'),
('2019P013', 'PWD2019P013'),
('2019P014', 'PWD2019P014'),
('2019P015', 'PWD2019P015'),
('2019P016', 'PWD2019P016'),
('2019P017', 'PWD2019P017'),
('2019P018', 'PWD2019P018'),
('2019P019', 'PWD2019P019'),
('2019P020', 'PWD2019P020'),
('2019P021', 'PWD2019P021'),
('2019P022', 'PWD2019P022'),
('2019P023', 'PWD2019P023'),
('2019P024', 'PWD2019P024'),
('2019P025', 'PWD2019P025'),
('2019P026', 'PWD2019P026'),
('2019P027', 'PWD2019P027'),
('2019P028', 'PWD2019P028'),
('2019P029', 'PWD2019P029'),
('2019P030', 'PWD2019P030'),
('2019P031', 'PWD2019P031'),
('2019P032', 'PWD2019P032'),
('2019P033', 'PWD2019P033'),
('2019P034', 'PWD2019P034'),
('2019P035', 'PWD2019P035'),
('2019P036', 'PWD2019P036'),
('2019P037', 'PWD2019P037'),
('2019P038', 'PWD2019P038'),
('2019P039', 'PWD2019P039'),
('2019P040', 'PWD2019P040'),
('2019P041', 'PWD2019P041'),
('2019P042', 'PWD2019P042'),
('2019P043', 'PWD2019P043'),
('2019P044', 'PWD2019P044'),
('2019P045', 'PWD2019P045'),
('2019P046', 'PWD2019P046'),
('2019P047', 'PWD2019P047'),
('2019P048', 'PWD2019P048'),
('2019P049', 'PWD2019P049'),
('2019P050', 'PWD2019P050'),
('2019P051', 'PWD2019P051'),
('2019P052', 'PWD2019P052'),
('2019P053', 'PWD2019P053'),
('2019P054', 'PWD2019P054'),
('2019P055', 'PWD2019P055'),
('2019P056', 'PWD2019P056'),
('2019P057', 'PWD2019P057'),
('2019P058', 'PWD2019P058'),
('2019P059', 'PWD2019P059'),
('2019P060', 'PWD2019P060'),
('2019P061', 'PWD2019P061'),
('2019P062', 'PWD2019P062'),
('2019P063', 'PWD2019P063'),
('2019P064', 'PWD2019P064'),
('2019P065', 'PWD2019P065'),
('2019P066', 'PWD2019P066'),
('2019P067', 'PWD2019P067'),
('2019P068', 'PWD2019P068'),
('2019P069', 'PWD2019P069'),
('2019P070', 'PWD2019P070'),
('2019P071', 'PWD2019P071'),
('2019P072', 'PWD2019P072'),
('2019P073', 'PWD2019P073'),
('2019P074', 'PWD2019P074'),
('2019P075', 'PWD2019P075'),
('2019P076', 'PWD2019P076'),
('2019P077', 'PWD2019P077'),
('2019P078', 'PWD2019P078'),
('2019P079', 'PWD2019P079'),
('2019P080', 'PWD2019P080'),
('2019P081', 'PWD2019P081'),
('2019P082', 'PWD2019P082'),
('2019SA001', 'PWD2019SA001'),
('2019SA002', 'PWD2019SA002'),
('2019SA003', 'PWD2019SA003'),
('2019SA004', 'PWD2019SA004'),
('2019SA005', 'PWD2019SA005'),
('2019SA006', 'PWD2019SA006'),
('2019SA007', 'PWD2019SA007'),
('2019SA008', 'PWD2019SA008'),
('2019SA009', 'PWD2019SA009'),
('2019SA010', 'PWD2019SA010'),
('2019SA011', 'PWD2019SA011'),
('2019SA012', 'PWD2019SA012'),
('2019SA013', 'PWD2019SA013'),
('2019SA014', 'PWD2019SA014'),
('2019SA015', 'PWD2019SA015'),
('2019SA016', 'PWD2019SA016'),
('2019SA017', 'PWD2019SA017'),
('2019SA018', 'PWD2019SA018'),
('2019SA019', 'PWD2019SA019'),
('2019SA020', 'PWD2019SA020'),
('2019SU001', 'PWD2019SU001'),
('2019SU002', 'PWD2019SU002'),
('2019SU003', 'PWD2019SU003'),
('2019SU004', 'PWD2019SU004'),
('2019SU005', 'PWD2019SU005'),
('2019SU006', 'PWD2019SU006'),
('2019SU007', 'PWD2019SU007'),
('2019SU008', 'PWD2019SU008'),
('2019SU009', 'PWD2019SU009'),
('2019SU010', 'PWD2019SU010'),
('2019SU011', 'PWD2019SU011'),
('2019SU012', 'PWD2019SU012'),
('2019SU013', 'PWD2019SU013'),
('2019SU014', 'PWD2019SU014'),
('2019SU015', 'PWD2019SU015'),
('2019SU016', 'PWD2019SU016'),
('2019SU017', 'PWD2019SU017'),
('2019SU018', 'PWD2019SU018'),
('2019SU019', 'PWD2019SU019'),
('2019SU020', 'PWD2019SU020'),
('2019T001', 'PWD2019T001'),
('2019T002', 'PWD2019T002'),
('2019T003', 'PWD2019T003'),
('2019T004', 'PWD2019T004'),
('2019T005', 'PWD2019T005'),
('2019T006', 'PWD2019T006'),
('2019T007', 'PWD2019T007'),
('2019T008', 'PWD2019T008'),
('2019T009', 'PWD2019T009'),
('2019T010', 'PWD2019T010'),
('2019T011', 'PWD2019T011'),
('2019T012', 'PWD2019T012'),
('2019T013', 'PWD2019T013'),
('2019T014', 'PWD2019T014'),
('2019T015', 'PWD2019T015'),
('2019T016', 'PWD2019T016'),
('2019T018', 'PWD2019T018'),
('DOIO', 'NONO'),
('FENIL', '123456'),
('fenil darji', '123456');

-- --------------------------------------------------------

--
-- Table structure for table `player_info`
--

CREATE TABLE `player_info` (
  `Player_ID` varchar(20) NOT NULL,
  `Name` varchar(40) NOT NULL,
  `Age` int(11) NOT NULL,
  `Batch_No` varchar(10) DEFAULT NULL,
  `Joining_Date` date NOT NULL,
  `Attendance` int(11) DEFAULT NULL,
  `Contact_No` int(11) DEFAULT NULL,
  `Address` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `player_info`
--

INSERT INTO `player_info` (`Player_ID`, `Name`, `Age`, `Batch_No`, `Joining_Date`, `Attendance`, `Contact_No`, `Address`) VALUES
('2019P002', 'Stu Shane McKimmey', 15, 'A01', '0000-00-00', 70, 2147483647, '655 Thackeray Junction'),
('2019P003', 'Theressa Robin Gerrett', 23, 'A01', '0000-00-00', 78, 2147483647, '016 Hoepker Road'),
('2019P004', 'Dalila Thomas Lymbourne', 18, 'A01', '0000-00-00', 75, 2147483647, '6025 Paget Junction'),
('2019P005', 'Joelie Robin Boays', 14, 'A01', '0000-00-00', 72, 2147483647, '6 Stone Corner Park'),
('2019P006', 'Julita David O\'Hickee', 15, 'A01', '0000-00-00', 83, 2147483647, '4 Ridge Oak Crossing'),
('2019P007', 'Vitoria Erone Hamman', 15, 'A01', '0000-00-00', 83, 2147483647, '27821 Muir Center'),
('2019P008', 'Lesya Shown Ference', 15, 'A01', '0000-00-00', 78, 2147483647, '50966 Lakewood Gardens Way'),
('2019P009', 'Morris Michel Voaden', 18, 'A01', '0000-00-00', 74, 2147483647, '075 Blackbird Avenue'),
('2019P010', 'Gonzalo Mathew Farnsworth', 17, 'A01', '0000-00-00', 88, 2147483647, '49804 Surrey Road'),
('2019P011', 'Garry Adam Scalera', 19, 'B01', '0000-00-00', 77, 2147483647, '35416 Merry Terrace'),
('2019P012', 'Kahlil Dwane Godain', 15, 'B01', '0000-00-00', 80, 2147483647, '47080 Pierstorff Crossing'),
('2019P013', 'Francyne Donald Riall', 18, 'B01', '0000-00-00', 96, 2147483647, '994 Toban Avenue'),
('2019P014', 'Allistir Jony Churchard', 18, 'B01', '0000-00-00', 83, 2147483647, '54976 Sage Drive'),
('2019P015', 'Tandi Tom Coode', 21, 'B01', '0000-00-00', 73, 2147483647, '3954 Ronald Regan Pass'),
('2019P016', 'Pauli Thomas Nesterov', 20, 'B01', '0000-00-00', 86, 2147483647, '133 Hudson Hill'),
('2019P017', 'Far Bob D\'Angeli', 17, 'B01', '0000-00-00', 91, 2147483647, '3367 Hoffman Pass'),
('2019P018', 'Verine Charli Fennick', 19, 'B01', '0000-00-00', 72, 2147483647, '45 Bunker Hill Alley'),
('2019P019', 'Concettina Joe Skeffington', 22, 'B01', '0000-00-00', 73, 2147483647, '0 Bellgrove Center'),
('2019P020', 'Brandy Eone Delion', 17, 'B01', '0000-00-00', 94, 2147483647, '1 Dakota Road'),
('2019P021', 'Lisle Sam Uman', 18, 'C01', '0000-00-00', 100, 2147483647, '67129 Sheridan Crossing'),
('2019P022', 'Penny Stuart Goalley', 18, 'C01', '0000-00-00', 96, 2147483647, '79586 Blackbird Center'),
('2019P023', 'Lyle Rojar Benois', 18, 'C01', '0000-00-00', 73, 2147483647, '39462 Old Gate Center'),
('2019P024', 'Dotty Thomas Blei', 17, 'C01', '0000-00-00', 83, 2147483647, '6 Merchant Alley'),
('2019P025', 'Aldus Smith Daniely', 21, 'C01', '0000-00-00', 88, 2147483647, '01 South Trail'),
('2019P026', 'Van De Angelo', 15, 'C01', '0000-00-00', 100, 2147483647, '1806 Norway Maple Place'),
('2019P027', 'Mildrid Quainton Passie', 21, 'C01', '0000-00-00', 76, 2147483647, '089 Bayside Pass'),
('2019P028', 'Hyacinthie Robin Giovannoni', 18, 'C01', '0000-00-00', 99, 2147483647, '880 Sutherland Circle'),
('2019P029', 'Blaire Tom Binnion', 20, 'C01', '0000-00-00', 72, 2147483647, '46 Oneill Trail'),
('2019P030', 'Clemmy Joe Lody', 17, 'C01', '0000-00-00', 77, 2147483647, '8 6th Trail'),
('2019P031', 'Dominic Rojar Caudrelier', 17, 'D01', '0000-00-00', 98, 2147483647, '97 Sunbrook Plaza'),
('2019P032', 'Joan Domald Gartsyde', 22, 'D01', '0000-00-00', 89, 2147483647, '6 Lakeland Lane'),
('2019P033', 'Michele Jan Pragnall', 19, 'D01', '0000-00-00', 75, 2147483647, '639 Carpenter Plaza'),
('2019P034', 'Farrell Lyle Monnelly', 18, 'D01', '0000-00-00', 74, 2147483647, '42341 Knutson Road'),
('2019P035', 'Chrisse Dotty Lum', 16, 'D01', '0000-00-00', 92, 2147483647, '06039 Union Crossing'),
('2019P036', 'Gabrila Aldus Bowcher', 21, 'D01', '0000-00-00', 78, 2147483647, '906 Mccormick Junction'),
('2019P037', 'Katti Farrel Bello', 19, 'D01', '0000-00-00', 87, 2147483647, '83624 Lakewood Point'),
('2019P038', 'Nilson David Phifer', 20, 'D01', '0000-00-00', 74, 2147483647, '1005 Gina Avenue'),
('2019P039', 'Sydney Marlon Mersey', 22, 'D01', '0000-00-00', 86, 2147483647, '13 Summer Ridge Parkway'),
('2019P040', 'Jan Jason Tatem', 16, 'D01', '0000-00-00', 92, 2147483647, '5 Goodland Trail'),
('2019P041', 'Clifford Shanon Merigon', 23, 'E01', '0000-00-00', 93, 2147483647, '208 Killdeer Drive'),
('2019P042', 'Corney Michele Summerlad', 17, 'E01', '0000-00-00', 91, 2147483647, '0 Bartelt Junction'),
('2019P043', 'Carey Lisle Jugging', 19, 'E01', '0000-00-00', 100, 2147483647, '83946 Elmside Street'),
('2019P044', 'Annalise Robbert Hilling', 19, 'E01', '0000-00-00', 86, 2147483647, '216 Laurel Junction'),
('2019P045', 'Robbert Micael Gopsell', 14, 'E01', '0000-00-00', 73, 2147483647, '2 Burrows Street'),
('2019P046', 'Anny Stacee Winn', 18, 'E01', '0000-00-00', 71, 2147483647, '0 Rigney Trail'),
('2019P047', 'Gretal Thomas Capon', 15, 'E01', '0000-00-00', 71, 2147483647, '07554 Calypso Crossing'),
('2019P048', 'Chere Smith Jerzyk', 17, 'E01', '0000-00-00', 93, 2147483647, '3987 Di Loreto Way'),
('2019P049', 'Brittani Joe Hampshaw', 23, 'E01', '0000-00-00', 73, 2147483647, '8 Merchant Way'),
('2019P050', 'Joellyn Stuart Reeders', 16, 'E01', '0000-00-00', 74, 2147483647, '640 Center Terrace'),
('2019P051', 'Vannie Robbert Yoselevitch', 20, 'F01', '0000-00-00', 84, 2147483647, '722 Mesta Drive'),
('2019P052', 'Salmon Anny Phizakarley', 19, 'F01', '0000-00-00', 70, 2147483647, '6080 Birchwood Crossing'),
('2019P053', 'Klemens Marrine Quinnell', 20, 'F01', '0000-00-00', 98, 2147483647, '102 Cody Junction'),
('2019P054', 'Dario Dwane Cleiment', 15, 'F01', '0000-00-00', 87, 2147483647, '2818 Jackson Center'),
('2019P055', 'Alika Josh Halwood', 15, 'F01', '0000-00-00', 83, 2147483647, '48039 Lerdahl Junction'),
('2019P056', 'Barnabas Adam Spurett', 19, 'F01', '0000-00-00', 84, 2147483647, '022 Loomis Trail'),
('2019P057', 'Mikael Glane Cauldwell', 16, 'F01', '0000-00-00', 84, 2147483647, '7 Meadow Valley Drive'),
('2019P058', 'Carmencita Rickey Mountain', 22, 'F01', '0000-00-00', 87, 2147483647, '2 Carioca Street'),
('2019P059', 'Stacee Roy Jansa', 23, 'F01', '0000-00-00', 82, 2147483647, '9 Mcguire Crossing'),
('2019P060', 'Marinna Bill Pyott', 14, 'F01', '0000-00-00', 85, 2147483647, '5 Moose Plaza'),
('2019P061', 'Harriot Rickey Henri', 16, 'G01', '0000-00-00', 92, 2147483647, '424 Marcy Pass'),
('2019P062', 'Antonetta Josh Hawse', 18, 'G01', '0000-00-00', 77, 2147483647, '7 Muir Court'),
('2019P063', 'Rosemary Bill Dabbs', 15, 'G01', '0000-00-00', 73, 2147483647, '33 Hauk Avenue'),
('2019P064', 'Eberto Joy Buckingham', 23, 'G01', '0000-00-00', 98, 2147483647, '2 Artisan Court'),
('2019P065', 'Audi Bill Cheley', 22, 'G01', '0000-00-00', 81, 2147483647, '84 Wayridge Junction'),
('2019P066', 'Linet Adam Howton', 19, 'G01', '0000-00-00', 95, 2147483647, '03163 Garrison Center'),
('2019P067', 'Allie Glane Ateggart', 20, 'G01', '0000-00-00', 75, 2147483647, '449 Oak Valley Drive'),
('2019P068', 'Gaylord Jyorge Greiswood', 20, 'G01', '0000-00-00', 99, 2147483647, '06644 Amoth Pass'),
('2019P069', 'Amberly Roy Coda', 15, 'G01', '0000-00-00', 98, 2147483647, '089 1st Plaza'),
('2019P070', 'Vinny Joe Lombardo', 18, 'G01', '0000-00-00', 89, 2147483647, '5 Killdeer Drive'),
('2019P071', 'Florian David Jurca', 22, 'H01', '0000-00-00', 90, 2147483647, '79650 Spaight Pass'),
('2019P072', 'Mikaela Mark McClary', 16, 'H01', '0000-00-00', 88, 2147483647, '1723 Pankratz Alley'),
('2019P073', 'Regine Robbert Woodvine', 14, 'H01', '0000-00-00', 78, 2147483647, '6562 Tony Street'),
('2019P074', 'Rafi Florian Matysik', 17, 'H01', '0000-00-00', 87, 2147483647, '816 Bunting Point'),
('2019P075', 'Findley Josh Howden', 22, 'H01', '0000-00-00', 73, 2147483647, '79293 Holmberg Road'),
('2019P076', 'Ivor Bill Kirkham', 14, 'H01', '0000-00-00', 81, 2147483647, '668 Scofield Crossing'),
('2019P077', 'Mellie Mark Gutherson', 23, 'H01', '0000-00-00', 88, 2147483647, '03097 Cascade Terrace'),
('2019P078', 'Delano Stuart Godfroy', 15, 'H01', '0000-00-00', 73, 2147483647, '002 Alpine Trail'),
('2019P079', 'Kipper Adam Kloster', 17, 'H01', '0000-00-00', 71, 2147483647, '8 Farmco Circle'),
('2019P080', 'Lars Glane Jorio', 22, 'H01', '0000-00-00', 92, 2147483647, '6292 American Drive'),
('2019P081', 'Ashlie Kane McGann', 17, 'H01', '0000-00-00', 75, 2147483647, '12 Anniversary Junction'),
('2019P082', 'Agathe Martin Hirthe', 15, 'H01', '0000-00-00', 86, 2147483647, '4719 Declaration Lane');

-- --------------------------------------------------------

--
-- Table structure for table `player_statistic`
--

CREATE TABLE `player_statistic` (
  `Player_ID` varchar(20) NOT NULL,
  `Goals` int(11) DEFAULT NULL,
  `Rating` int(11) DEFAULT NULL,
  `Position` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `player_statistic`
--

INSERT INTO `player_statistic` (`Player_ID`, `Goals`, `Rating`, `Position`) VALUES
('2019P002', 95, 1978, 'Goal keeper'),
('2019P003', 51, 1642, 'Deffender'),
('2019P004', 71, 1484, 'Forward'),
('2019P005', 43, 1870, 'Goal keeper'),
('2019P006', 80, 1689, 'Forward'),
('2019P007', 90, 1634, 'Goal keeper'),
('2019P008', 89, 1903, 'Mid filder'),
('2019P009', 63, 1930, 'Forward'),
('2019P010', 64, 1711, 'Mid filder'),
('2019P011', 96, 1709, 'Deffender'),
('2019P012', 78, 1845, 'Forward'),
('2019P013', 60, 1703, 'Goal keeper'),
('2019P014', 88, 1965, 'Deffender'),
('2019P015', 93, 1492, 'Forward'),
('2019P016', 50, 1444, 'Mid filder'),
('2019P017', 64, 1706, 'Goal keeper'),
('2019P018', 76, 1945, 'Forward'),
('2019P019', 93, 1646, 'Goal keeper'),
('2019P020', 73, 1997, 'Deffender'),
('2019P021', 72, 1577, 'Mid filder'),
('2019P022', 85, 1415, 'Goal keeper'),
('2019P023', 97, 1988, 'Forward'),
('2019P024', 51, 1965, 'Mid filder'),
('2019P025', 65, 1447, 'Goal keeper'),
('2019P026', 74, 1728, 'Deffender'),
('2019P027', 72, 1726, 'Mid filder'),
('2019P028', 68, 1688, 'Forward'),
('2019P029', 69, 1815, 'Mid filder'),
('2019P030', 57, 1806, 'Goal keeper'),
('2019P031', 63, 1438, 'Mid filder'),
('2019P032', 42, 1440, 'Deffender'),
('2019P033', 53, 1786, 'Mid filder'),
('2019P034', 56, 1996, 'Forward'),
('2019P035', 41, 1452, 'Deffender'),
('2019P036', 51, 1682, 'Mid filder'),
('2019P037', 93, 1429, 'Forward'),
('2019P038', 35, 1855, 'Goal keeper'),
('2019P039', 46, 1847, 'Mid filder'),
('2019P040', 93, 1753, 'Mid filder'),
('2019P041', 95, 1716, 'Deffender'),
('2019P042', 42, 1455, 'Mid filder'),
('2019P043', 58, 1538, 'Goal keeper'),
('2019P044', 91, 1682, 'Mid filder'),
('2019P045', 49, 1418, 'Deffender'),
('2019P046', 89, 1456, 'Forward'),
('2019P047', 48, 1679, 'Mid filder'),
('2019P048', 65, 1559, 'Deffender'),
('2019P049', 64, 1560, 'Mid filder'),
('2019P050', 76, 1875, 'Goal keeper'),
('2019P051', 74, 1911, 'Mid filder'),
('2019P052', 79, 1955, 'Forward'),
('2019P053', 71, 1626, 'Mid filder'),
('2019P054', 62, 1672, 'Deffender'),
('2019P055', 44, 1725, 'Mid filder'),
('2019P056', 95, 1836, 'Goal keeper'),
('2019P057', 69, 1691, 'Mid filder'),
('2019P058', 93, 1430, 'Forward'),
('2019P059', 52, 1743, 'Mid filder'),
('2019P060', 79, 1975, 'Deffender'),
('2019P061', 80, 1799, 'Goal keeper'),
('2019P062', 80, 1946, 'Mid filder'),
('2019P063', 56, 1629, 'Forward'),
('2019P064', 57, 1420, 'Deffender'),
('2019P065', 91, 1563, 'Mid filder'),
('2019P066', 84, 1915, 'Mid filder'),
('2019P067', 77, 1820, 'Forward'),
('2019P068', 81, 1820, 'Goal keeper'),
('2019P069', 51, 1868, 'Mid filder'),
('2019P070', 77, 1822, 'Forward'),
('2019P071', 86, 1562, 'Deffender'),
('2019P072', 93, 1463, 'Goal keeper'),
('2019P073', 59, 1661, 'Mid filder'),
('2019P074', 95, 1748, 'Goal keeper'),
('2019P075', 47, 1942, 'Mid filder'),
('2019P076', 84, 1580, 'Forward'),
('2019P077', 60, 1809, 'Deffender'),
('2019P078', 71, 1481, 'Mid filder'),
('2019P079', 75, 1639, 'Forward'),
('2019P080', 61, 1640, 'Goal keeper'),
('2019P081', 48, 1463, 'Deffender'),
('2019P082', 70, 1823, 'Mid filder');

-- --------------------------------------------------------

--
-- Table structure for table `salary`
--

CREATE TABLE `salary` (
  `Sr_No` int(11) NOT NULL,
  `User_ID` varchar(20) NOT NULL,
  `Salary` int(11) DEFAULT NULL,
  `Role` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `salary`
--

INSERT INTO `salary` (`Sr_No`, `User_ID`, `Salary`, `Role`) VALUES
(2, '2019C002', 37000, 'Coach'),
(4, '2019C004', 25000, 'Coach'),
(5, '2019C005', 24000, 'Coach'),
(6, '2019C006', 40000, 'Coach'),
(7, '2019C007', 21000, 'Coach'),
(8, '2019C008', 30000, 'Coach'),
(9, '2019C009', 32000, 'Coach'),
(12, '2019C012', 30000, 'Coach'),
(13, '2019C013', 25000, 'Coach'),
(14, '2019C014', 21000, 'Coach'),
(15, '2019C015', 23000, 'Coach'),
(16, '2019T001', 38000, 'Trainer'),
(17, '2019T002', 23000, 'Trainer'),
(18, '2019T003', 23000, 'Trainer'),
(19, '2019T004', 26000, 'Trainer'),
(20, '2019T005', 21000, 'Trainer'),
(21, '2019T006', 39000, 'Trainer'),
(22, '2019T007', 35000, 'Trainer'),
(23, '2019T008', 25000, 'Trainer'),
(24, '2019T009', 38000, 'Trainer'),
(25, '2019T010', 29000, 'Trainer'),
(26, '2019T011', 27000, 'Trainer'),
(27, '2019T012', 35000, 'Trainer'),
(28, '2019T013', 22000, 'Trainer'),
(29, '2019T014', 40000, 'Trainer'),
(30, '2019T015', 23000, 'Trainer'),
(31, '2019T016', 35000, 'Trainer'),
(33, '2019T018', 22000, 'Trainer');

-- --------------------------------------------------------

--
-- Table structure for table `super_admin`
--

CREATE TABLE `super_admin` (
  `Super_Admin_ID` varchar(20) NOT NULL,
  `Name` varchar(40) NOT NULL,
  `Email_ID` varchar(40) DEFAULT NULL,
  `Contact_No` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `super_admin`
--

INSERT INTO `super_admin` (`Super_Admin_ID`, `Name`, `Email_ID`, `Contact_No`) VALUES
('2019SA002', 'Jethalal Champaklal Ghada', 'jethalalGSA02@gmail.com', 9062769253),
('2019SA003', 'Champaklal Jyantilal Ghada', 'champakGSA02@gmail.com', 9061128739),
('2019SA004', 'Roshansihn Harjeetsihn Sodhi', 'roshansihnSA02@gmail.com', 9051132278),
('2019SA005', 'Nabin Ganag Garg', 'nabingargSA02@gmail.com', 9053836890),
('2019SA006', 'Anjan Debang Gosh', 'anjangoshSA02@gmail.com', 9050682027),
('2019SA007', 'Tanan Dharmikkumar Panchal', 'tananpanchalSA02@gmail.com', 9056077600),
('2019SA008', 'Ayushman Mahendra Joshi', 'ayushmanjoshiSA02@gmail.com', 9055134424),
('2019SA009', 'Pintu Rameshbhai Doshi', 'pintudoshiSA02@gmail.com', 9059344554),
('2019SA010', 'Montu Rameshbhai Kapoor', 'mntukapoorSA02@gmail.com', 9052822653),
('2019SA011', 'Saurabh Manoj Tiwari', 'saurabhtiwariSA02@gmail.com', 9058368354),
('2019SA012', 'Kiran Babubhai Darji', 'kirandarjiSA02@gmail.com', 9056212718),
('2019SA013', 'Chirah Chamanbhai Chahuhan', 'chirahchahuhanSA02@gmail.com', 9052295295),
('2019SA014', 'Shyan Revashankar Bhutani', 'shyambhutaniSA02@gmail.com', 9063012917),
('2019SA015', 'Advait Gopalbhai Acharya', 'advaitacharyaSA02@gmail.com', 9062620310),
('2019SA016', 'Shital Bhadreshbhai Joshi', 'shitaljoshiSA02@gmail.com', 9062574566),
('2019SA017', 'Yash Kirtikumar Vasavda', 'yashvasavdaSA02@gmail.com', 9054385259),
('2019SA018', 'Arpit Kamlesh Vaishnav', 'arpitvishnavSA02@gmail.com', 9059998119),
('2019SA019', 'Chiranjivi Ramesh Chahuhan', 'chiranjiviSA02@gmail.com', 9049546101),
('2019SA020', 'Baburam Gamparam Apte', 'baburamapteSA02@gmail.com', 9061794459);

-- --------------------------------------------------------

--
-- Table structure for table `super_user`
--

CREATE TABLE `super_user` (
  `Super_User_ID` varchar(20) NOT NULL,
  `Name` varchar(40) NOT NULL,
  `Contact_No` bigint(20) NOT NULL,
  `Email_ID` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `super_user`
--

INSERT INTO `super_user` (`Super_User_ID`, `Name`, `Contact_No`, `Email_ID`) VALUES
('2019SU001', 'Darshit Gopalbhai Gajjar', 9052933336, 'darshitgajjarSU06@gmail.com'),
('2019SU002', 'Arpeet Dhrumilkumar Parmar', 9050103864, 'arpeetparmarSU06@gmail.com'),
('2019SU003', 'Arun Prabhatbhai Shah', 9058798381, 'arunshahSU06@gmail.com'),
('2019SU004', 'Harpeet MAnishkumar Arora', 9051560153, 'harpeetaroraSU06@gmail.com'),
('2019SU005', 'Jogindar Kalpeshbhai Panchal', 9053865157, 'jogindarpanchalSU06@gmail.com'),
('2019SU006', 'Meet Jalpesh Pandya', 9063436859, 'meetpandyaSU06@gmail.com'),
('2019SU007', 'Deepak Mahesh Hooda', 9057534062, 'deepakhoodaSU06@gmail.com'),
('2019SU008', 'Aryan Shaileshkumar Patel', 9049654824, 'aryanpatelSU06@gmail.com'),
('2019SU009', 'Malav Tanmaybhai Vaishnav', 9057673565, 'malavvaishanavSU06@gmail.com'),
('2019SU010', 'Fenil Sanjaykumar Parmar', 9059189406, 'fenilparmarSU06@gmail.com'),
('2019SU011', 'Dharmik Akshaykumar Shah', 9057446566, 'dharmikshahSU06@gmail.com'),
('2019SU012', 'Chirag Manojbhai Darji', 9055932216, 'chiragdarjiSU06@gmail.com'),
('2019SU013', 'Ayush Subhamkumar Misty', 9053840745, 'ayushmistrySU06@gmail.com'),
('2019SU014', 'Anmol Hitenkumar Barot', 9050192956, 'anmolbarotSU06@gmail.com'),
('2019SU015', 'Abhishek Naineshkumar Dutt', 9060041455, 'abhishekSU06@gmail.com'),
('2019SU016', 'Manan Narendrabhai Patel', 9060640477, 'manannarendrabhaiSU06@gmail.com'),
('2019SU017', 'Jainam Apleshbhai Shah', 9054612858, 'jainamshahSU06@gmail.com'),
('2019SU018', 'Javnish Rameshbhai Sharma', 9060763588, 'javnishshahSU06@gmail.com'),
('2019SU019', 'Parth Harishkumar Kohli', 9063368065, 'parthkohliSU06@gmail.com'),
('2019SU020', 'Dhruv Bipinchanra Mevada', 9053539986, 'dhruvmevadaSU06@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `trainer_info`
--

CREATE TABLE `trainer_info` (
  `Trainer_ID` varchar(20) NOT NULL,
  `Name` varchar(40) NOT NULL,
  `Age` int(11) DEFAULT NULL,
  `Contact_No` bigint(20) NOT NULL,
  `Email_ID` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `trainer_info`
--

INSERT INTO `trainer_info` (`Trainer_ID`, `Name`, `Age`, `Contact_No`, `Email_ID`) VALUES
('2019T003', 'Ravi rameshkumar Shastri', 29, 9062269129, 'ravishatriT0@gmail.com'),
('2019T004', 'Virat bharatbhai Sharma', 32, 9058263231, 'viratsharmaT0@gmail.com'),
('2019T005', 'Jos hardin Buttler', 26, 9056028791, 'josbuttlerT0@gmail.com'),
('2019T006', 'Mahendra rameshbhai Dhoni', 23, 9058903117, 'msdhoniT0@gmail.com'),
('2019T007', 'Niraj  kachradas Chopra', 24, 9054504612, 'nirajchopraT0@gmail.com'),
('2019T008', 'Rohit Bhaveshkumar  Sharma', 36, 9054707934, 'rohitsharmaT0@gmail.com'),
('2019T009', 'David Travis Warner', 22, 9061909448, 'davidwarnerT0@gmail.com'),
('2019T010', 'Arron Smith Finch', 37, 9050607308, 'arronfinchT0@gmail.com'),
('2019T011', 'Lalu PrasadYadav', 26, 9052875107, 'lalutadavT0@gmail.com'),
('2019T012', 'Narendra Damodardas Modi', 29, 9059808484, 'narendramodiT0@gmail.com'),
('2019T013', 'Anil KantilalShah', 35, 9051225418, 'anilshahT0@gmail.com'),
('2019T014', 'Jitanshu Jayeshbhai Patel', 32, 9051527391, 'jitanshuT0@gmail.com'),
('2019T015', 'Aditya Dharmikkumar Chopra', 28, 9049309109, 'adityachopraT0@gmail.com'),
('2019T016', 'Salman Salim Khan', 29, 9058779782, 'salmankhanT0@gmail.com'),
('2019T017', 'Raj Sashinbhai Purohit', 31, 9056706951, 'rajpurohitT0@gmail.com'),
('2019T018', 'Amri Akbar Khan', 34, 9051932743, 'amirkhanT0@gmail.com'),
('2019T019', 'Varun David Dhawan', 29, 9059478840, 'varundhawanT0@gmail.com'),
('2019T020', 'Naresh Shrivastav', 27, 9053283755, '');

-- --------------------------------------------------------

--
-- Table structure for table `training`
--

CREATE TABLE `training` (
  `Training_ID` varchar(20) NOT NULL,
  `Coach_ID` varchar(20) DEFAULT NULL,
  `Player_ID` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `training`
--

INSERT INTO `training` (`Training_ID`, `Coach_ID`, `Player_ID`) VALUES
('2019TN002', NULL, '2019P002'),
('2019TN003', NULL, '2019P003'),
('2019TN004', NULL, '2019P004'),
('2019TN005', NULL, '2019P005'),
('2019TN006', NULL, '2019P006'),
('2019TN007', NULL, '2019P007'),
('2019TN008', NULL, '2019P008'),
('2019TN009', NULL, '2019P009'),
('2019TN010', NULL, '2019P010'),
('2019TN011', '2019C002', '2019P011'),
('2019TN012', '2019C002', '2019P012'),
('2019TN013', '2019C002', '2019P013'),
('2019TN014', '2019C002', '2019P014'),
('2019TN015', '2019C002', '2019P015'),
('2019TN016', NULL, '2019P016'),
('2019TN017', NULL, '2019P017'),
('2019TN018', NULL, '2019P018'),
('2019TN019', NULL, '2019P019'),
('2019TN020', NULL, '2019P020'),
('2019TN021', NULL, '2019P021'),
('2019TN022', NULL, '2019P022'),
('2019TN023', '2019C004', '2019P023'),
('2019TN024', '2019C004', '2019P024'),
('2019TN025', '2019C004', '2019P025'),
('2019TN026', '2019C005', '2019P026'),
('2019TN027', '2019C005', '2019P027'),
('2019TN028', '2019C005', '2019P028'),
('2019TN029', '2019C005', '2019P029'),
('2019TN030', '2019C005', '2019P030'),
('2019TN031', '2019C005', '2019P031'),
('2019TN032', '2019C005', '2019P032'),
('2019TN033', '2019C005', '2019P033'),
('2019TN034', '2019C005', '2019P034'),
('2019TN035', '2019C005', '2019P035'),
('2019TN036', '2019C005', '2019P036'),
('2019TN037', '2019C005', '2019P037'),
('2019TN038', '2019C005', '2019P038'),
('2019TN039', '2019C006', '2019P039'),
('2019TN040', '2019C006', '2019P040'),
('2019TN041', '2019C006', '2019P041'),
('2019TN042', '2019C007', '2019P042'),
('2019TN043', '2019C007', '2019P043'),
('2019TN044', '2019C007', '2019P044'),
('2019TN045', '2019C007', '2019P045'),
('2019TN046', '2019C007', '2019P046'),
('2019TN047', '2019C007', '2019P047'),
('2019TN048', '2019C007', '2019P048'),
('2019TN049', '2019C007', '2019P049'),
('2019TN050', '2019C007', '2019P050'),
('2019TN051', '2019C007', '2019P051'),
('2019TN052', '2019C007', '2019P052'),
('2019TN053', '2019C007', '2019P053'),
('2019TN054', '2019C008', '2019P054'),
('2019TN055', '2019C008', '2019P055'),
('2019TN056', '2019C009', '2019P056'),
('2019TN057', '2019C009', '2019P057'),
('2019TN058', '2019C009', '2019P058'),
('2019TN059', '2019C009', '2019P059'),
('2019TN060', '2019C009', '2019P060'),
('2019TN061', '2019C009', '2019P061'),
('2019TN062', '2019C009', '2019P062'),
('2019TN063', '2019C010', '2019P063'),
('2019TN064', '2019C010', '2019P064'),
('2019TN065', '2019C010', '2019P065'),
('2019TN066', '2019C010', '2019P066'),
('2019TN067', '2019C010', '2019P067'),
('2019TN068', '2019C011', '2019P068'),
('2019TN069', '2019C011', '2019P069'),
('2019TN070', '2019C011', '2019P070'),
('2019TN071', '2019C011', '2019P071'),
('2019TN072', '2019C011', '2019P072'),
('2019TN073', '2019C011', '2019P073'),
('2019TN074', '2019C011', '2019P074'),
('2019TN075', '2019C012', '2019P075'),
('2019TN076', '2019C012', '2019P076'),
('2019TN077', '2019C013', '2019P077'),
('2019TN078', '2019C013', '2019P078'),
('2019TN079', '2019C013', '2019P079'),
('2019TN080', '2019C014', '2019P080'),
('2019TN081', '2019C014', '2019P081'),
('2019TN082', '2019C015', '2019P082');

-- --------------------------------------------------------

--
-- Table structure for table `training_info`
--

CREATE TABLE `training_info` (
  `Training_ID` varchar(20) NOT NULL,
  `Date` date NOT NULL,
  `Batch_No` varchar(10) NOT NULL,
  `Time` time NOT NULL,
  `Extra_Session` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `training_info`
--

INSERT INTO `training_info` (`Training_ID`, `Date`, `Batch_No`, `Time`, `Extra_Session`) VALUES
('2019TN001', '0000-00-00', 'A01', '12:31:00', 1),
('2019TN002', '0000-00-00', 'A01', '08:36:00', 0),
('2019TN003', '0000-00-00', 'A01', '22:40:00', 0),
('2019TN004', '0000-00-00', 'A01', '23:19:00', 0),
('2019TN005', '0000-00-00', 'A01', '11:29:00', 0),
('2019TN006', '0000-00-00', 'A01', '21:49:00', 1),
('2019TN007', '0000-00-00', 'A01', '22:46:00', 1),
('2019TN008', '0000-00-00', 'A01', '17:14:00', 0),
('2019TN009', '0000-00-00', 'A01', '05:14:00', 0),
('2019TN010', '0000-00-00', 'A01', '13:12:00', 1),
('2019TN011', '0000-00-00', 'B01', '05:58:00', 1),
('2019TN012', '0000-00-00', 'B01', '18:23:00', 0),
('2019TN013', '0000-00-00', 'B01', '18:20:00', 0),
('2019TN014', '0000-00-00', 'B01', '21:12:00', 0),
('2019TN015', '0000-00-00', 'B01', '00:32:00', 0),
('2019TN016', '0000-00-00', 'B01', '01:45:00', 0),
('2019TN017', '0000-00-00', 'B01', '16:28:00', 1),
('2019TN018', '0000-00-00', 'B01', '22:45:00', 1),
('2019TN019', '0000-00-00', 'B01', '11:37:00', 0),
('2019TN020', '0000-00-00', 'C01', '00:16:00', 0),
('2019TN021', '0000-00-00', 'C01', '22:40:00', 1),
('2019TN022', '0000-00-00', 'C01', '23:02:00', 1),
('2019TN023', '0000-00-00', 'C01', '06:59:00', 1),
('2019TN024', '0000-00-00', 'C01', '03:04:00', 1),
('2019TN025', '0000-00-00', 'C01', '02:19:00', 0),
('2019TN026', '0000-00-00', 'D01', '20:39:00', 0),
('2019TN027', '0000-00-00', 'D01', '08:25:00', 1),
('2019TN028', '0000-00-00', 'D01', '07:14:00', 0),
('2019TN029', '0000-00-00', 'D01', '11:41:00', 1),
('2019TN030', '0000-00-00', 'D01', '06:52:00', 1),
('2019TN031', '0000-00-00', 'D01', '23:41:00', 0),
('2019TN032', '0000-00-00', 'D01', '02:27:00', 0),
('2019TN033', '0000-00-00', 'E01', '13:13:00', 1),
('2019TN034', '0000-00-00', 'E01', '09:36:00', 0),
('2019TN035', '0000-00-00', 'E01', '06:25:00', 0),
('2019TN036', '0000-00-00', 'E01', '10:43:00', 0),
('2019TN037', '0000-00-00', 'E01', '19:44:00', 1),
('2019TN038', '0000-00-00', 'E01', '22:49:00', 0),
('2019TN039', '0000-00-00', 'E01', '14:01:00', 1),
('2019TN040', '0000-00-00', 'E01', '11:54:00', 0),
('2019TN041', '0000-00-00', 'E01', '13:59:00', 1),
('2019TN042', '0000-00-00', 'E01', '01:02:00', 0),
('2019TN043', '0000-00-00', 'F01', '05:42:00', 0),
('2019TN044', '0000-00-00', 'F01', '08:11:00', 0),
('2019TN045', '0000-00-00', 'F01', '07:46:00', 1),
('2019TN046', '0000-00-00', 'F01', '08:54:00', 1),
('2019TN047', '0000-00-00', 'F01', '21:03:00', 1),
('2019TN048', '0000-00-00', 'F01', '05:23:00', 1),
('2019TN049', '0000-00-00', 'F01', '09:24:00', 1),
('2019TN050', '0000-00-00', 'F01', '01:36:00', 0),
('2019TN051', '0000-00-00', 'F01', '02:56:00', 0),
('2019TN052', '0000-00-00', 'F01', '21:48:00', 0),
('2019TN053', '0000-00-00', 'F01', '05:11:00', 0),
('2019TN054', '0000-00-00', 'F01', '21:55:00', 0),
('2019TN055', '0000-00-00', 'G01', '14:14:00', 1),
('2019TN056', '0000-00-00', 'G01', '08:16:00', 0),
('2019TN057', '0000-00-00', 'G01', '12:30:00', 1),
('2019TN058', '0000-00-00', 'G01', '09:22:00', 1),
('2019TN059', '0000-00-00', 'G01', '21:15:00', 0),
('2019TN060', '0000-00-00', 'G01', '23:24:00', 0),
('2019TN061', '0000-00-00', 'G01', '18:45:00', 0),
('2019TN062', '0000-00-00', 'G01', '21:37:00', 0),
('2019TN063', '0000-00-00', 'G01', '17:08:00', 1),
('2019TN064', '0000-00-00', 'G01', '20:02:00', 0),
('2019TN065', '0000-00-00', 'G01', '23:46:00', 0),
('2019TN066', '0000-00-00', 'G01', '14:20:00', 0),
('2019TN067', '0000-00-00', 'G01', '14:18:00', 0),
('2019TN068', '0000-00-00', 'H01', '03:11:00', 1),
('2019TN069', '0000-00-00', 'H01', '11:24:00', 0),
('2019TN070', '0000-00-00', 'H01', '09:30:00', 1),
('2019TN071', '0000-00-00', 'H01', '22:11:00', 0),
('2019TN072', '0000-00-00', 'H01', '03:05:00', 0),
('2019TN073', '0000-00-00', 'H01', '02:45:00', 0),
('2019TN074', '0000-00-00', 'H01', '03:27:00', 0),
('2019TN075', '0000-00-00', 'H01', '05:56:00', 1),
('2019TN076', '0000-00-00', 'H01', '22:31:00', 1),
('2019TN077', '0000-00-00', 'H01', '19:31:00', 0),
('2019TN078', '0000-00-00', 'H01', '09:46:00', 0),
('2019TN079', '0000-00-00', 'H01', '21:01:00', 0),
('2019TN080', '0000-00-00', 'H01', '08:57:00', 0),
('2019TN081', '0000-00-00', 'H01', '11:43:00', 1),
('2019TN082', '0000-00-00', 'H01', '00:42:00', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `assist`
--
ALTER TABLE `assist`
  ADD PRIMARY KEY (`Player_ID`),
  ADD KEY `A5` (`Coach_ID`);

--
-- Indexes for table `coach`
--
ALTER TABLE `coach`
  ADD PRIMARY KEY (`Coach_ID`);

--
-- Indexes for table `complaint`
--
ALTER TABLE `complaint`
  ADD PRIMARY KEY (`Complaint_No`),
  ADD KEY `A3` (`Complaint_by`),
  ADD KEY `A4` (`Resolved_by`);

--
-- Indexes for table `fitness`
--
ALTER TABLE `fitness`
  ADD PRIMARY KEY (`Player_ID`),
  ADD KEY `A7` (`Trainer_ID`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`User_ID`);

--
-- Indexes for table `player_info`
--
ALTER TABLE `player_info`
  ADD PRIMARY KEY (`Player_ID`);

--
-- Indexes for table `player_statistic`
--
ALTER TABLE `player_statistic`
  ADD PRIMARY KEY (`Player_ID`);

--
-- Indexes for table `salary`
--
ALTER TABLE `salary`
  ADD PRIMARY KEY (`Sr_No`),
  ADD KEY `A2` (`User_ID`);

--
-- Indexes for table `super_admin`
--
ALTER TABLE `super_admin`
  ADD PRIMARY KEY (`Super_Admin_ID`);

--
-- Indexes for table `super_user`
--
ALTER TABLE `super_user`
  ADD PRIMARY KEY (`Super_User_ID`);

--
-- Indexes for table `trainer_info`
--
ALTER TABLE `trainer_info`
  ADD PRIMARY KEY (`Trainer_ID`);

--
-- Indexes for table `training`
--
ALTER TABLE `training`
  ADD PRIMARY KEY (`Training_ID`),
  ADD KEY `B1` (`Player_ID`),
  ADD KEY `B2` (`Coach_ID`);

--
-- Indexes for table `training_info`
--
ALTER TABLE `training_info`
  ADD PRIMARY KEY (`Training_ID`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `assist`
--
ALTER TABLE `assist`
  ADD CONSTRAINT `A5` FOREIGN KEY (`Coach_ID`) REFERENCES `coach` (`Coach_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `A8` FOREIGN KEY (`Player_ID`) REFERENCES `player_info` (`Player_ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `complaint`
--
ALTER TABLE `complaint`
  ADD CONSTRAINT `A3` FOREIGN KEY (`Complaint_by`) REFERENCES `player_info` (`Player_ID`),
  ADD CONSTRAINT `A4` FOREIGN KEY (`Resolved_by`) REFERENCES `super_user` (`Super_User_ID`);

--
-- Constraints for table `fitness`
--
ALTER TABLE `fitness`
  ADD CONSTRAINT `A6` FOREIGN KEY (`Player_ID`) REFERENCES `player_info` (`Player_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `A7` FOREIGN KEY (`Trainer_ID`) REFERENCES `trainer_info` (`Trainer_ID`) ON DELETE SET NULL ON UPDATE NO ACTION;

--
-- Constraints for table `player_statistic`
--
ALTER TABLE `player_statistic`
  ADD CONSTRAINT `A1` FOREIGN KEY (`Player_ID`) REFERENCES `player_info` (`Player_ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `salary`
--
ALTER TABLE `salary`
  ADD CONSTRAINT `A2` FOREIGN KEY (`User_ID`) REFERENCES `login` (`User_ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `training`
--
ALTER TABLE `training`
  ADD CONSTRAINT `B1` FOREIGN KEY (`Player_ID`) REFERENCES `player_info` (`Player_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `B2` FOREIGN KEY (`Coach_ID`) REFERENCES `coach` (`Coach_ID`) ON DELETE SET NULL ON UPDATE NO ACTION,
  ADD CONSTRAINT `B3` FOREIGN KEY (`Training_ID`) REFERENCES `training_info` (`Training_ID`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
