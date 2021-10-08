-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: sql6.freesqldatabase.com
-- Generation Time: Apr 03, 2021 at 05:44 PM
-- Server version: 5.5.62-0ubuntu0.14.04.1
-- PHP Version: 7.2.24-0ubuntu0.18.04.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sql6402581`
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
('180204006@aust.edu', '25426deebf91380dd4e33d79eef0741a', 'student'),
('190104062@aust.edu', 'a4499ee992edb823173b42db0c999856', 'teacher'),
('190104067@aust.edu', 'ab448ca462ee857ae411365b9a5382f8', 'teacher'),
('monimhossain717@gmail.com', 'a4499ee992edb823173b42db0c999856', 'student'),
('rakibhasan15144@gmail.com', 'ab448ca462ee857ae411365b9a5382f8', 'student'),
('rakibhasanaust67@gmail.com', 'ab448ca462ee857ae411365b9a5382f8', 'student'),
('ramimonan01@gmail.com', 'b1060f0ea8183cf8e6bf821405799fb9', 'teacher'),
('shakirmahmud50@gmail.com', 'ae394829d0aaa792d66adcb8f35ea41a', 'teacher');

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
('350n2x', 'CSE 2100 B1', 'Software Development II', '190104067@aust.edu', 'Quiz 02 will be held on 4th April, 2021 (Sunday).\nSyllabus:\nLecture 1 to 5.'),
('7kqozi', 'EEE@2141', 'EEE', 'shakirmahmud50@gmail.com', 'This is not a test.'),
('fn912r', 'DLD', 'DLD', 'ramimonan01@gmail.com', ''),
('j1c04n', 'CSE-2105 B', 'Digital Logic Design', '190104062@aust.edu', ''),
('rvmk68', 'CSE-2100 B1', 'Software Development Lab', '190104062@aust.edu', '04/04/21 Project Final Evaluation!!!'),
('vme68t', 'CSE-2103 B', 'Data Structure', '190104062@aust.edu', 'Welcome to Data Structure class!!!');

-- --------------------------------------------------------

--
-- Table structure for table `c_7kqozi`
--

CREATE TABLE `c_7kqozi` (
  `StudentEmail` varchar(100) NOT NULL DEFAULT '',
  `AccountID` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `c_7kqozi`
--

INSERT INTO `c_7kqozi` (`StudentEmail`, `AccountID`) VALUES
('rakibhasan15144@gmail.com', 'izq3gc');

-- --------------------------------------------------------

--
-- Table structure for table `c_350n2x`
--

CREATE TABLE `c_350n2x` (
  `StudentEmail` varchar(100) NOT NULL DEFAULT '',
  `AccountID` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `c_350n2x`
--

INSERT INTO `c_350n2x` (`StudentEmail`, `AccountID`) VALUES
('180204006@aust.edu', 'osi56o'),
('monimhossain717@gmail.com', 'r0ikyi'),
('rakibhasan15144@gmail.com', 'izq3gc'),
('rakibhasanaust67@gmail.com', 'vsazob');

-- --------------------------------------------------------

--
-- Table structure for table `c_fn912r`
--

CREATE TABLE `c_fn912r` (
  `StudentEmail` varchar(100) NOT NULL DEFAULT '',
  `AccountID` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `c_fn912r`
--

INSERT INTO `c_fn912r` (`StudentEmail`, `AccountID`) VALUES
('rakibhasan15144@gmail.com', 'izq3gc');

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
('180204006@aust.edu', 'osi56o'),
('monimhossain717@gmail.com', 'r0ikyi'),
('rakibhasan15144@gmail.com', 'izq3gc'),
('rakibhasanaust67@gmail.com', 'vsazob');

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
-- Table structure for table `izq3gc_7kqozi_attend`
--

CREATE TABLE `izq3gc_7kqozi_attend` (
  `Date` varchar(100) NOT NULL DEFAULT '',
  `Attendance` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `izq3gc_7kqozi_attend`
--

INSERT INTO `izq3gc_7kqozi_attend` (`Date`, `Attendance`) VALUES
('2021-04-02', 'P');

-- --------------------------------------------------------

--
-- Table structure for table `izq3gc_7kqozi_marks`
--

CREATE TABLE `izq3gc_7kqozi_marks` (
  `ExamName` varchar(100) NOT NULL DEFAULT '',
  `Marks` double DEFAULT NULL,
  `TotalMarks` double DEFAULT NULL,
  `ConvertedMarks` double DEFAULT NULL,
  `ConvertedTotalMarks` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `izq3gc_7kqozi_marks`
--

INSERT INTO `izq3gc_7kqozi_marks` (`ExamName`, `Marks`, `TotalMarks`, `ConvertedMarks`, `ConvertedTotalMarks`) VALUES
('Quiz 01', 5.5, 10, 16.5, 30);

-- --------------------------------------------------------

--
-- Table structure for table `izq3gc_350n2x_attend`
--

CREATE TABLE `izq3gc_350n2x_attend` (
  `Date` varchar(100) NOT NULL DEFAULT '',
  `Attendance` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `izq3gc_350n2x_attend`
--

INSERT INTO `izq3gc_350n2x_attend` (`Date`, `Attendance`) VALUES
('2021-04-06', ''),
('2021-04-11', ''),
('2021-04-13', ''),
('2021-04-18', ''),
('2021-04-20', ''),
('2021-04-21', 'P'),
('2021-04-26', 'P'),
('2021-04-27', 'P'),
('2021-04-28', 'P'),
('2021-04-29', ''),
('2021-04-30', 'P');

-- --------------------------------------------------------

--
-- Table structure for table `izq3gc_350n2x_marks`
--

CREATE TABLE `izq3gc_350n2x_marks` (
  `ExamName` varchar(100) NOT NULL DEFAULT '',
  `Marks` double DEFAULT NULL,
  `TotalMarks` double DEFAULT NULL,
  `ConvertedMarks` double DEFAULT NULL,
  `ConvertedTotalMarks` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `izq3gc_350n2x_marks`
--

INSERT INTO `izq3gc_350n2x_marks` (`ExamName`, `Marks`, `TotalMarks`, `ConvertedMarks`, `ConvertedTotalMarks`) VALUES
('Quiz 01', 8, 10, 12, 15),
('Quiz 02', 8.5, 10, 12.75, 15),
('Quiz 03', 9, 10, 13.5, 15);

-- --------------------------------------------------------

--
-- Table structure for table `izq3gc_fn912r_attend`
--

CREATE TABLE `izq3gc_fn912r_attend` (
  `Date` varchar(100) NOT NULL DEFAULT '',
  `Attendance` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `izq3gc_fn912r_attend`
--

INSERT INTO `izq3gc_fn912r_attend` (`Date`, `Attendance`) VALUES
('2021-04-02', 'P');

-- --------------------------------------------------------

--
-- Table structure for table `izq3gc_fn912r_marks`
--

CREATE TABLE `izq3gc_fn912r_marks` (
  `ExamName` varchar(100) NOT NULL DEFAULT '',
  `Marks` double DEFAULT NULL,
  `TotalMarks` double DEFAULT NULL,
  `ConvertedMarks` double DEFAULT NULL,
  `ConvertedTotalMarks` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `izq3gc_fn912r_marks`
--

INSERT INTO `izq3gc_fn912r_marks` (`ExamName`, `Marks`, `TotalMarks`, `ConvertedMarks`, `ConvertedTotalMarks`) VALUES
('DLD', 100, 100, 100, 100);

-- --------------------------------------------------------

--
-- Table structure for table `izq3gc_rvmk68_attend`
--

CREATE TABLE `izq3gc_rvmk68_attend` (
  `Date` varchar(100) NOT NULL DEFAULT '',
  `Attendance` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `izq3gc_rvmk68_attend`
--

INSERT INTO `izq3gc_rvmk68_attend` (`Date`, `Attendance`) VALUES
('2021-04-02', 'P'),
('2021-04-03', 'P'),
('2021-04-04', 'P'),
('2021-04-05', ''),
('2021-04-06', ''),
('2021-04-07', 'P');

-- --------------------------------------------------------

--
-- Table structure for table `izq3gc_rvmk68_marks`
--

CREATE TABLE `izq3gc_rvmk68_marks` (
  `ExamName` varchar(100) NOT NULL DEFAULT '',
  `Marks` double DEFAULT NULL,
  `TotalMarks` double DEFAULT NULL,
  `ConvertedMarks` double DEFAULT NULL,
  `ConvertedTotalMarks` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `izq3gc_rvmk68_marks`
--

INSERT INTO `izq3gc_rvmk68_marks` (`ExamName`, `Marks`, `TotalMarks`, `ConvertedMarks`, `ConvertedTotalMarks`) VALUES
('Quiz 1', 6, 10, 18, 30),
('Quiz 2', 10, 10, 30, 30),
('Quiz 3', 10, 10, 30, 30);

-- --------------------------------------------------------

--
-- Table structure for table `osi56o_350n2x_attend`
--

CREATE TABLE `osi56o_350n2x_attend` (
  `Date` varchar(100) NOT NULL DEFAULT '',
  `Attendance` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `osi56o_350n2x_attend`
--

INSERT INTO `osi56o_350n2x_attend` (`Date`, `Attendance`) VALUES
('2021-04-06', ''),
('2021-04-11', ''),
('2021-04-13', ''),
('2021-04-18', ''),
('2021-04-20', ''),
('2021-04-26', ''),
('2021-04-27', ''),
('2021-04-28', ''),
('2021-04-29', ''),
('2021-04-30', '');

-- --------------------------------------------------------

--
-- Table structure for table `osi56o_350n2x_marks`
--

CREATE TABLE `osi56o_350n2x_marks` (
  `ExamName` varchar(100) NOT NULL DEFAULT '',
  `Marks` double DEFAULT NULL,
  `TotalMarks` double DEFAULT NULL,
  `ConvertedMarks` double DEFAULT NULL,
  `ConvertedTotalMarks` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `osi56o_350n2x_marks`
--

INSERT INTO `osi56o_350n2x_marks` (`ExamName`, `Marks`, `TotalMarks`, `ConvertedMarks`, `ConvertedTotalMarks`) VALUES
('Quiz 01', 9, 10, 13.5, 15),
('Quiz 02', 0, 10, 0, 15),
('Quiz 03', 0, 10, 0, 15);

-- --------------------------------------------------------

--
-- Table structure for table `osi56o_rvmk68_attend`
--

CREATE TABLE `osi56o_rvmk68_attend` (
  `Date` varchar(100) NOT NULL DEFAULT '',
  `Attendance` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `osi56o_rvmk68_attend`
--

INSERT INTO `osi56o_rvmk68_attend` (`Date`, `Attendance`) VALUES
('2021-04-02', 'P'),
('2021-04-03', 'P'),
('2021-04-04', 'P'),
('2021-04-05', 'P'),
('2021-04-06', 'P'),
('2021-04-07', 'P');

-- --------------------------------------------------------

--
-- Table structure for table `osi56o_rvmk68_marks`
--

CREATE TABLE `osi56o_rvmk68_marks` (
  `ExamName` varchar(100) NOT NULL DEFAULT '',
  `Marks` double DEFAULT NULL,
  `TotalMarks` double DEFAULT NULL,
  `ConvertedMarks` double DEFAULT NULL,
  `ConvertedTotalMarks` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `osi56o_rvmk68_marks`
--

INSERT INTO `osi56o_rvmk68_marks` (`ExamName`, `Marks`, `TotalMarks`, `ConvertedMarks`, `ConvertedTotalMarks`) VALUES
('Quiz 1', 8, 10, 24, 30),
('Quiz 2', 7, 10, 21, 30),
('Quiz 3', 7, 10, 21, 30);

-- --------------------------------------------------------

--
-- Table structure for table `r0ikyi_350n2x_attend`
--

CREATE TABLE `r0ikyi_350n2x_attend` (
  `Date` varchar(100) NOT NULL DEFAULT '',
  `Attendance` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `r0ikyi_350n2x_attend`
--

INSERT INTO `r0ikyi_350n2x_attend` (`Date`, `Attendance`) VALUES
('2021-04-06', ''),
('2021-04-11', ''),
('2021-04-13', ''),
('2021-04-18', ''),
('2021-04-20', 'P'),
('2021-04-26', ''),
('2021-04-27', ''),
('2021-04-28', ''),
('2021-04-29', ''),
('2021-04-30', '');

-- --------------------------------------------------------

--
-- Table structure for table `r0ikyi_350n2x_marks`
--

CREATE TABLE `r0ikyi_350n2x_marks` (
  `ExamName` varchar(100) NOT NULL DEFAULT '',
  `Marks` double DEFAULT NULL,
  `TotalMarks` double DEFAULT NULL,
  `ConvertedMarks` double DEFAULT NULL,
  `ConvertedTotalMarks` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `r0ikyi_350n2x_marks`
--

INSERT INTO `r0ikyi_350n2x_marks` (`ExamName`, `Marks`, `TotalMarks`, `ConvertedMarks`, `ConvertedTotalMarks`) VALUES
('Quiz 01', 5, 10, 7.5, 15),
('Quiz 02', 0, 10, 0, 15),
('Quiz 03', 0, 10, 0, 15);

-- --------------------------------------------------------

--
-- Table structure for table `r0ikyi_rvmk68_attend`
--

CREATE TABLE `r0ikyi_rvmk68_attend` (
  `Date` varchar(100) NOT NULL,
  `Attendance` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `r0ikyi_rvmk68_attend`
--

INSERT INTO `r0ikyi_rvmk68_attend` (`Date`, `Attendance`) VALUES
('2021-04-02', 'P'),
('2021-04-03', 'P'),
('2021-04-04', 'P'),
('2021-04-05', 'P'),
('2021-04-06', 'P'),
('2021-04-07', 'P');

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

--
-- Dumping data for table `r0ikyi_rvmk68_marks`
--

INSERT INTO `r0ikyi_rvmk68_marks` (`ExamName`, `Marks`, `TotalMarks`, `ConvertedMarks`, `ConvertedTotalMarks`) VALUES
('Quiz 1', 9, 10, 27, 30),
('Quiz 2', 9, 10, 27, 30),
('Quiz 3', 9, 10, 27, 30);

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
('2021-03-30', 'P');

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
('180204006@aust.edu', 'osi56o'),
('monimhossain717@gmail.com', 'r0ikyi'),
('rakibhasan15144@gmail.com', 'izq3gc'),
('rakibhasanaust67@gmail.com', 'vsazob');

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
('180204006@aust.edu', 'Rafiur Rafim', '180204006', 'Aust', 'CSe', '2021', '2', 'B', '12'),
('monimhossain717@gmail.com', 'Monim Hossain', '190104062', 'AUST', 'CSE', '2nd', '1st', 'B', '01611135311'),
('rakibhasan15144@gmail.com', 'Rakib Hasan Bappy', '190104067', 'AUST', 'CSE', '2nd', '1st', 'B', '01572136789'),
('rakibhasanaust67@gmail.com', 'MD. Shakir Mahmud', '190104063', 'AUST', 'CSE', '2nd', '1st', 'B', '01572136789');

-- --------------------------------------------------------

--
-- Table structure for table `s_izq3gc`
--

CREATE TABLE `s_izq3gc` (
  `ClassroomCode` varchar(100) NOT NULL DEFAULT '',
  `TotalClasses` int(11) DEFAULT NULL,
  `TotalAttendance` int(11) DEFAULT NULL,
  `AttendanceMarks` double DEFAULT NULL,
  `TotalAttendanceMarks` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `s_izq3gc`
--

INSERT INTO `s_izq3gc` (`ClassroomCode`, `TotalClasses`, `TotalAttendance`, `AttendanceMarks`, `TotalAttendanceMarks`) VALUES
('350n2x', 7, 2, 3, 10),
('7kqozi', 1, 1, 10, 10),
('fn912r', 1, 1, 10, 10),
('rvmk68', 6, 4, 7, 10);

-- --------------------------------------------------------

--
-- Table structure for table `s_osi56o`
--

CREATE TABLE `s_osi56o` (
  `ClassroomCode` varchar(100) NOT NULL DEFAULT '',
  `TotalClasses` int(11) DEFAULT NULL,
  `TotalAttendance` int(11) DEFAULT NULL,
  `AttendanceMarks` double DEFAULT NULL,
  `TotalAttendanceMarks` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `s_osi56o`
--

INSERT INTO `s_osi56o` (`ClassroomCode`, `TotalClasses`, `TotalAttendance`, `AttendanceMarks`, `TotalAttendanceMarks`) VALUES
('350n2x', 6, 0, 0, 10),
('rvmk68', 6, 6, 10, 10);

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
('350n2x', 6, 1, 2, 10),
('rvmk68', 6, 6, 10, 10),
('vme68t', 3, 2, 7, 10);

-- --------------------------------------------------------

--
-- Table structure for table `s_vsazob`
--

CREATE TABLE `s_vsazob` (
  `ClassroomCode` varchar(100) NOT NULL DEFAULT '',
  `TotalClasses` int(11) DEFAULT NULL,
  `TotalAttendance` int(11) DEFAULT NULL,
  `AttendanceMarks` double DEFAULT NULL,
  `TotalAttendanceMarks` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `s_vsazob`
--

INSERT INTO `s_vsazob` (`ClassroomCode`, `TotalClasses`, `TotalAttendance`, `AttendanceMarks`, `TotalAttendanceMarks`) VALUES
('350n2x', 6, 4, 7, 10),
('rvmk68', 6, 5, 8, 10);

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
('190104062@aust.edu', 'Md. Monim Hossain', 'BRAC', 'EEE', 'Professor', '01869737771'),
('190104067@aust.edu', 'Rakib Hasan Bappy', 'AUST', 'CSE', 'Lecturer', '01761900420'),
('ramimonan01@gmail.com', 'Shafiqur Rahman Ramim', 'NUB', 'CSE', 'Lecturer', '01747569816'),
('shakirmahmud50@gmail.com', 'Shakir Mahmud', 'AUST', 'EEE', 'lecturer', '017934849234');

-- --------------------------------------------------------

--
-- Table structure for table `vsazob_350n2x_attend`
--

CREATE TABLE `vsazob_350n2x_attend` (
  `Date` varchar(100) NOT NULL DEFAULT '',
  `Attendance` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vsazob_350n2x_attend`
