-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 21, 2024 at 05:13 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ajrprofile`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add secound page', 7, 'add_secoundpage'),
(26, 'Can change secound page', 7, 'change_secoundpage'),
(27, 'Can delete secound page', 7, 'delete_secoundpage'),
(28, 'Can view secound page', 7, 'view_secoundpage'),
(29, 'Can add fourth page', 8, 'add_fourthpage'),
(30, 'Can change fourth page', 8, 'change_fourthpage'),
(31, 'Can delete fourth page', 8, 'delete_fourthpage'),
(32, 'Can view fourth page', 8, 'view_fourthpage'),
(33, 'Can add five page', 9, 'add_fivepage'),
(34, 'Can change five page', 9, 'change_fivepage'),
(35, 'Can delete five page', 9, 'delete_fivepage'),
(36, 'Can view five page', 9, 'view_fivepage'),
(37, 'Can add six page', 10, 'add_sixpage'),
(38, 'Can change six page', 10, 'change_sixpage'),
(39, 'Can delete six page', 10, 'delete_sixpage'),
(40, 'Can view six page', 10, 'view_sixpage'),
(41, 'Can add mobile buyers', 11, 'add_mobilebuyers'),
(42, 'Can change mobile buyers', 11, 'change_mobilebuyers'),
(43, 'Can delete mobile buyers', 11, 'delete_mobilebuyers'),
(44, 'Can view mobile buyers', 11, 'view_mobilebuyers'),
(45, 'Can add medicine buyers', 12, 'add_medicinebuyers'),
(46, 'Can change medicine buyers', 12, 'change_medicinebuyers'),
(47, 'Can delete medicine buyers', 12, 'delete_medicinebuyers'),
(48, 'Can view medicine buyers', 12, 'view_medicinebuyers'),
(49, 'Can add group companies', 13, 'add_groupcompanies'),
(50, 'Can change group companies', 13, 'change_groupcompanies'),
(51, 'Can delete group companies', 13, 'delete_groupcompanies'),
(52, 'Can view group companies', 13, 'view_groupcompanies'),
(53, 'Can add shoes companies', 14, 'add_shoescompanies'),
(54, 'Can change shoes companies', 14, 'change_shoescompanies'),
(55, 'Can delete shoes companies', 14, 'delete_shoescompanies'),
(56, 'Can view shoes companies', 14, 'view_shoescompanies'),
(57, 'Can add computer accessories', 15, 'add_computeraccessories'),
(58, 'Can change computer accessories', 15, 'change_computeraccessories'),
(59, 'Can delete computer accessories', 15, 'delete_computeraccessories'),
(60, 'Can view computer accessories', 15, 'view_computeraccessories'),
(61, 'Can add cosmetic companies', 16, 'add_cosmeticcompanies'),
(62, 'Can change cosmetic companies', 16, 'change_cosmeticcompanies'),
(63, 'Can delete cosmetic companies', 16, 'delete_cosmeticcompanies'),
(64, 'Can view cosmetic companies', 16, 'view_cosmeticcompanies'),
(65, 'Can add general parcel companies', 17, 'add_generalparcelcompanies'),
(66, 'Can change general parcel companies', 17, 'change_generalparcelcompanies'),
(67, 'Can delete general parcel companies', 17, 'delete_generalparcelcompanies'),
(68, 'Can view general parcel companies', 17, 'view_generalparcelcompanies'),
(69, 'Can add contact us', 18, 'add_contactus'),
(70, 'Can change contact us', 18, 'change_contactus'),
(71, 'Can delete contact us', 18, 'delete_contactus'),
(72, 'Can view contact us', 18, 'view_contactus'),
(73, 'Can add head office', 19, 'add_headoffice'),
(74, 'Can change head office', 19, 'change_headoffice'),
(75, 'Can delete head office', 19, 'delete_headoffice'),
(76, 'Can view head office', 19, 'view_headoffice'),
(77, 'Can add probihited restricted', 20, 'add_probihitedrestricted'),
(78, 'Can change probihited restricted', 20, 'change_probihitedrestricted'),
(79, 'Can delete probihited restricted', 20, 'delete_probihitedrestricted'),
(80, 'Can view probihited restricted', 20, 'view_probihitedrestricted'),
(81, 'Can add specification services', 21, 'add_specificationservices'),
(82, 'Can change specification services', 21, 'change_specificationservices'),
(83, 'Can delete specification services', 21, 'delete_specificationservices'),
(84, 'Can view specification services', 21, 'view_specificationservices'),
(85, 'Can add kg1000 vehiele', 22, 'add_kg1000vehiele'),
(86, 'Can change kg1000 vehiele', 22, 'change_kg1000vehiele'),
(87, 'Can delete kg1000 vehiele', 22, 'delete_kg1000vehiele'),
(88, 'Can view kg1000 vehiele', 22, 'view_kg1000vehiele'),
(89, 'Can add kg1500 vehiele', 23, 'add_kg1500vehiele'),
(90, 'Can change kg1500 vehiele', 23, 'change_kg1500vehiele'),
(91, 'Can delete kg1500 vehiele', 23, 'delete_kg1500vehiele'),
(92, 'Can view kg1500 vehiele', 23, 'view_kg1500vehiele'),
(93, 'Can add kg3000 vehiele', 24, 'add_kg3000vehiele'),
(94, 'Can change kg3000 vehiele', 24, 'change_kg3000vehiele'),
(95, 'Can delete kg3000 vehiele', 24, 'delete_kg3000vehiele'),
(96, 'Can view kg3000 vehiele', 24, 'view_kg3000vehiele'),
(97, 'Can add kg7000 vehiele', 25, 'add_kg7000vehiele'),
(98, 'Can change kg7000 vehiele', 25, 'change_kg7000vehiele'),
(99, 'Can delete kg7000 vehiele', 25, 'delete_kg7000vehiele'),
(100, 'Can view kg7000 vehiele', 25, 'view_kg7000vehiele'),
(101, 'Can add office address', 26, 'add_officeaddress'),
(102, 'Can change office address', 26, 'change_officeaddress'),
(103, 'Can delete office address', 26, 'delete_officeaddress'),
(104, 'Can view office address', 26, 'view_officeaddress');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$720000$Q6xBN0RRznHyOMHcF1mzXP$03N/JnnqJmsodEQNqRulNU1eD3NRgzCNXZS2qyWFST0=', '2024-03-18 09:17:32.236274', 1, 'admin', '', '', 'admin@gmail.com', 1, 1, '2024-03-18 04:39:27.160900');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `base_computeraccessories`
--

CREATE TABLE `base_computeraccessories` (
  `id` bigint(20) NOT NULL,
  `Companies_Name` varchar(127) DEFAULT NULL,
  `Companies_address` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `base_computeraccessories`
--

INSERT INTO `base_computeraccessories` (`id`, `Companies_Name`, `Companies_address`) VALUES
(1, 'Walton Computer', 'Chandra, Gazipur'),
(2, 'Smart Technology', 'Tejgaon, Dhaka.'),
(3, 'Global Brand Ltd.', 'West Panthopath, Dhaka.');

-- --------------------------------------------------------

--
-- Table structure for table `base_contactus`
--

CREATE TABLE `base_contactus` (
  `id` bigint(20) NOT NULL,
  `Office_Name` varchar(127) DEFAULT NULL,
  `phone_no` varchar(27) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `base_contactus`
--

INSERT INTO `base_contactus` (`id`, `Office_Name`, `phone_no`) VALUES
(1, 'Head Office', '01733-384820/80/61'),
(2, 'Marketing Department', '01733-384884'),
(3, 'Accounts & finance', '01733-384876/94/82'),
(4, 'Billing Department', '01733-384868/5137'),
(5, 'Condition Department', '01733-384821/22'),
(6, 'Collection Department', '01733-384801/5005/873'),
(7, 'Night Operation', '01733-384809/04/19'),
(8, 'Logistics department', '01733-384999/900/916');

-- --------------------------------------------------------

--
-- Table structure for table `base_cosmeticcompanies`
--

CREATE TABLE `base_cosmeticcompanies` (
  `id` bigint(20) NOT NULL,
  `Companies_Name` varchar(127) DEFAULT NULL,
  `Companies_address` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `base_cosmeticcompanies`
--

INSERT INTO `base_cosmeticcompanies` (`id`, `Companies_Name`, `Companies_address`) VALUES
(1, 'LIGION HERBAL LTD.', '44-F 4/2. Indira Road, Panthapath, Dhaka-1215.'),
(2, 'Rigs Marketing Ltd.', 'Tejgaon, Dhaka.'),
(3, 'International Brands Ltd. (MGH Group)', 'Jahangir Tower 5th Floor, 10 Kazi Nazrul Islam Avenue,Kawran Bazar, Dhaka-1215.'),
(4, 'AS Enterprise(Nevia)', '33/35, Jafari Bhaban, Kawaran Bazar, Tejgaon,Dhaka-1207.'),
(5, 'Mumtaz Herbal Products', 'House # 20, (3rd Floor), Road-1/A, Block-J, Baridhara, Dhaka-1212.'),
(6, 'International Brands (Pvt) Limited', 'MGH Tongi Bisic.'),
(7, 'Muslim Cosmetics & Herbal care', 'Plaza A.R. Dhaka 1209.');

-- --------------------------------------------------------

--
-- Table structure for table `base_fivepage`
--

CREATE TABLE `base_fivepage` (
  `id` bigint(20) NOT NULL,
  `Our_Vision` longtext DEFAULT NULL,
  `Our_mission` longtext DEFAULT NULL,
  `Our_team` longtext DEFAULT NULL,
  `vision_image` varchar(100) DEFAULT NULL,
  `mission_image` varchar(100) DEFAULT NULL,
  `team_image` varchar(100) DEFAULT NULL,
  `six_page_details` longtext DEFAULT NULL,
  `six_page_image` varchar(100) DEFAULT NULL,
  `six_page_title` varchar(127) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `base_fivepage`
--

INSERT INTO `base_fivepage` (`id`, `Our_Vision`, `Our_mission`, `Our_team`, `vision_image`, `mission_image`, `team_image`, `six_page_details`, `six_page_image`, `six_page_title`) VALUES
(1, 'Our vision is to provide unrivaled courier services to clients around the world through professional approach & delivering in time to all destinations around the world.', 'To become the most economical courier/ parcel service provider in the world that offers wide range of time saving services through excellence and perfection.\r\n\r\nThrough our regional & international network, we aim high to become one of the world’s leading courier service providers through customized service that meets the changing nature of courier industry.', 'Our team consists of dedicated personnel who work together in complete synergy and coordination with a strong sense of shared responsibility. We learn from each other and share our skills & knowledge for our customer’s benefit.', 'mountains-slopes-Old_HYXtnM7.webp', 'mountains-slopes-Old_NX5Ecsq.webp', 'factory.webp', '\"You can send your parcel to anywhere of Bangladesh by us with best competitive price\"\r\n* Our service is the only parcel carry under its own transportation system at the fastest possible time.\r\n** Our service is the only courier that distribute/deliver their services within schedule time.\r\n*** Our service is the only courier that pay compensation in case of loss/wrong delivery on demand.', 'factory_sKsIKyw.webp', 'Lorem ipsum dolor sit amet consectetur adipisicing velit quis aperiam nam.');

-- --------------------------------------------------------

--
-- Table structure for table `base_fourthpage`
--

CREATE TABLE `base_fourthpage` (
  `id` bigint(20) NOT NULL,
  `md` varchar(127) DEFAULT NULL,
  `director` varchar(127) DEFAULT NULL,
  `senior_general_manager` varchar(127) DEFAULT NULL,
  `DGM` varchar(127) DEFAULT NULL,
  `AGM` varchar(127) DEFAULT NULL,
  `Sr_Manager` varchar(127) DEFAULT NULL,
  `Manager` varchar(127) DEFAULT NULL,
  `Assistant_Manager` varchar(127) DEFAULT NULL,
  `Branch_Manager` varchar(127) DEFAULT NULL,
  `Labor_Advisor` varchar(127) DEFAULT NULL,
  `Tax_Advisor` varchar(127) DEFAULT NULL,
  `Vat_Advisor` varchar(127) DEFAULT NULL,
  `Legal_Advisor` varchar(127) DEFAULT NULL,
  `General_Manager` varchar(127) DEFAULT NULL,
  `Manager_site` varchar(127) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `base_fourthpage`
--

INSERT INTO `base_fourthpage` (`id`, `md`, `director`, `senior_general_manager`, `DGM`, `AGM`, `Sr_Manager`, `Manager`, `Assistant_Manager`, `Branch_Manager`, `Labor_Advisor`, `Tax_Advisor`, `Vat_Advisor`, `Legal_Advisor`, `General_Manager`, `Manager_site`) VALUES
(1, 'Managing Director - 1', 'Director - 1', 'Senior General Manager - 1', 'DGM - 2', 'AGM - 4', 'Sr. Manager -3', 'Manager - 10', 'Assistant Manager - 10', 'Branch Manager - 145', 'Labor Advisor - 1', 'Tax Advisor-1', 'Vat Advisor - 2', 'Legal Advisor - 2', 'General Manager - 1', 'Manager - 2.');

-- --------------------------------------------------------

--
-- Table structure for table `base_generalparcelcompanies`
--

CREATE TABLE `base_generalparcelcompanies` (
  `id` bigint(20) NOT NULL,
  `Companies_Name` varchar(127) DEFAULT NULL,
  `Companies_address` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `base_generalparcelcompanies`
--

INSERT INTO `base_generalparcelcompanies` (`id`, `Companies_Name`, `Companies_address`) VALUES
(1, 'Godrej Household (BD)Pvt Ltd.', 'Progoti Tower, L # 4, H # 1, Road # 23, Gulshan-1, Dhaka-1212.'),
(2, 'Rohimafroz Ltd.', 'Jirani bazar, Kasempur, Gazipur.'),
(3, 'Panna Trading Corporation', '9, Rajuk Avenue, Ali Bhaban, Motijheel, Dhaka-1000.'),
(4, 'Anfords Bangladesh Ltd.', 'New DOHS, Mohakhali, Dhaka.');

-- --------------------------------------------------------

--
-- Table structure for table `base_groupcompanies`
--

CREATE TABLE `base_groupcompanies` (
  `id` bigint(20) NOT NULL,
  `Companies_Name` varchar(127) DEFAULT NULL,
  `Companies_address` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `base_groupcompanies`
--

INSERT INTO `base_groupcompanies` (`id`, `Companies_Name`, `Companies_address`) VALUES
(1, 'Perfetti van Melle (BD) Ltd', 'Address : Silver Tower (3rd floor) Gulasan-1, Dhaka-1212.'),
(2, 'Walton Group', 'Chandra, Gazipur'),
(3, 'Meghna Group', 'House # 48, Gorib-e-Newaza Avenue, S.# 13, Uttara, Dhaka-1212.'),
(4, 'Transcom Vebarej (Pepsi)', 'Gulshan Tower, Gulshan 2.'),
(5, 'bKash Ltd.', 'Jahangir Gate, Dhaka'),
(6, 'Aftab Group', '125/A, Islam chamber (13th floor), Motijhill, Dhaka-1000.');

-- --------------------------------------------------------

--
-- Table structure for table `base_headoffice`
--

CREATE TABLE `base_headoffice` (
  `id` bigint(20) NOT NULL,
  `Head_Office_Name` varchar(255) DEFAULT NULL,
  `Head_phone_no` varchar(27) DEFAULT NULL,
  `site_image` varchar(100) DEFAULT NULL,
  `Transport_Office` varchar(255) DEFAULT NULL,
  `transport_phone_no` varchar(27) DEFAULT NULL,
  `hot_line` varchar(27) DEFAULT NULL,
  `thanks_image` varchar(100) DEFAULT NULL,
  `Specification_image` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `base_headoffice`
--

INSERT INTO `base_headoffice` (`id`, `Head_Office_Name`, `Head_phone_no`, `site_image`, `Transport_Office`, `transport_phone_no`, `hot_line`, `thanks_image`, `Specification_image`) VALUES
(2, 'House No.200, Central Road, Mohakhali DOHS, Dhaka-1206.', '01733-384887, 01733-384892.', 'call_71GyT2n.png', '16/1, Station Road, Tejgaon, (Nimtola Jame Mosque) Dhaka-1215.', '01733-384876, 01733-233526', '01733-384885, 01733-384812', 'end-page_vBKLywD.png', 'bali.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `base_kg1000vehiele`
--

CREATE TABLE `base_kg1000vehiele` (
  `id` bigint(20) NOT NULL,
  `Vehicle_Number` varchar(127) DEFAULT NULL,
  `Brand_Name` varchar(127) DEFAULT NULL,
  `Laden_Weight` varchar(127) DEFAULT NULL,
  `Type_Body` varchar(127) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `base_kg1000vehiele`
--

INSERT INTO `base_kg1000vehiele` (`id`, `Vehicle_Number`, `Brand_Name`, `Laden_Weight`, `Type_Body`) VALUES
(1, 'D M MA 13-0475', 'TATA ACE EX2', '1000 KG.', 'Cover Van'),
(2, 'D.M.NA-18-4431', 'TATA ACE EX2', '1000 KG.', 'Cover Van'),
(3, 'D M MA 13-4432', 'TATA ACE EX2', '1000 KG.', 'Cover Van'),
(4, 'D M MA 13-4433', 'TATA ACE EX2', '1000 KG.', 'Cover Van'),
(5, 'D.M.NA-18-4434', 'TATA ACE EX2', '1000 KG.', 'Cover Van'),
(6, 'D.M.NA-18-4435', 'TATA ACE EX2', '1000 KG.', 'Cover Van'),
(7, 'D.M.NA-18-4436', 'TATA ACE EX2', '1000 KG.', 'Cover Van'),
(8, 'D.M.NA-18-4437', 'TATA ACE EX2', '1000 KG.', 'Cover Van'),
(9, 'D.M.NA-18-4463', 'TATA ACE EX2', '1000 KG.', 'Cover Van'),
(10, 'D.M.NA-18-4464', 'TATA ACE EX2', '1000 KG.', 'Cover Van'),
(11, 'D.M.NA-18-4465', 'TATA ACE EX2', '1000 KG.', 'Cover Van'),
(12, 'D.M.NA-20-1969', 'TATA ACE EX2', '1000 KG.', 'Cover Van'),
(13, 'D.M.NA-20-2729', 'TATA ACE EX2', '1000 KG.', 'Cover Van'),
(14, 'D.M.NA-20-4656', 'TATA ACE EX2', '1000 KG.', 'Cover Van'),
(15, 'D.M.NA-20-3867', 'TATA ACE EX2', '1000 KG.', 'Cover Van'),
(16, 'D.M.NA-15-9145', 'TATA ACE EX2', '1000 KG.', 'Cover Van'),
(17, 'D.M.NA-54-4909', 'TATA ACE EX2', '1000 KG.', 'Cover Van'),
(18, 'D.M.MA-54-3673', 'TATA ACE EX2', '1000 KG.', 'Cover Van');

-- --------------------------------------------------------

--
-- Table structure for table `base_kg1500vehiele`
--

CREATE TABLE `base_kg1500vehiele` (
  `id` bigint(20) NOT NULL,
  `Vehicle_Number` varchar(127) DEFAULT NULL,
  `Brand_Name` varchar(127) DEFAULT NULL,
  `Laden_Weight` varchar(127) DEFAULT NULL,
  `Type_Body` varchar(127) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `base_kg1500vehiele`
--

INSERT INTO `base_kg1500vehiele` (`id`, `Vehicle_Number`, `Brand_Name`, `Laden_Weight`, `Type_Body`) VALUES
(1, 'D.M.MA-11-0659', 'DYNA', '1500 KG.', 'Cover Van'),
(2, 'D.M.NA-11-5709', 'FOTON', '1500 KG.', 'Cover Van'),
(3, 'D.M.NA-11-5710', 'FOTON', '1500 KG.', 'Cover Van'),
(4, 'kustia-Na-11-0026', 'TATA-407', '1500 KG.', 'Cover Van'),
(5, 'D.M.NA-13-0494', 'TATA-407', '1500 KG.', 'Cover Van'),
(6, 'D.M.NA-13-0495', 'TATA-407', '1500 KG.', 'Cover Van'),
(7, 'D.M.NA-13-0497', 'TATA-407', '1500 KG.', 'Cover Van'),
(8, 'D.M.NA-14-9053', 'TATA-407', '1500 KG.', 'Cover Van'),
(9, 'D.M.NA-14-1172', 'TATA-407', '1500 KG.', 'Cover Van'),
(10, 'D.M.NA-11-9536', 'TATA-407', '1500 KG.', 'Cover Van'),
(11, 'D.M.NA-11-9537', 'TATA-407', '1500 KG.', 'Cover Van'),
(12, 'D.M.NA-11-9538', 'TATA-407', '1500 KG.', 'Cover Van'),
(13, 'D.M.NA-11-9539', 'TATA-407', '1500 KG.', 'Cover Van'),
(14, 'D.M.NA-11-9540', 'TATA-407', '1500 KG.', 'Cover Van'),
(15, 'D.M.NA-11-6662', 'TATA-407', '1500 KG.', 'Cover Van'),
(16, 'D.M.NA-11-6663', 'TATA-407', '1500 KG.', 'Cover Van'),
(17, 'D.M.NA-11-6664', 'TATA-407', '1500 KG.', 'Cover Van'),
(18, 'D.M.NA-11-6666', 'TATA-407', '1500 KG.', 'Cover Van'),
(19, 'D.M.NA-11-7812', 'TATA-407', '1500 KG.', 'Cover Van'),
(20, 'D.M.NA-11-7813', 'TATA-407', '1500 KG.', 'Cover Van'),
(21, 'D.M.NA-11-7814', 'TATA-407', '1500 KG.', 'Cover Van'),
(22, 'D.M.NA-11-7815', 'TATA-407', '1500 KG.', 'Cover Van'),
(23, 'D.M.NA-11-7816', 'TATA-407', '1500 KG.', 'Cover Van'),
(24, 'D.M.NA-11-7817', 'TATA-407', '1500 KG.', 'Cover Van'),
(25, 'D.M.NA-11-7775', 'TATA-407', '1500 KG.', 'Cover Van'),
(26, 'D.M.NA-11-7776', 'TATA-407', '1500 KG.', 'Cover Van'),
(27, 'D.M.NA-11-7777', 'TATA-407', '1500 KG.', 'Cover Van'),
(28, 'D.M.NA-11-7779', 'TATA-407', '1500 KG.', 'Cover Van'),
(29, 'D.M.NA-13-5170', 'TATA-407', '1500 KG.', 'Cover Van'),
(30, 'D.M.NA-15-7122', 'TATA-407', '1500 KG.', 'Cover Van'),
(31, 'D M NA 20-4311', 'TATA-407', '1500 KG.', 'Cover Van'),
(32, 'D M NA 13-3194', 'TATA-407', '1500 KG.', 'Cover Van'),
(33, 'D M NA 15-6715', 'TATA-407', '1500 KG.', 'Cover Van'),
(34, 'D M NA 17-8987', 'TATA-407', '1500 KG.', 'Cover Van'),
(35, 'D M MA-13-0476', 'TATA-407', '1500 KG.', 'D M MA-13-0476'),
(36, 'D M MA-13-0885', 'TATA-407', '1500 KG.', 'Cover Van'),
(37, 'D.M.NA-15-2604', 'TATA-407', '1500 KG.', 'Cover Van'),
(38, 'D M MA-13-0886', 'TATA-407', '1500 KG.', 'Cover Van');

-- --------------------------------------------------------

--
-- Table structure for table `base_kg3000vehiele`
--

CREATE TABLE `base_kg3000vehiele` (
  `id` bigint(20) NOT NULL,
  `Vehicle_Number` varchar(127) DEFAULT NULL,
  `Brand_Name` varchar(127) DEFAULT NULL,
  `Laden_Weight` varchar(127) DEFAULT NULL,
  `Type_Body` varchar(127) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `base_kg3000vehiele`
--

INSERT INTO `base_kg3000vehiele` (`id`, `Vehicle_Number`, `Brand_Name`, `Laden_Weight`, `Type_Body`) VALUES
(1, 'D M DA 11-4827', 'EICHER-10.75', '3000 KG.', 'Cover Van'),
(2, 'D.M.DA-11-4828', 'EICHER-10.75', '3000 KG.', 'Cover Van'),
(3, 'D.M.DA-11-4829', 'EICHER-10.75', '3000 KG.', 'Cover Van'),
(4, 'D.M.DA-11-4830', 'EICHER-10.75', '3000 KG.', 'Cover Van'),
(5, 'D.M.DA-11-4831', 'EICHER-10.75', '3000 KG.', 'Cover Van'),
(6, 'D.M.DA-11-4948', 'EICHER-10.75', '3000 KG.', 'Cover Van'),
(7, 'D.M.DA-11-4949', 'EICHER-10.75', '3000 KG.', 'Cover Van'),
(8, 'D.M.DA-11-4950', 'EICHER-10.75', '3000 KG.', 'Cover Van'),
(9, 'D.M.DA-11-4951', 'EICHER-10.75', '3000 KG.', 'Cover Van'),
(10, 'D.M.DA-11-4952', 'EICHER-10.75', '3000 KG.', 'Cover Van'),
(11, 'D.M.DA-11-4953', 'EICHER-10.75', '3000 KG.', 'Cover Van'),
(12, 'D.M.DA-11-4954', 'EICHER-10.75', '1500 KG.', 'Cover Van');

-- --------------------------------------------------------

--
-- Table structure for table `base_kg7000vehiele`
--

CREATE TABLE `base_kg7000vehiele` (
  `id` bigint(20) NOT NULL,
  `Vehicle_Number` varchar(127) DEFAULT NULL,
  `Brand_Name` varchar(127) DEFAULT NULL,
  `Laden_Weight` varchar(127) DEFAULT NULL,
  `Type_Body` varchar(127) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `base_kg7000vehiele`
--

INSERT INTO `base_kg7000vehiele` (`id`, `Vehicle_Number`, `Brand_Name`, `Laden_Weight`, `Type_Body`) VALUES
(1, 'DM-TA-13-1904', 'EICHER-20.16', '7000 KG.', 'Cover Van'),
(2, 'DM-TA-13-1906', 'EICHER-20.16', '7000 KG.', 'Cover Van'),
(3, 'DM-TA-13-1907', 'EICHER-20.16', '7000 KG.', 'Cover Van'),
(4, 'DM-TA-13-1908', 'EICHER-20.16', '7000 KG.', 'Cover Van'),
(5, 'DM-TA-13-1909', 'EICHER-20.16', '7000 KG.', 'Cover Van'),
(6, 'DM-TA-13-1910', 'EICHER-20.16', '7000 KG.', 'Cover Van'),
(7, 'DM-TA-13-1911', 'EICHER-20.16', '7000 KG.', 'Cover Van'),
(8, 'DM-TA-13-1912', 'EICHER-20.16', '7000 KG.', 'Cover Van'),
(9, 'DM-TA-13-1913', 'EICHER-20.16', '7000 KG.', 'Cover Van'),
(10, 'DM-TA-13-1914', 'EICHER-20.16', '7000 KG.', 'Cover Van'),
(11, 'DM-TA-13-1915', 'EICHER-20.16', '7000 KG.', 'Cover Van'),
(12, 'DM-TA-13-1916', 'EICHER-20.16', '7000 KG.', 'Cover Van'),
(13, 'D.M.TA-11-8995', 'EICHER-20.16', '3000 KG.', 'Cover Van'),
(14, 'D.M.TA-11-8996', 'EICHER-20.16', '7000 KG.', 'Cover Van'),
(15, 'D.M.TA-11-8997', 'EICHER-20.16', '7000 KG.', 'Cover Van'),
(16, 'D.M.TA-11-8998', 'EICHER-20.16', '7000 KG.', 'Cover Van'),
(17, 'D.M.TA-11-8999', 'EICHER-20.16', '7000 KG.', 'Cover Van'),
(18, 'D.M.TA-11-9000', 'EICHER-20.16', '7000 KG.', 'Cover Van'),
(19, 'D.M.TA-11-9001', 'EICHER-20.16', '7000 KG.', 'Cover Van'),
(20, 'D.M.TA-11-9002', 'EICHER-20.16', '7000 KG.', 'Cover Van'),
(21, 'D.M.TA-11-9003', 'EICHER-20.16', '7000 KG.', 'Cover Van'),
(22, 'D.M.TA-11-9004', 'EICHER-20.16', '7000 KG.', 'Cover Van'),
(23, 'D.M.TA-13-4602', 'LYLND 1616IL', '7000 KG.', 'Cover Van'),
(24, 'D.M.TA-13-4603', 'LYLND 1616IL', '7000 KG.', 'Cover Van'),
(25, 'D.M.TA-13-4604', 'LYLND 1616IL', '7000 KG.', 'Cover Van'),
(26, 'D.M.TA-13-4605', 'LYLND 1616IL', '7000 KG.', 'Cover Van'),
(27, 'D.M.TA-13-4606', 'LYLND 1616IL', '7000 KG.', 'Cover Van'),
(28, 'D.M.DA-13-7131', 'TATA 1615', '7000 KG.', 'Cover Van'),
(29, 'D.M.DA-13-7132', 'TATA 1615', '7000 KG.', 'Cover Van'),
(30, 'D.M.DA-13-7133', 'TATA 1615', '7000 KG.', 'Cover Van'),
(31, 'D.M.DA-13-7134', 'TATA 1615', '7000 KG.', 'Cover Van'),
(32, 'D.M.DA-13-7135', 'TATA 1615', '7000 KG.', 'Cover Van'),
(33, 'D.M.TA-13-6739', 'EICHER-20.16', '7000 KG.', 'Cover Van'),
(34, 'D.M.TA-15-6148', 'EICHER-20.16', '7000 KG.', 'Cover Van'),
(35, 'D.M.TA-15-6150', 'EICHER-20.16', '7000 KG.', 'Cover Van'),
(36, 'D.M.TA-13-7544', 'EICHER-20.16', '7000 KG.', 'Cover Van'),
(37, 'D.M.TA-13-7545', 'EICHER-20.16', '7000 KG.', 'Cover Van'),
(38, 'D.M.TA-13-7553', 'EICHER-20.16', '7000 KG.', 'Cover Van'),
(39, 'D.M.TA-13-7554', 'EICHER-20.16', '7000 KG.', 'Cover Van'),
(40, 'D.M.TA-13-7555', 'EICHER-20.16', '7000 KG.', 'Cover Van'),
(41, 'D.M.TA-13-7556', 'EICHER-20.16', '7000 KG.', 'Cover Van'),
(42, 'D.M.TA-13-7557', 'EICHER-20.16', '7000 KG.', 'Cover Van'),
(43, 'D.M.TA-13-7676', 'EICHER-20.16', '7000 KG.', 'Cover Van'),
(44, 'D.M.TA-13-7677', 'EICHER-20.16', '7000 KG.', 'Cover Van'),
(45, 'D.M.TA-13-7678', 'EICHER-20.16', '7000 KG.', 'Cover Van'),
(46, 'D.M.TA-13-7679', 'EICHER-20.16', '7000 KG.', 'Cover Van'),
(47, 'D.M.TA-13-7680', 'EICHER-20.16', '7000 KG.', 'Cover Van'),
(48, 'D.M.TA-13-7681', 'EICHER-20.16', '7000 KG.', 'Cover Van'),
(49, 'D.M.TA-13-7682', 'EICHER-20.16', '7000 KG.', 'Cover Van'),
(50, 'D.M.TA-13-7683', 'EICHER-20.16', '7000 KG.', 'Cover Van'),
(51, 'D.M.TA-13-7684', 'EICHER-20.16', '7000 KG.', 'Cover Van'),
(52, 'D.M.TA-13-7686', 'EICHER-20.16', '7000 KG.', 'Cover Van'),
(53, 'D.M.TA-13-7763', 'EICHER-20.16', '7000 KG.', 'Cover Van'),
(54, 'D.M.TA-13-7764', 'EICHER-20.16', '7000 KG.', 'Cover Van'),
(55, 'D.M.TA-13-7765', 'EICHER-20.16', '7000 KG.', 'Cover Van'),
(56, 'D.M.TA-13-7766', 'EICHER-20.16', '7000 KG.', 'Cover Van'),
(57, 'D.M.TA-13-7767', 'EICHER-20.16', '7000 KG.', 'Cover Van'),
(58, 'D.M.TA-13-7823', 'EICHER-20.16', '7000 KG.', 'Cover Van'),
(59, 'D.M.TA-13-7824', 'EICHER-20.16', '7000 KG.', 'Cover Van'),
(60, 'D.M.TA-13-7825', 'EICHER-20.16', '7000 KG.', 'Cover Van'),
(61, 'D.M.TA-13-7826', 'EICHER-20.16', '7000 KG.', 'Cover Van'),
(62, 'D.M.TA-13-7827', 'EICHER-20.16', '7000 KG.', 'Cover Van');

-- --------------------------------------------------------

--
-- Table structure for table `base_medicinebuyers`
--

CREATE TABLE `base_medicinebuyers` (
  `id` bigint(20) NOT NULL,
  `Medicine_Buyers_Name` varchar(127) DEFAULT NULL,
  `Medicine_Buyers_address` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `base_medicinebuyers`
--

INSERT INTO `base_medicinebuyers` (`id`, `Medicine_Buyers_Name`, `Medicine_Buyers_address`) VALUES
(1, 'R.B.Group (Walton Mobile)', 'Printers Building (9th floor), 5 Rajuk Avenue, Dhaka-1000'),
(2, 'Oppo Mobile', '144-Police Plaza Concord Tower-B, Floor-9th.'),
(3, 'Delta Pharma Ltd.', 'Delta Pharma Ltd. 	House # 501, Road # 34, New DOHS, Mohakhali, Dhaka-1206.'),
(4, 'Rangs Pharmaceuticals Ltd.', 'Rangs Bhaban, 177/A (Level-5), Bijoysharani, Dhaka-1215.'),
(5, 'Edruc Pharmaceuticals Ltd.', '14, Bijoynagar, Dhaka, Bangladesh'),
(6, 'Medicon Pharmaceuticals Ltd.', '44, Purana Paltan, Dhaka-1000.'),
(7, 'Pharmasia Pharma Ltd.', 'Pharmasia Pharma Ltd.	Sonartori Tower, 12 Bir Uttam CR Dutta Rd\r\nDhaka 1000.');

-- --------------------------------------------------------

--
-- Table structure for table `base_mobilebuyers`
--

CREATE TABLE `base_mobilebuyers` (
  `id` bigint(20) NOT NULL,
  `Mobile_Buyers_Name` varchar(127) DEFAULT NULL,
  `Mobile_Buyers_address` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `base_mobilebuyers`
--

INSERT INTO `base_mobilebuyers` (`id`, `Mobile_Buyers_Name`, `Mobile_Buyers_address`) VALUES
(1, 'R.B.Group (Walton Mobile).', 'Printers Building (9th floor), 5 Rajuk Avenue, Dhaka-1000.'),
(2, 'Oppo Mobile', '144-Police Plaza Concord Tower-B, Floor-9th.'),
(3, 'Realme Mobile', '144-Police Plaza Concord Tower-B, Floor-9th.'),
(4, 'Transsion Bangladesh Limited (I-tel)', 'Concord Baksh Tower, 5th Floor, Plot-11/A, Road-48, Block-CWN, Gulshan-2, Dhaka-1212'),
(5, 'Smart Technology (Micromax)', 'House#03, Road#07, Niketon, Gulshan-01, Dhaka-1212.'),
(6, 'Union Group (Nokia)', '68/1, Gulshan Avenue, Gulshan-01, Dhaka-1212.');

-- --------------------------------------------------------

--
-- Table structure for table `base_officeaddress`
--

CREATE TABLE `base_officeaddress` (
  `id` bigint(20) NOT NULL,
  `Division` varchar(127) DEFAULT NULL,
  `Office_Name` varchar(127) DEFAULT NULL,
  `Office_Address` longtext DEFAULT NULL,
  `Number1` varchar(15) DEFAULT NULL,
  `Number2` varchar(15) DEFAULT NULL,
  `showing_order` int(10) UNSIGNED DEFAULT NULL CHECK (`showing_order` >= 0)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `base_officeaddress`
--

INSERT INTO `base_officeaddress` (`id`, `Division`, `Office_Name`, `Office_Address`, `Number1`, `Number2`, `showing_order`) VALUES
(1, 'Dhaka City', 'Central sorting center', 'Beribadh Main Road, Hazaribag, Dhaka-1209', '01733384883', '01733384852', 1),
(2, 'Dhaka City', 'Hazaribag Office', 'Plot#716,719,722, Beribadh Main Road, Hazaribag, Dhaka-1209', '01733385176', '01733385026', 2),
(3, 'Dhaka City', 'Mohammadpur Office', 'House#10, Beribadh Main Road (end of limited 6no road), Chad Uddan, Mohammadpur, Dhaka-1207', '01733385177', '01733384806', 3),
(4, 'Dhaka City', 'shymoli Office', '24/12, Khilzi Road, Mohammadpur, Dhaka-1207', '01733384850', '01733384893', 4),
(5, 'Dhaka City', 'Kawranbazar Office', 'Bangladesh Fish Devlopment Corporation, opposite of WASA, Kawranbazar, Tejgaon, Dhaka-1215.', '01733384864', '01733384866', 5),
(6, 'Dhaka City', 'Mohakhali Office', 'Hazi Shahabuddin Shoping Complex, 52 Tajuddin Road, Mohakhali, Dhaka.', '01733385196', '01733385195', 6),
(7, 'Dhaka City', 'Chankharpul Office', '79/2, Hosseini Dalan Road, Chankharpool, Dhaka', '01958587478', '01958587479', 7),
(8, 'Dhaka City', 'Malitola Office', '24/1, Malitola Lane, North South Road, Dhaka.', '01733385044', '01733385043', 8),
(9, 'Dhaka City', 'Banglabazar Office', '34/1 Northbrook Hall Road, Madrasa Market,Banglabazar, Dhaka', '01733385123', '01733385164', 9),
(10, 'Dhaka City', 'Chawkbazar Office', '16/B, Shop No. 1, 3 & 4, Chhota Katra, Below Madina Chan Sardar Cold Storage, Chowkbazar, Dhaka.', '01733385023', '01733385024', 10),
(11, 'Dhaka City', 'Motijeel Office', 'Monir Mansion, 18, Dilkusha Commercial Area (opposite Krishi Bhavan), Motijheel, Dhaka.', '01958587385', '01958587386', 11),
(12, 'Dhaka City', 'Malibag Office', '36/B Malibag Chowdhurypara, Dhaka.', '01733385193', '01733385194', 12),
(13, 'Dhaka City', 'Nawabpur  Booking Booth', 'Haji Samsuddin Market, Shop No-10 (Underground) Holding-100/103, Nawabpur, Dhaka.', '01733385046', '01733385079', 13),
(14, 'Dhaka City', 'Gulisthan Office', 'Shop No-S-23, Underground, Gulistan Hall Market, Dhaka', '01733385127', '01733385128', 14),
(15, 'Dhaka City', 'Mirpur-11 Office', 'House No-410-411, Section-7, Beside Bangla Balika Vidyalaya, Mirpur, Dhaka.', '01733384843', '01733384844', 15),
(16, 'Dhaka City', 'Mirpur-10 Office', '89 Magnolia Building, Phalpatti Road, Mirpur-10, Dhaka.', '01733385065', '01733385066', 16),
(17, 'Dhaka City', 'Bijoynogor(Polton) Office', '169/2, Shaheed Syed Nazrul Islam Sarani, Shahenshah Complex, Puran Paltan, Dhaka.', '01733384837', '01733384838', 17),
(18, 'Dhaka City', 'Elephant road Office', '347, Elephant Road, Opposite Eastern Mallika, Dhaka.', '01733385090', '01733385089', 18),
(19, 'Dhaka City', 'Uttara Office', 'House #2, Alaul Avenue, Sector #6, House Building (Next to Uttara University), Uttara, Dhaka', '01733385104', '01733385105', 19),
(20, 'Dhaka City', 'Banglamotor Office', 'Shop No-1, Oriental Bangshal Motor Parts AC Market, 1/1A, New Iskaton Road, Ramna, Dhaka.', '01733384923', '01733384879', 20),
(21, 'Dhaka City', 'Jatrabari Office', '340/A, Adjacent to Sifat Filling Station, Dakshin Jatrabari, Dhaka.', '01733385145', '01733385146', 21),
(22, 'Dhaka City', 'Notunbazar Office', 'Plot No-9361, Madani Avenue, New Bazar, Bhatara, Dhaka (Near Faraji Hospital).', '01958587409', '01958587410', 22),
(23, 'Dhaka City', 'Diabari Office', 'Rafiqul Islam Market, Adjacent to Chandalbhog Pukurpar Mosque, Opposite', '01958587507', '01958587508', 23),
(24, 'Dhaka City', 'Kawranbazar Booking Booth', 'Kabbokos Super Market, Kawran Bazar.', '01733384937', '01733384870', 24),
(25, 'Dhaka City', 'Uttara Booking Booth', 'House #42, Alaul Road, Sector #6, Uttara, Dhaka.', '01958587045', '01958587047', 25),
(26, 'Dhaka City', 'Mirpur-1 Booking Booth', 'Shop No-25, Hazrat Shah Ali College Market, Mirpur-1, Dhaka.', '01958587061', '01958587061', 26),
(27, 'Dhaka City', 'Banglabazar Booking Booth', 'House #16, Northbrook Hall Road (Motor Parts Market) Banglabazar, Dhaka.', '01958587212', '01958587212', 27),
(28, 'Dhaka City', 'Polwel Market Booking Booth', 'In front of Gazi Bhawan, Paltan, Dhaka', '01733385025', '01733385025', 28),
(29, 'Dhaka City', 'Stadium Market Booking Booth', 'Maulana Bhasani Stadium Beside Mosque, Gulistan, Dhaka.', '01733385035', '01733385072', 29),
(30, 'Dhaka City', 'Islampur Booking Booth', 'Holding No. 8/1, Shop No. 7, Waizghat Road, Islampur, Dhaka.', '01958587091', '01958587092', 30),
(31, 'Dhaka City', 'Surgical market Booking Booth', '22/B, Afroza Complex Ground Floor, Topkhana Road, Segunbagicha, Dhaka.', '01958587489', '01958587488', 31),
(32, 'Dhaka City', 'Babubazaer Office', '11 No Zumrail Lane, Babubazar, Dhaka-11000', '01958587537', '01958587538', 32);

-- --------------------------------------------------------

--
-- Table structure for table `base_probihitedrestricted`
--

CREATE TABLE `base_probihitedrestricted` (
  `id` bigint(20) NOT NULL,
  `Probihited_Name` varchar(127) DEFAULT NULL,
  `Restricted_Name` varchar(127) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `base_probihitedrestricted`
--

INSERT INTO `base_probihitedrestricted` (`id`, `Probihited_Name`, `Restricted_Name`) VALUES
(2, 'Ammunition', 'Alcoholic beverages'),
(3, 'Animals', 'Animal products'),
(4, 'Antiques or Fine Works of art', 'Food stuff(including substances used in the preparation of food or drink)'),
(5, 'Asbestos', 'Fragile items'),
(6, 'Bulion Currency', 'Fragile items'),
(7, 'Firearms', 'Fresh flowers'),
(8, 'Furs', 'industrial diamonds'),
(9, 'Hazardos and Combusdible matarials as IATA`s DG', 'Ivory'),
(10, 'Regulations', 'Negotiable instruments'),
(11, 'Human remains or Ashes', 'Perishable items');

