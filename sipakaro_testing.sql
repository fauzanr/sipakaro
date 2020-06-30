-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 30, 2020 at 08:56 AM
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
  `id_section` int(11) NOT NULL,
  `bobot_global_indikator_dimensi` varchar(10) DEFAULT NULL,
  `bobot_global_indikator_dimensi_entitas` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `bobot_indikator`
--

INSERT INTO `bobot_indikator` (`id`, `kriteria`, `bobot`, `C1`, `CR`, `id_section`, `bobot_global_indikator_dimensi`, `bobot_global_indikator_dimensi_entitas`) VALUES
(1, 'RPA', '0.21361613', '0', '0', 2, '0', '0'),
(2, 'Peternak', '0.78638386', '0', '0', 2, '0', '0'),
(3, 'Ekonomi', '0.22870281', '0', '0', 3, '0', '0'),
(4, 'Lingkungan', '0.31681192', '0', '0', 3, '0', '0'),
(5, 'Sosial', '0.45448525', '0', '0', 3, '0', '0'),
(6, 'PE1', '0.09498436', '0.10711435', '0.11901595', 4, '0.02172319', '0.01708276'),
(7, 'PE2', '0.16794856', '0.10711435', '0.11901595', 4, '0.03841030', '0.03020524'),
(8, 'PE3', '0.27233904', '0.10711435', '0.11901595', 4, '0.06228470', '0.04897968'),
(9, 'PE4', '0.46472801', '0.10711435', '0.11901595', 4, '0.10628460', '0.08358049'),
(10, 'PL1', '0.24812030', '0', '0', 5, '0.07860746', '0.06181564'),
(11, 'PL2', '0.75187969', '0', '0', 5, '0.23820445', '0.18732013'),
(12, 'PS1', '0.02831336', '0', '0', 6, '0.01286800', '0.01011919'),
(13, 'PS2', '0.03633917', '0', '0', 6, '0.01651562', '0.01298761'),
(14, 'PS3', '0.04514364', '0', '0', 6, '0.02051712', '0.01613433'),
(15, 'PS4', '0.05489450', '0', '0', 6, '0.02494874', '0.01961928'),
(16, 'PS5', '0.06582041', '0', '0', 6, '0.02991440', '0.02352420'),
(17, 'PS6', '0.07824474', '0', '0', 6, '0.03556108', '0.02796466'),
(18, 'PS7', '0.09264652', '0', '0', 6, '0.04210648', '0.03311185'),
(19, 'PS8', '0.10978058', '0', '0', 6, '0.04989365', '0.03923556'),
(20, 'PS9', '0.13094331', '0', '0', 6, '0.05951180', '0.04679912'),
(21, 'PS10', '0.15867118', '0', '0', 6, '0.07211371', '0.05670906'),
(22, 'PS11', '0.19920252', '0', '0', 6, '0.09053460', '0.07119495'),
(23, 'Ekonomi', '0.13870296', '0', '0', 7, '0', '0'),
(24, 'Lingkungan', '0.28577386', '0', '0', 7, '0', '0'),
(25, 'Sosial', '0.57552317', '0', '0', 7, '0', '0'),
(26, 'RE1', '0.09498436', '0.10711435', '0.11901595', 8, '0.02172319', '0.00464042'),
(27, 'RE2', '0.16794856', '0.10711435', '0.11901595', 8, '0.03841030', '0.00820506'),
(28, 'RE3', '0.27233904', '0.10711435', '0.11901595', 8, '0.06228470', '0.01330501'),
(29, 'RE4', '0.46472801', '0.10711435', '0.11901595', 8, '0.10628460', '0.02270410'),
(30, 'RL1', '0.13870296', '0.06992657', '0.12056305', 9, '0.04394275', '0.00938688'),
(31, 'RL2', '0.28577386', '0.06992657', '0.12056305', 9, '0.09053656', '0.01934007'),
(32, 'RL3', '0.57552317', '0.06992657', '0.12056305', 9, '0.18233260', '0.03894918'),
(33, 'RS1', '0.24812030', '0', '0', 10, '0.11276701', '0.02408885'),
(34, 'RS2', '0.75187969', '0', '0', 10, '0.34171823', '0.07299652');

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
(1, 'RPA', 'RL1', '1.5', '30'),
(2, 'RPA', 'RL2', '1.5', '30'),
(3, 'RPA', 'RL3', '1.5', '30'),
(4, 'RPA', 'RS1', '3', '60'),
(5, 'RPA', 'RS2', '2.5', '50'),
(6, 'RPA', 'RE1', '2.5', '50'),
(7, 'RPA', 'RE2', '2.5', '50'),
(8, 'RPA', 'RE3', '2.5', '50'),
(9, 'RPA', 'RE4', '2.5', '50'),
(10, 'Peternak', 'PL1', '4', '80'),
(11, 'Peternak', 'PL2', '5', '100'),
(12, 'Peternak', 'PS1', '3', '60'),
(13, 'Peternak', 'PS2', '2', '40'),
(14, 'Peternak', 'PS3', '1', '20'),
(15, 'Peternak', 'PS4', '3', '60'),
(16, 'Peternak', 'PS5', '4', '80'),
(17, 'Peternak', 'PS6', '4', '80'),
(18, 'Peternak', 'PS7', '4', '80'),
(19, 'Peternak', 'PS8', '4', '80'),
(20, 'Peternak', 'PS9', '3', '60'),
(21, 'Peternak', 'PS10', '4', '80'),
(22, 'Peternak', 'PS11', '4', '80'),
(23, 'Peternak', 'PE1', '4', '80'),
(24, 'Peternak', 'PE2', '4', '80'),
(25, 'Peternak', 'PE3', '4', '80'),
(26, 'Peternak', 'PE4', '4', '80');

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
<<<<<<< HEAD
(1, 1, 'Pak Budi', '1', 'RPA', 'Peternak', 2),
(2, 1, 'Pak Tiyo', '1', 'RPA', 'Peternak', 2),
(3, 1, 'Pak Samuel', '1', 'RPA', 'Peternak', 2),
(4, 1, 'Pak Budi', '1', 'Ekonomi', 'Lingkungan', 3),
(5, 1, 'Pak Tiyo', '1', 'Ekonomi', 'Lingkungan', 3),
(6, 1, 'Pak Samuel', '1', 'Ekonomi', 'Lingkungan', 3),
(7, 1, 'Pak Budi', '1', 'Ekonomi', 'Sosial', 3),
(8, 1, 'Pak Tiyo', '1', 'Ekonomi', 'Sosial', 3),
(9, 1, 'Pak Samuel', '1', 'Ekonomi', 'Sosial', 3),
(10, 1, 'Pak Budi', '1', 'Lingkungan', 'Sosial', 3),
(11, 1, 'Pak Tiyo', '1', 'Lingkungan', 'Sosial', 3),
(12, 1, 'Pak Samuel', '1', 'Lingkungan', 'Sosial', 3),
(13, 1, 'Pak Budi', '1', 'PE1', 'PE2', 4),
(14, 1, 'Pak Tiyo', '1', 'PE1', 'PE2', 4),
(15, 1, 'Pak Samuel', '1', 'PE1', 'PE2', 4),
(16, 1, 'Pak Budi', '1', 'PE1', 'PE3', 4),
(17, 1, 'Pak Tiyo', '1', 'PE1', 'PE3', 4),
(18, 1, 'Pak Samuel', '1', 'PE1', 'PE3', 4),
(19, 1, 'Pak Budi', '1', 'PE1', 'PE4', 4),
(20, 1, 'Pak Tiyo', '1', 'PE1', 'PE4', 4),
(21, 1, 'Pak Samuel', '1', 'PE1', 'PE4', 4),
(22, 1, 'Pak Budi', '1', 'PE2', 'PE3', 4),
(23, 1, 'Pak Tiyo', '1', 'PE2', 'PE3', 4),
(24, 1, 'Pak Samuel', '1', 'PE2', 'PE3', 4),
(25, 1, 'Pak Budi', '1', 'PE2', 'PE4', 4),
(26, 1, 'Pak Tiyo', '1', 'PE2', 'PE4', 4),
(27, 1, 'Pak Samuel', '1', 'PE2', 'PE4', 4),
(28, 1, 'Pak Budi', '1', 'PE3', 'PE4', 4),
(29, 1, 'Pak Tiyo', '1', 'PE3', 'PE4', 4),
(30, 1, 'Pak Samuel', '1', 'PE3', 'PE4', 4),
(31, 1, 'Pak Budi', '1', 'PL1', 'PL2', 5),
(32, 1, 'Pak Tiyo', '1', 'PL1', 'PL2', 5),
(33, 1, 'Pak Samuel', '1', 'PL1', 'PL2', 5),
(34, 1, 'Pak Budi', '1', 'PS1', 'PS2', 6),
(35, 1, 'Pak Tiyo', '1', 'PS1', 'PS2', 6),
(36, 1, 'Pak Samuel', '1', 'PS1', 'PS2', 6),
(37, 1, 'Pak Budi', '1', 'PS1', 'PS3', 6),
(38, 1, 'Pak Tiyo', '1', 'PS1', 'PS3', 6),
(39, 1, 'Pak Samuel', '1', 'PS1', 'PS3', 6),
(40, 1, 'Pak Budi', '1', 'PS1', 'PS4', 6),
(41, 1, 'Pak Tiyo', '1', 'PS1', 'PS4', 6),
(42, 1, 'Pak Samuel', '1', 'PS1', 'PS4', 6),
(43, 1, 'Pak Budi', '1', 'PS1', 'PS5', 6),
(44, 1, 'Pak Tiyo', '1', 'PS1', 'PS5', 6),
(45, 1, 'Pak Samuel', '1', 'PS1', 'PS5', 6),
(46, 1, 'Pak Budi', '1', 'PS1', 'PS6', 6),
(47, 1, 'Pak Tiyo', '1', 'PS1', 'PS6', 6),
(48, 1, 'Pak Samuel', '1', 'PS1', 'PS6', 6),
(49, 1, 'Pak Budi', '1', 'PS1', 'PS7', 6),
(50, 1, 'Pak Tiyo', '1', 'PS1', 'PS7', 6),
(51, 1, 'Pak Samuel', '1', 'PS1', 'PS7', 6),
(52, 1, 'Pak Budi', '1', 'PS1', 'PS8', 6),
(53, 1, 'Pak Tiyo', '1', 'PS1', 'PS8', 6),
(54, 1, 'Pak Samuel', '1', 'PS1', 'PS8', 6),
(55, 1, 'Pak Budi', '1', 'PS1', 'PS9', 6),
(56, 1, 'Pak Tiyo', '1', 'PS1', 'PS9', 6),
(57, 1, 'Pak Samuel', '1', 'PS1', 'PS9', 6),
(58, 1, 'Pak Budi', '1', 'PS1', 'PS10', 6),
(59, 1, 'Pak Tiyo', '1', 'PS1', 'PS10', 6),
(60, 1, 'Pak Samuel', '1', 'PS1', 'PS10', 6),
(61, 1, 'Pak Budi', '1', 'PS2', 'PS3', 6),
(62, 1, 'Pak Tiyo', '1', 'PS2', 'PS3', 6),
(63, 1, 'Pak Samuel', '1', 'PS2', 'PS3', 6),
(64, 1, 'Pak Budi', '1', 'PS2', 'PS4', 6),
(65, 1, 'Pak Tiyo', '1', 'PS2', 'PS4', 6),
(66, 1, 'Pak Samuel', '1', 'PS2', 'PS4', 6),
(67, 1, 'Pak Budi', '1', 'PS2', 'PS5', 6),
(68, 1, 'Pak Tiyo', '1', 'PS2', 'PS5', 6),
(69, 1, 'Pak Samuel', '1', 'PS2', 'PS5', 6),
(70, 1, 'Pak Budi', '1', 'PS2', 'PS6', 6),
(71, 1, 'Pak Tiyo', '1', 'PS2', 'PS6', 6),
(72, 1, 'Pak Samuel', '1', 'PS2', 'PS6', 6),
(73, 1, 'Pak Budi', '1', 'PS2', 'PS7', 6),
(74, 1, 'Pak Tiyo', '1', 'PS2', 'PS7', 6),
(75, 1, 'Pak Samuel', '1', 'PS2', 'PS7', 6),
(76, 1, 'Pak Budi', '1', 'PS2', 'PS8', 6),
(77, 1, 'Pak Tiyo', '1', 'PS2', 'PS8', 6),
(78, 1, 'Pak Samuel', '1', 'PS2', 'PS8', 6),
(79, 1, 'Pak Budi', '1', 'PS2', 'PS9', 6),
(80, 1, 'Pak Tiyo', '1', 'PS2', 'PS9', 6),
(81, 1, 'Pak Samuel', '1', 'PS2', 'PS9', 6),
(82, 1, 'Pak Budi', '1', 'PS2', 'PS10', 6),
(83, 1, 'Pak Tiyo', '1', 'PS2', 'PS10', 6),
(84, 1, 'Pak Samuel', '1', 'PS2', 'PS10', 6),
(85, 1, 'Pak Budi', '1', 'PS3', 'PS4', 6),
(86, 1, 'Pak Tiyo', '1', 'PS3', 'PS4', 6),
(87, 1, 'Pak Samuel', '1', 'PS3', 'PS4', 6),
(88, 1, 'Pak Budi', '1', 'PS3', 'PS5', 6),
(89, 1, 'Pak Tiyo', '1', 'PS3', 'PS5', 6),
(90, 1, 'Pak Samuel', '1', 'PS3', 'PS5', 6),
(91, 1, 'Pak Budi', '1', 'PS3', 'PS6', 6),
(92, 1, 'Pak Tiyo', '1', 'PS3', 'PS6', 6),
(93, 1, 'Pak Samuel', '1', 'PS3', 'PS6', 6),
(94, 1, 'Pak Budi', '1', 'PS3', 'PS7', 6),
(95, 1, 'Pak Tiyo', '1', 'PS3', 'PS7', 6),
(96, 1, 'Pak Samuel', '1', 'PS3', 'PS7', 6),
(97, 1, 'Pak Budi', '1', 'PS3', 'PS8', 6),
(98, 1, 'Pak Tiyo', '1', 'PS3', 'PS8', 6),
(99, 1, 'Pak Samuel', '1', 'PS3', 'PS8', 6),
(100, 1, 'Pak Budi', '1', 'PS3', 'PS9', 6),
(101, 1, 'Pak Tiyo', '1', 'PS3', 'PS9', 6),
(102, 1, 'Pak Samuel', '1', 'PS3', 'PS9', 6),
(103, 1, 'Pak Budi', '1', 'PS3', 'PS10', 6),
(104, 1, 'Pak Tiyo', '1', 'PS3', 'PS10', 6),
(105, 1, 'Pak Samuel', '1', 'PS3', 'PS10', 6),
(106, 1, 'Pak Budi', '1', 'PS4', 'PS5', 6),
(107, 1, 'Pak Tiyo', '1', 'PS4', 'PS5', 6),
(108, 1, 'Pak Samuel', '1', 'PS4', 'PS5', 6),
(109, 1, 'Pak Budi', '1', 'PS4', 'PS6', 6),
(110, 1, 'Pak Tiyo', '1', 'PS4', 'PS6', 6),
(111, 1, 'Pak Samuel', '1', 'PS4', 'PS6', 6),
(112, 1, 'Pak Budi', '1', 'PS4', 'PS7', 6),
(113, 1, 'Pak Tiyo', '1', 'PS4', 'PS7', 6),
(114, 1, 'Pak Samuel', '1', 'PS4', 'PS7', 6),
(115, 1, 'Pak Budi', '1', 'PS4', 'PS8', 6),
(116, 1, 'Pak Tiyo', '1', 'PS4', 'PS8', 6),
(117, 1, 'Pak Samuel', '1', 'PS4', 'PS8', 6),
(118, 1, 'Pak Budi', '1', 'PS4', 'PS9', 6),
(119, 1, 'Pak Tiyo', '1', 'PS4', 'PS9', 6),
(120, 1, 'Pak Samuel', '1', 'PS4', 'PS9', 6),
(121, 1, 'Pak Budi', '1', 'PS4', 'PS10', 6),
(122, 1, 'Pak Tiyo', '1', 'PS4', 'PS10', 6),
(123, 1, 'Pak Samuel', '1', 'PS4', 'PS10', 6),
(124, 1, 'Pak Budi', '1', 'PS5', 'PS6', 6),
(125, 1, 'Pak Tiyo', '1', 'PS5', 'PS6', 6),
(126, 1, 'Pak Samuel', '1', 'PS5', 'PS6', 6),
(127, 1, 'Pak Budi', '1', 'PS5', 'PS7', 6),
(128, 1, 'Pak Tiyo', '1', 'PS5', 'PS7', 6),
(129, 1, 'Pak Samuel', '1', 'PS5', 'PS7', 6),
(130, 1, 'Pak Budi', '1', 'PS5', 'PS8', 6),
(131, 1, 'Pak Tiyo', '1', 'PS5', 'PS8', 6),
(132, 1, 'Pak Samuel', '1', 'PS5', 'PS8', 6),
(133, 1, 'Pak Budi', '1', 'PS5', 'PS9', 6),
(134, 1, 'Pak Tiyo', '1', 'PS5', 'PS9', 6),
(135, 1, 'Pak Samuel', '1', 'PS5', 'PS9', 6),
(136, 1, 'Pak Budi', '1', 'PS5', 'PS10', 6),
(137, 1, 'Pak Tiyo', '1', 'PS5', 'PS10', 6),
(138, 1, 'Pak Samuel', '1', 'PS5', 'PS10', 6),
(139, 1, 'Pak Budi', '1', 'PS6', 'PS7', 6),
(140, 1, 'Pak Tiyo', '1', 'PS6', 'PS7', 6),
(141, 1, 'Pak Samuel', '1', 'PS6', 'PS7', 6),
(142, 1, 'Pak Budi', '1', 'PS6', 'PS8', 6),
(143, 1, 'Pak Tiyo', '1', 'PS6', 'PS8', 6),
(144, 1, 'Pak Samuel', '1', 'PS6', 'PS8', 6),
(145, 1, 'Pak Budi', '1', 'PS6', 'PS9', 6),
(146, 1, 'Pak Tiyo', '1', 'PS6', 'PS9', 6),
(147, 1, 'Pak Samuel', '1', 'PS6', 'PS9', 6),
(148, 1, 'Pak Budi', '1', 'PS6', 'PS10', 6),
(149, 1, 'Pak Tiyo', '1', 'PS6', 'PS10', 6),
(150, 1, 'Pak Samuel', '1', 'PS6', 'PS10', 6),
(151, 1, 'Pak Budi', '1', 'PS7', 'PS8', 6),
(152, 1, 'Pak Tiyo', '1', 'PS7', 'PS8', 6),
(153, 1, 'Pak Samuel', '1', 'PS7', 'PS8', 6),
(154, 1, 'Pak Budi', '1', 'PS7', 'PS9', 6),
(155, 1, 'Pak Tiyo', '1', 'PS7', 'PS9', 6),
(156, 1, 'Pak Samuel', '1', 'PS7', 'PS9', 6),
(157, 1, 'Pak Budi', '1', 'PS7', 'PS10', 6),
(158, 1, 'Pak Tiyo', '1', 'PS7', 'PS10', 6),
(159, 1, 'Pak Samuel', '1', 'PS7', 'PS10', 6),
(160, 1, 'Pak Budi', '1', 'PS8', 'PS9', 6),
(161, 1, 'Pak Tiyo', '1', 'PS8', 'PS9', 6),
(162, 1, 'Pak Samuel', '1', 'PS8', 'PS9', 6),
(163, 1, 'Pak Budi', '1', 'PS8', 'PS10', 6),
(164, 1, 'Pak Tiyo', '1', 'PS8', 'PS10', 6),
(165, 1, 'Pak Samuel', '1', 'PS8', 'PS10', 6),
(166, 1, 'Pak Budi', '1', 'PS9', 'PS10', 6),
(167, 1, 'Pak Tiyo', '1', 'PS9', 'PS10', 6),
(168, 1, 'Pak Samuel', '1', 'PS9', 'PS10', 6),
(169, 1, 'Pak Budi', '1', 'Ekonomi', 'Lingkungan', 7),
(170, 1, 'Pak Tiyo', '1', 'Ekonomi', 'Lingkungan', 7),
(171, 1, 'Pak Samuel', '1', 'Ekonomi', 'Lingkungan', 7),
(172, 1, 'Pak Budi', '1', 'Ekonomi', 'Sosial', 7),
(173, 1, 'Pak Tiyo', '1', 'Ekonomi', 'Sosial', 7),
(174, 1, 'Pak Samuel', '1', 'Ekonomi', 'Sosial', 7),
(175, 1, 'Pak Budi', '1', 'Lingkungan', 'Sosial', 7),
(176, 1, 'Pak Tiyo', '1', 'Lingkungan', 'Sosial', 7),
(177, 1, 'Pak Samuel', '1', 'Lingkungan', 'Sosial', 7),
(178, 1, 'Pak Budi', '1', 'RE1', 'RE2', 8),
(179, 1, 'Pak Tiyo', '1', 'RE1', 'RE2', 8),
(180, 1, 'Pak Samuel', '1', 'RE1', 'RE2', 8),
(181, 1, 'Pak Budi', '1', 'RE1', 'RE3', 8),
(182, 1, 'Pak Tiyo', '1', 'RE1', 'RE3', 8),
(183, 1, 'Pak Samuel', '1', 'RE1', 'RE3', 8),
(184, 1, 'Pak Budi', '1', 'RE1', 'RE4', 8),
(185, 1, 'Pak Tiyo', '1', 'RE1', 'RE4', 8),
(186, 1, 'Pak Samuel', '1', 'RE1', 'RE4', 8),
(187, 1, 'Pak Budi', '1', 'RE2', 'RE3', 8),
(188, 1, 'Pak Tiyo', '1', 'RE2', 'RE3', 8),
(189, 1, 'Pak Samuel', '1', 'RE2', 'RE3', 8),
(190, 1, 'Pak Budi', '1', 'RE2', 'RE4', 8),
(191, 1, 'Pak Tiyo', '1', 'RE2', 'RE4', 8),
(192, 1, 'Pak Samuel', '1', 'RE2', 'RE4', 8),
(193, 1, 'Pak Budi', '1', 'RE3', 'RE4', 8),
(194, 1, 'Pak Tiyo', '1', 'RE3', 'RE4', 8),
(195, 1, 'Pak Samuel', '1', 'RE3', 'RE4', 8),
(196, 1, 'Pak Budi', '1', 'RL1', 'RL2', 9),
(197, 1, 'Pak Tiyo', '1', 'RL1', 'RL2', 9),
(198, 1, 'Pak Samuel', '1', 'RL1', 'RL2', 9),
(199, 1, 'Pak Budi', '1', 'RL1', 'RL3', 9),
(200, 1, 'Pak Tiyo', '1', 'RL1', 'RL3', 9),
(201, 1, 'Pak Samuel', '1', 'RL1', 'RL3', 9),
(202, 1, 'Pak Budi', '1', 'RL2', 'RL3', 9),
(203, 1, 'Pak Tiyo', '1', 'RL2', 'RL3', 9),
(204, 1, 'Pak Samuel', '1', 'RL2', 'RL3', 9),
(205, 1, 'Pak Budi', '1', 'RS1', 'RS2', 10),
(206, 1, 'Pak Tiyo', '1', 'RS1', 'RS2', 10),
(207, 1, 'Pak Samuel', '1', 'RS1', 'RS2', 10);
=======
(1, 3, 'A', '0.33', 'RPA', 'Peternak', 2),
(2, 3, 'B', '0.2', 'RPA', 'Peternak', 2),
(3, 3, 'AA', '0.33', 'RPA', 'Peternak', 2),
(4, 3, 'A', '0.5', 'Ekonomi', 'Lingkungan', 3),
(5, 3, 'B', '0.33', 'Ekonomi', 'Lingkungan', 3),
(6, 3, 'AA', '0.33', 'Ekonomi', 'Lingkungan', 3),
(7, 3, 'A', '0.33', 'Ekonomi', 'Sosial', 3),
(8, 3, 'B', '0.2', 'Ekonomi', 'Sosial', 3),
(9, 3, 'AA', '3', 'Ekonomi', 'Sosial', 3),
(10, 3, 'A', '0.13', 'Lingkungan', 'Sosial', 3),
(11, 3, 'B', '1', 'Lingkungan', 'Sosial', 3),
(12, 3, 'AA', '0.33', 'Lingkungan', 'Sosial', 3),
(13, 3, 'A', '0.33', 'PE1', 'PE2', 4),
(14, 3, 'B', '0.33', 'PE1', 'PE2', 4),
(15, 3, 'AA', '0.33', 'PE1', 'PE2', 4),
(16, 3, 'A', '0.33', 'PE1', 'PE3', 4),
(17, 3, 'B', '0.33', 'PE1', 'PE3', 4),
(18, 3, 'AA', '0.33', 'PE1', 'PE3', 4),
(19, 3, 'A', '0.33', 'PE1', 'PE4', 4),
(20, 3, 'B', '0.33', 'PE1', 'PE4', 4),
(21, 3, 'AA', '0.33', 'PE1', 'PE4', 4),
(22, 3, 'A', '0.33', 'PE2', 'PE3', 4),
(23, 3, 'B', '0.33', 'PE2', 'PE3', 4),
(24, 3, 'AA', '0.33', 'PE2', 'PE3', 4),
(25, 3, 'A', '0.33', 'PE2', 'PE4', 4),
(26, 3, 'B', '0.33', 'PE2', 'PE4', 4),
(27, 3, 'AA', '0.33', 'PE2', 'PE4', 4),
(28, 3, 'A', '0.33', 'PE3', 'PE4', 4),
(29, 3, 'B', '0.33', 'PE3', 'PE4', 4),
(30, 3, 'AA', '0.33', 'PE3', 'PE4', 4),
(31, 3, 'A', '0.33', 'PL1', 'PL2', 5),
(32, 3, 'B', '0.33', 'PL1', 'PL2', 5),
(33, 3, 'AA', '0.33', 'PL1', 'PL2', 5),
(34, 3, 'A', '0.33', 'PS1', 'PS2', 6),
(35, 3, 'B', '0.33', 'PS1', 'PS2', 6),
(36, 3, 'AA', '0.33', 'PS1', 'PS2', 6),
(37, 3, 'A', '0.33', 'PS1', 'PS3', 6),
(38, 3, 'B', '0.33', 'PS1', 'PS3', 6),
(39, 3, 'AA', '0.33', 'PS1', 'PS3', 6),
(40, 3, 'A', '0.33', 'PS1', 'PS4', 6),
(41, 3, 'B', '0.33', 'PS1', 'PS4', 6),
(42, 3, 'AA', '0.33', 'PS1', 'PS4', 6),
(43, 3, 'A', '0.33', 'PS1', 'PS5', 6),
(44, 3, 'B', '0.33', 'PS1', 'PS5', 6),
(45, 3, 'AA', '0.33', 'PS1', 'PS5', 6),
(46, 3, 'A', '0.33', 'PS1', 'PS6', 6),
(47, 3, 'B', '0.33', 'PS1', 'PS6', 6),
(48, 3, 'AA', '0.33', 'PS1', 'PS6', 6),
(49, 3, 'A', '0.33', 'PS1', 'PS7', 6),
(50, 3, 'B', '0.33', 'PS1', 'PS7', 6),
(51, 3, 'AA', '0.33', 'PS1', 'PS7', 6),
(52, 3, 'A', '0.33', 'PS1', 'PS8', 6),
(53, 3, 'B', '0.33', 'PS1', 'PS8', 6),
(54, 3, 'AA', '0.33', 'PS1', 'PS8', 6),
(55, 3, 'A', '0.33', 'PS1', 'PS9', 6),
(56, 3, 'B', '0.33', 'PS1', 'PS9', 6),
(57, 3, 'AA', '0.33', 'PS1', 'PS9', 6),
(58, 3, 'A', '0.33', 'PS1', 'PS10', 6),
(59, 3, 'B', '0.33', 'PS1', 'PS10', 6),
(60, 3, 'AA', '0.33', 'PS1', 'PS10', 6),
(61, 3, 'A', '0.33', 'PS1', 'PS11', 6),
(62, 3, 'B', '0.33', 'PS1', 'PS11', 6),
(63, 3, 'AA', '0.33', 'PS1', 'PS11', 6),
(64, 3, 'A', '0.33', 'PS2', 'PS3', 6),
(65, 3, 'B', '0.33', 'PS2', 'PS3', 6),
(66, 3, 'AA', '0.33', 'PS2', 'PS3', 6),
(67, 3, 'A', '0.33', 'PS2', 'PS4', 6),
(68, 3, 'B', '0.33', 'PS2', 'PS4', 6),
(69, 3, 'AA', '0.33', 'PS2', 'PS4', 6),
(70, 3, 'A', '0.33', 'PS2', 'PS5', 6),
(71, 3, 'B', '0.33', 'PS2', 'PS5', 6),
(72, 3, 'AA', '0.33', 'PS2', 'PS5', 6),
(73, 3, 'A', '0.33', 'PS2', 'PS6', 6),
(74, 3, 'B', '0.33', 'PS2', 'PS6', 6),
(75, 3, 'AA', '0.33', 'PS2', 'PS6', 6),
(76, 3, 'A', '0.33', 'PS2', 'PS7', 6),
(77, 3, 'B', '0.33', 'PS2', 'PS7', 6),
(78, 3, 'AA', '0.33', 'PS2', 'PS7', 6),
(79, 3, 'A', '0.33', 'PS2', 'PS8', 6),
(80, 3, 'B', '0.33', 'PS2', 'PS8', 6),
(81, 3, 'AA', '0.33', 'PS2', 'PS8', 6),
(82, 3, 'A', '0.33', 'PS2', 'PS9', 6),
(83, 3, 'B', '0.33', 'PS2', 'PS9', 6),
(84, 3, 'AA', '0.33', 'PS2', 'PS9', 6),
(85, 3, 'A', '0.33', 'PS2', 'PS10', 6),
(86, 3, 'B', '0.33', 'PS2', 'PS10', 6),
(87, 3, 'AA', '0.33', 'PS2', 'PS10', 6),
(88, 3, 'A', '0.33', 'PS2', 'PS11', 6),
(89, 3, 'B', '0.33', 'PS2', 'PS11', 6),
(90, 3, 'AA', '0.33', 'PS2', 'PS11', 6),
(91, 3, 'A', '0.33', 'PS3', 'PS4', 6),
(92, 3, 'B', '0.33', 'PS3', 'PS4', 6),
(93, 3, 'AA', '0.33', 'PS3', 'PS4', 6),
(94, 3, 'A', '0.33', 'PS3', 'PS5', 6),
(95, 3, 'B', '0.33', 'PS3', 'PS5', 6),
(96, 3, 'AA', '0.33', 'PS3', 'PS5', 6),
(97, 3, 'A', '0.33', 'PS3', 'PS6', 6),
(98, 3, 'B', '0.33', 'PS3', 'PS6', 6),
(99, 3, 'AA', '0.33', 'PS3', 'PS6', 6),
(100, 3, 'A', '0.33', 'PS3', 'PS7', 6),
(101, 3, 'B', '0.33', 'PS3', 'PS7', 6),
(102, 3, 'AA', '0.33', 'PS3', 'PS7', 6),
(103, 3, 'A', '0.33', 'PS3', 'PS8', 6),
(104, 3, 'B', '0.33', 'PS3', 'PS8', 6),
(105, 3, 'AA', '0.33', 'PS3', 'PS8', 6),
(106, 3, 'A', '0.33', 'PS3', 'PS9', 6),
(107, 3, 'B', '0.33', 'PS3', 'PS9', 6),
(108, 3, 'AA', '0.33', 'PS3', 'PS9', 6),
(109, 3, 'A', '0.33', 'PS3', 'PS10', 6),
(110, 3, 'B', '0.33', 'PS3', 'PS10', 6),
(111, 3, 'AA', '0.33', 'PS3', 'PS10', 6),
(112, 3, 'A', '0.33', 'PS3', 'PS11', 6),
(113, 3, 'B', '0.33', 'PS3', 'PS11', 6),
(114, 3, 'AA', '0.33', 'PS3', 'PS11', 6),
(115, 3, 'A', '0.33', 'PS4', 'PS5', 6),
(116, 3, 'B', '0.33', 'PS4', 'PS5', 6),
(117, 3, 'AA', '0.33', 'PS4', 'PS5', 6),
(118, 3, 'A', '0.33', 'PS4', 'PS6', 6),
(119, 3, 'B', '0.33', 'PS4', 'PS6', 6),
(120, 3, 'AA', '0.33', 'PS4', 'PS6', 6),
(121, 3, 'A', '0.33', 'PS4', 'PS7', 6),
(122, 3, 'B', '0.33', 'PS4', 'PS7', 6),
(123, 3, 'AA', '0.33', 'PS4', 'PS7', 6),
(124, 3, 'A', '0.33', 'PS4', 'PS8', 6),
(125, 3, 'B', '0.33', 'PS4', 'PS8', 6),
(126, 3, 'AA', '0.33', 'PS4', 'PS8', 6),
(127, 3, 'A', '0.33', 'PS4', 'PS9', 6),
(128, 3, 'B', '0.33', 'PS4', 'PS9', 6),
(129, 3, 'AA', '0.33', 'PS4', 'PS9', 6),
(130, 3, 'A', '0.33', 'PS4', 'PS10', 6),
(131, 3, 'B', '0.33', 'PS4', 'PS10', 6),
(132, 3, 'AA', '0.33', 'PS4', 'PS10', 6),
(133, 3, 'A', '0.33', 'PS4', 'PS11', 6),
(134, 3, 'B', '0.33', 'PS4', 'PS11', 6),
(135, 3, 'AA', '0.33', 'PS4', 'PS11', 6),
(136, 3, 'A', '0.33', 'PS5', 'PS6', 6),
(137, 3, 'B', '0.33', 'PS5', 'PS6', 6),
(138, 3, 'AA', '0.33', 'PS5', 'PS6', 6),
(139, 3, 'A', '0.33', 'PS5', 'PS7', 6),
(140, 3, 'B', '0.33', 'PS5', 'PS7', 6),
(141, 3, 'AA', '0.33', 'PS5', 'PS7', 6),
(142, 3, 'A', '0.33', 'PS5', 'PS8', 6),
(143, 3, 'B', '0.33', 'PS5', 'PS8', 6),
(144, 3, 'AA', '0.33', 'PS5', 'PS8', 6),
(145, 3, 'A', '0.33', 'PS5', 'PS9', 6),
(146, 3, 'B', '0.33', 'PS5', 'PS9', 6),
(147, 3, 'AA', '0.33', 'PS5', 'PS9', 6),
(148, 3, 'A', '0.33', 'PS5', 'PS10', 6),
(149, 3, 'B', '0.33', 'PS5', 'PS10', 6),
(150, 3, 'AA', '0.33', 'PS5', 'PS10', 6),
(151, 3, 'A', '0.33', 'PS5', 'PS11', 6),
(152, 3, 'B', '0.33', 'PS5', 'PS11', 6),
(153, 3, 'AA', '0.33', 'PS5', 'PS11', 6),
(154, 3, 'A', '0.33', 'PS6', 'PS7', 6),
(155, 3, 'B', '0.33', 'PS6', 'PS7', 6),
(156, 3, 'AA', '0.33', 'PS6', 'PS7', 6),
(157, 3, 'A', '0.33', 'PS6', 'PS8', 6),
(158, 3, 'B', '0.33', 'PS6', 'PS8', 6),
(159, 3, 'AA', '0.33', 'PS6', 'PS8', 6),
(160, 3, 'A', '0.33', 'PS6', 'PS9', 6),
(161, 3, 'B', '0.33', 'PS6', 'PS9', 6),
(162, 3, 'AA', '0.33', 'PS6', 'PS9', 6),
(163, 3, 'A', '0.33', 'PS6', 'PS10', 6),
(164, 3, 'B', '0.33', 'PS6', 'PS10', 6),
(165, 3, 'AA', '0.33', 'PS6', 'PS10', 6),
(166, 3, 'A', '0.33', 'PS6', 'PS11', 6),
(167, 3, 'B', '0.33', 'PS6', 'PS11', 6),
(168, 3, 'AA', '0.33', 'PS6', 'PS11', 6),
(169, 3, 'A', '0.33', 'PS7', 'PS8', 6),
(170, 3, 'B', '0.33', 'PS7', 'PS8', 6),
(171, 3, 'AA', '0.33', 'PS7', 'PS8', 6),
(172, 3, 'A', '0.33', 'PS7', 'PS9', 6),
(173, 3, 'B', '0.33', 'PS7', 'PS9', 6),
(174, 3, 'AA', '0.33', 'PS7', 'PS9', 6),
(175, 3, 'A', '0.33', 'PS7', 'PS10', 6),
(176, 3, 'B', '0.33', 'PS7', 'PS10', 6),
(177, 3, 'AA', '0.33', 'PS7', 'PS10', 6),
(178, 3, 'A', '0.33', 'PS7', 'PS11', 6),
(179, 3, 'B', '0.33', 'PS7', 'PS11', 6),
(180, 3, 'AA', '0.33', 'PS7', 'PS11', 6),
(181, 3, 'A', '0.33', 'PS8', 'PS9', 6),
(182, 3, 'B', '0.33', 'PS8', 'PS9', 6),
(183, 3, 'AA', '0.33', 'PS8', 'PS9', 6),
(184, 3, 'A', '0.33', 'PS8', 'PS10', 6),
(185, 3, 'B', '0.33', 'PS8', 'PS10', 6),
(186, 3, 'AA', '0.33', 'PS8', 'PS10', 6),
(187, 3, 'A', '0.33', 'PS8', 'PS11', 6),
(188, 3, 'B', '0.33', 'PS8', 'PS11', 6),
(189, 3, 'AA', '0.33', 'PS8', 'PS11', 6),
(190, 3, 'A', '0.33', 'PS9', 'PS10', 6),
(191, 3, 'B', '0.33', 'PS9', 'PS10', 6),
(192, 3, 'AA', '0.33', 'PS9', 'PS10', 6),
(193, 3, 'A', '0.33', 'PS9', 'PS11', 6),
(194, 3, 'B', '0.33', 'PS9', 'PS11', 6),
(195, 3, 'AA', '0.33', 'PS9', 'PS11', 6),
(196, 3, 'A', '0.33', 'PS10', 'PS11', 6),
(197, 3, 'B', '0.33', 'PS10', 'PS11', 6),
(198, 3, 'AA', '0.33', 'PS10', 'PS11', 6),
(199, 3, 'A', '0.33', 'Ekonomi', 'Lingkungan', 7),
(200, 3, 'B', '0.33', 'Ekonomi', 'Lingkungan', 7),
(201, 3, 'AA', '0.33', 'Ekonomi', 'Lingkungan', 7),
(202, 3, 'A', '0.33', 'Ekonomi', 'Sosial', 7),
(203, 3, 'B', '0.33', 'Ekonomi', 'Sosial', 7),
(204, 3, 'AA', '0.33', 'Ekonomi', 'Sosial', 7),
(205, 3, 'A', '0.33', 'Lingkungan', 'Sosial', 7),
(206, 3, 'B', '0.33', 'Lingkungan', 'Sosial', 7),
(207, 3, 'AA', '0.33', 'Lingkungan', 'Sosial', 7),
(208, 3, 'A', '0.33', 'RE1', 'RE2', 8),
(209, 3, 'B', '0.33', 'RE1', 'RE2', 8),
(210, 3, 'AA', '0.33', 'RE1', 'RE2', 8),
(211, 3, 'A', '0.33', 'RE1', 'RE3', 8),
(212, 3, 'B', '0.33', 'RE1', 'RE3', 8),
(213, 3, 'AA', '0.33', 'RE1', 'RE3', 8),
(214, 3, 'A', '0.33', 'RE1', 'RE4', 8),
(215, 3, 'B', '0.33', 'RE1', 'RE4', 8),
(216, 3, 'AA', '0.33', 'RE1', 'RE4', 8),
(217, 3, 'A', '0.33', 'RE2', 'RE3', 8),
(218, 3, 'B', '0.33', 'RE2', 'RE3', 8),
(219, 3, 'AA', '0.33', 'RE2', 'RE3', 8),
(220, 3, 'A', '0.33', 'RE2', 'RE4', 8),
(221, 3, 'B', '0.33', 'RE2', 'RE4', 8),
(222, 3, 'AA', '0.33', 'RE2', 'RE4', 8),
(223, 3, 'A', '0.33', 'RE3', 'RE4', 8),
(224, 3, 'B', '0.33', 'RE3', 'RE4', 8),
(225, 3, 'AA', '0.33', 'RE3', 'RE4', 8),
(226, 3, 'A', '0.33', 'RL1', 'RL2', 9),
(227, 3, 'B', '0.33', 'RL1', 'RL2', 9),
(228, 3, 'AA', '0.33', 'RL1', 'RL2', 9),
(229, 3, 'A', '0.33', 'RL1', 'RL3', 9),
(230, 3, 'B', '0.33', 'RL1', 'RL3', 9),
(231, 3, 'AA', '0.33', 'RL1', 'RL3', 9),
(232, 3, 'A', '0.33', 'RL2', 'RL3', 9),
(233, 3, 'B', '0.33', 'RL2', 'RL3', 9),
(234, 3, 'AA', '0.33', 'RL2', 'RL3', 9),
(235, 3, 'A', '0.33', 'RS1', 'RS2', 10),
(236, 3, 'B', '0.33', 'RS1', 'RS2', 10),
(237, 3, 'AA', '0.33', 'RS1', 'RS2', 10),
(238, 3, 'BB', '0.25', 'RPA', 'Peternak', 2),
(239, 3, 'BB', '0.33', 'Ekonomi', 'Lingkungan', 3),
(240, 3, 'BB', '3', 'Ekonomi', 'Sosial', 3),
(241, 3, 'BB', '0.33', 'Lingkungan', 'Sosial', 3),
(242, 3, 'BB', '0.33', 'PE1', 'PE2', 4),
(243, 3, 'BB', '0.33', 'PE1', 'PE3', 4),
(244, 3, 'BB', '0.33', 'PE1', 'PE4', 4),
(245, 3, 'BB', '0.33', 'PE2', 'PE3', 4),
(246, 3, 'BB', '0.33', 'PE2', 'PE4', 4),
(247, 3, 'BB', '0.33', 'PE3', 'PE4', 4),
(248, 3, 'BB', '0.33', 'PL1', 'PL2', 5),
(249, 3, 'BB', '0.33', 'PS1', 'PS2', 6),
(250, 3, 'BB', '0.33', 'PS1', 'PS3', 6),
(251, 3, 'BB', '0.33', 'PS1', 'PS4', 6),
(252, 3, 'BB', '0.33', 'PS1', 'PS5', 6),
(253, 3, 'BB', '0.33', 'PS1', 'PS6', 6),
(254, 3, 'BB', '0.33', 'PS1', 'PS7', 6),
(255, 3, 'BB', '0.33', 'PS1', 'PS8', 6),
(256, 3, 'BB', '0.33', 'PS1', 'PS9', 6),
(257, 3, 'BB', '0.33', 'PS1', 'PS10', 6),
(258, 3, 'BB', '0.33', 'PS1', 'PS11', 6),
(259, 3, 'BB', '0.33', 'PS2', 'PS3', 6),
(260, 3, 'BB', '0.33', 'PS2', 'PS4', 6),
(261, 3, 'BB', '0.33', 'PS2', 'PS5', 6),
(262, 3, 'BB', '0.33', 'PS2', 'PS6', 6),
(263, 3, 'BB', '0.33', 'PS2', 'PS7', 6),
(264, 3, 'BB', '0.33', 'PS2', 'PS8', 6),
(265, 3, 'BB', '0.33', 'PS2', 'PS9', 6),
(266, 3, 'BB', '0.33', 'PS2', 'PS10', 6),
(267, 3, 'BB', '0.33', 'PS2', 'PS11', 6),
(268, 3, 'BB', '0.33', 'PS3', 'PS4', 6),
(269, 3, 'BB', '0.33', 'PS3', 'PS5', 6),
(270, 3, 'BB', '0.33', 'PS3', 'PS6', 6),
(271, 3, 'BB', '0.33', 'PS3', 'PS7', 6),
(272, 3, 'BB', '0.33', 'PS3', 'PS8', 6),
(273, 3, 'BB', '0.33', 'PS3', 'PS9', 6),
(274, 3, 'BB', '0.33', 'PS3', 'PS10', 6),
(275, 3, 'BB', '0.33', 'PS3', 'PS11', 6),
(276, 3, 'BB', '0.33', 'PS4', 'PS5', 6),
(277, 3, 'BB', '0.33', 'PS4', 'PS6', 6),
(278, 3, 'BB', '0.33', 'PS4', 'PS7', 6),
(279, 3, 'BB', '0.33', 'PS4', 'PS8', 6),
(280, 3, 'BB', '0.33', 'PS4', 'PS9', 6),
(281, 3, 'BB', '0.33', 'PS4', 'PS10', 6),
(282, 3, 'BB', '0.33', 'PS4', 'PS11', 6),
(283, 3, 'BB', '0.33', 'PS5', 'PS6', 6),
(284, 3, 'BB', '0.33', 'PS5', 'PS7', 6),
(285, 3, 'BB', '0.33', 'PS5', 'PS8', 6),
(286, 3, 'BB', '0.33', 'PS5', 'PS9', 6),
(287, 3, 'BB', '0.33', 'PS5', 'PS10', 6),
(288, 3, 'BB', '0.33', 'PS5', 'PS11', 6),
(289, 3, 'BB', '0.33', 'PS6', 'PS7', 6),
(290, 3, 'BB', '0.33', 'PS6', 'PS8', 6),
(291, 3, 'BB', '0.33', 'PS6', 'PS9', 6),
(292, 3, 'BB', '0.33', 'PS6', 'PS10', 6),
(293, 3, 'BB', '0.33', 'PS6', 'PS11', 6),
(294, 3, 'BB', '0.33', 'PS7', 'PS8', 6),
(295, 3, 'BB', '0.33', 'PS7', 'PS9', 6),
(296, 3, 'BB', '0.33', 'PS7', 'PS10', 6),
(297, 3, 'BB', '0.33', 'PS7', 'PS11', 6),
(298, 3, 'BB', '0.33', 'PS8', 'PS9', 6),
(299, 3, 'BB', '0.33', 'PS8', 'PS10', 6),
(300, 3, 'BB', '0.33', 'PS8', 'PS11', 6),
(301, 3, 'BB', '0.33', 'PS9', 'PS10', 6),
(302, 3, 'BB', '0.33', 'PS9', 'PS11', 6),
(303, 3, 'BB', '0.33', 'PS10', 'PS11', 6),
(304, 3, 'BB', '0.33', 'Ekonomi', 'Lingkungan', 7),
(305, 3, 'BB', '0.33', 'Ekonomi', 'Sosial', 7),
(306, 3, 'BB', '0.33', 'Lingkungan', 'Sosial', 7),
(307, 3, 'BB', '0.33', 'RE1', 'RE2', 8),
(308, 3, 'BB', '0.33', 'RE1', 'RE3', 8),
(309, 3, 'BB', '0.33', 'RE1', 'RE4', 8),
(310, 3, 'BB', '0.33', 'RE2', 'RE3', 8),
(311, 3, 'BB', '0.33', 'RE2', 'RE4', 8),
(312, 3, 'BB', '0.33', 'RE3', 'RE4', 8),
(313, 3, 'BB', '0.33', 'RL1', 'RL2', 9),
(314, 3, 'BB', '0.33', 'RL1', 'RL3', 9),
(315, 3, 'BB', '0.33', 'RL2', 'RL3', 9),
(316, 3, 'BB', '0.33', 'RS1', 'RS2', 10),
(317, 3, 'tess', '0.33', 'RPA', 'Peternak', 2),
(318, 3, 'tess', '0.33', 'Ekonomi', 'Lingkungan', 3),
(319, 3, 'tess', '0.33', 'Ekonomi', 'Sosial', 3),
(320, 3, 'tess', '0.33', 'Lingkungan', 'Sosial', 3),
(321, 3, 'tess', '0.33', 'PE1', 'PE2', 4),
(322, 3, 'tess', '0.33', 'PE1', 'PE3', 4),
(323, 3, 'tess', '0.33', 'PE1', 'PE4', 4),
(324, 3, 'tess', '0.33', 'PE2', 'PE3', 4),
(325, 3, 'tess', '0.33', 'PE2', 'PE4', 4),
(326, 3, 'tess', '0.33', 'PL1', 'PL2', 5);
>>>>>>> 63bc0fb... Major update

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

