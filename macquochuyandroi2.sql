-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 18, 2023 lúc 07:56 AM
-- Phiên bản máy phục vụ: 10.4.27-MariaDB
-- Phiên bản PHP: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `macquochuyandroi2`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) NOT NULL,
  `description` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`id`, `description`, `title`) VALUES
(3, 'Đồ Nữ', 'Đồ Nữ'),
(5, 'Quần Nam', 'Đồ Nam'),
(6, 'Đồ Đôi', 'Đồ Đôi'),
(8, 'Chân Váy', 'Chân Váy'),
(9, 'Nón', 'Nón');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories_products`
--

CREATE TABLE `categories_products` (
  `category_id` bigint(20) NOT NULL,
  `products_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) NOT NULL,
  `id_product` bigint(20) DEFAULT NULL,
  `id_user` bigint(20) DEFAULT NULL,
  `order_date` datetime(6) DEFAULT NULL,
  `payment_method` varchar(255) DEFAULT NULL,
  `price` double NOT NULL,
  `quantity` int(11) DEFAULT NULL,
  `shipping_info` text DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `orders`
--

INSERT INTO `orders` (`id`, `id_product`, `id_user`, `order_date`, `payment_method`, `price`, `quantity`, `shipping_info`, `status`) VALUES
(1, 1, 4, '2023-11-14 09:42:53.000000', 'Credit Card', 0, NULL, 'Address: 123 Example Street', '1');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` bigint(20) NOT NULL,
  `description` varchar(255) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `price` double NOT NULL,
  `title` varchar(255) NOT NULL,
  `category_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `description`, `photo`, `price`, `title`, `category_id`) VALUES
