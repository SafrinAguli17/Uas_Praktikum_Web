-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 12, 2019 at 03:58 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `perpusweb`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `user_id` int(30) NOT NULL,
  `username` varchar(15) NOT NULL,
  `password` varchar(15) NOT NULL,
  `fullname` varchar(30) NOT NULL,
  `level` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`user_id`, `username`, `password`, `fullname`, `level`) VALUES
(1, 'wismo', 'wismo', 'WismoGinanjar', '1'),
(2, 'admin', 'admin', 'admin', '1');

-- --------------------------------------------------------

--
-- Table structure for table `data_anggota`
--

CREATE TABLE `data_anggota` (
  `id` int(4) NOT NULL,
  `no_induk` varchar(5) NOT NULL,
  `nama` varchar(150) NOT NULL,
  `jk` varchar(2) NOT NULL,
  `ttl` varchar(100) NOT NULL,
  `alamat` varchar(250) NOT NULL,
  `foto` varchar(75) NOT NULL,
  `tgl_input` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `data_anggota`
--

INSERT INTO `data_anggota` (`id`, `no_induk`, `nama`, `jk`, `ttl`, `alamat`, `foto`, `tgl_input`) VALUES
(2, '15902', 'AHMAD MUCHTADIN', 'L', 'Bekasi, 27 Januari 1998', 'Cabang Lio, Cikarang Utara', 'gambar_anggota/Assy enggine.jpg', '2017-05-23 02:45:33'),
(3, '15903', 'HAMRI AJAH', 'L', 'Cikarang, 30 Januari 1997', 'Rawa Bangkong, Cikarang Timur', 'gambar_anggota/009.jpg', '2017-05-23 02:45:33'),
(4, '15904', 'ANI ANILAH', 'P', 'Cikarang, 20 Januari 1992', 'Sasak Bali, Sukatani', 'gambar_anggota/c.jpg', '2017-05-23 02:45:33'),
(5, '15905', 'RYAN SUPRIATNA', 'L', 'Cikarang, 9 Agustus 1995', 'Sukatani, Cikarang', 'gambar_anggota/ko caci.jpg', '2017-05-23 02:45:33'),
(6, '15906', 'LATHIFAH', 'P', 'Bekasi, 26 Juli 1997', 'Cikarang Baru', 'gambar_anggota/1098.jpg', '2017-05-23 02:45:33'),
(7, '15907', 'CANTIKA PUJIASTUTI', 'P', 'Karawang, 11 April 1998', 'Tambelang, Bekasi', 'gambar_anggota/user.jpg', '2017-05-23 02:45:33'),
(8, '15908', 'SEBASTIAN HADI PRASETYO', 'L', 'Bekasi, 17 Agustus 1990', 'Tambelang, Bekasi', 'gambar_anggota/26115.jpg', '2017-05-23 02:45:33'),
(9, '15909', 'RAMA AGUS SUPRIYADI', 'L', 'Bogor, 29 Juli 1994', 'Cikarang, Bekasi', 'gambar_anggota/l.jpg', '2017-05-23 02:45:33'),
(11, '15911', 'HAKKO BIO RICHARD', 'L', 'Bekasi, 27 September 1990', 'Bekasi, Jawa Barat, Indonesia', 'gambar_anggota/Image0205.jpg', '2017-05-23 02:45:33'),
(12, '20150', 'ANTON SUGIANTO', 'L', 'Indramayu, 28 Oktober 1988', 'cikarang barat bekasi', 'gambar_anggota/2.jpg', '2017-05-23 02:45:33'),
(13, '20150', 'DEDE RIZKI RAMADHAN', 'L', 'Bekasi, 30 November 1991', 'Pilar Barat, Cikarang, Bekasi', 'gambar_anggota/5.jpg', '2017-05-23 02:45:33');

-- --------------------------------------------------------

--
-- Table structure for table `data_buku`
--

CREATE TABLE `data_buku` (
  `id` int(5) NOT NULL,
  `judul` varchar(250) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `pengarang` varchar(250) NOT NULL,
  `th_terbit` varchar(4) NOT NULL,
  `penerbit` varchar(250) NOT NULL,
  `kategori` varchar(50) NOT NULL,
  `jumlah_buku` int(2) NOT NULL,
  `tgl_input` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `data_buku`
--

INSERT INTO `data_buku` (`id`, `judul`, `photo`, `pengarang`, `th_terbit`, `penerbit`, `kategori`, `jumlah_buku`, `tgl_input`) VALUES
(2, 'Membangun Toko Online Dengan PHP dan MySQL', '', 'Rofiqo Fauzan Firdaus', '2015', 'NiqoWeb Sukses Media', '1300', 10, '2015-10-10 00:47:40'),
(3, 'Aplikasi Penggajian Karyawan dengan PHP', '', 'Hakko Bio Richard', '2015', 'NiqoWeb Sukses media', '1300', 10, '2015-10-10 00:46:00'),
(4, 'Membangun Aplikasi Perpustakaan Berbasis Web', '', 'Hakko Bio Richard', '2015', 'NiqoWeb Sukses media', '1300', 10, '2015-10-10 00:44:54'),
(5, 'Membangun Aplikasi Nilai Dengan PHP', '', 'Hakko Bio Richard', '2009', 'NiqoWeb Sukses Media', '1300', 10, '2015-10-10 00:48:50'),
(12, 'react js', '387c80f3d58e47a7cb8ac1d370a531bf.jpg', 'bill tanthowi jauhari', '2000', 'andi', '1', 9, '2017-05-30 23:08:40');

-- --------------------------------------------------------

--
-- Table structure for table `item_buku`
--

CREATE TABLE `item_buku` (
  `id` int(11) NOT NULL,
  `id_jumlah_buku` int(11) NOT NULL,
  `id_peminjam` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `jumlah_buku`
--

CREATE TABLE `jumlah_buku` (
  `id` int(11) NOT NULL,
  `code` varchar(20) NOT NULL,
  `id_buku` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `kategori_buku`
--

CREATE TABLE `kategori_buku` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kategori_buku`
--

INSERT INTO `kategori_buku` (`id`, `name`) VALUES
(1, 'komputer');

-- --------------------------------------------------------

--
-- Table structure for table `pengunjung`
--

CREATE TABLE `pengunjung` (
  `id` int(6) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `jk` varchar(2) NOT NULL,
  `kelas` varchar(17) NOT NULL,
  `perlu1` varchar(15) NOT NULL,
  `cari` varchar(255) NOT NULL,
  `saran` varchar(255) NOT NULL,
  `tgl_kunjung` date NOT NULL,
  `jam_kunjung` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pengunjung`
--

INSERT INTO `pengunjung` (`id`, `nama`, `jk`, `kelas`, `perlu1`, `cari`, `saran`, `tgl_kunjung`, `jam_kunjung`) VALUES
(1, 'Sebastian Hadi Prasetyo', 'L', '9a', 'Membaca', 'Antropologi', 'Pelayanan di tingkatkan lagi', '2015-10-11', '07:23:40'),
(2, 'Hakko Bio Richard', 'L', 'XII4', 'Membaca', 'Buku Pemrograman', 'Perbanyak Buku Pemrograman', '0000-00-00', '04:21:50'),
(3, 'Niqo Bio Haqqul Yaqin', 'L', 'X2', 'Membaca', 'Buku Pemrograman', 'Tingkatkan Pelayanan', '2015-10-18', '04:23:04'),
(4, 'jum', 'P', 'XII2', 'pinjam buku', 'buku', 'bagus', '2017-02-10', '03:10:46'),
(5, 'anggi', 'P', '-- Pilih Salah Sa', 'jjjj', 'ttt', 'hjyfkukgjh', '2017-02-21', '13:43:44'),
(6, 'sofi', 'L', 'X4', 'ggd', 'fjfdksafjs', 'fskfskal', '2017-02-21', '13:54:42'),
(7, 'Rofiqo Fauzan Firdaus', '', '', '', 'Admin yang cantik', 'tolong berikan admin yangcantik', '2017-03-02', '17:15:20'),
(8, 'Fauzan', '', '', '', 'Admin yang cantik', 'admin', '2017-03-02', '17:16:32'),
(9, 'Rofiqo', '', '', '', 'buku', 'Apaa yaa', '2017-03-02', '17:26:32'),
(10, 'Firdaus', '', '', 'jalan jalan', 'terserah', 'terserah juga', '2017-03-02', '17:27:15'),
(11, 'Rofiqo Fauzan Firdaus', 'L', '', 'cari cari', 'buku lah', 'terserah', '2017-03-02', '17:36:06'),
(12, 'Rofiqo Fauzan Firdaus', 'L', '', 'jalan aja', 'apa aja', 'terserah aku', '2017-03-02', '17:46:56'),
(13, 'Rofiqo Fauzan Firdaus', 'L', 'Mahasiswa/i', 'Jalan Jalan Aja', 'cari buku aja', 'Enak sii', '2017-03-02', '17:48:46'),
(14, 'Bill Tanthowi Jauhari', 'L', 'Umum', 'meminjam buku', 'hello', 'baik', '2017-04-27', '08:04:03');

-- --------------------------------------------------------

--
-- Table structure for table `pinjam`
--

CREATE TABLE `pinjam` (
  `id` int(11) NOT NULL,
  `id_buku` int(11) NOT NULL,
  `no_induk_anggota` int(11) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `tanggal_pinjam` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pinjam`
--

INSERT INTO `pinjam` (`id`, `id_buku`, `no_induk_anggota`, `jumlah`, `tanggal_pinjam`) VALUES
(1, 12, 15902, 4, '2017-05-30 23:23:02');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `data_anggota`
--
ALTER TABLE `data_anggota`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `data_buku`
--
ALTER TABLE `data_buku`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `item_buku`
--
ALTER TABLE `item_buku`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jumlah_buku`
--
ALTER TABLE `jumlah_buku`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kategori_buku`
--
ALTER TABLE `kategori_buku`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pengunjung`
--
ALTER TABLE `pengunjung`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pinjam`
--
ALTER TABLE `pinjam`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `user_id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `data_anggota`
--
ALTER TABLE `data_anggota`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `data_buku`
--
ALTER TABLE `data_buku`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `item_buku`
--
ALTER TABLE `item_buku`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jumlah_buku`
--
ALTER TABLE `jumlah_buku`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kategori_buku`
--
ALTER TABLE `kategori_buku`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pengunjung`
--
ALTER TABLE `pengunjung`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `pinjam`
--
ALTER TABLE `pinjam`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
