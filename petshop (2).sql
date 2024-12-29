-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 18, 2024 at 06:18 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

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
(39, 'Dat Gold', '25d55ad283aa400af464c76d713c07ad', 'user123@gmail.com', '', 0, 0, NULL),
(40, 'Thảo', '1cc2676c96772ca417878f3972db9bf8', 'thao123@gmail.com', '', 0, 0, NULL),
(41, 'thao24538', '6042f281b5bdfb0cc7bc43db13b77748', 'thaonguyen24538@gmail.com', '', 1, 0, NULL),
(42, 'Thu Thảo', '6042f281b5bdfb0cc7bc43db13b77748', 'thao@gmail.com', '', 0, 0, NULL);

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
  `account_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `agency`
--

INSERT INTO `agency` (`agent_id`, `name`, `address`, `phone`, `email`, `account_id`) VALUES
(1, 'Chi nhánh Bình dương ', '98 Thống nhất', '19003523', 'thongnhat@gold.com', 32),
(2, 'Chi nhánh Q1', '192 Bến nghé', '19005823', 'bennghe@glod.com', 33),
(3, 'Chi nhánh Q12', '89 Quang trung', '19001234', 'quantrung@gold.com', 34),
(4, 'Chi nhánh Chường Chinh', '1021 Trường chinh', '19005789', 'chuongtrinh@gold.com', 35),
(5, 'Chi nhánh Q7', '51 Nguyễn thị thập', '19008432', 'thithap@gold.com', 36);

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
(16, 'Thành Quang Bảo Ngoc', 'MÈO NÊN ĂN NHỮNG GÌ THÌ TỐT NHẤT ? ', '<p>M&Egrave;O N&Ecirc;N ĂN NHỮNG G&Igrave; TH&Igrave; TỐT NHẤT ?&nbsp;</p>\r\n', '<p>&nbsp;</p>\r\n\r\n<p><strong>C&Aacute;C LOẠI THỊT</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>- Thịt nạc, thịt b&ograve; v&agrave; thịt g&agrave; đ&atilde; được x&eacute; nhỏ (nếu l&agrave; m&egrave;o con)</p>\r\n\r\n<p>- Thịt c&aacute; (đ&atilde; được r&uacute;t xương)</p>\r\n\r\n<p>Nếu bạn sợ b&eacute; nh&agrave; m&igrave;nh nhiễm phải c&oacute; loại giun, s&aacute;n c&oacute; trong thức ăn đ&ocirc;ng đ&aacute; để được v&agrave;i ng&agrave;y th&igrave; c&aacute;c bạn n&ecirc;n mua c&aacute;c loại thịt hộp, hạt kh&ocirc;, pate whiskas,.. Trước khi ăn nhớ h&acirc;m n&oacute;ng lại cho c&aacute;c b&eacute; ăn l&agrave; được rồi nh&eacute; ^^</p>\r\n\r\n<p>Nấu ch&iacute;n l&agrave; rất tốt nhưng c&aacute;c bạn tr&aacute;nh nấu qu&aacute; l&acirc;u v&agrave; qu&aacute; ch&iacute;n nh&eacute; v&igrave; n&oacute; sẽ l&agrave;m hạn chế đi mức dinh dưỡng cần thiết cho b&eacute; đấy&nbsp;</p>\r\n\r\n<p>Bạn c&oacute; thể bỏ thịt v&agrave;o nồi cơm, nồi hấp để hấp l&ecirc;n tr&aacute;nh mất đi chất dinh dưỡng nha</p>\r\n\r\n<p>Tr&aacute;nh cho b&eacute; ăn qu&aacute; nhiều thịt xay nhuyễn nha v&igrave; n&oacute; sẽ dẫn đến cho m&egrave;o c&aacute;c căn bệnh như bị m&ugrave; hoặc qu&aacute;ng m&egrave;o, thiếu dinh dưỡng, gầy g&ograve;.</p>\r\n\r\n<p>Về phần n&agrave;y c&aacute;c bạn n&ecirc;n bổ sung th&ecirc;m pate whiskas cho c&aacute;c b&eacute; ạ ^^</p>\r\n\r\n<h2><strong>TRỨNG GIA CẦM</strong></h2>\r\n\r\n<p>M&egrave;o c&oacute; thể ăn được trứng nhưng với điều kiện l&agrave; trứng phải ch&iacute;n hẳn v&igrave; nếu ăn phải trứng sống th&igrave; đường ruột của b&eacute; sẽ bị đe dọa đấy</p>\r\n\r\n<p><strong><img alt=\"6236921864_8a3049b0e3\" src=\"https://thegioivatcung.files.wordpress.com/2016/12/6236921864_8a3049b0e3.jpg?w=616\" /></strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>T&Ocirc;M</strong></p>\r\n\r\n<p>T&ocirc;m l&agrave; một loại thức ăn tuyệt vời cho c&aacute;c b&eacute; m&egrave;o nh&agrave; m&igrave;nh nhưng tuyệt đối phải lột đi vỏ t&ocirc;m thật sạch v&igrave; đối với người th&igrave; ch&uacute;ng ta ăn được nhưng đối với c&aacute;c b&eacute; m&egrave;o đ&oacute; l&agrave; một loại chất độc kh&ocirc;ng k&eacute;m ạ :(</p>\r\n\r\n<h2><strong>RAU QUẢ</strong></h2>\r\n\r\n<p>Rau quả g&oacute;p phần rất quan trọng đối với lo&agrave;i m&egrave;o v&igrave; n&oacute; gi&uacute;p ch&uacute;ng c&acirc;n bằng lại dinh dưỡng v&agrave; ổn định lại hệ ti&ecirc;u h&oacute;a.&nbsp; Rau cũng giống thịt vậy, n&ecirc;n được kĩ c&agrave;ng l&agrave;m ch&iacute;n v&agrave; d&agrave;nh cho c&aacute;c b&eacute; mới bị thiến hoặc biếng ăn đối với c&aacute;c b&eacute; sẽ l&agrave; một thức ăn đầy th&uacute; vị đấy</p>\r\n\r\n<p>Ch&uacute;ng ta n&ecirc;n cẩn thận nh&eacute; v&igrave; rau ch&acirc;n vịt, gi&agrave;u axit oxalic, ho&agrave;n to&agrave;n cấm với m&egrave;o bị rối loạn đường tiết niệu. C&agrave; rốt, đậu xanh, c&agrave; t&iacute;m cũng l&agrave; những rau quả kh&ocirc;ng n&ecirc;n cho m&egrave;o ăn.Đối với những b&eacute; m&egrave;o đang ph&aacute;t triển tr&aacute;nh cho c&aacute;c b&eacute; ăn qu&aacute; nhiều rau v&igrave; l&uacute;c n&agrave;y b&eacute; cần chất đạm hơn bao giờ hết.</p>\r\n\r\n<p>Tr&aacute;nh cho c&aacute;c b&eacute; m&egrave;o ăn bậy bạ nhất l&agrave; nho v&igrave; n&oacute; g&acirc;y ra bệnh suy thận ở m&egrave;o cực nặng lun ạ. V&agrave; l&uacute;c chọn thức ăn hạt kh&ocirc; cho b&eacute; n&ecirc;n tr&aacute;nh hạt&nbsp;Macadamia v&igrave; n&oacute; g&acirc;y ngộ độc thần kinh rối loạn, suy nhược, n&ocirc;n mửa, sốt ở b&eacute;&nbsp;</p>\r\n\r\n<p><strong><img alt=\"nhung-chu-meo-co-cuoc-song-xa-hoa-bac-nhat-tren-the-gioi\" src=\"https://thegioivatcung.files.wordpress.com/2016/12/nhung-chu-meo-co-cuoc-song-xa-hoa-bac-nhat-tren-the-gioi.jpg?w=616\" /></strong></p>\r\n\r\n<h2><strong>C&Oacute; N&Ecirc;N CUNG CẤP DẦU ĂN, sữa&nbsp;hay ph&ocirc; mai&nbsp;CHO M&Egrave;O MỖI NG&Agrave;Y?</strong></h2>\r\n\r\n<p>C&acirc;u trả lời l&agrave; rất n&ecirc;n c&aacute;c bạn nh&eacute; nhưng phải c&oacute; liều lượng cụ thể.&nbsp;Với m&egrave;o trưởng th&agrave;nh</p>\r\n\r\n<p>C&ograve;n ri&ecirc;ng sữa v&agrave; sữa chua th&igrave; m&igrave;nh hạn chế hẳn cho b&eacute; sử dụng v&igrave; n&oacute; g&acirc;y rối loạn ti&ecirc;u h&oacute;a v&agrave; vi&ecirc;m da ở b&eacute;. V&igrave; cơ thể của b&eacute; kh&ocirc;ng thể dung nạp được sữa hoặc ph&ocirc; mai.</p>\r\n\r\n<p>Bạn h&atilde;y l&agrave; người ti&ecirc;u d&ugrave;ng s&aacute;ng suốt trong việc lựa chọn thức ăn cho c&aacute;c b&eacute; cưng nha &lt;3</p>\r\n', '1733396536_meoo.webp', '2024-12-09', 1),
(17, 'Thành Quang Bảo Ngoc', 'Làm thế nào để cắt móng mèo?', '<p>L&agrave;m thế n&agrave;o để cắt m&oacute;ng m&egrave;o?</p>\r\n', '<p>&nbsp;</p>\r\n\r\n<p>L&agrave;m sao để cắt m&oacute;ng cho m&egrave;o? Đ&acirc;y l&agrave; một c&acirc;u hỏi kh&oacute; nhằn gi&agrave;nh cho những ai vừa mới nu&ocirc;i m&egrave;o hoặc những ai c&oacute; một b&eacute; m&egrave;o &quot;y&ecirc;u th&iacute;ch&quot; việc c&agrave;o v&agrave;o c&aacute;c đồ vật xung quanh. Cắt m&oacute;ng m&egrave;o vừa gi&uacute;p tr&aacute;nh việc m&oacute;ng của c&aacute;c b&eacute; bị sứt mẻ hay hư hỏng m&agrave; việc loại bỏ m&oacute;ng c&ograve;n gi&uacute;p ngăn ch&ugrave;ng l&agrave;m xước người, đồ&nbsp;vật xung quanh v&agrave; những con vật kh&aacute;c. Cắt m&oacute;ng thật ra rất dễ d&agrave;ng chỉ cần bạn tập cho ch&uacute;ng l&agrave;m quen với việc n&agrave;y. H&atilde;y c&ugrave;ng t&ocirc;i t&igrave;m hiểu qua b&agrave;i viết dưới đ&acirc;y.</p>\r\n\r\n<p><strong>Đầu ti&ecirc;n h&atilde;y chọn thời điểm phu hợp:</strong></p>\r\n\r\n<p>- Bạn h&atilde;y chọn thời điểm khi m&egrave;o đang nằm y&ecirc;n hoặc l&uacute;c m&egrave;o c&oacute; t&acirc;m trạng thoải m&aacute;i, chẳng hạn như vừa mới ngủ dậy, chuẩn bị đi ngủ, hoặc nằm nghỉ ở nơi ưa th&iacute;ch v&agrave;o buổi chiều. V&igrave; nếu khi bạn thấy m&oacute;ng m&egrave;o bị xước v&agrave; muốn cắt ngay lập tức th&igrave; bạn chỉ đang l&agrave;m mọi điều trở n&ecirc;n tồi tệ hơn m&agrave; th&ocirc;i.</p>\r\n\r\n<p>- Hầu&nbsp;hết c&aacute;c b&eacute; m&egrave;o kh&ocirc;ng th&iacute;ch khi c&oacute; người đụng v&agrave;o ch&acirc;n ch&uacute;ng, v&igrave; thế bạn n&ecirc;n bắt đầu bằng c&aacute;ch tập l&agrave;m quen cho m&egrave;o.</p>\r\n\r\n<p>- Bạn c&oacute; thể huấn luyện m&egrave;o khi c&ograve;n nhỏ, thậm ch&iacute; l&agrave; chỉ mới một th&aacute;ng tuổi. Ở độ tuổi n&agrave;y, bạn c&oacute; thể d&ugrave;ng kiềm cắt m&oacute;ng loại nhỏ v&igrave; bộ m&oacute;ng của m&egrave;o chưa ph&aacute;t triển ho&agrave;n to&agrave;n, bạn chỉ n&ecirc;n cắt sơ sơ phần cạnh, sau đ&oacute; thưởng cho m&egrave;o. Bạn n&ecirc;n thường xuy&ecirc;n&nbsp;tập cho ch&uacute;ng th&oacute;i quen n&agrave;y. Hơn nữa&nbsp; việc bạn cắt m&oacute;ng thường xuy&ecirc;n th&igrave; sẽ tốt hơn l&agrave; để d&agrave;i ra rồi mới cắt. Nhưng nếu cắt qu&aacute; s&acirc;u, bạn sẽ kh&oacute; thực hiện c&ocirc;ng việc n&agrave;y trong những lần tới. V&agrave; đừng bỏ s&oacute;t m&oacute;ng huyền! Hầu hết m&egrave;o c&oacute; hai m&oacute;ng huyền ở hai ch&acirc;n trước. Ch&uacute;ng c&oacute; h&igrave;nh dạng giống m&oacute;ng c&aacute;i thu nhỏ, nằm ở phần r&igrave;a ch&acirc;n trước, ngay dưới cổ ch&acirc;n. M&oacute;ng n&agrave;y thường &iacute;t khi d&ugrave;ng đến n&ecirc;n hay mọc d&agrave;i v&agrave; cần được kiểm tra h&agrave;ng th&aacute;ng nếu m&egrave;o khỏe mạnh.</p>\r\n\r\n<p><img src=\"https://bizweb.dktcdn.net/100/348/235/files/3qmdeno.jpg?v=1604401330218\" /></p>\r\n\r\n<p>&nbsp;&nbsp;<strong>Bạn cần chọn dụng cụ ph&ugrave;&nbsp;hợp:</strong></p>\r\n\r\n<p>- Trước khi tiến h&agrave;nh cắt m&oacute;ng cho m&egrave;o, bạn cần chuẩn bị dụng cụ chuy&ecirc;n nghiệp. Để cắt m&oacute;ng cho th&uacute; cưng, bạn n&ecirc;n chuẩn bị k&egrave;m cắt m&oacute;ng d&agrave;nh cho m&egrave;o v&agrave; b&uacute;t cầm m&aacute;u.&nbsp;Kiềm cắt m&oacute;ng c&oacute; nhiều loại kh&aacute;c nhau, hầu hết đều c&oacute; chức năng tương tự. Điều quan trọng l&agrave; kiềm phải sắc để cắt m&oacute;ng dễ d&agrave;ng. Kiềm lưỡi c&ugrave;n kh&ocirc;ng những kh&oacute; cắt m&agrave; c&ograve;n c&oacute; thể đụng phải đệm thịt l&agrave;m m&egrave;o đau đớn.&nbsp;</p>\r\n\r\n<p>-&nbsp;C&oacute; hai loại dụng cụ cắt m&oacute;ng ch&iacute;nh: kiềm k&eacute;o v&agrave; kiềm cắt.</p>\r\n\r\n<ul>\r\n	<li>Kiềm k&eacute;o hoạt động bằng c&aacute;ch chuyển động lưỡi k&eacute;o v&agrave; thường c&oacute; k&iacute;ch cỡ nhỏ v&agrave; lớn. Kiềm&nbsp;k&eacute;o nhỏ thường ph&ugrave; hợp cho những ai mới bắt đầu cắt m&oacute;ng hoặc chỉ cần cắt sơ m&oacute;ng vuốt. Kiềm k&eacute;o lớn d&ugrave;ng để cắt m&oacute;ng cũ v&agrave; cứng.</li>\r\n	<li>Kiềm cắt d&ugrave;ng lưỡi trượt cắt m&oacute;ng khi bạn &eacute;p hai tay cầm lại với nhau. Phần m&oacute;ng vừa khớp r&atilde;nh giữa v&agrave; lưỡi cắt bấm ngang m&oacute;ng vuốt. Đ&acirc;y l&agrave; loại kiềm cứng d&ugrave;ng để cắt m&oacute;ng d&agrave;i v&agrave; d&agrave;y (kh&ocirc;ng d&ugrave;ng cho m&oacute;ng mọc qu&aacute; d&agrave;i m&agrave; n&ecirc;n d&ugrave;ng kiềm lớn).</li>\r\n</ul>\r\n\r\n<p>- Nếu kiềm cắt đủ sắc th&igrave; m&egrave;o sẽ kh&ocirc;ng c&oacute; cảm gi&aacute;c ở đệm thịt. Kiềm cắt thường dễ c&ugrave;n, v&igrave; thế bạn n&ecirc;n vứt đi (hoặc m&agrave;i lại) nếu thấy lưỡi cắt kh&ocirc;ng c&ograve;n sắc b&eacute;n. Dấu hiệu để nhận biết đ&oacute; l&agrave; bạn phải d&ugrave;ng lực rất nhiều để cắt m&oacute;ng hoặc vết cắt kh&ocirc;ng bằng phẳng.</p>\r\n\r\n<p>- Bạn cũng n&ecirc;n chuẩn bị sẵn b&uacute;t cầm m&aacute;u trong trường hợp v&ocirc; t&igrave;nh cắt phải đệm thịt của m&egrave;o (mặc d&ugrave; sự cố n&agrave;y hiếm khi xảy ra ở m&egrave;o so với ch&oacute;, v&igrave; đệm thịt của m&egrave;o ngắn hơn). B&uacute;t cầm m&aacute;u c&oacute; b&aacute;n tại quầy thuốc. Loại n&agrave;y l&agrave;m chai mạch m&aacute;u khi chạm v&agrave;o m&oacute;ng v&agrave; ngăn m&aacute;u chảy ra ngo&agrave;i. Nếu cắt phải đệm thịt, bạn c&oacute; thể ấn nhẹ b&uacute;t cầm m&aacute;u l&ecirc;n m&oacute;ng từ 1 đến 2 ph&uacute;t v&agrave; m&aacute;u sẽ ngừng chảy.</p>\r\n\r\n<p><img src=\"https://bizweb.dktcdn.net/100/348/235/files/ynvbsge.jpg?v=1604401437360\" /></p>\r\n\r\n<h3><strong>Kiểm tra m&oacute;ng vuốt của m&egrave;o:</strong></h3>\r\n\r\n<p>- Theo thời gian, vật cưng sẽ cho ph&eacute;p bạn ấn nhẹ b&agrave;n ch&acirc;n (&eacute;p l&ecirc;n mu b&agrave;n ch&acirc;n) để đẩy m&oacute;ng ra ngo&agrave;i m&agrave; kh&ocirc;ng l&agrave;m ch&uacute;ng kh&oacute; chịu. Khi đ&oacute; phần&nbsp;m&oacute;ng lộ ra ngo&agrave;i, bạn sẽ thấy phần d&agrave;y nhất của m&oacute;ng, v&agrave; dần v&agrave;o trong&nbsp;m&oacute;ng ch&acirc;n l&agrave; phần m&agrave;u hồng nằm b&ecirc;n trong m&oacute;ng, gọi l&agrave; đệm thịt.</p>\r\n\r\n<p>- Đệm thịt l&agrave; phần sống của m&oacute;ng v&agrave; bao gồm mạch m&aacute;u cũng như d&acirc;y thần kinh, v&igrave; thế việc cắt s&aacute;t đệm thịt sẽ g&acirc;y đau cho m&egrave;o. Kiểm tra cẩn thận vị tr&iacute; v&agrave; độ lớn của đệm thịt. Khi nh&igrave;n qua phần m&oacute;ng trong suốt, đệm thịt l&agrave; phần c&oacute; h&igrave;nh tam gi&aacute;c nhỏ m&agrave;u hồng. Nếu chưa bao giờ cắt m&oacute;ng cho m&egrave;o, bạn chỉ n&ecirc;n cắt phần đầu của m&oacute;ng. Khi đ&atilde; quen rồi th&igrave; bạn c&oacute; thể cắt gần đệm thịt, nhưng kh&ocirc;ng n&ecirc;n cắt qu&aacute; s&aacute;t đệm thịt v&igrave; sẽ l&agrave;m m&egrave;o bị thương v&agrave; khiến cho m&oacute;ng bị chảy m&aacute;u.</p>\r\n\r\n<p>- Tất cả m&oacute;ng vuốt của m&egrave;o đều giống nhau, v&igrave; thế nếu m&egrave;o c&oacute; m&oacute;ng đen, bạn chỉ cần t&igrave;m m&oacute;ng s&aacute;ng hơn để l&agrave;m điểm đối chiếu cho những m&oacute;ng kh&aacute;c. Nhưng nếu bạn&nbsp;kh&ocirc;ng x&aacute;c định được n&ecirc;n cắt chỗ n&agrave;o, bạn n&ecirc;n nhờ người chỉ dẫn. B&aacute;c sĩ th&uacute; y, nh&acirc;n vi&ecirc;n trại động vật, v&agrave; người chuy&ecirc;n chăm s&oacute;c m&egrave;o sẽ hướng dẫn c&aacute;c bước tận t&igrave;nh.</p>\r\n\r\n<p><img src=\"https://bizweb.dktcdn.net/100/348/235/files/s0rxfyy.jpg?v=1604401513219\" /></p>\r\n\r\n<p><strong>H&atilde;y khuyến kh&iacute;ch m&egrave;o của bạn tự tạo &quot;tư thế&quot; khi&nbsp;cắt m&oacute;ng:</strong></p>\r\n\r\n<p>- Nếu m&egrave;o đ&atilde; ngồi đ&uacute;ng vị tr&iacute; để chuẩn bị cắt m&oacute;ng, ch&uacute;ng sẽ kh&ocirc;ng phản kh&aacute;ng trong l&uacute;c bạn cắt m&oacute;ng. Nếu tự cắt m&oacute;ng cho m&egrave;o, bạn cần đặt ch&uacute;ng ngồi v&agrave;o l&ograve;ng, hướng mặt ra ngo&agrave;i, đồng thời giữ b&agrave;n ch&acirc;n của m&egrave;o bằng một tay (v&agrave; tay kia cầm d&ugrave;ng cụ cắt m&oacute;ng). Tập cho m&egrave;o ngồi theo tư thế n&agrave;y v&agrave; giữ từng b&agrave;n ch&acirc;n của ch&uacute;ng. Nhẹ nh&agrave;ng ấn từng ng&oacute;n ch&acirc;n để đẩy m&oacute;ng ra ngo&agrave;i. H&atilde;y tiếp tục thưởng đồ ăn cho ch&uacute;ng v&agrave; khen ngợi.</p>\r\n\r\n<p>- Giữ m&egrave;o ở tư thế n&ecirc;u tr&ecirc;n v&agrave; cắt từng m&oacute;ng một. Đặt kiềm giữa gốc đệm thịt v&agrave; m&oacute;ng. Bạn h&atilde;y điều chỉnh hướng k&egrave;m sao cho lưỡi k&egrave;m cắt từ dưới l&ecirc;n tr&ecirc;n. Điều n&agrave;y gi&uacute;p cho m&oacute;ng vuốt kh&ocirc;ng bị nứt nẻ. Bạn chỉ c&oacute; thể cắt một hoặc hai m&oacute;ng c&ugrave;ng l&uacute;c trong lần đầu ti&ecirc;n.</p>\r\n\r\n<p>- Kh&ocirc;ng n&ecirc;n tỏ ra kh&oacute; chịu. M&egrave;o c&oacute; thể phản kh&aacute;ng, k&ecirc;u r&iacute;t l&ecirc;n, v&agrave; cố gắng c&agrave;o xước bạn, nhưng bạn kh&ocirc;ng n&ecirc;n la h&eacute;t hoặc l&agrave;m qua loa. Nếu kh&ocirc;ng ch&uacute;ng sẽ bị thương v&agrave; kh&ocirc;ng c&ograve;n muốn để cho bạn cắt m&oacute;ng nữa.</p>\r\n\r\n<p><img src=\"https://bizweb.dktcdn.net/100/348/235/files/q1yxceq-jpeg.jpg?v=1604401535636\" /></p>\r\n\r\n<p><strong>H&atilde;y nhẹ nh&agrave;ng giữ b&agrave;n ch&acirc;n của m&egrave;o v&agrave; cắt m&oacute;ng cho ch&uacute;ng:</strong></p>\r\n\r\n<p>- Sau khi m&egrave;o cảm thấy dễ chịu v&agrave; cho ph&eacute;p đụng chạm, bạn c&oacute; thể nắm nhẹ b&agrave;n ch&acirc;n với l&ograve;ng b&agrave;n tay mở. Đặt tay l&ecirc;n b&agrave;n ch&acirc;n của m&egrave;o, sau đ&oacute; lật b&agrave;n tay xuống sao cho l&ograve;ng b&agrave;n ch&acirc;n của ch&uacute;ng ở tr&ecirc;n l&ograve;ng b&agrave;n tay của bạn.</p>\r\n\r\n<p>- Bạn h&atilde;y&nbsp;m&aacute;t-xa b&agrave;n ch&acirc;n của m&egrave;o ngay sau&nbsp;khi m&egrave;o quen với việc nắm b&agrave;n ch&acirc;n, bạn c&oacute; thể bắt đầu giữ v&agrave; d&ugrave;ng ng&oacute;n tay của bạn để&nbsp;m&aacute;t-xa b&agrave;n ch&acirc;n. Nhẹ nh&agrave;ng d&ugrave;ng ng&oacute;n tay m&aacute;t-xa phần mu v&agrave; l&ograve;ng b&agrave;n ch&acirc;n m&agrave; bạn định cắt m&oacute;ng.&nbsp;V&agrave; h&atilde;y thưởng cho m&egrave;o bằng c&aacute;ch vuốt ve v&agrave; cho ăn đồ vặt; cho m&egrave;o ăn m&oacute;n đặc biệt để tạo mối li&ecirc;n kết với h&agrave;nh động cắt m&oacute;ng.</p>\r\n\r\n<p>- Bắt đầu với việc vuốt ve b&agrave;n ch&acirc;n của ch&uacute;ng thật&nbsp;nhẹ nh&agrave;ng đồng thời &acirc;u yếm những chỗ y&ecirc;u th&iacute;ch của m&egrave;o (g&aacute;y, dưới cằm, giữa lưng v&agrave; đu&ocirc;i,...), h&atilde;y thực hiện với mỗi b&agrave;n ch&acirc;n.</p>\r\n\r\n<p>- Bạn n&ecirc;n bắt đầu bằng m&oacute;ng ch&acirc;n sau. Nhiều con m&egrave;o thường d&ugrave;ng hai ch&acirc;n sau để tho&aacute;t ra ngo&agrave;i, nếu bạn đ&atilde; cắt m&oacute;ng của ch&uacute;ng th&igrave; bạn&nbsp;sẽ kh&ocirc;ng bị c&agrave;o xước. Đối với m&egrave;o l&ocirc;ng d&agrave;i th&igrave; bạn n&ecirc;n l&agrave;m ẩm b&agrave;n ch&acirc;n của ch&uacute;ng để dễ cắt m&oacute;ng hơn.</p>\r\n\r\n<p>- Tuy m&egrave;o c&oacute; thể sẽ đẩy ch&acirc;n ra, hoặc thậm ch&iacute; l&agrave; đứng dậy v&agrave; đi ra chỗ kh&aacute;c. Bạn n&ecirc;n để ch&uacute;ng đi, đừng n&ecirc;n &eacute;p buộc ch&uacute;ng, nhưng bạn vẫn tiếp tục vuốt ve b&agrave;n ch&acirc;n của ch&uacute;ng khi c&oacute; cơ hội. Mỗi khi chạm v&agrave;o b&agrave;n ch&acirc;n của m&egrave;o, bạn n&ecirc;n thưởng cho ch&uacute;ng v&agrave; khen ngợi để tạo n&ecirc;n trải nghiệm t&iacute;ch cực.</p>\r\n\r\n<p><img src=\"https://bizweb.dktcdn.net/100/348/235/files/gg8nlh8-jpeg.jpg?v=1604401766500\" /></p>\r\n\r\n<p><strong>Hoặc bạn&nbsp;c&oacute; thể nhờ người gi&uacute;p đỡ:</strong></p>\r\n\r\n<p>- Mặc d&ugrave; con m&egrave;o n&agrave;o cũng c&oacute; thể được dạy c&aacute;ch l&agrave;m quen với việc cắt m&oacute;ng, nhưng tr&ecirc;n thực tế ch&uacute;ng vẫn sẽ lu&ocirc;n chống cự v&agrave; bạn cần th&ecirc;m sự trợ gi&uacute;p.&nbsp;Bạn kh&ocirc;ng n&ecirc;n nhờ người lạ hoặc người th&acirc;n &iacute;t tiếp x&uacute;c với m&egrave;o để gi&uacute;p bạn cắt m&oacute;ng cho ch&uacute;ng, nếu kh&ocirc;ng th&uacute; cưng sẽ c&agrave;ng sợ h&atilde;i hơn.<br />\r\n<img src=\"https://bizweb.dktcdn.net/100/348/235/files/xraatns-jpeg.jpg?v=1604401556063\" /></p>\r\n\r\n<p>- Bạn h&atilde;y nhờ người cộng sự gi&uacute;p của m&igrave;nh giữ m&egrave;o ở vị tr&iacute; cố định. Bạn v&agrave; người kia c&oacute; thể đứng đối diện hai b&ecirc;n mặt b&agrave;n hoặc quầy bếp.Cả hai cần phải tr&ograve; chuyện với m&egrave;o thật nhẹ nh&agrave;ng v&agrave; b&igrave;nh tĩnh. Nhờ người gi&uacute;p đỡ &acirc;u yếm m&egrave;o v&agrave; giữ cố định bằng c&aacute;ch ẵm lấy cơ thể của ch&uacute;ng nhưng kh&ocirc;ng l&agrave;m tổn hại hay khiến m&egrave;o sợ h&atilde;i.</p>\r\n\r\n<p>- Nếu m&egrave;o th&iacute;ch chải l&ocirc;ng, người kia c&oacute; thể chải chuốt cho ch&uacute;ng nhằm đ&aacute;nh lạc hướng sự ch&uacute; &yacute; trong khi cắt m&oacute;ng cho th&uacute; cưng. Hướng dẫn người kia chải đầu, dưới cổ, hoặc những khu vực kh&aacute;c m&agrave; m&egrave;o th&iacute;ch được chải.</p>\r\n\r\n<p><img src=\"https://bizweb.dktcdn.net/100/348/235/files/smmvxro-jpeg.jpg?v=1604401600065\" /></p>\r\n\r\n<p>- Bạn&nbsp; h&atilde;y nhờ người kia gi&uacute;p m&igrave;nh ấn nhẹ b&agrave;n ch&acirc;n để đẩy m&oacute;ng vuốt ra ngo&agrave;i. Nếu m&egrave;o đang k&ecirc;u r&iacute;t l&ecirc;n, bạn n&ecirc;n chờ cho đến khi ch&uacute;ng b&igrave;nh tĩnh lại rồi mới chạm v&agrave;o b&agrave;n ch&acirc;n.</p>\r\n\r\n<p>- H&atilde;y cắt m&oacute;ng của m&egrave;o như thường lệ. Người kia sẽ tiếp tục đ&aacute;nh lạc hướng trong khi bạn cắt m&oacute;ng cho ch&uacute;ng. L&agrave;m theo hướng dẫn ở phần tr&ecirc;n để đảm bảo bạn đang tiến h&agrave;nh việc cắt m&oacute;ng theo đ&uacute;ng tr&igrave;nh tự v&agrave; kh&ocirc;ng g&acirc;y đau đớn. Khi xong việc, bạn c&oacute; thể thưởng m&oacute;n ngon cho m&egrave;o.</p>\r\n\r\n<p><img src=\"https://bizweb.dktcdn.net/100/348/235/files/qlrg3ms.jpg?v=1604401693785\" /></p>\r\n\r\n<p><strong>V&agrave; h&atilde;y nhớ thưởng cho ch&uacute; m&egrave;o của m&igrave;nh:</strong>&nbsp;Ch&uacute;ng đ&atilde; cư xử tốt khi cho ph&eacute;p bạn cắt m&oacute;ng v&agrave; n&ecirc;n được thưởng v&igrave; h&agrave;nh động n&agrave;y.</p>\r\n\r\n<p>- Bạn c&oacute; thể thưởng cho ch&uacute;ng bằng một&nbsp;m&oacute;n ăn hấp dẫn như&nbsp;c&aacute; hồi đ&oacute;ng hộp, hoặc thịt g&agrave;. Một số con m&egrave;o lại th&iacute;ch kem hoặc bơ l&ecirc;n men.</p>\r\n\r\n<p>- Việc n&agrave;y gi&uacute;p&nbsp;cho m&egrave;o h&igrave;nh th&agrave;nh mối li&ecirc;n kết giữa phần thưởng v&agrave; h&agrave;nh vi cắt m&oacute;ng. C&oacute; thể ch&uacute;ng kh&ocirc;ng th&iacute;ch cắt m&oacute;ng cho lắm, nhưng để c&oacute; được phần thưởng th&igrave; m&egrave;o sẽ &iacute;t phản kh&aacute;ng hơn trong những lần sau.</p>\r\n\r\n<p><img src=\"https://bizweb.dktcdn.net/100/348/235/files/ohetvuw.jpg?v=1604401710010\" /></p>\r\n\r\n<p><strong>H&atilde;y thường xuy&ecirc;n kiểm tra m&oacute;ng vuốt của m&egrave;o:</strong></p>\r\n\r\n<p>- M&oacute;ng&nbsp;m&egrave;o ph&aacute;t triển với tốc độ kh&aacute;c nhau, nhưng một quy tắc theo kinh nghiệm đ&oacute; l&agrave; n&ecirc;n cắt m&oacute;ng hai tuần hoặc một th&aacute;ng một lần để m&oacute;ng kh&ocirc;ng mọc qu&aacute; d&agrave;i, nứt nẻ, hoặc bị hư hỏng.</p>\r\n\r\n<p>- Mặc d&ugrave;&nbsp;m&egrave;o c&oacute; th&oacute;i quen tự m&agrave;i vuốt, bạn vẫn n&ecirc;n ch&uacute; &yacute; bộ m&oacute;ng của ch&uacute;ng. M&oacute;ng vuốt c&oacute; thể bị hư v&agrave; bạn c&oacute; thể gi&uacute;p th&uacute; cưng bằng c&aacute;ch cắt tỉa gọn g&agrave;ng.</p>\r\n\r\n<p>- H&atilde;y&nbsp;đặc biệt ch&uacute; &yacute; đến m&egrave;o gi&agrave; v&igrave; m&oacute;ng của ch&uacute;ng d&agrave;y hơn v&agrave; đ&ocirc;i l&uacute;c ấn ngược v&agrave;o l&ograve;ng b&agrave;n ch&acirc;n l&agrave;m tổn thương m&egrave;o.</p>\r\n\r\n<p>- Kiểm&nbsp;tra bộ m&oacute;ng của m&egrave;o h&agrave;ng tuần v&agrave; cắt tỉa nếu cần thiết. Điều n&agrave;y dễ d&agrave;ng thực hiện hơn thay v&igrave; để m&oacute;ng mọc qu&aacute; d&agrave;i ảnh hưởng đến b&agrave;n ch&acirc;n của m&egrave;o. Nếu xảy ra sự cố, bạn cần đưa ch&uacute;ng đi kh&aacute;m b&aacute;c sĩ th&uacute; y để uống thuốc kh&aacute;ng sinh cần thiết.</p>\r\n\r\n<p><img src=\"https://bizweb.dktcdn.net/100/348/235/files/wjyigzq-jpeg.jpg?v=1604401737675\" /></p>\r\n\r\n<p><strong>Cảnh b&aacute;o:</strong></p>\r\n\r\n<p>- Kh&ocirc;ng&nbsp;d&ugrave;ng k&egrave;m cắt m&oacute;ng hoặc k&eacute;o d&agrave;nh cho người. Loại dụng cụ n&agrave;y c&oacute; thể l&agrave;m nứt m&oacute;ng của m&egrave;o.</p>\r\n\r\n<p>- Kh&ocirc;ng n&ecirc;n&nbsp;cắt qu&aacute; s&acirc;u v&agrave; đụng v&agrave;o đệm thịt. Nếu kh&ocirc;ng m&egrave;o sẽ rất đau.</p>\r\n\r\n<p>- Đừng n&ecirc;n&nbsp;cắt trụi m&oacute;ng của m&egrave;o v&igrave; sẽ l&agrave;m tổn thương d&acirc;y thần kinh cũng như khiến m&egrave;o bị tổn thương t&acirc;m l&yacute;. Thay v&agrave;o đ&oacute;, bạn n&ecirc;n cắt m&oacute;ng cho th&uacute; cưng v&agrave;i tuần một lần v&agrave; chuẩn bị trụ hoặc thảm m&agrave;i vuốt cho ch&uacute;ng.</p>\r\n\r\n<p>Việc cắt m&oacute;ng thật&nbsp;ra chẳng c&oacute; g&igrave; kh&oacute; cả chỉ l&agrave; bạn chưa biết c&aacute;ch m&agrave; th&ocirc;i! Qua b&agrave;i viết n&agrave;y t&ocirc;i mong rằng bạn c&oacute; thể l&agrave;m tốt nhiệm vụ &quot;kh&oacute; khăn&quot; n&agrave;y.&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Nguồn: Wikihow</p>\r\n', '1733396405_qlrg3ms.webp', '2024-12-09', 1),
(18, 'Thành Quang Bảo Ngoc', 'Cách để khiến các bé mèo trở nên yêu bạn hơn', '<p>C&aacute;ch để khiến c&aacute;c b&eacute; m&egrave;o trở n&ecirc;n y&ecirc;u bạn hơn</p>\r\n', '<p><strong>* H&atilde;y lu&ocirc;n&nbsp;thấu hiểu&nbsp;ch&uacute; m&egrave;o của bạn:</strong></p>\r\n\r\n<p><strong>Bạn h&atilde;y lu&ocirc;n đối sử với m&egrave;o như một lo&agrave;i độc lập:</strong></p>\r\n\r\n<p>- Mặc d&ugrave; m&egrave;o đang&nbsp;phụ thuộc v&agrave;o sự chăm s&oacute;c của bạn, ch&uacute;ng vẫn c&oacute; nhu cầu lớn về sự độc lập v&agrave; kh&ocirc;ng gian ri&ecirc;ng tư. D&ugrave; m&egrave;o rất th&iacute;ch được vuốt ve, nhưng&nbsp;ch&uacute;ng thường kh&ocirc;ng th&iacute;ch th&uacute; với việc tương t&aacute;c với con người. Nếu bạn c&oacute; thể c&acirc;n bằng giữa việc chơi với m&egrave;o v&agrave; cho ch&uacute;ng thời gian ri&ecirc;ng tư, m&egrave;o sẽ y&ecirc;u bạn hơn.</p>\r\n\r\n<p>- Một số người thường lầm tưởng việc&nbsp;đối xử với m&egrave;o như ch&oacute;. Bạn h&atilde;y nhớ, ch&uacute;ng l&agrave; hai lo&agrave;i động vật rất kh&aacute;c nhau.</p>\r\n\r\n<p>- Ch&oacute; l&agrave; nh&oacute;m động vật được thuần h&oacute;a để l&agrave;m việc c&ugrave;ng con người. Ngược lại, m&egrave;o l&agrave; lo&agrave;i vật đơn độc, vốn gi&uacute;p đỡ con người bằng c&aacute;ch một m&igrave;nh loại trừ c&aacute;c lo&agrave;i gặm nhấm c&oacute; hại.</p>\r\n\r\n<p>- Đừng qu&aacute; quấn qu&yacute;t&nbsp;với m&egrave;o hoặc cảm thấy bực m&igrave;nh khi c&oacute; l&uacute;c ch&uacute;ng trốn bạn. Đ&oacute; l&agrave; một phần trong t&iacute;nh c&aacute;ch tự nhi&ecirc;n của ch&uacute;ng.</p>\r\n\r\n<p><img src=\"https://bizweb.dktcdn.net/100/348/235/files/pxzlfuk.jpg?v=1604411431432\" /></p>\r\n\r\n<p><strong>Hạn chế d&ugrave;ng h&igrave;nh phạt đối với m&egrave;o:</strong></p>\r\n\r\n<p>- Khi m&egrave;o bị phạt bằng c&aacute;ch qu&aacute;t th&aacute;o hoặc c&aacute;c h&agrave;nh động mạnh bạo kh&aacute;c, ch&uacute;ng sẽ c&oacute; sẽ bỏ chạy. N&oacute;i chung, m&egrave;o sẽ kh&ocirc;ng phục t&ugrave;ng bạn&nbsp;th&ocirc;ng qua kỉ luật. V&agrave; m&egrave;o sẽ kh&ocirc;ng y&ecirc;u bạn nếu bạn l&agrave; một người chủ xấu t&iacute;nh.</p>\r\n\r\n<p>- Đừng bao giờ đ&aacute;nh m&egrave;o v&igrave; h&agrave;nh động n&agrave;y chỉ khiến mọi chuyện tệ hơn.</p>\r\n\r\n<p>- D&ugrave; xịt nước v&agrave;o m&egrave;o để trừng phạt h&agrave;nh vi xấu của n&oacute; l&agrave; một mẹo phổ biến, nhưng thật ra vi&ecirc;c đ&oacute; l&agrave;m&nbsp;m&egrave;o sợ v&agrave; sẽ kh&ocirc;ng tiếp tục tin tưởng bạn&nbsp;tin tưởng bạn.</p>\r\n\r\n<p><img src=\"https://bizweb.dktcdn.net/100/348/235/files/qnwdymq-jpeg.jpg?v=1604411449241\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Bạn h&atilde;y t&igrave;m ra m&oacute;n ăn vặt m&agrave; m&egrave;o y&ecirc;u th&iacute;ch:</strong></p>\r\n\r\n<p>- Cũng như con người, c&oacute; một số m&oacute;n ăn m&agrave; m&egrave;o th&iacute;ch hơn c&aacute;c m&oacute;n kh&aacute;c. Bạn h&atilde;y t&igrave;m hiểu đ&oacute; l&agrave; m&oacute;n ăn g&igrave; v&agrave; thay v&igrave; trừng phạt bạn n&ecirc;n d&ugrave;ng m&oacute;n ăn đ&oacute; để kh&iacute;ch lệ những h&agrave;nh vi tốt của m&egrave;o.</p>\r\n\r\n<p>- Mặc&nbsp;d&ugrave; khẩu vị của những ch&uacute; m&egrave;o l&agrave; kh&aacute;c nhau, nhưng b&aacute;nh c&aacute; ngừ nhỏ v&agrave; thịt g&agrave; đ&atilde; nấu ch&iacute;n thường rất kh&oacute; cưỡng đối với m&egrave;o. Thỉnh thoảng bạn h&atilde;y thưởng cho m&egrave;o điều đ&oacute;&nbsp;sẽ khiến m&egrave;o trở n&ecirc;n y&ecirc;u bạn hơn.</p>\r\n\r\n<p>- Kh&ocirc;ng cho m&egrave;o uống sữa. Tr&aacute;i với quan niệm phổ biến, thực phẩm từ bơ sữa kh&ocirc;ng tốt cho m&egrave;o.</p>\r\n\r\n<p>- Kh&ocirc;ng cho m&egrave;o ăn s&ocirc; c&ocirc; la, kẹo, trứng sống, thịt hoặc c&aacute; sống.</p>\r\n\r\n<p>- V&agrave;&nbsp;bạn h&atilde;y nhớ rằng đồ ăn vặt kh&ocirc;ng thể thay thế một bữa ăn đầy đủ của m&egrave;o.</p>\r\n\r\n<p><img src=\"https://bizweb.dktcdn.net/100/348/235/files/rmjuw4e-jpeg.jpg?v=1604411467792\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>H&atilde;y lu&ocirc;n t&ocirc;n trọng c&aacute; t&iacute;nh ri&ecirc;ng của m&egrave;o:</strong>&nbsp;D&ugrave; những ch&uacute; m&egrave;o c&oacute; những đặc điểm h&agrave;nh vi chung nhưng&nbsp;giữa ch&uacute;ng vẫn c&oacute; nhiều kh&aacute;c biệt đ&aacute;ng kể. H&atilde;y d&agrave;nh thời gian để t&igrave;m hiểu ch&uacute; m&egrave;o của bạn th&iacute;ch v&agrave; kh&ocirc;ng th&iacute;ch g&igrave;. Biết được v&agrave; t&ocirc;n trọng c&aacute; t&iacute;nh của m&egrave;o l&agrave; việc rất quan trọng để gi&agrave;nh được t&igrave;nh cảm của ch&uacute;ng.</p>\r\n\r\n<p><img src=\"https://bizweb.dktcdn.net/100/348/235/files/rttfpm9-jpeg.jpg?v=1604411502404\" /></p>\r\n\r\n<p><strong>* H&atilde;y học c&aacute;ch giao tiếp với m&egrave;o:</strong></p>\r\n\r\n<p>&nbsp;<strong>Học v&agrave; t&ocirc;n trọng ng&ocirc;n ngữ của m&egrave;o;</strong></p>\r\n\r\n<p>- Cũng như con người, m&egrave;o sử dụng ng&ocirc;n ngữ cơ thể như một c&aacute;ch giao tiếp để thể hiện mọi cảm x&uacute;c, từ tin tưởng tới sợ h&atilde;i. D&aacute;ng vẻ của ch&uacute;ng h&agrave;m chứa những th&ocirc;ng điệp quan trọng.</p>\r\n\r\n<p>- Khi bạn thấy&nbsp;ch&uacute; m&egrave;o của m&igrave;nh cong lưng, l&ocirc;ng dựng ngược dọc sống lưng, x&ograve;e m&oacute;ng đ&oacute;&nbsp;l&agrave; những dấu hiệu cho thấy m&egrave;o đang cảm thấy bị đe dọa. L&uacute;c n&agrave;y, h&atilde;y để m&egrave;o được y&ecirc;n.</p>\r\n\r\n<p>- Nếu m&egrave;o cọ người v&agrave;o bạn, c&oacute; thể n&oacute; đang muốn chơi.</p>\r\n\r\n<p>- Nếu m&egrave;o quấn đu&ocirc;i v&agrave;o bạn, c&oacute; thể n&oacute; đang thể hiện sự h&agrave;i l&ograve;ng.</p>\r\n\r\n<p>- Hoặc nếu m&egrave;o cụp đu&ocirc;i xuống dưới hoặc giữa hai ch&acirc;n, c&oacute; thể m&egrave;o đang cảm thấy lo lắng v&agrave; bất an.</p>\r\n\r\n<p><img src=\"https://bizweb.dktcdn.net/100/348/235/files/xjcr7ew.jpg?v=1604411524922\" /></p>\r\n\r\n<p><strong>Lắng nghe tiếng k&ecirc;u của m&egrave;o:</strong></p>\r\n\r\n<p>- Tiếng &ldquo;rừ rừ&rdquo; thể hiện t&igrave;nh y&ecirc;u v&agrave; sự h&agrave;i l&ograve;ng. Hay tiếng &ldquo;meo meo&rdquo; l&agrave; &acirc;m thanh để thu h&uacute;t sự ch&uacute; &yacute;, thể hiện mọi cảm x&uacute;c từ đ&oacute;i cho tới muốn được vuốt ve.</p>\r\n\r\n<p>- Nhưng nếu bạn nghe thấy tiếng g&agrave;o v&agrave; r&iacute;t l&ecirc;n c&oacute; nghĩa l&agrave; h&atilde;y tr&aacute;nh xa ra.&nbsp;</p>\r\n\r\n<p>- M&egrave;o thường kh&ocirc;ng k&ecirc;u meo meo với nhau, ch&uacute;ng l&agrave;m thế để giao tiếp với con người.</p>\r\n\r\n<p>- M&egrave;o k&ecirc;u meo meo li&ecirc;n tục c&oacute; thể cho thấy ch&uacute;ng bị ốm v&agrave; cần được đưa đi kh&aacute;m.</p>\r\n\r\n<p><img src=\"https://bizweb.dktcdn.net/100/348/235/files/e8jjs78.jpg?v=1604411539866\" /></p>\r\n\r\n<p><strong>Bạn n&ecirc;n tr&aacute;nh&nbsp;việc giao tiếp với m&egrave;o bằng mắt:</strong></p>\r\n\r\n<p>- Khi giao tiếp với người kh&aacute;c, đ&acirc;y l&agrave; h&agrave;nh động lịch sự, nhưng đối với m&egrave;o th&igrave; h&agrave;nh động đ&oacute; lại mang t&iacute;nh đe dọa. Nếu m&egrave;o chớp mắt khi bạn đang ở đ&oacute;, đ&oacute; l&agrave; biểu hiện của sự tin tưởng.</p>\r\n\r\n<p>- Lần sau, khi m&egrave;o chớp mắt với bạn, h&atilde;y bắt chước h&agrave;nh động đ&oacute;.</p>\r\n\r\n<p>- Với h&agrave;nh động chớp mắt chậm r&atilde;i, bạn đang thể hiện sự tin tưởng, cởi mở v&agrave; nu&ocirc;i dưỡng t&igrave;nh cảm với m&egrave;o.</p>\r\n\r\n<p><img src=\"https://bizweb.dktcdn.net/100/348/235/files/yinjefa.jpg?v=1604411558361\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Khi bế m&egrave;o bạn h&atilde;y cuối xuống bằng độ cao của ch&uacute;ng:</strong>&nbsp;Bạn từ từ c&uacute;i xuống trước khi bế m&egrave;o l&ecirc;n. Nếu m&egrave;o c&oacute; thể tr&ocirc;ng thấy bạn trước khi được bế, ch&uacute;ng sẽ đỡ sợ hơn.</p>\r\n\r\n<p><img src=\"https://bizweb.dktcdn.net/100/348/235/files/yniy8jy.jpg?v=1604411580695\" /></p>\r\n\r\n<p><strong>* Chăm s&oacute;c m&egrave;o:</strong></p>\r\n\r\n<p><strong>H&atilde;y giữ cho m&egrave;o tr&aacute;nh xa sự nguy hiểm:</strong></p>\r\n\r\n<p>- Khi m&egrave;o được an to&agrave;n v&agrave; bảo vệ, m&egrave;o sẽ y&ecirc;u bạn hơn. Đảm bảo rằng m&egrave;o c&oacute; một nơi an to&agrave;n để ngủ, cảm thấy y&ecirc;n t&acirc;m khi đi vệ sinh, c&oacute; thức ăn đầy đủ, kh&ocirc;ng bị người kh&aacute;c hoặc động vật kh&aacute;c trong nh&agrave; đe dọa.</p>\r\n\r\n<p>- H&atilde;y đảm bảo rằng m&egrave;o kh&ocirc;ng thể tiếp x&uacute;c với c&aacute;c chất độc hại.</p>\r\n\r\n<p>- Đ&oacute;ng tủ bếp v&agrave; tủ đựng đồ, v&igrave; m&egrave;o l&agrave; lo&agrave;i vật t&ograve; m&ograve; v&agrave; ch&uacute;ng c&oacute; thể gặp rắc rối.</p>\r\n\r\n<p>- Cho m&egrave;o đeo v&ograve;ng cổ với một chiếc kh&oacute;a dễ th&aacute;o (đề ph&ograve;ng trường hợp m&egrave;o bị mắc kẹt), tr&ecirc;n đ&oacute; c&oacute; ghi th&ocirc;ng tin li&ecirc;n hệ trong trường hợp m&egrave;o đi lạc.</p>\r\n\r\n<p><img src=\"https://bizweb.dktcdn.net/100/348/235/files/gldjou7-jpeg.jpg?v=1604411600549\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;<strong>H&atilde;y cho m&egrave;o ăn theo thời gian biểu:</strong></p>\r\n\r\n<p>- M&egrave;o l&agrave; lo&agrave;i vật sống theo th&oacute;i quen. Đừng thay đổi thời gian cho m&egrave;o ăn qu&aacute; thường xuy&ecirc;n. Khi m&egrave;o l&agrave;m việc tốt, h&atilde;y thưởng đồ ăn cho m&egrave;o, nhưng đừng để việc đ&oacute; ảnh hưởng tới bữa ăn ch&iacute;nh. Để m&egrave;o y&ecirc;u bạn hơn, đừng thường xuy&ecirc;n thay đổi loại đồ ăn của ch&uacute;ng.</p>\r\n\r\n<p>- M&egrave;o sẽ ho&agrave;n to&agrave;n khỏe mạnh khi ăn đồ kh&ocirc;, đồ đ&oacute;ng hộp hoặc kết hợp cả hai.</p>\r\n\r\n<p>- Phần lớn c&aacute;c chuy&ecirc;n gia khuyến nghị kh&ocirc;ng cho m&egrave;o ăn qu&aacute; hai bữa một ng&agrave;y. Ở c&aacute;c nước ph&aacute;t triển, cứ năm con m&egrave;o th&igrave; c&oacute; một con bị b&eacute;o ph&igrave;, g&acirc;y ra những vấn đề nghi&ecirc;m trọng về sức khỏe.</p>\r\n\r\n<p><img src=\"https://bizweb.dktcdn.net/100/348/235/files/7nfpwl6.jpg?v=1604411622216\" /></p>\r\n\r\n<p><strong>Đừng n&ecirc;n ngược đ&atilde;i m&egrave;o khi bạn vắng nh&agrave;:</strong></p>\r\n\r\n<p>- Khi bạn rời khỏi nh&agrave;,&nbsp;h&atilde;y đảm bảo m&egrave;o đ&atilde; c&oacute; đủ đồ ăn v&agrave; nước uống sạch. Nếu bạn phải đi xa trong một thời gian d&agrave;i, đảm bảo rằng sẽ c&oacute; người tr&ocirc;ng nom m&egrave;o, dọn chậu c&aacute;t v&agrave; chơi c&ugrave;ng ch&uacute;ng một ch&uacute;t. Một ch&uacute; m&egrave;o bị ngược đ&atilde;i sẽ kh&ocirc;ng y&ecirc;u chủ.</p>\r\n\r\n<p>- D&ugrave; m&egrave;o&nbsp;l&agrave; lo&agrave;i động vật độc lập nhưng&nbsp;ch&uacute;ng vẫn cần tới sự ch&uacute; &yacute; của con người v&agrave; được vệ sinh thường xuy&ecirc;n.</p>\r\n\r\n<p>- Nếu bạn đi du lịch v&agrave; kh&ocirc;ng c&oacute; ai tr&ocirc;ng nom m&egrave;o, bạn h&atilde;y th&ecirc;u người chăm s&oacute;c ch&uacute;ng.</p>\r\n\r\n<p><img src=\"https://bizweb.dktcdn.net/100/348/235/files/nsj1pch-jpeg.jpg?v=1604411656818\" /></p>\r\n\r\n<p><strong>Thường xuy&ecirc;n dọn sạch chậu&nbsp;c&aacute;t vệ sinh cho m&egrave;o:</strong></p>\r\n\r\n<p>- M&egrave;o rất th&iacute;ch&nbsp;sự sạch sẽ; nếu chậu c&aacute;t của ch&uacute;ng bẩn, ch&uacute;ng sẽ t&igrave;m một nơi kh&aacute;c để đi vệ sinh. H&atilde;y đổ th&ecirc;m c&aacute;t sạch v&agrave;o chậu h&agrave;ng ng&agrave;y. Thường xuy&ecirc;n rửa chậu c&aacute;t bằng x&agrave; ph&ograve;ng v&agrave; nước.</p>\r\n\r\n<p>- Đừng&nbsp;đột ngột thay đổi loại c&aacute;t vệ sinh của m&egrave;o.</p>\r\n\r\n<p>- Khi bạn&nbsp;muốn đổi sang loại c&aacute;t mới, h&atilde;y từ từ trộn lẫn c&aacute;t loại cũ v&agrave; loại mới với nhau.</p>\r\n\r\n<p><img src=\"https://bizweb.dktcdn.net/100/348/235/files/ukumpak.jpg?v=1604411673963\" /></p>\r\n\r\n<p><strong>Thường xuy&ecirc;n chải l&ocirc;ng cho m&egrave;o:</strong></p>\r\n\r\n<p>- Ch&uacute;ng rất th&iacute;ch&nbsp;việc đ&oacute;! Thường xuy&ecirc;n chải l&ocirc;ng cho m&egrave;o sẽ gi&uacute;p l&ocirc;ng v&agrave; da của ch&uacute;ng khỏe mạnh Chải l&ocirc;ng cũng l&agrave; một cơ hội tuyệt với để ph&aacute;t hiện ra c&aacute;c khối u, chấy rận hoặc c&aacute;c vết thương. Chải l&ocirc;ng c&ograve;n l&agrave; một cơ hội để trở n&ecirc;n th&acirc;n thiết hơn với ch&uacute; m&egrave;o của bạn.</p>\r\n\r\n<p>- Tr&aacute;nh&nbsp;chải ngược chiều mọc của l&ocirc;ng m&egrave;o, việc n&agrave;y c&oacute; thể khiến m&egrave;o kh&oacute; chịu v&agrave; căng thẳng.</p>\r\n\r\n<p>- Lu&ocirc;n&nbsp;chải nhẹ nh&agrave;ng với những đường chải d&agrave;i, thay v&igrave; chải mạnh tay v&agrave; ngắn.</p>\r\n\r\n<p><img src=\"https://bizweb.dktcdn.net/100/348/235/files/uyajkau-jpeg.jpg?v=1604411691988\" /></p>\r\n\r\n<p><strong>H&atilde;y thường xuy&ecirc;n chơi với ch&uacute;ng:&nbsp;</strong></p>\r\n\r\n<p>- M&egrave;o th&iacute;ch những m&oacute;n đồ&nbsp;chơi đơn giản v&agrave; rẻ tiền. Bạn&nbsp;h&atilde;y d&ugrave;ng những m&oacute;n đồ chơi c&oacute; buộc d&acirc;y để giả vờ l&agrave;m chuột. L&agrave;m động t&aacute;c sao cho đồ chơi chuyển động nhanh như chuột hoặc bay bổng như chim. M&egrave;o sẽ hăng h&aacute;i đuổi bắt m&oacute;n đồ chơi đ&oacute;. M&egrave;o sẽ rất y&ecirc;u những người chủ biết chơi với ch&uacute;ng.</p>\r\n\r\n<p>- H&atilde;y khuyến&nbsp;kh&iacute;ch m&egrave;o vồ đồ chơi, chứ kh&ocirc;ng&nbsp;phải l&agrave; tay bạn!</p>\r\n\r\n<p><img src=\"https://bizweb.dktcdn.net/100/348/235/files/pjjnavl.jpg?v=1604411706229\" /></p>\r\n\r\n<p><strong>Đầu tư mua một trụ c&agrave;o m&oacute;ng cho m&egrave;o:&nbsp;</strong></p>\r\n\r\n<p>- M&egrave;o c&oacute; bản&nbsp;năng m&agrave;i m&oacute;ng v&agrave;o c&aacute;c bề mặt trong nh&agrave; bạn, v&iacute; dụ như đồ nội thất. Tuy nhi&ecirc;n, ch&uacute;ng cũng c&oacute; thể chỉ th&iacute;ch c&agrave;o những đồ vật nhất định, đặc biệt l&agrave; những nơi c&oacute; bề mặt x&ugrave; x&igrave; như thảm d&agrave;y hoặc thảm c&oacute;i. M&egrave;o sẽ y&ecirc;u bạn hơn nếu ch&uacute;ng c&oacute; một thứ ph&ugrave; hợp để m&agrave;i m&oacute;ng trong nh&agrave;.&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>- Hoặc bạn c&oacute; thể mua hoặc tự l&agrave;m &ldquo;nh&agrave; c&acirc;y&rdquo; cho m&egrave;o, ch&uacute;ng vừa l&agrave; cột m&agrave;i m&oacute;ng vừa l&agrave; s&acirc;n chơi cho m&egrave;o.&nbsp;M&egrave;o sẽ th&iacute;ch tr&egrave;o v&agrave; chơi đ&ugrave;a với loại đồ chơi n&agrave;y.</p>\r\n\r\n<p><img src=\"https://bizweb.dktcdn.net/100/348/235/files/f7og4jq-jpeg.jpg?v=1604411784066\" /></p>\r\n\r\n<p><strong>Tận dụng đặc điểm &quot;y&ecirc;u đồ&quot; ăn của m&egrave;o:</strong></p>\r\n\r\n<p>- Rất nhiều&nbsp;m&egrave;o thường y&ecirc;u qu&yacute; người cho ch&uacute;ng ăn hơn những người kh&aacute;c. Nếu nh&agrave; bạn đ&ocirc;ng người, bạn h&atilde;y l&agrave; người cho m&egrave;o ăn. M&egrave;o sẽ quen với điều đ&oacute; v&agrave; lu&ocirc;n t&igrave;m tới bạn khi đ&oacute;i hoặc khi tới giờ ăn tối.</p>\r\n\r\n<p>- Cũng như con người, con đường&nbsp;ngắn nhất đi tới tr&aacute;i tim của m&egrave;o l&agrave; qua &quot;dạ&nbsp;d&agrave;y&quot;của ch&uacute;ng!</p>\r\n\r\n<p><img src=\"https://bizweb.dktcdn.net/100/348/235/files/x3dggqb-jpeg.jpg?v=1604411798461\" /></p>\r\n\r\n<p><strong>Lời khuy&ecirc;n:</strong></p>\r\n\r\n<p>- Những&nbsp;việc n&agrave;y đều cần thời gian. Bạn kh&ocirc;ng thể &eacute;p buộc m&egrave;o phải y&ecirc;u bạn.</p>\r\n\r\n<p>- G&atilde;i&nbsp;khắp người m&egrave;o để t&igrave;m ra vị tr&iacute; ch&uacute;ng th&iacute;ch được vuốt ve nhất.</p>\r\n\r\n<p>- C&oacute; nhiều ch&uacute;&nbsp;m&egrave;o th&iacute;ch được g&atilde;i dưới cằm.</p>\r\n\r\n<p>- Nhận&nbsp;biết được dấu hiệu khi m&egrave;o kh&ocirc;ng cần được quan t&acirc;m nữa, v&iacute; dụ như vuốt ve. Một số dấu hiệu bao gồm: kh&ocirc;ng k&ecirc;u rừ rừ, nh&igrave;n bạn theo một c&aacute;ch nhất định n&agrave;o đ&oacute;, hoặc đơn giản l&agrave; đứng l&ecirc;n v&agrave; bỏ đi.</p>\r\n\r\n<p>- H&atilde;y&nbsp;để m&egrave;o quấn lấy bạn, đừng đẩy ch&uacute;ng xuống khỏi đ&ugrave;i.</p>\r\n\r\n<p>- Cho&nbsp;ch&uacute;ng ăn vặt v&agrave;i lần một tuần.</p>\r\n\r\n<p>- Nếu như&nbsp;m&egrave;o kh&ocirc;ng cho bạn bế, đừng cố l&agrave;m nữa, m&egrave;o sẽ c&agrave;ng th&ecirc;m giận dữ.</p>\r\n\r\n<p>- Khi&nbsp;m&egrave;o của bạn k&ecirc;u r&iacute;t&nbsp;l&ecirc;n, h&atilde;y để ch&uacute;ng được&nbsp;y&ecirc;n.</p>\r\n\r\n<p><strong>Cảnh&nbsp;b&aacute;o:</strong></p>\r\n\r\n<p>-Nếu&nbsp;m&egrave;o k&ecirc;u r&iacute;t&nbsp;l&ecirc;n hoặc giơ tay ra c&agrave;o, bạn đừng động v&agrave;o m&egrave;o nữa. Việc đ&oacute; sẽ khiến m&egrave;o giận hơn. Thay v&agrave;o đ&oacute;, h&atilde;y để m&egrave;o y&ecirc;n một l&uacute;c v&agrave; thử lại sau.</p>\r\n\r\n<p>- Một ch&uacute; m&egrave;o bị thương hoặc ốm nặng c&oacute; thể k&ecirc;u rừ rừ để tự trấn an. Đ&acirc;y kh&ocirc;ng phải l&agrave; biểu hiện của sự h&agrave;i l&ograve;ng m&agrave; l&agrave; ngược lại. Nếu m&egrave;o c&oacute; biểu hiện kh&ocirc;ng vui r&otilde; rệt hoặc c&oacute; h&agrave;nh vi tự vệ, nhưng vẫn k&ecirc;u rừ rừ, c&oacute; thể bạn n&ecirc;n đưa m&egrave;o đi kh&aacute;m.</p>\r\n\r\n<p>- Đừng bao giờ cầm hoặc k&eacute;o đu&ocirc;i của m&egrave;o, m&egrave;o kh&ocirc;ng th&iacute;ch việc n&agrave;y.</p>\r\n\r\n<p>V&agrave;&nbsp;th&ocirc;ng qua b&agrave;i viết n&agrave;y mong rằng mối quan hệ giữ bạn v&agrave; m&egrave;o sẽ c&agrave;ng trở n&ecirc;n tốt hơn trước.&nbsp;</p>\r\n\r\n<h3>&nbsp;</h3>\r\n\r\n<p>Nguồn: Wikihow</p>\r\n', '1733396181_rttfpm9-jpeg.webp', '2024-12-09', 1);

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
(5, '1733394749_1730388076_phu-kien-danh-cho-thu-cung-Photoroom.png'),
(6, '1733394757_1730388071_group-3-Photoroom.png');

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
(12, 'ORGANICA'),
(13, 'MeoWow'),
(14, 'Aatas'),
(15, 'Kings Pet'),
(16, 'Nekko');

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
(18, ' Cá Hồi (H)'),
(19, 'Gà (V)'),
(20, 'Bò '),
(21, 'Gà'),
(22, 'Cá cơm'),
(23, 'Cá Biển'),
(24, 'Cá Saba'),
(25, 'Gà - cho chó mèo'),
(26, 'Cá Hỗn Hợp'),
(27, 'Cá Hồi'),
(28, 'Giò Heo - Cho Chó'),
(29, 'Cá Ngừ & Hải Sản'),
(30, 'Cá Ngừ & Cá hồi'),
(31, 'Cá Ngừ & Katsuo'),
(32, 'Lavenderi 5L'),
(33, 'Trà xanh 5L'),
(34, 'CaFe 5L');

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
(13, 'Thiết Bị Thông Minh', '', '1733407662_download (3).jpg'),
(14, 'Thức Ăn Cho Mèo', '', '1733407408_pate-meowow-ca-ngu-trang-cho-meo-moi-lua-tuoi-lon-80g-paddy-12.webp'),
(17, 'Thức  Ăn Cho Chó', '', '1733407482_download.jpg'),
(20, 'Phụ Kiện Cho Mèo', '', '1733407492_09b3e42f-0e98-46f5-a2b5-ff59bb8e98d5.webp'),
(21, 'Phụ Kiện Cho Chó', '', '1733407537_download (1).jpg'),
(22, 'Đồ Chơi Thú Cưng', '', '1733407581_download (2).jpg'),
(23, 'Cát Vệ Sinh Mèo', '', '1733407590_140.jpg'),
(24, 'Thuốc Cho Thú Cưng', '', '1733407823_download (7).jpg'),
(25, 'Sữa Tắm Thú Cưng', '', '1733407812_download (6).jpg'),
(26, 'Dụng cụ Vệ Sinh', '', '1733407754_download (5).jpg'),
(27, 'Balo Vận Chuyển', '', '1733407701_download (4).jpg');

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
(2, 7, 'Đặng Hữu Thịnh', 1, 'dhthinh.cntt@gmail.com', '0878398141', 'Quan Hoa, Cầu Giấy, Hà Nội'),
(3, 2, 'Phúc An', 1, 'annp@gmail.com', '0887398147', 'Quốc Oai, Hà Nội'),
(5, 13, 'Nguyễn Văn Khánh', 1, 'ankhanh184@gmail.com', '09648383113', 'Long Phú, Quốc Oai, Hà Nội'),
(6, 1, 'Thịnh Đặng', 1, 'thinh191204033@gmail.com', '0878398141', 'Quan Hoa, Cầu Giấy, Hà Nội'),
(8, 14, 'Diệu Anh', 2, 'dieuanh@gmail.com', '0964838311', 'Long Phú, Quốc Oai, Hà Nội'),
(9, 15, 'Hà Văn Thắng', 1, 'thangthattha@gmail.com', '039415515', 'Quan Hoa, Cầu Giấy, Hà Nội'),
(10, 16, 'Phạm Văn Thuận', 1, 'thuanpv@gmail.com', '0971113114', 'Hoàng Mai, Hà Nội'),
(15, 18, 'Diệu Nhi', 2, 'annp260808@gmail.com', '0971113114', 'Cầu Giấy'),
(17, 20, 'Nguyễn Trác Hậu', 1, 'haunguyen@gmail.com', '0878398141', 'Ba Vì, Hà Nội'),
(18, 21, 'Hà Thắng', 1, 'hathang@gmail.com', '0979359018', 'Quan Hoa, Cầu Giấy, Hà Nội'),
(19, 22, 'admin', 0, 'admin@gmail.com', '0987654322', 'Hồ Chí Minh'),
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
(36, 39, 'Dat Gold', 0, 'user123@gmail.com', '0823488817', 'Quận 1 Nguyễn Bỉnh Khiêm Thành Phố Hồ Chí Minh '),
(37, 40, 'Thảo', 2, 'thao123@gmail.com', '0765666678', 'quan 1 Hồ Chí Minh'),
(38, 41, 'thao24538', 2, 'thaonguyen24538@gmail.com', '076565128', '260/4/4 nguyễn thái bình'),
(39, 42, 'Thu Thảo', 2, 'thao@gmail.com', '0765659128', '260/4/4 nguyễn thái bình');

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
(393, 40, 'Thảo', '0765666678', 'quan 1 Hồ Chí Minh', 'gói hàng cẩn thận giúp em nha shop ', NULL),
(404, 7, '', '878398141', 'Long Phú, Quốc Oai, Hà Nội', 'Giao hàng nhanh không là boom đấy', NULL),
(447, 28, 'quandh', '0334205811', '113 ca', '', NULL),
(602, 7, 'Đặng Hữu Thịnh', '878398141', 'Quan Hoa, Cầu Giấy, Hà Nội', '', NULL),
(716, 7, 'Đặng Hữu Thịnh', '878398141', '225 Quan hoa, Cầu giấy, Hà Nội', 'Giao hàng nhanh không là boom đấy', NULL),
(732, 1, 'Thịnh đang test', '979359018', 'Hà Nội', '', NULL),
(863, 40, 'Thảo', '0765666678', 'quan 1 Hồ Chí Minh', '', 'Chi nhánh Bình dương '),
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
(2003, 40, 'Thảo', '0765666678', 'quan 1 Hồ Chí Minh', '', 'Chi nhánh Bình dương '),
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
(2606, 0, 'Thu', '0765666677', '32/4 TRƯƠNG HOÀNG THANH', '', 'Chi nhánh Bình dương '),
(2629, 7, 'Đặng Hữu Thịnh', '878398141', 'Quan Hoa, Cầu Giấy, Hà Nội', '', NULL),
(2639, 7, 'Đặng Hữu Thịnh', '0878398141', 'Quan Hoa, Cầu Giấy, Hà Nội', '', NULL),
(2766, 7, 'Đặng Hữu Thịnh', '0878398141', 'Quan Hoa, Cầu Giấy, Hà Nội', '', NULL),
(2912, 1, 'Nguyễn phúc an', '0979359018', 'Hà Nội', 'Đơn hàng mua trực tiếp', NULL),
(3007, 42, 'Thu Thảo', '0765659128', '260/4/4 nguyễn thái bình', '', 'Chi nhánh Q1'),
(3044, 7, '', '878398141', '', '', NULL),
(3105, 7, 'Đặng Hữu Thịnh', '878398141', 'Hà Nội', 'Giao hàng nhanh giúp mình nhé', NULL),
(3166, 28, 'quandh', '0334205811', '113 ca', '', NULL),
(3246, 1, 'Nguyễn phúc an', '0368683854', 'Hà Nội', 'Đơn hàng mua trực tiếp', NULL),
(3258, 7, 'Đặng Hữu Thịnh', '878398141', 'Long Phú, Quốc Oai, Hà Nội', 'Giao hàng nhanh không là boom đấy', NULL),
(3269, 17, 'Tú Lê', '0976475025', 'Cầu Giấy', '', NULL),
(3308, 1, 'Nguyễn phúc an', '0979359018', 'Hà Nội', 'Đơn hàng mua trực tiếp', NULL),
(3321, 7, 'Nguyễn phúc an', '979359018', 'Long Phú, Quốc Oai, Hà Nội', '', NULL),
(3492, 17, 'Tú Lê', '0976475025', 'Cầu Giấy', 'Cẩn hận giú mình nhé', NULL),
(3508, 40, 'Thảo', '0765666678', 'quan 1 Hồ Chí Minh', '', 'Chi nhánh Q1'),
(3525, 22, 'admin', '0987654321', 'hn', 'ship nhnah123', NULL),
(3528, 40, 'Thảo', '0765666678', 'quan 1 Hồ Chí Minh', '', 'Chi nhánh Bình dương '),
(3623, 7, 'Đặng Hữu Thịnh', '878398141', 'Long Phú, Quốc Oai, Hà Nội', 'Cẩn hận giúp mình nhé', NULL),
(3663, 7, 'Đặng Hữu Thịnh', '878398141', '225 Quan hoa, Cầu giấy, Hà Nội', 'Cẩn hận giúp mình nhé', NULL),
(3731, 7, 'Đặng Hữu Thịnh', '878398141', '225 Quan hoa, Cầu giấy, Hà Nội', 'Cẩn hận giúp mình nhé', NULL),
(3744, 28, 'quandh', '0334205811', '113 ca', '', 'Chi nhánh Chường Chinh'),
(3802, 0, 'Thu', '0765666679', '32/4 TRƯƠNG HOÀNG THANH', '', 'Chi nhánh Bình dương '),
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
(4706, 40, 'Thảo', '0765666678', 'quan 1 Hồ Chí Minh', '', 'Chi nhánh Q1'),
(4725, 7, 'Đặng Hữu Thịnh', '878398141', 'Quan Hoa, Cầu Giấy, Hà Nội', '', NULL),
(4759, 13, 'Nguyễn Văn Khánh', '9648383113', 'Long Phú, Quốc Oai, Hà Nội', 'Giao hàng nhanh không là boom đấy', NULL),
(4772, 37, 'quandh', '0334205811', 'quan 12 tphcm', '', 'Chi nhánh Q12'),
(4886, 7, 'Đặng Hữu Thịnh', '878398141', 'Quan Hoa, Cầu Giấy, Hà Nội', '', NULL),
(4970, 7, 'Đặng Hữu Thịnh', '878398141', '225 Quan hoa, Cầu giấy, Hà Nội', 'Cẩn hận giúp mình nhé', NULL),
(4981, 7, 'Đặng Hữu Thịnh', '878398141', 'Long Phú, Quốc Oai, Hà Nội', 'Giao hàng nhanh không là boom đấy', NULL),
(5029, 28, 'quandh', '0334205811', '113 ca', '', NULL),
(5102, 40, 'Thảo', '0765666678', 'quan 1 Hồ Chí Minh', '', 'Chi nhánh Bình dương '),
(5141, 40, 'Thảo', '0765666678', 'quan 1 Hồ Chí Minh', '', 'Chi nhánh Q1'),
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
(5906, 42, 'Thu Thảo', '0765659128', '260/4/4 nguyễn thái bình', '', 'Chi nhánh Bình dương '),
(5986, 13, 'Nguyễn Văn Khánh', '9648383113', 'Long Phú, Quốc Oai, Hà Nội', 'Giao hàng nhanh không là boom đấy', NULL),
(6216, 0, 'Thu', '0765666677', '32/4 TRƯƠNG HOÀNG THANH', '', 'Chi nhánh Bình dương '),
(6245, 6, 'Thinhdz', '878398141', '225 Quan hoa, Cầu giấy, Hà Nội', 'Giao hàng nhanh không là boom đấy', NULL),
(6275, 2, 'Nguyễn phúc an', '9383434323', '225 Quan hoa, Cầu giấy, Hà Nội', 'Cẩn hận giúp mình nhé', NULL),
(6378, 1, 'Nguyễn Việt Hưng', '0979359018', 'Hà Nội', '', NULL),
(6415, 7, 'Đặng Hữu Thịnh', '878398141', '225 Quan hoa, Cầu giấy, Hà Nội', 'Giao hàng nhanh không là boom đấy', NULL),
(6426, 7, 'Đặng Hữu Thịnh', '878398141', '225 Quan hoa, Cầu giấy, Hà Nội', 'Giao hàng nhanh không là boom đấy', NULL),
(6490, 30, 'NGUYEN VAN a', '0765658128', 'quan 11 Hồ Chí Minh', 'Đơn hàng mua trực tiếp', NULL),
(6560, 7, 'Đặng Hữu Thịnh', '878398141', 'Quan Hoa, Cầu Giấy, Hà Nội', '', NULL),
(6600, 40, 'Thảo', '0765666678', 'quan 1 Hồ Chí Minh', '', 'Chi nhánh Q7'),
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
(7450, 42, 'Thu Thảo', '0765659128', '260/4/4 nguyễn thái bình', 'gói hàng cẩn thận giúp em nha shop ', 'Chi nhánh Q7'),
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
(8836, 40, 'Thảo', '0765666678', 'quan 1 Hồ Chí Minh', 'gói hàng cẩn thận giúp em nha shop ', NULL),
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
(10, 7, 15, 'Đặng Hữu Thịnh', 5, 'Ưng lắm ạ, dùng nước hoa này có một tuần mà có người yêu luôn', '2023-06-13 09:46:32', 1),
(13, 13, 20, 'Nguyễn Văn khánh', 5, 'Tuyệt luôn !!!', '2023-06-13 10:04:05', 1),
(14, 13, 19, 'Nguyễn Văn khánh', 4, 'Sản phẩm ổn trong tầm giá', '2023-06-13 10:07:48', 1),
(16, 14, 18, 'Diệu Anh', 5, 'Nước hoa thơm, ship giao hàng nhanh', '2023-06-14 08:59:17', 1),
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
(1, 0, 'Thịnh Đặng', 'Guha Store', '', 'thêm hàng', '9124', '2023-05-22', 29500000, 0, NULL),
(2, 0, 'Thịnh Đặng', 'Guha Store', '', 'thêm hàng', '4615', '2023-05-22', 30000000, 0, NULL),
(3, 1, 'Thịnh', 'MISA JSC', '', 'Bổ sung hàng', '7331', '2023-05-24', 9000000, 0, NULL),
(4, 0, 'Thịnh Đặng', 'Brave Bits', '', 'Nhập lô sản phẩm mới', '9288', '2023-06-06', 114660000, 0, NULL),
(5, 7, 'Thịnh', 'Guha Store', '', 'thêm hàng', '8549', '2023-06-06', 7000000, 0, NULL),
(8, 20, 'Thịnh Đặng', 'MISA JSC', '', 'Bổ sung hàng', '3997', '2023-06-18', 63500000, 0, NULL),
(9, 20, 'Thịnh Đặng', 'Brave Bits', '', 'Bổ sung hàng', '4658', '2023-06-18', 15000000, 0, NULL),
(13, 20, 'Thịnh Đặng', 'Guha Store', '0985789465', 'thêm hàng', '3044', '2023-06-18', 27500000, 0, NULL),
(14, 0, 'Thịnh Đặng', 'Guha Store', '0985789465', 'Bổ sung hàng', '3450', '2023-06-19', 42500000, 0, NULL),
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
(33, 0, 'admin', 'admin', '1111', 'admin', '6868', '2024-10-16', 2000000, 0, 'Chi nhánh Q7'),
(36, 0, 'thao', 'admin', '0765666678', 'hết hàng', '3425', '2024-12-18', 250000, 0, 'Chi nhánh Q7');

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
(32, '6868', 196, 100, 20000, NULL),
(33, '232', 222, 10, 88000, NULL),
(34, '6224', 222, 1, 40000, NULL),
(35, '3425', 219, 10, 25000, NULL);

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
(4, 38, 'admin', 'Xin Chào, Test Chat nè', 'Chào Bạn nha', '2024-11-26 17:31:03'),
(5, 40, 'admin', 'chào shop shop', 'Chào Bạn nha', '2024-11-27 18:46:21'),
(6, 41, '<br />\n<b>Warning</b>:  Undefined array key ', 'chàO SHOP ', NULL, '2024-11-28 16:30:10'),
(7, 41, '', 'Hello', NULL, '2024-11-28 16:44:04'),
(8, 41, 'thao24538', 'Gold', NULL, '2024-11-28 16:50:36'),
(9, 40, 'Thảo', 'hihi', NULL, '2024-12-04 16:49:24');

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
(38, '2024-10-19', 1, '3610000', 19),
(39, '2024-12-06', 1, '123500', 2),
(40, '2024-12-11', 3, '10008500', 3),
(41, '2024-12-17', 1, '80000', 1),
(42, '2024-12-18', 4, '318500', 4);

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
(198, 4172, '2024-10-19 21:23:24', 37, 2504, 3610000, 1, 3, 'Chi nhánh Q12'),
(199, 9800, '2024-12-04 02:42:25', 40, 5102, 190000, 1, -1, 'Chi nhánh Bình dương '),
(200, 7838, '2024-12-04 02:50:25', 40, 6600, 95000, 1, -1, 'Chi nhánh Q7'),
(201, 9752, '2024-12-04 02:51:33', 40, 2003, 95000, 1, -1, 'Chi nhánh Bình dương '),
(202, 5456, '2024-12-04 23:18:50', 40, 863, 95000, 1, 0, 'Chi nhánh Bình dương '),
(203, 843, '2024-12-04 23:23:27', 40, 4706, 95000, 1, 1, 'Chi nhánh Q1'),
(204, 2357, '2024-12-04 23:31:54', 40, 5141, 125000, 1, 3, 'Chi nhánh Q1'),
(205, 3450, '2024-12-05 21:54:13', 40, 3528, 153500, 1, 3, 'Chi nhánh Bình dương '),
(206, 2059, '2024-12-11 08:35:45', 42, 7450, 110000, 1, 3, 'Chi nhánh Q7'),
(207, 9233, '2024-12-11 10:13:02', 42, 5906, 78500, 1, 3, 'Chi nhánh Bình dương '),
(208, 7012, '2024-12-11 12:03:30', 42, 3007, 9930000, 1, 3, 'Chi nhánh Q1'),
(209, 2542, '2024-12-17 15:30:40', 30, 6490, 80000, 5, 3, NULL),
(210, 587, '2024-12-18 14:18:19', 40, 393, 100000, 4, 1, NULL),
(211, 2746, '2024-12-18 15:48:37', 40, 8836, 28500, 4, 3, NULL),
(212, 8348, '2024-12-18 18:09:12', 0, 3802, 19850000, 1, 0, 'Chi nhánh Bình dương '),
(213, 5531, '2024-12-18 18:15:30', 40, 3508, 9930000, 1, -1, 'Chi nhánh Q1'),
(214, 2360, '2024-12-18 18:20:26', 0, 6216, 9930000, 1, 0, 'Chi nhánh Bình dương '),
(215, 6134, '2024-12-18 18:37:53', 0, 2606, 58500, 1, 0, 'Chi nhánh Bình dương ');

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
(207, 4172, 212, 19, 200000, 5),
(208, 9800, 212, 1, 200000, 5),
(209, 7838, 199, 1, 100000, 5),
(210, 9752, 199, 1, 100000, 5),
(211, 5456, 199, 1, 100000, 5),
(212, 843, 199, 1, 100000, 5),
(213, 2357, 199, 1, 100000, 5),
(214, 3450, 211, 1, 100000, 5),
(215, 3450, 212, 1, 30000, 5),
(216, 2059, 208, 1, 100000, 20),
(217, 9233, 212, 2, 30000, 5),
(218, 7012, 100, 1, 10000000, 1),
(219, 2542, 222, 1, 80000, 0),
(220, 587, 205, 1, 100000, 0),
(221, 2746, 212, 1, 30000, 5),
(222, 8348, 100, 2, 10000000, 1),
(223, 5531, 100, 1, 10000000, 1),
(224, 2360, 100, 1, 10000000, 1),
(225, 6134, 212, 1, 30000, 5);

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
(100, 'Máy Dọn Phân Tự Động Petkit PURA MAX (BH 12T)', 13, 10, '', 96, 4, 5000000, 10000000, 1, '<p>M&aacute;y Dọn Ph&acirc;n Tự Động&nbsp;PURA MAX kh&aacute;ng khuẩn, khử m&ugrave;i ch&iacute;nh h&atilde;ng&nbsp;PETKIT d&agrave;nh cho m&egrave;o</p>\r\n\r\n<p>Bản quốc tế bảo h&agrave;nh ch&iacute;nh h&atilde;ng Bảo h&agrave;nh ch&iacute;nh h&atilde;ng 12 th&aacute;ng</p>\r\n\r\n<p>- K&iacute;ch thước : 520*552*620 mm</p>\r\n\r\n<p>- Hỗ trợ kết nối App điện thoại th&ocirc;ng qua wifi 2.4Ghz</p>\r\n\r\n<p>- Cabin c&oacute; k&iacute;ch thước rộng 76L,cửa v&agrave;o thấp , thoải m&aacute;i với m&egrave;o 8 kg</p>\r\n\r\n<p>- Bộ lọc được thiết kế đặc biệt ph&ugrave; hợp với cả c&aacute;t hữu cơ v&agrave; c&aacute;t bentonite..</p>\r\n\r\n<p>- Trọng lượng m&egrave;o ph&ugrave; hợp: 1,5-16kg</p>\r\n', '1729346849_may-don-phan-tu-dong-petkit-pura-max-bh-12thang.webp', 1, NULL),
(101, 'Máy Ăn Tự Động Petkit MINI 2.85L - Bát đựng inox (BH 12T)', 13, 11, '', 100, 0, 5000000, 10000000, 0, '<p>Bạn lu&ocirc;n lo lắng khi m&igrave;nh đi du lịch, đi c&ocirc;ng t&aacute;c th&igrave; vấn đề ăn uống của pet sẽ như thế n&agrave;o? V&agrave; m&aacute;y ăn tự động Petkit sẽ gi&uacute;p bạn giải quyết triệt để vấn đề đ&oacute;</p>\r\n\r\n<p><strong>M&aacute;y cho ăn tự động hỗ trợ</strong></p>\r\n\r\n<p>&nbsp;- Kết nối với ứng dụng Petkit tr&ecirc;n smartphone v&agrave; th&ocirc;ng qua Wifi để điều chỉnh, c&agrave;i đặt bữa ăn h&agrave;ng ng&agrave;y cho pet</p>\r\n\r\n<p>- Lập tr&igrave;nh tối đa ~10 bữa/ng&agrave;y</p>\r\n\r\n<p>- Hộp h&uacute;t ẩm b&ecirc;n trong m&aacute;ng ăn giữ cho thực phẩm tươi. Bạn c&oacute; thể sử dụng to&agrave;n bộ c&ocirc;ng suất của bộ nạp n&agrave;y m&agrave; kh&ocirc;ng lo thức ăn bị &ocirc;i thiu hay ẩm mốc. Điều n&agrave;y c&oacute; nghĩa l&agrave; n&oacute; tồn tại trong một thời gian d&agrave;i m&agrave; kh&ocirc;ng cần nạp th&ecirc;m.</p>\r\n\r\n<p>- Dung t&iacute;ch m&aacute;y chứa được đến 3 l&iacute;t thực phẩm kh&ocirc;, chấp nhận tất cả c&aacute;c k&iacute;ch thước h&igrave;nh dạng của thức ăn, thậm ch&iacute; l&agrave; h&igrave;nh vu&ocirc;ng, th&iacute;ch hợp cho mọi th&uacute; cưng - Khay đựng thức ăn c&oacute; thể th&aacute;o rời, dễ d&agrave;ng vệ sinh</p>\r\n', '1729346892_may-an-tu-dong-petkit-mini-3l-bat-inox-bh-12t.webp', 1, NULL),
(102, 'Máy Dọn Vệ Sinh Mèo Tự Động Tipro (Bảo Hành 6 Tháng)', 13, 12, '', 100, 0, 5000000, 7000000, 0, '<ul>\r\n	<li>Thương hiệu: TiPro</li>\r\n	<li>Ph&ugrave; hợp cho: M&egrave;o mọi lứa tuổi</li>\r\n	<li>M&aacute;y dọn ph&acirc;n m&egrave;o&nbsp;TiPro l&agrave; một sản phẩm tiện &iacute;ch d&agrave;nh cho những người nu&ocirc;i m&egrave;o trong nh&agrave;. Với thiết kế th&ocirc;ng minh, m&aacute;y sẽ tự động dọn ph&acirc;n v&agrave; lọc c&aacute;t mỗi khi m&egrave;o của bạn sử dụng nh&agrave; vệ sinh. M&aacute;y c&oacute; thể được lập tr&igrave;nh để tự động l&agrave;m việc trong khoảng thời gian nhất định, được điều khiển bằng điện thoại th&ocirc;ng minh của bạn, cho ph&eacute;p bạn kiểm so&aacute;t v&agrave; điều chỉnh c&aacute;c chế độ hoạt động từ xa.&nbsp;M&aacute;y dọn vệ sinh m&egrave;o&nbsp;của Tipro sẽ gi&uacute;p bạn kh&ocirc;ng phải lo lắng về việc l&agrave;m sạch nh&agrave; vệ sinh cho b&eacute; cưng của m&igrave;nh.</li>\r\n</ul>\r\n', '1729346924_122.webp', 1, NULL),
(103, 'Máy Tinh Dầu Feliway Classic Giảm Căng Thẳng Cho Chó Mèo', 13, 12, '', 100, 0, 5000000, 1000000, 0, '<p>Feliway Classic l&agrave; một kh&aacute;m ph&aacute; pheromone mới, được cấp bằng s&aacute;ng chế v&agrave; l&agrave; sản phẫm tốt nhất của FELIWAY để gi&uacute;p giảm c&aacute;c dấu hiệu căng thẳng, stress phổ biến nhất ở m&egrave;o. Feliway Classic gi&uacute;p m&egrave;o giảm bớt căng thẳng v&agrave; b&igrave;nh tĩnh hơn; gi&uacute;p m&egrave;o giảm c&agrave;o cấu, tiểu bậy, căng thẳng, xung đột với c&aacute;c b&eacute; m&egrave;o kh&aacute;c hoặc phản ứng với c&aacute;c thay đổi của m&ocirc;i trường xung quanh, v&agrave; trở n&ecirc;n đầm t&iacute;nh hơn. Sản phẫm mới n&agrave;y, được nghi&ecirc;n cứu v&agrave; sản xuất với hơn 20 năm chuy&ecirc;n m&ocirc;n v&agrave; kinh nghiệm về căng thẳng ở m&egrave;o của c&ocirc;ng ty FELIWAY, gi&uacute;p m&egrave;o của bạn cảm thấy thoải m&aacute;i hơn bao giờ hết khi ở nh&agrave;.</p>\r\n\r\n<p>Feliway Classic l&agrave; một loại m&aacute;y h&oacute;a hơi được cắm đơn giản v&agrave;o ổ cắm v&agrave; tỏa ra pheromone v&agrave;o kh&ocirc;ng kh&iacute; , điều n&agrave;y c&oacute; thể g&oacute;p phần gi&uacute;p m&egrave;o h&ograve;a hợp hơn v&agrave; cải thiện cảm gi&aacute;c an to&agrave;n. Loại hơi n&agrave;y chỉ c&oacute; t&aacute;c dụng đối với m&egrave;o , c&aacute;c động vật kh&aacute;c trong nh&agrave; kh&ocirc;ng bị ảnh hưởng bởi n&oacute;. Đối với con người, Feliway Classic kh&ocirc;ng m&ugrave;i n&ecirc;n kh&ocirc;ng g&acirc;y kh&oacute; chịu.</p>\r\n', '1729346965_may-tinh-dau-feliway-classic-giam-cang-thang-cho-cho-meo.webp', 1, NULL),
(199, 'Bánh Thưởng Cho Chó Xương Orgo Bổ Sung Canxi & Sạch Răng', 17, 12, '14', 97, 3, 50000, 100000, 5, '<ul>\r\n	<li>Thương hiệu: Orgo</li>\r\n	<li>Ph&ugrave; hợp cho: Ch&oacute; mọi lứa tuổi</li>\r\n	<li>Gặm l&agrave; h&agrave;nh vi tự nhi&ecirc;n của ch&oacute; để kh&aacute;m ph&aacute;, chơi đ&ugrave;a. B&aacute;nh xương gặm cho ch&oacute; Orgo gi&uacute;p l&agrave;m sạch răng v&agrave; bổ sung canxi th&ocirc;ng qua h&agrave;nh vi gặm của ch&oacute;, đồng thời gi&uacute;p ch&oacute; giảm căng thẳng, nh&agrave;m ch&aacute;n v&agrave; tr&aacute;nh việc cắn ph&aacute; đồ đạc trong nh&agrave;. Xương gặm&nbsp;mềm, c&oacute; m&ugrave;i thơm dễ chịu ph&ugrave; hợp với cả c&aacute;c giống ch&oacute; nhỏ. Quy tr&igrave;nh sản xuất hiện đại theo ti&ecirc;u chuẩn n&ecirc;n cực k&igrave; hấp dẫn c&aacute;c ch&uacute; ch&oacute; m&agrave; vẫn đảm bảo sức khỏe khi sử dụng.&nbsp;</li>\r\n</ul>\r\n', '1729345726_banh-thuong-orgo-cho-cho.webp', 1, NULL),
(200, 'Thức Ăn Cho Chó Trên 6 Tháng ANF 6Free Hữu Cơ', 17, 11, '14', 100, 0, 50000, 200000, 0, '<p>Loại sản phẩm: thức ăn cho m&egrave;o<br />\r\nDạng sản phẩm: thức ăn dạng hạt<br />\r\n&Aacute;p dụng: c&aacute;c ch&uacute; m&egrave;o trưởng th&agrave;nh từ 1 năm tuổi trở l&ecirc;n, mọi loại m&egrave;o<br />\r\nXuất xứ: H&agrave;n Quốc<br />\r\n&nbsp;</p>\r\n', '1729345874_ANF-6Free.jpg', 1, NULL),
(201, 'Hạt Ganador Adult Cho Chó Trưởng Thành Vị Gà Quay', 17, 10, '17', 100, 0, 500000, 1000000, 20, '<p>HỨC ĂN CHO CH&Oacute; Ganador adult Dạng hạt Vị g&agrave; nướng</p>\r\n\r\n<p><br />\r\nD&agrave;nh cho tất cả c&aacute;c giống Ch&oacute; trưởng th&agrave;nh từ 12 th&aacute;ng tuổi trở l&ecirc;n<br />\r\n<br />\r\nGanador l&agrave; nh&atilde;n hiệu thức ăn cho ch&oacute; cưng được sản xuất bởi Tập đo&agrave;n Neovia với gần 60 năm kinh nghiệm trong lĩnh vực dinh dưỡng v&agrave; chăm s&oacute;c th&uacute; cưng.</p>\r\n\r\n<p><br />\r\nC&ocirc;ng thức sản phẩm l&agrave; t&acirc;m huyết nghi&ecirc;n cứu của c&aacute;c chuy&ecirc;n gia dinh dưỡng vật nu&ocirc;i h&agrave;ng đầu tại Ph&aacute;p với mong muốn cung cấp cho ch&oacute; cưng h&agrave;m lượng dinh dưỡng c&acirc;n bằng v&agrave; đầy đủ nhất, gi&uacute;p ch&uacute;ng c&oacute; một cuộc sống thật khỏe mạnh v&agrave; năng động.<br />\r\nMỗi sản phẩm của ch&uacute;ng t&ocirc;i được sản xuất từ những nguy&ecirc;n liệu chất lượng cao như thịt thật v&agrave; gạo/cơm, tu&acirc;n thủ nghi&ecirc;m ngặt hệ thống ti&ecirc;u chuẩn quốc tế của Ng&agrave;nh sản xuất thức ăn Chăn nu&ocirc;i Hoa Kỳ (AAFCO).</p>\r\n', '1729345956_ganadorchickern.webp', 1, NULL),
(204, 'Hạt Ganador Adult Cho Chó Trưởng Thành Vị Cừu & Gạo', 17, 11, '14', 100, 0, 50000, 100000, 5, '<p>Thức ăn cho ch&oacute; trưởng th&agrave;nh vị thịt cừu v&agrave; gạo Ganador Adult Lamb and Rice<br />\r\nGANADOR ADULT LAMB and RICE</p>\r\n\r\n<p><br />\r\n(D&agrave;nh cho ch&oacute; trưởng th&agrave;nh từ 12 th&aacute;ng trở l&ecirc;n)</p>\r\n\r\n<p><br />\r\nM&ocirc; tả sản phẩm:<br />\r\n+ Thức ăn Hỗn Hợp Ganador Thịt Cừu v&agrave; gạo c&oacute; c&ocirc;ng thức được pha chế v&agrave; thiết kế từ Ph&aacute;p đảm bảo gi&aacute; trị dinh dưỡng cao nhằm duy tr&igrave; hợp l&iacute; giai đoạn trưởng th&agrave;nh d&agrave;i nhất của Ch&oacute; cưng cho nhiều giống lo&agrave;i v&agrave; k&iacute;ch cỡ.<br />\r\n+ Thức ăn Hỗn Hợp Ganador Thịt Cừu v&agrave; gạo được chế biến đặc biệt cho th&uacute; cưng của bạn nhằm đảm bảo một chế độ dinh dưỡng to&agrave;n diện v&agrave; c&acirc;n bằng.</p>\r\n', '1729346121_ganadorlamb.webp', 1, NULL),
(205, 'Pate TƯƠI The Pet Cho Chó Mèo Biếng Ăn (1kg) - Ship Now/Grab 2H', 14, 12, '13', 99, 1, 50000, 100000, 0, '<p>Pate Tươi Cho M&egrave;o Hỗn Hợp cho Ch&oacute; M&egrave;o Biếng Ăn được l&agrave;m từ hỗn hợp c&aacute; biển v&agrave; gan g&agrave; tươi nguy&ecirc;n chất th&iacute;ch hợp d&ugrave;ng cho Ch&oacute; M&egrave;o.<br />\r\n<br />\r\nCHẤP HẾT TẤT CẢ M&Egrave;O BIẾNG ĂN, KH&Oacute; ĂN, K&Eacute;N MỌI LOẠI THỨC ĂN.<br />\r\n💯 100% nguy&ecirc;n liệu tự nhi&ecirc;n, kh&ocirc;ng độn rau củ, chứa độ ẩm &amp; đạm tự nhi&ecirc;n cao từ 60-84%.<br />\r\n💯 Năng lượng cao hơn vượt trội so với c&aacute;c d&ograve;ng sản phẩm kh&aacute;c tr&ecirc;n thị trường (trung b&igrave;nh ở mức 400kcal/kg).<br />\r\n💯 C&ocirc;ng thức si&ecirc;u cấp nước, gi&uacute;p ngăn ngừa sỏi thận.<br />\r\n💯 Với gi&aacute; chỉ từ 8k/bữa ăn l&agrave; Boss đ&atilde; c&oacute; được bữa ăn thơm ngon, tốt cho sức khỏe.<br />\r\n💯 Chỉ cần bảo quản sản phẩm trong ngăn m&aacute;t, kh&ocirc;ng cần chế biến hay h&acirc;m n&oacute;ng.</p>\r\n', '1729346445_123.jpg', 1, NULL),
(206, 'Pate Mèo Dạng Thạch Nekko Jelly ', 14, 11, '13', 100, 0, 50000, 200000, 10, '<ul>\r\n	<li>Thương hiệu:&nbsp;<strong><a href=\"https://paddy.vn/collections/pate-meo-nekko\" target=\"_blank\">Nekko</a></strong></li>\r\n	<li>Ph&ugrave; hợp cho: M&egrave;o (từ 6 th&aacute;ng tuổi trở l&ecirc;n)</li>\r\n	<li>Nếu bạn đang t&igrave;m kiếm một loại&nbsp;<strong><a href=\"https://paddy.vn/collections/pate-meo\" target=\"_blank\">pate m&egrave;o</a></strong>&nbsp;chất lượng th&igrave; kh&ocirc;ng thể bỏ qua Pate Nekko Jelly.&nbsp;Pate Nekko được cung cấp bởi c&ocirc;ng ty Unicorn Public Co Nhật Bản, c&oacute; cơ sở sản xuất tại Th&aacute;i Lan. Với c&ocirc;ng nghệ ti&ecirc;n tiến v&agrave; c&ocirc;ng thức đặc biệt tạo ra&nbsp;hương vị ngon miệng tuyệt vời, Pate Nekko dễ d&agrave;ng chinh phục được khẩu vị c&aacute;c b&eacute; m&egrave;o. C&aacute;c sản phẩm đều trong một quy tr&igrave;nh kh&eacute;p k&iacute;n, bảo đảm vệ sinh an to&agrave;n thực phẩm, đảm bảo sức khỏe cho m&egrave;o cưng.</li>\r\n</ul>\r\n', '1729346487_pate-meo-nekko-jelly-70g.webp', 1, NULL),
(207, 'Pate Mèo Kings Pet Cá Ngừ By BA (Lon 70g)', 14, 15, '29,30,31', 100, 0, 30000, 35000, 5, '<ul>\r\n	<li>Thương hiệu:&nbsp;<strong><a href=\"https://paddy.vn/collections/snappy-tom\" target=\"_blank\">Snappy Tom</a></strong></li>\r\n	<li>Ph&ugrave; hợp cho: M&egrave;o từ 2 th&aacute;ng tuổi</li>\r\n	<li><strong><a href=\"https://paddy.vn/collections/pate-meo\" target=\"_blank\">Pate m&egrave;o</a></strong>&nbsp;Snappy Tom l&agrave; sản phẩm thức ăn hỗn hợp ho&agrave;n chỉnh d&agrave;nh cho m&egrave;o với Omega 3, bổ sung Vitamin v&agrave; kho&aacute;ng chất theo ti&ecirc;u chuẩn thức ăn của Hoa Kỳ AAFCO.&nbsp;Pate Snappy Tom C&aacute; Ngừ Mix Tr&aacute;i C&acirc;y l&agrave; sản phẩm được l&agrave;m từ c&aacute; ngừ tươi nguy&ecirc;n chất kết hợp với c&aacute;c loại tr&aacute;i c&acirc;y tươi ngon như xo&agrave;i, kiwi, t&aacute;o, kỷ tử,... mang đến hương vị thơm ngon, hấp dẫn cho m&egrave;o cưng.</li>\r\n</ul>\r\n', '1733386309_pate-meo-kings-pet-ca-ngu-bao-anh-70g.webp', 1, ''),
(208, 'Pate Mèo Wanpy Súp Thịt Tươi', 14, 11, '13', 99, 1, 50000, 100000, 20, '<p>Pate Wanpy được sản xuất tại Trung Quốc với nguy&ecirc;n liệu được tuyển chọn chặt chẽ đ&atilde; được xuất khẩu sang nhiều quốc gia kh&aacute;c nhau.<br />\r\n<br />\r\n- Cung cấp nguồn protein chất lượng cao.<br />\r\n- M&ugrave;i vị hấp dẫn, nguy&ecirc;n liệu tươi ngon thực phẩm an to&agrave;n c&ugrave;ng t&iacute;nh sử dụng tiện lợi.<br />\r\n- Pate tươi wanpy hỗ trợ hiệu quả vấn đề ti&ecirc;u h&oacute;a cũng như hỗ trợ hệ thống miễn dịch.<br />\r\n- Chế biến theo dạng thức ăn ướt tươi mềm để M&egrave;o c&oacute; thể hấp thụ nhanh hơn chất dinh dưỡng.<br />\r\n- Đặc biệt hơn, với c&ocirc;ng thức gi&agrave;u độ ẩm cung cấp th&ecirc;m lượng nước dồi d&agrave;o sẽ gi&uacute;p hạn chế tối đa c&aacute;c bệnh về sỏi thận, tiết niệu&hellip; thường gặp ở m&egrave;o.</p>\r\n', '1729346599_pate-meo-wanpy.webp', 1, NULL),
(209, 'Pate Mèo Dạng Sốt Nekko Gravy', 14, 16, '14', 100, 0, 50000, 300000, 5, '<ul>\r\n	<li>Thương hiệu: Nekko</li>\r\n	<li>Ph&ugrave; hợp cho: M&egrave;o mọi lứa tuổi</li>\r\n	<li>Một trong những lựa chọn phổ biến nhất khi nghĩ đến&nbsp;đồ ăn m&egrave;o&nbsp;l&agrave;&nbsp;Pate. Nếu bạn đang t&igrave;m kiếm một loại&nbsp;pate m&egrave;o&nbsp;chất lượng th&igrave; kh&ocirc;ng thể bỏ qua Pate Nekko Gravy.&nbsp;Pate Nekko được cung cấp bởi c&ocirc;ng ty Unicorn Public Co Nhật Bản, c&oacute; cơ sở sản xuất tại Th&aacute;i Lan. Với c&ocirc;ng nghệ ti&ecirc;n tiến v&agrave; c&ocirc;ng thức đặc biệt tạo ra&nbsp;hương vị ngon miệng tuyệt vời, Pate Nekko dễ d&agrave;ng chinh phục được khẩu vị c&aacute;c b&eacute; m&egrave;o. C&aacute;c sản phẩm đều trong một quy tr&igrave;nh kh&eacute;p k&iacute;n, bảo đảm vệ sinh an to&agrave;n thực phẩm, đảm bảo sức khỏe cho m&egrave;o cưng.</li>\r\n</ul>\r\n', '1729346634_nekko_gravy.jpg', 1, ''),
(210, 'Pate Cho Chó Mèo Mọi Lứa Tuổi Thịt Tươi Kings Pet(Lon 380g)', 14, 15, '25,26,27,28', 100, 0, 40000, 45000, 30, '<p>Pate Lon King&#39;s Pet Cho Ch&oacute; M&egrave;o 380gr</p>\r\n\r\n<p>1. Pate Hỗn hợp g&agrave; King&rsquo;s Pet lon 380g &ndash; thức ăn cho ch&oacute; m&egrave;o từ 01 th&aacute;ng tuổi.&nbsp;Được l&agrave;m từ thịt g&agrave; đ&atilde; được kiểm dịch chặt chẽ, kết hợp c&ugrave;ng gan g&agrave; tươi mọng được thanh tr&ugrave;ng ở nhiệt độ cao nhằm giữ nguy&ecirc;n hương vị thơm ngon v&agrave; h&agrave;m lượng dinh dưỡng.</p>\r\n\r\n<p>2. Pate Hỗn hợp c&aacute; King&rsquo;s Pet lon 380g &ndash; thức ăn cho m&egrave;o từ 01 th&aacute;ng tuổi.&nbsp;Được l&agrave;m từ c&aacute; nục tươi đ&aacute;nh bắt ở v&ugrave;ng biển miền Nam Việt Nam c&ugrave;ng với gan g&agrave; tươi nguy&ecirc;n chất được thanh tr&ugrave;ng ở nhiệt độ cao nhằm giữ trọn hương vị thơm ngon v&agrave; c&aacute;c chất dinh dưỡng.</p>\r\n\r\n<p>3. Pate C&aacute; hồi King&rsquo;s Pet lon 380g &ndash; thức ăn cho m&egrave;o từ 01 th&aacute;ng tuổi Được l&agrave;m từ c&aacute; hồi tươi nguy&ecirc;n chất được thanh tr&ugrave;ng ở nhiệt độ cao nhằm giữ trọn hương vị thơm ngon v&agrave; c&aacute;c chất dinh dưỡng.</p>\r\n\r\n<p>4. Gi&ograve; Heo Hầm Nước D&ugrave;ng King&rsquo;s Pet Lon 380g - thức ăn cho ch&oacute; từ 01 th&aacute;ng tuổi. Sử dụng nguồn thịt gi&ograve; heo tươi ngon xuất xứ ho&agrave;n to&agrave;n Việt Nam, kh&ocirc;ng sử dụng chất độn, chất tạo d&agrave;y. Kết cấu ho&agrave;n to&agrave;n từ nguy&ecirc;n liệu thật. ƯU ĐIỂM CỦA PATE KING&#39;S PET</p>\r\n', '1729346673_pate-cho-meo-lon-kings-pet-380g_4.jpg', 1, '1733385126_pate-cho-meo-lon-kings-pet-380g_5.webp,1733385126_pate-cho-meo-lon-kings-pet-380g_6.webp'),
(211, 'Pate AATAS Cho Mèo Mọi Lứa Tuổi', 14, 14, '20,21,22,23,24', 99, 1, 18000, 25000, 2, '<ul>\r\n	<li>Thương hiệu: Aatas</li>\r\n	<li>Ph&ugrave; hợp cho: M&egrave;o mọi lứa tuổi</li>\r\n	<li>Một trong những lựa chọn phổ biến nhất khi nghĩ đến&nbsp;đồ ăn m&egrave;o&nbsp;l&agrave;&nbsp;Pate. Nếu bạn đang t&igrave;m kiếm một loại&nbsp;pate m&egrave;o&nbsp;chất lượng th&igrave; kh&ocirc;ng thể bỏ qua Pate Aatas. Với hương vị thơm ngon từ những loại thịt như g&agrave;, c&aacute;, t&ocirc;m... đ&acirc;y l&agrave; d&ograve;ng pate rất được m&egrave;o được ưa chuộng.&nbsp;Pate m&egrave;o Aatas&nbsp;an to&agrave;n v&agrave; đạt chất lượng cao v&igrave; sản xu&acirc;́t từ nguy&ecirc;n liệu tự nhi&ecirc;n theo quy trình v&ocirc; cùng khắt khe và nghi&ecirc;m ngặt. Với c&aacute;c th&agrave;nh phần ch&iacute;nh thơm ngon, Pate Aatas gi&uacute;p k&iacute;ch th&iacute;ch khả năng ăn uống của m&egrave;o, hạn chế c&aacute;c t&aacute;c động ti&ecirc;u cực đến sức khỏe của ch&uacute;ng.</li>\r\n</ul>\r\n\r\n<p><strong>Lợi &iacute;ch:</strong></p>\r\n\r\n<ul>\r\n	<li>K&iacute;ch th&iacute;ch vị gi&aacute;c, gi&uacute;p m&egrave;o th&egrave;m ăn v&agrave; ăn ngon miệng hơn, nhanh ch&oacute;ng tăng c&acirc;n.</li>\r\n	<li>C&oacute; tới 12 hương vị kh&aacute;c nhau, gi&uacute;p m&egrave;o đổi khẩu vị ăn h&agrave;ng ng&agrave;y.</li>\r\n	<li>Dễ ti&ecirc;u h&oacute;a, gi&uacute;p cơ thể m&egrave;o lu&ocirc;n trong t&igrave;nh trạng khỏe mạnh.</li>\r\n</ul>\r\n', '1729346709_Pate-cho-meo-aatas.jpg', 1, ''),
(212, 'Pate Mèo Meowow Súp Cá Ngừ Trắng Nguyên Miếng(Lon 80g)', 14, 13, '18,19', 74, 26, 25000, 30000, 5, '<p><strong>Pate MeoWow C&aacute; Ngừ Trắng Cho M&egrave;o Mọi Lứa Tuổi (Lon 80g)</strong></p>\r\n\r\n<p>C&aacute; ngừ thịt trắng đ&oacute;ng hộp Tuna White Meat l&agrave; m&oacute;n ăn nhẹ gi&agrave;u dinh dưỡng, hỗ trợ cho sự ph&aacute;t triển to&agrave;n diện của m&egrave;o, đồng thời được mix vị với nhiều loại thịt kh&aacute;c để tăng h&agrave;m lượng dinh dưỡng cũng như hương vị thơm ngon.</p>\r\n\r\n<p>- Sử dụng thịt c&aacute; ngừ trắng tươi, miếng c&aacute; mềm, k&iacute;ch thước nhỏ vừa ăn. C&aacute;c th&agrave;nh phần mix c&ugrave;ng như t&ocirc;m tươi nguy&ecirc;n con, c&aacute; cơm sữa Nhật Bản, thịt cua, c&aacute; hồi nguy&ecirc;n thớ v&agrave; g&agrave; x&eacute; sasami.</p>\r\n\r\n<p>- D&agrave;nh cho mọi lứa tuổi, kể cả m&egrave;o con, m&egrave;o lớn tuổi v&agrave; m&egrave;o c&oacute; hệ ti&ecirc;u h&oacute;a nhạy cảm.</p>\r\n\r\n<p>- Gi&agrave;u DHA, omega-3, gi&uacute;p m&egrave;o s&aacute;ng mắt, mượt l&ocirc;ng.</p>\r\n\r\n<p>- Bổ sung taurin, tốt cho tim mạch v&agrave; tr&iacute; n&atilde;o.</p>\r\n\r\n<p>- Cấp nước cho chế độ ăn hằng ng&agrave;y, đặc biệt ph&ugrave; hợp với những ch&uacute; m&egrave;o &iacute;t uống nước.</p>\r\n\r\n<p>- Hộp nh&ocirc;m h&uacute;t ch&acirc;n kh&ocirc;ng hiện đại, giữ sản phẩm tươi ngon.</p>\r\n\r\n<p>Trong c&aacute; ngừ, thịt trắng l&agrave; phần tinh t&uacute;y, gi&agrave;u dinh dưỡng v&agrave; c&oacute; nhiều lợi &iacute;ch đặc biệt đối với sức khỏe v&agrave; l&agrave;m đẹp. Thịt trắng c&oacute; nhiều lợi &iacute;ch: gi&agrave;u chất b&eacute;o b&atilde;o h&ograve;a kh&ocirc;ng no - chất b&eacute;o c&oacute; lợi cho sức khỏe, dễ ti&ecirc;u h&oacute;a v&agrave; hấp thu, gi&uacute;p cơ thể đ&agrave;o thải lượng cholesterol xấu, tốt cho tim mạch.</p>\r\n\r\n<p>C&aacute; ngừ trắng đ&oacute;ng hộp Tuna White Meat bổ sung những vitamin v&agrave; kho&aacute;ng chất thiết yếu m&agrave; bữa ăn hằng ng&agrave;y c&oacute; thể bị thiếu hụt. Sản phẩm hỗ trợ chăm s&oacute;c l&ocirc;ng b&oacute;ng mượt, gi&uacute;p s&aacute;ng mắt, giảm đổ gh&egrave;n, tăng cường tr&iacute; n&atilde;o.</p>\r\n\r\n<p>C&aacute; ngừ cũng gi&uacute;p tăng cường chức năng gan, ngừa thiếu m&aacute;u, ngăn ngừa l&atilde;o h&oacute;a v&agrave; hỗ trợ chuyển h&oacute;a dinh dưỡng.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n', '1729346749_pate-meowow-ca-ngu-trang-cho-meo-moi-lua-tuoi-lon-80g-paddy-11.webp', 1, '1733384500_pate-meo-meowow-ca-ngu-trang-lon-80g_1.webp,1733384500_pate-meowow-ca-ngu-trang-cho-meo-moi-lua-tuoi-lon-80g-paddy-11.webp,1733384500_pate-meowow-ca-ngu-trang-cho-meo-moi-lua-tuoi-lon-80g-paddy-12.webp'),
(219, 'Súp Thưởng Mèo Nekko Gold Creamy 14g', 14, 16, '29,30,31', 10, 0, 25000, 45000, 0, '<p>S&uacute;p thưởng cho m&egrave;o Nekko Gold Creamy (T&uacute;i 4 tu&yacute;p)</p>\r\n\r\n<p>- Thanh s&uacute;p thưởng thơm ngon đến từ nh&atilde;n hiệu Nekko nổi tiếng của Th&aacute;i Lan</p>\r\n\r\n<p>- S&uacute;p thưởng Nekko Gold Creamy c&oacute; 5 vị thơm ngon như sau:</p>\r\n\r\n<ul>\r\n	<li>C&aacute; ngừ &amp; C&aacute; hồi</li>\r\n	<li>C&aacute; ngừ &amp; G&agrave;</li>\r\n	<li>C&aacute; ngừ</li>\r\n	<li>C&aacute; Ngừ c&aacute; b&agrave;o</li>\r\n	<li>C&aacute; Ngừ &amp; Hải Sản</li>\r\n</ul>\r\n\r\n<p>- Ph&ugrave; hợp cho m&egrave;o mọi độ tuổi&nbsp;</p>\r\n', '1733385989_sup-thuong-meo-nekko-gold-creamy-treat-14g_1.webp', 1, ''),
(220, 'Cát Vệ Sinh Cho Mèo - Cát Đậu Nành ACROPET ', 23, 0, '32,33', 0, 0, 88000, 100000, 0, '<p><strong>C&aacute;t Vệ Sinh Cho M&egrave;o - C&aacute;t Đậu N&agrave;nh ACROPET&nbsp;</strong></p>\r\n\r\n<p>Xuất xứ: H&agrave;n Quốc</p>\r\n\r\n<p>Được l&agrave;m từ 100% đậu n&agrave;nh tự nhi&ecirc;n, an to&agrave;n đến mức m&egrave;o c&oacute; thể ăn được.&nbsp;</p>\r\n\r\n<p>Kh&ocirc;ng giống như c&aacute;t vệ sinh th&ocirc;ng thường kh&aacute;c, c&aacute;t đậu phụ Acropet c&oacute; rất &iacute;t bụi, gi&uacute;p ngăn ngừa c&aacute;c bệnh về đường h&ocirc; hấp cho m&egrave;o v&agrave; cả người nu&ocirc;i.&nbsp;</p>\r\n\r\n<p>Nếu gia đ&igrave;nh bạn c&oacute; em b&eacute; th&igrave; C&aacute;t đậu phụ Acro pet cực kỳ th&acirc;n thiện.&nbsp;</p>\r\n\r\n<p><em><strong>Ưu điểm vượt trội:</strong></em></p>\r\n\r\n<p>- Dễ d&agrave;ng ph&acirc;n hủy&nbsp;</p>\r\n\r\n<p>- Nguy&ecirc;n liệu tự nhi&ecirc;n an to&agrave;n&nbsp;</p>\r\n\r\n<p>- Kh&ocirc;ng bụi 99%&nbsp;</p>\r\n\r\n<p>- Khử m&ugrave;i cực mạnh&nbsp;</p>\r\n\r\n<p><em><strong>C&ocirc;ng dụng sản phẩm:</strong></em></p>\r\n\r\n<p>-&nbsp;Sản phẩm th&acirc;n thiện với m&ocirc;i trường, được l&agrave;m từ đậu n&agrave;nh thi&ecirc;n nhi&ecirc;n.&nbsp;</p>\r\n\r\n<p>-&nbsp;Dễ d&agrave;ng h&ograve;a tan v&agrave; nhanh ch&oacute;ng ph&acirc;n hủy trong nước.&nbsp;</p>\r\n\r\n<p>-&nbsp;Hấp thụ nước v&agrave; kiểm so&aacute;t m&ugrave;i vượt trội&nbsp;</p>\r\n\r\n<p>&nbsp; + Với c&ocirc;ng thức v&oacute;n cục ngay lập tức, c&aacute;c hạt c&aacute;t hấp thụ hơn 4 lần trọng lượng của ch&uacute;ng ngay khi tiếp x&uacute;c với chất lỏng, c&aacute;c hạt c&aacute;t sẽ tự trung h&ograve;a m&ugrave;i amoniac trong nước tiểu của m&egrave;o.&nbsp;</p>\r\n\r\n<p>-&nbsp;Kh&ocirc;ng bụi 99% gi&uacute;p bảo vệ đường h&ocirc; hấp cho m&egrave;o v&agrave; Sen hiệu quả.&nbsp;</p>\r\n\r\n<p><strong><em>Hướng dẫn sử dụng:&nbsp;</em></strong></p>\r\n\r\n<p><em>Bước 1:</em>&nbsp;Đổ c&aacute;t v&agrave; trải đều trong bồn cầu m&egrave;o, độ d&agrave;y 5-6cm.&nbsp;</p>\r\n\r\n<p><em>Bước 2:</em>&nbsp;Sau khi m&egrave;o đi tiểu, nước được hấp thụ v&agrave; trở n&ecirc;n đ&ocirc;ng cứng, v&oacute;n cục.&nbsp;</p>\r\n\r\n<p><em>Bước 3:&nbsp;</em>Vứt bỏ C&aacute;t đậu phụ đ&ocirc;ng cứng bằng xẻng c&aacute;t (C&oacute; thể đổ trực tiếp xuống bồn cầu)&nbsp;</p>\r\n\r\n<p><em><strong>CH&Iacute;NH S&Aacute;CH ĐỔI TRẢ/ HO&Agrave;N TIỀN:</strong></em></p>\r\n\r\n<p><strong>LƯU &Yacute;:</strong>&nbsp;Shop chỉ giải quyết khiếu nại khi kh&aacute;ch c&oacute; video/ h&igrave;nh ảnh khui h&agrave;ng.</p>\r\n\r\n<p><em>Sản phẩm chỉ được đổi trả/ ho&agrave;n tiền khi:</em></p>\r\n\r\n<p>- Shop giao thiếu h&agrave;ng.</p>\r\n\r\n<p>- Sản phẩm lỗi, hư hỏng do nsx/vận chuyển.</p>\r\n\r\n<p>- H&agrave;ng c&ograve;n nguy&ecirc;n vẹn, c&ograve;n nguy&ecirc;n ni&ecirc;m phong chưa qua sử dụng.</p>\r\n\r\n<p><em>Thời hạn đổi trả/ ho&agrave;n tiền:</em></p>\r\n\r\n<p>- Thời gian đổi trả chỉ hỗ trợ trong v&ograve;ng 7 ng&agrave;y kể từ khi nhận h&agrave;ng.</p>\r\n\r\n<p>- Nếu vượt qu&aacute; thời gian tr&ecirc;n shop sẽ kh&ocirc;ng nhận đổi/trả sản phẩm với bất k&igrave; l&yacute; do n&agrave;o.</p>\r\n', '1733393918_136-464f5f0b-bd03-4f4d-8f83-00977fae6077 (1).webp', 1, '1733393918_136-464f5f0b-bd03-4f4d-8f83-00977fae6077.webp,1733393918_137-2cc7ccec-5022-4c58-b24d-a26b247a42a3.webp,1733393918_138.webp,1733393918_140.jpg'),
(221, 'Cát Vệ Sinh Cho Mèo - Cát Đậu Nành MIAO NATURAL TOFU', 23, 0, '33,34', 0, 0, 125000, 130000, 0, '<p><strong>C&aacute;t Vệ Sinh Cho M&egrave;o - C&aacute;t Đậu N&agrave;nh MIAO NATURAL TOFU&nbsp;</strong></p>\r\n\r\n<p>C&aacute;t đậu MIAO chẳng thua k&eacute;m g&igrave; Cature đ&acirc;u nha cả nh&agrave; ơi. V&oacute;n tốt, khử m&ugrave;i lại c&agrave;ng tốt. Đặc biệt l&agrave; c&oacute; nhiều m&ugrave;i để lựa</p>\r\n\r\n<p>&bull; C&aacute;t kh&ocirc;ng c&oacute; bụi<br />\r\n&bull; V&oacute;n cục nhanh, thấm h&uacute;t tốt<br />\r\n&bull; Xả được trong toilet<br />\r\n&bull; Khử m&ugrave;i rất tốt</p>\r\n\r\n<p>V&igrave; c&aacute;t kh&ocirc;ng c&oacute; bụi n&ecirc;n rất an to&agrave;n cho m&egrave;o con v&agrave; c&aacute;c b&eacute; bị chảy nước mắt m&atilde;n t&iacute;nh</p>\r\n\r\n<p>&bull; Chất lượng cao, rổ r&aacute; hợp l&yacute;. Ngại g&igrave; kh&ocirc;ng thử<br />\r\n&bull; C&oacute; 6 m&ugrave;i: TR&Agrave; XANH, THAN TRE, ĐẬU N&Agrave;NH, ĐẬU SỮA, Đ&Agrave;O, C&Agrave; PH&Ecirc;</p>\r\n\r\n<p><em><strong>ƯU ĐIỂM:</strong></em><br />\r\nSản phẩm th&acirc;n thiện với m&ocirc;i trường, được l&agrave;m từ c&aacute;c nguy&ecirc;n liệu thực vật từ tự nhi&ecirc;n (tofu)</p>\r\n\r\n<p>Theo c&aacute;c b&aacute;c sĩ th&uacute; y, rất nhiều ch&uacute; m&egrave;o c&oacute; th&oacute;i quen ăn thử c&aacute;t. Điều n&agrave;y c&oacute; thể g&acirc;y đầy bụng hoặc nặng hơn l&agrave; tắc ruột ở m&egrave;o. Kh&ocirc;ng g&acirc;y nguy hiểm cho m&egrave;o khi nuốt phải. Đặc biệt, bạn ho&agrave;n to&agrave;n c&oacute; thể đổ c&aacute;t b&atilde; đậu n&agrave;nh v&agrave;o toilet m&agrave; kh&ocirc;ng lo bị tắc.</p>\r\n\r\n<p>H&ograve;a tan 100% trong nước, c&oacute; thể xả bồn cầu hoặc sử dụng l&agrave;m ph&acirc;n b&oacute;n cho c&acirc;y.&nbsp;<br />\r\nNhanh ch&oacute;ng ph&acirc;n hủy ở điều kiện b&igrave;nh thường</p>\r\n\r\n<p>Khi sen bận c&ocirc;ng t&aacute;c th&igrave; c&oacute; thể dọn chất thải sau 2-3 ng&agrave;y m&agrave; &iacute;t bị bốc m&ugrave;i<br />\r\n&Iacute;t bụi, đặc biệt gi&uacute;p bảo vệ sức khỏe đường h&ocirc; hấp cho m&egrave;o, Sen bị dị ứng v&agrave; nhạy cảm với bụi</p>\r\n\r\n<p><strong><em>Hướng dẫn sử dụng:</em></strong><br />\r\n<em>Bước 1:&nbsp;</em>Đổ c&aacute;t v&agrave; trải đều trong nh&agrave; vệ sinh của m&egrave;o, độ d&agrave;y 4-5cm.&nbsp;<br />\r\n<em>Bước 2:</em>&nbsp;Sau khi m&egrave;o đi vệ sinh, nước được hấp thụ v&agrave; trở n&ecirc;n đ&ocirc;ng cứng, v&oacute;n cục.&nbsp;<br />\r\n<em>Bước 3:</em>&nbsp;Dọn chất thải của m&egrave;o bằng xẻng chuy&ecirc;n dụng (C&oacute; thể đổ trực tiếp xuống bồn cầu)&nbsp;<br />\r\n<em>Bước 4:</em>&nbsp;Bổ sung th&ecirc;m c&aacute;t vệ sinh</p>\r\n\r\n<p><strong>Lưu &yacute;:&nbsp;</strong>Thường xuy&ecirc;n dọn dẹp vệ sinh nơi vệ sinh của m&egrave;o để tiếp kiệm v&agrave; giảm thiểu mầm bệnh.&nbsp;<br />\r\nKhuy&ecirc;n kh&iacute;ch phơi nắng c&aacute;t để tiết kiệm cũng như khử tr&ugrave;ng c&aacute;t.&nbsp;</p>\r\n\r\n<p><em><strong>CH&Iacute;NH S&Aacute;CH ĐỔI TRẢ/ HO&Agrave;N TIỀN:</strong></em></p>\r\n\r\n<p><strong>LƯU &Yacute;:</strong>&nbsp;Shop chỉ giải quyết khiếu nại khi kh&aacute;ch c&oacute; video/ h&igrave;nh ảnh khui h&agrave;ng.</p>\r\n\r\n<p><em>Sản phẩm chỉ được đổi trả/ ho&agrave;n tiền khi:</em></p>\r\n\r\n<p>- Shop giao thiếu h&agrave;ng.</p>\r\n\r\n<p>- Sản phẩm lỗi, hư hỏng do nsx/vận chuyển.</p>\r\n\r\n<p>- H&agrave;ng c&ograve;n nguy&ecirc;n vẹn, c&ograve;n nguy&ecirc;n ni&ecirc;m phong chưa qua sử dụng.</p>\r\n\r\n<p><em>Thời hạn đổi trả/ ho&agrave;n tiền:</em></p>\r\n\r\n<p>- Thời gian đổi trả chỉ hỗ trợ trong v&ograve;ng 7 ng&agrave;y kể từ khi nhận h&agrave;ng.</p>\r\n\r\n<p>- Nếu vượt qu&aacute; thời gian tr&ecirc;n shop sẽ kh&ocirc;ng nhận đổi/trả sản phẩm với bất k&igrave; l&yacute; do n&agrave;o.</p>\r\n', '1733394205_073d94aa-9d97-4eb1-9c77-63c65cfb5c2c - Copy.webp', 1, '');

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
(1, '500000000', 'NCB', 'VNP14020653', 'ATM', 'Thanh toán đơn hàng Guha Perfume', '20230524170955', 'MCG9RE1Q', '14020653', 4573, 0),
(2, '500000000', 'NCB', 'VNP14020653', 'ATM', 'Thanh toán đơn hàng Guha Perfume', '20230524170955', 'MCG9RE1Q', '14020653', 4573, 0),
(3, '810000000', 'NCB', 'VNP14020679', 'ATM', 'Thanh toán đơn hàng Guha Perfume', '20230524172011', 'MCG9RE1Q', '14020679', 905, 0),
(10, '630000000', 'NCB', 'VNP14023814', 'ATM', 'Thanh toán đơn hàng Guha Perfume', '20230528122353', 'MCG9RE1Q', '14023814', 0, 0),
(11, '630000000', 'NCB', 'VNP14023814', 'ATM', 'Thanh toán đơn hàng Guha Perfume', '20230528122353', 'MCG9RE1Q', '14023814', 0, 0),
(12, '630000000', 'NCB', 'VNP14023814', 'ATM', 'Thanh toán đơn hàng Guha Perfume', '20230528122353', 'MCG9RE1Q', '14023814', 0, 0),
(13, '630000000', 'NCB', 'VNP14023814', 'ATM', 'Thanh toán đơn hàng Guha Perfume', '20230528122353', 'MCG9RE1Q', '14023814', 0, 0),
(14, '350000000', 'NCB', 'VNP14023815', 'ATM', 'Thanh toán đơn hàng Guha Perfume', '20230528123948', 'MCG9RE1Q', '14023815', 992, 0),
(15, '1440000000', 'NCB', 'VNP14023816', 'ATM', 'Thanh toán đơn hàng Guha Perfume', '20230528125013', 'MCG9RE1Q', '14023816', 7556, 0),
(16, '360000000', 'NCB', 'VNP14023817', 'ATM', 'Thanh toán đơn hàng Guha Perfume', '20230528125540', 'MCG9RE1Q', '14023817', 3618, 0),
(17, '270000000', 'NCB', 'VNP14023819', 'ATM', 'Thanh toán đơn hàng Guha Perfume', '20230528125748', 'MCG9RE1Q', '14023819', 3323, 0),
(18, '1800000000', 'NCB', 'VNP14023820', 'ATM', 'Thanh toán đơn hàng Guha Perfume', '20230528130003', 'MCG9RE1Q', '14023820', 1154, 0),
(19, '360000000', 'NCB', 'VNP14023929', 'ATM', 'Thanh toán đơn hàng Guha Perfume', '20230528155852', 'MCG9RE1Q', '14023929', 0, 0),
(20, '368000000', 'VNPAY', '', 'QRCODE', 'Thanh toán đơn hàng Guha Perfume', '20230529113726', 'MCG9RE1Q', '0', 9667, 0),
(21, '368000000', 'NCB', 'VNP14029730', 'ATM', 'Thanh toán đơn hàng Guha Perfume', '20230603160224', 'MCG9RE1Q', '14029730', 6476, 0),
(22, '350000000', 'VNPAY', '', 'QRCODE', 'Thanh toán đơn hàng Guha Perfume', '20230603204956', 'MCG9RE1Q', '0', 0, 0),
(23, '368000000', 'NCB', 'VNP14029794', 'ATM', 'Thanh toán đơn hàng Guha Perfume', '20230603205748', 'MCG9RE1Q', '14029794', 3000, 0),
(24, '368000000', 'NCB', 'VNP14029816', 'ATM', 'Thanh toán đơn hàng Guha Perfume', '20230603221222', 'MCG9RE1Q', '14029816', 4941, 0),
(25, '368000000', 'NCB', 'VNP14029816', 'ATM', 'Thanh toán đơn hàng Guha Perfume', '20230603221222', 'MCG9RE1Q', '14029816', 4941, 0),
(26, '368000000', 'NCB', 'VNP14029816', 'ATM', 'Thanh toán đơn hàng Guha Perfume', '20230603221222', 'MCG9RE1Q', '14029816', 4941, 0),
(27, '368000000', 'NCB', 'VNP14029816', 'ATM', 'Thanh toán đơn hàng Guha Perfume', '20230603221222', 'MCG9RE1Q', '14029816', 4941, 0),
(28, '368000000', 'NCB', 'VNP14029816', 'ATM', 'Thanh toán đơn hàng Guha Perfume', '20230603221222', 'MCG9RE1Q', '14029816', 4941, 0),
(29, '368000000', 'NCB', 'VNP14029816', 'ATM', 'Thanh toán đơn hàng Guha Perfume', '20230603221222', 'MCG9RE1Q', '14029816', 4941, 0),
(30, '368000000', 'NCB', 'VNP14029816', 'ATM', 'Thanh toán đơn hàng Guha Perfume', '20230603221222', 'MCG9RE1Q', '14029816', 4941, 0),
(31, '368000000', 'NCB', 'VNP14029816', 'ATM', 'Thanh toán đơn hàng Guha Perfume', '20230603221222', 'MCG9RE1Q', '14029816', 4941, 0),
(32, '368000000', 'NCB', 'VNP14029816', 'ATM', 'Thanh toán đơn hàng Guha Perfume', '20230603221222', 'MCG9RE1Q', '14029816', 4941, 0),
(33, '368000000', 'NCB', 'VNP14029816', 'ATM', 'Thanh toán đơn hàng Guha Perfume', '20230603221222', 'MCG9RE1Q', '14029816', 4941, 0),
(34, '368000000', 'NCB', 'VNP14029819', 'ATM', 'Thanh toán đơn hàng Guha Perfume', '20230603222317', 'MCG9RE1Q', '14029819', 9050, 0),
(35, '368000000', 'NCB', 'VNP14029819', 'ATM', 'Thanh toán đơn hàng Guha Perfume', '20230603222317', 'MCG9RE1Q', '14029819', 9050, 0),
(36, '368000000', 'NCB', 'VNP14029821', 'ATM', 'Thanh toán đơn hàng Guha Perfume', '20230603222548', 'MCG9RE1Q', '14029821', 3320, 0),
(37, '368000000', 'NCB', 'VNP14029822', 'ATM', 'Thanh toán đơn hàng Guha Perfume', '20230603222706', 'MCG9RE1Q', '14029822', 4220, 0),
(38, '900000000', 'NCB', 'VNP14029833', 'ATM', 'Thanh toán đơn hàng Guha Perfume', '20230603225623', 'MCG9RE1Q', '14029833', 14, 0),
(39, '360000000', 'NCB', 'VNP14029949', 'ATM', 'Thanh toán đơn hàng Guha Perfume', '20230604095052', 'MCG9RE1Q', '14029949', 9439, 0),
(40, '315000000', 'NCB', 'VNP14032419', 'ATM', 'Thanh toán đơn hàng Guha Perfume', '20230606210601', 'MCG9RE1Q', '14032419', 2417, 0),
(41, '270000000', 'NCB', 'VNP14032946', 'ATM', 'Thanh toán đơn hàng Guha Perfume', '20230607135755', 'MCG9RE1Q', '14032946', 9787, 0),
(42, '733500000', 'NCB', 'VNP14032963', 'ATM', 'Thanh toán đơn hàng Guha Perfume', '20230607141409', 'MCG9RE1Q', '14032963', 9952, 0),
(43, '1260000000', 'NCB', 'VNP14035526', 'ATM', 'Thanh toán đơn hàng Guha Perfume', '20230611085006', 'MCG9RE1Q', '14035526', 4731, 0),
(44, '270000000', 'NCB', 'VNP14038464', 'ATM', 'Thanh toán đơn hàng Guha Perfume', '20230614105820', 'MCG9RE1Q', '14038464', 3704, 0),
(45, '380000000', 'NCB', 'VNP14040288', 'ATM', 'Thanh toán đơn hàng Guha Perfume', '20230616091839', 'MCG9RE1Q', '14040288', 2166, 0),
(46, '900000000', 'NCB', 'VNP14041820', 'ATM', 'Thanh toán đơn hàng Guha Perfume', '20230618170147', 'MCG9RE1Q', '14041820', 5099, 0),
(47, '1467000000', 'NCB', 'VNP14041844', 'ATM', 'Thanh toán đơn hàng Guha Perfume', '20230618181811', 'MCG9RE1Q', '14041844', 9644, 0),
(48, '1330000000', 'NCB', 'VNP14041965', 'ATM', 'Thanh toán đơn hàng Guha Perfume', '20230618230640', 'MCG9RE1Q', '14041965', 9063, 0),
(49, '733500000', 'NCB', 'VNP14042736', 'ATM', 'Thanh toán đơn hàng Guha Perfume', '20230619193722', 'MCG9RE1Q', '14042736', 771, 0),
(50, '368000000', 'NCB', 'VNP14042837', 'ATM', 'Thanh toán đơn hàng Guha Perfume', '20230619234540', 'MCG9RE1Q', '14042837', 3407, 0),
(51, '8505000000', 'NCB', 'VNP14042912', 'ATM', 'Thanh toán đơn hàng Guha Perfume', '20230620072627', 'MCG9RE1Q', '14042912', 6492, 0),
(52, '736000000', 'NCB', 'VNP14042923', 'ATM', 'Thanh toán đơn hàng Guha Perfume', '20230620081701', 'MCG9RE1Q', '14042923', 6872, 0),
(53, '13639920000', 'NCB', 'VNP14060802', 'ATM', 'Thanh toán đơn hàng Guha Perfume', '20230707180752', 'MCG9RE1Q', '14060802', 4287, 0),
(54, '332500000', 'NCB', 'VNP14135530', 'ATM', 'Thanh toán đơn hàng Guha Perfume', '20231007234520', 'MCG9RE1Q', '14135530', 7265, 0),
(55, '13000000', 'NCB', 'VNP14754574', 'ATM', 'Thanh toán đơn hàng TYRA Shop', '20241218141753', 'SF0NJH1Z', '14754574', 587, 0),
(56, '5850000', 'NCB', 'VNP14754955', 'ATM', 'Thanh toán đơn hàng TYRA Shop', '20241218154815', 'SF0NJH1Z', '14754955', 2746, 0);

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
  ADD PRIMARY KEY (`agent_id`),
  ADD KEY `fk_account_agency` (`account_id`);

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
  MODIFY `account_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `agency`
