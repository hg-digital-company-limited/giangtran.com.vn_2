-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 25, 2024 lúc 04:32 AM
-- Phiên bản máy phục vụ: 10.4.32-MariaDB
-- Phiên bản PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `giangtran`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `activity_history`
--

CREATE TABLE `activity_history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `content` text NOT NULL,
  `ip_address` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `activity_history`
--

INSERT INTO `activity_history` (`id`, `user_id`, `content`, `ip_address`, `created_at`, `updated_at`) VALUES
(245, 20, 'Đăng nhập bằng tài khoản', '127.0.0.1', '2024-12-07 02:46:22', '2024-12-07 02:46:22'),
(247, 20, 'Đăng nhập bằng tài khoản', '127.0.0.1', '2024-12-07 02:46:22', '2024-12-07 02:46:22'),
(249, 20, 'Đăng nhập bằng tài khoản', '127.0.0.1', '2024-12-07 02:46:22', '2024-12-07 02:46:22'),
(251, 20, 'Đăng nhập bằng tài khoản', '127.0.0.1', '2024-12-07 02:46:22', '2024-12-07 02:46:22'),
(253, 20, 'Đăng nhập bằng tài khoản', '127.0.0.1', '2024-12-07 02:46:22', '2024-12-07 02:46:22'),
(255, 20, 'Đăng nhập bằng tài khoản', '127.0.0.1', '2024-12-07 02:46:22', '2024-12-07 02:46:22'),
(501, 20, 'Đăng nhập bằng tài khoản', '127.0.0.1', '2024-12-07 02:46:22', '2024-12-07 02:46:22'),
(503, 20, 'Đăng nhập bằng tài khoản', '127.0.0.1', '2024-12-07 02:46:22', '2024-12-07 02:46:22'),
(505, 20, 'Đăng nhập bằng tài khoản', '127.0.0.1', '2024-12-07 02:46:22', '2024-12-07 02:46:22'),
(507, 20, 'Đăng nhập bằng tài khoản', '127.0.0.1', '2024-12-07 02:46:22', '2024-12-07 02:46:22'),
(509, 20, 'Đăng nhập bằng tài khoản', '127.0.0.1', '2024-12-07 02:46:22', '2024-12-07 02:46:22'),
(511, 20, 'Đăng nhập bằng tài khoản', '127.0.0.1', '2024-12-07 02:46:22', '2024-12-07 02:46:22'),
(757, 20, 'Đăng nhập bằng tài khoản', '127.0.0.1', '2024-12-07 02:46:22', '2024-12-07 02:46:22'),
(759, 20, 'Đăng nhập bằng tài khoản', '127.0.0.1', '2024-12-07 02:46:22', '2024-12-07 02:46:22'),
(761, 20, 'Đăng nhập bằng tài khoản', '127.0.0.1', '2024-12-07 02:46:22', '2024-12-07 02:46:22'),
(763, 20, 'Đăng nhập bằng tài khoản', '127.0.0.1', '2024-12-07 02:46:22', '2024-12-07 02:46:22'),
(765, 20, 'Đăng nhập bằng tài khoản', '127.0.0.1', '2024-12-07 02:46:22', '2024-12-07 02:46:22'),
(767, 20, 'Đăng nhập bằng tài khoản', '127.0.0.1', '2024-12-07 02:46:22', '2024-12-07 02:46:22'),
(1013, 20, 'Đăng nhập bằng tài khoản', '127.0.0.1', '2024-12-07 02:46:22', '2024-12-07 02:46:22'),
(1015, 20, 'Đăng nhập bằng tài khoản', '127.0.0.1', '2024-12-07 02:46:22', '2024-12-07 02:46:22'),
(1017, 20, 'Đăng nhập bằng tài khoản', '127.0.0.1', '2024-12-07 02:46:22', '2024-12-07 02:46:22'),
(1019, 20, 'Đăng nhập bằng tài khoản', '127.0.0.1', '2024-12-07 02:46:22', '2024-12-07 02:46:22'),
(1021, 20, 'Đăng nhập bằng tài khoản', '127.0.0.1', '2024-12-07 02:46:22', '2024-12-07 02:46:22'),
(1023, 20, 'Đăng nhập bằng tài khoản', '127.0.0.1', '2024-12-07 02:46:22', '2024-12-07 02:46:22'),
(1269, 20, 'Đăng nhập bằng tài khoản', '127.0.0.1', '2024-12-07 02:46:22', '2024-12-07 02:46:22'),
(1271, 20, 'Đăng nhập bằng tài khoản', '127.0.0.1', '2024-12-07 02:46:22', '2024-12-07 02:46:22'),
(1273, 20, 'Đăng nhập bằng tài khoản', '127.0.0.1', '2024-12-07 02:46:22', '2024-12-07 02:46:22'),
(1275, 20, 'Đăng nhập bằng tài khoản', '127.0.0.1', '2024-12-07 02:46:22', '2024-12-07 02:46:22'),
(1277, 20, 'Đăng nhập bằng tài khoản', '127.0.0.1', '2024-12-07 02:46:22', '2024-12-07 02:46:22'),
(1279, 20, 'Đăng nhập bằng tài khoản', '127.0.0.1', '2024-12-07 02:46:22', '2024-12-07 02:46:22'),
(1525, 20, 'Đăng nhập bằng tài khoản', '127.0.0.1', '2024-12-07 02:46:22', '2024-12-07 02:46:22'),
(1527, 20, 'Đăng nhập bằng tài khoản', '127.0.0.1', '2024-12-07 02:46:22', '2024-12-07 02:46:22'),
(1529, 20, 'Đăng nhập bằng tài khoản', '127.0.0.1', '2024-12-07 02:46:22', '2024-12-07 02:46:22'),
(1531, 20, 'Đăng nhập bằng tài khoản', '127.0.0.1', '2024-12-07 02:46:22', '2024-12-07 02:46:22'),
(1533, 20, 'Đăng nhập bằng tài khoản', '127.0.0.1', '2024-12-07 02:46:22', '2024-12-07 02:46:22'),
(1535, 20, 'Đăng nhập bằng tài khoản', '127.0.0.1', '2024-12-07 02:46:22', '2024-12-07 02:46:22'),
(1779, 20, 'Đăng nhập bằng tài khoản', '127.0.0.1', '2024-12-07 02:46:22', '2024-12-07 02:46:22'),
(1781, 20, 'Đăng nhập bằng tài khoản', '127.0.0.1', '2024-12-07 02:46:22', '2024-12-07 02:46:22'),
(1783, 20, 'Đăng nhập bằng tài khoản', '127.0.0.1', '2024-12-07 02:46:22', '2024-12-07 02:46:22'),
(1785, 20, 'Đăng nhập bằng tài khoản', '127.0.0.1', '2024-12-07 02:46:22', '2024-12-07 02:46:22'),
(1787, 20, 'Đăng nhập bằng tài khoản', '127.0.0.1', '2024-12-07 02:46:22', '2024-12-07 02:46:22'),
(1789, 20, 'Đăng nhập bằng tài khoản', '127.0.0.1', '2024-12-07 02:46:22', '2024-12-07 02:46:22'),
(1791, 20, 'Đăng nhập bằng tài khoản', '127.0.0.1', '2024-12-07 02:46:22', '2024-12-07 02:46:22'),
(2035, 20, 'Đăng nhập bằng tài khoản', '127.0.0.1', '2024-12-07 02:46:22', '2024-12-07 02:46:22'),
(2037, 20, 'Đăng nhập bằng tài khoản', '127.0.0.1', '2024-12-07 02:46:22', '2024-12-07 02:46:22'),
(2039, 20, 'Đăng nhập bằng tài khoản', '127.0.0.1', '2024-12-07 02:46:22', '2024-12-07 02:46:22'),
(2041, 20, 'Đăng nhập bằng tài khoản', '127.0.0.1', '2024-12-07 02:46:22', '2024-12-07 02:46:22'),
(2043, 20, 'Đăng nhập bằng tài khoản', '127.0.0.1', '2024-12-07 02:46:22', '2024-12-07 02:46:22'),
(2045, 20, 'Đăng nhập bằng tài khoản', '127.0.0.1', '2024-12-07 02:46:22', '2024-12-07 02:46:22'),
(2047, 20, 'Đăng nhập bằng tài khoản', '127.0.0.1', '2024-12-07 02:46:22', '2024-12-07 02:46:22'),
(2291, 20, 'Đăng nhập bằng tài khoản', '127.0.0.1', '2024-12-07 02:46:22', '2024-12-07 02:46:22'),
(2293, 20, 'Đăng nhập bằng tài khoản', '127.0.0.1', '2024-12-07 02:46:22', '2024-12-07 02:46:22'),
(2295, 20, 'Đăng nhập bằng tài khoản', '127.0.0.1', '2024-12-07 02:46:22', '2024-12-07 02:46:22'),
(2297, 20, 'Đăng nhập bằng tài khoản', '127.0.0.1', '2024-12-07 02:46:22', '2024-12-07 02:46:22'),
(2299, 20, 'Đăng nhập bằng tài khoản', '127.0.0.1', '2024-12-07 02:46:22', '2024-12-07 02:46:22'),
(2301, 20, 'Đăng nhập bằng tài khoản', '127.0.0.1', '2024-12-07 02:46:22', '2024-12-07 02:46:22'),
(2303, 20, 'Đăng nhập bằng tài khoản', '127.0.0.1', '2024-12-07 02:46:22', '2024-12-07 02:46:22'),
(2326, 20, 'Đăng nhập bằng tài khoản', '127.0.0.1', '2024-12-07 02:53:05', '2024-12-07 02:53:05'),
(2327, 20, 'Đăng nhập thành công với OTP', '127.0.0.1', '2024-12-07 03:49:22', '2024-12-07 03:49:22'),
(2328, 20, 'Đăng nhập thành công với OTP', '127.0.0.1', '2024-12-07 03:49:49', '2024-12-07 03:49:49'),
(2329, 20, 'Đăng nhập thành công với OTP', '127.0.0.1', '2024-12-07 03:56:58', '2024-12-07 03:56:58'),
(2330, 20, 'Đăng nhập bằng tài khoản', '127.0.0.1', '2024-12-07 04:00:21', '2024-12-07 04:00:21'),
(2331, 20, 'Đăng nhập bằng Google', '127.0.0.1', '2024-12-12 08:18:02', '2024-12-12 08:18:02'),
(2332, 20, 'Đăng nhập thành công với OTP', '127.0.0.1', '2024-12-12 12:10:19', '2024-12-12 12:10:19'),
(2333, 20, 'Đăng nhập thành công với OTP', '127.0.0.1', '2024-12-12 12:37:39', '2024-12-12 12:37:39'),
(2334, 20, 'Đăng nhập thành công với OTP', '127.0.0.1', '2024-12-12 12:44:45', '2024-12-12 12:44:45'),
(2335, 20, 'Đăng nhập thành công với OTP', '127.0.0.1', '2024-12-12 12:48:11', '2024-12-12 12:48:11'),
(2336, 20, 'Đăng nhập thành công với OTP', '127.0.0.1', '2024-12-13 02:52:35', '2024-12-13 02:52:35'),
(2337, 20, 'Đăng nhập thành công với OTP', '127.0.0.1', '2024-12-13 03:54:17', '2024-12-13 03:54:17'),
(2345, 20, 'Đăng nhập bằng Google', '127.0.0.1', '2024-12-21 00:00:42', '2024-12-21 00:00:42'),
(2346, 20, 'Đăng nhập bằng Google', '127.0.0.1', '2024-12-22 07:30:42', '2024-12-22 07:30:42'),
(2350, 20, 'Đăng nhập bằng tài khoản', '127.0.0.1', '2024-12-23 02:39:02', '2024-12-23 02:39:02'),
(2351, 20, 'Mua Source Code . Mã Nguồn Smm Panel Siêu Xịn!', '127.0.0.1', '2024-12-23 09:00:20', '2024-12-23 09:00:20'),
(2352, 20, 'Đăng nhập bằng tài khoản', '127.0.0.1', '2024-12-23 23:23:14', '2024-12-23 23:23:14'),
(2353, 20, 'Mua Source Code . Mã Nguồn Smm Panel Siêu Xịn!', '127.0.0.1', '2024-12-23 23:25:17', '2024-12-23 23:25:17'),
(2354, 20, 'Tạo đơn hàng Smm!', '127.0.0.1', '2024-12-24 02:11:27', '2024-12-24 02:11:27'),
(2355, 20, 'Tạo đơn hàng Smm!', '127.0.0.1', '2024-12-24 02:15:02', '2024-12-24 02:15:02'),
(2356, 20, 'Tạo đơn hàng Smm!', '127.0.0.1', '2024-12-24 02:16:52', '2024-12-24 02:16:52'),
(2357, 20, 'Tạo đơn hàng Smm!', '127.0.0.1', '2024-12-24 02:21:48', '2024-12-24 02:21:48'),
(2358, 20, 'Tạo đơn hàng Smm!', '127.0.0.1', '2024-12-24 02:23:14', '2024-12-24 02:23:14'),
(2359, 20, 'Tạo đơn hàng Smm!', '127.0.0.1', '2024-12-24 02:24:35', '2024-12-24 02:24:35'),
(2360, 20, 'Tạo đơn hàng Smm!', '127.0.0.1', '2024-12-24 02:24:48', '2024-12-24 02:24:48'),
(2361, 20, 'Mua Source Code . Mã Nguồn Smm Panel Siêu Xịn!', '127.0.0.1', '2024-12-24 02:31:21', '2024-12-24 02:31:21'),
(2362, 20, 'Mua Source Code . super_admin!', '127.0.0.1', '2024-12-24 02:34:10', '2024-12-24 02:34:10'),
(2363, 20, 'Mua Source Code . super_admin!', '127.0.0.1', '2024-12-24 02:35:50', '2024-12-24 02:35:50'),
(2364, 20, 'Mua Source Code . super_admin!', '127.0.0.1', '2024-12-24 02:36:56', '2024-12-24 02:36:56'),
(2365, 20, 'Mua Source Code . super_admin!', '127.0.0.1', '2024-12-24 02:38:05', '2024-12-24 02:38:05'),
(2366, 20, 'Mua Source Code . super_admin!', '127.0.0.1', '2024-12-24 02:38:34', '2024-12-24 02:38:34'),
(2367, 20, 'Mua Source Code . super_admin!', '127.0.0.1', '2024-12-24 02:39:07', '2024-12-24 02:39:07'),
(2368, 20, 'Mua Source Code . super_admin!', '127.0.0.1', '2024-12-24 02:39:44', '2024-12-24 02:39:44'),
(2369, 20, 'Mua Source Code . super_admin!', '127.0.0.1', '2024-12-24 02:45:18', '2024-12-24 02:45:18'),
(2370, 20, 'Mua Source Code . super_admin!', '127.0.0.1', '2024-12-24 02:46:03', '2024-12-24 02:46:03'),
(2371, 20, 'Mua Source Code . Mã Nguồn Smm Panel Siêu Xịn!', '127.0.0.1', '2024-12-24 02:46:54', '2024-12-24 02:46:54'),
(2372, 20, 'Mua Source Code . super_admin!', '127.0.0.1', '2024-12-24 03:02:24', '2024-12-24 03:02:24'),
(2373, 20, 'Mua Source Code . super_admin!', '127.0.0.1', '2024-12-24 03:04:37', '2024-12-24 03:04:37'),
(2374, 20, 'Mua Source Code . super_admin!', '127.0.0.1', '2024-12-24 03:06:18', '2024-12-24 03:06:18'),
(2375, 20, 'Mua Source Code . super_admin!', '127.0.0.1', '2024-12-24 03:10:27', '2024-12-24 03:10:27'),
(2376, 20, 'Tạo đơn hàng Smm!', '127.0.0.1', '2024-12-24 03:15:48', '2024-12-24 03:15:48'),
(2377, 20, 'Tạo đơn hàng Smm!', '127.0.0.1', '2024-12-24 03:17:38', '2024-12-24 03:17:38'),
(2378, 20, 'Đăng nhập bằng Google', '127.0.0.1', '2024-12-25 02:04:08', '2024-12-25 02:04:08'),
(2380, 26, 'Đăng nhập bằng Google', '127.0.0.1', '2024-12-25 03:31:37', '2024-12-25 03:31:37');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `cache`
--

INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('91032ad7bbcb6cf72875e8e8207dcfba80173f7c', 'i:1;', 1735096587),
('91032ad7bbcb6cf72875e8e8207dcfba80173f7c:timer', 'i:1735096587;', 1735096587),
('a17961fa74e9275d529f489537f179c05d50c2f3', 'i:1;', 1735096416),
('a17961fa74e9275d529f489537f179c05d50c2f3:timer', 'i:1735096416;', 1735096416);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2024_11_17_043830_create_transactions_table', 2),
(5, '2024_11_17_045600_create_payment_history_table', 3),
(6, '2024_11_19_205751_add_themes_settings_to_users_table', 4),
(8, '2024_11_19_212615_create_smm_categories_table', 6),
(9, '2024_11_19_214137_create_smm_services_table', 7),
(10, '2024_11_21_140737_create_smm_orders_table', 8),
(11, '2024_11_21_213650_add_fields_to_users_table', 9),
(12, '2024_11_24_102438_create_activity_history_table', 10),
(13, '2024_11_24_112534_create_invoices_table', 11),
(14, '2024_11_19_210118_create_permission_tables', 12),
(15, '2024_12_06_185329_create_media_table', 13),
(16, '2024_12_06_185330_add_tenant_aware_column_to_media_table', 13),
(17, '2024_12_06_192438_create_articles_table', 14),
(18, '2024_12_18_173051_create_source_code_categories_table', 15),
(19, '2024_12_18_173627_create_source_code_products_table', 16),
(20, '2024_12_18_174240_create_source_code_orders_table', 17),
(21, '2024_12_23_094827_create_web_services_table', 18),
(22, '2024_12_24_063054_create_settings_table', 19);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `password_reset_tokens`
--

INSERT INTO `password_reset_tokens` (`email`, `token`, `created_at`) VALUES
('2509roblox@gmail.com', '$2y$12$SU/4Fr8gNRU6ug/Xa1rO9eBDdvnSdjmvOyh.KkOwiOPLtaTSdf6h6', '2024-12-25 03:11:54');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `payment_history`
--

CREATE TABLE `payment_history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `transaction_code` varchar(255) NOT NULL,
  `amount` decimal(30,2) NOT NULL,
  `status` varchar(255) NOT NULL,
  `bank` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `payment_history`
