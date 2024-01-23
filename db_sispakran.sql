-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 15 Bulan Mei 2019 pada 08.09
-- Versi server: 10.5.20-MariaDB - MariaDB Server
-- Versi PHP: 5.6.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+07:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sistem_pakar`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_gejala`
--

CREATE TABLE `tb_gejala` (
  `id` int(5) NOT NULL,
  `G001` tinyint(1) DEFAULT NULL,
  `G002` tinyint(1) DEFAULT NULL,
  `G003` tinyint(1) DEFAULT NULL,
  `G004` tinyint(1) DEFAULT NULL,
  `G005` tinyint(1) DEFAULT NULL,
  `G006` tinyint(1) DEFAULT NULL,
  `G007` tinyint(1) DEFAULT NULL,
  `G008` tinyint(1) DEFAULT NULL,
  `G009` tinyint(1) DEFAULT NULL,
  `G010` tinyint(1) DEFAULT NULL,
  `G011` tinyint(1) DEFAULT NULL,
  `G012` tinyint(1) DEFAULT NULL,
  `G013` tinyint(1) DEFAULT NULL,
  `G014` tinyint(1) DEFAULT NULL,
  `G015` tinyint(1) DEFAULT NULL,
  `G016` tinyint(1) DEFAULT NULL,
  `G017` tinyint(1) DEFAULT NULL,
  `G018` tinyint(4) DEFAULT NULL,
  `G019` tinyint(4) DEFAULT NULL,
  `G020` tinyint(4) DEFAULT NULL,
  `G021` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_gejala`
--

INSERT INTO `tb_gejala` (`id`, `G001`, `G002`, `G003`, `G004`, `G005`, `G006`, `G007`, `G008`, `G009`, `G010`, `G011`, `G012`, `G013`, `G014`, `G015`, `G016`, `G017`, `G018`, `G019`, `G020`, `G021`) VALUES
(1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1),
(2, 1, 1, 0, 1, 1, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1),
(3, 1, 1, 0, 0, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 0, 1, 1, 0, 1),
(4, 1, 0, 1, 0, 1, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_gejala_1`
--

CREATE TABLE `tb_gejala_1` (
  `id` int(5) NOT NULL,
  `kode` varchar(5) NOT NULL,
  `gejala` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_gejala_1`
--

INSERT INTO `tb_gejala_1` (`id`, `kode`, `gejala`) VALUES
(1, 'G001', 'Mual'),
(2, 'G002', 'Muntah'),
(3, 'G003', 'Sebah\r\n'),
(4, 'G004', 'Fases Berwana Hitam\r\n'),
(5, 'G005', 'Susah Tidur\r\n'),
(6, 'G006', 'Cegukan\r\n'),
(7, 'G007', 'Fekuensi BAB Berkurang\r\n'),
(8, 'G008', 'Buang Air Kecil Sedikit \r\n'),
(9, 'G009', 'Lemah\r\n'),
(10, 'G010', 'nafsu Makan Hilang\r\n'),
(11, 'G011', 'Fases Cair\r\n'),
(12, 'G012', 'Bab Lebih Dari 3x Sehari\r\n'),
(13, 'G013', 'Gatal Di Sekitar Anus\r\n'),
(14, 'G014', 'Penuunan Berat Badan Tanpa Sebab\r\n'),
(15, 'G015', 'Bau Mulut\r\n'),
(16, 'G016', 'Regurgitas\r\n'),
(17, 'G017', 'Sakit Perut Bagian atas atau dada\r\n'),
(18, 'G018', 'Perut Kembung\r\n'),
(19, 'G019', 'Fases Menggumpal\r\n'),
(20, 'G020', 'Fases Cair atau Kering\r\n'),
(20, 'G020', 'BAB Kurang Dari 3x Seminggu\r\n');
-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_penyakit`
--

CREATE TABLE `tb_penyakit` (
  `id` int(5) NOT NULL,
  `penyakit` varchar(50) DEFAULT NULL,
  `info` longtext NOT NULL,
  `solusi` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_penyakit`
--

INSERT INTO `tb_penyakit` (`id`, `penyakit`, `info`, `solusi`) VALUES
(1, '', ''),
(2, '', ''),
(3, '', ''),
(4, '', '');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tb_gejala`
--
ALTER TABLE `tb_gejala`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tb_gejala_1`
--
ALTER TABLE `tb_gejala_1`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tb_penyakit`
--
ALTER TABLE `tb_penyakit`
  ADD KEY `id` (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tb_gejala`
--
ALTER TABLE `tb_gejala`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `tb_gejala_1`
--
ALTER TABLE `tb_gejala_1`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `tb_penyakit`
--
ALTER TABLE `tb_penyakit`
  ADD CONSTRAINT `tb_penyakit_ibfk_1` FOREIGN KEY (`id`) REFERENCES `tb_gejala` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
