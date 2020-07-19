-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 19, 2020 at 11:53 AM
-- Server version: 10.1.35-MariaDB
-- PHP Version: 7.2.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
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
  `id_section` int(11) NOT NULL,
  `bobot_global_indikator_dimensi` varchar(10) DEFAULT NULL,
  `bobot_global_indikator_dimensi_entitas` varchar(10) DEFAULT NULL,
  `id_pengisi` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `bobot_indikator`
--

INSERT INTO `bobot_indikator` (`id`, `kriteria`, `bobot`, `C1`, `CR`, `id_section`, `bobot_global_indikator_dimensi`, `bobot_global_indikator_dimensi_entitas`, `id_pengisi`) VALUES
(69, 'RPA', '0.32319913', '0', '0', 2, '0', '0', 2),
(70, 'Peternak', '0.67680086', '0', '0', 2, '0', '0', 2),
(71, 'Ekonomi', '0.33333333', '0', '0', 3, '0', '0', 2),
(72, 'Lingkungan', '0.33333333', '0', '0', 3, '0', '0', 2),
(73, 'Sosial', '0.33333333', '0', '0', 3, '0', '0', 2),
(74, 'PE1', '0.73632153', '0.02717234', '0.03019149', 4, '0.24544051', '0.16611434', 2),
(75, 'PE2', '0.08862255', '0.02717234', '0.03019149', 4, '0.02954085', '0.01999327', 2),
(76, 'PE3', '0.11529966', '0.02717234', '0.03019149', 4, '0.03843322', '0.02601163', 2),
(77, 'PE4', '0.05975624', '0.02717234', '0.03019149', 4, '0.01991874', '0.01348102', 2),
(78, 'PL1', '0.62813457', '0.03635585', '0.06268250', 5, '0.20937819', '0.14170733', 2),
(79, 'PL2', '0.18905125', '0.03635585', '0.06268250', 5, '0.06301708', '0.04265001', 2),
(80, 'PL3', '0.18281417', '0.03635585', '0.06268250', 5, '0.06093805', '0.04124293', 2),
(81, 'PS1', '0.11073694', '0.14882629', '0.09988341', 6, '0.03691231', '0.02498228', 2),
(82, 'PS2', '0.09381437', '0.14882629', '0.09988341', 6, '0.03127145', '0.02116455', 2),
(83, 'PS3', '0.18091111', '0.14882629', '0.09988341', 6, '0.06030370', '0.04081360', 2),
(84, 'PS4', '0.05782698', '0.14882629', '0.09988341', 6, '0.01927566', '0.01304578', 2),
(85, 'PS5', '0.12357523', '0.14882629', '0.09988341', 6, '0.04119174', '0.02787860', 2),
(86, 'PS6', '0.06610860', '0.14882629', '0.09988341', 6, '0.02203620', '0.01491412', 2),
(87, 'PS7', '0.06286107', '0.14882629', '0.09988341', 6, '0.02095369', '0.01418147', 2),
(88, 'PS8', '0.10662988', '0.14882629', '0.09988341', 6, '0.03554329', '0.02405573', 2),
(89, 'PS9', '0.08965340', '0.14882629', '0.09988341', 6, '0.02988446', '0.02022583', 2),
(90, 'PS10', '0.10788236', '0.14882629', '0.09988341', 6, '0.03596078', '0.02433829', 2),
(91, 'Ekonomi', '0.06415503', '0', '0', 7, '0', '0', 2),
(92, 'Lingkungan', '0.46465656', '0', '0', 7, '0', '0', 2),
(93, 'Sosial', '0.47118839', '0', '0', 7, '0', '0', 2),
(94, 'RE1', '0.58650395', '0.00951186', '0.01056873', 8, '0.03762718', '0.01216107', 2),
(95, 'RE2', '0.12769506', '0.00951186', '0.01056873', 8, '0.00819228', '0.00264773', 2),
(96, 'RE3', '0.12296018', '0.00951186', '0.01056873', 8, '0.00788851', '0.00254956', 2),
(97, 'RE4', '0.16284079', '0.00951186', '0.01056873', 8, '0.01044705', '0.00337648', 2),
(98, 'RL1', '0.47005761', '0.05803295', '0.10005681', 9, '0.21841535', '0.07059165', 2),
(99, 'RL2', '0.34909783', '0.05803295', '0.10005681', 9, '0.16221059', '0.05242632', 2),
(100, 'RL3', '0.18084455', '0.05803295', '0.10005681', 9, '0.08403060', '0.02715862', 2),
(101, 'RS1', '0.25484084', '0', '0', 10, '0.12007805', '0.03880912', 2),
(102, 'RS2', '0.74515915', '0', '0', 10, '0.35111034', '0.11347856', 2),
(137, 'RPA', '0.13365343', '0', '0', 2, '0', '0', 1),
(138, 'Peternak', '0.86634656', '0', '0', 2, '0', '0', 1),
(139, 'Ekonomi', '0.13251707', '0', '0', 3, '0', '0', 1),
(140, 'Lingkungan', '0.27793158', '0', '0', 3, '0', '0', 1),
(141, 'Sosial', '0.58955133', '0', '0', 3, '0', '0', 1),
(142, 'PE1', '0.05867106', '0.10524304', '0.11693672', 4, '0.00777491', '0.00673577', 1),
(143, 'PE2', '0.27256520', '0.10524304', '0.11693672', 4, '0.03611954', '0.03129204', 1),
(144, 'PE3', '0.41005498', '0.10524304', '0.11693672', 4, '0.05433928', '0.04707665', 1),
(145, 'PE4', '0.25870874', '0.10524304', '0.11693672', 4, '0.03428332', '0.02970124', 1),
(146, 'PL1', '0.09914391', '0.01625151', '0.02801985', 5, '0.02755522', '0.02387237', 1),
(147, 'PL2', '0.44411634', '0.01625151', '0.02801985', 5, '0.12343396', '0.10693658', 1),
(148, 'PL3', '0.45673973', '0.01625151', '0.02801985', 5, '0.12694239', '0.10997611', 1),
(149, 'PS1', '0.1', '0', '0', 6, '0.05895513', '0.05107557', 1),
(150, 'PS2', '0.1', '0', '0', 6, '0.05895513', '0.05107557', 1),
(151, 'PS3', '0.1', '0', '0', 6, '0.05895513', '0.05107557', 1),
(152, 'PS4', '0.1', '0', '0', 6, '0.05895513', '0.05107557', 1),
(153, 'PS5', '0.1', '0', '0', 6, '0.05895513', '0.05107557', 1),
(154, 'PS6', '0.1', '0', '0', 6, '0.05895513', '0.05107557', 1),
(155, 'PS7', '0.1', '0', '0', 6, '0.05895513', '0.05107557', 1),
(156, 'PS8', '0.1', '0', '0', 6, '0.05895513', '0.05107557', 1),
(157, 'PS9', '0.1', '0', '0', 6, '0.05895513', '0.05107557', 1),
(158, 'PS10', '0.1', '0', '0', 6, '0.05895513', '0.05107557', 1),
(159, 'Ekonomi', '0.20928493', '0', '0', 7, '0', '0', 1),
(160, 'Lingkungan', '0.34943643', '0', '0', 7, '0', '0', 1),
(161, 'Sosial', '0.44127862', '0', '0', 7, '0', '0', 1),
(162, 'RE1', '0.12679060', '0.04523159', '0.05025732', 8, '0.02653536', '0.00354654', 1),
(163, 'RE2', '0.18401027', '0.04523159', '0.05025732', 8, '0.03851057', '0.00514707', 1),
(164, 'RE3', '0.31973261', '0.04523159', '0.05025732', 8, '0.06691522', '0.00894344', 1),
(165, 'RE4', '0.36946650', '0.04523159', '0.05025732', 8, '0.07732377', '0.01033458', 1),
(166, 'RL1', '0.20534017', '0.03127574', '0.05392369', 9, '0.07175333', '0.00959008', 1),
(167, 'RL2', '0.27760419', '0.03127574', '0.05392369', 9, '0.09700501', '0.01296505', 1),
(168, 'RL3', '0.51705563', '0.03127574', '0.05392369', 9, '0.18067807', '0.02414824', 1),
(169, 'RS1', '0.17091935', '0', '0', 10, '0.07542305', '0.01008055', 1),
(170, 'RS2', '0.82908064', '0', '0', 10, '0.36585556', '0.04889785', 1);

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
-- Table structure for table `hasil_skala_ayam`
--

