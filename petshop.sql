-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 26, 2024 at 06:33 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `petshop`
--

-- --------------------------------------------------------

--
-- Table structure for table `account`
--

CREATE TABLE `account` (
  `account_id` int(11) NOT NULL,
  `account_name` varchar(255) NOT NULL,
  `account_password` varchar(100) NOT NULL,
  `account_email` varchar(255) NOT NULL,
  `account_phone` varchar(20) NOT NULL,
  `account_type` int(11) NOT NULL,
  `account_status` int(11) NOT NULL,
  `title_agency` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `account`
--

INSERT INTO `account` (`account_id`, `account_name`, `account_password`, `account_email`, `account_phone`, `account_type`, `account_status`, `title_agency`) VALUES
(28, 'quandh', '9e7bd9233c13198dec5c2360c9ea23f8', 'a@gmail.com', '', 0, 0, NULL),
(30, 'admin', '7b0ecbdb0b0d8c97c1d1682714b8db0e', 'admin@gmail.com', '', 2, 0, NULL),
(32, 'binhduong', '547e9ce4d958b3b961ba58a1a4a55b33', 'binhduong@gmail.com', '', 3, 0, 1),
(33, 'quan1', '93642a47006ddf35eaedd54e69b87dbc', 'quan1@gmail.com', '', 3, 0, 2),
(34, 'quan12', 'f0f4bc710e0df62320b2df26e68aae7b', 'quan12@gmail.com', '', 3, 0, 3),
(35, 'chuongchinh', 'aeb5139dad9932771ae813792c7eea27', 'chuongchinh@gmail.com', '', 3, 0, 4),
(36, 'quan7', 'e46061cddb3dba58f4091d9a63ff0bd3', 'quan7@gmail.com', '', 3, 0, 5),
(37, 'quandh', '71bcba561e1a013a15fd61d19a54232e', 'quandhaa@gmail.com', '', 0, 0, NULL),
(38, 'Đạt Trần', '25d55ad283aa400af464c76d713c07ad', 'datgold6886@gmail.com', '', 0, 0, NULL),
(39, 'Dat Gold', '25d55ad283aa400af464c76d713c07ad', 'user123@gmail.com', '', 0, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `agency`
--

CREATE TABLE `agency` (
  `agent_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `email` varchar(255) NOT NULL,
  `tax_id` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `agency`
--

INSERT INTO `agency` (`agent_id`, `name`, `address`, `phone`, `email`, `tax_id`) VALUES
(1, 'Chi nhánh Bình dương ', '98 Thống nhất', '19003523', 'thongnhat@gold.com', ''),
(2, 'Chi nhánh Q1', '192 Bến nghé', '19005823', 'bennghe@glod.com', ''),
(3, 'Chi nhánh Q12', '89 Quang trung', '19001234', 'quantrung@gold.com', ''),
(4, 'Chi nhánh Chường Chinh', '1021 Trường chinh', '19005789', 'chuongtrinh@gold.com', ''),
(5, 'Chi nhánh Q7', '51 Nguyễn thị thập', '19008432', 'thithap@gold.com', '');

-- --------------------------------------------------------

--
-- Table structure for table `article`
--

CREATE TABLE `article` (
  `article_id` int(11) NOT NULL,
  `article_author` varchar(100) NOT NULL,
  `article_title` varchar(255) NOT NULL,
  `article_summary` text NOT NULL,
  `article_content` text NOT NULL,
  `article_image` varchar(100) NOT NULL,
  `article_date` date NOT NULL,
  `article_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `article`
--

INSERT INTO `article` (`article_id`, `article_author`, `article_title`, `article_summary`, `article_content`, `article_image`, `article_date`, `article_status`) VALUES
(16, '', 'Chó Mẹ Vừa Sinh Xong Nên Ăn Gì?', '<pre>\r\nCh&oacute; Mẹ Vừa Sinh Xong N&ecirc;n Ăn G&igrave;?</pre>\r\n', '<p><a href=\"https://paddy.vn/blogs/cham-soc-thu-cung/cho-me-vua-sinh-xong-nen-an-gi\"><img alt=\"Chó mẹ vừa sinh xong nên ăn gì\" src=\"https://paddy.vn/cdn/shop/articles/Cham_soc_thu_c_ng_4_495f8fbc-3951-4480-b5e5-75d28bdceec1_1100x.jpg?v=1728991824\" style=\"height:500px; width:900px\" /></a></p>\r\n\r\n<h2>Chuy&ecirc;n mục:</h2>\r\n\r\n<ol>\r\n	<li><strong>Ch&oacute; mẹ vừa sinh xong n&ecirc;n ăn g&igrave;?</strong></li>\r\n	<li><strong>Ch&oacute; mới đẻ kh&ocirc;ng n&ecirc;n ăn g&igrave;?</strong></li>\r\n	<li><strong>Thực đơn cho ch&oacute; mẹ sau sinh</strong></li>\r\n</ol>\r\n\r\n<p><em>Sau khi sinh con, ch&oacute; mẹ cần được chăm s&oacute;c đặc biệt để nhanh ch&oacute;ng phục hồi v&agrave; tr&aacute;nh t&igrave;nh trạng thiếu sữa cho con b&uacute;. Chế độ ăn uống đ&oacute;ng vai tr&ograve; rất quan trọng trong giai đoạn n&agrave;y. V&igrave; vậy, nhiều chủ nu&ocirc;i thường đặt ra c&aacute;c c&acirc;u hỏi như&nbsp;<strong>ch&oacute; mẹ vừa sinh xong n&ecirc;n ăn g&igrave;? Ch&oacute; mới đẻ kh&ocirc;ng n&ecirc;n ăn g&igrave;?</strong>&nbsp;Trong b&agrave;i viết n&agrave;y, Paddy sẽ gi&uacute;p bạn giải đ&aacute;p những thắc mắc tr&ecirc;n.&nbsp;</em></p>\r\n\r\n<p><img alt=\"Chó mẹ vừa sinh xong nên ăn gì\" src=\"https://cdn.shopify.com/s/files/1/0624/1746/9697/files/2_8b0471a9-a840-4c8d-b045-49000965ca56_600x600.jpg?v=1716256361\" /></p>\r\n\r\n<h2><strong>Ch&oacute; mẹ vừa sinh xong n&ecirc;n ăn g&igrave;?&nbsp;</strong></h2>\r\n\r\n<p>Ch&oacute; mẹ sau sinh cần bổ sung dinh dưỡng để phục hồi sức khỏe v&agrave; c&oacute; sữa cho con b&uacute;. N&ecirc;n th&ecirc;m v&agrave;o thực đơn cho ch&oacute; mẹ sau sinh những thực phẩm gi&agrave;u đạm, canxi, chất b&eacute;o, vitamin v&agrave; c&aacute;c kho&aacute;ng chất c&oacute; lợi.</p>\r\n\r\n<p>C&aacute;c loại thực phẩm gi&agrave;u chất dinh dưỡng m&agrave; ch&uacute;ng t&ocirc;i liệt k&ecirc; dưới đ&acirc;y cũng l&agrave; đ&aacute;p &aacute;n trả lời cho c&acirc;u hỏi ch&oacute; mẹ vừa sinh xong n&ecirc;n ăn g&igrave;.</p>\r\n\r\n<ul>\r\n	<li><strong>Nh&oacute;m thực phẩm gi&agrave;u đạm:&nbsp;</strong>c&aacute;c loại thịt, c&aacute; hồi, trứng, nội tạng động vật...</li>\r\n	<li><strong>Nh&oacute;m thực phẩm gi&agrave;u chất b&eacute;o:</strong>&nbsp;mỡ c&aacute;, ph&ocirc; mai, dầu oliu...</li>\r\n	<li><strong>Nh&oacute;m thực phẩm gi&agrave;u vitamin v&agrave; kho&aacute;ng chất:&nbsp;</strong>c&aacute;c loại rau xanh như b&ocirc;ng cải, c&agrave; rốt, b&iacute; đỏ,...</li>\r\n	<li><strong>Nh&oacute;m thực phẩm gi&agrave;u canxi:</strong>&nbsp;trứng, sữa, c&aacute;c loại rau c&oacute; l&aacute; m&agrave;u xanh thẫm,...</li>\r\n</ul>\r\n\r\n<p><img alt=\"Chó mẹ vừa sinh xong nên ăn gì\" src=\"https://cdn.shopify.com/s/files/1/0624/1746/9697/files/3_0b9d0168-5732-4aa3-9c1d-f3ce4d5043fe_600x600.jpg?v=1716256398\" /></p>\r\n\r\n<p>B&ecirc;n cạnh đ&oacute;, cần bổ sung lượng nước đầy đủ cho ch&oacute; mẹ. V&igrave; nước l&agrave; th&agrave;nh phần đ&oacute;ng vai tr&ograve; quan trọng trong qu&aacute; tr&igrave;nh sản xuất sữa. Ngo&agrave;i nước lọc, c&oacute; thể bổ sung th&ecirc;m nước hầm xương hoặc nước hầm từ c&aacute;c loại rau củ quả.</p>\r\n\r\n<p>Ngo&agrave;i ra, trong thời gian ch&oacute; mẹ cho con b&uacute;, c&oacute; thể bổ sung th&ecirc;m c&aacute;c loại hạt mềm d&agrave;nh cho ch&oacute; trưởng th&agrave;nh. Đ&acirc;y l&agrave; loại thực phẩm c&oacute; h&agrave;m lượng dinh dưỡng cao, gi&agrave;u canxi. Gi&uacute;p ch&oacute; mẹ tăng cường sức đề kh&aacute;ng sau sinh v&agrave; c&oacute; nhiều sữa cho ch&oacute; con.</p>\r\n\r\n<h2><strong>Ch&oacute; mới đẻ kh&ocirc;ng n&ecirc;n ăn g&igrave;?&nbsp;</strong></h2>\r\n\r\n<p><strong>Ch&oacute; mới đẻ kh&ocirc;ng n&ecirc;n ăn g&igrave;&nbsp;</strong>l&agrave; c&acirc;u hỏi được rất nhiều người quan t&acirc;m v&agrave; thắc mắc. Dưới đ&acirc;y l&agrave; những loại thực phẩm m&agrave; ch&oacute; mẹ sau sinh cần tr&aacute;nh để đảm bảo sức khỏe v&agrave; chất lượng sữa cho ch&oacute; con:</p>\r\n\r\n<ul>\r\n	<li><strong>C&aacute;c loại ngũ cốc:</strong>&nbsp;Sau khi sinh, cơ thể của ch&oacute; mẹ trở n&ecirc;n nhạy cảm hơn. Do đ&oacute;, ăn nhiều ngũ cốc c&oacute; thể dẫn đến t&igrave;nh trạng đầy bụng, g&acirc;y mệt mỏi cho ch&oacute; mẹ.</li>\r\n	<li><strong>C&aacute;c loại đậu:</strong>&nbsp;Ch&oacute; mới đẻ kh&ocirc;ng n&ecirc;n ăn g&igrave;,&nbsp;c&acirc;u trả lời ở đ&acirc;y l&agrave; c&aacute;c loại đậu. Theo nghi&ecirc;n cứu y khoa, loại thực phẩm n&agrave;y kh&ocirc;ng ph&ugrave; hợp với hệ ti&ecirc;u h&oacute;a v&agrave; đường ruột của ch&oacute; mẹ sau sinh. C&oacute; thể g&acirc;y n&ecirc;n hiện tượng chướng bụng, &agrave;nh ạch mất ngủ.</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li><strong>C&aacute;c loại gia vị c&oacute; hương vị mạnh:&nbsp;</strong>Tr&aacute;nh cho ch&oacute; mẹ sau sinh sử dụng c&aacute;c loại gia vị c&oacute; hương vị mạnh như h&agrave;nh, tỏi, ti&ecirc;u, ớt,... Ch&uacute;ng sẽ khiến k&iacute;ch th&iacute;ch dạ d&agrave;y v&agrave; g&acirc;y hại cho gan, thận của ch&oacute; mẹ. Từ đ&oacute; ảnh hưởng đến chất lượng sữa cho ch&oacute; con b&uacute;.</li>\r\n	<li><strong>C&aacute;c loại thịt hộp, thịt để l&acirc;u:&nbsp;</strong>Đ&acirc;y l&agrave; những loại thực phẩm tuyệt đối kh&ocirc;ng n&ecirc;n c&oacute; trong thực đơn cho ch&oacute; mẹ sau sinh.&nbsp;Đa số c&aacute;c loại thịt hộp đều c&oacute; chứa chất bảo quản. V&igrave; vậy, nếu kh&ocirc;ng cẩn thận c&oacute; thể dẫn đến t&igrave;nh trạng rối loạn ti&ecirc;u h&oacute;a ở ch&oacute; mẹ.</li>\r\n</ul>\r\n\r\n<p><img alt=\"chó mới đẻ không nên ăn g\" src=\"https://cdn.shopify.com/s/files/1/0624/1746/9697/files/4_ad906f97-bae2-46eb-8ca5-b6c8c9fae5e7_600x600.jpg?v=1716256427\" /></p>\r\n\r\n<h2><strong>Thực đơn cho ch&oacute; mẹ sau sinh</strong></h2>\r\n\r\n<p>Thực đơn cho ch&oacute; mẹ sau sinh cần đảm bảo cung cấp đầy đủ c&aacute;c nh&oacute;m dưỡng chất cần thiết. Ngo&agrave;i ra, chủ nu&ocirc;i cũng phải nắm được ch&oacute; mẹ vừa sinh xong n&ecirc;n ăn g&igrave; v&agrave; ch&oacute; mới đẻ kh&ocirc;ng n&ecirc;n ăn g&igrave; để chuẩn bị thức ăn một c&aacute;ch tốt nhất. X&acirc;y dựng thực đơn đ&uacute;ng c&aacute;ch sẽ gi&uacute;p ch&oacute; mẹ nhanh ch&oacute;ng khỏe mạnh v&agrave; sản xuất đủ sữa cho con b&uacute;.</p>\r\n\r\n<p><img alt=\"Chó mẹ vừa sinh xong nên ăn gì\" src=\"https://cdn.shopify.com/s/files/1/0624/1746/9697/files/5_dbad9a30-babe-42cf-98c0-0683aea56ecd_600x600.jpg?v=1716256487\" /></p>\r\n\r\n<h3><strong>C&aacute;c loại thức ăn d&agrave;nh cho ch&oacute; mẹ sau sinh&nbsp;</strong></h3>\r\n\r\n<p>Chăm s&oacute;c sức khỏe cho ch&oacute; mẹ sau sinh l&agrave; việc l&agrave;m v&ocirc; c&ugrave;ng cần thiết. V&igrave; n&oacute; sẽ ảnh hưởng trực tiếp đến sức khỏe của ch&oacute; con. Tuy nhi&ecirc;n, kh&ocirc;ng phải ai cũng biết&nbsp;<strong>ch&oacute; mẹ vừa sinh xong n&ecirc;n ăn g&igrave;.</strong>&nbsp;Dưới đ&acirc;y l&agrave; một số loại thức ăn d&agrave;nh cho ch&oacute; mẹ sau sinh m&agrave; bạn c&oacute; thể tham khảo:</p>\r\n\r\n<p><strong>Hạt Mềm Cho Ch&oacute; Trưởng Th&agrave;nh Zenith Adult</strong></p>\r\n\r\n<p><a href=\"https://paddy.vn/products/thuc-an-hat-mem-cho-cho-zenith-adult-small-breed\" target=\"_blank\">Hạt Mềm Cho Ch&oacute; Trưởng Th&agrave;nh Zenith Adult</a>&nbsp;l&agrave; một trong những loại thức ăn n&ecirc;n c&oacute; trong thực đơn cho ch&oacute; mẹ sau sinh. Th&agrave;nh phần ch&iacute;nh của loại hạt mềm n&agrave;y l&agrave; thịt cừu, thịt g&agrave;, gạo lứt, yến mạch v&agrave; dầu c&aacute; hồi. Đ&acirc;y đều l&agrave; những thực phẩm gi&agrave;u dinh dưỡng, tốt cho sức khỏe của ch&oacute; mẹ. Đặc biệt l&agrave; trong giai đoạn cần phục hồi sức khỏe sau sinh sản.</p>\r\n\r\n<p><img alt=\"Hạt Mềm Cho Chó Trưởng Thành Zenith Adult\" src=\"https://paddy.vn/cdn/shop/products/Zenith-adult-cho-truong-thanh-1.2kg.jpg?v=1693467413\" /></p>\r\n\r\n<p><strong>Gel Dinh Dưỡng Nuvita Cho Ch&oacute; M&egrave;o 120g</strong></p>\r\n\r\n<p>Ở giai đoạn sau sinh, th&uacute; cưng cần bổ sung đầy đủ h&agrave;m lượng vitamin v&agrave; chất kho&aacute;ng để cơ thể nhanh ch&oacute;ng phục hồi.&nbsp;<a href=\"https://paddy.vn/products/thuc-an-dinh-duong-cho-meo-gel-nuvita\" target=\"_blank\">Gel Dinh Dưỡng Nuvita Cho Ch&oacute; M&egrave;o 120g</a>&nbsp;l&agrave; một trong những sản phẩm được nhiều người lựa chọn nhất. C&ocirc;ng dụng của loại gel n&agrave;y l&agrave; hỗ trợ tăng cường trao đổi chất, gi&uacute;p c&aacute;c b&eacute; ăn nhiều hơn.</p>\r\n\r\n<p><img alt=\"Gel Dinh Dưỡng Nuvita Cho Chó Mèo 120g\" src=\"https://paddy.vn/cdn/shop/files/gel-dinh-duong-cho-meo-nuvita.png?v=1694499856\" /></p>\r\n\r\n<p><strong>Pate Cho Ch&oacute; Trưởng Th&agrave;nh SmartHeart Adult (130g)</strong></p>\r\n\r\n<p>Nếu bạn vẫn đang chưa biết&nbsp;<strong>ch&oacute; mẹ vừa sinh xong n&ecirc;n ăn g&igrave;&nbsp;</strong>th&igrave; h&atilde;y tham khảo qua sản phẩm&nbsp;<a href=\"https://paddy.vn/products/pate-cho-truong-thanh-smartheart-130g\" target=\"_blank\">Pate Cho Ch&oacute; Trưởng Th&agrave;nh SmartHeart Adult (130g)</a>. Th&agrave;nh phần ch&iacute;nh để l&agrave;m n&ecirc;n loại pate n&agrave;y bao gồm c&aacute;c loại thịt, nội tạng v&agrave; đạm thực vật. Pate SmartHeart Adult l&agrave; sản phẩm cung cấp dinh dưỡng to&agrave;n diện. Gi&uacute;p ch&oacute; ph&aacute;t triển hệ miễn dịch v&agrave; phục hồi nhanh ch&oacute;ng sau sinh.</p>\r\n\r\n<p><img alt=\"Pate Cho Chó Trưởng Thành SmartHeart Adult (130g)p\" src=\"https://paddy.vn/cdn/shop/files/pate-cho-truong-thanh-smartheart-130g.png?v=1704521757\" /></p>\r\n\r\n<p><strong>Bột Bio Vit Plus Bổ Sung Vitamin Tăng Đề Kh&aacute;ng Ch&oacute; M&egrave;o (G&oacute;i 5g)</strong></p>\r\n\r\n<p><a href=\"https://paddy.vn/products/bio-vit-plus-5g-tang-de-khang-cho-meo\" target=\"_blank\">Bột Bio Vit Plus Bổ Sung Vitamin Tăng Đề Kh&aacute;ng Ch&oacute; M&egrave;o (G&oacute;i 5g)</a>&nbsp;l&agrave; sản phẩm cung cấp c&aacute;c loại vitamin v&agrave; chất điện giải cần thiết cho cơ thể ch&oacute; m&egrave;o. Th&agrave;nh phần ch&iacute;nh c&oacute; trong Bio Vit Plus bao gồm vitamin A, E, D3, K3, B1, B6, B12,... Ch&uacute;ng đều l&agrave; những dưỡng chất quan trọng gi&uacute;p ch&oacute; m&egrave;o cải thiện t&igrave;nh trạng sức khỏe, k&iacute;ch th&iacute;ch vị gi&aacute;c v&agrave; ăn uống ngon miệng hơn.</p>\r\n\r\n<p><img alt=\"Bột Bio Vit Plus Bổ Sung Vitamin Tăng Đề Kháng Chó Mèo (Gói 5g)\" src=\"https://paddy.vn/cdn/shop/products/bot-bo-sung-vitamin-tang-suc-dje-khang-cho-cho-meo-bio-vit-plus-5g-paddy-1.jpg?v=1692816093\" /></p>\r\n\r\n<h3><strong>Thời gian cho ăn v&agrave; liều lượng thức ăn d&agrave;nh cho ch&oacute; mẹ vừa sinh</strong></h3>\r\n\r\n<p>Sau khi sinh từ 1 - 2 ng&agrave;y, sức khỏe của ch&oacute; mẹ c&ograve;n kh&aacute; yếu. V&igrave; vậy, bạn kh&ocirc;ng n&ecirc;n &eacute;p ch&oacute; mẹ ăn m&agrave; chỉ n&ecirc;n để sẵn thức ăn cho ch&oacute; ăn một c&aacute;ch tự nhi&ecirc;n. Trong trường hợp ch&oacute; mẹ vẫn kh&ocirc;ng chịu ăn. Bạn c&oacute; thể d&ugrave;ng những loại thức ăn y&ecirc;u th&iacute;ch h&agrave;ng ng&agrave;y để dụ dỗ ch&uacute;ng.</p>\r\n\r\n<p>Trong những ng&agrave;y tiếp theo, t&ugrave;y v&agrave;o nhu cầu v&agrave; t&igrave;nh trạng sức khỏe của cơ thể ch&oacute; mẹ m&agrave; bạn cần điều chỉnh liều lượng thức ăn sao cho ph&ugrave; hợp nhất. C&oacute; thể cho ch&oacute; ăn th&igrave; 3 - 4 lần mỗi ng&agrave;y. Tuy nhi&ecirc;n, cần lưu &yacute; thay đổi c&aacute;c m&oacute;n ăn đa dạng. Điều n&agrave;y sẽ gi&uacute;p ch&oacute; mẹ hấp thu được nhiều nh&oacute;m dinh dưỡng hơn.</p>\r\n\r\n<p><img alt=\"thực đơn cho chó mẹ sau sinh\" src=\"https://cdn.shopify.com/s/files/1/0624/1746/9697/files/6_49e3b4b7-828a-4a18-9ce8-88fd96978711_600x600.jpg?v=1716256705\" /></p>\r\n\r\n<p>B&agrave;i viết n&agrave;y đ&atilde; gi&uacute;p bạn trả lời được c&acirc;u hỏi&nbsp;<strong>ch&oacute; mẹ vừa sinh xong n&ecirc;n ăn g&igrave;.&nbsp;</strong>Hi vọng những th&ocirc;ng tin m&agrave; ch&uacute;ng t&ocirc;i cung cấp tr&ecirc;n đ&acirc;y sẽ gi&uacute;p &iacute;ch cho bạn trong việc chăm s&oacute;c ch&oacute; mẹ sau sinh.</p>\r\n', '1729347402_Cham_soc_thu_c_ng_4_495f8fbc-3951-4480-b5e5-75d28bdceec1_749x.webp', '2024-10-19', 1),
(17, '', 'Review Các Loại Hạt Cho Chó Con Dưới 1 Tuổi', '<pre>\r\nReview C&aacute;c Loại Hạt Cho Ch&oacute; Con Dưới 1 Tuổi</pre>\r\n', '<p><a href=\"https://paddy.vn/blogs/cham-soc-thu-cung/review-cac-loai-hat-cho-cho-con-duoi-1-tuoi\"><img alt=\"Các loại hạt chó chó con dưới 1 tuổi\" src=\"https://paddy.vn/cdn/shop/articles/Cham_soc_thu_c_ng_3_847930d0-562b-44bf-be1e-0d2ce7534f70_1100x.jpg?v=1728991276\" style=\"height:500px; width:900px\" /></a></p>\r\n\r\n<h2>Chuy&ecirc;n mục:</h2>\r\n\r\n<ol>\r\n	<li><strong>Ti&ecirc;u ch&iacute; lựa chọn c&aacute;c loại hạt cho ch&oacute; con dưới 1 tuổi</strong></li>\r\n	<li><strong>Top c&aacute;c loại hạt cho ch&oacute; con dưới 1 tuổi</strong></li>\r\n</ol>\r\n\r\n<p><em>Việc nu&ocirc;i dưỡng v&agrave; lựa chọn<strong>&nbsp;c&aacute;c loại hạt cho ch&oacute; con dưới 1 tuổi&nbsp;</strong>kh&aacute; quan trọng. Tr&ecirc;n thị trường hiện nay, c&aacute;c sản phẩm thức ăn d&agrave;nh cho ch&oacute; con theo từng độ tuổi được b&agrave;y b&aacute;n rất nhiều. Điều đ&oacute; khiến cho c&aacute;c chủ nu&ocirc;i đau đầu v&igrave; kh&ocirc;ng biết n&ecirc;n chọn loại n&agrave;o ph&ugrave; hợp cho th&uacute; cưng. Hiểu được vấn đề đ&oacute;, Paddy đ&atilde; tổng hợp th&ocirc;ng tin về sản phẩm để chủ nu&ocirc;i đưa ra sự lựa chọn tốt nhất.</em></p>\r\n\r\n<h2><strong>Ti&ecirc;u ch&iacute; lựa chọn c&aacute;c loại hạt cho ch&oacute; con dưới 1 tuổi</strong></h2>\r\n\r\n<p>Ti&ecirc;u ch&iacute; lựa chọn&nbsp;<strong>c&aacute;c loại hạt cho ch&oacute; con dưới 1 tuổ</strong>i v&ocirc; c&ugrave;ng quan trọng. N&oacute; ảnh hưởng trực tiếp đến sự ph&aacute;t triển của ch&oacute; con. B&agrave;i viết n&agrave;y, Paddy sẽ review chi tiết c&aacute;c loại hạt phổ biến tr&ecirc;n thị trường, song song với ti&ecirc;u ch&iacute; lựa chọn loại hạt ph&ugrave; hợp để bạn c&oacute; thể đưa ra quyết định tốt nhất cho th&uacute; cưng.</p>\r\n\r\n<p><img alt=\"Các loại hạt chó chó con dưới 1 tuổi\" src=\"https://cdn.shopify.com/s/files/1/0624/1746/9697/files/1_c362de05-1daf-4fe7-b633-2440b35ec150_600x600.jpg?v=1716255458\" /></p>\r\n\r\n<h3><strong>K&iacute;ch thước của c&aacute;c loại hạt cho ch&oacute; con dưới 1 tuổi</strong></h3>\r\n\r\n<p>K&iacute;ch thước hạt l&agrave; yếu tố quan trọng, cần c&acirc;n nhắc khi chọn hạt cho ch&oacute; con 1 th&aacute;ng tuổi. N&ecirc;n chọn hạt c&oacute; k&iacute;ch thước nhỏ, ph&ugrave; hợp với răng v&agrave; h&agrave;m của th&uacute; cưng. Việc lựa chọn c&aacute;c hạt nhỏ gi&uacute;p th&uacute; cưng thoải m&aacute;i hơn trong ăn uống v&agrave; dễ ti&ecirc;u h&oacute;a. Hạt cho ch&oacute; con 1 th&aacute;ng tuổi phải đ&aacute;p ứng nhu cầu dinh dưỡng để qu&aacute; tr&igrave;nh ph&aacute;t triển của cho con được to&agrave;n diện.</p>\r\n\r\n<p>Nếu chọn hạt qu&aacute; to c&oacute; thể ch&oacute; con kh&oacute; khăn trong qu&aacute; tr&igrave;nh nhai nuốt.</p>\r\n\r\n<h3><strong>H&agrave;m lượng dinh dưỡng</strong></h3>\r\n\r\n<p>Dinh dưỡng l&agrave; yếu tố then chốt khi chọn c&aacute;c loại hạt cho ch&oacute; con dưới 1 tuổi. C&aacute;c loại hạt cần phải cung cấp đầy đủ c&aacute;c protein, vitamin, chất b&eacute;o v&agrave; kho&aacute;ng chất. Đảm bảo qu&aacute; tr&igrave;nh ph&aacute;t triển của ch&oacute; con khỏe mạnh. Đặc biệt, h&agrave;m lượng DHA v&agrave; ARA l&agrave; rất cần thiết cho sự ph&aacute;t triển n&atilde;o v&agrave; thị lực của ch&oacute; con. Ưu ti&ecirc;n c&aacute;c loại hạt được l&agrave;m từ c&aacute;c nguy&ecirc;n liệu như rau củ quả tự nhi&ecirc;n, thịt tươi,... N&ecirc;n chọn c&aacute;c loại hạt c&oacute; h&agrave;m lượng chất b&eacute;o khoảng 10 - 15%.</p>\r\n\r\n<p><img alt=\"Các loại hạt chó chó con dưới 1 tuổi\" src=\"https://cdn.shopify.com/s/files/1/0624/1746/9697/files/2_ba8309e4-fdbb-48a3-a05e-e80c4e851aff_600x600.jpg?v=1716255498\" /></p>\r\n\r\n<h2><strong>Top c&aacute;c loại hạt cho ch&oacute; con dưới 1 tuổi</strong></h2>\r\n\r\n<p>C&aacute;c sản phẩm thức ăn hạt cho ch&oacute; con dưới 1 tuổi c&oacute; rất nhiều tr&ecirc;n thị trường. Mỗi loại hạt sở hữu những ưu điểm ri&ecirc;ng biệt, ph&ugrave; hợp với nhu cầu dinh dưỡng v&agrave; sở th&iacute;ch của th&uacute; cưng. Hiểu r&otilde; được điều n&agrave;y, nội dung dưới đ&acirc;y sẽ giới thiệu đến bạn&nbsp;<strong>Top</strong>&nbsp;<strong>c&aacute;c loại hạt cho ch&oacute; con dưới 1 tuổi.</strong></p>\r\n\r\n<h3><strong>Hạt Ganador Puppy Cho Ch&oacute; Con Vị Sữa &amp; DHA</strong></h3>\r\n\r\n<p>Hạt Ganador l&agrave; thương hiệu đến từ Ph&aacute;p, hiện tại đ&atilde; c&oacute; nh&agrave; m&aacute;y sản xuất hạt Ganador ở Việt Nam với c&ocirc;ng thức đến từ Ph&aacute;p. Hạt&nbsp;<a href=\"https://paddy.vn/products/ganador-puppy-sua-dha\" target=\"_blank\">Ganador Puppy vị sữa &amp; DHA</a>&nbsp;l&agrave; sản phẩm&nbsp;hạt cho ch&oacute; con 2 th&aacute;ng tuổi đến 10 th&aacute;ng tuổi. Sản phẩm đ&aacute;p ứng được nhu cầu dinh dưỡng v&agrave; c&aacute;c kho&aacute;ng chất thiết yếu. H&agrave;m lượng protein gi&uacute;p tăng hệ miễn dịch, chất b&eacute;o cung cấp năng lượng v&agrave; hỗ trợ hấp thụ vitamin. B&ecirc;n cạnh đ&oacute;, c&ograve;n gi&uacute;p hỗ trợ ti&ecirc;u h&oacute;a, gi&uacute;p da v&agrave; l&ocirc;ng mềm mịn, k&iacute;ch th&iacute;ch vị gi&aacute;c.</p>\r\n\r\n<p><img alt=\"Hạt Ganador Puppy Cho Chó Con Vị Sữa &amp; DHA\" src=\"https://paddy.vn/cdn/shop/files/ganadordha.jpg?v=1711013482\" /></p>\r\n\r\n<h3><strong>Hạt Ganador Puppy Ch&oacute; Con Vị Trứng &amp; Sữa</strong></h3>\r\n\r\n<p>Đ&acirc;y l&agrave; một loại hạt kh&aacute;c từ thương hiệu Ganador, với&nbsp;<a href=\"https://paddy.vn/products/ganador-puppy-trung-sua\" target=\"_blank\">vị trứng &amp; sữa</a>. Sản phẩm n&agrave;y l&agrave; hạt cho ch&oacute; con 1 th&aacute;ng tuổi đến 12 th&aacute;ng tuổi. Hạt n&agrave;y kh&ocirc;ng chỉ cung cấp dinh dưỡng cần thiết m&agrave; c&ograve;n c&oacute; vị thơm ngon, k&iacute;ch th&iacute;ch khẩu vị của ch&oacute; con. Sản phẩm cũng gi&agrave;u protein v&agrave; c&aacute;c dưỡng chất cần thiết cho sự ph&aacute;t triển của ch&oacute; con.</p>\r\n\r\n<p>L&agrave; sản phẩm thức ăn d&agrave;nh cho ch&oacute; con được sản xuất bởi Ganador - thương hiệu thức ăn cho th&uacute; cưng uy t&iacute;n đến từ Ph&aacute;p. Cung cấp đầy đủ protein, chất b&eacute;o, vitamin v&agrave; c&aacute;c kho&aacute;ng chất. Gi&uacute;p ph&aacute;t triển cơ bắp v&agrave; hệ miễn dịch, tăng cường sức khỏe,... Hỗ trợ hệ ti&ecirc;u h&oacute;a, gi&uacute;p da v&agrave; l&ocirc;ng mềm mượt, khỏe mạnh.</p>\r\n\r\n<p><img alt=\"Hạt Ganador Puppy Chó Con Vị Trứng &amp; Sữa\" src=\"https://paddy.vn/cdn/shop/files/gapuppy.jpg?v=1711013503\" /></p>\r\n\r\n<h3><strong>Thức Ăn Hạt Cho Ch&oacute; Con Poodle Royal Canin Poodle Puppy</strong></h3>\r\n\r\n<p><a href=\"https://paddy.vn/products/thuc-an-cho-cho-con-royal-canin-poodle-puppy\" target=\"_blank\">Royal Canin Poodle Puppy</a>&nbsp;l&agrave; thức ăn hạt cho ch&oacute; con 2 th&aacute;ng tuổi đến 10 th&aacute;ng tuổi. Hạt c&oacute; k&iacute;ch thước v&agrave; h&igrave;nh dạng ph&ugrave; hợp với cấu tr&uacute;c răng h&agrave;m của ch&oacute; con. Sản phẩm n&agrave;y được đ&aacute;nh gi&aacute; cao về dinh dưỡng c&oacute; trong hạt. Dinh dưỡng c&oacute; trong hạt đ&aacute;p ứng c&aacute;c nhu cầu dinh dưỡng của ch&oacute; con. Hỗ trợ hệ ti&ecirc;u h&oacute;a, tăng cường miễn dịch, gi&uacute;p da v&agrave; l&ocirc;ng khỏe mạnh, k&iacute;ch th&iacute;ch vị gi&aacute;c của ch&oacute; con.</p>\r\n\r\n<p><img alt=\"Thức Ăn Hạt Cho Chó Con Poodle Royal Canin Poodle Puppy\" src=\"https://paddy.vn/cdn/shop/products/hat-royal-canin-poodle-puppy-cho-cho-con-poodle-paddy-2.jpg?v=1692427661\" /></p>\r\n\r\n<h3><strong>Hạt Cho Ch&oacute; Con Smartheart Puppy Vị B&ograve; &amp; Sữa</strong></h3>\r\n\r\n<p><a href=\"https://paddy.vn/products/thuc-an-cho-cho-con-smartheart-puppy-vi-bo-sua\" target=\"_blank\">Hạt Smartheart Puppy vị b&ograve; &amp; sữa</a>&nbsp;l&agrave; thức ăn hạt cho ch&oacute; con 2 th&aacute;ng tuổi đến 12 th&aacute;ng tuổi. Sản phẩm được l&agrave;m từ c&aacute;c nguy&ecirc;n liệu tự nhi&ecirc;n, kh&ocirc;ng chất bảo quản v&agrave; phẩm m&agrave;u. Được đ&aacute;nh gi&aacute; cao bởi nhiều chủ nu&ocirc;i bởi h&agrave;m lượng dinh dưỡng c&oacute; trong hạt. Dinh dưỡng c&acirc;n bằng, cung cấp đầy đủ protein, vitamin,... Gi&uacute;p ch&oacute; con ph&aacute;t triển to&agrave;n diện. Tăng cường hệ miễn dịch ph&ograve;ng ngừa bệnh, k&iacute;ch thước hạt ph&ugrave; hợp với răng h&agrave;m, hỗ trợ hệ ti&ecirc;u h&oacute;a.</p>\r\n\r\n<p><img alt=\"Hạt Cho Chó Con Smartheart Puppy Vị Bò &amp; Sữa\" src=\"https://paddy.vn/cdn/shop/products/hat-smartheart-puppy-vi-bo-and-sua-cho-cho-con-paddy-1.jpg?v=1662875889\" /></p>\r\n\r\n<h3><strong>Hạt Tươi Taste Of The Wild Puppy Cho Ch&oacute; Con</strong></h3>\r\n\r\n<p><a href=\"https://paddy.vn/products/thuc-an-cho-cho-con-taste-of-the-wild-puppy\" target=\"_blank\">Taste Of The Wild Puppy&nbsp;</a>l&agrave; thức ăn hạt cao cấp, với th&agrave;nh phần từ thịt tươi v&agrave; c&aacute;c nguy&ecirc;n liệu tự nhi&ecirc;n. Sản phẩm kh&ocirc;ng chứa hạt ngũ cốc, ph&ugrave; hợp với ch&oacute; con c&oacute; hệ ti&ecirc;u h&oacute;a nhạy cảm. Hạt cung cấp đầy đủ protein, gi&uacute;p ph&aacute;t triển cơ bắp v&agrave; hệ thống miễn dịch, vitamin gi&uacute;p tăng cường sức khỏe,... K&iacute;ch thước hạt nhỏ gi&uacute;p ch&oacute; con dễ d&agrave;ng nhai nuốt, k&iacute;ch th&iacute;ch vị gi&aacute;c.</p>\r\n\r\n<p><img alt=\"Hạt Tươi Taste Of The Wild Puppy Cho Chó Con\" src=\"https://paddy.vn/cdn/shop/products/hat-tuoi-taste-of-the-wild-puppy-cho-cho-con-paddy-1.jpg?v=1699867861\" /></p>\r\n\r\n<p><br />\r\n<br />\r\nMỗi loại thức ăn điều c&oacute; những ưu điểm v&agrave; th&agrave;nh phần dinh dưỡng kh&aacute;c nhau. Để lựa chọn&nbsp;<strong>c&aacute;c loại hạt ch&oacute; ch&oacute; con dưới 1 tuổi</strong>&nbsp;c&ograve;n phụ thuộc nhu cầu dinh dưỡng của ch&oacute; con. Ngo&agrave;i ra, c&ograve;n t&ugrave;y thuộc v&agrave;o t&igrave;nh trạng sức khỏe v&agrave; độ tuổi m&agrave; chọn lựa ph&ugrave; hợp.</p>\r\n', '1729347497_Cham_soc_thu_c_ng_3_847930d0-562b-44bf-be1e-0d2ce7534f70_749x.webp', '2024-10-19', 0),
(18, '', 'Tổng Hợp Các Sản Phẩm Từ Cỏ Mèo Khô An Toàn', '<pre>\r\nTổng Hợp C&aacute;c Sản Phẩm Từ Cỏ M&egrave;o Kh&ocirc; An To&agrave;n</pre>\r\n', '<p><a href=\"https://paddy.vn/blogs/cham-soc-thu-cung/tong-hop-cac-san-pham-tu-co-meo-kho\"><img alt=\"Các Sản Phẩm Từ Cỏ Mèo\" src=\"https://paddy.vn/cdn/shop/articles/Cham_soc_thu_c_ng_2_ebe76cce-c87b-4839-bb51-6d407ae99c2a_1100x.jpg?v=1728990826\" style=\"height:500px; width:900px\" /></a></p>\r\n\r\n<h2>Chuy&ecirc;n mục:</h2>\r\n\r\n<ol>\r\n	<li><strong>Cỏ m&egrave;o kh&ocirc; l&agrave; g&igrave;?</strong></li>\r\n	<li><strong>C&aacute;ch sử dụng cỏ m&egrave;o kh&ocirc;</strong></li>\r\n	<li><strong>C&aacute;c sản phẩm từ cỏ m&egrave;o kh&ocirc; an to&agrave;n cho th&uacute; cưng</strong></li>\r\n</ol>\r\n\r\n<p><em>Trong những năm gần đ&acirc;y,&nbsp;<strong>c&aacute;c sản phẩm từ cỏ m&egrave;o</strong>&nbsp;ng&agrave;y c&agrave;ng được ưa chuộng v&agrave; trở th&agrave;nh sự lựa chọn h&agrave;ng đầu d&agrave;nh cho những người nu&ocirc;i m&egrave;o. B&agrave;i viết dưới đ&acirc;y sẽ cung cấp đến bạn một số th&ocirc;ng tin th&uacute; vị về&nbsp;<strong>cỏ m&egrave;o kh&ocirc;</strong>&nbsp;v&agrave; c&aacute;ch sử dụng cỏ m&egrave;o kh&ocirc; như thế n&agrave;o để đạt được hiệu quả tốt nhất.&nbsp;</em></p>\r\n\r\n<h2><strong>Cỏ m&egrave;o kh&ocirc; l&agrave; g&igrave;?</strong></h2>\r\n\r\n<p><strong>Cỏ m&egrave;o kh&ocirc;</strong>&nbsp;hay c&ograve;n gọi l&agrave; catnip l&agrave; một loại thảo mộc thuộc họ bạc h&agrave;. Hợp chất&nbsp;nepetalactone c&oacute; trong thảo dược n&agrave;y c&oacute; khả năng k&iacute;ch th&iacute;ch hệ thần kinh của m&egrave;o, khiến m&egrave;o trở n&ecirc;n hưng phấn v&agrave; vui vẻ. Sử dụng c&aacute;c sản phẩm từ cỏ m&egrave;o gi&uacute;p hệ ti&ecirc;u h&oacute;a của m&egrave;o hoạt động tốt hơn. Đặc biệt l&agrave; trong việc xử l&yacute; bệnh hairballs, hay c&ograve;n gọi l&agrave; b&uacute;i l&ocirc;ng cục c&oacute; trong dạ d&agrave;y m&egrave;o. Ngo&agrave;i ra, n&oacute; cũng đ&oacute;ng vai tr&ograve; như một chất g&acirc;y ảo gi&aacute;c gi&uacute;p m&egrave;o thư gi&atilde;n v&agrave; giảm stress.&nbsp;</p>\r\n\r\n<p><img alt=\"Các sản phẩm từ cỏ mèo\" src=\"https://cdn.shopify.com/s/files/1/0624/1746/9697/files/1_a4cf7aa5-3d62-4229-a7d1-e0bc270b59ae_600x600.jpg?v=1716198682\" /></p>\r\n\r\n<h2><strong>C&aacute;ch sử dụng cỏ m&egrave;o kh&ocirc;</strong></h2>\r\n\r\n<p>Tr&ecirc;n thị trường hiện nay, c&oacute; v&ocirc; số c&aacute;c sản phẩm được chế biến từ&nbsp;<strong>cỏ m&egrave;o kh&ocirc;</strong>. V&igrave; vậy, t&ugrave;y theo loại sản phẩm m&agrave; mỗi người sẽ c&oacute; c&aacute;ch sử dụng cỏ m&egrave;o kh&ocirc; kh&aacute;c nhau. Một số c&aacute;ch sử dụng phổ biến nhất c&oacute; thể kể đến như:</p>\r\n\r\n<ul>\r\n	<li>Nhồi v&agrave;o đồ chơi của m&egrave;o.</li>\r\n	<li>Xịt l&ecirc;n b&agrave;n c&agrave;o m&oacute;ng hoặc cat tree.</li>\r\n	<li>Trộn v&agrave;o thức ăn của m&egrave;o.</li>\r\n	<li>Sử dụng c&aacute;c sản phẩm được chế biến sẵn như b&aacute;nh thưởng, s&uacute;p thưởng.</li>\r\n	<li>Rắc l&ecirc;n những khu vực sinh hoạt của m&egrave;o.</li>\r\n</ul>\r\n\r\n<p><img alt=\"Các sản phẩm từ cỏ mèo\" src=\"https://cdn.shopify.com/s/files/1/0624/1746/9697/files/2_73819cc8-78ed-4895-bc03-1dd57c983e06_600x600.jpg?v=1716198734\" /></p>\r\n\r\n<h2><strong>C&aacute;c sản phẩm từ cỏ m&egrave;o kh&ocirc; an to&agrave;n cho th&uacute; cưng</strong></h2>\r\n\r\n<p><strong>C&aacute;c sản phẩm từ cỏ m&egrave;o</strong>&nbsp;kh&ocirc; ng&agrave;y c&agrave;ng trở n&ecirc;n th&ocirc;ng dụng tr&ecirc;n thị trường. Tuy nhi&ecirc;n, người mua cần lựa chọn nơi cung cấp uy t&iacute;n v&agrave; chất lượng. Đảm bảo c&aacute;c sản phẩm c&oacute; xuất xứ r&otilde; r&agrave;ng, an to&agrave;n cho c&aacute;c b&eacute; m&egrave;o nh&agrave; m&igrave;nh. Dưới đ&acirc;y l&agrave; một số sản phẩm từ cỏ m&egrave;o&nbsp;phổ biến m&agrave; bạn c&oacute; thể tham khảo qua.</p>\r\n\r\n<h3><strong>B&aacute;nh Thưởng Cho M&egrave;o Vị Cỏ M&egrave;o Vi&ecirc;n Funny U</strong></h3>\r\n\r\n<p><a href=\"https://paddy.vn/products/banh-thuong-cho-meo-vi-co-meo-vien-funny-u-60g\" target=\"_blank\">B&aacute;nh Thưởng Cho M&egrave;o Vị Cỏ M&egrave;o Vi&ecirc;n Funny U</a>&nbsp;l&agrave; sản phẩm được nhiều b&eacute; m&egrave;o y&ecirc;u th&iacute;ch bởi hương vị hấp dẫn. B&aacute;nh cung cấp một lượng lớn protein v&agrave; chất b&eacute;o tốt, rất th&iacute;ch hợp để l&agrave;m bữa ăn nhẹ cho m&egrave;o. Sản phẩm c&oacute; kết cấu dạng vi&ecirc;n nhỏ, d&agrave;nh cho c&aacute;c b&eacute; m&egrave;o từ 2 th&aacute;ng tuổi trở l&ecirc;n.&nbsp;</p>\r\n\r\n<p><img alt=\"Bánh Thưởng Cho Mèo Vị Cỏ Mèo Viên Funny U 60g\" src=\"https://paddy.vn/cdn/shop/files/banh-thuong-cho-meo-vi-co-meo-vien-funny-u-60g_6.webp?v=1704523055\" /></p>\r\n\r\n<h3><strong>Lược Cố Định Cho M&egrave;o Tự Chải L&ocirc;ng Chứa Cỏ M&egrave;o</strong></h3>\r\n\r\n<p>Những người nu&ocirc;i m&egrave;o chắc hẳn kh&ocirc;ng c&ograve;n xa lạ đối với sản phẩm&nbsp;<a href=\"https://paddy.vn/products/luoc-co-dinh-cho-meo-tu-chai-long-chua-co-meo-catnip\" target=\"_blank\">Lược Cố Định Cho M&egrave;o Tự Chải L&ocirc;ng Chứa Cỏ M&egrave;o</a>. Đ&acirc;y l&agrave; một trong c&aacute;c sản phẩm từ cỏ m&egrave;o c&oacute; thiết kế độc đ&aacute;o với một khoang chứa catnip. Răng lược được l&agrave;m bằng chất liệu nhựa mềm mại. Mang lại cảm gi&aacute;c thoải m&aacute;i cho c&aacute;c b&eacute; m&egrave;o khi chải l&ocirc;ng. Th&agrave;nh phần cỏ m&egrave;o c&oacute; trong lược sẽ gi&uacute;p k&iacute;ch th&iacute;ch khứu gi&aacute;c của m&egrave;o. Khiến m&egrave;o tự chải l&ocirc;ng thường xuy&ecirc;n. Đ&acirc;y l&agrave; sản phẩm th&ocirc;ng dụng v&agrave; ph&ugrave; hợp với c&aacute;c b&eacute; m&egrave;o ở mọi lứa tuổi.</p>\r\n\r\n<p><img alt=\"Lược Cố Định Cho Mèo Tự Chải Lông Chứa Cỏ Mèo\" src=\"https://paddy.vn/cdn/shop/files/luoc-co-dinh-cho-meo-tu-chai-long-chua-co-meo-catnip_2.png?v=1704521630\" /></p>\r\n\r\n<h3><strong>Cỏ M&egrave;o Bạc H&agrave; Catnip Cho M&egrave;o</strong></h3>\r\n\r\n<p><a href=\"https://paddy.vn/products/co-meo-cat-nip-dang-kho?_pos=1&amp;_sid=495d27d59&amp;_ss=r\" target=\"_blank\">Cỏ M&egrave;o Bạc H&agrave; Catnip</a>&nbsp;l&agrave; được chia l&agrave;m hai loại l&agrave; dạng bột v&agrave; dạng l&aacute;. Trong đ&oacute;, dạng bột l&agrave; loại phổ biến v&agrave; dễ t&igrave;m mua hơn. Liều lượng th&iacute;ch hợp cho một lần d&ugrave;ng catnip l&agrave; từ 2 - 3 gam. Nhưng t&ugrave;y v&agrave;o t&igrave;nh trạng sức khỏe v&agrave; c&acirc;n nặng của m&egrave;o m&agrave; chủ nu&ocirc;i c&oacute; thể tăng hoặc giảm liều lượng sao cho ph&ugrave; hợp. C&aacute;ch sử dụng catnip đơn giản nhất l&agrave; trộn ch&uacute;ng với thức ăn của m&egrave;o. N&ecirc;n sử dụng cỏ m&egrave;o bạc h&agrave; cho c&aacute;c b&eacute; từ 8 th&aacute;ng tuổi trở l&ecirc;n.</p>\r\n\r\n<p><img alt=\"Cỏ Mèo Bạc Hà Catnip Cho Mèo\" src=\"https://paddy.vn/cdn/shop/files/co-meo-catnip-cho-meo.jpg?v=1692494868\" /></p>\r\n\r\n<h3><strong>B&aacute;nh Thưởng Cho M&egrave;o Vị Cỏ M&egrave;o TaoTao</strong></h3>\r\n\r\n<p>TaoTao l&agrave; thương hiệu sản xuất đồ ăn vặt cho m&egrave;o uy t&iacute;n v&agrave; chất lượng.&nbsp;<a href=\"https://paddy.vn/products/banh-thuong-cho-meo-vi-co-meo-taotao\" target=\"_blank\">B&aacute;nh Thưởng Cho M&egrave;o Vị Cỏ M&egrave;o TaoTao</a>&nbsp;l&agrave; một trong c&aacute;c sản phẩm từ cỏ m&egrave;o được nhiều b&eacute; m&egrave;o ưa th&iacute;ch. C&aacute;c th&agrave;nh phần ch&iacute;nh để tạo n&ecirc;n loại b&aacute;nh n&agrave;y bao gồm cỏ m&egrave;o kh&ocirc;, thịt g&agrave;, c&aacute; hồi, gan g&agrave;&hellip; Đ&acirc;y đều l&agrave; những nguy&ecirc;n liệu an to&agrave;n v&agrave; tốt cho sức khỏe của m&egrave;o. Sản phẩm ph&ugrave; hợp cho c&aacute;c b&eacute; m&egrave;o từ 3 th&aacute;ng tuổi trở l&ecirc;n.</p>\r\n\r\n<p><img alt=\"Bánh Thưởng Cho Mèo Vị Cỏ Mèo TaoTao\" src=\"https://paddy.vn/cdn/shop/files/banh-thuong-cho-meo-vi-co-meo-taotao.webp?v=1704523271\" /></p>\r\n\r\n<h3><strong>S&uacute;p Thưởng Cho M&egrave;o LaPauw Bổ Sung Cỏ M&egrave;o</strong></h3>\r\n\r\n<p><a href=\"https://paddy.vn/products/sup-thuong-cho-meo-lapaw\" target=\"_blank\">S&uacute;p Thưởng Cho M&egrave;o LaPauw Bổ Sung Cỏ M&egrave;o</a>&nbsp;l&agrave; sản phẩm gi&uacute;p m&egrave;o bổ sung c&aacute;c chất dinh dưỡng một c&aacute;ch to&agrave;n diện nhất. Ph&ugrave; hợp với c&aacute;c b&eacute; m&egrave;o ở mọi lứa tuổi. Một trong những ưu điểm lớn nhất của s&uacute;p thưởng LaPauw l&agrave; sự đa dạng trong hương vị. Gi&uacute;p c&aacute;c b&eacute; m&egrave;o c&oacute; thể thay đổi khẩu vị v&agrave; bổ sung nhiều nh&oacute;m chất kh&aacute;c nhau. Ngo&agrave;i ra, sản phẩm n&agrave;y cũng gi&uacute;p c&aacute;c b&eacute; m&egrave;o ăn ngon miệng hơn v&agrave; ph&ograve;ng ngừa c&aacute;c bệnh về đường tiết niệu.</p>\r\n\r\n<p><img alt=\"Súp Thưởng Cho Mèo LaPaw Bổ Sung Cỏ Mèo\" src=\"https://paddy.vn/cdn/shop/files/sup-thuong-cho-meo-lapaw.webp?v=1704522922\" /></p>\r\n\r\n<h3><strong>Cỏ M&egrave;o Gắn Tường Xoay H&igrave;nh Đồ Chơi Cho M&egrave;o</strong></h3>\r\n\r\n<p><a href=\"https://paddy.vn/products/co-meo-xoay-rotating-catnip-do-choi-cho-meo\" target=\"_blank\">Cỏ M&egrave;o Gắn Tường Xoay H&igrave;nh Đồ Chơi Cho M&egrave;o</a>&nbsp;l&agrave; loại đồ chơi được c&aacute;c b&eacute; m&egrave;o y&ecirc;u th&iacute;ch. Trong c&aacute;c sản phẩm từ cỏ m&egrave;o, catnip gắn tường l&agrave; loại được nhiều người chọn d&ugrave;ng bởi t&iacute;nh tiện lợi. Bạn c&oacute; thể d&aacute;n ch&uacute;ng v&agrave;o tường, ch&acirc;n giường, ch&acirc;n b&agrave;n&hellip; để c&aacute;c b&eacute; m&egrave;o tự do chơi đ&ugrave;a. Loại đồ chơi n&agrave;y sẽ gi&uacute;p c&aacute;c b&eacute; thư gi&atilde;n v&agrave; giải tỏa căng thẳng một c&aacute;ch hiệu quả.</p>\r\n\r\n<p><img alt=\"Cỏ Mèo Gắn Tường Xoay Hình Đồ Chơi Cho Mèo\" src=\"https://paddy.vn/cdn/shop/products/16.jpg?v=1692677708\" /></p>\r\n\r\n<p>Catnip l&agrave; sản phẩm ưa th&iacute;ch của c&aacute;c b&eacute; m&egrave;o. Tuy nhi&ecirc;n, người nu&ocirc;i m&egrave;o cũng kh&ocirc;ng n&ecirc;n v&igrave; vậy m&agrave; qu&aacute; lạm dụng sản phẩm n&agrave;y. C&aacute;c số liệu nghi&ecirc;n cứu đ&atilde; chỉ ra rằng, chỉ c&oacute; khoảng 60% c&aacute;c b&eacute; m&egrave;o phản ứng với&nbsp;<strong>cỏ m&egrave;o kh&ocirc;&nbsp;</strong>c&ograve;n số c&ograve;n lại th&igrave; kh&ocirc;ng. Do đ&oacute;, người d&ugrave;ng cần phải ch&uacute; &yacute; liều lượng v&agrave; phản ứng của m&egrave;o để c&oacute; c&aacute;ch sử dụng cỏ m&egrave;o hợp l&yacute; v&agrave; hiệu quả nhất.</p>\r\n\r\n<p>Hy vọng b&agrave;i viết n&agrave;y sẽ gi&uacute;p &iacute;ch cho bạn trong việc chọn lựa&nbsp;<strong>c&aacute;c sản phẩm từ cỏ m&egrave;o</strong>&nbsp;ph&ugrave; hợp với b&eacute; m&egrave;o nh&agrave; m&igrave;nh.</p>\r\n', '1729347541_Cham_soc_thu_c_ng_2_ebe76cce-c87b-4839-bb51-6d407ae99c2a_749x.webp', '2024-10-19', 0);

-- --------------------------------------------------------

--
-- Table structure for table `banner`
--

CREATE TABLE `banner` (
  `id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `banner`
--

INSERT INTO `banner` (`id`, `image`) VALUES
(3, '1730388071_group-3.png'),
(4, '1730388076_phu-kien-danh-cho-thu-cung.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `brand`
--

CREATE TABLE `brand` (
  `brand_id` int(11) NOT NULL,
  `brand_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `brand`
--

INSERT INTO `brand` (`brand_id`, `brand_name`) VALUES
(10, 'HEALTH PARADISE'),
(11, 'NATONIC'),
(12, 'ORGANICA');

-- --------------------------------------------------------

--
-- Table structure for table `capacity`
--

CREATE TABLE `capacity` (
  `capacity_id` int(11) NOT NULL,
  `capacity_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `capacity`
--

INSERT INTO `capacity` (`capacity_id`, `capacity_name`) VALUES
(13, '500g'),
(14, '1kg'),
(15, '2kg'),
(16, '4kg'),
(17, '20kg'),
(18, ' ');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(100) NOT NULL,
  `category_description` text NOT NULL,
  `category_image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`category_id`, `category_name`, `category_description`, `category_image`) VALUES
(13, 'Thiết Bị Thông Minh', '', '1729258613_'),
(14, 'Mèo', '', '1729078358_'),
(17, 'Chó', '', '1729080178_');

-- --------------------------------------------------------

--
-- Table structure for table `collection`
--

CREATE TABLE `collection` (
  `collection_id` int(11) NOT NULL,
  `collection_name` varchar(100) NOT NULL,
  `collection_keyword` varchar(100) NOT NULL,
  `collection_image` varchar(100) NOT NULL,
  `collection_description` varchar(255) NOT NULL,
  `collection_order` int(11) NOT NULL,
  `collection_type` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `collection`
--

INSERT INTO `collection` (`collection_id`, `collection_name`, `collection_keyword`, `collection_image`, `collection_description`, `collection_order`, `collection_type`) VALUES
(1, 'Chanel', 'chanel', '1684376498_nuoc-hoa-chanel-nam-11.jpg', 'phụ kiện thú cưng chanel', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE `comment` (
  `comment_id` int(11) NOT NULL,
  `article_id` int(11) NOT NULL,
  `comment_name` varchar(50) NOT NULL,
  `comment_email` varchar(50) NOT NULL,
  `comment_content` text NOT NULL,
  `comment_date` date NOT NULL,
  `comment_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `comment`
--

INSERT INTO `comment` (`comment_id`, `article_id`, `comment_name`, `comment_email`, `comment_content`, `comment_date`, `comment_status`) VALUES
(9, 8, 'Thịnh', 'thinh191204033@gmail.com', 'Hay quá admin ơi', '2023-05-30', 1),
(10, 7, 'Thịnh', 'thinh191204033@gmail.com', 'aaaaa', '2023-06-07', 0),
(14, 8, 'Thắng', 'thangthattha@gmail.com', 'Rất hữu ích ạ', '2023-06-13', 1),
(15, 8, 'tú', 'fddf@gmail.com', 'đắt', '2023-06-18', 0),
(16, 8, 'tú', 'fddf@gmail.com', 'đắt', '2023-06-18', 0);

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `customer_id` int(11) NOT NULL,
  `account_id` int(11) NOT NULL,
  `customer_name` varchar(100) NOT NULL,
  `customer_gender` int(11) NOT NULL,
  `customer_email` varchar(100) NOT NULL,
  `customer_phone` varchar(50) NOT NULL,
  `customer_address` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`customer_id`, `account_id`, `customer_name`, `customer_gender`, `customer_email`, `customer_phone`, `customer_address`) VALUES
(1, 2, 'Nguyễn phúc an', 0, 'annp@gmail.com', '0979359018', 'Hà Nội'),
(2, 7, 'Đặng Hữu Thịnh', 1, 'dhthinh.cntt@gmail.com', '0878398141', 'Quan Hoa, Cầu Giấy, Hà Nội'),
(3, 2, 'Phúc An', 1, 'annp@gmail.com', '0887398147', 'Quốc Oai, Hà Nội'),
(5, 13, 'Nguyễn Văn Khánh', 1, 'ankhanh184@gmail.com', '09648383113', 'Long Phú, Quốc Oai, Hà Nội'),
(6, 1, 'Thịnh Đặng', 1, 'thinh191204033@gmail.com', '0878398141', 'Quan Hoa, Cầu Giấy, Hà Nội'),
(8, 14, 'Diệu Anh', 2, 'dieuanh@gmail.com', '0964838311', 'Long Phú, Quốc Oai, Hà Nội'),
(9, 15, 'Hà Văn Thắng', 1, 'thangthattha@gmail.com', '039415515', 'Quan Hoa, Cầu Giấy, Hà Nội'),
(10, 16, 'Phạm Văn Thuận', 1, 'thuanpv@gmail.com', '0971113114', 'Hoàng Mai, Hà Nội'),
(11, 0, 'thịnh', 0, 'thimh174658@gmail.comm', '0979359018', 'cầu giấy'),
(15, 18, 'Diệu Nhi', 2, 'annp260808@gmail.com', '0971113114', 'Cầu Giấy'),
(17, 20, 'Nguyễn Trác Hậu', 1, 'haunguyen@gmail.com', '0878398141', 'Ba Vì, Hà Nội'),
(18, 21, 'Hà Thắng', 1, 'hathang@gmail.com', '0979359018', 'Quan Hoa, Cầu Giấy, Hà Nội'),
(19, 22, 'admin', 0, 'admin@gmail.com', '0987654322', 'Hồ Chí Minh'),
(20, 23, 'test', 0, 'test@gmail.com', '0987654321', 'hn'),
(21, 24, 'Nguyễn Thanh Lâm', 1, 'nguyenthanhlam@gmail.com', '0987654321', 'TP HCM'),
(22, 25, 'Nguyễn Thành Trung', 1, 'nguyenthanhtrung@gmail.com', '0989275330', 'TP HCM'),
(23, 26, 'trần Quang Đạt ', 0, 'datgold6886@gmail.com', '0823488817', 'Quận 1 Nguyễn Bỉnh Khiêm Thành Phố Hồ Chí Minh'),
(24, 27, 'Quang Đạt ', 1, 'dattran@gmail.com', '0823588867', 'Quận 1 Nguyễn Bỉnh Khiêm Thành Phố Hồ Chí Minh'),
(25, 28, 'quandh', 1, 'a@gmail.com', '0334205811', '113 ca'),
(26, 29, 'Chinhanh', 1, 'chinhanh@gold.com', '03232323', 'chinhanh'),
(27, 30, 'admin', 1, 'admin@gmail.com', '1232123123', 'admin'),
(28, 31, 'chinhanh', 1, 'chinhanh@gmail.com', '123123132', 'chinhanh'),
(29, 32, 'binhduong', 1, 'binhduong@gmail.com', '1321232', '98 Thống nhất'),
(30, 33, 'quan1', 1, 'quan1@gmail.com', '03232323', '192 ben nghe'),
(31, 34, 'quan12', 1, 'quan12@gmail.com', '13123213', '89 quang trung'),
(32, 35, 'chuongchinh', 1, 'chuongchinh@gmail.com', '13123123', '1021 truong chinh'),
(33, 36, 'quan7', 1, 'quan7@gmail.com', '1231223', '51 nguyen thi thap'),
(34, 37, 'quandh', 1, 'quandhaa@gmail.com', '0334205811', 'quan 12 tphcm'),
(35, 38, 'Đạt Trần', 0, 'datgold6886@gmail.com', '04393837938', 'Quận 1 Nguyễn Bỉnh Khiêm Thành Phố Hồ Chí Minh datgold'),
(36, 39, 'Dat Gold', 0, 'user123@gmail.com', '0823488817', 'Quận 1 Nguyễn Bỉnh Khiêm Thành Phố Hồ Chí Minh ');

-- --------------------------------------------------------

--
-- Table structure for table `delivery`
--

CREATE TABLE `delivery` (
  `delivery_id` int(11) NOT NULL,
  `account_id` int(11) NOT NULL,
  `delivery_name` varchar(100) NOT NULL,
  `delivery_phone` varchar(20) NOT NULL,
  `delivery_address` varchar(100) NOT NULL,
  `delivery_note` varchar(100) NOT NULL,
  `agency_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `delivery`
--

INSERT INTO `delivery` (`delivery_id`, `account_id`, `delivery_name`, `delivery_phone`, `delivery_address`, `delivery_note`, `agency_name`) VALUES
(18, 13, 'Nguyễn Văn Khánh', '9648383113', 'Long Phú, Quốc Oai, Hà Nội', '', NULL),
(33, 28, 'quandh', '0334205811', '113 ca', '', NULL),
(35, 37, 'quandh', '0334205811', 'quan 12 tphcm', '', 'Chi nhánh Q12'),
(109, 7, 'Đặng Hữu Thịnh', '0878398141', 'Quan Hoa, Cầu Giấy, Hà Nội', '', NULL),
(151, 14, 'Diệu Anh', '0964838311', 'Long Phú, Quốc Oai, Hà Nội', 'Cẩn hận giú mình nhé', NULL),
(182, 7, 'Đặng Hữu Thịnh', '0878398141', 'Quan Hoa, Cầu Giấy, Hà Nội', 'Cẩn hận giúp mình nhé', NULL),
(250, 7, '', '878398141', '', '', NULL),
(357, 28, 'quandh', '0334205811', '113 ca', 'gold', NULL),
(386, 1, 'Nguyễn thị diệu anh', '979359018', 'Hà Nội', '', NULL),
(404, 7, '', '878398141', 'Long Phú, Quốc Oai, Hà Nội', 'Giao hàng nhanh không là boom đấy', NULL),
(447, 28, 'quandh', '0334205811', '113 ca', '', NULL),
(602, 7, 'Đặng Hữu Thịnh', '878398141', 'Quan Hoa, Cầu Giấy, Hà Nội', '', NULL),
(716, 7, 'Đặng Hữu Thịnh', '878398141', '225 Quan hoa, Cầu giấy, Hà Nội', 'Giao hàng nhanh không là boom đấy', NULL),
(732, 1, 'Thịnh đang test', '979359018', 'Hà Nội', '', NULL),
(928, 20, 'Nguyễn Trác Hậu', '0878398141', 'Ba Vì, Hà Nội', 'Cẩn hận giúp mình nhé', NULL),
(1034, 18, 'Diệu Nhi', '0971113114', 'Cầu Giấy', '', NULL),
(1100, 1, 'Nguyễn phúc an', '979359018', 'Hà Nội', '', NULL),
(1162, 7, 'Đặng Hữu Thịnh', '0878398141', 'Quan Hoa, Cầu Giấy, Hà Nội', '', NULL),
(1197, 1, 'Nguyễn thị diệu anh', '368683854', 'Hà Nội', '', NULL),
(1263, 7, 'Đặng Hữu Thịnh', '0878398141', 'Quan Hoa, Cầu Giấy, Hà Nội', '', NULL),
(1278, 7, 'Đặng Hữu Thịnh', '878398141', 'Quan Hoa, Cầu Giấy, Hà Nội', '', NULL),
(1381, 1, 'Nguyễn phúc an', '979359018', 'Hà Nội', '', NULL),
(1454, 1, 'Nguyễn Văn Thủy', '0343434523', 'Long Phú, Quốc Oai, Hà Nội', '', NULL),
(1462, 7, 'Đặng Hữu Thịnh', '878398141', 'Quan Hoa, Cầu Giấy, Hà Nội', '', NULL),
(1553, 14, 'Diệu Anh', '0964838311', 'Long Phú, Quốc Oai, Hà Nội', '', NULL),
(1615, 6, 'Thinhdz', '878398141', 'Long Phú, Quốc Oai, Hà Nội', 'Giao hàng nhanh không là boom đấy', NULL),
(1623, 2, 'Nguyễn phúc an', '9383434323', '225 Quan hoa, Cầu giấy, Hà Nội', 'Cẩn hận giúp mình nhé', NULL),
(1658, 13, 'Nguyễn Văn Khánh', '09648383113', 'Long Phú, Quốc Oai, Hà Nội', '', NULL),
(1703, 1, 'Hà Văn Thắng', '0979359018', 'Hà Nội', '', NULL),
(1713, 7, 'Đặng Hữu Thịnh', '878398141', '225 Quan hoa, Cầu giấy, Hà Nội', 'Giao hàng nhanh không là boom đấy', NULL),
(1714, 14, 'Diệu Anh', '0964838311', 'Long Phú, Quốc Oai, Hà Nội', '', NULL),
(1858, 7, 'Đặng Hữu Thịnh', '0878398141', 'Quan Hoa, Cầu Giấy, Hà Nội', '', NULL),
(1874, 7, 'Đặng Hữu Thịnh', '0878398141', 'Quan Hoa, Cầu Giấy, Hà Nội', 'Cẩn hận giúp mình nhé', NULL),
(1884, 7, 'Đặng Hữu Thịnh', '0878398141', 'Quan Hoa, Cầu Giấy, Hà Nội', '', NULL),
(1922, 7, 'Đặng Hữu Thịnh', '0878398141', 'Quan Hoa, Cầu Giấy, Hà Nội', '', NULL),
(1971, 37, 'quandh', '0334205811', 'quan 12 tphcm', '', 'Chi nhánh Q12'),
(2101, 28, 'quandh', '0334205811', '113 ca', '', NULL),
(2115, 23, 'test', '987654321', 'hn', 'ship nhanh', NULL),
(2136, 28, 'quandh', '0334205811', '113 ca', 'chi nhanh q7', 'Chi nhánh Q7'),
(2267, 13, 'Nguyễn Văn Khánh', '9648383113', 'Long Phú, Quốc Oai, Hà Nội', 'Giao hàng nhanh không là boom đấy', NULL),
(2294, 7, 'Đặng Hữu Thịnh', '878398141', 'Hà Nội', 'Giao hàng nhanh giúp mình nhé', NULL),
(2342, 6, 'Thinhdz', '878398141', 'Long Phú, Quốc Oai, Hà Nội', 'Giao hàng nhanh không là boom đấy', NULL),
(2344, 13, 'Nguyễn Văn Khánh', '09648383113', 'Long Phú, Quốc Oai, Hà Nội', '', NULL),
(2484, 7, 'Đặng Hữu Thịnh', '878398141', '225 Quan hoa, Cầu giấy, Hà Nội', 'Giao hàng nhanh không là boom đấy', NULL),
(2504, 37, 'quandh', '0334205811', 'quan 12 tphcm', 'ok good', 'Chi nhánh Q12'),
(2522, 7, '', '878398141', '', '', NULL),
(2531, 7, 'Đặng Hữu Thịnh', '0878398141', 'Quan Hoa, Cầu Giấy, Hà Nội', '', NULL),
(2548, 6, 'Thinhdz', '878398141', 'Long Phú, Quốc Oai, Hà Nội', 'Giao hàng nhanh không là boom đấy', NULL),
(2573, 7, 'Đặng Hữu Thịnh', '878398141', 'Quan Hoa, Cầu Giấy, Hà Nội', '', NULL),
(2629, 7, 'Đặng Hữu Thịnh', '878398141', 'Quan Hoa, Cầu Giấy, Hà Nội', '', NULL),
(2639, 7, 'Đặng Hữu Thịnh', '0878398141', 'Quan Hoa, Cầu Giấy, Hà Nội', '', NULL),
(2766, 7, 'Đặng Hữu Thịnh', '0878398141', 'Quan Hoa, Cầu Giấy, Hà Nội', '', NULL),
(2912, 1, 'Nguyễn phúc an', '0979359018', 'Hà Nội', 'Đơn hàng mua trực tiếp', NULL),
(3044, 7, '', '878398141', '', '', NULL),
(3105, 7, 'Đặng Hữu Thịnh', '878398141', 'Hà Nội', 'Giao hàng nhanh giúp mình nhé', NULL),
(3166, 28, 'quandh', '0334205811', '113 ca', '', NULL),
(3246, 1, 'Nguyễn phúc an', '0368683854', 'Hà Nội', 'Đơn hàng mua trực tiếp', NULL),
(3258, 7, 'Đặng Hữu Thịnh', '878398141', 'Long Phú, Quốc Oai, Hà Nội', 'Giao hàng nhanh không là boom đấy', NULL),
(3269, 17, 'Tú Lê', '0976475025', 'Cầu Giấy', '', NULL),
(3308, 1, 'Nguyễn phúc an', '0979359018', 'Hà Nội', 'Đơn hàng mua trực tiếp', NULL),
(3321, 7, 'Nguyễn phúc an', '979359018', 'Long Phú, Quốc Oai, Hà Nội', '', NULL),
(3492, 17, 'Tú Lê', '0976475025', 'Cầu Giấy', 'Cẩn hận giú mình nhé', NULL),
(3525, 22, 'admin', '0987654321', 'hn', 'ship nhnah123', NULL),
(3623, 7, 'Đặng Hữu Thịnh', '878398141', 'Long Phú, Quốc Oai, Hà Nội', 'Cẩn hận giúp mình nhé', NULL),
(3663, 7, 'Đặng Hữu Thịnh', '878398141', '225 Quan hoa, Cầu giấy, Hà Nội', 'Cẩn hận giúp mình nhé', NULL),
(3731, 7, 'Đặng Hữu Thịnh', '878398141', '225 Quan hoa, Cầu giấy, Hà Nội', 'Cẩn hận giúp mình nhé', NULL),
(3744, 28, 'quandh', '0334205811', '113 ca', '', 'Chi nhánh Chường Chinh'),
(3874, 7, 'Đặng Hữu Thịnh', '878398141', 'Quan Hoa, Cầu Giấy, Hà Nội', '', NULL),
(3896, 7, '', '878398141', '', '', NULL),
(3946, 13, 'Nguyễn Văn Khánh', '09648383113', 'Long Phú, Quốc Oai, Hà Nội', '', NULL),
(3985, 1, 'Thịnh đang test', '979359018', 'Hà Nội', '', NULL),
(4025, 7, 'Thịnh Đặng', '0878398141', 'Quan Hoa, Hà Nội', 'Giao nhanh không boom hàng đấy', NULL),
(4083, 1, 'Nguyễn thị diệu anh', '979359018', 'Hà Nội', '', NULL),
(4155, 1, 'Phạm Tuấn Thanh', '0368683854', 'Hà Nội', 'Đơn hàng mua trực tiếp', NULL),
(4312, 2, 'Nguyễn phúc an', '9383434323', '225 Quan hoa, Cầu giấy, Hà Nội', 'Giao hàng nhanh không là boom đấy', NULL),
(4566, 7, 'Đặng Hữu Thịnh', '878398141', '225 Quan hoa, Cầu giấy, Hà Nội', 'Giao hàng nhanh không là boom đấy', NULL),
(4589, 7, 'Đặng Hữu Thịnh', '878398141', 'Quan Hoa, Cầu Giấy, Hà Nội', '', NULL),
(4615, 37, 'quandh', '0334205811', 'quan 12 tphcm', '', 'Chi nhánh Q1'),
(4643, 7, 'Đặng Hữu Thịnh', '878398141', 'Long Phú, Quốc Oai, Hà Nội', 'Giao hàng nhanh không là boom đấy', NULL),
(4693, 1, 'Nguyễn phúc an', '979359018', 'Hà Nội', '', NULL),
(4701, 7, 'Đặng Hữu Thịnh', '878398141', '', '', NULL),
(4725, 7, 'Đặng Hữu Thịnh', '878398141', 'Quan Hoa, Cầu Giấy, Hà Nội', '', NULL),
(4759, 13, 'Nguyễn Văn Khánh', '9648383113', 'Long Phú, Quốc Oai, Hà Nội', 'Giao hàng nhanh không là boom đấy', NULL),
(4772, 37, 'quandh', '0334205811', 'quan 12 tphcm', '', 'Chi nhánh Q12'),
(4886, 7, 'Đặng Hữu Thịnh', '878398141', 'Quan Hoa, Cầu Giấy, Hà Nội', '', NULL),
(4970, 7, 'Đặng Hữu Thịnh', '878398141', '225 Quan hoa, Cầu giấy, Hà Nội', 'Cẩn hận giúp mình nhé', NULL),
(4981, 7, 'Đặng Hữu Thịnh', '878398141', 'Long Phú, Quốc Oai, Hà Nội', 'Giao hàng nhanh không là boom đấy', NULL),
(5029, 28, 'quandh', '0334205811', '113 ca', '', NULL),
(5319, 7, 'Đặng Hữu Thịnh', '0878398141', 'Quan Hoa, Cầu Giấy, Hà Nội', 'Cẩn hận giúp mình nhé', NULL),
(5320, 6, 'Thinhdz', '878398141', '225 Quan hoa, Cầu giấy, Hà Nội', 'Cẩn hận giúp mình nhé', NULL),
(5379, 7, 'Đặng Hữu Thịnh', '0878398141', 'Quan Hoa, Cầu Giấy, Hà Nội', '', NULL),
(5509, 13, 'Nguyễn Văn Khánh', '09648383113', 'Long Phú, Quốc Oai, Hà Nội', '', NULL),
(5546, 28, 'quandh', '0334205811', '113 ca', '', NULL),
(5605, 7, 'Đặng Hữu Thịnh', '0878398141', 'Quan Hoa, Cầu Giấy, Hà Nội', '', NULL),
(5611, 7, 'Đặng Hữu Thịnh', '878398141', 'Quan Hoa, Cầu Giấy, Hà Nội', '', NULL),
(5672, 7, 'Đặng Hữu Thịnh', '878398141', '225 Quan hoa, Cầu giấy, Hà Nội', 'Giao hàng nhanh không là boom đấy', NULL),
(5741, 1, 'Nguyễn phúc an', '0368683854', 'Long Phú, Quốc Oai, Hà Nội', '', NULL),
(5749, 7, 'Đặng Hữu Thịnh', '0878398141', 'Quan Hoa, Cầu Giấy, Hà Nội', '', NULL),
(5770, 37, 'quandh', '0334205811', 'quan 12 tphcm', '', 'Chi nhánh Bình dương '),
(5986, 13, 'Nguyễn Văn Khánh', '9648383113', 'Long Phú, Quốc Oai, Hà Nội', 'Giao hàng nhanh không là boom đấy', NULL),
(6245, 6, 'Thinhdz', '878398141', '225 Quan hoa, Cầu giấy, Hà Nội', 'Giao hàng nhanh không là boom đấy', NULL),
(6275, 2, 'Nguyễn phúc an', '9383434323', '225 Quan hoa, Cầu giấy, Hà Nội', 'Cẩn hận giúp mình nhé', NULL),
(6378, 1, 'Nguyễn Việt Hưng', '0979359018', 'Hà Nội', '', NULL),
(6415, 7, 'Đặng Hữu Thịnh', '878398141', '225 Quan hoa, Cầu giấy, Hà Nội', 'Giao hàng nhanh không là boom đấy', NULL),
(6426, 7, 'Đặng Hữu Thịnh', '878398141', '225 Quan hoa, Cầu giấy, Hà Nội', 'Giao hàng nhanh không là boom đấy', NULL),
(6560, 7, 'Đặng Hữu Thịnh', '878398141', 'Quan Hoa, Cầu Giấy, Hà Nội', '', NULL),
(6743, 7, 'Đặng Hữu Thịnh', '0878398141', 'Quan Hoa, Cầu Giấy, Hà Nội', 'Cẩn hận giúp mình nhé', NULL),
(6820, 23, 'test', '987654321', 'hn', '', NULL),
(6903, 7, 'Đặng Hữu Thịnh', '0878398141', 'Quan Hoa, Cầu Giấy, Hà Nội', 'Cẩn hận giúp mình nhé', NULL),
(6965, 1, 'Nguyễn phúc an', '368683854', 'Hà Nội', '', NULL),
(7013, 7, 'Đặng Hữu Thịnh', '878398141', '225 Quan hoa, Cầu giấy, Hà Nội', 'Giao hàng nhanh không là boom đấy', NULL),
(7017, 14, 'Diệu Anh', '0964838311', 'Long Phú, Quốc Oai, Hà Nội', '', NULL),
(7044, 6, 'Thinhdz', '878398141', '225 Quan hoa, Cầu giấy, Hà Nội', 'Giao hàng nhanh không là boom đấy', NULL),
(7103, 1, 'thinhdh', '878398141', 'Long Phú, Quốc Oai, Hà Nội', 'Cẩn hận giúp mình nhé', NULL),
(7149, 7, 'Đặng Hữu Thịnh', '0878398141', 'Quan Hoa, Cầu Giấy, Hà Nội', '', NULL),
(7164, 7, '', '878398141', '', '', NULL),
(7167, 7, '', '878398141', '', 'hgjhghjjhgjhjjk', NULL),
(7224, 1, 'Nguyễn thị diệu anh', '979359018', 'Hà Nội', '', NULL),
(7277, 14, 'Diệu Anh', '0964838311', 'Long Phú, Quốc Oai, Hà Nội', '', NULL),
(7433, 1, 'Thịnh đang test', '979359018', 'Hà Nội', '', NULL),
(7497, 37, 'quandh', '0334205811', 'quan 12 tphcm', '', 'Chi nhánh Q1'),
(7557, 28, 'quandh', '0334205811', '113 ca', '', NULL),
(7652, 13, 'Nguyễn Văn Khánh', '09648383113', 'Long Phú, Quốc Oai, Hà Nội', '', NULL),
(7829, 7, 'Đặng Hữu Thịnh', '878398141', 'Quan Hoa, Cầu Giấy, Hà Nội', '', NULL),
(8186, 7, 'Đặng Hữu Thịnh', '878398141', 'Long Phú, Quốc Oai, Hà Nội', 'Giao hàng nhanh không là boom đấy', NULL),
(8207, 7, 'Đặng Hữu Thịnh', '878398141', 'Long Phú, Quốc Oai, Hà Nội', 'Giao hàng nhanh không là boom đấy', NULL),
(8299, 7, 'Đặng Hữu Thịnh', '0878398141', 'Quan Hoa, Cầu Giấy, Hà Nội', '', NULL),
(8388, 7, 'Đặng Hữu Thịnh', '0878398141', 'Quan Hoa, Cầu Giấy, Hà Nội', '', NULL),
(8440, 22, 'admin', '0987654321', 'hn', '', NULL),
(8564, 14, 'Diệu Anh', '0964838311', 'Long Phú, Quốc Oai, Hà Nội', '', NULL),
(8609, 7, 'Đặng Hữu Thịnh', '878398141', '225 Quan hoa, Cầu giấy, Hà Nội', 'Giao hàng nhanh không là boom đấy', NULL),
(8811, 37, 'quandh', '0334205811', 'quan 12 tphcm', 'Dang Hong Quan', 'Chi nhánh Q1'),
(8855, 7, 'Đặng Hữu Thịnh', '0878398141', 'Quan Hoa, Cầu Giấy, Hà Nội', 'Cẩn hận giúp mình nhé', NULL),
(8867, 23, 'test', '987654321', 'hn', '', NULL),
(9000, 26, 'trần Quang Đạt ', '823488817', 'Quận 1 Nguyễn Bỉnh Khiêm Thành Phố Hồ Chí Minh', '', NULL),
(9016, 25, 'Nguyễn Thành Trung', '0989275330', 'TP HCM', 'OKK', NULL),
(9057, 6, 'Thinhdz', '878398141', '225 Quan hoa, Cầu giấy, Hà Nội', 'Giao hàng nhanh không là boom đấy', NULL),
(9059, 6, 'Thinhdz', '878398141', 'Long Phú, Quốc Oai, Hà Nội', 'Giao hàng nhanh không là boom đấy', NULL),
(9146, 26, 'trần Quang Đạt ', '823488817', 'Quận 1 Nguyễn Bỉnh Khiêm Thành Phố Hồ Chí Minh', '', NULL),
(9288, 13, 'Nguyễn Văn Khánh', '09648383113', 'Long Phú, Quốc Oai, Hà Nội', '', NULL),
(9305, 7, 'Đặng Hữu Thịnh', '0878398141', 'Quan Hoa, Cầu Giấy, Hà Nội', '', NULL),
(9495, 7, 'Đặng Hữu Thịnh', '878398141', '225 Quan hoa, Cầu giấy, Hà Nội', 'Cẩn hận giúp mình nhé', NULL),
(9537, 7, 'Đặng Hữu Thịnh', '878398141', 'Quan Hoa, Cầu Giấy, Hà Nội', '', NULL),
(9707, 7, 'Đặng Hữu Thịnh', '0878398141', 'Quan Hoa, Cầu Giấy, Hà Nội', '', NULL),
(9721, 14, 'Diệu Anh', '0964838311', 'Long Phú, Quốc Oai, Hà Nội', '', NULL),
(9743, 1, 'Phạm Tuấn Thanh', '0343434523', 'Quan Hoa, Cầu Giấy, Hà Nội', '', NULL),
(9799, 28, 'quandh', '0334205811', '113 ca', '', NULL),
(9808, 28, 'quandh', '0334205811', '113 ca', '', NULL),
(9910, 7, 'Đặng Hữu Thịnh', '878398141', '225 Quan hoa, Cầu giấy, Hà Nội', 'Giao hàng nhanh không là boom đấy', NULL),
(9955, 7, 'Đặng Hữu Thịnh', '878398141', 'Quan Hoa, Cầu Giấy, Hà Nội', '', NULL),
(9965, 7, 'Đặng Hữu Thịnh', '0878398141', 'Quan Hoa, Cầu Giấy, Hà Nội', '', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `evaluate`
--

CREATE TABLE `evaluate` (
  `evaluate_id` int(11) NOT NULL,
  `account_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `account_name` varchar(50) NOT NULL,
  `evaluate_rate` int(11) NOT NULL,
  `evaluate_content` text NOT NULL,
  `evaluate_date` varchar(50) NOT NULL,
  `evaluate_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `evaluate`
--

INSERT INTO `evaluate` (`evaluate_id`, `account_id`, `product_id`, `account_name`, `evaluate_rate`, `evaluate_content`, `evaluate_date`, `evaluate_status`) VALUES
(10, 7, 15, 'Đặng Hữu Thịnh', 5, 'Ưng lắm ạ, dùng phụ kiện thú cưng này có một tuần mà có người yêu luôn', '2023-06-13 09:46:32', 1),
(13, 13, 20, 'Nguyễn Văn khánh', 5, 'Tuyệt luôn !!!', '2023-06-13 10:04:05', 1),
(14, 13, 19, 'Nguyễn Văn khánh', 4, 'Sản phẩm ổn trong tầm giá', '2023-06-13 10:07:48', 1),
(16, 14, 18, 'Diệu Anh', 5, 'phụ kiện thú cưng thơm, ship giao hàng nhanh', '2023-06-14 08:59:17', 1),
(18, 14, 22, 'Diệu Anh', 5, 'Tuyệt, đi làm chị em trong công ty ai cũng khen', '2023-06-14 09:49:54', 1),
(19, 7, 10, 'Đặng Hữu Thịnh', 4, 'sản phẩm tuyệt lắm ạ', '2023-06-19 12:40:20', 1),
(20, 13, 10, 'Nguyễn Văn khánh', 5, 'tuyệt!!!', '2023-06-19 12:41:22', 1),
(21, 13, 11, 'Nguyễn Văn khánh', 3, 'Nước tạm ổn trong tầm giá, mỗi tội giao hàng hơi lâu\r\n', '2023-06-19 12:42:31', 1),
(22, 21, 21, 'Hà Thắng', 5, 'Xịt cái có người yêu luôn', '2023-06-19 22:02:18', 1),
(23, 7, 14, 'Đặng Hữu Thịnh', 4, 'ccc', '2023-07-07 18:05:41', 1),
(24, 24, 17, 'Nguyễn Thanh Lâm', 5, 'OK', '2023-10-26 11:44:16', 1),
(25, 25, 18, 'Nguyễn Thành Trung', 4, 'OK Nè', '2023-10-26 20:05:03', 1),
(26, 26, 152, 'trần Quang Đạt ', 4, 'dfsdfsdf', '2024-04-29 13:21:45', 1),
(27, 26, 152, 'trần Quang Đạt ', 5, 'fdfsdfsd', '2024-04-29 13:21:56', 1),
(28, 26, 152, 'trần Quang Đạt ', 1, 'DATGOLD', '2024-04-29 13:36:55', 1),
(29, 28, 173, 'quandh', 5, 'good', '2024-08-26 17:06:38', 1),
(30, 28, 173, 'quandh', 5, 'test', '2024-08-26 17:51:44', 1),
(31, 37, 177, 'quandh', 5, '13212312', '2024-10-14 18:50:02', 1),
(32, 37, 212, 'quandh', 2, 'không ngon', '2024-10-19 21:20:23', 1),
(33, 37, 212, 'quandh', 5, 'ngon', '2024-10-19 21:22:55', 1);

-- --------------------------------------------------------

--
-- Table structure for table `inventory`
--

CREATE TABLE `inventory` (
  `inventory_id` int(11) NOT NULL,
  `account_id` int(11) NOT NULL,
  `staf_name` varchar(50) NOT NULL,
  `supplier_name` varchar(50) NOT NULL,
  `supplier_phone` varchar(20) NOT NULL,
  `inventory_note` varchar(100) NOT NULL,
  `inventory_code` varchar(50) NOT NULL,
  `inventory_date` date NOT NULL,
  `total_amount` float NOT NULL,
  `inventory_status` int(11) NOT NULL,
  `agency_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `inventory`
--

INSERT INTO `inventory` (`inventory_id`, `account_id`, `staf_name`, `supplier_name`, `supplier_phone`, `inventory_note`, `inventory_code`, `inventory_date`, `total_amount`, `inventory_status`, `agency_name`) VALUES
(1, 0, 'Thịnh Đặng', 'TYRA Store', '', 'thêm hàng', '9124', '2023-05-22', 29500000, 0, NULL),
(2, 0, 'Thịnh Đặng', 'TYRA Store', '', 'thêm hàng', '4615', '2023-05-22', 30000000, 0, NULL),
(3, 1, 'Thịnh', 'MISA JSC', '', 'Bổ sung hàng', '7331', '2023-05-24', 9000000, 0, NULL),
(4, 0, 'Thịnh Đặng', 'Brave Bits', '', 'Nhập lô sản phẩm mới', '9288', '2023-06-06', 114660000, 0, NULL),
(5, 7, 'Thịnh', 'TYRA Store', '', 'thêm hàng', '8549', '2023-06-06', 7000000, 0, NULL),
(8, 20, 'Thịnh Đặng', 'MISA JSC', '', 'Bổ sung hàng', '3997', '2023-06-18', 63500000, 0, NULL),
(9, 20, 'Thịnh Đặng', 'Brave Bits', '', 'Bổ sung hàng', '4658', '2023-06-18', 15000000, 0, NULL),
(13, 20, 'Thịnh Đặng', 'TYRA Store', '0985789465', 'thêm hàng', '3044', '2023-06-18', 27500000, 0, NULL),
(14, 0, 'Thịnh Đặng', 'TYRA Store', '0985789465', 'Bổ sung hàng', '3450', '2023-06-19', 42500000, 0, NULL),
(21, 0, 'a', 'a', 'a', 'a', '2799', '2024-08-25', 0, 0, ''),
(22, 0, 'a', 'a', 'a', 'a', '6587', '2024-08-25', 17347, 0, NULL),
(23, 0, 'a', 'a', 'a', 'a', '3372', '2024-08-25', 12221, 0, ''),
(24, 0, 'a', 'a', 'a', 'a', '8066', '2024-08-25', 1221, 0, ''),
(25, 0, 'a', 'a', 'a', 'a', '8944', '2024-08-25', 11111, 0, ''),
(26, 0, 'a', 'a', 'a', 'a', '9169', '2024-08-25', 1221, 0, 'Đại Lý XYZ'),
(27, 28, 'quan', 'quan', 'quan', 'quan', '9858', '2024-08-26', 1000000000, 0, 'Công Ty DEF'),
(28, 28, 'test chi nhanh', 'test chi nhanh', 'test chi nhanh', 'test chi nhanh', '6620', '2024-08-27', 12300000, 0, 'Chi nhánh Chường Trinh'),
(29, 28, 'Gold', 'Adidas', '0123123123', 'lô hàng cuối', '5816', '2024-08-27', 3000000, 0, 'Chi nhánh Q12'),
(30, 0, 'a', 'a', 'a', 'a', '3611', '2024-08-28', 2640000000, 0, 'Chi nhánh Chường Chinh'),
(31, 0, 'quan', 'quan', '123123', 'quan', '123', '2024-10-14', 1000000, 0, 'Chi nhánh Q7'),
(32, 0, 'quan', 'quan', 'quan', 'quan', '9104', '2024-10-15', 2000000, 0, 'Chi nhánh Q7'),
(33, 0, 'admin', 'admin', '1111', 'admin', '6868', '2024-10-16', 2000000, 0, 'Chi nhánh Q7');

-- --------------------------------------------------------

--
-- Table structure for table `inventory_detail`
--

CREATE TABLE `inventory_detail` (
  `inventory_detail_id` int(11) NOT NULL,
  `inventory_code` varchar(50) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_quantity` int(11) NOT NULL,
  `product_price_import` float NOT NULL,
  `agency_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `inventory_detail`
--

INSERT INTO `inventory_detail` (`inventory_detail_id`, `inventory_code`, `product_id`, `product_quantity`, `product_price_import`, `agency_id`) VALUES
(1, '9124', 21, 3, 2500000, NULL),
(2, '9124', 18, 11, 2000000, NULL),
(3, '4615', 21, 12, 2500000, NULL),
(4, '7331', 19, 3, 3000000, NULL),
(5, '9288', 15, 12, 9555000, NULL),
(6, '8549', 21, 2, 2500000, NULL),
(7, '8549', 22, 1, 2000000, NULL),
(8, '9453', 38, 12, 10, NULL),
(9, '4330', 101, 4, 1, NULL),
(10, '3997', 17, 11, 2500000, NULL),
(11, '3997', 22, 12, 3000000, NULL),
(12, '4658', 22, 5, 3000000, NULL),
(13, '4890', 16, 11, 2500000, NULL),
(14, '7089', 16, 11, 2500000, NULL),
(15, '1989', 16, 11, 2500000, NULL),
(16, '3044', 16, 11, 2500000, NULL),
(17, '3450', 15, 5, 8500000, NULL),
(18, '9540', 20, 11, 2500000, NULL),
(19, '5574', 21, 2, 3000000, NULL),
(20, '6587', 165, 132, 123, NULL),
(21, '6587', 168, 1, 1111, NULL),
(22, '3372', 168, 11, 1111, NULL),
(23, '8066', 165, 11, 111, NULL),
(24, '8944', 168, 1, 11111, NULL),
(25, '9169', 164, 11, 111, NULL),
(26, '9858', 172, 10000, 100000, NULL),
(27, '6620', 173, 123, 100000, NULL),
(28, '5816', 154, 10, 300000, NULL),
(29, '3611', 173, 132, 20000000, NULL),
(30, '123', 177, 100, 10000, NULL),
(31, '9104', 178, 100, 20000, NULL),
(32, '6868', 196, 100, 20000, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `reply` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `user_id`, `user_name`, `message`, `reply`, `created_at`) VALUES
(1, 38, 'Guest', 'hi ', 'hi nè', '2024-11-25 11:13:24'),
(2, 38, 'Guest', 'oke', NULL, '2024-11-25 18:36:14'),
(3, 38, 'Guest', 'haha', 'Bạn cười cái gì thế', '2024-11-25 18:46:24'),
(4, 38, 'admin', 'Xin Chào, Test Chat nè', 'Chào Bạn nha', '2024-11-26 17:31:03');

-- --------------------------------------------------------

--
-- Table structure for table `metrics`
--

CREATE TABLE `metrics` (
  `metric_id` int(11) NOT NULL,
  `metric_date` date NOT NULL,
  `metric_order` int(11) NOT NULL,
  `metric_sales` varchar(100) NOT NULL,
  `metric_quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `metrics`
--

INSERT INTO `metrics` (`metric_id`, `metric_date`, `metric_order`, `metric_sales`, `metric_quantity`) VALUES
(1, '2023-05-14', 19, '20000000', 34),
(2, '2023-05-15', 24, '20000000', 38),
(3, '2023-05-16', 21, '25000000', 30),
(4, '2023-05-17', 24, '19000000', 38),
(5, '2023-05-18', 28, '35000000', 50),
(6, '2023-05-19', 29, '40000000', 48),
(7, '2023-05-13', 21, '19500000', 28),
(8, '2023-04-19', 29, '40000000', 48),
(9, '2023-03-20', 28, '35000000', 50),
(10, '2023-04-30', 23, '54000000', 100),
(11, '2023-05-06', 23, '44000000', 50),
(12, '2023-05-04', 3, '4000000', 5),
(13, '2023-05-20', 2, '37060000', 8),
(14, '2023-05-23', 3, '9900000', 3),
(15, '2023-05-24', 1, '7200000', 2),
(16, '2023-05-28', 9, '38760000', 29),
(19, '2023-05-29', 1, '3680000', 1),
(20, '2023-06-02', 3, '33770000', 4),
(21, '2023-06-03', 13, '49350000', 8),
(22, '2023-06-04', 6, '21210000', 1),
(23, '2023-06-05', 1, '16200000', 0),
(24, '2023-06-06', 9, '64860000', 11),
(25, '2023-06-07', 11, '60755000', 19),
(26, '2023-06-08', 1, '6300000', 2),
(27, '2023-06-11', 1, '12600000', 2),
(28, '2023-06-14', 1, '2700000', 1),
(29, '2023-06-15', 2, '11400000', 3),
(30, '2023-06-16', 2, '12800000', 2),
(31, '2023-06-18', 8, '108911003.52', 21),
(32, '2023-06-19', 3, '18375000', 4),
(33, '2023-06-20', 2, '92410000', 11),
(34, '2023-07-07', 4, '152049200', 17),
(35, '2023-10-07', 1, '3325000', 1),
(36, '2023-10-26', 1, '356.25', 3),
(37, '2024-08-26', 2, '2280000', 4),
(38, '2024-10-19', 1, '3610000', 19);

-- --------------------------------------------------------

--
-- Table structure for table `momo`
--

CREATE TABLE `momo` (
  `momo_id` int(11) NOT NULL,
  `partner_code` varchar(50) NOT NULL,
  `order_code` int(11) NOT NULL,
  `momo_amount` varchar(50) NOT NULL,
  `order_info` varchar(100) NOT NULL,
  `order_type` varchar(50) NOT NULL,
  `trans_id` int(11) NOT NULL,
  `payment_date` varchar(50) NOT NULL,
  `pay_type` varchar(50) NOT NULL,
  `payment_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `momo`
--

INSERT INTO `momo` (`momo_id`, `partner_code`, `order_code`, `momo_amount`, `order_info`, `order_type`, `trans_id`, `payment_date`, `pay_type`, `payment_status`) VALUES
(2, 'MOMOBKUN20180529', 6434, '9000000', 'Thanh toán qua MoMo ATM', 'momo_wallet', 2147483647, '2023-06-15 13:05:51', 'napas', 0),
(3, 'MOMOBKUN20180529', 3619, '7200000', 'Thanh toán qua MoMo ATM', 'momo_wallet', 2147483647, '2023-06-10 13:05:51', 'napas', 0),
(4, 'MOMOBKUN20180529', 9864, '7360000', 'Thanh toán qua MoMo ATM', 'momo_wallet', 2147483647, '2023-06-19 13:05:51', 'napas', 0);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `order_code` int(11) NOT NULL,
  `order_date` varchar(50) NOT NULL,
  `account_id` int(11) NOT NULL,
  `delivery_id` int(11) NOT NULL,
  `total_amount` int(11) NOT NULL,
  `order_type` int(11) NOT NULL,
  `order_status` int(11) NOT NULL,
  `agency_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `order_code`, `order_date`, `account_id`, `delivery_id`, `total_amount`, `order_type`, `order_status`, `agency_name`) VALUES
(183, 5196, '2024-08-27 21:46:23', 28, 2101, 950000, 1, 0, 'Chi nhánh Q12'),
(184, 4403, '2024-08-27 21:55:39', 28, 33, 570000, 1, 0, 'Chi nhánh Q1'),
(185, 3511, '2024-08-27 21:55:48', 28, 5029, 95000, 1, 0, 'Chi nhánh Q7'),
(186, 2309, '2024-08-27 21:56:00', 28, 5546, 500000, 1, 0, 'Chi nhánh Bình dương '),
(187, 4064, '2024-08-27 21:59:53', 28, 357, 570000, 1, 0, 'Chi nhánh Q1'),
(188, 501, '2024-08-27 22:00:19', 28, 3166, 500000, 1, 0, 'Chi nhánh Chường Trinh'),
(189, 8656, '2024-08-27 22:31:17', 28, 2136, 570000, 1, 0, 'Chi nhánh Q7'),
(190, 3402, '2024-08-28 01:11:56', 28, 3744, 665000, 1, 0, 'Chi nhánh Chường Chinh'),
(191, 752, '2024-10-14 19:03:36', 37, 35, 106800, 1, 0, 'Chi nhánh Q12'),
(192, 7388, '2024-10-15 21:19:57', 37, 8811, 1045000, 1, 0, 'Chi nhánh Q1'),
(193, 4656, '2024-10-16 19:31:55', 37, 4615, 114000, 1, 0, 'Chi nhánh Q1'),
(194, 7458, '2024-10-16 21:53:26', 37, 1971, 284000, 1, 0, 'Chi nhánh Q12'),
(195, 6756, '2024-10-19 17:07:01', 37, 5770, 57000, 1, 0, 'Chi nhánh Bình dương '),
(196, 3138, '2024-10-19 20:35:22', 37, 7497, 284000, 1, 0, 'Chi nhánh Q1'),
(197, 1017, '2024-10-19 21:14:45', 37, 4772, 570000, 1, 0, 'Chi nhánh Q12'),
(198, 4172, '2024-10-19 21:23:24', 37, 2504, 3610000, 1, 2, 'Chi nhánh Q12');

-- --------------------------------------------------------

--
-- Table structure for table `order_detail`
--

CREATE TABLE `order_detail` (
  `order_detail_id` int(11) NOT NULL,
  `order_code` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_quantity` int(11) NOT NULL,
  `product_price` int(11) NOT NULL,
  `product_sale` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `order_detail`
--

INSERT INTO `order_detail` (`order_detail_id`, `order_code`, `product_id`, `product_quantity`, `product_price`, `product_sale`) VALUES
(200, 752, 177, 1, 120000, 11),
(201, 7388, 154, 11, 100000, 5),
(202, 4656, 181, 2, 60000, 5),
(203, 7458, 196, 4, 100000, 29),
(204, 6756, 181, 1, 60000, 5),
(205, 3138, 196, 4, 100000, 29),
(206, 1017, 212, 3, 200000, 5),
(207, 4172, 212, 19, 200000, 5);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `product_id` int(11) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `product_category` int(11) NOT NULL,
  `product_brand` int(11) NOT NULL,
  `capacity_id` varchar(255) NOT NULL,
  `product_quantity` int(11) NOT NULL,
  `quantity_sales` int(11) NOT NULL,
  `product_price_import` int(11) NOT NULL,
  `product_price` int(11) NOT NULL,
  `product_sale` int(11) NOT NULL,
  `product_description` text NOT NULL,
  `product_image` text NOT NULL,
  `product_status` int(11) NOT NULL,
  `product_images` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`product_id`, `product_name`, `product_category`, `product_brand`, `capacity_id`, `product_quantity`, `quantity_sales`, `product_price_import`, `product_price`, `product_sale`, `product_description`, `product_image`, `product_status`, `product_images`) VALUES
(100, 'Máy Dọn Phân Tự Động Petkit PURA MAX (BH 12T)', 13, 10, '', 100, 0, 5000000, 10000000, 1, '<p>M&aacute;y Dọn Ph&acirc;n Tự Động&nbsp;PURA MAX kh&aacute;ng khuẩn, khử m&ugrave;i ch&iacute;nh h&atilde;ng&nbsp;PETKIT d&agrave;nh cho m&egrave;o</p>\r\n\r\n<p>Bản quốc tế bảo h&agrave;nh ch&iacute;nh h&atilde;ng Bảo h&agrave;nh ch&iacute;nh h&atilde;ng 12 th&aacute;ng</p>\r\n\r\n<p>- K&iacute;ch thước : 520*552*620 mm</p>\r\n\r\n<p>- Hỗ trợ kết nối App điện thoại th&ocirc;ng qua wifi 2.4Ghz</p>\r\n\r\n<p>- Cabin c&oacute; k&iacute;ch thước rộng 76L,cửa v&agrave;o thấp , thoải m&aacute;i với m&egrave;o 8 kg</p>\r\n\r\n<p>- Bộ lọc được thiết kế đặc biệt ph&ugrave; hợp với cả c&aacute;t hữu cơ v&agrave; c&aacute;t bentonite..</p>\r\n\r\n<p>- Trọng lượng m&egrave;o ph&ugrave; hợp: 1,5-16kg</p>\r\n', '1729346849_may-don-phan-tu-dong-petkit-pura-max-bh-12thang.webp', 1, NULL),
(101, 'Máy Ăn Tự Động Petkit MINI 2.85L - Bát đựng inox (BH 12T)', 13, 11, '', 100, 0, 5000000, 10000000, 0, '<p>Bạn lu&ocirc;n lo lắng khi m&igrave;nh đi du lịch, đi c&ocirc;ng t&aacute;c th&igrave; vấn đề ăn uống của pet sẽ như thế n&agrave;o? V&agrave; m&aacute;y ăn tự động Petkit sẽ gi&uacute;p bạn giải quyết triệt để vấn đề đ&oacute;</p>\r\n\r\n<p><strong>M&aacute;y cho ăn tự động hỗ trợ</strong></p>\r\n\r\n<p>&nbsp;- Kết nối với ứng dụng Petkit tr&ecirc;n smartphone v&agrave; th&ocirc;ng qua Wifi để điều chỉnh, c&agrave;i đặt bữa ăn h&agrave;ng ng&agrave;y cho pet</p>\r\n\r\n<p>- Lập tr&igrave;nh tối đa ~10 bữa/ng&agrave;y</p>\r\n\r\n<p>- Hộp h&uacute;t ẩm b&ecirc;n trong m&aacute;ng ăn giữ cho thực phẩm tươi. Bạn c&oacute; thể sử dụng to&agrave;n bộ c&ocirc;ng suất của bộ nạp n&agrave;y m&agrave; kh&ocirc;ng lo thức ăn bị &ocirc;i thiu hay ẩm mốc. Điều n&agrave;y c&oacute; nghĩa l&agrave; n&oacute; tồn tại trong một thời gian d&agrave;i m&agrave; kh&ocirc;ng cần nạp th&ecirc;m.</p>\r\n\r\n<p>- Dung t&iacute;ch m&aacute;y chứa được đến 3 l&iacute;t thực phẩm kh&ocirc;, chấp nhận tất cả c&aacute;c k&iacute;ch thước h&igrave;nh dạng của thức ăn, thậm ch&iacute; l&agrave; h&igrave;nh vu&ocirc;ng, th&iacute;ch hợp cho mọi th&uacute; cưng - Khay đựng thức ăn c&oacute; thể th&aacute;o rời, dễ d&agrave;ng vệ sinh</p>\r\n', '1729346892_may-an-tu-dong-petkit-mini-3l-bat-inox-bh-12t.webp', 1, NULL),
(102, 'Máy Dọn Vệ Sinh Mèo Tự Động Tipro (Bảo Hành 6 Tháng)', 13, 12, '', 100, 0, 5000000, 7000000, 0, '<ul>\r\n	<li>Thương hiệu: TiPro</li>\r\n	<li>Ph&ugrave; hợp cho: M&egrave;o mọi lứa tuổi</li>\r\n	<li>M&aacute;y dọn ph&acirc;n m&egrave;o&nbsp;TiPro l&agrave; một sản phẩm tiện &iacute;ch d&agrave;nh cho những người nu&ocirc;i m&egrave;o trong nh&agrave;. Với thiết kế th&ocirc;ng minh, m&aacute;y sẽ tự động dọn ph&acirc;n v&agrave; lọc c&aacute;t mỗi khi m&egrave;o của bạn sử dụng nh&agrave; vệ sinh. M&aacute;y c&oacute; thể được lập tr&igrave;nh để tự động l&agrave;m việc trong khoảng thời gian nhất định, được điều khiển bằng điện thoại th&ocirc;ng minh của bạn, cho ph&eacute;p bạn kiểm so&aacute;t v&agrave; điều chỉnh c&aacute;c chế độ hoạt động từ xa.&nbsp;M&aacute;y dọn vệ sinh m&egrave;o&nbsp;của Tipro sẽ gi&uacute;p bạn kh&ocirc;ng phải lo lắng về việc l&agrave;m sạch nh&agrave; vệ sinh cho b&eacute; cưng của m&igrave;nh.</li>\r\n</ul>\r\n', '1729346924_122.webp', 1, NULL),
(103, 'Máy Tinh Dầu Feliway Classic Giảm Căng Thẳng Cho Chó Mèo', 13, 12, '', 100, 0, 5000000, 1000000, 0, '<p>Feliway Classic l&agrave; một kh&aacute;m ph&aacute; pheromone mới, được cấp bằng s&aacute;ng chế v&agrave; l&agrave; sản phẫm tốt nhất của FELIWAY để gi&uacute;p giảm c&aacute;c dấu hiệu căng thẳng, stress phổ biến nhất ở m&egrave;o. Feliway Classic gi&uacute;p m&egrave;o giảm bớt căng thẳng v&agrave; b&igrave;nh tĩnh hơn; gi&uacute;p m&egrave;o giảm c&agrave;o cấu, tiểu bậy, căng thẳng, xung đột với c&aacute;c b&eacute; m&egrave;o kh&aacute;c hoặc phản ứng với c&aacute;c thay đổi của m&ocirc;i trường xung quanh, v&agrave; trở n&ecirc;n đầm t&iacute;nh hơn. Sản phẫm mới n&agrave;y, được nghi&ecirc;n cứu v&agrave; sản xuất với hơn 20 năm chuy&ecirc;n m&ocirc;n v&agrave; kinh nghiệm về căng thẳng ở m&egrave;o của c&ocirc;ng ty FELIWAY, gi&uacute;p m&egrave;o của bạn cảm thấy thoải m&aacute;i hơn bao giờ hết khi ở nh&agrave;.</p>\r\n\r\n<p>Feliway Classic l&agrave; một loại m&aacute;y h&oacute;a hơi được cắm đơn giản v&agrave;o ổ cắm v&agrave; tỏa ra pheromone v&agrave;o kh&ocirc;ng kh&iacute; , điều n&agrave;y c&oacute; thể g&oacute;p phần gi&uacute;p m&egrave;o h&ograve;a hợp hơn v&agrave; cải thiện cảm gi&aacute;c an to&agrave;n. Loại hơi n&agrave;y chỉ c&oacute; t&aacute;c dụng đối với m&egrave;o , c&aacute;c động vật kh&aacute;c trong nh&agrave; kh&ocirc;ng bị ảnh hưởng bởi n&oacute;. Đối với con người, Feliway Classic kh&ocirc;ng m&ugrave;i n&ecirc;n kh&ocirc;ng g&acirc;y kh&oacute; chịu.</p>\r\n', '1729346965_may-tinh-dau-feliway-classic-giam-cang-thang-cho-cho-meo.webp', 1, NULL),
(104, 'Máy Sấy Lông Tự Động Cho Mèo (Bảo Hành 6 Tháng)', 13, 10, '', 100, 0, 200000, 2000000, 0, '<p>Lồng sấy kiểu d&aacute;ng hiện đại, gi&uacute;p tiết kiệm thời gian cho c&aacute;c sen, thời trang, tiện dụng kết hợp Khử tr&ugrave;ng Ozone, điều chỉnh nhiệt độ v&agrave; c&agrave;i đặt thời gian Nhiệt độ th&igrave; &ocirc;i th&iacute;ch m&ecirc; lu&ocirc;n nh&eacute;, toả đều ấm BOSS ph&ecirc; pha Sấy ion &acirc;m gi&uacute;p l&ocirc;ng ch&oacute; m&egrave;o mềm mượt, gi&uacute;p khử m&ugrave;i h&ocirc;i v&agrave; nấm tr&ecirc;n da</p>\r\n\r\n<p><strong>T&Iacute;NH NĂNG</strong><br />\r\n- Độ ồn thấp<br />\r\n- 3 Cấp độ gi&oacute;<br />\r\n- Đ&egrave;n chiếu s&aacute;ng<br />\r\n- Hẹn thời gian sấy 1p &gt; 120p<br />\r\n- T&iacute;nh nặng khử khuẩn<br />\r\n- T&iacute;nh năng th&ocirc;ng minh kiểm so&aacute;t nhiệt độ<br />\r\n- Sấy Ion &acirc;m : gi&uacute;p khử m&ugrave;i, tạo độ ẩm cho l&ocirc;ng ĐẶC ĐIỂM NỔI BẬT<br />\r\n- C&ocirc;ng suất cao 1000W<br />\r\n- Thiết kế độ ồn cực thấp<br />\r\n- M&agrave;n h&igrave;nh điều khiển vật l&yacute;<br />\r\n- Bảo vệ kiểm so&aacute;t nhiệt độ T&iacute;ch hợp thiết bị bảo vệ qu&aacute; nhiệt tự động ngừng gia nhiệt khi nhiệt độ qu&aacute; cao</p>\r\n', '1729347000_homerun.webp', 1, NULL),
(199, 'Bánh Thưởng Cho Chó Xương Orgo Bổ Sung Canxi & Sạch Răng', 17, 12, '14', 100, 0, 50000, 100000, 5, '<ul>\r\n	<li>Thương hiệu: Orgo</li>\r\n	<li>Ph&ugrave; hợp cho: Ch&oacute; mọi lứa tuổi</li>\r\n	<li>Gặm l&agrave; h&agrave;nh vi tự nhi&ecirc;n của ch&oacute; để kh&aacute;m ph&aacute;, chơi đ&ugrave;a. B&aacute;nh xương gặm cho ch&oacute; Orgo gi&uacute;p l&agrave;m sạch răng v&agrave; bổ sung canxi th&ocirc;ng qua h&agrave;nh vi gặm của ch&oacute;, đồng thời gi&uacute;p ch&oacute; giảm căng thẳng, nh&agrave;m ch&aacute;n v&agrave; tr&aacute;nh việc cắn ph&aacute; đồ đạc trong nh&agrave;. Xương gặm&nbsp;mềm, c&oacute; m&ugrave;i thơm dễ chịu ph&ugrave; hợp với cả c&aacute;c giống ch&oacute; nhỏ. Quy tr&igrave;nh sản xuất hiện đại theo ti&ecirc;u chuẩn n&ecirc;n cực k&igrave; hấp dẫn c&aacute;c ch&uacute; ch&oacute; m&agrave; vẫn đảm bảo sức khỏe khi sử dụng.&nbsp;</li>\r\n</ul>\r\n', '1729345726_banh-thuong-orgo-cho-cho.webp', 1, NULL),
(200, 'Thức Ăn Cho Chó Trên 6 Tháng ANF 6Free Hữu Cơ', 17, 11, '14', 100, 0, 50000, 200000, 0, '<p>Loại sản phẩm: thức ăn cho m&egrave;o<br />\r\nDạng sản phẩm: thức ăn dạng hạt<br />\r\n&Aacute;p dụng: c&aacute;c ch&uacute; m&egrave;o trưởng th&agrave;nh từ 1 năm tuổi trở l&ecirc;n, mọi loại m&egrave;o<br />\r\nXuất xứ: H&agrave;n Quốc<br />\r\n&nbsp;</p>\r\n', '1729345874_ANF-6Free.jpg', 1, NULL),
(201, 'Hạt Ganador Adult Cho Chó Trưởng Thành Vị Gà Quay', 17, 10, '17', 100, 0, 500000, 1000000, 20, '<p>HỨC ĂN CHO CH&Oacute; Ganador adult Dạng hạt Vị g&agrave; nướng</p>\r\n\r\n<p><br />\r\nD&agrave;nh cho tất cả c&aacute;c giống Ch&oacute; trưởng th&agrave;nh từ 12 th&aacute;ng tuổi trở l&ecirc;n<br />\r\n<br />\r\nGanador l&agrave; nh&atilde;n hiệu thức ăn cho ch&oacute; cưng được sản xuất bởi Tập đo&agrave;n Neovia với gần 60 năm kinh nghiệm trong lĩnh vực dinh dưỡng v&agrave; chăm s&oacute;c th&uacute; cưng.</p>\r\n\r\n<p><br />\r\nC&ocirc;ng thức sản phẩm l&agrave; t&acirc;m huyết nghi&ecirc;n cứu của c&aacute;c chuy&ecirc;n gia dinh dưỡng vật nu&ocirc;i h&agrave;ng đầu tại Ph&aacute;p với mong muốn cung cấp cho ch&oacute; cưng h&agrave;m lượng dinh dưỡng c&acirc;n bằng v&agrave; đầy đủ nhất, gi&uacute;p ch&uacute;ng c&oacute; một cuộc sống thật khỏe mạnh v&agrave; năng động.<br />\r\nMỗi sản phẩm của ch&uacute;ng t&ocirc;i được sản xuất từ những nguy&ecirc;n liệu chất lượng cao như thịt thật v&agrave; gạo/cơm, tu&acirc;n thủ nghi&ecirc;m ngặt hệ thống ti&ecirc;u chuẩn quốc tế của Ng&agrave;nh sản xuất thức ăn Chăn nu&ocirc;i Hoa Kỳ (AAFCO).</p>\r\n', '1729345956_ganadorchickern.webp', 1, NULL),
(202, 'Hạt Tươi Taste Of The Wild Cho Chó Trưởng Thành (USA)', 17, 12, '16', 100, 0, 200000, 500000, -1, '<p>Thức Ăn Hạt Cao Cấp Taste Of The Wild Cho Ch&oacute; Trưởng Th&agrave;nh (Nhập khẩu Mỹ)<br />\r\nTaste Of The Wild l&agrave; một trong những thương hiệu thức ăn cho ch&oacute; m&egrave;o ph&aacute;t triển nhanh nhất thế giới. C&aacute;c sản phẩm của Taste Of The Wild được sản xuất trực tiếp tại Mỹ dựa tr&ecirc;n c&aacute;c điều kiện sản xuất tốt nhất. Thức ăn cho ch&oacute; m&egrave;o Taste Of The Wild ng&agrave;y c&agrave;ng được y&ecirc;u th&iacute;ch. G&oacute;p phần x&acirc;y dựng khẩu phần ăn đầy đủ chất v&agrave; năng lượng cho th&uacute; cưng.<br />\r\n<br />\r\nThức ăn cho ch&oacute; m&egrave;o Taste Of The Wild mang hương vị đặc trưng kh&ocirc;ng giống bất kỳ loại thức ăn n&agrave;o kh&aacute;c tr&ecirc;n thị trường. Tất cả c&ocirc;ng thức dinh dưỡng được x&acirc;y dựng tr&ecirc;n chế độ ăn tự nhi&ecirc;n của th&uacute; cưng. Th&agrave;nh phần đầu ti&ecirc;n quan trọng phải kể tới thịt v&agrave; c&aacute;. Nguồn Protein được lấy từ thịt lợn, b&ograve; rừng, c&aacute; hồi, vịt, thịt nai&hellip; Kết hợp với hương liệu v&agrave; gia vị gi&uacute;p thức ăn ngon v&agrave; hấp dẫn hơn. Chắc chắn một điều rằng sẽ k&iacute;ch th&iacute;ch th&uacute; cưng của bạn ham ăn hơn.</p>\r\n', '1729346027_hat-tuoi-taste-of-the-wild-cho-cho-truong-thanh-usa-paddy-8.webp', 1, NULL),
(203, 'Thức Ăn Hạt Cho Chó Con Poodle Royal Canin Poodle Puppy', 17, 11, '15', 100, 0, 50000, 200000, 5, '<ul>\r\n	<li>Thương hiệu: Royal Canin</li>\r\n	<li>Ph&ugrave; hợp cho: Ch&oacute; con Poodle (2 - 10 th&aacute;ng tuổi)</li>\r\n	<li>Royal Canin&nbsp;Poodle Puppy&nbsp;l&agrave; loại&nbsp;thức ăn cho ch&oacute;&nbsp;dinh dưỡng được thiết kế d&agrave;nh ri&ecirc;ng cho ch&oacute; con Poodle của bạn.&nbsp;Thức ăn Poodle&nbsp;n&agrave;y t&ugrave;y chỉnh được thiết kế cho m&otilde;m v&agrave; h&agrave;m thẳng của&nbsp;Poodle, gi&uacute;p ch&uacute;ng dễ d&agrave;ng nhặt v&agrave; nhai.&nbsp;Hạt Royal Canin&nbsp;chứa một hỗn hợp c&aacute;c chất chống oxy h&oacute;a độc quyền v&agrave; vitamin E hỗ trợ hệ thống miễn dịch đang ph&aacute;t triển của Poodle puppy v&agrave; giữ cho cơ thể ch&oacute; ph&aacute;t triển khỏe mạnh.&nbsp;Royal Canin Poodle&nbsp;c&ograve;n hỗ trợ sức khỏe của da v&agrave; l&ocirc;ng cũng như chăm s&oacute;c hệ ti&ecirc;u h&oacute;a trong giai đoạn ch&oacute; con của Poodle.&nbsp;Khi Poodle của bạn hơn 10 th&aacute;ng tuổi, h&atilde;y chuyển sang c&aacute;c loại&nbsp;hạt cho Poodle&nbsp;kh&aacute;c của Royal Canin để c&oacute; đầy đủ dinh dưỡng cho những năm trường th&agrave;nh tiếp theo.</li>\r\n</ul>\r\n', '1729346078_thuc-an-hat-cho-cho-royal-canin-poodle-puppy.webp', 1, NULL),
(204, 'Hạt Ganador Adult Cho Chó Trưởng Thành Vị Cừu & Gạo', 17, 11, '14', 100, 0, 50000, 100000, 5, '<p>Thức ăn cho ch&oacute; trưởng th&agrave;nh vị thịt cừu v&agrave; gạo Ganador Adult Lamb and Rice<br />\r\nGANADOR ADULT LAMB and RICE</p>\r\n\r\n<p><br />\r\n(D&agrave;nh cho ch&oacute; trưởng th&agrave;nh từ 12 th&aacute;ng trở l&ecirc;n)</p>\r\n\r\n<p><br />\r\nM&ocirc; tả sản phẩm:<br />\r\n+ Thức ăn Hỗn Hợp Ganador Thịt Cừu v&agrave; gạo c&oacute; c&ocirc;ng thức được pha chế v&agrave; thiết kế từ Ph&aacute;p đảm bảo gi&aacute; trị dinh dưỡng cao nhằm duy tr&igrave; hợp l&iacute; giai đoạn trưởng th&agrave;nh d&agrave;i nhất của Ch&oacute; cưng cho nhiều giống lo&agrave;i v&agrave; k&iacute;ch cỡ.<br />\r\n+ Thức ăn Hỗn Hợp Ganador Thịt Cừu v&agrave; gạo được chế biến đặc biệt cho th&uacute; cưng của bạn nhằm đảm bảo một chế độ dinh dưỡng to&agrave;n diện v&agrave; c&acirc;n bằng.</p>\r\n', '1729346121_ganadorlamb.webp', 1, NULL),
(205, 'Pate TƯƠI The Pet Cho Chó Mèo Biếng Ăn (1kg) - Ship Now/Grab 2H', 14, 12, '13', 100, 0, 50000, 100000, 0, '<p>Pate Tươi Cho M&egrave;o Hỗn Hợp cho Ch&oacute; M&egrave;o Biếng Ăn được l&agrave;m từ hỗn hợp c&aacute; biển v&agrave; gan g&agrave; tươi nguy&ecirc;n chất th&iacute;ch hợp d&ugrave;ng cho Ch&oacute; M&egrave;o.<br />\r\n<br />\r\nCHẤP HẾT TẤT CẢ M&Egrave;O BIẾNG ĂN, KH&Oacute; ĂN, K&Eacute;N MỌI LOẠI THỨC ĂN.<br />\r\n💯 100% nguy&ecirc;n liệu tự nhi&ecirc;n, kh&ocirc;ng độn rau củ, chứa độ ẩm &amp; đạm tự nhi&ecirc;n cao từ 60-84%.<br />\r\n💯 Năng lượng cao hơn vượt trội so với c&aacute;c d&ograve;ng sản phẩm kh&aacute;c tr&ecirc;n thị trường (trung b&igrave;nh ở mức 400kcal/kg).<br />\r\n💯 C&ocirc;ng thức si&ecirc;u cấp nước, gi&uacute;p ngăn ngừa sỏi thận.<br />\r\n💯 Với gi&aacute; chỉ từ 8k/bữa ăn l&agrave; Boss đ&atilde; c&oacute; được bữa ăn thơm ngon, tốt cho sức khỏe.<br />\r\n💯 Chỉ cần bảo quản sản phẩm trong ngăn m&aacute;t, kh&ocirc;ng cần chế biến hay h&acirc;m n&oacute;ng.</p>\r\n', '1729346445_123.jpg', 1, NULL),
(206, 'Pate Mèo Dạng Thạch Nekko Jelly ', 14, 11, '13', 100, 0, 50000, 200000, 10, '<ul>\r\n	<li>Thương hiệu:&nbsp;<strong><a href=\"https://paddy.vn/collections/pate-meo-nekko\" target=\"_blank\">Nekko</a></strong></li>\r\n	<li>Ph&ugrave; hợp cho: M&egrave;o (từ 6 th&aacute;ng tuổi trở l&ecirc;n)</li>\r\n	<li>Nếu bạn đang t&igrave;m kiếm một loại&nbsp;<strong><a href=\"https://paddy.vn/collections/pate-meo\" target=\"_blank\">pate m&egrave;o</a></strong>&nbsp;chất lượng th&igrave; kh&ocirc;ng thể bỏ qua Pate Nekko Jelly.&nbsp;Pate Nekko được cung cấp bởi c&ocirc;ng ty Unicorn Public Co Nhật Bản, c&oacute; cơ sở sản xuất tại Th&aacute;i Lan. Với c&ocirc;ng nghệ ti&ecirc;n tiến v&agrave; c&ocirc;ng thức đặc biệt tạo ra&nbsp;hương vị ngon miệng tuyệt vời, Pate Nekko dễ d&agrave;ng chinh phục được khẩu vị c&aacute;c b&eacute; m&egrave;o. C&aacute;c sản phẩm đều trong một quy tr&igrave;nh kh&eacute;p k&iacute;n, bảo đảm vệ sinh an to&agrave;n thực phẩm, đảm bảo sức khỏe cho m&egrave;o cưng.</li>\r\n</ul>\r\n', '1729346487_pate-meo-nekko-jelly-70g.webp', 1, NULL),
(207, 'Pate Mèo Snappy Tom Cá Ngừ Mix Trái Cây', 14, 11, '13', 100, 0, 50000, 200000, 5, '<ul>\r\n	<li>Thương hiệu:&nbsp;<strong><a href=\"https://paddy.vn/collections/snappy-tom\" target=\"_blank\">Snappy Tom</a></strong></li>\r\n	<li>Ph&ugrave; hợp cho: M&egrave;o từ 2 th&aacute;ng tuổi</li>\r\n	<li><strong><a href=\"https://paddy.vn/collections/pate-meo\" target=\"_blank\">Pate m&egrave;o</a></strong>&nbsp;Snappy Tom l&agrave; sản phẩm thức ăn hỗn hợp ho&agrave;n chỉnh d&agrave;nh cho m&egrave;o với Omega 3, bổ sung Vitamin v&agrave; kho&aacute;ng chất theo ti&ecirc;u chuẩn thức ăn của Hoa Kỳ AAFCO.&nbsp;Pate Snappy Tom C&aacute; Ngừ Mix Tr&aacute;i C&acirc;y l&agrave; sản phẩm được l&agrave;m từ c&aacute; ngừ tươi nguy&ecirc;n chất kết hợp với c&aacute;c loại tr&aacute;i c&acirc;y tươi ngon như xo&agrave;i, kiwi, t&aacute;o, kỷ tử,... mang đến hương vị thơm ngon, hấp dẫn cho m&egrave;o cưng.</li>\r\n</ul>\r\n', '1729346551_140.jpg', 1, NULL),
(208, 'Pate Mèo Wanpy Súp Thịt Tươi', 14, 11, '13', 100, 0, 50000, 100000, 20, '<p>Pate Wanpy được sản xuất tại Trung Quốc với nguy&ecirc;n liệu được tuyển chọn chặt chẽ đ&atilde; được xuất khẩu sang nhiều quốc gia kh&aacute;c nhau.<br />\r\n<br />\r\n- Cung cấp nguồn protein chất lượng cao.<br />\r\n- M&ugrave;i vị hấp dẫn, nguy&ecirc;n liệu tươi ngon thực phẩm an to&agrave;n c&ugrave;ng t&iacute;nh sử dụng tiện lợi.<br />\r\n- Pate tươi wanpy hỗ trợ hiệu quả vấn đề ti&ecirc;u h&oacute;a cũng như hỗ trợ hệ thống miễn dịch.<br />\r\n- Chế biến theo dạng thức ăn ướt tươi mềm để M&egrave;o c&oacute; thể hấp thụ nhanh hơn chất dinh dưỡng.<br />\r\n- Đặc biệt hơn, với c&ocirc;ng thức gi&agrave;u độ ẩm cung cấp th&ecirc;m lượng nước dồi d&agrave;o sẽ gi&uacute;p hạn chế tối đa c&aacute;c bệnh về sỏi thận, tiết niệu&hellip; thường gặp ở m&egrave;o.</p>\r\n', '1729346599_pate-meo-wanpy.webp', 1, NULL),
(209, 'Pate Mèo Dạng Sốt Nekko Gravy', 14, 10, '14', 100, 0, 50000, 300000, 5, '<ul>\r\n	<li>Thương hiệu: Nekko</li>\r\n	<li>Ph&ugrave; hợp cho: M&egrave;o mọi lứa tuổi</li>\r\n	<li>Một trong những lựa chọn phổ biến nhất khi nghĩ đến&nbsp;đồ ăn m&egrave;o&nbsp;l&agrave;&nbsp;Pate. Nếu bạn đang t&igrave;m kiếm một loại&nbsp;pate m&egrave;o&nbsp;chất lượng th&igrave; kh&ocirc;ng thể bỏ qua Pate Nekko Gravy.&nbsp;Pate Nekko được cung cấp bởi c&ocirc;ng ty Unicorn Public Co Nhật Bản, c&oacute; cơ sở sản xuất tại Th&aacute;i Lan. Với c&ocirc;ng nghệ ti&ecirc;n tiến v&agrave; c&ocirc;ng thức đặc biệt tạo ra&nbsp;hương vị ngon miệng tuyệt vời, Pate Nekko dễ d&agrave;ng chinh phục được khẩu vị c&aacute;c b&eacute; m&egrave;o. C&aacute;c sản phẩm đều trong một quy tr&igrave;nh kh&eacute;p k&iacute;n, bảo đảm vệ sinh an to&agrave;n thực phẩm, đảm bảo sức khỏe cho m&egrave;o cưng.</li>\r\n</ul>\r\n', '1729346634_nekko_gravy.jpg', 1, NULL),
(210, 'Pate Cho Chó Mèo Mọi Lứa Tuổi Thịt Tươi Kings Pet', 14, 11, '13', 100, 0, 50000, 300000, 30, '<p>Pate Lon King&#39;s Pet Cho Ch&oacute; M&egrave;o 380gr</p>\r\n\r\n<p>1. Pate Hỗn hợp g&agrave; King&rsquo;s Pet lon 380g &ndash; thức ăn cho ch&oacute; m&egrave;o từ 01 th&aacute;ng tuổi.&nbsp;Được l&agrave;m từ thịt g&agrave; đ&atilde; được kiểm dịch chặt chẽ, kết hợp c&ugrave;ng gan g&agrave; tươi mọng được thanh tr&ugrave;ng ở nhiệt độ cao nhằm giữ nguy&ecirc;n hương vị thơm ngon v&agrave; h&agrave;m lượng dinh dưỡng.</p>\r\n\r\n<p>2. Pate Hỗn hợp c&aacute; King&rsquo;s Pet lon 380g &ndash; thức ăn cho m&egrave;o từ 01 th&aacute;ng tuổi.&nbsp;Được l&agrave;m từ c&aacute; nục tươi đ&aacute;nh bắt ở v&ugrave;ng biển miền Nam Việt Nam c&ugrave;ng với gan g&agrave; tươi nguy&ecirc;n chất được thanh tr&ugrave;ng ở nhiệt độ cao nhằm giữ trọn hương vị thơm ngon v&agrave; c&aacute;c chất dinh dưỡng.</p>\r\n\r\n<p>3. Pate C&aacute; hồi King&rsquo;s Pet lon 380g &ndash; thức ăn cho m&egrave;o từ 01 th&aacute;ng tuổi Được l&agrave;m từ c&aacute; hồi tươi nguy&ecirc;n chất được thanh tr&ugrave;ng ở nhiệt độ cao nhằm giữ trọn hương vị thơm ngon v&agrave; c&aacute;c chất dinh dưỡng.</p>\r\n\r\n<p>4. Gi&ograve; Heo Hầm Nước D&ugrave;ng King&rsquo;s Pet Lon 380g - thức ăn cho ch&oacute; từ 01 th&aacute;ng tuổi. Sử dụng nguồn thịt gi&ograve; heo tươi ngon xuất xứ ho&agrave;n to&agrave;n Việt Nam, kh&ocirc;ng sử dụng chất độn, chất tạo d&agrave;y. Kết cấu ho&agrave;n to&agrave;n từ nguy&ecirc;n liệu thật. ƯU ĐIỂM CỦA PATE KING&#39;S PET</p>\r\n', '1729346673_pate-cho-meo-lon-kings-pet-380g_4.jpg', 1, NULL),
(211, 'Pate AATAS Cho Mèo Mọi Lứa Tuổi', 14, 11, '13', 100, 0, 50000, 100000, 5, '<ul>\r\n	<li>Thương hiệu: Aatas</li>\r\n	<li>Ph&ugrave; hợp cho: M&egrave;o mọi lứa tuổi</li>\r\n	<li>Một trong những lựa chọn phổ biến nhất khi nghĩ đến&nbsp;đồ ăn m&egrave;o&nbsp;l&agrave;&nbsp;Pate. Nếu bạn đang t&igrave;m kiếm một loại&nbsp;pate m&egrave;o&nbsp;chất lượng th&igrave; kh&ocirc;ng thể bỏ qua Pate Aatas. Với hương vị thơm ngon từ những loại thịt như g&agrave;, c&aacute;, t&ocirc;m... đ&acirc;y l&agrave; d&ograve;ng pate rất được m&egrave;o được ưa chuộng.&nbsp;Pate m&egrave;o Aatas&nbsp;an to&agrave;n v&agrave; đạt chất lượng cao v&igrave; sản xu&acirc;́t từ nguy&ecirc;n liệu tự nhi&ecirc;n theo quy trình v&ocirc; cùng khắt khe và nghi&ecirc;m ngặt. Với c&aacute;c th&agrave;nh phần ch&iacute;nh thơm ngon, Pate Aatas gi&uacute;p k&iacute;ch th&iacute;ch khả năng ăn uống của m&egrave;o, hạn chế c&aacute;c t&aacute;c động ti&ecirc;u cực đến sức khỏe của ch&uacute;ng.</li>\r\n</ul>\r\n\r\n<p><strong>Lợi &iacute;ch:</strong></p>\r\n\r\n<ul>\r\n	<li>K&iacute;ch th&iacute;ch vị gi&aacute;c, gi&uacute;p m&egrave;o th&egrave;m ăn v&agrave; ăn ngon miệng hơn, nhanh ch&oacute;ng tăng c&acirc;n.</li>\r\n	<li>C&oacute; tới 12 hương vị kh&aacute;c nhau, gi&uacute;p m&egrave;o đổi khẩu vị ăn h&agrave;ng ng&agrave;y.</li>\r\n	<li>Dễ ti&ecirc;u h&oacute;a, gi&uacute;p cơ thể m&egrave;o lu&ocirc;n trong t&igrave;nh trạng khỏe mạnh.</li>\r\n</ul>\r\n', '1729346709_Pate-cho-meo-aatas.jpg', 1, NULL),
(212, 'Pate Mèo Meowow Súp Cá Ngừ Trắng Nguyên Miếng', 14, 11, '14', 78, 22, 50000, 200000, 5, '<p><strong>Pate MeoWow C&aacute; Ngừ Trắng Cho M&egrave;o Mọi Lứa Tuổi (Lon 80g)</strong></p>\r\n\r\n<p>C&aacute; ngừ thịt trắng đ&oacute;ng hộp Tuna White Meat l&agrave; m&oacute;n ăn nhẹ gi&agrave;u dinh dưỡng, hỗ trợ cho sự ph&aacute;t triển to&agrave;n diện của m&egrave;o, đồng thời được mix vị với nhiều loại thịt kh&aacute;c để tăng h&agrave;m lượng dinh dưỡng cũng như hương vị thơm ngon.</p>\r\n\r\n<p>- Sử dụng thịt c&aacute; ngừ trắng tươi, miếng c&aacute; mềm, k&iacute;ch thước nhỏ vừa ăn. C&aacute;c th&agrave;nh phần mix c&ugrave;ng như t&ocirc;m tươi nguy&ecirc;n con, c&aacute; cơm sữa Nhật Bản, thịt cua, c&aacute; hồi nguy&ecirc;n thớ v&agrave; g&agrave; x&eacute; sasami.</p>\r\n\r\n<p>- D&agrave;nh cho mọi lứa tuổi, kể cả m&egrave;o con, m&egrave;o lớn tuổi v&agrave; m&egrave;o c&oacute; hệ ti&ecirc;u h&oacute;a nhạy cảm.</p>\r\n\r\n<p>- Gi&agrave;u DHA, omega-3, gi&uacute;p m&egrave;o s&aacute;ng mắt, mượt l&ocirc;ng.</p>\r\n\r\n<p>- Bổ sung taurin, tốt cho tim mạch v&agrave; tr&iacute; n&atilde;o.</p>\r\n\r\n<p>- Cấp nước cho chế độ ăn hằng ng&agrave;y, đặc biệt ph&ugrave; hợp với những ch&uacute; m&egrave;o &iacute;t uống nước.</p>\r\n\r\n<p>- Hộp nh&ocirc;m h&uacute;t ch&acirc;n kh&ocirc;ng hiện đại, giữ sản phẩm tươi ngon.</p>\r\n', '1729346749_pate-meowow-ca-ngu-trang-cho-meo-moi-lua-tuoi-lon-80g-paddy-11.webp', 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vnpay`
--

CREATE TABLE `vnpay` (
  `vnp_id` int(11) NOT NULL,
  `vnp_amount` varchar(50) NOT NULL,
  `vnp_bankcode` varchar(50) NOT NULL,
  `vnp_banktranno` varchar(50) NOT NULL,
  `vnp_cardtype` varchar(50) NOT NULL,
  `vnp_orderinfo` varchar(100) NOT NULL,
  `vnp_paydate` varchar(50) NOT NULL,
  `vnp_tmncode` varchar(50) NOT NULL,
  `vnp_transactionno` varchar(50) NOT NULL,
  `order_code` int(11) NOT NULL,
  `payment_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `vnpay`
--

INSERT INTO `vnpay` (`vnp_id`, `vnp_amount`, `vnp_bankcode`, `vnp_banktranno`, `vnp_cardtype`, `vnp_orderinfo`, `vnp_paydate`, `vnp_tmncode`, `vnp_transactionno`, `order_code`, `payment_status`) VALUES
(1, '500000000', 'NCB', 'VNP14020653', 'ATM', 'Thanh toán đơn hàng TYRA Perfume', '20230524170955', 'MCG9RE1Q', '14020653', 4573, 0),
(2, '500000000', 'NCB', 'VNP14020653', 'ATM', 'Thanh toán đơn hàng TYRA Perfume', '20230524170955', 'MCG9RE1Q', '14020653', 4573, 0),
(3, '810000000', 'NCB', 'VNP14020679', 'ATM', 'Thanh toán đơn hàng TYRA Perfume', '20230524172011', 'MCG9RE1Q', '14020679', 905, 0),
(10, '630000000', 'NCB', 'VNP14023814', 'ATM', 'Thanh toán đơn hàng TYRA Perfume', '20230528122353', 'MCG9RE1Q', '14023814', 0, 0),
(11, '630000000', 'NCB', 'VNP14023814', 'ATM', 'Thanh toán đơn hàng TYRA Perfume', '20230528122353', 'MCG9RE1Q', '14023814', 0, 0),
(12, '630000000', 'NCB', 'VNP14023814', 'ATM', 'Thanh toán đơn hàng TYRA Perfume', '20230528122353', 'MCG9RE1Q', '14023814', 0, 0),
(13, '630000000', 'NCB', 'VNP14023814', 'ATM', 'Thanh toán đơn hàng TYRA Perfume', '20230528122353', 'MCG9RE1Q', '14023814', 0, 0),
(14, '350000000', 'NCB', 'VNP14023815', 'ATM', 'Thanh toán đơn hàng TYRA Perfume', '20230528123948', 'MCG9RE1Q', '14023815', 992, 0),
(15, '1440000000', 'NCB', 'VNP14023816', 'ATM', 'Thanh toán đơn hàng TYRA Perfume', '20230528125013', 'MCG9RE1Q', '14023816', 7556, 0),
(16, '360000000', 'NCB', 'VNP14023817', 'ATM', 'Thanh toán đơn hàng TYRA Perfume', '20230528125540', 'MCG9RE1Q', '14023817', 3618, 0),
(17, '270000000', 'NCB', 'VNP14023819', 'ATM', 'Thanh toán đơn hàng TYRA Perfume', '20230528125748', 'MCG9RE1Q', '14023819', 3323, 0),
(18, '1800000000', 'NCB', 'VNP14023820', 'ATM', 'Thanh toán đơn hàng TYRA Perfume', '20230528130003', 'MCG9RE1Q', '14023820', 1154, 0),
(19, '360000000', 'NCB', 'VNP14023929', 'ATM', 'Thanh toán đơn hàng TYRA Perfume', '20230528155852', 'MCG9RE1Q', '14023929', 0, 0),
(20, '368000000', 'VNPAY', '', 'QRCODE', 'Thanh toán đơn hàng TYRA Perfume', '20230529113726', 'MCG9RE1Q', '0', 9667, 0),
(21, '368000000', 'NCB', 'VNP14029730', 'ATM', 'Thanh toán đơn hàng TYRA Perfume', '20230603160224', 'MCG9RE1Q', '14029730', 6476, 0),
(22, '350000000', 'VNPAY', '', 'QRCODE', 'Thanh toán đơn hàng TYRA Perfume', '20230603204956', 'MCG9RE1Q', '0', 0, 0),
(23, '368000000', 'NCB', 'VNP14029794', 'ATM', 'Thanh toán đơn hàng TYRA Perfume', '20230603205748', 'MCG9RE1Q', '14029794', 3000, 0),
(24, '368000000', 'NCB', 'VNP14029816', 'ATM', 'Thanh toán đơn hàng TYRA Perfume', '20230603221222', 'MCG9RE1Q', '14029816', 4941, 0),
(25, '368000000', 'NCB', 'VNP14029816', 'ATM', 'Thanh toán đơn hàng TYRA Perfume', '20230603221222', 'MCG9RE1Q', '14029816', 4941, 0),
(26, '368000000', 'NCB', 'VNP14029816', 'ATM', 'Thanh toán đơn hàng TYRA Perfume', '20230603221222', 'MCG9RE1Q', '14029816', 4941, 0),
(27, '368000000', 'NCB', 'VNP14029816', 'ATM', 'Thanh toán đơn hàng TYRA Perfume', '20230603221222', 'MCG9RE1Q', '14029816', 4941, 0),
(28, '368000000', 'NCB', 'VNP14029816', 'ATM', 'Thanh toán đơn hàng TYRA Perfume', '20230603221222', 'MCG9RE1Q', '14029816', 4941, 0),
(29, '368000000', 'NCB', 'VNP14029816', 'ATM', 'Thanh toán đơn hàng TYRA Perfume', '20230603221222', 'MCG9RE1Q', '14029816', 4941, 0),
(30, '368000000', 'NCB', 'VNP14029816', 'ATM', 'Thanh toán đơn hàng TYRA Perfume', '20230603221222', 'MCG9RE1Q', '14029816', 4941, 0),
(31, '368000000', 'NCB', 'VNP14029816', 'ATM', 'Thanh toán đơn hàng TYRA Perfume', '20230603221222', 'MCG9RE1Q', '14029816', 4941, 0),
(32, '368000000', 'NCB', 'VNP14029816', 'ATM', 'Thanh toán đơn hàng TYRA Perfume', '20230603221222', 'MCG9RE1Q', '14029816', 4941, 0),
(33, '368000000', 'NCB', 'VNP14029816', 'ATM', 'Thanh toán đơn hàng TYRA Perfume', '20230603221222', 'MCG9RE1Q', '14029816', 4941, 0),
(34, '368000000', 'NCB', 'VNP14029819', 'ATM', 'Thanh toán đơn hàng TYRA Perfume', '20230603222317', 'MCG9RE1Q', '14029819', 9050, 0),
(35, '368000000', 'NCB', 'VNP14029819', 'ATM', 'Thanh toán đơn hàng TYRA Perfume', '20230603222317', 'MCG9RE1Q', '14029819', 9050, 0),
(36, '368000000', 'NCB', 'VNP14029821', 'ATM', 'Thanh toán đơn hàng TYRA Perfume', '20230603222548', 'MCG9RE1Q', '14029821', 3320, 0),
(37, '368000000', 'NCB', 'VNP14029822', 'ATM', 'Thanh toán đơn hàng TYRA Perfume', '20230603222706', 'MCG9RE1Q', '14029822', 4220, 0),
(38, '900000000', 'NCB', 'VNP14029833', 'ATM', 'Thanh toán đơn hàng TYRA Perfume', '20230603225623', 'MCG9RE1Q', '14029833', 14, 0),
(39, '360000000', 'NCB', 'VNP14029949', 'ATM', 'Thanh toán đơn hàng TYRA Perfume', '20230604095052', 'MCG9RE1Q', '14029949', 9439, 0),
(40, '315000000', 'NCB', 'VNP14032419', 'ATM', 'Thanh toán đơn hàng TYRA Perfume', '20230606210601', 'MCG9RE1Q', '14032419', 2417, 0),
(41, '270000000', 'NCB', 'VNP14032946', 'ATM', 'Thanh toán đơn hàng TYRA Perfume', '20230607135755', 'MCG9RE1Q', '14032946', 9787, 0),
(42, '733500000', 'NCB', 'VNP14032963', 'ATM', 'Thanh toán đơn hàng TYRA Perfume', '20230607141409', 'MCG9RE1Q', '14032963', 9952, 0),
(43, '1260000000', 'NCB', 'VNP14035526', 'ATM', 'Thanh toán đơn hàng TYRA Perfume', '20230611085006', 'MCG9RE1Q', '14035526', 4731, 0),
(44, '270000000', 'NCB', 'VNP14038464', 'ATM', 'Thanh toán đơn hàng TYRA Perfume', '20230614105820', 'MCG9RE1Q', '14038464', 3704, 0),
(45, '380000000', 'NCB', 'VNP14040288', 'ATM', 'Thanh toán đơn hàng TYRA Perfume', '20230616091839', 'MCG9RE1Q', '14040288', 2166, 0),
(46, '900000000', 'NCB', 'VNP14041820', 'ATM', 'Thanh toán đơn hàng TYRA Perfume', '20230618170147', 'MCG9RE1Q', '14041820', 5099, 0),
(47, '1467000000', 'NCB', 'VNP14041844', 'ATM', 'Thanh toán đơn hàng TYRA Perfume', '20230618181811', 'MCG9RE1Q', '14041844', 9644, 0),
(48, '1330000000', 'NCB', 'VNP14041965', 'ATM', 'Thanh toán đơn hàng TYRA Perfume', '20230618230640', 'MCG9RE1Q', '14041965', 9063, 0),
(49, '733500000', 'NCB', 'VNP14042736', 'ATM', 'Thanh toán đơn hàng TYRA Perfume', '20230619193722', 'MCG9RE1Q', '14042736', 771, 0),
(50, '368000000', 'NCB', 'VNP14042837', 'ATM', 'Thanh toán đơn hàng TYRA Perfume', '20230619234540', 'MCG9RE1Q', '14042837', 3407, 0),
(51, '8505000000', 'NCB', 'VNP14042912', 'ATM', 'Thanh toán đơn hàng TYRA Perfume', '20230620072627', 'MCG9RE1Q', '14042912', 6492, 0),
(52, '736000000', 'NCB', 'VNP14042923', 'ATM', 'Thanh toán đơn hàng TYRA Perfume', '20230620081701', 'MCG9RE1Q', '14042923', 6872, 0),
(53, '13639920000', 'NCB', 'VNP14060802', 'ATM', 'Thanh toán đơn hàng TYRA Perfume', '20230707180752', 'MCG9RE1Q', '14060802', 4287, 0),
(54, '332500000', 'NCB', 'VNP14135530', 'ATM', 'Thanh toán đơn hàng TYRA Perfume', '20231007234520', 'MCG9RE1Q', '14135530', 7265, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`account_id`) USING BTREE;

--
-- Indexes for table `agency`
--
ALTER TABLE `agency`
  ADD PRIMARY KEY (`agent_id`);

--
-- Indexes for table `article`
--
ALTER TABLE `article`
  ADD PRIMARY KEY (`article_id`) USING BTREE;

--
-- Indexes for table `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `brand`
--
ALTER TABLE `brand`
  ADD PRIMARY KEY (`brand_id`) USING BTREE;

--
-- Indexes for table `capacity`
--
ALTER TABLE `capacity`
  ADD PRIMARY KEY (`capacity_id`) USING BTREE;

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_id`) USING BTREE;

--
-- Indexes for table `collection`
--
ALTER TABLE `collection`
  ADD PRIMARY KEY (`collection_id`) USING BTREE;

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`comment_id`) USING BTREE;

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customer_id`) USING BTREE;

--
-- Indexes for table `delivery`
--
ALTER TABLE `delivery`
  ADD PRIMARY KEY (`delivery_id`) USING BTREE;

--
-- Indexes for table `evaluate`
--
ALTER TABLE `evaluate`
  ADD PRIMARY KEY (`evaluate_id`) USING BTREE;

--
-- Indexes for table `inventory`
--
ALTER TABLE `inventory`
  ADD PRIMARY KEY (`inventory_id`) USING BTREE;

--
-- Indexes for table `inventory_detail`
--
ALTER TABLE `inventory_detail`
  ADD PRIMARY KEY (`inventory_detail_id`) USING BTREE;

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `metrics`
--
ALTER TABLE `metrics`
  ADD PRIMARY KEY (`metric_id`) USING BTREE;

--
-- Indexes for table `momo`
--
ALTER TABLE `momo`
  ADD PRIMARY KEY (`momo_id`) USING BTREE;

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`) USING BTREE;

--
-- Indexes for table `order_detail`
--
ALTER TABLE `order_detail`
  ADD PRIMARY KEY (`order_detail_id`) USING BTREE;

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`) USING BTREE;

--
-- Indexes for table `vnpay`
--
ALTER TABLE `vnpay`
  ADD PRIMARY KEY (`vnp_id`) USING BTREE;

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `account`
--
ALTER TABLE `account`
  MODIFY `account_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `agency`
--
ALTER TABLE `agency`
  MODIFY `agent_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=444;

--
-- AUTO_INCREMENT for table `article`
--
ALTER TABLE `article`
  MODIFY `article_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `banner`
--
ALTER TABLE `banner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `brand`
--
ALTER TABLE `brand`
  MODIFY `brand_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `capacity`
--
ALTER TABLE `capacity`
  MODIFY `capacity_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `collection`
--
ALTER TABLE `collection`
  MODIFY `collection_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `comment`
  MODIFY `comment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `evaluate`
--
ALTER TABLE `evaluate`
  MODIFY `evaluate_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `inventory`
--
ALTER TABLE `inventory`
  MODIFY `inventory_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `inventory_detail`
--
ALTER TABLE `inventory_detail`
  MODIFY `inventory_detail_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `metrics`
--
ALTER TABLE `metrics`
  MODIFY `metric_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `momo`
--
ALTER TABLE `momo`
  MODIFY `momo_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=199;

--
-- AUTO_INCREMENT for table `order_detail`
--
ALTER TABLE `order_detail`
  MODIFY `order_detail_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=208;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=219;

--
-- AUTO_INCREMENT for table `vnpay`
--
ALTER TABLE `vnpay`
  MODIFY `vnp_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `messages`
--
ALTER TABLE `messages`
  ADD CONSTRAINT `messages_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `account` (`account_id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
