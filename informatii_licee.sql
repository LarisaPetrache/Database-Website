-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Gazdă: 127.0.0.1:3306
-- Timp de generare: iun. 16, 2021 la 09:03 PM
-- Versiune server: 8.0.21
-- Versiune PHP: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Bază de date: `informatii_licee`
--

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `adrese`
--

DROP TABLE IF EXISTS `adrese`;
CREATE TABLE IF NOT EXISTS `adrese` (
  `id` int NOT NULL AUTO_INCREMENT,
  `strada` varchar(25) NOT NULL,
  `numar` int NOT NULL,
  `cod_postal` int NOT NULL,
  `localitate` varchar(50) NOT NULL,
  `judet` varchar(50) NOT NULL,
  `id_liceu` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_liceu` (`id_liceu`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Eliminarea datelor din tabel `adrese`
--

INSERT INTO `adrese` (`id`, `strada`, `numar`, `cod_postal`, `localitate`, `judet`, `id_liceu`) VALUES
(1, 'Nalbei', 3, 100085, 'Ploiesti', 'Prahova', 1),
(2, 'Bd. Independenţei', 8, 100028, 'Ploiesti', 'Prahova', 2),
(3, 'Rudului', 24, 100024, 'Ploiesti', 'Prahova', 3),
(4, 'Slănicului', 13, 106200, 'Slănic', 'Prahova', 4),
(5, 'Arcu', 4, 700125, 'Iasi', 'Iasi', 5),
(6, 'Gen. Berthelot Henri Math', 23, 10164, 'Sector 1', 'Bucuresti', 6),
(7, 'Petre Andrei', 9, 700495, 'Iasi', 'Iasi', 7),
(8, 'Delfinului', 10, 120385, 'Belcesti', 'Iasi', 8),
(9, 'Vasile Alecsandri', 104, 235200, 'Caracal', 'Olt', 9),
(10, 'Decebal', 105, 200440, 'Craiova', 'Dolj', 10),
(11, 'Nicolae Iorga', 7, 100537, 'Ploiesti', 'Prahova', 11),
(12, 'Gh. Gr. Cantacuzino', 328, 100466, 'Ploiesti', 'Prahova', 12),
(13, 'Ştefan Cel Mare', 6, 900726, 'Constanta', 'Constanta', 13),
(14, 'Calea Doftanei', 4, 105600, 'Campina', 'Prahova', 14),
(15, 'Bd. Carol', 31, 105600, 'Campina', 'Prahova', 15),
(16, 'Andrei Saguna', 1, 500123, 'Brasov', 'Brasov', 16),
(17, 'Calea Turzii', 140, 400491, 'Cluj-Napoca', 'Cluj', 17),
(18, 'Coriolean Brediceanu', 37, 300012, 'Timisoara', 'Timis', 18),
(19, 'Prof. Leca Morariu', 17, 729174, 'Suceava', 'Suceava', 19),
(20, 'Bd. Independenţei', 4, 810019, 'Braila', 'Braila', 20);

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `catedre`
--

DROP TABLE IF EXISTS `catedre`;
CREATE TABLE IF NOT EXISTS `catedre` (
  `id` int NOT NULL AUTO_INCREMENT,
  `denumire` varchar(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `denumire` (`denumire`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Eliminarea datelor din tabel `catedre`
--

INSERT INTO `catedre` (`id`, `denumire`) VALUES
(18, 'Arta agriculturii'),
(13, 'Arte'),
(9, 'Biologie'),
(8, 'Chimie'),
(14, 'Educatie fizica'),
(21, 'Educatie tehnologica'),
(7, 'Fizica'),
(11, 'Geografie'),
(15, 'Informatica'),
(10, 'Istorie'),
(2, 'Limba engleza'),
(4, 'Limba franceza'),
(3, 'Limba germana'),
(5, 'Limba latina'),
(1, 'Limba romana'),
(6, 'Matematica'),
(20, 'Mecanica'),
(17, 'Pedagogie'),
(19, 'Protectia mediului'),
(16, 'Religie'),
(12, 'Stiinte socio-umane');

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `licee`
--

DROP TABLE IF EXISTS `licee`;
CREATE TABLE IF NOT EXISTS `licee` (
  `id` int NOT NULL AUTO_INCREMENT,
  `tip` varchar(50) NOT NULL,
  `denumire` varchar(50) NOT NULL,
  `telefon` varchar(12) NOT NULL,
  `email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `mediu` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `telefon` (`telefon`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Eliminarea datelor din tabel `licee`
--

INSERT INTO `licee` (`id`, `tip`, `denumire`, `telefon`, `email`, `mediu`) VALUES
(1, 'Colegiu National', 'Nichita Stanescu', '0244599540', 'colegiulnichitastanescu@gmail.com', 'urban'),
(2, 'Colegiu National', 'Mihai Viteazul', '0244595952', 'cnmvph@gmail.com', 'urban'),
(3, 'Colegiu Economic', 'Virgil Madgearu', '0244542341', 'colegiul_economic_ploiesti@hotmail.com', 'urban'),
(4, 'Liceu Teoretic', 'Serban Voda', '0244240709', 'gsslanic@yahoo.com', 'urban'),
(5, 'Colegiu National', 'Iasi', '0232214036', 'colegiulnationaliasi@yahoo.com', 'urban'),
(6, 'Colegiu National', 'Sfantul Sava', '0213126821', 'secretariatsfsava@gmail.com', 'urban'),
(7, 'Liceu de Informatica', 'Grigore Moisil', '0232211826', 'licinfoiasi@gmail.com', 'urban'),
(8, 'Liceu Tehnologic', 'Victor Mihailescu Craiu', '0232724813', 'vmcraiu_belcesti@yahoo.com', 'rural'),
(9, 'Colegiu Agricol', 'Dimitrie Petrescu', '0249513374', 'colegiulagricolcaracal@yahoo.com', 'rural'),
(10, 'Liceu Tehnologic', 'Auto Craiova', '0351170323', 'demetrescucv2004@yahoo.com', 'urban'),
(11, 'Colegiu National Pedagogic', 'Regina Maria', '0244519688', 'liceul_pedagogic2003@yahoo.com', 'urban'),
(12, 'Colegiu Tehnic', 'Toma N. Socolescu', '0344100808', 'tsocolescu@yahoo.com', 'urban'),
(13, 'Colegiu National', 'Mircea Cel Batran', '0341405801', 'cnmbct@gmail.com', 'urban'),
(14, 'Colegiu National', 'Nicolae Grigorescu', '0244333657', 'cn_grigorescu@yahoo.com', 'urban'),
(15, 'Colegiu Tehnic ', 'Forestier Campina', '0244336521', 'grupscolarforestier@yahoo.com', 'urban'),
(16, 'Colegiu National', 'Andrei Saguna', '0268419400', 'saguna.brasov@yahoo.com', 'urban'),
(17, 'Liceu de Informatica', 'Tiberiu Popoviciu', '0264438024', 'tpopoviciu@yahoo.com', 'urban'),
(18, 'Colegiu Tehnic', 'Henri Coanda', '0256293688', 'colegiul_coanda@yahoo.com', 'urban'),
(19, 'Colegiu Economic', 'Dimitrie Cantemir', '0230520462', 'cedcsv@isj.sv.edu.ro', 'urban'),
(20, 'Colegiu National', 'Gheorghe Munteanu Murgoci', '0239619580', 'murgocibraila@yahoo.com', 'urban');

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `preda`
--

DROP TABLE IF EXISTS `preda`;
CREATE TABLE IF NOT EXISTS `preda` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_liceu` int NOT NULL,
  `id_profesor` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_profesor` (`id_profesor`),
  KEY `id_liceu` (`id_liceu`)
) ENGINE=InnoDB AUTO_INCREMENT=175 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Eliminarea datelor din tabel `preda`
--

INSERT INTO `preda` (`id`, `id_liceu`, `id_profesor`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 3),
(4, 1, 4),
(5, 1, 5),
(6, 1, 6),
(7, 1, 7),
(8, 1, 8),
(9, 1, 9),
(10, 1, 10),
(11, 1, 11),
(12, 1, 12),
(13, 1, 13),
(14, 1, 14),
(15, 1, 15),
(16, 1, 16),
(17, 1, 17),
(18, 1, 18),
(19, 1, 19),
(20, 1, 20),
(21, 1, 21),
(22, 1, 22),
(23, 1, 23),
(24, 1, 24),
(25, 1, 25),
(26, 1, 26),
(27, 1, 27),
(28, 1, 28),
(29, 1, 29),
(30, 1, 30),
(31, 1, 31),
(32, 1, 32),
(33, 1, 33),
(34, 1, 34),
(35, 1, 35),
(36, 1, 36),
(37, 1, 37),
(38, 1, 38),
(39, 2, 39),
(40, 2, 40),
(41, 2, 41),
(42, 2, 42),
(43, 2, 43),
(44, 2, 44),
(45, 2, 45),
(46, 2, 46),
(47, 2, 47),
(48, 2, 48),
(49, 2, 49),
(50, 2, 50),
(51, 2, 51),
(52, 2, 52),
(53, 2, 53),
(54, 2, 54),
(55, 2, 55),
(56, 2, 56),
(57, 2, 57),
(58, 2, 58),
(59, 2, 59),
(60, 2, 60),
(61, 2, 61),
(62, 2, 62),
(63, 2, 63),
(64, 2, 64),
(65, 2, 65),
(66, 2, 66),
(67, 2, 67),
(68, 2, 68),
(69, 2, 69),
(70, 2, 70),
(71, 2, 71),
(72, 2, 72),
(73, 2, 73),
(74, 2, 74),
(75, 3, 75),
(76, 3, 76),
(77, 3, 77),
(78, 3, 78),
(79, 3, 79),
(80, 3, 80),
(81, 3, 81),
(82, 3, 82),
(83, 3, 83),
(84, 3, 84),
(85, 3, 85),
(86, 3, 86),
(87, 4, 87),
(88, 4, 88),
(89, 4, 89),
(90, 4, 90),
(91, 4, 91),
(92, 4, 92),
(93, 4, 93),
(94, 4, 94),
(95, 4, 95),
(96, 4, 96),
(97, 5, 97),
(98, 5, 98),
(99, 5, 99),
(100, 5, 100),
(101, 5, 101),
(102, 5, 102),
(103, 5, 103),
(104, 5, 104),
(105, 5, 105),
(106, 6, 106),
(107, 6, 107),
(108, 6, 108),
(109, 6, 109),
(110, 6, 110),
(111, 6, 111),
(112, 6, 112),
(113, 6, 113),
(114, 6, 114),
(115, 6, 115),
(116, 7, 116),
(117, 7, 117),
(118, 7, 118),
(119, 7, 119),
(120, 7, 120),
(121, 8, 121),
(122, 8, 122),
(123, 8, 123),
(124, 9, 124),
(125, 9, 125),
(126, 9, 126),
(127, 9, 127),
(128, 9, 128),
(129, 10, 129),
(130, 10, 130),
(131, 10, 131),
(132, 11, 132),
(133, 11, 133),
(134, 11, 134),
(135, 11, 135),
(136, 11, 136),
(137, 12, 137),
(138, 12, 138),
(139, 12, 139),
(140, 12, 140),
(141, 13, 141),
(142, 13, 142),
(143, 13, 143),
(144, 13, 144),
(145, 14, 145),
(146, 14, 146),
(147, 14, 147),
(148, 14, 148),
(149, 14, 149),
(150, 15, 150),
(151, 15, 151),
(152, 15, 152),
(153, 16, 153),
(154, 16, 154),
(155, 16, 155),
(156, 16, 156),
(157, 16, 157),
(158, 17, 158),
(159, 17, 159),
(160, 17, 160),
(161, 17, 161),
(162, 18, 162),
(163, 18, 163),
(164, 18, 164),
(165, 19, 165),
(166, 19, 166),
(167, 19, 167),
(168, 19, 168),
(169, 20, 169),
(170, 20, 170),
(171, 20, 171),
(172, 20, 172),
(173, 20, 173),
(174, 20, 174);

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `profesori`
--

DROP TABLE IF EXISTS `profesori`;
CREATE TABLE IF NOT EXISTS `profesori` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nume` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `prenume` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `email` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `telefon` varchar(12) DEFAULT NULL,
  `id_catedra` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_catedra` (`id_catedra`)
) ENGINE=InnoDB AUTO_INCREMENT=175 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Eliminarea datelor din tabel `profesori`
--

