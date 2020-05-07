-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 07, 2020 at 04:33 PM
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
  `CI` varchar(10) DEFAULT NULL,
  `CR` varchar(10) DEFAULT NULL,
  `id_section` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bobot_indikator`
--

INSERT INTO `bobot_indikator` (`id`, `kriteria`, `bobot`, `CI`, `CR`, `id_section`) VALUES
(3, 'RPA', '0.25251753', NULL, NULL, 2),
(4, 'Peternak', '0.74748246', NULL, NULL, 2);

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
(1, 'Peternakan'),
(2, 'RPA');

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
  `kode_a_i` varchar(100) NOT NULL,
  `ket_a_i` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `indikator_ayam`
--

INSERT INTO `indikator_ayam` (`id_a_i`, `kode_a_i`, `ket_a_i`) VALUES
(1, 'L1', 'Rata-rata konsumsi air yang dihabiskan untuk 1 ekor ayam'),
(2, 'L2', 'Rata-rata konsumsi listrik yang dihabiskan untuk 1 ekor ayam'),
(3, 'S1', 'Kualitas DOC yang diberikan perusahaan inti kepada peternak plasma'),
(4, 'S2', 'Kulitas obat dan vaksin yang diberikan perusahaan inti kepada peternak plasma'),
(5, 'S3', 'Jadwal pengiriman DOC'),
(6, 'S4', 'Frekuensi bimbingan teknis yang diberikan perusahaan inti kepada peternak plasma\r\ndalam 1 bulan'),
(7, 'S5', 'Frekuensi pelayanan dan bimbingan materi yang diberikan perusahaan inti kepada\r\npeternak plasma dalam 1 bulan'),
(8, 'S6', 'Kesesuaian waktu panen dengan kontrak perjanjian'),
(9, 'S7', 'Kecepatan respon perusahaan inti terhadap keluhan peternak plasma'),
(10, 'S8', 'Kesesuaian harga jual dengan kontrak perjanjian'),
(11, 'S9', 'Kesesuaian pemberian bonus dengan kontrak perjanjian'),
(12, 'S10', 'Kesesuaian waktu pembayaran panen dengan kontrak perjanjian'),
(13, 'S11', 'Pertanggungjawaban saat gagal panen'),
(14, 'E1', 'Rata-rata pendapatan yang diperoleh peternak plasma untuk 1 ekor ayam dalam 1 kali\r\nmasa panen'),
(15, 'E2', 'Rata-rata harga DOC untuk 1 ekor'),
(16, 'E3', 'Rata-rata harga pakan untuk 1 ekor ayam dalam 1 kali masa panen'),
(17, 'E4', 'Rata-rata harga obat & vaksin untuk 1 ekor ayam dalam 1 kali masa panen');

-- --------------------------------------------------------

--
-- Table structure for table `pengisian_ahp`
--

CREATE TABLE `pengisian_ahp` (
  `id` int(11) NOT NULL,
  `nama_pengisi` varchar(50) NOT NULL,
  `id_user` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pengisian_ahp`
--

INSERT INTO `pengisian_ahp` (`id`, `nama_pengisi`, `id_user`, `created_at`) VALUES
(20, 'Kukuh Ardia', 1, '2020-05-07 07:34:54'),
(21, 'Kukuh Ardia', 1, '2020-05-07 07:36:00'),
(22, 'Kukuh Ardia', 1, '2020-05-07 07:44:02');

-- --------------------------------------------------------

--
-- Table structure for table `responden`
--

CREATE TABLE `responden` (
  `id` int(11) NOT NULL,
  `nama_responden` varchar(50) NOT NULL,
  `nilai_responden` varchar(10) NOT NULL,
  `kriteria_1` varchar(20) DEFAULT NULL,
  `kriteria_2` varchar(20) DEFAULT NULL,
  `id_pengisian_ahp` int(11) NOT NULL,
  `id_section` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `responden`
--

INSERT INTO `responden` (`id`, `nama_responden`, `nilai_responden`, `kriteria_1`, `kriteria_2`, `id_pengisian_ahp`, `id_section`) VALUES
(11, 'Kukuh', '0.11', NULL, NULL, 20, 2),
(12, 'Dayyan', '0.20', NULL, NULL, 20, 2),
(13, 'Fauzan', '1', NULL, NULL, 20, 2),
(15, 'Dimas', '1', NULL, NULL, 21, 2),
(16, 'Ica', '0.20', NULL, NULL, 22, 2);

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
(2, NULL, NULL, NULL);

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
(1, 'Kukuh Ardia', 'kukuhardia@gmail.com', 'default.jpg', '$2y$10$yoYld1kf9tsWx3mZIhs4Eum7E5URfGYQ9QbAaHrRiEiur2ehBIuVW', 3, 1, 1588830449);

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
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `pengisian_ahp`
--
ALTER TABLE `pengisian_ahp`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `responden`
--
ALTER TABLE `responden`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `section`
--
ALTER TABLE `section`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `bobot_indikator`
--
ALTER TABLE `bobot_indikator`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

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
  MODIFY `id_a_i` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `pengisian_ahp`
--
ALTER TABLE `pengisian_ahp`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `responden`
--
ALTER TABLE `responden`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `section`
--
ALTER TABLE `section`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user_role`
--
ALTER TABLE `user_role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
