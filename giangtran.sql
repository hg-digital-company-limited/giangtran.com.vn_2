-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 11, 2025 at 01:07 PM
-- Server version: 8.0.30
-- PHP Version: 8.2.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `giangtran`
--

-- --------------------------------------------------------

--
-- Table structure for table `access_history`
--

CREATE TABLE `access_history` (
  `id` bigint UNSIGNED NOT NULL,
  `date` date NOT NULL,
  `visit_count` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `access_history`
--

INSERT INTO `access_history` (`id`, `date`, `visit_count`, `created_at`, `updated_at`) VALUES
(1, '2025-01-05', 77, '2025-01-05 01:14:49', '2025-01-05 02:26:33'),
(2, '2025-01-04', 2, '2025-01-05 01:14:49', '2025-01-05 01:14:56'),
(3, '2025-01-03', 2, '2025-01-05 01:14:49', '2025-01-05 01:14:56'),
(4, '2025-01-06', 76, '2025-01-06 04:23:40', '2025-01-06 11:46:31'),
(5, '2025-01-10', 109, '2025-01-10 02:18:22', '2025-01-10 12:36:04'),
(6, '2025-01-11', 60, '2025-01-11 02:11:10', '2025-01-11 13:07:35');

-- --------------------------------------------------------

--
-- Table structure for table `activity_history`
--

CREATE TABLE `activity_history` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `activity_history`
--

INSERT INTO `activity_history` (`id`, `user_id`, `content`, `ip_address`, `created_at`, `updated_at`) VALUES
(2397, 39, 'Mua Source Code . Website Bán Đồng Hồ PHP!', '127.0.0.1', '2024-12-26 07:57:34', '2024-12-26 07:57:34'),
(2398, 39, 'Tạo đơn hàng Smm!', '127.0.0.1', '2024-12-26 08:01:19', '2024-12-26 08:01:19'),
(2399, 39, 'Mua Source Code . Website Bán Đồng Hồ PHP!', '127.0.0.1', '2024-12-26 11:32:37', '2024-12-26 11:32:37'),
(2400, 39, 'Đăng nhập bằng tài khoản', '127.0.0.1', '2025-01-02 03:25:15', '2025-01-02 03:25:15'),
(2401, 39, 'Mua Source Code . Web bán quần áo (php + mysql)!', '127.0.0.1', '2025-01-02 03:28:02', '2025-01-02 03:28:02'),
(2402, 39, 'Mua Source Code . Web bán quần áo (php + mysql)!', '127.0.0.1', '2025-01-02 03:28:29', '2025-01-02 03:28:29');

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` bigint UNSIGNED NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `short_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `background_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `views` int UNSIGNED NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `slug`, `title`, `short_description`, `description`, `background_image`, `image`, `views`, `created_at`, `updated_at`) VALUES
(1, 'realme-14-pro-chinh-thuc-ra-mat-tai-trung-quoc', 'Realme 14 Pro+ chính thức ra mắt tại Trung Quốc', 'Sau thời gian chờ đợi, Realme 14 Pro+ đã chính thức lộ diện với đầy đủ thông tin cấu hình và giá bán, được công bố trên cửa hàng trực tuyến chính thức của Realme Trung Quốc.', '<p>&nbsp;</p><p>Thiết bị này hứa hẹn sẽ tạo nên cú huých lớn trong phân khúc cận cao cấp, trước khi bước ra thị trường toàn cầu vào ngày 16 tháng 1 tới.</p><h2><strong>Trải nghiệm vượt trội trong tầm giá trung - cận cao cấp</strong></h2><p>Realme 14 Pro+ được trang bị màn hình OLED kích thước 6.83 inches với độ phân giải lên đến 2800 x 1272 pixels. Đây là một trong những màn hình tốt nhất trong tầm giá, với tần số quét 120Hz mang lại trải nghiệm mượt mà trong mọi tác vụ, từ duyệt web, chơi game đến xem phim. Độ sáng tối đa 1.500 nits giúp máy hiển thị rõ nét ngay cả dưới ánh sáng mặt trời. Để tăng cường độ bền, Realme sử dụng kính cường lực Gorilla Glass 7i, mang lại khả năng chống trầy xước và va đập tốt hơn.</p><p><figure data-trix-attachment=\"{&quot;contentType&quot;:&quot;image&quot;,&quot;height&quot;:500,&quot;url&quot;:&quot;https://cdn2.fptshop.com.vn/unsafe/realme_14_pro_chinh_thuc_ra_mat_tai_trung_quoc_19d9ae97d3.jpg&quot;,&quot;width&quot;:750}\" data-trix-content-type=\"image\" class=\"attachment attachment--preview\"><img src=\"https://cdn2.fptshop.com.vn/unsafe/realme_14_pro_chinh_thuc_ra_mat_tai_trung_quoc_19d9ae97d3.jpg\" width=\"750\" height=\"500\"><figcaption class=\"attachment__caption\"></figcaption></figure></p><p>Ngoài ra, thiết bị còn tích hợp cảm biến vân tay dưới màn hình và camera selfie 32MP nằm trong lỗ đục nhỏ gọn, đảm bảo tối ưu không gian hiển thị.</p><p>Realme 14 Pro+ không chỉ mạnh mẽ về công nghệ mà còn nổi bật với thiết kế thời thượng. Máy đạt tiêu chuẩn kháng nước và bụi IP68/IP69, giúp an tâm hơn khi sử dụng trong các môi trường khắc nghiệt. Đặc biệt, phiên bản Gilded White của máy sở hữu mặt lưng đổi màu thông minh, thay đổi từ sắc trắng sang xanh lam rực rỡ khi nhiệt độ môi trường dưới 16°C – một chi tiết hứa hẹn thu hút những người yêu thích sự độc đáo.</p><p>Được định hướng là một chiếc điện thoại tập trung vào khả năng chụp ảnh, Realme 14 Pro+ trang bị cụm camera sau ấn tượng với một camera chính 50MP sử dụng cảm biến Sony IMX896 (kích thước 1/1.56 inch, khẩu độ F/1.8) tích hợp chống rung quang học (OIS). Camera này hỗ trợ zoom quang học 2x mà không làm giảm chất lượng hình ảnh.</p><p><figure data-trix-attachment=\"{&quot;contentType&quot;:&quot;image&quot;,&quot;height&quot;:639,&quot;url&quot;:&quot;https://cdn2.fptshop.com.vn/unsafe/realme_14_pro_chinh_thuc_ra_mat_tai_trung_quoc_1_a4a2263ed3.jpg&quot;,&quot;width&quot;:750}\" data-trix-content-type=\"image\" class=\"attachment attachment--preview\"><img src=\"https://cdn2.fptshop.com.vn/unsafe/realme_14_pro_chinh_thuc_ra_mat_tai_trung_quoc_1_a4a2263ed3.jpg\" width=\"750\" height=\"639\"><figcaption class=\"attachment__caption\"></figcaption></figure></p><p>Ống kính tiềm vọng (periscope) 50MP với cảm biến Sony IMX882 (kích thước 1/2 inch), cho khả năng zoom quang học 3x và chống rung quang học (OIS), lý tưởng để chụp các vật thể từ xa.</p><p><figure data-trix-attachment=\"{&quot;contentType&quot;:&quot;image&quot;,&quot;height&quot;:500,&quot;url&quot;:&quot;https://cdn2.fptshop.com.vn/unsafe/realme_14_pro_chinh_thuc_ra_mat_tai_trung_quoc_2_faba998a57.jpg&quot;,&quot;width&quot;:750}\" data-trix-content-type=\"image\" class=\"attachment attachment--preview\"><img src=\"https://cdn2.fptshop.com.vn/unsafe/realme_14_pro_chinh_thuc_ra_mat_tai_trung_quoc_2_faba998a57.jpg\" width=\"750\" height=\"500\"><figcaption class=\"attachment__caption\"></figcaption></figure></p><p>Camera góc siêu rộng 8MP giúp ghi lại khung cảnh rộng lớn với chất lượng tốt.</p><p>Một điểm nhấn đáng chú ý là hệ thống đèn flash LED MagicGlow, với ba mức nhiệt độ màu khác nhau, cho phép tạo ra ánh sáng tự nhiên hơn, đặc biệt khi chụp ảnh chân dung hay trong điều kiện thiếu sáng.</p><p>Bên trong, Realme 14 Pro+ được trang bị Snapdragon 7s Gen 3 – một vi xử lý tầm trung mạnh mẽ được tối ưu hóa cho các tác vụ từ cơ bản đến nặng. Đi kèm là 12GB RAM và hai tùy chọn bộ nhớ trong 256GB hoặc 512GB, giúp người dùng thoải mái lưu trữ dữ liệu và chạy đa nhiệm mượt mà.</p><p>Thiết bị sử dụng viên pin dung lượng 6.000 mAh, dung lượng lớn hàng đầu trong phân khúc, kết hợp với sạc nhanh 80W, cho phép nạp đầy năng lượng trong thời gian ngắn.</p><h2><strong>Giá bán và tùy chọn màu sắc</strong></h2><p>Realme 14 Pro+ có hai màu sắc Sea Rock Grey (Xám) và Gilded White (Trắng). Tại thị trường Trung Quốc, thiết bị được bán với mức giá:</p><ul><li>2.599 CNY (khoảng 9 triệu đồng) cho phiên bản 12GB RAM + 256GB bộ nhớ.</li><li>2.799 CNY (khoảng 9.7 triệu đồng) cho phiên bản 12GB RAM + 512GB bộ nhớ.</li></ul><p><figure data-trix-attachment=\"{&quot;contentType&quot;:&quot;image&quot;,&quot;url&quot;:&quot;https://cdn2.fptshop.com.vn/unsafe/realme_14_pro_chinh_thuc_ra_mat_tai_trung_quoc_4_1977e9bf0d.jpg&quot;}\" data-trix-content-type=\"image\" class=\"attachment attachment--preview\"><img src=\"https://cdn2.fptshop.com.vn/unsafe/realme_14_pro_chinh_thuc_ra_mat_tai_trung_quoc_4_1977e9bf0d.jpg\" width=\"750\" height=\"375\"><figcaption class=\"attachment__caption\"></figcaption></figure>&nbsp;</p>', 'blogs/01JH80WPNRR7B71YR7PK4SWNTM.jpg', 'blogs/01JH80WPNXKFH3K5ENZAA723M3.jpg', 30, '2025-01-10 11:51:45', '2025-01-11 12:21:25'),
(11, '1', 'Trực tiếp bóng đá Liverpool vs Accrington FA Cup hôm nay', 'Trực tiếp bóng đá Liverpool vs Accrington FA Cup hôm nay', 'Trực tiếp bóng đá Liverpool vs Accrington FA Cup hôm nay', NULL, NULL, 0, '2025-01-11 12:38:32', '2025-01-11 12:38:32'),
(12, '1-11-2025-1', 'Trực tiếp bóng đá Liverpool vs Accrington FA Cup hôm nay', 'Trực tiếp bóng đá Liverpool vs Accrington FA Cup hôm nay', 'Trực tiếp bóng đá Liverpool vs Accrington FA Cup hôm nay', NULL, NULL, 0, '2025-01-11 13:06:44', '2025-01-11 13:06:44'),
(13, '1-11-2025-2', 'Án mạng kinh hoàng bao phủ trận cầu Liverpool vs Accrington', 'Án mạng kinh hoàng bao phủ trận cầu Liverpool vs Accrington', 'Án mạng kinh hoàng bao phủ trận cầu Liverpool vs Accrington', NULL, NULL, 0, '2025-01-11 13:06:44', '2025-01-11 13:06:44'),
(14, '1-11-2025-3', 'Nhận định Liverpool vs Accrington (19h15 ngày 11/1)', 'Nhận định Liverpool vs Accrington (19h15 ngày 11/1)', 'Nhận định Liverpool vs Accrington (19h15 ngày 11/1)', NULL, NULL, 0, '2025-01-11 13:06:44', '2025-01-11 13:06:44'),
(15, '1-11-2025-4', 'Nhận định FA Cup - Liverpool vs Accrington (19h15 ngày 11/01): Cuộc chiến không cân sức', 'Nhận định FA Cup - Liverpool vs Accrington (19h15 ngày 11/01): Cuộc chiến không cân sức', 'Nhận định FA Cup - Liverpool vs Accrington (19h15 ngày 11/01): Cuộc chiến không cân sức', NULL, NULL, 0, '2025-01-11 13:06:44', '2025-01-11 13:06:44'),
(16, '1-11-2025-5', 'Trực tiếp Liverpool 0-0 Accrington: Ép sân từ đầu', 'Trực tiếp Liverpool 0-0 Accrington: Ép sân từ đầu', 'Trực tiếp Liverpool 0-0 Accrington: Ép sân từ đầu', NULL, NULL, 0, '2025-01-11 13:06:44', '2025-01-11 13:06:44'),
(17, '1-11-2025-6', 'Lịch thi đấu bóng đá ngày 11.1: Liverpool vs Accrington', 'Lịch thi đấu bóng đá ngày 11.1: Liverpool vs Accrington', 'Lịch thi đấu bóng đá ngày 11.1: Liverpool vs Accrington', NULL, NULL, 0, '2025-01-11 13:06:44', '2025-01-11 13:06:44'),
(18, '1-11-2025-7', 'Trực tiếp bóng đá Liverpool - Accrington: Jota, Nunez lĩnh', 'Trực tiếp bóng đá Liverpool - Accrington: Jota, Nunez lĩnh', 'Trực tiếp bóng đá Liverpool - Accrington: Jota, Nunez lĩnh', NULL, NULL, 0, '2025-01-11 13:06:44', '2025-01-11 13:06:44'),
(19, '1-11-2025-8', 'Liverpool vs Accrington (19h15 ngày 11/1) trực tiếp FPT', 'Liverpool vs Accrington (19h15 ngày 11/1) trực tiếp FPT', 'Liverpool vs Accrington (19h15 ngày 11/1) trực tiếp FPT', NULL, NULL, 0, '2025-01-11 13:06:44', '2025-01-11 13:06:44'),
(20, '1-11-2025-9', 'Soi kèo Liverpool vs Accrington hôm nay 11/01', 'Soi kèo Liverpool vs Accrington hôm nay 11/01', 'Soi kèo Liverpool vs Accrington hôm nay 11/01', NULL, NULL, 0, '2025-01-11 13:06:44', '2025-01-11 13:06:44'),
(21, '1-11-2025-10', 'Dự đoán kết quả và đội hình ra sân trận Liverpool vs ...', 'Dự đoán kết quả và đội hình ra sân trận Liverpool vs ...', 'Dự đoán kết quả và đội hình ra sân trận Liverpool vs ...', NULL, NULL, 0, '2025-01-11 13:06:44', '2025-01-11 13:06:44'),
(22, '1-11-2025-11', 'Thống kê đối đầu Liverpool FC đấu với Accrington Stanley', 'Thống kê đối đầu Liverpool FC đấu với Accrington Stanley', 'Thống kê đối đầu Liverpool FC đấu với Accrington Stanley', NULL, NULL, 0, '2025-01-11 13:06:44', '2025-01-11 13:06:44'),
(23, '1-11-2025-12', 'Trực tiếp Liverpool vs Accrington | 11/01/2025', 'Trực tiếp Liverpool vs Accrington | 11/01/2025', 'Trực tiếp Liverpool vs Accrington | 11/01/2025', NULL, NULL, 0, '2025-01-11 13:06:44', '2025-01-11 13:06:44'),
(24, '1-11-2025-13', 'Liverpool vs Accrington Đối đầu, H2H lịch sử', 'Liverpool vs Accrington Đối đầu, H2H lịch sử', 'Liverpool vs Accrington Đối đầu, H2H lịch sử', NULL, NULL, 0, '2025-01-11 13:06:44', '2025-01-11 13:06:44'),
(25, '1-11-2025-14', 'Liverpool vs Accrington Stanley 11/01/2025', 'Liverpool vs Accrington Stanley 11/01/2025', 'Liverpool vs Accrington Stanley 11/01/2025', NULL, NULL, 0, '2025-01-11 13:06:44', '2025-01-11 13:06:44'),
(26, '1-11-2025-15', 'Liverpool vs Accrington Stanley - Link xem trực tiếp, kết ...', 'Liverpool vs Accrington Stanley - Link xem trực tiếp, kết ...', 'Liverpool vs Accrington Stanley - Link xem trực tiếp, kết ...', NULL, NULL, 0, '2025-01-11 13:06:44', '2025-01-11 13:06:44'),
(27, '1-11-2025-16', 'nhận định bóng đá liverpool vs accrington', 'nhận định bóng đá liverpool vs accrington', 'nhận định bóng đá liverpool vs accrington', NULL, NULL, 0, '2025-01-11 13:06:44', '2025-01-11 13:06:44'),
(28, '1-11-2025-17', 'Nhận định, soi kèo Liverpool vs Accrington Stanley, 19h15 ...', 'Nhận định, soi kèo Liverpool vs Accrington Stanley, 19h15 ...', 'Nhận định, soi kèo Liverpool vs Accrington Stanley, 19h15 ...', NULL, NULL, 0, '2025-01-11 13:06:44', '2025-01-11 13:06:44'),
(29, '1-11-2025-18', 'Sau thất bại tại Cúp Liên đoàn trước Tottenham, Liverpool ...', 'Sau thất bại tại Cúp Liên đoàn trước Tottenham, Liverpool ...', 'Sau thất bại tại Cúp Liên đoàn trước Tottenham, Liverpool ...', NULL, NULL, 0, '2025-01-11 13:06:44', '2025-01-11 13:06:44'),
(30, '1-11-2025-19', '️ Liverpool vs Accrington: Thời cơ xoay vòng', '️ Liverpool vs Accrington: Thời cơ xoay vòng', '️ Liverpool vs Accrington: Thời cơ xoay vòng', NULL, NULL, 0, '2025-01-11 13:06:44', '2025-01-11 13:06:44'),
(31, '1-11-2025-20', 'Dự đoán Liverpool vs Accrington, 19h15 ngày 11/1, FA ...', 'Dự đoán Liverpool vs Accrington, 19h15 ngày 11/1, FA ...', 'Dự đoán Liverpool vs Accrington, 19h15 ngày 11/1, FA ...', NULL, NULL, 0, '2025-01-11 13:06:44', '2025-01-11 13:06:44'),
(32, '1-11-2025-21', 'Dự đoán Liverpool vs Accrington, 19h15 ngày 11/1, FA ...', 'Dự đoán Liverpool vs Accrington, 19h15 ngày 11/1, FA ...', 'Dự đoán Liverpool vs Accrington, 19h15 ngày 11/1, FA ...', NULL, NULL, 0, '2025-01-11 13:06:44', '2025-01-11 13:06:44'),
(33, '1-11-2025-22', 'Khi Liverpool mặc áo vàng tại Anfield vì quy định kỳ lạ', 'Khi Liverpool mặc áo vàng tại Anfield vì quy định kỳ lạ', 'Khi Liverpool mặc áo vàng tại Anfield vì quy định kỳ lạ', NULL, NULL, 0, '2025-01-11 13:06:44', '2025-01-11 13:06:44'),
(34, '1-11-2025-23', 'Link xem trực tiếp Liverpool vs Accrington FA Cup 19h15 ...', 'Link xem trực tiếp Liverpool vs Accrington FA Cup 19h15 ...', 'Link xem trực tiếp Liverpool vs Accrington FA Cup 19h15 ...', NULL, NULL, 0, '2025-01-11 13:06:44', '2025-01-11 13:06:44'),
(35, '1-11-2025-24', 'Trực tiếp bóng đá Chelsea - Morecambe: Tìm lại niềm vui ...', 'Trực tiếp bóng đá Chelsea - Morecambe: Tìm lại niềm vui ...', 'Trực tiếp bóng đá Chelsea - Morecambe: Tìm lại niềm vui ...', NULL, NULL, 0, '2025-01-11 13:06:44', '2025-01-11 13:06:44'),
(36, '1-11-2025-25', 'Nhận định soi kèo Liverpool vs Accrington lúc 19h15 ngày 11 ...', 'Nhận định soi kèo Liverpool vs Accrington lúc 19h15 ngày 11 ...', 'Nhận định soi kèo Liverpool vs Accrington lúc 19h15 ngày 11 ...', NULL, NULL, 0, '2025-01-11 13:06:44', '2025-01-11 13:06:44'),
(37, '1-11-2025-26', 'Nhận định Liverpool vs Accrington, Cup FA Anh, lực lượng ...', 'Nhận định Liverpool vs Accrington, Cup FA Anh, lực lượng ...', 'Nhận định Liverpool vs Accrington, Cup FA Anh, lực lượng ...', NULL, NULL, 0, '2025-01-11 13:06:44', '2025-01-11 13:06:44'),
(38, '1-11-2025-27', 'Liverpool vs Accrington trực tiếp điểm số,sự dự đoán()', 'Liverpool vs Accrington trực tiếp điểm số,sự dự đoán()', 'Liverpool vs Accrington trực tiếp điểm số,sự dự đoán()', NULL, NULL, 0, '2025-01-11 13:06:44', '2025-01-11 13:06:44'),
(39, '1-11-2025-28', 'Nhận định Liverpool vs Accrington: Đội chủ nhà áp đảo tại ...', 'Nhận định Liverpool vs Accrington: Đội chủ nhà áp đảo tại ...', 'Nhận định Liverpool vs Accrington: Đội chủ nhà áp đảo tại ...', NULL, NULL, 0, '2025-01-11 13:06:44', '2025-01-11 13:06:44'),
(40, '1-11-2025-29', 'Van Dijk tiết lộ mối lo ngại các đồng đội Liverpool bị mạng xã ...', 'Van Dijk tiết lộ mối lo ngại các đồng đội Liverpool bị mạng xã ...', 'Van Dijk tiết lộ mối lo ngại các đồng đội Liverpool bị mạng xã ...', NULL, NULL, 0, '2025-01-11 13:06:44', '2025-01-11 13:06:44'),
(41, '1-11-2025-30', 'các kết quả, lịch thi đấu, Liverpool vs Accrington live', 'các kết quả, lịch thi đấu, Liverpool vs Accrington live', 'các kết quả, lịch thi đấu, Liverpool vs Accrington live', NULL, NULL, 0, '2025-01-11 13:06:44', '2025-01-11 13:06:44'),
(42, '1-11-2025-31', 'Trực tiếp giữa Liverpool vs Accrington Stanley ngày 11/01/2025', 'Trực tiếp giữa Liverpool vs Accrington Stanley ngày 11/01/2025', 'Trực tiếp giữa Liverpool vs Accrington Stanley ngày 11/01/2025', NULL, NULL, 0, '2025-01-11 13:06:44', '2025-01-11 13:06:44'),
(43, '1-11-2025-32', 'Nhận định, dự đoán Liverpool vs Accrington: Áp đảo từ ...', 'Nhận định, dự đoán Liverpool vs Accrington: Áp đảo từ ...', 'Nhận định, dự đoán Liverpool vs Accrington: Áp đảo từ ...', NULL, NULL, 0, '2025-01-11 13:06:44', '2025-01-11 13:06:44'),
(44, '1-11-2025-33', 'Liverpool FC đấu với Accrington Stanley FC Dự đoán & Mẹo', 'Liverpool FC đấu với Accrington Stanley FC Dự đoán & Mẹo', 'Liverpool FC đấu với Accrington Stanley FC Dự đoán & Mẹo', NULL, NULL, 0, '2025-01-11 13:06:44', '2025-01-11 13:06:44'),
(45, '1-11-2025-34', 'Bóng đá: lịch thi đấu, kết quả Accrington', 'Bóng đá: lịch thi đấu, kết quả Accrington', 'Bóng đá: lịch thi đấu, kết quả Accrington', NULL, NULL, 0, '2025-01-11 13:06:44', '2025-01-11 13:06:44'),
(46, '1-11-2025-35', 'Tin tức - Liverpool - Accrington: Dưỡng sức chờ \'đại địch\'', 'Tin tức - Liverpool - Accrington: Dưỡng sức chờ \'đại địch\'', 'Tin tức - Liverpool - Accrington: Dưỡng sức chờ \'đại địch\'', NULL, NULL, 0, '2025-01-11 13:06:44', '2025-01-11 13:06:44'),
(47, '1-11-2025-36', 'Kết quả Liverpool vs Accrington Stanley, 19h15 11/01', 'Kết quả Liverpool vs Accrington Stanley, 19h15 11/01', 'Kết quả Liverpool vs Accrington Stanley, 19h15 11/01', NULL, NULL, 0, '2025-01-11 13:06:44', '2025-01-11 13:06:44'),
(48, '1-11-2025-37', 'Nhận định Liverpool vs Accrington, 19h15 ngày 11/01 tại cúp FA', 'Nhận định Liverpool vs Accrington, 19h15 ngày 11/01 tại cúp FA', 'Nhận định Liverpool vs Accrington, 19h15 ngày 11/01 tại cúp FA', NULL, NULL, 0, '2025-01-11 13:06:44', '2025-01-11 13:06:44'),
(49, '1-11-2025-38', 'Sự chuẩn bị cho Cúp FA của Liverpool bị gián đoạn do ...', 'Sự chuẩn bị cho Cúp FA của Liverpool bị gián đoạn do ...', 'Sự chuẩn bị cho Cúp FA của Liverpool bị gián đoạn do ...', NULL, NULL, 0, '2025-01-11 13:06:44', '2025-01-11 13:06:44'),
(50, '1-11-2025-39', 'Phong độ Liverpool vs Accrington - Cúp FA - Wap.vn', 'Phong độ Liverpool vs Accrington - Cúp FA - Wap.vn', 'Phong độ Liverpool vs Accrington - Cúp FA - Wap.vn', NULL, NULL, 0, '2025-01-11 13:06:44', '2025-01-11 13:06:44'),
(51, '1-11-2025-40', 'Lịch thi đấu Liverpool mới nhất trên VnExpress', 'Lịch thi đấu Liverpool mới nhất trên VnExpress', 'Lịch thi đấu Liverpool mới nhất trên VnExpress', NULL, NULL, 0, '2025-01-11 13:06:44', '2025-01-11 13:06:44'),
(52, '1-11-2025-41', 'Liverpool đấu với Accrington Stanley, thống kê đối đầu', 'Liverpool đấu với Accrington Stanley, thống kê đối đầu', 'Liverpool đấu với Accrington Stanley, thống kê đối đầu', NULL, NULL, 0, '2025-01-11 13:06:44', '2025-01-11 13:06:44'),
(53, '1-11-2025-42', 'Kết quả Liverpool vs Accrington Stanley, 19h15 ngày 11/01', 'Kết quả Liverpool vs Accrington Stanley, 19h15 ngày 11/01', 'Kết quả Liverpool vs Accrington Stanley, 19h15 ngày 11/01', NULL, NULL, 0, '2025-01-11 13:06:44', '2025-01-11 13:06:44'),
(54, '1-11-2025-43', 'Trực tiếp Liverpool vs Accrington Stanley vào lúc 19:15 11 ...', 'Trực tiếp Liverpool vs Accrington Stanley vào lúc 19:15 11 ...', 'Trực tiếp Liverpool vs Accrington Stanley vào lúc 19:15 11 ...', NULL, NULL, 0, '2025-01-11 13:06:44', '2025-01-11 13:06:44'),
(55, '1-11-2025-44', 'Liverpool vs. Accrington Stanley: Preview, team news ...', 'Liverpool vs. Accrington Stanley: Preview, team news ...', 'Liverpool vs. Accrington Stanley: Preview, team news ...', NULL, NULL, 0, '2025-01-11 13:06:44', '2025-01-11 13:06:44'),
(56, '1-11-2025-45', 'Lịch thi đấu và trực tiếp bóng đá hôm nay 11/1', 'Lịch thi đấu và trực tiếp bóng đá hôm nay 11/1', 'Lịch thi đấu và trực tiếp bóng đá hôm nay 11/1', NULL, NULL, 0, '2025-01-11 13:06:44', '2025-01-11 13:06:44'),
(57, '1-11-2025-46', 'NHẬN ĐỊNH LIVERPOOL VS ACCRINGTON, 19H15 NGÀY ...', 'NHẬN ĐỊNH LIVERPOOL VS ACCRINGTON, 19H15 NGÀY ...', 'NHẬN ĐỊNH LIVERPOOL VS ACCRINGTON, 19H15 NGÀY ...', NULL, NULL, 0, '2025-01-11 13:06:44', '2025-01-11 13:06:44'),
(58, '1-11-2025-47', 'Xem trực tuyến trận Liverpool vs AccringtonCúp FA ...', 'Xem trực tuyến trận Liverpool vs AccringtonCúp FA ...', 'Xem trực tuyến trận Liverpool vs AccringtonCúp FA ...', NULL, NULL, 0, '2025-01-11 13:06:44', '2025-01-11 13:06:44'),
(59, '1-11-2025-48', 'Liverpool vs Accrington Stanley Emirates FA Cup 3rd ...', 'Liverpool vs Accrington Stanley Emirates FA Cup 3rd ...', 'Liverpool vs Accrington Stanley Emirates FA Cup 3rd ...', NULL, NULL, 0, '2025-01-11 13:06:44', '2025-01-11 13:06:44'),
(60, '1-11-2025-49', 'Nhận định bóng đá trận Liverpool Với Accrington Lúc ...', 'Nhận định bóng đá trận Liverpool Với Accrington Lúc ...', 'Nhận định bóng đá trận Liverpool Với Accrington Lúc ...', NULL, NULL, 0, '2025-01-11 13:06:44', '2025-01-11 13:06:44'),
(61, '1-11-2025-50', 'Where to watch Liverpool vs. Accrington Stanley live ...', 'Where to watch Liverpool vs. Accrington Stanley live ...', 'Where to watch Liverpool vs. Accrington Stanley live ...', NULL, NULL, 0, '2025-01-11 13:06:44', '2025-01-11 13:06:44'),
(62, '1-11-2025-51', 'Liverpool vs Accrington Stanley dự đoán', 'Liverpool vs Accrington Stanley dự đoán', 'Liverpool vs Accrington Stanley dự đoán', NULL, NULL, 0, '2025-01-11 13:06:44', '2025-01-11 13:06:44'),
(63, '1-11-2025-52', 'Nhận định Liverpool vs Accrington Stanley | Vòng 1/32 ...', 'Nhận định Liverpool vs Accrington Stanley | Vòng 1/32 ...', 'Nhận định Liverpool vs Accrington Stanley | Vòng 1/32 ...', NULL, NULL, 0, '2025-01-11 13:06:44', '2025-01-11 13:06:44'),
(64, '1-11-2025-53', 'Nhận định bóng đá Liverpool vs Accrington Stanley (19h15 ...', 'Nhận định bóng đá Liverpool vs Accrington Stanley (19h15 ...', 'Nhận định bóng đá Liverpool vs Accrington Stanley (19h15 ...', NULL, NULL, 0, '2025-01-11 13:06:44', '2025-01-11 13:06:44'),
(65, '1-11-2025-54', 'Trực tiếp Liverpool vs Accrington Stanley vào lúc 11/01/2025', 'Trực tiếp Liverpool vs Accrington Stanley vào lúc 11/01/2025', 'Trực tiếp Liverpool vs Accrington Stanley vào lúc 11/01/2025', NULL, NULL, 0, '2025-01-11 13:06:44', '2025-01-11 13:06:44'),
(66, '1-11-2025-55', 'Trực tiếp Liverpool vs Accrington vào 19h15 11/01/2025', 'Trực tiếp Liverpool vs Accrington vào 19h15 11/01/2025', 'Trực tiếp Liverpool vs Accrington vào 19h15 11/01/2025', NULL, NULL, 0, '2025-01-11 13:06:44', '2025-01-11 13:06:44'),
(67, '1-11-2025-56', 'Accrington Stanley cần gì để đối phó với Liverpool?', 'Accrington Stanley cần gì để đối phó với Liverpool?', 'Accrington Stanley cần gì để đối phó với Liverpool?', NULL, NULL, 0, '2025-01-11 13:06:44', '2025-01-11 13:06:44'),
(68, '1-11-2025-57', 'Nhận định và phân tích bóng đá Liverpool vs Accrington', 'Nhận định và phân tích bóng đá Liverpool vs Accrington', 'Nhận định và phân tích bóng đá Liverpool vs Accrington', NULL, NULL, 0, '2025-01-11 13:06:44', '2025-01-11 13:06:44'),
(69, '1-11-2025-58', 'Liverpool vs Accrington: Preview, predictions and lineups', 'Liverpool vs Accrington: Preview, predictions and lineups', 'Liverpool vs Accrington: Preview, predictions and lineups', NULL, NULL, 0, '2025-01-11 13:06:44', '2025-01-11 13:06:44'),
(70, '1-11-2025-59', 'Nhận định, dự đoán Liverpool vs Accrington Stanley (19h15 ...', 'Nhận định, dự đoán Liverpool vs Accrington Stanley (19h15 ...', 'Nhận định, dự đoán Liverpool vs Accrington Stanley (19h15 ...', NULL, NULL, 0, '2025-01-11 13:06:44', '2025-01-11 13:06:44'),
(71, '1-11-2025-60', 'Xem trực tiếp trận đấu Liverpool vs Accrington Stanley lúc 19 ...', 'Xem trực tiếp trận đấu Liverpool vs Accrington Stanley lúc 19 ...', 'Xem trực tiếp trận đấu Liverpool vs Accrington Stanley lúc 19 ...', NULL, NULL, 0, '2025-01-11 13:06:44', '2025-01-11 13:06:44'),
(72, '1-11-2025-61', 'Trực tiếp trận đấu Liverpool vs Accrington Stanley ngày 11/01 ...', 'Trực tiếp trận đấu Liverpool vs Accrington Stanley ngày 11/01 ...', 'Trực tiếp trận đấu Liverpool vs Accrington Stanley ngày 11/01 ...', NULL, NULL, 0, '2025-01-11 13:06:44', '2025-01-11 13:06:44'),
(73, '1-11-2025-62', 'Trực tiếp Liverpool vs Accrington Stanley 12:15 ngày 11/01 ...', 'Trực tiếp Liverpool vs Accrington Stanley 12:15 ngày 11/01 ...', 'Trực tiếp Liverpool vs Accrington Stanley 12:15 ngày 11/01 ...', NULL, NULL, 0, '2025-01-11 13:06:44', '2025-01-11 13:06:44'),
(74, '1-11-2025-63', 'Liverpool Vs Accrington 19h15 Ngày 11/1: Chiến Thắng đậm ...', 'Liverpool Vs Accrington 19h15 Ngày 11/1: Chiến Thắng đậm ...', 'Liverpool Vs Accrington 19h15 Ngày 11/1: Chiến Thắng đậm ...', NULL, NULL, 0, '2025-01-11 13:06:44', '2025-01-11 13:06:44'),
(75, '1-11-2025-64', 'Liverpool vs. Accrington Stanley: 10 key things to know ...', 'Liverpool vs. Accrington Stanley: 10 key things to know ...', 'Liverpool vs. Accrington Stanley: 10 key things to know ...', NULL, NULL, 0, '2025-01-11 13:06:44', '2025-01-11 13:06:44'),
(76, '1-11-2025-65', 'Nhận định Liverpool vs Accrington 19h15 ngày 11/1', 'Nhận định Liverpool vs Accrington 19h15 ngày 11/1', 'Nhận định Liverpool vs Accrington 19h15 ngày 11/1', NULL, NULL, 0, '2025-01-11 13:06:44', '2025-01-11 13:06:44'),
(77, '1-11-2025-66', '[NHẬN ĐỊNH BÓNG ĐÁ] LIVERPOOL – ACCRINGTON', '[NHẬN ĐỊNH BÓNG ĐÁ] LIVERPOOL – ACCRINGTON', '[NHẬN ĐỊNH BÓNG ĐÁ] LIVERPOOL – ACCRINGTON', NULL, NULL, 0, '2025-01-11 13:06:44', '2025-01-11 13:06:44'),
(78, '1-11-2025-67', 'Accrington Stanley - blv joker - Trực Tiếp', 'Accrington Stanley - blv joker - Trực Tiếp', 'Accrington Stanley - blv joker - Trực Tiếp', NULL, NULL, 0, '2025-01-11 13:06:44', '2025-01-11 13:06:44'),
(79, '1-11-2025-68', 'Khó khăn bủa vây Accrington Stanley khi đối đầu Liverpool', 'Khó khăn bủa vây Accrington Stanley khi đối đầu Liverpool', 'Khó khăn bủa vây Accrington Stanley khi đối đầu Liverpool', NULL, NULL, 0, '2025-01-11 13:06:44', '2025-01-11 13:06:44'),
(80, '1-11-2025-69', 'Liverpool vs. Accrington Stanley | FA Cup', 'Liverpool vs. Accrington Stanley | FA Cup', 'Liverpool vs. Accrington Stanley | FA Cup', NULL, NULL, 0, '2025-01-11 13:06:44', '2025-01-11 13:06:44'),
(81, '1-11-2025-70', 'BLV RIO - Trực Tiếp', 'BLV RIO - Trực Tiếp', 'BLV RIO - Trực Tiếp', NULL, NULL, 0, '2025-01-11 13:06:44', '2025-01-11 13:06:44'),
(82, '1-11-2025-71', 'Laykinh Live Trực Tiếp Liverpool vs Accrington Stanley 12:15 ...', 'Laykinh Live Trực Tiếp Liverpool vs Accrington Stanley 12:15 ...', 'Laykinh Live Trực Tiếp Liverpool vs Accrington Stanley 12:15 ...', NULL, NULL, 0, '2025-01-11 13:06:44', '2025-01-11 13:06:44'),
(83, '1-11-2025-72', 'Is Liverpool vs Accrington Stanley on TV today? Kick-off ...', 'Is Liverpool vs Accrington Stanley on TV today? Kick-off ...', 'Is Liverpool vs Accrington Stanley on TV today? Kick-off ...', NULL, NULL, 0, '2025-01-11 13:06:44', '2025-01-11 13:06:44'),
(84, '1-11-2025-73', 'How to watch Liverpool vs Accrington Stanley in US and UK', 'How to watch Liverpool vs Accrington Stanley in US and UK', 'How to watch Liverpool vs Accrington Stanley in US and UK', NULL, NULL, 0, '2025-01-11 13:06:44', '2025-01-11 13:06:44'),
(85, '1-11-2025-74', 'How to watch Liverpool vs Accrington live stream FREE', 'How to watch Liverpool vs Accrington live stream FREE', 'How to watch Liverpool vs Accrington live stream FREE', NULL, NULL, 0, '2025-01-11 13:06:44', '2025-01-11 13:06:44');

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cache`
--

INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('ca3512f4dfa95a03169c5a670a4c91a19b3077b4', 'i:1;', 1736600861),
('ca3512f4dfa95a03169c5a670a4c91a19b3077b4:timer', 'i:1736600861;', 1736600861);

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint UNSIGNED NOT NULL,
  `reserved_at` int UNSIGNED DEFAULT NULL,
  `available_at` int UNSIGNED NOT NULL,
  `created_at` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
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
(22, '2024_12_24_063054_create_settings_table', 19),
(23, '2025_01_05_081208_create_access_history_table', 20),
(24, '2025_01_10_183719_create_blogs_table', 21);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_reset_tokens`
--

INSERT INTO `password_reset_tokens` (`email`, `token`, `created_at`) VALUES
('2509roblox@gmail.com', '$2y$12$SU/4Fr8gNRU6ug/Xa1rO9eBDdvnSdjmvOyh.KkOwiOPLtaTSdf6h6', '2024-12-25 03:11:54');

-- --------------------------------------------------------

--
-- Table structure for table `payment_history`
--

CREATE TABLE `payment_history` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `transaction_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` decimal(30,2) NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bank` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payment_history`
--

INSERT INTO `payment_history` (`id`, `user_id`, `transaction_code`, `amount`, `status`, `bank`, `created_at`, `updated_at`) VALUES
(126, 39, '5820983', '100000.00', 'thành công', 'MBBank', '2024-12-28 02:20:36', '2024-12-28 02:20:36'),
(127, 39, '5858101', '100000.00', 'thành công', 'MBBank', '2024-12-29 09:54:53', '2024-12-29 09:54:53'),
(128, 39, '5858153', '110000.00', 'thành công', 'MBBank', '2024-12-29 09:59:09', '2024-12-29 09:59:09');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('LjSDzCbikjChG2Iu99CksmdWvq7M7N9WeiRhGG9U', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiZlBZRDU0MGNNRDMwVGtQb1FvSUxwUlFqSTZ3ZGU1M0tDUDk1anJkQyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1736597796),
('o0ZlTBnZnSzSiJGVjFpmh11GAxjZQvn5dnPpm4dJ', 39, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 'YTo3OntzOjY6Il90b2tlbiI7czo0MDoianprZHB5T2o2Z0JiMG9YcExMWmd1SE5Gcko5OWVRTzFjdzh1S2h5VCI7czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6Mzk7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czoxNzoicGFzc3dvcmRfaGFzaF93ZWIiO3M6NjA6IiQyeSQxMiRIZ01WNW96VTVIOU1XUXV6Sll1VFNlVWJVc3VBZ3BzNjhaZHlMQ3FTUFlUNzlHQUkzdG5GeSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9zaXRlbWFwLnhtbCI7fXM6ODoiZmlsYW1lbnQiO2E6MDp7fXM6NjoidGFibGVzIjthOjE6e3M6MjU6Ikxpc3RCbG9nc190b2dnbGVkX2NvbHVtbnMiO2E6Mjp7czoxMDoiY3JlYXRlZF9hdCI7YjoxO3M6MTA6InVwZGF0ZWRfYXQiO2I6MDt9fX0=', 1736600855),
('RVpkgmXaKhjGsd0da6AkhU0XIEthRVu3gRCqavad', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMEZRWWdsamlDQVJkWGhLRG5OeGQ4aUhiRE5mMURKTE5pZ3dhZEtvTyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NzM6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9ibG9nL3JlYWxtZS0xNC1wcm8tY2hpbmgtdGh1Yy1yYS1tYXQtdGFpLXRydW5nLXF1b2MiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1736598085),
('x3HsKI5z1OGG3ktECMayCy99CvOExuTd5mdhGtjF', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiOHQ3bzVBR0ZQTG1IMGdhdFM5MlNtcXFycjdDaElXUFdwdGlsUERDVSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1736597122);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint UNSIGNED NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `banner` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `loading_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `website_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `website_description` text COLLATE utf8mb4_unicode_ci,
  `contact` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `notification` longtext COLLATE utf8mb4_unicode_ci,
  `prefix` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `min_deposit` decimal(10,2) NOT NULL DEFAULT '0.00',
  `account_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `account_name_qr` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sepay_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sepay_account_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telegram_bot_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telegram_chat_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `maintenance` int NOT NULL DEFAULT '0',
  `deadline` datetime DEFAULT NULL,
  `anti_devtool` tinyint DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `avatar`, `icon`, `logo`, `banner`, `loading_image`, `website_name`, `website_description`, `contact`, `notification`, `prefix`, `min_deposit`, `account_number`, `account_name`, `created_at`, `updated_at`, `account_name_qr`, `bank_name`, `sepay_token`, `sepay_account_number`, `telegram_bot_token`, `telegram_chat_id`, `maintenance`, `deadline`, `anti_devtool`) VALUES
