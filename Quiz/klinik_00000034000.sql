-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 30, 2021 at 04:27 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `klinik_00000034000`
--

-- --------------------------------------------------------

--
-- Table structure for table `daftar_00000034000`
--

CREATE TABLE `daftar_00000034000` (
  `tgl_daftar` date NOT NULL,
  `kode_pasien` char(5) NOT NULL,
  `kode_dokter` char(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `daftar_00000034000`
--

INSERT INTO `daftar_00000034000` (`tgl_daftar`, `kode_pasien`, `kode_dokter`) VALUES
('2019-09-09', 'PS001', 'D0001'),
('2019-09-09', 'PS002', 'D0003'),
('2019-09-09', 'PS003', 'D0001'),
('2019-09-10', 'PS004', 'D0002'),
('2019-09-10', 'PS003', 'D0003'),
('2019-09-12', 'PS002', 'D0004'),
('2019-09-12', 'PS003', 'D0005'),
('2019-09-12', 'PS001', 'D0006'),
('2019-09-13', 'PS001', 'D0002'),
('2019-09-13', 'PS002', 'D0004'),
('2019-09-13', 'PS003', 'D0005');

-- --------------------------------------------------------

--
-- Table structure for table `dokter_00000034000`
--

CREATE TABLE `dokter_00000034000` (
  `kode_dokter` char(5) NOT NULL,
  `nama_dokter` varchar(60) NOT NULL,
  `jk` char(1) NOT NULL,
  `kode_spesialis` char(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dokter_00000034000`
--

INSERT INTO `dokter_00000034000` (`kode_dokter`, `nama_dokter`, `jk`, `kode_spesialis`) VALUES
('D0001', 'Dr. Bertha Berliana', 'P', 'S0001'),
('D0002', 'Dr. Novi Handoko', 'P', 'S0001'),
('D0003', 'Dr. Jenny, SpTHT', 'P', 'S0003'),
('D0004', 'Dr. Dodi Kardia Hersetiadi, SpTHT, M.Kes', 'L', 'S0003'),
('D0005', 'Drg. Dorothea Marselli Susanto', 'P', 'S0002'),
('D0006', 'Dr. Ratna Widyani, SpKK', 'P', 'S0004');

-- --------------------------------------------------------

--
-- Table structure for table `jadwal_dokter_00000034000`
--

CREATE TABLE `jadwal_dokter_00000034000` (
  `kode_dokter` char(5) NOT NULL,
  `hari` varchar(10) NOT NULL,
  `jam` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `jadwal_dokter_00000034000`
--

INSERT INTO `jadwal_dokter_00000034000` (`kode_dokter`, `hari`, `jam`) VALUES
('D0001', 'Senin', '08.00-16.0'),
('D0003', 'Senin', '12.00-16.0'),
('D0002', 'Selasa', '08.00-16.0'),
('D0003', 'Selasa', '08.00-12.0'),
('D0006', 'Selasa', '09.00-14.0'),
('D0001', 'Rabu', '08.00-16.0'),
('D0002', 'Rabu', '08.00-16.0'),
('D0003', 'Rabu', '12.00-16.0'),
('D0004', 'Kamis', '08.00-12.0'),
('D0005', 'Kamis', '12.00-16.0'),
('D0006', 'Kamis', '09.00-14.0'),
('D0001', 'Jumat', '08.00-16.0'),
('D0002', 'Jumat', '08.00-16.0'),
('D0004', 'Jumat', '12.00-16.0'),
('D0005', 'Jumat', '08.00-12.0'),
('D0001', 'Senin', '08.00-16.00'),
('D0003', 'Senin', '12.00-16.00'),
('D0002', 'Selasa', '08.00-16.00'),
('D0003', 'Selasa', '08.00-12.00'),
('D0006', 'Selasa', '09.00-14.00'),
('D0001', 'Rabu', '08.00-16.00'),
('D0002', 'Rabu', '08.00-16.00'),
('D0003', 'Rabu', '12.00-16.00'),
('D0004', 'Kamis', '08.00-12.00'),
('D0005', 'Kamis', '12.00-16.00'),
('D0006', 'Kamis', '09.00-14.00'),
('D0001', 'Jumat', '08.00-16.00'),
('D0002', 'Jumat', '08.00-16.00'),
('D0004', 'Jumat', '12.00-16.00'),
('D0005', 'Jumat', '08.00-12.00');

-- --------------------------------------------------------

--
-- Table structure for table `pasien_00000034000`
--

CREATE TABLE `pasien_00000034000` (
  `kode_pasien` char(5) NOT NULL,
  `nama_pasien` varchar(10) NOT NULL,
  `alamat` varchar(30) NOT NULL,
  `no_telp` int(11) NOT NULL,
  `jk` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pasien_00000034000`
--

INSERT INTO `pasien_00000034000` (`kode_pasien`, `nama_pasien`, `alamat`, `no_telp`, `jk`) VALUES
('PS001', 'Anggie', 'Jl. Pascal Timur 2 No 15', 2147483647, 'P'),
('PS002', 'Budi', 'Jl. Newton Barat 1 No 5', 2147483647, 'L'),
('PS003', 'Dedy', 'Jl. Kelapa Kopyor 6 No 8', 2147483647, 'L'),
('PS004', 'Ezra', 'Jl. Kelapa Puan 3 No 2', 2147483647, 'P');

-- --------------------------------------------------------

--
-- Table structure for table `spesialisasi_00000034000`
--

CREATE TABLE `spesialisasi_00000034000` (
  `kode_spesialis` char(5) NOT NULL,
  `nama_spesialis` varchar(20) NOT NULL,
  `honor` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `spesialisasi_00000034000`
--

INSERT INTO `spesialisasi_00000034000` (`kode_spesialis`, `nama_spesialis`, `honor`) VALUES
('S0001', 'Dokter Umum', 100000),
('S0002', 'Dokter Gigi', 200000),
('S0003', 'Dokter THT', 250000),
('S0004', 'Dokter Kulit', 300000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `daftar_00000034000`
--
ALTER TABLE `daftar_00000034000`
  ADD KEY `kode_pasien` (`kode_pasien`),
  ADD KEY `kode_dokter` (`kode_dokter`);

--
-- Indexes for table `dokter_00000034000`
--
ALTER TABLE `dokter_00000034000`
  ADD PRIMARY KEY (`kode_dokter`),
  ADD KEY `kode_spesialis` (`kode_spesialis`);

--
-- Indexes for table `jadwal_dokter_00000034000`
--
ALTER TABLE `jadwal_dokter_00000034000`
  ADD KEY `kode_dokter` (`kode_dokter`);

--
-- Indexes for table `pasien_00000034000`
--
ALTER TABLE `pasien_00000034000`
  ADD PRIMARY KEY (`kode_pasien`);

--
-- Indexes for table `spesialisasi_00000034000`
--
ALTER TABLE `spesialisasi_00000034000`
  ADD PRIMARY KEY (`kode_spesialis`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `daftar_00000034000`
--
ALTER TABLE `daftar_00000034000`
  ADD CONSTRAINT `daftar_00000034000_ibfk_1` FOREIGN KEY (`kode_pasien`) REFERENCES `pasien_00000034000` (`kode_pasien`),
  ADD CONSTRAINT `daftar_00000034000_ibfk_2` FOREIGN KEY (`kode_dokter`) REFERENCES `dokter_00000034000` (`kode_dokter`);

--
-- Constraints for table `dokter_00000034000`
--
ALTER TABLE `dokter_00000034000`
  ADD CONSTRAINT `dokter_00000034000_ibfk_1` FOREIGN KEY (`kode_spesialis`) REFERENCES `spesialisasi_00000034000` (`kode_spesialis`);

--
-- Constraints for table `jadwal_dokter_00000034000`
--
ALTER TABLE `jadwal_dokter_00000034000`
  ADD CONSTRAINT `jadwal_dokter_00000034000_ibfk_1` FOREIGN KEY (`kode_dokter`) REFERENCES `dokter_00000034000` (`kode_dokter`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
