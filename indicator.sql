-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 04 Jun 2018 pada 11.02
-- Versi Server: 10.1.22-MariaDB
-- PHP Version: 7.1.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `indicator`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `phone`
--

CREATE TABLE `phone` (
  `id` int(11) NOT NULL,
  `phone_number` int(12) NOT NULL,
  `provider_id` int(11) NOT NULL,
  `expired_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `nik` int(11) NOT NULL,
  `nkk` int(11) NOT NULL,
  `saldo` int(12) NOT NULL,
  `status` enum('0','1') NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `phone`
--

INSERT INTO `phone` (`id`, `phone_number`, `provider_id`, `expired_date`, `nik`, `nkk`, `saldo`, `status`, `user_id`) VALUES
(1, 123123, 3, '2018-06-04 08:45:38', 1231, 123, 4343123, '0', 0),
(2, 2147483647, 3, '2018-06-04 08:46:10', 1231, 3213, 50000, '0', 0),
(3, 414, 2, '2018-06-04 09:00:01', 93029, 1293, 90000, '0', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `phone`
--
ALTER TABLE `phone`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `phone`
--
ALTER TABLE `phone`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
