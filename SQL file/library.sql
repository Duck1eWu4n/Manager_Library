-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 04, 2024 at 07:34 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `library`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `FullName` varchar(100) DEFAULT NULL,
  `AdminEmail` varchar(120) DEFAULT NULL,
  `UserName` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `updationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `FullName`, `AdminEmail`, `UserName`, `Password`, `updationDate`) VALUES
(1, 'Nguyen Quang An', 'anquangnguyen27@gmail.com', 'admin', '5cf84f3ec867282ccffd0dfcdeb17765', '2024-11-20 06:03:56');

-- --------------------------------------------------------

--
-- Table structure for table `tblauthors`
--

CREATE TABLE `tblauthors` (
  `id` int(11) NOT NULL,
  `AuthorName` varchar(159) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblauthors`
--

INSERT INTO `tblauthors` (`id`, `AuthorName`, `creationDate`, `UpdationDate`) VALUES
(1, 'Richard Dawkins', '2024-11-25 07:23:03', '2024-12-04 06:34:19'),
(2, 'Kerry Patterson', '2024-11-25 07:23:03', '2024-12-04 06:34:26'),
(3, 'Kenneth W. Ford', '2024-11-25 07:23:03', '2024-12-04 06:34:26'),
(4, 'Peter F. Drucker', '2024-11-25 07:23:03', '2024-12-04 06:34:26'),
(5, 'Matthew Ball', '2024-11-25 07:23:03', '2024-12-04 06:34:26'),
(9, 'William Goldman', '2024-11-25 07:23:03', '2024-12-04 06:34:26'),
(10, 'Robert C. Martin', '2024-11-25 07:23:03', '2024-12-04 06:34:26'),
(11, 'Will Larson ', '2024-11-25 07:23:03', '2024-12-04 06:34:26'),
(12, 'Jane Austen', '2024-11-25 07:23:03', '2024-12-04 06:34:26'),
(13, 'Carl Sagan', '2024-11-25 07:23:03', '2024-12-04 06:34:26'),
(14, 'Benson E. Gabriel', '2024-11-25 07:23:03', '2024-12-04 06:34:26');

-- --------------------------------------------------------

--
-- Table structure for table `tblbooks`
--

