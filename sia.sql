-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 26, 2023 at 11:30 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sia`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_admin`
--

CREATE TABLE `tb_admin` (
  `id_a` varchar(100) NOT NULL,
  `username_a` varchar(100) NOT NULL,
  `pw_a` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_admin`
--

INSERT INTO `tb_admin` (`id_a`, `username_a`, `pw_a`) VALUES
('001', 'admin', 'admin1');

-- --------------------------------------------------------

--
-- Table structure for table `tb_aset`
--

CREATE TABLE `tb_aset` (
  `id_aset` varchar(100) NOT NULL,
  `nama_aset` varchar(50) NOT NULL,
  `nominal _aset` int(30) NOT NULL,
  `tgl_aset` date DEFAULT NULL,
  `total_aset` int(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tb_ekuitas`
--

CREATE TABLE `tb_ekuitas` (
  `id_ekuitas` varchar(100) NOT NULL,
  `nama_ekuitas` varchar(50) NOT NULL,
  `nominal_ekuitas` int(30) NOT NULL,
  `tgl_ekuitas` date DEFAULT NULL,
  `total_ekuitas` int(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tb_libilitas`
--

CREATE TABLE `tb_libilitas` (
  `id_libilitas` varchar(100) NOT NULL,
  `nama_libilitas` varchar(50) NOT NULL,
  `nominal_libilitas` int(30) NOT NULL,
  `tgl_libilitas` date DEFAULT NULL,
  `total_libilitas` int(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tb_perusahaan`
--

CREATE TABLE `tb_perusahaan` (
  `id_perusahaan` varchar(100) NOT NULL,
  `nama_perusahaan` varchar(100) NOT NULL,
  `no_telp_p` int(15) NOT NULL,
  `no_fax_p` int(15) NOT NULL,
  `nama_pemilik_p` varchar(40) NOT NULL,
  `sp_saham` text NOT NULL,
  `tgl_berdiri` date NOT NULL,
  `jenis_perusahaan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tb_user`
--

CREATE TABLE `tb_user` (
  `id_user` varchar(100) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email_user` varchar(50) NOT NULL,
  `password_user` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_admin`
--
ALTER TABLE `tb_admin`
  ADD PRIMARY KEY (`id_a`);

--
-- Indexes for table `tb_aset`
--
ALTER TABLE `tb_aset`
  ADD PRIMARY KEY (`id_aset`);

--
-- Indexes for table `tb_ekuitas`
--
ALTER TABLE `tb_ekuitas`
  ADD PRIMARY KEY (`id_ekuitas`);

--
-- Indexes for table `tb_libilitas`
--
ALTER TABLE `tb_libilitas`
  ADD PRIMARY KEY (`id_libilitas`);

--
-- Indexes for table `tb_perusahaan`
--
ALTER TABLE `tb_perusahaan`
  ADD PRIMARY KEY (`id_perusahaan`);

--
-- Indexes for table `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`id_user`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
