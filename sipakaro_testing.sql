-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 14, 2020 at 11:38 AM
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
  `C1` varchar(10) DEFAULT NULL,
  `CR` varchar(10) DEFAULT NULL,
  `id_section` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

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
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