(1, '01JG0XGBRYKZKZP4XA684C5K2K.png', '01JG0XGBSGNV6Y2297CTVXYNGE.png', '01JFW6CXW3980HQ30XJF3TCTWA.webp', '01JG0XTTYH3WR4D7MJM9X46S8D.png', '01JFW6CXW7N938ZNMG8PR3VA7V.webp', 'CODEPHP.SITE', 'Chúng tôi cung cấp giải pháp tăng tương tác, mã nguồn chất lượng và dịch vụ thiết kế website chuyên nghiệp, giúp bạn phát triển doanh nghiệp trực tuyến hiệu quả. Khám phá ngay!', 'https://zalo.me/0966579217', '<p>&nbsp;<strong>Chào Mừng Đến Với CODEPHP.SITE</strong></p><p><strong><em>theme wordpress giá rẻ chỉ 20k&nbsp; &nbsp;</em></strong><a href=\"https://giangtran.com.vn/source-code/list/334/\"><strong><em>tại đây</em></strong></a></p><p>Hỗ Trợ Nhanh Qua: <a href=\"https://zalo.me/1715225565559061022\"><strong>Zalo</strong></a></p>', 'HG ', '10000.00', '0966579217', 'TRẦN LÊ HOÀNG GIANG', '2024-12-23 23:34:47', '2025-01-11 02:25:07', 'TRAN LE HOANG GIANG', 'mb', 'FHQMNTA45AVPJTZAUU2C61UZQ3OWBZMFDII1MESK8GXYVPB7NKS7JHYLN0PAXQEL', '0966579217', '7705050554:AAHLZs4l_cnG7nJqvwMDrt-4ITk3LWu8aQA', '6708960219', 0, '2024-12-27 21:50:04', 0);

-- --------------------------------------------------------

--
-- Table structure for table `smm_categories`
--

CREATE TABLE `smm_categories` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `smm_categories`
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
-- Table structure for table `smm_orders`
--

CREATE TABLE `smm_orders` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `smm_service_id` bigint UNSIGNED NOT NULL,
  `quantity` int NOT NULL,
  `total_price` decimal(15,2) NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `unit_price` decimal(15,2) NOT NULL,
  `start_count` int NOT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remains` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `smm_orders`
--

INSERT INTO `smm_orders` (`id`, `user_id`, `smm_service_id`, `quantity`, `total_price`, `status`, `unit_price`, `start_count`, `link`, `remains`, `created_at`, `updated_at`) VALUES
(94, 39, 294, 500, '12185.00', 'pending', '24.37', 0, 'https://giangtran.com.vn/', 500, '2024-12-26 08:01:19', '2024-12-26 08:01:19');

-- --------------------------------------------------------

--
-- Table structure for table `smm_services`
--

CREATE TABLE `smm_services` (
  `id` bigint UNSIGNED NOT NULL,
  `smmcategory_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `time` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `min` int DEFAULT NULL,
  `max` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `old_price` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `smm_services`
--

