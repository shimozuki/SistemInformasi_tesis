-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 04, 2025 at 02:05 AM
-- Server version: 8.0.30
-- PHP Version: 7.4.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ssid`
--

-- --------------------------------------------------------

--
-- Table structure for table `auths`
--

CREATE TABLE `auths` (
  `id_auth` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `hak_akses` enum('mahasiswa','dosen','prodi','lppm') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `active_status` tinyint(1) NOT NULL DEFAULT '0',
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'avatar.png',
  `dark_mode` tinyint(1) NOT NULL DEFAULT '0',
  `messenger_color` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id` bigint NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `auths`
--

INSERT INTO `auths` (`id_auth`, `username`, `password`, `hak_akses`, `created_at`, `updated_at`, `active_status`, `avatar`, `dark_mode`, `messenger_color`, `name`, `id`, `email`) VALUES
('A010121WRI', '1111111111', '$2y$12$iH7ujFhymRuB5TMEjminmukwI1FmCBq37QlM8M8jxpheVNUc8MVkm', 'lppm', '2021-01-01 04:25:10', '2025-03-03 06:06:11', 0, 'avatar.png', 0, NULL, '1111111111', 1, 'iam.asm89@gmail.com'),
('A131120jPo', 'm.agre', '$2y$12$iH7ujFhymRuB5TMEjminmukwI1FmCBq37QlM8M8jxpheVNUc8MVkm', 'lppm', '2020-11-13 02:18:40', '2020-12-27 06:57:47', 0, 'avatar.png', 0, NULL, 'm.agre', 2, 'kylekatarnls@gmail.com'),
('A3012201kG', 'A2.1700076', '$2y$10$R1tcasCqu1w5acEnUmF2PuPveKIWvOMQsBpLvv1RpbUY02X65Ob.W', 'mahasiswa', '2020-12-30 04:03:22', NULL, 0, 'avatar.png', 0, NULL, 'A2.1700076', 3, 'j.boggiano@seld.be'),
('A301220cxJ', '0428068801', '$2y$12$iH7ujFhymRuB5TMEjminmukwI1FmCBq37QlM8M8jxpheVNUc8MVkm', 'dosen', '2020-12-30 04:09:34', NULL, 0, 'avatar.png', 0, NULL, '0428068801', 4, 'naderman@naderman.de'),
('A301220dTT', '0017067902', '$2y$12$iH7ujFhymRuB5TMEjminmukwI1FmCBq37QlM8M8jxpheVNUc8MVkm', 'dosen', '2020-12-30 04:10:54', NULL, 0, 'avatar.png', 0, NULL, '0017067902', 5, 'j.boggiano@seld.be'),
('A301220ETf', 'A2.1700069', '$2y$10$/EgoZh1UX4zumfv1xxwvUeb1huKNtrL4Biyjtg.yrwvvFmhPLD/De', 'mahasiswa', '2020-12-30 09:32:45', '2021-01-01 04:01:40', 0, 'avatar.png', 0, NULL, 'A2.1700069', 6, 'rob.bast@gmail.com'),
('A301220kBz', 'A1.1800004', '$2y$12$iH7ujFhymRuB5TMEjminmukwI1FmCBq37QlM8M8jxpheVNUc8MVkm', 'mahasiswa', '2020-12-30 04:04:31', NULL, 0, 'avatar.png', 0, NULL, 'A1.1800004', 7, 'guilhermeblanco@gmail.com'),
('A301220KHU', '0430048901', '$2y$12$iH7ujFhymRuB5TMEjminmukwI1FmCBq37QlM8M8jxpheVNUc8MVkm', 'prodi', '2020-12-30 04:17:40', NULL, 0, 'avatar.png', 0, NULL, '0430048901', 8, 'roman@code-factory.org'),
('A301220OcQ', '0430067701', '$2y$12$iH7ujFhymRuB5TMEjminmukwI1FmCBq37QlM8M8jxpheVNUc8MVkm', 'dosen', '2020-12-30 04:13:33', NULL, 0, 'avatar.png', 0, NULL, '0430067701', 9, 'kontakt@beberlei.de'),
('A301220OLP', 'A3.1700033', '$2y$10$Hq4/lwi2qCnFNKBgrxKjBuwSR9wVeibeYr/u6bHRkALo9pPF2sU5m', 'mahasiswa', '2020-12-30 04:06:20', NULL, 0, 'avatar.png', 0, NULL, 'A3.1700033', 10, 'jonwage@gmail.com'),
('A301220Trd', '0428058704', '$2y$10$GOgoqZ1UFJLyy9ZwcsXvvO8kHQEEST4Oc/w9Zf9rrzI8bk.Jbxo/K', 'prodi', '2020-12-30 04:16:26', NULL, 0, 'avatar.png', 0, NULL, '0428058704', 11, 'schmittjoh@gmail.com'),
('A301220TVF', 'A2.1700135', '$2y$12$iH7ujFhymRuB5TMEjminmukwI1FmCBq37QlM8M8jxpheVNUc8MVkm', 'mahasiswa', '2020-12-30 09:37:14', NULL, 0, 'avatar.png', 0, NULL, 'A2.1700135', 12, 'chris@ctankersley.com'),
('A301220VzR', '0430048901', '$2y$12$iH7ujFhymRuB5TMEjminmukwI1FmCBq37QlM8M8jxpheVNUc8MVkm', 'prodi', '2020-12-30 04:15:11', NULL, 0, 'avatar.png', 0, NULL, '0430048901', 13, 'mtdowling@gmail.com'),
('A170225zjn', '1810530247', '$2y$10$v2Q/O513uv6No8xTSFejNuCx/ymWYUnRn50h1kRSrEfVczq1qci7.', 'mahasiswa', '2025-02-17 12:43:12', NULL, 0, 'avatar.png', 0, NULL, '1810530247', 14, 'fideloper@gmail.com'),
('A170225MS1', '1910530247', '$2y$10$BepLBG7V0HcMMlNDjYhx8.RCKh4x5.KJ5xiKMJAKa0W5odFtYNJx.', 'mahasiswa', '2025-02-17 13:14:00', NULL, 0, 'avatar.png', 0, NULL, '1910530247', 15, 'mtdowling@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `ch_favorites`
--

CREATE TABLE `ch_favorites` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint NOT NULL,
  `favorite_id` bigint NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `ch_messages`
--

CREATE TABLE `ch_messages` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `from_id` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `to_id` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` varchar(5000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attachment` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seen` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `ch_messages`
--

INSERT INTO `ch_messages` (`id`, `from_id`, `to_id`, `body`, `attachment`, `seen`, `created_at`, `updated_at`) VALUES
('3c24180e-000c-45a6-84ea-d2a211e37d8b', 'A010121WRI', 'A301220kBz', 'oi valo ke ?', NULL, 0, '2025-03-03 04:57:36', '2025-03-03 04:57:36'),
('5ba08256-259c-4278-83bc-a6e9c48953a1', 'A301220kBz', 'A010121WRI', 'tes', NULL, 0, '2025-03-03 05:30:44', '2025-03-03 05:30:44'),
('76a949e5-e8f6-4adc-afb2-e574df3a7f54', '7', '1', 'tes', NULL, 0, '2025-03-03 06:06:05', '2025-03-03 06:06:05'),
('d8156e8b-5b1d-45cd-8407-d7de9795c748', 'A301220kBz', 'A010121WRI', 'gass', NULL, 0, '2025-03-03 05:00:51', '2025-03-03 05:00:51'),
('f6f3a0a3-6d1a-4498-afdb-e5ab4100bc90', '1', '7', 'ok', NULL, 1, '2025-03-03 05:51:17', '2025-03-03 06:05:53');

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `id_prodi` bigint UNSIGNED NOT NULL,
  `id_auth` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nidn` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_hp` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `jurusan` enum('Teknik Informatika','Sistem Informasi','Manajemen Informatika','') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`id_prodi`, `id_auth`, `nidn`, `nama`, `no_hp`, `email`, `alamat`, `jurusan`, `created_at`, `updated_at`) VALUES
(22, 'A301220VzR', '0430048901', 'Fathoni Mahardika, M.T', '0932849237', 'fathoni@gmail.com', 'Sumedang', 'Sistem Informasi', '2020-12-30 04:15:10', NULL),
(23, 'A301220Trd', '0428058704', 'Fidi Supriadi, M.T.', '09382432747', 'fidi@gmail.com', 'Sumedang', 'Teknik Informatika', '2020-12-30 04:16:26', NULL),
(24, 'A301220KHU', '0430048901', 'Fathoni Mahardika, M.T', '083290838', 'fathoni@gmail.com', 'Sumedang', 'Manajemen Informatika', '2020-12-30 04:17:40', NULL);

--
-- Triggers `departments`
--
DELIMITER $$
CREATE TRIGGER `delete_auths` AFTER DELETE ON `departments` FOR EACH ROW DELETE FROM auths WHERE id_auth = OLD.id_auth
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `grades`
--

CREATE TABLE `grades` (
  `id_nilai` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nim` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nilai_pengajuan` double DEFAULT NULL,
  `nilai_bimbingan` double DEFAULT NULL,
  `nilai_sidang` double DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `grades`
--

INSERT INTO `grades` (`id_nilai`, `nim`, `nilai_pengajuan`, `nilai_bimbingan`, `nilai_sidang`, `created_at`, `updated_at`) VALUES
('NI3012209o', 'A2.1700076', 100, 90, 90, '2020-12-30 04:23:04', '2020-12-30 04:51:03');

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE `groups` (
  `id_grup` bigint NOT NULL,
  `nama_grup` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tahun` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`id_grup`, `nama_grup`, `tahun`, `created_at`, `updated_at`) VALUES
