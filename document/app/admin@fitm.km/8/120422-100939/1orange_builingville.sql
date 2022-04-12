-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 14, 2021 at 04:10 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.4.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `orange_builingville`
--

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
(1, '2021_08_28_003345_create_tb_logs', 1),
(2, '2021_08_28_010115_create_tb_menu', 1),
(3, '2021_08_28_010346_create_tb_province', 1),
(4, '2021_08_28_010402_create_tb_amupur', 1),
(5, '2021_08_28_010409_create_tb_tambon', 1),
(6, '2021_08_28_010715_create_tb_role', 1),
(7, '2021_08_28_010720_create_tb_role_list', 1),
(8, '2021_10_19_142418_create-tb_promotion-table', 2),
(9, '2021_10_19_142937_create-tb_category_idea-table', 3),
(10, '2021_10_19_143046_create-tb_idea-table', 3),
(11, '2021_10_19_143156_create-tb_contact-table', 3),
(12, '2021_10_19_143528_create-tb_setting-table', 3),
(13, '2021_10_19_143616_create-tb_request_quote-table', 3),
(14, '2021_10_20_160308_create-users-table', 3),
(15, '2021_10_19_113603_create_users', 4),
(16, '2021_10_28_095259_create-tb_banner-table', 5),
(17, '2021_10_28_095544_create-tb_category_catolog-table', 6),
(18, '2021_10_28_095601_create-tb_catolog-table', 6),
(19, '2021_10_29_131052_create-tb_category_promotion-table', 7),
(20, '2021_11_01_105116_create-tb_complaint-table', 8),
(21, '2021_11_01_105144_create-tb_faq-table', 8),
(22, '2021_11_01_105207_create-setting_language-table', 8),
(23, '2021_11_01_105229_create-setting_brand-table', 8),
(24, '2021_11_01_144010_create-tb_branch-table', 9),
(25, '2021_11_02_114517_create-tb_category_product', 9),
(26, '2021_11_03_091944_create-tb_product-table', 10),
(27, '2021_11_22_164146_create-tb_qa_product-table', 11),
(28, '2021_11_23_154627_create-tb_filter-table', 11),
(29, '2021_11_23_154638_create-tb_product_detail-table', 11),
(30, '2021_11_28_175301_create_tb_unit', 11),
(31, '2021_11_30_184624_create-tb_tag-table', 11),
(32, '2021_11_30_211313_create_tb_product_type', 11),
(33, '2021_11_30_212032_create_tb_product_category', 11),
(34, '2021_11_30_212126_create_tb_product_subcategory', 11),
(35, '2021_12_07_151333_create-tb_gallery-table', 11),
(37, '2021_12_09_202213_create-tb_offerforsale-table', 11),
(38, '2021_12_09_205527_create-tb_reg_technician-table', 11),
(39, '2021_12_09_211524_create-tb_join_supplier-table', 11),
(40, '2021_12_09_211701_create-tb_about_me-table', 11),
(41, '2021_12_09_221744_create-tb_news-table', 11),
(42, '2021_12_09_201804_create-tb_application-table', 12),
(43, '2021_12_13_112811_create-tb_join_job-table', 12);

-- --------------------------------------------------------

--
-- Table structure for table `tb_about_me`
--

CREATE TABLE `tb_about_me` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `detail_th` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `detail_en` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `delete_status` enum('off','on') COLLATE utf8mb4_unicode_ci DEFAULT 'off',
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `deleted` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tb_amupur`
--

CREATE TABLE `tb_amupur` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `province_code` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name_th` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name_en` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tb_application`
--

CREATE TABLE `tb_application` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `decription` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_real_name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `delete_status` enum('off','on') COLLATE utf8mb4_unicode_ci DEFAULT 'off',
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `deleted` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tb_banner`
--

CREATE TABLE `tb_banner` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link_url` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('on','off') COLLATE utf8mb4_unicode_ci DEFAULT 'off',
  `sort` int(11) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tb_banner`
--

INSERT INTO `tb_banner` (`id`, `image`, `link_url`, `status`, `sort`, `created`, `updated`) VALUES
(1, 'uploads/img/banner-creditcard_v2.png', 'test1', 'on', 1, '2021-10-28 12:24:54', '2021-10-28 15:09:08'),
(2, 'uploads/img/banner-creditcard_v1.png', '1', 'on', 2, '2021-10-28 12:27:13', '2021-10-28 12:27:13');

-- --------------------------------------------------------

--
-- Table structure for table `tb_branch`
--

CREATE TABLE `tb_branch` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name_th` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_en` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address_th` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address_en` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('on','off') COLLATE utf8mb4_unicode_ci DEFAULT 'off',
  `sort` int(11) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tb_branch`
--

INSERT INTO `tb_branch` (`id`, `name_th`, `name_en`, `address_th`, `address_en`, `status`, `sort`, `created`, `updated`) VALUES
(1, 'กทม', 'bkk', 'พระนคร', 'pnk', 'on', 1, '2021-11-02 20:33:59', '2021-11-02 20:34:56');

-- --------------------------------------------------------

--
-- Table structure for table `tb_brand`
--