-- --------------------------------------------------------

--
-- Table structure for table `base_secoundpage`
--

CREATE TABLE `base_secoundpage` (
  `id` bigint(20) NOT NULL,
  `overview_details` longtext DEFAULT NULL,
  `overview_details2` longtext DEFAULT NULL,
  `company_overview_details3` longtext DEFAULT NULL,
  `overview_image` varchar(100) DEFAULT NULL,
  `first_page_image` varchar(100) DEFAULT NULL,
  `overview_site_image` varchar(100) DEFAULT NULL,
  `md_message` longtext DEFAULT NULL,
  `md_name` varchar(63) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `base_secoundpage`
--

INSERT INTO `base_secoundpage` (`id`, `overview_details`, `overview_details2`, `company_overview_details3`, `overview_image`, `first_page_image`, `overview_site_image`, `md_message`, `md_name`) VALUES
(1, 'A.J.R Parcel & Courier Service Ltd, Was established in the year 2012. It is conceived with an idea to offer affordable and swift courier service e throughout the world. Its head office is House No.200, Central Road, Mohakhali DOHS, Dhaka-1206. A.J.R Parcel & Courier Service Ltd, focuses on providing high-quality service, customer satisfaction and through professionalism & FAST SERVICE strategy that strives to exceed customer’s expectations.\r\n\r\nEvery customer that A.J.R Parcel & Courier Service Ltd, deals with is treated as a partner and not as a customer; it’s this approach that has led A.J.R Parcel & Courier Service Ltd, to become a unique courier company.', 'Through business processes, we endeavor to enhance our organizational agility and operational efficiency. We search for every possible opportunity to reduce costs and increase productivity.\r\n\r\nWe also look forward to find ways to improve our “ABILITY” to add value to our services in order to exceed our customer’s needs & expectations. We take great pride in being a customer – oriented organization, making sure that our customers are satisfied with the task that we execute for them.', 'A.J.R Parcel & Courier Service Ltd, is reliable, prompt, efficient and professionally managed courier company which offers to meet all your requirements. We provide worldwide courier service, worldwide express delivery, Air & Land courier services, documents/ parcels courier service.', 'mountains-slopes-Old_weYzN09.webp', 'end-page_KDrESg1.png', 'corpo.png', '‘‘Our goal is rather simple; provide a courier service that is super-fast in terms of customer service and delivery time while maintaining cost effectiveness. We believe this sets us apart from other courier service providers.’’', 'Shams Uddin Ahammed (Riyadh)');

-- --------------------------------------------------------

--
-- Table structure for table `base_shoescompanies`
--

CREATE TABLE `base_shoescompanies` (
  `id` bigint(20) NOT NULL,
  `Companies_Name` varchar(127) DEFAULT NULL,
  `Companies_address` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `base_shoescompanies`
--

INSERT INTO `base_shoescompanies` (`id`, `Companies_Name`, `Companies_address`) VALUES
(1, 'Apex Footwear Limited', 'House #06, Road#137, Block #Se (D), Gulshan-1, Dhaka-1212.'),
(2, 'Bay Emporium Ltd', 'Tenarimor, Hazaribag.'),
(3, 'Express Leather (Lotto)', 'Tongi, Gazipur.'),
(4, 'Bata', 'Bata Gate, Tongi 1230.');

-- --------------------------------------------------------

--
-- Table structure for table `base_sixpage`
--

CREATE TABLE `base_sixpage` (
  `id` bigint(20) NOT NULL,
  `Delivery_Point_Name` varchar(127) DEFAULT NULL,
  `Point_details` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `base_sixpage`
--

INSERT INTO `base_sixpage` (`id`, `Delivery_Point_Name`, `Point_details`) VALUES
(1, 'Dhaka City Delivery Point', 'Hazaribag,Mohammadpur,Mohakhali,Chawkbazar,Malitola,Malibag,Shymoli,Kawranbazar,Banglabazar,\r\nNawabpur,Gulisthan,Mirpur-11'),
(2, 'Dhaka Division Delivery Point', 'Tongi,Konabari,Gazipur,Mawna,Baipel,Savar,Keranigonj,Manikgonj,Munshigonj,Narayangonj,\r\n		Gawsia,Siddirgonj,Narshingdi,Baburhat,Bhairab,Kishoregonj,Takerhat,Madaripur,'),
(3, 'Chittagong City Delivery Point', 'A.K.Khan,Agrabad,Khatungonj,Kodomtoli,Muradpur,CPEZ,Reazuddin Bazar,Kalurgat.'),
(4, 'Chittagong Division Delivery Point', 'Bhatiari,Sitakunda,Hathazari,Cakaria,Cox\'s-Bazar,Comilla,Feni,Lakshmipur,Chandpur,Hazigonj,\r\n		Chowmohani,Maijdee,B.Baria,cantonment Comilla,Laksam, Baroiyarhat,Rangamati, Khagrachori, Keranirhat.'),
(5, 'Rajshahi Division Delivery Point', 'Rajshahi,Chapai,Natore,Baneshwar,Pabna,Sirajgonj,Ishwardi,Bogra,Naogaon,Joypurhat.'),
(6, 'Rangpur Division Delivery Point', 'Rangpur,Saidpur,Gobindagonj,Dinajpur,Bhirampur,Fulbari,Thakurgaon,Gaibandha,Kurigram, Nilphamari,Panchagar,Lalmonirhat.'),
(8, 'Barisal Division Delivery Point', 'Barisal,Patuakhali,Jhalokathi,Bhola,Charfasion,Barguna,Pirojpur.');

-- --------------------------------------------------------

--
-- Table structure for table `base_specificationservices`
--

CREATE TABLE `base_specificationservices` (
  `id` bigint(20) NOT NULL,
  `Domestic_Letters_name` varchar(127) DEFAULT NULL,
  `Domestic_Letters_values` varchar(255) DEFAULT NULL,
  `International_Letters_name` varchar(127) DEFAULT NULL,
  `International_Letters_values` varchar(255) DEFAULT NULL,
  `Domestic_Documents_name` varchar(127) DEFAULT NULL,
  `Domestic_Documents_values` varchar(255) DEFAULT NULL,
  `Domestic_Parcel_name` varchar(127) DEFAULT NULL,
  `Domestic_Parcel_values` varchar(255) DEFAULT NULL,
  `International_Documents_name` varchar(127) DEFAULT NULL,
  `International_Documents_values` varchar(255) DEFAULT NULL,
  `International_Parcel_name` varchar(127) DEFAULT NULL,
  `International_Parcel_values` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `base_specificationservices`
--

INSERT INTO `base_specificationservices` (`id`, `Domestic_Letters_name`, `Domestic_Letters_values`, `International_Letters_name`, `International_Letters_values`, `Domestic_Documents_name`, `Domestic_Documents_values`, `Domestic_Parcel_name`, `Domestic_Parcel_values`, `International_Documents_name`, `International_Documents_values`, `International_Parcel_name`, `International_Parcel_values`) VALUES
(1, 'Type', 'Person to Person', 'Type', 'Person to Person', 'Type', 'Personal to any Company any Personal Company to Company.', 'Type', 'All items other than that of letters and documents', 'Type', 'Personal to any Company any Personal Company to Company', 'Type', 'All items other than that of letters and documents'),
(2, 'Territory', 'Within Bangladesh', 'Territory', 'International', 'Territory', 'Within Bangladesh', 'Territory', 'Within Bangladesh', 'Territory', 'International', 'Territory', 'International'),
(3, 'Charges', 'According to the tariff table attached to this profile', 'Charges', 'According to the tariff table attached to this profile', 'Charges', 'According to the tariff table attached to this profile', 'Charges', 'According to the tariff table attached to this profile', 'Charges', 'According to the tariff table attached to this profile', 'Charges', 'According to the tariff table attached to this profile'),
(4, 'Weight', 'Up to 200 grams per letter', 'Weight', 'Up to 200 grams per letter', 'Weight', 'Up to 200 grams per letter', 'Weight', 'Below 30 kg', 'Weight', '2 Kgs', 'Weight', '20 kgs'),
(5, 'Condition', 'Letter must be closed', 'Condition', 'Letter must be closed', 'Condition', 'Documents must be sealed in envelops and boxes', 'Condition', 'Must be packed & addressed', 'Condition', 'Documents must be sealed in envelops and boxes', 'Condition', 'Must be packed & addressed');

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2024-03-18 04:43:52.149743', '1', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Saepe obcaecati officia voluptates deleniti consequuntur magnam vitae expedita sint labore repellendus?', 1, '[{\"added\": {}}]', 7, 1),
(2, '2024-03-18 04:50:53.478891', '1', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Saepe obcaecati officia voluptates deleniti consequuntur magnam vitae expedita sint labore repellendus?', 2, '[]', 7, 1),
(3, '2024-03-18 04:53:26.601893', '1', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Saepe obcaecati officia voluptates deleniti consequuntur magnam vitae expedita sint labore repellendus?', 2, '[{\"changed\": {\"fields\": [\"Overview site image\"]}}]', 7, 1),
(4, '2024-03-18 05:00:10.753110', '1', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Saepe obcaecati officia voluptates deleniti consequuntur magnam vitae expedita sint labore repellendus?', 2, '[{\"changed\": {\"fields\": [\"Md name\", \"Md message\"]}}]', 7, 1),
(5, '2024-03-18 05:39:56.567586', '1', 'Managing Director - 1', 1, '[{\"added\": {}}]', 8, 1),
(6, '2024-03-18 05:40:11.300963', '1', 'Managing Director - 1', 2, '[]', 8, 1),
(7, '2024-03-18 05:53:13.885843', '1', 'Managing Director - 1', 2, '[{\"changed\": {\"fields\": [\"Manager site\"]}}]', 8, 1),
(8, '2024-03-18 06:07:32.207223', '1', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Reiciendis, consequuntur dolorum? Eligendi delectus doloremque temporibus quibusdam, maxime consectetur harum, exercitationem quos cumque expli', 1, '[{\"added\": {}}]', 9, 1),
(9, '2024-03-18 06:25:50.739876', '1', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Reiciendis, consequuntur dolorum? Eligendi delectus doloremque temporibus quibusdam, maxime consectetur harum, exercitationem quos cumque expli', 2, '[{\"changed\": {\"fields\": [\"Team image\", \"Six page title\", \"Six page details\"]}}]', 9, 1),
(10, '2024-03-18 06:28:35.959803', '1', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Reiciendis, consequuntur dolorum? Eligendi delectus doloremque temporibus quibusdam, maxime consectetur harum, exercitationem quos cumque expli', 2, '[{\"changed\": {\"fields\": [\"Six page image\"]}}]', 9, 1),
(11, '2024-03-18 06:43:35.580904', '2', 'Dhaka City Delivery Point', 1, '[{\"added\": {}}]', 10, 1),
(12, '2024-03-18 06:44:05.942418', '3', 'Dhaka City Delivery Point', 1, '[{\"added\": {}}]', 10, 1),
(13, '2024-03-18 06:44:09.411779', '4', 'Dhaka City Delivery Point', 1, '[{\"added\": {}}]', 10, 1),
(14, '2024-03-18 06:44:13.829477', '5', 'Dhaka City Delivery Point', 1, '[{\"added\": {}}]', 10, 1),
(15, '2024-03-18 06:44:17.956587', '6', 'Dhaka City Delivery Point', 1, '[{\"added\": {}}]', 10, 1),
(16, '2024-03-18 06:44:21.060621', '7', 'Dhaka City Delivery Point', 1, '[{\"added\": {}}]', 10, 1),
(17, '2024-03-18 06:47:12.348522', '8', 'Dhaka City Delivery Point', 1, '[{\"added\": {}}]', 10, 1),
(18, '2024-03-18 07:12:28.029232', '1', 'R.B.Group (Walton Mobile)', 1, '[{\"added\": {}}]', 11, 1),
(19, '2024-03-18 07:12:42.898287', '2', 'Oppo Mobile', 1, '[{\"added\": {}}]', 11, 1),
(20, '2024-03-18 07:13:02.588307', '3', 'Realme Mobile', 1, '[{\"added\": {}}]', 11, 1),
(21, '2024-03-18 07:13:20.812734', '4', 'Transsion Bangladesh Limited (I-tel)', 1, '[{\"added\": {}}]', 11, 1),
(22, '2024-03-18 07:13:33.580178', '5', 'Smart Technology (Micromax)', 1, '[{\"added\": {}}]', 11, 1),
(23, '2024-03-18 07:13:51.411486', '6', 'Union Group (Nokia)', 1, '[{\"added\": {}}]', 11, 1),
(24, '2024-03-18 07:19:52.559612', '1', 'R.B.Group (Walton Mobile).', 2, '[{\"changed\": {\"fields\": [\"Mobile Buyers Name\"]}}]', 11, 1),
(25, '2024-03-18 07:21:11.070146', '1', 'R.B.Group (Walton Mobile).', 2, '[{\"changed\": {\"fields\": [\"Mobile Buyers address\"]}}]', 11, 1),
(26, '2024-03-18 07:38:15.607168', '1', 'R.B.Group (Walton Mobile)', 1, '[{\"added\": {}}]', 12, 1),
(27, '2024-03-18 07:38:37.356140', '2', 'Oppo Mobile', 1, '[{\"added\": {}}]', 12, 1),
(28, '2024-03-18 07:44:45.594731', '3', 'Delta Pharma Ltd.', 1, '[{\"added\": {}}]', 12, 1),
(29, '2024-03-18 07:46:08.109607', '4', 'Rangs Pharmaceuticals Ltd.', 1, '[{\"added\": {}}]', 12, 1),
(30, '2024-03-18 07:46:31.529216', '5', 'Edruc Pharmaceuticals Ltd.', 1, '[{\"added\": {}}]', 12, 1),
(31, '2024-03-18 07:46:52.096623', '6', 'Medicon Pharmaceuticals Ltd.', 1, '[{\"added\": {}}]', 12, 1),
(32, '2024-03-18 07:47:27.913976', '7', 'Pharmasia Pharma Ltd.', 1, '[{\"added\": {}}]', 12, 1),
(33, '2024-03-18 08:03:59.443201', '1', 'Group_Companies', 1, '[{\"added\": {}}]', 13, 1),
(34, '2024-03-18 08:04:23.398594', '2', 'Group_Companies', 1, '[{\"added\": {}}]', 13, 1),
(35, '2024-03-18 08:04:53.210952', '3', 'Group_Companies', 1, '[{\"added\": {}}]', 13, 1),
(36, '2024-03-18 08:05:16.692551', '4', 'Group_Companies', 1, '[{\"added\": {}}]', 13, 1),
(37, '2024-03-18 08:05:39.905131', '5', 'Group_Companies', 1, '[{\"added\": {}}]', 13, 1),
(38, '2024-03-18 08:06:58.725038', '6', 'Group_Companies', 1, '[{\"added\": {}}]', 13, 1),
(39, '2024-03-18 08:09:18.986090', '6', 'Companies_Name', 2, '[{\"changed\": {\"fields\": [\"Companies Name\", \"Companies address\"]}}]', 13, 1),
(40, '2024-03-18 08:10:16.509299', '6', '•	Perfetti van Melle (BD) Ltd.', 2, '[{\"changed\": {\"fields\": [\"Companies Name\"]}}]', 13, 1),
(41, '2024-03-18 08:10:22.322664', '6', 'Perfetti van Melle (BD) Ltd.', 2, '[{\"changed\": {\"fields\": [\"Companies Name\"]}}]', 13, 1),
(42, '2024-03-18 08:11:28.690896', '5', 'bKash Ltd.', 2, '[{\"changed\": {\"fields\": [\"Companies Name\", \"Companies address\"]}}]', 13, 1),
(43, '2024-03-18 08:13:32.298132', '6', 'Aftab Group', 2, '[{\"changed\": {\"fields\": [\"Companies Name\", \"Companies address\"]}}]', 13, 1),
(44, '2024-03-18 08:14:57.897247', '1', 'Perfetti van Melle (BD) Ltd', 2, '[{\"changed\": {\"fields\": [\"Companies Name\", \"Companies address\"]}}]', 13, 1),
(45, '2024-03-18 08:15:32.522307', '2', 'Walton Group', 2, '[{\"changed\": {\"fields\": [\"Companies Name\", \"Companies address\"]}}]', 13, 1),
(46, '2024-03-18 08:16:00.642537', '3', 'Meghna Group', 2, '[{\"changed\": {\"fields\": [\"Companies Name\", \"Companies address\"]}}]', 13, 1),
(47, '2024-03-18 08:16:49.097311', '4', 'Transcom Vebarej (Pepsi)', 2, '[{\"changed\": {\"fields\": [\"Companies Name\", \"Companies address\"]}}]', 13, 1),
(48, '2024-03-18 08:29:40.831522', '1', 'Apex Footwear Limited', 1, '[{\"added\": {}}]', 14, 1),
(49, '2024-03-18 08:30:08.190759', '2', 'Bay Emporium Ltd', 1, '[{\"added\": {}}]', 14, 1),
(50, '2024-03-18 08:30:32.537421', '3', 'Express Leather (Lotto)', 1, '[{\"added\": {}}]', 14, 1),
(51, '2024-03-18 08:31:08.279624', '4', 'Bata', 1, '[{\"added\": {}}]', 14, 1),
(52, '2024-03-19 04:20:55.700789', '1', 'Walton Computer', 1, '[{\"added\": {}}]', 15, 1),
(53, '2024-03-19 04:21:15.370924', '2', 'Smart Technology', 1, '[{\"added\": {}}]', 15, 1),
(54, '2024-03-19 04:21:41.259208', '3', 'Global Brand Ltd.', 1, '[{\"added\": {}}]', 15, 1),
(55, '2024-03-19 04:32:38.474626', '1', 'LIGION HERBAL LTD.', 1, '[{\"added\": {}}]', 16, 1),
(56, '2024-03-19 04:33:00.033945', '2', 'Rigs Marketing Ltd.', 1, '[{\"added\": {}}]', 16, 1),
(57, '2024-03-19 04:33:20.978599', '3', 'International Brands Ltd. (MGH Group)', 1, '[{\"added\": {}}]', 16, 1),
(58, '2024-03-19 04:33:41.810233', '4', 'AS Enterprise(Nevia)', 1, '[{\"added\": {}}]', 16, 1),
(59, '2024-03-19 04:34:02.497579', '5', 'Mumtaz Herbal Products', 1, '[{\"added\": {}}]', 16, 1),
(60, '2024-03-19 04:34:21.553313', '6', 'International Brands (Pvt) Limited', 1, '[{\"added\": {}}]', 16, 1),
(61, '2024-03-19 04:34:42.626320', '7', 'Muslim Cosmetics & Herbal care', 1, '[{\"added\": {}}]', 16, 1),
(62, '2024-03-19 04:44:13.281811', '1', 'Godrej Household (BD)Pvt Ltd.', 1, '[{\"added\": {}}]', 17, 1),
(63, '2024-03-19 04:44:34.047941', '2', 'Rohimafroz Ltd.', 1, '[{\"added\": {}}]', 17, 1),
(64, '2024-03-19 04:44:56.457577', '3', 'Panna Trading Corporation', 1, '[{\"added\": {}}]', 17, 1),
(65, '2024-03-19 04:45:17.632974', '4', 'Anfords Bangladesh Ltd.', 1, '[{\"added\": {}}]', 17, 1),
(66, '2024-03-19 05:00:50.032493', '1', 'Head Office', 1, '[{\"added\": {}}]', 18, 1),
(67, '2024-03-19 05:01:14.760454', '2', 'Marketing Department', 1, '[{\"added\": {}}]', 18, 1),
(68, '2024-03-19 05:01:36.600208', '3', 'Accounts & finance', 1, '[{\"added\": {}}]', 18, 1),
(69, '2024-03-19 05:01:56.241881', '4', 'Billing Department', 1, '[{\"added\": {}}]', 18, 1),
(70, '2024-03-19 05:02:17.440291', '5', 'Condition Department', 1, '[{\"added\": {}}]', 18, 1),
(71, '2024-03-19 05:02:35.927876', '6', 'Collection Department', 1, '[{\"added\": {}}]', 18, 1),
(72, '2024-03-19 05:02:55.896484', '7', 'Night Operation', 1, '[{\"added\": {}}]', 18, 1),
(73, '2024-03-19 05:03:18.457540', '8', 'Logistics department', 1, '[{\"added\": {}}]', 18, 1),
(74, '2024-03-19 05:19:07.437826', '2', 'House No.200, Central Road, Mohakhali DOHS, Dhaka-1206.', 1, '[{\"added\": {}}]', 19, 1),
(75, '2024-03-19 05:41:13.483665', '2', 'House No.200, Central Road, Mohakhali DOHS, Dhaka-1206.', 2, '[]', 19, 1),
(76, '2024-03-19 05:42:04.859119', '2', 'Ammunition', 1, '[{\"added\": {}}]', 20, 1),
(77, '2024-03-19 05:42:22.133326', '3', 'Animals', 1, '[{\"added\": {}}]', 20, 1),
(78, '2024-03-19 05:42:36.133489', '4', 'Antiques or Fine Works of art', 1, '[{\"added\": {}}]', 20, 1),
(79, '2024-03-19 05:42:51.828963', '5', 'Asbestos', 1, '[{\"added\": {}}]', 20, 1),
(80, '2024-03-19 05:43:13.653692', '6', 'Bulion Currency', 1, '[{\"added\": {}}]', 20, 1),
(81, '2024-03-19 05:43:28.364809', '7', 'Firearms', 1, '[{\"added\": {}}]', 20, 1),
(82, '2024-03-19 05:43:45.858843', '8', 'Furs', 1, '[{\"added\": {}}]', 20, 1),
(83, '2024-03-19 05:44:04.236843', '9', 'Hazardos and Combusdible matarials as IATA`s DG', 1, '[{\"added\": {}}]', 20, 1),
(84, '2024-03-19 05:44:18.061764', '10', 'Regulations', 1, '[{\"added\": {}}]', 20, 1),
(85, '2024-03-19 05:44:34.532860', '11', 'Human remains or Ashes', 1, '[{\"added\": {}}]', 20, 1),
(86, '2024-03-19 06:21:45.166842', '1', 'Type', 1, '[{\"added\": {}}]', 21, 1),
(87, '2024-03-19 06:27:03.294983', '2', 'Territory', 1, '[{\"added\": {}}]', 21, 1),
(88, '2024-03-19 06:28:06.301171', '3', 'Charges', 1, '[{\"added\": {}}]', 21, 1),
(89, '2024-03-19 06:31:11.782954', '4', 'Weight', 1, '[{\"added\": {}}]', 21, 1),
(90, '2024-03-19 06:32:44.787982', '5', 'Condition', 1, '[{\"added\": {}}]', 21, 1),
(91, '2024-03-19 06:40:48.837114', '5', 'Condition', 2, '[]', 21, 1),
(92, '2024-03-19 07:05:38.274190', '1', 'D M MA 13-0475', 1, '[{\"added\": {}}]', 22, 1),
(93, '2024-03-19 07:06:48.979217', '2', 'D.M.NA-18-4431', 1, '[{\"added\": {}}]', 22, 1),
(94, '2024-03-19 07:07:46.849013', '3', 'D M MA 13-4432', 1, '[{\"added\": {}}]', 22, 1),
(95, '2024-03-19 07:07:56.673609', '4', 'D M MA 13-4433', 1, '[{\"added\": {}}]', 22, 1),
(96, '2024-03-19 07:08:06.215819', '5', 'D.M.NA-18-4434', 1, '[{\"added\": {}}]', 22, 1),
(97, '2024-03-19 07:08:15.608033', '6', 'D.M.NA-18-4435', 1, '[{\"added\": {}}]', 22, 1),
(98, '2024-03-19 07:08:23.183575', '7', 'D.M.NA-18-4436', 1, '[{\"added\": {}}]', 22, 1),
(99, '2024-03-19 07:09:00.018180', '8', 'D.M.NA-18-4437', 1, '[{\"added\": {}}]', 22, 1),
(100, '2024-03-19 07:10:06.037143', '9', 'D.M.NA-18-4463', 1, '[{\"added\": {}}]', 22, 1),
(101, '2024-03-19 07:10:17.257282', '10', 'D.M.NA-18-4464', 1, '[{\"added\": {}}]', 22, 1),
(102, '2024-03-19 07:10:25.448586', '11', 'D.M.NA-18-4465', 1, '[{\"added\": {}}]', 22, 1),
(103, '2024-03-19 07:10:47.232996', '12', 'D.M.NA-20-1969', 1, '[{\"added\": {}}]', 22, 1),
(104, '2024-03-19 07:11:03.176828', '13', 'D.M.NA-20-2729', 1, '[{\"added\": {}}]', 22, 1),
(105, '2024-03-19 07:11:17.562498', '14', 'D.M.NA-20-4656', 1, '[{\"added\": {}}]', 22, 1),
(106, '2024-03-19 07:11:34.439339', '15', 'D.M.NA-20-3867', 1, '[{\"added\": {}}]', 22, 1),
(107, '2024-03-19 07:11:50.824386', '16', 'D.M.NA-15-9145', 1, '[{\"added\": {}}]', 22, 1),
(108, '2024-03-19 07:12:07.808241', '17', 'D.M.NA-54-4909', 1, '[{\"added\": {}}]', 22, 1),
(109, '2024-03-19 07:12:19.401045', '18', 'D.M.MA-54-3673', 1, '[{\"added\": {}}]', 22, 1),
(110, '2024-03-19 07:17:57.696197', '1', 'D.M.MA-11-0659', 1, '[{\"added\": {}}]', 23, 1),
(111, '2024-03-19 07:18:21.568311', '2', 'D.M.NA-11-5709', 1, '[{\"added\": {}}]', 23, 1),
(112, '2024-03-19 07:18:44.040509', '3', 'D.M.NA-11-5710', 1, '[{\"added\": {}}]', 23, 1),
(113, '2024-03-19 07:19:13.707402', '4', 'kustia-Na-11-0026', 1, '[{\"added\": {}}]', 23, 1),
(114, '2024-03-19 07:19:33.121137', '5', 'D.M.NA-13-0494', 1, '[{\"added\": {}}]', 23, 1),
(115, '2024-03-19 07:28:40.428047', '6', 'D.M.NA-13-0495', 1, '[{\"added\": {}}]', 23, 1),
(116, '2024-03-19 07:28:59.562687', '7', 'D.M.NA-13-0497', 1, '[{\"added\": {}}]', 23, 1),
(117, '2024-03-19 07:29:12.895841', '8', 'D.M.NA-14-9053', 1, '[{\"added\": {}}]', 23, 1),
(118, '2024-03-19 07:29:24.943323', '9', 'D.M.NA-14-1172', 1, '[{\"added\": {}}]', 23, 1),
(119, '2024-03-19 07:29:40.466928', '10', 'D.M.NA-11-9536', 1, '[{\"added\": {}}]', 23, 1),
(120, '2024-03-19 07:29:52.886034', '11', 'D.M.NA-11-9537', 1, '[{\"added\": {}}]', 23, 1),
(121, '2024-03-19 07:30:06.431623', '12', 'D.M.NA-11-9538', 1, '[{\"added\": {}}]', 23, 1),
(122, '2024-03-19 07:30:20.430833', '13', 'D.M.NA-11-9539', 1, '[{\"added\": {}}]', 23, 1),
(123, '2024-03-19 07:30:35.167696', '14', 'D.M.NA-11-9540', 1, '[{\"added\": {}}]', 23, 1),
(124, '2024-03-19 07:30:49.454598', '15', 'D.M.NA-11-6662', 1, '[{\"added\": {}}]', 23, 1),
(125, '2024-03-19 07:31:05.927383', '16', 'D.M.NA-11-6663', 1, '[{\"added\": {}}]', 23, 1),
(126, '2024-03-19 07:31:18.470587', '17', 'D.M.NA-11-6664', 1, '[{\"added\": {}}]', 23, 1),
(127, '2024-03-19 07:31:31.014763', '18', 'D.M.NA-11-6666', 1, '[{\"added\": {}}]', 23, 1),
(128, '2024-03-19 07:31:44.047145', '19', 'D.M.NA-11-7812', 1, '[{\"added\": {}}]', 23, 1),
(129, '2024-03-19 07:32:00.671098', '20', 'D.M.NA-11-7813', 1, '[{\"added\": {}}]', 23, 1),
(130, '2024-03-19 07:32:13.823071', '21', 'D.M.NA-11-7814', 1, '[{\"added\": {}}]', 23, 1),
(131, '2024-03-19 07:32:30.286258', '22', 'D.M.NA-11-7815', 1, '[{\"added\": {}}]', 23, 1),
(132, '2024-03-19 07:32:45.958882', '23', 'D.M.NA-11-7816', 1, '[{\"added\": {}}]', 23, 1),
(133, '2024-03-19 07:32:57.854665', '24', 'D.M.NA-11-7817', 1, '[{\"added\": {}}]', 23, 1),
(134, '2024-03-19 07:33:13.208349', '25', 'D.M.NA-11-7775', 1, '[{\"added\": {}}]', 23, 1),
(135, '2024-03-19 07:33:24.534614', '26', 'D.M.NA-11-7776', 1, '[{\"added\": {}}]', 23, 1),
(136, '2024-03-19 07:33:36.622924', '27', 'D.M.NA-11-7777', 1, '[{\"added\": {}}]', 23, 1),
(137, '2024-03-19 07:33:48.440849', '28', 'D.M.NA-11-7779', 1, '[{\"added\": {}}]', 23, 1),
(138, '2024-03-19 07:33:59.166146', '29', 'D.M.NA-13-5170', 1, '[{\"added\": {}}]', 23, 1),
(139, '2024-03-19 07:34:14.839296', '30', 'D.M.NA-15-7122', 1, '[{\"added\": {}}]', 23, 1),
(140, '2024-03-19 07:34:25.454354', '31', 'D M NA 20-4311', 1, '[{\"added\": {}}]', 23, 1),
(141, '2024-03-19 07:34:41.359509', '32', 'D M NA 13-3194', 1, '[{\"added\": {}}]', 23, 1),
(142, '2024-03-19 07:35:01.208657', '33', 'D M NA 15-6715', 1, '[{\"added\": {}}]', 23, 1),
(143, '2024-03-19 07:35:13.323279', '34', 'D M NA 17-8987', 1, '[{\"added\": {}}]', 23, 1),
(144, '2024-03-19 07:35:27.414656', '35', 'D M MA-13-0476', 1, '[{\"added\": {}}]', 23, 1),
(145, '2024-03-19 07:35:39.527085', '36', 'D M MA-13-0885', 1, '[{\"added\": {}}]', 23, 1),
(146, '2024-03-19 07:35:55.438573', '37', 'D.M.NA-15-2604', 1, '[{\"added\": {}}]', 23, 1),
(147, '2024-03-19 07:36:11.607353', '38', 'D M MA-13-0886', 1, '[{\"added\": {}}]', 23, 1),
(148, '2024-03-19 07:42:17.951496', '1', 'D M DA 11-4827', 1, '[{\"added\": {}}]', 24, 1),
(149, '2024-03-19 07:42:45.827367', '2', 'D.M.DA-11-4828', 1, '[{\"added\": {}}]', 24, 1),
(150, '2024-03-19 07:42:58.334551', '3', 'D.M.DA-11-4829', 1, '[{\"added\": {}}]', 24, 1),
(151, '2024-03-19 07:43:19.696100', '4', 'D.M.DA-11-4830', 1, '[{\"added\": {}}]', 24, 1),
(152, '2024-03-19 07:43:34.197925', '5', 'D.M.DA-11-4831', 1, '[{\"added\": {}}]', 24, 1),
(153, '2024-03-19 07:44:02.869600', '6', 'D.M.DA-11-4948', 1, '[{\"added\": {}}]', 24, 1),
(154, '2024-03-19 07:44:15.286038', '7', 'D.M.DA-11-4949', 1, '[{\"added\": {}}]', 24, 1),
(155, '2024-03-19 07:44:28.021405', '8', 'D.M.DA-11-4950', 1, '[{\"added\": {}}]', 24, 1),
(156, '2024-03-19 07:44:39.126216', '9', 'D.M.DA-11-4951', 1, '[{\"added\": {}}]', 24, 1),
(157, '2024-03-19 07:44:50.453708', '10', 'D.M.DA-11-4952', 1, '[{\"added\": {}}]', 24, 1),
(158, '2024-03-19 07:45:01.845738', '11', 'D.M.DA-11-4953', 1, '[{\"added\": {}}]', 24, 1),
(159, '2024-03-19 07:45:35.918987', '12', 'D.M.DA-11-4954', 1, '[{\"added\": {}}]', 24, 1),
(160, '2024-03-19 08:12:24.467329', '1', 'DM-TA-13-1904', 1, '[{\"added\": {}}]', 25, 1),
(161, '2024-03-19 08:12:56.239300', '2', 'DM-TA-13-1906', 1, '[{\"added\": {}}]', 25, 1),
(162, '2024-03-19 08:13:16.277873', '3', 'DM-TA-13-1907', 1, '[{\"added\": {}}]', 25, 1),
(163, '2024-03-19 08:13:30.574389', '4', 'DM-TA-13-1908', 1, '[{\"added\": {}}]', 25, 1),
(164, '2024-03-19 08:13:50.093676', '5', 'DM-TA-13-1909', 1, '[{\"added\": {}}]', 25, 1),
(165, '2024-03-19 08:14:03.671168', '6', 'DM-TA-13-1910', 1, '[{\"added\": {}}]', 25, 1),
(166, '2024-03-19 08:14:16.758192', '7', 'DM-TA-13-1911', 1, '[{\"added\": {}}]', 25, 1),
(167, '2024-03-19 08:14:29.895205', '8', 'DM-TA-13-1912', 1, '[{\"added\": {}}]', 25, 1),
(168, '2024-03-19 08:14:49.681528', '9', 'DM-TA-13-1913', 1, '[{\"added\": {}}]', 25, 1),
(169, '2024-03-19 08:15:01.982671', '10', 'DM-TA-13-1914', 1, '[{\"added\": {}}]', 25, 1),
(170, '2024-03-19 08:15:14.906249', '11', 'DM-TA-13-1915', 1, '[{\"added\": {}}]', 25, 1),
(171, '2024-03-19 08:16:22.433889', '12', 'DM-TA-13-1916', 1, '[{\"added\": {}}]', 25, 1),
(172, '2024-03-19 08:17:03.415697', '13', 'D.M.TA-11-8995', 1, '[{\"added\": {}}]', 25, 1),
(173, '2024-03-19 08:17:16.871379', '14', 'D.M.TA-11-8996', 1, '[{\"added\": {}}]', 25, 1),
(174, '2024-03-19 08:17:39.689642', '15', 'D.M.TA-11-8997', 1, '[{\"added\": {}}]', 25, 1),
(175, '2024-03-19 08:17:54.958575', '16', 'D.M.TA-11-8998', 1, '[{\"added\": {}}]', 25, 1),
(176, '2024-03-19 08:18:06.822569', '17', 'D.M.TA-11-8999', 1, '[{\"added\": {}}]', 25, 1),
(177, '2024-03-19 08:18:32.237511', '18', 'D.M.TA-11-9000', 1, '[{\"added\": {}}]', 25, 1),
(178, '2024-03-19 08:18:44.981674', '19', 'D.M.TA-11-9001', 1, '[{\"added\": {}}]', 25, 1),
(179, '2024-03-19 08:18:56.374359', '20', 'D.M.TA-11-9002', 1, '[{\"added\": {}}]', 25, 1),
(180, '2024-03-19 08:19:14.366761', '21', 'D.M.TA-11-9003', 1, '[{\"added\": {}}]', 25, 1),
(181, '2024-03-19 08:19:27.079591', '22', 'D.M.TA-11-9004', 1, '[{\"added\": {}}]', 25, 1),
(182, '2024-03-19 08:21:01.494875', '23', 'D.M.TA-13-4602', 1, '[{\"added\": {}}]', 25, 1),
(183, '2024-03-19 08:21:37.711277', '24', 'D.M.TA-13-4603', 1, '[{\"added\": {}}]', 25, 1),
(184, '2024-03-19 08:21:47.494660', '25', 'D.M.TA-13-4604', 1, '[{\"added\": {}}]', 25, 1),
(185, '2024-03-19 08:22:05.663563', '26', 'D.M.TA-13-4605', 1, '[{\"added\": {}}]', 25, 1),
(186, '2024-03-19 08:22:16.358817', '27', 'D.M.TA-13-4606', 1, '[{\"added\": {}}]', 25, 1),
(187, '2024-03-19 08:23:30.903291', '14', 'D.M.TA-11-8996', 2, '[{\"changed\": {\"fields\": [\"Type Body\"]}}]', 25, 1),
(188, '2024-03-19 08:23:44.776608', '17', 'D.M.TA-11-8999', 2, '[{\"changed\": {\"fields\": [\"Brand Name\"]}}]', 25, 1),
(189, '2024-03-19 08:47:51.312423', '28', 'D.M.DA-13-7131', 1, '[{\"added\": {}}]', 25, 1),
(190, '2024-03-19 08:48:29.696430', '29', 'D.M.DA-13-7132', 1, '[{\"added\": {}}]', 25, 1),
(191, '2024-03-19 08:48:45.150645', '30', 'D.M.DA-13-7133', 1, '[{\"added\": {}}]', 25, 1),
(192, '2024-03-19 08:49:02.039560', '31', 'D.M.DA-13-7134', 1, '[{\"added\": {}}]', 25, 1),
(193, '2024-03-19 08:49:12.742380', '32', 'D.M.DA-13-7135', 1, '[{\"added\": {}}]', 25, 1),
(194, '2024-03-19 08:49:38.752076', '33', 'D.M.TA-13-6739', 1, '[{\"added\": {}}]', 25, 1),
(195, '2024-03-19 08:50:06.207076', '34', 'D.M.TA-15-6148', 1, '[{\"added\": {}}]', 25, 1),
(196, '2024-03-19 08:50:23.891283', '35', 'D.M.TA-15-6150', 1, '[{\"added\": {}}]', 25, 1),
(197, '2024-03-19 08:50:42.064178', '36', 'D.M.TA-13-7544', 1, '[{\"added\": {}}]', 25, 1),
(198, '2024-03-19 08:50:52.166682', '37', 'D.M.TA-13-7545', 1, '[{\"added\": {}}]', 25, 1),
(199, '2024-03-19 08:51:15.478117', '38', 'D.M.TA-13-7553', 1, '[{\"added\": {}}]', 25, 1),
(200, '2024-03-19 08:51:25.046623', '39', 'D.M.TA-13-7554', 1, '[{\"added\": {}}]', 25, 1),
(201, '2024-03-19 08:51:34.814672', '40', 'D.M.TA-13-7555', 1, '[{\"added\": {}}]', 25, 1),
(202, '2024-03-19 08:51:43.687181', '41', 'D.M.TA-13-7556', 1, '[{\"added\": {}}]', 25, 1),
(203, '2024-03-19 08:51:52.838274', '42', 'D.M.TA-13-7557', 1, '[{\"added\": {}}]', 25, 1),
(204, '2024-03-19 08:52:29.578039', '43', 'D.M.TA-13-7676', 1, '[{\"added\": {}}]', 25, 1),
(205, '2024-03-19 08:52:42.470662', '44', 'D.M.TA-13-7677', 1, '[{\"added\": {}}]', 25, 1),
(206, '2024-03-19 08:52:51.830910', '45', 'D.M.TA-13-7678', 1, '[{\"added\": {}}]', 25, 1),
(207, '2024-03-19 08:53:00.943006', '46', 'D.M.TA-13-7679', 1, '[{\"added\": {}}]', 25, 1),
(208, '2024-03-19 08:53:10.926724', '47', 'D.M.TA-13-7680', 1, '[{\"added\": {}}]', 25, 1),
(209, '2024-03-19 08:54:39.088315', '48', 'D.M.TA-13-7681', 1, '[{\"added\": {}}]', 25, 1),
(210, '2024-03-19 08:54:50.654915', '49', 'D.M.TA-13-7682', 1, '[{\"added\": {}}]', 25, 1),
(211, '2024-03-19 08:55:04.113644', '50', 'D.M.TA-13-7683', 1, '[{\"added\": {}}]', 25, 1),
(212, '2024-03-19 08:55:17.286497', '51', 'D.M.TA-13-7684', 1, '[{\"added\": {}}]', 25, 1),
(213, '2024-03-19 08:55:29.392008', '52', 'D.M.TA-13-7686', 1, '[{\"added\": {}}]', 25, 1),
(214, '2024-03-19 08:57:15.592315', '53', 'D.M.TA-13-7763', 1, '[{\"added\": {}}]', 25, 1),
(215, '2024-03-19 08:57:24.103859', '54', 'D.M.TA-13-7764', 1, '[{\"added\": {}}]', 25, 1),
(216, '2024-03-19 08:57:39.142908', '55', 'D.M.TA-13-7765', 1, '[{\"added\": {}}]', 25, 1),
(217, '2024-03-19 08:57:48.128240', '56', 'D.M.TA-13-7766', 1, '[{\"added\": {}}]', 25, 1),
(218, '2024-03-19 08:58:05.694037', '57', 'D.M.TA-13-7767', 1, '[{\"added\": {}}]', 25, 1),
(219, '2024-03-19 08:59:12.398739', '58', 'D.M.TA-13-7823', 1, '[{\"added\": {}}]', 25, 1),
(220, '2024-03-19 08:59:20.542633', '59', 'D.M.TA-13-7824', 1, '[{\"added\": {}}]', 25, 1),
(221, '2024-03-19 08:59:29.294606', '60', 'D.M.TA-13-7825', 1, '[{\"added\": {}}]', 25, 1),
(222, '2024-03-19 08:59:43.277296', '61', 'D.M.TA-13-7826', 1, '[{\"added\": {}}]', 25, 1),
(223, '2024-03-19 08:59:51.981397', '62', 'D.M.TA-13-7827', 1, '[{\"added\": {}}]', 25, 1),
(224, '2024-03-20 04:10:34.640539', '1', 'Dhaka City', 1, '[{\"added\": {}}]', 26, 1),
(225, '2024-03-20 04:11:49.091079', '2', 'Dhaka City', 1, '[{\"added\": {}}]', 26, 1),
(226, '2024-03-20 04:19:42.444214', '3', 'Dhaka City', 1, '[{\"added\": {}}]', 26, 1),
(227, '2024-03-20 04:24:24.503485', '1', 'Dhaka City', 2, '[{\"changed\": {\"fields\": [\"Showing order\"]}}]', 26, 1),
(228, '2024-03-20 04:24:33.606997', '3', 'Dhaka City', 2, '[{\"changed\": {\"fields\": [\"Showing order\"]}}]', 26, 1),
(229, '2024-03-20 04:26:01.791932', '1', 'Dhaka City', 2, '[{\"changed\": {\"fields\": [\"Showing order\"]}}]', 26, 1),
(230, '2024-03-20 04:26:08.721201', '3', 'Dhaka City', 2, '[{\"changed\": {\"fields\": [\"Showing order\"]}}]', 26, 1),
(231, '2024-03-20 04:30:13.826701', '4', 'Dhaka City', 1, '[{\"added\": {}}]', 26, 1),
(232, '2024-03-20 04:31:01.626110', '5', 'Dhaka City', 1, '[{\"added\": {}}]', 26, 1),
(233, '2024-03-20 04:32:30.928814', '6', 'Dhaka City', 1, '[{\"added\": {}}]', 26, 1),
(234, '2024-03-20 04:33:20.137159', '7', 'Dhaka City', 1, '[{\"added\": {}}]', 26, 1),
(235, '2024-03-20 04:36:12.703075', '8', 'Dhaka City', 1, '[{\"added\": {}}]', 26, 1),
(236, '2024-03-20 04:37:13.904813', '9', 'Dhaka City', 1, '[{\"added\": {}}]', 26, 1),
(237, '2024-03-20 04:38:04.423708', '10', 'Dhaka City', 1, '[{\"added\": {}}]', 26, 1),
(238, '2024-03-20 04:38:55.870259', '11', 'Dhaka City', 1, '[{\"added\": {}}]', 26, 1),
(239, '2024-03-20 05:02:25.403401', '12', 'Dhaka City', 1, '[{\"added\": {}}]', 26, 1),
(240, '2024-03-20 05:03:13.438308', '13', 'Dhaka City', 1, '[{\"added\": {}}]', 26, 1),
(241, '2024-03-20 05:04:19.301249', '14', 'Dhaka City', 1, '[{\"added\": {}}]', 26, 1),
(242, '2024-03-20 05:05:01.223820', '15', 'Dhaka City', 1, '[{\"added\": {}}]', 26, 1),
(243, '2024-03-20 05:06:00.342993', '16', 'Dhaka City', 1, '[{\"added\": {}}]', 26, 1),
(244, '2024-03-20 05:06:50.040596', '17', 'Dhaka City', 1, '[{\"added\": {}}]', 26, 1),
(245, '2024-03-20 05:07:42.750372', '18', 'Dhaka City', 1, '[{\"added\": {}}]', 26, 1),
(246, '2024-03-20 05:08:21.088925', '19', 'Dhaka City', 1, '[{\"added\": {}}]', 26, 1),
(247, '2024-03-20 05:09:13.381329', '20', 'Dhaka City', 1, '[{\"added\": {}}]', 26, 1),
(248, '2024-03-20 05:10:00.881815', '21', 'Dhaka City', 1, '[{\"added\": {}}]', 26, 1),
(249, '2024-03-20 05:10:59.887965', '22', 'Dhaka City', 1, '[{\"added\": {}}]', 26, 1),
(250, '2024-03-20 05:11:44.524089', '23', 'Dhaka City', 1, '[{\"added\": {}}]', 26, 1),
(251, '2024-03-20 05:12:49.838931', '24', 'Dhaka City', 1, '[{\"added\": {}}]', 26, 1),
(252, '2024-03-20 05:13:48.682493', '25', 'Dhaka City', 1, '[{\"added\": {}}]', 26, 1),
(253, '2024-03-20 05:19:01.654348', '26', 'Dhaka City', 1, '[{\"added\": {}}]', 26, 1),
(254, '2024-03-20 05:19:39.951889', '27', 'Dhaka City', 1, '[{\"added\": {}}]', 26, 1),
(255, '2024-03-20 05:20:17.299229', '28', 'Dhaka City', 1, '[{\"added\": {}}]', 26, 1),
(256, '2024-03-20 05:21:01.981358', '29', 'Dhaka City', 1, '[{\"added\": {}}]', 26, 1),
(257, '2024-03-20 05:21:47.351729', '30', 'Dhaka City', 1, '[{\"added\": {}}]', 26, 1),
(258, '2024-03-20 05:22:43.603300', '31', 'Dhaka City', 1, '[{\"added\": {}}]', 26, 1),
(259, '2024-03-20 05:23:57.777930', '32', 'Dhaka City', 1, '[{\"added\": {}}]', 26, 1),
(260, '2024-03-20 05:54:34.275203', '32', 'Dhaka City', 2, '[{\"changed\": {\"fields\": [\"Showing order\"]}}]', 26, 1),
(261, '2024-03-20 05:54:45.058057', '1', 'Dhaka City', 2, '[{\"changed\": {\"fields\": [\"Showing order\"]}}]', 26, 1),
(262, '2024-03-20 05:55:02.355322', '1', 'Dhaka City', 2, '[{\"changed\": {\"fields\": [\"Showing order\"]}}]', 26, 1),
(263, '2024-03-20 05:55:10.102363', '32', 'Dhaka City', 2, '[{\"changed\": {\"fields\": [\"Showing order\"]}}]', 26, 1),
(264, '2024-03-20 05:59:09.495053', '1', 'A.J.R Parcel & Courier Service Ltd, is reliable, prompt, efficient and professionally managed courier company which offers to meet all your requirements. We provide worldwide courier service, worldwid', 2, '[{\"changed\": {\"fields\": [\"Overview details\", \"Overview details2\", \"Company overview details3\", \"Md message\"]}}]', 7, 1),
(265, '2024-03-20 06:00:16.117443', '1', 'Managing Director - 1', 2, '[]', 8, 1),
(266, '2024-03-20 06:01:19.202509', '1', 'Our vision is to provide unrivaled courier services to clients around the world through professional approach & delivering in time to all destinations around the world.', 2, '[{\"changed\": {\"fields\": [\"Our Vision\", \"Our mission\", \"Our team\"]}}]', 9, 1),
(267, '2024-03-20 06:02:03.467214', '1', 'Our vision is to provide unrivaled courier services to clients around the world through professional approach & delivering in time to all destinations around the world.', 2, '[{\"changed\": {\"fields\": [\"Six page details\"]}}]', 9, 1),
(268, '2024-03-20 06:02:41.220493', '1', 'Our vision is to provide unrivaled courier services to clients around the world through professional approach & delivering in time to all destinations around the world.', 2, '[]', 9, 1),
(269, '2024-03-20 06:03:53.059566', '1', 'Dhaka City Delivery Point:', 2, '[{\"changed\": {\"fields\": [\"Delivery Point Name\", \"Point details\"]}}]', 10, 1),
(270, '2024-03-20 06:04:43.173083', '1', 'Dhaka City Delivery Point:', 2, '[{\"changed\": {\"fields\": [\"Point details\"]}}]', 10, 1),
(271, '2024-03-20 06:06:02.565295', '1', 'Dhaka City Delivery Point', 2, '[{\"changed\": {\"fields\": [\"Delivery Point Name\"]}}]', 10, 1),
(272, '2024-03-20 06:06:45.959835', '2', 'Dhaka Division Delivery Point', 2, '[{\"changed\": {\"fields\": [\"Delivery Point Name\", \"Point details\"]}}]', 10, 1),
(273, '2024-03-20 06:07:38.280309', '3', 'Chittagong City Delivery Point', 2, '[{\"changed\": {\"fields\": [\"Delivery Point Name\", \"Point details\"]}}]', 10, 1),
(274, '2024-03-20 06:14:31.222284', '4', 'Chittagong Division Delivery Point', 2, '[{\"changed\": {\"fields\": [\"Delivery Point Name\", \"Point details\"]}}]', 10, 1),
(275, '2024-03-20 06:15:09.667017', '4', 'Chittagong Division Delivery Point', 2, '[{\"changed\": {\"fields\": [\"Point details\"]}}]', 10, 1),
(276, '2024-03-20 06:15:46.828794', '5', 'Rajshahi Division Delivery Point', 2, '[{\"changed\": {\"fields\": [\"Delivery Point Name\", \"Point details\"]}}]', 10, 1),
(277, '2024-03-20 06:17:22.126506', '6', 'Rangpur Division Delivery Point', 2, '[{\"changed\": {\"fields\": [\"Delivery Point Name\", \"Point details\"]}}]', 10, 1),
(278, '2024-03-20 06:17:59.543463', '8', 'Barisal Division Delivery Point', 2, '[{\"changed\": {\"fields\": [\"Delivery Point Name\", \"Point details\"]}}]', 10, 1),
(279, '2024-03-20 06:48:54.774941', '2', 'House No.200, Central Road, Mohakhali DOHS, Dhaka-1206.', 2, '[{\"changed\": {\"fields\": [\"Specification image\"]}}]', 19, 1),
(280, '2024-03-20 08:53:04.006261', '32', 'Dhaka City', 2, '[{\"changed\": {\"fields\": [\"Showing order\"]}}]', 26, 1),
(281, '2024-03-20 08:53:10.885336', '1', 'Dhaka City', 2, '[{\"changed\": {\"fields\": [\"Showing order\"]}}]', 26, 1),
(282, '2024-03-20 09:06:18.632520', '1', 'Dhaka City', 2, '[{\"changed\": {\"fields\": [\"Showing order\"]}}]', 26, 1),
(283, '2024-03-20 09:06:26.282885', '32', 'Dhaka City', 2, '[{\"changed\": {\"fields\": [\"Showing order\"]}}]', 26, 1),
(284, '2024-03-20 09:10:01.279159', '2', 'Dhaka City', 2, '[{\"changed\": {\"fields\": [\"Showing order\"]}}]', 26, 1),
(285, '2024-03-20 09:10:13.525646', '32', 'Dhaka City', 2, '[{\"changed\": {\"fields\": [\"Showing order\"]}}]', 26, 1),
(286, '2024-03-20 09:10:39.510923', '2', 'Dhaka City', 2, '[{\"changed\": {\"fields\": [\"Showing order\"]}}]', 26, 1),
(287, '2024-03-20 09:11:05.479096', '32', 'Dhaka City', 2, '[{\"changed\": {\"fields\": [\"Showing order\"]}}]', 26, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(15, 'base', 'computeraccessories'),
(18, 'base', 'contactus'),
(16, 'base', 'cosmeticcompanies'),
(9, 'base', 'fivepage'),
(8, 'base', 'fourthpage'),
(17, 'base', 'generalparcelcompanies'),
(13, 'base', 'groupcompanies'),
(19, 'base', 'headoffice'),
(22, 'base', 'kg1000vehiele'),
(23, 'base', 'kg1500vehiele'),
(24, 'base', 'kg3000vehiele'),
(25, 'base', 'kg7000vehiele'),
(12, 'base', 'medicinebuyers'),
(11, 'base', 'mobilebuyers'),
(26, 'base', 'officeaddress'),
(20, 'base', 'probihitedrestricted'),
(7, 'base', 'secoundpage'),
(14, 'base', 'shoescompanies'),
(10, 'base', 'sixpage'),
(21, 'base', 'specificationservices'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2024-03-18 04:38:53.500607'),
(2, 'auth', '0001_initial', '2024-03-18 04:38:54.148882'),
(3, 'admin', '0001_initial', '2024-03-18 04:38:54.327813'),
(4, 'admin', '0002_logentry_remove_auto_add', '2024-03-18 04:38:54.343435'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2024-03-18 04:38:54.354562'),
(6, 'contenttypes', '0002_remove_content_type_name', '2024-03-18 04:38:54.417150'),
(7, 'auth', '0002_alter_permission_name_max_length', '2024-03-18 04:38:54.467047'),
(8, 'auth', '0003_alter_user_email_max_length', '2024-03-18 04:38:54.488311'),
(9, 'auth', '0004_alter_user_username_opts', '2024-03-18 04:38:54.488311'),
(10, 'auth', '0005_alter_user_last_login_null', '2024-03-18 04:38:54.537020'),
(11, 'auth', '0006_require_contenttypes_0002', '2024-03-18 04:38:54.549468'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2024-03-18 04:38:54.550295'),
(13, 'auth', '0008_alter_user_username_max_length', '2024-03-18 04:38:54.570456'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2024-03-18 04:38:54.587614'),
(15, 'auth', '0010_alter_group_name_max_length', '2024-03-18 04:38:54.605888'),
(16, 'auth', '0011_update_proxy_permissions', '2024-03-18 04:38:54.613130'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2024-03-18 04:38:54.665842'),
(18, 'base', '0001_initial', '2024-03-18 04:38:54.703972'),
(19, 'base', '0002_our_service', '2024-03-18 04:38:54.732724'),
(20, 'base', '0003_delete_our_service', '2024-03-18 04:38:54.742414'),
(21, 'sessions', '0001_initial', '2024-03-18 04:38:54.787080'),
(22, 'base', '0004_secoundpage_overview_site_image', '2024-03-18 04:52:59.219284'),
(23, 'base', '0005_alter_secoundpage_options_secoundpage_md_message_and_more', '2024-03-18 04:57:36.817228'),
(24, 'base', '0006_fourthpage', '2024-03-18 05:35:32.275061'),
(25, 'base', '0007_fivepage', '2024-03-18 06:05:04.576265'),
(26, 'base', '0008_fivepage_mission_image_fivepage_team_image', '2024-03-18 06:06:40.112759'),
(27, 'base', '0009_alter_fivepage_options_fivepage_six_page_details_and_more', '2024-03-18 06:24:09.115220'),
(28, 'base', '0010_alter_fivepage_six_page_title', '2024-03-18 06:25:13.395302'),
(29, 'base', '0011_sixpage', '2024-03-18 06:37:44.899892'),
(30, 'base', '0012_mobilebuyers', '2024-03-18 07:10:53.389883'),
(31, 'base', '0013_medicinebuyers_alter_mobilebuyers_options', '2024-03-18 07:37:42.219659'),
(32, 'base', '0014_groupcompanies', '2024-03-18 07:56:47.753469'),
(33, 'base', '0015_shoescompanies', '2024-03-18 08:27:57.152676'),
(34, 'base', '0016_computeraccessories', '2024-03-19 04:17:11.822653'),
(35, 'base', '0017_cosmeticcompanies', '2024-03-19 04:29:01.958650'),
(36, 'base', '0018_generalparcelcompanies', '2024-03-19 04:42:19.703613'),
(37, 'base', '0019_contactus', '2024-03-19 04:56:54.994309'),
(38, 'base', '0020_headoffice', '2024-03-19 05:13:17.654777'),
(39, 'base', '0021_probihitedrestricted', '2024-03-19 05:38:38.192306'),
(40, 'base', '0022_specificationservices', '2024-03-19 06:17:11.060280'),
(41, 'base', '0023_kg1000vehiele', '2024-03-19 07:01:06.426493'),
(42, 'base', '0024_kg1500vehiele', '2024-03-19 07:16:46.410377'),
(43, 'base', '0025_kg3000vehiele', '2024-03-19 07:41:04.225720'),
(44, 'base', '0026_kg7000vehiele', '2024-03-19 08:00:21.504356'),
(45, 'base', '0027_officeaddress', '2024-03-20 04:01:53.992527'),
(46, 'base', '0028_alter_secoundpage_company_overview_details3_and_more', '2024-03-20 05:58:04.259270'),
(47, 'base', '0002_headoffice_specification_image', '2024-03-20 06:46:49.180710');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('xydkkhvjlzaysuk0pdx4tlz62libyn02', '.eJxVjDsOwjAQBe_iGlk4jk1MSZ8zWG-zaxxAtpRPhbg7iZQC2pl5760i1iXHdZYpjqyuyqjTLyMMTym74AfKveqhlmUaSe-JPuys-8ryuh3t30HGnLc1WgvbERwxyHMggBo5swlinE8OITjZADrmwI4SJcu-ZZFLQ22y6vMFIe85qg:1rm97c:1xJLciR_DM3h5Ep8ZnA_2uYsZgIvKqLsAWQe59EzFSQ', '2024-04-01 09:17:32.253732');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `base_computeraccessories`
--
ALTER TABLE `base_computeraccessories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `base_contactus`
--
ALTER TABLE `base_contactus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `base_cosmeticcompanies`
--
ALTER TABLE `base_cosmeticcompanies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `base_fivepage`
--
ALTER TABLE `base_fivepage`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `base_fourthpage`
--
ALTER TABLE `base_fourthpage`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `base_generalparcelcompanies`
--
ALTER TABLE `base_generalparcelcompanies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `base_groupcompanies`
--
ALTER TABLE `base_groupcompanies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `base_headoffice`
--
ALTER TABLE `base_headoffice`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `base_kg1000vehiele`
--
ALTER TABLE `base_kg1000vehiele`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `base_kg1500vehiele`
--
ALTER TABLE `base_kg1500vehiele`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `base_kg3000vehiele`
--
ALTER TABLE `base_kg3000vehiele`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `base_kg7000vehiele`
--
ALTER TABLE `base_kg7000vehiele`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `base_medicinebuyers`
--
ALTER TABLE `base_medicinebuyers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `base_mobilebuyers`
--
ALTER TABLE `base_mobilebuyers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `base_officeaddress`
--
ALTER TABLE `base_officeaddress`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `base_probihitedrestricted`
--
ALTER TABLE `base_probihitedrestricted`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `base_secoundpage`
--
ALTER TABLE `base_secoundpage`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `base_shoescompanies`
--
ALTER TABLE `base_shoescompanies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `base_sixpage`
--
ALTER TABLE `base_sixpage`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `base_specificationservices`
--
ALTER TABLE `base_specificationservices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `base_computeraccessories`
--
ALTER TABLE `base_computeraccessories`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `base_contactus`
--
ALTER TABLE `base_contactus`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `base_cosmeticcompanies`
--
ALTER TABLE `base_cosmeticcompanies`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `base_fivepage`
--
ALTER TABLE `base_fivepage`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `base_fourthpage`
--
ALTER TABLE `base_fourthpage`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `base_generalparcelcompanies`
--
ALTER TABLE `base_generalparcelcompanies`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `base_groupcompanies`
--
ALTER TABLE `base_groupcompanies`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `base_headoffice`
--
ALTER TABLE `base_headoffice`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `base_kg1000vehiele`
--
ALTER TABLE `base_kg1000vehiele`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `base_kg1500vehiele`
--
ALTER TABLE `base_kg1500vehiele`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `base_kg3000vehiele`
--
ALTER TABLE `base_kg3000vehiele`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `base_kg7000vehiele`
--
ALTER TABLE `base_kg7000vehiele`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `base_medicinebuyers`
--
ALTER TABLE `base_medicinebuyers`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `base_mobilebuyers`
--
ALTER TABLE `base_mobilebuyers`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `base_officeaddress`
--
ALTER TABLE `base_officeaddress`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `base_probihitedrestricted`
--
ALTER TABLE `base_probihitedrestricted`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `base_secoundpage`
--
ALTER TABLE `base_secoundpage`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `base_shoescompanies`
--
ALTER TABLE `base_shoescompanies`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `base_sixpage`
--
ALTER TABLE `base_sixpage`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `base_specificationservices`
--
ALTER TABLE `base_specificationservices`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=288;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
