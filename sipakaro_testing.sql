-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 15, 2020 at 03:22 PM
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
(1, 'RPA', '0.21361613', '0', '0', 2, '0', '0', 1),
(2, 'Peternak', '0.78638386', '0', '0', 2, '0', '0', 1),
(3, 'Ekonomi', '0.22870281', '0', '0', 3, '0', '0', 1),
(4, 'Lingkungan', '0.31681192', '0', '0', 3, '0', '0', 1),
(5, 'Sosial', '0.45448525', '0', '0', 3, '0', '0', 1),
(6, 'PE1', '0.09498436', '0.10711435', '0.11901595', 4, '0.02172319', '0.01708276', 1),
(7, 'PE2', '0.16794856', '0.10711435', '0.11901595', 4, '0.03841030', '0.03020524', 1),
(8, 'PE3', '0.27233904', '0.10711435', '0.11901595', 4, '0.06228470', '0.04897968', 1),
(9, 'PE4', '0.46472801', '0.10711435', '0.11901595', 4, '0.10628460', '0.08358049', 1),
(10, 'PL1', '0.24812030', '0', '0', 5, '0.07860746', '0.06181564', 1),
(11, 'PL2', '0.75187969', '0', '0', 5, '0.23820445', '0.18732013', 1),
(12, 'PS1', '0.02831336', '0', '0', 6, '0.01286800', '0.01011919', 1),
(13, 'PS2', '0.03633917', '0', '0', 6, '0.01651562', '0.01298761', 1),
(14, 'PS3', '0.04514364', '0', '0', 6, '0.02051712', '0.01613433', 1),
(15, 'PS4', '0.05489450', '0', '0', 6, '0.02494874', '0.01961928', 1),
(16, 'PS5', '0.06582041', '0', '0', 6, '0.02991440', '0.02352420', 1),
(17, 'PS6', '0.07824474', '0', '0', 6, '0.03556108', '0.02796466', 1),
(18, 'PS7', '0.09264652', '0', '0', 6, '0.04210648', '0.03311185', 1),
(19, 'PS8', '0.10978058', '0', '0', 6, '0.04989365', '0.03923556', 1),
(20, 'PS9', '0.13094331', '0', '0', 6, '0.05951180', '0.04679912', 1),
(21, 'PS10', '0.15867118', '0', '0', 6, '0.07211371', '0.05670906', 1),
(22, 'PS11', '0.19920252', '0', '0', 6, '0.09053460', '0.07119495', 1),
(23, 'Ekonomi', '0.13870296', '0', '0', 7, '0', '0', 1),
(24, 'Lingkungan', '0.28577386', '0', '0', 7, '0', '0', 1),
(25, 'Sosial', '0.57552317', '0', '0', 7, '0', '0', 1),
(26, 'RE1', '0.09498436', '0.10711435', '0.11901595', 8, '0.02172319', '0.00464042', 1),
(27, 'RE2', '0.16794856', '0.10711435', '0.11901595', 8, '0.03841030', '0.00820506', 1),
(28, 'RE3', '0.27233904', '0.10711435', '0.11901595', 8, '0.06228470', '0.01330501', 1),
(29, 'RE4', '0.46472801', '0.10711435', '0.11901595', 8, '0.10628460', '0.02270410', 1),
(30, 'RL1', '0.13870296', '0.06992657', '0.12056305', 9, '0.04394275', '0.00938688', 1),
(31, 'RL2', '0.28577386', '0.06992657', '0.12056305', 9, '0.09053656', '0.01934007', 1),
(32, 'RL3', '0.57552317', '0.06992657', '0.12056305', 9, '0.18233260', '0.03894918', 1),
(33, 'RS1', '0.24812030', '0', '0', 10, '0.11276701', '0.02408885', 1),
(34, 'RS2', '0.75187969', '0', '0', 10, '0.34171823', '0.07299652', 1),
(35, 'RPA', '0.32319913', '0', '0', 2, '0', '0', 2),
(36, 'Peternak', '0.67680086', '0', '0', 2, '0', '0', 2),
(37, 'Ekonomi', '0.33333333', '0', '0', 3, '0', '0', 2),
(38, 'Lingkungan', '0.33333333', '0', '0', 3, '0', '0', 2),
(39, 'Sosial', '0.33333333', '0', '0', 3, '0', '0', 2),
(40, 'PE1', '0.73632153', '0.02717234', '0.03019149', 4, '0.24544051', '0.16611434', 2),
(41, 'PE2', '0.08862255', '0.02717234', '0.03019149', 4, '0.02954085', '0.01999327', 2),
(42, 'PE3', '0.11529966', '0.02717234', '0.03019149', 4, '0.03843322', '0.02601163', 2),
(43, 'PE4', '0.05975624', '0.02717234', '0.03019149', 4, '0.01991874', '0.01348102', 2),
(44, 'PL1', '0.62813457', '0.03635585', '0.06268250', 5, '0.20937819', '0.14170733', 2),
(45, 'PL2', '0.18905125', '0.03635585', '0.06268250', 5, '0.06301708', '0.04265001', 2),
(46, 'PL3', '0.18281417', '0.03635585', '0.06268250', 5, '0.06093805', '0.04124293', 2),
(47, 'PS1', '0.11073694', '0.14882629', '0.09988341', 6, '0.03691231', '0.02498228', 2),
(48, 'PS2', '0.09381437', '0.14882629', '0.09988341', 6, '0.03127145', '0.02116455', 2),
(49, 'PS3', '0.18091111', '0.14882629', '0.09988341', 6, '0.06030370', '0.04081360', 2),
(50, 'PS4', '0.05782698', '0.14882629', '0.09988341', 6, '0.01927566', '0.01304578', 2),
(51, 'PS5', '0.12357523', '0.14882629', '0.09988341', 6, '0.04119174', '0.02787860', 2),
(52, 'PS6', '0.06610860', '0.14882629', '0.09988341', 6, '0.02203620', '0.01491412', 2),
(53, 'PS7', '0.06286107', '0.14882629', '0.09988341', 6, '0.02095369', '0.01418147', 2),
(54, 'PS8', '0.10662988', '0.14882629', '0.09988341', 6, '0.03554329', '0.02405573', 2),
(55, 'PS9', '0.08965340', '0.14882629', '0.09988341', 6, '0.02988446', '0.02022583', 2),
(56, 'PS10', '0.10788236', '0.14882629', '0.09988341', 6, '0.03596078', '0.02433829', 2),
(57, 'Ekonomi', '0.06415503', '0', '0', 7, '0', '0', 2),
(58, 'Lingkungan', '0.46465656', '0', '0', 7, '0', '0', 2),
(59, 'Sosial', '0.47118839', '0', '0', 7, '0', '0', 2),
(60, 'RE1', '0.58650395', '0.00951186', '0.01056873', 8, '0.03762718', '0.01216107', 2),
(61, 'RE2', '0.12769506', '0.00951186', '0.01056873', 8, '0.00819228', '0.00264773', 2),
(62, 'RE3', '0.12296018', '0.00951186', '0.01056873', 8, '0.00788851', '0.00254956', 2),
(63, 'RE4', '0.16284079', '0.00951186', '0.01056873', 8, '0.01044705', '0.00337648', 2),
(64, 'RL1', '0.47005761', '0.05803295', '0.10005681', 9, '0.21841535', '0.07059165', 2),
(65, 'RL2', '0.34909783', '0.05803295', '0.10005681', 9, '0.16221059', '0.05242632', 2),
(66, 'RL3', '0.18084455', '0.05803295', '0.10005681', 9, '0.08403060', '0.02715862', 2),
(67, 'RS1', '0.25484084', '0', '0', 10, '0.12007805', '0.03880912', 2),
(68, 'RS2', '0.74515915', '0', '0', 10, '0.35111034', '0.11347856', 2);

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
(27, 'RPA', 'RL1', '5', '100', 2),
(28, 'RPA', 'RL2', '5', '100', 2),
(29, 'RPA', 'RL3', '5', '100', 2),
(30, 'RPA', 'RS1', '2', '40', 2),
(31, 'RPA', 'RS2', '5', '100', 2),
(32, 'RPA', 'RE1', '4', '80', 2),
(33, 'RPA', 'RE2', '3', '60', 2),
(34, 'RPA', 'RE3', '3', '60', 2),
(35, 'RPA', 'RE4', '3', '60', 2),
(36, 'Peternak', 'PL1', '4', '80', 2),
(37, 'Peternak', 'PL2', '3.5', '70', 2),
(38, 'Peternak', 'PS1', '4', '80', 2),
(39, 'Peternak', 'PS2', '4', '80', 2),
(40, 'Peternak', 'PS3', '4', '80', 2),
(41, 'Peternak', 'PS4', '4', '80', 2),
(42, 'Peternak', 'PS5', '4', '80', 2),
(43, 'Peternak', 'PS6', '4', '80', 2),
(44, 'Peternak', 'PS7', '4', '80', 2),
(45, 'Peternak', 'PS8', '4', '80', 2),
(46, 'Peternak', 'PS9', '4', '80', 2),
(47, 'Peternak', 'PS10', '3', '60', 2),
(48, 'Peternak', 'PE1', '3.5', '70', 2),
(49, 'Peternak', 'PE2', '2', '40', 2),
(50, 'Peternak', 'PE3', '2', '40', 2),
(51, 'Peternak', 'PE4', '3', '60', 2),
(52, 'Peternak', 'PL3', '3.5', '70', 2);

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
(208, 2, 'Budi', '0.33', 'RPA', 'Peternak', 2),
(209, 2, 'Tiyo', '0.33', 'RPA', 'Peternak', 2),
(210, 2, 'Samuel', '1', 'RPA', 'Peternak', 2),
(211, 2, 'Budi', '1', 'Ekonomi', 'Lingkungan', 3),
(212, 2, 'Tiyo', '1', 'Ekonomi', 'Lingkungan', 3),
(213, 2, 'Samuel', '1', 'Ekonomi', 'Lingkungan', 3),
(214, 2, 'Budi', '1', 'Ekonomi', 'Sosial', 3),
(215, 2, 'Tiyo', '1', 'Ekonomi', 'Sosial', 3),
(216, 2, 'Samuel', '1', 'Ekonomi', 'Sosial', 3),
(217, 2, 'Budi', '1', 'Lingkungan', 'Sosial', 3),
(218, 2, 'Tiyo', '1', 'Lingkungan', 'Sosial', 3),
(219, 2, 'Samuel', '1', 'Lingkungan', 'Sosial', 3),
(220, 2, 'Budi', '9', 'PE1', 'PE2', 4),
(221, 2, 'Tiyo', '9', 'PE1', 'PE2', 4),
(222, 2, 'Samuel', '9', 'PE1', 'PE2', 4),
(223, 2, 'Budi', '9', 'PE1', 'PE3', 4),
(224, 2, 'Tiyo', '9', 'PE1', 'PE3', 4),
(225, 2, 'Samuel', '9', 'PE1', 'PE3', 4),
(226, 2, 'Budi', '9', 'PE1', 'PE4', 4),
(227, 2, 'Tiyo', '9', 'PE1', 'PE4', 4),
(228, 2, 'Samuel', '9', 'PE1', 'PE4', 4),
(229, 2, 'Budi', '0.5', 'PE2', 'PE3', 4),
(230, 2, 'Tiyo', '1', 'PE2', 'PE3', 4),
(231, 2, 'Samuel', '1', 'PE2', 'PE3', 4),
(232, 2, 'Budi', '0.5', 'PE2', 'PE4', 4),
(233, 2, 'Tiyo', '1', 'PE2', 'PE4', 4),
(234, 2, 'Samuel', '9', 'PE2', 'PE4', 4),
(235, 2, 'Budi', '0.5', 'PE3', 'PE4', 4),
(236, 2, 'Tiyo', '5', 'PE3', 'PE4', 4),
(237, 2, 'Samuel', '7', 'PE3', 'PE4', 4),
(238, 2, 'Budi', '3', 'PL1', 'PL2', 5),
(239, 2, 'Tiyo', '2', 'PL1', 'PL2', 5),
(240, 2, 'Samuel', '3', 'PL1', 'PL2', 5),
(241, 2, 'Budi', '5', 'PL1', 'PL3', 5),
(242, 2, 'Tiyo', '4', 'PL1', 'PL3', 5),
(243, 2, 'Samuel', '5', 'PL1', 'PL3', 5),
(244, 2, 'Budi', '0.5', 'PL2', 'PL3', 5),
(245, 2, 'Tiyo', '2', 'PL2', 'PL3', 5),
(246, 2, 'Samuel', '0.5', 'PL2', 'PL3', 5),
(247, 2, 'Budi', '1', 'PS1', 'PS2', 6),
(248, 2, 'Tiyo', '0.14', 'PS1', 'PS2', 6),
(249, 2, 'Samuel', '1', 'PS1', 'PS2', 6),
(250, 2, 'Budi', '0.14', 'PS1', 'PS3', 6),
(251, 2, 'Tiyo', '0.14', 'PS1', 'PS3', 6),
(252, 2, 'Samuel', '0.11', 'PS1', 'PS3', 6),
(253, 2, 'Budi', '1', 'PS1', 'PS4', 6),
(254, 2, 'Tiyo', '7', 'PS1', 'PS4', 6),
(255, 2, 'Samuel', '0.14', 'PS1', 'PS4', 6),
(256, 2, 'Budi', '0.5', 'PS1', 'PS5', 6),
(257, 2, 'Tiyo', '7', 'PS1', 'PS5', 6),
(258, 2, 'Samuel', '0.14', 'PS1', 'PS5', 6),
(259, 2, 'Budi', '0.5', 'PS1', 'PS6', 6),
(260, 2, 'Tiyo', '7', 'PS1', 'PS6', 6),
(261, 2, 'Samuel', '7', 'PS1', 'PS6', 6),
(262, 2, 'Budi', '1', 'PS1', 'PS7', 6),
(263, 2, 'Tiyo', '7', 'PS1', 'PS7', 6),
(264, 2, 'Samuel', '7', 'PS1', 'PS7', 6),
(265, 2, 'Budi', '0.5', 'PS1', 'PS8', 6),
(266, 2, 'Tiyo', '7', 'PS1', 'PS8', 6),
(267, 2, 'Samuel', '9', 'PS1', 'PS8', 6),
(268, 2, 'Budi', '0.33', 'PS1', 'PS9', 6),
(269, 2, 'Tiyo', '7', 'PS1', 'PS9', 6),
(270, 2, 'Samuel', '1', 'PS1', 'PS9', 6),
(271, 2, 'Budi', '0.2', 'PS1', 'PS10', 6),
(272, 2, 'Tiyo', '0.33', 'PS1', 'PS10', 6),
(273, 2, 'Samuel', '1', 'PS1', 'PS10', 6),
(274, 2, 'Budi', '1', 'PS2', 'PS3', 6),
(275, 2, 'Tiyo', '0.2', 'PS2', 'PS3', 6),
(276, 2, 'Samuel', '1', 'PS2', 'PS3', 6),
(277, 2, 'Budi', '0.33', 'PS2', 'PS4', 6),
(278, 2, 'Tiyo', '7', 'PS2', 'PS4', 6),
(279, 2, 'Samuel', '1', 'PS2', 'PS4', 6),
(280, 2, 'Budi', '0.5', 'PS2', 'PS5', 6),
(281, 2, 'Tiyo', '5', 'PS2', 'PS5', 6),
(282, 2, 'Samuel', '1', 'PS2', 'PS5', 6),
(283, 2, 'Budi', '0.5', 'PS2', 'PS6', 6),
(284, 2, 'Tiyo', '5', 'PS2', 'PS6', 6),
(285, 2, 'Samuel', '7', 'PS2', 'PS6', 6),
(286, 2, 'Budi', '1', 'PS2', 'PS7', 6),
(287, 2, 'Tiyo', '3', 'PS2', 'PS7', 6),
(288, 2, 'Samuel', '1', 'PS2', 'PS7', 6),
(289, 2, 'Budi', '0.5', 'PS2', 'PS8', 6),
(290, 2, 'Tiyo', '0.33', 'PS2', 'PS8', 6),
(291, 2, 'Samuel', '1', 'PS2', 'PS8', 6),
(292, 2, 'Budi', '0.5', 'PS2', 'PS9', 6),
(293, 2, 'Tiyo', '0.33', 'PS2', 'PS9', 6),
(294, 2, 'Samuel', '1', 'PS2', 'PS9', 6),
(295, 2, 'Budi', '1', 'PS2', 'PS10', 6),
(296, 2, 'Tiyo', '0.33', 'PS2', 'PS10', 6),
(297, 2, 'Samuel', '1', 'PS2', 'PS10', 6),
(298, 2, 'Budi', '0.5', 'PS3', 'PS4', 6),
(299, 2, 'Tiyo', '7', 'PS3', 'PS4', 6),
(300, 2, 'Samuel', '1', 'PS3', 'PS4', 6),
(301, 2, 'Budi', '1', 'PS3', 'PS5', 6),
(302, 2, 'Tiyo', '7', 'PS3', 'PS5', 6),
(303, 2, 'Samuel', '1', 'PS3', 'PS5', 6),
(304, 2, 'Budi', '1', 'PS3', 'PS6', 6),
(305, 2, 'Tiyo', '7', 'PS3', 'PS6', 6),
(306, 2, 'Samuel', '7', 'PS3', 'PS6', 6),
(307, 2, 'Budi', '1', 'PS3', 'PS7', 6),
(308, 2, 'Tiyo', '5', 'PS3', 'PS7', 6),
(309, 2, 'Samuel', '7', 'PS3', 'PS7', 6),
(310, 2, 'Budi', '0.5', 'PS3', 'PS8', 6),
(311, 2, 'Tiyo', '5', 'PS3', 'PS8', 6),
(312, 2, 'Samuel', '0.2', 'PS3', 'PS8', 6),
(313, 2, 'Budi', '0.5', 'PS3', 'PS9', 6),
(314, 2, 'Tiyo', '7', 'PS3', 'PS9', 6),
(315, 2, 'Samuel', '1', 'PS3', 'PS9', 6),
(316, 2, 'Budi', '0.5', 'PS3', 'PS10', 6),
(317, 2, 'Tiyo', '0.33', 'PS3', 'PS10', 6),
(318, 2, 'Samuel', '9', 'PS3', 'PS10', 6),
(319, 2, 'Budi', '0.5', 'PS4', 'PS5', 6),
(320, 2, 'Tiyo', '0.14', 'PS4', 'PS5', 6),
(321, 2, 'Samuel', '1', 'PS4', 'PS5', 6),
(322, 2, 'Budi', '1', 'PS4', 'PS6', 6),
(323, 2, 'Tiyo', '0.33', 'PS4', 'PS6', 6),
(324, 2, 'Samuel', '1', 'PS4', 'PS6', 6),
(325, 2, 'Budi', '0.5', 'PS4', 'PS7', 6),
(326, 2, 'Tiyo', '0.2', 'PS4', 'PS7', 6),
(327, 2, 'Samuel', '1', 'PS4', 'PS7', 6),
(328, 2, 'Budi', '1', 'PS4', 'PS8', 6),
(329, 2, 'Tiyo', '0.33', 'PS4', 'PS8', 6),
(330, 2, 'Samuel', '1', 'PS4', 'PS8', 6),
(331, 2, 'Budi', '0.5', 'PS4', 'PS9', 6),
(332, 2, 'Tiyo', '0.33', 'PS4', 'PS9', 6),
(333, 2, 'Samuel', '1', 'PS4', 'PS9', 6),
(334, 2, 'Budi', '1', 'PS4', 'PS10', 6),
(335, 2, 'Tiyo', '0.14', 'PS4', 'PS10', 6),
(336, 2, 'Samuel', '1', 'PS4', 'PS10', 6),
(337, 2, 'Budi', '1', 'PS5', 'PS6', 6),
(338, 2, 'Tiyo', '5', 'PS5', 'PS6', 6),
(339, 2, 'Samuel', '7', 'PS5', 'PS6', 6),
(340, 2, 'Budi', '1', 'PS5', 'PS7', 6),
(341, 2, 'Tiyo', '5', 'PS5', 'PS7', 6),
(342, 2, 'Samuel', '1', 'PS5', 'PS7', 6),
(343, 2, 'Budi', '1', 'PS5', 'PS8', 6),
(344, 2, 'Tiyo', '3', 'PS5', 'PS8', 6),
(345, 2, 'Samuel', '1', 'PS5', 'PS8', 6),
(346, 2, 'Budi', '1', 'PS5', 'PS9', 6),
(347, 2, 'Tiyo', '3', 'PS5', 'PS9', 6),
(348, 2, 'Samuel', '1', 'PS5', 'PS9', 6),
(349, 2, 'Budi', '1', 'PS5', 'PS10', 6),
(350, 2, 'Tiyo', '7', 'PS5', 'PS10', 6),
(351, 2, 'Samuel', '1', 'PS5', 'PS10', 6),
(352, 2, 'Budi', '0.5', 'PS6', 'PS7', 6),
(353, 2, 'Tiyo', '0.33', 'PS6', 'PS7', 6),
(354, 2, 'Samuel', '7', 'PS6', 'PS7', 6),
(355, 2, 'Budi', '0.5', 'PS6', 'PS8', 6),
(356, 2, 'Tiyo', '0.33', 'PS6', 'PS8', 6),
(357, 2, 'Samuel', '1', 'PS6', 'PS8', 6),
(358, 2, 'Budi', '0.5', 'PS6', 'PS9', 6),
(359, 2, 'Tiyo', '1', 'PS6', 'PS9', 6),
(360, 2, 'Samuel', '1', 'PS6', 'PS9', 6),
(361, 2, 'Budi', '1', 'PS6', 'PS10', 6),
(362, 2, 'Tiyo', '7', 'PS6', 'PS10', 6),
(363, 2, 'Samuel', '1', 'PS6', 'PS10', 6),
(364, 2, 'Budi', '1', 'PS7', 'PS8', 6),
(365, 2, 'Tiyo', '1', 'PS7', 'PS8', 6),
(366, 2, 'Samuel', '0.11', 'PS7', 'PS8', 6),
(367, 2, 'Budi', '1', 'PS7', 'PS9', 6),
(368, 2, 'Tiyo', '1', 'PS7', 'PS9', 6),
(369, 2, 'Samuel', '1', 'PS7', 'PS9', 6),
(370, 2, 'Budi', '0.33', 'PS7', 'PS10', 6),
(371, 2, 'Tiyo', '0.33', 'PS7', 'PS10', 6),
(372, 2, 'Samuel', '1', 'PS7', 'PS10', 6),
(373, 2, 'Budi', '1', 'PS8', 'PS9', 6),
(374, 2, 'Tiyo', '1', 'PS8', 'PS9', 6),
(375, 2, 'Samuel', '1', 'PS8', 'PS9', 6),
(376, 2, 'Budi', '1', 'PS8', 'PS10', 6),
(377, 2, 'Tiyo', '1', 'PS8', 'PS10', 6),
(378, 2, 'Samuel', '1', 'PS8', 'PS10', 6),
(379, 2, 'Budi', '1', 'PS9', 'PS10', 6),
(380, 2, 'Tiyo', '0.33', 'PS9', 'PS10', 6),
(381, 2, 'Samuel', '1', 'PS9', 'PS10', 6),
(382, 2, 'Budi', '0.14', 'Ekonomi', 'Lingkungan', 7),
(383, 2, 'Tiyo', '0.14', 'Ekonomi', 'Lingkungan', 7),
(384, 2, 'Samuel', '0.14', 'Ekonomi', 'Lingkungan', 7),
(385, 2, 'Budi', '0.2', 'Ekonomi', 'Sosial', 7),
(386, 2, 'Tiyo', '0.11', 'Ekonomi', 'Sosial', 7),
(387, 2, 'Samuel', '0.11', 'Ekonomi', 'Sosial', 7),
(388, 2, 'Budi', '1', 'Lingkungan', 'Sosial', 7),
(389, 2, 'Tiyo', '1', 'Lingkungan', 'Sosial', 7),
(390, 2, 'Samuel', '1', 'Lingkungan', 'Sosial', 7),
(391, 2, 'Budi', '1', 'RE1', 'RE2', 8),
(392, 2, 'Tiyo', '9', 'RE1', 'RE2', 8),
(393, 2, 'Samuel', '9', 'RE1', 'RE2', 8),
(394, 2, 'Budi', '1', 'RE1', 'RE3', 8),
(395, 2, 'Tiyo', '9', 'RE1', 'RE3', 8),
(396, 2, 'Samuel', '9', 'RE1', 'RE3', 8),
(397, 2, 'Budi', '1', 'RE1', 'RE4', 8),
(398, 2, 'Tiyo', '9', 'RE1', 'RE4', 8),
(399, 2, 'Samuel', '9', 'RE1', 'RE4', 8),
(400, 2, 'Budi', '0.33', 'RE2', 'RE3', 8),
(401, 2, 'Tiyo', '1', 'RE2', 'RE3', 8),
(402, 2, 'Samuel', '5', 'RE2', 'RE3', 8),
(403, 2, 'Budi', '0.5', 'RE2', 'RE4', 8),
(404, 2, 'Tiyo', '0.5', 'RE2', 'RE4', 8),
(405, 2, 'Samuel', '1', 'RE2', 'RE4', 8),
(406, 2, 'Budi', '0.5', 'RE3', 'RE4', 8),
(407, 2, 'Tiyo', '1', 'RE3', 'RE4', 8),
(408, 2, 'Samuel', '1', 'RE3', 'RE4', 8),
(409, 2, 'Budi', '1', 'RL1', 'RL2', 9),
(410, 2, 'Tiyo', '7', 'RL1', 'RL2', 9),
(411, 2, 'Samuel', '1', 'RL1', 'RL2', 9),
(412, 2, 'Budi', '1', 'RL1', 'RL3', 9),
(413, 2, 'Tiyo', '7', 'RL1', 'RL3', 9),
(414, 2, 'Samuel', '1', 'RL1', 'RL3', 9),
(415, 2, 'Budi', '3', 'RL2', 'RL3', 9),
(416, 2, 'Tiyo', '7', 'RL2', 'RL3', 9),
(417, 2, 'Samuel', '1', 'RL2', 'RL3', 9),
(418, 2, 'Budi', '0.2', 'RS1', 'RS2', 10),
(419, 2, 'Tiyo', '1', 'RS1', 'RS2', 10),
(420, 2, 'Samuel', '0.2', 'RS1', 'RS2', 10);

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
(1, 1, 'Kukuh', '4', '1', 2),
(2, 1, 'Dayyan', '4', '1', 2),
(3, 1, 'Kukuh', '4', '2', 2),
(4, 1, 'Dayyan', '3', '2', 2),
(5, 1, 'Kukuh', '4', '3', 2),
(6, 1, 'Dayyan', '4', '3', 2),
(7, 1, 'Kukuh', '4', '4', 2),
(8, 1, 'Dayyan', '4', '4', 2),
(9, 1, 'Kukuh', '4', '28', 2),
(10, 1, 'Dayyan', '3', '28', 2),
(11, 1, 'Kukuh', '4', '5', 2),
(12, 1, 'Dayyan', '4', '5', 2),
(13, 1, 'Kukuh', '4', '6', 2),
(14, 1, 'Dayyan', '4', '6', 2),
(15, 1, 'Kukuh', '4', '7', 2),
(16, 1, 'Dayyan', '4', '7', 2),
(17, 1, 'Kukuh', '4', '8', 2),
(18, 1, 'Dayyan', '4', '8', 2),
(19, 1, 'Kukuh', '4', '9', 2),
(20, 1, 'Dayyan', '4', '9', 2),
(21, 1, 'Kukuh', '4', '10', 2),
(22, 1, 'Dayyan', '4', '10', 2),
(23, 1, 'Kukuh', '4', '11', 2),
(24, 1, 'Dayyan', '4', '11', 2),
(25, 1, 'Kukuh', '4', '12', 2),
(26, 1, 'Dayyan', '2', '12', 2),
(27, 1, 'Kukuh', '4', '14', 2),
(28, 1, 'Dayyan', '3', '14', 2),
(29, 1, 'Kukuh', '2', '15', 2),
(30, 1, 'Dayyan', '2', '15', 2),
(31, 1, 'Kukuh', '2', '16', 2),
(32, 1, 'Dayyan', '2', '16', 2),
(33, 1, 'Kukuh', '3', '17', 2),
(34, 1, 'Dayyan', '3', '17', 2),
(35, 1, 'Kukuh', '5', '19', 1),
(36, 1, 'Dayyan', '5', '19', 1),
(37, 1, 'Kukuh', '5', '20', 1),
(38, 1, 'Dayyan', '5', '20', 1),
(39, 1, 'Kukuh', '5', '21', 1),
(40, 1, 'Dayyan', '5', '21', 1),
(41, 1, 'Kukuh', '2', '22', 1),
(42, 1, 'Dayyan', '2', '22', 1),
(43, 1, 'Kukuh', '5', '23', 1),
(44, 1, 'Dayyan', '5', '23', 1),
(45, 1, 'Kukuh', '4', '24', 1),
(46, 1, 'Dayyan', '4', '24', 1),
(47, 1, 'Kukuh', '3', '25', 1),
(48, 1, 'Dayyan', '3', '25', 1),
(49, 1, 'Kukuh', '3', '26', 1),
(50, 1, 'Dayyan', '3', '26', 1),
(51, 1, 'Kukuh', '3', '27', 1),
(52, 1, 'Dayyan', '3', '27', 1);

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
(2, 'Besar', 2),
(3, 'Sedang', 1);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=421;

--
-- AUTO_INCREMENT for table `responden_sapi`
--
ALTER TABLE `responden_sapi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=161;

--
-- AUTO_INCREMENT for table `responden_skala_ayam`
--
ALTER TABLE `responden_skala_ayam`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

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
