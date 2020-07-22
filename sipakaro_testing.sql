-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 21, 2020 at 08:05 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.0

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
  `id_rasio` int(11) DEFAULT NULL,
  `id_rasio_sapi` int(11) DEFAULT NULL,
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

INSERT INTO `bobot_indikator` (`id`, `kriteria`, `bobot`, `id_rasio`, `id_rasio_sapi`, `C1`, `CR`, `id_section`, `bobot_global_indikator_dimensi`, `bobot_global_indikator_dimensi_entitas`, `id_pengisi`) VALUES
(1, 'RPA', '0.88888888', NULL, NULL, '0', '0', 2, '0', '0', 2),
(2, 'Peternak', '0.11111111', NULL, NULL, '0', '0', 2, '0', '0', 2),
(3, 'Ekonomi', '0.70281976', NULL, NULL, '0', '0', 3, '0', '0', 2),
(4, 'Lingkungan', '0.22246785', NULL, NULL, '0', '0', 3, '0', '0', 2),
(5, 'Sosial', '0.07471238', NULL, NULL, '0', '0', 3, '0', '0', 2),
(6, 'PE1', '0.58652312', NULL, NULL, '0.39273996', '0.43637774', 4, '0.41222004', '0.04580222', 2),
(7, 'PE2', '0.12027355', NULL, NULL, '0.39273996', '0.43637774', 4, '0.08453062', '0.00939229', 2),
(8, 'PE3', '0.24342899', NULL, NULL, '0.39273996', '0.43637774', 4, '0.17108670', '0.01900963', 2),
(9, 'PE4', '0.04977433', NULL, NULL, '0.39273996', '0.43637774', 4, '0.03498238', '0.00388693', 2),
(10, 'PL1', '0.69410589', NULL, NULL, '0.23502300', '0.40521206', 5, '0.15441624', '0.01715736', 2),
(11, 'PL2', '0.23102611', NULL, NULL, '0.23502300', '0.40521206', 5, '0.05139588', '0.00571065', 2),
(12, 'PL3', '0.07486798', NULL, NULL, '0.23502300', '0.40521206', 5, '0.01665572', '0.00185063', 2),
(13, 'PS1', '0.21041343', NULL, NULL, '0.85289247', '0.57241105', 6, '0.01572048', '0.00174672', 2),
(14, 'PS2', '0.12150715', NULL, NULL, '0.85289247', '0.57241105', 6, '0.00907808', '0.00100867', 2),
(15, 'PS3', '0.08003990', NULL, NULL, '0.85289247', '0.57241105', 6, '0.00597997', '0.00066444', 2),
(16, 'PS4', '0.04398340', NULL, NULL, '0.85289247', '0.57241105', 6, '0.00328610', '0.00036512', 2),
(17, 'PS5', '0.08622781', NULL, NULL, '0.85289247', '0.57241105', 6, '0.00644228', '0.00071580', 2),
(18, 'PS6', '0.08899969', NULL, NULL, '0.85289247', '0.57241105', 6, '0.00664937', '0.00073881', 2),
(19, 'PS7', '0.05550160', NULL, NULL, '0.85289247', '0.57241105', 6, '0.00414665', '0.00046073', 2),
(20, 'PS8', '0.10924905', NULL, NULL, '0.85289247', '0.57241105', 6, '0.00816225', '0.00090691', 2),
(21, 'PS9', '0.13492701', NULL, NULL, '0.85289247', '0.57241105', 6, '0.01008071', '0.00112007', 2),
(22, 'PS10', '0.06915091', NULL, NULL, '0.85289247', '0.57241105', 6, '0.00516642', '0.00057404', 2),
(23, 'Ekonomi', '0.65807741', NULL, NULL, '0', '0', 7, '0', '0', 2),
(24, 'Lingkungan', '0.26971072', NULL, NULL, '0', '0', 7, '0', '0', 2),
(25, 'Sosial', '0.07221186', NULL, NULL, '0', '0', 7, '0', '0', 2),
(26, 'RE1', '0.51907408', NULL, NULL, '1.15686200', '1.28540222', 8, '0.34159092', '0.30363637', 2),
(27, 'RE2', '0.15120784', NULL, NULL, '1.15686200', '1.28540222', 8, '0.09950646', '0.08845019', 2),
(28, 'RE3', '0.16790522', NULL, NULL, '1.15686200', '1.28540222', 8, '0.11049463', '0.09821745', 2),
(29, 'RE4', '0.16181284', NULL, NULL, '1.15686200', '1.28540222', 8, '0.10648537', '0.09465366', 2),
(30, 'RL1', '0.67319536', NULL, NULL, '0.19470925', '0.33570561', 9, '0.18156800', '0.16139378', 2),
(31, 'RL2', '0.23846185', NULL, NULL, '0.19470925', '0.33570561', 9, '0.06431571', '0.05716952', 2),
(32, 'RL3', '0.08834277', NULL, NULL, '0.19470925', '0.33570561', 9, '0.02382699', '0.02117955', 2),
(33, 'RS1', '0.83333333', NULL, NULL, '0', '0', 10, '0.06017655', '0.05349027', 2),
(34, 'RS2', '0.16666666', NULL, NULL, '0', '0', 10, '0.01203531', '0.01069805', 2);

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
(1, 'RPA', 'RL1', '1', '20', 2),
(2, 'RPA', 'RL2', '2', '40', 2),
(3, 'RPA', 'RL3', '1', '20', 2),
(4, 'RPA', 'RS1', '2', '40', 2),
(5, 'RPA', 'RS2', '3', '60', 2),
(6, 'RPA', 'RE1', '4', '80', 2),
(7, 'RPA', 'RE2', '5', '100', 2),
(8, 'RPA', 'RE3', '2', '40', 2),
(9, 'RPA', 'RE4', '4', '80', 2),
(10, 'Peternak', 'PL1', '1', '20', 2),
(11, 'Peternak', 'PL2', '2', '40', 2),
(12, 'Peternak', 'PS1', '3', '60', 2),
(13, 'Peternak', 'PS2', '4', '80', 2),
(14, 'Peternak', 'PS3', '5', '100', 2),
(15, 'Peternak', 'PS4', '2', '40', 2),
(16, 'Peternak', 'PS5', '2', '40', 2),
(17, 'Peternak', 'PS6', '4', '80', 2),
(18, 'Peternak', 'PS7', '5', '100', 2),
(19, 'Peternak', 'PS8', '1', '20', 2),
(20, 'Peternak', 'PS9', '2', '40', 2),
(21, 'Peternak', 'PS10', '3', '60', 2),
(22, 'Peternak', 'PE1', '3', '60', 2),
(23, 'Peternak', 'PE2', '4', '80', 2),
(24, 'Peternak', 'PE3', '3', '60', 2),
(25, 'Peternak', 'PE4', '4', '80', 2),
(26, 'Peternak', 'PL3', '4', '80', 2);

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