--

INSERT INTO `payment_history` (`id`, `user_id`, `transaction_code`, `amount`, `status`, `bank`, `created_at`, `updated_at`) VALUES
(120, 20, '5363890', 2000.00, 'thành công', 'MBBank', '2024-12-13 04:01:45', '2024-12-13 04:01:45'),
(121, 20, '5364010', 2001.00, 'thành công', 'MBBank', '2024-12-13 04:02:09', '2024-12-13 04:02:09'),
(122, 20, '5364191', 2000.00, 'thành công', 'MBBank', '2024-12-13 04:08:54', '2024-12-13 04:08:54'),
(123, 20, '5649935', 10000.00, 'thành công', 'MBBank', '2024-12-22 07:35:28', '2024-12-22 07:35:28'),
(124, 20, '5721522', 10000.00, 'thành công', 'MBBank', '2024-12-24 13:57:48', '2024-12-24 13:57:48'),
(125, 20, '5735972', 10000.00, 'thành công', 'MBBank', '2024-12-25 03:24:39', '2024-12-25 03:24:39');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('j7u0djnDMtFpD5lNrJbmNkZjdh687ucfNGVb9SE7', 26, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 'YTo3OntzOjY6Il90b2tlbiI7czo0MDoibkFLb3ZJMFlicWxiNkdGb1lOdlROSllhTzdGcE0zZFluRlVHYlhISyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzI6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9zbW0vY3JlYXRlIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czoxNzoicGFzc3dvcmRfaGFzaF93ZWIiO3M6NjA6IiQyeSQxMiQvZ1ZBcXdkYlo4eVVjQWpEZUY3MW9PODdpQzBUZkJEM0JNek9wVnlDL1R4QVkvMlYwVEJJZSI7czo4OiJmaWxhbWVudCI7YTowOnt9czozOiJ1cmwiO2E6MDp7fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjI2O30=', 1735097527);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `banner` varchar(255) DEFAULT NULL,
  `loading_image` varchar(255) DEFAULT NULL,
  `website_name` varchar(255) DEFAULT NULL,
  `website_description` text DEFAULT NULL,
  `contact` varchar(255) DEFAULT NULL,
  `notification` longtext DEFAULT NULL,
  `prefix` varchar(255) DEFAULT NULL,
  `min_deposit` decimal(10,2) NOT NULL DEFAULT 0.00,
  `account_number` varchar(255) DEFAULT NULL,
  `account_name` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `account_name_qr` varchar(255) DEFAULT NULL,
  `sepay_token` varchar(255) DEFAULT NULL,
  `sepay_account_number` varchar(255) DEFAULT NULL,
  `telegram_bot_token` varchar(255) DEFAULT NULL,
  `telegram_chat_id` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `settings`
--

INSERT INTO `settings` (`id`, `avatar`, `icon`, `logo`, `banner`, `loading_image`, `website_name`, `website_description`, `contact`, `notification`, `prefix`, `min_deposit`, `account_number`, `account_name`, `created_at`, `updated_at`, `account_name_qr`, `sepay_token`, `sepay_account_number`, `telegram_bot_token`, `telegram_chat_id`) VALUES
(1, '01JFW50BCKVA6NGQ7NEG1147KC.jpg', '01JFW50BCNGV8Z24T42C3ZSRRH.jpg', '01JFW6CXW3980HQ30XJF3TCTWA.webp', '01JFW50BCQ65HT9QK315GQWTKT.png', '01JFW6CXW7N938ZNMG8PR3VA7V.webp', 'GIANGTRAN.COM.VN', 'Chúng tôi cung cấp giải pháp tăng tương tác, mã nguồn chất lượng và dịch vụ thiết kế website chuyên nghiệp, giúp bạn phát triển doanh nghiệp trực tuyến hiệu quả. Khám phá ngay!', 'https://zalo.me/0966579217', '<p>&nbsp;<strong>Chào Mừng Đến Với GIANGTRAN.COM.VN</strong></p><p>Nếu Có Bạn Có Bất Cứ Vấn Đề Hoặc Góp Ý Đừng Ngần Ngại Liên Hệ Nhóm Hỗ Trợ, GIANGTRAN.COM.VN Sẽ Cải Thiện Để Mọi Người Sử Dụng Dịch Vụ Được Tốt Nhất.</p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Hỗ Trợ Nhanh Qua: <a href=\"https://zalo.me/1715225565559061022\"><strong>Zalo</strong></a></p>', 'HG ', 10000.00, '0966579217', 'TRẦN LÊ HOÀNG GIANG', '2024-12-23 23:34:47', '2024-12-25 02:58:54', 'TRAN LE HOANG GIANG', 'FHQMNTA45AVPJTZAUU2C61UZQ3OWBZMFDII1MESK8GXYVPB7NKS7JHYLN0PAXQEL', '0966579217', 'FHQMNTA45AVPJTZAUU2C61UZQ3OWBZMFDII1MESK8GXYVPB7NKS7JHYLN0PAXQEL', '6708960219');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `smm_categories`
--

