-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 04, 2023 at 03:50 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `skill`
--

-- --------------------------------------------------------

--
-- Table structure for table `a`
--

CREATE TABLE `a` (
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `createpassword` varchar(100) NOT NULL,
  `confirmpassword` varchar(100) NOT NULL,
  `companyname` varchar(100) NOT NULL,
  `industry` varchar(100) NOT NULL,
  `type` varchar(100) NOT NULL,
  `designation` varchar(100) NOT NULL,
  `pincode` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `gender` varchar(100) NOT NULL,
  `lowerrange` varchar(100) NOT NULL,
  `upperrange` varchar(100) NOT NULL,
  `date` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `a`
--

INSERT INTO `a` (`firstname`, `lastname`, `createpassword`, `confirmpassword`, `companyname`, `industry`, `type`, `designation`, `pincode`, `address`, `email`, `gender`, `lowerrange`, `upperrange`, `date`, `phone`) VALUES
('Santhosh', 'Kumar', 'Santhoshj2002', 'Santhoshj2002', 'Santhoshj2002\'Wipro Technologies', 'IT INDUSTRY/NETWORKING', 'private', 'Software Tester', '631501', 'No:16/5,selai ramasamy street, pillayar palayam, kanchipuram', 'sssss123@gmail.com', 'Male', '500', '1500', '1/1/2010', '08825416579'),
('Sarath', 'Kumar', 'sarath1234', 'sarath1234', 'sarath1234\'TCS limited', 'IT INDUSTRY/NETWORKING', 'private', 'Software Developer ', '631501', 'No:1,chola street,solinganallur', 's.saratsubburaj@gmail.com', 'Male', '500', '1500', '03/07/2002', '9856723456');

-- --------------------------------------------------------

--
-- Table structure for table `find`
--

CREATE TABLE `find` (
  `jobtitle` varchar(100) NOT NULL,
  `course` varchar(100) NOT NULL,
  `location` varchar(100) NOT NULL,
  `salary` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `find`
--

INSERT INTO `find` (`jobtitle`, `course`, `location`, `salary`) VALUES
('Software Developer', 'B.E/B.TECH', 'Chennai', '20,000-30,000'),
('Software Developer', 'ME/M.TECH', 'Nagpur', '30,000-40,000'),
('Software Developer', 'MCA', 'Hyderabad', '30,000-40,000'),
('Software Developer', 'MBA/PGDM', 'Mumbai', '20,000-30,000'),
('Marketing', 'B.Com', 'Hyderabad', '10,000-20,000'),
('Marketing', 'M.Com', 'Lucknow', '20,000-30,000'),
('Marketing', 'MBA/PGDM', 'Kolkata', '10,000-20,000'),
('Software Testing', 'B.E/B.TECH', 'Mumbai', '10,000-20,000'),
('Software Testing', 'ME/M.TECH', 'Delhi', '20,000-30,000'),
('Software Testing', 'MCA', 'Banglore', '20,000-30,000'),
('Web designing', 'B.E/B.TECH', 'Coimbatore', '10,000-20,000'),
('Web designing', 'ME/M.TECH', 'Chennai', '20,000-30,000'),
('Web designing', 'MCA', 'Hyderabad', '20,000-30,000'),
('IT Hardware Engineer', 'B.E/B.TECH', 'Chennai', '10,000-20,000'),
('IT Hardware Engineer', 'ME/M.TECH', 'Kolkata', '10,000-20,000'),
('Finops Developer', 'MBA/PGDM', 'Banglore', '20,000-30,000'),
('Finops Developer', 'M.Com', 'Delhi', '10,000-20,000'),
('Architecture', 'B.Arch', 'Lucknow', '20,000-30,000'),
('Architecture', 'M.Arch', 'Coimbatore', '30,000-40,000'),
('Medical Coder', 'MBBS', 'Chennai', '10,000-20,000'),
('Medical Coder', 'B.E/B.TECH', 'Mumbai', '10,000-20,000'),
('Medical Electronics', 'B.E/B.TECH', 'Chennai', '10,000-20,000'),
('Medical Electronics', 'MBBS', 'Nagpur', '20,000-30,000'),
('Fashion Designing', 'B.FashionTech', 'Chennai', '10,000-20,000'),
('select', 'select', 'select', 'select'),
('Finops Developer', 'MCA', 'Chennai', '20,000-30,000');

-- --------------------------------------------------------

--
-- Table structure for table `job`
--

CREATE TABLE `job` (
  `jobtitle` varchar(100) NOT NULL,
  `course` varchar(100) NOT NULL,
  `location` varchar(100) NOT NULL,
  `salary` varchar(100) NOT NULL,
  `jobdes` varchar(500) NOT NULL,
  `comname` varchar(100) NOT NULL,
  `skills` varchar(100) NOT NULL,
  `exp` varchar(100) NOT NULL,
  `inter` varchar(100) NOT NULL,
  `work` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `job`
--

INSERT INTO `job` (`jobtitle`, `course`, `location`, `salary`, `jobdes`, `comname`, `skills`, `exp`, `inter`, `work`) VALUES
('Software Developer', 'B.E/B.TECH', 'Chennai', '20,000-30,000', 'We are currently in search of an experienced Software Developer to create and maintain software, in-house hardware and network systems. The successful candidate will also help to develop critical products for our clients, and offer excellent technical support. This is a fantastic opportunity to engage in a positive and creative work environment that offers excellent benefits and flexible schedules.', 'TCS limited', 'Java,Basic Knowledge in SQL,Bootstrap', 'Fresher', '1 Aptitude Assessment\r\n1 Technical Round\r\n1 HR Round', 'Work from Office'),
('Software Developer', 'ME/M.TECH', 'Nagpur', '30,000-40,000', 'We are currently in search of an experienced Software Developer to create and maintain software, in-house hardware and network systems. The successful candidate will also help to develop critical products for our clients, and offer excellent technical support. This is a fantastic opportunity to engage in a positive and creative work environment that offers excellent benefits and flexible schedules.', 'HCL Technologies', 'Java,Basic Knowledge in SQL,Bootstrap', 'Fresher', '1 Aptitude Assessment\r\n1 Technical Round\r\n1 HR Round', 'Work from Office'),
('Software Developer', 'MCA', 'Hyderabad', '30,000-40,000', 'We are currently in search of an experienced Software Developer to create and maintain software, in-house hardware and network systems. The successful candidate will also help to develop critical products for our clients, and offer excellent technical support. This is a fantastic opportunity to engage in a positive and creative work environment that offers excellent benefits and flexible schedules.', 'Deloitte Solutions', 'Python,Django', 'Fresher', '1 Aptitude Assessment\r\n1 HR Round', 'Work from Office'),
('Software Developer', 'MBA/PGDM', 'Mumbai', '20,000-30,000', 'We are currently in search of an experienced Software Developer to create and maintain software, in-house hardware and network systems. The successful candidate will also help to develop critical products for our clients, and offer excellent technical support. This is a fantastic opportunity to engage in a positive and creative work environment that offers excellent benefits and flexible schedules.', 'Wipro Solutions', 'TypeScript Programming,Node JS', 'Fresher', '1 Aptitude Assessment\r\n1 Communication Round\r\n1 HR Round', 'Work from Office'),
('Marketing', 'B.Com', 'Hyderabad', '10,000-20,000', 'We are looking for a Marketing Analyst who?ll research and identify ways to build our brand and acquire new clients.\r\n\r\nMarketing Analyst responsibilities include tracking advertising costs, researching consumer behavior and exploring market trends and opportunities. To be successful in this role, you should have experience with PPC campaigns and be comfortable with processing and analyzing marketing data.', 'Beta Coad Enterprises', 'Expertise in Google Analytics,Good knowledge of MS Excel.', 'Fresher', '\r\n1 Communication Round\r\n1 HR Round', 'Work from Office'),
('Marketing', 'M.Com', 'Lucknow', '20,000-30,000', 'We are looking for a Marketing Analyst who?ll research and identify ways to build our brand and acquire new clients.\r\n\r\nMarketing Analyst responsibilities include tracking advertising costs, researching consumer behavior and exploring market trends and opportunities. To be successful in this role, you should have experience with PPC campaigns and be comfortable with processing and analyzing marketing data.', 'Wave Infratech Enterprises', 'Experience with PPC campaigns,Work experience as a Marketing Analyst or similar role', '1 year experience or more', '\r\n1 Communication Round\r\n1 HR Round', 'Work from Office'),
('Marketing', 'MBA/PGDM', 'Kolkata', '10,000-20,000', 'We are looking for a Marketing Analyst who?ll research and identify ways to build our brand and acquire new clients.\r\n\r\nMarketing Analyst responsibilities include tracking advertising costs, researching consumer behavior and exploring market trends and opportunities. To be successful in this role, you should have experience with PPC campaigns and be comfortable with processing and analyzing marketing data.', 'Talentstack Consulting ', 'Analytical abilities,In-depth understanding of SEM campaign strategies and SEO practices', 'Fresher', '\r\n1 Communication Round\r\n1 HR Round', 'Work from Office'),
('Software Testing', 'B.E/B.TECH', 'Mumbai', '10,000-20,000', 'We are looking for an experienced and passionate Software Tester to join our team!. As a Software Tester at our company, you will have the opportunity to work on new and exciting projects .', 'Nettech Solutions ', 'Detect and track software defects and inconsistencies,Basic Knowledge in programming ', '1 year experience or more', '1 Aptitude Assessments\r\n1 Technical Round\r\n1 HR Round\r\n', 'Work from Office'),
('Software Testing', 'ME/M.TECH', 'Delhi', '20,000-30,000', 'We are looking for a passionate Software Tester(fresher) to join our team!. As a Software Tester at our company, you will have the opportunity to work on new and exciting projects .', 'C-Edge Solutions ', 'Basic Knowledge in programming,Provide support and documentation', 'Fresher', '1 Aptitude Assessments\r\n\r\n1 HR Round\r\n', 'Work from Office'),
('Software Testing', 'MCA', 'Banglore', '20,000-30,000', 'We are looking for a passionate Software Tester(fresher) to join our team!. As a Software Tester at our company, you will have the opportunity to work on new and exciting projects .', 'Dinera Solutions ', 'Basic Knowledge in programming,Provide timely solutions', 'Fresher', '1 Aptitude Assessments\r\n1 Communication Round\r\n1 HR Round\r\n', 'Work from Office'),
('Web designing', 'B.E/B.TECH', 'Coimbatore', '10,000-20,000', 'We are looking for a web designer who will be responsible for creating great websites for our clients. Primary duties include conceptualizing and implementing creative ideas for client websites.', 'Virtual Softech', 'Basic Knowledge in programming such as HTML ,CSS, JQuery, JavaScript.', 'Fresher', '1 Aptitude Assessments\r\n1 Technical Round\r\n1 HR Round\r\n', 'Work from Office'),
('Web designing', 'ME/M.TECH', 'Chennai', '20,000-30,000', 'We are looking for a web designer who will be responsible for creating great websites for our clients. Primary duties include conceptualizing and implementing creative ideas for client websites.', 'Crystalpro Solutions', 'Basic Knowledge in programming such as HTML ,CSS, JQuery, JavaScript.', 'Fresher', '\r\n1 Technical Round\r\n1 HR Round\r\n', 'Work from Office'),
('Web designing', 'MCA', 'Banglore', '20,000-30,000', 'We are looking for a web designer who will be responsible for creating great websites for our clients. Primary duties include conceptualizing and implementing creative ideas for client websites.', 'Skyraan Technologies', 'Basic Knowledge in programming such as HTML ,CSS, JQuery, JavaScript.', 'Fresher', '\r\n1 Technical Round\r\n1 HR Round\r\n', 'Work from Office'),
('IT Hardware Engineer', 'B.E/B.TECH', 'Chennai', '10,000-20,000', 'We are seeking a talented and dedicated computer hardware engineer to develop, design, and install hardware components for electrical and computer systems.', 'Quest Global Limited', 'Comprehensive understanding of computer hardware, software,electrical systems is required.', 'Fresher', '1 Hardware Assessment Round\r\n1 Technical Round\r\n1 HR Round\r\n', 'Work from Office'),
('IT Hardware Engineer', 'ME/M.TECH', 'Kolkata', '10,000-20,000', 'We are seeking a talented and dedicated computer hardware engineer to develop, design, and install hardware components for electrical and computer systems.', 'Microchip Limited', 'Comprehensive understanding of computer hardware, software,electrical systems is required.', 'Fresher', '1 Hardware Assessment Round\r\n\r\n1 HR Round\r\n', 'Work from Home'),
('Finops Developer', 'MBA/PGDM', 'Banglore', '20,000-30,000', 'We are looking for an experienced FinOps Engineer to join our DevOps group.\r\nAs a FinOps Engineer, you will analyze cloud spend, identify potential cost savings, define follow-up activities, and increase productivity.', 'Skilltech Limited', 'Have good experience in GCP and/or AWS, FinOps Certified Practitioner.', '1 or more years experience.', '1 Aptitude Assessment\r\n1 Technical Round\r\n1 HR Round\r\n', 'Work from Home'),
('Finops Developer', 'M.Com', 'Delhi', '10,000-20,000', 'We are looking for an experienced FinOps Engineer to join our DevOps group.\r\nAs a FinOps Engineer, you will analyze cloud spend, identify potential cost savings, define follow-up activities, and increase productivity.', 'Amazon ', 'Have good experience in GCP and/or AWS, FinOps Certified Practitioner.', '1 or more years experience.', '1 Aptitude Assessment\r\n1 Technical Round\r\n1 HR Round\r\n', 'Work from Office'),
('Architecture', 'B.Arch', 'Lucknow', '20,000-30,000', 'We need a proficient Junior Architect to join our team! In this position, you will be responsible for planning and designing buildings while keeping in mind the needs of the project.', 'Booshnam Associates', 'Up-to-date knowledge of construction and building codes.', 'Fresher', '1 Communication Round\r\n1 HR Round\r\n', 'Work from Office'),
('Architecture', 'M.Arch', 'Coimbatore', '20,000-30,000', 'We need a proficient Junior Architect to join our team! In this position, you will be responsible for planning and designing buildings while keeping in mind the needs of the project.', 'Beyond Conceptz', 'Up-to-date knowledge of construction and building codes,Must have excellent people skills.', 'Fresher', '1 Communication Round\r\n1 HR Round\r\n', 'Work from Office'),
('Medical Coder', 'MBBS', 'Chennai', '10,000-20,000', 'We are looking for a Medical Coder to join our team to assist us in coding for insurance claims and databases. The Medical Coder will display motivation, be detail-oriented and have outstanding people skills that help them navigate any situation with ease.', 'Quest Corp Limited', 'Proficient computer skills,Outstanding organizational skills', 'Fresher', '1 Technical Round\r\n1 HR Round\r\n', 'Work from Office'),
('Medical Coder', 'B.E/B.TECH', 'Mumbai', '10,000-20,000', 'We are looking for a Medical Coder to join our team to assist us in coding for insurance claims and databases. The Medical Coder will display motivation, be detail-oriented and have outstanding people skills that help them navigate any situation with ease.', 'Hepatamize Limited', 'Proficient computer skills,Work with coding software.', 'Fresher', '1 Technical Round\r\n1 HR Round\r\n', 'Work from Office'),
('Medical Electronics', 'B.E/B.TECH', 'Chennai', '10,000-20,000', 'We are looking Engineers who  will build devices and procedures that will help in solving medical and health-related problems by merging their knowledge of medicine and biology with engineering practices and principles. ', 'Nestem Tech', 'Proficient in working with medical equipments ,good communication skills.', 'Fresher', '1 Technical Round\r\n1 HR Round\r\n', 'Work from Office'),
('Medical Electronics', 'MBBS', 'Nagpur', '20,000-30,000', 'We are looking Engineers who  will build devices and procedures that will help in solving medical and health-related problems by merging their knowledge of medicine and biology with engineering practices and principles. ', 'Nestem Tech', 'Proficient in working with medical equipments ,any medical degree.', 'Fresher', '1 Technical Round\r\n2 HR Rounds\r\n', 'Work from Office'),
('Fashion Designing', 'B.FashionTech', 'Chennai', '10,000-20,000', 'We are looking for a Fashion Designer to join our team and oversee the research and production of new clothing lines based on current trends in the market.Fashion Designer responsibilities include traveling to various fashion events and analyzing market data to determine fashion trends. ', 'Nova Tech', 'Ability to do sketches by hand,Excellent design and conceptual skills.', 'Fresher', '1 Designing(Hand Sketching) Round\r\n1 HR Round.\r\n', 'Work from Office');

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE `register` (
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `createpassword` varchar(100) NOT NULL,
  `confirmpassword` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `gender` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`firstname`, `lastname`, `createpassword`, `confirmpassword`, `phone`, `email`, `address`, `gender`) VALUES
('Sanjeev', 'Sanjeev', 'Sanjeevsan3702', 'Sanjeevsan3702', '8825416579', 'sanjeevsan096@gmail.com', 'No:16/5,selai ramasamy street, pillayar palayam, kanchipuram', 'Male'),
('MS', 'Dhoni', 'msd7777', 'msd7777', '1234567890', 'msd7777@gmail.com', 'No:1, jharghand street, ranchi', 'Male'),
('Vijay', 'Kumar', '12345678', '12345678', '1234567890', 'vijayjoseph2002@gmail.com', 'No:1,ramasamy street, chennai.', 'Male');

-- --------------------------------------------------------

--
-- Table structure for table `resume1`
--

CREATE TABLE `resume1` (
  `First_Name` varchar(100) NOT NULL,
  `Last_Name` varchar(100) NOT NULL,
  `Birthday_day` varchar(100) NOT NULL,
  `Birthday_Month` varchar(100) NOT NULL,
  `Birthday_Year` varchar(100) NOT NULL,
  `Email_Id` varchar(100) NOT NULL,
  `Mobile_Number` varchar(100) NOT NULL,
  `Address` varchar(100) NOT NULL,
  `Gender` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `resume1`
--

INSERT INTO `resume1` (`First_Name`, `Last_Name`, `Birthday_day`, `Birthday_Month`, `Birthday_Year`, `Email_Id`, `Mobile_Number`, `Address`, `Gender`) VALUES
('abishek', 'bachan', '2', 'February', '2011', 'sssss123@gmail.com', '8825416579', 'No:16/5,selai ramasamy street, pillayar palayam, kanchipuram', 'Male');

-- --------------------------------------------------------

--
-- Table structure for table `resume2`
--

CREATE TABLE `resume2` (
  `ClassX_Instituition` varchar(100) NOT NULL,
  `ClassX_Board` varchar(100) NOT NULL,
  `ClassX_Percentage` varchar(100) NOT NULL,
  `ClassX_YrOfPassing` varchar(100) NOT NULL,
  `ClassXII_Instituition` varchar(100) NOT NULL,
  `ClassXII_Board` varchar(100) NOT NULL,
  `ClassXII_Percentage` varchar(100) NOT NULL,
  `ClassXII_YrOfPassing` varchar(100) NOT NULL,
  `Graduation_Instituition` varchar(100) NOT NULL,
  `Graduation_Board` varchar(100) NOT NULL,
  `Graduation_Percentage` varchar(100) NOT NULL,
  `Graduation_YrOfPassing` varchar(100) NOT NULL,
  `Masters_Instituition` varchar(100) NOT NULL,
  `Masters_Board` varchar(100) NOT NULL,
  `Masters_Percentage` varchar(100) NOT NULL,
  `Masters_YrOfPassing` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `resume2`
--

INSERT INTO `resume2` (`ClassX_Instituition`, `ClassX_Board`, `ClassX_Percentage`, `ClassX_YrOfPassing`, `ClassXII_Instituition`, `ClassXII_Board`, `ClassXII_Percentage`, `ClassXII_YrOfPassing`, `Graduation_Instituition`, `Graduation_Board`, `Graduation_Percentage`, `Graduation_YrOfPassing`, `Masters_Instituition`, `Masters_Board`, `Masters_Percentage`, `Masters_YrOfPassing`) VALUES
('Swami Vivekananda mat.hr.sec.school', 'State Board', '97.2', '2017', 'Swami Vivekananda mat.hr.sec.school', 'State Board', '86.8', '2019', 'Panimalar Engineering College', 'Anna University', '90.9', '2023', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `resume3`
--

CREATE TABLE `resume3` (
  `Address` varchar(100) NOT NULL,
  `exp` varchar(100) NOT NULL,
  `project` varchar(100) NOT NULL,
  `language1` varchar(100) NOT NULL,
  `language2` varchar(100) NOT NULL,
  `language3` varchar(100) NOT NULL,
  `OtherHobby` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `resume3`
--

INSERT INTO `resume3` (`Address`, `exp`, `project`, `language1`, `language2`, `language3`, `OtherHobby`) VALUES
('java,sql', '1', 'Skill and Job recommendation ', 'Tamil', 'null', 'null', 'Playing Chess ,Singing');

-- --------------------------------------------------------

--
-- Table structure for table `topres1`
--

CREATE TABLE `topres1` (
  `First_Name` varchar(100) NOT NULL,
  `Last_Name` varchar(100) NOT NULL,
  `Birthday_day` varchar(100) NOT NULL,
  `Birthday_Month` varchar(100) NOT NULL,
  `Birthday_Year` varchar(100) NOT NULL,
  `Email_Id` varchar(100) NOT NULL,
  `Mobile_Number` varchar(100) NOT NULL,
  `Address` varchar(100) NOT NULL,
  `Gender` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `topres1`
--

INSERT INTO `topres1` (`First_Name`, `Last_Name`, `Birthday_day`, `Birthday_Month`, `Birthday_Year`, `Email_Id`, `Mobile_Number`, `Address`, `Gender`) VALUES
('Sanjeev', 'Sanjeev', '3', 'July', '2002', 'sanjeevsan096@gmail.com', '8825416579', 'No:16/5,selai ramasamy street, pillayar palayam, kanchipuram', 'Male');

-- --------------------------------------------------------

--
-- Table structure for table `topres2`
--

CREATE TABLE `topres2` (
  `ClassX_Instituition` varchar(100) NOT NULL,
  `ClassX_Board` varchar(100) NOT NULL,
  `ClassX_Percentage` varchar(100) NOT NULL,
  `ClassX_YrOfPassing` varchar(100) NOT NULL,
  `ClassXII_Instituition` varchar(100) NOT NULL,
  `ClassXII_Board` varchar(100) NOT NULL,
  `ClassXII_Percentage` varchar(100) NOT NULL,
  `ClassXII_YrOfPassing` varchar(100) NOT NULL,
  `Graduation_Instituition` varchar(100) NOT NULL,
  `Graduation_Board` varchar(100) NOT NULL,
  `Graduation_Percentage` varchar(100) NOT NULL,
  `Graduation_YrOfPassing` varchar(100) NOT NULL,
  `Masters_Instituition` varchar(100) NOT NULL,
  `Masters_Board` varchar(100) NOT NULL,
  `Masters_Percentage` varchar(100) NOT NULL,
  `Masters_YrOfPassing` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `topres2`
--

INSERT INTO `topres2` (`ClassX_Instituition`, `ClassX_Board`, `ClassX_Percentage`, `ClassX_YrOfPassing`, `ClassXII_Instituition`, `ClassXII_Board`, `ClassXII_Percentage`, `ClassXII_YrOfPassing`, `Graduation_Instituition`, `Graduation_Board`, `Graduation_Percentage`, `Graduation_YrOfPassing`, `Masters_Instituition`, `Masters_Board`, `Masters_Percentage`, `Masters_YrOfPassing`) VALUES
('Swami Vivekananda mat.hr.sec.school', 'State Board', '97.2', '2017', 'Swami Vivekananda mat.hr.sec.school', 'State Board', '86.8', '2019', 'Panimalar Engineering College', 'Anna University', '90.9', '2023', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `topres3`
--

CREATE TABLE `topres3` (
  `Address` varchar(100) NOT NULL,
  `exp` varchar(100) NOT NULL,
  `project` varchar(100) NOT NULL,
  `language1` varchar(100) NOT NULL,
  `language2` varchar(100) NOT NULL,
  `language3` varchar(100) NOT NULL,
  `OtherHobby` varchar(100) NOT NULL,
  `topjob` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `topres3`
--

INSERT INTO `topres3` (`Address`, `exp`, `project`, `language1`, `language2`, `language3`, `OtherHobby`, `topjob`) VALUES
('java,sql', '1', 'Virtual Board', 'Tamil', 'null', 'null', 'Playing Chess ', 'Junior Engineer');

-- --------------------------------------------------------

--
-- Table structure for table `updatejob`
--

CREATE TABLE `updatejob` (
  `FirstName` varchar(100) NOT NULL,
  `LastName` varchar(100) NOT NULL,
  `EmailId` varchar(100) NOT NULL,
  `CompanyName` varchar(100) NOT NULL,
  `ComapnyUrl` varchar(100) NOT NULL,
  `title` varchar(100) NOT NULL,
  `Location` varchar(100) NOT NULL,
  `jd` varchar(500) NOT NULL,
  `vacancies` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `updatejob`
--

INSERT INTO `updatejob` (`FirstName`, `LastName`, `EmailId`, `CompanyName`, `ComapnyUrl`, `title`, `Location`, `jd`, `vacancies`) VALUES
('Santhosh', 'Kumar', 'benzsanthosh25@gmail.com', 'Wipro Technologies', 'www.wiprotech.in', 'Software Tester', 'Chennai', 'We are looking for a results-driven software tester to be responsible for designing and running tests on software usability. The software tester will conduct tests, analyze the results, and report observations to the design team. You may also interact with clients in order to understand the requirements of the product.', '3'),
('Sarath', 'Kumar', 's.sarathsubburaj@gmail.com', 'TCS limited', 'www.tcsol.in', 'Software Developer', 'Bangalore', 'We are looking for a Software Developer to build and implement functional programs. You will work with other Developers and Product Managers throughout the software development life cycle.\r\n\r\nIn this role, you should be a team player with a keen eye for detail and problem-solving skills. If you also have experience in Agile frameworks and popular coding languages .Your goal will be to build efficient programs and systems that serve user needs.', '10');

-- --------------------------------------------------------

--
-- Table structure for table `webreg`
--

CREATE TABLE `webreg` (
  `webemail` varchar(100) NOT NULL,
  `webpassword` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `webreg`
--

INSERT INTO `webreg` (`webemail`, `webpassword`) VALUES
('admin3702@gmail.com', 'Admin7777');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
