-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 05, 2022 at 04:44 PM
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
-- Database: `mydb12pbo`
--

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE `barang` (
  `kode_brg` varchar(3) NOT NULL,
  `nama_brg` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `barang`
--

INSERT INTO `barang` (`kode_brg`, `nama_brg`) VALUES
('001', 'Indomie'),
('1', 'pensil'),
('a2', 'topi');

-- --------------------------------------------------------

--
-- Table structure for table `cabang_bank`
--

CREATE TABLE `cabang_bank` (
  `kode_cabang` varchar(3) NOT NULL,
  `nama_cabang` varchar(30) NOT NULL,
  `alamat_cabang` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cabang_bank`
--

INSERT INTO `cabang_bank` (`kode_cabang`, `nama_cabang`, `alamat_cabang`) VALUES
('01', 'BNI', 'Sleman');

-- --------------------------------------------------------

--
-- Table structure for table `dosen`
--

CREATE TABLE `dosen` (
  `kode_dos` varchar(10) NOT NULL,
  `nama_dos` varchar(30) NOT NULL,
  `alamat_dos` varchar(30) NOT NULL,
  `no_tlp` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dosen`
--

INSERT INTO `dosen` (`kode_dos`, `nama_dos`, `alamat_dos`, `no_tlp`) VALUES
('C3', 'Endang', 'Yogyakarta', '082167845321'),
('D2', 'Sutarman', 'Mlati', '084536789765'),
('E3', 'Ali Romli', 'Sleman', '087892345678');

-- --------------------------------------------------------

--
-- Table structure for table `gaji`
--

CREATE TABLE `gaji` (
  `bulan` varchar(20) NOT NULL,
  `nip` varchar(20) NOT NULL,
  `masuk` int(5) NOT NULL,
  `sakit` int(5) NOT NULL,
  `izin` int(5) NOT NULL,
  `alfa` int(5) NOT NULL,
  `lembur` int(5) NOT NULL,
  `potongan` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `gaji`
--

INSERT INTO `gaji` (`bulan`, `nip`, `masuk`, `sakit`, `izin`, `alfa`, `lembur`, `potongan`) VALUES
('February', '5210411203', 12, 0, 0, 0, 6, 2500);

-- --------------------------------------------------------

--
-- Table structure for table `golongan`
--

CREATE TABLE `golongan` (
  `kode_golongan` varchar(3) NOT NULL,
  `nama_golongan` varchar(10) NOT NULL,
  `tunjangan_suami` int(10) NOT NULL,
  `tunjangan_anak` int(10) NOT NULL,
  `uang_makan` int(10) NOT NULL,
  `uang_lembur` int(10) NOT NULL,
  `askes` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `golongan`
--

INSERT INTO `golongan` (`kode_golongan`, `nama_golongan`, `tunjangan_suami`, `tunjangan_anak`, `uang_makan`, `uang_lembur`, `askes`) VALUES
('03', '3A', 3000, 1500, 350, 100, 5);

-- --------------------------------------------------------

--
-- Table structure for table `jabatan`
--

CREATE TABLE `jabatan` (
  `kode_jabatan` varchar(3) NOT NULL,
  `nama_jabatan` varchar(40) NOT NULL,
  `gapok` int(10) NOT NULL,
  `tunjangan_jabatan` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `jabatan`
--

INSERT INTO `jabatan` (`kode_jabatan`, `nama_jabatan`, `gapok`, `tunjangan_jabatan`) VALUES
('01', 'Pegawai', 30, 7500);

-- --------------------------------------------------------

--
-- Table structure for table `kuliah`
--

CREATE TABLE `kuliah` (
  `kode_mk` varchar(10) NOT NULL,
  `kode_dos` varchar(10) NOT NULL,
  `waktu` varchar(30) NOT NULL,
  `tempat` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kuliah`
--

INSERT INTO `kuliah` (`kode_mk`, `kode_dos`, `waktu`, `tempat`) VALUES
('001', 'E3', '14.40', 'E3.4'),
('002', 'D2', '12.50', 'D2.2'),
('003', 'C3', '16.30', 'LC3.2');

-- --------------------------------------------------------

--
-- Table structure for table `mata kuliah`
--

CREATE TABLE `mata kuliah` (
  `kode_mk` varchar(3) NOT NULL,
  `nama_mk` varchar(30) NOT NULL,
  `sks` varchar(3) NOT NULL,
  `semester` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mata kuliah`
--

INSERT INTO `mata kuliah` (`kode_mk`, `nama_mk`, `sks`, `semester`) VALUES
('001', 'Rekayasa Web', '2', '2'),
('002', 'Sistem Komputer', '3', '2'),
('003', 'Pbo Praktik', '2', '2');

-- --------------------------------------------------------

--
-- Table structure for table `nasabah`
--

CREATE TABLE `nasabah` (
  `id_nasabah` varchar(3) NOT NULL,
  `nama_nasabah` varchar(30) NOT NULL,
  `alamat_nasabah` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `nasabah`
--

INSERT INTO `nasabah` (`id_nasabah`, `nama_nasabah`, `alamat_nasabah`) VALUES
('123', 'Febriana FP', 'Bantul');

-- --------------------------------------------------------

--
-- Table structure for table `nota`
--

CREATE TABLE `nota` (
  `no_nota` varchar(3) NOT NULL,
  `tanggal` varchar(30) NOT NULL,
  `tempo` varchar(30) NOT NULL,
  `total` int(11) NOT NULL,
  `kode_sup` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `nota`
--

INSERT INTO `nota` (`no_nota`, `tanggal`, `tempo`, `total`, `kode_sup`) VALUES
('284', '2 juni 2022', '3 juli 2022', 8000, '3'),
('979', '4 mei 2021', '12 mei 2021', 28500, '123');

-- --------------------------------------------------------

--
-- Table structure for table `pegawai`
--

CREATE TABLE `pegawai` (
  `nip` varchar(20) NOT NULL,
  `nama_pegawai` varchar(40) NOT NULL,
  `kode_jabatan` varchar(3) NOT NULL,
  `kode_golongan` varchar(3) NOT NULL,
  `status` varchar(15) NOT NULL,
  `jumlah_anak` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pegawai`
--

INSERT INTO `pegawai` (`nip`, `nama_pegawai`, `kode_jabatan`, `kode_golongan`, `status`, `jumlah_anak`) VALUES
('5210411203', 'Febriyan', '03', '2A', 'Belum Menikah', 0);

-- --------------------------------------------------------

--
-- Table structure for table `rekening`
--

CREATE TABLE `rekening` (
  `no_rekening` varchar(3) NOT NULL,
  `pin` int(11) NOT NULL,
  `saldo` int(11) NOT NULL,
  `id_nasabah` varchar(3) NOT NULL,
  `kode_cabang` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `rekening`
--

INSERT INTO `rekening` (`no_rekening`, `pin`, `saldo`, `id_nasabah`, `kode_cabang`) VALUES
('521', 123, 5000000, '123', '01');

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `kode_sup` varchar(3) NOT NULL,
  `nama_sup` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`kode_sup`, `nama_sup`) VALUES
('123', 'febi'),
('3', 'febi');

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `no_transaksi` varchar(3) NOT NULL,
  `jenis_nasabah` varchar(30) NOT NULL,
  `tanggal` varchar(30) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `id_nasabah` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `transaksi_brg`
--

CREATE TABLE `transaksi_brg` (
  `no_nota` varchar(3) NOT NULL,
  `kode_brg` varchar(3) NOT NULL,
  `qty` int(3) NOT NULL,
  `harga` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transaksi_brg`
--

INSERT INTO `transaksi_brg` (`no_nota`, `kode_brg`, `qty`, `harga`) VALUES
('979', '1', 19, 1500),
('284', 'a2', 4, 2000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`kode_brg`);

--
-- Indexes for table `cabang_bank`
--
ALTER TABLE `cabang_bank`
  ADD PRIMARY KEY (`kode_cabang`);

--
-- Indexes for table `dosen`
--
ALTER TABLE `dosen`
  ADD PRIMARY KEY (`kode_dos`);

--
-- Indexes for table `kuliah`
--
ALTER TABLE `kuliah`
  ADD PRIMARY KEY (`kode_mk`);

--
-- Indexes for table `nasabah`
--
ALTER TABLE `nasabah`
  ADD PRIMARY KEY (`id_nasabah`);

--
-- Indexes for table `nota`
--
ALTER TABLE `nota`
  ADD PRIMARY KEY (`no_nota`);

--
-- Indexes for table `rekening`
--
ALTER TABLE `rekening`
  ADD PRIMARY KEY (`no_rekening`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`kode_sup`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`no_transaksi`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
