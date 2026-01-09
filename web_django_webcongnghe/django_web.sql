-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jan 02, 2026 at 08:37 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.1.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `django_web`
--

-- --------------------------------------------------------

--
-- Table structure for table `app_banner`
--

CREATE TABLE `app_banner` (
  `id` int(11) NOT NULL,
  `title` varchar(200) NOT NULL,
  `description` varchar(300) NOT NULL,
  `image` varchar(100) NOT NULL,
  `order` int(10) UNSIGNED NOT NULL CHECK (`order` >= 0),
  `is_active` tinyint(1) NOT NULL,
  `menu_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `app_banner`
--

INSERT INTO `app_banner` (`id`, `title`, `description`, `image`, `order`, `is_active`, `menu_id`) VALUES
(21, 'Sale', '0999', 'images/banners/1.png', 1, 1, 1),
(22, '2', '22', 'images/banners/2.png', 2, 1, 1),
(23, '3', '3', 'images/banners/3.png', 3, 1, 1),
(24, '4', '4', 'images/banners/4.png', 4, 1, 1),
(46, 'Sale', '0999', 'images/banners/1.png', 1, 1, 5),
(47, '2', '22', 'images/banners/2.png', 2, 1, 5),
(48, '3', '3', 'images/banners/3.png', 3, 1, 5),
(49, '4', '4', 'images/banners/4.png', 4, 1, 5),
(67, 'Sale', '0999', 'images/banners/1.png', 1, 1, 4),
(68, '2', '22', 'images/banners/2.png', 2, 1, 4),
(69, '3', '3', 'images/banners/3.png', 3, 1, 4),
(70, '4', '4', 'images/banners/4.png', 4, 1, 4),
(81, 'Sale', '0999', 'images/banners/1.png', 1, 1, 6),
(82, '2', '22', 'images/banners/2.png', 2, 1, 6),
(83, '3', '3', 'images/banners/3.png', 3, 1, 6),
(84, '4', '4', 'images/banners/4.png', 4, 1, 6),
(88, '1', '1', 'images/banners/git.gif', 0, 1, 7),
(89, '', '', 'images/banners/2a-office-365-10.2018.jpg', 1, 1, 2),
(90, '', '', 'images/banners/13_800x449.png', 3, 1, 2),
(91, '', '', 'images/banners/office-macbook-2.jpg', 2, 1, 2),
(92, '', '', 'images/banners/what-is-office-365-and-how-it-works.jpg', 4, 1, 2),
(93, '', '', 'images/banners/application-la-gi-2-1024x576.png', 1, 1, 3),
(94, '', '', 'images/banners/Apps.jpg', 2, 1, 3),
(95, '', '', 'images/banners/application_372.webp', 3, 1, 3);

-- --------------------------------------------------------

--
-- Table structure for table `app_menuitem`
--

CREATE TABLE `app_menuitem` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `url_slug` varchar(200) NOT NULL,
  `order` int(10) UNSIGNED NOT NULL CHECK (`order` >= 0),
  `is_published` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `app_menuitem`
--

INSERT INTO `app_menuitem` (`id`, `name`, `url_slug`, `order`, `is_published`) VALUES
(1, 'TRANG CHỦ', 'trang-chu', 0, 1),
(2, 'OFFICE WIN & MAC', 'office-win-mac', 0, 1),
(3, 'APPLICATION', 'application', 0, 1),
(4, 'PHẦN MỀM ADOBE', 'phan-mem-adobe', 0, 1),
(5, 'TOOL', 'tool', 0, 1),
(6, 'TIN TỨC', 'tin-tuc', 0, 1),
(7, 'LIÊN HỆ', 'lien-he', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `app_post`
--

CREATE TABLE `app_post` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` longtext NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  `is_published` tinyint(1) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `summary` longtext NOT NULL,
  `updated_at` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `app_post`
--

INSERT INTO `app_post` (`id`, `title`, `content`, `created_at`, `category_id`, `image`, `is_published`, `slug`, `summary`, `updated_at`) VALUES
(18, 'Huong dan dinh dang word', '<p><strong>Bước 1:</strong>&nbsp;Mở video YouTube trong tr&igrave;nh duyệt Cốc Cốc.</p>\r\n\r\n<p><strong>Bước 2:</strong>&nbsp;Di chuột v&agrave;o khung video đang ph&aacute;t, bạn sẽ thấy thanh c&ocirc;ng cụ ở g&oacute;c tr&aacute;i tr&ecirc;n xuất hiện.</p>\r\n\r\n<p><img height=\"1080\" src=\"/media/uploads/2025/12/18/git.gif\" width=\"1920\" /><strong>Bước 3:</strong>&nbsp;Bấm v&agrave;o biểu tượng Download (n&uacute;t tr&ograve;n xanh l&aacute; c&oacute; mũi t&ecirc;n xuống) &gt; Trong mục Video, chọn chất lượng video v&agrave; bấm v&agrave;o đ&oacute; để tải xuống.<img height=\"1080\" src=\"/media/uploads/2025/12/18/4.png\" width=\"1920\" /><strong>Bước 4:</strong>&nbsp;Theo d&otilde;i trạng th&aacute;i tải video YouTube ở biểu tượng download ngay g&oacute;c phải tr&ecirc;n tr&igrave;nh duyệt Cốc Cốc. Sau khi video tải xong bạn v&agrave;o menu biểu tượng 3 thanh ngang v&agrave; chọn &quot;Tải xuống&quot; (Download) hoặc bấm tổ hợp ph&iacute;m&nbsp;<strong>Ctrl + J</strong>.<img height=\"1080\" src=\"/media/uploads/2025/12/18/3.png\" width=\"1920\" /><strong>Bước 5:</strong>&nbsp;M&agrave;n h&igrave;nh quản l&yacute; file đ&atilde; tải về xuất hiện, bạn c&oacute; thể xem tất cả file (video, nhạc, tệp tin,..) tải xuống ở đ&acirc;y. Bấm &quot;Mở trong thư mục&quot; để v&agrave;o folder chưa video tải xuống hoặc &quot;Ph&aacute;t&quot; để mở xem video.<img height=\"1080\" src=\"/media/uploads/2025/12/18/2.png\" width=\"1920\" /><strong>Bước 6:</strong>&nbsp;M&agrave;n h&igrave;nh quản l&yacute; file đ&atilde; tải về xuất hiện, bạn c&oacute; thể xem tất cả file (video, nhạc, tệp tin,..) tải xuống ở đ&acirc;y. Bấm &quot;Mở trong thư mục&quot; để v&agrave;o folder chưa video tải xuống hoặc &quot;Ph&aacute;t&quot; để mở xem video.<img height=\"1080\" src=\"/media/uploads/2025/12/18/1.png\" width=\"1920\" />Xin cảm ơn C&aacute;c bạn</p>', '2025-12-18 21:25:39.000000', 4, 'images/posts/git.gif', 1, 'huong-dan-dinh-dang-word-c4', 'Hướng dẫn định dạng word 1 cách miễn phí', '2025-12-18 21:25:39.000000'),
(19, 'Huong dan dinh dang word cach 1', '<p><strong>Bước 1:</strong>&nbsp;Mở video YouTube trong tr&igrave;nh duyệt Cốc Cốc.</p>\r\n\r\n<p><strong>Bước 2:</strong>&nbsp;Di chuột v&agrave;o khung video đang ph&aacute;t, bạn sẽ thấy thanh c&ocirc;ng cụ ở g&oacute;c tr&aacute;i tr&ecirc;n xuất hiện.</p>\r\n\r\n<p><img height=\"1080\" src=\"/media/uploads/2025/12/18/git.gif\" width=\"1920\" /><strong>Bước 3:</strong>&nbsp;Bấm v&agrave;o biểu tượng Download (n&uacute;t tr&ograve;n xanh l&aacute; c&oacute; mũi t&ecirc;n xuống) &gt; Trong mục Video, chọn chất lượng video v&agrave; bấm v&agrave;o đ&oacute; để tải xuống.<img height=\"1080\" src=\"/media/uploads/2025/12/18/4.png\" width=\"1920\" /><strong>Bước 4:</strong>&nbsp;Theo d&otilde;i trạng th&aacute;i tải video YouTube ở biểu tượng download ngay g&oacute;c phải tr&ecirc;n tr&igrave;nh duyệt Cốc Cốc. Sau khi video tải xong bạn v&agrave;o menu biểu tượng 3 thanh ngang v&agrave; chọn &quot;Tải xuống&quot; (Download) hoặc bấm tổ hợp ph&iacute;m&nbsp;<strong>Ctrl + J</strong>.<img height=\"1080\" src=\"/media/uploads/2025/12/18/3.png\" width=\"1920\" /><strong>Bước 5:</strong>&nbsp;M&agrave;n h&igrave;nh quản l&yacute; file đ&atilde; tải về xuất hiện, bạn c&oacute; thể xem tất cả file (video, nhạc, tệp tin,..) tải xuống ở đ&acirc;y. Bấm &quot;Mở trong thư mục&quot; để v&agrave;o folder chưa video tải xuống hoặc &quot;Ph&aacute;t&quot; để mở xem video.<img height=\"1080\" src=\"/media/uploads/2025/12/18/2.png\" width=\"1920\" /><strong>Bước 6:</strong>&nbsp;M&agrave;n h&igrave;nh quản l&yacute; file đ&atilde; tải về xuất hiện, bạn c&oacute; thể xem tất cả file (video, nhạc, tệp tin,..) tải xuống ở đ&acirc;y. Bấm &quot;Mở trong thư mục&quot; để v&agrave;o folder chưa video tải xuống hoặc &quot;Ph&aacute;t&quot; để mở xem video.<img height=\"1080\" src=\"/media/uploads/2025/12/18/1.png\" width=\"1920\" />Xin cảm ơn C&aacute;c bạn</p>', '2025-12-18 21:25:39.000000', 4, 'images/posts/git.gif', 1, 'huong-dan-dinh-dang-word-cach-1-c4', 'Hướng dẫn định dạng word 1 cách miễn phí', '2025-12-18 21:25:39.000000'),
(20, 'Huong dan dinh dang word cach 2', '<p><strong>Bước 1:</strong>&nbsp;Mở video YouTube trong tr&igrave;nh duyệt Cốc Cốc.</p>\r\n\r\n<p><strong>Bước 2:</strong>&nbsp;Di chuột v&agrave;o khung video đang ph&aacute;t, bạn sẽ thấy thanh c&ocirc;ng cụ ở g&oacute;c tr&aacute;i tr&ecirc;n xuất hiện.</p>\r\n\r\n<p><img height=\"1080\" src=\"/media/uploads/2025/12/18/git.gif\" width=\"1920\" /><strong>Bước 3:</strong>&nbsp;Bấm v&agrave;o biểu tượng Download (n&uacute;t tr&ograve;n xanh l&aacute; c&oacute; mũi t&ecirc;n xuống) &gt; Trong mục Video, chọn chất lượng video v&agrave; bấm v&agrave;o đ&oacute; để tải xuống.<img height=\"1080\" src=\"/media/uploads/2025/12/18/4.png\" width=\"1920\" /><strong>Bước 4:</strong>&nbsp;Theo d&otilde;i trạng th&aacute;i tải video YouTube ở biểu tượng download ngay g&oacute;c phải tr&ecirc;n tr&igrave;nh duyệt Cốc Cốc. Sau khi video tải xong bạn v&agrave;o menu biểu tượng 3 thanh ngang v&agrave; chọn &quot;Tải xuống&quot; (Download) hoặc bấm tổ hợp ph&iacute;m&nbsp;<strong>Ctrl + J</strong>.<img height=\"1080\" src=\"/media/uploads/2025/12/18/3.png\" width=\"1920\" /><strong>Bước 5:</strong>&nbsp;M&agrave;n h&igrave;nh quản l&yacute; file đ&atilde; tải về xuất hiện, bạn c&oacute; thể xem tất cả file (video, nhạc, tệp tin,..) tải xuống ở đ&acirc;y. Bấm &quot;Mở trong thư mục&quot; để v&agrave;o folder chưa video tải xuống hoặc &quot;Ph&aacute;t&quot; để mở xem video.<img height=\"1080\" src=\"/media/uploads/2025/12/18/2.png\" width=\"1920\" /><strong>Bước 6:</strong>&nbsp;M&agrave;n h&igrave;nh quản l&yacute; file đ&atilde; tải về xuất hiện, bạn c&oacute; thể xem tất cả file (video, nhạc, tệp tin,..) tải xuống ở đ&acirc;y. Bấm &quot;Mở trong thư mục&quot; để v&agrave;o folder chưa video tải xuống hoặc &quot;Ph&aacute;t&quot; để mở xem video.<img height=\"1080\" src=\"/media/uploads/2025/12/18/1.png\" width=\"1920\" />Xin cảm ơn C&aacute;c bạn</p>', '2025-12-18 21:25:39.000000', 4, 'images/posts/git.gif', 1, 'huong-dan-dinh-dang-word-cach-2-c4', 'Hướng dẫn định dạng word 1 cách miễn phí', '2025-12-18 21:25:39.000000'),
(21, 'Huong dan dinh dang word cach 3', '<p><strong>Bước 1:</strong>&nbsp;Mở video YouTube trong tr&igrave;nh duyệt Cốc Cốc.</p>\r\n\r\n<p><strong>Bước 2:</strong>&nbsp;Di chuột v&agrave;o khung video đang ph&aacute;t, bạn sẽ thấy thanh c&ocirc;ng cụ ở g&oacute;c tr&aacute;i tr&ecirc;n xuất hiện.</p>\r\n\r\n<p><img height=\"1080\" src=\"/media/uploads/2025/12/18/git.gif\" width=\"1920\" /><strong>Bước 3:</strong>&nbsp;Bấm v&agrave;o biểu tượng Download (n&uacute;t tr&ograve;n xanh l&aacute; c&oacute; mũi t&ecirc;n xuống) &gt; Trong mục Video, chọn chất lượng video v&agrave; bấm v&agrave;o đ&oacute; để tải xuống.<img height=\"1080\" src=\"/media/uploads/2025/12/18/4.png\" width=\"1920\" /><strong>Bước 4:</strong>&nbsp;Theo d&otilde;i trạng th&aacute;i tải video YouTube ở biểu tượng download ngay g&oacute;c phải tr&ecirc;n tr&igrave;nh duyệt Cốc Cốc. Sau khi video tải xong bạn v&agrave;o menu biểu tượng 3 thanh ngang v&agrave; chọn &quot;Tải xuống&quot; (Download) hoặc bấm tổ hợp ph&iacute;m&nbsp;<strong>Ctrl + J</strong>.<img height=\"1080\" src=\"/media/uploads/2025/12/18/3.png\" width=\"1920\" /><strong>Bước 5:</strong>&nbsp;M&agrave;n h&igrave;nh quản l&yacute; file đ&atilde; tải về xuất hiện, bạn c&oacute; thể xem tất cả file (video, nhạc, tệp tin,..) tải xuống ở đ&acirc;y. Bấm &quot;Mở trong thư mục&quot; để v&agrave;o folder chưa video tải xuống hoặc &quot;Ph&aacute;t&quot; để mở xem video.<img height=\"1080\" src=\"/media/uploads/2025/12/18/2.png\" width=\"1920\" /><strong>Bước 6:</strong>&nbsp;M&agrave;n h&igrave;nh quản l&yacute; file đ&atilde; tải về xuất hiện, bạn c&oacute; thể xem tất cả file (video, nhạc, tệp tin,..) tải xuống ở đ&acirc;y. Bấm &quot;Mở trong thư mục&quot; để v&agrave;o folder chưa video tải xuống hoặc &quot;Ph&aacute;t&quot; để mở xem video.<img height=\"1080\" src=\"/media/uploads/2025/12/18/1.png\" width=\"1920\" />Xin cảm ơn C&aacute;c bạn</p>', '2025-12-18 21:25:39.000000', 4, 'images/posts/git.gif', 1, 'huong-dan-dinh-dang-word-cach-3-c4', 'Hướng dẫn định dạng word 1 cách miễn phí', '2025-12-18 21:25:39.000000'),
(22, 'Huong dan dinh dang word cach 4', '<p><strong>Bước 1:</strong>&nbsp;Mở video YouTube trong tr&igrave;nh duyệt Cốc Cốc.</p>\r\n\r\n<p><strong>Bước 2:</strong>&nbsp;Di chuột v&agrave;o khung video đang ph&aacute;t, bạn sẽ thấy thanh c&ocirc;ng cụ ở g&oacute;c tr&aacute;i tr&ecirc;n xuất hiện.</p>\r\n\r\n<p><img height=\"1080\" src=\"/media/uploads/2025/12/18/git.gif\" width=\"1920\" /><strong>Bước 3:</strong>&nbsp;Bấm v&agrave;o biểu tượng Download (n&uacute;t tr&ograve;n xanh l&aacute; c&oacute; mũi t&ecirc;n xuống) &gt; Trong mục Video, chọn chất lượng video v&agrave; bấm v&agrave;o đ&oacute; để tải xuống.<img height=\"1080\" src=\"/media/uploads/2025/12/18/4.png\" width=\"1920\" /><strong>Bước 4:</strong>&nbsp;Theo d&otilde;i trạng th&aacute;i tải video YouTube ở biểu tượng download ngay g&oacute;c phải tr&ecirc;n tr&igrave;nh duyệt Cốc Cốc. Sau khi video tải xong bạn v&agrave;o menu biểu tượng 3 thanh ngang v&agrave; chọn &quot;Tải xuống&quot; (Download) hoặc bấm tổ hợp ph&iacute;m&nbsp;<strong>Ctrl + J</strong>.<img height=\"1080\" src=\"/media/uploads/2025/12/18/3.png\" width=\"1920\" /><strong>Bước 5:</strong>&nbsp;M&agrave;n h&igrave;nh quản l&yacute; file đ&atilde; tải về xuất hiện, bạn c&oacute; thể xem tất cả file (video, nhạc, tệp tin,..) tải xuống ở đ&acirc;y. Bấm &quot;Mở trong thư mục&quot; để v&agrave;o folder chưa video tải xuống hoặc &quot;Ph&aacute;t&quot; để mở xem video.<img height=\"1080\" src=\"/media/uploads/2025/12/18/2.png\" width=\"1920\" /><strong>Bước 6:</strong>&nbsp;M&agrave;n h&igrave;nh quản l&yacute; file đ&atilde; tải về xuất hiện, bạn c&oacute; thể xem tất cả file (video, nhạc, tệp tin,..) tải xuống ở đ&acirc;y. Bấm &quot;Mở trong thư mục&quot; để v&agrave;o folder chưa video tải xuống hoặc &quot;Ph&aacute;t&quot; để mở xem video.<img height=\"1080\" src=\"/media/uploads/2025/12/18/1.png\" width=\"1920\" />Xin cảm ơn C&aacute;c bạn</p>', '2025-12-18 21:25:39.000000', 4, 'images/posts/git.gif', 1, 'huong-dan-dinh-dang-word-cach-4-c4', 'Hướng dẫn định dạng word 1 cách miễn phí', '2025-12-18 21:25:39.000000'),
(25, 'Huong dan dinh dang word', '<p><strong>Bước 1:</strong>&nbsp;Mở video YouTube trong tr&igrave;nh duyệt Cốc Cốc.</p>\r\n\r\n<p><strong>Bước 2:</strong>&nbsp;Di chuột v&agrave;o khung video đang ph&aacute;t, bạn sẽ thấy thanh c&ocirc;ng cụ ở g&oacute;c tr&aacute;i tr&ecirc;n xuất hiện.</p>\r\n\r\n<p><img height=\"1080\" src=\"/media/uploads/2025/12/18/git.gif\" width=\"1920\" /><strong>Bước 3:</strong>&nbsp;Bấm v&agrave;o biểu tượng Download (n&uacute;t tr&ograve;n xanh l&aacute; c&oacute; mũi t&ecirc;n xuống) &gt; Trong mục Video, chọn chất lượng video v&agrave; bấm v&agrave;o đ&oacute; để tải xuống.<img height=\"1080\" src=\"/media/uploads/2025/12/18/4.png\" width=\"1920\" /><strong>Bước 4:</strong>&nbsp;Theo d&otilde;i trạng th&aacute;i tải video YouTube ở biểu tượng download ngay g&oacute;c phải tr&ecirc;n tr&igrave;nh duyệt Cốc Cốc. Sau khi video tải xong bạn v&agrave;o menu biểu tượng 3 thanh ngang v&agrave; chọn &quot;Tải xuống&quot; (Download) hoặc bấm tổ hợp ph&iacute;m&nbsp;<strong>Ctrl + J</strong>.<img height=\"1080\" src=\"/media/uploads/2025/12/18/3.png\" width=\"1920\" /><strong>Bước 5:</strong>&nbsp;M&agrave;n h&igrave;nh quản l&yacute; file đ&atilde; tải về xuất hiện, bạn c&oacute; thể xem tất cả file (video, nhạc, tệp tin,..) tải xuống ở đ&acirc;y. Bấm &quot;Mở trong thư mục&quot; để v&agrave;o folder chưa video tải xuống hoặc &quot;Ph&aacute;t&quot; để mở xem video.<img height=\"1080\" src=\"/media/uploads/2025/12/18/2.png\" width=\"1920\" /><strong>Bước 6:</strong>&nbsp;M&agrave;n h&igrave;nh quản l&yacute; file đ&atilde; tải về xuất hiện, bạn c&oacute; thể xem tất cả file (video, nhạc, tệp tin,..) tải xuống ở đ&acirc;y. Bấm &quot;Mở trong thư mục&quot; để v&agrave;o folder chưa video tải xuống hoặc &quot;Ph&aacute;t&quot; để mở xem video.<img height=\"1080\" src=\"/media/uploads/2025/12/18/1.png\" width=\"1920\" />Xin cảm ơn C&aacute;c bạn</p>', '2025-12-18 21:25:48.000000', 5, 'images/posts/git.gif', 1, 'huong-dan-dinh-dang-word-c5', 'Hướng dẫn định dạng word 1 cách miễn phí', '2025-12-18 21:25:48.000000'),
(26, 'Huong dan dinh dang word cach 1', '<p><strong>Bước 1:</strong>&nbsp;Mở video YouTube trong tr&igrave;nh duyệt Cốc Cốc.</p>\r\n\r\n<p><strong>Bước 2:</strong>&nbsp;Di chuột v&agrave;o khung video đang ph&aacute;t, bạn sẽ thấy thanh c&ocirc;ng cụ ở g&oacute;c tr&aacute;i tr&ecirc;n xuất hiện.</p>\r\n\r\n<p><img height=\"1080\" src=\"/media/uploads/2025/12/18/git.gif\" width=\"1920\" /><strong>Bước 3:</strong>&nbsp;Bấm v&agrave;o biểu tượng Download (n&uacute;t tr&ograve;n xanh l&aacute; c&oacute; mũi t&ecirc;n xuống) &gt; Trong mục Video, chọn chất lượng video v&agrave; bấm v&agrave;o đ&oacute; để tải xuống.<img height=\"1080\" src=\"/media/uploads/2025/12/18/4.png\" width=\"1920\" /><strong>Bước 4:</strong>&nbsp;Theo d&otilde;i trạng th&aacute;i tải video YouTube ở biểu tượng download ngay g&oacute;c phải tr&ecirc;n tr&igrave;nh duyệt Cốc Cốc. Sau khi video tải xong bạn v&agrave;o menu biểu tượng 3 thanh ngang v&agrave; chọn &quot;Tải xuống&quot; (Download) hoặc bấm tổ hợp ph&iacute;m&nbsp;<strong>Ctrl + J</strong>.<img height=\"1080\" src=\"/media/uploads/2025/12/18/3.png\" width=\"1920\" /><strong>Bước 5:</strong>&nbsp;M&agrave;n h&igrave;nh quản l&yacute; file đ&atilde; tải về xuất hiện, bạn c&oacute; thể xem tất cả file (video, nhạc, tệp tin,..) tải xuống ở đ&acirc;y. Bấm &quot;Mở trong thư mục&quot; để v&agrave;o folder chưa video tải xuống hoặc &quot;Ph&aacute;t&quot; để mở xem video.<img height=\"1080\" src=\"/media/uploads/2025/12/18/2.png\" width=\"1920\" /><strong>Bước 6:</strong>&nbsp;M&agrave;n h&igrave;nh quản l&yacute; file đ&atilde; tải về xuất hiện, bạn c&oacute; thể xem tất cả file (video, nhạc, tệp tin,..) tải xuống ở đ&acirc;y. Bấm &quot;Mở trong thư mục&quot; để v&agrave;o folder chưa video tải xuống hoặc &quot;Ph&aacute;t&quot; để mở xem video.<img height=\"1080\" src=\"/media/uploads/2025/12/18/1.png\" width=\"1920\" />Xin cảm ơn C&aacute;c bạn</p>', '2025-12-18 21:25:48.000000', 5, 'images/posts/git.gif', 1, 'huong-dan-dinh-dang-word-cach-1-c5', 'Hướng dẫn định dạng word 1 cách miễn phí', '2025-12-18 21:25:48.000000'),
(27, 'Huong dan dinh dang word cach 2', '<p><strong>Bước 1:</strong>&nbsp;Mở video YouTube trong tr&igrave;nh duyệt Cốc Cốc.</p>\r\n\r\n<p><strong>Bước 2:</strong>&nbsp;Di chuột v&agrave;o khung video đang ph&aacute;t, bạn sẽ thấy thanh c&ocirc;ng cụ ở g&oacute;c tr&aacute;i tr&ecirc;n xuất hiện.</p>\r\n\r\n<p><img height=\"1080\" src=\"/media/uploads/2025/12/18/git.gif\" width=\"1920\" /><strong>Bước 3:</strong>&nbsp;Bấm v&agrave;o biểu tượng Download (n&uacute;t tr&ograve;n xanh l&aacute; c&oacute; mũi t&ecirc;n xuống) &gt; Trong mục Video, chọn chất lượng video v&agrave; bấm v&agrave;o đ&oacute; để tải xuống.<img height=\"1080\" src=\"/media/uploads/2025/12/18/4.png\" width=\"1920\" /><strong>Bước 4:</strong>&nbsp;Theo d&otilde;i trạng th&aacute;i tải video YouTube ở biểu tượng download ngay g&oacute;c phải tr&ecirc;n tr&igrave;nh duyệt Cốc Cốc. Sau khi video tải xong bạn v&agrave;o menu biểu tượng 3 thanh ngang v&agrave; chọn &quot;Tải xuống&quot; (Download) hoặc bấm tổ hợp ph&iacute;m&nbsp;<strong>Ctrl + J</strong>.<img height=\"1080\" src=\"/media/uploads/2025/12/18/3.png\" width=\"1920\" /><strong>Bước 5:</strong>&nbsp;M&agrave;n h&igrave;nh quản l&yacute; file đ&atilde; tải về xuất hiện, bạn c&oacute; thể xem tất cả file (video, nhạc, tệp tin,..) tải xuống ở đ&acirc;y. Bấm &quot;Mở trong thư mục&quot; để v&agrave;o folder chưa video tải xuống hoặc &quot;Ph&aacute;t&quot; để mở xem video.<img height=\"1080\" src=\"/media/uploads/2025/12/18/2.png\" width=\"1920\" /><strong>Bước 6:</strong>&nbsp;M&agrave;n h&igrave;nh quản l&yacute; file đ&atilde; tải về xuất hiện, bạn c&oacute; thể xem tất cả file (video, nhạc, tệp tin,..) tải xuống ở đ&acirc;y. Bấm &quot;Mở trong thư mục&quot; để v&agrave;o folder chưa video tải xuống hoặc &quot;Ph&aacute;t&quot; để mở xem video.<img height=\"1080\" src=\"/media/uploads/2025/12/18/1.png\" width=\"1920\" />Xin cảm ơn C&aacute;c bạn</p>', '2025-12-18 21:25:48.000000', 5, 'images/posts/git.gif', 1, 'huong-dan-dinh-dang-word-cach-2-c5', 'Hướng dẫn định dạng word 1 cách miễn phí', '2025-12-18 21:25:48.000000'),
(28, 'Huong dan dinh dang word cach 3', '<p><strong>Bước 1:</strong>&nbsp;Mở video YouTube trong tr&igrave;nh duyệt Cốc Cốc.</p>\r\n\r\n<p><strong>Bước 2:</strong>&nbsp;Di chuột v&agrave;o khung video đang ph&aacute;t, bạn sẽ thấy thanh c&ocirc;ng cụ ở g&oacute;c tr&aacute;i tr&ecirc;n xuất hiện.</p>\r\n\r\n<p><img height=\"1080\" src=\"/media/uploads/2025/12/18/git.gif\" width=\"1920\" /><strong>Bước 3:</strong>&nbsp;Bấm v&agrave;o biểu tượng Download (n&uacute;t tr&ograve;n xanh l&aacute; c&oacute; mũi t&ecirc;n xuống) &gt; Trong mục Video, chọn chất lượng video v&agrave; bấm v&agrave;o đ&oacute; để tải xuống.<img height=\"1080\" src=\"/media/uploads/2025/12/18/4.png\" width=\"1920\" /><strong>Bước 4:</strong>&nbsp;Theo d&otilde;i trạng th&aacute;i tải video YouTube ở biểu tượng download ngay g&oacute;c phải tr&ecirc;n tr&igrave;nh duyệt Cốc Cốc. Sau khi video tải xong bạn v&agrave;o menu biểu tượng 3 thanh ngang v&agrave; chọn &quot;Tải xuống&quot; (Download) hoặc bấm tổ hợp ph&iacute;m&nbsp;<strong>Ctrl + J</strong>.<img height=\"1080\" src=\"/media/uploads/2025/12/18/3.png\" width=\"1920\" /><strong>Bước 5:</strong>&nbsp;M&agrave;n h&igrave;nh quản l&yacute; file đ&atilde; tải về xuất hiện, bạn c&oacute; thể xem tất cả file (video, nhạc, tệp tin,..) tải xuống ở đ&acirc;y. Bấm &quot;Mở trong thư mục&quot; để v&agrave;o folder chưa video tải xuống hoặc &quot;Ph&aacute;t&quot; để mở xem video.<img height=\"1080\" src=\"/media/uploads/2025/12/18/2.png\" width=\"1920\" /><strong>Bước 6:</strong>&nbsp;M&agrave;n h&igrave;nh quản l&yacute; file đ&atilde; tải về xuất hiện, bạn c&oacute; thể xem tất cả file (video, nhạc, tệp tin,..) tải xuống ở đ&acirc;y. Bấm &quot;Mở trong thư mục&quot; để v&agrave;o folder chưa video tải xuống hoặc &quot;Ph&aacute;t&quot; để mở xem video.<img height=\"1080\" src=\"/media/uploads/2025/12/18/1.png\" width=\"1920\" />Xin cảm ơn C&aacute;c bạn</p>', '2025-12-18 21:25:48.000000', 5, 'images/posts/git.gif', 1, 'huong-dan-dinh-dang-word-cach-3-c5', 'Hướng dẫn định dạng word 1 cách miễn phí', '2025-12-18 21:25:48.000000'),
(29, 'Huong dan dinh dang word cach 4', '<p><strong>Bước 1:</strong>&nbsp;Mở video YouTube trong tr&igrave;nh duyệt Cốc Cốc.</p>\r\n\r\n<p><strong>Bước 2:</strong>&nbsp;Di chuột v&agrave;o khung video đang ph&aacute;t, bạn sẽ thấy thanh c&ocirc;ng cụ ở g&oacute;c tr&aacute;i tr&ecirc;n xuất hiện.</p>\r\n\r\n<p><img height=\"1080\" src=\"/media/uploads/2025/12/18/git.gif\" width=\"1920\" /><strong>Bước 3:</strong>&nbsp;Bấm v&agrave;o biểu tượng Download (n&uacute;t tr&ograve;n xanh l&aacute; c&oacute; mũi t&ecirc;n xuống) &gt; Trong mục Video, chọn chất lượng video v&agrave; bấm v&agrave;o đ&oacute; để tải xuống.<img height=\"1080\" src=\"/media/uploads/2025/12/18/4.png\" width=\"1920\" /><strong>Bước 4:</strong>&nbsp;Theo d&otilde;i trạng th&aacute;i tải video YouTube ở biểu tượng download ngay g&oacute;c phải tr&ecirc;n tr&igrave;nh duyệt Cốc Cốc. Sau khi video tải xong bạn v&agrave;o menu biểu tượng 3 thanh ngang v&agrave; chọn &quot;Tải xuống&quot; (Download) hoặc bấm tổ hợp ph&iacute;m&nbsp;<strong>Ctrl + J</strong>.<img height=\"1080\" src=\"/media/uploads/2025/12/18/3.png\" width=\"1920\" /><strong>Bước 5:</strong>&nbsp;M&agrave;n h&igrave;nh quản l&yacute; file đ&atilde; tải về xuất hiện, bạn c&oacute; thể xem tất cả file (video, nhạc, tệp tin,..) tải xuống ở đ&acirc;y. Bấm &quot;Mở trong thư mục&quot; để v&agrave;o folder chưa video tải xuống hoặc &quot;Ph&aacute;t&quot; để mở xem video.<img height=\"1080\" src=\"/media/uploads/2025/12/18/2.png\" width=\"1920\" /><strong>Bước 6:</strong>&nbsp;M&agrave;n h&igrave;nh quản l&yacute; file đ&atilde; tải về xuất hiện, bạn c&oacute; thể xem tất cả file (video, nhạc, tệp tin,..) tải xuống ở đ&acirc;y. Bấm &quot;Mở trong thư mục&quot; để v&agrave;o folder chưa video tải xuống hoặc &quot;Ph&aacute;t&quot; để mở xem video.<img height=\"1080\" src=\"/media/uploads/2025/12/18/1.png\" width=\"1920\" />Xin cảm ơn C&aacute;c bạn</p>', '2025-12-18 21:25:48.000000', 5, 'images/posts/git.gif', 1, 'huong-dan-dinh-dang-word-cach-4-c5', 'Hướng dẫn định dạng word 1 cách miễn phí', '2025-12-18 21:25:48.000000'),
(32, 'Huong dan dinh dang word', '<p><strong>Bước 1:</strong>&nbsp;Mở video YouTube trong tr&igrave;nh duyệt Cốc Cốc.</p>\r\n\r\n<p><strong>Bước 2:</strong>&nbsp;Di chuột v&agrave;o khung video đang ph&aacute;t, bạn sẽ thấy thanh c&ocirc;ng cụ ở g&oacute;c tr&aacute;i tr&ecirc;n xuất hiện.</p>\r\n\r\n<p><img height=\"1080\" src=\"/media/uploads/2025/12/18/git.gif\" width=\"1920\" /><strong>Bước 3:</strong>&nbsp;Bấm v&agrave;o biểu tượng Download (n&uacute;t tr&ograve;n xanh l&aacute; c&oacute; mũi t&ecirc;n xuống) &gt; Trong mục Video, chọn chất lượng video v&agrave; bấm v&agrave;o đ&oacute; để tải xuống.<img height=\"1080\" src=\"/media/uploads/2025/12/18/4.png\" width=\"1920\" /><strong>Bước 4:</strong>&nbsp;Theo d&otilde;i trạng th&aacute;i tải video YouTube ở biểu tượng download ngay g&oacute;c phải tr&ecirc;n tr&igrave;nh duyệt Cốc Cốc. Sau khi video tải xong bạn v&agrave;o menu biểu tượng 3 thanh ngang v&agrave; chọn &quot;Tải xuống&quot; (Download) hoặc bấm tổ hợp ph&iacute;m&nbsp;<strong>Ctrl + J</strong>.<img height=\"1080\" src=\"/media/uploads/2025/12/18/3.png\" width=\"1920\" /><strong>Bước 5:</strong>&nbsp;M&agrave;n h&igrave;nh quản l&yacute; file đ&atilde; tải về xuất hiện, bạn c&oacute; thể xem tất cả file (video, nhạc, tệp tin,..) tải xuống ở đ&acirc;y. Bấm &quot;Mở trong thư mục&quot; để v&agrave;o folder chưa video tải xuống hoặc &quot;Ph&aacute;t&quot; để mở xem video.<img height=\"1080\" src=\"/media/uploads/2025/12/18/2.png\" width=\"1920\" /><strong>Bước 6:</strong>&nbsp;M&agrave;n h&igrave;nh quản l&yacute; file đ&atilde; tải về xuất hiện, bạn c&oacute; thể xem tất cả file (video, nhạc, tệp tin,..) tải xuống ở đ&acirc;y. Bấm &quot;Mở trong thư mục&quot; để v&agrave;o folder chưa video tải xuống hoặc &quot;Ph&aacute;t&quot; để mở xem video.<img height=\"1080\" src=\"/media/uploads/2025/12/18/1.png\" width=\"1920\" />Xin cảm ơn C&aacute;c bạn</p>', '2025-12-18 21:25:58.000000', 6, 'images/posts/git.gif', 1, 'huong-dan-dinh-dang-word-c6', 'Hướng dẫn định dạng word 1 cách miễn phí', '2025-12-19 05:25:38.919502'),
(33, 'Huong dan dinh dang word cach 1', '<p><strong>Bước 1:</strong>&nbsp;Mở video YouTube trong tr&igrave;nh duyệt Cốc Cốc.</p>\r\n\r\n<p><strong>Bước 2:</strong>&nbsp;Di chuột v&agrave;o khung video đang ph&aacute;t, bạn sẽ thấy thanh c&ocirc;ng cụ ở g&oacute;c tr&aacute;i tr&ecirc;n xuất hiện.</p>\r\n\r\n<p><img height=\"1080\" src=\"/media/uploads/2025/12/18/git.gif\" width=\"1920\" /><strong>Bước 3:</strong>&nbsp;Bấm v&agrave;o biểu tượng Download (n&uacute;t tr&ograve;n xanh l&aacute; c&oacute; mũi t&ecirc;n xuống) &gt; Trong mục Video, chọn chất lượng video v&agrave; bấm v&agrave;o đ&oacute; để tải xuống.<img height=\"1080\" src=\"/media/uploads/2025/12/18/4.png\" width=\"1920\" /><strong>Bước 4:</strong>&nbsp;Theo d&otilde;i trạng th&aacute;i tải video YouTube ở biểu tượng download ngay g&oacute;c phải tr&ecirc;n tr&igrave;nh duyệt Cốc Cốc. Sau khi video tải xong bạn v&agrave;o menu biểu tượng 3 thanh ngang v&agrave; chọn &quot;Tải xuống&quot; (Download) hoặc bấm tổ hợp ph&iacute;m&nbsp;<strong>Ctrl + J</strong>.<img height=\"1080\" src=\"/media/uploads/2025/12/18/3.png\" width=\"1920\" /><strong>Bước 5:</strong>&nbsp;M&agrave;n h&igrave;nh quản l&yacute; file đ&atilde; tải về xuất hiện, bạn c&oacute; thể xem tất cả file (video, nhạc, tệp tin,..) tải xuống ở đ&acirc;y. Bấm &quot;Mở trong thư mục&quot; để v&agrave;o folder chưa video tải xuống hoặc &quot;Ph&aacute;t&quot; để mở xem video.<img height=\"1080\" src=\"/media/uploads/2025/12/18/2.png\" width=\"1920\" /><strong>Bước 6:</strong>&nbsp;M&agrave;n h&igrave;nh quản l&yacute; file đ&atilde; tải về xuất hiện, bạn c&oacute; thể xem tất cả file (video, nhạc, tệp tin,..) tải xuống ở đ&acirc;y. Bấm &quot;Mở trong thư mục&quot; để v&agrave;o folder chưa video tải xuống hoặc &quot;Ph&aacute;t&quot; để mở xem video.<img height=\"1080\" src=\"/media/uploads/2025/12/18/1.png\" width=\"1920\" />Xin cảm ơn C&aacute;c bạn</p>', '2025-12-18 21:25:58.000000', 6, 'images/posts/git.gif', 1, 'huong-dan-dinh-dang-word-cach-1-c6', 'Hướng dẫn định dạng word 1 cách miễn phí', '2025-12-18 21:25:58.000000'),
(34, 'Huong dan dinh dang word cach 2', '<p><strong>Bước 1:</strong>&nbsp;Mở video YouTube trong tr&igrave;nh duyệt Cốc Cốc.</p>\r\n\r\n<p><strong>Bước 2:</strong>&nbsp;Di chuột v&agrave;o khung video đang ph&aacute;t, bạn sẽ thấy thanh c&ocirc;ng cụ ở g&oacute;c tr&aacute;i tr&ecirc;n xuất hiện.</p>\r\n\r\n<p><img height=\"1080\" src=\"/media/uploads/2025/12/18/git.gif\" width=\"1920\" /><strong>Bước 3:</strong>&nbsp;Bấm v&agrave;o biểu tượng Download (n&uacute;t tr&ograve;n xanh l&aacute; c&oacute; mũi t&ecirc;n xuống) &gt; Trong mục Video, chọn chất lượng video v&agrave; bấm v&agrave;o đ&oacute; để tải xuống.<img height=\"1080\" src=\"/media/uploads/2025/12/18/4.png\" width=\"1920\" /><strong>Bước 4:</strong>&nbsp;Theo d&otilde;i trạng th&aacute;i tải video YouTube ở biểu tượng download ngay g&oacute;c phải tr&ecirc;n tr&igrave;nh duyệt Cốc Cốc. Sau khi video tải xong bạn v&agrave;o menu biểu tượng 3 thanh ngang v&agrave; chọn &quot;Tải xuống&quot; (Download) hoặc bấm tổ hợp ph&iacute;m&nbsp;<strong>Ctrl + J</strong>.<img height=\"1080\" src=\"/media/uploads/2025/12/18/3.png\" width=\"1920\" /><strong>Bước 5:</strong>&nbsp;M&agrave;n h&igrave;nh quản l&yacute; file đ&atilde; tải về xuất hiện, bạn c&oacute; thể xem tất cả file (video, nhạc, tệp tin,..) tải xuống ở đ&acirc;y. Bấm &quot;Mở trong thư mục&quot; để v&agrave;o folder chưa video tải xuống hoặc &quot;Ph&aacute;t&quot; để mở xem video.<img height=\"1080\" src=\"/media/uploads/2025/12/18/2.png\" width=\"1920\" /><strong>Bước 6:</strong>&nbsp;M&agrave;n h&igrave;nh quản l&yacute; file đ&atilde; tải về xuất hiện, bạn c&oacute; thể xem tất cả file (video, nhạc, tệp tin,..) tải xuống ở đ&acirc;y. Bấm &quot;Mở trong thư mục&quot; để v&agrave;o folder chưa video tải xuống hoặc &quot;Ph&aacute;t&quot; để mở xem video.<img height=\"1080\" src=\"/media/uploads/2025/12/18/1.png\" width=\"1920\" />Xin cảm ơn C&aacute;c bạn</p>', '2025-12-18 21:25:58.000000', 6, 'images/posts/git.gif', 1, 'huong-dan-dinh-dang-word-cach-2-c6', 'Hướng dẫn định dạng word 1 cách miễn phí', '2025-12-18 21:25:58.000000'),
(35, 'Huong dan dinh dang word cach 3', '<p><strong>Bước 1:</strong>&nbsp;Mở video YouTube trong tr&igrave;nh duyệt Cốc Cốc.</p>\r\n\r\n<p><strong>Bước 2:</strong>&nbsp;Di chuột v&agrave;o khung video đang ph&aacute;t, bạn sẽ thấy thanh c&ocirc;ng cụ ở g&oacute;c tr&aacute;i tr&ecirc;n xuất hiện.</p>\r\n\r\n<p><img height=\"1080\" src=\"/media/uploads/2025/12/18/git.gif\" width=\"1920\" /><strong>Bước 3:</strong>&nbsp;Bấm v&agrave;o biểu tượng Download (n&uacute;t tr&ograve;n xanh l&aacute; c&oacute; mũi t&ecirc;n xuống) &gt; Trong mục Video, chọn chất lượng video v&agrave; bấm v&agrave;o đ&oacute; để tải xuống.<img height=\"1080\" src=\"/media/uploads/2025/12/18/4.png\" width=\"1920\" /><strong>Bước 4:</strong>&nbsp;Theo d&otilde;i trạng th&aacute;i tải video YouTube ở biểu tượng download ngay g&oacute;c phải tr&ecirc;n tr&igrave;nh duyệt Cốc Cốc. Sau khi video tải xong bạn v&agrave;o menu biểu tượng 3 thanh ngang v&agrave; chọn &quot;Tải xuống&quot; (Download) hoặc bấm tổ hợp ph&iacute;m&nbsp;<strong>Ctrl + J</strong>.<img height=\"1080\" src=\"/media/uploads/2025/12/18/3.png\" width=\"1920\" /><strong>Bước 5:</strong>&nbsp;M&agrave;n h&igrave;nh quản l&yacute; file đ&atilde; tải về xuất hiện, bạn c&oacute; thể xem tất cả file (video, nhạc, tệp tin,..) tải xuống ở đ&acirc;y. Bấm &quot;Mở trong thư mục&quot; để v&agrave;o folder chưa video tải xuống hoặc &quot;Ph&aacute;t&quot; để mở xem video.<img height=\"1080\" src=\"/media/uploads/2025/12/18/2.png\" width=\"1920\" /><strong>Bước 6:</strong>&nbsp;M&agrave;n h&igrave;nh quản l&yacute; file đ&atilde; tải về xuất hiện, bạn c&oacute; thể xem tất cả file (video, nhạc, tệp tin,..) tải xuống ở đ&acirc;y. Bấm &quot;Mở trong thư mục&quot; để v&agrave;o folder chưa video tải xuống hoặc &quot;Ph&aacute;t&quot; để mở xem video.<img height=\"1080\" src=\"/media/uploads/2025/12/18/1.png\" width=\"1920\" />Xin cảm ơn C&aacute;c bạn</p>', '2025-12-18 21:25:58.000000', 6, 'images/posts/git.gif', 1, 'huong-dan-dinh-dang-word-cach-3-c6', 'Hướng dẫn định dạng word 1 cách miễn phí', '2025-12-18 21:25:58.000000'),
(36, 'Huong dan dinh dang word cach 4', '<p><strong>Bước 1:</strong>&nbsp;Mở video YouTube trong tr&igrave;nh duyệt Cốc Cốc.</p>\r\n\r\n<p><strong>Bước 2:</strong>&nbsp;Di chuột v&agrave;o khung video đang ph&aacute;t, bạn sẽ thấy thanh c&ocirc;ng cụ ở g&oacute;c tr&aacute;i tr&ecirc;n xuất hiện.</p>\r\n\r\n<p><img height=\"1080\" src=\"/media/uploads/2025/12/18/git.gif\" width=\"1920\" /><strong>Bước 3:</strong>&nbsp;Bấm v&agrave;o biểu tượng Download (n&uacute;t tr&ograve;n xanh l&aacute; c&oacute; mũi t&ecirc;n xuống) &gt; Trong mục Video, chọn chất lượng video v&agrave; bấm v&agrave;o đ&oacute; để tải xuống.<img height=\"1080\" src=\"/media/uploads/2025/12/18/4.png\" width=\"1920\" /><strong>Bước 4:</strong>&nbsp;Theo d&otilde;i trạng th&aacute;i tải video YouTube ở biểu tượng download ngay g&oacute;c phải tr&ecirc;n tr&igrave;nh duyệt Cốc Cốc. Sau khi video tải xong bạn v&agrave;o menu biểu tượng 3 thanh ngang v&agrave; chọn &quot;Tải xuống&quot; (Download) hoặc bấm tổ hợp ph&iacute;m&nbsp;<strong>Ctrl + J</strong>.<img height=\"1080\" src=\"/media/uploads/2025/12/18/3.png\" width=\"1920\" /><strong>Bước 5:</strong>&nbsp;M&agrave;n h&igrave;nh quản l&yacute; file đ&atilde; tải về xuất hiện, bạn c&oacute; thể xem tất cả file (video, nhạc, tệp tin,..) tải xuống ở đ&acirc;y. Bấm &quot;Mở trong thư mục&quot; để v&agrave;o folder chưa video tải xuống hoặc &quot;Ph&aacute;t&quot; để mở xem video.<img height=\"1080\" src=\"/media/uploads/2025/12/18/2.png\" width=\"1920\" /><strong>Bước 6:</strong>&nbsp;M&agrave;n h&igrave;nh quản l&yacute; file đ&atilde; tải về xuất hiện, bạn c&oacute; thể xem tất cả file (video, nhạc, tệp tin,..) tải xuống ở đ&acirc;y. Bấm &quot;Mở trong thư mục&quot; để v&agrave;o folder chưa video tải xuống hoặc &quot;Ph&aacute;t&quot; để mở xem video.<img height=\"1080\" src=\"/media/uploads/2025/12/18/1.png\" width=\"1920\" />Xin cảm ơn C&aacute;c bạn</p>', '2025-12-18 21:25:58.000000', 6, 'images/posts/git.gif', 1, 'huong-dan-dinh-dang-word-cach-4-c6', 'Hướng dẫn định dạng word 1 cách miễn phí', '2025-12-27 14:19:55.436067'),
(37, 'Hướng dẫn kích hoạt Office 365 cài sẵn đi kèm theo máy', '<h3 bis_size=\"{&quot;x&quot;:8,&quot;y&quot;:18,&quot;w&quot;:365,&quot;h&quot;:21,&quot;abs_x&quot;:542,&quot;abs_y&quot;:869}\"><strong bis_size=\"{&quot;x&quot;:8,&quot;y&quot;:18,&quot;w&quot;:211,&quot;h&quot;:21,&quot;abs_x&quot;:542,&quot;abs_y&quot;:869}\">1. Tạo t&agrave;i khoản Microsoft</strong></h3>\r\n\r\n<p bis_size=\"{&quot;x&quot;:8,&quot;y&quot;:58,&quot;w&quot;:365,&quot;h&quot;:37,&quot;abs_x&quot;:542,&quot;abs_y&quot;:909}\"><strong bis_size=\"{&quot;x&quot;:8,&quot;y&quot;:58,&quot;w&quot;:49,&quot;h&quot;:18,&quot;abs_x&quot;:542,&quot;abs_y&quot;:909}\">Bước 1</strong>: Vui l&ograve;ng truy cập:&nbsp;<a bis_size=\"{&quot;x&quot;:38,&quot;y&quot;:77,&quot;w&quot;:193,&quot;h&quot;:18,&quot;abs_x&quot;:572,&quot;abs_y&quot;:928}\" href=\"https://signup.live.com/signup?fbclid=IwAR21OWNpsHHPbBC9QICyKchIlq8VS0Fm1N0cRuuNZUcq2Wm8eOL5KtMT4-8\" rel=\"nofollow\" tabindex=\"-1\" target=\"_blank\">https://signup.live.com/signup</a>.</p>\r\n\r\n<p bis_size=\"{&quot;x&quot;:8,&quot;y&quot;:111,&quot;w&quot;:365,&quot;h&quot;:63,&quot;abs_x&quot;:542,&quot;abs_y&quot;:962}\"><img alt=\"Truy cập vào trang web trên\" bis_size=\"{&quot;x&quot;:135,&quot;y&quot;:111,&quot;w&quot;:109,&quot;h&quot;:63,&quot;abs_x&quot;:669,&quot;abs_y&quot;:962}\" height=\"465\" src=\"https://cdn.tgdd.vn/News/1486171/huong-dan-kich-hoat-office-365-cai-san-di-kem-1-800x465.jpg\" title=\"Truy cập vào trang web trên\" width=\"800\" /></p>\r\n\r\n<p bis_size=\"{&quot;x&quot;:8,&quot;y&quot;:191,&quot;w&quot;:365,&quot;h&quot;:18,&quot;abs_x&quot;:542,&quot;abs_y&quot;:1042}\">Truy cập v&agrave;o trang web tr&ecirc;n</p>\r\n\r\n<p bis_size=\"{&quot;x&quot;:8,&quot;y&quot;:226,&quot;w&quot;:365,&quot;h&quot;:55,&quot;abs_x&quot;:542,&quot;abs_y&quot;:1077}\"><strong bis_size=\"{&quot;x&quot;:8,&quot;y&quot;:226,&quot;w&quot;:49,&quot;h&quot;:18,&quot;abs_x&quot;:542,&quot;abs_y&quot;:1077}\">Bước 2</strong>: Tạo 1 t&ecirc;n t&agrave;i khoản Microsoft theo &yacute;, thường đu&ocirc;i sẽ l&agrave;: &ldquo;outlook.com&rdquo; Vd: nguyenvana@outlook.com.</p>\r\n\r\n<p bis_size=\"{&quot;x&quot;:8,&quot;y&quot;:297,&quot;w&quot;:365,&quot;h&quot;:63,&quot;abs_x&quot;:542,&quot;abs_y&quot;:1148}\"><img alt=\"Tạo tài khoản Microsoft với đuôi @outlook\" bis_size=\"{&quot;x&quot;:135,&quot;y&quot;:297,&quot;w&quot;:109,&quot;h&quot;:63,&quot;abs_x&quot;:669,&quot;abs_y&quot;:1148}\" height=\"464\" src=\"https://cdn.tgdd.vn/News/1486171/huong-dan-kich-hoat-office-365-cai-san-di-kem-2-800x464.jpg\" title=\"Tạo tài khoản Microsoft với đuôi @outlook\" width=\"800\" /></p>\r\n\r\n<p bis_size=\"{&quot;x&quot;:8,&quot;y&quot;:377,&quot;w&quot;:365,&quot;h&quot;:18,&quot;abs_x&quot;:542,&quot;abs_y&quot;:1228}\">Tạo t&agrave;i khoản Microsoft với đu&ocirc;i @outlook</p>\r\n\r\n<p bis_size=\"{&quot;x&quot;:8,&quot;y&quot;:411,&quot;w&quot;:365,&quot;h&quot;:37,&quot;abs_x&quot;:542,&quot;abs_y&quot;:1262}\"><strong bis_size=\"{&quot;x&quot;:8,&quot;y&quot;:411,&quot;w&quot;:49,&quot;h&quot;:18,&quot;abs_x&quot;:542,&quot;abs_y&quot;:1262}\">Bước 3</strong>: Nhập mật m&atilde; (gồm chữ v&agrave; số v&agrave; phải c&oacute; k&yacute; tự viết hoa).</p>\r\n\r\n<p bis_size=\"{&quot;x&quot;:8,&quot;y&quot;:464,&quot;w&quot;:365,&quot;h&quot;:63,&quot;abs_x&quot;:542,&quot;abs_y&quot;:1315}\"><img alt=\"Nhập mật mã bản thân dễ nhớ\" bis_size=\"{&quot;x&quot;:135,&quot;y&quot;:464,&quot;w&quot;:109,&quot;h&quot;:63,&quot;abs_x&quot;:669,&quot;abs_y&quot;:1315}\" height=\"464\" src=\"https://cdn.tgdd.vn/News/1486171/huong-dan-kich-hoat-office-365-cai-san-di-kem-3-800x464.jpg\" title=\"Nhập mật mã bản thân dễ nhớ\" width=\"800\" /></p>\r\n\r\n<p bis_size=\"{&quot;x&quot;:8,&quot;y&quot;:544,&quot;w&quot;:365,&quot;h&quot;:18,&quot;abs_x&quot;:542,&quot;abs_y&quot;:1395}\">Nhập mật m&atilde; bản th&acirc;n dễ nhớ</p>\r\n\r\n<p bis_size=\"{&quot;x&quot;:8,&quot;y&quot;:578,&quot;w&quot;:365,&quot;h&quot;:37,&quot;abs_x&quot;:542,&quot;abs_y&quot;:1429}\"><strong bis_size=\"{&quot;x&quot;:8,&quot;y&quot;:578,&quot;w&quot;:49,&quot;h&quot;:18,&quot;abs_x&quot;:542,&quot;abs_y&quot;:1429}\">Bước 4</strong>: Tạo th&agrave;nh c&ocirc;ng, v&agrave;o t&agrave;i khoản kh&aacute;ch th&ecirc;m số điện thoại v&agrave; email kh&ocirc;i phục (nếu c&oacute;).</p>\r\n\r\n<p bis_size=\"{&quot;x&quot;:8,&quot;y&quot;:631,&quot;w&quot;:365,&quot;h&quot;:64,&quot;abs_x&quot;:542,&quot;abs_y&quot;:1482}\"><img alt=\"Bạn có thể bổ sung SĐT hoặc email khác nếu có nhu cầu\" bis_size=\"{&quot;x&quot;:135,&quot;y&quot;:631,&quot;w&quot;:109,&quot;h&quot;:64,&quot;abs_x&quot;:669,&quot;abs_y&quot;:1482}\" height=\"468\" src=\"https://cdn.tgdd.vn/News/1486171/huong-dan-kich-hoat-office-365-cai-san-di-kem-4-800x468.jpg\" title=\"Bạn có thể bổ sung SĐT hoặc email khác nếu có nhu cầu\" width=\"800\" /></p>\r\n\r\n<p bis_size=\"{&quot;x&quot;:8,&quot;y&quot;:711,&quot;w&quot;:365,&quot;h&quot;:37,&quot;abs_x&quot;:542,&quot;abs_y&quot;:1562}\">Bạn c&oacute; thể bổ sung SĐT hoặc email kh&aacute;c nếu c&oacute; nhu cầu</p>\r\n\r\n<p bis_size=\"{&quot;x&quot;:8,&quot;y&quot;:764,&quot;w&quot;:365,&quot;h&quot;:74,&quot;abs_x&quot;:542,&quot;abs_y&quot;:1615}\"><strong bis_size=\"{&quot;x&quot;:8,&quot;y&quot;:764,&quot;w&quot;:49,&quot;h&quot;:18,&quot;abs_x&quot;:542,&quot;abs_y&quot;:1615}\">Bước 5</strong>: Gửi lại cho kh&aacute;ch h&agrave;ng, n&ecirc;n lưu lại trong tầm 30 ng&agrave;y để ph&ograve;ng trường hợp kh&aacute;ch qu&ecirc;n, nếu qu&ecirc;n phải li&ecirc;n hệ Microsoft để kh&ocirc;i phục nhưng khả năng lấy lại kh&ocirc;ng cao.</p>\r\n\r\n<p bis_size=\"{&quot;x&quot;:8,&quot;y&quot;:854,&quot;w&quot;:365,&quot;h&quot;:72,&quot;abs_x&quot;:542,&quot;abs_y&quot;:1705}\"><img alt=\"Ghi chú lại mật khẩu đề phòng trường hợp quên\" bis_size=\"{&quot;x&quot;:135,&quot;y&quot;:854,&quot;w&quot;:109,&quot;h&quot;:72,&quot;abs_x&quot;:669,&quot;abs_y&quot;:1705}\" height=\"533\" src=\"https://cdn.tgdd.vn/News/1486171/huong-dan-kich-hoat-office-365-cai-san-di-kem-5-800x533.jpg\" title=\"Ghi chú lại mật khẩu đề phòng trường hợp quên\" width=\"800\" /></p>\r\n\r\n<p bis_size=\"{&quot;x&quot;:8,&quot;y&quot;:943,&quot;w&quot;:365,&quot;h&quot;:18,&quot;abs_x&quot;:542,&quot;abs_y&quot;:1794}\">Ghi ch&uacute; lại mật khẩu đề ph&ograve;ng trường hợp qu&ecirc;n</p>\r\n\r\n<h3><strong>2. K&iacute;ch hoạt Microsoft 365 g&oacute;i 1 năm, 2 năm, 3 năm</strong></h3>\r\n\r\n<p><strong>Lưu &yacute;</strong>: Microsoft 365 Personal hỗ trợ người d&ugrave;ng k&iacute;ch hoạt c&ugrave;ng l&uacute;c tối đa 05 key bản quyền, tương đương tối đa 5 năm sử dụng. Hướng dẫn dưới đ&acirc;y l&agrave; c&aacute;ch thức k&iacute;ch hoạt g&oacute;i 2 năm bản quyền sản phẩm c&ugrave;ng l&uacute;c, việc k&iacute;ch hoạt 3 hay 5 g&oacute;i bản quyền thực hiện tương tự (thời gian kh&ocirc;ng cộng qu&aacute; thời gian 5 năm).</p>\r\n\r\n<p><strong>K&iacute;ch hoạt bản quyền key thứ nhất</strong></p>\r\n\r\n<p><strong>Bước 1</strong>: Bạn h&atilde;y vui l&ograve;ng truy cập link Microsoft Office&nbsp;<a href=\"https://office.com/setup\" rel=\"nofollow\" target=\"_blank\" title=\"TẠI ĐÂY\">TẠI Đ&Acirc;Y</a>.</p>\r\n\r\n<p><img alt=\"Vui lòng truy cập vào trang web trên\" height=\"405\" src=\"https://cdn.tgdd.vn/News/1486171/huong-dan-kich-hoat-office-365-cai-san-di-kem-6-800x405.jpg\" title=\"Vui lòng truy cập vào trang web trên\" width=\"800\" /></p>\r\n\r\n<p>Vui l&ograve;ng truy cập v&agrave;o trang web tr&ecirc;n</p>\r\n\r\n<p><strong>Bước 2</strong>: Đăng nhập t&agrave;i khoản Microsoft sử dụng k&iacute;ch hoạt Microsoft 365 personal. Nếu chưa c&oacute;, tạo mới rồi đăng nhập.</p>\r\n\r\n<p><img alt=\"Đăng nhập tài khoản hoặc tạo mới (nếu chưa có tài khoản)\" height=\"586\" src=\"https://cdn.tgdd.vn/News/1486171/huong-dan-kich-hoat-office-365-cai-san-di-kem-7-800x586.jpg\" title=\"Đăng nhập tài khoản hoặc tạo mới (nếu chưa có tài khoản)\" width=\"800\" /></p>\r\n\r\n<p>Đăng nhập t&agrave;i khoản hoặc tạo mới (nếu chưa c&oacute; t&agrave;i khoản)</p>\r\n\r\n<p><strong>Bước 3</strong>: Nhập m&atilde; key office mới xuất b&aacute;n gồm 25 k&yacute; tự Chọn v&ugrave;ng/Quốc gia &amp; Ng&ocirc;n ngữ (Việt Nam).</p>\r\n\r\n<p><img alt=\"Nhập mã key office bao gồm 25 ký tự vào ô trống\" height=\"450\" src=\"https://cdn.tgdd.vn/News/1486171/huong-dan-kich-hoat-office-365-cai-san-di-kem-8-800x450.jpg\" title=\"Nhập mã key office bao gồm 25 ký tự vào ô trống\" width=\"800\" /></p>\r\n\r\n<p>Nhập m&atilde; key office bao gồm 25 k&yacute; tự v&agrave;o &ocirc; trống</p>\r\n\r\n<p><strong>Bước 4</strong>: Tắt chức năng tự động gia hạn &gt; X&aacute;c nhận.</p>\r\n\r\n<p><img alt=\"Tắt chức năng tự dộng gia hạn Office 365\" height=\"212\" src=\"https://cdn.tgdd.vn/News/1486171/huong-dan-kich-hoat-office-365-cai-san-di-kem-9-800x212.jpg\" title=\"Tắt chức năng tự dộng gia hạn Office 365\" width=\"800\" /></p>\r\n\r\n<p>Tắt chức năng tự dộng gia hạn Office 365</p>\r\n\r\n<p><strong>Bước</strong>&nbsp;<strong>5</strong>: K&iacute;ch hoạt th&agrave;nh c&ocirc;ng, tự động chuyển qua Trang quản l&yacute; t&agrave;i khoản &amp; C&agrave;i đặt:&nbsp;<a href=\"https://office.com/myaccount?fbclid=IwAR0KTFpqlNqgqcjP3Ub_F7M2U4AhdSOVNW33pPNTFk2Qgermf40wdWy8ZEU\" rel=\"nofollow\" tabindex=\"-1\" target=\"_blank\">https://office.com/myaccount</a>.</p>\r\n\r\n<p><img alt=\"Kích hoạt thành công, giao diện sẽ chuyển sang Trang quản lý tài khoản và cài đặt\" height=\"406\" src=\"https://cdn.tgdd.vn/News/1486171/huong-dan-kich-hoat-office-365-cai-san-di-kem-10-800x406.jpg\" title=\"Kích hoạt thành công, giao diện sẽ chuyển sang Trang quản lý tài khoản và cài đặt\" width=\"800\" /></p>\r\n\r\n<p>K&iacute;ch hoạt th&agrave;nh c&ocirc;ng, giao diện sẽ chuyển sang Trang quản l&yacute; t&agrave;i khoản v&agrave; c&agrave;i đặt</p>\r\n\r\n<p><strong>K&iacute;ch hoạt bản quyền key thứ hai</strong></p>\r\n\r\n<p>Lặp lại c&aacute;c bước như ở quy tr&igrave;nh k&iacute;ch hoạt bản quyền key thứ nhất với c&ugrave;ng t&agrave;i khoản Microsoft trước đ&oacute; để k&iacute;ch hoạt bản quyền key thứ 2.</p>\r\n\r\n<p><strong>XEM NGAY c&aacute;c chương tr&igrave;nh, m&atilde; khuyến m&atilde;i v&agrave; m&atilde; giảm gi&aacute; tại Thế Giới Di Động:</strong></p>\r\n\r\n<ul>\r\n	<li><a href=\"https://www.thegioididong.com/hoi-dap/tong-hop-khuyen-mai-hap-dan-thang-6-2022-danh-cho-1426824\" rel=\"dofollow\" target=\"_blank\" title=\"Tổng hợp khuyến mãi hấp dẫn dành cho tất cả ngành hàng\">Tổng hợp khuyến m&atilde;i hấp dẫn d&agrave;nh cho tất cả ng&agrave;nh h&agrave;ng</a></li>\r\n	<li><a href=\"https://www.thegioididong.com/hoi-dap/mua-hang-giam-gia-tong-hop-ma-khuyen-mai-t06-2022-tai-tgdd-1436332\" rel=\"dofollow\" target=\"_blank\" title=\"Tổng hợp tất cả mã giảm giá, mã khuyến mãi tại TGDĐ\">Tổng hợp tất cả m&atilde; giảm gi&aacute;, m&atilde; khuyến m&atilde;i tại TGDĐ</a></li>\r\n</ul>\r\n\r\n<p><iframe height=\"0\" id=\"ads-place-2033554\" sandbox=\"\" scrolling=\"no\" src=\"javascript:if(typeof(admSspPageRg)!=\'undefined\'){admSspPageRg.draw(2033554);}else{parent.admSspPageRg.draw(2033554);}\" width=\"0\"></iframe></p>\r\n\r\n<h3><strong>3. Hướng dẫn tải về, c&agrave;i đặt Microsoft 365 Personal</strong></h3>\r\n\r\n<p><strong>Lưu &yacute;</strong>: Việc c&agrave;i đặt Microsoft 365 Personal c&oacute; thể thực hiện ngay sau khi k&iacute;ch hoạt th&agrave;nh c&ocirc;ng bản quyền key thứ nhất. Trường hợp kh&aacute;ch h&agrave;ng mua c&ugrave;ng l&uacute;c 2, 3 hay 5 key bản quyền, việc c&agrave;i đặt n&ecirc;n được thực hiện sau khi k&iacute;ch hoạt th&agrave;nh c&ocirc;ng tất cả key bản quyền đ&atilde; mua.</p>\r\n\r\n<p><strong>C&aacute;ch 1</strong>:</p>\r\n\r\n<p>- Từ&nbsp;<a href=\"https://office.com/myaccount\" rel=\"nofollow\" target=\"_blank\" title=\"Trang quản lý tài khoản &amp; Cài đặt\">Trang quản l&yacute; t&agrave;i khoản &amp; C&agrave;i đặt</a>&nbsp;&gt; Chọn C&agrave;i đặt (Install) để tiến h&agrave;nh tải bộ c&agrave;i đặt về m&aacute;y, tiến h&agrave;nh c&agrave;i đặt.</p>\r\n\r\n<p><img alt=\"Bạn có thể tải về tại trang quản lý tài khoản Microsoft\" height=\"453\" src=\"https://cdn.tgdd.vn/News/1486171/huong-dan-kich-hoat-office-365-cai-san-di-kem-10-800x453.png\" title=\"Bạn có thể tải về tại trang quản lý tài khoản Microsoft\" width=\"800\" /></p>\r\n\r\n<p>Bạn c&oacute; thể tải về tại trang quản l&yacute; t&agrave;i khoản Microsoft</p>\r\n\r\n<p>- Mặc định sẽ l&agrave; bản 64 bit, chọn &ldquo;Lựa chọn kh&aacute;c&rdquo; /(Other Options) để chọn ng&ocirc;n ngữ Office hay tải bộ c&agrave;i đặt offline d&ugrave;ng về sau.</p>\r\n\r\n<p><img alt=\"Hãy chọn cấu hình và ngôn ngữ phù hợp với máy\" height=\"323\" src=\"https://cdn.tgdd.vn/News/1486171/huong-dan-kich-hoat-office-365-cai-san-di-kem-11-800x323.jpg\" title=\"Hãy chọn cấu hình và ngôn ngữ phù hợp với máy\" width=\"800\" /></p>\r\n\r\n<p>H&atilde;y chọn cấu h&igrave;nh v&agrave; ng&ocirc;n ngữ ph&ugrave; hợp với m&aacute;y</p>\r\n\r\n<p><strong>C&aacute;ch 2</strong>:</p>\r\n\r\n<p>- Truy cập v&agrave;o link&nbsp;<a href=\"https://cloud.tgdd.vn/index.php/s/fgkekOQ5LLwYu68\" rel=\"nofollow\" target=\"_blank\">TẠI Đ&Acirc;Y</a>&nbsp;&gt; Tải ngay bản full về v&agrave; tiến h&agrave;nh c&agrave;i đặt.</p>\r\n\r\n<p><img alt=\"Bạn có thể truy cập vào link phía trên mà Thế Giới Di Động đã thiết kế\" height=\"340\" src=\"https://cdn.tgdd.vn/News/1486171/huong-dan-kich-hoat-office-365-cai-san-di-kem-12-800x340.jpg\" title=\"Bạn có thể truy cập vào link phía trên mà Thế Giới Di Động đã thiết kế\" width=\"800\" /></p>\r\n\r\n<p>Bạn c&oacute; thể truy cập v&agrave;o link ph&iacute;a tr&ecirc;n m&agrave; Thế Giới Di Động đ&atilde; thiết kế</p>\r\n\r\n<p>- Sau khi c&agrave;i đặt điền t&ecirc;n t&agrave;i khoản v&agrave; mật khẩu đ&atilde; k&iacute;ch hoạt v&agrave;o Office để active sản phẩm.</p>\r\n\r\n<p><img alt=\"Đăng nhập tài khoản để kích hoạt như thông thường\" height=\"360\" src=\"https://cdn.tgdd.vn/News/1486171/huong-dan-kich-hoat-office-365-cai-san-di-kem-13-800x360.jpg\" title=\"Đăng nhập tài khoản để kích hoạt như thông thường\" width=\"800\" /></p>\r\n\r\n<p>Đăng nhập t&agrave;i khoản để k&iacute;ch hoạt như th&ocirc;ng thường</p>\r\n\r\n<h3><strong>4. K&iacute;ch hoạt Office Home &amp; Student vĩnh viễn đi k&egrave;m theo m&aacute;y</strong></h3>\r\n\r\n<p><strong>Bước 1</strong>: Tạo t&agrave;i khoản Microsoft (hướng dẫn ở tr&ecirc;n), bỏ qua bước n&agrave;y nếu đ&atilde; c&oacute; t&agrave;i khoản.</p>\r\n\r\n<p><img alt=\"Tạo hoặc đăng nhập tài khoản đã có\" height=\"315\" src=\"https://cdn.tgdd.vn/News/1486171/huong-dan-kich-hoat-office-365-cai-san-di-kem-14-800x315.jpg\" title=\"Tạo hoặc đăng nhập tài khoản đã có\" width=\"800\" /></p>\r\n\r\n<p>Tạo hoặc đăng nhập t&agrave;i khoản đ&atilde; c&oacute;</p>\r\n\r\n<p><strong>Bước 2</strong>: Mở bất kỳ ứng dụng: Excel, Word hay Powerpoint,...</p>\r\n\r\n<p><img alt=\"Mở bất kì ứng dụng Office nào như Word, Excel,...\" height=\"455\" src=\"https://cdn.tgdd.vn/News/1486171/huong-dan-kich-hoat-office-365-cai-san-di-kem-15-800x455.png\" title=\"Mở bất kì ứng dụng Office nào như Word, Excel,...\" width=\"800\" /></p>\r\n\r\n<p>Mở bất k&igrave; ứng dụng Office n&agrave;o như Word, Excel,...</p>\r\n\r\n<p><strong>Bước 3</strong>: Đăng nhập t&agrave;i khoản Microsoft. Tiến h&agrave;nh update Office sau khi update, phần mềm sẽ tự động up th&agrave;nh Office Home &amp; Student.</p>\r\n\r\n<p><img alt=\"Đăng nhập như thông thường để nâng cấp thành phiên bản Home &amp; Student\" height=\"447\" src=\"https://cdn.tgdd.vn/News/1486171/huong-dan-kich-hoat-office-365-cai-san-di-kem-16-800x447.jpg\" title=\"Đăng nhập như thông thường để nâng cấp thành phiên bản Home &amp; Student\" width=\"800\" /></p>\r\n\r\n<p>Đăng nhập như th&ocirc;ng thường để n&acirc;ng cấp th&agrave;nh phi&ecirc;n bản Home &amp; Student</p>\r\n\r\n<p><strong>Lưu &yacute;</strong>: Office Home &amp; Student chỉ nhận bản quyền v&agrave;o t&agrave;i khoản đầu ti&ecirc;n v&agrave; duy nhất đăng nhập v&agrave;o m&aacute;y. Khi update n&ecirc;n kết nối wifi thật mạnh, hoặc wifi 4G từ điện thoại sẽ nhanh hơn.</p>\r\n\r\n<h3><strong>5. Một số c&acirc;u hỏi thường gặp</strong></h3>\r\n\r\n<p><strong>Hỏi: C&oacute; thể chuyển qua sử dụng c&aacute;c g&oacute;i Office kh&aacute;c?</strong></p>\r\n\r\n<p><strong>- Trả lời</strong>: C&oacute;. Tuy nhi&ecirc;n sau khi chuyển th&igrave; t&iacute;nh năng, ứng dụng, v&agrave; c&aacute;c lợi &iacute;ch kh&aacute;c sẽ thay đổi theo t&ugrave;y từng bản Office bạn chuyển qua. Bạn n&ecirc;n sử dụng hết thời gian sử dụng g&oacute;i Microsoft 365 Personal n&agrave;y rồi c&acirc;n nhắc chuyển qua g&oacute;i Office kh&aacute;c.</p>\r\n\r\n<p><strong>Hỏi: Mua Microsoft 365 Personal để c&agrave;i cho c&aacute;c m&aacute;y ở c&ocirc;ng ty được kh&ocirc;ng?</strong></p>\r\n\r\n<p><strong>- Trả lời</strong>: Microsoft 365 Personal l&agrave; bản d&agrave;nh ri&ecirc;ng cho người d&ugrave;ng c&aacute; nh&acirc;n &amp; gia đ&igrave;nh, kh&ocirc;ng &aacute;p dụng cho c&ocirc;ng ty.</p>\r\n\r\n<p><strong>Hỏi: Sau khi hết hạn, sử dụng c&aacute;c ứng dụng cũng như dữ liệu lưu trữ tr&ecirc;n OneDrive sẽ như thế n&agrave;o?</strong></p>\r\n\r\n<p><strong>- Trả lời</strong>: Dữ liệu đ&atilde; tải l&ecirc;n OneDrive sẽ vẫn được lưu trữ đầy đủ, anh/chị c&oacute; thể tải về nhưng kh&ocirc;ng thể tải l&ecirc;n hay chỉnh sửa online được. Dữ liệu sẽ được duy tr&igrave; tr&ecirc;n OneDrive tối thiểu th&ecirc;m 1 năm kể tư ng&agrave;y hết hạn, sau đ&oacute; c&oacute; thể bị x&oacute;a nếu người d&ugrave;ng kh&ocirc;ng tiếp tục gia hạn.</p>\r\n\r\n<p>Bạn tham khảo th&ecirc;m y&ecirc;u cầu phần cứng để biết thiết bị của m&igrave;nh c&oacute; hỗ trợ Office 365</p>', '2026-01-01 13:44:07.434687', 2, 'images/posts/13_800x449.png', 1, 'huong-dan-kich-hoat-office-365-cai-san-di-kem-theo-mayay', 'Hướng dẫn kích hoạt Office', '2026-01-01 13:44:07.434705');
INSERT INTO `app_post` (`id`, `title`, `content`, `created_at`, `category_id`, `image`, `is_published`, `slug`, `summary`, `updated_at`) VALUES
(38, 'Hướng dẫn sử dụng MacBook cho người mới từ A đến Z cực đơn giản', '<h3 bis_size=\"{&quot;x&quot;:8,&quot;y&quot;:18,&quot;w&quot;:365,&quot;h&quot;:43,&quot;abs_x&quot;:542,&quot;abs_y&quot;:869}\"><strong bis_size=\"{&quot;x&quot;:8,&quot;y&quot;:18,&quot;w&quot;:312,&quot;h&quot;:43,&quot;abs_x&quot;:542,&quot;abs_y&quot;:869}\">1. Hướng dẫn tạo t&agrave;i khoản kh&aacute;ch tr&ecirc;n MacBook</strong></h3>\r\n\r\n<p bis_size=\"{&quot;x&quot;:8,&quot;y&quot;:80,&quot;w&quot;:365,&quot;h&quot;:27,&quot;abs_x&quot;:542,&quot;abs_y&quot;:931}\"><strong bis_size=\"{&quot;x&quot;:8,&quot;y&quot;:80,&quot;w&quot;:365,&quot;h&quot;:27,&quot;abs_x&quot;:542,&quot;abs_y&quot;:931}\"><a bis_size=\"{&quot;x&quot;:8,&quot;y&quot;:80,&quot;w&quot;:365,&quot;h&quot;:27,&quot;abs_x&quot;:542,&quot;abs_y&quot;:931}\" href=\"https://www.thegioididong.com/phu-kien/apple?itm_source=hoidap&amp;itm_medium=banner&amp;itm_campaign=convert_traffic&amp;itm_content=nganh_hang_phu_kien_apple#curl=apple&amp;o=5&amp;pi=0\" rel=\"dofollow\" target=\"_blank\"><img alt=\"Đồ nhà táo sale lớn đến 50%, mua ngay chờ chi!!!\" bis_size=\"{&quot;x&quot;:135,&quot;y&quot;:80,&quot;w&quot;:109,&quot;h&quot;:27,&quot;abs_x&quot;:669,&quot;abs_y&quot;:931}\" height=\"211\" src=\"https://cdn.tgdd.vn/News/734198/SalePKApple-845x211.jpg\" title=\"Đồ nhà táo sale lớn đến 50%, mua ngay chờ chi!!!\" width=\"845\" /></a></strong></p>\r\n\r\n<p bis_size=\"{&quot;x&quot;:8,&quot;y&quot;:123,&quot;w&quot;:365,&quot;h&quot;:74,&quot;abs_x&quot;:542,&quot;abs_y&quot;:974}\">T&agrave;i khoản kh&aacute;ch sẽ gi&uacute;p bạn bảo mật t&agrave;i khoản một an to&agrave;n nhất. Điều n&agrave;y sẽ ph&aacute;t huy hết hiệu quả nếu bạn muốn cho bạn b&egrave; hoặc người th&acirc;n mượn chiếc MacBook của m&igrave;nh.</p>\r\n\r\n<p bis_size=\"{&quot;x&quot;:8,&quot;y&quot;:213,&quot;w&quot;:365,&quot;h&quot;:55,&quot;abs_x&quot;:542,&quot;abs_y&quot;:1064}\">Đ&acirc;y cũng l&agrave; l&yacute; do tại sao nhiều người d&ugrave;ng tin d&ugrave;ng Apple bởi họ lu&ocirc;n biết t&igrave;m c&aacute;ch để gi&uacute;p người d&ugrave;ng bảo vệ th&ocirc;ng tin c&aacute; nh&acirc;n một c&aacute;ch hiệu quả nhất!</p>\r\n\r\n<p bis_size=\"{&quot;x&quot;:8,&quot;y&quot;:285,&quot;w&quot;:365,&quot;h&quot;:129,&quot;abs_x&quot;:542,&quot;abs_y&quot;:1136}\"><strong bis_size=\"{&quot;x&quot;:8,&quot;y&quot;:285,&quot;w&quot;:126,&quot;h&quot;:18,&quot;abs_x&quot;:542,&quot;abs_y&quot;:1136}\">Hướng dẫn nhanh</strong>: Chọn&nbsp;<strong bis_size=\"{&quot;x&quot;:181,&quot;y&quot;:285,&quot;w&quot;:136,&quot;h&quot;:18,&quot;abs_x&quot;:715,&quot;abs_y&quot;:1136}\">System Preferences&nbsp;</strong>&gt; Chọn&nbsp;<strong bis_size=\"{&quot;x&quot;:46,&quot;y&quot;:303,&quot;w&quot;:127,&quot;h&quot;:18,&quot;abs_x&quot;:580,&quot;abs_y&quot;:1154}\">Users and Groups&nbsp;</strong>&gt; Chọn v&agrave;o<strong bis_size=\"{&quot;x&quot;:8,&quot;y&quot;:303,&quot;w&quot;:320,&quot;h&quot;:37,&quot;abs_x&quot;:542,&quot;abs_y&quot;:1154}\">&nbsp;icon h&igrave;nh ổ kh&oacute;a</strong>&nbsp;&gt;<strong bis_size=\"{&quot;x&quot;:54,&quot;y&quot;:322,&quot;w&quot;:183,&quot;h&quot;:18,&quot;abs_x&quot;:588,&quot;abs_y&quot;:1173}\">&nbsp;Nhập mật khẩu t&agrave;i khoản&nbsp;</strong>admin tr&ecirc;n m&aacute;y &gt; Chọn&nbsp;<strong bis_size=\"{&quot;x&quot;:46,&quot;y&quot;:340,&quot;w&quot;:52,&quot;h&quot;:18,&quot;abs_x&quot;:580,&quot;abs_y&quot;:1191}\">Unlock&nbsp;</strong>&gt; Chọn&nbsp;<strong bis_size=\"{&quot;x&quot;:151,&quot;y&quot;:340,&quot;w&quot;:86,&quot;h&quot;:18,&quot;abs_x&quot;:685,&quot;abs_y&quot;:1191}\">Guest Users&nbsp;</strong>&gt; Đ&aacute;nh dấu&nbsp;<strong bis_size=\"{&quot;x&quot;:37,&quot;y&quot;:359,&quot;w&quot;:29,&quot;h&quot;:18,&quot;abs_x&quot;:571,&quot;abs_y&quot;:1210}\">tick&nbsp;</strong>v&agrave;o<strong bis_size=\"{&quot;x&quot;:8,&quot;y&quot;:359,&quot;w&quot;:273,&quot;h&quot;:37,&quot;abs_x&quot;:542,&quot;abs_y&quot;:1210}\">&nbsp;Allow guests to log into this computer&nbsp;</strong>&gt;&nbsp;<strong bis_size=\"{&quot;x&quot;:90,&quot;y&quot;:377,&quot;w&quot;:44,&quot;h&quot;:18,&quot;abs_x&quot;:624,&quot;abs_y&quot;:1228}\">Tho&aacute;t&nbsp;</strong>ra v&agrave;<strong bis_size=\"{&quot;x&quot;:167,&quot;y&quot;:377,&quot;w&quot;:66,&quot;h&quot;:18,&quot;abs_x&quot;:701,&quot;abs_y&quot;:1228}\">&nbsp;kiểm tra&nbsp;</strong>lại đ&atilde; tạo th&agrave;nh c&ocirc;ng chưa.</p>\r\n\r\n<p bis_size=\"{&quot;x&quot;:8,&quot;y&quot;:430,&quot;w&quot;:365,&quot;h&quot;:37,&quot;abs_x&quot;:542,&quot;abs_y&quot;:1281}\">Xem hướng dẫn chi tiết tại b&agrave;i viết:&nbsp;<a bis_size=\"{&quot;x&quot;:8,&quot;y&quot;:430,&quot;w&quot;:352,&quot;h&quot;:37,&quot;abs_x&quot;:542,&quot;abs_y&quot;:1281}\" href=\"https://www.thegioididong.com/hoi-dap/huong-dan-tao-tai-khoan-khach-tren-mac-os-844790\" rel=\"dofollow\" target=\"_blank\">Hướng dẫn tạo t&agrave;i khoản kh&aacute;ch tr&ecirc;n Mac OS</a>.</p>\r\n\r\n<p bis_size=\"{&quot;x&quot;:8,&quot;y&quot;:483,&quot;w&quot;:365,&quot;h&quot;:59,&quot;abs_x&quot;:542,&quot;abs_y&quot;:1334}\"><img alt=\"Tạo tài khoản khách\" bis_size=\"{&quot;x&quot;:135,&quot;y&quot;:483,&quot;w&quot;:109,&quot;h&quot;:59,&quot;abs_x&quot;:669,&quot;abs_y&quot;:1334}\" src=\"//cdn.tgdd.vn/hoi-dap/889986/huong-dan-su-dung-macbook-cho-nguoi-moi ( (1)-800x432.jpg\" title=\"Tạo tài khoản khách\" /></p>\r\n\r\n<p bis_size=\"{&quot;x&quot;:8,&quot;y&quot;:558,&quot;w&quot;:365,&quot;h&quot;:18,&quot;abs_x&quot;:542,&quot;abs_y&quot;:1409}\">Tạo t&agrave;i khoản kh&aacute;ch</p>\r\n\r\n<p bis_size=\"{&quot;x&quot;:8,&quot;y&quot;:593,&quot;w&quot;:365,&quot;h&quot;:74,&quot;abs_x&quot;:542,&quot;abs_y&quot;:1444}\">Xem ngay&nbsp;<a bis_size=\"{&quot;x&quot;:78,&quot;y&quot;:593,&quot;w&quot;:111,&quot;h&quot;:18,&quot;abs_x&quot;:612,&quot;abs_y&quot;:1444}\" href=\"https://www.thegioididong.com/laptop/apple-macbook-air-m2-2022\" rel=\"dofollow\" target=\"_blank\">Macbook Air M2</a>&nbsp;v&agrave;&nbsp;<a bis_size=\"{&quot;x&quot;:212,&quot;y&quot;:593,&quot;w&quot;:112,&quot;h&quot;:18,&quot;abs_x&quot;:746,&quot;abs_y&quot;:1444}\" href=\"https://www.thegioididong.com/laptop/apple-macbook-pro-13-inch-m2-2022\" rel=\"dofollow\" target=\"_blank\">Macbook Pro M2</a>, MacBook Pro M3 Series (<a bis_size=\"{&quot;x&quot;:175,&quot;y&quot;:611,&quot;w&quot;:115,&quot;h&quot;:18,&quot;abs_x&quot;:709,&quot;abs_y&quot;:1462}\" href=\"https://www.thegioididong.com/laptop-apple-macbook-macbook-pro-m3\" rel=\"dofollow\" target=\"_blank\" title=\"MacBook Pro M3\">MacBook Pro M3</a>,&nbsp;<a bis_size=\"{&quot;x&quot;:8,&quot;y&quot;:611,&quot;w&quot;:354,&quot;h&quot;:37,&quot;abs_x&quot;:542,&quot;abs_y&quot;:1462}\" href=\"https://www.thegioididong.com/laptop/apple-macbook-pro-14-inch-m3-pro-2023\" rel=\"dofollow\" target=\"_blank\" title=\"MacBook Pro M3 Pro\">MacBook Pro M3 Pro</a>,&nbsp;<a bis_size=\"{&quot;x&quot;:90,&quot;y&quot;:630,&quot;w&quot;:148,&quot;h&quot;:18,&quot;abs_x&quot;:624,&quot;abs_y&quot;:1481}\" href=\"https://www.thegioididong.com/laptop/apple-macbook-pro-16-inch-m3-max-2023-14-core\" rel=\"dofollow\" target=\"_blank\" title=\"MacBook Pro M3 Max\">MacBook Pro M3 Max</a>) gi&aacute; rẻ, ch&iacute;nh h&atilde;ng, nhiều ưu đ&atilde;i hấp dẫn:</p>\r\n\r\n<ul bis_size=\"{&quot;x&quot;:8,&quot;y&quot;:683,&quot;w&quot;:365,&quot;h&quot;:74,&quot;abs_x&quot;:542,&quot;abs_y&quot;:1534}\">\r\n	<li bis_size=\"{&quot;x&quot;:48,&quot;y&quot;:683,&quot;w&quot;:325,&quot;h&quot;:37,&quot;abs_x&quot;:582,&quot;abs_y&quot;:1534}\"><a bis_size=\"{&quot;x&quot;:48,&quot;y&quot;:683,&quot;w&quot;:306,&quot;h&quot;:37,&quot;abs_x&quot;:582,&quot;abs_y&quot;:1534}\" href=\"https://www.thegioididong.com/hoi-dap/danh-gia-macbook-air-m2-2022-8gb-512gb-chiec-laptop-khung-1438987\" rel=\"dofollow\" target=\"_blank\">Đ&aacute;nh gi&aacute; MacBook Air M2 2022 8GB/512GB - Chiếc laptop khủng nh&agrave; Apple</a></li>\r\n	<li bis_size=\"{&quot;x&quot;:48,&quot;y&quot;:720,&quot;w&quot;:325,&quot;h&quot;:37,&quot;abs_x&quot;:582,&quot;abs_y&quot;:1571}\"><a bis_size=\"{&quot;x&quot;:48,&quot;y&quot;:720,&quot;w&quot;:307,&quot;h&quot;:37,&quot;abs_x&quot;:582,&quot;abs_y&quot;:1571}\" href=\"https://www.thegioididong.com/hoi-dap/danh-gia-macbook-pro-m2-2022-8gb-512gb-lieu-co-dang-de-1438989\" rel=\"dofollow\" target=\"_blank\">Đ&aacute;nh gi&aacute; MacBook Pro M2 2022 8GB/512GB - Liệu c&oacute; đ&aacute;ng để n&acirc;ng cấp</a></li>\r\n</ul>\r\n\r\n<p bis_size=\"{&quot;x&quot;:8,&quot;y&quot;:773,&quot;w&quot;:365,&quot;h&quot;:3,&quot;abs_x&quot;:542,&quot;abs_y&quot;:1624}\"><iframe height=\"0\" id=\"ads-place-2033553\" sandbox=\"\" scrolling=\"no\" src=\"javascript:if(typeof(admSspPageRg)!=\'undefined\'){admSspPageRg.draw(2033553);}else{parent.admSspPageRg.draw(2033553);}\" width=\"0\"></iframe></p>\r\n\r\n<h3 bis_size=\"{&quot;x&quot;:8,&quot;y&quot;:795,&quot;w&quot;:365,&quot;h&quot;:21,&quot;abs_x&quot;:542,&quot;abs_y&quot;:1646}\"><strong bis_size=\"{&quot;x&quot;:8,&quot;y&quot;:795,&quot;w&quot;:337,&quot;h&quot;:21,&quot;abs_x&quot;:542,&quot;abs_y&quot;:1646}\">2. Hướng dẫn g&otilde; tiếng Việt tr&ecirc;n MacBook</strong></h3>\r\n\r\n<p bis_size=\"{&quot;x&quot;:8,&quot;y&quot;:835,&quot;w&quot;:365,&quot;h&quot;:74,&quot;abs_x&quot;:542,&quot;abs_y&quot;:1686}\">Đối với người Việt Nam th&igrave; việc g&otilde; tiếng Việt l&agrave; một nhu cầu cơ bản. Nếu bạn vẫn đang loay hoay chưa biết thiết lập g&otilde; tiếng Việt như thế n&agrave;o tr&ecirc;n Macbook th&igrave; h&atilde;y tham khảo ngay hướng dẫn nh&eacute;!</p>\r\n\r\n<p bis_size=\"{&quot;x&quot;:8,&quot;y&quot;:925,&quot;w&quot;:365,&quot;h&quot;:92,&quot;abs_x&quot;:542,&quot;abs_y&quot;:1776}\"><strong bis_size=\"{&quot;x&quot;:8,&quot;y&quot;:925,&quot;w&quot;:126,&quot;h&quot;:18,&quot;abs_x&quot;:542,&quot;abs_y&quot;:1776}\">Hướng dẫn nhanh</strong>: Chọn biểu tượng&nbsp;<strong bis_size=\"{&quot;x&quot;:256,&quot;y&quot;:925,&quot;w&quot;:44,&quot;h&quot;:18,&quot;abs_x&quot;:790,&quot;abs_y&quot;:1776}\">Apple&nbsp;</strong>&gt; Chọn&nbsp;<strong bis_size=\"{&quot;x&quot;:46,&quot;y&quot;:943,&quot;w&quot;:132,&quot;h&quot;:18,&quot;abs_x&quot;:580,&quot;abs_y&quot;:1794}\">System Preferences</strong>&nbsp;&gt; Chọn&nbsp;<strong bis_size=\"{&quot;x&quot;:234,&quot;y&quot;:943,&quot;w&quot;:72,&quot;h&quot;:18,&quot;abs_x&quot;:768,&quot;abs_y&quot;:1794}\">Keyboard&nbsp;</strong>&gt; Nhấp v&agrave;o&nbsp;<strong bis_size=\"{&quot;x&quot;:35,&quot;y&quot;:962,&quot;w&quot;:106,&quot;h&quot;:18,&quot;abs_x&quot;:569,&quot;abs_y&quot;:1813}\">Input Sourrces&nbsp;</strong>rồi chọn v&agrave;o dấu &quot;<strong bis_size=\"{&quot;x&quot;:263,&quot;y&quot;:962,&quot;w&quot;:9,&quot;h&quot;:18,&quot;abs_x&quot;:797,&quot;abs_y&quot;:1813}\">+</strong>&quot; để th&ecirc;m c&aacute;ch thức g&otilde; tiếng Việt &gt; Nhập&nbsp;<strong bis_size=\"{&quot;x&quot;:179,&quot;y&quot;:980,&quot;w&quot;:82,&quot;h&quot;:18,&quot;abs_x&quot;:713,&quot;abs_y&quot;:1831}\">Vietnamese&nbsp;</strong>trong khung t&igrave;m kiếm &gt;<strong bis_size=\"{&quot;x&quot;:54,&quot;y&quot;:999,&quot;w&quot;:98,&quot;h&quot;:18,&quot;abs_x&quot;:588,&quot;abs_y&quot;:1850}\">&nbsp;Chọn kiểu g&otilde;&nbsp;</strong>v&agrave; chọn&nbsp;<strong bis_size=\"{&quot;x&quot;:207,&quot;y&quot;:999,&quot;w&quot;:29,&quot;h&quot;:18,&quot;abs_x&quot;:741,&quot;abs_y&quot;:1850}\">Add</strong>.</p>\r\n\r\n<p bis_size=\"{&quot;x&quot;:8,&quot;y&quot;:1033,&quot;w&quot;:365,&quot;h&quot;:37,&quot;abs_x&quot;:542,&quot;abs_y&quot;:1884}\">Xem hướng dẫn chi tiết tại b&agrave;i viết:&nbsp;<a bis_size=\"{&quot;x&quot;:8,&quot;y&quot;:1033,&quot;w&quot;:361,&quot;h&quot;:37,&quot;abs_x&quot;:542,&quot;abs_y&quot;:1884}\" href=\"https://www.thegioididong.com/hoi-dap/huong-dan-cach-go-tieng-viet-tren-macbook-1057677\" rel=\"dofollow\" target=\"_blank\">Hướng dẫn c&aacute;ch g&otilde; tiếng Việt tr&ecirc;n Macbook</a>.</p>\r\n\r\n<p bis_size=\"{&quot;x&quot;:8,&quot;y&quot;:1086,&quot;w&quot;:365,&quot;h&quot;:82,&quot;abs_x&quot;:542,&quot;abs_y&quot;:1937}\"><img alt=\"Cài đặt gõ tiếng Việt\" bis_size=\"{&quot;x&quot;:135,&quot;y&quot;:1086,&quot;w&quot;:109,&quot;h&quot;:82,&quot;abs_x&quot;:669,&quot;abs_y&quot;:1937}\" src=\"//cdn.tgdd.vn/hoi-dap/889986/huong-dan-su-dung-macbook-cho-nguoi-moi ( (2)-800x600.jpg\" title=\"Cài đặt gõ tiếng Việt\" /></p>\r\n\r\n<p bis_size=\"{&quot;x&quot;:8,&quot;y&quot;:1184,&quot;w&quot;:365,&quot;h&quot;:18,&quot;abs_x&quot;:542,&quot;abs_y&quot;:2035}\">C&agrave;i đặt g&otilde; tiếng Việt</p>\r\n\r\n<p bis_size=\"{&quot;x&quot;:8,&quot;y&quot;:1219,&quot;w&quot;:365,&quot;h&quot;:3,&quot;abs_x&quot;:542,&quot;abs_y&quot;:2070}\"><iframe height=\"0\" id=\"ads-place-2033554\" sandbox=\"\" scrolling=\"no\" src=\"javascript:if(typeof(admSspPageRg)!=\'undefined\'){admSspPageRg.draw(2033554);}else{parent.admSspPageRg.draw(2033554);}\" width=\"0\"></iframe></p>\r\n\r\n<h3 bis_size=\"{&quot;x&quot;:8,&quot;y&quot;:1241,&quot;w&quot;:365,&quot;h&quot;:43,&quot;abs_x&quot;:542,&quot;abs_y&quot;:2092}\"><strong bis_size=\"{&quot;x&quot;:8,&quot;y&quot;:1241,&quot;w&quot;:364,&quot;h&quot;:43,&quot;abs_x&quot;:542,&quot;abs_y&quot;:2092}\">3. Tổng hợp c&aacute;c tổ hợp ph&iacute;m th&ocirc;ng dụng tr&ecirc;n MacBook</strong></h3>\r\n\r\n<p bis_size=\"{&quot;x&quot;:8,&quot;y&quot;:1302,&quot;w&quot;:365,&quot;h&quot;:74,&quot;abs_x&quot;:542,&quot;abs_y&quot;:2153}\">C&aacute;c ph&iacute;m tổ hợp ph&iacute;m sẽ gi&uacute;p bạn thao t&aacute;c, sử dụng m&aacute;y t&iacute;nh được nhanh ch&oacute;ng hơn. Đối với MacBook cũng vậy, nh&agrave; t&aacute;o cũng tạo ra những tổ hợp ph&iacute;m để hỗ trợ người d&ugrave;ng. Bạn c&oacute; thể sử dụng ph&iacute;m tắt để:</p>\r\n\r\n<p bis_size=\"{&quot;x&quot;:8,&quot;y&quot;:1392,&quot;w&quot;:365,&quot;h&quot;:18,&quot;abs_x&quot;:542,&quot;abs_y&quot;:2243}\"><strong bis_size=\"{&quot;x&quot;:8,&quot;y&quot;:1392,&quot;w&quot;:312,&quot;h&quot;:18,&quot;abs_x&quot;:542,&quot;abs_y&quot;:2243}\">- Ph&iacute;m tắt khi sử dụng tr&igrave;nh duyệt web Safari</strong>:</p>\r\n\r\n<p bis_size=\"{&quot;x&quot;:8,&quot;y&quot;:1427,&quot;w&quot;:365,&quot;h&quot;:18,&quot;abs_x&quot;:542,&quot;abs_y&quot;:2278}\">+ Command + T : Mở trang tab duyệt web mới.</p>\r\n\r\n<p bis_size=\"{&quot;x&quot;:8,&quot;y&quot;:1461,&quot;w&quot;:365,&quot;h&quot;:18,&quot;abs_x&quot;:542,&quot;abs_y&quot;:2312}\">+ Command + Shift + T : Mở lại tab bạn vừa đ&oacute;ng.</p>\r\n\r\n<p bis_size=\"{&quot;x&quot;:8,&quot;y&quot;:1496,&quot;w&quot;:365,&quot;h&quot;:18,&quot;abs_x&quot;:542,&quot;abs_y&quot;:2347}\">+ Command + Shift + N: Mở trang tab ẩn danh mới.</p>\r\n\r\n<p bis_size=\"{&quot;x&quot;:8,&quot;y&quot;:1530,&quot;w&quot;:365,&quot;h&quot;:18,&quot;abs_x&quot;:542,&quot;abs_y&quot;:2381}\"><strong bis_size=\"{&quot;x&quot;:8,&quot;y&quot;:1530,&quot;w&quot;:314,&quot;h&quot;:18,&quot;abs_x&quot;:542,&quot;abs_y&quot;:2381}\">- C&aacute;c ph&iacute;m tắt sử dụng để chụp ảnh m&agrave;n h&igrave;nh</strong>:</p>\r\n\r\n<p bis_size=\"{&quot;x&quot;:8,&quot;y&quot;:1565,&quot;w&quot;:365,&quot;h&quot;:37,&quot;abs_x&quot;:542,&quot;abs_y&quot;:2416}\">+ Command + Shift + 3: Chụp to&agrave;n m&agrave;n h&igrave;nh của m&aacute;y hiện tại.</p>\r\n\r\n<p bis_size=\"{&quot;x&quot;:8,&quot;y&quot;:1618,&quot;w&quot;:365,&quot;h&quot;:18,&quot;abs_x&quot;:542,&quot;abs_y&quot;:2469}\">+ Command + Shift + 4: Chụp m&agrave;n h&igrave;nh theo v&ugrave;ng.</p>\r\n\r\n<p bis_size=\"{&quot;x&quot;:8,&quot;y&quot;:1652,&quot;w&quot;:365,&quot;h&quot;:37,&quot;abs_x&quot;:542,&quot;abs_y&quot;:2503}\">+ Command + Shift + 4 + Ph&iacute;m c&aacute;ch : Chụp ảnh m&agrave;n h&igrave;nh theo cửa sổ ứng dụng.</p>\r\n\r\n<p bis_size=\"{&quot;x&quot;:8,&quot;y&quot;:1705,&quot;w&quot;:365,&quot;h&quot;:18,&quot;abs_x&quot;:542,&quot;abs_y&quot;:2556}\"><strong bis_size=\"{&quot;x&quot;:8,&quot;y&quot;:1705,&quot;w&quot;:265,&quot;h&quot;:18,&quot;abs_x&quot;:542,&quot;abs_y&quot;:2556}\">- C&aacute;ch thao t&aacute;c nhanh t&iacute;nh năng Room</strong>:</p>\r\n\r\n<p bis_size=\"{&quot;x&quot;:8,&quot;y&quot;:1740,&quot;w&quot;:365,&quot;h&quot;:18,&quot;abs_x&quot;:542,&quot;abs_y&quot;:2591}\">+ Command + Option + 8: Ph&oacute;ng to nhanh m&agrave;n h&igrave;nh.</p>\r\n\r\n<p bis_size=\"{&quot;x&quot;:8,&quot;y&quot;:1774,&quot;w&quot;:365,&quot;h&quot;:37,&quot;abs_x&quot;:542,&quot;abs_y&quot;:2625}\">+ Command + Option + Plus Key: Ph&oacute;ng to m&agrave;n h&igrave;nh t&ugrave;y v&agrave;o mức độ m&agrave; bạn muốn.</p>\r\n\r\n<p bis_size=\"{&quot;x&quot;:8,&quot;y&quot;:1827,&quot;w&quot;:365,&quot;h&quot;:61,&quot;abs_x&quot;:542,&quot;abs_y&quot;:2678}\"><img alt=\" Tổ hợp phím thông dụng trên MacBook\" bis_size=\"{&quot;x&quot;:135,&quot;y&quot;:1827,&quot;w&quot;:109,&quot;h&quot;:61,&quot;abs_x&quot;:669,&quot;abs_y&quot;:2678}\" src=\"//cdn.tgdd.vn/hoi-dap/889986/huong-dan-su-dung-macbook-cho-nguoi-moi ( (3)-800x450.jpg\" title=\" Tổ hợp phím thông dụng trên MacBook\" /></p>\r\n\r\n<p bis_size=\"{&quot;x&quot;:8,&quot;y&quot;:1905,&quot;w&quot;:365,&quot;h&quot;:18,&quot;abs_x&quot;:542,&quot;abs_y&quot;:2756}\">Tổ hợp ph&iacute;m th&ocirc;ng dụng tr&ecirc;n MacBook</p>\r\n\r\n<p bis_size=\"{&quot;x&quot;:8,&quot;y&quot;:1939,&quot;w&quot;:365,&quot;h&quot;:18,&quot;abs_x&quot;:542,&quot;abs_y&quot;:2790}\"><strong bis_size=\"{&quot;x&quot;:8,&quot;y&quot;:1939,&quot;w&quot;:216,&quot;h&quot;:18,&quot;abs_x&quot;:542,&quot;abs_y&quot;:2790}\">- C&aacute;c ph&iacute;m tắt th&ocirc;ng dụng kh&aacute;c</strong>:</p>\r\n\r\n<p bis_size=\"{&quot;x&quot;:8,&quot;y&quot;:1974,&quot;w&quot;:365,&quot;h&quot;:37,&quot;abs_x&quot;:542,&quot;abs_y&quot;:2825}\">+ Option + Delete: Xo&aacute; một từ gần nhất khi bạn đang nhập liệu.</p>\r\n\r\n<p bis_size=\"{&quot;x&quot;:8,&quot;y&quot;:2027,&quot;w&quot;:365,&quot;h&quot;:37,&quot;abs_x&quot;:542,&quot;abs_y&quot;:2878}\">+ Shift + Option+ Ph&iacute;m mũi t&ecirc;n tr&aacute;i/phải: Chọn nhanh (b&ocirc;i đen) từng từ.</p>\r\n\r\n<p bis_size=\"{&quot;x&quot;:8,&quot;y&quot;:2080,&quot;w&quot;:365,&quot;h&quot;:18,&quot;abs_x&quot;:542,&quot;abs_y&quot;:2931}\">+ Command +H: Ẩn cửa sổ bạn đang mở.</p>\r\n\r\n<p bis_size=\"{&quot;x&quot;:8,&quot;y&quot;:2114,&quot;w&quot;:365,&quot;h&quot;:37,&quot;abs_x&quot;:542,&quot;abs_y&quot;:2965}\">Xem hướng dẫn chi tiết tại b&agrave;i viết:&nbsp;<a bis_size=\"{&quot;x&quot;:8,&quot;y&quot;:2114,&quot;w&quot;:340,&quot;h&quot;:37,&quot;abs_x&quot;:542,&quot;abs_y&quot;:2965}\" href=\"https://www.thegioididong.com/hoi-dap/tong-hop-cac-to-hop-phim-thong-dung-tren-mac-os-839773\" rel=\"dofollow\" target=\"_blank\">Tổng hợp c&aacute;c tổ hợp ph&iacute;m th&ocirc;ng dụng tr&ecirc;n MAC OS</a>.</p>\r\n\r\n<h3 bis_size=\"{&quot;x&quot;:8,&quot;y&quot;:2170,&quot;w&quot;:365,&quot;h&quot;:43,&quot;abs_x&quot;:542,&quot;abs_y&quot;:3021}\"><strong bis_size=\"{&quot;x&quot;:8,&quot;y&quot;:2170,&quot;w&quot;:356,&quot;h&quot;:43,&quot;abs_x&quot;:542,&quot;abs_y&quot;:3021}\">4. Hướng dẫn thiết lập ph&iacute;m tắt kh&oacute;a nhanh m&agrave;n h&igrave;nh tr&ecirc;n MacBook</strong></h3>\r\n\r\n<p bis_size=\"{&quot;x&quot;:8,&quot;y&quot;:2232,&quot;w&quot;:365,&quot;h&quot;:92,&quot;abs_x&quot;:542,&quot;abs_y&quot;:3083}\">Đ&acirc;y sẽ l&agrave; hướng dẫn hữu &iacute;ch trong c&aacute;c trường hợp bạn đang gấp r&uacute;t đi ra ngo&agrave;i hoặc c&oacute; vi&ecirc;c cần kh&oacute;a nhanh m&agrave;n h&igrave;nh. Việc kh&oacute;a nhanh m&agrave;n h&igrave;nh n&agrave;y sẽ gi&uacute;p người d&ugrave;ng bảo vệ th&ocirc;ng tin m&aacute;y t&iacute;nh trong bất kỳ trường hợp n&agrave;o d&ugrave; l&agrave; nguy cấp nhất.</p>\r\n\r\n<p bis_size=\"{&quot;x&quot;:8,&quot;y&quot;:2340,&quot;w&quot;:365,&quot;h&quot;:166,&quot;abs_x&quot;:542,&quot;abs_y&quot;:3191}\"><strong bis_size=\"{&quot;x&quot;:8,&quot;y&quot;:2340,&quot;w&quot;:126,&quot;h&quot;:18,&quot;abs_x&quot;:542,&quot;abs_y&quot;:3191}\">Hướng dẫn nhanh</strong>: Chọn&nbsp;<strong bis_size=\"{&quot;x&quot;:181,&quot;y&quot;:2340,&quot;w&quot;:82,&quot;h&quot;:18,&quot;abs_x&quot;:715,&quot;abs_y&quot;:3191}\">Launchpad&nbsp;</strong>&gt; Chọn mục&nbsp;<strong bis_size=\"{&quot;x&quot;:39,&quot;y&quot;:2359,&quot;w&quot;:51,&quot;h&quot;:18,&quot;abs_x&quot;:573,&quot;abs_y&quot;:3210}\">Others&nbsp;</strong>&gt; Chọn<strong bis_size=\"{&quot;x&quot;:138,&quot;y&quot;:2359,&quot;w&quot;:112,&quot;h&quot;:18,&quot;abs_x&quot;:672,&quot;abs_y&quot;:3210}\">&nbsp;app Automator&nbsp;</strong>&gt; Chọn mục&nbsp;<strong bis_size=\"{&quot;x&quot;:39,&quot;y&quot;:2377,&quot;w&quot;:59,&quot;h&quot;:18,&quot;abs_x&quot;:573,&quot;abs_y&quot;:3228}\">Serviecs&nbsp;</strong>&gt; Chọn&nbsp;<strong bis_size=\"{&quot;x&quot;:151,&quot;y&quot;:2377,&quot;w&quot;:57,&quot;h&quot;:18,&quot;abs_x&quot;:685,&quot;abs_y&quot;:3228}\">Utilities&nbsp;</strong>&gt;&nbsp;<strong bis_size=\"{&quot;x&quot;:8,&quot;y&quot;:2377,&quot;w&quot;:280,&quot;h&quot;:37,&quot;abs_x&quot;:542,&quot;abs_y&quot;:3228}\">Nh&aacute;y đ&uacute;p chuột</strong>&nbsp;v&agrave;o&nbsp;<strong bis_size=\"{&quot;x&quot;:77,&quot;y&quot;:2396,&quot;w&quot;:112,&quot;h&quot;:18,&quot;abs_x&quot;:611,&quot;abs_y&quot;:3247}\">Run Shell Script</strong>&nbsp;&gt; Chọn&nbsp;<strong bis_size=\"{&quot;x&quot;:245,&quot;y&quot;:2396,&quot;w&quot;:63,&quot;h&quot;:18,&quot;abs_x&quot;:779,&quot;abs_y&quot;:3247}\">no Input&nbsp;</strong>&gt; Nhập d&ograve;ng lệnh &quot;<strong bis_size=\"{&quot;x&quot;:8,&quot;y&quot;:2414,&quot;w&quot;:358,&quot;h&quot;:55,&quot;abs_x&quot;:542,&quot;abs_y&quot;:3265}\">/System/Library/CoreServices/&quot;Menu Extras&quot;/User.menu/Contents/Resources/CGSession -suspend</strong>&quot; v&agrave;o khung b&ecirc;n phải &gt;&nbsp;<strong bis_size=\"{&quot;x&quot;:216,&quot;y&quot;:2451,&quot;w&quot;:76,&quot;h&quot;:18,&quot;abs_x&quot;:750,&quot;abs_y&quot;:3302}\">Command&nbsp;</strong>+<strong bis_size=\"{&quot;x&quot;:301,&quot;y&quot;:2451,&quot;w&quot;:8,&quot;h&quot;:18,&quot;abs_x&quot;:835,&quot;abs_y&quot;:3302}\">S</strong>&nbsp;&gt; Chọn&nbsp;<strong bis_size=\"{&quot;x&quot;:46,&quot;y&quot;:2470,&quot;w&quot;:36,&quot;h&quot;:18,&quot;abs_x&quot;:580,&quot;abs_y&quot;:3321}\">Save&nbsp;</strong>&gt; Tại mục&nbsp;<strong bis_size=\"{&quot;x&quot;:152,&quot;y&quot;:2470,&quot;w&quot;:112,&quot;h&quot;:18,&quot;abs_x&quot;:686,&quot;abs_y&quot;:3321}\">Save Services As</strong>&nbsp;<strong bis_size=\"{&quot;x&quot;:269,&quot;y&quot;:2470,&quot;w&quot;:80,&quot;h&quot;:18,&quot;abs_x&quot;:803,&quot;abs_y&quot;:3321}\">đặt t&ecirc;n lệnh</strong>&nbsp;đễ dễ nhớ.</p>\r\n\r\n<p bis_size=\"{&quot;x&quot;:8,&quot;y&quot;:2523,&quot;w&quot;:365,&quot;h&quot;:37,&quot;abs_x&quot;:542,&quot;abs_y&quot;:3374}\">Xem hướng dẫn chi tiết tại b&agrave;i viết:&nbsp;<a bis_size=\"{&quot;x&quot;:8,&quot;y&quot;:2523,&quot;w&quot;:342,&quot;h&quot;:37,&quot;abs_x&quot;:542,&quot;abs_y&quot;:3374}\" href=\"https://www.thegioididong.com/hoi-dap/huong-dan-thiet-lap-phim-tat-khoa-nhanh-man-hinh-t-840261\" rel=\"dofollow\" target=\"_blank\">Hướng dẫn thiết lập ph&iacute;m tắt kh&oacute;a nhanh m&agrave;n h&igrave;nh tr&ecirc;n MAC OS</a>.</p>\r\n\r\n<p bis_size=\"{&quot;x&quot;:8,&quot;y&quot;:2576,&quot;w&quot;:365,&quot;h&quot;:49,&quot;abs_x&quot;:542,&quot;abs_y&quot;:3427}\"><img alt=\"Khóa nhanh màn hình Macbook\" bis_size=\"{&quot;x&quot;:135,&quot;y&quot;:2576,&quot;w&quot;:109,&quot;h&quot;:49,&quot;abs_x&quot;:669,&quot;abs_y&quot;:3427}\" src=\"//cdn.tgdd.vn/hoi-dap/889986/huong-dan-su-dung-macbook-cho-nguoi-moi ( (4)-800x362.jpg\" title=\"Khóa nhanh màn hình Macbook\" /></p>\r\n\r\n<p bis_size=\"{&quot;x&quot;:8,&quot;y&quot;:2641,&quot;w&quot;:365,&quot;h&quot;:18,&quot;abs_x&quot;:542,&quot;abs_y&quot;:3492}\">Kh&oacute;a nhanh m&agrave;n h&igrave;nh Macbook</p>\r\n\r\n<h3 bis_size=\"{&quot;x&quot;:8,&quot;y&quot;:2679,&quot;w&quot;:365,&quot;h&quot;:21,&quot;abs_x&quot;:542,&quot;abs_y&quot;:3530}\"><strong bis_size=\"{&quot;x&quot;:8,&quot;y&quot;:2679,&quot;w&quot;:326,&quot;h&quot;:21,&quot;abs_x&quot;:542,&quot;abs_y&quot;:3530}\">5. Hướng dẫn giải n&eacute;n file tr&ecirc;n MacBook</strong></h3>\r\n\r\n<p bis_size=\"{&quot;x&quot;:8,&quot;y&quot;:2719,&quot;w&quot;:365,&quot;h&quot;:111,&quot;abs_x&quot;:542,&quot;abs_y&quot;:3570}\">Để tiện cho việc chia sẻ, di chuyển dữ liệu người d&ugrave;ng hay n&eacute;n c&aacute;c tệp lại để giảm dung lượng file, tăng tốc độ truyền, bảo mật tốt hơn,... Vậy nếu bạn nhận được một tệp n&eacute;n từ người kh&aacute;c nhưng vẫn chưa biết mở th&igrave; phải l&agrave;m thế n&agrave;o? Xem hướng dẫn b&ecirc;n dưới để xem c&aacute;ch giải n&eacute;n nh&eacute;!</p>\r\n\r\n<p bis_size=\"{&quot;x&quot;:8,&quot;y&quot;:2846,&quot;w&quot;:365,&quot;h&quot;:92,&quot;abs_x&quot;:542,&quot;abs_y&quot;:3697}\"><strong bis_size=\"{&quot;x&quot;:8,&quot;y&quot;:2846,&quot;w&quot;:126,&quot;h&quot;:18,&quot;abs_x&quot;:542,&quot;abs_y&quot;:3697}\">Hướng dẫn nhanh</strong>: V&agrave;o<strong bis_size=\"{&quot;x&quot;:169,&quot;y&quot;:2846,&quot;w&quot;:77,&quot;h&quot;:18,&quot;abs_x&quot;:703,&quot;abs_y&quot;:3697}\">&nbsp;App Store&nbsp;</strong>&gt; Tải phần mềm giải n&eacute;n&nbsp;<strong bis_size=\"{&quot;x&quot;:63,&quot;y&quot;:2864,&quot;w&quot;:112,&quot;h&quot;:18,&quot;abs_x&quot;:597,&quot;abs_y&quot;:3715}\">The Unarchiver&nbsp;</strong>&gt;<strong bis_size=\"{&quot;x&quot;:8,&quot;y&quot;:2864,&quot;w&quot;:300,&quot;h&quot;:37,&quot;abs_x&quot;:542,&quot;abs_y&quot;:3715}\">&nbsp;Chọn file cần giải n&eacute;n</strong>&nbsp;&gt;<strong bis_size=\"{&quot;x&quot;:45,&quot;y&quot;:2883,&quot;w&quot;:122,&quot;h&quot;:18,&quot;abs_x&quot;:579,&quot;abs_y&quot;:3734}\">&nbsp;Nhấn chuột phải&nbsp;</strong>chọn<strong bis_size=\"{&quot;x&quot;:199,&quot;y&quot;:2883,&quot;w&quot;:97,&quot;h&quot;:18,&quot;abs_x&quot;:733,&quot;abs_y&quot;:3734}\">&nbsp;Lấy th&ocirc;ng tin</strong>&nbsp;&gt; Tại mục Mở bằng chọn ứng dụng mặc định l&agrave;<strong bis_size=\"{&quot;x&quot;:245,&quot;y&quot;:2901,&quot;w&quot;:112,&quot;h&quot;:18,&quot;abs_x&quot;:779,&quot;abs_y&quot;:3752}\">&nbsp;The Unarchiver</strong>&nbsp;&gt; Chọn v&agrave;o&nbsp;<strong bis_size=\"{&quot;x&quot;:73,&quot;y&quot;:2920,&quot;w&quot;:103,&quot;h&quot;:18,&quot;abs_x&quot;:607,&quot;abs_y&quot;:3771}\">Thay đổi tất cả</strong>.</p>\r\n\r\n<p bis_size=\"{&quot;x&quot;:8,&quot;y&quot;:2954,&quot;w&quot;:365,&quot;h&quot;:37,&quot;abs_x&quot;:542,&quot;abs_y&quot;:3805}\">Xem hướng dẫn chi tiết tại b&agrave;i viết:&nbsp;<a bis_size=\"{&quot;x&quot;:8,&quot;y&quot;:2954,&quot;w&quot;:347,&quot;h&quot;:37,&quot;abs_x&quot;:542,&quot;abs_y&quot;:3805}\" href=\"https://www.thegioididong.com/hoi-dap/huong-dan-giai-nen-file-tren-mac-os-839947\" rel=\"dofollow\" target=\"_blank\">[Video] C&aacute;ch n&eacute;n v&agrave; giải n&eacute;n c&aacute;c tệp, thư mục tr&ecirc;n MacBook đơn giản</a>.</p>\r\n\r\n<p bis_size=\"{&quot;x&quot;:8,&quot;y&quot;:3007,&quot;w&quot;:365,&quot;h&quot;:63,&quot;abs_x&quot;:542,&quot;abs_y&quot;:3858}\"><img alt=\"Giải nén file trên MacBook\" bis_size=\"{&quot;x&quot;:135,&quot;y&quot;:3007,&quot;w&quot;:109,&quot;h&quot;:63,&quot;abs_x&quot;:669,&quot;abs_y&quot;:3858}\" src=\"//cdn.tgdd.vn/hoi-dap/889986/huong-dan-su-dung-macbook-cho-nguoi-moi ( (5)-800x466.jpg\" title=\"Giải nén file trên MacBook\" /></p>\r\n\r\n<p bis_size=\"{&quot;x&quot;:8,&quot;y&quot;:3087,&quot;w&quot;:365,&quot;h&quot;:18,&quot;abs_x&quot;:542,&quot;abs_y&quot;:3938}\">Giải n&eacute;n file tr&ecirc;n MacBook</p>\r\n\r\n<p bis_size=\"{&quot;x&quot;:8,&quot;y&quot;:3122,&quot;w&quot;:365,&quot;h&quot;:55,&quot;abs_x&quot;:542,&quot;abs_y&quot;:3973}\"><strong bis_size=\"{&quot;x&quot;:8,&quot;y&quot;:3122,&quot;w&quot;:86,&quot;h&quot;:18,&quot;abs_x&quot;:542,&quot;abs_y&quot;:3973}\">XEM NGAY</strong>&nbsp;c&aacute;c chương tr&igrave;nh khuyến m&atilde;i hấp dẫn, c&aacute;c m&atilde; giảm gi&aacute;, m&atilde; khuyến m&atilde;i HOT tại Thế Giới Di Động:</p>\r\n\r\n<ul bis_size=\"{&quot;x&quot;:8,&quot;y&quot;:3193,&quot;w&quot;:365,&quot;h&quot;:74,&quot;abs_x&quot;:542,&quot;abs_y&quot;:4044}\">\r\n	<li bis_size=\"{&quot;x&quot;:48,&quot;y&quot;:3193,&quot;w&quot;:325,&quot;h&quot;:37,&quot;abs_x&quot;:582,&quot;abs_y&quot;:4044}\"><a bis_size=\"{&quot;x&quot;:48,&quot;y&quot;:3193,&quot;w&quot;:302,&quot;h&quot;:37,&quot;abs_x&quot;:582,&quot;abs_y&quot;:4044}\" href=\"https://www.thegioididong.com/hoi-dap/tong-hop-khuyen-mai-hap-dan-thang-6-2022-danh-cho-1426824\" rel=\"dofollow\" target=\"_blank\">Tổng hợp khuyến m&atilde;i hấp dẫn d&agrave;nh cho tất cả ng&agrave;nh h&agrave;ng</a></li>\r\n	<li bis_size=\"{&quot;x&quot;:48,&quot;y&quot;:3230,&quot;w&quot;:325,&quot;h&quot;:37,&quot;abs_x&quot;:582,&quot;abs_y&quot;:4081}\"><a bis_size=\"{&quot;x&quot;:48,&quot;y&quot;:3230,&quot;w&quot;:324,&quot;h&quot;:37,&quot;abs_x&quot;:582,&quot;abs_y&quot;:4081}\" href=\"https://www.thegioididong.com/hoi-dap/mua-hang-giam-gia-tong-hop-ma-khuyen-mai-t06-2022-tai-tgdd-1436332\" rel=\"dofollow\" target=\"_blank\">Mua h&agrave;ng giảm gi&aacute; - Tổng hợp m&atilde; khuyến m&atilde;i tại TGDĐ</a></li>\r\n</ul>\r\n\r\n<h3 bis_size=\"{&quot;x&quot;:8,&quot;y&quot;:3286,&quot;w&quot;:365,&quot;h&quot;:43,&quot;abs_x&quot;:542,&quot;abs_y&quot;:4137}\"><strong bis_size=\"{&quot;x&quot;:8,&quot;y&quot;:3286,&quot;w&quot;:309,&quot;h&quot;:43,&quot;abs_x&quot;:542,&quot;abs_y&quot;:4137}\">6. Hướng dẫn hẹn giờ bật tắt m&aacute;y tr&ecirc;n MacBook</strong></h3>\r\n\r\n<p bis_size=\"{&quot;x&quot;:8,&quot;y&quot;:3348,&quot;w&quot;:365,&quot;h&quot;:55,&quot;abs_x&quot;:542,&quot;abs_y&quot;:4199}\">Trong thời gian dịch Covid-19, kh&aacute; nhiều c&aacute;c bạn học sinh tiểu học phải ở nh&agrave; học online. C&aacute;c bố mẹ cũng rất kh&oacute; khăn khi vừa đi l&agrave;m vừa phải tr&ocirc;ng con.</p>\r\n\r\n<p bis_size=\"{&quot;x&quot;:8,&quot;y&quot;:3419,&quot;w&quot;:365,&quot;h&quot;:74,&quot;abs_x&quot;:542,&quot;abs_y&quot;:4270}\">Nếu bạn biết t&iacute;nh năng hẹn giờ bật tắt m&aacute;y tr&ecirc;n MacBook th&igrave; việc tr&ocirc;ng trẻ sẽ trở n&ecirc;n cực dễ d&agrave;ng.&nbsp;<a bis_size=\"{&quot;x&quot;:8,&quot;y&quot;:3438,&quot;w&quot;:359,&quot;h&quot;:37,&quot;abs_x&quot;:542,&quot;abs_y&quot;:4289}\" href=\"https://www.thegioididong.com/laptop\" rel=\"dofollow\" target=\"_blank\">M&aacute;y t&iacute;nh</a>&nbsp;sẽ được mở tắt theo đ&uacute;ng giờ học của c&aacute;c bạn thiếu nhi m&agrave; kh&ocirc;ng lo c&aacute;c bạn d&ugrave;ng m&aacute;y t&iacute;nh qu&aacute; nhiều.</p>\r\n\r\n<p bis_size=\"{&quot;x&quot;:8,&quot;y&quot;:3509,&quot;w&quot;:365,&quot;h&quot;:55,&quot;abs_x&quot;:542,&quot;abs_y&quot;:4360}\"><strong bis_size=\"{&quot;x&quot;:8,&quot;y&quot;:3509,&quot;w&quot;:126,&quot;h&quot;:18,&quot;abs_x&quot;:542,&quot;abs_y&quot;:4360}\">Hướng dẫn nhanh</strong>: Chọn&nbsp;<strong bis_size=\"{&quot;x&quot;:181,&quot;y&quot;:3509,&quot;w&quot;:136,&quot;h&quot;:18,&quot;abs_x&quot;:715,&quot;abs_y&quot;:4360}\">System Preferences&nbsp;</strong>&gt; Chọn&nbsp;<strong bis_size=\"{&quot;x&quot;:46,&quot;y&quot;:3528,&quot;w&quot;:96,&quot;h&quot;:18,&quot;abs_x&quot;:580,&quot;abs_y&quot;:4379}\">Energy Saver&nbsp;</strong>&gt; Chọn&nbsp;<strong bis_size=\"{&quot;x&quot;:195,&quot;y&quot;:3528,&quot;w&quot;:65,&quot;h&quot;:18,&quot;abs_x&quot;:729,&quot;abs_y&quot;:4379}\">Schedule&nbsp;</strong>&gt; T&ugrave;y chỉnh&nbsp;<strong bis_size=\"{&quot;x&quot;:8,&quot;y&quot;:3528,&quot;w&quot;:362,&quot;h&quot;:37,&quot;abs_x&quot;:542,&quot;abs_y&quot;:4379}\">thời gian</strong>,<strong bis_size=\"{&quot;x&quot;:41,&quot;y&quot;:3546,&quot;w&quot;:76,&quot;h&quot;:18,&quot;abs_x&quot;:575,&quot;abs_y&quot;:4397}\">&nbsp;trạng th&aacute;i&nbsp;</strong>&gt; Chọn&nbsp;<strong bis_size=\"{&quot;x&quot;:169,&quot;y&quot;:3546,&quot;w&quot;:21,&quot;h&quot;:18,&quot;abs_x&quot;:703,&quot;abs_y&quot;:4397}\">Ok</strong>.</p>\r\n\r\n<p bis_size=\"{&quot;x&quot;:8,&quot;y&quot;:3581,&quot;w&quot;:365,&quot;h&quot;:82,&quot;abs_x&quot;:542,&quot;abs_y&quot;:4432}\"><img alt=\"Hẹn giờ bật tắt MacBook\" bis_size=\"{&quot;x&quot;:135,&quot;y&quot;:3581,&quot;w&quot;:109,&quot;h&quot;:82,&quot;abs_x&quot;:669,&quot;abs_y&quot;:4432}\" src=\"//cdn.tgdd.vn/hoi-dap/889986/huong-dan-su-dung-macbook-cho-nguoi-moi ( (6)-800x600.jpg\" title=\"Hẹn giờ bật tắt MacBook\" /></p>\r\n\r\n<p bis_size=\"{&quot;x&quot;:8,&quot;y&quot;:3679,&quot;w&quot;:365,&quot;h&quot;:18,&quot;abs_x&quot;:542,&quot;abs_y&quot;:4530}\">Hẹn giờ bật tắt MacBook</p>\r\n\r\n<h3 bis_size=\"{&quot;x&quot;:8,&quot;y&quot;:3716,&quot;w&quot;:365,&quot;h&quot;:43,&quot;abs_x&quot;:542,&quot;abs_y&quot;:4567}\"><strong bis_size=\"{&quot;x&quot;:8,&quot;y&quot;:3716,&quot;w&quot;:352,&quot;h&quot;:43,&quot;abs_x&quot;:542,&quot;abs_y&quot;:4567}\">7. Hướng dẫn xem lại Pass WiFi đ&atilde; lưu tr&ecirc;n MacBook</strong></h3>\r\n\r\n<p bis_size=\"{&quot;x&quot;:8,&quot;y&quot;:3778,&quot;w&quot;:365,&quot;h&quot;:74,&quot;abs_x&quot;:542,&quot;abs_y&quot;:4629}\">Xem lại Pass WiFi cũng l&agrave; một t&iacute;nh năng cơ bản của bất kỳ thiết bị điện tử n&agrave;o gi&uacute;p người d&ugrave;ng dễ d&agrave;ng chia sẻ mật khẩu WiFi hơn. H&atilde;y c&ugrave;ng xem c&aacute;ch xem mật khẩu WiFi tr&ecirc;n MacBook như thế n&agrave;o nh&eacute;!</p>\r\n\r\n<p bis_size=\"{&quot;x&quot;:8,&quot;y&quot;:3868,&quot;w&quot;:365,&quot;h&quot;:111,&quot;abs_x&quot;:542,&quot;abs_y&quot;:4719}\"><strong bis_size=\"{&quot;x&quot;:8,&quot;y&quot;:3868,&quot;w&quot;:126,&quot;h&quot;:18,&quot;abs_x&quot;:542,&quot;abs_y&quot;:4719}\">Hướng dẫn nhanh</strong>: Truy cập&nbsp;<strong bis_size=\"{&quot;x&quot;:203,&quot;y&quot;:3868,&quot;w&quot;:117,&quot;h&quot;:18,&quot;abs_x&quot;:737,&quot;abs_y&quot;:4719}\">Keychain Access&nbsp;</strong>&gt; Chọn&nbsp;<strong bis_size=\"{&quot;x&quot;:46,&quot;y&quot;:3886,&quot;w&quot;:52,&quot;h&quot;:18,&quot;abs_x&quot;:580,&quot;abs_y&quot;:4737}\">System&nbsp;</strong>&gt; Chọn&nbsp;<strong bis_size=\"{&quot;x&quot;:151,&quot;y&quot;:3886,&quot;w&quot;:76,&quot;h&quot;:18,&quot;abs_x&quot;:685,&quot;abs_y&quot;:4737}\">Passwords&nbsp;</strong>&gt;&nbsp;<strong bis_size=\"{&quot;x&quot;:240,&quot;y&quot;:3886,&quot;w&quot;:75,&quot;h&quot;:18,&quot;abs_x&quot;:774,&quot;abs_y&quot;:4737}\">Chọn WiFi</strong>&nbsp;m&agrave; bạn muốn xem &gt; Tick chọn v&agrave;o &ocirc;&nbsp;<strong bis_size=\"{&quot;x&quot;:200,&quot;y&quot;:3905,&quot;w&quot;:106,&quot;h&quot;:18,&quot;abs_x&quot;:734,&quot;abs_y&quot;:4756}\">Show password</strong>&nbsp;&gt;<strong bis_size=\"{&quot;x&quot;:8,&quot;y&quot;:3905,&quot;w&quot;:353,&quot;h&quot;:37,&quot;abs_x&quot;:542,&quot;abs_y&quot;:4756}\">&nbsp;Nhập mật khẩu của Keychain Access&nbsp;</strong>&gt; Chọn&nbsp;<strong bis_size=\"{&quot;x&quot;:274,&quot;y&quot;:3923,&quot;w&quot;:28,&quot;h&quot;:18,&quot;abs_x&quot;:808,&quot;abs_y&quot;:4774}\">OK&nbsp;</strong>&gt; Nhập&nbsp;<strong bis_size=\"{&quot;x&quot;:46,&quot;y&quot;:3942,&quot;w&quot;:25,&quot;h&quot;:18,&quot;abs_x&quot;:580,&quot;abs_y&quot;:4793}\">t&ecirc;n&nbsp;</strong>v&agrave;&nbsp;<strong bis_size=\"{&quot;x&quot;:91,&quot;y&quot;:3942,&quot;w&quot;:134,&quot;h&quot;:18,&quot;abs_x&quot;:625,&quot;abs_y&quot;:4793}\">mật khẩu m&aacute;y t&iacute;nh&nbsp;</strong>của bạn &gt; Chọn&nbsp;<strong bis_size=\"{&quot;x&quot;:46,&quot;y&quot;:3960,&quot;w&quot;:40,&quot;h&quot;:18,&quot;abs_x&quot;:580,&quot;abs_y&quot;:4811}\">Allow</strong>.</p>\r\n\r\n<p bis_size=\"{&quot;x&quot;:8,&quot;y&quot;:3995,&quot;w&quot;:365,&quot;h&quot;:37,&quot;abs_x&quot;:542,&quot;abs_y&quot;:4846}\">Xem hướng dẫn chi tiết tại b&agrave;i viết:&nbsp;<a bis_size=\"{&quot;x&quot;:8,&quot;y&quot;:3995,&quot;w&quot;:352,&quot;h&quot;:37,&quot;abs_x&quot;:542,&quot;abs_y&quot;:4846}\" href=\"https://www.thegioididong.com/hoi-dap/huong-dan-xem-lai-pass-wifi-da-luu-tren-mac-os-845397\" rel=\"dofollow\" target=\"_blank\">C&aacute;ch xem lại Pass (mật khẩu) WiFi đ&atilde; lưu tr&ecirc;n MacBook đơn giản</a>.</p>\r\n\r\n<p bis_size=\"{&quot;x&quot;:8,&quot;y&quot;:4048,&quot;w&quot;:365,&quot;h&quot;:70,&quot;abs_x&quot;:542,&quot;abs_y&quot;:4899}\"><img alt=\"Xem lại Pass WiFi đã lưu\" bis_size=\"{&quot;x&quot;:135,&quot;y&quot;:4048,&quot;w&quot;:109,&quot;h&quot;:70,&quot;abs_x&quot;:669,&quot;abs_y&quot;:4899}\" src=\"//cdn.tgdd.vn/hoi-dap/889986/huong-dan-su-dung-macbook-cho-nguoi-moi ( (7)-800x514.jpg\" title=\"Xem lại Pass WiFi đã lưu\" /></p>\r\n\r\n<p bis_size=\"{&quot;x&quot;:8,&quot;y&quot;:4134,&quot;w&quot;:365,&quot;h&quot;:18,&quot;abs_x&quot;:542,&quot;abs_y&quot;:4985}\">Xem lại Pass WiFi đ&atilde; lưu</p>\r\n\r\n<h3 bis_size=\"{&quot;x&quot;:8,&quot;y&quot;:4171,&quot;w&quot;:365,&quot;h&quot;:43,&quot;abs_x&quot;:542,&quot;abs_y&quot;:5022}\"><strong bis_size=\"{&quot;x&quot;:8,&quot;y&quot;:4171,&quot;w&quot;:333,&quot;h&quot;:43,&quot;abs_x&quot;:542,&quot;abs_y&quot;:5022}\">8. Hướng dẫn k&iacute;ch hoạt Paper Tape trong Calculator tr&ecirc;n MacBook</strong></h3>\r\n\r\n<p bis_size=\"{&quot;x&quot;:8,&quot;y&quot;:4233,&quot;w&quot;:365,&quot;h&quot;:92,&quot;abs_x&quot;:542,&quot;abs_y&quot;:5084}\">Paper Tape l&agrave; một t&iacute;nh năng ẩn trong ứng dụng Calculator cho ph&eacute;p người d&ugrave;ng hiển thị tất cả c&aacute;c ph&eacute;p t&iacute;nh đ&atilde; nhập v&agrave;o l&ecirc;n tr&ecirc;n một tờ giấy ảo nhỏ m&agrave;u trắng, tương tự như giấy nh&aacute;p khi bạn t&iacute;nh tay. Điều n&agrave;y sẽ gi&uacute;p bạn kiểm tra lại kết quả một c&aacute;ch nhanh ch&oacute;ng.</p>\r\n\r\n<p bis_size=\"{&quot;x&quot;:8,&quot;y&quot;:4341,&quot;w&quot;:365,&quot;h&quot;:55,&quot;abs_x&quot;:542,&quot;abs_y&quot;:5192}\"><strong bis_size=\"{&quot;x&quot;:8,&quot;y&quot;:4341,&quot;w&quot;:126,&quot;h&quot;:18,&quot;abs_x&quot;:542,&quot;abs_y&quot;:5192}\">Hướng dẫn nhanh</strong>: V&agrave;o&nbsp;<strong bis_size=\"{&quot;x&quot;:173,&quot;y&quot;:4341,&quot;w&quot;:82,&quot;h&quot;:18,&quot;abs_x&quot;:707,&quot;abs_y&quot;:5192}\">Launchpad&nbsp;</strong>&gt; Chọn&nbsp;<strong bis_size=\"{&quot;x&quot;:46,&quot;y&quot;:4360,&quot;w&quot;:76,&quot;h&quot;:18,&quot;abs_x&quot;:580,&quot;abs_y&quot;:5211}\">Calculator&nbsp;</strong>&gt; Chọn&nbsp;<strong bis_size=\"{&quot;x&quot;:175,&quot;y&quot;:4360,&quot;w&quot;:67,&quot;h&quot;:18,&quot;abs_x&quot;:709,&quot;abs_y&quot;:5211}\">Windows&nbsp;</strong>&gt; Chọn<strong bis_size=\"{&quot;x&quot;:8,&quot;y&quot;:4360,&quot;w&quot;:324,&quot;h&quot;:37,&quot;abs_x&quot;:542,&quot;abs_y&quot;:5211}\">&nbsp;Open Paper Tape</strong>.</p>\r\n\r\n<p bis_size=\"{&quot;x&quot;:8,&quot;y&quot;:4413,&quot;w&quot;:365,&quot;h&quot;:37,&quot;abs_x&quot;:542,&quot;abs_y&quot;:5264}\">Xem hướng dẫn chi tiết tại b&agrave;i viết:&nbsp;<a bis_size=\"{&quot;x&quot;:8,&quot;y&quot;:4413,&quot;w&quot;:340,&quot;h&quot;:37,&quot;abs_x&quot;:542,&quot;abs_y&quot;:5264}\" href=\"https://www.thegioididong.com/hoi-dap/huong-dan-kich-hoat-paper-tape-trong-calculator-tr-845837\" rel=\"dofollow\" target=\"_blank\">Hướng dẫn k&iacute;ch hoạt Paper Tape trong Calculator tr&ecirc;n Mac OS</a>.</p>\r\n\r\n<p bis_size=\"{&quot;x&quot;:8,&quot;y&quot;:4466,&quot;w&quot;:365,&quot;h&quot;:82,&quot;abs_x&quot;:542,&quot;abs_y&quot;:5317}\"><img alt=\"Kích hoạt Paper Tape trong Calculator\" bis_size=\"{&quot;x&quot;:135,&quot;y&quot;:4466,&quot;w&quot;:109,&quot;h&quot;:82,&quot;abs_x&quot;:669,&quot;abs_y&quot;:5317}\" src=\"//cdn.tgdd.vn/hoi-dap/889986/huong-dan-su-dung-macbook-cho-nguoi-moi ( (8)-800x600.jpg\" title=\"Kích hoạt Paper Tape trong Calculator\" /></p>\r\n\r\n<p bis_size=\"{&quot;x&quot;:8,&quot;y&quot;:4564,&quot;w&quot;:365,&quot;h&quot;:18,&quot;abs_x&quot;:542,&quot;abs_y&quot;:5415}\">K&iacute;ch hoạt Paper Tape trong Calculator</p>\r\n\r\n<h3 bis_size=\"{&quot;x&quot;:8,&quot;y&quot;:4601,&quot;w&quot;:365,&quot;h&quot;:43,&quot;abs_x&quot;:542,&quot;abs_y&quot;:5452}\"><strong bis_size=\"{&quot;x&quot;:8,&quot;y&quot;:4601,&quot;w&quot;:344,&quot;h&quot;:43,&quot;abs_x&quot;:542,&quot;abs_y&quot;:5452}\">9. C&aacute;ch tải video đơn giản từ YouTube tr&ecirc;n MacBook</strong></h3>\r\n\r\n<p bis_size=\"{&quot;x&quot;:8,&quot;y&quot;:4663,&quot;w&quot;:365,&quot;h&quot;:74,&quot;abs_x&quot;:542,&quot;abs_y&quot;:5514}\">YouTube l&agrave; một trang mạng x&atilde; hội video chất lượng v&agrave; lớn nhất hiện nay. Tr&ecirc;n&nbsp;<a bis_size=\"{&quot;x&quot;:162,&quot;y&quot;:4682,&quot;w&quot;:58,&quot;h&quot;:18,&quot;abs_x&quot;:696,&quot;abs_y&quot;:5533}\" href=\"https://www.thegioididong.com/game-app/youtube-mang-video-so-1-the-gioi-220096\" rel=\"dofollow\" target=\"_blank\">YouTube</a>&nbsp;c&oacute; nhiều video giải tr&iacute;, học tập, chia sẻ,... rất hay v&agrave; hấp dẫn gi&uacute;p người d&ugrave;ng giải tỏa căng thẳng trong cuộc sống hằng ng&agrave;y.</p>\r\n\r\n<p bis_size=\"{&quot;x&quot;:8,&quot;y&quot;:4753,&quot;w&quot;:365,&quot;h&quot;:74,&quot;abs_x&quot;:542,&quot;abs_y&quot;:5604}\">Trong trường hợp bạn phải đến nơi kh&ocirc;ng c&oacute; kết nối mạng nhưng vẫn muốn giải tr&iacute; th&igrave; cũng đừng lo lắng v&igrave; h&ocirc;m nay m&igrave;nh sẽ hướng dẫn c&aacute;c bạn ngay c&aacute;ch tải video đơn giản từ YouTube tr&ecirc;n MacBook.</p>\r\n\r\n<p bis_size=\"{&quot;x&quot;:8,&quot;y&quot;:4843,&quot;w&quot;:365,&quot;h&quot;:74,&quot;abs_x&quot;:542,&quot;abs_y&quot;:5694}\"><strong bis_size=\"{&quot;x&quot;:8,&quot;y&quot;:4843,&quot;w&quot;:211,&quot;h&quot;:18,&quot;abs_x&quot;:542,&quot;abs_y&quot;:5694}\">Hướng dẫn nhanh c&aacute;ch c&agrave;i đặt</strong>: Tải file c&agrave;i đặt từ&nbsp;<strong bis_size=\"{&quot;x&quot;:25,&quot;y&quot;:4862,&quot;w&quot;:90,&quot;h&quot;:18,&quot;abs_x&quot;:559,&quot;abs_y&quot;:5713}\">ClickToFlash</strong>&nbsp;&gt; Mở file c&agrave;i đặt l&ecirc;n &gt; Chọn&nbsp;<strong bis_size=\"{&quot;x&quot;:46,&quot;y&quot;:4880,&quot;w&quot;:67,&quot;h&quot;:18,&quot;abs_x&quot;:580,&quot;abs_y&quot;:5731}\">Continue&nbsp;</strong>(3 lần) &gt; Chọn&nbsp;<strong bis_size=\"{&quot;x&quot;:212,&quot;y&quot;:4880,&quot;w&quot;:47,&quot;h&quot;:18,&quot;abs_x&quot;:746,&quot;abs_y&quot;:5731}\">Install&nbsp;</strong>&gt; Nhập<strong bis_size=\"{&quot;x&quot;:8,&quot;y&quot;:4880,&quot;w&quot;:321,&quot;h&quot;:37,&quot;abs_x&quot;:542,&quot;abs_y&quot;:5731}\">&nbsp;t&agrave;i khoản&nbsp;</strong>v&agrave;&nbsp;<strong bis_size=\"{&quot;x&quot;:73,&quot;y&quot;:4899,&quot;w&quot;:65,&quot;h&quot;:18,&quot;abs_x&quot;:607,&quot;abs_y&quot;:5750}\">mật khẩu</strong>&nbsp;m&aacute;y t&iacute;nh.</p>\r\n\r\n<p bis_size=\"{&quot;x&quot;:8,&quot;y&quot;:4933,&quot;w&quot;:365,&quot;h&quot;:55,&quot;abs_x&quot;:542,&quot;abs_y&quot;:5784}\"><strong bis_size=\"{&quot;x&quot;:8,&quot;y&quot;:4933,&quot;w&quot;:183,&quot;h&quot;:18,&quot;abs_x&quot;:542,&quot;abs_y&quot;:5784}\">Hướng dẫn nhanh c&aacute;ch tải</strong>: V&agrave;o&nbsp;<strong bis_size=\"{&quot;x&quot;:230,&quot;y&quot;:4933,&quot;w&quot;:64,&quot;h&quot;:18,&quot;abs_x&quot;:764,&quot;abs_y&quot;:5784}\">YouTube&nbsp;</strong>&gt; Chọn chuột phải v&agrave;o video muốn tải (video đang chạy) &gt; Download video hoặc Download video as.</p>\r\n\r\n<p bis_size=\"{&quot;x&quot;:8,&quot;y&quot;:5005,&quot;w&quot;:365,&quot;h&quot;:37,&quot;abs_x&quot;:542,&quot;abs_y&quot;:5856}\">Xem hướng dẫn chi tiết tại b&agrave;i viết:&nbsp;<a bis_size=\"{&quot;x&quot;:8,&quot;y&quot;:5005,&quot;w&quot;:357,&quot;h&quot;:37,&quot;abs_x&quot;:542,&quot;abs_y&quot;:5856}\" href=\"https://www.thegioididong.com/hoi-dap/cach-tai-video-don-gian-tu-youtube-tren-mac-os-847096\" rel=\"dofollow\" target=\"_blank\">C&aacute;ch tải video đơn giản từ Youtube tr&ecirc;n Mac OS</a>.</p>\r\n\r\n<p bis_size=\"{&quot;x&quot;:8,&quot;y&quot;:5058,&quot;w&quot;:365,&quot;h&quot;:61,&quot;abs_x&quot;:542,&quot;abs_y&quot;:5909}\"><img alt=\"Tải video từ YouTube trên MacBook\" bis_size=\"{&quot;x&quot;:135,&quot;y&quot;:5058,&quot;w&quot;:109,&quot;h&quot;:61,&quot;abs_x&quot;:669,&quot;abs_y&quot;:5909}\" src=\"//cdn.tgdd.vn/hoi-dap/889986/huong-dan-su-dung-macbook-cho-nguoi-moi ( (9)-800x450.jpg\" title=\"Tải video từ YouTube trên MacBook\" /></p>\r\n\r\n<p bis_size=\"{&quot;x&quot;:8,&quot;y&quot;:5135,&quot;w&quot;:365,&quot;h&quot;:18,&quot;abs_x&quot;:542,&quot;abs_y&quot;:5986}\">Tải video từ YouTube tr&ecirc;n MacBook</p>\r\n\r\n<h3 bis_size=\"{&quot;x&quot;:8,&quot;y&quot;:5172,&quot;w&quot;:365,&quot;h&quot;:43,&quot;abs_x&quot;:542,&quot;abs_y&quot;:6023}\"><strong bis_size=\"{&quot;x&quot;:8,&quot;y&quot;:5172,&quot;w&quot;:359,&quot;h&quot;:43,&quot;abs_x&quot;:542,&quot;abs_y&quot;:6023}\">10. C&aacute;c ph&iacute;m tắt cơ bản người d&ugrave;ng n&ecirc;n biết tr&ecirc;n MacBook</strong></h3>\r\n\r\n<p bis_size=\"{&quot;x&quot;:8,&quot;y&quot;:5234,&quot;w&quot;:365,&quot;h&quot;:92,&quot;abs_x&quot;:542,&quot;abs_y&quot;:6085}\">Tương tự như chức năng của tổ hợp ph&iacute;m, ph&iacute;m tắt cũng gi&uacute;p cho người d&ugrave;ng thực hiện c&aacute;c thao t&aacute;c nhanh hơn. B&ecirc;n cạnh đ&oacute; c&ograve;n gi&uacute;p người d&ugrave;ng tắt, kh&oacute;a m&aacute;y trong trường hợp m&aacute;y bị treo, lag. C&oacute; c&aacute;c ph&iacute;m tắt cơ bản như:</p>\r\n\r\n<p bis_size=\"{&quot;x&quot;:8,&quot;y&quot;:5343,&quot;w&quot;:365,&quot;h&quot;:18,&quot;abs_x&quot;:542,&quot;abs_y&quot;:6194}\">- Tho&aacute;t ứng dụng: Command +Q.</p>\r\n\r\n<p bis_size=\"{&quot;x&quot;:8,&quot;y&quot;:5377,&quot;w&quot;:365,&quot;h&quot;:37,&quot;abs_x&quot;:542,&quot;abs_y&quot;:6228}\">- Tho&aacute;t cửa sổ ứng dụng đang hoạt động: Command + W.</p>\r\n\r\n<p bis_size=\"{&quot;x&quot;:8,&quot;y&quot;:5430,&quot;w&quot;:365,&quot;h&quot;:18,&quot;abs_x&quot;:542,&quot;abs_y&quot;:6281}\">- Mở một tab mới: Command +T.</p>\r\n\r\n<p bis_size=\"{&quot;x&quot;:8,&quot;y&quot;:5465,&quot;w&quot;:365,&quot;h&quot;:18,&quot;abs_x&quot;:542,&quot;abs_y&quot;:6316}\">- Buộc đ&oacute;ng ứng dụng: Command + Option + ESC.</p>\r\n\r\n<p bis_size=\"{&quot;x&quot;:8,&quot;y&quot;:5499,&quot;w&quot;:365,&quot;h&quot;:18,&quot;abs_x&quot;:542,&quot;abs_y&quot;:6350}\">- T&igrave;m từ v&agrave; cụm từ: Command + F.</p>\r\n\r\n<p bis_size=\"{&quot;x&quot;:8,&quot;y&quot;:5534,&quot;w&quot;:365,&quot;h&quot;:18,&quot;abs_x&quot;:542,&quot;abs_y&quot;:6385}\">- Khởi chạy Quick Look: Command + Y.</p>\r\n\r\n<p bis_size=\"{&quot;x&quot;:8,&quot;y&quot;:5568,&quot;w&quot;:365,&quot;h&quot;:37,&quot;abs_x&quot;:542,&quot;abs_y&quot;:6419}\">Xem hướng dẫn chi tiết tại b&agrave;i viết:&nbsp;<a bis_size=\"{&quot;x&quot;:8,&quot;y&quot;:5568,&quot;w&quot;:364,&quot;h&quot;:37,&quot;abs_x&quot;:542,&quot;abs_y&quot;:6419}\" href=\"https://www.thegioididong.com/hoi-dap/cac-phim-tat-co-ban-nguoi-dung-nen-biet-tren-mac-o-848481\" rel=\"dofollow\" target=\"_blank\">C&aacute;c ph&iacute;m tắt cơ bản người d&ugrave;ng n&ecirc;n biết tr&ecirc;n Mac OS</a>.</p>\r\n\r\n<p bis_size=\"{&quot;x&quot;:8,&quot;y&quot;:5621,&quot;w&quot;:365,&quot;h&quot;:54,&quot;abs_x&quot;:542,&quot;abs_y&quot;:6472}\"><img alt=\"Phím tắt cơ bản trên MacBook\" bis_size=\"{&quot;x&quot;:135,&quot;y&quot;:5621,&quot;w&quot;:109,&quot;h&quot;:54,&quot;abs_x&quot;:669,&quot;abs_y&quot;:6472}\" src=\"//cdn.tgdd.vn/hoi-dap/889986/huong-dan-su-dung-macbook-cho-nguoi-moi ( (10)-800x400.jpg\" title=\"Phím tắt cơ bản trên MacBook\" /></p>\r\n\r\n<p bis_size=\"{&quot;x&quot;:8,&quot;y&quot;:5692,&quot;w&quot;:365,&quot;h&quot;:18,&quot;abs_x&quot;:542,&quot;abs_y&quot;:6543}\">Ph&iacute;m tắt cơ bản tr&ecirc;n MacBook</p>\r\n\r\n<h3 bis_size=\"{&quot;x&quot;:8,&quot;y&quot;:5729,&quot;w&quot;:365,&quot;h&quot;:43,&quot;abs_x&quot;:542,&quot;abs_y&quot;:6580}\"><strong bis_size=\"{&quot;x&quot;:8,&quot;y&quot;:5729,&quot;w&quot;:287,&quot;h&quot;:43,&quot;abs_x&quot;:542,&quot;abs_y&quot;:6580}\">11. C&aacute;c mẹo cho người mới sử dụng MacBook</strong></h3>\r\n\r\n<p bis_size=\"{&quot;x&quot;:8,&quot;y&quot;:5791,&quot;w&quot;:365,&quot;h&quot;:18,&quot;abs_x&quot;:542,&quot;abs_y&quot;:6642}\">-&nbsp;<strong bis_size=\"{&quot;x&quot;:17,&quot;y&quot;:5791,&quot;w&quot;:317,&quot;h&quot;:18,&quot;abs_x&quot;:551,&quot;abs_y&quot;:6642}\">Hướng dẫn t&ugrave;y chọn in hai mặt tr&ecirc;n MacBook</strong></p>\r\n\r\n<p bis_size=\"{&quot;x&quot;:8,&quot;y&quot;:5825,&quot;w&quot;:365,&quot;h&quot;:55,&quot;abs_x&quot;:542,&quot;abs_y&quot;:6676}\">Mở file cần in &gt; Chọn&nbsp;<strong bis_size=\"{&quot;x&quot;:155,&quot;y&quot;:5825,&quot;w&quot;:29,&quot;h&quot;:18,&quot;abs_x&quot;:689,&quot;abs_y&quot;:6676}\">File&nbsp;</strong>&gt; Chọn&nbsp;<strong bis_size=\"{&quot;x&quot;:237,&quot;y&quot;:5825,&quot;w&quot;:39,&quot;h&quot;:18,&quot;abs_x&quot;:771,&quot;abs_y&quot;:6676}\">Print&nbsp;</strong>&gt; Chọn M&aacute;y in &gt; Chọn&nbsp;<strong bis_size=\"{&quot;x&quot;:76,&quot;y&quot;:5844,&quot;w&quot;:92,&quot;h&quot;:18,&quot;abs_x&quot;:610,&quot;abs_y&quot;:6695}\">Show Details&nbsp;</strong>&gt; T&iacute;ch chọn&nbsp;<strong bis_size=\"{&quot;x&quot;:249,&quot;y&quot;:5844,&quot;w&quot;:63,&quot;h&quot;:18,&quot;abs_x&quot;:783,&quot;abs_y&quot;:6695}\">Two-Side</strong>&nbsp;&gt; Chọn&nbsp;<strong bis_size=\"{&quot;x&quot;:46,&quot;y&quot;:5862,&quot;w&quot;:52,&quot;h&quot;:18,&quot;abs_x&quot;:580,&quot;abs_y&quot;:6713}\">Layout&nbsp;</strong>&gt; Chọn&nbsp;<strong bis_size=\"{&quot;x&quot;:151,&quot;y&quot;:5862,&quot;w&quot;:65,&quot;h&quot;:18,&quot;abs_x&quot;:685,&quot;abs_y&quot;:6713}\">Bố cục in</strong>.</p>\r\n\r\n<p bis_size=\"{&quot;x&quot;:8,&quot;y&quot;:5897,&quot;w&quot;:365,&quot;h&quot;:37,&quot;abs_x&quot;:542,&quot;abs_y&quot;:6748}\">Xem hướng dẫn chi tiết tại b&agrave;i viết:&nbsp;<a bis_size=\"{&quot;x&quot;:8,&quot;y&quot;:5897,&quot;w&quot;:341,&quot;h&quot;:37,&quot;abs_x&quot;:542,&quot;abs_y&quot;:6748}\" href=\"https://www.thegioididong.com/hoi-dap/huong-dan-cach-tuy-chon-in-hai-mat-tren-mac-os-887530\" rel=\"dofollow\" target=\"_blank\">Hướng dẫn c&aacute;ch t&ugrave;y chọn in hai mặt tr&ecirc;n Mac OS</a>.</p>\r\n\r\n<p bis_size=\"{&quot;x&quot;:8,&quot;y&quot;:5950,&quot;w&quot;:365,&quot;h&quot;:61,&quot;abs_x&quot;:542,&quot;abs_y&quot;:6801}\"><img alt=\"Tùy chọn in hai mặt trên MacBook\" bis_size=\"{&quot;x&quot;:135,&quot;y&quot;:5950,&quot;w&quot;:109,&quot;h&quot;:61,&quot;abs_x&quot;:669,&quot;abs_y&quot;:6801}\" src=\"//cdn.tgdd.vn/hoi-dap/889986/huong-dan-su-dung-macbook-cho-nguoi-moi ( (11)-800x450.jpg\" title=\"Tùy chọn in hai mặt trên MacBook\" /></p>\r\n\r\n<p bis_size=\"{&quot;x&quot;:8,&quot;y&quot;:6027,&quot;w&quot;:365,&quot;h&quot;:18,&quot;abs_x&quot;:542,&quot;abs_y&quot;:6878}\">T&ugrave;y chọn in hai mặt tr&ecirc;n MacBook</p>\r\n\r\n<p bis_size=\"{&quot;x&quot;:8,&quot;y&quot;:6062,&quot;w&quot;:365,&quot;h&quot;:74,&quot;abs_x&quot;:542,&quot;abs_y&quot;:6913}\">-&nbsp;<strong bis_size=\"{&quot;x&quot;:17,&quot;y&quot;:6062,&quot;w&quot;:92,&quot;h&quot;:18,&quot;abs_x&quot;:551,&quot;abs_y&quot;:6913}\">Tiết kiệm pin</strong>: Bạn c&oacute; thể tiết kiệm PIN cho MacBook bằng nhiều c&aacute;ch như tắt tự động cập nhật, tắt c&aacute;c t&iacute;nh năng định vị khi kh&ocirc;ng sử dụng, giảm độ s&aacute;ng m&agrave;n h&igrave;nh, kiểm tra c&aacute;c ứng dụng l&agrave;m hao tốn pin tr&ecirc;n m&aacute;y.</p>\r\n\r\n<p bis_size=\"{&quot;x&quot;:8,&quot;y&quot;:6152,&quot;w&quot;:365,&quot;h&quot;:54,&quot;abs_x&quot;:542,&quot;abs_y&quot;:7003}\"><img alt=\"Mẹo tiết kiệm pin cho Macbook\" bis_size=\"{&quot;x&quot;:135,&quot;y&quot;:6152,&quot;w&quot;:109,&quot;h&quot;:54,&quot;abs_x&quot;:669,&quot;abs_y&quot;:7003}\" src=\"//cdn.tgdd.vn/hoi-dap/889986/huong-dan-su-dung-macbook-cho-nguoi-moi ( (12)-800x396.jpg\" title=\"Mẹo tiết kiệm pin cho Macbook\" /></p>\r\n\r\n<p bis_size=\"{&quot;x&quot;:8,&quot;y&quot;:6222,&quot;w&quot;:365,&quot;h&quot;:18,&quot;abs_x&quot;:542,&quot;abs_y&quot;:7073}\">Mẹo tiết kiệm pin cho Macbook</p>\r\n\r\n<p bis_size=\"{&quot;x&quot;:8,&quot;y&quot;:6257,&quot;w&quot;:365,&quot;h&quot;:18,&quot;abs_x&quot;:542,&quot;abs_y&quot;:7108}\">-&nbsp;<strong bis_size=\"{&quot;x&quot;:17,&quot;y&quot;:6257,&quot;w&quot;:347,&quot;h&quot;:18,&quot;abs_x&quot;:551,&quot;abs_y&quot;:7108}\">Resize ảnh h&agrave;ng loạt với Automator tr&ecirc;n MacBook</strong></p>\r\n\r\n<p bis_size=\"{&quot;x&quot;:8,&quot;y&quot;:6291,&quot;w&quot;:365,&quot;h&quot;:129,&quot;abs_x&quot;:542,&quot;abs_y&quot;:7142}\">Mở&nbsp;<strong bis_size=\"{&quot;x&quot;:35,&quot;y&quot;:6291,&quot;w&quot;:79,&quot;h&quot;:18,&quot;abs_x&quot;:569,&quot;abs_y&quot;:7142}\">Automator&nbsp;</strong>&gt; Chọn&nbsp;<strong bis_size=\"{&quot;x&quot;:167,&quot;y&quot;:6291,&quot;w&quot;:108,&quot;h&quot;:18,&quot;abs_x&quot;:701,&quot;abs_y&quot;:7142}\">New Document&nbsp;</strong>&gt; Chọn&nbsp;<strong bis_size=\"{&quot;x&quot;:46,&quot;y&quot;:6310,&quot;w&quot;:59,&quot;h&quot;:18,&quot;abs_x&quot;:580,&quot;abs_y&quot;:7161}\">Services&nbsp;</strong>&gt; Chọn&nbsp;<strong bis_size=\"{&quot;x&quot;:158,&quot;y&quot;:6310,&quot;w&quot;:53,&quot;h&quot;:18,&quot;abs_x&quot;:692,&quot;abs_y&quot;:7161}\">Choose&nbsp;</strong>&gt; Tại&nbsp;<strong bis_size=\"{&quot;x&quot;:8,&quot;y&quot;:6310,&quot;w&quot;:356,&quot;h&quot;:37,&quot;abs_x&quot;:542,&quot;abs_y&quot;:7161}\">Services receives selected</strong>, chọn&nbsp;<strong bis_size=\"{&quot;x&quot;:104,&quot;y&quot;:6328,&quot;w&quot;:77,&quot;h&quot;:18,&quot;abs_x&quot;:638,&quot;abs_y&quot;:7179}\">Images file&nbsp;</strong>&gt; Chọn&nbsp;<strong bis_size=\"{&quot;x&quot;:233,&quot;y&quot;:6328,&quot;w&quot;:111,&quot;h&quot;:18,&quot;abs_x&quot;:767,&quot;abs_y&quot;:7179}\">File and Folders</strong>&nbsp;&gt; Tại cột thứ 2, k&eacute;o mục<strong bis_size=\"{&quot;x&quot;:152,&quot;y&quot;:6347,&quot;w&quot;:136,&quot;h&quot;:18,&quot;abs_x&quot;:686,&quot;abs_y&quot;:7198}\">&nbsp;Get Specifiled finde</strong>r sang trang b&ecirc;n cạnh &gt; Chọn&nbsp;<strong bis_size=\"{&quot;x&quot;:121,&quot;y&quot;:6365,&quot;w&quot;:50,&quot;h&quot;:18,&quot;abs_x&quot;:655,&quot;abs_y&quot;:7216}\">Photos&nbsp;</strong>&gt; Tại cột thứ 2, k&eacute;o mục&nbsp;<strong bis_size=\"{&quot;x&quot;:8,&quot;y&quot;:6365,&quot;w&quot;:360,&quot;h&quot;:37,&quot;abs_x&quot;:542,&quot;abs_y&quot;:7216}\">Scale Image&nbsp;</strong>sang trang b&ecirc;n cạnh &gt;&nbsp;<strong bis_size=\"{&quot;x&quot;:199,&quot;y&quot;:6384,&quot;w&quot;:119,&quot;h&quot;:18,&quot;abs_x&quot;:733,&quot;abs_y&quot;:7235}\">Chọn k&iacute;ch thước&nbsp;</strong>muốn resize &gt; Chọn&nbsp;<strong bis_size=\"{&quot;x&quot;:101,&quot;y&quot;:6402,&quot;w&quot;:29,&quot;h&quot;:18,&quot;abs_x&quot;:635,&quot;abs_y&quot;:7253}\">File&nbsp;</strong>&gt; Chọn&nbsp;<strong bis_size=\"{&quot;x&quot;:182,&quot;y&quot;:6402,&quot;w&quot;:32,&quot;h&quot;:18,&quot;abs_x&quot;:716,&quot;abs_y&quot;:7253}\">Save</strong>.</p>\r\n\r\n<p bis_size=\"{&quot;x&quot;:8,&quot;y&quot;:6437,&quot;w&quot;:365,&quot;h&quot;:37,&quot;abs_x&quot;:542,&quot;abs_y&quot;:7288}\">Xem hướng dẫn chi tiết tại b&agrave;i viết:&nbsp;<a bis_size=\"{&quot;x&quot;:8,&quot;y&quot;:6437,&quot;w&quot;:349,&quot;h&quot;:37,&quot;abs_x&quot;:542,&quot;abs_y&quot;:7288}\" href=\"https://www.thegioididong.com/hoi-dap/huong-dan-resize-anh-hang-loat-voi-automator-tren-848488\" rel=\"dofollow\" target=\"_blank\">Hướng dẫn resize ảnh h&agrave;ng loạt với Automator tr&ecirc;n Mac OS</a>.</p>\r\n\r\n<p bis_size=\"{&quot;x&quot;:8,&quot;y&quot;:6490,&quot;w&quot;:365,&quot;h&quot;:61,&quot;abs_x&quot;:542,&quot;abs_y&quot;:7341}\"><img alt=\"Cách Resize ảnh hàng loạt với Automator trên MacBook\" bis_size=\"{&quot;x&quot;:135,&quot;y&quot;:6490,&quot;w&quot;:109,&quot;h&quot;:61,&quot;abs_x&quot;:669,&quot;abs_y&quot;:7341}\" src=\"//cdn.tgdd.vn/hoi-dap/889986/huong-dan-su-dung-macbook-cho-nguoi-moi ( (13)-800x446.jpg\" title=\"Cách Resize ảnh hàng loạt với Automator trên MacBook\" /></p>\r\n\r\n<p bis_size=\"{&quot;x&quot;:8,&quot;y&quot;:6567,&quot;w&quot;:365,&quot;h&quot;:18,&quot;abs_x&quot;:542,&quot;abs_y&quot;:7418}\">C&aacute;ch Resize ảnh h&agrave;ng loạt với Automator tr&ecirc;n MacBook</p>', '2026-01-01 14:00:18.672760', 3, 'images/posts/application-la-gi-2-1024x576.png', 1, 'hng-dan-s-dung-macbook-cho-nguoi-moi-tu-a-den-z-cuc-don-gian', 'Hướng dẫn sử dụng MacBook', '2026-01-01 14:00:18.672787');

-- --------------------------------------------------------

--
-- Table structure for table `app_post_tags`
--

CREATE TABLE `app_post_tags` (
  `id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `app_tag`
--

CREATE TABLE `app_tag` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `slug` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `auth_group`
--

INSERT INTO `auth_group` (`id`, `name`) VALUES
(1, 'dang bai');

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `auth_group_permissions`
--

INSERT INTO `auth_group_permissions` (`id`, `group_id`, `permission_id`) VALUES
(1, 1, 25),
(2, 1, 26),
(3, 1, 28);

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add Bài viết', 7, 'add_post'),
(26, 'Can change Bài viết', 7, 'change_post'),
(27, 'Can delete Bài viết', 7, 'delete_post'),
(28, 'Can view Bài viết', 7, 'view_post'),
(29, 'Can add Mục Menu/Danh mục', 8, 'add_menuitem'),
(30, 'Can change Mục Menu/Danh mục', 8, 'change_menuitem'),
(31, 'Can delete Mục Menu/Danh mục', 8, 'delete_menuitem'),
(32, 'Can view Mục Menu/Danh mục', 8, 'view_menuitem'),
(33, 'Can add Thẻ (Tag)', 9, 'add_tag'),
(34, 'Can change Thẻ (Tag)', 9, 'change_tag'),
(35, 'Can delete Thẻ (Tag)', 9, 'delete_tag'),
(36, 'Can view Thẻ (Tag)', 9, 'view_tag'),
(37, 'Can add Banner quảng cáo', 10, 'add_banner'),
(38, 'Can change Banner quảng cáo', 10, 'change_banner'),
(39, 'Can delete Banner quảng cáo', 10, 'delete_banner'),
(40, 'Can view Banner quảng cáo', 10, 'view_banner');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$600000$2MjIbiGGqo8OEcXg2ok1k6$xmSFIi0XNrjvXkoWa9DexOwllL3Y9BtEVlA83hcU45c=', '2026-01-01 13:31:13.280887', 1, 'admin', '', '', 'admin@gmail.com', 1, 1, '2025-12-15 05:30:16.613301'),
(6, 'pbkdf2_sha256$600000$bNC8nRRXqG9QYR6SkaTWRe$TzEHuvHP/xsfVisGoNuu9xVrnr4SGmTvoICILQTG/Tk=', '2026-01-01 15:04:54.174360', 1, 'thai', '', '', '', 1, 1, '2026-01-01 15:04:16.000000');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2025-12-15 05:32:12.570034', '1', 'TRANG CHỦ', 1, '[{\"added\": {}}]', 8, 1),
(2, '2025-12-15 05:32:22.335934', '2', 'OFFICE WIN & MAC', 1, '[{\"added\": {}}]', 8, 1),
(3, '2025-12-15 05:32:34.248752', '3', 'APPLICATION', 1, '[{\"added\": {}}]', 8, 1),
(4, '2025-12-15 05:32:45.306835', '4', 'PHẦN MỀM ADOBE', 1, '[{\"added\": {}}]', 8, 1),
(5, '2025-12-15 05:32:51.840526', '5', 'TOOL', 1, '[{\"added\": {}}]', 8, 1),
(6, '2025-12-15 05:33:01.461842', '6', 'TIN TỨC', 1, '[{\"added\": {}}]', 8, 1),
(7, '2025-12-15 05:33:10.989905', '7', 'LIÊN HỆ', 1, '[{\"added\": {}}]', 8, 1),
(8, '2025-12-15 05:43:11.529086', '1', 'office', 1, '[{\"added\": {}}]', 9, 1),
(9, '2025-12-15 05:44:12.120964', '1', 'Hướng dẫn cài office', 1, '[{\"added\": {}}]', 7, 1),
(10, '2025-12-15 06:21:13.457072', '1', 'TRANG CHỦ - 123', 1, '[{\"added\": {}}]', 10, 1),
(11, '2025-12-15 06:22:55.276371', '2', 'OFFICE WIN & MAC - xin chào', 1, '[{\"added\": {}}]', 10, 1),
(12, '2025-12-15 06:37:51.176770', '2', 'OFFICE WIN & MAC - xin chào', 3, '', 10, 1),
(13, '2025-12-15 06:37:56.036426', '1', 'TRANG CHỦ - 123', 3, '', 10, 1),
(14, '2025-12-15 06:45:30.885175', '3', 'APPLICATION - qqq', 1, '[{\"added\": {}}]', 10, 1),
(15, '2025-12-15 06:49:51.197627', '4', 'TRANG CHỦ - 123', 1, '[{\"added\": {}}]', 10, 1),
(16, '2025-12-15 06:57:26.429763', '4', 'TRANG CHỦ - 123', 2, '[{\"changed\": {\"fields\": [\"\\u1ea2nh banner\"]}}]', 10, 1),
(17, '2025-12-15 06:58:00.034386', '5', 'TRANG CHỦ - 4', 1, '[{\"added\": {}}]', 10, 1),
(18, '2025-12-16 02:15:30.774330', '6', 'TOOL - 123', 1, '[{\"added\": {}}]', 10, 1),
(19, '2025-12-16 02:34:07.858207', '7', 'LIÊN HỆ - 12', 1, '[{\"added\": {}}]', 10, 1),
(20, '2025-12-16 02:37:30.284139', '8', 'LIÊN HỆ - 12', 1, '[{\"added\": {}}]', 10, 1),
(21, '2025-12-17 03:20:22.418029', '9', 'APPLICATION - hom nay 17', 1, '[{\"added\": {}}]', 10, 1),
(22, '2025-12-17 03:27:38.416268', '10', 'OFFICE WIN & MAC - 77', 1, '[{\"added\": {}}]', 10, 1),
(23, '2025-12-17 03:31:31.259067', '11', 'OFFICE WIN & MAC - jjj', 1, '[{\"added\": {}}]', 10, 1),
(24, '2025-12-17 03:32:04.594037', '12', 'OFFICE WIN & MAC - mmm', 1, '[{\"added\": {}}]', 10, 1),
(25, '2025-12-17 03:50:13.648776', '12', 'OFFICE WIN & MAC - mmm', 3, '', 10, 1),
(26, '2025-12-17 03:50:35.709223', '13', 'TRANG CHỦ - mmm', 1, '[{\"added\": {}}]', 10, 1),
(27, '2025-12-17 04:02:06.844558', '14', 'APPLICATION - ccc', 1, '[{\"added\": {}}]', 10, 1),
(28, '2025-12-17 04:27:22.521934', '15', 'PHẦN MỀM ADOBE - n', 1, '[{\"added\": {}}]', 10, 1),
(29, '2025-12-17 04:28:31.611896', '16', 'TIN TỨC - n', 1, '[{\"added\": {}}]', 10, 1),
(30, '2025-12-17 04:34:24.053666', '17', 'TIN TỨC - m', 1, '[{\"added\": {}}]', 10, 1),
(31, '2025-12-17 04:35:26.953180', '18', 'LIÊN HỆ - mmm', 1, '[{\"added\": {}}]', 10, 1),
(32, '2025-12-17 04:52:45.220530', '19', 'OFFICE WIN & MAC - Xin chào cả nhà', 1, '[{\"added\": {}}]', 10, 1),
(33, '2025-12-17 04:54:22.048353', '20', 'OFFICE WIN & MAC - m', 1, '[{\"added\": {}}]', 10, 1),
(34, '2025-12-17 12:54:33.043499', '2', 'Hướng dẫn cài win', 1, '[{\"added\": {}}]', 7, 1),
(35, '2025-12-17 13:05:18.419267', '2', 'Hướng dẫn cài win', 2, '[{\"changed\": {\"fields\": [\"Category\", \"\\u1ea2nh b\\u00e0i vi\\u1ebft\"]}}]', 7, 1),
(36, '2025-12-17 13:18:51.456863', '3', '123', 1, '[{\"added\": {}}]', 7, 1),
(37, '2025-12-17 13:37:36.277062', '3', '123', 2, '[{\"changed\": {\"fields\": [\"Content\"]}}]', 7, 1),
(38, '2025-12-17 13:56:33.141644', '4', 'Huong Dan Lam Web Django', 1, '[{\"added\": {}}]', 7, 1),
(39, '2025-12-17 14:22:28.912563', '4', 'Huong Dan Lam Web Django', 2, '[{\"changed\": {\"fields\": [\"Content\"]}}]', 7, 1),
(40, '2025-12-17 14:26:06.088047', '4', 'Huong Dan Lam Web Django', 2, '[{\"changed\": {\"fields\": [\"Content\"]}}]', 7, 1),
(41, '2025-12-17 14:26:57.482507', '4', 'Huong Dan Lam Web Django', 2, '[{\"changed\": {\"fields\": [\"Content\"]}}]', 7, 1),
(42, '2025-12-18 13:21:22.177855', '21', 'TRANG CHỦ - Sale', 1, '[{\"added\": {}}]', 10, 1),
(43, '2025-12-18 13:35:28.204852', '22', 'TRANG CHỦ - 2', 1, '[{\"added\": {}}]', 10, 1),
(44, '2025-12-18 13:35:49.634004', '23', 'TRANG CHỦ - 3', 1, '[{\"added\": {}}]', 10, 1),
(45, '2025-12-18 13:36:06.227839', '24', 'TRANG CHỦ - 4', 1, '[{\"added\": {}}]', 10, 1),
(46, '2025-12-18 13:51:00.114868', '88', 'LIÊN HỆ - 1', 1, '[{\"added\": {}}]', 10, 1),
(47, '2025-12-18 13:56:16.671180', '5', 'Huong dan dinh dang word', 1, '[{\"added\": {}}]', 7, 1),
(48, '2025-12-18 18:50:45.115244', '1', 'TRANG CHỦ', 2, '[{\"changed\": {\"fields\": [\"Url slug\"]}}]', 8, 1),
(49, '2025-12-18 19:00:58.687871', '1', 'TRANG CHỦ', 2, '[{\"changed\": {\"fields\": [\"Url slug\"]}}]', 8, 1),
(50, '2025-12-19 05:24:53.355035', '2', 'thuat thuat win', 1, '[{\"added\": {}}]', 9, 1),
(51, '2025-12-19 05:25:10.854073', '3', 'huong dan word', 1, '[{\"added\": {}}]', 9, 1),
(52, '2025-12-19 05:25:38.923861', '32', 'Huong dan dinh dang word', 2, '[{\"changed\": {\"fields\": [\"Tags\"]}}]', 7, 1),
(53, '2025-12-19 06:07:31.164117', '3', 'APPLICATION', 2, '[{\"changed\": {\"fields\": [\"Order\"]}}]', 8, 1),
(54, '2025-12-19 06:07:50.434804', '3', 'APPLICATION', 2, '[{\"changed\": {\"fields\": [\"Order\"]}}]', 8, 1),
(55, '2025-12-21 14:11:41.377643', '2', 'admin_1', 1, '[{\"added\": {}}]', 4, 1),
(56, '2025-12-21 14:12:02.243772', '3', 'admin_2', 1, '[{\"added\": {}}]', 4, 1),
(57, '2025-12-21 14:16:13.449651', '2', 'admin_1', 2, '[{\"changed\": {\"fields\": [\"Staff status\"]}}]', 4, 1),
(58, '2025-12-21 14:17:43.212339', '2', 'admin_1', 3, '', 4, 1),
(59, '2025-12-21 14:17:47.801204', '3', 'admin_2', 3, '', 4, 1),
(60, '2025-12-21 14:18:29.551555', '4', 'admin_1', 1, '[{\"added\": {}}]', 4, 1),
(61, '2025-12-21 14:18:35.671964', '4', 'admin_1', 2, '[{\"changed\": {\"fields\": [\"Staff status\"]}}]', 4, 1),
(62, '2025-12-21 14:19:49.945604', '4', 'admin_1', 2, '[{\"changed\": {\"fields\": [\"User permissions\"]}}]', 4, 1),
(63, '2025-12-21 14:21:41.104778', '4', 'admin_1', 2, '[{\"changed\": {\"fields\": [\"Superuser status\"]}}]', 4, 1),
(64, '2025-12-21 14:22:18.987375', '4', 'admin_1', 2, '[{\"changed\": {\"fields\": [\"Superuser status\"]}}]', 4, 1),
(65, '2025-12-21 14:27:22.395339', '1', 'dang bai', 1, '[{\"added\": {}}]', 3, 1),
(66, '2025-12-21 14:27:33.640346', '4', 'admin_1', 2, '[{\"changed\": {\"fields\": [\"Groups\"]}}]', 4, 1),
(67, '2025-12-21 14:28:47.864877', '4', 'admin_1', 2, '[{\"changed\": {\"fields\": [\"First name\", \"Last name\", \"Email address\"]}}]', 4, 1),
(68, '2025-12-23 16:04:16.051792', '4', 'admin_1', 3, '', 4, 1),
(69, '2025-12-23 16:05:12.342802', '5', 'thai', 1, '[{\"added\": {}}]', 4, 1),
(70, '2025-12-23 16:05:51.173691', '5', 'thai', 2, '[{\"changed\": {\"fields\": [\"Staff status\"]}}]', 4, 1),
(71, '2025-12-23 16:09:14.518351', '5', 'thai', 2, '[{\"changed\": {\"fields\": [\"Superuser status\", \"Groups\"]}}]', 4, 1),
(73, '2025-12-23 16:10:39.867008', '5', 'thai', 2, '[{\"changed\": {\"fields\": [\"Superuser status\"]}}]', 4, 1),
(74, '2025-12-27 14:17:42.883655', '5', 'thai', 3, '', 4, 1),
(75, '2025-12-27 14:19:55.440146', '36', 'Huong dan dinh dang word cach 4', 2, '[]', 7, 1),
(76, '2026-01-01 13:32:19.815038', '10', 'Huong dan dinh dang word cach 4', 3, '', 7, 1),
(77, '2026-01-01 13:32:19.817659', '9', 'Huong dan dinh dang word cach 3', 3, '', 7, 1),
(78, '2026-01-01 13:32:19.819257', '8', 'Huong dan dinh dang word cach 2', 3, '', 7, 1),
(79, '2026-01-01 13:32:19.820614', '7', 'Huong dan dinh dang word cach 1', 3, '', 7, 1),
(80, '2026-01-01 13:32:19.821713', '5', 'Huong dan dinh dang word', 3, '', 7, 1),
(81, '2026-01-01 13:44:07.438358', '37', 'Hướng dẫn kích hoạt Office 365 cài sẵn đi kèm theo máy', 1, '[{\"added\": {}}]', 7, 1),
(82, '2026-01-01 13:48:01.913427', '25', 'OFFICE WIN & MAC - Sale', 3, '', 10, 1),
(83, '2026-01-01 13:48:01.916256', '26', 'OFFICE WIN & MAC - 2', 3, '', 10, 1),
(84, '2026-01-01 13:48:01.917750', '27', 'OFFICE WIN & MAC - 3', 3, '', 10, 1),
(85, '2026-01-01 13:48:01.919343', '28', 'OFFICE WIN & MAC - 4', 3, '', 10, 1),
(86, '2026-01-01 13:49:16.965822', '89', 'OFFICE WIN & MAC - ', 1, '[{\"added\": {}}]', 10, 1),
(87, '2026-01-01 13:49:54.149428', '90', 'OFFICE WIN & MAC - ', 1, '[{\"added\": {}}]', 10, 1),
(88, '2026-01-01 13:50:09.316982', '91', 'OFFICE WIN & MAC - ', 1, '[{\"added\": {}}]', 10, 1),
(89, '2026-01-01 13:50:27.135256', '92', 'OFFICE WIN & MAC - ', 1, '[{\"added\": {}}]', 10, 1),
(90, '2026-01-01 13:56:48.892683', '15', 'Huong dan dinh dang word cach 4', 3, '', 7, 1),
(91, '2026-01-01 13:56:48.894669', '14', 'Huong dan dinh dang word cach 3', 3, '', 7, 1),
(92, '2026-01-01 13:56:48.895895', '13', 'Huong dan dinh dang word cach 2', 3, '', 7, 1),
(93, '2026-01-01 13:56:48.896955', '12', 'Huong dan dinh dang word cach 1', 3, '', 7, 1),
(94, '2026-01-01 13:56:48.898163', '11', 'Huong dan dinh dang word', 3, '', 7, 1),
(95, '2026-01-01 14:00:18.679887', '38', 'Hướng dẫn sử dụng MacBook cho người mới từ A đến Z cực đơn giản', 1, '[{\"added\": {}}]', 7, 1),
(96, '2026-01-01 14:08:34.417426', '32', 'APPLICATION - Sale', 3, '', 10, 1),
(97, '2026-01-01 14:08:34.419842', '33', 'APPLICATION - 2', 3, '', 10, 1),
(98, '2026-01-01 14:08:34.421263', '34', 'APPLICATION - 3', 3, '', 10, 1),
(99, '2026-01-01 14:08:34.422347', '35', 'APPLICATION - 4', 3, '', 10, 1),
(100, '2026-01-01 14:12:14.438857', '93', 'APPLICATION - ', 1, '[{\"added\": {}}]', 10, 1),
(101, '2026-01-01 14:12:25.551822', '94', 'APPLICATION - ', 1, '[{\"added\": {}}]', 10, 1),
(102, '2026-01-01 14:12:43.899437', '95', 'APPLICATION - ', 1, '[{\"added\": {}}]', 10, 1),
(103, '2026-01-01 15:04:16.807799', '6', 'thai', 1, '[{\"added\": {}}]', 4, 1),
(104, '2026-01-01 15:04:26.318745', '6', 'thai', 2, '[{\"changed\": {\"fields\": [\"Staff status\", \"Superuser status\"]}}]', 4, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(10, 'app', 'banner'),
(8, 'app', 'menuitem'),
(7, 'app', 'post'),
(9, 'app', 'tag'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2025-12-15 05:24:14.495498'),
(2, 'auth', '0001_initial', '2025-12-15 05:24:14.641665'),
(3, 'admin', '0001_initial', '2025-12-15 05:24:14.679907'),
(4, 'admin', '0002_logentry_remove_auto_add', '2025-12-15 05:24:14.684823'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2025-12-15 05:24:14.689929'),
(6, 'app', '0001_initial', '2025-12-15 05:24:14.695751'),
(7, 'app', '0002_menuitem', '2025-12-15 05:24:14.705650'),
(8, 'app', '0003_tag_alter_menuitem_options_alter_menuitem_name', '2025-12-15 05:24:14.713396'),
(9, 'app', '0004_alter_post_options_post_category_post_image_and_more', '2025-12-15 05:24:14.813195'),
(10, 'contenttypes', '0002_remove_content_type_name', '2025-12-15 05:24:14.839866'),
(11, 'auth', '0002_alter_permission_name_max_length', '2025-12-15 05:24:14.858048'),
(12, 'auth', '0003_alter_user_email_max_length', '2025-12-15 05:24:14.869029'),
(13, 'auth', '0004_alter_user_username_opts', '2025-12-15 05:24:14.874371'),
(14, 'auth', '0005_alter_user_last_login_null', '2025-12-15 05:24:14.886955'),
(15, 'auth', '0006_require_contenttypes_0002', '2025-12-15 05:24:14.888781'),
(16, 'auth', '0007_alter_validators_add_error_messages', '2025-12-15 05:24:14.893298'),
(17, 'auth', '0008_alter_user_username_max_length', '2025-12-15 05:24:14.901151'),
(18, 'auth', '0009_alter_user_last_name_max_length', '2025-12-15 05:24:14.908613'),
(19, 'auth', '0010_alter_group_name_max_length', '2025-12-15 05:24:14.916679'),
(20, 'auth', '0011_update_proxy_permissions', '2025-12-15 05:24:14.921656'),
(21, 'auth', '0012_alter_user_first_name_max_length', '2025-12-15 05:24:14.930508'),
(22, 'sessions', '0001_initial', '2025-12-15 05:24:14.944450'),
(23, 'app', '0005_alter_post_options_alter_menuitem_id_and_more', '2025-12-15 06:20:07.638927'),
(24, 'app', '0006_alter_banner_options_alter_menuitem_options_and_more', '2025-12-15 06:35:25.340396'),
(25, 'app', '0007_alter_banner_image_alter_post_content_and_more', '2025-12-17 13:51:32.592666');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('1e31lbeb7dlf4oy0xb03w1p572wkdh4y', '.eJxVjDsOwjAQBe_iGllZf2NKes5g7dprHECOFCcV4u4QKQW0b2beS0Tc1hq3zkucsjgLJ06_G2F6cNtBvmO7zTLNbV0mkrsiD9rldc78vBzu30HFXr81FZW9D9rqQNoy41AMJAcYikU7GDdqz96qkNkEAgUIoIvjlAISjV68P99rN94:1vbKEQ:Txm4cF6WkEXK7_vce9sXOdE3Tacju1T4a-vClLQ0MBc', '2026-01-15 15:04:54.176415'),
('5ryng1v5vk2saartlhniz6w3l0slgwy8', '.eJxVjDEOwyAQBP9CHSGMOQEp0-cN6OCO4CQCydiVlb_HllwkxTY7s7uJgOtSwtp5DhOJqwBx-e0iphfXA9AT66PJ1OoyT1Eeijxpl_dG_L6d7t9BwV72tVceSFuVefQxGnJJm2ztHoZBo8Mh4eiMVyM5zogaFXtgdBmYQCfx-QLmxThw:1vY4tx:Qft1ZxUy1a-OPmG7S8h8jsRKUUutkUxdD5ConqRZbUA', '2026-01-06 16:06:21.972584'),
('bjzjqdstt347ats7jz119g1zo7qak1al', '.eJxVjDsOwjAQBe_iGllZZ-XYlPScIdofOIAcKZ8KcXcSKQW0b2be2_W0LqVfZ5v6Qd3ZoTv9bkzytLoDfVC9j17GukwD-13xB539dVR7XQ7376DQXLaag0mUhqkDTNKmKJ0kjthCBxnFGBnUYiCChjMwYL5pQ2kjhirBfb70jjiq:1vXKGo:XB18lty_Sex-a0x_lptJ1PnGYS44wJev-UU_HhnsKBs', '2026-01-04 14:18:50.141224'),
('d68qcsvt71fza4q505c7fesmcf34busy', '.eJxVjDsOwjAQBe_iGllZ_2JT0ucM1tq7wQHkSHFSIe5OIqWA9s3Me4uI21ri1niJE4mrAHH53RLmJ9cD0APrfZZ5rusyJXko8qRNDjPx63a6fwcFW9lrpWwyvQZgHA2NGHqbWCXmHJQjpyj7vBPdkaFkALzT1jvovDMQgtXi8wXwDzdz:1vZUum:VpUTBMb4ii6sEdYjpipf7h0VGD1KqiV6qG85fSmCm0s', '2026-01-10 14:05:04.531273'),
('gjdfq3vqa8czf7b6jxno320s54d4b3ld', '.eJxVjDsOwjAQBe_iGllZ_2JT0ucM1tq7wQHkSHFSIe5OIqWA9s3Me4uI21ri1niJE4mrAHH53RLmJ9cD0APrfZZ5rusyJXko8qRNDjPx63a6fwcFW9lrpWwyvQZgHA2NGHqbWCXmHJQjpyj7vBPdkaFkALzT1jvovDMQgtXi8wXwDzdz:1vV1Ah:_zH4zyMCawg2Y2OnDE8YpA132Wt3wsCE1qcxUkgLAts', '2025-12-29 05:30:59.045261'),
('rt4af74qofirtywhd6zas34siymemvbg', '.eJxVjDsOwjAQBe_iGllZ_2JT0ucM1tq7wQHkSHFSIe5OIqWA9s3Me4uI21ri1niJE4mrAHH53RLmJ9cD0APrfZZ5rusyJXko8qRNDjPx63a6fwcFW9lrpWwyvQZgHA2NGHqbWCXmHJQjpyj7vBPdkaFkALzT1jvovDMQgtXi8wXwDzdz:1vWSxP:3roda4Kui69z25ohEgIEtHKsoSokxJLJEjUoK2rvQPQ', '2026-01-02 05:23:15.195590'),
('ui2l0h48a48jrd6wizjhct2jutxpuo7t', '.eJxVjDsOwjAQBe_iGllZ_2JT0ucM1tq7wQHkSHFSIe5OIqWA9s3Me4uI21ri1niJE4mrAHH53RLmJ9cD0APrfZZ5rusyJXko8qRNDjPx63a6fwcFW9lrpWwyvQZgHA2NGHqbWCXmHJQjpyj7vBPdkaFkALzT1jvovDMQgtXi8wXwDzdz:1vXK6Q:DIeGPNDTw7hZkxxjgJdCxwLYnhpVavJkPHzEJNudOQQ', '2026-01-04 14:08:06.276476');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `app_banner`
--
ALTER TABLE `app_banner`
  ADD PRIMARY KEY (`id`),
  ADD KEY `app_banner_menu_id_edd969cc_fk_app_menuitem_id` (`menu_id`);

--
-- Indexes for table `app_menuitem`
--
ALTER TABLE `app_menuitem`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `url_slug` (`url_slug`),
  ADD KEY `app_menuitem_order_e052b554` (`order`);

--
-- Indexes for table `app_post`
--
ALTER TABLE `app_post`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slug` (`slug`),
  ADD KEY `app_post_category_id_b20d7758_fk` (`category_id`);

--
-- Indexes for table `app_post_tags`
--
ALTER TABLE `app_post_tags`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `app_post_tags_post_id_tag_id_8b172ad2_uniq` (`post_id`,`tag_id`),
  ADD KEY `app_post_tags_tag_id_ef7fd308_fk` (`tag_id`);

--
-- Indexes for table `app_tag`
--
ALTER TABLE `app_tag`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD UNIQUE KEY `slug` (`slug`);

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `app_banner`
--
ALTER TABLE `app_banner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=96;

--
-- AUTO_INCREMENT for table `app_menuitem`
--
ALTER TABLE `app_menuitem`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `app_post`
--
ALTER TABLE `app_post`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `app_post_tags`
--
ALTER TABLE `app_post_tags`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `app_tag`
--
ALTER TABLE `app_tag`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `app_banner`
--
ALTER TABLE `app_banner`
  ADD CONSTRAINT `app_banner_menu_id_edd969cc_fk_app_menuitem_id` FOREIGN KEY (`menu_id`) REFERENCES `app_menuitem` (`id`);

--
-- Constraints for table `app_post`
--
ALTER TABLE `app_post`
  ADD CONSTRAINT `app_post_category_id_b20d7758_fk` FOREIGN KEY (`category_id`) REFERENCES `app_menuitem` (`id`);

--
-- Constraints for table `app_post_tags`
--
ALTER TABLE `app_post_tags`
  ADD CONSTRAINT `app_post_tags_post_id_99efbe0e_fk` FOREIGN KEY (`post_id`) REFERENCES `app_post` (`id`),
  ADD CONSTRAINT `app_post_tags_tag_id_ef7fd308_fk` FOREIGN KEY (`tag_id`) REFERENCES `app_tag` (`id`);

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
