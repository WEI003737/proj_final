-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1
-- 產生時間： 
-- 伺服器版本： 10.4.11-MariaDB
-- PHP 版本： 7.3.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫： `proj_final`
--

-- --------------------------------------------------------

--
-- 資料表結構 `products`
--

CREATE TABLE `products` (
  `sid` int(11) NOT NULL,
  `cate_sid` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  `intro` varchar(255) NOT NULL,
  `material` varchar(255) NOT NULL,
  `take_care` varchar(255) NOT NULL,
  `created_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 傾印資料表的資料 `products`
--

INSERT INTO `products` (`sid`, `cate_sid`, `name`, `price`, `intro`, `material`, `take_care`, `created_date`) VALUES
(1, 1, 'TRACKIE 運動內衣', 790, '美背交叉設計凸顯妳的優雅氣息，搭配腰間的撞色邊條設計，簡約中不失設計感，適合氣質又充滿女人味的妳！', '聚酯纖維 50%、尼龍 29%、彈性纖維 21%', '使用中性洗滌劑，勿使用柔軟精', '2020-05-08 12:48:32'),
(2, 1, 'Alosoft 運動內衣', 790, '女人味十足的細肩帶設計搭配側邊綁帶及一字美背設計，簡約具有造型感，讓妳不論是去運動還是外出活動，舉手投足都充滿時尚魅力！', '尼龍79%、彈性纖維21%', '使用中性洗滌劑，勿使用柔軟精', '2020-05-24 12:48:28'),
(3, 1, 'Inistinct 馬甲式運動內衣', 770, '精緻的細肩帶搭配V領領圍，有效修飾臉型。簡單卻又不失優雅氣質，不論搭配任何下身都時尚亮眼！', '聚酯纖維 50%、尼龍 29%、彈性纖維 21%', '使用中性洗滌劑，勿使用柔軟精', '0000-00-00 00:00:00'),
(4, 1, 'Breathe 撞色運動內衣', 990, '精緻的細肩帶搭配V領領圍，有效修飾臉型。簡單卻又不失優雅氣質，不論搭配任何下身都時尚亮眼！', '尼龍79%、彈性纖維21%', '使用中性洗滌劑，勿使用柔軟精', '2020-05-15 12:48:38'),
(5, 1, 'Erin 細肩帶運動內衣', 540, '美背交叉設計凸顯妳的優雅氣息，搭配腰間的撞色邊條設計，簡約中不失設計感，適合氣質又充滿女人味的妳！', '聚酯纖維 50%、尼龍 29%、彈性纖維 21%', '使用中性洗滌劑，勿使用柔軟精', '0000-00-00 00:00:00'),
(6, 1, 'Marne 馬甲式運動內衣', 790, '精緻的細肩帶搭配V領領圍，有效修飾臉型。簡單卻又不失優雅氣質，不論搭配任何下身都時尚亮眼！', '尼龍79%、彈性纖維21%', '使用中性洗滌劑，勿使用柔軟精', '0000-00-00 00:00:00'),
(7, 1, 'Pring 細肩帶運動內衣', 1000, '女人味十足的細肩帶設計搭配側邊綁帶及一字美背設計，簡約具有造型感，讓妳不論是去運動還是外出活動，舉手投足都充滿時尚魅力！', '尼龍79%、彈性纖維21%', '使用中性洗滌劑，勿使用柔軟精', '0000-00-00 00:00:00'),
(8, 1, 'Sunrise 運動內衣', 680, '美背交叉設計凸顯妳的優雅氣息，搭配腰間的撞色邊條設計，簡約中不失設計感，適合氣質又充滿女人味的妳！', '聚酯纖維 50%、尼龍 29%、彈性纖維 21%', '使用中性洗滌劑，勿使用柔軟精', '0000-00-00 00:00:00'),
(9, 1, 'Asymmetrical 造型運動內衣', 840, '女人味十足的細肩帶設計搭配側邊綁帶及一字美背設計，簡約具有造型感，讓妳不論是去運動還是外出活動，舉手投足都充滿時尚魅力！', '尼龍79%、彈性纖維21%', '使用中性洗滌劑，勿使用柔軟精', '0000-00-00 00:00:00'),
(10, 1, 'Surplice 運動內衣', 680, '美背交叉設計凸顯妳的優雅氣息，搭配腰間的撞色邊條設計，簡約中不失設計感，適合氣質又充滿女人味的妳！', '聚酯纖維 50%、尼龍 29%、彈性纖維 21%', '使用中性洗滌劑，勿使用柔軟精', '2020-05-21 12:48:48'),
(11, 1, 'Asport V領運動內衣', 790, '美背交叉設計凸顯妳的優雅氣息，搭配腰間的撞色邊條設計，簡約中不失設計感，適合氣質又充滿女人味的妳！', '聚酯纖維 50%、尼龍 29%、彈性纖維 21%', '使用中性洗滌劑，勿使用柔軟精', '0000-00-00 00:00:00'),
(12, 1, 'Edmund 削肩運動內衣', 790, '女人味十足的細肩帶設計搭配側邊綁帶及一字美背設計，簡約具有造型感，讓妳不論是去運動還是外出活動，舉手投足都充滿時尚魅力！', '尼龍79%、彈性纖維21%', '使用中性洗滌劑，勿使用柔軟精', '0000-00-00 00:00:00'),
(13, 1, 'Infty 仿皮感運動內衣', 770, '精緻的細肩帶搭配V領領圍，有效修飾臉型。簡單卻又不失優雅氣質，不論搭配任何下身都時尚亮眼！', '聚酯纖維 50%、尼龍 29%、彈性纖維 21%', '使用中性洗滌劑，勿使用柔軟精', '0000-00-00 00:00:00'),
(14, 1, 'Togetherness 運動內衣', 990, '精緻的細肩帶搭配V領領圍，有效修飾臉型。簡單卻又不失優雅氣質，不論搭配任何下身都時尚亮眼！', '尼龍79%、彈性纖維21%', '使用中性洗滌劑，勿使用柔軟精', '2020-05-21 12:48:34'),
(15, 1, 'Feline 運動內衣', 540, '美背交叉設計凸顯妳的優雅氣息，搭配腰間的撞色邊條設計，簡約中不失設計感，適合氣質又充滿女人味的妳！', '聚酯纖維 50%、尼龍 29%、彈性纖維 21%', '使用中性洗滌劑，勿使用柔軟精', '0000-00-00 00:00:00'),
(16, 1, 'Lily 交叉綁帶運動內衣', 790, '精緻的細肩帶搭配V領領圍，有效修飾臉型。簡單卻又不失優雅氣質，不論搭配任何下身都時尚亮眼！', '尼龍79%、彈性纖維21%', '使用中性洗滌劑，勿使用柔軟精', '2020-05-31 12:48:46'),
(17, 1, 'Julie 斜肩運動內衣', 690, '女人味十足的細肩帶設計搭配側邊綁帶及一字美背設計，簡約具有造型感，讓妳不論是去運動還是外出活動，舉手投足都充滿時尚魅力！', '尼龍79%、彈性纖維21%', '使用中性洗滌劑，勿使用柔軟精', '0000-00-00 00:00:00'),
(18, 1, 'Grace 運動內衣', 680, '美背交叉設計凸顯妳的優雅氣息，搭配腰間的撞色邊條設計，簡約中不失設計感，適合氣質又充滿女人味的妳！', '聚酯纖維 50%、尼龍 29%、彈性纖維 21%', '使用中性洗滌劑，勿使用柔軟精', '2020-05-14 12:48:43'),
(19, 1, 'Metrix 運動內衣', 840, '女人味十足的細肩帶設計搭配側邊綁帶及一字美背設計，簡約具有造型感，讓妳不論是去運動還是外出活動，舉手投足都充滿時尚魅力！', '尼龍79%、彈性纖維21%', '使用中性洗滌劑，勿使用柔軟精', '0000-00-00 00:00:00'),
(20, 1, 'Vision 撞色運動內衣', 680, '美背交叉設計凸顯妳的優雅氣息，搭配腰間的撞色邊條設計，簡約中不失設計感，適合氣質又充滿女人味的妳！', '聚酯纖維 50%、尼龍 29%、彈性纖維 21%', '使用中性洗滌劑，勿使用柔軟精', '0000-00-00 00:00:00'),
(21, 1, 'Soar 造型運動內衣', 790, '美背交叉設計凸顯妳的優雅氣息，搭配腰間的撞色邊條設計，簡約中不失設計感，適合氣質又充滿女人味的妳！', '聚酯纖維 50%、尼龍 29%、彈性纖維 21%', '使用中性洗滌劑，勿使用柔軟精', '0000-00-00 00:00:00'),
(22, 1, 'Scoop 美背運動內衣', 790, '女人味十足的細肩帶設計搭配側邊綁帶及一字美背設計，簡約具有造型感，讓妳不論是去運動還是外出活動，舉手投足都充滿時尚魅力！', '尼龍79%、彈性纖維21%', '使用中性洗滌劑，勿使用柔軟精', '2020-05-05 14:06:39'),
(23, 1, 'Silhouette 運動內衣', 770, '精緻的細肩帶搭配V領領圍，有效修飾臉型。簡單卻又不失優雅氣質，不論搭配任何下身都時尚亮眼！', '聚酯纖維 50%、尼龍 29%、彈性纖維 21%', '使用中性洗滌劑，勿使用柔軟精', '0000-00-00 00:00:00'),
(24, 1, 'Poppy 挖背運動內衣', 990, '精緻的細肩帶搭配V領領圍，有效修飾臉型。簡單卻又不失優雅氣質，不論搭配任何下身都時尚亮眼！', '尼龍79%、彈性纖維21%', '使用中性洗滌劑，勿使用柔軟精', '0000-00-00 00:00:00'),
(25, 1, 'Rise 網紗拼接運動內衣', 540, '美背交叉設計凸顯妳的優雅氣息，搭配腰間的撞色邊條設計，簡約中不失設計感，適合氣質又充滿女人味的妳！', '聚酯纖維 50%、尼龍 29%、彈性纖維 21%', '使用中性洗滌劑，勿使用柔軟精', '0000-00-00 00:00:00'),
(26, 1, 'Cloe 細肩帶運動內衣', 790, '精緻的細肩帶搭配V領領圍，有效修飾臉型。簡單卻又不失優雅氣質，不論搭配任何下身都時尚亮眼！', '尼龍79%、彈性纖維21%', '使用中性洗滌劑，勿使用柔軟精', '0000-00-00 00:00:00'),
(27, 1, 'Waylon 美背運動內衣', 690, '女人味十足的細肩帶設計搭配側邊綁帶及一字美背設計，簡約具有造型感，讓妳不論是去運動還是外出活動，舉手投足都充滿時尚魅力！', '尼龍79%、彈性纖維21%', '使用中性洗滌劑，勿使用柔軟精', '0000-00-00 00:00:00'),
(28, 1, 'Elsa 雙色運動內衣', 680, '美背交叉設計凸顯妳的優雅氣息，搭配腰間的撞色邊條設計，簡約中不失設計感，適合氣質又充滿女人味的妳！', '聚酯纖維 50%、尼龍 29%、彈性纖維 21%', '使用中性洗滌劑，勿使用柔軟精', '0000-00-00 00:00:00'),
(29, 1, 'Cloe 拉鍊運動內衣', 770, '女人味十足的細肩帶設計搭配側邊綁帶及一字美背設計，簡約具有造型感，讓妳不論是去運動還是外出活動，舉手投足都充滿時尚魅力！', '尼龍79%、彈性纖維21%', '使用中性洗滌劑，勿使用柔軟精', '2020-05-18 00:00:00'),
(30, 1, 'Nathan Zip 撞色運動內衣', 680, '美背交叉設計凸顯妳的優雅氣息，搭配腰間的撞色邊條設計，簡約中不失設計感，適合氣質又充滿女人味的妳！', '聚酯纖維 50%、尼龍 29%、彈性纖維 21%', '使用中性洗滌劑，勿使用柔軟精', '0000-00-00 00:00:00'),
(31, 1, 'Glory 透膚肩帶運動內衣', 770, '美背交叉設計凸顯妳的優雅氣息，搭配腰間的撞色邊條設計，簡約中不失設計感，適合氣質又充滿女人味的妳！', '聚酯纖維 50%、尼龍 29%、彈性纖維 21%', '使用中性洗滌劑，勿使用柔軟精', '0000-00-00 00:00:00'),
(32, 1, 'Glow 交叉腰帶運動內衣', 790, '女人味十足的細肩帶設計搭配側邊綁帶及一字美背設計，簡約具有造型感，讓妳不論是去運動還是外出活動，舉手投足都充滿時尚魅力！', '尼龍79%、彈性纖維21%', '使用中性洗滌劑，勿使用柔軟精', '0000-00-00 00:00:00'),
(33, 1, 'Vibe 削肩運動內衣', 770, '精緻的細肩帶搭配V領領圍，有效修飾臉型。簡單卻又不失優雅氣質，不論搭配任何下身都時尚亮眼！', '聚酯纖維 50%、尼龍 29%、彈性纖維 21%', '使用中性洗滌劑，勿使用柔軟精', '0000-00-00 00:00:00'),
(34, 1, 'Fusion 鏤空運動內衣', 770, '精緻的細肩帶搭配V領領圍，有效修飾臉型。簡單卻又不失優雅氣質，不論搭配任何下身都時尚亮眼！', '尼龍79%、彈性纖維21%', '使用中性洗滌劑，勿使用柔軟精', '2020-05-14 14:07:17'),
(35, 1, 'Aura 透膚運動內衣', 540, '美背交叉設計凸顯妳的優雅氣息，搭配腰間的撞色邊條設計，簡約中不失設計感，適合氣質又充滿女人味的妳！', '聚酯纖維 50%、尼龍 29%、彈性纖維 21%', '使用中性洗滌劑，勿使用柔軟精', '2020-05-13 14:07:31'),
(36, 1, 'Aria 運動內衣', 790, '精緻的細肩帶搭配V領領圍，有效修飾臉型。簡單卻又不失優雅氣質，不論搭配任何下身都時尚亮眼！', '尼龍79%、彈性纖維21%', '使用中性洗滌劑，勿使用柔軟精', '0000-00-00 00:00:00'),
(37, 1, 'Nyx 運動內衣', 690, '女人味十足的細肩帶設計搭配側邊綁帶及一字美背設計，簡約具有造型感，讓妳不論是去運動還是外出活動，舉手投足都充滿時尚魅力！', '尼龍79%、彈性纖維21%', '使用中性洗滌劑，勿使用柔軟精', '0000-00-00 00:00:00'),
(38, 1, 'Flex 運動內衣', 680, '美背交叉設計凸顯妳的優雅氣息，搭配腰間的撞色邊條設計，簡約中不失設計感，適合氣質又充滿女人味的妳！', '聚酯纖維 50%、尼龍 29%、彈性纖維 21%', '使用中性洗滌劑，勿使用柔軟精', '0000-00-00 00:00:00'),
(39, 1, 'Antigravity 網眼運動內衣', 840, '女人味十足的細肩帶設計搭配側邊綁帶及一字美背設計，簡約具有造型感，讓妳不論是去運動還是外出活動，舉手投足都充滿時尚魅力！', '尼龍79%、彈性纖維21%', '使用中性洗滌劑，勿使用柔軟精', '0000-00-00 00:00:00'),
(40, 1, 'Mist 拉鍊運動內衣', 680, '美背交叉設計凸顯妳的優雅氣息，搭配腰間的撞色邊條設計，簡約中不失設計感，適合氣質又充滿女人味的妳！', '聚酯纖維 50%、尼龍 29%、彈性纖維 21%', '使用中性洗滌劑，勿使用柔軟精', '2020-05-13 14:07:24'),
(41, 1, 'Glacier 透膚運動內衣', 1000, '美背交叉設計凸顯妳的優雅氣息，搭配腰間的撞色邊條設計，簡約中不失設計感，適合氣質又充滿女人味的妳！', '聚酯纖維 50%、尼龍 29%、彈性纖維 21%', '使用中性洗滌劑，勿使用柔軟精', '0000-00-00 00:00:00'),
(42, 1, 'Ash 削肩運動內衣 運動內衣', 790, '女人味十足的細肩帶設計搭配側邊綁帶及一字美背設計，簡約具有造型感，讓妳不論是去運動還是外出活動，舉手投足都充滿時尚魅力！', '尼龍79%、彈性纖維21%', '使用中性洗滌劑，勿使用柔軟精', '0000-00-00 00:00:00'),
(43, 1, 'Cyling 方領運動內衣', 770, '精緻的細肩帶搭配V領領圍，有效修飾臉型。簡單卻又不失優雅氣質，不論搭配任何下身都時尚亮眼！', '聚酯纖維 50%、尼龍 29%、彈性纖維 21%', '使用中性洗滌劑，勿使用柔軟精', '0000-00-00 00:00:00'),
(44, 1, 'Impact 水墨印花運動內衣', 990, '精緻的細肩帶搭配V領領圍，有效修飾臉型。簡單卻又不失優雅氣質，不論搭配任何下身都時尚亮眼！', '尼龍79%、彈性纖維21%', '使用中性洗滌劑，勿使用柔軟精', '0000-00-00 00:00:00'),
(45, 1, 'Speed 削肩運動內衣', 540, '美背交叉設計凸顯妳的優雅氣息，搭配腰間的撞色邊條設計，簡約中不失設計感，適合氣質又充滿女人味的妳！', '聚酯纖維 50%、尼龍 29%、彈性纖維 21%', '使用中性洗滌劑，勿使用柔軟精', '0000-00-00 00:00:00'),
(46, 1, 'Midnight 透膚運動內衣', 1000, '精緻的細肩帶搭配V領領圍，有效修飾臉型。簡單卻又不失優雅氣質，不論搭配任何下身都時尚亮眼！', '尼龍79%、彈性纖維21%', '使用中性洗滌劑，勿使用柔軟精', '0000-00-00 00:00:00'),
(47, 1, 'Aspen 細肩帶運動內衣', 690, '女人味十足的細肩帶設計搭配側邊綁帶及一字美背設計，簡約具有造型感，讓妳不論是去運動還是外出活動，舉手投足都充滿時尚魅力！', '尼龍79%、彈性纖維21%', '使用中性洗滌劑，勿使用柔軟精', '0000-00-00 00:00:00'),
(48, 2, 'NADI 運動內衣', 680, '採用機能性面料，搭配雙色撞色設計提升整體活潑感。不論運動單穿或結合日常穿搭都合適，讓你從健身房到街頭都是全場焦點！', '聚酯纖維 50%、尼龍 29%、彈性纖維 21%', '使用中性洗滌劑，勿使用柔軟精', '2020-04-23 13:33:11'),
(49, 2, 'Disco 運動內衣', 680, '胸前獨特的雙層剪裁，搭配透氣度絕佳的透膚網紗，魅力又有型！寬版下圍更提升支撐力，最適合熱愛運動又時尚的妳！ ', '聚醯胺纖維 74%、彈性纖維 26% ', '使用中性洗滌劑，勿使用柔軟精', '2020-04-23 13:33:11'),
(50, 2, 'Cait 漸層運動內衣', 1000, '完美展現時尚與機能的運動內衣，採用高彈性性布料，舒適透氣。提高穩定度的同時展現時尚魅力，讓你動靜皆宜，展現迷人風采。 ', '聚酯纖維 50%、尼龍 29%、彈性纖維 21%', '使用中性洗滌劑，勿使用柔軟精', '2020-04-23 13:33:11'),
(51, 2, 'Veronica V領美背運動內衣', 680, '背部內裡以彈性網紗布作為內襯，提升整體支撐力。採用啞光高彈性的機能布料，搭配美背鏤空設計，打造出低調奢華運動時尚風。', '聚醯胺纖維 74%、彈性纖維 26% 、彈性纖維 21%', '使用中性洗滌劑，勿使用柔軟精', '2020-04-23 13:33:11'),
(52, 2, 'Love 運動內衣', 620, '採用機能性面料，搭配雙色撞色設計提升整體活潑感。不論運動單穿或結合日常穿搭都合適，讓你從健身房到街頭都是全場焦點！', '尼龍79%、彈性纖維21%', '使用中性洗滌劑，勿使用柔軟精', '2020-04-23 13:33:11'),
(53, 2, 'Set It Free 運動內衣', 680, '採用機能性面料，搭配雙色撞色設計提升整體活潑感。不論運動單穿或結合日常穿搭都合適，讓你從健身房到街頭都是全場焦點！', '聚酯纖維 50%、尼龍 29%、彈性纖維 21%', '使用中性洗滌劑，勿使用柔軟精', '2020-04-23 13:33:11'),
(54, 2, 'Not So Basic 運動內衣', 990, '胸前獨特的雙層剪裁，搭配透氣度絕佳的透膚網紗，魅力又有型！寬版下圍更提升支撐力，最適合熱愛運動又時尚的妳！ ', '聚醯胺纖維 74%、彈性纖維 26% ', '使用中性洗滌劑，勿使用柔軟精', '2020-04-23 13:33:11'),
(55, 2, 'Football 運動內衣', 730, '完美展現時尚與機能的運動內衣，採用高彈性性布料，舒適透氣。提高穩定度的同時展現時尚魅力，讓你動靜皆宜，展現迷人風采。 ', '聚酯纖維 50%、尼龍 29%、彈性纖維 21%', '使用中性洗滌劑，勿使用柔軟精', '2020-04-23 13:33:11'),
(56, 2, 'Floral 水彩花卉運動內衣', 880, '背部內裡以彈性網紗布作為內襯，提升整體支撐力。採用啞光高彈性的機能布料，搭配美背鏤空設計，打造出低調奢華運動時尚風。', '聚醯胺纖維 74%、彈性纖維 26% 、彈性纖維 21%', '使用中性洗滌劑，勿使用柔軟精', '2020-04-23 13:33:11'),
(57, 2, 'Twist 復古釦環運動內衣', 620, '採用機能性面料，搭配雙色撞色設計提升整體活潑感。不論運動單穿或結合日常穿搭都合適，讓你從健身房到街頭都是全場焦點！', '尼龍79%、彈性纖維21%', '使用中性洗滌劑，勿使用柔軟精', '2020-04-23 13:33:11'),
(58, 2, 'Mantra 撞色運動內衣', 680, '採用機能性面料，搭配雙色撞色設計提升整體活潑感。不論運動單穿或結合日常穿搭都合適，讓你從健身房到街頭都是全場焦點！', '聚酯纖維 50%、尼龍 29%、彈性纖維 21%', '使用中性洗滌劑，勿使用柔軟精', '2020-04-23 13:33:11'),
(59, 2, 'Bennett 條紋運動內衣', 780, '胸前獨特的雙層剪裁，搭配透氣度絕佳的透膚網紗，魅力又有型！寬版下圍更提升支撐力，最適合熱愛運動又時尚的妳！ ', '聚醯胺纖維 74%、彈性纖維 26% ', '使用中性洗滌劑，勿使用柔軟精', '2020-04-23 13:33:11'),
(60, 2, 'Revive 運動內衣', 730, '完美展現時尚與機能的運動內衣，採用高彈性性布料，舒適透氣。提高穩定度的同時展現時尚魅力，讓你動靜皆宜，展現迷人風采。 ', '聚酯纖維 50%、尼龍 29%、彈性纖維 21%', '使用中性洗滌劑，勿使用柔軟精', '2020-04-23 13:33:11'),
(61, 2, 'Radiance V 領運動內衣', 680, '背部內裡以彈性網紗布作為內襯，提升整體支撐力。採用啞光高彈性的機能布料，搭配美背鏤空設計，打造出低調奢華運動時尚風。', '聚醯胺纖維 74%、彈性纖維 26% 、彈性纖維 21%', '使用中性洗滌劑，勿使用柔軟精', '2020-04-23 13:33:11'),
(62, 2, 'Cindy V領運動內衣', 620, '採用機能性面料，搭配雙色撞色設計提升整體活潑感。不論運動單穿或結合日常穿搭都合適，讓你從健身房到街頭都是全場焦點！', '尼龍79%、彈性纖維21%', '使用中性洗滌劑，勿使用柔軟精', '2020-04-23 13:33:11'),
(63, 2, 'Chevron 金屬印花運動內衣', 790, '採用機能性面料，搭配雙色撞色設計提升整體活潑感。不論運動單穿或結合日常穿搭都合適，讓你從健身房到街頭都是全場焦點！', '聚酯纖維 50%、尼龍 29%、彈性纖維 21%', '使用中性洗滌劑，勿使用柔軟精', '2020-04-23 13:33:11'),
(64, 2, 'Alloy 金屬印花運動內衣', 780, '胸前獨特的雙層剪裁，搭配透氣度絕佳的透膚網紗，魅力又有型！寬版下圍更提升支撐力，最適合熱愛運動又時尚的妳！ ', '聚醯胺纖維 74%、彈性纖維 26% ', '使用中性洗滌劑，勿使用柔軟精', '2020-04-23 13:33:11'),
(65, 2, 'Endpoint 撞色運動內衣', 730, '完美展現時尚與機能的運動內衣，採用高彈性性布料，舒適透氣。提高穩定度的同時展現時尚魅力，讓你動靜皆宜，展現迷人風采。 ', '聚酯纖維 50%、尼龍 29%、彈性纖維 21%', '使用中性洗滌劑，勿使用柔軟精', '2020-04-23 13:33:11'),
(66, 2, 'X Bra 運動內衣', 880, '背部內裡以彈性網紗布作為內襯，提升整體支撐力。採用啞光高彈性的機能布料，搭配美背鏤空設計，打造出低調奢華運動時尚風。', '聚醯胺纖維 74%、彈性纖維 26% 、彈性纖維 21%', '使用中性洗滌劑，勿使用柔軟精', '2020-04-23 13:33:11'),
(67, 2, 'Zen針織運動內衣', 620, '採用機能性面料，搭配雙色撞色設計提升整體活潑感。不論運動單穿或結合日常穿搭都合適，讓你從健身房到街頭都是全場焦點！', '尼龍79%、彈性纖維21%', '使用中性洗滌劑，勿使用柔軟精', '2020-04-23 13:33:11'),
(68, 2, 'Peak露肩運動內衣', 680, '採用機能性面料，搭配雙色撞色設計提升整體活潑感。不論運動單穿或結合日常穿搭都合適，讓你從健身房到街頭都是全場焦點！', '聚酯纖維 50%、尼龍 29%、彈性纖維 21%', '使用中性洗滌劑，勿使用柔軟精', '2020-04-23 13:33:11'),
(69, 2, 'Pacifica 蛇紋運動內衣', 910, '胸前獨特的雙層剪裁，搭配透氣度絕佳的透膚網紗，魅力又有型！寬版下圍更提升支撐力，最適合熱愛運動又時尚的妳！ ', '聚醯胺纖維 74%、彈性纖維 26% ', '使用中性洗滌劑，勿使用柔軟精', '2020-04-23 13:33:11'),
(70, 2, 'Dayside 運動內衣 漸層運動內衣', 730, '完美展現時尚與機能的運動內衣，採用高彈性性布料，舒適透氣。提高穩定度的同時展現時尚魅力，讓你動靜皆宜，展現迷人風采。 ', '聚酯纖維 50%、尼龍 29%、彈性纖維 21%', '使用中性洗滌劑，勿使用柔軟精', '2020-04-23 13:33:11'),
(71, 2, 'Naomi Crop 運動內衣', 880, '背部內裡以彈性網紗布作為內襯，提升整體支撐力。採用啞光高彈性的機能布料，搭配美背鏤空設計，打造出低調奢華運動時尚風。', '聚醯胺纖維 74%、彈性纖維 26% 、彈性纖維 21%', '使用中性洗滌劑，勿使用柔軟精', '2020-04-23 13:33:11'),
(72, 2, 'Viper 運動內衣', 620, '採用機能性面料，搭配雙色撞色設計提升整體活潑感。不論運動單穿或結合日常穿搭都合適，讓你從健身房到街頭都是全場焦點！', '尼龍79%、彈性纖維21%', '使用中性洗滌劑，勿使用柔軟精', '2020-04-23 13:33:11'),
(73, 3, 'HEROINE SPORT Boost 短袖上衣', 770, '素雅具有質感，採用輕盈且柔軟的機能布料，舒適兼具修飾身型效果，讓妳輕鬆穿出休閒時髦感。', '聚酯纖維 50%、尼龍 29%、彈性纖維 21%', '使用中性洗滌劑，勿使用柔軟精', '0000-00-00 00:00:00'),
(74, 3, 'ALALA Flow 短版運動上衣', 990, '精緻的細肩帶搭配V領領圍，有效修飾臉型。簡單卻又不失優雅氣質，不論搭配任何下身都時尚亮眼！', '尼龍79%、彈性纖維21%', '使用中性洗滌劑，勿使用柔軟精', '0000-00-00 00:00:00'),
(75, 3, 'HEROINE SPORT Boost 短袖上衣', 540, '面料具有雷射虹彩光效果，在燈光照耀下產生特殊光澤。吸睛時尚的面料質感加上短版設計，無論是運動還是休閒穿搭都能讓妳輕鬆走在時尚尖端。', '聚酯纖維 50%、尼龍 29%、彈性纖維 21%', '使用中性洗滌劑，勿使用柔軟精', '0000-00-00 00:00:00'),
(76, 3, 'HEROINE SPORT Boost 短袖上衣', 790, '精緻的細肩帶搭配V領領圍，有效修飾臉型。簡單卻又不失優雅氣質，不論搭配任何下身都時尚亮眼！', '尼龍79%、彈性纖維21%', '使用中性洗滌劑，勿使用柔軟精', '0000-00-00 00:00:00'),
(77, 3, 'NYLORA Melford 短版上衣', 1000, '素雅具有質感，採用輕盈且柔軟的機能布料，舒適兼具修飾身型效果，讓妳輕鬆穿出休閒時髦感。', '尼龍79%、彈性纖維21%', '使用中性洗滌劑，勿使用柔軟精', '0000-00-00 00:00:00'),
(78, 3, 'ALALA Flow 短版運動上衣', 680, '面料具有雷射虹彩光效果，在燈光照耀下產生特殊光澤。吸睛時尚的面料質感加上短版設計，無論是運動還是休閒穿搭都能讓妳輕鬆走在時尚尖端。', '聚酯纖維 50%、尼龍 29%、彈性纖維 21%', '使用中性洗滌劑，勿使用柔軟精', '0000-00-00 00:00:00'),
(79, 3, 'HEROINE SPORT Boost 短版運動上衣', 840, '女人味十足的細肩帶設計搭配側邊綁帶及一字美背設計，簡約具有造型感，讓妳不論是去運動還是外出活動，舉手投足都充滿時尚魅力！', '尼龍79%、彈性纖維21%', '使用中性洗滌劑，勿使用柔軟精', '0000-00-00 00:00:00'),
(80, 4, 'SPLITS59 Leona 短版運動背心', 1000, '女人味十足的細肩帶設計搭配側邊綁帶及一字美背設計，簡約具有造型感，讓妳不論是去運動還是外出活動，舉手投足都充滿時尚魅力！', '尼龍79%、彈性纖維21%', '使用中性洗滌劑，勿使用柔軟精', '2020-05-26 00:00:00'),
(81, 4, 'SPLITS59 Airweight 無袖上衣', 680, '美背交叉設計凸顯妳的優雅氣息，搭配腰間的撞色邊條設計，簡約中不失設計感，適合氣質又充滿女人味的妳！', '聚酯纖維 50%、尼龍 29%、彈性纖維 21%', '使用中性洗滌劑，勿使用柔軟精', '2020-05-22 12:57:21'),
(82, 4, 'ALALA 網眼運動背心', 840, '女人味十足的細肩帶設計搭配側邊綁帶及一字美背設計，簡約具有造型感，讓妳不論是去運動還是外出活動，舉手投足都充滿時尚魅力！', '尼龍79%、彈性纖維21%', '使用中性洗滌劑，勿使用柔軟精', '0000-00-00 00:00:00'),
(83, 4, 'HEROINE SPORT Performance 削肩羅紋運動背心', 680, '美背交叉設計凸顯妳的優雅氣息，搭配腰間的撞色邊條設計，簡約中不失設計感，適合氣質又充滿女人味的妳！', '聚酯纖維 50%、尼龍 29%、彈性纖維 21%', '使用中性洗滌劑，勿使用柔軟精', '2020-05-12 12:57:17'),
(84, 4, 'YEAR OF OURS 羅紋V領運動背心', 790, '美背交叉設計凸顯妳的優雅氣息，搭配腰間的撞色邊條設計，簡約中不失設計感，適合氣質又充滿女人味的妳！', '聚酯纖維 50%、尼龍 29%、彈性纖維 21%', '使用中性洗滌劑，勿使用柔軟精', '0000-00-00 00:00:00'),
(85, 4, 'YEAR OF OURS 削肩羅紋運動背心', 790, '女人味十足的細肩帶設計搭配側邊綁帶及一字美背設計，簡約具有造型感，讓妳不論是去運動還是外出活動，舉手投足都充滿時尚魅力！', '尼龍79%、彈性纖維21%', '使用中性洗滌劑，勿使用柔軟精', '0000-00-00 00:00:00'),
(86, 4, 'ALALA 無袖上衣', 770, '精緻的細肩帶搭配V領領圍，有效修飾臉型。簡單卻又不失優雅氣質，不論搭配任何下身都時尚亮眼！', '聚酯纖維 50%、尼龍 29%、彈性纖維 21%', '使用中性洗滌劑，勿使用柔軟精', '0000-00-00 00:00:00'),
(87, 4, 'YEAR OF OURS Cut Out 造型短版背心', 990, '精緻的細肩帶搭配V領領圍，有效修飾臉型。簡單卻又不失優雅氣質，不論搭配任何下身都時尚亮眼！', '尼龍79%、彈性纖維21%', '使用中性洗滌劑，勿使用柔軟精', '0000-00-00 00:00:00'),
(88, 4, 'HEROINE SPORT performance 造型短版背心', 540, '美背交叉設計凸顯妳的優雅氣息，搭配腰間的撞色邊條設計，簡約中不失設計感，適合氣質又充滿女人味的妳！', '聚酯纖維 50%、尼龍 29%、彈性纖維 21%', '使用中性洗滌劑，勿使用柔軟精', '0000-00-00 00:00:00'),
(89, 4, 'YEAR OF OURS 網眼運動背心', 790, '精緻的細肩帶搭配V領領圍，有效修飾臉型。簡單卻又不失優雅氣質，不論搭配任何下身都時尚亮眼！', '尼龍79%、彈性纖維21%', '使用中性洗滌劑，勿使用柔軟精', '0000-00-00 00:00:00'),
(90, 4, 'YEAR OF OURS 羅紋V領運動背心', 790, '美背交叉設計凸顯妳的優雅氣息，搭配腰間的撞色邊條設計，簡約中不失設計感，適合氣質又充滿女人味的妳！', '聚酯纖維 50%、尼龍 29%、彈性纖維 21%', '使用中性洗滌劑，勿使用柔軟精', '0000-00-00 00:00:00'),
(91, 4, 'YEAR OF OURS 削肩羅紋運動背心', 790, '女人味十足的細肩帶設計搭配側邊綁帶及一字美背設計，簡約具有造型感，讓妳不論是去運動還是外出活動，舉手投足都充滿時尚魅力！', '尼龍79%、彈性纖維21%', '使用中性洗滌劑，勿使用柔軟精', '0000-00-00 00:00:00'),
(92, 4, 'ALALA 無袖上衣 bk', 770, '精緻的細肩帶搭配V領領圍，有效修飾臉型。簡單卻又不失優雅氣質，不論搭配任何下身都時尚亮眼！', '聚酯纖維 50%、尼龍 29%、彈性纖維 21%', '使用中性洗滌劑，勿使用柔軟精', '0000-00-00 00:00:00'),
(93, 4, 'YEAR OF OURS Cut Out 造型短版背心', 990, '精緻的細肩帶搭配V領領圍，有效修飾臉型。簡單卻又不失優雅氣質，不論搭配任何下身都時尚亮眼！', '尼龍79%、彈性纖維21%', '使用中性洗滌劑，勿使用柔軟精', '0000-00-00 00:00:00'),
(94, 4, 'HEROINE SPORT performance 造型短版背心', 540, '美背交叉設計凸顯妳的優雅氣息，搭配腰間的撞色邊條設計，簡約中不失設計感，適合氣質又充滿女人味的妳！', '聚酯纖維 50%、尼龍 29%、彈性纖維 21%', '使用中性洗滌劑，勿使用柔軟精', '0000-00-00 00:00:00'),
(95, 4, 'YEAR OF OURS 網眼運動背心', 790, '精緻的細肩帶搭配V領領圍，有效修飾臉型。簡單卻又不失優雅氣質，不論搭配任何下身都時尚亮眼！', '尼龍79%、彈性纖維21%', '使用中性洗滌劑，勿使用柔軟精', '0000-00-00 00:00:00'),
(96, 4, 'YEAR OF OURS 網眼運動背心', 790, '精緻的細肩帶搭配V領領圍，有效修飾臉型。簡單卻又不失優雅氣質，不論搭配任何下身都時尚亮眼！', '尼龍79%、彈性纖維21%', '使用中性洗滌劑，勿使用柔軟精', '0000-00-00 00:00:00'),
(97, 5, 'YEAR OF OURS Everyday 後綁帶長袖上衣 ', 1000, '寬鬆版型搭配肩膀切口造型，低調簡約不失設計感。雙層擋風裁片加上下擺抽繩設計，讓妳享有多重穿搭，是款時尚機能兼具的長袖上衣。', '尼龍79%、彈性纖維21%', '使用中性洗滌劑，勿使用柔軟精', '0000-00-00 00:00:00'),
(98, 5, 'YEAR OF OURS Thermal 長袖上衣', 680, '寬鬆肩線設計讓你方便活動，搭配胸前半排木釦，簡約不失細節的設計，增添整體造型精緻度。面料選用純淨無汙染的100%有機純棉，讓妳同時穿的舒適，也能為友善環境盡一份心力。', '聚酯纖維 50%、尼龍 29%、彈性纖維 21%', '使用中性洗滌劑，勿使用柔軟精', '0000-00-00 00:00:00'),
(99, 5, 'NYLORA Bane 後綁帶長袖上衣', 840, '短版版型搭配胸前條紋設計。俏麗又甜美。採用綿密針織面料，親膚柔順。穿上它展現妳的青春活力！', '尼龍79%、彈性纖維21%', '使用中性洗滌劑，勿使用柔軟精', '0000-00-00 00:00:00'),
(100, 5, 'NYLORA Wellesley 長袖連帽上衣', 680, '寬鬆肩線設計讓你方便活動，搭配胸前半排木釦，簡約不失細節的設計，增添整體造型精緻度。面料選用純淨無汙染的100%有機純棉，讓妳同時穿的舒適，也能為友善環境盡一份心力。', '聚酯纖維 50%、尼龍 29%、彈性纖維 21%', '使用中性洗滌劑，勿使用柔軟精', '0000-00-00 00:00:00'),
(101, 5, 'HEROINE SPORT Apex 絲絨連帽上衣', 790, '短版版型搭配胸前條紋設計。俏麗又甜美。採用綿密針織面料，親膚柔順。穿上它展現妳的青春活力！', '聚酯纖維 50%、尼龍 29%、彈性纖維 21%', '使用中性洗滌劑，勿使用柔軟精', '0000-00-00 00:00:00'),
(102, 5, 'HEROINE SPORT Plush 絲絨連帽上衣', 790, '寬鬆版型搭配肩膀切口造型，低調簡約不失設計感。雙層擋風裁片加上下擺抽繩設計，讓妳享有多重穿搭，是款時尚機能兼具的長袖上衣。', '尼龍79%、彈性纖維21%', '使用中性洗滌劑，勿使用柔軟精', '0000-00-00 00:00:00'),
(103, 5, 'MATE THE LABEL Give a Damn 休閒長袖上衣', 770, '精緻的細肩帶搭配V領領圍，有效修飾臉型。簡單卻又不失優雅氣質，不論搭配任何下身都時尚亮眼！', '聚酯纖維 50%、尼龍 29%、彈性纖維 21%', '使用中性洗滌劑，勿使用柔軟精', '2020-05-13 14:07:14'),
(104, 5, 'MATE THE LABEL Spencer 長袖上衣', 990, '精緻的細肩帶搭配V領領圍，有效修飾臉型。簡單卻又不失優雅氣質，不論搭配任何下身都時尚亮眼！', '尼龍79%、彈性纖維21%', '使用中性洗滌劑，勿使用柔軟精', '2020-05-20 12:53:26'),
(105, 5, 'SPLITS59 Maddie 連帽上衣', 540, '短版的款式搭配袖子上的配色設計，休閒中又不失時尚精緻，給妳最迷人的時髦運動風格！', '聚酯纖維 50%、尼龍 29%、彈性纖維 21%', '使用中性洗滌劑，勿使用柔軟精', '0000-00-00 00:00:00'),
(106, 5, 'YEAR OF OURS Everyday 長袖上衣', 790, '精緻的細肩帶搭配V領領圍，有效修飾臉型。簡單卻又不失優雅氣質，不論搭配任何下身都時尚亮眼！', '尼龍79%、彈性纖維21%', '使用中性洗滌劑，勿使用柔軟精', '0000-00-00 00:00:00'),
(107, 5, 'NYLORA Bane 長袖上衣', 790, '半開式的拉鍊設計，可隨心情調整領圍高度。拇指孔洞設計可穩固袖口，讓衣服保持平整，完美展現獨特個性時尚！', '聚酯纖維 50%、尼龍 29%、彈性纖維 21%', '使用中性洗滌劑，勿使用柔軟精', '0000-00-00 00:00:00'),
(108, 5, 'YEAR OF OURS Diana 短版長袖上衣 ', 790, '寬鬆肩線設計讓你方便活動，搭配胸前半排木釦，簡約不失細節的設計，增添整體造型精緻度。面料選用純淨無汙染的100%有機純棉，讓妳同時穿的舒適，也能為友善環境盡一份心力。', '尼龍79%、彈性纖維21%', '使用中性洗滌劑，勿使用柔軟精', '2020-05-14 14:06:50'),
(109, 5, 'NYLORA Bane 短版長袖上衣', 770, '精緻的細肩帶搭配V領領圍，有效修飾臉型。簡單卻又不失優雅氣質，不論搭配任何下身都時尚亮眼！', '聚酯纖維 50%、尼龍 29%、彈性纖維 21%', '使用中性洗滌劑，勿使用柔軟精', '0000-00-00 00:00:00'),
(110, 5, 'NYLORA Wellesley 後綁帶長袖上衣', 990, '精緻的細肩帶搭配V領領圍，有效修飾臉型。簡單卻又不失優雅氣質，不論搭配任何下身都時尚亮眼！', '尼龍79%、彈性纖維21%', '使用中性洗滌劑，勿使用柔軟精', '0000-00-00 00:00:00'),
(111, 5, 'HEROINE SPORT Apex 短版長袖上衣', 540, '短版的款式搭配袖子上的配色設計，休閒中又不失時尚精緻，給妳最迷人的時髦運動風格！', '聚酯纖維 50%、尼龍 29%、彈性纖維 21%', '使用中性洗滌劑，勿使用柔軟精', '0000-00-00 00:00:00'),
(112, 5, 'HEROINE SPORT Plush 絲絨連帽上衣', 790, '精緻的細肩帶搭配V領領圍，有效修飾臉型。簡單卻又不失優雅氣質，不論搭配任何下身都時尚亮眼！', '尼龍79%、彈性纖維21%', '使用中性洗滌劑，勿使用柔軟精', '0000-00-00 00:00:00'),
(113, 5, 'MATE THE LABEL Give a Damn 長袖上衣', 790, '寬鬆肩線設計讓你方便活動，搭配胸前半排木釦，簡約不失細節的設計，增添整體造型精緻度。面料選用純淨無汙染的100%有機純棉，讓妳同時穿的舒適，也能為友善環境盡一份心力。', '尼龍79%、彈性纖維21%', '使用中性洗滌劑，勿使用柔軟精', '2020-05-12 14:06:45'),
(114, 5, 'NYLORA Bane 長袖上衣', 540, '短版的款式搭配袖子上的配色設計，休閒中又不失時尚精緻，給妳最迷人的時髦運動風格！', '聚酯纖維 50%、尼龍 29%、彈性纖維 21%', '使用中性洗滌劑，勿使用柔軟精', '0000-00-00 00:00:00'),
(115, 5, 'SPLITS59 Maddie 連帽上衣 ', 790, '半開式的拉鍊設計，可隨心情調整領圍高度。拇指孔洞設計可穩固袖口，讓衣服保持平整，完美展現獨特個性時尚！', '尼龍79%、彈性纖維21%', '使用中性洗滌劑，勿使用柔軟精', '0000-00-00 00:00:00'),
(116, 5, 'MATE THE LABEL Give a Damn 絲絨連帽上衣', 540, '短版的款式搭配袖子上的配色設計，休閒中又不失時尚精緻，給妳最迷人的時髦運動風格！', '聚酯纖維 50%、尼龍 29%、彈性纖維 21%', '使用中性洗滌劑，勿使用柔軟精', '0000-00-00 00:00:00'),
(117, 5, 'MATE THE LABEL Spencer 長袖上衣', 540, '短版的款式搭配袖子上的配色設計，休閒中又不失時尚精緻，給妳最迷人的時髦運動風格！', '聚酯纖維 50%、尼龍 29%、彈性纖維 21%', '使用中性洗滌劑，勿使用柔軟精', '2020-05-06 14:07:34'),
(118, 5, 'SPLITS59 Maddie 連帽上衣', 790, '精緻的細肩帶搭配V領領圍，有效修飾臉型。簡單卻又不失優雅氣質，不論搭配任何下身都時尚亮眼！', '尼龍79%、彈性纖維21%', '使用中性洗滌劑，勿使用柔軟精', '0000-00-00 00:00:00'),
(119, 5, 'YEAR OF OURS Diana 短版長袖上衣 ', 540, '半開式的拉鍊設計，可隨心情調整領圍高度。拇指孔洞設計可穩固袖口，讓衣服保持平整，完美展現獨特個性時尚！', '聚酯纖維 50%、尼龍 29%、彈性纖維 21%', '使用中性洗滌劑，勿使用柔軟精', '0000-00-00 00:00:00'),
(120, 6, 'VAARA Meave 撞色長袖上衣', 540, '以舒適寬鬆的落肩版型，和充滿設計感的對比撞色剪接設計，為妳帶來不可忽視的迷人魅力。', '聚酯纖維 50%、尼龍 29%、彈性纖維 21%', '使用中性洗滌劑，勿使用柔軟精', '0000-00-00 00:00:00'),
(121, 6, 'HEROINE SPORT Off Duty 運動上衣', 790, '選用高級棉料，親膚柔軟舒適。寬口領圍設計增添整體造型層次感，讓簡單的長袖上衣百搭又舒適。袖口採用縮口設計，簡約中帶運動感。', '尼龍79%、彈性纖維21%', '使用中性洗滌劑，勿使用柔軟精', '0000-00-00 00:00:00'),
(122, 6, 'NYLORA Lucia 長袖運動棉衫', 540, '選用高級棉料，親膚柔軟舒適。寬口領圍設計增添整體造型層次感，讓簡單的長袖上衣百搭又舒適。袖口採用縮口設計，簡約中帶運動感。', '聚酯纖維 50%、尼龍 29%、彈性纖維 21%', '使用中性洗滌劑，勿使用柔軟精', '0000-00-00 00:00:00'),
(123, 7, 'SPLITS59 Elsie 迷彩運動外套', 790, '採用高級絲質面料搭配連帽設計及口袋設計，簡約不失細節，使妳輕鬆打造慵懶的休閒時尚風格！', '尼龍79%、彈性纖維21%', '使用中性洗滌劑，勿使用柔軟精', '0000-00-00 00:00:00'),
(124, 7, 'NYLORA Beverly 披風外套', 540, '靈感來自花卉採用水彩式設計手法呈現，別具造型的連帽設計及口袋設計，簡約不失細節，使妳輕鬆打造度假休閒時尚風格！', '聚酯纖維 50%、尼龍 29%、彈性纖維 21%', '使用中性洗滌劑，勿使用柔軟精', '0000-00-00 00:00:00'),
(125, 7, 'LANSTON Bloom 印花休閒外套', 790, '半開式的拉鍊設計，可隨心情調整領圍高度。拇指孔洞設計可穩固袖口，讓衣服保持平整，完美展現獨特個性時尚！', '尼龍79%、彈性纖維21%', '使用中性洗滌劑，勿使用柔軟精', '0000-00-00 00:00:00'),
(126, 7, 'LANSTON Bloom 印花休閒外套', 540, '採用高級絲質面料搭配連帽設計及口袋設計，簡約不失細節，使妳輕鬆打造慵懶的休閒時尚風格！', '聚酯纖維 50%、尼龍 29%、彈性纖維 21%', '使用中性洗滌劑，勿使用柔軟精', '2020-05-07 14:07:37'),
(127, 7, 'LANSTON 絲質休閒外套', 540, '短版的款式搭配袖子上的配色設計，休閒中又不失時尚精緻，給妳最迷人的時髦運動風格！', '聚酯纖維 50%、尼龍 29%、彈性纖維 21%', '使用中性洗滌劑，勿使用柔軟精', '0000-00-00 00:00:00'),
(128, 7, 'BLACK MILE Waltz Pull On 絲質休閒外套', 790, '靈感來自花卉採用水彩式設計手法呈現，別具造型的連帽設計及口袋設計，簡約不失細節，使妳輕鬆打造度假休閒時尚風格！', '尼龍79%、彈性纖維21%', '使用中性洗滌劑，勿使用柔軟精', '0000-00-00 00:00:00'),
(129, 7, 'LANSTON 絲質休閒外套 ', 540, '採用高級絲質面料搭配連帽設計及口袋設計，簡約不失細節，使妳輕鬆打造慵懶的休閒時尚風格！', '聚酯纖維 50%、尼龍 29%、彈性纖維 21%', '使用中性洗滌劑，勿使用柔軟精', '0000-00-00 00:00:00'),
(130, 7, 'BLACK MILE Waltz Pull On 運動外套', 540, '以舒適寬鬆的落肩版型，和充滿設計感的對比撞色剪接設計，為妳帶來不可忽視的迷人魅力。', '聚酯纖維 50%、尼龍 29%、彈性纖維 21%', '使用中性洗滌劑，勿使用柔軟精', '2020-05-11 14:07:43'),
(131, 7, 'BLACK MILE Waltz Pull On 運動外套', 790, '選用高級棉料，親膚柔軟舒適。寬口領圍設計增添整體造型層次感，讓簡單的長袖上衣百搭又舒適。袖口採用縮口設計，簡約中帶運動感。', '尼龍79%、彈性纖維21%', '使用中性洗滌劑，勿使用柔軟精', '0000-00-00 00:00:00'),
(132, 7, 'BLACK MILE No Limit 連帽外套', 540, '採取高級面料搭配披風式設計正反面皆有造型繩細節，造型感十足，適合平日與運動後搭配穿著，時髦感十足。', '聚酯纖維 50%、尼龍 29%、彈性纖維 21%', '使用中性洗滌劑，勿使用柔軟精', '0000-00-00 00:00:00'),
(133, 7, 'HEROINE SPORT Aspen 短版外套', 540, '採取高級面料搭配披風式設計正反面皆有造型繩細節，造型感十足，適合平日與運動後搭配穿著，時髦感十足。', '聚酯纖維 50%、尼龍 29%、彈性纖維 21%', '使用中性洗滌劑，勿使用柔軟精', '0000-00-00 00:00:00'),
(134, 8, 'ALALA Captain 撞色緊身運動褲', 540, '採用高級面料搭配精緻的緹花針織設計，完美雕塑曲線，無論在健身房或者街頭都是眾人注目的焦點！', '聚酯纖維 50%、尼龍 29%、彈性纖維 21%', '使用中性洗滌劑，勿使用柔軟精', '2020-05-21 14:07:46'),
(135, 8, 'ALALA Captain 網紗拼接緊身褲', 790, '膝蓋後開始以異材質面料做拼接，上下撞色的設計時髦有型，不管是運動還是一般外出搭配T-shirt穿搭都很適合。', '尼龍79%、彈性纖維21%', '使用中性洗滌劑，勿使用柔軟精', '0000-00-00 00:00:00'),
(136, 8, 'ALALA Raya 羅紋緊身運動褲', 540, '高腰頭提供適度壓縮力，有效收緊腹部肌群。高飽和的緞面異材質拼接造型，增添整體造型時尚感，襯托出妳的健康活力美！', '聚酯纖維 50%、尼龍 29%、彈性纖維 21%', '使用中性洗滌劑，勿使用柔軟精', '0000-00-00 00:00:00'),
(137, 8, 'HEROINE SPORT Affinity 網紗拼接緊身運動褲', 540, '採用高級面料搭配精緻的緹花針織設計，完美雕塑曲線，無論在健身房或者街頭都是眾人注目的焦點！', '聚酯纖維 50%、尼龍 29%、彈性纖維 21%', '使用中性洗滌劑，勿使用柔軟精', '0000-00-00 00:00:00'),
(138, 8, 'HEROINE SPORT Gym 緊身運動褲', 790, '高腰頭提供適度壓縮力，有效收緊腹部肌群。高飽和的緞面異材質拼接造型，增添整體造型時尚感，襯托出妳的健康活力美！', '尼龍79%、彈性纖維21%', '使用中性洗滌劑，勿使用柔軟精', '2020-05-27 14:06:53'),
(139, 8, 'NYLORA Levee 撞色緊身運動褲', 540, '採用高級絲質面料搭配連帽設計及口袋設計，簡約不失細節，使妳輕鬆打造慵懶的休閒時尚風格！', '聚酯纖維 50%、尼龍 29%、彈性纖維 21%', '使用中性洗滌劑，勿使用柔軟精', '0000-00-00 00:00:00'),
(140, 8, 'LANSTON Circut 網紗拼接緊身褲', 540, '高腰頭提供適度壓縮力，有效收緊腹部肌群。高飽和的緞面異材質拼接造型，增添整體造型時尚感，襯托出妳的健康活力美！', '聚酯纖維 50%、尼龍 29%、彈性纖維 21%', '使用中性洗滌劑，勿使用柔軟精', '0000-00-00 00:00:00'),
(141, 8, 'LANSTON Circut 網紗拼接緊身褲', 790, '採用高級面料搭配精緻的緹花針織設計，完美雕塑曲線，無論在健身房或者街頭都是眾人注目的焦點！', '尼龍79%、彈性纖維21%', '使用中性洗滌劑，勿使用柔軟精', '0000-00-00 00:00:00'),
(142, 8, 'LANSTON Circut 網紗拼接緊身褲', 540, '高腰頭提供適度壓縮力，有效收緊腹部肌群。高飽和的緞面異材質拼接造型，增添整體造型時尚感，襯托出妳的健康活力美！', '聚酯纖維 50%、尼龍 29%、彈性纖維 21%', '使用中性洗滌劑，勿使用柔軟精', '2020-05-11 14:07:52'),
(143, 8, 'NYLORA Elia 撞色綁帶緊身褲', 790, '膝蓋後開始以異材質面料做拼接，上下撞色的設計時髦有型，不管是運動還是一般外出搭配T-shirt穿搭都很適合。', '尼龍79%、彈性纖維21%', '使用中性洗滌劑，勿使用柔軟精', '0000-00-00 00:00:00'),
(144, 8, 'LANSTON Laguna 網紗拼接運動褲', 540, '膝蓋後開始以異材質面料做拼接，上下撞色的設計時髦有型，不管是運動還是一般外出搭配T-shirt穿搭都很適合。', '聚酯纖維 50%、尼龍 29%、彈性纖維 21%', '使用中性洗滌劑，勿使用柔軟精', '0000-00-00 00:00:00'),
(145, 8, 'YEAR OF OURS Rib 54 緊身運動褲', 790, '高腰頭提供適度壓縮力，有效收緊腹部肌群。高飽和的緞面異材質拼接造型，增添整體造型時尚感，襯托出妳的健康活力美！', '尼龍79%、彈性纖維21%', '使用中性洗滌劑，勿使用柔軟精', '0000-00-00 00:00:00'),
(146, 8, 'HEROINE SPORT 壓紋緊身運動褲', 540, '膝蓋後開始以異材質面料做拼接，上下撞色的設計時髦有型，不管是運動還是一般外出搭配T-shirt穿搭都很適合。', '聚酯纖維 50%、尼龍 29%、彈性纖維 21%', '使用中性洗滌劑，勿使用柔軟精', '0000-00-00 00:00:00'),
(147, 8, 'HEROINE SPORT 壓紋緊身運動褲', 540, '高腰頭提供適度壓縮力，有效收緊腹部肌群。高飽和的緞面異材質拼接造型，增添整體造型時尚感，襯托出妳的健康活力美！', '聚酯纖維 50%、尼龍 29%、彈性纖維 21%', '使用中性洗滌劑，勿使用柔軟精', '0000-00-00 00:00:00'),
(148, 8, 'ALO YOGA Moto 騎士緊身運動褲', 790, '採用高級面料搭配精緻的緹花針織設計，完美雕塑曲線，無論在健身房或者街頭都是眾人注目的焦點！', '尼龍79%、彈性纖維21%', '使用中性洗滌劑，勿使用柔軟精', '0000-00-00 00:00:00'),
(149, 8, 'ALO YOGA 高腰緊身褲', 540, '高腰頭提供適度壓縮力，有效收緊腹部肌群。高飽和的緞面異材質拼接造型，增添整體造型時尚感，襯托出妳的健康活力美！', '聚酯纖維 50%、尼龍 29%、彈性纖維 21%', '使用中性洗滌劑，勿使用柔軟精', '0000-00-00 00:00:00'),
(150, 8, 'NYLORA Levee 撞色緊身運動褲', 540, '採用高級面料搭配精緻的緹花針織設計，完美雕塑曲線，無論在健身房或者街頭都是眾人注目的焦點！', '聚酯纖維 50%、尼龍 29%、彈性纖維 21%', '使用中性洗滌劑，勿使用柔軟精', '0000-00-00 00:00:00'),
(151, 8, 'LANSTON Circut 羅紋緊身運動褲', 790, '高腰頭提供適度壓縮力，有效收緊腹部肌群。高飽和的緞面異材質拼接造型，增添整體造型時尚感，襯托出妳的健康活力美！', '尼龍79%、彈性纖維21%', '使用中性洗滌劑，勿使用柔軟精', '2020-05-21 14:07:00'),
(152, 8, 'NYLORA Levee 撞色緊身運動褲', 540, '膝蓋後開始以異材質面料做拼接，上下撞色的設計時髦有型，不管是運動還是一般外出搭配T-shirt穿搭都很適合。', '聚酯纖維 50%、尼龍 29%、彈性纖維 21%', '使用中性洗滌劑，勿使用柔軟精', '2020-05-13 14:07:54'),
(153, 8, 'LANSTON Circut 壓紋緊身運動褲', 790, '高腰頭提供適度壓縮力，有效收緊腹部肌群。高飽和的緞面異材質拼接造型，增添整體造型時尚感，襯托出妳的健康活力美！', '尼龍79%、彈性纖維21%', '使用中性洗滌劑，勿使用柔軟精', '0000-00-00 00:00:00'),
(154, 9, 'SPLITS59 Ronnie 配條運動長褲', 540, '膝蓋後開始以異材質面料做拼接，上下撞色的設計時髦有型，不管是運動還是一般外出搭配T-shirt穿搭都很適合。', '聚酯纖維 50%、尼龍 29%、彈性纖維 21%', '使用中性洗滌劑，勿使用柔軟精', '0000-00-00 00:00:00'),
(155, 9, 'YEAR OF OURS Velour 休閒長褲', 790, '側邊撞色配條搭配高腰寬褲造型，簡約不失造型感。採用機能性面料，柔軟舒適兼具時尚感，輕鬆為妳打造休閒時髦LOOK。', '尼龍79%、彈性纖維21%', '使用中性洗滌劑，勿使用柔軟精', '0000-00-00 00:00:00'),
(156, 9, 'HEROINE SPORT 棉質運動長褲', 540, '側邊撞色配條搭配高腰寬褲造型，簡約不失造型感。採用機能性面料，柔軟舒適兼具時尚感，輕鬆為妳打造休閒時髦LOOK。', '聚酯纖維 50%、尼龍 29%、彈性纖維 21%', '使用中性洗滌劑，勿使用柔軟精', '0000-00-00 00:00:00'),
(157, 9, 'NYLORA 側邊配條運動褲', 540, '採用柔軟親膚的內刷毛圈面料，搭配復古的縮口褲型，營造出率性不羈的個性街頭風格，簡單的休閒運動棉褲也可以出色有型！', '聚酯纖維 50%、尼龍 29%、彈性纖維 21%', '使用中性洗滌劑，勿使用柔軟精', '0000-00-00 00:00:00'),
(158, 9, 'NYLORA 側邊配條運動褲', 790, '採用高級面料搭配精緻的緹花針織設計，完美雕塑曲線，無論在健身房或者街頭都是眾人注目的焦點！', '尼龍79%、彈性纖維21%', '使用中性洗滌劑，勿使用柔軟精', '2020-05-03 14:06:57'),
(159, 9, 'ALALA Rise 運動長褲', 540, '高腰頭提供適度壓縮力，有效收緊腹部肌群。高飽和的緞面異材質拼接造型，增添整體造型時尚感，襯托出妳的健康活力美！', '聚酯纖維 50%、尼龍 29%、彈性纖維 21%', '使用中性洗滌劑，勿使用柔軟精', '0000-00-00 00:00:00'),
(160, 9, 'HEROINE SPORT Plush 絲絨運動長褲', 540, '採用高級面料搭配精緻的緹花針織設計，完美雕塑曲線，無論在健身房或者街頭都是眾人注目的焦點！', '聚酯纖維 50%、尼龍 29%、彈性纖維 21%', '使用中性洗滌劑，勿使用柔軟精', '0000-00-00 00:00:00'),
(161, 9, 'SPIRITUAL GANGSTER Stellar 運動寬褲', 790, '高腰頭提供適度壓縮力，有效收緊腹部肌群。高飽和的緞面異材質拼接造型，增添整體造型時尚感，襯托出妳的健康活力美！', '尼龍79%、彈性纖維21%', '使用中性洗滌劑，勿使用柔軟精', '0000-00-00 00:00:00'),
(162, 9, 'SPIRITUAL GANGSTER 側邊滾條運動長褲', 540, '採用柔軟親膚的內刷毛圈面料，搭配復古的縮口褲型，營造出率性不羈的個性街頭風格，簡單的休閒運動棉褲也可以出色有型！', '聚酯纖維 50%、尼龍 29%、彈性纖維 21%', '使用中性洗滌劑，勿使用柔軟精', '2020-05-15 14:07:57'),
(163, 9, 'BLACK MILE Consciousness 運動長褲', 790, '側邊撞色配條搭配高腰寬褲造型，簡約不失造型感。採用機能性面料，柔軟舒適兼具時尚感，輕鬆為妳打造休閒時髦LOOK。', '尼龍79%、彈性纖維21%', '使用中性洗滌劑，勿使用柔軟精', '2020-05-03 14:07:02'),
(164, 9, 'BLACK MILE Consciousness 運動長褲', 540, '採用柔軟親膚的內刷毛圈面料，搭配復古的縮口褲型，營造出率性不羈的個性街頭風格，簡單的休閒運動棉褲也可以出色有型！', '聚酯纖維 50%、尼龍 29%、彈性纖維 21%', '使用中性洗滌劑，勿使用柔軟精', '0000-00-00 00:00:00'),
(165, 9, 'SPIRITUAL GANGSTER Stellar 運動寬褲', 790, '側邊撞色配條搭配高腰寬褲造型，簡約不失造型感。採用機能性面料，柔軟舒適兼具時尚感，輕鬆為妳打造休閒時髦LOOK。', '尼龍79%、彈性纖維21%', '使用中性洗滌劑，勿使用柔軟精', '0000-00-00 00:00:00'),
(166, 10, 'HEROINE SPORT Boost 運動短褲', 540, '採用別緻的網眼透視面料結合經典款短褲褲型，產生唯美透視感，讓妳從街頭走到健身房都是時尚焦點！', '聚酯纖維 50%、尼龍 29%、彈性纖維 21%', '使用中性洗滌劑，勿使用柔軟精', '0000-00-00 00:00:00'),
(167, 10, 'HEROINE SPORT 雙層網紗短褲', 540, '採有優雅的光澤綢緞面料，和運動感十足的網眼面料相互拼接，打造獨一無二的質感運動風格，性感俏麗的版型，讓你不論是去運動或是走在街頭，都能盡現魅力光彩！', '聚酯纖維 50%、尼龍 29%、彈性纖維 21%', '使用中性洗滌劑，勿使用柔軟精', '0000-00-00 00:00:00'),
(168, 10, 'LANSTON Bloom 雙層運動短褲', 790, '採用高級面料搭配精緻的緹花針織設計，完美雕塑曲線，無論在健身房或者街頭都是眾人注目的焦點！', '尼龍79%、彈性纖維21%', '使用中性洗滌劑，勿使用柔軟精', '0000-00-00 00:00:00'),
(169, 10, 'BLACK MILE Waltz 運動短褲', 540, '採用別緻的網眼透視面料結合經典款短褲褲型，產生唯美透視感，讓妳從街頭走到健身房都是時尚焦點！', '聚酯纖維 50%、尼龍 29%、彈性纖維 21%', '使用中性洗滌劑，勿使用柔軟精', '0000-00-00 00:00:00'),
(170, 10, 'BLACK MILE Waltz 運動短褲', 540, '採有優雅的光澤綢緞面料，和運動感十足的網眼面料相互拼接，打造獨一無二的質感運動風格，性感俏麗的版型，讓你不論是去運動或是走在街頭，都能盡現魅力光彩！', '聚酯纖維 50%、尼龍 29%、彈性纖維 21%', '使用中性洗滌劑，勿使用柔軟精', '2020-05-21 14:08:16'),
(171, 10, 'NAKED PRINCESS Velvet 運動短褲', 790, '盡情展現妳的苗條好身材吧！採用透氣排汗的機能性面料搭配鬆緊帶腰頭和精緻的logo設計，原來時尚可以如此輕鬆優雅！', '尼龍79%、彈性纖維21%', '使用中性洗滌劑，勿使用柔軟精', '0000-00-00 00:00:00'),
(172, 11, 'KORAL Densonic 單車短褲', 540, '採用高機能性與舒適度的科技面料，時髦簡約的都會運動風格，讓妳在運動時也充滿自信風采。', '聚酯纖維 50%、尼龍 29%、彈性纖維 21%', '使用中性洗滌劑，勿使用柔軟精', '0000-00-00 00:00:00'),
(173, 11, 'ULTRACOR Deco Stripe 邊條印花單車短褲', 790, '盡情展現妳的苗條好身材吧！褲腿兩側大膽的雷射切割鏤空設計，搭配虹彩般的銀藍色的邊條印花，和時髦又亮眼的單車褲型，讓妳從健身房到街頭都是萬眾矚目的焦點！', '尼龍79%、彈性纖維21%', '使用中性洗滌劑，勿使用柔軟精', '0000-00-00 00:00:00'),
(174, 11, 'MICHI Liquid Bike 單車短褲', 540, '採用高機能性與舒適度的科技面料，時髦簡約的都會運動風格，讓妳在運動時也充滿自信風采。', '聚酯纖維 50%、尼龍 29%、彈性纖維 21%', '使用中性洗滌劑，勿使用柔軟精', '2020-05-11 14:08:13'),
(175, 11, 'ULTRACOR Aero Splash 漸層切割單車短褲', 540, '盡情展現妳的苗條好身材吧！褲腿兩側大膽的雷射切割鏤空設計，搭配虹彩般的銀藍色的邊條印花，和時髦又亮眼的單車褲型，讓妳從健身房到街頭都是萬眾矚目的焦點！', '聚酯纖維 50%、尼龍 29%、彈性纖維 21%', '使用中性洗滌劑，勿使用柔軟精', '0000-00-00 00:00:00'),
(176, 11, 'MICHI Liquid Bike 單車短褲', 790, '布料的低調奢華的啞光感，搭配五分高腰合身剪裁，不僅能展現腿部線條，同時展現輕奢運動時尚感，是一件時尚與舒適的完美結合。', '尼龍79%、彈性纖維21%', '使用中性洗滌劑，勿使用柔軟精', '2020-05-29 14:07:11'),
(177, 11, 'ULTRACOR Aero Splash 單車短褲', 540, '高腰頭提供適度壓縮力，有效收緊腹部肌群。高飽和的緞面異材質拼接造型，增添整體造型時尚感，襯托出妳的健康活力美！', '聚酯纖維 50%、尼龍 29%、彈性纖維 21%', '使用中性洗滌劑，勿使用柔軟精', '0000-00-00 00:00:00'),
(178, 11, 'ULTRACOR Aero Splash 漸層切割單車短褲', 540, '布料的低調奢華的啞光感，搭配五分高腰合身剪裁，不僅能展現腿部線條，同時展現輕奢運動時尚感，是一件時尚與舒適的完美結合。', '聚酯纖維 50%、尼龍 29%、彈性纖維 21%', '使用中性洗滌劑，勿使用柔軟精', '0000-00-00 00:00:00'),
(179, 12, 'ALALA Crop 七分緊身運動褲', 540, '採用高機能性與舒適度的科技面料，時髦簡約的都會運動風格，讓妳在運動時也充滿自信風采。', '聚酯纖維 50%、尼龍 29%、彈性纖維 21%', '使用中性洗滌劑，勿使用柔軟精', '0000-00-00 00:00:00'),
(180, 12, 'KORAL Zone 仿皮休閒七分褲', 790, '盡情展現妳的苗條好身材吧！褲腿兩側大膽的雷射切割鏤空設計，搭配虹彩般的銀藍色的邊條印花，和時髦又亮眼的單車褲型，讓妳從健身房到街頭都是萬眾矚目的焦點！', '尼龍79%、彈性纖維21%', '使用中性洗滌劑，勿使用柔軟精', '0000-00-00 00:00:00'),
(181, 12, 'NYLORA Derby 七分緊身運動褲', 540, '採用高機能性與舒適度的科技面料，時髦簡約的都會運動風格，讓妳在運動時也充滿自信風采。', '聚酯纖維 50%、尼龍 29%、彈性纖維 21%', '使用中性洗滌劑，勿使用柔軟精', '0000-00-00 00:00:00'),
(182, 12, 'BEYOND YOGA New Spacedye 緊身運動褲', 540, '盡情展現妳的苗條好身材吧！褲腿兩側大膽的雷射切割鏤空設計，搭配虹彩般的銀藍色的邊條印花，和時髦又亮眼的單車褲型，讓妳從健身房到街頭都是萬眾矚目的焦點！', '聚酯纖維 50%、尼龍 29%、彈性纖維 21%', '使用中性洗滌劑，勿使用柔軟精', '0000-00-00 00:00:00'),
(183, 12, 'BEYOND YOGA Blanket 八分緊身運動褲', 790, '布料的低調奢華的啞光感，搭配五分高腰合身剪裁，不僅能展現腿部線條，同時展現輕奢運動時尚感，是一件時尚與舒適的完美結合。', '尼龍79%、彈性纖維21%', '使用中性洗滌劑，勿使用柔軟精', '0000-00-00 00:00:00'),
(184, 12, 'BEYOND YOGA Blanket 七分緊身運動褲', 540, '高腰頭提供適度壓縮力，有效收緊腹部肌群。高飽和的緞面異材質拼接造型，增添整體造型時尚感，襯托出妳的健康活力美！', '聚酯纖維 50%、尼龍 29%、彈性纖維 21%', '使用中性洗滌劑，勿使用柔軟精', '2020-05-14 14:08:24'),
(185, 13, 'YEAR OF OURS 開衩羅紋長褲', 540, '盡情展現妳的苗條好身材吧！褲腿兩側大膽的雷射切割鏤空設計，搭配虹彩般的銀藍色的邊條印花，和時髦又亮眼的單車褲型，讓妳從健身房到街頭都是萬眾矚目的焦點！', '聚酯纖維 50%、尼龍 29%、彈性纖維 21%', '使用中性洗滌劑，勿使用柔軟精', '0000-00-00 00:00:00'),
(186, 13, 'NYLORA 開衩羅紋長褲', 790, '布料的低調奢華的啞光感，搭配五分高腰合身剪裁，不僅能展現腿部線條，同時展現輕奢運動時尚感，是一件時尚與舒適的完美結合。', '尼龍79%、彈性纖維21%', '使用中性洗滌劑，勿使用柔軟精', '2020-05-11 14:07:08'),
(187, 13, 'MICHI Lair 開衩休閒長褲', 540, '高腰頭提供適度壓縮力，有效收緊腹部肌群。高飽和的緞面異材質拼接造型，增添整體造型時尚感，襯托出妳的健康活力美！', '聚酯纖維 50%、尼龍 29%、彈性纖維 21%', '使用中性洗滌劑，勿使用柔軟精', '0000-00-00 00:00:00'),
(188, 13, 'NYLORA Kassie 前開衩運動長褲', 540, '布料的低調奢華的啞光感，搭配五分高腰合身剪裁，不僅能展現腿部線條，同時展現輕奢運動時尚感，是一件時尚與舒適的完美結合。', '聚酯纖維 50%、尼龍 29%、彈性纖維 21%', '使用中性洗滌劑，勿使用柔軟精', '0000-00-00 00:00:00'),
(189, 13, 'MATE THE LABEL Edin 休閒長褲', 540, '布料的低調奢華的啞光感，搭配五分高腰合身剪裁，不僅能展現腿部線條，同時展現輕奢運動時尚感，是一件時尚與舒適的完美結合。', '聚酯纖維 50%、尼龍 29%、彈性纖維 21%', '使用中性洗滌劑，勿使用柔軟精', '0000-00-00 00:00:00'),
(190, 14, 'SUGARMAT 瑜珈磚', 540, '盡情展現妳的苗條好身材吧！褲腿兩側大膽的雷射切割鏤空設計，搭配虹彩般的銀藍色的邊條印花，和時髦又亮眼的單車褲型，讓妳從健身房到街頭都是萬眾矚目的焦點！', '聚酯纖維 50%、尼龍 29%、彈性纖維 21%', '使用中性洗滌劑，勿使用柔軟精', '0000-00-00 00:00:00'),
(191, 14, 'SUGARMAT Healing Heart系列瑜珈墊', 790, '布料的低調奢華的啞光感，搭配五分高腰合身剪裁，不僅能展現腿部線條，同時展現輕奢運動時尚感，是一件時尚與舒適的完美結合。', '尼龍79%、彈性纖維21%', '使用中性洗滌劑，勿使用柔軟精', '0000-00-00 00:00:00'),
(192, 14, 'SUGARMAT 旅行系列瑜珈墊', 540, '高腰頭提供適度壓縮力，有效收緊腹部肌群。高飽和的緞面異材質拼接造型，增添整體造型時尚感，襯托出妳的健康活力美！', '聚酯纖維 50%、尼龍 29%、彈性纖維 21%', '使用中性洗滌劑，勿使用柔軟精', '2020-05-12 14:08:19'),
(193, 14, 'SUGARMAT 旅行系列瑜珈墊', 540, '布料的低調奢華的啞光感，搭配五分高腰合身剪裁，不僅能展現腿部線條，同時展現輕奢運動時尚感，是一件時尚與舒適的完美結合。', '聚酯纖維 50%、尼龍 29%、彈性纖維 21%', '使用中性洗滌劑，勿使用柔軟精', '0000-00-00 00:00:00'),
(194, 14, 'SUGARMAT Healing Heart系列瑜珈墊', 540, '布料的低調奢華的啞光感，搭配五分高腰合身剪裁，不僅能展現腿部線條，同時展現輕奢運動時尚感，是一件時尚與舒適的完美結合。', '聚酯纖維 50%、尼龍 29%、彈性纖維 21%', '使用中性洗滌劑，勿使用柔軟精', '0000-00-00 00:00:00'),
(195, 14, 'SUGARMAT 旅行系列瑜珈墊', 540, '盡情展現妳的苗條好身材吧！褲腿兩側大膽的雷射切割鏤空設計，搭配虹彩般的銀藍色的邊條印花，和時髦又亮眼的單車褲型，讓妳從健身房到街頭都是萬眾矚目的焦點！', '聚酯纖維 50%、尼龍 29%、彈性纖維 21%', '使用中性洗滌劑，勿使用柔軟精', '0000-00-00 00:00:00'),
(196, 14, 'SUGARMAT 旅行系列瑜珈墊', 790, '布料的低調奢華的啞光感，搭配五分高腰合身剪裁，不僅能展現腿部線條，同時展現輕奢運動時尚感，是一件時尚與舒適的完美結合。', '尼龍79%、彈性纖維21%', '使用中性洗滌劑，勿使用柔軟精', '0000-00-00 00:00:00'),
(197, 14, 'SUGARMAT Healing Heart系列瑜珈墊', 540, '高腰頭提供適度壓縮力，有效收緊腹部肌群。高飽和的緞面異材質拼接造型，增添整體造型時尚感，襯托出妳的健康活力美！', '聚酯纖維 50%、尼龍 29%、彈性纖維 21%', '使用中性洗滌劑，勿使用柔軟精', '2020-05-07 14:08:22'),
(198, 14, 'SUGARMAT 旅行系列瑜珈墊', 540, '布料的低調奢華的啞光感，搭配五分高腰合身剪裁，不僅能展現腿部線條，同時展現輕奢運動時尚感，是一件時尚與舒適的完美結合。', '聚酯纖維 50%、尼龍 29%、彈性纖維 21%', '使用中性洗滌劑，勿使用柔軟精', '0000-00-00 00:00:00'),
(199, 14, 'SUGARMAT 旅行系列瑜珈墊', 540, '布料的低調奢華的啞光感，搭配五分高腰合身剪裁，不僅能展現腿部線條，同時展現輕奢運動時尚感，是一件時尚與舒適的完美結合。', '聚酯纖維 50%、尼龍 29%、彈性纖維 21%', '使用中性洗滌劑，勿使用柔軟精', '0000-00-00 00:00:00'),
(200, 14, 'SUGARMAT 粉紅瑜珈墊背帶', 540, '材質選用柔軟的仿麂皮絨，搭配精緻的串珠鸚鵡及流蘇作為配飾，外觀精美時尚，不但讓瑜珈墊更加方便攜帶，亦可與任何服飾搭配使用。', '聚酯纖維 50%、尼龍 29%、彈性纖維 21%', '使用中性洗滌劑，勿使用柔軟精', '0000-00-00 00:00:00');

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`sid`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `products`
--
ALTER TABLE `products`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=201;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;