CREATE TABLE `tb_brand` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_th` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_en` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('on','off') COLLATE utf8mb4_unicode_ci DEFAULT 'off',
  `sort` int(11) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tb_brand`
--

INSERT INTO `tb_brand` (`id`, `image`, `name_th`, `name_en`, `status`, `sort`, `created`, `updated`) VALUES
(1, 'uploads/img/logo-customer-1.jpg', 'American Standard', 'American Standard', 'on', 1, '2021-11-01 16:07:17', '2021-11-01 16:07:17'),
(2, 'uploads/img/logo-customer-2.jpg', 'Beger', 'Beger', 'on', 2, '2021-11-01 16:07:41', '2021-11-01 16:07:41'),
(3, 'uploads/img/logo-customer-3.jpg', 'BLUESCOPE', 'BLUESCOPE', 'on', 3, '2021-11-01 16:08:20', '2021-11-01 16:08:20'),
(4, 'uploads/img/logo-customer-4.jpg', 'BOSCH', 'BOSCH', 'on', 4, '2021-11-01 16:08:53', '2021-11-01 16:08:53'),
(5, 'uploads/img/logo-customer-5.jpg', 'CONWOOD', 'CONWOOD', 'on', 5, '2021-11-01 16:09:52', '2021-11-01 16:09:52'),
(6, 'uploads/img/logo-customer-6.jpg', 'COTTO', 'COTTO', 'on', 6, '2021-11-01 16:10:25', '2021-11-01 16:10:25');

-- --------------------------------------------------------

--
-- Table structure for table `tb_catalog`
--

CREATE TABLE `tb_catalog` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_catalog_id` int(11) DEFAULT NULL,
  `name_th` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_en` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_real_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_type` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_size` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('on','off') COLLATE utf8mb4_unicode_ci DEFAULT 'off',
  `sort` int(11) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tb_catalog`
--

INSERT INTO `tb_catalog` (`id`, `category_catalog_id`, `name_th`, `name_en`, `file_real_name`, `file_name`, `file_type`, `file_size`, `status`, `sort`, `created`, `updated`) VALUES
(1, 1, 'แคท1', 'cat1', 'img-cat-1.png', 'uploads/img/img-cat-1.png', 'png', '0', 'on', 1, '2021-10-28 14:44:48', '2021-11-01 10:07:49'),
(2, 2, 'แคท2', 'cat2', 'img-cat-1.png', 'uploads/img/img-cat-1.png', 'png', '0', 'on', 2, '2021-10-28 14:55:50', '2021-10-28 15:05:54'),
(3, 1, 'แคท3', 'cat3', 'img-cat-1.png', 'uploads/img/img-cat-1.png', 'png', '0', 'on', 3, '2021-10-28 14:57:33', '2021-10-28 14:57:33');

-- --------------------------------------------------------

--
-- Table structure for table `tb_category_catalog`
--

CREATE TABLE `tb_category_catalog` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name_th` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_en` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('on','off') COLLATE utf8mb4_unicode_ci DEFAULT 'off',
  `sort` int(11) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tb_category_catalog`
--

INSERT INTO `tb_category_catalog` (`id`, `name_th`, `name_en`, `status`, `sort`, `created`, `updated`) VALUES
(1, 'แคตตาล็อก01', 'Catalog01', 'on', 1, '2021-10-28 14:00:12', '2021-10-28 14:00:12'),
(2, 'แคตตาล๊อก02', 'Catalog02', 'on', 2, '2021-10-28 14:13:13', '2021-10-28 14:13:13');

-- --------------------------------------------------------

--
-- Table structure for table `tb_category_idea`
--

CREATE TABLE `tb_category_idea` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name_th` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_en` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('on','off') COLLATE utf8mb4_unicode_ci DEFAULT 'off',
  `sort` int(11) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tb_category_idea`
--

INSERT INTO `tb_category_idea` (`id`, `name_th`, `name_en`, `status`, `sort`, `created`, `updated`) VALUES
(1, 'ทดสอบ', 'test', 'on', 1, '2021-10-21 12:38:47', '2021-10-21 17:40:14'),
(2, 'การตกแต่งภายใน', 'ab', 'on', 2, '2021-10-26 09:50:59', '2021-10-26 09:50:59');

-- --------------------------------------------------------

--
-- Table structure for table `tb_category_product`
--

CREATE TABLE `tb_category_product` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `_id` int(11) DEFAULT NULL,
  `name_th` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_en` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('on','off') COLLATE utf8mb4_unicode_ci DEFAULT 'off',
  `sort` int(11) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tb_category_product`
--

INSERT INTO `tb_category_product` (`id`, `_id`, `name_th`, `name_en`, `position`, `status`, `sort`, `created`, `updated`) VALUES
(1, NULL, '1', '1', 'main', 'on', 2, '2021-11-02 20:59:11', '2021-11-02 21:09:48'),
(2, NULL, 'ปูน', 'poon', 'main', 'on', 1, '2021-11-02 21:09:48', '2021-11-02 21:09:48'),
(3, 2, 'ปูนม้า', 'poonmar', 'secondary', 'on', 1, '2021-11-02 21:14:15', '2021-11-02 21:34:54'),
(4, 2, 'ปูนหมี1', 'poonhmee1', 'secondary', 'on', 2, '2021-11-02 21:26:06', '2021-11-02 21:35:37');

-- --------------------------------------------------------

--
-- Table structure for table `tb_category_promotion`
--

CREATE TABLE `tb_category_promotion` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name_th` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_en` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('on','off') COLLATE utf8mb4_unicode_ci DEFAULT 'off',
  `sort` int(11) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tb_category_promotion`
--

INSERT INTO `tb_category_promotion` (`id`, `name_th`, `name_en`, `status`, `sort`, `created`, `updated`) VALUES
(1, 'ปีใหม่', 'new year', 'on', 1, '2021-10-29 14:51:22', '2021-10-29 14:51:22');

-- --------------------------------------------------------

--
-- Table structure for table `tb_complaint`
--

CREATE TABLE `tb_complaint` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `complaint_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `branch_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_phone` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remark` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tb_complaint`
--

