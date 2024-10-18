-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Oct 18, 2024 at 05:42 PM
-- Server version: 10.5.23-MariaDB-0+deb11u1
-- PHP Version: 8.1.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `iedmonds01`
--

-- --------------------------------------------------------

--
-- Table structure for table `Applications`
--

CREATE TABLE `Applications` (
  `Listing_ID` int(11) NOT NULL,
  `Candidate_ID` int(11) NOT NULL,
  `Date_Submitted` date NOT NULL DEFAULT current_timestamp(),
  `Application_Status_ID` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Applications`
--

INSERT INTO `Applications` (`Listing_ID`, `Candidate_ID`, `Date_Submitted`, `Application_Status_ID`) VALUES
(3, 24, '2024-03-10', 1),
(3, 25, '2024-03-02', 1),
(4, 8, '2024-03-09', 1),
(5, 7, '2024-03-05', 2),
(6, 4, '2023-12-23', 3),
(6, 12, '2023-12-09', 4),
(8, 7, '2024-03-07', 1),
(9, 5, '2024-03-05', 2),
(9, 15, '2024-03-07', 2),
(9, 21, '2024-03-08', 3),
(10, 11, '2024-03-03', 2),
(10, 18, '2024-03-02', 2),
(11, 24, '2024-03-02', 3),
(12, 1, '2024-03-02', 3),
(14, 19, '2023-12-17', 4),
(15, 1, '2024-03-03', 2),
(16, 8, '2024-03-09', 1),
(16, 16, '2024-03-08', 1),
(17, 20, '2024-03-01', 4),
(18, 4, '2024-02-20', 4),
(18, 14, '2024-02-20', 4),
(18, 17, '2024-02-21', 4),
(19, 11, '2024-03-02', 2),
(20, 2, '2023-12-09', 4),
(20, 7, '2023-12-12', 3);

-- --------------------------------------------------------

--
-- Table structure for table `ApplicationStatus`
--

CREATE TABLE `ApplicationStatus` (
  `Application_Status_ID` int(11) NOT NULL,
  `Application_Status_Name` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ApplicationStatus`
--

INSERT INTO `ApplicationStatus` (`Application_Status_ID`, `Application_Status_Name`) VALUES
(4, 'Accepted'),
(2, 'Interviewing'),
(1, 'Pending'),
(3, 'Rejected');

-- --------------------------------------------------------

--
-- Table structure for table `Candidates`
--

CREATE TABLE `Candidates` (
  `Candidate_ID` int(11) NOT NULL,
  `Forename` varchar(32) NOT NULL,
  `Surname` varchar(32) NOT NULL,
  `DOB` date NOT NULL,
  `Candidate_Contact` varchar(11) DEFAULT NULL,
  `Candidate_Email` varchar(64) NOT NULL,
  `CV` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Candidates`
--

INSERT INTO `Candidates` (`Candidate_ID`, `Forename`, `Surname`, `DOB`, `Candidate_Contact`, `Candidate_Email`, `CV`) VALUES
(1, 'John', 'Smith', '1990-05-15', '07712345678', 'johnsmith@gmail.com', 'john_smith_cv.docx'),
(2, 'Sarah', 'Johnson', '1988-08-22', '07823456789', 'sarahjohnson@gmail.com', 'sarah_johnson_cv.docx'),
(3, 'Michael', 'Davis', '1995-07-15', NULL, 'michaeldavis@gmail.com', NULL),
(4, 'Emily', 'White', '1992-03-25', '07934567890', 'emilywhite@gmail.com', 'emily_white_cv.docx'),
(5, 'Christopher', 'Anderson', '1987-02-07', '07645678901', 'christopheranderson@gmail.com', 'christopher_anderson_cv.docx'),
(6, 'Jessica', 'Martin', '2001-06-12', '07756789012', 'jessicamartin@gmail.com', NULL),
(7, 'Daniel', 'Taylor', '1998-04-03', NULL, 'danieltaylor@gmail.com', NULL),
(8, 'Olivia', 'Brown', '1996-11-12', '07867890123', 'oliviabrown@gmail.com', 'olivia_brown_cv.docx'),
(9, 'William', 'McMall', '1990-09-13', '07578901234', 'williammcmall@gmail.com', 'william_mcmall_cv.docx'),
(10, 'Sophia', 'Adams', '2000-07-11', NULL, 'sophiaadams@gmail.com', 'sophia_adams_cv.docx'),
(11, 'Ethan', 'McCormick', '1995-11-10', '07789012345', 'ethanmccormick@gmail.com', 'ethan_mccormick_cv.docx'),
(12, 'Ava', 'Turner', '1996-04-13', NULL, 'avaturner@gmail.com', 'ava_turner_cv.docx'),
(13, 'Benjamin', 'Walker', '1997-06-02', '07890123456', 'benjaminwalker@gmail.com', NULL),
(14, 'Mia', 'Evans', '1991-07-01', NULL, 'miaevans@gmail.com', 'mia_evans_cv.docx'),
(15, 'Alexander', 'Garcia', '1989-08-19', '07901234567', 'alexandergarcia@gmail.com', 'alexander_garcia_cv.docx'),
(16, 'Lily', 'Moore', '1994-11-15', NULL, 'lilymoore@gmail.com', 'lily_moore_cv.docx'),
(17, 'James', 'McAlroy', '1995-01-23', '07654321098', 'jamesmcalroy@gmail.com', 'james_mcalroy_cv.docx'),
(18, 'Emma', 'Hill', '1996-04-24', '07543210987', 'emmahill@gmail.com', 'emma_hill_cv.docx'),
(19, 'Jackson', 'Jameson', '1993-04-30', NULL, 'jacksonjameson@gmail.com', 'jackson_jameson_cv.docx'),
(20, 'Chloe', 'Russell', '1998-04-07', NULL, 'chloerussell@gmail.com', 'chloe_russell_cv.docx'),
(21, 'Aiden', 'Hayes', '1999-04-16', '07765432109', 'aidenhayes@gmail.com', 'aiden_hayes_cv.docx'),
(22, 'Grace', 'Rogers', '1999-02-24', NULL, 'gracerogers@gmail.com', 'grace_rogers_cv.docx'),
(23, 'Noah', 'Reed', '1992-03-27', '07876543210', 'noahreed@gmail.com', NULL),
(24, 'Zoey', 'Foster', '1993-08-05', '07567890123', 'zoeyfoster@gmail.com', 'zoey_foster_cv.docx'),
(25, 'Lucas', 'Simmons', '1995-10-17', '07789012345', 'lucassimmons@gmail.com', 'lucas_simmons_cv.docx'),
(26, 'Jeremy', 'Jackson', '1999-07-23', NULL, 'jeremyjackson@gmail.com', NULL),
(27, 'Mark', 'ONeil', '2000-01-02', NULL, 'markoneill@gmail.com', NULL),
(28, 'Marcus', 'Murray', '2000-03-01', NULL, 'marcusmurray@gmail.com', NULL),
(29, 'Joe', 'Johnson', '2000-01-01', NULL, 'joejohnson@gmail.com', NULL);

-- --------------------------------------------------------

--
-- Stand-in structure for view `candidatesWithCV`
-- (See below for the actual view)
--
CREATE TABLE `candidatesWithCV` (
`Candidate_ID` int(11)
,`Forename` varchar(32)
,`Surname` varchar(32)
,`DOB` date
,`Candidate_Contact` varchar(11)
,`Candidate_Email` varchar(64)
,`CV` varchar(32)
);

-- --------------------------------------------------------

--
-- Table structure for table `Employers`
--

CREATE TABLE `Employers` (
  `Employer_ID` int(11) NOT NULL,
  `Employer_Name` varchar(128) NOT NULL,
  `Address` varchar(64) NOT NULL,
  `City` varchar(32) NOT NULL,
  `Employer_Email` varchar(64) NOT NULL,
  `Employer_Contact` varchar(11) NOT NULL,
  `Website` varchar(64) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Employers`
--

INSERT INTO `Employers` (`Employer_ID`, `Employer_Name`, `Address`, `City`, `Employer_Email`, `Employer_Contact`, `Website`) VALUES
(1, 'Tech Innovators', '1 Innovation Street', 'Belfast', 'info@techinnovators.com', '07659163548', 'https://www.techinnovators.com'),
(2, 'Green Energy Solutions', '2 Renewable Street', 'Lisburn', 'info@greenenergy.com', '02867592657', 'https://www.greenenergy.com'),
(3, 'Northern Lights Media', '3 Media Street', 'Derry/Londonderry', 'info@nlmedia.com', '04657285921', NULL),
(4, 'Precision Engineering', '4 Precision Street', 'Newtownabbey', 'info@precisioneng.com', '08364716498', 'https://www.precisioneng.com'),
(5, 'BioHealth Pharma', '5 Health Street', 'Armagh', 'info@biohealthpharma.com', '05674815974', 'https://www.biohealthpharma.com'),
(6, 'Northern Finance Group', '6 Finance Street', 'Bangor', 'info@northernfinance.com', '09667184651', 'https://www.northernfinance.com'),
(7, 'Food Delights', '7 Food Street', 'Craigavon', 'info@fooddelights.com', '06985176813', 'https://www.fooddelights.com'),
(8, 'Digital Dynamics', '8 Digital Street', 'Enniskillen', 'info@digitaldynamics.com', '09768546786', 'https://www.digitaldynamics.com'),
(9, 'GreenThumb Garden Centre', '9 Nature Street', 'Coleraine', 'info@greenthumbgc.com', '07876156234', 'https://www.greenthumbgc.com'),
(10, 'EcoBuilders', '10 Eco Street', 'Belfast', 'info@ecobuilders.com', '02879675643', 'https://www.ecobuilders.com'),
(11, 'Motor Managers', '11 Motor Street', 'Derry/Londonderry', 'info@motormanagers.com', '02985637123', NULL),
(12, 'EduTech', '12 Education Street', 'Bangor', 'info@edutech.com', '02657489050', 'https://www.edutech.com'),
(13, 'Artisan Crafts', '13 Craft Street', 'Lisburn', 'info@artisancraft.com', '05674839251', 'https://www.artisancraft.com'),
(14, 'Coastal Insurance', '14 Coastal Street', 'Newry', 'info@coastalins.com', '05897671546', 'https://www.coastalins.com'),
(15, 'Oceanic Voyagers', '15 Ocean Street', 'Portrush', 'info@oceanvoyage.com', '03786789004', 'https://www.oceanvoyage.com'),
(16, 'Green Tech', '16 Green Street', 'Comber', 'info@greentech.com', '02564785912', NULL),
(17, 'Mega Retailers', '17 Retail Street', 'Belfast', 'info@megaretailers.com', '05967615337', 'https://www.megaretailers.com'),
(18, 'Tech Talkers', '18 Tech Street', 'Bangor', 'info@techtalkers.com', '07815649211', 'https://www.techtalkers.com'),
(19, 'Creative Minds', '19 Creativity Street', 'Belfast', 'info@creativeminds.com', '04675661156', 'https://www.creativeminds.com'),
(20, 'Healthcare Solutions', '20 Care Street', 'Lisburn', 'info@healthcaresol.com', '09667584471', 'https://www.healthcaresol.com'),
(21, 'Agrifarmers', '21 Agriculture Street', 'Enniskillen', 'info@agrifarmers.com', '05227246799', 'https://www.agrifarmers.com'),
(22, 'Northeastern Logistics', '22 Logistics Street', 'Derry/Londonderry', 'info@nelogistics.com', '09956744823', 'https://www.nelogistics.com'),
(23, 'Savvy Tech Supporters', '23 Support Street', 'Belfast', 'info@savvytech.com', '09689456671', 'https://www.savvytech.com'),
(24, 'Bewildering Beauty', '24 Beauty Street', 'Bangor', 'info@bewilderingbeauty.com', '0337586572', NULL),
(25, 'MegaElectronics', '25 Electric Street', 'Newry', 'info@megaelectronics.com', '01674523877', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `JobListings`
--

CREATE TABLE `JobListings` (
  `Listing_ID` int(11) NOT NULL,
  `Employer_ID` int(11) NOT NULL,
  `Date_Posted` date NOT NULL DEFAULT current_timestamp(),
  `Job_Title` varchar(64) NOT NULL,
  `Listing_Type_ID` int(11) NOT NULL,
  `Sector_ID` int(11) NOT NULL,
  `Description` varchar(512) NOT NULL,
  `Requirements` varchar(256) DEFAULT NULL,
  `Salaried` tinyint(1) NOT NULL,
  `Pay` float DEFAULT NULL,
  `Hours` int(11) DEFAULT NULL,
  `Location` varchar(32) NOT NULL,
  `Listing_Status_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `JobListings`
--

INSERT INTO `JobListings` (`Listing_ID`, `Employer_ID`, `Date_Posted`, `Job_Title`, `Listing_Type_ID`, `Sector_ID`, `Description`, `Requirements`, `Salaried`, `Pay`, `Hours`, `Location`, `Listing_Status_ID`) VALUES
(1, 3, '2024-03-01', 'Radio Host', 1, 9, 'Here at Northern Lights Media we promote a healthy work environment...', 'Candidates should have experience in...', 1, 45000, 30, 'Derry/Londonderry', 1),
(2, 3, '2024-03-10', 'Equipment Technician', 1, 1, 'Description2...', 'Requirements2...', 1, 35000, NULL, 'Derry/Londonderry', 1),
(3, 4, '2024-03-01', 'Precision Engineer', 1, 7, 'Description3...', 'Requirements3...', 1, 35000, 40, 'Newtownabbey', 1),
(4, 5, '2024-03-06', 'Pharmaceutical Chemist', 1, 2, 'Description4...', 'Requirements4...', 1, 30000, 40, 'Armagh', 1),
(5, 5, '2024-03-02', 'Store Clerk', 1, 5, 'Description5...', 'Requirements5...', 0, 11, 40, 'Armagh', 2),
(6, 6, '2023-12-05', 'Junior Accountant', 2, 3, 'Description6...', 'Requirements6...', 0, 10.42, 15, 'Bangor', 3),
(7, 7, '2024-03-10', 'Sous-Chef', 1, 12, 'Description7...', 'Requirements7...', 1, NULL, 40, 'Craigavon', 1),
(8, 9, '2024-03-05', 'Part-Time Store Clerk', 2, 5, 'Description8...', 'Requirements8...', 0, 10.42, 10, 'Coleraine', 1),
(9, 10, '2024-02-28', 'General Architect', 3, 11, 'Description9...', 'Requirements9...', 1, NULL, NULL, 'Belfast', 2),
(10, 11, '2024-02-27', 'Store Manager', 1, 7, 'Description10...', 'Requirements10...', 1, 35000, 40, 'Derry/Londonderry', 2),
(11, 11, '2024-03-01', 'Motor Mechanic', 1, 7, 'Description11...', 'Requirements11...', 0, 15.23, 40, 'Derry/Londonderry', 1),
(12, 12, '2024-02-25', 'Computer Systems Trainer', 1, 4, 'Description12...', 'Requirements12...', 1, NULL, 35, 'Remote', 2),
(13, 15, '2024-02-02', 'Information Tour Guide', 1, 12, 'Description13...', 'Requirements13...', 0, NULL, NULL, 'Portrush', 1),
(14, 15, '2023-12-03', 'Ship Sailor', 1, 12, 'Description14...', 'Requirements14...', 1, NULL, 35, 'Portrush', 3),
(15, 18, '2024-03-02', 'IT Specialist', 1, 1, 'Description15...', 'Requirements15...', 1, 42000, NULL, 'Bangor', 2),
(16, 20, '2024-03-06', 'Chemist', 1, 2, 'Description16...', 'Requirements16...', 1, 30000, 40, 'Lisburn', 1),
(17, 21, '2024-02-26', 'Part-Time Animal Handler', 2, 16, 'Description17...', 'Requirements17...', 0, 10.42, 12, 'Enniskillen', 3),
(18, 22, '2024-02-19', 'Infrastructure Construction Worker', 3, 9, 'Description18...', 'Requirements18...', 1, 30000, NULL, 'Derry/Londonderry', 3),
(19, 25, '2024-02-26', 'Store Manager', 1, 5, 'Description19...', 'Requirements19...', 1, 28000, 35, 'Newry', 2),
(20, 25, '2023-12-08', 'Store Clerk', 1, 5, 'Description20...', 'Requirements20...', 0, 11.5, 35, 'Newry', 3);

-- --------------------------------------------------------

--
-- Stand-in structure for view `jobSectorTotals`
-- (See below for the actual view)
--
CREATE TABLE `jobSectorTotals` (
`Sector_Name` varchar(32)
,`Total_Jobs` bigint(21)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `listingsOverActiveTimelimit`
-- (See below for the actual view)
--
CREATE TABLE `listingsOverActiveTimelimit` (
`Job_Title` varchar(64)
,`Employer_Name` varchar(128)
,`Employer_Email` varchar(64)
,`Date_Posted` date
,`Listing_Status_Name` varchar(32)
);

-- --------------------------------------------------------

--
-- Table structure for table `ListingStatus`
--

CREATE TABLE `ListingStatus` (
  `Listing_Status_ID` int(11) NOT NULL,
  `Listing_Status_name` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ListingStatus`
--

INSERT INTO `ListingStatus` (`Listing_Status_ID`, `Listing_Status_name`) VALUES
(3, 'Closed'),
(1, 'Hiring'),
(2, 'Interviewing');

-- --------------------------------------------------------

--
-- Table structure for table `ListingTypes`
--

CREATE TABLE `ListingTypes` (
  `Listing_Type_ID` int(11) NOT NULL,
  `Type_Name` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ListingTypes`
--

INSERT INTO `ListingTypes` (`Listing_Type_ID`, `Type_Name`) VALUES
(3, 'Contract'),
(1, 'Full Time'),
(2, 'Part Time');

-- --------------------------------------------------------

--
-- Table structure for table `Sectors`
--

CREATE TABLE `Sectors` (
  `Sector_ID` int(11) NOT NULL,
  `Sector_Name` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Sectors`
--

INSERT INTO `Sectors` (`Sector_ID`, `Sector_Name`) VALUES
(16, 'Agriculture'),
(8, 'Art/Entertainment'),
(11, 'Construction'),
(4, 'Education'),
(7, 'Engineering'),
(3, 'Finance'),
(2, 'Healthcare'),
(12, 'Hospitality & Tourism'),
(1, 'IT'),
(6, 'Legal'),
(10, 'Manufacturing'),
(14, 'Marketing'),
(9, 'Media'),
(5, 'Retail'),
(13, 'Science'),
(15, 'Transportation & Logistics');

-- --------------------------------------------------------

--
-- Stand-in structure for view `seeActiveListings`
-- (See below for the actual view)
--
CREATE TABLE `seeActiveListings` (
`Job_Title` varchar(64)
,`Location` varchar(32)
,`Type_Name` varchar(32)
,`Employer_Name` varchar(128)
,`Employer_Email` varchar(64)
,`Listing_Status_Name` varchar(32)
);

-- --------------------------------------------------------

--
-- Structure for view `candidatesWithCV`
--
DROP TABLE IF EXISTS `candidatesWithCV`;

CREATE ALGORITHM=UNDEFINED DEFINER=`iedmonds01`@`localhost` SQL SECURITY DEFINER VIEW `candidatesWithCV`  AS SELECT `Candidates`.`Candidate_ID` AS `Candidate_ID`, `Candidates`.`Forename` AS `Forename`, `Candidates`.`Surname` AS `Surname`, `Candidates`.`DOB` AS `DOB`, `Candidates`.`Candidate_Contact` AS `Candidate_Contact`, `Candidates`.`Candidate_Email` AS `Candidate_Email`, `Candidates`.`CV` AS `CV` FROM `Candidates` WHERE `Candidates`.`CV` is not null ;

-- --------------------------------------------------------

--
-- Structure for view `jobSectorTotals`
--
DROP TABLE IF EXISTS `jobSectorTotals`;

CREATE ALGORITHM=UNDEFINED DEFINER=`iedmonds01`@`localhost` SQL SECURITY DEFINER VIEW `jobSectorTotals`  AS SELECT `s`.`Sector_Name` AS `Sector_Name`, count(`jl`.`Listing_ID`) AS `Total_Jobs` FROM (`JobListings` `jl` join `Sectors` `s` on(`jl`.`Sector_ID` = `s`.`Sector_ID`)) WHERE `jl`.`Listing_Status_ID` <> 3 GROUP BY `s`.`Sector_Name` ORDER BY count(`jl`.`Listing_ID`) DESC, `s`.`Sector_Name` ASC ;

-- --------------------------------------------------------

--
-- Structure for view `listingsOverActiveTimelimit`
--
DROP TABLE IF EXISTS `listingsOverActiveTimelimit`;

CREATE ALGORITHM=UNDEFINED DEFINER=`iedmonds01`@`localhost` SQL SECURITY DEFINER VIEW `listingsOverActiveTimelimit`  AS SELECT `jl`.`Job_Title` AS `Job_Title`, `e`.`Employer_Name` AS `Employer_Name`, `e`.`Employer_Email` AS `Employer_Email`, `jl`.`Date_Posted` AS `Date_Posted`, `ls`.`Listing_Status_name` AS `Listing_Status_Name` FROM ((`JobListings` `jl` join `Employers` `e` on(`jl`.`Employer_ID` = `e`.`Employer_ID`)) join `ListingStatus` `ls` on(`jl`.`Listing_Status_ID` = `ls`.`Listing_Status_ID`)) WHERE `jl`.`Date_Posted` < curdate() - interval 30 day AND `jl`.`Listing_Status_ID` <> 3 ;

-- --------------------------------------------------------

--
-- Structure for view `seeActiveListings`
--
DROP TABLE IF EXISTS `seeActiveListings`;

CREATE ALGORITHM=UNDEFINED DEFINER=`iedmonds01`@`localhost` SQL SECURITY DEFINER VIEW `seeActiveListings`  AS SELECT `jl`.`Job_Title` AS `Job_Title`, `jl`.`Location` AS `Location`, `lt`.`Type_Name` AS `Type_Name`, `e`.`Employer_Name` AS `Employer_Name`, `e`.`Employer_Email` AS `Employer_Email`, `ls`.`Listing_Status_name` AS `Listing_Status_Name` FROM (((`JobListings` `jl` join `Employers` `e` on(`jl`.`Employer_ID` = `e`.`Employer_ID`)) join `ListingTypes` `lt` on(`jl`.`Listing_Type_ID` = `lt`.`Listing_Type_ID`)) join `ListingStatus` `ls` on(`jl`.`Listing_Status_ID` = `ls`.`Listing_Status_ID`)) WHERE `jl`.`Listing_Status_ID` = 1 ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Applications`
--
ALTER TABLE `Applications`
  ADD PRIMARY KEY (`Listing_ID`,`Candidate_ID`),
  ADD KEY `fk_Candidate_ID` (`Candidate_ID`),
  ADD KEY `fk_Application_Status_ID` (`Application_Status_ID`);

--
-- Indexes for table `ApplicationStatus`
--
ALTER TABLE `ApplicationStatus`
  ADD PRIMARY KEY (`Application_Status_ID`),
  ADD UNIQUE KEY `Application_Status_Name` (`Application_Status_Name`);

--
-- Indexes for table `Candidates`
--
ALTER TABLE `Candidates`
  ADD PRIMARY KEY (`Candidate_ID`),
  ADD UNIQUE KEY `Candidate_Email` (`Candidate_Email`),
  ADD UNIQUE KEY `CV` (`CV`),
  ADD KEY `Forename` (`Forename`,`Surname`);

--
-- Indexes for table `Employers`
--
ALTER TABLE `Employers`
  ADD PRIMARY KEY (`Employer_ID`),
  ADD KEY `Employer_Name` (`Employer_Name`);

--
-- Indexes for table `JobListings`
--
ALTER TABLE `JobListings`
  ADD PRIMARY KEY (`Listing_ID`),
  ADD KEY `fk_Employer_ID` (`Employer_ID`),
  ADD KEY `fk_Listing_Type_ID` (`Listing_Type_ID`),
  ADD KEY `Job_Title` (`Job_Title`),
  ADD KEY `Sector_ID` (`Sector_ID`),
  ADD KEY `Location` (`Location`),
  ADD KEY `Listing_Status_ID` (`Listing_Status_ID`);

--
-- Indexes for table `ListingStatus`
--
ALTER TABLE `ListingStatus`
  ADD PRIMARY KEY (`Listing_Status_ID`),
  ADD UNIQUE KEY `Listing_Status_name` (`Listing_Status_name`);

--
-- Indexes for table `ListingTypes`
--
ALTER TABLE `ListingTypes`
  ADD PRIMARY KEY (`Listing_Type_ID`),
  ADD UNIQUE KEY `Type_Name` (`Type_Name`);

--
-- Indexes for table `Sectors`
--
ALTER TABLE `Sectors`
  ADD PRIMARY KEY (`Sector_ID`),
  ADD UNIQUE KEY `Sector_Name` (`Sector_Name`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ApplicationStatus`
--
ALTER TABLE `ApplicationStatus`
  MODIFY `Application_Status_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `Candidates`
--
ALTER TABLE `Candidates`
  MODIFY `Candidate_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `Employers`
--
ALTER TABLE `Employers`
  MODIFY `Employer_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `JobListings`
--
ALTER TABLE `JobListings`
  MODIFY `Listing_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `ListingStatus`
--
ALTER TABLE `ListingStatus`
  MODIFY `Listing_Status_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `ListingTypes`
--
ALTER TABLE `ListingTypes`
  MODIFY `Listing_Type_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `Sectors`
--
ALTER TABLE `Sectors`
  MODIFY `Sector_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `Applications`
--
ALTER TABLE `Applications`
  ADD CONSTRAINT `fk_Application_Status_ID` FOREIGN KEY (`Application_Status_ID`) REFERENCES `ApplicationStatus` (`Application_Status_ID`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_Candidate_ID` FOREIGN KEY (`Candidate_ID`) REFERENCES `Candidates` (`Candidate_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_Listing_ID` FOREIGN KEY (`Listing_ID`) REFERENCES `JobListings` (`Listing_ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `JobListings`
--
ALTER TABLE `JobListings`
  ADD CONSTRAINT `fk_Employer_ID` FOREIGN KEY (`Employer_ID`) REFERENCES `Employers` (`Employer_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_Listing_Status_ID` FOREIGN KEY (`Listing_Status_ID`) REFERENCES `ListingStatus` (`Listing_Status_ID`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_Listing_Type_ID` FOREIGN KEY (`Listing_Type_ID`) REFERENCES `ListingTypes` (`Listing_Type_ID`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_Sector_ID` FOREIGN KEY (`Sector_ID`) REFERENCES `Sectors` (`Sector_ID`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
