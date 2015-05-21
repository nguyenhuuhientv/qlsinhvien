-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Client :  127.0.0.1
-- Généré le :  Jeu 21 Mai 2015 à 17:38
-- Version du serveur :  5.6.20
-- Version de PHP :  5.5.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données :  `qlsinhvien`
--

-- --------------------------------------------------------

--
-- Structure de la table `giaovien`
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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Contenu de la table `giaovien`
--

INSERT INTO `giaovien` (`idGiaoVien`, `TaiKhoan`, `MatKhau`, `HoTen`, `DiaChi`, `Email`, `DienThoai`, `GioiTinh`, `ChucVu`, `MaKhoa`) VALUES
(1, 'vancntt', '123', 'Văn', 'abc', 'adsa@gmail.com', '21255346', 1, 'Giáo vụ', 1);

-- --------------------------------------------------------

--
-- Structure de la table `khoa`
--

CREATE TABLE IF NOT EXISTS `khoa` (
`idKhoa` int(10) unsigned NOT NULL,
  `TenKhoa` text CHARACTER SET utf8mb4
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Contenu de la table `khoa`
--

INSERT INTO `khoa` (`idKhoa`, `TenKhoa`) VALUES
(1, 'Công Nghệ Thông Tin');

-- --------------------------------------------------------

--
-- Structure de la table `loaihinhdaotao`
--

CREATE TABLE IF NOT EXISTS `loaihinhdaotao` (
`idLoaiHinhDaoTao` int(12) unsigned NOT NULL,
  `TenLoaiHinhDaoTao` varchar(254) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Contenu de la table `loaihinhdaotao`
--

INSERT INTO `loaihinhdaotao` (`idLoaiHinhDaoTao`, `TenLoaiHinhDaoTao`) VALUES
(1, 'Đại Học'),
(2, 'Cao Đẳng');

-- --------------------------------------------------------

--
-- Structure de la table `lop`
--

CREATE TABLE IF NOT EXISTS `lop` (
`idLop` int(10) unsigned NOT NULL,
  `TenLop` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `MaNganh` int(11) DEFAULT NULL,
  `LoaiHinhDaoTao` varchar(50) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Contenu de la table `lop`
--

INSERT INTO `lop` (`idLop`, `TenLop`, `MaNganh`, `LoaiHinhDaoTao`) VALUES
(1, '05DHPM', 1, 'Đại Học');

-- --------------------------------------------------------

--
-- Structure de la table `migrations`
--

CREATE TABLE IF NOT EXISTS `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `migrations`
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
-- Structure de la table `nganh`
--

CREATE TABLE IF NOT EXISTS `nganh` (
`idNganh` int(12) unsigned NOT NULL,
  `TenNganh` varchar(254) CHARACTER SET utf8 DEFAULT NULL,
  `MaKhoa` int(11) DEFAULT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Contenu de la table `nganh`
--

INSERT INTO `nganh` (`idNganh`, `TenNganh`, `MaKhoa`) VALUES
(1, 'Công Nghệ Phần Mềm', 1);

-- --------------------------------------------------------

--
-- Structure de la table `password_resets`
--

CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('hchihoang@gmail.com', '3c19cc7ddf2305aabfc862d2245bac0ddab39ab8286a52496932347ecc100ce5', '2015-05-20 08:56:56');

-- --------------------------------------------------------

--
-- Structure de la table `quatrinhthuctap`
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
-- Contenu de la table `quatrinhthuctap`
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
-- Structure de la table `sinhvien`
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
  `Avatar` text CHARACTER SET utf8
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COMMENT='SinhVien' AUTO_INCREMENT=3 ;

--
-- Contenu de la table `sinhvien`
--

INSERT INTO `sinhvien` (`id`, `HoTen`, `DiaChi`, `QuanHuyen`, `TinhTP`, `Email`, `GioiTinh`, `MSSV`, `Password`, `KeyID`, `SDT`, `DanToc`, `NgaySinh`, `NoiSinh`, `MaLop`, `Avatar`) VALUES
(1, '', '', '', '', '', 0, 123, '123', '', '', '', '0000-00-01', '', 0, NULL),
(2, 'Dương Chí Hoàng', 'C3/26H Phạm Hùng,Bình Hưng', 'Bình Chánh', 'TP.HCM', 'hchihoang@gmail.com', 0, 1, '12', '353836067805663', '01653158426', '', '1993-11-05', '', 1, 'http://hchihoang.byethost7.com/BlueEyes/uploads/IMG_7676633533846.jpeg');

-- --------------------------------------------------------

--
-- Structure de la table `thoigianthuctap`
--

CREATE TABLE IF NOT EXISTS `thoigianthuctap` (
`idThoiGianThucTap` int(12) unsigned NOT NULL,
  `MaKhoa` int(12) DEFAULT NULL,
  `NamThucTap` text,
  `NgayBatDau` date DEFAULT NULL,
  `NgayKetThuc` date DEFAULT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Contenu de la table `thoigianthuctap`
--

INSERT INTO `thoigianthuctap` (`idThoiGianThucTap`, `MaKhoa`, `NamThucTap`, `NgayBatDau`, `NgayKetThuc`) VALUES
(1, 1, '2014 - 2015', '2015-01-01', '2015-03-23');

-- --------------------------------------------------------

--
-- Structure de la table `thongbao`
--

CREATE TABLE IF NOT EXISTS `thongbao` (
`id` int(11) unsigned NOT NULL,
  `TieuDe` varchar(254) CHARACTER SET utf8 DEFAULT NULL,
  `NoiDung` text CHARACTER SET utf8,
  `NgayDang` date DEFAULT NULL,
  `Khoa` int(11) DEFAULT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Contenu de la table `thongbao`
--

INSERT INTO `thongbao` (`id`, `TieuDe`, `NoiDung`, `NgayDang`, `Khoa`) VALUES
(1, 'Nộp báo cáo thực tập', 'Nộp báo cáo thực tập ngày 23/3/2015', '2015-01-01', 1),
(2, 'Nộp báo cáo tốt nghiệp', 'Hạn chót nộp báo cáo tốt nghiệp là ngày 23/4/2015', '2015-01-01', 1),
(3, 'test', 'abc', '2015-05-15', 2);

-- --------------------------------------------------------

--
-- Structure de la table `thuctap`
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
-- Contenu de la table `thuctap`
--

INSERT INTO `thuctap` (`idThucTap`, `MaSinhVien`, `MaThoiGianThucTap`, `CongTyThucTap`, `DiaChiCongTyThucTap`, `KinhDoCongTyThucTap`, `ViDoCongTyThucTap`) VALUES
(1, 1, NULL, 'Win Win', 'Lý thường kiệt, quận 10', NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
`id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Contenu de la table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Nguyễn Hữu Hiển', 'nguyenhuuhientv@gmail.com', '$2y$10$cR1gVq.cmnwB9i025WdbYutxK2nrCBoioXVyNc2K5pRCsZq0pHt3a', 'X2m1ifIsCfj9gJBT5zsGgWrnw7CwEa3Kw9jI04S36sPrC6ySL7EYgedKUTtu', '2015-03-22 01:18:40', '2015-05-20 08:45:04'),
(2, 'Chí Hoàng', 'hchihoang@gmail.com', '$2y$10$.9XWi6oJWup6zu.gAsIFvuQOIQdIgKcJ2TZnkwSqm3EM/9ABa2C16', 'Iqk0p8MJg2WmvGHTNcxfA5txemrle4TRwHJNWcLOLAssuWbFtPhMYBQ8RKYd', '2015-05-20 08:46:46', '2015-05-20 08:56:08');

--
-- Index pour les tables exportées
--

--
-- Index pour la table `giaovien`
--
ALTER TABLE `giaovien`
 ADD PRIMARY KEY (`idGiaoVien`);

--
-- Index pour la table `khoa`
--
ALTER TABLE `khoa`
 ADD PRIMARY KEY (`idKhoa`);

--
-- Index pour la table `loaihinhdaotao`
--
ALTER TABLE `loaihinhdaotao`
 ADD PRIMARY KEY (`idLoaiHinhDaoTao`);

--
-- Index pour la table `lop`
--
ALTER TABLE `lop`
 ADD PRIMARY KEY (`idLop`), ADD UNIQUE KEY `MaLop` (`idLop`);

--
-- Index pour la table `nganh`
--
ALTER TABLE `nganh`
 ADD PRIMARY KEY (`idNganh`);

--
-- Index pour la table `password_resets`
--
ALTER TABLE `password_resets`
 ADD KEY `password_resets_email_index` (`email`), ADD KEY `password_resets_token_index` (`token`);

--
-- Index pour la table `quatrinhthuctap`
--
ALTER TABLE `quatrinhthuctap`
 ADD PRIMARY KEY (`idQTTT`);

--
-- Index pour la table `sinhvien`
--
ALTER TABLE `sinhvien`
 ADD PRIMARY KEY (`id`);

--
-- Index pour la table `thoigianthuctap`
--
ALTER TABLE `thoigianthuctap`
 ADD PRIMARY KEY (`idThoiGianThucTap`);

--
-- Index pour la table `thongbao`
--
ALTER TABLE `thongbao`
 ADD PRIMARY KEY (`id`);

--
-- Index pour la table `thuctap`
--
ALTER TABLE `thuctap`
 ADD PRIMARY KEY (`idThucTap`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `giaovien`
--
ALTER TABLE `giaovien`
MODIFY `idGiaoVien` int(12) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `khoa`
--
ALTER TABLE `khoa`
MODIFY `idKhoa` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `loaihinhdaotao`
--
ALTER TABLE `loaihinhdaotao`
MODIFY `idLoaiHinhDaoTao` int(12) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT pour la table `lop`
--
ALTER TABLE `lop`
MODIFY `idLop` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `nganh`
--
ALTER TABLE `nganh`
MODIFY `idNganh` int(12) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `quatrinhthuctap`
--
ALTER TABLE `quatrinhthuctap`
MODIFY `idQTTT` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=38;
--
-- AUTO_INCREMENT pour la table `sinhvien`
--
ALTER TABLE `sinhvien`
MODIFY `id` int(15) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT pour la table `thoigianthuctap`
--
ALTER TABLE `thoigianthuctap`
MODIFY `idThoiGianThucTap` int(12) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `thongbao`
--
ALTER TABLE `thongbao`
MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT pour la table `thuctap`
--
ALTER TABLE `thuctap`
MODIFY `idThucTap` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