INSERT INTO `tb_complaint` (`id`, `complaint_name`, `branch_name`, `customer_name`, `customer_email`, `customer_phone`, `remark`, `created`, `updated`) VALUES
(1, 'การส่ง', 'กทม', 'สรรเพชญ', 'khuk@hotmail.co.th', '08514854154', 'ส่งช้า', '2021-11-01 08:01:43', '2021-11-01 08:01:43'),
(2, '1', '2', '3', '4', '5', '6', '2021-11-01 16:22:52', '2021-11-01 16:22:52');

-- --------------------------------------------------------

--
-- Table structure for table `tb_contact`
--

CREATE TABLE `tb_contact` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_map` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_name_th` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_name_en` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address_th` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `address_en` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_th` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_en` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_th` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_en` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `map_th` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `map_en` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `detail_th` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `detail_en` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `openhour_th` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `openhour_en` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `facebook_link` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `line_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `instagram_link` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `youtube_link` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tb_contact`
--

INSERT INTO `tb_contact` (`id`, `image`, `image_map`, `company_name_th`, `company_name_en`, `address_th`, `address_en`, `email_th`, `email_en`, `phone_th`, `phone_en`, `map_th`, `map_en`, `detail_th`, `detail_en`, `openhour_th`, `openhour_en`, `facebook_link`, `line_id`, `instagram_link`, `youtube_link`, `created`, `updated`) VALUES
(1, 'uploads/img/img-contact.png', 'uploads/img/map.jpg', 'บิลดิ้งวิลล์', 'BuildingVille', '81/107 ซอยภูมิจิตร ถนนพระราม4 แขวงพระโขนง เขตคลองเตย กทม. 10110', '81/107 soi phumjit phraram si road Phra Khanong, Khlong Toei, bangkok 10110', 'cs@buildingville.com', 'cs@buildingville.com', '02-000-0000', '02-000-0000', 'https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d7752.22558089211!2d100.595166!3d13.711618!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x30e29fbfa60943a3%3A0xd260f021deceee4b!2s81!5e0!3m2!1sth!2sth!4v1635222952534!5m2!1sth!2sth', 'https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d7752.22558089211!2d100.595166!3d13.711618!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x30e29fbfa60943a3%3A0xd260f021deceee4b!2s81!5e0!3m2!1sth!2sth!4v1635222952534!5m2!1sth!2sth', 'ท่านสามารถส่งความคิดเห็น คำแนะนำ คำติชม หรือสอบถามเกี่ยวกับสินค้าและการบริการของทางเราโดยการกรอกแบบฟอร์มด้านล่างให้ครบถ้วน ทางเราจะติดต่อกลับไปหาท่านอย่างเร็วที่สุด\r\n\r\n', 'detail', '08.30 - 19.00', '08.30 - 19.00', 'facebook', 'line', 'instagrame', 'youtube', '2021-10-20 12:23:32', '2021-11-01 09:51:43');

-- --------------------------------------------------------

--
-- Table structure for table `tb_faq`
--

CREATE TABLE `tb_faq` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name_th` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_en` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `detail_th` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `detail_en` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('on','off') COLLATE utf8mb4_unicode_ci DEFAULT 'off',
  `sort` int(11) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tb_faq`
--

INSERT INTO `tb_faq` (`id`, `name_th`, `name_en`, `detail_th`, `detail_en`, `status`, `sort`, `created`, `updated`) VALUES
(1, '5', '7', '6', '8', 'on', 1, '2021-11-01 13:46:10', '2021-11-01 13:46:43');

-- --------------------------------------------------------

--
-- Table structure for table `tb_filter`
--

CREATE TABLE `tb_filter` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_product_id` int(11) NOT NULL,
  `name_th` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_en` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` enum('primary','secondary') COLLATE utf8mb4_unicode_ci DEFAULT 'primary',
  `status` enum('on','off') COLLATE utf8mb4_unicode_ci DEFAULT 'off',
  `deleted` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tb_gallery`
--

CREATE TABLE `tb_gallery` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `_id` int(11) NOT NULL,
  `type` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `delete_status` enum('off','on') COLLATE utf8mb4_unicode_ci DEFAULT 'off',
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `deleted` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tb_idea`
--

CREATE TABLE `tb_idea` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_idea_id` int(11) DEFAULT NULL,
  `image` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name_th` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_en` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `detail_th` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `detail_en` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `view_visitors` int(11) NOT NULL,
  `status` enum('on','off') COLLATE utf8mb4_unicode_ci DEFAULT 'off',
  `sort` int(11) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tb_idea`
--

