-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 24 Okt 2023 pada 07.23
-- Versi server: 10.4.22-MariaDB
-- Versi PHP: 8.0.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_gramercy`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_cluster`
--

CREATE TABLE `tbl_cluster` (
  `cluster_id` int(11) NOT NULL,
  `cluster_name` varchar(128) NOT NULL,
  `cluster_cover` varchar(128) NOT NULL,
  `createtime` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_cluster`
--

INSERT INTO `tbl_cluster` (`cluster_id`, `cluster_name`, `cluster_cover`, `createtime`) VALUES
(3, 'Wellness', 'cluster-3-20231023083542.jpg', '2023-10-23 00:35:42'),
(4, 'Out Door GYM', 'cluster-20231023083302.jpg', '2023-10-23 00:33:02'),
(5, 'Swimming Pool', 'cluster-5-20231023083552.jpg', '2023-10-23 00:35:52'),
(6, 'Living World', 'cluster-20231023083528.jpg', '2023-10-23 00:35:28'),
(7, 'Pasar 8', 'cluster-20231023083604.jpg', '2023-10-23 00:36:04'),
(8, 'Basket Ball Court', 'cluster-20231023083639.jpg', '2023-10-23 00:36:39');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_faq`
--

CREATE TABLE `tbl_faq` (
  `faq_id` int(11) NOT NULL,
  `faq_question` text NOT NULL,
  `faq_answer` text NOT NULL,
  `createtime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_faq`
--

INSERT INTO `tbl_faq` (`faq_id`, `faq_question`, `faq_answer`, `createtime`) VALUES
(1, 'jelaskan tentang Website puskesmas mekar', 'Website puskesmas mekar dan e-medicord  ini dibuat oleh Muh. Fadjrul Falakh sebagai implementasi dari keilmuan yang dimiliki untuk sebagai syarat kelulusan Sarjana Teknik Informatika di Universitas Halu Oleo, Fakultas Teknik, Jurusan Teknik Informatika.', '2022-11-30 02:23:27'),
(3, 'DImana Lokasi Puskesmas Mekar', 'Jl. Laremba, Kadia Komp. RCTI Kadia', '2022-12-11 03:49:09'),
(4, 'Apa itu e-medicord', 'e-medicord merupakan aplikasi rekam medis elektronik untuk  menyimpan data-data rekam medis pasien puskesmas mekar', '2022-12-11 03:50:48'),
(5, 'Apakah e-medicord aman', 'e-medicord dilengkapi dengan enkripsi database sehingga dapat menambah keamanan data-data rekam medis pasien', '2022-12-14 19:00:56');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_gallery`
--

CREATE TABLE `tbl_gallery` (
  `gallery_id` int(24) NOT NULL,
  `gallery_name` varchar(128) NOT NULL,
  `gallery_image` varchar(128) NOT NULL,
  `gallery_description` text NOT NULL,
  `unit_id` int(24) NOT NULL,
  `gallery_category_id` int(24) NOT NULL,
  `createtime` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_gallery`
--

INSERT INTO `tbl_gallery` (`gallery_id`, `gallery_name`, `gallery_image`, `gallery_description`, `unit_id`, `gallery_category_id`, `createtime`) VALUES
(1, 'Living Room Deluxe', 'lush.png', 'tes', 1, 3, '2023-10-21 07:12:41'),
(2, 'roomss', 'gallery-1-20231021132254.jpg', 'master room with 3x4 meters', 1, 2, '2023-10-21 05:22:54'),
(4, 'Alca Room', 'gallery-7-20231021124612.jpg', 'tes', 1, 2, '2023-10-23 19:26:37');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_gallery_category`
--

CREATE TABLE `tbl_gallery_category` (
  `gallery_category_id` int(24) NOT NULL,
  `gallery_category_name` varchar(128) NOT NULL,
  `createtime` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_gallery_category`
--

INSERT INTO `tbl_gallery_category` (`gallery_category_id`, `gallery_category_name`, `createtime`) VALUES
(1, 'Living , Dining and Pantry Room', '2023-10-20 19:02:31'),
(2, 'Master Bedroom & Walk in Closet', '2023-10-20 19:02:55'),
(3, 'Walk in Closet & Second Master Bedroom', '2023-10-20 19:03:05'),
(4, 'House Plan', '2023-10-20 19:03:11');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_group`
--

CREATE TABLE `tbl_group` (
  `group_id` int(11) NOT NULL,
  `group_name` varchar(50) NOT NULL,
  `createtime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_group`
--

INSERT INTO `tbl_group` (`group_id`, `group_name`, `createtime`) VALUES
(1, 'Super Admin', '2021-02-02 19:26:11'),
(2, 'Administrator', '2021-02-05 14:03:49'),
(4, 'Inputer', '2023-10-21 09:11:38');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_log`
--

CREATE TABLE `tbl_log` (
  `log_id` int(11) NOT NULL,
  `log_time` datetime NOT NULL,
  `log_message` varchar(200) NOT NULL,
  `log_ipaddress` varchar(30) NOT NULL,
  `user_id` int(11) NOT NULL,
  `createtime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_log`
--

INSERT INTO `tbl_log` (`log_id`, `log_time`, `log_message`, `log_ipaddress`, `user_id`, `createtime`) VALUES
(1, '2022-10-05 11:28:08', 'Administrator CoreIgniter melakukan login ke sistem', '127.0.0.1', 1, '2022-10-05 11:28:08'),
(537, '2022-11-24 00:21:57', 'Muh. Fadjrul Falakh melakukan login ke sistem', '::1', 1, '2022-11-24 00:21:57'),
(538, '2022-11-24 00:40:39', 'Muh. Fadjrul Falakh melakukan login ke sistem', '::1', 1, '2022-11-24 00:40:39'),
(539, '2022-11-24 00:42:13', 'Muh. Fadjrul Falakh melakukan login ke sistem', '::1', 1, '2022-11-24 00:42:13'),
(540, '2022-11-24 13:39:18', 'Muh. Fadjrul Falakh melakukan login ke sistem', '::1', 1, '2022-11-24 13:39:18'),
(541, '2022-11-24 18:16:13', 'Muh. Fadjrul Falakh melakukan login ke sistem', '::1', 1, '2022-11-24 18:16:13'),
(542, '2022-11-25 10:31:35', 'Muh. Fadjrul Falakh melakukan login ke sistem', '::1', 1, '2022-11-25 10:31:35'),
(543, '2022-11-25 11:20:35', 'Muh. Fadjrul Falakh melakukan login ke sistem', '::1', 1, '2022-11-25 11:20:35'),
(544, '2022-11-25 14:25:10', 'administrator menambah data group Pengelola Berita', '::1', 1, '2022-11-25 14:25:10'),
(545, '2022-11-25 14:33:35', 'administrator mengubah data group dengan ID =  - Pengelolah Berita', '::1', 1, '2022-11-25 14:33:35'),
(546, '2022-11-25 15:55:50', 'Muh. Fadjrul Falakh melakukan login ke sistem', '::1', 1, '2022-11-25 15:55:50'),
(547, '2022-11-25 16:03:41', 'administrator menghapus data slider dengan ID = 4 - 4', '::1', 1, '2022-11-25 16:03:41'),
(548, '2022-11-25 16:04:00', 'administrator menambah data slider dengan name = slider-20221125160400.jpg', '::1', 1, '2022-11-25 16:04:00'),
(549, '2022-11-25 17:49:21', 'administrator menambah data slider dengan name = slider-20221125174921.jpg', '::1', 1, '2022-11-25 17:49:21'),
(550, '2022-11-25 18:51:09', 'administrator menghapus data slider dengan ID = 3 - 3', '::1', 1, '2022-11-25 18:51:09'),
(551, '2022-11-25 18:51:19', 'administrator menambah data slider dengan name = slider-20221125185119.jpg', '::1', 1, '2022-11-25 18:51:19'),
(552, '2022-11-25 18:53:44', 'administrator menghapus data slider dengan ID = 2 - 2', '::1', 1, '2022-11-25 18:53:44'),
(553, '2022-11-25 18:57:54', 'administrator menghapus data slider dengan ID = 5 - 5', '::1', 1, '2022-11-25 18:57:54'),
(554, '2022-11-25 18:58:04', 'administrator menambah data slider dengan name = slider-20221125185804.jpg', '::1', 1, '2022-11-25 18:58:04'),
(555, '2022-11-25 19:01:03', 'administrator menghapus data slider dengan ID = 8 - 8', '::1', 1, '2022-11-25 19:01:03'),
(556, '2022-11-25 19:01:16', 'administrator menambah data slider dengan name = slider-20221125190115.jpg', '::1', 1, '2022-11-25 19:01:16'),
(557, '2022-11-25 19:05:45', 'administrator menghapus data slider dengan ID = 7 - 7', '::1', 1, '2022-11-25 19:05:45'),
(558, '2022-11-25 19:05:53', 'administrator menambah data slider dengan name = slider-20221125190553.jpg', '::1', 1, '2022-11-25 19:05:53'),
(559, '2022-11-25 21:47:27', 'Muh. Fadjrul Falakh melakukan login ke sistem', '::1', 1, '2022-11-25 21:47:27'),
(560, '2022-11-26 00:59:42', 'Muh. Fadjrul Falakh melakukan login ke sistem', '::1', 1, '2022-11-26 00:59:42'),
(561, '2022-11-26 01:47:11', 'administrator menambah data slider dengan name = slider-20221126014711.png', '::1', 1, '2022-11-26 01:47:11'),
(562, '2022-11-26 16:31:00', 'Muh. Fadjrul Falakh melakukan login ke sistem', '::1', 1, '2022-11-26 16:31:00'),
(563, '2022-11-27 20:44:52', 'Muh. Fadjrul Falakh melakukan login ke sistem', '::1', 1, '2022-11-27 20:44:52'),
(564, '2022-11-27 20:53:53', 'administrator mengubah data slider dengan ID = 11', '::1', 1, '2022-11-27 20:53:53'),
(565, '2022-11-27 20:54:03', 'administrator menghapus data slider dengan ID = 10 - 10', '::1', 1, '2022-11-27 20:54:03'),
(566, '2022-11-27 20:56:42', 'administrator mengubah data slider dengan ID = 11', '::1', 1, '2022-11-27 20:56:42'),
(567, '2022-11-27 21:14:24', 'administrator menambah data slider dengan name = slider-20221127211424.jpg', '::1', 1, '2022-11-27 21:14:24'),
(568, '2022-11-27 21:16:04', 'administrator mengubah data slider dengan ID = 12', '::1', 1, '2022-11-27 21:16:04'),
(569, '2022-11-28 11:07:22', 'Muh. Fadjrul Falakh melakukan login ke sistem', '::1', 1, '2022-11-28 11:07:22'),
(570, '2022-11-28 20:51:11', 'Muh. Fadjrul Falakh melakukan login ke sistem', '::1', 1, '2022-11-28 20:51:11'),
(571, '2022-11-28 23:43:35', 'administrator menghapus data form dengan ID = 24', '::1', 1, '2022-11-28 23:43:35'),
(572, '2022-11-28 23:53:37', 'administrator menghapus data form dengan ID = 25', '::1', 1, '2022-11-28 23:53:37'),
(573, '2022-11-28 23:56:21', 'administrator menghapus data form dengan ID = 25', '::1', 1, '2022-11-28 23:56:21'),
(574, '2022-11-29 00:02:17', 'administrator menghapus data form dengan ID = 25', '::1', 1, '2022-11-29 00:02:17'),
(575, '2022-11-29 00:02:48', 'administrator menghapus data form dengan ID = 26', '::1', 1, '2022-11-29 00:02:48'),
(576, '2022-11-29 00:03:14', 'administrator menghapus data form dengan ID = 24', '::1', 1, '2022-11-29 00:03:14'),
(577, '2022-11-29 00:03:39', 'administrator menghapus data form dengan ID = 27', '::1', 1, '2022-11-29 00:03:39'),
(578, '2022-11-29 00:05:03', 'administrator menghapus data form dengan ID = 29', '::1', 1, '2022-11-29 00:05:03'),
(579, '2022-11-29 00:05:10', 'administrator menghapus data form dengan ID = 28', '::1', 1, '2022-11-29 00:05:10'),
(580, '2022-11-29 16:21:55', 'Muh. Fadjrul Falakh melakukan login ke sistem', '::1', 1, '2022-11-29 16:21:55'),
(581, '2022-11-29 16:30:24', 'Muh. Fadjrul Falakh melakukan login ke sistem', '::1', 1, '2022-11-29 16:30:24'),
(582, '2022-11-29 16:30:54', 'Muh. Fadjrul Falakh melakukan login ke sistem', '::1', 1, '2022-11-29 16:30:54'),
(583, '2022-11-29 23:30:25', 'administrator menambah data kategori bidang berita Apoteker', '::1', 1, '2022-11-29 23:30:25'),
(584, '2022-11-30 01:58:56', 'Muh. Fadjrul Falakh melakukan login ke sistem', '::1', 1, '2022-11-30 01:58:56'),
(585, '2022-11-30 02:23:27', 'administrator menambah data faq Tes', '::1', 1, '2022-11-30 02:23:27'),
(586, '2022-11-30 02:29:53', 'administrator mengubah data faq dengan ID = 1', '::1', 1, '2022-11-30 02:29:53'),
(587, '2022-11-30 02:34:24', 'administrator menambah data faq', '::1', 1, '2022-11-30 02:34:24'),
(588, '2022-11-30 02:52:04', 'administrator menghapus data faq dengan ID = 2', '::1', 1, '2022-11-30 02:52:04'),
(589, '2022-11-30 03:19:46', 'administrator menghapus data message dengan ID = 3 - ', '::1', 1, '2022-11-30 03:19:46'),
(590, '2022-11-30 05:46:35', 'Muh. Fadjrul Falakh melakukan login ke sistem', '::1', 1, '2022-11-30 05:46:35'),
(591, '2022-11-30 05:49:28', 'Muh. Fadjrul Falakh melakukan login ke sistem', '::1', 1, '2022-11-30 05:49:28'),
(592, '2022-11-30 10:48:58', 'Muh. Fadjrul Falakh melakukan login ke sistem', '::1', 1, '2022-11-30 10:48:58'),
(593, '2022-11-30 10:49:26', 'Muh. Fadjrul Falakh melakukan login ke sistem', '::1', 1, '2022-11-30 10:49:26'),
(594, '2022-11-30 13:16:04', 'administrator menghapus data link terkait dengan ID = 5 - 5', '::1', 1, '2022-11-30 13:16:04'),
(595, '2022-11-30 13:18:56', 'Muh. Fadjrul Falakh melakukan login ke sistem', '::1', 1, '2022-11-30 13:18:56'),
(596, '2022-11-30 13:21:49', 'administrator menambah data link terkait dengan ID = 1', '::1', 1, '2022-11-30 13:21:49'),
(597, '2022-11-30 13:26:03', 'administrator mengubah data link terkait dengan ID = 2', '::1', 1, '2022-11-30 13:26:03'),
(598, '2022-11-30 13:32:44', 'administrator mengubah data link terkait dengan ID = 3', '::1', 1, '2022-11-30 13:32:44'),
(599, '2022-11-30 13:32:54', 'administrator menghapus data link terkait dengan ID = 4 - 4', '::1', 1, '2022-11-30 13:32:54'),
(600, '2022-11-30 13:40:38', 'administrator mengubah data link terkait dengan ID = 3', '::1', 1, '2022-11-30 13:40:38'),
(601, '2022-11-30 13:44:08', 'administrator mengubah data link terkait dengan ID = 3', '::1', 1, '2022-11-30 13:44:08'),
(602, '2022-11-30 15:31:46', 'administrator menambah data dokter dengan nama = drg. Anggi', '::1', 1, '2022-11-30 15:31:46'),
(603, '2022-11-30 15:35:08', 'administrator menghapus data dokter dengan nama = ', '::1', 1, '2022-11-30 15:35:08'),
(604, '2022-11-30 15:38:12', 'administrator menambah data dokter dengan nama = drg. Anggi', '::1', 1, '2022-11-30 15:38:12'),
(605, '2022-11-30 16:07:15', 'administrator mengubah data dokter dengan nama = dr. andin', '::1', 1, '2022-11-30 16:07:15'),
(606, '2022-11-30 16:14:40', 'administrator mengubah data dokter dengan nama = dr. andin', '::1', 1, '2022-11-30 16:14:40'),
(607, '2022-11-30 18:47:35', 'Muh. Fadjrul Falakh melakukan login ke sistem', '::1', 1, '2022-11-30 18:47:35'),
(608, '2022-11-30 18:53:02', 'administrator mengubah data dokter dengan nama = dr. andin', '::1', 1, '2022-11-30 18:53:02'),
(609, '2022-11-30 18:56:31', 'administrator mengubah data dokter dengan nama = dr. andin', '::1', 1, '2022-11-30 18:56:31'),
(610, '2022-11-30 19:13:54', 'administrator mengubah data dokter dengan nama = dr. andin', '::1', 1, '2022-11-30 19:13:54'),
(611, '2022-11-30 19:54:08', 'Muh. Fadjrul Falakh melakukan login ke sistem', '::1', 1, '2022-11-30 19:54:08'),
(612, '2022-11-30 21:07:43', 'Muh. Fadjrul Falakh melakukan login ke sistem', '::1', 1, '2022-11-30 21:07:43'),
(613, '2022-11-30 21:21:05', 'Muh. Fadjrul Falakh melakukan login ke sistem', '::1', 1, '2022-11-30 21:21:05'),
(614, '2022-12-02 13:17:52', 'Muh. Fadjrul Falakh melakukan login ke sistem', '::1', 1, '2022-12-02 13:17:52'),
(615, '2022-12-03 13:17:19', 'Muh. Fadjrul Falakh melakukan login ke sistem', '::1', 1, '2022-12-03 13:17:19'),
(616, '2022-12-04 17:30:44', 'Muh. Fadjrul Falakh melakukan login ke sistem', '::1', 1, '2022-12-04 17:30:44'),
(617, '2022-12-04 22:27:40', 'Muh. Fadjrul Falakh melakukan login ke sistem', '::1', 1, '2022-12-04 22:27:40'),
(618, '2022-12-05 11:42:40', 'Muh. Fadjrul Falakh melakukan login ke sistem', '::1', 1, '2022-12-05 11:42:40'),
(619, '2022-12-06 16:12:09', 'Muh. Fadjrul Falakh melakukan login ke sistem', '::1', 1, '2022-12-06 16:12:09'),
(620, '2022-12-06 20:39:43', 'Muh. Fadjrul Falakh melakukan login ke sistem', '::1', 1, '2022-12-06 20:39:43'),
(621, '2022-12-08 14:28:16', 'Muh. Fadjrul Falakh melakukan login ke sistem', '::1', 1, '2022-12-08 14:28:16'),
(622, '2022-12-08 14:51:26', 'Muh. Fadjrul Falakh melakukan login ke sistem', '::1', 1, '2022-12-08 14:51:26'),
(623, '2022-12-08 21:47:19', 'Muh. Fadjrul Falakh melakukan login ke sistem', '::1', 1, '2022-12-08 21:47:19'),
(624, '2022-12-08 21:49:10', 'Muh. Fadjrul Falakh menambah data pasien : Ina amalia', '::1', 1, '2022-12-08 21:49:10'),
(625, '2022-12-08 22:08:29', 'Muh. Fadjrul Falakh menambah data pasien : Anton Pagor', '::1', 1, '2022-12-08 22:08:29'),
(626, '2022-12-08 22:13:13', 'Muh. Fadjrul Falakh mengubah data pasien : Anton Pagor', '::1', 1, '2022-12-08 22:13:13'),
(627, '2022-12-08 22:16:41', 'Muh. Fadjrul Falakh menambah data pasien : Anton Pagor', '::1', 1, '2022-12-08 22:16:41'),
(628, '2022-12-09 01:56:27', 'Muh. Fadjrul Falakh melakukan login ke sistem', '::1', 1, '2022-12-09 01:56:27'),
(629, '2022-12-09 16:20:45', 'Muh. Fadjrul Falakh melakukan login ke sistem', '::1', 1, '2022-12-09 16:20:45'),
(630, '2022-12-09 17:07:11', 'Muh. Fadjrul Falakh menambah data rekam medis riwayat kunjungan pasien ', '::1', 1, '2022-12-09 17:07:11'),
(631, '2022-12-09 17:39:07', 'Muh. Fadjrul Falakh menghapus data rekam medis riwayat kunjungan pasien dengan ID : 2 - ', '::1', 1, '2022-12-09 17:39:07'),
(632, '2022-12-10 17:07:02', 'Muh. Fadjrul Falakh melakukan login ke sistem', '::1', 1, '2022-12-10 17:07:02'),
(633, '2022-12-10 20:35:28', 'Muh. Fadjrul Falakh mengubah data pegawai dengan ID - nama :  - Suarni s', '::1', 1, '2022-12-10 20:35:28'),
(634, '2022-12-10 20:45:47', 'Muh. Fadjrul Falakh mengubah data pegawai dengan ID - nama :  - Suarni yA', '::1', 1, '2022-12-10 20:45:47'),
(635, '2022-12-10 20:51:57', 'Muh. Fadjrul Falakh mengubah data poliklinik dengan ID - nama :  - Poli UmumS', '::1', 1, '2022-12-10 20:51:57'),
(636, '2022-12-10 20:53:36', 'Muh. Fadjrul Falakh mengubah data poliklinik dengan ID - nama :  - Poli Umum', '::1', 1, '2022-12-10 20:53:36'),
(637, '2022-12-10 20:54:48', 'Muh. Fadjrul Falakh mengubah data poliklinik dengan ID - nama :  - Poli Umum', '::1', 1, '2022-12-10 20:54:48'),
(638, '2022-12-10 20:55:23', 'Muh. Fadjrul Falakh mengubah data poliklinik dengan ID - nama :  - Poli Umum', '::1', 1, '2022-12-10 20:55:23'),
(639, '2022-12-10 20:56:42', 'Muh. Fadjrul Falakh mengubah data poliklinik dengan ID - nama :  - Poli UmumXX', '::1', 1, '2022-12-10 20:56:42'),
(640, '2022-12-10 21:02:35', 'Muh. Fadjrul Falakh mengubah data poliklinik dengan ID - nama :  - Poli Anaks', '::1', 1, '2022-12-10 21:02:35'),
(641, '2022-12-10 21:03:01', 'administrator mengubah data faq dengan ID = 1', '::1', 1, '2022-12-10 21:03:01'),
(642, '2022-12-10 21:04:56', 'administrator mengubah data faq dengan ID = 1', '::1', 1, '2022-12-10 21:04:56'),
(643, '2022-12-10 21:16:19', 'administrator mengubah data group dengan ID =  - Pengelolah Konten & Berita', '::1', 1, '2022-12-10 21:16:19'),
(644, '2022-12-10 21:18:19', 'administrator mengubah data group dengan ID = 6 - Pengelolah Berita', '::1', 1, '2022-12-10 21:18:19'),
(645, '2022-12-10 21:22:25', 'Muh. Fadjrul Falakh mengubah data poliklinik dengan ID - nama : 1 - Poli Umums', '::1', 1, '2022-12-10 21:22:25'),
(646, '2022-12-10 21:22:37', 'Muh. Fadjrul Falakh mengubah data poliklinik dengan ID - nama : 1 - Poli Umum', '::1', 1, '2022-12-10 21:22:37'),
(647, '2022-12-10 21:23:12', 'administrator mengubah data link terkait dengan ID = 1', '::1', 1, '2022-12-10 21:23:12'),
(648, '2022-12-10 21:23:25', 'administrator mengubah data link terkait dengan ID = 1', '::1', 1, '2022-12-10 21:23:25'),
(649, '2022-12-10 21:24:55', 'Muh. Fadjrul Falakh mengubah data pegawai dengan ID - nama : 1 - Suarni', '::1', 1, '2022-12-10 21:24:55'),
(650, '2022-12-10 21:25:06', 'Muh. Fadjrul Falakh mengubah data pegawai dengan ID - nama : 1 - Suarni', '::1', 1, '2022-12-10 21:25:06'),
(651, '2022-12-10 21:26:37', 'Muh. Fadjrul Falakh mengubah data pegawai dengan ID - nama : 1 - Suarni', '::1', 1, '2022-12-10 21:26:37'),
(652, '2022-12-10 21:29:55', 'Muh. Fadjrul Falakh menambah data poliklinik dengan ID - nama :  - Poli Gigi', '::1', 1, '2022-12-10 21:29:55'),
(653, '2022-12-10 21:31:12', 'Muh. Fadjrul Falakh menambah data poliklinik dengan ID - nama :  - Poli KIA', '::1', 1, '2022-12-10 21:31:12'),
(654, '2022-12-10 21:31:51', 'Muh. Fadjrul Falakh menambah data poliklinik dengan ID - nama :  - ss', '::1', 1, '2022-12-10 21:31:51'),
(655, '2022-12-10 21:32:01', 'Muh. Fadjrul Falakh menambah data poliklinik dengan ID - nama :  - aa', '::1', 1, '2022-12-10 21:32:01'),
(656, '2022-12-10 21:32:34', 'Muh. Fadjrul Falakh menambah data poliklinik dengan ID - nama :  - cc', '::1', 1, '2022-12-10 21:32:34'),
(657, '2022-12-10 21:32:44', 'Muh. Fadjrul Falakh menambah data poliklinik dengan ID - nama :  - dd', '::1', 1, '2022-12-10 21:32:44'),
(658, '2022-12-10 21:32:52', 'Muh. Fadjrul Falakh menambah data poliklinik dengan ID - nama :  - ff', '::1', 1, '2022-12-10 21:32:52'),
(659, '2022-12-10 21:33:08', 'Muh. Fadjrul Falakh menambah data poliklinik dengan ID - nama :  - jj', '::1', 1, '2022-12-10 21:33:08'),
(660, '2022-12-10 21:33:16', 'Muh. Fadjrul Falakh menambah data poliklinik dengan ID - nama :  - uu', '::1', 1, '2022-12-10 21:33:16'),
(661, '2022-12-10 21:33:43', 'Muh. Fadjrul Falakh menambah data poliklinik dengan ID - nama :  - qq', '::1', 1, '2022-12-10 21:33:43'),
(662, '2022-12-10 21:57:26', 'Muh. Fadjrul Falakh menambah data poliklinik dengan ID - nama :  - rr', '::1', 1, '2022-12-10 21:57:26'),
(663, '2022-12-11 00:26:34', 'Muh. Fadjrul Falakh melakukan login ke sistem', '::1', 1, '2022-12-11 00:26:34'),
(664, '2022-12-11 01:06:32', 'Muh. Fadjrul Falakh menghapus data pegawai dengan ID : 1', '::1', 1, '2022-12-11 01:06:32'),
(665, '2022-12-11 01:06:57', 'Muh. Fadjrul Falakh menambah data pegawai dengan ID - nama :  - Naruto', '::1', 1, '2022-12-11 01:06:57'),
(666, '2022-12-11 03:17:34', 'Muh. Fadjrul Falakh menambah data dokter dengan ID - nama :  - dr. Kane', '::1', 1, '2022-12-11 03:17:34'),
(667, '2022-12-11 03:19:44', 'Muh. Fadjrul Falakh menambah data dokter dengan ID - nama :  - dr. John', '::1', 1, '2022-12-11 03:19:44'),
(668, '2022-12-11 03:24:08', 'Muh. Fadjrul Falakh menghapus data dokter dengan nama = 7', '::1', 1, '2022-12-11 03:24:08'),
(669, '2022-12-11 03:25:06', 'Muh. Fadjrul Falakh menghapus data dokter dengan ID : 6', '::1', 1, '2022-12-11 03:25:06'),
(670, '2022-12-11 03:34:55', 'Muh. Fadjrul Falakh menghapus data poliklinik dengan ID : 11', '::1', 1, '2022-12-11 03:34:55'),
(671, '2022-12-11 03:35:03', 'Muh. Fadjrul Falakh menghapus data poliklinik dengan ID : 12', '::1', 1, '2022-12-11 03:35:03'),
(672, '2022-12-11 03:35:15', 'Muh. Fadjrul Falakh menghapus data poliklinik dengan ID : 13', '::1', 1, '2022-12-11 03:35:15'),
(673, '2022-12-11 03:35:23', 'Muh. Fadjrul Falakh menghapus data poliklinik dengan ID : 10', '::1', 1, '2022-12-11 03:35:23'),
(674, '2022-12-11 03:35:27', 'Muh. Fadjrul Falakh menghapus data poliklinik dengan ID : 9', '::1', 1, '2022-12-11 03:35:27'),
(675, '2022-12-11 03:35:31', 'Muh. Fadjrul Falakh menghapus data poliklinik dengan ID : 8', '::1', 1, '2022-12-11 03:35:31'),
(676, '2022-12-11 03:35:34', 'Muh. Fadjrul Falakh menghapus data poliklinik dengan ID : 7', '::1', 1, '2022-12-11 03:35:34'),
(677, '2022-12-11 03:35:38', 'Muh. Fadjrul Falakh menghapus data poliklinik dengan ID : 6', '::1', 1, '2022-12-11 03:35:38'),
(678, '2022-12-11 03:49:09', 'Muh. Fadjrul Falakh menambah data faq dengan ID : ', '::1', 1, '2022-12-11 03:49:09'),
(679, '2022-12-11 03:50:48', 'Muh. Fadjrul Falakh menambah data faq dengan pertanyaan : qqq', '::1', 1, '2022-12-11 03:50:48'),
(680, '2022-12-11 15:04:20', 'Muh. Fadjrul Falakh melakukan login ke sistem', '::1', 1, '2022-12-11 15:04:20'),
(681, '2022-12-11 21:17:46', 'Muh. Fadjrul Falakh melakukan login ke sistem', '::1', 1, '2022-12-11 21:17:46'),
(682, '2022-12-12 00:05:38', 'Muh. Fadjrul Falakh mengubah data pegawai dengan nama : Hj. Hadijah, SKM., M.Kes.', '::1', 1, '2022-12-12 00:05:38'),
(683, '2022-12-12 00:07:09', 'Muh. Fadjrul Falakh menambah data pegawai dengan nama : Hayum Nartin', '::1', 1, '2022-12-12 00:07:09'),
(684, '2022-12-12 00:08:11', 'Muh. Fadjrul Falakh menambah data pegawai dengan nama : Irvan, SKM.', '::1', 1, '2022-12-12 00:08:11'),
(685, '2022-12-12 00:10:49', 'Muh. Fadjrul Falakh menambah data pegawai dengan nama : Evyanti Muas Saputri, SKM', '::1', 1, '2022-12-12 00:10:49'),
(686, '2022-12-12 00:12:28', 'Muh. Fadjrul Falakh menambah data pegawai dengan nama : Riny Andriani, SKM., M.Kes.', '::1', 1, '2022-12-12 00:12:28'),
(687, '2022-12-12 00:13:38', 'Muh. Fadjrul Falakh menambah data pegawai dengan nama : Rina Elisa, S.Kep., Ns.', '::1', 1, '2022-12-12 00:13:38'),
(688, '2022-12-12 00:14:47', 'Muh. Fadjrul Falakh menambah data pegawai dengan nama : Fitri Erningtyas', '::1', 1, '2022-12-12 00:14:47'),
(689, '2022-12-12 00:16:21', 'Muh. Fadjrul Falakh menambah data pegawai dengan nama : dr. Ratnaningsih Kasy', '::1', 1, '2022-12-12 00:16:21'),
(690, '2022-12-12 00:17:50', 'Muh. Fadjrul Falakh menambah data pegawai dengan nama : drg. Liandy Karnian WL', '::1', 1, '2022-12-12 00:17:50'),
(691, '2022-12-12 00:19:33', 'Muh. Fadjrul Falakh menambah data pegawai dengan nama : Dewi Sultriana, S.ST.', '::1', 1, '2022-12-12 00:19:33'),
(692, '2022-12-12 00:20:29', 'Muh. Fadjrul Falakh menambah data pegawai dengan nama : dr. Sapriani Iskandar', '::1', 1, '2022-12-12 00:20:29'),
(693, '2022-12-12 00:21:18', 'Muh. Fadjrul Falakh menambah data pegawai dengan nama : dr. Fauziah Ibrahim', '::1', 1, '2022-12-12 00:21:18'),
(694, '2022-12-12 00:22:15', 'Muh. Fadjrul Falakh menambah data pegawai dengan nama : Amra Nur, S.Si., A.pt.', '::1', 1, '2022-12-12 00:22:15'),
(695, '2022-12-12 00:23:16', 'Muh. Fadjrul Falakh menambah data pegawai dengan nama : Sartina, S.Kep.', '::1', 1, '2022-12-12 00:23:16'),
(696, '2022-12-12 00:24:08', 'Muh. Fadjrul Falakh menambah data pegawai dengan nama : Yuni Asna, S.Tr.Keb.', '::1', 1, '2022-12-12 00:24:08'),
(697, '2022-12-12 00:25:07', 'Muh. Fadjrul Falakh menambah data pegawai dengan nama : Alang, AMAK', '::1', 1, '2022-12-12 00:25:07'),
(698, '2022-12-12 00:25:44', 'Muh. Fadjrul Falakh menambah data pegawai dengan nama : Ashmaria, S.ST.', '::1', 1, '2022-12-12 00:25:44'),
(699, '2022-12-12 00:26:51', 'Muh. Fadjrul Falakh mengubah data pegawai dengan nama : Riny Andriani, SKM., M.Kes.', '::1', 1, '2022-12-12 00:26:51'),
(700, '2022-12-12 00:27:34', 'Muh. Fadjrul Falakh menambah data pegawai dengan nama : Asriani L, S.Kep.', '::1', 1, '2022-12-12 00:27:34'),
(701, '2022-12-12 00:28:17', 'Muh. Fadjrul Falakh mengubah data pegawai dengan nama : Rina Elisa, S.Kep., Ns.', '::1', 1, '2022-12-12 00:28:17'),
(702, '2022-12-12 00:29:27', 'Muh. Fadjrul Falakh menambah data pegawai dengan nama : Putri Kusuma D, S.Kep, Ns.', '::1', 1, '2022-12-12 00:29:27'),
(703, '2022-12-12 00:30:01', 'Muh. Fadjrul Falakh mengubah data pegawai dengan nama : Rina Elisa, S.Kep., Ns.', '::1', 1, '2022-12-12 00:30:01'),
(704, '2022-12-12 00:30:30', 'Muh. Fadjrul Falakh menambah data pegawai dengan nama : Nursamtria', '::1', 1, '2022-12-12 00:30:30'),
(705, '2022-12-12 00:31:23', 'Muh. Fadjrul Falakh menambah data pegawai dengan nama : Martha Dwi F, Am.Keb.', '::1', 1, '2022-12-12 00:31:23'),
(706, '2022-12-12 00:32:17', 'Muh. Fadjrul Falakh menambah data pegawai dengan nama : Yulianti Sahirun, SKM.', '::1', 1, '2022-12-12 00:32:17'),
(707, '2022-12-12 00:32:57', 'Muh. Fadjrul Falakh menambah data pegawai dengan nama : Hasriati, AMG', '::1', 1, '2022-12-12 00:32:57'),
(708, '2022-12-12 00:33:29', 'Muh. Fadjrul Falakh mengubah data pegawai dengan nama : Putri Kusuma D, S.Kep, Ns.', '::1', 1, '2022-12-12 00:33:29'),
(709, '2022-12-12 00:34:13', 'Muh. Fadjrul Falakh menambah data pegawai dengan nama : Rapda Sebplin, SKM.', '::1', 1, '2022-12-12 00:34:13'),
(710, '2022-12-12 00:35:18', 'Muh. Fadjrul Falakh mengubah data pegawai dengan nama : Irvan, SKM.', '::1', 1, '2022-12-12 00:35:18'),
(711, '2022-12-12 00:36:27', 'Muh. Fadjrul Falakh menambah data pegawai dengan nama : Elis Yuliani', '::1', 1, '2022-12-12 00:36:27'),
(712, '2022-12-12 00:37:10', 'Muh. Fadjrul Falakh mengubah data pegawai dengan nama : Putri Kusuma D, S.Kep, Ns.', '::1', 1, '2022-12-12 00:37:10'),
(713, '2022-12-12 00:37:50', 'Muh. Fadjrul Falakh menambah data pegawai dengan nama : Siti Indariani, AMK', '::1', 1, '2022-12-12 00:37:50'),
(714, '2022-12-12 00:38:16', 'Muh. Fadjrul Falakh mengubah data pegawai dengan nama : Irvan, SKM.', '::1', 1, '2022-12-12 00:38:16'),
(715, '2022-12-12 00:39:02', 'Muh. Fadjrul Falakh menambah data pegawai dengan nama : Ratih Astika, SKM.', '::1', 1, '2022-12-12 00:39:02'),
(716, '2022-12-12 00:39:41', 'Muh. Fadjrul Falakh menambah data pegawai dengan nama : Harmin, S.Kep.', '::1', 1, '2022-12-12 00:39:41'),
(717, '2022-12-12 00:40:31', 'Muh. Fadjrul Falakh mengubah data pegawai dengan nama : Siti Indariani, AMK', '::1', 1, '2022-12-12 00:40:31'),
(718, '2022-12-12 00:42:23', 'Muh. Fadjrul Falakh menambah data pegawai dengan nama : drg. Tri Rahayu', '::1', 1, '2022-12-12 00:42:23'),
(719, '2022-12-12 00:44:09', 'Muh. Fadjrul Falakh menambah data pegawai dengan nama : Diawati Dahian, S.Farm.', '::1', 1, '2022-12-12 00:44:09'),
(720, '2022-12-12 00:45:17', 'Muh. Fadjrul Falakh menambah data pegawai dengan nama : Risky Lestari, S.Keb.', '::1', 1, '2022-12-12 00:45:17'),
(721, '2022-12-12 00:46:46', 'Muh. Fadjrul Falakh menambah data pegawai dengan nama : Waode Risnawati, S.Kep., Ns.', '::1', 1, '2022-12-12 00:46:46'),
(722, '2022-12-12 00:48:21', 'Muh. Fadjrul Falakh menambah data pegawai dengan nama : Mirnawati, AMF', '::1', 1, '2022-12-12 00:48:21'),
(723, '2022-12-12 00:49:03', 'Muh. Fadjrul Falakh menambah data pegawai dengan nama : Lismaya Safitri, AMF', '::1', 1, '2022-12-12 00:49:03'),
(724, '2022-12-12 00:49:56', 'Muh. Fadjrul Falakh menambah data pegawai dengan nama : Rasdiana Rauf, AMK', '::1', 1, '2022-12-12 00:49:56'),
(725, '2022-12-12 00:50:48', 'Muh. Fadjrul Falakh menambah data pegawai dengan nama : Atiyah Usman, AMK', '::1', 1, '2022-12-12 00:50:48'),
(726, '2022-12-12 00:51:38', 'Muh. Fadjrul Falakh menambah data pegawai dengan nama : Sarina, AMK', '::1', 1, '2022-12-12 00:51:38'),
(727, '2022-12-12 00:52:52', 'Muh. Fadjrul Falakh menambah data pegawai dengan nama : Renny Kasy, AMK', '::1', 1, '2022-12-12 00:52:52'),
(728, '2022-12-12 01:16:16', 'Muh. Fadjrul Falakh mengubah data dokter dengan nama : dr. Ratnaningsih Kasy', '::1', 1, '2022-12-12 01:16:16'),
(729, '2022-12-12 01:18:03', 'Muh. Fadjrul Falakh menambah data dokter dengan nama : drg. Liandy Karnian WL', '::1', 1, '2022-12-12 01:18:03'),
(730, '2022-12-12 01:21:18', 'Muh. Fadjrul Falakh menambah data dokter dengan nama : dr.  Sapriani Iskandar', '::1', 1, '2022-12-12 01:21:18'),
(731, '2022-12-12 01:22:12', 'Muh. Fadjrul Falakh mengubah data dokter dengan nama : drg. Liandy Karnian WL', '::1', 1, '2022-12-12 01:22:12'),
(732, '2022-12-12 01:24:27', 'Muh. Fadjrul Falakh mengubah data dokter dengan nama : dr. Ratnaningsih Kasy', '::1', 1, '2022-12-12 01:24:27'),
(733, '2022-12-12 01:28:44', 'Muh. Fadjrul Falakh mengubah data dokter dengan nama : dr. Ratnaningsih Kasy', '::1', 1, '2022-12-12 01:28:44'),
(734, '2022-12-12 01:31:24', 'Muh. Fadjrul Falakh menambah data dokter dengan nama : dr. Fauziah Ibrahim', '::1', 1, '2022-12-12 01:31:24'),
(735, '2022-12-12 01:33:11', 'Muh. Fadjrul Falakh menambah data dokter dengan nama : drg. Tri Rahayu', '::1', 1, '2022-12-12 01:33:11'),
(736, '2022-12-12 01:54:15', 'Muh. Fadjrul Falakh menghapus data pasien dengan ID : 6', '::1', 1, '2022-12-12 01:54:15'),
(737, '2022-12-12 01:54:31', 'Muh. Fadjrul Falakh menghapus data pasien dengan ID : 5', '::1', 1, '2022-12-12 01:54:31'),
(738, '2022-12-12 01:54:44', 'Muh. Fadjrul Falakh menghapus data pasien dengan ID : 4', '::1', 1, '2022-12-12 01:54:44'),
(739, '2022-12-12 01:54:53', 'Muh. Fadjrul Falakh menghapus data pasien dengan ID : 3', '::1', 1, '2022-12-12 01:54:53'),
(740, '2022-12-12 01:55:28', 'Muh. Fadjrul Falakh menghapus data pasien dengan ID : 2', '::1', 1, '2022-12-12 01:55:28'),
(741, '2022-12-12 01:55:43', 'Muh. Fadjrul Falakh menghapus data pasien dengan ID : 1', '::1', 1, '2022-12-12 01:55:43'),
(742, '2022-12-12 01:56:49', 'Muh. Fadjrul Falakh menambah data pasien dengan ID - nama :  - andika', '::1', 1, '2022-12-12 01:56:49'),
(743, '2022-12-12 02:05:50', 'Muh. Fadjrul Falakh menambah data pasien dengan ID - nama :  - Hanif Ar-rayyan', '::1', 1, '2022-12-12 02:05:50'),
(744, '2022-12-12 02:12:29', 'Muh. Fadjrul Falakh menambah data pasien dengan ID - nama :  - Selpian Arung', '::1', 1, '2022-12-12 02:12:29'),
(745, '2022-12-12 14:59:48', 'Muh. Fadjrul Falakh melakukan login ke sistem', '::1', 1, '2022-12-12 14:59:48'),
(746, '2022-12-12 15:47:11', 'Muh. Fadjrul Falakh menambah data rekam medis riwayat kunjungan pasien ', '::1', 1, '2022-12-12 15:47:11'),
(747, '2022-12-12 22:36:12', 'Muh. Fadjrul Falakh menambah data rekam medis riwayat kunjungan pasien ', '::1', 1, '2022-12-12 22:36:12'),
(748, '2022-12-12 23:50:45', 'Muh. Fadjrul Falakh menambah data rekam medis riwayat kunjungan pasien ', '::1', 1, '2022-12-12 23:50:45'),
(749, '2022-12-13 06:31:59', 'Muh. Fadjrul Falakh melakukan login ke sistem', '::1', 1, '2022-12-13 06:31:59'),
(750, '2022-12-13 07:42:41', 'Muh. Fadjrul Falakh mengubah data rekam medis riwayat kunjungan pasien dengan ID = 7 - 11', '::1', 1, '2022-12-13 07:42:41'),
(751, '2022-12-13 10:27:50', 'Muh. Fadjrul Falakh menambah data rekam medis pemeriksaan odontogram 13', '::1', 1, '2022-12-13 10:27:50'),
(752, '2022-12-13 18:23:09', 'Muh. Fadjrul Falakh melakukan login ke sistem', '::1', 1, '2022-12-13 18:23:09'),
(753, '2022-12-13 18:41:37', 'administrator menghapus data rekam medis pemeriksaan odontogram dengan ID = 2 - ', '::1', 1, '2022-12-13 18:41:37'),
(754, '2022-12-13 18:48:06', 'Muh. Fadjrul Falakh menambah data rekam medis pemeriksaan odontogram dengan ID : ', '::1', 1, '2022-12-13 18:48:06'),
(755, '2022-12-13 21:43:12', 'Muh. Fadjrul Falakh melakukan login ke sistem', '::1', 1, '2022-12-13 21:43:12'),
(756, '2022-12-13 22:13:04', 'administrator mengubah data konten profil puskesmas menu : sambutan', '::1', 1, '2022-12-13 22:13:04'),
(757, '2022-12-13 22:16:36', 'administrator mengubah data konten profil puskesmas menu : sambutan', '::1', 1, '2022-12-13 22:16:36'),
(758, '2022-12-13 22:24:09', 'Muh. Fadjrul Falakh mengubah data konten profil puskesmas menu : sambutan', '::1', 1, '2022-12-13 22:24:09'),
(759, '2022-12-13 22:35:41', 'administrator mengubah data konten profil puskesmas dengan ID : sejarah', '::1', 1, '2022-12-13 22:35:41'),
(760, '2022-12-13 22:47:34', 'administrator mengubah data konten profil puskesmas dengan ID : visi', '::1', 1, '2022-12-13 22:47:34'),
(761, '2022-12-13 22:49:36', 'administrator mengubah data konten profil puskesmas dengan ID : tupoksi', '::1', 1, '2022-12-13 22:49:36'),
(762, '2022-12-13 22:56:08', 'administrator mengubah data konten profil puskesmas dengan ID : maklumat', '::1', 1, '2022-12-13 22:56:08'),
(763, '2022-12-13 22:56:19', 'administrator mengubah data konten profil puskesmas dengan ID : maklumat', '::1', 1, '2022-12-13 22:56:19'),
(764, '2022-12-14 00:15:26', 'Muh. Fadjrul Falakh mengubah data slider dengan ID : 6', '::1', 1, '2022-12-14 00:15:26'),
(765, '2022-12-14 00:21:49', 'Muh. Fadjrul Falakh mengubah data slider dengan ID : 6', '::1', 1, '2022-12-14 00:21:49'),
(766, '2022-12-14 00:24:28', 'Muh. Fadjrul Falakh mengubah data slider dengan ID : 6', '::1', 1, '2022-12-14 00:24:28'),
(767, '2022-12-14 00:32:10', 'Muh. Fadjrul Falakh mengubah data slider dengan ID : 6', '::1', 1, '2022-12-14 00:32:10'),
(768, '2022-12-14 00:45:29', 'Muh. Fadjrul Falakh mengubah data slider dengan ID : 9', '::1', 1, '2022-12-14 00:45:29'),
(769, '2022-12-14 00:46:53', 'administrator menghapus data slider dengan ID = 11', '::1', 1, '2022-12-14 00:46:53'),
(770, '2022-12-14 00:48:59', 'administrator mengubah data konten profil puskesmas menu : sambutan', '::1', 1, '2022-12-14 00:48:59'),
(771, '2022-12-14 00:50:49', 'administrator mengubah data konten profil puskesmas menu : sambutan', '::1', 1, '2022-12-14 00:50:49'),
(772, '2022-12-14 00:51:31', 'administrator mengubah data konten profil puskesmas menu : sambutan', '::1', 1, '2022-12-14 00:51:31'),
(773, '2022-12-14 00:53:21', 'administrator mengubah data konten profil puskesmas menu : sambutan', '::1', 1, '2022-12-14 00:53:21'),
(774, '2022-12-14 13:59:33', 'Muh. Fadjrul Falakh melakukan login ke sistem', '::1', 1, '2022-12-14 13:59:33'),
(775, '2022-12-14 14:01:59', 'Muh. Fadjrul Falakh melakukan login ke sistem', '::1', 1, '2022-12-14 14:01:59'),
(776, '2022-12-14 14:37:08', 'Muh. Fadjrul Falakh menghapus data galeri dengan ID : 8', '::1', 1, '2022-12-14 14:37:08'),
(777, '2022-12-14 14:43:43', 'Muh. Fadjrul Falakh menambah data galeri dengan nama : Kegiatan Pengukuran Kebugaran ASN Kecamatan Kadia', '::1', 1, '2022-12-14 14:43:43'),
(778, '2022-12-14 15:00:54', 'Muh. Fadjrul Falakh menambah data galeri dengan ID - nama :  - Launching Posyandu Remaja Solagratia Mahanaim', '::1', 1, '2022-12-14 15:00:54'),
(779, '2022-12-14 15:18:23', 'Muh. Fadjrul Falakh mengubah data galeri dengan ID - nama :  - Pameran XY', '::1', 1, '2022-12-14 15:18:23'),
(780, '2022-12-14 15:29:08', 'Muh. Fadjrul Falakh mengubah data galeri dengan ID - nama :  - Pameran XY', '::1', 1, '2022-12-14 15:29:08'),
(781, '2022-12-14 15:58:51', 'Muh. Fadjrul Falakh mengubah data galeri dengan ID - nama :  - Kegiatan Pengukuran Kebugaran ASN Kecamatan Kadia', '::1', 1, '2022-12-14 15:58:51'),
(782, '2022-12-14 16:15:12', 'Muh. Fadjrul Falakh mengubah data galeri dengan ID - nama :  - Kegiatan Pengukuran Kebugaran ASN Kecamatan Kadia', '::1', 1, '2022-12-14 16:15:12'),
(783, '2022-12-14 16:15:46', 'Muh. Fadjrul Falakh mengubah data galeri dengan ID - nama :  - Pameran Xy', '::1', 1, '2022-12-14 16:15:46'),
(784, '2022-12-14 16:21:25', 'Muh. Fadjrul Falakh mengubah data galeri dengan ID - nama :  - Kegiatan YT 2021', '::1', 1, '2022-12-14 16:21:25'),
(785, '2022-12-14 16:23:23', 'Muh. Fadjrul Falakh melakukan login ke sistem', '::1', 1, '2022-12-14 16:23:23'),
(786, '2022-12-14 16:23:48', 'Muh. Fadjrul Falakh mengubah data galeri dengan ID - nama :  - Kegiatan XXY 2021', '::1', 1, '2022-12-14 16:23:48'),
(787, '2022-12-14 16:28:02', 'Muh. Fadjrul Falakh mengubah data galeri dengan ID - nama :  - Kegiatans Y 2021', '::1', 1, '2022-12-14 16:28:02'),
(788, '2022-12-14 16:30:29', 'Muh. Fadjrul Falakh mengubah data galeri dengan ID - nama : 2 - Kegiatan UY 2021', '::1', 1, '2022-12-14 16:30:29'),
(789, '2022-12-14 16:34:09', 'Muh. Fadjrul Falakh mengubah data galeri dengan ID - nama : 9 - Kegiatan Pengukuran Kebugaran ASN Kecamatan Kadia', '::1', 1, '2022-12-14 16:34:09'),
(790, '2022-12-14 16:34:29', 'Muh. Fadjrul Falakh mengubah data galeri dengan ID - nama : 4 - Pameran XX', '::1', 1, '2022-12-14 16:34:29'),
(791, '2022-12-14 16:38:03', 'Muh. Fadjrul Falakh menambah data galeri dengan nama : Minlok Lintas Sektor Kecamatan Kadia', '::1', 1, '2022-12-14 16:38:03'),
(792, '2022-12-14 16:38:29', 'Muh. Fadjrul Falakh menghapus data galeri dengan ID : 4', '::1', 1, '2022-12-14 16:38:29'),
(793, '2022-12-14 16:43:15', 'Muh. Fadjrul Falakh menghapus data galeri dengan ID : 1', '::1', 1, '2022-12-14 16:43:15'),
(794, '2022-12-14 16:45:13', 'Muh. Fadjrul Falakh menambah data galeri dengan nama : Launching Posyandu Remaja Solagratia Mahanaim', '::1', 1, '2022-12-14 16:45:13'),
(795, '2022-12-14 17:02:16', 'Muh. Fadjrul Falakh menghapus data galeri dengan ID : 2', '::1', 1, '2022-12-14 17:02:16'),
(796, '2022-12-14 17:03:35', 'Muh. Fadjrul Falakh menambah data galeri dengan nama : Kegiatan Vaksin di Plasa PT. Telkom WITEL Sultra, Indonesia', '::1', 1, '2022-12-14 17:03:35'),
(797, '2022-12-14 17:07:33', 'Muh. Fadjrul Falakh menambah data galeri dengan nama : Kegiatan Kaji Banding dengan Puskesmas Lepo-Lepo', '::1', 1, '2022-12-14 17:07:33'),
(798, '2022-12-14 17:10:18', 'Muh. Fadjrul Falakh menambah data galeri dengan nama : kegiatan rutin kampung GERMAS RT.003/RW.003 Kelurahan Pondambea', '::1', 1, '2022-12-14 17:10:18'),
(799, '2022-12-14 17:14:00', 'Muh. Fadjrul Falakh menambah data galeri dengan nama : Kegiatan Sharing dengan Topik \"Nutrisi pada Ibu Hamil\"', '::1', 1, '2022-12-14 17:14:00'),
(800, '2022-12-14 17:15:44', 'Muh. Fadjrul Falakh menambah data galeri dengan nama : Kegiatan Verifikasi STBM Puskesmas Mekar', '::1', 1, '2022-12-14 17:15:44'),
(801, '2022-12-14 17:18:47', 'administrator mengubah data informasi dengan ID : 4', '::1', 1, '2022-12-14 17:18:47'),
(802, '2022-12-14 17:37:51', 'Muh. Fadjrul Falakh menambah data informasi : Kasus Gagal Ginjal Akut Pada Anak Meningkat, Orang Tua Diminta Waspada', '::1', 1, '2022-12-14 17:37:51'),
(803, '2022-12-14 17:37:59', 'administrator menghapus data informasi dengan ID : 4', '::1', 1, '2022-12-14 17:37:59'),
(804, '2022-12-14 17:38:06', 'administrator menghapus data informasi dengan ID : 3', '::1', 1, '2022-12-14 17:38:06'),
(805, '2022-12-14 17:38:14', 'administrator menghapus data informasi dengan ID : 2', '::1', 1, '2022-12-14 17:38:14'),
(806, '2022-12-14 17:38:17', 'administrator menghapus data informasi dengan ID : 1', '::1', 1, '2022-12-14 17:38:17'),
(807, '2022-12-14 17:43:53', 'Muh. Fadjrul Falakh menambah data informasi : Sepanjang 2022, 6 Anak di Sukabumi Meninggal Akibat HIV/AIDS', '::1', 1, '2022-12-14 17:43:53'),
(808, '2022-12-14 17:49:02', 'Muh. Fadjrul Falakh menambah data informasi : Viral Ibu Muda Meninggal Usai Melahirkan Anak ke-10, Ini Pemicunya  Baca artikel detikHealth, \"Viral Ibu Muda Meninggal Usai Melahirkan Anak ke-10, Ini Pe', '::1', 1, '2022-12-14 17:49:02'),
(809, '2022-12-14 17:51:53', 'Muh. Fadjrul Falakh menambah data informasi : Bos Bio Farma Buka-bukaan Stok Vaksin COVID-19 Jelang Akhir Tahun, Aman ?', '::1', 1, '2022-12-14 17:51:53'),
(810, '2022-12-14 17:57:26', 'Muh. Fadjrul Falakh menambah data informasi : Heboh Bjorka Bocorkan Data PeduliLindungi, Kemenkes Buka Suara', '::1', 1, '2022-12-14 17:57:26'),
(811, '2022-12-14 17:57:47', 'administrator mengubah data informasi dengan ID : 7', '::1', 1, '2022-12-14 17:57:47'),
(812, '2022-12-14 18:00:22', 'Muh. Fadjrul Falakh menambah data informasi : Kebocoran Data PeduliLindungi oleh Hacker Bjorka Dinilai Valid', '::1', 1, '2022-12-14 18:00:22'),
(813, '2022-12-14 18:46:36', 'Muh. Fadjrul Falakh menambah data informasi : Kebocoran Data MyPertamina oleh Bjorka, Pakar: Sudah Saatnya Dibentuk Lembaga PDP', '::1', 1, '2022-12-14 18:46:36'),
(814, '2022-12-14 18:49:48', 'Muh. Fadjrul Falakh menambah data informasi : 8 Obat Asam Lambung Alami yang Efektif dan Gampang Dicari', '::1', 1, '2022-12-14 18:49:48'),
(815, '2022-12-14 18:52:57', 'Muh. Fadjrul Falakh mengubah data informasi dengan ID - nama : 11 - Kebocoran Data MyPertamina oleh Bjorka, Pakar: Sudah Saatnya Dibentuk Lembaga PDP', '::1', 1, '2022-12-14 18:52:57'),
(816, '2022-12-14 18:57:58', 'Muh. Fadjrul Falakh mengubah data faq dengan pertanyaan : DImana Lokasi Puskesmas Mekar', '::1', 1, '2022-12-14 18:57:58'),
(817, '2022-12-14 18:59:38', 'Muh. Fadjrul Falakh mengubah data faq dengan pertanyaan : Apa itu e-medicord', '::1', 1, '2022-12-14 18:59:38'),
(818, '2022-12-14 19:00:56', 'Muh. Fadjrul Falakh menambah data faq dengan pertanyaan : Apakah e-medicord aman', '::1', 1, '2022-12-14 19:00:56'),
(819, '2022-12-14 19:05:26', 'Muh. Fadjrul Falakh mengubah data faq dengan pertanyaan : jelaskan tentang Website puskesmas mekar', '::1', 1, '2022-12-14 19:05:26'),
(820, '2022-12-14 19:18:44', 'Muh. Fadjrul Falakh menambah data rekam medis pengkajian awal : 9', '::1', 1, '2022-12-14 19:18:44'),
(821, '2022-12-14 22:52:35', 'Muh. Fadjrul Falakh melakukan login ke sistem', '::1', 1, '2022-12-14 22:52:35'),
(822, '2022-12-14 22:55:52', 'Muh. Fadjrul Falakh menambah data rekam medis pengkajian awal : 11', '::1', 1, '2022-12-14 22:55:52'),
(823, '2022-12-15 00:13:57', 'Muh. Fadjrul Falakh melakukan login ke sistem', '::1', 1, '2022-12-15 00:13:57'),
(824, '2022-12-15 06:15:26', 'Muh. Fadjrul Falakh melakukan login ke sistem', '::1', 1, '2022-12-15 06:15:26'),
(825, '2022-12-15 13:38:34', 'Muh. Fadjrul Falakh melakukan login ke sistem', '::1', 1, '2022-12-15 13:38:34'),
(826, '2022-12-15 14:19:59', 'Muh. Fadjrul Falakh menambah data rekam medis pengkajian awal : 9', '::1', 1, '2022-12-15 14:19:59'),
(827, '2022-12-15 14:27:48', 'Muh. Fadjrul Falakh menambah data rekam medis pengkajian awal : 9', '::1', 1, '2022-12-15 14:27:48'),
(828, '2022-12-15 22:54:56', 'Muh. Fadjrul Falakh melakukan login ke sistem', '::1', 1, '2022-12-15 22:54:56'),
(829, '2022-12-16 09:21:49', 'Muh. Fadjrul Falakh melakukan login ke sistem', '::1', 1, '2022-12-16 09:21:49'),
(830, '2022-12-16 20:45:00', 'Muh. Fadjrul Falakh melakukan login ke sistem', '::1', 1, '2022-12-16 20:45:00'),
(831, '2022-12-17 21:45:33', 'Muh. Fadjrul Falakh melakukan login ke sistem', '::1', 1, '2022-12-17 21:45:33'),
(832, '2022-12-18 16:54:16', 'Muh. Fadjrul Falakh melakukan login ke sistem', '::1', 1, '2022-12-18 16:54:16'),
(833, '2022-12-18 18:27:23', 'Muh. Fadjrul Falakh mengubah data rekam medis pemeriksaan odontogram dengan ID : ', '::1', 1, '2022-12-18 18:27:23'),
(834, '2022-12-18 18:29:42', 'Muh. Fadjrul Falakh mengubah data rekam medis pemeriksaan odontogram dengan ID : ', '::1', 1, '2022-12-18 18:29:42'),
(835, '2022-12-18 18:34:41', 'Muh. Fadjrul Falakh mengubah data rekam medis pemeriksaan odontogram dengan ID : ', '::1', 1, '2022-12-18 18:34:41'),
(836, '2022-12-18 18:44:44', 'Muh. Fadjrul Falakh mengubah data rekam medis pemeriksaan odontogram dengan ID : ', '::1', 1, '2022-12-18 18:44:44'),
(837, '2022-12-18 18:49:56', 'Muh. Fadjrul Falakh mengubah data rekam medis pemeriksaan odontogram dengan ID : ', '::1', 1, '2022-12-18 18:49:56'),
(838, '2022-12-18 18:59:31', 'Muh. Fadjrul Falakh mengubah data rekam medis pemeriksaan odontogram dengan ID : ', '::1', 1, '2022-12-18 18:59:31'),
(839, '2022-12-18 19:02:42', 'Muh. Fadjrul Falakh menambah data rekam medis pemeriksaan odontogram dengan ID pasien: 11', '::1', 1, '2022-12-18 19:02:42'),
(840, '2022-12-18 19:04:43', 'Muh. Fadjrul Falakh mengubah data rekam medis pemeriksaan odontogram dengan ID : ', '::1', 1, '2022-12-18 19:04:43'),
(841, '2022-12-18 20:37:12', 'Muh. Fadjrul Falakh mengubah data rekam medis pemeriksaan odontogram dengan ID RM : ', '::1', 1, '2022-12-18 20:37:12'),
(842, '2022-12-18 20:45:44', 'Muh. Fadjrul Falakh mengubah data rekam medis pemeriksaan odontogram dengan ID RM : 4', '::1', 1, '2022-12-18 20:45:44'),
(843, '2022-12-20 00:27:13', 'Muh. Fadjrul Falakh melakukan login ke sistem', '::1', 1, '2022-12-20 00:27:13'),
(844, '2022-12-20 13:16:04', 'Muh. Fadjrul Falakh melakukan login ke sistem', '::1', 1, '2022-12-20 13:16:04'),
(845, '2022-12-21 01:02:13', 'Muh. Fadjrul Falakh melakukan login ke sistem', '::1', 1, '2022-12-21 01:02:13'),
(846, '2022-12-21 01:15:00', 'Muh. Fadjrul Falakh menambah data pasien dengan ID - nama :  - Dira Fadhilah', '::1', 1, '2022-12-21 01:15:00'),
(847, '2022-12-21 01:17:24', 'Muh. Fadjrul Falakh menambah data pasien dengan ID - nama :  - Muh. Alhamsyah', '::1', 1, '2022-12-21 01:17:24'),
(848, '2022-12-21 01:19:56', 'Muh. Fadjrul Falakh menambah data pasien dengan ID - nama :  - Eka Pratiwi', '::1', 1, '2022-12-21 01:19:56'),
(849, '2022-12-21 01:22:45', 'Muh. Fadjrul Falakh menambah data pasien dengan ID - nama :  - Rosantika Kamelia', '::1', 1, '2022-12-21 01:22:45'),
(850, '2022-12-21 01:24:50', 'Muh. Fadjrul Falakh menambah data pasien dengan ID - nama :  - Muh. Kemal Hayat', '::1', 1, '2022-12-21 01:24:50'),
(851, '2022-12-21 01:32:53', 'Muh. Fadjrul Falakh mengubah data rekam medis pengkajian awal : ', '::1', 1, '2022-12-21 01:32:53'),
(852, '2022-12-21 01:36:09', 'Muh. Fadjrul Falakh mengubah data rekam medis pengkajian awal : ', '::1', 1, '2022-12-21 01:36:09'),
(853, '2022-12-21 01:36:18', 'Muh. Fadjrul Falakh menghapus data rekam medis pengkajian awal dengan ID RM : 3', '::1', 1, '2022-12-21 01:36:18'),
(854, '2022-12-21 01:36:28', 'Muh. Fadjrul Falakh menghapus data rekam medis pengkajian awal dengan ID RM : 5', '::1', 1, '2022-12-21 01:36:28'),
(855, '2022-12-21 01:44:06', 'Muh. Fadjrul Falakh menambah data rekam medis pengkajian awal ID Pasien : 12', '::1', 1, '2022-12-21 01:44:06'),
(856, '2022-12-21 01:44:45', 'Muh. Fadjrul Falakh mengubah data rekam medis pengkajian awal : ', '::1', 1, '2022-12-21 01:44:45'),
(857, '2022-12-21 01:46:28', 'Muh. Fadjrul Falakh mengubah data rekam medis pengkajian awal : ', '::1', 1, '2022-12-21 01:46:28'),
(858, '2022-12-21 01:48:37', 'Muh. Fadjrul Falakh mengubah data rekam medis pengkajian awal : 12', '::1', 1, '2022-12-21 01:48:37'),
(859, '2022-12-21 01:53:47', 'Muh. Fadjrul Falakh mengubah data rekam medis pengkajian awal ID Pasien : 12', '::1', 1, '2022-12-21 01:53:47'),
(860, '2022-12-21 01:55:13', 'Muh. Fadjrul Falakh mengubah data user dengan nama : Robin', '::1', 1, '2022-12-21 01:55:13'),
(861, '2022-12-21 01:55:55', 'Robin melakukan login ke sistem', '::1', 6, '2022-12-21 01:55:55'),
(862, '2022-12-21 01:59:44', 'Gian Ainur melakukan login ke sistem', '::1', 7, '2022-12-21 01:59:44'),
(863, '2022-12-21 02:00:14', 'Muh. Fadjrul Falakh melakukan login ke sistem', '::1', 1, '2022-12-21 02:00:14'),
(864, '2022-12-21 02:06:16', 'Robin melakukan login ke sistem', '::1', 6, '2022-12-21 02:06:16'),
(865, '2022-12-21 02:08:56', 'Gian Ainur melakukan login ke sistem', '::1', 7, '2022-12-21 02:08:56'),
(866, '2022-12-21 14:06:01', 'Muh. Fadjrul Falakh melakukan login ke sistem', '::1', 1, '2022-12-21 14:06:01'),
(867, '2022-12-21 14:08:38', 'Muh. Fadjrul Falakh menambah data pasien dengan ID - nama :  - Fadjrul', '::1', 1, '2022-12-21 14:08:38'),
(868, '2022-12-21 14:12:19', 'Muh. Fadjrul Falakh menambah data rekam medis pengkajian awal ID Pasien : 20', '::1', 1, '2022-12-21 14:12:19'),
(869, '2022-12-22 00:45:34', 'Muh. Fadjrul Falakh melakukan login ke sistem', '::1', 1, '2022-12-22 00:45:34'),
(870, '2022-12-22 01:30:44', 'Muh. Fadjrul Falakh menambah data pasien dengan ID - nama :  - jsnjsncsl', '::1', 1, '2022-12-22 01:30:44'),
(871, '2023-10-18 21:53:52', 'Christian R. melakukan login ke sistem', '::1', 1, '2023-10-18 21:53:52'),
(872, '2023-10-18 21:55:47', 'Christian R. mengubah data Profile : administrator', '::1', 1, '2023-10-18 21:55:47'),
(873, '2023-10-19 03:34:51', 'Christian R. melakukan login ke sistem', '::1', 1, '2023-10-19 03:34:51'),
(874, '2023-10-19 04:16:10', 'Christian R. melakukan login ke sistem', '::1', 1, '2023-10-19 04:16:10'),
(875, '2023-10-19 09:19:37', 'Christian R. melakukan login ke sistem', '::1', 3, '2023-10-19 09:19:37'),
(876, '2023-10-20 21:08:52', 'Portal Studio melakukan login ke sistem', '::1', 1, '2023-10-20 21:08:52'),
(877, '2023-10-21 00:51:19', 'Portal Studio menambah data unit dengan ID - nama :  - Alca', '::1', 1, '2023-10-21 00:51:19'),
(878, '2023-10-21 00:53:23', 'Portal Studio menambah data unit dengan ID - nama :  - Alca', '::1', 1, '2023-10-21 00:53:23'),
(879, '2023-10-21 00:58:31', 'Portal Studio menambah data unit dengan ID - nama :  - sdsd', '::1', 1, '2023-10-21 00:58:31'),
(880, '2023-10-21 00:59:44', 'Portal Studio menambah data unit dengan ID - nama :  - sdsdsd', '::1', 1, '2023-10-21 00:59:44'),
(881, '2023-10-21 01:01:19', 'Portal Studio menambah data unit dengan ID - nama :  - Alca', '::1', 1, '2023-10-21 01:01:19'),
(882, '2023-10-21 01:19:34', 'Portal Studio menambah data unit dengan ID - nama :  - Alca', '::1', 1, '2023-10-21 01:19:34'),
(883, '2023-10-21 01:53:32', 'Portal Studio mengubah data unit :  - Alcas', '::1', 1, '2023-10-21 01:53:32'),
(884, '2023-10-21 02:08:00', 'Portal Studio mengubah data unit : 7 - Alcas', '::1', 1, '2023-10-21 02:08:00'),
(885, '2023-10-21 02:08:09', 'Portal Studio mengubah data unit : 7 - Alcas', '::1', 1, '2023-10-21 02:08:09'),
(886, '2023-10-21 02:09:40', 'Portal Studio mengubah data unit : 7 - Alcas', '::1', 1, '2023-10-21 02:09:40'),
(887, '2023-10-21 02:11:25', 'Portal Studio mengubah data unit : 7 - Alcas', '::1', 1, '2023-10-21 02:11:25'),
(888, '2023-10-21 02:13:31', 'Portal Studio mengubah data unit : 7 - Alcas', '::1', 1, '2023-10-21 02:13:31'),
(889, '2023-10-21 02:14:24', 'Portal Studio mengubah data unit : 7 - Alcas', '::1', 1, '2023-10-21 02:14:24'),
(890, '2023-10-21 02:15:52', 'Portal Studio mengubah data unit : 7 - Alcas', '::1', 1, '2023-10-21 02:15:52'),
(891, '2023-10-21 02:20:21', 'Portal Studio mengubah data unit : 7 - Alcas', '::1', 1, '2023-10-21 02:20:21'),
(892, '2023-10-21 02:20:36', 'Portal Studio mengubah data unit : 7 - Alcas', '::1', 1, '2023-10-21 02:20:36'),
(893, '2023-10-21 11:09:04', 'Portal Studio melakukan login ke sistem', '::1', 1, '2023-10-21 11:09:04'),
(894, '2023-10-21 12:25:46', 'Portal Studio menambah data unit  gallery dengan ID - nama :  - room', '::1', 1, '2023-10-21 12:25:46'),
(895, '2023-10-21 12:27:44', 'Portal Studio menambah data unit  gallery dengan ID - nama :  - room 2', '::1', 1, '2023-10-21 12:27:44'),
(896, '2023-10-21 12:46:12', 'Portal Studio menambah data unit  gallery dengan ID - nama :  - Alca Room', '::1', 1, '2023-10-21 12:46:12'),
(897, '2023-10-21 13:08:24', 'Portal Studio menghapus data gallery dengan ID : 4', '::1', 1, '2023-10-21 13:08:24'),
(898, '2023-10-21 13:09:25', 'Portal Studio menghapus data gallery dengan ID : 3', '::1', 1, '2023-10-21 13:09:25'),
(899, '2023-10-21 13:12:18', 'Portal Studio menghapus data gallery dengan ID : 3', '::1', 1, '2023-10-21 13:12:18'),
(900, '2023-10-21 13:19:30', 'Portal Studio mengubah data gallery unit :  - ', '::1', 1, '2023-10-21 13:19:30'),
(901, '2023-10-21 13:21:14', 'Portal Studio mengubah data gallery unit :  - ', '::1', 1, '2023-10-21 13:21:14'),
(902, '2023-10-21 13:21:34', 'Portal Studio mengubah data gallery unit :  - ', '::1', 1, '2023-10-21 13:21:34'),
(903, '2023-10-21 13:22:31', 'Portal Studio mengubah data gallery unit : roomss', '::1', 1, '2023-10-21 13:22:31'),
(904, '2023-10-21 13:22:39', 'Portal Studio mengubah data gallery unit : roomss', '::1', 1, '2023-10-21 13:22:39'),
(905, '2023-10-21 13:22:54', 'Portal Studio mengubah data gallery unit : roomss', '::1', 1, '2023-10-21 13:22:54'),
(906, '2023-10-21 13:31:16', 'administrator menghapus data informasi dengan ID : 12', '::1', 1, '2023-10-21 13:31:16'),
(907, '2023-10-21 15:12:41', 'Portal Studio mengubah data gallery unit : Living Room Deluxe', '::1', 1, '2023-10-21 15:12:41'),
(908, '2023-10-21 16:05:46', 'Portal Studio mengubah data siteplan', '::1', 1, '2023-10-21 16:05:46'),
(909, '2023-10-21 16:06:27', 'Portal Studio mengubah data siteplan', '::1', 1, '2023-10-21 16:06:27'),
(910, '2023-10-21 16:06:55', 'Portal Studio mengubah data siteplan', '::1', 1, '2023-10-21 16:06:55'),
(911, '2023-10-21 16:07:09', 'Portal Studio mengubah data siteplan', '::1', 1, '2023-10-21 16:07:09'),
(912, '2023-10-21 21:40:05', 'Portal Studio melakukan login ke sistem', '::1', 1, '2023-10-21 21:40:05'),
(913, '2023-10-21 23:28:13', 'Super Admin menambah data cluster Gym dengan ID - nama :  - Gym', '::1', 1, '2023-10-21 23:28:13'),
(914, '2023-10-21 23:29:42', 'Super Admin mengubah data cluster : Gyms', '::1', 1, '2023-10-21 23:29:42'),
(915, '2023-10-21 23:29:51', 'Super Admin mengubah data cluster : Gyms', '::1', 1, '2023-10-21 23:29:51'),
(916, '2023-10-21 23:31:50', 'Super Admin menghapus data cluster dengan ID : 1', '::1', 1, '2023-10-21 23:31:50'),
(917, '2023-10-21 23:54:48', 'Super Admin menambah data cluster Supermarket dengan ID - nama :  - Supermarket', '::1', 1, '2023-10-21 23:54:48'),
(918, '2023-10-22 14:06:42', 'Portal Studio melakukan login ke sistem', '::1', 1, '2023-10-22 14:06:42'),
(919, '2023-10-22 14:31:58', 'Portal Studio mengubah data siteplan', '::1', 1, '2023-10-22 14:31:58'),
(920, '2023-10-22 14:42:06', 'Portal Studio menambah data optical Binus ASO dengan ID - nama :  - Binus ASO', '::1', 1, '2023-10-22 14:42:06'),
(921, '2023-10-22 14:47:20', 'Portal Studio mengubah data tempat : Binus ASO', '::1', 1, '2023-10-22 14:47:20'),
(922, '2023-10-22 14:47:41', 'Portal Studio mengubah data tempat : Binus ASO', '::1', 1, '2023-10-22 14:47:41'),
(923, '2023-10-22 14:48:36', 'Portal Studio menghapus data tempat dengan ID : 1', '::1', 1, '2023-10-22 14:48:36'),
(924, '2023-10-22 14:48:52', 'Portal Studio menghapus data cluster dengan ID : 2', '::1', 1, '2023-10-22 14:48:52');
INSERT INTO `tbl_log` (`log_id`, `log_time`, `log_message`, `log_ipaddress`, `user_id`, `createtime`) VALUES
(925, '2023-10-22 15:55:04', 'Portal Studio menambah data project dengan nama : Prestigious Pavilion', '::1', 1, '2023-10-22 15:55:04'),
(926, '2023-10-22 20:52:47', 'Portal Studio melakukan login ke sistem', '::1', 1, '2023-10-22 20:52:47'),
(927, '2023-10-23 01:21:34', 'Portal Studio mengubah data unit : 1 - Armas', '::1', 1, '2023-10-23 01:21:34'),
(928, '2023-10-23 01:31:28', 'Portal Studio mengubah data gallery project : ', '::1', 1, '2023-10-23 01:31:28'),
(929, '2023-10-23 01:33:03', 'Portal Studio mengubah data gallery project : photo-20231023013303-9123.jpg', '::1', 1, '2023-10-23 01:33:03'),
(930, '2023-10-23 01:43:37', 'Portal Studio mengubah data gallery project : photo-20231023014337-9627.jpg', '::1', 1, '2023-10-23 01:43:37'),
(931, '2023-10-23 01:46:31', 'Portal Studio menghapus data gallery dengan ID : ', '::1', 1, '2023-10-23 01:46:31'),
(932, '2023-10-23 01:47:55', 'Portal Studio menghapus data gallery dengan ID : 1', '::1', 1, '2023-10-23 01:47:55'),
(933, '2023-10-23 02:00:48', 'Portal Studio menghapus data gallery dengan ID : 5', '::1', 1, '2023-10-23 02:00:48'),
(934, '2023-10-23 02:01:59', 'Portal Studio menghapus data gallery dengan ID : ', '::1', 1, '2023-10-23 02:01:59'),
(935, '2023-10-23 07:50:13', 'Portal Studio melakukan login ke sistem', '::1', 1, '2023-10-23 07:50:13'),
(936, '2023-10-23 07:54:24', 'Portal Studio mengubah data project : 2 - Prestigious Pavilions', '::1', 1, '2023-10-23 07:54:24'),
(937, '2023-10-23 07:54:39', 'Portal Studio menghapus data project dengan ID : 1', '::1', 1, '2023-10-23 07:54:39'),
(938, '2023-10-23 07:54:46', 'Portal Studio menghapus data project dengan ID : 2', '::1', 1, '2023-10-23 07:54:46'),
(939, '2023-10-23 07:57:57', 'Portal Studio mengubah data user dengan nama : contentwriter', '::1', 1, '2023-10-23 07:57:57'),
(940, '2023-10-23 08:32:46', 'Portal Studio menambah data cluster Wellness dengan ID - nama :  - Wellness', '::1', 1, '2023-10-23 08:32:46'),
(941, '2023-10-23 08:33:02', 'Portal Studio menambah data cluster Out Door GYM dengan ID - nama :  - Out Door GYM', '::1', 1, '2023-10-23 08:33:02'),
(942, '2023-10-23 08:33:15', 'Portal Studio menambah data cluster Swimming Pool dengan ID - nama :  - Swimming Pool', '::1', 1, '2023-10-23 08:33:15'),
(943, '2023-10-23 08:35:28', 'Portal Studio menambah data cluster Living World dengan ID - nama :  - Living World', '::1', 1, '2023-10-23 08:35:28'),
(944, '2023-10-23 08:35:42', 'Portal Studio mengubah data cluster : Wellness', '::1', 1, '2023-10-23 08:35:42'),
(945, '2023-10-23 08:35:52', 'Portal Studio mengubah data cluster : Swimming Pool', '::1', 1, '2023-10-23 08:35:52'),
(946, '2023-10-23 08:36:04', 'Portal Studio menambah data cluster Pasar 8 dengan ID - nama :  - Pasar 8', '::1', 1, '2023-10-23 08:36:04'),
(947, '2023-10-23 08:36:39', 'Portal Studio menambah data cluster Basket Ball Court dengan ID - nama :  - Basket Ball Court', '::1', 1, '2023-10-23 08:36:39'),
(948, '2023-10-23 12:54:40', 'Portal Studio melakukan login ke sistem', '::1', 1, '2023-10-23 12:54:40'),
(949, '2023-10-23 12:58:41', 'Portal Studio menambah data optical Binus ASO dengan ID - nama :  - Binus ASO', '::1', 1, '2023-10-23 12:58:41'),
(950, '2023-10-23 13:14:12', 'Portal Studio mengubah data siteplan', '::1', 1, '2023-10-23 13:14:12'),
(951, '2023-10-23 15:27:27', 'Portal Studio mengubah data unit : 1 - Arma', '::1', 1, '2023-10-23 15:27:27'),
(952, '2023-10-23 15:28:40', 'Portal Studio menambah data unit dengan ID - nama :  - Alca', '::1', 1, '2023-10-23 15:28:40'),
(953, '2023-10-23 15:31:11', 'Portal Studio menghapus data gallery dengan ID : ', '::1', 1, '2023-10-23 15:31:11'),
(954, '2023-10-23 15:31:33', 'Portal Studio menghapus data gallery dengan ID : ', '::1', 1, '2023-10-23 15:31:33'),
(955, '2023-10-23 20:58:37', 'Portal Studio melakukan login ke sistem', '::1', 1, '2023-10-23 20:58:37'),
(956, '2023-10-24 04:46:14', 'Portal Studio melakukan login ke sistem', '::1', 1, '2023-10-24 04:46:14'),
(957, '2023-10-24 04:48:38', 'Portal Studio menambah data project dengan nama : Sutera Winona', '::1', 1, '2023-10-24 04:48:38'),
(958, '2023-10-24 10:26:09', 'Portal Studio melakukan login ke sistem', '::1', 1, '2023-10-24 10:26:09');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_optical_layout`
--

CREATE TABLE `tbl_optical_layout` (
  `optical_id` int(11) NOT NULL,
  `optical_name` varchar(128) NOT NULL,
  `optical_cover` varchar(128) NOT NULL,
  `optical_distance` varchar(128) NOT NULL,
  `optical_distance_walk` int(24) NOT NULL,
  `optical_distance_vehicle` int(24) NOT NULL,
  `createtime` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_optical_layout`
--

INSERT INTO `tbl_optical_layout` (`optical_id`, `optical_name`, `optical_cover`, `optical_distance`, `optical_distance_walk`, `optical_distance_vehicle`, `createtime`) VALUES
(2, 'Binus ASO', 'optical-20231023125840.jpg', '2', 10, 5, '2023-10-23 04:58:40');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_project`
--

CREATE TABLE `tbl_project` (
  `project_id` int(24) NOT NULL,
  `project_name` varchar(128) NOT NULL,
  `project_cover` varchar(128) NOT NULL,
  `project_description` text NOT NULL,
  `project_bedroom` varchar(128) NOT NULL,
  `project_bathroom` varchar(128) NOT NULL,
  `project_luas` int(128) NOT NULL,
  `project_price` varchar(128) NOT NULL,
  `update_at` datetime NOT NULL,
  `createtime` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_project`
--

INSERT INTO `tbl_project` (`project_id`, `project_name`, `project_cover`, `project_description`, `project_bedroom`, `project_bathroom`, `project_luas`, `project_price`, `update_at`, `createtime`) VALUES
(3, 'Sutera Winona', 'project-20231024044837.jpg', 'The property consists of a house with a total built area of 330 m2, completely renovated, set on a plot of 30,687 m2, which includes a vineyard (currently inactive), fruit trees, a water mine, and green tree spaces, providing maximum privacy to the location.\r\n\r\nThe house is spread over 2 floors: On the 1st floor, there\'s the entire social area, which includes a living and dining room with a heat recovery system, a kitchen with an outdoor dining area (with a wood oven and barbecue), as well as an indoor pool and a leisure area. On the 2nd floor, there\'s the entire private area with 4 suites, all with direct access to a deck/terrace/solarium. It also has a closed parking box.\r\n\r\nThe finishes are of high quality, with highlights such as stone walls, solid wood flooring, air conditioning, heat recovery system, thermal insulation in window frames, ceramic coatings in the bathrooms, and a fully equipped kitchen.\r\nThe house is licensed for short-term rentals (AL), although it has never been used in this way.\r\nSchedule your visit now with one of our real estate consultants.\r\n\r\nRÉPLICA, a real estate reference. With 30 years of experience in the national market, we apply best practices and methodologies that favor both the owner and the buyer, providing the best results for all parties involved. We work with a strict positioning in the provision of real estate services, supporting our activity with the experience of our team of professionals and effective advertising and marketing solutions.', '3+1', '3+1', 455, 'Rp. 150.000.000', '2023-10-24 04:48:38', '2023-10-23 20:48:38');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_project_gallery`
--

CREATE TABLE `tbl_project_gallery` (
  `project_gallery_id` int(24) NOT NULL,
  `project_gallery_image` varchar(128) NOT NULL,
  `project_gallery_token` varchar(128) NOT NULL,
  `project_id` int(24) NOT NULL,
  `createtime` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_project_gallery`
--

INSERT INTO `tbl_project_gallery` (`project_gallery_id`, `project_gallery_image`, `project_gallery_token`, `project_id`, `createtime`) VALUES
(6, 'photo2-20231023020013-2136.JPG', 'token-20231023020002-0.6727490364708544', 2, '2023-10-22 18:00:13'),
(7, 'photo2-20231023020014-7883.JPG', 'token-20231023020002-0.8076734403085579', 2, '2023-10-22 18:00:14'),
(8, 'photo3-20231024044854-2176.jpg', 'token-20231024044842-0.03769299026115758', 3, '2023-10-23 20:48:54'),
(9, 'photo3-20231024044854-5161.jpg', 'token-20231024044842-0.18417362215464173', 3, '2023-10-23 20:48:54'),
(10, 'photo3-20231024044854-3345.jpg', 'token-20231024044842-0.5558200668494191', 3, '2023-10-23 20:48:54');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_setting`
--

CREATE TABLE `tbl_setting` (
  `setting_id` int(11) NOT NULL,
  `setting_appname` varchar(100) NOT NULL,
  `setting_short_appname` varchar(20) NOT NULL,
  `setting_owner_name` varchar(100) NOT NULL,
  `setting_phone` varchar(30) NOT NULL,
  `setting_email` varchar(100) NOT NULL,
  `setting_address` text NOT NULL,
  `setting_logo` varchar(100) NOT NULL,
  `setting_background` varchar(150) NOT NULL,
  `setting_instagram` varchar(150) NOT NULL,
  `setting_facebook` varchar(150) NOT NULL,
  `setting_youtube` varchar(150) NOT NULL,
  `setting_about` text DEFAULT NULL,
  `createtime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_setting`
--

INSERT INTO `tbl_setting` (`setting_id`, `setting_appname`, `setting_short_appname`, `setting_owner_name`, `setting_phone`, `setting_email`, `setting_address`, `setting_logo`, `setting_background`, `setting_instagram`, `setting_facebook`, `setting_youtube`, `setting_about`, `createtime`) VALUES
(1, 'The Gramercy', 'The Gramercy', 'ALAM SUTERA', '6287777603838', 'thegramercy.as@gmail.com', 'Jl. Alam Sutera Boulevard Bundaran C, Pd. Jagung Tim., Serpong Utara, Kota Tangerang Selatan, Banten - 15326', 'medicord120221125111342.svg', 'clouds.jpeg', 'https://www.instagram.com/alamsutera.autograph/', 'https://www.instagram.com/alamsutera.autograph/', 'https://www.instagram.com/alamsutera.autograph/', 'A gift of gratitude, Alam Sutera offers a sanctuary for serene living in thanks for the achievements attained. Not just a house, The Gramercy is a home where you can express yourself, appreciate life, connect with others, and create life memories.', '2022-10-01 15:22:31');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_siteplan`
--

CREATE TABLE `tbl_siteplan` (
  `siteplan_id` int(24) NOT NULL,
  `siteplan_image1` varchar(128) NOT NULL,
  `siteplan_image2` varchar(128) NOT NULL,
  `siteplan_image1_description` text NOT NULL,
  `siteplan_image2_description` text NOT NULL,
  `siteplan_cluster` text NOT NULL,
  `siteplan_optical` text NOT NULL,
  `createtime` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_siteplan`
--

INSERT INTO `tbl_siteplan` (`siteplan_id`, `siteplan_image1`, `siteplan_image2`, `siteplan_image1_description`, `siteplan_image2_description`, `siteplan_cluster`, `siteplan_optical`, `createtime`) VALUES
(1, 'siteplan_image1-20231023131412.jpg', 'siteplan_image1-202310231314121.jpg', 'Explore The Gramercy housing development\'s masterfully designed site plan, offering four unit types (ARMA Corner, ARMA, AERA, ALCA) and enticing amenities such as an elegant entrance gate. This secure and sophisticated community is also conveniently located near Binus ASO, BCA, Hotel Tentrem, Living World, ST. Laurensia School, Pasar 8, Flavor Bliss, Mercure Hotel, EMC, and The Gramercy Lounge sport center. This meticulously crafted site layout ensures residents have access to a variety of living options and facilities, creating a harmonious and vibrant living environment for all.', 'EExplore The Gramercy housing development\'s masterfully designed site plan, offering four unit types (ARMA Corner, ARMA, AERA, ALCA) and enticing amenities such as an elegant entrance gate. This secure and sophisticated community is also conveniently located near Binus ASO, BCA, Hotel Tentrem, Living World, ST. Laurensia School, Pasar 8, Flavor Bliss, Mercure Hotel, EMC, and The Gramercy Lounge sport center. This meticulously crafted site layout ensures residents have access to a variety of living options and facilities, creating a harmonious and vibrant living environment for all.', 'Experience The Gramercy\'s Cluster Amenities: shared fitness center, pristine pool, green spaces, and communal areas fostering a vibrant and luxurious community.s', 'Optimal Strategic Layout is a tailored layout concept designed to provide ease of access and efficiency in various aspects of daily life. It emphasizes positions that facilitate mobility and the use of amenities.', '2023-10-23 05:14:12');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_unit`
--

CREATE TABLE `tbl_unit` (
  `unit_id` int(24) NOT NULL,
  `unit_name` varchar(300) NOT NULL,
  `unit_bedroom` varchar(10) NOT NULL,
  `unit_bathroom` varchar(10) NOT NULL,
  `unit_luas` varchar(10) NOT NULL,
  `unit_description` text NOT NULL,
  `unit_preview1` varchar(128) NOT NULL,
  `unit_preview2` varchar(128) NOT NULL,
  `update_at` datetime NOT NULL,
  `createtime` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_unit`
--

INSERT INTO `tbl_unit` (`unit_id`, `unit_name`, `unit_bedroom`, `unit_bathroom`, `unit_luas`, `unit_description`, `unit_preview1`, `unit_preview2`, `update_at`, `createtime`) VALUES
(1, 'Arma', '4+1', '5+1', '569', 'Never Underestimate the power of dreams and the influencer of the human spiriti. the quote inspired design of the 569 sqm ARMA with 5+1 bedrooms, 6+1 luxury  bathrooms. We support the power of imagination in creating a meaningful life. Available in two designs, the Arma and Arma Corner.', 'arma1.jpg', 'arma2.jpg', '2023-10-23 15:27:26', '2023-10-23 07:27:26');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_user`
--

CREATE TABLE `tbl_user` (
  `user_id` int(11) NOT NULL,
  `user_fullname` varchar(128) NOT NULL,
  `user_name` varchar(128) NOT NULL,
  `user_password` varchar(128) NOT NULL,
  `user_email` varchar(128) NOT NULL,
  `user_photo` varchar(128) NOT NULL,
  `user_lastlogin` datetime NOT NULL,
  `createtime` datetime NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_user`
--

INSERT INTO `tbl_user` (`user_id`, `user_fullname`, `user_name`, `user_password`, `user_email`, `user_photo`, `user_lastlogin`, `createtime`, `group_id`) VALUES
(1, 'Portal Studio', 'administrator', '$2y$10$6ELmhIbfosdPtGcQReBXbuMevkFPXZTJUi4au9oh4mxx1iF90tqyy', 'portalstudio30@gmail.com', 'profile-1-20231018215545.jpg', '2022-10-05 21:47:20', '2022-10-05 21:47:20', 1),
(2, 'Alam Sutera', 'administrator', '$2y$10$6ELmhIbfosdPtGcQReBXbuMevkFPXZTJUi4au9oh4mxx1iF90tqyy', 'administrator@gmail.com', 'profile-1-20231018215547.jpg', '0000-00-00 00:00:00', '2022-10-27 04:59:45', 2),
(3, 'Christian R.', 'contentwriter', '$2y$10$cBuTJ1V9jmSlYjH00HsoouC58GumgmpojUk/cdXJB7bSbWqwyYF7y', 'contentwriter@gmail.com', 'profile-1-20231018215548.jpg', '0000-00-00 00:00:00', '2022-12-10 20:58:49', 4);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_web_content`
--

CREATE TABLE `tbl_web_content` (
  `content_id` int(11) NOT NULL,
  `content_title` varchar(30) NOT NULL,
  `content_text` text NOT NULL,
  `content_image` varchar(50) NOT NULL,
  `content_menu` varchar(30) NOT NULL,
  `createtime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_web_content`
--

INSERT INTO `tbl_web_content` (`content_id`, `content_title`, `content_text`, `content_image`, `content_menu`, `createtime`) VALUES
(1, 'Developer', '<p>-</p>\r\n', 'content-20210611091905.png', 'developer', '2021-06-11 09:19:05');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_web_field`
--

CREATE TABLE `tbl_web_field` (
  `field_id` int(11) NOT NULL,
  `field_name` varchar(100) NOT NULL,
  `createtime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_web_field`
--

INSERT INTO `tbl_web_field` (`field_id`, `field_name`, `createtime`) VALUES
(1, 'Semua', '2022-10-02 16:01:40');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_web_gallery`
--

CREATE TABLE `tbl_web_gallery` (
  `gallery_id` int(11) NOT NULL,
  `gallery_name` varchar(200) NOT NULL,
  `gallery_cover` text NOT NULL,
  `gallery_url` text DEFAULT NULL,
  `gallery_description` text NOT NULL,
  `gallery_date` date NOT NULL,
  `gallery_type` varchar(10) NOT NULL,
  `createtime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_web_gallery`
--

INSERT INTO `tbl_web_gallery` (`gallery_id`, `gallery_name`, `gallery_cover`, `gallery_url`, `gallery_description`, `gallery_date`, `gallery_type`, `createtime`) VALUES
(9, 'Kegiatan Pengukuran Kebugaran ASN Kecamatan Kadia', 'video-20221214144343.mp4', 'https://www.youtube.com/watch?v=-iJsq6rF0Do&t=5s', 'Aparatur Sipil Negara (ASN) merupakan pekerja dengan usia produktif yang membutuhkan kebugaran jasmani yang baik dalam melaksanakan tugas dan fungsinya. Untuk mengetahui tingkat kebugaran jasmani, perlu dilakukan pengukuran untuk mewujudkan ASN yang produktif serta penerapan gaya hidup sehat.\r\n\r\nPeningkatan kebugaran jasmani bertujuan meningkatkan stamina dan status kesehatan seseorang, dapat dicapai dengan menambah aktivitas fisik dan latihan fisik/olahraga secara baik, benar, terukur, dan teratur.\r\n\r\nSalah satu metode yang dapat digunakan untuk pengukuran kebugaran jasmani ASN adalah Rockport. Berdasarkan hasil kajian para ahli, metode ini mudah dilaksanakan dan tidak memerlukan sarana dan prasarana khusus sehingga dapat dijadikan sebagai salah satu pilihan latihan fisik..\r\n\r\nNahh kemaren (Sabtu, 18 September 2021) telah dilaksanakan kegiatan dimaksud yang berlokasi di area kantor kecamatan kadia dihadiri oleh ASN Kecamatan Kadia, ASN Kelurahan Kadia dan Pondambea serta ASN Puskesmas Mekar dan melibatkan dokter pengawas.', '2021-09-18', 'video', '2022-12-14 14:43:43'),
(10, 'Minlok Lintas Sektor Kecamatan Kadia', 'video-20221214163803.mp4', 'https://www.youtube.com/watch?v=uunrtfvPqnM&t=6s', 'Hari ini (Kamis, 30 September 2021) dilaksanakan kegiatan Minilokakarya Lintas Sektor di Kantor Kecamatan Kadia yang dihadiri oleh Camat, Lurah, Bhabinsa, Bhabinkamtibmas, Kepala Sekolah, Toma/Toga wilker Puskesmas Mekar', '2021-09-18', 'video', '2022-12-14 16:38:03'),
(11, 'Launching Posyandu Remaja Solagratia Mahanaim', 'gallery-20221214164513.jpg', NULL, 'Foto Kegiatan Launching Posyandu Remaja Solagratia Mahanaim', '2021-11-13', 'photo', '2022-12-14 16:45:13'),
(12, 'Kegiatan Vaksin di Plasa PT. Telkom WITEL Sultra, Indonesia', 'gallery-20221214170335.jpg', NULL, 'Foto tim vaksin', '2022-02-18', 'photo', '2022-12-14 17:03:35'),
(13, 'Kegiatan Kaji Banding dengan Puskesmas Lepo-Lepo', 'gallery-20221214170732.jpg', NULL, 'Foto kegiatan', '2021-11-09', 'photo', '2022-12-14 17:07:32'),
(14, 'kegiatan rutin kampung GERMAS RT.003/RW.003 Kelurahan Pondambea', 'gallery-20221214171018.jpg', NULL, 'kegiatan rutin kampung GERMAS RT.003/RW.003 Kelurahan Pondambea; Senam Bersama dan Pemeriksaan Kesehatan Masyarakat..(Minggu, 10 Oktober 2021)', '2021-10-10', 'photo', '2022-12-14 17:10:18'),
(15, 'Kegiatan Sharing dengan Topik \"Nutrisi pada Ibu Hamil\"', 'gallery-20221214171400.jpg', NULL, 'Terima Kasih dr. Muzdatul Khaeriah, Sp.OG M.Kes atas ilmunya hari ini ( Kamis, 17 Maret 2022),,semoga bermanfaat untuk para bunda-bunda', '2022-03-17', 'photo', '2022-12-14 17:14:00'),
(16, 'Kegiatan Verifikasi STBM Puskesmas Mekar', 'gallery-20221214171543.jpg', NULL, 'Kegiatan Verifikasi STBM Puskesmas Mekar, Perumnas dan Jati Raya di Kecamatan Kadia', '2021-07-17', 'photo', '2022-12-14 17:15:43');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_web_gallery_photo`
--

CREATE TABLE `tbl_web_gallery_photo` (
  `gallery_photo_id` int(11) NOT NULL,
  `gallery_photo_name` varchar(200) NOT NULL,
  `gallery_photo_token` varchar(100) NOT NULL,
  `gallery_id` int(11) NOT NULL,
  `createtime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_web_gallery_photo`
--

INSERT INTO `tbl_web_gallery_photo` (`gallery_photo_id`, `gallery_photo_name`, `gallery_photo_token`, `gallery_id`, `createtime`) VALUES
(19, 'photo-2-20210611190214-8120.png', 'token-20210611190205-0.2128556498343348', 2, '2021-06-11 19:02:14'),
(20, 'photo-1-20210611190252-1850.png', 'token-20210611190247-0.7843863151726149', 1, '2021-06-11 19:02:52'),
(21, 'photo-2-20210611190716-6055.png', 'token-20210611190712-0.6079270910029597', 2, '2021-06-11 19:07:16'),
(22, 'photo-2-20210611190722-2313.png', 'token-20210611190719-0.4930588848195715', 2, '2021-06-11 19:07:22'),
(23, 'photo-2-20210611190725-8204.png', 'token-20210611190719-0.6381562621644137', 2, '2021-06-11 19:07:25'),
(30, 'photo-11-20221214164534-5191.jpg', 'token-20221214164524-0.148589419852724', 11, '2022-12-14 16:45:34'),
(31, 'photo-11-20221214164534-8914.jpg', 'token-20221214164524-0.6227664395895876', 11, '2022-12-14 16:45:34'),
(32, 'photo-11-20221214164534-8406.jpg', 'token-20221214164524-0.8813841756315524', 11, '2022-12-14 16:45:34'),
(33, 'photo-11-20221214164534-9395.jpg', 'token-20221214164524-0.2551622686980046', 11, '2022-12-14 16:45:34'),
(34, 'photo-12-20221214170358-9336.jpg', 'token-20221214170345-0.8373024805566123', 12, '2022-12-14 17:03:58'),
(35, 'photo-12-20221214170358-2350.jpg', 'token-20221214170345-0.5447303128431589', 12, '2022-12-14 17:03:58'),
(36, 'photo-13-20221214170747-9187.jpg', 'token-20221214170743-0.4812185945200729', 13, '2022-12-14 17:07:47'),
(37, 'photo-14-20221214171039-4896.jpg', 'token-20221214171028-0.009942058756648997', 14, '2022-12-14 17:10:39'),
(38, 'photo-14-20221214171039-2333.jpg', 'token-20221214171028-0.04519317278822976', 14, '2022-12-14 17:10:39'),
(39, 'photo-14-20221214171039-1400.jpg', 'token-20221214171028-0.8173875624090434', 14, '2022-12-14 17:10:39'),
(40, 'photo-14-20221214171039-9402.jpg', 'token-20221214171028-0.3003723128728548', 14, '2022-12-14 17:10:39'),
(41, 'photo-14-20221214171039-8220.jpg', 'token-20221214171028-0.3495412789611394', 14, '2022-12-14 17:10:39'),
(42, 'photo-14-20221214171039-6692.jpg', 'token-20221214171028-0.9253418415273951', 14, '2022-12-14 17:10:39'),
(43, 'photo-14-20221214171040-2032.jpg', 'token-20221214171028-0.37542138505430334', 14, '2022-12-14 17:10:40'),
(44, 'photo-14-20221214171040-8528.jpg', 'token-20221214171028-0.6796747599869553', 14, '2022-12-14 17:10:40'),
(45, 'photo-15-20221214171413-8745.jpg', 'token-20221214171409-0.21742870393824676', 15, '2022-12-14 17:14:13'),
(46, 'photo-15-20221214171419-4995.jpg', 'token-20221214171409-0.870376589524247', 15, '2022-12-14 17:14:19'),
(47, 'photo-15-20221214171420-5564.jpg', 'token-20221214171409-0.258269611483553', 15, '2022-12-14 17:14:20'),
(48, 'photo-16-20221214171557-4059.jpg', 'token-20221214171550-0.9318769897639498', 16, '2022-12-14 17:15:57'),
(49, 'photo-16-20221214171557-9714.jpg', 'token-20221214171550-0.3369665042243464', 16, '2022-12-14 17:15:57');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_web_link`
--

CREATE TABLE `tbl_web_link` (
  `link_id` int(11) NOT NULL,
  `link_name` varchar(50) NOT NULL,
  `link_url` text NOT NULL,
  `link_image` text NOT NULL,
  `createtime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_web_link`
--

INSERT INTO `tbl_web_link` (`link_id`, `link_name`, `link_url`, `link_image`, `createtime`) VALUES
(1, 'Kota Kendari', 'https://www.kendarikota.go.id/', 'link-20221130132149.png', '2022-11-10 16:38:00'),
(2, 'BPJS Kesehatan', 'https://bpjs-kesehatan.go.id/bpjs/', 'link-20221130132603.png', '2022-11-10 16:39:39'),
(3, 'e-medicord', 'http://www.e-medicord.co.id/', 'link-20221130134408.svg', '2022-11-10 16:39:51');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_web_news`
--

CREATE TABLE `tbl_web_news` (
  `news_id` int(11) NOT NULL,
  `news_title` varchar(200) NOT NULL,
  `news_cover` varchar(50) NOT NULL,
  `news_text` text NOT NULL,
  `news_date` date NOT NULL,
  `news_count_view` int(11) NOT NULL,
  `news_slug` text NOT NULL,
  `news_category_id` int(11) NOT NULL,
  `field_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `createtime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_web_news`
--

INSERT INTO `tbl_web_news` (`news_id`, `news_title`, `news_cover`, `news_text`, `news_date`, `news_count_view`, `news_slug`, `news_category_id`, `field_id`, `user_id`, `createtime`) VALUES
(5, 'Kasus Gagal Ginjal Akut Pada Anak Meningkat, Orang Tua Diminta Waspada', 'thumbnailnews-20221214173750.jpeg', '<p>Kasus gagal ginjal akut yang menyerang anak-anak usia 6 bulan-18 tahun terjadi peningkatan terutama dalam dua bulan terakhir. Per tanggal 18 Oktober 2022 sebanyak 189 kasus telah dilaporkan, paling banyak didominasi usia 1-5 tahun.</p>\r\n<p>&nbsp;</p>\r\n<p>Seiring dengan peningkatan tersebut, Kemenkes meminta orang tua untuk tidak panik, tenang namun selalu waspada. Terutama apabila anak mengalami gejala yang mengarah kepada gagal ginjal akut seperti ada diare, mual ,muntah, demam selama 3-5 hari, batuk, pilek, sering mengantuk serta jumlah air seni/air kecil semakin sedikit bahkan tidak bisa buang air kecil sama sekali.</p>\r\n<p>&nbsp;</p>\r\n<p>&ldquo;Orang tua harus selalu hati-hati, pantau terus kesehatan anak-anak kita, jika anak mengalami keluhan yang mengarah kepada penyakit gagal ginjal akut, sebaiknya segera konsultasikan ke tenaga kesehatan jangan ditunda atau mencari pengobatan sendiri,&rdquo; kata Plt. Direktur Pelayanan Kesenatan Rujukan dr. Yanti Herman, MH. Kes.</p>\r\n<p>&nbsp;</p>\r\n<p>Pastikan bila anak sakit cukupi kebutuhan cairan tubuhnya dengan minum air. Lebih lanjut, gejala lain yang juga perlu diwaspadai orang tua adalah perubahan warna pada urine (pekat atau kecoklatan). Bila warna urine berubah dan volume urine berkurang, bahkan tidak ada urine selama 6-8 jam (saat siang hari), orang tua diminta segera membawa anak ke fasilitas pelayanan kesehatan terdekat untuk mendapatkan penanganan lebih lanjut.</p>\r\n<p>&nbsp;</p>\r\n<p>Sampai saat ini kasus gagal ginjal akut pada anak belum diketahui secara pasti penyebabnya, untuk itu pemerintah bersama Ikatan Dokter Anak Indonesia (IDAI) dan tim dokter RS Cipto Mangunkusumo (RSCM) membentuk satu tim yang bertugas untuk mengamati dan menyelidiki kasus gangguan ginjal akut pada anak.</p>\r\n<p>&nbsp;</p>\r\n<p>Dari data yang ada gejala yang muncul di awal adalah terkait infeksi saluran cerna yang utama untuk itu Kemkes menghimbau sebagai upaya pencegahan agar orang tua tetap memastikan perilaku hidup bersih dan sehat tetap diterapkan, pastikan cuci tangan tetap diterapkan, makan makanan yang bergizi seimbang, tidak jajan sembarangan, minum air matang dan pastikan imunisasi anak rutin dan lanjuti dilengkapi.</p>\r\n<p>&nbsp;</p>\r\n<p>Selain itu, Kemenkes juga telah menerbitkan Surat Keputusan Direktur Jenderal Pelayanan Kesehatan Nomor HK.02.02./2/I/3305/2022 tentang Tata Laksana dan Managemen Klinis Gangguan Ginjal Akut Progresif Atipikal (Atypical Progressive Acute Kidney Injury) Pada Anak di Fasilitas Pelayanan Kesehatan sebagai bagian peningkatan kewaspadaan.</p>\r\n<p>&nbsp;</p>\r\n<p>Surat keputusan ini memuat serangkaian kegiatan yang dilakukan oleh tenaga medis dan tenaga kesehatan lain dalam melakukan penanganan terhadap pasien gagal ginjal akut sesuai dengan indikasi medis.</p>\r\n<p>&nbsp;</p>\r\n<p>&ldquo;Belajar dari pandemi COVID-19, pemerintah tentu tidak bisa bekerja sendiri. Sinergi dan kolaborasi dari seluruh pihak sangat diperlukan untuk mencegah agar penyakit ini bisa di cegah sedini mungkin. Karenanya kami mengimbau kepada Dinas Kesehatan, rumah sakit maupun pintu masuk negara agar segera melaporkan apabila ada indikasi kasus yang mengarah kepada gagal ginjal akut maupun penyakit lain yang berpotensi mengalami KLB,&rdquo; imbuh dr. Yanti</p>\r\n<p>&nbsp;</p>\r\n<p>Sumber : <em>https://sehatnegeriku.kemkes.go.id/baca/rilis-media/20221017/3141288/kasus-gagal-ginjal-akut-pada-anak-meningkat-orang-tua-diminta-waspada/</em></p>', '2022-12-14', 1, 'kasus-gagal-ginjal-akut-pada-anak-meningkat-orang-tua-diminta-waspada', 1, 1, 1, '2022-12-14 17:37:50'),
(6, 'Sepanjang 2022, 6 Anak di Sukabumi Meninggal Akibat HIV/AIDS', 'thumbnailnews-20221214174353.jpeg', '<p>Kasus HIV/AIDS pada anak di Kabupaten Sukabumi mengalami peningkatan. Pada 2021 lalu, Komisi Penanggulangan AIDS Kabupaten Sukabumi mencatat ada 34 anak terpapar, sedangkan pada 2022 tercatat ada 42 anak positif dan enam di antaranya meninggal dunia.</p>\r\n<p>Hal itu disampaikan oleh Kepala Sekretariat KPA Kabupaten Sukabumi Dadang Sucipta. Dia mengatakan, anak-anak yang terpapar itu mulai dari usia 18 bulan hingga usia 12 tahun.</p>\r\n<p>&nbsp;</p>\r\n<p>\"Dari 42 anak yang ODHA (orang dengan HIV/AIDS) enam anak di antaranya sudah meninggal dunia sepanjang tahun 2022. Dari usia 18 bulan sampai usia 12 tahun (SMP), kalau sudah SMA masuknya kategori dewasa,\" kata Dadang kepada detikJabar, Rabu (14/12/2022).</p>\r\n<p>&nbsp;</p>\r\n<p>Dia mengungkapkan, rata-rata anak di Kabupaten Sukabumi terpapar HIV/AIDS dari ibunya. Kemudian, tak sedikit orang tua dari anak-anak itu meninggal dunia karena HIV.</p>\r\n<p>&nbsp;</p>\r\n<p>\"Mayoritas kebanyakan tertular dari ibunya, ada banyak yang sudah yatim, dan ada juga yang piatu. Jadi ibu bapaknya sudah meninggal karena HIV,\" ujarnya.</p>\r\n<p>&nbsp;</p>\r\n<p>Dia menjelaskan, penanganan pada ODHA dewasa dan anak-anak tak jauh berbeda. Mereka tetap diwajibkan mengkonsumsi obat antiretroviral (ARV) setiap hari dan berperilaku hidup sehat. Hanya saja, kata dia, ada pendekatan khusus terutama dari psikologis anak-anak ODHA.</p>\r\n<p>&nbsp;</p>\r\n<p>\"Berbeda pendekatannya, contoh makan obat bagi anak ODHA harus ada pengawas, kalau tidak sama orang tua, neneknya, bibinya. Ya ada pendampingan psikolog buat anak, kalau balita selain obat harus minum susu formula jangan ASI,\" sambungnya.</p>\r\n<p>&nbsp;</p>\r\n<p>Pihaknya mencatat, anak dengan HIV/AIDS yang meninggal dunia terjadi di Kecamatan Bojonggenteng. Anak tersebut tidak mendapatkan pengawasan dalam mengkonsumsi obat.</p>\r\n<p>&nbsp;</p>\r\n<p>\"Terakhir yang meninggal di Bojonggenteng. Nah Bojonggenteng orang tuanya sudah tidak ada dan diurus sama orang lain. Namanya orang lain kan tidak dapat terus mengawasi anak. Jadi harus ada PMO (pengawas minum obat) dari keluarga, minumnya harus rutin, kalau jam 20:00 ya jam segitu setiap hari,\" ungkapnya.</p>\r\n<p>&nbsp;</p>\r\n<p>Para anak dengan HIV/AIDS didapat dari tracing keluarganya. Pihaknya menyebut, kegiatan tracing secara aktif dilakukan untuk penanganan lebih cepat</p>\r\n<p>&nbsp;</p>\r\n<p>Baca artikel detikjabar, \"Sepanjang 2022, 6 Anak di Sukabumi Meninggal Akibat HIV/AIDS\" selengkapnya https://www.detik.com/jabar/berita/d-6460501/sepanjang-2022-6-anak-di-sukabumi-meninggal-akibat-hivaids.</p>', '2022-12-14', 0, 'sepanjang-2022-6-anak-di-sukabumi-meninggal-akibat-hivaids', 1, 1, 1, '2022-12-14 17:43:53'),
(7, 'Viral Ibu Muda Meninggal Usai Melahirkan Anak ke-10, Ini Pemicunya', 'thumbnailnews-20221214174902.jpeg', '<p>Melahirkan terlalu sering tidak hanya berbahaya bagi ibu, tetapi juga bayi yang dikandungnya. Hal ini terjadi pada seorang ibu di Malaysia yang meninggal dunia setelah melahirkan anaknya yang ke-10.</p>\r\n<p>Ibu yang bernama Nur Zaihan Abdul Halim menghembuskan napas terakhirnya di Hospital Universiti Kebangsaan Malaysia (HUKM). Nur Zaihan disebutkan meninggal dunia di usia yang masih muda, baru 33 tahun.</p>\r\n<p>&nbsp;</p>\r\n<p>\"Dia meninggal setelah melahirkan anaknya yg ke 10. Baby dapat diselamatkan dan dilahirkan 32 minggu dan masih admit di NICU HUKM,\" demikian dilaporkan oleh Penang Netizen.</p>\r\n<p>&nbsp;</p>\r\n<p>Laman Mingguan Wanita melaporkan Nur Zaihan meninggal karena komplikasi plasenta tahap ke-4 setelah menjalani operasi caesar sebanyak 8 kali. Perlengketan plasenta membuatnya mengalami pendarahan hebat berujung kematian.</p>\r\n<p>&nbsp;</p>\r\n<p>Spesialis obgyn dari Pusat Perubatan Price Court Malaysia dr Maiza Tusimin mengatakan risiko kehamilan dan persalinan kian tinggi jika wanita terlalu sering melahirkan. Ia juga menyebut operasi caesar maksimal 3 kali sebab banyak risiko yang bisa terjadi jika dilakukan lebih dari itu.</p>\r\n<p>&nbsp;</p>\r\n<p>\"Meski perlengkapan lengkap apalagi jika di RS kerajaan, yang dikhawatirkan adalah jika ada perlekatan plasenta. Kalau ada perlekatan pada rahim, akan terjadi pendarahan,\" ujarnya.</p>\r\n<p>&nbsp;</p>\r\n<p>\"Dalam kasus ibu muda ini, mungkin dia sudah pendarahan ketika di rumah dan sampai di RS sudah telat,\" tambahnya.</p>\r\n<p>&nbsp;</p>\r\n<p>Terlalu sering melahirkan bisa memberi dampak buruk bagi seorang ibu sehingga risiko kematian menjadi lebih meningkat. Jika terlalu sering melahirkan kemungkinan terjadi pendarahan saat persalinan. Perdarahan terjadi akibat kegagalan berkontraksi rahim atau biasa disebut perdarahan pasca persalinan.</p>\r\n<p>&nbsp;</p>\r\n<p>Baca artikel detikHealth, \"Viral Ibu Muda Meninggal Usai Melahirkan Anak ke-10, Ini Pemicunya\" selengkapnya <em>https://health.detik.com/berita-detikhealth/d-6460464/viral-ibu-muda-meninggal-usai-melahirkan-anak-ke-10-ini-pemicunya.</em></p>', '2022-12-14', 0, 'viral-ibu-muda-meninggal-usai-melahirkan-anak-ke-10-ini-pemicunya', 1, 1, 1, '2022-12-14 17:49:02'),
(8, 'Bos Bio Farma Buka-bukaan Stok Vaksin COVID-19 Jelang Akhir Tahun, Aman ?', 'thumbnailnews-20221214175153.jpeg', '<p>Seiring lonjakan kasus COVID-19 dalam beberapa waktu terakhir imbas subvarian Omicron XBB dan BQ,1, Indonesia sempat diterpa kabar kelangkaan stok vaksin COVID-19. Lantas kini menjelang momen libur Natal dan Tahun Baru yang rentan memicu kenaikan kasus, seperti apa stok vaksin di RI?</p>\r\n<p>Direktur Utama Bio Farma, Honesti Basyir, menyebut hingga kini pihaknya telah menyiapkan stok vaksin COVID-19 menjelang akhir tahun. Total sudah terdapat 9 juta vaksin diproduksi, dibarengi 800 ribu dosis vaksin COVID-19 produksi dalam negeri yakni IndoVac.</p>\r\n<p>&nbsp;</p>\r\n<p>\"(Stok vaksin COVID-19 menjelang akhir tahun) nggak masalah. Stok kita sudah nyiapin, kita sudah produksi sampai kemarin 9 juta dosis,\" ungkapnya saat ditemui detikcom di kawasan Jakarta Selatan, Selasa (13/12/2022).</p>\r\n<p>&nbsp;</p>\r\n<p>\"Proses rilis juga, kita sudah distribusikan yang IndoVac itu 800 ribu bertahap sesuai permintaan Kementerian Kesehatan, kita akan lakukan baik produksi maupun distribusi nanti,\" sambung Honesti.</p>\r\n<p>&nbsp;</p>\r\n<p>Lebih lanjut ia menegaskan, dirinya sama sekali tidak mengkhawatirkan perihal ketersediaan stok vaksin COVID-19 menjelang momen akhir tahun.</p>\r\n<p>&nbsp;</p>\r\n<p>\"Saya no issue masalah stok karena kita tadi saya bilang kita tinggal berapa hari. Kita sudah punya sampai 9 juta tapi proses rilis juga bertahap sesuai permintaan Kemenkes dan didiskusikan,\" pungkasnya</p>\r\n<p>&nbsp;</p>\r\n<p>Baca artikel detikHealth, \"Bos Bio Farma Buka-bukaan Stok Vaksin COVID-19 Jelang Akhir Tahun, Aman?\" selengkapnya <em>https://health.detik.com/berita-detikhealth/d-6461048/bos-bio-farma-buka-bukaan-stok-vaksin-covid-19-jelang-akhir-tahun-aman.</em></p>', '2022-12-14', 2, 'bos-bio-farma-buka-bukaan-stok-vaksin-covid-19-jelang-akhir-tahun-aman', 1, 1, 1, '2022-12-14 17:51:53'),
(9, 'Heboh Bjorka Bocorkan Data PeduliLindungi, Kemenkes Buka Suara', 'thumbnailnews-20221214175726.jpeg', '<p>Kementerian Kesehatan RI buka suara terkait bocornya data PeduliLindungi yang diklaim Bjorka yakni sebanyak 2,3 miliar rupiah. Juru bicara Kemenkes RI Mohammad Syahril menekankan pemerintah sudah mengetahui isu kebocoran tersebut.</p>\r\n<p>Kemenkes RI tengah melakukan investigasi lanjut berkoordinasi dengan Badan Siber dan Sandi Negara (BSSN), PT Telkom, dan beragam pihak lain.</p>\r\n<p>&nbsp;</p>\r\n<p>\"Kementerian Kesehatan telah mengetahui adanya isu di media sosial terkait dugaan peretasan data pengguna Peduli Lindungi oleh pihak yang tidak bertanggung jawab, \" kata dia dalam keterangan tertulis, Kamis (17/11/2022).</p>\r\n<p>&nbsp;</p>\r\n<p>Sembari menunggu hasil investigasi lanjut, Syahril mengimbau agar masyarakat tidak panik. Syahril juga menekankan publik untuk menghindari penyalahgunaan data yang berasal dari pihak tidak bertanggung jawab.</p>\r\n<p>&nbsp;</p>\r\n<p>Isu yang beredar yakni Bjorka disebut kembali membocorkan data miliarsn pengguna aplikasi PeduliLindungi. Bjorka membocorkan 48 gigabyte data yang disebut terkompresi, 175 gigabyte data tidak terkompresi dengan total 3.250.144.777 data.</p>\r\n<p>&nbsp;</p>\r\n<p>Data tersebut disebut bocor dengan format CSV yang terdiri dari email, NIK, phone number, device ID, COVID-19 status, check in history, contact tracing sampai vaccination. Bjorka mengunggah sampek bocoran data milik Menkominfo Johnny G Plate dan Menkomarinves Luhut Binsar Pandjaitan, hingga Youtuber Deddy Corbuzier.</p>\r\n<p>&nbsp;</p>\r\n<p>Baca artikel detikHealth, \"Heboh Bjorka Bocorkan Data PeduliLindungi, Kemenkes Buka Suara\" selengkapnya https://health.detik.com/berita-detikhealth/d-6410977/heboh-bjorka-bocorkan-data-pedulilindungi-kemenkes-buka-suara.</p>', '2022-12-14', 43, 'heboh-bjorka-bocorkan-data-pedulilindungi-kemenkes-buka-suara', 1, 1, 1, '2022-12-14 17:57:26'),
(10, 'Kebocoran Data PeduliLindungi oleh Hacker Bjorka Dinilai Valid', 'thumbnailnews-20221214180022.jpeg', '<p>Hacker Bjorka kembali beraksi dan mengklaim menjual data PeduliLindungi. Kobocoran data dinilai valid.</p>\r\n<p>Hal itu adalah analisa Alfons Tanujaya dari Vaksincom. Dia menyayangkan pihak pengelola data yang dia nilai lengah.</p>\r\n<p>&nbsp;</p>\r\n<p>\"Datanya kemungkinan besar valid dan memang menjadi pertanyaan besar, kok database sebesar itu bisa bocor? Harusnya pihak pengelola data memiliki recordnya siapa yang bisa mengakses dan bagaimana ceritanya datanya bisa bocor,\" kata Alfons kepada detikINET, Rabu (16/11/2022).</p>\r\n<p>&nbsp;</p>\r\n<p>Menurut Alfons, kalau memang menerapkan ISO 27001 dengan baik, akan ketahuan datanya bocor dari mana dan agar dilakukan mitigasi. Alfons juga mempertanyakan kenapa data tidak dienskripsi.</p>\r\n<p>&nbsp;</p>\r\n<p>\"Harusnya kolom tertentu yang penting untuk mengidentifikasi pemilik data dienkripsi. Seperti kolom nama, NIK dan nomor telepon. Sehingga sekalipun datanya bocor itu akan lebih sulit dieksploitasi atau diperjualbelikan,\" ujar Alfons.</p>\r\n<p>&nbsp;</p>\r\n<p>Bjorka kali ini mengklaim kalau datanya didapatkan pada November 2022. Ini jadi pertanyaan besar, apakah badan publik yang mengelola big data yang sedemikian besar dan penting kok sebegitunya memperlakukan data asal-asalan.</p>\r\n<p>&nbsp;</p>\r\n<p>\"Jadi harusnya data yang dikelola itu adalah amanah, tetapi ini kemungkinan dianggap berkah atau beban yang tidak perlu dilindungi dengan baik,\" kritik Alfons.</p>\r\n<p>&nbsp;</p>\r\n<p>Data penting PeduliLindungi yang bocor dan berpotensi merugikan pemilik data adalah nama, NIK, nomor telepon, tanggal lahir, checkin history dan status COVID-19. Alfons menegaskan dalam hal ini masyarakat adalah korbannya.</p>\r\n<p>&nbsp;</p>\r\n<p>\"Yang memiliki data itu jadi korban dan mengalami kerugian terbesar dalam kebocoran data. Pengelola data paling maksimal dapat malu dan dicap tidak becus kelola data,\" kata dia.</p>\r\n<p>&nbsp;</p>\r\n<p>Baca artikel detikinet, \"Kebocoran Data PeduliLindungi oleh Hacker Bjorka Dinilai Valid\" selengkapnya <em>https://inet.detik.com/security/d-6409046/kebocoran-data-pedulilindungi-oleh-hacker-bjorka-dinilai-valid.</em></p>', '2022-12-14', 7, 'kebocoran-data-pedulilindungi-oleh-hacker-bjorka-dinilai-valid', 1, 1, 1, '2022-12-14 18:00:22'),
(11, 'Kebocoran Data MyPertamina oleh Bjorka, Pakar: Sudah Saatnya Dibentuk Lembaga PDP', 'thumbnailnews-20221214185257.png', '<p>Pakar keamanan siber Pratama Persadha menyebut dugaan kebocoran data 44 juta data MyPertamina oleh Bjorka menjadi sinyal genting untuk segera membentuk lembaga otoritas Pelindungan Data Pribadi (PDP).</p>\r\n<p>Setelah disahkannya Undang-Undang Pelindungan Data Pribadi (UU PDP) diamanatkan agar pemerintah membentuk lembaga otoritas PDP yang bertugas mengawasi pengelolaan data pribadi oleh penyelenggara sistem elektronik, baik pemerintah dan swasta agar memenuhi kriteria UU PDP.</p>\r\n<p>&nbsp;</p>\r\n<p>\"Saat ini yang terpenting adalah segera membentuk lembaga pengawas PDP atau apapun namanya, Komisi PDP misalnya. Ini sudah diamanatkan UU PDP agar presiden membentuk Komisi PDP segera setelah UU berlaku,\" ujar Chairman CISSReC ini seperti keterangan tertulis yang diterima detikINET, Sabtu (12/11/2022).</p>\r\n<p>&nbsp;</p>\r\n<p>\"Komisi PDP ini nanti yang tidak hanya mengawasi namun juga melakukan penegakan aturan serta menciptakan standar keamanan tertentu dalam proses pengolahan pemrosesan data. Dalam kasus kebocoran data seperti MyPertamina ini, bila ada masyarakat yang dirugikan bisa nantinya melakukan gugatan lewat Komisi PDP,\" sambungnya.</p>\r\n<p>&nbsp;</p>\r\n<p>Kebocoran data 44 juta data MyPertamina diumbar oleh Bjorka di forum situs breached.to yang isinya terdiri dari nama, email, NIK, NPWP, nomor telepon, alamat, DOB, jenis kelamin, penghasilan, data pembelian BBM, dan data lainnya.</p>\r\n<p>&nbsp;</p>\r\n<p>Pratama mengemukakan, data yang diklaim oleh Bjorka berjumlah 44.237.264 baris dengan total ukuran mencapai 30GB bila dalam keadaan tidak dikompres. Data sampelnya dibagi menjadi 2 file yaitu data transaksi dan data akun pengguna. Ketika sampel datanya dicek secara acak dengan aplikasi \"GetContact\", maka nomor tersebut benar menunjukan nama dari pemilik nomor tersebut.</p>\r\n<p>&nbsp;</p>\r\n<p>Selain itu dicek NIK lewat aplikasi Dataku juga cocok. Berarti sampel data yang diberikan oleh Bjorka merupakan data yang valid.</p>\r\n<p>&nbsp;</p>\r\n<p>Adapun, data yang berjumlah 44 juta ini dijual dengan harga USD 25.000 atau sekitar Rp 400 juta menggunakan menggunakan mata uang Bitcoin.</p>\r\n<p>&nbsp;</p>\r\n<p>\"Sampai saat ini sumber datanya masih belum jelas, Namun soal asli atau tidaknya data ini ya hanya Pertamina sendiri yang bisa menjawabnya, karena aplikasi ini dibuat oleh Pertamina yang juga memiliki dan menyimpan data ini. Jalan terbaik harus dilakukan audit dan investigasi digital forensic untuk memastikan kebocoran data ini dari mana\", jelas pria asal Cepu, Jawa Tengah ini.</p>\r\n<p>&nbsp;</p>\r\n<p>Disampaikannya, perlu dicek dahulu sistem informasi dari aplikasi MyPertamina yang datanya dibocorkan oleh Bjorka. Apabila ditemukan lubang keamanan, berarti kemungkinan besar memang terjadi peretasan dan pencurian data.</p>\r\n<p>&nbsp;</p>\r\n<p>Namun dengan pengecekan yang menyeluruh dan digital forensic, bila benar-benar tidak ditemukan celah keamanan dan jejak digital peretasan, ada kemungkinan kebocoran data ini terjadi karena insider atau data ini bocor oleh orang dalam.</p>\r\n<p>&nbsp;</p>\r\n<p>\"Bila benar ini data MyPertamina, maka berlaku pada Pasal 46 UU PDP ayat 1 dan 2, yang isinya bahwa dalam hal terjadi kegagalan perlindungan data pribadi maka pengendali data pribadi wajib menyampaikan pemberitahuan secara tertulis, paling lambat 3 x 24 jam. Pemberitahuan itu disampaikan kepada subyek data pribadi dan Lembaga Pelaksana Pelindungan Data Pribadi (LPPDP). Pemberitahuan minimal harus memuat data pribadi yang terungkap, kapan dan bagaimana data pribadi terungkap, dan upaya penanganan dan pemulihan atas terungkapnya oleh pengendali data pribadi\", tuturnya.</p>\r\n<p>&nbsp;</p>\r\n<p>Melihat kasus ini, menurut Pratama, Presiden Joko Widodo (Jokowi) harus segera membentuk lembaga otoritas PDP.</p>\r\n<p>&nbsp;</p>\r\n<p>Baca artikel detikinet, \"Kebocoran Data MyPertamina oleh Bjorka, Pakar: Sudah Saatnya Dibentuk Lembaga PDP\" selengkapnya <em>https://inet.detik.com/security/d-6401996/kebocoran-data-mypertamina-oleh-bjorka-pakar-sudah-saatnya-dibentuk-lembaga-pdp.</em></p>', '2022-12-14', 23, 'kebocoran-data-mypertamina-oleh-bjorka-pakar-sudah-saatnya-dibentuk-lembaga-pdp', 1, 1, 1, '2022-12-14 18:46:36');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_web_news_category`
--

CREATE TABLE `tbl_web_news_category` (
  `news_category_id` int(11) NOT NULL,
  `news_category_name` varchar(50) NOT NULL,
  `createtime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_web_news_category`
--

INSERT INTO `tbl_web_news_category` (`news_category_id`, `news_category_name`, `createtime`) VALUES
(1, 'Berita', '2021-06-10 12:15:50'),
(2, 'Agenda', '2021-06-10 12:15:54'),
(3, 'Artikel', '2021-06-10 12:15:58'),
(4, 'Pengumuman', '2021-06-10 12:16:50');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_web_slider`
--

CREATE TABLE `tbl_web_slider` (
  `slider_id` int(11) NOT NULL,
  `slider_title` varchar(50) NOT NULL,
  `slider_text` varchar(200) NOT NULL,
  `slider_image` varchar(50) NOT NULL,
  `createtime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_web_slider`
--

INSERT INTO `tbl_web_slider` (`slider_id`, `slider_title`, `slider_text`, `slider_image`, `createtime`) VALUES
(6, '', '', 'slider-20221214003210.png', '2022-12-14 00:32:10'),
(9, '', '', 'slider-20221214004529.png', '2022-12-14 00:45:29'),
(12, '', '', 'slider-20221127211604.jpg', '2022-11-27 21:16:04');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tbl_cluster`
--
ALTER TABLE `tbl_cluster`
  ADD PRIMARY KEY (`cluster_id`);

--
-- Indeks untuk tabel `tbl_faq`
--
ALTER TABLE `tbl_faq`
  ADD PRIMARY KEY (`faq_id`);

--
-- Indeks untuk tabel `tbl_gallery`
--
ALTER TABLE `tbl_gallery`
  ADD PRIMARY KEY (`gallery_id`);

--
-- Indeks untuk tabel `tbl_gallery_category`
--
ALTER TABLE `tbl_gallery_category`
  ADD PRIMARY KEY (`gallery_category_id`);

--
-- Indeks untuk tabel `tbl_group`
--
ALTER TABLE `tbl_group`
  ADD PRIMARY KEY (`group_id`);

--
-- Indeks untuk tabel `tbl_log`
--
ALTER TABLE `tbl_log`
  ADD PRIMARY KEY (`log_id`);

--
-- Indeks untuk tabel `tbl_optical_layout`
--
ALTER TABLE `tbl_optical_layout`
  ADD PRIMARY KEY (`optical_id`);

--
-- Indeks untuk tabel `tbl_project`
--
ALTER TABLE `tbl_project`
  ADD PRIMARY KEY (`project_id`);

--
-- Indeks untuk tabel `tbl_project_gallery`
--
ALTER TABLE `tbl_project_gallery`
  ADD PRIMARY KEY (`project_gallery_id`);

--
-- Indeks untuk tabel `tbl_setting`
--
ALTER TABLE `tbl_setting`
  ADD PRIMARY KEY (`setting_id`);

--
-- Indeks untuk tabel `tbl_siteplan`
--
ALTER TABLE `tbl_siteplan`
  ADD PRIMARY KEY (`siteplan_id`);

--
-- Indeks untuk tabel `tbl_unit`
--
ALTER TABLE `tbl_unit`
  ADD PRIMARY KEY (`unit_id`);

--
-- Indeks untuk tabel `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`user_id`);

--
-- Indeks untuk tabel `tbl_web_content`
--
ALTER TABLE `tbl_web_content`
  ADD PRIMARY KEY (`content_id`);

--
-- Indeks untuk tabel `tbl_web_field`
--
ALTER TABLE `tbl_web_field`
  ADD PRIMARY KEY (`field_id`);

--
-- Indeks untuk tabel `tbl_web_gallery`
--
ALTER TABLE `tbl_web_gallery`
  ADD PRIMARY KEY (`gallery_id`);

--
-- Indeks untuk tabel `tbl_web_gallery_photo`
--
ALTER TABLE `tbl_web_gallery_photo`
  ADD PRIMARY KEY (`gallery_photo_id`);

--
-- Indeks untuk tabel `tbl_web_link`
--
ALTER TABLE `tbl_web_link`
  ADD PRIMARY KEY (`link_id`);

--
-- Indeks untuk tabel `tbl_web_news`
--
ALTER TABLE `tbl_web_news`
  ADD PRIMARY KEY (`news_id`);

--
-- Indeks untuk tabel `tbl_web_news_category`
--
ALTER TABLE `tbl_web_news_category`
  ADD PRIMARY KEY (`news_category_id`);

--
-- Indeks untuk tabel `tbl_web_slider`
--
ALTER TABLE `tbl_web_slider`
  ADD PRIMARY KEY (`slider_id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tbl_cluster`
--
ALTER TABLE `tbl_cluster`
  MODIFY `cluster_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `tbl_faq`
--
ALTER TABLE `tbl_faq`
  MODIFY `faq_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `tbl_gallery`
--
ALTER TABLE `tbl_gallery`
  MODIFY `gallery_id` int(24) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `tbl_gallery_category`
--
ALTER TABLE `tbl_gallery_category`
  MODIFY `gallery_category_id` int(24) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `tbl_group`
--
ALTER TABLE `tbl_group`
  MODIFY `group_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `tbl_log`
--
ALTER TABLE `tbl_log`
  MODIFY `log_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=959;

--
-- AUTO_INCREMENT untuk tabel `tbl_optical_layout`
--
ALTER TABLE `tbl_optical_layout`
  MODIFY `optical_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `tbl_project`
--
ALTER TABLE `tbl_project`
  MODIFY `project_id` int(24) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `tbl_project_gallery`
--
ALTER TABLE `tbl_project_gallery`
  MODIFY `project_gallery_id` int(24) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `tbl_setting`
--
ALTER TABLE `tbl_setting`
  MODIFY `setting_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `tbl_siteplan`
--
ALTER TABLE `tbl_siteplan`
  MODIFY `siteplan_id` int(24) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `tbl_unit`
--
ALTER TABLE `tbl_unit`
  MODIFY `unit_id` int(24) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `tbl_web_content`
--
ALTER TABLE `tbl_web_content`
  MODIFY `content_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `tbl_web_field`
--
ALTER TABLE `tbl_web_field`
  MODIFY `field_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `tbl_web_gallery`
--
ALTER TABLE `tbl_web_gallery`
  MODIFY `gallery_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT untuk tabel `tbl_web_gallery_photo`
--
ALTER TABLE `tbl_web_gallery_photo`
  MODIFY `gallery_photo_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT untuk tabel `tbl_web_link`
--
ALTER TABLE `tbl_web_link`
  MODIFY `link_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `tbl_web_news`
--
ALTER TABLE `tbl_web_news`
  MODIFY `news_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `tbl_web_news_category`
--
ALTER TABLE `tbl_web_news_category`
  MODIFY `news_category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `tbl_web_slider`
--
ALTER TABLE `tbl_web_slider`
  MODIFY `slider_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