INSERT INTO `smm_services` (`id`, `smmcategory_id`, `name`, `price`, `is_active`, `time`, `min`, `max`, `created_at`, `updated_at`, `old_price`) VALUES
(155, 29, 'ˢˢ Facebook Reel & Video Views | Instant | Statistics Support | Views 3 Seconds+ ♻️⛔🔥', '2.13', 1, '20 phút', 500, 1000000000, '2024-12-12 14:19:26', '2024-12-12 14:19:26', '1.78'),
(156, 29, 'ˢˢ Facebook Reel & Video Views | Instant | Statistics Support | Views 10 Seconds+ ♻️⛔🔥', '4.57', 1, 'Chưa đủ dữ liệu', 500, 1000000000, '2024-12-12 14:19:26', '2024-12-12 14:19:26', '3.81'),
(157, 29, 'ˢˢ Facebook Reel & Video Views | Instant | Statistics Support | Views 15 Seconds+ ♻️⛔🔥', '5.18', 1, 'Chưa đủ dữ liệu', 500, 1000000000, '2024-12-12 14:19:26', '2024-12-12 14:19:26', '4.32'),
(158, 29, 'ˢˢ Facebook Reel & Video Views | Instant | Statistics Support | Views 30 Seconds+ ♻️⛔🔥', '5.79', 1, 'Chưa đủ dữ liệu', 500, 1000000000, '2024-12-12 14:19:26', '2024-12-12 14:19:26', '4.82'),
(159, 29, 'ˢˢ Facebook Reel & Video Views | Instant | Statistics Support | Views 60 Seconds+ ♻️⛔🔥', '6.40', 1, 'Chưa đủ dữ liệu', 500, 1000000000, '2024-12-12 14:19:26', '2024-12-12 14:19:26', '5.33'),
(160, 29, 'ˢˢ Facebook Reel & Video Views | Instant | Statistics Support | Views 3 Minutes+ ♻️⛔🔥', '12.49', 1, 'Chưa đủ dữ liệu', 500, 1000000000, '2024-12-12 14:19:26', '2024-12-12 14:19:26', '10.41'),
(161, 29, 'ˢˢ Facebook Reel & Video Views | Instant | Statistics Support | Views 6 Minutes+ ♻️⛔🔥', '17.06', 1, 'Chưa đủ dữ liệu', 500, 1000000000, '2024-12-12 14:19:26', '2024-12-12 14:19:26', '14.22'),
(162, 29, 'ˢˢ Facebook Reel & Video Views | Instant | Statistics Support | Views 10 Minutes+ ♻️⛔🔥', '25.29', 1, 'Chưa đủ dữ liệu', 500, 1000000000, '2024-12-12 14:19:26', '2024-12-12 14:19:26', '21.07'),
(163, 29, 'ᵐˢ Facebook Reel & Video Views | Instant | Statistics Support | Views 3 Seconds+ ♻️⛔🔥', '10.66', 1, '13 phút', 500, 1000000000, '2024-12-12 14:19:26', '2024-12-12 14:19:26', '8.89'),
(164, 29, 'ᵐˢ Facebook Reel & Video Views | Instant | Statistics Support | Views 10 Seconds+ ♻️⛔🔥', '11.27', 1, 'Chưa đủ dữ liệu', 500, 1000000000, '2024-12-12 14:19:26', '2024-12-12 14:19:26', '9.39'),
(165, 29, 'ᵐˢ Facebook Reel & Video Views | Instant | Statistics Support | Views 15 Seconds+ ♻️⛔🔥', '11.88', 1, 'Chưa đủ dữ liệu', 500, 1000000000, '2024-12-12 14:19:26', '2024-12-12 14:19:26', '9.90'),
(166, 29, 'ᵐˢ Facebook Reel & Video Views | Instant | Statistics Support | Views 30 Seconds+ ♻️⛔🔥', '13.71', 1, 'Chưa đủ dữ liệu', 500, 1000000000, '2024-12-12 14:19:26', '2024-12-12 14:19:26', '11.42'),
(167, 29, 'ᵐˢ Facebook Reel & Video Views | Instant | Statistics Support | Views 60 Seconds+ ♻️⛔🔥', '15.84', 1, 'Chưa đủ dữ liệu', 500, 1000000000, '2024-12-12 14:19:26', '2024-12-12 14:19:26', '13.20'),
(168, 29, 'ᵐˢ Facebook Reel & Video Views | Instant | Statistics Support | Views 3 Minutes+ ♻️⛔🔥', '33.51', 1, 'Chưa đủ dữ liệu', 500, 1000000000, '2024-12-12 14:19:26', '2024-12-12 14:19:26', '27.93'),
(169, 29, 'ᵐˢ Facebook Reel & Video Views | Instant | Statistics Support | Views 6 Minutes+ ♻️⛔🔥', '42.65', 1, 'Chưa đủ dữ liệu', 500, 1000000000, '2024-12-12 14:19:26', '2024-12-12 14:19:26', '35.54'),
(170, 29, 'ᵐˢ Facebook Reel & Video Views | Instant | Statistics Support | Views 10 Minutes+ ♻️⛔🔥', '63.98', 1, 'Chưa đủ dữ liệu', 500, 1000000000, '2024-12-12 14:19:26', '2024-12-12 14:19:26', '53.31'),
(171, 29, 'ᶠˢ Facebook Reel & Video Views | Instant | Statistics Support | Views 3 Seconds+ ♻️⛔🔥', '12.80', 1, 'Chưa đủ dữ liệu', 500, 1000000000, '2024-12-12 14:19:26', '2024-12-12 14:19:26', '10.66'),
(172, 29, 'ᶠˢ Facebook Reel & Video Views | Instant | Statistics Support | Views 10 Seconds+ ♻️⛔🔥', '13.71', 1, 'Chưa đủ dữ liệu', 500, 1000000000, '2024-12-12 14:19:26', '2024-12-12 14:19:26', '11.42'),
(173, 29, 'ᶠˢ Facebook Reel & Video Views | Instant | Statistics Support | Views 15 Seconds+ ♻️⛔🔥', '14.62', 1, 'Chưa đủ dữ liệu', 500, 1000000000, '2024-12-12 14:19:26', '2024-12-12 14:19:26', '12.19'),
(174, 29, 'ᶠˢ Facebook Reel & Video Views | Instant | Statistics Support | Views 30 Seconds+ ♻️⛔🔥', '17.06', 1, 'Chưa đủ dữ liệu', 500, 1000000000, '2024-12-12 14:19:26', '2024-12-12 14:19:26', '14.22'),
(175, 29, 'ᶠˢ Facebook Reel & Video Views | Instant | Statistics Support | Views 60 Seconds+ ♻️⛔🔥', '19.80', 1, 'Chưa đủ dữ liệu', 500, 1000000000, '2024-12-12 14:19:26', '2024-12-12 14:19:26', '16.50'),
(176, 29, 'ᶠˢ Facebook Reel & Video Views | Instant | Statistics Support | Views 3 Minutes+ ♻️⛔🔥', '38.08', 1, 'Chưa đủ dữ liệu', 500, 1000000000, '2024-12-12 14:19:26', '2024-12-12 14:19:26', '31.73'),
(177, 29, 'ᶠˢ Facebook Reel & Video Views | Instant | Statistics Support | Views 6 Minutes+ ♻️⛔🔥', '50.88', 1, 'Chưa đủ dữ liệu', 500, 1000000000, '2024-12-12 14:19:26', '2024-12-12 14:19:26', '42.40'),
(178, 29, 'ᶠˢ Facebook Reel & Video Views | Instant | Statistics Support | Views 10 Minutes+ ♻️⛔🔥', '79.21', 1, 'Chưa đủ dữ liệu', 500, 1000000000, '2024-12-12 14:19:26', '2024-12-12 14:19:26', '66.01'),
(179, 30, 'Facebook Page/Profile Followers | Instant | 20K Per Day | 30 Days Refill ⚡♻️⛔', '36.56', 1, '35 phút', 500, 50000, '2024-12-12 14:19:26', '2024-12-12 14:19:26', '30.46'),
(180, 30, 'Facebook Profile/Page Followers | Instant | 500K Per Day | 7 Days Refill ⚡♻️⛔', '54.84', 1, 'Chưa đủ dữ liệu', 500, 50000, '2024-12-12 14:19:26', '2024-12-12 14:19:26', '45.70'),
(181, 30, 'Facebook Followers | Instant | 100% Real Data & Old Data | 2K Per Day ⚡⛔', '25.89', 1, '22 giờ 34 phút', 500, 20000, '2024-12-12 14:19:26', '2024-12-12 14:19:26', '21.58'),
(182, 30, 'Facebook Followers | Instant | 100% Real Data & Old Data | 5K Per Day ⚡⛔', '54.84', 1, '1 giờ 19 phút', 500, 50000, '2024-12-12 14:19:26', '2024-12-12 14:19:26', '45.70'),
(183, 30, 'Facebook Followers | Instant | 100% Real Data & Old Data | 8K Per Day ⚡⛔', '67.02', 1, '1 giờ 19 phút', 500, 50000, '2024-12-12 14:19:26', '2024-12-12 14:19:26', '55.85'),
(184, 30, 'Facebook Followers | Instant | 100% Real Data & Old Data | 15K Per Day ⚡⛔', '97.49', 1, '1 giờ 19 phút', 500, 50000, '2024-12-12 14:19:26', '2024-12-12 14:19:26', '81.24'),
(185, 30, 'Facebook Followers | Instant | 100% Real Data & Old Data | 30K Per Day ⚡⛔', '121.86', 1, '1 giờ 19 phút', 500, 50000, '2024-12-12 14:19:26', '2024-12-12 14:19:26', '101.55'),
(186, 31, 'Facebook Group Members | Instant | 200K Per Day | 7 Days Refill ⚡♻️⛔', '41.13', 1, '1 giờ 4 phút', 500, 50000, '2024-12-12 14:19:26', '2024-12-12 14:19:26', '34.27'),
(187, 31, 'Facebook Group Members | Instant | 100% Real & Old Data | 2K Per Day ⚡⛔', '15.84', 1, '9 giờ 21 phút', 500, 20000, '2024-12-12 14:19:26', '2024-12-12 14:19:26', '13.20'),
(188, 31, 'Facebook Group Members | Instant | 100% Real & Old Data | 5K Per Day ⚡⛔', '42.65', 1, 'Chưa đủ dữ liệu', 500, 30000, '2024-12-12 14:19:26', '2024-12-12 14:19:26', '35.54'),
(189, 31, 'Facebook Group Members | Instant | 100% Real & Old Data | 10K Per Day ⚡⛔', '67.02', 1, 'Chưa đủ dữ liệu', 500, 50000, '2024-12-12 14:19:26', '2024-12-12 14:19:26', '55.85'),
(190, 31, 'Facebook Group Members | Instant | 100% Real & Old Data | 20K Per Day ⚡⛔', '121.86', 1, 'Chưa đủ dữ liệu', 500, 50000, '2024-12-12 14:19:26', '2024-12-12 14:19:26', '101.55'),
(191, 32, 'Facebook Page Likes | Instant | High Quality | 7 Days Refill ⚡♻️⛔', '42.65', 1, 'Chưa đủ dữ liệu', 500, 50000, '2024-12-12 14:19:26', '2024-12-12 14:19:26', '35.54'),
(192, 32, 'Facebook Page Likes | Instant | Real Account Slow Delivery ⛔🔥', '60.93', 1, '68 giờ 42 phút', 500, 10000, '2024-12-12 14:19:26', '2024-12-12 14:19:26', '50.77'),
(193, 32, 'Facebook Page Likes | Instant | 10K Per Day | 30 Day Refill ⚡♻️⛔', '38.08', 1, 'Chưa đủ dữ liệu', 500, 50000, '2024-12-12 14:19:26', '2024-12-12 14:19:26', '31.73'),
(194, 32, 'Facebook Page Likes | Instant | 500K Per Day | 7 Days Refill ⚡♻️⛔', '45.70', 1, '24 giờ 45 phút', 500, 50000, '2024-12-12 14:19:26', '2024-12-12 14:19:26', '38.08'),
(195, 32, 'Facebook Page Likes | Instant | 100% Real & Old Data | 2K Per Day ⚡⛔', '33.51', 1, '105 giờ 13 phút', 500, 50000, '2024-12-12 14:19:26', '2024-12-12 14:19:26', '27.93'),
(196, 32, 'Facebook Page Likes | Instant | 100% Real & Old Data | 5K Per Day ⚡⛔', '54.84', 1, '6 giờ 36 phút', 500, 50000, '2024-12-12 14:19:26', '2024-12-12 14:19:26', '45.70'),
(197, 32, 'Facebook Page Likes | Instant | 100% Real & Old Data | 10K Per Day ⚡⛔', '67.02', 1, '15 giờ 26 phút', 500, 50000, '2024-12-12 14:19:26', '2024-12-12 14:19:26', '55.85'),
(198, 32, 'Facebook Page Likes | Instant | 100% Real & Old Data | 20K Per Day ⚡⛔', '121.86', 1, '15 giờ 26 phút', 500, 50000, '2024-12-12 14:19:26', '2024-12-12 14:19:26', '101.55'),
(199, 33, 'Facebook Post Likes | Instant | Real Account Slow Delivery ⛔🔥', '36.56', 1, '65 giờ 51 phút', 500, 10000, '2024-12-12 14:19:26', '2024-12-12 14:19:26', '30.46'),
(200, 33, 'Facebook Post Likes | Instant | Real Account Medium Delivery ⛔🔥', '54.84', 1, '65 giờ 51 phút', 500, 10000, '2024-12-12 14:19:26', '2024-12-12 14:19:26', '45.70'),
(201, 33, 'Facebook Post Reactions | Instant | Real Account Slow Delivery 👍⛔🔥', '36.56', 1, '65 giờ 51 phút', 500, 10000, '2024-12-12 14:19:26', '2024-12-12 14:19:26', '30.46'),
(202, 33, 'Facebook Post Reactions | Instant | Real Account Slow Delivery ❤️⛔🔥', '36.56', 1, '33 giờ 49 phút', 500, 10000, '2024-12-12 14:19:26', '2024-12-12 14:19:26', '30.46'),
(203, 33, 'Facebook Post Reactions | Instant | Real Account Slow Delivery 🥰⛔🔥', '36.56', 1, '17 giờ 20 phút', 500, 10000, '2024-12-12 14:19:26', '2024-12-12 14:19:26', '30.46'),
(204, 33, 'Facebook Post Reactions | Instant | Real Account Slow Delivery 😆⛔🔥', '36.56', 1, 'Chưa đủ dữ liệu', 500, 10000, '2024-12-12 14:19:26', '2024-12-12 14:19:26', '30.46'),
(205, 33, 'Facebook Post Reactions | Instant | Real Account Slow Delivery 😢⛔🔥', '36.56', 1, 'Chưa đủ dữ liệu', 500, 10000, '2024-12-12 14:19:26', '2024-12-12 14:19:26', '30.46'),
(206, 33, 'Facebook Post Reactions | Instant | Real Account Slow Delivery 😲⛔🔥', '36.56', 1, 'Chưa đủ dữ liệu', 500, 10000, '2024-12-12 14:19:26', '2024-12-12 14:19:26', '30.46'),
(207, 33, 'Facebook Post Reactions | Instant | Real Account Slow Delivery 😡⛔🔥', '36.56', 1, 'Chưa đủ dữ liệu', 500, 10000, '2024-12-12 14:19:26', '2024-12-12 14:19:26', '30.46'),
(208, 33, 'Facebook Post Reactions | Instant | 100% Bot Data & Old Data | Like 👍', '20.41', 1, '118 giờ 31 phút', 500, 50000, '2024-12-12 14:19:26', '2024-12-12 14:19:26', '17.01'),
(209, 33, 'Facebook Post Reactions | Instant | 100% Bot Data & Old Data | Love ❤️', '20.41', 1, '158 giờ 22 phút', 500, 50000, '2024-12-12 14:19:26', '2024-12-12 14:19:26', '17.01'),
(210, 33, 'Facebook Post Reactions | Instant | 100% Bot Data & Old Data | Care 🥰', '20.41', 1, '145 giờ 26 phút', 500, 50000, '2024-12-12 14:19:26', '2024-12-12 14:19:26', '17.01'),
(211, 33, 'Facebook Post Reactions | Instant | 100% Bot Data & Old Data | Haha 😆', '20.41', 1, '103 giờ 33 phút', 500, 50000, '2024-12-12 14:19:26', '2024-12-12 14:19:26', '17.01'),
(212, 33, 'Facebook Post Reactions | Instant | 100% Bot Data & Old Data | Sad 😢', '20.41', 1, '81 giờ 58 phút', 500, 50000, '2024-12-12 14:19:26', '2024-12-12 14:19:26', '17.01'),
(213, 33, 'Facebook Post Reactions | Instant | 100% Bot Data & Old Data | Wow 😲', '20.41', 1, '94 giờ 25 phút', 500, 50000, '2024-12-12 14:19:26', '2024-12-12 14:19:26', '17.01'),
(214, 33, 'Facebook Post Reactions | Instant | 100% Bot Data & Old Data | Angry 😡', '20.41', 1, '107 giờ 20 phút', 500, 50000, '2024-12-12 14:19:26', '2024-12-12 14:19:26', '17.01'),
(215, 33, 'Facebook Post Reactions | Instant | 100% Bot Data & Old Data | 👍❤️', '20.41', 1, '106 giờ 26 phút', 500, 50000, '2024-12-12 14:19:26', '2024-12-12 14:19:26', '17.01'),
(216, 33, 'Facebook Post Reactions | Instant | 100% Bot Data & Old Data | 👍❤️🥰', '20.41', 1, '147 giờ 42 phút', 500, 50000, '2024-12-12 14:19:26', '2024-12-12 14:19:26', '17.01'),
(217, 33, 'Facebook Post Reactions | Instant | 100% Bot Data & Old Data | 👍❤️🥰😆', '20.41', 1, '38 giờ 13 phút', 500, 50000, '2024-12-12 14:19:26', '2024-12-12 14:19:26', '17.01'),
(218, 33, 'Facebook Post Reactions | Instant | 100% Bot Data & Old Data | 👍❤️🥰😆😲', '20.41', 1, '124 giờ 21 phút', 500, 50000, '2024-12-12 14:19:26', '2024-12-12 14:19:26', '17.01'),
(219, 33, 'Facebook Post Reactions | Instant | 100% Bot Data & Old Data | 👍❤️🥰😆😢😲', '20.41', 1, '66 giờ 51 phút', 500, 50000, '2024-12-12 14:19:26', '2024-12-12 14:19:26', '17.01'),
(220, 33, 'Facebook Post Reactions | Instant | 100% Bot Data & Old Data | 👍❤️🥰😆😢😲😡', '20.41', 1, '196 giờ 15 phút', 500, 50000, '2024-12-12 14:19:26', '2024-12-12 14:19:26', '17.01'),
(221, 33, 'Facebook Post Reactions | Instant | 100% Real Data & Old Data | Like 👍', '13.71', 1, '20 giờ 33 phút', 500, 100000, '2024-12-12 14:19:26', '2024-12-12 14:19:26', '11.42'),
(222, 33, 'Facebook Post Reactions | Instant | 100% Real Data & Old Data | Love ❤️', '13.71', 1, '27 giờ 33 phút', 500, 100000, '2024-12-12 14:19:26', '2024-12-12 14:19:26', '11.42'),
(223, 33, 'Facebook Post Reactions | Instant | 100% Real Data & Old Data | Care 🥰', '13.71', 1, '65 giờ 37 phút', 500, 100000, '2024-12-12 14:19:26', '2024-12-12 14:19:26', '11.42'),
(224, 33, 'Facebook Post Reactions | Instant | 100% Real Data & Old Data | Haha 😆', '13.71', 1, '36 giờ 52 phút', 500, 100000, '2024-12-12 14:19:26', '2024-12-12 14:19:26', '11.42'),
(225, 33, 'Facebook Post Reactions | Instant | 100% Real Data & Old Data | Sad 😢', '13.71', 1, '42 giờ 26 phút', 500, 100000, '2024-12-12 14:19:26', '2024-12-12 14:19:26', '11.42'),
(226, 33, 'Facebook Post Reactions | Instant | 100% Real Data & Old Data | Wow 😲', '13.71', 1, '26 giờ 58 phút', 500, 100000, '2024-12-12 14:19:26', '2024-12-12 14:19:26', '11.42'),
(227, 33, 'Facebook Post Reactions | Instant | 100% Real Data & Old Data | Angry 😡', '13.71', 1, '27 giờ 5 phút', 500, 100000, '2024-12-12 14:19:26', '2024-12-12 14:19:26', '11.42'),
(228, 33, 'Facebook Post Reactions | Instant | 100% Real Data & Old Data | Like 👍', '25.89', 1, '7 giờ 1 phút', 500, 100000, '2024-12-12 14:19:26', '2024-12-12 14:19:26', '21.58'),
(229, 33, 'Facebook Post Reactions | Instant | 100% Real Data & Old Data | Love ❤️', '25.89', 1, '17 giờ 17 phút', 500, 100000, '2024-12-12 14:19:26', '2024-12-12 14:19:26', '21.58'),
(230, 33, 'Facebook Post Reactions | Instant | 100% Real Data & Old Data | Care 🥰', '25.89', 1, '14 giờ 34 phút', 500, 100000, '2024-12-12 14:19:26', '2024-12-12 14:19:26', '21.58'),
(231, 33, 'Facebook Post Reactions | Instant | 100% Real Data & Old Data | Haha 😆', '25.89', 1, '34 giờ 20 phút', 500, 100000, '2024-12-12 14:19:26', '2024-12-12 14:19:26', '21.58'),
(232, 33, 'Facebook Post Reactions | Instant | 100% Real Data & Old Data | Sad 😢', '25.89', 1, '37 giờ 49 phút', 500, 100000, '2024-12-12 14:19:26', '2024-12-12 14:19:26', '21.58'),
(233, 33, 'Facebook Post Reactions | Instant | 100% Real Data & Old Data | Wow 😲', '25.89', 1, '15 giờ 40 phút', 500, 100000, '2024-12-12 14:19:26', '2024-12-12 14:19:26', '21.58'),
(234, 33, 'Facebook Post Reactions | Instant | 100% Real Data & Old Data | Angry 😡', '25.89', 1, '11 giờ 25 phút', 500, 100000, '2024-12-12 14:19:26', '2024-12-12 14:19:26', '21.58'),
(235, 34, 'TikTok Views | Instant | Ultra Fast & Stable | 10M Per Day ⚡️', '0.01', 1, '1 phút', 500, 10000000, '2024-12-12 14:19:26', '2024-12-12 14:19:26', '0.01'),
(236, 34, 'TikTok Views | Instant | Ultra Fast & Stable | 10M Per Day ⚡️', '0.01', 1, '9 phút', 500, 10000000, '2024-12-12 14:19:26', '2024-12-12 14:19:26', '0.01'),
(237, 34, 'TikTok Views | Instant | Ultra Fast & Stable | 20M Per Day ⚡️', '0.02', 1, '2 phút', 500, 10000000, '2024-12-12 14:19:26', '2024-12-12 14:19:26', '0.02'),
(238, 34, 'TikTok Views | Instant | Ultra Fast & Stable | 50M Per Day ⚡️', '0.02', 1, '3 phút', 500, 10000000, '2024-12-12 14:19:26', '2024-12-12 14:19:26', '0.02'),
(239, 34, 'TikTok Views | Instant | VIP Ultra Fast & Stable | 500M Per Day ⚡️', '0.04', 1, '34 phút', 500, 10000000, '2024-12-12 14:19:26', '2024-12-12 14:19:26', '0.03'),
(240, 35, 'TikTok Likes | Instant | Ultra Fast & High Quality | 30K Per Day ⚡️', '2.44', 1, 'Chưa đủ dữ liệu', 500, 500000, '2024-12-12 14:19:26', '2024-12-12 14:19:26', '2.03'),
(241, 35, 'TikTok Likes | Instant | 𝗦𝘁𝗮𝗯𝗹𝗲 & 𝗘𝘅𝗰𝗲𝗹𝗹𝗲𝗻𝘁 𝗤𝘂𝗮𝗹𝗶𝘁𝘆 | 10K Per Day | Refill 7 Days ⚡️♻️', '3.05', 1, '1 giờ 19 phút', 500, 500000, '2024-12-12 14:19:26', '2024-12-12 14:19:26', '2.54'),
(242, 35, 'TikTok Likes | Instant | 𝗦𝘁𝗮𝗯𝗹𝗲 & 𝗘𝘅𝗰𝗲𝗹𝗹𝗲𝗻𝘁 𝗤𝘂𝗮𝗹𝗶𝘁𝘆 | 10K Per Day | Refill 30 Days ⚡️♻️', '4.42', 1, '1 giờ 26 phút', 500, 500000, '2024-12-12 14:19:26', '2024-12-12 14:19:26', '3.68'),
(243, 35, 'TikTok Likes | Instant | Brazil 🇧🇷 | 50K Per Day | Refill 3 Days ⚡️♻️', '3.96', 1, '8 giờ 6 phút', 500, 1000000, '2024-12-12 14:19:26', '2024-12-12 14:19:26', '3.30'),
(244, 35, 'TikTok Likes | Instant | Brazil 🇧🇷 | 50K Per Day | Refill 7 Days ⚡️♻️', '4.87', 1, 'Chưa đủ dữ liệu', 500, 1000000, '2024-12-12 14:19:26', '2024-12-12 14:19:26', '4.06'),
(245, 35, 'TikTok Likes | Instant | Brazil 🇧🇷 | 50K Per Day | Refill 15 Days ⚡️♻️', '6.09', 1, 'Chưa đủ dữ liệu', 500, 1000000, '2024-12-12 14:19:26', '2024-12-12 14:19:26', '5.08'),
(246, 35, 'TikTok Likes | Instant | Brazil 🇧🇷 | 50K Per Day | Refill 30 Days ⚡️♻️', '7.62', 1, 'Chưa đủ dữ liệu', 500, 1000000, '2024-12-12 14:19:26', '2024-12-12 14:19:26', '6.35'),
(247, 35, '🇻🇳 TikTok Likes | Instant | 10K Per Hour | Real & Bot Data ⚡⛔', '9.75', 1, '3 giờ 17 phút', 500, 10000, '2024-12-12 14:19:26', '2024-12-12 14:19:26', '8.12'),
(248, 35, '🇻🇳 TikTok Likes | Instant | 20K Per Hour | Real & Bot Data ⚡⛔', '24.37', 1, 'Chưa đủ dữ liệu', 500, 50000, '2024-12-12 14:19:26', '2024-12-12 14:19:26', '20.31'),
(249, 36, 'TikTok Followers | Instant | 𝗨𝗹𝘁𝗿𝗮 𝗙𝗮𝘀𝘁 & 𝗦𝘁𝗮𝗯𝗹𝗲 | 50K Per Day | No Refill ⚡⛔', '35.03', 1, 'Chưa đủ dữ liệu', 500, 1000000, '2024-12-12 14:19:26', '2024-12-12 14:19:26', '29.20'),
(250, 36, 'TikTok Followers | Instant | 𝗨𝗹𝘁𝗿𝗮 𝗙𝗮𝘀𝘁 & 𝗦𝘁𝗮𝗯𝗹𝗲 | 100K Per Day | No Refill ⚡⛔', '38.08', 1, '6 giờ 50 phút', 500, 1000000, '2024-12-12 14:19:26', '2024-12-12 14:19:26', '31.73'),
(251, 36, 'TikTok Followers | Instant | 𝗩𝗜𝗣 𝗨𝗹𝘁𝗿𝗮 𝗙𝗮𝘀𝘁 & 𝗦𝘁𝗮𝗯𝗹𝗲 | 300K Per Day | 7 Days Refill ♻️⚡⛔', '40.82', 1, '31 phút', 500, 1000000, '2024-12-12 14:19:26', '2024-12-12 14:19:26', '34.02'),
(252, 36, 'TikTok Followers | Instant | 𝗩𝗜𝗣 𝗨𝗹𝘁𝗿𝗮 𝗙𝗮𝘀𝘁 & 𝗦𝘁𝗮𝗯𝗹𝗲 | 300K Per Day | 15 Days Refill ♻️⚡⛔', '41.43', 1, 'Chưa đủ dữ liệu', 500, 1000000, '2024-12-12 14:19:26', '2024-12-12 14:19:26', '34.53'),
(253, 36, 'TikTok Followers | Instant | 𝗩𝗜𝗣 𝗨𝗹𝘁𝗿𝗮 𝗙𝗮𝘀𝘁 & 𝗦𝘁𝗮𝗯𝗹𝗲 | 300K Per Day | 30 Days Refill ♻️⚡⛔', '42.35', 1, 'Chưa đủ dữ liệu', 500, 100000000, '2024-12-12 14:19:26', '2024-12-12 14:19:26', '35.29'),
(254, 36, 'TikTok Followers | Instant | Brazil 🇧🇷 | 20K Per Day | Refill 3 Days ⚡️♻️', '30.46', 1, '72 giờ 34 phút', 500, 1000000, '2024-12-12 14:19:26', '2024-12-12 14:19:26', '25.39'),
(255, 36, 'TikTok Followers | Instant | Brazil 🇧🇷 | 20K Per Day | Refill 7 Days ⚡️♻️', '33.51', 1, 'Chưa đủ dữ liệu', 500, 1000000, '2024-12-12 14:19:26', '2024-12-12 14:19:26', '27.93'),
(256, 36, 'TikTok Followers | Instant | Brazil 🇧🇷 | 20K Per Day | Refill 15 Days ⚡️♻️', '39.60', 1, 'Chưa đủ dữ liệu', 500, 1000000, '2024-12-12 14:19:26', '2024-12-12 14:19:26', '33.00'),
(257, 36, 'TikTok Followers | Instant | Brazil 🇧🇷 | 20K Per Day | Refill 30 Days ⚡️♻️', '45.70', 1, 'Chưa đủ dữ liệu', 500, 1000000, '2024-12-12 14:19:26', '2024-12-12 14:19:26', '38.08'),
(258, 36, '🇻🇳 TikTok Followers | Instant | 5000 Per Day | Real & Bot Data ⚡⛔', '25.89', 1, '272 giờ 38 phút', 500, 10000, '2024-12-12 14:19:26', '2024-12-12 14:19:26', '21.58'),
(259, 36, '🇻🇳 TikTok Followers | Instant | 10000 Per Day | Real & Bot Data ⚡⛔', '39.60', 1, '70 giờ 3 phút', 500, 50000, '2024-12-12 14:19:26', '2024-12-12 14:19:26', '33.00'),
(260, 37, 'Youtube Bot Likes | Instant | 100K Per Day ⚡🔥', '3.05', 1, '7 phút', 500, 1000000, '2024-12-12 14:19:26', '2024-12-12 14:19:26', '2.54'),
(261, 37, 'Youtube Likes | Instant | 100K Per Day | 100% Non Drop | R30 ♻️⚡🔥', '30.46', 1, 'Chưa đủ dữ liệu', 500, 100000, '2024-12-12 14:19:26', '2024-12-12 14:19:26', '25.39'),
(262, 37, 'Youtube Likes | Instant | 100K Per Day | R30 ♻️⚡🔥', '6.09', 1, 'Chưa đủ dữ liệu', 500, 25000, '2024-12-12 14:19:26', '2024-12-12 14:19:26', '5.08'),
(263, 37, 'Youtube Likes | Instant | 100K Per Day | R60 ♻️⚡🔥', '9.14', 1, 'Chưa đủ dữ liệu', 500, 25000, '2024-12-12 14:19:26', '2024-12-12 14:19:26', '7.62'),
(264, 37, 'Youtube Likes | Instant | 100K Per Day | R90 ♻️⚡🔥', '12.19', 1, 'Chưa đủ dữ liệu', 500, 25000, '2024-12-12 14:19:26', '2024-12-12 14:19:26', '10.15'),
(265, 37, 'Youtube Likes | Instant | 100K Per Day | R365 ♻️⚡🔥', '18.27', 1, 'Chưa đủ dữ liệu', 500, 25000, '2024-12-12 14:19:26', '2024-12-12 14:19:26', '15.22'),
(266, 37, 'Youtube Likes | Instant | 100K Per Day | 100% Non Drop | AR365 ♻️⚡🔥', '26.08', 1, 'Chưa đủ dữ liệu', 500, 200000, '2024-12-12 14:19:26', '2024-12-12 14:19:26', '21.73'),
(267, 38, 'Youtube Views | Instant | 10K Per Day | Non Drop | Lifetime Guaranteed ♻️', '25.89', 1, '315 giờ 26 phút', 500, 10000000, '2024-12-12 14:19:26', '2024-12-12 14:19:26', '21.58'),
(268, 38, 'Youtube Views | Instant | 100K Per Day | Non Drop | Lifetime Guaranteed ♻️', '39.60', 1, 'Chưa đủ dữ liệu', 500, 10000000, '2024-12-12 14:19:26', '2024-12-12 14:19:26', '33.00'),
(269, 38, 'Youtube Views | Instant | 500K Per Day | Non Drop | Lifetime Guaranteed ♻️', '45.70', 1, 'Chưa đủ dữ liệu', 500, 10000000, '2024-12-12 14:19:26', '2024-12-12 14:19:26', '38.08'),
(270, 38, 'YouTube Views | Native ADS | Real Users | 500K Per Day | 𝗠𝗶𝗻 𝟯𝗞 | Lifetime Guaranteed ♻️', '45.09', 1, 'Chưa đủ dữ liệu', 500, 10000000, '2024-12-12 14:19:26', '2024-12-12 14:19:26', '37.57'),
(271, 38, 'YouTube Views | Native ADS | Real Users | 500K Per Day | 𝗠𝗶𝗻 𝟱𝗞 | Lifetime Guaranteed ♻️', '43.26', 1, 'Chưa đủ dữ liệu', 500, 10000000, '2024-12-12 14:19:26', '2024-12-12 14:19:26', '36.05'),
(272, 38, 'YouTube Views | Native ADS | Real Users | 500K Per Day | 𝗠𝗶𝗻 𝟭𝟬𝗞 | Lifetime Guaranteed ♻️', '31.99', 1, 'Chưa đủ dữ liệu', 500, 10000000, '2024-12-12 14:19:26', '2024-12-12 14:19:26', '26.66'),
(273, 38, 'YouTube Views | Native ADS | Real Users | 500K Per Day | 𝗠𝗶𝗻 𝟮𝟬𝗞 | Lifetime Guaranteed ♻️', '27.42', 1, 'Chưa đủ dữ liệu', 500, 10000000, '2024-12-12 14:19:26', '2024-12-12 14:19:26', '22.85'),
(274, 38, 'YouTube Views | Native ADS | Real Users | 500K Per Day | 𝗠𝗶𝗻 𝟰𝟬𝗞 | Lifetime Guaranteed ♻️', '25.89', 1, 'Chưa đủ dữ liệu', 500, 10000000, '2024-12-12 14:19:26', '2024-12-12 14:19:26', '21.58'),
(275, 39, 'Youtube Subscribers | Instant | 100 Per Day | Non Drop | 30 Days Refill ♻️', '36.56', 1, 'Chưa đủ dữ liệu', 500, 10000, '2024-12-12 14:19:26', '2024-12-12 14:19:26', '30.46'),
(276, 39, 'Youtube Subscribers | Instant | 200 Per Day | Non Drop | 365 Days Refill ♻️', '76.16', 1, 'Chưa đủ dữ liệu', 500, 100000, '2024-12-12 14:19:26', '2024-12-12 14:19:26', '63.47'),
(277, 39, 'Youtube Subscribers | Instant | 500 Per Day | Non Drop | 365 Days Refill ♻️', '91.39', 1, 'Chưa đủ dữ liệu', 500, 100000, '2024-12-12 14:19:26', '2024-12-12 14:19:26', '76.16'),
(278, 39, 'Youtube Subscribers | Instant | 800 Per Day | Non Drop | 365 Days Refill ♻️', '106.63', 1, 'Chưa đủ dữ liệu', 500, 100000, '2024-12-12 14:19:26', '2024-12-12 14:19:26', '88.86'),
(279, 40, 'Instagram Likes | Instant | Ultra Fast | 50K Per Day ⚡', '0.43', 1, 'Chưa đủ dữ liệu', 500, 100000, '2024-12-12 14:19:26', '2024-12-12 14:19:26', '0.36'),
(280, 40, 'Instagram Likes | Instant | 100K Per Day | 365 Days Refill ⚡♻️⛔', '0.91', 1, '30 phút', 500, 100000, '2024-12-12 14:19:26', '2024-12-12 14:19:26', '0.76'),
(281, 40, 'Instagram Likes | Instant | 3K Per Day | No Refill ⚡⛔', '15.23', 1, '2 giờ 40 phút', 500, 50000, '2024-12-12 14:19:26', '2024-12-12 14:19:26', '12.69'),
(282, 40, 'Instagram Likes | Instant | 8K Per Day | No Refill ⚡⛔', '30.46', 1, 'Chưa đủ dữ liệu', 500, 50000, '2024-12-12 14:19:26', '2024-12-12 14:19:26', '25.39'),
(283, 41, 'Instagram Followers | Usually Starts Slowly | 10K Per Day | No Refill ⚡⛔', '24.37', 1, '40 giờ 50 phút', 500, 10000, '2024-12-12 14:19:26', '2024-12-12 14:19:26', '20.31'),
(284, 41, 'Instagram Followers | Usually Starts Slowly | 10K Per Day | No Refill ⚡⛔', '27.42', 1, 'Chưa đủ dữ liệu', 500, 50000, '2024-12-12 14:19:26', '2024-12-12 14:19:26', '22.85'),
(285, 41, 'Instagram Followers | Instant | 30K Per Day | No Refill ⚡', '46.61', 1, '16 giờ 19 phút', 500, 100000, '2024-12-12 14:19:26', '2024-12-12 14:19:26', '38.84'),
(286, 41, 'Instagram Followers | Instant | 50K Per Day | No Refill ⚡⛔', '52.28', 1, 'Chưa đủ dữ liệu', 500, 100000, '2024-12-12 14:19:26', '2024-12-12 14:19:26', '43.57'),
(287, 41, 'Instagram Followers | Instant | 20K Per Day | 365 Days Refill ⚡♻️⛔', '54.84', 1, 'Chưa đủ dữ liệu', 500, 100000, '2024-12-12 14:19:26', '2024-12-12 14:19:26', '45.70'),
(288, 41, 'Instagram Followers Indian 🇮🇳 | Instant | 200K Per Day ⚡⛔', '68.55', 1, '3 giờ 1 phút', 500, 1000000, '2024-12-12 14:19:26', '2024-12-12 14:19:26', '57.12'),
(289, 41, 'Instagram Followers Indian 🇮🇳 | Instant | 200K Per Day | R30 ⚡♻️⛔', '89.63', 1, 'Chưa đủ dữ liệu', 500, 1000000, '2024-12-12 14:19:26', '2024-12-12 14:19:26', '74.69'),
(290, 41, 'Instagram Followers Indian 🇮🇳 | Instant | 200K Per Day | R60 ⚡♻️⛔', '100.84', 1, 'Chưa đủ dữ liệu', 500, 1000000, '2024-12-12 14:19:26', '2024-12-12 14:19:26', '84.03'),
(291, 41, 'Instagram Followers Indian 🇮🇳 | Instant | 200K Per Day | R365 ⚡♻️⛔', '110.26', 1, 'Chưa đủ dữ liệu', 500, 1000000, '2024-12-12 14:19:26', '2024-12-12 14:19:26', '91.88'),
(292, 42, 'Instagram Saves | Instant | 𝗨𝗹𝘁𝗿𝗮 𝗙𝗮𝘀𝘁 & 𝗦𝘁𝗮𝗯𝗹𝗲 | 50K Per Day', '1.52', 1, 'Chưa đủ dữ liệu', 500, 1000000, '2024-12-12 14:19:26', '2024-12-12 14:19:26', '1.27'),
(293, 43, 'Instagram Shares | Instant | 𝗨𝗹𝘁𝗿𝗮 𝗙𝗮𝘀𝘁 & 𝗦𝘁𝗮𝗯𝗹𝗲 | 100K Per Day', '3.66', 1, 'Chưa đủ dữ liệu', 500, 1000000, '2024-12-12 14:19:26', '2024-12-12 14:19:26', '3.05'),
(294, 44, 'Telegram Channel/Group Members | 20K Per Day | 30 Day Refill ♻️⛔', '24.37', 1, '2 giờ 39 phút', 500, 50000, '2024-12-12 14:19:26', '2024-12-12 14:19:26', '20.31'),
(295, 44, 'Telegram Channel/Group Members | 20K Per Day | 60 Day Refill ♻️⛔', '30.46', 1, '29 phút', 500, 50000, '2024-12-12 14:19:26', '2024-12-12 14:19:26', '25.39'),
(296, 44, 'Telegram Channel/Group Members | 20K Per Day | 90 Day Refill ♻️⛔', '36.56', 1, 'Chưa đủ dữ liệu', 500, 50000, '2024-12-12 14:19:26', '2024-12-12 14:19:26', '30.46'),
(297, 45, 'Telegram Post Views | 100K Per Day', '0.30', 1, '2 giờ 40 phút', 500, 500000, '2024-12-12 14:19:26', '2024-12-12 14:19:26', '0.25'),
(298, 45, 'Telegram Post Views | 200K Per Day', '0.61', 1, 'Chưa đủ dữ liệu', 500, 500000, '2024-12-12 14:19:26', '2024-12-12 14:19:26', '0.51'),
(299, 45, 'Telegram Post Views | 300K Per Day', '0.91', 1, 'Chưa đủ dữ liệu', 500, 500000, '2024-12-12 14:19:26', '2024-12-12 14:19:26', '0.76'),
(300, 46, 'Telegram Positive Reaction | 👍🤩🎉🔥❤️🥰👏🏻 | 2K Per Day', '0.61', 1, '21 giờ 59 phút', 500, 50000, '2024-12-12 14:19:26', '2024-12-12 14:19:26', '0.51'),
(301, 46, 'Telegram Negative Reaction | 👎😢🤮💩🤔🤯🤬 | 2K Per Day', '0.61', 1, 'Chưa đủ dữ liệu', 500, 50000, '2024-12-12 14:19:26', '2024-12-12 14:19:26', '0.51'),
(302, 46, 'Telegram Premium Reactions | 💯 😍 ❤️‍🔥 🤡 🕊 🐳 | 2K Per Day', '4.57', 1, 'Chưa đủ dữ liệu', 500, 50000, '2024-12-12 14:19:26', '2024-12-12 14:19:26', '3.81');

