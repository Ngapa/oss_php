-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 17, 2022 at 05:34 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bps`
--

-- --------------------------------------------------------

--
-- Table structure for table `data_rows`
--

CREATE TABLE `data_rows` (
  `id` int(10) UNSIGNED NOT NULL,
  `data_type_id` int(10) UNSIGNED NOT NULL,
  `field` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT 0,
  `browse` tinyint(1) NOT NULL DEFAULT 1,
  `read` tinyint(1) NOT NULL DEFAULT 1,
  `edit` tinyint(1) NOT NULL DEFAULT 1,
  `add` tinyint(1) NOT NULL DEFAULT 1,
  `delete` tinyint(1) NOT NULL DEFAULT 1,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_rows`
--

INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES
(1, 1, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(2, 1, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(3, 1, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, NULL, 3),
(4, 1, 'password', 'password', 'Password', 1, 0, 0, 1, 1, 0, NULL, 4),
(5, 1, 'remember_token', 'text', 'Remember Token', 0, 0, 0, 0, 0, 0, NULL, 5),
(6, 1, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 6),
(7, 1, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(8, 1, 'avatar', 'image', 'Avatar', 0, 1, 1, 1, 1, 1, NULL, 8),
(9, 1, 'user_belongsto_role_relationship', 'relationship', 'Role', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":0}', 10),
(10, 1, 'user_belongstomany_role_relationship', 'relationship', 'Roles', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}', 11),
(11, 1, 'settings', 'hidden', 'Settings', 0, 0, 0, 0, 0, 0, NULL, 12),
(12, 2, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(13, 2, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(14, 2, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(15, 2, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(16, 3, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(17, 3, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(18, 3, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(19, 3, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(20, 3, 'display_name', 'text', 'Display Name', 1, 1, 1, 1, 1, 1, NULL, 5),
(21, 1, 'role_id', 'text', 'Role', 1, 1, 1, 1, 1, 1, NULL, 9),
(44, 6, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(45, 6, 'author_id', 'text', 'Author', 1, 0, 0, 0, 0, 0, NULL, 2),
(46, 6, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, NULL, 3),
(47, 6, 'excerpt', 'text_area', 'Excerpt', 1, 0, 1, 1, 1, 1, NULL, 4),
(48, 6, 'body', 'rich_text_box', 'Body', 1, 0, 1, 1, 1, 1, NULL, 5),
(49, 6, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\"},\"validation\":{\"rule\":\"unique:pages,slug\"}}', 6),
(50, 6, 'meta_description', 'text', 'Meta Description', 1, 0, 1, 1, 1, 1, NULL, 7),
(51, 6, 'meta_keywords', 'text', 'Meta Keywords', 1, 0, 1, 1, 1, 1, NULL, 8),
(52, 6, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"INACTIVE\",\"options\":{\"INACTIVE\":\"INACTIVE\",\"ACTIVE\":\"ACTIVE\"}}', 9),
(53, 6, 'created_at', 'timestamp', 'Created At', 1, 1, 1, 0, 0, 0, NULL, 10),
(54, 6, 'updated_at', 'timestamp', 'Updated At', 1, 0, 0, 0, 0, 0, NULL, 11),
(55, 6, 'image', 'image', 'Page Image', 0, 1, 1, 1, 1, 1, NULL, 12),
(56, 9, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(57, 9, 'uhh', 'number', 'Uhh', 0, 1, 1, 1, 1, 1, '{}', 2),
(58, 9, 'rls', 'number', 'Rls', 0, 1, 1, 1, 1, 1, '{}', 3),
(59, 9, 'hls', 'number', 'Hls', 0, 1, 1, 1, 1, 1, '{}', 4),
(60, 9, 'ppp', 'number', 'Ppp', 0, 1, 1, 1, 1, 1, '{}', 5),
(61, 9, 'ipm', 'number', 'Ipm', 0, 1, 1, 1, 1, 1, '{}', 6),
(62, 9, 'pertumbuhan', 'number', 'Pertumbuhan', 0, 1, 1, 1, 1, 1, '{}', 7),
(63, 9, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 8),
(64, 9, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 9),
(65, 12, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(66, 12, 'angkatan_kerja', 'number', 'Angkatan Kerja', 0, 1, 1, 1, 1, 1, '{}', 2),
(67, 12, 'pengangguran', 'number', 'Pengangguran', 0, 1, 1, 1, 1, 1, '{}', 3),
(68, 12, 'bkn_angkatan_kerja', 'number', 'Bkn Angkatan Kerja', 0, 1, 1, 1, 1, 1, '{}', 4),
(69, 12, 'sekolah', 'number', 'Sekolah', 0, 1, 1, 1, 1, 1, '{}', 5),
(70, 12, 'urus_ruta', 'number', 'Urus Ruta', 0, 1, 1, 1, 1, 1, '{}', 6),
(71, 12, 'tpak', 'number', 'Tpak', 0, 1, 1, 1, 1, 1, '{}', 7),
(72, 12, 'tkk', 'number', 'Tkk', 0, 1, 1, 1, 1, 1, '{}', 8),
(73, 12, 'tpt', 'number', 'Tpt', 0, 1, 1, 1, 1, 1, '{}', 9),
(74, 12, 'lainnya', 'number', 'Lainnya', 0, 1, 1, 1, 1, 1, '{}', 10),
(75, 12, 'gender', 'select_dropdown', 'Gender', 0, 1, 1, 1, 1, 1, '{\"default\":\"lk\",\"options\":{\"lk\":\"Laki-Laki\",\"pr\":\"Perempuan\"}}', 11),
(76, 12, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 12),
(77, 12, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 13),
(78, 13, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(79, 13, 'kategori', 'select_dropdown', 'Kategori', 0, 1, 1, 1, 1, 1, '{\"default\":\"migas\",\"options\":{\"migas\":\"Migas\",\"non_migas\":\"Non Migas\",\"dist_migas\":\"Distribusi Migas\",\"dist_non_migas\":\"Distribusi Non Migas\",\"pert_migas\":\"Pertumbuhan Migas\",\"pert_non_migas\":\"Pertumbuhan Non Migas\"}}', 2),
(80, 13, 'a', 'number', 'A', 0, 1, 1, 1, 1, 1, '{}', 3),
(81, 13, 'b', 'number', 'B', 0, 1, 1, 1, 1, 1, '{}', 4),
(82, 13, 'c', 'number', 'C', 0, 1, 1, 1, 1, 1, '{}', 5),
(83, 13, 'd', 'number', 'D', 0, 1, 1, 1, 1, 1, '{}', 6),
(84, 13, 'e', 'number', 'E', 0, 1, 1, 1, 1, 1, '{}', 7),
(85, 13, 'f', 'number', 'F', 0, 1, 1, 1, 1, 1, '{}', 8),
(86, 13, 'g', 'number', 'G', 0, 1, 1, 1, 1, 1, '{}', 9),
(87, 13, 'h', 'number', 'H', 0, 1, 1, 1, 1, 1, '{}', 10),
(88, 13, 'i', 'number', 'I', 0, 1, 1, 1, 1, 1, '{}', 11),
(89, 13, 'j', 'number', 'J', 0, 1, 1, 1, 1, 1, '{}', 12),
(90, 13, 'k', 'number', 'K', 0, 1, 1, 1, 1, 1, '{}', 13),
(91, 13, 'l', 'number', 'L', 0, 1, 1, 1, 1, 1, '{}', 14),
(92, 13, 'm_n', 'number', 'M N', 0, 1, 1, 1, 1, 1, '{}', 15),
(93, 13, 'o', 'number', 'O', 0, 1, 1, 1, 1, 1, '{}', 16),
(94, 13, 'p', 'number', 'P', 0, 1, 1, 1, 1, 1, '{}', 17),
(95, 13, 'q', 'number', 'Q', 0, 1, 1, 1, 1, 1, '{}', 18),
(96, 13, 'r_s_t_u', 'number', 'R S T U', 0, 1, 1, 1, 1, 1, '{}', 19),
(97, 13, 'total', 'number', 'Total', 0, 1, 1, 1, 1, 1, '{}', 20),
(98, 13, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 21),
(99, 13, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 22),
(116, 15, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(117, 15, 'a', 'number', 'A', 0, 1, 1, 1, 1, 1, '{}', 2),
(118, 15, 'b', 'number', 'B', 0, 1, 1, 1, 1, 1, '{}', 3),
(119, 15, 'c', 'number', 'C', 0, 1, 1, 1, 1, 1, '{}', 4),
(120, 15, 'd', 'number', 'D', 0, 1, 1, 1, 1, 1, '{}', 5),
(121, 15, 'e', 'number', 'E', 0, 1, 1, 1, 1, 1, '{}', 6),
(122, 15, 'f', 'number', 'F', 0, 1, 1, 1, 1, 1, '{}', 7),
(123, 15, 'g', 'number', 'G', 0, 1, 1, 1, 1, 1, '{}', 8),
(124, 15, 'h', 'number', 'H', 0, 1, 1, 1, 1, 1, '{}', 9),
(125, 15, 'i', 'number', 'I', 0, 1, 1, 1, 1, 1, '{}', 10),
(126, 15, 'j', 'number', 'J', 0, 1, 1, 1, 1, 1, '{}', 11),
(127, 15, 'k', 'number', 'K', 0, 1, 1, 1, 1, 1, '{}', 12),
(128, 15, 'l', 'number', 'L', 0, 1, 1, 1, 1, 1, '{}', 13),
(129, 15, 'm', 'number', 'M', 0, 1, 1, 1, 1, 1, '{}', 14),
(130, 15, 'n', 'number', 'N', 0, 1, 1, 1, 1, 1, '{}', 15),
(131, 15, 'o', 'number', 'O', 0, 1, 1, 1, 1, 1, '{}', 16),
(132, 15, 'p', 'number', 'P', 0, 1, 1, 1, 1, 1, '{}', 17),
(133, 15, 'total', 'number', 'Total', 0, 1, 1, 1, 1, 1, '{}', 18),
(134, 15, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 19),
(135, 15, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 20),
(136, 16, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(137, 16, 'kecamatan', 'select_dropdown', 'Kecamatan', 0, 1, 1, 1, 1, 1, '{\"default\":\"dayeuhluhur\",\"options\":{\"dayeuhluhur\":\"Dayeuhluhur\",\"wanareja\":\"Wanareja\",\"majenang\":\"Majenang\",\"cimanggu\":\"Cimanggu\",\"karangpucung\":\"Karangpucung\",\"cipari\":\"Cipari\",\"sidareja\":\"Sidareja\",\"kedungreja\":\"Kedungreja\",\"patimuan\":\"Patimuan\",\"gandrungmangu\":\"Gandrungmangu\",\"bantarsari\":\"Bantarsari\",\"kawunganten\":\"Kawunganten\",\"kampung_laut\":\"Kampung Laut\",\"jeruklegi\":\"Jeruklegi\",\"kesugihan\":\"Kesugihan\",\"adipala\":\"Adipala\",\"maos\":\"Maos\",\"kroya\":\"Kroya\",\"binangun\":\"Binangun\",\"sampang\":\"Sampang\",\"nusawungu\":\"Nusawungu\",\"cilacap_selatan\":\"Cilacap Selatan\",\"cilacap_tengah\":\"Cilacap Tengah\",\"cilacap_utara\":\"Cilacap Utara\"}}', 2),
(138, 16, 'lk', 'number', 'Lk', 0, 1, 1, 1, 1, 1, '{}', 3),
(139, 16, 'pr', 'number', 'Pr', 0, 1, 1, 1, 1, 1, '{}', 4),
(140, 16, 'total', 'number', 'Total', 0, 1, 1, 1, 1, 1, '{}', 5),
(141, 16, 'rasio_jk', 'number', 'Rasio Jk', 0, 1, 1, 1, 1, 1, '{}', 6),
(142, 16, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 7),
(143, 16, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 8),
(144, 17, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(145, 17, 'nama', 'select_dropdown', 'Nama', 0, 1, 1, 1, 1, 1, '{\"default\":\"cilacap\",\"options\":{\"cilacap\":\"Cilacap\",\"purwokerto\":\"Purwokerto\",\"surakarta\":\"Surakarta\",\"kudus\":\"Kudus\",\"semarang\":\"Semarang\",\"tegal\":\"Tegal\",\"nasional\":\"Nasional\"}}', 2),
(146, 17, 'mtom', 'number', 'Mtom', 0, 1, 1, 1, 1, 1, '{}', 3),
(147, 17, 'ytod', 'number', 'Ytod', 0, 1, 1, 1, 1, 1, '{}', 4),
(148, 17, 'ytoy', 'number', 'Ytoy', 0, 1, 1, 1, 1, 1, '{}', 5),
(149, 17, 'total', 'number', 'Total', 0, 1, 1, 1, 1, 1, '{}', 6),
(150, 17, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 7),
(151, 17, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 8),
(152, 18, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(153, 18, 'pddk', 'select_dropdown', 'Pddk', 0, 1, 1, 1, 1, 1, '{\"default\":\"rendah\",\"options\":{\"rendah\":\"Rendah\",\"sedang\":\"Sedang\",\"tinggi\":\"Tinggi\"}}', 2),
(154, 18, 'jumlah', 'number', 'Jumlah', 0, 1, 1, 1, 1, 1, '{}', 3),
(155, 18, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 4),
(156, 18, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 5),
(157, 19, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(158, 19, 'tpak', 'number', 'Tpak', 0, 1, 1, 1, 1, 1, '{}', 2),
(159, 19, 'tpt', 'number', 'Tpt', 0, 1, 1, 1, 1, 1, '{}', 3),
(160, 19, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 4),
(161, 19, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 5),
(162, 20, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(163, 20, 'kategori', 'select_dropdown', 'Kategori', 0, 1, 1, 1, 1, 1, '{\"default\":\"andil_inflasi\",\"options\":{\"andil_inflasi\":\"Andil Inflasi\",\"tingkat_inflasi\":\"Tingkat Inflasi\"}}', 2),
(164, 20, 'sembako', 'number', 'Sembako', 0, 1, 1, 1, 1, 1, '{}', 3),
(165, 20, 'sandang', 'number', 'Sandang', 0, 1, 1, 1, 1, 1, '{}', 4),
(166, 20, 'perumahan', 'number', 'Perumahan', 0, 1, 1, 1, 1, 1, '{}', 5),
(167, 20, 'kesehatan', 'number', 'Kesehatan', 0, 1, 1, 1, 1, 1, '{}', 6),
(168, 20, 'transportasi', 'number', 'Transportasi', 0, 1, 1, 1, 1, 1, '{}', 7),
(169, 20, 'informasi', 'number', 'Informasi', 0, 1, 1, 1, 1, 1, '{}', 8),
(170, 20, 'rekreasi', 'text', 'Rekreasi', 0, 1, 1, 1, 1, 1, '{}', 9),
(171, 20, 'pendidikan', 'number', 'Pendidikan', 0, 1, 1, 1, 1, 1, '{}', 10),
(172, 20, 'penyedia_pangan', 'number', 'Penyedia Pangan', 0, 1, 1, 1, 1, 1, '{}', 11),
(173, 20, 'perawatan_pribadi', 'number', 'Perawatan Pribadi', 0, 1, 1, 1, 1, 1, '{}', 12),
(174, 20, 'total', 'number', 'Total', 0, 1, 1, 1, 1, 1, '{}', 13),
(175, 20, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 14),
(176, 20, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 15),
(177, 21, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(178, 21, 'pddk_mskn', 'number', 'Pddk Mskn', 0, 1, 1, 1, 1, 1, '{}', 2),
(179, 21, 'p0', 'number', 'P0', 0, 1, 1, 1, 1, 1, '{}', 3),
(180, 21, 'p1', 'number', 'P1', 0, 1, 1, 1, 1, 1, '{}', 4),
(181, 21, 'p2', 'number', 'P2', 0, 1, 1, 1, 1, 1, '{}', 5),
(182, 21, 'gk', 'number', 'Gk', 0, 1, 1, 1, 1, 1, '{}', 6),
(183, 21, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 1, 1, '{}', 7),
(184, 21, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 8);

-- --------------------------------------------------------

--
-- Table structure for table `data_types`
--

CREATE TABLE `data_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT 0,
  `server_side` tinyint(4) NOT NULL DEFAULT 0,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_types`
--

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `details`, `created_at`, `updated_at`) VALUES
(1, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', 'TCG\\Voyager\\Http\\Controllers\\VoyagerUserController', '', 1, 0, NULL, '2022-11-09 04:31:55', '2022-11-09 04:31:55'),
(2, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, NULL, '2022-11-09 04:31:55', '2022-11-09 04:31:55'),
(3, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, 'TCG\\Voyager\\Http\\Controllers\\VoyagerRoleController', '', 1, 0, NULL, '2022-11-09 04:31:55', '2022-11-09 04:31:55'),
(6, 'pages', 'pages', 'Page', 'Pages', 'voyager-file-text', 'TCG\\Voyager\\Models\\Page', NULL, '', '', 1, 0, NULL, '2022-11-09 04:31:56', '2022-11-09 04:31:56'),
(9, 'ipms', 'ipms', 'Ipm', 'Ipms', NULL, 'App\\Models\\Ipm', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2022-11-09 04:52:19', '2022-11-09 04:52:19'),
(10, 'pddk_mskn', 'pddk-mskn', 'Penduduk Miskin', 'Penduduk Miskin', NULL, 'App\\Models\\PddkMskn', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2022-11-09 05:01:22', '2022-11-09 05:01:22'),
(11, 'tenaga_kerja', 'tenaga-kerja', 'Tenaga Kerja', 'Tenaga Kerja', 'voyager-archive', 'App\\Models\\TenagaKerja', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2022-11-09 05:26:52', '2022-11-09 05:26:52'),
(12, 'tenaga_kerjas', 'tenaga-kerjas', 'Tenaga Kerja', 'Tenaga Kerja', 'voyager-archive', 'App\\Models\\TenagaKerja', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2022-11-09 05:56:47', '2022-11-09 05:59:01'),
(13, 'pdrbs', 'pdrbs', 'PDRB', 'PDRB', NULL, 'App\\Models\\Pdrb', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2022-11-09 06:14:13', '2022-11-09 06:14:13'),
(15, 'penduduks', 'penduduks', 'Penduduk', 'Penduduk', 'voyager-people', 'App\\Models\\Penduduk', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2022-11-09 06:34:35', '2022-11-09 06:34:35'),
(16, 'penduduk_kecamatans', 'penduduk-kecamatans', 'Penduduk Kecamatan', 'Penduduk Kecamatan', 'voyager-people', 'App\\Models\\PendudukKecamatan', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2022-11-09 06:44:42', '2022-11-09 06:44:42'),
(17, 'inflasi_kotas', 'inflasi-kotas', 'Inflasi Kota', 'Inflasi Kota', 'voyager-dollar', 'App\\Models\\InflasiKota', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2022-11-09 06:51:43', '2022-11-09 06:51:43'),
(18, 'ketimpangans', 'ketimpangans', 'Ketimpangan', 'Ketimpangan', 'voyager-params', 'App\\Models\\Ketimpangan', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2022-11-09 06:53:55', '2022-11-09 06:53:55'),
(19, 'penganggurans', 'penganggurans', 'Pengangguran', 'Pengangguran', 'voyager-person', 'App\\Models\\Pengangguran', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2022-11-09 06:55:12', '2022-11-09 06:55:12'),
(20, 'inflasis', 'inflasis', 'Inflasi', 'Inflasi', 'voyager-dollar', 'App\\Models\\Inflasi', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2022-11-09 21:46:59', '2022-11-09 21:46:59'),
(21, 'pddk_mskns', 'pddk-mskns', 'Kemiskinan', 'Kemiskinan', 'voyager-people', 'App\\Models\\PddkMskn', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2022-11-09 22:47:00', '2022-11-09 22:47:00');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `inflasis`
--

CREATE TABLE `inflasis` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kategori` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sembako` double DEFAULT NULL,
  `sandang` double DEFAULT NULL,
  `perumahan` double DEFAULT NULL,
  `kesehatan` double DEFAULT NULL,
  `transportasi` double DEFAULT NULL,
  `informasi` double DEFAULT NULL,
  `rekreasi` double DEFAULT NULL,
  `pendidikan` double DEFAULT NULL,
  `penyedia_pangan` double DEFAULT NULL,
  `perawatan_pribadi` double DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `inflasis`
--

INSERT INTO `inflasis` (`id`, `kategori`, `sembako`, `sandang`, `perumahan`, `kesehatan`, `transportasi`, `informasi`, `rekreasi`, `pendidikan`, `penyedia_pangan`, `perawatan_pribadi`, `total`, `created_at`, `updated_at`) VALUES
(1, 'andil_inflasi', 1.022, 0.989, 0.381, 0.803, 0.983, 0.938, 0.109, 0.092, 0.249, 0.098, 1, '2022-11-09 21:58:39', '2022-11-09 21:58:39');

-- --------------------------------------------------------

--
-- Table structure for table `inflasi_kotas`
--

CREATE TABLE `inflasi_kotas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mtom` double DEFAULT NULL,
  `ytod` double DEFAULT NULL,
  `ytoy` double DEFAULT NULL,
  `total` double DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `inflasi_kotas`
--

INSERT INTO `inflasi_kotas` (`id`, `nama`, `mtom`, `ytod`, `ytoy`, `total`, `created_at`, `updated_at`) VALUES
(1, 'cilacap', 1.022, 0.123, 0.0129, 1.029, '2022-11-09 22:03:40', '2022-11-09 22:03:40'),
(2, 'purwokerto', 0.1239, 0.2491, 0.2193, 1.12039, '2022-11-09 22:05:15', '2022-11-09 22:05:15'),
(3, 'surakarta', 0.021, 0.29, 0.123, 1.1203, '2022-11-09 22:06:20', '2022-11-09 22:06:20');

-- --------------------------------------------------------

--
-- Table structure for table `ipms`
--

CREATE TABLE `ipms` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uhh` double DEFAULT NULL,
  `rls` double DEFAULT NULL,
  `hls` double DEFAULT NULL,
  `ppp` double DEFAULT NULL,
  `ipm` double DEFAULT NULL,
  `pertumbuhan` double DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ipms`
--

INSERT INTO `ipms` (`id`, `uhh`, `rls`, `hls`, `ppp`, `ipm`, `pertumbuhan`, `created_at`, `updated_at`) VALUES
(1, 1.09, 2.019, 0.912, 1.249, 0.489, 129, '2022-11-09 04:54:24', '2022-11-09 04:54:24');

-- --------------------------------------------------------

--
-- Table structure for table `ketimpangans`
--

CREATE TABLE `ketimpangans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pddk` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jumlah` double DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ketimpangans`
--

INSERT INTO `ketimpangans` (`id`, `pddk`, `jumlah`, `created_at`, `updated_at`) VALUES
(1, 'rendah', 12301, '2022-11-09 22:17:07', '2022-11-09 22:17:07'),
(2, 'sedang', 12309, '2022-11-09 22:17:19', '2022-11-09 22:17:19'),
(3, 'tinggi', 93092, '2022-11-09 22:17:31', '2022-11-09 22:17:31');

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2022-11-09 04:31:55', '2022-11-09 04:31:55');

-- --------------------------------------------------------

--
-- Table structure for table `menu_items`
--

CREATE TABLE `menu_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
(1, 1, 'Dashboard', '', '_self', 'voyager-boat', NULL, NULL, 1, '2022-11-09 04:31:55', '2022-11-09 04:31:55', 'voyager.dashboard', NULL),
(2, 1, 'Media', '', '_self', 'voyager-images', NULL, NULL, 5, '2022-11-09 04:31:55', '2022-11-09 21:47:57', 'voyager.media.index', NULL),
(3, 1, 'Users', '', '_self', 'voyager-person', NULL, NULL, 4, '2022-11-09 04:31:55', '2022-11-09 21:47:57', 'voyager.users.index', NULL),
(4, 1, 'Roles', '', '_self', 'voyager-lock', NULL, NULL, 3, '2022-11-09 04:31:55', '2022-11-09 21:47:57', 'voyager.roles.index', NULL),
(5, 1, 'Tools', '', '_self', 'voyager-tools', NULL, NULL, 7, '2022-11-09 04:31:55', '2022-11-09 22:47:45', NULL, NULL),
(6, 1, 'Menu Builder', '', '_self', 'voyager-list', NULL, 5, 5, '2022-11-09 04:31:55', '2022-11-09 06:55:51', 'voyager.menus.index', NULL),
(7, 1, 'Database', '', '_self', 'voyager-data', NULL, 5, 1, '2022-11-09 04:31:55', '2022-11-09 05:12:44', 'voyager.database.index', NULL),
(8, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 5, 3, '2022-11-09 04:31:55', '2022-11-09 06:55:51', 'voyager.compass.index', NULL),
(9, 1, 'BREAD', '', '_self', 'voyager-bread', NULL, 5, 4, '2022-11-09 04:31:55', '2022-11-09 06:55:51', 'voyager.bread.index', NULL),
(10, 1, 'Settings', '', '_self', 'voyager-settings', NULL, 5, 2, '2022-11-09 04:31:55', '2022-11-09 06:55:51', 'voyager.settings.index', NULL),
(13, 1, 'Pages', '', '_self', 'voyager-file-text', NULL, NULL, 6, '2022-11-09 04:31:56', '2022-11-09 21:47:57', 'voyager.pages.index', NULL),
(18, 1, 'Data Input', '', '_self', 'voyager-news', '#000000', NULL, 2, '2022-11-09 05:12:31', '2022-11-09 05:15:23', NULL, ''),
(19, 1, 'Ipm', '', '_self', 'voyager-bar-chart', '#000000', 18, 3, '2022-11-09 05:18:52', '2022-11-09 21:48:01', 'voyager.ipms.index', NULL),
(21, 1, 'Tenaga Kerja', '', '_self', 'voyager-archive', NULL, 18, 10, '2022-11-09 05:56:47', '2022-11-09 21:47:57', 'voyager.tenaga-kerjas.index', NULL),
(22, 1, 'PDRB', '', '_self', 'voyager-data', '#000000', 18, 9, '2022-11-09 06:14:13', '2022-11-09 21:47:57', 'voyager.pdrbs.index', 'null'),
(24, 1, 'Penduduk', '', '_self', 'voyager-people', NULL, 18, 6, '2022-11-09 06:34:35', '2022-11-09 22:48:19', 'voyager.penduduks.index', NULL),
(25, 1, 'Penduduk Kecamatan', '', '_self', 'voyager-people', NULL, 18, 7, '2022-11-09 06:44:42', '2022-11-09 22:48:19', 'voyager.penduduk-kecamatans.index', NULL),
(26, 1, 'Inflasi Kota', '', '_self', 'voyager-dollar', NULL, 18, 2, '2022-11-09 06:51:43', '2022-11-09 21:48:01', 'voyager.inflasi-kotas.index', NULL),
(27, 1, 'Ketimpangan', '', '_self', 'voyager-params', NULL, 18, 4, '2022-11-09 06:53:55', '2022-11-09 21:48:01', 'voyager.ketimpangans.index', NULL),
(28, 1, 'Pengangguran', '', '_self', 'voyager-person', NULL, 18, 8, '2022-11-09 06:55:12', '2022-11-09 21:47:57', 'voyager.penganggurans.index', NULL),
(29, 1, 'Inflasi', '', '_self', 'voyager-dollar', NULL, 18, 1, '2022-11-09 21:47:01', '2022-11-09 21:48:01', 'voyager.inflasis.index', NULL),
(30, 1, 'Kemiskinan', '', '_self', 'voyager-people', NULL, 18, 5, '2022-11-09 22:47:00', '2022-11-09 22:48:19', 'voyager.pddk-mskns.index', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_01_01_000000_add_voyager_user_fields', 1),
(4, '2016_01_01_000000_create_data_types_table', 1),
(5, '2016_05_19_173453_create_menu_table', 1),
(6, '2016_10_21_190000_create_roles_table', 1),
(7, '2016_10_21_190000_create_settings_table', 1),
(8, '2016_11_30_135954_create_permission_table', 1),
(9, '2016_11_30_141208_create_permission_role_table', 1),
(10, '2016_12_26_201236_data_types__add__server_side', 1),
(11, '2017_01_13_000000_add_route_to_menu_items_table', 1),
(12, '2017_01_14_005015_create_translations_table', 1),
(13, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 1),
(14, '2017_03_06_000000_add_controller_to_data_types_table', 1),
(15, '2017_04_21_000000_add_order_to_data_rows_table', 1),
(16, '2017_07_05_210000_add_policyname_to_data_types_table', 1),
(17, '2017_08_05_000000_add_group_to_settings_table', 1),
(18, '2017_11_26_013050_add_user_role_relationship', 1),
(19, '2017_11_26_015000_create_user_roles_table', 1),
(20, '2018_03_11_000000_add_user_settings', 1),
(21, '2018_03_14_000000_add_details_to_data_types_table', 1),
(22, '2018_03_16_000000_make_settings_value_nullable', 1),
(23, '2019_08_19_000000_create_failed_jobs_table', 1),
(24, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(25, '2016_01_01_000000_create_pages_table', 2),
(26, '2016_01_01_000000_create_posts_table', 2),
(27, '2016_02_15_204651_create_categories_table', 2),
(28, '2017_04_11_000000_alter_post_nullable_fields_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('ACTIVE','INACTIVE') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'INACTIVE',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `author_id`, `title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `created_at`, `updated_at`) VALUES
(1, 0, 'Hello World', 'Hang the jib grog grog blossom grapple dance the hempen jig gangway pressgang bilge rat to go on account lugger. Nelsons folly gabion line draught scallywag fire ship gaff fluke fathom case shot. Sea Legs bilge rat sloop matey gabion long clothes run a shot across the bow Gold Road cog league.', '<p>Hello World. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', 'pages/page1.jpg', 'hello-world', 'Yar Meta Description', 'Keyword1, Keyword2', 'ACTIVE', '2022-11-09 04:31:56', '2022-11-09 04:31:56');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pddk_mskns`
--

CREATE TABLE `pddk_mskns` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pddk_mskn` double DEFAULT NULL,
  `p0` double DEFAULT NULL,
  `p1` double DEFAULT NULL,
  `p2` double DEFAULT NULL,
  `gk` double DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pdrbs`
--

CREATE TABLE `pdrbs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kategori` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a` double DEFAULT NULL,
  `b` double DEFAULT NULL,
  `c` double DEFAULT NULL,
  `d` double DEFAULT NULL,
  `e` double DEFAULT NULL,
  `f` double DEFAULT NULL,
  `g` double DEFAULT NULL,
  `h` double DEFAULT NULL,
  `i` double DEFAULT NULL,
  `j` double DEFAULT NULL,
  `k` double DEFAULT NULL,
  `l` double DEFAULT NULL,
  `m_n` double DEFAULT NULL,
  `o` double DEFAULT NULL,
  `p` double DEFAULT NULL,
  `q` double DEFAULT NULL,
  `r_s_t_u` double DEFAULT NULL,
  `total` double DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `penduduks`
--

CREATE TABLE `penduduks` (
  `id` int(10) UNSIGNED NOT NULL,
  `a` int(11) DEFAULT NULL,
  `b` int(11) DEFAULT NULL,
  `c` int(11) DEFAULT NULL,
  `d` int(11) DEFAULT NULL,
  `e` int(11) DEFAULT NULL,
  `f` int(11) DEFAULT NULL,
  `g` int(11) DEFAULT NULL,
  `h` int(11) DEFAULT NULL,
  `i` int(11) DEFAULT NULL,
  `j` int(11) DEFAULT NULL,
  `k` int(11) DEFAULT NULL,
  `l` int(11) DEFAULT NULL,
  `m` int(11) DEFAULT NULL,
  `n` int(11) DEFAULT NULL,
  `o` int(11) DEFAULT NULL,
  `p` int(11) DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `penduduks`
--

INSERT INTO `penduduks` (`id`, `a`, `b`, `c`, `d`, `e`, `f`, `g`, `h`, `i`, `j`, `k`, `l`, `m`, `n`, `o`, `p`, `total`, `created_at`, `updated_at`) VALUES
(1, 12039, 221098, 9821, 10982, 109842, 93, 1219, 1982, 9127, 9182, 98217, 3912, 19827, 19827, 981, 19827, 293840, '2022-11-09 22:19:23', '2022-11-09 22:19:23');

-- --------------------------------------------------------

--
-- Table structure for table `penduduk_kecamatans`
--

CREATE TABLE `penduduk_kecamatans` (
  `id` int(10) UNSIGNED NOT NULL,
  `kecamatan` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lk` int(11) DEFAULT NULL,
  `pr` int(11) DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  `rasio_jk` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `penduduk_kecamatans`
--

INSERT INTO `penduduk_kecamatans` (`id`, `kecamatan`, `lk`, `pr`, `total`, `rasio_jk`, `created_at`, `updated_at`) VALUES
(1, 'dayeuhluhur', 3298, 2193, 123981, 1, '2022-11-09 22:20:10', '2022-11-09 22:20:10');

-- --------------------------------------------------------

--
-- Table structure for table `penganggurans`
--

CREATE TABLE `penganggurans` (
  `id` int(10) UNSIGNED NOT NULL,
  `tpak` double DEFAULT NULL,
  `tpt` double DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES
(1, 'browse_admin', NULL, '2022-11-09 04:31:55', '2022-11-09 04:31:55'),
(2, 'browse_bread', NULL, '2022-11-09 04:31:55', '2022-11-09 04:31:55'),
(3, 'browse_database', NULL, '2022-11-09 04:31:55', '2022-11-09 04:31:55'),
(4, 'browse_media', NULL, '2022-11-09 04:31:55', '2022-11-09 04:31:55'),
(5, 'browse_compass', NULL, '2022-11-09 04:31:55', '2022-11-09 04:31:55'),
(6, 'browse_menus', 'menus', '2022-11-09 04:31:55', '2022-11-09 04:31:55'),
(7, 'read_menus', 'menus', '2022-11-09 04:31:55', '2022-11-09 04:31:55'),
(8, 'edit_menus', 'menus', '2022-11-09 04:31:55', '2022-11-09 04:31:55'),
(9, 'add_menus', 'menus', '2022-11-09 04:31:55', '2022-11-09 04:31:55'),
(10, 'delete_menus', 'menus', '2022-11-09 04:31:55', '2022-11-09 04:31:55'),
(11, 'browse_roles', 'roles', '2022-11-09 04:31:55', '2022-11-09 04:31:55'),
(12, 'read_roles', 'roles', '2022-11-09 04:31:55', '2022-11-09 04:31:55'),
(13, 'edit_roles', 'roles', '2022-11-09 04:31:55', '2022-11-09 04:31:55'),
(14, 'add_roles', 'roles', '2022-11-09 04:31:55', '2022-11-09 04:31:55'),
(15, 'delete_roles', 'roles', '2022-11-09 04:31:55', '2022-11-09 04:31:55'),
(16, 'browse_users', 'users', '2022-11-09 04:31:55', '2022-11-09 04:31:55'),
(17, 'read_users', 'users', '2022-11-09 04:31:55', '2022-11-09 04:31:55'),
(18, 'edit_users', 'users', '2022-11-09 04:31:55', '2022-11-09 04:31:55'),
(19, 'add_users', 'users', '2022-11-09 04:31:55', '2022-11-09 04:31:55'),
(20, 'delete_users', 'users', '2022-11-09 04:31:55', '2022-11-09 04:31:55'),
(21, 'browse_settings', 'settings', '2022-11-09 04:31:55', '2022-11-09 04:31:55'),
(22, 'read_settings', 'settings', '2022-11-09 04:31:55', '2022-11-09 04:31:55'),
(23, 'edit_settings', 'settings', '2022-11-09 04:31:55', '2022-11-09 04:31:55'),
(24, 'add_settings', 'settings', '2022-11-09 04:31:55', '2022-11-09 04:31:55'),
(25, 'delete_settings', 'settings', '2022-11-09 04:31:55', '2022-11-09 04:31:55'),
(36, 'browse_pages', 'pages', '2022-11-09 04:31:56', '2022-11-09 04:31:56'),
(37, 'read_pages', 'pages', '2022-11-09 04:31:56', '2022-11-09 04:31:56'),
(38, 'edit_pages', 'pages', '2022-11-09 04:31:56', '2022-11-09 04:31:56'),
(39, 'add_pages', 'pages', '2022-11-09 04:31:56', '2022-11-09 04:31:56'),
(40, 'delete_pages', 'pages', '2022-11-09 04:31:56', '2022-11-09 04:31:56'),
(41, 'browse_ipms', 'ipms', '2022-11-09 04:52:19', '2022-11-09 04:52:19'),
(42, 'read_ipms', 'ipms', '2022-11-09 04:52:19', '2022-11-09 04:52:19'),
(43, 'edit_ipms', 'ipms', '2022-11-09 04:52:19', '2022-11-09 04:52:19'),
(44, 'add_ipms', 'ipms', '2022-11-09 04:52:19', '2022-11-09 04:52:19'),
(45, 'delete_ipms', 'ipms', '2022-11-09 04:52:19', '2022-11-09 04:52:19'),
(46, 'browse_pddk_mskn', 'pddk_mskn', '2022-11-09 05:01:22', '2022-11-09 05:01:22'),
(47, 'read_pddk_mskn', 'pddk_mskn', '2022-11-09 05:01:22', '2022-11-09 05:01:22'),
(48, 'edit_pddk_mskn', 'pddk_mskn', '2022-11-09 05:01:22', '2022-11-09 05:01:22'),
(49, 'add_pddk_mskn', 'pddk_mskn', '2022-11-09 05:01:22', '2022-11-09 05:01:22'),
(50, 'delete_pddk_mskn', 'pddk_mskn', '2022-11-09 05:01:22', '2022-11-09 05:01:22'),
(51, 'browse_tenaga_kerja', 'tenaga_kerja', '2022-11-09 05:26:52', '2022-11-09 05:26:52'),
(52, 'read_tenaga_kerja', 'tenaga_kerja', '2022-11-09 05:26:52', '2022-11-09 05:26:52'),
(53, 'edit_tenaga_kerja', 'tenaga_kerja', '2022-11-09 05:26:52', '2022-11-09 05:26:52'),
(54, 'add_tenaga_kerja', 'tenaga_kerja', '2022-11-09 05:26:52', '2022-11-09 05:26:52'),
(55, 'delete_tenaga_kerja', 'tenaga_kerja', '2022-11-09 05:26:52', '2022-11-09 05:26:52'),
(56, 'browse_tenaga_kerjas', 'tenaga_kerjas', '2022-11-09 05:56:47', '2022-11-09 05:56:47'),
(57, 'read_tenaga_kerjas', 'tenaga_kerjas', '2022-11-09 05:56:47', '2022-11-09 05:56:47'),
(58, 'edit_tenaga_kerjas', 'tenaga_kerjas', '2022-11-09 05:56:47', '2022-11-09 05:56:47'),
(59, 'add_tenaga_kerjas', 'tenaga_kerjas', '2022-11-09 05:56:47', '2022-11-09 05:56:47'),
(60, 'delete_tenaga_kerjas', 'tenaga_kerjas', '2022-11-09 05:56:47', '2022-11-09 05:56:47'),
(61, 'browse_pdrbs', 'pdrbs', '2022-11-09 06:14:13', '2022-11-09 06:14:13'),
(62, 'read_pdrbs', 'pdrbs', '2022-11-09 06:14:13', '2022-11-09 06:14:13'),
(63, 'edit_pdrbs', 'pdrbs', '2022-11-09 06:14:13', '2022-11-09 06:14:13'),
(64, 'add_pdrbs', 'pdrbs', '2022-11-09 06:14:13', '2022-11-09 06:14:13'),
(65, 'delete_pdrbs', 'pdrbs', '2022-11-09 06:14:13', '2022-11-09 06:14:13'),
(71, 'browse_penduduks', 'penduduks', '2022-11-09 06:34:35', '2022-11-09 06:34:35'),
(72, 'read_penduduks', 'penduduks', '2022-11-09 06:34:35', '2022-11-09 06:34:35'),
(73, 'edit_penduduks', 'penduduks', '2022-11-09 06:34:35', '2022-11-09 06:34:35'),
(74, 'add_penduduks', 'penduduks', '2022-11-09 06:34:35', '2022-11-09 06:34:35'),
(75, 'delete_penduduks', 'penduduks', '2022-11-09 06:34:35', '2022-11-09 06:34:35'),
(76, 'browse_penduduk_kecamatans', 'penduduk_kecamatans', '2022-11-09 06:44:42', '2022-11-09 06:44:42'),
(77, 'read_penduduk_kecamatans', 'penduduk_kecamatans', '2022-11-09 06:44:42', '2022-11-09 06:44:42'),
(78, 'edit_penduduk_kecamatans', 'penduduk_kecamatans', '2022-11-09 06:44:42', '2022-11-09 06:44:42'),
(79, 'add_penduduk_kecamatans', 'penduduk_kecamatans', '2022-11-09 06:44:42', '2022-11-09 06:44:42'),
(80, 'delete_penduduk_kecamatans', 'penduduk_kecamatans', '2022-11-09 06:44:42', '2022-11-09 06:44:42'),
(81, 'browse_inflasi_kotas', 'inflasi_kotas', '2022-11-09 06:51:43', '2022-11-09 06:51:43'),
(82, 'read_inflasi_kotas', 'inflasi_kotas', '2022-11-09 06:51:43', '2022-11-09 06:51:43'),
(83, 'edit_inflasi_kotas', 'inflasi_kotas', '2022-11-09 06:51:43', '2022-11-09 06:51:43'),
(84, 'add_inflasi_kotas', 'inflasi_kotas', '2022-11-09 06:51:43', '2022-11-09 06:51:43'),
(85, 'delete_inflasi_kotas', 'inflasi_kotas', '2022-11-09 06:51:43', '2022-11-09 06:51:43'),
(86, 'browse_ketimpangans', 'ketimpangans', '2022-11-09 06:53:55', '2022-11-09 06:53:55'),
(87, 'read_ketimpangans', 'ketimpangans', '2022-11-09 06:53:55', '2022-11-09 06:53:55'),
(88, 'edit_ketimpangans', 'ketimpangans', '2022-11-09 06:53:55', '2022-11-09 06:53:55'),
(89, 'add_ketimpangans', 'ketimpangans', '2022-11-09 06:53:55', '2022-11-09 06:53:55'),
(90, 'delete_ketimpangans', 'ketimpangans', '2022-11-09 06:53:55', '2022-11-09 06:53:55'),
(91, 'browse_penganggurans', 'penganggurans', '2022-11-09 06:55:12', '2022-11-09 06:55:12'),
(92, 'read_penganggurans', 'penganggurans', '2022-11-09 06:55:12', '2022-11-09 06:55:12'),
(93, 'edit_penganggurans', 'penganggurans', '2022-11-09 06:55:12', '2022-11-09 06:55:12'),
(94, 'add_penganggurans', 'penganggurans', '2022-11-09 06:55:12', '2022-11-09 06:55:12'),
(95, 'delete_penganggurans', 'penganggurans', '2022-11-09 06:55:12', '2022-11-09 06:55:12'),
(96, 'browse_inflasis', 'inflasis', '2022-11-09 21:47:00', '2022-11-09 21:47:00'),
(97, 'read_inflasis', 'inflasis', '2022-11-09 21:47:00', '2022-11-09 21:47:00'),
(98, 'edit_inflasis', 'inflasis', '2022-11-09 21:47:00', '2022-11-09 21:47:00'),
(99, 'add_inflasis', 'inflasis', '2022-11-09 21:47:00', '2022-11-09 21:47:00'),
(100, 'delete_inflasis', 'inflasis', '2022-11-09 21:47:00', '2022-11-09 21:47:00'),
(101, 'browse_pddk_mskns', 'pddk_mskns', '2022-11-09 22:47:00', '2022-11-09 22:47:00'),
(102, 'read_pddk_mskns', 'pddk_mskns', '2022-11-09 22:47:00', '2022-11-09 22:47:00'),
(103, 'edit_pddk_mskns', 'pddk_mskns', '2022-11-09 22:47:00', '2022-11-09 22:47:00'),
(104, 'add_pddk_mskns', 'pddk_mskns', '2022-11-09 22:47:00', '2022-11-09 22:47:00'),
(105, 'delete_pddk_mskns', 'pddk_mskns', '2022-11-09 22:47:00', '2022-11-09 22:47:00');

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(41, 1),
(42, 1),
(43, 1),
(44, 1),
(45, 1),
(46, 1),
(47, 1),
(48, 1),
(49, 1),
(50, 1),
(51, 1),
(52, 1),
(53, 1),
(54, 1),
(55, 1),
(56, 1),
(57, 1),
(58, 1),
(59, 1),
(60, 1),
(61, 1),
(62, 1),
(63, 1),
(64, 1),
(65, 1),
(71, 1),
(72, 1),
(73, 1),
(74, 1),
(75, 1),
(76, 1),
(77, 1),
(78, 1),
(79, 1),
(80, 1),
(81, 1),
(82, 1),
(83, 1),
(84, 1),
(85, 1),
(86, 1),
(87, 1),
(88, 1),
(89, 1),
(90, 1),
(91, 1),
(92, 1),
(93, 1),
(94, 1),
(95, 1),
(96, 1),
(97, 1),
(98, 1),
(99, 1),
(100, 1),
(101, 1),
(102, 1),
(103, 1),
(104, 1),
(105, 1);

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Administrator', '2022-11-09 04:31:55', '2022-11-09 04:31:55'),
(2, 'user', 'Normal User', '2022-11-09 04:31:55', '2022-11-09 04:31:55');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT 1,
  `group` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES
(1, 'site.title', 'Site Title', 'ASAP', '', 'text', 1, 'Site'),
(2, 'site.description', 'Site Description', 'Site Description', '', 'text', 2, 'Site'),
(3, 'site.logo', 'Site Logo', '', '', 'image', 3, 'Site'),
(4, 'site.google_analytics_tracking_id', 'Google Analytics Tracking ID', NULL, '', 'text', 4, 'Site'),
(5, 'admin.bg_image', 'Admin Background Image', '', '', 'image', 5, 'Admin'),
(6, 'admin.title', 'Admin Title', 'ASAP Admin', '', 'text', 1, 'Admin'),
(7, 'admin.description', 'Admin Description', 'Selamat datang di Administrator Dashboard ASAP', '', 'text', 2, 'Admin'),
(8, 'admin.loader', 'Admin Loader', '', '', 'image', 3, 'Admin'),
(9, 'admin.icon_image', 'Admin Icon Image', '', '', 'image', 4, 'Admin'),
(10, 'admin.google_analytics_client_id', 'Google Analytics Client ID (used for admin dashboard)', NULL, '', 'text', 1, 'Admin');

-- --------------------------------------------------------

--
-- Table structure for table `tenaga_kerjas`
--

CREATE TABLE `tenaga_kerjas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `angkatan_kerja` double DEFAULT NULL,
  `pengangguran` double DEFAULT NULL,
  `bkn_angkatan_kerja` double DEFAULT NULL,
  `sekolah` double DEFAULT NULL,
  `urus_ruta` double DEFAULT NULL,
  `tpak` double DEFAULT NULL,
  `tkk` double DEFAULT NULL,
  `tpt` double DEFAULT NULL,
  `lainnya` double DEFAULT NULL,
  `gender` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tenaga_kerjas`
--

INSERT INTO `tenaga_kerjas` (`id`, `angkatan_kerja`, `pengangguran`, `bkn_angkatan_kerja`, `sekolah`, `urus_ruta`, `tpak`, `tkk`, `tpt`, `lainnya`, `gender`, `created_at`, `updated_at`) VALUES
(1, 10.21, 102.12, 0.911, 0.01239, 0.394, 0.219, 0.129, 0.399, 1.982, 'lk', '2022-11-09 05:59:53', '2022-11-09 05:59:53');

-- --------------------------------------------------------

--
-- Table structure for table `translations`
--

CREATE TABLE `translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int(10) UNSIGNED NOT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `translations`
--

INSERT INTO `translations` (`id`, `table_name`, `column_name`, `foreign_key`, `locale`, `value`, `created_at`, `updated_at`) VALUES
(1, 'data_types', 'display_name_singular', 5, 'pt', 'Post', '2022-11-09 04:31:56', '2022-11-09 04:31:56'),
(2, 'data_types', 'display_name_singular', 6, 'pt', 'Página', '2022-11-09 04:31:56', '2022-11-09 04:31:56'),
(3, 'data_types', 'display_name_singular', 1, 'pt', 'Utilizador', '2022-11-09 04:31:56', '2022-11-09 04:31:56'),
(4, 'data_types', 'display_name_singular', 4, 'pt', 'Categoria', '2022-11-09 04:31:56', '2022-11-09 04:31:56'),
(5, 'data_types', 'display_name_singular', 2, 'pt', 'Menu', '2022-11-09 04:31:56', '2022-11-09 04:31:56'),
(6, 'data_types', 'display_name_singular', 3, 'pt', 'Função', '2022-11-09 04:31:56', '2022-11-09 04:31:56'),
(7, 'data_types', 'display_name_plural', 5, 'pt', 'Posts', '2022-11-09 04:31:56', '2022-11-09 04:31:56'),
(8, 'data_types', 'display_name_plural', 6, 'pt', 'Páginas', '2022-11-09 04:31:56', '2022-11-09 04:31:56'),
(9, 'data_types', 'display_name_plural', 1, 'pt', 'Utilizadores', '2022-11-09 04:31:56', '2022-11-09 04:31:56'),
(10, 'data_types', 'display_name_plural', 4, 'pt', 'Categorias', '2022-11-09 04:31:56', '2022-11-09 04:31:56'),
(11, 'data_types', 'display_name_plural', 2, 'pt', 'Menus', '2022-11-09 04:31:56', '2022-11-09 04:31:56'),
(12, 'data_types', 'display_name_plural', 3, 'pt', 'Funções', '2022-11-09 04:31:56', '2022-11-09 04:31:56'),
(13, 'categories', 'slug', 1, 'pt', 'categoria-1', '2022-11-09 04:31:56', '2022-11-09 04:31:56'),
(14, 'categories', 'name', 1, 'pt', 'Categoria 1', '2022-11-09 04:31:56', '2022-11-09 04:31:56'),
(15, 'categories', 'slug', 2, 'pt', 'categoria-2', '2022-11-09 04:31:56', '2022-11-09 04:31:56'),
(16, 'categories', 'name', 2, 'pt', 'Categoria 2', '2022-11-09 04:31:56', '2022-11-09 04:31:56'),
(17, 'pages', 'title', 1, 'pt', 'Olá Mundo', '2022-11-09 04:31:56', '2022-11-09 04:31:56'),
(18, 'pages', 'slug', 1, 'pt', 'ola-mundo', '2022-11-09 04:31:56', '2022-11-09 04:31:56'),
(19, 'pages', 'body', 1, 'pt', '<p>Olá Mundo. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\r\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', '2022-11-09 04:31:56', '2022-11-09 04:31:56'),
(20, 'menu_items', 'title', 1, 'pt', 'Painel de Controle', '2022-11-09 04:31:56', '2022-11-09 04:31:56'),
(21, 'menu_items', 'title', 2, 'pt', 'Media', '2022-11-09 04:31:56', '2022-11-09 04:31:56'),
(22, 'menu_items', 'title', 12, 'pt', 'Publicações', '2022-11-09 04:31:56', '2022-11-09 04:31:56'),
(23, 'menu_items', 'title', 3, 'pt', 'Utilizadores', '2022-11-09 04:31:56', '2022-11-09 04:31:56'),
(24, 'menu_items', 'title', 11, 'pt', 'Categorias', '2022-11-09 04:31:56', '2022-11-09 04:31:56'),
(25, 'menu_items', 'title', 13, 'pt', 'Páginas', '2022-11-09 04:31:56', '2022-11-09 04:31:56'),
(26, 'menu_items', 'title', 4, 'pt', 'Funções', '2022-11-09 04:31:56', '2022-11-09 04:31:56'),
(27, 'menu_items', 'title', 5, 'pt', 'Ferramentas', '2022-11-09 04:31:56', '2022-11-09 04:31:56'),
(28, 'menu_items', 'title', 6, 'pt', 'Menus', '2022-11-09 04:31:56', '2022-11-09 04:31:56'),
(29, 'menu_items', 'title', 7, 'pt', 'Base de dados', '2022-11-09 04:31:56', '2022-11-09 04:31:56'),
(30, 'menu_items', 'title', 10, 'pt', 'Configurações', '2022-11-09 04:31:56', '2022-11-09 04:31:56');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `email_verified_at`, `password`, `remember_token`, `settings`, `created_at`, `updated_at`) VALUES
(1, 1, 'Admin', 'admin@admin.com', 'users/default.png', NULL, '$2y$10$y62HKafjVYnO7wHUZdwPb.T.44oCnDzPgDxyIz.pGkCZnddcuUnxm', 'fZqRAnaafsoPEu1rJVlEoAarY3hhvXTtGSIkIXXfqvob0berd72OT1HVunr2', NULL, '2022-11-09 04:31:56', '2022-11-09 04:31:56');

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

CREATE TABLE `user_roles` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `data_rows`
--
ALTER TABLE `data_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `data_rows_data_type_id_foreign` (`data_type_id`);

--
-- Indexes for table `data_types`
--
ALTER TABLE `data_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `data_types_name_unique` (`name`),
  ADD UNIQUE KEY `data_types_slug_unique` (`slug`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `inflasis`
--
ALTER TABLE `inflasis`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inflasi_kotas`
--
ALTER TABLE `inflasi_kotas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ipms`
--
ALTER TABLE `ipms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ketimpangans`
--
ALTER TABLE `ketimpangans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_name_unique` (`name`);

--
-- Indexes for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_items_menu_id_foreign` (`menu_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pages_slug_unique` (`slug`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `pddk_mskns`
--
ALTER TABLE `pddk_mskns`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pdrbs`
--
ALTER TABLE `pdrbs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `penduduks`
--
ALTER TABLE `penduduks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `penduduk_kecamatans`
--
ALTER TABLE `penduduk_kecamatans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `penganggurans`
--
ALTER TABLE `penganggurans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permissions_key_index` (`key`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_permission_id_index` (`permission_id`),
  ADD KEY `permission_role_role_id_index` (`role_id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Indexes for table `tenaga_kerjas`
--
ALTER TABLE `tenaga_kerjas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- Indexes for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `user_roles_user_id_index` (`user_id`),
  ADD KEY `user_roles_role_id_index` (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `data_rows`
--
ALTER TABLE `data_rows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=185;

--
-- AUTO_INCREMENT for table `data_types`
--
ALTER TABLE `data_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `inflasis`
--
ALTER TABLE `inflasis`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `inflasi_kotas`
--
ALTER TABLE `inflasi_kotas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `ipms`
--
ALTER TABLE `ipms`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ketimpangans`
--
ALTER TABLE `ketimpangans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pddk_mskns`
--
ALTER TABLE `pddk_mskns`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pdrbs`
--
ALTER TABLE `pdrbs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `penduduks`
--
ALTER TABLE `penduduks`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `penduduk_kecamatans`
--
ALTER TABLE `penduduk_kecamatans`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `penganggurans`
--
ALTER TABLE `penganggurans`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tenaga_kerjas`
--
ALTER TABLE `tenaga_kerjas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `data_rows`
--
ALTER TABLE `data_rows`
  ADD CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

--
-- Constraints for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
