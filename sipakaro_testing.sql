-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 22, 2020 at 07:11 PM
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
(1, 'RPA', '0.24812030', '0', '0', 2),
(2, 'Peternak', '0.75187969', '0', '0', 2),
(3, 'Ekonomi', '0.13870296', '0', '0', 3),
(4, 'Lingkungan', '0.28577386', '0', '0', 3),
(5, 'Sosial', '0.57552317', '0', '0', 3),
(6, 'Ekonomi', '0.13870296', '0', '0', 7),
(7, 'Lingkungan', '0.28577386', '0', '0', 7),
(8, 'Sosial', '0.57552317', '0', '0', 7),
(9, 'RE1', '0.09498436', '0.10711435', '0.11901595', 4),
(10, 'RE2', '0.16794856', '0.10711435', '0.11901595', 4),
(11, 'RE3', '0.27233904', '0.10711435', '0.11901595', 4),
(12, 'RE4', '0.46472801', '0.10711435', '0.11901595', 4),
(13, 'RL1', '0.13870296', '0.06992657', '0.12056305', 5),
(14, 'RL2', '0.28577386', '0.06992657', '0.12056305', 5),
(15, 'RL3', '0.57552317', '0.06992657', '0.12056305', 5),
(16, 'RS1', '0.24812030', '0', '0', 6),
(17, 'RS2', '0.75187969', '0', '0', 6),
(18, 'E1', '0.09498436', '0.10711435', '0.11901595', 8),
(19, 'E2', '0.16794856', '0.10711435', '0.11901595', 8),
(20, 'E3', '0.27233904', '0.10711435', '0.11901595', 8),
(21, 'E4', '0.46472801', '0.10711435', '0.11901595', 8),
(22, 'L1', '0.13870296', '0.06992657', '0.12056305', 9),
(23, 'L2', '0.28577386', '0.06992657', '0.12056305', 9),
(24, 'L3', '0.57552317', '0.06992657', '0.12056305', 9),
(25, 'S1', '0.02831336', '0', '0', 10),
(26, 'S2', '0.03633917', '0', '0', 10),
(27, 'S3', '0.04514364', '0', '0', 10),
(28, 'S4', '0.05489450', '0', '0', 10),
(29, 'S5', '0.06582041', '0', '0', 10),
(30, 'S6', '0.07824474', '0', '0', 10),
(31, 'S7', '0.09264652', '0', '0', 10),
(32, 'S8', '0.10978058', '0', '0', 10),
(33, 'S9', '0.13094331', '0', '0', 10),
(34, 'S10', '0.15867118', '0', '0', 10),
(35, 'S11', '0.19920252', '0', '0', 10);

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
  `ket_a_i` varchar(255) NOT NULL,
  `entitas` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `indikator_ayam`
--

