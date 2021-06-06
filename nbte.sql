-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 06, 2021 at 05:08 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `nbte`
--

-- --------------------------------------------------------

--
-- Table structure for table `assignmodules`
--

CREATE TABLE `assignmodules` (
  `assignModuleID` int(11) NOT NULL,
  `roleID` int(11) DEFAULT NULL,
  `moduleID` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `assignmodules`
--

INSERT INTO `assignmodules` (`assignModuleID`, `roleID`, `moduleID`, `status`) VALUES
(92, 1, 42, 1),
(91, 0, 41, 1),
(90, 1, 41, 1),
(89, 0, 40, 1),
(88, 1, 40, 1),
(87, 0, 39, 1),
(86, 1, 39, 1),
(85, 0, 35, 1),
(84, 0, 36, 1),
(83, 0, 37, 1),
(82, 0, 38, 1),
(81, 1, 35, 1),
(80, 1, 36, 1),
(79, 1, 37, 1),
(78, 1, 38, 1),
(77, 1, 34, 1),
(76, 1, 33, 1),
(75, 0, 34, 1),
(74, 0, 33, 1),
(73, 0, 31, 1),
(72, 0, 32, 1),
(71, 1, 31, 1),
(70, 1, 32, 1),
(69, 0, 29, 1),
(68, 0, 30, 1),
(67, 1, 29, 1),
(66, 1, 30, 1),
(93, 0, 42, 1),
(94, 1, 43, 1),
(95, 1, 44, 1),
(96, 1, 45, 1),
(97, 1, 46, 1),
(98, 4, 38, 1),
(99, 4, 37, 1),
(100, 4, 36, 1),
(101, 4, 30, 1),
(102, 4, 29, 1),
(103, 1, 48, 1),
(104, 0, 48, 1),
(105, 1, 47, 1),
(106, 0, 47, 1),
(107, 1, 49, 1),
(108, 0, 49, 1),
(109, 1, 50, 1),
(110, 1, 51, 1),
(111, 4, 50, 1),
(112, 4, 51, 1),
(113, 7, 32, 1),
(114, 7, 29, 1),
(115, 0, 50, 1),
(116, 0, 51, 1),
(117, 0, 52, 1),
(118, 1, 52, 1);

-- --------------------------------------------------------

--
-- Table structure for table `assignrole`
--

CREATE TABLE `assignrole` (
  `assignRoleID` int(11) NOT NULL,
  `roleID` int(11) DEFAULT NULL,
  `userID` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `assignrole`
--

INSERT INTO `assignrole` (`assignRoleID`, `roleID`, `userID`) VALUES
(21, 1, 61),
(22, 0, 39),
(23, 4, 64),
(26, 7, 67),
(25, 7, 66),
(27, 7, 68);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2021_06_06_101308_create_staff_divisions_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `modules`
--

CREATE TABLE `modules` (
  `moduleID` int(11) NOT NULL,
  `moduleName` varchar(100) DEFAULT NULL,
  `route` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `modules`
--

INSERT INTO `modules` (`moduleID`, `moduleName`, `route`) VALUES
(39, 'Institution List Report', '/institution-list'),
(38, 'Add Programme Category', '/division'),
(37, 'Add Zones', '/zones'),
(36, 'Add Ownership', '/ownership'),
(35, 'Programme Type', '/programme-category'),
(34, 'Assign Division Head', '/assignhead'),
(32, 'Add Team', '/team'),
(31, 'Add Staff', '/staff'),
(30, 'Add Institutions', '/institution'),
(29, 'Polytechnic & Programme', '/programmes'),
(40, 'Programme List Report', '/programme-list'),
(41, 'Assign Directors', '/directors'),
(42, 'Assign PEDC', '/pedc'),
(47, 'Register Programme', 'division-programme'),
(44, 'Director Recommendation', '/director-report'),
(45, 'Division Recommendation', '/division-report'),
(46, 'PEDC Recommendation', '/pedc-report'),
(48, 'Existing Programme', '/existing-programme'),
(49, 'Accreditation Status', 'add-status'),
(50, 'Tie Staff Division to Programme Category', '/add-staff-division'),
(51, 'Add Staff Department', 'add-staff-department'),
(52, 'Add Staff Division', 'add-staff-div');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `roleID` int(11) NOT NULL,
  `roleName` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`roleID`, `roleName`) VALUES
(1, 'admin'),
(2, 'division head'),
(4, 'subadmin'),
(0, 'super admin'),
(3, 'team'),
(7, 'staff');

-- --------------------------------------------------------

--
-- Table structure for table `staff_divisions`
--

CREATE TABLE `staff_divisions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `divisionName` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `programmeCategory` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `staff_divisions`
--

INSERT INTO `staff_divisions` (`id`, `divisionName`, `programmeCategory`, `created_at`, `updated_at`) VALUES
(8, '20', 1, '2021-06-06 12:05:02', '2021-06-06 12:05:02'),
(9, '20', 17, '2021-06-06 12:05:12', '2021-06-06 12:05:12'),
(10, '24', 10, '2021-06-06 12:05:25', '2021-06-06 12:05:25'),
(11, '21', 13, '2021-06-06 12:05:41', '2021-06-06 12:05:41'),
(12, '25', 12, '2021-06-06 12:06:03', '2021-06-06 12:06:03'),
(13, '26', 15, '2021-06-06 12:06:18', '2021-06-06 12:06:18'),
(14, '22', 19, '2021-06-06 12:06:38', '2021-06-06 12:06:38'),
(15, '22', 11, '2021-06-06 12:06:47', '2021-06-06 12:06:47'),
(16, '23', 2, '2021-06-06 12:07:03', '2021-06-06 12:07:03'),
(17, '23', 14, '2021-06-06 12:07:17', '2021-06-06 12:07:17'),
(18, '21', 19, '2021-06-06 12:07:41', '2021-06-06 12:07:41'),
(19, '27', 20, '2021-06-06 12:07:55', '2021-06-06 12:07:55');

-- --------------------------------------------------------

--
-- Table structure for table `tblaccreditation_status`
--

CREATE TABLE `tblaccreditation_status` (
  `id` int(11) NOT NULL,
  `status` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblaccreditation_status`
--

INSERT INTO `tblaccreditation_status` (`id`, `status`) VALUES
(2, 'Approved'),
(3, 'Accredited'),
(4, 'Interim'),
(5, 'Deny'),
(6, 'Expired');

-- --------------------------------------------------------

--
-- Table structure for table `tblassignedteam`
--

CREATE TABLE `tblassignedteam` (
  `id` int(11) NOT NULL,
  `programme_tobe_accredited_id` int(11) DEFAULT NULL,
  `teamid` varchar(55) DEFAULT NULL,
  `institutionid` int(11) NOT NULL,
  `divisionid` int(11) DEFAULT NULL,
  `programmeid` int(11) NOT NULL,
  `categoryid` int(11) NOT NULL,
  `startdate` varchar(25) NOT NULL,
  `enddate` varchar(20) NOT NULL,
  `acreditedYear` varchar(10) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblassignedteam`
--

INSERT INTO `tblassignedteam` (`id`, `programme_tobe_accredited_id`, `teamid`, `institutionid`, `divisionid`, `programmeid`, `categoryid`, `startdate`, `enddate`, `acreditedYear`) VALUES
(20, 305, '2', 6, 12, 49, 1, '2021-05-09', '2021-05-14', '2021'),
(19, 305, '1', 6, 12, 49, 1, '2021-05-09', '2021-05-13', '2021');

-- --------------------------------------------------------

--
-- Table structure for table `tblbanklist`
--

CREATE TABLE `tblbanklist` (
  `bankID` int(11) NOT NULL,
  `bank` varchar(100) NOT NULL,
  `Bankcode` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblbanklist`
--

INSERT INTO `tblbanklist` (`bankID`, `bank`, `Bankcode`) VALUES
(1, 'SHATU BANK', ''),
(2, 'ECOBANK', 'ECOBANK'),
(3, 'HERITAGE BANK', ''),
(4, 'FIRST BANK OF NIGERIA', 'FIRST'),
(5, 'MAINSTREET BANK', ''),
(6, 'ASO BANK', 'ASO'),
(7, 'UNITED BANK OF AFRICA', 'UBA'),
(9, 'EQUITORIAL TRUST BANK', ''),
(10, 'ZENITH BANK', 'ZENITH'),
(11, 'GUARANTY TRUST BANK', 'GTB'),
(13, 'STANDARD CHARTERED BANK', ''),
(14, 'ACCESS BANK', 'ACCESS'),
(15, 'FIDELITY BANK', 'FIDELITY'),
(16, 'SKYE BANK', 'SKYE'),
(17, 'KEYSTONE BANK', ''),
(18, 'FIRST CITY MONUMENT BANK', 'FCMB'),
(20, 'STANBIC-IBTC BANK', ''),
(21, 'STERLING BANK', ''),
(32, 'UNITED BANK OF NIGERIA', 'UNION'),
(33, 'Garki Micro Finance Bank', 'GMFB'),
(34, 'JAIZ ', 'JAIZ'),
(35, 'UNITY BANK', 'UNITY');

-- --------------------------------------------------------

--
-- Table structure for table `tbldept`
--

CREATE TABLE `tbldept` (
  `id` int(11) NOT NULL,
  `departments` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbldept`
--

INSERT INTO `tbldept` (`id`, `departments`) VALUES
(3, 'Polytechnic (M&A)'),
(4, 'Polytechnic (S&T)'),
(5, 'Monotechnic'),
(6, 'VTSD');

-- --------------------------------------------------------

--
-- Table structure for table `tbldirectors`
--

CREATE TABLE `tbldirectors` (
  `id` int(11) NOT NULL,
  `staffid` int(11) NOT NULL,
  `divisionid` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbldirectors`
--

INSERT INTO `tbldirectors` (`id`, `staffid`, `divisionid`) VALUES
(3, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbldivision`
--

CREATE TABLE `tbldivision` (
  `id` int(11) NOT NULL,
  `divisions` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbldivision`
--

INSERT INTO `tbldivision` (`id`, `divisions`) VALUES
(1, 'Science, Computing and Related Technology'),
(2, 'Business, Management and Related Studies'),
(14, 'Finance and Related Studies'),
(13, 'Environmental Design Studies'),
(12, 'ENGINEERING TECHNOLOGY AND RELATED TECHNOLOGY'),
(11, 'ART, DESIGN AND RELATED TECHNOLOGY'),
(10, 'AGRICULTURE AND RELATED TECHNOLOGY'),
(15, 'Health and Related Technology'),
(17, 'Hospitality and Related Technology'),
(18, 'POST-HND (FULL PROFESSIONAL DIPLOMA)'),
(19, 'Information and Related Studies'),
(20, 'Institutional Administration');

-- --------------------------------------------------------

--
-- Table structure for table `tbldivisionhead`
--

CREATE TABLE `tbldivisionhead` (
  `id` int(11) NOT NULL,
  `staffid` int(11) NOT NULL,
  `divisionid` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbldivisionhead`
--

INSERT INTO `tbldivisionhead` (`id`, `staffid`, `divisionid`) VALUES
(1, 1, 1),
(2, 2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `tbldivision_programme`
--

CREATE TABLE `tbldivision_programme` (
  `id` int(11) NOT NULL,
  `division` varchar(100) DEFAULT NULL,
  `programme` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbldivision_programme`
--

INSERT INTO `tbldivision_programme` (`id`, `division`, `programme`) VALUES
(6, '10', 'Agricultural Extension Management'),
(5, '10', 'Agricultural Business and Management'),
(7, '10', 'Agricultural Technology (General Agriculture)'),
(8, '10', 'Animal Health & Production Technology'),
(9, '10', 'Animal Health Technology'),
(10, '10', 'Animal Production Technology'),
(11, '10', 'Crop Production Technology'),
(12, '10', 'Fisheries Technology'),
(13, '10', 'Forestry Technology'),
(14, '10', 'Home & Rural Economics'),
(15, '10', 'Horticulture & Landscape Technology'),
(16, '10', 'Pasture & Range Management'),
(17, '10', 'Pest Management Technology'),
(18, '10', 'Soil Science & Technology'),
(19, '10', 'Veterinary Laboratory Technology'),
(20, '10', 'Wild Life Management'),
(21, '11', 'Art Industrial Design'),
(22, '11', 'Fashion Design and Clothing Technology'),
(23, '11', 'Graphic Design and Advertising'),
(24, '11', 'Interior Design'),
(25, '11', 'Multimedia Technology'),
(26, '11', 'Music Technology'),
(27, '11', 'Photography'),
(28, '11', 'Printing Technology'),
(29, '2', 'Aviation Management'),
(30, '2', 'Business Administration and Management'),
(31, '2', 'Bilingual Secretarial Studies'),
(32, '2', 'Cooperative Economics and Management'),
(33, '2', 'Crime Management'),
(34, '2', 'Human Resources Management'),
(35, '2', 'Industrial & Labour Relations'),
(36, '2', 'Legislative Studies'),
(37, '2', 'Local Government Studies'),
(38, '2', 'Maritime Transport and Business Studies'),
(39, '2', 'Marketing'),
(40, '2', 'Office Technology & Management'),
(41, '2', 'Pension Administration & Management'),
(42, '2', 'Petroleum Marketing & Business Studies'),
(43, '2', 'Production and Operations Management'),
(44, '2', 'Public Administration'),
(45, '2', 'Purchasing and Supply'),
(46, '2', 'Social Development'),
(47, '12', 'Agricultural & Bio-Environmental Engineering'),
(48, '12', 'Aircraft Engineering Technology'),
(49, '12', 'Biomedical Engineering'),
(50, '12', 'Boat and Ship Building Engineering Technology'),
(51, '12', 'Cement Engineering Technology'),
(52, '12', 'Chemical Engineering Technology'),
(53, '12', 'Civil Engineering Technology'),
(54, '12', 'Computer Engineering Technology'),
(55, '12', 'Electrical/Electronic Engineering Technology'),
(56, '12', 'Explosive Ordinance Technology'),
(57, '12', 'Foundry Technology'),
(58, '12', 'Industrial Maintenance Engineering Technology'),
(59, '12', 'Industrial Safety and Environmental Engineering Technology'),
(60, '12', 'Marine Engineering Technology'),
(61, '12', 'Mechanical Engineering Technology'),
(62, '12', 'Mechatronics'),
(63, '12', 'Metallurgy'),
(64, '12', 'Mineral & Petroleum Resources Engineering Technology'),
(65, '12', 'Petroleum Engineering Technology'),
(66, '12', 'petroleum and Gas Processing Engineering Technology'),
(67, '12', 'Railway Engineering Technology'),
(68, '12', 'Renewable Energy'),
(69, '12', 'Water Resources Engineering Technology'),
(70, '12', 'Welding and Fabrication Engineering Technology'),
(71, '13', 'Architectural Technology'),
(72, '13', 'Building Technology'),
(73, '13', 'Cartography & Geographic Information Science'),
(74, '13', 'Estate Management & Valuation'),
(75, '13', 'Photogrammetry & Remote Sensing'),
(76, '13', 'Quantity Surveying'),
(77, '13', 'Surveying & Geo-informatics'),
(78, '13', 'Transportation Planning & Management'),
(79, '13', 'Urban and Regional Planning'),
(80, '14', 'Accountancy'),
(81, '14', 'Banking and Finance'),
(82, '14', 'Insurance'),
(83, '14', 'Taxation'),
(84, '15', 'Community Health'),
(85, '15', 'Dental Technology'),
(86, '15', 'Dental Therapy'),
(87, '15', 'Environmental Health Technology'),
(88, '15', 'Health Information Management'),
(89, '15', 'Medical Imaging Technology'),
(90, '15', 'Nursing'),
(91, '15', 'Nutrition and Dietics'),
(92, '15', 'Occupational Therapy'),
(93, '15', 'Optometry'),
(94, '15', 'Orthopedic Cast Technology'),
(95, '15', 'Physiotherapy'),
(96, '15', 'Prosthetics & Orthotics Technology'),
(97, '15', 'Psycho-Social Rehabilitation'),
(98, '15', 'Public Health Nursing'),
(99, '15', 'Radiography'),
(100, '17', 'Hospitality Management'),
(101, '17', 'Nutrition and Dietetics'),
(102, '17', 'Leisure & Tourism Management'),
(103, '16', 'Book Publishing'),
(104, '16', 'Library & Information Science'),
(105, '16', 'Mass Communication'),
(106, '1', 'Ceramic Technology'),
(107, '1', 'Computer Science'),
(108, '1', 'Food Technology'),
(109, '1', 'Geological Technology'),
(110, '1', 'Glass Technology'),
(111, '1', 'Laundry and Dry Cleaning Technology'),
(112, '1', 'Leather Technology'),
(113, '1', 'Nautical Science'),
(114, '1', 'Polymer Technology'),
(115, '1', 'Science Laboratory Technology'),
(116, '1', 'Statistics'),
(117, '1', 'Textile Technology'),
(118, '1', 'Wood and Paper Technology'),
(119, '18', 'Building Technology'),
(120, '18', 'Civil Engineering Technology'),
(121, '18', 'Chemical Engineering Technology'),
(122, '18', 'Electrical/Electronic Engineering Technology'),
(123, '18', 'Mechanical Engineering Technology'),
(124, '18', 'Printing Technology'),
(125, '18', 'Surveying & Geo-informatics'),
(126, '18', 'Urban and Regional Planning'),
(128, '12', 'Mechanical Engineering Technology(Power & Plant)'),
(129, '1', 'SLT (Biology/Microbiology option)'),
(130, '1', 'SLT (Chemistry/Biochemistry)'),
(131, '1', 'SLT (Physics/Electronic option)'),
(132, '1', 'SLT (Microbiology option)'),
(133, '12', 'Mechanical Engineering Technology (Manufacturing)'),
(134, '12', 'Electrical/Electronic Engineering Technology (Electronics & Telecom)'),
(135, '2', 'Social Development (Social Welfare)'),
(136, '1', 'SLT (Biochemistry option)'),
(137, '1', 'SLT (Chemistry option)'),
(138, '12', 'Aircraft Engineering Technology (Airframe)'),
(139, '12', 'Aircraft Engineering Technology (Avionics)'),
(140, '1', 'SLT (Environmental Biology option)');

-- --------------------------------------------------------

--
-- Table structure for table `tblinstitutions`
--

CREATE TABLE `tblinstitutions` (
  `id` int(11) NOT NULL,
  `zoneid` int(11) NOT NULL,
  `schoolcategoryid` int(11) NOT NULL,
  `institutions` text NOT NULL,
  `address` text,
  `yearestablished` varchar(20) DEFAULT NULL,
  `ownership` int(11) DEFAULT NULL,
  `datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblinstitutions`
--

INSERT INTO `tblinstitutions` (`id`, `zoneid`, `schoolcategoryid`, `institutions`, `address`, `yearestablished`, `ownership`, `datetime`) VALUES
(4, 6, 1, 'Akanu Ibiam Federal Polytechnic Unwana', 'Afikpo', '1980-10-15', 2, '2019-10-03 14:33:33'),
(5, 3, 1, 'Abdu Gusau Polytechnic', 'Abdu Gusau Polytechnic, \r\nP.M.B. 1021, Talata Mafara, \r\nZamfara State.', '1992-02-06', 1, '2020-03-06 16:08:09'),
(6, 6, 1, 'Abia State Polytechnic', 'Abia State Polytechnic,  \r\nP.M.B. 7166, Aba, Abia State. \r\nabiapoly¬-aba@yahoo.com', '1992-02-06', 1, '2020-03-06 16:10:10'),
(7, 7, 1, 'Abraham Adesanya Polytechnic', 'Abraham Adesanya Polytechnic, \r\nDogbolu/Akanran Ibadan Road, Atikori, \r\nIjebu Igbo, \r\nP.M.B. 1020, Ijebu-Igbo, Ogun State', '2004-02-06', 1, '2020-03-06 16:13:43'),
(8, 4, 1, 'Abubakar Tatari Ali Polytechnic', 'Abubakar Tatari Ali Polytechnic,  \r\nJos Rd, Bauchi, Bauchi State. \r\ntatarialipolybauchi@yahoo.com', '1988-03-01', 1, '2020-03-06 16:15:28'),
(9, 4, 1, 'Adamawa State Polytechnic', 'Adamawa State Polytechnic,  \r\nP.M.B. 2146, Yola, \r\nAdamawa State', '1991-03-02', 1, '2020-03-06 16:18:24'),
(10, 3, 1, 'Airforce Institute of Technology (AFIT)', 'Airforce Institute of Technology (AFIT), \r\nAirforce Base,  \r\nP.M.B. 2104, Kaduna, Kaduna State.   hq@320ttg.com', '1977-02-02', 2, '2020-03-06 16:20:34'),
(11, 7, 1, 'Ajayi Polytechnic', 'Ajayi Polytechnic, \r\nAra-Ijero Road, P.M.B. 5467 Ara-Ekiti, Ekiti State.', '2017-06-02', 3, '2020-03-06 16:23:09'),
(12, 6, 1, 'Akanu Ibiam Federal Polytechnic', 'Akanu Ibiam Federal Polytechnic, \r\nP.M.B. 1007, Unwana, Afikpo, Ebonyi State', '1981-03-06', 2, '2020-03-06 16:24:32'),
(13, 8, 4, 'Akwa Ibom State College of Art  & Science', 'Akwa Ibom State College of Art  & Science, \r\nNung Ukim, Ikono LGA\r\nP.M.B. 1044, Ikot Ekpene, Akwa Ibom State', '1997-02-02', 1, '2020-03-06 16:27:01'),
(14, 8, 1, 'Akwa Ibom State Polytechnic', 'Akwa Ibom State Polytechnic, \r\nIkot Osurua, P.M.B. 1002 Ikot -Ekpene, \r\nAkwa Ibom State', '1991-02-02', 1, '2020-03-06 16:28:55'),
(15, 5, 1, 'Al-Hikma Polytechnic, Karu', 'Al-Hikma Polytechnic, Karu, \r\n1st Close Off T/Balewa Street \r\nP.O Box 453 Mararaba, Nasarawa State. Alhikmainternationalacademy@yahoo.com', '2016-02-02', 3, '2020-03-06 16:31:28'),
(16, 7, 1, 'Allover Central Polytechnic', 'Allover Central Polytechnic, \r\nPlot 3A & B Abiodun Popoola Street,\r\n Sango Ota, Ogun State.  \r\nallovercentralpoly@yahoo.com \r\nLogo LGA, Benue State', '1998-07-02', 3, '2020-03-06 16:33:27'),
(17, 6, 1, 'Anambra State Polytechnic', 'Anambra State Polytechnic, P.M.B. 002, Mgbakwu.\r\ncollagricmgbakwu@yahoo.com', '1980-05-02', 1, '2020-03-06 16:34:59'),
(18, 5, 1, 'Ashi Polytechnic, Anyiin', 'Ashi Polytechnic, Anyiin, \r\nLogo LGA, Benue State', '2018-06-06', 3, '2020-03-06 16:36:42'),
(19, 8, 1, 'Auchi Polytechnic', 'Auchi Polytechnic, \r\nP.M.B. 13, Auchi, Edo State. \r\ninfo@auchipoly.net, rector@auchipoly.net', '1973-03-02', 2, '2020-03-06 16:38:56'),
(20, 8, 1, 'Bayelsa State Polytechnic', 'Bayelsa State Polytechnic, \r\nElebele, P.O. Box 1766, Yenogoa\r\nbycaselebele2@gmail.com', '2002-04-02', 1, '2020-03-06 16:41:13'),
(21, 5, 1, 'Benue State Polytechnic', 'Benue State Polytechnic, \r\nP.M.B. 01 Ugbokolo, Benue State. \r\nbenpolyugbokolo@yahoo.com', '1976-03-02', 1, '2020-03-06 16:43:00'),
(22, 7, 1, 'Best Solution Polytechnic', 'Best Solution Polytechnic, \r\n1 Maronu Araromi Street, Near New Ondo State Stadium, Box 518 Akure, Ondo State', '2016-07-02', 3, '2020-03-06 16:44:37'),
(23, 3, 1, 'Binyaminu Usman Polytechnic', 'Binyaminu Usman Polytechnic, \r\nP.M.B. 013, Hadejia, Jigawa State', '1991-04-02', 1, '2020-03-06 16:46:53'),
(24, 7, 1, 'Bolmor Polytechnic', 'Bolmor Polytechnic, \r\nGPO Box 11221 Dugbe, Ibadan, Oyo State. bolmorpolytechnic@yahoo.com', '2015-07-02', 3, '2020-03-06 16:49:38'),
(25, 8, 1, 'Calvary Polytechnic', 'Calvary Polytechnic, \r\nHospital Road, Owo-Oyibu, Delta State. calvarypolytechnic@gmail.com', '2015-06-02', 3, '2020-03-06 16:50:47'),
(26, 5, 1, 'Citi Polytechnic', 'Citi Polytechnic, Plot 182 Hillside Extension, Duten-Dawaki Road, Abuja\r\n08062095916, 07063306933, 07064965346 \r\ncitipolytechnic@gmail.com', '2018-07-02', 3, '2020-03-06 16:52:51'),
(27, 6, 1, 'Covenant Polytechnic', 'Covenant Polytechnic, \r\nP.M.B. 7065, Aba/Owerri Road, Abayi, Aba\r\nAbia State', '2010-04-02', 3, '2020-03-06 16:54:38'),
(28, 6, 1, 'Covenant Polytechnic', 'Covenant Polytechnic, \r\nP.M.B. 7065, Aba/Owerri Road, Abayi, Aba\r\nAbia State', '2010-04-02', 3, '2020-03-06 16:54:39'),
(29, 7, 1, 'Crown Polytechnic,', 'Crown Polytechnic, \r\nAdo-Ekiti\r\nP.M.B. 5424, Km 10, Ilawe Road, Odo, \r\nEkiti State', '2008-07-02', 3, '2020-03-06 16:56:23'),
(30, 8, 1, 'Delta State Polytechnic, Ogwashi-Uku', 'Delta State Polytechnic, \r\nP.M.B. 1030, Ogwashi-Uku, \r\nDelta State', '2002-02-02', 1, '2020-03-06 16:58:18'),
(31, 8, 1, 'Delta State Polytechnic, Otefe-Oghara', 'Delta State Polytechnic, \r\nP.M.B. 03, Otefe-Oghara, Delta State', '2002-02-02', 1, '2020-03-06 17:00:16'),
(32, 8, 1, 'Delta State Polytechnic, Ozoro', 'Delta State Polytechnic,  \r\nP.M.B. 05, Ozoro, Delta State', '2003-02-03', 1, '2020-03-06 17:02:25'),
(33, 8, 1, 'Delta State School of Marine Technology, Burutu', 'Delta State School of Marine Technology, Burutu, P.M.B. 1060, Warri, Delta State. \r\n+2348023286056, +2347038591043 dittimi200@yahoo.com \r\ndeltastatesomech.edu.ng', '2018-07-02', 1, '2020-03-06 17:04:47'),
(34, 5, 1, 'Dorben Polytechnic, Bwari', 'Dorben Polytechnic,\r\nBwari,\r\nP. O. Box 6322 Garki, Abuja.\r\ninfo@asacs.org.ng', '1995-06-03', 3, '2020-03-06 17:06:22'),
(35, 7, 1, 'D.S. Adegbenro ICT Polytechnic', 'D.S. Adegbenro ICT Polytechnic, \r\nItori-Ewekoro, \r\nP.M.B. 5026, Ifo, Ogun State', '2004-07-02', 1, '2020-03-06 17:07:55'),
(36, 8, 1, 'Eastern Polytechnic', 'Eastern Polytechnic, \r\n80c. Igwuruta Road (Tank), Rumuokwurusi, P.O. Box 12667 Port Harcourt, Rivers State. www.acmgt.org \r\ninfo@acmggt.org', '2015-06-02', 3, '2020-03-06 17:10:41'),
(37, 6, 1, 'Enugu State Polytechnic, Iwollo', 'Enugu State Polytechnic, Iwollo', '2017-06-02', 1, '2020-03-06 17:12:01'),
(38, 8, 1, 'Edo State Institute of Technology and Management, Usen', 'Edo State Institute of Technology and Management, Usen.\r\nP.M.B. 1104, Benin City, Edo State', '2002-06-02', 1, '2020-03-06 17:13:39'),
(39, 7, 1, 'Enville Institute of Management and Technology, Iganke', 'Enville Institute of Management and Technology, Iganke,No. 4, Osho Street (Opebi-Oregun Link Road) Opebi, PMB 8638, Ikeja, Lagos', '2019-07-03', 3, '2020-03-06 17:15:41'),
(40, 7, 1, 'Federal Polytechnic, Ado – Ekiti', 'Federal Polytechnic, \r\nP.M.B. 5351, Ado – Ekiti', '1977-04-02', 2, '2020-03-06 17:17:51'),
(41, 4, 1, 'Federal Polytechnic, Bali', 'Federal Polytechnic, \r\nP.M.B. 05 Bali, Taraba State', '2007-06-02', 2, '2020-03-06 17:21:05'),
(42, 4, 1, 'Federal Polytechnic, Bauchi', 'Federal Polytechnic, \r\nP.M.B. 0231, Bauchi, Bauchi State.', '1979-06-02', 2, '2020-03-06 17:53:47'),
(43, 5, 1, 'Federal Polytechnic, Bida', 'Federal Polytechnic,  \r\nP.M.B. 55, Bida, Niger State', '1977-06-02', 2, '2020-03-06 17:56:05'),
(44, 4, 1, 'Federal Polytechnic, Damaturu', 'Federal Polytechnic,  \r\nP.M.B. 1006, Damaturu, Yobe State. \r\nfedpdam@yahoo.com', '1993-06-02', 2, '2020-03-06 17:57:29'),
(45, 7, 1, 'Federal Polytechnic,, Ede', 'Federal Polytechnic,  \r\nP.M.B. 231, Ede, Osun State.\r\nfedepoly@yahoo.com', '1992-06-02', 2, '2020-03-06 17:59:10'),
(46, 8, 1, 'Federal Polytechnic,  Ekowe', 'Federal Polytechnic, \r\nEkowe, P.M.B. 110, Yenogua, Bayelsa State', '2007-06-02', 2, '2020-03-06 18:00:43'),
(47, 5, 1, 'Federal Polytechnic, Idah', 'Federal Polytechnic, \r\nP.M.B. 1037, Idah, Kogi State. \r\nfedpolyidah@yahoo.co.uk', '1977-06-02', 2, '2020-03-06 18:02:55'),
(48, 7, 1, 'Federal Polytechnic, Ilaro', 'Federal Polytechnic,  P.M.B. 50, Ilaro, Ogun State. \r\nIlaro.poly@pinnet.net \r\nrectoryfedpolyilaro@yahoo.com', '1979-06-02', 2, '2020-03-06 18:04:59'),
(49, 7, 1, 'Federal Polytechnic, Ile-Oluji,', 'Federal Polytechnic, \r\nP.M.B. 727, Ile-Oluji, \r\nOndo State. www.fedpolel.org', '2016-06-02', 2, '2020-03-06 18:07:15'),
(50, 3, 1, 'Abdu Gusau Polytechnic', 'P.M.B. 1021, Talata Mafara', '1992-01-01', 1, '2021-01-12 08:05:49'),
(51, 6, 1, 'Abia State Polytechnic', 'P.M.B. 7166, Aba, Abia State', '1992-01-01', 1, '2021-01-12 08:07:36'),
(52, 7, 1, 'Abraham Adesanya Polytechnic,', 'Dogbolu/Akanran Ibadan Road, Atikori, Ijebu Igbo, P.M.B. 1020, Ijebu-Igbo, Ogun State.', '2004-01-01', 1, '2021-01-12 08:13:04'),
(53, 3, 1, 'Abubakar Tatari Ali Polytechnic,', 'Jos Rd, Bauchi, Bauchi State', '1988-01-01', 1, '2021-01-12 08:14:32'),
(54, 4, 1, 'Adamawa State Polytechnic,', 'P.M.B. 2146, Yola, Adamawa State', '1991-01-01', 1, '2021-01-12 08:16:22'),
(55, 3, 1, 'Airforce Institute of Technology', 'Airforce Base,  P.M.B. 2104, Kaduna, Kaduna State', '1977-01-01', 2, '2021-01-12 08:17:54'),
(56, 8, 1, 'Ajayi Polytechnic,', 'Ara-Ijero Road, P.M.B. 5467 Ara-Ekiti, Ekiti State.', '2017-01-01', 3, '2021-01-12 08:19:44'),
(57, 6, 1, 'Akanu Ibiam Federal Polytechnic', 'P.M.B. 1007, Unwana, Afikpo, Ebonyi State.', '1981-01-01', 2, '2021-01-12 08:23:22'),
(58, 8, 1, 'Akwa Ibom State College of Arts& Science', 'Nung Ukim, Ikono LGAP.M.B. 1044, Ikot Ekpene, Akwa Ibom State.', '1997-01-01', 1, '2021-01-12 08:26:08'),
(59, 8, 1, 'Akwa Ibom State Polytechnic, Ikot Osurua', 'P.M.B. 1002 Ikot -Ekpene, Akwa Ibom State.', '1991-01-01', 1, '2021-01-12 08:27:46'),
(60, 5, 1, 'Al-Hikma Polytechnic, Karu', '1stClose Off T/Balewa Street P.O Box 453 Mararaba, Nasarawa State.', '2016-01-01', 3, '2021-01-12 08:29:11'),
(61, 7, 1, 'Allover Central Polytechnic', 'Plot 3A & B Abiodun Popoola Street,Sango Ota, Ogun State.', '1998-01-01', 3, '2021-01-12 08:30:27'),
(62, 6, 1, 'Anambra State Polytechnic', 'P.M.B. 002, Mgbakwu.', '1980-01-01', 1, '2021-01-12 08:31:52'),
(63, 5, 1, 'Ashi Polytechnic, Anyiin', 'Logo LGA, Benue State', '2018-01-01', 3, '2021-01-12 08:33:27'),
(64, 8, 1, 'Auchi Polytechnic', 'P.M.B. 13, Auchi, Edo State.', '1973-01-01', 2, '2021-01-12 08:34:46'),
(65, 8, 1, 'Bayelsa State Polytechnic', 'Elebele, P.O. Box 1766, Yenogoa', '2002-01-01', 1, '2021-01-12 08:35:51'),
(66, 5, 1, 'Benue State Polytechnic', 'P.M.B. 01 Ugbokolo, Benue State.', '1976-01-01', 1, '2021-01-12 08:37:19'),
(67, 7, 1, 'Best Solution Polytechnic', '1 Maronu Araromi Street, Near New Ondo State Stadium, Box 518 Akure, Ondo State.', '2016-01-01', 3, '2021-01-12 08:38:24'),
(68, 3, 1, 'Binyaminu Usman Polytechnic', 'P.M.B. 013, Hadeja, Jigawa State', '1991-01-01', 1, '2021-01-12 08:40:04'),
(69, 7, 1, 'Bolmor Polytechnic', 'GPO Box 11221 Dugbe, Ibadan, Oyo State.', '2015-01-01', 3, '2021-01-12 08:41:32'),
(70, 8, 1, 'Calvary Polytechnic', 'Hospital Road, Owo-Oyibu, Delta State.', '2015-01-01', 3, '2021-01-12 08:42:52'),
(71, 5, 1, 'Citi Polytechnic', 'Plot 182 Hillside Extension, Dutsen-Dawaki Road, Abuja', '2018-01-01', 3, '2021-01-12 08:43:59'),
(72, 7, 1, 'Coastal Polytechnic', 'CIS Complex, Near Magbon Bus/Stop Badagry Expressway, P.O Box 4335, Apapa, Lagos', '2020-01-01', 3, '2021-01-12 08:49:21'),
(73, 7, 1, 'Coastal Polytechnic', 'CIS Complex, Near Magbon Bus/Stop Badagry Expressway, P.O Box 4335, Apapa, Lagos', '2020-01-01', 3, '2021-01-12 08:50:16'),
(74, 6, 1, 'Covenant Polytechnic', 'P.M.B. 7065, Aba/Owerri Road, Abayi, AbaAbia State.', '2010-01-01', 3, '2021-01-12 08:52:31'),
(75, 7, 1, 'Crown Polytechnic', 'Ado-EkitiP.M.B. 5424, Km 10, Ilawe Road, Odo, Ekiti State', '2008-01-01', 3, '2021-01-12 08:54:15'),
(76, 8, 1, 'Delta State Polytechnic', 'P.M.B. 1030, Ogwashi-Uku, Delta State.', '2002-01-01', 1, '2021-01-12 08:55:38'),
(77, 5, 1, 'Federal Polytechnic', 'P.M.B. 001 Nasarawa, Nasarawa State.', '1983-01-01', 2, '2021-01-12 12:07:01'),
(78, 4, 1, 'Federal Polytechnic', 'P.M.B. 35, Mubi, Adamawa State.', '1979-01-01', 2, '2021-01-12 12:11:54'),
(79, 6, 1, 'Federal Polytechnic', 'P.M.B. 001 Nasarawa, Nasarawa State.', '1983-01-01', 2, '2021-01-12 12:27:55'),
(80, 6, 1, 'Federal Polytechnic', 'P.M.B. 1036, Nekede, Owerri, Imo State.', '1977-01-01', 2, '2021-01-12 12:30:45'),
(81, 8, 1, 'Federal Polytechnic of Oil and Gas', 'c/o office of the Acting Rector, Bonny, Rivers State', '2018-01-01', 2, '2021-01-12 12:31:50'),
(82, 5, 1, 'Federal Polytechnic', 'P.M.B. 420, Offa, Kwara State.', '1992-01-01', 2, '2021-01-12 12:33:26'),
(83, 6, 1, 'Federal Polytechnic', 'P.M.B. 21, Aguata, Oko, Anambra State.', '1982-01-01', 2, '2021-01-12 12:34:43'),
(84, 8, 1, 'Federal Polytechnic', 'P.M.B. 2014 Ukana, Essien Udim, Akwa Ibom State', '2014-01-01', 2, '2021-01-12 12:36:05'),
(85, 5, 1, 'Fidei Polytechnic', 'P.M.B. 185, Km 8 Gboko-Aliade Road, Gboko, Benue State.', '2014-01-01', 3, '2021-01-12 12:36:59'),
(86, 7, 1, 'Gateway Polytechnic', 'Prof. Wole Soyinka Way, Saapade Estate, P.M.B. 2003, Isara Ode-Remo, Ogun State.', '2004-01-01', 1, '2021-01-12 12:38:06'),
(87, 5, 1, 'Gateway Polytechnic', 'Gboko Polytechnic, Gboko', '2016-01-01', 3, '2021-01-12 12:39:37'),
(88, 7, 1, 'Global Polytechnic', 'Oyemekun Road, PMB 1057, Akure, Ondo State.', '2016-01-01', 3, '2021-01-12 12:40:40'),
(89, 7, 1, 'Grace Polytechnic', 'P.O. Box 9067, Lagos State', '1999-01-01', 3, '2021-01-12 12:42:28'),
(90, 5, 1, 'Graceland Polytechnic', 'OyelekeCollege Road, Off Ira Road.P.O.Box 598, Offa, Kwara State', '2018-01-01', 3, '2021-01-12 12:43:52'),
(91, 6, 1, 'Grundtvig Polytechnic', 'Km 11, Onitsha-Owerri Expressway, P.O.Box 275,Oba, Anambrar State', '2018-01-01', 3, '2021-01-12 12:45:27'),
(92, 5, 1, 'Harry Pass Polytechnic', 'Tse Usen Mkar, PMB 203, Mkar, Gboko, Benue State', '2020-01-01', 3, '2021-01-12 12:56:01'),
(93, 3, 1, 'Hassan Usman Katsina Polytechnic', ',P.M.B. 2052, Katsina, Nigeria.', '1983-01-01', 1, '2021-01-12 12:57:07'),
(94, 8, 1, 'Heritage Polytechnic', 'Ikot Udota, P.O. Box 1029 Eket, Akwa Ibom State', '2010-01-01', 3, '2021-01-12 12:58:29'),
(95, 4, 1, 'Hussaini Adamu Federal Polytechnic', 'P.M.B. 5004, Kazaure, Jigawa State.', '1991-01-01', 2, '2021-01-12 13:00:27'),
(96, 7, 1, 'Kalac Crystal Polytechnic', 'Sangotedo, Lekki, Lagos State.', '2014-01-01', 3, '2021-01-12 13:20:41'),
(97, 7, 1, 'Ibadan City Polytechnic', 'P.M.B. 10426 Dugbe, Ibadan, Oyo State', '2015-01-01', 3, '2021-01-12 13:22:54'),
(98, 7, 1, 'Igbajo Polytechnic', 'P.M.B. 303 Igbajo, Osun State.', '2009-01-01', 3, '2021-01-12 13:23:40'),
(99, 6, 1, 'Imo State Polytechnic', 'Umuagwo, Ohaji, P.M.B. 1472, Owerri, Imo State', '1978-01-01', 1, '2021-01-12 13:25:05'),
(100, 6, 1, 'Institute of Management and Technology (IMT)', 'P.M.B. 01079, Enugu, Enugu State.', '1965-01-01', 1, '2021-01-12 13:26:04'),
(101, 7, 1, 'Interlink Polytechnic', 'Km 1, Ado-Ekiti RoadP.M.B. 5060, Ijebu-Jesa, Osun State', '2008-01-01', 3, '2021-01-12 13:27:10'),
(102, 8, 1, 'Institute of Technology and Management (ITM)', 'Ikom-Calabar Highway, P.M.B. 016 Ugep, Cross', '2012-01-01', 1, '2021-01-12 14:37:39'),
(103, 4, 1, 'Jigawa State Polytechnic,', 'P.M.B. 7040 Dutse, Jigawa State', '2008-01-01', 1, '2021-01-12 14:38:41'),
(104, 3, 1, 'Kaduna Polytechnic', 'P.M.B. 2021,Kaduna, Kaduna State.', '1956-01-01', 2, '2021-01-12 14:40:04'),
(105, 3, 1, 'Kano State Polytechnic', 'P.M.B. 3401, Kano, Kano State.', '1976-01-01', 1, '2021-01-12 14:46:24'),
(106, 8, 1, 'Kenule Beeson Saro-Wiwa Polytechnic', 'P.M.B. 20, Bori, Rivers State.', '1988-01-01', 1, '2021-01-12 14:47:27'),
(107, 8, 1, 'Kings Polytechnic', 'Ubiaja,Edo State', '2010-01-01', 3, '2021-01-12 14:48:17'),
(108, 5, 1, 'Kwara State Polytechnic', 'P.M.B. 1375, Ilorin, Kwara State.', '1973-01-01', 1, '2021-01-13 10:41:52'),
(109, 5, 1, 'Kogi State Polytechnic', 'P.M.B. 1101, Lokoja Kogi State', '1993-01-01', 1, '2021-01-13 10:42:42'),
(110, 8, 1, 'Lagos City Polytechnic', 'P.M.B. 21200, Ikeja, Lagos State.', '1995-01-01', 3, '2021-01-13 10:43:53'),
(111, 8, 1, 'Lagos State Polytechnic', 'Ikorodu, P.M.B. 21606, Ikeja.', '1977-01-01', 3, '2021-01-13 10:45:11'),
(112, 7, 1, 'Landmark Polytechnic', 'Ayetoro, Ogun State', '2017-01-01', 3, '2021-01-13 10:48:51'),
(113, 5, 1, 'Lens Polytechnic', 'LMST Building Besides Hamdalat School, Atari, Offa, Kwara State', '2016-01-01', 3, '2021-01-13 11:13:45'),
(114, 8, 1, 'Lighthouse Polytechnic', 'Sonshine Hills EvbuobanosaKm 32, Benin-Asaba Expressway, P.M.B. 1004 Abudu, Orhionmwon L.G.A. Edo State', '2008-01-01', 3, '2021-01-13 11:16:12'),
(115, 4, 1, 'Mai-Idris Alooma Polytechnic,', 'P.M.B. 1020 Geidam, Yobe State.', '2002-01-01', 1, '2021-01-13 11:17:05'),
(116, 6, 1, 'Marist  Polytechnic', 'Umuchigbo-Ije Nike, P.M.B. 104 Emene, Enugu', '2016-01-01', 3, '2021-01-13 11:18:09'),
(117, 6, 1, 'Mater Dei Polytechnic', 'Egwuoba', '2018-01-01', 3, '2021-01-13 11:20:04'),
(118, 7, 1, 'Moshood Abiola Polytechnic', 'P.M.B. 2210, Abeokuta, Ogun State.', '1979-01-01', 1, '2021-01-13 11:21:09'),
(119, 5, 1, 'NACABS Polytechnic', 'P.M.B. 001 Akwanga, Nasarawa State', '2013-01-01', 3, '2021-01-13 11:22:58'),
(120, 5, 1, 'Nasarawa State Polytechnic', 'P. M. B. 109, Lafia, Nasarawa State', '2001-01-01', 1, '2021-01-13 11:40:24'),
(121, 8, 1, 'National Institute of Construction, Technology and Management', 'Uromi, Edo State', '2014-01-01', 2, '2021-01-13 11:41:30'),
(122, 5, 1, 'Niger State Polytechnic', 'P.M.B. 1 Zungeru, Niger State.', '1991-01-01', 1, '2021-01-13 11:42:28'),
(123, 3, 1, 'Nigerian College of Aviation Technology', '(NCAT), Sokoto Road, Zaria', '1988-01-01', 2, '2021-01-13 11:49:01'),
(124, 8, 1, 'NOGAK Polytechnic', 'Mile Two Road, State Housing, P.M.B. 1078 Ikom, Cross Rivers State', '2012-01-01', 3, '2021-01-13 11:49:58'),
(125, 7, 1, 'Novelty Polytechnic', 'Kishi, KM 3, along Kishi-Ilorin Road, Irepo, Local Government Area, Oyo State', '2019-01-01', 3, '2021-01-13 11:50:52'),
(126, 3, 1, 'Nuhu Bamalli Polytechnic', 'P.M.B. 1061,Zaria, Kaduna State.', '1989-01-01', 1, '2021-01-13 11:51:37'),
(127, 7, 1, 'Ogun State Institute of Technology', 'Oba Adesola Market Road, P.M.B. 2005, Igbesa.', '2004-01-01', 1, '2021-01-13 11:52:33'),
(128, 7, 1, 'Ogun State Polytechnic', 'Ipokia', '2010-01-01', 1, '2021-01-13 11:53:37'),
(129, 7, 1, 'Osun State College of Technology', 'P.M.B. 1011, Esa –Oke.', '1991-01-01', 1, '2021-01-13 11:54:49'),
(130, 7, 1, 'Osun State Polytechnic,', 'P.M.B. 301, Iree.', '1992-01-01', 1, '2021-01-13 11:55:57'),
(131, 7, 1, 'Osun State College of Technology', 'P.M.B. 1011, Esa –Oke.', '1991-01-01', 1, '2021-01-14 11:50:01'),
(132, 7, 1, 'Osun State Polytechnic,', 'P.M.B. 301, Iree.', '1992-01-01', 1, '2021-01-14 11:50:54'),
(133, 6, 1, 'Agriculture & Technology (OSISATECH)', 'Our Saviour Institute of Science,  P.M.B. 01161, Enugu, Enugu State.', '1991-01-01', 3, '2021-01-14 11:51:40'),
(134, 7, 4, 'Oyo State College Of Agriculture And Technology', 'Igbo-Ora, Oyo State', '1988-01-01', 1, '2021-01-14 11:52:47'),
(135, 8, 1, 'Petroleum Training Institute', 'P.M.B. 20, Effurun Delta State.', '1972-01-01', 2, '2021-01-14 11:53:54'),
(136, 5, 1, 'Plateau State Polytechnic, Barkin-Ladi', 'P.M.B. 02023, Jos.', '1978-01-01', 1, '2021-01-14 11:55:07'),
(137, 8, 1, 'Port-Harcourt Polytechnic, Rumuola', 'P.M.B. 5936, Port-Harcourt, Rivers State.', '1971-01-01', 1, '2021-01-14 11:56:16'),
(138, 5, 1, 'Prime Polytechnic', 'Jida Bassa,Ajaokuta, Kogi State.', '2015-01-01', 3, '2021-01-14 11:57:11'),
(139, 4, 1, 'Ramat Polytechnic', 'P.M.B. 1070, Maiduguri, Borno State.', '1976-01-01', 1, '2021-01-14 11:58:07'),
(140, 7, 1, 'Redeemers College of Technology and Management', 'Redemption Camp, Lagos-Ibadan Express Way', '2018-01-01', 3, '2021-01-14 11:59:14'),
(141, 7, 1, 'Ronik Polytechnic, Ejigbo', 'P.M.B. 21764, Ikeja, Lagos State.', '2003-01-01', 3, '2021-01-14 12:00:08'),
(142, 7, 1, 'Rufus Giwa Polytechnic', 'P.M.B. 1019 Owo Ondo State.', '1979-01-01', 1, '2021-01-14 12:00:52'),
(143, 7, 1, 'SAF Polytechnic,', 'IseYIN', '2018-01-01', 3, '2021-01-14 12:01:49'),
(144, 8, 1, 'Shaka Polytechnic,', 'No1 Prince Shaka Momodu Street, Ogiso, Off M.M. Way, P.M.B. 1240, Benin City, Edo State', '2013-01-01', 3, '2021-01-14 12:02:28'),
(145, 8, 1, 'Southernn Atlantic Polytechnic', 'Km 50, Airport Road, PMB 1009, Uyo, Akwa-Ibom State.', '2020-01-01', 3, '2021-01-14 12:03:24'),
(146, 7, 1, 'Speedway Polytechnic', 'Osoba.7/20 Igbehinadun Street, off Odozi Street, Ojodu, Ogun State', '2018-01-01', 3, '2021-01-14 12:04:18'),
(147, 5, 1, 'St. Mary Polytechnic', 'Kwamba, P.M.B 418, Suleja, Niger State.', '2015-01-01', 3, '2021-01-14 12:05:07'),
(148, 7, 1, 'Stars Polytechnic', 'Along Ota-Iteke Road, P.O Box 54 Ado-Odo LGA, Ota, Ogun State', '2020-01-01', 3, '2021-01-15 12:11:47'),
(149, 8, 1, 'Sure Foundation Polytechnic', 'Ikot-Akai, Ukanafun LGA, Akwa-Ibom State.', '2016-01-01', 3, '2021-01-15 12:12:36'),
(150, 4, 1, 'Taraba State Polytechnic', 'Suntai', '2017-01-01', 1, '2021-01-15 12:14:09'),
(151, 6, 1, 'Temple Gate Polytechnic', 'Abayi, Osisioma,', '2009-01-01', 3, '2021-01-15 12:15:16'),
(152, 7, 1, 'The Ibarapa Polytechnic,', 'P.M.B. 1015 Eruwa Oyo State.', '2013-01-01', 1, '2021-01-15 12:16:45'),
(153, 7, 1, 'The Oke-Ogun Polytechnic', 'Saki,Oyo State', '2013-01-01', 1, '2021-01-15 12:17:43'),
(154, 5, 1, 'The Polytechnic Adoka', 'Otada, Adoka P.O Box 280 Otukpo, Benue State.', '2016-01-01', 1, '2021-01-15 12:18:45'),
(155, 7, 1, 'The Polytechnic Ibadan', 'P.M.B. 22, Ibadan, Oyo State.', '1970-01-01', 1, '2021-01-15 12:19:39'),
(156, 5, 1, 'The Polytechnic Igbo-Owu', 'Igbo-Owu, Temporary Site: Off Asa Dam/Osere Road Junction, Box 799 Ilorin, Kwara State', '2015-01-01', 3, '2021-01-15 12:20:35'),
(157, 7, 1, 'The Polytechnic Ile-Ife', 'P.M.B. 009, O.A.U. Ile-Ife, Osun State.', '1999-01-01', 3, '2021-01-15 12:21:36'),
(158, 7, 1, 'The Polytechnic, Iresi', '(Formerly-College of Technology, Iresi),P.O. Box 5 Iresi, Osun', '2014-01-01', 3, '2021-01-15 12:22:54'),
(159, 7, 1, 'Timeon Kairos Polytechnic and Professional Institute', '326, Abeokuta Expressway, Super/CeleB/Stop, Oko Oba Via Abule Egba, Lagos, Lagos State', '2018-01-01', 3, '2021-01-15 12:23:44'),
(160, 7, 1, 'Tower Polytechnic', '136, Liberty Road, P.O. Box 13039 G.P.O,Dugbe, Ibadan.', '2010-01-01', 3, '2021-01-15 12:24:43'),
(161, 8, 1, 'Trinity  Polytechnic,', 'Mbak Road,Ita Itai, Uyo LGA, P.M.B. 3997 Uyo Akwa-Ibom State.', '2016-01-01', 3, '2021-01-15 12:25:26'),
(162, 8, 1, 'Uma Ukpai Polytechnic', 'Asaga, P.M.B. 2001 Ohafia, Abia State', '2017-01-01', 3, '2021-01-15 12:26:13'),
(163, 3, 1, 'Umaru Ali Shinkafi Polytechnic,', 'P.M.B. 2356 Sokoto, Sokoto State.', '2010-01-01', 1, '2021-01-15 12:26:56'),
(164, 8, 1, 'Uyo City Polytechnic,', 'P.M.B. 1067, Uyo, Akwa Ibom State', '2014-01-01', 3, '2021-01-15 12:28:05'),
(165, 6, 1, 'Valley View Polytechnic,', 'Off Goodluck Jonathan Army Barrack, Ebem, P.O. Box 176, Ohafia Abia State', '2015-01-01', 3, '2021-01-15 12:29:03'),
(166, 7, 1, 'Villanova Polytechnic, Imesi-Ile.', '(Formerly-The Polytechnic Imesi-Ile), Km 2, Imesi-Ile/Igbajo Road, P.M.B. 001 Imesi-Ile, Osun State.', '2013-01-01', 3, '2021-01-15 12:29:37'),
(167, 3, 1, 'Waziri Umaru Federal Polytechnic,', 'P.M.B. 1034, Birnin-Kebbi, Kebbi State', '1976-01-01', 2, '2021-01-15 12:30:29'),
(168, 7, 1, 'Wolex Polytechnic', '1Km. 2, Iwo-Ejigbo Road,P.O. Box 255, Iwo, Osun State.', '1999-01-01', 3, '2021-01-15 12:31:26'),
(169, 7, 1, 'Yaba College of Technology', 'P.M.B. 2011, Yaba, Lagos State.', '1947-01-01', 2, '2021-01-15 12:32:03'),
(170, 3, 1, 'Zamfara State College of Arts and Science', 'Sani Abacha Way, Sokoto Road, P.M.B. 1107, Gusau', '2000-01-01', 1, '2021-01-15 13:32:58'),
(171, 5, 4, 'Akperan Orshi College of Agriculture, Yandev', 'P. M. B. 181,Yandev,  Gboko, Benue State', '1926-01-01', 1, '2021-01-15 13:44:06'),
(172, 3, 4, 'Audu Bako College of Agriculture,', 'Danbatta, P. M. B. 3159, Dambatta, Kano State', '2002-01-01', 1, '2021-01-15 13:45:31'),
(173, 3, 4, 'Bauchi State College of Agriculture', 'P.M.B. 088, Bauch', '2013-01-01', 1, '2021-01-15 13:46:33'),
(174, 3, 4, 'College of Agriculture and Animal Health', 'Bakura, P.M.B. 1022, Talata Mafara, Zamfara State', '1999-01-01', 1, '2021-01-15 13:47:27'),
(175, 3, 4, 'College of Agriculture and Animal Science', 'DAC-ABU, Mando, P.M.B. 2134, Kaduna, Kaduna State.', '1959-01-01', 2, '2021-01-15 13:52:04'),
(176, 4, 4, 'College of Agriculture', 'Jalingo, P.M.B. 1025 Jalingo, Taraba State', '1979-01-01', 1, '2021-01-15 13:53:17'),
(177, 5, 4, 'College of Agriculture', 'DAC –ABU, Kabba, P. M. B. 205, Kabba, Kogi State.', '1964-01-01', 2, '2021-01-15 13:54:29'),
(178, 5, 4, 'College of Agriculture', 'Lafia, P.M.B. 033 Lafia Nasarawa State.', '1996-01-01', 1, '2021-01-15 13:55:25'),
(179, 3, 4, 'College of Agriculture', 'Zuru, P.M.B. 1018, Zuru, Kebbi State', '1976-01-01', 1, '2021-01-15 13:56:16'),
(180, 8, 4, 'Edo State College of Agriculture', 'Iguoriakhi, P.M.B. 1471, Iguoriakhi, Edo State.', '1992-01-01', 1, '2021-01-15 13:57:51'),
(181, 3, 4, 'Federal College of Agricultural Produce,', 'Kano', '2008-01-01', 2, '2021-01-15 13:59:01'),
(182, 7, 4, 'Federal College of Agriculture, Akure', 'P.M.B. 623, Akure, Ondo State', '1957-01-01', 2, '2021-01-15 14:00:20'),
(183, 7, 4, 'Federal College of Agriculture, Moor Plantation', 'P.M.B. 5029, Moor Plantation, Ibadan,', '1921-01-01', 2, '2021-01-15 14:01:14'),
(184, 6, 4, 'Federal College of Agriculture', 'Ishiagu, P.M.B. 7008, Ishiagu, Ebonyi State.', '1955-01-01', 2, '2021-01-15 14:02:35'),
(185, 7, 4, 'Federal College of Animal Health & Production Technology', 'Ibadan, P.M.B. 5029, Ibadan Oyo State.', '1964-01-01', 2, '2021-01-15 14:03:42'),
(186, 5, 4, 'Federal College of Animal Health & Production Technology', 'Vom, P.M.B 1. Vom, Plateau State.', '1941-01-01', 2, '2021-01-15 14:09:25'),
(187, 7, 4, 'Federal College of Fisheries & Marine Technology', 'Victoria Island, P.M.B. 80063 Victoria Island, Lagos State.', '1969-01-01', 2, '2021-01-15 14:14:30'),
(188, 7, 4, 'Federal College of Forestry', 'Jericho Hill, P.M.B. 5054 Jericho Hill, Ibadan, Oyo State', '1939-01-01', 2, '2021-01-15 14:15:38'),
(189, 5, 4, 'Federal College of Forestry', 'Jos, P.M.B 2019 Jos, Plateau State.', '1958-01-01', 2, '2021-01-15 14:27:50'),
(190, 3, 4, 'Federal College of Forestry Mechanisation', 'Afaka, P.M.B. 2273, Afaka, Kaduna State.', '1976-01-01', 2, '2021-01-15 14:28:47'),
(191, 4, 4, 'Federal College of Freshwater Fisheries Technology,', 'Baga, P.M.B. 1060, Maiduguri, Borno State', '1978-01-01', 2, '2021-01-15 14:29:36'),
(192, 5, 4, 'Federal College of Freshwater Fisheries Technology,', 'New Bussa, P.M.B. 1500, New Bussa, Niger State.', '1978-01-01', 2, '2021-01-15 14:31:04'),
(193, 4, 4, 'Federal College of Horticultural Technology,', 'Dadin Kowa, Gombe State', '2002-01-01', 2, '2021-01-15 14:33:22'),
(194, 5, 4, 'Federal College of Land Resources Technology', 'Kuru, P.M.B. 2035, Jos, Plateau State.', '1987-01-01', 2, '2021-01-15 14:34:35'),
(195, 5, 4, 'Federal College of Land Resources Technology', 'P.M.B. 1518, Owerri, Imo State.', '1981-01-01', 2, '2021-01-15 14:35:29'),
(196, 5, 4, 'Federal College of Wildlife Management', 'New Bussa, P.M.B. 268, New Bussa, Niger State.', '1978-01-01', 2, '2021-01-15 14:36:28'),
(197, 4, 4, 'Mohammet Lawan Collegeof Agriculture', 'Maiduguri, P. M .B. 1427, Maiduguri, Borno State', '1977-01-01', 2, '2021-01-15 14:37:18'),
(198, 5, 4, 'Niger State College of Agriculture', 'Mokwa, P.M.B. 109, Mokwa, Niger State.', '1979-01-01', 1, '2021-01-15 14:38:10'),
(199, 5, 4, 'Plateau State College of Agriculture', 'Garkawa,P.M.B. 001, Garkawa.', '1998-01-01', 1, '2021-01-15 14:39:13'),
(200, 3, 4, 'Samaru College of Agriculture', 'DAC ABU, Zaria, Kaduna State.', '1921-01-01', 1, '2021-01-15 14:40:06'),
(201, 4, 4, 'Yobe State College of Agriculture', 'Gujba.', '1996-01-01', 1, '2021-01-15 14:41:00'),
(202, 3, 4, 'Samaru College of Agriculture', 'DAC ABU, Zaria, Kaduna State.', '1921-01-01', 2, '2021-01-15 14:42:07'),
(203, 6, 3, 'Abia State College of Health Technology', 'P.M.B. 7016, Aba', '1976-01-01', 1, '2021-01-18 08:52:14'),
(204, 3, 3, 'ABUTH School of Health Records Administration & Biostatistics,', 'Zaria, Kaduna State.', '1968-01-01', 2, '2021-01-18 08:53:13'),
(205, 3, 3, 'Aminu Dabo College of Health Sciences and Technology,', 'Kano', '1900-01-01', 1, '2021-01-18 08:54:34'),
(206, 6, 3, 'Anambra State College Of Health Technology', 'P.M.B. 1001, Obosi.', '1991-01-01', 1, '2021-01-18 08:55:43'),
(207, 5, 3, 'Bartholomew College of Health Technology,', 'Shao, Kwara State', '2000-01-01', 3, '2021-01-18 08:57:12'),
(208, 8, 3, 'Bayelsa State College of Health Technology', 'Otuogidi, Bayelsa State.', '1900-01-01', 1, '2021-01-18 08:58:09'),
(209, 3, 3, 'College of Health Technology,', 'Ningi, Bauchi State', '1900-01-01', 1, '2021-01-18 08:59:07'),
(210, 5, 3, 'College of Health Science and Technology,', 'Idah, Kogi State.', '1900-01-01', 1, '2021-01-18 08:59:58'),
(211, 5, 3, 'College of Health Science and Technology', 'Ile-Ife, Osun State', '1900-01-01', 3, '2021-01-18 09:01:19'),
(212, 5, 3, 'College of Health Technology', 'Zawan, Plateau State', '1977-01-01', 1, '2021-01-18 09:22:57'),
(213, 4, 3, 'College of Nursing and Midwifery', 'Gombe, Gombe State.', '1900-01-01', 1, '2021-01-18 09:23:30'),
(214, 8, 3, 'Cross Rivers State College of Health Technology,', 'Calabar', '1977-01-01', 1, '2021-01-18 09:24:12'),
(215, 8, 3, 'DeltaState School of Health Technology', 'P.M.B. 22, Ofuoma, Ugheli', '1993-01-01', 1, '2021-01-18 09:25:11'),
(216, 7, 3, 'Ekiti State College of Health Sciences & Technology', 'Ijro-Ekiti', '1900-01-01', 1, '2021-01-18 09:26:25'),
(217, 3, 3, 'Emirates College of Health Sciences and Technology', 'Kabuga, Kano', '1900-01-01', 3, '2021-01-18 09:27:35'),
(218, 7, 3, 'Federal College of Orthorpaedic Technology', 'NOH, Igbobi, Lagos', '1996-01-01', 2, '2021-01-18 09:29:11'),
(219, 6, 3, 'Federal School of Dental Technology & Therapy', 'P.M.B. 01473 Enugu, Enugu State.', '1982-01-01', 2, '2021-01-18 09:35:04'),
(220, 3, 3, 'Gombe State College of Health Technology', 'Kaltungo, Gombe State', '1900-01-01', 1, '2021-01-18 09:36:02'),
(221, 6, 3, 'Imo State College Of Nursing & Health Sciences', 'P.M.B 2, Amaigbo, Nwangele LGA.', '2013-01-01', 1, '2021-01-18 09:37:14'),
(222, 8, 3, 'Institute of Health Technology, University Teaching Hospital,', 'Benin, P.M.B. 1111, Benin City, Edo State.', '2004-01-01', 2, '2021-01-18 09:38:11'),
(223, 3, 3, 'Kano State College of Health Sciences and Technology', 'BUK Road, Kano', '1900-01-01', 1, '2021-01-18 09:39:23'),
(224, 5, 3, 'Kwara State College of Health Technology', 'PMB 430,Ojoku Road Offa, Kwara State', '1976-01-01', 1, '2021-01-18 09:40:10'),
(225, 8, 3, 'Lagos State College of Health Technology,', 'Yaba', '1900-01-01', 1, '2021-01-18 09:40:53'),
(226, 7, 3, 'Millenium  College of Health Technology, Akure,', 'Ondo State', '1900-01-01', 3, '2021-01-18 09:41:48'),
(227, 3, 3, 'New Gate College of Health Science & Technology', 'Minna, Niger  State.', '1900-01-01', 3, '2021-01-18 09:42:39'),
(228, 5, 3, 'NKST College of Health Technology', 'Mkar, Gboko, Benue State.', '1960-01-01', 3, '2021-01-18 09:49:36'),
(229, 7, 3, 'Nigerian Army College of Nursing', 'Myhoung Barracks, Yaba,Lagos', '1900-01-01', 3, '2021-01-18 09:51:02'),
(230, 5, 3, 'Nigerian Navy School of Health Sciences', 'Offa, Kwara State', '1900-01-01', 2, '2021-01-18 09:51:59'),
(231, 7, 3, 'Ogun State College of Health Technology', 'Ijebu, Ilese, P.M.B. 2081, Ijebu-Ode.', '1976-01-01', 1, '2021-01-18 09:52:45'),
(232, 7, 3, 'Oyo Sytate College of Health Sciences and Technology', 'Eleyele, Ibadan,', '1900-01-01', 1, '2021-01-18 09:53:40'),
(233, 7, 3, 'Osun State College of Health Technology', 'Ilesa', '1900-01-01', 1, '2021-01-18 09:54:47'),
(234, 7, 3, 'Pogil College Of Health Technology,', 'Opposite Mechanic Village Gate, Ijebu-Ode/Ibadan Road, Oke-Eri, via Ijebu-Ode, Ogun State', '2014-01-01', 3, '2021-01-18 09:55:40'),
(235, 8, 3, 'Rivers State College of Health Technology,', 'Port Harcourt', '2001-01-01', 1, '2021-01-18 09:56:44'),
(236, 7, 3, 'School of Biomedical Engineering Technology,', 'Luth, Idi Araba, Lagos.', '1900-01-01', 2, '2021-01-18 09:57:30'),
(237, 8, 3, 'School Of Biomedical Engineering', 'Benin P.M.B. 1111, Benin City, Edo State.', '2004-01-01', 2, '2021-01-18 09:58:53'),
(238, 4, 3, 'University of Maiduguri Teaching Hospital, School Of Biomedical Engineering', 'P.M.B. 1414, Bama Road, Maiduguri, Borno State', '1990-01-01', 2, '2021-01-18 10:00:19'),
(239, 3, 3, 'School of Health Information Management,', 'AKTH, Kano.', '1992-01-01', 2, '2021-01-18 10:01:17'),
(240, 6, 3, 'School of Health Information Management, Nnamdi Azikiwe University Teaching Hospital,', 'NAUTH, Nnewi.', '1900-01-01', 2, '2021-01-18 10:03:50'),
(241, 7, 3, 'School of Health Information Management, OAUTH,', 'P.M.B. 5538, Ile-Ife', '1982-01-01', 2, '2021-01-18 10:05:00'),
(242, 8, 3, 'chool Of Health Information Management, University of Benin Teaching Hospital,', 'SP.M.B. 1111, Benin City, Edo State.', '2004-01-01', 2, '2021-01-18 10:05:51'),
(243, 8, 3, 'School of Health Information Management, University of Calabar Teaching Hospital,', 'Calabar.', '1993-01-01', 2, '2021-01-18 10:06:42'),
(244, 7, 3, 'School of HealthInformation Management, UCH,', 'P.M.B. 5116, Ibadan.', '1976-01-01', 2, '2021-01-18 10:07:31'),
(245, 3, 3, 'School of Health Information Management, UDUTH,', 'P.M.B. 2370, Sokoto.', '1992-01-01', 2, '2021-01-18 10:08:34'),
(246, 5, 3, 'School of Health Information Management, University of Ilorin Teaching Hospital', 'Ilorin', '1996-01-01', 2, '2021-01-18 10:09:24'),
(247, 4, 3, 'School of Health Information Management, UMTH', 'P.M.B. 1414, Bama Road, Maiduguri', '1990-01-01', 2, '2021-01-18 10:10:23'),
(248, 8, 3, 'School of Health Information Management, UPTH, Portharcourt,', 'Rivers State', '1900-01-01', 2, '2021-01-18 10:10:54'),
(249, 7, 3, 'School of Health Information Management, LUTH,', 'Idi Araba, Lagos', '2005-01-01', 2, '2021-01-18 10:11:47'),
(250, 8, 3, 'School of Health Information Management, University of Uyo,', 'P.M.B. 1136, Uyo', '2005-01-01', 2, '2021-01-18 12:56:55'),
(251, 5, 3, 'School of Health Technology,', 'Keffi, Nasarawa State', '1900-01-01', 1, '2021-01-18 12:58:02'),
(252, 7, 3, 'School of Health Technology,', 'P.M.B. 791, Akure, Ondo State', '1962-01-01', 1, '2021-01-18 12:58:58'),
(253, 3, 3, 'School of Nursing and Midwifery, Abubakar Tafawa Balewa University Teaching Hospital', 'Bauchi.', '1900-01-01', 2, '2021-01-18 13:01:29'),
(254, 6, 3, 'School of Orthopedic Cast Technology, National Orthopedic Hospital', 'PMB 01294, Enugu.', '1973-01-01', 2, '2021-01-18 13:03:04'),
(255, 3, 3, 'School of Orthopedic Cast Technology, National Orthopedic Hospital', 'Dala, Kano', '1900-01-01', 2, '2021-01-18 13:04:54'),
(256, 5, 3, 'School of Orthopedic Cast Technology, UITH,', 'Ilorin, Kwara State', '1900-01-01', 2, '2021-01-18 13:06:29'),
(257, 3, 3, 'Shehu Idris College of Health Sciences and Technology', 'P.M.B. 1050 Makarfi, Kaduna State.', '1954-01-01', 2, '2021-01-18 13:07:47'),
(258, 5, 7, 'Abuja School of Pension and Retirement Planning,', 'Karu, Abuja', '1900-01-01', 3, '2021-01-18 13:11:34'),
(259, 7, 7, 'Adecom Collegeof Business Administration and Management Studies,', 'Ibadan.', '1900-01-01', 3, '2021-01-18 13:12:30'),
(260, 8, 7, 'Charkin  Maritime  Academy,', 'KM  4,  East-West Road,   Ozuoba,   Port   Harcourt, Rivers State.', '1900-01-01', 3, '2021-01-18 13:13:46'),
(261, 4, 7, 'College of Business and Management Studies', 'P. M. B. 003, Konduga, Borno State.', '1981-01-01', 1, '2021-01-18 13:14:41'),
(262, 5, 7, 'College of Arabic and Islamic Legal Studies,', 'Ilorin, Kwara State', '1900-01-01', 1, '2021-01-18 13:21:36'),
(263, 3, 7, 'Federal Cooperative College', 'Abuja Road. P.M.B. 2425, Kaduna, Kaduna State', '1957-01-01', 2, '2021-01-18 13:22:19'),
(264, 7, 7, 'Federal Cooperative College,', 'P.M.B. 5033, Eleyele, Ibadan, Oyo State.', '1943-01-01', 2, '2021-01-18 13:23:06'),
(265, 6, 7, 'Federal Cooperative College,', 'Oji –River, P.M.B. 017, Enugu State.', '1976-01-01', 2, '2021-01-18 13:23:48'),
(266, 6, 7, 'Federal  School of Social Works,', 'Emene, Enugu', '1900-01-01', 2, '2021-01-18 13:24:49'),
(267, 7, 7, 'Federal School of Statistics,', 'P.O. Box 20753 U.I. Post Office, Ibadan.', '2007-01-01', 2, '2021-01-18 13:25:36'),
(268, 3, 7, 'Federal School of Statistics,', 'Manchok, P.M.B 2043, Kaduna State', '2007-01-01', 2, '2021-01-18 13:26:14'),
(269, 7, 7, 'Federal School of Surveying,', 'Ogbomosho Road, P.M.B. 1024, Oyo, Oyo State.', '1908-01-01', 2, '2021-01-18 13:27:05'),
(270, 8, 7, 'Federal Training Centre,', '17 Marian Road, Calabar, Cross Rivers State', '1982-01-01', 2, '2021-01-18 13:28:12'),
(271, 6, 7, 'Federal Training Centre,', 'Emene, Industrial Layout P.M.B. 01483, Enugu, Enugu State', '1977-01-01', 2, '2021-01-18 13:30:04'),
(272, 8, 7, 'Federal Training Centre,', 'Ikoyi Road, Obalande, P.M.B. 12599, Marina-Lagos', '1957-01-01', 2, '2021-01-18 13:32:13'),
(273, 7, 7, 'Federal Training Centre,', 'Kulende Housing Estate, Ilorin, Kwara State', '1976-01-01', 2, '2021-01-18 13:33:47'),
(274, 3, 7, 'Federal Training Centre,', '70 Isa Kaita Road, P.M.B. 2070, Kaduna', '1959-01-01', 2, '2021-01-18 13:36:00'),
(275, 4, 7, 'Federal Training Centre,', 'Custom Area, Bama Road, P.M.B 1594, Maiduguri, Borno State', '1978-01-01', 2, '2021-01-18 13:38:29'),
(276, 3, 7, 'Institute of Administration,', 'ABU. Zaria', '1900-01-01', 3, '2021-01-18 13:39:24'),
(277, 4, 7, 'Jigawa State Institute ofInformation Technology,', 'Kazaure', '2000-01-01', 1, '2021-01-18 13:41:39'),
(278, 8, 7, 'Lapo Institute of Microfinance and Enterprise Development', 'Benin', '1900-01-01', 3, '2021-01-18 13:42:39'),
(279, 5, 7, 'Michael Imodu National Institute for Labour', 'Ilorin, Kwara State.', '1986-01-01', 2, '2021-01-18 13:43:58'),
(280, 8, 7, 'Maritime Academy of Nigeria', 'P.M.B. 1089, Oron, Akwa Ibom State', '1988-01-01', 2, '2021-01-18 13:59:43'),
(281, 6, 7, 'Metallurgical Training Institute', 'KM. 6/7 Onitsha-Owerri Road,P.M.B. 1555, Onitsha.', '1983-01-01', 2, '2021-01-18 14:05:40'),
(282, 3, 7, 'National Water Resources Institute', 'Mando Road, P.M.B. 2309, Kaduna.', '1979-01-01', 2, '2021-01-18 14:06:52'),
(283, 7, 7, 'Nigerian Army School of Finance and Administration,', 'Apapa, P.M.B. 1066, Lagos.', '1978-01-01', 2, '2021-01-18 14:07:55'),
(284, 7, 7, 'Nigerian Army School of Signals', 'H/Q Arakan Barrack, Apapa-Lagos', '1948-01-01', 2, '2021-01-18 14:09:16'),
(285, 7, 7, 'Nigerian Army School of Signals,', 'H/Q Arakan Barrack, Apapa-Lagos', '1948-01-01', 2, '2021-01-18 14:11:34'),
(286, 7, 7, 'Nigerian Institute of Journalism,', 'Ikeja, Lateef Jakande House 8-14 Ijaiye Road Ogba, Lagos.', '2003-01-01', 3, '2021-01-18 14:13:18'),
(287, 3, 7, 'Nigerian Institute of Leather and Chemical Technology', 'P.M.B. 1034, Samaru, Zaria, Kaduna State', '1964-01-01', 2, '2021-01-18 14:14:31'),
(288, 8, 7, 'Engineering Sapele, Naval Base, New Port,', 'Nigerian Navy College of  P.M.B. 4002, Ogborode, Delta State.', '1982-01-01', 2, '2021-01-18 14:15:46'),
(289, 6, 7, 'Nigerian Navy Finance and Logistics College', 'Naval Base, PMB 9001, Owerrinta, Abia State', '1900-01-01', 2, '2021-01-18 14:16:37'),
(290, 5, 7, 'National Institute for Legislative and Democratic Studies,', 'Maitama, Abuja', '2017-01-01', 2, '2021-01-18 14:18:42'),
(291, 7, 7, 'Wavecrest College of Catering and Hospitality Management', 'Lagos, P.O. Box 997, Surulere, Lagos State.', '1999-01-01', 3, '2021-01-18 14:20:20'),
(292, 5, 6, 'Afrihub ICT Institute', 'AP Plaza. Ademola Adetokunbo Crescent Wuse II,Abuja, FCT', '2008-01-01', 3, '2021-01-18 14:40:38'),
(293, 7, 6, 'Ambassador College Festac,', 'Lagos', '2010-01-01', 3, '2021-01-18 14:44:16'),
(294, 8, 6, 'Ambassador College of Mgt. And Technology,', '80c Igwuruta Road(Tank)Rumuokwurushi Port-harcourt', '2009-01-01', 3, '2021-01-19 11:04:35'),
(295, 8, 6, 'Aquatech Institute of Fisheries Management,', 'Ibadan', '2013-01-01', 3, '2021-01-19 11:05:09'),
(296, 8, 6, 'Arewa Paralegal Innovation', 'ENT.No. 6. Sir Kashim Ibrahim Way, U/ Rimi Kaduna', '2009-01-01', 3, '2021-01-19 11:06:35'),
(297, 8, 6, 'Benson Idahosa School of Basic & Applied Studies,', 'Benin City, Edo State', '2013-01-01', 3, '2021-01-19 11:07:13'),
(298, 8, 6, 'Best Global Business and Financial School', 'Kachia Road, Kaduna', '2015-01-01', 3, '2021-01-19 11:07:52'),
(299, 8, 6, 'Bonny Vocational Centre,', 'Bonny Island, Rivers State', '2013-01-01', 3, '2021-01-19 11:08:58'),
(300, 6, 6, 'Buckingham Academy of Management and Technology,', 'Ogidi, Anambra State', '2008-01-01', 3, '2021-01-19 11:09:38'),
(301, 7, 6, 'Business Education Examinations Council (BEEC),', '13 Randle Road, Apapa, P.O. Box 55014, Falomo, Ikoyi, Lagos State', '2008-01-01', 3, '2021-01-19 11:10:28'),
(302, 6, 6, 'Calvary Foundation Institute of Technology,', 'Enugu, Enugu State', '2013-01-01', 3, '2021-01-19 11:10:57'),
(303, 7, 6, 'Calvary College of Technology,', 'Ijoko, Ogun State', '2015-01-01', 3, '2021-01-19 11:11:44'),
(304, 8, 6, 'Central Institute of Business and Technology', 'Kilometer 4 Benin-Abraka Road, Egba, Benin City', '2016-01-01', 3, '2021-01-19 11:12:09'),
(305, 8, 6, 'Centre for Creative Arts Education', 'Port-Harcourt, 2A Ndabras Close, Off Trans-Amadi, Port-Harcourt, Rivers State.', '2008-01-01', 3, '2021-01-19 11:13:12'),
(306, 7, 6, 'Certified Institute of Shipping of Nigeria (CISN)', 'Badagary Express Way, Lagos', '2013-01-01', 3, '2021-01-19 11:13:57'),
(307, 3, 6, 'Cherish Enterprise Institute,', 'Batsari, Katsina State', '2013-01-01', 3, '2021-01-19 11:14:23'),
(308, 7, 6, 'CIFMAN Institute of Technology,', 'Sabo, Yaba, Lagos', '2011-01-01', 3, '2021-01-19 11:15:11'),
(309, 7, 6, 'City Gate Institute of Innovation and Technology', 'Ibadan, E-telligence Place, 3rdFloor, Babos Building, 1 Oluyole Way, Bodija, Ibadan, Oyo State.', '2008-01-01', 3, '2021-01-19 11:15:57'),
(310, 5, 6, 'City Institute of Management and Technology,', 'Idogbo Educational Centre, Sani Abacha Road, Mararaba, Nasarawa State', '2018-01-01', 3, '2021-01-19 11:16:47'),
(311, 8, 6, 'Clara School of Media & Performing Arts,', 'Yenogoa, Bayelsa State', '2013-01-01', 3, '2021-01-19 11:17:26'),
(312, 7, 6, 'College of Banking and Finance,', 'Ibadan', '2014-01-01', 3, '2021-01-19 11:17:55'),
(313, 8, 6, 'Complete Computers and Technology Institute,', 'Benin City, Edo State', '2012-01-01', 3, '2021-01-19 11:18:40'),
(314, 5, 6, 'Comprehensive Institute of Management and Technology,', 'Byazin, Kubwa, Abuja', '2013-01-01', 3, '2021-01-19 11:19:10'),
(315, 8, 6, 'Conarina Maririme Academy Oria,', 'Abraka, Delta State', '2017-01-01', 3, '2021-01-19 11:21:43'),
(316, 3, 6, 'Dagama College of Applied Science', '1 Road E, Chikaji Road, MTD Sabon Gari Zaria, Kaduna State', '2019-01-01', 3, '2021-01-19 11:56:22'),
(317, 7, 6, 'Dalewares Institute of Technology,', 'Lagos33 Imani Dauda St. Off Eric Moore Road, Surulere, Lagos State.', '2008-01-01', 3, '2021-01-19 11:57:09'),
(318, 5, 6, 'Damson Institute of Management and Technology,', 'No 5 Damson Street, Off Etsu Jetta Street,Phase 1, Jikwoyi,Along Nyanya Karshi Road,FCT Abuja', '2018-01-01', 3, '2021-01-19 11:58:03'),
(319, 7, 6, 'Del-York Creative Academy,', 'Ikoyi, Lagos State', '2015-01-01', 3, '2021-01-19 11:58:55'),
(320, 3, 6, 'Dialogue Computer Institute,', 'Kaduna Study Centre. 1 Kudan Road, Legislative QtrsU/Dosa, Kaduna,', '2009-01-01', 3, '2021-01-19 11:59:43'),
(321, 3, 6, 'Dialogue Computer Institute.', 'Katsina Study Centre.', '2009-01-01', 3, '2021-01-19 12:00:24'),
(322, 3, 6, 'Digital Bridge Institute,', 'Kano', '2016-01-01', 2, '2021-01-19 12:01:11'),
(323, 7, 6, 'Digital Bridge Institute', 'Lagos', '2016-01-01', 2, '2021-01-19 12:01:48'),
(324, 7, 6, 'Distinct Institute of Management and Technology', 'Osogbo,Osun state', '2018-01-01', 3, '2021-01-19 13:38:53'),
(325, 7, 6, 'DOTS.ICT Institute of Technology,', 'Agbadu Road, Abeokuta', '2013-01-01', 3, '2021-01-19 13:39:30'),
(326, 5, 6, 'ECWA Information and Computer Science Institute,', 'Jos, Plateau State', '2015-01-01', 3, '2021-01-19 13:40:19'),
(327, 7, 6, 'Eko College of Management and Technology', '145, Ikotun  Abanranje Road, Ikotun, Lagos State', '2018-01-01', 3, '2021-01-19 13:41:06'),
(328, 7, 6, 'Emdee Shipping and Maritime College,', 'Apapa, Lagos', '2013-01-01', 3, '2021-01-19 13:41:44'),
(329, 3, 6, 'Entrepreneurship Vocational Technology Ltd', 'Matan Fada, Kano State', '2010-01-01', 3, '2021-01-19 13:42:29'),
(330, 7, 6, 'Enville Institute of Environmental and Safety Management', 'Ikeja, Lagos', '2016-01-01', 3, '2021-01-19 13:43:20'),
(331, 6, 6, 'Environmental Sustainability Thinking and Action Centre (ESTAC), Institute of Construction & Engineering', 'Enugu.1, Mike Toney Avenue, Phase 6 Trans Ekulu, Enugu State.', '2008-01-01', 3, '2021-01-19 13:44:00'),
(332, 7, 6, 'Fame School of Music', '17 Admiralty Way, Lekki Phase I, Lagos', '2010-01-01', 3, '2021-01-19 13:44:38'),
(333, 3, 6, 'FCFM-Afaka Entrepreneurship Centre', 'Kaduna', '2010-01-01', 3, '2021-01-19 13:45:33'),
(334, 3, 6, 'FCFM-Afaka Entrepreneurship Centre', 'Kaduna', '2010-01-01', 3, '2021-01-19 13:51:29'),
(335, 3, 6, 'Filaps Media Training Institute,', 'Kano', '2009-01-01', 3, '2021-01-19 13:52:21'),
(336, 8, 6, 'Filmand Broadcast Academy (FABA)', 'Hospital Road, Ozoro-Delta State', '2009-01-01', 3, '2021-01-19 13:53:04'),
(337, 7, 6, 'First Irish Business School', 'Agege, Lagos', '1900-01-01', 3, '2021-01-19 13:53:46'),
(338, 7, 6, 'First Mark Innovation School of Technology', 'Ado-Ekiti', '2012-01-01', 3, '2021-01-19 13:54:27'),
(339, 5, 6, 'Flyingdove Institute of Information Technology', 'Ground Floor, National Library Building, Adjacent reiz Continental Hotel,Central area Abuja.', '2010-01-01', 3, '2021-01-19 14:32:20'),
(340, 8, 6, 'Foundation College of Technology,', 'Ikot Idem, Ikot Ekpene, Akwa Ibom State', '2013-01-01', 3, '2021-01-19 14:35:38'),
(341, 6, 6, 'Foundation for Energy Health International College of Science and Technology', 'Mgbowo, Awgu Local Government Area, Enugu State', '2018-01-01', 3, '2021-01-19 14:36:22'),
(342, 7, 6, 'Grace City Institute of Technology and Management Science', 'Ltd,Opposite Rinsayo Filling Station, Ring Road, Osogbo,Osun State', '2018-01-01', 3, '2021-01-19 14:37:11'),
(343, 7, 6, 'Gateway Industrial Petrogas Institute', 'Oni, Ogun State', '2013-01-01', 1, '2021-01-20 08:56:56'),
(344, 5, 6, 'Global Institute of Commerce and Technology,', 'Gwarinpa, Abuja', '2015-01-01', 3, '2021-01-20 09:02:58'),
(345, 8, 6, 'Global Maritime Academy,', 'Oguni-Ololmu, Delta State', '2012-01-01', 3, '2021-01-20 09:09:47'),
(346, 5, 6, 'Gloryland Institute of Management', 'Ankpa, Kogi State', '2016-01-01', 3, '2021-01-20 09:19:23'),
(347, 7, 6, 'Graig-Philips College of Technology,', 'Maryland, Lagos State', '2015-01-01', 3, '2021-01-20 09:20:07'),
(348, 7, 6, 'Halogen School of Security Management and Technology', 'Ikeja, Lagos', '2019-01-01', 3, '2021-01-20 09:21:02'),
(349, 7, 6, 'Highland College', 'Ibadan, c/o Segun Fatoki, 98 Iwo Road, Ibadan, Oyo State.', '2008-01-01', 3, '2021-01-20 09:21:45'),
(350, 8, 6, 'Homik Oil and Gas Facility Engineering School,', 'Homik Rehoboth Court by Jesus Evang Power Mission,NTA/ Choba Road Ozuoba , Port Harcourt, Rivers State', '2018-01-01', 3, '2021-01-20 11:20:50'),
(351, 7, 6, 'Honourable Justice L. O. Aremu’s Academy for Basic Studies', 'Ibadan, Oyo State', '2015-01-01', 3, '2021-01-20 11:22:08'),
(352, 8, 6, 'Ibom Institute of Management and Technology,', 'Ikot Ekpene', '2014-01-01', 3, '2021-01-20 11:23:28'),
(353, 6, 6, 'ICCN Institute of Finance and Investment Management', 'Nkwerre, Imo State', '2017-01-01', 3, '2021-01-20 11:24:38'),
(354, 7, 6, 'Ife Business School Ile Ife,', 'Osun State', '2017-01-01', 3, '2021-01-20 11:25:44'),
(355, 7, 6, 'IFO College of Management  &Technology,', 'P.M.B 5030 Ifo, Km. 50, Lagos Abeokuta Expressway, Techno Bus Stop, Ogun State.', '2009-01-01', 3, '2021-01-20 11:26:44'),
(356, 7, 6, 'Ilesha City College of Technology,', 'Ilesa –Ibokun Road ,Ilase –Ijesha via Ilesha, Osun State', '2018-01-01', 3, '2021-01-20 11:27:34'),
(357, 3, 6, 'Iman College of Business Technology', '5thAvenue, 503 Road, Federal Housing Estate,Sharada Phase 2 Kano, Kano State', '2019-01-01', 3, '2021-01-20 11:55:00'),
(358, 8, 6, 'IMFI-ICT Academy,', '54, Nsikak Eduok Avenue, P.O.Box 1723, Uyo, Akwa Ibom State', '2009-01-01', 3, '2021-01-20 11:55:42'),
(359, 5, 6, 'Industrial Training Fund(ITF) Models Skills Training Centre,', 'Adetokunbo Ademola Crescent, Maitama, Abuja', '2016-01-01', 3, '2021-01-20 11:56:29'),
(360, 7, 6, 'Innovation Institute of Information Technology,', 'Akure, Ondo State', '2013-01-01', 3, '2021-01-20 11:57:18'),
(361, 3, 6, 'Innovation Institute of Technology,', 'No. 5. Yakubu Gowon Way, Kaduna', '2009-01-01', 3, '2021-01-20 11:58:12'),
(362, 7, 6, 'Institute of Banking and Finance', 'Ibadan', '2015-01-01', 3, '2021-01-20 11:58:55'),
(363, 3, 6, 'Institute of Corporate Security and Intelligence Studies', 'Sani Abacha Youth Centre22/32 Madobi Road Kano, Kano State', '2017-01-01', 3, '2021-01-20 11:59:34'),
(364, 6, 6, 'Institute of Information and Computer Technology,', 'Awgu, Enugu State', '2013-01-01', 3, '2021-01-20 12:00:32'),
(365, 7, 6, 'Institute of Maritime and Safety,', '44 Ifoshin Street, Ijigbo, Ali mosho,Lagos,Lagos State', '2018-01-01', 3, '2021-01-20 12:01:45'),
(366, 7, 6, 'Institute of Transport and Management Technology,', 'Km 43, Agbo Malu Bus Stop, MTN Badagry Express Way,Lagos', '2017-01-01', 3, '2021-01-20 12:02:37'),
(367, 6, 6, 'International Chaplaincy Corps Network (ICCN) Institute of Security Technology and Management,', 'Orlu, Imo State', '2013-01-01', 3, '2021-01-20 12:03:17'),
(368, 5, 6, 'International Vocational Technical Enteprenuership Centre (IVTECH)', 'Ajase-Ipo, Offa Road, PMB 1005, Kwara State', '2019-01-01', 3, '2021-01-20 12:03:56'),
(369, 7, 6, 'Ipetu-Ijesha College of Technology,', 'Easy Life Estate, Along Banjolat School Road,Ipetu –Ijesha,Osun State', '2018-01-01', 3, '2021-01-20 12:04:38'),
(370, 8, 6, 'Izisco Obos Institute of Marine Studies & Technology,', 'Warri, Delta State', '2013-01-01', 3, '2021-01-20 12:05:20'),
(371, 3, 6, 'Kaduna Business School,', '17 Gobarau Road U/Rimi, Kaduna', '2010-01-01', 3, '2021-01-20 12:06:00'),
(372, 3, 6, 'Katsina State Institute of Technology and Management', 'Katsina, Katsina State', '2015-01-01', 3, '2021-01-20 12:06:35'),
(373, 3, 6, 'Kings and Queens Beauty Institute,', 'No 57 Abidjan Street, Wuse Zone 3 Abuja,FCT', '2018-01-01', 3, '2021-01-20 12:07:46');
INSERT INTO `tblinstitutions` (`id`, `zoneid`, `schoolcategoryid`, `institutions`, `address`, `yearestablished`, `ownership`, `datetime`) VALUES
(374, 6, 6, 'Kunoch Education and Training', 'Centre Owerri', '2008-01-01', 3, '2021-01-20 12:08:31'),
(375, 5, 6, 'Ladela Educational Institute (Dreamsville Ltd.)', 'Plot 32,Port-Harcourt Crescent, Garki, Abuja,', '2008-01-01', 3, '2021-01-20 12:09:11'),
(376, 7, 6, 'Lagos Aviation and Maritime Business (LAMB) Academy,', 'Iyana-Paja, Lagos', '2012-01-01', 3, '2021-01-20 13:16:38'),
(377, 7, 6, 'Lagos City Computer College,', '7 Bashiru Oweh Street, P.M.B. 21200, Ikeja, Lagos State.', '2008-01-01', 3, '2021-01-20 13:17:22'),
(378, 8, 6, 'Laser Petroleum Geosciences', 'Centre, Port-HarcourtP.O. Box 123, Uniport Post Office,Choba, Port-Harcourt.Km 5 East West Road, Off IMCO Petrol Station Rumuogara, Port-Harcourt, Rivers State.', '2008-01-01', 3, '2021-01-20 13:18:14'),
(379, 7, 6, 'Laurel School of Mines', '26 Adekunle Bisi Street Pako, Ogudu GRA Ogudu Lagos, Lagos State', '2019-01-01', 3, '2021-01-20 13:18:59'),
(380, 5, 6, 'Lens School of Management and Technology,', 'Offa, Kwara State', '2013-01-01', 3, '2021-01-20 13:19:41'),
(381, 5, 6, 'Lincoln College of Science, Management and Technology', 'FCT, Abuja', '2020-01-01', 3, '2021-01-20 13:20:22'),
(382, 6, 6, 'Linet Paul Innovative Institute', 'No 1Sunmail Drive Off Isaac Boro Expressway, Etegwe-Yenagoa, Bayelsa State.', '2020-01-01', 3, '2021-01-20 13:21:13'),
(383, 7, 6, 'Living Spring College of Innovation Technology,', 'Oshogbo, Osun State', '2012-01-01', 3, '2021-01-20 13:22:08'),
(384, 7, 6, 'Lufodo Academy of Performing Arts', 'Ikoyi22 Bourdillon Road Ikoyi-Lagos', '2010-01-01', 3, '2021-01-20 13:24:26'),
(385, 8, 6, 'Magic Brush Film School', '12,  Owu Street Behind Barnax Building, Waterlines Junction, Aba Road, Port Harcourt, Rivers State', '2017-01-01', 3, '2021-01-20 13:25:17'),
(386, 6, 6, 'Mario Institute of Hospitality Management and Entreprenuership Education', 'Uhunowerre,Igbo –Eze South LGA Nsukka, Enugu State', '2017-01-01', 3, '2021-01-20 13:25:57'),
(387, 3, 6, 'Marvel Institute of Management & Technology,', 'Kuchikau, Nasarawa State', '2017-01-01', 3, '2021-01-20 13:26:37'),
(388, 8, 6, 'Maurid Institute of Management and Technology', 'Oron, Akwa Ibom State', '2016-01-01', 3, '2021-01-20 13:27:29'),
(389, 8, 6, 'Maurid Institute of Management and Technology', 'Mbiaso, Akwa Ibom State', '2017-01-01', 3, '2021-01-20 13:28:18'),
(390, 6, 6, 'Mbara Ozioma College of Technology Ehime', '–Mbano Imo State', '2016-01-01', 3, '2021-01-20 13:30:09'),
(391, 8, 6, 'Merchant Seaman Academy,', 'Ikot Adautor Essien, Udim L. G. A. Akwa Ibom State', '2014-01-01', 3, '2021-01-20 13:31:38'),
(392, 3, 6, 'Minna Institute of Technology and Innovation,', 'Kpakungu Road, Minna, Niger State', '2016-01-01', 3, '2021-01-20 13:32:25'),
(393, 5, 6, 'My Project Institute of Security and Strategic Studies,', 'Zuba, Abuja, FCT', '2016-01-01', 3, '2021-01-20 13:33:44'),
(394, 7, 6, 'Lagos Aviation and Maritime Business (LAMB) Academy,', 'Iyana-Paja, Lagos', '2012-01-01', 3, '2021-01-21 12:45:59'),
(395, 7, 6, 'Lagos City Computer College,', '7 Bashiru Oweh Street, P.M.B. 21200, Ikeja, Lagos State.', '2008-01-01', 3, '2021-01-21 12:46:35'),
(396, 8, 6, 'Laser Petroleum Geosciences Centre,', 'Port-HarcourtP.O. Box 123, Uniport Post Office,Choba, Port-Harcourt.Km 5 East West Road, Off IMCO Petrol Station Rumuogara, Port-Harcourt, Rivers State.', '2008-01-01', 3, '2021-01-21 12:47:16'),
(397, 7, 6, 'Laurel School of Mines', '26 Adekunle Bisi Street Pako, Ogudu GRA Ogudu Lagos, Lagos State', '2019-01-01', 3, '2021-01-21 12:47:43'),
(398, 5, 6, 'Lens School of Management and Technology,', 'Offa, Kwara State', '2013-01-01', 3, '2021-01-21 12:48:16'),
(399, 5, 6, 'Lincoln College of Science, Management and Technology', 'FCT, Abuja', '2020-01-01', 3, '2021-01-21 12:48:57'),
(400, 8, 6, 'Linet Paul Innovative Institute', 'No 1Sunmail Drive Off Isaac Boro Expressway, Etegwe-Yenagoa, Bayelsa State.', '2010-01-01', 3, '2021-01-21 12:49:34'),
(401, 7, 6, 'Living Spring College of Innovation Technology,', 'Oshogbo, Osun State', '2012-01-01', 3, '2021-01-21 12:50:03'),
(402, 7, 6, 'Lufodo Academy of Performing Arts', 'Ikoyi22 Bourdillon Road Ikoyi-Lagos', '2010-01-01', 3, '2021-01-21 12:51:55'),
(403, 8, 6, 'Magic Brush Film School', '12,  Owu Street Behind Barnax Building, Waterlines Junction, Aba Road, Port Harcourt, Rivers State', '2017-01-01', 3, '2021-01-21 12:52:33'),
(404, 6, 6, 'Management and Entreprenuership Education', 'Mario Institute of Hospitality Uhunowerre,Igbo –Eze South LGA Nsukka, Enugu State', '2017-01-01', 3, '2021-01-21 12:53:55'),
(405, 5, 6, 'Marvel Institute of Management & Technology,', 'Kuchikau, Nasarawa State', '2013-01-01', 3, '2021-01-21 12:54:23'),
(406, 8, 6, 'Maurid Institute of Management and Technology Oron,', 'Akwa Ibom State', '2016-01-01', 3, '2021-01-21 12:55:17'),
(407, 8, 6, 'Maurid Institute of Management and Technology Mbiaso,', 'Akwa Ibom State', '2017-01-01', 3, '2021-01-21 12:56:41'),
(408, 8, 6, 'Maurid Institute of Management and Technology Mbiaso,', 'Akwa Ibom State', '2017-01-01', 3, '2021-01-21 12:56:44'),
(409, 6, 6, 'Mbara Ozioma College of Technology Ehime –', 'Mbano Imo State', '2016-01-01', 3, '2021-01-21 12:58:03'),
(410, 8, 6, 'Merchant Seaman Academy,', 'Ikot Adautor Essien, Udim L. G. A. Akwa Ibom State', '2014-01-01', 3, '2021-01-21 12:58:46'),
(411, 5, 6, 'Minna Institute of Technology and Innovation,', 'Kpakungu Road, Minna, Niger State', '2016-01-01', 3, '2021-01-21 12:59:36'),
(412, 3, 6, 'My Project Institute of Security and Strategic Studies,', 'Zuba, Abuja, FCT', '2016-01-01', 3, '2021-01-21 13:00:24'),
(413, 5, 6, 'NAOWA Institute of Management and Technology,', 'Asokoro, Abuja', '2013-01-01', 3, '2021-01-21 13:02:22'),
(414, 5, 6, 'NAOWA Institute of Management and Technology,', 'Asokoro, Abuja', '2010-01-01', 2, '2021-01-21 13:03:36'),
(415, 5, 6, 'National Centre for Women Development (NCWD),', 'Tafawa Balewa Street Central Business District, Abuja', '2010-01-01', 2, '2021-01-21 13:04:44'),
(416, 5, 6, 'National Film Institute,', 'Jos, Plateau State', '2011-01-01', 2, '2021-01-22 08:36:06'),
(417, 5, 6, 'Nigeria–Korea Friendship Institute of Vocational and Advanced Technology,', 'Lokoja, Kogi State', '0201-01-01', 1, '2021-01-22 08:37:13'),
(418, 5, 6, 'Nigerian Television Authority (NTA), Television College,', 'Old Government House Close, Ray field, Jos, Plateau State.', '2017-01-01', 2, '2021-01-22 08:41:56'),
(419, 7, 6, 'NIIT Education and Training Centre.', 'Or NIIT/IDM Building, 9 Oba Akran Avenue, Ikeja Lagos.', '2008-01-01', 3, '2021-01-22 08:43:21'),
(420, 7, 6, 'NIIT Ajah Centre,', 'Km 11, Lekki-Epe Express Way, First Gate –Ikota', '2008-01-01', 3, '2021-01-22 08:57:25'),
(421, 8, 6, 'NIIT', 'Benin Centre,', '2008-01-01', 3, '2021-01-22 08:58:16'),
(422, 7, 6, 'NIIT', 'Festac Centre, Lagos', '2008-01-01', 3, '2021-01-22 08:58:44'),
(423, 5, 6, 'NIIT Garki Centre,', '4, Dambata Close, Off Yola Street, Area 7, Garki, Abuja.', '2008-01-01', 3, '2021-01-22 08:59:38'),
(424, 7, 6, 'NIIT Gbagada Centre,', '141C, Gbagada-Oshodi Express Road ( Opposite Hotel New Castel), Lagos State.', '2008-01-01', 3, '2021-01-22 09:00:30'),
(425, 7, 6, 'NIIT', 'Ikorodu Centre, 14, OlorunojowonStreet, (Besides Zenith Bank), Lagos State.', '2008-01-01', 3, '2021-01-22 09:01:18'),
(426, 5, 6, 'NIIT', 'Offa Centre, 2ndFloor, Olatinwo House, Olofa Way, Offa, Kwara State.', '2008-01-01', 3, '2021-01-22 09:01:55'),
(427, 7, 6, 'NIIT', 'Ota Centre,Tantolorun House, KM 1, Idi-iroko Road, Ota Round-About, Ota, Ogun State.', '2008-01-01', 3, '2021-01-22 09:02:32'),
(428, 8, 6, 'NIIT', 'Port-Harcourt Centre,NIIT Place, Kaduna Street, D-Line, Port-Harcourt, Rivers State.', '2008-01-01', 3, '2021-01-22 09:03:02'),
(429, 7, 6, 'NIIT', 'Surulere Centre, Lagos', '2008-01-01', 3, '2021-01-22 09:03:31'),
(430, 8, 6, 'NIIT', 'Uyo Centre, 30, Udosen Uko Street, Off Oron Road, Uyo, Akwa Ibom State.', '2008-01-01', 3, '2021-01-22 09:04:01'),
(431, 8, 6, 'NIIT', 'Warri Centre,43, Airport Road, Effurun, Warri, Delta State.', '2008-01-01', 3, '2021-01-22 09:04:33'),
(432, 5, 6, 'Nspire School of Management and Technology Limited,', 'Oyo House,Central Business District, Abuja, FCT', '2014-01-01', 3, '2021-01-22 09:05:16'),
(433, 7, 6, 'OfferCentre Institute of Agriculture', 'Olupona, Iwo,', '2013-01-01', 3, '2021-01-22 09:06:04'),
(434, 7, 6, 'Olawoyin Awosika School of Innovation Studies (OASIS)', 'Isheri North LGA, Lagos', '2013-01-01', 3, '2021-01-22 09:08:16'),
(435, 6, 6, 'Oluaka Institute of Technology', 'Obinze, Owerri Imo State', '2019-01-01', 3, '2021-01-22 09:08:55'),
(436, 6, 6, 'ONIT Institute of Technology', 'P.O.Box 677 Abagana, Njikoka L.G.A Anambra State.', '2010-01-01', 3, '2021-01-22 09:09:24'),
(437, 8, 6, 'Oseni Elamah ICT Institute', 'No. 39 Polytechnic Road, Auchi.', '2009-01-01', 3, '2021-01-22 09:10:06'),
(438, 7, 6, 'Owu College of Management Technology,', 'Itele-Ota, Ogun State', '2012-01-01', 3, '2021-01-22 09:10:40'),
(439, 5, 6, 'Pan-African Institute of Paralegal Studies', 'Gwarimpa, Abuja', '2012-01-01', 3, '2021-01-22 09:11:51'),
(440, 8, 6, 'Peace Institute of Management Technology', 'Abak, Akwa Ibom State', '2018-01-01', 3, '2021-01-22 09:14:16'),
(441, 7, 6, 'Pencil Film and Television Institute (PEFTI)', ', 26/28 Oshodi-Apapa Expressway. Charity Busstop. Oshodi, Lagos State.', '2008-01-01', 3, '2021-01-22 09:14:53'),
(442, 7, 6, 'Prime Innovation Institute of Technology,', 'Ajah, Lagos', '2012-01-01', 3, '2021-01-22 09:15:32'),
(443, 7, 6, 'Risk Control Academy', 'E 394 Ikota Shopping Complex, Lekki-Epe Expressway, Lagos.', '2010-01-01', 3, '2021-01-22 09:16:38'),
(444, 6, 6, 'Rocana Institute of Technology,', 'Enugu', '2012-01-01', 3, '2021-01-22 09:18:03'),
(445, 8, 6, 'Rolof Computer Academy', 'Plot 110,Apala Street, Off Okumagba Avenue, Warri,Delta State', '2017-01-01', 3, '2021-01-22 09:18:55'),
(446, 7, 6, 'Royal Arts Academy,', 'Surulere, Lagos State', '2017-01-01', 3, '2021-01-22 09:19:38'),
(447, 7, 6, 'Sagamu Business and Arts Institute Sagamu,', 'Ogun State', '2016-01-01', 3, '2021-01-22 09:20:30'),
(448, 7, 6, 'School of Banking Honours', '74, Isheri Road (All Season Place), Beside Federal Road Safety Corp, Ojodu, P.O. Box 11314, Ikeja, Lagos.', '2007-01-01', 3, '2021-01-22 09:21:39'),
(449, 5, 6, 'Sentona Institute of Management and Technology', 'New Nyanya, Karu L. G. A., Abuja', '2014-01-01', 3, '2021-01-22 09:22:15'),
(450, 7, 6, 'Smart Image Film and Theatre Institute,', 'Ibadan, Oyo State', '2015-01-01', 3, '2021-01-22 09:23:55'),
(451, 7, 6, 'Soteria Business School', 'Bola Ige Junction, Liberty Road,Oke Ado, Ibadan Oyo State', '2018-01-01', 3, '2021-01-22 09:25:54'),
(452, 6, 6, 'Southern Eastern College for Computer Engineering and Information Technology,', 'Owerri, Imo State', '2011-01-01', 3, '2021-01-22 09:27:46'),
(453, 7, 6, 'Southern Nigerian Institute of Innovation Technology,', 'Ifewara, Ile Ife, Osun State', '2012-01-01', 3, '2021-01-22 09:31:51'),
(454, 7, 6, 'Stars Maritime Academy,', 'Itele, Ayobo-Ota Road Lafenwa Ogun State, P.O.Box 176 ikotun Post Office, Ikotun, Lagos', '2010-01-01', 3, '2021-01-22 09:32:42'),
(455, 7, 6, 'St. Augustine Innovation Enterprise Institution', 'Allen Avenue, Ikeja, Lagos', '2011-01-01', 3, '2021-01-22 09:34:26'),
(456, 6, 6, 'St Rita Innovative Institute', 'C8/C9 Niger Bridge Layout, Housing Estate Fegge, P.O. Box 2312, Onitsha', '2010-01-01', 3, '2021-01-22 09:35:07'),
(457, 7, 6, 'Human Resources Development Centre', 'St. Winifred Innovative Institute,  Sango Dina Village off Oloni-Olunde Ayegun Road, P.O. Box 16744, Ibadan, Oyo State.', '2008-01-01', 3, '2021-01-22 09:36:07'),
(458, 3, 6, 'Tashiba  Institute of Information Technology Gyallesu,', 'Zaria, Kaduna State', '2017-01-01', 3, '2021-01-22 09:36:52'),
(459, 7, 6, 'Timeon Kairos Educational and Vocational Institute,', 'Akowanjo, Abeokuta Express Way, Agege, Lagos', '2016-01-01', 3, '2021-01-22 09:37:42'),
(460, 7, 6, 'Tower Innovative College,', '136, Liberty Road,Box 13039, G.P.O. Dugbe,  Ibadan. Oyo State.', '2009-01-01', 3, '2021-01-22 09:38:24'),
(461, 6, 6, 'Trizas Institute for Innovation Education', '13/15 Udoye Street Trans-Ekulu Enugu', '2010-01-01', 3, '2021-01-22 09:39:04'),
(462, 6, 6, 'UA College of Science and Technology,', 'Isuofia Anambra State', '2014-01-01', 3, '2021-01-22 09:39:41'),
(463, 6, 6, 'Umuebe Farm College', 'Abakaliki, Ebonyi State', '2010-01-01', 3, '2021-01-22 09:41:02'),
(464, 8, 6, 'United Cement Community Development Initiative Training Institute', 'Mfamosing, Cross River State', '2015-01-01', 3, '2021-01-22 10:02:08'),
(465, 8, 6, 'Unival Institute of Technology', 'Benin City', '2015-01-01', 3, '2021-01-22 10:03:10'),
(466, 8, 6, 'Uptonville Oil and Gas Institute', 'Port-Harcourt, 129/ 133 Woji Road, GRA Phase II, Port-Harcourt, Rivers State.', '2008-01-01', 3, '2021-01-22 10:04:00'),
(467, 3, 6, 'Yahaya Hamza Institute of Advanced Studies,', 'Kaduna, Ahmadu Bello Way, Nagwamatse House, Bank of the North Building 1stFloor, Kaduna State. And 31, Independence Way By Murtala Square, P.M.B. 2011, Kaduna.', '2008-01-01', 3, '2021-01-22 10:08:55'),
(468, 8, 6, 'Yefmadec Institute of Science and Technology,', 'Mosogar, Delta State', '2015-01-01', 3, '2021-01-22 10:09:48'),
(469, 8, 6, 'Yenagoa Enterprise School', 'Yenagoa', '2015-01-01', 3, '2021-01-22 10:11:44'),
(470, 5, 6, 'Zibeh Institute of Technology', 'Jos, Plateau State', '2015-01-01', 3, '2021-01-22 10:13:18'),
(471, 6, 5, 'Ohafia Technical College', 'Ania', '1988-01-01', 1, '2021-01-22 10:15:11'),
(472, 4, 5, 'Government Technical College', 'Mubi', '1989-01-01', 1, '2021-01-22 10:17:02'),
(473, 4, 5, 'Government Technical College', 'Yola', '1989-01-01', 1, '2021-01-22 10:18:04'),
(474, 4, 5, 'Vocational Technical Training Centre', 'Mayo-Balwa', '1989-01-01', 1, '2021-01-22 10:18:59'),
(475, 4, 5, 'Vocational Technical Training Centre', 'Mubi', '1989-01-01', 1, '2021-01-22 10:19:39'),
(476, 4, 5, 'Vocational Technical Training Centre', 'Yola', '1989-01-01', 1, '2021-01-22 10:20:39'),
(477, 4, 5, 'Community Technical College,', 'Ikot-Akata', '1988-01-01', 1, '2021-01-22 10:23:03'),
(478, 6, 5, 'Government Technical College,', 'Abak', '1988-01-01', 1, '2021-01-22 10:24:41'),
(479, 6, 5, 'Government Technical College', 'Ewet-Uyo', '1988-01-01', 1, '2021-01-22 10:25:32'),
(480, 8, 5, 'Government Technical College,', 'Oron', '1988-01-01', 1, '2021-01-22 10:26:28'),
(481, 8, 5, 'Union Technical College', 'Ikpa-Eket', '1988-01-01', 1, '2021-01-22 10:27:51'),
(482, 6, 5, 'Federal Science Technical College', 'Zik Avenue, Awka, P.M.B. 5006, Awka, Anambra State.', '1988-01-01', 1, '2021-01-22 10:28:53'),
(483, 6, 5, 'Government Technical College', 'Onitsha', '1988-01-01', 3, '2021-01-22 10:31:32'),
(484, 6, 5, 'Nigeria Science and Technical College', 'Nnewi, Anambra State', '2015-01-01', 1, '2021-01-22 10:32:27'),
(485, 6, 5, 'Government Technical College', 'Umuchu, Anambra State.', '2017-01-01', 1, '2021-01-22 10:34:13'),
(486, 6, 5, 'Government Technical College', 'Umueri, Anambra State.', '2017-01-01', 1, '2021-01-22 10:35:02'),
(487, 6, 5, 'Government Technical College', 'Umunze', '2017-01-01', 1, '2021-01-22 10:35:53'),
(488, 6, 5, 'St. John’s Science and Technical College,', 'Alor', '2017-01-01', 1, '2021-01-22 10:36:43'),
(489, 8, 5, 'Federal Science Technical College,', 'Tungbo, Bayelsa State.', '2002-01-01', 2, '2021-01-22 10:39:23'),
(490, 3, 5, 'Government Day Technical College', 'Bauchi', '2014-01-01', 1, '2021-01-22 10:40:15'),
(491, 3, 5, 'Government Day Technical College', 'Gar', '2014-01-01', 1, '2021-01-22 10:41:00'),
(492, 3, 5, 'Government Day Technical College', 'Azare', '2014-01-01', 1, '2021-01-22 10:41:58'),
(493, 3, 5, 'Government Day Technical College', 'Tafawa Balewa', '2014-01-01', 1, '2021-01-22 10:42:34'),
(494, 3, 5, 'Government Day Technical College', 'Jama’are', '2014-01-01', 1, '2021-01-22 10:43:11'),
(495, 3, 5, 'Government Day Technical College,', 'Gamawa', '2014-01-01', 1, '2021-01-22 10:43:54'),
(496, 3, 5, 'Government Day Technical College,', 'Kafin Madaki', '2014-01-01', 1, '2021-01-22 10:44:36'),
(497, 5, 5, 'Benue State University Technical College', 'Makurdi', '1989-01-01', 1, '2021-01-22 10:45:37'),
(498, 5, 5, 'St. Joseph Technical College,', 'Makurdi', '1989-01-01', 1, '2021-01-22 10:46:23'),
(499, 5, 5, 'St. Jude’s Technical College', 'Tse-Mker', '1988-01-01', 1, '2021-01-22 10:47:13'),
(500, 8, 5, 'Community Technical College,', 'Calabar', '1988-01-01', 1, '2021-01-22 10:49:58'),
(501, 8, 5, 'Government Technical College,', 'Ogoja', '1988-01-01', 1, '2021-01-22 10:50:34'),
(502, 6, 5, 'Agbor Technical College,', 'Agbor', '1989-01-01', 1, '2021-01-22 11:12:17'),
(503, 8, 5, 'Issele-Uku Technical College,', 'Issele-Uku', '1989-01-01', 1, '2021-01-22 11:13:09'),
(504, 8, 5, 'Ofagbe Technical College', 'Ofagbe', '1989-01-01', 1, '2021-01-22 11:13:50'),
(505, 8, 5, 'Ogor Technical College', 'Otogor Ughelli', '1989-01-01', 1, '2021-01-22 11:14:31'),
(506, 8, 5, 'Sapele Technical College', 'Sapele', '1989-01-01', 1, '2021-01-22 11:15:13'),
(507, 8, 5, 'Utagba-Ogbe Technical College', 'Kwale', '1989-01-01', 1, '2021-01-22 11:15:57'),
(508, 8, 5, 'Federal Science Technical College', 'Uromi, P.M.B. 4, Uromi', '1989-01-01', 1, '2021-01-22 11:17:14'),
(509, 8, 5, 'Government Science and Technical College,', 'Benin', '2019-01-01', 1, '2021-01-22 11:18:03'),
(510, 8, 5, 'Government Science and Technical College,', 'Irrua', '2019-01-01', 1, '2021-01-22 11:18:50'),
(511, 8, 5, 'Government Science and Technical College,', 'Irrua', '2019-01-01', 1, '2021-01-22 11:20:03'),
(512, 8, 5, 'Government Science and Technical College,', 'Irrua', '2019-01-01', 1, '2021-01-22 11:21:32'),
(513, 8, 5, 'Government Science and Technical College,', 'Igara', '1989-01-01', 1, '2021-01-22 11:22:03'),
(514, 8, 5, 'Government Science and Technical College,', 'Afuze', '2019-01-01', 1, '2021-01-22 11:23:13'),
(515, 8, 5, 'Government Science and Technical College,', 'Afuze', '2019-01-01', 1, '2021-01-22 11:25:52'),
(516, 8, 5, 'Government Technical College', 'Ado Ekiti', '2012-01-01', 1, '2021-01-22 11:26:26'),
(517, 7, 5, 'Government Technical College', 'Ikole-Ekiti', '2001-01-01', 1, '2021-01-22 11:28:16'),
(518, 7, 5, 'Government Technical College,', 'Igbara –Odo', '2010-01-01', 1, '2021-01-27 08:41:45'),
(519, 6, 5, 'Government Technical College,', 'Enugu', '1988-01-01', 1, '2021-01-27 08:42:43'),
(520, 6, 5, 'Government Technical College,', 'Nsukka', '1988-01-01', 1, '2021-01-27 08:43:20'),
(521, 4, 5, 'Government  Science and Technical College,', 'Gombe', '2019-01-01', 1, '2021-01-27 08:44:35'),
(522, 4, 5, 'Government  Science and Technical College,', 'Barunde', '2019-01-01', 1, '2021-01-27 08:45:05'),
(523, 4, 5, 'Government  Science and Technical College,', 'Kumo', '2019-01-01', 1, '2021-01-27 08:45:39'),
(524, 4, 5, 'Government  Science and Technical College,', 'Kwami', '2019-01-01', 1, '2021-01-27 08:46:26'),
(525, 4, 5, 'Ahiara Science & Technical College,', 'Ahiara', '1988-01-01', 1, '2021-01-27 08:47:11'),
(526, 6, 5, 'Government Technical College,', 'Owerri', '1989-01-01', 1, '2021-01-27 08:47:49'),
(527, 6, 5, 'Government Technical College,', 'Okohia, Osu', '1988-01-01', 1, '2021-01-27 08:48:39'),
(528, 6, 5, 'Government Technical College,', 'Okporo, Orlu', '2019-01-01', 1, '2021-01-27 08:49:22'),
(529, 4, 5, 'Government Technical College,', 'Hadejia', '2000-01-01', 1, '2021-01-27 08:50:12'),
(530, 4, 5, 'Government Science Technical College', 'Karkarna', '2014-01-01', 1, '2021-01-27 08:50:49'),
(531, 4, 5, 'Government Science Technical College', 'Birnin Kudu', '2014-01-01', 1, '2021-01-27 08:51:21'),
(532, 4, 5, 'Government Science Technical College', 'Ringim', '2014-01-01', 1, '2021-01-27 08:52:16'),
(533, 3, 5, 'Federal Science Technical College,', 'Kafanchan, P. M. B. 1017, Kafanchan', '1992-01-01', 1, '2021-01-27 08:52:51'),
(534, 3, 5, 'Government Technical College,', 'Kajuru', '1989-01-01', 1, '2021-01-27 08:53:58'),
(535, 3, 5, 'Government Technical College,', 'Malali', '1988-01-01', 1, '2021-01-27 08:54:28'),
(536, 3, 5, 'Tafawa Balewa Memorial Commercial College,', 'Samaru Kataf', '1988-01-01', 1, '2021-01-27 08:55:17'),
(537, 3, 5, 'Government Commercial College,', 'Bagauda', '1988-01-01', 1, '2021-01-27 08:56:19'),
(538, 3, 5, 'Government Technical College,', 'Kano', '1988-01-01', 1, '2021-01-27 08:57:06'),
(539, 3, 5, 'Government Technical College,', 'Ungogo', '1988-01-01', 1, '2021-01-27 08:57:40'),
(540, 3, 5, 'Government Technical College,', 'Wudil', '1988-01-01', 1, '2021-01-27 08:58:13'),
(541, 3, 5, 'Government Girl’s Commercial College,', 'Mai Adua', '1992-01-01', 1, '2021-01-27 08:59:00'),
(542, 3, 5, 'Government Girl’s Technical Commercial College,', 'Charanchi', '1992-01-01', 1, '2021-01-27 08:59:46'),
(543, 3, 5, 'Government Technical College,', 'Funtua', '1992-01-01', 1, '2021-01-27 09:00:12'),
(544, 3, 5, 'Government Technical College,', 'Ingawa', '1992-01-01', 1, '2021-01-27 09:00:59'),
(545, 3, 5, 'Government Technical College,', 'Mashi', '1992-01-01', 1, '2021-01-27 09:01:26'),
(546, 5, 5, 'Federal Science Technical College', 'Zuru, P.M.B. 1022, Zuru', '1996-01-01', 2, '2021-01-27 09:02:41'),
(547, 4, 5, 'Government Technical College,', 'Bunza', '1989-01-01', 1, '2021-01-27 09:03:51'),
(548, 4, 5, 'Government Technical College,', 'Zuru', '1989-01-01', 1, '2021-01-27 09:04:32'),
(549, 5, 5, 'Government Technical College,', 'Amadu-Asungblu', '1988-01-01', 1, '2021-01-27 09:05:45'),
(550, 5, 5, 'Government Technical College,', 'Erinle Ille', '1988-01-01', 1, '2021-01-27 09:07:02'),
(551, 5, 5, 'Government Technical College,', 'Esie Iludun', '1988-01-01', 1, '2021-01-27 09:08:02'),
(552, 5, 5, 'Government Technical College,', 'Pategi', '1988-01-01', 1, '2021-01-27 09:08:34'),
(553, 7, 5, 'Federal Science Technical College,', 'Yaba', '1988-01-01', 2, '2021-01-27 09:24:04'),
(554, 7, 5, 'Government Technical College,', 'Ado-Soba', '1988-01-01', 1, '2021-01-27 09:25:43'),
(555, 7, 5, 'Government Technical College,', 'Agidingbi, Ikeja', '1988-01-01', 1, '2021-01-27 09:27:14'),
(556, 7, 5, 'Government Technical College,', 'Ikorodu', '1988-01-01', 1, '2021-01-27 09:28:09'),
(557, 7, 5, 'Government Technical College,', 'Ikotun', '1988-01-01', 1, '2021-01-27 09:31:00'),
(558, 7, 5, 'Government Technical College,', 'Odomola, Epe', '1988-01-01', 1, '2021-01-27 09:31:37'),
(559, 5, 5, 'Government Technical College,', 'Asakio', '1997-01-01', 1, '2021-01-27 09:32:22'),
(560, 5, 5, 'Government Technical College,', 'Asakio', '1997-01-01', 1, '2021-01-27 09:33:56'),
(561, 5, 5, 'Government Technical College,', 'Asakio', '1997-01-01', 1, '2021-01-27 09:35:41'),
(562, 5, 5, 'Government Science and Technical College', 'Agwada', '2017-01-01', 1, '2021-01-27 09:36:56'),
(563, 5, 5, 'Government Science and Technical College,', 'Mada Station', '2017-01-01', 1, '2021-01-27 09:37:25'),
(564, 5, 5, 'APJ Science and Technical College', 'Masaka', '2018-01-01', 3, '2021-01-27 09:38:28'),
(565, 5, 5, 'Federal Science and Technical, College,', 'Shiroro', '2000-01-01', 2, '2021-01-27 09:53:20'),
(566, 5, 5, 'Government Technical College,', 'Eyagi Bida', '1988-01-01', 1, '2021-01-27 09:54:01'),
(567, 5, 5, 'Government Technical College,', 'Kontagora', '1988-01-01', 1, '2021-01-27 09:54:48'),
(568, 5, 5, 'Government Technical College,', 'Minna', '1988-01-01', 1, '2021-01-27 09:55:22'),
(569, 5, 5, 'Government Technical College,', 'New Bussa', '1988-01-01', 1, '2021-01-27 09:55:52'),
(570, 7, 5, 'Government Technical College,', 'Aiyetoro', '1989-01-01', 1, '2021-01-27 09:56:39'),
(571, 7, 5, 'Government Technical College,', 'Ajegunle', '1989-01-01', 1, '2021-01-27 09:57:30'),
(572, 7, 5, 'Government Technical College,', 'Idi-Aba (Abeokuta)', '1989-01-01', 1, '2021-01-27 09:58:34'),
(573, 7, 5, 'Government Technical College,', 'Igbesa', '1989-01-01', 1, '2021-01-27 09:59:24'),
(574, 7, 5, 'Government Technical College,', 'Ijegbu Igbo', '1989-01-01', 1, '2021-01-27 10:00:34'),
(575, 7, 5, 'Government Technical College,', 'Ijebu-Ode', '1989-01-01', 1, '2021-01-27 10:01:03'),
(576, 7, 5, 'Government Technical College,', 'Ilara Remo', '1989-01-01', 1, '2021-01-27 10:01:33'),
(577, 7, 5, 'Don Bosco Training Centres,', 'Ondo, Ondo State', '2001-01-01', 3, '2021-01-27 10:02:25'),
(578, 7, 5, 'Federal Science Technical College,', 'Ikare Akoko', '2000-01-01', 2, '2021-01-27 10:20:33'),
(579, 7, 5, 'Government Technical College,', 'Idanre', '1988-01-01', 1, '2021-01-27 10:21:08'),
(580, 7, 5, 'Government Technical College,', 'Oka Akoko', '1988-01-01', 1, '2021-01-27 10:21:46'),
(581, 7, 5, 'Government Technical College,', 'Owo', '1988-01-01', 1, '2021-01-27 10:22:29'),
(582, 7, 5, 'Federal Science Technical College,', 'Ilesa', '1988-01-01', 1, '2021-01-27 10:22:59'),
(583, 7, 5, 'Government  Technical College,', 'Osogbo', '1988-01-01', 1, '2021-01-27 10:23:28'),
(584, 5, 5, 'Government Technical College,', 'Bukuru', '1988-01-01', 1, '2021-01-27 10:24:10'),
(585, 8, 5, 'Government Technical College,', 'Ele-Ogu', '1989-01-01', 1, '2021-01-27 10:25:14'),
(586, 8, 5, 'Government Technical College,', 'Port Harcourt', '1989-01-01', 1, '2021-01-27 10:25:42'),
(587, 8, 5, 'Government Technical College', 'Tombia', '1989-01-01', 1, '2021-01-27 10:27:19'),
(588, 8, 5, 'Government Technical College', 'Ahoada', '1989-01-01', 1, '2021-01-27 10:28:27'),
(589, 8, 5, 'Government Craft Development Centre,', 'Port Harcourt', '1989-01-01', 1, '2021-01-27 10:29:13'),
(590, 8, 5, 'Ahmadu Bello Academy,', 'Farfaru', '1989-01-01', 1, '2021-01-27 10:30:08'),
(591, 3, 5, 'Government Girl’s Secondary School,', 'Tambuwal', '1989-01-01', 1, '2021-01-27 10:30:52'),
(592, 3, 5, 'Government Technical College,', 'Bafarawa', '1989-01-01', 1, '2021-01-27 10:31:48'),
(593, 3, 5, 'Government Technical College,', 'Binji', '1989-01-01', 1, '2021-01-27 10:32:45'),
(594, 3, 5, 'Government Technical College,', 'Farfaru', '1989-01-01', 1, '2021-01-27 10:33:35'),
(595, 4, 5, 'Federal Science Technical College,', 'Jalingo,  P.M.B. 1022, Jalingo, Taraba State', '1992-01-01', 2, '2021-01-27 10:34:22'),
(596, 4, 5, 'Government Science and Technical College,', 'Geidam', '1990-01-01', 1, '2021-01-27 10:35:39'),
(597, 4, 5, 'Government Technical College,', 'Kaura Namoda', '1989-01-01', 1, '2021-01-27 10:36:28'),
(598, 5, 5, 'Federal Science and Technical College,', 'Orozo, Abuja', '1992-01-01', 2, '2021-01-27 10:37:02'),
(599, 5, 5, 'Government  Science and Technical College,', 'Garki', '1992-01-01', 2, '2021-01-27 10:37:33'),
(600, 3, 7, 'Adhama Innovation Enterprise Institute,', '171 Mission Road,Bompai, Kano', '2018-01-01', 3, '2021-01-27 10:39:05'),
(601, 5, 7, 'Agency for Mass Education(AME) Training Centres,', 'OAU Quarters, Asokoro District, P.M.B. 197, Garki Abuja. 09 3147067', '2010-01-01', 2, '2021-01-27 10:39:47'),
(602, 5, 7, 'Agency for Mass Education (AMF) Technology', 'Centre, Asokoro, Garki, FCT. VTC Kwali, Abuja, Campus', '2010-01-01', 2, '2021-01-28 12:08:57'),
(603, 8, 7, 'Ambassador College of Management. And Technology,', '80c Igwuruta Road(Tank) Rumuokwurushi, Port-Harcourt', '2009-01-01', 3, '2021-01-28 12:09:57'),
(604, 5, 7, 'Armed Forces Electricaland Mechanical Engineering Mechatronics School', 'Mogadishu Barracks Asokoro, Abuja', '2016-01-01', 2, '2021-01-28 12:10:48'),
(605, 3, 7, 'Best Global Business and Financial School', 'Kachia Road, Kaduna', '2013-01-01', 3, '2021-01-28 12:11:46'),
(606, 8, 7, 'Bonny Vocational Centre,', 'Bonny Island, Rivers State', '2013-01-01', 3, '2021-01-28 12:12:18'),
(607, 6, 7, 'Buckingham Academy of Management. And Technology,', 'Buckingham Estate old Awka Road near Iyienu Mission Hospital Ogidi Anambra State', '2009-01-01', 3, '2021-01-28 12:13:10'),
(608, 6, 7, 'Calvary Foundation Institute of Technology, (CAFITECH),', 'Enugu, Enugu State', '2013-01-01', 3, '2021-01-28 12:14:00'),
(609, 8, 7, 'Central Institute of Business and Technology,', 'Kilometer 4 Benin-Abraka Road, Egba, Benin City', '2016-01-01', 3, '2021-01-28 12:14:49'),
(610, 3, 7, 'Cherish Enterprise Institute,', 'Batsari, Katsina State', '2013-01-01', 3, '2021-01-28 12:15:19'),
(611, 8, 7, 'Complete Computers and Technology Institute,', 'Benin City, Edo State', '2012-01-01', 3, '2021-01-28 12:16:02'),
(612, 7, 7, 'Dalewares Institute of Technology,', 'Lagos 33 Imani Dauda St. Off Eric Moore Road, Surulere, Lagos State.', '2008-01-01', 3, '2021-01-28 12:16:39'),
(613, 5, 7, 'Damson Institute of Management and Technology,', 'No 5 Damson Street, Off Etsu Jetta Street,Phase 1, Jikwoyi,Along Nyanya Karshi Road,FCT Abuja', '2018-01-01', 3, '2021-01-28 12:17:23'),
(614, 7, 7, 'DOF Institute of Catering and Hospitality,', 'Dalian Plaza 43, Oritshe Street off Obafemi Awolowo zWay Box 800, Ikeja.', '2009-01-01', 3, '2021-01-28 12:18:24'),
(615, 6, 7, 'Environmental Sustainability Thinking and Action Centre (ESTAC), Institute of Construction & Engineering', 'Enugu. 1, Mike Toney Avenue, Phase 6 Trans Ekulu, Enugu State.', '2008-01-01', 3, '2021-01-28 12:19:29'),
(616, 3, 7, 'Entrepreneurship Vocational Technology ltd,', 'Matan Fada Kano, Kano State.', '2010-01-01', 3, '2021-01-28 12:20:02'),
(617, 3, 7, 'Exhale Salon and Beauty Institute', 'No. 2A Kwato Road/Ibrahim Zaki Road, Unguwan Rimi, Kaduna.', '2010-01-01', 3, '2021-01-28 12:21:25'),
(618, 3, 7, 'FCFM-Afaka Entrepreneurship Centre,', 'Kaduna, Kaduna State', '2010-01-01', 2, '2021-01-28 12:22:17'),
(619, 7, 7, 'First Mark Innovation School of Technology,', 'Ado-Ekiti', '2010-01-01', 3, '2021-01-28 12:23:27'),
(620, 5, 7, 'Flyingdove Institute of Information Technology,', 'Abuja, FCT', '2010-01-01', 3, '2021-01-28 12:24:49'),
(621, 7, 7, 'Gateway Industrial Petrogas Institute,', 'Oni, Ogun State', '2013-01-01', 1, '2021-01-28 12:25:39'),
(622, 8, 7, 'Global Maritime Academy,', 'Ogoni-Olomu,Delta State', '2012-01-01', 3, '2021-01-28 12:26:32'),
(623, 3, 7, 'Hajia Sa’adatu and Umul-khairi Foundation,', 'Kano', '2015-01-01', 3, '2021-01-28 12:27:20'),
(624, 3, 7, 'Hanzy Beauty International Institute Ltd,', 'Kaduna', '2010-01-01', 3, '2021-01-28 12:27:55'),
(625, 7, 7, 'Highland College of Technology & Further Studies,', 'Ibadan,  C/o Segun Fatoki, 98 Iwo Road, Ibadan, Oyo State.', '2008-01-01', 3, '2021-01-28 12:28:54'),
(626, 8, 7, 'Homik Oil and Gas Facility Engineering School,', 'Homik Rehoboth Court by Jesus Evang Power Mission,NTA/ Choba Road Ozuoba , Port Harcourt, Rivers State', '2018-01-01', 3, '2021-01-28 12:29:43'),
(627, 7, 7, 'Hotel & Tourism Business School,', 'Ikeja, Lagos State', '2012-01-01', 3, '2021-01-28 12:31:15'),
(628, 8, 7, 'IMFI-ICT Academy,', '54, Nsikak Eduok Avenue,  P.O.Box 1723, Uyo, Akwa Ibom State.', '2008-01-01', 3, '2021-01-28 12:32:12'),
(629, 5, 7, 'Industrial Training Fund(ITF) Models Skills Training Centre,', 'Adetokunbo Ademola Crescent, Maitama, Abuja', '2016-01-01', 2, '2021-01-28 12:33:21'),
(630, 3, 7, 'Innovation Institute of Technology,', 'No. 5. Yakubu Gowon Way, Kaduna', '2009-01-01', 3, '2021-01-28 12:34:02'),
(631, 6, 7, 'Institute of Administration and Construction Engineering,', 'Awgu, Enugu State', '2013-01-01', 3, '2021-01-28 12:34:39'),
(632, 6, 7, 'Institute of Information and Computer Technology,', 'Awgu, Enugu State', '2013-01-01', 3, '2021-01-28 12:35:17'),
(633, 6, 7, 'International Chaplaincy Corps Network (ICCN) Institute of Security Technology and Management,', 'Orlu, Imo State', '2013-01-01', 3, '2021-01-28 12:36:20'),
(634, 5, 7, 'International Vocational Technical Enteprenuership Centre (IVTECH)', 'Ajase-Ipo, Offa Road, PMB 1005, Kwara State', '2013-01-01', 1, '2021-01-28 12:37:32'),
(635, 8, 7, 'Izisco Obos Institute of Marine Studies & Technology,', 'Warri, Delta State', '2013-01-01', 3, '2021-01-28 12:38:23'),
(636, 7, 7, 'JKN Training Centre, Oshodi,', 'Lagos', '2009-01-01', 3, '2021-01-28 12:39:49'),
(637, 4, 7, 'Kazaure Innovation Institute', 'c/o  Hussaini  Adamu  Federal  Polytechnic  Kazaure,Jigawa State', '2010-01-01', 2, '2021-01-28 12:40:33'),
(638, 6, 7, 'Kunoch Education and training College', 'Owerri, Beside Diamond Bank, Item Street, Ikenegbui, Owerri, Imo State.', '2008-01-01', 3, '2021-01-28 12:41:30'),
(639, 7, 7, 'Lagos City Computer College,', '7 Bashiru Oweh Street, P.M.B. 21200, Ikeja, Lagos State.', '2008-01-01', 3, '2021-02-01 08:34:02'),
(640, 8, 7, 'Landmark Academy of Hospitality Management', 'Port Harcourt', '2013-01-01', 3, '2021-02-01 08:34:53'),
(641, 8, 7, 'Linet Paul Innovative Institute', 'No. 1 Sunmail Drive, off Isaac Boro Expressway, Etegwe-Yenagoa, Bayelsa State.', '2010-01-01', 3, '2021-02-01 08:35:36'),
(642, 5, 7, 'Lobi School of Management and Technology', 'Makurdi', '2013-01-01', 3, '2021-02-01 08:36:23'),
(643, 6, 7, 'Mario Institute of Hospitality Management and Entreprenuership Education', 'Uhunowerre,Igbo –Eze South LGA Nsukka, Enugu State', '2017-01-01', 3, '2021-02-01 08:38:57'),
(644, 5, 7, 'Minna Institute of Technology and Innovation,', 'Kpakungu Road,Minna, Niger State', '2016-01-01', 1, '2021-02-01 08:57:43'),
(645, 5, 7, 'NAOWA Institute of Management and Technology,', 'Asokoro, Abuja', '2013-01-01', 2, '2021-02-01 08:59:04'),
(646, 5, 7, 'National Centre for Women Development (NCWD),', 'Tafawa Balewa Street, Central Business District, Abuja', '2010-01-01', 2, '2021-02-01 09:00:06'),
(647, 5, 7, 'Nigeria–Korea Friendship Institute of Vocational and Advanced Technology,', 'Lokoja, Kogi State', '2018-01-01', 1, '2021-02-01 09:00:56'),
(648, 7, 7, 'NIIT Education and Training Centre.', 'Or NIIT/IDM Building, 9 Oba Akran Avenue, Ikeja Lagos', '2008-01-01', 3, '2021-02-01 09:01:51'),
(649, 7, 7, 'NIIT', 'Surulere Centre,  Lagos', '2008-01-01', 3, '2021-02-01 09:02:30'),
(650, 7, 7, 'NIIT', 'Festac Centre,  Lagos', '2008-01-01', 3, '2021-02-01 09:03:26'),
(651, 7, 7, 'NIIT', 'Ajah Centre, Km 11, Lekki-Epe Express Way, First Gate –Ikota,(By Great Brands).', '2008-01-01', 3, '2021-02-01 09:06:41'),
(652, 8, 7, 'NIIT', 'Benin Centre, 11, Adesuwa Grammar School Road, GRA, Benin City, Edo State.', '2008-01-01', 3, '2021-02-01 09:08:53'),
(653, 5, 7, 'NIIT', 'Garki Centre, 4, Dambata Close, Off Yola Street, Area 7, Garki, Abuja.', '2008-01-01', 3, '2021-02-01 09:09:59'),
(654, 7, 7, 'NIIT', 'Gbagada Centre,  141C, GbagadaOshodi Express Road ( Opposite Hotel New Castel), Lagos State.', '2008-01-01', 3, '2021-02-01 09:10:42'),
(655, 7, 7, 'NIIT', 'Ikorodu Centre, 14, Olorunojowon Street, (Besides Zenith Bank), Lagos State.', '2008-01-01', 3, '2021-02-01 09:11:19'),
(656, 5, 7, 'NIIT', 'Offa Centre, 2ndFloor, Olatinwo House, Olofa Way, Offa, Kwara State.', '2008-01-01', 3, '2021-02-01 09:11:55'),
(657, 7, 7, 'NIIT', 'Ota Centre, Tantolorun House, KM 1, Idi-iroko Road, Otta Round-About, Otta, Ogun State.', '2008-01-01', 3, '2021-02-01 12:09:45'),
(658, 8, 7, 'NIIT', 'Uyo Centre, 30, Udosen Uko Street, Off Oron Road, Uyo, Akwa Ibom State.', '2008-01-01', 3, '2021-02-01 12:10:10'),
(659, 8, 7, 'NIIT', 'Warri Centre, 43, Airport Road, Effurun, Warri, Delta State.', '2008-01-01', 3, '2021-02-01 12:10:50'),
(660, 5, 7, 'Nspire Educational Services', 'Oyo House, Central Business District, Abuja FCT', '2014-01-01', 3, '2021-02-01 12:11:40'),
(661, 7, 7, 'Offer Centre Institute of Agriculture', 'Olupona, Iwo, Osun State', '2015-01-01', 3, '2021-02-01 12:12:21'),
(662, 8, 7, 'Oseni Elamah ICT Institute', 'No. 39 Polytechnic Road Auchi.', '2009-01-01', 3, '2021-02-01 12:13:08'),
(663, 7, 7, 'Peter Akinola Youth Centre for Industrial Training,', 'Abeokuta, Ogun State', '2015-01-01', 3, '2021-02-01 12:13:46'),
(664, 3, 7, 'Peugeot Automobile Nigeria (PAN) Ltd.', 'PAN Training Centre,  Plot1144, Mallam Kulbi Road,Kakuri Industrial Estate,PMB 2266 Kaduna', '2010-01-01', 3, '2021-02-01 12:14:30'),
(665, 7, 7, 'Prime Innovation Institute of Technology', 'Ajah, Lagos', '2012-01-01', 3, '2021-02-01 12:15:23'),
(666, 6, 7, 'Rocana Institute of Technology', 'Enugu', '2012-01-01', 3, '2021-02-01 12:16:08'),
(667, 8, 7, 'Rolof Computer Academy', 'Plot 110, Apala Street, Off OkumagbaAvenue,Warri,Delta State', '2017-01-01', 3, '2021-02-01 12:16:56'),
(668, 7, 7, 'Southern Nigerian Institute of Innovation Technology,', 'Ifewara, Ile Ife, Osun State', '2012-01-01', 3, '2021-02-01 12:17:37'),
(669, 7, 7, 'Human Resources Development Centre', 'St. Winifred Innovative Institute,   Sango Dina Village off Oloni-OlundeAyegun Road, P.O. Box 16744, Ibadan, Oyo State.', '2008-01-01', 3, '2021-02-01 12:18:39'),
(670, 3, 7, 'Tashiba  Institute of Information Technology', 'Gyallesu, Zaria, Kaduna State', '2017-01-01', 3, '2021-02-01 12:19:37'),
(671, 8, 7, 'Topearl Catering Institute', 'Port Harcourt, Rivers State', '2013-01-01', 3, '2021-02-01 12:20:14'),
(672, 6, 7, 'UA College of Science and Technology', 'Osuofia, Anambra State', '2015-01-01', 3, '2021-02-01 12:20:47'),
(673, 6, 7, 'Umuebe Farm College,', 'Abakaliki,  Ebonyi State', '2010-01-01', 3, '2021-02-01 12:21:25'),
(674, 8, 7, 'Unival Institute of Technology', 'Benin City', '2015-01-01', 3, '2021-02-01 12:22:49'),
(675, 8, 7, 'UTAGBA-UNO Vocational Enterprise Institute,', 'Isumpe Road, Utagba-Uno, Via Kwale, Ndokwa West LGA, Delta State', '2009-01-01', 3, '2021-02-01 12:23:31'),
(676, 8, 7, 'Yenagoa Enterprise School,', 'Yenagoa', '2015-01-01', 3, '2021-02-01 12:24:20'),
(677, 3, 7, 'Young Men Christian Association (YMCA) Vocational Training', 'Centre, Kaduna, Kaduna State', '2012-01-01', 3, '2021-02-01 12:24:59');

-- --------------------------------------------------------

--
-- Table structure for table `tblinstitution_details`
--

CREATE TABLE `tblinstitution_details` (
  `id` int(11) NOT NULL,
  `instituionsid` int(11) NOT NULL,
  `address` text NOT NULL,
  `yearpub` varchar(20) NOT NULL,
  `ownershipid` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbllga`
--

CREATE TABLE `tbllga` (
  `id` int(11) NOT NULL,
  `stateID` int(11) NOT NULL,
  `lga` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbllga`
--

INSERT INTO `tbllga` (`id`, `stateID`, `lga`) VALUES
(1, 8, 'Abadam'),
(2, 38, 'Abaji'),
(3, 3, 'Abak'),
(4, 12, 'Abakaliki'),
(5, 1, 'Aba North'),
(6, 1, 'Aba South'),
(7, 26, 'Abeokuta North'),
(8, 26, 'Abeokuta South'),
(9, 9, 'Abi'),
(10, 16, 'Aboh Mbaise'),
(11, 32, 'Abua/Odual'),
(12, 22, 'Adavi'),
(13, 13, 'Ado Ekiti'),
(14, 26, 'Ado-Odo/Ota'),
(15, 29, 'Afijio'),
(16, 12, 'Afikpo North'),
(17, 12, 'Afikpo South?(Edda)'),
(18, 25, 'Agaie'),
(19, 7, 'Agatu'),
(20, 25, 'Agwara'),
(21, 24, 'Agege'),
(22, 4, 'Aguata'),
(23, 16, 'Ahiazu Mbaise'),
(24, 32, 'Ahoada East'),
(25, 32, 'Ahoada West'),
(26, 22, 'Ajaokuta'),
(27, 24, 'Ajeromi-Ifelodun'),
(28, 19, 'Ajingi'),
(29, 9, 'Akamkpa'),
(30, 29, 'Akinyele'),
(31, 15, 'Akko'),
(32, 11, 'Akoko-Edo'),
(33, 27, 'Akoko North-East'),
(34, 27, 'Akoko North-West'),
(35, 27, 'Akoko South-West'),
(36, 27, 'Akoko South-East'),
(37, 9, 'Akpabuyo'),
(38, 32, 'Akuku-Toru'),
(39, 27, 'Akure North'),
(40, 27, 'Akure South'),
(41, 30, 'Akwanga'),
(42, 19, 'Albasu'),
(43, 21, 'Aleiro'),
(44, 24, 'Alimosho'),
(45, 5, 'Alkaleri'),
(46, 24, 'Amuwo-Odofin'),
(47, 4, 'Anambra East'),
(48, 4, 'Anambra West'),
(49, 4, 'Anaocha'),
(50, 32, 'Andoni'),
(51, 14, 'Aninri'),
(52, 10, 'Aniocha North'),
(54, 36, 'Anka'),
(55, 22, 'Ankpa'),
(56, 7, 'Apa'),
(57, 24, 'Apapa'),
(58, 7, 'Ado'),
(59, 34, 'Ardo Kola'),
(60, 21, 'Arewa Dandi'),
(61, 21, 'Argungu'),
(62, 1, 'Arochukwu'),
(63, 23, 'Asa'),
(64, 32, 'Asari-Toru'),
(65, 8, 'Askira/Uba'),
(66, 28, 'Atakunmosa East'),
(67, 28, 'Atakunmosa West'),
(68, 29, 'Atiba'),
(69, 29, 'Atisbo'),
(70, 21, 'Augie'),
(71, 17, 'Auyo'),
(72, 30, 'Awe'),
(73, 14, 'Awgu'),
(74, 4, 'Awka North'),
(75, 4, 'Awka South'),
(76, 4, 'Ayamelum'),
(77, 28, 'Aiyedaade'),
(78, 28, 'Aiyedire'),
(79, 17, 'Babura'),
(80, 24, 'Badagry'),
(81, 21, 'Bagudo'),
(82, 19, 'Bagwai'),
(83, 9, 'Bakassi'),
(84, 31, 'Bokkos'),
(85, 20, 'Bakori'),
(86, 36, 'Bakura'),
(87, 15, 'Balanga'),
(88, 34, 'Bali'),
(89, 8, 'Bama'),
(90, 35, 'Bade'),
(91, 31, 'Barkin Ladi'),
(92, 23, 'Baruten'),
(93, 22, 'Bassa'),
(94, 31, 'Bassa'),
(95, 20, 'Batagarawa'),
(96, 20, 'Batsari'),
(97, 5, 'Bauchi'),
(98, 20, 'Baure'),
(99, 8, 'Bayo'),
(100, 19, 'Bebeji'),
(101, 9, 'Bekwarra'),
(102, 1, 'Bende'),
(103, 9, 'Biase'),
(104, 19, 'Bichi'),
(105, 25, 'Bida'),
(106, 15, 'Billiri'),
(107, 20, 'Bindawa'),
(108, 33, 'Binji'),
(109, 17, 'Biriniwa'),
(110, 18, 'Birnin Gwari'),
(111, 21, 'Birnin Kebbi'),
(112, 17, 'Birnin Kudu'),
(113, 36, 'Birnin Magaji/Kiyaw'),
(114, 8, 'Biu'),
(115, 33, 'Bodinga'),
(116, 5, 'Bogoro'),
(117, 9, 'Boki'),
(118, 28, 'Boluwaduro'),
(119, 10, 'Bomadi'),
(120, 32, 'Bonny'),
(121, 25, 'Borgu'),
(122, 28, 'Boripe'),
(123, 35, 'Bursari'),
(124, 25, 'Bosso'),
(125, 6, 'Brass'),
(126, 17, 'Buji'),
(127, 36, 'Bukkuyum'),
(128, 7, 'Buruku'),
(129, 36, 'Bungudu'),
(130, 19, 'Bunkure'),
(131, 21, 'Bunza'),
(132, 10, 'Burutu'),
(133, 38, 'Bwari'),
(134, 9, 'Calabar Municipal'),
(135, 9, 'Calabar South'),
(136, 25, 'Chanchaga'),
(137, 20, 'Charanchi'),
(138, 8, 'Chibok'),
(139, 18, 'Chikun'),
(140, 19, 'Dala'),
(141, 35, 'Damaturu'),
(142, 5, 'Damban'),
(143, 19, 'Dambatta'),
(144, 8, 'Damboa'),
(145, 21, 'Dandi'),
(146, 20, 'Dandume'),
(147, 33, 'Dange Shuni'),
(148, 20, 'Danja'),
(149, 20, 'Dan Musa'),
(150, 5, 'Darazo'),
(151, 5, 'Dass'),
(152, 20, 'Daura'),
(153, 19, 'Dawakin Kudu'),
(154, 19, 'Dawakin Tofa'),
(155, 32, 'Degema'),
(156, 22, 'Dekina'),
(157, 2, 'Demsa'),
(158, 8, 'Dikwa'),
(159, 19, 'Doguwa'),
(160, 30, 'Doma'),
(161, 34, 'Donga'),
(162, 15, 'Dukku'),
(163, 4, 'Dunukofia'),
(164, 17, 'Dutse'),
(165, 20, 'Dutsi'),
(166, 20, 'Dutsin Ma'),
(167, 3, 'Eastern Obolo'),
(168, 12, 'Ebonyi'),
(169, 25, 'Edati'),
(170, 28, 'Ede North'),
(171, 28, 'Ede South'),
(172, 23, 'Edu'),
(173, 28, 'Ife Central'),
(174, 28, 'Ife East'),
(175, 28, 'Ife North'),
(176, 28, 'Ife South'),
(177, 13, 'Efon'),
(178, 26, 'Egbado North'),
(179, 26, 'Egbado South'),
(180, 29, 'Egbeda'),
(181, 28, 'Egbedore'),
(182, 11, 'Egor'),
(183, 16, 'Ehime Mbano'),
(184, 28, 'Ejigbo'),
(185, 6, 'Ekeremor'),
(186, 3, 'Eket'),
(187, 23, 'Ekiti'),
(188, 13, 'Ekiti East'),
(189, 13, 'Ekiti South-West'),
(190, 13, 'Ekiti West'),
(191, 4, 'Ekwusigo'),
(192, 32, 'Eleme'),
(193, 32, 'Emuoha'),
(194, 13, 'Emure'),
(195, 14, 'Enugu East'),
(196, 14, 'Enugu North'),
(197, 14, 'Enugu South'),
(198, 24, 'Epe'),
(199, 11, 'Esan Central'),
(200, 11, 'Esan North-East'),
(201, 11, 'Esan South-East'),
(202, 11, 'Esan West'),
(203, 27, 'Ese Odo'),
(204, 3, 'Esit Eket'),
(205, 3, 'Essien Udim'),
(206, 32, 'Etche'),
(207, 10, 'Ethiope East'),
(208, 10, 'Ethiope West'),
(209, 3, 'Etim Ekpo'),
(210, 3, 'Etinan'),
(211, 24, 'Eti Osa'),
(212, 11, 'Etsako Central'),
(213, 11, 'Etsako East'),
(214, 11, 'Etsako West'),
(215, 9, 'Etung'),
(216, 26, 'Ewekoro'),
(217, 14, 'Ezeagu'),
(218, 16, 'Ezinihitte'),
(219, 12, 'Ezza North'),
(220, 12, 'Ezza South'),
(221, 19, 'Fagge'),
(222, 21, 'Fakai'),
(223, 20, 'Faskari'),
(224, 35, 'Fika'),
(225, 2, 'Fufure'),
(226, 15, 'Funakaye'),
(227, 35, 'Fune'),
(228, 20, 'Funtua'),
(229, 19, 'Gabasawa'),
(230, 33, 'Gada'),
(231, 17, 'Gagarawa'),
(232, 5, 'Gamawa'),
(233, 5, 'Ganjuwa'),
(234, 2, 'Ganye'),
(235, 17, 'Garki'),
(236, 19, 'Garko'),
(237, 19, 'Garun Mallam'),
(238, 34, 'Gashaka'),
(239, 34, 'Gassol'),
(240, 19, 'Gaya'),
(241, 2, 'Gayuk'),
(242, 19, 'Gezawa'),
(243, 25, 'Gbako'),
(244, 7, 'Gboko'),
(245, 13, 'Gbonyin'),
(246, 35, 'Geidam'),
(247, 5, 'Giade'),
(248, 18, 'Giwa'),
(249, 32, 'Gokana'),
(250, 15, 'Gombe'),
(251, 2, 'Gombi'),
(252, 33, 'Goronyo'),
(253, 2, 'Grie'),
(254, 8, 'Gubio'),
(255, 33, 'Gudu'),
(256, 35, 'Gujba'),
(257, 35, 'Gulani'),
(258, 7, 'Guma'),
(259, 17, 'Gumel'),
(260, 36, 'Gummi'),
(261, 25, 'Gurara'),
(262, 17, 'Guri'),
(263, 36, 'Gusau'),
(264, 8, 'Guzamala'),
(265, 33, 'Gwadabawa'),
(266, 38, 'Gwagwalada'),
(267, 19, 'Gwale'),
(268, 21, 'Gwandu'),
(269, 17, 'Gwaram'),
(270, 19, 'Gwarzo'),
(271, 7, 'Gwer East'),
(272, 7, 'Gwer West'),
(273, 17, 'Gwiwa'),
(274, 8, 'Gwoza'),
(275, 17, 'Hadejia'),
(276, 8, 'Hawul'),
(277, 2, 'Hong'),
(278, 29, 'Ibadan North'),
(279, 29, 'Ibadan North-East'),
(280, 29, 'Ibadan North-West'),
(281, 29, 'Ibadan South-East'),
(282, 29, 'Ibadan South-West'),
(283, 22, 'Ibaji'),
(284, 29, 'Ibarapa Central'),
(285, 29, 'Ibarapa East'),
(286, 29, 'Ibarapa North'),
(287, 24, 'Ibeju-Lekki'),
(288, 3, 'Ibeno'),
(289, 3, 'Ibesikpo Asutan'),
(290, 34, 'Ibi'),
(291, 3, 'Ibiono-Ibom'),
(292, 22, 'Idah'),
(293, 27, 'Idanre'),
(294, 16, 'Ideato North'),
(295, 16, 'Ideato South'),
(296, 4, 'Idemili North'),
(297, 4, 'Idemili South'),
(298, 29, 'Ido'),
(299, 13, 'Ido Osi'),
(300, 24, 'Ifako-Ijaiye'),
(301, 28, 'Ifedayo'),
(302, 27, 'Ifedore'),
(303, 23, 'Ifelodun'),
(304, 28, 'Ifelodun'),
(305, 26, 'Ifo'),
(306, 18, 'Igabi'),
(307, 22, 'Igalamela Odolu'),
(308, 14, 'Igbo Etiti'),
(309, 14, 'Igbo Eze North'),
(310, 14, 'Igbo Eze South'),
(311, 11, 'Igueben'),
(312, 4, 'Ihiala'),
(313, 16, 'Ihitte/Uboma'),
(314, 27, 'Ilaje'),
(315, 26, 'Ijebu East'),
(316, 26, 'Ijebu North'),
(317, 26, 'Ijebu North East'),
(318, 26, 'Ijebu Ode'),
(319, 13, 'Ijero'),
(320, 22, 'Ijumu'),
(321, 3, 'Ika'),
(322, 10, 'Ika North East'),
(323, 18, 'Ikara'),
(324, 10, 'Ika South'),
(325, 16, 'Ikeduru'),
(326, 24, 'Ikeja'),
(327, 26, 'Ikenne'),
(328, 13, 'Ikere'),
(329, 13, 'Ikole'),
(330, 9, 'Ikom'),
(331, 3, 'Ikono'),
(332, 24, 'Ikorodu'),
(333, 3, 'Ikot Abasi'),
(334, 3, 'Ikot Ekpene'),
(335, 11, 'Ikpoba Okha'),
(336, 32, 'Ikwerre'),
(337, 12, 'Ikwo'),
(338, 1, 'Ikwuano'),
(339, 28, 'Ila'),
(340, 13, 'Ilejemeje'),
(341, 27, 'Ile Oluji/Okeigbo'),
(342, 28, 'Ilesa East'),
(343, 28, 'Ilesa West'),
(344, 33, 'Illela'),
(345, 23, 'Ilorin East'),
(346, 23, 'Ilorin South'),
(347, 23, 'Ilorin West'),
(348, 26, 'Imeko Afon'),
(349, 20, 'Ingawa'),
(350, 3, 'Ini'),
(351, 26, 'Ipokia'),
(352, 27, 'Irele'),
(353, 29, 'Irepo'),
(354, 23, 'Irepodun'),
(355, 28, 'Irepodun'),
(356, 13, 'Irepodun/Ifelodun'),
(357, 28, 'Irewole'),
(358, 33, 'Isa'),
(359, 13, 'Ise/Orun'),
(360, 29, 'Iseyin'),
(361, 12, 'Ishielu'),
(362, 16, 'Isiala Mbano'),
(363, 1, 'Isiala Ngwa North'),
(364, 1, 'Isiala Ngwa South'),
(365, 23, 'Isin'),
(366, 14, 'Isi Uzo'),
(367, 28, 'Isokan'),
(368, 10, 'Isoko North'),
(369, 10, 'Isoko South'),
(370, 16, 'Isu'),
(371, 1, 'Isuikwuato'),
(372, 5, 'Itas/Gadau'),
(373, 29, 'Itesiwaju'),
(374, 3, 'Itu'),
(375, 12, 'Ivo'),
(376, 29, 'Iwajowa'),
(377, 30, 'Iwo'),
(378, 12, 'Izzi'),
(379, 18, 'Jaba'),
(380, 2, 'Jada'),
(381, 17, 'Jahun'),
(382, 35, 'Jakusko'),
(383, 34, 'Jalingo'),
(384, 5, 'Jama are'),
(385, 21, 'Jega'),
(386, 18, 'Jema a'),
(387, 8, 'Jere'),
(388, 20, 'Jibia'),
(389, 31, 'Jos East'),
(390, 31, 'Jos North'),
(391, 31, 'Jos South'),
(392, 22, 'Kabba/Bunu'),
(393, 19, 'Kabo'),
(394, 18, 'Kachia'),
(395, 18, 'Kaduna North'),
(396, 18, 'Kaduna South'),
(397, 17, 'Kafin Hausa'),
(398, 20, 'Kafur'),
(399, 8, 'Kaga'),
(400, 18, 'Kagarko'),
(401, 23, 'Kaiama'),
(402, 20, 'Kaita'),
(403, 29, 'Kajola'),
(404, 18, 'Kajuru'),
(405, 8, 'Kala/Balge'),
(406, 21, 'Kalgo'),
(407, 15, 'Kaltungo'),
(408, 31, 'Kanam'),
(409, 20, 'Kankara'),
(410, 31, 'Kanke'),
(411, 20, 'Kankia'),
(412, 19, 'Kano Municipal'),
(413, 35, 'Karasuwa'),
(414, 19, 'Karaye'),
(415, 34, 'Karim Lamido'),
(416, 30, 'Karu'),
(417, 5, 'Katagum'),
(418, 25, 'Katcha'),
(419, 20, 'Katsina'),
(420, 7, 'Katsina-Ala'),
(421, 18, 'Kaura'),
(422, 36, 'Kaura Namoda'),
(423, 18, 'Kauru'),
(424, 17, 'Kazaure'),
(425, 30, 'Keana'),
(426, 33, 'Kebbe'),
(427, 30, 'Keffi'),
(428, 32, 'Khana'),
(429, 19, 'Kibiya'),
(430, 5, 'Kirfi'),
(431, 17, 'Kiri Kasama'),
(432, 19, 'Kiru'),
(433, 17, 'Kiyawa'),
(434, 22, 'Kogi'),
(435, 21, 'Koko/Besse'),
(436, 30, 'Kokona'),
(437, 6, 'Kolokuma/Opokuma'),
(438, 8, 'Konduga'),
(439, 7, 'Konshisha'),
(440, 25, 'Kontagora'),
(441, 24, 'Kosofe'),
(442, 17, 'Kaugama'),
(443, 18, 'Kubau'),
(444, 18, 'Kudan'),
(445, 38, 'Kuje'),
(446, 8, 'Kukawa'),
(447, 19, 'Kumbotso'),
(448, 34, 'Kumi'),
(449, 19, 'Kunchi'),
(450, 19, 'Kura'),
(451, 20, 'Kurfi'),
(452, 20, 'Kusada'),
(453, 38, 'Kwali'),
(454, 7, 'Kwande'),
(455, 15, 'Kwami'),
(456, 33, 'Kware'),
(457, 8, 'Kwaya Kusar'),
(458, 30, 'Lafia'),
(459, 29, 'Lagelu'),
(460, 24, 'Lagos Island'),
(461, 24, 'Lagos Mainland'),
(462, 31, 'Langtang South'),
(463, 31, 'Langtang North'),
(464, 25, 'Lapai'),
(465, 2, 'Lamurde'),
(466, 34, 'Lau'),
(467, 25, 'Lavun'),
(468, 18, 'Lere'),
(469, 7, 'Logo'),
(470, 22, 'Lokoja'),
(471, 35, 'Machina'),
(472, 2, 'Madagali'),
(473, 19, 'Madobi'),
(474, 8, 'Mafa'),
(475, 25, 'Magama'),
(476, 8, 'Magumeri'),
(477, 20, 'Mai Adua'),
(478, 8, 'Maiduguri'),
(479, 17, 'Maigatari'),
(480, 2, 'Maiha'),
(481, 21, 'Maiyama'),
(482, 18, 'Makarfi'),
(483, 19, 'Makoda'),
(484, 17, 'Malam Madori'),
(485, 20, 'Malumfashi'),
(486, 31, 'Mangu'),
(487, 20, 'Mani'),
(488, 36, 'Maradun'),
(489, 25, 'Mariga'),
(490, 7, 'Makurdi'),
(491, 8, 'Marte'),
(492, 36, 'Maru'),
(493, 25, 'Mashegu'),
(494, 20, 'Mashi'),
(495, 20, 'Matazu'),
(496, 2, 'Mayo Belwa'),
(497, 16, 'Mbaitoli'),
(498, 3, 'Mbo'),
(499, 2, 'Michika'),
(500, 17, 'Miga'),
(501, 31, 'Mikang'),
(502, 19, 'Minjibir'),
(503, 5, 'Misau'),
(504, 13, 'Moba'),
(505, 8, 'Mobbar'),
(506, 2, 'Mubi North'),
(507, 2, 'Mubi South'),
(508, 25, 'Mokwa'),
(509, 8, 'Monguno'),
(510, 22, 'Mopa Muro'),
(511, 23, 'Moro'),
(512, 25, 'Moya'),
(513, 3, 'Mkpat-Enin'),
(514, 38, 'Municipal Area Council'),
(515, 20, 'Musawa'),
(516, 24, 'Mushin'),
(517, 15, 'Nafada'),
(518, 35, 'Nangere'),
(519, 19, 'Nasarawa'),
(520, 30, 'Nasarawa'),
(521, 30, 'Nasarawa Egon'),
(522, 10, 'Ndokwa East'),
(523, 10, 'Ndokwa West'),
(524, 6, 'Nembe'),
(525, 8, 'Ngala'),
(526, 8, 'Nganzai'),
(527, 21, 'Ngaski'),
(528, 16, 'Ngor Okpala'),
(529, 35, 'Nguru'),
(530, 5, 'Ningi'),
(531, 16, 'Njaba'),
(532, 4, 'Njikoka'),
(533, 14, 'Nkanu East'),
(534, 14, 'Nkanu West'),
(535, 16, 'Nkwerre'),
(536, 4, 'Nnewi North'),
(537, 4, 'Nnewi South'),
(538, 3, 'Nsit-Atai'),
(539, 3, 'Nsit-Ibom'),
(540, 3, 'Nsit-Ubium'),
(541, 14, 'Nsukka'),
(542, 2, 'Numan'),
(543, 16, 'Nwangele'),
(544, 26, 'Obafemi Owode'),
(545, 9, 'Obanliku'),
(546, 7, 'Obi'),
(547, 30, 'Obi'),
(548, 1, 'Obi Ngwa'),
(549, 32, 'Obio/Akpor'),
(550, 28, 'Obokun'),
(551, 3, 'Obot Akara'),
(552, 16, 'Obowo'),
(553, 9, 'Obubra'),
(554, 9, 'Obudu'),
(555, 26, 'Odeda'),
(556, 27, 'Odigbo'),
(557, 26, 'Odogbolu'),
(558, 28, 'Odo Otin'),
(559, 9, 'Odukpani'),
(560, 23, 'Offa'),
(561, 22, 'Ofu'),
(562, 32, 'Ogba/Egbema/Ndoni'),
(563, 7, 'Ogbadibo'),
(564, 4, 'Ogbaru'),
(565, 6, 'Ogbia'),
(566, 29, 'Ogbomosho North'),
(567, 29, 'Ogbomosho South'),
(568, 32, 'Ogu/Bolo'),
(569, 9, 'Ogoja'),
(570, 29, 'Ogo Oluwa'),
(571, 22, 'Ogori/Magongo'),
(572, 26, 'Ogun Waterside'),
(573, 16, 'Oguta'),
(574, 1, 'Ohafia'),
(575, 16, 'Ohaji/Egbema'),
(576, 12, 'Ohaozara'),
(577, 12, 'Ohaukwu'),
(578, 7, 'Ohimini'),
(579, 11, 'Orhionmwon'),
(580, 14, 'Oji River'),
(581, 24, 'Ojo'),
(582, 7, 'Oju'),
(583, 22, 'Okehi'),
(584, 22, 'Okene'),
(585, 23, 'Oke Ero'),
(586, 16, 'Okigwe'),
(587, 27, 'Okitipupa'),
(588, 3, 'Okobo'),
(589, 10, 'Okpe'),
(590, 32, 'Okrika'),
(591, 22, 'Olamaboro'),
(592, 28, 'Ola Oluwa'),
(593, 28, 'Olorunda'),
(594, 29, 'Olorunsogo'),
(595, 29, 'Oluyole'),
(596, 22, 'Omala'),
(597, 32, 'Omuma'),
(598, 29, 'Ona Ara'),
(599, 27, 'Ondo East'),
(600, 27, 'Ondo West'),
(601, 12, 'Onicha'),
(602, 4, 'Onitsha North'),
(603, 4, 'Onitsha South'),
(604, 3, 'Onna'),
(605, 7, 'Okpokwu'),
(606, 32, 'Opobo/Nkoro'),
(607, 11, 'Oredo'),
(608, 29, 'Orelope'),
(609, 28, 'Oriade'),
(610, 29, 'Ori Ire'),
(611, 16, 'Orlu'),
(612, 28, 'Orolu'),
(613, 3, 'Oron'),
(614, 16, 'Orsu'),
(615, 16, 'Oru East'),
(616, 3, 'Oruk Anam'),
(617, 4, 'Orumba North'),
(618, 4, 'Orumba South'),
(619, 16, 'Oru West'),
(620, 27, 'Ose'),
(621, 10, 'Oshimili North'),
(622, 10, 'Oshimili South'),
(623, 24, 'Oshodi-Isolo'),
(624, 1, 'Osisioma'),
(625, 28, 'Osogbo'),
(626, 7, 'Oturkpo'),
(627, 11, 'Ovia North-East'),
(628, 11, 'Ovia South-West'),
(629, 11, 'Owan East'),
(630, 11, 'Owan West'),
(631, 16, 'Owerri Municipal'),
(632, 16, 'Owerri North'),
(633, 16, 'Owerri West'),
(634, 27, 'Owo'),
(635, 13, 'Oye'),
(636, 4, 'Oyi'),
(637, 32, 'Oyigbo'),
(638, 29, 'Oyo'),
(639, 29, 'Oyo East'),
(640, 23, 'Oyun'),
(641, 25, 'Paikoro'),
(642, 31, 'Pankshin'),
(643, 10, 'Patani'),
(644, 23, 'Pategi'),
(645, 32, 'Port Harcourt'),
(646, 35, 'Potiskum'),
(647, 31, 'Qua an Pan'),
(648, 33, 'Rabah'),
(649, 25, 'Rafi'),
(650, 19, 'Rano'),
(651, 26, 'Remo North'),
(652, 25, 'Rijau'),
(653, 20, 'Rimi'),
(654, 19, 'Rimin Gado'),
(655, 17, 'Ringim'),
(656, 31, 'Riyom'),
(657, 19, 'Rogo'),
(658, 17, 'Roni'),
(659, 33, 'Sabon Birni'),
(660, 18, 'Sabon Gari'),
(661, 20, 'Sabuwa'),
(662, 20, 'Safana'),
(663, 6, 'Sagbama'),
(664, 21, 'Sakaba'),
(665, 29, 'Saki East'),
(666, 29, 'Saki West'),
(667, 20, 'Sandamu'),
(668, 18, 'Sanga'),
(669, 10, 'Sapele'),
(670, 34, 'Sardauna'),
(671, 26, 'Shagamu'),
(672, 33, 'Shagari'),
(673, 21, 'Shanga'),
(674, 8, 'Shani'),
(675, 19, 'Shanono'),
(676, 2, 'Shelleng'),
(677, 31, 'Shendam'),
(678, 36, 'Shinkafi'),
(679, 5, 'Shira'),
(680, 25, 'Shiroro'),
(681, 15, 'Shongom'),
(682, 24, 'Shomolu'),
(683, 33, 'Silame'),
(684, 18, 'Soba'),
(685, 33, 'Sokoto North'),
(686, 33, 'Sokoto South'),
(687, 2, 'Song'),
(688, 6, 'Southern Ijaw'),
(689, 25, 'Suleja'),
(690, 17, 'Sule Tankarkar'),
(691, 19, 'Sumaila'),
(692, 21, 'Suru'),
(693, 29, 'Surulere'),
(694, 24, 'Surulere'),
(695, 25, 'Tafa'),
(696, 5, 'Tafawa Balewa'),
(697, 32, 'Tai'),
(698, 19, 'Takai'),
(699, 34, 'Takum'),
(700, 36, 'Talata Mafara'),
(701, 33, 'Tambuwal'),
(702, 33, 'Tangaza'),
(703, 19, 'Tarauni'),
(704, 7, 'Tarka'),
(705, 35, 'Tarmuwa'),
(706, 17, 'Taura'),
(707, 2, 'Toungo'),
(708, 19, 'Tofa'),
(709, 5, 'Toro'),
(710, 30, 'Toto'),
(711, 36, 'Chafe'),
(712, 19, 'Tsanyawa'),
(713, 19, 'Tudun Wada'),
(714, 33, 'Tureta'),
(715, 14, 'Udenu'),
(716, 14, 'Udi'),
(717, 10, 'Udu'),
(718, 3, 'Udung-Uko'),
(719, 10, 'Ughelli North'),
(720, 10, 'Ughelli South'),
(721, 1, 'Ugwunagbo'),
(722, 11, 'Uhunmwonde'),
(723, 3, 'Ukanafun'),
(724, 7, 'Ukum'),
(725, 1, 'Ukwa East'),
(726, 1, 'Ukwa West'),
(727, 10, 'Ukwuani'),
(728, 1, 'Umuahia North'),
(729, 1, 'Umuahia South'),
(730, 1, 'Umu Nneochi'),
(731, 19, 'Ungogo'),
(732, 16, 'Unuimo'),
(733, 3, 'Uruan'),
(734, 3, 'Urue-Offong/Oruko'),
(735, 7, 'Ushongo'),
(736, 34, 'Ussa'),
(737, 10, 'Uvwie'),
(738, 3, 'Uyo'),
(739, 14, 'Uzo Uwani'),
(740, 7, 'Vandeikya'),
(741, 33, 'Wamako'),
(742, 30, 'Wamba'),
(743, 19, 'Warawa'),
(744, 5, 'Warji'),
(745, 10, 'Warri North'),
(746, 10, 'Warri South'),
(747, 10, 'Warri South West'),
(748, 21, 'Wasagu/Danko'),
(749, 31, 'Wase'),
(750, 19, 'Wudil'),
(751, 34, 'Wukari'),
(752, 33, 'Wurno'),
(753, 25, 'Wushishi'),
(754, 33, 'Yabo'),
(755, 22, 'Yagba East'),
(756, 22, 'Yagba West'),
(757, 9, 'Yakuur'),
(758, 9, 'Yala'),
(759, 15, 'Yamaltu/Deba'),
(760, 17, 'Yankwashi'),
(761, 21, 'Yauri'),
(762, 6, 'Yenagoa'),
(763, 2, 'Yola North'),
(764, 2, 'Yola South'),
(765, 34, 'Yorro'),
(766, 35, 'Yunusari'),
(767, 35, 'Yusufari'),
(768, 5, 'Zaki'),
(769, 20, 'Zango'),
(770, 18, 'Zangon Kataf'),
(771, 18, 'Zaria'),
(772, 34, 'Zing'),
(773, 36, 'Zurmi'),
(774, 21, 'Zuru');

-- --------------------------------------------------------

--
-- Table structure for table `tblmembers`
--

CREATE TABLE `tblmembers` (
  `id` int(11) NOT NULL,
  `fname` varchar(45) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `refid` varchar(100) DEFAULT NULL,
  `memid` varchar(100) DEFAULT NULL,
  `position` int(4) DEFAULT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(200) NOT NULL,
  `created_at` date NOT NULL,
  `updated_at` date NOT NULL,
  `remember_token` varchar(200) NOT NULL,
  `toplevel` int(11) DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblmembers`
--

INSERT INTO `tblmembers` (`id`, `fname`, `email`, `phone`, `refid`, `memid`, `position`, `username`, `password`, `created_at`, `updated_at`, `remember_token`, `toplevel`) VALUES
(39, 'Samju J', 'samjusoftware.com@gmail.com', '0987655626', '123453', '9673815', 2, 'Samju01', '$2y$10$ljKphTzN3PPtvg4z230cDe3PvnU..DMRuasmCwQDWFM4c73MrAvy.', '2019-06-23', '2019-06-23', 'UsMWojXiIPa8CLD1jQU1bz1KZTyE4KrSQm3KRQ5sCklMMZc7jUzRqBmcxywN', 0),
(38, 'Lowe Mark', 'samjusoftware.com@gmail.com', '08122419419', '123453', '123460', 3, 'omenna060', '$2y$10$QVHLBDpHt97GAmgPyE2FiuEaI.XH.DNnuxnVYUnoULbwdfT.c/Dei', '2019-06-20', '2019-06-20', 'TC5xOobNPbkCJ4CzS1Vs4SPtvAuLiQKb1PguaDeE0JccvOcezs1wVLra4ZT7', 0),
(37, 'Lowe', 'samjusoftware.com@gmail.com', '08023106781', '123453', '123459', 1, 'omenna09', '$2y$10$WXONkM7oemu.RaAgPkQ2zu9X/dGNevW8hR1ep0nCwmRkbOkbMSOkm', '2019-06-20', '2019-06-20', '0', 0),
(36, 'Omenna8', 'samjusoftware.com@gmail.com', '08122314214', '123457', '123458', 2, 'omenna08', '$2y$10$dh9b8RYwcW56ywSuPH53iOsbWrG8khjn53yzgCEeWRgoASSPnpsQW', '2019-06-15', '2019-06-20', 'mbEQSk78nZKISzZYmakukjNSwHGdFO7huuvEcBQTk6zyo8CbutcpeYPeagFE', 0),
(35, 'Kanu James', 'samjusoftware.com@gmail.com', '08122419419', '123452', '123457', 2, 'omanna06', '$2y$10$OvMExMn6jtLIfWXUhG5fy.NaoM6gwKw8jORaBTr6Bi.XhtSf3bbnG', '2019-06-13', '2019-07-02', 'wJ3Juf34fa3bLy70KO0xhcYgPUGF0qppLFNHFXXmIZONH1Yhj2pJIvYZ2IET', 0),
(34, 'Omenna06', 'samjusoftware.com@gmail.com', '08137392444', '123452', '123456', 3, 'omenna06', '$2y$10$.C4hl6vYB3cAfriM3i1GSeKptbgxx75r36QmlHQqvfNhuaSjCy49m', '2019-06-11', '2019-06-29', 'XnIm72COvWrYEh1w4OIh9171bJu3Lc2YPIIlBEteM5wCL8Av9Z8WjW1ch17j', 0),
(33, 'omanna05', 'samjusoftware.com@gmail.com', '08122419419', '123452', '123455', 1, 'omanna05', '$2y$10$P79W6YG3hSHUaUsFSBMKtuHAIgXoeHNG41/WBLZn1xtj8eorYFTlu', '2019-06-11', '2019-06-18', 'cLXyE5Iww8mn8Q6gGARMhQkbrOnMYX0sH9hIrRgNl8SXgzhBcQKLx89rmaMS', 0),
(31, 'omanna03', 'samjusoftware.com@gmail.com', '08133519219', '123451', '123453', 2, 'omenna03', '$2y$10$V1owyb8OgG19F29wlsL/1.ZHLCB.oJ2R9d3SF3NAD/UPAvqpPCfqa', '2019-06-10', '2019-06-27', 'HQz2XZ3X9UXqLBXKA5vxi3fhpNhwcwSz78koVbCP9nLIa8ZMVEC7xg5UgNlf', 0),
(32, 'omanna04', 'samjusoftware.com@gmail.com', '08122419419', '123451', '123454', 3, 'omanna04', '$2y$10$.GehPEB/g9Agf8V0OBaO5.wq/M1EIXKjWb9F2Gp4.Dtv1bUA7531K', '2019-06-10', '2019-06-20', 'Sav7XI8v8bh3kO2CyhwWD99q8yLyqXtymFvokPDO1ohwspxbpzggLzbzBYcw', 0),
(29, 'James Lucky M', 'samjusoftwares.com@gmail.com', '08133519219', '123450', '123451', 1, 'omenna01', '$2y$10$8F8whAYHl4DDp9CzfUvR9eIYKV9nTQvXKZ5V9EpFCZVQxkHYu./QK', '2019-06-08', '2019-06-27', 'JFrx99gTPgGA6lKzXnWCLoiwvqSirI5a8nZnZixlOfNQKS5wF4aGSAr5dAiD', 0),
(30, 'Omenna2', 'samjusoftware.com@gmail.com', '08133519219', '123451', '123452', 1, 'omenna02', '$2y$10$W28gaiYJEVtcu3kR1xdNVOhw79zp.cZCTTxSWhW1ac.vvhiOxQgkq', '2019-06-08', '2019-06-20', '8gUqTxlVlsQR5gjzVYuHnJIlDmLJrhekVJtk6hujq9zltboTjnOnTFXapgEr', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tblownership`
--

CREATE TABLE `tblownership` (
  `id` int(11) NOT NULL,
  `names` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblownership`
--

INSERT INTO `tblownership` (`id`, `names`) VALUES
(1, 'State'),
(2, 'Federal'),
(3, 'Private');

-- --------------------------------------------------------

--
-- Table structure for table `tblpedc`
--

CREATE TABLE `tblpedc` (
  `id` int(11) NOT NULL,
  `staffid` int(11) NOT NULL,
  `divisionid` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblpedc`
--

INSERT INTO `tblpedc` (`id`, `staffid`, `divisionid`) VALUES
(3, 2, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblprogramme`
--

CREATE TABLE `tblprogramme` (
  `id` int(11) NOT NULL,
  `divisionid` int(11) DEFAULT NULL,
  `programme` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblprogramme`
--

INSERT INTO `tblprogramme` (`id`, `divisionid`, `programme`) VALUES
(1, 1, 'Computer Science'),
(2, 2, 'Banking and Finance');

-- --------------------------------------------------------

--
-- Table structure for table `tblprogrammecategory`
--

CREATE TABLE `tblprogrammecategory` (
  `id` int(11) NOT NULL,
  `category` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblprogrammecategory`
--

INSERT INTO `tblprogrammecategory` (`id`, `category`) VALUES
(1, 'ND'),
(2, 'HND'),
(3, 'NID'),
(4, 'HID'),
(5, 'ANTC'),
(6, 'NTC');

-- --------------------------------------------------------

--
-- Table structure for table `tblprogrammesreport`
--

CREATE TABLE `tblprogrammesreport` (
  `id` int(11) NOT NULL,
  `institutionsid` int(11) NOT NULL,
  `programmecatid` int(11) NOT NULL,
  `categoryid` int(11) NOT NULL,
  `divisionid` int(11) DEFAULT NULL,
  `yeargranted` varchar(25) DEFAULT NULL,
  `last_year_visited` varchar(20) DEFAULT NULL,
  `expdate` varchar(30) DEFAULT NULL,
  `streamapprove` varchar(50) DEFAULT NULL,
  `accreditation_status` varchar(20) DEFAULT NULL,
  `statusid` int(11) DEFAULT '1',
  `record_type` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblprogrammesreport`
--

INSERT INTO `tblprogrammesreport` (`id`, `institutionsid`, `programmecatid`, `categoryid`, `divisionid`, `yeargranted`, `last_year_visited`, `expdate`, `streamapprove`, `accreditation_status`, `statusid`, `record_type`) VALUES
(13, 5, 30, 2, 2, '2017', NULL, '2021', '2', 'Accredited', 1, 1),
(14, 4, 80, 1, 14, '2020', '2021', '2022-03-23', '1', '2', 1, 1),
(15, 5, 40, 2, 2, '2018', '2018', '2020-10-01', '2', '2', 1, 1),
(16, 5, 46, 2, 2, '2018', '2018', '2020-10-01', '1', '2', 1, 1),
(17, 5, 30, 1, 2, '1999', '2017', '2022-10-01', '2', '3', 1, 1),
(18, 5, 40, 1, 2, '2002', '2018', '2023-10-01', '2', '3', 1, 1),
(19, 5, 53, 2, 12, '2018', '2018', '2020-10-01', '1', '2', 1, 1),
(20, 5, 54, 2, 12, '2018', '2018', '2020-10-01', '2', '2', 1, 1),
(21, 5, 128, 2, 12, '2018', '2018', '2020-10-01', '1', '2', 1, 1),
(22, 5, 53, 1, 12, '2015', '2018', '2019-10-01', '1', '6', 1, 1),
(23, 5, 54, 1, 12, '2015', '2018', '2019-10-01', '1', '6', 1, 1),
(24, 5, 55, 1, 12, '2015', '2018', '2023-10-01', '1', '3', 1, 1),
(25, 5, 61, 1, 12, '2015', '2018', '2019-10-01', '2', '6', 1, 1),
(26, 5, 62, 1, 12, '2018', '2018', '2020-10-01', '1', '2', 1, 1),
(27, 5, 71, 1, 13, '2015', '2018', '2023-10-01', '2', '3', 1, 1),
(28, 5, 72, 1, 13, '2015', '2018', '2018-10-01', '1', '7', 1, 1),
(29, 5, 76, 1, 13, '2015', '2018', '2018-10-01', '1', '7', 1, 1),
(30, 5, 77, 1, 13, '2021', '2018', '2020-10-01', '1', '2', 1, 1),
(31, 5, 80, 2, 14, '2005', '2017', '2022-10-01', '2', '3', 1, 1),
(32, 5, 119, 1, 18, '1999', '2017', '2022-10-01', '2', '3', 1, 1),
(33, 5, 81, 1, 14, '2004', '2018', '2023-10-01', '1', '3', 1, 1),
(34, 5, 104, 1, 19, '2018', '2018', '2020-10-01', '1', '4', 1, 1),
(35, 5, 105, 1, 19, '2018', '2018', '2020-10-20', '2', '2', 1, 1),
(36, 5, 136, 2, 1, '2018', '2018', '2022-10-01', '1', '2', 1, 1),
(37, 5, 140, 2, 1, '2018', '2018', '2022-10-01', '1', '2', 1, 1),
(38, 5, 132, 2, 1, '2018', '2018', '2022-10-01', '2', '2', 1, 1),
(39, 5, 132, 2, 1, '2018', '2018', '2022-10-01', '2', '2', 1, 1),
(40, 5, 107, 2, 1, '2008', '2017', '2022-10-01', '2', '3', 1, 1),
(41, 5, 116, 2, 1, '2008', '2017', '2022-11-01', '2', '3', 1, 1),
(42, 5, 107, 1, 1, '2003', '2017', '2022-10-01', '2', '3', 1, 1),
(43, 5, 115, 1, 1, '2010', '2018', '2023-10-01', '1', '3', 1, 1),
(44, 6, 30, 2, 2, '1999', '2011', '2016-10-01', '1', '6', 1, 1),
(45, 6, 39, 2, 2, '1999', '2011', '2016-10-01', '1', '6', 1, 1),
(46, 6, 44, 2, 2, '1999', '2009', '2014-10-01', '1', '6', 1, 1),
(47, 6, 41, 2, 2, '2003', '2011', '2016-10-01', '1', '6', 1, 1),
(48, 6, 30, 1, 2, '1995', '2011', '2016-10-01', '1', '6', 1, 1),
(49, 6, 40, 1, 2, '1998', '2011', '2016-10-01', '1', '6', 1, 1),
(50, 6, 53, 1, 12, '2013', '2018', '2015-10-01', '2', '6', 1, 1),
(51, 6, 54, 1, 12, '2013', '2018', '2015-10-01', '2', '6', 1, 1),
(52, 6, 55, 1, 12, '2012', '2018', '2015-10-01', '2', '6', 1, 1),
(53, 6, 70, 1, 12, '2013', '2018', '2015-10-01', 'nil', '6', 1, 1),
(54, 6, 71, 2, 13, '2011', '2016', '2013-10-01', '2', '6', 1, 1),
(55, 6, 72, 2, 13, '2011', '2016', '2013-10-01', '3', '6', 1, 1),
(56, 6, 74, 2, 13, '2011', '2016', '2013-10-01', '1', '6', 1, 1),
(57, 6, 76, 2, 13, '2011', '2016', '2013-10-01', '1', '6', 1, 1),
(58, 6, 77, 2, 13, '2011', '2016', '2013-10-01', '2', '6', 1, 1),
(59, 6, 79, 2, 13, '2011', '2016', '2013-10-01', '2', '6', 1, 1),
(60, 6, 71, 1, 13, '2008', '2010', '2015-10-01', '3', '6', 1, 1),
(61, 6, 72, 1, 13, '2008', '2010', '2015-10-01', '3', '6', 1, 1),
(62, 6, 74, 1, 13, '2008', '2010', '2015-10-01', '2', '6', 1, 1),
(63, 6, 76, 1, 13, '2008', '2010', '2015-10-01', '2', '6', 1, 1),
(64, 6, 77, 1, 13, '2008', '2010', '2015-10-01', '3', '6', 1, 1),
(65, 6, 79, 1, 13, '2008', '2010', '2015-10-01', '3', '6', 1, 1),
(66, 6, 80, 2, 14, '1999', '2011', '2016-10-01', '1', '6', 1, 1),
(67, 6, 81, 2, 14, '2009', '2011', '2016-10-01', '1', '6', 1, 1),
(68, 6, 80, 1, 14, '1995', '2011', '2016-10-01', '1', '6', 1, 1),
(69, 6, 81, 1, 14, '2004', '2009', '2014-10-01', '1', '6', 1, 1),
(70, 6, 100, 1, 17, '2001', '2016', '2018-10-01', 'nil', '6', 1, 1),
(71, 6, 107, 2, 1, '2001', '2008', '2013-10-01', '4', '6', 1, 1),
(72, 6, 129, 2, 1, '2008', '2010', '2015-10-01', '2', '6', 1, 1),
(73, 6, 130, 2, 1, '2008', '2010', '2015-10-01', '3', '6', 1, 1),
(74, 6, 131, 2, 1, '2008', '2010', '2015-10-01', '2', '6', 1, 1),
(75, 6, 116, 2, 1, '2003', '2010', '2015-10-01', '4', '6', 1, 1),
(76, 6, 107, 1, 1, '1995', '2015', '2020-10-01', '2', '3', 1, 1),
(77, 6, 108, 1, 1, '2013', '2018', '2015-10-01', '1', '6', 1, 1),
(78, 6, 115, 1, 1, '2005', '2015', '2020-10-01', '3', '3', 1, 1),
(79, 6, 116, 1, 1, '1995', '2015', '2020-10-01', '2', '3', 1, 1),
(80, 7, 30, 2, 2, '2010', '2015', '2020-10-01', '2', '3', 1, 1),
(81, 7, 30, 1, 2, '2009', '2011', '2016-10-01', '1', '6', 1, 1),
(82, 7, 54, 1, 12, '2009', '2011', '2016-10-01', '2', '6', 1, 1),
(83, 7, 55, 1, 12, '2009', '2011', '2016-10-01', '2', '6', 1, 1),
(84, 7, 79, 1, 13, '2009', '2015', '2020-10-01', '1', '3', 1, 1),
(85, 7, 80, 2, 14, '2012', '2018', '2023-10-01', '2', '3', 1, 1),
(86, 7, 80, 1, 14, '2008', '2018', '2023-10-01', '2', '3', 1, 1),
(87, 7, 81, 1, 14, '2012', '2018', '2023-10-01', '2', '3', 1, 1),
(88, 7, 105, 1, 19, '2018', '2018', '2020-10-01', '1', '4', 1, 1),
(89, 7, 105, 1, 19, '2015', '2020', '2020-10-01', '1', '3', 1, 1),
(90, 7, 132, 2, 1, '2018', '2018', '2020-10-01', '1', '4', 1, 1),
(91, 7, 107, 1, 1, '2009', '2011', '2016-10-01', '1', '6', 1, 1),
(92, 7, 132, 2, 1, '2018', '2018', '2020-10-01', '2', '4', 1, 1),
(93, 7, 115, 1, 1, '2009', '2015', '2020-10-01', '1', '3', 1, 1),
(94, 7, 116, 1, 1, '2009', '2011', '2016-10-01', '2', '6', 1, 1),
(95, 8, 30, 2, 2, '2015', '2018', '2023-10-01', '1', '3', 1, 1),
(96, 8, 44, 2, 2, '2015', '2018', '2023-10-01', '2', '3', 1, 1),
(97, 8, 135, 2, 2, '2018', '2018', '2020-10-01', '1', '4', 1, 1),
(98, 8, 30, 1, 2, '2009', '2018', '2022-10-01', '4', '3', 1, 1),
(99, 8, 37, 1, 2, '2016', '2019', '2024-10-01', '1', '3', 1, 1),
(100, 8, 39, 1, 2, '2019', '2019', '2021-10-01', '2', '4', 1, 1),
(101, 8, 40, 1, 2, '2019', '2019', '2021-10-01', '1', '4', 1, 1),
(102, 8, 44, 1, 2, '2010', '2018', '2022-10-01', '3', '3', 1, 1),
(103, 8, 46, 1, 2, '2015', '2018', '2023-10-01', '2', '3', 1, 1),
(104, 8, 53, 2, 12, '2018', '2018', '2020-10-01', '1', '4', 1, 1),
(105, 8, 55, 2, 12, '2015', '2019', '2024-10-01', '1', '3', 1, 1),
(106, 8, 133, 2, 12, '2016', '2019', '2020-10-01', '1', '4', 1, 1),
(107, 8, 128, 2, 12, '2018', '2018', '2020-10-01', '1', '4', 1, 1),
(108, 8, 53, 1, 12, '2015', '2019', '2024-10-01', '1', '3', 1, 1),
(109, 8, 53, 1, 12, '2018', '2018', '2020-10-01', '1', '4', 1, 1),
(110, 8, 55, 1, 12, '2009', '2015', '2020-10-01', '2', '3', 1, 1),
(111, 8, 61, 1, 12, '2018', '2021', '2023-10-01', '2', '3', 1, 1),
(112, 8, 70, 1, 12, '2016', '2019', '2020-10-01', '1', '4', 1, 1),
(113, 8, 71, 2, 13, '2017', '2019', '2024-10-01', '1', '3', 1, 1),
(114, 8, 72, 2, 13, '2016', '2019', '2020-10-01', '1', '4', 1, 1),
(115, 8, 74, 2, 13, '2015', '2018', '2023-10-01', '2', '3', 1, 1),
(116, 8, 71, 1, 13, '2016', '2019', '2024-10-01', '1', '3', 1, 1),
(117, 8, 72, 1, 13, '2007', '2017', '2022-10-01', '2', '3', 1, 1),
(118, 8, 74, 1, 13, '2007', '2017', '2022-10-01', '2', '3', 1, 1),
(119, 8, 76, 1, 13, '2016', '2019', '2020-10-01', '1', '4', 1, 1),
(120, 8, 77, 1, 13, '2018', '2018', '2020-10-01', '1', '4', 1, 1),
(121, 8, 79, 1, 13, '2016', '2019', '2024-10-01', '2', '3', 1, 1),
(122, 8, 102, 1, 17, '2017', '2019', '2020-10-01', 'nil', '4', 1, 1),
(123, 8, 80, 2, 14, '2015', '2019', '2024-10-01', '1', '3', 1, 1),
(124, 8, 80, 1, 14, '2009', '2019', '2024-10-01', '4', '3', 1, 1),
(125, 8, 81, 1, 14, '2017', '2019', '2024-10-01', '2', '3', 1, 1),
(126, 8, 83, 1, 14, '2016', '2019', '2024-10-01', '1', '3', 1, 1),
(127, 8, 105, 2, 19, '2017', '2019', '2024-10-01', '1', '3', 1, 1),
(128, 8, 104, 1, 19, '2018', '2018', '2024-10-01', '1', '4', 1, 1),
(129, 8, 105, 1, 19, '2016', '2019', '2024-10-01', '2', '3', 1, 1),
(130, 8, 107, 2, 1, '2015', '2018', '2023-10-01', '2', '3', 1, 1),
(131, 8, 109, 2, 1, '2017', '2019', '2024-10-01', '1', '3', 1, 1),
(132, 8, 136, 2, 1, '2016', '2019', '2024-10-01', '1', '3', 1, 1),
(133, 8, 132, 2, 1, '2015', '2019', '2024-10-01', '2', '3', 1, 1),
(134, 8, 137, 2, 1, '2015', '2019', '2024-10-01', '1', '3', 1, 1),
(135, 8, 131, 2, 1, '2015', '2019', '2024-10-01', '1', '3', 1, 1),
(136, 8, 116, 2, 1, '2017', '2019', '2024-10-01', '2', '3', 1, 1),
(137, 8, 107, 1, 1, '2008', '2018', '2020-10-01', '3', '3', 1, 1),
(138, 8, 109, 1, 1, '2015', '2018', '2023-10-01', '2', '3', 1, 1),
(139, 8, 115, 1, 1, '2009', '2015', '2023-10-01', '4', '3', 1, 1),
(140, 8, 116, 1, 1, '2015', '2018', '2023-10-01', '2', '3', 1, 1),
(141, 9, 30, 1, 2, '2012', '2017', '2022-10-01', '2', '3', 1, 1),
(142, 9, 30, 1, 2, '2012', '2017', '2022-10-01', '2', '3', 1, 1),
(143, 9, 40, 1, 2, '2012', '2017', '2018-10-01', '1', '6', 1, 1),
(144, 9, 44, 1, 2, '2013', '2017', '2022-10-01', '1', '3', 1, 1),
(145, 9, 46, 1, 2, '2012', '2017', '2022-10-01', '1', '3', 1, 1),
(146, 9, 105, 1, 19, '2012', '2017', '2022-10-01', '2', '3', 1, 1),
(147, 9, 80, 1, 14, '2013', '2017', '2022-10-01', '2', '3', 1, 1),
(148, 9, 81, 1, 14, '2013', '2017', '2022-10-01', '1', '3', 1, 1),
(149, 9, 79, 1, 13, '2013', '2017', '2018-10-01', '1', '6', 1, 1),
(150, 9, 77, 1, 13, '2013', '2017', '2018-10-01', '1', '6', 1, 1),
(151, 9, 106, 2, 1, '2006', '2017', '2022-10-01', '1', '3', 1, 1),
(152, 9, 116, 2, 1, '2006', '2017', '2022-10-01', '1', '3', 1, 1),
(153, 9, 116, 2, 1, '2006', '2017', '2022-10-01', '1', '3', 1, 1),
(154, 9, 116, 1, 1, '1995', '2011', '2015-10-01', '2', '6', 1, 1),
(155, 9, 115, 1, 1, '2011', '2011', '2016-10-01', '2', '6', 1, 1),
(156, 9, 107, 1, 1, '1995', '2015', '2020-10-01', '2', '3', 1, 1),
(157, 9, 47, 2, 12, '2013', '2017', '2022-10-01', '1', '3', 1, 1),
(158, 9, 47, 1, 12, '2012', '2017', '2022-10-01', '1', '3', 1, 1),
(159, 9, 53, 1, 12, '2012', '2017', '2022-10-01', '2', '3', 1, 1),
(160, 9, 56, 1, 12, '2012', '2017', '2018-10-01', '2', '6', 1, 1),
(161, 9, 61, 1, 12, '2012', '2017', '2018-10-01', '1', '6', 1, 1),
(162, 10, 30, 1, 2, '2004', '2017', '2018-10-01', '1', '6', 1, 1),
(163, 10, 45, 2, 2, '2009', '2017', '2018-10-01', '1', '6', 1, 1),
(164, 10, 138, 2, 12, '2008', '2017', '2022-10-01', '2', '3', 1, 1),
(165, 10, 139, 2, 12, '2008', '2017', '2022-10-01', '2', '3', 1, 1),
(166, 10, 134, 2, 12, '2008', '2017', '2018-10-01', '2', '6', 1, 1),
(167, 10, 56, 1, 12, '2019', '2019', '2021-10-01', '1', '4', 1, 1),
(168, 10, 133, 2, 12, '2018', '2018', '2020-10-01', '1', '4', 1, 1),
(169, 10, 128, 2, 12, '2018', '2018', '2020-10-01', '1', '4', 1, 1),
(170, 10, 48, 1, 12, '2004', '2017', '2022-10-01', '2', '3', 1, 1),
(171, 10, 53, 2, 12, '2018', '2018', '2020-10-01', '1', '4', 1, 1),
(172, 10, 55, 1, 12, '2004', '2017', '2018-10-01', '2', '4', 1, 1),
(173, 10, 56, 1, 12, '2010', '2015', '2020-10-01', '1', '3', 1, 1),
(174, 10, 61, 1, 12, '2004', '2017', '2018-10-01', '2', '4', 1, 1),
(175, 11, 54, 1, 12, '2016', '2016', '2018-10-01', '1', '4', 1, 1),
(176, 11, 54, 1, 12, '2016', '2016', '2018-10-01', '1', '6', 1, 1),
(177, 11, 55, 1, 12, '2016', '2016', '2018-10-01', '1', '6', 1, 1),
(178, 11, 80, 1, 14, '2016', '2016', '2018-10-01', '1', '6', 1, 1),
(179, 11, 107, 1, 1, '2016', '2016', '2018-10-01', '1', '6', 1, 1),
(180, 11, 116, 1, 1, '2016', '2016', '2018-10-01', '1', '6', 1, 1),
(181, 12, 6, 2, 10, '2018', '2018', '2020-10-01', '2', '4', 1, 1),
(182, 12, 7, 1, 10, '2013', '2015', '2020-10-01', '2', '3', 1, 1),
(183, 12, 15, 1, 10, '2013', '2016', '2021-10-01', '2', '3', 1, 1),
(184, 12, 30, 2, 2, '2019', '2019', '2024-10-01', '3', '3', 1, 1),
(185, 4, 39, 2, 2, '2019', '2019', '2024-10-01', '2', '3', 1, 1),
(186, 4, 40, 2, 2, '2019', '2019', '2024-10-01', '2', '3', 1, 1),
(187, 4, 44, 2, 2, '2010', '2015', '2020-10-01', '2', '3', 1, 1),
(188, 4, 30, 1, 2, '2019', '2019', '2024-10-01', '3', '3', 1, 1),
(189, 4, 39, 1, 2, '2011', '2016', '2021-10-01', '2', '3', 1, 1),
(190, 4, 40, 1, 2, '2019', '2019', '2024-10-01', '3', '3', 1, 1),
(191, 4, 44, 1, 2, '2008', '2016', '2021-10-01', '3', '3', 1, 1),
(192, 4, 40, 1, 2, '2019', '2019', '2024-10-01', '2', '3', 1, 1),
(193, 4, 53, 2, 12, '1995', '2019', '2020-10-01', '2', '4', 1, 1),
(194, 4, 134, 2, 12, '1997', '2016', '2021-10-01', '2', '3', 1, 1),
(195, 4, 55, 2, 12, '1997', '2016', '2021-10-01', '2', '3', 1, 1),
(196, 4, 128, 2, 12, '2013', '2019', '2024-10-01', '1', '3', 1, 1),
(197, 4, 133, 2, 12, '2019', '2019', '2020-10-01', '2', '4', 1, 1),
(198, 4, 53, 1, 12, '2016', '2016', '2021-10-01', '2', '3', 1, 1),
(199, 4, 54, 1, 12, '2016', '2016', '2018-10-01', '2', '4', 1, 1),
(200, 4, 55, 1, 12, '2016', '2016', '2021-10-01', '4', '3', 1, 1),
(201, 4, 61, 1, 12, '2019', '2019', '2020-10-01', '2', '4', 1, 1),
(202, 4, 61, 1, 12, '2015', '2019', '2020-10-01', '2', '4', 1, 1),
(203, 4, 62, 1, 12, '2015', '2019', '2020-10-01', '2', '4', 1, 1),
(204, 4, 71, 2, 13, '2015', '2019', '2024-10-01', '1', '3', 1, 1),
(205, 4, 72, 2, 13, '2006', '2015', '2016-10-01', '2', '6', 1, 1),
(206, 4, 74, 2, 13, '2013', '2016', '2021-10-01', '1', '3', 1, 1),
(207, 4, 77, 2, 13, '2019', '2019', '2021-10-01', '1', '4', 1, 1),
(208, 4, 76, 2, 13, '2006', '2016', '2020-10-01', '2', '3', 1, 1),
(209, 4, 71, 1, 13, '2009', '2019', '2020-10-01', '1', '4', 1, 1),
(210, 4, 72, 1, 13, '2016', '2016', '2021-10-01', '2', '3', 1, 1),
(211, 4, 74, 1, 13, '2009', '2019', '2024-10-01', '2', '3', 1, 1),
(212, 4, 76, 1, 13, '2016', '2016', '2021-10-01', '1', '3', 1, 1),
(213, 4, 77, 1, 13, '2011', '2016', '2021-10-01', '1', '3', 1, 1),
(214, 4, 79, 1, 13, '2015', '2019', '2024-10-01', '2', '3', 1, 1),
(215, 4, 80, 2, 14, '2019', '2019', '2024-10-01', '3', '3', 1, 1),
(216, 4, 80, 1, 14, '2019', '2019', '2024-10-01', '3', '3', 1, 1),
(217, 4, 100, 2, 17, '2016', '2016', '2018-10-01', 'nil', '6', 1, 1),
(218, 4, 80, 1, 14, '2002', '2016', '2021-10-01', '2', '3', 1, 1),
(219, 4, 104, 2, 19, '2019', '2019', '2021-10-01', '1', '4', 1, 1),
(220, 4, 104, 1, 19, '2016', '2016', '2018-10-01', '1', '6', 1, 1),
(221, 4, 106, 2, 1, '2011', '2019', '2024-10-01', '2', '3', 1, 1),
(222, 4, 107, 2, 1, '2004', '2019', '2024-10-01', '2', '3', 1, 1),
(223, 4, 108, 2, 1, '2019', '2019', '2021-10-01', '1', '4', 1, 1),
(224, 4, 136, 2, 1, '2004', '2016', '2021-10-01', '1', '3', 1, 1),
(225, 4, 130, 2, 1, '2004', '2015', '2020-10-01', '1', '3', 1, 1),
(226, 4, 129, 2, 1, '2004', '2019', '2020-10-01', '2', '4', 1, 1),
(227, 4, 137, 2, 1, '2004', '2015', '2020-10-01', '1', '3', 1, 1),
(228, 4, 140, 2, 1, '2019', '2019', '2021-10-01', '1', '4', 1, 1),
(229, 4, 132, 2, 1, '2019', '2019', '2021-10-01', '1', '4', 1, 1),
(230, 4, 132, 2, 1, '2004', '2016', '2021-10-01', '1', '3', 1, 1),
(231, 4, 116, 2, 1, '2008', '2016', '2021-10-01', '2', '3', 1, 1),
(232, 4, 106, 1, 1, '2002', '2016', '2021-10-01', '2', '3', 1, 1),
(233, 4, 107, 1, 1, '1995', '2019', '2024-10-01', '3', '3', 1, 1),
(234, 4, 108, 1, 1, '2009', '2019', '2020-10-01', '1', '3', 1, 1),
(235, 4, 115, 1, 1, '2016', '2016', '2021-10-01', '2', '3', 1, 1),
(236, 4, 116, 1, 1, '2000', '2015', '2020-10-01', '2', '3', 1, 1),
(237, 13, 80, 1, 14, '2009', '2014', '2019-10-01', '2', '6', 1, 1),
(238, 13, 107, 1, 1, '2009', '2014', '2019-10-01', '2', '6', 1, 1),
(239, 13, 116, 1, 1, '2007', '2009', '2014-10-01', '2', '6', 1, 1),
(240, 14, 30, 2, 2, '1999', '2017', '2022-10-01', '2', '3', 1, 1),
(241, 14, 40, 2, 2, '1999', '2017', '2022-10-01', '1', '3', 1, 1),
(242, 14, 30, 1, 2, '1995', '2017', '2022-10-01', '2', '3', 1, 1),
(243, 14, 40, 1, 2, '1995', '2017', '2022-10-01', '1', '3', 1, 1),
(244, 14, 134, 2, 12, '2017', '2017', '2019-10-01', 'nil', '6', 1, 1),
(245, 14, 53, 1, 12, '2008', '2017', '2018-10-01', '2', '6', 1, 1),
(246, 14, 54, 1, 12, '2017', '2017', '2019-10-01', 'nil', '6', 1, 1),
(247, 14, 55, 1, 12, '2005', '2017', '2022-10-01', '1', '3', 1, 1),
(248, 14, 71, 2, 13, '2017', '2017', '2019-10-01', 'nil', '6', 1, 1),
(249, 14, 72, 2, 13, '2017', '2017', '2019-10-01', 'nil', '6', 1, 1),
(250, 14, 74, 2, 13, '2017', '2017', '2019-10-01', 'nil', '6', 1, 1),
(251, 14, 76, 2, 13, '2017', '2017', '2019-10-01', 'nil', '6', 1, 1),
(252, 14, 79, 2, 13, '2017', '2017', '2019-10-01', 'nil', '6', 1, 1),
(253, 14, 71, 1, 13, '2009', '2017', '2022-10-01', '2', '3', 1, 1),
(254, 14, 71, 1, 13, '2009', '2017', '2022-10-01', '2', '3', 1, 1),
(255, 14, 72, 1, 13, '2009', '2014', '2019-10-01', '1', '6', 1, 1),
(256, 14, 74, 1, 13, '2009', '2014', '2019-10-01', '1', '6', 1, 1),
(257, 14, 76, 1, 13, '2009', '2014', '2019-10-01', '1', '6', 1, 1),
(258, 14, 77, 1, 13, '2017', '2017', '2019-10-01', 'nil', '6', 1, 1),
(259, 14, 79, 1, 13, '2009', '2014', '2019-10-01', '1', '6', 1, 1),
(260, 14, 80, 2, 14, '1999', '2017', '2022-10-01', '2', '3', 1, 1),
(261, 14, 80, 1, 14, '1995', '2017', '2022-10-01', '2', '3', 1, 1),
(262, 14, 105, 2, 19, '2009', '2017', '2018-10-01', '1', '6', 1, 1),
(263, 14, 105, 1, 19, '2005', '2014', '2019-10-01', '1', '6', 1, 1),
(264, 14, 107, 2, 1, '2004', '2017', '2022-10-01', '2', '3', 1, 1),
(265, 14, 116, 2, 1, '1999', '2017', '2022-10-01', '1', '3', 1, 1),
(266, 14, 136, 2, 1, '2005', '2017', '2022-10-01', '2', '3', 1, 1),
(267, 14, 132, 2, 1, '2005', '2014', '2015-10-01', '2', '6', 1, 1),
(268, 14, 137, 2, 1, '2005', '2017', '2022-10-01', '2', '3', 1, 1),
(269, 14, 140, 2, 1, '2017', '2017', '2019-10-01', 'nil', '6', 1, 1),
(270, 14, 132, 2, 1, '2005', '2017', '2022-10-01', '2', '3', 1, 1),
(271, 14, 131, 2, 1, '2005', '2017', '2022-10-01', '1', '3', 1, 1),
(272, 14, 107, 1, 1, '2001', '2014', '2019-10-01', '2', '6', 1, 1),
(273, 14, 115, 1, 1, '1999', '2017', '2022-10-01', '2', '3', 1, 1),
(274, 14, 116, 1, 1, '1995', '2017', '2018-10-01', '2', '4', 1, 1),
(275, 15, 107, 1, 1, '2016', '2018', '2019-10-01', '1', '6', 1, 1),
(276, 15, 55, 1, 12, '2016', '2018', '2023-10-01', '1', '3', 1, 1),
(277, 15, 54, 1, 12, '2016', '2018', '2019-10-01', '1', '6', 1, 1),
(278, 15, 107, 1, 1, '2016', '2018', '2023-10-01', '1', '3', 1, 1),
(279, 16, 30, 2, 2, '2009', '2011', '2016-10-01', '1', '6', 1, 1),
(280, 16, 30, 1, 2, '2004', '2011', '2016-10-01', '1', '6', 1, 1),
(281, 16, 54, 1, 12, '2008', '2010', '2015-10-01', '2', '6', 1, 1),
(282, 16, 55, 1, 12, '2006', '2008', '2013-10-01', '2', '6', 1, 1),
(283, 16, 74, 1, 13, '2010', '2010', '2012-10-01', '1', '6', 1, 1),
(284, 16, 79, 1, 13, '2010', '2010', '2012-10-01', '1', '7', 1, 1),
(285, 16, 80, 2, 14, '2010', '2010', '2012-10-01', '1', '6', 1, 1),
(286, 16, 80, 1, 14, '2004', '2011', '2016-10-01', '1', '6', 1, 1),
(287, 16, 107, 1, 1, '2004', '2011', '2016-10-01', '2', '6', 1, 1),
(288, 16, 107, 2, 1, '2008', '2010', '2015-10-01', '1', '6', 1, 1),
(289, 16, 116, 1, 1, '2012', '2012', '2014-10-01', '1', '6', 1, 1),
(290, 17, 80, 1, 14, '2018', '2018', '2020-10-01', '2', '4', 1, 1),
(291, 17, 101, 1, 17, '2012', '2018', '2019-10-01', '1', '6', 1, 1),
(292, 17, 107, 1, 1, '2018', '2018', '2020-10-01', '2', '4', 1, 1),
(293, 17, 115, 1, 1, '2019', '2019', '2021-10-01', '1', '4', 1, 1),
(294, 17, 54, 1, 12, '2019', '2019', '2021-10-01', '1', '4', 1, 1),
(295, 17, 55, 1, 12, '2019', '2019', '2021-10-01', '1', '4', 1, 1),
(296, 17, 30, 1, 2, '2019', '2019', '2020-10-01', '1', '4', 1, 1),
(297, 17, 32, 1, 2, '2019', '2019', '2020-10-01', '1', '4', 1, 1),
(298, 17, 7, 1, 10, '2011', '2011', '2013-10-01', '1', '6', 1, 1),
(299, 17, 7, 1, 10, '2011', '2011', '2013-10-01', '2', '6', 1, 1),
(300, 17, 8, 1, 10, '2011', '2011', '2013-10-01', '2', '6', 1, 1),
(301, 17, 14, 1, 10, '2011', '2011', '2013-10-01', '2', '6', 1, 1),
(302, 17, 12, 1, 10, '2019', '2019', '2021-10-01', '1', '4', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblreport`
--

CREATE TABLE `tblreport` (
  `id` int(11) NOT NULL,
  `programme_reportid` int(11) DEFAULT NULL,
  `institutionsid` int(11) NOT NULL,
  `dateofvisit` date NOT NULL,
  `endDate` date NOT NULL,
  `yeargranted` text,
  `programme` int(11) NOT NULL,
  `category` int(11) NOT NULL,
  `typeofvisit` varchar(50) NOT NULL,
  `accreditationyear` varchar(20) NOT NULL,
  `teamrecommd` longtext NOT NULL,
  `mgtrecommd` longtext,
  `directorrecommd` longtext,
  `pedc` longtext,
  `stream` int(11) DEFAULT NULL,
  `effectivedate` varchar(20) DEFAULT NULL,
  `remark` longtext,
  `document` varchar(100) DEFAULT NULL,
  `datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `programme_status` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tblschoolcategory`
--

CREATE TABLE `tblschoolcategory` (
  `id` int(11) NOT NULL,
  `category` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblschoolcategory`
--

INSERT INTO `tblschoolcategory` (`id`, `category`) VALUES
(1, 'Polytechnics'),
(2, 'Colleges of Education'),
(3, 'Colleges of Health Science'),
(4, 'Other Monotechnics'),
(5, 'Technical Colleges'),
(6, 'IEI'),
(7, 'VEI');

-- --------------------------------------------------------

--
-- Table structure for table `tblsex`
--

CREATE TABLE `tblsex` (
  `id` int(11) NOT NULL,
  `sex` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblsex`
--

INSERT INTO `tblsex` (`id`, `sex`) VALUES
(1, 'Male'),
(2, 'Female');

-- --------------------------------------------------------

--
-- Table structure for table `tblstaff`
--

CREATE TABLE `tblstaff` (
  `id` int(11) NOT NULL,
  `fullname` varchar(55) NOT NULL,
  `staffid` varchar(100) NOT NULL,
  `divisionid` int(11) NOT NULL,
  `deptid` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(30) NOT NULL,
  `address` varchar(100) NOT NULL,
  `datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblstaff`
--

INSERT INTO `tblstaff` (`id`, `fullname`, `staffid`, `divisionid`, `deptid`, `email`, `phone`, `address`, `datetime`) VALUES
(8, 'Mark Chukwu', 'mark001', 25, 4, 'mark.chukwu@gmail.com', '0803456123', 'adress', '2021-06-06 14:40:36'),
(7, 'Ebipade Miri', 'P.1052', 20, 3, 'miri.ebipade@gmail.com', '08033368517', 'address', '2021-06-06 14:20:08');

-- --------------------------------------------------------

--
-- Table structure for table `tblstaff_divisions`
--

CREATE TABLE `tblstaff_divisions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `divisionName` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tblstaff_divisions`
--

INSERT INTO `tblstaff_divisions` (`id`, `divisionName`, `created_at`, `updated_at`) VALUES
(20, 'ScTD', NULL, NULL),
(21, 'ENTD', NULL, NULL),
(22, 'AACD', NULL, NULL),
(23, 'MSSD', NULL, NULL),
(24, 'ATD', NULL, NULL),
(25, 'ETD', NULL, NULL),
(26, 'HTD', NULL, NULL),
(27, 'PSD', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblstates`
--

CREATE TABLE `tblstates` (
  `StateID` int(11) NOT NULL,
  `State` varchar(25) NOT NULL,
  `Zone` varchar(200) NOT NULL,
  `id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblstates`
--

INSERT INTO `tblstates` (`StateID`, `State`, `Zone`, `id`) VALUES
(1, 'ABIA', '', 1),
(2, 'ADAMAWA', '', 2),
(3, 'AKWA IBOM', '', 3),
(4, 'ANAMBRA', '', 4),
(5, 'BAUCHI', '', 5),
(6, 'BAYELSA', '', 6),
(7, 'BENUE', '', 7),
(8, 'BORNO', '', 8),
(9, 'CROSS RIVER', '', 9),
(10, 'DELTA', '', 10),
(11, 'EDO', '', 11),
(12, 'EBONYI', '', 12),
(13, 'EKITI', '', 13),
(14, 'ENUGU', '', 14),
(15, 'GOMBE', '', 15),
(16, 'IMO', '', 16),
(17, 'JIGAWA', '', 17),
(18, 'KADUNA', '', 18),
(19, 'KANO', '', 19),
(20, 'KATSINA', '', 20),
(21, 'KEBBI', '', 21),
(22, 'KOGI', '', 22),
(23, 'KWARA', '', 23),
(24, 'LAGOS', '', 24),
(25, 'NIGER', '', 25),
(26, 'OGUN', '', 26),
(27, 'ONDO', '', 27),
(28, 'OSUN', '', 28),
(29, 'OYO', '', 29),
(30, 'NASARAWA', '', 30),
(31, 'PLATEAU', '', 31),
(32, 'RIVERS', '', 32),
(33, 'SOKOTO', '', 33),
(35, 'YOBE', '', 35),
(36, 'ZAMFARA', '', 36),
(38, 'ABUJA', '', 37),
(34, 'TARABA', '', 41);

-- --------------------------------------------------------

--
-- Table structure for table `tblstatus`
--

CREATE TABLE `tblstatus` (
  `id` int(11) NOT NULL,
  `status` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblstatus`
--

INSERT INTO `tblstatus` (`id`, `status`) VALUES
(1, 'Interim'),
(2, 'Expired'),
(3, 'Accredited');

-- --------------------------------------------------------

--
-- Table structure for table `tblsubjects`
--

CREATE TABLE `tblsubjects` (
  `id` int(11) NOT NULL,
  `schid` int(11) NOT NULL,
  `subjects` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblsubjects`
--

INSERT INTO `tblsubjects` (`id`, `schid`, `subjects`) VALUES
(1, 1, 'English Language'),
(2, 1, 'Mathematics'),
(3, 1, 'CRK'),
(4, 1, 'French'),
(5, 1, 'Biology'),
(6, 1, 'Physics'),
(7, 1, 'Health Education'),
(8, 1, 'Geography');

-- --------------------------------------------------------

--
-- Table structure for table `tblteam`
--

CREATE TABLE `tblteam` (
  `id` int(11) NOT NULL,
  `divisionid` int(11) NOT NULL,
  `programmeid` int(11) NOT NULL,
  `programmetype` int(11) NOT NULL,
  `fullname` text NOT NULL,
  `phone` varchar(55) NOT NULL,
  `email` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblteam`
--

INSERT INTO `tblteam` (`id`, `divisionid`, `programmeid`, `programmetype`, `fullname`, `phone`, `email`, `address`) VALUES
(3, 12, 48, 1, 'Chika', '08122415261', 'gmiri.ebipade@gmail.com', 'add');

-- --------------------------------------------------------

--
-- Table structure for table `tblteamreport_status`
--

CREATE TABLE `tblteamreport_status` (
  `id` int(11) NOT NULL,
  `status` varchar(100) NOT NULL,
  `year` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblteamreport_status`
--

INSERT INTO `tblteamreport_status` (`id`, `status`, `year`) VALUES
(2, 'Grant Approval to commence', 2),
(3, 'Grant Accreditation', 5),
(4, 'Grant Interim Accreditation for one year', 1),
(5, 'Deny', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbltitles`
--

CREATE TABLE `tbltitles` (
  `id` int(11) NOT NULL,
  `title` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbltitles`
--

INSERT INTO `tbltitles` (`id`, `title`) VALUES
(1, 'Mr'),
(2, 'Mrs'),
(3, 'Barr'),
(4, 'Doctor'),
(5, 'Rev'),
(6, 'Pastor'),
(7, 'Archtect'),
(8, 'Surveyor');

-- --------------------------------------------------------

--
-- Table structure for table `tblvisitype`
--

CREATE TABLE `tblvisitype` (
  `id` int(11) NOT NULL,
  `type` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblvisitype`
--

INSERT INTO `tblvisitype` (`id`, `type`) VALUES
(1, 'Full Accreditation'),
(2, 'Re Accreditation'),
(3, 'Resource Inspection');

-- --------------------------------------------------------

--
-- Table structure for table `tblzones`
--

CREATE TABLE `tblzones` (
  `id` int(11) NOT NULL,
  `zones` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblzones`
--

INSERT INTO `tblzones` (`id`, `zones`) VALUES
(4, 'North East'),
(3, 'North West'),
(5, 'North Central'),
(6, 'South East'),
(7, 'South West'),
(8, 'South South');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `userID` int(11) DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` int(11) DEFAULT NULL,
  `SchoolID` int(11) DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `userID`, `name`, `email`, `email_verified_at`, `password`, `role`, `SchoolID`, `remember_token`, `created_at`, `updated_at`) VALUES
(39, NULL, 'Julius Fasema', 'samjusoftware.com@gmail.com', NULL, '$2y$10$KWfaPjGtVIw3TvHFuX.t7.QiSQU3GSc4kD5T.ywNGjl.fzwWUBMUW', 0, 1, NULL, NULL, NULL),
(61, 12, 'Admin', 'admin@jomilinkventures.com', NULL, '$2y$10$erVha73ufBIGLk/Xb9cEnuWp56XDZvm6ZaRmNPrcpdspvqeHGGsAe', 1, 1, NULL, NULL, NULL),
(64, 13, 'Sub Admin', 'subadmin@jomilinkventures.com', NULL, '$2y$10$erVha73ufBIGLk/Xb9cEnuWp56XDZvm6ZaRmNPrcpdspvqeHGGsAe', 4, 1, NULL, NULL, NULL),
(66, 6, 'Chika Nonso', 'chika.nonso@gmail.com', NULL, '$2y$10$b8wKE1YAY/pGReP5gEyKieQNyPwA.Cdgd0GBze51A6wZ3X8QfGb3C', 7, NULL, NULL, NULL, NULL),
(67, 7, 'Ebipade Miri', 'miri.ebipade@gmail.com', NULL, '$2y$10$UVXD8eH5Yxa6Pwdl9OkzmOHbtzySeI0hUo/PvbeuJdzNGkgz2NKB.', 7, NULL, NULL, NULL, NULL),
(68, 8, 'Mark Chukwu', 'mark.chukwu@gmail.com', NULL, '$2y$10$C1ul/aNzTG5R1gq4ViQ2B.AMKI3q9gqb1xcfL4OjsBxaysTZv6ed6', 7, NULL, NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `assignmodules`
--
ALTER TABLE `assignmodules`
  ADD PRIMARY KEY (`assignModuleID`);

--
-- Indexes for table `assignrole`
--
ALTER TABLE `assignrole`
  ADD PRIMARY KEY (`assignRoleID`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `modules`
--
ALTER TABLE `modules`
  ADD PRIMARY KEY (`moduleID`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`roleID`);

--
-- Indexes for table `staff_divisions`
--
ALTER TABLE `staff_divisions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblaccreditation_status`
--
ALTER TABLE `tblaccreditation_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblassignedteam`
--
ALTER TABLE `tblassignedteam`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblbanklist`
--
ALTER TABLE `tblbanklist`
  ADD PRIMARY KEY (`bankID`);

--
-- Indexes for table `tbldept`
--
ALTER TABLE `tbldept`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbldirectors`
--
ALTER TABLE `tbldirectors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbldivision`
--
ALTER TABLE `tbldivision`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbldivisionhead`
--
ALTER TABLE `tbldivisionhead`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbldivision_programme`
--
ALTER TABLE `tbldivision_programme`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblinstitutions`
--
ALTER TABLE `tblinstitutions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblinstitution_details`
--
ALTER TABLE `tblinstitution_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbllga`
--
ALTER TABLE `tbllga`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblmembers`
--
ALTER TABLE `tblmembers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblownership`
--
ALTER TABLE `tblownership`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblpedc`
--
ALTER TABLE `tblpedc`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblprogramme`
--
ALTER TABLE `tblprogramme`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblprogrammecategory`
--
ALTER TABLE `tblprogrammecategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblprogrammesreport`
--
ALTER TABLE `tblprogrammesreport`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblreport`
--
ALTER TABLE `tblreport`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblschoolcategory`
--
ALTER TABLE `tblschoolcategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblsex`
--
ALTER TABLE `tblsex`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblstaff`
--
ALTER TABLE `tblstaff`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblstaff_divisions`
--
ALTER TABLE `tblstaff_divisions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblstates`
--
ALTER TABLE `tblstates`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `tblstatus`
--
ALTER TABLE `tblstatus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblsubjects`
--
ALTER TABLE `tblsubjects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblteam`
--
ALTER TABLE `tblteam`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblteamreport_status`
--
ALTER TABLE `tblteamreport_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbltitles`
--
ALTER TABLE `tbltitles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblvisitype`
--
ALTER TABLE `tblvisitype`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblzones`
--
ALTER TABLE `tblzones`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `assignmodules`
--
ALTER TABLE `assignmodules`
  MODIFY `assignModuleID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=119;

--
-- AUTO_INCREMENT for table `assignrole`
--
ALTER TABLE `assignrole`
  MODIFY `assignRoleID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `modules`
--
ALTER TABLE `modules`
  MODIFY `moduleID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `roleID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `staff_divisions`
--
ALTER TABLE `staff_divisions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `tblaccreditation_status`
--
ALTER TABLE `tblaccreditation_status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tblassignedteam`
--
ALTER TABLE `tblassignedteam`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `tbldept`
--
ALTER TABLE `tbldept`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbldirectors`
--
ALTER TABLE `tbldirectors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbldivision`
--
ALTER TABLE `tbldivision`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `tbldivisionhead`
--
ALTER TABLE `tbldivisionhead`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbldivision_programme`
--
ALTER TABLE `tbldivision_programme`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=141;

--
-- AUTO_INCREMENT for table `tblinstitutions`
--
ALTER TABLE `tblinstitutions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=678;

--
-- AUTO_INCREMENT for table `tblinstitution_details`
--
ALTER TABLE `tblinstitution_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbllga`
--
ALTER TABLE `tbllga`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=775;

--
-- AUTO_INCREMENT for table `tblmembers`
--
ALTER TABLE `tblmembers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `tblownership`
--
ALTER TABLE `tblownership`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tblpedc`
--
ALTER TABLE `tblpedc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tblprogramme`
--
ALTER TABLE `tblprogramme`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblprogrammecategory`
--
ALTER TABLE `tblprogrammecategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tblprogrammesreport`
--
ALTER TABLE `tblprogrammesreport`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=307;

--
-- AUTO_INCREMENT for table `tblreport`
--
ALTER TABLE `tblreport`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tblschoolcategory`
--
ALTER TABLE `tblschoolcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tblsex`
--
ALTER TABLE `tblsex`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblstaff`
--
ALTER TABLE `tblstaff`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tblstaff_divisions`
--
ALTER TABLE `tblstaff_divisions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `tblstates`
--
ALTER TABLE `tblstates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `tblstatus`
--
ALTER TABLE `tblstatus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tblsubjects`
--
ALTER TABLE `tblsubjects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tblteam`
--
ALTER TABLE `tblteam`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tblteamreport_status`
--
ALTER TABLE `tblteamreport_status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbltitles`
--
ALTER TABLE `tbltitles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tblvisitype`
--
ALTER TABLE `tblvisitype`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tblzones`
--
ALTER TABLE `tblzones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
