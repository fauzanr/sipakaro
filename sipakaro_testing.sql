-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 28, 2020 at 06:54 PM
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
(6, 'PE1', '0.09498436', '0.10711435', '0.11901595', 4),
(7, 'PE2', '0.16794856', '0.10711435', '0.11901595', 4),
(8, 'PE3', '0.27233904', '0.10711435', '0.11901595', 4),
(9, 'PE4', '0.46472801', '0.10711435', '0.11901595', 4),
(10, 'PL1', '0.13870296', '0.06992657', '0.12056305', 5),
(11, 'PL2', '0.28577386', '0.06992657', '0.12056305', 5),
(12, 'PL3', '0.57552317', '0.06992657', '0.12056305', 5),
(13, 'PS1', '0.24812030', '0', '0', 6),
(14, 'PS2', '0.75187969', '0', '0', 6),
(15, 'Ekonomi', '0.13870296', '0', '0', 7),
(16, 'Lingkungan', '0.28577386', '0', '0', 7),
(17, 'Sosial', '0.57552317', '0', '0', 7),
(18, 'RE1', '0.09498436', '0.10711435', '0.11901595', 8),
(19, 'RE2', '0.16794856', '0.10711435', '0.11901595', 8),
(20, 'RE3', '0.27233904', '0.10711435', '0.11901595', 8),
(21, 'RE4', '0.46472801', '0.10711435', '0.11901595', 8),
(22, 'RL1', '0.24812030', '0', '0', 9),
(23, 'RL2', '0.75187969', '0', '0', 9),
(24, 'RS1', '0.02831336', '0', '0', 10),
(25, 'RS2', '0.03633917', '0', '0', 10),
(26, 'RS3', '0.04514364', '0', '0', 10),
(27, 'RS4', '0.05489450', '0', '0', 10),
(28, 'RS5', '0.06582041', '0', '0', 10),
(29, 'RS6', '0.07824474', '0', '0', 10),
(30, 'RS7', '0.09264652', '0', '0', 10),
(31, 'RS8', '0.10978058', '0', '0', 10),
(32, 'RS9', '0.13094331', '0', '0', 10),
(33, 'RS10', '0.15867118', '0', '0', 10),
(34, 'RS11', '0.19920252', '0', '0', 10);

-- --------------------------------------------------------

--
-- Table structure for table `bobot_indikator_sapi`
--