--
ALTER TABLE `agency`
  MODIFY `agent_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=444;

--
-- AUTO_INCREMENT for table `article`
--
ALTER TABLE `article`
  MODIFY `article_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `banner`
--
ALTER TABLE `banner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `brand`
--
ALTER TABLE `brand`
  MODIFY `brand_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `capacity`
--
ALTER TABLE `capacity`
  MODIFY `capacity_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `comment`
  MODIFY `comment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `evaluate`
--
ALTER TABLE `evaluate`
  MODIFY `evaluate_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `inventory`
--
ALTER TABLE `inventory`
  MODIFY `inventory_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `inventory_detail`
--
ALTER TABLE `inventory_detail`
  MODIFY `inventory_detail_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `metrics`
--
ALTER TABLE `metrics`
  MODIFY `metric_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `momo`
--
ALTER TABLE `momo`
  MODIFY `momo_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=216;

--
-- AUTO_INCREMENT for table `order_detail`
--
ALTER TABLE `order_detail`
  MODIFY `order_detail_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=226;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=223;

--
-- AUTO_INCREMENT for table `vnpay`
--
ALTER TABLE `vnpay`
  MODIFY `vnp_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `agency`
--
ALTER TABLE `agency`
  ADD CONSTRAINT `fk_account_agency` FOREIGN KEY (`account_id`) REFERENCES `account` (`account_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `messages`
--
ALTER TABLE `messages`
  ADD CONSTRAINT `messages_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `account` (`account_id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
