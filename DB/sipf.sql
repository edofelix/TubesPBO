-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 17 Bulan Mei 2019 pada 07.05
-- Versi server: 10.1.38-MariaDB
-- Versi PHP: 7.3.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sipf`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `asprak`
--

CREATE TABLE `asprak` (
  `nim_asprak` varchar(10) NOT NULL,
  `nama_asprak` varchar(30) NOT NULL,
  `kd_matkul` varchar(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `asprak`
--

INSERT INTO `asprak` (`nim_asprak`, `nama_asprak`, `kd_matkul`) VALUES
('10116000', 'Serena', 'M1F'),
('10116001', 'Irene', 'M2F'),
('10116002', 'Inveel', 'M3F');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jadwal`
--

CREATE TABLE `jadwal` (
  `kd_jadwal` varchar(5) NOT NULL,
  `hari` varchar(6) NOT NULL,
  `waktu` varchar(11) NOT NULL,
  `tpb` varchar(6) NOT NULL,
  `kd_lab` char(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `jadwal`
--

INSERT INTO `jadwal` (`kd_jadwal`, `hari`, `waktu`, `tpb`, `kd_lab`) VALUES
('SNT1', 'Senin', '07.00-09.00', 'TPB 1', 'LF1'),
('SNT2', 'Senin', '09.30-11.30', 'TPB 2', 'LF1');

-- --------------------------------------------------------

--
-- Struktur dari tabel `lab`
--

CREATE TABLE `lab` (
  `kd_lab` char(3) NOT NULL,
  `nama_ruang` varchar(35) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `lab`
--

INSERT INTO `lab` (`kd_lab`, `nama_ruang`) VALUES
('LF1', 'Ruang Praktikum Fisika A'),
('LF2', 'Ruang Praktikum Fisika B');

-- --------------------------------------------------------

--
-- Struktur dari tabel `matkul`
--

CREATE TABLE `matkul` (
  `kd_matkul` varchar(4) NOT NULL,
  `modul` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `matkul`
--

INSERT INTO `matkul` (`kd_matkul`, `modul`) VALUES
('M1F', '1.Hukum Newton'),
('M2F', '2.Viskositas'),
('M3F', '3.Hukum Coulomb'),
('M4F', '4.XXXXXX');

-- --------------------------------------------------------

--
-- Struktur dari tabel `mhs`
--

CREATE TABLE `mhs` (
  `nim_mhs` varchar(9) NOT NULL,
  `nama_mhs` varchar(30) NOT NULL,
  `tpb` varchar(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `mhs`
--

INSERT INTO `mhs` (`nim_mhs`, `nama_mhs`, `tpb`) VALUES
('10117000', 'Zero', 'TPB 1'),
('10117001', 'Pratama', 'TPB 1'),
('10117002', 'Dwi', 'TPB 1'),
('10117003', 'Trijaya', 'TPB 1'),
('10117004', 'Chaino', 'TPB 1'),
('10117005', 'Penta', 'TPB 2'),
('10117006', 'Sindark', 'TPB 2'),
('10117007', 'Zera', 'TPB 2'),
('10117008', 'Feriz', 'TPB 2'),
('10117009', 'Arewzo', 'TPB 2');

-- --------------------------------------------------------

--
-- Struktur dari tabel `mhs_nilai`
--

CREATE TABLE `mhs_nilai` (
  `nim_mhs` varchar(9) NOT NULL,
  `kd_matkul` varchar(4) NOT NULL,
  `nilai` int(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `mhs_nilai`
--

INSERT INTO `mhs_nilai` (`nim_mhs`, `kd_matkul`, `nilai`) VALUES
('10117000', 'M1F', 100),
('10117000', 'M2F', NULL),
('10117000', 'M3F', NULL),
('10117001', 'M1F', NULL),
('10117001', 'M2F', NULL),
('10117001', 'M3F', NULL),
('10117002', 'M1F', NULL),
('10117002', 'M2F', NULL),
('10117002', 'M3F', NULL),
('10117003', 'M1F', NULL),
('10117003', 'M2F', NULL),
('10117003', 'M3F', NULL),
('10117004', 'M1F', NULL),
('10117004', 'M2F', NULL),
('10117004', 'M3F', NULL),
('10117005', 'M1F', NULL),
('10117005', 'M2F', NULL),
('10117005', 'M3F', NULL),
('10117006', 'M1F', NULL),
('10117006', 'M2F', NULL),
('10117006', 'M3F', NULL),
('10117007', 'M1F', NULL),
('10117007', 'M2F', NULL),
('10117007', 'M3F', NULL),
('10117008', 'M1F', NULL),
('10117008', 'M2F', NULL),
('10117008', 'M3F', NULL),
('10117009', 'M1F', NULL),
('10117009', 'M2F', NULL),
('10117009', 'M3F', NULL),
('10117000', 'M4F', NULL),
('10117001', 'M4F', NULL),
('10117002', 'M4F', NULL),
('10117003', 'M4F', NULL),
('10117004', 'M4F', NULL),
('10117005', 'M4F', NULL),
('10117006', 'M4F', NULL),
('10117007', 'M4F', NULL),
('10117008', 'M4F', NULL),
('10117009', 'M4F', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `relasi`
--

CREATE TABLE `relasi` (
  `kd_jadwal` varchar(5) NOT NULL,
  `nim_asprak` varchar(10) NOT NULL,
  `nim_mhs` varchar(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `relasi`
--

INSERT INTO `relasi` (`kd_jadwal`, `nim_asprak`, `nim_mhs`) VALUES
('SNT1', '10116000', '10117000'),
('SNT2', '10116000', '10117000'),
('SNT1', '10116001', '10117000'),
('SNT2', '10116001', '10117000'),
('SNT1', '10116002', '10117000'),
('SNT2', '10116002', '10117000'),
('SNT1', '10116000', '10117001'),
('SNT2', '10116000', '10117001'),
('SNT1', '10116001', '10117001'),
('SNT2', '10116001', '10117001'),
('SNT1', '10116002', '10117001'),
('SNT2', '10116002', '10117001'),
('SNT1', '10116000', '10117002'),
('SNT2', '10116000', '10117002'),
('SNT1', '10116001', '10117002'),
('SNT2', '10116001', '10117002'),
('SNT1', '10116002', '10117002'),
('SNT2', '10116002', '10117002'),
('SNT1', '10116000', '10117003'),
('SNT2', '10116000', '10117003'),
('SNT1', '10116001', '10117003'),
('SNT2', '10116001', '10117003'),
('SNT1', '10116002', '10117003'),
('SNT2', '10116002', '10117003'),
('SNT1', '10116000', '10117004'),
('SNT2', '10116000', '10117004'),
('SNT1', '10116001', '10117004'),
('SNT2', '10116001', '10117004'),
('SNT1', '10116002', '10117004'),
('SNT2', '10116002', '10117004'),
('SNT1', '10116000', '10117005'),
('SNT2', '10116000', '10117005'),
('SNT1', '10116001', '10117005'),
('SNT2', '10116001', '10117005'),
('SNT1', '10116002', '10117005'),
('SNT2', '10116002', '10117005'),
('SNT1', '10116000', '10117006'),
('SNT2', '10116000', '10117006'),
('SNT1', '10116001', '10117006'),
('SNT2', '10116001', '10117006'),
('SNT1', '10116002', '10117006'),
('SNT2', '10116002', '10117006'),
('SNT1', '10116000', '10117007'),
('SNT2', '10116000', '10117007'),
('SNT1', '10116001', '10117007'),
('SNT2', '10116001', '10117007'),
('SNT1', '10116002', '10117007'),
('SNT2', '10116002', '10117007'),
('SNT1', '10116000', '10117008'),
('SNT2', '10116000', '10117008'),
('SNT1', '10116001', '10117008'),
('SNT2', '10116001', '10117008'),
('SNT1', '10116002', '10117008'),
('SNT2', '10116002', '10117008'),
('SNT1', '10116000', '10117009'),
('SNT2', '10116000', '10117009'),
('SNT1', '10116001', '10117009'),
('SNT2', '10116001', '10117009'),
('SNT1', '10116002', '10117009'),
('SNT2', '10116002', '10117009');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `asprak`
--
ALTER TABLE `asprak`
  ADD PRIMARY KEY (`nim_asprak`),
  ADD KEY `kd_matkul` (`kd_matkul`);

--
-- Indeks untuk tabel `jadwal`
--
ALTER TABLE `jadwal`
  ADD PRIMARY KEY (`kd_jadwal`),
  ADD KEY `kd_lab` (`kd_lab`);

--
-- Indeks untuk tabel `lab`
--
ALTER TABLE `lab`
  ADD PRIMARY KEY (`kd_lab`);

--
-- Indeks untuk tabel `matkul`
--
ALTER TABLE `matkul`
  ADD PRIMARY KEY (`kd_matkul`);

--
-- Indeks untuk tabel `mhs`
--
ALTER TABLE `mhs`
  ADD PRIMARY KEY (`nim_mhs`);

--
-- Indeks untuk tabel `mhs_nilai`
--
ALTER TABLE `mhs_nilai`
  ADD KEY `kd_matkul` (`kd_matkul`),
  ADD KEY `nim_mhs` (`nim_mhs`);

--
-- Indeks untuk tabel `relasi`
--
ALTER TABLE `relasi`
  ADD KEY `nim_asprak` (`nim_asprak`),
  ADD KEY `nim_mhs` (`nim_mhs`),
  ADD KEY `kd_jadwal` (`kd_jadwal`);

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `asprak`
--
ALTER TABLE `asprak`
  ADD CONSTRAINT `asprak_ibfk_1` FOREIGN KEY (`kd_matkul`) REFERENCES `matkul` (`kd_matkul`);

--
-- Ketidakleluasaan untuk tabel `jadwal`
--
ALTER TABLE `jadwal`
  ADD CONSTRAINT `jadwal_ibfk_1` FOREIGN KEY (`kd_lab`) REFERENCES `lab` (`kd_lab`),
  ADD CONSTRAINT `kd_lab` FOREIGN KEY (`kd_lab`) REFERENCES `lab` (`kd_lab`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `mhs_nilai`
--
ALTER TABLE `mhs_nilai`
  ADD CONSTRAINT `mhs_nilai_ibfk_1` FOREIGN KEY (`nim_mhs`) REFERENCES `mhs` (`nim_mhs`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `mhs_nilai_ibfk_2` FOREIGN KEY (`kd_matkul`) REFERENCES `matkul` (`kd_matkul`),
  ADD CONSTRAINT `mhs_nilai_ibfk_3` FOREIGN KEY (`nim_mhs`) REFERENCES `mhs` (`nim_mhs`),
  ADD CONSTRAINT `nim_mhs` FOREIGN KEY (`nim_mhs`) REFERENCES `mhs` (`nim_mhs`);

--
-- Ketidakleluasaan untuk tabel `relasi`
--
ALTER TABLE `relasi`
  ADD CONSTRAINT `relasi_ibfk_1` FOREIGN KEY (`nim_asprak`) REFERENCES `asprak` (`nim_asprak`),
  ADD CONSTRAINT `relasi_ibfk_2` FOREIGN KEY (`nim_mhs`) REFERENCES `mhs` (`nim_mhs`),
  ADD CONSTRAINT `relasi_ibfk_3` FOREIGN KEY (`kd_jadwal`) REFERENCES `jadwal` (`kd_jadwal`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
