-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 14, 2020 at 09:45 AM
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `bobot_indikator`
--

INSERT INTO `bobot_indikator` (`id`, `kriteria`, `bobot`, `C1`, `CR`, `id_section`) VALUES
(1, 'RPA', '0.21361613', '0', '0', 2),
(2, 'Peternak', '0.78638386', '0', '0', 2),
(3, 'Ekonomi', '0.22870281', '0', '0', 3),
(4, 'Lingkungan', '0.31681192', '0', '0', 3),
(5, 'Sosial', '0.45448525', '0', '0', 3),
(6, 'E1', '0.09498436', '0.10711435', '0.11901595', 4),
(7, 'E2', '0.16794856', '0.10711435', '0.11901595', 4),
(8, 'E3', '0.27233904', '0.10711435', '0.11901595', 4),
(9, 'E4', '0.46472801', '0.10711435', '0.11901595', 4),
(10, 'L1', '0.13870296', '0.06992657', '0.12056305', 5),
(11, 'L2', '0.28577386', '0.06992657', '0.12056305', 5),
(12, 'L3', '0.57552317', '0.06992657', '0.12056305', 5),
(13, 'S1', '0.02831336', '0', '0', 6),
(14, 'S2', '0.03633917', '0', '0', 6),
(15, 'S3', '0.04514364', '0', '0', 6),
(16, 'S4', '0.05489450', '0', '0', 6),
(17, 'S5', '0.06582041', '0', '0', 6),
(18, 'S6', '0.07824474', '0', '0', 6),
(19, 'S7', '0.09264652', '0', '0', 6),
(20, 'S8', '0.10978058', '0', '0', 6),
(21, 'S9', '0.13094331', '0', '0', 6),
(22, 'S10', '0.15867118', '0', '0', 6),
(23, 'S11', '0.19920252', '0', '0', 6),
(24, 'Ekonomi', '0.29074596', '0', '0', 7),
(25, 'Lingkungan', '0.30427630', '0', '0', 7),
(26, 'Sosial', '0.40497773', '0', '0', 7),
(27, 'E1', '0.09498436', '0.10711435', '0.11901595', 8),
(28, 'E2', '0.16794856', '0.10711435', '0.11901595', 8),
(29, 'E3', '0.27233904', '0.10711435', '0.11901595', 8),
(30, 'E4', '0.46472801', '0.10711435', '0.11901595', 8),
(31, 'L1', '0.13870296', '0.06992657', '0.12056305', 9),
(32, 'L2', '0.28577386', '0.06992657', '0.12056305', 9),
(33, 'L3', '0.57552317', '0.06992657', '0.12056305', 9),
(34, 'S1', '0.02831336', '0', '0', 10),
(35, 'S2', '0.03633917', '0', '0', 10),
(36, 'S3', '0.04514364', '0', '0', 10),
(37, 'S4', '0.05489450', '0', '0', 10),
(38, 'S5', '0.06582041', '0', '0', 10),
(39, 'S6', '0.07824474', '0', '0', 10),
(40, 'S7', '0.09264652', '0', '0', 10),
(41, 'S8', '0.10978058', '0', '0', 10),
(42, 'S9', '0.13094331', '0', '0', 10),
(43, 'S10', '0.15867118', '0', '0', 10),
(44, 'S11', '0.19920252', '0', '0', 10);

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
(17, 'Ekonomi', 'E4', 'Rata-rata harga obat & vaksin untuk 1 ekor ayam dalam 1 kali masa panen'),
(18, 'Lingkungan', 'L3', 'Lingkungan 3');

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
(1, 3, 'tester A', '0.33', 'RPA', 'Peternak', 2),
(2, 3, 'tester B', '0.25', 'RPA', 'Peternak', 2),
(3, 3, 'tester A', '0.33', 'Ekonomi', 'Lingkungan', 3),
(4, 3, 'tester B', '0.5', 'Ekonomi', 'Lingkungan', 3),
(5, 3, 'tester A', '3', 'Ekonomi', 'Sosial', 3),
(6, 3, 'tester B', '3', 'Ekonomi', 'Sosial', 3),
(7, 3, 'tester A', '0.33', 'Lingkungan', 'Sosial', 3),
(8, 3, 'tester B', '1', 'Lingkungan', 'Sosial', 3),
(9, 3, 'tester A', '0.33', 'E1', 'E2', 4),
(10, 3, 'tester B', '0.33', 'E1', 'E2', 4),
(11, 3, 'tester A', '0.33', 'E1', 'E3', 4),
(12, 3, 'tester B', '0.33', 'E1', 'E3', 4),
(13, 3, 'tester A', '0.33', 'E1', 'E4', 4),
(14, 3, 'tester B', '0.33', 'E1', 'E4', 4),
(15, 3, 'tester A', '0.33', 'E2', 'E3', 4),
(16, 3, 'tester B', '0.33', 'E2', 'E3', 4),
(17, 3, 'tester A', '0.33', 'E2', 'E4', 4),
(18, 3, 'tester B', '0.33', 'E2', 'E4', 4),
(19, 3, 'tester A', '0.33', 'E3', 'E4', 4),
(20, 3, 'tester B', '0.33', 'E3', 'E4', 4),
(21, 3, 'tester A', '0.33', 'L1', 'L2', 5),
(22, 3, 'tester B', '0.33', 'L1', 'L2', 5),
(23, 3, 'tester A', '0.33', 'L1', 'L3', 5),
(24, 3, 'tester B', '0.33', 'L1', 'L3', 5),
(25, 3, 'tester A', '0.33', 'L2', 'L3', 5),
(26, 3, 'tester B', '0.33', 'L2', 'L3', 5),
(27, 3, 'tester A', '0.33', 'S1', 'S2', 6),
(28, 3, 'tester B', '0.33', 'S1', 'S2', 6),
(29, 3, 'tester A', '0.33', 'S1', 'S3', 6),
(30, 3, 'tester B', '0.33', 'S1', 'S3', 6),
(31, 3, 'tester A', '0.33', 'S1', 'S4', 6),
(32, 3, 'tester B', '0.33', 'S1', 'S4', 6),
(33, 3, 'tester A', '0.33', 'S1', 'S5', 6),
(34, 3, 'tester B', '0.33', 'S1', 'S5', 6),
(35, 3, 'tester A', '0.33', 'S1', 'S6', 6),
(36, 3, 'tester B', '0.33', 'S1', 'S6', 6),
(37, 3, 'tester A', '0.33', 'S1', 'S7', 6),
(38, 3, 'tester B', '0.33', 'S1', 'S7', 6),
(39, 3, 'tester A', '0.33', 'S1', 'S8', 6),
(40, 3, 'tester B', '0.33', 'S1', 'S8', 6),
(41, 3, 'tester A', '0.33', 'S1', 'S9', 6),
(42, 3, 'tester B', '0.33', 'S1', 'S9', 6),
(43, 3, 'tester A', '0.33', 'S1', 'S10', 6),
(44, 3, 'tester B', '0.33', 'S1', 'S10', 6),
(45, 3, 'tester A', '0.33', 'S1', 'S11', 6),
(46, 3, 'tester B', '0.33', 'S1', 'S11', 6),
(47, 3, 'tester A', '0.33', 'S2', 'S3', 6),
(48, 3, 'tester B', '0.33', 'S2', 'S3', 6),
(49, 3, 'tester A', '0.33', 'S2', 'S4', 6),
(50, 3, 'tester B', '0.33', 'S2', 'S4', 6),
(51, 3, 'tester A', '0.33', 'S2', 'S5', 6),
(52, 3, 'tester B', '0.33', 'S2', 'S5', 6),
(53, 3, 'tester A', '0.33', 'S2', 'S6', 6),
(54, 3, 'tester B', '0.33', 'S2', 'S6', 6),
(55, 3, 'tester A', '0.33', 'S2', 'S7', 6),
(56, 3, 'tester B', '0.33', 'S2', 'S7', 6),
(57, 3, 'tester A', '0.33', 'S2', 'S8', 6),
(58, 3, 'tester B', '0.33', 'S2', 'S8', 6),
(59, 3, 'tester A', '0.33', 'S2', 'S9', 6),
(60, 3, 'tester B', '0.33', 'S2', 'S9', 6),
(61, 3, 'tester A', '0.33', 'S2', 'S10', 6),
(62, 3, 'tester B', '0.33', 'S2', 'S10', 6),
(63, 3, 'tester A', '0.33', 'S2', 'S11', 6),
(64, 3, 'tester B', '0.33', 'S2', 'S11', 6),
(65, 3, 'tester A', '0.33', 'S3', 'S4', 6),
(66, 3, 'tester B', '0.33', 'S3', 'S4', 6),
(67, 3, 'tester A', '0.33', 'S3', 'S5', 6),
(68, 3, 'tester B', '0.33', 'S3', 'S5', 6),
(69, 3, 'tester A', '0.33', 'S3', 'S6', 6),
(70, 3, 'tester B', '0.33', 'S3', 'S6', 6),
(71, 3, 'tester A', '0.33', 'S3', 'S7', 6),
(72, 3, 'tester B', '0.33', 'S3', 'S7', 6),
(73, 3, 'tester A', '0.33', 'S3', 'S8', 6),
(74, 3, 'tester B', '0.33', 'S3', 'S8', 6),
(75, 3, 'tester A', '0.33', 'S3', 'S9', 6),
(76, 3, 'tester B', '0.33', 'S3', 'S9', 6),
(77, 3, 'tester A', '0.33', 'S3', 'S10', 6),
(78, 3, 'tester B', '0.33', 'S3', 'S10', 6),
(79, 3, 'tester A', '0.33', 'S3', 'S11', 6),
(80, 3, 'tester B', '0.33', 'S3', 'S11', 6),
(81, 3, 'tester A', '0.33', 'S4', 'S5', 6),
(82, 3, 'tester B', '0.33', 'S4', 'S5', 6),
(83, 3, 'tester A', '0.33', 'S4', 'S6', 6),
(84, 3, 'tester B', '0.33', 'S4', 'S6', 6),
(85, 3, 'tester A', '0.33', 'S4', 'S7', 6),
(86, 3, 'tester B', '0.33', 'S4', 'S7', 6),
(87, 3, 'tester A', '0.33', 'S4', 'S8', 6),
(88, 3, 'tester B', '0.33', 'S4', 'S8', 6),
(89, 3, 'tester A', '0.33', 'S4', 'S9', 6),
(90, 3, 'tester B', '0.33', 'S4', 'S9', 6),
(91, 3, 'tester A', '0.33', 'S4', 'S10', 6),
(92, 3, 'tester B', '0.33', 'S4', 'S10', 6),
(93, 3, 'tester A', '0.33', 'S4', 'S11', 6),
(94, 3, 'tester B', '0.33', 'S4', 'S11', 6),
(95, 3, 'tester A', '0.33', 'S5', 'S6', 6),
(96, 3, 'tester B', '0.33', 'S5', 'S6', 6),
(97, 3, 'tester A', '0.33', 'S5', 'S7', 6),
(98, 3, 'tester B', '0.33', 'S5', 'S7', 6),
(99, 3, 'tester A', '0.33', 'S5', 'S8', 6),
(100, 3, 'tester B', '0.33', 'S5', 'S8', 6),
(101, 3, 'tester A', '0.33', 'S5', 'S9', 6),
(102, 3, 'tester B', '0.33', 'S5', 'S9', 6),
(103, 3, 'tester A', '0.33', 'S5', 'S10', 6),
(104, 3, 'tester B', '0.33', 'S5', 'S10', 6),
(105, 3, 'tester A', '0.33', 'S5', 'S11', 6),
(106, 3, 'tester B', '0.33', 'S5', 'S11', 6),
(107, 3, 'tester A', '0.33', 'S6', 'S7', 6),
(108, 3, 'tester B', '0.33', 'S6', 'S7', 6),
(109, 3, 'tester A', '0.33', 'S6', 'S8', 6),
(110, 3, 'tester B', '0.33', 'S6', 'S8', 6),
(111, 3, 'tester A', '0.33', 'S6', 'S9', 6),
(112, 3, 'tester B', '0.33', 'S6', 'S9', 6),
(113, 3, 'tester A', '0.33', 'S6', 'S10', 6),
(114, 3, 'tester B', '0.33', 'S6', 'S10', 6),
(115, 3, 'tester A', '0.33', 'S6', 'S11', 6),
(116, 3, 'tester B', '0.33', 'S6', 'S11', 6),
(117, 3, 'tester A', '0.33', 'S7', 'S8', 6),
(118, 3, 'tester B', '0.33', 'S7', 'S8', 6),
(119, 3, 'tester A', '0.33', 'S7', 'S9', 6),
(120, 3, 'tester B', '0.33', 'S7', 'S9', 6),
(121, 3, 'tester A', '0.33', 'S7', 'S10', 6),
(122, 3, 'tester B', '0.33', 'S7', 'S10', 6),
(123, 3, 'tester A', '0.33', 'S7', 'S11', 6),
(124, 3, 'tester B', '0.33', 'S7', 'S11', 6),
(125, 3, 'tester A', '0.33', 'S8', 'S9', 6),
(126, 3, 'tester B', '0.33', 'S8', 'S9', 6),
(127, 3, 'tester A', '0.33', 'S8', 'S10', 6),
(128, 3, 'tester B', '0.33', 'S8', 'S10', 6),
(129, 3, 'tester A', '0.33', 'S8', 'S11', 6),
(130, 3, 'tester B', '0.33', 'S8', 'S11', 6),
(131, 3, 'tester A', '0.33', 'S9', 'S10', 6),
(132, 3, 'tester B', '0.33', 'S9', 'S10', 6),
(133, 3, 'tester A', '0.33', 'S9', 'S11', 6),
(134, 3, 'tester B', '0.33', 'S9', 'S11', 6),
(135, 3, 'tester A', '0.33', 'S10', 'S11', 6),
(136, 3, 'tester B', '0.33', 'S10', 'S11', 6),
(137, 3, 'tester A', '2', 'Ekonomi', 'Lingkungan', 7),
(138, 3, 'tester B', '1', 'Ekonomi', 'Lingkungan', 7),
(139, 3, 'tester A', '3', 'Ekonomi', 'Sosial', 7),
(140, 3, 'tester B', '2', 'Ekonomi', 'Sosial', 7),
(141, 3, 'tester A', '3', 'Lingkungan', 'Sosial', 7),
(142, 3, 'tester B', '0.25', 'Lingkungan', 'Sosial', 7),
(143, 3, 'tester A', '0.33', 'E1', 'E2', 8),
(144, 3, 'tester B', '0.33', 'E1', 'E2', 8),
(145, 3, 'tester A', '0.33', 'E1', 'E3', 8),
(146, 3, 'tester B', '0.33', 'E1', 'E3', 8),
(147, 3, 'tester A', '0.33', 'E1', 'E4', 8),
(148, 3, 'tester B', '0.33', 'E1', 'E4', 8),
(149, 3, 'tester A', '0.33', 'E2', 'E3', 8),
(150, 3, 'tester B', '0.33', 'E2', 'E3', 8),
(151, 3, 'tester A', '0.33', 'E2', 'E4', 8),
(152, 3, 'tester B', '0.33', 'E2', 'E4', 8),
(153, 3, 'tester A', '0.33', 'E3', 'E4', 8),
(154, 3, 'tester B', '0.33', 'E3', 'E4', 8),
(155, 3, 'tester A', '0.33', 'L1', 'L2', 9),
(156, 3, 'tester B', '0.33', 'L1', 'L2', 9),
(157, 3, 'tester A', '0.33', 'L1', 'L3', 9),
(158, 3, 'tester B', '0.33', 'L1', 'L3', 9),
(159, 3, 'tester A', '0.33', 'L2', 'L3', 9),
(160, 3, 'tester B', '0.33', 'L2', 'L3', 9),
(161, 3, 'tester A', '0.33', 'S1', 'S2', 10),
(162, 3, 'tester B', '0.33', 'S1', 'S2', 10),
(163, 3, 'tester A', '0.33', 'S1', 'S3', 10),
(164, 3, 'tester B', '0.33', 'S1', 'S3', 10),
(165, 3, 'tester A', '0.33', 'S1', 'S4', 10),
(166, 3, 'tester B', '0.33', 'S1', 'S4', 10),
(167, 3, 'tester A', '0.33', 'S1', 'S5', 10),
(168, 3, 'tester B', '0.33', 'S1', 'S5', 10),
(169, 3, 'tester A', '0.33', 'S1', 'S6', 10),
(170, 3, 'tester B', '0.33', 'S1', 'S6', 10),
(171, 3, 'tester A', '0.33', 'S1', 'S7', 10),
(172, 3, 'tester B', '0.33', 'S1', 'S7', 10),
(173, 3, 'tester A', '0.33', 'S1', 'S8', 10),
(174, 3, 'tester B', '0.33', 'S1', 'S8', 10),
(175, 3, 'tester A', '0.33', 'S1', 'S9', 10),
(176, 3, 'tester B', '0.33', 'S1', 'S9', 10),
(177, 3, 'tester A', '0.33', 'S1', 'S10', 10),
(178, 3, 'tester B', '0.33', 'S1', 'S10', 10),
(179, 3, 'tester A', '0.33', 'S1', 'S11', 10),
(180, 3, 'tester B', '0.33', 'S1', 'S11', 10),
(181, 3, 'tester A', '0.33', 'S2', 'S3', 10),
(182, 3, 'tester B', '0.33', 'S2', 'S3', 10),
(183, 3, 'tester A', '0.33', 'S2', 'S4', 10),
(184, 3, 'tester B', '0.33', 'S2', 'S4', 10),
(185, 3, 'tester A', '0.33', 'S2', 'S5', 10),
(186, 3, 'tester B', '0.33', 'S2', 'S5', 10),
(187, 3, 'tester A', '0.33', 'S2', 'S6', 10),
(188, 3, 'tester B', '0.33', 'S2', 'S6', 10),
(189, 3, 'tester A', '0.33', 'S2', 'S7', 10),
(190, 3, 'tester B', '0.33', 'S2', 'S7', 10),
(191, 3, 'tester A', '0.33', 'S2', 'S8', 10),
(192, 3, 'tester B', '0.33', 'S2', 'S8', 10),
(193, 3, 'tester A', '0.33', 'S2', 'S9', 10),
(194, 3, 'tester B', '0.33', 'S2', 'S9', 10),
(195, 3, 'tester A', '0.33', 'S2', 'S10', 10),
(196, 3, 'tester B', '0.33', 'S2', 'S10', 10),
(197, 3, 'tester A', '0.33', 'S2', 'S11', 10),
(198, 3, 'tester B', '0.33', 'S2', 'S11', 10),
(199, 3, 'tester A', '0.33', 'S3', 'S4', 10),
(200, 3, 'tester B', '0.33', 'S3', 'S4', 10),
(201, 3, 'tester A', '0.33', 'S3', 'S5', 10),
(202, 3, 'tester B', '0.33', 'S3', 'S5', 10),
(203, 3, 'tester A', '0.33', 'S3', 'S6', 10),
(204, 3, 'tester B', '0.33', 'S3', 'S6', 10),
(205, 3, 'tester A', '0.33', 'S3', 'S7', 10),
(206, 3, 'tester B', '0.33', 'S3', 'S7', 10),
(207, 3, 'tester A', '0.33', 'S3', 'S8', 10),
(208, 3, 'tester B', '0.33', 'S3', 'S8', 10),
(209, 3, 'tester A', '0.33', 'S3', 'S9', 10),
(210, 3, 'tester B', '0.33', 'S3', 'S9', 10),
(211, 3, 'tester A', '0.33', 'S3', 'S10', 10),
(212, 3, 'tester B', '0.33', 'S3', 'S10', 10),
(213, 3, 'tester A', '0.33', 'S3', 'S11', 10),
(214, 3, 'tester B', '0.33', 'S3', 'S11', 10),
(215, 3, 'tester A', '0.33', 'S4', 'S5', 10),
(216, 3, 'tester B', '0.33', 'S4', 'S5', 10),
(217, 3, 'tester A', '0.33', 'S4', 'S6', 10),
(218, 3, 'tester B', '0.33', 'S4', 'S6', 10),
(219, 3, 'tester A', '0.33', 'S4', 'S7', 10),
(220, 3, 'tester B', '0.33', 'S4', 'S7', 10),
(221, 3, 'tester A', '0.33', 'S4', 'S8', 10),
(222, 3, 'tester B', '0.33', 'S4', 'S8', 10),
(223, 3, 'tester A', '0.33', 'S4', 'S9', 10),
(224, 3, 'tester B', '0.33', 'S4', 'S9', 10),
(225, 3, 'tester A', '0.33', 'S4', 'S10', 10),
(226, 3, 'tester B', '0.33', 'S4', 'S10', 10),
(227, 3, 'tester A', '0.33', 'S4', 'S11', 10),
(228, 3, 'tester B', '0.33', 'S4', 'S11', 10),
(229, 3, 'tester A', '0.33', 'S5', 'S6', 10),
(230, 3, 'tester B', '0.33', 'S5', 'S6', 10),
(231, 3, 'tester A', '0.33', 'S5', 'S7', 10),
(232, 3, 'tester B', '0.33', 'S5', 'S7', 10),
(233, 3, 'tester A', '0.33', 'S5', 'S8', 10),
(234, 3, 'tester B', '0.33', 'S5', 'S8', 10),
(235, 3, 'tester A', '0.33', 'S5', 'S9', 10),
(236, 3, 'tester B', '0.33', 'S5', 'S9', 10),
(237, 3, 'tester A', '0.33', 'S5', 'S10', 10),
(238, 3, 'tester B', '0.33', 'S5', 'S10', 10),
(239, 3, 'tester A', '0.33', 'S5', 'S11', 10),
(240, 3, 'tester B', '0.33', 'S5', 'S11', 10),
(241, 3, 'tester A', '0.33', 'S6', 'S7', 10),
(242, 3, 'tester B', '0.33', 'S6', 'S7', 10),
(243, 3, 'tester A', '0.33', 'S6', 'S8', 10),
(244, 3, 'tester B', '0.33', 'S6', 'S8', 10),
(245, 3, 'tester A', '0.33', 'S6', 'S9', 10),
(246, 3, 'tester B', '0.33', 'S6', 'S9', 10),
(247, 3, 'tester A', '0.33', 'S6', 'S10', 10),
(248, 3, 'tester B', '0.33', 'S6', 'S10', 10),
(249, 3, 'tester A', '0.33', 'S6', 'S11', 10),
(250, 3, 'tester B', '0.33', 'S6', 'S11', 10),
(251, 3, 'tester A', '0.33', 'S7', 'S8', 10),
(252, 3, 'tester B', '0.33', 'S7', 'S8', 10),
(253, 3, 'tester A', '0.33', 'S7', 'S9', 10),
(254, 3, 'tester B', '0.33', 'S7', 'S9', 10),
(255, 3, 'tester A', '0.33', 'S7', 'S10', 10),
(256, 3, 'tester B', '0.33', 'S7', 'S10', 10),
(257, 3, 'tester A', '0.33', 'S7', 'S11', 10),
(258, 3, 'tester B', '0.33', 'S7', 'S11', 10),
(259, 3, 'tester A', '0.33', 'S8', 'S9', 10),
(260, 3, 'tester B', '0.33', 'S8', 'S9', 10),
(261, 3, 'tester A', '0.33', 'S8', 'S10', 10),
(262, 3, 'tester B', '0.33', 'S8', 'S10', 10),
(263, 3, 'tester A', '0.33', 'S8', 'S11', 10),
(264, 3, 'tester B', '0.33', 'S8', 'S11', 10),
(265, 3, 'tester A', '0.33', 'S9', 'S10', 10),
(266, 3, 'tester B', '0.33', 'S9', 'S10', 10),
(267, 3, 'tester A', '0.33', 'S9', 'S11', 10),
(268, 3, 'tester B', '0.33', 'S9', 'S11', 10),
(269, 3, 'tester A', '0.33', 'S10', 'S11', 10),
(270, 3, 'tester B', '0.33', 'S10', 'S11', 10),
(271, 3, 'tester C', '0.2', 'RPA', 'Peternak', 2),
(272, 3, 'tester C', '0.33', 'Ekonomi', 'Lingkungan', 3),
(273, 3, 'tester C', '0.2', 'Ekonomi', 'Sosial', 3),
(274, 3, 'tester C', '0.13', 'Lingkungan', 'Sosial', 3),
(275, 3, 'tester C', '0.33', 'E1', 'E2', 4),
(276, 3, 'tester C', '0.33', 'E1', 'E3', 4),
(277, 3, 'tester C', '0.33', 'E1', 'E4', 4),
(278, 3, 'tester C', '0.33', 'E2', 'E3', 4),
(279, 3, 'tester C', '0.33', 'E2', 'E4', 4),
(280, 3, 'tester C', '0.33', 'E3', 'E4', 4),
(281, 3, 'tester C', '0.33', 'L1', 'L2', 5),
(282, 3, 'tester C', '0.33', 'L1', 'L3', 5),
(283, 3, 'tester C', '0.33', 'L2', 'L3', 5),
(284, 3, 'tester C', '0.33', 'S1', 'S2', 6),
(285, 3, 'tester C', '0.33', 'S1', 'S3', 6),
(286, 3, 'tester C', '0.33', 'S1', 'S4', 6),
(287, 3, 'tester C', '0.33', 'S1', 'S5', 6),
(288, 3, 'tester C', '0.33', 'S1', 'S6', 6),
(289, 3, 'tester C', '0.33', 'S1', 'S7', 6),
(290, 3, 'tester C', '0.33', 'S1', 'S8', 6),
(291, 3, 'tester C', '0.33', 'S1', 'S9', 6),
(292, 3, 'tester C', '0.33', 'S1', 'S10', 6),
(293, 3, 'tester C', '0.33', 'S1', 'S11', 6),
(294, 3, 'tester C', '0.33', 'S2', 'S3', 6),
(295, 3, 'tester C', '0.33', 'S2', 'S4', 6),
(296, 3, 'tester C', '0.33', 'S2', 'S5', 6),
(297, 3, 'tester C', '0.33', 'S2', 'S6', 6),
(298, 3, 'tester C', '0.33', 'S2', 'S7', 6),
(299, 3, 'tester C', '0.33', 'S2', 'S8', 6),
(300, 3, 'tester C', '0.33', 'S2', 'S9', 6),
(301, 3, 'tester C', '0.33', 'S2', 'S10', 6),
(302, 3, 'tester C', '0.33', 'S2', 'S11', 6),
(303, 3, 'tester C', '0.33', 'S3', 'S4', 6),
(304, 3, 'tester C', '0.33', 'S3', 'S5', 6),
(305, 3, 'tester C', '0.33', 'S3', 'S6', 6),
(306, 3, 'tester C', '0.33', 'S3', 'S7', 6),
(307, 3, 'tester C', '0.33', 'S3', 'S8', 6),
(308, 3, 'tester C', '0.33', 'S3', 'S9', 6),
(309, 3, 'tester C', '0.33', 'S3', 'S10', 6),
(310, 3, 'tester C', '0.33', 'S3', 'S11', 6),
(311, 3, 'tester C', '0.33', 'S4', 'S5', 6),
(312, 3, 'tester C', '0.33', 'S4', 'S6', 6),
(313, 3, 'tester C', '0.33', 'S4', 'S7', 6),
(314, 3, 'tester C', '0.33', 'S4', 'S8', 6),
(315, 3, 'tester C', '0.33', 'S4', 'S9', 6),
(316, 3, 'tester C', '0.33', 'S4', 'S10', 6),
(317, 3, 'tester C', '0.33', 'S4', 'S11', 6),
(318, 3, 'tester C', '0.33', 'S5', 'S6', 6),
(319, 3, 'tester C', '0.33', 'S5', 'S7', 6),
(320, 3, 'tester C', '0.33', 'S5', 'S8', 6),
(321, 3, 'tester C', '0.33', 'S5', 'S9', 6),
(322, 3, 'tester C', '0.33', 'S5', 'S10', 6),
(323, 3, 'tester C', '0.33', 'S5', 'S11', 6),
(324, 3, 'tester C', '0.33', 'S6', 'S7', 6),
(325, 3, 'tester C', '0.33', 'S6', 'S8', 6),
(326, 3, 'tester C', '0.33', 'S6', 'S9', 6),
(327, 3, 'tester C', '0.33', 'S6', 'S10', 6),
(328, 3, 'tester C', '0.33', 'S6', 'S11', 6),
(329, 3, 'tester C', '0.33', 'S7', 'S8', 6),
(330, 3, 'tester C', '0.33', 'S7', 'S9', 6),
(331, 3, 'tester C', '0.33', 'S7', 'S10', 6),
(332, 3, 'tester C', '0.33', 'S7', 'S11', 6),
(333, 3, 'tester C', '0.33', 'S8', 'S9', 6),
(334, 3, 'tester C', '0.33', 'S8', 'S10', 6),
(335, 3, 'tester C', '0.33', 'S8', 'S11', 6),
(336, 3, 'tester C', '0.33', 'S9', 'S10', 6),
(337, 3, 'tester C', '0.33', 'S9', 'S11', 6),
(338, 3, 'tester C', '0.33', 'S10', 'S11', 6),
(339, 3, 'tester C', '0.5', 'Ekonomi', 'Lingkungan', 7),
(340, 3, 'tester C', '0.33', 'Ekonomi', 'Sosial', 7),
(341, 3, 'tester C', '0.5', 'Lingkungan', 'Sosial', 7),
(342, 3, 'tester C', '0.33', 'E1', 'E2', 8),
(343, 3, 'tester C', '0.33', 'E1', 'E3', 8),
(344, 3, 'tester C', '0.33', 'E1', 'E4', 8),
(345, 3, 'tester C', '0.33', 'E2', 'E3', 8),
(346, 3, 'tester C', '0.33', 'E2', 'E4', 8),
(347, 3, 'tester C', '0.33', 'E3', 'E4', 8),
(348, 3, 'tester C', '0.33', 'L1', 'L2', 9),
(349, 3, 'tester C', '0.33', 'L1', 'L3', 9),
(350, 3, 'tester C', '0.33', 'L2', 'L3', 9),
(351, 3, 'tester C', '0.33', 'S1', 'S2', 10),
(352, 3, 'tester C', '0.33', 'S1', 'S3', 10),
(353, 3, 'tester C', '0.33', 'S1', 'S4', 10),
(354, 3, 'tester C', '0.33', 'S1', 'S5', 10),
(355, 3, 'tester C', '0.33', 'S1', 'S6', 10),
(356, 3, 'tester C', '0.33', 'S1', 'S7', 10),
(357, 3, 'tester C', '0.33', 'S1', 'S8', 10),
(358, 3, 'tester C', '0.33', 'S1', 'S9', 10),
(359, 3, 'tester C', '0.33', 'S1', 'S10', 10),
(360, 3, 'tester C', '0.33', 'S1', 'S11', 10),
(361, 3, 'tester C', '0.33', 'S2', 'S3', 10),
(362, 3, 'tester C', '0.33', 'S2', 'S4', 10),
(363, 3, 'tester C', '0.33', 'S2', 'S5', 10),
(364, 3, 'tester C', '0.33', 'S2', 'S6', 10),
(365, 3, 'tester C', '0.33', 'S2', 'S7', 10),
(366, 3, 'tester C', '0.33', 'S2', 'S8', 10),
(367, 3, 'tester C', '0.33', 'S2', 'S9', 10),
(368, 3, 'tester C', '0.33', 'S2', 'S10', 10),
(369, 3, 'tester C', '0.33', 'S2', 'S11', 10),
(370, 3, 'tester C', '0.33', 'S3', 'S4', 10),
(371, 3, 'tester C', '0.33', 'S3', 'S5', 10),
(372, 3, 'tester C', '0.33', 'S3', 'S6', 10),
(373, 3, 'tester C', '0.33', 'S3', 'S7', 10),
(374, 3, 'tester C', '0.33', 'S3', 'S8', 10),
(375, 3, 'tester C', '0.33', 'S3', 'S9', 10),
(376, 3, 'tester C', '0.33', 'S3', 'S10', 10),
(377, 3, 'tester C', '0.33', 'S3', 'S11', 10),
(378, 3, 'tester C', '0.33', 'S4', 'S5', 10),
(379, 3, 'tester C', '0.33', 'S4', 'S6', 10),
(380, 3, 'tester C', '0.33', 'S4', 'S7', 10),
(381, 3, 'tester C', '0.33', 'S4', 'S8', 10),
(382, 3, 'tester C', '0.33', 'S4', 'S9', 10),
(383, 3, 'tester C', '0.33', 'S4', 'S10', 10),
(384, 3, 'tester C', '0.33', 'S4', 'S11', 10),
(385, 3, 'tester C', '0.33', 'S5', 'S6', 10),
(386, 3, 'tester C', '0.33', 'S5', 'S7', 10),
(387, 3, 'tester C', '0.33', 'S5', 'S8', 10),
(388, 3, 'tester C', '0.33', 'S5', 'S9', 10),
(389, 3, 'tester C', '0.33', 'S5', 'S10', 10),
(390, 3, 'tester C', '0.33', 'S5', 'S11', 10),
(391, 3, 'tester C', '0.33', 'S6', 'S7', 10),
(392, 3, 'tester C', '0.33', 'S6', 'S8', 10),
(393, 3, 'tester C', '0.33', 'S6', 'S9', 10),
(394, 3, 'tester C', '0.33', 'S6', 'S10', 10),
(395, 3, 'tester C', '0.33', 'S6', 'S11', 10),
(396, 3, 'tester C', '0.33', 'S7', 'S8', 10),
(397, 3, 'tester C', '0.33', 'S7', 'S9', 10),
(398, 3, 'tester C', '0.33', 'S7', 'S10', 10),
(399, 3, 'tester C', '0.33', 'S7', 'S11', 10),
(400, 3, 'tester C', '0.33', 'S8', 'S9', 10),
(401, 3, 'tester C', '0.33', 'S8', 'S10', 10),
(402, 3, 'tester C', '0.33', 'S8', 'S11', 10),
(403, 3, 'tester C', '0.33', 'S9', 'S10', 10),
(404, 3, 'tester C', '0.33', 'S9', 'S11', 10),
(405, 3, 'tester C', '0.33', 'S10', 'S11', 10),
(406, 3, 'tester D', '0.33', 'RPA', 'Peternak', 2),
(407, 3, 'tester D', '0.33', 'Ekonomi', 'Lingkungan', 3),
(408, 3, 'tester D', '0.33', 'Ekonomi', 'Sosial', 3),
(409, 3, 'tester D', '0.33', 'Lingkungan', 'Sosial', 3),
(410, 3, 'tester D', '0.33', 'E1', 'E2', 4),
(411, 3, 'tester D', '0.33', 'E1', 'E3', 4),
(412, 3, 'tester D', '0.33', 'E1', 'E4', 4),
(413, 3, 'tester D', '0.33', 'E2', 'E3', 4),
(414, 3, 'tester D', '0.33', 'E2', 'E4', 4),
(415, 3, 'tester D', '0.33', 'E3', 'E4', 4),
(416, 3, 'tester D', '0.33', 'L1', 'L2', 5),
(417, 3, 'tester D', '0.33', 'L1', 'L3', 5),
(418, 3, 'tester D', '0.33', 'L2', 'L3', 5),
(419, 3, 'tester D', '0.33', 'S1', 'S2', 6),
(420, 3, 'tester D', '0.33', 'S1', 'S3', 6),
(421, 3, 'tester D', '0.33', 'S1', 'S4', 6),
(422, 3, 'tester D', '0.33', 'S1', 'S5', 6),
(423, 3, 'tester D', '0.33', 'S1', 'S6', 6),
(424, 3, 'tester D', '0.33', 'S1', 'S7', 6),
(425, 3, 'tester D', '0.33', 'S1', 'S8', 6),
(426, 3, 'tester D', '0.33', 'S1', 'S9', 6),
(427, 3, 'tester D', '0.33', 'S1', 'S10', 6),
(428, 3, 'tester D', '0.33', 'S1', 'S11', 6),
(429, 3, 'tester D', '0.33', 'S2', 'S3', 6),
(430, 3, 'tester D', '0.33', 'S2', 'S4', 6),
(431, 3, 'tester D', '0.33', 'S2', 'S5', 6),
(432, 3, 'tester D', '0.33', 'S2', 'S6', 6),
(433, 3, 'tester D', '0.33', 'S2', 'S7', 6),
(434, 3, 'tester D', '0.33', 'S2', 'S8', 6),
(435, 3, 'tester D', '0.33', 'S2', 'S9', 6),
(436, 3, 'tester D', '0.33', 'S2', 'S10', 6),
(437, 3, 'tester D', '0.33', 'S2', 'S11', 6),
(438, 3, 'tester D', '0.33', 'S3', 'S4', 6),
(439, 3, 'tester D', '0.33', 'S3', 'S5', 6),
(440, 3, 'tester D', '0.33', 'S3', 'S6', 6),
(441, 3, 'tester D', '0.33', 'S3', 'S7', 6),
(442, 3, 'tester D', '0.33', 'S3', 'S8', 6),
(443, 3, 'tester D', '0.33', 'S3', 'S9', 6),
(444, 3, 'tester D', '0.33', 'S3', 'S10', 6),
(445, 3, 'tester D', '0.33', 'S3', 'S11', 6),
(446, 3, 'tester D', '0.33', 'S4', 'S5', 6),
(447, 3, 'tester D', '0.33', 'S4', 'S6', 6),
(448, 3, 'tester D', '0.33', 'S4', 'S7', 6),
(449, 3, 'tester D', '0.33', 'S4', 'S8', 6),
(450, 3, 'tester D', '0.33', 'S4', 'S9', 6),
(451, 3, 'tester D', '0.33', 'S4', 'S10', 6),
(452, 3, 'tester D', '0.33', 'S4', 'S11', 6),
(453, 3, 'tester D', '0.33', 'S5', 'S6', 6),
(454, 3, 'tester D', '0.33', 'S5', 'S7', 6),
(455, 3, 'tester D', '0.33', 'S5', 'S8', 6),
(456, 3, 'tester D', '0.33', 'S5', 'S9', 6),
(457, 3, 'tester D', '0.33', 'S5', 'S10', 6),
(458, 3, 'tester D', '0.33', 'S5', 'S11', 6),
(459, 3, 'tester D', '0.33', 'S6', 'S7', 6),
(460, 3, 'tester D', '0.33', 'S6', 'S8', 6),
(461, 3, 'tester D', '0.33', 'S6', 'S9', 6),
(462, 3, 'tester D', '0.33', 'S6', 'S10', 6),
(463, 3, 'tester D', '0.33', 'S6', 'S11', 6),
(464, 3, 'tester D', '0.33', 'S7', 'S8', 6),
(465, 3, 'tester D', '0.33', 'S7', 'S9', 6),
(466, 3, 'tester D', '0.33', 'S7', 'S10', 6),
(467, 3, 'tester D', '0.33', 'S7', 'S11', 6),
(468, 3, 'tester D', '0.33', 'S8', 'S9', 6),
(469, 3, 'tester D', '0.33', 'S8', 'S10', 6),
(470, 3, 'tester D', '0.33', 'S8', 'S11', 6),
(471, 3, 'tester D', '0.33', 'S9', 'S10', 6),
(472, 3, 'tester D', '0.33', 'S9', 'S11', 6),
(473, 3, 'tester D', '0.33', 'S10', 'S11', 6),
(474, 3, 'tester D', '0.33', 'Ekonomi', 'Lingkungan', 7),
(475, 3, 'tester D', '0.33', 'Ekonomi', 'Sosial', 7),
(476, 3, 'tester D', '0.33', 'Lingkungan', 'Sosial', 7),
(477, 3, 'tester D', '0.33', 'E1', 'E2', 8),
(478, 3, 'tester D', '0.33', 'E1', 'E3', 8),
(479, 3, 'tester D', '0.33', 'E1', 'E4', 8),
(480, 3, 'tester D', '0.33', 'E2', 'E3', 8),
(481, 3, 'tester D', '0.33', 'E2', 'E4', 8),
(482, 3, 'tester D', '0.33', 'E3', 'E4', 8),
(483, 3, 'tester D', '0.33', 'L1', 'L2', 9),
(484, 3, 'tester D', '0.33', 'L1', 'L3', 9),
(485, 3, 'tester D', '0.33', 'L2', 'L3', 9),
(486, 3, 'tester D', '0.33', 'S1', 'S2', 10),
(487, 3, 'tester D', '0.33', 'S1', 'S3', 10),
(488, 3, 'tester D', '0.33', 'S1', 'S4', 10),
(489, 3, 'tester D', '0.33', 'S1', 'S5', 10),
(490, 3, 'tester D', '0.33', 'S1', 'S6', 10),
(491, 3, 'tester D', '0.33', 'S1', 'S7', 10),
(492, 3, 'tester D', '0.33', 'S1', 'S8', 10),
(493, 3, 'tester D', '0.33', 'S1', 'S9', 10),
(494, 3, 'tester D', '0.33', 'S1', 'S10', 10),
(495, 3, 'tester D', '0.33', 'S1', 'S11', 10),
(496, 3, 'tester D', '0.33', 'S2', 'S3', 10),
(497, 3, 'tester D', '0.33', 'S2', 'S4', 10),
(498, 3, 'tester D', '0.33', 'S2', 'S5', 10),
(499, 3, 'tester D', '0.33', 'S2', 'S6', 10),
(500, 3, 'tester D', '0.33', 'S2', 'S7', 10),
(501, 3, 'tester D', '0.33', 'S2', 'S8', 10),
(502, 3, 'tester D', '0.33', 'S2', 'S9', 10),
(503, 3, 'tester D', '0.33', 'S2', 'S10', 10),
(504, 3, 'tester D', '0.33', 'S2', 'S11', 10),
(505, 3, 'tester D', '0.33', 'S3', 'S4', 10),
(506, 3, 'tester D', '0.33', 'S3', 'S5', 10),
(507, 3, 'tester D', '0.33', 'S3', 'S6', 10),
(508, 3, 'tester D', '0.33', 'S3', 'S7', 10),
(509, 3, 'tester D', '0.33', 'S3', 'S8', 10),
(510, 3, 'tester D', '0.33', 'S3', 'S9', 10),
(511, 3, 'tester D', '0.33', 'S3', 'S10', 10),
(512, 3, 'tester D', '0.33', 'S3', 'S11', 10),
(513, 3, 'tester D', '0.33', 'S4', 'S5', 10),
(514, 3, 'tester D', '0.33', 'S4', 'S6', 10),
(515, 3, 'tester D', '0.33', 'S4', 'S7', 10),
(516, 3, 'tester D', '0.33', 'S4', 'S8', 10),
(517, 3, 'tester D', '0.33', 'S4', 'S9', 10),
(518, 3, 'tester D', '0.33', 'S4', 'S10', 10),
(519, 3, 'tester D', '0.33', 'S4', 'S11', 10),
(520, 3, 'tester D', '0.33', 'S5', 'S6', 10),
(521, 3, 'tester D', '0.33', 'S5', 'S7', 10),
(522, 3, 'tester D', '0.33', 'S5', 'S8', 10),
(523, 3, 'tester D', '0.33', 'S5', 'S9', 10),
(524, 3, 'tester D', '0.33', 'S5', 'S10', 10),
(525, 3, 'tester D', '0.33', 'S5', 'S11', 10),
(526, 3, 'tester D', '0.33', 'S6', 'S7', 10),
(527, 3, 'tester D', '0.33', 'S6', 'S8', 10),
(528, 3, 'tester D', '0.33', 'S6', 'S9', 10),
(529, 3, 'tester D', '0.33', 'S6', 'S10', 10),
(530, 3, 'tester D', '0.33', 'S6', 'S11', 10),
(531, 3, 'tester D', '0.33', 'S7', 'S8', 10),
(532, 3, 'tester D', '0.33', 'S7', 'S9', 10),
(533, 3, 'tester D', '0.33', 'S7', 'S10', 10),
(534, 3, 'tester D', '0.33', 'S7', 'S11', 10),
(535, 3, 'tester D', '0.33', 'S8', 'S9', 10),
(536, 3, 'tester D', '0.33', 'S8', 'S10', 10),
(537, 3, 'tester D', '0.33', 'S8', 'S11', 10),
(538, 3, 'tester D', '0.33', 'S9', 'S10', 10),
(539, 3, 'tester D', '0.33', 'S9', 'S11', 10),
(540, 3, 'tester D', '0.33', 'S10', 'S11', 10);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;
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
  MODIFY `id_a_i` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=541;
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
