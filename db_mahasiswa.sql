-- phpMyAdmin SQL Dump
-- version 4.5.0.2
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 11, 2019 at 02:14 PM
-- Server version: 10.0.17-MariaDB
-- PHP Version: 5.6.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_mahasiswa`
--

-- --------------------------------------------------------

--
-- Table structure for table `log`
--

CREATE TABLE `log` (
  `id` int(15) NOT NULL,
  `nim` varchar(15) NOT NULL,
  `no_lama` varchar(15) NOT NULL,
  `no_baru` varchar(15) NOT NULL,
  `baru` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `log`
--

INSERT INTO `log` (`id`, `nim`, `no_lama`, `no_baru`, `baru`) VALUES
(0, '161240000559', '081725753758', '00000', '2019-11-11 10:44:10');

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `nim` varchar(50) NOT NULL,
  `nama lengkap` varchar(50) DEFAULT NULL,
  `jenis_kelamin` varchar(15) DEFAULT NULL,
  `alamat_lengkap` text NOT NULL,
  `nomer_hp` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mahasiswa`
--

INSERT INTO `mahasiswa` (`nim`, `nama lengkap`, `jenis_kelamin`, `alamat_lengkap`, `nomer_hp`) VALUES
('161240000559', 'Wahyu Kusuma Negara', 'L', 'Ngeling', '00000'),
('16124000056', 'Sella Anjayani', 'P', 'Suwawal ', '082357358896'),
('161240000560', 'Ari Teguh Pujianto', 'L', 'Semat', '082187017226'),
('16124000058', 'Cahya Setya Wati', 'P', 'Pati', '081250361054'),
('16124000061', 'Syharul Amy', 'L', 'Mlonggo', '081325425757');

--
-- Triggers `mahasiswa`
--
DELIMITER $$
CREATE TRIGGER `log_update` BEFORE UPDATE ON `mahasiswa` FOR EACH ROW BEGIN
INSERT INTO log
set nim=old.nim,
no_baru=new.nomer_hp,
no_lama=old.nomer_hp,
baru=NOW();
END
$$
DELIMITER ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `log`
--
ALTER TABLE `log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`nim`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
