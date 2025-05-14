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

 Date: 14/05/2025 19:05:10
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
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `id` bigint NOT NULL AUTO_INCREMENT,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 441 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auths
-- ----------------------------
INSERT INTO `auths` VALUES ('A010121WRI', '1111111111', '$2y$12$o.LYNn0ls.L6hIgu6eyh.ufY6.Q9a9tdh4XadM7VmcH.XE5KRCVPC', 'lppm', '2021-01-01 12:25:10', '2025-03-04 21:43:31', 0, 'avatar.png', 0, NULL, '1111111111', 1, 'iam.asm89@gmail.com');
INSERT INTO `auths` VALUES ('A131120jPo', 'm.agre', '$2y$12$iH7ujFhymRuB5TMEjminmukwI1FmCBq37QlM8M8jxpheVNUc8MVkm', 'lppm', '2020-11-13 10:18:40', '2020-12-27 14:57:47', 0, 'avatar.png', 0, NULL, 'm.agre', 2, 'kylekatarnls@gmail.com');
INSERT INTO `auths` VALUES ('A301220KHU', '0430048901', '$2y$12$iH7ujFhymRuB5TMEjminmukwI1FmCBq37QlM8M8jxpheVNUc8MVkm', 'prodi', '2020-12-30 12:17:40', NULL, 0, 'avatar.png', 0, NULL, '0430048901', 8, 'roman@code-factory.org');
INSERT INTO `auths` VALUES ('A301220Trd', '0428058704', '$2y$10$GOgoqZ1UFJLyy9ZwcsXvvO8kHQEEST4Oc/w9Zf9rrzI8bk.Jbxo/K', 'prodi', '2020-12-30 12:16:26', NULL, 0, 'avatar.png', 0, NULL, '0428058704', 11, 'schmittjoh@gmail.com');
INSERT INTO `auths` VALUES ('A270425E0x', '232015001', '$2y$10$zWR2pksm5W8OqvXQKX7da.kwg.yZjEWbDjlwXE2i0wX/ERICf/g6a', 'mahasiswa', '2025-04-27 21:18:08', '2025-04-27 21:18:08', 0, 'avatar.png', 0, NULL, 'FABIAN ARDIANTA', 21, '232015001@uts.ac.id');
INSERT INTO `auths` VALUES ('A270425H3r', '232015033', '$2y$10$9cXVQPOMiE7Jht3gqKHcBOhJhTbNxleRigrO6z3GBSZdCfmUO50Fy', 'mahasiswa', '2025-04-27 21:18:08', '2025-04-27 21:18:08', 0, 'avatar.png', 0, NULL, 'Sulkarnain', 22, '232015033@uts.ac.id');
INSERT INTO `auths` VALUES ('A2704252VI', '232015036', '$2y$10$GVR1tDNn3GpNEZ5BzYsKPOq2eViFYh1J7rXkG54eFZi/OpHbUsrVq', 'mahasiswa', '2025-04-27 21:18:08', '2025-04-27 21:18:08', 0, 'avatar.png', 0, NULL, 'MUSLIMIN M.AR', 23, '232015036@uts.ac.id');
INSERT INTO `auths` VALUES ('A2704254mv', '232015034', '$2y$10$8Avz2V1NwQrFqrdbRXp9WunKA3hw8RhMub/sEbJ5tKqJGmu994W7u', 'mahasiswa', '2025-04-27 21:18:08', '2025-04-27 21:18:08', 0, 'avatar.png', 0, NULL, 'ISNIA NURUL AZMY', 24, '232015034@uts.ac.id');
INSERT INTO `auths` VALUES ('A270425jnD', '232015048', '$2y$10$5auiQFXoOQcKCK69edYAC.1oWAlBkgyVYcEZnDy5J9pV8iqbed9/W', 'mahasiswa', '2025-04-27 21:18:08', '2025-04-27 21:18:08', 0, 'avatar.png', 0, NULL, 'Ketut Arisanto', 25, '232015048@uts.ac.id');
INSERT INTO `auths` VALUES ('A2704252G3', '232015032', '$2y$10$p.v7SxpI1EEW73aIJyOUvu4y4C2BpMCIHhucudSE6I9Usk9zDsvHG', 'mahasiswa', '2025-04-27 21:18:08', '2025-04-27 21:18:08', 0, 'avatar.png', 0, NULL, 'SURBINI', 26, '232015032@uts.ac.id');
INSERT INTO `auths` VALUES ('A270425sNb', '232015031', '$2y$10$YzivxbvAyzPFLx5TfgQevuaajJ51IUnI/Is4fv3YIbkLh/SMjszcW', 'mahasiswa', '2025-04-27 21:18:08', '2025-04-27 21:18:08', 0, 'avatar.png', 0, NULL, 'ZAINUDDIN', 27, '232015031@uts.ac.id');
INSERT INTO `auths` VALUES ('A270425xgd', '232015044', '$2y$10$Oc26IdlC1Zpl/cIMr/G/MO9mwTsUKZdp1QjbFKzH3ITfgtmDViy8y', 'mahasiswa', '2025-04-27 21:18:08', '2025-04-27 21:18:08', 0, 'avatar.png', 0, NULL, 'Sahuddin', 28, '232015044@uts.ac.id');
INSERT INTO `auths` VALUES ('A2704252wX', '232015056', '$2y$10$37ZEevsH4ii56qL/RpNt7.UxB7tFKx61WEXbpYQHFHpwgUu61Qukm', 'mahasiswa', '2025-04-27 21:18:09', '2025-04-27 21:18:09', 0, 'avatar.png', 0, NULL, 'R. AGUS YULI FITRIYANTO', 29, '232015056@uts.ac.id');
INSERT INTO `auths` VALUES ('A270425Png', '232015071', '$2y$10$RK3su8POwG3E7bBTfXQvye/kq0ZrDo84LYefZZxKurLIKept97Dpy', 'mahasiswa', '2025-04-27 21:18:09', '2025-04-27 21:18:09', 0, 'avatar.png', 0, NULL, 'RATILUS SULCAT, S.E.', 30, '232015071@uts.ac.id');
INSERT INTO `auths` VALUES ('A2704258uk', '232015061', '$2y$10$s6OqfBhbtsgGorDEQqkisuKPwSwMTUwj.dQbjFqmIR2R8RBb8uJtO', 'mahasiswa', '2025-04-27 21:18:09', '2025-04-27 21:18:09', 0, 'avatar.png', 0, NULL, 'JAYA ARIADI', 31, '232015061@uts.ac.id');
INSERT INTO `auths` VALUES ('A2704254QZ', '232015003', '$2y$10$VhLWqeZ.0VV49V8bVi5Th..OaxTWZxwna8hCagQ6kUKg1GprJSKC6', 'mahasiswa', '2025-04-27 21:18:09', '2025-04-27 21:18:09', 0, 'avatar.png', 0, NULL, 'SAHRUL YADI', 32, '232015003@uts.ac.id');
INSERT INTO `auths` VALUES ('A270425a4k', '232015045', '$2y$10$mPn458NWIent0D4IpJVV0O1FOh8mTSxwGuAYT6x/UmmvujlC54zFW', 'mahasiswa', '2025-04-27 21:18:09', '2025-04-27 21:18:09', 0, 'avatar.png', 0, NULL, 'WENDHI SHAFITRI', 33, '232015045@uts.ac.id');
INSERT INTO `auths` VALUES ('A270425fBZ', '232015039', '$2y$10$SUuKoFZGY8WiqEcW0dDGZuLaRaHj7Kr3r0Bwc7lmGDdb/9J3hyYLy', 'mahasiswa', '2025-04-27 21:18:09', '2025-04-27 21:18:09', 0, 'avatar.png', 0, NULL, 'SAMA', 34, '232015039@uts.ac.id');
INSERT INTO `auths` VALUES ('A270425Por', '232015025', '$2y$10$YjKmjSJ3LUVVJ7KMdeAzXuImcb0iGNC0iomZVUh4TXeTyyQECpbQS', 'mahasiswa', '2025-04-27 21:18:09', '2025-04-27 21:18:09', 0, 'avatar.png', 0, NULL, 'Neni Afriliani', 35, '232015025@uts.ac.id');
INSERT INTO `auths` VALUES ('A2704252Wl', '232015011', '$2y$10$dY/SbDuXPt8Osxa8iNjAvOrJZbFsW1FnDpXxLc8RI.eSSSy/BPgIu', 'mahasiswa', '2025-04-27 21:18:09', '2025-04-27 21:18:09', 0, 'avatar.png', 0, NULL, 'DARMATASIA', 36, '232015011@uts.ac.id');
INSERT INTO `auths` VALUES ('A270425BdO', '232015028', '$2y$10$COuD273LfspBFEMB3Pyc7OYvcIY5fUZezcyDn0d9yE5Kw34ckw8PG', 'mahasiswa', '2025-04-27 21:18:09', '2025-04-27 21:18:09', 0, 'avatar.png', 0, NULL, 'Herlina', 37, '232015028@uts.ac.id');
INSERT INTO `auths` VALUES ('A270425UEa', '232015037', '$2y$10$NG.kXBXFswHJG8VEbIT/s.51RkqOx6BmbJGGW1Na1telXNHWqAb6O', 'mahasiswa', '2025-04-27 21:18:09', '2025-04-27 21:18:09', 0, 'avatar.png', 0, NULL, 'Lalu Aditya Pandu Rosy Kumbara', 38, '232015037@uts.ac.id');
INSERT INTO `auths` VALUES ('A270425EJT', '232015006', '$2y$10$630rWxvcwADHdBsc8q2QA.QIaFfrppx2qZEATs2ZZRIEZIyuXKh2S', 'mahasiswa', '2025-04-27 21:18:09', '2025-04-27 21:18:09', 0, 'avatar.png', 0, NULL, 'Andri Darmansyah', 39, '232015006@uts.ac.id');
INSERT INTO `auths` VALUES ('A270425KH5', '232015005', '$2y$10$h44SXC9F3TyzTH51ZF.TreIqahi/hWzGFo93rRzqCgj7kBHl2y7La', 'mahasiswa', '2025-04-27 21:18:09', '2025-04-27 21:18:09', 0, 'avatar.png', 0, NULL, 'RHAUDATUL ALIYAH', 40, '232015005@uts.ac.id');
INSERT INTO `auths` VALUES ('A270425mQ5', '232015049', '$2y$10$LNmab/VS42FOeK9EX1FFfuioNaAADRjz2CEgFBhIDwEGuloUepj8C', 'mahasiswa', '2025-04-27 21:18:09', '2025-04-27 21:18:09', 0, 'avatar.png', 0, NULL, 'Didin Friansyah ', 41, '232015049@uts.ac.id');
INSERT INTO `auths` VALUES ('A2704254HK', '232015026', '$2y$10$ydMrYG/tLmmeDSJjG69QqumjmI/Ymz78UtaYK2j29Y.MHATLNjjSW', 'mahasiswa', '2025-04-27 21:18:09', '2025-04-27 21:18:09', 0, 'avatar.png', 0, NULL, 'HERMAN', 42, '232015026@uts.ac.id');
INSERT INTO `auths` VALUES ('A270425q9C', '232015046', '$2y$10$S4ZYtsYHT/JVNBq8ZczEaexgBuVBSfAa4ij7DPplbjSdkdKFzJrwe', 'mahasiswa', '2025-04-27 21:18:09', '2025-04-27 21:18:09', 0, 'avatar.png', 0, NULL, 'DEDI KUSWANTO', 43, '232015046@uts.ac.id');
INSERT INTO `auths` VALUES ('A270425Nyz', '232015009', '$2y$10$xdoRlFZNl5cbb.doCkoCmO8A3kEQp4Uz9UVGf7yDfZgoeyke5VPyG', 'mahasiswa', '2025-04-27 21:18:09', '2025-04-27 21:18:09', 0, 'avatar.png', 0, NULL, 'MARYANTON', 44, '232015009@uts.ac.id');
INSERT INTO `auths` VALUES ('A270425dIw', '232015007', '$2y$10$y8CE0kqqGwh3OT.PNsAeHuOOSShaNyOoyAGyxNdQmAFnxNay/UrH2', 'mahasiswa', '2025-04-27 21:18:09', '2025-04-27 21:18:09', 0, 'avatar.png', 0, NULL, 'ARIF RAHMAN', 45, '232015007@uts.ac.id');
INSERT INTO `auths` VALUES ('A270425a9B', '232015008', '$2y$10$xLeiwgsgfvcj435/R7pnCOLUrQKLSnoM8RZcHMo1fBZiWwDSBldCK', 'mahasiswa', '2025-04-27 21:18:09', '2025-04-27 21:18:09', 0, 'avatar.png', 0, NULL, 'MUARIF', 46, '232015008@uts.ac.id');
INSERT INTO `auths` VALUES ('A270425YdZ', '232015010', '$2y$10$fvWUwGEAZWaMTtIH8TLxnex3fxBwFlbcwkynkmnHKN84pnxS3WBNe', 'mahasiswa', '2025-04-27 21:18:10', '2025-04-27 21:18:10', 0, 'avatar.png', 0, NULL, 'Ridha Rangga Radesakh', 47, '232015010@uts.ac.id');
INSERT INTO `auths` VALUES ('A270425cf0', '232015019', '$2y$10$0.QcFfPoisE4juqrhu.ro.IZoX.Xm1UaD5gF.RVidvyltiqIunMse', 'mahasiswa', '2025-04-27 21:18:10', '2025-04-27 21:18:10', 0, 'avatar.png', 0, NULL, 'HADIJAH', 48, '232015019@uts.ac.id');
INSERT INTO `auths` VALUES ('A2704257hu', '232015004', '$2y$10$m47q/RyfK98ns8hhdAghAuPibbz9kRPOROFA82lrDPLUZxt2kZMCS', 'mahasiswa', '2025-04-27 21:18:10', '2025-04-27 21:18:10', 0, 'avatar.png', 0, NULL, 'M. Arifin Tagara', 49, '232015004@uts.ac.id');
INSERT INTO `auths` VALUES ('A270425n3a', '232015051', '$2y$10$L5cgXvdciu9QSh5ZcJ2PpOuekSW0sKAZTqC8Lik.L2ytW0G5OTPwa', 'mahasiswa', '2025-04-27 21:18:10', '2025-04-27 21:18:10', 0, 'avatar.png', 0, NULL, 'PUTRI INTAN PERMATASARI', 50, '232015051@uts.ac.id');
INSERT INTO `auths` VALUES ('A270425pK8', '232015060', '$2y$10$aVeWvw4GxiBrly6kcxb6C.r7Rr4m2qiTdixuB0gYtEmOKDSLUd57K', 'mahasiswa', '2025-04-27 21:18:10', '2025-04-27 21:18:10', 0, 'avatar.png', 0, NULL, 'BADRUS SYAMSU', 51, '232015060@uts.ac.id');
INSERT INTO `auths` VALUES ('A270425G5A', '232015052', '$2y$10$jL64ONhn1HB2I2PuuRoq4.WlniPoLTJEr/d6/.7zUdY1hBvik4lLC', 'mahasiswa', '2025-04-27 21:18:10', '2025-04-27 21:18:10', 0, 'avatar.png', 0, NULL, 'Adrian Sitompul', 52, '232015052@uts.ac.id');
INSERT INTO `auths` VALUES ('A270425e26', '232015024', '$2y$10$AyRyPkuvl9F9jD9nMcN9VefzkbLkmSIB/lLWIkL43kX6MFKJcAnVG', 'mahasiswa', '2025-04-27 21:18:10', '2025-04-27 21:18:10', 0, 'avatar.png', 0, NULL, 'SOFYAN HADI', 53, '232015024@uts.ac.id');
INSERT INTO `auths` VALUES ('A270425x8U', '232015015', '$2y$10$iHGQvzWrKpYvRadiPv8HB.ejWOX9cD79wf29YWI/uNUsvIC1KGu9i', 'mahasiswa', '2025-04-27 21:18:10', '2025-04-27 21:18:10', 0, 'avatar.png', 0, NULL, 'Bachtiar Maulana', 54, '232015015@uts.ac.id');
INSERT INTO `auths` VALUES ('A270425omI', '232015069', '$2y$10$NqLaIF93RmuNlTsTXacXP.i0Ww2mw4zB6rQtFoV7LeO4XQiTD0B.K', 'mahasiswa', '2025-04-27 21:18:10', '2025-04-27 21:18:10', 0, 'avatar.png', 0, NULL, 'Indra jaya', 55, '232015069@uts.ac.id');
INSERT INTO `auths` VALUES ('A270425YzH', '232015050', '$2y$10$yIGS1L6Z37TEPdTderQXmOZQnYEgLQZahRz5uklFGYLhKn7LbQwVK', 'mahasiswa', '2025-04-27 21:18:10', '2025-04-27 21:18:10', 0, 'avatar.png', 0, NULL, 'BUNYAMIN', 56, '232015050@uts.ac.id');
INSERT INTO `auths` VALUES ('A270425pLp', '232015030', '$2y$10$9OtPvWBm1yKXia8Lck/DbOcKbdb8sfb7AgdnV5KUmLhHPKDEeelTm', 'mahasiswa', '2025-04-27 21:18:10', '2025-04-27 21:18:10', 0, 'avatar.png', 0, NULL, 'WAHYU ARBAIN', 57, '232015030@uts.ac.id');
INSERT INTO `auths` VALUES ('A270425Rgx', '232015065', '$2y$10$C7D0P2fvq0StxGxZPS39nOBKI68I6y66cGxZ4TgsIzfXmyMdxTyEu', 'mahasiswa', '2025-04-27 21:18:10', '2025-04-27 21:18:10', 0, 'avatar.png', 0, NULL, 'BURHAN', 58, '232015065@uts.ac.id');
INSERT INTO `auths` VALUES ('A270425StU', '232015064', '$2y$10$if2Q5e0A6KwtR5FcpPcpfuv0TMPl/tIMcE7pcYy9y.lyFJS.hD8PC', 'mahasiswa', '2025-04-27 21:18:10', '2025-04-27 21:18:10', 0, 'avatar.png', 0, NULL, 'Muhammad Fuad', 59, '232015064@uts.ac.id');
INSERT INTO `auths` VALUES ('A270425eVt', '232015035', '$2y$10$BIOdsnkPdJrWwwMu3Chxu.IxFEWx8kyJN9UsVJ6i6OOFVwJ1Db6km', 'mahasiswa', '2025-04-27 21:18:10', '2025-04-27 21:18:10', 0, 'avatar.png', 0, NULL, 'Nasruddin', 60, '232015035@uts.ac.id');
INSERT INTO `auths` VALUES ('A270425xUU', '232015021', '$2y$10$bxPnGj8gMntmGBtrnU.sO.cWcmFalq7c.WWsLoZECRQMydYpRsg1S', 'mahasiswa', '2025-04-27 21:18:10', '2025-04-27 21:18:10', 0, 'avatar.png', 0, NULL, 'Novita Laily Shalatiag', 61, '232015021@uts.ac.id');
INSERT INTO `auths` VALUES ('A270425Rl1', '232015038', '$2y$10$RF/O3a9lknMjsr0lEpjan.zBcy/bV1Iy/MVk2VfEkEMI8qUyVNv7K', 'mahasiswa', '2025-04-27 21:18:10', '2025-04-27 21:18:10', 0, 'avatar.png', 0, NULL, 'Wawan Satriawan', 62, '232015038@uts.ac.id');
INSERT INTO `auths` VALUES ('A270425eaK', '232015057', '$2y$10$ckpdfYSD4IFUw7jKVHtzZeUnkEewz3hKPt2pzmZIGD6GKOxH5vfw2', 'mahasiswa', '2025-04-27 21:18:10', '2025-04-27 21:18:10', 0, 'avatar.png', 0, NULL, 'Ahmad Syaichu Rauf ', 63, '232015057@uts.ac.id');
INSERT INTO `auths` VALUES ('A270425kZ8', '232015012', '$2y$10$qY7KgGinpsC3Nh2pSlI7JOEztDclHFsTVsjz4rl3fVi.BYL8xMuii', 'mahasiswa', '2025-04-27 21:18:10', '2025-04-27 21:18:10', 0, 'avatar.png', 0, NULL, 'CHANDRA ALISTA FIBRIYAN', 64, '232015012@uts.ac.id');
INSERT INTO `auths` VALUES ('A270425YiI', '232015066', '$2y$10$o.Ed0xZmHkPiUwgy2hC7keZN7UQCdHsfw.dLC1yMUiPrljKNb53VS', 'mahasiswa', '2025-04-27 21:18:10', '2025-04-27 21:18:10', 0, 'avatar.png', 0, NULL, 'MUAMAR', 65, '232015066@uts.ac.id');
INSERT INTO `auths` VALUES ('A270425kFf', '232015016', '$2y$10$Mfzn/CCVreAwuLvPtMuLxOms6kd3vcw8srNcd/2Yd2c8fLN.bT5oi', 'mahasiswa', '2025-04-27 21:18:11', '2025-04-27 21:18:11', 0, 'avatar.png', 0, NULL, 'Maulidina Yulia Auli', 66, '232015016@uts.ac.id');
INSERT INTO `auths` VALUES ('A270425wj4', '232015027', '$2y$10$W53KiSC71lQk7xMJaBPNVuNuWdk0QJFIAhezkFakLCvwMoOgNnh/S', 'mahasiswa', '2025-04-27 21:18:11', '2025-04-27 21:18:11', 0, 'avatar.png', 0, NULL, 'RAHMAT HIDAYAT', 67, '232015027@uts.ac.id');
INSERT INTO `auths` VALUES ('A270425yGM', '232015054', '$2y$10$ea7O49GY1FBFHtA.04pr..Wt2WF1ceQ5g78gtWj9SaAk4R9u/Zima', 'mahasiswa', '2025-04-27 21:18:11', '2025-04-27 21:18:11', 0, 'avatar.png', 0, NULL, 'HERIYANTO', 68, '232015054@uts.ac.id');
INSERT INTO `auths` VALUES ('A270425duU', '232015053', '$2y$10$X2.vFMO7oRSIPBV8FgWeNO0M.63fOV4zxhiHnkHgcFzzfX5ibSlg6', 'mahasiswa', '2025-04-27 21:18:11', '2025-04-27 21:18:11', 0, 'avatar.png', 0, NULL, 'Agus Kusuma Atmaja', 69, '232015053@uts.ac.id');
INSERT INTO `auths` VALUES ('A270425uiq', '232015017', '$2y$10$mVcejy/PZzDKZyRAwZSPkedvUpEt72g9pSTShm5aWsSDWJ7EXebDO', 'mahasiswa', '2025-04-27 21:18:11', '2025-04-27 21:18:11', 0, 'avatar.png', 0, NULL, 'IMRAN NURHAKIM', 70, '232015017@uts.ac.id');
INSERT INTO `auths` VALUES ('A270425Nox', '232015070', '$2y$10$a7HlnkdD.NIgHbxO.jxbLePuFI1x/WkBzjC90Hzz9txe0yXiS7SGe', 'mahasiswa', '2025-04-27 21:18:11', '2025-04-27 21:18:11', 0, 'avatar.png', 0, NULL, 'Isnaini Aprilla', 71, '232015070@uts.ac.id');
INSERT INTO `auths` VALUES ('A2704252xX', '232015058', '$2y$10$LjZSQGBHT3QYtTgDS112IO1qbJ.5nLWr4bl/alNfnMNtPUP4IANre', 'mahasiswa', '2025-04-27 21:18:11', '2025-04-27 21:18:11', 0, 'avatar.png', 0, NULL, 'M. Syarif Hidayatullah', 72, '232015058@uts.ac.id');
INSERT INTO `auths` VALUES ('A270425HA7', '231015063', '$2y$10$xxwD2uCY6TVFY2.3FNZVe.OLiYf2R7Kywgys4.TUTVAepejxBAwcm', 'mahasiswa', '2025-04-27 21:18:11', '2025-04-27 21:18:11', 0, 'avatar.png', 0, NULL, 'SYAFRUDDIN', 73, '231015063@uts.ac.id');
INSERT INTO `auths` VALUES ('A270425iNE', '428068802', '$2y$10$DwKIq7p4u.TSu7FzJmvbGOYJmnlqzOqcPfh.yOgmaIszwwV4d7uVm', 'dosen', '2025-04-27 22:10:20', '2025-04-27 22:10:20', 0, 'avatar.png', 0, NULL, 'DR. ZULKIEFLIMANSYAH, M.Sc', 74, '428068802@uts.ac.id');
INSERT INTO `auths` VALUES ('A270425yLi', '428068803', '$2y$10$ioS5yedZpI00hc0woU9aheJriTW10G9XJxLrHHSXaEAsJXBenCfSu', 'dosen', '2025-04-27 22:10:20', '2025-04-27 22:10:20', 0, 'avatar.png', 0, NULL, 'Dr. Ahmad Yamin, S.H., M.H', 75, '428068803@uts.ac.id');
INSERT INTO `auths` VALUES ('A270425cpC', '428068804', '$2y$10$0ee8kS5UC20PZoJb6ULgkOYqWAiEzlNn1P2styIIwBfkU24HqBtJe', 'dosen', '2025-04-27 22:10:20', '2025-04-27 22:10:20', 0, 'avatar.png', 0, NULL, 'Dr. Ahmad Yamin, S.H., M.H.', 76, '428068804@uts.ac.id');
INSERT INTO `auths` VALUES ('A270425rGx', '428068805', '$2y$10$fdKTKLKsT0ruCybGdZ28LOny5LkpcQeLCx88tdhs1svZiZ50szBkS', 'dosen', '2025-04-27 22:10:20', '2025-04-27 22:10:20', 0, 'avatar.png', 0, NULL, 'DR. Ahmad Yamin, SH, MH', 77, '428068805@uts.ac.id');
INSERT INTO `auths` VALUES ('A270425lGI', '428068807', '$2y$10$LZQl9DqcNkoJ7RlhMwaJleAZaAaogJMiOk9A01U3FoslopVm/ELGu', 'dosen', '2025-04-27 22:10:20', '2025-04-27 22:10:20', 0, 'avatar.png', 0, NULL, 'DR. AHMAD YAMIN, SH., MH', 78, '428068807@uts.ac.id');
INSERT INTO `auths` VALUES ('A270425z0x', '428068808', '$2y$10$.p.O7J7DRc5UM..VLVGaHe.0N/pMyG/UXnhBa40V4MqDM8iHPb1rO', 'dosen', '2025-04-27 22:10:20', '2025-04-27 22:10:20', 0, 'avatar.png', 0, NULL, 'Dr. Ahmad Yamin, SH., M.H', 79, '428068808@uts.ac.id');
INSERT INTO `auths` VALUES ('A270425vXk', '428068809', '$2y$10$4eYsdRvSXupU6IOxhdA9w..aRhwtcHzrha9hU4NyZZox3qeNSGk2i', 'dosen', '2025-04-27 22:10:21', '2025-04-27 22:10:21', 0, 'avatar.png', 0, NULL, 'Dr. Ahmad Yamin, SH.,M.H', 80, '428068809@uts.ac.id');
INSERT INTO `auths` VALUES ('A270425hZr', '428068811', '$2y$10$vKq60nr8ssOflgQgncbjjOLMgIi4DBFgfi57MwNhrQZaqSbmAPG4.', 'dosen', '2025-04-27 22:10:21', '2025-04-27 22:10:21', 0, 'avatar.png', 0, NULL, 'DR. ZULKIEFLIMANSYAH,M.Sc', 81, '428068811@uts.ac.id');
INSERT INTO `auths` VALUES ('A270425sDh', '428068812', '$2y$10$917aJYmniUV7eanVKL3f3Okz84JIvrh3zCAyXAZ5gdDGAKuRLBiMO', 'dosen', '2025-04-27 22:10:21', '2025-04-27 22:10:21', 0, 'avatar.png', 0, NULL, 'Dr. Umar, S.Pd., M.Pd. ', 82, '428068812@uts.ac.id');
INSERT INTO `auths` VALUES ('A270425nVF', '428068813', '$2y$10$APhCIr9jpib4Sx6uXO7fuOyWv7bJUiLG2VmSVZug.njikoak9tPaW', 'dosen', '2025-04-27 22:10:21', '2025-04-27 22:10:21', 0, 'avatar.png', 0, NULL, 'Dr. Umar., S.Pd., M.Pd.', 83, '428068813@uts.ac.id');
INSERT INTO `auths` VALUES ('A270425tEb', '428068814', '$2y$10$Ug3LtAIDUXainhHNfaNc2.g41mTdmnrOnfuO9OM57CmhctmLzD6em', 'dosen', '2025-04-27 22:10:21', '2025-04-27 22:10:21', 0, 'avatar.png', 0, NULL, 'DR. AHMAD YAMIN, SH., MH  ', 84, '428068814@uts.ac.id');
INSERT INTO `auths` VALUES ('A2704254ZZ', '428068815', '$2y$10$DYjNG7u8tgXVUEKJbRPcn.nu9STGQtRxlHE0xuHjdGQExrG0Aa4gG', 'dosen', '2025-04-27 22:10:21', '2025-04-27 22:10:21', 0, 'avatar.png', 0, NULL, 'Dr. Ahmad Yamin,S.H,.M.H', 85, '428068815@uts.ac.id');
INSERT INTO `auths` VALUES ('A270425e5z', '428068816', '$2y$10$ISfd7UZ.z.Et/QZhHIWLQeTOIOu5byu3w9Tke7jHbGS7TEJpoOfW.', 'dosen', '2025-04-27 22:10:21', '2025-04-27 22:10:21', 0, 'avatar.png', 0, NULL, 'Dr. ZULKIFLIMANSYAH, M.Sc', 86, '428068816@uts.ac.id');
INSERT INTO `auths` VALUES ('A270425Ke7', '428068817', '$2y$10$emRSDJlgJvHsxx1dHsc.Zep9p1lFkQJiE2SmMuo7PBBm35try2eFq', 'dosen', '2025-04-27 22:10:21', '2025-04-27 22:10:21', 0, 'avatar.png', 0, NULL, 'Dr.Umar.S.Pd.,M.Pd', 87, '428068817@uts.ac.id');
INSERT INTO `auths` VALUES ('A270425yI4', '428068818', '$2y$10$I7GUj84G6DUTSLjm022Kz./Wz4KB82sryrXl5alv72kUm6HJ7t0GG', 'dosen', '2025-04-27 22:10:22', '2025-04-27 22:10:22', 0, 'avatar.png', 0, NULL, 'Dr. Supriyadi, S.HI., M.HI', 88, '428068818@uts.ac.id');
INSERT INTO `auths` VALUES ('A270425KjT', '428068819', '$2y$10$DZ2O4eQIl6puJsdT.1r/4ur7jNjgOAtm9xjQx3lt9vE2K1pz7CXAe', 'dosen', '2025-04-27 22:10:22', '2025-04-27 22:10:22', 0, 'avatar.png', 0, NULL, 'Dr. Umar, S.Pd., M.Pd', 89, '428068819@uts.ac.id');
INSERT INTO `auths` VALUES ('A2704250s9', '428068820', '$2y$10$9DyCgXcCIbS6PDlWAzPhce/JyhbdJqyPEtaZBH5AG3KLyZBqa9mte', 'dosen', '2025-04-27 22:10:22', '2025-04-27 22:10:22', 0, 'avatar.png', 0, NULL, 'Dr Yolli Eka Putri, M.M', 90, '428068820@uts.ac.id');
INSERT INTO `auths` VALUES ('A270425bTd', '428068821', '$2y$10$hbRH9pFX9Loa/5ZdSHwYOet6rKCqN28aAxP.FvuIaLsCv9EOBCCvy', 'dosen', '2025-04-27 22:10:22', '2025-04-27 22:10:22', 0, 'avatar.png', 0, NULL, 'Dr.zulkieflimansyah', 91, '428068821@uts.ac.id');
INSERT INTO `auths` VALUES ('A270425aOb', '428068823', '$2y$10$nBF9v1IJ0i0kKSYlniMpnOvv83mNfFA0zXdvjbrFYkNO3h/TTcEju', 'dosen', '2025-04-27 22:10:22', '2025-04-27 22:10:22', 0, 'avatar.png', 0, NULL, 'Dr.Harjito ', 92, '428068823@uts.ac.id');
INSERT INTO `auths` VALUES ('A2704254di', '428068824', '$2y$10$V4nlsX/eWFaVz5O/tUMnQuDpqNuWLGrrk2bdElI4ZJzsfsQ.40QBK', 'dosen', '2025-04-27 22:10:22', '2025-04-27 22:10:22', 0, 'avatar.png', 0, NULL, 'Dr. Suparman, S.Pd.,M.Pd.B.I', 93, '428068824@uts.ac.id');
INSERT INTO `auths` VALUES ('A270425ceK', '428068826', '$2y$10$LXVj3VOvzOm.9JXztN15wOMbrc6p2zHlUjW75HmeyVTZTCZ3U7Xrq', 'dosen', '2025-04-27 22:10:22', '2025-04-27 22:10:22', 0, 'avatar.png', 0, NULL, 'Dr. Ir. H. Muhammad Saleh M,Si', 94, '428068826@uts.ac.id');
INSERT INTO `auths` VALUES ('A270425Nar', '428068827', '$2y$10$GBRdJUS7yCE040Q.6VpSEugf5xPQhLzxwFAbJmZbdLGNWqkE.GNzO', 'dosen', '2025-04-27 22:10:23', '2025-04-27 22:10:23', 0, 'avatar.png', 0, NULL, 'Dr. Radyum Ikono, M.Eng', 95, '428068827@uts.ac.id');
INSERT INTO `auths` VALUES ('A270425D7S', '428068828', '$2y$10$O0jKw/A4SoJS/47HwzE2qeKTrtKYoSr6bpx8lh30pcOO4sPr9/ivO', 'dosen', '2025-04-27 22:10:23', '2025-04-27 22:10:23', 0, 'avatar.png', 0, NULL, 'Dr. Yolli Eka Putri,M.M', 96, '428068828@uts.ac.id');
INSERT INTO `auths` VALUES ('A270425QUq', '428068829', '$2y$10$5AQ8rR8t5.X0VSdBgMEPu.J2KgnfveaU9JreQWidyz6ysUxdtVQYm', 'dosen', '2025-04-27 22:10:23', '2025-04-27 22:10:23', 0, 'avatar.png', 0, NULL, 'Dr. SUPARMAN, S.Pd., M.Pd.B.I.', 97, '428068829@uts.ac.id');
INSERT INTO `auths` VALUES ('A270425kD8', '428068830', '$2y$10$DA8h1IxntqCAIWP34xP11e3xj0dsMu330h2LsrKl1Pndq/dL8I8L6', 'dosen', '2025-04-27 22:10:23', '2025-04-27 22:10:23', 0, 'avatar.png', 0, NULL, 'Dr. Dedy Heriwibowo, M.Si', 98, '428068830@uts.ac.id');
INSERT INTO `auths` VALUES ('A270425W9v', '428068831', '$2y$10$76k6YWXAV4.dy5UACT3yHe1zkpvcr/CwdgzYDJySJfq4Ou6tyQR8C', 'dosen', '2025-04-27 22:10:23', '2025-04-27 22:10:23', 0, 'avatar.png', 0, NULL, 'Dr. Supriyadi, S.HI., M.HI.', 99, '428068831@uts.ac.id');
INSERT INTO `auths` VALUES ('A270425dps', '428068832', '$2y$10$MTg3oyK1LEcAiqU34xvyb.kWY.yNQnignEC0mCSLsckgb.O.yZYdq', 'dosen', '2025-04-27 22:10:23', '2025-04-27 22:10:23', 0, 'avatar.png', 0, NULL, 'Dr. Dianto.,SH.,MH', 100, '428068832@uts.ac.id');
INSERT INTO `auths` VALUES ('A270425uht', '428068833', '$2y$10$OfqevKkpiBn8gSpsLa7GUOs3SHr7EhNjv0QdLwsUhVgnOsYNq0B2q', 'dosen', '2025-04-27 22:10:23', '2025-04-27 22:10:23', 0, 'avatar.png', 0, NULL, 'Dr. Umar, S.Pd., M.Pd.', 101, '428068833@uts.ac.id');
INSERT INTO `auths` VALUES ('A2704251Ny', '428068834', '$2y$10$pZYEiJm3KWMfdesj5vffeuDEvFJEv/zyM0xGnddDcM4pK2tCz/1d6', 'dosen', '2025-04-27 22:10:23', '2025-04-27 22:10:23', 0, 'avatar.png', 0, NULL, 'Dr. Harjito', 102, '428068834@uts.ac.id');
INSERT INTO `auths` VALUES ('A270425vZD', '428068835', '$2y$10$rOBk/dx/V0vYeRnJsAVruu08tGtDdAVVdiueydwLxhNkekGxVXrhi', 'dosen', '2025-04-27 22:10:24', '2025-04-27 22:10:24', 0, 'avatar.png', 0, NULL, 'Rusmin Nurjadin, M.Pd', 103, '428068835@uts.ac.id');
INSERT INTO `auths` VALUES ('A270425B1l', '428068836', '$2y$10$fR7ScoYO5RW/zBjZw6cYue3L/ZnRatOjYz6/obj738pbvBePJZUW6', 'dosen', '2025-04-27 22:10:24', '2025-04-27 22:10:24', 0, 'avatar.png', 0, NULL, 'Najamuddin, M.Pd', 104, '428068836@uts.ac.id');
INSERT INTO `auths` VALUES ('A270425egi', '428068837', '$2y$10$YpCL.8xZlFA6lqA2CiL8Purys/79HoMJFjfpq1W.bK7XpcK2lDHIO', 'dosen', '2025-04-27 22:10:24', '2025-04-27 22:10:24', 0, 'avatar.png', 0, NULL, 'Dedy Dharmawansyah, S.T., M.T.', 105, '428068837@uts.ac.id');
INSERT INTO `auths` VALUES ('A270425vc9', '428068838', '$2y$10$QfXIRUgf/kkWr/ZQoaPC6usb2qLQmQ0U2uRIhE5NF8ZxB.98m03B6', 'dosen', '2025-04-27 22:10:24', '2025-04-27 22:10:24', 0, 'avatar.png', 0, NULL, 'Aldi Aprimsyah, S.IP, M. IP', 106, '428068838@uts.ac.id');
INSERT INTO `auths` VALUES ('A2704250OH', '428068839', '$2y$10$/U3oEybAeOsyU3dAHH4Bbui6DwQbWm8Clfdf0XKRUMca861f7Moly', 'dosen', '2025-04-27 22:10:24', '2025-04-27 22:10:24', 0, 'avatar.png', 0, NULL, 'ADI ARDIANSYAH, S.TP., M.T', 107, '428068839@uts.ac.id');
INSERT INTO `auths` VALUES ('A270425GDG', '428068840', '$2y$10$xt/FPD8DoTOc5KazJs9qW.ouzgpOK9CH.3.6L/pUi7atZQNmXAXIS', 'dosen', '2025-04-27 22:10:24', '2025-04-27 22:10:24', 0, 'avatar.png', 0, NULL, 'Dr. Ahmad Yamin, SH.,MH', 108, '428068840@uts.ac.id');
INSERT INTO `auths` VALUES ('A270425KVu', '428068841', '$2y$10$V2N8udaTXv1lX7kBkJWsNeaAAefKR.5n0xADwkRj6x1LfF7RyvEqq', 'dosen', '2025-04-27 22:10:24', '2025-04-27 22:10:24', 0, 'avatar.png', 0, NULL, 'DR. YOLLI EKA PUTRI, M.M', 109, '428068841@uts.ac.id');
INSERT INTO `auths` VALUES ('A2704254s6', '428068842', '$2y$10$kKkD8oS.Pw0COXO5edCSveI5d6sdDScUZVvu1gZJa3CBC.XB2Ydvq', 'dosen', '2025-04-27 22:10:25', '2025-04-27 22:10:25', 0, 'avatar.png', 0, NULL, 'NOVA ADHITYA ANANDA, S.E.,M.M.', 110, '428068842@uts.ac.id');
INSERT INTO `auths` VALUES ('A270425Zsu', '428068843', '$2y$10$mgnhTx6tUV7.EeKk/GL9FOJfd.M77EqoODnn7Y2CiWmXFCpvnqgYu', 'dosen', '2025-04-27 22:10:25', '2025-04-27 22:10:25', 0, 'avatar.png', 0, NULL, 'Tomi Dwi Cahyono, S.Kom., M.M.', 111, '428068843@uts.ac.id');
INSERT INTO `auths` VALUES ('A270425NXb', '428068844', '$2y$10$r9tVDgR6wQtIUu7bhOQUT.qdZhJllmFgxzfQAx5jjbeVq.jC3xMMG', 'dosen', '2025-04-27 22:10:25', '2025-04-27 22:10:25', 0, 'avatar.png', 0, NULL, 'Najamudin, S.Pd., M.Pd', 112, '428068844@uts.ac.id');
INSERT INTO `auths` VALUES ('A270425Xxv', '428068845', '$2y$10$lf0AwgUdJHDdOnUUw/XyluHy0C0xHJ/uo9bewLcG3sEZ7ABv0/Kfe', 'dosen', '2025-04-27 22:10:25', '2025-04-27 22:10:25', 0, 'avatar.png', 0, NULL, 'GEATRIANA DEWI, S.H., M.H', 113, '428068845@uts.ac.id');
INSERT INTO `auths` VALUES ('A270425D07', '428068846', '$2y$10$.LRvrGTd0JKPfbD8RIg4Ee1hJeOsNsI.wVSkNH17UUyOudTnBTTJy', 'dosen', '2025-04-27 22:10:25', '2025-04-27 22:10:25', 0, 'avatar.png', 0, NULL, 'Mietra Anggara, ST.,MT', 114, '428068846@uts.ac.id');
INSERT INTO `auths` VALUES ('A270425ern', '428068847', '$2y$10$inWbdeZKaHAH884PaR.4UOxl/erVZbWK2pUWYh4l8sIjg8bgTRUEG', 'dosen', '2025-04-27 22:10:25', '2025-04-27 22:10:25', 0, 'avatar.png', 0, NULL, 'Dr. Ahmad Yamin, S.H.,M.H.', 115, '428068847@uts.ac.id');
INSERT INTO `auths` VALUES ('A270425odm', '428068848', '$2y$10$nMoJQaNXz57XLoTBU93UI.OiTQM4Nz6FSiM/CwkRTi585JeZRGUha', 'dosen', '2025-04-27 22:10:25', '2025-04-27 22:10:25', 0, 'avatar.png', 0, NULL, 'DR. AHMAD YAMIN,SH.,MH', 116, '428068848@uts.ac.id');
INSERT INTO `auths` VALUES ('A270425eqk', '428068849', '$2y$10$LooM88QQwBwpbW/xgJ.tk./snl5rfBVcCm66ZN4hJqYjyzR0pQDku', 'dosen', '2025-04-27 22:10:25', '2025-04-27 22:10:25', 0, 'avatar.png', 0, NULL, 'Dr. Muammar Khadafie, M.Pd.i ', 117, '428068849@uts.ac.id');
INSERT INTO `auths` VALUES ('A270425tGH', '428068850', '$2y$10$LRfDgD2wMuD.Rzsqk12Y.ewvIvlmlmnmcC.Cs6c/koKz/BB4rrOHq', 'dosen', '2025-04-27 22:10:26', '2025-04-27 22:10:26', 0, 'avatar.png', 0, NULL, 'Dr. Muammar Khadafie., M.Pd.I ', 118, '428068850@uts.ac.id');
INSERT INTO `auths` VALUES ('A270425njD', '428068852', '$2y$10$F3TTIqWbMWdaYT6MmqdOmO1CAJu4aWPNP6g3Zlga42HwuRCirf9DK', 'dosen', '2025-04-27 22:10:26', '2025-04-27 22:10:26', 0, 'avatar.png', 0, NULL, 'HANIFA SRI NURYANI, S.E.,M.M.', 119, '428068852@uts.ac.id');
INSERT INTO `auths` VALUES ('A2704250w5', '428068853', '$2y$10$mrXDhZflC3IbAEAhhpmXi.Qjfgr8mDp76sDC5qhIe0Y0K6rBXE.Oe', 'dosen', '2025-04-27 22:10:26', '2025-04-27 22:10:26', 0, 'avatar.png', 0, NULL, 'Geatriana Dewi,S.H.,M.H', 120, '428068853@uts.ac.id');
INSERT INTO `auths` VALUES ('A270425QzU', '428068854', '$2y$10$99UkBlsWFhK3Inyo9P7jnu8vAtW.NFXaot/1cju4/9Pv5bPqMO3XO', 'dosen', '2025-04-27 22:10:26', '2025-04-27 22:10:26', 0, 'avatar.png', 0, NULL, 'Dr. AHMAD YAMIN, SH., MH.', 121, '428068854@uts.ac.id');
INSERT INTO `auths` VALUES ('A270425Vro', '428068855', '$2y$10$xNGZTqk.ca7LmwuScPpyvePfnzVIlmyRe88Ylk8sjIrFRdmP0PP2e', 'dosen', '2025-04-27 22:10:26', '2025-04-27 22:10:26', 0, 'avatar.png', 0, NULL, 'Anwar, S. Pd, M.Pd', 122, '428068855@uts.ac.id');
INSERT INTO `auths` VALUES ('A270425pQH', '428068856', '$2y$10$ZcZFp7Jg883TlIdcWmlQquwqI9xSc529hqMwXVQCZ6cjRQJVhvx/O', 'dosen', '2025-04-27 22:10:26', '2025-04-27 22:10:26', 0, 'avatar.png', 0, NULL, 'Subari, M.Pd', 123, '428068856@uts.ac.id');
INSERT INTO `auths` VALUES ('A270425aJv', '428068857', '$2y$10$0wiCBDzG2c3iifbBPOxj7eZxyLN2/x.Bk2l5drhSiHqn5e06.rAwG', 'dosen', '2025-04-27 22:10:26', '2025-04-27 22:10:26', 0, 'avatar.png', 0, NULL, 'ANWAR, S. Pd., M. Pd', 124, '428068857@uts.ac.id');
INSERT INTO `auths` VALUES ('A270425aYO', '428068858', '$2y$10$XwXC/wvkpjOt1Q6xaxi3Ruzr8oGaT/0A5ExscmYVvtMH2H7wl2eXW', 'dosen', '2025-04-27 22:10:27', '2025-04-27 22:10:27', 0, 'avatar.png', 0, NULL, 'Subari, S.Pd., M.Pd', 125, '428068858@uts.ac.id');
INSERT INTO `auths` VALUES ('A270425vz1', '428068859', '$2y$10$T5rWn93URSeZvAHc4MHJPeA0I3cgojT6aO2F2P3Sc54g3wAZM3c7y', 'dosen', '2025-04-27 22:10:27', '2025-04-27 22:10:27', 0, 'avatar.png', 0, NULL, 'Najamudin,M.Pd', 126, '428068859@uts.ac.id');
INSERT INTO `auths` VALUES ('A270425I4q', '428068860', '$2y$10$DGzL3OH4y7oDFbW.HUPBFOEvZ21xQEnE86JSaqHC.xabn0RYyNLkm', 'dosen', '2025-04-27 22:10:27', '2025-04-27 22:10:27', 0, 'avatar.png', 0, NULL, 'Dr. Muammar Khadafie, M.Pd.I.', 127, '428068860@uts.ac.id');
INSERT INTO `auths` VALUES ('A270425wKX', '428068861', '$2y$10$V35BW2LEOUDIrJNdq0Y3POFq2Ut0DrVPLygQC.SWzZOy4QuKjfPNq', 'dosen', '2025-04-27 22:10:27', '2025-04-27 22:10:27', 0, 'avatar.png', 0, NULL, 'Lukmanul Hakim,M.Si', 128, '428068861@uts.ac.id');
INSERT INTO `auths` VALUES ('A270425MpJ', '428068862', '$2y$10$jArkHG2x2Tpv8Am.uUYq3e1.nNzLRAQmbO4RDdMhIlUEH1E1JU9yS', 'dosen', '2025-04-27 22:10:27', '2025-04-27 22:10:27', 0, 'avatar.png', 0, NULL, 'Dr. Muamar Khadafie,.M.Pd.I', 129, '428068862@uts.ac.id');
INSERT INTO `auths` VALUES ('A270425aBC', '428068863', '$2y$10$aAvYikKN7wOhS6APL1iG7.grYRFh4yxGWTGznfVCuavbpi69zO30e', 'dosen', '2025-04-27 22:10:27', '2025-04-27 22:10:27', 0, 'avatar.png', 0, NULL, 'Fitriah Permata Citra, M.E', 130, '428068863@uts.ac.id');
INSERT INTO `auths` VALUES ('A2704256rz', '428068864', '$2y$10$vdZq.EXxj85nVwp5MrbaB.egkG8ST.6BtUZQRqX2yFH69RZTHeOFK', 'dosen', '2025-04-27 22:10:27', '2025-04-27 22:10:27', 0, 'avatar.png', 0, NULL, 'Dr. Muammar Khadafie, M.Pd.', 131, '428068864@uts.ac.id');
INSERT INTO `auths` VALUES ('A270425DtX', '428068865', '$2y$10$xLesrxXrCrAnyjP34nqui.A74QuwWOOAe3Azj9fCgknWmnDXpkMby', 'dosen', '2025-04-27 22:10:27', '2025-04-27 22:10:27', 0, 'avatar.png', 0, NULL, 'Wiwik Surya Utami, S.S, M.Pd', 132, '428068865@uts.ac.id');
INSERT INTO `auths` VALUES ('A270425Ekk', '428068866', '$2y$10$RsusjwhNjZqDeGqO9y6Hyu1LeNMNc.t32eHRD6LF9CayBtnIe914G', 'dosen', '2025-04-27 22:10:28', '2025-04-27 22:10:28', 0, 'avatar.png', 0, NULL, 'Dr.ahmad yamin', 133, '428068866@uts.ac.id');
INSERT INTO `auths` VALUES ('A270425s0x', '428068868', '$2y$10$ZTO0oZ3p7s4txkxu5sr6J.s/HV3C/3l6uYOcOwD1JpAW/MfapFh36', 'dosen', '2025-04-27 22:10:28', '2025-04-27 22:10:28', 0, 'avatar.png', 0, NULL, 'Adi Ardiyansyah, S.TP.,M.T', 134, '428068868@uts.ac.id');
INSERT INTO `auths` VALUES ('A270425Kju', '428068869', '$2y$10$mJoMCWHDB6fNDZLsnPpWHutS4cUM5aAUAjGRR2Zq.UzFLLTCfWWXy', 'dosen', '2025-04-27 22:10:28', '2025-04-27 22:10:28', 0, 'avatar.png', 0, NULL, 'Supriadi, S.Pd.,M.Ed', 135, '428068869@uts.ac.id');
INSERT INTO `auths` VALUES ('A2704250Z5', '428068871', '$2y$10$5EUZe3Y9NBnZ5132kkw4HevTPA0beLij4q5iumUIfZG7xovqz4lXy', 'dosen', '2025-04-27 22:10:28', '2025-04-27 22:10:28', 0, 'avatar.png', 0, NULL, 'Husni  S,Pt.,M.Si', 136, '428068871@uts.ac.id');
INSERT INTO `auths` VALUES ('A270425XnW', '428068872', '$2y$10$xPux1VPq1AlU2uBJ9ysTSucn5iY0dAnRPT/f8r5Rpl5DYBIz.iWRO', 'dosen', '2025-04-27 22:10:28', '2025-04-27 22:10:28', 0, 'avatar.png', 0, NULL, 'Supriadi, S.Pd, M.Ed', 137, '428068872@uts.ac.id');
INSERT INTO `auths` VALUES ('A2704258M6', '428068873', '$2y$10$n1s9tdt98L5CwVsLNacorOujisB33CJkvMwHBSqL1NTvDB6ERkZbS', 'dosen', '2025-04-27 22:10:28', '2025-04-27 22:10:28', 0, 'avatar.png', 0, NULL, 'Junaedi, S.Pd., M.Pd.', 138, '428068873@uts.ac.id');
INSERT INTO `auths` VALUES ('A2704256GV', '428068874', '$2y$10$yDGeE1G.j7sJ4OQgubTEOuNnT4rXQJuF0JgDUSA3Y70.YLPrG6SMK', 'dosen', '2025-04-27 22:10:28', '2025-04-27 22:10:28', 0, 'avatar.png', 0, NULL, 'Diah Anggraini Hasrani, M.Si ', 139, '428068874@uts.ac.id');
INSERT INTO `auths` VALUES ('A270425YRJ', '428068875', '$2y$10$.oP/hsqSPAXDfbNVGU0vm.4dB5r4nM8Oh771O1qTPJ2cTqKMyEqpW', 'dosen', '2025-04-27 22:10:29', '2025-04-27 22:10:29', 0, 'avatar.png', 0, NULL, 'SUKARDDIN, M.Pd', 140, '428068875@uts.ac.id');
INSERT INTO `auths` VALUES ('A270425ixn', '428068876', '$2y$10$2CbXDHDell3LELN7lLn4OuinbpVfoCzcJwLZ.6xMM1PGiip5C6gxm', 'dosen', '2025-04-27 22:10:29', '2025-04-27 22:10:29', 0, 'avatar.png', 0, NULL, 'Shinta Esabella, S.T., M.TI', 141, '428068876@uts.ac.id');
INSERT INTO `auths` VALUES ('A270425s62', '428068877', '$2y$10$zG7CzfqupIlf47Jo7u.mXONjPAymSrNF3ktT8l3l0xLGKJtKhJdNu', 'dosen', '2025-04-27 22:10:29', '2025-04-27 22:10:29', 0, 'avatar.png', 0, NULL, 'Husni, S.Pt., M.Si.', 142, '428068877@uts.ac.id');
INSERT INTO `auths` VALUES ('A2704259tS', '428068878', '$2y$10$WZArFtSglzZY9er/p9/Squ37e1ymyn6QTu4NFRjxB/OL45d6H6Umy', 'dosen', '2025-04-27 22:10:29', '2025-04-27 22:10:29', 0, 'avatar.png', 0, NULL, 'Syamsul Bahtiar, S.,Si.,M.Si', 143, '428068878@uts.ac.id');
INSERT INTO `auths` VALUES ('A270425ABV', '428068879', '$2y$10$oHJuTF0Zh6kgHcMAHfKe5uGzzC6nsPy8NpWMZPLu67Dj.wHVi8hM6', 'dosen', '2025-04-27 22:10:29', '2025-04-27 22:10:29', 0, 'avatar.png', 0, NULL, 'Wawan Hermansyah, S.Pd., M.Pd', 144, '428068879@uts.ac.id');
INSERT INTO `auths` VALUES ('A270425oML', '428068880', '$2y$10$J30yBaIq9g.g0yBYBwbES...DFAgFxBP2qiUdAIZGmp1Zn9Hp0y16', 'dosen', '2025-04-27 22:10:29', '2025-04-27 22:10:29', 0, 'avatar.png', 0, NULL, 'Dr. Ahmad Yamin, SH.,MH.', 145, '428068880@uts.ac.id');
INSERT INTO `auths` VALUES ('A270425Io7', '428068882', '$2y$10$pUjlzt/REtdQ8MKiFdwiwOLVWIs5GVhVs1C2.AV2UEdgOo4Ol614W', 'dosen', '2025-04-27 22:10:29', '2025-04-27 22:10:29', 0, 'avatar.png', 0, NULL, 'Husni, S.Pt.', 146, '428068882@uts.ac.id');
INSERT INTO `auths` VALUES ('A140525Bgx', '22008034', '$2y$10$X3OYUvdGStbKm.TfgxAOzuLtCFlSGGe1CkvdLXVnAe3u4kuMfQ7nO', 'mahasiswa', '2025-05-14 10:33:19', '2025-05-14 10:33:19', 0, 'avatar.png', 0, NULL, 'Siti Purnawati', 150, '22008034@uts.ac.id');
INSERT INTO `auths` VALUES ('A1405251BT', '22519568', '$2y$10$TCHw5NNb0oFIKwIGqCtzUukBCsUfYxrfB63GI3PnyTb52XWmFQzem', 'mahasiswa', '2025-05-14 10:33:19', '2025-05-14 10:33:19', 0, 'avatar.png', 0, NULL, 'Ir. Sarah Hutasoit, S.Pt', 151, '22519568@uts.ac.id');
INSERT INTO `auths` VALUES ('A1405251Il', '22559282', '$2y$10$.ZW7su9gWq76qDbI/5499urBqvsSrZs24eW5rplV44qZPJrKK6BJW', 'mahasiswa', '2025-05-14 10:33:20', '2025-05-14 10:33:20', 0, 'avatar.png', 0, NULL, 'dr. Fitriani Setiawan', 154, '22559282@uts.ac.id');
INSERT INTO `auths` VALUES ('A140525ius', '22041880', '$2y$10$9W.L/HoWaGqBVBn557hDiukGEqLfNCZG9mBkWe.UP2wo8D3MQ7lzS', 'mahasiswa', '2025-05-14 10:33:20', '2025-05-14 10:33:20', 0, 'avatar.png', 0, NULL, 'Raditya Usada', 155, '22041880@uts.ac.id');
INSERT INTO `auths` VALUES ('A140525EfV', '22624765', '$2y$10$587.ORyviv3s3bezwLRUQ.VYVVpqbQf3ST5o7gAycOAmI9CTF5XwC', 'mahasiswa', '2025-05-14 10:33:20', '2025-05-14 10:33:20', 0, 'avatar.png', 0, NULL, 'dr. Widya Prastuti, S.Psi', 157, '22624765@uts.ac.id');
INSERT INTO `auths` VALUES ('A1405255pa', '22291246', '$2y$10$JOLcMcYJN3tY30ugiZB/.eokP5d02LHgf/AVUxHsX3scH4QjeEUhC', 'mahasiswa', '2025-05-14 10:33:20', '2025-05-14 10:33:20', 0, 'avatar.png', 0, NULL, 'Ida Handayani', 158, '22291246@uts.ac.id');
INSERT INTO `auths` VALUES ('A1405250s7', '22413624', '$2y$10$p2uKBJYbnufZeFcU3D4diuju.WkJ1LtyCX5Hs58jl/1qp9FW1hF/O', 'mahasiswa', '2025-05-14 10:33:20', '2025-05-14 10:33:20', 0, 'avatar.png', 0, NULL, 'Carla Firgantoro', 159, '22413624@uts.ac.id');
INSERT INTO `auths` VALUES ('A140525vmh', '22821308', '$2y$10$Msbwx.YN7k9du5DPrFBqrO8L96XwBTXOtjwjMRzrqPw/G.zSDIXXq', 'mahasiswa', '2025-05-14 10:33:20', '2025-05-14 10:33:20', 0, 'avatar.png', 0, NULL, 'Cut Zamira Halim, S.E.', 160, '22821308@uts.ac.id');
INSERT INTO `auths` VALUES ('A1405257Mv', '22644770', '$2y$10$M84aZiYnhEfy1sWBOKdjzeVIkDPOfcyTwJFLSQvI9oi9zbBbbRr1u', 'mahasiswa', '2025-05-14 10:33:21', '2025-05-14 10:33:21', 0, 'avatar.png', 0, NULL, 'Tgk. Radika Zulkarnain, S.Gz', 161, '22644770@uts.ac.id');
INSERT INTO `auths` VALUES ('A140525U4s', '22408435', '$2y$10$6H6jwU8rUqfbUdcTEF03M.ZYplycu.Tn20d.JYEki7B6zz7CLx.Wi', 'mahasiswa', '2025-05-14 10:33:21', '2025-05-14 10:33:21', 0, 'avatar.png', 0, NULL, 'Galak Handayani', 163, '22408435@uts.ac.id');
INSERT INTO `auths` VALUES ('A140525RHH', '22358851', '$2y$10$wAAcVudf.uDpRt7Povrrj.dGxANM5YmmurAA4Zxw/t1S.q3fmjU/e', 'mahasiswa', '2025-05-14 10:33:21', '2025-05-14 10:33:21', 0, 'avatar.png', 0, NULL, 'Zelda Hastuti', 165, '22358851@uts.ac.id');
INSERT INTO `auths` VALUES ('A1405250X7', '22507127', '$2y$10$g9Sim6zR18K832Sj2OREhexLJ5UIb4Cu3kPPE6N7AlZaCN1o2jyCe', 'mahasiswa', '2025-05-14 10:33:21', '2025-05-14 10:33:21', 0, 'avatar.png', 0, NULL, 'Hj. Gawati Waluyo', 167, '22507127@uts.ac.id');
INSERT INTO `auths` VALUES ('A1405256rg', '22549567', '$2y$10$FqXJ/YV/UjqUNVtZQLnGgug7M8t1KL1VkwV3m1Bg18g3aMz9Gugpi', 'mahasiswa', '2025-05-14 10:33:22', '2025-05-14 10:33:22', 0, 'avatar.png', 0, NULL, 'Abyasa Kuswoyo', 168, '22549567@uts.ac.id');
INSERT INTO `auths` VALUES ('A140525PKo', '22842548', '$2y$10$l2WVR9NT7n5YsJD/.WGIvOQ01BU.uFrkBdOE.mlAkWCHPJ8uREP1O', 'mahasiswa', '2025-05-14 10:33:22', '2025-05-14 10:33:22', 0, 'avatar.png', 0, NULL, 'Halima Winarsih', 171, '22842548@uts.ac.id');
INSERT INTO `auths` VALUES ('A140525fuC', '22054208', '$2y$10$shhn8nX7wpq08onwb/q3ROpM36z3Xbgrkg1FgVVYpT3wnwitBAjVa', 'mahasiswa', '2025-05-14 10:33:22', '2025-05-14 10:33:22', 0, 'avatar.png', 0, NULL, 'Sarah Budiyanto', 173, '22054208@uts.ac.id');
INSERT INTO `auths` VALUES ('A1405255GY', '22922190', '$2y$10$k3TSSsfyfdpKb.C5bOsMw.mT2ViHehVFLsgIGNht6RsCXLT3fz6aO', 'mahasiswa', '2025-05-14 10:33:22', '2025-05-14 10:33:22', 0, 'avatar.png', 0, NULL, 'R.A. Elvina Usamah, M.Pd', 174, '22922190@uts.ac.id');
INSERT INTO `auths` VALUES ('A1405251fr', '22095209', '$2y$10$VZtZl/ehSMD9sgzxCBEOheQnvgUGS.JYvsQsLvl6hg7lLgS9C4LcC', 'mahasiswa', '2025-05-14 10:33:23', '2025-05-14 10:33:23', 0, 'avatar.png', 0, NULL, 'Rachel Setiawan', 175, '22095209@uts.ac.id');
INSERT INTO `auths` VALUES ('A140525Lzr', '22552969', '$2y$10$2nBj/jMKBsIkKFCr3JwFNOXsfznvAokx8T9pls8m46TGieQv5u0nm', 'mahasiswa', '2025-05-14 10:33:23', '2025-05-14 10:33:23', 0, 'avatar.png', 0, NULL, 'Yani Permadi, S.Pt', 176, '22552969@uts.ac.id');
INSERT INTO `auths` VALUES ('A140525CWH', '22954406', '$2y$10$/P0YA/8Vl4eF9WlLZ6kJwuWloOQUFVaNHSgXltHktBzmmco5UvmVi', 'mahasiswa', '2025-05-14 10:33:23', '2025-05-14 10:33:23', 0, 'avatar.png', 0, NULL, 'drg. Rachel Purnawati', 177, '22954406@uts.ac.id');
INSERT INTO `auths` VALUES ('A1405250Hp', '22157001', '$2y$10$Vol4dp06w/twYdUGK5cncuJwbjPKJpC0qg6d1FE3a/jO68ebRrU2u', 'mahasiswa', '2025-05-14 10:33:23', '2025-05-14 10:33:23', 0, 'avatar.png', 0, NULL, 'Drs. Yani Wibisono, M.Pd', 179, '22157001@uts.ac.id');
INSERT INTO `auths` VALUES ('A140525AOr', '22410503', '$2y$10$1rR7v.J.0FrY1JBUIMVLc.QEDuCpqCWR0L.V7p1mjmntWzMTpKn4S', 'mahasiswa', '2025-05-14 10:33:23', '2025-05-14 10:33:23', 0, 'avatar.png', 0, NULL, 'Ade Manullang', 180, '22410503@uts.ac.id');
INSERT INTO `auths` VALUES ('A140525mnP', '22625286', '$2y$10$u5ABrJw88uW7uZnCQz8pLu45a3VEIT0o6W7uxC.E4Pjq.FdVO.rr2', 'mahasiswa', '2025-05-14 10:33:23', '2025-05-14 10:33:23', 0, 'avatar.png', 0, NULL, 'H. Luthfi Usamah, S.T.', 181, '22625286@uts.ac.id');
INSERT INTO `auths` VALUES ('A140525aEu', '22656428', '$2y$10$vLDoLrOw32A2Ym7xho3.huzGa/eDheuvXZdz7reB87OOQAc6xHM1G', 'mahasiswa', '2025-05-14 10:33:24', '2025-05-14 10:33:24', 0, 'avatar.png', 0, NULL, 'Dr. Luwes Hastuti, S.Pd', 182, '22656428@uts.ac.id');
INSERT INTO `auths` VALUES ('A140525cp5', '22772992', '$2y$10$su3DrRjsrw.XR5ZODb/VLeYCT54ksHpTIbBF5MLNyI8CiX/Rqa1g.', 'mahasiswa', '2025-05-14 10:33:24', '2025-05-14 10:33:24', 0, 'avatar.png', 0, NULL, 'H. Marsito Uyainah', 183, '22772992@uts.ac.id');
INSERT INTO `auths` VALUES ('A1405251b9', '22070462', '$2y$10$rM1UlyqAGPqV/nvyMAx0JOjx.864AYvbqhTVvasawHFHXwpzETgEi', 'mahasiswa', '2025-05-14 10:33:24', '2025-05-14 10:33:24', 0, 'avatar.png', 0, NULL, 'Kamaria Hutasoit', 185, '22070462@uts.ac.id');
INSERT INTO `auths` VALUES ('A140525eZD', '22671085', '$2y$10$bkHWy2Ez6k/Azhdo6JcYEOF/gjFuhb7kqr55w/C5Va5IO8pbddA0S', 'mahasiswa', '2025-05-14 10:33:24', '2025-05-14 10:33:24', 0, 'avatar.png', 0, NULL, 'Dimaz Rajasa', 186, '22671085@uts.ac.id');
INSERT INTO `auths` VALUES ('A140525RKg', '22694471', '$2y$10$vk5MY8UFHLhKhSXHx6ogwe/FwLS5VLp2tSG7EMfTZcXgvmyUz7AGW', 'mahasiswa', '2025-05-14 10:33:24', '2025-05-14 10:33:24', 0, 'avatar.png', 0, NULL, 'Hj. Ratna Handayani', 187, '22694471@uts.ac.id');
INSERT INTO `auths` VALUES ('A140525o26', '22557768', '$2y$10$blIWgi.Oii.cap/J6UITnOuHmvQhxYYY9Dfm2HGLJ53b2XRQeqFWG', 'mahasiswa', '2025-05-14 10:33:24', '2025-05-14 10:33:24', 0, 'avatar.png', 0, NULL, 'Hasna Hidayanto', 188, '22557768@uts.ac.id');
INSERT INTO `auths` VALUES ('A1405259bg', '22798845', '$2y$10$Kim/s3Uw7uKJn6HiCFaLWuxKv9kzJYiLOmEGKbC5WMUCsYSwenBNS', 'mahasiswa', '2025-05-14 10:33:24', '2025-05-14 10:33:24', 0, 'avatar.png', 0, NULL, 'Pia Nugroho', 189, '22798845@uts.ac.id');
INSERT INTO `auths` VALUES ('A1405250BR', '22405204', '$2y$10$XRz7zl5VIAEdfWFEqUYW3u4epUjIo/N9Ku9qiTy7523GDfqbCZopa', 'mahasiswa', '2025-05-14 10:33:25', '2025-05-14 10:33:25', 0, 'avatar.png', 0, NULL, 'R. Prakosa Yolanda', 192, '22405204@uts.ac.id');
INSERT INTO `auths` VALUES ('A140525dCO', '22505645', '$2y$10$n5VoVzGB9luvGsJ2rsveLOKwCXMyu.N./ps..MOBlsWR2NXWz3DUu', 'mahasiswa', '2025-05-14 10:33:25', '2025-05-14 10:33:25', 0, 'avatar.png', 0, NULL, 'Tantri Adriansyah, S.E.I', 193, '22505645@uts.ac.id');
INSERT INTO `auths` VALUES ('A1405258kh', '22007189', '$2y$10$BqFPJedXYi7YpvTUDbM7zOiE097Sgtoerlmqub8KwuOcE9mwnbKrO', 'mahasiswa', '2025-05-14 10:33:25', '2025-05-14 10:33:25', 0, 'avatar.png', 0, NULL, 'Nadia Lazuardi', 194, '22007189@uts.ac.id');
INSERT INTO `auths` VALUES ('A140525HLx', '22033322', '$2y$10$9mt65egQtRJOnOxc.JWlDeixut.IitXGXZ6epuuG9y8B1lJRIVO6K', 'mahasiswa', '2025-05-14 10:33:25', '2025-05-14 10:33:25', 0, 'avatar.png', 0, NULL, 'Aurora Hutapea', 196, '22033322@uts.ac.id');
INSERT INTO `auths` VALUES ('A140525JmS', '22257111', '$2y$10$.uH1w/afryTm9RzQ5tV6YuI8E5cZKgqEXyrbVyxeHco1PZzEVAQd6', 'mahasiswa', '2025-05-14 10:33:26', '2025-05-14 10:33:26', 0, 'avatar.png', 0, NULL, 'Ajiono Uwais', 197, '22257111@uts.ac.id');
INSERT INTO `auths` VALUES ('A1405254L2', '22564270', '$2y$10$HP66mYQJjwODrBZbWqbda.O4sbrGUswmdGrp4wu4hSlFY9LkFXDEO', 'mahasiswa', '2025-05-14 10:33:26', '2025-05-14 10:33:26', 0, 'avatar.png', 0, NULL, 'Unggul Dabukke, S.Kom', 198, '22564270@uts.ac.id');
INSERT INTO `auths` VALUES ('A140525IA2', '22238005', '$2y$10$JBWq.EVMpF4f76QzBYFvPeFtAZq5UF7FnTchATOA8X2CtXyz9er9O', 'mahasiswa', '2025-05-14 10:33:26', '2025-05-14 10:33:26', 0, 'avatar.png', 0, NULL, 'Rudi Wahyuni', 200, '22238005@uts.ac.id');
INSERT INTO `auths` VALUES ('A1405254SR', '22024109', '$2y$10$s6MtFA4EoD2tLKnuZpLIK./3PXA005RiT2HmYtgOSHe1b3quwO7Ru', 'mahasiswa', '2025-05-14 10:33:26', '2025-05-14 10:33:26', 0, 'avatar.png', 0, NULL, 'Cut Vicky Lailasari', 203, '22024109@uts.ac.id');
INSERT INTO `auths` VALUES ('A140525Jjw', '22265898', '$2y$10$sArhQi/..yMjOLijm/3h4ekz2tpuF/IKC33iF7bmSLwlu0y4DjzjG', 'mahasiswa', '2025-05-14 10:33:27', '2025-05-14 10:33:27', 0, 'avatar.png', 0, NULL, 'Clara Siregar', 204, '22265898@uts.ac.id');
INSERT INTO `auths` VALUES ('A140525aAB', '22300123', '$2y$10$ULoBalz3zrLL5Un6SLpWvewu60SYSzCiaySpAecvXHSziomSxrh1u', 'mahasiswa', '2025-05-14 10:33:27', '2025-05-14 10:33:27', 0, 'avatar.png', 0, NULL, 'R. Lasmono Usamah, S.E.I', 205, '22300123@uts.ac.id');
INSERT INTO `auths` VALUES ('A140525Bm4', '22139404', '$2y$10$gQGTYFnr5yL7WqPB2h1SXuIHUC7KvId1mntSu2XqMoQsuncP3nqPG', 'mahasiswa', '2025-05-14 10:33:27', '2025-05-14 10:33:27', 0, 'avatar.png', 0, NULL, 'Dr. Uda Kurniawan, M.Pd', 206, '22139404@uts.ac.id');
INSERT INTO `auths` VALUES ('A1405255XX', '22345348', '$2y$10$Mxg6A5Z4QqrXd.7BYBvxduPqsX10gROLdStItF1UuGv9D/piOHi1y', 'mahasiswa', '2025-05-14 10:33:27', '2025-05-14 10:33:27', 0, 'avatar.png', 0, NULL, 'Diana Yuniar', 207, '22345348@uts.ac.id');
INSERT INTO `auths` VALUES ('A140525Hso', '22639298', '$2y$10$IdeX3ZJvD5XbDlwwUm2JC.YRAQtgAO/YRSpPlC0mI5L8q/0fIiXo2', 'mahasiswa', '2025-05-14 10:33:27', '2025-05-14 10:33:27', 0, 'avatar.png', 0, NULL, 'Ilyas Purwanti, M.M.', 209, '22639298@uts.ac.id');
INSERT INTO `auths` VALUES ('A140525RnD', '22482647', '$2y$10$wfgGyygt9rl/0BFB127DqOCysspl8Jzk8AcTctsNWyGg1e6QK.8X.', 'mahasiswa', '2025-05-14 10:33:28', '2025-05-14 10:33:28', 0, 'avatar.png', 0, NULL, 'Vicky Farida', 212, '22482647@uts.ac.id');
INSERT INTO `auths` VALUES ('A140525d7F', '22759936', '$2y$10$kzrt9Hl/zFVHYXTzWJZqI.u8kuyMZduqdj0xLjBVLMYD1yUqdxYbC', 'mahasiswa', '2025-05-14 10:33:28', '2025-05-14 10:33:28', 0, 'avatar.png', 0, NULL, 'Tgk. Yulia Susanti', 213, '22759936@uts.ac.id');
INSERT INTO `auths` VALUES ('A140525LrM', '22704261', '$2y$10$ZTYrd2corl07U0yXwdZykec6p8bckE3XoamaaKcAKti7gAvkzyzLS', 'mahasiswa', '2025-05-14 10:33:28', '2025-05-14 10:33:28', 0, 'avatar.png', 0, NULL, 'Sutan Kenari Nababan', 215, '22704261@uts.ac.id');
INSERT INTO `auths` VALUES ('A140525qyw', '22128336', '$2y$10$3p8mi4L.BpMM5QvganQbWe1UmG9J8ezuEmsBVKvP8PIlFcoudLypG', 'mahasiswa', '2025-05-14 10:33:29', '2025-05-14 10:33:29', 0, 'avatar.png', 0, NULL, 'Lukita Oktaviani', 219, '22128336@uts.ac.id');
INSERT INTO `auths` VALUES ('A1405250TR', '22181278', '$2y$10$9fXLY/oNM5kQre39qW6.0uhQ9DIoAQXmC72smGi1ah9HKx/i.q9oe', 'mahasiswa', '2025-05-14 10:33:29', '2025-05-14 10:33:29', 0, 'avatar.png', 0, NULL, 'R.A. Ciaobella Hariyah, M.Ak', 220, '22181278@uts.ac.id');
INSERT INTO `auths` VALUES ('A140525H7X', '22282338', '$2y$10$EzNO5ewMEr.SQPXwvoxCZOHO4B.FZjXdIu.vqgG4RkaVaeMzpA.3K', 'mahasiswa', '2025-05-14 10:33:29', '2025-05-14 10:33:29', 0, 'avatar.png', 0, NULL, 'Paiman Lazuardi', 221, '22282338@uts.ac.id');
INSERT INTO `auths` VALUES ('A14052539r', '22045357', '$2y$10$Bma6LEuPjPVS9C16REX1yu2U3hC4Eg0uvabIFSLDfkxQNcsR1TUL.', 'mahasiswa', '2025-05-14 10:33:29', '2025-05-14 10:33:29', 0, 'avatar.png', 0, NULL, 'Gawati Pangestu', 225, '22045357@uts.ac.id');
INSERT INTO `auths` VALUES ('A1405255Q3', '22598725', '$2y$10$rVzXjAALw6MryrJSwp4GneD41tdj13Um3FWo3WWmMf4RzTH4EEgeW', 'mahasiswa', '2025-05-14 10:33:30', '2025-05-14 10:33:30', 0, 'avatar.png', 0, NULL, 'Endah Laksita, S.Sos', 227, '22598725@uts.ac.id');
INSERT INTO `auths` VALUES ('A140525KbC', '22090067', '$2y$10$G.iwtLF87qRD/ZEuY2ZROuWhVR4doZJP73wSlTmQZ1eoi6NjLIkr6', 'mahasiswa', '2025-05-14 10:33:30', '2025-05-14 10:33:30', 0, 'avatar.png', 0, NULL, 'Dalima Mardhiyah', 229, '22090067@uts.ac.id');
INSERT INTO `auths` VALUES ('A140525ST2', '22656539', '$2y$10$uqjNy7yQZIe.qJvehodAgOi/Kn/fFAsb6Nj2Z4jwYxl6M7Ta.nnnK', 'mahasiswa', '2025-05-14 10:33:30', '2025-05-14 10:33:30', 0, 'avatar.png', 0, NULL, 'Jefri Pradipta', 230, '22656539@uts.ac.id');
INSERT INTO `auths` VALUES ('A1405257TU', '22913585', '$2y$10$YXI.Hb4UGFnuCRcbDT/O/uht4MA3htXLaY6IggWdcpwWoKvWZuv72', 'mahasiswa', '2025-05-14 10:33:30', '2025-05-14 10:33:30', 0, 'avatar.png', 0, NULL, 'Niyaga Zulaika', 231, '22913585@uts.ac.id');
INSERT INTO `auths` VALUES ('A140525nd6', '22802726', '$2y$10$zgc5f8HEDI5FOIwJHhNd4ultHhCEW.St0NMGfjcesSyZmv6rEgdXa', 'mahasiswa', '2025-05-14 10:33:31', '2025-05-14 10:33:31', 0, 'avatar.png', 0, NULL, 'Puti Karimah Pratiwi', 235, '22802726@uts.ac.id');
INSERT INTO `auths` VALUES ('A140525h5O', '22568817', '$2y$10$8yw9HnPoYd2Nb/wmyUqsLOdgeSR5YhtcjDLdlyXVkEh32sYrN36YW', 'mahasiswa', '2025-05-14 10:33:31', '2025-05-14 10:33:31', 0, 'avatar.png', 0, NULL, 'Rachel Hardiansyah, S.Psi', 237, '22568817@uts.ac.id');
INSERT INTO `auths` VALUES ('A140525aAp', '22484769', '$2y$10$U4P7Zj/WE/6xMfVUlLwauOrXADnIp7m.FauV8f.VOu5NMa5nnJcPO', 'mahasiswa', '2025-05-14 10:33:31', '2025-05-14 10:33:31', 0, 'avatar.png', 0, NULL, 'Kardi Hutapea', 238, '22484769@uts.ac.id');
INSERT INTO `auths` VALUES ('A140525ajU', '22429098', '$2y$10$iXXTJMwov4gHf8KHjQxJp.wtO0vGeskwfhXNzyhCT5cSy5aZ6jZuG', 'mahasiswa', '2025-05-14 10:33:31', '2025-05-14 10:33:31', 0, 'avatar.png', 0, NULL, 'Mulyanto Nashiruddin', 239, '22429098@uts.ac.id');
INSERT INTO `auths` VALUES ('A140525h6z', '22828198', '$2y$10$jeRFrna3ZEmtSwXliVxrwuPGzlkj97Iegw7wHvPWz9FjrajmA7foW', 'mahasiswa', '2025-05-14 10:33:31', '2025-05-14 10:33:31', 0, 'avatar.png', 0, NULL, 'Drs. Sabrina Firgantoro', 240, '22828198@uts.ac.id');
INSERT INTO `auths` VALUES ('A1405255h1', '22762625', '$2y$10$srw34q9P0oWqb.hp/KbUHuDYW94nxMbAp.ENAvuCrKvSfIeCrHey.', 'mahasiswa', '2025-05-14 10:33:32', '2025-05-14 10:33:32', 0, 'avatar.png', 0, NULL, 'Latif Tampubolon', 241, '22762625@uts.ac.id');
INSERT INTO `auths` VALUES ('A140525G0d', '22401848', '$2y$10$k7jo.m0WpOnDXgYbuRChX.mynqSg/EnLT3yhX5X3dU0uTdFV.6sfe', 'mahasiswa', '2025-05-14 10:33:32', '2025-05-14 10:33:32', 0, 'avatar.png', 0, NULL, 'Darmana Simanjuntak', 243, '22401848@uts.ac.id');
INSERT INTO `auths` VALUES ('A140525apg', '22281524', '$2y$10$oqW0DIT5fBjxynxoW.wqgeR7tusRt0s..DlobtWyc.H9FmmPfSKzu', 'mahasiswa', '2025-05-14 10:33:32', '2025-05-14 10:33:32', 0, 'avatar.png', 0, NULL, 'Sakti Riyanti', 245, '22281524@uts.ac.id');
INSERT INTO `auths` VALUES ('A140525SzR', '22573059', '$2y$10$qqf1A7ZA9uOhwMhoKr3R9uflBoeclaFZ4g1.cSji7w7VJbaBgM7B.', 'mahasiswa', '2025-05-14 10:33:32', '2025-05-14 10:33:32', 0, 'avatar.png', 0, NULL, 'Mursita Salahudin', 247, '22573059@uts.ac.id');
INSERT INTO `auths` VALUES ('A140525O2w', '22429634', '$2y$10$ar.HeWHgBRr1nSZqXgq8s.8L9fFPrSp5w43KSocCTVnr7CWbaj9ty', 'mahasiswa', '2025-05-14 10:33:33', '2025-05-14 10:33:33', 0, 'avatar.png', 0, NULL, 'Melinda Zulaika', 251, '22429634@uts.ac.id');
INSERT INTO `auths` VALUES ('A140525Hqu', '22188080', '$2y$10$wn7PgOGX5I392mp/s6MgHOhlixLd4QLgsc6ZAq.x3HWZrsZgqDEmK', 'mahasiswa', '2025-05-14 10:33:33', '2025-05-14 10:33:33', 0, 'avatar.png', 0, NULL, 'T. Dartono Lailasari', 253, '22188080@uts.ac.id');
INSERT INTO `auths` VALUES ('A1405250sW', '22655576', '$2y$10$A2LcZrPpg1sY7uwDswKlf..NC4GKCUfpBLqNeejSPC6hn/PKCGQNS', 'mahasiswa', '2025-05-14 10:33:34', '2025-05-14 10:33:34', 0, 'avatar.png', 0, NULL, 'Rahman Adriansyah', 256, '22655576@uts.ac.id');
INSERT INTO `auths` VALUES ('A1405258jX', '22333582', '$2y$10$0mI6CasJ0r0i6TjNk5wjkOrHiPMKuph0BeIFmw4eCMZeQvrxeBnxe', 'mahasiswa', '2025-05-14 10:33:34', '2025-05-14 10:33:34', 0, 'avatar.png', 0, NULL, 'T. Tomi Uwais, M.TI.', 257, '22333582@uts.ac.id');
INSERT INTO `auths` VALUES ('A140525kWt', '22062236', '$2y$10$d3hh0hkrlsEsYzga3q7NxOj7qUYyKvhKFFd9k/El7lDRKATF0o71m', 'mahasiswa', '2025-05-14 10:33:34', '2025-05-14 10:33:34', 0, 'avatar.png', 0, NULL, 'Mursita Maryadi', 259, '22062236@uts.ac.id');
INSERT INTO `auths` VALUES ('A140525CrY', '22257184', '$2y$10$zMzkEFydsHru87.MRNMTq.4aZ1k5CHbSJtAm9jadU0V4sJFl/AnZe', 'mahasiswa', '2025-05-14 10:33:34', '2025-05-14 10:33:34', 0, 'avatar.png', 0, NULL, 'Vicky Sihotang', 260, '22257184@uts.ac.id');
INSERT INTO `auths` VALUES ('A140525kFy', '22939201', '$2y$10$4QYJWR6BNewvutwMUZJAVe86lId9UaPora8A/ScQ.6Jync/xWv9Ne', 'mahasiswa', '2025-05-14 10:33:34', '2025-05-14 10:33:34', 0, 'avatar.png', 0, NULL, 'Cut Tari Usada', 261, '22939201@uts.ac.id');
INSERT INTO `auths` VALUES ('A140525E81', '22500893', '$2y$10$0VWeLVsynRsvw/OWwH.ekOZA1swUeeyMxPLhkVMEhwmP407y83Bcu', 'mahasiswa', '2025-05-14 10:33:34', '2025-05-14 10:33:34', 0, 'avatar.png', 0, NULL, 'Artawan Nugroho', 262, '22500893@uts.ac.id');
INSERT INTO `auths` VALUES ('A140525RUc', '22176637', '$2y$10$0SoKBFLq20M7QgDC7rReQu3QuWmrSC.GLIxOdw63Iqr40nUlypj5W', 'mahasiswa', '2025-05-14 10:33:35', '2025-05-14 10:33:35', 0, 'avatar.png', 0, NULL, 'Banawa Salahudin, S.Pt', 264, '22176637@uts.ac.id');
INSERT INTO `auths` VALUES ('A1405256MI', '22544417', '$2y$10$ybrBvZRb3wudBY3aITlX6uq0rqW4GAnn3WNk3YgbALCV1qOxbD0eO', 'mahasiswa', '2025-05-14 10:33:35', '2025-05-14 10:33:35', 0, 'avatar.png', 0, NULL, 'Drs. Ade Wijaya, S.E.', 265, '22544417@uts.ac.id');
INSERT INTO `auths` VALUES ('A140525p3q', '22109992', '$2y$10$RHnEuR7l884RJzujDDsHouqPqYZwMJuYZ6XM55yNO1WEAKAFtVSxS', 'mahasiswa', '2025-05-14 10:33:35', '2025-05-14 10:33:35', 0, 'avatar.png', 0, NULL, 'Siska Sihombing', 266, '22109992@uts.ac.id');
INSERT INTO `auths` VALUES ('A140525DHD', '22919049', '$2y$10$ahuEpKYhKYO2nlsu8Vpfcu6bwsJOpoHPSdPHvO2cDXaTit4Qlcs4u', 'mahasiswa', '2025-05-14 10:33:35', '2025-05-14 10:33:35', 0, 'avatar.png', 0, NULL, 'Dimaz Jailani', 268, '22919049@uts.ac.id');
INSERT INTO `auths` VALUES ('A1405252AS', '22920472', '$2y$10$jVQLKP7ZpnnN6DXQ2326tuw0k7k8bIzvoBiAjOreW8g0bV2h9Yvxu', 'mahasiswa', '2025-05-14 10:33:35', '2025-05-14 10:33:35', 0, 'avatar.png', 0, NULL, 'Cengkir Waskita', 269, '22920472@uts.ac.id');
INSERT INTO `auths` VALUES ('A140525DpM', '22636370', '$2y$10$gGUAPX.WbTYClA1k5XgHuuKer2GjBA7mqOjWeOvKc3pv3dTAK5N8K', 'mahasiswa', '2025-05-14 10:33:36', '2025-05-14 10:33:36', 0, 'avatar.png', 0, NULL, 'Laila Hastuti', 272, '22636370@uts.ac.id');
INSERT INTO `auths` VALUES ('A140525Gd0', '22671070', '$2y$10$R4Jb.g3fIkNYHhHEzuNLceoE1l92BhDFkzzMFoEaMQW38DZQs7sWa', 'mahasiswa', '2025-05-14 10:33:36', '2025-05-14 10:33:36', 0, 'avatar.png', 0, NULL, 'Damar Padmasari, S.Farm', 275, '22671070@uts.ac.id');
INSERT INTO `auths` VALUES ('A1405256O2', '22397664', '$2y$10$T6XLYWA/E4hDCyvVUkitY.A/OrTnW/5MzihwwQHNqolNH7Zjss8aq', 'mahasiswa', '2025-05-14 10:33:37', '2025-05-14 10:33:37', 0, 'avatar.png', 0, NULL, 'Uda Saefullah, S.Farm', 278, '22397664@uts.ac.id');
INSERT INTO `auths` VALUES ('A14052576T', '22085307', '$2y$10$BsN2JN2GnbtYN1locEOvKunnf4n3FTd71n1TxDQ9qYr5BhNOSZ0Ci', 'mahasiswa', '2025-05-14 10:33:37', '2025-05-14 10:33:37', 0, 'avatar.png', 0, NULL, 'R. Laila Manullang, S.Sos', 279, '22085307@uts.ac.id');
INSERT INTO `auths` VALUES ('A140525Hhx', '22751624', '$2y$10$QX81lB2uifD6upxWf/.yKehmgSTHV7z4vPMr/ju4mlDbZQxaEF1Uu', 'mahasiswa', '2025-05-14 10:33:37', '2025-05-14 10:33:37', 0, 'avatar.png', 0, NULL, 'drg. Maimunah Permata, S.Gz', 282, '22751624@uts.ac.id');
INSERT INTO `auths` VALUES ('A140525Tzv', '22940168', '$2y$10$AabARWHegLTrRJczpPVsbefzjewY52FkFMT.yRQDj.byFnT/Z5hUW', 'mahasiswa', '2025-05-14 10:33:37', '2025-05-14 10:33:37', 0, 'avatar.png', 0, NULL, 'R.A. Dinda Mahendra', 283, '22940168@uts.ac.id');
INSERT INTO `auths` VALUES ('A140525LL1', '22961106', '$2y$10$xlaJ.5GFOCkVJGsUrf5jreEF4WSY3r7JVOmsule3yGuAu76l0Ewkm', 'mahasiswa', '2025-05-14 10:33:37', '2025-05-14 10:33:37', 0, 'avatar.png', 0, NULL, 'Ihsan Mandala', 284, '22961106@uts.ac.id');
INSERT INTO `auths` VALUES ('A140525L3T', '22024976', '$2y$10$T0gu31bFRQ4ESUm7Iwi9Ee7gFnraOL5WYGrAGkoz8iVI0On0AEDTm', 'mahasiswa', '2025-05-14 10:33:37', '2025-05-14 10:33:37', 0, 'avatar.png', 0, NULL, 'Paiman Firmansyah', 285, '22024976@uts.ac.id');
INSERT INTO `auths` VALUES ('A140525e5d', '22047432', '$2y$10$ybW7eWX/eXWii61NlFhseuJA9nm9RgEz4DVNiI2Zs/LHlv.X2R9du', 'mahasiswa', '2025-05-14 10:33:38', '2025-05-14 10:33:38', 0, 'avatar.png', 0, NULL, 'Puti Jane Prasetyo', 286, '22047432@uts.ac.id');
INSERT INTO `auths` VALUES ('A140525LVf', '22800395', '$2y$10$EZRd5P/I3bEMl9.DCPBHfekUVYE3xo6z6Xuol3.aujhMe7N/Hsd8W', 'mahasiswa', '2025-05-14 10:33:38', '2025-05-14 10:33:38', 0, 'avatar.png', 0, NULL, 'drg. Ghani Pranowo, S.Sos', 288, '22800395@uts.ac.id');
INSERT INTO `auths` VALUES ('A140525cfY', '22618630', '$2y$10$DpfELPvUHGOHIKWIGx45l.4qHYxh.kd5XKc1nluHAQJACOxXtlBEu', 'mahasiswa', '2025-05-14 10:33:38', '2025-05-14 10:33:38', 0, 'avatar.png', 0, NULL, 'Keisha Nurdiyanti, M.TI.', 289, '22618630@uts.ac.id');
INSERT INTO `auths` VALUES ('A140525cmc', '22817565', '$2y$10$uVDL.kRJlXjCi9r.21LjhOro7t1ltig17UCLYUV3WuBn6nIge.h42', 'mahasiswa', '2025-05-14 10:33:38', '2025-05-14 10:33:38', 0, 'avatar.png', 0, NULL, 'Yosef Mandala', 290, '22817565@uts.ac.id');
INSERT INTO `auths` VALUES ('A140525EUd', '22711341', '$2y$10$2V53o4w2CpT/vcRUFB9yeepfNuRDyEZDJO9BNBjIFQL64qNBDRyGy', 'mahasiswa', '2025-05-14 10:33:38', '2025-05-14 10:33:38', 0, 'avatar.png', 0, NULL, 'Dt. Laksana Laksmiwati, M.Pd', 291, '22711341@uts.ac.id');
INSERT INTO `auths` VALUES ('A140525JF6', '22086599', '$2y$10$ydIwr62NE8ljzgzoeLn8rea/hGC33UcGpfSboHtnsJkDAO4HY8sl.', 'mahasiswa', '2025-05-14 10:34:21', '2025-05-14 10:34:21', 0, 'avatar.png', 0, NULL, 'T. Hardi Pradana, S.Gz', 294, '22086599@uts.ac.id');
INSERT INTO `auths` VALUES ('A140525E6b', '22073584', '$2y$10$3lDRK4eqEP4XXMHjMYNrXeWuwiBXpzO5EDJXjetwy3kICRIIQk38y', 'mahasiswa', '2025-05-14 10:34:21', '2025-05-14 10:34:21', 0, 'avatar.png', 0, NULL, 'Gilda Siregar, S.Ked', 295, '22073584@uts.ac.id');
INSERT INTO `auths` VALUES ('A140525AdR', '22307948', '$2y$10$Wzr433gUy3hABEVN5CRlHuAE8Ok9jx0pEmNEk04P4PBCtkdE445/G', 'mahasiswa', '2025-05-14 10:34:21', '2025-05-14 10:34:21', 0, 'avatar.png', 0, NULL, 'Gangsar Nuraini', 296, '22307948@uts.ac.id');
INSERT INTO `auths` VALUES ('A1405258rZ', '22668486', '$2y$10$3b3CvieyjzULALBrV87dt./BtEIDV7s4CYasLp5exs1s1rEe9fzN6', 'mahasiswa', '2025-05-14 10:34:21', '2025-05-14 10:34:21', 0, 'avatar.png', 0, NULL, 'Endra Tamba', 299, '22668486@uts.ac.id');
INSERT INTO `auths` VALUES ('A140525ExH', '22889090', '$2y$10$cKeD0cptTPS4BwyME9YC6ux3xqHAa/7kUMm6B6w6N3DylrUAU36S6', 'mahasiswa', '2025-05-14 10:34:21', '2025-05-14 10:34:21', 0, 'avatar.png', 0, NULL, 'Natalia Yulianti', 300, '22889090@uts.ac.id');
INSERT INTO `auths` VALUES ('A140525V5m', '22918832', '$2y$10$Lz9uXwiZn9yKwiRH2DfWgOkD3z7L/LCOd1kVBLoykx1Lc2Ttl9BmG', 'mahasiswa', '2025-05-14 10:34:21', '2025-05-14 10:34:21', 0, 'avatar.png', 0, NULL, 'Hadi Pradipta', 303, '22918832@uts.ac.id');
INSERT INTO `auths` VALUES ('A140525AX8', '22370477', '$2y$10$MbpFBcz0HBCgI4ICxFA9QOOoMVdNZAeKzMwK9cZuTBOC6tBiFPH1K', 'mahasiswa', '2025-05-14 10:34:22', '2025-05-14 10:34:22', 0, 'avatar.png', 0, NULL, 'R.A. Ifa Jailani, M.Farm', 309, '22370477@uts.ac.id');
INSERT INTO `auths` VALUES ('A1405256Jt', '22963010', '$2y$10$lxsmxJNvM9AIZv2djJDBKeY4/LvoicOf57yZkVWm/aM5OxKy6mWA.', 'mahasiswa', '2025-05-14 10:34:22', '2025-05-14 10:34:22', 0, 'avatar.png', 0, NULL, 'Violet Rajasa, S.Kom', 311, '22963010@uts.ac.id');
INSERT INTO `auths` VALUES ('A140525Kkt', '22783293', '$2y$10$t6hz4qu5j18CiJ9LPYK4Nu0P55Mw.DeJWBOWBSJsg57drbN1G17rm', 'mahasiswa', '2025-05-14 10:34:22', '2025-05-14 10:34:22', 0, 'avatar.png', 0, NULL, 'R.A. Bella Kurniawan', 313, '22783293@uts.ac.id');
INSERT INTO `auths` VALUES ('A140525nYq', '22316829', '$2y$10$sZXFXSxkLqI6iw/9CFX6YO4N9G.Eo1uN84iTmIw0o3EdnDXD6nxiO', 'mahasiswa', '2025-05-14 10:34:22', '2025-05-14 10:34:22', 0, 'avatar.png', 0, NULL, 'Vanya Pratiwi', 316, '22316829@uts.ac.id');
INSERT INTO `auths` VALUES ('A1405256sz', '22961844', '$2y$10$pK2hIsNHGY8UZwlku0rEseXiL9/QRRHGO0UCALPUUnH0nkfzj/ZL.', 'mahasiswa', '2025-05-14 10:34:22', '2025-05-14 10:34:22', 0, 'avatar.png', 0, NULL, 'R.M. Martani Andriani, S.Gz', 317, '22961844@uts.ac.id');
INSERT INTO `auths` VALUES ('A140525hJm', '22738216', '$2y$10$D3qRcDELqeCZZJt91OMUSevgk.mX.1jI6M.eI4K.SJSLJ0.Nnnm6.', 'mahasiswa', '2025-05-14 10:34:22', '2025-05-14 10:34:22', 0, 'avatar.png', 0, NULL, 'Titin Halim', 319, '22738216@uts.ac.id');
INSERT INTO `auths` VALUES ('A140525PKO', '22677315', '$2y$10$whdgZKXLXYu/PzljYpBL/efvAQVAhGmdfyG9TDznqnZ/A4GYeDaTq', 'mahasiswa', '2025-05-14 10:34:23', '2025-05-14 10:34:23', 0, 'avatar.png', 0, NULL, 'Gangsa Safitri', 325, '22677315@uts.ac.id');
INSERT INTO `auths` VALUES ('A140525bHK', '22059788', '$2y$10$RPipVCXzm/7UT.ahUTN12.4lVVzQOa2aI/g9v.wI8/rAFFC8b2fC6', 'mahasiswa', '2025-05-14 10:34:24', '2025-05-14 10:34:24', 0, 'avatar.png', 0, NULL, 'Tugiman Nasyiah', 331, '22059788@uts.ac.id');
INSERT INTO `auths` VALUES ('A140525HSV', '22745015', '$2y$10$Gr3Zq90LUu019iF0qN7rm.7bu1eqX8D/GnwNw3dTZMXCzSUpg2tci', 'mahasiswa', '2025-05-14 10:34:25', '2025-05-14 10:34:25', 0, 'avatar.png', 0, NULL, 'Daliman Budiyanto', 337, '22745015@uts.ac.id');
INSERT INTO `auths` VALUES ('A140525Hz5', '22311536', '$2y$10$cDUV/uqXN.YJfn85KLcMT.c7ZIL4w7LsXOnbL2Hx4qdJXsXcOKs3.', 'mahasiswa', '2025-05-14 10:34:25', '2025-05-14 10:34:25', 0, 'avatar.png', 0, NULL, 'Mariadi Prasasta', 338, '22311536@uts.ac.id');
INSERT INTO `auths` VALUES ('A140525d84', '22967789', '$2y$10$ASjBgNPNd1YWjyRgScVyH.iO7Qmr9pd7e1/StZGKjmJUOL1GsT4f2', 'mahasiswa', '2025-05-14 10:34:25', '2025-05-14 10:34:25', 0, 'avatar.png', 0, NULL, 'Queen Pradana', 342, '22967789@uts.ac.id');
INSERT INTO `auths` VALUES ('A140525Epa', '22783008', '$2y$10$Fx2vKrJQXyMPkU.j24.qqeR4Tj/YzsjxbZBjD4iL0DGF1Z46C/7Ai', 'mahasiswa', '2025-05-14 10:34:26', '2025-05-14 10:34:26', 0, 'avatar.png', 0, NULL, 'Drs. Usyi Pratama', 346, '22783008@uts.ac.id');
INSERT INTO `auths` VALUES ('A140525e2P', '22899076', '$2y$10$ZF/WQ9LtJ9gv395bTDwBJeubNotMiBbCoeiCrvgwIix9zyQ2o5kNS', 'mahasiswa', '2025-05-14 10:34:26', '2025-05-14 10:34:26', 0, 'avatar.png', 0, NULL, 'Warsa Prasasta', 348, '22899076@uts.ac.id');
INSERT INTO `auths` VALUES ('A14052566y', '22330909', '$2y$10$7kz7QSkpmufMSwzDnj4ZTOfv/ZjkojrGZZ8B4WbLjt9b4JOJVPTEO', 'mahasiswa', '2025-05-14 10:34:26', '2025-05-14 10:34:26', 0, 'avatar.png', 0, NULL, 'Ivan Widodo', 349, '22330909@uts.ac.id');
INSERT INTO `auths` VALUES ('A1405254Xm', '22709330', '$2y$10$gy6pN/wudZn1aZRofvgZZOnsv9ojvcptoZj58he1QCp89yejgSgj6', 'mahasiswa', '2025-05-14 10:34:27', '2025-05-14 10:34:27', 0, 'avatar.png', 0, NULL, 'Bella Lazuardi', 355, '22709330@uts.ac.id');
INSERT INTO `auths` VALUES ('A140525dmT', '22826700', '$2y$10$q/nEVdVnk7v.A6DM4w7rTexB3Sq/HNo39MWm3kDDvH2xhCT/BsGhC', 'mahasiswa', '2025-05-14 10:34:27', '2025-05-14 10:34:27', 0, 'avatar.png', 0, NULL, 'Ophelia Wibowo', 357, '22826700@uts.ac.id');
INSERT INTO `auths` VALUES ('A140525hAj', '22457912', '$2y$10$yWdudRmrP8Z1kl/1wYPvG.O0U4wDqnfwdKRtYSOtjKaaOuw1FHb6m', 'mahasiswa', '2025-05-14 10:34:28', '2025-05-14 10:34:28', 0, 'avatar.png', 0, NULL, 'Hj. Fitria Gunawan, S.Gz', 358, '22457912@uts.ac.id');
INSERT INTO `auths` VALUES ('A140525kfq', '22183104', '$2y$10$wVWSa0Ru02PXrtmkF9YrX.C3Lyrol1A5gwjGkwH55qR/DHKiCLGU6', 'mahasiswa', '2025-05-14 10:34:28', '2025-05-14 10:34:28', 0, 'avatar.png', 0, NULL, 'R. Lasmanto Mahendra, S.Sos', 361, '22183104@uts.ac.id');
INSERT INTO `auths` VALUES ('A140525DKz', '22325613', '$2y$10$dKLJ55wAjIjNPhffKxCGxO4BFG/AbyajOaCg8UcI3eFjqS9A4HGKO', 'mahasiswa', '2025-05-14 10:34:28', '2025-05-14 10:34:28', 0, 'avatar.png', 0, NULL, 'Tgk. Perkasa Manullang, S.Gz', 363, '22325613@uts.ac.id');
INSERT INTO `auths` VALUES ('A1405253EI', '22335705', '$2y$10$GLFULPIq/WnHOmdhH1.G9eJDClM7SW71jiw.718r9.vGPLRbwrasi', 'mahasiswa', '2025-05-14 10:34:28', '2025-05-14 10:34:28', 0, 'avatar.png', 0, NULL, 'Pranawa Firmansyah', 364, '22335705@uts.ac.id');
INSERT INTO `auths` VALUES ('A140525acM', '22755257', '$2y$10$TqBqdSRdbkvZtBT4tSLUPOZbNrTPsz1LHPhDZ5rd6B2e3/hhAJOnW', 'mahasiswa', '2025-05-14 10:34:29', '2025-05-14 10:34:29', 0, 'avatar.png', 0, NULL, 'Umar Maryati', 365, '22755257@uts.ac.id');
INSERT INTO `auths` VALUES ('A1405250ew', '22058319', '$2y$10$YCyBOUtASidO2V6S99ArQ.f7lqHZKR7B1W1ndogp0d7HX2SapuhXW', 'mahasiswa', '2025-05-14 10:34:29', '2025-05-14 10:34:29', 0, 'avatar.png', 0, NULL, 'dr. Harja Rajasa, M.TI.', 369, '22058319@uts.ac.id');
INSERT INTO `auths` VALUES ('A1405253Zw', '22958847', '$2y$10$yK7a4zENWd2NyCK3A3dBm.sDSbz/LjOSiyyz6pL9ABAolLb0di6YK', 'mahasiswa', '2025-05-14 10:34:29', '2025-05-14 10:34:29', 0, 'avatar.png', 0, NULL, 'Kemal Dabukke, S.Ked', 370, '22958847@uts.ac.id');
INSERT INTO `auths` VALUES ('A140525J7u', '22188725', '$2y$10$hssvALIwOn/ucwW1oFGGyupBwrVDkzdC1nypDmiyjlPS/FZeHBJLq', 'mahasiswa', '2025-05-14 10:34:29', '2025-05-14 10:34:29', 0, 'avatar.png', 0, NULL, 'Daru Hutagalung', 371, '22188725@uts.ac.id');
INSERT INTO `auths` VALUES ('A140525dFx', '22353904', '$2y$10$NEkJNiXm0ppHXl6gh9Zl8uPv2jCMgghRgfepHzB4bD6r.xD2BK2qy', 'mahasiswa', '2025-05-14 10:34:30', '2025-05-14 10:34:30', 0, 'avatar.png', 0, NULL, 'Ir. Humaira Natsir, S.Ked', 373, '22353904@uts.ac.id');
INSERT INTO `auths` VALUES ('A140525TQG', '22749319', '$2y$10$.c4heje5WgCapI4NJg/HtuweRWffuhv33IbU5FMci4wmoST7mxpsG', 'mahasiswa', '2025-05-14 10:34:30', '2025-05-14 10:34:30', 0, 'avatar.png', 0, NULL, 'Umi Pradipta, S.IP', 375, '22749319@uts.ac.id');
INSERT INTO `auths` VALUES ('A140525mUM', '22803851', '$2y$10$JNKMA1YBq9XIlQLWLBWWSegTI5RLxfmb2WiRJgJV2lEAeJcPJVaza', 'mahasiswa', '2025-05-14 10:34:30', '2025-05-14 10:34:30', 0, 'avatar.png', 0, NULL, 'Dr. Uli Sirait, S.Gz', 379, '22803851@uts.ac.id');
INSERT INTO `auths` VALUES ('A140525N0V', '22058071', '$2y$10$yYblOdMWqC.X0cziTMfezeb1iKGnHHpaC627wz69yMNOnOyzaBj5i', 'mahasiswa', '2025-05-14 10:34:31', '2025-05-14 10:34:31', 0, 'avatar.png', 0, NULL, 'Caturangga Suryono', 380, '22058071@uts.ac.id');
INSERT INTO `auths` VALUES ('A14052507y', '22080450', '$2y$10$/9/NrZVdDsuimt0KxTTxFuHYH9aOeVjhluteHrrKMjEghcSTIWzB6', 'mahasiswa', '2025-05-14 10:34:31', '2025-05-14 10:34:31', 0, 'avatar.png', 0, NULL, 'Tgk. Hartaka Maryadi, S.Pt', 381, '22080450@uts.ac.id');
INSERT INTO `auths` VALUES ('A1405253rC', '22878882', '$2y$10$d5k6djBQ4WVMVsmdzfX6VOXY0aypsm5U9FsrV05CWbvXmxj8yd2T6', 'mahasiswa', '2025-05-14 10:34:31', '2025-05-14 10:34:31', 0, 'avatar.png', 0, NULL, 'Julia Iswahyudi', 383, '22878882@uts.ac.id');
INSERT INTO `auths` VALUES ('A1405258Pg', '22095556', '$2y$10$qp2M.enVv7ralA.FYrbJbew9tAt7NiqetSIezxazTwZ00d526xM.W', 'mahasiswa', '2025-05-14 10:34:32', '2025-05-14 10:34:32', 0, 'avatar.png', 0, NULL, 'Harto Yuliarti', 389, '22095556@uts.ac.id');
INSERT INTO `auths` VALUES ('A1405253zJ', '22899827', '$2y$10$3kWHK4/nM1h.Hochqaci4e.1vjbMbVC4hPqIM9URqN85FeTfWKyBO', 'mahasiswa', '2025-05-14 10:34:32', '2025-05-14 10:34:32', 0, 'avatar.png', 0, NULL, 'Lasmanto Yolanda', 391, '22899827@uts.ac.id');
INSERT INTO `auths` VALUES ('A1405250SJ', '22060295', '$2y$10$DYVz78e2gFQanpKEnkJY1.lijjuaD/hvb5MxtEEO.XLDyTPrVTZaK', 'mahasiswa', '2025-05-14 10:34:32', '2025-05-14 10:34:32', 0, 'avatar.png', 0, NULL, 'Ir. Maya Halim, S.E.I', 393, '22060295@uts.ac.id');
INSERT INTO `auths` VALUES ('A1405250aS', '22985999', '$2y$10$EuyHHdzgzR401zbWV4ivCuAdHn9k3DtxDEq48KE8f70Y4pDUBdVQS', 'mahasiswa', '2025-05-14 10:34:33', '2025-05-14 10:34:33', 0, 'avatar.png', 0, NULL, 'Indra Susanti', 395, '22985999@uts.ac.id');
INSERT INTO `auths` VALUES ('A1405253C1', '22909848', '$2y$10$YgsHRV3i.LE9w/WWY33KxupP3V4/jA7oEC48okiAheV2LNgTMrV3y', 'mahasiswa', '2025-05-14 10:34:33', '2025-05-14 10:34:33', 0, 'avatar.png', 0, NULL, 'Mala Sihombing', 396, '22909848@uts.ac.id');
INSERT INTO `auths` VALUES ('A140525H1n', '22031025', '$2y$10$jKcYz8silRO/uvyiO7GjkeeYiprOgAI7yAiySQw86itUwS/BIEKdS', 'mahasiswa', '2025-05-14 10:34:33', '2025-05-14 10:34:33', 0, 'avatar.png', 0, NULL, 'Pia Nuraini', 397, '22031025@uts.ac.id');
INSERT INTO `auths` VALUES ('A140525DJg', '22024412', '$2y$10$xp1toiIykcXr.qIdshEgPOQmi/vq2D.3kBcI0Q01JVTV6aqk.hvhO', 'mahasiswa', '2025-05-14 10:34:33', '2025-05-14 10:34:33', 0, 'avatar.png', 0, NULL, 'dr. Cengkal Aryani', 399, '22024412@uts.ac.id');
INSERT INTO `auths` VALUES ('A140525EwX', '22808330', '$2y$10$pqK/2nCIiyM.XI5Zp1IkZuhKjTrsQJQn/RM8n8yamW1BOqQilKwOG', 'mahasiswa', '2025-05-14 10:34:34', '2025-05-14 10:34:34', 0, 'avatar.png', 0, NULL, 'Jane Safitri', 401, '22808330@uts.ac.id');
INSERT INTO `auths` VALUES ('A140525gua', '22158913', '$2y$10$O8AEM3g4phZklngeFc2cgOz0nOH1P8pcm7Ogcv.fmu0WyB4e8Ye5q', 'mahasiswa', '2025-05-14 10:34:34', '2025-05-14 10:34:34', 0, 'avatar.png', 0, NULL, 'KH. Irwan Wijaya, S.T.', 402, '22158913@uts.ac.id');
INSERT INTO `auths` VALUES ('A140525FHq', '22344898', '$2y$10$4dbZJPh6fpkFoihyElTNBuouo6gEiNmiQ6Oh.hT6qodzdU/tOcwBO', 'mahasiswa', '2025-05-14 10:34:34', '2025-05-14 10:34:34', 0, 'avatar.png', 0, NULL, 'Eva Napitupulu, M.Ak', 405, '22344898@uts.ac.id');
INSERT INTO `auths` VALUES ('A1405250uv', '22955995', '$2y$10$SL8m6DPQOx55F5e.MWIgfedf80e3jWM6gt04O/B5/p/H9JvrHP2su', 'mahasiswa', '2025-05-14 10:34:35', '2025-05-14 10:34:35', 0, 'avatar.png', 0, NULL, 'R.M. Teddy Prakasa', 410, '22955995@uts.ac.id');
INSERT INTO `auths` VALUES ('A140525umB', '22239818', '$2y$10$R0WEQm8vIo8epOaABrDe.OcRZwZYs4XvUxK.GDkeVd2yqVswXYLj2', 'mahasiswa', '2025-05-14 10:34:35', '2025-05-14 10:34:35', 0, 'avatar.png', 0, NULL, 'Dina Sitompul', 414, '22239818@uts.ac.id');
INSERT INTO `auths` VALUES ('A1405250fp', '22580195', '$2y$10$WR00HQoFibPnecuWunITNerSxHM3Ve7FSnuS3BTvDxxqYZ8aSXPpm', 'mahasiswa', '2025-05-14 10:34:35', '2025-05-14 10:34:35', 0, 'avatar.png', 0, NULL, 'Bajragin Zulkarnain', 417, '22580195@uts.ac.id');
INSERT INTO `auths` VALUES ('A140525DUF', '22898362', '$2y$10$CnxeLdPRL7T.yGlIMgiNIOAhwF.WrPP1JyuT97tpfJqhhJopdt/Hu', 'mahasiswa', '2025-05-14 10:34:35', '2025-05-14 10:34:35', 0, 'avatar.png', 0, NULL, 'Azalea Hardiansyah', 418, '22898362@uts.ac.id');
INSERT INTO `auths` VALUES ('A140525pXr', '22788743', '$2y$10$d.lQ4olKKELzC0hzdl2Wf.86a1bLEFCXfLXyQGkgOVSB9nht7C1tW', 'mahasiswa', '2025-05-14 10:34:35', '2025-05-14 10:34:35', 0, 'avatar.png', 0, NULL, 'Jumadi Rajata', 420, '22788743@uts.ac.id');
INSERT INTO `auths` VALUES ('A140525gtr', '22034909', '$2y$10$gO9nmJoVHN0Cb0H7lCJueu7JxmGNcCNFz5fFzuzNblC0z77LPb10K', 'mahasiswa', '2025-05-14 10:34:36', '2025-05-14 10:34:36', 0, 'avatar.png', 0, NULL, 'dr. Bajragin Nugroho', 421, '22034909@uts.ac.id');
INSERT INTO `auths` VALUES ('A1405257VA', '22306083', '$2y$10$aAUozc.7pQemE/kzJa8zseEJUmQmphJtjFiG7489yWt3addowC7OO', 'mahasiswa', '2025-05-14 10:34:36', '2025-05-14 10:34:36', 0, 'avatar.png', 0, NULL, 'Ir. Cemplunk Pratama', 423, '22306083@uts.ac.id');
INSERT INTO `auths` VALUES ('A1405259Pg', '22364286', '$2y$10$8XTmfhWfh8txF4Rmk4IXA.GrEVzBevXs3FErdM3etU/2ByXOPOP0W', 'mahasiswa', '2025-05-14 10:34:36', '2025-05-14 10:34:36', 0, 'avatar.png', 0, NULL, 'Almira Nuraini', 424, '22364286@uts.ac.id');
INSERT INTO `auths` VALUES ('A140525zru', '22327953', '$2y$10$OzinRemncnL.H2kDuJSCRu3n3O6xV7YrkvhoLFX4K9W/0gNtDd1A6', 'mahasiswa', '2025-05-14 10:34:36', '2025-05-14 10:34:36', 0, 'avatar.png', 0, NULL, 'dr. Jane Natsir', 427, '22327953@uts.ac.id');
INSERT INTO `auths` VALUES ('A140525hmq', '22369292', '$2y$10$MD9XJaQhIVeZaz4GJJAkrOGcMroR0.lDrgP3BAKYuaqA3GjF5.JlW', 'mahasiswa', '2025-05-14 10:34:36', '2025-05-14 10:34:36', 0, 'avatar.png', 0, NULL, 'Opan Simbolon', 428, '22369292@uts.ac.id');
INSERT INTO `auths` VALUES ('A140525cvc', '22426251', '$2y$10$EzHkJeJREv7ymcdrpnjrjePJ1A.BJp.fs4KMCLBXeWM2HFUQ8wMrq', 'mahasiswa', '2025-05-14 10:34:37', '2025-05-14 10:34:37', 0, 'avatar.png', 0, NULL, 'Drs. Limar Gunarto', 434, '22426251@uts.ac.id');
INSERT INTO `auths` VALUES ('A140525jzy', '22938507', '$2y$10$v45Y10EPkqjh..196sgyPO0g.f9FLmTHd4.HRZp6xLj0oQQwQiTXO', 'mahasiswa', '2025-05-14 10:34:38', '2025-05-14 10:34:38', 0, 'avatar.png', 0, NULL, 'Farah Wahyudin', 439, '22938507@uts.ac.id');
INSERT INTO `auths` VALUES ('A140525bhN', '22634878', '$2y$10$RvcwFhIMGSJHZsCP1bEOG.AwObjgqzPR3wEhATX6HjP35KbYU4xym', 'mahasiswa', '2025-05-14 10:34:38', '2025-05-14 10:34:38', 0, 'avatar.png', 0, NULL, 'Rahmi Ramadan', 440, '22634878@uts.ac.id');

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
INSERT INTO `ch_messages` VALUES ('5ba08256-259c-4278-83bc-a6e9c48953a1', 'A301220kBz', 'A010121WRI', 'tes', NULL, 0, '2025-03-03 13:30:44', '2025-03-03 13:30:44');
INSERT INTO `ch_messages` VALUES ('5e031313-1055-4fc6-aeca-4cbbdcffa1ff', '1', '52', '', '{\"new_name\":\"2d8e5e46-ff8f-4f97-aa65-272c89c8ab31.jpg\",\"old_name\":\"WhatsApp Image 2025-02-10 at 20.48.32_7e03b72b.jpg\"}', 0, '2025-04-28 20:02:05', '2025-04-28 20:02:05');
INSERT INTO `ch_messages` VALUES ('76a949e5-e8f6-4adc-afb2-e574df3a7f54', '7', '1', 'tes', NULL, 1, '2025-03-03 14:06:05', '2025-03-04 21:31:08');
INSERT INTO `ch_messages` VALUES ('d8156e8b-5b1d-45cd-8407-d7de9795c748', 'A301220kBz', 'A010121WRI', 'gass', NULL, 0, '2025-03-03 13:00:51', '2025-03-03 13:00:51');
INSERT INTO `ch_messages` VALUES ('f6f3a0a3-6d1a-4498-afdb-e5ab4100bc90', '1', '7', 'ok', NULL, 1, '2025-03-03 13:51:17', '2025-03-03 14:05:53');

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
  `id_nilai` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nim` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nilai_pengajuan` double NULL DEFAULT NULL,
  `nilai_bimbingan` double NULL DEFAULT NULL,
  `nilai_sidang` double NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `berita_acara` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_nilai`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of grades
-- ----------------------------
INSERT INTO `grades` VALUES ('NI250429B232015012', '232015012', NULL, NULL, NULL, NULL, NULL, 'berita_acara/45.Chandra_Alista_Fibriyan.pdf');
INSERT INTO `grades` VALUES ('NI250429B232015037', '232015037', NULL, NULL, NULL, NULL, NULL, 'berita_acara/15.Lalu_Aditya_Pandu_Rosy.pdf');
INSERT INTO `grades` VALUES ('NI250429B232015051', '232015051', NULL, NULL, NULL, NULL, NULL, 'berita_acara/30.Putri_Intan_Permata.pdf');
INSERT INTO `grades` VALUES ('NI250429B232015065', '232015065', NULL, NULL, NULL, NULL, NULL, 'berita_acara/39.Burhan.pdf');
INSERT INTO `grades` VALUES ('NI250429C232015032', '232015032', NULL, NULL, NULL, NULL, NULL, 'berita_acara/02.Surbini.pdf');
INSERT INTO `grades` VALUES ('NI250429C232015056', '232015056', NULL, NULL, NULL, NULL, NULL, 'berita_acara/04.R_Agus_Yuli_Fitriyanto.pdf');
INSERT INTO `grades` VALUES ('NI250429D232015005', '232015005', NULL, NULL, NULL, NULL, NULL, 'berita_acara/18.Rhaudatul_Aliyah.pdf');
INSERT INTO `grades` VALUES ('NI250429D232015009', '232015009', NULL, NULL, NULL, NULL, NULL, 'berita_acara/26.Maryanton.pdf');
INSERT INTO `grades` VALUES ('NI250429D232015046', '232015046', NULL, NULL, NULL, NULL, NULL, 'berita_acara/25.Dedi_Kuswanto.pdf');
INSERT INTO `grades` VALUES ('NI250429E232015028', '232015028', NULL, NULL, NULL, NULL, NULL, 'berita_acara/22.Herlina.pdf');
INSERT INTO `grades` VALUES ('NI250429F232015001', '232015001', NULL, NULL, NULL, NULL, NULL, 'berita_acara/12.Fabian_Ardianta');
INSERT INTO `grades` VALUES ('NI250429F232015004', '232015004', NULL, NULL, NULL, NULL, NULL, 'berita_acara/23.M_Arifin_Tagara.pdf');
INSERT INTO `grades` VALUES ('NI250429F232015025', '232015025', NULL, NULL, NULL, NULL, NULL, 'berita_acara/19.Neni_Afriliani.pdf');
INSERT INTO `grades` VALUES ('NI250429F232015030', '232015030', NULL, NULL, NULL, NULL, NULL, 'berita_acara/38.Wahyu_Arbain.pdf');
INSERT INTO `grades` VALUES ('NI250429G232015052', '232015052', NULL, NULL, NULL, NULL, NULL, 'berita_acara/36.Adrian_Sitompul.pdf');
INSERT INTO `grades` VALUES ('NI250429H232015016', '232015016', NULL, NULL, NULL, NULL, NULL, 'berita_acara/50.Maulidina_Yulia_Auli.pdf');
INSERT INTO `grades` VALUES ('NI250429H232015027', '232015027', NULL, NULL, NULL, NULL, NULL, 'berita_acara/46.Rahmat_Hidayat.pdf');
INSERT INTO `grades` VALUES ('NI250429H232015045', '232015045', NULL, NULL, NULL, NULL, NULL, 'berita_acara/05.Wendhi_Safitri.pdf');
INSERT INTO `grades` VALUES ('NI250429H232015061', '232015061', NULL, NULL, NULL, NULL, NULL, 'berita_acara/14.Jaya_Ariadi.pdf');
INSERT INTO `grades` VALUES ('NI250429H232015064', '232015064', NULL, NULL, NULL, NULL, NULL, 'berita_acara/40.Muhammad_Fuad.pdf');
INSERT INTO `grades` VALUES ('NI250429H232015071', '232015071', NULL, NULL, NULL, NULL, NULL, 'berita_acara/13.Ratilius_Sulcat.pdf');
INSERT INTO `grades` VALUES ('NI250429I232015007', '232015007', NULL, NULL, NULL, NULL, NULL, 'berita_acara/27.Arif_Rahman.pdf');
INSERT INTO `grades` VALUES ('NI250429I232015033', '232015033', NULL, NULL, NULL, NULL, NULL, 'berita_acara/06.Sulkarnain.pdf');
INSERT INTO `grades` VALUES ('NI250429I232015034', '232015034', NULL, NULL, NULL, NULL, NULL, 'berita_acara/09.Isnia_Nurul_Azmy.pdf');
INSERT INTO `grades` VALUES ('NI250429I232015038', '232015038', NULL, NULL, NULL, NULL, NULL, 'berita_acara/44.Wawan_Satriawan.pdf');
INSERT INTO `grades` VALUES ('NI250429K232015036', '232015036', NULL, NULL, NULL, NULL, NULL, 'berita_acara/08.Muslimin.pdf');
INSERT INTO `grades` VALUES ('NI250429L232015048', '232015048', NULL, NULL, NULL, NULL, NULL, 'berita_acara/11. Ketut_Arisanto.pdf');
INSERT INTO `grades` VALUES ('NI250429L232015053', '232015053', NULL, NULL, NULL, NULL, NULL, 'berita_acara/48.Agus_Kusuma_Atmaja.pdf');
INSERT INTO `grades` VALUES ('NI250429L232015057', '232015057', NULL, NULL, NULL, NULL, NULL, 'berita_acara/41.Ahmad_Syaichu.pdf');
INSERT INTO `grades` VALUES ('NI250429M231015063', '231015063', NULL, NULL, NULL, NULL, NULL, 'berita_acara/54.Syafruddin1.pdf');
INSERT INTO `grades` VALUES ('NI250429M232015010', '232015010', NULL, NULL, NULL, NULL, NULL, 'berita_acara/29.Ridha_Rangga_Radesakh.pdf');
INSERT INTO `grades` VALUES ('NI250429N232015050', '232015050', NULL, NULL, NULL, NULL, NULL, 'berita_acara/37.Bunyamin.pdf');
INSERT INTO `grades` VALUES ('NI250429O232015044', '232015044', NULL, NULL, NULL, NULL, NULL, 'berita_acara/03.Sahuddin.pdf');
INSERT INTO `grades` VALUES ('NI250429P232015035', '232015035', NULL, NULL, NULL, NULL, NULL, 'berita_acara/43.Nasruddin.pdf');
INSERT INTO `grades` VALUES ('NI250429P232015070', '232015070', NULL, NULL, NULL, NULL, NULL, 'berita_acara/52.Isnaini_Aprila.pdf');
INSERT INTO `grades` VALUES ('NI250429Q232015058', '232015058', NULL, NULL, NULL, NULL, NULL, 'berita_acara/53.Syarif_Hidayatullah.pdf');
INSERT INTO `grades` VALUES ('NI250429R232015015', '232015015', NULL, NULL, NULL, NULL, NULL, 'berita_acara/35.Bachtiar_Maulana.pdf');
INSERT INTO `grades` VALUES ('NI250429S232015019', '232015019', NULL, NULL, NULL, NULL, NULL, 'berita_acara/24.Hadijah.pdf');
INSERT INTO `grades` VALUES ('NI250429S232015026', '232015026', NULL, NULL, NULL, NULL, NULL, 'berita_acara/21.Herman.pdf');
INSERT INTO `grades` VALUES ('NI250429S232015031', '232015031', NULL, NULL, NULL, NULL, NULL, 'berita_acara/01.Zainuddin.pdf');
INSERT INTO `grades` VALUES ('NI250429S232015054', '232015054', NULL, NULL, NULL, NULL, NULL, 'berita_acara/47.Heriyanto.pdf');
INSERT INTO `grades` VALUES ('NI250429T232015021', '232015021', NULL, NULL, NULL, NULL, NULL, 'berita_acara/49.Novita_Laily_Shalatiah.pdf');
INSERT INTO `grades` VALUES ('NI250429T232015066', '232015066', NULL, NULL, NULL, NULL, NULL, 'berita_acara/42.Muamar.pdf');
INSERT INTO `grades` VALUES ('NI250429U232015049', '232015049', NULL, NULL, NULL, NULL, NULL, 'berita_acara/16.Didin_Friansyah.pdf');
INSERT INTO `grades` VALUES ('NI250429U232015060', '232015060', NULL, NULL, NULL, NULL, NULL, 'berita_acara/31.Badrus_Syamsu.pdf');
INSERT INTO `grades` VALUES ('NI250429V232015008', '232015008', NULL, NULL, NULL, NULL, NULL, 'berita_acara/28.Muarif.pdf');
INSERT INTO `grades` VALUES ('NI250429V232015011', '232015011', NULL, NULL, NULL, NULL, NULL, 'berita_acara/20.Darmatasia.pdf');
INSERT INTO `grades` VALUES ('NI250429V232015024', '232015024', NULL, NULL, NULL, NULL, NULL, 'berita_acara/33.Sofyan_Hadi.pdf');
INSERT INTO `grades` VALUES ('NI250429X232015006', '232015006', NULL, NULL, NULL, NULL, NULL, 'berita_acara/17.Andri_Darmansyah.pdf');
INSERT INTO `grades` VALUES ('NI250429X232015039', '232015039', NULL, NULL, NULL, NULL, NULL, 'berita_acara/07.Sama.pdf');
INSERT INTO `grades` VALUES ('NI250429Y232015003', '232015003', NULL, NULL, NULL, NULL, NULL, 'berita_acara/10.Sahrul_Yadi.pdf');
INSERT INTO `grades` VALUES ('NI250429Y232015017', '232015017', NULL, NULL, NULL, NULL, NULL, 'berita_acara/51.Imran_Nurhakim.pdf');
INSERT INTO `grades` VALUES ('NI250429Z232015069', '232015069', NULL, NULL, NULL, NULL, NULL, 'berita_acara/32.Indra_Jaya.pdf');

-- ----------------------------
-- Table structure for groups
-- ----------------------------
DROP TABLE IF EXISTS `groups`;
CREATE TABLE `groups`  (
  `id_grup` bigint NOT NULL AUTO_INCREMENT,
  `nama_grup` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tahun` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_grup`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of groups
-- ----------------------------
INSERT INTO `groups` VALUES (1, 'Bimbingan Pak Bambang', '2025', '2025-02-14 14:50:40', '2025-02-14 14:50:43');
INSERT INTO `groups` VALUES (2, 'Bimbingan Timnas Garuda', '2025', '2025-03-19 10:57:08', '2025-03-19 10:57:08');

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
  `nidn` int NOT NULL AUTO_INCREMENT,
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
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`nidn`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1810530290 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of lecturers
-- ----------------------------
INSERT INTO `lecturers` VALUES (428068802, 'A270425iNE', NULL, NULL, 'DR. ZULKIEFLIMANSYAH, M.Sc', 'Sumbawa', '8123457692', '428068802@uts.ac.id', 'Ya', 'Ya', '2025-04-27 22:10:20', '2025-04-27 22:10:20');
INSERT INTO `lecturers` VALUES (428068803, 'A270425yLi', NULL, NULL, 'Dr. Ahmad Yamin, S.H., M.H', 'Sumbawa', '8123457693', '428068803@uts.ac.id', 'Ya', 'Ya', '2025-04-27 22:10:20', '2025-04-27 22:10:20');
INSERT INTO `lecturers` VALUES (428068804, 'A270425cpC', NULL, NULL, 'Dr. Ahmad Yamin, S.H., M.H.', 'Sumbawa', '8123457694', '428068804@uts.ac.id', 'Ya', 'Ya', '2025-04-27 22:10:20', '2025-04-27 22:10:20');
INSERT INTO `lecturers` VALUES (428068805, 'A270425rGx', NULL, NULL, 'DR. Ahmad Yamin, SH, MH', 'Sumbawa', '8123457695', '428068805@uts.ac.id', 'Ya', 'Ya', '2025-04-27 22:10:20', '2025-04-27 22:10:20');
INSERT INTO `lecturers` VALUES (428068807, 'A270425lGI', NULL, NULL, 'DR. AHMAD YAMIN, SH., MH', 'Sumbawa', '8123457697', '428068807@uts.ac.id', 'Ya', 'Ya', '2025-04-27 22:10:20', '2025-04-27 22:10:20');
INSERT INTO `lecturers` VALUES (428068808, 'A270425z0x', NULL, NULL, 'Dr. Ahmad Yamin, SH., M.H', 'Sumbawa', '8123457698', '428068808@uts.ac.id', 'Ya', 'Ya', '2025-04-27 22:10:20', '2025-04-27 22:10:20');
INSERT INTO `lecturers` VALUES (428068809, 'A270425vXk', NULL, NULL, 'Dr. Ahmad Yamin, SH.,M.H', 'Sumbawa', '8123457699', '428068809@uts.ac.id', 'Ya', 'Ya', '2025-04-27 22:10:20', '2025-04-27 22:10:20');
INSERT INTO `lecturers` VALUES (428068811, 'A270425hZr', NULL, NULL, 'DR. ZULKIEFLIMANSYAH,M.Sc', 'Sumbawa', '8123457701', '428068811@uts.ac.id', 'Ya', 'Ya', '2025-04-27 22:10:21', '2025-04-27 22:10:21');
INSERT INTO `lecturers` VALUES (428068812, 'A270425sDh', NULL, NULL, 'Dr. Umar, S.Pd., M.Pd. ', 'Sumbawa', '8123457702', '428068812@uts.ac.id', 'Ya', 'Ya', '2025-04-27 22:10:21', '2025-04-27 22:10:21');
INSERT INTO `lecturers` VALUES (428068813, 'A270425nVF', NULL, NULL, 'Dr. Umar., S.Pd., M.Pd.', 'Sumbawa', '8123457703', '428068813@uts.ac.id', 'Ya', 'Ya', '2025-04-27 22:10:21', '2025-04-27 22:10:21');
INSERT INTO `lecturers` VALUES (428068814, 'A270425tEb', NULL, NULL, 'DR. AHMAD YAMIN, SH., MH  ', 'Sumbawa', '8123457704', '428068814@uts.ac.id', 'Ya', 'Ya', '2025-04-27 22:10:21', '2025-04-27 22:10:21');
INSERT INTO `lecturers` VALUES (428068815, 'A2704254ZZ', NULL, NULL, 'Dr. Ahmad Yamin,S.H,.M.H', 'Sumbawa', '8123457705', '428068815@uts.ac.id', 'Ya', 'Ya', '2025-04-27 22:10:21', '2025-04-27 22:10:21');
INSERT INTO `lecturers` VALUES (428068816, 'A270425e5z', NULL, NULL, 'Dr. ZULKIFLIMANSYAH, M.Sc', 'Sumbawa', '8123457706', '428068816@uts.ac.id', 'Ya', 'Ya', '2025-04-27 22:10:21', '2025-04-27 22:10:21');
INSERT INTO `lecturers` VALUES (428068817, 'A270425Ke7', NULL, NULL, 'Dr.Umar.S.Pd.,M.Pd', 'Sumbawa', '8123457707', '428068817@uts.ac.id', 'Ya', 'Ya', '2025-04-27 22:10:21', '2025-04-27 22:10:21');
INSERT INTO `lecturers` VALUES (428068818, 'A270425yI4', NULL, NULL, 'Dr. Supriyadi, S.HI., M.HI', 'Sumbawa', '8123457708', '428068818@uts.ac.id', 'Ya', 'Ya', '2025-04-27 22:10:21', '2025-04-27 22:10:21');
INSERT INTO `lecturers` VALUES (428068819, 'A270425KjT', NULL, NULL, 'Dr. Umar, S.Pd., M.Pd', 'Sumbawa', '8123457709', '428068819@uts.ac.id', 'Ya', 'Ya', '2025-04-27 22:10:22', '2025-04-27 22:10:22');
INSERT INTO `lecturers` VALUES (428068820, 'A2704250s9', NULL, NULL, 'Dr Yolli Eka Putri, M.M', 'Sumbawa', '8123457710', '428068820@uts.ac.id', 'Ya', 'Ya', '2025-04-27 22:10:22', '2025-04-27 22:10:22');
INSERT INTO `lecturers` VALUES (428068821, 'A270425bTd', NULL, NULL, 'Dr.zulkieflimansyah', 'Sumbawa', '8123457711', '428068821@uts.ac.id', 'Ya', 'Ya', '2025-04-27 22:10:22', '2025-04-27 22:10:22');
INSERT INTO `lecturers` VALUES (428068823, 'A270425aOb', NULL, NULL, 'Dr.Harjito ', 'Sumbawa', '8123457713', '428068823@uts.ac.id', 'Ya', 'Ya', '2025-04-27 22:10:22', '2025-04-27 22:10:22');
INSERT INTO `lecturers` VALUES (428068824, 'A2704254di', NULL, NULL, 'Dr. Suparman, S.Pd.,M.Pd.B.I', 'Sumbawa', '8123457714', '428068824@uts.ac.id', 'Ya', 'Ya', '2025-04-27 22:10:22', '2025-04-27 22:10:22');
INSERT INTO `lecturers` VALUES (428068826, 'A270425ceK', NULL, NULL, 'Dr. Ir. H. Muhammad Saleh M,Si', 'Sumbawa', '8123457716', '428068826@uts.ac.id', 'Ya', 'Ya', '2025-04-27 22:10:22', '2025-04-27 22:10:22');
INSERT INTO `lecturers` VALUES (428068827, 'A270425Nar', NULL, NULL, 'Dr. Radyum Ikono, M.Eng', 'Sumbawa', '8123457717', '428068827@uts.ac.id', 'Ya', 'Ya', '2025-04-27 22:10:22', '2025-04-27 22:10:22');
INSERT INTO `lecturers` VALUES (428068828, 'A270425D7S', NULL, NULL, 'Dr. Yolli Eka Putri,M.M', 'Sumbawa', '8123457718', '428068828@uts.ac.id', 'Ya', 'Ya', '2025-04-27 22:10:23', '2025-04-27 22:10:23');
INSERT INTO `lecturers` VALUES (428068829, 'A270425QUq', NULL, NULL, 'Dr. SUPARMAN, S.Pd., M.Pd.B.I.', 'Sumbawa', '8123457719', '428068829@uts.ac.id', 'Ya', 'Ya', '2025-04-27 22:10:23', '2025-04-27 22:10:23');
INSERT INTO `lecturers` VALUES (428068830, 'A270425kD8', NULL, NULL, 'Dr. Dedy Heriwibowo, M.Si', 'Sumbawa', '8123457720', '428068830@uts.ac.id', 'Ya', 'Ya', '2025-04-27 22:10:23', '2025-04-27 22:10:23');
INSERT INTO `lecturers` VALUES (428068831, 'A270425W9v', NULL, NULL, 'Dr. Supriyadi, S.HI., M.HI.', 'Sumbawa', '8123457721', '428068831@uts.ac.id', 'Ya', 'Ya', '2025-04-27 22:10:23', '2025-04-27 22:10:23');
INSERT INTO `lecturers` VALUES (428068832, 'A270425dps', NULL, NULL, 'Dr. Dianto.,SH.,MH', 'Sumbawa', '8123457722', '428068832@uts.ac.id', 'Ya', 'Ya', '2025-04-27 22:10:23', '2025-04-27 22:10:23');
INSERT INTO `lecturers` VALUES (428068833, 'A270425uht', NULL, NULL, 'Dr. Umar, S.Pd., M.Pd.', 'Sumbawa', '8123457723', '428068833@uts.ac.id', 'Ya', 'Ya', '2025-04-27 22:10:23', '2025-04-27 22:10:23');
INSERT INTO `lecturers` VALUES (428068834, 'A2704251Ny', NULL, NULL, 'Dr. Harjito', 'Sumbawa', '8123457724', '428068834@uts.ac.id', 'Ya', 'Ya', '2025-04-27 22:10:23', '2025-04-27 22:10:23');
INSERT INTO `lecturers` VALUES (428068835, 'A270425vZD', NULL, NULL, 'Rusmin Nurjadin, M.Pd', 'Sumbawa', '8123457725', '428068835@uts.ac.id', 'Ya', 'Ya', '2025-04-27 22:10:23', '2025-04-27 22:10:23');
INSERT INTO `lecturers` VALUES (428068836, 'A270425B1l', NULL, NULL, 'Najamuddin, M.Pd', 'Sumbawa', '8123457726', '428068836@uts.ac.id', 'Ya', 'Ya', '2025-04-27 22:10:24', '2025-04-27 22:10:24');
INSERT INTO `lecturers` VALUES (428068837, 'A270425egi', NULL, NULL, 'Dedy Dharmawansyah, S.T., M.T.', 'Sumbawa', '8123457727', '428068837@uts.ac.id', 'Ya', 'Ya', '2025-04-27 22:10:24', '2025-04-27 22:10:24');
INSERT INTO `lecturers` VALUES (428068838, 'A270425vc9', NULL, NULL, 'Aldi Aprimsyah, S.IP, M. IP', 'Sumbawa', '8123457728', '428068838@uts.ac.id', 'Ya', 'Ya', '2025-04-27 22:10:24', '2025-04-27 22:10:24');
INSERT INTO `lecturers` VALUES (428068839, 'A2704250OH', NULL, NULL, 'ADI ARDIANSYAH, S.TP., M.T', 'Sumbawa', '8123457729', '428068839@uts.ac.id', 'Ya', 'Ya', '2025-04-27 22:10:24', '2025-04-27 22:10:24');
INSERT INTO `lecturers` VALUES (428068840, 'A270425GDG', NULL, NULL, 'Dr. Ahmad Yamin, SH.,MH', 'Sumbawa', '8123457730', '428068840@uts.ac.id', 'Ya', 'Ya', '2025-04-27 22:10:24', '2025-04-27 22:10:24');
INSERT INTO `lecturers` VALUES (428068841, 'A270425KVu', NULL, NULL, 'DR. YOLLI EKA PUTRI, M.M', 'Sumbawa', '8123457731', '428068841@uts.ac.id', 'Ya', 'Ya', '2025-04-27 22:10:24', '2025-04-27 22:10:24');
INSERT INTO `lecturers` VALUES (428068842, 'A2704254s6', NULL, NULL, 'NOVA ADHITYA ANANDA, S.E.,M.M.', 'Sumbawa', '8123457732', '428068842@uts.ac.id', 'Ya', 'Ya', '2025-04-27 22:10:24', '2025-04-27 22:10:24');
INSERT INTO `lecturers` VALUES (428068843, 'A270425Zsu', NULL, NULL, 'Tomi Dwi Cahyono, S.Kom., M.M.', 'Sumbawa', '8123457733', '428068843@uts.ac.id', 'Ya', 'Ya', '2025-04-27 22:10:25', '2025-04-27 22:10:25');
INSERT INTO `lecturers` VALUES (428068844, 'A270425NXb', NULL, NULL, 'Najamudin, S.Pd., M.Pd', 'Sumbawa', '8123457734', '428068844@uts.ac.id', 'Ya', 'Ya', '2025-04-27 22:10:25', '2025-04-27 22:10:25');
INSERT INTO `lecturers` VALUES (428068845, 'A270425Xxv', NULL, NULL, 'GEATRIANA DEWI, S.H., M.H', 'Sumbawa', '8123457735', '428068845@uts.ac.id', 'Ya', 'Ya', '2025-04-27 22:10:25', '2025-04-27 22:10:25');
INSERT INTO `lecturers` VALUES (428068846, 'A270425D07', NULL, NULL, 'Mietra Anggara, ST.,MT', 'Sumbawa', '8123457736', '428068846@uts.ac.id', 'Ya', 'Ya', '2025-04-27 22:10:25', '2025-04-27 22:10:25');
INSERT INTO `lecturers` VALUES (428068847, 'A270425ern', NULL, NULL, 'Dr. Ahmad Yamin, S.H.,M.H.', 'Sumbawa', '8123457737', '428068847@uts.ac.id', 'Ya', 'Ya', '2025-04-27 22:10:25', '2025-04-27 22:10:25');
INSERT INTO `lecturers` VALUES (428068848, 'A270425odm', NULL, NULL, 'DR. AHMAD YAMIN,SH.,MH', 'Sumbawa', '8123457738', '428068848@uts.ac.id', 'Ya', 'Ya', '2025-04-27 22:10:25', '2025-04-27 22:10:25');
INSERT INTO `lecturers` VALUES (428068849, 'A270425eqk', NULL, NULL, 'Dr. Muammar Khadafie, M.Pd.i ', 'Sumbawa', '8123457739', '428068849@uts.ac.id', 'Ya', 'Ya', '2025-04-27 22:10:25', '2025-04-27 22:10:25');
INSERT INTO `lecturers` VALUES (428068850, 'A270425tGH', NULL, NULL, 'Dr. Muammar Khadafie., M.Pd.I ', 'Sumbawa', '8123457740', '428068850@uts.ac.id', 'Ya', 'Ya', '2025-04-27 22:10:25', '2025-04-27 22:10:25');
INSERT INTO `lecturers` VALUES (428068852, 'A270425njD', NULL, NULL, 'HANIFA SRI NURYANI, S.E.,M.M.', 'Sumbawa', '8123457742', '428068852@uts.ac.id', 'Ya', 'Ya', '2025-04-27 22:10:26', '2025-04-27 22:10:26');
INSERT INTO `lecturers` VALUES (428068853, 'A2704250w5', NULL, NULL, 'Geatriana Dewi,S.H.,M.H', 'Sumbawa', '8123457743', '428068853@uts.ac.id', 'Ya', 'Ya', '2025-04-27 22:10:26', '2025-04-27 22:10:26');
INSERT INTO `lecturers` VALUES (428068854, 'A270425QzU', NULL, NULL, 'Dr. AHMAD YAMIN, SH., MH.', 'Sumbawa', '8123457744', '428068854@uts.ac.id', 'Ya', 'Ya', '2025-04-27 22:10:26', '2025-04-27 22:10:26');
INSERT INTO `lecturers` VALUES (428068855, 'A270425Vro', NULL, NULL, 'Anwar, S. Pd, M.Pd', 'Sumbawa', '8123457745', '428068855@uts.ac.id', 'Ya', 'Ya', '2025-04-27 22:10:26', '2025-04-27 22:10:26');
INSERT INTO `lecturers` VALUES (428068856, 'A270425pQH', NULL, NULL, 'Subari, M.Pd', 'Sumbawa', '8123457746', '428068856@uts.ac.id', 'Ya', 'Ya', '2025-04-27 22:10:26', '2025-04-27 22:10:26');
INSERT INTO `lecturers` VALUES (428068857, 'A270425aJv', NULL, NULL, 'ANWAR, S. Pd., M. Pd', 'Sumbawa', '8123457747', '428068857@uts.ac.id', 'Ya', 'Ya', '2025-04-27 22:10:26', '2025-04-27 22:10:26');
INSERT INTO `lecturers` VALUES (428068858, 'A270425aYO', NULL, NULL, 'Subari, S.Pd., M.Pd', 'Sumbawa', '8123457748', '428068858@uts.ac.id', 'Ya', 'Ya', '2025-04-27 22:10:26', '2025-04-27 22:10:26');
INSERT INTO `lecturers` VALUES (428068859, 'A270425vz1', NULL, NULL, 'Najamudin,M.Pd', 'Sumbawa', '8123457749', '428068859@uts.ac.id', 'Ya', 'Ya', '2025-04-27 22:10:27', '2025-04-27 22:10:27');
INSERT INTO `lecturers` VALUES (428068860, 'A270425I4q', NULL, NULL, 'Dr. Muammar Khadafie, M.Pd.I.', 'Sumbawa', '8123457750', '428068860@uts.ac.id', 'Ya', 'Ya', '2025-04-27 22:10:27', '2025-04-27 22:10:27');
INSERT INTO `lecturers` VALUES (428068861, 'A270425wKX', NULL, NULL, 'Lukmanul Hakim,M.Si', 'Sumbawa', '8123457751', '428068861@uts.ac.id', 'Ya', 'Ya', '2025-04-27 22:10:27', '2025-04-27 22:10:27');
INSERT INTO `lecturers` VALUES (428068862, 'A270425MpJ', NULL, NULL, 'Dr. Muamar Khadafie,.M.Pd.I', 'Sumbawa', '8123457752', '428068862@uts.ac.id', 'Ya', 'Ya', '2025-04-27 22:10:27', '2025-04-27 22:10:27');
INSERT INTO `lecturers` VALUES (428068863, 'A270425aBC', NULL, NULL, 'Fitriah Permata Citra, M.E', 'Sumbawa', '8123457753', '428068863@uts.ac.id', 'Ya', 'Ya', '2025-04-27 22:10:27', '2025-04-27 22:10:27');
INSERT INTO `lecturers` VALUES (428068864, 'A2704256rz', NULL, NULL, 'Dr. Muammar Khadafie, M.Pd.', 'Sumbawa', '8123457754', '428068864@uts.ac.id', 'Ya', 'Ya', '2025-04-27 22:10:27', '2025-04-27 22:10:27');
INSERT INTO `lecturers` VALUES (428068865, 'A270425DtX', NULL, NULL, 'Wiwik Surya Utami, S.S, M.Pd', 'Sumbawa', '8123457755', '428068865@uts.ac.id', 'Ya', 'Ya', '2025-04-27 22:10:27', '2025-04-27 22:10:27');
INSERT INTO `lecturers` VALUES (428068866, 'A270425Ekk', NULL, NULL, 'Dr.ahmad yamin', 'Sumbawa', '8123457756', '428068866@uts.ac.id', 'Ya', 'Ya', '2025-04-27 22:10:27', '2025-04-27 22:10:27');
INSERT INTO `lecturers` VALUES (428068868, 'A270425s0x', NULL, NULL, 'Adi Ardiyansyah, S.TP.,M.T', 'Sumbawa', '8123457758', '428068868@uts.ac.id', 'Ya', 'Ya', '2025-04-27 22:10:28', '2025-04-27 22:10:28');
INSERT INTO `lecturers` VALUES (428068869, 'A270425Kju', NULL, NULL, 'Supriadi, S.Pd.,M.Ed', 'Sumbawa', '8123457759', '428068869@uts.ac.id', 'Ya', 'Ya', '2025-04-27 22:10:28', '2025-04-27 22:10:28');
INSERT INTO `lecturers` VALUES (428068871, 'A2704250Z5', NULL, NULL, 'Husni  S,Pt.,M.Si', 'Sumbawa', '8123457761', '428068871@uts.ac.id', 'Ya', 'Ya', '2025-04-27 22:10:28', '2025-04-27 22:10:28');
INSERT INTO `lecturers` VALUES (428068872, 'A270425XnW', NULL, NULL, 'Supriadi, S.Pd, M.Ed', 'Sumbawa', '8123457762', '428068872@uts.ac.id', 'Ya', 'Ya', '2025-04-27 22:10:28', '2025-04-27 22:10:28');
INSERT INTO `lecturers` VALUES (428068873, 'A2704258M6', NULL, NULL, 'Junaedi, S.Pd., M.Pd.', 'Sumbawa', '8123457763', '428068873@uts.ac.id', 'Ya', 'Ya', '2025-04-27 22:10:28', '2025-04-27 22:10:28');
INSERT INTO `lecturers` VALUES (428068874, 'A2704256GV', NULL, NULL, 'Diah Anggraini Hasrani, M.Si ', 'Sumbawa', '8123457764', '428068874@uts.ac.id', 'Ya', 'Ya', '2025-04-27 22:10:28', '2025-04-27 22:10:28');
INSERT INTO `lecturers` VALUES (428068875, 'A270425YRJ', NULL, NULL, 'SUKARDDIN, M.Pd', 'Sumbawa', '8123457765', '428068875@uts.ac.id', 'Ya', 'Ya', '2025-04-27 22:10:28', '2025-04-27 22:10:28');
INSERT INTO `lecturers` VALUES (428068876, 'A270425ixn', NULL, NULL, 'Shinta Esabella, S.T., M.TI', 'Sumbawa', '8123457766', '428068876@uts.ac.id', 'Ya', 'Ya', '2025-04-27 22:10:29', '2025-04-27 22:10:29');
INSERT INTO `lecturers` VALUES (428068877, 'A270425s62', NULL, NULL, 'Husni, S.Pt., M.Si.', 'Sumbawa', '8123457767', '428068877@uts.ac.id', 'Ya', 'Ya', '2025-04-27 22:10:29', '2025-04-27 22:10:29');
INSERT INTO `lecturers` VALUES (428068878, 'A2704259tS', NULL, NULL, 'Syamsul Bahtiar, S.,Si.,M.Si', 'Sumbawa', '8123457768', '428068878@uts.ac.id', 'Ya', 'Ya', '2025-04-27 22:10:29', '2025-04-27 22:10:29');
INSERT INTO `lecturers` VALUES (428068879, 'A270425ABV', NULL, NULL, 'Wawan Hermansyah, S.Pd., M.Pd', 'Sumbawa', '8123457769', '428068879@uts.ac.id', 'Ya', 'Ya', '2025-04-27 22:10:29', '2025-04-27 22:10:29');
INSERT INTO `lecturers` VALUES (428068880, 'A270425oML', NULL, NULL, 'Dr. Ahmad Yamin, SH.,MH.', 'Sumbawa', '8123457770', '428068880@uts.ac.id', 'Ya', 'Ya', '2025-04-27 22:10:29', '2025-04-27 22:10:29');
INSERT INTO `lecturers` VALUES (428068882, 'A270425Io7', NULL, NULL, 'Husni, S.Pt.', 'Sumbawa', '8123457772', '428068882@uts.ac.id', 'Ya', 'Ya', '2025-04-27 22:10:29', '2025-04-27 22:10:29');

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
INSERT INTO `prasidang` VALUES ('PS2804251C', '232015001', '2025-04-28 00:06:02', '2025-04-28 00:06:02', 'Angkatan 12', 'ISLAM', 'Generik Inovasi', 'Implementation of Blue Economy Policy for Supporting Sustainable Shrimp Culture  [Case Study of the Fish Cultivator Group (Pokdakan) Cahaya Buin Baru Shrimp Pond Cluster, Buen Beru Village, Buer District, Sumbawa Regency]', 'Implementasi Kebijakan Ekonomi Biru Untuk Mendukung Budidaya Udang Berkelanjutan  (Studi Kasus Pada Klaster Tambak Udang Pokdakan Cahaya Buin Baru Desa Buen Beru Kecamatan Buer  Kabupaten Sumbawa)', 'https://drive.google.com/open?id=1khcR03tOvHIYf4i-8QMrY9HT7cVBgxNa', 'https://drive.google.com/open?id=1KHP4cGz-VMApUycX-3wBISKg_gZDeEbC', 'https://drive.google.com/open?id=17uaHanSu41UA9zbIx-gg3sDGkXksKKc1', 'https://drive.google.com/open?id=1SRNeFkPTmVCvXNzGftNFvfqwgDAN4_Pu', 'https://drive.google.com/open?id=1yLQIo7LucMN3OZBa-HRq6OHbYPq7upop', 'https://drive.google.com/open?id=13ekOWG9iyPHhUbOALCKDzZrcSEDiWZWX', 'proses');
INSERT INTO `prasidang` VALUES ('PS280425RO', '232015033', '2025-04-28 00:06:02', '2025-04-28 00:06:02', 'Angkatan 12', 'Islam', 'Generik Inovasi', 'Implementation of the policy on the use of drilled wells as an effort to overcome crop failure in agricultural areas in taliwang sub-District, west Sumbawa regency', 'IMPLEMENTASI KEBIJAKAN PEMANFAATAN SUMUR BOR SEBAGAI  UPAYA MENGATASI GAGAL PANEN  PADA AREAL PERTANIAN  DI KECAMATAN TALIWANG   KABUPATEN SUMBAWA BARAT', 'https://drive.google.com/open?id=1nnECe4XhVG4X1AQ-7jrnpeeNP7eCw8u5', 'https://drive.google.com/open?id=1TeyiVnufiNNfg6w9h-tub1fywew4ThJQ', 'https://drive.google.com/open?id=1ydhIXb8e0QypqCrkLDyPq9OCi0NioZIg', 'https://drive.google.com/open?id=1pFTQoMaOZK5bxCqigPvxs--HA2AnNM_R', 'https://drive.google.com/open?id=1fWmQuF5NvjZfVvRauZm4BldDQhf_SMJi', 'https://drive.google.com/open?id=1-W8-Pe6KjwpRVVuO4Eq8eo2vk0dDHHIb', 'proses');
INSERT INTO `prasidang` VALUES ('PS280425B1', '232015036', '2025-04-28 00:06:02', '2025-04-28 00:06:02', 'Angkatan 12', 'ISLAM', 'Generik Inovasi', 'THE INFLUENCE OF WORKLOAD AND ENVIRONMENT ON THE PERFORMANCE OF EMPLOYEES IN THE ARAB KENINGAN DISTRICT WEST SUMBAWA DISTRICT', 'PENGARUH BEBAN KERJA DAN LINGKUNGAN TERHADAP KINERJA PEGAWAI KELURAHAN ARAB KENANGAN KABUPATEN SUMBAWA BARAT', 'https://drive.google.com/open?id=1Am9o0pnEeTahDLjM2CIzX3pdjXtdtlxJ', 'https://drive.google.com/open?id=1SFgqsgu165uWM1BhRyBGC00hszMw2Ye4', 'https://drive.google.com/open?id=1GJpyfB4bRyW23TwycrmRH3He2KJOsIpM', 'https://drive.google.com/open?id=12x-H85N7ODq8c7WBMfoTfkpYplV2kNMA', 'https://drive.google.com/open?id=1FiBSkFxzfxio2BgZi_2bLy_ns-CgwFfR', 'https://drive.google.com/open?id=1yhd9cj6Ovg-6dkNYcK_f2BYlhxqzVIs-', 'proses');
INSERT INTO `prasidang` VALUES ('PS280425QD', '232015034', '2025-04-28 00:06:02', '2025-04-28 00:06:02', 'Angkatan 12', 'ISLAM', 'Generik Inovasi', 'IMPLEMENTATION OF SANITATION HYGIENE POLICY IN THE TALIWANG Slaughterhouse (RPH) WEST SUMBAWA DISTRICT AS A REQUIREMENT FOR HEALTHY MEAT PRODUCTION', 'IMPLEMENTASI KEBIJAKAN HIGIENE SANITASI PADA RUMAH POTONG HEWAN (RPH) TALIWANG KABUPATEN SUMBAWA BARAT SEBAGAI SYARAT PRODUKSI DAGING SEHAT', 'https://drive.google.com/open?id=1ytQCWMefAZ4oMjNmgdKxAko3cUSK4cW8', 'https://drive.google.com/open?id=14_JEFOXm2usGlQZ4B8db40SP5ep19c7l', 'https://drive.google.com/open?id=1CZ491Drmwe7k67mmX5yl3PRWk5g-Vksr', 'https://drive.google.com/open?id=1bTzoNmkOZ5S3dS25bV_9owz7gJGZcoVx', 'https://drive.google.com/open?id=1SISdn_RqTIu8YpmyV05akD1VaUMC4tOC', 'https://drive.google.com/open?id=1LTq8yDizG9QdvTTQX1uXl6PhQ4U2KG82', 'proses');
INSERT INTO `prasidang` VALUES ('PS280425L9', '232015048', '2025-04-28 00:06:02', '2025-04-28 00:06:02', 'Angkatan 12', 'Hindhu', 'Generik Inovasi', 'Development of Community based tourism destination in labuan badas district Sumbawa Regency', 'Pengembangan Destinasi Pariwisata Berbasis Masyarakat (Community Based Tourism Destination) di Kecamatan Labuan Badas Kabupaten Sumbawa', 'https://drive.google.com/open?id=1MbGezOvTbfmAGsSnNXdNIlXtZgATV7X_', 'https://drive.google.com/open?id=1qMDdxiYTzAgfJYGiBjKyz-XvAB_oH5ZJ', 'https://drive.google.com/open?id=1J26LwxxBDiLz9GzjsqjioO07CtwXNMXJ', 'https://drive.google.com/open?id=1gSy5C9W6CrIH60QRi-Jn5dSQ09wDMOI0', 'https://drive.google.com/open?id=17nwnrQyYUVZSwSr199q1x_e2m-Qelcf3', 'https://drive.google.com/open?id=1pnn46AQ68WheF7Lv64ePkESXRixRWcv9', 'proses');
INSERT INTO `prasidang` VALUES ('PS28042558', '232015032', '2025-04-28 00:06:02', '2025-04-28 00:06:02', 'Angkatan 12', 'Islam', 'Generik Inovasi', 'Implementation of Public Policy for Integrated District Administrative Services (PATEN) at the Lape District Office, Sumbawa Regency', 'IMPLEMENTASI KEBIJAKAN PUBLIK PELAYANAN ADMINISTRASI TERPADU KECAMATAN (PATEN) PADA KANTOR CAMAT LAPE KABUPATEN SUMBAWA', 'https://drive.google.com/open?id=1YFTLiFtwP93gBv_PnUmA6gyZjy3WKzUL', 'https://drive.google.com/open?id=1IaQd6gzmibZkpCajlrkFV_1cmAd3sbqj', 'https://drive.google.com/open?id=1lNSoNzN144NHFf3ggwSSz9u6ETj9VAzH', 'https://drive.google.com/open?id=1oRpKnsSzYNRzVXtDMcYh1k0wLyBsMSkQ', 'https://drive.google.com/open?id=15ubU2ntwJHU58fRFU5iY4BWzC98JDUTC', 'https://drive.google.com/open?id=17IoaPcQkt98UOq4d2w6yL1YUvOxmgiSZ', 'proses');
INSERT INTO `prasidang` VALUES ('PS280425TO', '232015031', '2025-04-28 00:06:02', '2025-04-28 00:06:02', 'Angkatan 12', 'Islam', 'Generik Inovasi', 'Implementation of the District Head\'s Duties in the Guidance and Supervision of Village Governance in Lape District, Sumbawa Regency', 'IMPLEMENTASI TUGAS CAMAT DALAM PEMBINAAN DAN PENGAWASAN PENYELENGGARAAN PEMERINTAHAN DESA DI KECAMATAN LAPE KABUPATEN SUMBAWA', 'https://drive.google.com/open?id=16J9uwKwOaV-ws_28PnoRuLlh3lQytEsD', 'https://drive.google.com/open?id=1j8XAxXoH_oNszEPeR-Lv6xJfGq9BjqMX', 'https://drive.google.com/open?id=1qdvlyj8DlnDl5sVTTn5Vb4zHHkq7qyn3', 'https://drive.google.com/open?id=1B0iKgxB8MDx9Gm5C-FV1v2w9bpYNLIJd', 'https://drive.google.com/open?id=1LrnMwxx9HnlI_BUzrWE44JMKTFROrwWo', 'https://drive.google.com/open?id=1gcZJ9V2gT_ir3qUO28bR-2MdP5vtdmYe', 'proses');
INSERT INTO `prasidang` VALUES ('PS280425VS', '232015044', '2025-04-28 00:06:02', '2025-04-28 00:06:02', 'Angkatan 12', 'Islam', 'Generik Inovasi', '\"Implementation of Environmentally Friendly Smart Village Development in  Langam Village, Lopok District, Sumbawa Regency.\"', 'Implementasi Smart Desa Yang Rama Lingkungan di Desa Langam Kecamatan Lopok Kabupaten Sumbawa', 'https://drive.google.com/open?id=1v7NQ7JyE-pFo4P-NmompakjynpRC_qJC', 'https://drive.google.com/open?id=1iSHB1MWTBLpo51lKIUy3FHbLfGFH_3no', 'https://drive.google.com/open?id=1aenX0OZlu1CgFi5pvqrxONsqjnCb_Y2d', 'https://drive.google.com/open?id=1zg3vsXJgNUKKDp10wqcnOOxlQQ0At75q', 'https://drive.google.com/open?id=1mdBH5qHODnkWuFBU7yTBVwLV7L7SJ8mp', 'https://drive.google.com/open?id=1Q7ASiOHraeGC6Ii0ZhEe1wmab4WTOdTC', 'proses');
INSERT INTO `prasidang` VALUES ('PS280425Y0', '232015056', '2025-04-28 00:06:02', '2025-04-28 00:06:02', 'Angkatan 12', 'ISLAM', 'Generik Inovasi', 'Village-Owned Enterprises Governance to Increase Village Original Income in Berare Village and Mama Village, Sumbawa Regency', 'Tata Kelola Badan Usaha Milik Desa Untuk meningkatkan Pendapatan Asli Desa di Desa Berare dan Desa Mama Kabupaten Sumbawa', 'https://drive.google.com/open?id=1WriICWhZgSjsx-fIiDQYGHwgb4Fi8hfK', 'https://drive.google.com/open?id=1IAeL4WJNXgvggPsdB-sGsnYl_25FudSs', 'https://drive.google.com/open?id=1S7dZkc8_pxnTLDxhZEMEYfFjEADuddNP', 'https://drive.google.com/open?id=12darLuGwSboVmQ5izsk8J1oIRCu4eVAl', 'https://drive.google.com/open?id=1T45xiUrAeSU04LF50X-QTai-AfiyMSRR', 'https://drive.google.com/open?id=1WzNRYLOqVdR7deWvnaYnAmiW8ZvHuzWc', 'proses');
INSERT INTO `prasidang` VALUES ('PS280425P3', '232015071', '2025-04-28 00:06:02', '2025-04-28 00:06:02', 'Angkatan 12', 'ISLAM', 'Inovasi Manajemen dan Teknologi Pendidikan', 'THE EFFECT OF PLANNING, HR COMPETENCE, AND PROCUREMENT OF GOODS AND SERVICES ON THE LEVEL OF BUDGET ABSORPTION FOR PROCUREMENT OF GOODS AND SERVICES OF LOCAL GOVERNMENT (EMPIRICAL STUDY ON KSB REGIONAL APPARATUS ORGANIZATIONS)', 'PENGARUH PERENCANAAN ANGGARAN, KOMPETENSI SDM, DAN PENGADAAN BARANG DAN JASA TERHADAP TINGKAT PENYERAPAN ANGGARAN PENGADAAN BARANG DAN JASA PEMERINTAH DAERAH (STUDI EMPIRIS PADA ORGANISASI PERANGKAT DAERAH KSB)', 'https://drive.google.com/open?id=1SIiTVspSTAt4yUKsS_IIdULbGy3SQdrI', 'https://drive.google.com/open?id=118K6u09kTIMS9H6UsuBqtq5JaYOu-ZKb', 'https://drive.google.com/open?id=1Xjd3taSlTn59PTW5Sl3BhmkubrHl5JDH', 'https://drive.google.com/open?id=16gNIKYVSO07wWkb9rRdS8aHo9BvHoDWf', 'https://drive.google.com/open?id=1feUIjBCRpWtA4H6aCbN7fk10x_Vnzz_v', 'https://drive.google.com/open?id=1j_WW-1EnFrVnWSxIGpWMP_ELJJUa75Ug', 'proses');
INSERT INTO `prasidang` VALUES ('PS280425YG', '232015061', '2025-04-28 00:06:02', '2025-04-28 00:06:02', 'Angkatan 12', 'ISLAM', 'Generik Inovasi', 'The Effect of E-Procurement Implementation, Organizational Culture and Employee Ethics as Efforts to Prevent Fraud in the Procurement of Goods and Services (Case Study in the Goods and Services Procurement Section of the Regional Secretariat of West Sumbawa Regency)', 'Pengaruh Penerapan E-Procurement, Budaya Organisasi dan Etika Pegawai Sebagai Upaya Pencegahan Fraud Pada Pengadaan Barang dan Jasa (Studi Kasus di Bagian Pengadaan Barang dan Jasa Sekretariat Daerah Kabupaten Sumbawa Barat)', 'https://drive.google.com/open?id=1J9KcFeZlQjMTIIKX0KFzeRrnhhLSw929', 'https://drive.google.com/open?id=1WHImI_chZC7p9w4GhYWZRE6HP42VctdR', 'https://drive.google.com/open?id=1urIdqavmlz9Io98uZbcwnX2llaucv_wr', 'https://drive.google.com/open?id=1Y_29X-V-QYojvmujLKtrgCHNR2vrKBHV', 'https://drive.google.com/open?id=1_4JRcHBeF_1PYv5mIOY00-zSsYBzfr3H', 'https://drive.google.com/open?id=1E35rXJjuWrpmfF7RO7J8yOCg-I7-JcgG', 'proses');
INSERT INTO `prasidang` VALUES ('PS280425HR', '232015003', '2025-04-28 00:06:02', '2025-04-28 00:06:02', 'Angkatan 12', 'ISLAM', 'Generik Inovasi', 'Analysis of the Effectiveness of Service Delivery and Loan Management of Heavy Equipment at UPTD Alat Berat dan Laboratorium in West Sumbawa Regency', 'ANALISIS EFEKTIVITAS PELAYANAN DAN TATA KELOLA PEMINJAMAN ALAT BERAT DI UPTD ALAT BERAT DAN LABORATORIUM KABUPATEN SUMBAWA BARAT', 'https://drive.google.com/open?id=1zrzcaSnINwvySanFgH4hXkO2EaFQJbvU', 'https://drive.google.com/open?id=1_WjHirJJvLQwz6wInozDf4Di4ymmvB6q', 'https://drive.google.com/open?id=1JJaAVwNQ4JLn-vEbsc8sj1XQJ_QV6byQ', 'https://drive.google.com/open?id=1JDt0hxGD-rhVn7TLgcMwbywLwwhEaNWi', 'https://drive.google.com/open?id=1MdkJ7fkYmA_m-J8F3vKaHB2N8-sI6F9W', 'https://drive.google.com/open?id=174IX_CH3gQ3SofRZCEUYeIs1UEXiQj44', 'proses');
INSERT INTO `prasidang` VALUES ('PS2804256G', '232015045', '2025-04-28 00:06:02', '2025-04-28 00:06:02', 'Angkatan 12', 'ISLAM', 'Generik Inovasi', 'IMPLEMENTATION OF SERVICE SYSTEM POLICIES ONLINE POPULATION ADMINISTRATION (SILAMO) IN SUMBAWA DISTRICT SUMBAWA DISTRICT', 'IMPLEMENTASI KEBIJAKAN SISTEM LAYANAN ADMINDUK ONLINE (SILAMO) DI KECAMATAN SUMBAWA KABUPATEN SUMBAWA', 'https://drive.google.com/open?id=1H22K8gkljWt9VNjn2f3STMf8GkyY3nAh', 'https://drive.google.com/open?id=10qHVdHH07nQeFqzD6mPNMujXx4ZjsR7X', 'https://drive.google.com/open?id=1tzG4P3tJqVXs_gbXdKKB8FuEu-QpQ08_', 'https://drive.google.com/open?id=1QZtv08vJHARCz8vGuAWj_gHJqRJpgSUE', 'https://drive.google.com/open?id=1x6nDce95BiYPp0GVRKqiDA8dvbJzoFAv', 'https://drive.google.com/open?id=1FS7ouytHjNn7UC-_t8Z2NQxQ2Ja2gibn', 'proses');
INSERT INTO `prasidang` VALUES ('PS280425FF', '232015039', '2025-04-28 00:06:02', '2025-04-28 00:06:02', 'Angkatan 12', 'ISLAM', 'Generik Inovasi', 'Analysis the Level of Effectiveness of the Artificial Insemination Program (IB) on Cattles Development in West Sumbawa District', 'Analisis Tingkat Efektivitas Program Inseminasi Buatan (IB) Terhadap Perkembangan Ternak Sapi di Kabupaten Sumbawa Barat', 'https://drive.google.com/open?id=1476pG8eEYzFTKSquk83KilUYqssrbf9-', 'https://drive.google.com/open?id=1rquUndOliUQjGDtP58I7_ey8FAHYo4GH', 'https://drive.google.com/open?id=17ijS_QFO7MyBu5DQlcp9izaZjhItzqhj', 'https://drive.google.com/open?id=1WwG2N0gzbn9_VB5faIaubTTOKOlRlFjM', 'https://drive.google.com/open?id=1w3dAhtEVAgLjE5qb9KQ_Y2KQG0LXLyOR', 'https://drive.google.com/open?id=1SfHRF9m6D2_wlP2lAZPlmD__w-FP6gc8', 'proses');
INSERT INTO `prasidang` VALUES ('PS280425C6', '232015025', '2025-04-28 00:06:02', '2025-04-28 00:06:02', 'Angkatan 12', 'Islam', 'Generik Inovasi', 'Implementation of the Audit Quality Control System Policy in Internal Supervision of the Regional Inspectorate of West Sumbawa Regency', 'Implementasi Kebijakan Sistem Kendali Mutu Audit Pada Pengawasan Intern Inspektorat Daerah Kabupaten Sumbawa Barat', 'https://drive.google.com/open?id=1Lsh727OVFsKUqBym5s47K8hVUh-zgMRW', 'https://drive.google.com/open?id=1CC19yJr8b28dzwl9hCA_BA0WdPoA5YxV', 'https://drive.google.com/open?id=1HUymq1tYnwKd1G2djjHMbBJ2fy5hIa55', 'https://drive.google.com/open?id=18cI8Oof1qWnzneVb7vZqPEhke8UfwI19', 'https://drive.google.com/open?id=10EbsP-IqPGGhpRdewUbVqJSAg7CLrcnI', 'https://drive.google.com/open?id=19gnt5M3D1aWvFVSu0_OYT8DSMLPbFF3r', 'proses');
INSERT INTO `prasidang` VALUES ('PS280425UT', '232015011', '2025-04-28 00:06:02', '2025-04-28 00:06:02', 'Angkatan 12', 'ISLAM', 'Generik Inovasi', 'THE EFFECT OF ADDITIONAL EMPLOYEE INCOME ON IMPROVING THE PERFORMANCE OF STATE CIVIL APPARATUS AT ASY-ASYIFA\' REGIONAL PUBLIC HOSPITAL, WEST SUMBAWA', 'PENGARUH TAMBAHAN PENGHASILAN PEGAWAI (TPP) TERHADAP PENINGKATAN KINERJA APARATUR SIPIL NEGARA (ASN) PADA RUMAH SAKIT UMUM DAERAH ASY-SYIFA\' SUMBAWA BARAT', 'https://drive.google.com/open?id=1d23BGZD-G6EVzzYhNlrZJZi51ZOAtblD', 'https://drive.google.com/open?id=1KYUP5OpW_Xax2f_FrRqG-BNsk5OofIzh', 'https://drive.google.com/open?id=1_HbCJy7T-1oNCwpzrIeTEcA1yCsB_NYZ', 'https://drive.google.com/open?id=1_sSTuuPqNetUu5SlDovzwx3weP-lvgsD', 'https://drive.google.com/open?id=120LzpMI80GUmBGXGkS4fswXDjZzBBUO5', 'https://drive.google.com/open?id=1MMFTp6rvzUD0odXMngIDC35F3NIS4Mn5', 'proses');
INSERT INTO `prasidang` VALUES ('PS280425UL', '232015028', '2025-04-28 00:06:02', '2025-04-28 00:06:02', 'Angkatan 12', 'Islam', 'Generik Inovasi', 'Effectiveness of Utilization of Farmer Cards on Distribution of Subsidized Fertilizer in Taliwang District, West Sumbawa Regency', 'Efektivitas Pemanfaatan Kartu Tani Terhadap Penyaluran Pupuk Bersubsidi Di Kecamatan Taliwang Kabupaten Sumbawa Barat', 'https://drive.google.com/open?id=1Op3kb2rlh_DXZU0lLBDQgII0LDiK595H', 'https://drive.google.com/open?id=14Jns6G8p_bLJtxfSAr6GZcMyDasPXA9V', 'https://drive.google.com/open?id=17pNFy-PdwwrrDKLeYTqAscpuYbSRhg3d', 'https://drive.google.com/open?id=1vdgmGhPufOjll8uAb6L6dD526dng70Da', 'https://drive.google.com/open?id=1GpnvAqTHaUcPC0q94R3fm_0GQPB3DEVC', 'https://drive.google.com/open?id=1YolVRJ--EcDAS39qLC2EdhUkANNSr_5A', 'proses');
INSERT INTO `prasidang` VALUES ('PS280425Q4', '232015037', '2025-04-28 00:06:02', '2025-04-28 00:06:02', 'Angkatan 12', 'Islam', 'Generik Inovasi', 'The  Effect of  Forest Area Management on Economic and Social  Aspects  in  the  Batu  Akik  Social  Forestry Group Sekongkang Subdistrict', 'Pengaruh Pengelolaan Kawasan Hutan terhadap Aspek Ekonomi dan Sosial pada Kelompok Perhutanan Sosial Batu Akik Kecamatan Sekongkang', 'https://drive.google.com/open?id=1l2dECKZ81wD20kzabxk7R5i2-ZLb55ws', 'https://drive.google.com/open?id=1OFvI-tleyYO2j-8AW3rRTF5xKDSUO3rH', 'https://drive.google.com/open?id=1Q8JV2fIhKVEa65ztPjDJ-RS9DvqMrvD4', 'https://drive.google.com/open?id=1SdgFAvFJWjnsBatnrYx8C2iGmQveUBPF', 'https://drive.google.com/open?id=1tnvMR77O4tlEFeKUPzaH1gllFuWDi7Xs', 'https://drive.google.com/open?id=1B-CM4RlJk6VJ5cXCgFYMX43tX8uCi8jA', 'proses');
INSERT INTO `prasidang` VALUES ('PS2804250Z', '232015006', '2025-04-28 00:06:02', '2025-04-28 00:06:02', 'Angkatan 12', 'Islam', 'Generik Inovasi', 'Implementation of Early Warning in On Call Services  for Service Efficiency for Taxpayers (Case Study of  UPTB UPPD Taliwang)', 'Penerapan Early Warning pada Layanan On Call untuk Efisiensi Layanan Terhadap Wajib Pajak (Studi Kasus UPTB UPPD Taliwang)', 'https://drive.google.com/open?id=1-euAyHH_wHXdku1UvqjBRPXl1r8TZi6W', 'https://drive.google.com/open?id=14j2bgS8wS_cwqRsrw1UQZjPEtZOOODpT', 'https://drive.google.com/open?id=1ua0B8IzXc6NZCwNDmNdU_5Uzc-4wOIaK', 'https://drive.google.com/open?id=14W20m9NB3oytU3xn2zTdOla5s45CL_5v', 'https://drive.google.com/open?id=1GYTXIso-7aizvr8WZ7lTgtNNJ2ZANEVV', 'https://drive.google.com/open?id=1OZRxQQYy-wOH1256lJf2yDnEu_J34oBn', 'proses');
INSERT INTO `prasidang` VALUES ('PS2804259R', '232015005', '2025-04-28 00:06:02', '2025-04-28 00:06:02', 'Angkatan 12', 'ISLAM', 'Generik Inovasi', 'Effectiveness of Using Linktree to Propose Learning Tasks for Civil Servants in West Sumbawa Regency', 'Efektivitas Penggunaan Linktree untuk Pengusulan Tugas Belajar Pegawai Negeri Sipil di Kabupaten Sumbawa Barat', 'https://drive.google.com/open?id=1SKbqf6W4qNDW8ibLXXPzyO4X2LopeWak', 'https://drive.google.com/open?id=1TS-k_w0fLVmnMG-VCETSbJUDF0LwpqYc', 'https://drive.google.com/open?id=1YKoQ1asoUi3m_d3hrcaqSbDFzwD-G8op', 'https://drive.google.com/open?id=1vA98Aygsi_ze_Fm2jpufzZwXDppPY7dg', 'https://drive.google.com/open?id=1L1ka0GS26hOKJloG4aNyhh_SBr2EJQRq', 'https://drive.google.com/open?id=1Lz3NfTWNhXoMq9M-Q0UuYAxBLCOaqQaS', 'proses');
INSERT INTO `prasidang` VALUES ('PS280425Z2', '232015049', '2025-04-28 00:06:02', '2025-04-28 00:06:02', 'Angkatan 12', 'Islam ', 'Generik Inovasi', 'Implementation of the Village financial system in improving the performance of apparatusin financial management in Monta Baru village Lambu sub-district Bima Regency', 'IMPLEMENTASI SISTEM KEUANGAN DESA DALAM MENINGKATKAN KINERJA APARATUR DALAM PENGELOLAAN KEUANGAN DI DESA MONTA BARU KECAMATAN LAMBU KABUPATEN BIMA', 'https://drive.google.com/open?id=1D63thujz98E_8wS-VtzclDuPqHlXQ1y2', 'https://drive.google.com/open?id=1lTLhRfVihQCbTL6rHmcuOb14e9cGo9xy', 'https://drive.google.com/open?id=1-0m1ZJCbEk6tLdCdvzETYztuQfZB37vs', 'https://drive.google.com/open?id=1svO8N5kCHxSqOO_Bp9Do7OLLvydk0oEn', 'https://drive.google.com/open?id=1axk2duGbsHkKDjwAYIhR71Azxz_kEA98', 'https://drive.google.com/open?id=13FeAhWFuTfXBmFCl22n4vr8peij923Xi', 'proses');
INSERT INTO `prasidang` VALUES ('PS280425TU', '232015026', '2025-04-28 00:06:02', '2025-04-28 00:06:02', 'Angkatan 12', 'ISLAM', 'Generik Inovasi', 'Implementation of the policy of involving Bhabinkamtibmas as investigators and researcher in resolving cases through restorative justice.', 'Implementasi kebijakan pelibatan bhabinkamtibmas sebagai penyidik dan penyelidik dalam penyelesaian perkara melalui restorative justice', 'https://drive.google.com/open?id=1x_oaXyj-Zy7_wTuhXxVRoWRoDndfO3hT', 'https://drive.google.com/open?id=1o1e9U_0dHeot3RqtXeGk63e5_dNa5Qc3', 'https://drive.google.com/open?id=1QZH9aktJ-Udp2R6E5b6Qbe48DtZpca4p', 'https://drive.google.com/open?id=1HQDHbX6L9hMbtnmRwOWUqML4rDjLKpBE', 'https://drive.google.com/open?id=1wNTqQUZzTLhkLgC91TOzjPrfwIuWXLER', 'https://drive.google.com/open?id=11joaZ04aosVjAwWNfh8mmc_gua67TgjE', 'proses');
INSERT INTO `prasidang` VALUES ('PS280425PC', '232015046', '2025-04-28 00:06:02', '2025-04-28 00:06:02', 'Angkatan 12', 'ISLAM', 'Generik Inovasi', 'ANALYSIS OF THE IMPLEMENTATION OF WHALE SHARK TOURISM ON THE PRINCIPLES OF SUSTAINABILITY TOURISM IN LABUAN JAMBU VILLAGE, TARANO DISTRICT, SUMBAWA REGENCY', 'ANALISIS IMPLEMENTASI PARIWISATA HIU PAUS TERHADAP PRINSIP SUSTAINABILITY TOURISM DI DESA LABUAN JAMBU, KECAMATAN TARANO KABUPATEN SUMBAWA', 'https://drive.google.com/open?id=1nuj-ni2kQBHp3od3dW4nBW6qhESfrx9l', 'https://drive.google.com/open?id=1v4oHdeZeKYBYm7AXNoLldjruimh43TzN', 'https://drive.google.com/open?id=131WCRsR9Q7WDHFh6pCi7FLtk8CL2BkJO', 'https://drive.google.com/open?id=17PJeWmCTE3cmq1bUyBnqrNfJtdrFCftJ', 'https://drive.google.com/open?id=1gXSAQl_NoPeaPitdJ5VnKQQ3H_1N71BG', 'https://drive.google.com/open?id=157oL0kHOih5vt_TnAdl3gGAwBJI7SYkV', 'proses');
INSERT INTO `prasidang` VALUES ('PS280425H1', '232015009', '2025-04-28 00:06:02', '2025-04-28 00:06:02', 'Angkatan 12', 'ISLAM', 'Inovasi Manajemen dan Teknologi Pendidikan', 'School Principal Leadership in Teacher Performance Improvement at SMA Negeri 1 Donggo', 'KEPEMIMPINAN KEPALA SEKOLAH DALAM PERUBAHAN KINERJA GURU DI SMA NEGERI 1 DONGGO', 'https://drive.google.com/open?id=1Ukj75JLvVSpwvxX1aF4JEWyTPCoUhlx6', 'https://drive.google.com/open?id=1Gxo2UhCm15gY0XqL_v3a_CCVCQs95Ktw', 'https://drive.google.com/open?id=1JwksUWFCvXTWTtluTBf3sEDd0M3C_r5h', 'https://drive.google.com/open?id=1-AckXx1Mf0A6o-pIQP1nrQ5_-y5x5w7z', 'https://drive.google.com/open?id=11hDvrK0UXKnjY1z88euzxuG--o1AooSR', 'https://drive.google.com/open?id=13Tj2Fvwlo3lhl5zcq9j0osGsq_cCTbWa', 'proses');
INSERT INTO `prasidang` VALUES ('PS280425L9', '232015007', '2025-04-28 00:06:02', '2025-04-28 00:06:02', 'Angkatan 12', 'ISLAM', 'Inovasi Manajemen dan Teknologi Pendidikan', 'Implementation and Innovation of Teacher Performance in Improving the Quality of Education at SMA Negeri 1 Donggo', 'IMPLEMENTASI DAN INOVASI KINERJA GURU DALAM MENINGKATKAN MUTU PENDIDIKAN DI SMA NEGERI 1 DONGGO', 'https://drive.google.com/open?id=1K4Ly29Yxon3xu2Z8SIMuUO-JRqtj5_qy', 'https://drive.google.com/open?id=1PUhlK7yg_8lfATaLTt91PUWAy0UjVivL', 'https://drive.google.com/open?id=1oZQjA16QCXf1VLp_QEWUX-VWh_vZH9OM', 'https://drive.google.com/open?id=1TJpOHU6N2zQwGK2If2bARsEOEU30cPUP', 'https://drive.google.com/open?id=1U9PfesJocuECVL6QRkpp3xK8ETWZxuqy', 'https://drive.google.com/open?id=1bkAQH_VYklohZxZf-i4t_oE0Udy9ccuD', 'proses');
INSERT INTO `prasidang` VALUES ('PS280425B0', '232015008', '2025-04-28 00:06:02', '2025-04-28 00:06:02', 'Angkatan 12', 'ISLAM', 'Inovasi Manajemen dan Teknologi Pendidikan', 'INNOVATION OF TECHNOLOGY MANAGEMENT BASED ON SLIMS (SENAYAN LIBRARY MANAGEMENT SYSTEM) APPLICATION IN IMPROVING USER SERVICES AT MUHAMMADIYAH BIMA UNIVERSITY LIBRARY', 'INOVASI MANAJEMEN TEKNOLOGI BERBASIS APLIKASI SLIMS (SENAYAN LIBRARY MANAGEMENT SYSTEM) DALAM MENINGKATKAN LAYANAN PENGGUNA PADA PERPUSTAKAAN UNIVERSITAS MUHAMMADIYAH BIMA', 'https://drive.google.com/open?id=13DhLvnwcg7B2MmRDjOz4hpfLBFy70sep', 'https://drive.google.com/open?id=1auhMGfoTht1R9jDQmaIr1KrdGp5JGXKd', 'https://drive.google.com/open?id=17o1jI5dpWwHQGLyYdtedGgjrXN0fAFhw', 'https://drive.google.com/open?id=1wiuD_1S1g1ev-IwwcICyIzn2ZF2hmd8v', 'https://drive.google.com/open?id=1uaQaFTUlSikRUA0ENeyMaueSgYB5gIDW', 'https://drive.google.com/open?id=1hdX1ZInWmyTSSEr2wYrh4nWQKs0MYvH6', 'proses');
INSERT INTO `prasidang` VALUES ('PS2804257Q', '232015010', '2025-04-28 00:06:02', '2025-04-28 00:06:02', 'Angkatan 12', 'Islam', 'Inovasi Manajemen dan Teknologi Pendidikan', 'Implementation of School-Based Management to Improve the Quality of Education at SMA Negeri 1 Woha', 'Implementasi Manajemen Berbasis Sekolah Untuk Meningkatkan Mutu Pendidikan di SMA Negeri 1 Woha', 'https://drive.google.com/open?id=1rJjgo_DqdyZbTfqTx6Zipz4ihAvrzMP2', 'https://drive.google.com/open?id=1GyNPe58zbU_2VkUiRsUS7UoSQviqUped', 'https://drive.google.com/open?id=1s52SCf0RQ6VdHV-ki1wUT1W_x-_1j0jH', 'https://drive.google.com/open?id=1wO4jsEAY0xXW1g3e-UStye_5TtmgFtOX', 'https://drive.google.com/open?id=1hPwiCIFOvU1CDDN7fJ23PcVB0dIjOr08', 'https://drive.google.com/open?id=1RQGOzXBcC9V713tM1tDCb9bGT2yo5Z5f', 'proses');
INSERT INTO `prasidang` VALUES ('PS280425YD', '232015019', '2025-04-28 00:06:02', '2025-04-28 00:06:02', 'Angkatan 12', 'ISLAM', 'Inovasi Manajemen dan Teknologi Pendidikan', 'Strategies for Improving the Competence of Educators and Education Personnel through an Approach Coaching Clinic.', 'STRATEGI PENINGKATAN KOMPETENSI PENDIDIK DAN TENAGA KEPENDIDIKAN MELALUI PENDEKATAN COACHING CLINIC', 'https://drive.google.com/open?id=10tYzbqM0pOOwEYGozLt-6n2sz8CrZA0-', 'https://drive.google.com/open?id=1UCkmqKYU40j1gjCmCZkZfJaUJx63u4ND', 'https://drive.google.com/open?id=1v7mrabIXbjny5lVy14KaqONB57uMwogd', 'https://drive.google.com/open?id=1f7Ad-oGrDKy4YhISIjg_VNucur2QJYRx', 'https://drive.google.com/open?id=1S4l0mtzELZiRyvhnYL6qdvdaoA0x4lyc', 'https://drive.google.com/open?id=1o8L756reVh5Kd913JpmsdHWADeNqkAjP', 'proses');
INSERT INTO `prasidang` VALUES ('PS28042577', '232015004', '2025-04-28 00:06:02', '2025-04-28 00:06:02', 'Angkatan 12', 'Islam', 'Inovasi Manajemen dan Teknologi Pendidikan', 'The implementation of Cyber counseling services using asynchronous chat to improve the effectiveness of guidance and counseling services at SMP Negeri 1 Taliwang.', 'Implementasi Cyber Counseling Berbasis Chat Asynchronous untuk optimalisasi Layanan bimbingan dan konseling di SMP Negeri 1  Taliwang', 'https://drive.google.com/open?id=1czf3KGGjIMl6SzC2JbzSPuTxVyyWgeQ3', 'https://drive.google.com/open?id=1r3g58EeE3rAAUxMKCUJxCSWyoVJC5h6v', 'https://drive.google.com/open?id=1X4a6TfPX03-Rmh63KBqZ7AqyhsrpXm0K', 'https://drive.google.com/open?id=1HCy9QuXLbYHAY-suj7qi5_oIPlj_URV7', 'https://drive.google.com/open?id=1SbZSJkr63w_b0tfQkvrmMGQveqyLaHgr', 'https://drive.google.com/open?id=1709ONnozXoyfsc7vRQmAlmsoo3a_KifD', 'proses');
INSERT INTO `prasidang` VALUES ('PS280425KL', '232015051', '2025-04-28 00:06:02', '2025-04-28 00:06:02', 'Angkatan 12', 'ISLAM', 'Inovasi Manajemen dan Teknologi Pendidikan', 'APPLICATION OF THE WAFA METHOD IN LEARNING AL-QURAN FOR STUDENTS AT SAMAWA CENDEKIA PRIMARY SCHOOL, SUMBAWA BESAR', 'PENERAPAN METODE WAFA DALAM PEMBELAJARAN AL-QURAN BAGI SISWA DI SDIT SAMAWA CENDEKIA SUMBAWA BESAR', 'https://drive.google.com/open?id=1nOzWGU5X7LtFFS1Z7C7wu5C9Kfe4DeaK', 'https://drive.google.com/open?id=1OFiXWDT6YZFfO8rm3pkwlqHDuJLE7hKP', 'https://drive.google.com/open?id=1szyU8OTxXgw8R-Utt4eXKbhzhrbEb2d7', 'https://drive.google.com/open?id=1S-_lmmrJT2dLjq4-Z0bWAt1VMtjDtTut', 'https://drive.google.com/open?id=1hLEy8ahMLFGrRRyQB-5-Jr4lhiQYjrBg', 'https://drive.google.com/open?id=1fYJPOeM9bkMn6CpURRHk10pavH4rfJI6', 'proses');
INSERT INTO `prasidang` VALUES ('PS280425DF', '232015060', '2025-04-28 00:06:02', '2025-04-28 00:06:02', 'Angkatan 12', 'ISLAM', 'Generik Inovasi', 'THE INFLUENCE OF EMOTIONAL INTELLIGENCE ON THE PERFORMANCE OF STATE CIVIL APPARATUS IN THE PILITICAL CIVIL SERVANTS UNIT OF WEST SUMBAWA REGENCY', 'PENGARUH KECERDASAN EMOSIONAL TERHADAP KINERJA APARATUR SIPIL NEGARA PADA SATUAN PILISI PAMONG PRAJA KABUPATEN SUMBAWA BARAT', 'https://drive.google.com/open?id=1AXkA6Zwr2EkxpK_ePfK0EyoSQtRWjrO-', 'https://drive.google.com/open?id=12Ml9WV-epq3EwTTHm6BLVu--L7fd3HRH', 'https://drive.google.com/open?id=1-Xu86YWBoFR1_-w-usNSQ__ELxPCb4f9', 'https://drive.google.com/open?id=1f6mv9Cul7RtTTOV1FEq0WFR5j4AxfwEb', 'https://drive.google.com/open?id=1uotuPb1TbeqhbpBRQXE_VuXbbk5IS9_b', 'https://drive.google.com/open?id=1GHLLmRfT5E0U_q0t3oQxlB2p0ltr0-Ge', 'proses');
INSERT INTO `prasidang` VALUES ('PS280425AC', '232015052', '2025-04-28 00:06:02', '2025-04-28 00:06:02', 'Angkatan 12', 'Islam', 'Inovasi Manajemen dan Teknologi Pendidikan', 'The Influence of Leadership Style, Work Environment and Work Satisfaction on Employee Performance Through Work Motivation as a Moderating Variable at PT. PLN (Persero) UP3 Bima UIW NTB', 'PENGARUH GAYA KEPEMIMPINAN, LINGKUNGAN KERJA, DAN KEPUASAN KERJA TERHADAP KINERJA KARYAWAN MELALUI MOTIVASI KERJA SEBAGAI VARIABEL MODERASI PADA PT. PLN (PERSERO) UP3 BIMA UIW NTB', 'https://drive.google.com/open?id=16mylQW7673ag5q2c6z9EnVYmts5Gaedh', 'https://drive.google.com/open?id=1xNjAWmZ_i7hGp9Ep-ZaMu_7yghXcYaxo', 'https://drive.google.com/open?id=1zYGsV8Vnx8_iGLAoCvtbiLweddbv7TaI', 'https://drive.google.com/open?id=1KhmTa-0bH_PYb07DRcIQnsaaORBe6qHN', 'https://drive.google.com/open?id=1b1gIZB2C8Z-1RkPfcKIeOpLLjwEzK00K', 'https://drive.google.com/open?id=1EBnuqTQfrfVlKXkG-PIfc0vGJWmQDecR', 'proses');
INSERT INTO `prasidang` VALUES ('PS2804259C', '232015024', '2025-04-28 00:06:02', '2025-04-28 00:06:02', 'Angkatan 12', 'ISLAM', 'Generik Inovasi', 'SERVQUAL ANALYSIS OF CUSTOMER INTEREST IN APPLYING FOR FINANCING AT PT. BANK NTB SYARIAH KCP MALUK', 'ANALISIS SERVQUAL TERHADAP MINAT NASABAH DALAM PENGAJUAN PEMBIAYAAN DI PT. BANK NTB SYARIAH KCP MALUK', 'https://drive.google.com/open?id=1J4nZKkQFCbWizmFJEj-SCGISWE_UdSWI', 'https://drive.google.com/open?id=1mNtd-XY0iwqeKapz2e2cMTBFlcdzUVGz', 'https://drive.google.com/open?id=1WFmoNCVP8ha7LX52p3c4yzpZeCQzMaXR', 'https://drive.google.com/open?id=1nkVTwqM09_Jvw9axADedVhOZ_LiKqUh0', 'https://drive.google.com/open?id=1Ga0kogZYlAJ_XhJAHpTqvtuADxZEO5Z9', 'https://drive.google.com/open?id=1V0xjdXe58LGPayPI0BuUxvOVIg-slMC5', 'proses');
INSERT INTO `prasidang` VALUES ('PS280425MH', '232015015', '2025-04-28 00:06:02', '2025-04-28 00:06:02', 'Angkatan 12', 'Islam', 'Generik Inovasi', 'Management of Public Service Agency of Sumbawa District Health Office (Case Study at Sumbawa Unit 2 Health Center)', 'Manajemen Badan Layanan Umum Daerah (studi kasus pada puskesmas kecamatan sumbawa unit 2', 'https://drive.google.com/open?id=17Gq0IiAfRBat9DydXMR3N68cpruLbT89', 'https://drive.google.com/open?id=1GBKieYJWedt1HhqYH4_zvvKj3C5PCBwt', 'https://drive.google.com/open?id=1jS_Fa_ZHlPgllhgQIHBf77KTtYQFy_DF', 'https://drive.google.com/open?id=1WK8cveLjh12uE2a2oQZgyX8SN28mWzeL', 'https://drive.google.com/open?id=14q8JzKqWoQAdk6q6funyGrXLn237DkHh', 'https://drive.google.com/open?id=1KA9oiwRgCU1PyX6zkhSwvPuPCX0vERcr', 'proses');
INSERT INTO `prasidang` VALUES ('PS280425AY', '232015069', '2025-04-28 00:06:02', '2025-04-28 00:06:02', 'Angkatan 12', 'Islam', 'Generik Inovasi', 'implementation of policies and the role of the community in carrying out forest and land rehabilitation in Seteluk sub-district, West Sumbawa ', 'Implementasi kebijakan dan peran masyrakat dalam melakukan rehabilitasi hutan dan lahan di kecematan seteluk sumbawa barat', 'https://drive.google.com/open?id=1E8IiZv736RiK9W2eQXs--geGaTi4O6Eo', 'https://drive.google.com/open?id=1amlDYUggF-7bVaTxYxUf-Xz8sxDINk44', 'https://drive.google.com/open?id=15VTNt38ws_B8BUuP2NggL2arAXQgTRes', 'https://drive.google.com/open?id=1uJ_uLuSmdi3vG8WtCQrz3v9JbM8lXCE0', 'https://drive.google.com/open?id=1AGsuHYSAxUwJFEPoapUORn4v_5dGw3fz', 'https://drive.google.com/open?id=1zobv36CKo3Qd1wsgM_OoHcD9-XbXEYCD', 'proses');
INSERT INTO `prasidang` VALUES ('PS280425JL', '232015050', '2025-04-28 00:06:02', '2025-04-28 00:06:02', 'Angkatan 12', 'ISLAM', 'Inovasi Manajemen dan Teknologi Pendidikan', 'The Influence of Implementing a Technology-Based Innovative English Learning Model in Improving English Language Skills of Grade XI Students at SMK Negeri 1 Lambu, Bima Regency, Academic Year 2024/2025.', 'Pengaruh Implementasi Model Pembelajaran Bahasa Inggris Berbasis Inovasi Teknologi dalam Meningkatkan Keterampilan Berbahasa Inggris Pada Siswa Kelas XI SMK Negeri 1 Lambu Kabupaten Bima Tahun Ajaran 2024/2025', 'https://drive.google.com/open?id=1cwMvLbprLAtV6NUTaq6DDCsCaL5HiBWE', 'https://drive.google.com/open?id=1xyaZw5tp3i-evXJ_85tmTG3JBqJLMbTi', 'https://drive.google.com/open?id=15MvVZQ5dQMxOg_hwJl2lZTvKr_eDHHRk', 'https://drive.google.com/open?id=1Kl2QAsHsdbxvUkjWSuE63WHr_fxWT2Vi', 'https://drive.google.com/open?id=1JBw6GpuRf1C8gy3_ASpzuPyzpcFFjAvt', 'https://drive.google.com/open?id=1yHLD3Td0D2c2bml_dztn3Q1KQXQXZzuC', 'proses');
INSERT INTO `prasidang` VALUES ('PS280425PV', '232015030', '2025-04-28 00:06:02', '2025-04-28 00:06:02', 'Angkatan 12', 'ISLAM ', 'Generik Inovasi', 'IMPLEMENTATION OF SUSTAINABLE FOOD YARDS (P2L) IN INCREASING FOOD SECURITY IN BATULANTEH DISTRICT, SUMBAWA REGENCY', 'Implementasi Pekarangan Pangan Lestari (P2L) Dalam Meningkatkan Ketahanan Pangan di Kecamatan Batulanteh Kabupaten Sumbawa', 'https://drive.google.com/open?id=1K3NDMpzjaI3O3eMwM4yWP_lKxrHQpYWK', 'https://drive.google.com/open?id=1Kx6JXR_CJOY3qjBRRUsV6miqqg_HUTDU', 'https://drive.google.com/open?id=1l_kN8mdCbMVid8Wn350nQRbLpgTkv_jF', 'https://drive.google.com/open?id=1M7sWU-l6-xGdJHNrtuDKF3_OS3CBuJh6', 'https://drive.google.com/open?id=16vj-d0iWnla-Ylgij6_T7TUPSE-fLq6z', 'https://drive.google.com/open?id=1FmMAL1CpQZbp8ioVX2CvMZwY1Jz8Zney', 'proses');
INSERT INTO `prasidang` VALUES ('PS280425HZ', '232015065', '2025-04-28 00:06:02', '2025-04-28 00:06:02', 'Angkatan 12', 'ISLAM', 'Generik Inovasi', 'IMPLEMENTATION OF THE PENTAHELIX APPROACH (MULTI PARTY) IN TERRORISM PREVENTION EFFORTS IN PENATOI VILLAGE, MPUNDA DISTRICT, BIMA CITY', 'PENERAPAN PENDEKATAN PENTAHELIX (MULTI PIHAK) DALAM  UPAYA PENCEGAHAN TERORISME DI KELURAHAN PENATOI  KECAMATAN MPUNDA KOTA BIMA', 'https://drive.google.com/open?id=1tKQkphatlH_bPStC-KRzI3AA-mEv5Dl2', 'https://drive.google.com/open?id=1Eaxr1l2YfRFpusjIphvmT1rLiw12DoKi', 'https://drive.google.com/open?id=1Y7Yb7HXhuODu_VKRj9Cs24WJCabTSFTg', 'https://drive.google.com/open?id=1pDfxhWWhAhawMKS6E_QffCpbyyVl5sGj', 'https://drive.google.com/open?id=183pT3qwa-WCbPIiPV8Fk82q0glErQx-V', 'https://drive.google.com/open?id=1PW8n7IoifgEYmQHHQp4ybYC5RT4c2GiO', 'proses');
INSERT INTO `prasidang` VALUES ('PS280425FS', '232015064', '2025-04-28 00:06:02', '2025-04-28 00:06:02', 'Angkatan 12', 'Islam', 'Generik Inovasi', 'The	Pentahelix	Concept	in	the	Prevention	and Counteraction of Terrorism in Kananga Village, Bima Regency.', 'KONSEP PENTAHELIX DALAM PENCEGAHAN DAN PENAGGULANGAN TERORISME DI DESA KANANGA KABUPATEN BIMA', 'https://drive.google.com/open?id=1V_QqldgfuFH8F4gUaETE8SVvpNCrhSLS', 'https://drive.google.com/open?id=1MXxUiewLrflRk8GBOjq4D_Gvo4VgXfDs', 'https://drive.google.com/open?id=1Is0SsAgJxkMtlNTzMjB9aegF9tiYtFbv', 'https://drive.google.com/open?id=1pI4uGmTOvELN4adyfJWIj67NDD2IGfYU', 'https://drive.google.com/open?id=13qUWJgAMqcO4ly7wQ3rY6GIeHEro1qf2', 'https://drive.google.com/open?id=1Q620OqLD6MY6jDQEMHGhpp6GqcRo79aS', 'proses');
INSERT INTO `prasidang` VALUES ('PS280425ZZ', '232015035', '2025-04-28 00:06:02', '2025-04-28 00:06:02', 'Angkatan 12', 'Islam', 'Inovasi Manajemen dan Teknologi Pendidikan', 'Effectiveness of Using Computer Based Tests (CBT) in the Assessment of Student Learning Outcomes at SMPN 2 Buer', 'Efektifitas Penggunaan Computer Based Test (CBT) Terhadap Asesmmen Hasil Belajar Siswa di SMPN 2 Buer', 'https://drive.google.com/open?id=1vM1T4M0wrTFa4vUd4sQNJHslILN8ubcN', 'https://drive.google.com/open?id=15AN52CTn_-rBYwGf51oBInPe0-MRr2Sv', 'https://drive.google.com/open?id=1-tCQLNP2p9c0rvm_ss5Q2yIRGdCPrq_y', 'https://drive.google.com/open?id=1bj5bNKXVMNIeFamaP4Zh6998Lvkyq5IO', 'https://drive.google.com/open?id=1W7pvX6H6D8wN_pzWr616AgO00YG8hvhi', 'https://drive.google.com/open?id=1Q5spShHzrf_j6XszkZKWBIG8RjJvD_qa', 'proses');
INSERT INTO `prasidang` VALUES ('PS280425XQ', '232015021', '2025-04-28 00:06:02', '2025-04-28 00:06:02', 'Angkatan 12', 'islam', 'Generik Inovasi', 'implementation of electronic medical record system for increase quality of claim in RSUD LOMBOK TIMUR', 'Implementasi sistem electronic rekam medik (E-MR) dalam meningkatkan kualitas klaim BPJS di UPTD RSUD Lombok Timur ', 'https://drive.google.com/open?id=1jzkq0_zQNwAJ5UfE1H6e4QwEWZk0zMLz', 'https://drive.google.com/open?id=1n4hvnwBv174CvF7j4c_vM2xaKrGS71Wr', 'https://drive.google.com/open?id=1-4haS1SvNuoR_Ad0S_9KUcf9_CFZ7-q3', 'https://drive.google.com/open?id=1ZsXC7S6Y0VOeBJ0mN0LsDmCECBTkAUP7', 'https://drive.google.com/open?id=1g96T1d3vVr9Q_uGpQDEO6WfE7mMxy8y7', 'https://drive.google.com/open?id=1j371RvfLKYEhqmShlpyBeGJqeVWUgv7L', 'proses');
INSERT INTO `prasidang` VALUES ('PS2804255M', '232015038', '2025-04-28 00:06:02', '2025-04-28 00:06:02', 'Angkatan 12', 'ISLAM', 'Inovasi Manajemen dan Teknologi Pendidikan', 'Application of Load Breakdown Scheme on Lenangguar   Feeders in Overcoming Voltage Drop and Power Loss   Using ETAP Simulation ', 'Penerapan Skema Pecah Beban Pada Penyulang Lenangguar Dalam Mengatasi Jatuh Tegangan Dan Rugi Daya Menggunakan Simulasi ETAP', 'https://drive.google.com/open?id=1mCPZ3oaAwdkVK5kplfpyoaNdvcuZPEhf', 'https://drive.google.com/open?id=1oldmJl0CH_O5TIIsjNRA7egzAAlJcDmK', 'https://drive.google.com/open?id=1KQrMaR-7qaPZGp2yVwMLkwP-jKQ1KaZe', 'https://drive.google.com/open?id=1AlzKu4JC-RjKZczZ7g1zKvrACV5tdbnf', 'https://drive.google.com/open?id=1IbcBKKSucPRlG6JEyzF5uY1Vj21BdTrI', 'https://drive.google.com/open?id=1SKcNXjw5BsoLhiH0uFu4GCLzm9uTYPjD', 'proses');
INSERT INTO `prasidang` VALUES ('PS280425UR', '232015057', '2025-04-28 00:06:02', '2025-04-28 00:06:02', 'Angkatan 12', 'Islam ', 'Inovasi Manajemen dan Teknologi Pendidikan', 'The Influence of applying the ASRA Method on the ability to read Al-Quran in the congregations of The Bunga Eja Learning Assembly (MTBE) Bugis Village Sumbawa District Sumbawa Regency', 'Pengaruh Penerapan Metode ASRA Terhadap Peningkatan Kemampuan Membaca Al-Quran Jama\'ah Majelis Tak\'lim Bunga Eja Kelurahan Bugis Kecamatan Sumbawa Kabupaten Sumbawa ', 'https://drive.google.com/open?id=1Niu8V_R1ksxOY0PmPDXGwa-C079EbfsA', 'https://drive.google.com/open?id=1uPosrE651jZjO6r-_MqKWSaXSP0iWYOc', 'https://drive.google.com/open?id=1_xsQ6215jbkG7W5NpbaerT0ywZnjm3FN', 'https://drive.google.com/open?id=1pZqIK3WL5gDdj6oGlna8nfCrxW2cpiDx', 'https://drive.google.com/open?id=1ehKqF8ngwbDT6YsxxR5KT1b1e4xr3HML', 'https://drive.google.com/open?id=1mPyEbE_TaoArxDfesTtny1eSAGpH8YnW', 'proses');
INSERT INTO `prasidang` VALUES ('PS280425I0', '232015012', '2025-04-28 00:06:02', '2025-04-28 00:06:02', 'Angkatan 12', 'ISLAM', 'Generik Inovasi', '\"Evaluation of Financial Performance Management in the Regional Government Employees\' Cooperative (KOPEDA) of Sumbawa Regency\"', 'Analisis Kinerja Pengelolaan Keuangan Koperasi Pegawai Daerah (KOPEDA) Kab. Sumbawa', 'https://drive.google.com/open?id=1lHNbb06IwjCay4UHvRQzfYPIkXoZTx7B', 'https://drive.google.com/open?id=1wcnnDVOZO8G8KJYj0RkXjrJVrTSUAms0', 'https://drive.google.com/open?id=1udzYSTHGx1tN8s5DLDVfBPM9kKg_H6v7', 'https://drive.google.com/open?id=1EVoz2JfgXle-_7eOywurLwQms2xVWXhC', 'https://drive.google.com/open?id=18yuSjirx09YxhKBapiqT56GbqPNH7bWj', 'https://drive.google.com/open?id=16csZo3MzZcm0gEO3Dr1mgWy6tXJsmcO7', 'proses');
INSERT INTO `prasidang` VALUES ('PS280425XV', '232015066', '2025-04-28 00:06:02', '2025-04-28 00:06:02', 'Angkatan 12', 'ISLAM', 'Generik Inovasi', 'POLICY OF THE BADAN KESATUAN BANGSA AND POLITIK (BAKESBANGPOL) DOMPU IN DERADICALIZATION EFFORTS AGAINST FORMER TERRORISM PRISONERS IN KABUPATEN DOMPU', 'KEBIJAKAN BADAN KESATUAN BANGSA DAN POLITIK (BAKESBANGPOL) DOMPU DALAM UPAYA DERADIKALISASI TERHADAP MANTAN NARAPIDANA TERORISME DI KABUPATEN DOMPU', 'https://drive.google.com/open?id=1SusPyaCvC3qrkV_cICYyJlauYCw_Ag8S', 'https://drive.google.com/open?id=1TFopJJim0ToU1OLhm_3EcLY0neKT213Q', 'https://drive.google.com/open?id=1lsTri2I3lByzY_WaBTFjISTtbcuFDt5x', 'https://drive.google.com/open?id=1G0VYX_-rIsRi0Y1hFXOukJ5dLJxKpPnH', 'https://drive.google.com/open?id=1FX6y6QpxkfTy4yxkpEiXn0Vpp5P3sKby', 'https://drive.google.com/open?id=1RFcgoZbql1Odc8i3t49qw2h9PDChlQGy', 'proses');
INSERT INTO `prasidang` VALUES ('PS28042539', '232015016', '2025-04-28 00:06:02', '2025-04-28 00:06:02', 'Angkatan 12', 'Islam', 'Generik Inovasi', 'The influence of the Quality of Pospay Service Innovation of PT Pos Indonesia Sumbawa Besar Branch on Customer Satisfaction', 'Pengaruh Kualitas Inovasi Layanan Pospay PT Pos Indonesia Cabang Sumbawa Besar Terhadap Kepuasan Pelanggan', 'https://drive.google.com/open?id=1fZ5u0jHXZRoyqoJojc0xFjb3UAoJZPCS', 'https://drive.google.com/open?id=1hcjoxe7ms_FaJE2A0YFH84j6eBBT26iP', 'https://drive.google.com/open?id=1KcrE1c1EtFMIDbHOTD0d2-hFLheLmjrs', 'https://drive.google.com/open?id=198KGtw6IQamxOU_L8YJ-i1sMqdcFBxVY', 'https://drive.google.com/open?id=1a1jqdRVA9i4h2gFHC8RY18yode1zyYVm', 'https://drive.google.com/open?id=1GxPysFDcw2jsuUBfflBt2QI8cqPiOjPZ', 'proses');
INSERT INTO `prasidang` VALUES ('PS280425YC', '232015027', '2025-04-28 00:06:02', '2025-04-28 00:06:02', 'Angkatan 12', 'Islam', 'Generik Inovasi', 'Management Of Village-Owned Enterprises (BUMDes) In  Improving Village Local Income (PADes), (A Study Of  Bumdes Batu Penaning, Village Of Berare, Moyo Hilir  District, Sumbawa Regency)', 'MANAJEMEN BADAN USAHA MILIK DESA (BUMDES)  DALAM MENINGKATKAN PENDAPATAN ASLI DESA (PADES) (Studi Pada Bumdes Batu Penaning Desa Berare Kecamatan Moyo Hilir  Kabupaten Sumbawa)', 'https://drive.google.com/open?id=14nCIz-eig-A7DuE8Uop1aGMr9wyGwPft', 'https://drive.google.com/open?id=1K-LXKsC55kuiFlCy3g4v0To72rD2QX_C', 'https://drive.google.com/open?id=1Jx5V5brsraG-bQMb5C6xtXX4AOs3K-i5', 'https://drive.google.com/open?id=1g-9aQNbc4F_kvp11kg_kN7zoNdAsHAQ-', 'https://drive.google.com/open?id=1ZzSPPs_D0UBuBzSZbdhNTPe1_X_tfTop', 'https://drive.google.com/open?id=1xmumTpowN0V_m5tPioz6rLjhgi8XgxOa', 'proses');
INSERT INTO `prasidang` VALUES ('PS280425N3', '232015054', '2025-04-28 00:06:02', '2025-04-28 00:06:02', 'Angkatan 12', 'ISLAM', 'Generik Inovasi', 'Strategy for Increasing Investment in the West Sumbawa Regency Industrial Area', 'STRATEGI PENINGKATAN INVESTASI DI KAWASAN INDUSTRI KABUPATEN SUMBAWA BARAT', 'https://drive.google.com/open?id=1UJRXYTiADgdIszX07RGKcngLdGpCjExu', 'https://drive.google.com/open?id=19K0gYyB_SrjhBwYLE8ISyC2nKA-JnysZ', 'https://drive.google.com/open?id=1niJUlIOT3Ep9tB3T5ChLQBzmvo5ZOQLv', 'https://drive.google.com/open?id=1-yzhc5uUfGq0UsEgSXhsNlTSG271b4lK', 'https://drive.google.com/open?id=18AAhzwco3-FRHBZW2nhfYh_zw4woKdtC', 'https://drive.google.com/open?id=1OYTnRQK0cVGClE7RckebZa17BLuO0HdJ', 'proses');
INSERT INTO `prasidang` VALUES ('PS280425U1', '232015053', '2025-04-28 00:06:02', '2025-04-28 00:06:02', 'Angkatan 12', 'Islam', 'Generik Inovasi', 'Analysis of the Application of the System Accounting for Drug and Medical Supplies in RSUD Asy-Syifa\' West Sumbawa', 'Analisis Penerapan Sistem Informasi Akuntansi Persediaan Obat dan Alat Kesehatan pada RSUD Asy-Syifa\' Sumbawa Barat', 'https://drive.google.com/open?id=1AC4vQy5vJP8XGwi5hS_7PLzn2xNWygRO', 'https://drive.google.com/open?id=1_rCBKxP94BOOvJGI3QiCOA8aL3qYa5fV', 'https://drive.google.com/open?id=1HayxgwgMxUqQlaafVTw6oXLW9AmOLvaU', 'https://drive.google.com/open?id=1k-lhkTqoBZPq8y1v4Jx0oVBLk4j30wwV', 'https://drive.google.com/open?id=1Jxy4521cwnA58ogr9sbqd6AsII7IrlXZ', 'https://drive.google.com/open?id=1P3EZb4gMha44ZJPFUwp3aMSFnwske9cP', 'proses');
INSERT INTO `prasidang` VALUES ('PS280425YK', '232015017', '2025-04-28 00:06:02', '2025-04-28 00:06:02', 'Angkatan 12', 'ISLAM', 'Generik Inovasi', 'Analysis of the Implementation of Policy Innovation in Planning at Local Government (Case Study of SIPD Implementation at Bappeda Sumbawa Regency)', 'ANALISIS IMPLIMEMTASI INOVASI KEBIJAKAN PERENCANAAN DI PEMERINTAH DAERAH (Studi Kasus Implementasi SIPD di Bappeda Kab. Sumbawa)', 'https://drive.google.com/open?id=1SYDXlvLfhTrvy0MM9ciNg5sBTCTF5OGo', 'https://drive.google.com/open?id=1CcSDNSTYSA1PfdJiPjvOPcsuVs3zcz2U', 'https://drive.google.com/open?id=1HOeBccYr34OF2ikwBtvynGRjjuckA7zM', 'https://drive.google.com/open?id=1RXWR3eWjMlm99U1xM4dQmrcSGwBIQqGV', 'https://drive.google.com/open?id=1JEqBuH4RxbCi2H0ovpBAJQfp1AK2bGBk', 'https://drive.google.com/open?id=1QRcDo63DdhczRK3y8vaa2jVPaQgdwCsP', 'proses');
INSERT INTO `prasidang` VALUES ('PS280425SE', '232015070', '2025-04-28 00:06:02', '2025-04-28 00:06:02', 'Angkatan 12', 'Islam', 'Generik Inovasi', 'Good Governance in the Orderly Financial Management of the Financial and Asset Management Agency of Sumbawa Regency', 'Good Governance dalam Tertib Pengelolaan Keuangan pada Badan Keuangan dan Aset Daerah Kabupaten Sumbawa', 'https://drive.google.com/open?id=162uLTkfb0WdigWvuePNuIAne8h2qjh5R', 'https://drive.google.com/open?id=1ZUWsVkonMhY8iEs9aLxZxeY2soVrBums', 'https://drive.google.com/open?id=1s7-u1N7XXJTaPCvEar4nx8jrC8QiVJV9', 'https://drive.google.com/open?id=1yTlWwNiQ_QtkZFLo6HaERbuVCuDlinYo', 'https://drive.google.com/open?id=1JPrNJtkG8kcvPHFoUQ4H2WUsm7qgEK8g', 'https://drive.google.com/open?id=1wcR_2Ors8JSuSBh7MhHJJyPouwnngcw2', 'proses');
INSERT INTO `prasidang` VALUES ('PS280425BS', '232015058', '2025-04-28 00:06:02', '2025-04-28 00:06:02', 'Angkatan 12', 'Islam', 'Inovasi Manajemen dan Teknologi Pendidikan', 'The Innovation of Al-Qur’an Learning for Productive Elderly and Its Impact on Spiritual Enhancement : A Phenomenological Study on Mosque Congregations in Malang Raya', 'Inovasi Pembelajaran Al-Qur’an bagi Lansia Produktif Dan Pengaruhnya Terhadap Peningkatan Spritual Studi Fenomenologi pada Jamaah Masjid di Malang Raya', 'https://drive.google.com/open?id=1ZgfKntUJ5WAxnBHd6Plf7Daq6ht6TQTg', 'https://drive.google.com/open?id=1-6Kvs44CUbTcohgj9QIxHEZ1Jn08FzKc', 'https://drive.google.com/open?id=1hw2ULvjcCIYYM5i4BfyFJos97b2sZCJx', 'https://drive.google.com/open?id=1ZzCic2uNOtLX-ht_KPBA3mvFUIdDhV8j', 'https://drive.google.com/open?id=130gJB4L6ZNvtqBBLVPKaSXebcDdBaxQ-', 'https://drive.google.com/open?id=11fJcBs8dmyR8oj2wa_HU0oHaawccyoT9', 'proses');
INSERT INTO `prasidang` VALUES ('PS28042569', '231015063', '2025-04-28 00:06:02', '2025-04-28 00:06:02', 'Angkatan 12', 'Islam', 'Generik Inovasi', 'INCREASING THE REALIZATION OF MOTOR VEHICLE TAXES IN BIMA CITY BY THE EARLY WARNING SYSTEM', 'PENINGKATAN REALISASI PAJAK KENDARAAN BERMOTOR DI KOTA BIMA MELALUI EARLY WARNING SYSTEM', 'https://drive.google.com/open?id=1mfO_AIgYKXAMX58PhQ4qwV_ne9Pmfplk', 'https://drive.google.com/open?id=1upznRQrq4W45ZFOcJu0olEjHj1ATyKxB', 'https://drive.google.com/open?id=1-ralaeCEwOGr8oWs4Y8LMG_KWrxjzuOD', 'https://drive.google.com/open?id=1Et4NL7E1rcOLke8rPm0kO2fbL7k-MSbR', 'https://drive.google.com/open?id=1MVJ5YunE5V4Q2EI_zDwtvNk4th5QCBMm', 'https://drive.google.com/open?id=1MnAOc22bE3Klt_4uYjSoa4PFhdqyPpeh', 'proses');

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
INSERT INTO `students` VALUES ('232015001', 'A270425E0x', NULL, NULL, NULL, 'FABIAN ARDIANTA', 'Laki-Laki', 'Jl. Durian Kelurahan Uma Sima, Kecamatan Sumbawa', '81239802951', 'Manajemen Informatika', '232015001@uts.ac.id', '2025', '2025-04-27 21:18:08', '2025-04-27 21:18:08');
INSERT INTO `students` VALUES ('232015033', 'A270425H3r', NULL, NULL, NULL, 'Sulkarnain', 'Laki-Laki', 'RT. 02 RW.09 Lingk. Sebubuk Kel. Kuang Kec. Taliwang Kab. Sumbawa Barat', '81239802952', 'Manajemen Informatika', '232015033@uts.ac.id', '2025', '2025-04-27 21:18:08', '2025-04-27 21:18:08');
INSERT INTO `students` VALUES ('232015036', 'A2704252VI', NULL, NULL, NULL, 'MUSLIMIN M.AR', 'Laki-Laki', 'RT. 03 RW. 06 LINGKUNGAN SEMOAN KEL. KUANG KEC. TALIWANG KAB. SUMBAWA BARAT', '81239802953', 'Manajemen Informatika', '232015036@uts.ac.id', '2025', '2025-04-27 21:18:08', '2025-04-27 21:18:08');
INSERT INTO `students` VALUES ('232015034', 'A2704254mv', NULL, NULL, NULL, 'ISNIA NURUL AZMY', 'Perempuan', 'LINGKUNGAN KEMUTER TELU RT 001 RW 007, KELURAHAN MENALA, KECAMATAN TALIWANG, KSB', '81239802954', 'Manajemen Informatika', '232015034@uts.ac.id', '2025', '2025-04-27 21:18:08', '2025-04-27 21:18:08');
INSERT INTO `students` VALUES ('232015048', 'A270425jnD', NULL, NULL, NULL, 'Ketut Arisanto', 'Laki-Laki', 'Perumahan Nuansa Gemitir No. 02, Banjar Biaung, Desa Kesiman Kertalangu, Kecamatan Denpasar Timur, Kota Denpasar, Provinsi Bali', '81239802955', 'Manajemen Informatika', '232015048@uts.ac.id', '2025', '2025-04-27 21:18:08', '2025-04-27 21:18:08');
INSERT INTO `students` VALUES ('232015032', 'A2704252G3', NULL, NULL, NULL, 'SURBINI', 'Laki-Laki', 'Rt.01/Rw.10 Dusun Bukit Tinggi Desa Dete Kecamatan Lape Kabupaten Sumbawa-NTB', '81239802956', 'Manajemen Informatika', '232015032@uts.ac.id', '2025', '2025-04-27 21:18:08', '2025-04-27 21:18:08');
INSERT INTO `students` VALUES ('232015031', 'A270425sNb', NULL, NULL, NULL, 'ZAINUDDIN', 'Laki-Laki', 'Rt.002/Rw.007 Dusun Sering Ai Beta, Desa Kerato Kecamatan Unter Iwes Kab.Sumbawa-NTB', '81239802957', 'Manajemen Informatika', '232015031@uts.ac.id', '2025', '2025-04-27 21:18:08', '2025-04-27 21:18:08');
INSERT INTO `students` VALUES ('232015044', 'A270425xgd', NULL, NULL, NULL, 'Sahuddin', 'Laki-Laki', 'Rt 001 Rw 004 Dusun Buin Gali Desa Langam Kecamatan Lopok Kabupaten Sumbawa', '81239802958', 'Manajemen Informatika', '232015044@uts.ac.id', '2025', '2025-04-27 21:18:08', '2025-04-27 21:18:08');
INSERT INTO `students` VALUES ('232015056', 'A2704252wX', NULL, NULL, NULL, 'R. AGUS YULI FITRIYANTO', 'Laki-Laki', 'Jl. Cendrawasih Gang IX No. 25 RT. 003 RW. 006 Kelurahan Brang Biji Kecamatan Sumbawa Kabupaten Sumbawa', '81239802959', 'Manajemen Informatika', '232015056@uts.ac.id', '2025', '2025-04-27 21:18:08', '2025-04-27 21:18:08');
INSERT INTO `students` VALUES ('232015071', 'A270425Png', NULL, NULL, NULL, 'RATILUS SULCAT, S.E.', 'Laki-Laki', 'DUSUN SENAYAN BAWAH RT.002/RW.001 DESA SENAYAN SUMBAWA BARAT', '81239802960', 'Manajemen Informatika', '232015071@uts.ac.id', '2025', '2025-04-27 21:18:09', '2025-04-27 21:18:09');
INSERT INTO `students` VALUES ('232015061', 'A2704258uk', NULL, NULL, NULL, 'JAYA ARIADI', 'Laki-Laki', 'RT.01 RW.02 Dusun Seteluk Atas Desa Seteluk Atas Kec. Seteluk Kab. Sumbawa Barat', '81239802961', 'Manajemen Informatika', '232015061@uts.ac.id', '2025', '2025-04-27 21:18:09', '2025-04-27 21:18:09');
INSERT INTO `students` VALUES ('232015003', 'A2704254QZ', NULL, NULL, NULL, 'SAHRUL YADI', 'Laki-Laki', 'Link. Samoan Kel. Kuang Kec. Taliwang Sumbawa Barat', '81239802962', 'Manajemen Informatika', '232015003@uts.ac.id', '2025', '2025-04-27 21:18:09', '2025-04-27 21:18:09');
INSERT INTO `students` VALUES ('232015045', 'A270425a4k', NULL, NULL, NULL, 'WENDHI SHAFITRI', 'Laki-Laki', 'JLN MANGGIS GANG SRINANI NO. 3 RT.003 RW.005 KELURAHAN UMA SIMA KECAMATAN SUMBAWA', '81239802963', 'Manajemen Informatika', '232015045@uts.ac.id', '2025', '2025-04-27 21:18:09', '2025-04-27 21:18:09');
INSERT INTO `students` VALUES ('232015039', 'A270425fBZ', NULL, NULL, NULL, 'SAMA', 'Laki-Laki', 'RT. 01 RW. 01 Dusun Sapugara Desa Sapugara Bree Kec. Brang Rea Kab. Sumbawa Barat ', '81239802964', 'Manajemen Informatika', '232015039@uts.ac.id', '2025', '2025-04-27 21:18:09', '2025-04-27 21:18:09');
INSERT INTO `students` VALUES ('232015025', 'A270425Por', NULL, NULL, NULL, 'Neni Afriliani', 'Perempuan', 'Kecamatan Taliwang Kabupaten Sumbawa Barat', '81239802965', 'Manajemen Informatika', '232015025@uts.ac.id', '2025', '2025-04-27 21:18:09', '2025-04-27 21:18:09');
INSERT INTO `students` VALUES ('232015011', 'A2704252Wl', NULL, NULL, NULL, 'DARMATASIA', 'Perempuan', 'LINGK. TELAGA BARU B RT/RW 004/002 TELAGA BERTONG TALIWANG KSB', '81239802966', 'Manajemen Informatika', '232015011@uts.ac.id', '2025', '2025-04-27 21:18:09', '2025-04-27 21:18:09');
INSERT INTO `students` VALUES ('232015028', 'A270425BdO', NULL, NULL, NULL, 'Herlina', 'Perempuan', 'Taliwang - Kabupaten Sumbawa Barat', '81239802967', 'Manajemen Informatika', '232015028@uts.ac.id', '2025', '2025-04-27 21:18:09', '2025-04-27 21:18:09');
INSERT INTO `students` VALUES ('232015037', 'A270425UEa', NULL, NULL, NULL, 'Lalu Aditya Pandu Rosy Kumbara', 'Laki-Laki', 'Kelurahan Menala Kecamatan Taliwang Kabupaten Sumbawa Barat', '81239802968', 'Manajemen Informatika', '232015037@uts.ac.id', '2025', '2025-04-27 21:18:09', '2025-04-27 21:18:09');
INSERT INTO `students` VALUES ('232015006', 'A270425EJT', NULL, NULL, NULL, 'Andri Darmansyah', 'Laki-Laki', 'dsn. Tapir Luar, RT 07/04, Desa Tapir, Kecamatan Seteluk, Sumbawa Barat', '81239802969', 'Manajemen Informatika', '232015006@uts.ac.id', '2025', '2025-04-27 21:18:09', '2025-04-27 21:18:09');
INSERT INTO `students` VALUES ('232015005', 'A270425KH5', NULL, NULL, NULL, 'RHAUDATUL ALIYAH', 'Perempuan', 'RT 007 RW 004 DESA TAPIR KECAMATAN SETELUK KABUPATEN SUMBAWA BARAT', '81239802970', 'Manajemen Informatika', '232015005@uts.ac.id', '2025', '2025-04-27 21:18:09', '2025-04-27 21:18:09');
INSERT INTO `students` VALUES ('232015049', 'A270425mQ5', NULL, NULL, NULL, 'Didin Friansyah ', 'Laki-Laki', 'Lambu-Bima-NTB', '81239802971', 'Manajemen Informatika', '232015049@uts.ac.id', '2025', '2025-04-27 21:18:09', '2025-04-27 21:18:09');
INSERT INTO `students` VALUES ('232015026', 'A2704254HK', NULL, NULL, NULL, 'HERMAN', 'Laki-Laki', 'Rt03/Rw03 Lingk. Kokar Dalam Kel. Telaga Bertong Kec. Taliwang Kab. Sumbawa Barat.', '81239802972', 'Manajemen Informatika', '232015026@uts.ac.id', '2025', '2025-04-27 21:18:09', '2025-04-27 21:18:09');
INSERT INTO `students` VALUES ('232015046', 'A270425q9C', NULL, NULL, NULL, 'DEDI KUSWANTO', 'Laki-Laki', 'DUSUN PAMANTO BARAT RT. 005 RW. 002 DESA PAMANTO KEC. EMPANG KAB. SUMBAWA - NTB', '81239802973', 'Manajemen Informatika', '232015046@uts.ac.id', '2025', '2025-04-27 21:18:09', '2025-04-27 21:18:09');
INSERT INTO `students` VALUES ('232015009', 'A270425Nyz', NULL, NULL, NULL, 'MARYANTON', 'Laki-Laki', 'Desa Wadukopa Kecamatan Soromandi Kabupaten Bima Provinsi NTB', '81239802974', 'Manajemen Informatika', '232015009@uts.ac.id', '2025', '2025-04-27 21:18:09', '2025-04-27 21:18:09');
INSERT INTO `students` VALUES ('232015007', 'A270425dIw', NULL, NULL, NULL, 'ARIF RAHMAN', 'Laki-Laki', 'RT 01 RW 01 DESA MPILI KEC.DONGGO KAB. BIMA', '81239802975', 'Manajemen Informatika', '232015007@uts.ac.id', '2025', '2025-04-27 21:18:09', '2025-04-27 21:18:09');
INSERT INTO `students` VALUES ('232015008', 'A270425a9B', NULL, NULL, NULL, 'MUARIF', 'Laki-Laki', 'LINGKUNGAN TOLOTONGGA, KEL. ULE, KEC. ASAKOTA KOTA BIMA', '81239802976', 'Manajemen Informatika', '232015008@uts.ac.id', '2025', '2025-04-27 21:18:09', '2025-04-27 21:18:09');
INSERT INTO `students` VALUES ('232015010', 'A270425YdZ', NULL, NULL, NULL, 'Ridha Rangga Radesakh', 'Laki-Laki', 'Jl. Lintas Lahila, Dusun Mangge Toi, RT 012/RW 003, Desa Kala, Kec. Donggo, Kab. Bima - NTB', '81239802977', 'Manajemen Informatika', '232015010@uts.ac.id', '2025', '2025-04-27 21:18:09', '2025-04-27 21:18:09');
INSERT INTO `students` VALUES ('232015019', 'A270425cf0', NULL, NULL, NULL, 'HADIJAH', 'Perempuan', 'Lingkungan Batu Ble Belisung Rt 06/07 Kel Menala Kec. Taliwang Kab.Sumbawa Barat', '81239802978', 'Manajemen Informatika', '232015019@uts.ac.id', '2025', '2025-04-27 21:18:10', '2025-04-27 21:18:10');
INSERT INTO `students` VALUES ('232015004', 'A2704257hu', NULL, NULL, NULL, 'M. Arifin Tagara', 'Laki-Laki', 'Rt 02 Rw 06 Lingk. Semoan Kel. Kuang Kec. Taliwang Kab. Sumbawa Barat Prov. Nusa Tenggara Barat', '81239802979', 'Manajemen Informatika', '232015004@uts.ac.id', '2025', '2025-04-27 21:18:10', '2025-04-27 21:18:10');
INSERT INTO `students` VALUES ('232015051', 'A270425n3a', NULL, NULL, NULL, 'PUTRI INTAN PERMATASARI', 'Perempuan', 'EMPANG, SUMBAWA', '81239802980', 'Manajemen Informatika', '232015051@uts.ac.id', '2025', '2025-04-27 21:18:10', '2025-04-27 21:18:10');
INSERT INTO `students` VALUES ('232015060', 'A270425pK8', NULL, NULL, NULL, 'BADRUS SYAMSU', 'Laki-Laki', 'JL.ORONG SEPAKAT 1 LINGKUNGAN SEBUBUK KELURAHAN KUANG KECAMATAN TALIWANG KABUPATEN SUMBAAWA BARAT', '81239802981', 'Manajemen Informatika', '232015060@uts.ac.id', '2025', '2025-04-27 21:18:10', '2025-04-27 21:18:10');
INSERT INTO `students` VALUES ('232015052', 'A270425G5A', NULL, NULL, NULL, 'Adrian Sitompul', 'Laki-Laki', 'Jl. Yos Sudarso No.2, Pejeruk, Kec. Ampenan, Kota Mataram, Nusa Tenggara Bar. 83114', '81239802982', 'Manajemen Informatika', '232015052@uts.ac.id', '2025', '2025-04-27 21:18:10', '2025-04-27 21:18:10');
INSERT INTO `students` VALUES ('232015024', 'A270425e26', NULL, NULL, NULL, 'SOFYAN HADI', 'Laki-Laki', 'PPN BUKIT INDAH RT 003 RW 006 KELURAHAN SEKETNG KECAMATAN SUMBAWA', '81239802983', 'Manajemen Informatika', '232015024@uts.ac.id', '2025', '2025-04-27 21:18:10', '2025-04-27 21:18:10');
INSERT INTO `students` VALUES ('232015015', 'A270425x8U', NULL, NULL, NULL, 'Bachtiar Maulana', 'Laki-Laki', 'Dusun kali baru RT 01 RW 13 Desa Labuhan Sumbawa', '81239802984', 'Manajemen Informatika', '232015015@uts.ac.id', '2025', '2025-04-27 21:18:10', '2025-04-27 21:18:10');
INSERT INTO `students` VALUES ('232015069', 'A270425omI', NULL, NULL, NULL, 'Indra jaya', 'Laki-Laki', 'Rt 04/01 telaga bertong kelurahan telaga bertong', '81239802985', 'Manajemen Informatika', '232015069@uts.ac.id', '2025', '2025-04-27 21:18:10', '2025-04-27 21:18:10');
INSERT INTO `students` VALUES ('232015050', 'A270425YzH', NULL, NULL, NULL, 'BUNYAMIN', 'Laki-Laki', 'Jln. Jenderal Sudirman Dusun Sigi RT 006/RW 003 Desa Melayu Kecamatan Lambu Kabupaten Bima Prov. NTB', '81239802986', 'Manajemen Informatika', '232015050@uts.ac.id', '2025', '2025-04-27 21:18:10', '2025-04-27 21:18:10');
INSERT INTO `students` VALUES ('232015030', 'A270425pLp', NULL, NULL, NULL, 'WAHYU ARBAIN', 'Laki-Laki', 'Dusun Pusu Desa Tepal Kecamatan Batulanteh', '81239802987', 'Manajemen Informatika', '232015030@uts.ac.id', '2025', '2025-04-27 21:18:10', '2025-04-27 21:18:10');
INSERT INTO `students` VALUES ('232015065', 'A270425Rgx', NULL, NULL, NULL, 'BURHAN', 'Laki-Laki', 'DUSUN DORO SANINU RT 02 RW 01 DESA TONGGORISA KECAMATAN PALIBELO KABUPATEN BIMA PROVINSI NUSA TENGGARA BARAT', '81239802988', 'Manajemen Informatika', '232015065@uts.ac.id', '2025', '2025-04-27 21:18:10', '2025-04-27 21:18:10');
INSERT INTO `students` VALUES ('232015064', 'A270425StU', NULL, NULL, NULL, 'Muhammad Fuad', 'Laki-Laki', 'Jln. Syekh Shubuh Desa Tonggorisa, Kecamatan Palibelo Kab Bima', '81239802989', 'Manajemen Informatika', '232015064@uts.ac.id', '2025', '2025-04-27 21:18:10', '2025-04-27 21:18:10');
INSERT INTO `students` VALUES ('232015035', 'A270425eVt', NULL, NULL, NULL, 'Nasruddin', 'Laki-Laki', 'RT/RW. 001/007 Dusun Bugis Desa Labuhan Burung Kecamatan Buer Kabupaten Sumbawa', '81239802990', 'Manajemen Informatika', '232015035@uts.ac.id', '2025', '2025-04-27 21:18:10', '2025-04-27 21:18:10');
INSERT INTO `students` VALUES ('232015021', 'A270425xUU', NULL, NULL, NULL, 'Novita Laily Shalatiag', 'Perempuan', 'Selong, Lombok timut', '81239802991', 'Manajemen Informatika', '232015021@uts.ac.id', '2025', '2025-04-27 21:18:10', '2025-04-27 21:18:10');
INSERT INTO `students` VALUES ('232015038', 'A270425Rl1', NULL, NULL, NULL, 'Wawan Satriawan', 'Laki-Laki', 'perumahan panto daeng, no 21 Rt/RW 003/007 kel.brang bara, kec.sumbawa', '81239802992', 'Manajemen Informatika', '232015038@uts.ac.id', '2025', '2025-04-27 21:18:10', '2025-04-27 21:18:10');
INSERT INTO `students` VALUES ('232015057', 'A270425eaK', NULL, NULL, NULL, 'Ahmad Syaichu Rauf ', 'Laki-Laki', 'Jln. Hasanuddin No.86, RT 01/RW 09, Kelurahan ', '81239802993', 'Manajemen Informatika', '232015057@uts.ac.id', '2025', '2025-04-27 21:18:10', '2025-04-27 21:18:10');
INSERT INTO `students` VALUES ('232015012', 'A270425kZ8', NULL, NULL, NULL, 'CHANDRA ALISTA FIBRIYAN', 'Laki-Laki', 'JL. BATU PASAK, RT/RW 003/007, KEL. PEKAT, KEC. SUMBAWA, KAB. SUMBAWA, NTB', '81239802994', 'Manajemen Informatika', '232015012@uts.ac.id', '2025', '2025-04-27 21:18:10', '2025-04-27 21:18:10');
INSERT INTO `students` VALUES ('232015066', 'A270425YiI', NULL, NULL, NULL, 'MUAMAR', 'Laki-Laki', 'DUSUN LAKEKE RT. 002/000 DESA O\'O KECAMATAN DOMPU KABUPATEN DOMPU', '81239802995', 'Manajemen Informatika', '232015066@uts.ac.id', '2025', '2025-04-27 21:18:10', '2025-04-27 21:18:10');
INSERT INTO `students` VALUES ('232015016', 'A270425kFf', NULL, NULL, NULL, 'Maulidina Yulia Auli', 'Perempuan', 'Gg tanjung menangis 3 RT 002 RW 015 Kelurahan Brang Biji', '81239802996', 'Manajemen Informatika', '232015016@uts.ac.id', '2025', '2025-04-27 21:18:10', '2025-04-27 21:18:10');
INSERT INTO `students` VALUES ('232015027', 'A270425wj4', NULL, NULL, NULL, 'RAHMAT HIDAYAT', 'Laki-Laki', 'Dusun Berare A, RT 005, RW 002 Desa Berare', '81239802997', 'Manajemen Informatika', '232015027@uts.ac.id', '2025', '2025-04-27 21:18:11', '2025-04-27 21:18:11');
INSERT INTO `students` VALUES ('232015054', 'A270425yGM', NULL, NULL, NULL, 'HERIYANTO', 'Laki-Laki', 'LINK. KTC TALIWANG KSB ', '81239802998', 'Manajemen Informatika', '232015054@uts.ac.id', '2025', '2025-04-27 21:18:11', '2025-04-27 21:18:11');
INSERT INTO `students` VALUES ('232015053', 'A270425duU', NULL, NULL, NULL, 'Agus Kusuma Atmaja', 'Laki-Laki', 'RT 07/04 Dusun Mekar Permai, Desa Beru Kec. Brang Rea Kab. Sumbawa Barat', '81239802999', 'Manajemen Informatika', '232015053@uts.ac.id', '2025', '2025-04-27 21:18:11', '2025-04-27 21:18:11');
INSERT INTO `students` VALUES ('232015017', 'A270425uiq', NULL, NULL, NULL, 'IMRAN NURHAKIM', 'Laki-Laki', 'BTN Puri Harmoni Brang Biji, Sumbawa, NTB', '81239803000', 'Manajemen Informatika', '232015017@uts.ac.id', '2025', '2025-04-27 21:18:11', '2025-04-27 21:18:11');
INSERT INTO `students` VALUES ('232015070', 'A270425Nox', NULL, NULL, NULL, 'Isnaini Aprilla', 'Laki-Laki', 'Dsn. Batu Nisung RT.001 RW.012 Desa Karang Dima Kec. Labuhan Badas Kab. Sumbawa', '81239803001', 'Manajemen Informatika', '232015070@uts.ac.id', '2025', '2025-04-27 21:18:11', '2025-04-27 21:18:11');
INSERT INTO `students` VALUES ('232015058', 'A2704252xX', NULL, NULL, NULL, 'M. Syarif Hidayatullah', 'Laki-Laki', 'Jl. Ir. Soekarno Perumahan Puri Savira Blok D No. 15 RT 18 / RW 08  Desa Mojorejo Kecamatan Junrejo Kota Batu Jawa Timur', '81239803002', 'Manajemen Informatika', '232015058@uts.ac.id', '2025', '2025-04-27 21:18:11', '2025-04-27 21:18:11');
INSERT INTO `students` VALUES ('231015063', 'A270425HA7', NULL, NULL, NULL, 'SYAFRUDDIN', 'Laki-Laki', 'Kota Bima', '81239803003', 'Manajemen Informatika', '231015063@uts.ac.id', '2025', '2025-04-27 21:18:11', '2025-04-27 21:18:11');
INSERT INTO `students` VALUES ('22008034', 'A140525Bgx', NULL, NULL, NULL, 'Siti Purnawati', 'Perempuan', 'Jl. Gardujati No. 338, Tanjungpinang, JT 10170', '87861540874', 'Manajemen Informatika', '22008034@uts.ac.id', '2025', '2025-05-14 10:33:19', '2025-05-14 10:33:19');
INSERT INTO `students` VALUES ('22519568', 'A1405251BT', NULL, NULL, NULL, 'Ir. Sarah Hutasoit, S.Pt', 'Laki-Laki', 'Gg. Kutai No. 30, Jambi, Jawa Tengah 97716', '87861540875', 'Manajemen Informatika', '22519568@uts.ac.id', '2025', '2025-05-14 10:33:19', '2025-05-14 10:33:19');
INSERT INTO `students` VALUES ('22559282', 'A1405251Il', NULL, NULL, NULL, 'dr. Fitriani Setiawan', 'Perempuan', 'Jl. Siliwangi No. 3, Balikpapan, Papua Barat 68756', '87861540878', 'Manajemen Informatika', '22559282@uts.ac.id', '2025', '2025-05-14 10:33:20', '2025-05-14 10:33:20');
INSERT INTO `students` VALUES ('22041880', 'A140525ius', NULL, NULL, NULL, 'Raditya Usada', 'Laki-Laki', 'Gang Rumah Sakit No. 06, Batam, Nusa Tenggara Timur 11048', '87861540879', 'Manajemen Informatika', '22041880@uts.ac.id', '2025', '2025-05-14 10:33:20', '2025-05-14 10:33:20');
INSERT INTO `students` VALUES ('22624765', 'A140525EfV', NULL, NULL, NULL, 'dr. Widya Prastuti, S.Psi', 'Laki-Laki', 'Gang S. Parman No. 08, Kota Administrasi Jakarta Selatan, Nusa Tenggara Barat 44148', '87861540881', 'Manajemen Informatika', '22624765@uts.ac.id', '2025', '2025-05-14 10:33:20', '2025-05-14 10:33:20');
INSERT INTO `students` VALUES ('22291246', 'A1405255pa', NULL, NULL, NULL, 'Ida Handayani', 'Perempuan', 'Jl. Tubagus Ismail No. 78, Pematangsiantar, Banten 74984', '87861540882', 'Manajemen Informatika', '22291246@uts.ac.id', '2025', '2025-05-14 10:33:20', '2025-05-14 10:33:20');
INSERT INTO `students` VALUES ('22413624', 'A1405250s7', NULL, NULL, NULL, 'Carla Firgantoro', 'Perempuan', 'Jalan Soekarno Hatta No. 80, Ambon, Gorontalo 20798', '87861540883', 'Manajemen Informatika', '22413624@uts.ac.id', '2025', '2025-05-14 10:33:20', '2025-05-14 10:33:20');
INSERT INTO `students` VALUES ('22821308', 'A140525vmh', NULL, NULL, NULL, 'Cut Zamira Halim, S.E.', 'Perempuan', 'Gang Pelajar Pejuang No. 040, Pekalongan, Bali 37426', '87861540884', 'Manajemen Informatika', '22821308@uts.ac.id', '2025', '2025-05-14 10:33:20', '2025-05-14 10:33:20');
INSERT INTO `students` VALUES ('22644770', 'A1405257Mv', NULL, NULL, NULL, 'Tgk. Radika Zulkarnain, S.Gz', 'Laki-Laki', 'Gg. Antapani Lama No. 07, Kota Administrasi Jakarta Selatan, KT 19880', '87861540885', 'Manajemen Informatika', '22644770@uts.ac.id', '2025', '2025-05-14 10:33:20', '2025-05-14 10:33:20');
INSERT INTO `students` VALUES ('22408435', 'A140525U4s', NULL, NULL, NULL, 'Galak Handayani', 'Laki-Laki', 'Gg. S. Parman No. 0, Dumai, KT 88865', '87861540887', 'Manajemen Informatika', '22408435@uts.ac.id', '2025', '2025-05-14 10:33:21', '2025-05-14 10:33:21');
INSERT INTO `students` VALUES ('22358851', 'A140525RHH', NULL, NULL, NULL, 'Zelda Hastuti', 'Perempuan', 'Jalan Erlangga No. 7, Dumai, SB 89438', '87861540889', 'Manajemen Informatika', '22358851@uts.ac.id', '2025', '2025-05-14 10:33:21', '2025-05-14 10:33:21');
INSERT INTO `students` VALUES ('22507127', 'A1405250X7', NULL, NULL, NULL, 'Hj. Gawati Waluyo', 'Laki-Laki', 'Jl. Bangka Raya No. 8, Ternate, SN 88817', '87861540891', 'Manajemen Informatika', '22507127@uts.ac.id', '2025', '2025-05-14 10:33:21', '2025-05-14 10:33:21');
INSERT INTO `students` VALUES ('22549567', 'A1405256rg', NULL, NULL, NULL, 'Abyasa Kuswoyo', 'Perempuan', 'Jl. Abdul Muis No. 8, Meulaboh, Gorontalo 09600', '87861540892', 'Manajemen Informatika', '22549567@uts.ac.id', '2025', '2025-05-14 10:33:21', '2025-05-14 10:33:21');
INSERT INTO `students` VALUES ('22842548', 'A140525PKo', NULL, NULL, NULL, 'Halima Winarsih', 'Laki-Laki', 'Jalan Erlangga No. 983, Tasikmalaya, SU 15056', '87861540895', 'Manajemen Informatika', '22842548@uts.ac.id', '2025', '2025-05-14 10:33:22', '2025-05-14 10:33:22');
INSERT INTO `students` VALUES ('22054208', 'A140525fuC', NULL, NULL, NULL, 'Sarah Budiyanto', 'Laki-Laki', 'Gg. Raya Ujungberung No. 8, Pematangsiantar, Jawa Barat 33989', '87861540897', 'Manajemen Informatika', '22054208@uts.ac.id', '2025', '2025-05-14 10:33:22', '2025-05-14 10:33:22');
INSERT INTO `students` VALUES ('22922190', 'A1405255GY', NULL, NULL, NULL, 'R.A. Elvina Usamah, M.Pd', 'Perempuan', 'Jl. Rungkut Industri No. 8, Tegal, Kepulauan Riau 96567', '87861540898', 'Manajemen Informatika', '22922190@uts.ac.id', '2025', '2025-05-14 10:33:22', '2025-05-14 10:33:22');
INSERT INTO `students` VALUES ('22095209', 'A1405251fr', NULL, NULL, NULL, 'Rachel Setiawan', 'Perempuan', 'Jalan Jayawijaya No. 322, Kendari, Aceh 54440', '87861540899', 'Manajemen Informatika', '22095209@uts.ac.id', '2025', '2025-05-14 10:33:22', '2025-05-14 10:33:22');
INSERT INTO `students` VALUES ('22552969', 'A140525Lzr', NULL, NULL, NULL, 'Yani Permadi, S.Pt', 'Laki-Laki', 'Jalan Rawamangun No. 76, Surabaya, BB 04340', '87861540900', 'Manajemen Informatika', '22552969@uts.ac.id', '2025', '2025-05-14 10:33:23', '2025-05-14 10:33:23');
INSERT INTO `students` VALUES ('22954406', 'A140525CWH', NULL, NULL, NULL, 'drg. Rachel Purnawati', 'Perempuan', 'Jalan Moch. Toha No. 4, Cirebon, ST 90675', '87861540901', 'Manajemen Informatika', '22954406@uts.ac.id', '2025', '2025-05-14 10:33:23', '2025-05-14 10:33:23');
INSERT INTO `students` VALUES ('22157001', 'A1405250Hp', NULL, NULL, NULL, 'Drs. Yani Wibisono, M.Pd', 'Laki-Laki', 'Jl. Dipenogoro No. 77, Kota Administrasi Jakarta Utara, SU 55419', '87861540903', 'Manajemen Informatika', '22157001@uts.ac.id', '2025', '2025-05-14 10:33:23', '2025-05-14 10:33:23');
INSERT INTO `students` VALUES ('22410503', 'A140525AOr', NULL, NULL, NULL, 'Ade Manullang', 'Laki-Laki', 'Jl. Suniaraja No. 8, Batam, Jawa Tengah 45555', '87861540904', 'Manajemen Informatika', '22410503@uts.ac.id', '2025', '2025-05-14 10:33:23', '2025-05-14 10:33:23');
INSERT INTO `students` VALUES ('22625286', 'A140525mnP', NULL, NULL, NULL, 'H. Luthfi Usamah, S.T.', 'Perempuan', 'Gg. Cikapayang No. 7, Mojokerto, DKI Jakarta 73146', '87861540905', 'Manajemen Informatika', '22625286@uts.ac.id', '2025', '2025-05-14 10:33:23', '2025-05-14 10:33:23');
INSERT INTO `students` VALUES ('22656428', 'A140525aEu', NULL, NULL, NULL, 'Dr. Luwes Hastuti, S.Pd', 'Laki-Laki', 'Gang PHH. Mustofa No. 5, Cilegon, KS 01161', '87861540906', 'Manajemen Informatika', '22656428@uts.ac.id', '2025', '2025-05-14 10:33:23', '2025-05-14 10:33:23');
INSERT INTO `students` VALUES ('22772992', 'A140525cp5', NULL, NULL, NULL, 'H. Marsito Uyainah', 'Perempuan', 'Jl. Moch. Ramdan No. 91, Cilegon, Jambi 02457', '87861540907', 'Manajemen Informatika', '22772992@uts.ac.id', '2025', '2025-05-14 10:33:24', '2025-05-14 10:33:24');
INSERT INTO `students` VALUES ('22070462', 'A1405251b9', NULL, NULL, NULL, 'Kamaria Hutasoit', 'Laki-Laki', 'Jl. Kapten Muslihat No. 74, Pontianak, Papua 76952', '87861540909', 'Manajemen Informatika', '22070462@uts.ac.id', '2025', '2025-05-14 10:33:24', '2025-05-14 10:33:24');
INSERT INTO `students` VALUES ('22671085', 'A140525eZD', NULL, NULL, NULL, 'Dimaz Rajasa', 'Perempuan', 'Jalan Rajawali Timur No. 461, Bau-Bau, Gorontalo 27934', '87861540910', 'Manajemen Informatika', '22671085@uts.ac.id', '2025', '2025-05-14 10:33:24', '2025-05-14 10:33:24');
INSERT INTO `students` VALUES ('22694471', 'A140525RKg', NULL, NULL, NULL, 'Hj. Ratna Handayani', 'Perempuan', 'Jalan Jayawijaya No. 414, Padang Sidempuan, MU 23540', '87861540911', 'Manajemen Informatika', '22694471@uts.ac.id', '2025', '2025-05-14 10:33:24', '2025-05-14 10:33:24');
INSERT INTO `students` VALUES ('22557768', 'A140525o26', NULL, NULL, NULL, 'Hasna Hidayanto', 'Perempuan', 'Jl. Astana Anyar No. 6, Madiun, SR 37088', '87861540912', 'Manajemen Informatika', '22557768@uts.ac.id', '2025', '2025-05-14 10:33:24', '2025-05-14 10:33:24');
INSERT INTO `students` VALUES ('22798845', 'A1405259bg', NULL, NULL, NULL, 'Pia Nugroho', 'Laki-Laki', 'Gang Surapati No. 316, Subulussalam, SU 69481', '87861540913', 'Manajemen Informatika', '22798845@uts.ac.id', '2025', '2025-05-14 10:33:24', '2025-05-14 10:33:24');
INSERT INTO `students` VALUES ('22405204', 'A1405250BR', NULL, NULL, NULL, 'R. Prakosa Yolanda', 'Laki-Laki', 'Gang Jamika No. 6, Banjarmasin, Papua 40103', '87861540916', 'Manajemen Informatika', '22405204@uts.ac.id', '2025', '2025-05-14 10:33:25', '2025-05-14 10:33:25');
INSERT INTO `students` VALUES ('22505645', 'A140525dCO', NULL, NULL, NULL, 'Tantri Adriansyah, S.E.I', 'Perempuan', 'Jalan BKR No. 3, Sorong, RI 25825', '87861540917', 'Manajemen Informatika', '22505645@uts.ac.id', '2025', '2025-05-14 10:33:25', '2025-05-14 10:33:25');
INSERT INTO `students` VALUES ('22007189', 'A1405258kh', NULL, NULL, NULL, 'Nadia Lazuardi', 'Laki-Laki', 'Jalan Jend. Sudirman No. 0, Cilegon, NT 20924', '87861540918', 'Manajemen Informatika', '22007189@uts.ac.id', '2025', '2025-05-14 10:33:25', '2025-05-14 10:33:25');
INSERT INTO `students` VALUES ('22033322', 'A140525HLx', NULL, NULL, NULL, 'Aurora Hutapea', 'Perempuan', 'Jl. Jend. Sudirman No. 1, Jambi, ST 64160', '87861540920', 'Manajemen Informatika', '22033322@uts.ac.id', '2025', '2025-05-14 10:33:25', '2025-05-14 10:33:25');
INSERT INTO `students` VALUES ('22257111', 'A140525JmS', NULL, NULL, NULL, 'Ajiono Uwais', 'Perempuan', 'Jalan Surapati No. 897, Tegal, Nusa Tenggara Barat 60066', '87861540921', 'Manajemen Informatika', '22257111@uts.ac.id', '2025', '2025-05-14 10:33:25', '2025-05-14 10:33:25');
INSERT INTO `students` VALUES ('22564270', 'A1405254L2', NULL, NULL, NULL, 'Unggul Dabukke, S.Kom', 'Perempuan', 'Jalan Rungkut Industri No. 57, Kota Administrasi Jakarta Pusat, Banten 84501', '87861540922', 'Manajemen Informatika', '22564270@uts.ac.id', '2025', '2025-05-14 10:33:26', '2025-05-14 10:33:26');
INSERT INTO `students` VALUES ('22238005', 'A140525IA2', NULL, NULL, NULL, 'Rudi Wahyuni', 'Perempuan', 'Jalan Ahmad Yani No. 93, Bogor, AC 62314', '87861540924', 'Manajemen Informatika', '22238005@uts.ac.id', '2025', '2025-05-14 10:33:26', '2025-05-14 10:33:26');
INSERT INTO `students` VALUES ('22024109', 'A1405254SR', NULL, NULL, NULL, 'Cut Vicky Lailasari', 'Perempuan', 'Jl. Asia Afrika No. 0, Banjar, AC 67869', '87861540927', 'Manajemen Informatika', '22024109@uts.ac.id', '2025', '2025-05-14 10:33:26', '2025-05-14 10:33:26');
INSERT INTO `students` VALUES ('22265898', 'A140525Jjw', NULL, NULL, NULL, 'Clara Siregar', 'Laki-Laki', 'Jl. Jend. A. Yani No. 9, Banda Aceh, KI 21223', '87861540928', 'Manajemen Informatika', '22265898@uts.ac.id', '2025', '2025-05-14 10:33:26', '2025-05-14 10:33:26');
INSERT INTO `students` VALUES ('22300123', 'A140525aAB', NULL, NULL, NULL, 'R. Lasmono Usamah, S.E.I', 'Perempuan', 'Jl. Raya Setiabudhi No. 6, Pasuruan, Papua Barat 73314', '87861540929', 'Manajemen Informatika', '22300123@uts.ac.id', '2025', '2025-05-14 10:33:27', '2025-05-14 10:33:27');
INSERT INTO `students` VALUES ('22139404', 'A140525Bm4', NULL, NULL, NULL, 'Dr. Uda Kurniawan, M.Pd', 'Perempuan', 'Jl. Abdul Muis No. 7, Pematangsiantar, LA 80113', '87861540930', 'Manajemen Informatika', '22139404@uts.ac.id', '2025', '2025-05-14 10:33:27', '2025-05-14 10:33:27');
INSERT INTO `students` VALUES ('22345348', 'A1405255XX', NULL, NULL, NULL, 'Diana Yuniar', 'Laki-Laki', 'Jl. Rumah Sakit No. 8, Bau-Bau, BA 99557', '87861540931', 'Manajemen Informatika', '22345348@uts.ac.id', '2025', '2025-05-14 10:33:27', '2025-05-14 10:33:27');
INSERT INTO `students` VALUES ('22639298', 'A140525Hso', NULL, NULL, NULL, 'Ilyas Purwanti, M.M.', 'Laki-Laki', 'Gg. Merdeka No. 389, Sukabumi, SR 77529', '87861540933', 'Manajemen Informatika', '22639298@uts.ac.id', '2025', '2025-05-14 10:33:27', '2025-05-14 10:33:27');
INSERT INTO `students` VALUES ('22482647', 'A140525RnD', NULL, NULL, NULL, 'Vicky Farida', 'Laki-Laki', 'Gg. Kendalsari No. 7, Sungai Penuh, KB 57885', '87861540936', 'Manajemen Informatika', '22482647@uts.ac.id', '2025', '2025-05-14 10:33:28', '2025-05-14 10:33:28');
INSERT INTO `students` VALUES ('22759936', 'A140525d7F', NULL, NULL, NULL, 'Tgk. Yulia Susanti', 'Perempuan', 'Gang Sentot Alibasa No. 510, Salatiga, JB 77406', '87861540937', 'Manajemen Informatika', '22759936@uts.ac.id', '2025', '2025-05-14 10:33:28', '2025-05-14 10:33:28');
INSERT INTO `students` VALUES ('22704261', 'A140525LrM', NULL, NULL, NULL, 'Sutan Kenari Nababan', 'Perempuan', 'Jl. Rumah Sakit No. 9, Sungai Penuh, Sulawesi Barat 06821', '87861540939', 'Manajemen Informatika', '22704261@uts.ac.id', '2025', '2025-05-14 10:33:28', '2025-05-14 10:33:28');
INSERT INTO `students` VALUES ('22128336', 'A140525qyw', NULL, NULL, NULL, 'Lukita Oktaviani', 'Perempuan', 'Jl. Ciumbuleuit No. 325, Bekasi, BB 44052', '87861540943', 'Manajemen Informatika', '22128336@uts.ac.id', '2025', '2025-05-14 10:33:28', '2025-05-14 10:33:28');
INSERT INTO `students` VALUES ('22181278', 'A1405250TR', NULL, NULL, NULL, 'R.A. Ciaobella Hariyah, M.Ak', 'Laki-Laki', 'Jalan Kendalsari No. 3, Tasikmalaya, Gorontalo 35963', '87861540944', 'Manajemen Informatika', '22181278@uts.ac.id', '2025', '2025-05-14 10:33:29', '2025-05-14 10:33:29');
INSERT INTO `students` VALUES ('22282338', 'A140525H7X', NULL, NULL, NULL, 'Paiman Lazuardi', 'Perempuan', 'Gang BKR No. 2, Subulussalam, Papua Barat 43276', '87861540945', 'Manajemen Informatika', '22282338@uts.ac.id', '2025', '2025-05-14 10:33:29', '2025-05-14 10:33:29');
INSERT INTO `students` VALUES ('22045357', 'A14052539r', NULL, NULL, NULL, 'Gawati Pangestu', 'Perempuan', 'Gg. Rajiman No. 40, Yogyakarta, KR 58162', '87861540949', 'Manajemen Informatika', '22045357@uts.ac.id', '2025', '2025-05-14 10:33:29', '2025-05-14 10:33:29');
INSERT INTO `students` VALUES ('22598725', 'A1405255Q3', NULL, NULL, NULL, 'Endah Laksita, S.Sos', 'Perempuan', 'Gg. Kiaracondong No. 40, Kediri, JT 81706', '87861540951', 'Manajemen Informatika', '22598725@uts.ac.id', '2025', '2025-05-14 10:33:30', '2025-05-14 10:33:30');
INSERT INTO `students` VALUES ('22090067', 'A140525KbC', NULL, NULL, NULL, 'Dalima Mardhiyah', 'Perempuan', 'Jalan Moch. Toha No. 767, Probolinggo, BB 27381', '87861540953', 'Manajemen Informatika', '22090067@uts.ac.id', '2025', '2025-05-14 10:33:30', '2025-05-14 10:33:30');
INSERT INTO `students` VALUES ('22656539', 'A140525ST2', NULL, NULL, NULL, 'Jefri Pradipta', 'Perempuan', 'Jl. Otto Iskandardinata No. 493, Metro, Jawa Barat 93741', '87861540954', 'Manajemen Informatika', '22656539@uts.ac.id', '2025', '2025-05-14 10:33:30', '2025-05-14 10:33:30');
INSERT INTO `students` VALUES ('22913585', 'A1405257TU', NULL, NULL, NULL, 'Niyaga Zulaika', 'Perempuan', 'Gang Ahmad Dahlan No. 63, Lhokseumawe, Nusa Tenggara Barat 70163', '87861540955', 'Manajemen Informatika', '22913585@uts.ac.id', '2025', '2025-05-14 10:33:30', '2025-05-14 10:33:30');
INSERT INTO `students` VALUES ('22802726', 'A140525nd6', NULL, NULL, NULL, 'Puti Karimah Pratiwi', 'Perempuan', 'Gg. Jamika No. 853, Tangerang, Gorontalo 32896', '87861540959', 'Manajemen Informatika', '22802726@uts.ac.id', '2025', '2025-05-14 10:33:31', '2025-05-14 10:33:31');
INSERT INTO `students` VALUES ('22568817', 'A140525h5O', NULL, NULL, NULL, 'Rachel Hardiansyah, S.Psi', 'Perempuan', 'Jl. Ir. H. Djuanda No. 50, Bau-Bau, SU 41309', '87861540961', 'Manajemen Informatika', '22568817@uts.ac.id', '2025', '2025-05-14 10:33:31', '2025-05-14 10:33:31');
INSERT INTO `students` VALUES ('22484769', 'A140525aAp', NULL, NULL, NULL, 'Kardi Hutapea', 'Laki-Laki', 'Gang Dipenogoro No. 685, Singkawang, Aceh 46903', '87861540962', 'Manajemen Informatika', '22484769@uts.ac.id', '2025', '2025-05-14 10:33:31', '2025-05-14 10:33:31');
INSERT INTO `students` VALUES ('22429098', 'A140525ajU', NULL, NULL, NULL, 'Mulyanto Nashiruddin', 'Perempuan', 'Gang Kapten Muslihat No. 49, Mataram, Gorontalo 10584', '87861540963', 'Manajemen Informatika', '22429098@uts.ac.id', '2025', '2025-05-14 10:33:31', '2025-05-14 10:33:31');
INSERT INTO `students` VALUES ('22828198', 'A140525h6z', NULL, NULL, NULL, 'Drs. Sabrina Firgantoro', 'Perempuan', 'Jalan Moch. Toha No. 12, Medan, SU 87777', '87861540964', 'Manajemen Informatika', '22828198@uts.ac.id', '2025', '2025-05-14 10:33:31', '2025-05-14 10:33:31');
INSERT INTO `students` VALUES ('22762625', 'A1405255h1', NULL, NULL, NULL, 'Latif Tampubolon', 'Perempuan', 'Jalan Gedebage Selatan No. 24, Banjarbaru, Lampung 23270', '87861540965', 'Manajemen Informatika', '22762625@uts.ac.id', '2025', '2025-05-14 10:33:31', '2025-05-14 10:33:31');
INSERT INTO `students` VALUES ('22401848', 'A140525G0d', NULL, NULL, NULL, 'Darmana Simanjuntak', 'Laki-Laki', 'Gg. Surapati No. 50, Singkawang, Maluku Utara 95449', '87861540967', 'Manajemen Informatika', '22401848@uts.ac.id', '2025', '2025-05-14 10:33:32', '2025-05-14 10:33:32');
INSERT INTO `students` VALUES ('22281524', 'A140525apg', NULL, NULL, NULL, 'Sakti Riyanti', 'Laki-Laki', 'Jl. Rumah Sakit No. 385, Kota Administrasi Jakarta Selatan, KS 41001', '87861540969', 'Manajemen Informatika', '22281524@uts.ac.id', '2025', '2025-05-14 10:33:32', '2025-05-14 10:33:32');
INSERT INTO `students` VALUES ('22573059', 'A140525SzR', NULL, NULL, NULL, 'Mursita Salahudin', 'Laki-Laki', 'Jl. M.T Haryono No. 6, Pontianak, BB 29251', '87861540971', 'Manajemen Informatika', '22573059@uts.ac.id', '2025', '2025-05-14 10:33:32', '2025-05-14 10:33:32');
INSERT INTO `students` VALUES ('22429634', 'A140525O2w', NULL, NULL, NULL, 'Melinda Zulaika', 'Perempuan', 'Jalan Tebet Barat Dalam No. 55, Medan, Bengkulu 78651', '87861540975', 'Manajemen Informatika', '22429634@uts.ac.id', '2025', '2025-05-14 10:33:33', '2025-05-14 10:33:33');
INSERT INTO `students` VALUES ('22188080', 'A140525Hqu', NULL, NULL, NULL, 'T. Dartono Lailasari', 'Laki-Laki', 'Gg. Rajawali Barat No. 563, Magelang, YO 99883', '87861540977', 'Manajemen Informatika', '22188080@uts.ac.id', '2025', '2025-05-14 10:33:33', '2025-05-14 10:33:33');
INSERT INTO `students` VALUES ('22655576', 'A1405250sW', NULL, NULL, NULL, 'Rahman Adriansyah', 'Perempuan', 'Jalan Asia Afrika No. 4, Palangkaraya, Bali 58742', '87861540980', 'Manajemen Informatika', '22655576@uts.ac.id', '2025', '2025-05-14 10:33:33', '2025-05-14 10:33:33');
INSERT INTO `students` VALUES ('22333582', 'A1405258jX', NULL, NULL, NULL, 'T. Tomi Uwais, M.TI.', 'Laki-Laki', 'Jl. Siliwangi No. 0, Padang Sidempuan, Sumatera Selatan 71446', '87861540981', 'Manajemen Informatika', '22333582@uts.ac.id', '2025', '2025-05-14 10:33:34', '2025-05-14 10:33:34');
INSERT INTO `students` VALUES ('22062236', 'A140525kWt', NULL, NULL, NULL, 'Mursita Maryadi', 'Laki-Laki', 'Gg. Moch. Ramdan No. 449, Sawahlunto, Sumatera Utara 36871', '87861540983', 'Manajemen Informatika', '22062236@uts.ac.id', '2025', '2025-05-14 10:33:34', '2025-05-14 10:33:34');
INSERT INTO `students` VALUES ('22257184', 'A140525CrY', NULL, NULL, NULL, 'Vicky Sihotang', 'Perempuan', 'Gg. Rawamangun No. 91, Tangerang Selatan, Riau 77177', '87861540984', 'Manajemen Informatika', '22257184@uts.ac.id', '2025', '2025-05-14 10:33:34', '2025-05-14 10:33:34');
INSERT INTO `students` VALUES ('22939201', 'A140525kFy', NULL, NULL, NULL, 'Cut Tari Usada', 'Laki-Laki', 'Gang Dipatiukur No. 017, Kupang, Riau 13999', '87861540985', 'Manajemen Informatika', '22939201@uts.ac.id', '2025', '2025-05-14 10:33:34', '2025-05-14 10:33:34');
INSERT INTO `students` VALUES ('22500893', 'A140525E81', NULL, NULL, NULL, 'Artawan Nugroho', 'Perempuan', 'Jl. Rawamangun No. 017, Sibolga, MA 03003', '87861540986', 'Manajemen Informatika', '22500893@uts.ac.id', '2025', '2025-05-14 10:33:34', '2025-05-14 10:33:34');
INSERT INTO `students` VALUES ('22176637', 'A140525RUc', NULL, NULL, NULL, 'Banawa Salahudin, S.Pt', 'Laki-Laki', 'Gg. Ir. H. Djuanda No. 43, Padang, RI 53234', '87861540988', 'Manajemen Informatika', '22176637@uts.ac.id', '2025', '2025-05-14 10:33:35', '2025-05-14 10:33:35');
INSERT INTO `students` VALUES ('22544417', 'A1405256MI', NULL, NULL, NULL, 'Drs. Ade Wijaya, S.E.', 'Laki-Laki', 'Jalan Astana Anyar No. 913, Bitung, Kepulauan Bangka Belitung 18151', '87861540989', 'Manajemen Informatika', '22544417@uts.ac.id', '2025', '2025-05-14 10:33:35', '2025-05-14 10:33:35');
INSERT INTO `students` VALUES ('22109992', 'A140525p3q', NULL, NULL, NULL, 'Siska Sihombing', 'Laki-Laki', 'Gang Abdul Muis No. 365, Pematangsiantar, NB 63626', '87861540990', 'Manajemen Informatika', '22109992@uts.ac.id', '2025', '2025-05-14 10:33:35', '2025-05-14 10:33:35');
INSERT INTO `students` VALUES ('22919049', 'A140525DHD', NULL, NULL, NULL, 'Dimaz Jailani', 'Perempuan', 'Gang Tebet Barat Dalam No. 7, Tidore Kepulauan, LA 20946', '87861540992', 'Manajemen Informatika', '22919049@uts.ac.id', '2025', '2025-05-14 10:33:35', '2025-05-14 10:33:35');
INSERT INTO `students` VALUES ('22920472', 'A1405252AS', NULL, NULL, NULL, 'Cengkir Waskita', 'Perempuan', 'Gang Tebet Barat Dalam No. 0, Pariaman, Jawa Tengah 34164', '87861540993', 'Manajemen Informatika', '22920472@uts.ac.id', '2025', '2025-05-14 10:33:35', '2025-05-14 10:33:35');
INSERT INTO `students` VALUES ('22636370', 'A140525DpM', NULL, NULL, NULL, 'Laila Hastuti', 'Perempuan', 'Gg. Ciwastra No. 168, Ambon, SR 80350', '87861540996', 'Manajemen Informatika', '22636370@uts.ac.id', '2025', '2025-05-14 10:33:36', '2025-05-14 10:33:36');
INSERT INTO `students` VALUES ('22671070', 'A140525Gd0', NULL, NULL, NULL, 'Damar Padmasari, S.Farm', 'Perempuan', 'Jalan Waringin No. 265, Serang, Kepulauan Bangka Belitung 74624', '87861540999', 'Manajemen Informatika', '22671070@uts.ac.id', '2025', '2025-05-14 10:33:36', '2025-05-14 10:33:36');
INSERT INTO `students` VALUES ('22397664', 'A1405256O2', NULL, NULL, NULL, 'Uda Saefullah, S.Farm', 'Laki-Laki', 'Jalan Kapten Muslihat No. 651, Bandar Lampung, Sulawesi Utara 89347', '87861541002', 'Manajemen Informatika', '22397664@uts.ac.id', '2025', '2025-05-14 10:33:36', '2025-05-14 10:33:36');
INSERT INTO `students` VALUES ('22085307', 'A14052576T', NULL, NULL, NULL, 'R. Laila Manullang, S.Sos', 'Laki-Laki', 'Jl. S. Parman No. 1, Bandung, RI 03712', '87861541003', 'Manajemen Informatika', '22085307@uts.ac.id', '2025', '2025-05-14 10:33:37', '2025-05-14 10:33:37');
INSERT INTO `students` VALUES ('22751624', 'A140525Hhx', NULL, NULL, NULL, 'drg. Maimunah Permata, S.Gz', 'Laki-Laki', 'Jl. Asia Afrika No. 499, Palu, PA 50638', '87861541006', 'Manajemen Informatika', '22751624@uts.ac.id', '2025', '2025-05-14 10:33:37', '2025-05-14 10:33:37');
INSERT INTO `students` VALUES ('22940168', 'A140525Tzv', NULL, NULL, NULL, 'R.A. Dinda Mahendra', 'Perempuan', 'Jalan Suniaraja No. 9, Bontang, Sumatera Selatan 72350', '87861541007', 'Manajemen Informatika', '22940168@uts.ac.id', '2025', '2025-05-14 10:33:37', '2025-05-14 10:33:37');
INSERT INTO `students` VALUES ('22961106', 'A140525LL1', NULL, NULL, NULL, 'Ihsan Mandala', 'Laki-Laki', 'Gang Sadang Serang No. 5, Pagaralam, Kalimantan Selatan 38504', '87861541008', 'Manajemen Informatika', '22961106@uts.ac.id', '2025', '2025-05-14 10:33:37', '2025-05-14 10:33:37');
INSERT INTO `students` VALUES ('22024976', 'A140525L3T', NULL, NULL, NULL, 'Paiman Firmansyah', 'Perempuan', 'Gg. Dipenogoro No. 94, Magelang, Maluku 40178', '87861541009', 'Manajemen Informatika', '22024976@uts.ac.id', '2025', '2025-05-14 10:33:37', '2025-05-14 10:33:37');
INSERT INTO `students` VALUES ('22047432', 'A140525e5d', NULL, NULL, NULL, 'Puti Jane Prasetyo', 'Perempuan', 'Jalan Asia Afrika No. 40, Pasuruan, Nusa Tenggara Timur 61892', '87861541010', 'Manajemen Informatika', '22047432@uts.ac.id', '2025', '2025-05-14 10:33:37', '2025-05-14 10:33:37');
INSERT INTO `students` VALUES ('22800395', 'A140525LVf', NULL, NULL, NULL, 'drg. Ghani Pranowo, S.Sos', 'Laki-Laki', 'Jalan Wonoayu No. 90, Dumai, Kalimantan Utara 23935', '87861541012', 'Manajemen Informatika', '22800395@uts.ac.id', '2025', '2025-05-14 10:33:38', '2025-05-14 10:33:38');
INSERT INTO `students` VALUES ('22618630', 'A140525cfY', NULL, NULL, NULL, 'Keisha Nurdiyanti, M.TI.', 'Perempuan', 'Gang Wonoayu No. 948, Tarakan, SB 35765', '87861541013', 'Manajemen Informatika', '22618630@uts.ac.id', '2025', '2025-05-14 10:33:38', '2025-05-14 10:33:38');
INSERT INTO `students` VALUES ('22817565', 'A140525cmc', NULL, NULL, NULL, 'Yosef Mandala', 'Perempuan', 'Gg. Cempaka No. 6, Palopo, Aceh 96006', '87861541014', 'Manajemen Informatika', '22817565@uts.ac.id', '2025', '2025-05-14 10:33:38', '2025-05-14 10:33:38');
INSERT INTO `students` VALUES ('22711341', 'A140525EUd', NULL, NULL, NULL, 'Dt. Laksana Laksmiwati, M.Pd', 'Perempuan', 'Jalan PHH. Mustofa No. 16, Tarakan, AC 19529', '87861541015', 'Manajemen Informatika', '22711341@uts.ac.id', '2025', '2025-05-14 10:33:38', '2025-05-14 10:33:38');
INSERT INTO `students` VALUES ('22086599', 'A140525JF6', NULL, NULL, NULL, 'T. Hardi Pradana, S.Gz', 'Perempuan', 'Jl. Stasiun Wonokromo No. 16, Surakarta, Kepulauan Riau 43769', '87861540871', 'Manajemen Informatika', '22086599@uts.ac.id', '2025', '2025-05-14 10:34:21', '2025-05-14 10:34:21');
INSERT INTO `students` VALUES ('22073584', 'A140525E6b', NULL, NULL, NULL, 'Gilda Siregar, S.Ked', 'Laki-Laki', 'Gang Cikutra Timur No. 06, Cimahi, Sulawesi Selatan 80937', '87861540872', 'Manajemen Informatika', '22073584@uts.ac.id', '2025', '2025-05-14 10:34:21', '2025-05-14 10:34:21');
INSERT INTO `students` VALUES ('22307948', 'A140525AdR', NULL, NULL, NULL, 'Gangsar Nuraini', 'Laki-Laki', 'Gg. Surapati No. 6, Bima, Kalimantan Selatan 06574', '87861540873', 'Manajemen Informatika', '22307948@uts.ac.id', '2025', '2025-05-14 10:34:21', '2025-05-14 10:34:21');
INSERT INTO `students` VALUES ('22668486', 'A1405258rZ', NULL, NULL, NULL, 'Endra Tamba', 'Laki-Laki', 'Jalan Asia Afrika No. 571, Kota Administrasi Jakarta Selatan, MU 97617', '87861540876', 'Manajemen Informatika', '22668486@uts.ac.id', '2025', '2025-05-14 10:34:21', '2025-05-14 10:34:21');
INSERT INTO `students` VALUES ('22889090', 'A140525ExH', NULL, NULL, NULL, 'Natalia Yulianti', 'Perempuan', 'Gg. Kapten Muslihat No. 5, Denpasar, Kalimantan Selatan 99515', '87861540877', 'Manajemen Informatika', '22889090@uts.ac.id', '2025', '2025-05-14 10:34:21', '2025-05-14 10:34:21');
INSERT INTO `students` VALUES ('22918832', 'A140525V5m', NULL, NULL, NULL, 'Hadi Pradipta', 'Laki-Laki', 'Gang Kutisari Selatan No. 87, Banjarbaru, JK 58061', '87861540880', 'Manajemen Informatika', '22918832@uts.ac.id', '2025', '2025-05-14 10:34:21', '2025-05-14 10:34:21');
INSERT INTO `students` VALUES ('22370477', 'A140525AX8', NULL, NULL, NULL, 'R.A. Ifa Jailani, M.Farm', 'Laki-Laki', 'Jalan Tebet Barat Dalam No. 426, Banjar, RI 98117', '87861540886', 'Manajemen Informatika', '22370477@uts.ac.id', '2025', '2025-05-14 10:34:22', '2025-05-14 10:34:22');
INSERT INTO `students` VALUES ('22963010', 'A1405256Jt', NULL, NULL, NULL, 'Violet Rajasa, S.Kom', 'Laki-Laki', 'Jl. Rungkut Industri No. 7, Tangerang Selatan, YO 63447', '87861540888', 'Manajemen Informatika', '22963010@uts.ac.id', '2025', '2025-05-14 10:34:22', '2025-05-14 10:34:22');
INSERT INTO `students` VALUES ('22783293', 'A140525Kkt', NULL, NULL, NULL, 'R.A. Bella Kurniawan', 'Laki-Laki', 'Jalan Sadang Serang No. 974, Serang, JK 08426', '87861540890', 'Manajemen Informatika', '22783293@uts.ac.id', '2025', '2025-05-14 10:34:22', '2025-05-14 10:34:22');
INSERT INTO `students` VALUES ('22316829', 'A140525nYq', NULL, NULL, NULL, 'Vanya Pratiwi', 'Perempuan', 'Jalan R.E Martadinata No. 95, Semarang, DKI Jakarta 25165', '87861540893', 'Manajemen Informatika', '22316829@uts.ac.id', '2025', '2025-05-14 10:34:22', '2025-05-14 10:34:22');
INSERT INTO `students` VALUES ('22961844', 'A1405256sz', NULL, NULL, NULL, 'R.M. Martani Andriani, S.Gz', 'Laki-Laki', 'Jalan Cihampelas No. 1, Sukabumi, SU 45977', '87861540894', 'Manajemen Informatika', '22961844@uts.ac.id', '2025', '2025-05-14 10:34:22', '2025-05-14 10:34:22');
INSERT INTO `students` VALUES ('22738216', 'A140525hJm', NULL, NULL, NULL, 'Titin Halim', 'Perempuan', 'Jalan Ir. H. Djuanda No. 030, Tarakan, Jawa Barat 34978', '87861540896', 'Manajemen Informatika', '22738216@uts.ac.id', '2025', '2025-05-14 10:34:22', '2025-05-14 10:34:22');
INSERT INTO `students` VALUES ('22677315', 'A140525PKO', NULL, NULL, NULL, 'Gangsa Safitri', 'Perempuan', 'Jl. H.J Maemunah No. 1, Langsa, SU 66762', '87861540902', 'Manajemen Informatika', '22677315@uts.ac.id', '2025', '2025-05-14 10:34:23', '2025-05-14 10:34:23');
INSERT INTO `students` VALUES ('22059788', 'A140525bHK', NULL, NULL, NULL, 'Tugiman Nasyiah', 'Perempuan', 'Jalan Rajawali Barat No. 136, Kupang, NT 06909', '87861540908', 'Manajemen Informatika', '22059788@uts.ac.id', '2025', '2025-05-14 10:34:24', '2025-05-14 10:34:24');
INSERT INTO `students` VALUES ('22745015', 'A140525HSV', NULL, NULL, NULL, 'Daliman Budiyanto', 'Laki-Laki', 'Gg. Rajawali Timur No. 86, Palembang, JK 43058', '87861540914', 'Manajemen Informatika', '22745015@uts.ac.id', '2025', '2025-05-14 10:34:25', '2025-05-14 10:34:25');
INSERT INTO `students` VALUES ('22311536', 'A140525Hz5', NULL, NULL, NULL, 'Mariadi Prasasta', 'Laki-Laki', 'Jalan Gegerkalong Hilir No. 52, Kota Administrasi Jakarta Selatan, Kalimantan Utara 21137', '87861540915', 'Manajemen Informatika', '22311536@uts.ac.id', '2025', '2025-05-14 10:34:25', '2025-05-14 10:34:25');
INSERT INTO `students` VALUES ('22967789', 'A140525d84', NULL, NULL, NULL, 'Queen Pradana', 'Perempuan', 'Gg. Wonoayu No. 45, Jambi, Gorontalo 41379', '87861540919', 'Manajemen Informatika', '22967789@uts.ac.id', '2025', '2025-05-14 10:34:25', '2025-05-14 10:34:25');
INSERT INTO `students` VALUES ('22783008', 'A140525Epa', NULL, NULL, NULL, 'Drs. Usyi Pratama', 'Laki-Laki', 'Jl. Cempaka No. 67, Samarinda, Kalimantan Tengah 95605', '87861540923', 'Manajemen Informatika', '22783008@uts.ac.id', '2025', '2025-05-14 10:34:26', '2025-05-14 10:34:26');
INSERT INTO `students` VALUES ('22899076', 'A140525e2P', NULL, NULL, NULL, 'Warsa Prasasta', 'Perempuan', 'Jalan Kutai No. 9, Tanjungbalai, Papua Barat 60914', '87861540925', 'Manajemen Informatika', '22899076@uts.ac.id', '2025', '2025-05-14 10:34:26', '2025-05-14 10:34:26');
INSERT INTO `students` VALUES ('22330909', 'A14052566y', NULL, NULL, NULL, 'Ivan Widodo', 'Laki-Laki', 'Gg. Rawamangun No. 04, Ternate, Nusa Tenggara Timur 35206', '87861540926', 'Manajemen Informatika', '22330909@uts.ac.id', '2025', '2025-05-14 10:34:26', '2025-05-14 10:34:26');
INSERT INTO `students` VALUES ('22709330', 'A1405254Xm', NULL, NULL, NULL, 'Bella Lazuardi', 'Laki-Laki', 'Jalan Dr. Djunjunan No. 779, Solok, KI 71845', '87861540932', 'Manajemen Informatika', '22709330@uts.ac.id', '2025', '2025-05-14 10:34:27', '2025-05-14 10:34:27');
INSERT INTO `students` VALUES ('22826700', 'A140525dmT', NULL, NULL, NULL, 'Ophelia Wibowo', 'Laki-Laki', 'Gang Kiaracondong No. 4, Bengkulu, SB 61401', '87861540934', 'Manajemen Informatika', '22826700@uts.ac.id', '2025', '2025-05-14 10:34:27', '2025-05-14 10:34:27');
INSERT INTO `students` VALUES ('22457912', 'A140525hAj', NULL, NULL, NULL, 'Hj. Fitria Gunawan, S.Gz', 'Laki-Laki', 'Gang Suniaraja No. 319, Madiun, Maluku 53817', '87861540935', 'Manajemen Informatika', '22457912@uts.ac.id', '2025', '2025-05-14 10:34:27', '2025-05-14 10:34:27');
INSERT INTO `students` VALUES ('22183104', 'A140525kfq', NULL, NULL, NULL, 'R. Lasmanto Mahendra, S.Sos', 'Perempuan', 'Gang PHH. Mustofa No. 9, Sibolga, ST 79747', '87861540938', 'Manajemen Informatika', '22183104@uts.ac.id', '2025', '2025-05-14 10:34:28', '2025-05-14 10:34:28');
INSERT INTO `students` VALUES ('22325613', 'A140525DKz', NULL, NULL, NULL, 'Tgk. Perkasa Manullang, S.Gz', 'Perempuan', 'Gg. Asia Afrika No. 7, Pematangsiantar, Papua Barat 32788', '87861540940', 'Manajemen Informatika', '22325613@uts.ac.id', '2025', '2025-05-14 10:34:28', '2025-05-14 10:34:28');
INSERT INTO `students` VALUES ('22335705', 'A1405253EI', NULL, NULL, NULL, 'Pranawa Firmansyah', 'Laki-Laki', 'Jl. Ahmad Dahlan No. 8, Pagaralam, Jawa Barat 84736', '87861540941', 'Manajemen Informatika', '22335705@uts.ac.id', '2025', '2025-05-14 10:34:28', '2025-05-14 10:34:28');
INSERT INTO `students` VALUES ('22755257', 'A140525acM', NULL, NULL, NULL, 'Umar Maryati', 'Laki-Laki', 'Jalan Rungkut Industri No. 480, Bandar Lampung, Kalimantan Selatan 50049', '87861540942', 'Manajemen Informatika', '22755257@uts.ac.id', '2025', '2025-05-14 10:34:28', '2025-05-14 10:34:28');
INSERT INTO `students` VALUES ('22058319', 'A1405250ew', NULL, NULL, NULL, 'dr. Harja Rajasa, M.TI.', 'Perempuan', 'Jalan Cikutra Timur No. 0, Tebingtinggi, ST 04633', '87861540946', 'Manajemen Informatika', '22058319@uts.ac.id', '2025', '2025-05-14 10:34:29', '2025-05-14 10:34:29');
INSERT INTO `students` VALUES ('22958847', 'A1405253Zw', NULL, NULL, NULL, 'Kemal Dabukke, S.Ked', 'Perempuan', 'Gang Cihampelas No. 9, Banjarmasin, SU 62557', '87861540947', 'Manajemen Informatika', '22958847@uts.ac.id', '2025', '2025-05-14 10:34:29', '2025-05-14 10:34:29');
INSERT INTO `students` VALUES ('22188725', 'A140525J7u', NULL, NULL, NULL, 'Daru Hutagalung', 'Perempuan', 'Gg. Dipenogoro No. 267, Surakarta, Jawa Tengah 71251', '87861540948', 'Manajemen Informatika', '22188725@uts.ac.id', '2025', '2025-05-14 10:34:29', '2025-05-14 10:34:29');
INSERT INTO `students` VALUES ('22353904', 'A140525dFx', NULL, NULL, NULL, 'Ir. Humaira Natsir, S.Ked', 'Laki-Laki', 'Gg. Kutai No. 461, Ambon, Lampung 19658', '87861540950', 'Manajemen Informatika', '22353904@uts.ac.id', '2025', '2025-05-14 10:34:30', '2025-05-14 10:34:30');
INSERT INTO `students` VALUES ('22749319', 'A140525TQG', NULL, NULL, NULL, 'Umi Pradipta, S.IP', 'Laki-Laki', 'Gg. Kutisari Selatan No. 72, Padang, SU 23775', '87861540952', 'Manajemen Informatika', '22749319@uts.ac.id', '2025', '2025-05-14 10:34:30', '2025-05-14 10:34:30');
INSERT INTO `students` VALUES ('22803851', 'A140525mUM', NULL, NULL, NULL, 'Dr. Uli Sirait, S.Gz', 'Laki-Laki', 'Jl. Ronggowarsito No. 328, Tangerang Selatan, AC 85790', '87861540956', 'Manajemen Informatika', '22803851@uts.ac.id', '2025', '2025-05-14 10:34:30', '2025-05-14 10:34:30');
INSERT INTO `students` VALUES ('22058071', 'A140525N0V', NULL, NULL, NULL, 'Caturangga Suryono', 'Laki-Laki', 'Gg. Merdeka No. 2, Bau-Bau, Nusa Tenggara Barat 95011', '87861540957', 'Manajemen Informatika', '22058071@uts.ac.id', '2025', '2025-05-14 10:34:30', '2025-05-14 10:34:30');
INSERT INTO `students` VALUES ('22080450', 'A14052507y', NULL, NULL, NULL, 'Tgk. Hartaka Maryadi, S.Pt', 'Laki-Laki', 'Jl. Gardujati No. 1, Pekanbaru, Sumatera Utara 92517', '87861540958', 'Manajemen Informatika', '22080450@uts.ac.id', '2025', '2025-05-14 10:34:31', '2025-05-14 10:34:31');
INSERT INTO `students` VALUES ('22878882', 'A1405253rC', NULL, NULL, NULL, 'Julia Iswahyudi', 'Perempuan', 'Jalan Soekarno Hatta No. 0, Sibolga, Kalimantan Utara 50219', '87861540960', 'Manajemen Informatika', '22878882@uts.ac.id', '2025', '2025-05-14 10:34:31', '2025-05-14 10:34:31');
INSERT INTO `students` VALUES ('22095556', 'A1405258Pg', NULL, NULL, NULL, 'Harto Yuliarti', 'Laki-Laki', 'Gang Rajiman No. 3, Surakarta, MA 92970', '87861540966', 'Manajemen Informatika', '22095556@uts.ac.id', '2025', '2025-05-14 10:34:32', '2025-05-14 10:34:32');
INSERT INTO `students` VALUES ('22899827', 'A1405253zJ', NULL, NULL, NULL, 'Lasmanto Yolanda', 'Laki-Laki', 'Jl. R.E Martadinata No. 727, Pagaralam, Jawa Timur 91472', '87861540968', 'Manajemen Informatika', '22899827@uts.ac.id', '2025', '2025-05-14 10:34:32', '2025-05-14 10:34:32');
INSERT INTO `students` VALUES ('22060295', 'A1405250SJ', NULL, NULL, NULL, 'Ir. Maya Halim, S.E.I', 'Perempuan', 'Gg. Cikutra Barat No. 6, Bekasi, Lampung 25733', '87861540970', 'Manajemen Informatika', '22060295@uts.ac.id', '2025', '2025-05-14 10:34:32', '2025-05-14 10:34:32');
INSERT INTO `students` VALUES ('22985999', 'A1405250aS', NULL, NULL, NULL, 'Indra Susanti', 'Perempuan', 'Gg. Pasteur No. 4, Gorontalo, YO 00261', '87861540972', 'Manajemen Informatika', '22985999@uts.ac.id', '2025', '2025-05-14 10:34:33', '2025-05-14 10:34:33');
INSERT INTO `students` VALUES ('22909848', 'A1405253C1', NULL, NULL, NULL, 'Mala Sihombing', 'Laki-Laki', 'Gg. Rajawali Barat No. 02, Kota Administrasi Jakarta Pusat, Jambi 43402', '87861540973', 'Manajemen Informatika', '22909848@uts.ac.id', '2025', '2025-05-14 10:34:33', '2025-05-14 10:34:33');
INSERT INTO `students` VALUES ('22031025', 'A140525H1n', NULL, NULL, NULL, 'Pia Nuraini', 'Laki-Laki', 'Jl. Gardujati No. 597, Tidore Kepulauan, KU 78901', '87861540974', 'Manajemen Informatika', '22031025@uts.ac.id', '2025', '2025-05-14 10:34:33', '2025-05-14 10:34:33');
INSERT INTO `students` VALUES ('22024412', 'A140525DJg', NULL, NULL, NULL, 'dr. Cengkal Aryani', 'Laki-Laki', 'Jalan Gardujati No. 0, Kota Administrasi Jakarta Utara, ST 86784', '87861540976', 'Manajemen Informatika', '22024412@uts.ac.id', '2025', '2025-05-14 10:34:33', '2025-05-14 10:34:33');
INSERT INTO `students` VALUES ('22808330', 'A140525EwX', NULL, NULL, NULL, 'Jane Safitri', 'Laki-Laki', 'Gang Cihampelas No. 787, Batu, KI 27446', '87861540978', 'Manajemen Informatika', '22808330@uts.ac.id', '2025', '2025-05-14 10:34:33', '2025-05-14 10:34:33');
INSERT INTO `students` VALUES ('22158913', 'A140525gua', NULL, NULL, NULL, 'KH. Irwan Wijaya, S.T.', 'Laki-Laki', 'Gang Indragiri No. 6, Kota Administrasi Jakarta Selatan, SR 10286', '87861540979', 'Manajemen Informatika', '22158913@uts.ac.id', '2025', '2025-05-14 10:34:34', '2025-05-14 10:34:34');
INSERT INTO `students` VALUES ('22344898', 'A140525FHq', NULL, NULL, NULL, 'Eva Napitupulu, M.Ak', 'Laki-Laki', 'Gg. Jend. A. Yani No. 28, Denpasar, LA 32708', '87861540982', 'Manajemen Informatika', '22344898@uts.ac.id', '2025', '2025-05-14 10:34:34', '2025-05-14 10:34:34');
INSERT INTO `students` VALUES ('22955995', 'A1405250uv', NULL, NULL, NULL, 'R.M. Teddy Prakasa', 'Perempuan', 'Gang Rajiman No. 4, Kediri, Papua 73955', '87861540987', 'Manajemen Informatika', '22955995@uts.ac.id', '2025', '2025-05-14 10:34:35', '2025-05-14 10:34:35');
INSERT INTO `students` VALUES ('22239818', 'A140525umB', NULL, NULL, NULL, 'Dina Sitompul', 'Laki-Laki', 'Jl. Cikapayang No. 703, Banda Aceh, KI 71495', '87861540991', 'Manajemen Informatika', '22239818@uts.ac.id', '2025', '2025-05-14 10:34:35', '2025-05-14 10:34:35');
INSERT INTO `students` VALUES ('22580195', 'A1405250fp', NULL, NULL, NULL, 'Bajragin Zulkarnain', 'Perempuan', 'Gang Sadang Serang No. 20, Kota Administrasi Jakarta Utara, Papua Barat 44278', '87861540994', 'Manajemen Informatika', '22580195@uts.ac.id', '2025', '2025-05-14 10:34:35', '2025-05-14 10:34:35');
INSERT INTO `students` VALUES ('22898362', 'A140525DUF', NULL, NULL, NULL, 'Azalea Hardiansyah', 'Perempuan', 'Gg. Lembong No. 390, Semarang, SS 66180', '87861540995', 'Manajemen Informatika', '22898362@uts.ac.id', '2025', '2025-05-14 10:34:35', '2025-05-14 10:34:35');
INSERT INTO `students` VALUES ('22788743', 'A140525pXr', NULL, NULL, NULL, 'Jumadi Rajata', 'Laki-Laki', 'Jl. Cihampelas No. 607, Tangerang Selatan, AC 34131', '87861540997', 'Manajemen Informatika', '22788743@uts.ac.id', '2025', '2025-05-14 10:34:35', '2025-05-14 10:34:35');
INSERT INTO `students` VALUES ('22034909', 'A140525gtr', NULL, NULL, NULL, 'dr. Bajragin Nugroho', 'Perempuan', 'Jalan Gedebage Selatan No. 3, Salatiga, Sulawesi Utara 40542', '87861540998', 'Manajemen Informatika', '22034909@uts.ac.id', '2025', '2025-05-14 10:34:35', '2025-05-14 10:34:35');
INSERT INTO `students` VALUES ('22306083', 'A1405257VA', NULL, NULL, NULL, 'Ir. Cemplunk Pratama', 'Laki-Laki', 'Gg. Cihampelas No. 496, Padang, KR 50158', '87861541000', 'Manajemen Informatika', '22306083@uts.ac.id', '2025', '2025-05-14 10:34:36', '2025-05-14 10:34:36');
INSERT INTO `students` VALUES ('22364286', 'A1405259Pg', NULL, NULL, NULL, 'Almira Nuraini', 'Laki-Laki', 'Jalan Bangka Raya No. 6, Sawahlunto, JT 76050', '87861541001', 'Manajemen Informatika', '22364286@uts.ac.id', '2025', '2025-05-14 10:34:36', '2025-05-14 10:34:36');
INSERT INTO `students` VALUES ('22327953', 'A140525zru', NULL, NULL, NULL, 'dr. Jane Natsir', 'Perempuan', 'Gg. Medokan Ayu No. 227, Metro, Banten 07882', '87861541004', 'Manajemen Informatika', '22327953@uts.ac.id', '2025', '2025-05-14 10:34:36', '2025-05-14 10:34:36');
INSERT INTO `students` VALUES ('22369292', 'A140525hmq', NULL, NULL, NULL, 'Opan Simbolon', 'Perempuan', 'Jalan Lembong No. 94, Yogyakarta, Nusa Tenggara Barat 55182', '87861541005', 'Manajemen Informatika', '22369292@uts.ac.id', '2025', '2025-05-14 10:34:36', '2025-05-14 10:34:36');
INSERT INTO `students` VALUES ('22426251', 'A140525cvc', NULL, NULL, NULL, 'Drs. Limar Gunarto', 'Laki-Laki', 'Gang Rumah Sakit No. 8, Meulaboh, Bengkulu 98933', '87861541011', 'Manajemen Informatika', '22426251@uts.ac.id', '2025', '2025-05-14 10:34:37', '2025-05-14 10:34:37');
INSERT INTO `students` VALUES ('22938507', 'A140525jzy', NULL, NULL, NULL, 'Farah Wahyudin', 'Perempuan', 'Jalan Asia Afrika No. 93, Jayapura, Banten 33522', '87861541016', 'Manajemen Informatika', '22938507@uts.ac.id', '2025', '2025-05-14 10:34:38', '2025-05-14 10:34:38');
INSERT INTO `students` VALUES ('22634878', 'A140525bhN', NULL, NULL, NULL, 'Rahmi Ramadan', 'Laki-Laki', 'Gg. Gedebage Selatan No. 2, Depok, Gorontalo 67503', '87861541017', 'Manajemen Informatika', '22634878@uts.ac.id', '2025', '2025-05-14 10:34:38', '2025-05-14 10:34:38');

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
) ENGINE = InnoDB AUTO_INCREMENT = 205 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of submissions_proposal
-- ----------------------------
INSERT INTO `submissions_proposal` VALUES (5, '232015001', 'Implementasi Kebijakan Ekonomi Biru Untuk Mendukung Budidaya Udang Berkelanjutan  (Studi Kasus Pada Klaster Tambak Udang Pokdakan Cahaya Buin Baru Desa Buen Beru Kecamatan Buer  Kabupaten Sumbawa)', 'topik 2 tak ada', 'topik 3 tak ada', 'terima', '2025-04-27 23:46:24', '2025-04-27 23:46:24', 'terima', 'tolak', 'tolak');
INSERT INTO `submissions_proposal` VALUES (6, '232015033', 'IMPLEMENTASI KEBIJAKAN PEMANFAATAN SUMUR BOR SEBAGAI  UPAYA MENGATASI GAGAL PANEN  PADA AREAL PERTANIAN  DI KECAMATAN TALIWANG   KABUPATEN SUMBAWA BARAT', 'topik 2 tak ada', 'topik 3 tak ada', 'terima', '2025-04-27 23:46:24', '2025-04-27 23:46:24', 'terima', 'tolak', 'tolak');
INSERT INTO `submissions_proposal` VALUES (7, '232015036', 'PENGARUH BEBAN KERJA DAN LINGKUNGAN TERHADAP KINERJA PEGAWAI KELURAHAN ARAB KENANGAN KABUPATEN SUMBAWA BARAT', 'topik 2 tak ada', 'topik 3 tak ada', 'terima', '2025-04-27 23:46:24', '2025-04-27 23:46:24', 'terima', 'tolak', 'tolak');
INSERT INTO `submissions_proposal` VALUES (8, '232015034', 'IMPLEMENTASI KEBIJAKAN HIGIENE SANITASI PADA RUMAH POTONG HEWAN (RPH) TALIWANG KABUPATEN SUMBAWA BARAT SEBAGAI SYARAT PRODUKSI DAGING SEHAT', 'topik 2 tak ada', 'topik 3 tak ada', 'terima', '2025-04-27 23:46:24', '2025-04-27 23:46:24', 'terima', 'tolak', 'tolak');
INSERT INTO `submissions_proposal` VALUES (9, '232015048', 'Pengembangan Destinasi Pariwisata Berbasis Masyarakat (Community Based Tourism Destination) di Kecamatan Labuan Badas Kabupaten Sumbawa', 'topik 2 tak ada', 'topik 3 tak ada', 'terima', '2025-04-27 23:46:24', '2025-04-27 23:46:24', 'terima', 'tolak', 'tolak');
INSERT INTO `submissions_proposal` VALUES (10, '232015032', 'IMPLEMENTASI KEBIJAKAN PUBLIK PELAYANAN ADMINISTRASI TERPADU KECAMATAN (PATEN) PADA KANTOR CAMAT LAPE KABUPATEN SUMBAWA', 'topik 2 tak ada', 'topik 3 tak ada', 'terima', '2025-04-27 23:46:24', '2025-04-27 23:46:24', 'terima', 'tolak', 'tolak');
INSERT INTO `submissions_proposal` VALUES (11, '232015031', 'IMPLEMENTASI TUGAS CAMAT DALAM PEMBINAAN DAN PENGAWASAN PENYELENGGARAAN PEMERINTAHAN DESA DI KECAMATAN LAPE KABUPATEN SUMBAWA', 'topik 2 tak ada', 'topik 3 tak ada', 'terima', '2025-04-27 23:46:24', '2025-04-27 23:46:24', 'terima', 'tolak', 'tolak');
INSERT INTO `submissions_proposal` VALUES (12, '232015044', 'Implementasi Smart Desa Yang Rama Lingkungan di Desa Langam Kecamatan Lopok Kabupaten Sumbawa', 'topik 2 tak ada', 'topik 3 tak ada', 'terima', '2025-04-27 23:46:24', '2025-04-27 23:46:24', 'terima', 'tolak', 'tolak');
INSERT INTO `submissions_proposal` VALUES (13, '232015056', 'Tata Kelola Badan Usaha Milik Desa Untuk meningkatkan Pendapatan Asli Desa di Desa Berare dan Desa Mama Kabupaten Sumbawa', 'topik 2 tak ada', 'topik 3 tak ada', 'terima', '2025-04-27 23:46:24', '2025-04-27 23:46:24', 'terima', 'tolak', 'tolak');
INSERT INTO `submissions_proposal` VALUES (14, '232015071', 'PENGARUH PERENCANAAN ANGGARAN, KOMPETENSI SDM, DAN PENGADAAN BARANG DAN JASA TERHADAP TINGKAT PENYERAPAN ANGGARAN PENGADAAN BARANG DAN JASA PEMERINTAH DAERAH (STUDI EMPIRIS PADA ORGANISASI PERANGKAT DAERAH KSB)', 'topik 2 tak ada', 'topik 3 tak ada', 'terima', '2025-04-27 23:46:24', '2025-04-27 23:46:24', 'terima', 'tolak', 'tolak');
INSERT INTO `submissions_proposal` VALUES (15, '232015061', 'Pengaruh Penerapan E-Procurement, Budaya Organisasi dan Etika Pegawai Sebagai Upaya Pencegahan Fraud Pada Pengadaan Barang dan Jasa (Studi Kasus di Bagian Pengadaan Barang dan Jasa Sekretariat Daerah Kabupaten Sumbawa Barat)', 'topik 2 tak ada', 'topik 3 tak ada', 'terima', '2025-04-27 23:46:24', '2025-04-27 23:46:24', 'terima', 'tolak', 'tolak');
INSERT INTO `submissions_proposal` VALUES (16, '232015003', 'ANALISIS EFEKTIVITAS PELAYANAN DAN TATA KELOLA PEMINJAMAN ALAT BERAT DI UPTD ALAT BERAT DAN LABORATORIUM KABUPATEN SUMBAWA BARAT', 'topik 2 tak ada', 'topik 3 tak ada', 'terima', '2025-04-27 23:46:24', '2025-04-27 23:46:24', 'terima', 'tolak', 'tolak');
INSERT INTO `submissions_proposal` VALUES (17, '232015045', 'IMPLEMENTASI KEBIJAKAN SISTEM LAYANAN ADMINDUK ONLINE (SILAMO) DI KECAMATAN SUMBAWA KABUPATEN SUMBAWA', 'topik 2 tak ada', 'topik 3 tak ada', 'terima', '2025-04-27 23:46:24', '2025-04-27 23:46:24', 'terima', 'tolak', 'tolak');
INSERT INTO `submissions_proposal` VALUES (18, '232015039', 'Analisis Tingkat Efektivitas Program Inseminasi Buatan (IB) Terhadap Perkembangan Ternak Sapi di Kabupaten Sumbawa Barat', 'topik 2 tak ada', 'topik 3 tak ada', 'terima', '2025-04-27 23:46:24', '2025-04-27 23:46:24', 'terima', 'tolak', 'tolak');
INSERT INTO `submissions_proposal` VALUES (19, '232015025', 'Implementasi Kebijakan Sistem Kendali Mutu Audit Pada Pengawasan Intern Inspektorat Daerah Kabupaten Sumbawa Barat', 'topik 2 tak ada', 'topik 3 tak ada', 'terima', '2025-04-27 23:46:24', '2025-04-27 23:46:24', 'terima', 'tolak', 'tolak');
INSERT INTO `submissions_proposal` VALUES (20, '232015011', 'PENGARUH TAMBAHAN PENGHASILAN PEGAWAI (TPP) TERHADAP PENINGKATAN KINERJA APARATUR SIPIL NEGARA (ASN) PADA RUMAH SAKIT UMUM DAERAH ASY-SYIFA\' SUMBAWA BARAT', 'topik 2 tak ada', 'topik 3 tak ada', 'terima', '2025-04-27 23:46:24', '2025-04-27 23:46:24', 'terima', 'tolak', 'tolak');
INSERT INTO `submissions_proposal` VALUES (21, '232015028', 'Efektivitas Pemanfaatan Kartu Tani Terhadap Penyaluran Pupuk Bersubsidi Di Kecamatan Taliwang Kabupaten Sumbawa Barat', 'topik 2 tak ada', 'topik 3 tak ada', 'terima', '2025-04-27 23:46:24', '2025-04-27 23:46:24', 'terima', 'tolak', 'tolak');
INSERT INTO `submissions_proposal` VALUES (22, '232015037', 'Pengaruh Pengelolaan Kawasan Hutan terhadap Aspek Ekonomi dan Sosial pada Kelompok Perhutanan Sosial Batu Akik Kecamatan Sekongkang', 'topik 2 tak ada', 'topik 3 tak ada', 'terima', '2025-04-27 23:46:24', '2025-04-27 23:46:24', 'terima', 'tolak', 'tolak');
INSERT INTO `submissions_proposal` VALUES (23, '232015006', 'Penerapan Early Warning pada Layanan On Call untuk Efisiensi Layanan Terhadap Wajib Pajak (Studi Kasus UPTB UPPD Taliwang)', 'topik 2 tak ada', 'topik 3 tak ada', 'terima', '2025-04-27 23:46:24', '2025-04-27 23:46:24', 'terima', 'tolak', 'tolak');
INSERT INTO `submissions_proposal` VALUES (24, '232015005', 'Efektivitas Penggunaan Linktree untuk Pengusulan Tugas Belajar Pegawai Negeri Sipil di Kabupaten Sumbawa Barat', 'topik 2 tak ada', 'topik 3 tak ada', 'terima', '2025-04-27 23:46:24', '2025-04-27 23:46:24', 'terima', 'tolak', 'tolak');
INSERT INTO `submissions_proposal` VALUES (25, '232015049', 'IMPLEMENTASI SISTEM KEUANGAN DESA DALAM MENINGKATKAN KINERJA APARATUR DALAM PENGELOLAAN KEUANGAN DI DESA MONTA BARU KECAMATAN LAMBU KABUPATEN BIMA', 'topik 2 tak ada', 'topik 3 tak ada', 'terima', '2025-04-27 23:46:24', '2025-04-27 23:46:24', 'terima', 'tolak', 'tolak');
INSERT INTO `submissions_proposal` VALUES (26, '232015026', 'Implementasi kebijakan pelibatan bhabinkamtibmas sebagai penyidik dan penyelidik dalam penyelesaian perkara melalui restorative justice', 'topik 2 tak ada', 'topik 3 tak ada', 'terima', '2025-04-27 23:46:24', '2025-04-27 23:46:24', 'terima', 'tolak', 'tolak');
INSERT INTO `submissions_proposal` VALUES (27, '232015046', 'ANALISIS IMPLEMENTASI PARIWISATA HIU PAUS TERHADAP PRINSIP SUSTAINABILITY TOURISM DI DESA LABUAN JAMBU, KECAMATAN TARANO KABUPATEN SUMBAWA', 'topik 2 tak ada', 'topik 3 tak ada', 'terima', '2025-04-27 23:46:24', '2025-04-27 23:46:24', 'terima', 'tolak', 'tolak');
INSERT INTO `submissions_proposal` VALUES (28, '232015009', 'KEPEMIMPINAN KEPALA SEKOLAH DALAM PERUBAHAN KINERJA GURU DI SMA NEGERI 1 DONGGO', 'topik 2 tak ada', 'topik 3 tak ada', 'terima', '2025-04-27 23:46:24', '2025-04-27 23:46:24', 'terima', 'tolak', 'tolak');
INSERT INTO `submissions_proposal` VALUES (29, '232015007', 'IMPLEMENTASI DAN INOVASI KINERJA GURU DALAM MENINGKATKAN MUTU PENDIDIKAN DI SMA NEGERI 1 DONGGO', 'topik 2 tak ada', 'topik 3 tak ada', 'terima', '2025-04-27 23:46:24', '2025-04-27 23:46:24', 'terima', 'tolak', 'tolak');
INSERT INTO `submissions_proposal` VALUES (30, '232015008', 'INOVASI MANAJEMEN TEKNOLOGI BERBASIS APLIKASI SLIMS (SENAYAN LIBRARY MANAGEMENT SYSTEM) DALAM MENINGKATKAN LAYANAN PENGGUNA PADA PERPUSTAKAAN UNIVERSITAS MUHAMMADIYAH BIMA', 'topik 2 tak ada', 'topik 3 tak ada', 'terima', '2025-04-27 23:46:24', '2025-04-27 23:46:24', 'terima', 'tolak', 'tolak');
INSERT INTO `submissions_proposal` VALUES (31, '232015010', 'Implementasi Manajemen Berbasis Sekolah Untuk Meningkatkan Mutu Pendidikan di SMA Negeri 1 Woha', 'topik 2 tak ada', 'topik 3 tak ada', 'terima', '2025-04-27 23:46:24', '2025-04-27 23:46:24', 'terima', 'tolak', 'tolak');
INSERT INTO `submissions_proposal` VALUES (32, '232015019', 'STRATEGI PENINGKATAN KOMPETENSI PENDIDIK DAN TENAGA KEPENDIDIKAN MELALUI PENDEKATAN COACHING CLINIC', 'topik 2 tak ada', 'topik 3 tak ada', 'terima', '2025-04-27 23:46:24', '2025-04-27 23:46:24', 'terima', 'tolak', 'tolak');
INSERT INTO `submissions_proposal` VALUES (33, '232015004', 'Implementasi Cyber Counseling Berbasis Chat Asynchronous untuk optimalisasi Layanan bimbingan dan konseling di SMP Negeri 1  Taliwang', 'topik 2 tak ada', 'topik 3 tak ada', 'terima', '2025-04-27 23:46:24', '2025-04-27 23:46:24', 'terima', 'tolak', 'tolak');
INSERT INTO `submissions_proposal` VALUES (34, '232015051', 'PENERAPAN METODE WAFA DALAM PEMBELAJARAN AL-QURAN BAGI SISWA DI SDIT SAMAWA CENDEKIA SUMBAWA BESAR', 'topik 2 tak ada', 'topik 3 tak ada', 'terima', '2025-04-27 23:46:24', '2025-04-27 23:46:24', 'terima', 'tolak', 'tolak');
INSERT INTO `submissions_proposal` VALUES (35, '232015060', 'PENGARUH KECERDASAN EMOSIONAL TERHADAP KINERJA APARATUR SIPIL NEGARA PADA SATUAN PILISI PAMONG PRAJA KABUPATEN SUMBAWA BARAT', 'topik 2 tak ada', 'topik 3 tak ada', 'terima', '2025-04-27 23:46:24', '2025-04-27 23:46:24', 'terima', 'tolak', 'tolak');
INSERT INTO `submissions_proposal` VALUES (36, '232015052', 'PENGARUH GAYA KEPEMIMPINAN, LINGKUNGAN KERJA, DAN KEPUASAN KERJA TERHADAP KINERJA KARYAWAN MELALUI MOTIVASI KERJA SEBAGAI VARIABEL MODERASI PADA PT. PLN (PERSERO) UP3 BIMA UIW NTB', 'topik 2 tak ada', 'topik 3 tak ada', 'terima', '2025-04-27 23:46:24', '2025-04-27 23:46:24', 'terima', 'tolak', 'tolak');
INSERT INTO `submissions_proposal` VALUES (37, '232015024', 'ANALISIS SERVQUAL TERHADAP MINAT NASABAH DALAM PENGAJUAN PEMBIAYAAN DI PT. BANK NTB SYARIAH KCP MALUK', 'topik 2 tak ada', 'topik 3 tak ada', 'terima', '2025-04-27 23:46:24', '2025-04-27 23:46:24', 'terima', 'tolak', 'tolak');
INSERT INTO `submissions_proposal` VALUES (38, '232015015', 'Manajemen Badan Layanan Umum Daerah (studi kasus pada puskesmas kecamatan sumbawa unit 2', 'topik 2 tak ada', 'topik 3 tak ada', 'terima', '2025-04-27 23:46:24', '2025-04-27 23:46:24', 'terima', 'tolak', 'tolak');
INSERT INTO `submissions_proposal` VALUES (39, '232015069', 'Implementasi kebijakan dan peran masyrakat dalam melakukan rehabilitasi hutan dan lahan di kecematan seteluk sumbawa barat', 'topik 2 tak ada', 'topik 3 tak ada', 'terima', '2025-04-27 23:46:24', '2025-04-27 23:46:24', 'terima', 'tolak', 'tolak');
INSERT INTO `submissions_proposal` VALUES (40, '232015050', 'Pengaruh Implementasi Model Pembelajaran Bahasa Inggris Berbasis Inovasi Teknologi dalam Meningkatkan Keterampilan Berbahasa Inggris Pada Siswa Kelas XI SMK Negeri 1 Lambu Kabupaten Bima Tahun Ajaran 2024/2025', 'topik 2 tak ada', 'topik 3 tak ada', 'terima', '2025-04-27 23:46:24', '2025-04-27 23:46:24', 'terima', 'tolak', 'tolak');
INSERT INTO `submissions_proposal` VALUES (41, '232015030', 'Implementasi Pekarangan Pangan Lestari (P2L) Dalam Meningkatkan Ketahanan Pangan di Kecamatan Batulanteh Kabupaten Sumbawa', 'topik 2 tak ada', 'topik 3 tak ada', 'terima', '2025-04-27 23:46:24', '2025-04-27 23:46:24', 'terima', 'tolak', 'tolak');
INSERT INTO `submissions_proposal` VALUES (42, '232015065', 'PENERAPAN PENDEKATAN PENTAHELIX (MULTI PIHAK) DALAM  UPAYA PENCEGAHAN TERORISME DI KELURAHAN PENATOI  KECAMATAN MPUNDA KOTA BIMA', 'topik 2 tak ada', 'topik 3 tak ada', 'terima', '2025-04-27 23:46:24', '2025-04-27 23:46:24', 'terima', 'tolak', 'tolak');
INSERT INTO `submissions_proposal` VALUES (43, '232015064', 'KONSEP PENTAHELIX DALAM PENCEGAHAN DAN PENAGGULANGAN TERORISME DI DESA KANANGA KABUPATEN BIMA', 'topik 2 tak ada', 'topik 3 tak ada', 'terima', '2025-04-27 23:46:24', '2025-04-27 23:46:24', 'terima', 'tolak', 'tolak');
INSERT INTO `submissions_proposal` VALUES (44, '232015035', 'Efektifitas Penggunaan Computer Based Test (CBT) Terhadap Asesmmen Hasil Belajar Siswa di SMPN 2 Buer', 'topik 2 tak ada', 'topik 3 tak ada', 'terima', '2025-04-27 23:46:24', '2025-04-27 23:46:24', 'terima', 'tolak', 'tolak');
INSERT INTO `submissions_proposal` VALUES (45, '232015021', 'Implementasi sistem electronic rekam medik (E-MR) dalam meningkatkan kualitas klaim BPJS di UPTD RSUD Lombok Timur ', 'topik 2 tak ada', 'topik 3 tak ada', 'terima', '2025-04-27 23:46:24', '2025-04-27 23:46:24', 'terima', 'tolak', 'tolak');
INSERT INTO `submissions_proposal` VALUES (46, '232015038', 'Penerapan Skema Pecah Beban Pada Penyulang Lenangguar Dalam Mengatasi Jatuh Tegangan Dan Rugi Daya Menggunakan Simulasi ETAP', 'topik 2 tak ada', 'topik 3 tak ada', 'terima', '2025-04-27 23:46:24', '2025-04-27 23:46:24', 'terima', 'tolak', 'tolak');
INSERT INTO `submissions_proposal` VALUES (47, '232015057', 'Pengaruh Penerapan Metode ASRA Terhadap Peningkatan Kemampuan Membaca Al-Quran Jama\'ah Majelis Tak\'lim Bunga Eja Kelurahan Bugis Kecamatan Sumbawa Kabupaten Sumbawa ', 'topik 2 tak ada', 'topik 3 tak ada', 'terima', '2025-04-27 23:46:24', '2025-04-27 23:46:24', 'terima', 'tolak', 'tolak');
INSERT INTO `submissions_proposal` VALUES (48, '232015012', 'Analisis Kinerja Pengelolaan Keuangan Koperasi Pegawai Daerah (KOPEDA) Kab. Sumbawa', 'topik 2 tak ada', 'topik 3 tak ada', 'terima', '2025-04-27 23:46:24', '2025-04-27 23:46:24', 'terima', 'tolak', 'tolak');
INSERT INTO `submissions_proposal` VALUES (49, '232015066', 'KEBIJAKAN BADAN KESATUAN BANGSA DAN POLITIK (BAKESBANGPOL) DOMPU DALAM UPAYA DERADIKALISASI TERHADAP MANTAN NARAPIDANA TERORISME DI KABUPATEN DOMPU', 'topik 2 tak ada', 'topik 3 tak ada', 'terima', '2025-04-27 23:46:24', '2025-04-27 23:46:24', 'terima', 'tolak', 'tolak');
INSERT INTO `submissions_proposal` VALUES (50, '232015016', 'Pengaruh Kualitas Inovasi Layanan Pospay PT Pos Indonesia Cabang Sumbawa Besar Terhadap Kepuasan Pelanggan', 'topik 2 tak ada', 'topik 3 tak ada', 'terima', '2025-04-27 23:46:24', '2025-04-27 23:46:24', 'terima', 'tolak', 'tolak');
INSERT INTO `submissions_proposal` VALUES (51, '232015027', 'MANAJEMEN BADAN USAHA MILIK DESA (BUMDES)  DALAM MENINGKATKAN PENDAPATAN ASLI DESA (PADES) (Studi Pada Bumdes Batu Penaning Desa Berare Kecamatan Moyo Hilir  Kabupaten Sumbawa)', 'topik 2 tak ada', 'topik 3 tak ada', 'terima', '2025-04-27 23:46:24', '2025-04-27 23:46:24', 'terima', 'tolak', 'tolak');
INSERT INTO `submissions_proposal` VALUES (52, '232015054', 'STRATEGI PENINGKATAN INVESTASI DI KAWASAN INDUSTRI KABUPATEN SUMBAWA BARAT', 'topik 2 tak ada', 'topik 3 tak ada', 'terima', '2025-04-27 23:46:24', '2025-04-27 23:46:24', 'terima', 'tolak', 'tolak');
INSERT INTO `submissions_proposal` VALUES (53, '232015053', 'Analisis Penerapan Sistem Informasi Akuntansi Persediaan Obat dan Alat Kesehatan pada RSUD Asy-Syifa\' Sumbawa Barat', 'topik 2 tak ada', 'topik 3 tak ada', 'terima', '2025-04-27 23:46:24', '2025-04-27 23:46:24', 'terima', 'tolak', 'tolak');
INSERT INTO `submissions_proposal` VALUES (54, '232015017', 'ANALISIS IMPLIMEMTASI INOVASI KEBIJAKAN PERENCANAAN DI PEMERINTAH DAERAH (Studi Kasus Implementasi SIPD di Bappeda Kab. Sumbawa)', 'topik 2 tak ada', 'topik 3 tak ada', 'terima', '2025-04-27 23:46:24', '2025-04-27 23:46:24', 'terima', 'tolak', 'tolak');
INSERT INTO `submissions_proposal` VALUES (55, '232015070', 'Good Governance dalam Tertib Pengelolaan Keuangan pada Badan Keuangan dan Aset Daerah Kabupaten Sumbawa', 'topik 2 tak ada', 'topik 3 tak ada', 'terima', '2025-04-27 23:46:24', '2025-04-27 23:46:24', 'terima', 'tolak', 'tolak');
INSERT INTO `submissions_proposal` VALUES (56, '232015058', 'Inovasi Pembelajaran Al-Qur’an bagi Lansia Produktif Dan Pengaruhnya Terhadap Peningkatan Spritual Studi Fenomenologi pada Jamaah Masjid di Malang Raya', 'topik 2 tak ada', 'topik 3 tak ada', 'terima', '2025-04-27 23:46:24', '2025-04-27 23:46:24', 'terima', 'tolak', 'tolak');
INSERT INTO `submissions_proposal` VALUES (57, '231015063', 'PENINGKATAN REALISASI PAJAK KENDARAAN BERMOTOR DI KOTA BIMA MELALUI EARLY WARNING SYSTEM', 'topik 2 tak ada', 'topik 3 tak ada', 'terima', '2025-04-27 23:46:24', '2025-04-27 23:46:24', 'terima', 'tolak', 'tolak');
INSERT INTO `submissions_proposal` VALUES (58, '22086599', 'Aplikasi E-learning Berbasis Laravel dan Vue.js', NULL, NULL, 'tolak', '2025-05-14 12:01:01', '2025-05-14 12:01:01', 'proses', 'terima', 'proses');
INSERT INTO `submissions_proposal` VALUES (59, '22073584', 'Implementasi IoT untuk Pemantauan Ruang Kelas', NULL, NULL, 'terima', '2025-05-14 12:01:01', '2025-05-14 12:01:01', 'tolak', 'terima', 'terima');
INSERT INTO `submissions_proposal` VALUES (60, '22307948', 'Analisis Sentimen Media Sosial untuk Evaluasi Dosen', NULL, NULL, 'terima', '2025-05-14 12:01:01', '2025-05-14 12:01:01', 'tolak', 'proses', 'tolak');
INSERT INTO `submissions_proposal` VALUES (61, '22008034', 'Implementasi IoT untuk Pemantauan Ruang Kelas', NULL, NULL, 'tolak', '2025-05-14 12:01:01', '2025-05-14 12:01:01', 'terima', 'tolak', 'tolak');
INSERT INTO `submissions_proposal` VALUES (62, '22519568', 'Aplikasi E-learning Berbasis Laravel dan Vue.js', NULL, NULL, 'terima', '2025-05-14 12:01:01', '2025-05-14 12:01:01', 'tolak', 'tolak', 'proses');
INSERT INTO `submissions_proposal` VALUES (63, '22668486', 'Aplikasi E-learning Berbasis Laravel dan Vue.js', NULL, NULL, 'proses', '2025-05-14 12:01:01', '2025-05-14 12:01:01', 'terima', 'terima', 'tolak');
INSERT INTO `submissions_proposal` VALUES (64, '22889090', 'Aplikasi E-learning Berbasis Laravel dan Vue.js', NULL, NULL, 'terima', '2025-05-14 12:01:01', '2025-05-14 12:01:01', 'proses', 'tolak', 'proses');
INSERT INTO `submissions_proposal` VALUES (65, '22559282', 'Evaluasi Keamanan Jaringan pada Perguruan Tinggi', NULL, NULL, 'tolak', '2025-05-14 12:01:01', '2025-05-14 12:01:01', 'terima', 'proses', 'terima');
INSERT INTO `submissions_proposal` VALUES (66, '22041880', 'Pengelolaan Arsip Digital Menggunakan Cloud Storage', NULL, NULL, 'terima', '2025-05-14 12:01:01', '2025-05-14 12:01:01', 'proses', 'tolak', 'terima');
INSERT INTO `submissions_proposal` VALUES (67, '22918832', 'Pengembangan Aplikasi Mobile untuk Layanan Perpustakaan', NULL, NULL, 'tolak', '2025-05-14 12:01:01', '2025-05-14 12:01:01', 'proses', 'proses', 'terima');
INSERT INTO `submissions_proposal` VALUES (68, '22624765', 'Pengembangan Aplikasi Mobile untuk Layanan Perpustakaan', NULL, NULL, 'proses', '2025-05-14 12:01:01', '2025-05-14 12:01:01', 'tolak', 'terima', 'proses');
INSERT INTO `submissions_proposal` VALUES (69, '22291246', 'Analisis Sentimen Media Sosial untuk Evaluasi Dosen', NULL, NULL, 'terima', '2025-05-14 12:01:01', '2025-05-14 12:01:01', 'proses', 'proses', 'tolak');
INSERT INTO `submissions_proposal` VALUES (70, '22413624', 'Analisis Sentimen Media Sosial untuk Evaluasi Dosen', NULL, NULL, 'proses', '2025-05-14 12:01:01', '2025-05-14 12:01:01', 'tolak', 'proses', 'proses');
INSERT INTO `submissions_proposal` VALUES (71, '22821308', 'Evaluasi Keamanan Jaringan pada Perguruan Tinggi', NULL, NULL, 'proses', '2025-05-14 12:01:01', '2025-05-14 12:01:01', 'terima', 'tolak', 'tolak');
INSERT INTO `submissions_proposal` VALUES (72, '22644770', 'Pengelolaan Arsip Digital Menggunakan Cloud Storage', NULL, NULL, 'proses', '2025-05-14 12:01:01', '2025-05-14 12:01:01', 'terima', 'tolak', 'proses');
INSERT INTO `submissions_proposal` VALUES (73, '22370477', 'Aplikasi E-learning Berbasis Laravel dan Vue.js', NULL, NULL, 'proses', '2025-05-14 12:01:01', '2025-05-14 12:01:01', 'tolak', 'proses', 'tolak');
INSERT INTO `submissions_proposal` VALUES (74, '22408435', 'Analisis Sistem Informasi Akademik Berbasis Web', NULL, NULL, 'terima', '2025-05-14 12:01:01', '2025-05-14 12:01:01', 'proses', 'terima', 'proses');
INSERT INTO `submissions_proposal` VALUES (75, '22963010', 'Analisis Sentimen Media Sosial untuk Evaluasi Dosen', NULL, NULL, 'tolak', '2025-05-14 12:01:01', '2025-05-14 12:01:01', 'tolak', 'terima', 'terima');
INSERT INTO `submissions_proposal` VALUES (76, '22358851', 'Aplikasi E-learning Berbasis Laravel dan Vue.js', NULL, NULL, 'proses', '2025-05-14 12:01:01', '2025-05-14 12:01:01', 'proses', 'proses', 'terima');
INSERT INTO `submissions_proposal` VALUES (77, '22783293', 'Pengelolaan Arsip Digital Menggunakan Cloud Storage', NULL, NULL, 'tolak', '2025-05-14 12:01:01', '2025-05-14 12:01:01', 'tolak', 'terima', 'tolak');
INSERT INTO `submissions_proposal` VALUES (78, '22507127', 'Penerapan Machine Learning untuk Prediksi Kelulusan Mahasiswa', NULL, NULL, 'tolak', '2025-05-14 12:01:01', '2025-05-14 12:01:01', 'terima', 'proses', 'terima');
INSERT INTO `submissions_proposal` VALUES (79, '22549567', 'Aplikasi E-learning Berbasis Laravel dan Vue.js', NULL, NULL, 'terima', '2025-05-14 12:01:01', '2025-05-14 12:01:01', 'tolak', 'proses', 'proses');
INSERT INTO `submissions_proposal` VALUES (80, '22316829', 'Pengelolaan Arsip Digital Menggunakan Cloud Storage', NULL, NULL, 'tolak', '2025-05-14 12:01:01', '2025-05-14 12:01:01', 'terima', 'terima', 'tolak');
INSERT INTO `submissions_proposal` VALUES (81, '22961844', 'Analisis Sentimen Media Sosial untuk Evaluasi Dosen', NULL, NULL, 'tolak', '2025-05-14 12:01:01', '2025-05-14 12:01:01', 'tolak', 'terima', 'proses');
INSERT INTO `submissions_proposal` VALUES (82, '22842548', 'Perancangan Aplikasi Monitoring Presensi Siswa', NULL, NULL, 'proses', '2025-05-14 12:01:01', '2025-05-14 12:01:01', 'terima', 'terima', 'tolak');
INSERT INTO `submissions_proposal` VALUES (83, '22738216', 'Pengembangan Aplikasi Mobile untuk Layanan Perpustakaan', NULL, NULL, 'tolak', '2025-05-14 12:01:01', '2025-05-14 12:01:01', 'terima', 'terima', 'tolak');
INSERT INTO `submissions_proposal` VALUES (84, '22054208', 'Aplikasi E-learning Berbasis Laravel dan Vue.js', NULL, NULL, 'tolak', '2025-05-14 12:01:01', '2025-05-14 12:01:01', 'proses', 'terima', 'tolak');
INSERT INTO `submissions_proposal` VALUES (85, '22922190', 'Sistem Rekomendasi Penjurusan Menggunakan Algoritma KNN', NULL, NULL, 'tolak', '2025-05-14 12:01:01', '2025-05-14 12:01:01', 'tolak', 'proses', 'tolak');
INSERT INTO `submissions_proposal` VALUES (86, '22095209', 'Penerapan Machine Learning untuk Prediksi Kelulusan Mahasiswa', NULL, NULL, 'terima', '2025-05-14 12:01:01', '2025-05-14 12:01:01', 'terima', 'terima', 'terima');
INSERT INTO `submissions_proposal` VALUES (87, '22552969', 'Analisis Sentimen Media Sosial untuk Evaluasi Dosen', NULL, NULL, 'proses', '2025-05-14 12:01:01', '2025-05-14 12:01:01', 'tolak', 'terima', 'terima');
INSERT INTO `submissions_proposal` VALUES (88, '22954406', 'Analisis Sistem Informasi Akademik Berbasis Web', NULL, NULL, 'tolak', '2025-05-14 12:01:01', '2025-05-14 12:01:01', 'terima', 'tolak', 'proses');
INSERT INTO `submissions_proposal` VALUES (89, '22677315', 'Penerapan Machine Learning untuk Prediksi Kelulusan Mahasiswa', NULL, NULL, 'tolak', '2025-05-14 12:01:01', '2025-05-14 12:01:01', 'proses', 'terima', 'proses');
INSERT INTO `submissions_proposal` VALUES (90, '22157001', 'Sistem Rekomendasi Penjurusan Menggunakan Algoritma KNN', NULL, NULL, 'proses', '2025-05-14 12:01:01', '2025-05-14 12:01:01', 'terima', 'tolak', 'proses');
INSERT INTO `submissions_proposal` VALUES (91, '22410503', 'Pengembangan Aplikasi Mobile untuk Layanan Perpustakaan', NULL, NULL, 'tolak', '2025-05-14 12:01:01', '2025-05-14 12:01:01', 'proses', 'terima', 'proses');
INSERT INTO `submissions_proposal` VALUES (92, '22625286', 'Analisis Sentimen Media Sosial untuk Evaluasi Dosen', NULL, NULL, 'proses', '2025-05-14 12:01:01', '2025-05-14 12:01:01', 'proses', 'tolak', 'proses');
INSERT INTO `submissions_proposal` VALUES (93, '22656428', 'Analisis Sistem Informasi Akademik Berbasis Web', NULL, NULL, 'terima', '2025-05-14 12:01:01', '2025-05-14 12:01:01', 'terima', 'tolak', 'tolak');
INSERT INTO `submissions_proposal` VALUES (94, '22772992', 'Perancangan Aplikasi Monitoring Presensi Siswa', NULL, NULL, 'tolak', '2025-05-14 12:01:01', '2025-05-14 12:01:01', 'tolak', 'proses', 'terima');
INSERT INTO `submissions_proposal` VALUES (95, '22059788', 'Implementasi IoT untuk Pemantauan Ruang Kelas', NULL, NULL, 'tolak', '2025-05-14 12:01:01', '2025-05-14 12:01:01', 'tolak', 'proses', 'terima');
INSERT INTO `submissions_proposal` VALUES (96, '22070462', 'Analisis Sentimen Media Sosial untuk Evaluasi Dosen', NULL, NULL, 'proses', '2025-05-14 12:01:01', '2025-05-14 12:01:01', 'terima', 'tolak', 'terima');
INSERT INTO `submissions_proposal` VALUES (97, '22671085', 'Penerapan Machine Learning untuk Prediksi Kelulusan Mahasiswa', NULL, NULL, 'tolak', '2025-05-14 12:01:01', '2025-05-14 12:01:01', 'proses', 'proses', 'terima');
INSERT INTO `submissions_proposal` VALUES (98, '22694471', 'Aplikasi E-learning Berbasis Laravel dan Vue.js', NULL, NULL, 'tolak', '2025-05-14 12:01:01', '2025-05-14 12:01:01', 'proses', 'tolak', 'proses');
INSERT INTO `submissions_proposal` VALUES (99, '22557768', 'Analisis Sentimen Media Sosial untuk Evaluasi Dosen', NULL, NULL, 'terima', '2025-05-14 12:01:01', '2025-05-14 12:01:01', 'terima', 'terima', 'tolak');
INSERT INTO `submissions_proposal` VALUES (100, '22798845', 'Analisis Sentimen Media Sosial untuk Evaluasi Dosen', NULL, NULL, 'proses', '2025-05-14 12:01:01', '2025-05-14 12:01:01', 'proses', 'terima', 'proses');
INSERT INTO `submissions_proposal` VALUES (101, '22745015', 'Pengelolaan Arsip Digital Menggunakan Cloud Storage', NULL, NULL, 'terima', '2025-05-14 12:01:01', '2025-05-14 12:01:01', 'tolak', 'proses', 'proses');
INSERT INTO `submissions_proposal` VALUES (102, '22311536', 'Pengembangan Aplikasi Mobile untuk Layanan Perpustakaan', NULL, NULL, 'proses', '2025-05-14 12:01:01', '2025-05-14 12:01:01', 'tolak', 'proses', 'terima');
INSERT INTO `submissions_proposal` VALUES (103, '22405204', 'Implementasi IoT untuk Pemantauan Ruang Kelas', NULL, NULL, 'proses', '2025-05-14 12:01:01', '2025-05-14 12:01:01', 'proses', 'proses', 'terima');
INSERT INTO `submissions_proposal` VALUES (104, '22505645', 'Perancangan Aplikasi Monitoring Presensi Siswa', NULL, NULL, 'terima', '2025-05-14 12:01:01', '2025-05-14 12:01:01', 'proses', 'tolak', 'terima');
INSERT INTO `submissions_proposal` VALUES (105, '22007189', 'Sistem Rekomendasi Penjurusan Menggunakan Algoritma KNN', NULL, NULL, 'terima', '2025-05-14 12:01:01', '2025-05-14 12:01:01', 'proses', 'terima', 'tolak');
INSERT INTO `submissions_proposal` VALUES (106, '22967789', 'Analisis Sistem Informasi Akademik Berbasis Web', NULL, NULL, 'proses', '2025-05-14 12:01:01', '2025-05-14 12:01:01', 'proses', 'terima', 'proses');
INSERT INTO `submissions_proposal` VALUES (107, '22033322', 'Perancangan Aplikasi Monitoring Presensi Siswa', NULL, NULL, 'terima', '2025-05-14 12:01:01', '2025-05-14 12:01:01', 'tolak', 'proses', 'terima');
INSERT INTO `submissions_proposal` VALUES (108, '22257111', 'Aplikasi E-learning Berbasis Laravel dan Vue.js', NULL, NULL, 'terima', '2025-05-14 12:01:01', '2025-05-14 12:01:01', 'tolak', 'tolak', 'proses');
INSERT INTO `submissions_proposal` VALUES (109, '22564270', 'Aplikasi E-learning Berbasis Laravel dan Vue.js', NULL, NULL, 'terima', '2025-05-14 12:01:01', '2025-05-14 12:01:01', 'proses', 'proses', 'terima');
INSERT INTO `submissions_proposal` VALUES (110, '22783008', 'Analisis Sistem Informasi Akademik Berbasis Web', NULL, NULL, 'proses', '2025-05-14 12:01:01', '2025-05-14 12:01:01', 'proses', 'terima', 'terima');
INSERT INTO `submissions_proposal` VALUES (111, '22238005', 'Sistem Rekomendasi Penjurusan Menggunakan Algoritma KNN', NULL, NULL, 'tolak', '2025-05-14 12:01:01', '2025-05-14 12:01:01', 'tolak', 'tolak', 'proses');
INSERT INTO `submissions_proposal` VALUES (112, '22899076', 'Pengembangan Aplikasi Mobile untuk Layanan Perpustakaan', NULL, NULL, 'tolak', '2025-05-14 12:01:01', '2025-05-14 12:01:01', 'terima', 'tolak', 'proses');
INSERT INTO `submissions_proposal` VALUES (113, '22330909', 'Aplikasi E-learning Berbasis Laravel dan Vue.js', NULL, NULL, 'terima', '2025-05-14 12:01:01', '2025-05-14 12:01:01', 'proses', 'tolak', 'proses');
INSERT INTO `submissions_proposal` VALUES (114, '22024109', 'Sistem Rekomendasi Penjurusan Menggunakan Algoritma KNN', NULL, NULL, 'terima', '2025-05-14 12:01:01', '2025-05-14 12:01:01', 'tolak', 'tolak', 'terima');
INSERT INTO `submissions_proposal` VALUES (115, '22265898', 'Aplikasi E-learning Berbasis Laravel dan Vue.js', NULL, NULL, 'proses', '2025-05-14 12:01:01', '2025-05-14 12:01:01', 'terima', 'tolak', 'proses');
INSERT INTO `submissions_proposal` VALUES (116, '22300123', 'Perancangan Aplikasi Monitoring Presensi Siswa', NULL, NULL, 'proses', '2025-05-14 12:01:01', '2025-05-14 12:01:01', 'proses', 'tolak', 'tolak');
INSERT INTO `submissions_proposal` VALUES (117, '22139404', 'Implementasi IoT untuk Pemantauan Ruang Kelas', NULL, NULL, 'proses', '2025-05-14 12:01:01', '2025-05-14 12:01:01', 'proses', 'tolak', 'proses');
INSERT INTO `submissions_proposal` VALUES (118, '22345348', 'Sistem Rekomendasi Penjurusan Menggunakan Algoritma KNN', NULL, NULL, 'proses', '2025-05-14 12:01:01', '2025-05-14 12:01:01', 'tolak', 'terima', 'proses');
INSERT INTO `submissions_proposal` VALUES (119, '22709330', 'Analisis Sentimen Media Sosial untuk Evaluasi Dosen', NULL, NULL, 'tolak', '2025-05-14 12:01:01', '2025-05-14 12:01:01', 'tolak', 'proses', 'terima');
INSERT INTO `submissions_proposal` VALUES (120, '22639298', 'Sistem Rekomendasi Penjurusan Menggunakan Algoritma KNN', NULL, NULL, 'tolak', '2025-05-14 12:01:01', '2025-05-14 12:01:01', 'proses', 'terima', 'terima');
INSERT INTO `submissions_proposal` VALUES (121, '22826700', 'Analisis Sistem Informasi Akademik Berbasis Web', NULL, NULL, 'terima', '2025-05-14 12:01:01', '2025-05-14 12:01:01', 'tolak', 'tolak', 'tolak');
INSERT INTO `submissions_proposal` VALUES (122, '22457912', 'Pengelolaan Arsip Digital Menggunakan Cloud Storage', NULL, NULL, 'tolak', '2025-05-14 12:01:01', '2025-05-14 12:01:01', 'proses', 'tolak', 'terima');
INSERT INTO `submissions_proposal` VALUES (123, '22482647', 'Pengembangan Aplikasi Mobile untuk Layanan Perpustakaan', NULL, NULL, 'proses', '2025-05-14 12:01:01', '2025-05-14 12:01:01', 'terima', 'tolak', 'proses');
INSERT INTO `submissions_proposal` VALUES (124, '22759936', 'Aplikasi E-learning Berbasis Laravel dan Vue.js', NULL, NULL, 'tolak', '2025-05-14 12:01:01', '2025-05-14 12:01:01', 'tolak', 'tolak', 'tolak');
INSERT INTO `submissions_proposal` VALUES (125, '22183104', 'Evaluasi Keamanan Jaringan pada Perguruan Tinggi', NULL, NULL, 'tolak', '2025-05-14 12:01:01', '2025-05-14 12:01:01', 'proses', 'tolak', 'terima');
INSERT INTO `submissions_proposal` VALUES (126, '22704261', 'Analisis Sistem Informasi Akademik Berbasis Web', NULL, NULL, 'proses', '2025-05-14 12:01:01', '2025-05-14 12:01:01', 'terima', 'terima', 'tolak');
INSERT INTO `submissions_proposal` VALUES (127, '22325613', 'Pengelolaan Arsip Digital Menggunakan Cloud Storage', NULL, NULL, 'terima', '2025-05-14 12:01:01', '2025-05-14 12:01:01', 'proses', 'terima', 'proses');
INSERT INTO `submissions_proposal` VALUES (128, '22335705', 'Penerapan Machine Learning untuk Prediksi Kelulusan Mahasiswa', NULL, NULL, 'terima', '2025-05-14 12:01:01', '2025-05-14 12:01:01', 'tolak', 'terima', 'proses');
INSERT INTO `submissions_proposal` VALUES (129, '22755257', 'Perancangan Aplikasi Monitoring Presensi Siswa', NULL, NULL, 'proses', '2025-05-14 12:01:01', '2025-05-14 12:01:01', 'proses', 'proses', 'tolak');
INSERT INTO `submissions_proposal` VALUES (130, '22128336', 'Evaluasi Keamanan Jaringan pada Perguruan Tinggi', NULL, NULL, 'proses', '2025-05-14 12:01:01', '2025-05-14 12:01:01', 'proses', 'terima', 'proses');
INSERT INTO `submissions_proposal` VALUES (131, '22181278', 'Sistem Rekomendasi Penjurusan Menggunakan Algoritma KNN', NULL, NULL, 'proses', '2025-05-14 12:01:01', '2025-05-14 12:01:01', 'proses', 'proses', 'proses');
INSERT INTO `submissions_proposal` VALUES (132, '22282338', 'Aplikasi E-learning Berbasis Laravel dan Vue.js', NULL, NULL, 'tolak', '2025-05-14 12:01:01', '2025-05-14 12:01:01', 'tolak', 'tolak', 'tolak');
INSERT INTO `submissions_proposal` VALUES (133, '22058319', 'Pengembangan Aplikasi Mobile untuk Layanan Perpustakaan', NULL, NULL, 'tolak', '2025-05-14 12:01:01', '2025-05-14 12:01:01', 'tolak', 'terima', 'proses');
INSERT INTO `submissions_proposal` VALUES (134, '22958847', 'Pengelolaan Arsip Digital Menggunakan Cloud Storage', NULL, NULL, 'terima', '2025-05-14 12:01:01', '2025-05-14 12:01:01', 'tolak', 'terima', 'terima');
INSERT INTO `submissions_proposal` VALUES (135, '22188725', 'Implementasi IoT untuk Pemantauan Ruang Kelas', NULL, NULL, 'tolak', '2025-05-14 12:01:01', '2025-05-14 12:01:01', 'proses', 'proses', 'terima');
INSERT INTO `submissions_proposal` VALUES (136, '22045357', 'Pengelolaan Arsip Digital Menggunakan Cloud Storage', NULL, NULL, 'terima', '2025-05-14 12:01:01', '2025-05-14 12:01:01', 'proses', 'terima', 'tolak');
INSERT INTO `submissions_proposal` VALUES (137, '22353904', 'Evaluasi Keamanan Jaringan pada Perguruan Tinggi', NULL, NULL, 'terima', '2025-05-14 12:01:01', '2025-05-14 12:01:01', 'terima', 'proses', 'terima');
INSERT INTO `submissions_proposal` VALUES (138, '22598725', 'Pengembangan Aplikasi Mobile untuk Layanan Perpustakaan', NULL, NULL, 'proses', '2025-05-14 12:01:01', '2025-05-14 12:01:01', 'tolak', 'terima', 'tolak');
INSERT INTO `submissions_proposal` VALUES (139, '22749319', 'Pengembangan Aplikasi Mobile untuk Layanan Perpustakaan', NULL, NULL, 'tolak', '2025-05-14 12:01:01', '2025-05-14 12:01:01', 'tolak', 'terima', 'terima');
INSERT INTO `submissions_proposal` VALUES (140, '22090067', 'Analisis Sistem Informasi Akademik Berbasis Web', NULL, NULL, 'terima', '2025-05-14 12:01:01', '2025-05-14 12:01:01', 'tolak', 'tolak', 'terima');
INSERT INTO `submissions_proposal` VALUES (141, '22656539', 'Aplikasi E-learning Berbasis Laravel dan Vue.js', NULL, NULL, 'terima', '2025-05-14 12:01:01', '2025-05-14 12:01:01', 'tolak', 'tolak', 'terima');
INSERT INTO `submissions_proposal` VALUES (142, '22913585', 'Analisis Sistem Informasi Akademik Berbasis Web', NULL, NULL, 'proses', '2025-05-14 12:01:01', '2025-05-14 12:01:01', 'tolak', 'tolak', 'tolak');
INSERT INTO `submissions_proposal` VALUES (143, '22803851', 'Evaluasi Keamanan Jaringan pada Perguruan Tinggi', NULL, NULL, 'tolak', '2025-05-14 12:01:01', '2025-05-14 12:01:01', 'proses', 'proses', 'terima');
INSERT INTO `submissions_proposal` VALUES (144, '22058071', 'Implementasi IoT untuk Pemantauan Ruang Kelas', NULL, NULL, 'proses', '2025-05-14 12:01:01', '2025-05-14 12:01:01', 'terima', 'terima', 'proses');
INSERT INTO `submissions_proposal` VALUES (145, '22080450', 'Implementasi IoT untuk Pemantauan Ruang Kelas', NULL, NULL, 'tolak', '2025-05-14 12:01:01', '2025-05-14 12:01:01', 'tolak', 'terima', 'tolak');
INSERT INTO `submissions_proposal` VALUES (146, '22802726', 'Evaluasi Keamanan Jaringan pada Perguruan Tinggi', NULL, NULL, 'tolak', '2025-05-14 12:01:01', '2025-05-14 12:01:01', 'terima', 'proses', 'tolak');
INSERT INTO `submissions_proposal` VALUES (147, '22878882', 'Analisis Sistem Informasi Akademik Berbasis Web', NULL, NULL, 'terima', '2025-05-14 12:01:01', '2025-05-14 12:01:01', 'proses', 'tolak', 'proses');
INSERT INTO `submissions_proposal` VALUES (148, '22568817', 'Penerapan Machine Learning untuk Prediksi Kelulusan Mahasiswa', NULL, NULL, 'terima', '2025-05-14 12:01:01', '2025-05-14 12:01:01', 'proses', 'terima', 'proses');
INSERT INTO `submissions_proposal` VALUES (149, '22484769', 'Penerapan Machine Learning untuk Prediksi Kelulusan Mahasiswa', NULL, NULL, 'terima', '2025-05-14 12:01:01', '2025-05-14 12:01:01', 'proses', 'proses', 'terima');
INSERT INTO `submissions_proposal` VALUES (150, '22429098', 'Analisis Sentimen Media Sosial untuk Evaluasi Dosen', NULL, NULL, 'proses', '2025-05-14 12:01:01', '2025-05-14 12:01:01', 'tolak', 'terima', 'tolak');
INSERT INTO `submissions_proposal` VALUES (151, '22828198', 'Sistem Rekomendasi Penjurusan Menggunakan Algoritma KNN', NULL, NULL, 'tolak', '2025-05-14 12:01:01', '2025-05-14 12:01:01', 'tolak', 'proses', 'tolak');
INSERT INTO `submissions_proposal` VALUES (152, '22762625', 'Pengelolaan Arsip Digital Menggunakan Cloud Storage', NULL, NULL, 'tolak', '2025-05-14 12:01:01', '2025-05-14 12:01:01', 'tolak', 'proses', 'terima');
INSERT INTO `submissions_proposal` VALUES (153, '22095556', 'Perancangan Aplikasi Monitoring Presensi Siswa', NULL, NULL, 'proses', '2025-05-14 12:01:01', '2025-05-14 12:01:01', 'proses', 'tolak', 'tolak');
INSERT INTO `submissions_proposal` VALUES (154, '22401848', 'Penerapan Machine Learning untuk Prediksi Kelulusan Mahasiswa', NULL, NULL, 'tolak', '2025-05-14 12:01:01', '2025-05-14 12:01:01', 'tolak', 'terima', 'terima');
INSERT INTO `submissions_proposal` VALUES (155, '22899827', 'Analisis Sentimen Media Sosial untuk Evaluasi Dosen', NULL, NULL, 'proses', '2025-05-14 12:01:01', '2025-05-14 12:01:01', 'tolak', 'tolak', 'proses');
INSERT INTO `submissions_proposal` VALUES (156, '22281524', 'Perancangan Aplikasi Monitoring Presensi Siswa', NULL, NULL, 'terima', '2025-05-14 12:01:01', '2025-05-14 12:01:01', 'terima', 'proses', 'proses');
INSERT INTO `submissions_proposal` VALUES (157, '22060295', 'Pengembangan Aplikasi Mobile untuk Layanan Perpustakaan', NULL, NULL, 'terima', '2025-05-14 12:01:01', '2025-05-14 12:01:01', 'proses', 'proses', 'proses');
INSERT INTO `submissions_proposal` VALUES (158, '22573059', 'Analisis Sistem Informasi Akademik Berbasis Web', NULL, NULL, 'terima', '2025-05-14 12:01:01', '2025-05-14 12:01:01', 'tolak', 'tolak', 'proses');
INSERT INTO `submissions_proposal` VALUES (159, '22985999', 'Pengembangan Aplikasi Mobile untuk Layanan Perpustakaan', NULL, NULL, 'terima', '2025-05-14 12:01:01', '2025-05-14 12:01:01', 'proses', 'terima', 'tolak');
INSERT INTO `submissions_proposal` VALUES (160, '22909848', 'Aplikasi E-learning Berbasis Laravel dan Vue.js', NULL, NULL, 'proses', '2025-05-14 12:01:01', '2025-05-14 12:01:01', 'proses', 'terima', 'proses');
INSERT INTO `submissions_proposal` VALUES (161, '22031025', 'Pengelolaan Arsip Digital Menggunakan Cloud Storage', NULL, NULL, 'terima', '2025-05-14 12:01:01', '2025-05-14 12:01:01', 'tolak', 'terima', 'proses');
INSERT INTO `submissions_proposal` VALUES (162, '22429634', 'Implementasi IoT untuk Pemantauan Ruang Kelas', NULL, NULL, 'proses', '2025-05-14 12:01:01', '2025-05-14 12:01:01', 'proses', 'proses', 'proses');
INSERT INTO `submissions_proposal` VALUES (163, '22024412', 'Analisis Sentimen Media Sosial untuk Evaluasi Dosen', NULL, NULL, 'tolak', '2025-05-14 12:01:01', '2025-05-14 12:01:01', 'terima', 'terima', 'terima');
INSERT INTO `submissions_proposal` VALUES (164, '22188080', 'Analisis Sentimen Media Sosial untuk Evaluasi Dosen', NULL, NULL, 'terima', '2025-05-14 12:01:01', '2025-05-14 12:01:01', 'terima', 'proses', 'terima');
INSERT INTO `submissions_proposal` VALUES (165, '22808330', 'Pengelolaan Arsip Digital Menggunakan Cloud Storage', NULL, NULL, 'tolak', '2025-05-14 12:01:01', '2025-05-14 12:01:01', 'proses', 'terima', 'tolak');
INSERT INTO `submissions_proposal` VALUES (166, '22158913', 'Evaluasi Keamanan Jaringan pada Perguruan Tinggi', NULL, NULL, 'tolak', '2025-05-14 12:01:01', '2025-05-14 12:01:01', 'tolak', 'tolak', 'terima');
INSERT INTO `submissions_proposal` VALUES (167, '22655576', 'Analisis Sistem Informasi Akademik Berbasis Web', NULL, NULL, 'terima', '2025-05-14 12:01:01', '2025-05-14 12:01:01', 'tolak', 'proses', 'terima');
INSERT INTO `submissions_proposal` VALUES (168, '22333582', 'Implementasi IoT untuk Pemantauan Ruang Kelas', NULL, NULL, 'tolak', '2025-05-14 12:01:01', '2025-05-14 12:01:01', 'proses', 'proses', 'tolak');
INSERT INTO `submissions_proposal` VALUES (169, '22344898', 'Perancangan Aplikasi Monitoring Presensi Siswa', NULL, NULL, 'tolak', '2025-05-14 12:01:01', '2025-05-14 12:01:01', 'tolak', 'proses', 'tolak');
INSERT INTO `submissions_proposal` VALUES (170, '22062236', 'Sistem Rekomendasi Penjurusan Menggunakan Algoritma KNN', NULL, NULL, 'proses', '2025-05-14 12:01:01', '2025-05-14 12:01:01', 'proses', 'proses', 'tolak');
INSERT INTO `submissions_proposal` VALUES (171, '22257184', 'Pengelolaan Arsip Digital Menggunakan Cloud Storage', NULL, NULL, 'tolak', '2025-05-14 12:01:01', '2025-05-14 12:01:01', 'tolak', 'tolak', 'proses');
INSERT INTO `submissions_proposal` VALUES (172, '22939201', 'Penerapan Machine Learning untuk Prediksi Kelulusan Mahasiswa', NULL, NULL, 'proses', '2025-05-14 12:01:01', '2025-05-14 12:01:01', 'proses', 'tolak', 'tolak');
INSERT INTO `submissions_proposal` VALUES (173, '22500893', 'Implementasi IoT untuk Pemantauan Ruang Kelas', NULL, NULL, 'tolak', '2025-05-14 12:01:01', '2025-05-14 12:01:01', 'tolak', 'terima', 'tolak');
INSERT INTO `submissions_proposal` VALUES (174, '22955995', 'Pengembangan Aplikasi Mobile untuk Layanan Perpustakaan', NULL, NULL, 'tolak', '2025-05-14 12:01:01', '2025-05-14 12:01:01', 'proses', 'proses', 'terima');
INSERT INTO `submissions_proposal` VALUES (175, '22176637', 'Penerapan Machine Learning untuk Prediksi Kelulusan Mahasiswa', NULL, NULL, 'proses', '2025-05-14 12:01:01', '2025-05-14 12:01:01', 'terima', 'tolak', 'terima');
INSERT INTO `submissions_proposal` VALUES (176, '22544417', 'Analisis Sistem Informasi Akademik Berbasis Web', NULL, NULL, 'terima', '2025-05-14 12:01:01', '2025-05-14 12:01:01', 'proses', 'proses', 'tolak');
INSERT INTO `submissions_proposal` VALUES (177, '22109992', 'Implementasi IoT untuk Pemantauan Ruang Kelas', NULL, NULL, 'tolak', '2025-05-14 12:01:01', '2025-05-14 12:01:01', 'tolak', 'proses', 'tolak');
INSERT INTO `submissions_proposal` VALUES (178, '22239818', 'Sistem Rekomendasi Penjurusan Menggunakan Algoritma KNN', NULL, NULL, 'terima', '2025-05-14 12:01:01', '2025-05-14 12:01:01', 'proses', 'proses', 'proses');
INSERT INTO `submissions_proposal` VALUES (179, '22919049', 'Penerapan Machine Learning untuk Prediksi Kelulusan Mahasiswa', NULL, NULL, 'tolak', '2025-05-14 12:01:01', '2025-05-14 12:01:01', 'proses', 'proses', 'terima');
INSERT INTO `submissions_proposal` VALUES (180, '22920472', 'Pengembangan Aplikasi Mobile untuk Layanan Perpustakaan', NULL, NULL, 'proses', '2025-05-14 12:01:01', '2025-05-14 12:01:01', 'proses', 'tolak', 'proses');
INSERT INTO `submissions_proposal` VALUES (181, '22580195', 'Pengembangan Aplikasi Mobile untuk Layanan Perpustakaan', NULL, NULL, 'terima', '2025-05-14 12:01:01', '2025-05-14 12:01:01', 'proses', 'terima', 'terima');
INSERT INTO `submissions_proposal` VALUES (182, '22898362', 'Pengelolaan Arsip Digital Menggunakan Cloud Storage', NULL, NULL, 'proses', '2025-05-14 12:01:01', '2025-05-14 12:01:01', 'tolak', 'proses', 'proses');
INSERT INTO `submissions_proposal` VALUES (183, '22636370', 'Analisis Sistem Informasi Akademik Berbasis Web', NULL, NULL, 'terima', '2025-05-14 12:01:01', '2025-05-14 12:01:01', 'tolak', 'proses', 'tolak');
INSERT INTO `submissions_proposal` VALUES (184, '22788743', 'Sistem Rekomendasi Penjurusan Menggunakan Algoritma KNN', NULL, NULL, 'proses', '2025-05-14 12:01:01', '2025-05-14 12:01:01', 'terima', 'proses', 'proses');
INSERT INTO `submissions_proposal` VALUES (185, '22034909', 'Pengelolaan Arsip Digital Menggunakan Cloud Storage', NULL, NULL, 'proses', '2025-05-14 12:01:01', '2025-05-14 12:01:01', 'tolak', 'terima', 'proses');
INSERT INTO `submissions_proposal` VALUES (186, '22671070', 'Penerapan Machine Learning untuk Prediksi Kelulusan Mahasiswa', NULL, NULL, 'terima', '2025-05-14 12:01:01', '2025-05-14 12:01:01', 'terima', 'proses', 'tolak');
INSERT INTO `submissions_proposal` VALUES (187, '22306083', 'Perancangan Aplikasi Monitoring Presensi Siswa', NULL, NULL, 'terima', '2025-05-14 12:01:01', '2025-05-14 12:01:01', 'terima', 'proses', 'proses');
INSERT INTO `submissions_proposal` VALUES (188, '22364286', 'Sistem Rekomendasi Penjurusan Menggunakan Algoritma KNN', NULL, NULL, 'tolak', '2025-05-14 12:01:01', '2025-05-14 12:01:01', 'proses', 'tolak', 'proses');
INSERT INTO `submissions_proposal` VALUES (189, '22397664', 'Aplikasi E-learning Berbasis Laravel dan Vue.js', NULL, NULL, 'proses', '2025-05-14 12:01:01', '2025-05-14 12:01:01', 'tolak', 'terima', 'tolak');
INSERT INTO `submissions_proposal` VALUES (190, '22085307', 'Evaluasi Keamanan Jaringan pada Perguruan Tinggi', NULL, NULL, 'tolak', '2025-05-14 12:01:01', '2025-05-14 12:01:01', 'terima', 'proses', 'terima');
INSERT INTO `submissions_proposal` VALUES (191, '22327953', 'Sistem Rekomendasi Penjurusan Menggunakan Algoritma KNN', NULL, NULL, 'terima', '2025-05-14 12:01:01', '2025-05-14 12:01:01', 'tolak', 'terima', 'proses');
INSERT INTO `submissions_proposal` VALUES (192, '22369292', 'Pengelolaan Arsip Digital Menggunakan Cloud Storage', NULL, NULL, 'tolak', '2025-05-14 12:01:01', '2025-05-14 12:01:01', 'terima', 'terima', 'tolak');
INSERT INTO `submissions_proposal` VALUES (193, '22751624', 'Pengelolaan Arsip Digital Menggunakan Cloud Storage', NULL, NULL, 'terima', '2025-05-14 12:01:01', '2025-05-14 12:01:01', 'terima', 'proses', 'terima');
INSERT INTO `submissions_proposal` VALUES (194, '22940168', 'Implementasi IoT untuk Pemantauan Ruang Kelas', NULL, NULL, 'proses', '2025-05-14 12:01:01', '2025-05-14 12:01:01', 'proses', 'proses', 'terima');
INSERT INTO `submissions_proposal` VALUES (195, '22961106', 'Implementasi IoT untuk Pemantauan Ruang Kelas', NULL, NULL, 'proses', '2025-05-14 12:01:01', '2025-05-14 12:01:01', 'proses', 'tolak', 'terima');
INSERT INTO `submissions_proposal` VALUES (196, '22024976', 'Implementasi IoT untuk Pemantauan Ruang Kelas', NULL, NULL, 'terima', '2025-05-14 12:01:01', '2025-05-14 12:01:01', 'proses', 'terima', 'terima');
INSERT INTO `submissions_proposal` VALUES (197, '22047432', 'Evaluasi Keamanan Jaringan pada Perguruan Tinggi', NULL, NULL, 'terima', '2025-05-14 12:01:01', '2025-05-14 12:01:01', 'proses', 'tolak', 'terima');
INSERT INTO `submissions_proposal` VALUES (198, '22426251', 'Evaluasi Keamanan Jaringan pada Perguruan Tinggi', NULL, NULL, 'tolak', '2025-05-14 12:01:01', '2025-05-14 12:01:01', 'terima', 'terima', 'terima');
INSERT INTO `submissions_proposal` VALUES (199, '22800395', 'Perancangan Aplikasi Monitoring Presensi Siswa', NULL, NULL, 'terima', '2025-05-14 12:01:01', '2025-05-14 12:01:01', 'proses', 'terima', 'terima');
INSERT INTO `submissions_proposal` VALUES (200, '22618630', 'Perancangan Aplikasi Monitoring Presensi Siswa', NULL, NULL, 'proses', '2025-05-14 12:01:01', '2025-05-14 12:01:01', 'tolak', 'terima', 'terima');
INSERT INTO `submissions_proposal` VALUES (201, '22817565', 'Evaluasi Keamanan Jaringan pada Perguruan Tinggi', NULL, NULL, 'tolak', '2025-05-14 12:01:01', '2025-05-14 12:01:01', 'proses', 'terima', 'tolak');
INSERT INTO `submissions_proposal` VALUES (202, '22711341', 'Evaluasi Keamanan Jaringan pada Perguruan Tinggi', NULL, NULL, 'proses', '2025-05-14 12:01:01', '2025-05-14 12:01:01', 'terima', 'proses', 'tolak');
INSERT INTO `submissions_proposal` VALUES (203, '22938507', 'Sistem Rekomendasi Penjurusan Menggunakan Algoritma KNN', NULL, NULL, 'tolak', '2025-05-14 12:01:01', '2025-05-14 12:01:01', 'terima', 'terima', 'terima');
INSERT INTO `submissions_proposal` VALUES (204, '22634878', 'Penerapan Machine Learning untuk Prediksi Kelulusan Mahasiswa', NULL, NULL, 'terima', '2025-05-14 12:01:01', '2025-05-14 12:01:01', 'proses', 'terima', 'tolak');

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
