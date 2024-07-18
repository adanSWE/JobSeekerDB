-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 10, 2024 at 12:04 AM
-- Server version: 10.5.21-MariaDB-0+deb11u1
-- PHP Version: 8.1.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `akhan28`
--

-- --------------------------------------------------------

--
-- Table structure for table `p_applications`
--

CREATE TABLE `p_applications` (
  `applicationID` int(11) NOT NULL,
  `applicantID` int(11) DEFAULT NULL,
  `listingID` int(11) DEFAULT NULL,
  `applicationStatus` tinyint(4) DEFAULT NULL,
  `applicationDate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `p_applications`
--

INSERT INTO `p_applications` (`applicationID`, `applicantID`, `listingID`, `applicationStatus`, `applicationDate`) VALUES
(1, 17, 16, 0, '2024-03-01'),
(2, 12, 2, 0, '2024-03-02'),
(3, 21, 12, 0, '2023-03-03'),
(4, 24, 5, 0, '2024-03-04'),
(5, 23, 30, 0, '2024-03-05'),
(6, 2, 6, 0, '2024-03-06'),
(7, 9, 28, 0, '2024-03-07'),
(8, 29, 9, 1, '2024-03-08'),
(9, 30, 3, 0, '2024-03-09'),
(10, 35, 17, 1, '2024-03-10'),
(11, 25, 11, 1, '2023-03-11'),
(12, 5, 27, 0, '2024-03-12'),
(13, 11, 10, 0, '2024-03-13'),
(14, 18, 20, 1, '2023-03-14'),
(15, 20, 7, 1, '2024-03-15'),
(16, 28, 14, 0, '2024-03-16'),
(17, 32, 26, 0, '2024-03-17'),
(18, 46, 21, 0, '2024-03-18'),
(19, 50, 15, 0, '2024-03-19'),
(20, 49, 26, 0, '2023-03-20');

-- --------------------------------------------------------

--
-- Table structure for table `p_employers`
--

CREATE TABLE `p_employers` (
  `employerID` int(11) NOT NULL,
  `companyName` varchar(50) DEFAULT NULL,
  `companyEmail` varchar(100) DEFAULT NULL,
  `companyPhone` varchar(15) DEFAULT NULL,
  `companyStreet` varchar(255) DEFAULT NULL,
  `companyPostCode` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `p_employers`
--

INSERT INTO `p_employers` (`employerID`, `companyName`, `companyEmail`, `companyPhone`, `companyStreet`, `companyPostCode`) VALUES
(1, 'Aurion Learning', 'info@aurionlearning.com', '02890422000', 'Mount Charles Street', 'BT7 1NZ'),
(2, 'Cirdan Imaging', 'info@cirdan.com', '02290731800', 'Heron Road', 'BT3 9LE'),
(3, 'IRP Commerce', 'info@irpcommerce.com', '02430264749', 'Scarva Road', 'BT32 3AN'),
(4, 'Riada Resourcing', 'info@riadaresourcing.com', '02830325600', 'Queen Street', 'BT52 1EF'),
(5, 'Learning Pool', 'info@learningpool.com', '02880421000', 'Clarendon Road', 'BT1 3BG'),
(6, 'Kainos', 'info@kainos.com', '02850573000', 'Upper Crescent', 'BT7 1NT'),
(7, 'Almac Group', 'info@almacgroup.com', '02848337200', 'Seagoe Street', 'BT63 5QD'),
(8, 'Chain Reaction Cycles', 'info@chainreactioncycles.com', '02863351976', 'Hope Street', 'BT51 7HK'),
(9, 'StatSports', 'info@statsports.com', '02870314750', 'Donegall Road', 'BT7 4EF'),
(10, 'Moy Park', 'info@moypark.com', '02848335500', 'William Street', 'BT1 2LD'),
(11, 'Wrightbus', 'info@wrightbus.com', '07834647212', 'Talbot Street', 'BT1 5LR'),
(12, 'Junction One Retail Park', 'info@junctionone.co.uk', '07494481595', 'Pilot Street', 'BT1 3EA'),
(13, 'Colliers Belfast', 'info@colliersni.com', '01870241540', 'Donegall Road', 'BT1 5UB'),
(14, 'AXA Insurance', 'info@axa.co.uk', '01790382080', 'Ormeau Road', 'BT2 8HS'),
(15, 'Abacus Careers', 'info@abacus.jobs', '07940312157', 'Castle Lane', 'BT1 5DB'),
(16, 'JDX Consulting', 'info@jdxconsulting.com', '02890421900', 'Castlerag Street', 'BT23 6TG'),
(17, 'Ulster Bank', 'info@ulsterbank.com', '02850323222', 'Cromac Street', 'BT4 6EF'),
(18, 'Fibrus', 'info@fibrus.com', '34271188091', 'Lisburn Road', 'BT9 9KF'),
(19, 'Diamond Recruitment', 'info@diamondrg.com', '02880651109', 'Malone Road', 'BT11 2TR'),
(20, 'GRAHAM', 'info@graham.co.uk', '07422689500', 'Shankill Road', 'BT23 4NF'),
(21, 'BlueSky Technologies', 'info@blueskytech.com', '07422689500', 'Castle Street', 'BT27 4DR'),
(22, 'Northern Light Labs', 'contact@nllabs.com', '07422689500', 'Main Street', 'BT20 4RU'),
(23, 'Swift Solutions', 'info@swiftsolutions.com', '07422689500', 'Market Square', 'BT70 1AB'),
(24, 'Horizon Innovations', 'info@horizoninnov.com', '07422689500', 'High Street', 'BT23 4HS'),
(25, 'Apex Dynamics', 'contact@apexdynamics.com', '07422689500', 'Fountain Street', 'BT41 4AT'),
(26, 'ClearView Ventures', 'hello@clearviewventures.com', '07422689500', 'Bridge Street', 'BT78 1DA'),
(27, 'FusionTech Group', 'info@fusiontechgroup.com', '07422689500', 'Church Lane', 'BT80 8QW'),
(28, 'Summit Solutions', 'info@summitsol.com', '07422689500', 'Mill Street', 'BT42 6AH'),
(29, 'TechEdge Solutions', 'contact@techedgesolutions.com', '07422689500', 'Victoria Street', 'BT38 7JE'),
(30, 'Connect Telecom', 'info@connect-tele.co.uk', '02881283291', 'Deer Park Road', 'BT17 0DP'),
(31, 'Schrader Electronics', 'info@schrader.com', '02874488000', 'Diamond Road', 'BT41 1QS'),
(32, 'Randox Laboratories', 'info@randox.com', '09214423413', 'Lanyon Street', 'BT29 4QY'),
(33, 'Pinsent Masons', 'info@pinsentmasons.com', '02840045111', 'Bedford Street', 'BT1 3LP'),
(34, 'Deloitte', 'info@deloitte.com', '02812345678', 'College Square Road', 'BT2 7EJ'),
(35, 'KPMG', 'info@kpmg.com', '02898765432', 'Donegall Road', 'BT27 8EF'),
(36, 'Danske Bank', 'info@danskebank.com', '02811223344', 'Lanyon Street', 'BT1 6JS'),
(37, 'Allstate Northern Ireland', 'info@allstate.com', '02855441122', 'Adelaide Street', 'BT1 3LP'),
(38, 'Liberty IT', 'info@liberty-it.co.uk', '02866778899', 'Bedford Street', 'BT2 8GA'),
(39, 'EY', 'info@ey.com', '02876543210', 'Donegall Road', 'BT2 7GL'),
(40, 'Allen & Overy', 'info@allenovery.com', '02833221100', 'Mill Street', 'BT1 6JH'),
(41, 'XCorp', 'info@xcorp.com', '07823451201', 'Oxford Street', 'BT59 7FL');

-- --------------------------------------------------------

--
-- Table structure for table `p_jobApplicants`
--

CREATE TABLE `p_jobApplicants` (
  `applicantID` int(11) NOT NULL,
  `firstName` varchar(50) DEFAULT NULL,
  `lastName` varchar(50) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `phoneNo` varchar(15) DEFAULT NULL,
  `skills` varchar(255) DEFAULT NULL,
  `CV` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `p_jobApplicants`
--

INSERT INTO `p_jobApplicants` (`applicantID`, `firstName`, `lastName`, `email`, `phoneNo`, `skills`, `CV`) VALUES
(1, 'Rakesh', 'Kumar', 'rkumar24@hotmail.com', '07890123456', 'International Relations, Leadership', 'CV_RakeshKumar_2024'),
(2, 'Jane', 'Brown', 'brownjane445@yahoo.com', '07690123427', 'Technical Proficiency, Entrepreneurship', 'CV_JaneBrown_2024'),
(3, 'Michael', 'Cera', 'ceramike12@gmail.com', '07890123458', 'Marketing, SEO', 'CV_MichaelCera_2024'),
(4, 'Tarun', 'Vikas', 'tvik123@gmail.com', '07890123460', 'Human Resources, Employee Relations', 'CV_TarunVikas_2024'),
(5, 'Lauren', 'Violet', 'violetlauren@yahoo.com', '07123410112', 'Data Analysis, SQL', 'CV_LaurenViolet_2024'),
(6, 'Jennifer', 'Clark', 'jencalrk@gmail.com', '07901234567', 'Financial Analysis', 'CV_JenniferClark_2024'),
(7, 'Elizabeth', 'White', 'eliz554@gmail.com', '07345678901', 'Customer Service', 'CV_ElizabethWhite_2024'),
(8, 'Christopher', 'Robinson', 'chris78@hotmail.com', '07012345678', 'Health and Safety', 'CV_ChristopherRobinson_2024'),
(9, 'Heather', 'Kelian', 'kelian.heath@gmail.com', '07567890123', 'Project Management, Technical Proficiency', 'CV_HeatherKelian_2024'),
(10, 'Rajveer', 'Singh', 'rajveer136@gmail.com', '07523890123', 'Supply Chain Management, Malware Analysis', 'CV_RajveerSingh_2024'),
(11, 'Emmanuella', 'Abbew', 'emman.abbs12@hotmail.com', '07890153456', 'Communication', 'CV_EmmanuellaAbbew_2024'),
(12, 'JJ', 'Tafawa', 'tafawa.23@yahoo.com', '07234237890', 'Digital Marketing, Entrepreneurship', 'CV_JJTafawa_2024'),
(13, 'Mohammed', 'Asif', 'mo.asif45@gmail.com', '07879012345', 'Health and Safety, Leadership', 'CV_MohammedAsif_2024'),
(14, 'Muneeb', 'Siddiqui', 'muneeb.siq@hotmail.com', '07789012345', 'Organizational Skills, Teamwork', 'CV_MuneebSiddiqui_2024'),
(15, 'Hamza', 'Wakil', 'hamza.wakil@yahoo.com', '07678901234', 'Stakeholder Management, Leadership', 'CV_HamzaWakil_2024'),
(16, 'Xang', 'Li', 'li.xang244@hotmail.com', '07670901237', 'Technical Proficiency, Leadership', 'CV_XangLi_2024'),
(17, 'Yamamoto', 'Inoue', 'inoue.yamamoto99@gmail.com', '07456789012', 'Business Management, Financial Management', 'CV_YamamotoInoue_2024'),
(18, 'Orihime', 'Shiba', 'shiba.ori01@gmail.com', '07987244557', 'Communication, Operations Management', 'CV_ShibaOrihime_2024'),
(19, 'Antonio', 'Silvera', 'silvera.antonio@hotmail.com', '07590645924', 'Medical Record Management, Time-Management', 'CV_AntonioSilvera_2024'),
(20, 'Zhang', 'Xin', 'xin.zhang90@gmail.com', '07182544201', 'Problem-Solving, Leadership', 'CV_XinZhang_2024'),
(21, 'Melodie', 'Garcia', 'garcia.melodie12@gmail.com', '07551406023', 'Strategic Planning, Risk Management', 'CV_MelodieGarcia_2024'),
(22, 'Asun', 'Abeila', 'asunab.04@gmail.com', '07212345678', 'Adaptability, Technical Proficiency', 'CV_AsunAbeila_2024'),
(23, 'Mahmoud', 'Hawta', 'hawta.mahmoud@hotmail.com', '07879836123', 'Risk Management, Leadership', 'CV_MahmoudHawta_2024'),
(24, 'Shankar', 'Yadav', 'shankar556@hotmail.com', '07801342678', 'Customer Service, Communication Skills', 'CV_ShankarYadav_2024'),
(25, 'Aatif', 'Aslam', 'aa.aslam01@gmail.com', '07812345678', 'Embedded Systems, Leadership', 'CV_AatifAslam_2024'),
(26, 'Scott', 'Pilgrim', 'pilgrim.scott@gmail.com', '0764327790', 'Critical Thinking, Creativity, Networking', 'CV_ScottPilgrim_2024'),
(27, 'Ada', 'Perri', 'adaperri18@hotmail.com', '0798105321', 'Critical Thinking, Creativity, Leadership', 'CV_AdaPerri_2024'),
(28, 'Steve', 'Mira', 'steve044@gmail.com', '07189341453', 'Financial Managment, Leadership', 'CV_SteveMira_2024'),
(29, 'Feng', 'Yu', 'fengyu04@hotmail.com', '07525141904', 'Entrepreneurship, Management Skills', 'CV_FengYu_2024'),
(30, 'Yousef', 'Ahmad', 'yousef.ah09@gmail.com', '07845173498', 'Entreprenuership, Technical Skills', 'CV_YousefAhmad_2024'),
(31, 'Thomas', 'Dszoua', 'thomas.dz@gmail.com', '07134582691', 'Medical Record Management, Leadership', 'CV_ThomasDszoua_2024'),
(32, 'Grace', 'McNally', 'grace.mc89@yahoo.com', '07953106586', 'Entreprenuership, Finance Management', 'CV_GraceMcNally_2024'),
(33, 'Xu', 'Hao', 'xu.hao@yahoo.com', '07142517658', 'Market Understanding, Persistence', 'CV_XuHao_2024'),
(34, 'Jiang', 'Tao', 'j.tao@hotmail.com', '0742151884', 'Adaptability, Market Understanding', 'CV_JiangTao_2024'),
(35, 'Murphy', 'Cooper', 'murphy.coop@gmail.com', '07151273389', 'Adaptability, Resourcefulness', 'CV_MurphyCooper_2024'),
(36, 'William', 'Thompson', 'w.thompson033@gmail.com', '07445381329', 'Entreprenuership, Leadership', 'CV_WilliamThompson_2024'),
(37, 'Brandon', 'Cook', 'b.cook01@yahoo.com', '07814617903', 'Networking and Relationship Building', 'CV_BrandonCook_2024'),
(38, 'Robert', 'Drew', 'robdrew055@gmail.com', '07925719058', 'Risk-taking, Innovation', 'CV_RobertDrew_2024'),
(39, 'Kwame', 'Mensah', 'k.mensah@yahoo.com', '07924153243', 'Teamwork, Communication', 'CV_KwameMensah_2024'),
(40, 'Sana', 'Rehan', 'sana.r01@hotmail.com', '07734537172', 'Entreprenuership, Communication', 'CV_SanaRehan_2024'),
(41, 'Idris', 'Aleena', 'i.aleena@gmail.com', '07563692749', 'Financial Literacy, Adapability', 'CV_IdrisAleena_2024'),
(42, 'Jacob', 'Weiss', 'J.weiss@gmail.com', '07981423891', 'Time-Management, Leadership, Emotional Intelligence', 'CV_JacobWeiss_2024'),
(43, 'Leah', 'Sandler', 'leah.s04@yahoo.com', '07365521098', 'Resilience, Financial Management, Communication', 'CV_LeahSandler_2024'),
(44, 'Yaa', 'Osei', 'y.osei@gmail.com', '07754351784', 'Leadership, Communcation', 'CV_YaaOsei_2024'),
(45, 'Kofi', 'Okonkwo', 'kofi.ok01@yahoo.com', '07462618507', 'Cultural Competence, Resilience', 'CV_KofiOkonkwo_2024'),
(46, 'Pham', 'Lin', 'p.lin@hotmail.com', '07442829416', 'Conflict Management, Negotiation', 'CV_PhanLin_2024'),
(47, 'Jordan', 'Carter', 'jcarter669@gmail.com', '07697392135', 'Emotional Intelligence, Networking', 'CV_JordanCarter_2024'),
(48, 'Jousha', 'Millie', 'jmillie@hotmail.com', '07451947698', 'Cultural Competence, Conflict Resolution', 'CV_JoshuaMillie_2024'),
(49, 'Aiden', 'Mark', 'a.mark@gmail.com', '07889164963', 'Networking, Communication', 'CV_AidenMark_2024'),
(50, 'Carl', 'Roger', 'rogerC03@hotmail.com', '07235453721', 'Emotional Intelligence, Resilience', 'CV_CarlRoger_2024'),
(51, 'Akira', 'Toriyama', 'tori.akira@gmail.com', '07432875401', 'Communication and Leadership skills', 'CV_AkiraToriyama_2024');

-- --------------------------------------------------------

--
-- Table structure for table `p_jobCategories`
--

CREATE TABLE `p_jobCategories` (
  `categoryID` int(11) NOT NULL,
  `categoryName` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `p_jobCategories`
--

INSERT INTO `p_jobCategories` (`categoryID`, `categoryName`) VALUES
(1, 'Software Development'),
(2, 'Data Science'),
(3, 'Marketing'),
(4, 'Human Resources'),
(5, 'Finance'),
(6, 'Customer Service'),
(7, 'Healthcare'),
(8, 'Education'),
(9, 'Engineering'),
(10, 'Hospitality'),
(11, 'Research');

-- --------------------------------------------------------

--
-- Table structure for table `p_jobListings`
--

CREATE TABLE `p_jobListings` (
  `listingID` int(11) NOT NULL,
  `employerID` int(11) DEFAULT NULL,
  `positionID` int(11) DEFAULT NULL,
  `jobDescription` varchar(200) DEFAULT NULL,
  `jobRequirements` varchar(250) DEFAULT NULL,
  `jobLocation` varchar(100) DEFAULT NULL,
  `jobStatus` tinyint(4) DEFAULT NULL,
  `postedDate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `p_jobListings`
--

INSERT INTO `p_jobListings` (`listingID`, `employerID`, `positionID`, `jobDescription`, `jobRequirements`, `jobLocation`, `jobStatus`, `postedDate`) VALUES
(1, 6, 1, 'Seeking a Software Engineer with experience in web development.', '3+ years of experience in web development, proficient in JavaScript, HTML, CSS.', 'Remote', 1, '2024-01-02'),
(2, 2, 3, 'Looking for a Marketing Specialist with experience in the industry.', '5+ years of experience in Trading and Negotiations.', 'Remote', 0, '2023-12-28'),
(3, 1, 13, 'In need of skilled graphic desginer.', '2+ years of experience required.', 'On-Site', 1, '2024-02-14'),
(4, 6, 12, 'Seeking a Digital Marketer with some experience in freelancing', '2+ years of digital marketing and Freelancing experience', 'On-Site', 0, '2022-08-19'),
(5, 3, 23, 'Seeking a IT Support Specialist with experience in customer service.', 'Proficiency in Communications and basic IT.', 'On-Site', 1, '2024-03-07'),
(6, 39, 21, 'Looking for a well experienced Software Developer', '5+ years of industry experience, Must be proficient in python', 'Remote', 1, '2023-12-23'),
(7, 7, 15, 'Looking for a legal assistant', '2 years of industry experience minimum', 'On-Site', 0, '2024-03-12'),
(8, 4, 6, 'Seeking a Customer Service Representative', '5+ years of industry experience.', 'On-Site', 1, '2024-02-05'),
(9, 10, 20, 'Seeking a Resort Manager', 'No industry experience required', 'On-Site', 0, '2022-08-15'),
(10, 5, 8, 'Looking for a proper educator', 'Communication skill required', 'On-Site', 1, '2024-02-01'),
(11, 38, 1, 'Looking for fresher Software Engineers', 'No industry experience required', 'Remote', 0, '2023-03-07'),
(12, 17, 25, 'Looking for experienced Accountant', '3+ years of industry experience required.', 'On-Site', 1, '2023-02-04'),
(13, 8, 14, 'Seeking experienced Product Manager', '1+ years of industry experience required and Communication Skills required', 'On-Site', 0, '2023-12-28'),
(14, 36, 5, 'Seeking Financial Analysts', '3+ years of industry experience required and Leadership Skills required', 'On-Site', 1, '2024-03-12'),
(15, 9, 18, 'Looking for a Sports Teacher', 'No prior experience required, Communication and Resilience skills required', 'On-Site', 1, '2024-02-12'),
(16, 7, 4, 'Looking for a HR Manager', '1+ years of experience, Communication and Resilience skills required', 'On-Site', 1, '2023-01-13'),
(17, 20, 16, 'Looking for a chef', '3+ years of experience, Leadership skills required', 'On-Site', 0, '2024-01-13'),
(18, 40, 21, 'Seeking a professional Software Developer', '3+ years of experience, Leadership skills required', 'Remote', 1, '2024-03-12'),
(19, 13, 7, 'Seeking a healthcare provider', '2+ years of experience, Resilience Skills required', 'On-Site', 1, '2023-12-28'),
(20, 12, 20, 'Looking for a Resort Manager', '2+ years of experience required', 'On-Site', 0, '2023-02-18'),
(21, 16, 6, 'Seeking a Customer Service Representative', '3+ years of experience and Leadership skills required', 'On-Site', 1, '2024-03-28'),
(22, 34, 21, 'Seeking a Software Developer proficient in Java and Python', '2+ years of experience and Programming Skills required', 'On-Site', 0, '2023-12-23'),
(23, 9, 7, 'Looking for a healthcare provider.', 'Must be experienced with basic first aid', 'On-Site', 1, '2024-02-13'),
(24, 13, 9, 'Looking for an Electrical Engineer', 'Must be experienced with basic basic electrical engineering', 'On-Site', 0, '2024-01-12'),
(25, 12, 16, 'Looking for an Head Chef', 'Must be experienced in the kitchen and have Leadership skills', 'On-Site', 0, '2023-09-10'),
(26, 30, 26, 'Looking for Sales executive.', '2+ years of experience required', 'On-Site', 1, '2023-03-07'),
(27, 14, 22, 'Looking for an experienced Data Analyst.', '3+ years of experience and Communication skills required', 'On-Site', 1, '2024-02-14'),
(28, 31, 19, 'Seeking a Mechanical Engineer', '2+ years of experience required', 'On-Site', 0, '2024-01-12'),
(29, 13, 19, 'Seeking a Mechanical Engineer', '3+ years of experience required', 'On-Site', 1, '2023-12-28'),
(30, 16, 4, 'Looking for a HR Manager', '2+ years of experience required', 'On-Site', 1, '2024-03-13'),
(31, 10, 20, 'Looking for a Resort Manager.', 'No industry experience required.', 'On-Site', 1, '2024-03-12');

-- --------------------------------------------------------

--
-- Table structure for table `p_jobPositions`
--

CREATE TABLE `p_jobPositions` (
  `positionID` int(11) NOT NULL,
  `positionName` varchar(50) DEFAULT NULL,
  `categoryID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `p_jobPositions`
--

INSERT INTO `p_jobPositions` (`positionID`, `positionName`, `categoryID`) VALUES
(1, 'Software Engineer', 1),
(2, 'Data Scientist', 2),
(3, 'Marketing Specialist', 3),
(4, 'HR Manager', 4),
(5, 'Financial Analyst', 5),
(6, 'Customer Service Representative', 6),
(7, 'Healthcare Provider', 7),
(8, 'Educator', 8),
(9, 'Electrical Engineer', 9),
(10, 'Hospitality Manager', 10),
(11, 'Diagnostic Medical Sonographer', 1),
(12, 'IT Support Specialist', 2),
(13, 'Graphic Designer', 3),
(14, 'Product Manager', 4),
(15, 'Legal Assistant', 5),
(16, 'Chef', 6),
(17, 'Physical Therapist', 7),
(18, 'Teacher', 8),
(19, 'Mechanical Engineer', 9),
(20, 'Resort Manager', 10),
(21, 'Software Developer', 1),
(22, 'Data Analyst', 2),
(23, 'Digital Marketer', 3),
(24, 'Human Resources Coordinator', 4),
(25, 'Accountant', 5),
(26, 'Sales Associate', 6),
(27, 'Nurse Practitioner', 7),
(28, 'School Teacher', 8),
(29, 'Civil Engineer', 9),
(30, 'Event Planner', 10),
(31, 'Business Analyst', 1),
(32, 'Quality Assurance Tester', 2),
(33, 'Marketing Manager', 3),
(34, 'Recruiter', 4),
(35, 'Financial Planner', 5),
(36, 'Customer Service Supervisor', 6),
(37, 'Healthcare Administrator', 7),
(38, 'Educational Consultant', 8),
(39, 'Chemical Engineer', 9),
(40, 'Hospitality Consultant', 10),
(41, 'Software Quality Assurance', 1),
(42, 'Data Analytics Manager', 2),
(43, 'Digital Marketing Specialist', 3),
(44, 'HR Consultant', 4),
(45, 'Financial Advisor', 5),
(46, 'Customer Service Manager', 6),
(47, 'Healthcare Consultant', 7),
(48, 'Education Consultant', 8),
(49, 'Structural Engineer', 9),
(50, 'Hotel Manager', 10),
(51, 'Software Development Manager', 1),
(52, 'Data Science Manager', 2),
(53, 'Marketing Director', 3),
(54, 'HR Director', 4),
(55, 'Financial Manager', 5),
(56, 'Customer Service Director', 6),
(57, 'Healthcare Director', 7),
(58, 'Education Director', 8),
(59, 'Mechanical Systems Engineer', 9),
(60, 'Hospitality Director', 10),
(61, 'Software Development Lead', 1),
(62, 'Data Science Lead', 2),
(63, 'Marketing Lead', 3),
(64, 'HR Lead', 4),
(65, 'Financial Lead', 5),
(66, 'Physiotherapist', 7);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `p_applications`
--
ALTER TABLE `p_applications`
  ADD PRIMARY KEY (`applicationID`),
  ADD KEY `applicantID` (`applicantID`),
  ADD KEY `listingID` (`listingID`);

--
-- Indexes for table `p_employers`
--
ALTER TABLE `p_employers`
  ADD PRIMARY KEY (`employerID`);

--
-- Indexes for table `p_jobApplicants`
--
ALTER TABLE `p_jobApplicants`
  ADD PRIMARY KEY (`applicantID`);

--
-- Indexes for table `p_jobCategories`
--
ALTER TABLE `p_jobCategories`
  ADD PRIMARY KEY (`categoryID`);

--
-- Indexes for table `p_jobListings`
--
ALTER TABLE `p_jobListings`
  ADD PRIMARY KEY (`listingID`),
  ADD KEY `employerID` (`employerID`),
  ADD KEY `positionID` (`positionID`);

--
-- Indexes for table `p_jobPositions`
--
ALTER TABLE `p_jobPositions`
  ADD PRIMARY KEY (`positionID`),
  ADD KEY `categoryID` (`categoryID`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `p_applications`
--
ALTER TABLE `p_applications`
  ADD CONSTRAINT `p_applications_ibfk_1` FOREIGN KEY (`applicantID`) REFERENCES `p_jobApplicants` (`applicantID`),
  ADD CONSTRAINT `p_applications_ibfk_2` FOREIGN KEY (`listingID`) REFERENCES `p_jobListings` (`listingID`);

--
-- Constraints for table `p_jobListings`
--
ALTER TABLE `p_jobListings`
  ADD CONSTRAINT `p_jobListings_ibfk_1` FOREIGN KEY (`employerID`) REFERENCES `p_employers` (`employerID`),
  ADD CONSTRAINT `p_jobListings_ibfk_2` FOREIGN KEY (`positionID`) REFERENCES `p_jobPositions` (`positionID`);

--
-- Constraints for table `p_jobPositions`
--
ALTER TABLE `p_jobPositions`
  ADD CONSTRAINT `p_jobPositions_ibfk_1` FOREIGN KEY (`categoryID`) REFERENCES `p_jobCategories` (`categoryID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
