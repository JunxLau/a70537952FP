-- phpMyAdmin SQL Dump
-- version 4.5.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 04, 2016 at 04:52 AM
-- Server version: 5.7.11
-- PHP Version: 5.6.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `finance`
--

-- --------------------------------------------------------

--
-- Table structure for table `expenses_category`
--

CREATE TABLE `expenses_category` (
  `ID` int(11) NOT NULL,
  `Name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `expenses_category`
--

INSERT INTO `expenses_category` (`ID`, `Name`) VALUES
(4, 'Debts'),
(3, 'Entertainment'),
(5, 'Fixed expenses'),
(2, 'Food & beverage'),
(6, 'Others'),
(1, 'Transport');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `ID` int(11) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `FirstName` varchar(50) NOT NULL,
  `LastName` varchar(50) NOT NULL,
  `Password` varchar(50) NOT NULL,
  `DOB` date DEFAULT NULL,
  `Gender` enum('Male','Female') NOT NULL,
  `Country` varchar(50) DEFAULT NULL,
  `Occupation` varchar(50) DEFAULT NULL,
  `AboutMe` text,
  `RegisterDate` datetime NOT NULL,
  `LastLoginDate` datetime NOT NULL,
  `LastLoginIP` varchar(50) DEFAULT NULL,
  `EmailVerified` tinyint(1) NOT NULL,
  `LastChangePasswordDate` datetime NOT NULL,
  `LastUpdateDate` datetime NOT NULL,
  `User_Image` text,
  `Token` text,
  `Token_expTime` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`ID`, `Email`, `FirstName`, `LastName`, `Password`, `DOB`, `Gender`, `Country`, `Occupation`, `AboutMe`, `RegisterDate`, `LastLoginDate`, `LastLoginIP`, `EmailVerified`, `LastChangePasswordDate`, `LastUpdateDate`, `User_Image`, `Token`, `Token_expTime`) VALUES
(1, '123456789@gmail.com', 'A', 'B', '202cb962ac59075b964b07152d234b70', '2016-09-01', 'Male', 'Malaysia', '', '', '2016-09-20 00:00:00', '2016-09-25 16:05:53', '100.100.100.100', 0, '2016-09-25 15:58:42', '2016-09-20 00:00:00', '1474887492969R80853.jpg', NULL, NULL),
(7, '123@yahoo.com', 'aa', 'bb', '202cb962ac59075b964b07152d234b70', '2010-01-01', 'Male', 'Singapore', '', '', '2016-09-20 00:00:00', '2016-09-20 00:00:00', '123,123,123,123', 0, '2016-09-20 00:00:00', '2016-09-20 00:00:00', '123@yahoo.com.jpg', NULL, NULL),
(8, 'aa@gmail.com', 'aaa', 'sss', '202cb962ac59075b964b07152d234b70', '2016-02-02', 'Female', 'American', 'God', 'I am GOD!!', '2016-09-21 00:00:00', '2016-09-25 16:01:43', '87.87.87.87', 0, '2016-09-21 00:00:00', '2016-09-21 00:00:00', NULL, NULL, NULL),
(9, '123@gmail.com', 'aaa', 'bbb', '202cb962ac59075b964b07152d234b70', '2016-10-20', 'Male', 'Singapore', 'Student', 'AAA', '2016-09-27 15:14:20', '2016-09-27 15:14:20', '22.22.22.22', 0, '2016-09-27 15:14:20', '2016-09-27 15:14:20', NULL, NULL, NULL),
(11, '1234@gmail.com', 'aaa', 'bbb', '202cb962ac59075b964b07152d234b70', '2016-10-20', 'Male', 'Singapore', 'Student', NULL, '2016-09-27 15:15:44', '2016-09-27 15:15:44', '22.22.22.22', 0, '2016-09-27 15:15:44', '2016-09-27 15:15:44', NULL, NULL, NULL),
(14, 'a@b', 'a', 'a', '0cc175b9c0f1b6a831c399e269772661', '2016-10-20', 'Male', 'AF', 'a', NULL, '2016-10-03 19:22:41', '2016-10-03 19:22:41', NULL, 1, '2016-10-03 19:22:41', '2016-10-03 19:22:41', NULL, '2b3b9969209e4e4518b442d1a5fdf595', '2016-10-04 19:22:41');

-- --------------------------------------------------------

--
-- Table structure for table `user_expense`
--

CREATE TABLE `user_expense` (
  `Expense_ID` bigint(20) NOT NULL,
  `User_ID` int(11) NOT NULL,
  `Expense_Name` varchar(100) NOT NULL,
  `Expense_Amount` decimal(65,2) NOT NULL,
  `Expense_Category` varchar(50) NOT NULL,
  `Expense_Description` text,
  `Expense_EnterDate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_expense`
--

INSERT INTO `user_expense` (`Expense_ID`, `User_ID`, `Expense_Name`, `Expense_Amount`, `Expense_Category`, `Expense_Description`, `Expense_EnterDate`) VALUES
(2, 1, '', '1000.00', 'Transport', 'FGFFFSFAS', '2016-09-24');

-- --------------------------------------------------------

--
-- Table structure for table `user_income`
--

CREATE TABLE `user_income` (
  `Income_ID` int(11) NOT NULL,
  `User_ID` int(11) NOT NULL,
  `Income_Name` varchar(100) NOT NULL,
  `Income_Amount` int(11) NOT NULL,
  `Income_Description` text NOT NULL,
  `Income_EnterDate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_income`
--

INSERT INTO `user_income` (`Income_ID`, `User_ID`, `Income_Name`, `Income_Amount`, `Income_Description`, `Income_EnterDate`) VALUES
(1, 7, '', 2222, 'haha1ha', '2016-09-25');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `expenses_category`
--
ALTER TABLE `expenses_category`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `Name` (`Name`),
  ADD KEY `Name_2` (`Name`),
  ADD KEY `Name_3` (`Name`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `Email` (`Email`),
  ADD KEY `ID` (`ID`);

--
-- Indexes for table `user_expense`
--
ALTER TABLE `user_expense`
  ADD PRIMARY KEY (`Expense_ID`),
  ADD KEY `User_ID` (`User_ID`),
  ADD KEY `Expense_ID` (`Expense_ID`),
  ADD KEY `Expense_Category` (`Expense_Category`);

--
-- Indexes for table `user_income`
--
ALTER TABLE `user_income`
  ADD PRIMARY KEY (`Income_ID`),
  ADD KEY `User_ID` (`User_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `expenses_category`
--
ALTER TABLE `expenses_category`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `user_expense`
--
ALTER TABLE `user_expense`
  MODIFY `Expense_ID` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `user_income`
--
ALTER TABLE `user_income`
  MODIFY `Income_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `user_expense`
--
ALTER TABLE `user_expense`
  ADD CONSTRAINT `UserExpense_Category` FOREIGN KEY (`Expense_Category`) REFERENCES `expenses_category` (`Name`) ON UPDATE CASCADE,
  ADD CONSTRAINT `UserExpense_UserID` FOREIGN KEY (`User_ID`) REFERENCES `user` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `user_income`
--
ALTER TABLE `user_income`
  ADD CONSTRAINT `UserIncome_UserID` FOREIGN KEY (`User_ID`) REFERENCES `user` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
