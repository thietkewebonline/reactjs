-- phpMyAdmin SQL Dump
-- version 4.7.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Dec 06, 2017 at 04:58 PM
-- Server version: 5.6.35
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `aqc`
--

-- --------------------------------------------------------

--
-- Table structure for table `cp_articles`
--

CREATE TABLE `cp_articles` (
  `id` int(11) NOT NULL,
  `createdDate` date NOT NULL,
  `createdBy` int(11) NOT NULL,
  `modifiedDate` date NOT NULL,
  `modifiedBy` int(11) DEFAULT NULL,
  `title` varchar(250) NOT NULL,
  `slug` varchar(250) NOT NULL,
  `categoryId` int(11) NOT NULL,
  `featured` tinyint(4) NOT NULL DEFAULT '0',
  `slide` tinyint(4) NOT NULL DEFAULT '0',
  `introImage` varchar(250) DEFAULT NULL,
  `introText` text NOT NULL,
  `fullText` text NOT NULL,
  `hits` int(11) NOT NULL DEFAULT '1',
  `state` tinyint(4) NOT NULL DEFAULT '1',
  `path` varchar(250) DEFAULT NULL,
  `description` varchar(250) DEFAULT NULL,
  `keyword` varchar(250) DEFAULT NULL,
  `title_en` varchar(255) NOT NULL,
  `slug_en` varchar(255) NOT NULL,
  `introText_en` text NOT NULL,
  `fullText_en` text NOT NULL,
  `ordering` int(11) NOT NULL,
  `seo_title` text NOT NULL,
  `seo_keyword` text NOT NULL,
  `seo_description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `cp_categories`
--

CREATE TABLE `cp_categories` (
  `id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `slug` varchar(250) DEFAULT NULL,
  `parents` int(11) NOT NULL DEFAULT '0',
  `level` tinyint(4) NOT NULL DEFAULT '1',
  `lft` int(11) DEFAULT '0',
  `rgt` int(11) DEFAULT '0',
  `path` varchar(200) NOT NULL,
  `state` tinyint(4) NOT NULL DEFAULT '1',
  `description` varchar(250) DEFAULT NULL,
  `keyword` varchar(250) DEFAULT NULL,
  `name_en` varchar(255) NOT NULL,
  `slug_en` varchar(255) NOT NULL,
  `seo_title` text NOT NULL,
  `seo_keyword` text NOT NULL,
  `seo_description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cp_categories`
--

INSERT INTO `cp_categories` (`id`, `name`, `slug`, `parents`, `level`, `lft`, `rgt`, `path`, `state`, `description`, `keyword`, `name_en`, `slug_en`, `seo_title`, `seo_keyword`, `seo_description`) VALUES
(1003, 'Root', 'root', 0, 0, 0, 35, '', 1, '', '', '', '', '', '', ''),
(1013, 'Tin tức', 'tin-tuc', 1003, 1, 21, 22, '', 1, '0', '', '', '', '', '', ''),
(1016, 'Dịch vụ', 'dich-vu', 1003, 1, 23, 24, '', 1, '0', NULL, '', '', '', '', ''),
(1017, 'Trung tâm báo chí', 'trung-tam-bao-chi', 1003, 1, 25, 26, '', 0, '0', NULL, '', '', '', '', ''),
(1018, 'Tin tức du lịch', 'tin-tuc-du-lich', 1003, 1, 27, 28, '', 0, '0', NULL, '', '', '', '', ''),
(1019, 'Tuyển dụng', 'tuyen-dung', 1003, 1, 29, 30, '', 0, '0', NULL, '', '', '', '', ''),
(1020, 'Hình ảnh - Video', 'hinh-anh-video', 1003, 1, 31, 32, '', 1, '0', NULL, '', '', '', '', ''),
(1021, 'Reviews', 'reviews', 1003, 1, 33, 34, '', 0, '0', NULL, '', '', 'Reviews Du Lịch Bình Định - Phú Yên', 'Reviews,Du Lịch Bình Định,Phú Yên,du lich', 'Reviews Du Lịch Bình Định - Phú Yên mới nhất năm 2017. Cập nhật địa điểm du lịch mới.');

-- --------------------------------------------------------

--
-- Table structure for table `cp_configuration`
--

CREATE TABLE `cp_configuration` (
  `id` smallint(3) UNSIGNED NOT NULL,
  `title` varchar(150) NOT NULL,
  `code` varchar(150) NOT NULL,
  `value` text,
  `description` text,
  `seo_title` text NOT NULL,
  `seo_keyword` text NOT NULL,
  `seo_description` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cp_configuration`
--

INSERT INTO `cp_configuration` (`id`, `title`, `code`, `value`, `description`, `seo_title`, `seo_keyword`, `seo_description`) VALUES
(1, 'Mô tả', 'description', 'SNT', '<p>Meta data</p>', 'Sàn giao dịch bất động sản Anh Quân', 'Bất động sản Anh Quân, bất động sản Quy Nhơn, FLC Quy Nhơn, Căn hộ cao cấp FLC', 'Sàn giao dịch bất động sản Anh Quân là đơn vị phân phối chính thức các dự án bất động sản cảu tập đoàn FLC tại Quy Nhơn, chi tiết tư vấn liên hệ 0972 01 02 03');

-- --------------------------------------------------------

--
-- Table structure for table `cp_custom`
--

CREATE TABLE `cp_custom` (
  `id` int(11) NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `published` tinyint(4) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title_en` varchar(255) CHARACTER SET utf8 NOT NULL,
  `slug_en` varchar(255) CHARACTER SET utf8 NOT NULL,
  `content_en` text CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cp_custom`
--

INSERT INTO `cp_custom` (`id`, `slug`, `content`, `published`, `title`, `title_en`, `slug_en`, `content_en`) VALUES
(2, 'h-tr-kinh-doanh', '<section class=\"widget widget-searce\">\n<h3 class=\"widget-title ui-title-inner\">HỖ TRỢ KINH DOANH</h3>\n<div class=\"ui-decor-1\"></div>\n<div class=\"widget-content\">\n<div class=\"form-sidebar__info\">Ms Ng&acirc;n</div>\n<div class=\"form-sidebar__emphasis\">0905 775 764</div>\n<div class=\"form-sidebar__info\">Mr Thắng</div>\n<div class=\"form-sidebar__emphasis\">0909 789 970</div>\n</div>\n</section>', 0, 'Hỗ trợ kinh doanh', '', '', '<div class=\"fb-page\" data-href=\"https://www.facebook.com/xunautravel/\" data-small-header=\"true\" data-adapt-container-width=\"true\" data-hide-cover=\"false\" data-show-facepile=\"true\">\n<blockquote cite=\"https://www.facebook.com/xunautravel/\" class=\"fb-xfbml-parse-ignore\"><a href=\"https://www.facebook.com/xunautravel/\">Xứ Nẫu Travel</a></blockquote>\n</div>'),
(22, 'footer', '<div class=\"container\">\n<div class=\"row\">\n<div class=\"col-md-12\">\n<div class=\"b-contacts-1 b-contacts-1_mod-a block-table\">\n<div class=\" col-md-3 b-contacts-1__item block-table__cell\">\n<div class=\"b-contacts-1__info\">LOGISTICS</div>\n</div>\n<div class=\"col-md-6 b-contacts-1__item block-table__cell add\">\n<p class=\"b-contacts-1__title\">C&ocirc;ng ty TNHH Thương mại dịch vụ DNL</p>\n<p>Địa chỉ: 05 đường số 6, ấp 5, x&atilde; Phong Ph&uacute;, B&igrave;nh Ch&aacute;nh, Hồ Ch&iacute; Minh</p>\n<p>Điện thoại: 0283 620 3970 - Fax: 0283 620 397</p>\n<p>M&atilde; số thuế: 0312559578</p>\n</div>\n<div class=\" col-md-3 b-contacts-1__item block-table__cell\">\n<div class=\"b-contacts-1__info\">TRADE</div>\n</div>\n</div>\n<!-- end b-contacts--></div>\n</div>\n</div>', 0, 'Footer', '', '', ''),
(23, 'vn-ti-ng-b', '<h3 class=\"b-advantages-3__title ui-title-inner\"><a href=\"#\" class=\"b-advantages-5__link\">Vận tải đường bộ</a></h3>\n<div class=\"b-advantages-3__decor ui-decor-1\"></div>\n<div class=\"b-advantages-3__info\">Dịch vụ vận tải TNL nhanh ch&oacute;ng, tiết kiệm, đảm bảo mang đến sự h&agrave;i l&ograve;ng cho kh&aacute;ch h&agrave;ng.</div>', 0, 'Vận tải đường bộ', '', '', ''),
(25, 'hotline-menu', '<a class=\"header-main__btn btn btn-primary btn-effect\">0909 789 970</a>', 0, 'Hotline menu', '', '', ''),
(26, 'a-ch-di-slide', '<div class=\"container wow\">\n<div class=\"row\">\n<div class=\"col-xs-12\">\n<div class=\"section-contacts-2\">\n<div class=\"b-contacts-2 block-table\">\n<div class=\"b-contacts-2__item block-table__cell\">\n<div class=\"b-contacts-2__wrap\"><i class=\"b-contacts-2__icon fa fa-phone\"></i>\n<div class=\"b-contacts-2__inner\">\n<div class=\"b-contacts-2__title\">Gọi ch&uacute;ng t&ocirc;i</div>\n<div class=\"b-contacts-2__info b-contacts-2__info_lg\">0283 620 3970</div>\n</div>\n</div>\n</div>\n<div class=\"b-contacts-2__item block-table__cell\">\n<div class=\"b-contacts-2__wrap\"><i class=\"b-contacts-2__icon fa fa-envelope-o\"></i>\n<div class=\"b-contacts-2__inner\">\n<div class=\"b-contacts-2__title\">Email</div>\n<div class=\"b-contacts-2__info\">info@dnllogistic.com.vn</div>\n</div>\n</div>\n</div>\n<div class=\"b-contacts-2__item block-table__cell\">\n<div class=\"b-contacts-2__wrap\"><i class=\"b-contacts-2__icon fa fa-paper-plane-o\"></i>\n<div class=\"b-contacts-2__inner\">\n<div class=\"b-contacts-2__title\">Địa chỉ</div>\n<div class=\"b-contacts-2__info\">05 đường số 6, ấp 5, x&atilde; Phong Ph&uacute;, B&igrave;nh Ch&aacute;nh, HCM</div>\n</div>\n</div>\n</div>\n</div>\n<!-- end b-contacts--></div>\n</div>\n</div>\n</div>', 0, 'Địa chỉ dưới slide', '', '', ''),
(27, 'vn-ti-ng-thy', '<h3 class=\"b-advantages-3__title ui-title-inner\"><a href=\"#\" class=\"b-advantages-5__link\">Vận tải đường thủy</a></h3>\n<div class=\"b-advantages-3__decor ui-decor-1\"></div>\n<div class=\"b-advantages-3__info\">Dịch vụ vận tải TNL nhanh ch&oacute;ng, tiết kiệm, đảm bảo mang đến sự h&agrave;i l&ograve;ng cho kh&aacute;ch h&agrave;ng.</div>', 0, 'Vận tải đường thủy', '', '', ''),
(28, 'vn-ti-bng-xe-ti-thng', '<h3 class=\"b-advantages-3__title ui-title-inner\"><a href=\"#\" class=\"b-advantages-5__link\">Vận tải bằng xe tải th&ugrave;ng</a></h3>\n<div class=\"b-advantages-3__decor ui-decor-1\"></div>\n<div class=\"b-advantages-3__info\">Dịch vụ vận tải TNL nhanh ch&oacute;ng, tiết kiệm, đảm bảo mang đến sự h&agrave;i l&ograve;ng cho kh&aacute;ch h&agrave;ng.</div>', 0, 'Vận tải bằng xe tải thùng', '', '', ''),
(31, 'vn-ti-tu-bin', '<h3 class=\"b-advantages-3__title ui-title-inner\"><a href=\"#\" class=\"b-advantages-5__link\">Vận tải t&agrave;u biển</a></h3>\n<div class=\"b-advantages-3__decor ui-decor-1\"></div>\n<div class=\"b-advantages-3__info\">Dịch vụ vận tải TNL nhanh ch&oacute;ng, tiết kiệm, đảm bảo mang đến sự h&agrave;i l&ograve;ng cho kh&aacute;ch h&agrave;ng.</div>', 0, 'Vận tải tàu biển', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `cp_customer`
--

CREATE TABLE `cp_customer` (
  `id` int(11) NOT NULL,
  `title` varchar(255) CHARACTER SET utf8 NOT NULL,
  `image` varchar(255) CHARACTER SET utf8 NOT NULL,
  `detail` text CHARACTER SET utf8 NOT NULL,
  `state` tinyint(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cp_customer`
--

INSERT INTO `cp_customer` (`id`, `title`, `image`, `detail`, `state`) VALUES
(1, 'Anh Hoàng Bách', '2012_jonge_man.jpg', '<p>T&ocirc;i đ&atilde; mua căn hộ FLC LUX CITY, t&ocirc;i rất h&agrave;i l&ograve;ng về c&aacute;c tiện &iacute;ch cũng như điều kiện , kh&ocirc;ng gian&nbsp; sống ở đ&acirc;y</p>', 1),
(2, 'Chị Ngọc Hằng', '2012_jonge_man1.jpg', '<p>Vợ chồng t&ocirc;i đ&atilde; hợp t&aacute;c với c&ocirc;ng ty Anh Qu&acirc;n nhiều năm qua, ch&uacute;ng t&ocirc;i hết sức h&agrave;i l&ograve;ng về dịch vụ chăm s&oacute;c kh&aacute;ch h&agrave;ng ở đ&acirc;y</p>', 1),
(3, 'Anh Hùng Đạm Phú Mỹ', '', '<p>Hy vọng được hợp t&aacute;c với Anh Qu&acirc;n trong thời gian đến, với những dự &aacute;n bất động sản mới</p>', 0);

-- --------------------------------------------------------

--
-- Table structure for table `cp_doitac`
--

CREATE TABLE `cp_doitac` (
  `id` int(11) NOT NULL,
  `title` varchar(250) NOT NULL,
  `slug` varchar(250) NOT NULL,
  `introImage` varchar(250) DEFAULT NULL,
  `image` varchar(250) DEFAULT NULL,
  `categoryId` int(11) NOT NULL,
  `detail` varchar(250) NOT NULL,
  `featured` tinyint(4) NOT NULL DEFAULT '0',
  `state` tinyint(4) NOT NULL DEFAULT '1',
  `price` varchar(250) DEFAULT NULL,
  `price_old` varchar(250) NOT NULL,
  `new` tinyint(4) DEFAULT NULL,
  `promotion` tinyint(4) DEFAULT NULL,
  `description` varchar(250) DEFAULT NULL,
  `keyword` varchar(250) DEFAULT NULL,
  `ordering` int(11) NOT NULL,
  `title_en` varchar(255) NOT NULL,
  `slug_en` varchar(255) NOT NULL,
  `detail_en` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cp_doitac`
--

INSERT INTO `cp_doitac` (`id`, `title`, `slug`, `introImage`, `image`, `categoryId`, `detail`, `featured`, `state`, `price`, `price_old`, `new`, `promotion`, `description`, `keyword`, `ordering`, `title_en`, `slug_en`, `detail_en`) VALUES
(12, 'STMICROELECTRONICS LTD.', 'No. 88, ZiHai Road, Zizhu Science Park, MinHang District', NULL, 'logo_cas.png', 1001, '+86 21 2418 8688', 0, 1, '', 'st.com', 0, 0, '', '', 0, 'STMICROELECTRONICS LTD.', 'No. 88, ZiHai Road, Zizhu Science Park, MinHang District', '0'),
(15, 'POWER INTEGRATION Inc', '5245 Hellyer Avenue San Jose, CA USA 95138', NULL, 'Vietnam-Airlines-Reviews-Vietnam-Airlines-Logo-3001.png', 1001, '(408) 414-9200', 0, 1, '', 'power.com', 0, 0, '', '', 0, 'POWER INTEGRATION Inc', '5245 Hellyer Avenue San Jose, CA USA 95138', '0'),
(16, 'MICROCHIP TECHNOLOGY Inc', '2355 West Chandler Blvd. Chandler, Arizona, USA 85224-6199', NULL, 'chi-nhanh-vietcombank1.png', 1001, '(480) 792-7200', 0, 1, '', 'microchip.com', 0, 0, '', '', 0, 'MICROCHIP TECHNOLOGY Inc', '2355 West Chandler Blvd. Chandler, Arizona, USA 85224-6199', '0'),
(20, 'SONY JAPAN WORLDWIDE ', 'Tokyo International PO Box 5100 Tokyo 100-31 Japan', NULL, 'vietinbank-sua-1.png', 1001, ' 011-81-3-5448-2111', 0, 1, '', 'sony.com', 0, 0, '', '', 0, 'SONY JAPAN WORLDWIDE ', 'Tokyo International PO Box 5100 Tokyo 100-31 Japan', '0');

-- --------------------------------------------------------

--
-- Table structure for table `cp_doitac_categories`
--

CREATE TABLE `cp_doitac_categories` (
  `id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `slug` varchar(250) DEFAULT NULL,
  `parents` int(11) NOT NULL DEFAULT '0',
  `level` tinyint(4) NOT NULL DEFAULT '1',
  `lft` int(11) DEFAULT '0',
  `rgt` int(11) DEFAULT '0',
  `path` varchar(200) NOT NULL,
  `state` tinyint(4) NOT NULL DEFAULT '1',
  `description` varchar(250) DEFAULT NULL,
  `keyword` varchar(250) DEFAULT NULL,
  `ordering` int(11) NOT NULL,
  `name_en` varchar(255) NOT NULL,
  `slug_en` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cp_doitac_categories`
--

INSERT INTO `cp_doitac_categories` (`id`, `name`, `slug`, `parents`, `level`, `lft`, `rgt`, `path`, `state`, `description`, `keyword`, `ordering`, `name_en`, `slug_en`) VALUES
(1000, 'Root', 'root', 0, 0, 0, 67, '', 1, NULL, NULL, 0, '', ''),
(1001, 'Đối tác', 'doi-tac', 1000, 1, 59, 60, '', 1, '', '', 0, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `cp_download`
--

CREATE TABLE `cp_download` (
  `id` int(11) NOT NULL,
  `image` varchar(250) NOT NULL,
  `title` varchar(250) DEFAULT NULL,
  `link` varchar(250) DEFAULT NULL,
  `description` varchar(500) DEFAULT NULL,
  `detail` varchar(255) NOT NULL,
  `title_en` varchar(255) NOT NULL,
  `detail_en` varchar(255) NOT NULL,
  `description_en` text NOT NULL,
  `link_en` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cp_download`
--

INSERT INTO `cp_download` (`id`, `image`, `title`, `link`, `description`, `detail`, `title_en`, `detail_en`, `description_en`, `link_en`) VALUES
(116, 'Netframe_4.0_.jpg', 'Netframe 4.0 ', 'http://acis.com.vn/source/download/dotNetFx40_Full_x86_x64.rar', '', '0', 'Netframe 4.0 ', '0', '0', 'http://acis.com.vn/source/download/dotNetFx40_Full_x86_x64.rar'),
(1004, 'ifunbox_logo.png', ' iFunbox', 'http://acis.com.vn/source/download/ifunbox.zip', '', '0', ' iFunbox', '0', '0', 'http://acis.com.vn/source/download/ifunbox.zip'),
(1006, 'EW.jpg', 'ESMART Trên Windows', 'http://acis.com.vn/source/download/eSmart_VN.rar', '', '0', 'ESMART on Windows', '0', '0', 'http://acis.com.vn/source/download/eSmart_VN.rar'),
(1007, 'specs_icon.jpg', 'Esmart trên Android', 'http://acis.com.vn/source/download/Esmart%20for%20android.rar', '', '0', 'ESMART on Android', '0', '0', 'http://acis.com.vn/source/download/Esmart%20for%20android.rar'),
(1008, 'acis_profile.png', 'Brochure Sản Phẩm', 'http://acis.com.vn/source/download/ACIS%20Smarthome%20profile.pdf', '', '0', 'ACIS SMARTHOME PROFILE', '0', '0', 'http://acis.com.vn/source/download/ACIS%20Smarthome%20profile.pdf'),
(1009, 'Untitled.png', 'Thông Số Kỹ thuật SP', 'http://acis.com.vn/source/download/Gi%E1%BA%A3i%20ph%C3%A1p%20nh%C3%A0%20th%C3%B4ng%20minh%20Easycontrol.rar', '', '0', 'Specification', '0', '0', 'http://acis.com.vn/source/download/Easycontrol%20Solution.rar'),
(1010, 'user_guide.JPG', 'Hướng Dẫn Sử Dụng SP', 'http://acis.com.vn/source/download/Gi%E1%BA%A3i%20ph%C3%A1p%20nh%C3%A0%20th%C3%B4ng%20minh%20Easycontrol.rar', '', '0', 'Manual use', '0', '0', 'http://acis.com.vn/source/download/Easycontrol%20Solution.rar'),
(1011, 'images.png', 'HDSD Phần mềm trên Windows', 'http://acis.com.vn/source/download/Phan%20mem/H%C6%AF%E1%BB%9ANG%20D%E1%BA%AAN%20THI%E1%BA%BET%20L%E1%BA%ACP%20PH%E1%BA%A6N%20M%E1%BB%80M%20TR%C3%8AN%20WINDOWS.pdf', '', '0', 'Manual use for software on Windows', '0', '0', 'http://acis.com.vn/source/download/Phan%20mem/English-%20software%20guide/INSTRUCTION%20FOR%20SOFTWARE%20ON%20WINDOWS.pdf'),
(1012, 'android-2.2-userguide_.png', 'HDSD Phần mềm cho Android, iOS', 'http://acis.com.vn/source/download/Phan%20mem/H%C6%AF%E1%BB%9ANG%20D%E1%BA%AAN%20THI%E1%BA%BET%20L%E1%BA%ACP%20PH%E1%BA%A6N%20M%E1%BB%80M%20TR%C3%8AN%20iOS%2CANDROID.pdf', '', '0', 'Manual use for software on Android, iOS', '0', '0', 'http://acis.com.vn/source/download/Phan%20mem/English-%20software%20guide/Android%20_%20iOS%20-EASYCONTROL.pdf'),
(1013, 'ACIS_TECHNOLOGY_CORPORATION.png', 'HDSD WEB CONTROL', 'http://acis.com.vn/source/download/Phan%20mem/WEB%20%C4%90I%E1%BB%80U%20KHI%E1%BB%82N%20EASYCONTROL.pdf', '', '0', 'MANUAL USE FOR WEB CONTROL', '0', '0', 'http://acis.com.vn/source/download/Phan%20mem/English-%20software%20guide/WEB%20CONTROLLING%20EASYCONTROL.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `cp_footer`
--

CREATE TABLE `cp_footer` (
  `id` int(11) NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `published` tinyint(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cp_footer`
--

INSERT INTO `cp_footer` (`id`, `content`, `published`) VALUES
(1, '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `cp_gallery`
--

CREATE TABLE `cp_gallery` (
  `id` int(11) NOT NULL,
  `title` varchar(250) NOT NULL,
  `alias` varchar(250) NOT NULL,
  `images` varchar(250) NOT NULL,
  `link` varchar(250) DEFAULT NULL,
  `description` varchar(500) DEFAULT NULL,
  `published` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cp_gallery`
--

INSERT INTO `cp_gallery` (`id`, `title`, `alias`, `images`, `link`, `description`, `published`) VALUES
(116, 'Hình 1', '', 'IMG_1585.JPG', '#', '', 0),
(1004, 'Hình 2', '', 'IMG_1587.JPG', '#', '', 0),
(1005, 'Hình 3', '', 'cong_trinh_anh_truong.png', '', '', 0),
(1006, 'Hình 4', '', 'cong_trinh_anh_tu.jpg', '#', '', 0),
(1007, 'Hình 5', '', 'cong_trinh_anh_tu2.jpg', '', '', 0),
(1008, 'Hình 6', '', 'dinh_thu_anh_thành.png', '', '', 0),
(1009, 'Hình 7', '', 'cong_trinh_anh_thien2.jpg', '', '', 0),
(1010, 'Hình 8', '', 'biet_thu_chi_thuy.png', '', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `cp_media`
--

CREATE TABLE `cp_media` (
  `id` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `path` text NOT NULL,
  `thumbnailPath` text NOT NULL,
  `fileName` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cp_media`
--

INSERT INTO `cp_media` (`id`, `type`, `path`, `thumbnailPath`, `fileName`, `date`) VALUES
(1, 'image', '', 'ds', 'ds.jpg', '2014-09-29 04:11:36');

-- --------------------------------------------------------

--
-- Table structure for table `cp_menu`
--

CREATE TABLE `cp_menu` (
  `id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `slug` varchar(250) DEFAULT NULL,
  `parents` int(11) NOT NULL DEFAULT '0',
  `level` tinyint(4) NOT NULL DEFAULT '1',
  `lft` int(11) DEFAULT '0',
  `rgt` int(11) DEFAULT '0',
  `path` varchar(200) NOT NULL,
  `state` tinyint(4) NOT NULL DEFAULT '1',
  `link` varchar(45) DEFAULT NULL,
  `description` varchar(250) DEFAULT NULL,
  `keyword` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `cp_order`
--

CREATE TABLE `cp_order` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `customer_name` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `customer_email` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `customer_phone` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `customer_address` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `customer_info` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `detail` text COLLATE utf8_unicode_ci NOT NULL,
  `date_order` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cp_order`
--

INSERT INTO `cp_order` (`id`, `product_id`, `user_id`, `customer_name`, `customer_email`, `customer_phone`, `customer_address`, `customer_info`, `detail`, `date_order`) VALUES
(13, 0, 0, ' fdsfsdf', 'sdfsdfs@gmail.com', '012345678910', 'sdfsdf', 'dfsdfsdfsdf', '<div class=\'col-lg-6 col-sm-6 col-md-offset-4\'>\n	<h3>Thông tin đơn hàng</h3>\n	<div class=\'table-responsive\'>\n	<table class=\'table table-bordered\'>\n				<thead>\n					<tr class=\'title_cart\'>\n					  <td>Số lượng</td>\n					  <td>Sản phẩm</td>\n					  <td style=\'text-align:center\'>Giá</td>\n					  <td style=\'text-align:center\'>Thành tiền</td>					 \n					</tr>\n				</thead>			\n				<tr>\n					<td>1</td>\n					<td>Ốp lưng iphone64</td>\n					<td style=\'text-align:right\'>350,000.00 đ</td>\n					<td style=\'text-align:right\'>350,000.00 đ</td>\n					\n				</tr>			\n				<tr>\n					<td>3</td>\n					<td>Ốp lưng iphone81</td>\n					<td style=\'text-align:right\'>35,000.00 đ</td>\n					<td style=\'text-align:right\'>105,000.00 đ</td>\n					\n				</tr>\n				<tr>\n					  <td colspan=\'2\'>\n					  \n					  </td>\n					  <td style=\'text-align:right\'><strong>Số tiền phải trả</strong></td>\n					  <td style=\'text-align:right;font-weight: bold;\' >455,000.00 đ\n					  </td>\n					  \n				</tr>\n			</table>\n	</div>\n</div>', '2014-10-28 10:19:25'),
(16, 0, 1032, '5555555555555 5555555555555', 'yyy@yahoo.com', '0976543210', 'ttttt', '', '\n	<h3>Thông tin đơn hàng</h3>\n	<div class=\'table-responsive\'>\n	<table class=\'table table-bordered\'>\n				<thead>\n					<tr class=\'title_cart\'>\n					  <td>Số lượng</td>\n					  <td>Sản phẩm</td>\n					  <td style=\'text-align:center\'>Giá</td>\n					  <td style=\'text-align:center\'>Thành tiền</td>					 \n					</tr>\n				</thead>			\n				<tr>\n					<td>1</td>\n					<td>Ốp lưng iphone9</td>\n					<td style=\'text-align:right\'>69,000.00 đ</td>\n					<td style=\'text-align:right\'>69,000.00 đ</td>\n					\n				</tr>			\n				<tr>\n					<td>1</td>\n					<td>Ốp lưng iphone6</td>\n					<td style=\'text-align:right\'>45,000.00 đ</td>\n					<td style=\'text-align:right\'>45,000.00 đ</td>\n					\n				</tr>			\n				<tr>\n					<td>1</td>\n					<td>IPAD KAIYUE CAO CẤP 2/3/4</td>\n					<td style=\'text-align:right\'>270,000.00 đ</td>\n					<td style=\'text-align:right\'>270,000.00 đ</td>\n					\n				</tr>\n				<tr>\n					  <td colspan=\'2\'>\n					  \n					  </td>\n					  <td style=\'text-align:right\'><strong>Số tiền phải trả</strong></td>\n					  <td style=\'text-align:right;font-weight: bold;\' >384,000.00 đ\n					  </td>\n					  \n				</tr>\n			</table>	\n</div>', '2014-11-27 11:06:46');

-- --------------------------------------------------------

--
-- Table structure for table `cp_products`
--

CREATE TABLE `cp_products` (
  `id` int(11) NOT NULL,
  `gioithieu` text NOT NULL,
  `tienich` text NOT NULL,
  `tiendo` text NOT NULL,
  `title` varchar(250) NOT NULL,
  `slug` varchar(250) NOT NULL,
  `introImage` varchar(250) DEFAULT NULL,
  `image` varchar(250) DEFAULT NULL,
  `categoryId` varchar(255) NOT NULL,
  `detail` text NOT NULL,
  `featured` tinyint(4) NOT NULL DEFAULT '0',
  `state` tinyint(4) NOT NULL DEFAULT '1',
  `price` varchar(250) DEFAULT NULL,
  `price_old` varchar(250) NOT NULL,
  `new` tinyint(4) DEFAULT NULL,
  `promotion` tinyint(4) DEFAULT NULL,
  `seo_description` text,
  `seo_keyword` text,
  `ordering` int(11) NOT NULL,
  `seo_title` varchar(255) DEFAULT NULL,
  `vitri` text NOT NULL,
  `hinhanh` text NOT NULL,
  `video` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cp_products`
--

INSERT INTO `cp_products` (`id`, `gioithieu`, `tienich`, `tiendo`, `title`, `slug`, `introImage`, `image`, `categoryId`, `detail`, `featured`, `state`, `price`, `price_old`, `new`, `promotion`, `seo_description`, `seo_keyword`, `ordering`, `seo_title`, `vitri`, `hinhanh`, `video`) VALUES
(6, '<p>2 ng&agrave;y - 1 đ&ecirc;m</p>', '', '', 'FLC LUXCITY QUY NHƠN', 'flc-luxcity-quy-nhon', NULL, 'lux_16A.jpg', '1151', '0', 1, 1, '0', '0', 0, 0, '', '', 0, 'FLC LUXCITY QUY NHƠN', '', '', ''),
(9, '<p>3 ng&agrave;y - 2 đ&ecirc;m</p>', '<p>Xe</p>', '<p>H&agrave;ng ng&agrave;y</p>', 'FLC The Coastal Hill Quy Nhơn', 'flc-the-coastal-hill-quy-nhon', NULL, 'coastal_hill.jpg', '1153', '0', 1, 1, '0', '0', 0, 0, '', '', 4, 'FLC The Coastal Hill Quy Nhơn', '', '', ''),
(19, '<p>2 ng&agrave;y - 1 đ&ecirc;m</p>', '<p>T&agrave;u, xe</p>', '<p>H&agrave;ng ng&agrave;y</p>', 'Villa biệt thự', 'villa-biet-thu', NULL, 'resort2.jpg', '1154', '0', 1, 1, '0', '0', 0, 0, '', '', 6, 'Villa biệt thự', '', '', ''),
(20, '<p>1 ng&agrave;y</p>', '', '', 'FLC Sea Tower Quy Nhơn', 'flc-sea-tower-quy-nhon', NULL, 'flc-quy-nhon-sea-tower11.jpg', '1152', '0', 1, 1, '0', '0', 0, 0, '', '', 0, 'FLC Sea Tower Quy Nhơn', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `cp_products_categories`
--

CREATE TABLE `cp_products_categories` (
  `id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `slug` varchar(250) DEFAULT NULL,
  `parents` int(11) NOT NULL DEFAULT '0',
  `level` tinyint(4) NOT NULL DEFAULT '1',
  `lft` int(11) DEFAULT '0',
  `rgt` int(11) DEFAULT '0',
  `path` varchar(200) NOT NULL,
  `state` tinyint(4) NOT NULL DEFAULT '1',
  `seo_description` varchar(250) DEFAULT NULL,
  `seo_keyword` varchar(250) DEFAULT NULL,
  `ordering` int(11) NOT NULL,
  `name_en` varchar(255) NOT NULL,
  `slug_en` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cp_products_categories`
--

INSERT INTO `cp_products_categories` (`id`, `name`, `slug`, `parents`, `level`, `lft`, `rgt`, `path`, `state`, `seo_description`, `seo_keyword`, `ordering`, `name_en`, `slug_en`, `image`) VALUES
(1000, 'Root', 'root', 0, 0, 0, 289, '', 1, NULL, NULL, 0, '', '', ''),
(1151, 'Nhà ở, thương mại', 'nha-o-thuong-mai', 1000, 1, 281, 282, '', 1, '', '', 3, '', '', 'quy-nhon-city-resize.jpg'),
(1152, 'Căn hộ khách sạn', 'can-ho-khach-san', 1000, 1, 283, 284, '', 1, '', '', 0, '', '', 'ghenh-da-dia-resize.jpg'),
(1153, 'Căn hộ nghỉ dưỡng, sản phẩm đầu tư', 'can-ho-nghi-duong-san-pham-dau-tu', 1000, 1, 285, 286, '', 1, '', '', 0, '', '', 'nha-trang-resize1.jpg'),
(1154, 'Biệt thự nghỉ dưỡng', 'biet-thu-nghi-duong', 1000, 1, 287, 288, '', 1, '', '', 0, '', '', 'da-nang-resize1.png');

-- --------------------------------------------------------

--
-- Table structure for table `cp_routes`
--

CREATE TABLE `cp_routes` (
  `id` int(11) NOT NULL,
  `slug` varchar(250) NOT NULL,
  `controller` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `cp_slide`
--

CREATE TABLE `cp_slide` (
  `id` int(11) NOT NULL,
  `image` varchar(250) NOT NULL,
  `title` varchar(250) DEFAULT NULL,
  `link` varchar(250) DEFAULT NULL,
  `description` varchar(500) DEFAULT NULL,
  `detail` varchar(255) NOT NULL,
  `title_en` varchar(255) NOT NULL,
  `detail_en` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cp_slide`
--

INSERT INTO `cp_slide` (`id`, `image`, `title`, `link`, `description`, `detail`, `title_en`, `detail_en`) VALUES
(116, 'hinh_nen_1trong_suot.png', 'GIẢI PHÁP EASYCONTROL', '#', '', '', 'EASYCONTROL SOLUTION', ''),
(1004, 'hinh_nen_2trong_suot.png', 'GIẢI PHÁP EASYCONTROL', '#', '', '', 'EASYCONTROL SOLUTION', '');

-- --------------------------------------------------------

--
-- Table structure for table `cp_slidegioithieu`
--

CREATE TABLE `cp_slidegioithieu` (
  `id` int(11) NOT NULL,
  `image` varchar(250) NOT NULL,
  `title` varchar(250) DEFAULT NULL,
  `link` varchar(250) DEFAULT NULL,
  `description` varchar(500) DEFAULT NULL,
  `title_en` varchar(255) NOT NULL,
  `detail` text NOT NULL,
  `detail_en` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cp_slidegioithieu`
--

INSERT INTO `cp_slidegioithieu` (`id`, `image`, `title`, `link`, `description`, `title_en`, `detail`, `detail_en`) VALUES
(116, '6666.jpg', 'Slide 3', '#', '', '', '<p>&nbsp;defe</p>', '<p>&nbsp;efefe</p>'),
(1004, 'SUCCESS2.jpg', 'Slide 1', '#', '', '', '<p>fefef</p>', '<p>fefefefe</p>'),
(1010, 'banner_consulting.png', NULL, NULL, NULL, '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `cp_slidesolution`
--

CREATE TABLE `cp_slidesolution` (
  `id` int(11) NOT NULL,
  `image` varchar(250) NOT NULL,
  `title` varchar(250) DEFAULT NULL,
  `link` varchar(250) DEFAULT NULL,
  `description` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cp_slidesolution`
--

INSERT INTO `cp_slidesolution` (`id`, `image`, `title`, `link`, `description`) VALUES
(1041, 'flc_luxcity_quy_nhon.jpg', 'FLC LUXCITY </br> QUY NHƠN', '#', ''),
(1042, 'bg-2.jpg', 'FLC SEA TOWER </br> QUY NHƠN', '#', ''),
(1043, 'bg-3.jpg', 'FLC QUY NHƠN </br> The Coastal Hill', '', ''),
(1045, 'bg-4.jpg', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `cp_slidetintuc`
--

CREATE TABLE `cp_slidetintuc` (
  `id` int(11) NOT NULL,
  `image` varchar(250) NOT NULL,
  `title` varchar(250) DEFAULT NULL,
  `link` varchar(250) DEFAULT NULL,
  `description` varchar(500) DEFAULT NULL,
  `title_en` varchar(255) NOT NULL,
  `detail` text NOT NULL,
  `detail_en` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cp_slidetintuc`
--

INSERT INTO `cp_slidetintuc` (`id`, `image`, `title`, `link`, `description`, `title_en`, `detail`, `detail_en`) VALUES
(116, 'ACIS_SMARTHOME_HAPPY_NEW_YEAR_2016.jpg', 'HAPPY NEW YEAR 2016', '', '', 'HAPPY NEW YEAR 2016', '<p>&nbsp;defe</p>', '<p>&nbsp;efefe</p>'),
(1004, 'SMARTHOME-SMART_LIVING.jpg', 'smart home - smart living', '#', '', '', '<p>fefef</p>', '<p>fefefefe</p>'),
(1010, 'an_tam_moi_luc1170.400_1_.jpg', 'slide 3', '', NULL, '', '', ''),
(1011, 'banner_san_pham-0211.jpg', 'slide 4', '', NULL, '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `cp_slidetuyendung`
--

CREATE TABLE `cp_slidetuyendung` (
  `id` int(11) NOT NULL,
  `image` varchar(250) NOT NULL,
  `title` varchar(250) DEFAULT NULL,
  `link` varchar(250) DEFAULT NULL,
  `description` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cp_slidetuyendung`
--

INSERT INTO `cp_slidetuyendung` (`id`, `image`, `title`, `link`, `description`) VALUES
(1004, 'jobs1.png', 'Slide 1', '#', ''),
(1008, 'jobs_at_ACIS1.png', 'Slide 3', '', NULL),
(1010, 'career-banner1.jpg', '', '', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cp_support`
--

CREATE TABLE `cp_support` (
  `id` int(11) NOT NULL,
  `yahoo` varchar(300) DEFAULT NULL,
  `skype` varchar(300) DEFAULT NULL,
  `telephone` varchar(20) DEFAULT NULL,
  `description` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cp_support`
--

INSERT INTO `cp_support` (`id`, `yahoo`, `skype`, `telephone`, `description`) VALUES
(1, 'dinhhieu67', 'dinhhieu67', '0902733136', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cp_users`
--

CREATE TABLE `cp_users` (
  `id` int(11) NOT NULL,
  `username` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `birthday` date NOT NULL,
  `email` varchar(150) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `address` varchar(250) NOT NULL,
  `userGroup` int(11) NOT NULL,
  `avatar` varchar(150) NOT NULL,
  `createdDate` date NOT NULL,
  `discount` int(11) NOT NULL,
  `state` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cp_users`
--

INSERT INTO `cp_users` (`id`, `username`, `password`, `firstname`, `lastname`, `birthday`, `email`, `phone`, `address`, `userGroup`, `avatar`, `createdDate`, `discount`, `state`) VALUES
(1000, 'admin', '6b73ee536b15e8e1b9d8e534a3c1c583', 'Nguyễn', 'Hiếu', '1988-06-07', 'dinhhieu@gmail.com', '0902599444', 'Quy Nhơn', 1, 'uploads/users/admin.jpg', '2014-09-08', 0, 1),
(1025, 'dinhhieu67', '35c3def2f6360009a71d0a1cc5925ac6', 'Hiếu', 'Nguyễn', '2014-10-15', 'dinhhieu67@gmail.com', '0902599444', 'Quy Nhơn', 1, '', '0000-00-00', 20, 1);

-- --------------------------------------------------------

--
-- Table structure for table `cp_users_groups`
--

CREATE TABLE `cp_users_groups` (
  `id` int(11) NOT NULL,
  `groupName` varchar(100) NOT NULL,
  `role` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cp_users_groups`
--

INSERT INTO `cp_users_groups` (`id`, `groupName`, `role`) VALUES
(1, 'SuperAdmin', 777),
(2, 'Admin', 755),
(3, 'Poster', 644),
(4, 'Customer', 444);

-- --------------------------------------------------------

--
-- Table structure for table `cp_video`
--

CREATE TABLE `cp_video` (
  `id` int(11) NOT NULL,
  `title` varchar(250) NOT NULL,
  `alias` varchar(250) NOT NULL,
  `images` varchar(250) NOT NULL,
  `link` varchar(250) DEFAULT NULL,
  `description` text,
  `published` tinyint(4) NOT NULL,
  `title_en` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `content_en` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cp_video`
--

INSERT INTO `cp_video` (`id`, `title`, `alias`, `images`, `link`, `description`, `published`, `title_en`, `content`, `content_en`) VALUES
(116, 'Samsung LYNK HMS', '', '2016-03-01_100929.png', 'https://www.youtube.com/embed/cR5YzpdrLCA', '', 0, 'Samsung LYNK HMS', '<h3 style=\"margin: 0px; padding: 0px; border: 0px; font-size: 16px; vertical-align: baseline; font-weight: normal; color: #000000; line-height: 1.2; font-family: SamsungIFRg, Arial, Tahoma, Geneva, Verdana; font-style: normal; font-variant: normal; letter-spacing: normal; orphans: auto; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; background: transparent;\">Samsung LYNK HMS : Transform in-room hotel television &nbsp;<span class=\"Apple-converted-space\">&nbsp;</span><img style=\"margin: 0px; padding: 0px; border: 0px; font-size: 16px; vertical-align: middle; background: transparent;\" src=\"http://displaysolutions.samsung.com/static/images/common/ico_new.gif\" alt=\"new\" /></h3>\n<p style=\"margin: 5px 0px 0px; padding: 0px; border: 0px; font-size: 15px; vertical-align: baseline; line-height: 1.25; color: #666666; font-family: SamsungIFRg, Arial, Tahoma, Geneva, Verdana; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; background: transparent;\">As the latest evolution in luxury and premium hotel management, Samsung&rsquo;s LYNK Hospitality Management Solution(HMS) creates...</p>', '<h3 style=\"margin: 0px; padding: 0px; border: 0px; font-size: 16px; vertical-align: baseline; font-weight: normal; color: #000000; line-height: 1.2; font-family: SamsungIFRg, Arial, Tahoma, Geneva, Verdana; font-style: normal; font-variant: normal; letter-spacing: normal; orphans: auto; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; background: transparent;\">Samsung LYNK HMS : Transform in-room hotel television &nbsp;<span class=\"Apple-converted-space\">&nbsp;</span><img style=\"margin: 0px; padding: 0px; border: 0px; font-size: 16px; vertical-align: middle; background: transparent;\" src=\"http://displaysolutions.samsung.com/static/images/common/ico_new.gif\" alt=\"new\" /></h3>\n<p style=\"margin: 5px 0px 0px; padding: 0px; border: 0px; font-size: 15px; vertical-align: baseline; line-height: 1.25; color: #666666; font-family: SamsungIFRg, Arial, Tahoma, Geneva, Verdana; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; background: transparent;\">As the latest evolution in luxury and premium hotel management, Samsung&rsquo;s LYNK Hospitality Management Solution(HMS) creates...</p>'),
(1004, 'Giới thiệu tính năng Welcome Screen trên HTV của LG', '', '2-1_Lau_1-Phong_Ngu_chinh.JPG', 'https://www.youtube.com/embed/BMvbq7dVhas', '', 0, 'Welcome Screen On LG', '<p>Logo của kh&aacute;ch sạn sẽ xuất hiện khi khởi động HTV thay v&igrave; xuất hiện logo của nh&agrave; sản xuất&nbsp;</p>', '<p>Logo of hotel appear when HTV power on</p>'),
(1005, 'SÁNG TẠO KHÔNG GIỚI HẠN VỚI MÀN HÌNH GHÉP', '', '2-3_Lau_1-_Phong_Ngu_con_Trai.jpg', 'https://www.youtube.com/embed/maSAj-8KQPQ', '', 0, 'SÁNG TẠO KHÔNG GIỚI HẠN VỚI MÀN HÌNH GHÉP', '<h1 class=\"yt watch-title-container\"><span style=\"font-size: 10pt;\">S&aacute;ng tạo kh&ocirc;ng giới hạn với m&agrave;n h&igrave;nh gh&eacute;p</span></h1>', '<h1 class=\"yt watch-title-container\">&nbsp;</h1>'),
(1010, 'Giải pháp màn hình quảng cáo số ', '', '', 'https://www.youtube.com/embed/yZFhyxCRoyM', '', 0, 'Digital Signage Solution', '<p>&nbsp;- Cho c&aacute;c trung t&acirc;m t&agrave;i ch&iacute;nh, ng&acirc;n h&agrave;ng, chứng kho&aacute;n, &hellip; <br />&nbsp;- Cho c&aacute;c s&agrave;n giao dịch bất động sản, si&ecirc;u thị, &hellip;&nbsp;<br />&nbsp;- Cho c&aacute;c điểm th&ocirc;ng tin c&ocirc;ng cộng ở c&aacute;c cơ quan h&agrave;nh ch&aacute;nh sự nghiệp, <br />&nbsp;- Cho c&aacute;c sở ban ng&agrave;nh để thực hiện hướng dẫn một cửa một dấu, <br />&nbsp;- Cho c&aacute;c đơn vị quảng c&aacute;o, du lịch, kh&aacute;ch sạn/resort, bệnh viện, trường học,&nbsp;<br />&nbsp;- Cho cảng h&agrave;ng kh&ocirc;ng, trạm xe điện, trạm xe bu&yacute;t, trạm xe lửa, cảng, &hellip;</p>\n<p>&nbsp;</p>\n<p>&nbsp;</p>', ''),
(1011, 'Trải nghiệm OLED LG tại Namsan ', '', '', 'https://www.youtube.com/embed/Oqs2OWQStn0', '', 0, 'LG ID Namsan OLED', '<h1 class=\"yt watch-title-container\"><span id=\"eow-title\" class=\"watch-title \" dir=\"ltr\" style=\"font-size: 10pt;\" title=\"Ver2 20160113 LG ID Namsan OLED\">Ver2 20160113 LG ID Namsan OLED</span></h1>', '<h1 class=\"yt watch-title-container\"><span id=\"eow-title\" class=\"watch-title \" dir=\"ltr\" style=\"font-size: 10pt;\" title=\"Ver2 20160113 LG ID Namsan OLED\">Ver2 20160113 LG ID Namsan OLED</span></h1>');

-- --------------------------------------------------------

--
-- Table structure for table `danh_sach_thi`
--

CREATE TABLE `danh_sach_thi` (
  `id` int(11) NOT NULL,
  `emp_data` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `danh_sach_thi`
--

INSERT INTO `danh_sach_thi` (`id`, `emp_data`) VALUES
(1, '{\"name\":\"Camera online\",\"birthday\":\"02\\/02\\/1992\",\"address\":\"B\\u00ecnh \\u0110\\u1ecbnh\",\"khoathi\":\"CNTT c\\u01a1 b\\u1ea3n\"}'),
(2, '{\"name\":\"Nguy\\u1ec5n \\u0110\\u00ecnh Hi\\u1ebfu\",\"birthday\":\"02\\/02\\/1992\",\"address\":\"B\\u00ecnh \\u0110\\u1ecbnh\",\"khoathi\":\"CNTT c\\u01a1 b\\u1ea3n\"}'),
(3, '{\"name\":\"Nguy\\u1ec5n Tr\\u00e3i\",\"birthday\":\"04\\/05\\/1988\",\"address\":\"H\\u1ed3 Ch\\u00ed Minh\",\"khoathi\":\"CNTT n\\u00e2ng cao\",\"created\":\"2017-06-12 10:16:01\"}'),
(4, '{\"name\":\"Nguy\\u1ec5n Tr\\u00e3i\",\"birthday\":\"04\\/05\\/1988\",\"address\":\"H\\u1ed3 Ch\\u00ed Minh\",\"khoathi\":\"CNTT n\\u00e2ng cao\",\"created\":\"2017-06-12 10:19:12\"}'),
(5, '{\"name\":\"Phan V\\u0103n A\",\"birthday\":\"07\\/01\\/1987\",\"address\":\"H\\u1ed3 Ch\\u00ed Minh\",\"khoathi\":\"CNTT c\\u01a1 b\\u1ea3n\",\"created\":\"2017-06-12 10:20:12\"}');

-- --------------------------------------------------------

--
-- Table structure for table `khoa_thi`
--

CREATE TABLE `khoa_thi` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `alias` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `published` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `khoa_thi`
--

INSERT INTO `khoa_thi` (`id`, `title`, `alias`, `published`) VALUES
(1, 'Khóa tin học cơ bản', 'khoa-tin-hoc-co-ban', 1),
(2, 'Khóa tin học nâng cao', 'khoa-tin-hoc-nang-cao', 1);

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` int(11) NOT NULL,
  `parent` int(11) DEFAULT NULL,
  `name` varchar(50) NOT NULL,
  `icon` varchar(30) NOT NULL,
  `slug` varchar(50) NOT NULL,
  `number` int(11) NOT NULL,
  `name_en` varchar(50) NOT NULL,
  `seo_description` text NOT NULL,
  `seo_keyword` text NOT NULL,
  `state` tinyint(4) NOT NULL,
  `id_menutype` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `parent`, `name`, `icon`, `slug`, `number`, `name_en`, `seo_description`, `seo_keyword`, `state`, `id_menutype`) VALUES
(1, NULL, 'Trang chủ', '', 'home', 1, 'Home', '																																							', '																																							', 1, 1),
(41, NULL, 'Giới thiệu', '', 'pages/gioi-thieu', 2, '', '																																																																																																								', '																																																																																																								', 1, 1),
(42, NULL, 'Dự án', '', 'du-an', 3, '0', '																																																																																																																																																												', '																																																																																																																																																												', 1, 1),
(54, NULL, 'Tuyển dụng', '', 'chuyen-muc/tuyen-dung', 5, '0', '																																																																																																								', '																																																																																																								', 1, 1),
(55, NULL, 'Tin tức', '', 'chuyen-muc/tin-tuc', 6, '0', '																																																																																																								', '																																																																																																								', 1, 1),
(65, NULL, 'Liên hệ', '', 'pages/lien-he', 8, '', '													', '													', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `menus_type`
--

CREATE TABLE `menus_type` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `state` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `menus_type`
--

INSERT INTO `menus_type` (`id`, `name`, `state`) VALUES
(1, 'Top menu', 1),
(2, 'Right menu', 1),
(3, 'Bottom menu', 1);

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(11) NOT NULL,
  `title_en` varchar(255) NOT NULL,
  `detail_en` text NOT NULL,
  `alias_en` varchar(255) NOT NULL,
  `created` date NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified` date NOT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `title` varchar(250) NOT NULL,
  `alias` varchar(250) NOT NULL,
  `id_category` int(11) NOT NULL,
  `featured` tinyint(4) NOT NULL DEFAULT '0',
  `images` varchar(250) DEFAULT NULL,
  `detail` text NOT NULL,
  `hits` int(11) NOT NULL DEFAULT '1',
  `published` tinyint(4) NOT NULL DEFAULT '1',
  `path` varchar(250) DEFAULT NULL,
  `seo_description` varchar(250) DEFAULT NULL,
  `seo_keyword` varchar(250) DEFAULT NULL,
  `seo_title` varchar(250) DEFAULT NULL,
  `text_images` text,
  `text_right` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `title_en`, `detail_en`, `alias_en`, `created`, `created_by`, `modified`, `modified_by`, `title`, `alias`, `id_category`, `featured`, `images`, `detail`, `hits`, `published`, `path`, `seo_description`, `seo_keyword`, `seo_title`, `text_images`, `text_right`) VALUES
(199, '', '', '', '2017-10-12', 1025, '0000-00-00', NULL, 'Giới thiệu', 'gioi-thieu', 0, 0, '', '<p>đang cập nhật</p>', 1, 1, NULL, '', '', '0', '0', '0'),
(200, '', '', '', '2017-10-16', 1025, '0000-00-00', NULL, 'Liên hệ', 'lien-he', 0, 0, '', '<h3><strong>S&Agrave;N GIAO DỊCH BẤT ĐỘNG SẢN ANH QU&Acirc;N</strong></h3>\n<p>Địa chỉ: 170 Di&ecirc;n Hồng, TP. Quy Nhơn, B&igrave;nh Định</p>\n<p>Điện thoại : 0972 01 02 03 - 0935 167 999</p>\n<p><iframe style=\"border: 0;\" src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3875.175694011568!2d109.21836041452613!3d13.768276090336759!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x316f6c93cd096723%3A0xb32147fec8a8d17!2zMTcwIERpw6puIEjhu5NuZywgTOG7syBUaMaw4budbmcgS2nhu4d0LCBUcC4gUXVpIE5oxqFuLCBCw6xuaCDEkOG7i25oLCBWaeG7h3QgTmFt!5e0!3m2!1svi!2s!4v1508117206621\" width=\"100%\" height=\"450\" frameborder=\"0\" allowfullscreen=\"allowfullscreen\"></iframe></p>', 1, 1, NULL, '', '', '0', '0', '0'),
(201, '', '', '', '2017-10-12', 1025, '0000-00-00', NULL, 'Vận tải đường bộ', 'van-tai-duong-bo', 0, 0, '', '<p>đang cập nhật</p>', 1, 1, NULL, '', '', '0', '0', '0'),
(202, '', '', '', '2017-10-12', 1025, '0000-00-00', NULL, 'Vận tải đường thủy nội địa', 'van-tai-duong-thuy-noi-dia', 0, 0, '', '', 1, 1, NULL, '', '', '0', '0', '0'),
(203, '', '', '', '2017-10-12', 1025, '0000-00-00', NULL, 'Phương châm hoạt động', 'phuong-cham-hoat-dong', 0, 0, '', '<p>đang cập nhật</p>', 1, 0, NULL, '', '', '0', '0', '0'),
(204, '', '', '', '2017-10-12', 1025, '0000-00-00', NULL, 'Vận tải xe tải thùng', 'van-tai-xe-tai-thung', 0, 0, '', '', 1, 1, NULL, '', '', '0', '0', '0'),
(205, '', '', '', '2017-10-12', 1025, '0000-00-00', NULL, 'Vận tải tàu biển', 'van-tai-tau-bien', 0, 0, '', '', 1, 1, NULL, '', '', '0', '0', '0');

-- --------------------------------------------------------

--
-- Table structure for table `thong_tin_khoa_thi`
--

CREATE TABLE `thong_tin_khoa_thi` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `alias` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `id_khoa_thi` int(11) DEFAULT NULL,
  `file_danh_sach` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `file_diem_thi` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `published` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `thong_tin_khoa_thi`
--

INSERT INTO `thong_tin_khoa_thi` (`id`, `title`, `alias`, `id_khoa_thi`, `file_danh_sach`, `file_diem_thi`, `published`) VALUES
(1, 'Thông tin khóa học cơ bản', 'thong-tin-khoa-hoc-co-ban', 1, 'danh_sach_thi.xlsx', 'ket_qua_thi.xlsx', 1),
(2, 'Thông tin khóa học nâng cao', 'thong-tin-khoa-hoc-nang-cao', 2, 'danh_sach_thi_khoa_nang_cao.xlsx', 'ket_qua_thi_khoa_nang_cao.xlsx', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cp_articles`
--
ALTER TABLE `cp_articles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `categoryId` (`categoryId`),
  ADD KEY `createdBy` (`createdBy`,`modifiedBy`),
  ADD KEY `modifiedBy` (`modifiedBy`);

--
-- Indexes for table `cp_categories`
--
ALTER TABLE `cp_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `parents` (`parents`);

--
-- Indexes for table `cp_configuration`
--
ALTER TABLE `cp_configuration`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cp_custom`
--
ALTER TABLE `cp_custom`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cp_customer`
--
ALTER TABLE `cp_customer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cp_doitac`
--
ALTER TABLE `cp_doitac`
  ADD PRIMARY KEY (`id`),
  ADD KEY `categoryId` (`categoryId`);

--
-- Indexes for table `cp_doitac_categories`
--
ALTER TABLE `cp_doitac_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cp_download`
--
ALTER TABLE `cp_download`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cp_footer`
--
ALTER TABLE `cp_footer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cp_gallery`
--
ALTER TABLE `cp_gallery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cp_media`
--
ALTER TABLE `cp_media`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cp_menu`
--
ALTER TABLE `cp_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cp_order`
--
ALTER TABLE `cp_order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cp_products`
--
ALTER TABLE `cp_products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `categoryId` (`categoryId`);

--
-- Indexes for table `cp_products_categories`
--
ALTER TABLE `cp_products_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cp_routes`
--
ALTER TABLE `cp_routes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `slug` (`slug`);

--
-- Indexes for table `cp_slide`
--
ALTER TABLE `cp_slide`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cp_slidegioithieu`
--
ALTER TABLE `cp_slidegioithieu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cp_slidesolution`
--
ALTER TABLE `cp_slidesolution`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cp_slidetintuc`
--
ALTER TABLE `cp_slidetintuc`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cp_slidetuyendung`
--
ALTER TABLE `cp_slidetuyendung`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cp_support`
--
ALTER TABLE `cp_support`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cp_users`
--
ALTER TABLE `cp_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userGroup` (`userGroup`);

--
-- Indexes for table `cp_users_groups`
--
ALTER TABLE `cp_users_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cp_video`
--
ALTER TABLE `cp_video`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `danh_sach_thi`
--
ALTER TABLE `danh_sach_thi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `khoa_thi`
--
ALTER TABLE `khoa_thi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD KEY `parent` (`parent`);

--
-- Indexes for table `menus_type`
--
ALTER TABLE `menus_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `categoryId` (`id_category`),
  ADD KEY `createdBy` (`created_by`,`modified_by`),
  ADD KEY `modifiedBy` (`modified_by`);

--
-- Indexes for table `thong_tin_khoa_thi`
--
ALTER TABLE `thong_tin_khoa_thi`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cp_articles`
--
ALTER TABLE `cp_articles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `cp_categories`
--
ALTER TABLE `cp_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1022;
--
-- AUTO_INCREMENT for table `cp_configuration`
--
ALTER TABLE `cp_configuration`
  MODIFY `id` smallint(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;
--
-- AUTO_INCREMENT for table `cp_custom`
--
ALTER TABLE `cp_custom`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
--
-- AUTO_INCREMENT for table `cp_customer`
--
ALTER TABLE `cp_customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `cp_doitac`
--
ALTER TABLE `cp_doitac`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `cp_doitac_categories`
--
ALTER TABLE `cp_doitac_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1002;
--
-- AUTO_INCREMENT for table `cp_download`
--
ALTER TABLE `cp_download`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1014;
--
-- AUTO_INCREMENT for table `cp_footer`
--
ALTER TABLE `cp_footer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `cp_gallery`
--
ALTER TABLE `cp_gallery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1011;
--
-- AUTO_INCREMENT for table `cp_media`
--
ALTER TABLE `cp_media`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `cp_menu`
--
ALTER TABLE `cp_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `cp_order`
--
ALTER TABLE `cp_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `cp_products`
--
ALTER TABLE `cp_products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `cp_products_categories`
--
ALTER TABLE `cp_products_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1155;
--
-- AUTO_INCREMENT for table `cp_routes`
--
ALTER TABLE `cp_routes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `cp_slide`
--
ALTER TABLE `cp_slide`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1005;
--
-- AUTO_INCREMENT for table `cp_slidegioithieu`
--
ALTER TABLE `cp_slidegioithieu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1011;
--
-- AUTO_INCREMENT for table `cp_slidesolution`
--
ALTER TABLE `cp_slidesolution`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1046;
--
-- AUTO_INCREMENT for table `cp_slidetintuc`
--
ALTER TABLE `cp_slidetintuc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1012;
--
-- AUTO_INCREMENT for table `cp_slidetuyendung`
--
ALTER TABLE `cp_slidetuyendung`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1011;
--
-- AUTO_INCREMENT for table `cp_support`
--
ALTER TABLE `cp_support`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `cp_users`
--
ALTER TABLE `cp_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1026;
--
-- AUTO_INCREMENT for table `cp_users_groups`
--
ALTER TABLE `cp_users_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `cp_video`
--
ALTER TABLE `cp_video`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1012;
--
-- AUTO_INCREMENT for table `danh_sach_thi`
--
ALTER TABLE `danh_sach_thi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `khoa_thi`
--
ALTER TABLE `khoa_thi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;
--
-- AUTO_INCREMENT for table `menus_type`
--
ALTER TABLE `menus_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=206;
--
-- AUTO_INCREMENT for table `thong_tin_khoa_thi`
--
ALTER TABLE `thong_tin_khoa_thi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `cp_articles`
--
ALTER TABLE `cp_articles`
  ADD CONSTRAINT `cp_articles_ibfk_1` FOREIGN KEY (`categoryId`) REFERENCES `cp_categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `cp_articles_ibfk_2` FOREIGN KEY (`createdBy`) REFERENCES `cp_users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `cp_articles_ibfk_3` FOREIGN KEY (`modifiedBy`) REFERENCES `cp_users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `cp_doitac`
--
ALTER TABLE `cp_doitac`
  ADD CONSTRAINT `cp_doitac_ibfk_1` FOREIGN KEY (`categoryId`) REFERENCES `cp_doitac_categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `cp_users`
--
ALTER TABLE `cp_users`
  ADD CONSTRAINT `cp_users_ibfk_1` FOREIGN KEY (`userGroup`) REFERENCES `cp_users_groups` (`id`);

--
-- Constraints for table `menus`
--
ALTER TABLE `menus`
  ADD CONSTRAINT `menus_ibfk_1` FOREIGN KEY (`parent`) REFERENCES `menus` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