(1, 'Bimbingan Pak Bambang', '2025', '2025-02-14 06:50:40', '2025-02-14 06:50:43');

-- --------------------------------------------------------

--
-- Table structure for table `guidances`
--

CREATE TABLE `guidances` (
  `id_bimbingan` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nim` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_bab` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_bab` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `keterangan` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tanggal` date NOT NULL,
  `status_1` enum('proses','terima','revisi') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status_2` enum('proses','terima','revisi') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `institutions`
--

CREATE TABLE `institutions` (
  `id_lppm` bigint UNSIGNED NOT NULL,
  `id_auth` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nidn` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_hp` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `alamat` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `institutions`
--

INSERT INTO `institutions` (`id_lppm`, `id_auth`, `nidn`, `nama`, `no_hp`, `email`, `alamat`, `created_at`, `updated_at`) VALUES
(7, 'A131120jPo', '0420108603', 'M Agreindra H, M.T', '082120003945', 'agree@stmik-sumedang.ac.id', 'Sumedang', '2020-11-13 02:18:40', '2020-12-30 03:56:03'),
(9, 'A010121WRI', '1111111111', 'Admin', '082120003945', 'admin_sisds@gmail.com', 'Sumedang', '2021-01-01 04:25:10', NULL);

--
-- Triggers `institutions`
--
DELIMITER $$
CREATE TRIGGER `delete_auths2` AFTER DELETE ON `institutions` FOR EACH ROW DELETE FROM auths WHERE id_auth = OLD.id_auth
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `lecturers`
--

CREATE TABLE `lecturers` (
  `nidn` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_auth` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_grup` int DEFAULT NULL,
  `id_jadwal` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nama` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_hp` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `pembimbing` enum('Ya','Tidak') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `penguji` enum('Ya','Tidak') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `lecturers`
--

INSERT INTO `lecturers` (`nidn`, `id_auth`, `id_grup`, `id_jadwal`, `nama`, `alamat`, `no_hp`, `email`, `pembimbing`, `penguji`, `created_at`, `updated_at`) VALUES
('0017067902', 'A301220dTT', 24, 'JL301220td', 'Dody Herdiana, S.T., M.Kom.', 'Sumedang', '0992873827', 'dody@gmail.com', 'Ya', 'Ya', '2020-12-30 04:10:54', '2020-12-30 04:44:53'),
('0428068801', 'A301220cxJ', 1, NULL, 'Irfan Fadil, M.Kom.', 'Sumedang', '0938294836', 'irfanfadil@gmail.com', 'Tidak', 'Tidak', '2020-12-30 04:09:34', '2025-02-14 05:51:25'),
('0430067701', 'A301220OcQ', 24, 'JL301220td', 'Dwi Yuniarto,S.Sos.,M.Kom.', 'Sumedang', '09893284723', 'dwi@gmail.com', 'Ya', 'Ya', '2020-12-30 04:13:32', '2020-12-30 04:45:04');

--
-- Triggers `lecturers`
--
DELIMITER $$
CREATE TRIGGER `delete_auths4` AFTER DELETE ON `lecturers` FOR EACH ROW DELETE FROM auths WHERE id_auth = OLD.id_auth
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_10_26_045908_create_students_table', 2),
(5, '2020_10_29_032107_create_groups_table', 3),
(6, '2020_10_29_034251_create_auths_table', 4),
(7, '2020_11_02_014520_create_auths_table', 5),
(8, '2020_11_02_022220_create_departments_table', 6),
(9, '2020_11_03_042121_create_institutions_table', 7),
(10, '2020_11_04_071354_create_students_table', 8),
(11, '2020_11_06_024223_create_lecturers_table', 9),
(12, '2020_11_23_142514_create_submissions_proposal_table', 10),
(13, '2020_11_29_154407_create_guidances_table', 11),
(14, '2020_12_03_085222_create_grades_table', 12),
(15, '2020_12_06_151933_create_revisons_table', 13),
(16, '2020_12_20_111449_create_pascasidang_table', 14),
(17, '2020_12_25_141228_create_pascasidang_table', 15),
(18, '2020_12_29_083408_create_program_study_table', 16);

-- --------------------------------------------------------

--
-- Table structure for table `notices`
--

CREATE TABLE `notices` (
  `id_pengumuman` bigint UNSIGNED NOT NULL,
  `tanggal` date NOT NULL,
  `judul` varchar(50) NOT NULL,
  `isi` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `notices`
--

INSERT INTO `notices` (`id_pengumuman`, `tanggal`, `judul`, `isi`, `created_at`, `updated_at`) VALUES
(1, '2020-12-26', 'Pembelian Alat Project RFID Absensi', 'yuhu', '2020-12-26 08:33:42', NULL),
(2, '2025-02-18', 'id_pengumuman', 'id_pengumumandfadsfsadasdsdasdfxvxz', '2025-02-18 14:40:17', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `pascasidang`
--

CREATE TABLE `pascasidang` (
  `id_pcs` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nim` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_skripsi` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tanggal` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pascasidang`
--

INSERT INTO `pascasidang` (`id_pcs`, `nim`, `file_skripsi`, `tanggal`, `created_at`, `updated_at`) VALUES
('PS180225m0', 'A2.1700135', 'SKIA21700135-221957.pdf', '2025-02-18', '2025-02-18 14:19:57', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `prasidang`
--

CREATE TABLE `prasidang` (
  `id_pcs` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nim` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `angkatan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `agama` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `konsentrasi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `judul_tesis_bahasa_inggris` text COLLATE utf8mb4_unicode_ci,
  `judul_tesis_bahasa_indonesia` text COLLATE utf8mb4_unicode_ci,
  `file_tesis` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_kartu_bimbingan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_halaman` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pasfoto` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bebas_administrasi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `plagiasi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('proses','terima','revisi') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'proses'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `prasidang`
--

INSERT INTO `prasidang` (`id_pcs`, `nim`, `created_at`, `updated_at`, `angkatan`, `agama`, `konsentrasi`, `judul_tesis_bahasa_inggris`, `judul_tesis_bahasa_indonesia`, `file_tesis`, `file_kartu_bimbingan`, `file_halaman`, `pasfoto`, `bebas_administrasi`, `plagiasi`, `status`) VALUES
('PS180225r1', 'A2.1700135', '2025-02-18 13:06:00', NULL, '2017', 'islam', 'Komunikasi', 'Penambahan tombol Action akan menampilkan Skor Per Produk yang ditenderkan sebelumnya per vendor', 'Penambahan tombol Action akan menampilkan Skor Per Produk yang ditenderkan sebelumnya per vendor', '_17398875609324.pdf', '_17398875609357.pdf', '_17398875609385.pdf', '_17398875609412.pdf', '_17398875609437.pdf', '_17398875609465.pdf', 'proses');

-- --------------------------------------------------------

--
-- Table structure for table `program_study`
--

CREATE TABLE `program_study` (
  `id_jurusan` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_jurusan` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `program_study`
--

INSERT INTO `program_study` (`id_jurusan`, `nama_jurusan`, `created_at`, `updated_at`) VALUES
('55202', 'Teknik Informatika', '2020-12-29 02:21:00', NULL),
('57201', 'Sistem Informasi', '2020-12-29 02:21:32', NULL),
('57401', 'Manajemen Informatika', '2020-12-29 02:22:08', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `revisions`
--

CREATE TABLE `revisions` (
  `id_revisi` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_bimbingan` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nidn` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `isi_revisi` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_revisi` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tanggal` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `schedule`
--

CREATE TABLE `schedule` (
  `id_jadwal` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tanggal` date NOT NULL,
  `jam` time NOT NULL,
  `ruangan` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `schedule`
--

INSERT INTO `schedule` (`id_jadwal`, `tanggal`, `jam`, `ruangan`, `created_at`, `updated_at`) VALUES
('JL1702254k', '2025-02-18', '02:21:00', 'A1', '2025-02-17 15:21:07', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `nim` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_auth` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_jurusan` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_grup` int DEFAULT NULL,
  `id_jadwal` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nama` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `jk` enum('Laki-Laki','Perempuan') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `no_hp` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jurusan` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `tahun` varchar(4) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`nim`, `id_auth`, `id_jurusan`, `id_grup`, `id_jadwal`, `nama`, `jk`, `alamat`, `no_hp`, `jurusan`, `email`, `tahun`, `created_at`, `updated_at`) VALUES
('A1.1800004', 'A301220kBz', NULL, NULL, NULL, 'Luul Jannah A', 'Perempuan', 'Conggeang', '082120003945', 'Magister manajemen inovasi', 'a1.1800004@mhs.stmik-sumedang.ac.id', '2021', '2020-12-29 20:04:30', '2020-12-31 22:29:48'),
('A2.1700069', 'A301220ETf', NULL, 24, NULL, 'Deden Juliandi', 'Laki-Laki', 'Sumedang', '082120003945', 'Magister manajemen inovasi', 'a2.1700069@mhs.stmik-sumedang.ac.id', '2021', '2020-12-30 01:32:45', '2020-12-31 20:01:40'),
('A2.1700135', 'A301220TVF', NULL, 1, NULL, 'Yusup Apandi', 'Laki-Laki', 'Sumedang', '082249557123', 'Magister manajemen inovasi', 'a2.1700135@mhs.stmik-sumedang.ac.id', '2021', '2020-12-30 01:37:14', '2025-02-14 05:51:16'),
('A3.1700033', 'A301220OLP', NULL, NULL, NULL, 'Nur Mulyasari', 'Perempuan', 'Sumedang', '0987327483', 'Magister manajemen inovasi', 'A3.1700033@mhs.stmik-sumedang.ac.id', '2021', '2020-12-29 20:06:20', NULL),
('1810530247', 'A170225zjn', NULL, NULL, NULL, 'Ahmad robbiul imana', 'Laki-Laki', 'sumbawa', '087861540874', 'Teknik Informatika', 'admin@mail.com', '2025', '2025-02-17 12:43:12', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `submissions_proposal`
--

CREATE TABLE `submissions_proposal` (
  `id_pp` bigint UNSIGNED NOT NULL,
  `nim` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `topik_tesis1` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `topik_tesis2` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `topik_tesis3` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('proses','terima','tolak') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status_topik1` enum('proses','terima','tolak') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status_topik2` enum('proses','terima','tolak') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status_topik3` enum('proses','terima','tolak') COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `submissions_proposal`
--

INSERT INTO `submissions_proposal` (`id_pp`, `nim`, `topik_tesis1`, `topik_tesis2`, `topik_tesis3`, `status`, `created_at`, `updated_at`, `status_topik1`, `status_topik2`, `status_topik3`) VALUES
(4, 'A2.1700135', 'Strategi Manajemen Modal Kerja Terhadap Profitabilitas Perusahaan PT. Auto Daya Keisindo', 'Pengaruh Kompetensi, Independensi, Dan Motivasi Terhadap Kualitas Audit Internal Pemerintah Daerah Dalam Pengawasan Keuangan Daerah Pada Inspektorat Kota Tangerang Selatan', 'Pengaruh Kompensasi Dan Motivasi Terhadap Kinerja Karyawan PT. Kencana Unggul Sukses Jakarta', 'proses', '2025-02-14 02:37:54', '2025-02-14 05:20:51', 'tolak', 'terima', 'tolak');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auths`
--
ALTER TABLE `auths`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ch_favorites`
--
ALTER TABLE `ch_favorites`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `ch_messages`
--
ALTER TABLE `ch_messages`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id_grup`);

--
-- Indexes for table `notices`
--
ALTER TABLE `notices`
  ADD PRIMARY KEY (`id_pengumuman`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD KEY `idx_nim` (`nim`);

--
-- Indexes for table `submissions_proposal`
--
ALTER TABLE `submissions_proposal`
  ADD PRIMARY KEY (`id_pp`),
  ADD KEY `nim` (`nim`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auths`
--
ALTER TABLE `auths`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `notices`
--
ALTER TABLE `notices`
  MODIFY `id_pengumuman` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `submissions_proposal`
--
ALTER TABLE `submissions_proposal`
  MODIFY `id_pp` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `submissions_proposal`
--
ALTER TABLE `submissions_proposal`
  ADD CONSTRAINT `submissions_proposal_ibfk_1` FOREIGN KEY (`nim`) REFERENCES `students` (`nim`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