INSERT INTO `tb_idea` (`id`, `category_idea_id`, `image`, `name_th`, `name_en`, `detail_th`, `detail_en`, `view_visitors`, `status`, `sort`, `created`, `updated`) VALUES
(1, 1, NULL, 'น่ารู้', 'nharue', '<p>รายละเอียด</p>', '<p>detail</p>', 0, 'on', 1, '2021-11-01 10:39:17', '2021-11-01 10:39:17'),
(2, 1, NULL, 'ไอเดียแต่งกระเบื้องห้องนั่งเล่นเพิ่มเติมให้มีสไตล์a', 'idea for living rooma', 'สำหรับผู้ที่ชื่นชอบห้องโทนสีเบจ กระเบื้องสีเบจสามารถช่วยปรับ Mood & Tone ของห้องได้เช่นเดียวกัน ทำให้ห้องดูกว้าง ไม่อึดอัด การเลือกใช้กระเบื้องที่ แข็งแรงและทนทาน ช่วยให้มีคุณภาพการใช้งานที่ยาวนาน และคงทนa', 'detail for ideaa', 0, 'on', 2, '2021-10-21 17:21:03', '2021-10-21 17:40:46'),
(3, 1, NULL, 'การแต่งห้อง', '', 'ไอเดียแต่งห้อง', '', 0, 'on', 3, '2021-10-26 10:57:34', '2021-10-26 10:57:34'),
(4, 1, NULL, 'ไอเดีย', 'idea', 'แนวคิดการแต่งห้อง', 'asdasdsazxcafd', 0, 'on', 4, '2021-10-26 15:59:49', '2021-10-26 15:59:49'),
(5, 1, NULL, 'ไอเดีย', 'idea', 'แนวคิดการแต่งห้อง', 'asdasdsazxcafd', 0, 'on', 5, '2021-10-26 15:59:55', '2021-10-26 15:59:55'),
(6, 1, NULL, 'ไอเดีย', 'idea', 'แนวคิดการแต่งห้อง', 'asdasdsazxcafd', 0, 'on', 6, '2021-10-26 15:59:58', '2021-10-26 15:59:58'),
(7, 1, NULL, 'ไอเดีย', 'idea', 'แนวคิดการแต่งห้อง', 'asdasdsazxcafd', 0, 'on', 7, '2021-10-26 16:00:01', '2021-10-26 16:00:01'),
(8, 1, NULL, 'ไอเดีย', 'idea', 'แนวคิดการแต่งห้อง', 'asdasdsazxcafd', 0, 'on', 8, '2021-10-26 16:00:04', '2021-10-26 16:00:04'),
(9, 2, NULL, 'ไอเดีย', 'idea', 'แนวคิดการแต่งห้อง', 'asdasdsazxcafd', 0, 'on', 9, '2021-10-26 16:00:07', '2021-10-26 16:00:07'),
(10, 2, NULL, 'ไอเดีย', 'idea', 'แนวคิดการแต่งห้อง', 'asdasdsazxcafd', 0, 'on', 10, '2021-10-26 16:00:11', '2021-10-26 16:00:11'),
(11, 2, NULL, 'ไอเดีย', 'idea', 'แนวคิดการแต่งห้อง', 'asdasdsazxcafd', 0, 'on', 11, '2021-10-26 16:00:14', '2021-10-26 16:00:14'),
(12, 2, NULL, 'ไอเดีย', 'idea', 'แนวคิดการแต่งห้อง', 'asdasdsazxcafd', 0, 'on', 12, '2021-10-26 16:00:16', '2021-10-26 16:00:16'),
(13, 2, NULL, 'ไอเดีย', 'idea', 'แนวคิดการแต่งห้อง', 'asdasdsazxcafd', 0, 'on', 13, '2021-10-26 16:00:19', '2021-10-26 16:00:19'),
(14, 2, NULL, 'ไอเดีย', 'idea', 'แนวคิดการแต่งห้อง', 'asdasdsazxcafd', 0, 'on', 14, '2021-10-26 16:00:22', '2021-10-26 16:00:22'),
(15, 2, NULL, 'ไอเดีย', 'idea', 'แนวคิดการแต่งห้อง', 'asdasdsazxcafd', 0, 'on', 15, '2021-10-26 16:00:24', '2021-10-26 16:00:24');

-- --------------------------------------------------------

--
-- Table structure for table `tb_join_job`
--

CREATE TABLE `tb_join_job` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name_th` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_en` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `detail_th` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `detail_en` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `delete_status` enum('off','on') COLLATE utf8mb4_unicode_ci DEFAULT 'off',
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `deleted` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tb_join_job`
--

INSERT INTO `tb_join_job` (`id`, `name_th`, `name_en`, `detail_th`, `detail_en`, `amount`, `status`, `delete_status`, `created`, `updated`, `deleted`) VALUES
(1, 'ทดสอบ', 'test', 'ฟหก', 'asd', '5', 'on', 'off', '2021-12-13 11:08:17', '2021-12-13 11:08:17', '2021-12-13 11:08:17');

-- --------------------------------------------------------

--
-- Table structure for table `tb_join_supplier`
--

CREATE TABLE `tb_join_supplier` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tel_number` varchar(12) COLLATE utf8mb4_unicode_ci NOT NULL,
  `line` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `facebook` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(3) COLLATE utf8mb4_unicode_ci NOT NULL,
  `delete_status` enum('off','on') COLLATE utf8mb4_unicode_ci DEFAULT 'off',
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `deleted` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tb_join_vender`
--

CREATE TABLE `tb_join_vender` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type_1` varchar(3) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type_2` varchar(3) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type_3` varchar(3) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_tel_number` varchar(12) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tel_number` varchar(12) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `website` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_detail` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `group_id` int(11) NOT NULL,
  `manufacturer` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `doc_1` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `doc_2` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `doc_3` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `doc_4` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `delete_status` enum('off','on') COLLATE utf8mb4_unicode_ci DEFAULT 'off',
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `deleted` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tb_join_work`
--

CREATE TABLE `tb_join_work` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nickname` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `age` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `job` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tel_number` varchar(12) COLLATE utf8mb4_unicode_ci NOT NULL,
  `line` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `facebook` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `delete_status` enum('off','on') COLLATE utf8mb4_unicode_ci DEFAULT 'off',
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `deleted` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tb_join_work`
--

INSERT INTO `tb_join_work` (`id`, `name`, `nickname`, `age`, `job`, `address`, `tel_number`, `line`, `facebook`, `email`, `note`, `delete_status`, `created`, `updated`, `deleted`) VALUES
(1, '1', '2', '3', '2,5,7,8,11,12,14,16', '4', '5', '6', '7', '8', '9', 'off', '2021-12-13 13:22:38', '2021-12-13 13:22:38', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tb_logs`
--