CREATE TABLE `tblbooks` (
  `id` int(11) NOT NULL,
  `BookName` varchar(255) DEFAULT NULL,
  `CatId` int(11) DEFAULT NULL,
  `AuthorId` int(11) DEFAULT NULL,
  `ISBNNumber` varchar(25) DEFAULT NULL,
  `BookPrice` decimal(10,2) DEFAULT NULL,
  `bookImage` varchar(250) NOT NULL,
  `isIssued` int(1) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblbooks`
--

INSERT INTO `tblbooks` (`id`, `BookName`, `CatId`, `AuthorId`, `ISBNNumber`, `BookPrice`, `bookImage`, `isIssued`, `RegDate`, `UpdationDate`) VALUES
(1, 'The Metaverse', 5, 5, 'ISSN 0762-9060', 59.00, '1337223.jpg', 1, '2024-01-30 07:23:03', '2024-02-04 06:34:02'),
(2, 'A Short History of Nearly Everything', 8, 10, 'ISSN 0324-8175', 32.00, '214123.jpg', 1, '2024-01-30 07:23:03', '2024-02-04 06:34:02'),
(3, 'Basic Physics', 6, 4, 'ISSN 3241-4924', 46.00, '9780471001669.jpg', 0, '2024-01-30 07:23:03', '2024-02-04 06:34:11'),
(4, 'The Clean Coder: A Code of Conduct for Professional Programmers', 9, 10, 'ISSN 2712-2002', 39.00, '5858855.jpg', 1, '2024-01-30 07:23:03', '2024-02-04 06:34:02'),
(5, 'Cosmos', 6, 13, 'ISSN 2478-1022', 121.00, '55030.jpg', 1, '2024-01-30 07:23:03', '2024-02-04 06:34:11'),
(6, 'The Essential Drucker', 7, 4, 'ISSN 6217-0326', 100.00, '123488865.jpg', NULL, '2024-01-30 07:23:03', '2024-02-04 06:34:11'),
(7, 'Emma', 4, 12, 'ISSN 1176-1301', 53.00, '15777407.jpg', NULL, '2024-01-30 07:23:03', '2024-02-04 06:34:11'),
(8, 'The Engineering Executive''s Primer', 5, 11, 'ISSN 8950-6029', 120.00, '34772255.jpg', NULL, '2024-01-30 07:23:03', '2024-02-04 06:34:11'),
(9, 'Influencer: The Power to Change Anything', 7, 2, 'ISSN 3360-8398', 200.00, '485156132.jpg', NULL, '2024-01-30 07:23:03', '2024-02-04 06:34:11'),
(10, 'Introduction to Information Technology', 5, 14, 'ISSN 6614-1023', 142.00, '312312121.jpg', 0, '2024-01-30 07:23:03', '2024-02-04 06:34:11'),
(11, 'The Princess Bride', 4, 9, 'ISSN 9711-7298', 42.00, '21787.jpg', 0, '2024-01-30 07:23:03', '2024-02-04 06:34:11');


-- --------------------------------------------------------

--
-- Table structure for table `tblcategory`
--

CREATE TABLE `tblcategory` (
  `id` int(11) NOT NULL,
  `CategoryName` varchar(150) DEFAULT NULL,
  `Status` int(1) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblcategory`
--

INSERT INTO `tblcategory` (`id`, `CategoryName`, `Status`, `CreationDate`, `UpdationDate`) VALUES
(4, 'Romantic', 1, '2024-08-31 07:23:03', '2024-12-04 06:33:43'),
(5, 'Technology', 1, '2024-08-31 07:23:03', '2024-12-04 06:33:51'),
(6, 'Science', 1, '2024-08-31 07:23:03', '2024-12-04 06:33:51'),
(7, 'Management', 1, '2024-08-31 07:23:03', '2024-12-04 06:33:51'),
(8, 'General', 1, '2024-08-31 07:23:03', '2024-12-04 06:33:51'),
(9, 'Programming', 1, '2024-08-31 07:23:03', '2024-12-04 06:33:51');

-- --------------------------------------------------------

--
-- Table structure for table `tblissuedbookdetails`
--

CREATE TABLE `tblissuedbookdetails` (
  `id` int(11) NOT NULL,
  `BookId` int(11) DEFAULT NULL,
  `StudentID` varchar(150) DEFAULT NULL,
  `IssuesDate` timestamp NULL DEFAULT current_timestamp(),
  `ReturnDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `RetrunStatus` int(1) DEFAULT NULL,
  `fine` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblissuedbookdetails`
--

INSERT INTO `tblissuedbookdetails` (`id`, `BookId`, `StudentID`, `IssuesDate`, `ReturnDate`, `RetrunStatus`, `fine`) VALUES
(8, 1, 'SID002', '2024-08-01 05:45:57', '2024-12-04 06:33:08', 1, 0),
(9, 10, 'SID005', '2024-08-01 05:45:57', '2024-12-04 06:33:08', 1, 0);



-- --------------------------------------------------------

--
-- Table structure for table `tblstudents`
--

CREATE TABLE `tblstudents` (
  `id` int(11) NOT NULL,
  `StudentId` varchar(100) DEFAULT NULL,
  `FullName` varchar(120) DEFAULT NULL,
  `EmailId` varchar(120) DEFAULT NULL,
  `MobileNumber` char(11) DEFAULT NULL,
  `Password` varchar(120) DEFAULT NULL,
  `Status` int(1) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblstudents`
--

INSERT INTO `tblstudents` (`id`, `StudentId`, `FullName`, `EmailId`, `MobileNumber`, `Password`, `Status`, `RegDate`, `UpdationDate`) VALUES
(1, 'SID002', 'Do Thi Duyen', 'duyen@gmail.com', '0935333555', 'a199dd3a3825d22ec3fd517a5e44db80', 1, '2024-11-31 07:23:03', '2024-12-04 06:32:36'),
(2, 'SID005', 'Huynh Nhu Tue', 'tue@gmail.com', '0929444666', 'e117ca8b805850dd7151e8a2f89a6b9a', 1, '2024-11-31 07:23:03', '2024-12-04 06:32:42');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblauthors`
--
ALTER TABLE `tblauthors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblbooks`
--
ALTER TABLE `tblbooks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcategory`
--
ALTER TABLE `tblcategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblissuedbookdetails`
--
ALTER TABLE `tblissuedbookdetails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblstudents`
--
ALTER TABLE `tblstudents`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `StudentId` (`StudentId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblauthors`
--
ALTER TABLE `tblauthors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `tblbooks`
--
ALTER TABLE `tblbooks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tblcategory`
--
ALTER TABLE `tblcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tblissuedbookdetails`
--
ALTER TABLE `tblissuedbookdetails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tblstudents`
--
ALTER TABLE `tblstudents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
