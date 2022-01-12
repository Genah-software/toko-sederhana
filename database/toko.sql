-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 12, 2022 at 06:11 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 5.6.39

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `toko`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbadmin`
--

CREATE TABLE `tbadmin` (
  `id` int(5) NOT NULL,
  `admin` varchar(40) NOT NULL,
  `pass` varchar(40) NOT NULL,
  `ket` varchar(100) NOT NULL,
  `idp` char(5) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbadmin`
--

INSERT INTO `tbadmin` (`id`, `admin`, `pass`, `ket`, `idp`) VALUES
(29, 'admin', 'admin', 'admin', ''),
(33, 'oli', 'oli', 'pelanggan', '8'),
(34, 'adit', 'admin', 'pelanggan', '9'),
(36, 'ade', 'ade', 'pelanggan', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbangsuran`
--

CREATE TABLE `tbangsuran` (
  `id` int(10) NOT NULL,
  `idk` varchar(10) NOT NULL,
  `angsur_ke` varchar(2) NOT NULL,
  `jumlah` varchar(10) NOT NULL,
  `tgl` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbangsuran`
--

INSERT INTO `tbangsuran` (`id`, `idk`, `angsur_ke`, `jumlah`, `tgl`) VALUES
(12, '11', '1', '450000', '28/10/2018'),
(11, '10', '1', '440833.333', '18/10/2018'),
(10, '8', '1', '1169166.66', '23/09/2018'),
(9, '7', '2', '530000', '12/09/2018'),
(8, '7', '1', '530000', '12/09/2018'),
(7, '6', '2', '245000', '12/09/2018'),
(6, '6', '1', '245000', '12/09/2018'),
(5, '5', '5', '354583.333', '12/09/2018'),
(4, '5', '4', '354583.333', ''),
(3, '5', '3', '354583.333', ''),
(2, '5', '2', '354583.333', ''),
(1, '5', '1', '354583.333', ''),
(13, '12', '1', '958333.333', '05/11/2018'),
(14, '11', '2', '450000', '06/11/2018');

-- --------------------------------------------------------

--
-- Table structure for table `tbdetailpenjualan`
--

CREATE TABLE `tbdetailpenjualan` (
  `id` int(10) NOT NULL,
  `id_penjualan` varchar(10) NOT NULL,
  `id_produk` varchar(10) NOT NULL,
  `banyak` varchar(10) NOT NULL,
  `harga_jual` varchar(10) NOT NULL,
  `total` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbdetailpenjualan`
--

INSERT INTO `tbdetailpenjualan` (`id`, `id_penjualan`, `id_produk`, `banyak`, `harga_jual`, `total`) VALUES
(16, '14', '25', '1', '12000000', '12000000'),
(15, '13', '25', '1', '12000000', '12000000');

-- --------------------------------------------------------

--
-- Table structure for table `tbkategori`
--

CREATE TABLE `tbkategori` (
  `id` int(10) NOT NULL,
  `kategori` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbkategori`
--

INSERT INTO `tbkategori` (`id`, `kategori`) VALUES
(32, 'RAKET'),
(31, 'CELANA'),
(30, 'BAJU'),
(29, 'ALAT GYM'),
(33, 'BOLA');

-- --------------------------------------------------------

--
-- Table structure for table `tbkeranjang`
--

CREATE TABLE `tbkeranjang` (
  `id` int(5) NOT NULL,
  `kode_pro` char(10) NOT NULL,
  `kode_pel` char(10) NOT NULL,
  `jumlah` char(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbkredit`
--

CREATE TABLE `tbkredit` (
  `id` int(10) NOT NULL,
  `idt` varchar(10) NOT NULL,
  `idp` varchar(10) NOT NULL,
  `lama` varchar(2) NOT NULL,
  `modal` varchar(10) NOT NULL,
  `bunga` varchar(10) NOT NULL,
  `perbulan` varchar(10) NOT NULL,
  `total` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbkredit`
--

INSERT INTO `tbkredit` (`id`, `idt`, `idp`, `lama`, `modal`, `bunga`, `perbulan`, `total`) VALUES
(11, '42', '5', '12', '4500000', '900000', '450000', '5400000'),
(10, '40', '4', '6', '2300000', '345000', '440833.333', '2645000'),
(7, '37', '2', '12', '5300000', '1060000', '530000', '6360000'),
(8, '38', '2', '6', '6100000', '915000', '1169166.66', '7015000'),
(9, '39', '4', '6', '0', '0', '0', '0'),
(12, '43', '6', '6', '5000000', '750000', '958333.333', '5750000');

-- --------------------------------------------------------

--
-- Table structure for table `tbpelanggan`
--

CREATE TABLE `tbpelanggan` (
  `id` int(10) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `kelamin` varchar(100) NOT NULL,
  `alamat` text NOT NULL,
  `phone` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbpelanggan`
--

INSERT INTO `tbpelanggan` (`id`, `nama`, `kelamin`, `alamat`, `phone`) VALUES
(8, 'ido', 'p', 'agus', '08882221134'),
(9, 'adit', 'p', 'Jl. Rusak\r\n', '082271384731');

-- --------------------------------------------------------

--
-- Table structure for table `tbpenjualan`
--

CREATE TABLE `tbpenjualan` (
  `id` int(10) NOT NULL,
  `tanggal` varchar(100) NOT NULL,
  `lama` varchar(2) NOT NULL,
  `idp` varchar(10) NOT NULL,
  `uang_muka` char(15) NOT NULL,
  `bunga` char(15) NOT NULL,
  `besar_bunga` char(20) NOT NULL,
  `tot_kotor` char(15) NOT NULL,
  `angsuran` char(15) NOT NULL,
  `tot_bersih` char(15) NOT NULL,
  `jenis_pembayaran` char(1) NOT NULL,
  `bukti_pembayaran` varchar(100) NOT NULL,
  `status` varchar(5) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbpenjualan`
--

INSERT INTO `tbpenjualan` (`id`, `tanggal`, `lama`, `idp`, `uang_muka`, `bunga`, `besar_bunga`, `tot_kotor`, `angsuran`, `tot_bersih`, `jenis_pembayaran`, `bukti_pembayaran`, `status`) VALUES
(6, '2019-08-22', '-', '8', '-', '-', '-', '-', '-', '1750000', 't', '-', 'y'),
(5, '2019-08-21', '6', '8', '160000', '5', '432000', '1440000', '312000', '1872000', 'k', 'DSC04345 (2).JPG', 'y'),
(4, '2019-08-21', '12', '8', '50000', '8', '432000', '450000', '73500', '882000', 'k', 'DSC04345 (2).JPG', 'y'),
(3, '2019-08-21', '12', '9', '250000', '8', '2160000', '2250000', '367500', '4410000', 'k', 'DSC04345 (2).JPG', 'y'),
(2, '2019-08-21', '-', '8', '-', '-', '-', '-', '-', '3149000', 't', '-', 'y'),
(1, '2019-08-08', '3', '8', '179700', '2.5', '31448', '419300', '150249', '450748', 'k', 'angga(3x4).jpg', 'y'),
(14, '2022-01-12', '6', '', '1200000', '5', '3240000', '10800000', '2340000', '14040000', 'k', '-', 'n'),
(13, '2022-01-12', '-', '', '-', '-', '-', '-', '-', '12000000', 't', '-', 'n');

-- --------------------------------------------------------

--
-- Table structure for table `tbproduk`
--

CREATE TABLE `tbproduk` (
  `id` int(10) NOT NULL,
  `id_kategori` varchar(10) NOT NULL,
  `nama_barang` text NOT NULL,
  `harga` varchar(10) NOT NULL,
  `stok` char(10) NOT NULL,
  `deskripsi` text NOT NULL,
  `tanggal` varchar(50) NOT NULL,
  `img` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbproduk`
--

INSERT INTO `tbproduk` (`id`, `id_kategori`, `nama_barang`, `harga`, `stok`, `deskripsi`, `tanggal`, `img`) VALUES
(30, '29', 'Alat fitnes / alat gym rumahan', '12000000', '22', 'Alat fitnes / alat gym rumahan', '2022-01-12', 'eerwrwer.jpg'),
(29, '29', 'Build Ray Curl Jump Rope Peralatan Fitness [JR-1085]', '900000', '90', 'Build Ray Curl Jump Rope Peralatan Fitness [JR-1085]', '2022-01-12', 'apkj04lt5Z.jpg'),
(28, '29', 'Dumbbell - Beban Barbell Karet IReborn 7.5Kg', '1000000', '121', 'Dumbbell - Beban Barbell Karet IReborn 7.5Kg', '2022-01-12', 'EE9V6AmU5R.jpg'),
(27, '29', 'Bfit Onesports Motorized Treadmill 238', '34000000', '34', 'Bfit Onesports Motorized Treadmill 238', '2022-01-12', 'zvmttSMWXY.jpg'),
(26, '29', 'Stamina Benchpress with Buttferfly Alat Fitness', '22000000', '22', 'Stamina Benchpress with Buttferfly Alat Fitness', '2022-01-12', 'hMGP8gTovX.jpg'),
(25, '29', 'Home Gym TL HG008 Alat Fitness - Hitam [1 Sisi]', '12000000', '12', 'Hitam [1 Sisi]', '2022-01-12', 'VgaqMAOT1z.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbstok`
--

CREATE TABLE `tbstok` (
  `id` int(10) NOT NULL,
  `id_poroduk` varchar(10) NOT NULL,
  `stok` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbstok`
--

INSERT INTO `tbstok` (`id`, `id_poroduk`, `stok`) VALUES
(5, '6', '20'),
(4, '5', '10'),
(6, '7', '9');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbadmin`
--
ALTER TABLE `tbadmin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbangsuran`
--
ALTER TABLE `tbangsuran`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbdetailpenjualan`
--
ALTER TABLE `tbdetailpenjualan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbkategori`
--
ALTER TABLE `tbkategori`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbkeranjang`
--
ALTER TABLE `tbkeranjang`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbkredit`
--
ALTER TABLE `tbkredit`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbpelanggan`
--
ALTER TABLE `tbpelanggan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbpenjualan`
--
ALTER TABLE `tbpenjualan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbproduk`
--
ALTER TABLE `tbproduk`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbstok`
--
ALTER TABLE `tbstok`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbadmin`
--
ALTER TABLE `tbadmin`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `tbangsuran`
--
ALTER TABLE `tbangsuran`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tbdetailpenjualan`
--
ALTER TABLE `tbdetailpenjualan`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `tbkategori`
--
ALTER TABLE `tbkategori`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `tbkeranjang`
--
ALTER TABLE `tbkeranjang`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbkredit`
--
ALTER TABLE `tbkredit`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tbpelanggan`
--
ALTER TABLE `tbpelanggan`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tbpenjualan`
--
ALTER TABLE `tbpenjualan`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tbproduk`
--
ALTER TABLE `tbproduk`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `tbstok`
--
ALTER TABLE `tbstok`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
