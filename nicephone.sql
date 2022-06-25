-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 09, 2022 at 01:05 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `nicephone`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `id_admin` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `ad_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`id_admin`, `username`, `password`, `ad_status`) VALUES
(1, 'baoad', '202cb962ac59075b964b07152d234b70', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_chitietgiohang`
--

CREATE TABLE `tbl_chitietgiohang` (
  `id_chitietgiohang` int(11) NOT NULL,
  `ma_don` varchar(255) NOT NULL,
  `id_sanpham` int(11) NOT NULL,
  `soluongspmua` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_chitietgiohang`
--

INSERT INTO `tbl_chitietgiohang` (`id_chitietgiohang`, `ma_don`, `id_sanpham`, `soluongspmua`) VALUES
(3, '8276', 20, 1),
(4, '8276', 19, 1),
(5, '9346', 20, 2),
(6, '2799', 20, 5),
(7, '2799', 19, 1),
(8, '6082', 20, 1),
(9, '6082', 21, 1),
(10, '9709', 18, 5),
(11, '4462', 20, 10),
(12, '9319', 27, 9),
(13, '8563', 27, 1),
(14, '4403', 27, 1),
(15, '564', 27, 1),
(16, '3292', 27, 1),
(17, '284', 32, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_dangki`
--

CREATE TABLE `tbl_dangki` (
  `id_dangki` int(11) NOT NULL,
  `ten_khach` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `diachi` varchar(255) NOT NULL,
  `sdt` varchar(30) NOT NULL,
  `matkhau` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_dangki`
--

INSERT INTO `tbl_dangki` (`id_dangki`, `ten_khach`, `email`, `diachi`, `sdt`, `matkhau`) VALUES
(4, 'bao nguyenaaaa', 'baob1d910618@student.ctu.edu.vn', 'can tho', '031254', '81dc9bdb52d04dc20036dbd8313ed055'),
(5, '', '', '', '', '81dc9bdb52d04dc20036dbd8313ed055'),
(6, '', '', '', '', '81dc9bdb52d04dc20036dbd8313ed055'),
(7, 'bao nguyen', 'baob1910@student.ctu.edu.vn', 'can tho', '03125412321', '81dc9bdb52d04dc20036dbd8313ed055'),
(8, 'bao nguyen', 'baob18@student.ctu.edu.vn', 'can tho', '031254123123', '81dc9bdb52d04dc20036dbd8313ed055'),
(9, 'bao nguyen ab', 'baob1910@student.ctu.edu.vn', 'can tho', '031254', '81dc9bdb52d04dc20036dbd8313ed055'),
(10, 'bao tien', 'baob191061822@student.ctu.edu.vn', 'can tho', '031254333', '81dc9bdb52d04dc20036dbd8313ed055'),
(11, 'Bao Bao', 'baonuy@gmail.com', 'Can Tho', '013454654654', '81dc9bdb52d04dc20036dbd8313ed055');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_danhmuc`
--

CREATE TABLE `tbl_danhmuc` (
  `id_danhmuc` int(11) NOT NULL,
  `ten_danhmuc` varchar(255) NOT NULL,
  `sothutu` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_danhmuc`
--

INSERT INTO `tbl_danhmuc` (`id_danhmuc`, `ten_danhmuc`, `sothutu`) VALUES
(17, 'Điện thoại', 1),
(18, 'Phụ kiện điện thoại', 2),
(19, 'Điện thoại cũ', 3);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_giohang`
--

CREATE TABLE `tbl_giohang` (
  `id_giohang` int(11) NOT NULL,
  `id_khach` int(11) NOT NULL,
  `ma_giohang` varchar(50) NOT NULL,
  `trangthai_giohang` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_giohang`
--

INSERT INTO `tbl_giohang` (`id_giohang`, `id_khach`, `ma_giohang`, `trangthai_giohang`) VALUES
(2, 10, '8276', 1),
(3, 10, '9346', 1),
(4, 10, '2799', 1),
(5, 10, '6082', 1),
(6, 10, '9709', 1),
(7, 10, '4462', 0),
(8, 11, '9319', 1),
(9, 11, '8563', 1),
(10, 11, '4403', 1),
(11, 11, '564', 1),
(12, 11, '3292', 0),
(13, 11, '284', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sanpham`
--

CREATE TABLE `tbl_sanpham` (
  `id_sanpham` int(11) NOT NULL,
  `ten_sanpham` varchar(255) NOT NULL,
  `ma_sanpham` varchar(255) NOT NULL,
  `gia_sanpham` varchar(255) NOT NULL,
  `soluong` int(11) NOT NULL,
  `hinhanh` varchar(255) NOT NULL,
  `tomtat` tinytext NOT NULL,
  `noidung` text NOT NULL,
  `trangthai` int(11) NOT NULL,
  `id_danhmuc` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_sanpham`
--

INSERT INTO `tbl_sanpham` (`id_sanpham`, `ten_sanpham`, `ma_sanpham`, `gia_sanpham`, `soluong`, `hinhanh`, `tomtat`, `noidung`, `trangthai`, `id_danhmuc`) VALUES
(11, 'oppo 3', '1', '22222', 1, '1651767432_product2.jpg', 'aaaa', 'ádasdasd', 2, 1),
(14, 'iphone', '1', '22222', 1, '1651770349_product4.jpg', 'ádadasd', 'ádasdsad', 1, 7),
(16, 'oppo neo 3', '2', '13123213', 1, '1651770404_product1.jpg', 'c', 'c', 1, 9),
(17, 'iphone 14', '3', '150000', 2, '1651770859_product5.jpg', 'b', 'b', 2, 8),
(18, 'iphone', '1', '22222', 1, '1651810700_product4.jpg', 'ok', 'ok', 1, 11),
(19, 'Tai nghe', '2', '3432432', 1, '1651810725_product3.jpg', 'c', 'c', 1, 12),
(20, 'oppo neo 3', '3', '11111', 1, '1651811721_product1.jpg', '11', '1', 1, 11),
(21, 'loa', '4', '234623846', 1, '1651811871_product3.jpg', 'a', 'a', 1, 12),
(22, 'oppo neo 4', '5', '13123213', 2, '1651812643_product1.jpg', 'q', 'q', 1, 14),
(23, 'iphone 13', '6', '12381263', 1, '1651814601_product5.jpg', 'q', 'q', 1, 11),
(24, 'iPhone 13 Pro Max 256GB', '1', '34290000', 20, '1652025040_iphone-13-pro-max-xanh-la-thumb-600x600.jpg', 'Thiết kế đẳng cấp, sang trọng', 'iPhone 13 Pro Max vẫn sẽ kế thừa thiết kế đặc trưng của iPhone 12 Series, vẫn là một sản phẩm với khung viền được hoàn thiện từ thép không gỉ, hai mặt trước sau được trang bị kính cường lực bóng bẩy.', 1, 17),
(25, 'Samsung Galaxy A13 6GB', '2', '4590000', 25, '1652025173_samsung-galaxy-a13-xanh-thumb-1-600x600.jpg', 'Thiết kế trẻ trung, bóng bẩy', 'Galaxy A13 được chế tạo từ vật liệu nhựa nguyên khối giúp thiết bị trở nên bền bỉ, độ hoàn thiện của các chi tiết khá tốt. Khi cầm nắm sử dụng mình thấy máy không xuất hiện tình trạng “ọp ẹp” như trên một vài sản phẩm được làm từ nhựa khác.', 1, 17),
(26, 'OPPO Reno7 Z 5G', '3', '10490000', 27, '1652025254_oppo-reno7-z-5g-thumb-1-1-600x600.jpg', 'Dễ dàng nổi bật giữa đám đông', 'OPPO Reno7 Z 5G có khung viền vát phẳng, vuông vức trendy làm cho máy toát lên nét hiện đại và năng động. Bốn góc được bo cong mềm mại tạo cảm giác thoải mái và nhẹ nhàng (chỉ 173 g). Với thiết kế nguyên khối làm tổng thể máy trở nên cực kỳ chắc chắn, không chỉ đẹp mà còn tăng độ bền.', 1, 17),
(27, 'Vivo Y21s 4GB', '4', '4990000', 22, '1652025350_vivo-y21s-blue-600x600.jpg', 'Khả năng chụp ảnh ấn tượng', 'Mong ước trở thành nhiếp ảnh gia với Vivo Y21s sẽ trở nên dễ dàng hơn bao giờ hết, máy được trang bị 3 camera sau với cảm biến chính 50 MP hỗ trợ chụp ảnh rõ nét, chất lượng cao dù ngày hay đêm. ', 1, 17),
(28, 'Xiaomi Redmi 10C 64GB', '5', '3490000', 66, '1652025408_xiaomi-redmi-10c-xanh-luc-thumb-600x600.jpg', 'Ấn tượng với vẻ ngoài khác biệt', 'Redmi 10C sử dụng thiết kế nguyên khối giúp máy trở nên bền bỉ và chắc chắn hơn, mặt lưng được gia công theo hiệu ứng carbon giúp máy trở nên nổi bật cũng như hạn chế bám dấu vân tay, mồ hôi khá tốt trong quá trình sử dụng.', 1, 17),
(29, 'Tai nghe Bluetooth AirPods 2 Wireless charge Apple MRXJ2', '6', '3490000', 99, '1652025537_tai-nghe-bluetooth-airpods-2-wireless-charge-mrxj2-thumb-600x600.jpg', 'Vẫn là mẫu thiết kế bắt mắt, quen thuộc dễ nhận biết của nhà Táo', 'Đánh đúng vào tâm lý của người dùng, Apple luôn cho ra mắt những sản phẩm phụ kiện có thiết kế nhỏ gọn và tai nghe là một trong những điểm mấu chốt đó, đem lại sự tiện lợi khi sử dụng được mọi nơi và dễ dàng bỏ sản phẩm ở nhiều vị trí như: túi quần, túi áo, balo, túi xách,...', 1, 18),
(30, 'Tai nghe Bluetooth True Wireless JBL T115TWS', '7', '990000', 98, '1652025598_bluetooth-true-wireless-jbl-t115twswhtas-thumb-1-600x600.jpeg', 'Tai nghe JBL dạng oval thon gọn, hộp sạc cứng cáp, 2 phiên bản màu trắng - đen', 'Thiết kế housing với đường nét tinh tế, uốn cong theo hình oval, bề mặt bằng nhựa sần tốt, bền bỉ, kháng vỡ, cầm nắm dễ chịu, xoay chuyển vị trí linh hoạt để đeo tai vừa vặn', 1, 18),
(31, 'Ốp lưng MagSafe iPhone 13 Pro Max Da Apple MM1Q3', '8', '895000', 101, '1652025681_op-lung-magsafe-iphone-13-pro-max-da-apple-mm1q3-160122-074637-600x600.jpg', 'Ốp lưng thiết kế đơn giản, màu sắc thanh lịch, nam tính', 'Sử dụng cho iPhone 13 Pro Max, ôm sát bảo vệ tốt thân máy khi va chạm.', 1, 18),
(32, 'Ốp lưng MagSafe iPhone 13 Pro Max Nhựa dẻo Apple MM2N3', '9', '895000', 56, '1652025743_op-lung-magsafe-iphone-13-pro-max-nhua-deo-apple-mm2n3-160122-073223-600x600.jpg', 'Ốp lưng thiết kế đơn giản, màu sắc trẻ trung, thời thượng.', 'Ôm sát vừa vặn, bảo vệ cho iPhone 13 Pro Max.', 1, 18),
(33, 'Loa Bluetooth JBL Charge 5 ', '10', '3990000', 54, '1652025802_bluetooth-jbl-charge-5-ava-600x600.jpg', 'Kiểu dáng hiện đại, chắc chắn, có tính di động cao.', 'Âm thanh JBL Pro Sound, tổng công suất 40 W sinh động.', 1, 18),
(34, 'Samsung Galaxy Fold F900 Cosmos Black', '11', '18120000', 5, '1652032383_samsung-galaxy-z-fold-3-green-1-600x600.jpg', 'Thiết kế 2 màn hình, màn hình uốn dẻo', 'Samsung Galaxy Fold không chỉ sở hữu một màn hình có thể uốn dẻo mà còn có một màn hình riêng, để có thể sử dụng độc lập khi gập máy lại.', 1, 19),
(35, 'Điện thoại iPhone SE 64GB (2020) (Hộp mới)', '12', '10000000', 6, '1652032440_iphone-se-white-600x600.jpg', 'Thiết kế hoài niệm', 'iPhone SE 64 GB (2022) vẫn không thay đổi thiết kế nhiều so với phiên bản tiền nhiệm. Máy vẫn có màn hình 4.7 inch, viền màn hình trên và dưới được giữ lại để chứa camera selfie và nút Home “huyền thoại\". Màn hình iPhone SE 64 GB (2022) sẽ sử dụng tấm nền IPS LCD, cho chất lượng hiển thị khá tốt.', 1, 19);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indexes for table `tbl_chitietgiohang`
--
ALTER TABLE `tbl_chitietgiohang`
  ADD PRIMARY KEY (`id_chitietgiohang`);

--
-- Indexes for table `tbl_dangki`
--
ALTER TABLE `tbl_dangki`
  ADD PRIMARY KEY (`id_dangki`);

--
-- Indexes for table `tbl_danhmuc`
--
ALTER TABLE `tbl_danhmuc`
  ADD PRIMARY KEY (`id_danhmuc`);

--
-- Indexes for table `tbl_giohang`
--
ALTER TABLE `tbl_giohang`
  ADD PRIMARY KEY (`id_giohang`);

--
-- Indexes for table `tbl_sanpham`
--
ALTER TABLE `tbl_sanpham`
  ADD PRIMARY KEY (`id_sanpham`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_chitietgiohang`
--
ALTER TABLE `tbl_chitietgiohang`
  MODIFY `id_chitietgiohang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `tbl_dangki`
--
ALTER TABLE `tbl_dangki`
  MODIFY `id_dangki` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tbl_danhmuc`
--
ALTER TABLE `tbl_danhmuc`
  MODIFY `id_danhmuc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `tbl_giohang`
--
ALTER TABLE `tbl_giohang`
  MODIFY `id_giohang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tbl_sanpham`
--
ALTER TABLE `tbl_sanpham`
  MODIFY `id_sanpham` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
