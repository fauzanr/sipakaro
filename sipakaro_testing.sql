-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1

-- Generation Time: May 11, 2020 at 04:18 PM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sipakaro_testing`
--

-- --------------------------------------------------------

--
-- Table structure for table `bobot_indikator`
--

CREATE TABLE `bobot_indikator` (
  `id` int(11) NOT NULL,
  `kriteria` varchar(10) NOT NULL,
  `bobot` varchar(10) NOT NULL,
  `C1` varchar(10) DEFAULT NULL,
  `CR` varchar(10) DEFAULT NULL,
  `id_section` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bobot_indikator`
--

INSERT INTO `bobot_indikator` (`id`, `kriteria`, `bobot`, `C1`, `CR`, `id_section`) VALUES
(3, 'RPA', '0.39825236', NULL, NULL, 2),
(4, 'Peternak', '0.60174763', NULL, NULL, 2),
(6, 'Ekonomi', '0.18449966', NULL, NULL, 3),
(7, 'Lingkungan', '0.35177838', NULL, NULL, 3),
(8, 'Sosial', '0.46372194', NULL, NULL, 3),
(9, 'E1', '0.73632153', '0.02717234', '0.03019149', 4),
(10, 'E2', '0.08862255', '0.02717234', '0.03019149', 4),
(11, 'E3', '0.11529966', '0.02717234', '0.03019149', 4),
(12, 'E4', '0.05975624', '0.02717234', '0.03019149', 4);

-- --------------------------------------------------------

--
-- Table structure for table `entitas_ayam`
--