CREATE TABLE `tb_logs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type_log` enum('frontend','backend') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `error_log` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `error_line` int(11) DEFAULT NULL,
  `error_url` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tb_menu`
--

CREATE TABLE `tb_menu` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `_id` int(11) DEFAULT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` enum('main','secondary') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sort` int(11) DEFAULT NULL,
  `status` enum('on','off') COLLATE utf8mb4_unicode_ci DEFAULT 'on',
  `delete_status` enum('on','off') COLLATE utf8mb4_unicode_ci DEFAULT 'off',
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `deleted` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tb_menu`
--

INSERT INTO `tb_menu` (`id`, `_id`, `name`, `url`, `icon`, `position`, `sort`, `status`, `delete_status`, `created`, `updated`, `deleted`) VALUES
(1, 19, 'ประเภทไอเดียและเรื่องน่ารู้', '/categoryidea', NULL, 'secondary', 14, 'on', 'off', '2021-10-20 16:30:33', '2021-11-02 12:06:31', NULL),
(2, 19, 'ไอเดียและเรื่องน่ารู้', '/idea', NULL, 'secondary', 15, 'on', 'off', '2021-10-20 16:31:03', '2021-11-02 12:06:31', NULL),
(3, 19, 'ติดต่อเรา', '/contact', NULL, 'secondary', 16, 'on', 'off', '2021-10-20 16:31:40', '2021-11-02 12:06:31', NULL),
(4, 19, 'ศูนย์ช่วยเหลือ', '/setting', NULL, 'secondary', 17, 'on', 'off', '2021-10-20 16:32:04', '2021-11-02 12:06:31', NULL),
(5, NULL, 'ข้อมูลใบเสนอราคา', '/requestquote', NULL, 'main', 18, 'on', 'off', '2021-10-20 16:32:34', '2021-11-02 12:06:31', NULL),
(7, 19, 'แบรนด์เนอร์', '/banner', NULL, 'secondary', 13, 'on', 'off', '2021-10-28 09:49:04', '2021-11-02 12:06:31', NULL),
(8, NULL, 'ประเภทแคตตาล็อก', '/categorycatalog', NULL, 'main', 11, 'on', 'off', '2021-10-28 12:13:36', '2021-11-02 12:06:31', NULL),
(9, NULL, 'แคตตาล็อก', '/catalog', NULL, 'main', 12, 'on', 'off', '2021-10-28 12:14:09', '2021-11-02 12:06:31', NULL),
(10, NULL, 'ประเภทโปรโมชั่น', '/categorypromotion', NULL, 'main', 9, 'on', 'off', '2021-10-29 14:41:40', '2021-11-02 12:06:31', NULL),
(11, NULL, 'โปรโมชั่น', '/promotion', NULL, 'main', 10, 'on', 'off', '2021-10-29 14:42:21', '2021-11-02 12:06:31', NULL),
(12, 19, 'ตั้งค่าแปลภาษา', '/setlang', NULL, 'secondary', 8, 'on', 'off', '2021-11-01 13:10:55', '2021-11-02 12:06:31', NULL),
(13, 19, 'คำถามที่พบบ่อย', '/faq', NULL, 'secondary', 7, 'on', 'off', '2021-11-01 13:11:47', '2021-11-02 12:06:31', NULL),
(14, 18, 'แบรนด์สินค้า', '/brand', NULL, 'secondary', 7, 'on', 'off', '2021-11-01 13:12:27', '2021-11-03 09:38:59', NULL),
(15, NULL, 'แจ้งปัญหา', '/complaint', NULL, 'main', 5, 'on', 'off', '2021-11-01 13:12:59', '2021-11-02 12:06:31', NULL),
(16, 18, 'หมวดหมู่สินค้า', '/categoryproduct', NULL, 'secondary', 5, 'on', 'off', '2021-11-02 12:02:44', '2021-11-03 09:38:59', NULL),
(17, 19, 'ข้อมูลสาขา', '/branch', NULL, 'secondary', 3, 'on', 'off', '2021-11-02 12:03:14', '2021-11-02 12:06:55', NULL),
(18, NULL, 'จัดการสินค้า', '/', NULL, 'main', 2, 'on', 'off', '2021-11-02 12:05:38', '2021-11-02 12:06:31', NULL),
(19, NULL, 'ตั้งค่าระบบ', '/', NULL, 'main', 1, 'on', 'off', '2021-11-02 12:06:31', '2021-11-02 12:11:23', NULL),
(20, 18, 'ข้อมูลสินค้า', '/product', NULL, 'secondary', 1, 'on', 'off', '2021-11-03 09:38:59', '2021-11-03 09:38:59', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tb_news`
--

CREATE TABLE `tb_news` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_th` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_en` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `detail_th` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `detail_en` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `view_visitors` int(11) NOT NULL,
  `status` enum('on','off') COLLATE utf8mb4_unicode_ci DEFAULT 'off',
  `sort` int(11) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tb_product`
--

CREATE TABLE `tb_product` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand` int(11) NOT NULL,
  `name_th` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_en` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `detail_th` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `detail_en` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('on','off') COLLATE utf8mb4_unicode_ci DEFAULT 'off',
  `sort` int(11) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tb_product_category`
--

CREATE TABLE `tb_product_category` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `_id` int(11) NOT NULL,
  `image` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_th` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_en` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sort` int(11) DEFAULT NULL,
  `status` enum('on','off') COLLATE utf8mb4_unicode_ci DEFAULT 'on',
  `delete_status` enum('off','on') COLLATE utf8mb4_unicode_ci DEFAULT 'off',
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `deleted` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tb_product_detail`
--

CREATE TABLE `tb_product_detail` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `unit_id` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `discount` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `maximum_amount` int(11) NOT NULL,
  `weight` int(11) NOT NULL,
  `size` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deliver_type` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('on','off') COLLATE utf8mb4_unicode_ci DEFAULT 'off',
  `deleted` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tb_product_subcategory`
--

CREATE TABLE `tb_product_subcategory` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `prod_cat_id` int(11) NOT NULL,
  `img` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_th` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_en` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sort` int(11) DEFAULT NULL,
  `status` enum('on','off') COLLATE utf8mb4_unicode_ci DEFAULT 'on',
  `delete_status` enum('off','on') COLLATE utf8mb4_unicode_ci DEFAULT 'off',
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `deleted` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tb_product_type`
--

CREATE TABLE `tb_product_type` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `icon` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_th` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_en` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `img` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sort` int(11) DEFAULT NULL,
  `status` enum('on','off') COLLATE utf8mb4_unicode_ci DEFAULT 'on',
  `delete_status` enum('off','on') COLLATE utf8mb4_unicode_ci DEFAULT 'off',
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `deleted` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tb_promotion`
--

CREATE TABLE `tb_promotion` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_promotion_id` int(11) DEFAULT NULL,
  `image` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_th` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_en` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `detail_th` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `detail_en` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `view_visitors` int(11) NOT NULL,
  `status` enum('on','off') COLLATE utf8mb4_unicode_ci DEFAULT 'off',
  `sort` int(11) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tb_promotion`
--

INSERT INTO `tb_promotion` (`id`, `category_promotion_id`, `image`, `name_th`, `name_en`, `detail_th`, `detail_en`, `view_visitors`, `status`, `sort`, `created`, `updated`) VALUES
(1, 1, 'uploads/img/242131732_377573627353872_749214484004105164_n.jpg', 'name_th', 'name_en', 'th', 'en', 0, 'on', 1, '2021-10-29 16:12:08', '2021-10-29 16:48:44');

-- --------------------------------------------------------

--
-- Table structure for table `tb_province`
--

CREATE TABLE `tb_province` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name_th` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name_en` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zone` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tb_qa_product`
--

CREATE TABLE `tb_qa_product` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `title_th` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_en` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `decription_th` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `decription_en` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('on','off') COLLATE utf8mb4_unicode_ci DEFAULT 'off',
  `deleted` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tb_request_quote`
--

CREATE TABLE `tb_request_quote` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_company` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_phone` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_remark` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tb_request_quote`
--

INSERT INTO `tb_request_quote` (`id`, `customer_company`, `customer_name`, `customer_phone`, `customer_address`, `customer_remark`, `created`, `updated`) VALUES
(1, 'a', 'v', '1', '123', 'addwas', '2021-10-26 11:16:07', '2021-10-26 11:16:07'),
(2, 'a', 'b', 'c', 'd', '3', '2021-11-03 16:58:40', '2021-11-03 16:58:40'),
(3, '7', '8', '9', '1', '0', '2021-11-03 17:00:29', '2021-11-03 17:00:29'),
(4, 'q', 'w', 'e', 'r', 't', '2021-11-03 17:01:47', '2021-11-03 17:01:47');

-- --------------------------------------------------------

--
-- Table structure for table `tb_role`
--

CREATE TABLE `tb_role` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `detail` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('on','off') COLLATE utf8mb4_unicode_ci DEFAULT 'on',
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tb_role`
--

INSERT INTO `tb_role` (`id`, `name`, `detail`, `status`, `created`, `updated`) VALUES
(1, 'admin', NULL, 'on', '2021-10-20 16:36:32', '2021-10-20 16:36:32');

-- --------------------------------------------------------

--
-- Table structure for table `tb_role_list`
--

CREATE TABLE `tb_role_list` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` int(11) DEFAULT NULL,
  `menu_id` int(11) DEFAULT NULL,
  `read` enum('on','off') COLLATE utf8mb4_unicode_ci DEFAULT 'off',
  `add` enum('on','off') COLLATE utf8mb4_unicode_ci DEFAULT 'off',
  `edit` enum('on','off') COLLATE utf8mb4_unicode_ci DEFAULT 'off',
  `delete` enum('on','off') COLLATE utf8mb4_unicode_ci DEFAULT 'off',
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tb_role_list`
--

INSERT INTO `tb_role_list` (`id`, `role_id`, `menu_id`, `read`, `add`, `edit`, `delete`, `created`, `updated`) VALUES
(1, 1, 6, 'on', 'on', 'on', 'on', '2021-10-20 16:36:59', '2021-10-20 16:36:59'),
(2, 1, 2, 'on', 'on', 'on', 'on', '2021-10-20 16:36:59', '2021-11-03 09:39:57'),
(3, 1, 3, 'on', 'on', 'on', 'on', '2021-10-20 16:36:59', '2021-11-03 09:39:57'),
(4, 1, 4, 'on', 'on', 'on', 'on', '2021-10-20 16:36:59', '2021-11-03 09:39:57'),
(5, 1, 5, 'on', 'on', 'on', 'on', '2021-10-20 16:36:59', '2021-11-03 09:39:57'),
(6, 1, 1, 'on', 'on', 'on', 'on', '2021-10-20 17:02:17', '2021-11-03 09:39:57'),
(7, 1, 7, 'on', 'on', 'on', 'on', '2021-10-28 09:50:48', '2021-11-03 09:39:57'),
(8, 1, 8, 'on', 'on', 'on', 'on', '2021-10-28 12:16:13', '2021-11-03 09:39:57'),
(9, 1, 9, 'on', 'on', 'on', 'on', '2021-10-28 12:16:13', '2021-11-03 09:39:57'),
(10, 1, 10, 'on', 'on', 'on', 'on', '2021-10-29 14:43:03', '2021-11-03 09:39:57'),
(11, 1, 11, 'on', 'on', 'on', 'on', '2021-10-29 14:43:03', '2021-11-03 09:39:57'),
(12, 1, 12, 'on', 'on', 'on', 'on', '2021-11-01 13:13:45', '2021-11-03 09:39:57'),
(13, 1, 13, 'on', 'on', 'on', 'on', '2021-11-01 13:13:45', '2021-11-03 09:39:57'),
(14, 1, 14, 'on', 'on', 'on', 'on', '2021-11-01 13:13:45', '2021-11-03 09:39:57'),
(15, 1, 15, 'on', 'on', 'on', 'on', '2021-11-01 13:13:45', '2021-11-03 09:39:57'),
(16, 1, 16, 'on', 'on', 'on', 'on', '2021-11-02 12:09:32', '2021-11-03 09:39:57'),
(17, 1, 17, 'on', 'on', 'on', 'on', '2021-11-02 12:09:32', '2021-11-03 09:39:57'),
(18, 1, 18, 'on', 'on', 'on', 'on', '2021-11-02 14:11:50', '2021-11-02 14:11:50'),
(19, 1, 19, 'on', 'on', 'on', 'on', '2021-11-02 14:11:50', '2021-11-02 14:11:50'),
(20, 1, 20, 'on', 'on', 'on', 'on', '2021-11-03 09:39:57', '2021-11-03 09:39:57');

-- --------------------------------------------------------

--
-- Table structure for table `tb_setting`
--

CREATE TABLE `tb_setting` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name_th` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_en` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `detail_th` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `detail_en` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `view_visitors` int(11) NOT NULL,
  `status` enum('on','off') COLLATE utf8mb4_unicode_ci DEFAULT 'off',
  `sort` int(11) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tb_setting`
--

INSERT INTO `tb_setting` (`id`, `name_th`, `name_en`, `detail_th`, `detail_en`, `view_visitors`, `status`, `sort`, `created`, `updated`) VALUES
(1, 'วิธีการสั่งซื้อสินค้าa', 'name1a', ' <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n              <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n              <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n', 'detail1a', 0, 'on', 1, '2021-10-22 11:36:40', '2021-10-22 11:36:40'),
(2, 'วิธีการชำระเงิน', 'name2', ' <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n              <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n              <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n', 'detail2', 0, 'on', 1, '2021-10-22 05:43:35', '2021-10-22 05:43:35'),
(3, 'การจัดส่งสินค้า', 'ืname3', ' <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n              <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n              <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n', 'detail3', 0, 'on', NULL, '2021-10-26 05:24:09', '2021-10-26 05:24:09'),
(4, 'ตรวจสอบสถานะการจัดส่ง', 'ืname4', ' <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n              <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n              <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n', 'detail4', 0, 'on', NULL, '2021-10-26 05:24:09', '2021-10-26 05:24:09'),
(5, 'วิธีการรับสินค้าด้วยตัวเอง', 'ืname5', ' <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n              <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n              <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n', 'detail5', 0, 'on', NULL, '2021-10-26 05:25:13', '2021-10-26 05:25:13'),
(6, 'แจ้งแคลมสินค้า', 'ืname6', ' <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n              <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n              <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n', 'detail6', 0, 'on', NULL, '2021-10-26 05:25:13', '2021-10-26 05:25:13'),
(7, 'ขอใบเสนอราคา', 'ืname7', ' <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n              <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n              <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n', 'detail7', 0, 'on', NULL, '2021-10-26 05:25:37', '2021-10-26 05:25:37'),
(8, 'ร้องเรียนปัญหา', 'ืname8', ' <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n              <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n              <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n', 'detail8', 0, 'on', NULL, '2021-10-26 05:25:37', '2021-10-26 05:25:37'),
(9, 'คำถามที่พอบ่อย', 'ืname9', ' <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n              <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n              <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n', 'detail9', 0, 'on', NULL, '2021-10-26 05:25:53', '2021-10-26 05:25:53'),
(10, 'การเปลี่ยน คืนและยกเลิกสินค้า', 'ืname10', ' <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n              <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n              <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n', 'detail10', 0, 'on', NULL, '2021-10-26 05:25:53', '2021-10-26 05:25:53'),
(11, 'ความเป็นส่วนตัว', 'ืname11', ' <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n              <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n              <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n', 'detail11', 0, 'on', NULL, '2021-10-26 05:26:07', '2021-10-26 05:26:07'),
(12, 'การใช้คุกกี้', 'ืname12', ' <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n              <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n              <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n', 'detail12', 0, 'on', NULL, '2021-10-26 05:26:07', '2021-10-26 05:26:07');

-- --------------------------------------------------------

--
-- Table structure for table `tb_setting_language`
--

CREATE TABLE `tb_setting_language` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name_th` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_en` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `detail_th` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `detail_en` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tb_setting_language`
--

INSERT INTO `tb_setting_language` (`id`, `name_th`, `name_en`, `detail_th`, `detail_en`, `created`, `updated`) VALUES
(1, 'ชื่อ1', 'name1', 'รายละเอียด1', 'detail1', '2021-11-01 07:20:50', '2021-11-01 13:27:34');

-- --------------------------------------------------------

--
-- Table structure for table `tb_tag`
--

CREATE TABLE `tb_tag` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name_th` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_en` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('on','off') COLLATE utf8mb4_unicode_ci DEFAULT 'off',
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `deleted` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tb_tambon`
--

CREATE TABLE `tb_tambon` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `amupur_code` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postcode` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name_th` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name_en` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tb_unit`
--

CREATE TABLE `tb_unit` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name_th` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_en` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('on','off') COLLATE utf8mb4_unicode_ci DEFAULT 'off',
  `sort` int(11) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `deleted` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `role` int(11) DEFAULT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `detail` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('pending','inactive','active','banned') COLLATE utf8mb4_unicode_ci DEFAULT 'active',
  `last_login` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role`, `name`, `email`, `password`, `remember_token`, `detail`, `status`, `last_login`, `created`, `updated`) VALUES
