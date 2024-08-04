-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 29, 2024 at 03:58 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `norsu`
--

-- --------------------------------------------------------

--
-- Table structure for table `patientinformation`
--

CREATE TABLE `patientinformation` (
  `id_no` int(50) NOT NULL,
  `patientno` int(50) NOT NULL,
  `dateapp` text NOT NULL,
  `timeapp` text NOT NULL,
  `lastname` text NOT NULL,
  `firstname` text NOT NULL,
  `middlename` text NOT NULL,
  `address` text NOT NULL,
  `mobile` text NOT NULL,
  `age` int(50) NOT NULL,
  `birthday` text NOT NULL,
  `birthplace` text NOT NULL,
  `religion` text NOT NULL,
  `gender` text NOT NULL,
  `civilstatus` text NOT NULL,
  `spousename` text NOT NULL,
  `occupation` text NOT NULL,
  `employer` text NOT NULL,
  `weight` text NOT NULL,
  `height` text NOT NULL,
  `doctor` text NOT NULL,
  `timecheck` text NOT NULL,
  `datecheck` text NOT NULL,
  `tcheck` text NOT NULL,
  `pcheck` text NOT NULL,
  `scheck` text NOT NULL,
  `bpcheck` text NOT NULL,
  `02scheck` text NOT NULL,
  `history` text NOT NULL,
  `diagnosis` text NOT NULL,
  `dorders` text NOT NULL,
  `statuscheck` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `patientinformation`
--

INSERT INTO `patientinformation` (`id_no`, `patientno`, `dateapp`, `timeapp`, `lastname`, `firstname`, `middlename`, `address`, `mobile`, `age`, `birthday`, `birthplace`, `religion`, `gender`, `civilstatus`, `spousename`, `occupation`, `employer`, `weight`, `height`, `doctor`, `timecheck`, `datecheck`, `tcheck`, `pcheck`, `scheck`, `bpcheck`, `02scheck`, `history`, `diagnosis`, `dorders`, `statuscheck`) VALUES
(8, 1, '02-04-2024', '02:43 PM', 'Doe', 'John', 'Smith', 'Dumaguete City', '741852', 20, '02-04-2000', 'Dumaguete City', 'Catholic', 'Male', 'Single', 'none', 'none', 'none', '75', '155', 'Doc Sheen', '03:45:27', '02-04-2024', '12', '23', '42', '12', '12', 'None', 'None', 'None', 2),
(9, 1, '06-04-2024', '06:34 PM', 'Smith', 'John', 'Doe', 'Dumaguete City', '741852', 20, '02-04-2000', 'Dumaguete City', 'Catholic', 'Male', 'Single', 'none', 'none', 'none', '75', '155', 'Doc Sheen', '', '', '', '', '', '', '', '', '', '', 1),
(10, 1, '21-05-2024', '01:57 PM', 'daw', 'dawd', 'cawc', 'dawdaw', '13', 23, '21-05-2024', 'acw', 'caw', 'Male', 'Single', 'wa', 'awd', 'awd', '123', '123', 'acw', '', '', '', '', '', '', '', '', '', '', 1),
(11, 1, '21-05-2024', '', 'aw', 'wca', 'wda', 'dwad', '12323', 23, '21-05-2024', 'awd', '', 'Male', 'Single', 'dawd', 'wda', 'awd', '123', '123', 'acw', '', '', '', '', '', '', '', '', '', '', 1),
(12, 1, '29-06-2024', '09:55 PM', 'Sunud', 'asunua', 'ad', 'adadwmk', '567', 21, '29-06-2024', 'dadn', 'adwj', 'Male', 'Single', 'adwnj', 'adjwn', 'dwan', 'dwjadn', 'adawj', 'qwjd', '', '', '12', '12', '12', '12', '12', '', '', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `patientnumbering`
--

CREATE TABLE `patientnumbering` (
  `idnumbering` int(50) NOT NULL,
  `patientnumber` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `patientnumbering`
--

INSERT INTO `patientnumbering` (`idnumbering`, `patientnumber`) VALUES
(1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `secrecords`
--

CREATE TABLE `secrecords` (
  `id_clock` int(50) NOT NULL,
  `username` text NOT NULL,
  `logdate` text NOT NULL,
  `logtime` text NOT NULL,
  `action` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `secrecords`
--

INSERT INTO `secrecords` (`id_clock`, `username`, `logdate`, `logtime`, `action`) VALUES
(1, 'jones123', '21-05-2024', '12:59:30', 'added patient'),
(2, 'jones123', '29-06-2024', '09:55:41', 'added patient');

-- --------------------------------------------------------

--
-- Table structure for table `sec_users`
--

CREATE TABLE `sec_users` (
  `id_no` int(20) NOT NULL,
  `dateuser` text NOT NULL,
  `timeuser` text NOT NULL,
  `code` text NOT NULL,
  `usercode` text NOT NULL,
  `fullname` text NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL,
  `status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sec_users`
--

INSERT INTO `sec_users` (`id_no`, `dateuser`, `timeuser`, `code`, `usercode`, `fullname`, `username`, `password`, `status`) VALUES
(1, '28-03-2024', '11:58:44', 'A1', '123', 'Jones Avenue', 'jones123', '12345', 'ACTIVE'),
(3, '29-03-2024', '12:02:16', 'A1', '1233', 'Danica Gon', 'gon223', '123', 'ACTIVE');

-- --------------------------------------------------------

--
-- Table structure for table `super_admin`
--

CREATE TABLE `super_admin` (
  `useradmin` text NOT NULL,
  `passadmin` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `super_admin`
--

INSERT INTO `super_admin` (`useradmin`, `passadmin`) VALUES
('admin', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `patientinformation`
--
ALTER TABLE `patientinformation`
  ADD PRIMARY KEY (`id_no`);

--
-- Indexes for table `patientnumbering`
--
ALTER TABLE `patientnumbering`
  ADD PRIMARY KEY (`idnumbering`);

--
-- Indexes for table `secrecords`
--
ALTER TABLE `secrecords`
  ADD PRIMARY KEY (`id_clock`);

--
-- Indexes for table `sec_users`
--
ALTER TABLE `sec_users`
  ADD PRIMARY KEY (`id_no`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `patientinformation`
--
ALTER TABLE `patientinformation`
  MODIFY `id_no` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `patientnumbering`
--
ALTER TABLE `patientnumbering`
  MODIFY `idnumbering` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `secrecords`
--
ALTER TABLE `secrecords`
  MODIFY `id_clock` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sec_users`
--
ALTER TABLE `sec_users`
  MODIFY `id_no` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
