-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 17, 2023 at 12:39 AM
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
-- Database: `saith seren`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `IdAdmin` int(11) NOT NULL,
  `IdPerson` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`IdAdmin`, `IdPerson`) VALUES
(3, 4),
(2, 5),
(1, 6);

-- --------------------------------------------------------

--
-- Table structure for table `client`
--

CREATE TABLE `client` (
  `IdClient` int(11) NOT NULL,
  `IdPerson` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `client`
--

INSERT INTO `client` (`IdClient`, `IdPerson`) VALUES
(1, 1),
(2, 2),
(3, 3);

-- --------------------------------------------------------

--
-- Table structure for table `consult`
--

CREATE TABLE `consult` (
  `IdClient` int(11) NOT NULL,
  `IdEvent` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `event`
--

CREATE TABLE `event` (
  `IdEvent` int(11) NOT NULL,
  `NameEvent` varchar(50) NOT NULL,
  `DateEvent` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `event`
--

INSERT INTO `event` (`IdEvent`, `NameEvent`, `DateEvent`) VALUES
(1, 'Catalyst', '2023-05-05'),
(2, 'Roque 1V', '2023-05-06'),
(3, 'Blood Moon', '2023-05-07'),
(4, 'Lleisiau Clywedog / Cor Daw', '2023-05-12'),
(5, '5th Element', '2023-05-13'),
(6, 'B4Time', '2023-05-20'),
(7, 'Ozzie and the Uglies', '2023-05-26'),
(8, 'Trollbangers', '2023-05-27'),
(9, 'Abstract', '2023-05-28'),
(10, 'The Republic', '2023-06-03'),
(11, 'Dafydd Iwan', '2023-06-09'),
(12, 'Indie Anna Tones', '2023-06-10'),
(13, 'Fugitive', '2023-06-17'),
(14, 'AntiCool', '2023-07-01'),
(15, 'Bryn Fon', '2023-07-07'),
(16, 'Total Chaos', '2023-07-08'),
(17, 'Insanity Beach', '2023-07-15'),
(18, 'Fractions', '2023-07-22'),
(19, 'Misfits', '2023-07-29'),
(20, 'The Clan', '2023-08-12'),
(21, 'Pepe le Moko', '2023-08-19'),
(22, 'Fleur de Lys / Catalyst', '2023-09-08'),
(23, 'Bwncath', '2023-10-06');

-- --------------------------------------------------------

--
-- Table structure for table `handle`
--

CREATE TABLE `handle` (
  `IdAdmin` int(11) NOT NULL,
  `IdEvent` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `handle`
--

INSERT INTO `handle` (`IdAdmin`, `IdEvent`) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(1, 5),
(1, 6),
(1, 7),
(1, 8),
(1, 9),
(1, 10),
(1, 11),
(1, 12),
(1, 13),
(1, 14),
(1, 15),
(1, 16),
(1, 17),
(1, 18),
(1, 19),
(1, 20),
(1, 21),
(1, 22),
(1, 23);

-- --------------------------------------------------------

--
-- Table structure for table `manage`
--

CREATE TABLE `manage` (
  `IdAdmin` int(11) NOT NULL,
  `IdProduct` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `person`
--

CREATE TABLE `person` (
  `IdPerson` int(11) NOT NULL,
  `FirstNamePerson` varchar(50) NOT NULL,
  `LastNamePerson` varchar(50) NOT NULL,
  `MailPerson` varchar(50) NOT NULL,
  `PasswordPerson` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `person`
--

INSERT INTO `person` (`IdPerson`, `FirstNamePerson`, `LastNamePerson`, `MailPerson`, `PasswordPerson`) VALUES
(1, 'Quentin', 'Sarger', 'quentin.sarger@glyndwr.ac.uk', 'QuentinGlyns23'),
(2, 'Lucas', 'Arnould', 'lucas.arnould@glyndwr.ac.ul', 'LucasGlyns23'),
(3, 'Guillaume', 'Pouvreau', 'guillaume.pouvreau@glyndwr.ac.uk', 'GuillaumeGlyns23'),
(4, 'Doug', 'Brewing', 'doug.brewing@saithseren.co.uk', 'DougBrew23'),
(5, 'Dave', 'Bar', 'dave.bar@saithseren.co.uk', 'DaveBrewer23'),
(6, 'Charles', 'Evans', 'charles.evan@saithseren.co.uk', 'CharlesChair23');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `IdProduct` int(11) NOT NULL,
  `NameProduct` varchar(50) NOT NULL,
  `PriceProduct` decimal(10,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `see`
--

CREATE TABLE `see` (
  `IdClient` int(11) NOT NULL,
  `IdProduct` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`IdAdmin`),
  ADD UNIQUE KEY `IdPerson` (`IdPerson`),
  ADD KEY `IdPerson_2` (`IdPerson`),
  ADD KEY `IdPerson_3` (`IdPerson`);

--
-- Indexes for table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`IdClient`),
  ADD KEY `IdPerson` (`IdPerson`);

--
-- Indexes for table `consult`
--
ALTER TABLE `consult`
  ADD PRIMARY KEY (`IdClient`,`IdEvent`),
  ADD KEY `FK_EventConcult` (`IdEvent`);

--
-- Indexes for table `event`
--
ALTER TABLE `event`
  ADD PRIMARY KEY (`IdEvent`);

--
-- Indexes for table `handle`
--
ALTER TABLE `handle`
  ADD PRIMARY KEY (`IdAdmin`,`IdEvent`),
  ADD KEY `FK_EventHandle` (`IdEvent`);

--
-- Indexes for table `manage`
--
ALTER TABLE `manage`
  ADD PRIMARY KEY (`IdAdmin`,`IdProduct`),
  ADD KEY `FK_ProductManage` (`IdProduct`);

--
-- Indexes for table `person`
--
ALTER TABLE `person`
  ADD PRIMARY KEY (`IdPerson`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`IdProduct`);

--
-- Indexes for table `see`
--
ALTER TABLE `see`
  ADD PRIMARY KEY (`IdClient`,`IdProduct`),
  ADD KEY `FK_ProductSee` (`IdProduct`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `IdAdmin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `client`
--
ALTER TABLE `client`
  MODIFY `IdClient` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `event`
--
ALTER TABLE `event`
  MODIFY `IdEvent` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `person`
--
ALTER TABLE `person`
  MODIFY `IdPerson` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `IdProduct` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `admin`
--
ALTER TABLE `admin`
  ADD CONSTRAINT `FK_PersonAdmin` FOREIGN KEY (`IdPerson`) REFERENCES `person` (`IdPerson`);

--
-- Constraints for table `client`
--
ALTER TABLE `client`
  ADD CONSTRAINT `FK_PersonClient` FOREIGN KEY (`IdPerson`) REFERENCES `person` (`IdPerson`);

--
-- Constraints for table `consult`
--
ALTER TABLE `consult`
  ADD CONSTRAINT `FK_ClientConsult` FOREIGN KEY (`IdClient`) REFERENCES `client` (`IdClient`),
  ADD CONSTRAINT `FK_EventConcult` FOREIGN KEY (`IdEvent`) REFERENCES `event` (`IdEvent`);

--
-- Constraints for table `handle`
--
ALTER TABLE `handle`
  ADD CONSTRAINT `FK_AdminHandle` FOREIGN KEY (`IdAdmin`) REFERENCES `admin` (`IdAdmin`),
  ADD CONSTRAINT `FK_EventHandle` FOREIGN KEY (`IdEvent`) REFERENCES `event` (`IdEvent`);

--
-- Constraints for table `manage`
--
ALTER TABLE `manage`
  ADD CONSTRAINT `FK_AdminManage` FOREIGN KEY (`IdAdmin`) REFERENCES `admin` (`IdAdmin`),
  ADD CONSTRAINT `FK_ProductManage` FOREIGN KEY (`IdProduct`) REFERENCES `product` (`IdProduct`);

--
-- Constraints for table `see`
--
ALTER TABLE `see`
  ADD CONSTRAINT `FK_ClientSee` FOREIGN KEY (`IdClient`) REFERENCES `client` (`IdClient`),
  ADD CONSTRAINT `FK_ProductSee` FOREIGN KEY (`IdProduct`) REFERENCES `product` (`IdProduct`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
