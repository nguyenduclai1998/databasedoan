-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 09, 2020 at 02:54 PM
-- Server version: 10.1.44-MariaDB-0ubuntu0.18.04.1
-- PHP Version: 7.2.31-1+ubuntu18.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `doan`
--

-- --------------------------------------------------------

--
-- Table structure for table `chuyennganh`
--

CREATE TABLE `chuyennganh` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tenchuyennganh` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mota` text COLLATE utf8mb4_unicode_ci,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `chuyennganh`
--

INSERT INTO `chuyennganh` (`id`, `tenchuyennganh`, `mota`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Hệ thống thông tin', 'Hệ thống thông tin', 'he-thong-thong-tin', '2020-04-28 01:49:11', '2020-04-28 01:49:11'),
(2, 'Truyền thông mạng máy tính', 'Truyền thông mạng máy tính', 'truyen-thong-mang-may-tinh', '2020-04-28 01:49:23', '2020-04-28 01:49:23'),
(3, 'Điện tử viễn thông', 'Điện tử viễn thông', 'dien-tu-vien-thong', '2020-04-28 01:49:37', '2020-04-28 01:49:37'),
(4, 'Cơ điện tử', 'Cơ điện tử', 'co-dien-tu', '2020-04-28 01:49:47', '2020-04-28 01:49:47');

-- --------------------------------------------------------

--
-- Table structure for table `detai`
--

CREATE TABLE `detai` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tendetai` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mota` text COLLATE utf8mb4_unicode_ci,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `view` int(11) NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `chuyennganh_id` bigint(20) UNSIGNED NOT NULL,
  `linhvuc_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `sinhvien_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `detai`
--

INSERT INTO `detai` (`id`, `tendetai`, `mota`, `slug`, `view`, `user_id`, `chuyennganh_id`, `linhvuc_id`, `created_at`, `updated_at`, `sinhvien_id`) VALUES
(11, 'Xây dựng Website Trường Đại học Công nghiệp Việt Trì', '<p>X&acirc;y dựng Website Trường Đại học C&ocirc;ng nghiệp Việt Tr&igrave; a</p>', 'xay-dung-website-truong-dai-hoc-cong-nghiep-viet-tri', 0, 2, 4, 4, '2020-05-16 18:20:24', '2020-06-05 07:16:36', 1854),
(13, 'Xây dựng Website bán cây cảnh cho cửa hàng Lâm Hoa a', '<p>- T&igrave;m hiểu, khảo s&aacute;t thực tế quy tr&igrave;nh quản l&yacute; mua b&aacute;n hoa của cửa h&agrave;ng L&acirc;m Hoa.<br />\r\n- Ph&acirc;n t&iacute;ch thiết kế hệ thống th&ocirc;ng tin (chức năng, CSDL) đ&atilde; khảo s&aacute;t.<br />\r\n- Lựa chọn c&ocirc;ng cụ (Hệ quản trị CSDL, ng&ocirc;n ngữ lập tr&igrave;nh) v&agrave; triển khai x&acirc;y dựng hệ thống th&ocirc;ng tin đ&atilde; khảo s&aacute;t.<br />\r\n- B&aacute;o c&aacute;o khảo s&aacute;t v&agrave; thu thập dữ liệu.<br />\r\n- B&aacute;o c&aacute;o đồ &aacute;n theo quy định của Trường, t&oacute;m tắt th&ocirc;ng tin đồ &aacute;n, slide b&aacute;o c&aacute;o đồ &aacute;n.<br />\r\n- Sản phẩm phần mềm v&agrave; CSDL</p>', 'xay-dung-website-ban-cay-canh-cho-cua-hang-lam-hoa-a', 4, 2, 1, 1, '2020-05-22 01:15:16', '2020-06-05 07:16:16', 1),
(14, 'Xây dựng Website giới thiệu ngành nghề của đại học Công nghệ Giao thông Vận tải', '<p>&#39;- T&igrave;m hiểu, khảo s&aacute;t thực tế c&aacute;c ng&agrave;nh nghề của đại học C&ocirc;ng nghệ Giao th&ocirc;ng Vận tải<br />\r\n- Ph&acirc;n t&iacute;ch thiết kế hệ thống th&ocirc;ng tin (chức năng, CSDL) đ&atilde; khảo s&aacute;t.<br />\r\n- Lựa chọn c&ocirc;ng cụ (Hệ quản trị CSDL, ng&ocirc;n ngữ lập tr&igrave;nh) v&agrave; triển khai x&acirc;y dựng hệ thống th&ocirc;ng tin đ&atilde; khảo s&aacute;t.<br />\r\n- B&aacute;o c&aacute;o khảo s&aacute;t v&agrave; thu thập dữ liệu.<br />\r\n- B&aacute;o c&aacute;o đồ &aacute;n theo quy định của Trường, t&oacute;m tắt th&ocirc;ng tin đồ &aacute;n, slide b&aacute;o c&aacute;o đồ &aacute;n.<br />\r\n- Sản phẩm phần mềm v&agrave; CSDL</p>', 'xay-dung-website-gioi-thieu-nganh-nghe-cua-dai-hoc-cong-nghe-giao-thong-van-tai', 10, 2, 1, 1, '2020-05-22 01:15:40', '2020-06-05 08:05:06', NULL),
(15, 'Xây dựng phần mềm quản lý khóa luận của Khoa Công nghệ thông tin - Đại học Công nghệ GTVT.', '<p>&#39;- T&igrave;m hiểu, khảo s&aacute;t thực tế quy tr&igrave;nh quản l&yacute; kh&oacute;a luận của Khoa C&ocirc;ng nghệ th&ocirc;ng tin - Đại học C&ocirc;ng nghệ GTVT.<br />\r\n- Ph&acirc;n t&iacute;ch thiết kế hệ thống th&ocirc;ng tin (chức năng, CSDL) đ&atilde; khảo s&aacute;t.<br />\r\n- Lựa chọn c&ocirc;ng cụ (Hệ quản trị CSDL, ng&ocirc;n ngữ lập tr&igrave;nh) v&agrave; triển khai x&acirc;y dựng hệ thống th&ocirc;ng tin đ&atilde; khảo s&aacute;t.<br />\r\n- B&aacute;o c&aacute;o khảo s&aacute;t v&agrave; thu thập dữ liệu.<br />\r\n- B&aacute;o c&aacute;o đồ &aacute;n theo quy định của Trường, t&oacute;m tắt th&ocirc;ng tin đồ &aacute;n, slide b&aacute;o c&aacute;o đồ &aacute;n.<br />\r\n- Sản phẩm phần mềm v&agrave; CSDL</p>', 'xay-dung-phan-mem-quan-ly-khoa-luan-cua-khoa-cong-nghe-thong-tin-dai-hoc-cong-nghe-gtvt', 5, 2, 1, 1, '2020-05-22 01:16:06', '2020-06-03 20:19:37', NULL),
(16, 'Xây dựng thư viện sách trực tuyến cho sinh viên ngành công nghệ thông tin', '<p>&#39;- T&igrave;m hiểu, khảo s&aacute;t thực tế quy tr&igrave;nh t&igrave;m kiếm, đọc s&aacute;ch trực tuyến của sinh vi&ecirc;n.<br />\r\n- Ph&acirc;n t&iacute;ch thiết kế hệ thống th&ocirc;ng tin (chức năng, CSDL) đ&atilde; khảo s&aacute;t.<br />\r\n- Lựa chọn c&ocirc;ng cụ (Hệ quản trị CSDL, ng&ocirc;n ngữ lập tr&igrave;nh) v&agrave; triển khai x&acirc;y dựng hệ thống th&ocirc;ng tin đ&atilde; khảo s&aacute;t.<br />\r\n- B&aacute;o c&aacute;o khảo s&aacute;t v&agrave; thu thập dữ liệu.<br />\r\n- B&aacute;o c&aacute;o đồ &aacute;n theo quy định của Trường, t&oacute;m tắt th&ocirc;ng tin đồ &aacute;n, slide b&aacute;o c&aacute;o đồ &aacute;n.<br />\r\n- Sản phẩm phần mềm v&agrave; CSDL</p>', 'xay-dung-thu-vien-sach-truc-tuyen-cho-sinh-vien-nganh-cong-nghe-thong-tin', 2, 2, 1, 1, '2020-05-22 01:16:19', '2020-05-27 08:38:48', NULL),
(17, 'Xây dựng Website Trường Đại học Công nghiệp Việt Trì', '<p>X&acirc;y dựng Website Trường Đại học C&ocirc;ng nghiệp Việt Tr&igrave;</p>', 'xay-dung-website-truong-dai-hoc-cong-nghiep-viet-tri-1591269196', 1, 14, 2, 1, '2020-05-26 06:42:42', '2020-06-04 04:13:16', NULL),
(18, 'Xây dựng Website hỗ trợ học tập cho sinh viên Khoa CNTT – Trường Đại X', '<p>X&acirc;y dựng Website hỗ trợ học tập cho sinh vi&ecirc;n Khoa CNTT &ndash; Trường Đại X</p>', 'xay-dung-website-ho-tro-hoc-tap-cho-sinh-vien-khoa-cntt-truong-dai-x-1590566912', 3, 2, 4, 4, '2020-05-27 01:07:05', '2020-05-28 09:28:03', NULL),
(19, 'Phân tích và thiết kế hệ thống đăng ký đề tài đồ án tốt nghiệp của sinh viên trường Đại học Công nghệ GTVT', '<p>- Khảo s&aacute;t hệ thống; - Ph&aacute;t biểu b&agrave;i to&aacute;n; - Ph&acirc;n t&iacute;ch thiết kế hệ thống hướng đối tượng; - Thiết kế cơ sở dữ liệu - Thiết kế Front-End - Thiết kế Back-End - Chạy kiểm thử chương tr&igrave;nh. Đ&aacute;nh gi&aacute; hệ thống. - Đề ra c&aacute;c giải ph&aacute;p - Đưa ra demo</p>', 'phan-tich-va-thiet-ke-he-thong-dang-ky-de-tai-do-an-tot-nghiep-cua-sinh-vien-truong-dai-hoc-cong-nghe-gtvt-1591269226', 4, 14, 1, 1, '2020-05-27 01:59:46', '2020-06-04 04:13:46', 9),
(22, 'Xây dựng Website hỗ trợ học tập cho sinh viên Khoa CNTT – Trường Đại X', '<p>X&acirc;y dựng Website Trường Đại học C&ocirc;ng nghiệp Việt Tr&igrave;</p>', 'xay-dung-website-ho-tro-hoc-tap-cho-sinh-vien-khoa-cntt-truong-dai-x-1591271077', 0, 14, 1, 1, '2020-06-04 04:42:39', '2020-06-04 04:44:37', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `dexuatdetai`
--

CREATE TABLE `dexuatdetai` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tendetai` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mota` text COLLATE utf8mb4_unicode_ci,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `chuyennganh_id` bigint(20) UNSIGNED NOT NULL,
  `linhvuc_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ketquaphandoan`
--

CREATE TABLE `ketquaphandoan` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `detai_id` bigint(20) UNSIGNED NOT NULL,
  `linhvuc_id` bigint(20) UNSIGNED NOT NULL,
  `giangvien_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `linhvuc`
--

CREATE TABLE `linhvuc` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tenlinhvuc` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mota` text COLLATE utf8mb4_unicode_ci,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `linhvuc`
--

INSERT INTO `linhvuc` (`id`, `tenlinhvuc`, `mota`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Thiết kế web', 'Thiết kế web', 'thiet-ke-web', '2020-04-28 02:20:41', '2020-04-28 02:52:43'),
(2, 'Lập trình Android', 'Lập trình Android', 'lap-trinh-android', '2020-04-28 02:20:53', '2020-04-28 02:20:53'),
(4, 'Lập trình IOS', 'Lập trình IOS', 'lap-trinh-ios', '2020-04-28 02:53:06', '2020-04-28 02:54:11');

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
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_04_28_074926_create_table_table', 1),
(5, '2020_04_28_083314_create_relationship_table', 1),
(6, '2020_05_15_162753_update_detai_table', 2),
(7, '2020_05_22_112258_create_update_users_table', 3),
(8, '2016_06_01_000001_create_oauth_auth_codes_table', 4),
(9, '2016_06_01_000002_create_oauth_access_tokens_table', 4),
(10, '2016_06_01_000003_create_oauth_refresh_tokens_table', 4),
(11, '2016_06_01_000004_create_oauth_clients_table', 4),
(12, '2016_06_01_000005_create_oauth_personal_access_clients_table', 4),
(13, '2020_06_07_162851_create_ketquaphandoan_table', 5),
(14, '2020_06_08_022543_create_time_table', 6);

-- --------------------------------------------------------

--
-- Table structure for table `nguyenvong`
--

CREATE TABLE `nguyenvong` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `detai_id` bigint(20) UNSIGNED DEFAULT NULL,
  `detaidexuat_id` bigint(20) UNSIGNED DEFAULT NULL,
  `linhvuc_id` bigint(20) UNSIGNED NOT NULL,
  `trangthai` tinyint(1) NOT NULL DEFAULT '0',
  `loainguyenvong` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nguyenvong`
--

INSERT INTO `nguyenvong` (`id`, `user_id`, `detai_id`, `detaidexuat_id`, `linhvuc_id`, `trangthai`, `loainguyenvong`, `created_at`, `updated_at`) VALUES
(10, 1, 14, NULL, 1, 0, 1, '2020-05-27 02:02:51', '2020-05-27 02:02:51'),
(11, 1, 15, NULL, 1, 0, 2, '2020-05-27 02:03:15', '2020-05-27 02:03:15'),
(12, 2, 14, NULL, 1, 0, 1, '2020-05-27 09:07:58', '2020-05-27 09:07:58'),
(13, 2, 19, NULL, 1, 0, 2, '2020-05-27 09:27:16', '2020-05-27 09:27:16'),
(14, 14, 14, NULL, 1, 0, 2, '2020-05-27 20:34:51', '2020-05-27 20:34:51'),
(15, 14, 18, NULL, 4, 0, 1, '2020-05-27 20:37:12', '2020-05-27 20:37:12'),
(16, 1850, 19, NULL, 1, 0, 1, '2020-06-02 20:37:24', '2020-06-02 20:37:24'),
(17, 1850, 15, NULL, 1, 0, 2, '2020-06-03 07:36:56', '2020-06-03 07:36:56');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `rolename` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`id`, `rolename`, `created_at`, `updated_at`) VALUES
(1, 'Quản trị viên', '2020-05-07 03:10:17', NULL),
(2, 'Giáo viên', '2020-05-07 03:10:17', NULL),
(3, 'Sinh viên', '2020-05-07 03:10:17', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `thongtin`
--

CREATE TABLE `thongtin` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ngaysinh` date DEFAULT NULL,
  `sdt` bigint(20) DEFAULT NULL,
  `gioitinh` char(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hocham` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lop` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ghichu` text COLLATE utf8mb4_unicode_ci,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `thongtin`
--

INSERT INTO `thongtin` (`id`, `ngaysinh`, `sdt`, `gioitinh`, `avatar`, `hocham`, `lop`, `ghichu`, `user_id`, `created_at`, `updated_at`) VALUES
(1, '1998-07-25', NULL, NULL, '', NULL, NULL, NULL, 1, '2020-04-28 01:48:59', '2020-06-04 00:48:37'),
(2, '1998-07-25', 387588688, NULL, 'aa', 'Giáo sư', NULL, NULL, 2, '2020-04-30 19:13:10', '2020-06-07 21:46:32'),
(9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9, '2020-04-30 19:25:24', '2020-04-30 19:25:24'),
(14, '1998-07-25', NULL, 'Nam', NULL, NULL, NULL, NULL, 14, '2020-05-17 01:53:45', '2020-06-05 09:07:43'),
(1391, NULL, NULL, NULL, NULL, NULL, '65DCHT22', NULL, 1809, '2020-06-02 08:22:41', '2020-06-02 08:22:41'),
(1392, NULL, NULL, NULL, NULL, NULL, '66DCHT21', 'Làm lại', 1810, '2020-06-02 08:22:41', '2020-06-02 08:22:41'),
(1393, NULL, NULL, NULL, NULL, NULL, '66DCHT22', NULL, 1811, '2020-06-02 08:22:41', '2020-06-02 08:22:41'),
(1394, NULL, NULL, NULL, NULL, NULL, '66DCHT22', NULL, 1812, '2020-06-02 08:22:41', '2020-06-02 08:22:41'),
(1395, NULL, NULL, NULL, NULL, NULL, '66DCHT22', 'Làm lại', 1813, '2020-06-02 08:22:41', '2020-06-02 08:22:41'),
(1396, NULL, NULL, NULL, NULL, NULL, '67DCHT21', NULL, 1814, '2020-06-02 08:22:41', '2020-06-02 08:22:41'),
(1397, NULL, NULL, NULL, NULL, NULL, '67DCHT21', NULL, 1815, '2020-06-02 08:22:42', '2020-06-02 08:22:42'),
(1398, NULL, NULL, NULL, NULL, NULL, '67DCHT21', NULL, 1816, '2020-06-02 08:22:42', '2020-06-02 08:22:42'),
(1399, NULL, NULL, NULL, NULL, NULL, '67DCHT21', NULL, 1817, '2020-06-02 08:22:42', '2020-06-02 08:22:42'),
(1400, NULL, NULL, NULL, NULL, NULL, '67DCHT21', NULL, 1818, '2020-06-02 08:22:42', '2020-06-02 08:22:42'),
(1401, NULL, NULL, NULL, NULL, NULL, '67DCHT21', NULL, 1819, '2020-06-02 08:22:42', '2020-06-02 08:22:42'),
(1402, NULL, NULL, NULL, NULL, NULL, '67DCHT21', NULL, 1820, '2020-06-02 08:22:42', '2020-06-02 08:22:42'),
(1403, NULL, NULL, NULL, NULL, NULL, '67DCHT21', NULL, 1821, '2020-06-02 08:22:42', '2020-06-02 08:22:42'),
(1404, NULL, NULL, NULL, NULL, NULL, '67DCHT21', NULL, 1822, '2020-06-02 08:22:42', '2020-06-02 08:22:42'),
(1405, NULL, NULL, NULL, NULL, NULL, '67DCHT21', NULL, 1823, '2020-06-02 08:22:42', '2020-06-02 08:22:42'),
(1406, NULL, NULL, NULL, NULL, NULL, '67DCHT21', NULL, 1824, '2020-06-02 08:22:42', '2020-06-02 08:22:42'),
(1407, NULL, NULL, NULL, NULL, NULL, '67DCHT21', NULL, 1825, '2020-06-02 08:22:42', '2020-06-02 08:22:42'),
(1408, NULL, NULL, NULL, NULL, NULL, '67DCHT21', NULL, 1826, '2020-06-02 08:22:43', '2020-06-02 08:22:43'),
(1409, NULL, NULL, NULL, NULL, NULL, '67DCHT21', NULL, 1827, '2020-06-02 08:22:43', '2020-06-02 08:22:43'),
(1410, NULL, NULL, NULL, NULL, NULL, '67DCHT21', NULL, 1828, '2020-06-02 08:22:43', '2020-06-02 08:22:43'),
(1411, NULL, NULL, NULL, NULL, NULL, '67DCHT21', NULL, 1829, '2020-06-02 08:22:43', '2020-06-02 08:22:43'),
(1412, NULL, NULL, NULL, NULL, NULL, '67DCHT22', NULL, 1830, '2020-06-02 08:22:43', '2020-06-02 08:22:43'),
(1413, NULL, NULL, NULL, NULL, NULL, '67DCHT22', NULL, 1831, '2020-06-02 08:22:43', '2020-06-02 08:22:43'),
(1414, NULL, NULL, NULL, NULL, NULL, '67DCHT22', NULL, 1832, '2020-06-02 08:22:43', '2020-06-02 08:22:43'),
(1415, NULL, NULL, NULL, NULL, NULL, '67DCHT22', NULL, 1833, '2020-06-02 08:22:43', '2020-06-02 08:22:43'),
(1416, NULL, NULL, NULL, NULL, NULL, '67DCHT22', NULL, 1834, '2020-06-02 08:22:44', '2020-06-02 08:22:44'),
(1417, NULL, NULL, NULL, NULL, NULL, '67DCHT22', NULL, 1835, '2020-06-02 08:22:44', '2020-06-02 08:22:44'),
(1418, NULL, NULL, NULL, NULL, NULL, '67DCHT22', NULL, 1836, '2020-06-02 08:22:44', '2020-06-02 08:22:44'),
(1419, NULL, NULL, NULL, NULL, NULL, '67DCHT22', NULL, 1837, '2020-06-02 08:22:44', '2020-06-02 08:22:44'),
(1420, NULL, NULL, NULL, NULL, NULL, '67DCHT22', NULL, 1838, '2020-06-02 08:22:44', '2020-06-02 08:22:44'),
(1421, NULL, NULL, NULL, NULL, NULL, '67DCHT22', NULL, 1839, '2020-06-02 08:22:44', '2020-06-02 08:22:44'),
(1422, NULL, NULL, NULL, NULL, NULL, '67DCHT22', NULL, 1840, '2020-06-02 08:22:44', '2020-06-02 08:22:44'),
(1423, NULL, NULL, NULL, NULL, NULL, '67DCHT23', NULL, 1841, '2020-06-02 08:22:44', '2020-06-02 08:22:44'),
(1424, NULL, NULL, NULL, NULL, NULL, '67DCHT23', NULL, 1842, '2020-06-02 08:22:44', '2020-06-02 08:22:44'),
(1425, NULL, NULL, NULL, NULL, NULL, '67DCHT23', NULL, 1843, '2020-06-02 08:22:44', '2020-06-02 08:22:44'),
(1426, NULL, NULL, NULL, NULL, NULL, '67DCHT23', NULL, 1844, '2020-06-02 08:22:44', '2020-06-02 08:22:44'),
(1427, NULL, NULL, NULL, NULL, NULL, '67DCHT23', NULL, 1845, '2020-06-02 08:22:44', '2020-06-02 08:22:44'),
(1428, NULL, NULL, NULL, NULL, NULL, '67DCHT23', NULL, 1846, '2020-06-02 08:22:45', '2020-06-02 08:22:45'),
(1429, NULL, NULL, NULL, NULL, NULL, '67DCHT23', NULL, 1847, '2020-06-02 08:22:45', '2020-06-02 08:22:45'),
(1430, NULL, NULL, NULL, NULL, NULL, '67DCHT23', NULL, 1848, '2020-06-02 08:22:45', '2020-06-02 08:22:45'),
(1431, NULL, NULL, NULL, NULL, NULL, '67DCHT23', NULL, 1849, '2020-06-02 08:22:45', '2020-06-02 08:22:45'),
(1432, '1998-05-25', 3875886889, NULL, NULL, NULL, '67DCHT23', NULL, 1850, '2020-06-02 08:22:45', '2020-06-04 00:45:48'),
(1433, NULL, NULL, NULL, NULL, NULL, '67DCHT23', NULL, 1851, '2020-06-02 08:22:45', '2020-06-02 08:22:45'),
(1434, NULL, NULL, NULL, NULL, NULL, '67DCHT23', NULL, 1852, '2020-06-02 08:22:45', '2020-06-02 08:22:45'),
(1435, NULL, NULL, NULL, NULL, NULL, '67DCHT23', NULL, 1853, '2020-06-02 08:22:45', '2020-06-02 08:22:45'),
(1436, NULL, NULL, NULL, NULL, NULL, '67DCHT23', NULL, 1854, '2020-06-02 08:22:46', '2020-06-02 08:22:46');

-- --------------------------------------------------------

--
-- Table structure for table `time`
--

CREATE TABLE `time` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `time_start` timestamp NULL DEFAULT NULL,
  `time_end` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tintuc`
--

CREATE TABLE `tintuc` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tenbaiviet` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `noidung` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `chuyennganh_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tintuc`
--

INSERT INTO `tintuc` (`id`, `tenbaiviet`, `noidung`, `slug`, `avatar`, `chuyennganh_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Đại học Công nghệ GTVT hỗ trợ học sinh lớp 12 ôn tập thi THPT Quốc gia năm 2020 trong mùa dịch Covid- 19', '<h2>Nhằm hỗ trợ học sinh phổ th&ocirc;ng chuẩn bị thi THPT Quốc gia năm 2020 trong khi diễn biến dịch Covid- 19 vẫn diễn biến phức tạp, học sinh kh&ocirc;ng đến trường học tập trung theo chương tr&igrave;nh học tập, Trường Đại học C&ocirc;ng nghệ GTVT đ&atilde; triển khai chương tr&igrave;nh&nbsp;&quot;Đồng h&agrave;nh c&ugrave;ng học sinh lớp 12 &ocirc;n tập thi THPT Quốc gia năm 2020 trong m&ugrave;a dịch Covid- 19&quot;</h2>\r\n\r\n<p>Theo đ&oacute;, Chương tr&igrave;nh được tổ chức trong 4 th&aacute;ng, bắt đầu từ th&aacute;ng 4 đến hết th&aacute;ng 7/2020. Mỗi tuần sẽ c&oacute; 4 m&ocirc;n To&aacute;n, L&yacute;, H&oacute;a, Tiếng Anh được hướng dẫn &ocirc;n tập theo chủ đề v&agrave; được ph&aacute;t trực tiếp v&agrave;o 21h h&agrave;ng ng&agrave;y tr&ecirc;n Fanpage&nbsp;utt.vn&nbsp;v&agrave; k&ecirc;nh Youtube uttchannel của Trường.</p>\r\n\r\n<p>Song song đ&oacute;, để gi&uacute;p cho học sinh vừa &ocirc;n luyện củng cố kiến thức vừa l&agrave;m quen v&agrave; c&oacute;&nbsp;kỹ năng để giải c&aacute;c đề thi minh họa theo cấu tr&uacute;c đề thi THPT Quốc gia năm 2020 của Bộ Gi&aacute;o dục v&agrave; Đ&agrave;o tạo, Nh&agrave; trường cũng tổ chức cuộc thi &quot;Giải thử đề- B&ecirc; qu&agrave; thật&quot; với nhiều giải thưởng c&oacute; gi&aacute; trị l&ecirc;n đến h&agrave;ng chục triệu đồng, mỗi tuần học sinh sẽ giải thử một đề thi v&agrave; sẽ được c&aacute;c thầy c&ocirc; hướng dẫn, trao giải v&agrave;o tuần kế tiếp.</p>', 'dai-hoc-cong-nghe-gtvt-ho-tro-hoc-sinh-lop-12-on-tap-thi-thpt-quoc-gia-nam-2020-trong-mua-dich-covid-19-1591240589', 'Screenshot from 2020-05-30 08-27-08_1591112643.png', 1, 9, '2020-05-01 06:36:29', '2020-06-03 20:16:29'),
(2, 'Khai giảng lớp Bồi dưỡng quản lý nhà nước ngạch chuyên viên và chuyên viên chính', '<p><img alt=\"\" src=\"http://localhost/dangkydoancntt/public/storage/uploads/Screenshot from 2020-05-30 08-27-08_1591246285.png\" style=\"height:384px; width:588px\" />Thực hiện chủ trương của Bộ GTVT về kế hoạch đ&agrave;o tạo, bồi dưỡng năm 2020 v&agrave; quan hệ hợp t&aacute;c, phối hợp giữa 2 Trường trong c&ocirc;ng t&aacute;c ĐTBD n&acirc;ng cao chất lượng nguồn nh&acirc;n lực phạm vi lĩnh vực về quản l&yacute; nh&agrave; nước. Ng&agrave;y 02/6/2020, Trường C&aacute;n bộ quản l&yacute; GTVT phối hợp với Trường Đại học C&ocirc;ng nghệ GTVT giao cho Trung t&acirc;m ĐTBD tại CSĐT Vĩnh Ph&uacute;c long trọng tổ chức lễ khai giảng lớp Bồi dưỡng QLNN ngạch&nbsp;<strong><em>chuy&ecirc;n vi&ecirc;n kh&oacute;a&nbsp;</em></strong><strong><em>79</em></strong>&nbsp;(47 học vi&ecirc;n) v&agrave;&nbsp;<strong><em>chuy&ecirc;n vi&ecirc;n ch&iacute;nh kh&oacute;a 33</em></strong>&nbsp;(65 học vi&ecirc;n) - đều l&agrave; những c&aacute;n bộ chủ chốt đang c&ocirc;ng t&aacute;c tại ng&agrave;nh Bảo hiểm X&atilde; hội v&agrave; ng&agrave;nh Thuế tr&ecirc;n địa b&agrave;n tỉnh Vĩnh Ph&uacute;c.</p>\r\n\r\n<p><img alt=\"\" src=\"storage/uploads/Screenshot from 2020-05-30 08-27-08_1591245752.png\" /></p>\r\n\r\n<p>Đến tham dự Lễ khai giảng, về ph&iacute;a BHXH tỉnh Vĩnh Ph&uacute;c c&oacute; đ/c Nguyễn Thị Thu Huyền - TUV.BTĐU, Gi&aacute;m đốc v&agrave; đ/c Nguyễn Thị B&iacute;ch Li&ecirc;n - Trưởng ph&ograve;ng TCCB; về ph&iacute;a Trường C&aacute;n bộ quản l&yacute; GTVT c&oacute; đ/c Ng&ocirc; Anh Tuấn - BTĐU, Hiệu trưởng v&agrave; đ/c Vũ Ho&agrave;ng Yến - Ph&oacute; trưởng ph&ograve;ng ĐT-QLKH; về ph&iacute;a Trường Đại học C&ocirc;ng nghệ GTVT c&oacute; đ/c Nguyễn Mạnh H&ugrave;ng - Chủ tịch Hội đồng trường, đ/c Vương Văn Sơn - Đại diện CSĐT Vĩnh Ph&uacute;c, đ/c Trần Thanh An - Trưởng ph&ograve;ng Sau Đại học; về ph&iacute;a Trung t&acirc;m HTSVKN&amp;QHDN l&agrave; đơn vị được giao nhiệm vụ tổ chức triển khai kh&oacute;a học c&oacute; đ/ch&iacute; Đinh Quang To&agrave;n - PGĐ Phụ tr&aacute;ch, đ/c Đỗ Văn Th&aacute;i PGĐ quản l&yacute; ĐTBD khu vực ph&iacute;a t&acirc;y Bắc; c&ugrave;ng 112 học vi&ecirc;n l&agrave; c&aacute;n bộ ng&agrave;nh BHXH v&agrave; ng&agrave;nh Thuế tỉnh Vĩnh Ph&uacute;c tham gia kh&oacute;a học.</p>\r\n\r\n<p><img src=\"http://utt.edu.vn/uploads/file-manager/images/image001(33).jpg\" /></p>\r\n\r\n<p><em>Qu&yacute; đại biểu v&agrave; c&aacute;c đồng ch&iacute; học vi&ecirc;n l&agrave;m lễ ch&agrave;o cờ trong buổi khai mạc 02 kh&oacute;a học tại CSĐT Vĩnh Ph&uacute;c</em></p>\r\n\r\n<p><img src=\"http://utt.edu.vn/uploads/file-manager/images/image002(19).jpg\" /></p>\r\n\r\n<p><em>To&agrave;n cảnh buổi khai giảng lớp Bồi dưỡng quản l&yacute; nh&agrave; nước ngạch chuy&ecirc;n vi&ecirc;n v&agrave; chuy&ecirc;n vi&ecirc;n ch&iacute;nh</em></p>\r\n\r\n<p>Ph&aacute;t biểu khai giảng kh&oacute;a học, đ/c Ng&ocirc; Anh Tuấn - BTĐU, Hiệu trưởng Trường C&aacute;n bộ quản l&yacute; GTVT cho biết lớp&nbsp;<em>Bồi dưỡng QLNN ngạch chuy&ecirc;n vi&ecirc;n v&agrave; chuy&ecirc;n vi&ecirc;n ch&iacute;nh</em>&nbsp;với mục ti&ecirc;u nhằm trang bị, củng cố, cập nhật, n&acirc;ng cao những kiến thức chung, cơ bản về quản l&yacute; nh&agrave; nước v&agrave; những kỹ năng, đ&aacute;p ứng y&ecirc;u cầu cải c&aacute;ch h&agrave;nh ch&iacute;nh; g&oacute;p phần x&acirc;y dựng đội ngũ c&ocirc;ng chức, vi&ecirc;n chức c&oacute; phẩm chất đạo đức tốt, c&oacute; bản lĩnh ch&iacute;nh trị,&nbsp; chuy&ecirc;n nghiệp, tận tụy phục vụ nh&acirc;n d&acirc;n. Nh&acirc;n buổi&nbsp;<em>khai giảng đ/c Ng&ocirc; Anh Tuấn gửi lời cảm ơn ch&acirc;n th&agrave;nh đến sự t&acirc;m giao trong hợp t&aacute;c hiệu quả v&agrave; to&agrave;n diện giữa Trường Đại học C&ocirc;ng nghệ GTVT n&oacute;i chung v&agrave; Trung t&acirc;m ĐTBD tại CSĐT Vĩnh Ph&uacute;c n&oacute;i ri&ecirc;ng đ&atilde; tạo điều kiện tốt nhất về m&ocirc;i trường, cơ sở vật chất để phục vụ tốt nhất cho 02 kh&oacute;a học, đồng thời cảm ơn l&atilde;nh đạo 2 ng&agrave;nh BHXH &amp; Thuế đ&atilde; tạo điều kiện cho c&aacute;n bộ chủ chốt trong hệ thống c&aacute;c đơn vị từ cấp x&atilde;, huyện đến th&agrave;nh phố v&agrave; tỉnh được tham gia kh&oacute;a học.</em></p>\r\n\r\n<p><em><img src=\"http://utt.edu.vn/uploads/file-manager/images/image003(30).jpg\" /></em></p>\r\n\r\n<p><em>Đ/c Ng&ocirc; Anh Tuấn - BTĐU, Hiệu trưởng trường trường C&aacute;n bộ quản l&yacute; GTVT,&nbsp;<em>ph&aacute;t biểu tại lễ khai giảng</em></em></p>\r\n\r\n<p>Đại diện cho 02 ng&agrave;nh chủ chốt của tỉnh Vĩnh Ph&uacute;c cử học vi&ecirc;n tham gia kh&oacute;a học, đ/c Nguyễn Thị Thu Huyền - TUV.BTĐU, Gi&aacute;m đốc BHXH cảm ơn sự phối hợp kịp thời của hai Trường đ&atilde; mở 02 lớp Chuy&ecirc;n vi&ecirc;n v&agrave; Chuy&ecirc;n vi&ecirc;n ch&iacute;nh tại địa phương nhằm tạo điều kiện cho đội ngũ c&aacute;n bộ, c&ocirc;ng chức, vi&ecirc;n chức của đơn vị từ tuyến x&atilde; đến tỉnh được tham gia bồi dưỡng tại chỗ gi&uacute;p n&acirc;ng cao năng lực thực thi nhiệm vụ, đ&aacute;p ứng y&ecirc;u cầu c&ocirc;ng t&aacute;c trong thời gian tới. Đ/c Nguyễn Thị Thu Huyền cũng qu&aacute;n triệt v&agrave; y&ecirc;u cầu c&aacute;c c&aacute;n bộ chủ chốt được đơn vị cử tham gia kh&oacute;a học với vai tr&ograve; học vi&ecirc;n phải học tập nghi&ecirc;m t&uacute;c, đảm bảo kỷ luật về giờ giấc, khi đến lớp hăng h&aacute;i trao đổi thảo luận để lĩnh hội kịp thời những kiến thức trong quản l&yacute; nh&agrave; nước để đạt kết quả cao nhất sau khi kết th&uacute;c kh&oacute;a học.</p>\r\n\r\n<p><img src=\"http://utt.edu.vn/uploads/file-manager/images/image004(15).jpg\" /></p>\r\n\r\n<p><em>Đ/c Nguyễn Thị Thu Huyền - TUV.BTĐU, Gi&aacute;m đốc BHXH tỉnh Vĩnh Ph&uacute;c,&nbsp;<em>ph&aacute;t biểu tại lễ khai giảng</em></em></p>\r\n\r\n<p><img src=\"http://utt.edu.vn/uploads/file-manager/images/image005(24).jpg\" /></p>\r\n\r\n<p><em>Thay cho lời cảm ơn s&acirc;u sắc đến l&atilde;nh đạo 2 Trường, đ/c Nguyễn Thị Thu Huyền trao tặng lẵng hoa tri &acirc;n để b&agrave;y tỏ l&ograve;ng biết ơn đến sự nghiệp đ&agrave;o tạo n&acirc;ng cao chất lượng nguồn nh&acirc;n lực của qu&yacute; Trường cho sự nghiệp ph&aacute;t triển của ng&agrave;nh BHXH &amp; ng&agrave;nh Thuế tr&ecirc;n địa b&agrave;n tỉnh Vĩnh Ph&uacute;c.​</em></p>\r\n\r\n<p>Thay mặt l&atilde;nh đạo Trường Đại học C&ocirc;ng nghệ GTVT, ph&aacute;t biểu tại Lễ khai giảng, đ/c &ocirc;ng Nguyễn Mạnh H&ugrave;ng - Chủ tịch Hội đồng trường cảm ơn sự phối hợp chặt chẽ của Trường C&aacute;n bộ quản l&yacute; GTVT v&agrave; 02 đơn vị ng&agrave;nh BHXH v&agrave; Thuế của Tỉnh Vĩnh Ph&uacute;c trong c&ocirc;ng t&aacute;c ĐTBD n&acirc;ng cao chất lượng nguồn nh&acirc;n lực v&agrave; chuẩn h&oacute;a đội ngũ c&ocirc;ng chức, vi&ecirc;n chức nhằm đ&aacute;p ứng c&aacute;c y&ecirc;u cầu mới của sự nghiệp CNH-HĐH v&agrave; hội nhập quốc tế trong xu thế to&agrave;n cầu h&oacute;a hiện nay. B&ecirc;n cạnh đ&oacute;, Nh&agrave; trường tự h&agrave;o l&agrave; một trong những Cơ sở gi&aacute;o dục đ&agrave;o tạo uy t&iacute;n v&agrave; đ&atilde; v&agrave; đang đ&agrave;o tạo nhiều lớp Cao học cho c&aacute;c c&aacute;n bộ chủ chốt của 02 ng&agrave;nh n&oacute;i ri&ecirc;ng v&agrave; nhiều cơ quan đơn vị tr&ecirc;n địa b&agrave;n tỉnh Vĩnh Ph&uacute;c. Để 02 kh&oacute;a ĐTBD đạt hi&ecirc;u quả cao đ/c Nguyễn Mạnh H&ugrave;ng đề nghị Trung t&acirc;m ĐTBD phối hợp chặt chẽ với Trường C&aacute;n bộ quản l&yacute; GTVT v&agrave; c&aacute;c Giảng vi&ecirc;n, b&aacute;o c&aacute;o vi&ecirc;n vi&ecirc;n chuẩn bị mọi điều kiện thuận lợi nhất về cơ sở vật chất, b&agrave;i giảng để truyền tải hiệu quả chương tr&igrave;nh đ&agrave;o tạo đến c&aacute;c đồng ch&iacute; học vi&ecirc;n, về ph&iacute;a c&aacute;c c&aacute;c đồng ch&iacute; học vi&ecirc;n cần thực hiện đầy đủ c&aacute;c quy định của kh&oacute;a ĐTBD, đồng thời c&aacute;c đồng ch&iacute; học vi&ecirc;n cần mạnh dạn trao đổi với giảng vi&ecirc;n, b&aacute;o c&aacute;o vi&ecirc;n để tiếp thu tốt nhất c&aacute;c nội dung của kh&oacute;a học. Đ/c Nguyễn Mạnh H&ugrave;ng hy vọng trong thời gian tới với sự phối hợp hiệu quả, truyền thống giữa hai Trường sẽ tiếp tục mở ra nhiều kh&oacute;a ĐTBD về quản l&yacute; nh&agrave; nước cho c&aacute;n bộ c&ocirc;ng chức, vi&ecirc;n chức trong c&aacute;c cơ quan, đơn vị tr&ecirc;n địa b&agrave;n tỉnh Vĩnh Ph&uacute;c được đặt lớp tại CSĐT Vĩnh Ph&uacute;c.</p>\r\n\r\n<p><em><img src=\"http://utt.edu.vn/uploads/file-manager/images/image006(11).jpg\" /></em></p>\r\n\r\n<p><em>Đ/c Nguyễn Mạnh H&ugrave;ng - Chủ tịch Hội đồng trường Trường ĐH CN GTVT,</em>&nbsp;<em>ph&aacute;t biểu tại lễ khai giảng</em></p>\r\n\r\n<p><img alt=\"\" src=\"http://utt.edu.vn/uploads/file-manager/images/image008(8).jpg\" /></p>\r\n\r\n<p><em>C&aacute;c đồng ch&iacute; học vi&ecirc;n chụp ảnh lưu niệm c&ugrave;ng đại biểu v&agrave; giảng vi&ecirc;n, b&aacute;o c&aacute;o vi&ecirc;n kh&oacute;a học</em></p>', 'khai-giang-lop-boi-duong-quan-ly-nha-nuoc-ngach-chuyen-vien-va-chuyen-vien-chinh-1591246292', 'Screenshot from 2020-06-04 09-16-54_1591238424.png', 1, 2, '2020-06-03 19:39:42', '2020-06-03 21:51:32'),
(3, 'Khai giảng lớp bồi dưỡng theo tiêu chuẩn chức danh nghề nghiệp Giảng viên (Hạng III)', '<p>C&ocirc;ng t&aacute;c đ&agrave;o tạo bồi dưỡng n&acirc;ng cao năng lực chuy&ecirc;n m&ocirc;n nghiệp vụ l&agrave; nhiệm vụ thường xuy&ecirc;n v&agrave; li&ecirc;n tục, đặc biệt đối với đội ngũ giảng vi&ecirc;n. Đồng thời, cũng l&agrave; thực hiện tốt Th&ocirc;ng tư Li&ecirc;n tịch số 36 ng&agrave;y 28/11/2014 của Bộ trưởng Bộ GDĐT v&agrave; Bộ trưởng Bộ Nội vụ về việc Quy định m&atilde; số v&agrave; ti&ecirc;u chuẩn chức danh nghề nghiệp vi&ecirc;n chức giảng dạy trong c&aacute;c cơ sở gi&aacute;o dục đại học c&ocirc;ng lập. Ng&agrave;y 30/5/2020 tại Ph&acirc;n hiệu H&agrave; Nội, Trường Đại học C&ocirc;ng nghệ GTVT giao cho Trung t&acirc;m Hỗ trợ sinh vi&ecirc;n khởi nghiệp &amp; Quan hệ Doanh nghiệp&nbsp;<em>(Trung t&acirc;m ĐTBD)</em>&nbsp;tổ chức khai giảng lớp Bồi dưỡng ti&ecirc;u chuẩn chức danh nghề nghiệp giảng vi&ecirc;n (Hạng III) - Kh&oacute;a 9.</p>\r\n\r\n<p>Tham dự lễ khai giảng, c&oacute; GVC.TS. Nguyễn Văn L&acirc;m - UVTV, Trưởng ph&ograve;ng Đ&agrave;o tạo; GVC.TS. Dương Thị Ngọc Thu - ĐUV, Trưởng ph&ograve;ng TCCB; GV.TS. Đinh Quang To&agrave;n - PGĐ Phụ tr&aacute;ch Trung t&acirc;m ĐTBD c&ugrave;ng 42 học vi&ecirc;n l&agrave; giảng vi&ecirc;n đến từ Trường Đại học C&ocirc;ng nghệ GTVT, Trường Đại học GTVT, Học viện Khoa học x&atilde; hội...</p>\r\n\r\n<p><img src=\"http://utt.edu.vn/uploads/file-manager/images/image001(32).jpg\" /></p>\r\n\r\n<p><em>To&agrave;n cảnh buổi khai giảng Bồi dưỡng theo ti&ecirc;u chuẩn chức danh nghề nghiệp giảng vi&ecirc;n hạng III</em></p>\r\n\r\n<p><em>&nbsp;</em></p>\r\n\r\n<p><img src=\"http://utt.edu.vn/uploads/file-manager/images/image003(29).jpg\" /></p>\r\n\r\n<p><em>GV.TS. Đinh Quang To&agrave;n - Phụ tr&aacute;ch Trung t&acirc;m ĐTBD, c&ocirc;ng bố Quyết định th&agrave;nh lập lớp</em></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img src=\"http://utt.edu.vn/uploads/file-manager/images/image005(23).jpg\" /></p>\r\n\r\n<p><em>GVC.TS. Nguyễn Văn L&acirc;m - UVTV, Trưởng ph&ograve;ng Đ&agrave;o tạo đại diện l&atilde;nh đạo trường Đại học C&ocirc;ng nghệ GTVT, ph&aacute;t biểu tại lễ khai giảng</em></p>\r\n\r\n<p>Ph&aacute;t biểu khai giảng kh&oacute;a học, GVC.TS. Nguyễn Văn L&acirc;m cho rằng, việc quan t&acirc;m bồi dưỡng đội ngũ nh&agrave; gi&aacute;o của Ban Gi&aacute;m hiệu c&aacute;c Trường đại học, học vi&ecirc;n tr&ecirc;n cả nước hiện nay l&agrave; quan trọng, gi&uacute;p giảng vi&ecirc;n n&acirc;ng cao năng lực chuy&ecirc;n m&ocirc;n, nghiệp vụ, ph&aacute;t triển năng lực nghề nghiệp, thực hiện tốt c&aacute;c nhiệm vụ của vi&ecirc;n chức giảng dạy, đ&aacute;p ứng ti&ecirc;u chuẩn chức danh nghề nghiệp Giảng vi&ecirc;n. Tham dự kh&oacute;a bồi dưỡng, c&aacute;c giảng vi&ecirc;n sẽ cập nhật được những tri thức v&agrave; xu thế ph&aacute;t triển gi&aacute;o dục hiện đại tr&ecirc;n thế giới; những kinh nghiệm trong nước v&agrave; quốc tế trong c&aacute;c hoạt động đ&agrave;o tạo v&agrave; nghi&ecirc;n cứu khoa học, chủ động ph&aacute;t triển c&aacute;c năng lực cốt l&otilde;i của người giảng vi&ecirc;n; thực hiện tốt c&aacute;c nhiệm vụ c&oacute; t&iacute;nh chuy&ecirc;n nghiệp theo vị tr&iacute; chức danh nghề nghiệp giảng vi&ecirc;n ch&iacute;nh, l&agrave;m n&ograve;ng cốt cho việc n&acirc;ng cao chất lượng đ&agrave;o tạo nguồn nh&acirc;n lực vi&ecirc;n chức giảng vi&ecirc;n.</p>\r\n\r\n<p>TS. Nguyễn Văn L&acirc;m cũng y&ecirc;u cầu c&aacute;c Giảng vi&ecirc;n cao cấp, giảng vi&ecirc;n ch&iacute;nh tham gia giảng dạy, thảo luận, trao đổi kiến thức, chia sẻ kinh nghiệm, c&aacute;c học vi&ecirc;n nghi&ecirc;m t&uacute;c học tập, để c&aacute;c buổi học đem lại hiệu quả cao, kh&oacute;a học được th&agrave;nh c&ocirc;ng. B&ecirc;n cạnh đ&oacute;, Trung t&acirc;m ĐTBD cần phối hợp chặt chẽ với Khoa ĐTTC v&agrave; Ph&ograve;ng HC-QT để chuẩn bị tốt nhất cơ sở vật chất v&agrave; m&ocirc;i trường lớp học để phục vụ tốt nhất cho c&aacute;c học vi&ecirc;n khi tham gia kh&oacute;a học.</p>\r\n\r\n<p><img src=\"http://utt.edu.vn/uploads/file-manager/images/image007(25).jpg\" /></p>\r\n\r\n<p><em>C&aacute;c học vi&ecirc;n chụp ảnh lưu niệm c&ugrave;ng Giảng vi&ecirc;n, b&aacute;o c&aacute;o vi&ecirc;n kh&oacute;a học</em></p>\r\n\r\n<p><strong><em>Trung t&acirc;m HTSVKN&amp;QHDN</em></strong></p>', 'khai-giang-lop-boi-duong-theo-tieu-chuan-chuc-danh-nghe-nghiep-giang-vien-hang-iii-1591241651', 'Screenshot from 2020-06-03 17-05-22_1591241651.png', 1, 2, '2020-06-03 19:56:48', '2020-06-03 20:34:11');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `masv` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role_id` bigint(20) UNSIGNED DEFAULT '3',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `masv`, `role_id`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Dev quèn', 'kenchivas1998@gmail.com', NULL, '$2y$10$dtcbABs0Ky7o7Zyxx0E6duFZOjLWo3vFZ9hUY5I2mufHciDMVtmAq', '67DCHT200785', 3, NULL, '2020-04-28 01:48:59', '2020-06-04 02:17:47'),
(2, 'Dev quèn', 'nguyenduclai.utt@gmail.com', NULL, '$2y$10$bAlPE42qpVUtNqHdfsuTI.HC5Da2pQUCx17pkal1ci7lcZVPQR8aC', NULL, 1, NULL, '2020-04-30 19:13:10', '2020-06-07 09:14:20'),
(9, 'Lai', 'williamlongworth@my.smccd.edu', NULL, '$2y$10$Osq/QgkLkuD/Ke07H9ikgOaSdHEcNir.ggO/8EhhP1G4dvR1Rctky', 'test', 3, NULL, '2020-04-30 19:25:24', '2020-04-30 19:25:24'),
(14, 'Giáo viên', 'giaovien1@gmail.com', NULL, '$2y$10$A35dLywiFIcB4PHKVZijk.XJ9c51SidGXAP9kgpb2BqKRjj4kDt3W', NULL, 2, NULL, '2020-05-17 01:53:45', '2020-06-05 09:07:35'),
(1809, 'PHAN KHÁNH LINH', NULL, NULL, '$2y$10$7tn..l./mEhBPQbVcLIZ7ORC1/.CWTStHaY6snx.YC7Sd.oQLcvXm', '65DCHT20265', 3, NULL, '2020-06-02 08:22:41', '2020-06-02 08:22:41'),
(1810, 'CAO NGỌC TUẤN ANH', NULL, NULL, '$2y$10$y6UEBYXqnsL0bY6YF7/0Guktq.t1wpjPoClmzoS/JkivLw9oI95Ze', '66DCHT21331', 3, NULL, '2020-06-02 08:22:41', '2020-06-02 08:22:41'),
(1811, 'NGUYỄN HUY HOÀNG', NULL, NULL, '$2y$10$frUyPzDSeMEdJeHqa82fw.DJo9zaT6DZvZLqay29AOtreAqq2dGWW', '66DCHT21372', 3, NULL, '2020-06-02 08:22:41', '2020-06-02 08:22:41'),
(1812, 'NGUYỄN ĐĂNG HUẾ', NULL, NULL, '$2y$10$IGCccDeln08f98uLUKcqk.afyv8f/3jdoFqVGSOC8r82PLZ29m9ha', '66DCHT22131', 3, NULL, '2020-06-02 08:22:41', '2020-06-02 08:22:41'),
(1813, 'ĐỖ QUANG NAM', NULL, NULL, '$2y$10$L18Qu7aR/Kgc.iq4xHqT..izdwj6LW5MiGVE.zV3BZM1f/uog/sP6', '66DCHT21931', 3, NULL, '2020-06-02 08:22:41', '2020-06-02 08:22:41'),
(1814, 'ĐINH THÀNH AN', NULL, NULL, '$2y$10$uo7pk3B3a8oUEGEwwyFhQuR/ASTPyB0yAFuqG7tPC0RcxFSNxpM7a', '67DCHT20001', 3, NULL, '2020-06-02 08:22:41', '2020-06-02 08:22:41'),
(1815, 'TRỊNH VIỆT ANH', NULL, NULL, '$2y$10$AF/QuzCMS7TOoxxYvz9hGOF1HmxRal4mGIXXyuopZT8q7/PRA5VRe', '67DCHT20010', 3, NULL, '2020-06-02 08:22:42', '2020-06-02 08:22:42'),
(1816, 'VŨ XUÂN DUY', NULL, NULL, '$2y$10$Utf0RXn5VoLbUgmeOlrjOeRGu6eOnqiubj0n.jMCA3KSkm5CpZS1q', '67DCHT20029', 3, NULL, '2020-06-02 08:22:42', '2020-06-02 08:22:42'),
(1817, 'HÀ TRỌNG HOÀNG', NULL, NULL, '$2y$10$HgHp2hQdlm6VofZAYsZZX./C1uHKn.YBkKyvNCadj4Darzj9Nh9L.', '67DCHT20052', 3, NULL, '2020-06-02 08:22:42', '2020-06-02 08:22:42'),
(1818, 'LÃ VĂN HOÀNG', NULL, NULL, '$2y$10$V12jk6GubQWmGNUbVu/GRuS.sCrOxnk.EA7Fjtl9fh51rbLwm/iuy', '67DCHT20053', 3, NULL, '2020-06-02 08:22:42', '2020-06-02 08:22:42'),
(1819, 'ĐỖ MINH HÙNG', NULL, NULL, '$2y$10$P1jwmDKg.IjjNPTZhrCpFuNr.VJ7DFH7JP5pI30eCbsrrmaf.XA3C', '67DCHT20061', 3, NULL, '2020-06-02 08:22:42', '2020-06-02 08:22:42'),
(1820, 'NGUYỄN QUANG HUY', NULL, NULL, '$2y$10$gJtHrlMQ1r2T5TPdazEh1ORq/Ca1sLVse0L2eNy84KvPWxujDX.6C', '67DCHT20067', 3, NULL, '2020-06-02 08:22:42', '2020-06-02 08:22:42'),
(1821, 'NGUYỄN QUANG HUY', NULL, NULL, '$2y$10$Hrz51N1drNMyGaYwCgECwOObO0fiqteqCiRn8Bvc7yuO27qEvwBJi', '67DCHT20071', 3, NULL, '2020-06-02 08:22:42', '2020-06-02 08:22:42'),
(1822, 'ĐẶNG NGỌC KHÁNH', NULL, NULL, '$2y$10$PGUfzlWOmHuIztjZwS72pu7/U/l9RNE4kejXxJ4/KI11IdChZr99a', '67DCHT20076', 3, NULL, '2020-06-02 08:22:42', '2020-06-02 08:22:42'),
(1823, 'TRƯƠNG QUANG KHÁNH', NULL, NULL, '$2y$10$zjmeAvdtCFeEDVil/V4rQu5tPy.NUjOET2MlD1hWb0oY43Czb9Vs2', '67DCHT20075', 3, NULL, '2020-06-02 08:22:42', '2020-06-02 08:22:42'),
(1824, 'NGUYỄN THẾ NAM', NULL, NULL, '$2y$10$gPF.9CCf25IIPQ/hIeEpW.tj6KYzmJ6aP4IKLnyr5YXVg1A8objS6', '67DCHT20099', 3, NULL, '2020-06-02 08:22:42', '2020-06-02 08:22:42'),
(1825, 'PHẠM VĂN NAM', NULL, NULL, '$2y$10$fl1Q7urv1gYkR.2HTxO1Z.KvDN.vH8bhGmfks97nxlLh8QWREIzCO', '67DCHT20097', 3, NULL, '2020-06-02 08:22:42', '2020-06-02 08:22:42'),
(1826, 'LÊ NGUYỄN NGỌC SƠN', NULL, NULL, '$2y$10$3XwORChXEulmVQzJKpnLouwsG3Z10Ug8nskLd1Krou4bYDVNzmrOC', '67DCHT20126', 3, NULL, '2020-06-02 08:22:42', '2020-06-02 08:22:42'),
(1827, 'ĐỖ TRUNG TẤN', NULL, NULL, '$2y$10$W8hlS0MkhoN5v3HMby07qODBFW4zrv/AkbPVRbPvx1bVcev.PVeK.', '67DCHT20131', 3, NULL, '2020-06-02 08:22:43', '2020-06-02 08:22:43'),
(1828, 'ĐẶNG THỊ VÂN', NULL, NULL, '$2y$10$J7ZlcksSRuXqT5UfYImBq.sipPCuUDr8EsZkjHX4BHbXJLS/7/WYK', '67DCHT20164', 3, NULL, '2020-06-02 08:22:43', '2020-06-02 08:22:43'),
(1829, 'NGUYỄN ĐÌNH  VŨ', NULL, NULL, '$2y$10$9ATgPh71RsG.CIWf/l.KkOTYcwvyC.YUdZJEG9MS0LJYDQF344j.2', '67DCHT20166', 3, NULL, '2020-06-02 08:22:43', '2020-06-02 08:22:43'),
(1830, 'BÙI THỊ BÍCH', NULL, NULL, '$2y$10$ylkggV7WJIKgcBFpI4uIn.7f9MljLkgITyf/Op4kaB6.G/NyHDGta', '67DCHT20013', 3, NULL, '2020-06-02 08:22:43', '2020-06-02 08:22:43'),
(1831, 'TRỊNH THẾ CHIỀU', NULL, NULL, '$2y$10$wRirQLNKwl80HHKuXXIiMumIEpc.Nf/DiQ6GynYnaoim3XlOknwza', '67DCHT20016', 3, NULL, '2020-06-02 08:22:43', '2020-06-02 08:22:43'),
(1832, 'NGUYỄN MẠNH HUY', NULL, NULL, '$2y$10$qqUAvuDz4aPwfEnWDfAeQORKJ9MFh4MNrxh4ti4cnxMjm6T2uXFTa', '67DCHT20069', 3, NULL, '2020-06-02 08:22:43', '2020-06-02 08:22:43'),
(1833, 'HOÀNG VĂN LÃM', NULL, NULL, '$2y$10$tlFn1F7liOrRslzRIKTtTuzBbAB2d4rcQxepHcx5dGI.R.CKuyYmK', '67DCHT20081', 3, NULL, '2020-06-02 08:22:43', '2020-06-02 08:22:43'),
(1834, 'TRẦN VĂN LÂM', NULL, NULL, '$2y$10$.Oy35DDD9.OwBoSh/ygVQeSWp13fRDVlxAna8RHqj9Gq4QTFw3jYK', '67DCHT20079', 3, NULL, '2020-06-02 08:22:44', '2020-06-02 08:22:44'),
(1835, 'HÀ TIẾN MẠNH', NULL, NULL, '$2y$10$mkRIdNgqVte6W3IFThk6qeL3OS7K72z0iRMnP0dZrYJUHuGw0vsFW', '67DCHT20091', 3, NULL, '2020-06-02 08:22:44', '2020-06-02 08:22:44'),
(1836, 'VŨ CÔNG NGỌC', NULL, NULL, '$2y$10$iYXrrgZ62/kdflzwwQ0mWeK36.N7w8YyDCaMcYdsR1F9aZqZ0Eyvy', '67DCHT20105', 3, NULL, '2020-06-02 08:22:44', '2020-06-02 08:22:44'),
(1837, 'NGUYỄN VĂN NINH', NULL, NULL, '$2y$10$It792GO7P22Aka/exEFGR.F4gVeXYw0zE5udWDKymZxAYpJ9BzVSW', '67DCHT20108', 3, NULL, '2020-06-02 08:22:44', '2020-06-02 08:22:44'),
(1838, 'LÊ HỒNG PHONG', NULL, NULL, '$2y$10$ApAsl5g4E9J3s2R88nutB.qiEKKtjoczt9ZcknRYzXKL5FpB/zzAW', '67DCHT20109', 3, NULL, '2020-06-02 08:22:44', '2020-06-02 08:22:44'),
(1839, 'VŨ MINH QUANG', NULL, NULL, '$2y$10$ZSCQm.NbcyTvSTWmb023k.xlvB15Sxa.BLMIRO6bCvv7JRp4IG75y', '67DCHT20120', 3, NULL, '2020-06-02 08:22:44', '2020-06-02 08:22:44'),
(1840, 'NGUYỄN VĂN TẤN', NULL, NULL, '$2y$10$GdgXb.XyGZTfuIzdHPzlJ.LjPh4Gc3ryBm9zGHM.RAS.GzHut.Gg2', '67DCHT20130', 3, NULL, '2020-06-02 08:22:44', '2020-06-02 08:22:44'),
(1841, 'NGUYỄN VIỆT ANH', NULL, NULL, '$2y$10$FMe6BbYRTRMi4P57RYI8H.oJExmpi0Pr1sj1USe7WmheKYfU0bASG', '67DCHT20006', 3, NULL, '2020-06-02 08:22:44', '2020-06-02 08:22:44'),
(1842, 'PHAN VIỆT ANH', NULL, NULL, '$2y$10$QBMPN90fZC6q0S4jPmH0muy2kLwNTPEQii8y4GNr1PvfudfOprLcW', '67DCHT20005', 3, NULL, '2020-06-02 08:22:44', '2020-06-02 08:22:44'),
(1843, 'DƯƠNG MINH CÔNG', NULL, NULL, '$2y$10$MNmoLEITlCmHXKK.aiZFFuqfLBJ.QmNdjBExV0dYImYNCxFPjxHmu', '67DCHT20018', 3, NULL, '2020-06-02 08:22:44', '2020-06-02 08:22:44'),
(1844, 'NGUYỄN THỌ ĐẶNG', NULL, NULL, '$2y$10$7VqNVul3Gu/lkusz/cuXvObb1/t5DZ/Nwg7X1kDsfvL84z9d.KBSK', '67DCHT20030', 3, NULL, '2020-06-02 08:22:44', '2020-06-02 08:22:44'),
(1845, 'NGUYỄN TIẾN ĐẠT', NULL, NULL, '$2y$10$Soda60c6uGvK3.0gb.P8w.k8L3a4uSzQGy4OfuYW9HgAgVHkyigSe', '67DCHT20031', 3, NULL, '2020-06-02 08:22:44', '2020-06-02 08:22:44'),
(1846, 'TẠ THÀNH ĐẠT', NULL, NULL, '$2y$10$Pm3osqefWp66HaVfy4OKnu49czvlNN0xJr1CMc3Gm0PRGD6AYilm2', '67DCHT20033', 3, NULL, '2020-06-02 08:22:45', '2020-06-02 08:22:45'),
(1847, 'ĐÀM CÔNG HIẾN', NULL, NULL, '$2y$10$tCSDtKLVhneSnumVb0stwOU2fNyqyrO1HvZqmrPYdBOFeU0rYL9a.', '67DCHT20043', 3, NULL, '2020-06-02 08:22:45', '2020-06-02 08:22:45'),
(1848, 'NGÔ TRUNG HIẾU', NULL, NULL, '$2y$10$kWKFNjocZdEen3IwpbouZuWvR.v2gsMHfgaaTG6TuQ69EauRLjsaO', '67DCHT20046', 3, NULL, '2020-06-02 08:22:45', '2020-06-02 08:22:45'),
(1849, 'NGUYỄN TRUNG HÙNG', NULL, NULL, '$2y$10$fh4bQlPk1hMdEwNt3hsTWOwbYKuxmynv5icwDYEknL3N21dM67xoa', '67DCHT20062', 3, NULL, '2020-06-02 08:22:45', '2020-06-02 08:22:45'),
(1850, 'Nguyễn Đức Lai', 'nguyenduclai.test@gmail.com', NULL, '$2y$10$D2r.jufZpOPBjD9tDM6mcem99mo8E3CKKrT7ssypf9cx7T/9PaPaq', '67DCHT20078', 3, NULL, '2020-06-02 08:22:45', '2020-06-04 00:45:53'),
(1851, 'NGUYỄN PHƯƠNG NAM', NULL, NULL, '$2y$10$CAtDCbGHkg21FctcWhGgZemdpnP2jfqx6IDzKNH8PTAfTCp1/HJNu', '67DCHT20095', 3, NULL, '2020-06-02 08:22:45', '2020-06-02 08:22:45'),
(1852, 'NGUYỄN THỊ NGA', NULL, NULL, '$2y$10$hp.YKqvZClQZrcNrzsZjBO3a1NOSxUN/V.4nXBYCMwcjfKp0RJ0v.', '67DCHT20100', 3, NULL, '2020-06-02 08:22:45', '2020-06-02 08:22:45'),
(1853, 'TRẦN HỮU QUÂN', NULL, NULL, '$2y$10$3TnupJOPMf5kMNxlKRZQtOYaElAAqTE87j3/9LUT0f.4y5RdsSd9a', '67DCHT20117', 3, NULL, '2020-06-02 08:22:45', '2020-06-02 08:22:45'),
(1854, 'NGUYỄN PHÚ QUÝ', NULL, NULL, '$2y$10$0dNVMLbqwpEQiDobwuOnn.xSEDbfGQrWpvJXr5Gw13BaAgeQfPdny', '67DCHT20121', 3, NULL, '2020-06-02 08:22:46', '2020-06-02 08:22:46');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `chuyennganh`
--
ALTER TABLE `chuyennganh`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `detai`
--
ALTER TABLE `detai`
  ADD PRIMARY KEY (`id`),
  ADD KEY `detai_chuyennganh_id_foreign` (`chuyennganh_id`),
  ADD KEY `detai_linhvuc_id_foreign` (`linhvuc_id`),
  ADD KEY `detai_user_id_foreign` (`user_id`),
  ADD KEY `detai_sinhvien_id_foreign` (`sinhvien_id`);

--
-- Indexes for table `dexuatdetai`
--
ALTER TABLE `dexuatdetai`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dexuatdetai_chuyennganh_id_foreign` (`chuyennganh_id`),
  ADD KEY `dexuatdetai_linhvuc_id_foreign` (`linhvuc_id`),
  ADD KEY `dexuatdetai_user_id_foreign` (`user_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ketquaphandoan`
--
ALTER TABLE `ketquaphandoan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `linhvuc`
--
ALTER TABLE `linhvuc`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nguyenvong`
--
ALTER TABLE `nguyenvong`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nguyenvong1_user_id_foreign` (`user_id`),
  ADD KEY `nguyenvong1_detai_id_foreign` (`detai_id`),
  ADD KEY `nguyenvong1_detaidexuat_id_foreign` (`detaidexuat_id`),
  ADD KEY `nguyenvong1_linhvuc_id_foreign` (`linhvuc_id`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`(191));

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `thongtin`
--
ALTER TABLE `thongtin`
  ADD PRIMARY KEY (`id`),
  ADD KEY `thongtin_user_id_foreign` (`user_id`);

--
-- Indexes for table `time`
--
ALTER TABLE `time`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tintuc`
--
ALTER TABLE `tintuc`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tintuc_user_id_foreign` (`user_id`),
  ADD KEY `tintuc_chuyennganh_id_foreign` (`chuyennganh_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `masv` (`masv`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `chuyennganh`
--
ALTER TABLE `chuyennganh`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `detai`
--
ALTER TABLE `detai`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `dexuatdetai`
--
ALTER TABLE `dexuatdetai`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ketquaphandoan`
--
ALTER TABLE `ketquaphandoan`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `linhvuc`
--
ALTER TABLE `linhvuc`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `nguyenvong`
--
ALTER TABLE `nguyenvong`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `thongtin`
--
ALTER TABLE `thongtin`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1437;
--
-- AUTO_INCREMENT for table `time`
--
ALTER TABLE `time`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tintuc`
--
ALTER TABLE `tintuc`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1855;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `detai`
--
ALTER TABLE `detai`
  ADD CONSTRAINT `detai_chuyennganh_id_foreign` FOREIGN KEY (`chuyennganh_id`) REFERENCES `chuyennganh` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `detai_linhvuc_id_foreign` FOREIGN KEY (`linhvuc_id`) REFERENCES `linhvuc` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `detai_sinhvien_id_foreign` FOREIGN KEY (`sinhvien_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `detai_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `dexuatdetai`
--
ALTER TABLE `dexuatdetai`
  ADD CONSTRAINT `dexuatdetai_chuyennganh_id_foreign` FOREIGN KEY (`chuyennganh_id`) REFERENCES `chuyennganh` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `dexuatdetai_linhvuc_id_foreign` FOREIGN KEY (`linhvuc_id`) REFERENCES `linhvuc` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `dexuatdetai_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `nguyenvong`
--
ALTER TABLE `nguyenvong`
  ADD CONSTRAINT `nguyenvong1_detai_id_foreign` FOREIGN KEY (`detai_id`) REFERENCES `detai` (`id`),
  ADD CONSTRAINT `nguyenvong1_detaidexuat_id_foreign` FOREIGN KEY (`detaidexuat_id`) REFERENCES `dexuatdetai` (`id`),
  ADD CONSTRAINT `nguyenvong1_linhvuc_id_foreign` FOREIGN KEY (`linhvuc_id`) REFERENCES `linhvuc` (`id`),
  ADD CONSTRAINT `nguyenvong1_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `thongtin`
--
ALTER TABLE `thongtin`
  ADD CONSTRAINT `thongtin_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `tintuc`
--
ALTER TABLE `tintuc`
  ADD CONSTRAINT `tintuc_chuyennganh_id_foreign` FOREIGN KEY (`chuyennganh_id`) REFERENCES `chuyennganh` (`id`),
  ADD CONSTRAINT `tintuc_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