(38, 'Áo polo nam vải Airycool cao cấp mang đến sự thoải mái vượi trội cho người mặc. Thành phần 85% Nylon + 15% Sapandex. Mang tới cảm giác thoải mái.', 'sdfadsf.png', 3000, 'Áo Polo Nam', 5),
(39, 'Vải Pique được làm từ sự pha trộn giữa cotton và polyester chống vón cục cho kết cấu mịn, nhẹ.Giữ nguyên hình dạng sau nhiều lần giặ Với công nghệ DRY.Chúng tôi không ngừng tinh chỉnh các chi tiết của thiết kế cổ điển này', 'aopolo2.png', 2000, 'Áo Polo Vải Dry', 5),
(40, '- Công nghệ DRY-EX làm khô nhanh.Tính năng kiểm soát mùi và Cool Touch. Polyester làm từ chai nhựa tái chế.Vải mắt lưới giúp mang lại cảm giác khô thoáng.Vải kiểu pique.', 'aopolo2.png', 40000, 'DRY-EX Áo Polo', 5),
(41, '- Với công nghệ \'DRY-EX\' làm khô nhanh.Kiểm soát mùi và tính năng Cool Touch.Cấu trúc vải nhanh chóng thấm hút và thoát mồ hôi giúp bạn luôn cảm thấy sảng khoái.Màu thạch anh có độ tương phản thấp linh hoạt tuyệt vời cho trang phục hàng ngày và công sở.', 'aopolo3.png', 30000, 'Áo Polo Dry-EX', 5),
(42, '- Chất liệu vải jersey cao cấp. Sợi mịn, hai lớp được làm từ bông siêu dài cho cảm giác mịn màng. Thiết kế không dùng sắt để dễ chăm sóc. * Tránh sấy khô. *Có thể cần ủi nhẹ, tùy thuộc vào điều kiện giặt. Với công nghệ DRY nhanh khô.', 'aosomi.png', 7000, 'Áo Sơ Mi Vải Jersey', 5),
(43, 'Vải được xử lý bằng phương pháp xử lý giữ hình dạng để dễ chăm sóc. Vải được bảo quản lạnh cho đến khâu may để đảm bảo giữ nguyên hình dáng trong quá trình gia công. Được làm từ chất liệu vải co giãn, mang lại cảm giác thoải mái hơn.', 'aosomi1.png', 40000, 'Áo Sơ Mi Dài Tay', 5),
(44, 'Dickies là thương hiệu sản xuất thời trang nổi tiếng theo chủ nghĩa “ăn chắc mặc bền” theo thời gian sự phát triển của xu hướng này vẫn được hãng phát triển mạnh mẽ. nhìn chung, những sản phẩm Dickies có thiết kế, phong cách trẻ trung, năng động.', 'sominu.png', 300, 'Áo sơ mi tay ngắn', 3),
(45, 'Dickies là thương hiệu sản xuất thời trang nổi tiếng theo chủ nghĩa “ăn chắc mặc bền” theo thời gian sự phát triển của xu hướng này vẫn được hãng phát triển mạnh mẽ. nhìn chung, những sản phẩm Dickies có thiết kế, phong cách trẻ trung', 'sominu1.png', 300, 'Áo sơ mi tay dài', 3),
(46, 'Chất liệu 100% Cotton Sợi Cotton tốt nhất thế giới đến từ Mỹ với độ mảnh và khả năng nhuộm tối ưu hơn Thấm hút mồ hôi rất phù hợp với thời tiết tại Việt Nam Co giãn nhẹ, phù hợp với chuyển động của cơ thể Hình in phía trước tạo điểm nhấn cá tính', 'aothunnu.png', 100, 'Áo Thun Nữ Thêu', 3),
(47, 'Chất liệu Bột Ngô:  80% Cotton + 20% Polyester I-scra Softcool Thoải mái hoạt động với chất liệu co giãn đàn hồi cực tốt  Sợi cotton bột ngô chiếm tới 80% nên hiệu quả thấm hút cao. Độ bền màu cao có sợi polyester có độ dai & bên màu cực tốt.', 'aothunu1.png', 200, 'Áo Thun Nữ Rộng', 3),
(48, 'Áo Khoác Varsity Ngân Hà Space Ver3 Chất liệu : Vải Kaki Nhung Thành phần: 100% Polyester Họa tiết thêu + thêu đắp giống + Cổ áo, cổ tay, lai áo được bo vải gân', 'aodoi.png', 500, 'Áo Đôi Hoodie', 6),
(49, 'Chất liệu: French Terry Thành phần: 100% Cotton - Thấm hút thoát ẩm tốt - Mềm mại - Co giãn và đàn hồi tốt - Thân thiện với môi trường', 'aodoi2.png', 500, 'Áo Đôi 2', 6),
(50, 'Chân váy nữ chất liệu khaki, thành phần: 60% Cotton +37% Nylon +3% Spandex Kiểu dáng A túi ốp là điểm nhấn Thiết kế năng động, cá tính Có thể mặc phối với áo sơ mi, áo phông mặc hằng ngày YODY - Look good. Feel good.', 'chanvay.png', 200, 'Chân Váy Khaki', 8),
(51, 'Chất liệu sản phẩm: 97% COTTON+ 3% SPANDEX Chất liệu vải có cấu trúc chắc chắn, bề mặt vải khít. Co giãn tốt và thấm hút mồ hôi hiệu quả giúp người mặc luôn cảm thấy thoáng mát, dễ chịu và thoải mái vận động.', 'chanvay1.png', 300, 'Chân Váy ', 8),
(52, '- Chất liệu vải twill, được giặt sạch để tăng độ mềm mại. Với công nghệ Chống tia cực tím (UPF50+) và DRY. Thiết kế kiểu dáng được cải tiến và đảm bảo vừa vặn hơn. Thiết kế nút điều chỉnh bên trong.', 'mu.png', 300, 'Mũ Bucket', 9),
(53, '- Nay đã có loại nylon mềm. Với tính năng chống tia UV và chống thấm nước. * Bề mặt được thiết kế không chống thấm vĩnh viễn. Chất liệu vải nhẹ có thể gấp gọn dễ dàng mang theo bên mình. Kiểu dáng được cải tiến mới nhằm điều chỉnh độ vừa vặn.', 'mu2.png', 200, 'Nón Jean', 9),
(54, '- Nay đã có loại nylon mềm. Với tính năng chống tia UV và chống thấm nước. * Bề mặt được thiết kế không chống thấm vĩnh viễn.\n- Chất liệu vải nhẹ có thể gấp gọn dễ dàng mang theo bên mình.Kiểu dáng được cải tiến ', 'mu3.png', 200, 'Nón Kaki', 9),
(55, '- Nay đã có loại nylon mềm.- Với tính năng chống tia UV và chống thấm nước. * Bề mặt được thiết kế không chống thấm vĩnh viễn.\n- Chất liệu vải nhẹ có thể gấp gọn dễ dàng mang theo bên mình.', 'mu4.png', 100, 'Nón Vải', 9),
(56, '- Nay đã có loại nylon mềm. Với tính năng chống tia UV và chống thấm nước. * Bề mặt được thiết kế không chống thấm vĩnh viễn.\n- Chất liệu vải nhẹ có thể gấp gọn dễ dàng mang theo bên mình. ', 'aothunnam.png', 100, 'Áo Thun Nam', 5),
(57, 'dsghfghd', 'aotumlum.png', 234, 'Quần caro nữ', 3);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL,
  `email` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `status` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `email`, `name`, `password`, `status`) VALUES
(1, 'machuy2003@gmail.com', 'Quochuy', '1234', NULL),
(2, 'Oanh@gmail.com', 'Kiều Oanh12', '123', NULL),
(6, 'Quochuy2003@gmail.com', 'Quốc Huy', '1234', NULL),
(8, 'Huy2003@gmail.com', 'Văn Huy', '123', NULL),
(9, 'Nguyenhuy2003@gmail.com', 'Văn Huy', '123', NULL),
(11, 'Huy234@gmail.com', 'quốc huy', '123', NULL);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `categories_products`
--
ALTER TABLE `categories_products`
  ADD UNIQUE KEY `UK_rnlo43ssc3pd408u62he9udsb` (`products_id`),
  ADD KEY `FK2a3u5mbtmtq3d4s5abajhhksf` (`category_id`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKog2rp4qthbtt2lfyhfo32lsw9` (`category_id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UK_6dotkott2kjsp8vw4d0m25fb7` (`email`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `categories_products`
--
ALTER TABLE `categories_products`
  ADD CONSTRAINT `FK2a3u5mbtmtq3d4s5abajhhksf` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`),
  ADD CONSTRAINT `FKad19ea8ca86lh5f3wmgg83vmj` FOREIGN KEY (`products_id`) REFERENCES `products` (`id`);

--
-- Các ràng buộc cho bảng `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `FKog2rp4qthbtt2lfyhfo32lsw9` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