INSERT INTO `indikator_ayam` (`id_a_i`, `nama_kriteria`, `kode_a_i`, `ket_a_i`, `entitas`) VALUES
(1, 'Lingkungan', 'RL1', 'Rata-rata konsumsi air yang dihabiskan untuk 1 ekor ayam', 1),
(2, 'Lingkungan', 'RL2', 'Rata-rata konsumsi listrik yang dihabiskan untuk 1 ekor ayam', 1),
(3, 'Sosial', 'RS1', 'Kualitas DOC yang diberikan perusahaan inti kepada peternak plasma', 1),
(4, 'Sosial', 'RS2', 'Kulitas obat dan vaksin yang diberikan perusahaan inti kepada peternak plasma', 1),
(5, 'Sosial', 'RS3', 'Jadwal pengiriman DOC', 1),
(6, 'Sosial', 'RS4', 'Frekuensi bimbingan teknis yang diberikan perusahaan inti kepada peternak plasma\r\ndalam 1 bulan', 1),
(7, 'Sosial', 'RS5', 'Frekuensi pelayanan dan bimbingan materi yang diberikan perusahaan inti kepada\r\npeternak plasma dalam 1 bulan', 1),
(8, 'Sosial', 'RS6', 'Kesesuaian waktu panen dengan kontrak perjanjian', 1),
(9, 'Sosial', 'RS7', 'Kecepatan respon perusahaan inti terhadap keluhan peternak plasma', 1),
(10, 'Sosial', 'RS8', 'Kesesuaian harga jual dengan kontrak perjanjian', 1),
(11, 'Sosial', 'RS9', 'Kesesuaian pemberian bonus dengan kontrak perjanjian', 1),
(12, 'Sosial', 'RS10', 'Kesesuaian waktu pembayaran panen dengan kontrak perjanjian', 1),
(13, 'Sosial', 'RS11', 'Pertanggungjawaban saat gagal panen', 1),
(14, 'Ekonomi', 'RE1', 'Rata-rata pendapatan yang diperoleh peternak plasma untuk 1 ekor ayam dalam 1 kali\r\nmasa panen', 1),
(15, 'Ekonomi', 'RE2', 'Rata-rata harga DOC untuk 1 ekor', 1),
(16, 'Ekonomi', 'RE3', 'Rata-rata harga pakan untuk 1 ekor ayam dalam 1 kali masa panen', 1),
(17, 'Ekonomi', 'RE4', 'Rata-rata harga obat & vaksin untuk 1 ekor ayam dalam 1 kali masa panen', 1),
(19, 'Lingkungan', 'PL1', 'Konsumsi Air', 2),
(20, 'Lingkungan', 'PL2', 'Konsumsi Listrik', 2),
(21, 'Lingkungan', 'PL3', 'Manajemen Limbah', 2),
(22, 'Sosial', 'PS1', 'Perbandingan pekerja pria dan wanita', 2),
(23, 'Sosial', 'PS2', 'Sertifikasi Halal', 2),
(24, 'Ekonomi', 'PE1', 'Laba', 2),
(25, 'Ekonomi', 'PE2', 'Biaya tenaga kerja', 2),
(26, 'Ekonomi', 'PE3', 'Biaya administrasi/pajak', 2),
(27, 'Ekonomi', 'PE4', 'Biaya pengiriman', 2);

-- --------------------------------------------------------

--
-- Table structure for table `indikator_sapi`
--

