-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 13, 2015 at 11:27 AM
-- Server version: 5.6.20
-- PHP Version: 5.5.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `qlsinhvien`
--

-- --------------------------------------------------------

--
-- Table structure for table `giaovien`
--

CREATE TABLE IF NOT EXISTS `giaovien` (
`idGiaoVien` int(12) unsigned NOT NULL,
  `TaiKhoan` varchar(254) CHARACTER SET utf8 DEFAULT NULL,
  `MatKhau` varchar(254) CHARACTER SET utf8 DEFAULT NULL,
  `HoTen` varchar(254) CHARACTER SET utf8 DEFAULT NULL,
  `DiaChi` varchar(254) CHARACTER SET utf8 DEFAULT NULL,
  `Email` varchar(254) CHARACTER SET utf8 DEFAULT NULL,
  `DienThoai` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `GioiTinh` int(12) DEFAULT NULL,
  `ChucVu` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `MaKhoa` int(12) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `khoa`
--

CREATE TABLE IF NOT EXISTS `khoa` (
`idKhoa` int(10) unsigned NOT NULL,
  `TenKhoa` text CHARACTER SET utf8mb4
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `khoa`
--

INSERT INTO `khoa` (`idKhoa`, `TenKhoa`) VALUES
(1, 'Công Nghệ Thông Tin');

-- --------------------------------------------------------

--
-- Table structure for table `loaihinhdaotao`
--

CREATE TABLE IF NOT EXISTS `loaihinhdaotao` (
`idLoaiHinhDaoTao` int(12) unsigned NOT NULL,
  `TenLoaiHinhDaoTao` varchar(254) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `lop`
--

CREATE TABLE IF NOT EXISTS `lop` (
`idLop` int(10) unsigned NOT NULL,
  `TenLop` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `MaNganh` int(11) DEFAULT NULL,
  `MaGVCN` int(11) DEFAULT NULL,
  `LoaiHinhDaoTao` varchar(50) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `lop`
--

INSERT INTO `lop` (`idLop`, `TenLop`, `MaNganh`, `MaGVCN`, `LoaiHinhDaoTao`) VALUES
(1, '05DHPM', 1, 1, 'Đại Học');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE IF NOT EXISTS `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2015_05_12_050149_create_giao_viens_table', 1),
('2014_10_12_000000_create_users_table', 1),
('2014_10_12_100000_create_password_resets_table', 1),
('2015_03_22_071148_create_table_kehoach', 1),
('2015_03_22_074450_create_thongke_table', 1),
('2015_03_22_074908_create_loaicongviec_table', 1),
('2015_03_22_075031_create_thuchi_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `nganh`
--

CREATE TABLE IF NOT EXISTS `nganh` (
`idNganh` int(12) unsigned NOT NULL,
  `TenNganh` varchar(254) CHARACTER SET utf8 DEFAULT NULL,
  `MaKhoa` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `quatrinhthuctap`
--

CREATE TABLE IF NOT EXISTS `quatrinhthuctap` (
`idQTTT` int(10) unsigned NOT NULL,
  `MaSinhVien` int(11) DEFAULT NULL,
  `MaThucTap` int(11) DEFAULT NULL,
  `NgayThucTap` date DEFAULT NULL,
  `KinhDoSang` text,
  `ViDoSang` text,
  `ThoiGianSang` time DEFAULT NULL,
  `KinhDoChieu` text,
  `ViDoChieu` text,
  `ThoiGianChieu` time DEFAULT NULL,
  `GhiChuSang` text,
  `GhiChuChieu` text
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=38 ;

--
-- Dumping data for table `quatrinhthuctap`
--

INSERT INTO `quatrinhthuctap` (`idQTTT`, `MaSinhVien`, `MaThucTap`, `NgayThucTap`, `KinhDoSang`, `ViDoSang`, `ThoiGianSang`, `KinhDoChieu`, `ViDoChieu`, `ThoiGianChieu`, `GhiChuSang`, `GhiChuChieu`) VALUES
(1, 1, NULL, '2015-04-29', '10.7324566', '106.672355', '09:25:23', '10.7324566', '106.672355', '14:25:23', NULL, NULL),
(2, 1, NULL, '2015-04-30', '10.7324566', '106.672355', '09:25:23', '10.7324566', '106.672355', '14:25:23', NULL, NULL),
(8, 0, NULL, '2015-04-30', '10.77594946', '106.67409718', '09:02:48', NULL, NULL, NULL, NULL, NULL),
(37, 1, NULL, '2015-05-04', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(36, 1, NULL, '2015-05-03', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(35, 0, NULL, '2015-05-02', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(34, 1, NULL, '2015-05-01', NULL, NULL, NULL, '10.7329481', '106.6724981', '14:26:26', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sinhvien`
--

CREATE TABLE IF NOT EXISTS `sinhvien` (
`id` int(15) unsigned NOT NULL,
  `HoTen` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `DiaChi` text CHARACTER SET utf8,
  `QuanHuyen` text CHARACTER SET utf8,
  `TinhTP` text CHARACTER SET utf8,
  `Email` text CHARACTER SET utf8,
  `GioiTinh` int(11) DEFAULT NULL,
  `MSSV` int(15) DEFAULT NULL,
  `Password` text CHARACTER SET utf8,
  `KeyID` text CHARACTER SET utf8,
  `SDT` text CHARACTER SET utf8,
  `DanToc` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `NgaySinh` date DEFAULT NULL,
  `NoiSinh` text CHARACTER SET utf8,
  `MaLop` int(11) DEFAULT NULL,
  `MaLoaiHinh` int(11) DEFAULT NULL,
  `Avatar` text CHARACTER SET utf8
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COMMENT='SinhVien' AUTO_INCREMENT=3 ;

--
-- Dumping data for table `sinhvien`
--

INSERT INTO `sinhvien` (`id`, `HoTen`, `DiaChi`, `QuanHuyen`, `TinhTP`, `Email`, `GioiTinh`, `MSSV`, `Password`, `KeyID`, `SDT`, `DanToc`, `NgaySinh`, `NoiSinh`, `MaLop`, `MaLoaiHinh`, `Avatar`) VALUES
(1, '', '', '', '', '', 0, 123, '123', '', '', '', '0000-00-01', '', 0, 0, NULL),
(2, 'Dương Chí Hoàng', 'C3/26H', 'Bình Hưng', 'Bình Chánh', 'hchihoang@gmail.com', 0, 1, '12', '353836067805663', '01653158426', '', '1993-11-05', '', 1, 0, 'http://hchihoang.byethost7.com/BlueEyes/uploads/IMG_7676633533846.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `thoigianthuctap`
--

CREATE TABLE IF NOT EXISTS `thoigianthuctap` (
`idThoiGianThucTap` int(12) unsigned NOT NULL,
  `MaKhoa` int(12) DEFAULT NULL,
  `NamThucTap` text,
  `NgayBatDau` date DEFAULT NULL,
  `NgayKetThuc` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `thongbao`
--

CREATE TABLE IF NOT EXISTS `thongbao` (
`id` int(11) unsigned NOT NULL,
  `TieuDe` varchar(254) CHARACTER SET utf8 DEFAULT NULL,
  `NoiDung` text CHARACTER SET utf8,
  `NgayDang` date DEFAULT NULL,
  `Khoa` int(11) DEFAULT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `thongbao`
--

INSERT INTO `thongbao` (`id`, `TieuDe`, `NoiDung`, `NgayDang`, `Khoa`) VALUES
(1, 'Nộp báo cáo thực tập', 'Nộp báo cáo thực tập ngày 23/3/2015', '2015-01-01', 1),
(2, 'Nộp báo cáo tốt nghiệp', 'Hạn chót nộp báo cáo tốt nghiệp là ngày 23/4/2015', '2015-01-01', 1);

-- --------------------------------------------------------

--
-- Table structure for table `thuctap`
--

CREATE TABLE IF NOT EXISTS `thuctap` (
`idThucTap` int(10) unsigned NOT NULL,
  `MaSinhVien` int(11) DEFAULT NULL,
  `MaThoiGianThucTap` int(12) DEFAULT NULL,
  `CongTyThucTap` text CHARACTER SET utf8,
  `DiaChiCongTyThucTap` text CHARACTER SET utf8mb4,
  `KinhDoCongTyThucTap` text,
  `ViDoCongTyThucTap` text
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `thuctap`
--

INSERT INTO `thuctap` (`idThucTap`, `MaSinhVien`, `MaThoiGianThucTap`, `CongTyThucTap`, `DiaChiCongTyThucTap`, `KinhDoCongTyThucTap`, `ViDoCongTyThucTap`) VALUES
(1, 1, NULL, 'Win Win', 'Lý thường kiệt, quận 10', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
`id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Nguyễn Hữu Hiển', 'nguyenhuuhientv@gmail.com', '$2y$10$cR1gVq.cmnwB9i025WdbYutxK2nrCBoioXVyNc2K5pRCsZq0pHt3a', 'Qz1jbWTLZBTzqa72Jg1UiMLMTSgLEUkpIdhcGPVq9gtQRY3bU1cFKMwjpiJW', '2015-03-22 01:18:40', '2015-05-13 02:13:56');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `giaovien`
--
ALTER TABLE `giaovien`
 ADD PRIMARY KEY (`idGiaoVien`);

--
-- Indexes for table `khoa`
--
ALTER TABLE `khoa`
 ADD PRIMARY KEY (`idKhoa`);

--
-- Indexes for table `loaihinhdaotao`
--
ALTER TABLE `loaihinhdaotao`
 ADD PRIMARY KEY (`idLoaiHinhDaoTao`);

--
-- Indexes for table `lop`
--
ALTER TABLE `lop`
 ADD PRIMARY KEY (`idLop`), ADD UNIQUE KEY `MaLop` (`idLop`);

--
-- Indexes for table `nganh`
--
ALTER TABLE `nganh`
 ADD PRIMARY KEY (`idNganh`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
 ADD KEY `password_resets_email_index` (`email`), ADD KEY `password_resets_token_index` (`token`);

--
-- Indexes for table `quatrinhthuctap`
--
ALTER TABLE `quatrinhthuctap`
 ADD PRIMARY KEY (`idQTTT`);

--
-- Indexes for table `sinhvien`
--
ALTER TABLE `sinhvien`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `thoigianthuctap`
--
ALTER TABLE `thoigianthuctap`
 ADD PRIMARY KEY (`idThoiGianThucTap`);

--
-- Indexes for table `thongbao`
--
ALTER TABLE `thongbao`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `thuctap`
--
ALTER TABLE `thuctap`
 ADD PRIMARY KEY (`idThucTap`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `giaovien`
--
ALTER TABLE `giaovien`
MODIFY `idGiaoVien` int(12) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `khoa`
--
ALTER TABLE `khoa`
MODIFY `idKhoa` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `loaihinhdaotao`
--
ALTER TABLE `loaihinhdaotao`
MODIFY `idLoaiHinhDaoTao` int(12) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `lop`
--
ALTER TABLE `lop`
MODIFY `idLop` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `nganh`
--
ALTER TABLE `nganh`
MODIFY `idNganh` int(12) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `quatrinhthuctap`
--
ALTER TABLE `quatrinhthuctap`
MODIFY `idQTTT` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=38;
--
-- AUTO_INCREMENT for table `sinhvien`
--
ALTER TABLE `sinhvien`
MODIFY `id` int(15) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `thoigianthuctap`
--
ALTER TABLE `thoigianthuctap`
MODIFY `idThoiGianThucTap` int(12) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `thongbao`
--
ALTER TABLE `thongbao`
MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `thuctap`
--
ALTER TABLE `thuctap`
MODIFY `idThucTap` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
