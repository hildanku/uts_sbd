-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 09, 2023 at 10:03 AM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `travel_220202636`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(4) NOT NULL,
  `nama_user` varchar(25) DEFAULT NULL,
  `username` varchar(25) DEFAULT NULL,
  `password` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `detail`
--

CREATE TABLE `detail` (
  `id_detail` int(8) NOT NULL,
  `id_mobil` int(10) DEFAULT NULL,
  `nama_mobil` varchar(25) DEFAULT NULL,
  `merk` varchar(25) DEFAULT NULL,
  `nopol` varchar(25) DEFAULT NULL,
  `tahun` varchar(25) DEFAULT NULL,
  `id_supir` int(5) DEFAULT NULL,
  `nama_supir` varchar(50) DEFAULT NULL,
  `alamat` varchar(50) DEFAULT NULL,
  `telepon` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `harga_tiket`
--

CREATE TABLE `harga_tiket` (
  `id_tiket` int(8) NOT NULL,
  `asal` varchar(50) DEFAULT NULL,
  `tujuan` varchar(50) DEFAULT NULL,
  `harga` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `keberangkatan`
--

CREATE TABLE `keberangkatan` (
  `id_jadwal` int(15) NOT NULL,
  `hari` varchar(25) DEFAULT NULL,
  `jam` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `mobil`
--

CREATE TABLE `mobil` (
  `id_mobil` int(10) NOT NULL,
  `nama_mobil` varchar(25) DEFAULT NULL,
  `merk` varchar(25) DEFAULT NULL,
  `nopol` varchar(25) DEFAULT NULL,
  `tahun` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `supir`
--

CREATE TABLE `supir` (
  `id_supir` int(5) NOT NULL,
  `nama_supir` varchar(50) DEFAULT NULL,
  `alamat` varchar(50) DEFAULT NULL,
  `telepon` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indexes for table `detail`
--
ALTER TABLE `detail`
  ADD PRIMARY KEY (`id_detail`),
  ADD KEY `id_mobil` (`id_mobil`),
  ADD KEY `id_supir` (`id_supir`);

--
-- Indexes for table `harga_tiket`
--
ALTER TABLE `harga_tiket`
  ADD PRIMARY KEY (`id_tiket`);

--
-- Indexes for table `keberangkatan`
--
ALTER TABLE `keberangkatan`
  ADD PRIMARY KEY (`id_jadwal`);

--
-- Indexes for table `mobil`
--
ALTER TABLE `mobil`
  ADD PRIMARY KEY (`id_mobil`);

--
-- Indexes for table `supir`
--
ALTER TABLE `supir`
  ADD PRIMARY KEY (`id_supir`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id_admin` int(4) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `detail`
--
ALTER TABLE `detail`
  MODIFY `id_detail` int(8) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `harga_tiket`
--
ALTER TABLE `harga_tiket`
  MODIFY `id_tiket` int(8) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `keberangkatan`
--
ALTER TABLE `keberangkatan`
  MODIFY `id_jadwal` int(15) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mobil`
--
ALTER TABLE `mobil`
  MODIFY `id_mobil` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `supir`
--
ALTER TABLE `supir`
  MODIFY `id_supir` int(5) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `detail`
--
ALTER TABLE `detail`
  ADD CONSTRAINT `detail_ibfk_1` FOREIGN KEY (`id_mobil`) REFERENCES `mobil` (`id_mobil`),
  ADD CONSTRAINT `detail_ibfk_2` FOREIGN KEY (`id_supir`) REFERENCES `supir` (`id_supir`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
