-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 17, 2017 at 08:40 AM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 5.6.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shop`
--

-- --------------------------------------------------------

--
-- Table structure for table `chitietdondathang`
--

CREATE TABLE `chitietdondathang` (
  `MaChiTietDonDatHang` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `SoLuong` int(11) DEFAULT NULL,
  `GiaBan` int(11) DEFAULT NULL,
  `MaDonDatHang` varchar(9) COLLATE utf8_unicode_ci NOT NULL,
  `MaSanPham` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `chitietdondathang`
--

INSERT INTO `chitietdondathang` (`MaChiTietDonDatHang`, `SoLuong`, `GiaBan`, `MaDonDatHang`, `MaSanPham`) VALUES
('15071700101', 1, 90000, '150717001', 53),
('15071700100', 2, 55000, '150717001', 58);

-- --------------------------------------------------------

--
-- Table structure for table `dondathang`
--

CREATE TABLE `dondathang` (
  `MaDonDatHang` varchar(9) COLLATE utf8_unicode_ci NOT NULL,
  `NgayLap` datetime DEFAULT NULL,
  `TongThanhTien` int(11) DEFAULT NULL,
  `MaTaiKhoan` int(11) NOT NULL,
  `MaTinhTrang` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `dondathang`
--

INSERT INTO `dondathang` (`MaDonDatHang`, `NgayLap`, `TongThanhTien`, `MaTaiKhoan`, `MaTinhTrang`) VALUES
('150717001', '2017-07-15 19:40:33', 200000, 7, 1);

-- --------------------------------------------------------

--
-- Table structure for table `hangsanxuat`
--

CREATE TABLE `hangsanxuat` (
  `MaHangSanXuat` int(11) NOT NULL,
  `TenHangSanXuat` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LogoURL` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `BiXoa` tinyint(1) DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `hangsanxuat`
--

