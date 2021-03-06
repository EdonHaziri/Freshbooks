-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 12, 2018 at 05:31 AM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.2.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bookstore_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `account`
--

CREATE TABLE `account` (
  `username` varchar(25) NOT NULL,
  `password` varchar(64) NOT NULL,
  `pass_salt` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `account`
--

INSERT INTO `account` (`username`, `password`, `pass_salt`) VALUES
('mcmaceac', '765524d53b9f49328356a4e9c76fbf7a44f51e5f621e87d7060cda63f0b98359', -1266778087),
('taccount', 'a1a4f7c5716341af6b01f833f3f9cf174473d448ac582c2c7949f1d7da33f334', 1502449763),
('test4', '72735481e25c2d28c56f74038914ecceb6a670bacaff7f6eb869b08f38a59cc9', -1231945052),
('testaccount', '506df7e6bb5b54cfe555d266a9e3780a32a404c5541aedcd2c392a92f25488a7', -2070581990);

-- --------------------------------------------------------

--
-- Table structure for table `address`
--

CREATE TABLE `address` (
  `username` varchar(25) NOT NULL,
  `full_name` varchar(50) NOT NULL,
  `street` varchar(100) NOT NULL,
  `city` varchar(50) NOT NULL,
  `province` varchar(50) NOT NULL,
  `postal_code` varchar(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `address`
--

INSERT INTO `address` (`username`, `full_name`, `street`, `city`, `province`, `postal_code`) VALUES
('mcmaceac', 'Matthew MacEachern', '35 Moon St.', 'Aurora', 'ON', 'L4G4M5'),
('test4', 'Matt 2', '35 popla', 'Aurora', 'ON', 'L4G3M4');

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

CREATE TABLE `book` (
  `bid` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `price` decimal(6,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `book`
--

INSERT INTO `book` (`bid`, `title`, `price`) VALUES
(1, 'The Hobbit', '49.99'),
(2, 'The Two Towers', '11.16'),
(4, 'Introduction to Algorithms, 3rd Edition', '144.89'),
(5, 'Harry Potter and the Order of the Phoenix', '9.52'),
(7, 'Harry Potter and the Chamber of Secrets', '9.52'),
(8, 'A Wrinkle in Time', '7.17'),
(9, 'The Great Alone', '14.34'),
(10, 'Still Me: A Novel ', '14.09'),
(11, 'Origin', '14.97'),
(12, 'Beneath a Scarlet Sky', '5.99'),
(13, 'A Gentleman in Moscow', '14.09'),
(14, 'Fire and Fury: Inside the Trump White House', '14.34'),
(15, 'Sapiens: A Brief History of Humankind', '15.44'),
(16, 'How to Win Friends and Influence People', '11.65'),
(17, 'Principles: Life and Work', '18.83'),
(18, 'Born a Crime', '12.44'),
(19, 'Grant', '19.38'),
(20, 'The Power of Habit', '14.95'),
(21, 'The 7 Habits of Highly Effective People', '5.96'),
(22, 'I\'ll Be Gone in the Dark', '15.72'),
(23, 'You Are a Badass', '10.13'),
(24, 'Leonardo da Vinci', '17.03'),
(25, 'Educated: A Memoir', '12.45'),
(26, 'Hell\'s Princess', '4.88'),
(27, 'The Last Black Unicorn', '11.65'),
(28, 'Alexander Hamilton', '13.21'),
(29, 'Enlightenment Now', '16.74'),
(30, 'Unfu*k Yourself', '10.47'),
(31, 'White Rose, Black Forest', '4.99'),
(32, 'Eat What You Watch', '16.51'),
(33, 'The Sous Vide Cookbook', '14.11'),
(34, 'Learning Python, 5th Edition', '31.24'),
(35, 'Python Crash Course', '27.12'),
(36, 'Effective Java (3rd Edition)', '47.42'),
(37, 'Compilers: Principles, Techniques, and Tools', '22.93'),
(38, 'Introduction to the Theory of Computation', '16.54'),
(39, 'Computer Systems: A Programmer\'s Perspective ', '12.82'),
(40, 'The Algorithm Design Manual', '76.00'),
(41, 'C Programming Language, 2nd Edition', '18.44'),
(42, 'Types and Programming Languages (MIT Press)', '82.85'),
(43, 'Computer Networks (4th Edition)', '12.47'),
(44, 'Ready Player One', '8.81'),
(45, 'Oathbringer', '16.14'),
(46, 'Russian Roulette', '15.59'),
(47, 'A Brief History of Time', '14.09'),
(48, 'The 5 Love Languages', '6.87'),
(49, 'The Bridge at Andau', '2.64'),
(50, 'A Thread of Grace: A Novel', '15.86'),
(51, 'The Man from St. Petersburg', '12.33'),
(52, 'Crooked House', '1.74'),
(53, 'The Valley of Amazement', '12.13');

-- --------------------------------------------------------

--
-- Table structure for table `book_review`
--

CREATE TABLE `book_review` (
  `bid` int(11) NOT NULL,
  `username` varchar(25) NOT NULL,
  `reviewtext` mediumtext NOT NULL,
  `rating` decimal(3,2) NOT NULL,
  `reviewdate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `book_review`
--

INSERT INTO `book_review` (`bid`, `username`, `reviewtext`, `rating`, `reviewdate`) VALUES
(4, 'mcmaceac', 'Hardest class I ever took', '4.00', '2018-04-11');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `bid` int(11) NOT NULL,
  `category` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`bid`, `category`) VALUES
(1, 'fantasy'),
(2, 'fantasy'),
(1, 'fiction'),
(4, 'math'),
(4, 'computer science'),
(5, 'fiction'),
(7, 'fiction'),
(8, 'fiction'),
(9, 'fiction'),
(10, 'fiction'),
(11, 'fiction'),
(12, 'fiction'),
(13, 'fiction'),
(14, 'biography'),
(15, 'history'),
(16, 'business'),
(17, 'business'),
(18, 'humor'),
(19, 'history'),
(20, 'health and fitness'),
(21, 'business'),
(22, 'biography'),
(23, 'self-help'),
(24, 'biography'),
(25, 'biography'),
(26, 'biography'),
(28, 'history'),
(29, 'politics'),
(14, 'politics'),
(30, 'self-help'),
(31, 'history'),
(32, 'cooking'),
(33, 'cooking'),
(34, 'computer science'),
(35, 'computer science'),
(36, 'computer science'),
(38, 'computer science'),
(39, 'computer science'),
(40, 'computer science'),
(40, 'math'),
(41, 'computer science'),
(42, 'computer science'),
(43, 'computer science'),
(43, 'technology'),
(44, 'fiction'),
(45, 'fiction'),
(45, 'fantasy'),
(46, 'politics'),
(47, 'science'),
(47, 'math'),
(48, 'religion'),
(49, 'biography'),
(50, 'fiction'),
(51, 'thriller'),
(51, 'suspense'),
(52, 'thriller'),
(52, 'suspense'),
(53, 'fiction'),
(27, 'biography'),
(37, 'computer science');

-- --------------------------------------------------------

--
-- Table structure for table `po`
--

CREATE TABLE `po` (
  `id` varchar(100) NOT NULL,
  `username` varchar(25) NOT NULL,
  `lname` varchar(25) NOT NULL,
  `fname` varchar(25) NOT NULL,
  `date` datetime NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `po`
--

INSERT INTO `po` (`id`, `username`, `lname`, `fname`, `date`, `status`) VALUES
('2018-04-11 17:58:27.956mcmaceac', 'mcmaceac', 'MacEachern', 'Matthew', '2018-04-11 17:58:27', 'PROCESSED'),
('2018-04-11 18:41:04.879mcmaceac', 'mcmaceac', 'MacEachern', 'Matthew', '2018-04-11 18:41:04', 'PROCESSED'),
('2018-04-11 20:37:33.88mcmaceac', 'mcmaceac', 'MacEachern', 'Matthew', '2018-04-11 20:37:33', 'PROCESSED'),
('2018-04-11 20:38:15.546mcmaceac', 'mcmaceac', 'MacEachern', 'Matthew', '2018-04-11 20:38:15', 'PROCESSED'),
('2018-04-11 23:22:32.457mcmaceac', 'mcmaceac', 'Mac', 'Mat', '2018-04-11 23:22:32', 'PROCESSED'),
('2018-04-11 23:23:23.13mcmaceac', 'mcmaceac', 'Mac', 'Mat', '2018-04-11 23:23:23', 'DENIED'),
('2018-04-11 23:24:20.311mcmaceac', 'mcmaceac', 'Mac', 'Mat', '2018-04-11 23:24:20', 'DENIED'),
('2018-04-11 23:24:37.863mcmaceac', 'mcmaceac', 'das', 'dsa', '2018-04-11 23:24:37', 'PROCESSED');

-- --------------------------------------------------------

--
-- Table structure for table `po_item`
--

CREATE TABLE `po_item` (
  `id` varchar(100) NOT NULL,
  `bid` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `po_item`
--

INSERT INTO `po_item` (`id`, `bid`, `quantity`) VALUES
('2018-04-11 17:58:27.956mcmaceac', 1, 1),
('2018-04-11 17:58:27.956mcmaceac', 2, 1),
('2018-04-11 17:58:27.956mcmaceac', 4, 1),
('2018-04-11 18:41:04.879mcmaceac', 1, 1),
('2018-04-11 18:41:04.879mcmaceac', 2, 1),
('2018-04-11 18:41:04.879mcmaceac', 4, 1),
('2018-04-11 20:37:33.88mcmaceac', 1, 1),
('2018-04-11 20:37:33.88mcmaceac', 2, 1),
('2018-04-11 20:37:33.88mcmaceac', 4, 1),
('2018-04-11 20:38:15.546mcmaceac', 1, 1),
('2018-04-11 20:38:15.546mcmaceac', 2, 1),
('2018-04-11 20:38:15.546mcmaceac', 4, 1),
('2018-04-11 23:22:32.457mcmaceac', 49, 3),
('2018-04-11 23:23:23.13mcmaceac', 49, 3),
('2018-04-11 23:24:20.311mcmaceac', 49, 3),
('2018-04-11 23:24:37.863mcmaceac', 49, 3);

-- --------------------------------------------------------

--
-- Table structure for table `shopping_cart`
--

CREATE TABLE `shopping_cart` (
  `username` varchar(25) NOT NULL,
  `bid` int(11) NOT NULL,
  `quantity` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `shopping_cart`
--

INSERT INTO `shopping_cart` (`username`, `bid`, `quantity`) VALUES
('mcmaceac', 49, 3),
('test4', 32, 2),
('test4', 33, 4);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `address`
--
ALTER TABLE `address`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`bid`);

--
-- Indexes for table `book_review`
--
ALTER TABLE `book_review`
  ADD PRIMARY KEY (`bid`,`username`),
  ADD KEY `bid` (`bid`),
  ADD KEY `username` (`username`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD KEY `bid` (`bid`);

--
-- Indexes for table `po`
--
ALTER TABLE `po`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`);

--
-- Indexes for table `po_item`
--
ALTER TABLE `po_item`
  ADD PRIMARY KEY (`id`,`bid`),
  ADD KEY `id` (`id`),
  ADD KEY `bid` (`bid`);

--
-- Indexes for table `shopping_cart`
--
ALTER TABLE `shopping_cart`
  ADD PRIMARY KEY (`username`,`bid`),
  ADD KEY `username` (`username`),
  ADD KEY `bid` (`bid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `book`
--
ALTER TABLE `book`
  MODIFY `bid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `address`
--
ALTER TABLE `address`
  ADD CONSTRAINT `address_ibfk_1` FOREIGN KEY (`username`) REFERENCES `account` (`username`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `book_review`
--
ALTER TABLE `book_review`
  ADD CONSTRAINT `book_review_ibfk_1` FOREIGN KEY (`bid`) REFERENCES `book` (`bid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `book_review_ibfk_2` FOREIGN KEY (`username`) REFERENCES `account` (`username`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `category`
--
ALTER TABLE `category`
  ADD CONSTRAINT `category_ibfk_1` FOREIGN KEY (`bid`) REFERENCES `book` (`bid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `po`
--
ALTER TABLE `po`
  ADD CONSTRAINT `po_ibfk_1` FOREIGN KEY (`username`) REFERENCES `account` (`username`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `po_item`
--
ALTER TABLE `po_item`
  ADD CONSTRAINT `po_item_ibfk_1` FOREIGN KEY (`bid`) REFERENCES `book` (`bid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `po_item_ibfk_2` FOREIGN KEY (`id`) REFERENCES `po` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `shopping_cart`
--
ALTER TABLE `shopping_cart`
  ADD CONSTRAINT `shopping_cart_ibfk_1` FOREIGN KEY (`username`) REFERENCES `account` (`username`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `shopping_cart_ibfk_2` FOREIGN KEY (`bid`) REFERENCES `book` (`bid`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