CREATE TABLE `indikator_sapi` (
  `id_s_i` int(11) NOT NULL,
  `nama_kriteria` varchar(100) NOT NULL,
  `kode_s_i` varchar(100) NOT NULL,
  `ket_s_i` varchar(255) NOT NULL,
  `entitas` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `indikator_sapi`
--

INSERT INTO `indikator_sapi` (`id_s_i`, `nama_kriteria`, `kode_s_i`, `ket_s_i`, `entitas`) VALUES
(1, 'Lingkungan', 'RL1', 'Rata-rata konsumsi air yang dihabiskan untuk 1 ekor ayam', 2),
(2, 'Lingkungan', 'RL2', 'Rata-rata konsumsi listrik yang dihabiskan untuk 1 ekor ayam', 2),
(3, 'Lingkungan', 'RL3', 'Rata-rata konsumsi listrik yang dihabiskan untuk 1 ekor sapi', 2),
(4, 'Sosial', 'RS1', 'Kualitas DOC yang diberikan perusahaan inti kepada peternak plasma', 2),
(5, 'Sosial', 'RS2', 'Kulitas obat dan vaksin yang diberikan perusahaan inti kepada peternak plasma', 2),
(6, 'Sosial', 'RS3', 'Jadwal pengiriman DOC', 2),
(7, 'Sosial', 'RS4', 'Frekuensi bimbingan teknis yang diberikan perusahaan inti kepada peternak plasma\r\ndalam 1 bulan', 2),
(8, 'Ekonomi', 'RE1', 'Rata-rata pendapatan yang diperoleh peternak plasma untuk 1 ekor ayam dalam 1 kali\r\nmasa panen', 2),
(9, 'Ekonomi', 'RE2', 'Rata-rata harga DOC untuk 1 ekor', 2),
(10, 'Lingkungan', 'PL1', 'Konsumsi Air', 1),
(11, 'Lingkungan', 'PL2', 'Konsumsi Listrik', 1),
(12, 'Lingkungan', 'PL3', 'Manajemen Limbah', 1),
(13, 'Sosial', 'PS1', 'Perbandingan pekerja pria dan wanita', 1),
(14, 'Sosial', 'PS2', 'Sertifikasi Halal', 1),
(15, 'Sosial', 'PS3', 'Perbandingan pekerja pria dan wanita', 1),
(16, 'Sosial', 'PS4', 'Sertifikasi Halal', 1),
(17, 'Ekonomi', 'PE1', 'Laba', 1),
(18, 'Ekonomi', 'PE2', 'Biaya tenaga kerja', 1),
(19, 'Ekonomi', 'PE3', 'Biaya administrasi/pajak', 1),
(20, 'Ekonomi', 'PE4', 'Biaya pengiriman', 1);

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
-- Table structure for table `kriteria_sapi`
--

CREATE TABLE `kriteria_sapi` (
  `nama_kriteria` varchar(100) NOT NULL,
  `ket_kriteria` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kriteria_sapi`
--

INSERT INTO `kriteria_sapi` (`nama_kriteria`, `ket_kriteria`) VALUES
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
(1, 3, 'Kukuh', '0.33', 'RPA', 'Peternak', 2),
(2, 3, 'Dayyan', '0.33', 'RPA', 'Peternak', 2),
(3, 3, 'Fauzan', '0.33', 'RPA', 'Peternak', 2),
(4, 3, 'Kukuh', '0.33', 'Ekonomi', 'Lingkungan', 3),
(5, 3, 'Dayyan', '0.33', 'Ekonomi', 'Lingkungan', 3),
(6, 3, 'Fauzan', '0.33', 'Ekonomi', 'Lingkungan', 3),
(7, 3, 'Kukuh', '0.33', 'Ekonomi', 'Sosial', 3),
(8, 3, 'Dayyan', '0.33', 'Ekonomi', 'Sosial', 3),
(9, 3, 'Fauzan', '0.33', 'Ekonomi', 'Sosial', 3),
(10, 3, 'Kukuh', '0.33', 'Lingkungan', 'Sosial', 3),
(11, 3, 'Dayyan', '0.33', 'Lingkungan', 'Sosial', 3),
(12, 3, 'Fauzan', '0.33', 'Lingkungan', 'Sosial', 3),
(13, 3, 'Kukuh', '0.33', 'RE1', 'RE2', 4),
(14, 3, 'Dayyan', '0.33', 'RE1', 'RE2', 4),
(15, 3, 'Fauzan', '0.33', 'RE1', 'RE2', 4),
(16, 3, 'Kukuh', '0.33', 'RE1', 'RE3', 4),
(17, 3, 'Dayyan', '0.33', 'RE1', 'RE3', 4),
(18, 3, 'Fauzan', '0.33', 'RE1', 'RE3', 4),
(19, 3, 'Kukuh', '0.33', 'RE1', 'RE4', 4),
(20, 3, 'Dayyan', '0.33', 'RE1', 'RE4', 4),
(21, 3, 'Fauzan', '0.33', 'RE1', 'RE4', 4),
(22, 3, 'Kukuh', '0.33', 'RE2', 'RE3', 4),
(23, 3, 'Dayyan', '0.33', 'RE2', 'RE3', 4),
(24, 3, 'Fauzan', '0.33', 'RE2', 'RE3', 4),
(25, 3, 'Kukuh', '0.33', 'RE2', 'RE4', 4),
(26, 3, 'Dayyan', '0.33', 'RE2', 'RE4', 4),
(27, 3, 'Fauzan', '0.33', 'RE2', 'RE4', 4),
(28, 3, 'Kukuh', '0.33', 'RE3', 'RE4', 4),
(29, 3, 'Dayyan', '0.33', 'RE3', 'RE4', 4),
(30, 3, 'Fauzan', '0.33', 'RE3', 'RE4', 4),
(31, 3, 'Kukuh', '0.33', 'RL1', 'RL2', 5),
(32, 3, 'Dayyan', '0.33', 'RL1', 'RL2', 5),
(33, 3, 'Fauzan', '0.33', 'RL1', 'RL2', 5),
(34, 3, 'Kukuh', '0.33', 'RL1', 'RL3', 5),
(35, 3, 'Dayyan', '0.33', 'RL1', 'RL3', 5),
(36, 3, 'Fauzan', '0.33', 'RL1', 'RL3', 5),
(37, 3, 'Kukuh', '0.33', 'RL2', 'RL3', 5),
(38, 3, 'Dayyan', '0.33', 'RL2', 'RL3', 5),
(39, 3, 'Fauzan', '0.33', 'RL2', 'RL3', 5),
(40, 3, 'Kukuh', '0.33', 'RS1', 'RS2', 6),
(41, 3, 'Dayyan', '0.33', 'RS1', 'RS2', 6),
(42, 3, 'Fauzan', '0.33', 'RS1', 'RS2', 6),
(43, 3, 'Kukuh', '0.33', 'Ekonomi', 'Lingkungan', 7),
(44, 3, 'Dayyan', '0.33', 'Ekonomi', 'Lingkungan', 7),
(45, 3, 'Fauzan', '0.33', 'Ekonomi', 'Lingkungan', 7),
(46, 3, 'Kukuh', '0.33', 'Ekonomi', 'Sosial', 7),
(47, 3, 'Dayyan', '0.33', 'Ekonomi', 'Sosial', 7),
(48, 3, 'Fauzan', '0.33', 'Ekonomi', 'Sosial', 7),
(49, 3, 'Kukuh', '0.33', 'Lingkungan', 'Sosial', 7),
(50, 3, 'Dayyan', '0.33', 'Lingkungan', 'Sosial', 7),
(51, 3, 'Fauzan', '0.33', 'Lingkungan', 'Sosial', 7),
(52, 3, 'Kukuh', '0.33', 'E1', 'E2', 8),
(53, 3, 'Dayyan', '0.33', 'E1', 'E2', 8),
(54, 3, 'Fauzan', '0.33', 'E1', 'E2', 8),
(55, 3, 'Kukuh', '0.33', 'E1', 'E3', 8),
(56, 3, 'Dayyan', '0.33', 'E1', 'E3', 8),
(57, 3, 'Fauzan', '0.33', 'E1', 'E3', 8),
(58, 3, 'Kukuh', '0.33', 'E1', 'E4', 8),
(59, 3, 'Dayyan', '0.33', 'E1', 'E4', 8),
(60, 3, 'Fauzan', '0.33', 'E1', 'E4', 8),
(61, 3, 'Kukuh', '0.33', 'E2', 'E3', 8),
(62, 3, 'Dayyan', '0.33', 'E2', 'E3', 8),
(63, 3, 'Fauzan', '0.33', 'E2', 'E3', 8),
(64, 3, 'Kukuh', '0.33', 'E2', 'E4', 8),
(65, 3, 'Dayyan', '0.33', 'E2', 'E4', 8),
(66, 3, 'Fauzan', '0.33', 'E2', 'E4', 8),
(67, 3, 'Kukuh', '0.33', 'E3', 'E4', 8),
(68, 3, 'Dayyan', '0.33', 'E3', 'E4', 8),
(69, 3, 'Fauzan', '0.33', 'E3', 'E4', 8),
(70, 3, 'Kukuh', '0.33', 'L1', 'L2', 9),
(71, 3, 'Dayyan', '0.33', 'L1', 'L2', 9),
(72, 3, 'Fauzan', '0.33', 'L1', 'L2', 9),
(73, 3, 'Kukuh', '0.33', 'L1', 'L3', 9),
(74, 3, 'Dayyan', '0.33', 'L1', 'L3', 9),
(75, 3, 'Fauzan', '0.33', 'L1', 'L3', 9),
(76, 3, 'Kukuh', '0.33', 'L2', 'L3', 9),
(77, 3, 'Dayyan', '0.33', 'L2', 'L3', 9),
(78, 3, 'Fauzan', '0.33', 'L2', 'L3', 9),
(79, 3, 'Kukuh', '0.33', 'S1', 'S2', 10),
(80, 3, 'Dayyan', '0.33', 'S1', 'S2', 10),
(81, 3, 'Fauzan', '0.33', 'S1', 'S2', 10),
(82, 3, 'Kukuh', '0.33', 'S1', 'S3', 10),
(83, 3, 'Dayyan', '0.33', 'S1', 'S3', 10),
(84, 3, 'Fauzan', '0.33', 'S1', 'S3', 10),
(85, 3, 'Kukuh', '0.33', 'S1', 'S4', 10),
(86, 3, 'Dayyan', '0.33', 'S1', 'S4', 10),
(87, 3, 'Fauzan', '0.33', 'S1', 'S4', 10),
(88, 3, 'Kukuh', '0.33', 'S1', 'S5', 10),
(89, 3, 'Dayyan', '0.33', 'S1', 'S5', 10),
(90, 3, 'Fauzan', '0.33', 'S1', 'S5', 10),
(91, 3, 'Kukuh', '0.33', 'S1', 'S6', 10),
(92, 3, 'Dayyan', '0.33', 'S1', 'S6', 10),
(93, 3, 'Fauzan', '0.33', 'S1', 'S6', 10),
(94, 3, 'Kukuh', '0.33', 'S1', 'S7', 10),
(95, 3, 'Dayyan', '0.33', 'S1', 'S7', 10),
(96, 3, 'Fauzan', '0.33', 'S1', 'S7', 10),
(97, 3, 'Kukuh', '0.33', 'S1', 'S8', 10),
(98, 3, 'Dayyan', '0.33', 'S1', 'S8', 10),
(99, 3, 'Fauzan', '0.33', 'S1', 'S8', 10),
(100, 3, 'Kukuh', '0.33', 'S1', 'S9', 10),
(101, 3, 'Dayyan', '0.33', 'S1', 'S9', 10),
(102, 3, 'Fauzan', '0.33', 'S1', 'S9', 10),
(103, 3, 'Kukuh', '0.33', 'S1', 'S10', 10),
(104, 3, 'Dayyan', '0.33', 'S1', 'S10', 10),
(105, 3, 'Fauzan', '0.33', 'S1', 'S10', 10),
(106, 3, 'Kukuh', '0.33', 'S1', 'S11', 10),
(107, 3, 'Dayyan', '0.33', 'S1', 'S11', 10),
(108, 3, 'Fauzan', '0.33', 'S1', 'S11', 10),
(109, 3, 'Kukuh', '0.33', 'S2', 'S3', 10),
(110, 3, 'Dayyan', '0.33', 'S2', 'S3', 10),
(111, 3, 'Fauzan', '0.33', 'S2', 'S3', 10),
(112, 3, 'Kukuh', '0.33', 'S2', 'S4', 10),
(113, 3, 'Dayyan', '0.33', 'S2', 'S4', 10),
(114, 3, 'Fauzan', '0.33', 'S2', 'S4', 10),
(115, 3, 'Kukuh', '0.33', 'S2', 'S5', 10),
(116, 3, 'Dayyan', '0.33', 'S2', 'S5', 10),
(117, 3, 'Fauzan', '0.33', 'S2', 'S5', 10),
(118, 3, 'Kukuh', '0.33', 'S2', 'S6', 10),
(119, 3, 'Dayyan', '0.33', 'S2', 'S6', 10),
(120, 3, 'Fauzan', '0.33', 'S2', 'S6', 10),
(121, 3, 'Kukuh', '0.33', 'S2', 'S7', 10),
(122, 3, 'Dayyan', '0.33', 'S2', 'S7', 10),
(123, 3, 'Fauzan', '0.33', 'S2', 'S7', 10),
(124, 3, 'Kukuh', '0.33', 'S2', 'S8', 10),
(125, 3, 'Dayyan', '0.33', 'S2', 'S8', 10),
(126, 3, 'Fauzan', '0.33', 'S2', 'S8', 10),
(127, 3, 'Kukuh', '0.33', 'S2', 'S9', 10),
(128, 3, 'Dayyan', '0.33', 'S2', 'S9', 10),
(129, 3, 'Fauzan', '0.33', 'S2', 'S9', 10),
(130, 3, 'Kukuh', '0.33', 'S2', 'S10', 10),
(131, 3, 'Dayyan', '0.33', 'S2', 'S10', 10),
(132, 3, 'Fauzan', '0.33', 'S2', 'S10', 10),
(133, 3, 'Kukuh', '0.33', 'S2', 'S11', 10),
(134, 3, 'Dayyan', '0.33', 'S2', 'S11', 10),
(135, 3, 'Fauzan', '0.33', 'S2', 'S11', 10),
(136, 3, 'Kukuh', '0.33', 'S3', 'S4', 10),
(137, 3, 'Dayyan', '0.33', 'S3', 'S4', 10),
(138, 3, 'Fauzan', '0.33', 'S3', 'S4', 10),
(139, 3, 'Kukuh', '0.33', 'S3', 'S5', 10),
(140, 3, 'Dayyan', '0.33', 'S3', 'S5', 10),
(141, 3, 'Fauzan', '0.33', 'S3', 'S5', 10),
(142, 3, 'Kukuh', '0.33', 'S3', 'S6', 10),
(143, 3, 'Dayyan', '0.33', 'S3', 'S6', 10),
(144, 3, 'Fauzan', '0.33', 'S3', 'S6', 10),
(145, 3, 'Kukuh', '0.33', 'S3', 'S7', 10),
(146, 3, 'Dayyan', '0.33', 'S3', 'S7', 10),
(147, 3, 'Fauzan', '0.33', 'S3', 'S7', 10),
(148, 3, 'Kukuh', '0.33', 'S3', 'S8', 10),
(149, 3, 'Dayyan', '0.33', 'S3', 'S8', 10),
(150, 3, 'Fauzan', '0.33', 'S3', 'S8', 10),
(151, 3, 'Kukuh', '0.33', 'S3', 'S9', 10),
(152, 3, 'Dayyan', '0.33', 'S3', 'S9', 10),
(153, 3, 'Fauzan', '0.33', 'S3', 'S9', 10),
(154, 3, 'Kukuh', '0.33', 'S3', 'S10', 10),
(155, 3, 'Dayyan', '0.33', 'S3', 'S10', 10),
(156, 3, 'Fauzan', '0.33', 'S3', 'S10', 10),
(157, 3, 'Kukuh', '0.33', 'S3', 'S11', 10),
(158, 3, 'Dayyan', '0.33', 'S3', 'S11', 10),
(159, 3, 'Fauzan', '0.33', 'S3', 'S11', 10),
(160, 3, 'Kukuh', '0.33', 'S4', 'S5', 10),
(161, 3, 'Dayyan', '0.33', 'S4', 'S5', 10),
(162, 3, 'Fauzan', '0.33', 'S4', 'S5', 10),
(163, 3, 'Kukuh', '0.33', 'S4', 'S6', 10),
(164, 3, 'Dayyan', '0.33', 'S4', 'S6', 10),
(165, 3, 'Fauzan', '0.33', 'S4', 'S6', 10),
(166, 3, 'Kukuh', '0.33', 'S4', 'S7', 10),
(167, 3, 'Dayyan', '0.33', 'S4', 'S7', 10),
(168, 3, 'Fauzan', '0.33', 'S4', 'S7', 10),
(169, 3, 'Kukuh', '0.33', 'S4', 'S8', 10),
(170, 3, 'Dayyan', '0.33', 'S4', 'S8', 10),
(171, 3, 'Fauzan', '0.33', 'S4', 'S8', 10),
(172, 3, 'Kukuh', '0.33', 'S4', 'S9', 10),
(173, 3, 'Dayyan', '0.33', 'S4', 'S9', 10),
(174, 3, 'Fauzan', '0.33', 'S4', 'S9', 10),
(175, 3, 'Kukuh', '0.33', 'S4', 'S10', 10),
(176, 3, 'Dayyan', '0.33', 'S4', 'S10', 10),
(177, 3, 'Fauzan', '0.33', 'S4', 'S10', 10),
(178, 3, 'Kukuh', '0.33', 'S4', 'S11', 10),
(179, 3, 'Dayyan', '0.33', 'S4', 'S11', 10),
(180, 3, 'Fauzan', '0.33', 'S4', 'S11', 10),
(181, 3, 'Kukuh', '0.33', 'S5', 'S6', 10),
(182, 3, 'Dayyan', '0.33', 'S5', 'S6', 10),
(183, 3, 'Fauzan', '0.33', 'S5', 'S6', 10),
(184, 3, 'Kukuh', '0.33', 'S5', 'S7', 10),
(185, 3, 'Dayyan', '0.33', 'S5', 'S7', 10),
(186, 3, 'Fauzan', '0.33', 'S5', 'S7', 10),
(187, 3, 'Kukuh', '0.33', 'S5', 'S8', 10),
(188, 3, 'Dayyan', '0.33', 'S5', 'S8', 10),
(189, 3, 'Fauzan', '0.33', 'S5', 'S8', 10),
(190, 3, 'Kukuh', '0.33', 'S5', 'S9', 10),
(191, 3, 'Dayyan', '0.33', 'S5', 'S9', 10),
(192, 3, 'Fauzan', '0.33', 'S5', 'S9', 10),
(193, 3, 'Kukuh', '0.33', 'S5', 'S10', 10),
(194, 3, 'Dayyan', '0.33', 'S5', 'S10', 10),
(195, 3, 'Fauzan', '0.33', 'S5', 'S10', 10),
(196, 3, 'Kukuh', '0.33', 'S5', 'S11', 10),
(197, 3, 'Dayyan', '0.33', 'S5', 'S11', 10),
(198, 3, 'Fauzan', '0.33', 'S5', 'S11', 10),
(199, 3, 'Kukuh', '0.33', 'S6', 'S7', 10),
(200, 3, 'Dayyan', '0.33', 'S6', 'S7', 10),
(201, 3, 'Fauzan', '0.33', 'S6', 'S7', 10),
(202, 3, 'Kukuh', '0.33', 'S6', 'S8', 10),
(203, 3, 'Dayyan', '0.33', 'S6', 'S8', 10),
(204, 3, 'Fauzan', '0.33', 'S6', 'S8', 10),
(205, 3, 'Kukuh', '0.33', 'S6', 'S9', 10),
(206, 3, 'Dayyan', '0.33', 'S6', 'S9', 10),
(207, 3, 'Fauzan', '0.33', 'S6', 'S9', 10),
(208, 3, 'Kukuh', '0.33', 'S6', 'S10', 10),
(209, 3, 'Dayyan', '0.33', 'S6', 'S10', 10),
(210, 3, 'Fauzan', '0.33', 'S6', 'S10', 10),
(211, 3, 'Kukuh', '0.33', 'S6', 'S11', 10),
(212, 3, 'Dayyan', '0.33', 'S6', 'S11', 10),
(213, 3, 'Fauzan', '0.33', 'S6', 'S11', 10),
(214, 3, 'Kukuh', '0.33', 'S7', 'S8', 10),
(215, 3, 'Dayyan', '0.33', 'S7', 'S8', 10),
(216, 3, 'Fauzan', '0.33', 'S7', 'S8', 10),
(217, 3, 'Kukuh', '0.33', 'S7', 'S9', 10),
(218, 3, 'Dayyan', '0.33', 'S7', 'S9', 10),
(219, 3, 'Fauzan', '0.33', 'S7', 'S9', 10),
(220, 3, 'Kukuh', '0.33', 'S7', 'S10', 10),
(221, 3, 'Dayyan', '0.33', 'S7', 'S10', 10),
(222, 3, 'Fauzan', '0.33', 'S7', 'S10', 10),
(223, 3, 'Kukuh', '0.33', 'S7', 'S11', 10),
(224, 3, 'Dayyan', '0.33', 'S7', 'S11', 10),
(225, 3, 'Fauzan', '0.33', 'S7', 'S11', 10),
(226, 3, 'Kukuh', '0.33', 'S8', 'S9', 10),
(227, 3, 'Dayyan', '0.33', 'S8', 'S9', 10),
(228, 3, 'Fauzan', '0.33', 'S8', 'S9', 10),
(229, 3, 'Kukuh', '0.33', 'S8', 'S10', 10),
(230, 3, 'Dayyan', '0.33', 'S8', 'S10', 10),
(231, 3, 'Fauzan', '0.33', 'S8', 'S10', 10),
(232, 3, 'Kukuh', '0.33', 'S8', 'S11', 10),
(233, 3, 'Dayyan', '0.33', 'S8', 'S11', 10),
(234, 3, 'Fauzan', '0.33', 'S8', 'S11', 10),
(235, 3, 'Kukuh', '0.33', 'S9', 'S10', 10),
(236, 3, 'Dayyan', '0.33', 'S9', 'S10', 10),
(237, 3, 'Fauzan', '0.33', 'S9', 'S10', 10),
(238, 3, 'Kukuh', '0.33', 'S9', 'S11', 10),
(239, 3, 'Dayyan', '0.33', 'S9', 'S11', 10),
(240, 3, 'Fauzan', '0.33', 'S9', 'S11', 10),
(241, 3, 'Kukuh', '0.33', 'S10', 'S11', 10),
(242, 3, 'Dayyan', '0.33', 'S10', 'S11', 10),
(243, 3, 'Fauzan', '0.33', 'S10', 'S11', 10);

-- --------------------------------------------------------

--
-- Table structure for table `responden_sapi`
--

CREATE TABLE `responden_sapi` (
  `id` int(11) NOT NULL,
  `id_pengisi` int(11) NOT NULL,
  `nama_responden` varchar(50) NOT NULL,
  `nilai_responden` varchar(10) NOT NULL,
  `kriteria_1` varchar(20) DEFAULT NULL,
  `kriteria_2` varchar(20) DEFAULT NULL,
  `id_section` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

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
-- Table structure for table `section_sapi`
--

CREATE TABLE `section_sapi` (
  `id` int(11) NOT NULL,
  `level0` varchar(50) DEFAULT NULL,
  `level1` varchar(50) DEFAULT NULL,
  `nama_section` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `section_sapi`
--

INSERT INTO `section_sapi` (`id`, `level0`, `level1`, `nama_section`) VALUES
(2, NULL, NULL, 'Entitas'),
(3, NULL, 'Peternak', 'Entitas-Peternak'),
(4, 'Peternak', 'Ekonomi', 'Entitas-Peternak-Ekonomi'),
(5, 'Peternak', 'Lingkungan', 'Entitas-Peternak-Lingkungan'),
(6, 'Peternak', 'Sosial', 'Entitas-Peternak-Sosial'),
(7, NULL, 'RPH', 'Entitas-RPH'),
(8, 'RPH', 'Ekonomi', 'Entitas-RPH-Ekonomi'),
(9, 'RPH', 'Lingkungan', 'Entitas-RPH-Lingkungan'),
(10, 'RPH', 'Sosial', 'Entitas-RPH-Sosial');

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
  ADD KEY `id_kriteria` (`nama_kriteria`),
  ADD KEY `entitas` (`entitas`);

--
-- Indexes for table `indikator_sapi`
--
ALTER TABLE `indikator_sapi`
  ADD PRIMARY KEY (`id_s_i`),
  ADD KEY `id_kriteria` (`nama_kriteria`),
  ADD KEY `entitas` (`entitas`);

--
-- Indexes for table `kriteria`
--
ALTER TABLE `kriteria`
  ADD PRIMARY KEY (`nama_kriteria`),
  ADD UNIQUE KEY `nama_kriteria` (`nama_kriteria`);

--
-- Indexes for table `kriteria_sapi`
--
ALTER TABLE `kriteria_sapi`
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
-- Indexes for table `responden_sapi`
--
ALTER TABLE `responden_sapi`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_section` (`id_section`),
  ADD KEY `id_pengisi` (`id_pengisi`);

--
-- Indexes for table `section`
--
ALTER TABLE `section`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `section_sapi`
--
ALTER TABLE `section_sapi`
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;
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
  MODIFY `id_a_i` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT for table `indikator_sapi`
--
ALTER TABLE `indikator_sapi`
  MODIFY `id_s_i` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=244;
--
-- AUTO_INCREMENT for table `responden_sapi`
--
ALTER TABLE `responden_sapi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=244;
--
-- AUTO_INCREMENT for table `section`
--
ALTER TABLE `section`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `section_sapi`
--
ALTER TABLE `section_sapi`
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
  ADD CONSTRAINT `indikator_ayam_ibfk_1` FOREIGN KEY (`nama_kriteria`) REFERENCES `kriteria` (`nama_kriteria`),
  ADD CONSTRAINT `indikator_ayam_ibfk_2` FOREIGN KEY (`entitas`) REFERENCES `entitas_ayam` (`id_a_e`);

--
-- Constraints for table `indikator_sapi`
--
ALTER TABLE `indikator_sapi`
  ADD CONSTRAINT `indikator_sapi_ibfk_1` FOREIGN KEY (`nama_kriteria`) REFERENCES `kriteria_sapi` (`nama_kriteria`),
  ADD CONSTRAINT `indikator_sapi_ibfk_2` FOREIGN KEY (`entitas`) REFERENCES `entitas_sapi` (`id_s_e`);

--
-- Constraints for table `responden`
--
ALTER TABLE `responden`
  ADD CONSTRAINT `responden_ibfk_1` FOREIGN KEY (`id_section`) REFERENCES `section` (`id`),
  ADD CONSTRAINT `responden_ibfk_2` FOREIGN KEY (`id_pengisi`) REFERENCES `user` (`id`);

--
-- Constraints for table `responden_sapi`
--
ALTER TABLE `responden_sapi`
  ADD CONSTRAINT `responden_sapi_ibfk_1` FOREIGN KEY (`id_section`) REFERENCES `section_sapi` (`id`),
  ADD CONSTRAINT `responden_sapi_ibfk_2` FOREIGN KEY (`id_pengisi`) REFERENCES `user` (`id`);

--
-- Constraints for table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `user_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `user_role` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