CREATE TABLE `smm_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `smm_categories`
--

INSERT INTO `smm_categories` (`id`, `name`, `image`, `created_at`, `updated_at`) VALUES
(29, 'Facebook Video/Reel Views', 'https://i.ibb.co/SR8vyHL/0c211cf9-3924-45dd-8b84-ac0af730663c.png', '2024-12-07 08:13:14', '2024-12-18 06:14:46'),
(30, 'Facebook Followers', 'https://i.ibb.co/SR8vyHL/0c211cf9-3924-45dd-8b84-ac0af730663c.png', '2024-12-07 08:13:14', '2024-12-07 08:13:14'),
(31, 'Facebook Group Members', 'https://i.ibb.co/SR8vyHL/0c211cf9-3924-45dd-8b84-ac0af730663c.png', '2024-12-07 08:13:14', '2024-12-07 08:13:14'),
(32, 'Facebook Page Likes', 'https://i.ibb.co/SR8vyHL/0c211cf9-3924-45dd-8b84-ac0af730663c.png', '2024-12-07 08:13:14', '2024-12-07 08:13:14'),
(33, 'Facebook Post Likes', 'https://i.ibb.co/SR8vyHL/0c211cf9-3924-45dd-8b84-ac0af730663c.png', '2024-12-07 08:13:14', '2024-12-07 08:13:14'),
(34, 'TikTok Views', 'https://i.ibb.co/SmgbPgJ/0dc068cb-842d-499f-8b94-021e6e6bb325.png', '2024-12-07 08:13:14', '2024-12-18 06:12:52'),
(35, 'TikTok Likes', 'https://i.ibb.co/SmgbPgJ/0dc068cb-842d-499f-8b94-021e6e6bb325.png', '2024-12-07 08:13:14', '2024-12-07 08:13:14'),
(36, 'TikTok Followers', 'https://i.ibb.co/SmgbPgJ/0dc068cb-842d-499f-8b94-021e6e6bb325.png', '2024-12-07 08:13:14', '2024-12-07 08:13:14'),
(37, 'Youtube Likes', 'https://i.ibb.co/3zVqGVr/50e59fe8-07ae-4796-9b6a-67f8c145c425.png', '2024-12-07 08:13:14', '2024-12-07 08:13:14'),
(38, 'Youtube Views', 'https://i.ibb.co/3zVqGVr/50e59fe8-07ae-4796-9b6a-67f8c145c425.png', '2024-12-07 08:13:14', '2024-12-07 08:13:14'),
(39, 'Youtube Subscribers', 'https://i.ibb.co/3zVqGVr/50e59fe8-07ae-4796-9b6a-67f8c145c425.png', '2024-12-07 08:13:14', '2024-12-07 08:13:14'),
(40, 'Instagram Likes', 'https://i.ibb.co/WnBYMGp/70a41ab8-2495-4176-a9b2-d338f298d633.png', '2024-12-07 08:13:14', '2024-12-07 08:13:14'),
(41, 'Instagram Followers', 'https://i.ibb.co/WnBYMGp/70a41ab8-2495-4176-a9b2-d338f298d633.png', '2024-12-07 08:13:14', '2024-12-07 08:13:14'),
(42, 'Instagram Saves', 'https://i.ibb.co/WnBYMGp/70a41ab8-2495-4176-a9b2-d338f298d633.png', '2024-12-07 08:13:14', '2024-12-07 08:13:14'),
(43, 'Instagram Shares', 'https://i.ibb.co/WnBYMGp/70a41ab8-2495-4176-a9b2-d338f298d633.png', '2024-12-07 08:13:14', '2024-12-07 08:13:14'),
(44, 'Telegram Members', 'https://i.ibb.co/Nsch5rr/0a007321-1447-42d3-8bd9-13e4c0bd71b0.png', '2024-12-07 08:13:14', '2024-12-07 08:13:14'),
(45, 'Telegram Post Views', 'https://i.ibb.co/Nsch5rr/0a007321-1447-42d3-8bd9-13e4c0bd71b0.png', '2024-12-07 08:13:14', '2024-12-07 08:13:14'),
(46, 'Telegram Post Reactions', 'https://i.ibb.co/Nsch5rr/0a007321-1447-42d3-8bd9-13e4c0bd71b0.png', '2024-12-07 08:13:14', '2024-12-07 08:13:14');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `smm_orders`
--

CREATE TABLE `smm_orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `smm_service_id` bigint(20) UNSIGNED NOT NULL,
  `quantity` int(11) NOT NULL,
  `total_price` decimal(15,2) NOT NULL,
  `status` varchar(255) NOT NULL,
  `unit_price` decimal(15,2) NOT NULL,
  `start_count` int(255) NOT NULL,
  `link` varchar(255) NOT NULL,
  `remains` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `smm_orders`
--

INSERT INTO `smm_orders` (`id`, `user_id`, `smm_service_id`, `quantity`, `total_price`, `status`, `unit_price`, `start_count`, `link`, `remains`, `created_at`, `updated_at`) VALUES
(77, 20, 191, 500, 21325.00, 'pending', 42.65, 0, 'https://giangtran.com.vn/', 500, '2024-12-24 02:08:37', '2024-12-24 02:08:37'),
(78, 20, 191, 500, 21325.00, 'pending', 42.65, 0, 'https://giangtran.com.vn/', 500, '2024-12-24 02:09:03', '2024-12-24 02:09:03'),
(79, 20, 179, 500, 18280.00, 'pending', 36.56, 0, 'https://giangtran.com.vn/', 500, '2024-12-24 02:11:24', '2024-12-24 02:11:24'),
(80, 20, 191, 500, 21325.00, 'pending', 42.65, 0, 'https://giangtran.com.vn/', 500, '2024-12-24 02:14:49', '2024-12-24 02:14:49'),
(81, 20, 191, 500, 21325.00, 'pending', 42.65, 0, 'https://giangtran.com.vn/', 500, '2024-12-24 02:14:59', '2024-12-24 02:14:59'),
(82, 20, 199, 500, 18280.00, 'pending', 36.56, 0, 'https://giangtran.com.vn/', 500, '2024-12-24 02:16:52', '2024-12-24 02:16:52'),
(83, 20, 186, 500, 20565.00, 'pending', 41.13, 0, 'https://giangtran.com.vn/', 500, '2024-12-24 02:21:48', '2024-12-24 02:21:48'),
(84, 20, 179, 500, 18280.00, 'pending', 36.56, 0, 'https://giangtran.com.vn/', 500, '2024-12-24 02:23:14', '2024-12-24 02:23:14'),
(85, 20, 186, 5000, 205650.00, 'pending', 41.13, 0, 'https://giangtran.com.vn/', 5000, '2024-12-24 02:24:35', '2024-12-24 02:24:35'),
(86, 20, 186, 5000, 205650.00, 'pending', 41.13, 0, 'https://giangtran.com.vn/', 5000, '2024-12-24 02:24:48', '2024-12-24 02:24:48'),
(87, 20, 186, 500, 20565.00, 'pending', 41.13, 0, 'https://giangtran.com.vn/', 500, '2024-12-24 03:15:48', '2024-12-24 03:15:48'),
(88, 20, 235, 100000, 1000.00, 'pending', 0.01, 0, 'https://giangtran.com.vn/', 100000, '2024-12-24 03:17:38', '2024-12-24 03:17:38');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `smm_services`
--

