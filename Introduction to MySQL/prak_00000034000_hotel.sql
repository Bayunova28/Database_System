-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 30, 2021 at 05:38 AM
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
-- Database: `prak_00000034000_hotel`
--

-- --------------------------------------------------------

--
-- Table structure for table `prak_00000034000_hotel`
--

CREATE TABLE `prak_00000034000_hotel` (
  `no` char(20) DEFAULT NULL,
  `nama` varchar(30) DEFAULT NULL,
  `alamat` varchar(30) DEFAULT NULL,
  `fasilitas` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `prak_00000034000_hotel`
--

INSERT INTO `prak_00000034000_hotel` (`no`, `nama`, `alamat`, `fasilitas`) VALUES
('1', 'Kandul Villas', 'Pulau Karangmajat, Kabupaten M', 'AC, restoran, kolam renang, Wi'),
('2', 'Alila Villas', 'Jl. Belimbing Sari, Uluwatu, B', 'resepsionis 24 jam, AC, WiFi'),
('3', 'Jeeva Beloam', 'Jl. Pantai Beloam, Lombok Timu', 'AC, restoran, parkir, WiFi'),
('4', 'Nihiwatu Resort', 'Nihiwatu, Sumba, Nusa Tenggara', 'AC, WiFi, bar pantai, spa'),
('5', 'Amanwana Resort', 'Pulau Moyo, Sumbawa Barat', 'AC, WiFi, ruang rapat, layanan');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
