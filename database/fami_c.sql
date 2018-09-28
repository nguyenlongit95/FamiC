-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th9 28, 2018 lúc 08:28 AM
-- Phiên bản máy phục vụ: 10.1.34-MariaDB
-- Phiên bản PHP: 7.2.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `fami_c`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `famic_banner`
--

CREATE TABLE `famic_banner` (
  `ID` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `img` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `famic_category`
--

CREATE TABLE `famic_category` (
  `ID` int(11) NOT NULL,
  `IDmaincategory` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `famic_contact`
--

CREATE TABLE `famic_contact` (
  `ID` int(11) NOT NULL,
  `address` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `famic_employee`
--

CREATE TABLE `famic_employee` (
  `ID` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `address` varchar(50) NOT NULL,
  `level` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `famic_maincategory`
--

CREATE TABLE `famic_maincategory` (
  `ID` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `famic_order`
--

CREATE TABLE `famic_order` (
  `ID` int(11) NOT NULL,
  `IDuser` int(11) NOT NULL,
  `IDstateorder` int(11) NOT NULL,
  `addressTrade` varchar(50) NOT NULL,
  `totalPrice` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `famic_orderdetails`
--

CREATE TABLE `famic_orderdetails` (
  `ID` int(11) NOT NULL,
  `IDproduct` int(11) NOT NULL,
  `IDorder` int(11) NOT NULL,
  `Qty` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `famic_product`
--

CREATE TABLE `famic_product` (
  `ID` int(11) NOT NULL,
  `IDstore` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `image` varchar(100) NOT NULL,
  `price` int(11) NOT NULL,
  `sale` int(11) NOT NULL,
  `wholesalePrices` int(11) NOT NULL,
  `entryPrice` int(11) NOT NULL,
  `totalQty` int(11) NOT NULL,
  `origin` varchar(50) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `famic_ratting`
--

CREATE TABLE `famic_ratting` (
  `ID` int(11) NOT NULL,
  `IDproduct` int(11) NOT NULL,
  `star` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `famic_slider`
--

CREATE TABLE `famic_slider` (
  `ID` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `img` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `famic_specialproporties`
--

CREATE TABLE `famic_specialproporties` (
  `ID` int(11) NOT NULL,
  `IDproduct` int(11) NOT NULL,
  `proporties` varchar(50) NOT NULL,
  `value` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `famic_stateorder`
--

CREATE TABLE `famic_stateorder` (
  `ID` int(11) NOT NULL,
  `state` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `famic_store`
--

CREATE TABLE `famic_store` (
  `ID` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `address` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `famic_store`
--

INSERT INTO `famic_store` (`ID`, `name`, `address`, `created_at`, `updated_at`) VALUES
(1, 'FAMI C Hà Nội', 'Số 2, Nguyễn Trãi, Thanh Xuân, Hà Nội', '2018-09-28 06:00:00', '2018-09-28 07:00:00'),
(2, 'FAMI C Đà Nẵng', 'Đà Nẵng', '2018-09-28 06:26:10', '2018-09-28 04:42:00'),
(3, 'FAMI C Hồ Chí Minh', 'Số 156, Quận 4, Tân Bình, HCM', '2018-09-28 06:27:01', '2018-09-27 17:00:00');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `famic_suppermarket`
--

CREATE TABLE `famic_suppermarket` (
  `ID` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `address` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `famic_user`
--

CREATE TABLE `famic_user` (
  `ID` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `address` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `famic_banner`
--
ALTER TABLE `famic_banner`
  ADD PRIMARY KEY (`ID`);

--
-- Chỉ mục cho bảng `famic_category`
--
ALTER TABLE `famic_category`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IDmaincategory` (`IDmaincategory`);

--
-- Chỉ mục cho bảng `famic_contact`
--
ALTER TABLE `famic_contact`
  ADD PRIMARY KEY (`ID`);

--
-- Chỉ mục cho bảng `famic_employee`
--
ALTER TABLE `famic_employee`
  ADD PRIMARY KEY (`ID`);

--
-- Chỉ mục cho bảng `famic_maincategory`
--
ALTER TABLE `famic_maincategory`
  ADD PRIMARY KEY (`ID`);

--
-- Chỉ mục cho bảng `famic_order`
--
ALTER TABLE `famic_order`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IDuser` (`IDuser`),
  ADD KEY `IDstateorder` (`IDstateorder`);

--
-- Chỉ mục cho bảng `famic_orderdetails`
--
ALTER TABLE `famic_orderdetails`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IDproduct` (`IDproduct`),
  ADD KEY `IDorder` (`IDorder`);

--
-- Chỉ mục cho bảng `famic_product`
--
ALTER TABLE `famic_product`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IDstore` (`IDstore`);

--
-- Chỉ mục cho bảng `famic_ratting`
--
ALTER TABLE `famic_ratting`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IDproduct` (`IDproduct`);

--
-- Chỉ mục cho bảng `famic_slider`
--
ALTER TABLE `famic_slider`
  ADD PRIMARY KEY (`ID`);

--
-- Chỉ mục cho bảng `famic_specialproporties`
--
ALTER TABLE `famic_specialproporties`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IDproduct` (`IDproduct`);

--
-- Chỉ mục cho bảng `famic_stateorder`
--
ALTER TABLE `famic_stateorder`
  ADD PRIMARY KEY (`ID`);

--
-- Chỉ mục cho bảng `famic_store`
--
ALTER TABLE `famic_store`
  ADD PRIMARY KEY (`ID`);

--
-- Chỉ mục cho bảng `famic_suppermarket`
--
ALTER TABLE `famic_suppermarket`
  ADD PRIMARY KEY (`ID`);

--
-- Chỉ mục cho bảng `famic_user`
--
ALTER TABLE `famic_user`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `famic_banner`
--
ALTER TABLE `famic_banner`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `famic_category`
--
ALTER TABLE `famic_category`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `famic_contact`
--
ALTER TABLE `famic_contact`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `famic_employee`
--
ALTER TABLE `famic_employee`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `famic_maincategory`
--
ALTER TABLE `famic_maincategory`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `famic_order`
--
ALTER TABLE `famic_order`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `famic_orderdetails`
--
ALTER TABLE `famic_orderdetails`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `famic_product`
--
ALTER TABLE `famic_product`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `famic_ratting`
--
ALTER TABLE `famic_ratting`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `famic_slider`
--
ALTER TABLE `famic_slider`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `famic_specialproporties`
--
ALTER TABLE `famic_specialproporties`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `famic_stateorder`
--
ALTER TABLE `famic_stateorder`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `famic_store`
--
ALTER TABLE `famic_store`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `famic_suppermarket`
--
ALTER TABLE `famic_suppermarket`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `famic_user`
--
ALTER TABLE `famic_user`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `famic_category`
--
ALTER TABLE `famic_category`
  ADD CONSTRAINT `famic_category_ibfk_1` FOREIGN KEY (`IDmaincategory`) REFERENCES `famic_maincategory` (`ID`);

--
-- Các ràng buộc cho bảng `famic_order`
--
ALTER TABLE `famic_order`
  ADD CONSTRAINT `famic_order_ibfk_1` FOREIGN KEY (`IDstateorder`) REFERENCES `famic_stateorder` (`ID`),
  ADD CONSTRAINT `famic_order_ibfk_2` FOREIGN KEY (`IDuser`) REFERENCES `famic_user` (`ID`);

--
-- Các ràng buộc cho bảng `famic_orderdetails`
--
ALTER TABLE `famic_orderdetails`
  ADD CONSTRAINT `famic_orderdetails_ibfk_1` FOREIGN KEY (`IDproduct`) REFERENCES `famic_product` (`ID`),
  ADD CONSTRAINT `famic_orderdetails_ibfk_2` FOREIGN KEY (`IDorder`) REFERENCES `famic_order` (`ID`);

--
-- Các ràng buộc cho bảng `famic_product`
--
ALTER TABLE `famic_product`
  ADD CONSTRAINT `famic_product_ibfk_1` FOREIGN KEY (`IDstore`) REFERENCES `famic_store` (`ID`);

--
-- Các ràng buộc cho bảng `famic_ratting`
--
ALTER TABLE `famic_ratting`
  ADD CONSTRAINT `famic_ratting_ibfk_1` FOREIGN KEY (`IDproduct`) REFERENCES `famic_product` (`ID`);

--
-- Các ràng buộc cho bảng `famic_specialproporties`
--
ALTER TABLE `famic_specialproporties`
  ADD CONSTRAINT `famic_specialproporties_ibfk_1` FOREIGN KEY (`IDproduct`) REFERENCES `famic_product` (`ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