<<<<<<< HEAD
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

=======
>>>>>>> 63bc0fb... Major update
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
(1, 1, 'A', '4', '1', 2),
(2, 1, 'B', '4', '1', 2),
(3, 1, 'AA', '4', '1', 2),
(4, 1, 'BB', '4', '1', 2),
(5, 1, 'A', '5', '2', 2),
(6, 1, 'B', '5', '2', 2),
(7, 1, 'AA', '5', '2', 2),
(8, 1, 'BB', '5', '2', 2),
(9, 1, 'A', '3', '3', 2),
(10, 1, 'B', '3', '3', 2),
(11, 1, 'AA', '3', '3', 2),
(12, 1, 'BB', '3', '3', 2),
(13, 1, 'A', '2', '4', 2),
(14, 1, 'B', '2', '4', 2),
(15, 1, 'AA', '2', '4', 2),
(16, 1, 'BB', '2', '4', 2),
(17, 1, 'A', '1', '5', 2),
(18, 1, 'B', '1', '5', 2),
(19, 1, 'AA', '1', '5', 2),
(20, 1, 'BB', '1', '5', 2),
(21, 1, 'A', '3', '6', 2),
(22, 1, 'B', '3', '6', 2),
(23, 1, 'AA', '3', '6', 2),
(24, 1, 'BB', '3', '6', 2),
(25, 1, 'A', '4', '7', 2),
(26, 1, 'B', '4', '7', 2),
(27, 1, 'AA', '4', '7', 2),
(28, 1, 'BB', '4', '7', 2),
(29, 1, 'A', '4', '8', 2),
(30, 1, 'B', '4', '8', 2),
(31, 1, 'AA', '4', '8', 2),
(32, 1, 'BB', '4', '8', 2),
(33, 1, 'A', '4', '9', 2),
(34, 1, 'B', '4', '9', 2),
(35, 1, 'AA', '4', '9', 2),
(36, 1, 'BB', '4', '9', 2),
(37, 1, 'A', '4', '10', 2),
(38, 1, 'B', '4', '10', 2),
(39, 1, 'AA', '4', '10', 2),
(40, 1, 'BB', '4', '10', 2),
(41, 1, 'A', '3', '11', 2),
(42, 1, 'B', '3', '11', 2),
(43, 1, 'AA', '3', '11', 2),
(44, 1, 'BB', '3', '11', 2),
(45, 1, 'A', '4', '12', 2),
(46, 1, 'B', '4', '12', 2),
(47, 1, 'AA', '4', '12', 2),
(48, 1, 'BB', '4', '12', 2),
(49, 1, 'A', '4', '13', 2),
(50, 1, 'B', '4', '13', 2),
(51, 1, 'AA', '4', '13', 2),
(52, 1, 'BB', '4', '13', 2),
(53, 1, 'A', '4', '14', 2),
(54, 1, 'B', '4', '14', 2),
(55, 1, 'AA', '4', '14', 2),
(56, 1, 'BB', '4', '14', 2),
(57, 1, 'A', '4', '15', 2),
(58, 1, 'B', '4', '15', 2),
(59, 1, 'AA', '4', '15', 2),
(60, 1, 'BB', '4', '15', 2),
(61, 1, 'A', '4', '16', 2),
(62, 1, 'B', '4', '16', 2),
(63, 1, 'AA', '4', '16', 2),
(64, 1, 'BB', '4', '16', 2),
(65, 1, 'A', '4', '17', 2),
(66, 1, 'B', '4', '17', 2),
(67, 1, 'AA', '4', '17', 2),
(68, 1, 'BB', '4', '17', 2),
(69, 1, 'A', '1', '19', 1),
(70, 1, 'B', '2', '19', 1),
(71, 1, 'AA', '2', '19', 1),
(72, 1, 'BB', '1', '19', 1),
(73, 1, 'A', '1', '20', 1),
(74, 1, 'B', '2', '20', 1),
(75, 1, 'AA', '2', '20', 1),
(76, 1, 'BB', '1', '20', 1),
(77, 1, 'A', '2', '21', 1),
(78, 1, 'B', '1', '21', 1),
(79, 1, 'AA', '2', '21', 1),
(80, 1, 'BB', '1', '21', 1),
(81, 1, 'A', '3', '22', 1),
(82, 1, 'B', '3', '22', 1),
(83, 1, 'AA', '3', '22', 1),
(84, 1, 'BB', '3', '22', 1),
(85, 1, 'A', '1', '23', 1),
(86, 1, 'B', '2', '23', 1),
(87, 1, 'AA', '3', '23', 1),
(88, 1, 'BB', '4', '23', 1),
(89, 1, 'A', '1', '24', 1),
(90, 1, 'B', '2', '24', 1),
(91, 1, 'AA', '3', '24', 1),
(92, 1, 'BB', '4', '24', 1),
(93, 1, 'A', '1', '25', 1),
(94, 1, 'B', '2', '25', 1),
(95, 1, 'AA', '3', '25', 1),
(96, 1, 'BB', '4', '25', 1),
(97, 1, 'A', '1', '26', 1),
(98, 1, 'B', '2', '26', 1),
(99, 1, 'AA', '3', '26', 1),
(100, 1, 'BB', '4', '26', 1),
(101, 1, 'A', '1', '27', 1),
(102, 1, 'B', '2', '27', 1),
(103, 1, 'AA', '3', '27', 1),
(104, 1, 'BB', '4', '27', 1);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;
--
-- AUTO_INCREMENT for table `responden`
--
ALTER TABLE `responden`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=327;
--
-- AUTO_INCREMENT for table `responden_sapi`
--
ALTER TABLE `responden_sapi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=929;
--
-- AUTO_INCREMENT for table `responden_skala_ayam`
--
ALTER TABLE `responden_skala_ayam`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;
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

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
