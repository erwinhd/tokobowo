-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Waktu pembuatan: 06 Mar 2023 pada 06.02
-- Versi server: 10.5.16-MariaDB
-- Versi PHP: 7.3.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `id20278017_tokobowo`
--

-- --------------------------------------------------------

--
-- Stand-in struktur untuk tampilan `qw_barang`
-- (Lihat di bawah untuk tampilan aktual)
--
CREATE TABLE `qw_barang` (
`kd_barang` varchar(9)
,`nama_barang` varchar(50)
,`id_jenis` int(11)
,`satuan` varchar(25)
,`stok` int(11)
,`harga_pokok` int(11)
,`ppn` int(11)
,`harga_jual` int(11)
,`jenis` varchar(25)
);

-- --------------------------------------------------------

--
-- Stand-in struktur untuk tampilan `qw_barang_masuk`
-- (Lihat di bawah untuk tampilan aktual)
--
CREATE TABLE `qw_barang_masuk` (
`kd_barang_masuk` varchar(11)
,`kd_supplier` varchar(6)
,`kd_barang` varchar(9)
,`nama_barang` varchar(50)
,`satuan` varchar(25)
,`harga` int(11)
,`jumlah` int(11)
,`total_harga` int(11)
,`tanggal` date
,`nama_supplier` varchar(50)
);

-- --------------------------------------------------------

--
-- Stand-in struktur untuk tampilan `qw_transaksi`
-- (Lihat di bawah untuk tampilan aktual)
--
CREATE TABLE `qw_transaksi` (
`no_transaksi` varchar(11)
,`tgl_transaksi` date
,`waktu` timestamp
,`id_kasir` varchar(20)
,`subtotal` int(11)
,`diskon` int(3)
,`total_akhir` int(11)
,`bayar` int(11)
,`kembalian` int(11)
,`nama_kasir` varchar(50)
);

-- --------------------------------------------------------

--
-- Stand-in struktur untuk tampilan `qw_user`
-- (Lihat di bawah untuk tampilan aktual)
--
CREATE TABLE `qw_user` (
`id_user` int(11)
,`nama_user` varchar(50)
,`jk_user` varchar(9)
,`alamat_user` text
,`no_telp_user` varchar(13)
,`username` varchar(20)
,`password` varchar(30)
,`type_user` int(1)
,`jabatan` varchar(7)
);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_barang`
--

CREATE TABLE `tbl_barang` (
  `kd_barang` varchar(9) NOT NULL,
  `nama_barang` varchar(50) NOT NULL,
  `id_jenis` int(11) NOT NULL,
  `satuan` varchar(25) NOT NULL,
  `stok` int(11) NOT NULL,
  `harga_pokok` int(11) NOT NULL,
  `ppn` int(11) NOT NULL,
  `harga_jual` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_barang`
--

