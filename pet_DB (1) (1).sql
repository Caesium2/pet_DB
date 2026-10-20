-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
-- Host: localhost
-- Generation Time: Apr 14, 2026 at 01:16 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";
/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
-- Database: `TeamWorkGroup2`
CREATE DATABASE IF NOT EXISTS `TeamWorkGroup2` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `TeamWorkGroup2`;
-- --------------------------------------------------------
-- Table structure for table `Admission`
CREATE TABLE `Admission` (
  `AdmissionNumber` int(11) NOT NULL,
  `DateIn` date DEFAULT NULL,
  `DateOut` date DEFAULT NULL,
  `Comments` varchar(255) DEFAULT NULL,
  `PetNumber` int(11) DEFAULT NULL,
  `PenNumber` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
-- --------------------------------------------------------
-- Table structure for table `Appointment`
CREATE TABLE `Appointment` (
  `AppointmentNumber` int(11) NOT NULL,
  `Date` date DEFAULT NULL,
  `Time` time DEFAULT NULL,
  `OwnerNumber` int(11) DEFAULT NULL,
  `PetNumber` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
-- --------------------------------------------------------
-- Table structure for table `Clinic`
CREATE TABLE `Clinic` (
  `ClinicNumber` int(11) NOT NULL,
  `Street` varchar(100) DEFAULT NULL,
  `CITY` varchar(50) DEFAULT NULL,
  `POSTCODE` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
-- Table structure for table `Clinic_Email`
CREATE TABLE `Clinic_Email` (
  `ClinicNumber` int(11) NOT NULL,
  `ClinicEmail` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
-- --------------------------------------------------------
-- Table structure for table `Clinic_Phone`
CREATE TABLE `Clinic_Phone` (
  `ClinicNumber` int(11) NOT NULL,
  `ClinicPhone` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
-- --------------------------------------------------------
-- Table structure for table `Examination`
CREATE TABLE `Examination` (
  `ExaminationNumber` int(11) NOT NULL,
  `Date` date DEFAULT NULL,
  `Time` time DEFAULT NULL,
  `StaffNumber` int(11) DEFAULT NULL,
  `Results` varchar(255) DEFAULT NULL,
  `PetNumber` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
-- --------------------------------------------------------
--  Table structure for table `StaffMentor`
CREATE TABLE `StaffMentor` (
  `StaffNumber` int(5) NOT NULL,
  `StaffMentor` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
-- --------------------------------------------------------
-- Table structure for table `Invoice`
CREATE TABLE `Invoice` (
  `InvoiceNumber` int(11) NOT NULL,
  `Date` date DEFAULT NULL,
  `OwnerNumber` int(11) DEFAULT NULL,
  `ExaminationNumber` int(11) NOT NULL,
  `PaidDate` date DEFAULT NULL,
  `PaymentMethod` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
-- --------------------------------------------------------
-- Table structure for table `Owner`
CREATE TABLE `Owner` (
  `OwnerNumber` int(11) NOT NULL,
  `FirstName` varchar(50) DEFAULT NULL,
  `LastName` varchar(50) DEFAULT NULL,
  `Street` varchar(100) DEFAULT NULL,
  `City` varchar(50) DEFAULT NULL,
  `Postcode` varchar(10) DEFAULT NULL,
  `Phone` varchar(20) DEFAULT NULL,
  `Email` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
-- --------------------------------------------------------
-- Table structure for table `Pen`
CREATE TABLE `Pen` (
  `PenNumber` int(11) NOT NULL,
  `ClinicNumber` int(11) NOT NULL,
  `Capacity` int(11) DEFAULT NULL,
  `Status` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
-- --------------------------------------------------------
-- Table structure for table `Pet`
CREATE TABLE `Pet` (
  `PetNumber` int(11) NOT NULL,
  `Name` varchar(50) DEFAULT NULL,
  `Type` varchar(50) DEFAULT NULL,
  `Description` varchar(100) DEFAULT NULL,
  `DOB` date DEFAULT NULL,
  `DateRegistered` date DEFAULT NULL,
  `Status` varchar(20) DEFAULT NULL,
  `OwnerNumber` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
-- --------------------------------------------------------
-- Table structure for table `PositionTitle`
CREATE TABLE `PositionTitle` (
  `PositionID` int(11) NOT NULL,
  `PositionName` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
-- --------------------------------------------------------
-- Table structure for table `Recommended_Treatment`
CREATE TABLE `Recommended_Treatment` (
  `ExaminationNumber` int(11) NOT NULL,
  `TreatmentNumber` int(11) NOT NULL,
  `Quantity` int(11) DEFAULT NULL,
  `StartDate` date DEFAULT NULL,
  `EndDate` date DEFAULT NULL,
  `Comments` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
-- --------------------------------------------------------
-- Table structure for table `Staff`
CREATE TABLE `Staff` (
  `StaffNumber` int(11) NOT NULL,
  `ClinicNumber` int(11) NOT NULL,
  `FirstName` varchar(50) DEFAULT NULL,
  `LastName` varchar(50) DEFAULT NULL,
  `Street` varchar(100) DEFAULT NULL,
  `City` varchar(50) DEFAULT NULL,
  `Postcode` varchar(10) DEFAULT NULL,
  `PhoneNumber` varchar(20) DEFAULT NULL,
  `DOB` date DEFAULT NULL,
  `Sex` char(1) DEFAULT NULL,
  `NINumber` varchar(20) DEFAULT NULL,
  `Salary` decimal(10,2) DEFAULT NULL,
  `PositionID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
-- --------------------------------------------------------
-- Table structure for table `Staff_EmploymentHistory`
CREATE TABLE `Staff_EmploymentHistory` (
  `StaffNumber` int(11) NOT NULL,
  `EmploymentHistory` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
-- --------------------------------------------------------
-- Table structure for table `Staff_Qualifications`
CREATE TABLE `Staff_Qualifications` (
  `StaffNumber` int(11) NOT NULL,
  `Qualification` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
-- --------------------------------------------------------
-- Table structure for table `Treatment`
CREATE TABLE `Treatment` (
  `TreatmentNumber` int(11) NOT NULL,
  `Description` varchar(255) DEFAULT NULL,
  `Cost` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
-- Keys for table `Admission`
ALTER TABLE `Admission`
  ADD PRIMARY KEY (`AdmissionNumber`),
  ADD KEY `PetNumber` (`PetNumber`),
  ADD KEY `PenNumber` (`PenNumber`);
-- Keys for table `Appointment`
ALTER TABLE `Appointment`
  ADD PRIMARY KEY (`AppointmentNumber`),
  ADD KEY `OwnerNumber` (`OwnerNumber`),
  ADD KEY `PetNumber` (`PetNumber`);
-- Keys for table `Clinic`
ALTER TABLE `Clinic`
  ADD PRIMARY KEY (`ClinicNumber`);
-- Keys for table `Clinic_Email`
ALTER TABLE `Clinic_Email`
  ADD PRIMARY KEY (`ClinicNumber`,`ClinicEmail`);
-- Keys for table `Clinic_Phone`
ALTER TABLE `Clinic_Phone`
  ADD PRIMARY KEY (`ClinicNumber`,`ClinicPhone`);
-- Keys for table `Examination`
ALTER TABLE `Examination`
  ADD PRIMARY KEY (`ExaminationNumber`),
  ADD KEY `StaffNumber` (`StaffNumber`),
  ADD KEY `Examination_Pet_FK` (`PetNumber`);
-- --------------------------------------------------------
-- Data for `Examination`
INSERT INTO `Examination`
  VALUES 
  (1,'2026-05-28','13:30:00',1,'Routine Checkup: Dog is in perfect condition',2),
  (2,'2026-08-04','09:45:00',3,NULL,1),
  (3,'2026-04-29','16:00:00',8,'Rabies vaccination booster',6),
  (4,'2026-06-10','12:32:00',1,'Microchip implantation',4),
  (5,'2026-12-17','10:05:00',5,NULL,5),
  (6,'2026-06-16','14:15:00',8,'Limping front paw -X-Ray needed',3),
  (7,'2026-05-31','11:20:00',1,'Ear infection cleaning',8),
  (8,'2026-06-01','15:50:00',3,'Allergy consultation- Meds',8);
-- --------------------------------------------------------
-- Data for `Appointment`
INSERT INTO `Appointment`
 VALUES
 (1,'2026-10-01','9:00:00',1,5),
 (2,'2026-09-03','11:35:00',8,2),
 (3,'2026-09-03','14:30:00',7,1),
 (4,'2026-09-07','13:05:00',5,8),
 (5,'2026-09-11','10:04:00',3,6),
 (6,'2026-10-04','17:00:00',4,5),
 (7,'2026-10-05','15:45:00',2,3),
 (8,'2026-04-05','15:45:00',1,3),
 (9,'2027-01-06','9:00:00',6,4);
-- --------------------------------------------------------
-- Data for `PositionTitle`
 INSERT INTO `PositionTitle`
  VALUES
 (1, 'Associate Vet'),
 (2, 'Vet Technician'),
 (3, 'Vet assistant'),
 (4, 'Receptionist'),
 (5, 'Vet administrator'),
 (6, 'Practice Manager'),
 (7, 'Pen Assistant'),
 (8, 'Vet Nurse');
-- --------------------------------------------------------
-- Data for `Staff`
INSERT INTO `Staff` 
 VALUES
(1,4,'Jullianne', 'Thorne', '12 Willow Lane', 'Manchester', 'M1 4RT', '0770900123', '1982-05-22', 'F', 'AD123456C', 42000.00, 6),
(2,6,'Marcus', 'Vane', '44 Cedar Drive', 'Manchester', 'M126PL', '07700900456', '1978-09-12', 'M', 'CD789012E', 68000.00, 5),
(3,9,'Elena', 'Rodriguez', '102 High Street', 'Salford', 'M5 3NW', '07701900421', '1990-11-05', 'F', 'EF345678G', 52000.00, 1),
(4,10,'Simon', 'Whitlock', '7 Orchard Way', 'Stockport', 'SK1 3BJ', '07701900432', '1985-01-14', 'M', 'GH901234I', 54000.00, 1),
(5,3,'Chloe', 'Sterling', '29 Maple Court', 'Stretford', 'M4 5DL', '07701900654', '1988-03-30', 'F', 'IJ567890K', 34000.00, 2),
(6,1,'liam', 'O\'Connor', '15 Brookside', 'Sale', 'M33 7TY', '07701904323', '1994-07-19', 'M', 'KL123456M', 29000.00, 6),
(7,9,'Sarah', 'Jenkins', '88 Sycamore Rd', 'Manchester', 'M14 5QH', '07701908798', '1996-02-08', 'F', 'MN789012O', 28500.00, 8),
(8,1,'Amara', 'Okafor', '3 Larkspurt Ave', 'Preswich', 'M25 1AA', '07701900421', '1999-12-11', 'M', 'OP345678Q', 23000.00, 8),
(9,1,'Toby', 'Flecher', '52 River View', 'Manchester', 'M3 2NH', '07701910495', '2001-05-25', 'F', 'QQR901234S', 22500.00, 4),
(10,2,'Grace', 'Miller', '11 Gorse Avenue', 'Stretford', 'M32 9JK', '07701959492', '2002-08-03', 'F', 'ST567890U', 22500.00, 3),
(11,2,'Sophie', 'Chen', '19 Park Road', 'Manchester', 'WA14 1EP', '07701958845', '1980-04-15', 'M', 'TY436721B', 27000.00, 7),
(12,5,'Oliver', 'Knight', '2 Jubilee Close', 'Cheadle', 'M16 0AA', '07701900213', '1997-05-21', 'F', 'FH125687G', 24000.00, 7);
-- --------------------------------------------------------
-- Data for `StaffMentor`
 INSERT INTO `StaffMentor` 
  VALUES
  (1, 8),
  (2, 1),
  (3, 6),
  (4, 1),
  (5, 11),
  (6, 11),
  (7, 11),
  (8, 1);
-- --------------------------------------------------------
-- Data for `staff_employmenthistory`
INSERT INTO `staff_employmenthistory`
 VALUES
 (1, 'Vet nurse in Tienimein Clinic'),
 (2, 'Admin at Manchester Healthcare Centre'),
 (3, 'Vet nurse at Orchard Vet Centre'),
 (6, 'Manager in Orchard Vet Centre'),
 (6, 'Vet nurse in Tienimein Clinic'),
 (7, 'Vet nurse at Orchard Vet Centre'),
 (9, 'Cashier at Tesco'),
 (9, 'Worker at McDonalds'); 
-- --------------------------------------------------------
-- Data for `staff_qualifications`
INSERT INTO `staff_qualifications` 
 VALUES
 (1, 'Veterinary degree'),
 (2, 'Veterinary degree'),
 (3, 'Veterinary degree'),
 (4, 'Mathematics degree'), 
 (5, 'Nursing degree'),
 (7, 'Doctorate in psychology'),
 (7, 'Veterinary degree'),
 (8, 'Veterinary degree');
-- --------------------------------------------------------
-- Data for `clinic`
INSERT INTO `clinic`  
 VALUES
 (1, '67 Longstone Road', 'Manchester', 'Mt88 SQF'),
 (2, '101 westport street', 'Dublin', 'DO12 BFHJ'),
 (3, '01 Strand Road ', 'Londonderry', 'BT48 5RV'),
 (4, '75 Elderberry Grove', 'Belfast', 'Bt1 6DL'),
 (5, '53 Founder Row', 'Banbridge', 'BT53 7HS'),
 (6, '42 Meridian Street', 'Ballymena', 'BT64 8JF'),
 (7, '73 Wren Court', 'Portrush', 'BT75 9LM'),
 (8, '99 Silverglen Road', 'Lisburn', 'BT28 6TT'),
 (9, '201 Starpine Road', 'Donegal', 'DO73 GFTS'),
 (10, '83 Hill Street', 'Hillsborough', 'Bt10 3HL');
-- --------------------------------------------------------
-- Data for `clinic_email`
 INSERT INTO `clinic_email`
 VALUES
 (9, 's.jenkins@apexanimalcorp.co.uk'),
 (2, 'media@apexanimalcorp.co.uk\r\n'),
 (3, 'support@apexanimalcorp.co.uk'),
 (4, 'partnerships@apexanimalcorp.co.uk'),
 (5, 'contact@apexanimalcorp.co.uk'),
 (6, 'orders@apexanimalcorp.co.uk'),
 (7, 'dr.thorne@apexanimalcorp.co.uk'),
 (8, 'hr@apexanimalcorp.co.uk'),
 (9, 'e.rodriguez@apexanimalcorp.co.uk'),
 (10, 'management@apexanimalcorp.co.uk'),
 (1, 'l.oconnor@apexanimalcorp.co.uk');
-- --------------------------------------------------------
-- Data for `clinic_phone`
INSERT INTO `clinic_phone`
 VALUES
 (1, '02887768372'),
 (2, '02892646727'),
 (3, '02852415742'),
 (4, '02801726381'),
 (5, '02862518352'),
 (6, '02863542434'),
 (7, '02863524537'),
 (8, '02854526614'),
 (9, '02814355362'),
 (10, '02853515385');
-- --------------------------------------------------------
-- Data for `Invoice`
INSERT INTO `Invoice`  
VALUES
 (1, '2025-11-10', 2, 1, '2025-11-12', 'debit card'),
 (2, '2015-06-07', 1, 2, '2015-06-08', 'cash'),
 (3, '2024-12-10', 3, 3, '2024-12-12', 'bank transfer'),
 (4, '2026-04-17', 1, 4, '2026-04-17', 'cash'),
 (5, '2017-08-15', 4, 5, '2017-08-18', 'credit card'),
 (6, '2020-10-19', 3, 6, '2020-10-22', 'cash'),
 (7, '2023-05-21', 4, 7, '2023-05-24', 'bank transfer'),
 (8, '2022-02-01', 4, 8, '2022-02-05', 'debit card');
-- --------------------------------------------------------
-- Data for `Owner`
INSERT INTO `Owner`
VALUES
 (1, 'Lily', 'Evans', '16 kilraughts road', 'Ballymoney', 'BT53 7HL', '07368610876', 'lilyevans@gmail.com'),
 (2, 'Lyhan', 'Doherty', '33 Ashbrook Court', 'Coleraine', 'BT51 3DS', '07364728873', 'Lyhadoherty32@outlook.com'),
 (3, 'Matthew', 'Smith', '33 Kings drive', 'Belfast	', 'BT1 1HU', '07557764589', 'Matthew.Smith@gmail.com'),
 (4, 'Rebecca', 'McLernon', '19 Maxwell Street', 'Belfast', 'BT12 5FB', '07345238769', 'Rebecca.Mclernon99@gmail.com'),
 (5, 'Lacey', 'McKinley', '12 Stuart Park', 'Ballymoney', 'BT53 7BE', '07342167564', 'LaceyMcKinley65@hotmail.com'),
 (6, 'Colin', 'Lee', '25 Thyme Park', 'Antrim', 'BT41 4PE', '07415453812', 'Colinlee43@gmail.com'),
 (7, 'Steven', 'Miller', '13 Park Street', 'Coleraine', 'BT52 1BD', '07334567876', 'Steven.Miller33@outlook.com'),
 (8, 'Samantha', 'Curry', '2 John Street', 'Derry/Londonderry', 'BT48 6JY', '07855460390', 'samantha.curry1143@hotmail.com');
-- --------------------------------------------------------
-- Data for `Pet`
INSERT INTO `Pet` 
 VALUES
 (1, 'Luna', 'bombay', 'healthy black cat weight around 15 pounds, is very affectionate and friendly.', '2023-12-25', '2024-01-03', 'Alive', 1),
 (2, 'Megatron', 'Calico', 'young calico kitten, weights about 7lbs, very skittish handle with care.', '2026-03-04', '2026-04-02', 'Alive', 2),
 (3, 'Princess', 'Pomeranian', '5 year old female dog. weight unknown. very aggressive handle with caution.', '2021-07-30', '2024-01-01', 'Alive', 3),
 (4, 'Nala', 'Morkie', 'playful 9 year old Morkie, weight around 17lbs, will attempt to lick your fingers off.', '2017-01-11', '2024-03-12', 'Alive', 1),
 (5, 'Mazie', 'Shiz Tsu', 'slightly overweight at 30lbs. she is friendly but does not move much so difficult to work with.', '2018-03-20', '2024-03-12', 'Alive', 4),
 (6, 'Steve', 'Pitbull', 'slightly large 4 year old male dog. weighs around 50lbs and is very gentle.', '2022-08-01', '2025-11-23', 'Alive', 3),
 (7, 'Bob', 'Labrador', 'old labrador at 16 years old, weighs 80lbs, very sweet.', '2009-07-30', '2024-10-09', 'Dead', 5),
 (8, 'Worm', 'Main coon', 'healthy cat, around 30lbs, not aggressive but not friendly, handle with aution.', '2025-11-16', '2026-02-27', 'Alive', 4);
-- --------------------------------------------------------
-- Data for `Recommended_treatment`
INSERT INTO `Recommended_treatment`
 VALUES
 (1, 1, 2, '2024-11-02', '2024-11-02', 'booster shots administered with ease.'),
 (2, 2, 1, '2025-01-22', '2025-01-22', NULL),
 (3, 6, 1, '2025-03-02', '2025-03-02', NULL),
 (4, 4, 3, '2025-04-11', '2025-04-14', NULL),
 (5, 3, 2, '2024-04-05', '2024-04-05', 'paw is broken after getting it stuck under a pence. cast administered'),
 (6, 7, 1, '2026-04-02', '2026-04-02', 'megatron is in perfect health, no procedures neccessary'),
 (7, 8, 1, '2026-01-13', '2026-01-13', 'Luna will be having seven kittens. family plan to keep close eye on her.'),
 (8, 2, 1, '2025-07-30', '2025-07-30', NULL);
-- --------------------------------------------------------
-- Data for `Treatment`
INSERT INTO `Treatment`
 VALUES
 (1, 'Annual booster injection.', 35.00),
 (2, 'microchipping', 10.00),
 (3, 'Xray', 45.00),
 (4, 'overnight stay', 30.00),
 (5, 'cat spay', 90.00),
 (6, 'dog spay', 200.00),
 (7, 'consultation', 20.00),
 (8, 'ultrasound', 45.00);
-- --------------------------------------------------------
-- Data for `Pen`
INSERT INTO `Pen`
 Values
 (1,1,2,'Available'),
 (2,1,4,'Full'),
 (3,1,4,'Full'),
 (4,1,4,'Available'),
 (5,1,1,'Full'),
 (6,1,2,'Available'),
 (7,1,4,'Available'),
 (8,1,1,'Full'),
 (9,1,4,'Available'),
 (10,1,2,'Available'),
 (11,1,2,'Full'),
 (12,1,3,'Available'),
 (13,1,3,'Full'),
 (14,1,1,'Available'),
 (15,1,3,'Available'),
 (16,1,2,'Available'),
 (17,2,3 ,'Available'),
 (18,2,1,'Full'),
 (19,2,1,'Full'),
 (20,2,2,'Available'),
 (21,2,1,'Full'),
 (22,2,2,'Available'),
 (23,2,4,'Available'),
 (24,2,1,'Full'),
 (25,2,4,'Available'),
 (26,2,2,'Available'),
 (27,2,2,'Full'),
 (28,2,3,'Available'),
 (29,2,4,'Full'),
 (30,2,1,'Available'),
 (31,2,3,'Available'),
 (32,2,2,'Available'),
 (33,2,4,'Available'),
 (34,2,3,'Full'),
 (35,2,1,'Available'),
 (36,2,3,'Available'),
 (37,2,2,'Available'),
 (38,3,1 ,'Available'),
 (39,3,1,'Available'),
 (40,3,1,'Available'),
 (41,3,1,'Available'),
 (42,3,1,'Available'),
 (43,3,2,'Available'),
 (44,3,4,'Available'),
 (45,3,1,'Available'),
 (46,3,4,'Available'),
 (47,3,2,'Available'),
 (48,3,1,'Full'),
 (49,3,3,'Available'),
 (50,3,4,'Full'),
 (51,3,1,'Available'),
 (52,3,3,'Available'),
 (53,3,2,'Available'),
 (54,3,4,'Available'),
 (55,3,1,'Available'),
 (56,3,1,'Available'),
 (57,3,3,'Available'),
 (58,3,1,'Available'),
 (59,3,3,'Available'),
 (60,3,1,'Available'),
 (61,3,3,'Full'),
 (62,3,2,'Available'),
 (63,4,4,'Available'),
 (64,4,1,'Available'),
 (65,4,1,'Available'),
 (66,4,3,'Available'),
 (67,4,4,'Available'),
 (68,4,1,'Available'),
 (69,4,3,'Available'),
 (70,4,2,'Available'),
 (71,4,4,'Available'),
 (72,4,1,'Available'),
 (73,4,1,'Available'),
 (74,4,3,'Available'),
 (75,4,1,'Available'),
 (76,4,3,'Available'),
 (77,4,1,'Available'),
 (78,4,1,'Available'),
 (79,4,2,'Available'),
 (80,5,4,'Available'),
 (81,5,1,'Available'),
 (82,5,1,'Available'),
 (83,5,3,'Available'),
 (84,5,4,'Available'),
 (85,5,1,'Available'),
 (86,5,3,'Available'),
 (87,5,2,'Available'),
 (88,5,4,'Available'),
 (89,5,1,'Available'),
 (90,5,1,'Available'),
 (91,5,3,'Available'),
 (92,5,1,'Available'),
 (93,5,3,'Available'),
 (94,5,1,'Available'),
 (95,5,1,'Available'),
 (96,5,2,'Available'),
 (98,6,4,'Available'),
 (99,6,1,'Available'),
 (100,6,1,'Available'),
 (101,6,3,'Available'),
 (102,6,4,'Available'),
 (103,6,1,'Available'),
 (104,6,3,'Available'),
 (105,6,2,'Available'),
 (106,6,4,'Available'),
 (107,6,1,'Available'),
 (108,6,1,'Available'),
 (109,6,3,'Available'),
 (110,6,1,'Available'),
 (111,6,3,'Available'),
 (112,6,1,'Available'),
 (113,6,1,'Available'),
 (114,6,2,'Available'),
 (115,6,1,'Available'),
 (116,6,2,'Available'),
 (117,7,4,'Available'),
 (118,7,1,'Available'),
 (119,7,1,'Available'),
 (120,7,3,'Available'),
 (121,7,4,'Available'),
 (122,7,1,'Available'),
 (123,7,3,'Available'),
 (124,7,2,'Available'),
 (125,7,4,'Available'),
 (126,7,1,'Available'),
 (127,7,1,'Available'),
 (128,7,3,'Available'),
 (129,7,1,'Available'),
 (130,7,3,'Available'),
 (131,7,1,'Available'),
 (132,7,1,'Available'),
 (133,7,2,'Available'),
 (134,7,1,'Available'),
 (135,8,4,'Available'),
 (136,8,1,'Available'),
 (138,8,1,'Available'),
 (139,8,3,'Available'),
 (140,8,4,'Available'),
 (141,8,1,'Available'),
 (142,8,3,'Available'),
 (143,8,2,'Available'),
 (144,8,4,'Available'),
 (145,8,1,'Available'),
 (146,8,1,'Available'),
 (147,8,3,'Available'),
 (148,8,1,'Available'),
 (149,8,3,'Available'),
 (150,8,1,'Available'),
 (151,8,1,'Available'),
 (152,8,2,'Available'),
 (153,9,4,'Available'),
 (154,9,1,'Available'),
 (155,9,1,'Available'),
 (156,9,3,'Available'),
 (157,9,4,'Available'),
 (158,9,1,'Available'),
 (159,9,3,'Available'),
 (160,9,2,'Available'),
 (161,9,4,'Available'),
 (162,9,1,'Available'),
 (163,9,1,'Available'),
 (164,9,3,'Available'),
 (165,9,1,'Available'),
 (166,9,3,'Available'),
 (167,9,1,'Available'),
 (168,9,1,'Available'),
 (169,9,2,'Available'),
 (170,9,4,'Available'),
 (171,9,1,'Available'),
 (172,9,1,'Available'),
 (173,9,3,'Available'),
 (174,9,4,'Available'),
 (175,9,1,'Available'),
 (176,9,3,'Available'),
 (177,9,2,'Available'),
 (178,9,4,'Available'),
 (179,9,1,'Available'),
 (180,9,1,'Available'),
 (181,9,3,'Available'),
 (182,9,1,'Available'),
 (183,9,3,'Available'),
 (184,9,1,'Available'),
 (185,9,1,'Available'),
 (186,9,2,'Available'),
 (187,10,4,'Available'),
 (188,10,1,'Available'),
 (189,10,1,'Available'),
 (190,10,3,'Available'),
 (191,10,4,'Available'),
 (192,10,1,'Available'),
 (193,10,3,'Available'),
 (194,10,2,'Available'),
 (195,10,4,'Available'),
 (196,10,1,'Available'),
 (197,10,1,'Available'),
 (198,10,3,'Available'),
 (199,10,1,'Available'),
 (200,10,3,'Available'),
 (201,10,1,'Available'),
 (202,10,1,'Available'),
 (203,10,2,'Available'),
 (204,10,1,'Available'),
 (205,10,1,'Available'),
 (206,10,3,'Available'),
 (207,10,1,'Available'),
 (208,10,3,'Available'),
 (209,10,1,'Available'),
 (210,10,1,'Available'),
 (211,10,2,'Available');
-- --------------------------------------------------------
-- Data for `Admission` 
INSERT INTO `Admission` 
 VALUES
(1, '2026-04-15', '2026-04-17', 'Post-surgery recovery for Luna. Eating well.', 1, 1),
(2, '2026-05-10', NULL, 'Princess under observation for aggressive behavior during checkup.', 3, 5),
(3, '2026-06-10', '2026-06-12', 'Mazie admitted for weight management consultation and tests.', 5, 21),
(4, '2026-06-12', NULL, 'Worm admitted for general observation following lethargy.', 8, 48),
(5, '2026-07-20', '2026-07-22', 'Megatron monitoring for mild reaction to vaccinations.', 2, 18),
(6, '2026-08-05', '2026-08-06', 'Steve admitted for overnight dental cleaning prep.', 6, 11),
(7, '2026-09-03', NULL, 'Nala admitted for wound care on front paw.', 4, 34),
(8, '2026-10-15', '2026-10-16', 'Routine overnight stay for travel preparation.', 1, 61);
-- --------------------------------------------------------
-- Treatment cost column added
ALTER TABLE `Treatment`
ADD COLUMN TotalCost DECIMAL(10,2) 
AS (Cost * 1.05) VIRTUAL;
-- Keys added
ALTER TABLE `Invoice`
  ADD PRIMARY KEY (`InvoiceNumber`),
  ADD KEY `OwnerNumber` (`OwnerNumber`),
  ADD KEY `ExaminationNumber` (`ExaminationNumber`);
--  --------------------------------------------------------
ALTER TABLE `Owner`
  ADD PRIMARY KEY (`OwnerNumber`);
--  --------------------------------------------------------
ALTER TABLE `Pen`
  ADD PRIMARY KEY (`PenNumber`),
  ADD KEY (`ClinicNumber`);
--  --------------------------------------------------------
ALTER TABLE `StaffMentor`
  ADD PRIMARY KEY (`StaffNumber`);
  --  --------------------------------------------------------
ALTER TABLE `Pet`
  ADD PRIMARY KEY (`PetNumber`),
  ADD KEY `OwnerNumber` (`OwnerNumber`);
--  --------------------------------------------------------
ALTER TABLE `PositionTitle`
  ADD PRIMARY KEY (`PositionID`);
--  --------------------------------------------------------
ALTER TABLE `Recommended_Treatment`
  ADD PRIMARY KEY (`ExaminationNumber`,`TreatmentNumber`),
  ADD KEY `TreatmentNumber` (`TreatmentNumber`);
--  --------------------------------------------------------
ALTER TABLE `Staff`
  ADD PRIMARY KEY (`StaffNumber`),
  ADD UNIQUE KEY `NINumber` (`NINumber`),
  ADD KEY `Staff_Position_FK` (`PositionID`),
  ADD KEY `Clinic_Num_FK` (`ClinicNumber`);
--  --------------------------------------------------------
ALTER TABLE `Staff_EmploymentHistory`
  ADD PRIMARY KEY (`StaffNumber`,`EmploymentHistory`);
--  --------------------------------------------------------
ALTER TABLE `Staff_Qualifications`
  ADD PRIMARY KEY (`StaffNumber`,`Qualification`);
--  --------------------------------------------------------
ALTER TABLE `Treatment`
  ADD PRIMARY KEY (`TreatmentNumber`);
--  --------------------------------------------------------
-- Constraints for table `Admission`
ALTER TABLE `Admission`
  ADD CONSTRAINT `admission_ibfk_1` FOREIGN KEY (`PetNumber`) REFERENCES `Pet` (`PetNumber`),
  ADD CONSTRAINT `admission_ibfk_2` FOREIGN KEY (`PenNumber`) REFERENCES `Pen` (`PenNumber`);
-- Constraints for table `Appointment`
ALTER TABLE `Appointment`
  ADD CONSTRAINT `appointment_ibfk_1` FOREIGN KEY (`OwnerNumber`) REFERENCES `Owner` (`OwnerNumber`),
  ADD CONSTRAINT `appointment_ibfk_2` FOREIGN KEY (`PetNumber`) REFERENCES `Pet` (`PetNumber`);
-- Constraints for table `Clinic_Email`
ALTER TABLE `Clinic_Email`
  ADD CONSTRAINT `clinic_email_ibfk_1` FOREIGN KEY (`ClinicNumber`) REFERENCES `Clinic` (`ClinicNumber`);
-- Constraints for table `Clinic_Phone`
ALTER TABLE `Clinic_Phone`
  ADD CONSTRAINT `clinic_phone_ibfk_1` FOREIGN KEY (`ClinicNumber`) REFERENCES `Clinic` (`ClinicNumber`);
-- Constraints for table `Examination`
ALTER TABLE `Examination`
  ADD CONSTRAINT `Examination_Pet_FK` FOREIGN KEY (`PetNumber`) REFERENCES `Pet` (`PetNumber`),
  ADD CONSTRAINT `examination_ibfk_1` FOREIGN KEY (`StaffNumber`) REFERENCES `Staff` (`StaffNumber`);
-- Constraints for table `Invoice`
ALTER TABLE `Invoice`
  ADD CONSTRAINT `invoice_ibfk_1` FOREIGN KEY (`OwnerNumber`) REFERENCES `Owner` (`OwnerNumber`),
  ADD CONSTRAINT `invoice_ibfk_2` FOREIGN KEY (`ExaminationNumber`) REFERENCES `Examination` (`ExaminationNumber`);
-- Constraints for table `Pet`
ALTER TABLE `Pet`
  ADD CONSTRAINT `pet_ibfk_1` FOREIGN KEY (`OwnerNumber`) REFERENCES `Owner` (`OwnerNumber`);
-- Constraints for table `Recommended_Treatment`
ALTER TABLE `Recommended_Treatment`
  ADD CONSTRAINT `recommended_treatment_ibfk_1` FOREIGN KEY (`ExaminationNumber`) REFERENCES `Examination` (`ExaminationNumber`),
  ADD CONSTRAINT `recommended_treatment_ibfk_2` FOREIGN KEY (`TreatmentNumber`) REFERENCES `Treatment` (`TreatmentNumber`);
-- Constraints for table `Staff`
ALTER TABLE `Staff`
  ADD CONSTRAINT `Staff_Position_FK` FOREIGN KEY (`PositionID`) REFERENCES `PositionTitle` (`PositionID`),
 ADD CONSTRAINT `Clinic_Numberf_FK` FOREIGN KEY (`ClinicNumber`) REFERENCES `Clinic` (`ClinicNumber`);
-- Constraints for table `Staff_EmploymentHistory`
ALTER TABLE `Staff_EmploymentHistory`
  ADD CONSTRAINT `staff_employmenthistory_ibfk_1` FOREIGN KEY (`StaffNumber`) REFERENCES `Staff` (`StaffNumber`);
-- Constraints for table `Staff_Qualifications`
ALTER TABLE `Staff_Qualifications`
  ADD CONSTRAINT `staff_qualifications_ibfk_1` FOREIGN KEY (`StaffNumber`) REFERENCES `Staff` (`StaffNumber`);
-- Constraints for table `Pen`
ALTER TABLE `Pen`
  ADD CONSTRAINT `pen_clinic_numberFK` FOREIGN KEY (`ClinicNumber`) REFERENCES `Clinic` (`ClinicNumber`);
-- Constraints for table `StaffMentor`
ALTER TABLE `StaffMentor`
  ADD CONSTRAINT `fk_staff_mentee` FOREIGN KEY (`StaffNumber`) REFERENCES `Staff` (`StaffNumber`),
  ADD CONSTRAINT `fk_staff_mentor` FOREIGN KEY (`StaffMentor`) REFERENCES `Staff` (`StaffNumber`);
COMMIT;

 

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