INSERT INTO `profesori` (`id`, `nume`, `prenume`, `email`, `telefon`, `id_catedra`) VALUES
(1, 'Toader', 'Gabriela', 'toadergabriela@gmail.com', NULL, 1),
(2, 'Ionescu', 'Flavia', 'flavia_ionescu@gmail.com', NULL, 1),
(3, 'Boca', 'Iuliana', 'boca_iuliana@gmail.com', NULL, 1),
(4, 'Nedelcu', 'Alexandra', 'alexandra.nedelcu@gmail.com', NULL, 2),
(5, 'Rusu', 'Cristina', 'rusu_cristina@gmail.com', NULL, 2),
(6, 'Badea', 'Daniela', 'bdaniela@yahoo.com', NULL, 2),
(7, 'Tabacioiu', 'Felicia', 'tabacioiu.felicia@gmail.com', NULL, 3),
(8, 'Popescu', 'Iulian', 'popescu_iulian@gmail.com', NULL, 3),
(9, 'Ene', 'Antonia', 'eneantonia@yahoo.com', NULL, 5),
(10, 'Dascalu', 'Mariana', 'dascalu_mariana@yahoo.com', NULL, 4),
(11, 'Cozea', 'Oana', 'oana_cozea13@yahoo.com', NULL, 4),
(12, 'Badea', 'Emilia', 'bemilia@gmail.com', NULL, 4),
(13, 'Soare', 'Roxana', 'soare_roxana@yahoo.com', NULL, 6),
(14, 'Craciun', 'Liliana', 'liliana_craciun@gmail.com', NULL, 6),
(15, 'Totolici', 'Oana', 'totolici_oana@yahoo.com', NULL, 6),
(16, 'Raduta', 'Norica', 'raduta_nori@gmail.com', NULL, 7),
(17, 'Dumitrescu', 'Stefan', 'dumitrescu.stef@yahoo.com', NULL, 7),
(18, 'Argeseanu', 'Carmen', 'argeseanu_carmen@nichita-ploiesti.ro', '0735162144', 8),
(19, 'Urzeala', 'Adina', 'adina_urzeala@gmail.com', NULL, 8),
(20, 'Sandu', 'Monica Manuela', 'sandu.m.monica@gmail.com', NULL, 9),
(21, 'Olteanu', 'Silvia', 'silvia_olteanu@gmail.com', NULL, 9),
(22, 'Pirvu', 'Marian', 'marian.p@gmail.com', NULL, 10),
(23, 'Balanica', 'Romeo', 'bromeo@gmail.com', NULL, 10),
(24, 'Ionescu', 'Elena Lucia', 'ionescu_elena@yahoo.com', NULL, 10),
(25, 'Nastase', 'Dana', 'dana_n@gmail.com', NULL, 11),
(26, 'Enache', 'Dan', 'dan.enache@gmail.com', NULL, 11),
(27, 'Grancea', 'Ruxandra', 'grancea_rux@yahoo.com', NULL, 12),
(28, 'Ilinca', 'Alina', 'ilinca_alina@yahoo.com', NULL, 12),
(29, 'Incontrera', 'Arturo Dan', 'incont_dan100@gmail.com', NULL, 12),
(30, 'Badea', 'Dragos', 'badea_d@gmail.com', NULL, 12),
(31, 'Matei', 'Adrian Cosmin', 'Mate_ad@yahoo.com', NULL, 12),
(32, 'Tocaci', 'Mircea', 'tocaci_mircea23@gmail.com', NULL, 13),
(33, 'Manta', 'Mihail', 'MMihail@gmail.com', NULL, 13),
(34, 'Dinu', 'Florin', 'dinu.florin@gmail.com', NULL, 13),
(35, 'Pascu', 'Olivia', 'olivia_pascu@yahoo.com', NULL, 15),
(36, 'Constantin', 'Adriana', 'adriana_constantin@gmail.com', NULL, 15),
(37, 'Constantin', 'Mihaela', 'mihaela_const@yahoo.com', NULL, 15),
(38, 'Nastase', 'Luminita', 'nastase.lumi@yahoo.com', NULL, 15),
(39, 'Georgescu', 'Rodica', 'georgescu_rodica@gmail.com', NULL, 13),
(40, 'Cruceru', 'Gheorghita', 'cgheorghita@yahoo.com', NULL, 13),
(41, 'Miricel', 'Florina', 'miricel_florina@gmail.com', NULL, 9),
(42, 'Pirvu', 'Mihaela', 'p.mihaela@gmail.com', NULL, 9),
(43, 'Marin', 'Maria', 'marin_maria12@yahoo.com', NULL, 8),
(44, 'Morcovescu', 'Ioana', 'm.ioana@gmail.com', NULL, 8),
(45, 'Ghita', 'Daniel', 'ghita_dani129@yahoo.com', NULL, 8),
(46, 'Bacan', 'Nicolae', 'bacan.nicolae@gmail.com', NULL, 14),
(47, 'Neagu', 'Roxana', 'neagu_roxana1@gmail.com', NULL, 14),
(48, 'Stanescu', 'Nicolae', 'stn_nicolae@gmail.com', NULL, 14),
(49, 'Moise', 'Carmen', 'moise.carmen@gmail.com', NULL, 7),
(50, 'Constantinescu', 'Manon', 'const_manon@gmail.com', NULL, 7),
(51, 'Baran', 'Camelia', 'b.carmen10@gmail.com', NULL, 7),
(52, 'Ungureanu', 'Maria', 'maria_ungureanu@gmail.com', NULL, 11),
(53, 'Hanganu', 'Gelu', 'hangelu@gmail.com', NULL, 11),
(54, 'Lincan', 'Iulia', 'iulia_lincanLC@gmail.com', NULL, 15),
(55, 'Georgescu', 'Alice', 'alice.georgescu@yahoo.com', NULL, 15),
(56, 'Dragomirescu', 'Cristina Ioana', 'dc_ioana@gmail.com', NULL, 15),
(57, 'Radu', 'Gheorghe', 'radu.gheorghe@gmail.com', NULL, 10),
(58, 'Radu', 'Angela', 'rangela24@yahoo.com', NULL, 10),
(59, 'Mazilu', 'Simona', 'mazilusimona@gmail.com', NULL, 2),
(60, 'Pana', 'Vasilica', 'panaVasilica@gmail.com', NULL, 2),
(61, 'Culicovschi', 'Dan', 'cul_dan@gmail.com', NULL, 4),
(62, 'Rosu', 'Daniela Loredana', 'rdaniela@gmail.com', NULL, 4),
(63, 'Ardeleanu', 'Rodica', 'ardeleanu_rodi@gmail.com', NULL, 3),
(64, 'Spiridon', 'Denis', 'Denis.spiridon@gmail.com', NULL, 3),
(65, 'Ene', 'Antonia Maria', 'ene.a.maria@yahoo.com', NULL, 5),
(66, 'Chirita', 'Diana', 'diana_ch@gmail.com', NULL, 1),
(67, 'Morar', 'Mihai', 'morar.mihai@yahoo.com', NULL, 1),
(68, 'Gheorghe', 'Tatiana', 'tatiana_gheorghe@yahoo.com', NULL, 1),
(69, 'Simion', 'Radu', 'simion_radu@yahoo.com', NULL, 6),
(70, 'Lambru', 'Daniela', 'lambru_daniela33@gmail.com', NULL, 6),
(71, 'Ivan', 'Ionut', 'ivanionut17@yahoo.com', NULL, 16),
(72, 'Gulea', 'Ileana', 'gulea_ileana@gmail.com', NULL, 12),
(73, 'Popa', 'Oana Sabina', 'popa.oana.sab@gmail.com', NULL, 12),
(74, 'Taga', 'Gabriel', 'gabrielltaga@yahoo.com', '0729054117', 6),
(75, 'Bucur', 'Adrian', 'bucur.adrian@gmail.com', NULL, 16),
(76, 'Bercaru', 'Geta Elena', 'bercaru_geta_elena@gmail.com', NULL, 6),
(77, 'Burlacu', 'Corina', 'burlacu_corina88@yahoo.com', NULL, 3),
(78, 'Cega', 'Alice Mihaela', 'cegaAlice@gmail.com', NULL, 12),
(79, 'Cojocaru', 'Violeta', 'cojocaruvioleta01@yahoo.com', NULL, 7),
(80, 'Ghitulescu', 'Stela', 'ghitulescu_stela@gmail.com', NULL, 6),
(81, 'Darmon', 'Catalin', 'darmon_c4@gmail.com', NULL, 12),
(82, 'Popa', 'Ileana Rodi', 'popa_ilr@gmail.com', NULL, 9),
(83, 'Gogoloi', 'Ioan', 'gogoloan14@yahoo.com', NULL, 12),
(84, 'Denisse', 'Ioana', 'denisseioana4@gmail.com', NULL, 2),
(85, 'Matei', 'Andreea', 'matei_andreea@yahoo.com', NULL, 1),
(86, 'Dragomir', 'Petrica', 'dragomir_petricaa@gmail.com', '0724559163', 6),
(87, 'Bîtie', 'Lavinia Adriana', 'blavinia_adriana@gmail.com', '0725114937', 1),
(88, 'Botoc', 'Loredana Marilena', 'bl_marilena@yahoo.com', NULL, 1),
(89, 'Alexandru', 'Ciprian Florin', 'alex.c.florin@gmail.com', NULL, 15),
(90, 'Antemir', 'Isabela Floricica', 'antemir_isa@yahoo.com', NULL, 14),
(91, 'Braileanu', 'Constantin Eugen', 'br_cnt_eugen@gmail.com', NULL, 10),
(92, 'Cotuna', 'Bianca', 'cotunabianca@yahoo.com', NULL, 4),
(93, 'Gagenel', 'Nicoleta', 'gagenelnic@yahoo.com', NULL, 11),
(94, 'Mocanu', 'Maria', 'mocanu.maria43@gmail.com', NULL, 12),
(95, 'Pavel', 'Florin', 'florinpavel90@gmail.com', NULL, 6),
(96, 'Ionita', 'Marian', 'ionita.marian@gmail.com', NULL, 6),
(97, 'Calistru', 'Elena', 'calistruelena_cniasi@gmail.com', NULL, 12),
(98, 'Anita', 'Alice', 'anita_alice1@yahoo.com', NULL, 6),
(99, 'Comisu', 'Dana Elena', 'comisu.d.elena@gmail.com', NULL, 2),
(100, 'Munteanu', 'Emil', 'munteanu_emil@gmail.com', NULL, 1),
(101, 'Horatiu', 'Catalina', 'hcatalina@gmail.com', '0722149989', 1),
(102, 'Nastase', 'Adrian Mihai', 'namihai@yahoo.com', NULL, 6),
(103, 'Iacoban', 'Maria Alina', 'iacoban_alina@gmail.com', NULL, 8),
(104, 'Cabaleriu', 'Romeo Șerbănel', 'cabaleriuromeo65@yahoo.com', NULL, 9),
(105, 'Crețu', 'Constantin Mihai', 'cretuCmihai@gmail.com', NULL, 15),
(106, 'Pop', 'Iulia Valentina', 'popiulia@gmail.com', NULL, 1),
(107, 'Porumbel', 'Andreea', 'andreea.porumbel@gmail.com', NULL, 1),
(108, 'Stoica', 'Ana', 'anastoica@gmail.com', NULL, 2),
(109, 'Troie', 'Adrian', 'troieadrian@yahoo.com', NULL, 6),
(110, 'Gavrila', 'Constantin', 'gavrilaconstantin@gmail.com', NULL, 7),
(111, 'Bogdan', 'Daniela', 'daniela.bogdan@yahoo.com', NULL, 8),
(112, 'Petre', 'Violeta', 'violetapetre@gmail.com', NULL, 9),
(113, 'Dumitrascu', 'Carmen', 'dumitrascu.carmen@gmail.com', NULL, 11),
(114, 'Taicu', 'Chitiga Ecaterina', 'taicu.ecaterina@yahoo.com', NULL, 14),
(115, 'Nastase', 'Constanta', 'nastase.constanta@gmail.com', '0734192342', 15),
(116, 'Macovei', 'Maria Cristina', 'macovei_cristina@yahoo.com', NULL, 6),
(117, 'Losonczy', 'Carmen', 'losonczy.carmen.iasi@gmail.com', '0735177640', 15),
(118, 'Ghiban', 'Ana Maria', 'ghibananamaria@gmail.com', NULL, 1),
(119, 'Radu', 'Alexandra Ioana', 'radu_ai@gmail.com', NULL, 2),
(120, 'Istrati', 'Ilie Georgian', 'istrati_georgianI@gmail.com', NULL, 15),
(121, 'Ciobanu', 'Robert', 'robertciobanu@yahoo.com', NULL, 12),
(122, 'Marin', 'Mirela Luciana', 'marin_mirela@gmail.com', NULL, 12),
(123, 'Baziluc', 'Catalin Ionut', 'catalin_ionut_vmc@gmail.com', '0733983457', 6),
(124, 'Caramida', 'Maria', 'cmaria@gmail.com', NULL, 18),
(125, 'Brad', 'Bulugea Floretina Olimpia', 'bbfolimpia_caracal@gmail.com', '0739112456', 18),
(126, 'Brutaru', 'Costin Marcel', 'brutarucm@yahoo.com', NULL, 12),
(127, 'Maricica', 'Ionel', 'maricica_ionelbss@gmail.com', NULL, 19),
(128, 'Marcel', 'Pavel', 'marcepavelM@gmail.com', NULL, 20),
(129, 'Alinca', 'Cristian', 'alincacristi@gmail.com', NULL, 14),
(130, 'Gavrila', 'Octavian', 'gavrilaoctavian_ac@yahoo.com', '0734992942', 20),
(131, 'Unguru', 'Adrian', 'unguru.adrian@gmail.com', NULL, 7),
(132, 'Florea', 'Mariana', 'floreamariana@gmail.com', NULL, 17),
(133, 'Miricica', 'Raluca', 'miricica_raluca@yahoo.com', NULL, 17),
(134, 'Craciun', 'Oana Iuliana', 'craciunoi@gmail.com', NULL, 9),
(135, 'Andrei', 'Catalin Mihai', 'andreiMC@gmail.com', NULL, 17),
(136, 'Enescu', 'Liliana Elvia', 'enescu_elvia@gmail.com', '0727192066', 1),
(137, 'Avramescu', 'Rodica', 'avramescu.rodica.tns@gmail.com', '0733295753', 12),
(138, 'Constantinescu', 'Robert Marian', 'cnt_robertmarian@gmail.con', NULL, 21),
(139, 'Onceanu', 'Gabriel Madalin', 'onceanu.madalin.gabriel@yahoo.com', NULL, 21),
(140, 'Petre', 'Ionel Costin', 'petrecostin@gmail.com', NULL, 6),
(141, 'Caciula', 'Dorin Catalin', 'caciulacatalatin@yahoo.com', NULL, 1),
(142, 'Covaras', 'Ene', 'covarasene@gmail.com', NULL, 9),
(143, 'Borcan', 'Alexandra Maria', 'borcanAM@gmail.com', NULL, 6),
(144, 'Nicoara', 'Vasile', 'nicoara.vasileMCB@yahoo.com', '0725890673', 6),
(145, 'Tanase', 'Gabriela', 'tgabriela_nc@gmail.com', '0724098567', 15),
(146, 'Toader', 'Andreea Irina', 'toaderandreeairina@gmail.com', NULL, 1),
(147, 'Copacel', 'Liviu', 'copacelLiviu@gmail.com', NULL, 6),
(148, 'Tudorica', 'Tamara Claudia', 'tudorica.claudia@gmail.com', NULL, 9),
(149, 'Oprea', 'Felix', 'oprea_felix@yahoo.com', NULL, 12),
(150, 'Rancu', 'Gheorghe', 'FCrancu_gheorghe@yahoo.com', '0728122390', 18),
(151, 'Petrisor', 'Claudiu', 'petrisor_claudiu@gmail.com', NULL, 9),
(152, 'Nastase', 'Bogdan Gabriel', 'nastase.bogdan3@yahoo.com', NULL, 21),
(153, 'Dumitru', 'Cezar Boghici', 'ASB.dumitrucezar@gmail.com', '0723445896', 15),
(154, 'Ionita', 'Andrada', 'iandrada@yahoo.com', NULL, 12),
(155, 'Soare', 'David Mihai', 'soaredavid1M@gmail.com', NULL, 6),
(156, 'Nedelcu', 'Casandra', 'nedelcu.casandra@yahoo.com', NULL, 1),
(157, 'Sandulescu', 'Elena Maria', 'sandulesc.em@gmail.com', NULL, 9),
(158, 'Haidu', 'Simona', 'tp_haidusimona@yahoo.com', '0722700458', 15),
(159, 'Nuca', 'Oliviu', 'nucaoliviuu@gmail.com', NULL, 15),
(160, 'Tobita', 'Florin Bogdan', 'florinbogdan@gmail.com', NULL, 6),
(161, 'Caltunas', 'Felicia', 'caltunasfelicia23@yahoo.com', NULL, 1),
(162, 'Cociuba', 'Petru', 'cociubapetruHC@gmail.com', '0739456710', 12),
(163, 'Maraciuca', 'Leonard', 'maraciucaleo@gmail.com', NULL, 6),
(164, 'Raut', 'Claudiu Catalin', 'rautcata@gmail.com', NULL, 20),
(165, 'Romascu', 'Corneliu', 'DC_romascucorneliu@gmail.com', '0725192268', 12),
(166, 'Calut', 'Maria Ioana', 'cmariaioana@gmail.com', NULL, 1),
(167, 'Pirvu', 'Teodor Ionut', 'pirvuTI1990@yahoo.com', NULL, 12),
(168, 'Floricica', 'Madalina', 'fmadalina442@yahoo.com', NULL, 6),
(169, 'Mosescu', 'Viorica', 'mosescuvio@gmail.com', '0723314900', 15),
(170, 'Castana', 'Ionut Madalin', 'castanaionut@gmail.com', NULL, 1),
(171, 'Jojolici', 'Demian', 'jojolici.demian@yahoo.com', NULL, 12),
(172, 'Elicopter', 'Mirela Teodora', 'emirelateodora@yahoo.com', NULL, 9),
(173, 'Enache', 'Sebastian', 'enachesebi@yhaoo.com', NULL, 11),
(174, 'Teteleu', 'Gabriel', 'teteleugaby33@gmail.com', NULL, 15);

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `specializari`
--

