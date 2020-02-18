-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th2 18, 2020 lúc 03:36 AM
-- Phiên bản máy phục vụ: 10.1.31-MariaDB
-- Phiên bản PHP: 7.2.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `duan_web`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `brands`
--

CREATE TABLE `brands` (
  `id` int(11) NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `brands`
--

INSERT INTO `brands` (`id`, `image`, `name`, `url`) VALUES
(1, 'public/images/colors-curl-logo-template_23-2147536125.jpg', 'DLDLDLDL', 'https://www.dell.com'),
(2, 'public/images/background-of-spots-halftone_1035-3847.jpg', 'Intel', 'https://www.intel.com '),
(4, 'public/images/blue-tech-logo_1103-822.jpg', NULL, NULL),
(13, 'public/images/colors-curl-logo-template_23-2147536125.jpg', 'xxx', ''),
(14, 'public/images/background-of-spots-halftone_1035-3847.jpg', NULL, NULL),
(15, 'public/images/blue-tech-logo_1103-822.jpg', NULL, NULL),
(16, 'public/images/colors-curl-logo-template_23-2147536125.jpg', 'xxx', ''),
(17, 'public/images/background-of-spots-halftone_1035-3847.jpg', NULL, NULL),
(18, 'public/images/blue-tech-logo_1103-822.jpg', NULL, NULL),
(19, 'public/images/colors-curl-logo-template_23-2147536125.jpg', 'xxx', ''),
(20, 'public/images/background-of-spots-halftone_1035-3847.jpg', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `cate_name` varchar(190) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_vietnamese_ci,
  `slug` varchar(255) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`id`, `cate_name`, `description`, `slug`, `created_at`) VALUES
(1, 'Máy Tính', '1weqefsgdf', NULL, '2019-12-09 08:33:56'),
(3, 'Linh kiện máy tính', '<p>&aacute;dasd</p>\r\n', NULL, '2019-12-18 03:08:03'),
(7, 'nam', '<p>123</p>\r\n', NULL, '2019-12-09 08:13:08'),
(25, 'PPN', '<p>ppn</p>\r\n', NULL, '2019-12-09 08:37:30'),
(28, 'Thiết Bị Internet', '<p>zvxbn vmbn,m,</p>\r\n', NULL, '2019-12-18 03:13:16');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `content` text COLLATE utf8mb4_vietnamese_ci,
  `product_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `reply_for` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `comments`
--

INSERT INTO `comments` (`id`, `content`, `product_id`, `user_id`, `reply_for`, `created_at`) VALUES
(197, 'dc', 2, 4, NULL, '2019-12-10 16:18:38'),
(198, 'dfghjkl', 11, 4, NULL, '2019-12-11 07:30:24'),
(199, 'tốt', 10, 4, NULL, '2019-12-18 02:44:45'),
(200, 'ss', 11, 4, NULL, '2020-01-12 18:42:28'),
(201, 'dđ', 2, 4, NULL, '2020-01-12 18:46:00'),
(202, 'dđ', 2, 4, NULL, '2020-01-12 18:46:27'),
(203, 'ok', 2, 4, NULL, '2020-01-12 18:47:01'),
(204, 'gôdd', 2, 4, NULL, '2020-01-12 18:47:24');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `contacts`
--

CREATE TABLE `contacts` (
  `id` int(11) NOT NULL,
  `fullname` varchar(250) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_vietnamese_ci,
  `status` int(11) NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `phone_number` int(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `contacts`
--

INSERT INTO `contacts` (`id`, `fullname`, `title`, `content`, `status`, `email`, `phone_number`, `created_at`) VALUES
(2, 's', NULL, 'như shjtttttt	', 1, 'namppph05917@fpt.edu.vn', NULL, '2019-12-09 05:59:20'),
(3, 'nam', NULL, 'ádfasdfdasfsdafsda', 1, 'namppph05917@gmail.com', NULL, '2019-12-11 07:32:51');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `historys`
--

CREATE TABLE `historys` (
  `id_user` int(11) NOT NULL,
  `id_order` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `historys`
--

INSERT INTO `historys` (`id_user`, `id_order`) VALUES
(4, 215),
(4, 216),
(4, 217),
(4, 218),
(6, 219);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `customer_name` varchar(255) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `customer_phone` int(20) DEFAULT NULL,
  `customer_email` varchar(100) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `customer_address` varchar(255) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `status` int(11) DEFAULT '1',
  `total_price` int(11) DEFAULT NULL,
  `payment_method` int(11) DEFAULT NULL,
  `discount` int(11) DEFAULT NULL,
  `buyer_id` varchar(11) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `voucher_id` int(11) DEFAULT NULL,
  `message` varchar(255) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `orders`
--

INSERT INTO `orders` (`id`, `customer_name`, `customer_phone`, `customer_email`, `customer_address`, `status`, `total_price`, `payment_method`, `discount`, `buyer_id`, `voucher_id`, `message`, `created_at`) VALUES
(218, 'Nam', 99999999, 'namppph05917@fpt.edu.vn', 'sad', 1, 222, 2, NULL, NULL, NULL, NULL, '2019-12-18 03:48:13'),
(219, 'TNT', 99999, 'lodsfdsfsfssssssssssssssssssss@gmail.com', 'ha noi', 1, 222, 1, NULL, NULL, NULL, NULL, '2019-12-18 03:57:21'),
(220, 'Nam', 99999999, 'namppph05917@fpt.edu.vn', 'ưerwerwer', 2, 500000, 3, NULL, NULL, NULL, NULL, '2019-12-18 08:01:01');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_detail`
--

CREATE TABLE `order_detail` (
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `unit_price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `order_detail`
--

INSERT INTO `order_detail` (`order_id`, `product_id`, `quantity`, `unit_price`) VALUES
(218, 11, 1, 222),
(219, 11, 1, 222),
(220, 12, 2, 250000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `cate_id` int(11) DEFAULT NULL,
  `name` varchar(200) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `sale_off` int(11) DEFAULT NULL,
  `desc_short` text COLLATE utf8mb4_vietnamese_ci,
  `detail` text COLLATE utf8mb4_vietnamese_ci,
  `amount` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT '0',
  `views` int(11) NOT NULL DEFAULT '1',
  `rating` double DEFAULT NULL,
  `disabled_comment` int(11) DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `cate_id`, `name`, `image`, `price`, `sale_off`, `desc_short`, `detail`, `amount`, `status`, `views`, `rating`, `disabled_comment`, `created_at`, `updated_at`) VALUES
(2, 1, 'KEO TẢN NHIỆT ỐNG CHÍCH LỚN', 'public/images/7nyomx_simg_de2fe0_500x500_maxb.png', 300, 20, '<p>&aacute;d</p>\r\n', '<p>asssss</p>\r\n', 10, NULL, 15, NULL, -1, '2020-01-12 19:01:27', '2019-11-23 18:28:10'),
(5, 1, 'Đầu đọc Thẻ Nhớ Micro SD TF tiện dụng - đầu đọc thẻ đa năng mini', 'public/images/J7JEGp_simg_de2fe0_500x500_maxb.jpg', 100, 20, '<p><strong>NHANH TAY ĐẶT H&Agrave;NG NGAY - S&Ocirc; LƯỢNG C&Oacute; HẠ</strong></p>\r\n\r\n<p>ĐẦU ĐỌC THẺ NHỚ MICROSD ,ĐẦU LỌC THẺ NHỚ XỬ L&Yacute; TH&Ocirc;NG TIN</p>\r\n', '<p><strong>NHANH TAY ĐẶT H&Agrave;NG NGAY - S&Ocirc; LƯỢNG C&Oacute; HẠ</strong></p>\r\n\r\n<p>ĐẦU ĐỌC THẺ NHỚ MICROSD ,ĐẦU LỌC THẺ NHỚ XỬ L&Yacute; TH&Ocirc;NG TIN NHANH CH&Oacute;NG TỪ THẺ MICROSD</p>\r\n\r\n<p><em><strong>Đầu lọc thẻ USB 2.0 Micro SD TF tiện dụng cho điện thoại m&aacute;y t&iacute;nh bảng</strong></em></p>\r\n\r\n<p>------------------------------------------------------------</p>\r\n\r\n<h2>Đầu đọc thẻ nhớ MicroSD với tốc độ đọc ổn định, chất lượng cao, bền đẹp c&ugrave;ng m&agrave;u sắc đa dạng Kết nối USB 2.0</h2>\r\n\r\n<h2>Tương thích với nhi&ecirc;̀u h&ecirc;̣ đi&ecirc;̀u hành T&ocirc;́c đ&ocirc;̣ đọc thẻ cao và &ocirc;̉n định Đọc loại thẻ MicroSD</h2>\r\n\r\n<p>&nbsp;</p>\r\n', 10, NULL, 20, NULL, 0, '2019-12-18 07:31:53', '2019-11-23 18:28:10'),
(7, 3, 'LÓT CHUỘT TYLO', 'public/images/veocon_simg_de2fe0_500x500_maxb.png', 220, 1, '<p>Cash on Delivery Eligible. Bank OfferExtra 5% off* with Axis Bank Buzz Credit CardT&amp;C Cash on Delivery Eligible. Bank OfferExtra 5% off* with Axis Bank</p>\r\n', '<p>CHI TIẾT SẢN PHẨM</p>\r\n\r\n<p>TỔNG QUAN</p>\r\n\r\n<p>L&oacute;t chuột chất lượng với gi&aacute; th&agrave;nh cực kỳ ấn tượng, bạn sẽ được trang bị bệ ph&oacute;ng cho từng c&uacute; click chuột thăng hoa của ri&ecirc;ng m&igrave;nh, gi&uacute;p bạn d&ugrave;ng m&aacute;y t&iacute;nh thoải m&aacute;i</p>\r\n\r\n<p>Sđt: 0385.331.585</p>\r\n\r\n<p>&nbsp;</p>\r\n', 3, 1, 5, NULL, 0, '2020-01-12 18:45:06', '2019-11-23 18:30:27'),
(8, 28, 'USB Wifi - USB thu sóng Wifi cho máy tính để bàn có Anten - USB wifi', 'public/images/R3OL1t_simg_de2fe0_500x500_maxb.jpg', 100, 20, '<p>Thiết bị thu wifi tốc độ 150Mb th&iacute;ch hợp với tất cả c&aacute;c chuẩn IEEE 802.11n, IEEE 802.11b, IEEE 802.3, IEEE 802.11g t&iacute;ch hợp th&ecirc;m ăngten gi&uacute;p c&acirc;y m&aacute;y t&iacute;nh để b&agrave;n (PC) kết nối mạng kh&ocirc;ng d&acirc;y rất gọn g&agrave;ng, kh&ocirc;ng cần phải k&eacute;o d&acirc;y mạng rất bất tiện v&agrave; mất thẩm mỹ.</p>\r\n', '<p><em><strong>Usb wifi</strong></em>&nbsp;- USB thu s&oacute;ng <a href=\"https://www.sendo.vn/cong-tac-ket-noi-qua-mang-wifi-8162349.html?source_block_%20search_ad_products&amp;source_page_%20search_rank\">Wifi</a> cho m&aacute;y t&iacute;nh để b&agrave;n c&oacute; Anten</p>\r\n\r\n<p>File Driver (C&oacute; trong đĩa đi k&egrave;m):&nbsp;<a href=\"https://www.sendo.vn/\">https://drive.google.com/file/d/176Z49kMu1Z2gAlR3wqt4gqiZl3LrQADh</a></p>\r\n\r\n<p>Bạn c&oacute; thể tải file driver tr&ecirc;n về c&agrave;i trong trường hợp m&aacute;y t&iacute;nh của bạn kh&ocirc;ng c&oacute; ổ đĩa, ổ đĩa bị lỗi, hoặc kh&ocirc;ng đọc được đĩa đi k&egrave;m.</p>\r\n\r\n<p>(Một số bản Win mới đ&atilde; c&oacute; sẵn driver n&ecirc;n c&oacute; thể bạn kh&ocirc;ng cần c&agrave;i th&ecirc;m g&igrave; cả v&agrave; d&ugrave;ng lu&ocirc;n, c&ograve;n lại hầu hết l&agrave; phải c&agrave;i drive mới d&ugrave;ng được).</p>\r\n\r\n<p>Đối với hệ điều h&agrave;nh Windows bạn cần c&agrave;i cả 2 file file &quot;setup.exe&quot; (Thư mục ch&iacute;nh) v&agrave; file &quot;ralink_5_1_7_0_win.exe&quot; (Trong mục Windows)</p>\r\n\r\n<p>Thiết bị d&ugrave;ng được cho cả hệ điều h&agrave;nh Windows, Linux v&agrave; Mac OS</p>\r\n\r\n<p>Thiết bị thu wifi tốc độ 150Mb th&iacute;ch hợp với tất cả c&aacute;c chuẩn IEEE 802.11n, IEEE 802.11b, IEEE 802.3, IEEE 802.11g t&iacute;ch hợp th&ecirc;m ăngten gi&uacute;p c&acirc;y m&aacute;y t&iacute;nh để b&agrave;n (PC) kết nối mạng kh&ocirc;ng d&acirc;y rất gọn g&agrave;ng, kh&ocirc;ng cần phải k&eacute;o d&acirc;y mạng rất bất tiện v&agrave; mất thẩm mỹ.</p>\r\n\r\n<p><br />\r\nKh&ocirc;ng những thế USB thu wifi cũng c&oacute; thể gi&uacute;p bạn tiết kiệm chi ph&iacute; thi c&ocirc;ng v&agrave; chi ph&iacute; cho d&acirc;y mạng m&agrave; kết nối mạng vẫn đạt hiệu quả tốt.</p>\r\n\r\n<p>&nbsp;</p>\r\n', 10, NULL, 3, NULL, -1, '2019-12-18 07:39:21', '2019-11-23 18:28:10'),
(10, 1, 'ĐÈN LED USB ', 'public/images/K2ucEr_simg_de2fe0_500x500_maxb.png', 2000, NULL, '<p>Giới thiệu sản phẩm Đ&egrave;n led cổng usb.</p>\r\n\r\n<p>&Aacute;nh s&aacute;ng cực s&aacute;ng.</p>\r\n\r\n<p>Sản phẩm rất cần thiết cho cuộc sống: l&agrave;m đ&egrave;n ngủ, l&agrave;m đ&egrave;n học, &aacute;nh s&aacute;ng l&uacute;c c&uacute;p điện. Chỉ cần cắm v&agrave;o cổng usb như: pin sạc, ổ điện, c&oacute;c sạc, laptop, điện thoại.</p>\r\n', '<p>Giới thiệu sản phẩm Đ&egrave;n led cổng usb.</p>\r\n\r\n<p>&Aacute;nh s&aacute;ng cực s&aacute;ng.</p>\r\n\r\n<p>Sản phẩm rất cần thiết cho cuộc sống: l&agrave;m đ&egrave;n ngủ, l&agrave;m đ&egrave;n học, &aacute;nh s&aacute;ng l&uacute;c c&uacute;p điện. Chỉ cần cắm v&agrave;o cổng usb như: pin sạc, ổ điện, c&oacute;c sạc, laptop, điện thoại.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Th&ocirc;ng tin li&ecirc;n hệ: LINH KIỆN NAM TRUNG HẢI</p>\r\n\r\n<p>Địa chỉ: 26 Lưu Nh&acirc;n Ch&uacute;, Phường 5, Quận T&acirc;n B&igrave;nh, HCM.</p>\r\n\r\n<p>Sđt: 0385331585</p>\r\n', 10, 0, 9, NULL, 0, '2019-12-18 03:15:07', '2019-12-03 09:01:43'),
(11, 1, 'LOA VI TÍNH LOYFUN M22 - M22', 'public/images/HwGU6e_simg_de2fe0_500x500_maxb.png', 222, NULL, '<p>2222<strong>dgfdgdfgdfgđg</strong></p>\r\n', '<h2>Giới thiệu sản phẩm Loa m&aacute;y t&iacute;nh LOYFUN M22</h2>\r\n\r\n<p>Vừa học tập v&agrave; l&agrave;m việc vừa thưởng thức &acirc;m nhạc l&agrave; một c&aacute;ch hiệu quả nhất để dẫn đến hiệu quả tối ưu. Với<strong>Loa máy tính Loyfun M22</strong>th&igrave; việc hiệu quả c&agrave;ng gia tăng hơn nữa bởi n&oacute; c&oacute; c&ocirc;ng suất 4W v&agrave; dải tần &acirc;m thanh rộng. Hệ thốngLoa máy tính Loyfun M22c&oacute; đầy đủ c&aacute;c n&uacute;t điều chỉnh &acirc;m lượng, gi&uacute;p bạn dễ d&agrave;ng điều chỉnh &acirc;m thanh vừa đủ nghe ngay tr&ecirc;n hệ thống. H&atilde;y tận hưởng những ph&uacute;t gi&acirc;y vừa l&agrave;m việc v&agrave; học tập vừa thư gi&atilde;n bằng &acirc;m nhạc của bạn, h&atilde;y nghe theo c&aacute;ch của bạn với hệ<strong>Loa máy tính Loyfun M22</strong>ngay từ h&ocirc;m nay.</p>\r\n\r\n<p>- Loa m&aacute;y t&iacute;nh LOYFUN M22 được thiết kế đẹp mắt, sang trọng, th&iacute;ch hợp để bạn sử dụng trong kh&ocirc;ng gian ph&ograve;ng nhỏ v&agrave; ấm &aacute;p.<br />\r\n- N&uacute;t điều khiển tiện lợi ngay tr&ecirc;n loa, bạn c&oacute; thể sử dụng trực tiếp để điều chỉnh &acirc;m lượng &acirc;m thanh m&agrave; kh&ocirc;ng cần th&ocirc;ng qua bộ điều khiển của m&aacute;y t&iacute;nh, gi&uacute;p cho bạn dễ d&agrave;ng kiểm so&aacute;t &acirc;m lượng c&aacute;ch độc lập v&agrave; nhanh ch&oacute;ng. Ngo&agrave;i ra, loa c&ograve;n c&oacute; n&uacute;t tắt mở ri&ecirc;ng biệt để tiết kiệm năng lượng khi cần.<br />\r\n- Jack cắm chuẩn 3.5mm, gi&uacute;p bạn c&oacute; thể nghe nhạc từ nhiều nguồn kh&aacute;c nhau như điện thoại, iPod hay đầu DVD, đầu HD m&agrave; kh&ocirc;ng cần c&aacute;p chuyển đổi.<br />\r\n- Cổng nguồn USB sẽ gi&uacute;p bạn tiết kiệm kh&ocirc;ng gian ổ cắm v&agrave; c&oacute; thể d&ugrave;ng chung nguồn điện với m&aacute;y t&iacute;nh, laptop hay những thiết bị kh&aacute;c c&oacute; hỗ trợ cổng USB.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Th&ocirc;ng tin chi ti&ecirc;́t sản ph&acirc;̉m-Loa máy tính Loyfun M22:</strong>-Loa có 2 đ&acirc;̀u cắm: 1 đ&acirc;̀u vào &ocirc;̉ USB, 1 đ&acirc;̀u vào &ocirc;̉ loa<br />\r\n- T&acirc;̀n s&ocirc;́: 100HZ-20KHZ<br />\r\n- Tỷ s&ocirc;́ nén nhi&ecirc;̃u: 85 dB<br />\r\n- Jack cắm loa: chu&acirc;̉n jack 3.5mm<br />\r\n- C&acirc;́p đi&ecirc;̣n qua c&ocirc;̉ng usb l&acirc;́y trực ti&ecirc;́p từ máy tính(5V)<br />\r\n- Ki&ecirc;̉u loa: b&ocirc;̣ 2 loa<br />\r\n- M&ocirc;̃i loa có th&ecirc;m 1 loa tress phía trước tạo &acirc;m thanh khá đ&acirc;̀y đủ<br />\r\n- &Acirc;m thanh lớn, trong trẻo, đ&aacute;p ứng tốt nhất nhu cầu giải tr&iacute;, nghe nhạc của bạn.<br />\r\n- Kiểu d&aacute;ng độc đ&aacute;o cho bạn dễ d&agrave;ng mang theo để phục vụ c&ocirc;ng việc, học tập, vui chơi&hellip;</p>\r\n\r\n<p>- Bảo h&agrave;nh 3 th&aacute;ng.</p>\r\n\r\n<p>Sđt: 0385331585</p>\r\n', 22, 0, 18, NULL, 0, '2020-01-12 18:42:32', '2019-12-06 17:51:24'),
(12, 1, 'VỎ CASE VSP 3009 - 3009', 'public/images/KIDJsY_simg_de2fe0_500x500_maxb.jpg', 10, 0, '<p>M&atilde; h&agrave;ng: 3009</p>\r\n\r\n<p>H&atilde;ng sản xuất: VSP</p>\r\n\r\n<p>M&agrave;u : Đen</p>\r\n\r\n<p>Vật liệu: SECC phủ đen, Plastic ABS</p>\r\n\r\n<p>Hỗ trợ: HDD 3.5&quot; x 2</p>\r\n\r\n<p>Hỗ trợ: SSD 2.5&quot; x 2</p>\r\n\r\n<p>Kh&ocirc;ng hỗ trợ gắn DVD 5.25&quot;</p>\r\n\r\n<p>Khe mở rộng: 7 slots</p>\r\n', '<p>CHI TIẾT SẢN PHẨM</p>\r\n\r\n<p>M&atilde; h&agrave;ng: 3009</p>\r\n\r\n<p>H&atilde;ng sản xuất: VSP</p>\r\n\r\n<p>M&agrave;u : Đen</p>\r\n\r\n<p>Vật liệu: SECC phủ đen, Plastic ABS</p>\r\n\r\n<p>Hỗ trợ: HDD 3.5&quot; x 2</p>\r\n\r\n<p>Hỗ trợ: SSD 2.5&quot; x 2</p>\r\n\r\n<p>Kh&ocirc;ng hỗ trợ gắn DVD 5.25&quot;</p>\r\n\r\n<p>Khe mở rộng: 7 slots</p>\r\n\r\n<p>Hỗ trợ Mainboard ATX, Micro-ATX...</p>\r\n\r\n<p>Cổng kết nối: USB 2.0x2 - Audio in/out x 1 (HD Audio)</p>\r\n\r\n<p>Trọng Lượng : 3.34kg</p>\r\n\r\n<p>✔️ Một Nắp H&ocirc;ng Trong Suốt</p>\r\n\r\n<p>✔️ FAN Sau: 120mm Fan x 1 t&ugrave;y chọn (Chưa c&oacute; Fan)</p>\r\n', 12, 0, 7, NULL, 0, '2019-12-18 07:59:51', '2019-12-18 02:56:50');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_gallreries`
--

CREATE TABLE `product_gallreries` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `image_url` varchar(200) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `image_text` varchar(255) COLLATE utf8mb4_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `product_gallreries`
--

INSERT INTO `product_gallreries` (`id`, `product_id`, `image_url`, `image_text`) VALUES
(4, 3, 'public/images/background-of-spots-halftone_1035-3847.jpg', ''),
(13, 7, 'public/images/anh-bia-facebook-3.jpg', ''),
(15, 4, 'public/images/anh-bia-facebook-3.jpg', ''),
(16, 6, 'public/images/anh-bia-facebook-3.jpg', ''),
(19, 12, 'public/images/a5GxEL_simg_de2fe0_500x500_maxb.png', ''),
(20, 5, 'public/images/AhSb3m_simg_de2fe0_500x500_maxb.jpg', ''),
(21, 2, 'public/images/F1hdj3_simg_de2fe0_500x500_maxb.jpg', ''),
(22, 8, 'public/images/OVL8tR_simg_de2fe0_500x500_maxb.jpg', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `settings_web`
--

CREATE TABLE `settings_web` (
  `id` int(11) NOT NULL,
  `logo` varchar(255) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `slogan` varchar(255) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `flavors_icon` varchar(255) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `hotline` varchar(25) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `company_name` varchar(255) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `content_about` text COLLATE utf8mb4_vietnamese_ci,
  `map` text COLLATE utf8mb4_vietnamese_ci,
  `address` varchar(255) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `url_facebook` text COLLATE utf8mb4_vietnamese_ci,
  `url_youtube` text COLLATE utf8mb4_vietnamese_ci,
  `url_twitter` text COLLATE utf8mb4_vietnamese_ci,
  `url_instagram` text COLLATE utf8mb4_vietnamese_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `settings_web`
--

INSERT INTO `settings_web` (`id`, `logo`, `slogan`, `flavors_icon`, `hotline`, `email`, `company_name`, `content_about`, `map`, `address`, `url_facebook`, `url_youtube`, `url_twitter`, `url_instagram`) VALUES
(1, 'public/images/logo2.png', 'Phụ Kiện Máy Tính', 'public/images/', '099999999', 'phukienmaytinh@gmail.com', 'PPN', '<p>hihi</p>\r\n', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3723.873645331407!2d105.79863171493275!3d21.037741185993465!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3135ab38b547a3ab%3A0x619c9575e94b3978!2zTmd1eeG7hW4gS2jDoW5oIFRvw6BuLCBD4bqndSBHaeG6pXksIEjDoCBO4buZaQ!5e0!3m2!1svi!2s!4v1575813543418!5m2!1svi!2s\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0;\" allowfullscreen=\"\">', 'Ngõ 58 Nguyễn Khánh Toàn Quan Hoa Cầu Giấy, Hà Nội1', 'https://www.facebook.com', 'https://www.yotube.com', 'https://www.twitter.com', '12`232eqrwshj');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `slider`
--

CREATE TABLE `slider` (
  `id` int(11) NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `description` text COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `url` text COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `slider`
--

INSERT INTO `slider` (`id`, `image`, `description`, `url`, `status`) VALUES
(1, 'public/images/bg.jpg', '<p>qưefsgdcgfvnh</p>\r\n', 'http://localhost/duan_web1/detail.php?id=7', 0),
(4, 'public/images/anh-bia-facebook-3.jpg', '<p>adsdsa</p>\r\n', 'http://localhost/duan_web1/detail.php?id=7', 0),
(5, 'public/images/anh-bia-facebook-3.jpg', '<p>LOL</p>\r\n', 'http://localhost/duan_web1/detail.php?id=7', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `avatar` varchar(200) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `password` varchar(100) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `role` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `avatar`, `email`, `password`, `role`, `status`, `created_at`) VALUES
(4, 'Phan Phương Nam', 'public/images/ScreenHunter 125.png', 'nam@gmail.com', '$2y$10$RVoZNGusGuFAFmCgh1ZkT.AhJa2F26yu7xCxdiWhCflWKXJKOWRWe', 2, 1, '2019-12-18 02:42:22'),
(6, 'PPn', 'public/images/user.png', 'namppph05917@fpt.edu.vn', '$2y$10$UkLtrnl5SsOu82BBQLef0.VvIBx4LJUarvgFxZYiaPzlhdkDpDfgm', 0, 1, '2019-12-17 16:34:50');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vouchers`
--

CREATE TABLE `vouchers` (
  `id` int(11) NOT NULL,
  `code` varchar(10) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `total_price` int(11) DEFAULT NULL,
  `discount_price` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `start_time` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `used_count` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `cate_name` (`cate_name`);

--
-- Chỉ mục cho bảng `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `historys`
--
ALTER TABLE `historys`
  ADD PRIMARY KEY (`id_user`,`id_order`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `order_detail`
--
ALTER TABLE `order_detail`
  ADD PRIMARY KEY (`order_id`,`product_id`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `product_gallreries`
--
ALTER TABLE `product_gallreries`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `settings_web`
--
ALTER TABLE `settings_web`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `vouchers`
--
ALTER TABLE `vouchers`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `brands`
--
ALTER TABLE `brands`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT cho bảng `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=205;

--
-- AUTO_INCREMENT cho bảng `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=221;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `product_gallreries`
--
ALTER TABLE `product_gallreries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT cho bảng `settings_web`
--
ALTER TABLE `settings_web`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `slider`
--
ALTER TABLE `slider`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `vouchers`
--
ALTER TABLE `vouchers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