--
-- Dumping data for table `rekap_skala_sapi`
--

INSERT INTO `rekap_skala_sapi` (`id`, `kode_indikator`, `performansi_lapangan`, `skor_indikator`, `nilai_skala`, `entitas`, `id_pengisi`) VALUES
(1, 'PE1', '1', '1', '16.666666666667', 1, 2),
(2, 'PE2', '0.01', '1', '16.666666666667', 1, 2),
(3, 'PE3', '12', '1', '16.666666666667', 1, 2),
(4, 'PE4', '0.01', '1', '16.666666666667', 1, 2),
(5, 'PL1', '12', '1', '16.666666666667', 1, 2),
(6, 'PL2', '1', '1', '16.666666666667', 1, 2),
(7, 'PL3', '1', '1', '16.666666666667', 1, 2),
(8, 'PS1', '1', '1', '16.666666666667', 1, 2),
(9, 'PS2', '1', '1', '16.666666666667', 1, 2),
(10, 'PS3', '1', '1', '16.666666666667', 1, 2),
(11, 'PS4', '1', '1', '16.666666666667', 1, 2),
(12, 'RE1', '0', '1', '16.666666666667', 2, 2),
(13, 'RE2', '12', '1', '16.666666666667', 2, 2),
(14, 'RL1', '360', '1', '16.666666666667', 2, 2),
(15, 'RL2', '360', '1', '16.666666666667', 2, 2),
(16, 'RL3', '1', '1', '16.666666666667', 2, 2),
(17, 'RS1', '1', '1', '16.666666666667', 2, 2),
(18, 'RS2', '1', '1', '16.666666666667', 2, 2),
(19, 'RS3', '0.01', '1', '16.666666666667', 2, 2),
(20, 'RS4', '0.083333333333333', '1', '16.666666666667', 2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `responden`
--

CREATE TABLE `responden` (
  `id` int(11) NOT NULL,
  `id_pengisi` int(11) NOT NULL,
  `nama_responden` varchar(50) NOT NULL,
  `id_opsi` int(11) DEFAULT NULL,
  `nilai_responden` varchar(10) NOT NULL,
  `kriteria_1` varchar(20) DEFAULT NULL,
  `kriteria_2` varchar(20) DEFAULT NULL,
  `id_section` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `responden`
--

INSERT INTO `responden` (`id`, `id_pengisi`, `nama_responden`, `id_opsi`, `nilai_responden`, `kriteria_1`, `kriteria_2`, `id_section`) VALUES
(1, 2, 'a', NULL, '8', 'RPA', 'Peternak', 2),
(2, 2, 'a', NULL, '8', 'Ekonomi', 'Lingkungan', 3),
(3, 2, 'a', NULL, '6', 'Ekonomi', 'Sosial', 3),
(4, 2, 'a', NULL, '6', 'Lingkungan', 'Sosial', 3),
(5, 2, 'a', NULL, '8', 'PE1', 'PE2', 4),
(6, 2, 'a', NULL, '7', 'PE1', 'PE3', 4),
(7, 2, 'a', NULL, '6', 'PE1', 'PE4', 4),
(8, 2, 'a', NULL, '0.14', 'PE2', 'PE3', 4),
(9, 2, 'a', NULL, '6', 'PE2', 'PE4', 4),
(10, 2, 'a', NULL, '6', 'PE3', 'PE4', 4),
(11, 2, 'a', NULL, '7', 'PL1', 'PL2', 5),
(12, 2, 'a', NULL, '6', 'PL1', 'PL3', 5),
(13, 2, 'a', NULL, '6', 'PL2', 'PL3', 5),
(14, 2, 'a', NULL, '7', 'PS1', 'PS2', 6),
(15, 2, 'a', NULL, '7', 'PS1', 'PS3', 6),
(16, 2, 'a', NULL, '5', 'PS1', 'PS4', 6),
(17, 2, 'a', NULL, '5', 'PS1', 'PS5', 6),
(18, 2, 'a', NULL, '8', 'PS1', 'PS6', 6),
(19, 2, 'a', NULL, '4', 'PS1', 'PS7', 6),
(20, 2, 'a', NULL, '1', 'PS1', 'PS8', 6),
(21, 2, 'a', NULL, '0.2', 'PS1', 'PS9', 6),
(22, 2, 'a', NULL, '6', 'PS1', 'PS10', 6),
(23, 2, 'a', NULL, '6', 'PS2', 'PS3', 6),
(24, 2, 'a', NULL, '6', 'PS2', 'PS4', 6),
(25, 2, 'a', NULL, '0.25', 'PS2', 'PS5', 6),
(26, 2, 'a', NULL, '0.25', 'PS2', 'PS6', 6),
(27, 2, 'a', NULL, '0.33', 'PS2', 'PS7', 6),
(28, 2, 'a', NULL, '6', 'PS2', 'PS8', 6),
(29, 2, 'a', NULL, '4', 'PS2', 'PS9', 6),
(30, 2, 'a', NULL, '0.5', 'PS2', 'PS10', 6),
(31, 2, 'a', NULL, '5', 'PS3', 'PS4', 6),
(32, 2, 'a', NULL, '1', 'PS3', 'PS5', 6),
(33, 2, 'a', NULL, '4', 'PS3', 'PS6', 6),
(34, 2, 'a', NULL, '0.5', 'PS3', 'PS7', 6),
(35, 2, 'a', NULL, '0.25', 'PS3', 'PS8', 6),
(36, 2, 'a', NULL, '1', 'PS3', 'PS9', 6),
(37, 2, 'a', NULL, '5', 'PS3', 'PS10', 6),
(38, 2, 'a', NULL, '3', 'PS4', 'PS5', 6),
(39, 2, 'a', NULL, '0.33', 'PS4', 'PS6', 6),
(40, 2, 'a', NULL, '2', 'PS4', 'PS7', 6),
(41, 2, 'a', NULL, '0.33', 'PS4', 'PS8', 6),
(42, 2, 'a', NULL, '0.5', 'PS4', 'PS9', 6),
(43, 2, 'a', NULL, '0.5', 'PS4', 'PS10', 6),
(44, 2, 'a', NULL, '5', 'PS5', 'PS6', 6),
(45, 2, 'a', NULL, '3', 'PS5', 'PS7', 6),
(46, 2, 'a', NULL, '2', 'PS5', 'PS8', 6),
(47, 2, 'a', NULL, '0.2', 'PS5', 'PS9', 6),
(48, 2, 'a', NULL, '1', 'PS5', 'PS10', 6),
(49, 2, 'a', NULL, '4', 'PS6', 'PS7', 6),
(50, 2, 'a', NULL, '3', 'PS6', 'PS8', 6),
(51, 2, 'a', NULL, '2', 'PS6', 'PS9', 6),
(52, 2, 'a', NULL, '0.2', 'PS6', 'PS10', 6),
(53, 2, 'a', NULL, '2', 'PS7', 'PS8', 6),
(54, 2, 'a', NULL, '1', 'PS7', 'PS9', 6),
(55, 2, 'a', NULL, '0.33', 'PS7', 'PS10', 6),
(56, 2, 'a', NULL, '7', 'PS8', 'PS9', 6),
(57, 2, 'a', NULL, '3', 'PS8', 'PS10', 6),
(58, 2, 'a', NULL, '4', 'PS9', 'PS10', 6),
(59, 2, 'a', NULL, '5', 'Ekonomi', 'Lingkungan', 7),
(60, 2, 'a', NULL, '6', 'Ekonomi', 'Sosial', 7),
(61, 2, 'a', NULL, '7', 'Lingkungan', 'Sosial', 7),
(62, 2, 'a', NULL, '7', 'RE1', 'RE2', 8),
(63, 2, 'a', NULL, '7', 'RE1', 'RE3', 8),
(64, 2, 'a', NULL, '5', 'RE1', 'RE4', 8),
(65, 2, 'a', NULL, '6', 'RE2', 'RE3', 8),
(66, 2, 'a', NULL, '0.17', 'RE2', 'RE4', 8),
(67, 2, 'a', NULL, '6', 'RE3', 'RE4', 8),
(68, 2, 'a', NULL, '6', 'RL1', 'RL2', 9),
(69, 2, 'a', NULL, '5', 'RL1', 'RL3', 9),
(70, 2, 'a', NULL, '5', 'RL2', 'RL3', 9),
(71, 2, 'a', NULL, '5', 'RS1', 'RS2', 10);

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

--
-- Dumping data for table `responden_sapi`
--

INSERT INTO `responden_sapi` (`id`, `id_pengisi`, `nama_responden`, `nilai_responden`, `kriteria_1`, `kriteria_2`, `id_section`) VALUES
(1, 1, 'Dayyan', '0.33', 'Peternak', 'RPH', 2),
(2, 1, 'Dis', '0.33', 'Peternak', 'RPH', 2),
(3, 1, 'Dayyan', '0.33', 'Ekonomi', 'Lingkungan', 3),
(4, 1, 'Dis', '0.33', 'Ekonomi', 'Lingkungan', 3),
(5, 1, 'Dayyan', '0.33', 'Ekonomi', 'Sosial', 3),
(6, 1, 'Dis', '0.33', 'Ekonomi', 'Sosial', 3),
(7, 1, 'Dayyan', '0.33', 'Lingkungan', 'Sosial', 3),
(8, 1, 'Dis', '0.33', 'Lingkungan', 'Sosial', 3),
(9, 1, 'Dayyan', '0.33', 'PE1', 'PE2', 4),
(10, 1, 'Dis', '0.33', 'PE1', 'PE2', 4),
(11, 1, 'Dayyan', '0.33', 'PE1', 'PE3', 4),
(12, 1, 'Dis', '0.33', 'PE1', 'PE3', 4),
(13, 1, 'Dayyan', '0.33', 'PE1', 'PE4', 4),
(14, 1, 'Dis', '0.33', 'PE1', 'PE4', 4),
(15, 1, 'Dayyan', '0.33', 'PE2', 'PE3', 4),
(16, 1, 'Dis', '0.33', 'PE2', 'PE3', 4),
(17, 1, 'Dayyan', '0.33', 'PE2', 'PE4', 4),
(18, 1, 'Dis', '0.33', 'PE2', 'PE4', 4),
(19, 1, 'Dayyan', '0.33', 'PE3', 'PE4', 4),
(20, 1, 'Dis', '0.33', 'PE3', 'PE4', 4),
(21, 1, 'Dayyan', '0.33', 'PL1', 'PL2', 5),
(22, 1, 'Dis', '0.33', 'PL1', 'PL2', 5),
(23, 1, 'Dayyan', '0.33', 'PL1', 'PL3', 5),
(24, 1, 'Dis', '0.33', 'PL1', 'PL3', 5),
(25, 1, 'Dayyan', '0.33', 'PL2', 'PL3', 5),
(26, 1, 'Dis', '0.33', 'PL2', 'PL3', 5),
(27, 1, 'Dayyan', '0.33', 'PS1', 'PS2', 6),
(28, 1, 'Dis', '0.33', 'PS1', 'PS2', 6),
(29, 1, 'Dayyan', '0.33', 'PS1', 'PS3', 6),
(30, 1, 'Dis', '0.33', 'PS1', 'PS3', 6),
(31, 1, 'Dayyan', '0.33', 'PS1', 'PS4', 6),
(32, 1, 'Dis', '0.33', 'PS1', 'PS4', 6),
(33, 1, 'Dayyan', '0.33', 'PS2', 'PS3', 6),
(34, 1, 'Dis', '0.33', 'PS2', 'PS3', 6),
(35, 1, 'Dayyan', '0.33', 'PS2', 'PS4', 6),
(36, 1, 'Dis', '0.33', 'PS2', 'PS4', 6),
(37, 1, 'Dayyan', '0.33', 'PS3', 'PS4', 6),
(38, 1, 'Dis', '0.33', 'PS3', 'PS4', 6),
(39, 1, 'Dayyan', '0.33', 'RE1', 'RE2', 8),
(40, 1, 'Dis', '0.33', 'RE1', 'RE2', 8),
(41, 1, 'Dayyan', '0.33', 'RL1', 'RL2', 9),
(42, 1, 'Dis', '0.33', 'RL1', 'RL2', 9),
(43, 1, 'Dayyan', '0.33', 'RL1', 'RL3', 9),
(44, 1, 'Dis', '0.33', 'RL1', 'RL3', 9),
(45, 1, 'Dayyan', '0.33', 'RL2', 'RL3', 9),
(46, 1, 'Dis', '0.33', 'RL2', 'RL3', 9),
(47, 1, 'Dayyan', '0.33', 'RS1', 'RS2', 10),
(48, 1, 'Dis', '0.33', 'RS1', 'RS2', 10),
(49, 1, 'Dayyan', '0.33', 'RS1', 'RS3', 10),
(50, 1, 'Dis', '0.33', 'RS1', 'RS3', 10),
(51, 1, 'Dayyan', '0.33', 'RS1', 'RS4', 10),
(52, 1, 'Dis', '0.33', 'RS1', 'RS4', 10),
(53, 1, 'Dayyan', '0.33', 'RS2', 'RS3', 10),
(54, 1, 'Dis', '0.33', 'RS2', 'RS3', 10),
(55, 1, 'Dayyan', '0.33', 'RS2', 'RS4', 10),
(56, 1, 'Dis', '0.33', 'RS2', 'RS4', 10),
(57, 1, 'Dayyan', '0.33', 'RS3', 'RS4', 10),
(58, 1, 'Dis', '0.33', 'RS3', 'RS4', 10),
(59, 1, 'Dayyan', '0.33', 'Ekonomi', 'Lingkungan', 7),
(60, 1, 'Dis', '0.33', 'Ekonomi', 'Lingkungan', 7),
(61, 1, 'Dayyan', '0.33', 'Ekonomi', 'Sosial', 7),
(62, 1, 'Dis', '0.33', 'Ekonomi', 'Sosial', 7),
(63, 1, 'Dayyan', '0.33', 'Lingkungan', 'Sosial', 7),
(64, 1, 'Dis', '0.33', 'Lingkungan', 'Sosial', 7),
(65, 1, 'Kukuh', '1', 'Peternak', 'RPH', 2),
(66, 1, 'Dayyan', '1', 'Peternak', 'RPH', 2),
(67, 1, 'Fauzan', '1', 'Peternak', 'RPH', 2),
(68, 1, 'Kukuh', '1', 'Ekonomi', 'Lingkungan', 3),
(69, 1, 'Dayyan', '1', 'Ekonomi', 'Lingkungan', 3),
(70, 1, 'Fauzan', '1', 'Ekonomi', 'Lingkungan', 3),
(71, 1, 'Kukuh', '1', 'Ekonomi', 'Sosial', 3),
(72, 1, 'Dayyan', '1', 'Ekonomi', 'Sosial', 3),
(73, 1, 'Fauzan', '1', 'Ekonomi', 'Sosial', 3),
(74, 1, 'Kukuh', '1', 'Lingkungan', 'Sosial', 3),
(75, 1, 'Dayyan', '1', 'Lingkungan', 'Sosial', 3),
(76, 1, 'Fauzan', '1', 'Lingkungan', 'Sosial', 3),
(77, 1, 'Kukuh', '1', 'PE1', 'PE2', 4),
(78, 1, 'Dayyan', '1', 'PE1', 'PE2', 4),
(79, 1, 'Fauzan', '1', 'PE1', 'PE2', 4),
(80, 1, 'Kukuh', '1', 'PE1', 'PE3', 4),
(81, 1, 'Dayyan', '1', 'PE1', 'PE3', 4),
(82, 1, 'Fauzan', '1', 'PE1', 'PE3', 4),
(83, 1, 'Kukuh', '1', 'PE1', 'PE4', 4),
(84, 1, 'Dayyan', '1', 'PE1', 'PE4', 4),
(85, 1, 'Fauzan', '1', 'PE1', 'PE4', 4),
(86, 1, 'Kukuh', '1', 'PE2', 'PE3', 4),
(87, 1, 'Dayyan', '1', 'PE2', 'PE3', 4),
(88, 1, 'Fauzan', '1', 'PE2', 'PE3', 4),
(89, 1, 'Kukuh', '1', 'PE2', 'PE4', 4),
(90, 1, 'Dayyan', '1', 'PE2', 'PE4', 4),
(91, 1, 'Fauzan', '1', 'PE2', 'PE4', 4),
(92, 1, 'Kukuh', '1', 'PE3', 'PE4', 4),
(93, 1, 'Dayyan', '1', 'PE3', 'PE4', 4),
(94, 1, 'Fauzan', '1', 'PE3', 'PE4', 4),
(95, 1, 'Kukuh', '1', 'PL1', 'PL2', 5),
(96, 1, 'Dayyan', '1', 'PL1', 'PL2', 5),
(97, 1, 'Fauzan', '1', 'PL1', 'PL2', 5),
(98, 1, 'Kukuh', '1', 'PL1', 'PL3', 5),
(99, 1, 'Dayyan', '1', 'PL1', 'PL3', 5),
(100, 1, 'Fauzan', '1', 'PL1', 'PL3', 5),
(101, 1, 'Kukuh', '1', 'PL2', 'PL3', 5),
(102, 1, 'Dayyan', '1', 'PL2', 'PL3', 5),
(103, 1, 'Fauzan', '1', 'PL2', 'PL3', 5),
(104, 1, 'Kukuh', '1', 'PS1', 'PS2', 6),
(105, 1, 'Dayyan', '1', 'PS1', 'PS2', 6),
(106, 1, 'Fauzan', '1', 'PS1', 'PS2', 6),
(107, 1, 'Kukuh', '1', 'PS1', 'PS3', 6),
(108, 1, 'Dayyan', '1', 'PS1', 'PS3', 6),
(109, 1, 'Fauzan', '1', 'PS1', 'PS3', 6),
(110, 1, 'Kukuh', '1', 'PS1', 'PS4', 6),
(111, 1, 'Dayyan', '1', 'PS1', 'PS4', 6),
(112, 1, 'Fauzan', '1', 'PS1', 'PS4', 6),
(113, 1, 'Kukuh', '1', 'PS2', 'PS3', 6),
(114, 1, 'Dayyan', '1', 'PS2', 'PS3', 6),
(115, 1, 'Fauzan', '1', 'PS2', 'PS3', 6),
(116, 1, 'Kukuh', '1', 'PS2', 'PS4', 6),
(117, 1, 'Dayyan', '1', 'PS2', 'PS4', 6),
(118, 1, 'Fauzan', '1', 'PS2', 'PS4', 6),
(119, 1, 'Kukuh', '1', 'PS3', 'PS4', 6),
(120, 1, 'Dayyan', '1', 'PS3', 'PS4', 6),
(121, 1, 'Fauzan', '1', 'PS3', 'PS4', 6),
(122, 1, 'Kukuh', '1', 'Ekonomi', 'Lingkungan', 7),
(123, 1, 'Dayyan', '1', 'Ekonomi', 'Lingkungan', 7),
(124, 1, 'Fauzan', '1', 'Ekonomi', 'Lingkungan', 7),
(125, 1, 'Kukuh', '1', 'Ekonomi', 'Sosial', 7),
(126, 1, 'Dayyan', '1', 'Ekonomi', 'Sosial', 7),
(127, 1, 'Fauzan', '1', 'Ekonomi', 'Sosial', 7),
(128, 1, 'Kukuh', '1', 'Lingkungan', 'Sosial', 7),
(129, 1, 'Dayyan', '1', 'Lingkungan', 'Sosial', 7),
(130, 1, 'Fauzan', '1', 'Lingkungan', 'Sosial', 7),
(131, 1, 'Kukuh', '1', 'RE1', 'RE2', 8),
(132, 1, 'Dayyan', '1', 'RE1', 'RE2', 8),
(133, 1, 'Fauzan', '1', 'RE1', 'RE2', 8),
(134, 1, 'Kukuh', '1', 'RL1', 'RL2', 9),
(135, 1, 'Dayyan', '1', 'RL1', 'RL2', 9),
(136, 1, 'Fauzan', '1', 'RL1', 'RL2', 9),
(137, 1, 'Kukuh', '1', 'RL1', 'RL3', 9),
(138, 1, 'Dayyan', '1', 'RL1', 'RL3', 9),
(139, 1, 'Fauzan', '1', 'RL1', 'RL3', 9),
(140, 1, 'Kukuh', '1', 'RL2', 'RL3', 9),
(141, 1, 'Dayyan', '1', 'RL2', 'RL3', 9),
(142, 1, 'Fauzan', '1', 'RL2', 'RL3', 9),
(143, 1, 'Kukuh', '1', 'RS1', 'RS2', 10),
(144, 1, 'Dayyan', '1', 'RS1', 'RS2', 10),
(145, 1, 'Fauzan', '1', 'RS1', 'RS2', 10),
(146, 1, 'Kukuh', '1', 'RS1', 'RS3', 10),
(147, 1, 'Dayyan', '1', 'RS1', 'RS3', 10),
(148, 1, 'Fauzan', '1', 'RS1', 'RS3', 10),
(149, 1, 'Kukuh', '1', 'RS1', 'RS4', 10),
(150, 1, 'Dayyan', '1', 'RS1', 'RS4', 10),
(151, 1, 'Fauzan', '1', 'RS1', 'RS4', 10),
(152, 1, 'Kukuh', '1', 'RS2', 'RS3', 10),
(153, 1, 'Dayyan', '1', 'RS2', 'RS3', 10),
(154, 1, 'Fauzan', '1', 'RS2', 'RS3', 10),
(155, 1, 'Kukuh', '1', 'RS2', 'RS4', 10),
(156, 1, 'Dayyan', '1', 'RS2', 'RS4', 10),
(157, 1, 'Fauzan', '1', 'RS2', 'RS4', 10),
(158, 1, 'Kukuh', '1', 'RS3', 'RS4', 10),
(159, 1, 'Dayyan', '1', 'RS3', 'RS4', 10),
(160, 1, 'Fauzan', '1', 'RS3', 'RS4', 10);

-- --------------------------------------------------------

--
-- Table structure for table `responden_skala_ayam`
--

CREATE TABLE `responden_skala_ayam` (
  `id` int(11) NOT NULL,
  `id_pengisi` int(11) NOT NULL,
  `nama_responden` varchar(50) NOT NULL,
  `nilai_skala` varchar(2) NOT NULL,
  `indikator` int(11) NOT NULL,
  `entitas` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `responden_skala_ayam`
--

INSERT INTO `responden_skala_ayam` (`id`, `id_pengisi`, `nama_responden`, `nilai_skala`, `indikator`, `entitas`) VALUES
(1, 2, 'aa', '1', 1, 2),
(2, 2, 'aa', '2', 2, 2),
(3, 2, 'aa', '3', 3, 2),
(4, 2, 'aa', '4', 4, 2),
(5, 2, 'aa', '5', 5, 2),
(6, 2, 'aa', '2', 6, 2),
(7, 2, 'aa', '2', 7, 2),
(8, 2, 'aa', '4', 8, 2),
(9, 2, 'aa', '5', 9, 2),
(10, 2, 'aa', '1', 10, 2),
(11, 2, 'aa', '2', 11, 2),
(12, 2, 'aa', '3', 12, 2),
(13, 2, 'aa', '3', 14, 2),
(14, 2, 'aa', '4', 15, 2),
(15, 2, 'aa', '3', 16, 2),
(16, 2, 'aa', '4', 17, 2),
(17, 2, 'aa', '4', 28, 2),
(18, 2, 'aa', '1', 19, 1),
(19, 2, 'aa', '2', 20, 1),
(20, 2, 'aa', '1', 21, 1),
(21, 2, 'aa', '2', 22, 1),
(22, 2, 'aa', '3', 23, 1),
(23, 2, 'aa', '4', 24, 1),
(24, 2, 'aa', '5', 25, 1),
(25, 2, 'aa', '2', 26, 1),
(26, 2, 'aa', '4', 27, 1);

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
(1, 'Sedang', 2);

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
  ADD KEY `id_section` (`id_section`),
  ADD KEY `id_pengisi` (`id_pengisi`),
  ADD KEY `id_rasio` (`id_rasio`),
  ADD KEY `bobot_indikator_ibfk_4` (`id_rasio_sapi`);

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
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_pengisi` (`id_pengisi`);

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
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_indikator` (`id_indikator`);

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
  ADD KEY `id_pengisi` (`id_pengisi`),
  ADD KEY `id_opsi` (`id_opsi`);

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
  ADD PRIMARY KEY (`id`),
  ADD KEY `entitas` (`entitas`),
  ADD KEY `id_pengisi` (`id_pengisi`),
  ADD KEY `indikator` (`indikator`);

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
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_user` (`id_user`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `responden`
--
ALTER TABLE `responden`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT for table `responden_sapi`
--
ALTER TABLE `responden_sapi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=161;

--
-- AUTO_INCREMENT for table `responden_skala_ayam`
--
ALTER TABLE `responden_skala_ayam`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

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
  ADD CONSTRAINT `bobot_indikator_ibfk_1` FOREIGN KEY (`id_section`) REFERENCES `section` (`id`),
  ADD CONSTRAINT `bobot_indikator_ibfk_2` FOREIGN KEY (`id_pengisi`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `bobot_indikator_ibfk_3` FOREIGN KEY (`id_rasio`) REFERENCES `rasio` (`id`),
  ADD CONSTRAINT `bobot_indikator_ibfk_4` FOREIGN KEY (`id_rasio_sapi`) REFERENCES `rasio_sapi` (`id`);

--
-- Constraints for table `hasil_skala_ayam`
--
ALTER TABLE `hasil_skala_ayam`
  ADD CONSTRAINT `hasil_skala_ayam_ibfk_1` FOREIGN KEY (`id_pengisi`) REFERENCES `user` (`id`);

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
-- Constraints for table `opsi_skala_ayam`
--
ALTER TABLE `opsi_skala_ayam`
  ADD CONSTRAINT `opsi_skala_ayam_ibfk_1` FOREIGN KEY (`id_indikator`) REFERENCES `indikator_ayam` (`id_a_i`);

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
  ADD CONSTRAINT `responden_ibfk_2` FOREIGN KEY (`id_pengisi`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `responden_ibfk_3` FOREIGN KEY (`id_opsi`) REFERENCES `opsi_ahp` (`id_opsi_ahp`);

--
-- Constraints for table `responden_sapi`
--
ALTER TABLE `responden_sapi`
  ADD CONSTRAINT `responden_sapi_ibfk_1` FOREIGN KEY (`id_section`) REFERENCES `section_sapi` (`id`),
  ADD CONSTRAINT `responden_sapi_ibfk_2` FOREIGN KEY (`id_pengisi`) REFERENCES `user` (`id`);

--
-- Constraints for table `responden_skala_ayam`
--
ALTER TABLE `responden_skala_ayam`
  ADD CONSTRAINT `responden_skala_ayam_ibfk_1` FOREIGN KEY (`entitas`) REFERENCES `entitas_ayam` (`id_a_e`),
  ADD CONSTRAINT `responden_skala_ayam_ibfk_2` FOREIGN KEY (`id_pengisi`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `responden_skala_ayam_ibfk_3` FOREIGN KEY (`indikator`) REFERENCES `indikator_ayam` (`id_a_i`);

--
-- Constraints for table `ukuran_peternakan_ayam`
--
ALTER TABLE `ukuran_peternakan_ayam`
  ADD CONSTRAINT `ukuran_peternakan_ayam_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `user` (`id`);

--
-- Constraints for table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `user_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `user_role` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
