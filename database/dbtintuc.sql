-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th3 13, 2023 lúc 10:17 PM
-- Phiên bản máy phục vụ: 10.4.24-MariaDB
-- Phiên bản PHP: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `bandienmay`
--
CREATE DATABASE IF NOT EXISTS `bandienmay` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `bandienmay`;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `admin_id` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `admin_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `tbl_admin`
--

INSERT INTO `tbl_admin` (`admin_id`, `email`, `password`, `admin_name`) VALUES
(1, 'admin@gmail.com', '21232f297a57a5a743894a0e4a801fc3', 'Hiếu Tấn');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_baiviet`
--

CREATE TABLE `tbl_baiviet` (
  `baiviet_id` int(11) NOT NULL,
  `tenbaiviet` varchar(100) NOT NULL,
  `tomtat` text NOT NULL,
  `noidung` text NOT NULL,
  `danhmuctin_id` int(11) NOT NULL,
  `baiviet_image` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `tbl_baiviet`
--

INSERT INTO `tbl_baiviet` (`baiviet_id`, `tenbaiviet`, `tomtat`, `noidung`, `danhmuctin_id`, `baiviet_image`) VALUES
(1, 'Bài 1 : Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 1, 'a4.jpg'),
(2, 'Bài 2: Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 2, 'm3.jpg'),
(3, 'Bài 3: Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 3, 'k2.jpg'),
(4, 'Bài 4 :Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 4, 'b4.jpg'),
(5, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 'Bài 5 : Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 4, 'm8.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_category`
--

CREATE TABLE `tbl_category` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `tbl_category`
--

INSERT INTO `tbl_category` (`category_id`, `category_name`) VALUES
(1, 'Laptop'),
(2, 'Tủ lạnh'),
(3, 'Máy giặc'),
(4, 'Điện thoại'),
(5, 'Tivi ');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_danhmuc_tin`
--

CREATE TABLE `tbl_danhmuc_tin` (
  `danhmuctin_id` int(11) NOT NULL,
  `tendanhmuc` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `tbl_danhmuc_tin`
--

INSERT INTO `tbl_danhmuc_tin` (`danhmuctin_id`, `tendanhmuc`) VALUES
(1, 'Kiến thức máy lạnh'),
(2, 'Kiến thức máy giặc'),
(3, 'Kiến thức laptop'),
(4, 'Kiến thức Tivi');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_donhang`
--

CREATE TABLE `tbl_donhang` (
  `donhang_id` int(11) NOT NULL,
  `sanpham_id` int(11) NOT NULL,
  `soluong` int(11) NOT NULL,
  `mahang` varchar(50) NOT NULL,
  `khachhang_id` int(11) NOT NULL,
  `ngaythang` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `tinhtrang` int(11) NOT NULL,
  `huydon` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `tbl_donhang`
--

INSERT INTO `tbl_donhang` (`donhang_id`, `sanpham_id`, `soluong`, `mahang`, `khachhang_id`, `ngaythang`, `tinhtrang`, `huydon`) VALUES
(10, 17, 7, '3060', 12, '2019-10-01 04:11:55', 1, 0),
(11, 21, 5, '8979', 14, '2019-10-04 02:29:52', 0, 0),
(12, 26, 6, '8979', 14, '2019-10-04 02:29:52', 0, 0),
(13, 20, 3, '4236', 15, '2019-10-04 02:33:55', 0, 0),
(14, 21, 4, '4236', 15, '2019-10-04 02:33:56', 0, 0),
(15, 20, 3, '6503', 16, '2019-10-04 02:34:56', 0, 0),
(16, 21, 4, '6503', 16, '2019-10-04 02:34:56', 0, 0),
(17, 21, 1, '2508', 17, '2019-10-04 02:35:19', 0, 0),
(18, 26, 3, '4249', 18, '2019-10-04 02:45:46', 0, 0),
(19, 26, 3, '8728', 19, '2019-10-04 02:46:40', 0, 0),
(20, 21, 1, '5037', 20, '2019-10-04 02:48:16', 0, 0),
(21, 20, 1, '5037', 20, '2019-10-04 02:48:17', 0, 0),
(22, 21, 1, '1594', 21, '2019-10-04 02:51:05', 0, 0),
(23, 20, 1, '1594', 21, '2019-10-04 02:51:05', 0, 0),
(24, 20, 1, '2323', 22, '2019-10-04 02:54:27', 0, 0),
(25, 21, 3, '2323', 22, '2019-10-04 02:54:27', 0, 0),
(26, 21, 2, '5737', 23, '2019-10-04 02:57:00', 0, 0),
(28, 25, 3, '7785', 25, '2019-10-04 03:11:51', 0, 0),
(29, 22, 5, '7785', 25, '2019-10-04 03:11:52', 0, 0),
(30, 27, 2, '7785', 25, '2019-10-04 03:11:52', 0, 0),
(31, 21, 1, '5396', 26, '2019-10-04 03:49:08', 0, 0),
(32, 20, 3, '5396', 26, '2019-10-04 03:49:08', 0, 0),
(33, 20, 3, '7914', 28, '2019-10-05 05:38:42', 0, 0),
(34, 26, 1, '7914', 28, '2019-10-05 05:38:42', 0, 0),
(35, 25, 2, '6687', 27, '2019-10-09 09:48:42', 1, 2),
(36, 26, 3, '6687', 27, '2019-10-09 09:48:42', 1, 2),
(37, 27, 1, '6687', 27, '2019-10-09 09:48:42', 1, 2),
(38, 22, 1, '1125', 27, '2019-10-09 09:47:17', 1, 2),
(39, 24, 1, '1125', 27, '2019-10-09 09:47:17', 1, 2),
(40, 20, 1, '555', 27, '2019-10-09 09:50:07', 0, 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_giaodich`
--

CREATE TABLE `tbl_giaodich` (
  `giaodich_id` int(11) NOT NULL,
  `sanpham_id` int(11) NOT NULL,
  `soluong` int(11) NOT NULL,
  `magiaodich` varchar(50) NOT NULL,
  `ngaythang` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `khachhang_id` int(11) NOT NULL,
  `tinhtrangdon` int(11) NOT NULL DEFAULT 0,
  `huydon` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `tbl_giaodich`
--

INSERT INTO `tbl_giaodich` (`giaodich_id`, `sanpham_id`, `soluong`, `magiaodich`, `ngaythang`, `khachhang_id`, `tinhtrangdon`, `huydon`) VALUES
(3, 21, 2, '5737', '2019-10-04 02:57:00', 23, 0, 0),
(4, 26, 1, '6219', '2019-10-04 02:58:34', 24, 0, 0),
(5, 25, 3, '7785', '2019-10-04 03:11:52', 25, 0, 0),
(6, 22, 5, '7785', '2019-10-04 03:11:52', 25, 0, 0),
(7, 27, 2, '7785', '2019-10-04 03:11:52', 25, 0, 0),
(8, 21, 1, '5396', '2019-10-04 03:49:08', 26, 0, 0),
(9, 20, 3, '5396', '2019-10-04 03:49:08', 26, 0, 0),
(10, 20, 3, '7914', '2019-10-05 05:38:42', 28, 0, 0),
(11, 26, 1, '7914', '2019-10-05 05:38:42', 28, 0, 0),
(12, 25, 2, '6687', '2019-10-09 09:48:42', 27, 1, 2),
(13, 26, 3, '6687', '2019-10-09 09:48:42', 27, 1, 2),
(14, 27, 1, '6687', '2019-10-09 09:48:42', 27, 1, 2),
(15, 22, 1, '1125', '2019-10-09 09:47:17', 27, 1, 2),
(16, 24, 1, '1125', '2019-10-09 09:47:17', 27, 1, 2),
(17, 20, 1, '555', '2019-10-09 09:50:08', 27, 0, 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_giohang`
--

CREATE TABLE `tbl_giohang` (
  `giohang_id` int(11) NOT NULL,
  `tensanpham` varchar(100) NOT NULL,
  `sanpham_id` int(11) NOT NULL,
  `giasanpham` varchar(50) NOT NULL,
  `hinhanh` varchar(50) NOT NULL,
  `soluong` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `tbl_giohang`
--

INSERT INTO `tbl_giohang` (`giohang_id`, `tensanpham`, `sanpham_id`, `giasanpham`, `hinhanh`, `soluong`) VALUES
(1, 'Máy giặc Samsung', 26, '105000000', 'm8.jpg', 2),
(2, 'Galaxy A15', 21, '15000000', 'mk3.jpg', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_khachhang`
--

CREATE TABLE `tbl_khachhang` (
  `khachhang_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `address` varchar(200) NOT NULL,
  `note` text NOT NULL,
  `email` varchar(150) NOT NULL,
  `password` varchar(100) NOT NULL,
  `giaohang` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `tbl_khachhang`
--

INSERT INTO `tbl_khachhang` (`khachhang_id`, `name`, `phone`, `address`, `note`, `email`, `password`, `giaohang`) VALUES
(12, 'Hiếu', '0932023992', '123/123', 'dasdasdas', 'hieu@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 1),
(13, 'Long Hoàng', '01694494813', '123/123', 'dasdasdas', 'long@gmail.com', '0192023a7bbd73250516f069df18b500', 0),
(14, 'Hoàng Long', '0932023992', '123/123', 'dsadas', 'hoanglong@gmail.com', '', 1),
(22, 'Nam', '0932023992', '123/123', 'dasdas', 'name123@gmail.com', '', 1),
(23, 'Nam', '0932023992', '123/123', 'dasdasd', 'name456@gmail.com', '', 1),
(24, 'Hoa', '0932023992', '123/123', 'dasdas', 'hoa@gmail.com', '', 0),
(25, 'Hoàng Kha', '0932023992', '123/123', 'dasdasdas', 'hoangkha@gmail.com', '', 1),
(26, 'Trương Lưu', '0932023992', '123/123', 'dasdasdas', 'truongluu@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 1),
(27, 'Trương Huệ Mẫn', '0932023992', '123', 'dasdasdasd', 'hueman@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 0),
(28, 'Hoa', '0932023992', '123/123', 'dasdasdads', 'hoa@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 0),
(29, 'Ngô Long Vũ', '44444444', 'Sầm Sơn', '', 'admin@test.com', 'e10adc3949ba59abbe56e057f20f883e', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_sanpham`
--

CREATE TABLE `tbl_sanpham` (
  `sanpham_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `sanpham_name` varchar(255) NOT NULL,
  `sanpham_chitiet` text NOT NULL,
  `sanpham_mota` text NOT NULL,
  `sanpham_gia` varchar(100) NOT NULL,
  `sanpham_giakhuyenmai` varchar(100) NOT NULL,
  `sanpham_active` int(11) NOT NULL,
  `sanpham_hot` int(11) NOT NULL,
  `sanpham_soluong` int(11) NOT NULL,
  `sanpham_image` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `tbl_sanpham`
--

INSERT INTO `tbl_sanpham` (`sanpham_id`, `category_id`, `sanpham_name`, `sanpham_chitiet`, `sanpham_mota`, `sanpham_gia`, `sanpham_giakhuyenmai`, `sanpham_active`, `sanpham_hot`, `sanpham_soluong`, `sanpham_image`) VALUES
(17, 2, 'Tủ lạnh A10', 'dasdasdasadasd', 'dasdasddsadasds', '6000000', '5500000', 0, 0, 10, 'k2.jpg'),
(18, 5, 'Tivi sony 29\'', 'asdasd', 'dasdasd', '5000000', '4500000', 0, 0, 1, 'm4.jpg'),
(19, 5, 'Tivi sony 40\'', 'asdasd', 'dasdasd', '5600000', '4800000', 0, 0, 1, 'm4.jpg'),
(20, 4, 'Galaxy A10', 'dasdad', 'dasdas', '15000000', '14000000', 0, 0, 10, 'mk2.jpg'),
(21, 4, 'Galaxy A15', 'dasdad', 'dasdas', '15000000', '14000000', 0, 0, 10, 'mk3.jpg'),
(22, 2, 'Tủ lạnh sony ', 'dasdad', 'dasdas', '75000000', '68000000', 0, 0, 5, 'k2.jpg'),
(23, 2, 'Tủ lạnh Samsung', 'dasdaddasda', 'dasdasdasd', '105000000', '94000000', 0, 0, 10, 'k2.jpg'),
(24, 1, 'Laptop Sony', 'sfsdf', 'adsf', '6000000', '5500000', 0, 0, 10, 'mk6.jpg'),
(25, 1, 'Laptop A15', 'sfsdf', 'adsf', '6600000', '5300000', 0, 0, 10, 'mk6.jpg'),
(26, 3, 'Máy giặc Samsung', 'dasdas', 'dsadas', '105000000', '99000000', 0, 0, 10, 'm8.jpg'),
(27, 3, 'Máy giặc Shark', 'dasdas', 'dsadas', '75000000', '63000000', 0, 0, 10, 'm8.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_slider`
--

CREATE TABLE `tbl_slider` (
  `slider_id` int(11) NOT NULL,
  `slider_image` varchar(100) NOT NULL,
  `slider_caption` text NOT NULL,
  `slider_active` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `tbl_slider`
--

INSERT INTO `tbl_slider` (`slider_id`, `slider_image`, `slider_caption`, `slider_active`) VALUES
(1, 'b2.jpg', 'Slider khuyến mãi ', 1),
(2, 'b3.jpg', 'Slider 50%', 0);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Chỉ mục cho bảng `tbl_baiviet`
--
ALTER TABLE `tbl_baiviet`
  ADD PRIMARY KEY (`baiviet_id`);

--
-- Chỉ mục cho bảng `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`category_id`);

--
-- Chỉ mục cho bảng `tbl_danhmuc_tin`
--
ALTER TABLE `tbl_danhmuc_tin`
  ADD PRIMARY KEY (`danhmuctin_id`);

--
-- Chỉ mục cho bảng `tbl_donhang`
--
ALTER TABLE `tbl_donhang`
  ADD PRIMARY KEY (`donhang_id`);

--
-- Chỉ mục cho bảng `tbl_giaodich`
--
ALTER TABLE `tbl_giaodich`
  ADD PRIMARY KEY (`giaodich_id`);

--
-- Chỉ mục cho bảng `tbl_giohang`
--
ALTER TABLE `tbl_giohang`
  ADD PRIMARY KEY (`giohang_id`);

--
-- Chỉ mục cho bảng `tbl_khachhang`
--
ALTER TABLE `tbl_khachhang`
  ADD PRIMARY KEY (`khachhang_id`);

--
-- Chỉ mục cho bảng `tbl_sanpham`
--
ALTER TABLE `tbl_sanpham`
  ADD PRIMARY KEY (`sanpham_id`);

--
-- Chỉ mục cho bảng `tbl_slider`
--
ALTER TABLE `tbl_slider`
  ADD PRIMARY KEY (`slider_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `tbl_baiviet`
--
ALTER TABLE `tbl_baiviet`
  MODIFY `baiviet_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `tbl_danhmuc_tin`
--
ALTER TABLE `tbl_danhmuc_tin`
  MODIFY `danhmuctin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `tbl_donhang`
--
ALTER TABLE `tbl_donhang`
  MODIFY `donhang_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT cho bảng `tbl_giaodich`
--
ALTER TABLE `tbl_giaodich`
  MODIFY `giaodich_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT cho bảng `tbl_giohang`
--
ALTER TABLE `tbl_giohang`
  MODIFY `giohang_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `tbl_khachhang`
--
ALTER TABLE `tbl_khachhang`
  MODIFY `khachhang_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT cho bảng `tbl_sanpham`
--
ALTER TABLE `tbl_sanpham`
  MODIFY `sanpham_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT cho bảng `tbl_slider`
--
ALTER TABLE `tbl_slider`
  MODIFY `slider_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Cơ sở dữ liệu: `bookshopdb`
--
CREATE DATABASE IF NOT EXISTS `bookshopdb` DEFAULT CHARACTER SET utf8 COLLATE utf8_vietnamese_ci;
USE `bookshopdb`;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `login`
--
-- Error reading structure for table bookshopdb.login: #1932 - Table 'bookshopdb.login' doesn't exist in engine
-- Error reading data for table bookshopdb.login: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'FROM `bookshopdb`.`login`' at line 1
--
-- Cơ sở dữ liệu: `dataapi`
--
CREATE DATABASE IF NOT EXISTS `dataapi` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `dataapi`;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `test`
--

CREATE TABLE `test` (
  `id` int(11) NOT NULL,
  `TieuDe` varchar(255) NOT NULL,
  `cauA` varchar(255) NOT NULL,
  `cauB` varchar(255) NOT NULL,
  `cauC` varchar(255) NOT NULL,
  `cauD` varchar(255) NOT NULL,
  `caudung` varchar(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `test`
--
ALTER TABLE `test`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `test`
--
ALTER TABLE `test`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- Cơ sở dữ liệu: `dbtintuc`
--
CREATE DATABASE IF NOT EXISTS `dbtintuc` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `dbtintuc`;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `group_news`
--

CREATE TABLE `group_news` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `group_news`
--

INSERT INTO `group_news` (`id`, `name`) VALUES
(1, 'chưa xác nhận'),
(2, 'Xác nhận');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `group_users`
--

CREATE TABLE `group_users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `group_users`
--

INSERT INTO `group_users` (`id`, `name`) VALUES
(1, 'admin'),
(2, 'user');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2023_03_13_090847_create_status_table', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `status`
--

CREATE TABLE `status` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tb_news`
--

CREATE TABLE `tb_news` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `summary` varchar(255) DEFAULT NULL,
  `content` mediumtext DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `id_user` int(11) DEFAULT NULL,
  `groupNew_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tb_news`
--

INSERT INTO `tb_news` (`id`, `title`, `image`, `summary`, `content`, `created_at`, `id_user`, `groupNew_id`) VALUES
(1, 'test 123', 'test', 'test', 'This is test 1', '2023-03-14 01:40:19', 1, 2),
(2, 'Bài viết này test ở user', 'Bài viết này test ở user', 'Bài viết này test ở user', 'Bài viết này test ở user', '2023-03-13 22:59:41', 4, 1),
(4, '2005', '10da', 'â', 'a', '2023-03-14 01:48:18', 1, NULL),
(10, 'de tai 1', 'vavav', '113313', 'Noi dung nay de test xem có lỗi ko 1', '2023-03-14 01:42:57', 1, NULL),
(11, 'đây là để test xem lỗi ko', 'đây là để test xem lỗi ko', 'đây là để test xem lỗi ko', 'đây là để test xem lỗi ko', '2023-03-14 01:50:03', 6, 2),
(12, 'ngovi', 'agag', 'agga', '1234568', '2023-03-14 02:56:45', 1, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tb_user`
--

CREATE TABLE `tb_user` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `groupUser_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tb_user`
--

INSERT INTO `tb_user` (`id`, `name`, `email`, `password`, `groupUser_id`) VALUES
(1, 'admin', 'admin@email.com', '$2y$10$l6PupwlTudJHfVk9p96nOOrpH2CYCiYoVmJcmjL1W8w97QM7a8XRG', 1),
(2, 'ngolongvu', 'aa@gmail.com', '$2y$10$BUBoRHvdBMnnDG/LgVJdeewnY45dBtVEmVQ/1rBrp40Fzd/yTN.wm', 2),
(4, 'nguyenhang2000', '1234@email.com', '$2y$10$GT1W0DpZVh9ltOPCUzXB8e.NkJR4eGRCCcZNMPPGX728IDd5Z5jvO', 2),
(6, 'nguyenhang', 'nn@email.com', '$2y$10$iPa/pF5TzyL9yXtL6mcSLuOsbjO31.KRVMQUOp2iW99bMU/Ivm5BK', 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Chỉ mục cho bảng `group_news`
--
ALTER TABLE `group_news`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `group_users`
--
ALTER TABLE `group_users`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Chỉ mục cho bảng `status`
--
ALTER TABLE `status`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tb_news`
--
ALTER TABLE `tb_news`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_user` (`id_user`),
  ADD KEY `groupNew_id` (`groupNew_id`);

--
-- Chỉ mục cho bảng `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `groupUser_id` (`groupUser_id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `group_news`
--
ALTER TABLE `group_news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `group_users`
--
ALTER TABLE `group_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `status`
--
ALTER TABLE `status`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `tb_news`
--
ALTER TABLE `tb_news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `tb_user`
--
ALTER TABLE `tb_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `tb_news`
--
ALTER TABLE `tb_news`
  ADD CONSTRAINT `tb_news_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `tb_user` (`id`),
  ADD CONSTRAINT `tb_news_ibfk_2` FOREIGN KEY (`groupNew_id`) REFERENCES `group_news` (`id`);

--
-- Các ràng buộc cho bảng `tb_user`
--
ALTER TABLE `tb_user`
  ADD CONSTRAINT `tb_user_ibfk_1` FOREIGN KEY (`groupUser_id`) REFERENCES `group_users` (`id`);
--
-- Cơ sở dữ liệu: `db_mvc`
--
CREATE DATABASE IF NOT EXISTS `db_mvc` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `db_mvc`;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tb_category`
--

CREATE TABLE `tb_category` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tb_category`
--

INSERT INTO `tb_category` (`id`, `name`) VALUES
(1, 'Danh Muc'),
(2, 'Moi'),
(5, 'test');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tb_product`
--

CREATE TABLE `tb_product` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tb_product`
--

INSERT INTO `tb_product` (`id`, `name`, `price`, `image`, `category_id`, `created_at`, `updated_at`) VALUES
(1, 'test', 10000, 'ada', 1, NULL, NULL),
(2, 'ar', 11111, 'ada', 1, '2022-11-18 22:23:07', '2023-02-10 12:33:38');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `tb_category`
--
ALTER TABLE `tb_category`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tb_product`
--
ALTER TABLE `tb_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `tb_category`
--
ALTER TABLE `tb_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `tb_product`
--
ALTER TABLE `tb_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `tb_product`
--
ALTER TABLE `tb_product`
  ADD CONSTRAINT `tb_product_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `tb_category` (`id`);
--
-- Cơ sở dữ liệu: `db_shop`
--
CREATE DATABASE IF NOT EXISTS `db_shop` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `db_shop`;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `giohang`
--

CREATE TABLE `giohang` (
  `id_giohang` int(10) NOT NULL,
  `id` int(10) NOT NULL,
  `user` varchar(255) NOT NULL,
  `soluong` int(10) NOT NULL,
  `tinhtrang` text NOT NULL,
  `ngaydat` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `giohang`
--

INSERT INTO `giohang` (`id_giohang`, `id`, `user`, `soluong`, `tinhtrang`, `ngaydat`) VALUES
(138, 71368668, 'phuong', 10, 'damua', '2013-12-20 10:05:14'),
(139, 71368666, 'phuong', 1, 'damua', '2013-12-20 10:09:47'),
(149, 71368667, 'xuanquocqn', 1, 'dathang', '2013-12-25 17:42:32'),
(141, 71368667, 'admin', 1, 'damua', '2013-12-20 10:16:52'),
(142, 71368671, 'admin', 2, 'damua', '2013-12-20 10:16:52'),
(143, 71368671, 'xuanquocqn', 1, 'damua', '2013-12-21 12:06:24'),
(150, 71368666, 'phuongle', 2, 'dathang', '2013-12-26 02:32:50'),
(146, 914362335, 'xuanquocqn', 1, 'dathang', '2013-12-22 12:32:52');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoadon`
--

CREATE TABLE `hoadon` (
  `id_hoadon` int(10) NOT NULL,
  `hoten` varchar(255) NOT NULL,
  `diachi` text NOT NULL,
  `email` varchar(255) NOT NULL,
  `dienthoai` int(20) NOT NULL,
  `fax` int(20) NOT NULL,
  `cty` varchar(255) NOT NULL,
  `id` varchar(10) NOT NULL,
  `soluong` int(10) NOT NULL,
  `tongtien` float NOT NULL,
  `ngaydat` datetime NOT NULL,
  `tinhtrang` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `hoadon`
--

INSERT INTO `hoadon` (`id_hoadon`, `hoten`, `diachi`, `email`, `dienthoai`, `fax`, `cty`, `id`, `soluong`, `tongtien`, `ngaydat`, `tinhtrang`) VALUES
(32, 'Nguyễn Xuân Quốc', 'Quảng Ngãi', 'xuanquocqn@gmail.com', 1657990372, 25, '', '7', 7, 108220000, '2013-12-21 12:32:15', 'damua'),
(33, 'Lê Thị Phượng', 'Điện Ngọc - Quảng Nam', 'phuongle.qn.23@gmail.com', 1657990337, 0, 'VIETHANIT', '98', 3, 705000, '2013-12-22 13:57:08', 'dathang'),
(34, 'Nguyễn Phương Tâm', 'Đà Nẵng', 'phuongtamdn@gmail.com', 2147483647, 0, '', '71368671', 1, 37000000, '2013-12-25 04:44:54', 'dathang'),
(35, 'Nguyễn Phương Tâm', 'Đà Nẵng', 'phuongtamdn@gmail.com', 2147483647, 0, '', '71368670', 2, 42000000, '2013-12-25 04:44:54', 'dathang');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `lienhe`
--

CREATE TABLE `lienhe` (
  `id_lienhe` int(10) NOT NULL,
  `hoten` text NOT NULL,
  `cty` text NOT NULL,
  `email` text NOT NULL,
  `dienthoai` int(20) NOT NULL,
  `fax` int(20) NOT NULL,
  `diachi` text NOT NULL,
  `noidung` text NOT NULL,
  `ngaylienhe` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `lienhe`
--

INSERT INTO `lienhe` (`id_lienhe`, `hoten`, `cty`, `email`, `dienthoai`, `fax`, `diachi`, `noidung`, `ngaylienhe`) VALUES
(14, 'Nguyễn Xuân Quốc', 'VIETHANIT', 'xuanquocqn@gmail.com', 1657990372, 2345245, 'đà nẵng', 'Đề nghị nhân viên phục vụ có thái độ tốt hơn đối với khách hàng', '2013-12-20 09:19:30');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `loaisanpham`
--

CREATE TABLE `loaisanpham` (
  `id_loai` int(10) NOT NULL,
  `id_nhom` int(11) NOT NULL,
  `tenloaisp` text NOT NULL,
  `ghichu` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `loaisanpham`
--

INSERT INTO `loaisanpham` (`id_loai`, `id_nhom`, `tenloaisp`, `ghichu`) VALUES
(15, 2, 'Loa Laptop', ''),
(7, 1, 'Samsung', ''),
(6, 1, 'Toshiba', ''),
(5, 1, 'Sony', ''),
(11, 2, 'USB 3G', ''),
(10, 2, 'USB', ''),
(16, 1, 'BenQ', ''),
(13, 2, 'Chuột', ''),
(4, 1, 'HP Compaq', ''),
(3, 1, 'Asus', ''),
(9, 1, 'Lenovo', ''),
(8, 1, 'Dell', ''),
(1, 1, 'Apple (Macbook)', ''),
(2, 1, 'Acer', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhomsanpham`
--

CREATE TABLE `nhomsanpham` (
  `id_nhom` int(10) NOT NULL,
  `tennhom` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `nhomsanpham`
--

INSERT INTO `nhomsanpham` (`id_nhom`, `tennhom`) VALUES
(1, 'Laptop'),
(2, 'Phụ kiện');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanpham`
--

CREATE TABLE `sanpham` (
  `id` int(20) NOT NULL,
  `id_loai` int(10) NOT NULL,
  `tensp` text NOT NULL,
  `mota` text NOT NULL,
  `hinh` text NOT NULL,
  `gia` int(15) NOT NULL,
  `ghichu` text NOT NULL,
  `soluongban` int(10) NOT NULL,
  `id_menu` int(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `sanpham`
--

INSERT INTO `sanpham` (`id`, `id_loai`, `tensp`, `mota`, `hinh`, `gia`, `ghichu`, `soluongban`, `id_menu`) VALUES
(71368666, 7, 'Samsung NP540U3C', '<p>&nbsp;</p>\r\n<h2 style=\"margin: 0px; padding: 0px; word-wrap: break-word; font-size: 38px; line-height: 38px; font-weight: normal; font-family: PFSquareSansProMedium, Arial, sans-serif;\">C&ocirc;ng nghệ touch &ldquo;si&ecirc;u mượt&rdquo;, kết nối hữu hiệu với Ultrabook touch từ Samsung</h2>\r\n<h3 style=\"margin: 0px 0px 8px; padding: 0px; word-wrap: break-word; font-size: 12px; line-height: 1.2; color: rgb(1, 1, 1); font-family: Arial, sans-serif;\">rải nghiệm &ldquo;đa chạm&rdquo; trọn vẹn</h3>\r\n<p style=\"margin: 0px 0px 15px; padding: 0px; word-wrap: break-word; line-height: 1.5; font-family: Arial, sans-serif;\">Chỉ cần &ldquo;chạm nhẹ v&agrave; trải nghiệm ngay&rdquo; với Samsung Series 5 Ultra. Trải nghiệm th&uacute; vị n&agrave;y được thực hiện dễ d&agrave;ng tr&ecirc;n m&agrave;n h&igrave;nh 13.3in HD Super Bright nhờ c&ocirc;ng nghệ tương t&aacute;c điểm của Win 8, cảm gi&aacute;c chạm &ldquo;mượt&rdquo; m&agrave; v&agrave; ho&agrave;n ho&agrave;n được sử dụng hiệu quả tr&ecirc;n tất cả 10 ng&oacute;n tay. Bạn sẽ tận hưởng cảm gi&aacute;c lướt nhẹ s&agrave;nh điệu, d&ugrave; l&agrave;m việc, hay giải tr&iacute; cả ng&agrave;y d&agrave;i với c&aacute;c ứng dụng (apps) v&agrave; những tr&ograve; chơi hấp dẫn nhất.</p>\r\n<h3 style=\"margin: 0px 0px 8px; padding: 0px; word-wrap: break-word; font-size: 12px; line-height: 1.2; color: rgb(1, 1, 1); font-family: Arial, sans-serif;\">Lưu trữ lớn cho mọi thứ bạn cần</h3>\r\n<p style=\"margin: 0px 0px 15px; padding: 0px; word-wrap: break-word; line-height: 1.5; font-family: Arial, sans-serif;\">Việc sở hữu một chiếc notebook di động si&ecirc;u mỏng trước giờ lu&ocirc;n đồng nghĩa với việc bạn phải &ldquo; hy sinh&rdquo; một lượng lưu trữ đ&aacute;ng kể. Tuy nhi&ecirc;n, notebook si&ecirc;u mỏng Samsung Series 5 ULTRA lại được thiết kế với dung lượng lưu trữ khổng lồ. Ổ đĩa cứng với khả năng lưu trữ dữ liệu l&ecirc;n đến 500GB gi&uacute;p người d&ugrave;ng tận hưởng &acirc;m nhạc, phim ảnh thỏa th&iacute;ch.</p>\r\n<h3 style=\"margin: 0px 0px 8px; padding: 0px; word-wrap: break-word; font-size: 12px; line-height: 1.2; color: rgb(1, 1, 1); font-family: Arial, sans-serif;\">Thiết kế si&ecirc;u di động</h3>\r\n<p style=\"margin: 0px 0px 15px; padding: 0px; word-wrap: break-word; line-height: 1.5; font-family: Arial, sans-serif;\">Với những người thường xuy&ecirc;n di chuyển, việc phải mang theo b&ecirc;n người một chiếc notebook cồng kềnh bao giờ cũng l&agrave; một g&aacute;nh nặng lớn.Thấu hiểu điều đ&oacute;, Samsung mang đến bạn Series 5 ULTRA c&oacute; thiết kế rất mỏng (19.9mm), nhẹ (1.69 kg) - th&iacute;ch hợp cho cuộc sống năng động h&agrave;ng ng&agrave;y của bạn. Với Samsung Series 5 ULTRA, bạn sẽ lu&ocirc;n c&oacute; văn ph&ograve;ng của m&igrave;nh, ở mọi l&uacute;c, mọi nơi.</p>', 'SamsungNP540U3C.jpg', 26497000, 'new', 1, 0),
(49260, 1, 'MacBook Air MD760', '<p>CPU<span style=\"white-space:pre\" class=\"Apple-tab-span\">	</span>Intel, Core i5 Haswell, 4250U, 1.30 GHz</p>\r\n<p>RAM<span style=\"white-space:pre\" class=\"Apple-tab-span\">	</span>DDR3L(On board), 4 GB</p>\r\n<p>Đĩa cứng<span style=\"white-space:pre\" class=\"Apple-tab-span\">	</span>SSD, 128 GB</p>\r\n<p>M&agrave;n h&igrave;nh rộng<span style=\"white-space:pre\" class=\"Apple-tab-span\">	</span>13.3 inch, HD (1440 x 900 pixels)</p>\r\n<p>Cảm ứng<span style=\"white-space:pre\" class=\"Apple-tab-span\">	</span>Kh&ocirc;ng</p>\r\n<p>Đồ họa<span style=\"white-space:pre\" class=\"Apple-tab-span\">	</span>Intel HD Graphics 5000, Share 1664MB</p>\r\n<p>Đĩa quang<span style=\"white-space:pre\" class=\"Apple-tab-span\">	</span>Kh&ocirc;ng</p>\r\n<p>HĐH theo m&aacute;y<span style=\"white-space:pre\" class=\"Apple-tab-span\">	</span>Mac OS X</p>\r\n<p>PIN/Battery<span style=\"white-space:pre\" class=\"Apple-tab-span\">	</span>4cell Li - Polymer</p>\r\n<p>Trọng lượng (Kg)<span style=\"white-space:pre\" class=\"Apple-tab-span\">	</span>1.35</p>', 'MacBookAirMD760.jpg', 26990000, 'new', 1, 0),
(71368667, 7, 'Samsung XE700T1C', '<p>&nbsp;</p>\r\n<h2 style=\"margin: 0px; padding: 0px; word-wrap: break-word; font-size: 38px; line-height: 38px; font-weight: normal; font-family: PFSquareSansProMedium, Arial, sans-serif;\">Trợ thủ văn ph&ograve;ng di động</h2>\r\n<p class=\"headline\" style=\"margin: 20px 0px 0px; padding: 0px; word-wrap: break-word; font-size: 17px; font-family: PFSquareSansProMedium, Arial, sans-serif; color: rgb(102, 102, 102); line-height: 22px;\">Trải nghiệm sự tiện dụng của một m&aacute;y t&iacute;nh bảng với sức mạnh của một m&aacute;y t&iacute;nh x&aacute;ch tay thự thụ với Samsung ATIV Tab 7</p>\r\n<p class=\"headline\" style=\"margin: 20px 0px 0px; padding: 0px; word-wrap: break-word; font-size: 17px; font-family: PFSquareSansProMedium, Arial, sans-serif; color: rgb(102, 102, 102); line-height: 22px;\">&nbsp;</p>\r\n<h3 style=\"margin: 0px 0px 8px; padding: 0px; word-wrap: break-word; font-size: 12px; line-height: 1.2; color: rgb(1, 1, 1); font-family: Arial, sans-serif;\">Sự lựa chọn của giới chuy&ecirc;n nghiệp</h3>\r\n<p style=\"margin: 0px 0px 15px; padding: 0px; word-wrap: break-word; line-height: 1.5; font-family: Arial, sans-serif;\">Nếu bạn cần một thiết bị hỗ trợ mạnh mẽ đ&iacute;ch thực, Samsung ATIV Tab 7 sẽ đ&aacute;p ứng mọi nhu cầu của bạn. Với bộ vi xử l&yacute; Intel &reg; Core &trade; i5 thế hệ mới nhất, m&aacute;y cho ph&eacute;p duyệt web nhanh hơn, xử l&yacute; đa t&aacute;c vụ mạnh mẽ, chuyển đổi video hoặc &acirc;m nhạc, v&agrave; c&oacute; thể chạy c&aacute;c ứng dụng &quot;nặng k&yacute; nhất&quot;.</p>\r\n<h3 style=\"margin: 0px 0px 8px; padding: 0px; word-wrap: break-word; font-size: 12px; line-height: 1.2; color: rgb(1, 1, 1); font-family: Arial, sans-serif;\">Đ&aacute;p ứng mọi nhu cầu - từ s&aacute;ng tạo đến giải tr&iacute;</h3>\r\n<p style=\"margin: 0px 0px 15px; padding: 0px; word-wrap: break-word; line-height: 1.5; font-family: Arial, sans-serif;\">Một thiết kế mang t&iacute;nh c&aacute;ch mạng kết hợp sức mạnh của một m&aacute;y t&iacute;nh x&aacute;ch tay với t&iacute;nh cơ động của m&aacute;y t&iacute;nh bảng. Bạn c&oacute; thể tận hưởng c&aacute;c tiện &iacute;ch giải tr&iacute; một c&aacute;ch linh hoạt v&agrave; thuận tiện dụng đang di chuyển, như duyệt web, kết nối mạng x&atilde; hội, xem phim v&agrave; chơi game. Chỉ cần gắn th&ecirc;m b&agrave;n ph&iacute;m v&agrave; touchpad l&agrave; bạn đ&atilde; c&oacute; thể giải quyết c&ocirc;ng việc hiệu quả, v&agrave; s&aacute;ng tạo như tr&ecirc;n một m&aacute;y t&iacute;nh x&aacute;ch tay.</p>\r\n<h3 style=\"margin: 0px 0px 8px; padding: 0px; word-wrap: break-word; font-size: 12px; line-height: 1.2; color: rgb(1, 1, 1); font-family: Arial, sans-serif;\">Viết khi di chuyển</h3>\r\n<p style=\"margin: 0px 0px 15px; padding: 0px; word-wrap: break-word; line-height: 1.5; font-family: Arial, sans-serif;\">B&uacute;t S Pen đ&atilde; đưa trải nghiệm viết v&agrave; vẽ thực tế v&agrave;o thế giới m&aacute;y t&iacute;nh. Được chế tạo nh&agrave; sản xuất c&ocirc;ng nghệ h&agrave;ng đầu Wacom, với 1024 mức cảm ứng cho độ ch&iacute;nh x&aacute;c si&ecirc;u việt theo ti&ecirc;u chuẩn của c&aacute;c thiết kế gia chuy&ecirc;n nghiệp, tạo cảm gi&aacute;c như đang d&ugrave;ng một c&acirc;y b&uacute;t hoặc b&uacute;t ch&igrave; th&ocirc;ng thường. Để tối ưu h&oacute;a sự thoải m&aacute;i v&agrave; tiện dụng, b&uacute;t c&oacute; k&iacute;ch thước v&agrave; h&igrave;nh d&aacute;ng như b&uacute;t thật v&agrave; được cắm ở khe b&ecirc;n h&ocirc;ng m&aacute;y.</p>', 'SamsungXE700T1C.jpg', 39000000, 'new', 1, 0),
(71368668, 7, 'Samsung NP530U4C', '<p>&nbsp;<span style=\"font-family: PFSquareSansProMedium, Arial, sans-serif; font-size: 38px; line-height: 38px;\">Sức mạnh của một notebook hiệu năng</span></p>\r\n<p class=\"headline\" style=\"margin: 20px 0px 0px; padding: 0px; word-wrap: break-word; font-size: 17px; font-family: PFSquareSansProMedium, Arial, sans-serif; color: rgb(102, 102, 102); line-height: 22px;\">Samsung Notebook Series 5 ULTRA</p>\r\n<h3 style=\"margin: 0px 0px 8px; padding: 0px; word-wrap: break-word; font-size: 12px; line-height: 1.2; color: rgb(1, 1, 1); font-family: Arial, sans-serif;\">Những giải ph&aacute;p nhanh của Samsung</h3>\r\n<p style=\"margin: 0px 0px 15px; padding: 0px; word-wrap: break-word; line-height: 1.5; font-family: Arial, sans-serif;\">Bạn c&oacute; thể l&agrave;m việc hay giải tr&iacute; hiệu quả hơn với tốc độ nhanh đến kinh ngạc của notebook Samsung Series 5. M&aacute;y chỉ mất 20 gi&acirc;y để khởi động nhờ t&iacute;nh năng Fast Boot hay ngạc nhi&ecirc;n hơn l&agrave; chỉ với 2 gi&acirc;y nhờ t&iacute;nh năng Fast Start. Khả năng Plus Fast Browsing t&iacute;ch hợp sẵn cho ph&eacute;p bạn duyệt những trang web thường xem với tốc độ gấp đ&ocirc;i th&ocirc;ng thường.<br />\r\n* Tốc độ thay đổi t&ugrave;y thuộc v&agrave;o cấu h&igrave;nh, ứng dụng v&agrave; c&aacute;c thiết lập kh&ocirc;ng d&acirc;y<br />\r\n* Thời gian khởi động phụ thuộc kiểu ổ cứng</p>', 'SamsungNP530U4C.jpg', 21999999, 'new', 20, 0),
(71368669, 7, 'Samsung NP535U3X', '<p>&nbsp;<span style=\"font-family: PFSquareSansProMedium, Arial, sans-serif; font-size: 38px; line-height: 38px;\">C&acirc;n bằng ho&agrave;n hảo giữa hiệu suất v&agrave; khả năng di động</span></p>\r\n<p class=\"headline\" style=\"margin: 20px 0px 0px; padding: 0px; word-wrap: break-word; font-size: 17px; font-family: PFSquareSansProMedium, Arial, sans-serif; color: rgb(102, 102, 102); line-height: 22px;\">&bull; Sức mạnh của một notebook hiệu năng<br />\r\n&bull; Thiết kế si&ecirc;u di động<br />\r\n&bull; Những giải ph&aacute;p nhanh của Samsung<br />\r\n&bull; C&ocirc;ng nghệ m&agrave;n h&igrave;nh vượt trội của Samsung</p>', 'SamsungNP535U3X.jpg', 13900000, 'hienthi', 0, 0),
(71368670, 7, 'Samsung NP530U3C', '<p>&nbsp;<span style=\"font-family: PFSquareSansProMedium, Arial, sans-serif; font-size: 38px; line-height: 38px;\">Samsung Series 5 ULTRA</span></p>\r\n<p class=\"headline\" style=\"margin: 20px 0px 0px; padding: 0px; word-wrap: break-word; font-size: 17px; font-family: PFSquareSansProMedium, Arial, sans-serif; color: rgb(102, 102, 102); line-height: 22px;\">Sức mạnh của một Ultrabook&trade; hiệu năng</p>\r\n<h3 style=\"margin: 0px 0px 8px; padding: 0px; word-wrap: break-word; font-size: 12px; line-height: 1.2; color: rgb(1, 1, 1); font-family: Arial, sans-serif;\">Thiết kế si&ecirc;u di động</h3>\r\n<p style=\"margin: 0px 0px 15px; padding: 0px; word-wrap: break-word; line-height: 1.5; font-family: Arial, sans-serif;\">Với những người thường xuy&ecirc;n di chuyển, việc phải mang theo b&ecirc;n người một chiếc notebook cồng kềnh bao giờ cũng l&agrave; một g&aacute;nh nặng lớn.Thấu hiểu điều đ&oacute;, Samsung mang đến bạn Notebook Series 5 535 c&oacute; thiết kế rất mỏng (14.9 ~ 17.6mm), nhẹ(1.52 kg) - th&iacute;ch hợp cho cuộc sống năng động h&agrave;ng ng&agrave;y của bạn. Với Samsung Series 5 535, bạn sẽ lu&ocirc;n c&oacute; văn ph&ograve;ng của m&igrave;nh, ở mọi l&uacute;c, mọi nơi.</p>', 'SamsungNP530U3C.jpg', 21000000, 'hienthi', 0, 0),
(71368671, 7, 'Samsung NP900X3C', '<p>&nbsp;<span style=\"font-family: PFSquareSansProMedium, Arial, sans-serif; font-size: 38px; line-height: 38px;\">Mỏng đến kh&ocirc;ng ngờ - thiết kế ho&agrave;n hảo</span></p>\r\n<p class=\"headline\" style=\"margin: 20px 0px 0px; padding: 0px; word-wrap: break-word; font-size: 17px; font-family: PFSquareSansProMedium, Arial, sans-serif; color: rgb(102, 102, 102); line-height: 22px;\">&bull; Mỏng đến kh&ocirc;ng ngờ - thiết kế ho&agrave;n hảo<br />\r\n&bull; Thiết kế chưa từng thấy trước nay<br />\r\n&bull; Samsung Fast Solutions<br />\r\n&bull; M&agrave;n h&igrave;nh r&otilde; hơn, s&aacute;ng hơn v&agrave; rộng hơn</p>\r\n<p class=\"headline\" style=\"margin: 20px 0px 0px; padding: 0px; word-wrap: break-word; font-size: 17px; font-family: PFSquareSansProMedium, Arial, sans-serif; color: rgb(102, 102, 102); line-height: 22px;\">&nbsp;</p>', 'SamsungNP900X3C.jpg', 36999999, 'new', 4, 0),
(71368672, 7, 'Samsung NP300E4X', '<p>&nbsp;<span style=\"font-family: PFSquareSansProMedium, Arial, sans-serif; font-size: 38px; line-height: 38px;\">Đ&aacute;p ứng mọi nhu cầu tại gia</span></p>\r\n<p class=\"headline\" style=\"margin: 20px 0px 0px; padding: 0px; word-wrap: break-word; font-size: 17px; font-family: PFSquareSansProMedium, Arial, sans-serif; color: rgb(102, 102, 102); line-height: 22px;\">Samsung Notebook Series 3</p>\r\n<h3 style=\"margin: 0px 0px 8px; padding: 0px; word-wrap: break-word; font-size: 12px; line-height: 1.2; color: rgb(1, 1, 1); font-family: Arial, sans-serif;\">M&agrave;n h&igrave;nh mảnh mai</h3>\r\n<p style=\"margin: 0px 0px 15px; padding: 0px; word-wrap: break-word; line-height: 1.5; font-family: Arial, sans-serif;\">G&oacute;p phần tạo n&ecirc;n một thiết kế si&ecirc;u di động l&agrave; viền m&agrave;n h&igrave;nh cực mỏng &ndash; chỉ bằng một &ldquo;l&oacute;ng tay&rdquo; (mỏng hơn 55 - 60% so với c&aacute;c model trước đ&oacute;*). Chiếc laptop sẽ nhỏ hơn v&agrave; nhẹ hơn nhưng kh&ocirc;ng ảnh hưởng đến k&iacute;ch thước m&agrave;n h&igrave;nh, thật dễ để bạn mang theo b&ecirc;n m&igrave;nh khi ra ngo&agrave;i. Đặc biệt, với thiết kế sang trọng của chiếc laptop, bạn sẽ lu&ocirc;n tr&ocirc;ng thật s&agrave;nh điệu.&nbsp;<br />\r\n* So s&aacute;nh với d&ograve;ng laptop RV / RC</p>\r\n<h3 style=\"margin: 0px 0px 8px; padding: 0px; word-wrap: break-word; font-size: 12px; line-height: 1.2; color: rgb(1, 1, 1); font-family: Arial, sans-serif;\">Thời lượng sử dụng pin l&ecirc;n tới 7.5 giờ</h3>\r\n<p style=\"margin: 0px 0px 15px; padding: 0px; word-wrap: break-word; line-height: 1.5; font-family: Arial, sans-serif;\">Thật thoải m&aacute;i với thời lượng sử dụng pin k&eacute;o d&agrave;i l&ecirc;n tới 7.5 giờ* (pin 4400 mAh) / 8.9 giờ* (pin 5200 mAh) cho mỗi lần sạc. Do đ&oacute;, bạn c&oacute; thể l&agrave;m việc l&acirc;u hơn ở qu&aacute;n cafe, lớp học hay bất cứ nơi n&agrave;o &ndash; v&agrave; thậm ch&iacute; vẫn c&ograve;n pin để bạn giải tr&iacute; cuối ng&agrave;y. *Dựa tr&ecirc;n kết quả kiểm tra BatteryMark v&agrave; sẽ kh&aacute;c nhau t&ugrave;y cấu h&igrave;nh m&aacute;y</p>\r\n<h3 style=\"margin: 0px 0px 8px; padding: 0px; word-wrap: break-word; font-size: 12px; line-height: 1.2; color: rgb(1, 1, 1); font-family: Arial, sans-serif;\">Khả năng đồ họa mạnh mẽ</h3>\r\n<p style=\"margin: 0px 0px 15px; padding: 0px; word-wrap: break-word; line-height: 1.5; font-family: Arial, sans-serif;\">Card đồ họa thế hệ mới NVIDIA GeForce mang đến những trải nghiệm video v&agrave; game tuyệt vời, với khả năng đồ họa 3D cao cấp v&agrave; bộ nhớ DDR3 mạnh mẽ. Đ&acirc;y quả l&agrave; chiếc m&aacute;y t&iacute;nh l&yacute; tưởng để chơi những game th&ocirc;ng dụng, xem phim HD hay chỉnh sửa ảnh.</p>', 'SamsungNP300E4X.jpg', 11310000, 'hienthi', 0, 0),
(71368673, 6, 'Satellite L40 33224G50', '', 'SatelliteL4033224G50.jpg', 11300000, 'hienthi', 0, 0),
(7, 6, 'SATELLITE L50', '<p>&nbsp;<strong style=\"border: 0px; font-size: small; margin: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: tahoma, arial, helvetica, sans-serif;\"><strong style=\"border: 0px; font-size: 13px; margin: 0px; padding: 0px;\">N&acirc;ng cao Trải nghiệm của Bạn</strong><br style=\"line-height: 10px;\" />\r\n<br style=\"line-height: 10px;\" />\r\n</strong><span style=\"color: rgb(51, 51, 51); font-family: tahoma, arial, helvetica, sans-serif; font-size: small;\">Gọn nhẹ v&agrave; Thoải m&aacute;i. Đặc điểm kỹ thuật ưu việt. H&igrave;nh ảnh phim si&ecirc;u thực sắc n&eacute;t, hỗ trợ &acirc;m bass tuyệt hảo. Satellite L50. Đ&oacute; l&agrave;n tất cả những g&igrave; bạn cần để nội trội giữa đ&aacute;m đ&ocirc;ng.</span><strong style=\"border: 0px; font-size: small; margin: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: tahoma, arial, helvetica, sans-serif;\">&nbsp;</strong></p>\r\n<p style=\"border: 0px; margin: 0px; padding: 6px 0px; color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif;\"><strong style=\"border: 0px; margin: 0px; padding: 0px;\"><span style=\"border: 0px; font-size: small; margin: 0px; padding: 0px; font-family: tahoma, arial, helvetica, sans-serif;\">Bộ Tăng tốc HD của Toshiba</span></strong></p>\r\n<p><span style=\"border: 0px; font-size: small; margin: 0px; padding: 0px; font-family: tahoma, arial, helvetica, sans-serif;\">Tăng truy cập v&agrave;o c&aacute;c ứng dụng v&agrave; c&aacute;c chương tr&igrave;nh y&ecirc;u th&iacute;ch của bạn nhanh hơn l&ecirc;n đến 60 %, c&ocirc;ng nghệ của Bộ tăng tốc HDD của Toshiba gi&uacute;p bộ nhớ hệ thống phản ứng nhanh hơn.</span></p>', 'SATELLITEL50.jpg', 15460000, 'new', 0, 0),
(895, 5, 'VAIO® Tap 11', '<p><span style=\"font-size: larger;\"><span style=\"font-family: Tahoma;\">Tablet PC Windows VAIO&reg; Tap 11 đầu ti&ecirc;n của Sony với th&acirc;n m&aacute;y đạt thiết kế mỏng v&agrave; nhẹ với b&agrave;n ph&iacute;m từ kh&ocirc;ng d&acirc;y. B&uacute;t cảm ứng số cho sử dụng linh hoạt v&agrave; hiệu quả như b&uacute;t viết tr&ecirc;n giấy. Một thiết kế độc đ&aacute;o, nhiều ứng dụng, t&iacute;ch hợp c&ocirc;ng nghệ nghe nh&igrave;n cao cấp trong một chiếc Tablet PC ho&agrave;n hảo</span></span></p>', 'VAIOTap11.jpg', 25990000, 'new', 0, 0),
(71368674, 5, 'VAIO® Pro 13', '<p><span style=\"font-size: large;\">Trọng lượng nhẹ với hiệu suất tuyệt vời.</span></p>\r\n<p>&nbsp;</p>\r\n<p style=\"margin: 0px 25px 0px 0px; padding: 0px; font-size: 12px; line-height: 1.5; color: rgb(0, 0, 0); font-family: Tahoma; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);\" class=\"rangeText\">VAIO<span style=\"font-size: 10px; vertical-align: baseline;\" class=\"reg\">&reg;</span><span class=\"Apple-converted-space\">&nbsp;</span>Pro  11/13 l&agrave; một chiếc Ultrabook mỏng v&agrave; si&ecirc;u nhẹ với cấu tr&uacute;c carbon bền  bỉ, đạt khả năng kết nối tuyệt vời, b&agrave;n ph&iacute;m thoải m&aacute;i khi g&otilde;, v&agrave; những  t&iacute;nh năng kh&aacute;c gi&uacute;p chiếc m&aacute;y trở th&agrave;nh một c&ocirc;ng cụ tuyệt vời cho c&ocirc;ng  việc. Được trang bị bộ xử l&iacute; Intel<span style=\"font-size: 10px; vertical-align: baseline;\" class=\"reg\">&reg;</span>mạnh  mẽ, Windows 8, tấm nền IPS Full HD với TRILIMINOS Display cho điện  thoại, v&agrave; những t&iacute;nh năng cao cấp kh&aacute;c như ổ cứng SSD tốc độ cao v&agrave; một  t&ugrave;y chọn Pin th&ecirc;m cho m&aacute;y c&agrave;ng gi&uacute;p chiếc m&aacute;y trở n&ecirc;n vượt trội.</p>\r\n<p style=\"margin: 0px 25px 0px 0px; padding: 0px; font-size: 12px; line-height: 1.5; color: rgb(0, 0, 0); font-family: Tahoma; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);\" class=\"rangeText\">&nbsp;</p>\r\n<p style=\"margin: 0px 25px 0px 0px; padding: 0px; font-size: 12px; line-height: 1.5; color: rgb(0, 0, 0); font-family: Tahoma; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);\" class=\"rangeText\">&nbsp;</p>', 'VAIOPro13.jpg', 35990000, 'new', 0, 0),
(875, 5, 'VAIO® Pro 11', '<h3 style=\"margin: 15px 0px 10px; padding: 0px; font-size: 22px; font-family: Arial; font-weight: normal; color: rgb(0, 0, 0); font-style: normal; font-variant: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);\" class=\"subTitle\">Trọng lượng nhẹ với hiệu suất tuyệt vời.</h3>\r\n<p style=\"margin: 0px 25px 0px 0px; padding: 0px; font-size: 12px; line-height: 1.5; color: rgb(0, 0, 0); font-family: Tahoma; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);\" class=\"rangeText\">VAIO<span style=\"font-size: 10px; vertical-align: baseline;\" class=\"reg\">&reg;</span><span class=\"Apple-converted-space\">&nbsp;</span>Pro 11/13 l&agrave; một chiếc Ultrabook mỏng v&agrave; si&ecirc;u nhẹ với cấu tr&uacute;c carbon bền bỉ, đạt khả năng kết nối tuyệt vời, b&agrave;n ph&iacute;m thoải m&aacute;i khi g&otilde;, v&agrave; những t&iacute;nh năng kh&aacute;c gi&uacute;p chiếc m&aacute;y trở th&agrave;nh một c&ocirc;ng cụ tuyệt vời cho c&ocirc;ng việc. Được trang bị bộ xử l&iacute; Intel<span style=\"font-size: 10px; vertical-align: baseline;\" class=\"reg\">&reg;</span>mạnh mẽ, Windows 8, tấm nền IPS Full HD với TRILIMINOS Display cho điện thoại, v&agrave; những t&iacute;nh năng cao cấp kh&aacute;c như ổ cứng SSD tốc độ cao v&agrave; một t&ugrave;y chọn Pin th&ecirc;m cho m&aacute;y c&agrave;ng gi&uacute;p chiếc m&aacute;y trở n&ecirc;n vượt trội.</p>', 'VAIOPro11.jpg', 23990000, 'new', 0, 0),
(914362335, 5, 'VAIO® Fit 14', '<h3 style=\"margin: 15px 0px 10px; padding: 0px; font-size: 22px; font-family: Arial; font-weight: normal; color: rgb(0, 0, 0); font-style: normal; font-variant: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);\" class=\"subTitle\">Hiển thị tuyệt đẹp với mọi nội dung</h3>\r\n<p style=\"margin: 0px 25px 0px 0px; padding: 0px; font-size: 12px; line-height: 1.5; color: rgb(0, 0, 0); font-family: Tahoma; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);\" class=\"rangeText\">VAIO<span style=\"font-size: 10px; vertical-align: baseline;\" class=\"reg\">&reg;</span><span class=\"Apple-converted-space\">&nbsp;</span>Fit 14/15 l&agrave; chiếc m&aacute;y t&iacute;nh tối ưu cho cả c&ocirc;ng việc v&agrave; giải tr&iacute; của bạn. Chất lượng h&igrave;nh ảnh r&otilde; n&eacute;t, sống động được tạo ra bằng những c&ocirc;ng nghệ n&acirc;ng cao h&igrave;nh ảnh độc đ&aacute;o của Sony tr&ecirc;n VAIO. M&agrave;n h&igrave;nh hỗ trợ cảm ứng hoạt động linh hoạt v&agrave; tiện lợi hơn. Thiết<br />\r\nkế nổi bật biểu trưng cho chất lượng v&agrave; đa năng thể hiện xuy&ecirc;n suốt qua sự tinh giản v&agrave; thanh tho&aacute;t của chiếc m&aacute;y</p>\r\n<p style=\"margin: 0px 25px 0px 0px; padding: 0px; font-size: 12px; line-height: 1.5; color: rgb(0, 0, 0); font-family: Tahoma; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);\" class=\"rangeText\">&nbsp;</p>\r\n<h3 style=\"margin: 15px 0px 10px; padding: 0px; font-size: 22px; font-family: Arial; font-weight: normal; color: rgb(0, 0, 0); font-style: normal; font-variant: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);\" class=\"subTitle\">Cảm nhận &acirc;m thanh tuyệt hơn</h3>\r\n<p style=\"margin: 0px 25px 0px 0px; padding: 0px; font-size: 12px; line-height: 1.5; color: rgb(0, 0, 0); font-family: Tahoma; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);\" class=\"rangeText\">VAIO<span style=\"font-size: 10px; vertical-align: baseline;\" class=\"reg\">&reg;</span><span class=\"Apple-converted-space\">&nbsp;</span>Fit 14E/15E tuyệt vời như một chiếc Notebook b&ecirc;n bạn mỗi ng&agrave;y. Chế độ ClearAudio+ tự động tối ưu h&oacute;a chất lượng &acirc;m thanh v&agrave; những giai điệu m&ecirc; đắm từ cập loa đ&ocirc;i c&ocirc;ng suất lớn cho bạn n&acirc;ng cao trải nghiệm &acirc;m nhạc. VAIO<span style=\"font-size: 10px; vertical-align: baseline;\" class=\"reg\">&reg;</span><span class=\"Apple-converted-space\">&nbsp;</span>Fit 15E c&ograve;n trang bị loa si&ecirc;u trầm mạnh mẽ gi&uacute;p tăng cường tiếng Bass phong ph&uacute;. C&ocirc;ng nghệ NFC cho bạn mở rộng c&aacute;ch thưởng thức &acirc;m nhạc. Những g&igrave; bạn cần cho nhu cầu c&ocirc;ng việc v&agrave; giải tr&iacute; đều c&oacute; thể t&igrave;m thấy ở ch&iacute;nh sản phẩm n&agrave;y.</p>', 'VAIOFit14.jpg', 25990000, 'new', 0, 0),
(795, 4, 'HP 1000', '<p><span style=\"color: rgb(68, 68, 68); font-family: MyriadProSemibold, sans-serif; font-size: 13px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 18px; orphans: auto; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); display: inline !important; float: none;\">Intel Core i3 3110M (4*2.40Ghz, 3MB Smart cache, 1600Mhz FSB, 35W), Intel 7 Series Express, 4GB DDR3 BUS 1600Mhz, 500GB SATA, DVD-RW Double Layer, 14 LED HD (1366 x 768) 16:9 Gloss, Intel HD GPU Graphics 3000, Wireless 802.11 b/g/n, NIC 1 Gbps, Card Reader 5.1, Webcam 1.3M, Microphone, Bluetooth, HDMI, 2.1 Kg, Pin 6 Cell, DOS,</span></p>', 'HP1000.jpg', 8500000, 'hienthi', 0, 0),
(0, 4, 'HP 450', '<p><span style=\"color: rgb(68, 68, 68); font-family: MyriadProSemibold, sans-serif; font-size: 13px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 18px; orphans: auto; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); display: inline !important; float: none;\">Intel Core i5 3230M(4*2.60Ghz, 3MB Smart cache, 1600Mhz FSB), Intel 7 Series Express, 2GB DDR3 BUS 1600Mhz, 500 GB SATA, DVD-RW Double Layer, 14 LED HD (1366 x 768) 16:9 Gloss, Intel HD GPU Graphics 4000, Wireless 802.11 b/g/n, NIC 1 Gbps, Card Reader 5.1, Webcam 1.3M, Microphone, Bluetooth 4.0, HDMI, 2.1 Kg, Pin 6 Cell, DOS</span></p>', 'HP450.jpg', 10690000, 'new', 0, 0),
(905, 3, 'ASUS X451CA15', '<p><span style=\"color: rgb(68, 68, 68); font-family: MyriadProSemibold, sans-serif; font-size: 13px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 18px; orphans: auto; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); display: inline !important; float: none;\">Intel Core i3 3217U (4*1.80Ghz, 3MB Smart cache, 1600Mhz FSB, 17W), Intel 7 Series Express, 2GB DDR3 BUS 1600Mhz, 500 GB SATA, DVD-RW Double Layer, 14.0 LED HD (1366 x 768) 16:9 Gloss, Intel HD GPU Graphics 4000, Wireless 802.11 b/g/n, NIC 1Gbps, Card Reader 5.1, Webcam, Microphone, Bluetooth, HDMI, USB 3.0, 2.1Kg, Pin 4 Cell, DOS, Pin &amp; Adapter bảo h&agrave;nh 12 th&aacute;ng, C&oacute; 2 m&agrave;u : Trắng - Đen</span></p>', 'ASUSX451CA15.jpg', 10570000, 'new', 0, 0),
(2147483647, 3, 'ZENBOOK UX21A', '<p style=\"margin: 0px 0px 4em; color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; font-size: 12px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 18px; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);\">Thi&ecirc;́t l&acirc;̣p n&ecirc;n các ti&ecirc;u chu&acirc;̉n mới v&ecirc;̀ c&ocirc;ng ngh&ecirc;̣ và thời trang, ZENBOOK Prime chỉ dày 3mm phía đầu máy &amp; 9mm phía đu&ocirc;i máy. M&aacute;y sử dụng phương ph&aacute;p thiết kế thủ c&ocirc;ng tinh vi với th&acirc;n m&aacute;y bằng hợp kim nguy&ecirc;n khối cho trọng lượng nhẹ m&agrave; bền bỉ. Vỏ ngoài gồm họa ti&ecirc;́t những đường tròn đ&ocirc;̀ng t&acirc;m tinh quay lan tỏa th&ecirc;̉ hi&ecirc;̣n sự v&ocirc; t&acirc;̣n trong triết l&yacute; Thi&ecirc;̀n. Thiết kế tổng quan được tối ưu h&oacute;a mang lại một giao diện ho&agrave;n chỉnh kết hợp giữa thẩm mỹ &amp; tốc độ, phục vụ ho&agrave;n hảo cho cả c&ocirc;ng việc lẫn giải tr&iacute;. Đ&ecirc;̉ duy trì giao di&ecirc;̣n này, ASUS đã phát tri&ecirc;̉n bộ phụ ki&ecirc;̣n của ZENBOOK Prime thật ấn tượng và tinh t&ecirc;́.</p>', 'ZENBOOKUX21A.jpg', 25670000, 'new', 0, 0),
(8148, 3, 'TAICHI 21', '<p>Windows 8 Pro Hoặc những phi&ecirc;n bản c&oacute; sẵn kh&aacute;c</p>\r\n<p><br />\r\nSi&ecirc;u hiệu suất được tăng cường nhờ bộ xử l&yacute; Intel&reg; </p>\r\n<p><br />\r\nCore&trade; i7 -3517U thế hệ thứ 3</p>\r\n<p><br />\r\nM&aacute;y t&iacute;nh x&aacute;ch tay 2 m&agrave;n h&igrave;nh t&iacute;ch hợp m&aacute;y t&iacute;nh bảng đầu ti&ecirc;n tr&ecirc;n thế giới.</p>\r\n<p><br />\r\nDễ d&agrave;ng chuyển đổi chức năng giữa chế độ notebook v&agrave; m&aacute;y t&iacute;nh bảng bằng một thao t&aacute;c n&uacute;t bấm đơn giản.</p>\r\n<p><br />\r\nMỏng nhẹ đ&aacute;ng kinh ngạc v&agrave; si&ecirc;u di động</p>\r\n<p><br />\r\nB&uacute;t stylus t&ugrave;y chọn cho c&aacute;c t&aacute;c vụ đ&ograve;i hỏi sự ch&iacute;nh x&aacute;c v&agrave; ghi ch&uacute; viết tay.</p>', 'TAICHI21.jpg', 30500000, 'new', 0, 0),
(74609, 3, 'S200E', '<p>VIVOBOOK</p>\r\n<p>Windows 8 Hoặc những phi&ecirc;n bản c&oacute; sẵn kh&aacute;c<br />\r\nBộ vi xử l&yacute; Intel&reg; Core&trade; i3 3217U<br />\r\nM&agrave;n h&igrave;nh cảm ứng ch&iacute;nh x&aacute;c cho trải nghiệm trực quan<br />\r\nThiết kế mỏng nhẹ sang trọng v&agrave; phong c&aacute;ch<br />\r\nTận hưởng c&ocirc;ng nghệ SonicMaster cho trải nghiệm &acirc;m thanh sống động v&agrave; mạnh mẽ<br />\r\nCảm nhận sự mượt m&agrave; tự nhi&ecirc;n với b&agrave;n di chuột ASUS Smart Gesture v&agrave; chức năng khởi động lại trong v&ograve;ng 2 gi&acirc;y</p>', 'S200E.jpg', 16789000, 'hienthi', 0, 0),
(1, 9, 'YOGA 2 PRO', '<p>M&agrave;n h&igrave;nh: 13,3&quot; cảm ứng 10 điểm chạm, tấm nền IPS<br />\r\nĐộ ph&acirc;n giải tối đa: 3200 x 1800 pixels<br />\r\nCPU: Intel Haswell Core i7, 1.8Ghz<br />\r\nGPU: Intel HD Graphics 4400<br />\r\nRAM: 4GB, c&ocirc;ng nghệ DDR3L 1600MHz<br />\r\nSSD: 256GB<br />\r\nPin: tối đa c&oacute; thể đạt 9 giờ<br />\r\nHệ điều h&agrave;nh: Windows 8.1 64 bit<br />\r\nLật gập xoay t&ugrave;y chỉnh tối đa đến 360 độ<br />\r\nMỏng 15,5mm, nặng 1.39kg</p>', 'YOGA2PRO.jpg', 29490000, 'new', 0, 0),
(8, 9, 'LENOVO Z400', '<p>CPU: Core i5-3230M , 2.6Ghz<br />\r\nRAM: 4GB DDR3<br />\r\nỔ Cứng: 500GB 5400rpm<br />\r\nM&agrave;n h&igrave;nh: 14 inch HD LED<br />\r\nGPU: Intel HD Graphics<br />\r\nBảo h&agrave;nh: 12 th&aacute;ng</p>', 'LENOVOZ400.jpg', 11990000, 'new', 0, 0),
(66, 9, 'LENOVO S400', '<p>CPU: Core i3 - 2317U , 1.8 Ghz<br />\r\nRAM: 4GB DDR3 1600Mhz<br />\r\nHDD: 320GB Sata 5400rpm<br />\r\nM&agrave;n h&igrave;nh: 14.0 inch HD LED<br />\r\nGPU: Intel HD Graphics 4000<br />\r\nBảo h&agrave;nh: 12 th&aacute;ng</p>', 'LENOVOS400.jpg', 8790000, 'hienthi', 0, 0),
(121, 8, 'INSPIRON 15 N5537', '<p>CPU: Intel Haswell Core i5-4200U,1.6Ghz up to 2.6Ghz<br />\r\nRAM: 4GB DDR3 1600 Mhz<br />\r\nỔ Cứng: 750GB Sata 5400rpm<br />\r\nM&agrave;n h&igrave;nh: 15.6&quot; HD LED<br />\r\nGPU: AMD Raedon HD 8670M 2GB</p>', 'INSPIRON15N5537.jpg', 15390000, 'new', 0, 0),
(59, 8, 'DELL VOSTRO-V3560', '', 'DELLVOSTROV3560.jpg', 19699900, 'hienthi', 0, 0),
(573447, 1, 'RETINA ME664ZP/A', '', 'RETINAME664ZPA.jpg', 47990000, 'new', 0, 0),
(78713611, 1, 'MACBOOK PRO 13.3', '<p>Thiết kế đẳng cấp, unibody liền lạc nh&ocirc;m nguy&ecirc;n khối, si&ecirc;u mỏng, si&ecirc;u gọn, si&ecirc;u nhẹ.<br />\r\nChip Intel thế hệ hai, core i7 cực mạnh.<br />\r\nKết nối ThunderBolt si&ecirc;u nhanh.<br />\r\nTouchpad đa điểm tuyệt vời.<br />\r\nỔ cứng dung lượng lớn, 500GB tha hồ lưu trữ dữ liệu v&agrave; phim ảnh.<br />\r\nHệ điều h&agrave;nh Mac mượt, tương th&iacute;ch tối đa với phần cứng.<br />\r\nĐ&egrave;n LED nền b&agrave;n ph&iacute;m cực đẹp.<br />\r\nPin d&ugrave;ng rất l&acirc;u, thời gian d&ugrave;ng ở chế độ ti&ecirc;u chuẩn l&ecirc;n đến 8 giờ.</p>', 'MACBOOKPRO13.3.jpg', 33990000, 'new', 0, 0),
(92, 2, 'ACER ASPIRE V5', '<p>CPU: Core i5 - 3337U, 1.8Ghz upto 2.7Ghz<br />\r\nRAM: 4GB DDR3 1600Mhz<br />\r\nỔ Cứng: 500GB Sata 5400rpm<br />\r\nM&agrave;n h&igrave;nh: 14.0 inch<br />\r\nGPU: nVidia GeForce 710M 2GB</p>', 'ACERASPIREV5.jpg', 12090000, 'new', 0, 0),
(959, 2, 'ACER V533214G50', '', 'ACERV533214G50.jpg', 9990000, 'hienthi', 0, 0),
(70, 11, 'D-LINK DWM 156', '', 'USB3GDLINKDWM156.jpg', 590000, 'new', 0, 0),
(21, 11, 'Fast Connect MF190', '', 'FastConnectMF190.jpg', 690000, 'new', 0, 0),
(41, 11, 'D-COM 3G', '', 'DCOM3G.jpg', 530000, 'new', 0, 0),
(3, 10, 'KINGSTON 32G', '', 'KINGSTON32G.jpg', 550000, 'hienthi', 0, 0),
(6, 10, 'PNY LOVELY 8G', '', 'PNYLOVELY8G.jpg', 299000, 'new', 0, 0),
(77, 15, 'MICROLAB M119/2.1', '', 'MICROLABM1192.1.jpg', 789000, 'hienthi', 0, 0),
(4297, 15, 'SOUNDMAX A850', '<p><span style=\"color: rgb(102, 102, 102); font-family: Arial, Verdana, sans-serif; font-size: 12px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 20px; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); display: inline !important; float: none;\">- Hệ thống loa: 2 + 1 loa si&ecirc;u trầm<span class=\"Apple-converted-space\">&nbsp;</span></span><br style=\"color: rgb(102, 102, 102); font-family: Arial, Verdana, sans-serif; font-size: 12px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 20px; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);\" />\r\n<span style=\"color: rgb(102, 102, 102); font-family: Arial, Verdana, sans-serif; font-size: 12px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 20px; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); display: inline !important; float: none;\">- Chống nhiễm từ<span class=\"Apple-converted-space\">&nbsp;</span></span><br style=\"color: rgb(102, 102, 102); font-family: Arial, Verdana, sans-serif; font-size: 12px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 20px; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);\" />\r\n<span style=\"color: rgb(102, 102, 102); font-family: Arial, Verdana, sans-serif; font-size: 12px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 20px; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); display: inline !important; float: none;\">- Tương th&iacute;ch: Laptop,PC,VCD<span class=\"Apple-converted-space\">&nbsp;</span></span><br style=\"color: rgb(102, 102, 102); font-family: Arial, Verdana, sans-serif; font-size: 12px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 20px; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);\" />\r\n<span style=\"color: rgb(102, 102, 102); font-family: Arial, Verdana, sans-serif; font-size: 12px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 20px; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); display: inline !important; float: none;\">- Nguồn: 220-240V. Tổng c&ocirc;ng suất 25W<span class=\"Apple-converted-space\">&nbsp;</span></span><br style=\"color: rgb(102, 102, 102); font-family: Arial, Verdana, sans-serif; font-size: 12px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 20px; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);\" />\r\n<span style=\"color: rgb(102, 102, 102); font-family: Arial, Verdana, sans-serif; font-size: 12px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 20px; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); display: inline !important; float: none;\">- Điều chỉnh &acirc;m thanh Volume, Bass, Treble<span class=\"Apple-converted-space\"> <br />\r\n</span></span></p>', 'SOUNDMAXA850.jpg', 640000, 'new', 0, 0),
(30, 13, 'LOGITECH M187', '', 'LOGITECHM187.jpg', 298000, 'hienthi', 0, 0),
(98, 13, 'Vtrack 800', '', 'Vtrack800.jpg', 235000, 'hienthi', 0, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `thanhvien`
--

CREATE TABLE `thanhvien` (
  `hoten` varchar(255) NOT NULL,
  `diachi` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `dienthoai` int(20) NOT NULL,
  `user` varchar(255) NOT NULL,
  `pass` varchar(32) NOT NULL,
  `hieuluc` int(10) NOT NULL,
  `capquyen` int(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `thanhvien`
--

INSERT INTO `thanhvien` (`hoten`, `diachi`, `email`, `dienthoai`, `user`, `pass`, `hieuluc`, `capquyen`) VALUES
('Quốc HT05A', 'Đà Nẵng', 'xuanquocqn@gmail.com', 1657990372, 'Admin', '86e6075b9c1dcae75660adf0cf803fb5', 1, 1),
('Quốc', 'Quảng Ngãi', 'xuanquocqn@gmail.com', 1657990372, 'Xuanquocqn', 'a4a2846150bc2e42819bb85ad4d17cd3', 1, 3),
('Phượng Le', 'Quảng Nam', 'phuongle.qn.23@gmail.com', 1657993024, 'phuong', '25f9e794323b453885f5181f1b624d0b', 1, 3),
('Le Thị Phượng', 'Da Nang', 'phuong@gmail.com', 1657990372, 'phuongle', '25f9e794323b453885f5181f1b624d0b', 1, 3);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `giohang`
--
ALTER TABLE `giohang`
  ADD PRIMARY KEY (`id_giohang`);

--
-- Chỉ mục cho bảng `hoadon`
--
ALTER TABLE `hoadon`
  ADD PRIMARY KEY (`id_hoadon`);

--
-- Chỉ mục cho bảng `lienhe`
--
ALTER TABLE `lienhe`
  ADD PRIMARY KEY (`id_lienhe`);

--
-- Chỉ mục cho bảng `loaisanpham`
--
ALTER TABLE `loaisanpham`
  ADD PRIMARY KEY (`id_loai`);

--
-- Chỉ mục cho bảng `nhomsanpham`
--
ALTER TABLE `nhomsanpham`
  ADD PRIMARY KEY (`id_nhom`);

--
-- Chỉ mục cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `thanhvien`
--
ALTER TABLE `thanhvien`
  ADD PRIMARY KEY (`user`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `giohang`
--
ALTER TABLE `giohang`
  MODIFY `id_giohang` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=151;

--
-- AUTO_INCREMENT cho bảng `hoadon`
--
ALTER TABLE `hoadon`
  MODIFY `id_hoadon` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT cho bảng `lienhe`
--
ALTER TABLE `lienhe`
  MODIFY `id_lienhe` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2147483648;
--
-- Cơ sở dữ liệu: `db_webtintuc`
--
CREATE DATABASE IF NOT EXISTS `db_webtintuc` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `db_webtintuc`;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `groups`
--

CREATE TABLE `groups` (
  `id` int(11) NOT NULL,
  `Ten` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `groups`
--

INSERT INTO `groups` (`id`, `Ten`) VALUES
(1, 'Admin'),
(2, 'user');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tb_comment`
--

CREATE TABLE `tb_comment` (
  `id` int(11) NOT NULL,
  `idUser` int(11) DEFAULT NULL,
  `idTinTuc` int(11) DEFAULT NULL,
  `NoiDung` longtext DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `Tintuc_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tb_comment`
--

INSERT INTO `tb_comment` (`id`, `idUser`, `idTinTuc`, `NoiDung`, `created_at`, `updated_at`, `Tintuc_id`) VALUES
(1, 2, 1, 'Hay', '2022-11-29 23:03:11', NULL, NULL),
(2, 4, 1, 'test', '2023-01-17 16:11:54', '2023-01-17 16:11:54', NULL),
(3, 4, 1, 'test1', '2023-01-17 16:33:11', '2023-01-17 16:33:11', NULL),
(4, 2, 1, 'test', '2023-01-17 16:34:01', '2023-01-17 16:34:01', NULL),
(5, 2, 1, 'hi', '2023-01-28 12:01:47', '2023-01-28 12:01:47', NULL),
(6, 4, 1, 'tewst', '2023-01-28 12:03:07', '2023-01-28 12:03:07', NULL),
(7, 2, 6, 'test', '2023-01-31 15:19:15', '2023-01-31 15:19:15', NULL),
(8, 2, 14, 'bài này hay', '2023-02-01 15:05:07', '2023-02-01 15:05:07', NULL),
(12, 2, 20, 'hidaa', '2023-02-23 10:20:11', '2023-02-23 10:20:11', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tb_loaitin`
--

CREATE TABLE `tb_loaitin` (
  `id` int(11) NOT NULL,
  `idTheLoai` int(11) DEFAULT NULL,
  `Ten` varchar(255) DEFAULT NULL,
  `TenKhongDau` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tb_loaitin`
--

INSERT INTO `tb_loaitin` (`id`, `idTheLoai`, `Ten`, `TenKhongDau`, `created_at`, `updated_at`) VALUES
(1, 2, 'Chiến tranh', NULL, NULL, NULL),
(2, 8, 'BlockChain', NULL, NULL, NULL),
(3, 1, 'Tài chính', NULL, NULL, NULL),
(4, 10, 'đời sống', NULL, NULL, NULL),
(8, 12, 'Tin thế giới', NULL, NULL, NULL),
(10, 11, 'Trong nước -ngoài nước', NULL, NULL, NULL),
(12, 8, 'IT', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tb_slide`
--

CREATE TABLE `tb_slide` (
  `id` int(11) NOT NULL,
  `Ten` varchar(255) DEFAULT NULL,
  `HinhAnh` varchar(255) DEFAULT NULL,
  `NoiDung` mediumtext DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tb_slide`
--

INSERT INTO `tb_slide` (`id`, `Ten`, `HinhAnh`, `NoiDung`, `link`, `created_at`, `updated_at`) VALUES
(1, 'test', 'https://cafebitcoin.org/wp-content/uploads/2022/11/ftx.jpg', 'test', 'tesaf', NULL, NULL),
(2, 'coin', 'https://coin68.com/wp-content/uploads/2022/11/Market-27.11.22-1536x864.jpg', 'coin', 'https://coin68.com/tuan-san-coin68-w47-2022/', NULL, NULL),
(3, 'Laravel', 'https://vantien.net/wp-content/uploads/2021/09/v8h2ztgkxtdhys0z0z9f.png', 'Laravel', 'https://laravel.com/', NULL, NULL),
(4, 'bitcoin', 'https://image.thanhnien.vn/w2048/Uploaded/2022/vjryqdxwp/2021_05_30/bitcoin-cnbc_eeou.jpeg', 'Bitcoin', 'chua co', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tb_theloai`
--

CREATE TABLE `tb_theloai` (
  `id` int(11) NOT NULL,
  `Ten` varchar(255) NOT NULL,
  `TenKhongDau` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tb_theloai`
--

INSERT INTO `tb_theloai` (`id`, `Ten`, `TenKhongDau`, `created_at`, `updated_at`) VALUES
(1, 'Kinh tế', NULL, NULL, NULL),
(2, 'Quân sự', NULL, NULL, NULL),
(8, 'Công nghệ', NULL, NULL, NULL),
(10, 'Xã hội', NULL, NULL, NULL),
(11, 'Chính trị', NULL, NULL, NULL),
(12, 'Thế giới', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tb_tintuc`
--

CREATE TABLE `tb_tintuc` (
  `id` int(11) NOT NULL,
  `TieuDe` varchar(255) DEFAULT NULL,
  `TieuDeKhongDau` varchar(255) DEFAULT NULL,
  `TomTat` varchar(255) DEFAULT NULL,
  `NoiDung` mediumtext DEFAULT NULL,
  `Hinh` varchar(255) DEFAULT NULL,
  `NoiBat` int(11) DEFAULT NULL,
  `SoLuotXem` int(11) DEFAULT NULL,
  `idLoaiTin` int(11) DEFAULT NULL,
  `idTheLoai` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tb_tintuc`
--

INSERT INTO `tb_tintuc` (`id`, `TieuDe`, `TieuDeKhongDau`, `TomTat`, `NoiDung`, `Hinh`, `NoiBat`, `SoLuotXem`, `idLoaiTin`, `idTheLoai`, `created_at`, `updated_at`) VALUES
(1, 'ACV chịu trách nhiệm giám sát gói thầu 35 nghìn tỷ dự án sân bay Long Thành\r\n', NULL, 'ACV chịu trách nhiệm giám sát gói thầu 35 nghìn tỷ dự án sân bay Long Thành\r\n', 'Vietstock - ACV (HN:ACV) chịu trách nhiệm giám sát gói thầu 35 nghìn tỷ dự án sân bay Long Thành\r\n\r\nBộ GTVT vừa nhận được văn bản của Bộ Kế hoạch và Đầu tư về việc giám sát công tác lựa chọn nhà thầu dự án xây sân bay Cảng HKQT Long Thành.\r\n\r\nBộ GTVT vừa nhận được văn bản của Bộ Kế hoạch và Đầu tư về việc giám sát công tác lựa chọn nhà thầu dự án xây sân bay Cảng HKQT Long Thành, trong đó có Gói thầu số 5.10 (trị giá hơn 35 nghìn tỷ đồng).\r\n\r\nGói thầu số 5.10 “Thi công xây dựng và lắp đặt thiết bị công trình Nhà ga hành khách”, có giá gói thầu 35.233 tỷ đồng\r\nTheo Bộ Kế hoạch và Đầu tư, Điều 126 Nghị định số 63/2014/NĐ-CP quy định rõ: Người có thẩm quyền quyết định và chỉ đạo việc giám sát, theo dõi hoạt động đấu thầu đối với các gói thầu thuộc dự án, dự toán mua sắm do mình quyết định khi thấy cần thiết; tập trung giám sát, theo dõi đối với các chủ đầu tư, bên mời thầu có thắc mắc, kiến nghị, đối với các gói thầu áp dụng hình thức chỉ định thầu, các gói thầu có giá trị lớn, đặc thù, yêu cầu cao về kỹ thuật.\r\n\r\nBộ Kế hoạch và Đầu tư nhận thấy TCT Cảng hàng không Việt Nam - ACV đã phê duyệt Dự án thành phần 3 và phê duyệt kế hoạch lựa chọn nhà thầu.\r\n\r\nDo vậy, căn cứ quy định tại Nghị định số 63/2014/NĐ-CP, ACV với tư cách là người quyết định đầu tư, người có thẩm quyền của dự án chịu trách nhiệm quyết định và chỉ đạo việc giám sát, theo dõi hoạt động đấu thầu đối với gói thầu nêu trên.\r\n\r\nTrước đó, vào giữa tháng 11/2022, Bộ GTVT đã có công văn đề nghị Bộ Kế hoạch và đầu tư chủ trì và tổ chức, triển khai công tác giám sát, rà soát hoạt động đấu thầu của Dự án, trong đó có Gói thầu số 5.10 “Thi công xây dựng và lắp đặt thiết bị công trình Nhà ga hành khách” thuộc Dự án thành phần 3 - Các công trình thiết yếu trong cảng hàng không thuộc Dự án đầu tư xây dựng Cảng hàng không quốc tế Long Thành giai đoạn 1.\r\n\r\nTheo Bộ Kế hoạch và Đầu tư, sau khi nhận được đề nghị của Bộ GTVT, Bộ Kế hoạch và đầu tư (Cục Quản lý đấu thầu) đã chủ động cử cán bộ phối hợp rà soát hoạt động đấu thầu Gói thầu số 5.10.\r\n\r\nTại cuộc họp hôm 21/11/2022 do lãnh đạo Bộ GTVT chủ trì, có sự tham gia của đại diện các đơn vị thuộc Bộ GTVT, ACV, Ban quản lý dự án thành phần 3 Cảng HKQT Long Thành, lãnh đạo Cục Quản lý đấu thầu đã đề nghị ACV làm rõ nguyên nhân kế hoạch lựa chọn nhà thầu áp dụng hình thức đấu thầu rộng rãi quốc tế nhưng không có nhà thầu quốc tế tham dự mà chỉ có một nhà thầu liên danh trong nước nộp hồ sơ dự thầu.\r\n\r\nCục Quản lý đấu thấu cũng đề nghị ACV rà soát quá trình thực hiện thủ tục đấu thầu để bảo đảm tuân thủ thời gian cho nhà thầu chuẩn bị hồ sơ dự thầu (tối thiểu 40 ngày đối với đấu thầu quốc tế). Ngoài ra, trong quá trình tổ chức lựa chọn nhà thầu, Cục Quản lý đấu thầu, Bộ Kế hoạch và Đầu tư đã có một số văn bản hướng dẫn, hỗ trợ ACV triển khai, thực hiện.\r\n\r\nTại cuộc họp lần thứ 3 Ban Chỉ đạo Nhà nước các công trình, dự án quan trọng quốc gia, trọng điểm ngành GTVT hôm 16/11, Thủ tướng Chính phủ Phạm Minh Chính đã chỉ đạo tổ chức giám sát, rà soát công tác lựa chọn nhà thầu gói thầu thi công xây dựng và lắp đặt thiết bị công trình Nhà ga hành khách Dự án thành phần 3 thuộc Dự án đầu tư xây dựng Cảng hàng không quốc tế Long Thành do Tổng công ty Cảng hàng không Việt Nam - ACV làm chủ đầu tư, bảo đảm tuân thủ quy định pháp luật.\r\n\r\nGói thầu số 5.10 “Thi công xây dựng và lắp đặt thiết bị công trình Nhà ga hành khách”, có giá gói thầu 35.233 tỷ đồng bao gồm việc thiết kế bản vẽ thi công và Thi công xây dựng và lắp đặt thiết bị công trình Nhà ga hành khách của Dự án thành phần 3- Các công trình thiết yếu trong cảng hàng không thuộc Dự án đầu tư xây dựng Cảng hàng không quốc tế Long Thành giai đoạn 1.\r\n\r\nThời gian thực hiện hợp đồng là 990 ngày (tương đương 33 tháng), bao gồm cả ngày nghỉ cuối tuần, nghỉ lễ, nghỉ Tết theo quy định của pháp luật Việt Nam kể từ ngày hợp đồng có hiệu lực.\r\n\r\nHình thức đấu thầu Gói thầu 5.10 là đấu thầu rộng rãi quốc tế, không qua mạng, không sơ tuyển. Phương thức lựa chọn nhà thầu là một giai đoạn hai túi hồ sơ. Thời gian phát hành hồ sơ mời thầu: Từ 09h30 ngày 24/9/2022 đến trước 9h30 ngày 8/11/2022 (trong giờ làm việc hành chính); thời điểm đóng thầu là 9h30 ngày 8/11/2022 nhưng được gia hạn đến 9h30 ngày 23/11/2022, rồi gia hạn tiếp đến 9h30 ngày 30/11/2022.', 'https://d52-invdn-com.investing.com/content/pic066691b823d9788dd28a7b8a4906d987.jpg', 1, NULL, 3, 1, '2022-11-29 22:54:41', NULL),
(2, 'Khai trương khu nhà mẫu lớn nhất Việt Nam', NULL, 'Masterise Homes đã khai trương sales gallery (khu nhà mẫu) của dự án The Global City', 'Đây được xem là sales gallery lớn nhất Việt Nam với quy mô 10.000m2 , được thiết kế độc đáo và quy mô kết hợp với công nghệ tiên tiến lần đầu tiên xuất hiện tại Việt Nam.', 'https://image.thanhnien.vn/w2048/Uploaded/2022/kpuozvu/2022_11_29/tempimagexh61av-3618.jpg', NULL, NULL, 3, NULL, NULL, NULL),
(3, '10 dự án đất đai tại Đồng Nai sẽ thanh tra là dự án nào?', NULL, '10 dự án đất đai tại Đồng Nai sẽ thanh tra', 'Từ nay tới cuối năm 2022, Bộ Tài Nguyên - Môi trường (TN-MT) sẽ thanh tra 10 dự án đất đai tại Đồng Nai, cụ thể tại 3 địa phương gồm TP.Long Khánh, H.Long Thành, H.Nhơn Trạch về việc chấp hành pháp luật trong lĩnh vực tài nguyên môi trường.\r\nThứ trưởng Bộ TN-MT Nguyễn Thị Phương Hoa vừa dẫn đầu đoàn công tác của Bộ TN-MT vào làm việc với UBND tỉnh Đồng Nai để công bố quyết định thanh tra việc chấp hành pháp luật trong lĩnh vực tài nguyên môi trường. Theo đó, Bộ TN-MT sẽ thanh tra đối với 3 địa phương của Đồng Nai là TP.Long Khánh, H.Long Thành, H.Nhơn Trạch và 10 dự án đất đai trên địa bàn. Thời gian thanh tra là 30 ngày.', 'https://image.thanhnien.vn/w2048/Uploaded/2022/qfrqa/2021_06_11/132305877_301832281247308_4659890117252862734_n_sqjo.jpg', 1, NULL, 3, NULL, NULL, NULL),
(4, 'Cung thấp, chi phí cao giá nhà ở tiếp tục tăng', NULL, 'Theo báo cáo mới công bố về chỉ số giá bất động sản của Savills (SPPI) quý 3/2022 cho thấy, chỉ số giá bất động sản nhà ở và văn phòng tại Hà Nội và TP.HCM đều có xu hướng gia tăng.', 'Giá nhà ở tăng\r\nTheo đó, chỉ số giá nhà ở tại TP.HCM là 130 điểm và tăng 1 điểm theo quý trước. Sự gia tăng này đến từ việc giá sản phẩm nhà ở hạng B tại TP.Thủ Đức tăng 13% theo quý và huyện Nhà Bè tăng 5% theo quý.\r\n\r\nTrong quý 3/2022, tỷ lệ hấp thụ đạt 15% giảm 54% theo quý nhưng tăng 1% theo năm. Sự sụt giảm đáng kể đến từ việc giá sơ cấp tăng cao, niềm tin của người mua nhà giảm bởi việc lãi suất tăng và kiểm soát tín dụng chặt chẽ. Nguồn cung nhà ở hạng B chiếm 54% nguồn cung sơ cấp, với giá cao nhất là 10 tỉ đồng/căn. Dòng sản phẩm hạng A chiếm 23% nguồn cung sơ cấp, với mức giá lên tới 30 tỉ đồng/căn.', 'https://image.thanhnien.vn/w2048/Uploaded/2022/kpuozvu/2022_10_28/tempimagemfozqn-9255.jpg', NULL, NULL, 3, NULL, NULL, NULL),
(5, 'Chính phủ họp tháo gỡ khó khăn cho thị trường bất động sản', NULL, 'Ngày 8.11, Phó thủ tướng Chính phủ Lê Minh Khái cùng với Bộ Xây dựng đã có buổi làm việc với các doanh nghiệp bất động sản phía nam và Hiệp hội Bất động sản TP.HCM nhằm tháo gỡ khó khăn cho thị trường bất động sản.', 'Theo Văn phòng Chính phủ, thực hiện ý kiến chỉ đạo của Phó thủ tướng Chính phủ Lê Minh Khái, ngày 7.11 Văn phòng Chính phủ đã có công văn số 1492 mời lãnh đạo Bộ Xây dựng và lãnh đạo các doanh nghiệp đến dự cuộc họp về tháo gỡ khó khăn, vướng mắc cho thị trường bất động sản. Trong đó 11 doanh nghiệp bất động sản khu vực phía nam được Văn phòng Chính phủ mời họp, bao gồm: Tập đoàn Novaland, Công ty Phú Mỹ Hưng, Tổng công ty đầu tư và phát triển công nghiệp Becamex, Tập đoàn Hưng Thịnh, Công ty cổ phần Đầu tư IMG, Công ty địa ốc Hoàng Quân, Tập đoàn Himlam, Công ty cổ phần Đại An, Tập đoàn Phú Cường, Tập đoàn Sơn Kim Land, Tổng công ty cổ phần Đầu tư phát triển xây dựng (DIC), Tập đoàn Khang Điền và Hiệp hội Bất động sản TP.HCM. Ngoài 11 doanh nghiệp phía nam còn có 12 doanh nghiệp bất động sản lớn tại khu vực phía bắc cũng được mời dự họp trực tuyến gồm Tập đoàn Vingroup, Tập đoàn Sungroup, Tập đoàn Ecopark, Tập đoàn Tuần Châu, Tập đoàn TNG, Tập đoàn Flamingo... Bộ Xây dựng được yêu cầu chuẩn bị 40 bộ tài liệu và báo cáo.\r\n\r\nChia sẻ với Thanh Niên về nội dung báo cáo với Chính phủ, ông Lê Hoàng Châu, Chủ tịch Hiệp hội Bất động sản TP.HCM (HoREA), cho biết hiện nay thị trường bất động sản đang rất khó khăn và đứng trước khả năng có thể rơi vào suy thoái, một số tập đoàn, doanh nghiệp bất động sản cũng đang rất khó khăn, đặc biệt là rủi ro bị sụt giảm sâu thanh khoản, thậm chí có thể bị mất thanh khoản, thể hiện qua việc một số tập đoàn, doanh nghiệp bất động sản phải thực hiện các biện pháp “đau đớn” để tồn tại như thu hẹp quy mô đầu tư sản xuất kinh doanh (dừng, đình hoãn hoạt động đầu tư, thi công xây dựng một số dự án; dừng triển khai các dự án mới; dừng phát hành cổ phiếu tăng vốn; dừng IPO). Điều này sẽ tác động đến sự phục hồi và tăng trưởng của nền kinh tế, trực tiếp làm giảm nguồn thu ngân sách nhà nước.\r\n\r\nKhông những thế, một số tập đoàn, doanh nghiệp bất động sản phải tinh giản tối đa bộ máy, giảm lực lượng lao động. Thậm chí có tập đoàn giảm đến 50% lực lượng lao động tác động đến vấn đề an sinh xã hội hoặc phải giảm lương tác động đến cuộc sống người lao động.', 'https://image.thanhnien.vn/w2048/Uploaded/2022/kpuozvu/2022_11_07/nha-dat-quan-2-thuthiem-anh-gia-khiem-3-9122.jpg', 1, NULL, 3, NULL, NULL, NULL),
(6, 'Thủ tướng dự triển lãm quốc phòng quốc tế, trưng bày vũ khí, khí tài', NULL, 'Thủ tướng dự triển lãm quốc phòng quốc tế, trưng bày vũ khí, khí tài', 'Sáng 8/12, tại sân bay Gia Lâm, Thủ tướng Phạm Minh Chính và Bộ trưởng Quốc phòng Phan Văn Giang chủ trì khai mạc khai mạc triển lãm quốc phòng quốc tế Việt Nam 2022.\r\n\r\nDự khai mạc có lãnh đạo Quân uỷ Trung ương, Bộ Quốc phòng, đại diện lãnh đạo các ban, bộ, ngành Trung ương, địa phương. Về phía quốc tế có đại diện lãnh đạo Bộ Quốc phòng, chỉ huy quân đội các nước trong khu vực và thế giới.\r\n\r\nThay mặt Chính phủ Việt Nam, Thủ tướng Phạm Minh Chính chào mừng các đại biểu từ 30 quốc gia dự triển lãm.\r\n\r\nVới mục đích đẩy mạnh hội nhập quốc tế, tăng cường đối ngoại quốc phòng, lòng tin giữa Việt Nam và các nước trên thế giới, nâng cao hợp tác công nghiệp quốc phòng, Thủ tướng đánh giá, triển lãm là cơ hội để các nhà hoạch định chính sách, các doanh nghiệp gặp gỡ, trao đổi, phát triển hợp tác hướng tới một thế giới hòa bình, hợp tác và phát triển thịnh vượng.\r\n\r\n\r\nĐại tướng Phan Văn Giang đón Thủ tướng Phạm Minh Chính đến dự triển lãm.\r\nThủ tướng nhấn mạnh, Chính phủ Việt Nam đánh giá cao Bộ Quốc phòng Việt Nam và các đơn vị trong việc tổ chức và tham gia Triển lãm Quốc phòng Quốc tế lần thứ nhất tại Việt Nam.\r\n\r\n“Vượt qua những khó khăn của đại dịch Covid-19, 170 đơn vị, doanh nghiệp công nghiệp quốc phòng, an ninh có công nghệ tiên tiến và uy tín của 30 quốc gia từ khắp các châu lục đã có mặt tại đây, thể hiện tình cảm, sự đoàn kết vì một thế giới tốt đẹp hơn” Thủ tướng Phạm Minh Chính chia sẻ.\r\n\r\nTại triển lãm, các doanh nghiệp quốc phòng trong nước và quốc tế sẽ trưng bày và giới thiệu trang thiết bị quân sự, vũ khí, giải pháp công nghệ cho tất cả các lực lượng hải quân, lục quân, phòng không - không quân, tác chiến không gian mạng, hậu cần, kỹ thuật.\r\n\r\n\r\nThủ tướng Phạm Minh Chính và Bộ trưởng Quốc phòng duyệt đội danh dự QĐND.\r\nThủ tướng nhìn nhận: “Đây là biểu tượng cho lòng tin và mối quan hệ hữu nghị, hợp tác và phát triển; là tình cảm đầy ý nghĩa của bạn bè quốc tế dành cho đất nước, con người và QĐND Việt Nam”.\r\n \r\nBộ trưởng Quốc phòng Phan Văn Giang cho biết, mặc dù tổ chức lần đầu tiên nhưng triển lãm đã thu hút được hơn 170 công ty, doanh nghiệp quốc phòng từ 30 quốc gia trên thế giới và các bộ, ngành Việt Nam cùng hơn 250 đoàn khách quốc tế, trong nước tham dự, trưng bày sản phẩm công nghiệp quốc phòng.\r\n\r\nBộ trưởng hy vọng triển lãm sẽ mang lại cơ hội tốt để các nhà nghiên cứu, sản xuất quốc phòng và các cơ quan, đơn vị, lực lượng vũ trang gặp gỡ, trao đổi và hợp tác thành công.\r\n\r\n\r\nThủ tướng Phạm Minh Chính và các đại biểu bấm nút khai mạc triển lãm.\r\nNgoài nội dung chính, ban tổ chức cũng bố trí khu vực không gian văn hóa, ẩm thực, khu vực “Kinh tế - quốc phòng trong kỷ nguyên công nghệ số” để trưng bày các mốc son tiêu biểu của QĐND Việt Nam trong từng giai đoạn lịch sử. \r\n\r\n\r\n\r\nThủ tướng Phạm Minh Chính tham quan triển lãm.\r\n\r\n\r\nBộ trưởng Quốc phòng giới thiệu với Thủ tướng về vũ khí, khí tài tại triển lãm.', 'https://static-images.vnncdn.net/files/publish/2022/12/8/don-thu-tuong-1205-303.jpg', NULL, NULL, 1, NULL, NULL, NULL),
(9, 'Viva Land \'biến mất\' khỏi dự án One Central HCM đầy bí ẩn', NULL, 'Ngay sau khi bà Trương Mỹ Lan, Chủ tịch Tập đoàn Vạn Thịnh Phát bị bắt thì cái tên Viva Land trước đây được giới thiệu là đơn vị phát triển siêu dự án One Central HCM ở tứ giác Bến Thành đã biến mất khỏi dự án này một cách đầy bí ẩn.', 'Ngày 1.11, quan sát thực tế tại dự án One Central HCM đối diện chợ Bến Thành (quận 1, TP.HCM) chúng tôi nhận thấy thông tin Công ty Viva Land (nằm trong hệ sinh thái Tập đoàn Vạn Thịnh Phát - NV) trên hàng rào dự án đã được tháo xuống và hiện chưa xuất hiện một cái tên nào khác. Thay vào các tấm biển trước đây xuất hiện tên và các thông tin liên quan của Viva Land là hình ảnh các dự án bất động sản của một doanh nghiệp khác.\r\n\r\nTrước đó, ngày 28.10 một nhóm gồm 3 người dùng decal dán lại tất cả các thông tin liên quan đến Công ty Viva Land có xuất hiện trên hàng rào của dự án.', 'https://image.thanhnien.vn/w2048/Uploaded/2022/kpuozvu/2022_11_02/img-6047-5676.jpg', 1, NULL, 3, NULL, NULL, NULL),
(10, 'Cuộc họp của Fed, Suy thoái ở Eurozone - Chuyện thị trường 31/1', NULL, 'Cuộc họp của Fed, Suy thoái ở Eurozone - Chuyện thị trường 31/1', 'Theo Geoffrey Smith \r\n\r\nInvesting.com -- Cục Dự trữ Liên bang bắt đầu cuộc họp chính sách kéo dài hai ngày trong bối cảnh dữ liệu kinh tế suy yếu - mặc dù Quỹ Tiền tệ Quốc tế đã nâng dự báo của mình cho năm nay một chút. Khu vực đồng tiền chung châu Âu dường như đã tránh được nỗi lo suy thoái trong nửa cuối năm ngoái, nhưng lại đang mất đà vào cuối năm. ExxonMobil đạt mức lợi nhuận kỷ lục; tiếp tục sẽ có nhiều báo cáo thu nhập từ những công ty như McDonald\'s, Caterpillar và Advanced Micro Devices. Đây là những gì bạn cần biết trên thị trường tài chính vào Thứ Ba, ngày 31 tháng Giêng.\r\n\r\n1. Cuộc họp của Fed sắp bắt đầu; IMF nâng triển vọng tăng trưởng\r\n\r\nCục Dự trữ Liên bang bắt đầu cuộc họp kéo dài hai ngày dự kiến sẽ kết thúc với phạm vi mục tiêu cho các quỹ liên bang được tăng thêm 25 điểm cơ bản lên 4,50-4,75%. Đây là cuộc họp thứ hai liên tiếp mà ngân hàng trung ương quyết định làm chậm tốc độ thắt chặt chính sách của mình để đối phó với dữ liệu kinh tế đã trở nên tồi tệ hơn trong những tháng gần đây.\r\n\r\nQua đêm, Quỹ Tiền tệ Quốc tế (IMF) cho biết họ dự kiến ​​tăng trưởng của Hoa Kỳ sẽ chậm lại 1,4% trong năm nay và 1,0% dưới tác động của lãi suất cao hơn của Fed. Tuy nhiên, họ đã nâng dự báo tăng trưởng toàn cầu trong năm nay thêm 0,2% lên 2,9%, phản ánh động lực mạnh mẽ hơn ở Trung Quốc và Ấn Độ.\r\n\r\n2. Khu vực đồng tiền chung châu Âu tránh được suy thoái, nhưng đà tăng trưởng bị đình trệ\r\n\r\nXét cho cùng, nền kinh tế Khu vực đồng tiền chung châu Âu dường như đã tránh được suy thoái trong nửa cuối năm ngoái. Tăng trưởng trong quý IV là 0,1%, đảo ngược đà giảm của ba tháng trước đó.\r\n\r\nTuy nhiên, đã có bằng chứng cho thấy động lực kinh tế đang chững lại. Cả Doanh số bán lẻ của Đức và Chi tiêu của người tiêu dùng Pháp đều thấp hơn nhiều so với kỳ vọng vào tháng 12, trong khi Khảo sát cho vay ngân hàng của Ngân hàng Trung ương Châu Âu trong quý vừa qua cho thấy nhu cầu tín dụng giảm mạnh, đặc biệt là từ các hộ gia đình. Ở Anh cũng vậy, hoạt động cho vay chậm lại trong tháng 12.\r\n\r\nGiống như ở Hoa Kỳ, yếu tố hỗ trợ chính ở châu Âu vẫn là thị trường lao động, vốn vẫn có khả năng phục hồi. Số lượng thất nghiệp của Đức đã giảm 15.000 – nhiều hơn dự kiến – vào tháng Giêng.\r\n\r\nCác số liệu được đưa ra hai ngày trước khi Ngân hàng Trung ương Châu Âu và Ngân hàng Anh đưa ra quyết định chính sách tiền tệ mới nhất của họ. Các thị trường vẫn mong đợi mức tăng nửa điểm từ cả hai tổ chức, nhưng các nhà phân tích cho biết những con số mới nhất ít nhất đã để ngỏ cho nhiều viễn cảnh về lộ trình lãi suất trong tương lai.\r\n\r\n3. Cổ phiếu chuẩn bị cho một ngày báo cáo thu nhập dày đặc\r\n\r\nĐến 06:10 ET (11:10 GMT), {{8873|hợp đồng tương lai Dow Jones futures}} giảm 128 điểm hay 0,4%, trong khi hợp đồng tương lai S&P 500 giảm 0,5% và hợp đồng tương lai Nasdaq 100 đã giảm 0,7%.\r\n\r\nMùa báo cáo thu nhập sẽ nhộn nhịp trở lại vào Thứ Ba, với Pfizer (NYSE:PFE), United Parcel Service (NYSE: UPS), McDonald\'s (NYSE:MCD), Caterpillar (NYSE:CAT), { {erl-239||General Motors}} (NYSE:GM) và ExxonMobil (NYSE:XOM) đều sẵn sàng báo cáo sớm. \r\n\r\nSau tiếng chuông mở cửa sẽ có báo cáo từ Advanced Micro Devices (NASDAQ:AMD), Amgen (NASDAQ:AMGN), Stryker (NYSE:SYK), {{erl-8175| |Chubb}} (NYSE:CB), Mondelez (NASDAQ:MDLZ) và Electronic Arts (NASDAQ:EA). \r\n\r\nCác cổ phiếu khác có thể sẽ được chú ý hôm nay sẽ gồm Johnson & Johnson (NYSE:JNJ) và Huawei.\r\n\r\n4. Adani gần như ĐÃ thu hút đủ giá thầu \r\n\r\nĐợt bán cổ phiếu trị giá 2,4 tỷ USD của ông trùm Ấn Độ, Gautam Adani, vừa thu hút đủ số lượng người đặt mua để đăng ký mua hết vào cuối phiên giao dịch tại Mumbai hôm thứ Ba.\r\n\r\nCổ phiếu Adani Enterprises (NS:ADEL) tăng ngày thứ hai liên tiếp vào thứ Ba, phục hồi 2,8%. \r\n\r\nInternational Holding Company (ADX:IHC) của Các Tiểu vương quốc Ả Rập Thống nhất (ADX:IHC) cho biết vào thứ Hai rằng họ sẽ chiếm khoảng 16% số tiền chào bán, trong khi Jupiter Asset Management, BNP Paribas (EPA:BNPP), Société Générale (EPA:SOGN) và Goldman Sachs (NYSE:GS) cũng được Financial Times đưa tin là những nhà đầu tư mấu chốt.\r\n\r\n5. Exxon ghi nhận lợi nhuận kỷ lục; không có thay đổi nào trong chính sách của OPEC+\r\n\r\nExxonMobil đã phá kỷ lục của chính mình với khoản lãi 59 tỷ đô la vào năm 2022, do giá dầu và khí đốt tăng vọt sau cuộc xâm lược của Nga vào Ukraine. Công ty cho biết thu nhập trên mỗi cổ phiếu trong quý IV cao hơn dự báo ở mức 3,40 đô la, trong khi sản lượng tăng lên 3,822 triệu thùng dầu quy đổi mỗi ngày.\r\n\r\nGiá dầu ổn định qua đêm sau khi hoạt động chốt lời cuối tháng đã loại bỏ một số vị thế mua yếu hơn đã tích lũy trong tháng này. OPEC dự kiến vẫn sẽ không bổ sung sản lượng khi các bộ trưởng của họ họp để xác định chính sách sản lượng vào thứ Tư.\r\n\r\nViện Dầu mỏ Hoa Kỳ báo cáo dữ liệu hàng tồn kho lúc 16:30 ET như thường lệ.', 'https://i-invdn-com.investing.com/news/moved_LYNXNPEI48074_L.jpg', NULL, NULL, 3, NULL, NULL, NULL),
(11, 'Lính Ukraine lo ngại trước khả năng thích ứng của quân đội Nga', NULL, 'Ukraine lo ngại trước khả năng thích ứng của quân đội Nga', 'Tại một chốt chiến đấu ở Donbass, hai người lính Ukraine vội vã lao vào, khuôn mặt vẫn còn đỏ ửng lên vì căng thẳng. Họ vừa lái xe trở về từ chiến tuyến và lập tức báo cáo với chỉ huy lữ đoàn về tình hình của lực lượng Nga tại tiền tuyến.\r\n\r\nNhìn vào tấm bản đồ lớn tại sở chỉ huy lữ đoàn, họ chỉ ra những vị trí mà lực lượng Nga đang tiến công, hướng về một con đường quan trọng.\r\n\r\n\"Họ cách chúng tôi khoảng 400 m, bên kia cánh đồng ở ngay đây. Chúng tôi vẫn cố gắng cầm cự, nhưng mọi chuyện đang trở nên khó khăn hơn\", trung sĩ Denys Kalchuk từ tiểu đoàn tình nguyện Dnipro-1 cho biết.', 'https://i1-vnexpress.vnecdn.net/2023/02/01/AP23009808956227-1968-1675225623.jpg?w=680&h=0&q=100&dpr=1&fit=crop&s=5_JsbSnz62-J-uGdMTH2Mg', NULL, NULL, 1, NULL, NULL, NULL),
(12, 'Hải cảnh Trung Quốc xua đuổi tàu Nhật gần đảo tranh chấp', NULL, 'Hải cảnh Trung Quốc xua đuổi tàu Nhật gần đảo tranh chấp', 'Hải cảnh Trung Quốc tuyên bố xua đuổi 5 tàu Nhật Bản hiện diện ở vùng biển quanh quần đảo Senkaku/Điếu Ngư do Tokyo kiểm soát.\r\n\r\nPhát ngôn viên Hải cảnh Trung Quốc Gan Yu hôm nay cáo buộc tàu Shinsei Maru và 4 tàu khác của Nhật Bản \"xâm phạm trái phép\" vùng biển quanh quần đảo Senkaku/Điếu Ngư, thêm rằng các tàu công vụ của Bắc Kinh đã xua đuổi nhóm tàu này khỏi khu vực.', 'https://i1-vnexpress.vnecdn.net/2023/01/30/ta-u-ha-i-ca-nh-trung-quo-c-16-7157-4277-1675084746.jpg?w=680&h=0&q=100&dpr=1&fit=crop&s=i4qSi46SQfHwtb-2sFh35A', NULL, NULL, 1, NULL, '2023-02-01 15:02:11', NULL),
(13, 'Người Việt chật vật trong giá rét kỷ lục ở Nhật, Hàn', NULL, 'Nhiều gia đình Việt ở Hàn Quốc, Nhật Bản khổ sở khi đường ống nước đóng băng, chi phí sưởi ấm tăng vọt giữa đợt lạnh giá kỷ lục tấn công Đông Bắc Á.', 'Nhiều gia đình Việt ở Hàn Quốc, Nhật Bản khổ sở khi đường ống nước đóng băng, chi phí sưởi ấm tăng vọt giữa đợt lạnh giá kỷ lục tấn công Đông Bắc Á.\r\n\r\nCác nước Đông Bắc Á, trong đó có Nhật Bản và Hàn Quốc, từ tuần trước hứng chịu đợt giá rét kỷ lục. Nhiệt độ xuống thấp nhất trong vòng một thập kỷ, kết hợp với bão tuyết, gây rối loạn giao thông và ảnh hưởng lớn đến cuộc sống người dân.\r\n\r\n\"Bão tuyết khiến nhiều chuyến bay bị hủy, xe cộ luôn phải bật đèn và di chuyển ở tốc độ rất chậm, khi tầm nhìn chỉ dưới một mét\", Nguyễn Thị Bích Ngân, phiên dịch viên 28 tuổi sống tại thành phố Sapporo, tỉnh cực bắc Hokkaido của Nhật Bản, nói với VnExpress.\r\n\r\nGiao thông trên khắp nước Nhật rơi vào hỗn loạn tuần trước, khi thời tiết lạnh giá khắc nghiệt tấn công, khiến 46 trên 47 tỉnh thành ghi nhận mức nhiệt âm độ vào ngày 25/1. Không chỉ ngành hàng không bị ảnh hưởng, nhiều chuyến tàu cao tốc Shinkansen và tàu điện địa phương cũng bị gián đoạn.\r\n\r\nĐợt giá rét trở nên tồi tệ hơn vì gió lớn. Cơ quan khí tượng ở Rausu, Hokkaido, có lúc ghi nhận vận tốc gió hơn 130 km/h. \"Rất lạnh, tuyết kèm gió lớn hình thành bão tuyết, nhiệt độ luôn dưới -10 độ C\", chị Ngân nói.\r\n\r\nTại tỉnh Nara, phía nam Nhật Bản, Quỳnh, nhân viên văn phòng 32 tuổi, cho biết khu vực cô ở thường không hay có tuyết vào mùa đông, nhưng đợt lạnh bất thường năm nay khiến tuyết rơi tới hai tuần, khiến mọi hoạt động trở nên khó khăn hơn.\r\n\r\n\"Tôi thường đi làm sớm bằng xe đạp, nhưng mặt đường đóng băng rất trơn trượt, các phương tiện đều phải đi chậm\", Quỳnh, người đã làm việc ở Nara 8 năm, chia sẻ.', 'https://i1-vnexpress.vnecdn.net/2023/02/01/afp-com-20230126-partners-053-8121-1578-1675223011.jpg?w=680&h=0&q=100&dpr=1&fit=crop&s=0EevDMIjq0bP4kPwJm9mvA', NULL, NULL, 10, NULL, '2023-02-01 15:03:28', NULL),
(14, 'Mối lo thúc đẩy phương Tây chuyển xe tăng cho Ukraine', NULL, 'ằng sau quyết định chuyển hàng loạt xe tăng chủ lực cho Ukraine là nỗi lo của nhiều nước phương Tây rằng thời gian có thể đang đứng về phía Nga.', 'Nỗi lo ngại đó cho thấy cơ hội phản công dành cho Ukraine không kéo dài mãi mãi và nước này cần sớm nhận được những vũ khí mạnh hơn của phương Tây như xe tăng chiến đấu chủ lực, thiết giáp và hệ thống phòng không hiện đại, để phát huy những thành quả đã đạt được vài tháng trước.\r\n\r\nĐiều này trái ngược với tâm lý lạc quan vào mùa xuân năm ngoái, khi quân đội Nga hứng chịu nhiều thất bại liên tiếp và phải rút quân khỏi miền bắc Kiev. Chiến lược \"đánh nhanh thắng nhanh\" của Nga sụp đổ khiến các nước phương Tây thời điểm đó đã hy vọng rằng cuộc chiến càng kéo dài, Ukraine càng có nhiều cơ hội thắng thế.\r\n\r\nCác binh sĩ Ukraine tại một vị trí gần thành phố Bakhmut, miền đông Ukraine. Ảnh: Wall Street Journal.\r\nCác binh sĩ Ukraine tại một vị trí gần thành phố Bakhmut, miền đông Ukraine. Ảnh: Wall Street Journal.\r\n\r\nCác quan chức phương Tây cho rằng nếu châu Âu và Washington giữ vững tinh thần và duy trì mặt trận đoàn kết sau một mùa đông khó khăn, khó khăn về kinh tế và loạt bước lùi trên chiến trường có thể buộc Nga phải tìm đường lui khỏi cuộc xung đột, thậm chí quyết định ngồi vào bàn đàm phán.\r\n\r\nMột số biện pháp trừng phạt cứng rắn từ phương Tây, như lệnh cấm vận dầu mỏ và áp trần giá dầu Nga, giờ đây mới bắt đầu có hiệu lực. Nền kinh tế Nga được dự đoán phải chịu một cuộc suy thoái nghiêm trọng trong năm nay và có thể tiếp tục suy giảm trong nhiều năm tới.\r\n\r\nNhưng khi cuộc xung đột Nga - Ukraine sắp kéo dài trong một năm, niềm tin đó ngày càng lung lay. Có rất ít dấu hiệu cho thấy các biện pháp trừng phạt khiến quân đội Nga phải ngừng hoạt động hoặc gây áp lực kinh tế đủ lớn lên Điện Kremlin đến mức làm mất đi ủng hộ ở trong nước đối với chiến dịch quân sự tại Ukraine.\r\n\r\nNga chưa thể hiện bất cứ dấu hiệu nào cho thấy họ muốn sớm chấm dứt chiến sự. Thay vào đó, Điện Kremlin dường như đang tìm cách phát động một chiến dịch tấn công mới trong những tháng tới, với gần 300.000 lính dự bị được huấn luyện tốt hơn sắp được tung ra tiền tuyến, sẵn sàng cho những trận chiến khốc liệt. Những bước tiến gần đây của Nga quanh thành phố Bakhmut, vùng Donbass, miền đông Ukraine, là minh chứng rõ nhất cho điều này.\r\n\r\nĐiều này khiến một số nước phương Tây lo ngại Moskva có thể giành lại lợi thế trong một cuộc chiến tiêu hao kéo dài. Vì thế, quan điểm chủ đạo hiện nay ở Mỹ và châu Âu là phải cung cấp cho Ukraine những vũ khí tiên tiến hơn, nhằm giúp nước này áp đảo hỏa lực Nga và thay đổi cục diện cuộc chiến.\r\n\r\nCác quan chức Anh gần đây tuyên bố mối đe dọa do Nga gây ra có thể gia tăng theo thời gian và rằng cần phải lập tức cung cấp cho Ukraine những trang thiết bị, vũ khí giúp nước này phá vỡ thế bế tắc.\r\n\r\n\"Chúng ta đã có cơ hội đẩy nhanh các nỗ lực nhằm đảm bảo hòa bình lâu dài cho người dân Ukraine. Chúng ta hãy tiếp tục thúc đẩy nó\", Thủ tướng Anh Rishi Sunak hôm 25/1 viết trên Twitter trong thông điệp hoan nghênh quyết định của Đức và Mỹ cung cấp xe tăng chiến đấu hạng nặng cho Ukraine.\r\n\r\nCác quan chức phương Tây cho biết dư luận ở châu Âu và Mỹ vẫn kiên định ủng hộ viện trợ quân sự và tài chính cho Ukraine. Nhưng Tổng thống Putin có thể đặt cược rằng những hỗ trợ như vậy sẽ không thể duy trì qua nhiều năm xung đột và Mỹ sẽ bầu cử tổng thống vào năm 2024. Đây cũng là lý do khiến phương Tây đẩy nhanh các nỗ lực hỗ trợ vũ khí cho Ukraine.\r\n\r\nTheo giới quan sát, thay đổi trong tư duy của phương Tây về đẩy nhanh cung cấp vũ khí hạng nặng cho Ukraine là một bước ngoặt lớn. Vài tháng trước, khi Ukraine phát động một cuộc phản công thành công, giành lại nhiều vùng lãnh thổ, các quan chức phương Tây đã tin rằng Kiev đang có những gì cần thiết để đạt được bước tiến xa hơn nữa.\r\n\r\nKhi đó, một số nước đã kêu gọi các đồng minh phương Tây tăng cường hỗ trợ Ukraine để ngăn cuộc xung đột kéo dài nhiều năm.\r\n\r\n\"Nga vẫn là một quốc gia rộng lớn và có nguồn lực dồi dào hơn về số lượng binh sĩ cũng như khả năng sản xuất vũ khí mà không cần đến các linh kiện nhập từ phương Tây\", Ngoại trưởng Litva Gabrielius Landsbergis, một trong những người đề xuất tăng hỗ trợ Ukraine sớm nhất, nói. \"Chúng ta cho họ càng nhiều thời gian thì họ càng tập trung được nhiều người để tấn công Ukraine\".\r\n\r\nNhưng nhiều nước phương Tây khi đó vẫn thận trọng với quyết định tăng hỗ trợ quân sự cho Ukraine.\r\n\r\nNgay cả khi Thủ tướng Đức Olaf Scholz tuyên bố hồi tuần trước rằng Berlin sẽ chuyển xe tăng Leopard 2 tới Ukraine, ông vẫn lưu ý đến mối lo ngại lớn nhất giữa các đồng minh của Kiev về việc gửi thêm các lô vũ khí, trang thiết bị tiên tiến hơn.\r\n\r\n\"Chúng ta sẽ làm những gì cần thiết và có thể để hỗ trợ Ukraine, nhưng đồng thời vẫn phải ngăn chặn nguy cơ giao tranh leo thang thành một cuộc xung đột giữa Nga và NATO\", ông nói.\r\n\r\nMột số quan chức phương Tây cũng lo ngại về việc liệu việc tăng cường hỗ trợ quân sự cho Ukraine có giúp xung đột kết thúc nhanh hơn hay không.\r\n\r\nCác phương tiện quân sự Nga bị phá hủy nằm trên một cánh đồng hồi đầu tháng này ở khu vực Kharkov. Ảnh: AP.\r\nCác phương tiện quân sự Nga bị phá hủy nằm trên một cánh đồng hồi đầu tháng này ở khu vực Kharkov. Ảnh: AP.\r\n\r\nMặc dù quân đội Ukraine đã thể hiện vượt xa mong đợi về tốc độ làm quen với cách vận hành và tích hợp những thiết bị quân sự phức tạp của phương Tây, không có gì chắc chắn rằng Kiev có thể một lần nữa tiến hành thành công các chiến dịch phản công như họ đã đạt được vào mùa thu năm ngoái. Phương Tây cũng không có nhiều niềm tin rằng Tổng thống Putin sẽ chấp nhận chấm dứt xung đột khi Ukraine chưa khuất phục.\r\n\r\nAnna Wieslander, giám đốc khu vực Bắc Âu tại Hội đồng Đại Tây Dương, tổ chức tư vấn có trụ sở tại Washington, cho hay bà hoài nghi về việc các đồng minh phương Tây đã xây dựng được một chiến lược rõ ràng trước phương án tăng quy mô cung cấp vũ khí để giúp Ukraine đối đầu Nga.\r\n\r\n\"Đây là một giai đoạn rất biến động trong cuộc xung đột, nhưng phản ứng từ các nước phương Tây đến nay chỉ đơn thuần mang tính chiến thuật\", bà nói. \"Chúng ta thiếu một tầm nhìn chung về cách xung đột sẽ kết thúc và những lô xe tăng, tên lửa viện trợ này phù hợp với tầm nhìn đó như thế nào\".', 'https://i1-vnexpress.vnecdn.net/2023/01/30/images-wsj-8575-1675054366.jpg?w=680&h=0&q=100&dpr=1&fit=crop&s=iXpI15o_nZQ79FcV2kM0jg', NULL, NULL, 1, NULL, '2023-02-01 15:04:33', NULL),
(15, '5 phút nhóm cảnh sát Mỹ đánh người đến chết', NULL, '\\5 cảnh sát da màu ở Memphis truy đuổi Tyre Nichols, cùng nhau đánh đập anh này trong 5 phút liên tục, khiến nạn nhân tử vong và làm rúng động nước Mỹ.', 'Giới chức thành phố Memphis, bang Tennessee, miền nam nước Mỹ ngày 27/1 công bố loạt video, ghi lại các diễn biến trong vụ nhóm cảnh sát đánh hội đồng Tyre Nichols, 29 tuổi, vào tối 7/1.\r\n\r\nCác đoạn video có tổng thời lượng hơn một tiếng, nhưng \"trận mưa đòn\" của 5 cảnh sát giáng xuống Nichols chỉ kéo dài trong 5 phút sau một cuộc truy đuổi. Thanh niên da màu này bị thương nghiêm trọng, được nhập viện trong đêm nhưng không qua khỏi do tổn thương vùng thận và ngưng tim. Anh qua đời ba ngày sau đó.\r\n\r\nDựa trên video từ camera gắn trên người các cảnh sát, sự việc bắt đầu từ 20h24 đêm 7/1, khi xe tuần tra của đội chống tội phạm đường phố (SCORPION) thuộc Sở Cảnh sát Memphis chặn xe của Nichols để yêu cầu kiểm tra với cáo buộc anh \"qua đường ẩu\".\r\n\r\nNichols khi đó đang lái xe về nhà mẹ, sau khi chụp ảnh hoàng hôn ở một công viên vùng ngoại ô thành phố Memphis. Anh bị nhóm cảnh sát SCORPION chặn tại ngã tư giữa đường Đông Raines và đường Ross, cách không xa nhà mình.\r\n\r\nKhi bị hai cảnh sát lôi ra khỏi xe, Nichols nói rằng mình \"không làm gì cả\" và phản đối việc họ tìm cách khống chế anh. Một cảnh sát sau đó bắn súng điện vào chân và cố còng tay Nichols, trong khi anh nói: \"Tôi chỉ đang trở về nhà thôi mà\".\r\n\r\nTyre Nichols khi bị cảnh sát chặn xe kiểm tra, khống chế bằng vũ lực vào đêm 7/1. Ảnh: Chính quyền thành phố Memphis.\r\nTyre Nichols khi bị cảnh sát chặn xe kiểm tra, khống chế bằng vũ lực vào đêm 7/1. Ảnh: Chính quyền thành phố Memphis.\r\n\r\nMột sĩ quan ra lệnh cho Nichols nằm úp xuống mặt đất, rồi xịt hơi cay khi anh nói \"Tôi không thở được\". Nichols vùng dậy chạy dọc theo đường Ross và cuộc truy đuổi kéo dài khoảng 7 phút. Mọi việc bắt đầu diễn biến tồi tệ từ đây.\r\n\r\nLúc 20h34, nhóm cảnh sát bắt kịp Nichols trên đường Ross và màn đánh đập bắt đầu. Hình ảnh từ camera gắn trên người một cảnh sát cho thấy Nichols bị ba sĩ quan đè xuống đường. Họ tìm cách khóa tay anh ra sau lưng, xịt hơi cay vào mặt Nichols bất chấp anh nói mình đang hợp tác và đã nằm sấp xuống đường. Nichols sau đó gào thét cầu cứu, gọi mẹ vì anh biết nhà mẹ anh ở gần.\r\n\r\nGiữa lúc giằng co, một cảnh sát bước đến đá thẳng vào phần thân trên Nichols, khi anh đang nghiêng người chống tay tìm cách bò dậy. Cảnh sát này sau đó dùng chân phải đá thêm một cú vào đầu Nichols.\r\n\r\nMột cảnh sát khác tiến lại gần, hét lớn yêu cầu Nichols nằm sấp và đưa tay ra sau lưng, rồi cầm dùi cui đánh anh ít nhất hai phát. Lúc 20h35, cảnh sát thứ tư bước đến đấm vào người Nichols, khi anh đang nằm trên mặt đường, bị ba cảnh sát khác khống chế. Nhóm cảnh sát sau đó dựng Nichols đứng dậy để người này đấm tiếp.\r\n\r\nNhóm cảnh sát đánh đập Nichols trên đường Ross đêm 7/1. Video có hình ảnh bạo lực, độc giả cân nhắc trước khi xem. Video: Chính quyền thành phố Memphis\r\n\r\nVideo trích xuất từ camera an ninh bên đường cho thấy nhóm cảnh sát thay phiên nhau đấm Nichols 6 lần, trong đó ít nhất hai cú nhắm vào vùng đầu. Người đàn ông 29 tuổi khi đó không còn đứng vững.\r\n\r\nĐến 20h36, một cảnh sát khác chạy đến đá vào sườn Nichols. Đây là cú đá thứ ba mà anh phải hứng chịu. Màn đánh đập kết thúc vào khoảng 20h38, sau khi nạn nhân hứng chịu khoảng 9 cú đánh mạnh vào cơ thể, trong đó có nhiều cú vào các yếu huyệt, chỉ trong 5 phút.\r\n\r\nCảnh sát sau đó còng tay Nichols sau lưng, đặt anh nằm dựa vào một xe tuần tra rồi bỏ mặc nạn nhân hơn 20 phút mà không có bất cứ động thái sơ cứu nào. Họ nhiều lần chiếu đèn về phía anh nhưng không kiểm tra tình trạng sức khỏe nạn nhân, tiếp tục trao đổi với nhau về vụ bắt người \"thành công\". Hai cảnh sát còn có cử chỉ ăn mừng.\r\n\r\nĐến 20h41, hai nhân viên khẩn cấp được triển khai đến hiện trường, song họ cũng không sơ cứu cho Nichols mà chỉ hỏi anh đã dùng \"chất kích thích gì\". Video hiện trường cho thấy nhóm cảnh sát cáo buộc Nichols phê thuốc và có thể đã vứt ma túy khi bỏ chạy, mặc dù báo cáo từ bệnh viện thời gian qua không cho thấy anh dương tính với chất cấm.\r\n\r\nVideo kết thúc vào lúc 21h02, khi xe cấp cứu đến hiện trường và đưa Nichols tới bệnh viện, nơi anh trút hơi thở cuối cùng.\r\n\r\nNhóm cảnh sát đánh đập Nichols tàn nhẫn đến mức CNN đã đăng bài viết hướng dẫn độc giả liên hệ bác sĩ hoặc chuyên gia tâm lý trước khi xem hoặc nếu cảm thấy khủng hoảng sau khi xem, khuyến cáo mọi người không xem video cùng nhau để tránh hiệu ứng tâm lý tiêu cực và chuẩn bị tinh thần để trấn an con cái.\r\n\r\nHình ảnh nhóm cảnh sát đánh Tyre Nichols ở góc đường gần nhà mẹ anh ta vào đêm 7/1. Ảnh: Chính quyền thành phố Memphis.\r\nHình ảnh nhóm cảnh sát thay phiên nhau đánh Tyre Nichols ở góc đường đêm 7/1. Ảnh: Chính quyền thành phố Memphis.\r\n\r\nGiới chức thành phố Memphis cho biết 5 cảnh sát liên quan sự việc, tất cả đều là người da màu, đã bị sa thải sau khi cuộc điều tra nội bộ cho thấy họ đã \"vi phạm nhiều chính sách, trong đó có sử dụng vũ lực quá mức\". Họ đối mặt với 7 cáo buộc, trong đó có tội giết người, hành hung, bắt cóc và hành xử sai trái khi thực thi công vụ. Họ sẽ phải ra tòa điều trần vào ngày 17/2.\r\n\r\nChủ tịch Hội đồng Thành phố Martavius Jones đã bật khóc khi trả lời CNN về các video ghi lại diễn biến sự việc. Ông nhấn mạnh cách nhóm cảnh sát hành xử rõ ràng không đúng quy trình đối với một cuộc kiểm tra phương tiện giao thông để ngăn chặn tội phạm đường phố.\r\n\r\nTổng thống Joe Biden chia sẻ ông \"vô cùng phẫn nộ và đau đớn khi xem lại vụ đánh đập dẫn đến cái chết của Tyre Nichols\". Ông nói mọi người dân đều có quyền phẫn nộ khi chứng kiến những hình ảnh kinh hoàng này.\r\n\r\nSự việc được coi là lời cảnh tỉnh về tình trạng sử dụng bạo lực có hệ thống trong lực lượng cảnh sát Mỹ, đồng thời gợi lại trường hợp của người đàn ông da màu George Floyd bị cảnh sát ghì chết năm 2020. Cái chết của Floyd sau đó thổi bùng các cuộc biểu tình khắp nước Mỹ và lan sang cả các quốc gia khác trên thế giới.\r\n\r\nLần này, biểu tình cũng bùng phát ở hơn 10 thành phố trên khắp nước Mỹ trong hai ngày cuối tuần, đòi công lý cho Nichols và phản đối bạo lực cảnh sát. Sở Cảnh sát Memphis tuyên bố giải tán đội SCORPION để xoa dịu nỗi bức xúc của dư luận.\r\n\r\nNhà Trắng đã yêu cầu điều tra nhanh chóng, đầy đủ và minh bạch về sự việc, đồng thời kêu gọi người dân biểu tình ôn hòa. Ông Biden cũng thông báo cho thị trưởng các thành phố về biện pháp hỗ trợ của chính quyền liên bang trong trường hợp xảy ra biểu tình bạo lực.', 'https://i1-vnexpress.vnecdn.net/2023/01/30/Ca-nh-sa-t-My-da-nh-ngu-o-i-2-2904-1675054136.jpg?w=680&h=0&q=100&dpr=1&fit=crop&s=4c8Rs17vK7Z9Tfi-4rd22Q', NULL, NULL, 8, NULL, '2023-02-01 15:06:45', NULL),
(16, 'Tổ chức nhân quyền tố cáo Ukraine sử dụng mìn bướm', NULL, 'Tổ chức Giám sát Nhân quyền cáo buộc Ukraine rải mìn bướm chống bộ binh để ngăn các lực lượng Nga tiến quân, khiến gần 50 dân thường bị thương.', '\"Các lực lượng Ukraine dường như đã rải nhiều mìn\" quanh thành phố Izyum ở vùng đông bắc, chuyên gia vũ khí Steve Goose của Tổ chức Giám sát Nhân quyền (HRW), trụ sở Mỹ, nói hôm nay. Loại mìn sử dụng là mìn chống bộ binh PFM, còn gọi là mìn bướm, được rải bằng rocket.\r\n\r\nSau khi mở chiến dịch quân sự ở Ukraine hồi tháng 2/2022, các lực lượng Nga đã kiểm soát Izyum vào tháng 4. Ukraine tháng 9 mở đợt phản công và giành lại thành phố.\r\n\r\nHRW cho biết các nhà nghiên cứu trên thực địa của tổ chức đã thấy bằng chứng rocket phóng mìn được sử dụng cùng dấu vết các quả mìn ở Izyum. Họ cũng đã trao đổi với các nhân chứng, những người nhìn thấy mìn, biết ai đó bị thương hoặc được cảnh báo về loại vũ khí này.\r\n\r\n\"Các nhân viên y tế nói họ đã điều trị cho gần 50 dân thường, trong đó có ít nhất 5 trẻ em, dường như bị thương vì PFM\", theo HRW. \"Khoảng nửa số ca liên quan phải cắt bỏ bàn chân hoặc cẳng chân, những vị trí thương tích thường thấy do PFM gây ra\".\r\n\r\nMột quả mìn PFM-1 trong trạng thái triển khai. Ảnh: Interfax Ukraine.\r\nMột quả mìn PFM-1 trong trạng thái triển khai. Ảnh: Interfax Ukraine.\r\n\r\nUkraine là một trong những quốc gia tham gia Công ước cấm mìn sát thương cá nhân năm 1997 và đến năm 2020 Kiev đã tiêu hủy gần hết lượng mìn trong kho từ thời Liên Xô. Trong khi đó, một số quốc gia như Mỹ, Nga, Trung Quốc không tham gia công ước này. Năm 2021, Ukraine báo cáo Liên Hợp Quốc rằng họ còn hơn 3,3 triệu PFM trong các hệ thống rocket chưa bị tiêu hủy.\r\n\r\nHRW cho biết họ đã gửi các bằng chứng thu thập được cho giới chức Ukraine vào tháng 11. Thứ trưởng Quốc phòng Ukraine Oleksandr Polishchuk phản hồi nhưng không đề cập trực tiếp cáo buộc.\r\n\r\n\"Ukraine là thành viên đáng tin cậy của cộng đồng quốc tế và cam kết đầy đủ với các nghĩa vụ quốc tế liên quan sử dụng mìn. Điều này bao gồm không sử dụng mìn chống bộ binh trong chiến tranh\", ông Polishchuk nói, theo HRW.\r\n\r\nBộ Quốc phòng Ukraine chưa bình luận về thông tin từ HRW. Cơ quan này từng nhấn mạnh Kiev tuân thủ nghĩa vụ trong công ước và không bình luận về các loại vũ khí đã được sử dụng \"cho đến khi xung đột với Nga kết thúc và Ukraine khôi phục chủ quyền, toàn vẹn lãnh thổ\".', 'https://i1-vnexpress.vnecdn.net/2023/01/31/PFM-1-5581-1660892680-5656-1675169655.jpg?w=680&h=0&q=100&dpr=1&fit=crop&s=xUhdmM832mxpgqOf9xfgIw', NULL, NULL, 1, NULL, '2023-02-01 15:08:24', NULL),
(18, 'FBI khám nhà ông Biden', NULL, 'FBI khám xét nhà riêng của ông Joe Biden ở bang Delaware khi đang điều tra vụ ông giữ tài liệu mật từ thời làm phó tổng thống.', 'FBI khám xét nhà riêng của ông Joe Biden ở bang Delaware khi đang điều tra vụ ông giữ tài liệu mật từ thời làm phó tổng thống.', 'https://i1-vnexpress.vnecdn.net/2023/02/01/337K7K4-highres-9631-1675263355.jpg?w=680&h=0&q=100&dpr=1&fit=crop&s=6u3KJ1KgBuuUlxB30ibKsg', NULL, NULL, 10, NULL, '2023-02-01 15:10:48', NULL),
(19, 'Hải cảnh Trung Quốc xua đuổi tàu Nhật gần đảo tranh chấp', NULL, 'FBI khám xét nhà riêng của ông Joe Biden ở bang Delaware khi đang điều tra vụ ông giữ tài liệu mật từ thời làm phó tổng thống.', 'FBI khám xét nhà riêng của ông Joe Biden ở bang Delaware khi đang điều tra vụ ông giữ tài liệu mật từ thời làm phó tổng thống.', 'https://i-invdn-com.investing.com/news/moved_LYNXNPEI48074_L.jpg', NULL, NULL, 10, NULL, '2023-02-01 15:11:29', NULL),
(20, 'Bitcoin NFT và tranh cãi về vai trò sử dụng của mạng lưới Bitcoin', NULL, 'Bitcoin NFT và tranh cãi về vai trò sử dụng của mạng lưới Bitcoin', 'Dẫu là blockchain ra đời đầu tiên trên thế giới, mang đến những phát kiến đột phá, Bitcoin ngày nay đã “chậm chân” hơn trong mảng DeFi và NFT khi so với những blockchain ra đời sau này như Ethereum, Solana, Near, Avalanche,…\r\n\r\nCộng đồng đang xem Bitcoin là vàng kỹ thuật số, là tài sản tích lũy và đầu tư nhiều hơn là một blockchain nền tảng được dùng cho các giao dịch vi mô. Nhưng có khi nào bạn tự hỏi:', 'https://coin68.com/wp-content/uploads/2023/01/Bitcoin-NFT-Ordinals.jpg', NULL, NULL, 2, NULL, '2023-02-01 15:13:36', NULL),
(21, 'OOP là gì? 4 đặc tính cơ bản của OOP', NULL, 'OOP là gì? 4 đặc tính cơ bản của OOP', 'OOP (viết tắt của Object Oriented Programming) – lập trình hướng đối tượng là một phương pháp lập trình dựa trên khái niệm về lớp và đối tượng. OOP tập trung vào các đối tượng thao tác hơn là logic để thao tác chúng, giúp code dễ quản lý, tái sử dụng được và dễ bảo trì.\r\n\r\nBất kỳ developer nào muốn đi trên con đường lập trình cũng đều phải biết về OOP.\r\n\r\nĐọc bài viết này để biết:\r\n\r\nOOP là gì? Đối tượng và lớp trong OOP là gì?\r\nCác đặc tính cơ bản của OOP là gì?\r\nCác ngôn ngữ OOP phổ biến và tài liệu tham khảo\r\nTham khảo việc làm OOP Developer trên ITviec.\r\n\r\nLập trình hướng đối tượng (OOP) là gì? OOP được dùng để làm gì?\r\nOOP (viết tắt của Object Oriented Programming) – lập trình hướng đối tượng là một phương pháp lập trình dựa trên khái niệm về lớp và đối tượng. OOP tập trung vào các đối tượng thao tác hơn là logic để thao tác chúng.\r\n\r\nOOP là nền tảng của các design pattern hiện nay.\r\n\r\nĐọc thêm: Design pattern là gì? Vì sao nên học design pattern?\r\n\r\nMục tiêu của OOP là tối ưu việc quản lý source code, giúp tăng khả năng tái sử dụng và quan trọng hơn hết là giúp tóm gọn các thủ tục đã biết trước tính chất thông qua việc sử dụng các đối tượng.\r\n\r\nĐối tượng (Object) và Lớp (Class) trong OOP là gì?\r\nĐối tượng (Object)\r\nĐối tượng trong OOP bao gồm 2 thành phần chính:\r\n\r\nThuộc tính (Attribute): là những thông tin, đặc điểm của đối tượng\r\nPhương thức (Method): là những hành vi mà đối tượng có thể thực hiện\r\nĐể dễ hình dung, ta có một ví dụ thực tế về đối tượng là smartphone. Đối tượng này sẽ có:\r\n\r\nThuộc tính: màu sắc, bộ nhớ, hệ điều hành…\r\nPhương thức: gọi điện, chụp ảnh, nhắn tin, ghi âm…\r\nLớp (Class)\r\nLớp là sự trừu tượng hóa của đối tượng. Những đối tượng có những đặc tính tương tự nhau sẽ được tập hợp thành một lớp. Lớp cũng sẽ bao gồm 2 thông tin là thuộc tính và phương thức.\r\n\r\nMột đối tượng sẽ được xem là một thực thể của lớp.\r\n\r\nTiếp nối ví dụ ở phần đối tượng (object) phía trên, ta có lớp (class) smartphone gồm 2 thành phần:\r\n\r\nThuộc tính: màu sắc, bộ nhớ, hệ điều hành…\r\nPhương thức: gọi điện, chụp ảnh, nhắn tin, ghi âm…\r\nCác đối tượng của lớp này có thể là: iPhone, Samsung, Oppo, Huawei…\r\n\r\nƯu điểm của lập trình hướng đối tượng OOP\r\nOOP mô hình hóa những thứ phức tạp dưới dạng cấu trúc đơn giản.\r\nCode OOP có thể sử dụng lại, giúp tiết kiệm tài nguyên.\r\nGiúp sửa lỗi dễ dàng hơn. So với việc tìm lỗi ở nhiều vị trí trong code thì tìm lỗi trong các lớp (được cấu trúc từ trước) đơn giản và ít mất thời gian hơn.\r\nCó tính bảo mật cao, bảo vệ thông tin thông qua đóng gói.\r\nDễ mở rộng dự án.\r\n4 đặc tính cơ bản của OOP\r\nTính đóng gói (Encapsulation)\r\n\r\nTính đóng gói cho phép che giấu thông tin và những tính chất xử lý bên trong của đối tượng. Các đối tượng khác không thể tác động trực tiếp đến dữ liệu bên trong và làm thay đổi trạng thái của đối tượng mà bắt buộc phải thông qua các phương thức công khai do đối tượng đó cung cấp.\r\n\r\nTính chất này giúp tăng tính bảo mật cho đối tượng và tránh tình trạng dữ liệu bị hư hỏng ngoài ý muốn.\r\n\r\nTính kế thừa (Inheritance)\r\nĐây là tính chất được sử dụng khá nhiều. Tính kế thừa cho phép xây dựng một lớp mới (lớp Con), kế thừa và tái sử dụng các thuộc tính, phương thức dựa trên lớp cũ (lớp Cha) đã có trước đó. \r\n\r\nCác lớp Con kế thừa toàn bộ thành phần của lớp Cha và không cần phải định nghĩa lại. Lớp Con có thể mở rộng các thành phần kế thừa hoặc bổ sung những thành phần mới.\r\n\r\nVí dụ: \r\n\r\nLớp Cha là smartphone, có các thuộc tính: màu sắc, bộ nhớ, hệ điều hành…\r\nCác lớp Con là iPhone, Samsung, Oppo cũng có các thuộc tính: màu sắc, bộ nhớ, hệ điều hành…\r\nTính đa hình (Polymorphism)\r\nTính đa hình trong lập trình OOP cho phép các đối tượng khác nhau thực thi chức năng giống nhau theo những cách khác nhau.\r\n\r\nVí dụ: \r\n\r\nỞ lớp smartphone, mỗi một dòng máy đều kế thừa các thành phần của lớp cha nhưng iPhone chạy trên hệ điều hành iOS, còn Samsung lại chạy trên hệ điều hành Android.\r\nChó và mèo cùng nghe mệnh lệnh “kêu đi” từ người chủ. Chó sẽ “gâu gâu” còn mèo lại kêu “meo meo”.\r\n\r\nTính trừu tượng (Abstraction)\r\nTính trừu tượng giúp loại bỏ những thứ phức tạp, không cần thiết của đối tượng và chỉ tập trung vào những gì cốt lõi, quan trọng.\r\n\r\nVí dụ: Quản lý nhân viên thì chỉ cần quan tâm đến những thông tin như:\r\n\r\nHọ tên\r\nNgày sinh\r\nGiới tính\r\n…\r\nChứ không cần phải quản lý thêm thông tin về:\r\n\r\nChiều cao\r\nCân nặng\r\nSở thích\r\nMàu da\r\n…\r\nNhững ngôn ngữ OOP phổ biến nhất\r\nJava\r\nJava là ngôn ngữ lập trình hướng đối tượng (OOP), đa mục đích và độc lập nền tảng. Thay vì biên dịch mã nguồn thành mã máy trên nền tảng cụ thể, code Java được biên dịch thành bytecode – một định dạng trung gian. Bytecode sau đó sẽ được chạy bởi môi trường thực thi (runtime environment).\r\n\r\nCode Java “viết một lần, chạy mọi nơi” nên khá lý tưởng cho những người mới tìm hiểu.\r\n\r\nTham khảo: 12 tài liệu học lập trình Java chọn lọc\r\n\r\nC++\r\nLà một ngôn ngữ lập trình hướng đối tượng được phát triển bởi Bjarne Stroustrup nhưng C++ mang cả 2 phong cách: lập trình hướng cấu trúc giống C và có thêm phong cách hướng đối tượng. Nếu đã quen với lập trình hướng cấu trúc trước đó thì việc học C++ không phải là điều quá khó khăn.\r\n\r\nTham khảo: Tài liệu học C++ hoàn toàn miễn phí\r\n\r\nPHP\r\nPHP là ngôn ngữ lập trình đa mục đích, được rất nhiều Developer sử dụng. Đây là ngôn ngữ kịch bản mã nguồn mở, chạy ở phía server và được dùng để tạo ra các ứng dụng web.\r\n\r\nTham khảo: 10+ sách lập trình PHP hay nhất mọi cấp độ\r\n\r\nJavaScript\r\nJavaScript là ngôn ngữ lập trình được sử dụng trong việc xây dựng các website có tính tương tác cao, với mức độ phổ biến được xếp hạng bậc nhất. Học JavaScript khá dễ dàng và đặc biệt phù hợp cho những developer mới bắt đầu học lập trình.', 'https://itviec.com/blog/wp-content/uploads/2020/09/oop-la-gi-fi.webp', NULL, NULL, 12, NULL, '2023-02-01 15:17:23', NULL),
(22, 'Người Việt chật vật trong giá rét kỷ lục ở Nhật, Hàn', NULL, 'Người Việt chật vật trong giá rét kỷ lục ở Nhật, Hàn', 'Nhiều gia đình Việt ở Hàn Quốc, Nhật Bản khổ sở khi đường ống nước đóng băng, chi phí sưởi ấm tăng vọt giữa đợt lạnh giá kỷ lục tấn công Đông Bắc Á. Các nước Đông Bắc Á, trong đó có Nhật Bản và Hàn Quốc, từ tuần trước hứng chịu đợt giá rét kỷ lục. Nhiệt độ xuống thấp nhất trong vòng một thập kỷ, kết hợp với bão tuyết, gây rối loạn giao thông và ảnh hưởng lớn đến cuộc sống người dân. \"Bão tuyết khiến nhiều chuyến bay bị hủy, xe cộ luôn phải bật đèn và di chuyển ở tốc độ rất chậm, khi tầm nhìn chỉ dưới một mét\", Nguyễn Thị Bích Ngân, phiên dịch viên 28 tuổi sống tại thành phố Sapporo, tỉnh cực bắc Hokkaido của Nhật Bản, nói với VnExpress. Giao thông trên khắp nước Nhật rơi vào hỗn loạn tuần trước, khi thời tiết lạnh giá khắc nghiệt tấn công, khiến 46 trên 47 tỉnh thành ghi nhận mức nhiệt âm độ vào ngày 25/1. Không chỉ ngành hàng không bị ảnh hưởng, nhiều chuyến tàu cao tốc Shinkansen và tàu điện địa phương cũng bị gián đoạn. Đợt giá rét trở nên tồi tệ hơn vì gió lớn. Cơ quan khí tượng ở Rausu, Hokkaido, có lúc ghi nhận vận tốc gió hơn 130 km/h. \"Rất lạnh, tuyết kèm gió lớn hình thành bão tuyết, nhiệt độ luôn dưới -10 độ C\", chị Ngân nói. Tại tỉnh Nara, phía nam Nhật Bản, Quỳnh, nhân viên văn phòng 32 tuổi, cho biết khu vực cô ở thường không hay có tuyết vào mùa đông, nhưng đợt lạnh bất thường năm nay khiến tuyết rơi tới hai tuần, khiến mọi hoạt động trở nên khó khăn hơn. \"Tôi thường đi làm sớm bằng xe đạp, nhưng mặt đường đóng băng rất trơn trượt, các phương tiện đều phải đi chậm\", Quỳnh, người đã làm việc ở Nara 8 năm, chia sẻ.', 'https://i1-vnexpress.vnecdn.net/2023/02/01/afp-com-20230126-partners-053-8121-1578-1675223011.jpg?w=680&h=0&q=100&dpr=1&fit=crop&s=0EevDMIjq0bP4kPwJm9mvA', NULL, NULL, 4, NULL, '2023-02-01 15:18:41', NULL),
(25, 'tsr', NULL, '1331', 'dấdsa', '1.jpg', NULL, NULL, 12, NULL, '2023-02-28 05:32:05', NULL),
(26, 'test', NULL, 'momllllllllll', '54145555555555', 'C:\\xampp\\tmp\\php49DF.tmp', NULL, NULL, 12, NULL, '2023-02-28 05:42:39', NULL),
(28, 'dâda', NULL, 'ádsad', '3213213', 'C:\\xampp\\tmp\\phpCD3D.tmp', NULL, NULL, 12, NULL, '2023-02-28 06:52:01', NULL),
(29, 'dâda', NULL, 'ádsad', '3213213', 'C:\\xampp\\tmp\\phpF0DE.tmp', NULL, NULL, 12, NULL, '2023-02-28 06:53:16', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tb_user`
--

CREATE TABLE `tb_user` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `group_id` int(11) DEFAULT NULL,
  `password` mediumtext DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tb_user`
--

INSERT INTO `tb_user` (`id`, `name`, `email`, `group_id`, `password`, `created_at`, `updated_at`) VALUES
(1, 'test', 'ngovu@test.com', 1, '$2y$10$r1PbwlDfcLEJ/RkEpiUJ6ONAby4k3E68Q5RtJA6o1QfTw8t8BQtFS', NULL, '2022-11-30 16:36:04'),
(2, 'admin', 'admin@test.com', 1, '$2y$10$zTgcPaKSy01H5lORi.iFPOcbzN.IANraLVEOT/4xv.CCRCz/Uzzxm', NULL, '2022-11-30 16:36:17'),
(3, 'quanly1233', 'quanly@test.com', 2, '$2y$10$uC.nF3nd3brGBAYqVexACeBp.2FJZq01mKMDRXY6X8x6Wq/5u2Mn.', NULL, '2023-01-31 13:56:00'),
(4, 'etensach', 'admin@email.com', 2, '$2y$10$h3O4443SHbV/09Wz7pvxreuerYTkzSiYLdw7BvAO.82SMDnox3LK2', NULL, '2022-11-30 16:36:54'),
(7, 'idathang', 'ngovu2121@gmail.com', 1, '$2y$10$a.vWxtprIpLeE9gnjNGaw.GGAXkrAQ/.NE8wFDK.oF2RK1LSbk.Ym', NULL, '2022-11-30 16:37:15'),
(8, 'ngolongvu', 'ngovu2122@gmail.com', 2, '$2y$10$sgfUZNBwuPI5TVO/O80BZ.j65SpkGN1.9PTyOgI4Mm41bmp.Dvdyy', NULL, '2022-12-04 11:26:32'),
(9, 'admin', 'admin@123email.com', 1, '$2y$10$.upkK1c6nVKhBWLKHp.Ol.HDBSVC6hTEMdZ/vhUD0l4Sul2E9Bv4S', NULL, NULL),
(11, 'false', '1234@email.com', 2, '123456', NULL, '2023-01-31 14:29:36'),
(12, 'false123456', 'false123456@email.com', 2, '$2y$10$nMRATT6tCPl.uBNoBJz.4ezHgRpVqTRha5IVeVXD0R3l.LWrs/gLq', NULL, '2023-01-31 14:22:29'),
(13, 'idathang', 'ngovu813@yahoo.com.vn', 2, '$2y$10$u/G8PnCP3dd6.7GaSQn7vOiM9AwfLYWs8EkosESfae11c2f4.q3Xi', NULL, '2023-01-31 14:32:27'),
(14, '124aaa', 'aaa@email.com', 2, '$2y$10$xog400q9gR70Lr919QMCw.RUytwGZNm183H/9BJ8KTmrtkIFP9guO', NULL, '2023-02-01 14:39:01'),
(17, 'idathang', '113@email.com', 2, '$2y$10$.8wT1hJmAgJEa0SxrLccJuVsltjWXboKjQz3q8ks2De0EeJiXZvX.', '2023-02-01 14:53:39', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@test.com', NULL, '123456', NULL, NULL, NULL);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Chỉ mục cho bảng `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Chỉ mục cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Chỉ mục cho bảng `tb_comment`
--
ALTER TABLE `tb_comment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idTinTuc` (`idTinTuc`),
  ADD KEY `idUser` (`idUser`);

--
-- Chỉ mục cho bảng `tb_loaitin`
--
ALTER TABLE `tb_loaitin`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idTheLoai` (`idTheLoai`);

--
-- Chỉ mục cho bảng `tb_slide`
--
ALTER TABLE `tb_slide`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tb_theloai`
--
ALTER TABLE `tb_theloai`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tb_tintuc`
--
ALTER TABLE `tb_tintuc`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idLoaiTin` (`idLoaiTin`),
  ADD KEY `idTheLoai` (`idTheLoai`);

--
-- Chỉ mục cho bảng `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `group_id` (`group_id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `groups`
--
ALTER TABLE `groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `tb_comment`
--
ALTER TABLE `tb_comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `tb_loaitin`
--
ALTER TABLE `tb_loaitin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT cho bảng `tb_slide`
--
ALTER TABLE `tb_slide`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `tb_theloai`
--
ALTER TABLE `tb_theloai`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `tb_tintuc`
--
ALTER TABLE `tb_tintuc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT cho bảng `tb_user`
--
ALTER TABLE `tb_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `tb_comment`
--
ALTER TABLE `tb_comment`
  ADD CONSTRAINT `tb_comment_ibfk_2` FOREIGN KEY (`idTinTuc`) REFERENCES `tb_tintuc` (`id`),
  ADD CONSTRAINT `tb_comment_ibfk_3` FOREIGN KEY (`idUser`) REFERENCES `tb_user` (`id`);

--
-- Các ràng buộc cho bảng `tb_loaitin`
--
ALTER TABLE `tb_loaitin`
  ADD CONSTRAINT `tb_loaitin_ibfk_1` FOREIGN KEY (`idTheLoai`) REFERENCES `tb_theloai` (`id`);

--
-- Các ràng buộc cho bảng `tb_tintuc`
--
ALTER TABLE `tb_tintuc`
  ADD CONSTRAINT `tb_tintuc_ibfk_1` FOREIGN KEY (`idLoaiTin`) REFERENCES `tb_loaitin` (`id`),
  ADD CONSTRAINT `tb_tintuc_ibfk_2` FOREIGN KEY (`idTheLoai`) REFERENCES `tb_theloai` (`id`);

--
-- Các ràng buộc cho bảng `tb_user`
--
ALTER TABLE `tb_user`
  ADD CONSTRAINT `tb_user_ibfk_1` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`);
--
-- Cơ sở dữ liệu: `demo_mvc`
--
CREATE DATABASE IF NOT EXISTS `demo_mvc` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `demo_mvc`;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `posts`
--

INSERT INTO `posts` (`id`, `title`, `content`) VALUES
(1, 'tin 1', 'kiemtra'),
(2, 'Tin 2', 'Tin 2'),
(3, 'Tin 3', 'Tin 41'),
(4, 'Tin 4', 'Tin 33');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- Cơ sở dữ liệu: `id17735524_webbanhang`
--
CREATE DATABASE IF NOT EXISTS `id17735524_webbanhang` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `id17735524_webbanhang`;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `category`
--

INSERT INTO `category` (`id`, `name`) VALUES
(15, 'Hải sản khô'),
(16, 'Hải sản đã chế biến'),
(17, 'Hải sản tươi sống');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `feedback`
--

CREATE TABLE `feedback` (
  `id` int(11) NOT NULL,
  `firstname` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lastname` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_number` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject_name` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `status` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `feedback`
--

INSERT INTO `feedback` (`id`, `firstname`, `lastname`, `email`, `phone_number`, `subject_name`, `note`, `created_at`, `updated_at`, `status`) VALUES
(6, 'st', 'stts', 'ts@email.com', 'ts', 'ts', 'tststsst', '2022-08-22 06:52:46', '2022-08-22 06:52:46', 0),
(7, '1', '1', '111@email.com', '1', '1', '1111', '2022-08-22 06:53:19', '2022-08-22 06:53:19', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `galery`
--

CREATE TABLE `galery` (
  `id` int(11) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `thumbnail` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `fullname` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_number` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_date` datetime DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `total_money` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `fullname`, `email`, `phone_number`, `address`, `note`, `order_date`, `status`, `total_money`) VALUES
(12, 5, 'Ngô Long Vũ', 'ngovu2121@gmail.com', '0929246223', 'Sầm Sơn', '', '2023-01-28 12:46:17', 1, 400000),
(13, 5, 'test', 'ngovu@email.com', '312213', '131123', '', '2023-01-28 12:53:02', 1, 830000),
(14, 5, 'Ngô Long Vũ', 'ngovu813@yahoo.com.vn', '21123', 'Sầm Sơn', '', '2023-01-28 12:57:28', 0, 50000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_details`
--

CREATE TABLE `order_details` (
  `id` int(11) NOT NULL,
  `order_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `num` int(11) DEFAULT NULL,
  `total_money` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `order_details`
--

INSERT INTO `order_details` (`id`, `order_id`, `product_id`, `price`, `num`, `total_money`) VALUES
(11, 12, 25, 400000, 1, 400000),
(12, 13, 27, 200000, 1, 200000),
(13, 13, 25, 400000, 1, 400000),
(14, 13, 31, 50000, 1, 50000),
(15, 13, 26, 100000, 1, 100000),
(16, 13, 30, 80000, 1, 80000),
(17, 14, 31, 50000, 1, 50000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `title` varchar(350) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `discount` int(11) DEFAULT NULL,
  `thumbnail` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product`
--

INSERT INTO `product` (`id`, `category_id`, `title`, `price`, `discount`, `thumbnail`, `description`, `created_at`, `updated_at`, `deleted`) VALUES
(18, 15, 'Tôm khô', 120000, 120000, 'assets/photos/download.jpg', '', '2021-11-04 05:09:00', '2021-11-04 15:40:59', 0),
(19, 15, 'Mực khô', 1200000, 1200000, 'assets/photos/download (1).jpg', '', '2021-11-04 05:17:04', '2021-11-04 16:58:07', 0),
(20, 15, 'Cá mối khô', 0, 150000, 'assets/photos/cach-lam-kho-ca-moi-ngon-don-gian-tai-nha-202109301110338463.jpg', '', '2021-11-04 16:57:03', '2021-11-04 16:57:03', 0),
(21, 15, 'Cá cơm khô', 80000, 80000, 'assets/photos/download (2).jpg', '', '2021-11-04 16:31:10', '2021-11-04 16:31:10', 0),
(22, 15, 'Cá chỉ vàng', 0, 100000, 'assets/photos/ca_chi_vang_.jpg', '', '2021-11-04 16:44:11', '2021-11-04 16:44:11', 0),
(23, 17, 'Cá hồi', 300000, 300000, 'assets/photos/anh cahoi2.jpg', '', '2021-11-04 16:41:15', '2021-11-04 16:41:15', 0),
(24, 17, 'mực lá', 0, 3000000, 'assets/photos/download.jpg', '', '2021-11-05 03:58:42', '2021-11-05 03:58:42', 0),
(25, 17, 'mực ống', 400000, 400000, 'assets/photos/download (3).jpg', '', '2021-11-05 03:58:43', '2021-11-05 03:58:43', 0),
(26, 17, 'Sứa', 100000, 100000, 'assets/photos/ngo-doc-sua-bien-2-1519777161415123139991-1200x676.jpg', '', '2021-11-05 03:26:45', '2021-11-05 03:26:45', 0),
(27, 17, 'Cá chim', 200000, 200000, 'assets/photos/ca_chim_bien_song.jpg', '', '2021-11-05 03:27:50', '2021-11-05 03:27:50', 0),
(28, 17, 'Tôm hùm', 600000, 600000, 'assets/photos/download (4).jpg', '<p><br></p>', '2021-11-05 03:02:52', '2021-11-05 03:02:52', 0),
(29, 17, 'Tôm sú', 150000, 150000, 'assets/photos/download (5).jpg', '', '2021-11-05 03:12:56', '2021-11-05 03:12:56', 0),
(30, 17, 'Cá ngừ', 80000, 80000, 'assets/photos/download (6).jpg', '', '2021-11-05 03:11:57', '2021-11-05 03:11:57', 0),
(31, 16, 'Cá hồi đóng hộp', 50000, 50000, 'assets/photos/download (7).jpg', '', '2021-11-05 04:23:10', '2021-11-05 04:23:10', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `role`
--

CREATE TABLE `role` (
  `id` int(11) NOT NULL,
  `name` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `role`
--

INSERT INTO `role` (`id`, `name`) VALUES
(1, 'Admin'),
(2, 'User');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tokens`
--

CREATE TABLE `tokens` (
  `user_id` int(11) NOT NULL,
  `token` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tokens`
--

INSERT INTO `tokens` (`user_id`, `token`, `created_at`) VALUES
(1, '7b887b1e751b6839105033c9f7bdf48c', '2021-10-19 17:03:55'),
(5, '061444eaf40e5f67d39ceb0b6881a1b1', '2022-02-07 02:49:48'),
(5, '0c21ffbcdb5df1c9a5e8e97e5471dfb0', '2022-11-17 16:20:38'),
(5, '19c4595aa6bd33a82811b69b3b793064', '2022-08-22 06:45:20'),
(5, '218161828312f5d506e49df371ab11d2', '2023-01-14 16:02:42'),
(5, '3ef64fa7bc6fe1a96c1a6fe87ef59a94', '2022-02-22 06:04:21'),
(5, '4ba7272c4e9d9b3191b0748ee2b2d1dd', '2021-11-05 03:33:18'),
(5, '4d50db23882484e1a3ed33e168dd181e', '2021-11-06 10:24:13'),
(5, '55894daf2680d7fd333a3201af4810fc', '2022-08-26 19:09:14'),
(5, '59126ee7e32967c3e95fc00b6904b8de', '2021-11-04 00:48:01'),
(5, '6e04e5269ee5ca79da80fecdfcf8e965', '2022-08-20 13:17:05'),
(5, 'a903c3e2dce63bb483607209dc973503', '2021-11-03 17:24:44'),
(5, 'b9034246e4bdae929653c02cd0a2640d', '2021-11-04 15:53:18'),
(5, 'bfe17ae02cabcb355cff85c54564add3', '2021-11-29 15:54:38'),
(5, 'd3fc1aacde2f7de73d506a3b5ceaf0c2', '2022-12-23 10:26:35'),
(5, 'eccadba3608799c2d28978575ec394f6', '2022-10-18 16:03:26'),
(5, 'f0bc55712de6d2eb3dc13416689dc23b', '2022-06-18 05:00:01'),
(6, '29700dd7f88b3d2f1a6b85bf75ae887f', '2023-02-28 06:19:38');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `fullname` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_number` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `user`
--

INSERT INTO `user` (`id`, `fullname`, `email`, `phone_number`, `address`, `password`, `role_id`, `created_at`, `updated_at`, `deleted`) VALUES
(1, 'Ngo Long Vu', 'ngovu2121@gmail.com', '0382088863', 'Sam Son,Thanh Hoa,Viet Nam', '123456', 1, '2021-10-19 10:39:39', '2021-10-20 17:40:06', 0),
(2, 'Admin', 'admin@email.com', '0382088863', 'Sam son', '123456Aa', 1, '2021-10-19 10:42:39', '2021-10-20 17:43:19', 0),
(5, 'ad@email.com', 'ad@email.com', NULL, NULL, '9103e2bd449e7737ceaa2e2f87492c0e', 2, '2021-11-03 17:24:35', '2021-11-03 17:24:35', 0),
(6, 'ngovu', 'admin@test.com', '123456', '123456', '9103e2bd449e7737ceaa2e2f87492c0e', 1, '2023-02-26 10:15:54', '2023-02-26 10:16:49', 0);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `galery`
--
ALTER TABLE `galery`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Chỉ mục cho bảng `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Chỉ mục cho bảng `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`);

--
-- Chỉ mục cho bảng `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tokens`
--
ALTER TABLE `tokens`
  ADD PRIMARY KEY (`user_id`,`token`);

--
-- Chỉ mục cho bảng `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_id` (`role_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT cho bảng `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `galery`
--
ALTER TABLE `galery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT cho bảng `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT cho bảng `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT cho bảng `role`
--
ALTER TABLE `role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `galery`
--
ALTER TABLE `galery`
  ADD CONSTRAINT `galery_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`);

--
-- Các ràng buộc cho bảng `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);
--
-- Cơ sở dữ liệu: `instrumentstore`
--
CREATE DATABASE IF NOT EXISTS `instrumentstore` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `instrumentstore`;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `productId` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `productName` varchar(100) NOT NULL,
  `productPrice` decimal(10,0) NOT NULL,
  `productImage` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`id`, `name`, `status`) VALUES
(2, 'Piano', 1),
(4, 'Guitar', 1),
(5, 'Organ', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `createdDate` date NOT NULL,
  `receivedDate` date DEFAULT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `orders`
--

INSERT INTO `orders` (`id`, `userId`, `createdDate`, `receivedDate`, `status`) VALUES
(39, 31, '2021-12-07', '2021-12-07', 'Complete'),
(40, 1, '2022-09-22', NULL, 'Processing');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_details`
--

CREATE TABLE `order_details` (
  `id` int(11) NOT NULL,
  `orderId` int(11) NOT NULL,
  `productId` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `productPrice` decimal(10,0) NOT NULL,
  `productName` varchar(100) NOT NULL,
  `productImage` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `order_details`
--

INSERT INTO `order_details` (`id`, `orderId`, `productId`, `qty`, `productPrice`, `productName`, `productImage`) VALUES
(36, 39, 7, 2, '3190000', 'GUITAR YAMAHA CX40', 'd3ac08c33e.jpg'),
(37, 39, 4, 1, '749000000', 'Boston GP-156', 'a30bcd79d7.jpg'),
(38, 39, 8, 3, '19000000', 'Taylor 114E', 'cb50eef0d8.jpg'),
(39, 39, 9, 4, '4200000', 'Takamine D2D', '758ded2800.jpg'),
(40, 40, 6, 1, '230000000', 'Essex EUP-123EA1', '4c301f519e.jpg'),
(41, 40, 7, 1, '3190000', 'GUITAR YAMAHA CX40', 'd3ac08c33e.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `originalPrice` decimal(10,0) NOT NULL,
  `promotionPrice` decimal(10,0) NOT NULL,
  `image` varchar(50) NOT NULL,
  `createdBy` int(11) NOT NULL,
  `createdDate` date NOT NULL,
  `cateId` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `des` varchar(1000) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `soldCount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `name`, `originalPrice`, `promotionPrice`, `image`, `createdBy`, `createdDate`, `cateId`, `qty`, `des`, `status`, `soldCount`) VALUES
(2, 'Kohler & Campbell KIG50D', '233000000', '220000000', '95548b09b3.jpg', 1, '0000-00-00', 2, 96, 'Với kích thước linh hoạt, giúp người chơi dễ dàng bố trí phù hợp cho mọi không gian. Giờ đây, người chơi sẽ không còn lo ngại với diện tích không gian chật hẹp. Từ phòng khách, sảnh nhà hàng, khách sạn,.. hay bất cứ đâu Kohler & Campbell KiG50D sẽ góp phần làm nổi bật không gian thêm phần sang trọng.', 1, 4),
(3, 'Kawai ND-21', '90500000', '85000000', '8d2e8819d7.jpg', 1, '0000-00-00', 2, 9, 'Đàn Piano Kawai ND-21 hiện thân cho vẻ đẹp của một cây Piano Acoustic ở phân khúc giá rẻ. Khoác bên ngoài vẻ đẹp sang trọng của một cây đàn upright piano.', 1, 1),
(4, 'Boston GP-156', '749000000', '749000000', 'a30bcd79d7.jpg', 1, '0000-00-00', 2, 19, 'Đàn piano Boston là một thương hiệu con của hãng Piano lừng danh Steinway & Sons, mang cùng một tiêu chuẩn xuất sắc của tất cả các công cụ được thiết kế bởi hãng này. GP-156 PE được thừa hưởng những thiết kế ưu việt của thương hiệu Steinway, mang âm sắc cổ điện với thiết kế tinh tế, đẹp và hiện đại.', 1, 1),
(5, 'Kohler & Campbell J310B', '98000000', '90000000', '109cc07e03.jpg', 1, '0000-00-00', 2, 8, 'Công ty Công nghiệp Kohler & Campbell, Inc đã được thành lập vào năm 1896 tại New York bởi 2 nhà đồng thời sáng lập là Charles Kohler và John Campbell. Campbell là một thợ máy đã phát minh ra một số máy chế biến gỗ và sắt và sau đó đã áp dụng vào việc chế tạo đàn piano.', 1, 2),
(6, 'Essex EUP-123EA1', '230000000', '230000000', '4c301f519e.jpg', 1, '0000-00-00', 2, 6, 'Piano Essex EUP-123E nổi bật với phong cách cổ điển, sang trọng. Cây đàn được thiết kế bởi thương hiệu Steinway & Sons, phối hợp với nhà thiết kế đồ nội thất nổi tiếng William Faber tạo nên sự đẳng cấp, tinh tế của cây đàn.aah', 1, 4),
(7, 'GUITAR YAMAHA CX40', '3190000', '3190000', 'd3ac08c33e.jpg', 1, '2021-12-07', 4, 7, 'Đàn Classic Guitar Yamaha CX40', 1, 3),
(8, 'Taylor 114E', '19000000', '19000000', 'cb50eef0d8.jpg', 1, '2021-12-07', 4, 7, 'Đàn guitar Taylor 114E là một dòng sản phẩm acoustic thuộc dòng series 1 của taylor với thiết kế độc đáo đó chính là khớp nối cần đàn và sử dụng gỗ sitka spruce tạo âm thanh vô cùng trong trẻo, sống động, giúp người chơi có thể cảm nhận được tốt hơn và đây cũng là ưu điểm nổi bật tạo lên sự thành công cho thương hiệu Taylor.', 1, 3),
(9, 'Takamine D2D', '4200000', '4200000', '758ded2800.jpg', 1, '2021-12-07', 4, 6, 'Đàn guitar Takamine D2D là sản phẩm nổi bật của thương hiệu Takamine Nhật Bản và được rất nhiều tín đồ săn đón trong thời gian gần đây. Không những mang đến một thiết kế dáng đàn đẹp mắt, vừa vặn với mọi dáng người mà âm thanh tuyệt vời mà bạn không thể chê vào đâu được.', 1, 4),
(10, 'Takamine ED2DCNAT', '6350000', '6200000', '1dfd0eec5c.jpg', 1, '2021-12-07', 4, 10, 'Đàn guitar Takamine ED2DCNAT là một sản phẩm được thiết kế hoàn hảo đến từng chi tiết với mặt đàn được làm từ gỗ Spruce, mặt sau và hông đàn được làm từ gỗ Mahogany, cùng hệ thống điện tử khuếch đại âm thanh để truyền tải âm thanh đến cho người nghe một cách rõ ràng và chân thật nhất.\r\n\r\nChắc hẳn, đây chính là cây đàn guitar tuyệt vời dành riên cho bạn, bất kể bạn là người mới học hay là người chơi đàn guitar có nhiều kinh nghiệm.', 1, 0),
(11, 'TAYLOR 150E 12 String', '21100000', '21100000', '9bc38b3364.jpg', 1, '2021-12-07', 4, 10, 'Đàn Guitar Taylor 150E 12 String là cây đàn acoustic sở hữu 12 dây đàn đã tạo ra âm thanh tốt, chuẩn xác, thiết kế độc đáo, tinh tế cùng với việc cân bằng ánh sáng octave sắc nét đã tạo ra tông màu tươi sáng, tốt và rõ ràng. Đây chắc hẳn là những tính năng nổi bật đã tạo nên sự khác biệt trong các loại đàn khác.', 1, 0),
(12, 'TAYLOR 214CE DLX', '34700000', '34700000', 'e235fe0bc6.jpg', 1, '2021-12-07', 4, 10, 'Đàn guitar Taylor 214CE DLX sở hữu thiết kế độc đáo với đường nét trên cơ thể mượt mà mang đến âm thanh trung thực, giai điệu rõ ràng và sử dụng chất liệu gỗ rosewood đem lại giai điệu tuyệt vời trong một loại nhạc cụ tuyệt đẹp.', 1, 0),
(13, 'Roland BK-9', '31000000', '31000000', 'bf843e62a9.jpg', 1, '2021-12-07', 5, 20, 'Đàn organ Roland BK-9 là công cụ hàng đầu mới trong loạt dòng BK nổi tiếng, mang lại âm thanh giật gân, nhịp điệu hàng đầu, và một lựa chọn đáng kinh ngạc của các tính năng cao cấp. Bạn có một thế giới âm nhạc dưới sự kiểm soát của ngón tay, với một lựa chọn âm thanh tuyệt vời - bao gồm âm thanh SuperNATURAL nổi tiếng của Roland - và một loạt các giai điệu đệm hoàn toàn remastered trong gần như mọi thể loại âm nhạc, từ cổ điển đến hiện đại.', 1, 0),
(14, 'Roland E-A7', '29000000', '29000000', 'd1a3f61f87.jpg', 1, '2021-12-07', 5, 15, 'Đàn organ Roland E-A7 là cây đàn cao cấp dùng để biểu diễn hoặc đi show với hơn 1.500 âm sắc nhạc cụ đến từ khắp nơi trên thế giới, 156 nút chuyên dụng để truy cập tức thì vào chức năng cho hiệu suất trình diễn mạnh mẽ.', 1, 0),
(15, 'Roland FA-06', '29500000', '29500000', '8f40bd6405.jpg', 1, '2021-12-07', 5, 10, 'Đàn organ Roland FA-06 là một sản phẩm cao cấp đến từ Roland với âm thanh tốt và nhiều tính năng hấp dẫn hỗ trợ người sử dụng để trình diễn trên sân khấu một cách xuất sắc nhất. Ngoài ra với thiết kế nhỏ gọn nên dễ dàng mang đi di chuyển để biểu diễn mà không lo cồng kềnh hư hỏng.', 1, 0),
(16, 'Roland FA-08', '44300000', '44300000', 'a12f8914dc.jpg', 1, '2021-12-07', 5, 10, 'Đàn organ Roland FA-08 sở hữu đầy đủ chức năng của một Music Workstation với thiết kế chắc chắn, tính linh hoat cao cùng với hiệu ứng Studio chất lượng cao, điều khiển thời gian thực, hỗ trợ chức năng Sampling và phát lại âm thanh ngay lập tức từ 16 mặt pad có trang bị đèn tín hiệu.', 1, 0),
(17, 'Roland AXSYNTH', '25100000', '25100000', '422b3a5da2.jpg', 1, '2021-12-07', 5, 20, 'Đàn organ Roland AXSYNTH mang một phong cách mới của Roland, với việc sử dụng âm thanh mạnh mẽ, phong cách solo mới nhất của Roland và có thể đeo lên vai thực hiện phần trình diễn được hiệu quả hơn trên sân khấu.', 1, 0),
(18, 'Roland GAIA SH-01', '14300000', '14300000', 'c43d221a7b.jpg', 1, '2021-12-07', 5, 5, 'Đàn organ Roland GAIA SH-01 cung cấp cho bạn một tấn hiệu ứng (reverb, biến dạng, lông tơ, tai nạn bit, flanger, phaser, pitch shifter, tăng thấp và trì hoãn) để khám phá âm những giới hạn âm thanh tuyệt vời, với những nút tính năng điều chỉnh dễ dàng mang lại sự sáng tạo vô biên của người chơi khi sử dụng cây đàn organ này.', 1, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `role`
--

CREATE TABLE `role` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `role`
--

INSERT INTO `role` (`id`, `name`) VALUES
(1, 'Admin'),
(2, 'Normal');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `dob` date NOT NULL,
  `password` varchar(255) NOT NULL,
  `role_id` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `address` varchar(500) NOT NULL,
  `isConfirmed` tinyint(4) NOT NULL DEFAULT 0,
  `captcha` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `email`, `fullname`, `dob`, `password`, `role_id`, `status`, `address`, `isConfirmed`, `captcha`) VALUES
(1, 'admin@gmail.com', 'Nguyễn Lập An Khương', '2021-11-01', 'e10adc3949ba59abbe56e057f20f883e', 1, 1, '', 1, ''),
(31, 'lapankhuongnguyen@gmail.com', 'khuong nguyen', '2021-12-06', 'c4ca4238a0b923820dcc509a6f75849b', 2, 1, 'CanTho', 1, '56661');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`userId`),
  ADD KEY `product_id` (`productId`);

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`userId`);

--
-- Chỉ mục cho bảng `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_id` (`orderId`),
  ADD KEY `product_id` (`productId`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cate_id` (`cateId`);

--
-- Chỉ mục cho bảng `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_id` (`role_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT cho bảng `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT cho bảng `role`
--
ALTER TABLE `role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `cart`
--
ALTER TABLE `cart`
  ADD CONSTRAINT `cart_ibfk_1` FOREIGN KEY (`productId`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `cart_ibfk_2` FOREIGN KEY (`userId`) REFERENCES `users` (`id`);

--
-- Các ràng buộc cho bảng `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `users` (`id`);

--
-- Các ràng buộc cho bảng `order_details`
--
ALTER TABLE `order_details`
  ADD CONSTRAINT `order_details_ibfk_1` FOREIGN KEY (`productId`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `order_details_ibfk_2` FOREIGN KEY (`orderId`) REFERENCES `orders` (`id`);

--
-- Các ràng buộc cho bảng `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`cateId`) REFERENCES `categories` (`id`);

--
-- Các ràng buộc cho bảng `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`);
--
-- Cơ sở dữ liệu: `mvc_learn`
--
CREATE DATABASE IF NOT EXISTS `mvc_learn` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `mvc_learn`;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `groups`
--

CREATE TABLE `groups` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `update_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `groups`
--

INSERT INTO `groups` (`id`, `name`, `created_at`, `update_at`) VALUES
(1, 'admin', NULL, NULL),
(2, 'user', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tb_user`
--

CREATE TABLE `tb_user` (
  `  id` int(11) UNSIGNED NOT NULL,
  `  username` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `  password` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  `  email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `  fullname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `group_id` int(11) DEFAULT NULL,
  `  level` tinyint(1) DEFAULT NULL,
  `  add_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tb_user`
--

INSERT INTO `tb_user` (`  id`, `  username`, `  password`, `  email`, `  fullname`, `group_id`, `  level`, `  add_date`) VALUES
(1, 'admin', '123456', 'admin@admin.com', 'NgoLongVu', NULL, 1, NULL),
(2, 'ngovu', '1234', 'ngovu2112@email.com', 'fullnam2', NULL, 1, NULL),
(3, 'ngovu', '1234', 'ngovu2112@email.com', 'fullnam2', NULL, 1, NULL),
(4, 'ngovu', '1234', 'ngovu2112@email.com', 'fullnam2', NULL, 1, NULL),
(5, 'ngovu', '1234', 'ngovu2112@email.com', 'fullnam2', NULL, 1, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `test`
--

CREATE TABLE `test` (
  `id` int(11) NOT NULL,
  `tendangnhap` varchar(20) DEFAULT NULL,
  `matkhau` varchar(20) DEFAULT NULL,
  `group_id` int(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `test`
--

INSERT INTO `test` (`id`, `tendangnhap`, `matkhau`, `group_id`, `created_at`, `updated_at`, `status`) VALUES
(1, 'admin', '123456', 1, NULL, NULL, 1),
(2, 'etensach', '333333', 2, NULL, NULL, 0),
(3, 'ngolongvu', '123456', 1, NULL, NULL, 0),
(7, 'bbbaaa', '123456', 2, NULL, NULL, 0),
(10, 'admin', '1234567', 2, '2022-11-18 15:23:50', '2022-11-18 08:52:29', 0),
(11, 'etensach', '1234565', 2, '2022-11-18 08:47:12', '2022-11-18 08:55:59', 0),
(12, 'ngovu', '124566', 2, '2022-11-18 08:48:01', NULL, 0),
(14, 'false', '123456', NULL, '2022-11-18 20:18:34', NULL, 0),
(15, 'ngolongvu', '123456', 1, NULL, NULL, 0),
(16, 'nguyenhang2003', '11111', 1, NULL, NULL, 1),
(17, 'Trangthai', '2222447', 1, NULL, NULL, 0),
(18, 'idathang', '1234564', 1, NULL, NULL, 0),
(19, 'ngolongvu', '1234564', 2, NULL, NULL, 0),
(20, 'nguyenhang2003', '1234564', 1, NULL, NULL, 0),
(21, 'ngolongvu1234', '1234564', 2, '2022-11-19 07:23:27', '2022-11-19 09:10:29', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Chỉ mục cho bảng `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Chỉ mục cho bảng `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`  id`);

--
-- Chỉ mục cho bảng `test`
--
ALTER TABLE `test`
  ADD PRIMARY KEY (`id`),
  ADD KEY `group_id` (`group_id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `groups`
--
ALTER TABLE `groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `tb_user`
--
ALTER TABLE `tb_user`
  MODIFY `  id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `test`
--
ALTER TABLE `test`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `test`
--
ALTER TABLE `test`
  ADD CONSTRAINT `test_ibfk_1` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`);
--
-- Cơ sở dữ liệu: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin DEFAULT NULL,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

--
-- Đang đổ dữ liệu cho bảng `pma__designer_settings`
--

INSERT INTO `pma__designer_settings` (`username`, `settings_data`) VALUES
('root', '{\"relation_lines\":\"true\",\"angular_direct\":\"direct\",\"snap_to_grid\":\"off\"}');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Đang đổ dữ liệu cho bảng `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"db_webtintuc\",\"table\":\"tb_user\"},{\"db\":\"db_webtintuc\",\"table\":\"tb_theloai\"},{\"db\":\"db_webtintuc\",\"table\":\"groups\"},{\"db\":\"mvc_learn\",\"table\":\"test\"},{\"db\":\"mvc_learn\",\"table\":\"groups\"},{\"db\":\"mvc_learn\",\"table\":\"tb_user\"},{\"db\":\"db_webtintuc\",\"table\":\"tb_tintuc\"},{\"db\":\"db_webtintuc\",\"table\":\"tb_loaitin\"},{\"db\":\"db_webtintuc\",\"table\":\"tb_comment\"},{\"db\":\"db_webtintuc\",\"table\":\"tb_slide\"}]');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

--
-- Đang đổ dữ liệu cho bảng `pma__table_info`
--

INSERT INTO `pma__table_info` (`db_name`, `table_name`, `display_field`) VALUES
('db_webtintuc', 'tb_comment', 'NoiDung'),
('db_webtintuc', 'tb_loaitin', 'Ten'),
('db_webtintuc', 'tb_tintuc', 'TieuDe'),
('db_webtintuc', 'tb_user', 'name'),
('mvc_learn', 'test', 'tendangnhap');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin DEFAULT NULL,
  `data_sql` longtext COLLATE utf8_bin DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Đang đổ dữ liệu cho bảng `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2022-11-24 13:25:57', '{\"Console\\/Mode\":\"collapse\",\"lang\":\"vi\"}');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Chỉ mục cho bảng `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Chỉ mục cho bảng `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Chỉ mục cho bảng `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Chỉ mục cho bảng `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Chỉ mục cho bảng `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Chỉ mục cho bảng `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Chỉ mục cho bảng `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Chỉ mục cho bảng `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Chỉ mục cho bảng `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Chỉ mục cho bảng `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Chỉ mục cho bảng `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Chỉ mục cho bảng `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Chỉ mục cho bảng `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Chỉ mục cho bảng `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Chỉ mục cho bảng `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Chỉ mục cho bảng `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Chỉ mục cho bảng `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Cơ sở dữ liệu: `qlbh`
--
CREATE DATABASE IF NOT EXISTS `qlbh` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `qlbh`;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `dangnhap`
--

CREATE TABLE `dangnhap` (
  `email` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `quyen` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `dangnhap`
--

INSERT INTO `dangnhap` (`email`, `password`, `quyen`) VALUES
('admin@gmail.com', '12345', 1),
('admin@test.com', '123456', 1),
('mylinh@gmail.com', '12345', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `donhang`
--

CREATE TABLE `donhang` (
  `iddonhang` int(11) NOT NULL,
  `iduser` int(11) NOT NULL,
  `mamh` int(11) NOT NULL,
  `size` varchar(5) NOT NULL,
  `soluong` float NOT NULL,
  `ngaydh` date NOT NULL,
  `trangthai` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `donhang`
--

INSERT INTO `donhang` (`iddonhang`, `iduser`, `mamh`, `size`, `soluong`, `ngaydh`, `trangthai`) VALUES
(38, 1, 15, 'XXL', 20, '2023-03-03', 1),
(39, 1, 14, 'XS', 4, '2023-03-03', 0),
(41, 3, 15, 'XS', 100, '2023-03-04', 0),
(42, 3, 14, 'XS', 5, '2023-03-04', 0);

--
-- Bẫy `donhang`
--
DELIMITER $$
CREATE TRIGGER `after_donhang_delete` AFTER DELETE ON `donhang` FOR EACH ROW BEGIN 
UPDATE mathang SET soluong=(soluong+old.soluong) where mamh=old.mamh; 
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `before_donhang_insert` AFTER INSERT ON `donhang` FOR EACH ROW BEGIN
	UPDATE mathang SET soluong=soluong-new.soluong where mamh=new.mamh;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `loaihang`
--

CREATE TABLE `loaihang` (
  `malh` int(11) NOT NULL,
  `tenlh` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `loaihang`
--

INSERT INTO `loaihang` (`malh`, `tenlh`) VALUES
(1, 'Áo dài cách tân'),
(2, 'Áo tân thời'),
(5, 'Áo xẻ tà');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `mathang`
--

CREATE TABLE `mathang` (
  `mamh` int(11) NOT NULL,
  `tenmh` varchar(1000) NOT NULL,
  `mansx` int(11) NOT NULL,
  `malh` int(11) NOT NULL,
  `soluong` int(11) NOT NULL,
  `hinh` varchar(2000) NOT NULL,
  `mota` varchar(2000) NOT NULL,
  `gia` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `mathang`
--

INSERT INTO `mathang` (`mamh`, `tenmh`, `mansx`, `malh`, `soluong`, `hinh`, `mota`, `gia`) VALUES
(12, 'Áo xẻ tà xx2', 1, 5, 1000, 'download (1).jpg', '0000', 250000),
(14, 'Áo trắng xx1', 1, 5, 100, 'download.jpg', '', 250000),
(15, 'Áo xẻ đen', 1, 1, 100, 'download (4).jpg', '', 100000),
(16, 'Áo trắng xx3', 1, 5, 5000, 'download (5).jpg', '', 120000),
(17, 'Áo xẻ màu ngẫu nhiên', 1, 5, 5000, 'download (2).jpg', '', 120000),
(18, 'Áo đen xxx', 1, 5, 1000, 'download (3).jpg', '', 300000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nguoidung`
--

CREATE TABLE `nguoidung` (
  `iduser` int(11) NOT NULL,
  `email` varchar(500) NOT NULL,
  `hoten` varchar(2000) NOT NULL,
  `diachi` varchar(2000) NOT NULL,
  `sdt` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `nguoidung`
--

INSERT INTO `nguoidung` (`iduser`, `email`, `hoten`, `diachi`, `sdt`) VALUES
(1, 'admin@gmail.com', 'admin', 'teastsa', '013458888'),
(2, 'mylinh@gmail.com', 'Nguyễn Mỹ Linh', 'VĨNH LONG', '0999999999'),
(3, 'admin@test.com', 'test', '12441A', '01611526');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhasx`
--

CREATE TABLE `nhasx` (
  `mansx` int(11) NOT NULL,
  `tennsx` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `nhasx`
--

INSERT INTO `nhasx` (`mansx`, `tennsx`) VALUES
(1, 'MOTUL'),
(2, 'castrol');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `dangnhap`
--
ALTER TABLE `dangnhap`
  ADD PRIMARY KEY (`email`);

--
-- Chỉ mục cho bảng `donhang`
--
ALTER TABLE `donhang`
  ADD PRIMARY KEY (`iddonhang`),
  ADD KEY `iduser` (`iduser`),
  ADD KEY `mamh` (`mamh`);

--
-- Chỉ mục cho bảng `loaihang`
--
ALTER TABLE `loaihang`
  ADD PRIMARY KEY (`malh`);

--
-- Chỉ mục cho bảng `mathang`
--
ALTER TABLE `mathang`
  ADD PRIMARY KEY (`mamh`),
  ADD KEY `malh` (`malh`),
  ADD KEY `mansx` (`mansx`);

--
-- Chỉ mục cho bảng `nguoidung`
--
ALTER TABLE `nguoidung`
  ADD PRIMARY KEY (`iduser`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Chỉ mục cho bảng `nhasx`
--
ALTER TABLE `nhasx`
  ADD PRIMARY KEY (`mansx`),
  ADD UNIQUE KEY `tennsx` (`tennsx`) USING HASH;

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `donhang`
--
ALTER TABLE `donhang`
  MODIFY `iddonhang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT cho bảng `loaihang`
--
ALTER TABLE `loaihang`
  MODIFY `malh` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `mathang`
--
ALTER TABLE `mathang`
  MODIFY `mamh` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT cho bảng `nguoidung`
--
ALTER TABLE `nguoidung`
  MODIFY `iduser` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `nhasx`
--
ALTER TABLE `nhasx`
  MODIFY `mansx` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `dangnhap`
--
ALTER TABLE `dangnhap`
  ADD CONSTRAINT `dangnhap_ibfk_1` FOREIGN KEY (`email`) REFERENCES `nguoidung` (`email`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `donhang`
--
ALTER TABLE `donhang`
  ADD CONSTRAINT `donhang_ibfk_1` FOREIGN KEY (`iduser`) REFERENCES `nguoidung` (`iduser`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `donhang_ibfk_2` FOREIGN KEY (`mamh`) REFERENCES `mathang` (`mamh`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `mathang`
--
ALTER TABLE `mathang`
  ADD CONSTRAINT `mathang_ibfk_1` FOREIGN KEY (`malh`) REFERENCES `loaihang` (`malh`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `mathang_ibfk_2` FOREIGN KEY (`mansx`) REFERENCES `nhasx` (`mansx`) ON DELETE CASCADE ON UPDATE CASCADE;
--
-- Cơ sở dữ liệu: `shop`
--
CREATE DATABASE IF NOT EXISTS `shop` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `shop`;
--
-- Cơ sở dữ liệu: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `dn`
--
-- Error reading structure for table test.dn: #1932 - Table 'test.dn' doesn't exist in engine
-- Error reading data for table test.dn: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'FROM `test`.`dn`' at line 1

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `login`
--

CREATE TABLE `login` (
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `email` varchar(50) NOT NULL,
  `level` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `login`
--

INSERT INTO `login` (`username`, `password`, `email`, `level`) VALUES
('admin', '123456', 'admin@email.com', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nguoidung`
--

CREATE TABLE `nguoidung` (
  `id` int(11) NOT NULL,
  `taikhoan` varchar(255) DEFAULT NULL,
  `PASSWORD` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `nguoidung`
--

INSERT INTO `nguoidung` (`id`, `taikhoan`, `PASSWORD`) VALUES
(1, 'ngolongvu', '1111'),
(2, 'admin', '123456'),
(3, '222', '44444'),
(7, '111', '2222');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `truyvan`
--
-- Error reading structure for table test.truyvan: #1932 - Table 'test.truyvan' doesn't exist in engine
-- Error reading data for table test.truyvan: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'FROM `test`.`truyvan`' at line 1

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`username`);

--
-- Chỉ mục cho bảng `nguoidung`
--
ALTER TABLE `nguoidung`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `nguoidung`
--
ALTER TABLE `nguoidung`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- Cơ sở dữ liệu: `wordpress_db`
--
CREATE DATABASE IF NOT EXISTS `wordpress_db` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `wordpress_db`;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT 0,
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Đang đổ dữ liệu cho bảng `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Một người bình luận WordPress', 'wapuu@wordpress.example', 'https://vi.wordpress.org/', '', '2022-12-18 13:07:09', '2022-12-18 13:07:09', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://en.gravatar.com/\">Gravatar</a>.', 0, '1', '', 'comment', 0, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `link_rating` int(11) NOT NULL DEFAULT 0,
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Đang đổ dữ liệu cho bảng `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost:8080/wordpress/wordpress', 'yes'),
(2, 'home', 'http://localhost:8080/wordpress/wordpress', 'yes'),
(3, 'blogname', 'WebTinTuc', 'yes'),
(4, 'blogdescription', '', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'ngovu2121@gmail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '0', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'j F, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'j F, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/index.php/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:79:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:42:\"index.php/feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:37:\"index.php/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:18:\"index.php/embed/?$\";s:21:\"index.php?&embed=true\";s:30:\"index.php/page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:51:\"index.php/comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:46:\"index.php/comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:27:\"index.php/comments/embed/?$\";s:21:\"index.php?&embed=true\";s:54:\"index.php/search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:49:\"index.php/search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:30:\"index.php/search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:42:\"index.php/search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:24:\"index.php/search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:57:\"index.php/author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:52:\"index.php/author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:33:\"index.php/author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:45:\"index.php/author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:27:\"index.php/author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:79:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:74:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:55:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:67:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:49:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:66:\"index.php/([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:61:\"index.php/([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:42:\"index.php/([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:54:\"index.php/([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:36:\"index.php/([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:53:\"index.php/([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:48:\"index.php/([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:29:\"index.php/([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:41:\"index.php/([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:23:\"index.php/([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:68:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:78:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:98:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:93:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:93:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:74:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:63:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:67:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:87:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:82:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:75:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:82:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:71:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:57:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:67:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:87:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:82:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:82:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:63:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:74:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:61:\"index.php/([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:48:\"index.php/([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:37:\"index.php/.?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:47:\"index.php/.?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:67:\"index.php/.?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"index.php/.?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"index.php/.?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:43:\"index.php/.?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:26:\"index.php/(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:30:\"index.php/(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:50:\"index.php/(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:45:\"index.php/(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:38:\"index.php/(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:45:\"index.php/(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:34:\"index.php/(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:0:{}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'twentytwentythree', 'yes'),
(41, 'stylesheet', 'twentytwentythree', 'yes'),
(42, 'comment_registration', '0', 'yes'),
(43, 'html_type', 'text/html', 'yes'),
(44, 'use_trackback', '0', 'yes'),
(45, 'default_role', 'subscriber', 'yes'),
(46, 'db_version', '53496', 'yes'),
(47, 'uploads_use_yearmonth_folders', '1', 'yes'),
(48, 'upload_path', '', 'yes'),
(49, 'blog_public', '0', 'yes'),
(50, 'default_link_category', '2', 'yes'),
(51, 'show_on_front', 'posts', 'yes'),
(52, 'tag_base', '', 'yes'),
(53, 'show_avatars', '1', 'yes'),
(54, 'avatar_rating', 'G', 'yes'),
(55, 'upload_url_path', '', 'yes'),
(56, 'thumbnail_size_w', '150', 'yes'),
(57, 'thumbnail_size_h', '150', 'yes'),
(58, 'thumbnail_crop', '1', 'yes'),
(59, 'medium_size_w', '300', 'yes'),
(60, 'medium_size_h', '300', 'yes'),
(61, 'avatar_default', 'mystery', 'yes'),
(62, 'large_size_w', '1024', 'yes'),
(63, 'large_size_h', '1024', 'yes'),
(64, 'image_default_link_type', 'none', 'yes'),
(65, 'image_default_size', '', 'yes'),
(66, 'image_default_align', '', 'yes'),
(67, 'close_comments_for_old_posts', '0', 'yes'),
(68, 'close_comments_days_old', '14', 'yes'),
(69, 'thread_comments', '1', 'yes'),
(70, 'thread_comments_depth', '5', 'yes'),
(71, 'page_comments', '0', 'yes'),
(72, 'comments_per_page', '50', 'yes'),
(73, 'default_comments_page', 'newest', 'yes'),
(74, 'comment_order', 'asc', 'yes'),
(75, 'sticky_posts', 'a:0:{}', 'yes'),
(76, 'widget_categories', 'a:0:{}', 'yes'),
(77, 'widget_text', 'a:0:{}', 'yes'),
(78, 'widget_rss', 'a:0:{}', 'yes'),
(79, 'uninstall_plugins', 'a:0:{}', 'no'),
(80, 'timezone_string', '', 'yes'),
(81, 'page_for_posts', '0', 'yes'),
(82, 'page_on_front', '0', 'yes'),
(83, 'default_post_format', '0', 'yes'),
(84, 'link_manager_enabled', '0', 'yes'),
(85, 'finished_splitting_shared_terms', '1', 'yes'),
(86, 'site_icon', '0', 'yes'),
(87, 'medium_large_size_w', '768', 'yes'),
(88, 'medium_large_size_h', '0', 'yes'),
(89, 'wp_page_for_privacy_policy', '3', 'yes'),
(90, 'show_comments_cookies_opt_in', '1', 'yes'),
(91, 'admin_email_lifespan', '1686920817', 'yes'),
(92, 'disallowed_keys', '', 'no'),
(93, 'comment_previously_approved', '1', 'yes'),
(94, 'auto_plugin_theme_update_emails', 'a:0:{}', 'no'),
(95, 'auto_update_core_dev', 'enabled', 'yes'),
(96, 'auto_update_core_minor', 'enabled', 'yes'),
(97, 'auto_update_core_major', 'enabled', 'yes'),
(98, 'wp_force_deactivated_plugins', 'a:0:{}', 'yes'),
(99, 'initial_db_version', '53496', 'yes'),
(100, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(101, 'fresh_site', '1', 'yes'),
(102, 'WPLANG', 'vi', 'yes'),
(103, 'user_count', '1', 'no'),
(104, 'widget_block', 'a:6:{i:2;a:1:{s:7:\"content\";s:19:\"<!-- wp:search /-->\";}i:3;a:1:{s:7:\"content\";s:159:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Bài viết mới</h2><!-- /wp:heading --><!-- wp:latest-posts /--></div><!-- /wp:group -->\";}i:4;a:1:{s:7:\"content\";s:236:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Phản hồi gần đây</h2><!-- /wp:heading --><!-- wp:latest-comments {\"displayAvatar\":false,\"displayDate\":false,\"displayExcerpt\":false} /--></div><!-- /wp:group -->\";}i:5;a:1:{s:7:\"content\";s:148:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Lưu trữ</h2><!-- /wp:heading --><!-- wp:archives /--></div><!-- /wp:group -->\";}i:6;a:1:{s:7:\"content\";s:153:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Chuyên mục</h2><!-- /wp:heading --><!-- wp:categories /--></div><!-- /wp:group -->\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'sidebars_widgets', 'a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:9:\"sidebar-2\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}s:13:\"array_version\";i:3;}', 'yes'),
(106, 'cron', 'a:8:{i:1676689633;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1676725631;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1676725633;a:4:{s:18:\"wp_https_detection\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1676725659;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1676725660;a:1:{s:21:\"wp_update_user_counts\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1676725663;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1676898432;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}', 'yes'),
(107, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_archives', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(114, 'widget_meta', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(115, 'widget_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(116, 'widget_recent-posts', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(117, 'widget_recent-comments', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(118, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(119, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(120, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(123, 'recovery_keys', 'a:0:{}', 'yes'),
(125, 'https_detection_errors', 'a:1:{s:20:\"https_request_failed\";a:1:{i:0;s:37:\"Yêu cầu HTTPS không thành công.\";}}', 'yes'),
(127, 'theme_mods_twentytwentythree', 'a:1:{s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(148, 'can_compress_scripts', '1', 'no'),
(161, 'finished_updating_comment_type', '1', 'yes'),
(176, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:62:\"https://downloads.wordpress.org/release/vi/wordpress-6.1.1.zip\";s:6:\"locale\";s:2:\"vi\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:62:\"https://downloads.wordpress.org/release/vi/wordpress-6.1.1.zip\";s:10:\"no_content\";s:0:\"\";s:11:\"new_bundled\";s:0:\"\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"6.1.1\";s:7:\"version\";s:5:\"6.1.1\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"6.1\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1676688207;s:15:\"version_checked\";s:5:\"6.1.1\";s:12:\"translations\";a:0:{}}', 'no'),
(179, '_site_transient_timeout_php_check_3a6f2a803f99347534e67553ed67d1ad', '1677058271', 'no'),
(180, '_site_transient_php_check_3a6f2a803f99347534e67553ed67d1ad', 'a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(181, '_transient_health-check-site-status-result', '{\"good\":15,\"recommended\":5,\"critical\":1}', 'yes'),
(183, '_transient_timeout_global_styles_twentytwentythree', '1676688264', 'no'),
(184, '_transient_global_styles_twentytwentythree', 'body{--wp--preset--color--black: #000000;--wp--preset--color--cyan-bluish-gray: #abb8c3;--wp--preset--color--white: #ffffff;--wp--preset--color--pale-pink: #f78da7;--wp--preset--color--vivid-red: #cf2e2e;--wp--preset--color--luminous-vivid-orange: #ff6900;--wp--preset--color--luminous-vivid-amber: #fcb900;--wp--preset--color--light-green-cyan: #7bdcb5;--wp--preset--color--vivid-green-cyan: #00d084;--wp--preset--color--pale-cyan-blue: #8ed1fc;--wp--preset--color--vivid-cyan-blue: #0693e3;--wp--preset--color--vivid-purple: #9b51e0;--wp--preset--color--base: #ffffff;--wp--preset--color--contrast: #000000;--wp--preset--color--primary: #9DFF20;--wp--preset--color--secondary: #345C00;--wp--preset--color--tertiary: #F6F6F6;--wp--preset--gradient--vivid-cyan-blue-to-vivid-purple: linear-gradient(135deg,rgba(6,147,227,1) 0%,rgb(155,81,224) 100%);--wp--preset--gradient--light-green-cyan-to-vivid-green-cyan: linear-gradient(135deg,rgb(122,220,180) 0%,rgb(0,208,130) 100%);--wp--preset--gradient--luminous-vivid-amber-to-luminous-vivid-orange: linear-gradient(135deg,rgba(252,185,0,1) 0%,rgba(255,105,0,1) 100%);--wp--preset--gradient--luminous-vivid-orange-to-vivid-red: linear-gradient(135deg,rgba(255,105,0,1) 0%,rgb(207,46,46) 100%);--wp--preset--gradient--very-light-gray-to-cyan-bluish-gray: linear-gradient(135deg,rgb(238,238,238) 0%,rgb(169,184,195) 100%);--wp--preset--gradient--cool-to-warm-spectrum: linear-gradient(135deg,rgb(74,234,220) 0%,rgb(151,120,209) 20%,rgb(207,42,186) 40%,rgb(238,44,130) 60%,rgb(251,105,98) 80%,rgb(254,248,76) 100%);--wp--preset--gradient--blush-light-purple: linear-gradient(135deg,rgb(255,206,236) 0%,rgb(152,150,240) 100%);--wp--preset--gradient--blush-bordeaux: linear-gradient(135deg,rgb(254,205,165) 0%,rgb(254,45,45) 50%,rgb(107,0,62) 100%);--wp--preset--gradient--luminous-dusk: linear-gradient(135deg,rgb(255,203,112) 0%,rgb(199,81,192) 50%,rgb(65,88,208) 100%);--wp--preset--gradient--pale-ocean: linear-gradient(135deg,rgb(255,245,203) 0%,rgb(182,227,212) 50%,rgb(51,167,181) 100%);--wp--preset--gradient--electric-grass: linear-gradient(135deg,rgb(202,248,128) 0%,rgb(113,206,126) 100%);--wp--preset--gradient--midnight: linear-gradient(135deg,rgb(2,3,129) 0%,rgb(40,116,252) 100%);--wp--preset--duotone--dark-grayscale: url(\'#wp-duotone-dark-grayscale\');--wp--preset--duotone--grayscale: url(\'#wp-duotone-grayscale\');--wp--preset--duotone--purple-yellow: url(\'#wp-duotone-purple-yellow\');--wp--preset--duotone--blue-red: url(\'#wp-duotone-blue-red\');--wp--preset--duotone--midnight: url(\'#wp-duotone-midnight\');--wp--preset--duotone--magenta-yellow: url(\'#wp-duotone-magenta-yellow\');--wp--preset--duotone--purple-green: url(\'#wp-duotone-purple-green\');--wp--preset--duotone--blue-orange: url(\'#wp-duotone-blue-orange\');--wp--preset--font-size--small: clamp(0.875rem, 0.875rem + ((1vw - 0.48rem) * 0.24), 1rem);--wp--preset--font-size--medium: clamp(1rem, 1rem + ((1vw - 0.48rem) * 0.24), 1.125rem);--wp--preset--font-size--large: clamp(1.75rem, 1.75rem + ((1vw - 0.48rem) * 0.24), 1.875rem);--wp--preset--font-size--x-large: 2.25rem;--wp--preset--font-size--xx-large: clamp(4rem, 4rem + ((1vw - 0.48rem) * 11.538), 10rem);--wp--preset--font-family--dm-sans: \"DM Sans\", sans-serif;--wp--preset--font-family--ibm-plex-mono: \'IBM Plex Mono\', monospace;--wp--preset--font-family--inter: \"Inter\", sans-serif;--wp--preset--font-family--system-font: -apple-system,BlinkMacSystemFont,\"Segoe UI\",Roboto,Oxygen-Sans,Ubuntu,Cantarell,\"Helvetica Neue\",sans-serif;--wp--preset--font-family--source-serif-pro: \"Source Serif Pro\", serif;--wp--preset--spacing--30: clamp(1.5rem, 5vw, 2rem);--wp--preset--spacing--40: clamp(1.8rem, 1.8rem + ((1vw - 0.48rem) * 2.885), 3rem);--wp--preset--spacing--50: clamp(2.5rem, 8vw, 4.5rem);--wp--preset--spacing--60: clamp(3.75rem, 10vw, 7rem);--wp--preset--spacing--70: clamp(5rem, 5.25rem + ((1vw - 0.48rem) * 9.096), 8rem);--wp--preset--spacing--80: clamp(7rem, 14vw, 11rem);}body { margin: 0;--wp--style--global--content-size: 650px;--wp--style--global--wide-size: 1200px; }.wp-site-blocks { padding-top: var(--wp--style--root--padding-top); padding-bottom: var(--wp--style--root--padding-bottom); }.has-global-padding { padding-right: var(--wp--style--root--padding-right); padding-left: var(--wp--style--root--padding-left); }.has-global-padding :where(.has-global-padding) { padding-right: 0; padding-left: 0; }.has-global-padding > .alignfull { margin-right: calc(var(--wp--style--root--padding-right) * -1); margin-left: calc(var(--wp--style--root--padding-left) * -1); }.has-global-padding :where(.has-global-padding) > .alignfull { margin-right: 0; margin-left: 0; }.has-global-padding > .alignfull:where(:not(.has-global-padding)) > :where([class*=\"wp-block-\"]:not(.alignfull):not([class*=\"__\"]),p,h1,h2,h3,h4,h5,h6,ul,ol) { padding-right: var(--wp--style--root--padding-right); padding-left: var(--wp--style--root--padding-left); }.has-global-padding :where(.has-global-padding) > .alignfull:where(:not(.has-global-padding)) > :where([class*=\"wp-block-\"]:not(.alignfull):not([class*=\"__\"]),p,h1,h2,h3,h4,h5,h6,ul,ol) { padding-right: 0; padding-left: 0; }.wp-site-blocks > .alignleft { float: left; margin-right: 2em; }.wp-site-blocks > .alignright { float: right; margin-left: 2em; }.wp-site-blocks > .aligncenter { justify-content: center; margin-left: auto; margin-right: auto; }.wp-site-blocks > * { margin-block-start: 0; margin-block-end: 0; }.wp-site-blocks > * + * { margin-block-start: 1.5rem; }body { --wp--style--block-gap: 1.5rem; }body .is-layout-flow > *{margin-block-start: 0;margin-block-end: 0;}body .is-layout-flow > * + *{margin-block-start: 1.5rem;margin-block-end: 0;}body .is-layout-constrained > *{margin-block-start: 0;margin-block-end: 0;}body .is-layout-constrained > * + *{margin-block-start: 1.5rem;margin-block-end: 0;}body .is-layout-flex{gap: 1.5rem;}body .is-layout-flow > .alignleft{float: left;margin-inline-start: 0;margin-inline-end: 2em;}body .is-layout-flow > .alignright{float: right;margin-inline-start: 2em;margin-inline-end: 0;}body .is-layout-flow > .aligncenter{margin-left: auto !important;margin-right: auto !important;}body .is-layout-constrained > .alignleft{float: left;margin-inline-start: 0;margin-inline-end: 2em;}body .is-layout-constrained > .alignright{float: right;margin-inline-start: 2em;margin-inline-end: 0;}body .is-layout-constrained > .aligncenter{margin-left: auto !important;margin-right: auto !important;}body .is-layout-constrained > :where(:not(.alignleft):not(.alignright):not(.alignfull)){max-width: var(--wp--style--global--content-size);margin-left: auto !important;margin-right: auto !important;}body .is-layout-constrained > .alignwide{max-width: var(--wp--style--global--wide-size);}body .is-layout-flex{display: flex;}body .is-layout-flex{flex-wrap: wrap;align-items: center;}body .is-layout-flex > *{margin: 0;}body{background-color: var(--wp--preset--color--base);color: var(--wp--preset--color--contrast);font-family: var(--wp--preset--font-family--system-font);font-size: var(--wp--preset--font-size--medium);line-height: 1.6;--wp--style--root--padding-top: var(--wp--preset--spacing--40);--wp--style--root--padding-right: var(--wp--preset--spacing--30);--wp--style--root--padding-bottom: var(--wp--preset--spacing--40);--wp--style--root--padding-left: var(--wp--preset--spacing--30);}a:where(:not(.wp-element-button)){color: var(--wp--preset--color--contrast);text-decoration: underline;}a:where(:not(.wp-element-button)):hover{text-decoration: none;}a:where(:not(.wp-element-button)):focus{text-decoration: underline dashed;}a:where(:not(.wp-element-button)):active{color: var(--wp--preset--color--secondary);text-decoration: none;}h1, h2, h3, h4, h5, h6{font-weight: 400;line-height: 1.4;}h1{font-size: clamp(2.719rem, 2.719rem + ((1vw - 0.48rem) * 1.742), 3.625rem);line-height: 1.2;}h2{font-size: clamp(2.625rem, calc(2.625rem + ((1vw - 0.48rem) * 8.4135)), 3.25rem);line-height: 1.2;}h3{font-size: var(--wp--preset--font-size--x-large);}h4{font-size: var(--wp--preset--font-size--large);}h5{font-size: var(--wp--preset--font-size--medium);font-weight: 700;text-transform: uppercase;}h6{font-size: var(--wp--preset--font-size--medium);text-transform: uppercase;}.wp-element-button, .wp-block-button__link{background-color: var(--wp--preset--color--primary);border-radius: 0;border-width: 0;color: var(--wp--preset--color--contrast);font-family: inherit;font-size: inherit;line-height: inherit;padding: calc(0.667em + 2px) calc(1.333em + 2px);text-decoration: none;}.wp-element-button:visited, .wp-block-button__link:visited{color: var(--wp--preset--color--contrast);}.wp-element-button:hover, .wp-block-button__link:hover{background-color: var(--wp--preset--color--contrast);color: var(--wp--preset--color--base);}.wp-element-button:focus, .wp-block-button__link:focus{background-color: var(--wp--preset--color--contrast);color: var(--wp--preset--color--base);}.wp-element-button:active, .wp-block-button__link:active{background-color: var(--wp--preset--color--secondary);color: var(--wp--preset--color--base);}.has-black-color{color: var(--wp--preset--color--black) !important;}.has-cyan-bluish-gray-color{color: var(--wp--preset--color--cyan-bluish-gray) !important;}.has-white-color{color: var(--wp--preset--color--white) !important;}.has-pale-pink-color{color: var(--wp--preset--color--pale-pink) !important;}.has-vivid-red-color{color: var(--wp--preset--color--vivid-red) !important;}.has-luminous-vivid-orange-color{color: var(--wp--preset--color--luminous-vivid-orange) !important;}.has-luminous-vivid-amber-color{color: var(--wp--preset--color--luminous-vivid-amber) !important;}.has-light-green-cyan-color{color: var(--wp--preset--color--light-green-cyan) !important;}.has-vivid-green-cyan-color{color: var(--wp--preset--color--vivid-green-cyan) !important;}.has-pale-cyan-blue-color{color: var(--wp--preset--color--pale-cyan-blue) !important;}.has-vivid-cyan-blue-color{color: var(--wp--preset--color--vivid-cyan-blue) !important;}.has-vivid-purple-color{color: var(--wp--preset--color--vivid-purple) !important;}.has-base-color{color: var(--wp--preset--color--base) !important;}.has-contrast-color{color: var(--wp--preset--color--contrast) !important;}.has-primary-color{color: var(--wp--preset--color--primary) !important;}.has-secondary-color{color: var(--wp--preset--color--secondary) !important;}.has-tertiary-color{color: var(--wp--preset--color--tertiary) !important;}.has-black-background-color{background-color: var(--wp--preset--color--black) !important;}.has-cyan-bluish-gray-background-color{background-color: var(--wp--preset--color--cyan-bluish-gray) !important;}.has-white-background-color{background-color: var(--wp--preset--color--white) !important;}.has-pale-pink-background-color{background-color: var(--wp--preset--color--pale-pink) !important;}.has-vivid-red-background-color{background-color: var(--wp--preset--color--vivid-red) !important;}.has-luminous-vivid-orange-background-color{background-color: var(--wp--preset--color--luminous-vivid-orange) !important;}.has-luminous-vivid-amber-background-color{background-color: var(--wp--preset--color--luminous-vivid-amber) !important;}.has-light-green-cyan-background-color{background-color: var(--wp--preset--color--light-green-cyan) !important;}.has-vivid-green-cyan-background-color{background-color: var(--wp--preset--color--vivid-green-cyan) !important;}.has-pale-cyan-blue-background-color{background-color: var(--wp--preset--color--pale-cyan-blue) !important;}.has-vivid-cyan-blue-background-color{background-color: var(--wp--preset--color--vivid-cyan-blue) !important;}.has-vivid-purple-background-color{background-color: var(--wp--preset--color--vivid-purple) !important;}.has-base-background-color{background-color: var(--wp--preset--color--base) !important;}.has-contrast-background-color{background-color: var(--wp--preset--color--contrast) !important;}.has-primary-background-color{background-color: var(--wp--preset--color--primary) !important;}.has-secondary-background-color{background-color: var(--wp--preset--color--secondary) !important;}.has-tertiary-background-color{background-color: var(--wp--preset--color--tertiary) !important;}.has-black-border-color{border-color: var(--wp--preset--color--black) !important;}.has-cyan-bluish-gray-border-color{border-color: var(--wp--preset--color--cyan-bluish-gray) !important;}.has-white-border-color{border-color: var(--wp--preset--color--white) !important;}.has-pale-pink-border-color{border-color: var(--wp--preset--color--pale-pink) !important;}.has-vivid-red-border-color{border-color: var(--wp--preset--color--vivid-red) !important;}.has-luminous-vivid-orange-border-color{border-color: var(--wp--preset--color--luminous-vivid-orange) !important;}.has-luminous-vivid-amber-border-color{border-color: var(--wp--preset--color--luminous-vivid-amber) !important;}.has-light-green-cyan-border-color{border-color: var(--wp--preset--color--light-green-cyan) !important;}.has-vivid-green-cyan-border-color{border-color: var(--wp--preset--color--vivid-green-cyan) !important;}.has-pale-cyan-blue-border-color{border-color: var(--wp--preset--color--pale-cyan-blue) !important;}.has-vivid-cyan-blue-border-color{border-color: var(--wp--preset--color--vivid-cyan-blue) !important;}.has-vivid-purple-border-color{border-color: var(--wp--preset--color--vivid-purple) !important;}.has-base-border-color{border-color: var(--wp--preset--color--base) !important;}.has-contrast-border-color{border-color: var(--wp--preset--color--contrast) !important;}.has-primary-border-color{border-color: var(--wp--preset--color--primary) !important;}.has-secondary-border-color{border-color: var(--wp--preset--color--secondary) !important;}.has-tertiary-border-color{border-color: var(--wp--preset--color--tertiary) !important;}.has-vivid-cyan-blue-to-vivid-purple-gradient-background{background: var(--wp--preset--gradient--vivid-cyan-blue-to-vivid-purple) !important;}.has-light-green-cyan-to-vivid-green-cyan-gradient-background{background: var(--wp--preset--gradient--light-green-cyan-to-vivid-green-cyan) !important;}.has-luminous-vivid-amber-to-luminous-vivid-orange-gradient-background{background: var(--wp--preset--gradient--luminous-vivid-amber-to-luminous-vivid-orange) !important;}.has-luminous-vivid-orange-to-vivid-red-gradient-background{background: var(--wp--preset--gradient--luminous-vivid-orange-to-vivid-red) !important;}.has-very-light-gray-to-cyan-bluish-gray-gradient-background{background: var(--wp--preset--gradient--very-light-gray-to-cyan-bluish-gray) !important;}.has-cool-to-warm-spectrum-gradient-background{background: var(--wp--preset--gradient--cool-to-warm-spectrum) !important;}.has-blush-light-purple-gradient-background{background: var(--wp--preset--gradient--blush-light-purple) !important;}.has-blush-bordeaux-gradient-background{background: var(--wp--preset--gradient--blush-bordeaux) !important;}.has-luminous-dusk-gradient-background{background: var(--wp--preset--gradient--luminous-dusk) !important;}.has-pale-ocean-gradient-background{background: var(--wp--preset--gradient--pale-ocean) !important;}.has-electric-grass-gradient-background{background: var(--wp--preset--gradient--electric-grass) !important;}.has-midnight-gradient-background{background: var(--wp--preset--gradient--midnight) !important;}.has-small-font-size{font-size: var(--wp--preset--font-size--small) !important;}.has-medium-font-size{font-size: var(--wp--preset--font-size--medium) !important;}.has-large-font-size{font-size: var(--wp--preset--font-size--large) !important;}.has-x-large-font-size{font-size: var(--wp--preset--font-size--x-large) !important;}.has-xx-large-font-size{font-size: var(--wp--preset--font-size--xx-large) !important;}.has-dm-sans-font-family{font-family: var(--wp--preset--font-family--dm-sans) !important;}.has-ibm-plex-mono-font-family{font-family: var(--wp--preset--font-family--ibm-plex-mono) !important;}.has-inter-font-family{font-family: var(--wp--preset--font-family--inter) !important;}.has-system-font-font-family{font-family: var(--wp--preset--font-family--system-font) !important;}.has-source-serif-pro-font-family{font-family: var(--wp--preset--font-family--source-serif-pro) !important;}', 'no'),
(185, '_transient_timeout_global_styles_svg_filters_twentytwentythree', '1676688265', 'no'),
(186, '_transient_global_styles_svg_filters_twentytwentythree', '<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 0 0\" width=\"0\" height=\"0\" focusable=\"false\" role=\"none\" style=\"visibility: hidden; position: absolute; left: -9999px; overflow: hidden;\" ><defs><filter id=\"wp-duotone-dark-grayscale\"><feColorMatrix color-interpolation-filters=\"sRGB\" type=\"matrix\" values=\" .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 \" /><feComponentTransfer color-interpolation-filters=\"sRGB\" ><feFuncR type=\"table\" tableValues=\"0 0.49803921568627\" /><feFuncG type=\"table\" tableValues=\"0 0.49803921568627\" /><feFuncB type=\"table\" tableValues=\"0 0.49803921568627\" /><feFuncA type=\"table\" tableValues=\"1 1\" /></feComponentTransfer><feComposite in2=\"SourceGraphic\" operator=\"in\" /></filter></defs></svg><svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 0 0\" width=\"0\" height=\"0\" focusable=\"false\" role=\"none\" style=\"visibility: hidden; position: absolute; left: -9999px; overflow: hidden;\" ><defs><filter id=\"wp-duotone-grayscale\"><feColorMatrix color-interpolation-filters=\"sRGB\" type=\"matrix\" values=\" .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 \" /><feComponentTransfer color-interpolation-filters=\"sRGB\" ><feFuncR type=\"table\" tableValues=\"0 1\" /><feFuncG type=\"table\" tableValues=\"0 1\" /><feFuncB type=\"table\" tableValues=\"0 1\" /><feFuncA type=\"table\" tableValues=\"1 1\" /></feComponentTransfer><feComposite in2=\"SourceGraphic\" operator=\"in\" /></filter></defs></svg><svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 0 0\" width=\"0\" height=\"0\" focusable=\"false\" role=\"none\" style=\"visibility: hidden; position: absolute; left: -9999px; overflow: hidden;\" ><defs><filter id=\"wp-duotone-purple-yellow\"><feColorMatrix color-interpolation-filters=\"sRGB\" type=\"matrix\" values=\" .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 \" /><feComponentTransfer color-interpolation-filters=\"sRGB\" ><feFuncR type=\"table\" tableValues=\"0.54901960784314 0.98823529411765\" /><feFuncG type=\"table\" tableValues=\"0 1\" /><feFuncB type=\"table\" tableValues=\"0.71764705882353 0.25490196078431\" /><feFuncA type=\"table\" tableValues=\"1 1\" /></feComponentTransfer><feComposite in2=\"SourceGraphic\" operator=\"in\" /></filter></defs></svg><svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 0 0\" width=\"0\" height=\"0\" focusable=\"false\" role=\"none\" style=\"visibility: hidden; position: absolute; left: -9999px; overflow: hidden;\" ><defs><filter id=\"wp-duotone-blue-red\"><feColorMatrix color-interpolation-filters=\"sRGB\" type=\"matrix\" values=\" .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 \" /><feComponentTransfer color-interpolation-filters=\"sRGB\" ><feFuncR type=\"table\" tableValues=\"0 1\" /><feFuncG type=\"table\" tableValues=\"0 0.27843137254902\" /><feFuncB type=\"table\" tableValues=\"0.5921568627451 0.27843137254902\" /><feFuncA type=\"table\" tableValues=\"1 1\" /></feComponentTransfer><feComposite in2=\"SourceGraphic\" operator=\"in\" /></filter></defs></svg><svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 0 0\" width=\"0\" height=\"0\" focusable=\"false\" role=\"none\" style=\"visibility: hidden; position: absolute; left: -9999px; overflow: hidden;\" ><defs><filter id=\"wp-duotone-midnight\"><feColorMatrix color-interpolation-filters=\"sRGB\" type=\"matrix\" values=\" .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 \" /><feComponentTransfer color-interpolation-filters=\"sRGB\" ><feFuncR type=\"table\" tableValues=\"0 0\" /><feFuncG type=\"table\" tableValues=\"0 0.64705882352941\" /><feFuncB type=\"table\" tableValues=\"0 1\" /><feFuncA type=\"table\" tableValues=\"1 1\" /></feComponentTransfer><feComposite in2=\"SourceGraphic\" operator=\"in\" /></filter></defs></svg><svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 0 0\" width=\"0\" height=\"0\" focusable=\"false\" role=\"none\" style=\"visibility: hidden; position: absolute; left: -9999px; overflow: hidden;\" ><defs><filter id=\"wp-duotone-magenta-yellow\"><feColorMatrix color-interpolation-filters=\"sRGB\" type=\"matrix\" values=\" .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 \" /><feComponentTransfer color-interpolation-filters=\"sRGB\" ><feFuncR type=\"table\" tableValues=\"0.78039215686275 1\" /><feFuncG type=\"table\" tableValues=\"0 0.94901960784314\" /><feFuncB type=\"table\" tableValues=\"0.35294117647059 0.47058823529412\" /><feFuncA type=\"table\" tableValues=\"1 1\" /></feComponentTransfer><feComposite in2=\"SourceGraphic\" operator=\"in\" /></filter></defs></svg><svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 0 0\" width=\"0\" height=\"0\" focusable=\"false\" role=\"none\" style=\"visibility: hidden; position: absolute; left: -9999px; overflow: hidden;\" ><defs><filter id=\"wp-duotone-purple-green\"><feColorMatrix color-interpolation-filters=\"sRGB\" type=\"matrix\" values=\" .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 \" /><feComponentTransfer color-interpolation-filters=\"sRGB\" ><feFuncR type=\"table\" tableValues=\"0.65098039215686 0.40392156862745\" /><feFuncG type=\"table\" tableValues=\"0 1\" /><feFuncB type=\"table\" tableValues=\"0.44705882352941 0.4\" /><feFuncA type=\"table\" tableValues=\"1 1\" /></feComponentTransfer><feComposite in2=\"SourceGraphic\" operator=\"in\" /></filter></defs></svg><svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 0 0\" width=\"0\" height=\"0\" focusable=\"false\" role=\"none\" style=\"visibility: hidden; position: absolute; left: -9999px; overflow: hidden;\" ><defs><filter id=\"wp-duotone-blue-orange\"><feColorMatrix color-interpolation-filters=\"sRGB\" type=\"matrix\" values=\" .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 \" /><feComponentTransfer color-interpolation-filters=\"sRGB\" ><feFuncR type=\"table\" tableValues=\"0.098039215686275 1\" /><feFuncG type=\"table\" tableValues=\"0 0.66274509803922\" /><feFuncB type=\"table\" tableValues=\"0.84705882352941 0.41960784313725\" /><feFuncA type=\"table\" tableValues=\"1 1\" /></feComponentTransfer><feComposite in2=\"SourceGraphic\" operator=\"in\" /></filter></defs></svg>', 'no'),
(188, '_site_transient_timeout_theme_roots', '1676690012', 'no'),
(189, '_site_transient_theme_roots', 'a:17:{s:14:\"ample-business\";s:7:\"/themes\";s:18:\"consulting-company\";s:7:\"/themes\";s:17:\"corporate-company\";s:7:\"/themes\";s:15:\"it-company-lite\";s:7:\"/themes\";s:10:\"it-company\";s:7:\"/themes\";s:19:\"lz-software-company\";s:7:\"/themes\";s:16:\"mh-magazine-lite\";s:7:\"/themes\";s:19:\"moving-company-lite\";s:7:\"/themes\";s:13:\"rara-business\";s:7:\"/themes\";s:16:\"software-company\";s:7:\"/themes\";s:21:\"tech-software-company\";s:7:\"/themes\";s:14:\"twentynineteen\";s:7:\"/themes\";s:12:\"twentytwenty\";s:7:\"/themes\";s:15:\"twentytwentyone\";s:7:\"/themes\";s:17:\"twentytwentythree\";s:7:\"/themes\";s:15:\"twentytwentytwo\";s:7:\"/themes\";s:19:\"vw-cleaning-company\";s:7:\"/themes\";}', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(190, '_site_transient_update_themes', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1676688217;s:7:\"checked\";a:17:{s:14:\"ample-business\";s:5:\"1.0.7\";s:18:\"consulting-company\";s:5:\"1.1.1\";s:17:\"corporate-company\";s:5:\"0.0.3\";s:15:\"it-company-lite\";s:5:\"0.6.4\";s:10:\"it-company\";s:5:\"0.8.4\";s:19:\"lz-software-company\";s:5:\"0.2.6\";s:16:\"mh-magazine-lite\";s:5:\"2.9.2\";s:19:\"moving-company-lite\";s:5:\"0.6.1\";s:13:\"rara-business\";s:5:\"1.2.3\";s:16:\"software-company\";s:5:\"1.0.6\";s:21:\"tech-software-company\";s:5:\"0.1.7\";s:14:\"twentynineteen\";s:3:\"2.2\";s:12:\"twentytwenty\";s:3:\"1.9\";s:15:\"twentytwentyone\";s:3:\"1.4\";s:17:\"twentytwentythree\";s:3:\"1.0\";s:15:\"twentytwentytwo\";s:3:\"1.1\";s:19:\"vw-cleaning-company\";s:5:\"0.7.1\";}s:8:\"response\";a:12:{s:18:\"consulting-company\";a:6:{s:5:\"theme\";s:18:\"consulting-company\";s:11:\"new_version\";s:5:\"1.1.2\";s:3:\"url\";s:48:\"https://wordpress.org/themes/consulting-company/\";s:7:\"package\";s:66:\"https://downloads.wordpress.org/theme/consulting-company.1.1.2.zip\";s:8:\"requires\";s:3:\"5.0\";s:12:\"requires_php\";s:3:\"7.4\";}s:15:\"it-company-lite\";a:6:{s:5:\"theme\";s:15:\"it-company-lite\";s:11:\"new_version\";s:5:\"0.7.6\";s:3:\"url\";s:45:\"https://wordpress.org/themes/it-company-lite/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/theme/it-company-lite.0.7.6.zip\";s:8:\"requires\";s:3:\"5.0\";s:12:\"requires_php\";s:3:\"7.2\";}s:10:\"it-company\";a:6:{s:5:\"theme\";s:10:\"it-company\";s:11:\"new_version\";s:5:\"0.9.9\";s:3:\"url\";s:40:\"https://wordpress.org/themes/it-company/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/theme/it-company.0.9.9.zip\";s:8:\"requires\";s:3:\"5.0\";s:12:\"requires_php\";s:3:\"7.2\";}s:19:\"lz-software-company\";a:6:{s:5:\"theme\";s:19:\"lz-software-company\";s:11:\"new_version\";s:5:\"0.2.9\";s:3:\"url\";s:49:\"https://wordpress.org/themes/lz-software-company/\";s:7:\"package\";s:67:\"https://downloads.wordpress.org/theme/lz-software-company.0.2.9.zip\";s:8:\"requires\";b:0;s:12:\"requires_php\";s:3:\"7.2\";}s:19:\"moving-company-lite\";a:6:{s:5:\"theme\";s:19:\"moving-company-lite\";s:11:\"new_version\";s:5:\"0.7.5\";s:3:\"url\";s:49:\"https://wordpress.org/themes/moving-company-lite/\";s:7:\"package\";s:67:\"https://downloads.wordpress.org/theme/moving-company-lite.0.7.5.zip\";s:8:\"requires\";s:3:\"5.0\";s:12:\"requires_php\";s:3:\"7.2\";}s:13:\"rara-business\";a:6:{s:5:\"theme\";s:13:\"rara-business\";s:11:\"new_version\";s:5:\"1.2.4\";s:3:\"url\";s:43:\"https://wordpress.org/themes/rara-business/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/rara-business.1.2.4.zip\";s:8:\"requires\";s:3:\"4.7\";s:12:\"requires_php\";s:3:\"5.8\";}s:21:\"tech-software-company\";a:6:{s:5:\"theme\";s:21:\"tech-software-company\";s:11:\"new_version\";s:5:\"0.2.7\";s:3:\"url\";s:51:\"https://wordpress.org/themes/tech-software-company/\";s:7:\"package\";s:69:\"https://downloads.wordpress.org/theme/tech-software-company.0.2.7.zip\";s:8:\"requires\";s:3:\"5.0\";s:12:\"requires_php\";s:3:\"7.2\";}s:14:\"twentynineteen\";a:6:{s:5:\"theme\";s:14:\"twentynineteen\";s:11:\"new_version\";s:3:\"2.4\";s:3:\"url\";s:44:\"https://wordpress.org/themes/twentynineteen/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/theme/twentynineteen.2.4.zip\";s:8:\"requires\";s:5:\"4.9.6\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:12:\"twentytwenty\";a:6:{s:5:\"theme\";s:12:\"twentytwenty\";s:11:\"new_version\";s:3:\"2.1\";s:3:\"url\";s:42:\"https://wordpress.org/themes/twentytwenty/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/theme/twentytwenty.2.1.zip\";s:8:\"requires\";s:3:\"4.7\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:15:\"twentytwentyone\";a:6:{s:5:\"theme\";s:15:\"twentytwentyone\";s:11:\"new_version\";s:3:\"1.7\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentytwentyone/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentytwentyone.1.7.zip\";s:8:\"requires\";s:3:\"5.3\";s:12:\"requires_php\";s:3:\"5.6\";}s:15:\"twentytwentytwo\";a:6:{s:5:\"theme\";s:15:\"twentytwentytwo\";s:11:\"new_version\";s:3:\"1.3\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentytwentytwo/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentytwentytwo.1.3.zip\";s:8:\"requires\";s:3:\"5.9\";s:12:\"requires_php\";s:3:\"5.6\";}s:19:\"vw-cleaning-company\";a:6:{s:5:\"theme\";s:19:\"vw-cleaning-company\";s:11:\"new_version\";s:5:\"0.8.3\";s:3:\"url\";s:49:\"https://wordpress.org/themes/vw-cleaning-company/\";s:7:\"package\";s:67:\"https://downloads.wordpress.org/theme/vw-cleaning-company.0.8.3.zip\";s:8:\"requires\";s:3:\"5.0\";s:12:\"requires_php\";s:3:\"7.2\";}}s:9:\"no_update\";a:5:{s:14:\"ample-business\";a:6:{s:5:\"theme\";s:14:\"ample-business\";s:11:\"new_version\";s:5:\"1.0.7\";s:3:\"url\";s:44:\"https://wordpress.org/themes/ample-business/\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/theme/ample-business.1.0.7.zip\";s:8:\"requires\";b:0;s:12:\"requires_php\";s:3:\"5.2\";}s:17:\"corporate-company\";a:6:{s:5:\"theme\";s:17:\"corporate-company\";s:11:\"new_version\";s:5:\"0.0.3\";s:3:\"url\";s:47:\"https://wordpress.org/themes/corporate-company/\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/theme/corporate-company.0.0.3.zip\";s:8:\"requires\";b:0;s:12:\"requires_php\";b:0;}s:16:\"mh-magazine-lite\";a:6:{s:5:\"theme\";s:16:\"mh-magazine-lite\";s:11:\"new_version\";s:5:\"2.9.2\";s:3:\"url\";s:46:\"https://wordpress.org/themes/mh-magazine-lite/\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/theme/mh-magazine-lite.2.9.2.zip\";s:8:\"requires\";b:0;s:12:\"requires_php\";s:3:\"5.6\";}s:16:\"software-company\";a:6:{s:5:\"theme\";s:16:\"software-company\";s:11:\"new_version\";s:5:\"1.0.6\";s:3:\"url\";s:46:\"https://wordpress.org/themes/software-company/\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/theme/software-company.1.0.6.zip\";s:8:\"requires\";b:0;s:12:\"requires_php\";s:3:\"5.6\";}s:17:\"twentytwentythree\";a:6:{s:5:\"theme\";s:17:\"twentytwentythree\";s:11:\"new_version\";s:3:\"1.0\";s:3:\"url\";s:47:\"https://wordpress.org/themes/twentytwentythree/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/theme/twentytwentythree.1.0.zip\";s:8:\"requires\";s:3:\"6.1\";s:12:\"requires_php\";s:3:\"5.6\";}}s:12:\"translations\";a:0:{}}', 'no'),
(191, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1676688219;s:8:\"response\";a:3:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"5.0.2\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.5.0.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:60:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=2818463\";s:2:\"1x\";s:60:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=2818463\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.0\";s:6:\"tested\";s:5:\"6.1.1\";s:12:\"requires_php\";s:3:\"5.2\";}s:31:\"ibtana-visual-editor/plugin.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:34:\"w.org/plugins/ibtana-visual-editor\";s:4:\"slug\";s:20:\"ibtana-visual-editor\";s:6:\"plugin\";s:31:\"ibtana-visual-editor/plugin.php\";s:11:\"new_version\";s:5:\"1.1.9\";s:3:\"url\";s:51:\"https://wordpress.org/plugins/ibtana-visual-editor/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/ibtana-visual-editor.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:73:\"https://ps.w.org/ibtana-visual-editor/assets/icon-256x256.gif?rev=2482590\";s:2:\"1x\";s:73:\"https://ps.w.org/ibtana-visual-editor/assets/icon-128x128.gif?rev=2482590\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:75:\"https://ps.w.org/ibtana-visual-editor/assets/banner-772x250.png?rev=2433097\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.2\";s:6:\"tested\";s:5:\"6.1.1\";s:12:\"requires_php\";s:3:\"7.2\";}s:25:\"usc-e-shop/usc-e-shop.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:24:\"w.org/plugins/usc-e-shop\";s:4:\"slug\";s:10:\"usc-e-shop\";s:6:\"plugin\";s:25:\"usc-e-shop/usc-e-shop.php\";s:11:\"new_version\";s:6:\"2.8.12\";s:3:\"url\";s:41:\"https://wordpress.org/plugins/usc-e-shop/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/usc-e-shop.2.8.12.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:63:\"https://ps.w.org/usc-e-shop/assets/icon-256x256.png?rev=2072308\";s:2:\"1x\";s:55:\"https://ps.w.org/usc-e-shop/assets/icon.svg?rev=2072308\";s:3:\"svg\";s:55:\"https://ps.w.org/usc-e-shop/assets/icon.svg?rev=2072308\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:65:\"https://ps.w.org/usc-e-shop/assets/banner-772x250.png?rev=2072308\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.5\";s:6:\"tested\";s:5:\"6.1.1\";s:12:\"requires_php\";s:3:\"7.4\";}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:2:{s:39:\"devvn-local-store/devvn-local-store.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:31:\"w.org/plugins/devvn-local-store\";s:4:\"slug\";s:17:\"devvn-local-store\";s:6:\"plugin\";s:39:\"devvn-local-store/devvn-local-store.php\";s:11:\"new_version\";s:5:\"1.0.8\";s:3:\"url\";s:48:\"https://wordpress.org/plugins/devvn-local-store/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/devvn-local-store.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/devvn-local-store/assets/icon-256x256.png?rev=1659213\";s:2:\"1x\";s:70:\"https://ps.w.org/devvn-local-store/assets/icon-128x128.png?rev=1659213\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:73:\"https://ps.w.org/devvn-local-store/assets/banner-1544x500.png?rev=1659213\";s:2:\"1x\";s:72:\"https://ps.w.org/devvn-local-store/assets/banner-772x250.png?rev=1659213\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.3\";}s:9:\"hello.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/hello-dolly/assets/banner-1544x500.jpg?rev=2645582\";s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.6\";}}s:7:\"checked\";a:5:{s:19:\"akismet/akismet.php\";s:5:\"4.2.1\";s:39:\"devvn-local-store/devvn-local-store.php\";s:5:\"1.0.8\";s:9:\"hello.php\";s:5:\"1.7.2\";s:31:\"ibtana-visual-editor/plugin.php\";s:7:\"1.1.5.4\";s:25:\"usc-e-shop/usc-e-shop.php\";s:5:\"2.5.8\";}}', 'no');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Đang đổ dữ liệu cho bảng `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT 0,
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Đang đổ dữ liệu cho bảng `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2022-12-18 13:07:09', '2022-12-18 13:07:09', '<!-- wp:paragraph -->\n<p>Cảm ơn vì đã sử dụng WordPress. Đây là bài viết đầu tiên của bạn. Sửa hoặc xóa nó, và bắt đầu bài viết của bạn nhé!</p>\n<!-- /wp:paragraph -->', 'Chào tất cả mọi người!', '', 'publish', 'open', 'open', '', 'chao-moi-nguoi', '', '', '2022-12-18 13:07:09', '2022-12-18 13:07:09', '', 0, 'http://localhost:8080/wordpress/wordpress/?p=1', 0, 'post', '', 1),
(2, 1, '2022-12-18 13:07:09', '2022-12-18 13:07:09', '<!-- wp:paragraph -->\n<p>Đây là trang mẫu. Nó khác với bài viết bởi vì nó thường cố định và hiển thị trong menu của bạn. Nhiều người bắt đầu với trang Giới thiệu nơi bạn chia sẻ thông tin cho những ai ghé thăm. Nó có thể bắt đầu như thế này:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Chào bạn! Tôi là một người bán hàng, và đây là website của tôi. Tôi sống ở Hà Nội, có một gia đình nhỏ, và tôi thấy cách sử dụng WordPress rất thú vị.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>... hoặc cái gì đó như thế này:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Công ty chúng tôi được thành lập năm 2010, và cung cấp dịch vụ chất lượng cho rất nhiều sự kiện tại khắp Việt Nam. Với văn phòng đặt tại Hà Nội, TP. Hồ Chí Minh cùng hơn 40 nhân sự, chúng tôi là nơi nhiều đối tác tin tưởng giao cho tổ chức các sự kiện lớn.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>Là một người dùng WordPress mới, bạn nên ghé thăm <a href=\"http://localhost:8080/wordpress/wordpress/wp-admin/\">bảng tin</a> để xóa trang này và tạo trang mới cho nội dung của chính bạn. Chúc bạn vui vẻ!</p>\n<!-- /wp:paragraph -->', 'Trang Mẫu', '', 'publish', 'closed', 'open', '', 'Trang mẫu', '', '', '2022-12-18 13:07:09', '2022-12-18 13:07:09', '', 0, 'http://localhost:8080/wordpress/wordpress/?page_id=2', 0, 'page', '', 0),
(3, 1, '2022-12-18 13:07:09', '2022-12-18 13:07:09', '<!-- wp:heading --><h2>Chúng tôi là ai</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Văn bản được đề xuất: </strong>Địa chỉ website là: http://localhost:8080/wordpress/wordpress.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Bình luận</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Văn bản được đề xuất: </strong>Khi khách truy cập để lại bình luận trên trang web, chúng tôi thu thập dữ liệu được hiển thị trong biểu mẫu bình luận và cũng là địa chỉ IP của người truy cập và chuỗi user agent của người dùng trình duyệt để giúp phát hiện spam</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Một chuỗi ẩn danh được tạo từ địa chỉ email của bạn (còn được gọi là hash) có thể được cung cấp cho dịch vụ Gravatar để xem bạn có đang sử dụng nó hay không. Chính sách bảo mật của dịch vụ Gravatar có tại đây: https://automattic.com/privacy/. Sau khi chấp nhận bình luận của bạn, ảnh tiểu sử của bạn được hiển thị công khai trong ngữ cảnh bình luận của bạn.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Media</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Văn bản được đề xuất: </strong>Nếu bạn tải hình ảnh lên trang web, bạn nên tránh tải lên hình ảnh có dữ liệu vị trí được nhúng (EXIF GPS) đi kèm. Khách truy cập vào trang web có thể tải xuống và giải nén bất kỳ dữ liệu vị trí nào từ hình ảnh trên trang web.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Cookies</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Văn bản được đề xuất: </strong>Nếu bạn viết bình luận trong website, bạn có thể cung cấp cần nhập tên, email địa chỉ website trong cookie. Các thông tin này nhằm giúp bạn không cần nhập thông tin nhiều lần khi viết bình luận khác. Cookie này sẽ được lưu giữ trong một năm.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Nếu bạn vào trang đăng nhập, chúng tôi sẽ thiết lập một cookie tạm thời để xác định nếu trình duyệt cho phép sử dụng cookie. Cookie này không bao gồm thông tin cá nhân và sẽ được gỡ bỏ khi bạn đóng trình duyệt.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Khi bạn đăng nhập, chúng tôi sẽ thiết lập một vài cookie để lưu thông tin đăng nhập và lựa chọn hiển thị. Thông tin đăng nhập gần nhất lưu trong hai ngày, và lựa chọn hiển thị gần nhất lưu trong một năm. Nếu bạn chọn &quot;Nhớ tôi&quot;, thông tin đăng nhập sẽ được lưu trong hai tuần. Nếu bạn thoát tài khoản, thông tin cookie đăng nhập sẽ bị xoá.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Nếu bạn sửa hoặc công bố bài viết, một bản cookie bổ sung sẽ được lưu trong trình duyệt. Cookie này không chứa thông tin cá nhân và chỉ đơn giản bao gồm ID của bài viết bạn đã sửa. Nó tự động hết hạn sau 1 ngày.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Nội dung nhúng từ website khác</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Văn bản được đề xuất: </strong>Các bài viết trên trang web này có thể bao gồm nội dung được nhúng (ví dụ: video, hình ảnh, bài viết, v.v.). Nội dung được nhúng từ các trang web khác hoạt động theo cùng một cách chính xác như khi khách truy cập đã truy cập trang web khác.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Những website này có thể thu thập dữ liệu về bạn, sử dụng cookie, nhúng các trình theo dõi của bên thứ ba và giám sát tương tác của bạn với nội dung được nhúng đó, bao gồm theo dõi tương tác của bạn với nội dung được nhúng nếu bạn có tài khoản và đã đăng nhập vào trang web đó.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Chúng tôi chia sẻ dữ liệu của bạn với ai</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Văn bản được đề xuất: </strong>If you request a password reset, your IP address will be included in the reset email.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Dữ liệu của bạn tồn tại bao lâu</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Văn bản được đề xuất: </strong>Nếu bạn để lại bình luận, bình luận và siêu dữ liệu của nó sẽ được giữ lại vô thời hạn. Điều này là để chúng tôi có thể tự động nhận ra và chấp nhận bất kỳ bình luận nào thay vì giữ chúng trong khu vực đợi kiểm duyệt.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Đối với người dùng đăng ký trên trang web của chúng tôi (nếu có), chúng tôi cũng lưu trữ thông tin cá nhân mà họ cung cấp trong hồ sơ người dùng của họ. Tất cả người dùng có thể xem, chỉnh sửa hoặc xóa thông tin cá nhân của họ bất kỳ lúc nào (ngoại trừ họ không thể thay đổi tên người dùng của họ). Quản trị viên trang web cũng có thể xem và chỉnh sửa thông tin đó.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Các quyền nào của bạn với dữ liệu của mình</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Văn bản được đề xuất: </strong>Nếu bạn có tài khoản trên trang web này hoặc đã để lại nhận xét, bạn có thể yêu cầu nhận tệp xuất dữ liệu cá nhân mà chúng tôi lưu giữ về bạn, bao gồm mọi dữ liệu bạn đã cung cấp cho chúng tôi. Bạn cũng có thể yêu cầu chúng tôi xóa mọi dữ liệu cá nhân mà chúng tôi lưu giữ về bạn. Điều này không bao gồm bất kỳ dữ liệu nào chúng tôi có nghĩa vụ giữ cho các mục đích hành chính, pháp lý hoặc bảo mật.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Dữ liệu của bạn được gửi đến đâu</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Văn bản được đề xuất: </strong>Các bình luận của khách (không phải là thành viên) có thể được kiểm tra thông qua dịch vụ tự động phát hiện spam.</p><!-- /wp:paragraph -->', 'Chính sách bảo mật', '', 'draft', 'closed', 'open', '', 'chinh-sach-bao-mat', '', '', '2022-12-18 13:07:09', '2022-12-18 13:07:09', '', 0, 'http://localhost:8080/wordpress/wordpress/?page_id=3', 0, 'page', '', 0),
(5, 1, '2022-12-18 13:09:13', '2022-12-18 13:09:13', '{\"version\": 2, \"isGlobalStylesUserThemeJSON\": true }', 'Custom Styles', '', 'publish', 'closed', 'closed', '', 'wp-global-styles-twentytwentythree', '', '', '2022-12-18 13:09:13', '2022-12-18 13:09:13', '', 0, 'http://localhost:8080/wordpress/wordpress/index.php/2022/12/18/wp-global-styles-twentytwentythree/', 0, 'wp_global_styles', '', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Đang đổ dữ liệu cho bảng `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Chưa phân loại', 'khong-phan-loai', 0),
(2, 'twentytwentythree', 'twentytwentythree', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_order` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Đang đổ dữ liệu cho bảng `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(5, 2, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Đang đổ dữ liệu cho bảng `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'wp_theme', '', 0, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Đang đổ dữ liệu cho bảng `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:1:{s:64:\"d477dc977df11871647794c1beb139773454d4edfec28cd035c8d3c8e9c93090\";a:4:{s:10:\"expiration\";i:1671541657;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:110:\"Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36\";s:5:\"login\";i:1671368857;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '4'),
(18, 1, 'wp_persisted_preferences', 'a:2:{s:14:\"core/edit-site\";a:1:{s:12:\"welcomeGuide\";b:0;}s:9:\"_modified\";s:24:\"2022-12-18T13:09:24.099Z\";}');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT 0,
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Đang đổ dữ liệu cho bảng `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$BvplGKa1IgRl9yqteBMy/6IPN9buxb0', 'admin', 'ngovu2121@gmail.com', 'http://localhost:8080/wordpress/wordpress', '2022-12-18 13:07:06', '', 0, 'admin');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Chỉ mục cho bảng `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Chỉ mục cho bảng `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Chỉ mục cho bảng `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Chỉ mục cho bảng `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Chỉ mục cho bảng `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Chỉ mục cho bảng `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Chỉ mục cho bảng `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Chỉ mục cho bảng `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Chỉ mục cho bảng `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Chỉ mục cho bảng `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Chỉ mục cho bảng `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=192;

--
-- AUTO_INCREMENT cho bảng `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT cho bảng `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
