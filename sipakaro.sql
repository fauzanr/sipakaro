-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 04, 2020 at 02:12 PM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sipakaro`
--

-- --------------------------------------------------------

--
-- Table structure for table `ahp`
--

CREATE TABLE `ahp` (
  `id_ahp` int(11) NOT NULL,
  `nama_responden` varchar(50) NOT NULL,
  `nilai_dipilih` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ahp`
--

INSERT INTO `ahp` (`id_ahp`, `nama_responden`, `nilai_dipilih`) VALUES
(1, 'responden1', '0.13'),
(2, 'responden2', '0.17'),
(3, 'responden', '3'),
(4, 'respondenn', '7'),
(5, 't', '0.11'),
(6, 'q', '0.11'),
(7, 'w', '0.11'),
(8, 'e', '0.11'),
(9, 'r', '0.11');

-- --------------------------------------------------------

--
-- Table structure for table `bobot_kriteria_ayam`
--

CREATE TABLE `bobot_kriteria_ayam` (
  `id_bobot_kriteria_ayam` int(11) NOT NULL,
  `kriteria` varchar(50) NOT NULL,
  `bobot` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bobot_kriteria_ayam`
--

INSERT INTO `bobot_kriteria_ayam` (`id_bobot_kriteria_ayam`, `kriteria`, `bobot`) VALUES
(1, 'RPA', '0.08621068'),
(2, 'Peternak', '0.91378931');

-- --------------------------------------------------------

--
-- Table structure for table `entitas_ayam`
--

CREATE TABLE `entitas_ayam` (
  `id_a_e` int(11) NOT NULL,
  `ket_a_e` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `entitas_ayam`
--

INSERT INTO `entitas_ayam` (`id_a_e`, `ket_a_e`) VALUES
(1, 'Peternakan'),
(2, 'RPA');

-- --------------------------------------------------------

--
-- Table structure for table `entitas_sapi`
--

CREATE TABLE `entitas_sapi` (
  `id_s_e` int(11) NOT NULL,
  `ket_s_e` varchar(300) NOT NULL
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
  `kode_a_i` varchar(100) NOT NULL,
  `ket_a_i` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `indikator_ayam`
--

INSERT INTO `indikator_ayam` (`id_a_i`, `kode_a_i`, `ket_a_i`) VALUES
(1, 'L1', 'Rata-rata konsumsi air yang dihabiskan untuk 1 ekor ayam'),
(2, 'L2', 'Rata-rata konsumsi listrik yang dihabiskan untuk 1 ekor ayam'),
(7, 'S1', 'Kualitas DOC yang diberikan perusahaan inti kepada peternak plasma'),
(8, 'S2', 'Kulitas obat dan vaksin yang diberikan perusahaan inti kepada peternak plasma'),
(9, 'S3', 'Jadwal pengiriman DOC'),
(10, 'S4', 'Frekuensi bimbingan teknis yang diberikan perusahaan inti kepada peternak plasma\r\ndalam 1 bulan'),
(11, 'S5', 'Frekuensi pelayanan dan bimbingan materi yang diberikan perusahaan inti kepada\r\npeternak plasma dalam 1 bulan'),
(12, 'S6', 'Kesesuaian waktu panen dengan kontrak perjanjian'),
(13, 'S7', 'Kecepatan respon perusahaan inti terhadap keluhan peternak plasma'),
(14, 'S8', 'Kesesuaian harga jual dengan kontrak perjanjian'),
(15, 'S9', 'Kesesuaian pemberian bonus dengan kontrak perjanjian'),
(16, 'S10', 'Kesesuaian waktu pembayaran panen dengan kontrak perjanjian'),
(17, 'S11', 'Pertanggungjawaban saat gagal panen'),
(18, 'E1', 'Rata-rata pendapatan yang diperoleh peternak plasma untuk 1 ekor ayam dalam 1 kali\r\nmasa panen'),
(19, 'E2', 'Rata-rata harga DOC untuk 1 ekor'),
(20, 'E3', 'Rata-rata harga pakan untuk 1 ekor ayam dalam 1 kali masa panen'),
(21, 'E4', 'Rata-rata harga obat & vaksin untuk 1 ekor ayam dalam 1 kali masa panen');

-- --------------------------------------------------------

--
-- Table structure for table `nilai_pengisian_ahp`
--

CREATE TABLE `nilai_pengisian_ahp` (
  `id_n_p_a` int(11) NOT NULL,
  `id_pengisian_ahp` int(11) NOT NULL,
  `level0` varchar(50) DEFAULT NULL,
  `level1` varchar(50) DEFAULT NULL,
  `kriteria1` varchar(50) NOT NULL,
  `kriteria2` varchar(50) NOT NULL,
  `responden1` varchar(50) NOT NULL,
  `responden2` varchar(50) DEFAULT NULL,
  `responden3` varchar(50) DEFAULT NULL,
  `responden4` varchar(50) DEFAULT NULL,
  `responden5` varchar(50) DEFAULT NULL,
  `manual` varchar(50) DEFAULT NULL,
  `geomean` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nilai_pengisian_ahp`
--

INSERT INTO `nilai_pengisian_ahp` (`id_n_p_a`, `id_pengisian_ahp`, `level0`, `level1`, `kriteria1`, `kriteria2`, `responden1`, `responden2`, `responden3`, `responden4`, `responden5`, `manual`, `geomean`) VALUES
(1, 666, NULL, NULL, 'RPA', 'Peternakan', '0.33', '0.33', '1.00', NULL, NULL, NULL, NULL),
(2, 666, NULL, 'Peternak', 'Ekonomi', 'Lingkungan', '1.00', '1.00', '1.00', NULL, NULL, NULL, NULL),
(3, 666, NULL, 'Peternak', 'Ekonomi', 'Sosial', '1.00', '1.00', '1.00', NULL, NULL, NULL, NULL),
(4, 666, NULL, 'Peternak', 'Lingkungan', 'Sosial', '1.00', '1.00', '1.00', NULL, NULL, NULL, NULL),
(5, 666, 'Peternak', 'Ekonomi', 'E1', 'E2', '9.00', '9.00', '9.00', NULL, NULL, NULL, NULL),
(6, 666, 'Peternak', 'Ekonomi', 'E1', 'E3', '9.00', '9.00', '9.00', NULL, NULL, NULL, NULL),
(7, 666, 'Peternak', 'Ekonomi', 'E1', 'E4', '9.00', '9.00', '9.00', NULL, NULL, NULL, NULL),
(8, 666, 'Peternak', 'Ekonomi', 'E2', 'E3', '0.50', '1.00', '1.00', NULL, NULL, NULL, NULL),
(9, 666, 'Peternak', 'Ekonomi', 'E2', 'E4', '0.50', '1.00', '9.00', NULL, NULL, NULL, NULL),
(10, 666, 'Peternak', 'Ekonomi', 'E3', 'E4', '0.50', '5.00', '7.00', NULL, NULL, NULL, NULL),
(11, 666, 'Peternak', 'Lingkungan', 'L1', 'L2', '3.00', '2.00', '3.00', NULL, NULL, NULL, NULL),
(12, 666, 'Peternak', 'Lingkungan', 'L1', 'L3', '5.00', '4.00', '5.00', NULL, NULL, NULL, NULL),
(13, 666, 'Peternak', 'Lingkungan', 'L2', 'L3', '0.50', '2.00', '0.50', NULL, NULL, NULL, NULL),
(14, 666, NULL, 'RPA', 'Ekonomi', 'Lingkungan', '0.00', '0.00', NULL, NULL, NULL, NULL, NULL),
(15, 666, NULL, 'RPA', 'Ekonomi', 'Sosial', '0.00', '0.00', NULL, NULL, NULL, NULL, NULL),
(16, 666, NULL, 'RPA', 'Lingkungan', 'Sosial', '0.00', '0.00', NULL, NULL, NULL, NULL, NULL),
(17, 666, 'RPA', 'Lingkungan', 'L1', 'L2', '0.00', '0.00', NULL, NULL, NULL, NULL, NULL),
(18, 666, 'RPA', 'Lingkungan', 'L1', 'L3', '0.00', '0.00', NULL, NULL, NULL, NULL, NULL),
(19, 666, 'RPA', 'Lingkungan', 'L2', 'L3', '0.00', NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `pengisian_ahp`
--

CREATE TABLE `pengisian_ahp` (
  `id_pengisian_ahp` int(11) NOT NULL,
  `jumlah_responden` int(11) NOT NULL,
  `responden1` varchar(200) NOT NULL,
  `responden2` varchar(200) DEFAULT NULL,
  `responden3` varchar(200) DEFAULT NULL,
  `responden4` varchar(200) DEFAULT NULL,
  `responden5` varchar(200) DEFAULT NULL,
  `nama_pengisi` varchar(200) NOT NULL,
  `tgl_pengisian` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pengisian_ahp`
--

INSERT INTO `pengisian_ahp` (`id_pengisian_ahp`, `jumlah_responden`, `responden1`, `responden2`, `responden3`, `responden4`, `responden5`, `nama_pengisi`, `tgl_pengisian`) VALUES
(666, 3, 'Trevor', 'Michael', 'Franklin', NULL, NULL, 'Sarah Smith', '2020-05-04 07:26:15');

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
  `is_active` int(1) NOT NULL,
  `date_created` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `image`, `password`, `role_id`, `is_active`, `date_created`) VALUES
(5, 'sa', 'sa@gmail.com', 'default.jpg', '$2y$10$1dN8dlBCBil4qMV7B5jP.OAZuLj.UWeqnRriS8TgjhFXoXY4EJEJO', 1, 1, 1586424246),
(6, 'dayyan', 'dayyan@gmail.com', 'default.jpg', '$2y$10$lM36yT3EN3YcTCATwgLvoOYowCTWpKScwYmWH9e8iedm/wtQseXi6', 2, 1, 1586424826),
(7, 'dis', 'dis@gmail.com', 'default.jpg', '$2y$10$6doTkuf8mrmJ0uUzukw4zuEYRbtt/CFCXG8Y5id0y5/zAshk7.Jra', 2, 1, 1587304092),
(8, 'Sara Smith', 'sara@gmail.com', 'default.jpg', '$2y$10$N7za9/YDK6Lh3OKppix7GOQuoMsnDBLGvTyB9AZOSKkqO.CdwOyjS', 3, 1, 1588514704);

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
-- Indexes for table `ahp`
--
ALTER TABLE `ahp`
  ADD PRIMARY KEY (`id_ahp`);

--
-- Indexes for table `bobot_kriteria_ayam`
--
ALTER TABLE `bobot_kriteria_ayam`
  ADD PRIMARY KEY (`id_bobot_kriteria_ayam`);

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
  ADD PRIMARY KEY (`id_a_i`);

--
-- Indexes for table `nilai_pengisian_ahp`
--
ALTER TABLE `nilai_pengisian_ahp`
  ADD PRIMARY KEY (`id_n_p_a`);

--
-- Indexes for table `pengisian_ahp`
--
ALTER TABLE `pengisian_ahp`
  ADD PRIMARY KEY (`id_pengisian_ahp`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_role`
--
ALTER TABLE `user_role`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ahp`
--
ALTER TABLE `ahp`
  MODIFY `id_ahp` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `bobot_kriteria_ayam`
--
ALTER TABLE `bobot_kriteria_ayam`
  MODIFY `id_bobot_kriteria_ayam` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
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
  MODIFY `id_a_i` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `nilai_pengisian_ahp`
--
ALTER TABLE `nilai_pengisian_ahp`
  MODIFY `id_n_p_a` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `pengisian_ahp`
--
ALTER TABLE `pengisian_ahp`
  MODIFY `id_pengisian_ahp` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=667;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `user_role`
--
ALTER TABLE `user_role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
