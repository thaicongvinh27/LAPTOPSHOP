-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th1 06, 2025 lúc 04:05 PM
-- Phiên bản máy phục vụ: 10.4.32-MariaDB
-- Phiên bản PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `laptopshop`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bill`
--

CREATE TABLE `bill` (
  `bill_id` bigint(20) NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `total` decimal(10,0) DEFAULT NULL,
  `payment` varchar(255) DEFAULT NULL,
  `address` longtext DEFAULT NULL,
  `date` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `name` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `bill`
--

INSERT INTO `bill` (`bill_id`, `user_id`, `total`, `payment`, `address`, `date`, `name`, `phone`) VALUES
(1540688906648, 1540688791559, 14000000, 'Bank transfer', '133 nguyên trãi', '2018-10-28 01:08:27', 'lê công tuấn', '01667187796'),
(1540220282040, 1, 14000000, 'Live', 'Viet Nam, sgsfdfgsdgsdf', '2018-10-22 14:58:02', 'chinh dang', '1646920073'),
(1540220182152, 1, 14000000, 'Bank transfer', 'xcz', '2018-10-22 14:56:22', 'fdfs', '0125684'),
(1540007109629, 1, 14000000, 'Bank transfer', 'Ngõ 133 Nguyễn Trãi', '2018-10-20 03:45:10', 'Đặng Xuân Chinh', '01646920073'),
(1735914487218, 1, 33300000, 'Live', 'fkjdfjnkvskljnvjkl', '2025-01-03 14:28:07', 'thaiicongvinh', '0707781602');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bill_detail`
--