CREATE TABLE `entitas_ayam` (
  `id_a_e` int(11) NOT NULL,
  `ket_a_e` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `entitas_ayam`
--

INSERT INTO `entitas_ayam` (`id_a_e`, `ket_a_e`) VALUES
(1, 'RPA'),
(2, 'Peternak');

-- --------------------------------------------------------

--
-- Table structure for table `entitas_sapi`
--

CREATE TABLE `entitas_sapi` (
  `id_s_e` int(11) NOT NULL,
  `ket_s_e` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `entitas_sapi`
--

INSERT INTO `entitas_sapi` (`id_s_e`, `ket_s_e`) VALUES
(1, 'Peternak'),
(2, 'RPH');

-- --------------------------------------------------------

--
-- Table structure for table `indikator_ayam`
--

CREATE TABLE `indikator_ayam` (
  `id_a_i` int(11) NOT NULL,
  `nama_kriteria` varchar(100) NOT NULL,
  `kode_a_i` varchar(100) NOT NULL,
  `ket_a_i` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `indikator_ayam`
--

INSERT INTO `indikator_ayam` (`id_a_i`, `nama_kriteria`, `kode_a_i`, `ket_a_i`) VALUES
(1, 'Lingkungan', 'L1', 'Rata-rata konsumsi air yang dihabiskan untuk 1 ekor ayam'),
(2, 'Lingkungan', 'L2', 'Rata-rata konsumsi listrik yang dihabiskan untuk 1 ekor ayam'),
(3, 'Sosial', 'S1', 'Kualitas DOC yang diberikan perusahaan inti kepada peternak plasma'),
(4, 'Sosial', 'S2', 'Kulitas obat dan vaksin yang diberikan perusahaan inti kepada peternak plasma'),
(5, 'Sosial', 'S3', 'Jadwal pengiriman DOC'),
(6, 'Sosial', 'S4', 'Frekuensi bimbingan teknis yang diberikan perusahaan inti kepada peternak plasma\r\ndalam 1 bulan'),
(7, 'Sosial', 'S5', 'Frekuensi pelayanan dan bimbingan materi yang diberikan perusahaan inti kepada\r\npeternak plasma dalam 1 bulan'),
(8, 'Sosial', 'S6', 'Kesesuaian waktu panen dengan kontrak perjanjian'),
(9, 'Sosial', 'S7', 'Kecepatan respon perusahaan inti terhadap keluhan peternak plasma'),
(10, 'Sosial', 'S8', 'Kesesuaian harga jual dengan kontrak perjanjian'),
(11, 'Sosial', 'S9', 'Kesesuaian pemberian bonus dengan kontrak perjanjian'),
(12, 'Sosial', 'S10', 'Kesesuaian waktu pembayaran panen dengan kontrak perjanjian'),
(13, 'Sosial', 'S11', 'Pertanggungjawaban saat gagal panen'),
(14, 'Ekonomi', 'E1', 'Rata-rata pendapatan yang diperoleh peternak plasma untuk 1 ekor ayam dalam 1 kali\r\nmasa panen'),
(15, 'Ekonomi', 'E2', 'Rata-rata harga DOC untuk 1 ekor'),
(16, 'Ekonomi', 'E3', 'Rata-rata harga pakan untuk 1 ekor ayam dalam 1 kali masa panen'),
(17, 'Ekonomi', 'E4', 'Rata-rata harga obat & vaksin untuk 1 ekor ayam dalam 1 kali masa panen');

-- --------------------------------------------------------

--
-- Table structure for table `kriteria`
--

CREATE TABLE `kriteria` (
  `nama_kriteria` varchar(100) NOT NULL,
  `ket_kriteria` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kriteria`
--

INSERT INTO `kriteria` (`nama_kriteria`, `ket_kriteria`) VALUES
('Ekonomi', NULL),
('Lingkungan', NULL),
('Sosial', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `opsi_ahp`
--

CREATE TABLE `opsi_ahp` (
  `id_opsi_ahp` int(11) NOT NULL,
  `opsi` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `opsi_ahp`
--

INSERT INTO `opsi_ahp` (`id_opsi_ahp`, `opsi`) VALUES
(1, 0.11),
(2, 0.13),
(3, 0.14),
(4, 0.17),
(5, 0.2),
(6, 0.25),
(7, 0.33),
(8, 0.5),
(9, 1),
(10, 2),
(11, 3),
(12, 4),
(13, 5),
(14, 6),
(15, 7),
(16, 8),
(17, 9);

-- --------------------------------------------------------

--
-- Table structure for table `rasio`
--

CREATE TABLE `rasio` (
  `id` int(11) NOT NULL,
  `banyak_indikator` varchar(10) NOT NULL,
  `nilai_rasio` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rasio`
--

INSERT INTO `rasio` (`id`, `banyak_indikator`, `nilai_rasio`) VALUES
(1, '2', '0'),
(2, '3', '0.58'),
(3, '4', '0.9'),
(4, '5', '1.12'),
(5, '6', '1.24'),
(6, '7', '1.32'),
(7, '8', '1.41'),
(8, '9', '1.45'),
(9, '10', '1.49');

-- --------------------------------------------------------

--
-- Table structure for table `responden`
--

CREATE TABLE `responden` (
  `id` int(11) NOT NULL,
  `id_pengisi` int(11) NOT NULL,
  `nama_responden` varchar(50) NOT NULL,
  `nilai_responden` varchar(10) NOT NULL,
  `kriteria_1` varchar(20) DEFAULT NULL,
  `kriteria_2` varchar(20) DEFAULT NULL,
  `id_section` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `responden`
--

INSERT INTO `responden` (`id`, `id_pengisi`, `nama_responden`, `nilai_responden`, `kriteria_1`, `kriteria_2`, `id_section`) VALUES
(33, 3, 'Fauzan', '0.11', 'RPA', 'Peternak', 2),
(34, 3, 'Dayyan', '0.2', 'RPA', 'Peternak', 2),
(35, 3, 'Dis', '1', 'RPA', 'Peternak', 2),
(36, 3, 'Fauzan', '0.33', 'Ekonomi', 'Lingkungan', 3),
(37, 3, 'Dayyan', '0.33', 'Ekonomi', 'Lingkungan', 3),
(38, 3, 'Dis', '1', 'Ekonomi', 'Lingkungan', 3),
(39, 3, 'Fauzan', '0.25', 'Ekonomi', 'Sosial', 3),
(40, 3, 'Dayyan', '1', 'Ekonomi', 'Sosial', 3),
(41, 3, 'Dis', '0.33', 'Ekonomi', 'Sosial', 3),
(42, 3, 'Fauzan', '1', 'Lingkungan', 'Sosial', 3),
(43, 3, 'Dayyan', '1', 'Lingkungan', 'Sosial', 3),
(44, 3, 'Dis', '0.33', 'Lingkungan', 'Sosial', 3),
(45, 3, 'Fauzan', '9', 'E1', 'E2', 4),
(46, 3, 'Dayyan', '9', 'E1', 'E2', 4),
(47, 3, 'Dis', '9', 'E1', 'E2', 4),
(48, 3, 'Fauzan', '9', 'E1', 'E3', 4),
(49, 3, 'Dayyan', '9', 'E1', 'E3', 4),
(50, 3, 'Dis', '9', 'E1', 'E3', 4),
(51, 3, 'Fauzan', '9', 'E1', 'E4', 4),
(52, 3, 'Dayyan', '9', 'E1', 'E4', 4),
(53, 3, 'Dis', '9', 'E1', 'E4', 4),
(54, 3, 'Fauzan', '0.5', 'E2', 'E3', 4),
(55, 3, 'Dayyan', '1', 'E2', 'E3', 4),
(56, 3, 'Dis', '1', 'E2', 'E3', 4),
(57, 3, 'Fauzan', '0.5', 'E2', 'E4', 4),
(58, 3, 'Dayyan', '1', 'E2', 'E4', 4),
(59, 3, 'Dis', '9', 'E2', 'E4', 4),
(60, 3, 'Fauzan', '0.5', 'E3', 'E4', 4),
(61, 3, 'Dayyan', '5', 'E3', 'E4', 4),
(62, 3, 'Dis', '7', 'E3', 'E4', 4),
(63, 3, 'Fauzan', '5', 'L1', 'L2', 5),
(64, 3, 'Dayyan', '4', 'L1', 'L2', 5),
(65, 3, 'Dis', '5', 'L1', 'L2', 5),
(66, 3, 'Fauzan', '1', 'S1', 'S2', 6),
(67, 3, 'Dayyan', '0.14', 'S1', 'S2', 6),
(68, 3, 'Dis', '1', 'S1', 'S2', 6),
(69, 3, 'Fauzan', '0.14', 'S1', 'S3', 6),
(70, 3, 'Dayyan', '0.14', 'S1', 'S3', 6),
(71, 3, 'Dis', '0.11', 'S1', 'S3', 6),
(72, 3, 'Fauzan', '1', 'S1', 'S4', 6),
(73, 3, 'Dayyan', '7', 'S1', 'S4', 6),
(74, 3, 'Dis', '0.14', 'S1', 'S4', 6),
(75, 3, 'Fauzan', '0.5', 'S1', 'S5', 6),
(76, 3, 'Dayyan', '0.14', 'S1', 'S5', 6),
(77, 3, 'Dis', '0.13', 'S1', 'S5', 6),
(78, 3, 'Fauzan', '1', 'S1', 'S6', 6),
(79, 3, 'Dayyan', '0.13', 'S1', 'S6', 6),
(80, 3, 'Dis', '0.25', 'S1', 'S6', 6),
(81, 3, 'Fauzan', '0.5', 'S1', 'S7', 6),
(82, 3, 'Dayyan', '0.33', 'S1', 'S7', 6),
(83, 3, 'Dis', '0.25', 'S1', 'S7', 6),
(84, 3, 'Fauzan', '1', 'S1', 'S8', 6),
(85, 3, 'Dayyan', '0.2', 'S1', 'S8', 6),
(86, 3, 'Dis', '0.25', 'S1', 'S8', 6),
(87, 3, 'Fauzan', '0.5', 'S1', 'S9', 6),
(88, 3, 'Dayyan', '0.33', 'S1', 'S9', 6),
(89, 3, 'Dis', '2', 'S1', 'S9', 6),
(90, 3, 'Fauzan', '0.33', 'S1', 'S10', 6),
(91, 3, 'Dayyan', '0.2', 'S1', 'S10', 6),
(92, 3, 'Dis', '0.5', 'S1', 'S10', 6),
(93, 3, 'Fauzan', '0.2', 'S1', 'S11', 6),
(94, 3, 'Dayyan', '1', 'S1', 'S11', 6),
(95, 3, 'Dis', '0.5', 'S1', 'S11', 6),
(96, 3, 'Fauzan', '1', 'S2', 'S3', 6),
(97, 3, 'Dayyan', '0.33', 'S2', 'S3', 6),
(98, 3, 'Dis', '1', 'S2', 'S3', 6),
(99, 3, 'Fauzan', '0.33', 'S2', 'S4', 6),
(100, 3, 'Dayyan', '1', 'S2', 'S4', 6),
(101, 3, 'Dis', '0.5', 'S2', 'S4', 6),
(102, 3, 'Fauzan', '0.5', 'S2', 'S5', 6),
(103, 3, 'Dayyan', '3', 'S2', 'S5', 6),
(104, 3, 'Dis', '1', 'S2', 'S5', 6),
(105, 3, 'Fauzan', '0.5', 'S2', 'S6', 6),
(106, 3, 'Dayyan', '0.5', 'S2', 'S6', 6),
(107, 3, 'Dis', '0.5', 'S2', 'S6', 6),
(108, 3, 'Fauzan', '1', 'S2', 'S7', 6),
(109, 3, 'Dayyan', '1', 'S2', 'S7', 6),
(110, 3, 'Dis', '1', 'S2', 'S7', 6),
(111, 3, 'Fauzan', '0.5', 'S2', 'S8', 6),
(112, 3, 'Dayyan', '3', 'S2', 'S8', 6),
(113, 3, 'Dis', '1', 'S2', 'S8', 6),
(114, 3, 'Fauzan', '0.5', 'S2', 'S9', 6),
(115, 3, 'Dayyan', '0.33', 'S2', 'S9', 6),
(116, 3, 'Dis', '0.5', 'S2', 'S9', 6),
(117, 3, 'Fauzan', '1', 'S2', 'S10', 6),
(118, 3, 'Dayyan', '1', 'S2', 'S10', 6),
(119, 3, 'Dis', '2', 'S2', 'S10', 6),
(120, 3, 'Fauzan', '0.5', 'S2', 'S11', 6),
(121, 3, 'Dayyan', '0.2', 'S2', 'S11', 6),
(122, 3, 'Dis', '0.33', 'S2', 'S11', 6),
(123, 3, 'Fauzan', '1', 'S3', 'S4', 6),
(124, 3, 'Dayyan', '0.5', 'S3', 'S4', 6),
(125, 3, 'Dis', '1', 'S3', 'S4', 6),
(126, 3, 'Fauzan', '1', 'S3', 'S5', 6),
(127, 3, 'Dayyan', '1', 'S3', 'S5', 6),
(128, 3, 'Dis', '0.33', 'S3', 'S5', 6),
(129, 3, 'Fauzan', '1', 'S3', 'S6', 6),
(130, 3, 'Dayyan', '0.5', 'S3', 'S6', 6),
(131, 3, 'Dis', '1', 'S3', 'S6', 6),
(132, 3, 'Fauzan', '0.5', 'S3', 'S7', 6),
(133, 3, 'Dayyan', '0.5', 'S3', 'S7', 6),
(134, 3, 'Dis', '0.5', 'S3', 'S7', 6),
(135, 3, 'Fauzan', '0.5', 'S3', 'S8', 6),
(136, 3, 'Dayyan', '0.5', 'S3', 'S8', 6),
(137, 3, 'Dis', '0.5', 'S3', 'S8', 6),
(138, 3, 'Fauzan', '0.5', 'S3', 'S9', 6),
(139, 3, 'Dayyan', '1', 'S3', 'S9', 6),
(140, 3, 'Dis', '1', 'S3', 'S9', 6),
(141, 3, 'Fauzan', '0.5', 'S3', 'S10', 6),
(142, 3, 'Dayyan', '0.33', 'S3', 'S10', 6),
(143, 3, 'Dis', '0.33', 'S3', 'S10', 6),
(144, 3, 'Fauzan', '1', 'S3', 'S11', 6),
(145, 3, 'Dayyan', '0.5', 'S3', 'S11', 6),
(146, 3, 'Dis', '2', 'S3', 'S11', 6),
(147, 3, 'Fauzan', '0.5', 'S4', 'S5', 6),
(148, 3, 'Dayyan', '0.33', 'S4', 'S5', 6),
(149, 3, 'Dis', '1', 'S4', 'S5', 6),
(150, 3, 'Fauzan', '1', 'S4', 'S6', 6),
(151, 3, 'Dayyan', '1', 'S4', 'S6', 6),
(152, 3, 'Dis', '1', 'S4', 'S6', 6),
(153, 3, 'Fauzan', '2', 'S4', 'S7', 6),
(154, 3, 'Dayyan', '1', 'S4', 'S7', 6),
(155, 3, 'Dis', '1', 'S4', 'S7', 6),
(156, 3, 'Fauzan', '0.33', 'S4', 'S8', 6),
(157, 3, 'Dayyan', '0.5', 'S4', 'S8', 6),
(158, 3, 'Dis', '0.5', 'S4', 'S8', 6),
(159, 3, 'Fauzan', '0.5', 'S4', 'S9', 6),
(160, 3, 'Dayyan', '1', 'S4', 'S9', 6),
(161, 3, 'Dis', '0.5', 'S4', 'S9', 6),
(162, 3, 'Fauzan', '0.33', 'S4', 'S10', 6),
(163, 3, 'Dayyan', '1', 'S4', 'S10', 6),
(164, 3, 'Dis', '0.33', 'S4', 'S10', 6),
(165, 3, 'Fauzan', '0.33', 'S4', 'S11', 6),
(166, 3, 'Dayyan', '1', 'S4', 'S11', 6),
(167, 3, 'Dis', '2', 'S4', 'S11', 6),
(168, 3, 'Fauzan', '1', 'S5', 'S6', 6),
(169, 3, 'Dayyan', '1', 'S5', 'S6', 6),
(170, 3, 'Dis', '1', 'S5', 'S6', 6),
(171, 3, 'Fauzan', '0.5', 'S5', 'S7', 6),
(172, 3, 'Dayyan', '0.33', 'S5', 'S7', 6),
(173, 3, 'Dis', '1', 'S5', 'S7', 6),
(174, 3, 'Fauzan', '0.5', 'S5', 'S8', 6),
(175, 3, 'Dayyan', '1', 'S5', 'S8', 6),
(176, 3, 'Dis', '1', 'S5', 'S8', 6),
(177, 3, 'Fauzan', '2', 'S5', 'S9', 6),
(178, 3, 'Dayyan', '0.5', 'S5', 'S9', 6),
(179, 3, 'Dis', '1', 'S5', 'S9', 6),
(180, 3, 'Fauzan', '2', 'S5', 'S10', 6),
(181, 3, 'Dayyan', '1', 'S5', 'S10', 6),
(182, 3, 'Dis', '1', 'S5', 'S10', 6),
(183, 3, 'Fauzan', '0.5', 'S5', 'S11', 6),
(184, 3, 'Dayyan', '0.5', 'S5', 'S11', 6),
(185, 3, 'Dis', '1', 'S5', 'S11', 6),
(186, 3, 'Fauzan', '0.5', 'S6', 'S7', 6),
(187, 3, 'Dayyan', '1', 'S6', 'S7', 6),
(188, 3, 'Dis', '0.5', 'S6', 'S7', 6),
(189, 3, 'Fauzan', '1', 'S6', 'S8', 6),
(190, 3, 'Dayyan', '1', 'S6', 'S8', 6),
(191, 3, 'Dis', '1', 'S6', 'S8', 6),
(192, 3, 'Fauzan', '1', 'S6', 'S9', 6),
(193, 3, 'Dayyan', '1', 'S6', 'S9', 6),
(194, 3, 'Dis', '1', 'S6', 'S9', 6),
(195, 3, 'Fauzan', '0.33', 'S6', 'S10', 6),
(196, 3, 'Dayyan', '0.33', 'S6', 'S10', 6),
(197, 3, 'Dis', '1', 'S6', 'S10', 6),
(198, 3, 'Fauzan', '1', 'S6', 'S11', 6),
(199, 3, 'Dayyan', '1', 'S6', 'S11', 6),
(200, 3, 'Dis', '0.5', 'S6', 'S11', 6),
(201, 3, 'Fauzan', '0.5', 'S7', 'S8', 6),
(202, 3, 'Dayyan', '1', 'S7', 'S8', 6),
(203, 3, 'Dis', '2', 'S7', 'S8', 6),
(204, 3, 'Fauzan', '0.5', 'S7', 'S9', 6),
(205, 3, 'Dayyan', '0.5', 'S7', 'S9', 6),
(206, 3, 'Dis', '1', 'S7', 'S9', 6),
(207, 3, 'Fauzan', '0.5', 'S7', 'S10', 6),
(208, 3, 'Dayyan', '1', 'S7', 'S10', 6),
(209, 3, 'Dis', '2', 'S7', 'S10', 6),
(210, 3, 'Fauzan', '0.5', 'S7', 'S11', 6),
(211, 3, 'Dayyan', '2', 'S7', 'S11', 6),
(212, 3, 'Dis', '0.5', 'S7', 'S11', 6),
(213, 3, 'Fauzan', '0.5', 'S8', 'S9', 6),
(214, 3, 'Dayyan', '0.5', 'S8', 'S9', 6),
(215, 3, 'Dis', '1', 'S8', 'S9', 6),
(216, 3, 'Fauzan', '1', 'S8', 'S10', 6),
(217, 3, 'Dayyan', '3', 'S8', 'S10', 6),
(218, 3, 'Dis', '1', 'S8', 'S10', 6),
(219, 3, 'Fauzan', '0.33', 'S8', 'S11', 6),
(220, 3, 'Dayyan', '1', 'S8', 'S11', 6),
(221, 3, 'Dis', '2', 'S8', 'S11', 6),
(222, 3, 'Fauzan', '0.5', 'S9', 'S10', 6),
(223, 3, 'Dayyan', '0.5', 'S9', 'S10', 6),
(224, 3, 'Dis', '0.5', 'S9', 'S10', 6),
(225, 3, 'Fauzan', '1', 'S9', 'S11', 6),
(226, 3, 'Dayyan', '0.33', 'S9', 'S11', 6),
(227, 3, 'Dis', '0.5', 'S9', 'S11', 6),
(228, 3, 'Fauzan', '0.5', 'S10', 'S11', 6),
(229, 3, 'Dayyan', '1', 'S10', 'S11', 6),
(230, 3, 'Dis', '0.5', 'S10', 'S11', 6);

-- --------------------------------------------------------

--
-- Table structure for table `section`
--

CREATE TABLE `section` (
  `id` int(11) NOT NULL,
  `level0` varchar(50) DEFAULT NULL,
  `level1` varchar(50) DEFAULT NULL,
  `nama_section` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `section`
--

INSERT INTO `section` (`id`, `level0`, `level1`, `nama_section`) VALUES
(2, NULL, NULL, 'Entitas'),
(3, NULL, 'Peternak', 'Entitas-Peternak'),
(4, 'Peternak', 'Ekonomi', 'Entitas-Peternak-Ekonomi'),
(5, 'Peternak', 'Lingkungan', 'Entitas-Peternak-Lingkungan'),
(6, 'Peternak', 'Sosial', 'Entitas-Peternak-Sosial'),
(7, NULL, 'RPA', 'Entitas-RPA'),
(8, 'RPA', 'Ekonomi', 'Entitas-RPA-Ekonomi'),
(9, 'RPA', 'Lingkungan', 'Entitas-RPA-Lingkungan'),
(10, 'RPA', 'Sosial', 'Entitas-RPA-Sosial');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `email` varchar(128) NOT NULL,
  `image` varchar(128) NOT NULL,
  `password` varchar(128) NOT NULL,
  `role_id` int(11) NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `date_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `image`, `password`, `role_id`, `is_active`, `date_created`) VALUES

(1, 'Kukuh Ardia', 'kukuhardia@gmail.com', 'default.jpg', '$2y$10$yoYld1kf9tsWx3mZIhs4Eum7E5URfGYQ9QbAaHrRiEiur2ehBIuVW', 3, 1, '0000-00-00 00:00:00'),
(2, 'sara', 'sa@gmail.com', 'default.jpg', '$2y$10$.fuRvyWUOMkqMa28nMNsK.HujEftBWfqSpy9m8m6uAETXv1tE2H/O', 3, 1, '0000-00-00 00:00:00'),
(3, 'roesfr', 'roesfr@gmail.com', 'default.jpg', '$2y$10$ecEh8kreC/MTryB/V1qVAe5vOpjHtF57jNH7XD254v2MHrQJztjAS', 1, 1, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `user_role`
--

CREATE TABLE `user_role` (
  `id` int(11) NOT NULL,
  `role` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_role`
--

INSERT INTO `user_role` (`id`, `role`) VALUES
(1, 'Administrator'),
(2, 'Member'),
(3, 'Dinas');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bobot_indikator`
--
ALTER TABLE `bobot_indikator`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_section` (`id_section`);

--
-- Indexes for table `entitas_ayam`
--
ALTER TABLE `entitas_ayam`
  ADD PRIMARY KEY (`id_a_e`);

--
-- Indexes for table `entitas_sapi`
--
ALTER TABLE `entitas_sapi`
  ADD PRIMARY KEY (`id_s_e`);

--
-- Indexes for table `indikator_ayam`
--
ALTER TABLE `indikator_ayam`
  ADD PRIMARY KEY (`id_a_i`),
  ADD KEY `id_kriteria` (`nama_kriteria`);


--
-- Indexes for table `kriteria`
--
ALTER TABLE `kriteria`
  ADD PRIMARY KEY (`nama_kriteria`),
  ADD UNIQUE KEY `nama_kriteria` (`nama_kriteria`);

--
-- Indexes for table `opsi_ahp`
--
ALTER TABLE `opsi_ahp`
  ADD PRIMARY KEY (`id_opsi_ahp`);

--

-- Indexes for table `rasio`
--
ALTER TABLE `rasio`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `responden`
--
ALTER TABLE `responden`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_section` (`id_section`),
  ADD KEY `id_pengisi` (`id_pengisi`);

--
-- Indexes for table `section`
--
ALTER TABLE `section`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_id` (`role_id`);

--
-- Indexes for table `user_role`
--
ALTER TABLE `user_role`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bobot_indikator`
--
ALTER TABLE `bobot_indikator`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `entitas_ayam`
--
ALTER TABLE `entitas_ayam`
  MODIFY `id_a_e` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `entitas_sapi`
--
ALTER TABLE `entitas_sapi`
  MODIFY `id_s_e` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `indikator_ayam`
--
ALTER TABLE `indikator_ayam`
  MODIFY `id_a_i` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `opsi_ahp`
--
ALTER TABLE `opsi_ahp`
  MODIFY `id_opsi_ahp` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `rasio`
--
ALTER TABLE `rasio`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `responden`
--
ALTER TABLE `responden`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=231;

--
-- AUTO_INCREMENT for table `section`
--
ALTER TABLE `section`

  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `user_role`
--
ALTER TABLE `user_role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bobot_indikator`
--
ALTER TABLE `bobot_indikator`
  ADD CONSTRAINT `bobot_indikator_ibfk_1` FOREIGN KEY (`id_section`) REFERENCES `section` (`id`);

--
-- Constraints for table `indikator_ayam`
--
ALTER TABLE `indikator_ayam`
  ADD CONSTRAINT `indikator_ayam_ibfk_1` FOREIGN KEY (`nama_kriteria`) REFERENCES `kriteria` (`nama_kriteria`);

--
-- Constraints for table `responden`
--
ALTER TABLE `responden`
  ADD CONSTRAINT `responden_ibfk_1` FOREIGN KEY (`id_section`) REFERENCES `section` (`id`),
  ADD CONSTRAINT `responden_ibfk_2` FOREIGN KEY (`id_pengisi`) REFERENCES `user` (`id`);

--
-- Constraints for table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `user_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `user_role` (`id`);


/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
