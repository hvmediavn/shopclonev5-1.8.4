-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th8 07, 2021 lúc 06:11 AM
-- Phiên bản máy phục vụ: 10.4.17-MariaDB
-- Phiên bản PHP: 8.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `shopclone5`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `backups`
--

CREATE TABLE `backups` (
  `id` int(11) NOT NULL,
  `filename` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `time` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `thoigian` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `backups`
--

INSERT INTO `backups` (`id`, `filename`, `time`, `thoigian`) VALUES
(4, 'test', '1614982097', '2021-03-06 05:08:17');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bank`
--

CREATE TABLE `bank` (
  `id` int(11) NOT NULL,
  `stk` text NOT NULL,
  `name` text NOT NULL,
  `bank_name` text NOT NULL,
  `chi_nhanh` text NOT NULL,
  `logo` text DEFAULT NULL,
  `ghichu` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `bank`
--

INSERT INTO `bank` (`id`, `stk`, `name`, `bank_name`, `chi_nhanh`, `logo`, `ghichu`) VALUES
(5, '106868238271', 'Vietinbank Auto', 'NGUYEN TAN THANH', 'Tây Ninh', 'https://i.imgur.com/5lONuYM.png', 'Vui lòng nhập đúng nội dung khi chuyển khoản.\r\n'),
(7, '10002325589898', 'Vietcombank Auto', 'NGUYEN TAN THANH', 'Tay Ninh', 'https://i.imgur.com/9wOUZTv.png', 'Nhập đúng nội dung, cộng tiền ngay');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bank_auto`
--

CREATE TABLE `bank_auto` (
  `id` int(11) NOT NULL,
  `tid` varchar(255) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `amount` int(11) DEFAULT 0,
  `cusum_balance` int(11) DEFAULT 0,
  `time` datetime DEFAULT NULL,
  `bank_sub_acc_id` varchar(64) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `username` varchar(64) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cards`
--

CREATE TABLE `cards` (
  `id` int(11) NOT NULL,
  `code` varchar(32) DEFAULT NULL,
  `username` varchar(32) NOT NULL,
  `loaithe` varchar(32) NOT NULL,
  `menhgia` int(11) NOT NULL,
  `thucnhan` int(11) DEFAULT 0,
  `seri` text NOT NULL,
  `pin` text NOT NULL,
  `createdate` datetime NOT NULL,
  `status` varchar(32) NOT NULL,
  `note` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `stt` int(11) DEFAULT 0,
  `title` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `display` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `img` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `category`
--

INSERT INTO `category` (`id`, `stt`, `title`, `display`, `img`) VALUES
(4, 2, 'DANH SÁCH VIA FACEBOOK', 'SHOW', 'assets/storage/images/category_R36HMAODF14C.png'),
(6, 1, 'DANH SÁCH CLONE FACEBOOK', 'SHOW', 'assets/storage/images/category_8GKUR69W7HJS.png'),
(7, 0, 'DANH SÁCH TÀI KHOẢN GMAIL', 'SHOW', 'assets/storage/images/category_1NS5B048Q2FU.png'),
(9, 3, 'TÀI KHOẢN TRAODOISUB.COM', 'SHOW', 'assets/storage/images/category_DXMP3BA8W0RO.png'),
(10, 4, 'TÀI KHOẢN AZURE', 'SHOW', 'assets/storage/images/category_SR4GYUE5WLQJ.png');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chuyentien`
--

CREATE TABLE `chuyentien` (
  `id` int(11) NOT NULL,
  `nguoinhan` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `nguoichuyen` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `sotien` int(11) DEFAULT NULL,
  `thoigian` datetime DEFAULT NULL,
  `lydo` text COLLATE utf8_vietnamese_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `config_momo`
--

CREATE TABLE `config_momo` (
  `id` int(11) NOT NULL,
  `key` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `dichvu`
--

CREATE TABLE `dichvu` (
  `id` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `dichvu` blob DEFAULT NULL,
  `gia` int(11) DEFAULT NULL,
  `loai` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `thoigian` datetime DEFAULT NULL,
  `mota` longblob DEFAULT NULL,
  `display` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `capnhat` datetime DEFAULT NULL,
  `mua_toi_da` int(11) DEFAULT NULL,
  `quocgia` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `mua_toi_thieu` int(11) DEFAULT 1,
  `luuy` longblob DEFAULT NULL,
  `stt` int(11) NOT NULL,
  `check_live` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT 'OFF'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `dichvu`
--

INSERT INTO `dichvu` (`id`, `username`, `dichvu`, `gia`, `loai`, `thoigian`, `mota`, `display`, `capnhat`, `mua_toi_da`, `quocgia`, `mua_toi_thieu`, `luuy`, `stt`, `check_live`) VALUES
(8, 'admin', 0x474d41494c2052414e444f4d2054c38a4e205449e1babe4e4720414e48202b4156415441522b504f50332b494d41502b4c495645373748, 500, 'DANH SÁCH TÀI KHOẢN GMAIL', '2021-02-18 02:30:08', 0x74657374, 'SHOW', '2021-06-30 23:43:12', 100, 'vn', 1, '', 0, 'GMAIL'),
(11, 'admin', 0x205669612043e1bb95205068696c6970696e204368616e67652046756c6c20584d4454, 80000, 'DANH SÁCH VIA FACEBOOK', '2021-04-06 10:15:36', 0x46756c6c206261636b7570, 'SHOW', '2021-06-30 23:43:04', 100, 'ph', 1, '', 0, 'VIA'),
(15, 'admin', 0x54c3a069206b686fe1baa36e2054445320316d207875, 20000, 'TÀI KHOẢN TRAODOISUB.COM', '2021-04-06 17:07:27', 0x4b68c3b46e672063e1baa5752068c3ac6e68, 'SHOW', '2021-06-30 23:44:38', 1000, 'vn', 1, '', 1, 'OFF'),
(18, 'admin', 0x54c3a069206b686fe1baa36e20417a757265203130303024, 99999, 'TÀI KHOẢN AZURE', '2021-07-01 00:14:15', 0x567569206cc3b26e67206e68e1baad70206ee1bb99692064756e67206dc3b42074e1baa32073e1baa36e207068e1baa96d, 'SHOW', NULL, 1000, '', 1, 0x4e68e1baad70206cc6b07520c3bd20686fe1bab7632068c6b0e1bb9b6e672064e1baab6e2063686f2073e1baa36e207068e1baa96d206ec3a07920287875e1baa574206869e1bb876e206b6869206d756129, 0, 'OFF'),
(19, 'admin', 0x436c6f6e6520766572792070686f6e65, 100, 'DANH SÁCH CLONE FACEBOOK', '2021-07-01 00:15:38', '', 'SHOW', NULL, 100, 'vn', 1, 0x4e68e1baad70206cc6b07520c3bd20686fe1bab7632068c6b0e1bb9b6e672064e1baab6e2063686f2073e1baa36e207068e1baa96d206ec3a07920287875e1baa574206869e1bb876e206b6869206d756129, 0, 'CLONE');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `dongtien`
--

CREATE TABLE `dongtien` (
  `id` int(11) NOT NULL,
  `sotientruoc` int(11) DEFAULT NULL,
  `sotienthaydoi` int(11) DEFAULT NULL,
  `sotiensau` int(11) DEFAULT NULL,
  `thoigian` datetime DEFAULT NULL,
  `noidung` text COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `username` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `dongtien`
--

INSERT INTO `dongtien` (`id`, `sotientruoc`, `sotienthaydoi`, `sotiensau`, `thoigian`, `noidung`, `username`) VALUES
(193, 1940000, 10000, 1930000, '2021-05-26 01:58:00', 'Thanh toán đơn hàng (#OIE58SVGNA3M)', 'admin'),
(194, 1930000, 10000, 1920000, '2021-05-26 01:58:28', 'Thanh toán đơn hàng (#645980HRAYTV)', 'admin'),
(195, 1920000, 10000, 1910000, '2021-05-26 02:23:08', 'Thanh toán đơn hàng (#1QE8DX0FHW4R)', 'admin'),
(196, 1910000, 10000, 1900000, '2021-05-26 03:31:43', 'Thanh toán đơn hàng (#ARMJSOVB2IZN)', 'admin'),
(197, 1900000, 10000, 1890000, '2021-05-27 07:15:02', 'Thanh toán đơn hàng (#IVBT1622074502)', 'admin'),
(198, 1890000, 10000, 1880000, '2021-05-27 07:15:15', 'Thanh toán đơn hàng (#WLO31622074515)', 'admin'),
(199, 200000000, 100, 199999900, '2021-08-04 17:20:23', 'Thanh toán đơn hàng (#KML71628072423)', 'admin'),
(200, 199999900, 100, 199999800, '2021-08-04 17:21:41', 'Thanh toán đơn hàng (#AT601628072501)', 'admin'),
(201, 199999800, 100, 199999700, '2021-08-04 17:57:54', 'Thanh toán đơn hàng (#LH1S1628074674)', 'admin');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `giftcode`
--

CREATE TABLE `giftcode` (
  `id` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `code` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `thoigian` datetime DEFAULT NULL,
  `sotien` int(11) NOT NULL DEFAULT 0,
  `ghichu` text COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `capnhat` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `lang`
--

CREATE TABLE `lang` (
  `id` int(11) NOT NULL,
  `vn` text COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `en` text COLLATE utf8_vietnamese_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `lang`
--

INSERT INTO `lang` (`id`, `vn`, `en`) VALUES
(1, 'Đăng Nhập', 'Login'),
(2, 'Đăng Ký', 'Register'),
(3, 'Thông Tin', 'Profile'),
(4, 'Đăng Nhập hoặc Đăng Ký', 'Login or Register'),
(5, 'Tên đăng nhập', 'Username'),
(6, 'Mật khẩu', 'Password'),
(7, 'Nhập tên đăng nhập', 'Enter your username'),
(8, 'Nhập mật khẩu', 'Enter password'),
(9, 'Đang xử lý', 'Processing'),
(10, 'Vui lòng nhập tên đăng nhập', 'Please enter your username'),
(11, 'Vui lòng nhập mật khẩu', 'Please enter a password'),
(12, 'Tên đăng nhập không tồn tại', 'Username does not exist'),
(13, 'Mật khẩu đăng nhập không chính xác', 'Login password is incorrect'),
(14, 'Tài khoản đã bị khóa', 'The account is locked'),
(15, 'Vui lòng nhập định dạng tài khoản hợp lệ', 'Please enter a valid account format'),
(16, 'Tài khoản phải từ 5 đến 64 ký tự', 'Account must be between 5 and 64 characters'),
(17, 'Tên đăng nhập đã tồn tại!', 'Username available!'),
(18, 'Vui lòng đặt mật khẩu trên 3 ký tự', 'Please set a password above 3 characters'),
(19, 'Bạn đã đạt giới hạn tạo tài khoản', 'You have reached your account creation limit'),
(20, 'Tạo tài khoản thành công', 'Account successfully created'),
(21, 'Vui lòng kiểm tra cấu hình cơ sở dữ liệu', 'Please check the database configuration'),
(22, 'Vui lòng nhập địa chỉ email', 'Please enter your email address'),
(23, 'Vui lòng nhập địa chỉ email hợp lệ', 'Please enter a valid email address'),
(24, 'Địa chỉ email không tồn tại trong hệ thống', 'Email address does not exist in the system'),
(25, 'XÁC NHẬN KHÔI PHỤC MẬT KHẨU', 'CONFIRMED PASSWORD RECOVERY'),
(26, 'Có ai đó vừa yêu cầu khôi phục lại mật khẩu bằng Email này, nếu là bạn vui lòng nhập mã xác minh phía dưới để xác minh tài khoản', 'Someone has just requested to recover password by this email, if you are, please enter the verification code below to verify the account.'),
(27, 'Chúng tôi đã gửi mã xác minh vào địa chỉ Email của bạn', 'We have sent a verification code to your Email address'),
(28, 'Vui lòng nhập mật khẩu mới', 'Please enter a new password'),
(29, 'Vui lòng xác minh lại mật khẩu', 'Please verify your password'),
(30, 'Tổng nạp', 'Total Balance'),
(31, 'Số dư hiện tại', 'Credit Available'),
(32, 'Số tiền đã sử dụng', 'Amount used'),
(33, 'Nạp tiền ngay', 'Pay Now'),
(34, 'Lịch sử dòng tiền', 'Cash flow history'),
(35, 'THỐNG KÊ CHI TIẾT', 'DETAILED STATISTICS'),
(36, 'Lịch Sử Giao Dịch', 'Transaction history'),
(37, 'Nạp Tiền', 'Recharge'),
(38, 'THÔNG TIN', 'INFORMATION'),
(39, 'Đang hoạt động', 'Online'),
(40, 'Trạng Thái', 'Status'),
(41, 'Giảm', 'Discount'),
(42, 'GIAO DỊCH GẦN ĐÂY', 'RECENT TRANSACTIONS'),
(43, 'Trang Chủ', 'Home'),
(45, 'Số lượng', 'Amount'),
(46, 'Thanh toán', 'Pay'),
(47, 'XEM NGAY', 'VIEW NOW'),
(48, 'TẢI VỀ', 'DOWNLOAD'),
(49, 'CHỌN ĐỊNH DẠNG TẢI VỀ', 'CHOOSE DOWNLOAD FORMAT'),
(50, 'CHI TIẾT ĐƠN HÀNG', 'ORDER DETAILS'),
(51, 'Thời Gian', 'Time'),
(52, 'Loại', 'Type'),
(53, 'Mã Giao Dich', 'Transaction id'),
(54, 'LƯU Ý', 'Note'),
(55, 'Sao chép', 'Copy'),
(56, 'Tải Backup', 'Download Backup'),
(57, 'Dòng tiền', 'Cash flow'),
(58, 'Lịch sử nạp tiền', 'Deposit history'),
(59, 'Chủ tài khoản', 'Recipient\'s name'),
(60, 'Nội dung chuyển tiền', 'Money transfer content'),
(61, 'Số tài khoản', 'Payout account number'),
(62, 'Ngân hàng', 'Bank'),
(63, 'Đăng Xuất', 'Logout'),
(64, 'Thành viên', 'Member'),
(65, 'Đại lý', 'Agency'),
(66, 'Địa chỉ Email', 'Email address'),
(67, 'Số điện thoại', 'Number phone'),
(68, 'Họ và Tên', 'Full name'),
(69, 'Thời gian đăng ký', 'Registration period'),
(70, 'Mật khẩu mới', 'New password'),
(71, 'Nhập lại mật khẩu mới', 'Confirm  new password'),
(72, 'Thông tin được mã hóa khi đưa lên máy chủ của chúng tôi', 'Information is encrypted when posted on our servers'),
(73, 'LƯU THÔNG TIN', 'SAVE INFORMATION'),
(74, 'Đơn giá', 'Unit price'),
(75, 'Số tiền cần thanh toán', 'Amount to be paid'),
(76, 'Đóng', 'Close'),
(77, 'Tên sản phẩm', 'Product\'s name'),
(78, 'Hiện có', 'Available'),
(79, 'Thao tác', 'Control'),
(80, 'Lưu thành công', 'Save successfully'),
(81, 'Đang xử lý giao dịch', 'Processing the transaction'),
(82, 'Loại này đã hết hàng', 'This type is out of stock'),
(83, 'Mua Ngay', 'Buy Now'),
(84, 'Hết hàng', 'Out of stock'),
(85, 'Quốc gia', 'Countries'),
(86, 'Vui lòng đăng nhập để thực hiện giao dịch', 'Please log in to make a transaction'),
(87, 'Dịch vụ không hợp lệ', 'Invalid service'),
(88, 'Dịch vụ này không khả dụng', 'This service is not available'),
(89, 'Số lượng mua không phù hợp', 'Purchase quantity does not match'),
(90, 'Số lượng tối đa 1 lần là', 'The maximum number of times is'),
(91, 'Số lượng trong hệ thống không đủ', 'The quantity in the system is not enough'),
(92, 'Số dư không đủ vui lòng nạp thêm', 'Insufficient balance, please recharge'),
(93, 'Tài khoản của bạn đã bị chấm dứt vì sử dụng BUG', 'Your account has been terminated for using BUG'),
(94, 'Giao dịch thành công!', 'Successful transaction!'),
(95, 'Thất Bại', 'Error'),
(96, 'Thành Công', 'Success'),
(97, 'Cảnh Báo', 'Warning'),
(98, 'DANH SÁCH TÀI KHOẢN', 'LIST OF ACCOUNTS'),
(99, 'Chính sách', 'Policy'),
(100, 'LỊCH SỬ NẠP TIỀN', 'MONEY DEPOSIT HISTORY'),
(101, 'Công Cụ', 'Tool'),
(102, 'NẠP TIỀN', 'RECHARGE'),
(103, 'Số lượng tối thiểu', 'Minimum quantity'),
(104, 'Top Nạp Tiền', 'Deposit Rankings'),
(105, 'BẢNG XẾP HẠNG NẠP TIỀN', 'RANKING OF MONEY'),
(106, 'THÀNH VIÊN', 'MEMBER'),
(107, 'TỔNG TIỀN NẠP', 'TOTAL DEPOSIT'),
(108, 'XẾP HẠNG', 'RANK'),
(109, 'CÔNG CỤ LẤY MÃ 2FA', 'TOOL GET CODE 2FA'),
(110, 'Vui lòng nhập Secret Key', 'Please enter Secret Key'),
(111, 'ĐANG XỬ LÝ', 'PROCESSING'),
(112, 'CHÚNG TÔI CUNG CẤP', 'WE OFFER'),
(113, 'Có những tài khoản Facebook còn khá trẻ nếu bạn cần trong thời gian ngắn, trên trang web của chúng tôi', 'There are Facebook accounts, that are quite young if you need them for a short time, on our website'),
(114, 'TÀI KHOẢN ĐANG BÁN', 'ACCOUNT IS SELLING'),
(115, 'Công ty chúng tôi đã có một thời gian dài trên thị trường tài khoản xã hội số lượng lớn và tài khoản internet công cộng. Chúng tôi đang cung cấp cho khách hàng các tài khoản số lượng lớn an toàn trên tất cả các loại mạng và cổng thông tin công cộng', 'Our company has been for a while on the market of bulk social accounts and public internet recourses. We are offering our customers secure bulk accounts on all kinds of public networks and portals'),
(116, 'Xem thêm', 'Learn more'),
(117, 'Nhà cung cấp tài khoản marketing hàng đầu', 'Top marketing account provider'),
(118, 'Chúng tôi cung cấp những tài khoản mạng xã hội chất lượng nhất', 'We provide top quality social media accounts'),
(119, 'Sản phẩm', 'Product'),
(120, 'Trang chủ', 'Home'),
(121, 'Dịch vụ', 'Services'),
(122, 'Quên mật khẩu', 'Forgot password'),
(123, 'Nhập OTP', 'Enter OTP'),
(124, 'Nhập lại mật khẩu', 'Verify password'),
(125, 'Đổi mật khẩu', 'Change Password'),
(126, 'sản phẩm trong nhóm này', 'products in this group'),
(127, 'Đối tác của chúng tôi', 'Partner'),
(128, 'Điều khoản', 'Rules'),
(129, 'Dịch Vụ', 'Services'),
(130, 'Liên Hệ', 'Contact'),
(131, 'Đăng ký tài khoản', 'Register an account'),
(132, 'Nhập lại mật khẩu', 'Enter the password'),
(133, 'Vui lòng nhập lại mật khẩu', 'Please re-enter your password'),
(134, 'Nhập lại mật khẩu không chính xác', 'Re-enter incorrect password'),
(135, 'Nhập địa chỉ Email', 'Enter your email address'),
(136, 'Vui lòng nhập địa chỉ Email', 'Please enter your email address'),
(137, 'Verify Now', 'Verify Now'),
(138, 'Cập nhật số điện thoại', 'Update phone number'),
(139, 'Nhập số điện thoại liên hệ', 'Enter contact phone number'),
(140, 'ĐÃ BÁN', 'SOLD'),
(141, 'Cộng Tác Viên', 'Referral'),
(142, 'Giới thiệu khách hàng sử dụng dịch vụ của chúng tôi nhận ngay hoa hồng', 'Refer customers to use our services and receive commissions'),
(143, 'Sao chép địa chỉ này và chia sẻ đến bạn bè của bạn.', 'Copy this address and share with your friends.'),
(144, 'ĐIỀU KIỆN', 'CONDITION'),
(145, 'Những tài khoản được hệ thống xác định là tài khoản sao chép của các tài khoản khác sẽ không\r\n    được dùng để tính hoa hồng.', 'Accounts that are identified by the system as duplicate accounts of other accounts will not\r\n    used to calculate the commission.'),
(146, 'Hoa hồng chỉ được tính khi người dùng mua tài nguyên trên web.', 'Commissions are calculated only when the user purchases resources on the web.'),
(147, 'Việc xác định xem ai là người giới thiệu của một người dùng phụ thuộc hoàn toàn vào link giới\r\n    thiệu. Nếu một người dùng nhấp vào nhiều link ref khác nhau thì chỉ có link ref cuối cùng họ\r\n    nhấp vào trước khi tạo tài khoản là có hiệu lực.', 'Determining who a users referrer is depends entirely on the referral link\r\n    introduce. If a user clicks on many different ref links, only the last ref link they have\r\n    click before creating an account to take effect.'),
(148, 'BẠN BÈ ĐƯỢC BẠN GIỚI THIỆU', 'FRIENDS RECOMMENDED BY YOU'),
(149, 'TÊN ĐĂNG NHẬP', 'USERNAME'),
(150, 'THỜI GIAN THAM GIA', 'CREATEDATE'),
(151, 'HOA HỒNG BẠN NHẬN ĐƯỢC', 'PROFITS YOU GET');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `logs`
--

CREATE TABLE `logs` (
  `id` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `content` text COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `createdate` datetime DEFAULT NULL,
  `time` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `logs`
--

INSERT INTO `logs` (`id`, `username`, `content`, `createdate`, `time`) VALUES
(182, 'admin', 'Thanh toán đơn hàng #OIE58SVGNA3M', '2021-05-26 01:58:00', '1621969080'),
(183, 'admin', 'Thanh toán đơn hàng #645980HRAYTV', '2021-05-26 01:58:28', '1621969108'),
(184, 'admin', 'Thanh toán đơn hàng #1QE8DX0FHW4R', '2021-05-26 02:23:08', '1621970588'),
(185, 'admin', 'Thanh toán đơn hàng #ARMJSOVB2IZN', '2021-05-26 03:31:43', '1621974703'),
(186, 'admin', 'Dùng chức năng Get 2FA', '2021-05-27 07:09:22', '1622074162'),
(187, 'admin', 'Dùng chức năng Get 2FA', '2021-05-27 07:09:26', '1622074166'),
(188, 'admin', 'Thanh toán đơn hàng #IVBT1622074502', '2021-05-27 07:15:03', '1622074503'),
(189, 'admin', 'Thanh toán đơn hàng #WLO31622074515', '2021-05-27 07:15:16', '1622074516'),
(190, 'admin', 'Thực hiện đăng nhập (Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:88.0) Gecko/20100101 Firefox/88.0 IP 127.0.0.1)', '2021-05-28 05:06:49', '1622153209'),
(191, 'admin', 'Thực hiện đăng nhập (Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36 IP ::1)', '2021-05-28 05:12:51', '1622153571'),
(192, 'admin', 'Thực hiện đăng nhập (Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:88.0) Gecko/20100101 Firefox/88.0 IP 127.0.0.1)', '2021-05-29 00:00:32', '1622221232'),
(193, 'admin', 'Thực hiện đăng nhập (Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36 IP ::1)', '2021-06-27 15:47:41', '1624783661'),
(194, 'admin', 'Thực hiện đăng nhập (Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36 IP ::1)', '2021-06-27 16:15:15', '1624785315'),
(195, 'admin', 'Thực hiện đăng nhập (Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36 IP ::1)', '2021-07-01 00:18:46', '1625073526'),
(196, 'admin', 'Thực hiện đăng nhập (Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.164 Safari/537.36 IP ::1)', '2021-07-25 09:33:33', '1627180413'),
(197, 'admin', 'Thanh toán đơn hàng #KML71628072423', '2021-08-04 17:20:23', '1628072423'),
(198, 'admin', 'Thanh toán đơn hàng #AT601628072501', '2021-08-04 17:21:41', '1628072501'),
(199, 'admin', 'Thanh toán đơn hàng #LH1S1628074674', '2021-08-04 17:57:54', '1628074674');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `momo`
--

CREATE TABLE `momo` (
  `id` int(11) NOT NULL,
  `request_id` varchar(64) CHARACTER SET utf32 COLLATE utf32_vietnamese_ci DEFAULT NULL,
  `tranId` text CHARACTER SET utf32 COLLATE utf32_vietnamese_ci DEFAULT NULL,
  `partnerId` text CHARACTER SET utf32 COLLATE utf32_vietnamese_ci DEFAULT NULL,
  `partnerName` text CHARACTER SET utf16 COLLATE utf16_vietnamese_ci DEFAULT NULL,
  `amount` text CHARACTER SET utf32 COLLATE utf32_vietnamese_ci DEFAULT NULL,
  `comment` text CHARACTER SET utf8 COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  `username` varchar(32) CHARACTER SET utf32 COLLATE utf32_vietnamese_ci DEFAULT NULL,
  `status` varchar(32) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci DEFAULT 'xuly'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `options`
--

CREATE TABLE `options` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `value` longtext COLLATE utf8_vietnamese_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `options`
--

INSERT INTO `options` (`id`, `name`, `value`) VALUES
(1, 'tenweb', 'CMSNT.CO'),
(2, 'mota', 'Shop tài khoản tự động chất lượng nhất thị trường'),
(3, 'tukhoa', 'shop clone, clone shop, mua clone, web bán clone giá rẻ, sellclone, clone gia re, clone viet, mua tai khoan, taikhoan fb, shop nick fb, via fb, shop via, via gia re'),
(4, 'logo', 'https://i.imgur.com/ZeJ8zsO.png'),
(5, 'email', ''),
(6, 'pass_email', ''),
(7, 'luuy_naptien', '<ul>\r\n	<li>Hệ thống xử lý 5s 1 thẻ.</li>\r\n	<li>Vui lòng gửi đúng mệnh giá, sai mệnh giá thực nhận mệnh giá bé nhất.</li>\r\n	<li>Ví dụ mệnh giá thực là 100k, quý khách nạp 100k thực nhận 100k.</li>\r\n	<li>Ví dụ mệnh giá thực là 100k quý khách nạp 50k thực nhận 50k.</li>\r\n	<li>Mệnh giá 10k, 20k, 30k tính thêm 3% phí.</li>\r\n</ul>\r\n'),
(10, 'luuy_napbank', 'test'),
(11, 'noidung_naptien', 'CMSNT'),
(12, 'thongbao', '<b> Thông báo cho khách hàng thay đổi trong Admin</b>'),
(13, 'anhbia', 'https://i.imgur.com/EFq5tTX.png'),
(14, 'favicon', 'https://i.imgur.com/61P2d1U.jpg'),
(15, 'ck_daily', '10'),
(16, 'doanhthu_daily', '11'),
(17, 'baotri', 'ON'),
(18, 'chinhsach', '<p><br></p>\r\n'),
(19, 'api_bank', 'nhap token bank'),
(20, 'api_momo', 'nhap token momo'),
(21, 'theme', ''),
(22, 'api_card', 'nhap api nap the'),
(23, 'ck_card', '30'),
(24, 'theme_color', '#023579'),
(25, 'theme_home', '0'),
(26, 'stt_giao_dich_gan_day', 'ON'),
(27, 'status_demo', 'OFF'),
(28, 'chinhsach_baohanh', '<h2 class=\"page-title\" style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; font-weight: 700; font-size: 23px; font-family: Roboto, \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;\"=\"\"><br></h2>'),
(29, 'sdt_momo', ''),
(30, 'name_momo', ''),
(31, 'tk_tsr', ''),
(32, 'mk_tsr', ''),
(33, 'mk2_tsr', ''),
(34, 'luuy_tsr', '<p>Nạp tiền qua thesieure.com cộng tiền ngay.</p><p>Chuyển tiền nhập đúng nội dung chuyển tiền sau đó COPY mã giao dịch tại THESIEURE.COM và nhập vào ô trên.</p>'),
(36, 'fanpage', 'https://www.facebook.com/cmsntthanh/'),
(43, 'stt_giaodichao', 'OFF'),
(44, 'files', ''),
(45, 'btnSaveOption', ''),
(46, 'right_panel', 'ON'),
(47, '', NULL),
(48, 'TypePassword', ''),
(49, 'contact', '<h2 class=\"page-title\" style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; font-weight: 700; font-size: 23px; font-family: Roboto, \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;\"=\"\"><br></h2>'),
(51, 'time_delete', '2592000'),
(52, 'script', ''),
(53, 'check_time_cron', ''),
(54, 'mk_bank', ''),
(55, 'stk_bank', ''),
(56, 'type_bank', 'Vietcombank'),
(57, 'check_time_cron_bank', '0'),
(58, 'type_buy', 'LIST'),
(59, 'recharge_min', '0'),
(60, 'display_list_login', 'ON'),
(61, 'display_sold', 'ON'),
(62, 'status_cron_momo', 'ON'),
(63, 'status_cron_bank', 'ON'),
(64, 'status_ref', 'ON'),
(65, 'ck_ref', '10'),
(66, 'status_top_nap', 'ON');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `code` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `username` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `seller` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `dichvu` blob DEFAULT NULL,
  `soluong` int(11) DEFAULT NULL,
  `sotien` int(11) DEFAULT NULL,
  `thoigian` datetime DEFAULT NULL,
  `loai` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `id_dichvu` int(11) DEFAULT NULL,
  `time` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `ip` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `orders`
--

INSERT INTO `orders` (`id`, `code`, `username`, `seller`, `dichvu`, `soluong`, `sotien`, `thoigian`, `loai`, `id_dichvu`, `time`, `ip`) VALUES
(271, 'KML71628072423', 'admin', 'admin', 0x436c6f6e6520766572792070686f6e65, 1, 100, '2021-08-04 17:20:23', 'DANH SÁCH CLONE FACEBOOK', NULL, '1628072423', '::1'),
(272, 'AT601628072501', 'admin', 'admin', 0x436c6f6e6520766572792070686f6e65, 1, 100, '2021-08-04 17:21:41', 'DANH SÁCH CLONE FACEBOOK', NULL, '1628072501', '::1'),
(273, 'LH1S1628074674', 'admin', 'admin', 0x436c6f6e6520766572792070686f6e65, 1, 100, '2021-08-04 17:57:54', 'DANH SÁCH CLONE FACEBOOK', NULL, '1628074674', '::1');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `reports`
--

CREATE TABLE `reports` (
  `id` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `dichvu` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `taikhoan` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `lydo` text COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `thoigian` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `trangthai` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `ghichu` text COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `code` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `shop` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ruttien`
--

CREATE TABLE `ruttien` (
  `id` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `ngan_hang` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `stk` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `chu_tai_khoan` text COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `sotien` int(11) DEFAULT NULL,
  `thoigian` datetime DEFAULT NULL,
  `trangthai` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `ghichu` text COLLATE utf8_vietnamese_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `ruttien`
--

INSERT INTO `ruttien` (`id`, `username`, `ngan_hang`, `stk`, `chu_tai_khoan`, `sotien`, `thoigian`, `trangthai`, `ghichu`) VALUES
(2, 'admin', 'VIETINBANK', '12124342323', 'sgasdsad', 10000, '2021-01-24 09:21:25', 'thatbai', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `taikhoan`
--

CREATE TABLE `taikhoan` (
  `id` int(11) NOT NULL,
  `dichvu` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `code` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `chitiet` longtext COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `trangthai` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `lydo` text COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `khieunai` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `thoigianmua` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `taikhoan`
--

INSERT INTO `taikhoan` (`id`, `dichvu`, `code`, `chitiet`, `trangthai`, `lydo`, `khieunai`, `thoigianmua`) VALUES
(2352002, '13', NULL, 'te', 'LIVE', NULL, NULL, NULL),
(2352003, '19', 'KML71628072423', '1', 'LIVE', NULL, NULL, '2021-08-04 17:20:23'),
(2352004, '19', NULL, '100051617800647|300780|		Didier Kabong | DONE', 'DIE', NULL, NULL, NULL),
(2352005, '19', 'AT601628072501', '100051618128955|030381|		Dilan | DONE', 'LIVE', NULL, NULL, '2021-08-04 17:21:41'),
(2352006, '19', 'LH1S1628074674', '100051618151634|251280|		Pasisa Mat Sisa Itin | DONE', 'LIVE', NULL, NULL, '2021-08-04 17:57:54'),
(2352007, '19', NULL, '100051618217207|121279|		Yathy Robert | DONE', 'LIVE', NULL, NULL, NULL),
(2352008, '19', NULL, '100051618548821|17012007|	Florina Florina | DONE', 'LIVE', NULL, NULL, NULL),
(2352009, '19', NULL, '100051618670356|101080|		Jemmy Andreas | DONE', 'LIVE', NULL, NULL, NULL),
(2352010, '19', NULL, '100051620463415|111993|		Dadi | DONE', 'LIVE', NULL, NULL, NULL),
(2352011, '19', NULL, '100051620495226|16021993|	Rena Salamina Live | DONE', 'LIVE', NULL, NULL, NULL),
(2352012, '19', NULL, '100051620529100|722003|		Dev Mahato | DONE', 'LIVE', NULL, NULL, NULL),
(2352013, '19', NULL, '100051620529929|190586|		Hervé Mavoungou | DONE', 'LIVE', NULL, NULL, NULL),
(2352014, '19', NULL, '100051620676094|12121977|	Avinash Bhagatkar | DONE', 'LIVE', NULL, NULL, NULL),
(2352015, '19', NULL, '100051622688111|17111996|	Javed Shaikh | DONE', 'LIVE', NULL, NULL, NULL),
(2352016, '19', NULL, '100051622778700|051200|		Jesus Messie | DONE', 'LIVE', NULL, NULL, NULL),
(2352017, '19', NULL, '100051632258525|09061971|	Joani Sebastião | DONE', 'LIVE', NULL, NULL, NULL),
(2352018, '19', NULL, '100051632678797|26101978|	Ronice Sousa | DONE', 'LIVE', NULL, NULL, NULL),
(2352019, '19', NULL, '100051632792324|241279|		Vani Brito | DONE', 'LIVE', NULL, NULL, NULL),
(2352020, '19', NULL, '100051632801798|442001|		Syka Reka | DONE', 'LIVE', NULL, NULL, NULL),
(2352021, '19', NULL, '100051638527560|08091992|	Novyan Oratmas | DONE', 'LIVE', NULL, NULL, NULL),
(2352022, '19', NULL, '100051638763377|17052005|	Laure Ngo Nonga | DONE', 'LIVE', NULL, NULL, NULL),
(2352023, '19', NULL, '100051638859513|140370|		Sus Edie | DONE', 'LIVE', NULL, NULL, NULL),
(2352024, '19', NULL, '100051638887041|11112004|	Diemer Massdei | DONE', 'LIVE', NULL, NULL, NULL),
(2352025, '19', NULL, '100051638976266|010386|		Reni Yusnita Reni | DONE', 'LIVE', NULL, NULL, NULL),
(2352026, '19', NULL, '100051639062943|30071996|	Domingo Garcia | DONE', 'LIVE', NULL, NULL, NULL),
(2352027, '19', NULL, '100051639308648|111973|Ferdinand Chihimbire Kalapi | DONE', 'LIVE', NULL, NULL, NULL),
(2352028, '19', NULL, '100051639575757|15031983|	Kowor Cikcik | DONE', 'LIVE', NULL, NULL, NULL),
(2352029, '19', NULL, '100051639664663|020496Nursafitri Fitri | DONE', 'LIVE', NULL, NULL, NULL),
(2352030, '19', NULL, '100051639998164|121298|Abi Radit | DONE', 'LIVE', NULL, NULL, NULL),
(2352031, '19', NULL, '100050528753376|ducclone174|c_user=100050528753376; xs=12%3ALrnLlIBl2ueiDQ%3A2%3A1588974860%3A-1%3A-1;useragent=TW96aWxsYS81LjAgKFdpbmRvd3MgTlQgMTAuMDsgV09XNjQpIEFwcGxlV2ViS2l0LzUzNy4zNiAoS0hUTUwsIGxpa2UgR2Vja28pIENocm9tZS83My4wLjM2ODMuMCBTYWZhcmkvNTM3LjM2', 'LIVE', NULL, NULL, NULL),
(2352032, '19', NULL, '100050541142816|ducclone369|c_user=100050541142816; xs=34%3AikoprpEqIYDrYQ%3A2%3A1590003584%3A-1%3A-1; useragent=TW96aWxsYS81LjAgKFdpbmRvd3MgTlQgMTAuMDsgV09XNjQpIEFwcGxlV2ViS2l0LzUzNy4zNiAoS0hUTUwsIGxpa2UgR2Vja28pIENocm9tZS83My4wLjM2ODMuMCBTYWZhcmkvNTM3LjM2', 'LIVE', NULL, NULL, NULL),
(2352033, '19', NULL, '100050575971643|ducclone691|c_user=100050575971643; xs=8%3AjejhJlittPSA5Q%3A2%3A1589538627%3A-1%3A-1; useragent=TW96aWxsYS81LjAgKFdpbmRvd3MgTlQgMTAuMDsgV09XNjQpIEFwcGxlV2ViS2l0LzUzNy4zNiAoS0hUTUwsIGxpa2UgR2Vja28pIENocm9tZS83My4wLjM2ODMuMCBTYWZhcmkvNTM3LjM2', 'LIVE', NULL, NULL, NULL),
(2352034, '19', NULL, '100050603539425|ducclone386|c_user=100050603539425; xs=34%3AqZBOviO-E7zULQ%3A2%3A1589761860%3A-1%3A-1; useragent=TW96aWxsYS81LjAgKFdpbmRvd3MgTlQgMTAuMDsgV09XNjQpIEFwcGxlV2ViS2l0LzUzNy4zNiAoS0hUTUwsIGxpa2UgR2Vja28pIENocm9tZS83My4wLjM2ODMuMCBTYWZhcmkvNTM3LjM2', 'LIVE', NULL, NULL, NULL),
(2352035, '19', NULL, '100050630086542|ducclone46|c_user=100050630086542; xs=46%3AEorq01Pr1gMiAw%3A2%3A1588539651%3A-1%3A-1; useragent=TW96aWxsYS81LjAgKFdpbmRvd3MgTlQgMTAuMDsgV09XNjQpIEFwcGxlV2ViS2l0LzUzNy4zNiAoS0hUTUwsIGxpa2UgR2Vja28pIENocm9tZS83My4wLjM2ODMuMCBTYWZhcmkvNTM3LjM2', 'LIVE', NULL, NULL, NULL),
(2352036, '19', NULL, '100050774350887|ducclone162|useragent=TW96aWxsYS81LjAgKFdpbmRvd3MgTlQgMTAuMDsgV09XNjQpIEFwcGxlV2ViS2l0LzUzNy4zNiAoS0hUTUwsIGxpa2UgR2Vja28pIENocm9tZS84MS4wLjQwNDQuMTM4IFNhZmFyaS81MzcuMzY%3D2E4K QH23 FC42 4SN3 RJJW XFQJ QEG2 XPDX', 'LIVE', NULL, NULL, NULL),
(2352037, '19', NULL, '100050787789798|ducclone201|useragent=TW96aWxsYS81LjAgKFdpbmRvd3MgTlQgMTAuMDsgV09XNjQpIEFwcGxlV2ViS2l0LzUzNy4zNiAoS0hUTUwsIGxpa2UgR2Vja28pIENocm9tZS84MS4wLjQwNDQuMTM4IFNhZmFyaS81MzcuMzY%3DBLVD I7SY ZIGH MF6O OI4P EQJY 5NGB JZSG', 'LIVE', NULL, NULL, NULL),
(2352038, '19', NULL, '100051520396899|HotanBoy0819|datr=xzGxXmMBuQL1upGk3qBcrMkj; sb=xzGxXp8cUzUIs1Jhp99oasTP; locale=en_GB; c_user=100051520396899; xs=41%3AgLxHIVddQSbRBg%3A2%3A1590231746%3A-1%3A-1; spin=r.1002161019_b.trunk_t.1590231748_s.1_v.2_; m_pixel_ratio=1; fr=7yl8GXYb45y7gZtRU.AWUHWGgpItc3Nw1QAENKaYPI6cE.BesTHH.Dx.AAA.0.0.BeyQLN.AWX7Kz1Q; wd=1004x680; x-referer=eyJyIjoiL2NvbmZpcm1lbWFpbC5waHA%2FZW1haWxfY2hhbmdlZCZzb2Z0PWhqayIsImgiOiIvY29uZmlybWVtYWlsLnBocD9lbWFpbF9jaGFuZ2VkJnNvZnQ9aGprIiwicyI6Im0ifQ%3D%3D; presence=EDvF3EtimeF1590231808EuserFA21B51520396899A2EstateFDutF1590231808605CEchF_7bCC', 'LIVE', NULL, NULL, NULL),
(2352039, '19', NULL, '100051540585424|RDPhucNguyen0708952952|c_user=100051540585424=.facebook.com;datr=r3KqXk7JK2TUhp0NRIawL86C=.facebook.com;xs=22%3APEV7R11pRp8XuQ%3A2%3A1590211882%3A-1%3A-1=.facebook.com;fr=3NslYDUIgHz6GTv2u.AWWwMgXjfxMSGA020Lq4oK0TpOk.BeqnKv.QD.AAA.0.0.BeyLUo.AWWBQM62=.facebook.com;sb=yHKqXrTO7ED7jFlrFss258ga=.facebook.com;', 'LIVE', NULL, NULL, NULL),
(2352040, '19', NULL, '100051540645615|HotanBoy0849|datr=zbWwXmrE7c-_3saRBWJtTlW-; sb=zbWwXj4ko35PKWEHHii0Gp5a; c_user=100051540645615; xs=6%3A0cxzOiEgS9QROA%3A2%3A1590222952%3A-1%3A-1; fr=17yCJxyI3NoGYQdwo.AWWme_CPyCKt3f-xvvYCcHOrC0w.BesLXN.pN.AAA.0.0.BeyOBm.AWXzdgSP', 'LIVE', NULL, NULL, NULL),
(2352041, '19', NULL, '100051540705644|RDPhucNguyen0708952952|c_user=100051540705644=.facebook.com;datr=dRibXkFEY9Y0qQJ0xNd_18u9=.facebook.com;xs=11%3AJsS47E2k9ZIwFg%3A2%3A1590218767%3A-1%3A-1=.facebook.com;fr=5lxYCs0bozPCGHnY7.AWXOtQGAClByxOj2ZiNBLub9Wn0.Bemxh1.l9.AAA.0.0.BeyNAJ.AWWXA_ww=.facebook.com;sb=iBibXr1etu1qVnt02fK9hVI3=.facebook.com;', 'LIVE', NULL, NULL, NULL),
(2352042, '19', NULL, '100051540736070|RDPhucNguyen0708952952|c_user=100051540736070=.facebook.com;datr=GTqqXgzVZXjMAapppXuEl3r2=.facebook.com;xs=38%3AgShJlWov8UuXBQ%3A2%3A1590223154%3A-1%3A-1=.facebook.com;fr=3bsXT8BLtzNqg4JAu.AWX7fEQ-vhL3A2PZCvq65Dd3TqE.BeqjoZ.d0.AAA.0.0.BeyOEx.AWXcM-sp=.facebook.com;sb=LTqqXqm-9bGctl-nh8REsm6r=.facebook.com;', 'LIVE', NULL, NULL, NULL),
(2352043, '19', NULL, '100051540766377|HotanBoy0706|datr=_TKxXjGlpule2cArUI6wzcCH; sb=_TKxXq5tnqcwmMylbC3gFg1G; locale=en_GB; c_user=100051540766377; xs=39%3AVyJFBANjjipnqA%3A2%3A1590239844%3A-1%3A-1; spin=r.1002161043_b.trunk_t.1590239846_s.1_v.2_; m_pixel_ratio=1; fr=7PrTQzTqxIZKnN3Sm.AWUohbcl2atHiyIsQnzR-z8k08g.BesTL9.Js.AAA.0.0.BeySJr.AWXrJeP5; wd=1004x680; x-referer=eyJyIjoiL2NvbmZpcm1lbWFpbC5waHA%2FZW1haWxfY2hhbmdlZCZzb2Z0PWhqayIsImgiOiIvY29uZmlybWVtYWlsLnBocD9lbWFpbF9jaGFuZ2VkJnNvZnQ9aGprIiwicyI6Im0ifQ%3D%3D; presence=EDvF3EtimeF1590239877EuserFA21B51540766377A2EstateFDutF1590239877210CEchF_7bCC', 'LIVE', NULL, NULL, NULL),
(2352044, '19', NULL, '100051540795140|RDPhucNguyen0708952952|c_user=100051540795140=.facebook.com;datr=qfedXhnWUxFQdqDq7iPwN_8M=.facebook.com;xs=25%3ARNKm4D9QWJn52g%3A2%3A1590193187%3A-1%3A-1=.facebook.com;fr=5YwxeMnIjGORHvdaJ.AWXJXpTDXueRJYRNtIZNv7Z-iKM.Benfeg.Ru.AAA.0.0.BeyGwd.AWU1elFA=.facebook.com;sb=yvedXtvtSeTuMN50mrxWf98D=.facebook.com;', 'LIVE', NULL, NULL, NULL),
(2352045, '19', NULL, '100051540825338|RDPhucNguyen0708952952|c_user=100051540825338=.facebook.com;datr=UZybXqiKWj1x0eI7wUXR2hG8=.facebook.com;xs=13%3AYQpEsOEKqSR0Sw%3A2%3A1590207025%3A-1%3A-1=.facebook.com;fr=1i7FBABef9B3HaZcE.AWUYyihkMWhvvPYnWFYbXB7TdPM.Bem5xR.SB.AAA.0.0.BeyKIs.AWXGcYQ_=.facebook.com;sb=XpybXrXhsyUObbNAEq0G5hv8=.facebook.com;', 'LIVE', NULL, NULL, NULL),
(2352046, '19', NULL, '100051540914633|RDPhucNguyen0708952952|c_user=100051540914633=.facebook.com;datr=lOuZXoh10YGQ4ZVh4r8vF0UA=.facebook.com;xs=7%3AH_mFiMExB5Cs-g%3A2%3A1590164259%3A-1%3A-1=.facebook.com;fr=5zqhGCccqAbUx4oNW.AWX1DSzWr5pjaBrtT8wqc3K2rSM.BemeuU.D5.AAA.0.0.Bex_uB.AWVL3wGt=.facebook.com;sb=pOuZXm7TY5hkL6U9not1wxrP=.facebook.com;', 'LIVE', NULL, NULL, NULL),
(2352047, '19', NULL, '100051570464407|RDPhucNguyen0708952952|c_user=100051570464407=.facebook.com;datr=SqCgXm9tKlvKwXaE4BuyaBvB=.facebook.com;xs=2%3ALLGhRaww1ShTSA%3A2%3A1590207919%3A-1%3A-1=.facebook.com;fr=5uYzr3qaz2c6S7Fjp.AWUTKVBV4xbIH8kj_6wMJO2sYSU.BeoKBK.Gs.AAA.0.0.BeyKWq.AWX20Eff=.facebook.com;sb=W6CgXmaTy6Mfpy8DeRukc8lC=.facebook.com;', 'LIVE', NULL, NULL, NULL),
(2352048, '19', NULL, '100051570554115|RDPhucNguyen0708952952|c_user=100051570554115=.facebook.com;datr=atGbXhiyxGavqmBAWlCOtvrK=.facebook.com;xs=16%3A_GbPfsobwY2Q8Q%3A2%3A1590196743%3A-1%3A-1=.facebook.com;fr=5pnbvRExab9cN4l37.AWUMix7A9RGbULcbgjgOLZe79_U.Bem9Fq.nZ.AAA.0.0.BeyHoC.AWXlg5GN=.facebook.com;sb=etGbXnHvEvmfuuKCNLr5zLga=.facebook.com;', 'LIVE', NULL, NULL, NULL),
(2352049, '19', NULL, '100051570554345|HotanBoy0601|datr=OCWmXoxJszWlPP1dJe1e6IzK; sb=ZKHIXnhdUWgPlA5MI-owBXKL; c_user=100051570554345; xs=10%3AkQ7jKgS1dbZ-AA%3A2%3A1590206846%3A-1%3A-1; fr=1x0bo3pun9dt1B6FI.AWX7eZwsejuivvqUuBsgkQUnJ2o.BepiUy._q.AAA.0.0.BeyKF9.AWWldg8N', 'LIVE', NULL, NULL, NULL),
(2352050, '19', NULL, '100051570554375|HotanBoy0599|datr=aCWmXnoH1GokdLn8VjyyWqcX; sb=C6XIXtS0-GyDuZJhRps_26Pn; c_user=100051570554375; xs=5%3Ae9ZjS7Im-OmpWQ%3A2%3A1590207802%3A-1%3A-1; fr=1wlBM5kqFyDE1sSfG.AWUwBxb-mFq_OoeI-AgtIUIg2pQ.BepiVi.1_.AAA.0.0.BeyKU4.AWUWzTwF', 'LIVE', NULL, NULL, NULL),
(2352051, '19', NULL, '100051570643895|RDPhucNguyen0708952952|c_user=100051570643895=.facebook.com;datr=LeajXh6NQcXWWnYwdqkIdjCx=.facebook.com;xs=4%3ALfLDUj8WjnNKug%3A2%3A1590190018%3A-1%3A-1=.facebook.com;fr=5MyLzlsU3l06XFYXk.AWWYAY0Y_GdqFjO8563VPG8il0w.Beo-Yt.Oy.AAA.0.0.BeyF-_.AWVyuwbE=.facebook.com;sb=P-ajXpaqHCcDnC0FVjhADJT1=.facebook.com;', 'LIVE', NULL, NULL, NULL),
(2352052, '19', NULL, '100050927136663|ducclone481|WUSY LA3N RDMS EU7B 62F7 TGWI S3MH KU43', 'LIVE', NULL, NULL, NULL),
(2352053, '19', NULL, '100050927191267|ducclone264|VTW4 QYO5 EZQ2 ABA5 G65F 4HKO PCFN 4B7U', 'LIVE', NULL, NULL, NULL),
(2352054, '19', NULL, '100050927375466|ducclone496|JSWZ KENG LBLJ IV6U JUMA MQKZ 4I5X ZX7B', 'LIVE', NULL, NULL, NULL),
(2352055, '19', NULL, '100050927403945|ducclone686|5KP2 YHOC THS4 3LCF QH6Q XDVA 33RP V6RU', 'LIVE', NULL, NULL, NULL),
(2352056, '19', NULL, '100050927404438|ducclone988|BE2C C3C5 CFDR SZJR 6S3A V76H 42EQ TPLE', 'LIVE', NULL, NULL, NULL),
(2352057, '19', NULL, '100050927586130|ducclone181|Y2TQ TR7Q S6VQ 4VBE C4UZ BZNN Y2OO FVLT', 'LIVE', NULL, NULL, NULL),
(2352058, '19', NULL, '100050927671385|ducclone122|LCKH COOQ P765 VEWD TIM6 CAVL UCYQ 375R', 'LIVE', NULL, NULL, NULL),
(2352059, '19', NULL, '100050927673003|ducclone539|JHXU QNEE BJD4 AVBR VA3H NKIT 4OVT VDSN', 'LIVE', NULL, NULL, NULL),
(2352060, '19', NULL, '100050927791559|ducclone368|2EZD OIFA NNUW NL2C ERK2 3L2W HUEX SOKU', 'LIVE', NULL, NULL, NULL),
(2352061, '19', NULL, '100050927886037|ducclone314|QD57 JD5P 3YDZ HBZU KD35 NK3V I57Z VCNT', 'LIVE', NULL, NULL, NULL),
(2352062, '19', NULL, '100050928066888|ducclone952|ONFT GPQJ RVRF 7FQM U2OB EPJH NDI4 FMXR', 'LIVE', NULL, NULL, NULL),
(2352063, '19', NULL, '100050928124618|ducclone269|424A V356 YOAR B6K7 4ZKR BAVE QEPN A3JT', 'LIVE', NULL, NULL, NULL),
(2352064, '19', NULL, '100050928274289|ducclone342|ENE5 24AS 3MX4 XWKJ B7FE IKQE KCQT V6ZO', 'LIVE', NULL, NULL, NULL),
(2352065, '19', NULL, '100050928601283|ducclone597|ISFV XJOX ZEXB X2LT VA43 5QQR UUD4 6SWT', 'LIVE', NULL, NULL, NULL),
(2352066, '19', NULL, '100050928605516|ducclone518|IM5X LZWL 3LXR KVI4 JOUT ALNQ YHYG PFRB', 'LIVE', NULL, NULL, NULL),
(2352067, '19', NULL, '100050928691422|ducclone947|GBTL LEF3 VAXY RGEL QPVI JBI2 N4A4 EKUM', 'LIVE', NULL, NULL, NULL),
(2352068, '19', NULL, '100050928877842|ducclone459|A6U2 JSIZ NZW6 JCQX GTOY QY2L PRBY ZIMO', 'LIVE', NULL, NULL, NULL),
(2352069, '19', NULL, '100050928901605|ducclone985|NMYE 25H7 S4S4 HVKQ DEVD DJ7S ONZQ TDYX', 'LIVE', NULL, NULL, NULL),
(2352070, '19', NULL, '100050928964779|ducclone492|D5PW TNHZ IT75 OCDH CN4B I5JY L6RW EQME', 'LIVE', NULL, NULL, NULL),
(2352071, '19', NULL, '100050928991001|ducclone92|6CMS UBUY CCJK OKL6 SNDQ BXQJ 4NMT O4KJ', 'LIVE', NULL, NULL, NULL),
(2352072, '19', NULL, '100050929024576|ducclone216|SSG2 KIKK EGKF 53MV CKZN QSOU FZ7B BPUY', 'LIVE', NULL, NULL, NULL),
(2352073, '19', NULL, '100050929144754|ducclone933|VNLM 43PC C4ID YINC BVJ3 VTRH U3EA 74VF', 'LIVE', NULL, NULL, NULL),
(2352074, '19', NULL, '100050929204482|ducclone631|EP2L TIEO UKAA Y6NF B22C BGRU HY5D UPHJ', 'LIVE', NULL, NULL, NULL),
(2352075, '19', NULL, '100050929321615|ducclone951|SIGO QE5U VZNJ NCBX BLYP UMLS ZG3M XXJD', 'LIVE', NULL, NULL, NULL),
(2352076, '19', NULL, '100050929444613|ducclone856|F7T3 W2RO PJ53 VL4M U7YJ AOA7 E5WG N7XL', 'LIVE', NULL, NULL, NULL),
(2352077, '19', NULL, '100050931450710|ducclone991|A2SI AXYT ZYRA E25Y T7HM WB6Q EV33 2BK3', 'LIVE', NULL, NULL, NULL),
(2352078, '19', NULL, '100050931486259|ducclone681|FAXR FHKX PECO SCJP GVGM OLEJ C2JA TQS7', 'LIVE', NULL, NULL, NULL),
(2352079, '19', NULL, '100050931513554|ducclone763|NZEJ H2K5 DYVR 5A7X MJEF 32QD FTGK 6TWA', 'LIVE', NULL, NULL, NULL),
(2352080, '19', NULL, '100049249292866|janafletcher3559|JQAS AESX AC7E 6WTT EN7D LQSX SWOH TSLY', 'LIVE', NULL, NULL, NULL),
(2352081, '19', NULL, '100050363622625|khanhngo2804|CP6D NJZR JF23 LLEE 3ILT DTY6 LW37 G7U6', 'LIVE', NULL, NULL, NULL),
(2352082, '19', NULL, '100050528884613|quyenngo7248|DC6N UUZC CCUM SGEY N5QL 7PWT WQGC 3QPY', 'LIVE', NULL, NULL, NULL),
(2352083, '19', NULL, '100050126692848|thuanho6160|CWOW JUDE YRLU ZUCL CJRQ SGID IUOP OBWF', 'LIVE', NULL, NULL, NULL),
(2352084, '19', NULL, '100050097623534|trucvo2511|N4LO 4LPP NEL7 BLXX 4FUZ MZXA PU56 OV3U', 'LIVE', NULL, NULL, NULL),
(2352085, '19', NULL, '100050175770298|tandang0455|NGRW 5TN6 4RY5 VYMA RDNE LD5B CCYC 6MUD', 'LIVE', NULL, NULL, NULL),
(2352086, '19', NULL, '100050609431237|khanhvu2015|YYZF 32T3 N4L6 YHV2 3VV4 MQP7 4LOR LNL2', 'LIVE', NULL, NULL, NULL),
(2352087, '19', NULL, '100050261026376|cucbui5991|B7NO BUAI QN5O PUCE KDDP 5KQY VRLA DCE7', 'LIVE', NULL, NULL, NULL),
(2352088, '19', NULL, '100050577092857|thanhnguyen0366|7QUI PDWK Y5Z4 WIH2 AVZL IKFC ZHJN QFSW', 'LIVE', NULL, NULL, NULL),
(2352089, '19', NULL, '100050356662639|ngocphan6046|CVNW BYRT 4ML7 QSDX AK6W JWD6 K3P6 EMPQ', 'LIVE', NULL, NULL, NULL),
(2352090, '19', NULL, '100050331133597|phuongphan9615|VVIC GXIC CGNQ FMO2 KBZE 7R6K HM3K GMHJ', 'LIVE', NULL, NULL, NULL),
(2352091, '19', NULL, '100050625180590|tuongbui9296|ARUV RCZ7 SDCX CXDA 5CMM O3AQ HD5B B2MQ', 'LIVE', NULL, NULL, NULL),
(2352092, '19', NULL, '100050332663619|tuando6142|YXVB FGVK AFB2 HHVY 663T 5GNQ IUDZ ZTCZ', 'LIVE', NULL, NULL, NULL),
(2352093, '19', NULL, '100050395991145|khanhle8625|Z3TG QV4Q KPBB JJSZ D3HK VJTK 7E3C 4BDR', 'LIVE', NULL, NULL, NULL),
(2352094, '19', NULL, '100050493936847|khanhle3208|I4V3 3HVT GUW2 KJTF 4LSK TSLE 5F36 ISEV', 'LIVE', NULL, NULL, NULL),
(2352095, '19', NULL, '100050573732955|phuongvo4425|L5YU YYX4 BTT5 YAGP L572 LHOE 33HF VSLV', 'LIVE', NULL, NULL, NULL),
(2352096, '19', NULL, '100050502156134|sendo4812|KIT5 N522 JJRO QGCZ EZ6H UIX6 F37J 2UDC', 'LIVE', NULL, NULL, NULL),
(2352097, '19', NULL, '100050420529974|minhvu8688|ULE5 V2BC F47M 6RHW JUFT AJ6A NCQQ HRGR', 'LIVE', NULL, NULL, NULL),
(2352098, '19', NULL, '100050252746677|thuannguyen0423|U33R VUF5 R6CJ ZS6H Z3ZA IWYY FZEB NM3F', 'LIVE', NULL, NULL, NULL),
(2352099, '19', NULL, '100050260936117|cucnguyen0419|SN4L PIY6 YZXD FJCT HKWM T5YE EZSF W7VV', 'LIVE', NULL, NULL, NULL),
(2352100, '19', NULL, '100050118262227|datpham1786|QDLE 2QUZ 3DGN VKUT TOL7 23BU ECWM JWY5', 'LIVE', NULL, NULL, NULL),
(2352101, '19', NULL, '100050580182634|thuvo9576|F6AE POPK J42W RXFG I42J TMI6 5456 4GDF', 'LIVE', NULL, NULL, NULL),
(2352102, '19', NULL, '100050525285006|datpham5072|U5TI HLPS FO65 ABMV 5CSR HVSG 6DW2 6XJG', 'LIVE', NULL, NULL, NULL),
(2352103, '19', NULL, '100050164760455|bichngo6764|SWRC OI7E JT3U ILJX UXRA GOXI POWW M732', 'LIVE', NULL, NULL, NULL),
(2352104, '19', NULL, '100050250046787|nhatvo2427|4RHH FYM3 JXOR RUCO OCVR 5TM6 2JLG JNTK', 'LIVE', NULL, NULL, NULL),
(2352105, '19', NULL, '100050575742831|thuanho7911|B76G RIZR A5AT NCYH 2VL4 VPOV 7SQX NNZT', 'LIVE', NULL, NULL, NULL),
(2352106, '19', NULL, '100050124952498|khoido1240|I7MJ CHLO GLEW EEFL HDLD NJ3F GZQI PBUK', 'LIVE', NULL, NULL, NULL),
(2352107, '19', NULL, '100050557803595|senvo2678|WQ3W MYVM 5SXY LEGO ZWF5 AWYK 7AVW B4OV', 'LIVE', NULL, NULL, NULL),
(2352108, '19', NULL, '100050139921673|thuyho5880|4T2K FFNA TZQN AFUP BLZ6 P6CV YLME WJDQ', 'LIVE', NULL, NULL, NULL),
(2352109, '19', NULL, '100050570493051|khanhhoang5655|6TWL XIOM HINL W5AA EWGB 4HKA AE4Z 7OWQ', 'LIVE', NULL, NULL, NULL),
(2352110, '19', NULL, '100050536324405|tuongle1012â|LGQV XMQM KDKQ HWEV 72VB 33RW GJWQ S6OD', 'LIVE', NULL, NULL, NULL),
(2352111, '19', NULL, '100050534824443|phuongvu6158|GRPZ PJET 47FD AXJ2 2J43 6TAR G7AG 6PPI', 'LIVE', NULL, NULL, NULL),
(2352112, '19', NULL, '100050334253802|tuongdo5163|QALO HYOB IU5L XJUX ZALB 6PSJ 527I YZXE', 'LIVE', NULL, NULL, NULL),
(2352113, '19', NULL, '100050246056910|yenduong8616|K2H2 K2Y6 OU35 QKRB 56TL CIYQ BIWT W347', 'LIVE', NULL, NULL, NULL),
(2352114, '19', NULL, '100050305904394|datduong5721|FNXE SUER PAL6 2KG6 7Y6R 73ZY Z4AK TRKK', 'LIVE', NULL, NULL, NULL),
(2352115, '19', NULL, '100050629200336|tuyenle4586|I2VG BNX5 ITMM AVJ5 CUL5 OEKO YUBV RZB3', 'LIVE', NULL, NULL, NULL),
(2352116, '19', NULL, '100050109112813|khanhngo4679|D7GM IKY3 ZJW2 UVTM PPPP 5CQS 2YX7 RRBR', 'LIVE', NULL, NULL, NULL),
(2352117, '19', NULL, '100050481308531|tuyetho1791|AA6F RKVU MYQX WRMU VRLV AQMX UEGD TPMQ', 'LIVE', NULL, NULL, NULL),
(2352118, '19', NULL, '100050406310524|thudang7078|GLPO EQTH VA4E CIJS VA2J 25XZ 6EFV 3JX4', 'LIVE', NULL, NULL, NULL),
(2352119, '19', NULL, '100050420229955|kieuphan6928|OSE3 MUTR KTKG EVJK 77PX ASTZ RZVE 5IJC', 'LIVE', NULL, NULL, NULL),
(2352120, '19', NULL, '100050511065778|hoaiduong2814|JOQW N3DP IDCH LT67 2ABY JYRC DZFH IQYJ', 'LIVE', NULL, NULL, NULL),
(2352121, '19', NULL, '100050389361368|tuanngo6982|IKKR YHLC J76Z TLZX LIQM YHSS AELV 555O', 'LIVE', NULL, NULL, NULL),
(2352122, '19', NULL, '100050289734796|huongnguyen3160|6RMT ZLUR VJHT HZ2Z 6HPV VYOK X2EX AGEJ', 'LIVE', NULL, NULL, NULL),
(2352123, '19', NULL, '100050264656053|baonguyen0477|4ED2 B5D3 5PRP RA4H L62W X77E 4MUG AN5F', 'LIVE', NULL, NULL, NULL),
(2352124, '19', NULL, '100050626260456|hoaihuynh4406|UO5T MGGD MN6D 2Y73 D5A3 RNUU WOOE YZOS', 'LIVE', NULL, NULL, NULL),
(2352125, '19', NULL, '100050089673741|nhatle1447|YQMC ZE6V EL5J JF4C C5GH ZCF6 PGQK RUNQ', 'LIVE', NULL, NULL, NULL),
(2352126, '19', NULL, '100050134252026|baohoang8714|D2JV MA7N M5RK Y3PX NJYC 7BXT Z7DX EDPO', 'LIVE', NULL, NULL, NULL),
(2352127, '19', NULL, '100050275275514|thanhbui4255|Q7HA 7VAF REKT 6VJV XSR6 6E5K ZBDC RIUP', 'LIVE', NULL, NULL, NULL),
(2352128, '19', NULL, '100050465887894|giahuynh9782|3RPN F4B4 YTCM EW47 J7DZ NIDR ZK43 DS2G', 'LIVE', NULL, NULL, NULL),
(2352129, '19', NULL, '100050290815017|hoaiho4583|C5KS BD23 QFCJ ELIH EQFH JYHH KTA3 XOXV', 'LIVE', NULL, NULL, NULL),
(2352130, '19', NULL, '100050633250074|tuyetle2330|ODGJ F3KA 3J77 S6WE DEEW 442J CHFG YO2F', 'LIVE', NULL, NULL, NULL),
(2352131, '19', NULL, '100050393470759|baobui7251|IFI3 AVRL DVFI ZFN3 BV6T F5G4 HIUB VQJ7', 'LIVE', NULL, NULL, NULL),
(2352132, '19', NULL, '100050508695631|lyngo5810|YL2K WNGI LDW5 H2XU EZDS IZGV KNAR DEEW', 'LIVE', NULL, NULL, NULL),
(2352133, '19', NULL, '100050544753847|tannguyen1231|GFHZ 5VLI S2OU WVTK QEDC 7EDT CRCR 7PMQ', 'LIVE', NULL, NULL, NULL),
(2352134, '19', NULL, '100050342443423|giaduong3509|B7SE QWYS YTU7 F3YR BJRG QOUT CYIJ OQ7X', 'LIVE', NULL, NULL, NULL),
(2352135, '19', NULL, '100050229049046|thuyhuynh5923|ZVWH MD2E NZ6J 7DBF 7BGH QHKL J4GT GKYF', 'LIVE', NULL, NULL, NULL),
(2352136, '19', NULL, '100050331253566|khanhvu4665|HRV6 RHDR KIFD 5G2Q IODO HVHI H4JE 5VRU', 'LIVE', NULL, NULL, NULL),
(2352137, '19', NULL, '100050625930483|quyenbui9603|5GNK GL6L EVM7 KTZ2 RZQW GTUU QAYB IDYG', 'LIVE', NULL, NULL, NULL),
(2352138, '19', NULL, '100050533894425|thaongo1285|64NH 6YXY 3B5N 6QF4 56QD 4Q2G MQBI ANG6', 'LIVE', NULL, NULL, NULL),
(2352139, '19', NULL, '100050647050775|khanhhuynh9035|K52J BQG2 FMMW ZIOR BN65 ZLEY LPIY MJ2A', 'LIVE', NULL, NULL, NULL),
(2352140, '19', NULL, '100050494057827|nhatvo0660|PBGT LZKY DA7N EZIK 7TD2 4CKT S2NC CF4L', 'LIVE', NULL, NULL, NULL),
(2352141, '19', NULL, '100050437780197|thuho8853|WVRW VN7A 3JMU HMGP TOI4 R56Q NDUX 2U4I', 'LIVE', NULL, NULL, NULL),
(2352142, '19', NULL, '100050576284064|thaovo8293|KW2N EZYU 5GZI Z6QO GASN HO62 EMCY PZEV', 'LIVE', NULL, NULL, NULL),
(2352143, '19', NULL, '100050626771821|yendang8745|HYKI MAFQ BBUQ 5JDZ JSS3 6HFU S7LV J4QD', 'LIVE', NULL, NULL, NULL),
(2352144, '19', NULL, '100050419241498|thaoduong5495|YHTH A53L SG5A OA23 4XZF TDWQ 7NS4 TLVX', 'LIVE', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `thesieure`
--

CREATE TABLE `thesieure` (
  `id` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `magiaodich` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `sotien` int(11) DEFAULT NULL,
  `noidung` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  `status` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `message` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `token`
--

CREATE TABLE `token` (
  `id` int(11) NOT NULL,
  `token` text COLLATE utf8_vietnamese_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `token` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `money` int(11) NOT NULL DEFAULT 0,
  `level` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `banned` int(11) NOT NULL DEFAULT 0,
  `createdate` datetime DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `ref` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `ref_money` int(11) DEFAULT 0,
  `daily` int(11) DEFAULT 0,
  `otp` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `ip` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `UserAgent` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `device` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `chietkhau` float DEFAULT 0,
  `time` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `chitieu` int(11) NOT NULL DEFAULT 0,
  `total_money` int(11) NOT NULL DEFAULT 0,
  `phone` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `fullname` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `used_money` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `token`, `money`, `level`, `banned`, `createdate`, `email`, `ref`, `ref_money`, `daily`, `otp`, `ip`, `UserAgent`, `device`, `chietkhau`, `time`, `chitieu`, `total_money`, `phone`, `fullname`, `used_money`) VALUES
(1, 'admin', 'admin', 'ZEgeLCYXQVyswWDankcJTbihxumRKofdPMABGzOpqUtHajrNvFIlS', 199999700, 'admin', 0, '2021-01-20 08:38:05', '', '', 0, 0, '', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.164 Safari/537.36', NULL, 0, NULL, 0, 200000000, '0947838128', '', NULL),
(7, 'aaaaaaaa', 'aaaaaaaa', 'UygVsbBratcRIPuXkNoHjOJQAWYpZnilfmGTqKLxzhCEvwFSedDM', 0, NULL, 0, '2021-07-25 09:33:05', NULL, '', 0, 0, NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.164 Safari/537.36', NULL, 0, '1627180385', 0, 0, NULL, NULL, 0);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `backups`
--
ALTER TABLE `backups`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Chỉ mục cho bảng `bank`
--
ALTER TABLE `bank`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Chỉ mục cho bảng `bank_auto`
--
ALTER TABLE `bank_auto`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Chỉ mục cho bảng `cards`
--
ALTER TABLE `cards`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Chỉ mục cho bảng `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Chỉ mục cho bảng `chuyentien`
--
ALTER TABLE `chuyentien`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Chỉ mục cho bảng `config_momo`
--
ALTER TABLE `config_momo`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Chỉ mục cho bảng `dichvu`
--
ALTER TABLE `dichvu`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Chỉ mục cho bảng `dongtien`
--
ALTER TABLE `dongtien`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Chỉ mục cho bảng `giftcode`
--
ALTER TABLE `giftcode`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Chỉ mục cho bảng `lang`
--
ALTER TABLE `lang`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Chỉ mục cho bảng `logs`
--
ALTER TABLE `logs`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Chỉ mục cho bảng `momo`
--
ALTER TABLE `momo`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Chỉ mục cho bảng `options`
--
ALTER TABLE `options`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Chỉ mục cho bảng `reports`
--
ALTER TABLE `reports`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Chỉ mục cho bảng `ruttien`
--
ALTER TABLE `ruttien`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Chỉ mục cho bảng `taikhoan`
--
ALTER TABLE `taikhoan`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Chỉ mục cho bảng `thesieure`
--
ALTER TABLE `thesieure`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Chỉ mục cho bảng `token`
--
ALTER TABLE `token`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `backups`
--
ALTER TABLE `backups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `bank`
--
ALTER TABLE `bank`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `bank_auto`
--
ALTER TABLE `bank_auto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `cards`
--
ALTER TABLE `cards`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `chuyentien`
--
ALTER TABLE `chuyentien`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `config_momo`
--
ALTER TABLE `config_momo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `dichvu`
--
ALTER TABLE `dichvu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT cho bảng `dongtien`
--
ALTER TABLE `dongtien`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=202;

--
-- AUTO_INCREMENT cho bảng `giftcode`
--
ALTER TABLE `giftcode`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `lang`
--
ALTER TABLE `lang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=152;

--
-- AUTO_INCREMENT cho bảng `logs`
--
ALTER TABLE `logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=200;

--
-- AUTO_INCREMENT cho bảng `momo`
--
ALTER TABLE `momo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `options`
--
ALTER TABLE `options`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=274;

--
-- AUTO_INCREMENT cho bảng `reports`
--
ALTER TABLE `reports`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `ruttien`
--
ALTER TABLE `ruttien`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `taikhoan`
--
ALTER TABLE `taikhoan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2352145;

--
-- AUTO_INCREMENT cho bảng `thesieure`
--
ALTER TABLE `thesieure`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `token`
--
ALTER TABLE `token`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
