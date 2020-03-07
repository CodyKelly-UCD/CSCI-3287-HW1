-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 07, 2020 at 06:43 PM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `soccer_nguyen_kelly`
--

-- --------------------------------------------------------

--
-- Table structure for table `country`
--

CREATE TABLE `country` (
  `Country_Name` varchar(25) NOT NULL,
  `Population` decimal(10,2) DEFAULT NULL,
  `No_of_Worldcup_won` int(11) DEFAULT NULL,
  `Manager` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `country`
--

INSERT INTO `country` (`Country_Name`, `Population`, `No_of_Worldcup_won`, `Manager`) VALUES
('\'Algeria\'', '39.90', 0, '\'Vahid Halilhodzic\''),
('\'Argentina\'', '42.30', 2, '\'Alejandro Sabella\''),
('\'Australia\'', '23.59', 0, '\'Ange Postecoglou\''),
('\'Belgium\'', '11.20', 0, '\'Marc Wilmots\''),
('\'Bosnia & Herzegovin', '3.83', 0, '\'Safet Susic\''),
('\'Brazil\'', '202.40', 5, '\'Luiz Felipe Scolari'),
('\'Cameroon\'', '23.03', 0, '\'Volker Finke\''),
('\'Chile\'', '17.62', 0, '\'Jorge Sampaoli\''),
('\'Columbia\'', '49.14', 0, '\'Jose Pekerman\''),
('\'Costa Rica\'', '4.87', 0, '\'Jorge Luis Pinto\''),
('\'Croatia\'', '4.25', 0, '\'Niko Kovac\''),
('\'Ecuador\'', '15.98', 0, '\'Reinaldo Rueda\''),
('\'England\'', '53.50', 1, '\'Roy Hodgson\''),
('\'France\'', '64.60', 1, '\'Didier Deschamps\''),
('\'Germany\'', '82.60', 4, '\'Joachim Low\''),
('\'Ghana\'', '25.90', 0, '\'James Kwesi Appiah\''),
('\'Greece\'', '11.20', 0, '\'Fernando Santos\''),
('\'Honduras\'', '8.09', 0, '\'Luis Fernando Suare'),
('\'Iran\'', '77.97', 0, '\'Carlos Queiroz\''),
('\'Italy\'', '61.07', 4, '\'Cesare Prandelli\''),
('\'Ivory Coast\'', '20.32', 0, '\'Sabri Lamouchi\''),
('\'Japan\'', '127.06', 0, '\'Alberto Zaccheroni\''),
('\'Mexico\'', '122.30', 0, '\'Miguel Herrera\''),
('\'Netherlands\'', '16.90', 0, '\'Louis van Gaal\''),
('\'Nigeria\'', '173.60', 0, '\'Stephen Keshi\''),
('\'Portugal\'', '10.58', 0, '\'Paulo Bento\''),
('\'Russia\'', '142.46', 0, '\'Fabio Capello\''),
('\'South Korea\'', '50.42', 0, '\'Hong Myung-bo\''),
('\'Spain\'', '47.10', 1, '\'Vicente del Bosque\''),
('\'Switzerland\'', '8.00', 0, '\'Ottmar Hitzfeld\''),
('\'Uruguay\'', '3.42', 2, '\'Oscar Tabarez\''),
('\'USA\'', '318.90', 0, '\'Jurgen Klinsmann\'');

-- --------------------------------------------------------

--
-- Table structure for table `match_results`
--

CREATE TABLE `match_results` (
  `Match_id` int(11) DEFAULT NULL,
  `Date_of_Match` datetime DEFAULT NULL,
  `Start_Time_Of_Match` time DEFAULT NULL,
  `Team1` varchar(25) DEFAULT NULL,
  `Team2` varchar(25) DEFAULT NULL,
  `Team1_score` int(11) DEFAULT NULL,
  `Team2_score` int(11) DEFAULT NULL,
  `Stadium_Name` varchar(35) DEFAULT NULL,
  `Host_City` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `match_results`
--

INSERT INTO `match_results` (`Match_id`, `Date_of_Match`, `Start_Time_Of_Match`, `Team1`, `Team2`, `Team1_score`, `Team2_score`, `Stadium_Name`, `Host_City`) VALUES
(1, '0000-00-00 00:00:00', '00:00:00', '\'Brazil\'', '\'Croatia\'', 3, 1, '\'Arena de Sao Paulo\'', '\'Sao Paulo\''),
(2, '0000-00-00 00:00:00', '00:00:00', '\'Mexico\'', '\'Cameroon\'', 1, 0, '\'Estadio das Dunas\'', '\'Natal\''),
(3, '0000-00-00 00:00:00', '00:00:00', '\'Spain\'', '\'Netherlands\'', 1, 5, '\'Arena Fonte Nova\'', '\'Salvador\''),
(4, '0000-00-00 00:00:00', '00:00:00', '\'Chile\'', '\'Australia\'', 3, 1, '\'Arena Pantanal\'', '\'Cuiaba\''),
(5, '0000-00-00 00:00:00', '00:00:00', '\'Columbia\'', '\'Greece\'', 3, 0, '\'Estadio Mineirao\'', '\'Belo Horizonte\''),
(6, '0000-00-00 00:00:00', '00:00:00', '\'Ivory Coast\'', '\'Japan\'', 2, 1, '\'Arena Pernamuco\'', '\'Recife\''),
(7, '0000-00-00 00:00:00', '00:00:00', '\'Uruguay\'', '\'Costa Rica\'', 1, 3, '\'Estadio Castelao\'', '\'Fortaleza\''),
(8, '0000-00-00 00:00:00', '00:00:00', '\'England\'', '\'Italy\'', 1, 2, '\'Arena Amazonia\'', '\'Manaus\''),
(9, '0000-00-00 00:00:00', '00:00:00', '\'Switzerland\'', '\'Ecuador\'', 2, 1, '\'Estadio Nacional\'', '\'Brasilia\''),
(10, '0000-00-00 00:00:00', '00:00:00', '\'France\'', '\'Honduras\'', 3, 0, '\'Estadio Beira-Rio\'', '\'Porto Alegre\''),
(12, '0000-00-00 00:00:00', '00:00:00', '\'Iran\'', '\'Nigeria\'', 0, 0, '\'Arena Da Baixada\'', '\'Curitiba\''),
(13, '0000-00-00 00:00:00', '00:00:00', '\'Germany\'', '\'Portugal\'', 4, 0, '\'Arena Fonte Nova\'', '\'Salvador\''),
(14, '0000-00-00 00:00:00', '00:00:00', '\'Ghana\'', '\'USA\'', 1, 2, '\'Estadio das Dunas\'', '\'Natal\''),
(15, '0000-00-00 00:00:00', '00:00:00', '\'Belgium\'', '\'Algeria\'', 2, 1, '\'Estadio Mineirao\'', '\'Belo Horizonte\''),
(16, '0000-00-00 00:00:00', '00:00:00', '\'Russia\'', '\'South Korea\'', 1, 1, '\'Arena Pantanal\'', '\'Cuiaba\''),
(17, '0000-00-00 00:00:00', '00:00:00', '\'Brazil\'', '\'Mexico\'', 0, 0, '\'Estadio Castelao\'', '\'Fortaleza\''),
(18, '0000-00-00 00:00:00', '00:00:00', '\'Cameroon\'', '\'Croatia\'', 0, 4, '\'Arena Amazonia\'', '\'Manaus\''),
(19, '0000-00-00 00:00:00', '00:00:00', '\'Spain\'', '\'Chile\'', 0, 2, '\'Estadio do Maracana\'', '\'Rio De Janerio\''),
(20, '0000-00-00 00:00:00', '00:00:00', '\'Australia\'', '\'Netherlands\'', 2, 3, '\'Estadio Beira-Rio\'', '\'Porto Alegre\''),
(21, '0000-00-00 00:00:00', '00:00:00', '\'Columbia\'', '\'Ivory Coast\'', 2, 1, '\'Estadio Nacional\'', '\'Brasilia\''),
(22, '0000-00-00 00:00:00', '00:00:00', '\'Japan\'', '\'Greece\'', 0, 0, '\'Estadio das Dunas\'', '\'Natal\''),
(23, '0000-00-00 00:00:00', '00:00:00', '\'Uruguay\'', '\'England\'', 2, 1, '\'Arena de Sao Paulo\'', '\'Sao Paulo\''),
(24, '0000-00-00 00:00:00', '00:00:00', '\'Italy\'', '\'Costa Rica\'', 0, 1, '\'Arena Pernamuco\'', '\'Recife\''),
(25, '0000-00-00 00:00:00', '00:00:00', '\'Switzerland\'', '\'France\'', 2, 5, '\'Arena Fonte Nova\'', '\'Salvador\''),
(26, '0000-00-00 00:00:00', '00:00:00', '\'Honduras\'', '\'Ecuador\'', 1, 2, '\'Arena Da Baixada\'', '\'Curitiba\''),
(27, '0000-00-00 00:00:00', '00:00:00', '\'Argentina\'', '\'Iran\'', 1, 0, '\'Estadio Mineirao\'', '\'Belo Horizonte\''),
(29, '0000-00-00 00:00:00', '00:00:00', '\'Germany\'', '\'Ghana\'', 2, 2, '\'Estadio Castelao\'', '\'Fortaleza\''),
(30, '0000-00-00 00:00:00', '00:00:00', '\'USA\'', '\'Portugal\'', 2, 2, '\'Arena Amazonia\'', '\'Manaus\''),
(31, '0000-00-00 00:00:00', '00:00:00', '\'Belgium\'', '\'Russia\'', 1, 0, '\'Estadio do Maracana\'', '\'Rio De Janerio\''),
(32, '0000-00-00 00:00:00', '00:00:00', '\'South Korea\'', '\'Algeria\'', 2, 4, '\'Estadio Beira-Rio\'', '\'Porto Alegre\''),
(33, '0000-00-00 00:00:00', '00:00:00', '\'Cameroon\'', '\'Brazil\'', 1, 4, '\'Estadio Nacional\'', '\'Brasilia\''),
(34, '0000-00-00 00:00:00', '00:00:00', '\'Croatia\'', '\'Mexico\'', 1, 3, '\'Arena Pernamuco\'', '\'Recife\''),
(35, '0000-00-00 00:00:00', '00:00:00', '\'Australia\'', '\'Spain\'', 0, 3, '\'Arena Da Baixada\'', '\'Curitiba\''),
(36, '0000-00-00 00:00:00', '00:00:00', '\'Netherlands\'', '\'Chile\'', 2, 0, '\'Arena de Sao Paulo\'', '\'Sao Paulo\''),
(37, '0000-00-00 00:00:00', '00:00:00', '\'Japan\'', '\'Columbia\'', 1, 4, '\'Arena Pantanal\'', '\'Cuiaba\''),
(38, '0000-00-00 00:00:00', '00:00:00', '\'Greece\'', '\'Ivory Coast\'', 2, 1, '\'Estadio Castelao\'', '\'Fortaleza\''),
(39, '0000-00-00 00:00:00', '00:00:00', '\'Italy\'', '\'Uruguay\'', 0, 1, '\'Estadio das Dunas\'', '\'Natal\''),
(40, '0000-00-00 00:00:00', '00:00:00', '\'Costa Rica\'', '\'England\'', 0, 0, '\'Estadio Mineirao\'', '\'Belo Horizonte\''),
(41, '0000-00-00 00:00:00', '00:00:00', '\'Honduras\'', '\'Switzerland\'', 0, 3, '\'Arena Amazonia\'', '\'Manaus\''),
(42, '0000-00-00 00:00:00', '00:00:00', '\'Ecuador\'', '\'France\'', 0, 0, '\'Estadio do Maracana\'', '\'Rio De Janerio\''),
(43, '0000-00-00 00:00:00', '00:00:00', '\'Nigeria\'', '\'Argentina\'', 2, 3, '\'Estadio Beira-Rio\'', '\'Porto Alegre\''),
(45, '0000-00-00 00:00:00', '00:00:00', '\'USA\'', '\'Germany\'', 0, 1, '\'Arena Pernamuco\'', '\'Recife\''),
(46, '0000-00-00 00:00:00', '00:00:00', '\'Portugal\'', '\'Ghana\'', 2, 1, '\'Estadio Nacional\'', '\'Brasilia\''),
(47, '0000-00-00 00:00:00', '00:00:00', '\'South Korea\'', '\'Belgium\'', 0, 1, '\'Arena de Sao Paulo\'', '\'Sao Paulo\''),
(48, '0000-00-00 00:00:00', '00:00:00', '\'Algeria\'', '\'Russia\'', 1, 1, '\'Arena Da Baixada\'', '\'Curitiba\''),
(49, '0000-00-00 00:00:00', '00:00:00', '\'Brazil\'', '\'Chile\'', 1, 1, '\'Estadio Mineirao\'', '\'Belo Horizonte\''),
(50, '0000-00-00 00:00:00', '00:00:00', '\'Columbia\'', '\'Uruguay\'', 2, 0, '\'Estadio do Maracana\'', '\'Rio De Janerio\''),
(51, '0000-00-00 00:00:00', '00:00:00', '\'Netherlands\'', '\'Mexico\'', 2, 1, '\'Estadio Castelao\'', '\'Fortaleza\''),
(52, '0000-00-00 00:00:00', '00:00:00', '\'Costa Rica\'', '\'Greece\'', 1, 1, '\'Arena Pernamuco\'', '\'Recife\''),
(53, '0000-00-00 00:00:00', '00:00:00', '\'France\'', '\'Nigeria\'', 2, 0, '\'Estadio Nacional\'', '\'Brasilia\''),
(54, '0000-00-00 00:00:00', '00:00:00', '\'Germany\'', '\'Algeria\'', 2, 1, '\'Estadio Beira-Rio\'', '\'Porto Alegre\''),
(55, '0000-00-00 00:00:00', '00:00:00', '\'Argentina\'', '\'Switzerland\'', 1, 0, '\'Arena de Sao Paulo\'', '\'Sao Paulo\''),
(56, '0000-00-00 00:00:00', '00:00:00', '\'Belgium\'', '\'USA\'', 2, 1, '\'Arena Fonte Nova\'', '\'Salvador\''),
(57, '0000-00-00 00:00:00', '00:00:00', '\'Brazil\'', '\'Columbia\'', 2, 1, '\'Estadio Castelao\'', '\'Fortaleza\''),
(58, '0000-00-00 00:00:00', '00:00:00', '\'France\'', '\'Germany\'', 0, 1, '\'Estadio do Maracana\'', '\'Rio De Janerio\''),
(59, '0000-00-00 00:00:00', '00:00:00', '\'Netherlands\'', '\'Costa Rica\'', 0, 0, '\'Arena Fonte Nova\'', '\'Salvador\''),
(60, '0000-00-00 00:00:00', '00:00:00', '\'Argentina\'', '\'Belgium\'', 1, 0, '\'Estadio Nacional\'', '\'Brasilia\''),
(61, '0000-00-00 00:00:00', '00:00:00', '\'Brazil\'', '\'Germany\'', 1, 7, '\'Estadio Mineirao\'', '\'Belo Horizonte\''),
(62, '0000-00-00 00:00:00', '00:00:00', '\'Netherlands\'', '\'Argentina\'', 0, 0, '\'Arena de Sao Paulo\'', '\'Sao Paulo\''),
(63, '0000-00-00 00:00:00', '00:00:00', '\'Brazil\'', '\'Netherlands\'', 0, 3, '\'Estadio Nacional\'', '\'Brasilia\''),
(64, '0000-00-00 00:00:00', '00:00:00', '\'Germany\'', '\'Argentina\'', 1, 0, '\'Estadio do Maracana\'', '\'Rio De Janerio\'');

-- --------------------------------------------------------

--
-- Table structure for table `players`
--

CREATE TABLE `players` (
  `Player_id` int(11) NOT NULL,
  `Name` varchar(40) DEFAULT NULL,
  `Fname` varchar(20) DEFAULT NULL,
  `Lname` varchar(35) DEFAULT NULL,
  `DOB` date DEFAULT NULL,
  `Country` varchar(20) DEFAULT NULL,
  `Height` int(11) DEFAULT NULL,
  `Club` varchar(30) DEFAULT NULL,
  `Position` varchar(10) DEFAULT NULL,
  `Caps_for_Country` int(11) DEFAULT NULL,
  `IS_CAPTAIN` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `player_assists_goals`
--

CREATE TABLE `player_assists_goals` (
  `Player_id` int(11) DEFAULT NULL,
  `No_of_Matches` int(11) DEFAULT NULL,
  `Goals` int(11) DEFAULT NULL,
  `Assists` int(11) DEFAULT NULL,
  `Minutes_Played` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `player_assists_goals`
--

INSERT INTO `player_assists_goals` (`Player_id`, `No_of_Matches`, `Goals`, `Assists`, `Minutes_Played`) VALUES
(269058, 5, 6, 2, 400),
(321722, 7, 5, 2, 682),
(314197, 5, 4, 1, 458),
(217315, 6, 4, 0, 548),
(229397, 7, 4, 1, 693),
(306548, 6, 3, 3, 245),
(373400, 3, 3, 0, 270),
(321653, 4, 3, 0, 387),
(297103, 5, 3, 3, 450),
(184616, 7, 3, 1, 690),
(213001, 2, 2, 0, 159),
(353118, 3, 2, 0, 167),
(354875, 3, 2, 1, 169),
(336098, 4, 2, 1, 173),
(270775, 2, 2, 0, 178),
(375518, 2, 2, 0, 180),
(313832, 3, 2, 0, 194),
(309316, 6, 2, 0, 258),
(359381, 3, 2, 1, 258),
(294620, 3, 2, 0, 262),
(290186, 3, 2, 1, 263),
(208353, 3, 2, 1, 270),
(182206, 5, 2, 0, 281),
(354859, 4, 2, 1, 324),
(344714, 4, 2, 0, 335),
(207851, 4, 2, 0, 387),
(228627, 4, 2, 2, 390),
(214876, 5, 2, 0, 494),
(311150, 6, 2, 0, 508),
(312868, 7, 2, 1, 640),
(271043, 7, 2, 1, 660),
(275162, 7, 2, 4, 690),
(369094, 1, 1, 0, 13),
(319436, 1, 1, 0, 15),
(359995, 1, 1, 0, 29),
(267811, 1, 1, 0, 34),
(373555, 1, 1, 0, 45),
(254166, 2, 1, 0, 50),
(184615, 3, 1, 1, 53),
(216646, 3, 1, 0, 55),
(229884, 1, 1, 0, 56),
(209502, 2, 1, 0, 67),
(228599, 4, 1, 0, 76),
(356704, 3, 1, 0, 92),
(202655, 3, 1, 1, 94),
(186808, 3, 1, 0, 100),
(270144, 4, 1, 0, 102),
(268149, 3, 1, 1, 104),
(362649, 2, 1, 0, 136),
(311554, 4, 1, 0, 140),
(183864, 3, 1, 0, 143),
(300411, 3, 1, 0, 144),
(196842, 3, 1, 1, 149),
(358015, 5, 1, 1, 165),
(298664, 3, 1, 0, 174),
(358112, 4, 1, 1, 175),
(320375, 2, 1, 0, 180),
(366309, 3, 1, 1, 190),
(207528, 3, 1, 0, 191),
(301059, 3, 1, 0, 208),
(317056, 4, 1, 0, 214),
(271414, 3, 1, 0, 220),
(187258, 3, 1, 0, 228),
(379911, 5, 1, 1, 245),
(307849, 3, 1, 0, 247),
(286278, 3, 1, 0, 249),
(306532, 3, 1, 0, 260),
(300409, 3, 1, 1, 265),
(362641, 3, 1, 0, 270),
(233500, 3, 1, 1, 270),
(197514, 3, 1, 0, 270),
(358048, 3, 1, 0, 270),
(291393, 3, 1, 0, 270),
(358114, 5, 1, 0, 270),
(254167, 3, 1, 0, 270),
(299198, 3, 1, 1, 270),
(201200, 3, 1, 1, 270),
(234551, 4, 1, 1, 296),
(214228, 4, 1, 0, 280),
(208016, 5, 1, 0, 297),
(227851, 4, 1, 0, 301),
(309716, 4, 1, 0, 304),
(270301, 4, 1, 1, 309),
(311558, 4, 1, 0, 323),
(251352, 4, 1, 0, 333),
(297106, 4, 1, 2, 335),
(312987, 4, 1, 0, 336),
(356409, 4, 1, 1, 337),
(367388, 5, 1, 1, 354),
(178119, 4, 1, 1, 360),
(267834, 4, 1, 1, 360),
(229499, 4, 1, 0, 360),
(318150, 4, 1, 1, 364),
(296827, 4, 1, 0, 367),
(196900, 5, 1, 1, 377),
(309714, 5, 1, 3, 386),
(358120, 4, 1, 2, 390),
(319358, 4, 1, 1, 390),
(183893, 4, 1, 0, 390),
(299090, 4, 1, 0, 390),
(297112, 4, 1, 1, 390),
(307529, 5, 1, 2, 415),
(290902, 5, 1, 0, 415),
(200213, 5, 1, 0, 416),
(266800, 5, 1, 1, 423),
(358014, 5, 1, 0, 427),
(290904, 5, 1, 0, 449),
(233952, 6, 1, 0, 471),
(319438, 7, 1, 0, 550),
(289964, 6, 1, 1, 570),
(271550, 7, 1, 0, 572),
(215002, 6, 1, 1, 585),
(318688, 6, 1, 1, 616),
(305036, 7, 1, 2, 654),
(319432, 7, 1, 2, 670),
(313021, 7, 1, 0, 677),
(198243, 3, 0, 2, 238),
(356399, 4, 0, 2, 250),
(360728, 4, 0, 2, 259),
(370522, 3, 0, 2, 270),
(184447, 3, 0, 2, 270),
(319428, 5, 0, 2, 365),
(273996, 5, 0, 2, 368),
(196748, 7, 0, 2, 690),
(214384, 1, 0, 1, 21),
(200179, 2, 0, 1, 34),
(201787, 3, 0, 1, 45),
(312116, 2, 0, 1, 49),
(367913, 1, 0, 1, 90),
(207906, 1, 0, 1, 90),
(355023, 1, 0, 1, 90),
(316117, 2, 0, 1, 94),
(379808, 2, 0, 1, 105),
(197464, 2, 0, 1, 135),
(298662, 2, 0, 1, 136),
(200847, 3, 0, 1, 140),
(312014, 2, 0, 1, 141),
(358099, 2, 0, 1, 148),
(210702, 2, 0, 1, 164),
(183000, 2, 0, 1, 180),
(230517, 4, 0, 1, 182),
(306424, 3, 0, 1, 207),
(306410, 3, 0, 1, 221),
(200201, 3, 0, 1, 225),
(177876, 3, 0, 1, 225),
(239237, 3, 0, 1, 264),
(300237, 3, 0, 1, 270),
(183857, 3, 0, 1, 270),
(296633, 3, 0, 1, 270),
(294619, 3, 0, 1, 270),
(339551, 3, 0, 1, 270),
(298582, 3, 0, 1, 270),
(349576, 3, 0, 1, 270),
(185641, 3, 0, 1, 270),
(274283, 3, 0, 1, 270),
(358011, 4, 0, 1, 360),
(364763, 4, 0, 1, 360),
(329092, 4, 0, 1, 360),
(229498, 4, 0, 1, 360),
(233531, 4, 0, 1, 360),
(261029, 4, 0, 1, 390),
(313559, 4, 0, 1, 390),
(183796, 5, 0, 1, 413),
(307026, 5, 0, 1, 425),
(209940, 5, 0, 1, 510),
(367918, 6, 0, 1, 525),
(218284, 6, 0, 1, 570),
(311148, 7, 0, 1, 690),
(200130, 7, 0, 1, 720);

-- --------------------------------------------------------

--
-- Table structure for table `player_cards`
--

CREATE TABLE `player_cards` (
  `Player_id` int(11) DEFAULT NULL,
  `Yellow_Cards` int(11) DEFAULT NULL,
  `Red_Cards` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `country`
--
ALTER TABLE `country`
  ADD PRIMARY KEY (`Country_Name`);

--
-- Indexes for table `match_results`
--
ALTER TABLE `match_results`
  ADD KEY `Team1` (`Team1`),
  ADD KEY `Team2` (`Team2`);

--
-- Indexes for table `players`
--
ALTER TABLE `players`
  ADD PRIMARY KEY (`Player_id`),
  ADD KEY `Country` (`Country`);

--
-- Indexes for table `player_cards`
--
ALTER TABLE `player_cards`
  ADD KEY `Player_id` (`Player_id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `match_results`
--
ALTER TABLE `match_results`
  ADD CONSTRAINT `match_results_ibfk_1` FOREIGN KEY (`Team1`) REFERENCES `country` (`Country_Name`),
  ADD CONSTRAINT `match_results_ibfk_2` FOREIGN KEY (`Team2`) REFERENCES `country` (`Country_Name`);

--
-- Constraints for table `players`
--
ALTER TABLE `players`
  ADD CONSTRAINT `players_ibfk_1` FOREIGN KEY (`Country`) REFERENCES `country` (`Country_Name`),
  ADD CONSTRAINT `players_ibfk_2` FOREIGN KEY (`Country`) REFERENCES `country` (`Country_Name`);

--
-- Constraints for table `player_cards`
--
ALTER TABLE `player_cards`
  ADD CONSTRAINT `player_cards_ibfk_1` FOREIGN KEY (`Player_id`) REFERENCES `players` (`Player_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