-- --------------------------------------------------------

--
-- Table structure for table `source_code_categories`
--

CREATE TABLE `source_code_categories` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `source_code_categories`
--

INSERT INTO `source_code_categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'PHP + Mysql', '2024-12-18 10:34:04', '2024-12-26 11:52:05'),
(2, 'Wordpress', '2024-12-26 08:17:07', '2024-12-26 08:17:07'),
(3, 'Laravel', '2024-12-26 11:52:23', '2024-12-26 11:52:23'),
(4, 'Nextjs', '2024-12-26 11:52:29', '2024-12-26 11:52:29'),
(5, 'MERN', '2024-12-26 11:52:43', '2024-12-26 11:52:43');

-- --------------------------------------------------------

--
-- Table structure for table `source_code_orders`
--

CREATE TABLE `source_code_orders` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `source_code_product_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `unit_price` decimal(10,2) NOT NULL,
  `order_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_download` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `source_code_orders`
--

INSERT INTO `source_code_orders` (`id`, `user_id`, `source_code_product_id`, `name`, `unit_price`, `order_code`, `link_download`, `created_at`, `updated_at`) VALUES
(49, 39, 3, 'Website Bán Đồng Hồ PHP', '1000000.00', '321204', 'https://terabox.com/s/1y9vmHkAwO5Km6W2x3EPSoA', '2024-12-26 07:57:34', '2024-12-26 07:57:34'),
(50, 39, 3, 'Website Bán Đồng Hồ PHP', '100000.00', '803472', 'https://terabox.com/s/1y9vmHkAwO5Km6W2x3EPSoA', '2024-12-26 11:32:37', '2024-12-26 11:32:37'),
(51, 39, 5, 'Web bán quần áo (php + mysql)', '50000.00', '190400', 'https://terabox.com/s/1X4sKHWASnzNbHrD_YdJLWw', '2025-01-02 03:28:02', '2025-01-02 03:28:02'),
(52, 39, 5, 'Web bán quần áo (php + mysql)', '50000.00', '729985', 'https://terabox.com/s/1X4sKHWASnzNbHrD_YdJLWw', '2025-01-02 03:28:29', '2025-01-02 03:28:29');

-- --------------------------------------------------------

--
-- Table structure for table `source_code_products`
--

