-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 31, 2018 at 06:53 AM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 7.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `skripsi`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(5) NOT NULL,
  `username` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `password` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `nama_lengkap` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `email` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `no_telp` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `level` varchar(20) COLLATE latin1_general_ci NOT NULL DEFAULT 'user',
  `status` enum('Aktif','Blokir') COLLATE latin1_general_ci NOT NULL DEFAULT 'Aktif',
  `id_session` varchar(100) COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `nama_lengkap`, `email`, `no_telp`, `level`, `status`, `id_session`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'Admin', 'admin@gmail.com', '', 'admin', 'Aktif', ''),
(5, 'kepdes', '8556db435ca001dc364d41a069667fad', 'Kepala Desa', '', '', 'kepdes', 'Aktif', '');

-- --------------------------------------------------------

--
-- Table structure for table `berita`
--

CREATE TABLE `berita` (
  `id_berita` int(5) NOT NULL,
  `judul` varchar(150) NOT NULL,
  `judul_seo` varchar(200) NOT NULL,
  `deskripsi` text NOT NULL,
  `gambar` varchar(200) NOT NULL,
  `tgl_post` datetime NOT NULL,
  `tgl_update` datetime NOT NULL,
  `keyword` varchar(400) NOT NULL,
  `description` varchar(156) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `berita`
--

INSERT INTO `berita` (`id_berita`, `judul`, `judul_seo`, `deskripsi`, `gambar`, `tgl_post`, `tgl_update`, `keyword`, `description`) VALUES
(5, 'Berita Terbaru 4', 'berita-terbaru-4', '<p style=\"text-align: justify;\">Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;</p>\r\n', 'berita-terbaru-4-52.png', '2018-05-23 10:43:05', '2018-05-23 10:43:05', 'berita terbaru', 'berita terbaru'),
(6, 'Berita Terbaru 5', 'berita-terbaru-5', '<p style=\"text-align: justify;\">Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;</p>\r\n', 'berita-terbaru-5-43.png', '2018-05-23 10:52:45', '2018-05-23 10:53:04', '', ''),
(7, 'Berita Terbaru 6', 'berita-terbaru-6', '<p style=\"text-align: justify;\">Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;</p>\r\n', 'berita-terbaru-6-24.png', '2018-05-23 10:53:19', '2018-05-23 10:53:19', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `desa`
--

CREATE TABLE `desa` (
  `id_desa` int(5) NOT NULL,
  `judul` varchar(128) NOT NULL,
  `judul_seo` varchar(128) NOT NULL,
  `deskripsi` text NOT NULL,
  `sejarah` text NOT NULL,
  `tgl_post` datetime NOT NULL,
  `tgl_update` datetime NOT NULL,
  `keyword` varchar(400) NOT NULL,
  `description` varchar(156) NOT NULL,
  `gambar` varchar(100) NOT NULL,
  `jml_penduduk` varchar(100) NOT NULL,
  `jml_kematian` varchar(100) NOT NULL,
  `jml_lahir` varchar(100) NOT NULL,
  `foto` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `desa`
--

INSERT INTO `desa` (`id_desa`, `judul`, `judul_seo`, `deskripsi`, `sejarah`, `tgl_post`, `tgl_update`, `keyword`, `description`, `gambar`, `jml_penduduk`, `jml_kematian`, `jml_lahir`, `foto`) VALUES
(1, 'LALOLE', 'lalole', '<p style=\"text-align:justify\">Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;</p>\r\n', '<p style=\"text-align:justify\">ini adalah sejarah dan masih dalam penginputan data&nbsp;ini adalah sejarah dan masih dalam penginputan data&nbsp;ini adalah sejarah dan masih dalam penginputan data&nbsp;ini adalah sejarah dan masih dalam penginputan data&nbsp;ini adalah sejarah dan masih dalam penginputan data&nbsp;ini adalah sejarah dan masih dalam penginputan data&nbsp;ini adalah sejarah dan masih dalam penginputan data&nbsp;ini adalah sejarah dan masih dalam penginputan data&nbsp;ini adalah sejarah dan masih dalam penginputan data&nbsp;ini adalah sejarah dan masih dalam penginputan data&nbsp;ini adalah sejarah dan masih dalam penginputan data&nbsp;ini adalah sejarah dan masih dalam penginputan data&nbsp;ini adalah sejarah dan masih dalam penginputan data&nbsp;ini adalah sejarah dan masih dalam penginputan data&nbsp;ini adalah sejarah dan masih dalam penginputan data&nbsp;ini adalah sejarah dan masih dalam penginputan data&nbsp;ini adalah sejarah dan masih dalam penginputan data&nbsp;ini adalah sejarah dan masih dalam penginputan data&nbsp;ini adalah sejarah dan masih dalam penginputan data&nbsp;ini adalah sejarah dan masih dalam penginputan data&nbsp;ini adalah sejarah dan masih dalam penginputan data&nbsp;ini adalah sejarah dan masih dalam penginputan data&nbsp;ini adalah sejarah dan masih dalam penginputan data&nbsp;ini adalah sejarah dan masih dalam penginputan data&nbsp;ini adalah sejarah dan masih dalam penginputan data&nbsp;ini adalah sejarah dan masih dalam penginputan data&nbsp;ini adalah sejarah dan masih dalam penginputan data&nbsp;ini adalah sejarah dan masih dalam penginputan data&nbsp;ini adalah sejarah dan masih dalam penginputan data&nbsp;ini adalah sejarah dan masih dalam penginputan data&nbsp;</p>\r\n', '2018-05-24 13:02:26', '2018-07-26 23:00:49', '', '', 'desa-1-17.jpeg', '500 Orang', '8 Orang', '10 Orang', ''),
(2, 'KAMOALI', 'kamoali', '<p style=\"text-align:justify\">Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;</p>\r\n', '<p style=\"text-align:justify\">ini adalah sejarah dan masih dalam penginputan data&nbsp;ini adalah sejarah dan masih dalam penginputan data&nbsp;ini adalah sejarah dan masih dalam penginputan data&nbsp;ini adalah sejarah dan masih dalam penginputan data&nbsp;ini adalah sejarah dan masih dalam penginputan data&nbsp;ini adalah sejarah dan masih dalam penginputan data&nbsp;ini adalah sejarah dan masih dalam penginputan data&nbsp;ini adalah sejarah dan masih dalam penginputan data&nbsp;ini adalah sejarah dan masih dalam penginputan data&nbsp;ini adalah sejarah dan masih dalam penginputan data&nbsp;ini adalah sejarah dan masih dalam penginputan data&nbsp;ini adalah sejarah dan masih dalam penginputan data&nbsp;ini adalah sejarah dan masih dalam penginputan data&nbsp;ini adalah sejarah dan masih dalam penginputan data&nbsp;ini adalah sejarah dan masih dalam penginputan data&nbsp;ini adalah sejarah dan masih dalam penginputan data&nbsp;ini adalah sejarah dan masih dalam penginputan data&nbsp;ini adalah sejarah dan masih dalam penginputan data&nbsp;ini adalah sejarah dan masih dalam penginputan data&nbsp;ini adalah sejarah dan masih dalam penginputan data&nbsp;ini adalah sejarah dan masih dalam penginputan data&nbsp;ini adalah sejarah dan masih dalam penginputan data&nbsp;ini adalah sejarah dan masih dalam penginputan data&nbsp;ini adalah sejarah dan masih dalam penginputan data&nbsp;ini adalah sejarah dan masih dalam penginputan data&nbsp;ini adalah sejarah dan masih dalam penginputan data&nbsp;ini adalah sejarah dan masih dalam penginputan data&nbsp;ini adalah sejarah dan masih dalam penginputan data&nbsp;ini adalah sejarah dan masih dalam penginputan data&nbsp;ini adalah sejarah dan masih dalam penginputan data&nbsp;</p>\r\n', '2018-05-24 13:02:39', '2018-07-26 23:10:28', '', '', 'desa-2-74.jpeg', '', '', '', ''),
(3, 'MOKOBEAU', 'mokobeau', '<p style=\"text-align:justify\">Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;</p>\r\n', '<p style=\"text-align:justify\">ini adalah sejarah dan masih dalam penginputan data&nbsp;ini adalah sejarah dan masih dalam penginputan data&nbsp;ini adalah sejarah dan masih dalam penginputan data&nbsp;ini adalah sejarah dan masih dalam penginputan data&nbsp;ini adalah sejarah dan masih dalam penginputan data&nbsp;ini adalah sejarah dan masih dalam penginputan data&nbsp;ini adalah sejarah dan masih dalam penginputan data&nbsp;ini adalah sejarah dan masih dalam penginputan data&nbsp;ini adalah sejarah dan masih dalam penginputan data&nbsp;ini adalah sejarah dan masih dalam penginputan data&nbsp;ini adalah sejarah dan masih dalam penginputan data&nbsp;ini adalah sejarah dan masih dalam penginputan data&nbsp;ini adalah sejarah dan masih dalam penginputan data&nbsp;ini adalah sejarah dan masih dalam penginputan data&nbsp;ini adalah sejarah dan masih dalam penginputan data&nbsp;ini adalah sejarah dan masih dalam penginputan data&nbsp;ini adalah sejarah dan masih dalam penginputan data&nbsp;ini adalah sejarah dan masih dalam penginputan data&nbsp;ini adalah sejarah dan masih dalam penginputan data&nbsp;ini adalah sejarah dan masih dalam penginputan data&nbsp;ini adalah sejarah dan masih dalam penginputan data&nbsp;ini adalah sejarah dan masih dalam penginputan data&nbsp;ini adalah sejarah dan masih dalam penginputan data&nbsp;ini adalah sejarah dan masih dalam penginputan data&nbsp;ini adalah sejarah dan masih dalam penginputan data&nbsp;ini adalah sejarah dan masih dalam penginputan data&nbsp;ini adalah sejarah dan masih dalam penginputan data&nbsp;ini adalah sejarah dan masih dalam penginputan data&nbsp;ini adalah sejarah dan masih dalam penginputan data&nbsp;ini adalah sejarah dan masih dalam penginputan data&nbsp;</p>\r\n', '2018-05-24 13:02:54', '2018-07-26 23:10:48', '', '', '', '', '', '', ''),
(4, 'MOLONA', 'molona', '<p style=\"text-align:justify\">Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;</p>\r\n', '<p style=\"text-align:justify\">ini adalah sejarah dan masih dalam penginputan data&nbsp;ini adalah sejarah dan masih dalam penginputan data&nbsp;ini adalah sejarah dan masih dalam penginputan data&nbsp;ini adalah sejarah dan masih dalam penginputan data&nbsp;ini adalah sejarah dan masih dalam penginputan data&nbsp;ini adalah sejarah dan masih dalam penginputan data&nbsp;ini adalah sejarah dan masih dalam penginputan data&nbsp;ini adalah sejarah dan masih dalam penginputan data&nbsp;ini adalah sejarah dan masih dalam penginputan data&nbsp;ini adalah sejarah dan masih dalam penginputan data&nbsp;ini adalah sejarah dan masih dalam penginputan data&nbsp;ini adalah sejarah dan masih dalam penginputan data&nbsp;ini adalah sejarah dan masih dalam penginputan data&nbsp;ini adalah sejarah dan masih dalam penginputan data&nbsp;ini adalah sejarah dan masih dalam penginputan data&nbsp;ini adalah sejarah dan masih dalam penginputan data&nbsp;ini adalah sejarah dan masih dalam penginputan data&nbsp;ini adalah sejarah dan masih dalam penginputan data&nbsp;ini adalah sejarah dan masih dalam penginputan data&nbsp;ini adalah sejarah dan masih dalam penginputan data&nbsp;ini adalah sejarah dan masih dalam penginputan data&nbsp;ini adalah sejarah dan masih dalam penginputan data&nbsp;ini adalah sejarah dan masih dalam penginputan data&nbsp;ini adalah sejarah dan masih dalam penginputan data&nbsp;ini adalah sejarah dan masih dalam penginputan data&nbsp;ini adalah sejarah dan masih dalam penginputan data&nbsp;ini adalah sejarah dan masih dalam penginputan data&nbsp;ini adalah sejarah dan masih dalam penginputan data&nbsp;ini adalah sejarah dan masih dalam penginputan data&nbsp;ini adalah sejarah dan masih dalam penginputan data&nbsp;</p>\r\n', '2018-05-24 13:03:07', '2018-07-26 23:11:05', '', '', '', '', '', '', ''),
(5, 'WATUAMPARA', 'watuampara', '<p>Watuampara adalah desa paing ojok yang letaknya</p>\r\n', '<p>desa watuampara diambil dari nama watu dan mpara yang artinya batu&nbsp;</p>\r\n', '2018-07-28 08:01:59', '2018-07-28 08:01:59', '', '', 'watuampara-52.jpeg', '', '', '', ''),
(6, 'LAMANINGGARA', 'lamaninggara', '<p>LAMANINGGARA</p>\r\n', '<p>LAMANINGGARA</p>\r\n', '2018-07-28 08:02:36', '2018-07-28 08:02:36', '', '', 'lamaninggara-17.jpeg', '', '', '', ''),
(7, 'KATAMPE', 'katampe', '<p>KATAMPE</p>\r\n', '<p>KATAMPE</p>\r\n', '2018-07-28 08:03:25', '2018-07-28 08:03:25', '', '', 'katampe-21.jpeg', '', '', '', ''),
(8, 'MBANUA', 'mbanua', '<p>MBANUA</p>\r\n', '<p>MBANUA</p>\r\n', '2018-07-28 08:04:10', '2018-07-28 08:04:10', '', '', 'mbanua-76.jpeg', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `dusun`
--

CREATE TABLE `dusun` (
  `id_dusun` int(11) NOT NULL,
  `nama_dusun` varchar(50) DEFAULT NULL,
  `id_desa` int(11) DEFAULT NULL,
  `jumlah_rt` int(11) DEFAULT NULL,
  `jumlah_rw` int(11) DEFAULT NULL,
  `jml_penduduk` varchar(20) NOT NULL,
  `jml_lahir` varchar(20) NOT NULL,
  `jml_kematian` varchar(20) NOT NULL,
  `jml_mutasi` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dusun`
--

INSERT INTO `dusun` (`id_dusun`, `nama_dusun`, `id_desa`, `jumlah_rt`, `jumlah_rw`, `jml_penduduk`, `jml_lahir`, `jml_kematian`, `jml_mutasi`) VALUES
(1, 'LABOLO', 1, 100, 100, '100', '20', '5', '2'),
(7, 'LAPOSI', 1, 100, 100, '', '', '', ''),
(12, 'LABANTU', 1, 100, 100, '', '', '', ''),
(13, 'LALOLE', 2, 20, 20, '', '', '', ''),
(14, 'KAMOALI', 2, 20, 20, '', '', '', ''),
(15, 'BANDINGI', 2, 20, 20, '', '', '', ''),
(16, 'KAMBULULI', 2, 20, 20, '', '', '', ''),
(17, 'KANAWA', 3, 20, 20, '', '', '', ''),
(18, 'TANAH BENGKO', 3, 20, 20, '', '', '', ''),
(19, 'KAMPO BARU', 7, 20, 20, '', '', '', ''),
(20, 'WANGKOPIPI', 7, 20, 20, '', '', '', ''),
(21, 'KALOKALO', 7, 20, 20, '', '', '', ''),
(22, 'KATAMPE', 7, 20, 20, '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `galeri`
--

CREATE TABLE `galeri` (
  `id_galeri` int(5) NOT NULL,
  `judul` varchar(180) NOT NULL,
  `gambar` varchar(180) NOT NULL,
  `tgl_post` datetime NOT NULL,
  `seo` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `galeri`
--

INSERT INTO `galeri` (`id_galeri`, `judul`, `gambar`, `tgl_post`, `seo`) VALUES
(1, 'galeri 1', 'galeri-1-49', '2018-05-23 14:39:30', 'galeri-1'),
(2, 'galeri 2', 'galeri-2-92', '2018-05-23 14:40:30', 'galeri-2'),
(3, 'galeri 3', 'galeri-3-86', '2018-05-23 14:40:39', 'galeri-3'),
(4, 'galeri 4', 'galeri-4-13', '2018-05-29 12:04:01', 'galeri-4'),
(5, 'jjj', 'jjj-40', '2018-07-26 12:48:32', 'jjj');

-- --------------------------------------------------------

--
-- Table structure for table `kecamatan`
--

CREATE TABLE `kecamatan` (
  `id_kecamatan` int(11) NOT NULL,
  `nama_kecamatan` varchar(50) DEFAULT NULL,
  `visi_misi` text,
  `sejarah` text,
  `total_penduduk` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kecamatan`
--

INSERT INTO `kecamatan` (`id_kecamatan`, `nama_kecamatan`, `visi_misi`, `sejarah`, `total_penduduk`) VALUES
(2, 'Siompu', 'Tidak ada', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 21000),
(3, 'Siompu Barat', 'Mangan telo', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 21000),
(4, 'Siompu TImur', 'Mangan telo', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 21000),
(5, 'Siompu Barat', 'Mangan telo', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 21000),
(6, 'Siompu Barat', 'Mangan telo', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 21000),
(7, 'Siompu TImur', 'Mangan telo', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 21000);

-- --------------------------------------------------------

--
-- Table structure for table `kematian`
--

CREATE TABLE `kematian` (
  `id_kematian` int(50) NOT NULL,
  `id_dusun` int(11) NOT NULL,
  `tanggal_kematian` date NOT NULL,
  `nik` varchar(50) NOT NULL,
  `keterangan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kematian`
--

INSERT INTO `kematian` (`id_kematian`, `id_dusun`, `tanggal_kematian`, `nik`, `keterangan`) VALUES
(2, 10, '2018-07-24', '7404265205630001', 'Sakit');

-- --------------------------------------------------------

--
-- Table structure for table `kepdes`
--

CREATE TABLE `kepdes` (
  `id_kepdes` int(11) NOT NULL,
  `id_desa` int(11) NOT NULL,
  `gambar` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kepdes`
--

INSERT INTO `kepdes` (`id_kepdes`, `id_desa`, `gambar`) VALUES
(4, 1, '92.png'),
(5, 1, '34.png');

-- --------------------------------------------------------

--
-- Table structure for table `kontak`
--

CREATE TABLE `kontak` (
  `id_kontak` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `pesan` text NOT NULL,
  `waktu` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` enum('Baru','Dibaca') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `masukkan`
--

CREATE TABLE `masukkan` (
  `id_masukkan` int(11) NOT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `subjek` varchar(100) NOT NULL,
  `pesan` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `masukkan`
--

INSERT INTO `masukkan` (`id_masukkan`, `nama`, `email`, `subjek`, `pesan`) VALUES
(1, 'Siti Nurhalija', 'siti@gmail.com', 'Warna Website ', 'warna website kurang menarik sebaiknya diganti warna hijau'),
(2, 'Riki', 'riki@gmail.com', 'Logo website ', 'Logo website sebaiknya diganti , warna kuning terlalu cerah');

-- --------------------------------------------------------

--
-- Table structure for table `modul`
--

CREATE TABLE `modul` (
  `id_modul` int(5) NOT NULL,
  `nama` varchar(150) NOT NULL,
  `nama_seo` varchar(200) NOT NULL,
  `gambar` varchar(200) NOT NULL,
  `deskripsi` text NOT NULL,
  `hapus` enum('Yes','No') NOT NULL,
  `jenis_modul` enum('Text','Textarea','Judul & Text','Judul & Textarea','Text Images','Textarea Images','Images') NOT NULL,
  `tgl_update` datetime NOT NULL,
  `tampil` enum('Ya','Tidak') NOT NULL,
  `status` enum('On','Off') NOT NULL,
  `no_urut` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `modul`
--

INSERT INTO `modul` (`id_modul`, `nama`, `nama_seo`, `gambar`, `deskripsi`, `hapus`, `jenis_modul`, `tgl_update`, `tampil`, `status`, `no_urut`) VALUES
(0, 'Nama Web', 'nama-web', '', 'panel', 'No', '', '2017-11-01 02:22:09', 'Tidak', 'On', 0),
(1, 'Alamat', 'alamat', '', '<p>Jl. Mondorakan no. 83 Kotagede Yogyakarta</p>\r\n', 'No', 'Textarea', '2018-02-22 21:41:36', 'Ya', 'On', 4),
(2, 'Home Footer 2', 'home-footer-2', '', '<p>Exclusive design, compact spatial, prestigious location, limited units, facilities, valuable investment with reasonable price. Find on OUR PROJECT In Yogyakarta..... <a class=\"g-transparent-a b3link\" href=\"project\" id=\"StBttn0link\" target=\"_self\"> </a>VIEW MORE<a class=\"g-transparent-a b3link\" href=\"project\" id=\"StBttn0link\" target=\"_self\"> </a></p>\r\n', 'No', 'Textarea', '2017-12-18 04:20:01', 'Tidak', 'Off', 0),
(8, 'No Telpon', 'no-telpon', '', '0813-7781-466 / 0818-0496-8908', 'No', 'Text', '2018-02-22 21:47:03', 'Ya', 'On', 5),
(9, 'Email', 'email', '', '', 'No', 'Text', '2018-02-22 11:54:21', 'Tidak', 'On', 6),
(10, 'Email 2', 'email', '', 'mail@gmail.com', 'No', '', '2017-10-18 22:59:49', 'Tidak', 'Off', 0),
(11, 'Maps', 'our-maps', '', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d15810.750154014973!2d110.3630825!3d-7.822859!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x963b0545677bbbaf!2sJogja+Regale+Cake+Thiwul+Kekinian!5e0!3m2!1sen!2sid!4v1513851453113\" width=\"100%\" height=\"215\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', 'No', 'Text', '2017-09-21 12:30:05', 'Tidak', 'On', 7),
(12, 'No WA', 'no-wa', '', '+6285292315758', 'No', 'Text', '2018-01-26 12:42:12', 'Tidak', 'On', 6),
(13, 'No BBM', '', '', '', 'No', 'Text', '2017-06-12 02:14:28', 'Tidak', 'Off', 0),
(15, 'Fanspage Facebook', 'fanspage-facebook', '', 'https://www.facebook.com/gishanfloristklaten', 'No', 'Text', '2018-02-22 11:54:40', 'Tidak', 'On', 8),
(16, 'Twitter Link', 'twitter-link', '', '', 'No', 'Text', '2017-09-17 16:09:16', 'Tidak', 'Off', 0),
(17, 'Instagram Link', 'instagram-link', '', 'https://www.instagram.com/', 'No', '', '2017-10-14 00:08:16', 'Tidak', 'On', 3),
(18, 'Visitor Embed', 'visitor-embed', '', '21232f297a57a5a743894a0e4a801fc3-18', 'No', '', '2017-09-17 13:29:44', 'Tidak', 'Off', 0),
(19, 'Login', 'visitor-counter', '', '<b>Login in &nbsp;&nbsp;&nbsp;: </b>2017-09-22 23:52:08 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2017-09-23 00:14:31 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2017-10-10 23:14:45 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2017-10-11 02:49:26 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2017-10-12 14:33:17 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2017-10-12 18:03:22 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2017-10-12 18:19:55 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2017-10-12 20:51:11 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2017-10-12 21:44:34 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2017-10-14 00:03:06 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2017-10-14 02:07:14 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2017-10-14 04:31:29 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2017-10-14 07:09:02 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2017-10-15 09:37:11 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2017-10-15 09:39:42 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2017-10-17 06:25:45 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2017-10-17 19:08:06 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2017-10-18 22:55:55 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2017-10-25 01:22:17 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2017-10-25 01:23:35 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2017-10-25 02:51:08 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2017-10-25 03:09:25 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2017-10-25 03:49:16 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2017-10-25 09:28:56 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2017-10-26 01:01:03 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2017-10-26 02:00:52 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2017-10-26 03:15:08 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2017-10-26 03:25:46 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2017-10-26 06:06:06 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2017-10-26 08:08:42 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2017-10-26 09:35:41 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2017-10-26 09:40:30 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2017-10-26 09:47:05 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2017-10-26 10:41:35 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2017-10-26 10:57:11 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2017-10-26 11:08:19 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2017-10-27 07:39:22 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2017-10-27 17:28:29 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2017-10-28 23:07:27 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2017-10-29 02:00:50 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2017-10-29 04:15:30 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2017-10-29 05:14:01 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2017-10-29 05:22:07 | User +Admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2017-10-29 11:06:20 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2017-10-29 12:59:39 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2017-10-29 19:43:17 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2017-10-29 21:08:49 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2017-10-30 07:13:48 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2017-10-31 18:29:47 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2017-10-31 19:26:50 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2017-10-31 21:09:11 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2017-10-31 22:46:04 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2017-11-01 02:00:13 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2017-11-01 02:33:12 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2017-11-01 13:05:38 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2017-11-01 18:12:09 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2017-11-01 19:24:44 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2017-11-01 20:21:45 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2017-11-01 20:21:55 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2017-11-14 14:09:40 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2017-11-14 14:25:11 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2017-11-14 14:27:14 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2017-11-14 14:30:15 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2017-11-14 14:32:22 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2017-11-14 14:42:22 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2017-11-14 14:49:00 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2017-11-18 07:50:47 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2017-11-18 12:39:17 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2017-11-18 19:53:41 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2017-11-19 16:29:19 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2017-11-19 16:42:16 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2017-11-19 17:03:38 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2017-11-21 21:37:19 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2017-11-21 21:47:36 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2017-11-21 21:59:34 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2017-11-21 22:01:30 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2017-11-21 22:25:01 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2017-11-21 23:49:24 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2017-11-21 23:54:31 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2017-11-22 00:27:34 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2017-11-22 01:07:01 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2017-11-22 02:09:09 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2017-11-22 19:35:29 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2017-11-23 17:12:30 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2017-11-30 17:39:11 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2017-11-30 17:39:14 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2017-11-30 17:40:22 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2017-11-30 17:42:15 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2017-11-30 17:43:47 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2017-11-30 17:44:28 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2017-11-30 17:52:15 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2017-11-30 17:56:34 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2017-11-30 18:04:30 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2017-12-04 20:07:58 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2017-12-04 20:09:05 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2017-12-05 00:32:27 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2017-12-05 02:43:44 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2017-12-05 20:25:39 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2017-12-05 20:50:49 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2017-12-05 20:51:07 | User +fauzi+ | Password +fauzi+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2017-12-05 20:51:16 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2017-12-05 22:17:03 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2017-12-05 22:18:18 | User +Admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2017-12-05 23:41:36 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2017-12-06 10:03:25 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2017-12-06 10:35:09 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2017-12-06 18:48:13 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2017-12-06 19:37:39 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2017-12-06 21:06:46 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2017-12-06 23:12:52 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2017-12-07 01:23:29 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2017-12-07 01:51:19 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2017-12-12 00:04:15 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2017-12-12 00:11:46 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2017-12-12 00:13:12 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2017-12-12 00:32:51 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2017-12-12 00:38:21 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2017-12-12 00:42:07 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2017-12-12 01:26:10 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2017-12-12 01:46:38 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2017-12-13 02:51:01 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2017-12-18 03:08:30 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2017-12-18 04:19:38 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2017-12-18 04:37:27 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2017-12-19 22:12:36 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2017-12-19 23:11:13 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2017-12-19 23:44:39 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2017-12-20 00:00:34 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2017-12-21 18:24:03 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2017-12-21 19:12:20 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2017-12-21 19:13:57 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2017-12-21 19:14:53 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2017-12-21 19:25:25 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2017-12-24 04:07:38 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2017-12-24 04:57:56 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2017-12-24 05:20:31 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2017-12-24 06:29:28 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2017-12-24 07:13:25 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2017-12-24 10:13:38 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2017-12-24 10:23:23 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2017-12-24 10:59:31 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2017-12-24 11:21:31 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2017-12-24 11:38:52 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2017-12-24 11:41:03 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2017-12-24 12:21:01 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2017-12-25 11:02:26 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2018-01-26 09:25:08 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2018-01-26 13:21:41 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2018-02-07 21:23:53 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2018-02-21 10:51:41 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2018-02-21 13:17:33 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2018-02-21 13:49:58 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2018-02-21 14:34:21 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2018-02-22 05:19:14 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2018-02-22 05:23:19 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2018-02-22 06:20:08 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2018-02-22 10:24:58 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2018-02-22 18:58:53 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2018-02-22 20:01:11 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2018-02-22 21:37:03 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2018-02-22 21:46:53 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2018-02-23 07:30:11 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2018-02-23 07:50:21 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2018-02-23 07:52:31 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2018-02-23 10:46:15 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2018-02-23 11:23:17 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2018-02-24 06:24:58 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2018-02-24 07:50:43 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2018-02-24 14:50:40 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2018-02-24 15:40:32 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2018-02-24 18:31:57 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2018-02-25 09:45:34 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2018-02-25 12:21:34 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2018-02-25 13:33:29 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2018-02-27 09:08:20 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2018-02-27 09:17:05 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2018-04-06 14:44:53 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2018-04-06 14:53:23 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2018-04-07 20:46:02 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2018-04-17 19:29:38 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2018-04-18 10:36:51 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2018-04-21 15:18:40 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2018-05-22 19:56:01 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2018-05-22 20:08:41 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2018-05-22 20:39:35 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2018-05-22 21:08:38 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2018-05-22 21:11:23 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2018-05-22 21:12:59 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2018-05-22 21:20:52 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2018-05-23 04:54:55 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2018-05-23 04:59:48 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2018-05-23 09:24:47 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2018-05-23 10:39:40 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2018-05-23 10:48:08 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2018-05-23 13:06:55 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2018-05-23 14:34:48 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2018-05-23 18:29:45 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2018-05-23 18:37:27 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2018-05-24 04:41:55 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2018-05-24 04:45:03 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2018-05-24 05:02:19 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2018-05-24 05:15:57 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2018-05-24 12:52:30 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2018-05-29 11:18:08 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2018-05-29 11:56:02 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2018-07-17 21:10:16 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2018-07-19 06:02:21 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2018-07-20 13:11:20 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2018-07-21 07:08:21 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2018-07-22 13:15:24 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2018-07-22 17:04:42 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2018-07-24 21:20:57 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2018-07-25 06:58:06 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2018-07-25 14:45:51 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2018-07-25 19:47:45 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2018-07-26 13:20:26 | User +kepdes+ | Password +kepdes+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2018-07-26 12:36:32 | User +kepdes+ | Password +kepdes+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2018-07-26 12:38:40 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2018-07-26 22:59:46 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2018-07-26 23:19:59 | User +kepdes+ | Password +kepdes+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2018-07-27 07:31:23 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2018-07-27 07:38:22 | User +kepdes+ | Password +kepdes+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2018-07-28 07:59:06 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2018-07-29 02:37:48 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2018-07-29 04:40:16 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2018-07-29 15:34:30 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2018-07-31 09:34:28 | User +admin+ | Password +admin+ <br>', 'No', 'Text', '2017-09-17 13:29:44', 'Tidak', 'Off', 0),
(20, 'FB', 'fb', '', 'https://www.facebook.com/jogjaregale', 'No', '', '2017-09-21 12:30:05', 'Tidak', 'On', 2),
(21, 'Logo WEB', 'logo-web', '', 'logo_new.png', 'No', 'Images', '2017-12-12 01:35:03', 'Tidak', 'On', 1),
(22, 'Logo WEB Small', 'logo-web-small', '', 'logo_new@2x.png', 'No', 'Images', '2017-11-21 22:56:16', 'Tidak', 'Off', 0),
(23, 'Profil', 'profil', '', '<p>tes ya</p>\r\n', '', '', '2018-02-22 06:00:31', '', '', 0),
(77, 'Title', 'title', '', 'desa sipirok', 'No', '', '2017-10-26 06:07:05', 'Tidak', 'Off', 0),
(78, 'Keywords', 'keywords', '', 'desa sipirok', 'No', 'Text', '2017-12-20 00:07:46', 'Tidak', 'Off', 0),
(79, 'Description', 'description', '', 'desa sipirok', 'No', 'Text', '2017-12-20 00:07:55', 'Tidak', 'Off', 0);

-- --------------------------------------------------------

--
-- Table structure for table `mutasi`
--

CREATE TABLE `mutasi` (
  `id_mutasi` int(50) NOT NULL,
  `id_dusun` int(11) NOT NULL,
  `nik` varchar(50) NOT NULL,
  `asal_dusun` varchar(100) NOT NULL,
  `tujuan_mutasi` varchar(20) NOT NULL,
  `tanggal_mutasi` date NOT NULL,
  `keterangan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mutasi`
--

INSERT INTO `mutasi` (`id_mutasi`, `id_dusun`, `nik`, `asal_dusun`, `tujuan_mutasi`, `tanggal_mutasi`, `keterangan`) VALUES
(2, 10, '7404261105500001', 'Kalasan', '11', '2018-07-17', 'Karna pekerjaan'),
(3, 1, '7404265205630001', 'lalole', '10', '2018-07-24', 'Pekerjaan yang mengharuskan untuk pindah');

-- --------------------------------------------------------

--
-- Table structure for table `page`
--

CREATE TABLE `page` (
  `id_page` int(5) NOT NULL,
  `nama` varchar(180) NOT NULL,
  `nama_seo` varchar(200) NOT NULL,
  `gambar` varchar(128) NOT NULL,
  `deskripsi` text NOT NULL,
  `deskripsi2` text,
  `hapus` enum('Yes','No') NOT NULL,
  `jenis_modul` enum('Text','Textarea','Judul & Text','Judul & Textarea','Text Images','Textarea Images','Images','Images SEO') NOT NULL,
  `status` enum('On','Off') NOT NULL,
  `title` varchar(128) NOT NULL,
  `keyword` varchar(400) NOT NULL,
  `description` varchar(156) NOT NULL,
  `tgl_update` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `page`
--

INSERT INTO `page` (`id_page`, `nama`, `nama_seo`, `gambar`, `deskripsi`, `deskripsi2`, `hapus`, `jenis_modul`, `status`, `title`, `keyword`, `description`, `tgl_update`) VALUES
(0, 'Home', 'home', '', '', '', 'No', 'Textarea Images', 'On', '', '', '', '2018-04-06 15:03:56'),
(1, 'Tentang Kami', 'tentang-kami', '', '<p>Kecamatan Siompu Barat adalah salah satu kecamatan yang ada di Kabupaten Buton Provinsi Sulawesi Tenggara. Kecamatan ini berada di pulau Siompu. Kecamatan Siompu Barat merupakan kecamatan yang dari pemekaran Kecamatan Siompu. Kecamatan Siompu Barat memiliki luas wilayah&nbsp;12 km<sup>2.&nbsp;</sup>Kecamatan ini dimekarkan pada tanggal 7 September 2006 dan diresmikan oleh bupati pada saat itu, yaitu Ir. La Ode Sjafei Kahar. Pada saat dimekarkan Kecamatan Siompu Barat masih terdiri dari 6 desa, yaitu: Desa Molona, Desa Lalole, Desa Mbanua, Desa Watuampara, Desa Katampe, dan Desa Lamaninggara. Pada tahun 2011, di Kecamatan Siompu Barat terjadi pemekaran desa yaitu Desa Kamoali dan Desa Mokobeau. Desa Kamoali merupakan desa pemekaran dari desa Lalole dan desa Mokobeau merupakan daerah pemekaran dari desa Watuampara sehingga Kecamatan Siompu Barat saat ini terdiri dari 8 desa.</p>\r\n', '', 'No', 'Textarea Images', 'On', 'tentang-kami', 'tentang-kami', 'tentang-kami', '2018-07-29 02:48:41'),
(2, 'Profil Desa', 'profil-desa', '', '<p>Profil Desa</p>\r\n', '', 'No', 'Textarea Images', 'On', 'profil Desa', 'profil Desa', 'profil Desa', '2018-07-18 07:07:47'),
(3, 'Kotak Saran', 'kotak-saran', '', '<p>Nama&nbsp; : iin Supia&nbsp;&nbsp;</p>\r\n\r\n<p>Email&nbsp; &nbsp;: iinsupia@gmail.com</p>\r\n\r\n<p>Alamat : Buton , Sioumpu Barat</p>\r\n\r\n<p>Telpon&nbsp;: 0817706635</p>\r\n', '', 'No', 'Textarea Images', 'On', 'kotak-saran', 'kotak-saran', 'kotak-saran', '2018-07-19 06:19:26'),
(4, 'Berita terbaru', 'Berita terbaru', '', '<p>berita terbaru</p>\r\n', '', 'No', 'Textarea Images', 'On', 'berita terbaru', 'berita terbaru', 'berita terbaru', '2018-05-23 10:40:10'),
(5, 'Galeri', 'galeri', '', 'galeri desa', 'galeri desa', 'No', 'Text Images', 'On', 'galeri desa', 'galeri desa', 'galeri desa', '2018-02-23 11:24:01'),
(6, 'Video', 'video', '', 'video', 'video', 'No', 'Text Images', 'On', 'video', 'video', 'video', '2018-02-22 05:12:18'),
(10, 'Data Desa', 'data-desa', '', 'data desa', 'data desa', 'No', 'Text Images', 'On', 'data desa', 'data desa', 'data desa', '2018-05-23 00:00:00'),
(11, 'Visi Misi', 'visi-misi', '', '<p style=\"text-align:center\"><big><span style=\"font-size:24px\">VISI&nbsp;</span></big></p>\r\n\r\n<p style=\"text-align:center\">&nbsp;</p>\r\n\r\n<h3 style=\"text-align:center\"><big>Terwujudnya&nbsp;Kabupaten&nbsp;Buton&nbsp;Kecamatan Siompu Barat Sebagai&nbsp;Pusat&nbsp;Pertumbuhan&nbsp;Baru Melalui&nbsp;Optimalisasi&nbsp;Sumberdaya&nbsp;Lokal&nbsp;Menuju&nbsp;Masyarakat&nbsp;Sejahtera,&nbsp;Mandiri&nbsp;Dan&nbsp;Bermartabat</big></h3>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h1 style=\"text-align:center\"><span style=\"font-size:22px\"><big>M I S I&nbsp;</big></span></h1>\r\n\r\n<h3 style=\"text-align:center\"><big>Meningkatkan ketersediaan infrastruktur dasar untuk menjamin mobilitas penduduk yang dinamis dalam Prinsip Pembangunan Berkelanjutan.</big></h3>\r\n\r\n<h3 style=\"text-align:center\"><big>Meningkatkan&nbsp; Pembangunan Sumberdaya manuasia&nbsp;&nbsp; Buton Selatan yang berkualitas dan berdaya saing.</big></h3>\r\n\r\n<h3 style=\"text-align:center\"><big>Meningkatkan kualitas Penyelenggaran Pemerintahan yang efektif dan efesien.</big></h3>\r\n\r\n<h3 style=\"text-align:center\"><big>Mengembangkan Perekonomian Masyarakat yang berbasis potensi lokal daerah dengan prinsip pembangunan berkelanjutan.</big></h3>\r\n\r\n<h3 style=\"text-align:center\"><big>Mengembangkan Nilai-nilai Budaya Lokal dalam Tatanan Kehidupan Sosial Kemasyarakat dan Pariwisata.</big></h3>\r\n', 'tes', 'No', 'Textarea Images', 'On', '', '', '', '2018-07-29 02:43:27'),
(12, 'Pakaian', 'pakaian', '', '<p style=\"text-align: justify;\">Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;</p>\r\n', 'pakaian', 'No', 'Textarea Images', 'On', 'pakaian', 'pakaian', 'pakaian', '2018-05-24 04:50:34'),
(13, 'Tenunan', 'tenunan', '', '<p style=\"text-align: justify;\">Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;</p>\r\n', 'tenunan', 'No', 'Textarea Images', 'On', 'tenunan', 'tenunan', 'tenunan', '2018-05-24 04:50:46'),
(14, 'Adat Istiadat', 'adat-istiadat', '', 'adat istiadat', 'adat istiadat', 'No', 'Textarea Images', 'On', 'adat-istiadat', 'adat-istiadat', 'adat-istiadat', '2018-05-24 00:00:00'),
(15, 'Makanan Khas', 'makanan-khas', '', 'makanan-khas', 'makanan-khas', 'No', 'Textarea Images', 'On', 'makanan-khas', 'makanan-khas', 'makanan-khas', '2018-05-24 00:00:00'),
(16, 'Wisata Pemandian', 'wisata-pemandian', '', 'Wisata Pemandian', 'Wisata Pemandian', 'No', 'Textarea Images', 'On', 'wisata-pemandian', 'wisata-pemandian', 'wisata-pemandian', '2018-05-24 00:00:00'),
(17, 'Wisata Pantai', 'wisata-pantai', '', 'Wisata Pantai', 'Wisata Pantai', 'No', 'Textarea Images', 'On', 'wisata-pantai', 'wisata-pantai', 'wisata-pantai', '2018-05-24 00:00:00'),
(23, 'Sejarah', 'sejarah', '', '<p style=\"text-align: justify;\">Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data</p>\r\n', 'asd', 'No', 'Textarea Images', 'On', 'sejarah', 'sejarah', 'sejarah', '2018-05-29 11:26:39'),
(24, 'Kependudukan', 'kependudukan', '', '<p style=\"text-align:justify\">Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data</p>\r\n', 'kependudukan', 'No', 'Textarea Images', 'On', 'kependudukan', 'kependudukan', 'kependudukan', '2018-07-18 07:06:42'),
(25, 'Potensi Desa', 'potensi-desa', '', 'potensi-desa', 'potensi-desa', 'No', 'Textarea Images', 'On', 'potensi-desa', 'potensi-desa', 'potensi-desa', '2018-07-21 00:00:00'),
(26, 'Wisata', 'wisata', '', 'wisata', NULL, 'No', 'Textarea Images', 'On', 'wisata', 'wisata', 'wisata', '2018-07-21 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `penduduk`
--

CREATE TABLE `penduduk` (
  `id_penduduk` int(11) NOT NULL,
  `nama_penduduk` varchar(50) DEFAULT NULL,
  `id_dusun` int(11) DEFAULT NULL,
  `no_kk` varchar(50) DEFAULT NULL,
  `nik` varchar(50) DEFAULT NULL,
  `alamat` varchar(50) DEFAULT NULL,
  `tempat_lahir` varchar(50) DEFAULT NULL,
  `status_menikah` enum('Y','N') DEFAULT NULL,
  `pekerjaan` varchar(50) DEFAULT NULL,
  `agama` enum('Islam','Kristen','Hindu','Budha','Khatolik') NOT NULL,
  `tgl_lahir` date DEFAULT NULL,
  `jenis_kelamin` enum('P','L') DEFAULT NULL,
  `no_hp` varchar(50) NOT NULL,
  `pendidikan_terakhir` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `penduduk`
--

INSERT INTO `penduduk` (`id_penduduk`, `nama_penduduk`, `id_dusun`, `no_kk`, `nik`, `alamat`, `tempat_lahir`, `status_menikah`, `pekerjaan`, `agama`, `tgl_lahir`, `jenis_kelamin`, `no_hp`, `pendidikan_terakhir`) VALUES
(1, 'La Safili', 11, '7404261806080069', '7404261105500001', 'jln.labolo', 'Molona', 'Y', 'Nelayan', 'Islam', '2014-05-11', 'L', '0817705514', 'SD'),
(2, 'Tatik', 10, '7404261806080069', '7404265205630001', 'Jln.labolo', 'Molona', 'N', 'Ibu Rumah Tangga', 'Budha', '2015-05-12', 'P', '0817708849', 'S1'),
(3, 'Sukma', 11, '2012399112313', '1231231231232', 'Buru', 'Yogyakarta', 'Y', 'Guru', 'Budha', '2014-11-11', 'L', '0817783321', 'S1'),
(4, 'Yogi Pratam', 1, '7404310412140002', '7404310202900002', 'Jalan Labolo', 'Watuampara', 'Y', 'Nelayan', '', '1990-02-02', NULL, '082393206562', 'SMP'),
(5, 'Nurfiati', 1, '7404310412140002', '7404264107860003', 'Jalan Labolo', 'lalole', 'Y', 'IRT', 'Islam', '1986-06-03', 'P', '082395694398', 'Sarjana'),
(6, 'Anugerah Ergi P', 1, '7404310412140002', '740431011130001', 'Jalan Labolo', 'lalole', 'N', 'belum bekerja', '', '2013-07-11', NULL, '082393206562', 'belum sekolah'),
(7, 'La Harmawi', 1, '7404312312140001', '7404310206890003', 'Jalan Labolo', 'lalole', 'Y', 'nelayan', '', '1985-02-09', NULL, '082327154477', 'SD'),
(8, 'Lestari', 1, '7404312312140001', '740431540910001', 'Jalan Labolo', 'lalole', 'Y', 'IRT', 'Islam', '1991-03-01', 'P', '082327154475', 'SMA'),
(9, 'Refal', 1, '7404312312140001', '74043110102120002', 'Jalan Labolo', 'lalole', 'N', 'belum bekerja', '', '0000-00-00', NULL, '082327154478', 'belum sekolah'),
(10, 'La Arsiko', 1, '7404262209120004', '7404262303900001', 'Jalan Labolo', 'lalole', 'Y', 'nelayan', '', '1990-03-01', NULL, '08234566767', 'SMP'),
(11, 'Wa Kia', 1, '7404262209120004', '7404264107580008', 'Jalan Labolo', 'molona', 'Y', 'Petani', 'Islam', '1958-01-07', 'P', '0823446688', 'SD'),
(12, 'Siti Santria ', 1, '7404262209120004', '7404264608940003', 'Jalan Labolo', 'lalole', 'N', 'belum bekrja', 'Islam', '1994-06-08', 'P', '082367888768', 'SMA'),
(13, 'Sadianti', 1, '7404262209120004', '7404264107960010', 'Jalan Labolo', 'lalole', 'N', 'belum bekerja', 'Islam', '1996-04-04', 'P', '08234589899', 'SMA'),
(14, 'La Surino', 1, '7404312309140001', '7404260208890001', 'Jalan Labolo', 'lalole', 'Y', 'Nelayan', 'Islam', '1989-02-08', NULL, '08232154477', 'SD'),
(15, 'Meliati', 1, '7404312309140001', '7404265006930001', 'Jalan Labolo', 'lalole', 'Y', 'belum bekerja', 'Islam', '1993-10-06', 'P', '0823455588', 'SMA'),
(16, 'Muh Hanul Takwaa', 1, '7404312309140001', '740431540910002', 'Jalan Labolo', 'lalole', 'N', 'belum bekerja', '', '2014-03-02', NULL, '0823787777', 'belum sekolah'),
(22, 'Arfan', 1, '740312309140002', '7404310707920001', 'Jalan Labolo', 'amolengo', 'Y', 'nelayan', '', '0002-01-07', NULL, '08238978488', 'SMP'),
(23, 'LA miu', 7, '74042260709100002', '740426260107455027', 'Jalan Laposi', 'molona', 'Y', 'Nelayan', '', '1945-01-07', NULL, '082345456677', 'SD'),
(24, 'Wa Madihura', 7, '74042260709100002', '7404264203560001', 'Jalan Laposi', 'lalole', 'Y', 'IRT', 'Islam', '1995-07-03', 'P', '08234544554', 'SD'),
(25, 'La Dono', 7, '74042260709100002', '7404310107930022', 'Jalan Laposi', 'lalol', 'Y', 'belum bekrja', '', '1998-01-07', NULL, '08343566758', 'SD'),
(26, 'Wa Muliana', 7, '74042260709100002', '7404214408930001', 'Jalan Laposi', 'lalole', 'N', 'belum bekrja', 'Islam', '1995-04-08', 'P', '082367787999', 'SMA'),
(27, 'Wa Iren', 7, '74042260709100002', '7404264106500001', 'Jalan Laposi', 'lalole', 'N', 'belum bekrja', 'Islam', '2000-02-03', 'P', '08234556678', 'SD'),
(28, 'La Asini', 7, '7404261712090039', '740426010670001', 'Jalan Laposi', 'lalole', 'Y', 'Nelayan', '', '0190-01-06', NULL, '082398998878', 'SD'),
(29, 'Wa Fadi', 7, '7404261712090039', '7404284611740901', 'Jalan Laposi', 'lalole', 'Y', 'IRT', 'Islam', '1970-06-11', 'P', '082367778889', 'SD'),
(30, 'ASFAR', 7, '7404261712090039', '7404260611940000', 'Jalan Laposi', 'lalole', 'Y', 'IRT', 'Islam', '1994-06-11', 'P', '08235667665', 'SD'),
(31, 'Wa Yusni', 7, '7404261712090039', '7404266106970000', 'Jalan Laposi', 'lalole', 'N', 'belum bekerja', 'Islam', '1997-02-06', 'P', '082378668775', 'SMP'),
(32, 'wa Resti', 7, '7404261712090039', '740476700500002', 'Jalan Laposi', 'lalole', 'N', '', 'Islam', '2000-05-30', 'P', '082344556679', 'SD'),
(33, 'La Yadit', 7, '7404261712090030', '7404260802040000', 'Jalan Laposi', 'lalole', 'N', 'belum bekrja', '', '2002-09-15', NULL, '08234456677', 'SD'),
(34, 'Wa Arcerli', 7, '7404261712090030', '740426640060001', 'Jalan Laposi', 'lalole', 'N', 'belum bekrja', 'Islam', '2006-06-24', 'P', '082344556775', 'SD'),
(35, 'La Disan', 7, '7404261712090030', '7404260101090000', 'Jalan Laposi', 'lalole', 'N', 'belum bekerja', '', '2012-01-01', NULL, '08235674433', 'belum sekolah'),
(36, 'LA ZALIAMI', 14, '7404261806080046', '740426 0107780008', 'DUSUN KAMOALI', 'LALOLE', 'Y', 'NELAYAN', '', '1978-01-07', NULL, '08234545678', 'SD'),
(37, 'WA ZIWANI', 14, '7404261806080046', '740426 0107820007', 'DUSUN KAMOALI', 'LALOLE', 'Y', 'PETANI', 'Islam', '1982-01-07', 'P', '08234567876', 'TAMAT SMP'),
(38, 'SUMARLIN', 14, '7404261806080046', '740426 0104000001', 'DUSUN KAMOALI', 'LALOLE', 'N', '', 'Islam', '2000-07-27', 'P', '08234567655', 'SD'),
(39, 'FANGKI', 14, '7404261806080046', '740426 0107020006', 'DUSUN KAMOALI', 'LALOLE', 'N', 'TIDAK BEKERJA', '', '2002-01-02', NULL, '08234567554', 'SD'),
(40, 'FIGO', 14, '7404261806080046', '740426 0107030005', 'DUSUN KAMOALI', 'LALOLE', 'N', 'TIDAK BEKERJA', '', '2005-05-27', NULL, '08234565776', 'SD'),
(41, 'INES', 14, '7404261806080046', '740426 4107060004', 'DUSUN KAMOALI', 'LALOLE', 'N', 'TIDAK BEKERJA', 'Islam', '2005-08-13', 'P', '0', 'SD'),
(42, 'ALIF', 14, '7404261806080046', '740426 0112090001', 'DUSUN KAMOALI', 'LALOLE', 'N', 'TIDAK BEKERJA', '', '2009-01-12', NULL, '0', 'Belum Sekolah'),
(43, 'HARUN', 14, '74042616091100026', '740426 0212730001', 'DUSUN KAMOALI', 'LALOLE', 'Y', 'Wiraswasta', '', '1973-01-12', NULL, '08234556675', 'TAMAT SMP'),
(44, 'NUR HAYATI', 14, '74042616091100026', '740426 6105860001', 'DUSUN KAMOALI', 'LALOLE', 'Y', 'IRT', 'Islam', '1986-05-21', 'P', '08234567864', 'TAMAT SMP'),
(45, 'LA SARIMU', 14, '7404260409080140', '740426 0107490009', 'DUSUN KAMOALI', 'LALOLE', 'Y', 'Nelayan', '', '1949-01-07', NULL, '082234567873', 'TAMAT SD'),
(46, 'WA MALIZA', 14, '7404260409080140', '740426 41075400010', 'DUSUN KAMOALI', 'LALOLE', 'Y', 'PETANI', 'Islam', '1954-01-07', 'P', '08224567876', 'TAMAT SD'),
(47, 'FISLAN', 14, '7404260409080140', '740426 0506950001', 'DUSUN KAMOALI', 'LALOLE', 'N', 'TIDAK BEKERJA', 'Islam', '1995-05-06', NULL, '08232755667', 'SMA'),
(48, 'LA ZAMIADI', 14, '7404261806080033', '740426 0107780007', 'DUSUN KAMOALI', 'LALOLE', 'Y', 'Nelayan', '', '1978-01-07', NULL, '082356789012', 'TAMAT SD'),
(49, 'WA SUMIANTI', 14, '7404261806080033', '740426 4107840004', 'DUSUN KAMOALI', 'LALOLE', 'Y', 'PETANI', 'Islam', '1984-01-07', 'P', '082395692387', 'TAMAT SMP'),
(58, 'FAIS', 14, '7404261806080033', '740426 1808050002', 'DUSUN KAMOALI', 'Watuampara', 'N', 'TIDAK BEKERJA', '', '2005-08-18', NULL, '0', 'SD'),
(59, 'LA NTURUKI', 13, '7404262404090019', '7404264107820029', 'DUSUN LALOLE', 'LALOLE', 'Y', 'NELAYAN', '', '1977-01-07', NULL, '08237878878', 'TAMAT SD'),
(62, 'WA RUFAIDA ', 13, '7404262404090019', '7404264107820028', 'DUSUN LALOLE', 'LALOLE', 'Y', 'IRT', 'Islam', '1982-01-07', 'P', '08236786829', 'TAMAT SD'),
(63, 'ALEN', 13, '7404262404090019', '7404265202070002', 'DUSUN LALOLE', 'LALOLE', 'N', 'TIDAK BEKERJA', 'Islam', '2007-12-02', 'P', '0', 'belum sekolah'),
(64, 'REZIL', 13, '7404262404090019', '7404261101130001', 'DUSUN LALOLE', 'KAMOALI', 'N', 'TIDAK BEKERJA', '', '2013-11-01', NULL, '0', 'belum sekolah'),
(65, 'BAHTIAR', 13, '7404310705130001', '7404311111820002', 'DUSUN LALOLE', 'LALOLE', 'Y', 'PEDAGANG', '', '1982-11-11', NULL, '08238979799', 'TAMAT SD'),
(66, 'RISMAWATI', 13, '7404310705130001', '7404310705130001', 'DUSUN LALOLE', 'Watuampara', 'Y', 'IRT', 'Islam', '1992-01-09', 'P', '08234564889', 'TAMAT SMP'),
(67, 'LA EBA', 13, '7404060506070001', '7404060107550045', 'DUSUN LALOLE', 'LALOLE', 'Y', 'Nelayan', '', '1955-01-07', NULL, '08235676889', 'TIDAK TAMAT SD'),
(68, 'WASAMBIRA', 13, '7404060506070001', '7404064107570048', 'DUSUN LALOLE', 'LALOLE', 'Y', 'IRT', 'Islam', '1957-01-07', 'P', '08224685930', 'TAMAT SD'),
(69, 'LA AKU', 13, '7404060506070001', '7404062204910001', 'DUSUN LALOLE', 'LALOLE', 'N', 'TIDAK BEKERJA', '', '1991-04-22', NULL, '08235779797', 'SMP/SEDERAJAT'),
(70, 'SAMARUDIN', 13, '7404260405100027', '7404260102790001', 'DUSUN LALOLE', 'LALOLE', 'Y', 'PEDAGANG', '', '1979-01-02', NULL, '082256588990', 'TAMAT SD'),
(71, 'SURIATI', 13, '7404260405100027', '740426 0704900002', 'DUSUN LALOLE', 'LALOLE', 'Y', 'IRT', 'Islam', '1979-03-04', 'P', '08234568990', 'D-2'),
(72, 'LA TAANGI', 15, '740426 2404090025', '740426 1701710001', 'DUSUN BAANDINGI', 'LALOLE', 'Y', 'NELAYAN', '', '1971-01-17', NULL, '08234454579', 'TAMAT SD'),
(73, 'WA SARMIA', 15, '740426 2404090025', '740426 4805760001', 'DUSUN BAANDINGI', 'LALOLE', 'Y', 'IRT', 'Islam', '1976-08-05', 'P', '082367768899', 'TAMAT SD'),
(74, 'ARMILA', 15, '740426 2404090025', '740426 5110000001', 'DUSUN BAANDINGI', 'LALOLE', 'N', 'TIDAK BEKERJA', 'Islam', '2000-11-10', 'P', '0', 'TSANAWIYAH'),
(75, 'WA ADE UCI', 15, '740426 2404090025', '740426 5305030001', 'DUSUN BAANDINGI', 'LALOLE', 'N', 'TIDAK BEKERJA', 'Islam', '2003-05-13', 'P', '0', 'TSANAWIYAH'),
(76, 'IRFAN', 15, '740426 2404090025', '740426 1506050001', 'DUSUN BAANDINGI', 'LALOLE', 'N', 'TIDAK BEKERJA', '', '2005-06-19', NULL, '0', 'SD'),
(77, 'WA JULIANTI', 15, '740426 2404090025', '740426 7112080001', 'DUSUN BAANDINGI', 'LALOLE', 'N', 'TIDAK BEKERJA', 'Islam', '2008-12-31', 'P', '0', 'SD'),
(78, 'ERIK SETIAWAN', 15, '740426 2404090025', '740426 1308100001', 'DUSUN BAANDINGI', 'LALOLE', 'N', 'TIDAK BEKERJA', '', '2010-08-13', NULL, '0', 'BELUM SEKOLAH'),
(79, 'HAIRUL', 15, '740426 2404090025', '740426 2202120001', 'DUSUN BAANDINGI', 'LALOLE', 'N', 'TIDAK BEKERJA', '', '2014-02-22', NULL, '0', 'BELUM SEKOLAH'),
(80, 'LA HESIMI', 15, '7404310503140001', '740431 1406710001', 'DUSUN BAANDINGI', 'LALOLE', 'Y', 'PEDAGANG', '', '1971-06-14', NULL, '082354664778', 'TAMAT SD'),
(81, 'AMINAH', 15, '7404310503140001', '740431 4606800001', 'DUSUN BAANDINGI', 'LALOLE', 'Y', 'IRT', 'Islam', '1980-06-06', 'P', '08226768899', 'TAMAT SMP'),
(82, 'MUHAMAD ZUL KIFLI MUBAROKA', 15, '7404310503140001', '740431 0311970003', 'DUSUN BAANDINGI', 'BAU BAU', 'N', 'TIDAK BEKERJA', '', '1997-03-11', NULL, '0', 'BELUM SEKOLAH'),
(83, 'ISWAND ZULKARNAIN', 15, '7404310503140001', '740431 1402990001', 'DUSUN BAANDINGI', 'BAU BAU', 'N', 'TIDAK BEKERJA', '', '1999-02-14', NULL, '0', 'belum sekolah'),
(84, 'AGUNG TIRTA', 15, '7404310503140001', '740431 1808000002', 'DUSUN BAANDINGI', 'LALOLE', 'N', 'TIDAK BEKERJA', '', '2000-08-18', NULL, '0', 'BELUM SEKOLAH'),
(85, 'BUDURNA YULY', 15, '7404310503140001', '740431 6303030002', 'DUSUN BAANDINGI', 'LALOLE', 'N', 'TIDAK BEKERJA', 'Islam', '2003-03-23', 'P', '0', 'BELUM SEKOLAH'),
(86, 'SURYA NINGRUM', 15, '7404310503140001', '740431 6708070001', 'DUSUN BAANDINGI', 'LALOLE', 'N', 'TIDAK BEKERJA', 'Islam', '2007-08-27', 'P', '0', 'BELUM SEKOLAH'),
(87, 'DEWI KHURYATIN', 15, '7404310503140001', '740431 5905090003', 'DUSUN BAANDINGI', 'LALOLE', 'N', 'TIDAK BEKERJA', 'Islam', '2009-05-19', 'P', '0', 'BELUM SEKOLAH'),
(88, 'HILDA FIRDAUS', 15, '7404310503140001', '740431 7103140001', 'DUSUN BAANDINGI', 'KAMOALI', 'N', 'TIDAK BEKERJA', 'Islam', '2014-03-31', 'P', '0', 'BELUM SEKOLAH'),
(89, 'ABDUL JEFRI', 22, '7404261612100008', '7404260606050001', 'Dusun Katampe', 'MOLONA', 'N', 'TIDAK BEKERJA', '', '2005-06-06', NULL, '08237899778', 'SD/SEDERAJAD'),
(90, 'ABDUL KADIR', 22, '7404261612100008', '7404262302000001', 'Dusun Katampe', 'MOLONA', 'N', 'belum bekerja', '', '2000-02-23', NULL, '0', 'SD/SEDERAJAD'),
(91, 'AGGUN RISPA', 22, '7404261111080006', '7404264910080001', 'Dusun Katampe', 'Molona', 'N', 'TIDAK BEKERJA', 'Islam', '2008-10-09', 'P', '0', 'BELUM SEKOLAH'),
(92, 'MELDA', 22, '7404261111080006', '7404266605040001', 'Dusun Katampe', 'MOLONA', 'N', 'belum bekerja', 'Islam', '2004-05-26', 'P', '0', 'SD/SEDERAJAD'),
(93, 'AHMAD', 22, '7404261111080006', '7404260107590002', 'Dusun Katampe', 'Molona', 'Y', 'NELAYAN', '', '1959-07-01', NULL, '08234556577', 'TIDAK TAMAT SD'),
(94, 'AISAMUDIN', 22, '7404261612100007', '7404263008970001', 'Dusun Katampe', 'MOLONA', 'N', 'TIDAK BEKERJA', '', '1997-08-30', NULL, '082245676889', 'SMP/SEDERAJAT'),
(95, 'AL AMIN', 22, '7404261105100036', '7404260107620022', 'Dusun Katampe', 'MOLONA', 'Y', 'NELAYAN', '', '1962-07-01', NULL, '08238990988', 'SD/SEDERAJAD'),
(96, 'ALAN BUDI KUSUMA', 22, '7404260812090011', '7404260107940023', 'Dusun Katampe', 'MOLONA', 'N', 'TIDAK BEKERJA', '', '1994-07-01', NULL, '082378799484', 'SLTA/SEDERAJAT'),
(97, 'AMAL HAFID', 22, '7404262411080001', '7404262070508001', 'Dusun Katampe', 'Maumere', 'Y', 'NELAYAN', 'Islam', '1978-10-11', NULL, '08225678689', 'TIDAK SEKOLAH'),
(98, 'SITI RAHMAWATI', 22, '7404262411080001', '7404266407040001', 'Dusun Katampe', 'Katampe', 'N', 'TIDAK BEKERJA', 'Islam', '2014-07-24', 'P', '0', 'SD/SEDERAJAD'),
(99, 'AMRINA', 22, '7404262411080001', '7404265807870002', 'Dusun Katampe', 'Molona', 'Y', 'Honorer', 'Islam', '1987-07-18', 'P', '082243566788', 'SARJANA'),
(100, 'AMRITA YARTI', 22, '7404261612100008', '7404264409030002', 'Dusun Katampe', 'Babel', 'N', 'TIDAK BEKERJA', 'Islam', '2003-04-04', 'P', '0', 'SD/SEDERAJAD'),
(101, 'ANGGA', 22, '7404261310080001', '7404260203080001', 'Dusun Katampe', 'MOLONA', 'N', 'TIDAK BEKERJA', '', '2011-07-01', NULL, '0', 'BELUM SEKOLAH'),
(102, 'ANTAFARIN', 22, '7404260812090011', '7404260507090001', 'Dusun Katampe', 'Katampe', 'N', 'TIDAK BEKERJA', '', '2009-07-05', NULL, '0', 'BELUM SEKOLAH'),
(103, 'ANDIKA', 22, '7404260812090011', '7404260107030022', 'Dusun Katampe', 'Katampe', 'N', 'TIDAK BEKERJA', '', '2003-07-01', NULL, '0', 'BELUM SEKOLAH'),
(104, 'ANWAR', 22, '7404260812090010', '7404260107970020', 'Dusun Katampe', 'MOLONA', 'N', 'PERANTAU', 'Islam', '1997-07-01', NULL, '08126788633', 'TIDAK TAMAT SD'),
(105, 'ANZAR', 22, '7404260812090011', '7404260109070001', 'Dusun Katampe', 'Katampe', 'N', 'TIDAK BEKERJA', '', '2007-09-01', NULL, '0', 'SD/SEDERAJAD'),
(106, 'ARFIN', 22, '7404260810080011', '7404260402070001', 'Dusun Katampe', 'Katampe', 'N', 'IRT', 'Islam', '2007-07-04', 'P', '0', 'SD/SEDERAJAD'),
(107, 'ARIANTO', 22, '7404261310080001', '7404261305020001', 'Dusun Katampe', 'Molona', 'N', 'TIDAK BEKERJA', '', '2003-07-01', NULL, '0', 'SD/SEDERAJAD'),
(108, 'ARIF', 22, '7404261310080001', '7404260112030001', 'Dusun Katampe', 'Katampe', 'N', 'TIDAK BEKERJA', 'Islam', '2003-12-01', NULL, '0', 'SD/SEDERAJAD'),
(109, 'BAYU SAPUTRA', 22, '7404261612100006', '7404262211030002', 'Dusun Katampe', 'MOLONA', 'N', 'TIDAK BEKERJA', '', '2003-11-22', NULL, '0', 'SD/SEDERAJAD'),
(110, 'ALFIAN', 21, '7404261907080001', '7404260107380003', 'Dusun Kalokoloko', 'Ambon', 'N', 'TIDAK BEKERJA', '', '2013-06-02', NULL, '0', 'BELUM SEKOLAH'),
(111, 'ALFIAN SUWU', 21, '7404261907080001', '7404260107870012', 'Dusun Kalokoloko', 'Molona', 'N', 'TIDAK BEKERJA', '', '2010-04-18', NULL, '0', 'BELUM SEKOLAH'),
(112, 'ALFIN', 21, '7404261907080001', '7404264107870004', 'Dusun Kalokoloko', 'Katampe', 'N', 'TIDAK BEKERJA', '', '2007-08-31', NULL, '0', 'SD/SEDERAJAD'),
(113, 'ALI NASARUDIN', 21, '7404261907080001', '7404314611120001', 'Dusun Kalokoloko', 'MOLONA', 'Y', 'NELAYAN', '', '1982-11-02', NULL, '081264774839', 'SD/SEDERAJAD'),
(114, 'ALIF', 21, '7404261803090002', '7404266311680001', 'Dusun Kalokoloko', 'MOLONA', 'N', 'TIDAK BEKERJA', 'Islam', '2006-08-10', NULL, '0', 'SD/SEDERAJAD'),
(115, 'AMARULLAH', 21, '7404261406930001', '7404261803090002', 'Dusun Kalokoloko', 'MOLONA', 'N', 'TIDAK BEKERJA', '', '1999-02-12', NULL, '0', 'SMP/SEDERAJAD'),
(116, 'AMRIDA', 21, '7404261803090002', '7404260208980001', 'Dusun Kalokoloko', 'MOLONA', 'Y', 'IRT', 'Islam', '1988-12-05', 'P', '082389983999', 'SD/SEDERAJAD'),
(117, 'ARIEL', 21, '7404261803090002', '7404260409870001', 'Dusun Kalokoloko', 'Katampe', 'N', 'TIDAK BEKERJA', '', '2007-05-29', NULL, '0', 'SD/SEDERAJAD');

-- --------------------------------------------------------

--
-- Table structure for table `potensi_desa`
--

CREATE TABLE `potensi_desa` (
  `id_potensi_desa` int(11) NOT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `deskripsi` text NOT NULL,
  `potensidesa` enum('PAKAIAN','TENUNAN','ADAT ISTIADAT','MAKANAN KHAS') NOT NULL,
  `gambar` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `slider`
--

CREATE TABLE `slider` (
  `id_slider` int(5) NOT NULL,
  `judul` varchar(180) NOT NULL,
  `gambar` varchar(180) NOT NULL,
  `tgl_update` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `slider`
--

INSERT INTO `slider` (`id_slider`, `judul`, `gambar`, `tgl_update`) VALUES
(1, 'Slider 1', 'slider-1-4.jpeg', '2018-07-17 21:15:59'),
(2, 'Slider 2', 'slider-2-64.jpeg', '2018-07-18 06:07:05');

-- --------------------------------------------------------

--
-- Table structure for table `sosial`
--

CREATE TABLE `sosial` (
  `id_sosial` int(11) NOT NULL,
  `nama` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sosial`
--

INSERT INTO `sosial` (`id_sosial`, `nama`) VALUES
(1, 'https://id-id.facebook.com/'),
(2, 'https://twitter.com/'),
(3, 'https://www.instagram.com/?hl=id'),
(4, 'https://plus.google.com/discover'),
(5, '(+1) 000 123 456789'),
(6, 'info@example.com'),
(7, 'Buton , Pemerintah Desa Siompu Barat'),
(8, '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d127624.2305618758!2d99.2459714141771!3d1.6028494030079163!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x302c245bc766b06b%3A0xd663ee1f0b6d7d85!2sSipirok%2C+Kabupaten+Tapanuli+Selatan%2C+Sumatera+Utara!5e0!3m2!1sid!2sid!4v1527140910118\" ></iframe>');

-- --------------------------------------------------------

--
-- Table structure for table `statistik`
--

CREATE TABLE `statistik` (
  `ip` varchar(20) NOT NULL,
  `hits` int(10) NOT NULL,
  `online` varchar(255) NOT NULL,
  `tanggal` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `video`
--

CREATE TABLE `video` (
  `id` int(11) NOT NULL,
  `judul` varchar(150) NOT NULL,
  `seo` varchar(200) NOT NULL,
  `video` varchar(250) NOT NULL,
  `tanggal` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `video`
--

INSERT INTO `video` (`id`, `judul`, `seo`, `video`, `tanggal`) VALUES
(5, 'EFARINA TV - ETAH MELALAK SPESIAL - EKSOTISME SIPIROK BAGIAN DARI TAPANULI SELATAN', 'efarina-tv--etah-melalak-spesial--eksotisme-sipirok-bagian-dari-tapanuli-selatan', 'https://www.youtube.com/watch?v=GSo392bKIDw', '2018-05-23 14:52:21'),
(6, 'KOTA SIPIROK... TAPANULI SELATAN', 'kota-sipirok-tapanuli-selatan', 'https://www.youtube.com/watch?v=eF2icEAgxAM', '2018-05-23 14:53:15'),
(7, 'EKSOTISME SIPIROK BAGIAN DARI TAPANULI SELATAN ', 'eksotisme-sipirok-bagian-dari-tapanuli-selatan-', 'https://www.youtube.com/watch?v=zrAalPTSh_8', '2018-05-23 14:53:46'),
(8, 'Sisi Lain Kota Sipirok', 'sisi-lain-kota-sipirok', 'https://www.youtube.com/watch?v=VT7rPmX2JLo', '2018-05-29 11:40:30');

-- --------------------------------------------------------

--
-- Table structure for table `wisata`
--

CREATE TABLE `wisata` (
  `id_wisata` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `deskripsi` text NOT NULL,
  `wisata` enum('PEMANDIAN','PANTAI') NOT NULL,
  `gambar` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wisata`
--

INSERT INTO `wisata` (`id_wisata`, `nama`, `deskripsi`, `wisata`, `gambar`) VALUES
(1, 'Pemandian 1', '<p style=\"text-align: justify;\">tes pemandian masiha dalam penginputan data&nbsp;tes pemandian masiha dalam penginputan data&nbsp;tes pemandian masiha dalam penginputan data&nbsp;tes pemandian masiha dalam penginputan data&nbsp;tes pemandian masiha dalam penginputan data&nbsp;tes pemandian masiha dalam penginputan data&nbsp;tes pemandian masiha dalam penginputan data&nbsp;tes pemandian masiha dalam penginputan data&nbsp;tes pemandian masiha dalam penginputan data&nbsp;tes pemandian masiha dalam penginputan data&nbsp;tes pemandian masiha dalam penginputan data&nbsp;tes pemandian masiha dalam penginputan data&nbsp;tes pemandian masiha dalam penginputan data&nbsp;tes pemandian masiha dalam penginputan data&nbsp;tes pemandian masiha dalam penginputan data&nbsp;tes pemandian masiha dalam penginputan data&nbsp;tes pemandian masiha dalam penginputan data&nbsp;tes pemandian masiha dalam penginputan data&nbsp;tes pemandian masiha dalam penginputan data&nbsp;tes pemandian masiha dalam penginputan data&nbsp;tes pemandian masiha dalam penginputan data&nbsp;tes pemandian masiha dalam penginputan data&nbsp;tes pemandian masiha dalam penginputan data&nbsp;tes pemandian masiha dalam penginputan data&nbsp;tes pemandian masiha dalam penginputan data&nbsp;tes pemandian masiha dalam penginputan data&nbsp;tes pemandian masiha dalam penginputan data&nbsp;tes pemandian masiha dalam penginputan data&nbsp;</p>\r\n', 'PEMANDIAN', ''),
(2, 'Pemandian 2', '<p style=\"text-align:justify\">tes pemandian masiha dalam penginputan data&nbsp;tes pemandian masiha dalam penginputan data&nbsp;tes pemandian masiha dalam penginputan data&nbsp;tes pemandian masiha dalam penginputan data&nbsp;tes pemandian masiha dalam penginputan data&nbsp;tes pemandian masiha dalam penginputan data&nbsp;tes pemandian masiha dalam penginputan data&nbsp;tes pemandian masiha dalam penginputan data&nbsp;tes pemandian masiha dalam penginputan data&nbsp;tes pemandian masiha dalam penginputan data&nbsp;tes pemandian masiha dalam penginputan data&nbsp;tes pemandian masiha dalam penginputan data&nbsp;tes pemandian masiha dalam penginputan data&nbsp;tes pemandian masiha dalam penginputan data&nbsp;tes pemandian masiha dalam penginputan data&nbsp;tes pemandian masiha dalam penginputan data&nbsp;tes pemandian masiha dalam penginputan data&nbsp;tes pemandian masiha dalam penginputan data&nbsp;tes pemandian masiha dalam penginputan data&nbsp;tes pemandian masiha dalam penginputan data&nbsp;tes pemandian masiha dalam penginputan data&nbsp;tes pemandian masiha dalam penginputan data&nbsp;tes pemandian masiha dalam penginputan data&nbsp;tes pemandian masiha dalam penginputan data&nbsp;tes pemandian masiha dalam penginputan data&nbsp;tes pemandian masiha dalam penginputan data&nbsp;tes pemandian masiha dalam penginputan data&nbsp;tes pemandian masiha dalam penginputan data&nbsp;</p>\r\n', 'PEMANDIAN', ''),
(3, 'Pemandian 3', '<p style=\"text-align:justify\">tes pemandian masiha dalam penginputan data&nbsp;tes pemandian masiha dalam penginputan data&nbsp;tes pemandian masiha dalam penginputan data&nbsp;tes pemandian masiha dalam penginputan data&nbsp;tes pemandian masiha dalam penginputan data&nbsp;tes pemandian masiha dalam penginputan data&nbsp;tes pemandian masiha dalam penginputan data&nbsp;tes pemandian masiha dalam penginputan data&nbsp;tes pemandian masiha dalam penginputan data&nbsp;tes pemandian masiha dalam penginputan data&nbsp;tes pemandian masiha dalam penginputan data&nbsp;tes pemandian masiha dalam penginputan data&nbsp;tes pemandian masiha dalam penginputan data&nbsp;tes pemandian masiha dalam penginputan data&nbsp;tes pemandian masiha dalam penginputan data&nbsp;tes pemandian masiha dalam penginputan data&nbsp;tes pemandian masiha dalam penginputan data&nbsp;tes pemandian masiha dalam penginputan data&nbsp;tes pemandian masiha dalam penginputan data&nbsp;tes pemandian masiha dalam penginputan data&nbsp;tes pemandian masiha dalam penginputan data&nbsp;tes pemandian masiha dalam penginputan data&nbsp;tes pemandian masiha dalam penginputan data&nbsp;tes pemandian masiha dalam penginputan data&nbsp;tes pemandian masiha dalam penginputan data&nbsp;tes pemandian masiha dalam penginputan data&nbsp;tes pemandian masiha dalam penginputan data&nbsp;tes pemandian masiha dalam penginputan data&nbsp;</p>\r\n', 'PEMANDIAN', ''),
(4, 'Pantai 1', '<p style=\"text-align:justify\">tes pantai masih dalam penginputan data&nbsp;tes pantai masih dalam penginputan data&nbsp;tes pantai masih dalam penginputan data&nbsp;tes pantai masih dalam penginputan data&nbsp;tes pantai masih dalam penginputan data&nbsp;tes pantai masih dalam penginputan data&nbsp;tes pantai masih dalam penginputan data&nbsp;tes pantai masih dalam penginputan data&nbsp;tes pantai masih dalam penginputan data&nbsp;tes pantai masih dalam penginputan data&nbsp;tes pantai masih dalam penginputan data&nbsp;tes pantai masih dalam penginputan data&nbsp;tes pantai masih dalam penginputan data&nbsp;tes pantai masih dalam penginputan data&nbsp;tes pantai masih dalam penginputan data&nbsp;tes pantai masih dalam penginputan data&nbsp;tes pantai masih dalam penginputan data&nbsp;tes pantai masih dalam penginputan data&nbsp;tes pantai masih dalam penginputan data&nbsp;tes pantai masih dalam penginputan data&nbsp;tes pantai masih dalam penginputan data&nbsp;tes pantai masih dalam penginputan data&nbsp;tes pantai masih dalam penginputan data&nbsp;tes pantai masih dalam penginputan data&nbsp;tes pantai masih dalam penginputan data&nbsp;tes pantai masih dalam penginputan data&nbsp;tes pantai masih dalam penginputan data&nbsp;tes pantai masih dalam penginputan data&nbsp;tes pantai masih dalam penginputan data&nbsp;tes pantai masih dalam penginputan data&nbsp;tes pantai masih dalam penginputan data&nbsp;tes pantai masih dalam penginputan data&nbsp;tes pantai masih dalam penginputan data&nbsp;tes pantai masih dalam penginputan data&nbsp;tes pantai masih dalam penginputan data&nbsp;tes pantai masih dalam penginputan data&nbsp;tes pantai masih dalam penginputan data&nbsp;tes pantai masih dalam penginputan data&nbsp;tes pantai masih dalam penginputan data&nbsp;tes pantai masih dalam penginputan data&nbsp;tes pantai masih dalam penginputan data&nbsp;tes pantai masih dalam penginputan data&nbsp;tes pantai masih dalam penginputan data&nbsp;tes pantai masih dalam penginputan data&nbsp;tes pantai masih dalam penginputan data&nbsp;</p>\r\n', 'PANTAI', ''),
(5, 'Pantai 2', '<p style=\"text-align: justify;\">tes pantai masih dalam penginputan data&nbsp;tes pantai masih dalam penginputan data&nbsp;tes pantai masih dalam penginputan data&nbsp;tes pantai masih dalam penginputan data&nbsp;tes pantai masih dalam penginputan data&nbsp;tes pantai masih dalam penginputan data&nbsp;tes pantai masih dalam penginputan data&nbsp;tes pantai masih dalam penginputan data&nbsp;tes pantai masih dalam penginputan data&nbsp;tes pantai masih dalam penginputan data&nbsp;tes pantai masih dalam penginputan data&nbsp;tes pantai masih dalam penginputan data&nbsp;tes pantai masih dalam penginputan data&nbsp;tes pantai masih dalam penginputan data&nbsp;tes pantai masih dalam penginputan data&nbsp;tes pantai masih dalam penginputan data&nbsp;tes pantai masih dalam penginputan data&nbsp;tes pantai masih dalam penginputan data&nbsp;tes pantai masih dalam penginputan data&nbsp;tes pantai masih dalam penginputan data&nbsp;tes pantai masih dalam penginputan data&nbsp;tes pantai masih dalam penginputan data&nbsp;tes pantai masih dalam penginputan data&nbsp;tes pantai masih dalam penginputan data&nbsp;tes pantai masih dalam penginputan data&nbsp;tes pantai masih dalam penginputan data&nbsp;tes pantai masih dalam penginputan data&nbsp;tes pantai masih dalam penginputan data&nbsp;tes pantai masih dalam penginputan data&nbsp;tes pantai masih dalam penginputan data&nbsp;tes pantai masih dalam penginputan data&nbsp;tes pantai masih dalam penginputan data&nbsp;tes pantai masih dalam penginputan data&nbsp;tes pantai masih dalam penginputan data&nbsp;tes pantai masih dalam penginputan data&nbsp;tes pantai masih dalam penginputan data&nbsp;tes pantai masih dalam penginputan data&nbsp;tes pantai masih dalam penginputan data&nbsp;tes pantai masih dalam penginputan data&nbsp;tes pantai masih dalam penginputan data&nbsp;tes pantai masih dalam penginputan data&nbsp;tes pantai masih dalam penginputan data&nbsp;tes pantai masih dalam penginputan data&nbsp;tes pantai masih dalam penginputan data&nbsp;tes pantai masih dalam penginputan data&nbsp;</p>\r\n', 'PANTAI', ''),
(6, 'Pantai 3', '<p style=\"text-align: justify;\">tes pantai masih dalam penginputan data&nbsp;tes pantai masih dalam penginputan data&nbsp;tes pantai masih dalam penginputan data&nbsp;tes pantai masih dalam penginputan data&nbsp;tes pantai masih dalam penginputan data&nbsp;tes pantai masih dalam penginputan data&nbsp;tes pantai masih dalam penginputan data&nbsp;tes pantai masih dalam penginputan data&nbsp;tes pantai masih dalam penginputan data&nbsp;tes pantai masih dalam penginputan data&nbsp;tes pantai masih dalam penginputan data&nbsp;tes pantai masih dalam penginputan data&nbsp;tes pantai masih dalam penginputan data&nbsp;tes pantai masih dalam penginputan data&nbsp;tes pantai masih dalam penginputan data&nbsp;tes pantai masih dalam penginputan data&nbsp;tes pantai masih dalam penginputan data&nbsp;tes pantai masih dalam penginputan data&nbsp;tes pantai masih dalam penginputan data&nbsp;tes pantai masih dalam penginputan data&nbsp;tes pantai masih dalam penginputan data&nbsp;tes pantai masih dalam penginputan data&nbsp;tes pantai masih dalam penginputan data&nbsp;tes pantai masih dalam penginputan data&nbsp;tes pantai masih dalam penginputan data&nbsp;tes pantai masih dalam penginputan data&nbsp;tes pantai masih dalam penginputan data&nbsp;tes pantai masih dalam penginputan data&nbsp;tes pantai masih dalam penginputan data&nbsp;tes pantai masih dalam penginputan data&nbsp;tes pantai masih dalam penginputan data&nbsp;tes pantai masih dalam penginputan data&nbsp;tes pantai masih dalam penginputan data&nbsp;tes pantai masih dalam penginputan data&nbsp;tes pantai masih dalam penginputan data&nbsp;tes pantai masih dalam penginputan data&nbsp;tes pantai masih dalam penginputan data&nbsp;tes pantai masih dalam penginputan data&nbsp;tes pantai masih dalam penginputan data&nbsp;tes pantai masih dalam penginputan data&nbsp;tes pantai masih dalam penginputan data&nbsp;tes pantai masih dalam penginputan data&nbsp;tes pantai masih dalam penginputan data&nbsp;tes pantai masih dalam penginputan data&nbsp;tes pantai masih dalam penginputan data&nbsp;</p>\r\n', 'PANTAI', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `berita`
--
ALTER TABLE `berita`
  ADD PRIMARY KEY (`id_berita`);

--
-- Indexes for table `desa`
--
ALTER TABLE `desa`
  ADD PRIMARY KEY (`id_desa`);

--
-- Indexes for table `dusun`
--
ALTER TABLE `dusun`
  ADD PRIMARY KEY (`id_dusun`),
  ADD KEY `id_desa` (`id_desa`) USING BTREE;

--
-- Indexes for table `galeri`
--
ALTER TABLE `galeri`
  ADD PRIMARY KEY (`id_galeri`);

--
-- Indexes for table `kecamatan`
--
ALTER TABLE `kecamatan`
  ADD PRIMARY KEY (`id_kecamatan`);

--
-- Indexes for table `kematian`
--
ALTER TABLE `kematian`
  ADD PRIMARY KEY (`id_kematian`),
  ADD UNIQUE KEY `nik` (`nik`);

--
-- Indexes for table `kepdes`
--
ALTER TABLE `kepdes`
  ADD PRIMARY KEY (`id_kepdes`);

--
-- Indexes for table `kontak`
--
ALTER TABLE `kontak`
  ADD PRIMARY KEY (`id_kontak`);

--
-- Indexes for table `masukkan`
--
ALTER TABLE `masukkan`
  ADD PRIMARY KEY (`id_masukkan`);

--
-- Indexes for table `modul`
--
ALTER TABLE `modul`
  ADD PRIMARY KEY (`id_modul`);

--
-- Indexes for table `mutasi`
--
ALTER TABLE `mutasi`
  ADD PRIMARY KEY (`id_mutasi`);

--
-- Indexes for table `page`
--
ALTER TABLE `page`
  ADD PRIMARY KEY (`id_page`);

--
-- Indexes for table `penduduk`
--
ALTER TABLE `penduduk`
  ADD PRIMARY KEY (`id_penduduk`),
  ADD UNIQUE KEY `no_ktp` (`nik`),
  ADD KEY `agama_id` (`agama`),
  ADD KEY `dusun_id` (`id_dusun`);

--
-- Indexes for table `potensi_desa`
--
ALTER TABLE `potensi_desa`
  ADD PRIMARY KEY (`id_potensi_desa`);

--
-- Indexes for table `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`id_slider`);

--
-- Indexes for table `sosial`
--
ALTER TABLE `sosial`
  ADD PRIMARY KEY (`id_sosial`);

--
-- Indexes for table `video`
--
ALTER TABLE `video`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wisata`
--
ALTER TABLE `wisata`
  ADD PRIMARY KEY (`id_wisata`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `berita`
--
ALTER TABLE `berita`
  MODIFY `id_berita` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `desa`
--
ALTER TABLE `desa`
  MODIFY `id_desa` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `dusun`
--
ALTER TABLE `dusun`
  MODIFY `id_dusun` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `galeri`
--
ALTER TABLE `galeri`
  MODIFY `id_galeri` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `kecamatan`
--
ALTER TABLE `kecamatan`
  MODIFY `id_kecamatan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `kematian`
--
ALTER TABLE `kematian`
  MODIFY `id_kematian` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `kepdes`
--
ALTER TABLE `kepdes`
  MODIFY `id_kepdes` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `kontak`
--
ALTER TABLE `kontak`
  MODIFY `id_kontak` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `masukkan`
--
ALTER TABLE `masukkan`
  MODIFY `id_masukkan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `modul`
--
ALTER TABLE `modul`
  MODIFY `id_modul` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;
--
-- AUTO_INCREMENT for table `mutasi`
--
ALTER TABLE `mutasi`
  MODIFY `id_mutasi` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `page`
--
ALTER TABLE `page`
  MODIFY `id_page` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT for table `penduduk`
--
ALTER TABLE `penduduk`
  MODIFY `id_penduduk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=118;
--
-- AUTO_INCREMENT for table `potensi_desa`
--
ALTER TABLE `potensi_desa`
  MODIFY `id_potensi_desa` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `slider`
--
ALTER TABLE `slider`
  MODIFY `id_slider` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `sosial`
--
ALTER TABLE `sosial`
  MODIFY `id_sosial` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `video`
--
ALTER TABLE `video`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `wisata`
--
ALTER TABLE `wisata`
  MODIFY `id_wisata` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
