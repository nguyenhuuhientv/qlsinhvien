-- phpMyAdmin SQL Dump
-- version 3.5.8.2
-- http://www.phpmyadmin.net
--
-- Host: sql108.byetcluster.com
-- Generation Time: May 12, 2015 at 10:59 AM
-- Server version: 5.6.22-71.0
-- PHP Version: 5.3.3

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `b7_15753518_BlueEyes`
--

-- --------------------------------------------------------

--
-- Table structure for table `GiaoVien`
--

CREATE TABLE IF NOT EXISTS `GiaoVien` (
  `idGiaoVien` int(12) unsigned NOT NULL AUTO_INCREMENT,
  `TaiKhoan` varchar(254) CHARACTER SET utf8 DEFAULT NULL,
  `MatKhau` varchar(254) CHARACTER SET utf8 DEFAULT NULL,
  `HoTen` varchar(254) CHARACTER SET utf8 DEFAULT NULL,
  `DiaChi` varchar(254) CHARACTER SET utf8 DEFAULT NULL,
  `Email` varchar(254) CHARACTER SET utf8 DEFAULT NULL,
  `DienThoai` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `GioiTinh` int(12) DEFAULT NULL,
  `ChucVu` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `MaKhoa` int(12) DEFAULT NULL,
  PRIMARY KEY (`idGiaoVien`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `Khoa`
--

CREATE TABLE IF NOT EXISTS `Khoa` (
  `idKhoa` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `TenKhoa` text CHARACTER SET utf8mb4,
  PRIMARY KEY (`idKhoa`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `Khoa`
--

INSERT INTO `Khoa` (`idKhoa`, `TenKhoa`) VALUES
(1, 'Công Nghệ Thông Tin');

-- --------------------------------------------------------

--
-- Table structure for table `LoaiHinhDaoTao`
--

CREATE TABLE IF NOT EXISTS `LoaiHinhDaoTao` (
  `idLoaiHinhDaoTao` int(12) unsigned NOT NULL AUTO_INCREMENT,
  `TenLoaiHinhDaoTao` varchar(254) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`idLoaiHinhDaoTao`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `Lop`
--

CREATE TABLE IF NOT EXISTS `Lop` (
  `idLop` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `TenLop` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `MaNganh` int(11) DEFAULT NULL,
  `MaGVCN` int(11) DEFAULT NULL,
  `LoaiHinhDaoTao` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`idLop`),
  UNIQUE KEY `MaLop` (`idLop`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `Lop`
--

INSERT INTO `Lop` (`idLop`, `TenLop`, `MaNganh`, `MaGVCN`, `LoaiHinhDaoTao`) VALUES
(1, '05DHPM', 1, 1, 'Đại Học');

-- --------------------------------------------------------

--
-- Table structure for table `Nganh`
--

CREATE TABLE IF NOT EXISTS `Nganh` (
  `idNganh` int(12) unsigned NOT NULL AUTO_INCREMENT,
  `TenNganh` varchar(254) CHARACTER SET utf8 DEFAULT NULL,
  `MaKhoa` int(11) DEFAULT NULL,
  PRIMARY KEY (`idNganh`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `Nganh`
--

INSERT INTO `Nganh` (`idNganh`, `TenNganh`, `MaKhoa`) VALUES
(1, 'Kỹ Thuật Phần Mềm', 1);

-- --------------------------------------------------------

--
-- Table structure for table `QuaTrinhThucTap`
--

CREATE TABLE IF NOT EXISTS `QuaTrinhThucTap` (
  `idQTTT` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `MaSinhVien` int(11) DEFAULT NULL,
  `MaThucTap` int(11) DEFAULT NULL,
  `NgayThucTap` date DEFAULT NULL,
  `KinhDoSang` text,
  `ViDoSang` text,
  `ThoiGianSang` time DEFAULT NULL,
  `GhiChuSang` text CHARACTER SET utf8,
  `KinhDoChieu` text,
  `ViDoChieu` text,
  `ThoiGianChieu` time DEFAULT NULL,
  `GhiChuChieu` text CHARACTER SET utf8,
  PRIMARY KEY (`idQTTT`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=38 ;

--
-- Dumping data for table `QuaTrinhThucTap`
--

INSERT INTO `QuaTrinhThucTap` (`idQTTT`, `MaSinhVien`, `MaThucTap`, `NgayThucTap`, `KinhDoSang`, `ViDoSang`, `ThoiGianSang`, `GhiChuSang`, `KinhDoChieu`, `ViDoChieu`, `ThoiGianChieu`, `GhiChuChieu`) VALUES
(1, 1, NULL, '2015-04-29', '10.7324566', '106.672355', '09:25:23', NULL, '10.7324566', '106.672355', '14:25:23', NULL),
(2, 1, NULL, '2015-04-30', '10.7324566', '106.672355', '09:25:23', NULL, '10.7324566', '106.672355', '14:25:23', NULL),
(8, 0, NULL, '2015-04-30', '10.77594946', '106.67409718', '09:02:48', NULL, NULL, NULL, NULL, NULL),
(37, 1, NULL, '2015-05-04', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(36, 1, NULL, '2015-05-03', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(35, 0, NULL, '2015-05-02', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(34, 1, NULL, '2015-05-01', NULL, NULL, NULL, NULL, '10.7329481', '106.6724981', '14:26:26', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `SinhVien`
--

CREATE TABLE IF NOT EXISTS `SinhVien` (
  `id` int(15) unsigned NOT NULL AUTO_INCREMENT,
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
  `Avatar` text CHARACTER SET utf8,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COMMENT='SinhVien' AUTO_INCREMENT=3 ;

--
-- Dumping data for table `SinhVien`
--

INSERT INTO `SinhVien` (`id`, `HoTen`, `DiaChi`, `QuanHuyen`, `TinhTP`, `Email`, `GioiTinh`, `MSSV`, `Password`, `KeyID`, `SDT`, `DanToc`, `NgaySinh`, `NoiSinh`, `MaLop`, `MaLoaiHinh`, `Avatar`) VALUES
(1, '', '', '', '', '', 0, 123, '123', '', '', '', '0000-00-01', '', 0, 0, NULL),
(2, 'Dương Chí Hoàng', 'C3/26H Phạm Hùng', 'Bình Hưng', 'Bình Chánh', 'hchihoang@gmail.com', 0, 1, '12', '353836067805663', '01653158426', '', '1993-11-05', '', 1, 0, 'http://hchihoang.byethost7.com/BlueEyes/uploads/IMG_7676633533846.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `ThoiGianThucTap`
--

CREATE TABLE IF NOT EXISTS `ThoiGianThucTap` (
  `idThoiGianThucTap` int(12) unsigned NOT NULL AUTO_INCREMENT,
  `MaKhoa` int(12) DEFAULT NULL,
  `NamThucTap` text,
  `NgayBatDau` date DEFAULT NULL,
  `NgayKetThuc` date DEFAULT NULL,
  PRIMARY KEY (`idThoiGianThucTap`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `ThongBao`
--

CREATE TABLE IF NOT EXISTS `ThongBao` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `TieuDe` varchar(254) CHARACTER SET utf8 DEFAULT NULL,
  `NoiDung` text CHARACTER SET utf8,
  `NgayDang` date DEFAULT NULL,
  `Khoa` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `ThongBao`
--

INSERT INTO `ThongBao` (`id`, `TieuDe`, `NoiDung`, `NgayDang`, `Khoa`) VALUES
(1, 'Nộp báo cáo thực tập', 'Nộp báo cáo thực tập ngày 23/3/2015', '2015-01-01', 1),
(2, 'Nộp báo cáo tốt nghiệp', 'Hạn chót nộp báo cáo tốt nghiệp là ngày 23/4/2015', '2015-01-01', 1),
(3, 'test', 'abc', '2015-05-11', 2),
(4, 'test', 'abc', '2015-05-11', 2);

-- --------------------------------------------------------

--
-- Table structure for table `ThucTap`
--

CREATE TABLE IF NOT EXISTS `ThucTap` (
  `idThucTap` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `MaSinhVien` int(11) DEFAULT NULL,
  `MaThoiGianThucTap` int(12) DEFAULT NULL,
  `CongTyThucTap` text CHARACTER SET utf8,
  `DiaChiCongTyThucTap` text CHARACTER SET utf8mb4,
  `KinhDoCongTyThucTap` text,
  `ViDoCongTyThucTap` text,
  PRIMARY KEY (`idThucTap`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `ThucTap`
--

INSERT INTO `ThucTap` (`idThucTap`, `MaSinhVien`, `MaThoiGianThucTap`, `CongTyThucTap`, `DiaChiCongTyThucTap`, `KinhDoCongTyThucTap`, `ViDoCongTyThucTap`) VALUES
(1, 1, NULL, 'Win Win', 'Lý thường kiệt, quận 10', NULL, NULL);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