(1, 1, 'Orange', 'orange_dev', '$2y$10$KyHouEZrI5lCS7jP3DDBVORIkknthl1rduh1AwBO0WPIgySXztP5S', NULL, NULL, 'active', NULL, '2021-10-20 22:11:30', '2021-10-20 22:11:30');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_about_me`
--
ALTER TABLE `tb_about_me`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_amupur`
--
ALTER TABLE `tb_amupur`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_application`
--
ALTER TABLE `tb_application`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_banner`
--
ALTER TABLE `tb_banner`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_branch`
--
ALTER TABLE `tb_branch`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_brand`
--
ALTER TABLE `tb_brand`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_catalog`
--
ALTER TABLE `tb_catalog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_category_catalog`
--
ALTER TABLE `tb_category_catalog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_category_idea`
--
ALTER TABLE `tb_category_idea`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_category_product`
--
ALTER TABLE `tb_category_product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_category_promotion`
--
ALTER TABLE `tb_category_promotion`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_complaint`
--
ALTER TABLE `tb_complaint`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_contact`
--
ALTER TABLE `tb_contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_faq`
--
ALTER TABLE `tb_faq`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_filter`
--
ALTER TABLE `tb_filter`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_gallery`
--
ALTER TABLE `tb_gallery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_idea`
--
ALTER TABLE `tb_idea`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_join_job`
--
ALTER TABLE `tb_join_job`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_join_supplier`
--
ALTER TABLE `tb_join_supplier`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_join_vender`
--
ALTER TABLE `tb_join_vender`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_join_work`
--
ALTER TABLE `tb_join_work`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_logs`
--
ALTER TABLE `tb_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_menu`
--
ALTER TABLE `tb_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_news`
--
ALTER TABLE `tb_news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_product`
--
ALTER TABLE `tb_product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_product_category`
--
ALTER TABLE `tb_product_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_product_detail`
--
ALTER TABLE `tb_product_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_product_subcategory`
--
ALTER TABLE `tb_product_subcategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_product_type`
--
ALTER TABLE `tb_product_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_promotion`
--
ALTER TABLE `tb_promotion`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_province`
--
ALTER TABLE `tb_province`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_qa_product`
--
ALTER TABLE `tb_qa_product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_request_quote`
--
ALTER TABLE `tb_request_quote`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_role`
--
ALTER TABLE `tb_role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_role_list`
--
ALTER TABLE `tb_role_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_setting`
--
ALTER TABLE `tb_setting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_setting_language`
--
ALTER TABLE `tb_setting_language`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_tag`
--
ALTER TABLE `tb_tag`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_tambon`
--
ALTER TABLE `tb_tambon`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_unit`
--
ALTER TABLE `tb_unit`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `tb_about_me`
--
ALTER TABLE `tb_about_me`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tb_amupur`
--
ALTER TABLE `tb_amupur`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tb_application`
--
ALTER TABLE `tb_application`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tb_banner`
--
ALTER TABLE `tb_banner`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tb_branch`
--
ALTER TABLE `tb_branch`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tb_brand`
--
ALTER TABLE `tb_brand`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tb_catalog`
--
ALTER TABLE `tb_catalog`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tb_category_catalog`
--
ALTER TABLE `tb_category_catalog`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tb_category_idea`
--
ALTER TABLE `tb_category_idea`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tb_category_product`
--
ALTER TABLE `tb_category_product`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tb_category_promotion`
--
ALTER TABLE `tb_category_promotion`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tb_complaint`
--
ALTER TABLE `tb_complaint`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tb_contact`
--
ALTER TABLE `tb_contact`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tb_faq`
--
ALTER TABLE `tb_faq`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tb_filter`
--
ALTER TABLE `tb_filter`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tb_gallery`
--
ALTER TABLE `tb_gallery`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tb_idea`
--
ALTER TABLE `tb_idea`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `tb_join_job`
--
ALTER TABLE `tb_join_job`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tb_join_supplier`
--
ALTER TABLE `tb_join_supplier`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tb_join_vender`
--
ALTER TABLE `tb_join_vender`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tb_join_work`
--
ALTER TABLE `tb_join_work`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tb_logs`
--
ALTER TABLE `tb_logs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tb_menu`
--
ALTER TABLE `tb_menu`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `tb_news`
--
ALTER TABLE `tb_news`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tb_product`
--
ALTER TABLE `tb_product`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tb_product_category`
--
ALTER TABLE `tb_product_category`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tb_product_detail`
--
ALTER TABLE `tb_product_detail`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tb_product_subcategory`
--
ALTER TABLE `tb_product_subcategory`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tb_product_type`
--
ALTER TABLE `tb_product_type`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tb_promotion`
--
ALTER TABLE `tb_promotion`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tb_province`
--
ALTER TABLE `tb_province`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tb_qa_product`
--
ALTER TABLE `tb_qa_product`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tb_request_quote`
--
ALTER TABLE `tb_request_quote`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tb_role`
--
ALTER TABLE `tb_role`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tb_role_list`
--
ALTER TABLE `tb_role_list`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `tb_setting`
--
ALTER TABLE `tb_setting`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tb_setting_language`
--
ALTER TABLE `tb_setting_language`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tb_tag`
--
ALTER TABLE `tb_tag`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tb_tambon`
--
ALTER TABLE `tb_tambon`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tb_unit`
--
ALTER TABLE `tb_unit`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