CREATE TABLE `source_code_products` (
  `id` bigint UNSIGNED NOT NULL,
  `category_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `demo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` decimal(10,2) NOT NULL,
  `link_download` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `purchase_count` int NOT NULL DEFAULT '0',
  `view_count` int NOT NULL DEFAULT '0',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `source_code_products`
--

INSERT INTO `source_code_products` (`id`, `category_id`, `name`, `description`, `demo`, `price`, `link_download`, `purchase_count`, `view_count`, `image`, `created_at`, `updated_at`) VALUES
(3, 1, 'Website Bán Đồng Hồ PHP', '<p>Website Bán Đồng Hồ PHP</p>', NULL, '100000.00', 'https://terabox.com/s/1y9vmHkAwO5Km6W2x3EPSoA', 105, 207, '[\"01JFXWYA2DVREVMSDVCH4F6GG0.png\",\"01JG81RC4XHX0DNDRM1WQHPGT2.png\",\"01JG81RC51GBG59M42HRJ6CQEG.png\",\"01JG81RC5CYKAVF36SDK2B362G.png\",\"01JG81RC5FMFQ6YTYD3ADS588X.png\"]', '2024-12-25 03:14:37', '2025-01-11 02:18:59'),
(4, 1, 'Web bán hàng php thuần', '<p>Web bán hàng php thuần</p><p>pass giải nén: giangtran.com.vn</p>', 'https://youtu.be/2lietU56AT4?si=zqfXOGO8tsECyvSp', '100000.00', 'https://terabox.com/s/1PX87ZEhc0ztNY7rbNbMP3Q', 3, 111, '[\"01JG1D6H7M7NRX61MPN2FRP3RE.png\"]', '2024-12-26 11:56:27', '2025-01-02 13:10:32'),
(5, 1, 'Web bán quần áo (php + mysql)', '<p>Web bán quần áo (php + mysql)</p>', NULL, '50000.00', 'https://terabox.com/s/1X4sKHWASnzNbHrD_YdJLWw', 2, 1, '[\"01JG1D91TYSKF1EWCP7R1F0RHM.png\"]', '2024-12-26 11:57:50', '2025-01-02 03:28:29'),
(6, 1, 'Web xem phim php  + mysql', '<p>Web xem phim php&nbsp; + mysql</p>', NULL, '20000.00', NULL, 0, 1, '[\"01JG1DBTQQ5SG6K2H1BZE37J6A.png\"]', '2024-12-26 11:59:21', '2024-12-29 11:09:20'),
(7, 1, 'PetShop php + mysql', '<p>PetShop php + mysql</p>', NULL, '50000.00', NULL, 0, 0, '[\"01JG1DG6CGZY7MGKGGZP2EQHJJ.png\"]', '2024-12-26 12:01:44', '2024-12-26 12:01:44'),
(8, 1, 'Quản lý trường học php + mysql', '<p>Quản lý trường học php + mysql</p>', NULL, '50000.00', NULL, 0, 0, '[\"01JG1DHP9YV8AAYPW3Y13TTGTK.png\"]', '2024-12-26 12:02:33', '2024-12-26 12:02:33'),
(9, 3, 'Bán vé xem phim Laravel', '<p>Bán vé xem phim Laravel</p>', NULL, '200000.00', NULL, 0, 1, '[\"01JG1DKH8YZ54VCG57VMGTCVJ8.png\"]', '2024-12-26 12:03:33', '2024-12-29 11:12:41'),
(10, 1, 'Web bán giày php + mysql', '<h1><br></h1><p><figure data-trix-attachment=\"{&quot;contentType&quot;:&quot;image&quot;,&quot;height&quot;:1018,&quot;url&quot;:&quot;https://private-user-images.githubusercontent.com/111523395/330758466-3ed4917e-912f-48d4-8ec1-b690331c9b6f.png?jwt=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJnaXRodWIuY29tIiwiYXVkIjoicmF3LmdpdGh1YnVzZXJjb250ZW50LmNvbSIsImtleSI6ImtleTUiLCJleHAiOjE3MzUyMTQ4NzIsIm5iZiI6MTczNTIxNDU3MiwicGF0aCI6Ii8xMTE1MjMzOTUvMzMwNzU4NDY2LTNlZDQ5MTdlLTkxMmYtNDhkNC04ZWMxLWI2OTAzMzFjOWI2Zi5wbmc_WC1BbXotQWxnb3JpdGhtPUFXUzQtSE1BQy1TSEEyNTYmWC1BbXotQ3JlZGVudGlhbD1BS0lBVkNPRFlMU0E1M1BRSzRaQSUyRjIwMjQxMjI2JTJGdXMtZWFzdC0xJTJGczMlMkZhd3M0X3JlcXVlc3QmWC1BbXotRGF0ZT0yMDI0MTIyNlQxMjAyNTJaJlgtQW16LUV4cGlyZXM9MzAwJlgtQW16LVNpZ25hdHVyZT0zMDA1OTBmNGRmNmVlZDU3ODBjZjU0ODIwYzFlYjZiZWRkOTBjZDk1NmQxYWZmNjU4MGE0YTFkZTViZTUyMDRhJlgtQW16LVNpZ25lZEhlYWRlcnM9aG9zdCJ9.TRT-Vm0ntssuNclOndHu7MoRLMVC4lPh8tup5byH9TE&quot;,&quot;width&quot;:1918}\" data-trix-content-type=\"image\" class=\"attachment attachment--preview\"><img src=\"https://private-user-images.githubusercontent.com/111523395/330758466-3ed4917e-912f-48d4-8ec1-b690331c9b6f.png?jwt=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJnaXRodWIuY29tIiwiYXVkIjoicmF3LmdpdGh1YnVzZXJjb250ZW50LmNvbSIsImtleSI6ImtleTUiLCJleHAiOjE3MzUyMTQ4NzIsIm5iZiI6MTczNTIxNDU3MiwicGF0aCI6Ii8xMTE1MjMzOTUvMzMwNzU4NDY2LTNlZDQ5MTdlLTkxMmYtNDhkNC04ZWMxLWI2OTAzMzFjOWI2Zi5wbmc_WC1BbXotQWxnb3JpdGhtPUFXUzQtSE1BQy1TSEEyNTYmWC1BbXotQ3JlZGVudGlhbD1BS0lBVkNPRFlMU0E1M1BRSzRaQSUyRjIwMjQxMjI2JTJGdXMtZWFzdC0xJTJGczMlMkZhd3M0X3JlcXVlc3QmWC1BbXotRGF0ZT0yMDI0MTIyNlQxMjAyNTJaJlgtQW16LUV4cGlyZXM9MzAwJlgtQW16LVNpZ25hdHVyZT0zMDA1OTBmNGRmNmVlZDU3ODBjZjU0ODIwYzFlYjZiZWRkOTBjZDk1NmQxYWZmNjU4MGE0YTFkZTViZTUyMDRhJlgtQW16LVNpZ25lZEhlYWRlcnM9aG9zdCJ9.TRT-Vm0ntssuNclOndHu7MoRLMVC4lPh8tup5byH9TE\" width=\"1918\" height=\"1018\"><figcaption class=\"attachment__caption\"></figcaption></figure></p><p><br></p>', NULL, '50000.00', NULL, 0, 0, '[\"01JG1DPB86RNZBQYH4BFY4DQMM.png\"]', '2024-12-26 12:05:05', '2024-12-26 12:05:05'),
(11, 1, 'Web đặt lịch cắt tóc php + mysql', '<p>Web đặt lịch cắt tóc php + mysql</p>', NULL, '100000.00', NULL, 0, 1, '[\"01JG1DT36NQBNRT6S3PF03FJQ4.jpg\"]', '2024-12-26 12:07:08', '2025-01-10 02:25:15'),
(12, 1, 'Web mạng xã hội Php + mysql', '<p>Web mạng xã hội Php + mysql</p>', NULL, '100000.00', NULL, 0, 2, '[\"01JG1DVEGEKH4WZ2X9GM0G12HH.png\"]', '2024-12-26 12:07:53', '2024-12-29 02:11:26'),
(13, 5, 'Website đặt lịch khám bệnh React, Nodejs, MySQL', '<p>Website đặt lịch khám bệnh PHP + Mysql</p>', NULL, '100000.00', NULL, 0, 1, '[\"01JG1DY29CCJZNHD18GG7VD649.png\"]', '2024-12-26 12:09:18', '2024-12-29 00:54:17'),
(14, 4, 'Axtra | Digital Agency React Nextjs Template', '<p>Axtra | Digital Agency React Nextjs Template</p><p><br></p>', 'https://cydeva.tech/', '50000.00', 'https://terabox.com/s/1TPJ8deWhZwmlCyxcJfIarQ', 2, 101, '[\"01JG6G340B7WRR08HR05VM0C6G.png\"]', '2024-12-26 12:10:44', '2025-01-10 02:25:03'),
(15, 1, 'Website trắc nghiệm PHP', '<p>Website trắc nghiệm PHP</p>', NULL, '90000.00', NULL, 0, 1, '[\"01JG1EDNWCQSAPC805GK7AWNJJ.png\"]', '2024-12-26 12:17:50', '2024-12-29 02:11:28'),
(16, 3, 'Website Bán Quần Áo Laravel', '<p>Website Bán Quần Áo Laravel</p>', NULL, '100000.00', NULL, 0, 1, '[\"01JG1EF7PG9D777V010G9MK54D.png\"]', '2024-12-26 12:18:41', '2024-12-29 11:11:08');
INSERT INTO `source_code_products` (`id`, `category_id`, `name`, `description`, `demo`, `price`, `link_download`, `purchase_count`, `view_count`, `image`, `created_at`, `updated_at`) VALUES
(334, 2, 'Trọn Bộ 650+ Theme Wordpress Việt ', '<p>Trọn Bộ 650+ Theme Wordpress Việt&nbsp;</p><p>Mua lẻ 20k /1 liên hệ zalo&nbsp;</p><p><a href=\"https://Autojet.mauthemewp.com\"><strong style=\"text-decoration: underline;\">https://Autojet.mauthemewp.com</strong></a><br><a href=\"https://aff1.mauthemewp.com\"><strong style=\"text-decoration: underline;\">https://aff1.mauthemewp.com</strong></a><br><a href=\"https://agency.mauthemewp.com\"><strong style=\"text-decoration: underline;\">https://agency.mauthemewp.com</strong></a><br><a href=\"https://agency2.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://agency2.mauthemewp.com</strong></a><br><a href=\"https://agency3.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://agency3.mauthemewp.com/</strong></a><br><a href=\"https://anhngu.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://anhngu.mauthemewp.com/</strong></a><br><a href=\"https://aomua.mauthemewp.com\"><strong style=\"text-decoration: underline;\">https://aomua.mauthemewp.com</strong></a><br><a href=\"https://appgiaoduc.mauthemewp.com\"><strong style=\"text-decoration: underline;\">https://appgiaoduc.mauthemewp.com</strong></a><br><a href=\"https://aqua.mauthemewp.com\"><strong style=\"text-decoration: underline;\">https://aqua.mauthemewp.com</strong></a><br><a href=\"https://art.mauthemewp.com\"><strong style=\"text-decoration: underline;\">https://art.mauthemewp.com</strong></a><br><a href=\"https://babycare.mauthemewp.com\"><strong style=\"text-decoration: underline;\">https://babycare.mauthemewp.com</strong></a><br><a href=\"https://babyshop2.mauthemewp.com\"><strong style=\"text-decoration: underline;\">https://babyshop2.mauthemewp.com</strong></a><br><a href=\"https://bachduoc.mauthemewp.com\"><strong style=\"text-decoration: underline;\">https://bachduoc.mauthemewp.com</strong></a><br><a href=\"https://bachhoa4.mauthemewp.com\"><strong style=\"text-decoration: underline;\">https://bachhoa4.mauthemewp.com</strong></a><br><a href=\"https://bachhoaxanh.mauthemewp.com\"><strong style=\"text-decoration: underline;\">https://bachhoaxanh.mauthemewp.com</strong></a><br><a href=\"https://bachkhoashop.mauthemewp.com\"><strong style=\"text-decoration: underline;\">https://bachkhoashop.mauthemewp.com</strong></a><br><a href=\"https://banhgiamcan.mauthemewp.com\"><strong style=\"text-decoration: underline;\">https://banhgiamcan.mauthemewp.com</strong></a><br><a href=\"https://bantho.mauthemewp.com\"><strong style=\"text-decoration: underline;\">https://bantho.mauthemewp.com</strong></a><br><a href=\"https://bantho1.mauthemewp.com\"><strong style=\"text-decoration: underline;\">https://bantho1.mauthemewp.com</strong></a><br><a href=\"https://banxe3.mauthemewp.com\"><strong style=\"text-decoration: underline;\">https://banxe3.mauthemewp.com</strong></a><br><a href=\"https://baobi.mauthemewp.com\"><strong style=\"text-decoration: underline;\">https://baobi.mauthemewp.com</strong></a><br><a href=\"https://bbq.mauthemewp.com\"><strong style=\"text-decoration: underline;\">https://bbq.mauthemewp.com</strong></a><br><a href=\"https://bds.mauthemewp.com\"><strong style=\"text-decoration: underline;\">https://bds.mauthemewp.com</strong></a><br><a href=\"https://bds10.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://bds10.mauthemewp.com</strong></a><br><a href=\"https://bds11.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://bds11.mauthemewp.com</strong></a><br><a href=\"https://bds12.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://bds12.mauthemewp.com</strong></a><br><a href=\"https://bds13.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://bds13.mauthemewp.com</strong></a><br><a href=\"https://bds14.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://bds14.mauthemewp.com</strong></a><br><a href=\"https://bds15.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://bds15.mauthemewp.com</strong></a><br><a href=\"https://bds16.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://bds16.mauthemewp.com</strong></a><br><a href=\"https://bds17.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://bds17.mauthemewp.com</strong></a><br><a href=\"https://bds18.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://bds18.mauthemewp.com</strong></a><br><a href=\"https://bds19.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://bds19.mauthemewp.com</strong></a><br><a href=\"https://bds2.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://bds2.mauthemewp.com</strong></a><br><a href=\"https://bds20.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://bds20.mauthemewp.com</strong></a><br><a href=\"https://bds21.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://bds21.mauthemewp.com</strong></a><br><a href=\"https://bds22.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://bds22.mauthemewp.com</strong></a><br><a href=\"https://bds23.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://bds23.mauthemewp.com</strong></a><br><a href=\"https://bds25.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://bds25.mauthemewp.com</strong></a><br><a href=\"https://bds26.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://bds26.mauthemewp.com</strong></a><br><a href=\"https://bds27.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://bds27.mauthemewp.com</strong></a><br><a href=\"https://bds28.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://bds28.mauthemewp.com</strong></a><br><a href=\"https://bds29.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://bds29.mauthemewp.com</strong></a><br><a href=\"https://bds3.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://bds3.mauthemewp.com</strong></a><br><a href=\"https://bds31.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://bds31.mauthemewp.com</strong></a><br><a href=\"https://bds32.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://bds32.mauthemewp.com</strong></a><br><a href=\"https://bds33.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://bds33.mauthemewp.com</strong></a><br><a href=\"https://bds34.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://bds34.mauthemewp.com</strong></a><br><a href=\"https://bds4.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://bds4.mauthemewp.com</strong></a><br><a href=\"https://bds5.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://bds5.mauthemewp.com</strong></a><br><a href=\"https://bds6.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://bds6.mauthemewp.com</strong></a><br><a href=\"https://bds7.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://bds7.mauthemewp.com</strong></a><br><a href=\"https://bds8.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://bds8.mauthemewp.com</strong></a><br><a href=\"https://bds9.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://bds9.mauthemewp.com</strong></a><br><a href=\"https://bdscanho.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://bdscanho.mauthemewp.com/</strong></a><br><a href=\"https://bdscity.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://bdscity.mauthemewp.com</strong></a><br><a href=\"https://benhvien.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://benhvien.mauthemewp.com</strong></a><br><a href=\"https://beptu.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://beptu.mauthemewp.com</strong></a><br><a href=\"https://beptu2.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://beptu2.mauthemewp.com</strong></a><br><a href=\"https://bienchucdanh.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://bienchucdanh.mauthemewp.com</strong></a><br><a href=\"https://bimmebe.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://bimmebe.mauthemewp.com</strong></a><br><a href=\"https://bitour.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://bitour.mauthemewp.com</strong></a><br><a href=\"https://blogdulich.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://blogdulich.mauthemewp.com</strong></a><br><a href=\"https://bocghe.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://bocghe.mauthemewp.com</strong></a><br><a href=\"https://bokho.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://bokho.mauthemewp.com</strong></a><br><a href=\"https://bomyphamnu.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://bomyphamnu.mauthemewp.com</strong></a><br><a href=\"https://bongda.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://bongda.mauthemewp.com</strong></a><br><a href=\"https://book.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://book.mauthemewp.com</strong></a><br><a href=\"https://book2.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://book2.mauthemewp.com</strong></a><br><a href=\"https://botgiamcan.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://botgiamcan.mauthemewp.com</strong></a><br><a href=\"https://botgiamcan.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://botgiamcan.mauthemewp.com</strong></a><br><a href=\"https://botson.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://botson.mauthemewp.com</strong></a><br><a href=\"https://brand.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://brand.mauthemewp.com</strong></a><br><a href=\"https://burger.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://burger.mauthemewp.com</strong></a><br><a href=\"https://cake.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://cake.mauthemewp.com</strong></a><br><a href=\"https://cake2.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://cake2.mauthemewp.com</strong></a><br><a href=\"https://cambien.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://cambien.mauthemewp.com</strong></a><br><a href=\"https://camera.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://camera.mauthemewp.com</strong></a><br><a href=\"https://camera2.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://camera2.mauthemewp.com</strong></a><br><a href=\"https://camera3.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://camera3.mauthemewp.com</strong></a><br><a href=\"https://camera4.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://camera4.mauthemewp.com</strong></a><br><a href=\"https://casino.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://casino.mauthemewp.com</strong></a><br><a href=\"https://casino1.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://casino1.mauthemewp.com</strong></a><br><a href=\"https://casio.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://casio.mauthemewp.com</strong></a><br><a href=\"https://casy.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://casy.mauthemewp.com</strong></a><br><a href=\"https://caunang.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://caunang.mauthemewp.com</strong></a><br><a href=\"https://cayxanh.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://cayxanh.mauthemewp.com</strong></a><br><a href=\"https://cellphones.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://cellphones.mauthemewp.com</strong></a><br><a href=\"https://chaucay.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://chaucay.mauthemewp.com</strong></a><br><a href=\"https://chaucay2.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://chaucay2.mauthemewp.com</strong></a><br><a href=\"https://chungkhoan.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://chungkhoan.mauthemewp.com</strong></a><br><a href=\"https://chuyennha.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://chuyennha.mauthemewp.com</strong></a><br><a href=\"https://clinic.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://clinic.mauthemewp.com</strong></a><br><a href=\"https://coin.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://coin.mauthemewp.com</strong></a><br><a href=\"https://congty4.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://congty4.mauthemewp.com</strong></a><br><a href=\"https://congty5.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://congty5.mauthemewp.com</strong></a><br><a href=\"https://congtyduoc.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://congtyduoc.mauthemewp.com</strong></a><br><a href=\"https://congtynhua.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://congtynhua.mauthemewp.com</strong></a><br><a href=\"https://cuanhom1.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://cuanhom1.mauthemewp.com</strong></a><br><a href=\"https://cuanhom3.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://cuanhom3.mauthemewp.com</strong></a><br><a href=\"https://cunhanduhoc.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://cunhanduhoc.mauthemewp.com</strong></a><br><a href=\"https://damynghe.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://damynghe.mauthemewp.com</strong></a><br><a href=\"https://daotao.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://daotao.mauthemewp.com</strong></a><br><a href=\"https://daquy2.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://daquy2.mauthemewp.com</strong></a><br><a href=\"https://daugoidau.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://daugoidau.mauthemewp.com</strong></a><br><a href=\"https://daylaixe.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://daylaixe.mauthemewp.com</strong></a><br><a href=\"https://daytrangdiem.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://daytrangdiem.mauthemewp.com</strong></a><br><a href=\"https://decal.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://decal.mauthemewp.com</strong></a><br><a href=\"https://denled.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://denled.mauthemewp.com</strong></a><br><a href=\"https://denled1.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://denled1.mauthemewp.com</strong></a><br><a href=\"https://denled2.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://denled2.mauthemewp.com</strong></a><br><a href=\"https://dep.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://dep.mauthemewp.com</strong></a><br><a href=\"https://dibien.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://dibien.mauthemewp.com</strong></a><br><a href=\"https://dichvubaove.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://dichvubaove.mauthemewp.com</strong></a><br><a href=\"https://dichvuduhoc.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://dichvuduhoc.mauthemewp.com</strong></a><br><a href=\"https://dienlanh.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://dienlanh.mauthemewp.com</strong></a><br><a href=\"https://dienlanh2.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://dienlanh2.mauthemewp.com</strong></a><br><a href=\"https://dienmay.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://dienmay.mauthemewp.com</strong></a><br><a href=\"https://dienmay1.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://dienmay1.mauthemewp.com</strong></a><br><a href=\"https://dienmay3.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://dienmay3.mauthemewp.com</strong></a><br><a href=\"https://dienmay4.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://dienmay4.mauthemewp.com</strong></a><br><a href=\"https://dienmay5.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://dienmay5.mauthemewp.com</strong></a><br><a href=\"https://dienmay6.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://dienmay6.mauthemewp.com</strong></a><br><a href=\"https://dienmay7.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://dienmay7.mauthemewp.com</strong></a><br><a href=\"https://dienmayxanh.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://dienmayxanh.mauthemewp.com</strong></a><br><a href=\"https://dienmayxanh2.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://dienmayxanh2.mauthemewp.com</strong></a><br><a href=\"https://diennuoc.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://diennuoc.mauthemewp.com</strong></a><br><a href=\"https://diennuoc2.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://diennuoc2.mauthemewp.com</strong></a><br><a href=\"https://dietcontrung.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://dietcontrung.mauthemewp.com</strong></a><br><a href=\"https://dochoitreem.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://dochoitreem.mauthemewp.com</strong></a><br><a href=\"https://dochoixephinh.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://dochoixephinh.mauthemewp.com</strong></a><br><a href=\"https://docu.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://docu.mauthemewp.com</strong></a><br><a href=\"https://dongho.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://dongho.mauthemewp.com</strong></a><br><a href=\"https://dongho1.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://dongho1.mauthemewp.com</strong></a><br><a href=\"https://dongho2.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://dongho2.mauthemewp.com</strong></a><br><a href=\"https://dongho3.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://dongho3.mauthemewp.com</strong></a><br><a href=\"https://donghodantuong3d.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://donghodantuong3d.mauthemewp.com</strong></a><br><a href=\"https://donghothongminh2.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://donghothongminh2.mauthemewp.com</strong></a><br><a href=\"https://dongphuc.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://dongphuc.mauthemewp.com</strong></a><br><a href=\"https://dongphuc2.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://dongphuc2.mauthemewp.com</strong></a><br><a href=\"https://dongtrunghathao.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://dongtrunghathao.mauthemewp.com</strong></a><br><a href=\"https://dongy.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://dongy.mauthemewp.com</strong></a><br><a href=\"https://dotho.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://dotho.mauthemewp.com</strong></a><br><a href=\"https://duhochanquoc.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://duhochanquoc.mauthemewp.com</strong></a><br><a href=\"https://dulich.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://dulich.mauthemewp.com</strong></a><br><a href=\"https://dulich10.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://dulich10.mauthemewp.com</strong></a><br><a href=\"https://dulich12.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://dulich12.mauthemewp.com</strong></a><br><a href=\"https://dulich13.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://dulich13.mauthemewp.com</strong></a><br><a href=\"https://dulich14.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://dulich14.mauthemewp.com</strong></a><br><a href=\"https://dulich15.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://dulich15.mauthemewp.com</strong></a><br><a href=\"https://dulich16.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://dulich16.mauthemewp.com</strong></a><br><a href=\"https://dulich2.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://dulich2.mauthemewp.com</strong></a><br><a href=\"https://dulich3.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://dulich3.mauthemewp.com</strong></a><br><a href=\"https://dulich4.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://dulich4.mauthemewp.com</strong></a><br><a href=\"https://dulich5.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://dulich5.mauthemewp.com</strong></a><br><a href=\"https://dulich6.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://dulich6.mauthemewp.com</strong></a><br><a href=\"https://dulich7.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://dulich7.mauthemewp.com</strong></a><br><a href=\"https://dulich8.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://dulich8.mauthemewp.com</strong></a><br><a href=\"https://dulichtruyenthong.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://dulichtruyenthong.mauthemewp.com</strong></a><br><a href=\"https://dungcu.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://dungcu.mauthemewp.com</strong></a><br><a href=\"https://duoc.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://duoc.mauthemewp.com</strong></a><br><a href=\"https://duocpham.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://duocpham.mauthemewp.com</strong></a><br><a href=\"https://duocpham3.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://duocpham3.mauthemewp.com</strong></a><br><a href=\"https://duocpham4.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://duocpham4.mauthemewp.com</strong></a><br><a href=\"https://duocpham5.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://duocpham5.mauthemewp.com</strong></a><br><a href=\"https://eco.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://eco.mauthemewp.com</strong></a><br><a href=\"https://edu.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://edu.mauthemewp.com</strong></a><br><a href=\"https://edu1.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://edu1.mauthemewp.com</strong></a><br><a href=\"https://edu10.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://edu10.mauthemewp.com</strong></a><br><a href=\"https://edu11.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://edu11.mauthemewp.com</strong></a><br><a href=\"https://edu2.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://edu2.mauthemewp.com</strong></a><br><a href=\"https://edu3.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://edu3.mauthemewp.com</strong></a><br><a href=\"https://edu4.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://edu4.mauthemewp.com</strong></a><br><a href=\"https://edu5.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://edu5.mauthemewp.com</strong></a><br><a href=\"https://edu6.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://edu6.mauthemewp.com</strong></a><br><a href=\"https://edu7.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://edu7.mauthemewp.com</strong></a><br><a href=\"https://edu8.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://edu8.mauthemewp.com</strong></a><br><a href=\"https://education.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://education.mauthemewp.com</strong></a><br><a href=\"https://event2.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://event2.mauthemewp.com</strong></a><br><a href=\"https://event3.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://event3.mauthemewp.com</strong></a><br><a href=\"https://event5.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://event5.mauthemewp.com</strong></a><br><a href=\"https://event6.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://event6.mauthemewp.com</strong></a><br><a href=\"https://event7.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://event7.mauthemewp.com</strong></a><br><a href=\"https://fashion.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://fashion.mauthemewp.com</strong></a><br><a href=\"https://fashion2.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://fashion2.mauthemewp.com</strong></a><br><a href=\"https://fashion5.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://fashion5.mauthemewp.com</strong></a><br><a href=\"https://fpt1.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://fpt1.mauthemewp.com</strong></a><br><a href=\"https://funiture.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://funiture.mauthemewp.com</strong></a><br><a href=\"https://gach.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://gach.mauthemewp.com</strong></a><br><a href=\"https://genma.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://genma.mauthemewp.com</strong></a><br><a href=\"https://ghevanphong.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://ghevanphong.mauthemewp.com</strong></a><br><a href=\"https://giacong.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://giacong.mauthemewp.com</strong></a><br><a href=\"https://giacongcokhi.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://giacongcokhi.mauthemewp.com</strong></a><br><a href=\"https://giadung.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://giadung.mauthemewp.com</strong></a><br><a href=\"https://giadung1.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://giadung1.mauthemewp.com</strong></a><br><a href=\"https://giadung2.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://giadung2.mauthemewp.com</strong></a><br><a href=\"https://giatthamvanphong.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://giatthamvanphong.mauthemewp.com</strong></a><br><a href=\"https://giaydep.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://giaydep.mauthemewp.com</strong></a><br><a href=\"https://gioithieu1.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://gioithieu1.mauthemewp.com</strong></a><br><a href=\"https://gioithieu2.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://gioithieu2.mauthemewp.com</strong></a><br><a href=\"https://gioithieu4.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://gioithieu4.mauthemewp.com</strong></a><br><a href=\"https://gioithieu5.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://gioithieu5.mauthemewp.com</strong></a><br><a href=\"https://gioithieu6.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://gioithieu6.mauthemewp.com</strong></a><br><a href=\"https://gioithieu7.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://gioithieu7.mauthemewp.com</strong></a><br><a href=\"https://gioithieu9.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://gioithieu9.mauthemewp.com</strong></a><br><a href=\"https://gioithieucongty.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://gioithieucongty.mauthemewp.com</strong></a><br><a href=\"https://gioithieucongty3.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://gioithieucongty3.mauthemewp.com</strong></a><br><a href=\"https://giupviec.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://giupviec.mauthemewp.com</strong></a><br><a href=\"https://gom.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://gom.mauthemewp.com</strong></a><br><a href=\"https://gomsu.mauthemewp.co/\"><strong style=\"text-decoration: underline;\">https://gomsu.mauthemewp.co</strong></a><br><a href=\"https://googleshop.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://googleshop.mauthemewp.com</strong></a><br><a href=\"https://grab.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://grab.mauthemewp.com</strong></a><br><a href=\"https://greenbay.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://greenbay.mauthemewp.com</strong></a><br><a href=\"https://gym.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://gym.mauthemewp.com</strong></a><br><a href=\"https://gymshop.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://gymshop.mauthemewp.com</strong></a><br><a href=\"https://haisan.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://haisan.mauthemewp.com</strong></a><br><a href=\"https://hancapquang.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://hancapquang.mauthemewp.com</strong></a><br><a href=\"https://hatdieu2.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://hatdieu2.mauthemewp.com</strong></a><br><a href=\"https://healthcoach.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://healthcoach.mauthemewp.com</strong></a><br><a href=\"https://hnk.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://hnk.mauthemewp.com</strong></a><br><a href=\"https://hoangha.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://hoangha.mauthemewp.com</strong></a><br><a href=\"https://hoanghamobile.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://hoanghamobile.mauthemewp.com</strong></a><br><a href=\"https://hocacoi.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://hocacoi.mauthemewp.com</strong></a><br><a href=\"https://hocdan.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://hocdan.mauthemewp.com</strong></a><br><a href=\"https://hoclaixe.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://hoclaixe.mauthemewp.com</strong></a><br><a href=\"https://hoclamdep.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://hoclamdep.mauthemewp.com</strong></a><br><a href=\"https://hocphongthuy.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://hocphongthuy.mauthemewp.com</strong></a><br><a href=\"https://hoctiengduc.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://hoctiengduc.mauthemewp.com</strong></a><br><a href=\"https://hoctiengnhat.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://hoctiengnhat.mauthemewp.com</strong></a><br><a href=\"https://hocvothuat.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://hocvothuat.mauthemewp.com</strong></a><br><a href=\"https://honda2.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://honda2.mauthemewp.com</strong></a><br><a href=\"https://honda3.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://honda3.mauthemewp.com</strong></a><br><a href=\"https://htx.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://htx.mauthemewp.com</strong></a><br><a href=\"https://huthamcau.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://huthamcau.mauthemewp.com</strong></a><br><a href=\"https://hydrogen.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://hydrogen.mauthemewp.com</strong></a><br><a href=\"https://hyperx.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://hyperx.mauthemewp.com</strong></a><br><a href=\"https://hyundai.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://hyundai.mauthemewp.com</strong></a><br><a href=\"https://hyundai1.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://hyundai1.mauthemewp.com</strong></a><br><a href=\"https://hyundai2.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://hyundai2.mauthemewp.com</strong></a><br><a href=\"https://hyundai3.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://hyundai3.mauthemewp.com</strong></a><br><a href=\"https://ifix.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://ifix.mauthemewp.com</strong></a><br><a href=\"https://ihealing.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://ihealing.mauthemewp.com</strong></a><br><a href=\"https://inan.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://inan.mauthemewp.com</strong></a><br><a href=\"https://inan2.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://inan2.mauthemewp.com</strong></a><br><a href=\"https://inbat.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://inbat.mauthemewp.com</strong></a><br><a href=\"https://iphone.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://iphone.mauthemewp.com</strong></a><br><a href=\"https://iqos.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://iqos.mauthemewp.com</strong></a><br><a href=\"https://isuzu.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://isuzu.mauthemewp.com</strong></a><br><a href=\"https://items.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://items.mauthemewp.com</strong></a><br><a href=\"https://ketoan.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://ketoan.mauthemewp.com</strong></a><br><a href=\"https://ketoan2.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://ketoan2.mauthemewp.com</strong></a><br><a href=\"https://khachsan.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://khachsan.mauthemewp.com</strong></a><br><a href=\"https://khachsan2.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://khachsan2.mauthemewp.com</strong></a><br><a href=\"https://khachsan3.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://khachsan3.mauthemewp.com</strong></a><br><a href=\"https://khachsan4.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://khachsan4.mauthemewp.com</strong></a><br><a href=\"https://khachsan5.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://khachsan5.mauthemewp.com</strong></a><br><a href=\"https://khamsuckhoe2.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://khamsuckhoe2.mauthemewp.com</strong></a><br><a href=\"https://khoahoc.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://khoahoc.mauthemewp.com</strong></a><br><a href=\"https://khoahoc2.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://khoahoc2.mauthemewp.com</strong></a><br><a href=\"https://khoahocchobe.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://khoahocchobe.mauthemewp.com</strong></a><br><a href=\"https://khoahocdanpiano.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://khoahocdanpiano.mauthemewp.com</strong></a><br><a href=\"https://khoahocdau.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://khoahocdau.mauthemewp.com</strong></a><br><a href=\"https://khoahocmarketing.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://khoahocmarketing.mauthemewp.com</strong></a><br><a href=\"https://khoplugin.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://khoplugin.mauthemewp.com</strong></a><br><a href=\"https://khotheme.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://khotheme.mauthemewp.com</strong></a><br><a href=\"https://kia.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://kia.mauthemewp.com</strong></a><br><a href=\"https://kia1.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://kia1.mauthemewp.com</strong></a><br><a href=\"https://kientruc01.mauthemewp.com-20230416-00192/\"><span style=\"text-decoration: underline;\">https://kientruc01.mauthemewp.com</span></a><br><a href=\"https://kientruc2.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://kientruc2.mauthemewp.com</strong></a><br><a href=\"https://kientruc3.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://kientruc3.mauthemewp.com</strong></a><br><a href=\"https://kientruc4.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://kientruc4.mauthemewp.com</strong></a><br><a href=\"https://lapmang.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://lapmang.mauthemewp.com</strong></a><br><a href=\"https://linhkien.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://linhkien.mauthemewp.com</strong></a><br><a href=\"https://loakeo.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://loakeo.mauthemewp.com</strong></a><br><a href=\"https://lockhi3.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://lockhi3.mauthemewp.com</strong></a><br><a href=\"https://locnuoc.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://locnuoc.mauthemewp.com</strong></a><br><a href=\"https://luatsu.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://luatsu.mauthemewp.com</strong></a><br><a href=\"https://luatsu2.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://luatsu2.mauthemewp.com</strong></a><br><a href=\"https://luatsu3.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://luatsu3.mauthemewp.com</strong></a><br><a href=\"https://luatsu4.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://luatsu4.mauthemewp.com</strong></a><br><a href=\"https://luyenthi.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://luyenthi.mauthemewp.com</strong></a><br><a href=\"https://luyenthi.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://luyenthi.mauthemewp.com</strong></a><br><a href=\"https://macshop.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://macshop.mauthemewp.com</strong></a><br><a href=\"https://manhrem.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://manhrem.mauthemewp.com</strong></a><br><a href=\"https://manhrem2.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://manhrem2.mauthemewp.com</strong></a><br><a href=\"https://marketing.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://marketing.mauthemewp.com</strong></a><br><a href=\"https://massage.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://massage.mauthemewp.com</strong></a><br><a href=\"https://matong2.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://matong2.mauthemewp.com</strong></a><br><a href=\"https://maycong2.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://maycong2.mauthemewp.com</strong></a><br><a href=\"https://maycongnghiep.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://maycongnghiep.mauthemewp.com</strong></a><br><a href=\"https://mayloc2.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://mayloc2.mauthemewp.com</strong></a><br><a href=\"https://mayloc3.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://mayloc3.mauthemewp.com</strong></a><br><a href=\"https://mayloc4.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://mayloc4.mauthemewp.com</strong></a><br><a href=\"https://maylockhi.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://maylockhi.mauthemewp.com</strong></a><br><a href=\"https://maylocnuoc.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://maylocnuoc.mauthemewp.com</strong></a><br><a href=\"https://mayphatdien.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://mayphatdien.mauthemewp.com</strong></a><br><a href=\"https://maytinh.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://maytinh.mauthemewp.com</strong></a><br><a href=\"https://maytinh2.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://maytinh2.mauthemewp.com</strong></a><br><a href=\"https://maytinh5.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://maytinh5.mauthemewp.com</strong></a><br><a href=\"https://media.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://media.mauthemewp.com</strong></a><br><a href=\"https://mevabe.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://mevabe.mauthemewp.com</strong></a><br><a href=\"https://mica.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://mica.mauthemewp.com</strong></a><br><a href=\"https://mica2.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://mica2.mauthemewp.com</strong></a><br><a href=\"https://milk.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://milk.mauthemewp.com</strong></a><br><a href=\"https://mitsubishi.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://mitsubishi.mauthemewp.com</strong></a><br><a href=\"https://mitsubishi2.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://mitsubishi2.mauthemewp.com</strong></a><br><a href=\"https://mypham.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://mypham.mauthemewp.com</strong></a><br><a href=\"https://mypham02.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://mypham02.mauthemewp.com</strong></a><br><a href=\"https://mypham03.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://mypham03.mauthemewp.com</strong></a><br><a href=\"https://mypham04.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://mypham04.mauthemewp.com</strong></a><br><a href=\"https://mypham05.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://mypham05.mauthemewp.com</strong></a><br><a href=\"https://mypham10.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://mypham10.mauthemewp.com</strong></a><br><a href=\"https://mypham15.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://mypham15.mauthemewp.com</strong></a><br><a href=\"https://mypham2.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://mypham2.mauthemewp.com</strong></a><br><a href=\"https://mypham3.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://mypham3.mauthemewp.com</strong></a><br><a href=\"https://mypham4.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://mypham4.mauthemewp.com</strong></a><br><a href=\"https://mypham5.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://mypham5.mauthemewp.com</strong></a><br><a href=\"https://mypham6.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://mypham6.mauthemewp.com</strong></a><br><a href=\"https://mypham7.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://mypham7.mauthemewp.com</strong></a><br><a href=\"https://mypham8.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://mypham8.mauthemewp.com</strong></a><br><a href=\"https://mypham9.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://mypham9.mauthemewp.com</strong></a><br><a href=\"https://nangluong.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://nangluong.mauthemewp.com</strong></a><br><a href=\"https://nhahang.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://nhahang.mauthemewp.com</strong></a><br><a href=\"https://nhahang4.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://nhahang4.mauthemewp.com</strong></a><br><a href=\"https://nhahangtieccuoi.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://nhahangtieccuoi.mauthemewp.com</strong></a><br><a href=\"https://nhakhoa.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://nhakhoa.mauthemewp.com</strong></a><br><a href=\"https://nhakhoa2.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://nhakhoa2.mauthemewp.com</strong></a><br><a href=\"https://nhakhoa3.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://nhakhoa3.mauthemewp.com</strong></a><br><a href=\"https://nhathuoc.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://nhathuoc.mauthemewp.com</strong></a><br><a href=\"https://nhathuoc2.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://nhathuoc2.mauthemewp.com</strong></a><br><a href=\"https://nhaxe.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://nhaxe.mauthemewp.com</strong></a><br><a href=\"https://nhomkinh.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://nhomkinh.mauthemewp.com</strong></a><br><a href=\"https://nhomkinh1.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://nhomkinh1.mauthemewp.com</strong></a><br><a href=\"https://noithat.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://noithat.mauthemewp.com</strong></a><br><a href=\"https://noithat10.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://noithat10.mauthemewp.com</strong></a><br><a href=\"https://noithat11.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://noithat11.mauthemewp.com</strong></a><br><a href=\"https://noithat12.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://noithat12.mauthemewp.com</strong></a><br><a href=\"https://noithat13.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://noithat13.mauthemewp.com</strong></a><br><a href=\"https://noithat14.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://noithat14.mauthemewp.com</strong></a><br><a href=\"https://noithat15.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://noithat15.mauthemewp.com</strong></a><br><a href=\"https://noithat16.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://noithat16.mauthemewp.com</strong></a><br><a href=\"https://noithat2.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://noithat2.mauthemewp.com</strong></a><br><a href=\"https://noithat22.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://noithat22.mauthemewp.com</strong></a><br><a href=\"https://noithat24.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://noithat24.mauthemewp.com</strong></a><br><a href=\"https://noithat26.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://noithat26.mauthemewp.com</strong></a><br><a href=\"https://noithat27.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://noithat27.mauthemewp.com</strong></a><br><a href=\"https://noithat29.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://noithat29.mauthemewp.com</strong></a><br><a href=\"https://noithat3.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://noithat3.mauthemewp.com</strong></a><br><a href=\"https://noithat4.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://noithat4.mauthemewp.com</strong></a><br><a href=\"https://noithat5.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://noithat5.mauthemewp.com</strong></a><br><a href=\"https://noithat6.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://noithat6.mauthemewp.com</strong></a><br><a href=\"https://noithat7.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://noithat7.mauthemewp.com</strong></a><br><a href=\"https://noithat8.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://noithat8.mauthemewp.com</strong></a><br><a href=\"https://noithat9.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://noithat9.mauthemewp.com</strong></a><br><a href=\"https://noithatgovi.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://noithatgovi.mauthemewp.com</strong></a><br><a href=\"https://nongsan.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://nongsan.mauthemewp.com</strong></a><br><a href=\"https://nongsan2.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://nongsan2.mauthemewp.com</strong></a><br><a href=\"https://nuocgiat.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://nuocgiat.mauthemewp.com</strong></a><br><a href=\"https://nuocgiat2.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://nuocgiat2.mauthemewp.com</strong></a><br><a href=\"https://order247.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://order247.mauthemewp.com</strong></a><br><a href=\"https://oto.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://oto.mauthemewp.com</strong></a><br><a href=\"https://party.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://party.mauthemewp.com</strong></a><br><a href=\"https://phanmem.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://phanmem.mauthemewp.com</strong></a><br><a href=\"https://phanmembanhang.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://phanmembanhang.mauthemewp.com</strong></a><br><a href=\"https://phelieu.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://phelieu.mauthemewp.com</strong></a><br><a href=\"https://phongkham.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://phongkham.mauthemewp.com</strong></a><br><a href=\"https://phongthuy4.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://phongthuy4.mauthemewp.com</strong></a><br><a href=\"https://pianocenter.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://pianocenter.mauthemewp.com</strong></a><br><a href=\"https://pod.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://pod.mauthemewp.com</strong></a><br><a href=\"https://print2.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://print2.mauthemewp.com</strong></a><br><a href=\"https://print3.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://print3.mauthemewp.com</strong></a><br><a href=\"https://print4.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://print4.mauthemewp.com</strong></a><br><a href=\"https://quangcao.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://quangcao.mauthemewp.com</strong></a><br><a href=\"https://quangcaositoc.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://quangcaositoc.mauthemewp.com</strong></a><br><a href=\"https://remcua.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://remcua.mauthemewp.com</strong></a><br><a href=\"https://review1.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://review1.mauthemewp.com</strong></a><br><a href=\"https://reviewoto.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://reviewoto.mauthemewp.com</strong></a><br><a href=\"https://ruoubia.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://ruoubia.mauthemewp.com</strong></a><br><a href=\"https://salecar.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://salecar.mauthemewp.com</strong></a><br><a href=\"https://salecar2.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://salecar2.mauthemewp.com</strong></a><br><a href=\"https://samsungshop.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://samsungshop.mauthemewp.com</strong></a><br><a href=\"https://sango.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://sango.mauthemewp.com</strong></a><br><a href=\"https://saoviet.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://saoviet.mauthemewp.com</strong></a><br><a href=\"https://sharkhung.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://sharkhung.mauthemewp.com</strong></a><br><a href=\"https://shop1.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://shop1.mauthemewp.com</strong></a><br><a href=\"https://shop3.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://shop3.mauthemewp.com</strong></a><br><a href=\"https://shopcode.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://shopcode.mauthemewp.com</strong></a><br><a href=\"https://shopee.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://shopee.mauthemewp.com</strong></a><br><a href=\"https://shophoa.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://shophoa.mauthemewp.com</strong></a><br><a href=\"https://shophoa1.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://shophoa1.mauthemewp.com</strong></a><br><a href=\"https://shophoa2.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://shophoa2.mauthemewp.com</strong></a><br><a href=\"https://shophoa3.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://shophoa3.mauthemewp.com</strong></a><br><a href=\"https://shopnguyenlieu.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://shopnguyenlieu.mauthemewp.com</strong></a><br><a href=\"https://shopnoithat.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://shopnoithat.mauthemewp.com</strong></a><br><a href=\"https://shopphongthuy.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://shopphongthuy.mauthemewp.com</strong></a><br><a href=\"https://shopphongthuy2.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://shopphongthuy2.mauthemewp.com</strong></a><br><a href=\"https://shopruou.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://shopruou.mauthemewp.com</strong></a><br><a href=\"https://shopthoitrang2.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://shopthoitrang2.mauthemewp.com</strong></a><br><a href=\"https://sieuthida.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://sieuthida.mauthemewp.com</strong></a><br><a href=\"https://sinhtracvantay.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://sinhtracvantay.mauthemewp.com</strong></a><br><a href=\"https://smarthome.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://smarthome.mauthemewp.com</strong></a><br><a href=\"https://smarthome2.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://smarthome2.mauthemewp.com</strong></a><br><a href=\"https://sms.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://sms.mauthemewp.com</strong></a><br><a href=\"https://sofa.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://sofa.mauthemewp.com</strong></a><br><a href=\"https://solar2.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://solar2.mauthemewp.com</strong></a><br><a href=\"https://son.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://son.mauthemewp.com</strong></a><br><a href=\"https://sonha.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://sonha.mauthemewp.com</strong></a><br><a href=\"https://sonmoi.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://sonmoi.mauthemewp.com</strong></a><br><a href=\"https://sonnuoc.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://sonnuoc.mauthemewp.com</strong></a><br><a href=\"https://spa1.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://spa1.mauthemewp.com</strong></a><br><a href=\"https://spa10.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://spa10.mauthemewp.com</strong></a><br><a href=\"https://spa2.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://spa2.mauthemewp.com</strong></a><br><a href=\"https://spa3.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://spa3.mauthemewp.com</strong></a><br><a href=\"https://spa4.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://spa4.mauthemewp.com</strong></a><br><a href=\"https://spa5.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://spa5.mauthemewp.com</strong></a><br><a href=\"https://spa6.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://spa6.mauthemewp.com</strong></a><br><a href=\"https://spa7.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://spa7.mauthemewp.com</strong></a><br><a href=\"https://spa8.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://spa8.mauthemewp.com</strong></a><br><a href=\"https://spa9.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://spa9.mauthemewp.com</strong></a><br><a href=\"https://studio.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://studio.mauthemewp.com</strong></a><br><a href=\"https://studio2.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://studio2.mauthemewp.com</strong></a><br><a href=\"https://studio3.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://studio3.mauthemewp.com</strong></a><br><a href=\"https://studio4.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://studio4.mauthemewp.com</strong></a><br><a href=\"https://studio5.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://studio5.mauthemewp.com</strong></a><br><a href=\"https://studio5.mauthemewp.com2/\"><strong style=\"text-decoration: underline;\">https://studio5.mauthemewp.com2</strong></a><br><a href=\"https://suadienthoai.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://suadienthoai.mauthemewp.com</strong></a><br><a href=\"https://suadienthoai2.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://suadienthoai2.mauthemewp.com</strong></a><br><a href=\"https://suadienthoai3.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://suadienthoai3.mauthemewp.com</strong></a><br><a href=\"https://suamanhinh.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://suamanhinh.mauthemewp.com</strong></a><br><a href=\"https://suanha.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://suanha.mauthemewp.com</strong></a><br><a href=\"https://suckhoe.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://suckhoe.mauthemewp.com</strong></a><br><a href=\"https://sukien.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://sukien.mauthemewp.com</strong></a><br><a href=\"https://sukien2.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://sukien2.mauthemewp.com</strong></a><br><a href=\"https://taichinh.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://taichinh.mauthemewp.com</strong></a><br><a href=\"https://taichinh1.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://taichinh1.mauthemewp.com</strong></a><br><a href=\"https://taichinh2.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://taichinh2.mauthemewp.com</strong></a><br><a href=\"https://tainguyen.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://tainguyen.mauthemewp.com</strong></a><br><a href=\"https://taphoa.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://taphoa.mauthemewp.com</strong></a><br><a href=\"https://taxi.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://taxi.mauthemewp.com</strong></a><br><a href=\"https://taxi1.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://taxi1.mauthemewp.com</strong></a><br><a href=\"https://taxi2.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://taxi2.mauthemewp.com</strong></a><br><a href=\"https://textsmart.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://textsmart.mauthemewp.com</strong></a><br><a href=\"https://thammyvien.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://thammyvien.mauthemewp.com</strong></a><br><a href=\"https://thamtu.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://thamtu.mauthemewp.com</strong></a><br><a href=\"https://thanhly.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://thanhly.mauthemewp.com</strong></a><br><a href=\"https://thanhly3.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://thanhly3.mauthemewp.com</strong></a><br><a href=\"https://thegioididong.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://thegioididong.mauthemewp.com</strong></a><br><a href=\"https://thethao.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://thethao.mauthemewp.com</strong></a><br><a href=\"https://thietbi2.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://thietbi2.mauthemewp.com</strong></a><br><a href=\"https://thietbiyte.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://thietbiyte.mauthemewp.com</strong></a><br><a href=\"https://thietkew01.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://thietkew01.mauthemewp.com</strong></a><br><a href=\"https://thietkeweb.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://thietkeweb.mauthemewp.com</strong></a><br><a href=\"https://thietkeweb2.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://thietkeweb2.mauthemewp.com</strong></a><br><a href=\"https://thietkeweb3.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://thietkeweb3.mauthemewp.com</strong></a><br><a href=\"https://thoitrang.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://thoitrang.mauthemewp.com</strong></a><br><a href=\"https://thoitrang3.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://thoitrang3.mauthemewp.com</strong></a><br><a href=\"https://thoitrang4.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://thoitrang4.mauthemewp.com</strong></a><br><a href=\"https://thoitrang5.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://thoitrang5.mauthemewp.com</strong></a><br><a href=\"https://thoitrang6.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://thoitrang6.mauthemewp.com</strong></a><br><a href=\"https://thoitrang7.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://thoitrang7.mauthemewp.com</strong></a><br><a href=\"https://thoitrang8.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://thoitrang8.mauthemewp.com</strong></a><br><a href=\"https://thucpham10.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://thucpham10.mauthemewp.com</strong></a><br><a href=\"https://thucpham11.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://thucpham11.mauthemewp.com</strong></a><br><a href=\"https://thucpham12.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://thucpham12.mauthemewp.com</strong></a><br><a href=\"https://thucpham13.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://thucpham13.mauthemewp.com</strong></a><br><a href=\"https://thucpham14.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://thucpham14.mauthemewp.com</strong></a><br><a href=\"https://thucpham15.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://thucpham15.mauthemewp.com</strong></a><br><a href=\"https://thucpham16.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://thucpham16.mauthemewp.com</strong></a><br><a href=\"https://thucpham17.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://thucpham17.mauthemewp.com</strong></a><br><a href=\"https://thucpham18.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://thucpham18.mauthemewp.com</strong></a><br><a href=\"https://thucpham19.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://thucpham19.mauthemewp.com</strong></a><br><a href=\"https://thucpham20.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://thucpham20.mauthemewp.com</strong></a><br><a href=\"https://thucpham21.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://thucpham21.mauthemewp.com</strong></a><br><a href=\"https://thucpham22.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://thucpham22.mauthemewp.com</strong></a><br><a href=\"https://thucpham6.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://thucpham6.mauthemewp.com</strong></a><br><a href=\"https://thucpham7.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://thucpham7.mauthemewp.com</strong></a><br><a href=\"https://thucpham8.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://thucpham8.mauthemewp.com</strong></a><br><a href=\"https://thucpham9.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://thucpham9.mauthemewp.com</strong></a><br><a href=\"https://thucphamchucnang.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://thucphamchucnang.mauthemewp.com</strong></a><br><a href=\"https://thucphamchucnang2.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://thucphamchucnang2.mauthemewp.com</strong></a><br><a href=\"https://thucphamchucnang3.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://thucphamchucnang3.mauthemewp.com</strong></a><br><a href=\"https://thucphamchucnang4.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://thucphamchucnang4.mauthemewp.com</strong></a><br><a href=\"https://thucphamchucnang5.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://thucphamchucnang5.mauthemewp.com</strong></a><br><a href=\"https://thucphamchucnang6.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://thucphamchucnang6.mauthemewp.com</strong></a><br><a href=\"https://thucung.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://thucung.mauthemewp.com</strong></a><br><a href=\"https://thuexe.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://thuexe.mauthemewp.com</strong></a><br><a href=\"https://thuexe01.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://thuexe01.mauthemewp.com</strong></a><br><a href=\"https://thuexe2.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://thuexe2.mauthemewp.com</strong></a><br><a href=\"https://thuexe3.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://thuexe3.mauthemewp.com</strong></a><br><a href=\"https://thuexe4.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://thuexe4.mauthemewp.com</strong></a><br><a href=\"https://thuexe5.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://thuexe5.mauthemewp.com</strong></a><br><a href=\"https://thuocnam.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://thuocnam.mauthemewp.com</strong></a><br><a href=\"https://thuysinh.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://thuysinh.mauthemewp.com</strong></a><br><a href=\"https://tietkiemdien.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://tietkiemdien.mauthemewp.com</strong></a><br><a href=\"https://tiki.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://tiki.mauthemewp.com</strong></a><br><a href=\"https://tinhbot.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://tinhbot.mauthemewp.com</strong></a><br><a href=\"https://tintuc.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://tintuc.mauthemewp.com</strong></a><br><a href=\"https://tintuc1.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://tintuc1.mauthemewp.com</strong></a><br><a href=\"https://tintuc12.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://tintuc12.mauthemewp.com</strong></a><br><a href=\"https://tintuc13.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://tintuc13.mauthemewp.com</strong></a><br><a href=\"https://tintuc14.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://tintuc14.mauthemewp.com</strong></a><br><a href=\"https://tintuc15.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://tintuc15.mauthemewp.com</strong></a><br><a href=\"https://tintuc16.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://tintuc16.mauthemewp.com</strong></a><br><a href=\"https://tintuc2.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://tintuc2.mauthemewp.com</strong></a><br><a href=\"https://tintuc4.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://tintuc4.mauthemewp.com</strong></a><br><a href=\"https://tintuc5.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://tintuc5.mauthemewp.com</strong></a><br><a href=\"https://tintuc6.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://tintuc6.mauthemewp.com</strong></a><br><a href=\"https://tintuc7.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://tintuc7.mauthemewp.com</strong></a><br><a href=\"https://tintuc8.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://tintuc8.mauthemewp.com</strong></a><br><a href=\"https://tintuc9.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://tintuc9.mauthemewp.com</strong></a><br><a href=\"https://tintucnew.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://tintucnew.mauthemewp.com</strong></a><br><a href=\"https://tocotoco.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://tocotoco.mauthemewp.com</strong></a><br><a href=\"https://tongdai.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://tongdai.mauthemewp.com</strong></a><br><a href=\"https://toplist.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://toplist.mauthemewp.com</strong></a><br><a href=\"https://topviec.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://topviec.mauthemewp.com</strong></a><br><a href=\"https://toyota.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://toyota.mauthemewp.com</strong></a><br><a href=\"https://toyota2.maugiaodien.com/\"><strong style=\"text-decoration: underline;\">https://toyota2.maugiaodien.com</strong></a><br><a href=\"https://tramhuong.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://tramhuong.mauthemewp.com</strong></a><br><a href=\"https://trang-chu-03-04-2024/\"><strong style=\"text-decoration: underline;\">https://trang-chu-03-04-2024</strong></a><br><a href=\"https://trangsuc.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://trangsuc.mauthemewp.com</strong></a><br><a href=\"https://trangsuc1.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://trangsuc1.mauthemewp.com</strong></a><br><a href=\"https://tranhgo.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://tranhgo.mauthemewp.com</strong></a><br><a href=\"https://tranhtuong.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://tranhtuong.mauthemewp.com</strong></a><br><a href=\"https://traxanh.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://traxanh.mauthemewp.com</strong></a><br><a href=\"https://traxanh1.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://traxanh1.mauthemewp.com</strong></a><br><a href=\"https://traxanh2.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://traxanh2.mauthemewp.com</strong></a><br><a href=\"https://trietlongthammyvien.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://trietlongthammyvien.mauthemewp.com</strong></a><br><a href=\"https://trinam.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://trinam.mauthemewp.com</strong></a><br><a href=\"https://truonghoc.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://truonghoc.mauthemewp.com</strong></a><br><a href=\"https://tuixach.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://tuixach.mauthemewp.com</strong></a><br><a href=\"https://tuongphat.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://tuongphat.mauthemewp.com</strong></a><br><a href=\"https://tuvantamly.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://tuvantamly.mauthemewp.com</strong></a><br><a href=\"https://tuyendung2.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://tuyendung2.mauthemewp.com</strong></a><br><a href=\"https://tuyendung3.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://tuyendung3.mauthemewp.com</strong></a><br><a href=\"https://usbsach.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://usbsach.mauthemewp.com</strong></a><br><a href=\"https://vanchuyenuc.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://vanchuyenuc.mauthemewp.com</strong></a><br><a href=\"https://vape.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://vape.mauthemewp.com</strong></a><br><a href=\"https://vatpham.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://vatpham.mauthemewp.com</strong></a><br><a href=\"https://vaytien2.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://vaytien2.mauthemewp.com</strong></a><br><a href=\"https://vaytiennhanh.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://vaytiennhanh.mauthemewp.com</strong></a><br><a href=\"https://vcheck.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://vcheck.mauthemewp.com</strong></a><br><a href=\"https://vemaybaygiare.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://vemaybaygiare.mauthemewp.com</strong></a><br><a href=\"https://vesinh.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://vesinh.mauthemewp.com</strong></a><br><a href=\"https://vesinh2.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://vesinh2.mauthemewp.com</strong></a><br><a href=\"https://vesinh3.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://vesinh3.mauthemewp.com</strong></a><br><a href=\"https://viendatpk.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://viendatpk.mauthemewp.com</strong></a><br><a href=\"https://vienthong.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://vienthong.mauthemewp.com</strong></a><br><a href=\"https://viettel.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://viettel.mauthemewp.com</strong></a><br><a href=\"https://vila.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://vila.mauthemewp.com</strong></a><br><a href=\"https://vivaclinic.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://vivaclinic.mauthemewp.com</strong></a><br><a href=\"https://vpbank.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://vpbank.mauthemewp.com</strong></a><br><a href=\"https://winauto.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://winauto.mauthemewp.com</strong></a><br><a href=\"https://xamhinh.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://xamhinh.mauthemewp.com</strong></a><br><a href=\"https://xaydung.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://xaydung.mauthemewp.com</strong></a><br><a href=\"https://xaydung2.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://xaydung2.mauthemewp.com</strong></a><br><a href=\"https://xaydung3.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://xaydung3.mauthemewp.com</strong></a><br><a href=\"https://xaydung5.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://xaydung5.mauthemewp.com</strong></a><br><a href=\"https://xaydung6.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://xaydung6.mauthemewp.com</strong></a><br><a href=\"https://xedap.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://xedap.mauthemewp.com</strong></a><br><a href=\"https://xedap2.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://xedap2.mauthemewp.com</strong></a><br><a href=\"https://xitmakeup.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://xitmakeup.mauthemewp.com</strong></a><br><a href=\"https://xitthom.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://xitthom.mauthemewp.com</strong></a><br><a href=\"https://xkld2.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://xkld2.mauthemewp.com</strong></a><br><a href=\"https://xkld3.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://xkld3.mauthemewp.com</strong></a><br><a href=\"https://xkld5.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://xkld5.mauthemewp.com</strong></a><br><a href=\"https://xkld6.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://xkld6.mauthemewp.com</strong></a><br><a href=\"https://yensao.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://yensao.mauthemewp.com</strong></a><br><a href=\"https://yensao2.mauthemewp.com/\"><strong style=\"text-decoration: underline;\">https://yensao2.mauthemewp.com</strong></a><br><a href=\"https://aff.maugiaodien.com/\"><strong style=\"text-decoration: underline;\">https://aff.maugiaodien.com</strong></a><br><a href=\"https://agency2.maugiaodien.com/\"><strong style=\"text-decoration: underline;\">https://agency2.maugiaodien.com</strong></a><br><a href=\"https://agency3.maugiaodien.com/\"><strong style=\"text-decoration: underline;\">https://agency3.maugiaodien.com</strong></a><br><a href=\"https://aqua.maugiaodien.com/\"><strong style=\"text-decoration: underline;\">https://aqua.maugiaodien.com</strong></a><br><a href=\"https://babycare.maugiaodien.com/\"><strong style=\"text-decoration: underline;\">https://babycare.maugiaodien.com</strong></a><br><a href=\"https://bachhoa5.maugiaodien.com/\"><strong style=\"text-decoration: underline;\">https://bachhoa5.maugiaodien.com</strong></a><br><a href=\"https://baohiem3.maugiaodien.com/\"><strong style=\"text-decoration: underline;\">https://baohiem3.maugiaodien.com</strong></a><br><a href=\"https://baoholaodong.maugiaodien.com/\"><strong style=\"text-decoration: underline;\">https://baoholaodong.maugiaodien.com</strong></a><br><a href=\"https://baoholaodong2.maugiaodien.com/\"><strong style=\"text-decoration: underline;\">https://baoholaodong2.maugiaodien.com</strong></a><br><a href=\"https://baoholaodong3.maugiaodien.com/\"><span style=\"text-decoration: underline;\">https://baoholaodong3.maugiaodien.com/</span></a><br><a href=\"https://base.maugiaodien.com/\"><span style=\"text-decoration: underline;\">https://base.maugiaodien.com</span></a><br><a href=\"https://bds33.maugiaodien.com/\"><strong style=\"text-decoration: underline;\">https://bds33.maugiaodien.com</strong></a><br><a href=\"https://bds34.maugiaodien.com/\"><strong style=\"text-decoration: underline;\">https://bds34.maugiaodien.com</strong></a><br><a href=\"https://bds35.maugiaodien.com/\"><strong style=\"text-decoration: underline;\">https://bds35.maugiaodien.com</strong></a><br><a href=\"https://bds36.maugiaodien.com/\"><strong style=\"text-decoration: underline;\">https://bds36.maugiaodien.com</strong></a><br><a href=\"https://bds37.maugiaodien.com/\"><strong style=\"text-decoration: underline;\">https://bds37.maugiaodien.com</strong></a><br><a href=\"https://bds38.maugiaodien.com/\"><strong style=\"text-decoration: underline;\">https://bds38.maugiaodien.com</strong></a><br><a href=\"https://bds39.maugiaodien.com/\"><strong style=\"text-decoration: underline;\">https://bds39.maugiaodien.com</strong></a><br><a href=\"https://bds40.maugiaodien.com/\"><strong style=\"text-decoration: underline;\">https://bds40.maugiaodien.com</strong></a><br><a href=\"https://bds41.maugiaodien.com/\"><strong style=\"text-decoration: underline;\">https://bds41.maugiaodien.com</strong></a><br><a href=\"https://bds42.maugiaodien.com/\"><strong style=\"text-decoration: underline;\">https://bds42.maugiaodien.com</strong></a><br><a href=\"https://bds43.maugiaodien.com/\"><strong style=\"text-decoration: underline;\">https://bds43.maugiaodien.com</strong></a><br><a href=\"https://beptu2.maugiaodien.com/\"><strong style=\"text-decoration: underline;\">https://beptu2.maugiaodien.com</strong></a><br><a href=\"https://bienquangcao.maugiaodien.com/\"><strong style=\"text-decoration: underline;\">https://bienquangcao.maugiaodien.com</strong></a><br><a href=\"https://bienquangcao2.maugiaodien.com/\"><strong style=\"text-decoration: underline;\">https://bienquangcao2.maugiaodien.com</strong></a><br><a href=\"https://bitcacao.maugiaodien.com/\"><strong style=\"text-decoration: underline;\">https://bitcacao.maugiaodien.com</strong></a><br><a href=\"https://bonnuoc.maugiaodien.com/\"><strong style=\"text-decoration: underline;\">https://bonnuoc.maugiaodien.com</strong></a><br><a href=\"https://camping.maugiaodien.com/\"><strong style=\"text-decoration: underline;\">https://camping.maugiaodien.com</strong></a><br><a href=\"https://capnuoc.maugiaodien.com/\"><strong style=\"text-decoration: underline;\">https://capnuoc.maugiaodien.com</strong></a><br><a href=\"https://casino2.maugiaodien.com/\"><strong style=\"text-decoration: underline;\">https://casino2.maugiaodien.com</strong></a><br><a href=\"https://caunang.maugiaodien.com/\"><strong style=\"text-decoration: underline;\">https://caunang.maugiaodien.com</strong></a><br><a href=\"https://cayxanh2.maugiaodien.com/\"><strong style=\"text-decoration: underline;\">https://cayxanh2.maugiaodien.com</strong></a><br><a href=\"https://cayxanh3.maugiaodien.com/\"><strong style=\"text-decoration: underline;\">https://cayxanh3.maugiaodien.com</strong></a><br><a href=\"https://chongtham.maugiaodien.com/\"><strong style=\"text-decoration: underline;\">https://chongtham.maugiaodien.com</strong></a><br><a href=\"https://chuyendoiso.maugiaodien.com/\"><strong style=\"text-decoration: underline;\">https://chuyendoiso.maugiaodien.com</strong></a><br><a href=\"https://chuyendoiso2.maugiaodien.com/\"><strong style=\"text-decoration: underline;\">https://chuyendoiso2.maugiaodien.com</strong></a><br><a href=\"https://cloudbase.maugiaodien.com/\"><strong style=\"text-decoration: underline;\">https://cloudbase.maugiaodien.com</strong></a><br><a href=\"https://coin.maugiaodien.com/\"><strong style=\"text-decoration: underline;\">https://coin.maugiaodien.com</strong></a><br><a href=\"https://coin2.maugiaodien.com/\"><strong style=\"text-decoration: underline;\">https://coin2.maugiaodien.com</strong></a><br><a href=\"https://congnghe.maugiaodien.com/\"><strong style=\"text-decoration: underline;\">https://congnghe.maugiaodien.com</strong></a><br><a href=\"https://congnghe2.maugiaodien.com/\"><strong style=\"text-decoration: underline;\">https://congnghe2.maugiaodien.com</strong></a><br><a href=\"https://damuoi.maugiaodien.com/\"><strong style=\"text-decoration: underline;\">https://damuoi.maugiaodien.com</strong></a><br><a href=\"https://damynghe.maugiaodien.com/\"><strong style=\"text-decoration: underline;\">https://damynghe.maugiaodien.com</strong></a><br><a href=\"https://daotao2.maugiaodien.com/\"><strong style=\"text-decoration: underline;\">https://daotao2.maugiaodien.com</strong></a><br><a href=\"https://daylaixe2.maugiaodien.com/\"><strong style=\"text-decoration: underline;\">https://daylaixe2.maugiaodien.com</strong></a><br><a href=\"https://daynhac.maugiaodien.com/\"><strong style=\"text-decoration: underline;\">https://daynhac.maugiaodien.com</strong></a><br><a href=\"https://denchum.maugiaodien.com/\"><strong style=\"text-decoration: underline;\">https://denchum.maugiaodien.com</strong></a><br><a href=\"https://denled3.maugiaodien.com/\"><strong style=\"text-decoration: underline;\">https://denled3.maugiaodien.com</strong></a><br><a href=\"https://dienmay8.maugiaodien.com/\"><strong style=\"text-decoration: underline;\">https://dienmay8.maugiaodien.com</strong></a><br><a href=\"https://dochoixe2.maugiaodien.com/\"><strong style=\"text-decoration: underline;\">https://dochoixe2.maugiaodien.com</strong></a><br><a href=\"https://thep.maugiaodien.com/\"><strong style=\"text-decoration: underline;\">https://thep.maugiaodien.com</strong></a><br><a href=\"https://thietkeweb4.maugiaodien.com/\"><strong style=\"text-decoration: underline;\">https://thietkeweb4.maugiaodien.com</strong></a><br><a href=\"https://thietkeweb5.maugiaodien.com/\"><strong style=\"text-decoration: underline;\">https://thietkeweb5.maugiaodien.com</strong></a><br><a href=\"https://thoitrang10.maugiaodien.com/\"><strong style=\"text-decoration: underline;\">https://thoitrang10.maugiaodien.com</strong></a><br><a href=\"https://thoitrang11.maugiaodien.com/\"><strong style=\"text-decoration: underline;\">https://thoitrang11.maugiaodien.com</strong></a><br><a href=\"https://thoitrang13.maugiaodien.com/\"><strong style=\"text-decoration: underline;\">https://thoitrang13.maugiaodien.com</strong></a><br><a href=\"https://thoitrang15.maugiaodien.com/\"><strong style=\"text-decoration: underline;\">https://thoitrang15.maugiaodien.com</strong></a><br><a href=\"https://thoitrang9.maugiaodien.com/\"><strong style=\"text-decoration: underline;\">https://thoitrang9.maugiaodien.com</strong></a><br><a href=\"https://thucpham24.maugiaodien.com/\"><strong style=\"text-decoration: underline;\">https://thucpham24.maugiaodien.com</strong></a><br><a href=\"https://thucpham25.maugiaodien.com/\"><strong style=\"text-decoration: underline;\">https://thucpham25.maugiaodien.com</strong></a><br><a href=\"https://thucphamsach.maugiaodien.com/\"><strong style=\"text-decoration: underline;\">https://thucphamsach.maugiaodien.com</strong></a><br><a href=\"https://thuexe6.maugiaodien.com/\"><strong style=\"text-decoration: underline;\">https://thuexe6.maugiaodien.com</strong></a><br><a href=\"https://tinhoc.maugiaodien.com/\"><strong style=\"text-decoration: underline;\">https://tinhoc.maugiaodien.com</strong></a><br><a href=\"https://tintuc15.maugiaodien.com/\"><strong style=\"text-decoration: underline;\">https://tintuc15.maugiaodien.com</strong></a><br><a href=\"https://tintuc17.maugiaodien.com/\"><strong style=\"text-decoration: underline;\">https://tintuc17.maugiaodien.com</strong></a><br><a href=\"https://tintuc18.maugiaodien.com/\"><strong style=\"text-decoration: underline;\">https://tintuc18.maugiaodien.com</strong></a><br><a href=\"https://tintuc19.maugiaodien.com/\"><strong style=\"text-decoration: underline;\">https://tintuc19.maugiaodien.com</strong></a><br><a href=\"https://tintuc20.maugiaodien.com/\"><strong style=\"text-decoration: underline;\">https://tintuc20.maugiaodien.com</strong></a><br><a href=\"https://tintuc21.maugiaodien.com/\"><strong style=\"text-decoration: underline;\">https://tintuc21.maugiaodien.com</strong></a><br><a href=\"https://tintuc22.maugiaodien.com/\"><strong style=\"text-decoration: underline;\">https://tintuc22.maugiaodien.com</strong></a><br><a href=\"https://tintuc23.maugiaodien.com/\"><strong style=\"text-decoration: underline;\">https://tintuc23.maugiaodien.com</strong></a><br><a href=\"https://tongdai.maugiaodien.com/\"><strong style=\"text-decoration: underline;\">https://tongdai.maugiaodien.com</strong></a><br><a href=\"https://toyota3.maugiaodien.com/\"><strong style=\"text-decoration: underline;\">https://toyota3.maugiaodien.com</strong></a><br><a href=\"https://trangsuc2.maugiaodien.com/\"><strong style=\"text-decoration: underline;\">https://trangsuc2.maugiaodien.com</strong></a><br><a href=\"https://trangsuc3.maugiaodien.com/\"><strong style=\"text-decoration: underline;\">https://trangsuc3.maugiaodien.com</strong></a><br><a href=\"https://traxanh3.maugiaodien.com/\"><strong style=\"text-decoration: underline;\">https://traxanh3.maugiaodien.com</strong></a><br><a href=\"https://vanchuyen2.maugiaodien.com/\"><strong style=\"text-decoration: underline;\">https://vanchuyen2.maugiaodien.com</strong></a><br><a href=\"https://vanchuyen3.maugiaodien.com/\"><strong style=\"text-decoration: underline;\">https://vanchuyen3.maugiaodien.com</strong></a><br><a href=\"https://vatlieutrangtri.maugiaodien.com/\"><strong style=\"text-decoration: underline;\">https://vatlieutrangtri.maugiaodien.com</strong></a><br><a href=\"https://vesinh4.maugiaodien.com/\"><strong style=\"text-decoration: underline;\">https://vesinh4.maugiaodien.com</strong></a><br><a href=\"https://vesinh5.maugiaodien.com/\"><strong style=\"text-decoration: underline;\">https://vesinh5.maugiaodien.com</strong></a><br><a href=\"https://xkld8.maugiaodien.com/\"><strong style=\"text-decoration: underline;\">https://xkld8.maugiaodien.com</strong></a><br><a href=\"https://xuatbansach.maugiaodien.com/\"><strong style=\"text-decoration: underline;\">https://xuatbansach.maugiaodien.com</strong></a><br><a href=\"https://yensao3.maugiaodien.com/\"><strong style=\"text-decoration: underline;\">https://yensao3.maugiaodien.com</strong></a></p>', '1', '3000000.00', '1', 102, 2044, '[\"01JGR727YDN53QXD5APVSGGWC0.jpg\"]', '2025-01-04 08:31:47', '2025-01-11 02:24:02');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bank_brand_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `account_number` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `transaction_date` datetime NOT NULL,
  `amount_out` decimal(30,2) NOT NULL DEFAULT '0.00',
  `amount_in` decimal(30,2) NOT NULL DEFAULT '0.00',
  `accumulated` decimal(30,2) NOT NULL DEFAULT '0.00',
  `transaction_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_number` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_account` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_account_id` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `bank_brand_name`, `account_number`, `transaction_date`, `amount_out`, `amount_in`, `accumulated`, `transaction_content`, `reference_number`, `code`, `sub_account`, `bank_account_id`, `created_at`, `updated_at`) VALUES
('5363536', 'MBBank', '0966579217', '2024-12-13 10:32:14', '0.00', '2000.00', '0.00', 'TRAN LE HUY HOANG chuyen tien', 'FT24348406509051', NULL, NULL, '5090', '2024-12-13 04:01:45', '2024-12-13 04:01:45'),
('5363885', 'MBBank', '0966579217', '2024-12-13 10:47:14', '10000.00', '0.00', '0.00', 'MOMO-CASHIN-0966579217-OQCIKArejQlO-73875172153', 'FT24348074985470', NULL, NULL, '5090', '2024-12-13 04:01:45', '2024-12-13 04:01:45'),
('5363890', 'MBBank', '0966579217', '2024-12-13 10:47:27', '0.00', '2000.00', '0.00', '73876613791-HG 2509ROBLOX-CHUYEN TIEN-OQCH37878225-MOMO73876613791MOMO', 'FT24348174190543', NULL, NULL, '5090', '2024-12-13 04:01:45', '2024-12-13 04:01:45'),
('5364010', 'MBBank', '0966579217', '2024-12-13 10:54:17', '0.00', '2001.00', '0.00', '73877090731-HG 2509ROBLOX-CHUYEN TIEN-OQCH37880160-MOMO73877090731MOMO', 'FT24348688165369', NULL, NULL, '5090', '2024-12-13 04:01:45', '2024-12-13 04:01:45'),
('5364191', 'MBBank', '0966579217', '2024-12-13 11:08:17', '0.00', '2000.00', '0.00', '73878288906-HG 2509ROBLOX-CHUYEN TIEN-OQCH37884372-MOMO73878288906MOMO', 'FT24348500376534', NULL, NULL, '5090', '2024-12-13 04:08:54', '2024-12-13 04:08:54'),
('5467615', 'MBBank', '0966579217', '2024-12-16 19:04:19', '0.00', '30000.00', '0.00', '74169758919-TRINH GIA NGHI chuyen tien qua MoMo-CHUYEN TIEN-OQCH39036614-MOMO74169758919MOMO', 'FT24351010922690', NULL, NULL, '5090', '2024-12-17 14:04:11', '2024-12-17 14:04:11'),
('5467678', 'MBBank', '0966579217', '2024-12-16 19:05:44', '0.00', '30000.00', '0.00', 'PHOTO DOCS', 'FT24351110448299', NULL, NULL, '5090', '2024-12-17 14:04:11', '2024-12-17 14:04:11'),
('5483840', 'MBBank', '0966579217', '2024-12-17 04:44:00', '10000.00', '0.00', '0.00', 'MOMO-CASHIN-0966579217-OQCIqXTnsXvx-74194944044 NG CHUYEN:TRAN LE HOANG GIANG', 'FT24352290625599', NULL, NULL, '5090', '2024-12-17 14:04:11', '2024-12-17 14:04:11'),
('5483888', 'MBBank', '0966579217', '2024-12-17 04:52:41', '10000.00', '0.00', '0.00', 'MOMO-CASHIN-0966579217-OQCIUFELyKPN-74193684602', 'FT24352022628999', NULL, NULL, '5090', '2024-12-17 14:04:11', '2024-12-17 14:04:11'),
('5483890', 'MBBank', '0966579217', '2024-12-17 04:52:43', '0.00', '10000.00', '0.00', '74195055998-INVQK0XKZR7-CHUYEN TIEN-OQCH39133019-MOMO74195055998MOMO', 'FT24352425905949', NULL, NULL, '5090', '2024-12-17 14:04:11', '2024-12-17 14:04:11'),
('5485401', 'MBBank', '0966579217', '2024-12-17 08:07:50', '0.00', '10000.00', '0.00', '74202052730-INVULONXNRT-CHUYEN TIEN-OQCH39153818-MOMO74202052730MOMO', 'FT24352568510903', NULL, NULL, '5090', '2024-12-17 14:04:11', '2024-12-17 14:04:11'),
('5485405', 'MBBank', '0966579217', '2024-12-17 08:07:47', '10000.00', '0.00', '0.00', 'MOMO-CASHIN-0966579217-OQCImYOqnGnU-74200591597', 'FT24352207673149', NULL, NULL, '5090', '2024-12-17 14:04:11', '2024-12-17 14:04:11'),
('5488556', 'MBBank', '0966579217', '2024-12-17 10:45:00', '117000.00', '0.00', '0.00', 'TRAN LE HOANG GIANG chuyen tien NG CHUYEN:CUSTOMER', 'FT24352957882090', NULL, NULL, '5090', '2024-12-17 14:04:11', '2024-12-17 14:04:11'),
('5489694', 'MBBank', '0966579217', '2024-12-17 12:02:00', '0.00', '10000.00', '0.00', 'INVJBJKI2US   Ma giao dich  Trace124745 Trace 124745 NG CHUYEN:CUSTOMER 0966579217', 'FT24352280244040', NULL, NULL, '5090', '2024-12-17 14:04:11', '2024-12-17 14:04:11'),
('5489714', 'MBBank', '0966579217', '2024-12-17 12:02:00', '10000.00', '0.00', '0.00', 'MOMO-CASHIN-0966579217-OQCIiRUrPAGx-74218418836 NG CHUYEN:TRAN LE HOANG GIANG', 'FT24352507513709', NULL, NULL, '5090', '2024-12-17 14:04:11', '2024-12-17 14:04:11'),
('5504548', 'MBBank', '0966579217', '2024-12-17 21:04:11', '228500.00', '0.00', '0.00', 'MOMO-CASHIN-0966579217-OQCIhjFmPvUM-74259096007', 'FT24352280504706', NULL, NULL, '5090', '2024-12-17 14:04:57', '2024-12-17 14:04:57'),
('5504551', 'MBBank', '0966579217', '2024-12-17 21:04:13', '0.00', '228500.00', '0.00', '74260616060-611365-CHUYEN TIEN-OQCH39373634-MOMO74260616060MOMO', 'FT24352490207898', NULL, NULL, '5090', '2024-12-17 14:04:57', '2024-12-17 14:04:57'),
('5517528', 'MBBank', '0966579217', '2024-12-18 10:03:04', '0.00', '200000.00', '0.00', 'Chuyen tien thanh toan   Ma giao dich  Trace133647 Trace 133647', 'FT24353071016789', NULL, NULL, '5090', '2024-12-18 07:03:29', '2024-12-18 07:03:29'),
('5518711', 'MBBank', '0966579217', '2024-12-18 11:11:52', '250800.00', '0.00', '0.00', 'QRCODE VNPAY QRCODE 096657921724121811112289851 BP0001b5bch3', 'FT24353349694852', NULL, NULL, '5090', '2024-12-18 07:03:29', '2024-12-18 07:03:29'),
('5520764', 'MBBank', '0966579217', '2024-12-18 14:04:49', '10000.00', '0.00', '0.00', 'MOMO-CASHIN-0966579217-OQCICyzGDIkp-74306357302', 'FT24353306116978', NULL, NULL, '5090', '2024-12-18 07:05:57', '2024-12-18 07:05:57'),
('5520863', 'MBBank', '0966579217', '2024-12-18 14:10:31', '10650.00', '0.00', '0.00', 'MOMO-CASHIN-0966579217-OQCIuQbATQGJ-74307599342', 'FT24353150604760', NULL, NULL, '5090', '2024-12-18 07:11:17', '2024-12-18 07:11:17'),
('5520864', 'MBBank', '0966579217', '2024-12-18 14:10:34', '0.00', '10650.00', '0.00', '74308598282-155641-CHUYEN TIEN-OQCH39548853-MOMO74308598282MOMO', 'FT24353526298135', NULL, NULL, '5090', '2024-12-18 07:11:19', '2024-12-18 07:11:19'),
('5520934', 'MBBank', '0966579217', '2024-12-18 14:15:33', '10650.00', '0.00', '0.00', 'MOMO-CASHIN-0966579217-OQCIctPVCftp-74307602378', 'FT24353698318044', NULL, NULL, '5090', '2024-12-18 07:16:17', '2024-12-18 07:16:17'),
('5520936', 'MBBank', '0966579217', '2024-12-18 14:15:35', '0.00', '10650.00', '0.00', '74309033193-927083-CHUYEN TIEN-OQCH39549957-MOMO74309033193MOMO', 'FT24353547661926', NULL, NULL, '5090', '2024-12-18 07:16:22', '2024-12-18 07:16:22'),
('5520957', 'MBBank', '0966579217', '2024-12-18 14:16:52', '18280.00', '0.00', '0.00', 'MOMO-CASHIN-0966579217-OQCIzrekhETm-74307454213', 'FT24353008086641', NULL, NULL, '5090', '2024-12-18 07:17:38', '2024-12-18 07:17:38'),
('55209571', 'MBBank', '0966579217', '2024-12-18 14:16:52', '18280.00', '0.00', '0.00', 'MOMO-CASHIN-0966579217-OQCIzrekhETm-74307454213', 'FT24353008086641', NULL, NULL, '5090', '2024-12-18 07:17:38', '2024-12-18 07:17:38'),
('5520958', 'MBBank', '0966579217', '2024-12-18 14:16:55', '0.00', '18280.00', '0.00', '74309122490-905692-CHUYEN TIEN-OQCH39550278-MOMO74309122490MOMO', 'FT24353438100861', NULL, NULL, '5090', '2024-12-18 07:17:38', '2024-12-18 07:17:38'),
('5576347', 'MBBank', '0966579217', '2024-12-20 09:03:00', '30000.00', '0.00', '0.00', 'TRAN LE HOANG GIANG chuyen tien - Ma giao dich/ Trace 729819', 'FT24355660755605', NULL, NULL, '5090', '2024-12-22 07:31:52', '2024-12-22 07:31:52'),
('5579191', 'MBBank', '0966579217', '2024-12-20 11:19:49', '150000.00', '0.00', '0.00', 'TRAN LE HOANG GIANG chuyen tien- MaGD ACSP/ W3939221', 'FT24355431004351', NULL, NULL, '5090', '2024-12-22 07:31:52', '2024-12-22 07:31:52'),
('5579385', 'MBBank', '0966579217', '2024-12-20 11:32:20', '24000.00', '0.00', '0.00', 'TRAN LE HOANG GIANG chuyen tien- MaGD ACSP/ R4262121', 'FT24355588007118', NULL, NULL, '5090', '2024-12-22 07:31:52', '2024-12-22 07:31:52'),
('5579818', 'MBBank', '0966579217', '2024-12-20 12:04:29', '0.00', '550000.00', '0.00', 'HUYNH VAN TRUNG chuyen tien FT24355363993550   Ma giao dich  Trace668476 Trace 668476', 'FT24355806484235', NULL, NULL, '5090', '2024-12-22 07:31:52', '2024-12-22 07:31:52'),
('5580293', 'MBBank', '0966579217', '2024-12-20 12:47:21', '220000.00', '0.00', '0.00', 'TRAN LE HOANG GIANG chuyen tien', 'FT24355496818380', NULL, NULL, '5090', '2024-12-22 07:31:52', '2024-12-22 07:31:52'),
('5587477', 'MBBank', '0966579217', '2024-12-20 19:13:05', '0.00', '400000.00', '0.00', 'TRAN THI DIEM QUYNH chuyen tien', 'FT24355589515130', NULL, NULL, '5090', '2024-12-22 07:31:52', '2024-12-22 07:31:52'),
('5611239', 'MBBank', '0966579217', '2024-12-21 12:45:03', '42000.00', '0.00', '0.00', 'TRAN LE HOANG GIANG chuyen tien - Ma giao dich/ Trace 053940', 'FT24356010359023', NULL, NULL, '5090', '2024-12-22 07:31:52', '2024-12-22 07:31:52'),
('5611248', 'MBBank', '0966579217', '2024-12-21 12:45:19', '0.00', '42000.00', '0.00', 'TRAN LE HUY HOANG chuyen tien', 'FT24356089464102', NULL, NULL, '5090', '2024-12-22 07:31:52', '2024-12-22 07:31:52'),
('5628543', 'MBBank', '0966579217', '2024-12-21 20:15:43', '0.00', '100000.00', '0.00', 'MBVCB.7981258022.333212.chuyen tiencode.CT tu 1014309416 NGUYEN VAN CHIEN toi 0966579217 TRAN LE HOANG GIANG tai MB- Ma GD ACSP/ gz333212', 'FT24358470886697', NULL, NULL, '5090', '2024-12-22 07:31:52', '2024-12-22 07:31:52'),
('5641830', 'MBBank', '0966579217', '2024-12-22 01:07:00', '0.00', '200.00', '0.00', 'NODATA', '0966579217-20241221', NULL, NULL, '5090', '2024-12-22 07:31:52', '2024-12-22 07:31:52'),
('5649935', 'MBBank', '0966579217', '2024-12-22 14:34:32', '0.00', '10000.00', '0.00', '74627951589-HG 2509ROBLOX-CHUYEN TIEN-OQCH40695153-MOMO74627951589MOMO', 'FT24358227070035', NULL, NULL, '5090', '2024-12-22 07:35:28', '2024-12-22 07:35:28'),
('5678938', 'MBBank', '0966579217', '2024-12-23 09:18:45', '0.00', '200000.00', '0.00', 'NGUYEN SI LOI CHUYEN TIEN- Ma GD ACSP/ cf649416', 'FT24358000004697', NULL, NULL, '5090', '2024-12-24 12:00:45', '2024-12-24 12:00:45'),
('5689770', 'MBBank', '0966579217', '2024-12-23 18:15:43', '53000.00', '0.00', '0.00', 'TRAN LE HOANG GIANG chuyen tien', 'FT24358003591567', NULL, NULL, '5090', '2024-12-24 12:00:45', '2024-12-24 12:00:45'),
('5696256', 'MBBank', '0966579217', '2024-12-23 20:51:51', '0.00', '145000.00', '0.00', 'TRAN PHUONG THAO chuyen tien whalegame gd2 tang a coc matcha latte nheee', 'FT24358275343471', NULL, NULL, '5090', '2024-12-24 12:00:45', '2024-12-24 12:00:45'),
('5696277', 'MBBank', '0966579217', '2024-12-23 20:52:30', '0.00', '1305000.00', '0.00', 'e e chuyen nham a', 'FT24358093418136', NULL, NULL, '5090', '2024-12-24 12:00:45', '2024-12-24 12:00:45'),
('5720419', 'MBBank', '0966579217', '2024-12-24 20:28:52', '0.00', '200000.00', '0.00', 'DANG VAN TUAN chuyen tien FT24359424405139   Ma giao dich  Trace523305Trace 523305', 'FT24359200643506', NULL, NULL, '5090', '2024-12-24 13:53:43', '2024-12-24 13:53:43'),
('5721518', 'MBBank', '0966579217', '2024-12-24 20:56:47', '10000.00', '0.00', '0.00', 'MOMO-CASHIN-0966579217-OQCIjPkuNxQk-74814617848', 'FT24359391798570', NULL, NULL, '5090', '2024-12-24 13:57:44', '2024-12-24 13:57:44'),
('5721522', 'MBBank', '0966579217', '2024-12-24 20:56:50', '0.00', '10000.00', '0.00', '74816353538-HG 2509ROBLOX-CHUYEN TIEN-OQCH41401223-MOMO74816353538MOMO', 'FT24359900183314', NULL, NULL, '5090', '2024-12-24 13:57:47', '2024-12-24 13:57:47'),
('5735969', 'MBBank', '0966579217', '2024-12-25 10:22:41', '10000.00', '0.00', '0.00', 'MOMO-CASHIN-0966579217-OQCInhGLKzWj-74847679979', 'FT24360920027052', NULL, NULL, '5090', '2024-12-25 03:24:37', '2024-12-25 03:24:37'),
('5735972', 'MBBank', '0966579217', '2024-12-25 10:22:44', '0.00', '10000.00', '0.00', '74848657250-HG 2509ROBLOX-CHUYEN TIEN-OQCH41507358-MOMO74848657250MOMO', 'FT24360919313509', NULL, NULL, '5090', '2024-12-25 03:24:37', '2024-12-25 03:24:37'),
('5741283', 'MBBank', '0966579217', '2024-12-25 15:49:13', '0.00', '40000000.00', '0.00', 'NT-436001021713', 'FT24360035225796', NULL, NULL, '5090', '2024-12-25 12:32:09', '2024-12-25 12:32:09'),
('5741333', 'MBBank', '0966579217', '2024-12-25 15:51:26', '0.00', '29000000.00', '0.00', 'NT-436001023507', 'FT24360723396819', NULL, NULL, '5090', '2024-12-25 12:32:09', '2024-12-25 12:32:09'),
('5742692', 'MBBank', '0966579217', '2024-12-25 16:53:46', '1000000.00', '0.00', '0.00', 'TRAN LE HOANG GIANG chuyen tien', 'FT24360345056563', NULL, NULL, '5090', '2024-12-25 12:32:09', '2024-12-25 12:32:09'),
('5742713', 'MBBank', '0966579217', '2024-12-25 16:54:39', '10000000.00', '0.00', '0.00', 'TRAN LE HOANG GIANG chuyen tien', 'FT24360716371880', NULL, NULL, '5090', '2024-12-25 12:32:09', '2024-12-25 12:32:09'),
('5742747', 'MBBank', '0966579217', '2024-12-25 16:55:57', '10000000.00', '0.00', '0.00', 'TRAN LE HOANG GIANG chuyen tien', 'FT24360789526524', NULL, NULL, '5090', '2024-12-25 12:32:09', '2024-12-25 12:32:09'),
('5742772', 'MBBank', '0966579217', '2024-12-25 16:57:10', '20000000.00', '0.00', '0.00', 'TRAN LE HOANG GIANG chuyen tien', 'FT24360132454760', NULL, NULL, '5090', '2024-12-25 12:32:09', '2024-12-25 12:32:09'),
('5742792', 'MBBank', '0966579217', '2024-12-25 16:57:42', '0.00', '10000000.00', '0.00', 'TRAN LE HUY HOANG chuyen tien', 'FT24360801804061', NULL, NULL, '5090', '2024-12-25 12:32:09', '2024-12-25 12:32:09'),
('5742880', 'MBBank', '0966579217', '2024-12-25 17:00:21', '400000.00', '0.00', '0.00', 'TRAN LE HOANG GIANG chuyen tien', 'FT24360839901371', NULL, NULL, '5090', '2024-12-25 12:32:09', '2024-12-25 12:32:09'),
('5743662', 'MBBank', '0966579217', '2024-12-25 17:22:42', '20000000.00', '0.00', '0.00', 'TRAN LE HOANG GIANG chuyen tien- MaGD ACSP/ IT223042', 'FT24360859139073', NULL, NULL, '5090', '2024-12-25 12:32:09', '2024-12-25 12:32:09'),
('5743721', 'MBBank', '0966579217', '2024-12-25 17:24:09', '20000000.00', '0.00', '0.00', 'TRAN LE HOANG GIANG chuyen tien- MaGD ACSP/ S5692830', 'FT24360874674962', NULL, NULL, '5090', '2024-12-25 12:32:09', '2024-12-25 12:32:09'),
('5752364', 'MBBank', '0966579217', '2024-12-25 21:06:35', '0.00', '53000.00', '0.00', 'NGUYEN VAN TRONG chuyen tien', 'FT24360010044602', NULL, NULL, '5090', '2024-12-26 03:05:41', '2024-12-26 03:05:41'),
('5809217', 'MBBank', '0966579217', '2024-12-27 20:32:18', '0.00', '300000.00', '0.00', 'NGUYEN HUU LONG chuyen tien FT24362908532150   Ma giao dich  Trace511379 Trace 511379', 'FT24362121038679', NULL, NULL, '5090', '2024-12-28 02:20:34', '2024-12-28 02:20:34'),
('5813843', 'MBBank', '0966579217', '2024-12-27 23:09:41', '0.00', '100000.00', '0.00', '75068149062-HG O8F8TRDELY-CHUYEN TIEN-OQCH42312683-MOMO75068149062MOMO', 'FT24363064415804', NULL, NULL, '5090', '2024-12-28 02:20:34', '2024-12-28 02:20:34'),
('5813845', 'MBBank', '0966579217', '2024-12-27 23:09:35', '100000.00', '0.00', '0.00', 'MOMO-CASHIN-0966579217-OQCIkEhCvZui-75066804826', 'FT24363528664800', NULL, NULL, '5090', '2024-12-28 02:20:34', '2024-12-28 02:20:34'),
('5820982', 'MBBank', '0966579217', '2024-12-28 09:19:15', '100000.00', '0.00', '0.00', 'MOMO-CASHIN-0966579217-OQCIuRIMqRmf-75085022324', 'FT24363000903229', NULL, NULL, '5090', '2024-12-28 02:20:34', '2024-12-28 02:20:34'),
('5820983', 'MBBank', '0966579217', '2024-12-28 09:19:18', '0.00', '100000.00', '0.00', '75086454233-HG X5VHSCSRI3-CHUYEN TIEN-OQCH42363509-MOMO75086454233MOMO', 'FT24363180756178', NULL, NULL, '5090', '2024-12-28 02:20:34', '2024-12-28 02:20:34'),
('5858100', 'MBBank', '0966579217', '2024-12-29 16:53:31', '100000.00', '0.00', '0.00', 'MOMO-CASHIN-0966579217-OQCIJkEReytu-75188483884', 'FT24365281406803', NULL, NULL, '5090', '2024-12-29 09:54:51', '2024-12-29 09:54:51'),
('5858101', 'MBBank', '0966579217', '2024-12-29 16:53:33', '0.00', '100000.00', '0.00', '75189795602-HG X5VHSCSRI3-CHUYEN TIEN-OQCH42784780-MOMO75189795602MOMO', 'FT24365667840791', NULL, NULL, '5090', '2024-12-29 09:54:51', '2024-12-29 09:54:51'),
('5858150', 'MBBank', '0966579217', '2024-12-29 16:58:00', '110000.00', '0.00', '0.00', 'MOMO-CASHIN-0966579217-OQCIOMxxvlgf-75188486920', 'FT24365675980749', NULL, NULL, '5090', '2024-12-29 09:59:07', '2024-12-29 09:59:07'),
('5858153', 'MBBank', '0966579217', '2024-12-29 16:58:03', '0.00', '110000.00', '0.00', '75190249466-HG X5VHSCSRI3-CHUYEN TIEN-OQCH42786176-MOMO75190249466MOMO', 'FT24365411275388', NULL, NULL, '5090', '2024-12-29 09:59:07', '2024-12-29 09:59:07'),
('5862082', 'MBBank', '0966579217', '2024-12-29 18:44:36', '100000.00', '0.00', '0.00', 'TRAN LE HOANG GIANG chuyen tien', 'FT24365603280606', NULL, NULL, '5090', '2025-01-02 13:10:06', '2025-01-02 13:10:06'),
('5884278', 'MBBank', '0966579217', '2024-12-30 11:33:47', '0.00', '100000.00', '0.00', 'NGUYEN HUU LONG chuyen tien FT24365802715349   Ma giao dich  Trace291321 Trace 291321', 'FT24365895967444', NULL, NULL, '5090', '2025-01-02 13:10:06', '2025-01-02 13:10:06'),
('5887677', 'MBBank', '0966579217', '2024-12-30 14:24:28', '2000000.00', '0.00', '0.00', 'chi phuong chuyen tien - Ma giao dich/ Trace 154016', 'FT24365391057303', NULL, NULL, '5090', '2025-01-02 13:10:06', '2025-01-02 13:10:06'),
('5888626', 'MBBank', '0966579217', '2024-12-30 15:24:02', '0.00', '100000.00', '0.00', 'NGUYEN DUY PHUOC chuyen tien', 'FT24365063086405', NULL, NULL, '5090', '2025-01-02 13:10:06', '2025-01-02 13:10:06'),
('5899334', 'MBBank', '0966579217', '2024-12-30 19:22:36', '0.00', '200000.00', '0.00', 'MBVCB.8069845697.985849.LE TU HOANGchuyen tien coc website.CT tu 1049043107 LE TU HOANG toi 0966579217 TRAN LE HOANG GIANG tai MB- Ma GD AC', 'FT24365263099047', NULL, NULL, '5090', '2025-01-02 13:10:06', '2025-01-02 13:10:06'),
('5901047', 'MBBank', '0966579217', '2024-12-30 19:48:00', '0.00', '150000.00', '0.00', 'NGO THI THUY LINH CHUYEN TIEN- Ma GD ACSP/ CE416269', 'FT24365760337929', NULL, NULL, '5090', '2025-01-02 13:10:06', '2025-01-02 13:10:06'),
('5942164', 'MBBank', '0966579217', '2024-12-31 18:48:43', '103000.00', '0.00', '0.00', 'TRAN LE HOANG GIANG chuyen tien- MaGD ACSP/ MP773865', 'FT24366326531696', NULL, NULL, '5090', '2025-01-02 13:10:06', '2025-01-02 13:10:06'),
('5986028', 'MBBank', '0966579217', '2025-01-01 20:49:16', '0.00', '300000.00', '0.00', 'NGUYEN DUY PHUOC chuyen tien', 'FT25001145862040', NULL, NULL, '5090', '2025-01-02 13:10:06', '2025-01-02 13:10:06'),
('5999153', 'MBBank', '0966579217', '2025-01-02 08:40:57', '5000.00', '0.00', '0.00', 'TRAN LE HOANG GIANG chuyen tien', 'FT25002030780845', NULL, NULL, '5090', '2025-01-02 13:10:06', '2025-01-02 13:10:06'),
('6000102', 'MBBank', '0966579217', '2025-01-02 09:10:22', '580000.00', '0.00', '0.00', 'TRAN LE HOANG GIANG chuyen tien - Ma giao dich/ Trace 398426', 'FT25002196576587', NULL, NULL, '5090', '2025-01-02 13:10:06', '2025-01-02 13:10:06'),
('6039439', 'MBBank', '0966579217', '2025-01-03 08:37:30', '0.00', '800000.00', '0.00', 'LE TU HOANG chuyen tien website', 'FT25003574046241', NULL, NULL, '5090', '2025-01-06 10:45:44', '2025-01-06 10:45:44'),
('6050339', 'MBBank', '0966579217', '2025-01-03 17:01:17', '0.00', '100000.00', '0.00', 'done', 'FT25003568566724', NULL, NULL, '5090', '2025-01-06 10:45:44', '2025-01-06 10:45:44'),
('6054683', 'MBBank', '0966579217', '2025-01-03 18:37:21', '0.00', '100000.00', '0.00', 'DO HOAI GIANG CHUYEN TIEN- Ma GD ACSP/ Y5590053', 'FT25003613678859', NULL, NULL, '5090', '2025-01-06 10:45:44', '2025-01-06 10:45:44'),
('6067837', 'MBBank', '0966579217', '2025-01-03 22:31:22', '0.00', '350000.00', '0.00', 'mua 3 ten mien giup anh   Ma giao dich  Trace708488 Trace 708488', 'FT25004202062424', NULL, NULL, '5090', '2025-01-06 10:45:44', '2025-01-06 10:45:44'),
('6080858', 'MBBank', '0966579217', '2025-01-04 09:34:17', '353100.00', '0.00', '0.00', 'QRCODE VNPAY QRCODE 096657921725010409343500529 BP0001c85ags', 'FT25004610412668', NULL, NULL, '5090', '2025-01-06 10:45:44', '2025-01-06 10:45:44'),
('6086118', 'MBBank', '0966579217', '2025-01-04 14:40:49', '100000.00', '0.00', '0.00', 'MOMO-CASHIN-0966579217-OQCITbHplHJz-75679936608', 'FT25004232250470', NULL, NULL, '5090', '2025-01-06 10:45:44', '2025-01-06 10:45:44'),
('6101030', 'MBBank', '0966579217', '2025-01-04 21:29:24', '0.00', '200000.00', '0.00', 'MBVCB.8123312323.822374.LE TU HOANGchuyen tien website.CT tu 1049043107 LE TU HOANG toi 0966579217 TRANLE HOANG GIANG tai MB- Ma GD ACSP/', 'FT25004589610420', NULL, NULL, '5090', '2025-01-06 10:45:44', '2025-01-06 10:45:44'),
('6131285', 'MBBank', '0966579217', '2025-01-05 17:41:29', '10000.00', '0.00', '0.00', 'MOMO-CASHIN-0966579217-OQCIxuilsZtL-75776248040', 'FT25006341806909', NULL, NULL, '5090', '2025-01-06 10:45:44', '2025-01-06 10:45:44'),
('6161635', 'MBBank', '0966579217', '2025-01-06 09:28:42', '0.00', '400000.00', '0.00', 'HUYNH VAN TRUNG chuyen tien FT25006823673040   Ma giao dich  Trace103752 Trace 103752', 'FT25006037305271', NULL, NULL, '5090', '2025-01-06 10:45:44', '2025-01-06 10:45:44'),
('6161712', 'MBBank', '0966579217', '2025-01-06 09:31:43', '120000.00', '0.00', '0.00', 'done task 400', 'FT25006049327090', NULL, NULL, '5090', '2025-01-06 10:45:44', '2025-01-06 10:45:44'),
('6211235', 'MBBank', '0966579217', '2025-01-07 17:47:01', '50000.00', '0.00', '0.00', 'MOMO-CASHIN-0966579217-OQCIvOGByhGU-75953931081', 'FT25007394402197', NULL, NULL, '5090', '2025-01-11 02:14:36', '2025-01-11 02:14:36'),
('6214015', 'MBBank', '0966579217', '2025-01-07 19:04:02', '10000.00', '0.00', '0.00', 'TRAN LE HOANG GIANG chuyen tien', 'FT25007733595721', NULL, NULL, '5090', '2025-01-11 02:14:36', '2025-01-11 02:14:36'),
('6214983', 'MBBank', '0966579217', '2025-01-07 19:31:39', '0.00', '10000.00', '0.00', 'test', 'FT25007899571474', NULL, NULL, '5090', '2025-01-11 02:14:36', '2025-01-11 02:14:36'),
('6250546', 'MBBank', '0966579217', '2025-01-08 18:45:30', '0.00', '175000.00', '0.00', 'TRAN QUANG NGHIA chuyen tien', 'FT25008790920717', NULL, NULL, '5090', '2025-01-11 02:14:36', '2025-01-11 02:14:36'),
('6282720', 'MBBank', '0966579217', '2025-01-09 12:08:19', '0.00', '400000.00', '0.00', 'NGUYEN BINH DUONG CHUYEN TIEN- Ma GD ACSP/ Qv280297', 'FT25009119222211', NULL, NULL, '5090', '2025-01-11 02:14:36', '2025-01-11 02:14:36'),
('6283136', 'MBBank', '0966579217', '2025-01-09 12:38:20', '2583660.00', '0.00', '0.00', 'EVN-HCM  ELECTRIC PE16000225271 BP0001ckg9mq', 'FT25009956276116', NULL, NULL, '5090', '2025-01-11 02:14:36', '2025-01-11 02:14:36'),
('6283737', 'MBBank', '0966579217', '2025-01-09 13:31:45', '30000.00', '0.00', '0.00', 'QRCODE VNPAY QRCODE 096657921725010913314027807 BP0001ckj73a', 'FT25009364694292', NULL, NULL, '5090', '2025-01-11 02:14:36', '2025-01-11 02:14:36'),
('6317746', 'MBBank', '0966579217', '2025-01-10 09:57:17', '30800.00', '0.00', '0.00', 'QRCODE VNPAY QRCODE 096657921725011009573748945 BP0001cmem14', 'FT25010799208335', NULL, NULL, '5090', '2025-01-11 02:14:36', '2025-01-11 02:14:36'),
('6317955', 'MBBank', '0966579217', '2025-01-10 10:06:52', '0.00', '200000.00', '0.00', 'NGUYEN BINH DUONG CHUYEN TIEN- Ma GD ACSP/ FD861897', 'FT25010497902324', NULL, NULL, '5090', '2025-01-11 02:14:36', '2025-01-11 02:14:36'),
('6354652', 'MBBank', '0966579217', '2025-01-11 08:56:18', '0.00', '1000000.00', '0.00', 'chuyen 50 phan tram thiet ke web bookxehochiminh   Ma giao dich  Trace536968 Trace 536968', 'FT25011405084930', NULL, NULL, '5090', '2025-01-11 02:14:36', '2025-01-11 02:14:36');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `theme` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'default',
  `theme_color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `balance` decimal(30,2) NOT NULL DEFAULT '0.00',
  `ip_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `other_contact_info` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `device` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total_consumption` decimal(10,2) DEFAULT NULL,
  `total_deposit` decimal(10,2) DEFAULT NULL,
  `two_factor_auth_status` tinyint(1) NOT NULL DEFAULT '0',
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `otp` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `username`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `theme`, `theme_color`, `balance`, `ip_address`, `other_contact_info`, `device`, `total_consumption`, `total_deposit`, `two_factor_auth_status`, `avatar`, `contact`, `otp`) VALUES
(39, 'HG DIGITAL', '2509roblox@gmail.com', 'x5vhscsri3', NULL, '$2y$12$HgMV5ozU5H9MWQuzJYuTSeUbUsuAgps68ZdyLCqSPYT79GAI3tnFy', NULL, '2024-12-26 03:05:22', '2025-01-02 03:28:29', 'default', NULL, '99097815.00', NULL, NULL, NULL, '1200000.00', NULL, 0, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `web_services`
--

CREATE TABLE `web_services` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `web_services`
--

INSERT INTO `web_services` (`id`, `name`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Code, thêm chức năng, và xây dựng website', '01JFRQ0ZRF671FRRHA2GXX56A2.jpeg', '2024-12-23 02:55:01', '2024-12-23 02:55:01'),
(3, 'Clone giao diện website nhanh chóng', '01JFRRM4R6V7V6DXA2CXXNJGBV.jpg', '2024-12-23 03:22:58', '2024-12-23 03:22:58'),
(4, 'Xây dựng LandingPage website', '01JFRRMYDHDNZAPWZR8G5PKFJQ.png', '2024-12-23 03:23:24', '2024-12-23 03:23:24'),
(5, 'Giải bài tập, hỗ trợ thi môn website', '01JFRRNZCDK17TT089XPJKMA8T.png', '2024-12-23 03:23:58', '2024-12-23 03:23:58'),
(6, 'Cho thuê Hosting / VPS theo ngày / tháng', '01JFRRSD89VAKAZ6ARBQC907YE.jpg', '2024-12-23 03:25:50', '2024-12-23 03:25:50'),
(7, 'Deploy hộ website: Wordpress, php, Laravel', '01JFRRW4CNWJKMTYANS3SVX5MS.jpg', '2024-12-23 03:27:19', '2024-12-23 03:27:19');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `access_history`
--
ALTER TABLE `access_history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `activity_history`
--
ALTER TABLE `activity_history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `activity_history_user_id_foreign` (`user_id`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `blogs_slug_unique` (`slug`);

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `payment_history`
--
ALTER TABLE `payment_history`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `payment_history_transaction_code_unique` (`transaction_code`),
  ADD KEY `payment_history_user_id_foreign` (`user_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `smm_categories`
--
ALTER TABLE `smm_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `smm_orders`
--
ALTER TABLE `smm_orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `smm_orders_user_id_foreign` (`user_id`),
  ADD KEY `smm_orders_smm_service_id_foreign` (`smm_service_id`);

--
-- Indexes for table `smm_services`
--
ALTER TABLE `smm_services`
  ADD PRIMARY KEY (`id`),
  ADD KEY `smm_services_smmcategory_id_foreign` (`smmcategory_id`);

--
-- Indexes for table `source_code_categories`
--
ALTER TABLE `source_code_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `source_code_orders`
--
ALTER TABLE `source_code_orders`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `source_code_orders_order_code_unique` (`order_code`),
  ADD KEY `source_code_orders_user_id_foreign` (`user_id`),
  ADD KEY `source_code_orders_source_code_product_id_foreign` (`source_code_product_id`);

--
-- Indexes for table `source_code_products`
--
ALTER TABLE `source_code_products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `source_code_products_category_id_foreign` (`category_id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `web_services`
--
ALTER TABLE `web_services`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `access_history`
--
ALTER TABLE `access_history`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `activity_history`
--
ALTER TABLE `activity_history`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2403;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `payment_history`
--
ALTER TABLE `payment_history`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=129;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `smm_categories`
--
ALTER TABLE `smm_categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `smm_orders`
--
ALTER TABLE `smm_orders`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=95;

--
-- AUTO_INCREMENT for table `smm_services`
--
ALTER TABLE `smm_services`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=303;

--
-- AUTO_INCREMENT for table `source_code_categories`
--
ALTER TABLE `source_code_categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `source_code_orders`
--
ALTER TABLE `source_code_orders`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `source_code_products`
--
ALTER TABLE `source_code_products`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=335;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `web_services`
--
ALTER TABLE `web_services`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `activity_history`
--
ALTER TABLE `activity_history`
  ADD CONSTRAINT `activity_history_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `payment_history`
--
ALTER TABLE `payment_history`
  ADD CONSTRAINT `payment_history_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `smm_orders`
--
ALTER TABLE `smm_orders`
  ADD CONSTRAINT `smm_orders_smm_service_id_foreign` FOREIGN KEY (`smm_service_id`) REFERENCES `smm_services` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `smm_orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `smm_services`
--
ALTER TABLE `smm_services`
  ADD CONSTRAINT `smm_services_smmcategory_id_foreign` FOREIGN KEY (`smmcategory_id`) REFERENCES `smm_categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `source_code_orders`
--
ALTER TABLE `source_code_orders`
  ADD CONSTRAINT `source_code_orders_source_code_product_id_foreign` FOREIGN KEY (`source_code_product_id`) REFERENCES `source_code_products` (`id`),
  ADD CONSTRAINT `source_code_orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `source_code_products`
--
ALTER TABLE `source_code_products`
  ADD CONSTRAINT `source_code_products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `source_code_categories` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
