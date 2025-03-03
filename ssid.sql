/*
 Navicat Premium Data Transfer

 Source Server         : my_local
 Source Server Type    : MySQL
 Source Server Version : 80030 (8.0.30)
 Source Host           : localhost:3306
 Source Schema         : ssid

 Target Server Type    : MySQL
 Target Server Version : 80030 (8.0.30)
 File Encoding         : 65001

 Date: 03/03/2025 14:14:15
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for auths
-- ----------------------------
DROP TABLE IF EXISTS `auths`;
CREATE TABLE `auths`  (
  `id_auth` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `hak_akses` enum('mahasiswa','dosen','prodi','lppm') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `active_status` tinyint(1) NOT NULL DEFAULT 0,
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'avatar.png',
  `dark_mode` tinyint(1) NOT NULL DEFAULT 0,
  `messenger_color` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auths
-- ----------------------------
INSERT INTO `auths` VALUES ('A010121WRI', '1111111111', '$2y$12$iH7ujFhymRuB5TMEjminmukwI1FmCBq37QlM8M8jxpheVNUc8MVkm', 'lppm', '2021-01-01 12:25:10', NULL, 0, 'avatar.png', 0, NULL, '1111111111');
INSERT INTO `auths` VALUES ('A131120jPo', 'm.agre', '$2y$12$iH7ujFhymRuB5TMEjminmukwI1FmCBq37QlM8M8jxpheVNUc8MVkm', 'lppm', '2020-11-13 10:18:40', '2020-12-27 14:57:47', 0, 'avatar.png', 0, NULL, 'm.agre');
INSERT INTO `auths` VALUES ('A3012201kG', 'A2.1700076', '$2y$10$R1tcasCqu1w5acEnUmF2PuPveKIWvOMQsBpLvv1RpbUY02X65Ob.W', 'mahasiswa', '2020-12-30 12:03:22', NULL, 0, 'avatar.png', 0, NULL, 'A2.1700076');
INSERT INTO `auths` VALUES ('A301220cxJ', '0428068801', '$2y$12$iH7ujFhymRuB5TMEjminmukwI1FmCBq37QlM8M8jxpheVNUc8MVkm', 'dosen', '2020-12-30 12:09:34', NULL, 0, 'avatar.png', 0, NULL, '0428068801');
INSERT INTO `auths` VALUES ('A301220dTT', '0017067902', '$2y$12$iH7ujFhymRuB5TMEjminmukwI1FmCBq37QlM8M8jxpheVNUc8MVkm', 'dosen', '2020-12-30 12:10:54', NULL, 0, 'avatar.png', 0, NULL, '0017067902');
INSERT INTO `auths` VALUES ('A301220ETf', 'A2.1700069', '$2y$10$/EgoZh1UX4zumfv1xxwvUeb1huKNtrL4Biyjtg.yrwvvFmhPLD/De', 'mahasiswa', '2020-12-30 17:32:45', '2021-01-01 12:01:40', 0, 'avatar.png', 0, NULL, 'A2.1700069');
INSERT INTO `auths` VALUES ('A301220kBz', 'A1.1800004', '$2y$12$iH7ujFhymRuB5TMEjminmukwI1FmCBq37QlM8M8jxpheVNUc8MVkm', 'mahasiswa', '2020-12-30 12:04:31', NULL, 0, 'avatar.png', 0, NULL, 'A1.1800004');
INSERT INTO `auths` VALUES ('A301220KHU', '0430048901', '$2y$12$iH7ujFhymRuB5TMEjminmukwI1FmCBq37QlM8M8jxpheVNUc8MVkm', 'prodi', '2020-12-30 12:17:40', NULL, 0, 'avatar.png', 0, NULL, '0430048901');
INSERT INTO `auths` VALUES ('A301220OcQ', '0430067701', '$2y$12$iH7ujFhymRuB5TMEjminmukwI1FmCBq37QlM8M8jxpheVNUc8MVkm', 'dosen', '2020-12-30 12:13:33', NULL, 0, 'avatar.png', 0, NULL, '0430067701');
INSERT INTO `auths` VALUES ('A301220OLP', 'A3.1700033', '$2y$10$Hq4/lwi2qCnFNKBgrxKjBuwSR9wVeibeYr/u6bHRkALo9pPF2sU5m', 'mahasiswa', '2020-12-30 12:06:20', NULL, 0, 'avatar.png', 0, NULL, 'A3.1700033');
INSERT INTO `auths` VALUES ('A301220Trd', '0428058704', '$2y$10$GOgoqZ1UFJLyy9ZwcsXvvO8kHQEEST4Oc/w9Zf9rrzI8bk.Jbxo/K', 'prodi', '2020-12-30 12:16:26', NULL, 0, 'avatar.png', 0, NULL, '0428058704');
INSERT INTO `auths` VALUES ('A301220TVF', 'A2.1700135', '$2y$12$iH7ujFhymRuB5TMEjminmukwI1FmCBq37QlM8M8jxpheVNUc8MVkm', 'mahasiswa', '2020-12-30 17:37:14', NULL, 0, 'avatar.png', 0, NULL, 'A2.1700135');
INSERT INTO `auths` VALUES ('A301220VzR', '0430048901', '$2y$12$iH7ujFhymRuB5TMEjminmukwI1FmCBq37QlM8M8jxpheVNUc8MVkm', 'prodi', '2020-12-30 12:15:11', NULL, 0, 'avatar.png', 0, NULL, '0430048901');
INSERT INTO `auths` VALUES ('A170225zjn', '1810530247', '$2y$10$v2Q/O513uv6No8xTSFejNuCx/ymWYUnRn50h1kRSrEfVczq1qci7.', 'mahasiswa', '2025-02-17 20:43:12', NULL, 0, 'avatar.png', 0, NULL, '1810530247');
INSERT INTO `auths` VALUES ('A170225MS1', '1910530247', '$2y$10$BepLBG7V0HcMMlNDjYhx8.RCKh4x5.KJ5xiKMJAKa0W5odFtYNJx.', 'mahasiswa', '2025-02-17 21:14:00', NULL, 0, 'avatar.png', 0, NULL, '1910530247');

-- ----------------------------
-- Table structure for ch_favorites
-- ----------------------------
DROP TABLE IF EXISTS `ch_favorites`;
CREATE TABLE `ch_favorites`  (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint NOT NULL,
  `favorite_id` bigint NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of ch_favorites
-- ----------------------------

-- ----------------------------
-- Table structure for ch_messages
-- ----------------------------
DROP TABLE IF EXISTS `ch_messages`;
CREATE TABLE `ch_messages`  (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `from_id` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `to_id` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` varchar(5000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `attachment` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `seen` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of ch_messages
-- ----------------------------
INSERT INTO `ch_messages` VALUES ('3c24180e-000c-45a6-84ea-d2a211e37d8b', 'A010121WRI', 'A301220kBz', 'oi valo ke ?', NULL, 0, '2025-03-03 12:57:36', '2025-03-03 12:57:36');
INSERT INTO `ch_messages` VALUES ('d8156e8b-5b1d-45cd-8407-d7de9795c748', 'A301220kBz', 'A010121WRI', 'gass', NULL, 0, '2025-03-03 13:00:51', '2025-03-03 13:00:51');

-- ----------------------------
-- Table structure for departments
-- ----------------------------
DROP TABLE IF EXISTS `departments`;
CREATE TABLE `departments`  (
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
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of departments
-- ----------------------------
INSERT INTO `departments` VALUES (22, 'A301220VzR', '0430048901', 'Fathoni Mahardika, M.T', '0932849237', 'fathoni@gmail.com', 'Sumedang', 'Sistem Informasi', '2020-12-30 12:15:10', NULL);
INSERT INTO `departments` VALUES (23, 'A301220Trd', '0428058704', 'Fidi Supriadi, M.T.', '09382432747', 'fidi@gmail.com', 'Sumedang', 'Teknik Informatika', '2020-12-30 12:16:26', NULL);
INSERT INTO `departments` VALUES (24, 'A301220KHU', '0430048901', 'Fathoni Mahardika, M.T', '083290838', 'fathoni@gmail.com', 'Sumedang', 'Manajemen Informatika', '2020-12-30 12:17:40', NULL);

-- ----------------------------
-- Table structure for failed_jobs
-- ----------------------------
DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE `failed_jobs`  (
  `id` bigint UNSIGNED NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of failed_jobs
-- ----------------------------

-- ----------------------------
-- Table structure for grades
-- ----------------------------
DROP TABLE IF EXISTS `grades`;
CREATE TABLE `grades`  (
  `id_nilai` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nim` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nilai_pengajuan` double NULL DEFAULT NULL,
  `nilai_bimbingan` double NULL DEFAULT NULL,
  `nilai_sidang` double NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of grades
-- ----------------------------
INSERT INTO `grades` VALUES ('NI3012209o', 'A2.1700076', 100, 90, 90, '2020-12-30 12:23:04', '2020-12-30 12:51:03');

-- ----------------------------
-- Table structure for groups
-- ----------------------------
DROP TABLE IF EXISTS `groups`;
CREATE TABLE `groups`  (
  `id_grup` bigint NOT NULL,
  `nama_grup` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tahun` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_grup`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of groups
-- ----------------------------
INSERT INTO `groups` VALUES (1, 'Bimbingan Pak Bambang', '2025', '2025-02-14 14:50:40', '2025-02-14 14:50:43');

-- ----------------------------
-- Table structure for guidances
-- ----------------------------
DROP TABLE IF EXISTS `guidances`;
CREATE TABLE `guidances`  (
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
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of guidances
-- ----------------------------

-- ----------------------------
-- Table structure for institutions
-- ----------------------------
DROP TABLE IF EXISTS `institutions`;
CREATE TABLE `institutions`  (
  `id_lppm` bigint UNSIGNED NOT NULL,
  `id_auth` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nidn` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_hp` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `alamat` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of institutions
-- ----------------------------
INSERT INTO `institutions` VALUES (7, 'A131120jPo', '0420108603', 'M Agreindra H, M.T', '082120003945', 'agree@stmik-sumedang.ac.id', 'Sumedang', '2020-11-13 10:18:40', '2020-12-30 11:56:03');
INSERT INTO `institutions` VALUES (9, 'A010121WRI', '1111111111', 'Admin', '082120003945', 'admin_sisds@gmail.com', 'Sumedang', '2021-01-01 12:25:10', NULL);

-- ----------------------------
-- Table structure for lecturers
-- ----------------------------
DROP TABLE IF EXISTS `lecturers`;
CREATE TABLE `lecturers`  (
  `nidn` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_auth` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `id_grup` int NULL DEFAULT NULL,
  `id_jadwal` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `nama` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_hp` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `pembimbing` enum('Ya','Tidak') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `penguji` enum('Ya','Tidak') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of lecturers
-- ----------------------------
INSERT INTO `lecturers` VALUES ('0017067902', 'A301220dTT', 24, 'JL301220td', 'Dody Herdiana, S.T., M.Kom.', 'Sumedang', '0992873827', 'dody@gmail.com', 'Ya', 'Ya', '2020-12-30 12:10:54', '2020-12-30 12:44:53');
INSERT INTO `lecturers` VALUES ('0428068801', 'A301220cxJ', 1, NULL, 'Irfan Fadil, M.Kom.', 'Sumedang', '0938294836', 'irfanfadil@gmail.com', 'Tidak', 'Tidak', '2020-12-30 12:09:34', '2025-02-14 13:51:25');
INSERT INTO `lecturers` VALUES ('0430067701', 'A301220OcQ', 24, 'JL301220td', 'Dwi Yuniarto,S.Sos.,M.Kom.', 'Sumedang', '09893284723', 'dwi@gmail.com', 'Ya', 'Ya', '2020-12-30 12:13:32', '2020-12-30 12:45:04');

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations`  (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES (1, '2014_10_12_000000_create_users_table', 1);
INSERT INTO `migrations` VALUES (2, '2014_10_12_100000_create_password_resets_table', 1);
INSERT INTO `migrations` VALUES (3, '2019_08_19_000000_create_failed_jobs_table', 1);
INSERT INTO `migrations` VALUES (4, '2020_10_26_045908_create_students_table', 2);
INSERT INTO `migrations` VALUES (5, '2020_10_29_032107_create_groups_table', 3);
INSERT INTO `migrations` VALUES (6, '2020_10_29_034251_create_auths_table', 4);
INSERT INTO `migrations` VALUES (7, '2020_11_02_014520_create_auths_table', 5);
INSERT INTO `migrations` VALUES (8, '2020_11_02_022220_create_departments_table', 6);
INSERT INTO `migrations` VALUES (9, '2020_11_03_042121_create_institutions_table', 7);
INSERT INTO `migrations` VALUES (10, '2020_11_04_071354_create_students_table', 8);
INSERT INTO `migrations` VALUES (11, '2020_11_06_024223_create_lecturers_table', 9);
INSERT INTO `migrations` VALUES (12, '2020_11_23_142514_create_submissions_proposal_table', 10);
INSERT INTO `migrations` VALUES (13, '2020_11_29_154407_create_guidances_table', 11);
INSERT INTO `migrations` VALUES (14, '2020_12_03_085222_create_grades_table', 12);
INSERT INTO `migrations` VALUES (15, '2020_12_06_151933_create_revisons_table', 13);
INSERT INTO `migrations` VALUES (16, '2020_12_20_111449_create_pascasidang_table', 14);
INSERT INTO `migrations` VALUES (17, '2020_12_25_141228_create_pascasidang_table', 15);
INSERT INTO `migrations` VALUES (18, '2020_12_29_083408_create_program_study_table', 16);

-- ----------------------------
-- Table structure for notices
-- ----------------------------
DROP TABLE IF EXISTS `notices`;
CREATE TABLE `notices`  (
  `id_pengumuman` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `tanggal` date NOT NULL,
  `judul` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `isi` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_pengumuman`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of notices
-- ----------------------------
INSERT INTO `notices` VALUES (1, '2020-12-26', 'Pembelian Alat Project RFID Absensi', 'yuhu', '2020-12-26 16:33:42', NULL);
INSERT INTO `notices` VALUES (2, '2025-02-18', 'id_pengumuman', 'id_pengumumandfadsfsadasdsdasdfxvxz', '2025-02-18 22:40:17', NULL);

-- ----------------------------
-- Table structure for pascasidang
-- ----------------------------
DROP TABLE IF EXISTS `pascasidang`;
CREATE TABLE `pascasidang`  (
  `id_pcs` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nim` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_skripsi` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tanggal` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pascasidang
-- ----------------------------
INSERT INTO `pascasidang` VALUES ('PS180225m0', 'A2.1700135', 'SKIA21700135-221957.pdf', '2025-02-18', '2025-02-18 22:19:57', NULL);

-- ----------------------------
-- Table structure for password_resets
-- ----------------------------
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets`  (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of password_resets
-- ----------------------------

-- ----------------------------
-- Table structure for prasidang
-- ----------------------------
DROP TABLE IF EXISTS `prasidang`;
CREATE TABLE `prasidang`  (
  `id_pcs` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nim` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `angkatan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `agama` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `konsentrasi` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `judul_tesis_bahasa_inggris` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `judul_tesis_bahasa_indonesia` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `file_tesis` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `file_kartu_bimbingan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `file_halaman` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `pasfoto` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `bebas_administrasi` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `plagiasi` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `status` enum('proses','terima','revisi') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'proses'
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of prasidang
-- ----------------------------
INSERT INTO `prasidang` VALUES ('PS180225r1', 'A2.1700135', '2025-02-18 21:06:00', NULL, '2017', 'islam', 'Komunikasi', 'Penambahan tombol Action akan menampilkan Skor Per Produk yang ditenderkan sebelumnya per vendor', 'Penambahan tombol Action akan menampilkan Skor Per Produk yang ditenderkan sebelumnya per vendor', '_17398875609324.pdf', '_17398875609357.pdf', '_17398875609385.pdf', '_17398875609412.pdf', '_17398875609437.pdf', '_17398875609465.pdf', 'proses');

-- ----------------------------
-- Table structure for program_study
-- ----------------------------
DROP TABLE IF EXISTS `program_study`;
CREATE TABLE `program_study`  (
  `id_jurusan` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_jurusan` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of program_study
-- ----------------------------
INSERT INTO `program_study` VALUES ('55202', 'Teknik Informatika', '2020-12-29 10:21:00', NULL);
INSERT INTO `program_study` VALUES ('57201', 'Sistem Informasi', '2020-12-29 10:21:32', NULL);
INSERT INTO `program_study` VALUES ('57401', 'Manajemen Informatika', '2020-12-29 10:22:08', NULL);

-- ----------------------------
-- Table structure for revisions
-- ----------------------------
DROP TABLE IF EXISTS `revisions`;
CREATE TABLE `revisions`  (
  `id_revisi` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_bimbingan` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nidn` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `isi_revisi` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_revisi` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tanggal` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of revisions
-- ----------------------------

-- ----------------------------
-- Table structure for schedule
-- ----------------------------
DROP TABLE IF EXISTS `schedule`;
CREATE TABLE `schedule`  (
  `id_jadwal` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tanggal` date NOT NULL,
  `jam` time NOT NULL,
  `ruangan` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of schedule
-- ----------------------------
INSERT INTO `schedule` VALUES ('JL1702254k', '2025-02-18', '02:21:00', 'A1', '2025-02-17 23:21:07', NULL);

-- ----------------------------
-- Table structure for students
-- ----------------------------
DROP TABLE IF EXISTS `students`;
CREATE TABLE `students`  (
  `nim` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_auth` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_jurusan` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `id_grup` int NULL DEFAULT NULL,
  `id_jadwal` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `nama` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `jk` enum('Laki-Laki','Perempuan') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `no_hp` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `jurusan` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `email` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `tahun` varchar(4) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  INDEX `idx_nim`(`nim` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of students
-- ----------------------------
INSERT INTO `students` VALUES ('A1.1800004', 'A301220kBz', NULL, NULL, NULL, 'Luul Jannah A', 'Perempuan', 'Conggeang', '082120003945', 'Magister manajemen inovasi', 'a1.1800004@mhs.stmik-sumedang.ac.id', '2021', '2020-12-30 04:04:30', '2021-01-01 06:29:48');
INSERT INTO `students` VALUES ('A2.1700069', 'A301220ETf', NULL, 24, NULL, 'Deden Juliandi', 'Laki-Laki', 'Sumedang', '082120003945', 'Magister manajemen inovasi', 'a2.1700069@mhs.stmik-sumedang.ac.id', '2021', '2020-12-30 09:32:45', '2021-01-01 04:01:40');
INSERT INTO `students` VALUES ('A2.1700076', 'A3012201kG', NULL, 24, 'JL301220td', 'Muhammad Nu\'man Izudin', 'Laki-Laki', 'Sumedang Selatan', '09898787663', 'Magister manajemen inovasi', 'a2.1700076@mhs.stmik-sumedang.ac.id', '2021', '2020-12-30 04:03:21', '2020-12-30 04:46:51');
INSERT INTO `students` VALUES ('A2.1700135', 'A301220TVF', NULL, 1, NULL, 'Yusup Apandi', 'Laki-Laki', 'Sumedang', '082249557123', 'Magister manajemen inovasi', 'a2.1700135@mhs.stmik-sumedang.ac.id', '2021', '2020-12-30 09:37:14', '2025-02-14 13:51:16');
INSERT INTO `students` VALUES ('A3.1700033', 'A301220OLP', NULL, NULL, NULL, 'Nur Mulyasari', 'Perempuan', 'Sumedang', '0987327483', 'Magister manajemen inovasi', 'A3.1700033@mhs.stmik-sumedang.ac.id', '2021', '2020-12-30 04:06:20', NULL);
INSERT INTO `students` VALUES ('1810530247', 'A170225zjn', NULL, NULL, NULL, 'Ahmad robbiul imana', 'Laki-Laki', 'sumbawa', '087861540874', 'Teknik Informatika', 'admin@mail.com', '2025', '2025-02-17 20:43:12', NULL);

-- ----------------------------
-- Table structure for submissions_proposal
-- ----------------------------
DROP TABLE IF EXISTS `submissions_proposal`;
CREATE TABLE `submissions_proposal`  (
  `id_pp` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `nim` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `topik_tesis1` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `topik_tesis2` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `topik_tesis3` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `status` enum('proses','terima','tolak') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status_topik1` enum('proses','terima','tolak') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `status_topik2` enum('proses','terima','tolak') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `status_topik3` enum('proses','terima','tolak') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_pp`) USING BTREE,
  INDEX `nim`(`nim` ASC) USING BTREE,
  CONSTRAINT `submissions_proposal_ibfk_1` FOREIGN KEY (`nim`) REFERENCES `students` (`nim`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of submissions_proposal
-- ----------------------------
INSERT INTO `submissions_proposal` VALUES (4, 'A2.1700135', 'Strategi Manajemen Modal Kerja Terhadap Profitabilitas Perusahaan PT. Auto Daya Keisindo', 'Pengaruh Kompetensi, Independensi, Dan Motivasi Terhadap Kualitas Audit Internal Pemerintah Daerah Dalam Pengawasan Keuangan Daerah Pada Inspektorat Kota Tangerang Selatan', 'Pengaruh Kompensasi Dan Motivasi Terhadap Kinerja Karyawan PT. Kencana Unggul Sukses Jakarta', 'proses', '2025-02-14 10:37:54', '2025-02-14 13:20:51', 'tolak', 'terima', 'tolak');

-- ----------------------------
-- Triggers structure for table departments
-- ----------------------------
DROP TRIGGER IF EXISTS `delete_auths`;
delimiter ;;
CREATE TRIGGER `delete_auths` AFTER DELETE ON `departments` FOR EACH ROW DELETE FROM auths WHERE id_auth = OLD.id_auth
;;
delimiter ;

-- ----------------------------
-- Triggers structure for table institutions
-- ----------------------------
DROP TRIGGER IF EXISTS `delete_auths2`;
delimiter ;;
CREATE TRIGGER `delete_auths2` AFTER DELETE ON `institutions` FOR EACH ROW DELETE FROM auths WHERE id_auth = OLD.id_auth
;;
delimiter ;

-- ----------------------------
-- Triggers structure for table lecturers
-- ----------------------------
DROP TRIGGER IF EXISTS `delete_auths4`;
delimiter ;;
CREATE TRIGGER `delete_auths4` AFTER DELETE ON `lecturers` FOR EACH ROW DELETE FROM auths WHERE id_auth = OLD.id_auth
;;
delimiter ;

SET FOREIGN_KEY_CHECKS = 1;