CREATE TABLE `smm_services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `smmcategory_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `time` varchar(255) DEFAULT NULL,
  `min` int(255) DEFAULT NULL,
  `max` int(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `old_price` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `smm_services`
--

INSERT INTO `smm_services` (`id`, `smmcategory_id`, `name`, `price`, `is_active`, `time`, `min`, `max`, `created_at`, `updated_at`, `old_price`) VALUES
(155, 29, 'ˢˢ Facebook Reel & Video Views | Instant | Statistics Support | Views 3 Seconds+ ♻️⛔🔥', 2.13, 1, '20 phút', 500, 1000000000, '2024-12-12 14:19:26', '2024-12-12 14:19:26', 1.78),
(156, 29, 'ˢˢ Facebook Reel & Video Views | Instant | Statistics Support | Views 10 Seconds+ ♻️⛔🔥', 4.57, 1, 'Chưa đủ dữ liệu', 500, 1000000000, '2024-12-12 14:19:26', '2024-12-12 14:19:26', 3.81),
(157, 29, 'ˢˢ Facebook Reel & Video Views | Instant | Statistics Support | Views 15 Seconds+ ♻️⛔🔥', 5.18, 1, 'Chưa đủ dữ liệu', 500, 1000000000, '2024-12-12 14:19:26', '2024-12-12 14:19:26', 4.32),
(158, 29, 'ˢˢ Facebook Reel & Video Views | Instant | Statistics Support | Views 30 Seconds+ ♻️⛔🔥', 5.79, 1, 'Chưa đủ dữ liệu', 500, 1000000000, '2024-12-12 14:19:26', '2024-12-12 14:19:26', 4.82),
(159, 29, 'ˢˢ Facebook Reel & Video Views | Instant | Statistics Support | Views 60 Seconds+ ♻️⛔🔥', 6.40, 1, 'Chưa đủ dữ liệu', 500, 1000000000, '2024-12-12 14:19:26', '2024-12-12 14:19:26', 5.33),
(160, 29, 'ˢˢ Facebook Reel & Video Views | Instant | Statistics Support | Views 3 Minutes+ ♻️⛔🔥', 12.49, 1, 'Chưa đủ dữ liệu', 500, 1000000000, '2024-12-12 14:19:26', '2024-12-12 14:19:26', 10.41),
(161, 29, 'ˢˢ Facebook Reel & Video Views | Instant | Statistics Support | Views 6 Minutes+ ♻️⛔🔥', 17.06, 1, 'Chưa đủ dữ liệu', 500, 1000000000, '2024-12-12 14:19:26', '2024-12-12 14:19:26', 14.22),
(162, 29, 'ˢˢ Facebook Reel & Video Views | Instant | Statistics Support | Views 10 Minutes+ ♻️⛔🔥', 25.29, 1, 'Chưa đủ dữ liệu', 500, 1000000000, '2024-12-12 14:19:26', '2024-12-12 14:19:26', 21.07),
(163, 29, 'ᵐˢ Facebook Reel & Video Views | Instant | Statistics Support | Views 3 Seconds+ ♻️⛔🔥', 10.66, 1, '13 phút', 500, 1000000000, '2024-12-12 14:19:26', '2024-12-12 14:19:26', 8.89),
(164, 29, 'ᵐˢ Facebook Reel & Video Views | Instant | Statistics Support | Views 10 Seconds+ ♻️⛔🔥', 11.27, 1, 'Chưa đủ dữ liệu', 500, 1000000000, '2024-12-12 14:19:26', '2024-12-12 14:19:26', 9.39),
(165, 29, 'ᵐˢ Facebook Reel & Video Views | Instant | Statistics Support | Views 15 Seconds+ ♻️⛔🔥', 11.88, 1, 'Chưa đủ dữ liệu', 500, 1000000000, '2024-12-12 14:19:26', '2024-12-12 14:19:26', 9.90),
(166, 29, 'ᵐˢ Facebook Reel & Video Views | Instant | Statistics Support | Views 30 Seconds+ ♻️⛔🔥', 13.71, 1, 'Chưa đủ dữ liệu', 500, 1000000000, '2024-12-12 14:19:26', '2024-12-12 14:19:26', 11.42),
(167, 29, 'ᵐˢ Facebook Reel & Video Views | Instant | Statistics Support | Views 60 Seconds+ ♻️⛔🔥', 15.84, 1, 'Chưa đủ dữ liệu', 500, 1000000000, '2024-12-12 14:19:26', '2024-12-12 14:19:26', 13.20),
(168, 29, 'ᵐˢ Facebook Reel & Video Views | Instant | Statistics Support | Views 3 Minutes+ ♻️⛔🔥', 33.51, 1, 'Chưa đủ dữ liệu', 500, 1000000000, '2024-12-12 14:19:26', '2024-12-12 14:19:26', 27.93),
(169, 29, 'ᵐˢ Facebook Reel & Video Views | Instant | Statistics Support | Views 6 Minutes+ ♻️⛔🔥', 42.65, 1, 'Chưa đủ dữ liệu', 500, 1000000000, '2024-12-12 14:19:26', '2024-12-12 14:19:26', 35.54),
(170, 29, 'ᵐˢ Facebook Reel & Video Views | Instant | Statistics Support | Views 10 Minutes+ ♻️⛔🔥', 63.98, 1, 'Chưa đủ dữ liệu', 500, 1000000000, '2024-12-12 14:19:26', '2024-12-12 14:19:26', 53.31),
(171, 29, 'ᶠˢ Facebook Reel & Video Views | Instant | Statistics Support | Views 3 Seconds+ ♻️⛔🔥', 12.80, 1, 'Chưa đủ dữ liệu', 500, 1000000000, '2024-12-12 14:19:26', '2024-12-12 14:19:26', 10.66),
(172, 29, 'ᶠˢ Facebook Reel & Video Views | Instant | Statistics Support | Views 10 Seconds+ ♻️⛔🔥', 13.71, 1, 'Chưa đủ dữ liệu', 500, 1000000000, '2024-12-12 14:19:26', '2024-12-12 14:19:26', 11.42),
(173, 29, 'ᶠˢ Facebook Reel & Video Views | Instant | Statistics Support | Views 15 Seconds+ ♻️⛔🔥', 14.62, 1, 'Chưa đủ dữ liệu', 500, 1000000000, '2024-12-12 14:19:26', '2024-12-12 14:19:26', 12.19),
(174, 29, 'ᶠˢ Facebook Reel & Video Views | Instant | Statistics Support | Views 30 Seconds+ ♻️⛔🔥', 17.06, 1, 'Chưa đủ dữ liệu', 500, 1000000000, '2024-12-12 14:19:26', '2024-12-12 14:19:26', 14.22),
(175, 29, 'ᶠˢ Facebook Reel & Video Views | Instant | Statistics Support | Views 60 Seconds+ ♻️⛔🔥', 19.80, 1, 'Chưa đủ dữ liệu', 500, 1000000000, '2024-12-12 14:19:26', '2024-12-12 14:19:26', 16.50),
(176, 29, 'ᶠˢ Facebook Reel & Video Views | Instant | Statistics Support | Views 3 Minutes+ ♻️⛔🔥', 38.08, 1, 'Chưa đủ dữ liệu', 500, 1000000000, '2024-12-12 14:19:26', '2024-12-12 14:19:26', 31.73),
(177, 29, 'ᶠˢ Facebook Reel & Video Views | Instant | Statistics Support | Views 6 Minutes+ ♻️⛔🔥', 50.88, 1, 'Chưa đủ dữ liệu', 500, 1000000000, '2024-12-12 14:19:26', '2024-12-12 14:19:26', 42.40),
(178, 29, 'ᶠˢ Facebook Reel & Video Views | Instant | Statistics Support | Views 10 Minutes+ ♻️⛔🔥', 79.21, 1, 'Chưa đủ dữ liệu', 500, 1000000000, '2024-12-12 14:19:26', '2024-12-12 14:19:26', 66.01),
(179, 30, 'Facebook Page/Profile Followers | Instant | 20K Per Day | 30 Days Refill ⚡♻️⛔', 36.56, 1, '35 phút', 500, 50000, '2024-12-12 14:19:26', '2024-12-12 14:19:26', 30.46),
(180, 30, 'Facebook Profile/Page Followers | Instant | 500K Per Day | 7 Days Refill ⚡♻️⛔', 54.84, 1, 'Chưa đủ dữ liệu', 500, 50000, '2024-12-12 14:19:26', '2024-12-12 14:19:26', 45.70),
(181, 30, 'Facebook Followers | Instant | 100% Real Data & Old Data | 2K Per Day ⚡⛔', 25.89, 1, '22 giờ 34 phút', 500, 20000, '2024-12-12 14:19:26', '2024-12-12 14:19:26', 21.58),
(182, 30, 'Facebook Followers | Instant | 100% Real Data & Old Data | 5K Per Day ⚡⛔', 54.84, 1, '1 giờ 19 phút', 500, 50000, '2024-12-12 14:19:26', '2024-12-12 14:19:26', 45.70),
(183, 30, 'Facebook Followers | Instant | 100% Real Data & Old Data | 8K Per Day ⚡⛔', 67.02, 1, '1 giờ 19 phút', 500, 50000, '2024-12-12 14:19:26', '2024-12-12 14:19:26', 55.85),
(184, 30, 'Facebook Followers | Instant | 100% Real Data & Old Data | 15K Per Day ⚡⛔', 97.49, 1, '1 giờ 19 phút', 500, 50000, '2024-12-12 14:19:26', '2024-12-12 14:19:26', 81.24),
(185, 30, 'Facebook Followers | Instant | 100% Real Data & Old Data | 30K Per Day ⚡⛔', 121.86, 1, '1 giờ 19 phút', 500, 50000, '2024-12-12 14:19:26', '2024-12-12 14:19:26', 101.55),
(186, 31, 'Facebook Group Members | Instant | 200K Per Day | 7 Days Refill ⚡♻️⛔', 41.13, 1, '1 giờ 4 phút', 500, 50000, '2024-12-12 14:19:26', '2024-12-12 14:19:26', 34.27),
(187, 31, 'Facebook Group Members | Instant | 100% Real & Old Data | 2K Per Day ⚡⛔', 15.84, 1, '9 giờ 21 phút', 500, 20000, '2024-12-12 14:19:26', '2024-12-12 14:19:26', 13.20),
(188, 31, 'Facebook Group Members | Instant | 100% Real & Old Data | 5K Per Day ⚡⛔', 42.65, 1, 'Chưa đủ dữ liệu', 500, 30000, '2024-12-12 14:19:26', '2024-12-12 14:19:26', 35.54),
(189, 31, 'Facebook Group Members | Instant | 100% Real & Old Data | 10K Per Day ⚡⛔', 67.02, 1, 'Chưa đủ dữ liệu', 500, 50000, '2024-12-12 14:19:26', '2024-12-12 14:19:26', 55.85),
(190, 31, 'Facebook Group Members | Instant | 100% Real & Old Data | 20K Per Day ⚡⛔', 121.86, 1, 'Chưa đủ dữ liệu', 500, 50000, '2024-12-12 14:19:26', '2024-12-12 14:19:26', 101.55),
(191, 32, 'Facebook Page Likes | Instant | High Quality | 7 Days Refill ⚡♻️⛔', 42.65, 1, 'Chưa đủ dữ liệu', 500, 50000, '2024-12-12 14:19:26', '2024-12-12 14:19:26', 35.54),
(192, 32, 'Facebook Page Likes | Instant | Real Account Slow Delivery ⛔🔥', 60.93, 1, '68 giờ 42 phút', 500, 10000, '2024-12-12 14:19:26', '2024-12-12 14:19:26', 50.77),
(193, 32, 'Facebook Page Likes | Instant | 10K Per Day | 30 Day Refill ⚡♻️⛔', 38.08, 1, 'Chưa đủ dữ liệu', 500, 50000, '2024-12-12 14:19:26', '2024-12-12 14:19:26', 31.73),
(194, 32, 'Facebook Page Likes | Instant | 500K Per Day | 7 Days Refill ⚡♻️⛔', 45.70, 1, '24 giờ 45 phút', 500, 50000, '2024-12-12 14:19:26', '2024-12-12 14:19:26', 38.08),
(195, 32, 'Facebook Page Likes | Instant | 100% Real & Old Data | 2K Per Day ⚡⛔', 33.51, 1, '105 giờ 13 phút', 500, 50000, '2024-12-12 14:19:26', '2024-12-12 14:19:26', 27.93),
(196, 32, 'Facebook Page Likes | Instant | 100% Real & Old Data | 5K Per Day ⚡⛔', 54.84, 1, '6 giờ 36 phút', 500, 50000, '2024-12-12 14:19:26', '2024-12-12 14:19:26', 45.70),
(197, 32, 'Facebook Page Likes | Instant | 100% Real & Old Data | 10K Per Day ⚡⛔', 67.02, 1, '15 giờ 26 phút', 500, 50000, '2024-12-12 14:19:26', '2024-12-12 14:19:26', 55.85),
(198, 32, 'Facebook Page Likes | Instant | 100% Real & Old Data | 20K Per Day ⚡⛔', 121.86, 1, '15 giờ 26 phút', 500, 50000, '2024-12-12 14:19:26', '2024-12-12 14:19:26', 101.55),
(199, 33, 'Facebook Post Likes | Instant | Real Account Slow Delivery ⛔🔥', 36.56, 1, '65 giờ 51 phút', 500, 10000, '2024-12-12 14:19:26', '2024-12-12 14:19:26', 30.46),
(200, 33, 'Facebook Post Likes | Instant | Real Account Medium Delivery ⛔🔥', 54.84, 1, '65 giờ 51 phút', 500, 10000, '2024-12-12 14:19:26', '2024-12-12 14:19:26', 45.70),
(201, 33, 'Facebook Post Reactions | Instant | Real Account Slow Delivery 👍⛔🔥', 36.56, 1, '65 giờ 51 phút', 500, 10000, '2024-12-12 14:19:26', '2024-12-12 14:19:26', 30.46),
(202, 33, 'Facebook Post Reactions | Instant | Real Account Slow Delivery ❤️⛔🔥', 36.56, 1, '33 giờ 49 phút', 500, 10000, '2024-12-12 14:19:26', '2024-12-12 14:19:26', 30.46),
(203, 33, 'Facebook Post Reactions | Instant | Real Account Slow Delivery 🥰⛔🔥', 36.56, 1, '17 giờ 20 phút', 500, 10000, '2024-12-12 14:19:26', '2024-12-12 14:19:26', 30.46),
(204, 33, 'Facebook Post Reactions | Instant | Real Account Slow Delivery 😆⛔🔥', 36.56, 1, 'Chưa đủ dữ liệu', 500, 10000, '2024-12-12 14:19:26', '2024-12-12 14:19:26', 30.46),
(205, 33, 'Facebook Post Reactions | Instant | Real Account Slow Delivery 😢⛔🔥', 36.56, 1, 'Chưa đủ dữ liệu', 500, 10000, '2024-12-12 14:19:26', '2024-12-12 14:19:26', 30.46),
(206, 33, 'Facebook Post Reactions | Instant | Real Account Slow Delivery 😲⛔🔥', 36.56, 1, 'Chưa đủ dữ liệu', 500, 10000, '2024-12-12 14:19:26', '2024-12-12 14:19:26', 30.46),
(207, 33, 'Facebook Post Reactions | Instant | Real Account Slow Delivery 😡⛔🔥', 36.56, 1, 'Chưa đủ dữ liệu', 500, 10000, '2024-12-12 14:19:26', '2024-12-12 14:19:26', 30.46),
(208, 33, 'Facebook Post Reactions | Instant | 100% Bot Data & Old Data | Like 👍', 20.41, 1, '118 giờ 31 phút', 500, 50000, '2024-12-12 14:19:26', '2024-12-12 14:19:26', 17.01),
(209, 33, 'Facebook Post Reactions | Instant | 100% Bot Data & Old Data | Love ❤️', 20.41, 1, '158 giờ 22 phút', 500, 50000, '2024-12-12 14:19:26', '2024-12-12 14:19:26', 17.01),
(210, 33, 'Facebook Post Reactions | Instant | 100% Bot Data & Old Data | Care 🥰', 20.41, 1, '145 giờ 26 phút', 500, 50000, '2024-12-12 14:19:26', '2024-12-12 14:19:26', 17.01),
(211, 33, 'Facebook Post Reactions | Instant | 100% Bot Data & Old Data | Haha 😆', 20.41, 1, '103 giờ 33 phút', 500, 50000, '2024-12-12 14:19:26', '2024-12-12 14:19:26', 17.01),
(212, 33, 'Facebook Post Reactions | Instant | 100% Bot Data & Old Data | Sad 😢', 20.41, 1, '81 giờ 58 phút', 500, 50000, '2024-12-12 14:19:26', '2024-12-12 14:19:26', 17.01),
(213, 33, 'Facebook Post Reactions | Instant | 100% Bot Data & Old Data | Wow 😲', 20.41, 1, '94 giờ 25 phút', 500, 50000, '2024-12-12 14:19:26', '2024-12-12 14:19:26', 17.01),
(214, 33, 'Facebook Post Reactions | Instant | 100% Bot Data & Old Data | Angry 😡', 20.41, 1, '107 giờ 20 phút', 500, 50000, '2024-12-12 14:19:26', '2024-12-12 14:19:26', 17.01),
(215, 33, 'Facebook Post Reactions | Instant | 100% Bot Data & Old Data | 👍❤️', 20.41, 1, '106 giờ 26 phút', 500, 50000, '2024-12-12 14:19:26', '2024-12-12 14:19:26', 17.01),
(216, 33, 'Facebook Post Reactions | Instant | 100% Bot Data & Old Data | 👍❤️🥰', 20.41, 1, '147 giờ 42 phút', 500, 50000, '2024-12-12 14:19:26', '2024-12-12 14:19:26', 17.01),
(217, 33, 'Facebook Post Reactions | Instant | 100% Bot Data & Old Data | 👍❤️🥰😆', 20.41, 1, '38 giờ 13 phút', 500, 50000, '2024-12-12 14:19:26', '2024-12-12 14:19:26', 17.01),
(218, 33, 'Facebook Post Reactions | Instant | 100% Bot Data & Old Data | 👍❤️🥰😆😲', 20.41, 1, '124 giờ 21 phút', 500, 50000, '2024-12-12 14:19:26', '2024-12-12 14:19:26', 17.01),
(219, 33, 'Facebook Post Reactions | Instant | 100% Bot Data & Old Data | 👍❤️🥰😆😢😲', 20.41, 1, '66 giờ 51 phút', 500, 50000, '2024-12-12 14:19:26', '2024-12-12 14:19:26', 17.01),
(220, 33, 'Facebook Post Reactions | Instant | 100% Bot Data & Old Data | 👍❤️🥰😆😢😲😡', 20.41, 1, '196 giờ 15 phút', 500, 50000, '2024-12-12 14:19:26', '2024-12-12 14:19:26', 17.01),
(221, 33, 'Facebook Post Reactions | Instant | 100% Real Data & Old Data | Like 👍', 13.71, 1, '20 giờ 33 phút', 500, 100000, '2024-12-12 14:19:26', '2024-12-12 14:19:26', 11.42),
(222, 33, 'Facebook Post Reactions | Instant | 100% Real Data & Old Data | Love ❤️', 13.71, 1, '27 giờ 33 phút', 500, 100000, '2024-12-12 14:19:26', '2024-12-12 14:19:26', 11.42),
(223, 33, 'Facebook Post Reactions | Instant | 100% Real Data & Old Data | Care 🥰', 13.71, 1, '65 giờ 37 phút', 500, 100000, '2024-12-12 14:19:26', '2024-12-12 14:19:26', 11.42),
(224, 33, 'Facebook Post Reactions | Instant | 100% Real Data & Old Data | Haha 😆', 13.71, 1, '36 giờ 52 phút', 500, 100000, '2024-12-12 14:19:26', '2024-12-12 14:19:26', 11.42),
(225, 33, 'Facebook Post Reactions | Instant | 100% Real Data & Old Data | Sad 😢', 13.71, 1, '42 giờ 26 phút', 500, 100000, '2024-12-12 14:19:26', '2024-12-12 14:19:26', 11.42),
(226, 33, 'Facebook Post Reactions | Instant | 100% Real Data & Old Data | Wow 😲', 13.71, 1, '26 giờ 58 phút', 500, 100000, '2024-12-12 14:19:26', '2024-12-12 14:19:26', 11.42),
(227, 33, 'Facebook Post Reactions | Instant | 100% Real Data & Old Data | Angry 😡', 13.71, 1, '27 giờ 5 phút', 500, 100000, '2024-12-12 14:19:26', '2024-12-12 14:19:26', 11.42),
(228, 33, 'Facebook Post Reactions | Instant | 100% Real Data & Old Data | Like 👍', 25.89, 1, '7 giờ 1 phút', 500, 100000, '2024-12-12 14:19:26', '2024-12-12 14:19:26', 21.58),
(229, 33, 'Facebook Post Reactions | Instant | 100% Real Data & Old Data | Love ❤️', 25.89, 1, '17 giờ 17 phút', 500, 100000, '2024-12-12 14:19:26', '2024-12-12 14:19:26', 21.58),
(230, 33, 'Facebook Post Reactions | Instant | 100% Real Data & Old Data | Care 🥰', 25.89, 1, '14 giờ 34 phút', 500, 100000, '2024-12-12 14:19:26', '2024-12-12 14:19:26', 21.58),
(231, 33, 'Facebook Post Reactions | Instant | 100% Real Data & Old Data | Haha 😆', 25.89, 1, '34 giờ 20 phút', 500, 100000, '2024-12-12 14:19:26', '2024-12-12 14:19:26', 21.58),
(232, 33, 'Facebook Post Reactions | Instant | 100% Real Data & Old Data | Sad 😢', 25.89, 1, '37 giờ 49 phút', 500, 100000, '2024-12-12 14:19:26', '2024-12-12 14:19:26', 21.58),
(233, 33, 'Facebook Post Reactions | Instant | 100% Real Data & Old Data | Wow 😲', 25.89, 1, '15 giờ 40 phút', 500, 100000, '2024-12-12 14:19:26', '2024-12-12 14:19:26', 21.58),
(234, 33, 'Facebook Post Reactions | Instant | 100% Real Data & Old Data | Angry 😡', 25.89, 1, '11 giờ 25 phút', 500, 100000, '2024-12-12 14:19:26', '2024-12-12 14:19:26', 21.58),
(235, 34, 'TikTok Views | Instant | Ultra Fast & Stable | 10M Per Day ⚡️', 0.01, 1, '1 phút', 500, 10000000, '2024-12-12 14:19:26', '2024-12-12 14:19:26', 0.01),
(236, 34, 'TikTok Views | Instant | Ultra Fast & Stable | 10M Per Day ⚡️', 0.01, 1, '9 phút', 500, 10000000, '2024-12-12 14:19:26', '2024-12-12 14:19:26', 0.01),
(237, 34, 'TikTok Views | Instant | Ultra Fast & Stable | 20M Per Day ⚡️', 0.02, 1, '2 phút', 500, 10000000, '2024-12-12 14:19:26', '2024-12-12 14:19:26', 0.02),
(238, 34, 'TikTok Views | Instant | Ultra Fast & Stable | 50M Per Day ⚡️', 0.02, 1, '3 phút', 500, 10000000, '2024-12-12 14:19:26', '2024-12-12 14:19:26', 0.02),
(239, 34, 'TikTok Views | Instant | VIP Ultra Fast & Stable | 500M Per Day ⚡️', 0.04, 1, '34 phút', 500, 10000000, '2024-12-12 14:19:26', '2024-12-12 14:19:26', 0.03),
(240, 35, 'TikTok Likes | Instant | Ultra Fast & High Quality | 30K Per Day ⚡️', 2.44, 1, 'Chưa đủ dữ liệu', 500, 500000, '2024-12-12 14:19:26', '2024-12-12 14:19:26', 2.03),
(241, 35, 'TikTok Likes | Instant | 𝗦𝘁𝗮𝗯𝗹𝗲 & 𝗘𝘅𝗰𝗲𝗹𝗹𝗲𝗻𝘁 𝗤𝘂𝗮𝗹𝗶𝘁𝘆 | 10K Per Day | Refill 7 Days ⚡️♻️', 3.05, 1, '1 giờ 19 phút', 500, 500000, '2024-12-12 14:19:26', '2024-12-12 14:19:26', 2.54),
(242, 35, 'TikTok Likes | Instant | 𝗦𝘁𝗮𝗯𝗹𝗲 & 𝗘𝘅𝗰𝗲𝗹𝗹𝗲𝗻𝘁 𝗤𝘂𝗮𝗹𝗶𝘁𝘆 | 10K Per Day | Refill 30 Days ⚡️♻️', 4.42, 1, '1 giờ 26 phút', 500, 500000, '2024-12-12 14:19:26', '2024-12-12 14:19:26', 3.68),
(243, 35, 'TikTok Likes | Instant | Brazil 🇧🇷 | 50K Per Day | Refill 3 Days ⚡️♻️', 3.96, 1, '8 giờ 6 phút', 500, 1000000, '2024-12-12 14:19:26', '2024-12-12 14:19:26', 3.30),
(244, 35, 'TikTok Likes | Instant | Brazil 🇧🇷 | 50K Per Day | Refill 7 Days ⚡️♻️', 4.87, 1, 'Chưa đủ dữ liệu', 500, 1000000, '2024-12-12 14:19:26', '2024-12-12 14:19:26', 4.06),
(245, 35, 'TikTok Likes | Instant | Brazil 🇧🇷 | 50K Per Day | Refill 15 Days ⚡️♻️', 6.09, 1, 'Chưa đủ dữ liệu', 500, 1000000, '2024-12-12 14:19:26', '2024-12-12 14:19:26', 5.08),
(246, 35, 'TikTok Likes | Instant | Brazil 🇧🇷 | 50K Per Day | Refill 30 Days ⚡️♻️', 7.62, 1, 'Chưa đủ dữ liệu', 500, 1000000, '2024-12-12 14:19:26', '2024-12-12 14:19:26', 6.35),
(247, 35, '🇻🇳 TikTok Likes | Instant | 10K Per Hour | Real & Bot Data ⚡⛔', 9.75, 1, '3 giờ 17 phút', 500, 10000, '2024-12-12 14:19:26', '2024-12-12 14:19:26', 8.12),
(248, 35, '🇻🇳 TikTok Likes | Instant | 20K Per Hour | Real & Bot Data ⚡⛔', 24.37, 1, 'Chưa đủ dữ liệu', 500, 50000, '2024-12-12 14:19:26', '2024-12-12 14:19:26', 20.31),
(249, 36, 'TikTok Followers | Instant | 𝗨𝗹𝘁𝗿𝗮 𝗙𝗮𝘀𝘁 & 𝗦𝘁𝗮𝗯𝗹𝗲 | 50K Per Day | No Refill ⚡⛔', 35.03, 1, 'Chưa đủ dữ liệu', 500, 1000000, '2024-12-12 14:19:26', '2024-12-12 14:19:26', 29.20),
(250, 36, 'TikTok Followers | Instant | 𝗨𝗹𝘁𝗿𝗮 𝗙𝗮𝘀𝘁 & 𝗦𝘁𝗮𝗯𝗹𝗲 | 100K Per Day | No Refill ⚡⛔', 38.08, 1, '6 giờ 50 phút', 500, 1000000, '2024-12-12 14:19:26', '2024-12-12 14:19:26', 31.73),
(251, 36, 'TikTok Followers | Instant | 𝗩𝗜𝗣 𝗨𝗹𝘁𝗿𝗮 𝗙𝗮𝘀𝘁 & 𝗦𝘁𝗮𝗯𝗹𝗲 | 300K Per Day | 7 Days Refill ♻️⚡⛔', 40.82, 1, '31 phút', 500, 1000000, '2024-12-12 14:19:26', '2024-12-12 14:19:26', 34.02),
(252, 36, 'TikTok Followers | Instant | 𝗩𝗜𝗣 𝗨𝗹𝘁𝗿𝗮 𝗙𝗮𝘀𝘁 & 𝗦𝘁𝗮𝗯𝗹𝗲 | 300K Per Day | 15 Days Refill ♻️⚡⛔', 41.43, 1, 'Chưa đủ dữ liệu', 500, 1000000, '2024-12-12 14:19:26', '2024-12-12 14:19:26', 34.53),
(253, 36, 'TikTok Followers | Instant | 𝗩𝗜𝗣 𝗨𝗹𝘁𝗿𝗮 𝗙𝗮𝘀𝘁 & 𝗦𝘁𝗮𝗯𝗹𝗲 | 300K Per Day | 30 Days Refill ♻️⚡⛔', 42.35, 1, 'Chưa đủ dữ liệu', 500, 100000000, '2024-12-12 14:19:26', '2024-12-12 14:19:26', 35.29),
(254, 36, 'TikTok Followers | Instant | Brazil 🇧🇷 | 20K Per Day | Refill 3 Days ⚡️♻️', 30.46, 1, '72 giờ 34 phút', 500, 1000000, '2024-12-12 14:19:26', '2024-12-12 14:19:26', 25.39),
(255, 36, 'TikTok Followers | Instant | Brazil 🇧🇷 | 20K Per Day | Refill 7 Days ⚡️♻️', 33.51, 1, 'Chưa đủ dữ liệu', 500, 1000000, '2024-12-12 14:19:26', '2024-12-12 14:19:26', 27.93),
(256, 36, 'TikTok Followers | Instant | Brazil 🇧🇷 | 20K Per Day | Refill 15 Days ⚡️♻️', 39.60, 1, 'Chưa đủ dữ liệu', 500, 1000000, '2024-12-12 14:19:26', '2024-12-12 14:19:26', 33.00),
(257, 36, 'TikTok Followers | Instant | Brazil 🇧🇷 | 20K Per Day | Refill 30 Days ⚡️♻️', 45.70, 1, 'Chưa đủ dữ liệu', 500, 1000000, '2024-12-12 14:19:26', '2024-12-12 14:19:26', 38.08),
(258, 36, '🇻🇳 TikTok Followers | Instant | 5000 Per Day | Real & Bot Data ⚡⛔', 25.89, 1, '272 giờ 38 phút', 500, 10000, '2024-12-12 14:19:26', '2024-12-12 14:19:26', 21.58),
(259, 36, '🇻🇳 TikTok Followers | Instant | 10000 Per Day | Real & Bot Data ⚡⛔', 39.60, 1, '70 giờ 3 phút', 500, 50000, '2024-12-12 14:19:26', '2024-12-12 14:19:26', 33.00),
(260, 37, 'Youtube Bot Likes | Instant | 100K Per Day ⚡🔥', 3.05, 1, '7 phút', 500, 1000000, '2024-12-12 14:19:26', '2024-12-12 14:19:26', 2.54),
(261, 37, 'Youtube Likes | Instant | 100K Per Day | 100% Non Drop | R30 ♻️⚡🔥', 30.46, 1, 'Chưa đủ dữ liệu', 500, 100000, '2024-12-12 14:19:26', '2024-12-12 14:19:26', 25.39),
(262, 37, 'Youtube Likes | Instant | 100K Per Day | R30 ♻️⚡🔥', 6.09, 1, 'Chưa đủ dữ liệu', 500, 25000, '2024-12-12 14:19:26', '2024-12-12 14:19:26', 5.08),
(263, 37, 'Youtube Likes | Instant | 100K Per Day | R60 ♻️⚡🔥', 9.14, 1, 'Chưa đủ dữ liệu', 500, 25000, '2024-12-12 14:19:26', '2024-12-12 14:19:26', 7.62),
(264, 37, 'Youtube Likes | Instant | 100K Per Day | R90 ♻️⚡🔥', 12.19, 1, 'Chưa đủ dữ liệu', 500, 25000, '2024-12-12 14:19:26', '2024-12-12 14:19:26', 10.15),
(265, 37, 'Youtube Likes | Instant | 100K Per Day | R365 ♻️⚡🔥', 18.27, 1, 'Chưa đủ dữ liệu', 500, 25000, '2024-12-12 14:19:26', '2024-12-12 14:19:26', 15.22),
(266, 37, 'Youtube Likes | Instant | 100K Per Day | 100% Non Drop | AR365 ♻️⚡🔥', 26.08, 1, 'Chưa đủ dữ liệu', 500, 200000, '2024-12-12 14:19:26', '2024-12-12 14:19:26', 21.73),
(267, 38, 'Youtube Views | Instant | 10K Per Day | Non Drop | Lifetime Guaranteed ♻️', 25.89, 1, '315 giờ 26 phút', 500, 10000000, '2024-12-12 14:19:26', '2024-12-12 14:19:26', 21.58),
(268, 38, 'Youtube Views | Instant | 100K Per Day | Non Drop | Lifetime Guaranteed ♻️', 39.60, 1, 'Chưa đủ dữ liệu', 500, 10000000, '2024-12-12 14:19:26', '2024-12-12 14:19:26', 33.00),
(269, 38, 'Youtube Views | Instant | 500K Per Day | Non Drop | Lifetime Guaranteed ♻️', 45.70, 1, 'Chưa đủ dữ liệu', 500, 10000000, '2024-12-12 14:19:26', '2024-12-12 14:19:26', 38.08),
(270, 38, 'YouTube Views | Native ADS | Real Users | 500K Per Day | 𝗠𝗶𝗻 𝟯𝗞 | Lifetime Guaranteed ♻️', 45.09, 1, 'Chưa đủ dữ liệu', 500, 10000000, '2024-12-12 14:19:26', '2024-12-12 14:19:26', 37.57),
(271, 38, 'YouTube Views | Native ADS | Real Users | 500K Per Day | 𝗠𝗶𝗻 𝟱𝗞 | Lifetime Guaranteed ♻️', 43.26, 1, 'Chưa đủ dữ liệu', 500, 10000000, '2024-12-12 14:19:26', '2024-12-12 14:19:26', 36.05),
(272, 38, 'YouTube Views | Native ADS | Real Users | 500K Per Day | 𝗠𝗶𝗻 𝟭𝟬𝗞 | Lifetime Guaranteed ♻️', 31.99, 1, 'Chưa đủ dữ liệu', 500, 10000000, '2024-12-12 14:19:26', '2024-12-12 14:19:26', 26.66),
(273, 38, 'YouTube Views | Native ADS | Real Users | 500K Per Day | 𝗠𝗶𝗻 𝟮𝟬𝗞 | Lifetime Guaranteed ♻️', 27.42, 1, 'Chưa đủ dữ liệu', 500, 10000000, '2024-12-12 14:19:26', '2024-12-12 14:19:26', 22.85),
(274, 38, 'YouTube Views | Native ADS | Real Users | 500K Per Day | 𝗠𝗶𝗻 𝟰𝟬𝗞 | Lifetime Guaranteed ♻️', 25.89, 1, 'Chưa đủ dữ liệu', 500, 10000000, '2024-12-12 14:19:26', '2024-12-12 14:19:26', 21.58),
(275, 39, 'Youtube Subscribers | Instant | 100 Per Day | Non Drop | 30 Days Refill ♻️', 36.56, 1, 'Chưa đủ dữ liệu', 500, 10000, '2024-12-12 14:19:26', '2024-12-12 14:19:26', 30.46),
(276, 39, 'Youtube Subscribers | Instant | 200 Per Day | Non Drop | 365 Days Refill ♻️', 76.16, 1, 'Chưa đủ dữ liệu', 500, 100000, '2024-12-12 14:19:26', '2024-12-12 14:19:26', 63.47),
(277, 39, 'Youtube Subscribers | Instant | 500 Per Day | Non Drop | 365 Days Refill ♻️', 91.39, 1, 'Chưa đủ dữ liệu', 500, 100000, '2024-12-12 14:19:26', '2024-12-12 14:19:26', 76.16),
(278, 39, 'Youtube Subscribers | Instant | 800 Per Day | Non Drop | 365 Days Refill ♻️', 106.63, 1, 'Chưa đủ dữ liệu', 500, 100000, '2024-12-12 14:19:26', '2024-12-12 14:19:26', 88.86),
(279, 40, 'Instagram Likes | Instant | Ultra Fast | 50K Per Day ⚡', 0.43, 1, 'Chưa đủ dữ liệu', 500, 100000, '2024-12-12 14:19:26', '2024-12-12 14:19:26', 0.36),
(280, 40, 'Instagram Likes | Instant | 100K Per Day | 365 Days Refill ⚡♻️⛔', 0.91, 1, '30 phút', 500, 100000, '2024-12-12 14:19:26', '2024-12-12 14:19:26', 0.76),
(281, 40, 'Instagram Likes | Instant | 3K Per Day | No Refill ⚡⛔', 15.23, 1, '2 giờ 40 phút', 500, 50000, '2024-12-12 14:19:26', '2024-12-12 14:19:26', 12.69),
(282, 40, 'Instagram Likes | Instant | 8K Per Day | No Refill ⚡⛔', 30.46, 1, 'Chưa đủ dữ liệu', 500, 50000, '2024-12-12 14:19:26', '2024-12-12 14:19:26', 25.39),
(283, 41, 'Instagram Followers | Usually Starts Slowly | 10K Per Day | No Refill ⚡⛔', 24.37, 1, '40 giờ 50 phút', 500, 10000, '2024-12-12 14:19:26', '2024-12-12 14:19:26', 20.31),
(284, 41, 'Instagram Followers | Usually Starts Slowly | 10K Per Day | No Refill ⚡⛔', 27.42, 1, 'Chưa đủ dữ liệu', 500, 50000, '2024-12-12 14:19:26', '2024-12-12 14:19:26', 22.85),
(285, 41, 'Instagram Followers | Instant | 30K Per Day | No Refill ⚡', 46.61, 1, '16 giờ 19 phút', 500, 100000, '2024-12-12 14:19:26', '2024-12-12 14:19:26', 38.84),
(286, 41, 'Instagram Followers | Instant | 50K Per Day | No Refill ⚡⛔', 52.28, 1, 'Chưa đủ dữ liệu', 500, 100000, '2024-12-12 14:19:26', '2024-12-12 14:19:26', 43.57),
(287, 41, 'Instagram Followers | Instant | 20K Per Day | 365 Days Refill ⚡♻️⛔', 54.84, 1, 'Chưa đủ dữ liệu', 500, 100000, '2024-12-12 14:19:26', '2024-12-12 14:19:26', 45.70),
(288, 41, 'Instagram Followers Indian 🇮🇳 | Instant | 200K Per Day ⚡⛔', 68.55, 1, '3 giờ 1 phút', 500, 1000000, '2024-12-12 14:19:26', '2024-12-12 14:19:26', 57.12),
(289, 41, 'Instagram Followers Indian 🇮🇳 | Instant | 200K Per Day | R30 ⚡♻️⛔', 89.63, 1, 'Chưa đủ dữ liệu', 500, 1000000, '2024-12-12 14:19:26', '2024-12-12 14:19:26', 74.69),
(290, 41, 'Instagram Followers Indian 🇮🇳 | Instant | 200K Per Day | R60 ⚡♻️⛔', 100.84, 1, 'Chưa đủ dữ liệu', 500, 1000000, '2024-12-12 14:19:26', '2024-12-12 14:19:26', 84.03),
(291, 41, 'Instagram Followers Indian 🇮🇳 | Instant | 200K Per Day | R365 ⚡♻️⛔', 110.26, 1, 'Chưa đủ dữ liệu', 500, 1000000, '2024-12-12 14:19:26', '2024-12-12 14:19:26', 91.88),
(292, 42, 'Instagram Saves | Instant | 𝗨𝗹𝘁𝗿𝗮 𝗙𝗮𝘀𝘁 & 𝗦𝘁𝗮𝗯𝗹𝗲 | 50K Per Day', 1.52, 1, 'Chưa đủ dữ liệu', 500, 1000000, '2024-12-12 14:19:26', '2024-12-12 14:19:26', 1.27),
(293, 43, 'Instagram Shares | Instant | 𝗨𝗹𝘁𝗿𝗮 𝗙𝗮𝘀𝘁 & 𝗦𝘁𝗮𝗯𝗹𝗲 | 100K Per Day', 3.66, 1, 'Chưa đủ dữ liệu', 500, 1000000, '2024-12-12 14:19:26', '2024-12-12 14:19:26', 3.05),
(294, 44, 'Telegram Channel/Group Members | 20K Per Day | 30 Day Refill ♻️⛔', 24.37, 1, '2 giờ 39 phút', 500, 50000, '2024-12-12 14:19:26', '2024-12-12 14:19:26', 20.31),
(295, 44, 'Telegram Channel/Group Members | 20K Per Day | 60 Day Refill ♻️⛔', 30.46, 1, '29 phút', 500, 50000, '2024-12-12 14:19:26', '2024-12-12 14:19:26', 25.39),
(296, 44, 'Telegram Channel/Group Members | 20K Per Day | 90 Day Refill ♻️⛔', 36.56, 1, 'Chưa đủ dữ liệu', 500, 50000, '2024-12-12 14:19:26', '2024-12-12 14:19:26', 30.46),
(297, 45, 'Telegram Post Views | 100K Per Day', 0.30, 1, '2 giờ 40 phút', 500, 500000, '2024-12-12 14:19:26', '2024-12-12 14:19:26', 0.25),
(298, 45, 'Telegram Post Views | 200K Per Day', 0.61, 1, 'Chưa đủ dữ liệu', 500, 500000, '2024-12-12 14:19:26', '2024-12-12 14:19:26', 0.51),
(299, 45, 'Telegram Post Views | 300K Per Day', 0.91, 1, 'Chưa đủ dữ liệu', 500, 500000, '2024-12-12 14:19:26', '2024-12-12 14:19:26', 0.76),
(300, 46, 'Telegram Positive Reaction | 👍🤩🎉🔥❤️🥰👏🏻 | 2K Per Day', 0.61, 1, '21 giờ 59 phút', 500, 50000, '2024-12-12 14:19:26', '2024-12-12 14:19:26', 0.51),
(301, 46, 'Telegram Negative Reaction | 👎😢🤮💩🤔🤯🤬 | 2K Per Day', 0.61, 1, 'Chưa đủ dữ liệu', 500, 50000, '2024-12-12 14:19:26', '2024-12-12 14:19:26', 0.51),
(302, 46, 'Telegram Premium Reactions | 💯 😍 ❤️‍🔥 🤡 🕊 🐳 | 2K Per Day', 4.57, 1, 'Chưa đủ dữ liệu', 500, 50000, '2024-12-12 14:19:26', '2024-12-12 14:19:26', 3.81);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `source_code_categories`
--

CREATE TABLE `source_code_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `source_code_categories`
--

INSERT INTO `source_code_categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'PHP', '2024-12-18 10:34:04', '2024-12-18 10:34:04');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `source_code_orders`
--

