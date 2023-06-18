-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 29, 2023 at 07:16 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET FOREIGN_KEY_CHECKS=0;
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_sistem_input_data_magang`
--
CREATE DATABASE IF NOT EXISTS `db_sistem_input_data_magang` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `db_sistem_input_data_magang`;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(2, '2023_05_22_012508_create_mmagangs_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `mmagangs`
--

CREATE TABLE `mmagangs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `npm` varchar(255) NOT NULL,
  `nama_lengkap` varchar(255) NOT NULL,
  `jurusan` varchar(255) NOT NULL,
  `perguruan_tinggi` varchar(255) NOT NULL,
  `nomor_handphone` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `devisi` varchar(255) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mmagangs`
--

INSERT INTO `mmagangs` (`id`, `npm`, `nama_lengkap`, `jurusan`, `perguruan_tinggi`, `nomor_handphone`, `email`, `password`, `devisi`, `photo`, `created_at`, `updated_at`) VALUES
(6, '20312004', 'WHISNU MAHARAJA KUSUMA', 'SASTRA INGGRIS', 'UNIVERSITAS TEKNOKRAT INDONESIA', '0895606013998', 'whisnumk@gmail.com', '20312004', 'CONTENT WRITER', '-', '2023-05-25 17:53:00', '2023-05-25 17:53:00'),
(7, '20312005', 'PINGGALA ADI NUGROHO', 'SASTRA INGGRIS', 'UNIVERSITAS TEKNOKRAT INDONESIA', '087793812076', 'panggala_adi_nugroho@teknokrat.ac.id', '20312005', 'CONTENT WRITER', '-', '2023-05-25 17:54:42', '2023-05-25 17:54:42'),
(8, '20312006', 'WAYAN DITA MULIA ADITAMA', 'SISTEM INFORMASI', 'UNIVERSITAS TEKNOKRAT INDONESIA', '082297555683', 'wayan_dita_mulia_aditama@teknokrat.ac.id', '20312006', 'CONTENT WRITER', '-', '2023-05-25 17:55:36', '2023-05-25 17:55:36'),
(9, '20312007', 'MUHAMMAD ARIEF ARFANDI', 'MANAJEMEN', 'UNIVERSITAS TEKNOKRAT INDONESIA', '083872503851', 'Muhammadariefarfandi851@gmail.com', '20312007', 'CONTENT WRITER', '-', '2023-05-25 17:57:24', '2023-05-25 17:57:24'),
(10, '20312008', 'YESI MELIANA', 'INFORMATIKA', 'UNIVERSITAS TEKNOKRAT INDONESIA', '0888998899', 'admin', 'admin', 'CONTENT WRITER', '-', '2023-05-25 17:58:25', '2023-05-25 17:58:25'),
(11, '20312009', 'CHYNTIA ADELIA VALENTINA H', 'INFORMATIKA', 'UNIVERSITAS TEKNOKRAT INDONESIA', '0883384567', 'admin2', 'admin2', 'CONTENT WRITER', '-', '2023-05-25 17:59:27', '2023-05-25 17:59:27'),
(12, '20312010', 'RENDY RENALDI', 'MANAJEMEN', 'UNIVERSITAS TEKNOKRAT INDONESIA', '0878873443', 'renaldirendi51@gmail.com', '20312010', 'CONTENT WRITER', '-', '2023-05-25 18:00:20', '2023-05-25 18:00:20'),
(13, '20312012', 'BAGAS PRATAMA HILDANTO', 'INFORMATIKA', 'UNIVERSITAS TEKNOKRAT INDONESIA', '089502934925', 'pratamabagas875@gmail.com', '20312012', 'CONTENT CREATOR', '-', '2023-05-25 18:01:12', '2023-05-25 18:01:12'),
(14, '20312013', 'M QURROTA A\'YUN', 'INFORMATIKA', 'UNIVERSITAS TEKNOKRAT INDONESIA', '081373939511', 'm.qurrota07@gmail.com', '20312013', 'CONTENT CREATOR', '-', '2023-05-25 18:01:59', '2023-05-25 18:01:59'),
(19, '20312014', 'MISBAHUL HUDA', 'INFORMATIKA', 'UNIVERSITAS TEKNOKRAT INDONESIA', '0812121314', 'misbahulhuda1212@gmail.com', '20312014', 'CONTENT CREATOR', '-', '2023-05-25 18:05:17', '2023-05-25 18:05:17'),
(20, '20312015', 'DWI INDRIATI', 'INFORMATIKA', 'UNIVERSITAS TEKNOKRAT INDONESIA', '085369964657', 'indriatidwi27@gmail.com', '20312015', 'CONTENT CREATOR', '-', '2023-05-25 18:05:54', '2023-05-25 18:05:54'),
(21, '20312017', 'ALDI SAPUTRA', 'INFORMATIKA', 'UNIVERSITAS TEKNOKRAT INDONESIA', '085369164043', 'mr.aldisaputra@gmail.com', '20312017', 'SEO', '-', '2023-05-25 18:07:53', '2023-05-25 18:07:53'),
(22, '20312018', 'HAMDAN HABIBI', 'INFORMATIKA', 'UNIVERSITAS TEKNOKRAT INDONESIA', '085158559278', 'hamdan.habibi167@gmail.com', '20312018', 'SEO', '-', '2023-05-25 18:09:27', '2023-05-25 18:09:27'),
(23, '20312019', 'ABIM ARI BIMANTARA', 'INFORMATIKA', 'UNIVERSITAS TEKNOKRAT INDONESIA', '082279721710', 'abimarib@gmail.com', '20312019', 'SEO', '-', '2023-05-25 18:10:11', '2023-05-25 18:10:11'),
(24, '20312020', 'RAFLI INDRA VALISYA', 'INFORMATIKA', 'UNIVERSITAS TEKNOKRAT INDONESIA', '085155476769', 'rafliindra32@gmail.com', '20312020', 'SEO', '-', '2023-05-25 18:10:43', '2023-05-25 18:10:43'),
(25, '20312021', 'YOGA PRATAMA', 'INFORMATIKA', 'UNIVERSITAS TEKNOKRAT INDONESIA', '082297727509', 'yogapratama@teknokrat.ac.id', '20312021', 'SEO', '-', '2023-05-25 18:11:59', '2023-05-25 18:11:59'),
(26, '20312022', 'RIFAN ABIYOGA', 'INFORMATIKA', 'UNIVERSITAS TEKNOKRAT INDONESIA', '085783665510', 'rifanabiyoga391@gmail.com', '20312022', 'SEO', '-', '2023-05-25 18:12:31', '2023-05-25 18:12:31'),
(27, '20312023', 'HADID ABDILLA', 'INFORMATIKA', 'UNIVERSITAS TEKNOKRAT INDONESIA', '085766956621', 'hadidabdilla20@gmail.com', '20312023', 'SEO', '-', '2023-05-25 18:13:09', '2023-05-25 18:13:09'),
(28, '20312024', 'MUHAMMAD AQIL ALHAFIZH', 'INFORMATIKA', 'UNIVERSITAS TEKNOKRAT INDONESIA', '081278412469', 'muhammad_aqil_alhafizh@teknokrat.ac.id', '20312024', 'SEO', '-', '2023-05-25 18:14:44', '2023-05-25 18:14:44'),
(29, '20312025', 'USAMAH', 'SISTEM INFORMASI', 'UNIVERSITAS TEKNOKRAT INDONESIA', '085769789794', 'usamah@teknokrat.ac.id', '20312025', 'SEO', '-', '2023-05-25 18:15:26', '2023-05-25 18:15:26'),
(30, '20312026', 'FADHIL FARIZI MURSYIDAN', 'AKUNTANSI', 'UNIVERSITAS LAMPUNG', '081278451050', 'farieziimursyidan@gmail.com', '20312026', 'SEO', '-', '2023-05-25 18:16:00', '2023-05-25 18:16:00'),
(31, '20312028', 'NAUFAL RIZQI RAMADHAN', 'INFORMATIKA', 'UNIVERSITAS TEKNOKRAT INDONESIA', '085609277483', 'nauflrmdhan1234@gmail.com', '20312028', 'SOCIAL MEDIA', '-', '2023-05-25 18:20:03', '2023-05-25 18:20:03'),
(32, '20312029', 'GUGUN WAHYUDI', 'INFORMATIKA', 'UNIVERSITAS TEKNOKRAT INDONESIA', '08877249258', 'gugunwahyudi0813@gmail.com', '20312029', 'SOCIAL MEDIA', '-', '2023-05-25 18:20:31', '2023-05-25 18:20:31'),
(33, '20312031', 'FIRSTITO RAHMAN ABDILLAH', 'INFORMATIKA', 'UNIVERSITAS TEKNOKRAT INDONESIA', '0831313232', 'firstito17@gmail.com', '20312031', 'DESIGN GRAFIS', '-', '2023-05-25 18:22:13', '2023-05-25 18:22:13'),
(34, '20312032', 'RANGGA SETIAJI', 'INFORMATIKA', 'UNIVERSITAS TEKNOKRAT INDONESIA', '89630645054', 'grafikarangga@.gmail.com', '20312032', 'DESIGN GRAFIS', '-', '2023-05-25 18:23:07', '2023-05-25 18:23:07'),
(35, '20312033', 'YOGA DWI PRARTOMO', 'INFORMATIKA', 'UNIVERSITAS TEKNOKRAT INDONESIA', '895609931687', 'yudaaja1311@gmail.com', '895609931687', 'DESIGN GRAFIS', '-', '2023-05-25 18:23:25', '2023-05-25 18:23:25'),
(43, '20312034', 'HANA WAHYUDA', 'INFORMATIKA', 'UNIVERSITAS TEKNOKRAT INDONESIA', '0834353637', 'satriow550@gmail.com', '895609931687', 'DESIGN GRAFIS', '-', '2023-05-25 18:24:12', '2023-05-25 18:24:12'),
(44, '20312035', 'ARMELIA LUVITA SARI', 'INFORMATIKA', 'UNIVERSITAS TEKNOKRAT INDONESIA', '0835363738', 'armelialuvita@gmail.com', '0835363738', 'DESIGN GRAFIS', '-', '2023-05-25 18:25:32', '2023-05-25 18:25:32'),
(45, '20312036', 'RESTIKA WAYA', 'INFORMATIKA', 'UNIVERSITAS TEKNOKRAT INDONESIA', '0836373839', 'restika+waya@teknokrat.ac.id', '0836373839', 'DESIGN GRAFIS', '-', '2023-05-25 18:26:21', '2023-05-25 18:26:21'),
(46, '20312037', 'HERLIN AGUSTINA', 'INFORMATIKA', 'UNIVERSITAS TEKNOKRAT INDONESIA', '0837383940', 'herlinagustina108@gmail.com', '0837383940', 'DESIGN GRAFIS', '-', '2023-05-25 18:26:57', '2023-05-25 18:26:57'),
(47, '20312039', 'ANGGITA ANGGRAENI', 'MANAJEMEN', 'UNIVERSITAS TEKNOKRAT INDONESIA', '85768240350', 'anggitaang950@gmail.com', '85768240350', 'BISNIS', '-', '2023-05-25 19:31:33', '2023-05-25 19:31:33'),
(48, '20312040', 'MUHAMMAD FIKRI', 'INFORMATIKA', 'UNIVERSITAS TEKNOKRAT INDONESIA', '89628979036', 'decodefikri@gmail.com', '89628979036', 'SOSMED BING', '-', '2023-05-25 19:32:05', '2023-05-25 19:32:05'),
(49, '20312043', 'KURNIA K', 'SISTEM INFORMASI', 'UNIVERSITAS MITRA INDONESIA', '082183593481', 'sandiku418@gmail.com', '082183593481', 'DESIGN GRAFIS', '-', '2023-05-25 19:32:34', '2023-05-25 19:32:34'),
(50, '20312045', 'Adinda Yogi Fatmawati', 'Sistem Informasi', 'UNIVERSITAS TEKNOKRAT INDONESIA', '87748684255', 'safitri@teknokrat.ac.id', '87748684255', 'SEO', '-', '2023-05-25 19:33:27', '2023-05-25 19:33:27'),
(51, '20312046', 'Safitri', 'Sistem Informasi', 'UNIVERSITAS TEKNOKRAT INDONESIA', '82278016892', 'adindayogi26@gmail.com', '82278016892', 'SEO', '-', '2023-05-25 20:20:24', '2023-05-25 20:20:24'),
(52, '20312047', 'Chindikia fattana', 'Sistem Informasi', 'UNIVERSITAS TEKNOKRAT INDONESIA', '8971891615', 'Chindikia_fattana@teknokrat.ac.id', '8971891615', 'KONTEN KREATOR', '-', '2023-05-25 20:20:55', '2023-05-25 20:20:55'),
(53, '2031202249', 'Ayu Damayanti', 'Sistem Informasi', 'UNIVERSITAS TEKNOKRAT INDONESIA', '85768987403', 'ayu_damayanti@teknokrat.ac.id', '85768987403', 'SOSMED', '-', '2023-05-25 20:21:27', '2023-05-25 20:21:27'),
(54, '2031050', 'Yeni Novita Sari', 'Sistem Informasi', 'UNIVERSITAS TEKNOKRAT INDONESIA', '82282045155', 'yeni_novita_sari@teknokrat.ac.id', '82282045155', 'SOSMED', '-', '2023-05-25 20:22:32', '2023-05-25 20:22:32'),
(55, '20312051', 'Marta Sasmita', 'Informatika', 'UNIVERSITAS TEKNOKRAT INDONESIA', '82179138482', 'marta_sasmita@teknokrat.ac.id', '82179138482', 'DESIGN GRAFIS', '-', '2023-05-25 20:23:40', '2023-05-25 20:23:40'),
(56, '20312053', 'Rifaldi Pratama', 'Sistem Informasi', 'UNIVERSITAS TEKNOKRAT INDONESIA', '0852575853', 'rifaldipratama2403@gmail.com', '0852575853', 'CONTEN WRITER', '-', '2023-05-25 20:24:25', '2023-05-25 20:24:25');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mmagangs`
--
ALTER TABLE `mmagangs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `mmagangs_npm_unique` (`npm`),
  ADD UNIQUE KEY `mmagangs_nomor_handphone_unique` (`nomor_handphone`),
  ADD UNIQUE KEY `mmagangs_email_unique` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `mmagangs`
--
ALTER TABLE `mmagangs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
SET FOREIGN_KEY_CHECKS=1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
