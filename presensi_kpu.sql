-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Aug 05, 2020 at 05:27 AM
-- Server version: 5.7.28
-- PHP Version: 7.4.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `presensi_kpu`
--

-- --------------------------------------------------------

--
-- Table structure for table `t_biro`
--

DROP TABLE IF EXISTS `t_biro`;
CREATE TABLE IF NOT EXISTS `t_biro` (
  `id_unitkerja` int(11) NOT NULL AUTO_INCREMENT,
  `unitkerja` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id_unitkerja`)
) ENGINE=InnoDB AUTO_INCREMENT=191001 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_biro`
--

INSERT INTO `t_biro` (`id_unitkerja`, `unitkerja`) VALUES
(110000, 'SEKRETARIAT JENDERAL KPU'),
(121000, 'BIRO PERENCANAAN & DATA'),
(131000, 'BIRO KEUANGAN'),
(141000, 'BIRO SUMBER DAYA MANUSIA'),
(151000, 'BIRO UMUM'),
(161000, 'BIRO LOGISTIK'),
(171000, 'BIRO TEKNIS & HUMAS'),
(181000, 'BIRO HUKUM'),
(191000, 'INSPEKTORAT');

-- --------------------------------------------------------

--
-- Table structure for table `t_pegawai`
--

DROP TABLE IF EXISTS `t_pegawai`;
CREATE TABLE IF NOT EXISTS `t_pegawai` (
  `id` int(255) NOT NULL,
  `handkey` int(255) NOT NULL,
  `nip` int(255) NOT NULL,
  `namalengkap` varchar(255) NOT NULL,
  `id_unitkerja` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
