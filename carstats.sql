-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:3307
-- Généré le : mer. 01 mars 2023 à 11:47
-- Version du serveur : 10.4.27-MariaDB
-- Version de PHP : 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `carstats`
--

-- --------------------------------------------------------

--
-- Structure de la table `brand`
--

CREATE TABLE `brand` (
  `nomB` varchar(30) NOT NULL,
  `paysB` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `brand`
--

INSERT INTO `brand` (`nomB`, `paysB`) VALUES
('Alpine', 'France'),
('Aston Martin', 'Angleterre'),
('Audi', 'Allemagne'),
('Bentley', 'Angleterre'),
('BMW', 'Allemagne'),
('Bugatti', 'France'),
('Ferrari', 'Italie'),
('Jaguar', 'Angleterre'),
('Lamborghini', 'Italie'),
('Maserati', 'Italie'),
('McLaren', 'Angleterre'),
('Mercedes', 'Allemagne'),
('Pagani', 'Italie'),
('Porsche', 'Allemagne'),
('Rolls Royce', 'Angleterre');

-- --------------------------------------------------------

--
-- Structure de la table `models`
--

CREATE TABLE `models` (
  `nomB` varchar(30) DEFAULT NULL,
  `nomM` varchar(30) NOT NULL,
  `nombreF` int(11) DEFAULT NULL,
  `anneeM` int(11) DEFAULT NULL,
  `motorisation` varchar(30) DEFAULT NULL,
  `horsePower` int(11) DEFAULT NULL,
  `kwPower` int(11) DEFAULT NULL,
  `cynlinder` int(11) DEFAULT NULL,
  `transmission` char(30) DEFAULT NULL,
  `couple` int(11) DEFAULT NULL,
  `weightM` int(11) DEFAULT NULL,
  `vMax` int(11) DEFAULT NULL,
  `acceleration` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `models`
--

INSERT INTO `models` (`nomB`, `nomM`, `nombreF`, `anneeM`, `motorisation`, `horsePower`, `kwPower`, `cynlinder`, `transmission`, `couple`, `weightM`, `vMax`, `acceleration`) VALUES
('Ferrari', '296 GTB', NULL, 2021, 'V6', 830, 610, 2992, 'RWD', 900, 1455, 330, 2.9),
('Ferrari', '296 GTS', NULL, 2022, 'V6', 830, 610, 2992, 'RWD', 900, 1540, 330, 2.9),
('Ferrari', '812 COMPETIZIONE', 999, 2022, 'V12', 830, 610, 6496, 'RWD', 692, 1487, 340, 2.85),
('Ferrari', '812 COMPETIZIONE APERTA', 599, 2022, 'V12', 830, 610, 6496, 'RWD', 692, 1487, 340, 2.85),
('Ferrari', '812 GTS', NULL, 2020, 'V12', 800, 588, 6496, 'RWD', 718, 1645, 345, 3),
('Alpine', 'A110', 10103, 2017, '4 Cylindres', 252, 185, 1798, 'RWD', 320, 1102, 250, 4.5),
('Alpine', 'A110 GT', NULL, 2022, '4 Cylindres', 300, 221, 1798, 'RWD', 340, 1119, 250, 4.5),
('Alpine', 'A110 R', NULL, 2022, '4 Cylindres', 300, 221, 1798, 'RWD', 340, 1000, 285, 3.9),
('Alpine', 'A110 S', NULL, 2022, '4 Cylindres', 300, 221, 1798, 'RWD', 340, 1109, 250, 4.2),
('Lamborghini', 'AVENTADOR SVJ', NULL, 2018, 'V12', 770, 566, 6498, 'AWD', 720, 1525, 350, 2.8),
('Lamborghini', 'AVENTADOR SVJ ROADSTER', 800, 2019, 'V12', 770, 566, 6498, 'AWD', 720, 1575, 350, 2.9),
('Lamborghini', 'AVENTADOR ULTIMAE', 350, 2022, 'V12', 780, 574, 6498, 'AWD', 720, 1550, 355, 2.8),
('Lamborghini', 'AVENTADOR ULTIMAE ROADSTER', 250, 2022, 'V12', 780, 574, 6498, 'AWD', 720, 1600, 355, 2.9),
('Bugatti', 'CENTODIECI', 10, 2019, 'W16', 1500, 1178, 7993, 'AWD', 1600, 1975, 380, 2.4),
('Bugatti', 'CHIRON', 500, 2016, 'W16', 1500, 1103, 7993, 'AWD', 1600, 1995, 420, 2.4),
('Bugatti', 'CHIRON PUR SPORT', 60, 2020, 'W16', 1500, 1178, 7993, 'AWD', 1600, 1976, 440, 2.3),
('Bugatti', 'CHIRON SPORT', 500, 2018, 'W16', 1500, 1103, 7993, 'AWD', 1600, 1977, 420, 2.4),
('Bugatti', 'CHIRON SUPER SPORT', 30, 2021, 'W16', 1600, 1178, 7993, 'AWD', 1600, 1977, 440, 2.4),
('Pagani', 'CODALUNGA', 5, 2022, 'V12', 840, 618, 5980, 'RWD', 811, NULL, NULL, NULL),
('Lamborghini', 'COUNTACH LPI', 112, 2022, 'V12', 814, 599, 6498, 'AWD', 720, 1595, 355, 2.8),
('Ferrari', 'DAYTONA SP3', 599, 2022, 'V12', 840, 618, 6496, 'RWD', 697, 1485, 340, 2.85),
('Aston Martin', 'DB11 V12', NULL, 2017, 'V12', 639, 470, 5200, 'RWD', 700, 1870, 334, 3.7),
('Aston Martin', 'DB11 V8', NULL, 2017, 'V8', 535, 383, 3892, 'RWD', 675, 1760, 309, 4),
('Aston Martin', 'DB11 VOLANTE', NULL, 2017, 'V8', 535, 383, 3892, 'RWD', 675, 1870, 309, 4.1),
('Aston Martin', 'DBS SUPERLEGGERA ', NULL, 2019, 'V12', 725, 533, 5200, 'RWD', 900, 1693, 340, 3.4),
('Aston Martin', 'DBS VOLANTE ', NULL, 2019, 'V12', 725, 533, 5200, 'RWD', 900, 1863, 340, 3.6),
('Aston Martin', 'DBX', NULL, 2020, 'V8', 550, 405, 3982, 'AWD', 700, 2245, 291, 4.5),
('Aston Martin', 'DBX 707', NULL, 2022, 'V8', 707, 520, 3982, 'AWD', 900, 2245, 310, 3.3),
('Bugatti', 'DIVO', 40, 2018, 'W16', 1500, 1178, 7993, 'AWD', 1600, 1960, 420, 2.4),
('Ferrari', 'F8 SPIDER', NULL, 2020, 'V8', 720, 529, 3902, 'RWD', 770, 1400, 340, 2.9),
('Ferrari', 'F8 TRIBUTO', NULL, 2019, 'V8', 720, 529, 3902, 'RWD', 770, 1435, 340, 2.9),
('Pagani', 'HUAYRA', 150, 2011, 'V12', 730, 537, 5980, 'RWD', 1000, 1350, 385, 3.2),
('Pagani', 'HUAYRA BC', 40, 2016, 'V12', 800, 588, 5980, 'RWD', 1050, 1220, 385, 3.2),
('Pagani', 'HUAYRA R', 30, 2020, 'V12', 850, 625, 5980, 'RWD', 750, 1050, 385, 3.2),
('Pagani', 'HUAYRA ROADSTER', 100, 2019, 'V12', 730, 537, 5980, 'RWD', 1000, 1350, 385, 3.2),
('Pagani', 'HUAYRA ROADSTER BC', 40, 2016, 'V12', 800, 588, 5980, 'RWD', 1050, 1220, 385, 3.2),
('Lamborghini', 'HURACAN EVO', NULL, 2020, 'V10', 640, 470, 5204, 'AWD', 600, 1422, 325, 3),
('Lamborghini', 'HURACAN EVO RWD', NULL, 2020, 'V10', 610, 449, 5204, 'RWD', 560, 1389, 325, 3.3),
('Lamborghini', 'HURACAN EVO RWD SPYDER', NULL, 2020, 'V10', 610, 449, 5204, 'RWD', 560, 1509, 324, 3.4),
('Lamborghini', 'HURACAN EVO SPYDER', NULL, 2020, 'V10', 640, 470, 5204, 'AWD', 600, 1542, 325, 3.1),
('Lamborghini', 'HURACAN STO', NULL, 2020, 'V10', 640, 470, 5204, 'RWD', 565, 1339, 310, 3),
('Lamborghini', 'HURACAN TECNICA', NULL, 2022, 'V10', 640, 470, 5204, 'RWD', 565, 1379, 325, 3.2),
('Pagani', 'IMOLA', 5, 2019, 'V12', 827, 616, 5980, 'RWD', 750, 1246, 360, 3),
('Bugatti', 'LA VOITURE NOIRE', 1, 2019, 'W16', 1500, 1103, 7993, 'AWD', 1600, 1995, 420, 2.4),
('Ferrari', 'MONZA SP1', 499, 2019, 'V12', 810, 596, 6496, 'RWD', 719, 1500, 300, 2.9),
('Ferrari', 'MONZA SP2', 499, 2019, 'V12', 810, 596, 6496, 'RWD', 719, 1520, 300, 2.9),
('Ferrari', 'PORTOFINO M', NULL, 2020, 'V8', 620, 529, 3855, 'RWD', 760, 1664, 320, 3.4),
('Ferrari', 'Purosangue', 2000, 2022, 'V12', 725, 533, 6496, 'AWD', 716, 2180, 310, 3.3),
('Ferrari', 'ROMA', NULL, 2020, 'V8', 620, 456, 3855, 'RWD', 760, 1472, 320, 3.4),
('Ferrari', 'SF90 SPIDER', NULL, 2020, 'V8', 1000, 735, 3990, 'AWD', 900, 1570, 340, 2.5),
('Ferrari', 'SF90 STRADALE', NULL, 2019, 'V8', 1000, 735, 3990, 'AWD', 900, 1540, 340, 2.5),
('Lamborghini', 'SIAN FKP 37', 63, 2020, 'V12', 819, 602, 6498, 'AWD', 720, 1595, 355, 2.8),
('Lamborghini', 'SIAN ROADSTER', 19, 2020, 'V12', 819, 602, 6498, 'AWD', 720, 1645, 350, 2.9),
('Pagani', 'TRICOLOR', 3, 2010, 'V12', 680, 550, 7291, 'RWD', 780, 1280, 350, 3.3),
('Lamborghini', 'URUS', NULL, 2017, 'V10', 650, 478, 3996, 'AWD', 850, 2125, 305, 3.7),
('Lamborghini', 'URUS PERFORMANTE', NULL, 2022, 'V10', 666, 490, 3996, 'AWD', 850, 2150, 306, 3.6),
('Lamborghini', 'URUS S', NULL, 2022, 'V10', 666, 490, 3996, 'AWD', 850, 2197, 305, 3.6),
('Pagani', 'UTOPIA', 99, 2022, 'V12', 864, 635, 5980, 'RWD', 1100, 1280, NULL, NULL),
('Aston Martin', 'V12 VANTAGE', 333, 2022, 'V12', 700, 515, 5200, 'RWD', 753, 1795, 322, 3.5),
('Aston Martin', 'V12 VANTAGE ROADSTER', 249, 2022, 'V12', 700, 515, 5200, 'RWD', 753, 1855, 322, 3.6),
('Aston Martin', 'V8 VANTAGE', NULL, 2018, 'V8', 510, 375, 3982, 'RWD', 685, 1530, 314, 3.6),
('Aston Martin', 'V8 VANTAGE F1 EDITION', NULL, 2018, 'V8', 535, 393, 3982, 'RWD', 685, 1570, 314, 3.5),
('Aston Martin', 'V8 VANTAGE ROADSTER', NULL, 2018, 'V8', 510, 375, 3982, 'RWD', 685, 1628, 306, 3.8),
('Aston Martin', 'V8 VANTAGE ROADSTER F1 EDITION', NULL, 2018, 'V8', 535, 393, 3982, 'RWD', 685, 1645, 305, 3.6),
('Aston Martin', 'VALHALLA ', 500, 2019, 'V8', 950, 699, 3982, 'AWD', 1000, 1350, 330, 2.5),
('Aston Martin', 'VALKYRIE AMR PRO', 40, 2018, 'V12', 1015, 746, 6500, 'RWD', 900, 1030, 400, 2.5),
('Aston Martin', 'VALKYRIE COUPE', 235, 2019, 'V12', 1155, 850, 6500, 'RWD', 900, 1030, 400, 2.5),
('Aston Martin', 'VALKYRIE SPIDER', 85, 2021, 'V12', 1155, 850, 6500, 'RWD', 900, 1030, 400, 2.5),
('Bugatti', 'W16 MISTRAL', 100, 2022, 'W16', 1600, 1178, 7993, 'AWD', 1600, 1977, 420, 2.4),
('Pagani', 'ZONDA C12', 5, 1999, 'V12', 394, 290, 5987, 'RWD', 571, 1250, 300, 4.2),
('Pagani', 'ZONDA C12-S', 15, 2001, 'V12', 550, 404, 7010, 'RWD', 750, 1240, 350, 3.7),
('Pagani', 'ZONDA C12-S 7.3', 17, 2002, 'V12', 555, 408, 7291, 'RWD', 750, 1280, 355, 3.7),
('Pagani', 'ZONDA CINQUE', 5, 2008, 'V12', 680, 550, 7291, 'RWD', 780, 1210, 355, 3.4),
('Pagani', 'ZONDA CINQUE ROADSTER', 5, 2008, 'V12', 680, 550, 7291, 'RWD', 780, 1210, 355, 3.4),
('Pagani', 'ZONDA F', 25, 2005, 'V12', 602, 443, 7291, 'RWD', 760, 1274, 345, 3.5),
('Pagani', 'ZONDA R', 10, 2007, 'V12', 750, 515, 5987, 'RWD', 711, 1070, 375, 3.5),
('Pagani', 'ZONDA REVOLUTION', 5, 2010, 'V12', 800, 588, 5987, 'RWD', 711, 1070, 375, 2.7),
('Pagani', 'ZONDA ROADSTER', 40, 2002, 'V12', 555, 408, 7291, 'RWD', 750, 1280, 355, 3.7),
('Pagani', 'ZONDA ROADSTER F', 25, 2005, 'V12', 602, 443, 7291, 'RWD', 760, 1274, 345, 3.5);

-- --------------------------------------------------------

--
-- Structure de la table `registration`
--

CREATE TABLE `registration` (
  `Id` int(11) NOT NULL,
  `password` varchar(20) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `registration`
--

INSERT INTO `registration` (`Id`, `password`, `email`) VALUES
(424, '', 'clement.dumas@efrei.net');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `brand`
--
ALTER TABLE `brand`
  ADD PRIMARY KEY (`nomB`);

--
-- Index pour la table `models`
--
ALTER TABLE `models`
  ADD PRIMARY KEY (`nomM`),
  ADD KEY `nomB` (`nomB`);

--
-- Index pour la table `registration`
--
ALTER TABLE `registration`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `registration`
--
ALTER TABLE `registration`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=425;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `models`
--
ALTER TABLE `models`
  ADD CONSTRAINT `models_ibfk_1` FOREIGN KEY (`nomB`) REFERENCES `brand` (`nomB`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