CREATE TABLE `source_code_orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `source_code_product_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `unit_price` decimal(10,2) NOT NULL,
  `order_code` varchar(255) NOT NULL,
  `link_download` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `source_code_products`
--

CREATE TABLE `source_code_products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `demo` varchar(255) DEFAULT NULL,
  `price` decimal(10,2) NOT NULL,
  `link_download` varchar(255) DEFAULT NULL,
  `purchase_count` int(11) NOT NULL DEFAULT 0,
  `view_count` int(11) NOT NULL DEFAULT 0,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `source_code_products`
--

INSERT INTO `source_code_products` (`id`, `category_id`, `name`, `description`, `demo`, `price`, `link_download`, `purchase_count`, `view_count`, `image`, `created_at`, `updated_at`) VALUES
(3, 1, 'Website Bán Đồng Hồ PHP', '<p>Website Bán Đồng Hồ PHP</p><p><figure data-trix-attachment=\"{&quot;contentType&quot;:&quot;image/png&quot;,&quot;filename&quot;:&quot;Screenshot 2024-12-25 094616.png&quot;,&quot;filesize&quot;:688081,&quot;height&quot;:943,&quot;href&quot;:&quot;http://localhost:8000/storage/LmTx6Hem0SoPxxJHaO20oVsAOpN7jM0tpa3fWjxZ.png&quot;,&quot;url&quot;:&quot;http://localhost:8000/storage/LmTx6Hem0SoPxxJHaO20oVsAOpN7jM0tpa3fWjxZ.png&quot;,&quot;width&quot;:1916}\" data-trix-content-type=\"image/png\" data-trix-attributes=\"{&quot;presentation&quot;:&quot;gallery&quot;}\" class=\"attachment attachment--preview attachment--png\"><a href=\"http://localhost:8000/storage/LmTx6Hem0SoPxxJHaO20oVsAOpN7jM0tpa3fWjxZ.png\"><img src=\"http://localhost:8000/storage/LmTx6Hem0SoPxxJHaO20oVsAOpN7jM0tpa3fWjxZ.png\" width=\"1916\" height=\"943\"><figcaption class=\"attachment__caption\"><span class=\"attachment__name\">Screenshot 2024-12-25 094616.png</span> <span class=\"attachment__size\">671.95 KB</span></figcaption></a></figure></p>', NULL, 1000000.00, 'https://terabox.com/s/1y9vmHkAwO5Km6W2x3EPSoA', 100, 107, '01JFXWYA2DVREVMSDVCH4F6GG0.png', '2024-12-25 03:14:37', '2024-12-25 03:17:50');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `transactions`
--

CREATE TABLE `transactions` (
  `id` varchar(255) NOT NULL,
  `bank_brand_name` varchar(50) NOT NULL,
  `account_number` varchar(20) NOT NULL,
  `transaction_date` datetime NOT NULL,
  `amount_out` decimal(30,2) NOT NULL DEFAULT 0.00,
  `amount_in` decimal(30,2) NOT NULL DEFAULT 0.00,
  `accumulated` decimal(30,2) NOT NULL DEFAULT 0.00,
  `transaction_content` text NOT NULL,
  `reference_number` varchar(50) NOT NULL,
  `code` varchar(20) DEFAULT NULL,
  `sub_account` varchar(20) DEFAULT NULL,
  `bank_account_id` varchar(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `transactions`
--

INSERT INTO `transactions` (`id`, `bank_brand_name`, `account_number`, `transaction_date`, `amount_out`, `amount_in`, `accumulated`, `transaction_content`, `reference_number`, `code`, `sub_account`, `bank_account_id`, `created_at`, `updated_at`) VALUES
('5363536', 'MBBank', '0966579217', '2024-12-13 10:32:14', 0.00, 2000.00, 0.00, 'TRAN LE HUY HOANG chuyen tien', 'FT24348406509051', NULL, NULL, '5090', '2024-12-13 04:01:45', '2024-12-13 04:01:45'),
('5363885', 'MBBank', '0966579217', '2024-12-13 10:47:14', 10000.00, 0.00, 0.00, 'MOMO-CASHIN-0966579217-OQCIKArejQlO-73875172153', 'FT24348074985470', NULL, NULL, '5090', '2024-12-13 04:01:45', '2024-12-13 04:01:45'),
('5363890', 'MBBank', '0966579217', '2024-12-13 10:47:27', 0.00, 2000.00, 0.00, '73876613791-HG 2509ROBLOX-CHUYEN TIEN-OQCH37878225-MOMO73876613791MOMO', 'FT24348174190543', NULL, NULL, '5090', '2024-12-13 04:01:45', '2024-12-13 04:01:45'),
('5364010', 'MBBank', '0966579217', '2024-12-13 10:54:17', 0.00, 2001.00, 0.00, '73877090731-HG 2509ROBLOX-CHUYEN TIEN-OQCH37880160-MOMO73877090731MOMO', 'FT24348688165369', NULL, NULL, '5090', '2024-12-13 04:01:45', '2024-12-13 04:01:45'),
('5364191', 'MBBank', '0966579217', '2024-12-13 11:08:17', 0.00, 2000.00, 0.00, '73878288906-HG 2509ROBLOX-CHUYEN TIEN-OQCH37884372-MOMO73878288906MOMO', 'FT24348500376534', NULL, NULL, '5090', '2024-12-13 04:08:54', '2024-12-13 04:08:54'),
('5467615', 'MBBank', '0966579217', '2024-12-16 19:04:19', 0.00, 30000.00, 0.00, '74169758919-TRINH GIA NGHI chuyen tien qua MoMo-CHUYEN TIEN-OQCH39036614-MOMO74169758919MOMO', 'FT24351010922690', NULL, NULL, '5090', '2024-12-17 14:04:11', '2024-12-17 14:04:11'),
('5467678', 'MBBank', '0966579217', '2024-12-16 19:05:44', 0.00, 30000.00, 0.00, 'PHOTO DOCS', 'FT24351110448299', NULL, NULL, '5090', '2024-12-17 14:04:11', '2024-12-17 14:04:11'),
('5483840', 'MBBank', '0966579217', '2024-12-17 04:44:00', 10000.00, 0.00, 0.00, 'MOMO-CASHIN-0966579217-OQCIqXTnsXvx-74194944044 NG CHUYEN:TRAN LE HOANG GIANG', 'FT24352290625599', NULL, NULL, '5090', '2024-12-17 14:04:11', '2024-12-17 14:04:11'),
('5483888', 'MBBank', '0966579217', '2024-12-17 04:52:41', 10000.00, 0.00, 0.00, 'MOMO-CASHIN-0966579217-OQCIUFELyKPN-74193684602', 'FT24352022628999', NULL, NULL, '5090', '2024-12-17 14:04:11', '2024-12-17 14:04:11'),
('5483890', 'MBBank', '0966579217', '2024-12-17 04:52:43', 0.00, 10000.00, 0.00, '74195055998-INVQK0XKZR7-CHUYEN TIEN-OQCH39133019-MOMO74195055998MOMO', 'FT24352425905949', NULL, NULL, '5090', '2024-12-17 14:04:11', '2024-12-17 14:04:11'),
('5485401', 'MBBank', '0966579217', '2024-12-17 08:07:50', 0.00, 10000.00, 0.00, '74202052730-INVULONXNRT-CHUYEN TIEN-OQCH39153818-MOMO74202052730MOMO', 'FT24352568510903', NULL, NULL, '5090', '2024-12-17 14:04:11', '2024-12-17 14:04:11'),
('5485405', 'MBBank', '0966579217', '2024-12-17 08:07:47', 10000.00, 0.00, 0.00, 'MOMO-CASHIN-0966579217-OQCImYOqnGnU-74200591597', 'FT24352207673149', NULL, NULL, '5090', '2024-12-17 14:04:11', '2024-12-17 14:04:11'),
('5488556', 'MBBank', '0966579217', '2024-12-17 10:45:00', 117000.00, 0.00, 0.00, 'TRAN LE HOANG GIANG chuyen tien NG CHUYEN:CUSTOMER', 'FT24352957882090', NULL, NULL, '5090', '2024-12-17 14:04:11', '2024-12-17 14:04:11'),
('5489694', 'MBBank', '0966579217', '2024-12-17 12:02:00', 0.00, 10000.00, 0.00, 'INVJBJKI2US   Ma giao dich  Trace124745 Trace 124745 NG CHUYEN:CUSTOMER 0966579217', 'FT24352280244040', NULL, NULL, '5090', '2024-12-17 14:04:11', '2024-12-17 14:04:11'),
('5489714', 'MBBank', '0966579217', '2024-12-17 12:02:00', 10000.00, 0.00, 0.00, 'MOMO-CASHIN-0966579217-OQCIiRUrPAGx-74218418836 NG CHUYEN:TRAN LE HOANG GIANG', 'FT24352507513709', NULL, NULL, '5090', '2024-12-17 14:04:11', '2024-12-17 14:04:11'),
('5504548', 'MBBank', '0966579217', '2024-12-17 21:04:11', 228500.00, 0.00, 0.00, 'MOMO-CASHIN-0966579217-OQCIhjFmPvUM-74259096007', 'FT24352280504706', NULL, NULL, '5090', '2024-12-17 14:04:57', '2024-12-17 14:04:57'),
('5504551', 'MBBank', '0966579217', '2024-12-17 21:04:13', 0.00, 228500.00, 0.00, '74260616060-611365-CHUYEN TIEN-OQCH39373634-MOMO74260616060MOMO', 'FT24352490207898', NULL, NULL, '5090', '2024-12-17 14:04:57', '2024-12-17 14:04:57'),
('5517528', 'MBBank', '0966579217', '2024-12-18 10:03:04', 0.00, 200000.00, 0.00, 'Chuyen tien thanh toan   Ma giao dich  Trace133647 Trace 133647', 'FT24353071016789', NULL, NULL, '5090', '2024-12-18 07:03:29', '2024-12-18 07:03:29'),
('5518711', 'MBBank', '0966579217', '2024-12-18 11:11:52', 250800.00, 0.00, 0.00, 'QRCODE VNPAY QRCODE 096657921724121811112289851 BP0001b5bch3', 'FT24353349694852', NULL, NULL, '5090', '2024-12-18 07:03:29', '2024-12-18 07:03:29'),
('5520764', 'MBBank', '0966579217', '2024-12-18 14:04:49', 10000.00, 0.00, 0.00, 'MOMO-CASHIN-0966579217-OQCICyzGDIkp-74306357302', 'FT24353306116978', NULL, NULL, '5090', '2024-12-18 07:05:57', '2024-12-18 07:05:57'),
('5520863', 'MBBank', '0966579217', '2024-12-18 14:10:31', 10650.00, 0.00, 0.00, 'MOMO-CASHIN-0966579217-OQCIuQbATQGJ-74307599342', 'FT24353150604760', NULL, NULL, '5090', '2024-12-18 07:11:17', '2024-12-18 07:11:17'),
('5520864', 'MBBank', '0966579217', '2024-12-18 14:10:34', 0.00, 10650.00, 0.00, '74308598282-155641-CHUYEN TIEN-OQCH39548853-MOMO74308598282MOMO', 'FT24353526298135', NULL, NULL, '5090', '2024-12-18 07:11:19', '2024-12-18 07:11:19'),
('5520934', 'MBBank', '0966579217', '2024-12-18 14:15:33', 10650.00, 0.00, 0.00, 'MOMO-CASHIN-0966579217-OQCIctPVCftp-74307602378', 'FT24353698318044', NULL, NULL, '5090', '2024-12-18 07:16:17', '2024-12-18 07:16:17'),
('5520936', 'MBBank', '0966579217', '2024-12-18 14:15:35', 0.00, 10650.00, 0.00, '74309033193-927083-CHUYEN TIEN-OQCH39549957-MOMO74309033193MOMO', 'FT24353547661926', NULL, NULL, '5090', '2024-12-18 07:16:22', '2024-12-18 07:16:22'),
('5520957', 'MBBank', '0966579217', '2024-12-18 14:16:52', 18280.00, 0.00, 0.00, 'MOMO-CASHIN-0966579217-OQCIzrekhETm-74307454213', 'FT24353008086641', NULL, NULL, '5090', '2024-12-18 07:17:38', '2024-12-18 07:17:38'),
('5520958', 'MBBank', '0966579217', '2024-12-18 14:16:55', 0.00, 18280.00, 0.00, '74309122490-905692-CHUYEN TIEN-OQCH39550278-MOMO74309122490MOMO', 'FT24353438100861', NULL, NULL, '5090', '2024-12-18 07:17:38', '2024-12-18 07:17:38'),
('5576347', 'MBBank', '0966579217', '2024-12-20 09:03:00', 30000.00, 0.00, 0.00, 'TRAN LE HOANG GIANG chuyen tien - Ma giao dich/ Trace 729819', 'FT24355660755605', NULL, NULL, '5090', '2024-12-22 07:31:52', '2024-12-22 07:31:52'),
('5579191', 'MBBank', '0966579217', '2024-12-20 11:19:49', 150000.00, 0.00, 0.00, 'TRAN LE HOANG GIANG chuyen tien- MaGD ACSP/ W3939221', 'FT24355431004351', NULL, NULL, '5090', '2024-12-22 07:31:52', '2024-12-22 07:31:52'),
('5579385', 'MBBank', '0966579217', '2024-12-20 11:32:20', 24000.00, 0.00, 0.00, 'TRAN LE HOANG GIANG chuyen tien- MaGD ACSP/ R4262121', 'FT24355588007118', NULL, NULL, '5090', '2024-12-22 07:31:52', '2024-12-22 07:31:52'),
('5579818', 'MBBank', '0966579217', '2024-12-20 12:04:29', 0.00, 550000.00, 0.00, 'HUYNH VAN TRUNG chuyen tien FT24355363993550   Ma giao dich  Trace668476 Trace 668476', 'FT24355806484235', NULL, NULL, '5090', '2024-12-22 07:31:52', '2024-12-22 07:31:52'),
('5580293', 'MBBank', '0966579217', '2024-12-20 12:47:21', 220000.00, 0.00, 0.00, 'TRAN LE HOANG GIANG chuyen tien', 'FT24355496818380', NULL, NULL, '5090', '2024-12-22 07:31:52', '2024-12-22 07:31:52'),
('5587477', 'MBBank', '0966579217', '2024-12-20 19:13:05', 0.00, 400000.00, 0.00, 'TRAN THI DIEM QUYNH chuyen tien', 'FT24355589515130', NULL, NULL, '5090', '2024-12-22 07:31:52', '2024-12-22 07:31:52'),
('5611239', 'MBBank', '0966579217', '2024-12-21 12:45:03', 42000.00, 0.00, 0.00, 'TRAN LE HOANG GIANG chuyen tien - Ma giao dich/ Trace 053940', 'FT24356010359023', NULL, NULL, '5090', '2024-12-22 07:31:52', '2024-12-22 07:31:52'),
('5611248', 'MBBank', '0966579217', '2024-12-21 12:45:19', 0.00, 42000.00, 0.00, 'TRAN LE HUY HOANG chuyen tien', 'FT24356089464102', NULL, NULL, '5090', '2024-12-22 07:31:52', '2024-12-22 07:31:52'),
('5628543', 'MBBank', '0966579217', '2024-12-21 20:15:43', 0.00, 100000.00, 0.00, 'MBVCB.7981258022.333212.chuyen tiencode.CT tu 1014309416 NGUYEN VAN CHIEN toi 0966579217 TRAN LE HOANG GIANG tai MB- Ma GD ACSP/ gz333212', 'FT24358470886697', NULL, NULL, '5090', '2024-12-22 07:31:52', '2024-12-22 07:31:52'),
('5641830', 'MBBank', '0966579217', '2024-12-22 01:07:00', 0.00, 200.00, 0.00, 'NODATA', '0966579217-20241221', NULL, NULL, '5090', '2024-12-22 07:31:52', '2024-12-22 07:31:52'),
('5649935', 'MBBank', '0966579217', '2024-12-22 14:34:32', 0.00, 10000.00, 0.00, '74627951589-HG 2509ROBLOX-CHUYEN TIEN-OQCH40695153-MOMO74627951589MOMO', 'FT24358227070035', NULL, NULL, '5090', '2024-12-22 07:35:28', '2024-12-22 07:35:28'),
('5678938', 'MBBank', '0966579217', '2024-12-23 09:18:45', 0.00, 200000.00, 0.00, 'NGUYEN SI LOI CHUYEN TIEN- Ma GD ACSP/ cf649416', 'FT24358000004697', NULL, NULL, '5090', '2024-12-24 12:00:45', '2024-12-24 12:00:45'),
('5689770', 'MBBank', '0966579217', '2024-12-23 18:15:43', 53000.00, 0.00, 0.00, 'TRAN LE HOANG GIANG chuyen tien', 'FT24358003591567', NULL, NULL, '5090', '2024-12-24 12:00:45', '2024-12-24 12:00:45'),
('5696256', 'MBBank', '0966579217', '2024-12-23 20:51:51', 0.00, 145000.00, 0.00, 'TRAN PHUONG THAO chuyen tien whalegame gd2 tang a coc matcha latte nheee', 'FT24358275343471', NULL, NULL, '5090', '2024-12-24 12:00:45', '2024-12-24 12:00:45'),
('5696277', 'MBBank', '0966579217', '2024-12-23 20:52:30', 0.00, 1305000.00, 0.00, 'e e chuyen nham a', 'FT24358093418136', NULL, NULL, '5090', '2024-12-24 12:00:45', '2024-12-24 12:00:45'),
('5720419', 'MBBank', '0966579217', '2024-12-24 20:28:52', 0.00, 200000.00, 0.00, 'DANG VAN TUAN chuyen tien FT24359424405139   Ma giao dich  Trace523305Trace 523305', 'FT24359200643506', NULL, NULL, '5090', '2024-12-24 13:53:43', '2024-12-24 13:53:43'),
('5721518', 'MBBank', '0966579217', '2024-12-24 20:56:47', 10000.00, 0.00, 0.00, 'MOMO-CASHIN-0966579217-OQCIjPkuNxQk-74814617848', 'FT24359391798570', NULL, NULL, '5090', '2024-12-24 13:57:44', '2024-12-24 13:57:44'),
('5721522', 'MBBank', '0966579217', '2024-12-24 20:56:50', 0.00, 10000.00, 0.00, '74816353538-HG 2509ROBLOX-CHUYEN TIEN-OQCH41401223-MOMO74816353538MOMO', 'FT24359900183314', NULL, NULL, '5090', '2024-12-24 13:57:47', '2024-12-24 13:57:47'),
('5735969', 'MBBank', '0966579217', '2024-12-25 10:22:41', 10000.00, 0.00, 0.00, 'MOMO-CASHIN-0966579217-OQCInhGLKzWj-74847679979', 'FT24360920027052', NULL, NULL, '5090', '2024-12-25 03:24:37', '2024-12-25 03:24:37'),
('5735972', 'MBBank', '0966579217', '2024-12-25 10:22:44', 0.00, 10000.00, 0.00, '74848657250-HG 2509ROBLOX-CHUYEN TIEN-OQCH41507358-MOMO74848657250MOMO', 'FT24360919313509', NULL, NULL, '5090', '2024-12-25 03:24:37', '2024-12-25 03:24:37');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `theme` varchar(255) DEFAULT 'default',
  `theme_color` varchar(255) DEFAULT NULL,
  `balance` decimal(30,2) NOT NULL DEFAULT 0.00,
  `ip_address` varchar(255) DEFAULT NULL,
  `other_contact_info` varchar(255) DEFAULT NULL,
  `device` varchar(255) DEFAULT NULL,
  `total_consumption` decimal(10,2) DEFAULT NULL,
  `total_deposit` decimal(10,2) DEFAULT NULL,
  `two_factor_auth_status` tinyint(1) NOT NULL DEFAULT 0,
  `avatar` varchar(255) DEFAULT NULL,
  `contact` varchar(255) DEFAULT NULL,
  `otp` int(225) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `username`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `theme`, `theme_color`, `balance`, `ip_address`, `other_contact_info`, `device`, `total_consumption`, `total_deposit`, `two_factor_auth_status`, `avatar`, `contact`, `otp`) VALUES
(20, '2509roblox', '2509roblox@gmail.com', '2509roblox', NULL, '$2y$12$/gVAqwdbZ8yUcAjDeF71oO87iC0TfBD3BMzOpVyC/TxAY/2V0TBIe', 'SYP9aeEDO9REZpT3EUDv6atObtbRclXW8DJYlLBhwGJPcyLZHAoBcJxEeyXE', '2024-12-07 02:40:50', '2024-12-25 03:24:39', 'default', NULL, 26987.00, '127.0.0.1', NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 401599.00, NULL, 0, NULL, '123', 179583),
(26, 'HG DIGITAL', '2508roblox@gmail.com', 'kjpfehowou', NULL, '$2y$12$7zymyyR1hWcaMMepHSqN7ecK5DyzT1CXExehx4kfOwhoYrnZVT.5S', NULL, '2024-12-25 03:31:37', '2024-12-25 03:31:37', 'default', NULL, 0.00, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `web_services`
--

CREATE TABLE `web_services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `web_services`
--

