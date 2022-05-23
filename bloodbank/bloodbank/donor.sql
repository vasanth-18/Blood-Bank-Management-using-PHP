-- phpMyAdmin SQL Dump
-- version 4.1.6
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 10, 2015 at 03:30 PM
-- Server version: 5.6.16
-- PHP Version: 5.5.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `donor`
--

-- --------------------------------------------------------

--
-- Table structure for table `donors`
--

CREATE TABLE IF NOT EXISTS `donors` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fname` varchar(45) NOT NULL,
  `mname` varchar(30) DEFAULT NULL,
  `lname` varchar(45) NOT NULL,
  `sex` varchar(10) NOT NULL,
  `b_type` varchar(2) NOT NULL,
  `bday` date NOT NULL,
  `h_address` varchar(50) NOT NULL,
  `city` varchar(30) NOT NULL,
  `don_date` date NOT NULL,
  `stats` text NOT NULL,
  `temp` varchar(10) NOT NULL,
  `pulse` varchar(10) NOT NULL,
  `bp` varchar(10) NOT NULL,
  `weight` int(11) NOT NULL,
  `hemoglobin` varchar(25) NOT NULL,
  `hbsag` varchar(10) NOT NULL,
  `aids` varchar(15) NOT NULL,
  `malaria_smear` varchar(20) NOT NULL,
  `hematocrit` varchar(15) NOT NULL,
  `phone` varchar(10) DEFAULT NULL,
  `mobile` varchar(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=33 ;

--
-- Dumping data for table `donors`
--

INSERT INTO `donors` (`id`, `fname`, `mname`, `lname`, `sex`, `b_type`, `bday`, `h_address`, `city`, `don_date`, `stats`, `temp`, `pulse`, `bp`, `weight`, `hemoglobin`, `hbsag`, `aids`, `malaria_smear`, `hematocrit`, `phone`, `mobile`) VALUES
(30, 'siva', 'mohan', 'marthala', 'male', 'O+', '2002-06-24', 'proddatur', 'kadapa', '2022-04-01', 'Normal', '30', '60', '80 | 120', 64, '16 - 18 gm/dl', 'Negative', 'Negative', 'Negative', '45 - 62%', '2632181', '9827983762'),
(31, 'kushal', 'kumar', 'narapureddy', 'male', 'A+', '2002-06-12', 'erlapadu', 'kadapa', '2022-04-02', 'Normal', '30', '60', '80 | 120', 64, '16 - 18 gm/dl', 'Negative', 'Negative', 'Negative', '45 - 62%', '', '8602042302'),
(32, 'bhanu', 'teja', 'kunda', 'male', 'O+', '2002-03-08', 'bellary', 'karnataka', '2022-04-02', 'Normal', '30', '70', '80 | 120', 52, '16 - 18 gm/dl', 'Negative', 'Negative', 'Negative', '45 - 62%', '', '8269036096');

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE IF NOT EXISTS `employees` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `f_name` varchar(35) NOT NULL,
  `m_name` varchar(15) DEFAULT NULL,
  `l_name` varchar(35) NOT NULL,
  `username` varchar(15) NOT NULL,
  `password` varchar(15) NOT NULL,
  `b_day` date NOT NULL,
  `prc_nr` int(25) NOT NULL,
  `designation` varchar(35) NOT NULL,
  `landline` varchar(10) DEFAULT NULL,
  `mobile_nr` varchar(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `prc_nr` (`prc_nr`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=18 ;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `f_name`, `m_name`, `l_name`, `username`, `password`, `b_day`, `prc_nr`, `designation`, `landline`, `mobile_nr`) VALUES
(11, 'siva', 'mohan', 'marthala', 'siva_11', '123', '2002-06-24', 2147483647, 'Student', '516360', '9494559770');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `dob` date NOT NULL,
  `gender` varchar(10) NOT NULL,
  `b_type` varchar(10) NOT NULL,
  `address` varchar(500) NOT NULL,
  `city` varchar(100) NOT NULL,
  `mobile` varchar(13) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `dob`, `gender`, `b_type`, `address`, `city`, `mobile`, `created_at`) VALUES
(1, 'siva', 'marthala', 'sivamohan@gmail.com', '2002-06-24', 'Male', 'O+', 'proddatur', 'kadapa', '9494559770', '2022-04-1 10:12:26'),
(2, 'kushal', 'narapureddy', 'kushalkumar@gmail.com', '2002-06-12', 'Male', 'B+', 'erlapadu', 'kadapa', '6304691787', '2022-04-02 12:08:46'),
(3, 'bhanu', 'kunda', 'bhanuteja@gmail.com', '2002-03-08', 'Male', 'O+', 'bellary', 'karnataka', '8499849419', '2022-04-03 06:27:06');