CREATE TABLE `bobot_indikator_sapi` (
  `id` int(11) NOT NULL,
  `kriteria` varchar(10) NOT NULL,
  `bobot` varchar(10) NOT NULL,
  `C1` varchar(10) DEFAULT NULL,
  `CR` varchar(10) DEFAULT NULL,
  `id_section` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `bobot_indikator_sapi`
--

INSERT INTO `bobot_indikator_sapi` (`id`, `kriteria`, `bobot`, `C1`, `CR`, `id_section`) VALUES
(1, 'Peternak', '0.24812030', '0', '0', 2),
(2, 'RPH', '0.75187969', '0', '0', 2),
(3, 'Ekonomi', '0.13870296', '0', '0', 3),
(4, 'Lingkungan', '0.28577386', '0', '0', 3),
(5, 'Sosial', '0.57552317', '0', '0', 3),
(6, 'PE1', '0.09498436', '0.10711435', '0.11901595', 4),
(7, 'PE2', '0.16794856', '0.10711435', '0.11901595', 4),
(8, 'PE3', '0.27233904', '0.10711435', '0.11901595', 4),
(9, 'PE4', '0.46472801', '0.10711435', '0.11901595', 4),
(10, 'PL1', '0.13870296', '0.06992657', '0.12056305', 5),
(11, 'PL2', '0.28577386', '0.06992657', '0.12056305', 5),
(12, 'PL3', '0.57552317', '0.06992657', '0.12056305', 5),
(13, 'PS1', '0.09498436', '0.10711435', '0.11901595', 6),
(14, 'PS2', '0.16794856', '0.10711435', '0.11901595', 6),
(15, 'PS3', '0.27233904', '0.10711435', '0.11901595', 6),
(16, 'PS4', '0.46472801', '0.10711435', '0.11901595', 6),
(17, 'Ekonomi', '0.13870296', '0', '0', 7),
(18, 'Lingkungan', '0.28577386', '0', '0', 7),
(19, 'Sosial', '0.57552317', '0', '0', 7),
(20, 'RE1', '0.24812030', '0', '0', 8),
(21, 'RE2', '0.75187969', '0', '0', 8),
(22, 'RL1', '0.13870296', '0.06992657', '0.12056305', 9),
(23, 'RL2', '0.28577386', '0.06992657', '0.12056305', 9),
(24, 'RL3', '0.57552317', '0.06992657', '0.12056305', 9),
(25, 'RS1', '0.09498436', '0.10711435', '0.11901595', 10),
(26, 'RS2', '0.16794856', '0.10711435', '0.11901595', 10),
(27, 'RS3', '0.27233904', '0.10711435', '0.11901595', 10),
(28, 'RS4', '0.46472801', '0.10711435', '0.11901595', 10);

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
  `nilai_konversi` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hasil_skala_ayam`
--

INSERT INTO `hasil_skala_ayam` (`id`, `entitas`, `indikator`, `rata_rata`, `nilai_konversi`) VALUES
(1, 'RPA', 'RL1', '4', '80'),
(2, 'RPA', 'RL2', '4', '80'),
(3, 'RPA', 'RS1', '3', '60'),
(4, 'RPA', 'RS2', '4', '80'),
(5, 'RPA', 'RS3', '2', '40'),
(6, 'RPA', 'RS4', '2', '40'),
(7, 'RPA', 'RS5', '3', '60'),
(8, 'RPA', 'RS6', '1', '20'),
(9, 'RPA', 'RS7', '3', '60'),
(10, 'RPA', 'RS8', '4', '80'),
(11, 'RPA', 'RS9', '2', '40'),
(12, 'RPA', 'RS10', '3', '60'),
(13, 'RPA', 'RS11', '1', '20'),
(14, 'RPA', 'RE1', '2', '40'),
(15, 'RPA', 'RE2', '3', '60'),
(16, 'RPA', 'RE3', '2', '40'),
(17, 'RPA', 'RE4', '3', '60'),
(18, 'Peternak', 'RL1', '4', '80'),
(19, 'Peternak', 'RL2', '4', '80'),
(20, 'Peternak', 'RS1', '4', '80'),
(21, 'Peternak', 'RS2', '3', '60'),
(22, 'Peternak', 'RS3', '3', '60'),
(23, 'Peternak', 'RS4', '4', '80'),
(24, 'Peternak', 'RS5', '2.666', '53.33'),
(25, 'Peternak', 'RS6', '3', '60'),
(26, 'Peternak', 'RS7', '3.333', '66.66'),
(27, 'RPA', 'RL1', '3.2', '64'),
(28, 'RPA', 'RL2', '3.2', '64'),
(29, 'RPA', 'RS1', '2.2', '44'),
(30, 'RPA', 'RS2', '3.4', '68'),
(31, 'RPA', 'RS3', '2.8', '56'),
(32, 'RPA', 'RS4', '1.6', '32'),
(33, 'RPA', 'RS5', '2.8', '56'),
(34, 'RPA', 'RS6', '2.6', '52'),
(35, 'RPA', 'RS7', '2.2', '44'),
(36, 'RPA', 'RS8', '2.8', '56'),
(37, 'RPA', 'RS9', '1.6', '32'),
(38, 'RPA', 'RS10', '2.2', '44'),
(39, 'RPA', 'RS11', '1.4', '28'),
(40, 'RPA', 'RE1', '2.4', '48'),
(41, 'RPA', 'RE2', '3', '60'),
(42, 'RPA', 'RE3', '2', '40'),
(43, 'RPA', 'RE4', '2.4', '48'),
(44, 'Peternak', 'RL1', '3.2', '64'),
(45, 'Peternak', 'RL2', '3.2', '64'),
(46, 'Peternak', 'RS1', '3.6', '72'),
(47, 'Peternak', 'RS2', '2.6', '52'),
(48, 'Peternak', 'RS3', '2.6', '52'),
(49, 'Peternak', 'RS4', '3', '60'),
(50, 'Peternak', 'RS5', '2.6', '52'),
(51, 'Peternak', 'RS6', '3.2', '64'),
(52, 'Peternak', 'RS7', '2.6', '52'),
(53, 'RPA', 'RL1', '3.2', '64'),
(54, 'RPA', 'RL2', '3.2', '64'),
(55, 'RPA', 'RS1', '2.2', '44'),
(56, 'RPA', 'RS2', '3.4', '68'),
(57, 'RPA', 'RS3', '2.8', '56'),
(58, 'RPA', 'RS4', '1.6', '32'),
(59, 'RPA', 'RS5', '2.8', '56'),
(60, 'RPA', 'RS6', '2.6', '52'),
(61, 'RPA', 'RS7', '2.2', '44'),
(62, 'RPA', 'RS8', '2.8', '56'),
(63, 'RPA', 'RS9', '1.6', '32'),
(64, 'RPA', 'RS10', '2.2', '44'),
(65, 'RPA', 'RS11', '1.4', '28'),
(66, 'RPA', 'RE1', '2.4', '48'),
(67, 'RPA', 'RE2', '3', '60'),
(68, 'RPA', 'RE3', '2', '40'),
(69, 'RPA', 'RE4', '2.4', '48'),
(70, 'Peternak', 'RL1', '3.2', '64'),
(71, 'Peternak', 'RL2', '3.2', '64'),
(72, 'Peternak', 'RS1', '3.6', '72'),
(73, 'Peternak', 'RS2', '2.6', '52'),
(74, 'Peternak', 'RS3', '2.6', '52'),
(75, 'Peternak', 'RS4', '3', '60'),
(76, 'Peternak', 'RS5', '2.6', '52'),
(77, 'Peternak', 'RS6', '3.2', '64'),
(78, 'Peternak', 'RS7', '2.6', '52');

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
(1, 'Lingkungan', 'PL1', 'Rata-rata konsumsi air yang dihabiskan untuk 1 ekor ayam', 2),
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
(13, 'Sosial', 'PS11', 'Pertanggungjawaban saat gagal panen', 2),
(14, 'Ekonomi', 'PE1', 'Rata-rata pendapatan yang diperoleh peternak plasma untuk 1 ekor ayam dalam 1 kali\r\nmasa panen', 2),
(15, 'Ekonomi', 'PE2', 'Rata-rata harga DOC untuk 1 ekor', 2),
(16, 'Ekonomi', 'PE3', 'Rata-rata harga pakan untuk 1 ekor ayam dalam 1 kali masa panen', 2),
(17, 'Ekonomi', 'PE4', 'Rata-rata harga obat & vaksin untuk 1 ekor ayam dalam 1 kali masa panen', 2),
(19, 'Lingkungan', 'RL1', 'Konsumsi Air', 1),
(20, 'Lingkungan', 'RL2', 'Konsumsi Listrik', 1),
(21, 'Lingkungan', 'RL3', 'Manajemen Limbah', 1),
(22, 'Sosial', 'RS1', 'Perbandingan pekerja pria dan wanita', 1),
(23, 'Sosial', 'RS2', 'Sertifikasi Halal', 1),
(24, 'Ekonomi', 'RE1', 'Laba', 1),
(25, 'Ekonomi', 'RE2', 'Biaya tenaga kerja', 1),
(26, 'Ekonomi', 'RE3', 'Biaya administrasi/pajak', 1),
(27, 'Ekonomi', 'RE4', 'Biaya pengiriman', 1);

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
(2, 'Buruk', '2', 'Rp.355.63 < X &le; Rp.526.30 ', 20),
(3, 'Cukup', '3', 'Rp.184.96 < X &le; Rp.355.83', 20),
(4, 'Baik', '4', 'Rp.14.29 < X &le; Rp.184.96', 20),
(5, 'Sangat Baik', '5', 'X &le; Rp.14.29', 20);

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
(1, 'Populasi Sapi Potong\r\n', 1, 'B6'),
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
(9, '10', '1.49');

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
  `entitas` int(11) NOT NULL
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
(1, 3, 'A', '0.33', 'RPA', 'Peternak', 2),
(2, 3, 'B', '0.33', 'RPA', 'Peternak', 2),
(3, 3, 'A', '0.33', 'Ekonomi', 'Lingkungan', 3),
(4, 3, 'B', '0.33', 'Ekonomi', 'Lingkungan', 3),
(5, 3, 'A', '0.33', 'Ekonomi', 'Sosial', 3),
(6, 3, 'B', '0.33', 'Ekonomi', 'Sosial', 3),
(7, 3, 'A', '0.33', 'Lingkungan', 'Sosial', 3),
(8, 3, 'B', '0.33', 'Lingkungan', 'Sosial', 3),
(9, 3, 'A', '0.33', 'PE1', 'PE2', 4),
(10, 3, 'B', '0.33', 'PE1', 'PE2', 4),
(11, 3, 'A', '0.33', 'PE1', 'PE3', 4),
(12, 3, 'B', '0.33', 'PE1', 'PE3', 4),
(13, 3, 'A', '0.33', 'PE1', 'PE4', 4),
(14, 3, 'B', '0.33', 'PE1', 'PE4', 4),
(15, 3, 'A', '0.33', 'PE2', 'PE3', 4),
(16, 3, 'B', '0.33', 'PE2', 'PE3', 4),
(17, 3, 'A', '0.33', 'PE2', 'PE4', 4),
(18, 3, 'B', '0.33', 'PE2', 'PE4', 4),
(19, 3, 'A', '0.33', 'PE3', 'PE4', 4),
(20, 3, 'B', '0.33', 'PE3', 'PE4', 4),
(21, 3, 'A', '0.33', 'PL1', 'PL2', 5),
(22, 3, 'B', '0.33', 'PL1', 'PL2', 5),
(23, 3, 'A', '0.33', 'PL1', 'PL3', 5),
(24, 3, 'B', '0.33', 'PL1', 'PL3', 5),
(25, 3, 'A', '0.33', 'PL2', 'PL3', 5),
(26, 3, 'B', '0.33', 'PL2', 'PL3', 5),
(27, 3, 'A', '0.33', 'PS1', 'PS2', 6),
(28, 3, 'B', '0.33', 'PS1', 'PS2', 6),
(29, 3, 'A', '0.33', 'Ekonomi', 'Lingkungan', 7),
(30, 3, 'B', '0.33', 'Ekonomi', 'Lingkungan', 7),
(31, 3, 'A', '0.33', 'Ekonomi', 'Sosial', 7),
(32, 3, 'B', '0.33', 'Ekonomi', 'Sosial', 7),
(33, 3, 'A', '0.33', 'Lingkungan', 'Sosial', 7),
(34, 3, 'B', '0.33', 'Lingkungan', 'Sosial', 7),
(35, 3, 'A', '0.33', 'RE1', 'RE2', 8),
(36, 3, 'B', '0.33', 'RE1', 'RE2', 8),
(37, 3, 'A', '0.33', 'RE1', 'RE3', 8),
(38, 3, 'B', '0.33', 'RE1', 'RE3', 8),
(39, 3, 'A', '0.33', 'RE1', 'RE4', 8),
(40, 3, 'B', '0.33', 'RE1', 'RE4', 8),
(41, 3, 'A', '0.33', 'RE2', 'RE3', 8),
(42, 3, 'B', '0.33', 'RE2', 'RE3', 8),
(43, 3, 'A', '0.33', 'RE2', 'RE4', 8),
(44, 3, 'B', '0.33', 'RE2', 'RE4', 8),
(45, 3, 'A', '0.33', 'RE3', 'RE4', 8),
(46, 3, 'B', '0.33', 'RE3', 'RE4', 8),
(47, 3, 'A', '0.33', 'RL1', 'RL2', 9),
(48, 3, 'B', '0.33', 'RL1', 'RL2', 9),
(49, 3, 'A', '0.33', 'RS1', 'RS2', 10),
(50, 3, 'B', '0.33', 'RS1', 'RS2', 10),
(51, 3, 'A', '0.33', 'RS1', 'RS3', 10),
(52, 3, 'B', '0.33', 'RS1', 'RS3', 10),
(53, 3, 'A', '0.33', 'RS1', 'RS4', 10),
(54, 3, 'B', '0.33', 'RS1', 'RS4', 10),
(55, 3, 'A', '0.33', 'RS1', 'RS5', 10),
(56, 3, 'B', '0.33', 'RS1', 'RS5', 10),
(57, 3, 'A', '0.33', 'RS1', 'RS6', 10),
(58, 3, 'B', '0.33', 'RS1', 'RS6', 10),
(59, 3, 'A', '0.33', 'RS1', 'RS7', 10),
(60, 3, 'B', '0.33', 'RS1', 'RS7', 10),
(61, 3, 'A', '0.33', 'RS1', 'RS8', 10),
(62, 3, 'B', '0.33', 'RS1', 'RS8', 10),
(63, 3, 'A', '0.33', 'RS1', 'RS9', 10),
(64, 3, 'B', '0.33', 'RS1', 'RS9', 10),
(65, 3, 'A', '0.33', 'RS1', 'RS10', 10),
(66, 3, 'B', '0.33', 'RS1', 'RS10', 10),
(67, 3, 'A', '0.33', 'RS1', 'RS11', 10),
(68, 3, 'B', '0.33', 'RS1', 'RS11', 10),
(69, 3, 'A', '0.33', 'RS2', 'RS3', 10),
(70, 3, 'B', '0.33', 'RS2', 'RS3', 10),
(71, 3, 'A', '0.33', 'RS2', 'RS4', 10),
(72, 3, 'B', '0.33', 'RS2', 'RS4', 10),
(73, 3, 'A', '0.33', 'RS2', 'RS5', 10),
(74, 3, 'B', '0.33', 'RS2', 'RS5', 10),
(75, 3, 'A', '0.33', 'RS2', 'RS6', 10),
(76, 3, 'B', '0.33', 'RS2', 'RS6', 10),
(77, 3, 'A', '0.33', 'RS2', 'RS7', 10),
(78, 3, 'B', '0.33', 'RS2', 'RS7', 10),
(79, 3, 'A', '0.33', 'RS2', 'RS8', 10),
(80, 3, 'B', '0.33', 'RS2', 'RS8', 10),
(81, 3, 'A', '0.33', 'RS2', 'RS9', 10),
(82, 3, 'B', '0.33', 'RS2', 'RS9', 10),
(83, 3, 'A', '0.33', 'RS2', 'RS10', 10),
(84, 3, 'B', '0.33', 'RS2', 'RS10', 10),
(85, 3, 'A', '0.33', 'RS2', 'RS11', 10),
(86, 3, 'B', '0.33', 'RS2', 'RS11', 10),
(87, 3, 'A', '0.33', 'RS3', 'RS4', 10),
(88, 3, 'B', '0.33', 'RS3', 'RS4', 10),
(89, 3, 'A', '0.33', 'RS3', 'RS5', 10),
(90, 3, 'B', '0.33', 'RS3', 'RS5', 10),
(91, 3, 'A', '0.33', 'RS3', 'RS6', 10),
(92, 3, 'B', '0.33', 'RS3', 'RS6', 10),
(93, 3, 'A', '0.33', 'RS3', 'RS7', 10),
(94, 3, 'B', '0.33', 'RS3', 'RS7', 10),
(95, 3, 'A', '0.33', 'RS3', 'RS8', 10),
(96, 3, 'B', '0.33', 'RS3', 'RS8', 10),
(97, 3, 'A', '0.33', 'RS3', 'RS9', 10),
(98, 3, 'B', '0.33', 'RS3', 'RS9', 10),
(99, 3, 'A', '0.33', 'RS3', 'RS10', 10),
(100, 3, 'B', '0.33', 'RS3', 'RS10', 10),
(101, 3, 'A', '0.33', 'RS3', 'RS11', 10),
(102, 3, 'B', '0.33', 'RS3', 'RS11', 10),
(103, 3, 'A', '0.33', 'RS4', 'RS5', 10),
(104, 3, 'B', '0.33', 'RS4', 'RS5', 10),
(105, 3, 'A', '0.33', 'RS4', 'RS6', 10),
(106, 3, 'B', '0.33', 'RS4', 'RS6', 10),
(107, 3, 'A', '0.33', 'RS4', 'RS7', 10),
(108, 3, 'B', '0.33', 'RS4', 'RS7', 10),
(109, 3, 'A', '0.33', 'RS4', 'RS8', 10),
(110, 3, 'B', '0.33', 'RS4', 'RS8', 10),
(111, 3, 'A', '0.33', 'RS4', 'RS9', 10),
(112, 3, 'B', '0.33', 'RS4', 'RS9', 10),
(113, 3, 'A', '0.33', 'RS4', 'RS10', 10),
(114, 3, 'B', '0.33', 'RS4', 'RS10', 10),
(115, 3, 'A', '0.33', 'RS4', 'RS11', 10),
(116, 3, 'B', '0.33', 'RS4', 'RS11', 10),
(117, 3, 'A', '0.33', 'RS5', 'RS6', 10),
(118, 3, 'B', '0.33', 'RS5', 'RS6', 10),
(119, 3, 'A', '0.33', 'RS5', 'RS7', 10),
(120, 3, 'B', '0.33', 'RS5', 'RS7', 10),
(121, 3, 'A', '0.33', 'RS5', 'RS8', 10),
(122, 3, 'B', '0.33', 'RS5', 'RS8', 10),
(123, 3, 'A', '0.33', 'RS5', 'RS9', 10),
(124, 3, 'B', '0.33', 'RS5', 'RS9', 10),
(125, 3, 'A', '0.33', 'RS5', 'RS10', 10),
(126, 3, 'B', '0.33', 'RS5', 'RS10', 10),
(127, 3, 'A', '0.33', 'RS5', 'RS11', 10),
(128, 3, 'B', '0.33', 'RS5', 'RS11', 10),
(129, 3, 'A', '0.33', 'RS6', 'RS7', 10),
(130, 3, 'B', '0.33', 'RS6', 'RS7', 10),
(131, 3, 'A', '0.33', 'RS6', 'RS8', 10),
(132, 3, 'B', '0.33', 'RS6', 'RS8', 10),
(133, 3, 'A', '0.33', 'RS6', 'RS9', 10),
(134, 3, 'B', '0.33', 'RS6', 'RS9', 10),
(135, 3, 'A', '0.33', 'RS6', 'RS10', 10),
(136, 3, 'B', '0.33', 'RS6', 'RS10', 10),
(137, 3, 'A', '0.33', 'RS6', 'RS11', 10),
(138, 3, 'B', '0.33', 'RS6', 'RS11', 10),
(139, 3, 'A', '0.33', 'RS7', 'RS8', 10),
(140, 3, 'B', '0.33', 'RS7', 'RS8', 10),
(141, 3, 'A', '0.33', 'RS7', 'RS9', 10),
(142, 3, 'B', '0.33', 'RS7', 'RS9', 10),
(143, 3, 'A', '0.33', 'RS7', 'RS10', 10),
(144, 3, 'B', '0.33', 'RS7', 'RS10', 10),
(145, 3, 'A', '0.33', 'RS7', 'RS11', 10),
(146, 3, 'B', '0.33', 'RS7', 'RS11', 10),
(147, 3, 'A', '0.33', 'RS8', 'RS9', 10),
(148, 3, 'B', '0.33', 'RS8', 'RS9', 10),
(149, 3, 'A', '0.33', 'RS8', 'RS10', 10),
(150, 3, 'B', '0.33', 'RS8', 'RS10', 10),
(151, 3, 'A', '0.33', 'RS8', 'RS11', 10),
(152, 3, 'B', '0.33', 'RS8', 'RS11', 10),
(153, 3, 'A', '0.33', 'RS9', 'RS10', 10),
(154, 3, 'B', '0.33', 'RS9', 'RS10', 10),
(155, 3, 'A', '0.33', 'RS9', 'RS11', 10),
(156, 3, 'B', '0.33', 'RS9', 'RS11', 10),
(157, 3, 'A', '0.33', 'RS10', 'RS11', 10),
(158, 3, 'B', '0.33', 'RS10', 'RS11', 10);

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
(1, 1, 'Kukuh', '3', '19', 2),
(2, 1, 'Dayyan', '4', '19', 2),
(3, 1, 'Fauzan', '5', '19', 2),
(4, 1, 'Kukuh', '4', '20', 2),
(5, 1, 'Dayyan', '4', '20', 2),
(6, 1, 'Fauzan', '4', '20', 2),
(7, 1, 'Kukuh', '4', '21', 2),
(8, 1, 'Dayyan', '4', '21', 2),
(9, 1, 'Fauzan', '4', '21', 2),
(10, 1, 'Kukuh', '3', '22', 2),
(11, 1, 'Dayyan', '3', '22', 2),
(12, 1, 'Fauzan', '3', '22', 2),
(13, 1, 'Kukuh', '3', '25', 2),
(14, 1, 'Dayyan', '3', '25', 2),
(15, 1, 'Fauzan', '2', '25', 2),
(16, 1, 'Kukuh', '2', '26', 2),
(17, 1, 'Dayyan', '3', '26', 2),
(18, 1, 'Fauzan', '4', '26', 2),
(19, 1, 'Kukuh', '3', '27', 2),
(20, 1, 'Dayyan', '3', '27', 2),
(21, 1, 'Fauzan', '4', '27', 2),
(22, 1, 'Kukuh', '3', '23', 2),
(23, 1, 'Dayyan', '3', '23', 2),
(24, 1, 'Fauzan', '3', '23', 2),
(25, 1, 'Kukuh', '4', '24', 2),
(26, 1, 'Dayyan', '4', '24', 2),
(27, 1, 'Fauzan', '4', '24', 2),
(28, 1, 'Kukuh', '3', '1', 1),
(29, 1, 'Dayyan', '4', '1', 1),
(30, 1, 'Fauzan', '5', '1', 1),
(31, 1, 'Kukuh', '4', '2', 1),
(32, 1, 'Dayyan', '4', '2', 1),
(33, 1, 'Fauzan', '4', '2', 1),
(34, 1, 'Kukuh', '3', '3', 1),
(35, 1, 'Dayyan', '3', '3', 1),
(36, 1, 'Fauzan', '3', '3', 1),
(37, 1, 'Kukuh', '4', '4', 1),
(38, 1, 'Dayyan', '4', '4', 1),
(39, 1, 'Fauzan', '4', '4', 1),
(40, 1, 'Kukuh', '2', '5', 1),
(41, 1, 'Dayyan', '2', '5', 1),
(42, 1, 'Fauzan', '2', '5', 1),
(43, 1, 'Kukuh', '2', '6', 1),
(44, 1, 'Dayyan', '2', '6', 1),
(45, 1, 'Fauzan', '2', '6', 1),
(46, 1, 'Kukuh', '3', '7', 1),
(47, 1, 'Dayyan', '3', '7', 1),
(48, 1, 'Fauzan', '3', '7', 1),
(49, 1, 'Kukuh', '1', '8', 1),
(50, 1, 'Dayyan', '1', '8', 1),
(51, 1, 'Fauzan', '1', '8', 1),
(52, 1, 'Kukuh', '3', '9', 1),
(53, 1, 'Dayyan', '3', '9', 1),
(54, 1, 'Fauzan', '3', '9', 1),
(55, 1, 'Kukuh', '4', '10', 1),
(56, 1, 'Dayyan', '4', '10', 1),
(57, 1, 'Fauzan', '4', '10', 1),
(58, 1, 'Kukuh', '2', '11', 1),
(59, 1, 'Dayyan', '2', '11', 1),
(60, 1, 'Fauzan', '2', '11', 1),
(61, 1, 'Kukuh', '3', '12', 1),
(62, 1, 'Dayyan', '3', '12', 1),
(63, 1, 'Fauzan', '3', '12', 1),
(64, 1, 'Kukuh', '1', '13', 1),
(65, 1, 'Dayyan', '1', '13', 1),
(66, 1, 'Fauzan', '1', '13', 1),
(67, 1, 'Kukuh', '2', '14', 1),
(68, 1, 'Dayyan', '2', '14', 1),
(69, 1, 'Fauzan', '2', '14', 1),
(70, 1, 'Kukuh', '3', '15', 1),
(71, 1, 'Dayyan', '3', '15', 1),
(72, 1, 'Fauzan', '3', '15', 1),
(73, 1, 'Kukuh', '2', '16', 1),
(74, 1, 'Dayyan', '2', '16', 1),
(75, 1, 'Fauzan', '2', '16', 1),
(76, 1, 'Kukuh', '3', '17', 1),
(77, 1, 'Dayyan', '3', '17', 1),
(78, 1, 'Fauzan', '3', '17', 1),
(79, 2, 'A', '1', '19', 2),
(80, 2, 'B', '3', '19', 2),
(81, 2, 'A', '4', '21', 2),
(82, 2, 'B', '2', '21', 2),
(83, 2, 'A', '2', '20', 2),
(84, 2, 'B', '2', '20', 2),
(85, 2, 'A', '1', '22', 2),
(86, 2, 'B', '3', '22', 2),
(87, 2, 'A', '2', '23', 2),
(88, 2, 'B', '2', '23', 2),
(89, 2, 'A', '1', '24', 2),
(90, 2, 'B', '2', '24', 2),
(91, 2, 'A', '3', '25', 2),
(92, 2, 'B', '2', '25', 2),
(93, 2, 'A', '4', '26', 2),
(94, 2, 'B', '3', '26', 2),
(95, 2, 'A', '1', '27', 2),
(96, 2, 'B', '2', '27', 2),
(97, 2, 'A', '2', '1', 1),
(98, 2, 'B', '2', '1', 1),
(99, 2, 'A', '2', '2', 1),
(100, 2, 'B', '2', '2', 1),
(101, 2, 'A', '1', '3', 1),
(102, 2, 'B', '1', '3', 1),
(103, 2, 'A', '3', '4', 1),
(104, 2, 'B', '2', '4', 1),
(105, 2, 'A', '4', '5', 1),
(106, 2, 'B', '4', '5', 1),
(107, 2, 'A', '1', '6', 1),
(108, 2, 'B', '1', '6', 1),
(109, 2, 'A', '2', '7', 1),
(110, 2, 'B', '3', '7', 1),
(111, 2, 'A', '5', '8', 1),
(112, 2, 'B', '5', '8', 1),
(113, 2, 'A', '1', '9', 1),
(114, 2, 'B', '1', '9', 1),
(115, 2, 'A', '1', '10', 1),
(116, 2, 'B', '1', '10', 1),
(117, 2, 'A', '1', '11', 1),
(118, 2, 'B', '1', '11', 1),
(119, 2, 'A', '1', '12', 1),
(120, 2, 'B', '1', '12', 1),
(121, 2, 'A', '2', '13', 1),
(122, 2, 'B', '2', '13', 1),
(123, 2, 'A', '3', '14', 1),
(124, 2, 'B', '3', '14', 1),
(125, 2, 'A', '3', '15', 1),
(126, 2, 'B', '3', '15', 1),
(127, 2, 'A', '2', '16', 1),
(128, 2, 'B', '2', '16', 1),
(129, 2, 'A', '2', '17', 1),
(130, 2, 'B', '1', '17', 1);

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
-- Indexes for table `bobot_indikator_sapi`
--
ALTER TABLE `bobot_indikator_sapi`
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
  ADD KEY `entitas` (`entitas`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
--
-- AUTO_INCREMENT for table `bobot_indikator_sapi`
--
ALTER TABLE `bobot_indikator_sapi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;
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
-- AUTO_INCREMENT for table `opsi_skala_ayam`
--
ALTER TABLE `opsi_skala_ayam`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `opsi_skala_sapi`
--
ALTER TABLE `opsi_skala_sapi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;
--
-- AUTO_INCREMENT for table `rasio`
--
ALTER TABLE `rasio`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=159;
--
-- AUTO_INCREMENT for table `responden_sapi`
--
ALTER TABLE `responden_sapi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `responden_skala_ayam`
--
ALTER TABLE `responden_skala_ayam`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=131;
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
-- Constraints for table `bobot_indikator_sapi`
--
ALTER TABLE `bobot_indikator_sapi`
  ADD CONSTRAINT `bobot_indikator_sapi_ibfk_1` FOREIGN KEY (`id_section`) REFERENCES `section_sapi` (`id`);

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
  ADD CONSTRAINT `rekap_skala_sapi_ibfk_2` FOREIGN KEY (`entitas`) REFERENCES `entitas_sapi` (`id_s_e`);

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