INSERT INTO `web_services` (`id`, `name`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Code, thêm chức năng, và xây dựng website', '01JFRQ0ZRF671FRRHA2GXX56A2.jpeg', '2024-12-23 02:55:01', '2024-12-23 02:55:01'),
(3, 'Clone giao diện website nhanh chóng', '01JFRRM4R6V7V6DXA2CXXNJGBV.jpg', '2024-12-23 03:22:58', '2024-12-23 03:22:58'),
(4, 'Xây dựng LandingPage website', '01JFRRMYDHDNZAPWZR8G5PKFJQ.png', '2024-12-23 03:23:24', '2024-12-23 03:23:24'),
(5, 'Giải bài tập, hỗ trợ thi môn website', '01JFRRNZCDK17TT089XPJKMA8T.png', '2024-12-23 03:23:58', '2024-12-23 03:23:58'),
(6, 'Cho thuê Hosting / VPS theo ngày / tháng', '01JFRRSD89VAKAZ6ARBQC907YE.jpg', '2024-12-23 03:25:50', '2024-12-23 03:25:50'),
(7, 'Deploy hộ website: Wordpress, php, Laravel', '01JFRRW4CNWJKMTYANS3SVX5MS.jpg', '2024-12-23 03:27:19', '2024-12-23 03:27:19');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `activity_history`
--
ALTER TABLE `activity_history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `activity_history_user_id_foreign` (`user_id`);

--
-- Chỉ mục cho bảng `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Chỉ mục cho bảng `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Chỉ mục cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Chỉ mục cho bảng `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Chỉ mục cho bảng `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Chỉ mục cho bảng `payment_history`
--
ALTER TABLE `payment_history`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `payment_history_transaction_code_unique` (`transaction_code`),
  ADD KEY `payment_history_user_id_foreign` (`user_id`);

--
-- Chỉ mục cho bảng `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Chỉ mục cho bảng `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `smm_categories`
--
ALTER TABLE `smm_categories`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `smm_orders`
--
ALTER TABLE `smm_orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `smm_orders_user_id_foreign` (`user_id`),
  ADD KEY `smm_orders_smm_service_id_foreign` (`smm_service_id`);

--
-- Chỉ mục cho bảng `smm_services`
--
ALTER TABLE `smm_services`
  ADD PRIMARY KEY (`id`),
  ADD KEY `smm_services_smmcategory_id_foreign` (`smmcategory_id`);

--
-- Chỉ mục cho bảng `source_code_categories`
--
ALTER TABLE `source_code_categories`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `source_code_orders`
--
ALTER TABLE `source_code_orders`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `source_code_orders_order_code_unique` (`order_code`),
  ADD KEY `source_code_orders_user_id_foreign` (`user_id`),
  ADD KEY `source_code_orders_source_code_product_id_foreign` (`source_code_product_id`);

--
-- Chỉ mục cho bảng `source_code_products`
--
ALTER TABLE `source_code_products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `source_code_products_category_id_foreign` (`category_id`);

--
-- Chỉ mục cho bảng `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Chỉ mục cho bảng `web_services`
--
ALTER TABLE `web_services`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `activity_history`
--
ALTER TABLE `activity_history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2381;

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT cho bảng `payment_history`
--
ALTER TABLE `payment_history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=126;

--
-- AUTO_INCREMENT cho bảng `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `smm_categories`
--
ALTER TABLE `smm_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT cho bảng `smm_orders`
--
ALTER TABLE `smm_orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT cho bảng `smm_services`
--
ALTER TABLE `smm_services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=303;

--
-- AUTO_INCREMENT cho bảng `source_code_categories`
--
ALTER TABLE `source_code_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `source_code_orders`
--
ALTER TABLE `source_code_orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT cho bảng `source_code_products`
--
ALTER TABLE `source_code_products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT cho bảng `web_services`
--
ALTER TABLE `web_services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `activity_history`
--
ALTER TABLE `activity_history`
  ADD CONSTRAINT `activity_history_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `payment_history`
--
ALTER TABLE `payment_history`
  ADD CONSTRAINT `payment_history_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `smm_orders`
--
ALTER TABLE `smm_orders`
  ADD CONSTRAINT `smm_orders_smm_service_id_foreign` FOREIGN KEY (`smm_service_id`) REFERENCES `smm_services` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `smm_orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `smm_services`
--
ALTER TABLE `smm_services`
  ADD CONSTRAINT `smm_services_smmcategory_id_foreign` FOREIGN KEY (`smmcategory_id`) REFERENCES `smm_categories` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `source_code_orders`
--
ALTER TABLE `source_code_orders`
  ADD CONSTRAINT `source_code_orders_source_code_product_id_foreign` FOREIGN KEY (`source_code_product_id`) REFERENCES `source_code_products` (`id`),
  ADD CONSTRAINT `source_code_orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Các ràng buộc cho bảng `source_code_products`
--
ALTER TABLE `source_code_products`
  ADD CONSTRAINT `source_code_products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `source_code_categories` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
