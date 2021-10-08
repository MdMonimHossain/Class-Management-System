-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 31, 2021 at 08:18 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `classmanagementdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounts`
--

CREATE TABLE `accounts` (
  `Email` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `AccountType` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `accounts`
--

INSERT INTO `accounts` (`Email`, `Password`, `AccountType`) VALUES
('190104062@aust.edu', 'a4499ee992edb823173b42db0c999856', 'teacher'),
('monimhossain717@gmail.com', 'a4499ee992edb823173b42db0c999856', 'student');

-- --------------------------------------------------------

--
-- Table structure for table `classrooms`
--

CREATE TABLE `classrooms` (
  `ClassroomCode` varchar(100) NOT NULL,
  `ClassroomName` varchar(100) NOT NULL,
  `CourseName` varchar(100) NOT NULL,
  `TeacherEmail` varchar(100) NOT NULL,
  `Announcement` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `classrooms`
--

INSERT INTO `classrooms` (`ClassroomCode`, `ClassroomName`, `CourseName`, `TeacherEmail`, `Announcement`) VALUES
('j1c04n', 'CSE-2105 B', 'Digital Logic Design', '190104062@aust.edu', ''),
('rvmk68', 'CSE-2100 B1', 'Software Development Lab', '190104062@aust.edu', ''),
('vme68t', 'CSE-2103 B', 'Data Structure', '190104062@aust.edu', 'Welcome to Data Structure class!!!');

-- --------------------------------------------------------

--
-- Table structure for table `c_j1c04n`
--

CREATE TABLE `c_j1c04n` (
  `StudentEmail` varchar(100) NOT NULL,
  `AccountID` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `c_rvmk68`
--

CREATE TABLE `c_rvmk68` (
  `StudentEmail` varchar(100) NOT NULL,
  `AccountID` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `c_rvmk68`
--

INSERT INTO `c_rvmk68` (`StudentEmail`, `AccountID`) VALUES
('monimhossain717@gmail.com', 'r0ikyi');

-- --------------------------------------------------------

--
-- Table structure for table `c_vme68t`
--

CREATE TABLE `c_vme68t` (
  `StudentEmail` varchar(100) NOT NULL,
  `AccountID` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `c_vme68t`
--

INSERT INTO `c_vme68t` (`StudentEmail`, `AccountID`) VALUES
('monimhossain717@gmail.com', 'r0ikyi');

-- --------------------------------------------------------

--
-- Table structure for table `r0ikyi_rvmk68_attend`
--

CREATE TABLE `r0ikyi_rvmk68_attend` (
  `Date` varchar(100) NOT NULL,
  `Attendance` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `r0ikyi_rvmk68_marks`
--

CREATE TABLE `r0ikyi_rvmk68_marks` (
  `ExamName` varchar(100) NOT NULL,
  `Marks` double DEFAULT NULL,
  `TotalMarks` double DEFAULT NULL,
  `ConvertedMarks` double DEFAULT NULL,
  `ConvertedTotalMarks` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `r0ikyi_vme68t_attend`
--

CREATE TABLE `r0ikyi_vme68t_attend` (
  `Date` varchar(100) NOT NULL,
  `Attendance` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `r0ikyi_vme68t_attend`
--

INSERT INTO `r0ikyi_vme68t_attend` (`Date`, `Attendance`) VALUES
('2021-03-28', 'P'),
('2021-03-29', ''),
('2021-03-30', 'P'),
('2021-04-01', 'P');

-- --------------------------------------------------------

--
-- Table structure for table `r0ikyi_vme68t_marks`
--

CREATE TABLE `r0ikyi_vme68t_marks` (
  `ExamName` varchar(100) NOT NULL,
  `Marks` double DEFAULT NULL,
  `TotalMarks` double DEFAULT NULL,
  `ConvertedMarks` double DEFAULT NULL,
  `ConvertedTotalMarks` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `r0ikyi_vme68t_marks`
--

INSERT INTO `r0ikyi_vme68t_marks` (`ExamName`, `Marks`, `TotalMarks`, `ConvertedMarks`, `ConvertedTotalMarks`) VALUES
('Quiz 1', 10, 10, 30, 30),
('Quiz 2', 8, 10, 24, 30);

-- --------------------------------------------------------

--
-- Table structure for table `studentaccounts`
--

CREATE TABLE `studentaccounts` (
  `Email` varchar(100) NOT NULL,
  `AccountID` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `studentaccounts`
--

INSERT INTO `studentaccounts` (`Email`, `AccountID`) VALUES
('monimhossain717@gmail.com', 'r0ikyi');

-- --------------------------------------------------------

--
-- Table structure for table `studentdetails`
--

CREATE TABLE `studentdetails` (
  `Email` varchar(100) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `ID` varchar(100) NOT NULL,
  `Institution` varchar(100) NOT NULL,
  `Department` varchar(100) NOT NULL,
  `Year` varchar(100) NOT NULL,
  `Semester` varchar(100) NOT NULL,
  `Section` varchar(100) NOT NULL,
  `ContactNo` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `studentdetails`
--

INSERT INTO `studentdetails` (`Email`, `Name`, `ID`, `Institution`, `Department`, `Year`, `Semester`, `Section`, `ContactNo`) VALUES
('monimhossain717@gmail.com', 'Monim Hossain', '190104062', 'AUST', 'CSE', '2nd', '1st', 'B', '01611135311');

-- --------------------------------------------------------

--
-- Table structure for table `s_r0ikyi`
--

CREATE TABLE `s_r0ikyi` (
  `ClassroomCode` varchar(100) NOT NULL,
  `TotalClasses` int(11) DEFAULT NULL,
  `TotalAttendance` int(11) DEFAULT NULL,
  `AttendanceMarks` double DEFAULT NULL,
  `TotalAttendanceMarks` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `s_r0ikyi`
--

INSERT INTO `s_r0ikyi` (`ClassroomCode`, `TotalClasses`, `TotalAttendance`, `AttendanceMarks`, `TotalAttendanceMarks`) VALUES
('rvmk68', 0, 0, 0, 10),
('vme68t', 4, 3, 8, 10);

-- --------------------------------------------------------

--
-- Table structure for table `teacherdetails`
--

CREATE TABLE `teacherdetails` (
  `Email` varchar(100) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Institution` varchar(100) NOT NULL,
  `Department` varchar(100) NOT NULL,
  `Designation` varchar(100) NOT NULL,
  `ContactNo` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `teacherdetails`
--

INSERT INTO `teacherdetails` (`Email`, `Name`, `Institution`, `Department`, `Designation`, `ContactNo`) VALUES
('190104062@aust.edu', 'Md. Monim Hossain', 'BRAC', 'EEE', 'Professor', '01869737771');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`Email`),
  ADD UNIQUE KEY `email` (`Email`);

--
-- Indexes for table `classrooms`
--
ALTER TABLE `classrooms`
  ADD PRIMARY KEY (`ClassroomCode`),
  ADD UNIQUE KEY `ClassroomCode` (`ClassroomCode`);

--
-- Indexes for table `c_j1c04n`
--
ALTER TABLE `c_j1c04n`
  ADD PRIMARY KEY (`StudentEmail`);

--
-- Indexes for table `c_rvmk68`
--
ALTER TABLE `c_rvmk68`
  ADD PRIMARY KEY (`StudentEmail`);

--
-- Indexes for table `c_vme68t`
--
ALTER TABLE `c_vme68t`
  ADD PRIMARY KEY (`StudentEmail`);

--
-- Indexes for table `r0ikyi_rvmk68_attend`
--
ALTER TABLE `r0ikyi_rvmk68_attend`
  ADD PRIMARY KEY (`Date`);

--
-- Indexes for table `r0ikyi_rvmk68_marks`
--
ALTER TABLE `r0ikyi_rvmk68_marks`
  ADD PRIMARY KEY (`ExamName`);

--
-- Indexes for table `r0ikyi_vme68t_attend`
--
ALTER TABLE `r0ikyi_vme68t_attend`
  ADD PRIMARY KEY (`Date`);

--
-- Indexes for table `r0ikyi_vme68t_marks`
--
ALTER TABLE `r0ikyi_vme68t_marks`
  ADD PRIMARY KEY (`ExamName`);

--
-- Indexes for table `studentaccounts`
--
ALTER TABLE `studentaccounts`
  ADD PRIMARY KEY (`Email`),
  ADD UNIQUE KEY `Email` (`Email`);

--
-- Indexes for table `studentdetails`
--
ALTER TABLE `studentdetails`
  ADD PRIMARY KEY (`Email`),
  ADD UNIQUE KEY `Email` (`Email`);

--
-- Indexes for table `s_r0ikyi`
--
ALTER TABLE `s_r0ikyi`
  ADD PRIMARY KEY (`ClassroomCode`);

--
-- Indexes for table `teacherdetails`
--
ALTER TABLE `teacherdetails`
  ADD PRIMARY KEY (`Email`),
  ADD UNIQUE KEY `Email` (`Email`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