CREATE TABLE `bill_detail` (
  `bill_detail_id` bigint(20) NOT NULL,
  `bill_id` bigint(20) DEFAULT NULL,
  `product_id` bigint(20) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `bill_detail`
--

INSERT INTO `bill_detail` (`bill_detail_id`, `bill_id`, `product_id`, `price`, `quantity`) VALUES
(1540220282048, 1540220282040, 1, 14000000, 1),
(1540220182191, 1540220182152, 1, 14000000, 1),
(1540007109652, 1540007109629, 1, 14000000, 1),
(1540688906667, 1540688906648, 1, 14000000, 1),
(1735914487234, 1735914487218, 1540162561158, 1300000, 1),
(1735914487239, 1735914487218, 1540682570394, 32000000, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `brand`
--

CREATE TABLE `brand` (
  `brand_id` bigint(20) NOT NULL,
  `brand_name` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `brand`
--

INSERT INTO `brand` (`brand_id`, `brand_name`) VALUES
(1, 'Asus'),
(2, 'HP'),
(3, 'Dell'),
(4, 'Acer'),
(5, 'Mastel'),
(6, 'Lenovo'),
(7, 'Apple'),
(8, 'Vio'),
(1540000755871, 'Jenny Bo'),
(1540162315801, 'Logitech');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `category`
--

CREATE TABLE `category` (
  `category_id` bigint(11) NOT NULL,
  `category_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `category`
--

INSERT INTO `category` (`category_id`, `category_name`) VALUES
(1, 'Laptop'),
(2, 'PC'),
(1735915051158, 'Chuột'),
(1735915057344, 'Bàn Phím'),
(1735915062825, 'Ổ Cứng');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `contact`
--

CREATE TABLE `contact` (
  `contact_id` bigint(20) NOT NULL,
  `contact_name` varchar(255) DEFAULT NULL,
  `contact_web` varchar(255) DEFAULT NULL,
  `contact_email` varchar(255) DEFAULT NULL,
  `contact_title` varchar(255) DEFAULT NULL,
  `contact_message` longtext DEFAULT NULL,
  `contact_date` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `contact`
--

INSERT INTO `contact` (`contact_id`, `contact_name`, `contact_web`, `contact_email`, `contact_title`, `contact_message`, `contact_date`) VALUES
(1490502122133, 'Thai Cong Vinh', 'caicongvinh.com', 'thaiicongvinh@gmail.com', 'Coder', '12345232432', '2018-10-26 04:47:10');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `newsletter`
--

CREATE TABLE `newsletter` (
  `newsletter_id` bigint(20) NOT NULL,
  `newsletter_email` varchar(255) DEFAULT NULL,
  `date` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `newsletter`
--

INSERT INTO `newsletter` (`newsletter_id`, `newsletter_email`, `date`) VALUES
(1490505766760, 'jennybo.chinh@gmail.com', '2018-10-16 05:22:46');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product`
--

CREATE TABLE `product` (
  `product_id` bigint(20) NOT NULL,
  `category_id` bigint(20) DEFAULT NULL,
  `product_name` varchar(255) DEFAULT NULL,
  `brand_id` bigint(20) DEFAULT NULL,
  `product_image` varchar(255) DEFAULT NULL,
  `product_image_forward` varchar(255) DEFAULT NULL,
  `product_image_back` varchar(255) DEFAULT NULL,
  `product_price` decimal(10,0) DEFAULT NULL,
  `product_description` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product`
--

INSERT INTO `product` (`product_id`, `category_id`, `product_name`, `brand_id`, `product_image`, `product_image_forward`, `product_image_back`, `product_price`, `product_description`) VALUES
(2, 1, 'HP Pavilion 15', 2, 'https://product.hstatic.net/200000722513/product/1024__1__a5023217ab8d4513904d62593a032ea1_grande.png', 'https://product.hstatic.net/200000722513/product/1024__2__06169603ef974daf874ec055a501a783_grande.png', 'https://product.hstatic.net/200000722513/product/1024_aa2292feade7471094a21a2cb73ef920_grande.png', 16500000, 'Laptop HP Pavilion 15 mang đến sự cân bằng hoàn hảo giữa công việc và giải trí.'),
(3, 1, 'Dell Inspiron 14', 3, 'https://product.hstatic.net/200000722513/product/1024__2__06169603ef974daf874ec055a501a783_grande.png', 'https://product.hstatic.net/200000722513/product/dell-inspiron-14-5440-core-7-n4i7204w1-3_063513a1ddad4a4ca9f563a17aa02dfc_grande.jpg', 'https://product.hstatic.net/200000722513/product/notebook-inspiron-15-3530-nt-plastic-silver-gallery-3_98d57f5c0e0740c38a7e87656a448399_grande.jpg', 15000000, 'Dell Inspiron 14 với thiết kế bền bỉ, phù hợp cho sinh viên và nhân viên văn phòng.'),
(4, 1, 'Acer Aspire 7', 4, 'https://product.hstatic.net/200000722513/product/1024_aa2292feade7471094a21a2cb73ef920_grande.png', 'https://product.hstatic.net/200000722513/product/notebook-inspiron-15-3530-nt-plastic-silver-gallery-3_98d57f5c0e0740c38a7e87656a448399_grande.jpg', 'https://product.hstatic.net/200000722513/product/notebook-inspiron-15-3530-nt-plastic-silver-gallery-5_92764be610c24584b943c2b9ead19e07_grande.jpg', 19000000, 'Laptop Acer Aspire 7 dành cho game thủ và người sáng tạo nội dung.'),
(7, 1, 'Logitech G502 Mouse', 9, 'https://product.hstatic.net/200000722513/product/10295_g502_rgb_tunable_gaming_mouse__3__wm.jpg', 'https://product.hstatic.net/200000722513/product/1024__2__daef9377d5214e048a45f01b110eff0f_grande.png', 'https://product.hstatic.net/200000722513/product/notebook-inspiron-15-3530-nt-plastic-silver-gallery-3_98d57f5c0e0740c38a7e87656a448399_grande.jpg', 1200000, 'Chuột gaming Logitech G502 dành cho game thủ chuyên nghiệp.'),
(8, 1, 'Dell Inspiron 15', 3, 'https://product.hstatic.net/200000722513/product/notebook-inspiron-15-3530_99379d1e575240878fb8cad02396a1ce_grande.png', 'https://product.hstatic.net/200000722513/product/notebook-inspiron-15-3530-nt-plastic-silver-gallery-3_98d57f5c0e0740c38a7e87656a448399_grande.jpg', 'https://product.hstatic.net/200000722513/product/notebook-inspiron-15-3530-nt-plastic-silver-gallery-5_92764be610c24584b943c2b9ead19e07_grande.jpg', 18500000, 'Dell Inspiron 15 phù hợp cho cả công việc và học tập.'),
(9, 1, 'Acer Predator Helios', 4, 'https://product.hstatic.net/200000722513/product/1024_7f6f9a22ef244bcc924942c3b75e72c7_1024x1024.png', 'https://product.hstatic.net/200000722513/product/1024_7f6f9a22ef244bcc924942c3b75e72c7_grande.png', 'https://product.hstatic.net/200000722513/product/notebook-inspiron-15-3530-nt-plastic-silver-gallery-3_98d57f5c0e0740c38a7e87656a448399_grande.jpg', 28000000, 'Acer Predator Helios mạnh mẽ, phù hợp cho chơi game nặng.'),
(10, 1, 'Lenovo ThinkPad X1', 6, 'https://product.hstatic.net/200000722513/product/1024__1__389c660e3b0347059bb51da01de4c1de_grande.png', 'https://product.hstatic.net/200000722513/product/1024__2__34b618d746df464d9e6c991bfc23bab7_grande.png', 'https://product.hstatic.net/200000722513/product/s-vivobook-s-16-oled-s5606ma-mx051w_2_6fab4271f27c45e5bd24a9f2c6c069ed_61cf80fbfa634ea3b1787617cecf1735_grande.png', 29000000, 'Lenovo ThinkPad X1 dành cho doanh nhân với thiết kế tinh tế và độ bền cao.'),
(15, 15, 'Asus Vivobook S15', 1, 'https://product.hstatic.net/200000722513/product/1024__4__ab86f4852ea441b4871cce84058c88ef_grande.png', 'https://product.hstatic.net/200000722513/product/1024__2__06169603ef974daf874ec055a501a783_grande.png', 'https://product.hstatic.net/200000722513/product/1024_aa2292feade7471094a21a2cb73ef920_grande.png', 18000000, 'Laptop Asus Vivobook S15 với hiệu năng mạnh mẽ và thiết kế mỏng nhẹ.'),
(1539999235541, 2, 'Dell 1234', 3, 'images/me3.jpg', 'images/me1.jpg', 'images/me.jpg', 32000000, 'HÃ£ng sáº£n xuáº¥t: K&H Gaming\r\nModel: KH24GMC ( MÃ¡y TÃ­nh ChuyÃªn ChÆ¡i Game)\r\nKiá»u DÃ¡ng: PC Tower\r\nChipset: B85M ChuyÃªn Game\r\nIntelÂ® Core i5 4570 Processor 3.20Ghz, Up to 3.6Ghz 4 Core 4 Threads 6M Cache, up to 3.50 GHz cháº¡y cá»±c nhanh\r\nBá» nhá» RAM: 8GB DDR3L\r\nLoáº¡i Ram: DDR 3L\r\ná» cá»©ng HDD: 1TB Tha há» lÆ°u trá»¯ dá»¯ liá»u\r\ná» ÄÄ©a quang ODD: DVD-RW\r\nGiao tiáº¿p máº¡ng: Lan 10/100/1000Mbps\r\nMÃ n hÃ¬nh: ChÆ°a bao gá»m\r\nCard Äá» há»a: GTX 1050 2GB ChuyÃªn Game Cao Cáº¥p\r\nCard Ã¢m thanh: Onboard  2.1 Hight Definition \r\nCÃ¡c cá»ng giao tiáº¿p: USB 3.0, HDMI, Displayport (HDMi), LAN...\r\nHá» Äiá»u hÃ nh: Windowns 7 báº£n quyá»n'),
(1539999605325, 1, 'Dell 3492', 3, 'images/1.jpg', 'images/back.jpg', 'images/bass2.jpg', 12345456, 'adasfadsfasdafsasdfasfdasasdfdasdsa'),
(1540162561158, 3, 'Logitech g502', 1540162315801, 'images/G502-Proteus-Spectrum-Tunable-Gaming-Mouse-3.jpg', '', 'images/19295_g502_rgb_tunable_gaming_mouse__3__wm.png', 1300000, 'Äá» phÃ¢n giáº£i: 12000DPI \r\nGia tá»c tá»i Äa: 40G\r\nTá»c Äá» tá»i Äa: 300IPS\r\nChuáº©n giao tiáº¿p: USB\r\n16,8 triá»u mÃ u'),
(1540679662457, 1, 'Asus3409', 1, 'images/acoustic4.jpg', 'images/acoustic3.jpg', 'images/acoustic2.jpg', 32000000, 'Äáº¹p giÃ¡ ráº» phÃ¹ há»£p vá»i sinh viÃªn.'),
(1540682570394, 5, 'Sandisk 128Gb ssd', 1540000755871, 'images/acoustic5.jpg', 'images/bb.png', 'images/acoustic1.jpg', 32000000, 'Cháº¥t lÆ°á»£ng cao');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `review`
--

CREATE TABLE `review` (
  `review_id` bigint(20) NOT NULL,
  `product_id` bigint(20) DEFAULT NULL,
  `review_name` varchar(255) DEFAULT NULL,
  `review_email` varchar(255) DEFAULT NULL,
  `review_star` int(11) DEFAULT NULL,
  `review_message` longtext DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `review`
--

INSERT INTO `review` (`review_id`, `product_id`, `review_name`, `review_email`, `review_star`, `review_message`) VALUES
(1540680833931, 1539999235541, 'Đặng Xuân Chinh', 'banphimthep@gmail.com', 4, ' Sản phẩm tốt nhưng rất tồi.'),
(1735914420290, 1, 'thaiicongvinh', 'nvloc.bkaedu@gmail.com', 4, ' wdqdqwdqwd');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `useradmin`
--

CREATE TABLE `useradmin` (
  `user_ad_id` bigint(20) NOT NULL,
  `user_ad_email` varchar(255) DEFAULT NULL,
  `user_ad_pass` varchar(255) DEFAULT NULL,
  `user_ad_role` bit(1) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `useradmin`
--

INSERT INTO `useradmin` (`user_ad_id`, `user_ad_email`, `user_ad_pass`, `user_ad_role`) VALUES
(1, 'admin', '123', b'1'),
(2, 'jennybo', '123', b'1');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `user_id` bigint(20) NOT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  `user_email` varchar(255) DEFAULT NULL,
  `user_pass` varchar(255) DEFAULT NULL,
  `user_role` bit(1) DEFAULT NULL,
  `user_phone` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`user_id`, `user_name`, `user_email`, `user_pass`, `user_role`, `user_phone`) VALUES
(1, 'jennybo', 'jennybo.chinh@gmail.com', '123', b'0', '0377944515'),
(1540688791559, 'tuan ', 'lecongtuan8797@gmail.com', '123', b'0', '01667187796'),
(1540012403959, 'adhj', 'fhkkii', '12345678', b'0', 'hhvvc'),
(2, 'LePhong97', 'lephong97@outlook.com', 'pass02', b'1', '0925441271'),
(3, 'DangVan94', 'dangvan94@outlook.com', 'pass03', b'1', '0974512869'),
(4, 'BuiGiang68', 'buigiang68@outlook.com', 'pass04', b'1', '0942539342'),
(5, 'HoangCuong67', 'hoangcuong67@outlook.com', 'pass05', b'1', '0939545526'),
(6, 'BuiGiang70', 'buigiang70@yahoo.com', 'pass06', b'1', '0951356562'),
(7, 'TranTuan22', 'trantuan22@outlook.com', 'pass07', b'1', '0930006803'),
(8, 'TranQuyen99', 'tranquyen99@outlook.com', 'pass08', b'1', '0981601938'),
(9, 'DoGiang27', 'dogiang27@yahoo.com', 'pass09', b'1', '0923703572'),
(10, 'LeMinh57', 'leminh57@outlook.com', 'pass10', b'1', '0952998636'),
(11, 'DangGiang57', 'danggiang57@gmail.com', 'pass11', b'1', '0911225738'),
(12, 'HoangTuan73', 'hoangtuan73@outlook.com', 'pass12', b'1', '0927187098'),
(13, 'DangVan2', 'dangvan2@outlook.com', 'pass13', b'1', '0979695991'),
(14, 'TranPhong40', 'tranphong40@yahoo.com', 'pass14', b'1', '0957212505'),
(15, 'PhamHieu29', 'phamhieu29@outlook.com', 'pass15', b'1', '0936530186'),
(16, 'VuAnh18', 'vuanh18@gmail.com', 'pass16', b'1', '0938865611'),
(17, 'DangTuan53', 'dangtuan53@outlook.com', 'pass17', b'1', '0925485126'),
(18, 'NguyenYen28', 'nguyenyen28@gmail.com', 'pass18', b'1', '0967215233'),
(19, 'NguyenMinh71', 'nguyenminh71@gmail.com', 'pass19', b'1', '0928500518'),
(20, 'BuiPhong77', 'buiphong77@yahoo.com', 'pass20', b'1', '0948086418'),
(21, 'DangHieu82', 'danghieu82@outlook.com', 'pass21', b'1', '0920003703'),
(22, 'TranCuong58', 'trancuong58@gmail.com', 'pass22', b'1', '0922446602'),
(23, 'HoangDuy1', 'hoangduy1@outlook.com', 'pass23', b'1', '0931829549'),
(24, 'DangTuan91', 'dangtuan91@gmail.com', 'pass24', b'1', '0914563400'),
(25, 'NguyenDuy59', 'nguyenduy59@outlook.com', 'pass25', b'1', '0998986466'),
(26, 'NguyenAnh96', 'nguyenanh96@yahoo.com', 'pass26', b'1', '0998257699'),
(27, 'NguyenTuan57', 'nguyentuan57@gmail.com', 'pass27', b'1', '0983881379'),
(28, 'DoGiang73', 'dogiang73@gmail.com', 'pass28', b'1', '0988105685'),
(29, 'LeHieu81', 'lehieu81@yahoo.com', 'pass29', b'1', '0994665795'),
(30, 'NguyenMinh78', 'nguyenminh78@outlook.com', 'pass30', b'1', '0939839098');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `bill`
--
ALTER TABLE `bill`
  ADD PRIMARY KEY (`bill_id`);

--
-- Chỉ mục cho bảng `bill_detail`
--
ALTER TABLE `bill_detail`
  ADD PRIMARY KEY (`bill_detail_id`);

--
-- Chỉ mục cho bảng `brand`
--
ALTER TABLE `brand`
  ADD PRIMARY KEY (`brand_id`);

--
-- Chỉ mục cho bảng `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_id`);

--
-- Chỉ mục cho bảng `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`contact_id`);

--
-- Chỉ mục cho bảng `newsletter`
--
ALTER TABLE `newsletter`
  ADD PRIMARY KEY (`newsletter_id`);

--
-- Chỉ mục cho bảng `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`);

--
-- Chỉ mục cho bảng `review`
--
ALTER TABLE `review`
  ADD PRIMARY KEY (`review_id`);

--
-- Chỉ mục cho bảng `useradmin`
--
ALTER TABLE `useradmin`
  ADD PRIMARY KEY (`user_ad_id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `category`
--
ALTER TABLE `category`
  MODIFY `category_id` bigint(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1735915062826;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