--

INSERT INTO `vsazob_350n2x_attend` (`Date`, `Attendance`) VALUES
('2021-04-06', 'P'),
('2021-04-11', 'P'),
('2021-04-13', 'P'),
('2021-04-18', 'P'),
('2021-04-20', ''),
('2021-04-26', ''),
('2021-04-27', ''),
('2021-04-28', ''),
('2021-04-29', ''),
('2021-04-30', '');

-- --------------------------------------------------------

--
-- Table structure for table `vsazob_350n2x_marks`
--

CREATE TABLE `vsazob_350n2x_marks` (
  `ExamName` varchar(100) NOT NULL DEFAULT '',
  `Marks` double DEFAULT NULL,
  `TotalMarks` double DEFAULT NULL,
  `ConvertedMarks` double DEFAULT NULL,
  `ConvertedTotalMarks` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vsazob_350n2x_marks`
--

INSERT INTO `vsazob_350n2x_marks` (`ExamName`, `Marks`, `TotalMarks`, `ConvertedMarks`, `ConvertedTotalMarks`) VALUES
('Quiz 01', 1, 10, 1.5, 15),
('Quiz 02', 0, 10, 0, 15),
('Quiz 03', 0, 10, 0, 15);

-- --------------------------------------------------------

--
-- Table structure for table `vsazob_rvmk68_attend`
--

CREATE TABLE `vsazob_rvmk68_attend` (
  `Date` varchar(100) NOT NULL DEFAULT '',
  `Attendance` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vsazob_rvmk68_attend`
--

INSERT INTO `vsazob_rvmk68_attend` (`Date`, `Attendance`) VALUES
('2021-04-02', 'P'),
('2021-04-03', 'P'),
('2021-04-04', ''),
('2021-04-05', 'P'),
('2021-04-06', 'P'),
('2021-04-07', 'P');

-- --------------------------------------------------------

--
-- Table structure for table `vsazob_rvmk68_marks`
--

CREATE TABLE `vsazob_rvmk68_marks` (
  `ExamName` varchar(100) NOT NULL DEFAULT '',
  `Marks` double DEFAULT NULL,
  `TotalMarks` double DEFAULT NULL,
  `ConvertedMarks` double DEFAULT NULL,
  `ConvertedTotalMarks` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vsazob_rvmk68_marks`
--

INSERT INTO `vsazob_rvmk68_marks` (`ExamName`, `Marks`, `TotalMarks`, `ConvertedMarks`, `ConvertedTotalMarks`) VALUES
('Quiz 1', 10, 10, 30, 30),
('Quiz 2', 9, 10, 27, 30),
('Quiz 3', 9, 10, 27, 30);

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
-- Indexes for table `c_7kqozi`
--
ALTER TABLE `c_7kqozi`
  ADD PRIMARY KEY (`StudentEmail`);

--
-- Indexes for table `c_350n2x`
--
ALTER TABLE `c_350n2x`
  ADD PRIMARY KEY (`StudentEmail`);

--
-- Indexes for table `c_fn912r`
--
ALTER TABLE `c_fn912r`
  ADD PRIMARY KEY (`StudentEmail`);

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
-- Indexes for table `izq3gc_7kqozi_attend`
--
ALTER TABLE `izq3gc_7kqozi_attend`
  ADD PRIMARY KEY (`Date`);

--
-- Indexes for table `izq3gc_7kqozi_marks`
--
ALTER TABLE `izq3gc_7kqozi_marks`
  ADD PRIMARY KEY (`ExamName`);

--
-- Indexes for table `izq3gc_350n2x_attend`
--
ALTER TABLE `izq3gc_350n2x_attend`
  ADD PRIMARY KEY (`Date`);

--
-- Indexes for table `izq3gc_350n2x_marks`
--
ALTER TABLE `izq3gc_350n2x_marks`
  ADD PRIMARY KEY (`ExamName`);

--
-- Indexes for table `izq3gc_fn912r_attend`
--
ALTER TABLE `izq3gc_fn912r_attend`
  ADD PRIMARY KEY (`Date`);

--
-- Indexes for table `izq3gc_fn912r_marks`
--
ALTER TABLE `izq3gc_fn912r_marks`
  ADD PRIMARY KEY (`ExamName`);

--
-- Indexes for table `izq3gc_rvmk68_attend`
--
ALTER TABLE `izq3gc_rvmk68_attend`
  ADD PRIMARY KEY (`Date`);

--
-- Indexes for table `izq3gc_rvmk68_marks`
--
ALTER TABLE `izq3gc_rvmk68_marks`
  ADD PRIMARY KEY (`ExamName`);

--
-- Indexes for table `osi56o_350n2x_attend`
--
ALTER TABLE `osi56o_350n2x_attend`
  ADD PRIMARY KEY (`Date`);

--
-- Indexes for table `osi56o_350n2x_marks`
--
ALTER TABLE `osi56o_350n2x_marks`
  ADD PRIMARY KEY (`ExamName`);

--
-- Indexes for table `osi56o_rvmk68_attend`
--
ALTER TABLE `osi56o_rvmk68_attend`
  ADD PRIMARY KEY (`Date`);

--
-- Indexes for table `osi56o_rvmk68_marks`
--
ALTER TABLE `osi56o_rvmk68_marks`
  ADD PRIMARY KEY (`ExamName`);

--
-- Indexes for table `r0ikyi_350n2x_attend`
--
ALTER TABLE `r0ikyi_350n2x_attend`
  ADD PRIMARY KEY (`Date`);

--
-- Indexes for table `r0ikyi_350n2x_marks`
--
ALTER TABLE `r0ikyi_350n2x_marks`
  ADD PRIMARY KEY (`ExamName`);

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
-- Indexes for table `s_izq3gc`
--
ALTER TABLE `s_izq3gc`
  ADD PRIMARY KEY (`ClassroomCode`);

--
-- Indexes for table `s_osi56o`
--
ALTER TABLE `s_osi56o`
  ADD PRIMARY KEY (`ClassroomCode`);

--
-- Indexes for table `s_r0ikyi`
--
ALTER TABLE `s_r0ikyi`
  ADD PRIMARY KEY (`ClassroomCode`);

--
-- Indexes for table `s_vsazob`
--
ALTER TABLE `s_vsazob`
  ADD PRIMARY KEY (`ClassroomCode`);

--
-- Indexes for table `teacherdetails`
--
ALTER TABLE `teacherdetails`
  ADD PRIMARY KEY (`Email`),
  ADD UNIQUE KEY `Email` (`Email`);

--
-- Indexes for table `vsazob_350n2x_attend`
--
ALTER TABLE `vsazob_350n2x_attend`
  ADD PRIMARY KEY (`Date`);

--
-- Indexes for table `vsazob_350n2x_marks`
--
ALTER TABLE `vsazob_350n2x_marks`
  ADD PRIMARY KEY (`ExamName`);

--
-- Indexes for table `vsazob_rvmk68_attend`
--
ALTER TABLE `vsazob_rvmk68_attend`
  ADD PRIMARY KEY (`Date`);

--
-- Indexes for table `vsazob_rvmk68_marks`
--
ALTER TABLE `vsazob_rvmk68_marks`
  ADD PRIMARY KEY (`ExamName`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
