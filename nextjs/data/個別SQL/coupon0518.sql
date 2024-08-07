-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1
-- 產生時間： 2024-05-18 17:47:25
-- 伺服器版本： 10.4.32-MariaDB
-- PHP 版本： 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫： `baseball`
--

-- --------------------------------------------------------

--
-- 資料表結構 `coupon`
--

CREATE TABLE `coupon` (
  `id` int(3) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `option` varchar(30) NOT NULL,
  `time_start` date NOT NULL,
  `time_end` date NOT NULL,
  `discount` float NOT NULL,
  `coding` varchar(255) NOT NULL,
  `use_time` int(10) NOT NULL,
  `use_restrict` int(10) NOT NULL,
  `use_condition` varchar(20) NOT NULL,
  `update_time` datetime DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `valid` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `coupon`
--

INSERT INTO `coupon` (`id`, `name`, `description`, `option`, `time_start`, `time_end`, `discount`, `coding`, `use_time`, `use_restrict`, `use_condition`, `update_time`, `created_at`, `valid`) VALUES
(1, '七折券', '七折', '%數折扣', '2024-01-02', '2024-05-31', 0.7, 'WHJBOLO8AH', 10, 500, '已停用', '2024-02-06 14:09:36', '2024-01-30 11:57:10', 1),
(2, '八折券', '八折', '%數折扣', '2023-12-05', '2024-06-01', 0.8, '3SC4KXVOCO', 20, 800, '可使用', NULL, '2024-01-30 11:57:43', 1),
(3, '滿千折百', '滿千折百', '金額折扣', '2024-01-28', '2024-06-12', 100, 'RFHUUKVXU3', 5, 1000, '已停用', '2024-02-01 22:22:15', '2024-01-30 11:58:17', 1),
(4, '滿百折十', '滿百折十', '金額折扣', '2024-01-05', '2024-07-12', 10, 'XRH6JYLKQ1', 55, 100, '可使用', NULL, '2024-01-30 11:58:50', 1),
(5, '夏季無敵優惠', '滿千折250', '金額折扣', '2023-12-05', '2024-06-30', 250, 'NYILN1SXLI', 150, 1000, '可使用', NULL, '2024-01-30 11:59:28', 1),
(6, '五折券', '五折', '%數折扣', '2023-09-13', '2024-05-31', 0.5, 'H9V23GYDLQ', 50, 2000, '已停用', NULL, '2024-01-30 11:59:56', 1),
(7, ' 七折券', '七折', '%數折扣', '2024-01-25', '2024-06-04', 0.7, 'DOH3Q070PJ', 20, 50, '可使用', '2024-02-01 22:53:45', '2024-01-30 13:25:01', 1),
(8, '折300', '滿800折300', '金額折扣', '2024-01-18', '2024-06-10', 300, '1IP5WVMKCB', 5, 800, '已停用', NULL, '2024-01-30 13:25:50', 1),
(9, '折100', '滿999折100', '金額折扣', '2024-02-07', '2024-05-31', 100, 'NGH0C67C8P', 1, 999, '可使用', NULL, '2024-01-30 13:26:32', 1),
(10, '三折券', '三折', '%數折扣', '2024-03-01', '2024-06-30', 0.3, 'SBXQS531VK', 999, 5000, '可使用', NULL, '2024-01-30 13:27:12', 1),
(11, '周年慶', '一折', '%數折扣', '2024-03-01', '2024-06-14', 0.1, 'G22XZ1HKYG', 999, 10000, '可使用', NULL, '2024-01-30 13:27:47', 1),
(12, '折500', '滿1000折500', '金額折扣', '2024-01-10', '2024-07-19', 500, 'SX1FDLV7U8', 2, 1000, '已停用', NULL, '2024-01-30 14:08:18', 1),
(13, '夏日七折券', '七折', '%數折扣', '2024-01-11', '2024-08-31', 0.7, 'T706J7543L', 500, 2500, '可使用', NULL, '2024-01-30 14:09:06', 1),
(14, '生日慶', '一折', '%數折扣', '2024-01-20', '2024-08-30', 0.1, '6F9CMS29PB', 50, 10000, '已停用', NULL, '2024-01-30 14:55:11', 1),
(15, '豪華兩萬', '折2000', '金額折扣', '2024-03-08', '2024-07-31', 2000, 'F5PNSN2NRY', 999, 20000, '可使用', NULL, '2024-01-30 14:55:46', 1),
(16, '尊享滿5000', '499', '金額折扣', '2023-10-31', '2024-06-28', 499, 'FFPHABCI89', 50, 5000, '已停用', NULL, '2024-01-30 14:56:35', 1),
(17, '周年慶', '現折1999', '金額折扣', '2024-03-07', '2024-07-18', 1999, 'MD9SGVGEU0', 50, 0, '可使用', NULL, '2024-01-30 14:57:27', 1),
(18, '特級優惠', '六折', '%數折扣', '2024-12-30', '2025-01-31', 0.6, '48K1F7FAHN', 33, 3500, '已停用', NULL, '2024-01-30 14:58:18', 1),
(19, '尊榮兩折', '兩折', '%數折扣', '2024-01-26', '2024-05-31', 0.2, '0Z2MUIMTS1', 555, 555, '已停用', NULL, '2024-01-30 15:02:40', 1),
(20, '父親節', '父親節優惠滿2888折888', '金額折扣', '2024-03-07', '2024-08-31', 888, 'MPWEYBYFJY', 888, 2888, '已停用', NULL, '2024-01-30 15:03:14', 1),
(21, '母親節', '六折', '%數折扣', '2024-05-01', '2024-07-25', 0.6, '7EYM3BSNQ3', 666, 2999, '可使用', NULL, '2024-01-30 15:03:48', 1),
(22, '兒童節', '兒童節八折優惠', '%數折扣', '2024-03-01', '2024-04-30', 0.8, 'T80T3Q70OA', 20, 500, '可使用', NULL, '2024-01-30 15:04:25', 1),
(23, '滿百折十', '滿百折十', '金額折扣', '2023-11-01', '2024-08-22', 10, 'PRUXGMABKE', 99999, 100, '已停用', NULL, '2024-01-30 15:05:08', 1),
(24, '新年特惠', '新年滿3999享2折特惠', '%數折扣', '2024-02-01', '2024-08-08', 0.2, 'YW5VW393WL', 30, 3999, '可使用', NULL, '2024-01-30 15:06:57', 1),
(25, '666一路順', '滿5000折666', '金額折扣', '2024-01-01', '2024-06-21', 666, 'EPX1BTIQ5J', 5646, 5000, '可使用', NULL, '2024-01-30 15:09:42', 1),
(26, '超值六折券', '六折', '%數折扣', '2024-01-18', '2024-02-29', 0.6, '1TG36P28MW', 6, 100, '可使用', NULL, '2024-01-30 15:10:47', 1),
(27, '八發發折券', '八折', '%數折扣', '2024-03-01', '2024-03-31', 0.8, '2XVAUIX7UE', 80, 0, '已停用', NULL, '2024-01-30 15:11:11', 1),
(28, '特優九折券', '九折', '%數折扣', '2023-10-05', '2024-05-31', 0.9, 'U94B8JJ3M2', 5, 0, '已停用', NULL, '2024-01-30 15:11:37', 1),
(29, 'aaaaa', 'aaaa', '金額折扣', '2024-01-17', '2024-01-31', 50, 'POUXXDUOXM', 50, 550, '已停用', '2024-01-31 22:43:36', '2024-01-30 15:12:34', 1),
(30, '五折券', '五折', '%數折扣', '2024-06-12', '2024-07-31', 0.5, 'PSMZIYE9LD', 10, 50, '可使用', NULL, '2024-01-30 15:14:07', 1),
(31, '折999', '999', '金額折扣', '2024-01-02', '2024-06-27', 999, 'KKT2W2Q2XO', 999, 999, '已停用', NULL, '2024-01-30 15:14:33', 1),
(32, '歡慶大放送', '一折', '%數折扣', '2024-02-01', '2024-06-30', 0.1, 'CB8E8ZGGAN', 99999, 0, '已停用', NULL, '2024-01-30 15:15:20', 1),
(33, 'a換慶XXX落敗', '現折1999', '金額折扣', '2024-07-01', '2024-07-31', 1999, 'G3JDRAEL6F', 50, 3999, '可使用', NULL, '2024-01-30 15:16:27', 1),
(34, '限時特賣', '限時', '%數折扣', '2024-03-01', '2024-03-08', 0.5, 'PJHPP36U2X', 5, 10, '可使用', NULL, '2024-01-30 15:17:02', 1),
(35, 'a優惠', 'aaaa', '%數折扣', '2024-01-05', '2024-02-02', 0.3, '4WG6HFZ109', 48448, 44564564, '可使用', NULL, '2024-01-30 15:46:35', 1),
(36, 'b六折券', '6折', '%數折扣', '2024-02-08', '2024-03-31', 0.6, 'W3L6UHX03K', 66, 666, '已停用', NULL, '2024-01-30 16:13:42', 1),
(37, 'c六折券', '六折', '%數折扣', '2024-01-02', '2024-01-23', 0.6, 'YHM3AQLX8J', 50, 0, '已停用', NULL, '2024-01-30 16:14:06', 1),
(38, 'd六折', '6666', '%數折扣', '2024-04-11', '2024-05-31', 0.6, 'D3XV613VOC', 1, 300, '可使用', NULL, '2024-01-30 16:14:34', 1),
(39, 'b三折', '3折', '%數折扣', '2023-11-07', '2024-01-17', 0.3, 'QI7Q2TGZXN', 20, 99, '已停用', NULL, '2024-01-30 16:15:00', 1),
(40, '滿五千折五百', '5000-500', '金額折扣', '2023-12-01', '2024-07-12', 500, '5N615XAE0K', 50, 5000, '可使用', NULL, '2024-01-30 16:15:46', 1),
(41, '滿5000折1000', '5000-1000', '金額折扣', '2024-02-01', '2024-02-15', 1000, 'D7WIVYWBHZ', 40, 50, '已停用', NULL, '2024-01-30 16:16:28', 1),
(42, '滿1000折200', '1000-200', '金額折扣', '2024-03-01', '2024-03-30', 200, 'IW5HZZV7E9', 20, 1000, '可使用', NULL, '2024-01-30 16:16:58', 1),
(43, 'b九折券', '0.9', '%數折扣', '2024-02-29', '2024-03-01', 0.9, 'IDCJ5OWMZI', 1, 100, '可使用', NULL, '2024-01-30 16:27:59', 1),
(44, 'c三折券', '0.3', '%數折扣', '2024-01-01', '2024-02-29', 0.3, 'CSCLY8XCP5', 30, 300, '可使用', NULL, '2024-01-30 16:28:31', 1),
(45, '折10', '-10', '金額折扣', '2024-02-01', '2024-02-29', 10, '6SX8ZAA7OO', 500, 0, '已停用', NULL, '2024-01-30 16:31:10', 1),
(46, 'b四折券', '*0.4', '%數折扣', '2023-10-11', '2024-01-04', 0.4, '7O3VO13Z8W', 50, 500, '已停用', NULL, '2024-01-30 16:31:35', 1),
(47, '棒球日優惠', '棒球日滿100享1折優惠', '%數折扣', '2023-01-01', '2024-08-09', 0.1, 'YM4QITZ4CK', 999, 100, '已停用', NULL, '2024-01-30 21:30:51', 1),
(48, '限時特賣', '-499', '金額折扣', '2024-01-31', '2024-02-29', 499, '718HD5GMRF', 100, 500, '可使用', NULL, '2024-01-30 21:32:05', 1),
(49, '三折券', '*0.3', '%數折扣', '2023-11-01', '2024-03-29', 0.3, 'MF8GWQFGA0', 30, 399, '可使用', NULL, '2024-01-30 21:33:04', 1),
(50, '歡慶OOO', '歡慶~~~~', '%數折扣', '2023-12-01', '2024-01-31', 0.2, 'FFR3RR7P15', 100, 200, '可使用', NULL, '2024-01-30 21:35:39', 1),
(51, '歡慶XXX輸球', '歡慶XXX輸球', '金額折扣', '2024-02-01', '2024-03-31', 999, '7RMIB22CV9', 999, 999, '可使用', NULL, '2024-01-30 21:36:31', 1),
(52, '500大放送', '滿500折99', '金額折扣', '2024-01-04', '2024-05-31', 99, 'L49YHE5386', 25, 500, '可使用', NULL, '2024-01-30 21:37:12', 1),
(53, '棒球狂歡嘉年華', '五折', '%數折扣', '2024-01-25', '2024-09-30', 0.5, 'DWG7EQAB9V', 50, 999, '已停用', NULL, '2024-01-31 11:31:00', 1),
(54, '一萬樂翻天', '折500', '金額折扣', '2024-01-30', '2024-02-15', 500, 'PKM1U53KB5', 123, 10000, '可使用', NULL, '2024-02-06 14:10:36', 1),
(55, '端午節優惠', '端午划龍舟九折', '%數折扣', '2024-05-01', '2024-06-10', 0.9, 'AS26PVKJEX', 1, 1000, '可使用', NULL, '2024-05-09 04:13:30', 1),
(56, '開幕優惠', '開幕大放送九折', '%數折扣', '2024-05-09', '2024-05-31', 0.9, 'Q1K62YN26S', 1, 1000, '可使用', NULL, '2024-05-09 04:14:20', 1),
(57, '夏季優惠', '夏季促銷九折', '%數折扣', '2024-05-09', '2024-06-30', 0.9, 'VXJG9R71RG', 1, 1000, '可使用', NULL, '2024-05-09 04:15:19', 1);

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `coupon`
--
ALTER TABLE `coupon`
  ADD PRIMARY KEY (`id`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `coupon`
--
ALTER TABLE `coupon`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