DROP TABLE IF EXISTS `specializari`;
CREATE TABLE IF NOT EXISTS `specializari` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nume` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `profil` varchar(50) NOT NULL,
  `bilingv` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Eliminarea datelor din tabel `specializari`
--

INSERT INTO `specializari` (`id`, `nume`, `profil`, `bilingv`) VALUES
(1, 'Stiinte sociale', 'Uman', NULL),
(2, 'Stiinte sociale', 'Uman', 'limba engleza'),
(3, 'Filologie', 'Uman', NULL),
(4, 'Filologie', 'Uman', 'limba engleza'),
(5, 'Filologie', 'Uman', 'limba franceza'),
(6, 'Filologie', 'Uman', 'limba spaniola'),
(7, 'Matematica-Informatica', 'Real', NULL),
(8, 'Matematica-Informatica', 'Real', 'limba engleza'),
(9, 'Matematica-Informatica', 'Real', 'limba franceza'),
(10, 'Matematica-Informatica', 'Real', 'limba germana'),
(11, 'Stiinte ale Naturii', 'Real', NULL),
(12, 'Stiinte ale Naturii', 'Real', 'limba engleza'),
(13, 'Stiinte ale Naturii', 'Real', 'limba franceza'),
(14, 'Stiinte ale Naturii', 'Real', 'limba germana'),
(15, 'Educator-invatator', 'Pedagogic', NULL),
(16, 'Educator-peuricultor', 'Pedagogic', NULL),
(17, 'Turism si alimentatie', 'Servicii', NULL),
(18, 'Economic', 'Servicii', NULL),
(19, 'Comert', 'Servicii', NULL),
(20, 'Estetica si igiena corpului omenesc', 'Servicii', NULL),
(21, 'Mecanica', 'Tehnic', NULL),
(22, 'Electronica automatizari', 'Tehnic', NULL),
(23, 'Electromecanica', 'Tehnic', NULL),
(24, 'Electric', 'Tehnic', NULL),
(25, 'Constructii, instalatii si lucrari publice', 'Tehnic', NULL),
(26, 'Industrie textila si pielarie', 'Tehnic', NULL),
(27, 'Protectia mediului', 'Resurse naturale si protectia mediului', NULL),
(28, 'Industrie alimentara', 'Resurse naturale si protectia mediului', NULL),
(29, 'Agricultura', 'Resurse naturale si protectia mediului', NULL),
(30, 'Sportiv', 'Sportiv', NULL),
(31, 'Fabricarea produselor din lemn', 'Tehnic', NULL),
(32, 'Silvicultura', 'Resurse naturale si protectia mediului', NULL);

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `specializari_licee`
--

DROP TABLE IF EXISTS `specializari_licee`;
CREATE TABLE IF NOT EXISTS `specializari_licee` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_liceu` int NOT NULL,
  `id_specializare` int NOT NULL,
  `nr_locuri` int NOT NULL,
  `medie_admitere` float DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_liceu` (`id_liceu`),
  KEY `id_specializare` (`id_specializare`)
) ENGINE=InnoDB AUTO_INCREMENT=80 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Eliminarea datelor din tabel `specializari_licee`
--

INSERT INTO `specializari_licee` (`id`, `id_liceu`, `id_specializare`, `nr_locuri`, `medie_admitere`) VALUES
(1, 1, 1, 28, 8.44),
(2, 1, 3, 28, 8.41),
(3, 1, 11, 56, 9.12),
(4, 1, 7, 28, 8.73),
(5, 1, 8, 28, 8.73),
(6, 1, 10, 28, 8.73),
(7, 2, 1, 28, 8.52),
(8, 2, 4, 28, 8.38),
(9, 2, 30, 28, NULL),
(10, 2, 14, 14, 9.17),
(11, 2, 13, 14, 8.72),
(12, 2, 11, 14, 9.4),
(13, 2, 7, 84, 9.31),
(14, 3, 17, 56, 7.96),
(15, 3, 18, 112, 7.83),
(16, 3, 19, 56, 7.71),
(17, 3, 7, 28, 8.47),
(18, 4, 3, 56, 5.6),
(19, 4, 18, 28, 6.35),
(20, 4, 7, 28, 7.83),
(21, 5, 3, 28, 9.18),
(22, 5, 11, 28, 9.65),
(23, 5, 7, 84, 9.6),
(24, 6, 3, 28, 9.56),
(25, 6, 11, 56, 9.85),
(26, 6, 8, 28, 9.89),
(27, 6, 7, 140, 9.69),
(28, 7, 7, 168, 8.93),
(29, 8, 18, 28, 7.08),
(30, 9, 21, 28, 3.39),
(31, 9, 27, 14, NULL),
(32, 9, 29, 14, 3.98),
(33, 9, 29, 28, NULL),
(34, 10, 21, 28, 3.56),
(35, 10, 24, 28, 3.3),
(36, 10, 30, 28, NULL),
(37, 11, 6, 14, 7.13),
(38, 11, 4, 14, 8.3),
(39, 11, 11, 28, 8.57),
(40, 11, 7, 28, NULL),
(41, 11, 15, 56, NULL),
(42, 11, 16, 28, NULL),
(43, 12, 1, 28, NULL),
(44, 12, 31, 28, 5.99),
(45, 12, 25, 0, 5.75),
(46, 12, 27, 28, 6.82),
(47, 12, 7, 28, NULL),
(48, 13, 1, 28, 9.51),
(49, 13, 14, 14, 9.64),
(50, 13, 13, 14, 9.55),
(51, 13, 11, 56, 9.68),
(52, 13, 10, 14, 9.69),
(53, 13, 8, 14, 9.84),
(54, 13, 7, 56, 9.71),
(55, 14, 1, 56, 8.19),
(56, 14, 3, 28, 8.06),
(57, 14, 11, 28, 8.78),
(58, 14, 7, 56, 8.92),
(59, 15, 31, 28, 5.72),
(60, 15, 18, 56, 7.16),
(61, 15, 32, 28, 6.13),
(62, 15, 11, 28, 7.18),
(63, 16, 2, 28, 9.11),
(64, 16, 13, 28, 8.76),
(65, 16, 11, 56, 9.4),
(66, 16, 7, 56, 9.47),
(67, 17, 7, 84, 9.19),
(68, 18, 18, 56, 7.46),
(69, 18, 17, 28, 7.26),
(70, 18, 22, 56, 6.74),
(71, 18, 21, 28, 6.34),
(72, 19, 19, 56, 7.35),
(73, 19, 18, 168, 6.97),
(74, 19, 17, 84, 6.87),
(75, 20, 1, 28, 8.97),
(76, 20, 4, 28, 8.48),
(77, 20, 11, 28, 9.41),
(78, 20, 8, 28, 9.67),
(79, 20, 7, 56, 9.23);

--
-- Constrângeri pentru tabele eliminate
--

--
-- Constrângeri pentru tabele `adrese`
--
ALTER TABLE `adrese`
  ADD CONSTRAINT `adrese_ibfk_1` FOREIGN KEY (`id_liceu`) REFERENCES `licee` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constrângeri pentru tabele `preda`
--
ALTER TABLE `preda`
  ADD CONSTRAINT `preda_ibfk_1` FOREIGN KEY (`id_liceu`) REFERENCES `licee` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `preda_ibfk_2` FOREIGN KEY (`id_profesor`) REFERENCES `profesori` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constrângeri pentru tabele `profesori`
--
ALTER TABLE `profesori`
  ADD CONSTRAINT `profesori_ibfk_1` FOREIGN KEY (`id_catedra`) REFERENCES `catedre` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constrângeri pentru tabele `specializari_licee`
--
ALTER TABLE `specializari_licee`
  ADD CONSTRAINT `specializari_licee_ibfk_1` FOREIGN KEY (`id_liceu`) REFERENCES `licee` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `specializari_licee_ibfk_2` FOREIGN KEY (`id_specializare`) REFERENCES `specializari` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