CREATE TABLE `hasil_skala_ayam` (
  `id` int(11) NOT NULL,
  `entitas` varchar(10) NOT NULL,
  `indikator` varchar(10) NOT NULL,
  `rata_rata` varchar(5) NOT NULL,
  `nilai_konversi` varchar(5) NOT NULL,
  `id_pengisi` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hasil_skala_ayam`
--

INSERT INTO `hasil_skala_ayam` (`id`, `entitas`, `indikator`, `rata_rata`, `nilai_konversi`, `id_pengisi`) VALUES
(53, 'RPA', 'RL1', '3.25', '65', 2),
(54, 'RPA', 'RL2', '4.5', '90', 2),
(55, 'RPA', 'RL3', '3.5', '70', 2),
(56, 'RPA', 'RS1', '1.5', '30', 2),
(57, 'RPA', 'RS2', '3.25', '65', 2),
(58, 'RPA', 'RE1', '3.25', '65', 2),
(59, 'RPA', 'RE2', '3.75', '75', 2),
(60, 'RPA', 'RE3', '2.75', '55', 2),
(61, 'RPA', 'RE4', '2.75', '55', 2),
(62, 'Peternak', 'PL1', '4', '80', 2),
(63, 'Peternak', 'PL2', '2.75', '55', 2),
(64, 'Peternak', 'PS1', '2.5', '50', 2),
(65, 'Peternak', 'PS2', '2.75', '55', 2),
(66, 'Peternak', 'PS3', '3.75', '75', 2),
(67, 'Peternak', 'PS4', '4.5', '90', 2),
(68, 'Peternak', 'PS5', '3.5', '70', 2),
(69, 'Peternak', 'PS6', '3.25', '65', 2),
(70, 'Peternak', 'PS7', '2.75', '55', 2),
(71, 'Peternak', 'PS8', '3.25', '65', 2),
(72, 'Peternak', 'PS9', '2.75', '55', 2),
(73, 'Peternak', 'PS10', '3', '60', 2),
(74, 'Peternak', 'PE1', '3', '60', 2),
(75, 'Peternak', 'PE2', '2.75', '55', 2),
(76, 'Peternak', 'PE3', '2.25', '45', 2),
(77, 'Peternak', 'PE4', '3', '60', 2),
(78, 'Peternak', 'PL3', '4', '80', 2);

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
(1, 'Lingkungan', 'PL1', 'Rata-rata konsumsi air yang dihabiskan untuk 1 ekor Ayam', 2),
(2, 'Lingkungan', 'PL2', 'Rata-rata konsumsi listrik yang dihabiskan untuk 1 ekor ayam', 2),
(3, 'Sosial', 'PS1', 'Kualitas DOC yang diberikan perusahaan inti kepada peternak plasma', 2),
(4, 'Sosial', 'PS2', 'Kulitas obat dan vaksin yang diberikan perusahaan inti kepada peternak plasma', 2),
(5, 'Sosial', 'PS3', 'Jadwal pengiriman DOC', 2),
(6, 'Sosial', 'PS4', 'Frekuensi bimbingan teknis yang diberikan perusahaan inti kepada peternak plasma\r\ndalam 1 bulan', 2),
(7, 'Sosial', 'PS5', 'Frekuensi pelayanan dan bimbingan materi yang diberikan perusahaan inti kepada\r\npeternak plasma dalam 1 bulan', 2),
(8, 'Sosial', 'PS6', 'Kesesuaian waktu panen dengan kontrak perjanjian', 2),
(9, 'Sosial', 'PS7', 'Kecepatan respon perusahaan inti terhadap keluhan peternak plasma', 2),
(10, 'Sosial', 'PS8', 'Kesesuaian harga jual dengan kontrak perjanjian', 2),
(11, 'Sosial', 'PS9', 'Kesesuaian pemberian bonus dengan kontrak perjanjian', 2),
(12, 'Sosial', 'PS10', 'Kesesuaian waktu pembayaran panen dengan kontrak perjanjian', 2),
(14, 'Ekonomi', 'PE1', 'Rata-rata pendapatan yang diperoleh peternak plasma untuk 1 ekor ayam dalam 1 kali\r\nmasa panen', 2),
(15, 'Ekonomi', 'PE2', 'Rata-rata harga DOC untuk 1 ekor', 2),
(16, 'Ekonomi', 'PE3', 'Rata-rata harga pakan untuk 1 ekor ayam dalam 1 kali masa panen', 2),
(17, 'Ekonomi', 'PE4', 'Rata-rata harga obat & vaksin untuk 1 ekor ayam dalam 1 kali masa panen', 2),
(19, 'Lingkungan', 'RL1', 'Konsumsi Air', 1),
(20, 'Lingkungan', 'RL2', 'Konsumsi Listrik Per Bulan', 1),
(21, 'Lingkungan', 'RL3', 'Manajemen Limbah', 1),
(22, 'Sosial', 'RS1', 'Perbandingan pekerja pria dan wanita', 1),
(23, 'Sosial', 'RS2', 'Sertifikasi Halal', 1),
(24, 'Ekonomi', 'RE1', 'Laba', 1),
(25, 'Ekonomi', 'RE2', 'Biaya tenaga kerja', 1),
(26, 'Ekonomi', 'RE3', 'Biaya administrasi/pajak', 1),
(27, 'Ekonomi', 'RE4', 'Biaya pengiriman', 1),
(28, 'Lingkungan', 'PL3', 'Pengelolaan Limbah', 2);

-- --------------------------------------------------------

--
-- Table structure for table `indikator_sapi`
--

CREATE TABLE `indikator_sapi` (
  `id_s_i` int(11) NOT NULL,
  `nama_kriteria` varchar(100) NOT NULL,
  `kode_s_i` varchar(100) NOT NULL,
  `ket_s_i` varchar(255) NOT NULL,
  `entitas` int(11) NOT NULL,
  `pilihan_skala_1` varchar(300) DEFAULT NULL,
  `pilihan_skala_2` varchar(300) DEFAULT NULL,
  `pilihan_skala_3` varchar(300) DEFAULT NULL,
  `pilihan_skala_4` varchar(300) DEFAULT NULL,
  `pilihan_skala_5` varchar(300) DEFAULT NULL,
  `pilihan_skala_6` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `indikator_sapi`
--

INSERT INTO `indikator_sapi` (`id_s_i`, `nama_kriteria`, `kode_s_i`, `ket_s_i`, `entitas`, `pilihan_skala_1`, `pilihan_skala_2`, `pilihan_skala_3`, `pilihan_skala_4`, `pilihan_skala_5`, `pilihan_skala_6`) VALUES
(1, 'Lingkungan', 'RL1', 'Rata-rata konsumsi air yang dihabiskan untuk 1 ekor ayam', 2, '', '', '', '', '', ''),
(2, 'Lingkungan', 'RL2', 'Rata-rata konsumsi listrik yang dihabiskan untuk 1 ekor ayam', 2, '', 'tes2', '', '', 'tesss', ''),
(3, 'Lingkungan', 'RL3', 'Rata-rata konsumsi listrik yang dihabiskan untuk 1 ekor sapi', 2, '', '', '', '', '', ''),
(4, 'Sosial', 'RS1', 'Kualitas DOC yang diberikan perusahaan inti kepada peternak plasma', 2, '', '', '', '', '', ''),
(5, 'Sosial', 'RS2', 'Kulitas obat dan vaksin yang diberikan perusahaan inti kepada peternak plasma', 2, '', '', '', '', '', ''),
(6, 'Sosial', 'RS3', 'Jadwal pengiriman DOC', 2, '', '', '', '', '', ''),
(7, 'Sosial', 'RS4', 'Frekuensi bimbingan teknis yang diberikan perusahaan inti kepada peternak plasma\r\ndalam 1 bulan', 2, '', '', '', '', '', ''),
(8, 'Ekonomi', 'RE1', 'Rata-rata pendapatan yang diperoleh peternak plasma untuk 1 ekor ayam dalam 1 kali\r\nmasa panen', 2, '', '', '', '', '', ''),
(9, 'Ekonomi', 'RE2', 'Rata-rata harga DOC untuk 1 ekor', 2, '', '', '', '', '', ''),
(10, 'Lingkungan', 'PL1', 'Konsumsi Air', 1, '', '', '', '', '', ''),
(11, 'Lingkungan', 'PL2', 'Konsumsi Listrik', 1, '', '', '', '', '', ''),
(12, 'Lingkungan', 'PL3', 'Manajemen Limbah', 1, '', '', '', '', '', ''),
(13, 'Sosial', 'PS1', 'Perbandingan pekerja pria dan wanita', 1, '', '', '', '', '', ''),
(14, 'Sosial', 'PS2', 'Sertifikasi Halal', 1, '', '', '', '', '', ''),
(15, 'Sosial', 'PS3', 'Perbandingan pekerja pria dan wanita', 1, '', '', '', '', '', ''),
(16, 'Sosial', 'PS4', 'Sertifikasi Halal', 1, '', '', '', '', '', ''),
(17, 'Ekonomi', 'PE1', 'Laba', 1, 'Rp 17.163.215,1 - Rp 27.065.497,96', 'Rp 27.065.487,97 - Rp 36.967.760,84', 'Rp 36.967.760,85 - Rp 46.870.033,71', 'Rp 46.870.033,72 - Rp 56.772.306,59', 'Rp 56.772.306,6 - Rp 66.674579,46', '> Rp 66.674.579,47'),
(18, 'Ekonomi', 'PE2', 'Biaya tenaga kerja', 1, '100%', '80% - 99%', '60% - 79%', '40% - 59%', '20% - 39%', '0 - 19%'),
(19, 'Ekonomi', 'PE3', 'Biaya administrasi/pajak', 1, '', '', '', '', '', ''),
(20, 'Ekonomi', 'PE4', 'Biaya pengiriman', 1, '', '', '', '', '', '');

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
-- Table structure for table `opsi_skala_ayam`
--

CREATE TABLE `opsi_skala_ayam` (
  `id` int(11) NOT NULL,
  `keterangan` varchar(50) NOT NULL,
  `nilai_skala` varchar(1) NOT NULL,
  `deskripsi_skala` varchar(100) NOT NULL,
  `id_indikator` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `opsi_skala_ayam`
--

INSERT INTO `opsi_skala_ayam` (`id`, `keterangan`, `nilai_skala`, `deskripsi_skala`, `id_indikator`) VALUES
(1, 'Sangat Buruk', '1', 'X > Rp. 526.30', 20),
(2, 'Buruk', '2', 'Rp.355.63 < X < Rp.526.30', 20),
(3, 'Cukup', '3', 'Rp.184.96 < X < Rp.355.83', 20),
(4, 'Baik', '4', 'Rp.14.29 < X < Rp.184.96', 20),
(5, 'Sangat Baik', '5', 'X > Rp.14.29', 20),
(6, 'Sangat Tinggi', '1', '> 157.7905 m3', 1),
(7, 'Tinggi', '2', '154.6990 m3 < X < 157.7905 m3', 1),
(8, 'Cukup', '3', '151.6015 m3 < X < 154.6960 m3', 1),
(9, 'Rendah', '4', '148.5070 m3 < X < 151.6015 m3', 1),
(10, 'Sangat Rendah', '5', 'X &lt; 148.5070 m3', 1);

-- --------------------------------------------------------

--
-- Table structure for table `opsi_skala_sapi`
--

CREATE TABLE `opsi_skala_sapi` (
  `id` int(11) NOT NULL,
  `pertanyaan` varchar(300) NOT NULL,
  `entitas` int(11) NOT NULL,
  `kode` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `opsi_skala_sapi`
--

INSERT INTO `opsi_skala_sapi` (`id`, `pertanyaan`, `entitas`, `kode`) VALUES
(1, 'Populasi Sapi Potong', 1, 'B6'),
(2, 'Rata-rata harga jual sapi', 1, 'B7'),
(3, 'Jumlah RTP', 1, 'B8'),
(4, 'Jumlah peternakan sapi potong besar', 1, 'B9'),
(5, 'Kapasitas Potong RPH', 1, 'B10'),
(6, 'Konsumsi daging sapi per kapita', 1, 'B11'),
(7, 'Jumlah Penduduk', 1, 'B12'),
(8, 'Rata-rata Kg daging per ekor', 1, 'B13'),
(9, 'Jumlah sapi potong yang diasuransikan', 1, 'B14'),
(10, 'Jumlah peternak', 1, 'B15'),
(11, 'Jumlah peternak dengan pendidikan akhir min SMP', 1, 'B16'),
(12, 'Jumlah peternak wanita', 1, 'B17'),
(13, 'Jumlah sapi potong yang terjangkit penyakit', 1, 'B18'),
(14, 'Rata-rata Konsumsi Air/sapi/bulan', 1, 'B19'),
(15, 'Rata-rata konsumsi Listrik/sapi/bulan', 1, 'B20'),
(16, 'Jarak Peternakan - RPH', 1, 'B21'),
(17, 'Jumlah Liter', 1, 'B22'),
(18, 'Harga Bensin', 1, 'B23'),
(19, 'Kapasitas Potong', 2, 'B28'),
(20, 'Rata- rata kg daging per ekor', 2, 'B29'),
(21, 'Rata-rata harga jual sapi', 2, 'B30'),
(22, 'Harga daging sapi per kg', 2, 'B31'),
(23, 'Jumlah petugas RPH', 2, 'B32'),
(24, 'Jumlah kg konsumsi daging sapi per kapita', 2, 'B33'),
(25, 'Jumlah penduduk', 2, 'B34'),
(26, 'Jumlah RPH', 2, 'B35'),
(27, 'Jumlah petugas RPH dengan pendidikan akhir min. SMP', 2, 'B36'),
(28, 'Jumlah petugas wanita RPH', 2, 'B37'),
(29, 'Populasi Sapi Potong', 2, 'B38'),
(30, 'Jumlah sapi potong yang terjangkit penyakit', 2, 'B39'),
(31, 'Harga air/liter', 2, 'B40'),
(32, 'Penggunaan listrik (kwh)', 2, 'B41'),
(33, 'Jarak RPH - Peternakan', 2, 'B42'),
(34, 'Jumlah liter', 2, 'B43'),
(35, 'Harga Bensin', 2, 'B44');

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
(9, '10', '1.49'),
(10, '11', '1.51'),
(11, '12', '1.48'),
(12, '13', '1.56'),
(13, '14', '1.47'),
(14, '15', '1.59');

-- --------------------------------------------------------

--
-- Table structure for table `rasio_sapi`
--

CREATE TABLE `rasio_sapi` (
  `id` int(11) NOT NULL,
  `banyak_indikator` varchar(10) NOT NULL,
  `nilai_rasio` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rasio_sapi`
--

INSERT INTO `rasio_sapi` (`id`, `banyak_indikator`, `nilai_rasio`) VALUES
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
-- Table structure for table `rekap_skala_sapi`
--

CREATE TABLE `rekap_skala_sapi` (
  `id` int(11) NOT NULL,
  `kode_indikator` varchar(200) NOT NULL,
  `performansi_lapangan` varchar(200) NOT NULL,
  `skor_indikator` varchar(200) NOT NULL,
  `nilai_skala` varchar(200) NOT NULL,
  `entitas` int(11) NOT NULL,
  `id_pengisi` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
(421, 2, 'Budi', '0.33', 'RPA', 'Peternak', 2),
(422, 2, 'Tiyo', '0.33', 'RPA', 'Peternak', 2),
(423, 2, 'Samuel', '1', 'RPA', 'Peternak', 2),
(424, 2, 'Budi', '1', 'Ekonomi', 'Lingkungan', 3),
(425, 2, 'Tiyo', '1', 'Ekonomi', 'Lingkungan', 3),
(426, 2, 'Samuel', '1', 'Ekonomi', 'Lingkungan', 3),
(427, 2, 'Budi', '1', 'Ekonomi', 'Sosial', 3),
(428, 2, 'Tiyo', '1', 'Ekonomi', 'Sosial', 3),
(429, 2, 'Samuel', '1', 'Ekonomi', 'Sosial', 3),
(430, 2, 'Budi', '1', 'Lingkungan', 'Sosial', 3),
(431, 2, 'Tiyo', '1', 'Lingkungan', 'Sosial', 3),
(432, 2, 'Samuel', '1', 'Lingkungan', 'Sosial', 3),
(433, 2, 'Budi', '9', 'PE1', 'PE2', 4),
(434, 2, 'Tiyo', '9', 'PE1', 'PE2', 4),
(435, 2, 'Samuel', '9', 'PE1', 'PE2', 4),
(436, 2, 'Budi', '9', 'PE1', 'PE3', 4),
(437, 2, 'Tiyo', '9', 'PE1', 'PE3', 4),
(438, 2, 'Samuel', '9', 'PE1', 'PE3', 4),
(439, 2, 'Budi', '9', 'PE1', 'PE4', 4),
(440, 2, 'Tiyo', '9', 'PE1', 'PE4', 4),
(441, 2, 'Samuel', '9', 'PE1', 'PE4', 4),
(442, 2, 'Budi', '0.5', 'PE2', 'PE3', 4),
(443, 2, 'Tiyo', '1', 'PE2', 'PE3', 4),
(444, 2, 'Samuel', '1', 'PE2', 'PE3', 4),
(445, 2, 'Budi', '0.5', 'PE2', 'PE4', 4),
(446, 2, 'Tiyo', '1', 'PE2', 'PE4', 4),
(447, 2, 'Samuel', '9', 'PE2', 'PE4', 4),
(448, 2, 'Budi', '0.5', 'PE3', 'PE4', 4),
(449, 2, 'Tiyo', '5', 'PE3', 'PE4', 4),
(450, 2, 'Samuel', '7', 'PE3', 'PE4', 4),
(451, 2, 'Budi', '3', 'PL1', 'PL2', 5),
(452, 2, 'Tiyo', '2', 'PL1', 'PL2', 5),
(453, 2, 'Samuel', '3', 'PL1', 'PL2', 5),
(454, 2, 'Budi', '5', 'PL1', 'PL3', 5),
(455, 2, 'Tiyo', '4', 'PL1', 'PL3', 5),
(456, 2, 'Samuel', '5', 'PL1', 'PL3', 5),
(457, 2, 'Budi', '0.5', 'PL2', 'PL3', 5),
(458, 2, 'Tiyo', '2', 'PL2', 'PL3', 5),
(459, 2, 'Samuel', '0.5', 'PL2', 'PL3', 5),
(460, 2, 'Budi', '1', 'PS1', 'PS2', 6),
(461, 2, 'Tiyo', '0.14', 'PS1', 'PS2', 6),
(462, 2, 'Samuel', '1', 'PS1', 'PS2', 6),
(463, 2, 'Budi', '0.14', 'PS1', 'PS3', 6),
(464, 2, 'Tiyo', '0.14', 'PS1', 'PS3', 6),
(465, 2, 'Samuel', '0.11', 'PS1', 'PS3', 6),
(466, 2, 'Budi', '1', 'PS1', 'PS4', 6),
(467, 2, 'Tiyo', '7', 'PS1', 'PS4', 6),
(468, 2, 'Samuel', '0.14', 'PS1', 'PS4', 6),
(469, 2, 'Budi', '0.5', 'PS1', 'PS5', 6),
(470, 2, 'Tiyo', '7', 'PS1', 'PS5', 6),
(471, 2, 'Samuel', '0.14', 'PS1', 'PS5', 6),
(472, 2, 'Budi', '0.5', 'PS1', 'PS6', 6),
(473, 2, 'Tiyo', '7', 'PS1', 'PS6', 6),
(474, 2, 'Samuel', '7', 'PS1', 'PS6', 6),
(475, 2, 'Budi', '1', 'PS1', 'PS7', 6),
(476, 2, 'Tiyo', '7', 'PS1', 'PS7', 6),
(477, 2, 'Samuel', '7', 'PS1', 'PS7', 6),
(478, 2, 'Budi', '0.5', 'PS1', 'PS8', 6),
(479, 2, 'Tiyo', '7', 'PS1', 'PS8', 6),
(480, 2, 'Samuel', '9', 'PS1', 'PS8', 6),
(481, 2, 'Budi', '0.33', 'PS1', 'PS9', 6),
(482, 2, 'Tiyo', '7', 'PS1', 'PS9', 6),
(483, 2, 'Samuel', '1', 'PS1', 'PS9', 6),
(484, 2, 'Budi', '0.2', 'PS1', 'PS10', 6),
(485, 2, 'Tiyo', '0.33', 'PS1', 'PS10', 6),
(486, 2, 'Samuel', '1', 'PS1', 'PS10', 6),
(487, 2, 'Budi', '1', 'PS2', 'PS3', 6),
(488, 2, 'Tiyo', '0.2', 'PS2', 'PS3', 6),
(489, 2, 'Samuel', '1', 'PS2', 'PS3', 6),
(490, 2, 'Budi', '0.33', 'PS2', 'PS4', 6),
(491, 2, 'Tiyo', '7', 'PS2', 'PS4', 6),
(492, 2, 'Samuel', '1', 'PS2', 'PS4', 6),
(493, 2, 'Budi', '0.5', 'PS2', 'PS5', 6),
(494, 2, 'Tiyo', '5', 'PS2', 'PS5', 6),
(495, 2, 'Samuel', '1', 'PS2', 'PS5', 6),
(496, 2, 'Budi', '0.5', 'PS2', 'PS6', 6),
(497, 2, 'Tiyo', '5', 'PS2', 'PS6', 6),
(498, 2, 'Samuel', '7', 'PS2', 'PS6', 6),
(499, 2, 'Budi', '1', 'PS2', 'PS7', 6),
(500, 2, 'Tiyo', '3', 'PS2', 'PS7', 6),
(501, 2, 'Samuel', '1', 'PS2', 'PS7', 6),
(502, 2, 'Budi', '0.5', 'PS2', 'PS8', 6),
(503, 2, 'Tiyo', '0.33', 'PS2', 'PS8', 6),
(504, 2, 'Samuel', '1', 'PS2', 'PS8', 6),
(505, 2, 'Budi', '0.5', 'PS2', 'PS9', 6),
(506, 2, 'Tiyo', '0.33', 'PS2', 'PS9', 6),
(507, 2, 'Samuel', '1', 'PS2', 'PS9', 6),
(508, 2, 'Budi', '1', 'PS2', 'PS10', 6),
(509, 2, 'Tiyo', '0.33', 'PS2', 'PS10', 6),
(510, 2, 'Samuel', '1', 'PS2', 'PS10', 6),
(511, 2, 'Budi', '0.5', 'PS3', 'PS4', 6),
(512, 2, 'Tiyo', '7', 'PS3', 'PS4', 6),
(513, 2, 'Samuel', '1', 'PS3', 'PS4', 6),
(514, 2, 'Budi', '1', 'PS3', 'PS5', 6),
(515, 2, 'Tiyo', '7', 'PS3', 'PS5', 6),
(516, 2, 'Samuel', '1', 'PS3', 'PS5', 6),
(517, 2, 'Budi', '1', 'PS3', 'PS6', 6),
(518, 2, 'Tiyo', '7', 'PS3', 'PS6', 6),
(519, 2, 'Samuel', '7', 'PS3', 'PS6', 6),
(520, 2, 'Budi', '1', 'PS3', 'PS7', 6),
(521, 2, 'Tiyo', '5', 'PS3', 'PS7', 6),
(522, 2, 'Samuel', '7', 'PS3', 'PS7', 6),
(523, 2, 'Budi', '0.5', 'PS3', 'PS8', 6),
(524, 2, 'Tiyo', '5', 'PS3', 'PS8', 6),
(525, 2, 'Samuel', '0.2', 'PS3', 'PS8', 6),
(526, 2, 'Budi', '0.5', 'PS3', 'PS9', 6),
(527, 2, 'Tiyo', '7', 'PS3', 'PS9', 6),
(528, 2, 'Samuel', '1', 'PS3', 'PS9', 6),
(529, 2, 'Budi', '0.5', 'PS3', 'PS10', 6),
(530, 2, 'Tiyo', '0.33', 'PS3', 'PS10', 6),
(531, 2, 'Samuel', '9', 'PS3', 'PS10', 6),
(532, 2, 'Budi', '0.5', 'PS4', 'PS5', 6),
(533, 2, 'Tiyo', '0.14', 'PS4', 'PS5', 6),
(534, 2, 'Samuel', '1', 'PS4', 'PS5', 6),
(535, 2, 'Budi', '1', 'PS4', 'PS6', 6),
(536, 2, 'Tiyo', '0.33', 'PS4', 'PS6', 6),
(537, 2, 'Samuel', '1', 'PS4', 'PS6', 6),
(538, 2, 'Budi', '0.5', 'PS4', 'PS7', 6),
(539, 2, 'Tiyo', '0.2', 'PS4', 'PS7', 6),
(540, 2, 'Samuel', '1', 'PS4', 'PS7', 6),
(541, 2, 'Budi', '1', 'PS4', 'PS8', 6),
(542, 2, 'Tiyo', '0.33', 'PS4', 'PS8', 6),
(543, 2, 'Samuel', '1', 'PS4', 'PS8', 6),
(544, 2, 'Budi', '0.5', 'PS4', 'PS9', 6),
(545, 2, 'Tiyo', '0.33', 'PS4', 'PS9', 6),
(546, 2, 'Samuel', '1', 'PS4', 'PS9', 6),
(547, 2, 'Budi', '1', 'PS4', 'PS10', 6),
(548, 2, 'Tiyo', '0.14', 'PS4', 'PS10', 6),
(549, 2, 'Samuel', '1', 'PS4', 'PS10', 6),
(550, 2, 'Budi', '1', 'PS5', 'PS6', 6),
(551, 2, 'Tiyo', '5', 'PS5', 'PS6', 6),
(552, 2, 'Samuel', '7', 'PS5', 'PS6', 6),
(553, 2, 'Budi', '1', 'PS5', 'PS7', 6),
(554, 2, 'Tiyo', '5', 'PS5', 'PS7', 6),
(555, 2, 'Samuel', '1', 'PS5', 'PS7', 6),
(556, 2, 'Budi', '1', 'PS5', 'PS8', 6),
(557, 2, 'Tiyo', '3', 'PS5', 'PS8', 6),
(558, 2, 'Samuel', '1', 'PS5', 'PS8', 6),
(559, 2, 'Budi', '1', 'PS5', 'PS9', 6),
(560, 2, 'Tiyo', '3', 'PS5', 'PS9', 6),
(561, 2, 'Samuel', '1', 'PS5', 'PS9', 6),
(562, 2, 'Budi', '1', 'PS5', 'PS10', 6),
(563, 2, 'Tiyo', '7', 'PS5', 'PS10', 6),
(564, 2, 'Samuel', '1', 'PS5', 'PS10', 6),
(565, 2, 'Budi', '0.5', 'PS6', 'PS7', 6),
(566, 2, 'Tiyo', '0.33', 'PS6', 'PS7', 6),
(567, 2, 'Samuel', '7', 'PS6', 'PS7', 6),
(568, 2, 'Budi', '0.5', 'PS6', 'PS8', 6),
(569, 2, 'Tiyo', '0.33', 'PS6', 'PS8', 6),
(570, 2, 'Samuel', '1', 'PS6', 'PS8', 6),
(571, 2, 'Budi', '0.5', 'PS6', 'PS9', 6),
(572, 2, 'Tiyo', '1', 'PS6', 'PS9', 6),
(573, 2, 'Samuel', '1', 'PS6', 'PS9', 6),
(574, 2, 'Budi', '1', 'PS6', 'PS10', 6),
(575, 2, 'Tiyo', '7', 'PS6', 'PS10', 6),
(576, 2, 'Samuel', '1', 'PS6', 'PS10', 6),
(577, 2, 'Budi', '1', 'PS7', 'PS8', 6),
(578, 2, 'Tiyo', '1', 'PS7', 'PS8', 6),
(579, 2, 'Samuel', '0.11', 'PS7', 'PS8', 6),
(580, 2, 'Budi', '1', 'PS7', 'PS9', 6),
(581, 2, 'Tiyo', '1', 'PS7', 'PS9', 6),
(582, 2, 'Samuel', '1', 'PS7', 'PS9', 6),
(583, 2, 'Budi', '0.33', 'PS7', 'PS10', 6),
(584, 2, 'Tiyo', '0.33', 'PS7', 'PS10', 6),
(585, 2, 'Samuel', '1', 'PS7', 'PS10', 6),
(586, 2, 'Budi', '1', 'PS8', 'PS9', 6),
(587, 2, 'Tiyo', '1', 'PS8', 'PS9', 6),
(588, 2, 'Samuel', '1', 'PS8', 'PS9', 6),
(589, 2, 'Budi', '1', 'PS8', 'PS10', 6),
(590, 2, 'Tiyo', '1', 'PS8', 'PS10', 6),
(591, 2, 'Samuel', '1', 'PS8', 'PS10', 6),
(592, 2, 'Budi', '1', 'PS9', 'PS10', 6),
(593, 2, 'Tiyo', '0.33', 'PS9', 'PS10', 6),
(594, 2, 'Samuel', '1', 'PS9', 'PS10', 6),
(595, 2, 'Budi', '0.14', 'Ekonomi', 'Lingkungan', 7),
(596, 2, 'Tiyo', '0.14', 'Ekonomi', 'Lingkungan', 7),
(597, 2, 'Samuel', '0.14', 'Ekonomi', 'Lingkungan', 7),
(598, 2, 'Budi', '0.2', 'Ekonomi', 'Sosial', 7),
(599, 2, 'Tiyo', '0.11', 'Ekonomi', 'Sosial', 7),
(600, 2, 'Samuel', '0.11', 'Ekonomi', 'Sosial', 7),
(601, 2, 'Budi', '1', 'Lingkungan', 'Sosial', 7),
(602, 2, 'Tiyo', '1', 'Lingkungan', 'Sosial', 7),
(603, 2, 'Samuel', '1', 'Lingkungan', 'Sosial', 7),
(604, 2, 'Budi', '1', 'RE1', 'RE2', 8),
(605, 2, 'Tiyo', '9', 'RE1', 'RE2', 8),
(606, 2, 'Samuel', '9', 'RE1', 'RE2', 8),
(607, 2, 'Budi', '1', 'RE1', 'RE3', 8),
(608, 2, 'Tiyo', '9', 'RE1', 'RE3', 8),
(609, 2, 'Samuel', '9', 'RE1', 'RE3', 8),
(610, 2, 'Budi', '1', 'RE1', 'RE4', 8),
(611, 2, 'Tiyo', '9', 'RE1', 'RE4', 8),
(612, 2, 'Samuel', '9', 'RE1', 'RE4', 8),
(613, 2, 'Budi', '0.33', 'RE2', 'RE3', 8),
(614, 2, 'Tiyo', '1', 'RE2', 'RE3', 8),
(615, 2, 'Samuel', '5', 'RE2', 'RE3', 8),
(616, 2, 'Budi', '0.5', 'RE2', 'RE4', 8),
(617, 2, 'Tiyo', '0.5', 'RE2', 'RE4', 8),
(618, 2, 'Samuel', '1', 'RE2', 'RE4', 8),
(619, 2, 'Budi', '0.5', 'RE3', 'RE4', 8),
(620, 2, 'Tiyo', '1', 'RE3', 'RE4', 8),
(621, 2, 'Samuel', '1', 'RE3', 'RE4', 8),
(622, 2, 'Budi', '1', 'RL1', 'RL2', 9),
(623, 2, 'Tiyo', '7', 'RL1', 'RL2', 9),
(624, 2, 'Samuel', '1', 'RL1', 'RL2', 9),
(625, 2, 'Budi', '1', 'RL1', 'RL3', 9),
(626, 2, 'Tiyo', '7', 'RL1', 'RL3', 9),
(627, 2, 'Samuel', '1', 'RL1', 'RL3', 9),
(628, 2, 'Budi', '3', 'RL2', 'RL3', 9),
(629, 2, 'Tiyo', '7', 'RL2', 'RL3', 9),
(630, 2, 'Samuel', '1', 'RL2', 'RL3', 9),
(631, 2, 'Budi', '0.2', 'RS1', 'RS2', 10),
(632, 2, 'Tiyo', '1', 'RS1', 'RS2', 10),
(633, 2, 'Samuel', '0.2', 'RS1', 'RS2', 10),
(847, 1, 'Kukuh', '0.17', 'RPA', 'Peternak', 2),
(848, 1, 'Dayyan', '0.14', 'RPA', 'Peternak', 2),
(849, 1, 'Kukuh', '1', 'Ekonomi', 'Lingkungan', 3),
(850, 1, 'Dayyan', '0.17', 'Ekonomi', 'Lingkungan', 3),
(851, 1, 'Kukuh', '0.33', 'Ekonomi', 'Sosial', 3),
(852, 1, 'Dayyan', '0.2', 'Ekonomi', 'Sosial', 3),
(853, 1, 'Kukuh', '0.5', 'Lingkungan', 'Sosial', 3),
(854, 1, 'Dayyan', '0.33', 'Lingkungan', 'Sosial', 3),
(855, 1, 'Kukuh', '0.11', 'PE1', 'PE2', 4),
(856, 1, 'Dayyan', '0.11', 'PE1', 'PE2', 4),
(857, 1, 'Kukuh', '0.33', 'PE1', 'PE3', 4),
(858, 1, 'Dayyan', '0.17', 'PE1', 'PE3', 4),
(859, 1, 'Kukuh', '0.17', 'PE1', 'PE4', 4),
(860, 1, 'Dayyan', '0.25', 'PE1', 'PE4', 4),
(861, 1, 'Kukuh', '0.33', 'PE2', 'PE3', 4),
(862, 1, 'Dayyan', '0.33', 'PE2', 'PE3', 4),
(863, 1, 'Kukuh', '2', 'PE2', 'PE4', 4),
(864, 1, 'Dayyan', '0.5', 'PE2', 'PE4', 4),
(865, 1, 'Kukuh', '4', 'PE3', 'PE4', 4),
(866, 1, 'Dayyan', '0.5', 'PE3', 'PE4', 4),
(867, 1, 'Kukuh', '0.17', 'PL1', 'PL2', 5),
(868, 1, 'Dayyan', '0.2', 'PL1', 'PL2', 5),
(869, 1, 'Kukuh', '0.33', 'PL1', 'PL3', 5),
(870, 1, 'Dayyan', '0.2', 'PL1', 'PL3', 5),
(871, 1, 'Kukuh', '2', 'PL2', 'PL3', 5),
(872, 1, 'Dayyan', '0.33', 'PL2', 'PL3', 5),
(873, 1, 'Kukuh', '1', 'PS1', 'PS2', 6),
(874, 1, 'Dayyan', '1', 'PS1', 'PS2', 6),
(875, 1, 'Kukuh', '1', 'PS1', 'PS3', 6),
(876, 1, 'Dayyan', '1', 'PS1', 'PS3', 6),
(877, 1, 'Kukuh', '1', 'PS1', 'PS4', 6),
(878, 1, 'Dayyan', '1', 'PS1', 'PS4', 6),
(879, 1, 'Kukuh', '1', 'PS1', 'PS5', 6),
(880, 1, 'Dayyan', '1', 'PS1', 'PS5', 6),
(881, 1, 'Kukuh', '1', 'PS1', 'PS6', 6),
(882, 1, 'Dayyan', '1', 'PS1', 'PS6', 6),
(883, 1, 'Kukuh', '1', 'PS1', 'PS7', 6),
(884, 1, 'Dayyan', '1', 'PS1', 'PS7', 6),
(885, 1, 'Kukuh', '1', 'PS1', 'PS8', 6),
(886, 1, 'Dayyan', '1', 'PS1', 'PS8', 6),
(887, 1, 'Kukuh', '1', 'PS1', 'PS9', 6),
(888, 1, 'Dayyan', '1', 'PS1', 'PS9', 6),
(889, 1, 'Kukuh', '1', 'PS1', 'PS10', 6),
(890, 1, 'Dayyan', '1', 'PS1', 'PS10', 6),
(891, 1, 'Kukuh', '1', 'PS2', 'PS3', 6),
(892, 1, 'Dayyan', '1', 'PS2', 'PS3', 6),
(893, 1, 'Kukuh', '1', 'PS2', 'PS4', 6),
(894, 1, 'Dayyan', '1', 'PS2', 'PS4', 6),
(895, 1, 'Kukuh', '1', 'PS2', 'PS5', 6),
(896, 1, 'Dayyan', '1', 'PS2', 'PS5', 6),
(897, 1, 'Kukuh', '1', 'PS2', 'PS6', 6),
(898, 1, 'Dayyan', '1', 'PS2', 'PS6', 6),
(899, 1, 'Kukuh', '1', 'PS2', 'PS7', 6),
(900, 1, 'Dayyan', '1', 'PS2', 'PS7', 6),
(901, 1, 'Kukuh', '1', 'PS2', 'PS8', 6),
(902, 1, 'Dayyan', '1', 'PS2', 'PS8', 6),
(903, 1, 'Kukuh', '1', 'PS2', 'PS9', 6),
(904, 1, 'Dayyan', '1', 'PS2', 'PS9', 6),
(905, 1, 'Kukuh', '1', 'PS2', 'PS10', 6),
(906, 1, 'Dayyan', '1', 'PS2', 'PS10', 6),
(907, 1, 'Kukuh', '1', 'PS3', 'PS4', 6),
(908, 1, 'Dayyan', '1', 'PS3', 'PS4', 6),
(909, 1, 'Kukuh', '1', 'PS3', 'PS5', 6),
(910, 1, 'Dayyan', '1', 'PS3', 'PS5', 6),
(911, 1, 'Kukuh', '1', 'PS3', 'PS6', 6),
(912, 1, 'Dayyan', '1', 'PS3', 'PS6', 6),
(913, 1, 'Kukuh', '1', 'PS3', 'PS7', 6),
(914, 1, 'Dayyan', '1', 'PS3', 'PS7', 6),
(915, 1, 'Kukuh', '1', 'PS3', 'PS8', 6),
(916, 1, 'Dayyan', '1', 'PS3', 'PS8', 6),
(917, 1, 'Kukuh', '1', 'PS3', 'PS9', 6),
(918, 1, 'Dayyan', '1', 'PS3', 'PS9', 6),
(919, 1, 'Kukuh', '1', 'PS3', 'PS10', 6),
(920, 1, 'Dayyan', '1', 'PS3', 'PS10', 6),
(921, 1, 'Kukuh', '1', 'PS4', 'PS5', 6),
(922, 1, 'Dayyan', '1', 'PS4', 'PS5', 6),
(923, 1, 'Kukuh', '1', 'PS4', 'PS6', 6),
(924, 1, 'Dayyan', '1', 'PS4', 'PS6', 6),
(925, 1, 'Kukuh', '1', 'PS4', 'PS7', 6),
(926, 1, 'Dayyan', '1', 'PS4', 'PS7', 6),
(927, 1, 'Kukuh', '1', 'PS4', 'PS8', 6),
(928, 1, 'Dayyan', '1', 'PS4', 'PS8', 6),
(929, 1, 'Kukuh', '1', 'PS4', 'PS9', 6),
(930, 1, 'Dayyan', '1', 'PS4', 'PS9', 6),
(931, 1, 'Kukuh', '1', 'PS4', 'PS10', 6),
(932, 1, 'Dayyan', '1', 'PS4', 'PS10', 6),
(933, 1, 'Kukuh', '1', 'PS5', 'PS6', 6),
(934, 1, 'Dayyan', '1', 'PS5', 'PS6', 6),
(935, 1, 'Kukuh', '1', 'PS5', 'PS7', 6),
(936, 1, 'Dayyan', '1', 'PS5', 'PS7', 6),
(937, 1, 'Kukuh', '1', 'PS5', 'PS8', 6),
(938, 1, 'Dayyan', '1', 'PS5', 'PS8', 6),
(939, 1, 'Kukuh', '1', 'PS5', 'PS9', 6),
(940, 1, 'Dayyan', '1', 'PS5', 'PS9', 6),
(941, 1, 'Kukuh', '1', 'PS5', 'PS10', 6),
(942, 1, 'Dayyan', '1', 'PS5', 'PS10', 6),
(943, 1, 'Kukuh', '1', 'PS6', 'PS7', 6),
(944, 1, 'Dayyan', '1', 'PS6', 'PS7', 6),
(945, 1, 'Kukuh', '1', 'PS6', 'PS8', 6),
(946, 1, 'Dayyan', '1', 'PS6', 'PS8', 6),
(947, 1, 'Kukuh', '1', 'PS6', 'PS9', 6),
(948, 1, 'Dayyan', '1', 'PS6', 'PS9', 6),
(949, 1, 'Kukuh', '1', 'PS6', 'PS10', 6),
(950, 1, 'Dayyan', '1', 'PS6', 'PS10', 6),
(951, 1, 'Kukuh', '1', 'PS7', 'PS8', 6),
(952, 1, 'Dayyan', '1', 'PS7', 'PS8', 6),
(953, 1, 'Kukuh', '1', 'PS7', 'PS9', 6),
(954, 1, 'Dayyan', '1', 'PS7', 'PS9', 6),
(955, 1, 'Kukuh', '1', 'PS7', 'PS10', 6),
(956, 1, 'Dayyan', '1', 'PS7', 'PS10', 6),
(957, 1, 'Kukuh', '1', 'PS8', 'PS9', 6),
(958, 1, 'Dayyan', '1', 'PS8', 'PS9', 6),
(959, 1, 'Kukuh', '1', 'PS8', 'PS10', 6),
(960, 1, 'Dayyan', '1', 'PS8', 'PS10', 6),
(961, 1, 'Kukuh', '1', 'PS9', 'PS10', 6),
(962, 1, 'Dayyan', '1', 'PS9', 'PS10', 6),
(963, 1, 'Kukuh', '1', 'Ekonomi', 'Lingkungan', 7),
(964, 1, 'Dayyan', '0.14', 'Ekonomi', 'Lingkungan', 7),
(965, 1, 'Kukuh', '2', 'Ekonomi', 'Sosial', 7),
(966, 1, 'Dayyan', '0.25', 'Ekonomi', 'Sosial', 7),
(967, 1, 'Kukuh', '0.25', 'Lingkungan', 'Sosial', 7),
(968, 1, 'Dayyan', '1', 'Lingkungan', 'Sosial', 7),
(969, 1, 'Kukuh', '0.5', 'RE1', 'RE2', 8),
(970, 1, 'Dayyan', '0.5', 'RE1', 'RE2', 8),
(971, 1, 'Kukuh', '0.25', 'RE1', 'RE3', 8),
(972, 1, 'Dayyan', '0.5', 'RE1', 'RE3', 8),
(973, 1, 'Kukuh', '1', 'RE1', 'RE4', 8),
(974, 1, 'Dayyan', '0.25', 'RE1', 'RE4', 8),
(975, 1, 'Kukuh', '0.17', 'RE2', 'RE3', 8),
(976, 1, 'Dayyan', '1', 'RE2', 'RE3', 8),
(977, 1, 'Kukuh', '1', 'RE2', 'RE4', 8),
(978, 1, 'Dayyan', '0.25', 'RE2', 'RE4', 8),
(979, 1, 'Kukuh', '0.33', 'RE3', 'RE4', 8),
(980, 1, 'Dayyan', '1', 'RE3', 'RE4', 8),
(981, 1, 'Kukuh', '1', 'RL1', 'RL2', 9),
(982, 1, 'Dayyan', '0.33', 'RL1', 'RL2', 9),
(983, 1, 'Kukuh', '0.25', 'RL1', 'RL3', 9),
(984, 1, 'Dayyan', '1', 'RL1', 'RL3', 9),
(985, 1, 'Kukuh', '1', 'RL2', 'RL3', 9),
(986, 1, 'Dayyan', '0.17', 'RL2', 'RL3', 9),
(987, 1, 'Kukuh', '0.17', 'RS1', 'RS2', 10),
(988, 1, 'Dayyan', '0.25', 'RS1', 'RS2', 10);

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
-- Table structure for table `responden_skala_ayam`
--

CREATE TABLE `responden_skala_ayam` (
  `id` int(11) NOT NULL,
  `id_pengisi` int(11) NOT NULL,
  `nama_responden` varchar(50) NOT NULL,
  `nilai_skala` varchar(2) NOT NULL,
  `indikator` varchar(100) NOT NULL,
  `entitas` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `responden_skala_ayam`
--

INSERT INTO `responden_skala_ayam` (`id`, `id_pengisi`, `nama_responden`, `nilai_skala`, `indikator`, `entitas`) VALUES
(53, 2, 'Budi', '4', '1', 2),
(54, 2, 'Tiyo', '4', '1', 2),
(55, 2, 'Budi', '4', '2', 2),
(56, 2, 'Tiyo', '3', '2', 2),
(57, 2, 'Budi', '4', '28', 2),
(58, 2, 'Tiyo', '3', '28', 2),
(59, 2, 'Budi', '4', '3', 2),
(60, 2, 'Tiyo', '4', '3', 2),
(61, 2, 'Budi', '4', '4', 2),
(62, 2, 'Tiyo', '4', '4', 2),
(63, 2, 'Budi', '4', '5', 2),
(64, 2, 'Tiyo', '4', '5', 2),
(65, 2, 'Budi', '4', '6', 2),
(66, 2, 'Tiyo', '4', '6', 2),
(67, 2, 'Budi', '4', '7', 2),
(68, 2, 'Tiyo', '4', '7', 2),
(69, 2, 'Budi', '4', '8', 2),
(70, 2, 'Tiyo', '4', '8', 2),
(71, 2, 'Budi', '4', '9', 2),
(72, 2, 'Tiyo', '4', '9', 2),
(73, 2, 'Budi', '4', '10', 2),
(74, 2, 'Tiyo', '4', '10', 2),
(75, 2, 'Budi', '4', '11', 2),
(76, 2, 'Tiyo', '4', '11', 2),
(77, 2, 'Budi', '4', '12', 2),
(78, 2, 'Tiyo', '2', '12', 2),
(79, 2, 'Budi', '4', '14', 2),
(80, 2, 'Tiyo', '3', '14', 2),
(81, 2, 'Budi', '2', '15', 2),
(82, 2, 'Tiyo', '2', '15', 2),
(83, 2, 'Budi', '2', '16', 2),
(84, 2, 'Tiyo', '2', '16', 2),
(85, 2, 'Budi', '3', '17', 2),
(86, 2, 'Tiyo', '3', '17', 2),
(87, 2, 'Budi', '5', '19', 1),
(88, 2, 'Tiyo', '5', '19', 1),
(89, 2, 'Budi', '5', '20', 1),
(90, 2, 'Tiyo', '5', '20', 1),
(91, 2, 'Budi', '5', '21', 1),
(92, 2, 'Tiyo', '5', '21', 1),
(93, 2, 'Budi', '2', '22', 1),
(94, 2, 'Tiyo', '2', '22', 1),
(95, 2, 'Budi', '5', '23', 1),
(96, 2, 'Tiyo', '5', '23', 1),
(97, 2, 'Budi', '4', '24', 1),
(98, 2, 'Tiyo', '4', '24', 1),
(99, 2, 'Budi', '3', '25', 1),
(100, 2, 'Tiyo', '3', '25', 1),
(101, 2, 'Budi', '3', '26', 1),
(102, 2, 'Tiyo', '3', '26', 1),
(103, 2, 'Budi', '3', '27', 1),
(104, 2, 'Tiyo', '3', '27', 1),
(105, 2, 'Budi', '4', '1', 2),
(106, 2, 'Tiyo', '4', '1', 2),
(107, 2, 'Budi', '2', '2', 2),
(108, 2, 'Tiyo', '2', '2', 2),
(109, 2, 'Budi', '1', '3', 2),
(110, 2, 'Tiyo', '1', '3', 2),
(111, 2, 'Budi', '1', '4', 2),
(112, 2, 'Tiyo', '2', '4', 2),
(113, 2, 'Budi', '4', '5', 2),
(114, 2, 'Tiyo', '3', '5', 2),
(115, 2, 'Budi', '5', '6', 2),
(116, 2, 'Tiyo', '5', '6', 2),
(117, 2, 'Budi', '3', '7', 2),
(118, 2, 'Tiyo', '3', '7', 2),
(119, 2, 'Budi', '2', '8', 2),
(120, 2, 'Tiyo', '3', '8', 2),
(121, 2, 'Budi', '1', '9', 2),
(122, 2, 'Tiyo', '2', '9', 2),
(123, 2, 'Budi', '2', '10', 2),
(124, 2, 'Tiyo', '3', '10', 2),
(125, 2, 'Budi', '1', '11', 2),
(126, 2, 'Tiyo', '2', '11', 2),
(127, 2, 'Budi', '3', '12', 2),
(128, 2, 'Tiyo', '3', '12', 2),
(129, 2, 'Budi', '2', '14', 2),
(130, 2, 'Tiyo', '3', '14', 2),
(131, 2, 'Budi', '4', '15', 2),
(132, 2, 'Tiyo', '3', '15', 2),
(133, 2, 'Budi', '2', '16', 2),
(134, 2, 'Tiyo', '3', '16', 2),
(135, 2, 'Budi', '3', '17', 2),
(136, 2, 'Tiyo', '3', '17', 2),
(137, 2, 'Budi', '5', '28', 2),
(138, 2, 'Tiyo', '4', '28', 2),
(139, 2, 'Budi', '1', '19', 1),
(140, 2, 'Tiyo', '2', '19', 1),
(141, 2, 'Budi', '4', '20', 1),
(142, 2, 'Tiyo', '4', '20', 1),
(143, 2, 'Budi', '2', '21', 1),
(144, 2, 'Tiyo', '2', '21', 1),
(145, 2, 'Budi', '1', '22', 1),
(146, 2, 'Tiyo', '1', '22', 1),
(147, 2, 'Budi', '1', '23', 1),
(148, 2, 'Tiyo', '2', '23', 1),
(149, 2, 'Budi', '2', '24', 1),
(150, 2, 'Tiyo', '3', '24', 1),
(151, 2, 'Budi', '4', '25', 1),
(152, 2, 'Tiyo', '5', '25', 1),
(153, 2, 'Budi', '2', '26', 1),
(154, 2, 'Tiyo', '3', '26', 1),
(155, 2, 'Budi', '2', '27', 1),
(156, 2, 'Tiyo', '3', '27', 1);

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
-- Table structure for table `ukuran_peternakan_ayam`
--

CREATE TABLE `ukuran_peternakan_ayam` (
  `id` int(11) NOT NULL,
  `ukuran_peternakan` varchar(10) NOT NULL,
  `id_user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ukuran_peternakan_ayam`
--

INSERT INTO `ukuran_peternakan_ayam` (`id`, `ukuran_peternakan`, `id_user`) VALUES
(4, 'Kecil', 2);

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
-- Indexes for table `hasil_skala_ayam`
--
ALTER TABLE `hasil_skala_ayam`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `indikator_ayam`
--
ALTER TABLE `indikator_ayam`
  ADD PRIMARY KEY (`id_a_i`),
  ADD UNIQUE KEY `kode_a_i` (`kode_a_i`),
  ADD KEY `id_kriteria` (`nama_kriteria`),
  ADD KEY `entitas` (`entitas`);

--
-- Indexes for table `indikator_sapi`
--
ALTER TABLE `indikator_sapi`
  ADD PRIMARY KEY (`id_s_i`),
  ADD UNIQUE KEY `kode_s_i` (`kode_s_i`),
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
-- Indexes for table `opsi_skala_ayam`
--
ALTER TABLE `opsi_skala_ayam`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `opsi_skala_sapi`
--
ALTER TABLE `opsi_skala_sapi`
  ADD PRIMARY KEY (`id`),
  ADD KEY `entitas` (`entitas`);

--
-- Indexes for table `rasio`
--
ALTER TABLE `rasio`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rasio_sapi`
--
ALTER TABLE `rasio_sapi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rekap_skala_sapi`
--
ALTER TABLE `rekap_skala_sapi`
  ADD PRIMARY KEY (`id`),
  ADD KEY `kode_indikator` (`kode_indikator`),
  ADD KEY `entitas` (`entitas`),
  ADD KEY `id_pengisi` (`id_pengisi`);

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
-- Indexes for table `responden_skala_ayam`
--
ALTER TABLE `responden_skala_ayam`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `ukuran_peternakan_ayam`
--
ALTER TABLE `ukuran_peternakan_ayam`
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=171;

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
-- AUTO_INCREMENT for table `hasil_skala_ayam`
--
ALTER TABLE `hasil_skala_ayam`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;

--
-- AUTO_INCREMENT for table `indikator_ayam`
--
ALTER TABLE `indikator_ayam`
  MODIFY `id_a_i` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

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
-- AUTO_INCREMENT for table `opsi_skala_ayam`
--
ALTER TABLE `opsi_skala_ayam`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `opsi_skala_sapi`
--
ALTER TABLE `opsi_skala_sapi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `rasio`
--
ALTER TABLE `rasio`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `rasio_sapi`
--
ALTER TABLE `rasio_sapi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `rekap_skala_sapi`
--
ALTER TABLE `rekap_skala_sapi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `responden`
--
ALTER TABLE `responden`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=989;

--
-- AUTO_INCREMENT for table `responden_sapi`
--
ALTER TABLE `responden_sapi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=161;

--
-- AUTO_INCREMENT for table `responden_skala_ayam`
--
ALTER TABLE `responden_skala_ayam`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=157;

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
-- AUTO_INCREMENT for table `ukuran_peternakan_ayam`
--
ALTER TABLE `ukuran_peternakan_ayam`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

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
-- Constraints for table `opsi_skala_sapi`
--
ALTER TABLE `opsi_skala_sapi`
  ADD CONSTRAINT `opsi_skala_sapi_ibfk_1` FOREIGN KEY (`entitas`) REFERENCES `entitas_sapi` (`id_s_e`);

--
-- Constraints for table `rekap_skala_sapi`
--
ALTER TABLE `rekap_skala_sapi`
  ADD CONSTRAINT `rekap_skala_sapi_ibfk_1` FOREIGN KEY (`kode_indikator`) REFERENCES `indikator_sapi` (`kode_s_i`),
  ADD CONSTRAINT `rekap_skala_sapi_ibfk_2` FOREIGN KEY (`entitas`) REFERENCES `entitas_sapi` (`id_s_e`),
  ADD CONSTRAINT `rekap_skala_sapi_ibfk_3` FOREIGN KEY (`id_pengisi`) REFERENCES `user` (`id`);

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
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