INSERT INTO `hangsanxuat` (`MaHangSanXuat`, `TenHangSanXuat`, `LogoURL`, `BiXoa`) VALUES
(7, 'Tất cả sản phẩm', NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `loaisanpham`
--

CREATE TABLE `loaisanpham` (
  `MaLoaiSanPham` int(11) NOT NULL,
  `TenLoaiSanPham` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `BiXoa` tinyint(1) DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `loaisanpham`
--

INSERT INTO `loaisanpham` (`MaLoaiSanPham`, `TenLoaiSanPham`, `BiXoa`) VALUES
(16, 'Móc khóa', 0),
(14, 'Giày búp bê', 0),
(13, 'Cao gót', 0),
(12, 'Dép cao', 0),
(19, 'Giày sandan', 0),
(18, 'Mẫu da dạng', 0),
(17, 'Giày thể thao', 0),
(15, 'Dép hình thú', 0);

-- --------------------------------------------------------

--
-- Table structure for table `loaitaikhoan`
--

CREATE TABLE `loaitaikhoan` (
  `MaLoaiTaiKhoan` int(11) NOT NULL,
  `TenLoaiTaiKhoan` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `loaitaikhoan`
--

INSERT INTO `loaitaikhoan` (`MaLoaiTaiKhoan`, `TenLoaiTaiKhoan`) VALUES
(1, 'User'),
(2, 'Admin');

-- --------------------------------------------------------

--
-- Table structure for table `sanpham`
--

CREATE TABLE `sanpham` (
  `MaSanPham` int(11) NOT NULL,
  `TenSanPham` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `HinhURL` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `GiaSanPham` int(11) DEFAULT NULL,
  `NgayNhap` datetime DEFAULT NULL,
  `SoLuongTon` int(11) DEFAULT NULL,
  `SoLuongBan` int(11) DEFAULT NULL,
  `SoLuocXem` int(11) DEFAULT NULL,
  `MoTa` text COLLATE utf8_unicode_ci,
  `BiXoa` tinyint(1) DEFAULT '0',
  `MaLoaiSanPham` int(11) NOT NULL,
  `MaHangSanXuat` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sanpham`
--

INSERT INTO `sanpham` (`MaSanPham`, `TenSanPham`, `HinhURL`, `GiaSanPham`, `NgayNhap`, `SoLuongTon`, `SoLuongBan`, `SoLuocXem`, `MoTa`, `BiXoa`, `MaLoaiSanPham`, `MaHangSanXuat`) VALUES
(37, '<p>Cao g&oacute;t đen</p>\r\n<p>d&acirc;y Ms305', '190k.jpg', 190000, '2017-07-15 15:46:54', 1000, 0, 2, '<p><span class="_5mfr _47e3" style="line-height: 0; vertical-align: middle; margin: 0px 1px; font-family: Helvetica, Arial, sans-serif; color: #1d2129;"><img class="img" style="border: 0px; vertical-align: -3px;" role="presentation" src="https://www.facebook.com/images/emoji.php/v9/f40/1/16/1f4a5.png" alt="" width="16" height="16" /><span class="_7oe" style="display: inline-block; font-size: 0px; width: 0px; font-family: inherit;">????</span></span><span style="color: #1d2129; font-family: Helvetica, Arial, sans-serif;">&nbsp;H&agrave;ng QC đẹp y h&igrave;nh</span><br style="color: #1d2129; font-family: Helvetica, Arial, sans-serif;" /><span class="_5mfr _47e3" style="line-height: 0; vertical-align: middle; margin: 0px 1px; font-family: Helvetica, Arial, sans-serif; color: #1d2129;"><img class="img" style="border: 0px; vertical-align: -3px;" role="presentation" src="https://www.facebook.com/images/emoji.php/v9/f40/1/16/1f4a5.png" alt="" width="16" height="16" /><span class="_7oe" style="display: inline-block; font-size: 0px; width: 0px; font-family: inherit;">????</span></span><span style="color: #1d2129; font-family: Helvetica, Arial, sans-serif;">&nbsp;Bảo h&agrave;nh keo vĩnh viễn</span></p>', 0, 13, 7),
(36, '<p>Gi&agrave;y mọi đen</p>\r\n<p>Ms045</p>', '150k.jpg', 150000, '2017-07-15 15:44:41', 1000, 0, 2, '<p><span class="_5mfr _47e3" style="line-height: 0; vertical-align: middle; margin: 0px 1px; font-family: Helvetica, Arial, sans-serif; color: #1d2129;"><img class="img" style="border: 0px; vertical-align: -3px;" role="presentation" src="https://www.facebook.com/images/emoji.php/v9/f40/1/16/1f4a5.png" alt="" width="16" height="16" /><span class="_7oe" style="display: inline-block; font-size: 0px; width: 0px; font-family: inherit;">????</span></span><span style="color: #1d2129; font-family: Helvetica, Arial, sans-serif;">&nbsp;H&agrave;ng QC đẹp y h&igrave;nh</span><br style="color: #1d2129; font-family: Helvetica, Arial, sans-serif;" /><span class="_5mfr _47e3" style="line-height: 0; vertical-align: middle; margin: 0px 1px; font-family: Helvetica, Arial, sans-serif; color: #1d2129;"><img class="img" style="border: 0px; vertical-align: -3px;" role="presentation" src="https://www.facebook.com/images/emoji.php/v9/f40/1/16/1f4a5.png" alt="" width="16" height="16" /><span class="_7oe" style="display: inline-block; font-size: 0px; width: 0px; font-family: inherit;">????</span></span><span style="color: #1d2129; font-family: Helvetica, Arial, sans-serif;">&nbsp;Bảo h&agrave;nh keo vĩnh viễn</span></p>', 0, 14, 7),
(35, '<p>d&eacute;p đế cao</p>\r\n<p>Ms003</p>', '180K.jpg', 180000, '2017-07-15 15:42:48', 1000, 0, 0, '<p><span class="_5mfr _47e3" style="line-height: 0; vertical-align: middle; margin: 0px 1px; font-family: Helvetica, Arial, sans-serif; color: #1d2129;"><img class="img" style="border: 0px; vertical-align: -3px;" role="presentation" src="https://www.facebook.com/images/emoji.php/v9/f40/1/16/1f4a5.png" alt="" width="16" height="16" /><span class="_7oe" style="display: inline-block; font-size: 0px; width: 0px; font-family: inherit;">????</span></span><span style="color: #1d2129; font-family: Helvetica, Arial, sans-serif;">&nbsp;H&agrave;ng QC đẹp y h&igrave;nh</span><br style="color: #1d2129; font-family: Helvetica, Arial, sans-serif;" /><span class="_5mfr _47e3" style="line-height: 0; vertical-align: middle; margin: 0px 1px; font-family: Helvetica, Arial, sans-serif; color: #1d2129;"><img class="img" style="border: 0px; vertical-align: -3px;" role="presentation" src="https://www.facebook.com/images/emoji.php/v9/f40/1/16/1f4a5.png" alt="" width="16" height="16" /><span class="_7oe" style="display: inline-block; font-size: 0px; width: 0px; font-family: inherit;">????</span></span><span style="color: #1d2129; font-family: Helvetica, Arial, sans-serif;">&nbsp;Bảo h&agrave;nh keo vĩnh viễn</span></p>', 0, 12, 7),
(38, '<p>Gi&agrave;y SD</p>\r\n<p>K210</p>', '190kk.jpg', 190000, '2017-07-15 15:49:36', 1000, 0, 0, '<p><span class="_5mfr _47e3" style="line-height: 0; vertical-align: middle; margin: 0px 1px; font-family: Helvetica, Arial, sans-serif; color: #1d2129;"><img class="img" style="border: 0px; vertical-align: -3px;" role="presentation" src="https://www.facebook.com/images/emoji.php/v9/f40/1/16/1f4a5.png" alt="" width="16" height="16" /><span class="_7oe" style="display: inline-block; font-size: 0px; width: 0px; font-family: inherit;">????</span></span><span style="color: #1d2129; font-family: Helvetica, Arial, sans-serif;">&nbsp;H&agrave;ng QC đẹp y h&igrave;nh</span><br style="color: #1d2129; font-family: Helvetica, Arial, sans-serif;" /><span class="_5mfr _47e3" style="line-height: 0; vertical-align: middle; margin: 0px 1px; font-family: Helvetica, Arial, sans-serif; color: #1d2129;"><img class="img" style="border: 0px; vertical-align: -3px;" role="presentation" src="https://www.facebook.com/images/emoji.php/v9/f40/1/16/1f4a5.png" alt="" width="16" height="16" /><span class="_7oe" style="display: inline-block; font-size: 0px; width: 0px; font-family: inherit;">????</span></span><span style="color: #1d2129; font-family: Helvetica, Arial, sans-serif;">&nbsp;Bảo h&agrave;nh keo vĩnh viễn</span></p>', 0, 19, 7),
(39, '<p>Gi&agrave;y độn 5p</p>\r\n<p>Ms5</p>', '160k.jpg', 160000, '2017-07-15 15:53:23', 1000, 0, 7, '<p><span class="_5mfr _47e3" style="line-height: 0; vertical-align: middle; margin: 0px 1px; font-family: Helvetica, Arial, sans-serif; color: #1d2129;"><img class="img" style="border: 0px; vertical-align: -3px;" role="presentation" src="https://www.facebook.com/images/emoji.php/v9/f40/1/16/1f4a5.png" alt="" width="16" height="16" /><span class="_7oe" style="display: inline-block; font-size: 0px; width: 0px; font-family: inherit;">????</span></span><span style="color: #1d2129; font-family: Helvetica, Arial, sans-serif;">&nbsp;H&agrave;ng QC đẹp y h&igrave;nh</span><br style="color: #1d2129; font-family: Helvetica, Arial, sans-serif;" /><span class="_5mfr _47e3" style="line-height: 0; vertical-align: middle; margin: 0px 1px; font-family: Helvetica, Arial, sans-serif; color: #1d2129;"><img class="img" style="border: 0px; vertical-align: -3px;" role="presentation" src="https://www.facebook.com/images/emoji.php/v9/f40/1/16/1f4a5.png" alt="" width="16" height="16" /><span class="_7oe" style="display: inline-block; font-size: 0px; width: 0px; font-family: inherit;">????</span></span><span style="color: #1d2129; font-family: Helvetica, Arial, sans-serif;">&nbsp;Bảo h&agrave;nh keo vĩnh viễn</span></p>', 0, 17, 7),
(40, '<p>D&eacute;p cao hoa</p>\r\n<p>Dt05</p>', '140k.jpg', 140000, '2017-07-15 15:55:46', 1000, 0, 1, '<p><span class="_5mfr _47e3" style="line-height: 0; vertical-align: middle; margin: 0px 1px; font-family: Helvetica, Arial, sans-serif; color: #1d2129;"><img class="img" style="border: 0px; vertical-align: -3px;" role="presentation" src="https://www.facebook.com/images/emoji.php/v9/f40/1/16/1f4a5.png" alt="" width="16" height="16" /><span class="_7oe" style="display: inline-block; font-size: 0px; width: 0px; font-family: inherit;">????</span></span><span style="color: #1d2129; font-family: Helvetica, Arial, sans-serif;">&nbsp;H&agrave;ng QC đẹp y h&igrave;nh</span><br style="color: #1d2129; font-family: Helvetica, Arial, sans-serif;" /><span class="_5mfr _47e3" style="line-height: 0; vertical-align: middle; margin: 0px 1px; font-family: Helvetica, Arial, sans-serif; color: #1d2129;"><img class="img" style="border: 0px; vertical-align: -3px;" role="presentation" src="https://www.facebook.com/images/emoji.php/v9/f40/1/16/1f4a5.png" alt="" width="16" height="16" /><span class="_7oe" style="display: inline-block; font-size: 0px; width: 0px; font-family: inherit;">????</span></span><span style="color: #1d2129; font-family: Helvetica, Arial, sans-serif;">&nbsp;Bảo h&agrave;nh keo vĩnh viễn</span></p>', 0, 12, 7),
(41, '<p>Sd d&acirc;y trệt</p>\r\n<p>Kd7</p>', '110k.jpg', 110000, '2017-07-15 15:59:11', 1000, 0, 0, '<p><span class="_5mfr _47e3" style="line-height: 0; vertical-align: middle; margin: 0px 1px; font-family: Helvetica, Arial, sans-serif; color: #1d2129;"><img class="img" style="border: 0px; vertical-align: -3px;" role="presentation" src="https://www.facebook.com/images/emoji.php/v9/f40/1/16/1f4a5.png" alt="" width="16" height="16" /><span class="_7oe" style="display: inline-block; font-size: 0px; width: 0px; font-family: inherit;">????</span></span><span style="color: #1d2129; font-family: Helvetica, Arial, sans-serif;">&nbsp;H&agrave;ng QC đẹp y h&igrave;nh</span><br style="color: #1d2129; font-family: Helvetica, Arial, sans-serif;" /><span class="_5mfr _47e3" style="line-height: 0; vertical-align: middle; margin: 0px 1px; font-family: Helvetica, Arial, sans-serif; color: #1d2129;"><img class="img" style="border: 0px; vertical-align: -3px;" role="presentation" src="https://www.facebook.com/images/emoji.php/v9/f40/1/16/1f4a5.png" alt="" width="16" height="16" /><span class="_7oe" style="display: inline-block; font-size: 0px; width: 0px; font-family: inherit;">????</span></span><span style="color: #1d2129; font-family: Helvetica, Arial, sans-serif;">&nbsp;Bảo h&agrave;nh keo vĩnh viễn</span></p>', 0, 19, 7),
(42, '<p>Cao g&oacute;t d&acirc;y trong</p>\r\n<p>CG7', '180kk.jpg', 180000, '2017-07-15 16:00:50', 1000, 0, 0, '<p><span class="_5mfr _47e3" style="line-height: 0; vertical-align: middle; margin: 0px 1px; font-family: Helvetica, Arial, sans-serif; color: #1d2129;"><img class="img" style="border: 0px; vertical-align: -3px;" role="presentation" src="https://www.facebook.com/images/emoji.php/v9/f40/1/16/1f4a5.png" alt="" width="16" height="16" /><span class="_7oe" style="display: inline-block; font-size: 0px; width: 0px; font-family: inherit;">????</span></span><span style="color: #1d2129; font-family: Helvetica, Arial, sans-serif;">&nbsp;H&agrave;ng QC đẹp y h&igrave;nh</span><br style="color: #1d2129; font-family: Helvetica, Arial, sans-serif;" /><span class="_5mfr _47e3" style="line-height: 0; vertical-align: middle; margin: 0px 1px; font-family: Helvetica, Arial, sans-serif; color: #1d2129;"><img class="img" style="border: 0px; vertical-align: -3px;" role="presentation" src="https://www.facebook.com/images/emoji.php/v9/f40/1/16/1f4a5.png" alt="" width="16" height="16" /><span class="_7oe" style="display: inline-block; font-size: 0px; width: 0px; font-family: inherit;">????</span></span><span style="color: #1d2129; font-family: Helvetica, Arial, sans-serif;">&nbsp;Bảo h&agrave;nh keo vĩnh viễn</span></p>', 0, 13, 7),
(43, '<p>Thể thao hồng</p>\r\n<p>Cn1</p>', '150kk.jpg', 150000, '2017-07-15 16:03:35', 1000, 0, 0, '<p><span class="_5mfr _47e3" style="line-height: 0; vertical-align: middle; margin: 0px 1px; font-family: Helvetica, Arial, sans-serif; color: #1d2129;"><img class="img" style="border: 0px; vertical-align: -3px;" role="presentation" src="https://www.facebook.com/images/emoji.php/v9/f40/1/16/1f4a5.png" alt="" width="16" height="16" /><span class="_7oe" style="display: inline-block; font-size: 0px; width: 0px; font-family: inherit;">????</span></span><span style="color: #1d2129; font-family: Helvetica, Arial, sans-serif;">&nbsp;H&agrave;ng QC đẹp y h&igrave;nh</span><br style="color: #1d2129; font-family: Helvetica, Arial, sans-serif;" /><span class="_5mfr _47e3" style="line-height: 0; vertical-align: middle; margin: 0px 1px; font-family: Helvetica, Arial, sans-serif; color: #1d2129;"><img class="img" style="border: 0px; vertical-align: -3px;" role="presentation" src="https://www.facebook.com/images/emoji.php/v9/f40/1/16/1f4a5.png" alt="" width="16" height="16" /><span class="_7oe" style="display: inline-block; font-size: 0px; width: 0px; font-family: inherit;">????</span></span><span style="color: #1d2129; font-family: Helvetica, Arial, sans-serif;">&nbsp;Bảo h&agrave;nh keo vĩnh viễn</span></p>', 0, 17, 7),
(44, '<p>Sd bệt</p>\r\n<p>Dt2</p>', '140kk.jpg', 140000, '2017-07-15 16:05:11', 1000, 0, 0, '<p><span class="_5mfr _47e3" style="line-height: 0; vertical-align: middle; margin: 0px 1px; font-family: Helvetica, Arial, sans-serif; color: #1d2129;"><img class="img" style="border: 0px; vertical-align: -3px;" role="presentation" src="https://www.facebook.com/images/emoji.php/v9/f40/1/16/1f4a5.png" alt="" width="16" height="16" /><span class="_7oe" style="display: inline-block; font-size: 0px; width: 0px; font-family: inherit;">????</span></span><span style="color: #1d2129; font-family: Helvetica, Arial, sans-serif;">&nbsp;H&agrave;ng QC đẹp y h&igrave;nh</span><br style="color: #1d2129; font-family: Helvetica, Arial, sans-serif;" /><span class="_5mfr _47e3" style="line-height: 0; vertical-align: middle; margin: 0px 1px; font-family: Helvetica, Arial, sans-serif; color: #1d2129;"><img class="img" style="border: 0px; vertical-align: -3px;" role="presentation" src="https://www.facebook.com/images/emoji.php/v9/f40/1/16/1f4a5.png" alt="" width="16" height="16" /><span class="_7oe" style="display: inline-block; font-size: 0px; width: 0px; font-family: inherit;">????</span></span><span style="color: #1d2129; font-family: Helvetica, Arial, sans-serif;">&nbsp;Bảo h&agrave;nh keo vĩnh viễn</span></p>', 0, 19, 7),
(45, '<p>D&eacute;p nơ</p>\r\n<p>D65</p>', '130k.jpg', 130000, '2017-07-15 16:08:59', 1000, 0, 0, '<p><span class="_5mfr _47e3" style="line-height: 0; vertical-align: middle; margin: 0px 1px; font-family: Helvetica, Arial, sans-serif; color: #1d2129;"><img class="img" style="border: 0px; vertical-align: -3px;" role="presentation" src="https://www.facebook.com/images/emoji.php/v9/f40/1/16/1f4a5.png" alt="" width="16" height="16" /><span class="_7oe" style="display: inline-block; font-size: 0px; width: 0px; font-family: inherit;">????</span></span><span style="color: #1d2129; font-family: Helvetica, Arial, sans-serif;">&nbsp;H&agrave;ng QC đẹp y h&igrave;nh</span><br style="color: #1d2129; font-family: Helvetica, Arial, sans-serif;" /><span class="_5mfr _47e3" style="line-height: 0; vertical-align: middle; margin: 0px 1px; font-family: Helvetica, Arial, sans-serif; color: #1d2129;"><img class="img" style="border: 0px; vertical-align: -3px;" role="presentation" src="https://www.facebook.com/images/emoji.php/v9/f40/1/16/1f4a5.png" alt="" width="16" height="16" /><span class="_7oe" style="display: inline-block; font-size: 0px; width: 0px; font-family: inherit;">????</span></span><span style="color: #1d2129; font-family: Helvetica, Arial, sans-serif;">&nbsp;Bảo h&agrave;nh keo vĩnh viễn</span></p>', 0, 18, 7),
(46, '<p>BB Bong</p>\r\n<p>b89</p>', '140kkk.jpg', 140000, '2017-07-15 16:10:46', 1000, 0, 0, '<p><span class="_5mfr _47e3" style="line-height: 0; vertical-align: middle; margin: 0px 1px; font-family: Helvetica, Arial, sans-serif; color: #1d2129;"><img class="img" style="border: 0px; vertical-align: -3px;" role="presentation" src="https://www.facebook.com/images/emoji.php/v9/f40/1/16/1f4a5.png" alt="" width="16" height="16" /><span class="_7oe" style="display: inline-block; font-size: 0px; width: 0px; font-family: inherit;">????</span></span><span style="color: #1d2129; font-family: Helvetica, Arial, sans-serif;">&nbsp;H&agrave;ng QC đẹp y h&igrave;nh</span><br style="color: #1d2129; font-family: Helvetica, Arial, sans-serif;" /><span class="_5mfr _47e3" style="line-height: 0; vertical-align: middle; margin: 0px 1px; font-family: Helvetica, Arial, sans-serif; color: #1d2129;"><img class="img" style="border: 0px; vertical-align: -3px;" role="presentation" src="https://www.facebook.com/images/emoji.php/v9/f40/1/16/1f4a5.png" alt="" width="16" height="16" /><span class="_7oe" style="display: inline-block; font-size: 0px; width: 0px; font-family: inherit;">????</span></span><span style="color: #1d2129; font-family: Helvetica, Arial, sans-serif;">&nbsp;Bảo h&agrave;nh keo vĩnh viễn</span></p>', 0, 14, 7),
(47, '<p>Cao g&oacute;t d&acirc;y</p>\r\n<p>CG9</p>', '200k.jpg', 200000, '2017-07-15 16:13:44', 1000, 0, 0, '<p><span class="_5mfr _47e3" style="line-height: 0; vertical-align: middle; margin: 0px 1px; font-family: Helvetica, Arial, sans-serif; color: #1d2129;"><img class="img" style="border: 0px; vertical-align: -3px;" role="presentation" src="https://www.facebook.com/images/emoji.php/v9/f40/1/16/1f4a5.png" alt="" width="16" height="16" /><span class="_7oe" style="display: inline-block; font-size: 0px; width: 0px; font-family: inherit;">????</span></span><span style="color: #1d2129; font-family: Helvetica, Arial, sans-serif;">&nbsp;H&agrave;ng QC đẹp y h&igrave;nh</span><br style="color: #1d2129; font-family: Helvetica, Arial, sans-serif;" /><span class="_5mfr _47e3" style="line-height: 0; vertical-align: middle; margin: 0px 1px; font-family: Helvetica, Arial, sans-serif; color: #1d2129;"><img class="img" style="border: 0px; vertical-align: -3px;" role="presentation" src="https://www.facebook.com/images/emoji.php/v9/f40/1/16/1f4a5.png" alt="" width="16" height="16" /><span class="_7oe" style="display: inline-block; font-size: 0px; width: 0px; font-family: inherit;">????</span></span><span style="color: #1d2129; font-family: Helvetica, Arial, sans-serif;">&nbsp;Bảo h&agrave;nh keo vĩnh viễn</span></p>', 0, 13, 7),
(48, '<p>Cao g&oacute;t đế trong</p>\r\n<p>CG6</p>', '200kk.jpg', 200000, '2017-07-15 16:19:27', 1000, 0, 0, '<p><span class="_5mfr _47e3" style="line-height: 0; vertical-align: middle; margin: 0px 1px; font-family: Helvetica, Arial, sans-serif; color: #1d2129;"><img class="img" style="border: 0px; vertical-align: -3px;" role="presentation" src="https://www.facebook.com/images/emoji.php/v9/f40/1/16/1f4a5.png" alt="" width="16" height="16" /><span class="_7oe" style="display: inline-block; font-size: 0px; width: 0px; font-family: inherit;">????</span></span><span style="color: #1d2129; font-family: Helvetica, Arial, sans-serif;">&nbsp;H&agrave;ng QC đẹp y h&igrave;nh</span><br style="color: #1d2129; font-family: Helvetica, Arial, sans-serif;" /><span class="_5mfr _47e3" style="line-height: 0; vertical-align: middle; margin: 0px 1px; font-family: Helvetica, Arial, sans-serif; color: #1d2129;"><img class="img" style="border: 0px; vertical-align: -3px;" role="presentation" src="https://www.facebook.com/images/emoji.php/v9/f40/1/16/1f4a5.png" alt="" width="16" height="16" /><span class="_7oe" style="display: inline-block; font-size: 0px; width: 0px; font-family: inherit;">????</span></span><span style="color: #1d2129; font-family: Helvetica, Arial, sans-serif;">&nbsp;Bảo h&agrave;nh keo vĩnh viễn</span></p>', 0, 13, 7),
(49, '<p>D&eacute;p thổ cẩm</p>\r\n<p>Tc6</p>', '160kk.jpg', 160000, '2017-07-15 16:24:36', 1000, 0, 0, '<p><span class="_5mfr _47e3" style="line-height: 0; vertical-align: middle; margin: 0px 1px; font-family: Helvetica, Arial, sans-serif; color: #1d2129;"><img class="img" style="border: 0px; vertical-align: -3px;" role="presentation" src="https://www.facebook.com/images/emoji.php/v9/f40/1/16/1f4a5.png" alt="" width="16" height="16" /><span class="_7oe" style="display: inline-block; font-size: 0px; width: 0px; font-family: inherit;">????</span></span><span style="color: #1d2129; font-family: Helvetica, Arial, sans-serif;">&nbsp;H&agrave;ng QC đẹp y h&igrave;nh</span><br style="color: #1d2129; font-family: Helvetica, Arial, sans-serif;" /><span class="_5mfr _47e3" style="line-height: 0; vertical-align: middle; margin: 0px 1px; font-family: Helvetica, Arial, sans-serif; color: #1d2129;"><img class="img" style="border: 0px; vertical-align: -3px;" role="presentation" src="https://www.facebook.com/images/emoji.php/v9/f40/1/16/1f4a5.png" alt="" width="16" height="16" /><span class="_7oe" style="display: inline-block; font-size: 0px; width: 0px; font-family: inherit;">????</span></span><span style="color: #1d2129; font-family: Helvetica, Arial, sans-serif;">&nbsp;Bảo h&agrave;nh keo vĩnh viễn</span></p>', 0, 18, 7),
(50, '<p>TT trắng sao</p>\r\n<p>T7</p>', '150xk.jpg', 150000, '2017-07-15 16:26:16', 1000, 0, 0, '<p><span class="_5mfr _47e3" style="line-height: 0; vertical-align: middle; margin: 0px 1px; font-family: Helvetica, Arial, sans-serif; color: #1d2129;"><img class="img" style="border: 0px; vertical-align: -3px;" role="presentation" src="https://www.facebook.com/images/emoji.php/v9/f40/1/16/1f4a5.png" alt="" width="16" height="16" /><span class="_7oe" style="display: inline-block; font-size: 0px; width: 0px; font-family: inherit;">????</span></span><span style="color: #1d2129; font-family: Helvetica, Arial, sans-serif;">&nbsp;H&agrave;ng QC đẹp y h&igrave;nh</span><br style="color: #1d2129; font-family: Helvetica, Arial, sans-serif;" /><span class="_5mfr _47e3" style="line-height: 0; vertical-align: middle; margin: 0px 1px; font-family: Helvetica, Arial, sans-serif; color: #1d2129;"><img class="img" style="border: 0px; vertical-align: -3px;" role="presentation" src="https://www.facebook.com/images/emoji.php/v9/f40/1/16/1f4a5.png" alt="" width="16" height="16" /><span class="_7oe" style="display: inline-block; font-size: 0px; width: 0px; font-family: inherit;">????</span></span><span style="color: #1d2129; font-family: Helvetica, Arial, sans-serif;">&nbsp;Bảo h&agrave;nh keo vĩnh viễn</span></p>', 0, 17, 7),
(51, '<p>Thể thao Td</p>\r\n<p>MT18</p>', '180xk.jpg', 180000, '2017-07-15 16:28:00', 1000, 0, 0, '<p><span class="_5mfr _47e3" style="line-height: 0; vertical-align: middle; margin: 0px 1px; font-family: Helvetica, Arial, sans-serif; color: #1d2129;"><img class="img" style="border: 0px; vertical-align: -3px;" role="presentation" src="https://www.facebook.com/images/emoji.php/v9/f40/1/16/1f4a5.png" alt="" width="16" height="16" /><span class="_7oe" style="display: inline-block; font-size: 0px; width: 0px; font-family: inherit;">????</span></span><span style="color: #1d2129; font-family: Helvetica, Arial, sans-serif;">&nbsp;H&agrave;ng QC đẹp y h&igrave;nh</span><br style="color: #1d2129; font-family: Helvetica, Arial, sans-serif;" /><span class="_5mfr _47e3" style="line-height: 0; vertical-align: middle; margin: 0px 1px; font-family: Helvetica, Arial, sans-serif; color: #1d2129;"><img class="img" style="border: 0px; vertical-align: -3px;" role="presentation" src="https://www.facebook.com/images/emoji.php/v9/f40/1/16/1f4a5.png" alt="" width="16" height="16" /><span class="_7oe" style="display: inline-block; font-size: 0px; width: 0px; font-family: inherit;">????</span></span><span style="color: #1d2129; font-family: Helvetica, Arial, sans-serif;">&nbsp;Bảo h&agrave;nh keo vĩnh viễn</span></p>', 0, 17, 7),
(52, '<p>Thể thao Mt đen</p>\r\n<p>Mt8</p>', '180kx.jpg', 180000, '2017-07-15 16:29:12', 1000, 0, 0, '<p><span class="_5mfr _47e3" style="line-height: 0; vertical-align: middle; margin: 0px 1px; font-family: Helvetica, Arial, sans-serif; color: #1d2129;"><img class="img" style="border: 0px; vertical-align: -3px;" role="presentation" src="https://www.facebook.com/images/emoji.php/v9/f40/1/16/1f4a5.png" alt="" width="16" height="16" /><span class="_7oe" style="display: inline-block; font-size: 0px; width: 0px; font-family: inherit;">????</span></span><span style="color: #1d2129; font-family: Helvetica, Arial, sans-serif;">&nbsp;H&agrave;ng QC đẹp y h&igrave;nh</span><br style="color: #1d2129; font-family: Helvetica, Arial, sans-serif;" /><span class="_5mfr _47e3" style="line-height: 0; vertical-align: middle; margin: 0px 1px; font-family: Helvetica, Arial, sans-serif; color: #1d2129;"><img class="img" style="border: 0px; vertical-align: -3px;" role="presentation" src="https://www.facebook.com/images/emoji.php/v9/f40/1/16/1f4a5.png" alt="" width="16" height="16" /><span class="_7oe" style="display: inline-block; font-size: 0px; width: 0px; font-family: inherit;">????</span></span><span style="color: #1d2129; font-family: Helvetica, Arial, sans-serif;">&nbsp;Bảo h&agrave;nh keo vĩnh viễn</span></p>', 0, 17, 7),
(53, '<p>D&eacute;p nơ m&agrave;u</p>\r\n<p>MD9</p>', '90k.jpg', 90000, '2017-07-15 16:30:30', 999, 0, 1, '<p><span class="_5mfr _47e3" style="line-height: 0; vertical-align: middle; margin: 0px 1px; font-family: Helvetica, Arial, sans-serif; color: #1d2129;"><img class="img" style="border: 0px; vertical-align: -3px;" role="presentation" src="https://www.facebook.com/images/emoji.php/v9/f40/1/16/1f4a5.png" alt="" width="16" height="16" /><span class="_7oe" style="display: inline-block; font-size: 0px; width: 0px; font-family: inherit;">????</span></span><span style="color: #1d2129; font-family: Helvetica, Arial, sans-serif;">&nbsp;H&agrave;ng QC đẹp y h&igrave;nh</span><br style="color: #1d2129; font-family: Helvetica, Arial, sans-serif;" /><span class="_5mfr _47e3" style="line-height: 0; vertical-align: middle; margin: 0px 1px; font-family: Helvetica, Arial, sans-serif; color: #1d2129;"><img class="img" style="border: 0px; vertical-align: -3px;" role="presentation" src="https://www.facebook.com/images/emoji.php/v9/f40/1/16/1f4a5.png" alt="" width="16" height="16" /><span class="_7oe" style="display: inline-block; font-size: 0px; width: 0px; font-family: inherit;">????</span></span><span style="color: #1d2129; font-family: Helvetica, Arial, sans-serif;">&nbsp;Bảo h&agrave;nh keo vĩnh viễn</span></p>', 0, 18, 7),
(54, '<p>CG đế trong</p>\r\n<p>Ms78</p>', '210k.jpg', 210000, '2017-07-15 16:31:51', 1000, 0, 0, '<p><span class="_5mfr _47e3" style="line-height: 0; vertical-align: middle; margin: 0px 1px; font-family: Helvetica, Arial, sans-serif; color: #1d2129;"><img class="img" style="border: 0px; vertical-align: -3px;" role="presentation" src="https://www.facebook.com/images/emoji.php/v9/f40/1/16/1f4a5.png" alt="" width="16" height="16" /><span class="_7oe" style="display: inline-block; font-size: 0px; width: 0px; font-family: inherit;">????</span></span><span style="color: #1d2129; font-family: Helvetica, Arial, sans-serif;">&nbsp;H&agrave;ng QC đẹp y h&igrave;nh</span><br style="color: #1d2129; font-family: Helvetica, Arial, sans-serif;" /><span class="_5mfr _47e3" style="line-height: 0; vertical-align: middle; margin: 0px 1px; font-family: Helvetica, Arial, sans-serif; color: #1d2129;"><img class="img" style="border: 0px; vertical-align: -3px;" role="presentation" src="https://www.facebook.com/images/emoji.php/v9/f40/1/16/1f4a5.png" alt="" width="16" height="16" /><span class="_7oe" style="display: inline-block; font-size: 0px; width: 0px; font-family: inherit;">????</span></span><span style="color: #1d2129; font-family: Helvetica, Arial, sans-serif;">&nbsp;Bảo h&agrave;nh keo vĩnh viễn</span></p>', 0, 13, 7),
(55, '<p>D&eacute;p cao nơ nhẹ</p>\r\n<p>Md8</p>', '180kkk.jpg', 180000, '2017-07-15 16:33:11', 1000, 0, 0, '<p><span class="_5mfr _47e3" style="line-height: 0; vertical-align: middle; margin: 0px 1px; font-family: Helvetica, Arial, sans-serif; color: #1d2129;"><img class="img" style="border: 0px; vertical-align: -3px;" role="presentation" src="https://www.facebook.com/images/emoji.php/v9/f40/1/16/1f4a5.png" alt="" width="16" height="16" /><span class="_7oe" style="display: inline-block; font-size: 0px; width: 0px; font-family: inherit;">????</span></span><span style="color: #1d2129; font-family: Helvetica, Arial, sans-serif;">&nbsp;H&agrave;ng QC đẹp y h&igrave;nh</span><br style="color: #1d2129; font-family: Helvetica, Arial, sans-serif;" /><span class="_5mfr _47e3" style="line-height: 0; vertical-align: middle; margin: 0px 1px; font-family: Helvetica, Arial, sans-serif; color: #1d2129;"><img class="img" style="border: 0px; vertical-align: -3px;" role="presentation" src="https://www.facebook.com/images/emoji.php/v9/f40/1/16/1f4a5.png" alt="" width="16" height="16" /><span class="_7oe" style="display: inline-block; font-size: 0px; width: 0px; font-family: inherit;">????</span></span><span style="color: #1d2129; font-family: Helvetica, Arial, sans-serif;">&nbsp;Bảo h&agrave;nh keo vĩnh viễn</span></p>', 0, 12, 7),
(56, '<p>D&eacute;p gấu</p>\r\n<p>D56</p>', '100k.jpg', 100000, '2017-07-15 16:34:10', 1000, 0, 0, '<p><span class="_5mfr _47e3" style="line-height: 0; vertical-align: middle; margin: 0px 1px; font-family: Helvetica, Arial, sans-serif; color: #1d2129;"><img class="img" style="border: 0px; vertical-align: -3px;" role="presentation" src="https://www.facebook.com/images/emoji.php/v9/f40/1/16/1f4a5.png" alt="" width="16" height="16" /><span class="_7oe" style="display: inline-block; font-size: 0px; width: 0px; font-family: inherit;">????</span></span><span style="color: #1d2129; font-family: Helvetica, Arial, sans-serif;">&nbsp;H&agrave;ng QC đẹp y h&igrave;nh</span><br style="color: #1d2129; font-family: Helvetica, Arial, sans-serif;" /><span class="_5mfr _47e3" style="line-height: 0; vertical-align: middle; margin: 0px 1px; font-family: Helvetica, Arial, sans-serif; color: #1d2129;"><img class="img" style="border: 0px; vertical-align: -3px;" role="presentation" src="https://www.facebook.com/images/emoji.php/v9/f40/1/16/1f4a5.png" alt="" width="16" height="16" /><span class="_7oe" style="display: inline-block; font-size: 0px; width: 0px; font-family: inherit;">????</span></span><span style="color: #1d2129; font-family: Helvetica, Arial, sans-serif;">&nbsp;Bảo h&agrave;nh keo vĩnh viễn</span></p>', 0, 15, 7),
(57, '<p>Thể thao trắng DT</p>\r\n<p>Ms5</p>', '160xk.jpg', 160000, '2017-07-15 16:35:30', 1000, 0, 0, '<p><span class="_5mfr _47e3" style="line-height: 0; vertical-align: middle; margin: 0px 1px; font-family: Helvetica, Arial, sans-serif; color: #1d2129;"><img class="img" style="border: 0px; vertical-align: -3px;" role="presentation" src="https://www.facebook.com/images/emoji.php/v9/f40/1/16/1f4a5.png" alt="" width="16" height="16" /><span class="_7oe" style="display: inline-block; font-size: 0px; width: 0px; font-family: inherit;">????</span></span><span style="color: #1d2129; font-family: Helvetica, Arial, sans-serif;">&nbsp;H&agrave;ng QC đẹp y h&igrave;nh</span><br style="color: #1d2129; font-family: Helvetica, Arial, sans-serif;" /><span class="_5mfr _47e3" style="line-height: 0; vertical-align: middle; margin: 0px 1px; font-family: Helvetica, Arial, sans-serif; color: #1d2129;"><img class="img" style="border: 0px; vertical-align: -3px;" role="presentation" src="https://www.facebook.com/images/emoji.php/v9/f40/1/16/1f4a5.png" alt="" width="16" height="16" /><span class="_7oe" style="display: inline-block; font-size: 0px; width: 0px; font-family: inherit;">????</span></span><span style="color: #1d2129; font-family: Helvetica, Arial, sans-serif;">&nbsp;Bảo h&agrave;nh keo vĩnh viễn</span></p>', 0, 17, 7),
(58, '<p>M&oacute;c kh&oacute;a x&ugrave;</p>\r\n<p>T', '1.jpg', 55000, '2017-07-15 16:36:48', 998, 0, 3, '', 0, 16, 7),
(64, '<p>M&oacute;c kh&oacute;a og</p>\r\n<p>MK2</p>', '2.jpg', 55000, '2017-07-15 16:50:43', 1000, 0, 0, '', 0, 16, 7),
(63, '<p>D&eacute;p gấu</p>\r\n<p>DG4</p>', '100kk.jpg', 100000, '2017-07-15 16:44:05', 1000, 0, 3, '<p><span class="_5mfr _47e3" style="line-height: 0; vertical-align: middle; margin: 0px 1px; font-family: Helvetica, Arial, sans-serif; color: #1d2129;"><img class="img" style="border: 0px; vertical-align: -3px;" role="presentation" src="https://www.facebook.com/images/emoji.php/v9/f40/1/16/1f4a5.png" alt="" width="16" height="16" /><span class="_7oe" style="display: inline-block; font-size: 0px; width: 0px; font-family: inherit;">????</span></span><span style="color: #1d2129; font-family: Helvetica, Arial, sans-serif;">&nbsp;H&agrave;ng QC đẹp y h&igrave;nh</span><br style="color: #1d2129; font-family: Helvetica, Arial, sans-serif;" /><span class="_5mfr _47e3" style="line-height: 0; vertical-align: middle; margin: 0px 1px; font-family: Helvetica, Arial, sans-serif; color: #1d2129;"><img class="img" style="border: 0px; vertical-align: -3px;" role="presentation" src="https://www.facebook.com/images/emoji.php/v9/f40/1/16/1f4a5.png" alt="" width="16" height="16" /><span class="_7oe" style="display: inline-block; font-size: 0px; width: 0px; font-family: inherit;">????</span></span><span style="color: #1d2129; font-family: Helvetica, Arial, sans-serif;">&nbsp;Bảo h&agrave;nh keo vĩnh viễn</span></p>', 0, 15, 7);

-- --------------------------------------------------------

--
-- Table structure for table `taikhoan`
--

CREATE TABLE `taikhoan` (
  `MaTaiKhoan` int(11) NOT NULL,
  `TenDangNhap` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MatKhau` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TenHienThi` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DiaChi` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DienThoai` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Email` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `BiXoa` tinyint(1) DEFAULT '0',
  `MaLoaiTaiKhoan` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `taikhoan`
--

INSERT INTO `taikhoan` (`MaTaiKhoan`, `TenDangNhap`, `MatKhau`, `TenHienThi`, `DiaChi`, `DienThoai`, `Email`, `BiXoa`, `MaLoaiTaiKhoan`) VALUES
(1, 'admin', 'admin', 'Admin Website', 'XXX', '01698655558', 'nguyentrung6626@gmail.com', 0, 2);

-- --------------------------------------------------------

--
-- Table structure for table `tinhtrang`
--

CREATE TABLE `tinhtrang` (
  `MaTinhTrang` int(11) NOT NULL,
  `TenTinhTrang` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tinhtrang`
--

INSERT INTO `tinhtrang` (`MaTinhTrang`, `TenTinhTrang`) VALUES
(1, 'Đặt hàng'),
(2, 'Đang giao hàng'),
(3, 'Thanh toán'),
(4, 'Hủy');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `chitietdondathang`
--
ALTER TABLE `chitietdondathang`
  ADD PRIMARY KEY (`MaChiTietDonDatHang`),
  ADD KEY `fk_ChiTietDonDatHang_DonDatHang1_idx` (`MaDonDatHang`),
  ADD KEY `fk_ChiTietDonDatHang_SanPham1_idx` (`MaSanPham`);

--
-- Indexes for table `dondathang`
--
ALTER TABLE `dondathang`
  ADD PRIMARY KEY (`MaDonDatHang`),
  ADD KEY `fk_DonDatHang_TaiKhoan1_idx` (`MaTaiKhoan`),
  ADD KEY `fk_DonDatHang_TinhTrang1_idx` (`MaTinhTrang`);

--
-- Indexes for table `hangsanxuat`
--
ALTER TABLE `hangsanxuat`
  ADD PRIMARY KEY (`MaHangSanXuat`);

--
-- Indexes for table `loaisanpham`
--
ALTER TABLE `loaisanpham`
  ADD PRIMARY KEY (`MaLoaiSanPham`);

--
-- Indexes for table `loaitaikhoan`
--
ALTER TABLE `loaitaikhoan`
  ADD PRIMARY KEY (`MaLoaiTaiKhoan`);

--
-- Indexes for table `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`MaSanPham`),
  ADD KEY `fk_SanPham_LoaiSanPham1_idx` (`MaLoaiSanPham`),
  ADD KEY `fk_SanPham_HangSanXuat1_idx` (`MaHangSanXuat`);

--
-- Indexes for table `taikhoan`
--
ALTER TABLE `taikhoan`
  ADD PRIMARY KEY (`MaTaiKhoan`),
  ADD KEY `fk_TaiKhoan_LoaiTaiKhoan_idx` (`MaLoaiTaiKhoan`);

--
-- Indexes for table `tinhtrang`
--
ALTER TABLE `tinhtrang`
  ADD PRIMARY KEY (`MaTinhTrang`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `hangsanxuat`
--
ALTER TABLE `hangsanxuat`
  MODIFY `MaHangSanXuat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `loaisanpham`
--
ALTER TABLE `loaisanpham`
  MODIFY `MaLoaiSanPham` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `loaitaikhoan`
--
ALTER TABLE `loaitaikhoan`
  MODIFY `MaLoaiTaiKhoan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `MaSanPham` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;
--
-- AUTO_INCREMENT for table `taikhoan`
--
ALTER TABLE `taikhoan`
  MODIFY `MaTaiKhoan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `tinhtrang`
--
ALTER TABLE `tinhtrang`
  MODIFY `MaTinhTrang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