INSERT INTO `tbl_barang` (`kd_barang`, `nama_barang`, `id_jenis`, `satuan`, `stok`, `harga_pokok`, `ppn`, `harga_jual`) VALUES
('BRG000002', 'Antena tv digital OUTDOOR dan analog LUAR PF HDU 2', 1, 'pcs', 10, 180000, 18000, 198000),
('BRG000003', 'Antenna Indoor Outdoor PX HDA-5000', 1, 'pcs', 8, 200000, 20000, 220000),
('BRG000028', 'Splitter antena  4 way ', 2, 'pcs', 5, 22000, 2200, 24200),
('BRG000005', 'EVINIX Set Top Box H-1', 7, 'pcs', 10, 200000, 20000, 220000),
('BRG000016', 'SonicGear Portable Speaker Quatro 2', 3, 'pcs', 10, 89000, 8900, 97900),
('BRG000006', 'Luby DVB T2-01', 7, 'pcs', 10, 150000, 15000, 165000),
('BRG000007', 'Kipas Angin Sekai HFN 950 High Velocity ', 6, 'pcs', 9, 145000, 14500, 159500),
('BRG000008', ' Kipas Angin Cosmos Wall Fan 16-WFO', 6, 'pcs', 13, 187000, 18700, 205700),
('BRG000009', 'Bohlam Philips Essential Energy Saver 14W E27 ', 4, 'pcs', 19, 32000, 3200, 35200),
('BRG000010', 'Bohlam Philips Tornado Energy Saver 20W E27 ', 4, 'pcs', 16, 44000, 4400, 48400),
('BRG000011', 'Gongniu Stop Kontak 4 lubang 1on-off kabel 1,5 mtr', 5, 'pcs', 12, 80000, 8000, 88000),
('BRG000012', 'Advance : Speaker T-101', 3, 'pcs', 14, 150000, 15000, 165000),
('BRG000023', 'Splitter antena 2 Way', 2, 'pcs', 10, 17000, 1700, 18700),
('BRG000029', 'Kabel antena RG6 Belden', 5, 'meter', 43, 4500, 450, 4950),
('BRG000030', 'setrika maspion', 8, 'pcs', 8, 150000, 15000, 165000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_barang_masuk`
--

CREATE TABLE `tbl_barang_masuk` (
  `kd_barang_masuk` varchar(11) NOT NULL,
  `kd_supplier` varchar(6) NOT NULL,
  `kd_barang` varchar(9) NOT NULL,
  `nama_barang` varchar(50) NOT NULL,
  `satuan` varchar(25) NOT NULL,
  `harga` int(11) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `total_harga` int(11) NOT NULL,
  `tanggal` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_barang_masuk`
--

INSERT INTO `tbl_barang_masuk` (`kd_barang_masuk`, `kd_supplier`, `kd_barang`, `nama_barang`, `satuan`, `harga`, `jumlah`, `total_harga`, `tanggal`) VALUES
('0802BELI001', 'SPL014', 'BRG000002', 'Antena tv digital OUTDOOR dan analog LUAR PF HDU 2', 'pcs', 180000, 4, 720000, '2023-02-08'),
('0802BELI002', 'SPL019', 'BRG000009', 'Bohlam Philips Essential Energy Saver 14W E27 ', 'pcs', 32000, 15, 480000, '2023-02-08'),
('0802BELI003', 'SPL016', 'BRG000029', 'Kabel antena RG6 Belden', 'meter', 4500, 50, 225000, '2023-02-08'),
('0802BELI004', 'SPL015', 'BRG000023', 'Splitter antena 2 Way', 'pcs', 17000, 12, 204000, '2023-02-08'),
('0802BELI005', 'SPL019', 'BRG000010', 'Bohlam Philips Tornado Energy Saver 20W E27 ', 'pcs', 44000, 10, 440000, '2023-02-08'),
('1302BELI001', 'SPL015', 'BRG000028', 'Splitter antena  4 way ', 'pcs', 22000, 5, 110000, '2023-02-13'),
('2002BELI001', 'SPL015', 'BRG000030', 'setrika maspion', 'pcs', 150000, 10, 1500000, '2023-02-20'),
('2701BELI001', 'SPL014', 'BRG000026', 'Antena tv digital outdoor PF HDU 15 HD', 'pcs', 125000, 15, 1875000, '2023-01-27'),
('2701BELI002', 'SPL015', 'BRG000027', 'Splitter Antena 3 Way', 'pcs', 42000, 20, 840000, '2023-01-27');

--
-- Trigger `tbl_barang_masuk`
--
DELIMITER $$
CREATE TRIGGER `hapus_barangmasuk` AFTER DELETE ON `tbl_barang_masuk` FOR EACH ROW UPDATE tbl_barang SET stok = stok-OLD.jumlah WHERE kd_barang = OLD.kd_barang
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `hapus_barangmasuk1` BEFORE DELETE ON `tbl_barang_masuk` FOR EACH ROW DELETE FROM tbl_keuangan WHERE id_asal = OLD.kd_barang_masuk
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `tambah_barangmasuk` AFTER INSERT ON `tbl_barang_masuk` FOR EACH ROW UPDATE tbl_barang SET stok = stok+NEW.jumlah WHERE kd_barang = NEW.kd_barang
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `update_barangmasuk` AFTER UPDATE ON `tbl_barang_masuk` FOR EACH ROW UPDATE tbl_barang SET stok = (stok - OLD.jumlah) + NEW.jumlah  WHERE kd_barang = NEW.kd_barang
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `update_barangmasuk1` BEFORE UPDATE ON `tbl_barang_masuk` FOR EACH ROW UPDATE tbl_keuangan SET keluar = (keluar-OLD.total_harga)+NEW.total_harga WHERE id_asal = NEW.kd_barang_masuk
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_jenis`
--

CREATE TABLE `tbl_jenis` (
  `id_jenis` int(11) NOT NULL,
  `jenis` varchar(25) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_jenis`
--

INSERT INTO `tbl_jenis` (`id_jenis`, `jenis`) VALUES
(3, 'Speaker'),
(2, 'spliter antena'),
(1, 'Antena TV'),
(4, 'Lampu'),
(5, 'Kabel'),
(6, 'Kipas Angin'),
(7, 'Set Top Box'),
(8, 'Setrika');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_keuangan`
--

CREATE TABLE `tbl_keuangan` (
  `id_keuangan` int(11) NOT NULL,
  `id_asal` varchar(11) NOT NULL,
  `tanggal` date NOT NULL,
  `waktu` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `jenis_keuangan` varchar(25) NOT NULL,
  `masuk` int(11) NOT NULL,
  `keluar` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_keuangan`
--

INSERT INTO `tbl_keuangan` (`id_keuangan`, `id_asal`, `tanggal`, `waktu`, `jenis_keuangan`, `masuk`, `keluar`) VALUES
(72, '2701BELI001', '2023-01-27', '2023-01-27 09:13:44', 'Pembelian Antena tv digit', 0, 1875000),
(73, '', '2023-01-27', '2023-01-27 09:14:32', 'Saldo Awal', 10000000, 0),
(74, '2701BELI002', '2023-01-27', '2023-01-27 09:20:17', 'Pembelian Splitter Antena', 0, 840000),
(75, '', '2023-02-08', '2023-02-08 00:14:18', 'Saldo Awal', 50000000, 0),
(76, '0802BELI001', '2023-02-08', '2023-02-08 01:35:13', 'Pembelian Antena tv digit', 0, 720000),
(77, '0802BELI002', '2023-02-08', '2023-02-08 01:35:48', 'Pembelian Bohlam Philips ', 0, 480000),
(78, '0802BELI003', '2023-02-08', '2023-02-08 01:37:19', 'Pembelian Kabel antena RG', 0, 225000),
(79, '0802BELI004', '2023-02-08', '2023-02-08 01:37:58', 'Pembelian Splitter antena', 0, 204000),
(80, '08022023002', '2023-02-08', '2023-02-08 09:21:02', 'Pendapatan Harian', 633600, 0),
(81, '0802BELI005', '2023-02-08', '2023-02-08 09:29:39', 'Pembelian Bohlam Philips ', 0, 440000),
(82, '', '2023-02-09', '2023-02-09 01:58:39', 'Gaji Pegawai', 0, 4000000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_supplier`
--

CREATE TABLE `tbl_supplier` (
  `kd_supplier` varchar(6) NOT NULL,
  `nama_supplier` varchar(50) NOT NULL,
  `alamat_supplier` text NOT NULL,
  `no_telp_supplier` varchar(13) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_supplier`
--

INSERT INTO `tbl_supplier` (`kd_supplier`, `nama_supplier`, `alamat_supplier`, `no_telp_supplier`) VALUES
('SPL021', 'Sekai Roxy', 'Jl. KH. Hasyim Ashari No.35A, RT.1/RW.11, Cideng, Kecamatan Gambir, Kota Jakarta Pusat', '0216323325'),
('SPL020', 'PT Star Cosmos', 'Jl. Rawa Buaya No.8, Kecamatan Cengkareng, Kota Jakarta Barat', '0215439663'),
('SPL019', 'Toko Sumber Lampu', 'GLODOK Lt.2 Blok B3 No.2, Hayam Wuruk St No.127, Mangga Besar, Jakarta', '0216232105'),
('SPL018', 'Advance Digitals Official', 'Jl Sunter agung timur Blok 01 No.18-19, Jakarta', '0831-9794-872'),
('SPL017', 'PT. Indokom', 'Jl. KH. Hasyim Ashari No.125, Jakarta Pusat', '021-63855981'),
('SPL016', 'PT. Gunung Semesta', 'Jl. Mangga Dua Raya No.8, RT.17/RW.11', '0216264525'),
('SPL014', 'PT. BEST FORTUNE INDONESIA', 'Jl. terusan hibrida, Blok GOS/B2 Kelapa Gading-Jakarta utara', '0212906873'),
('SPL015', 'Ali Elektronik', 'Jl. Benteng Betawi No.5 Kota Tangerang', '0219212178'),
('SPL022', 'Elektronesia', 'Pejaten Barat 2 Jl.timbul, Jakarta Selatan,', '0838-1199-808');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_transaksi`
--

CREATE TABLE `tbl_transaksi` (
  `no_transaksi` varchar(11) NOT NULL,
  `tgl_transaksi` date NOT NULL,
  `waktu` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `id_kasir` varchar(20) NOT NULL,
  `subtotal` int(11) NOT NULL,
  `diskon` int(3) NOT NULL,
  `total_akhir` int(11) NOT NULL,
  `bayar` int(11) NOT NULL,
  `kembalian` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_transaksi`
--

INSERT INTO `tbl_transaksi` (`no_transaksi`, `tgl_transaksi`, `waktu`, `id_kasir`, `subtotal`, `diskon`, `total_akhir`, `bayar`, `kembalian`) VALUES
('08022023001', '2023-02-08', '2023-02-08 03:22:12', 'kasir', 455400, 0, 455400, 460000, 4600),
('08022023002', '2023-02-08', '2023-02-08 09:21:02', 'kasir', 198000, 10, 178200, 200000, 21800),
('11022023001', '2023-02-11', '2023-02-11 11:47:53', 'kasir', 35200, 0, 35200, 50000, 14800),
('11022023002', '2023-02-11', '2023-02-11 11:51:20', 'kasir', 189750, 0, 189750, 200000, 10250),
('11022023003', '2023-02-11', '2023-02-11 11:52:23', 'kasir', 48400, 0, 48400, 50000, 1600),
('11022023004', '2023-02-11', '2023-02-11 11:54:07', 'kasir', 4950, 0, 4950, 5000, 50),
('13022023001', '2023-02-13', '2023-02-13 09:03:21', 'kasir', 88000, 0, 88000, 100000, 12000),
('13022023002', '2023-02-13', '2023-02-13 09:23:16', 'kasir', 4950, 0, 4950, 5000, 50),
('20022023001', '2023-02-20', '2023-02-20 03:44:56', 'kasir', 165000, 0, 165000, 200000, 35000),
('20022023002', '2023-02-20', '2023-02-20 03:50:19', 'kasir', 330000, 0, 330000, 350000, 20000);

--
-- Trigger `tbl_transaksi`
--
DELIMITER $$
CREATE TRIGGER `hapus_transaksi` AFTER DELETE ON `tbl_transaksi` FOR EACH ROW UPDATE tbl_keuangan SET masuk = masuk-OLD.total_akhir WHERE tanggal = OLD.tgl_transaksi AND jenis_keuangan = 'Pendapatan Harian'
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `tambah_transaksi` AFTER INSERT ON `tbl_transaksi` FOR EACH ROW UPDATE tbl_keuangan SET id_asal = NEW.no_transaksi, masuk = masuk+NEW.total_akhir WHERE tanggal = NEW.tgl_transaksi AND jenis_keuangan = 'Pendapatan Harian'
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `update_transaksi` AFTER UPDATE ON `tbl_transaksi` FOR EACH ROW UPDATE tbl_keuangan SET id_asal = NEW.no_transaksi, masuk = (masuk-OLD.total_akhir)+NEW.total_akhir WHERE tanggal = NEW.tgl_transaksi AND jenis_keuangan = 'Pendapatan Harian'
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_transaksi_detail`
--

CREATE TABLE `tbl_transaksi_detail` (
  `id` int(11) NOT NULL,
  `no_transaksi` varchar(11) NOT NULL,
  `kd_barang` varchar(9) NOT NULL,
  `barang` varchar(50) NOT NULL,
  `harga` int(11) NOT NULL,
  `banyak` int(11) NOT NULL,
  `total` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_transaksi_detail`
--

INSERT INTO `tbl_transaksi_detail` (`id`, `no_transaksi`, `kd_barang`, `barang`, `harga`, `banyak`, `total`) VALUES
(208, '08022023001', 'BRG000005', 'EVINIX Set Top Box H-1', 220000, 1, 220000),
(209, '08022023001', 'BRG000023', 'Splitter antena 2 Way', 18700, 2, 37400),
(210, '08022023001', 'BRG000002', 'Antena tv digital OUTDOOR dan analog LUAR PF HDU 2', 198000, 1, 198000),
(213, '08022023002', 'BRG000002', 'Antena tv digital OUTDOOR dan analog LUAR PF HDU 2', 198000, 1, 198000),
(216, '11022023001', 'BRG000009', 'Bohlam Philips Essential Energy Saver 14W E27 ', 35200, 1, 35200),
(217, '11022023002', 'BRG000029', 'Kabel antena RG6 Belden', 4950, 5, 24750),
(218, '11022023002', 'BRG000012', 'Advance : Speaker T-101', 165000, 1, 165000),
(219, '11022023003', 'BRG000010', 'Bohlam Philips Tornado Energy Saver 20W E27 ', 48400, 1, 48400),
(220, '11022023004', 'BRG000029', 'Kabel antena RG6 Belden', 4950, 1, 4950),
(221, '13022023001', 'BRG000011', 'Gongniu Stop Kontak 4 lubang 1on-off kabel 1,5 mtr', 88000, 1, 88000),
(222, '13022023002', 'BRG000029', 'Kabel antena RG6 Belden', 4950, 1, 4950),
(223, '20022023001', 'BRG000006', 'Luby DVB T2-01', 165000, 1, 165000),
(224, '20022023002', 'BRG000030', 'setrika maspion', 165000, 2, 330000);

--
-- Trigger `tbl_transaksi_detail`
--
DELIMITER $$
CREATE TRIGGER `hapus_jualbarang` AFTER DELETE ON `tbl_transaksi_detail` FOR EACH ROW UPDATE tbl_barang SET stok = stok+OLD.banyak WHERE kd_barang = OLD.kd_barang
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `tambah_jualbarang` AFTER INSERT ON `tbl_transaksi_detail` FOR EACH ROW UPDATE tbl_barang SET stok = stok - NEW.banyak WHERE kd_barang = NEW.kd_barang
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `update_jualbarang` AFTER UPDATE ON `tbl_transaksi_detail` FOR EACH ROW UPDATE tbl_barang SET stok = (stok+OLD.banyak) - NEW.banyak WHERE kd_barang =NEW.Kd_barang
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_type_user`
--

CREATE TABLE `tbl_type_user` (
  `type_user` int(1) NOT NULL,
  `jabatan` varchar(7) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_type_user`
--

INSERT INTO `tbl_type_user` (`type_user`, `jabatan`) VALUES
(1, 'Manager'),
(2, 'Admin'),
(3, 'Kasir');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id_user` int(11) NOT NULL,
  `nama_user` varchar(50) NOT NULL,
  `jk_user` varchar(9) NOT NULL,
  `alamat_user` text NOT NULL,
  `no_telp_user` varchar(13) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(30) NOT NULL,
  `type_user` int(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_user`
--

INSERT INTO `tbl_user` (`id_user`, `nama_user`, `jk_user`, `alamat_user`, `no_telp_user`, `username`, `password`, `type_user`) VALUES
(3, 'Kasir', 'Laki-Laki', 'Warakas', '085770851630', 'kasir', 'kasir123', 3),
(2, 'Manager', 'Laki-Laki', 'Warakas 6', '085770851636', 'Manager', 'Manager123', 1),
(1, 'Erwin Catur Prasetyo', 'Laki-Laki', 'Jl. Warakas 1 No.70 RT /RW 012/001', '08981606324', 'erwincatur', 'serem123', 2),
(4, 'Ahmad Abdul', 'Laki-Laki', 'Jl. Warakas 6', '085770851631', 'ahmad', 'ahmad123', 1),
(5, 'admin', 'Perempuan', 'Jl. Warakas 1', '0881025533055', 'admin', 'admin123', 2);

-- --------------------------------------------------------

--
-- Struktur untuk view `qw_barang`
--
DROP TABLE IF EXISTS `qw_barang`;

CREATE ALGORITHM=UNDEFINED DEFINER=`id20278017_erwin`@`%` SQL SECURITY DEFINER VIEW `qw_barang`  AS  select `tbl_barang`.`kd_barang` AS `kd_barang`,`tbl_barang`.`nama_barang` AS `nama_barang`,`tbl_barang`.`id_jenis` AS `id_jenis`,`tbl_barang`.`satuan` AS `satuan`,`tbl_barang`.`stok` AS `stok`,`tbl_barang`.`harga_pokok` AS `harga_pokok`,`tbl_barang`.`ppn` AS `ppn`,`tbl_barang`.`harga_jual` AS `harga_jual`,`tbl_jenis`.`jenis` AS `jenis` from (`tbl_barang` join `tbl_jenis` on(`tbl_barang`.`id_jenis` = `tbl_jenis`.`id_jenis`)) ;

-- --------------------------------------------------------

--
-- Struktur untuk view `qw_barang_masuk`
--
DROP TABLE IF EXISTS `qw_barang_masuk`;

CREATE ALGORITHM=UNDEFINED DEFINER=`id20278017_erwin`@`%` SQL SECURITY DEFINER VIEW `qw_barang_masuk`  AS  select `tbl_barang_masuk`.`kd_barang_masuk` AS `kd_barang_masuk`,`tbl_barang_masuk`.`kd_supplier` AS `kd_supplier`,`tbl_barang_masuk`.`kd_barang` AS `kd_barang`,`tbl_barang_masuk`.`nama_barang` AS `nama_barang`,`tbl_barang_masuk`.`satuan` AS `satuan`,`tbl_barang_masuk`.`harga` AS `harga`,`tbl_barang_masuk`.`jumlah` AS `jumlah`,`tbl_barang_masuk`.`total_harga` AS `total_harga`,`tbl_barang_masuk`.`tanggal` AS `tanggal`,`tbl_supplier`.`nama_supplier` AS `nama_supplier` from (`tbl_barang_masuk` join `tbl_supplier` on(`tbl_barang_masuk`.`kd_supplier` = `tbl_supplier`.`kd_supplier`)) ;

-- --------------------------------------------------------

--
-- Struktur untuk view `qw_transaksi`
--
DROP TABLE IF EXISTS `qw_transaksi`;

CREATE ALGORITHM=UNDEFINED DEFINER=`id20278017_erwin`@`%` SQL SECURITY DEFINER VIEW `qw_transaksi`  AS  select `tbl_transaksi`.`no_transaksi` AS `no_transaksi`,`tbl_transaksi`.`tgl_transaksi` AS `tgl_transaksi`,`tbl_transaksi`.`waktu` AS `waktu`,`tbl_transaksi`.`id_kasir` AS `id_kasir`,`tbl_transaksi`.`subtotal` AS `subtotal`,`tbl_transaksi`.`diskon` AS `diskon`,`tbl_transaksi`.`total_akhir` AS `total_akhir`,`tbl_transaksi`.`bayar` AS `bayar`,`tbl_transaksi`.`kembalian` AS `kembalian`,`tbl_user`.`nama_user` AS `nama_kasir` from (`tbl_transaksi` join `tbl_user` on(`tbl_user`.`username` = `tbl_transaksi`.`id_kasir`)) ;

-- --------------------------------------------------------

--
-- Struktur untuk view `qw_user`
--
DROP TABLE IF EXISTS `qw_user`;

CREATE ALGORITHM=UNDEFINED DEFINER=`id20278017_erwin`@`%` SQL SECURITY DEFINER VIEW `qw_user`  AS  select `tbl_user`.`id_user` AS `id_user`,`tbl_user`.`nama_user` AS `nama_user`,`tbl_user`.`jk_user` AS `jk_user`,`tbl_user`.`alamat_user` AS `alamat_user`,`tbl_user`.`no_telp_user` AS `no_telp_user`,`tbl_user`.`username` AS `username`,`tbl_user`.`password` AS `password`,`tbl_user`.`type_user` AS `type_user`,`tbl_type_user`.`jabatan` AS `jabatan` from (`tbl_user` join `tbl_type_user` on(`tbl_user`.`type_user` = `tbl_type_user`.`type_user`)) ;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tbl_barang`
--
ALTER TABLE `tbl_barang`
  ADD PRIMARY KEY (`kd_barang`);

--
-- Indeks untuk tabel `tbl_barang_masuk`
--
ALTER TABLE `tbl_barang_masuk`
  ADD PRIMARY KEY (`kd_barang_masuk`);

--
-- Indeks untuk tabel `tbl_jenis`
--
ALTER TABLE `tbl_jenis`
  ADD PRIMARY KEY (`id_jenis`);

--
-- Indeks untuk tabel `tbl_keuangan`
--
ALTER TABLE `tbl_keuangan`
  ADD PRIMARY KEY (`id_keuangan`);

--
-- Indeks untuk tabel `tbl_supplier`
--
ALTER TABLE `tbl_supplier`
  ADD PRIMARY KEY (`kd_supplier`),
  ADD UNIQUE KEY `no_telp_supplier` (`no_telp_supplier`),
  ADD UNIQUE KEY `kd_supplier` (`kd_supplier`);

--
-- Indeks untuk tabel `tbl_transaksi`
--
ALTER TABLE `tbl_transaksi`
  ADD PRIMARY KEY (`no_transaksi`);

--
-- Indeks untuk tabel `tbl_transaksi_detail`
--
ALTER TABLE `tbl_transaksi_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tbl_type_user`
--
ALTER TABLE `tbl_type_user`
  ADD PRIMARY KEY (`type_user`);

--
-- Indeks untuk tabel `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id_user`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `no_telp_user` (`no_telp_user`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tbl_jenis`
--
ALTER TABLE `tbl_jenis`
  MODIFY `id_jenis` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `tbl_keuangan`
--
ALTER TABLE `tbl_keuangan`
  MODIFY `id_keuangan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

--
-- AUTO_INCREMENT untuk tabel `tbl_transaksi_detail`
--
ALTER TABLE `tbl_transaksi_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=225;

--
-- AUTO_INCREMENT untuk tabel `tbl_type_user`
--
ALTER TABLE `tbl_type_user`
  MODIFY `type_user` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
