-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 30, 2023 at 12:20 PM
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
-- Database: `bms`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `a_id` int(4) NOT NULL,
  `a_unm` varchar(30) NOT NULL,
  `a_pwd` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`a_id`, `a_unm`, `a_pwd`) VALUES
(1, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

CREATE TABLE `book` (
  `b_id` int(10) NOT NULL,
  `b_nm` varchar(50) NOT NULL,
  `b_cat` int(6) NOT NULL,
  `b_desc` longtext NOT NULL,
  `b_price` int(4) NOT NULL,
  `b_img` varchar(50) NOT NULL,
  `b_time` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `book`
--

INSERT INTO `book` (`b_id`, `b_nm`, `b_cat`, `b_desc`, `b_price`, `b_img`, `b_time`) VALUES
(15, 'Octavia Spencer - Detective', 12, 'This is Detective Book About Ninja                               ', 50, 'book_img/d.jpg', 1554088592),
(16, 'Murder on The Orient Express', 13, 'Suspence Book about Murder.        ', 60, 'book_img/d3.jpg', 1554088749),
(18, 'A Dictionary of Architecture', 14, 'Containing over 5,000 entries from Aalto to ziggurat, this is the most comprehensive and up-to-date dictionary of architecture in paperback. Beautifully illustrated and written in a clear and concise style, it is an invaluable work of reference for both students of architecture and the general reader, as well as professional architects. Covers all periods of Western architectural history, from ancient times to the present day Concise biographies of leading architects, from Brunelleschi and Imhotep to Le Corbusier and Richard Rogers Over 250 illustrations specially drawn for this volume                   ', 500, 'book_img/ARC9.jpg', 1554089362),
(19, 'CAT Book', 15, 'Book about Competitive Exam CAT.\r\nIn CAT Collegians are Eligible for Give Exam.', 260, 'book_img/CAT.jpg', 1554089935),
(20, 'Visual Basic 2005', 16, 'VB.Net Connectivity.', 430, 'book_img/comp8.jpg', 1554090190),
(21, 'HTML for World Wide Web', 17, 'HTML uses tags,it\'s not case sensitive,work with own html tags which must be enclosed.           ', 240, 'book_img/0201354934.jpg', 1554090473),
(22, 'A TEXTBOOK OF COST AND MANAGEMENT ACCOUNTING 8th e', 18, 'Student friendly and examination oriented approach # Innovative, comprehensive and systematic presentation of the subject matter # Use of diagrams and exhibits to help students understand concepts easily and clearly # Around 500 solved problems and illustrations with working notes # Solved and unsolved practical questions from various university and professional examinations like BCom, MCom, CA, CS, ICWA, etc. # Objective type questions and select theory questions # Ideal for self study.                                ', 410, 'book_img/busi7.jpg', 1554091189),
(23, 'Spider Man', 19, 'Spider Man Comic Book.                                            ', 120, 'book_img/comic1.jpg', 1554091718),
(24, 'The Mad, Mad World of Cricket', 20, 'The funny side of the gentleman?s game?captured by a master cartoonist In India cricket is more than a game; it is a national obsession. And with a World Cup always around the corner, there is no better way to prepare for the excitement of seeing the men in blue in action than with renowned cartoonist Sudhir Dar?s creations.                                            ', 200, 'book_img/c1.jpg', 1554092107),
(25, 'A Dictionary of', 13, '                                                 Containing over 5,000 entries from Aalto to ziggurat, this is the most comprehensive and up-to-date dictionary of architecture in paperback. Beautifully illustrated and written in a clear and concise style, it is an invaluable work of reference for both students of architecture and the general reader, as well as professional architects. Covers all periods of Western architectural history, from ancient times to the present day Concise biographies of leading architects, from Brunelleschi and Imhotep to Le Corbusier and Richard Rogers Over 250 illustrations specially drawn for this volume                                                               ', 500, 'book_img/ARC9.jpg', 1555228720),
(26, 'BILL DAVE MANAGEMENT', 21, 'This book is about management by Bill Dave', 90, 'book_img/MANAGEMENT2.jpg', 1555250569);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `cat_id` int(10) NOT NULL,
  `cat_nm` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`cat_id`, `cat_nm`) VALUES
(13, 'Suspence'),
(14, 'Architecture'),
(15, 'Competitive Exam'),
(16, 'Programming'),
(17, 'Web Design'),
(18, 'Business'),
(19, 'Comics'),
(20, 'Sport'),
(21, 'Management');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `c_id` int(4) NOT NULL,
  `c_fnm` varchar(100) NOT NULL,
  `c_mno` int(10) NOT NULL,
  `c_email` varchar(60) NOT NULL,
  `c_msg` longtext NOT NULL,
  `c_time` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`c_id`, `c_fnm`, `c_mno`, `c_email`, `c_msg`, `c_time`) VALUES
(5, 'Kumar Baraiya', 2147483647, 'kumar@gmail.com', 'Awesome Books.', '1554092678'),
(10, 'Dhaval Makwana', 2147483647, 'dhavalmak77@gmail.com', 'Best Books', '1554201509'),
(12, 'Dhaval', 123654789, 'dhaval@gmail.com', 'Looking For New Books', '1554219813'),
(14, 'paramanand badiger', 2147483647, 'parameshbadiger245@gmail.com', 'web development book needed', '1695308635');

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `o_id` int(11) NOT NULL,
  `o_name` varchar(30) NOT NULL,
  `o_address` varchar(200) NOT NULL,
  `o_pincode` int(20) NOT NULL,
  `o_city` varchar(30) NOT NULL,
  `o_state` varchar(30) NOT NULL,
  `o_mobile` int(20) NOT NULL,
  `o_rid` int(8) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `order`
--

INSERT INTO `order` (`o_id`, `o_name`, `o_address`, `o_pincode`, `o_city`, `o_state`, `o_mobile`, `o_rid`) VALUES
(39, 'Dhaval Makwana', 'Mahuva', 125478, 'nuihu', 'Gujarat', 123456789, 1),
(41, 'paramanand badiger', 'vijayanagar', 591114, 'banglore', 'karnataka', 2147483647, 2),
(42, 'kumar', 'banglore', 1234, 'banglore', 'karnataka', 123456789, 2);

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE `register` (
  `r_id` int(8) NOT NULL,
  `r_fnm` varchar(100) NOT NULL,
  `r_unm` varchar(50) NOT NULL,
  `r_pwd` varchar(30) NOT NULL,
  `r_cno` varchar(10) NOT NULL,
  `r_email` varchar(60) NOT NULL,
  `r_question` varchar(100) NOT NULL,
  `r_answer` varchar(50) NOT NULL,
  `r_time` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`r_id`, `r_fnm`, `r_unm`, `r_pwd`, `r_cno`, `r_email`, `r_question`, `r_answer`, `r_time`) VALUES
(1, 'Dhaval Makwana', 'dhaval', 'dhaval123', '9876543210', 'dhavalmak77@gmail.com', 'Which is your Favourite Movie ?', 'shawshank redemption', '1554092678'),
(2, 'Kumar Baraiya', 'kumar', 'kumar123', '1234567890', 'kbaraiya@gmail.com', 'Which is your Favourite Movie ?', '123', '1554201585');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`a_id`);

--
-- Indexes for table `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`b_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`c_id`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`o_id`);

--
-- Indexes for table `register`
--
ALTER TABLE `register`
  ADD PRIMARY KEY (`r_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `a_id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `book`
--
ALTER TABLE `book`
  MODIFY `b_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `cat_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `c_id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
  MODIFY `o_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `register`
--
ALTER TABLE `register`
  MODIFY `r_id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
