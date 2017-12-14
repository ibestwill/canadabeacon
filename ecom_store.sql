-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 14, 2017 at 01:42 AM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 7.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecom_store`
--

-- --------------------------------------------------------

--
-- Table structure for table `about_us`
--

CREATE TABLE `about_us` (
  `about_id` int(10) NOT NULL,
  `about_heading` text NOT NULL,
  `about_short_desc` text NOT NULL,
  `about_desc` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `about_us`
--

INSERT INTO `about_us` (`about_id`, `about_heading`, `about_short_desc`, `about_desc`) VALUES
(1, 'å…³äºŽä¼ é€é—¨', 'ä¼ é€é—¨æ˜¯èƒ½å¤Ÿåˆæ³•ä»£ç†åŠ æ‹¿å¤§ç§»æ°‘ä¸šåŠ¡çš„åˆä¼™åˆ¶äº‹åŠ¡æ‰€ã€‚æˆ‘ä»¬ä¸“æ³¨äºŽåŠ æ‹¿å¤§è®¿é—®ç­¾è¯ã€ç•™å­¦ç­¾è¯ã€è”é‚¦å’Œçœæåç§»æ°‘ç­‰éœ€æ±‚é‡å¤§çš„ç­¾è¯å’Œç§»æ°‘æ–‡æ¡ˆä¸šåŠ¡ï¼ŒæŠŠæ¯ä¸€é¡¹ä¸šåŠ¡åšåˆ°æžè‡´ï¼Œæäº¤é€Ÿåº¦å¿«ï¼Œè¿‡ç­¾çŽ‡é«˜ã€‚ \r\n\r\n\r\n\r\n\r\n', '<p><br />ä¼ é€é—¨æ˜¯èƒ½å¤Ÿåˆæ³•ä»£ç†åŠ æ‹¿å¤§ç§»æ°‘ä¸šåŠ¡çš„åˆä¼™åˆ¶äº‹åŠ¡æ‰€ã€‚æˆ‘ä»¬ä¸“æ³¨äºŽåŠ æ‹¿å¤§è®¿é—®ç­¾è¯ã€ç•™å­¦ç­¾è¯ã€è”é‚¦å’Œçœæåç§»æ°‘ç­‰éœ€æ±‚é‡å¤§çš„ç­¾è¯å’Œç§»æ°‘æ–‡æ¡ˆä¸šåŠ¡ï¼ŒæŠŠæ¯ä¸€é¡¹ä¸šåŠ¡åšåˆ°æžè‡´ï¼Œæäº¤é€Ÿåº¦å¿«ï¼Œè¿‡ç­¾çŽ‡é«˜ã€‚ ä¼ é€é—¨æ˜¯èƒ½å¤Ÿåˆæ³•ä»£ç†åŠ æ‹¿å¤§ç§»æ°‘ä¸šåŠ¡çš„åˆä¼™åˆ¶äº‹åŠ¡æ‰€ã€‚æˆ‘ä»¬ä¸“æ³¨äºŽåŠ æ‹¿å¤§è®¿é—®ç­¾è¯ã€ç•™å­¦ç­¾è¯ã€è”é‚¦å’Œçœæåç§»æ°‘ç­‰éœ€æ±‚é‡å¤§çš„ç­¾è¯å’Œç§»æ°‘æ–‡æ¡ˆä¸šåŠ¡ï¼ŒæŠŠæ¯ä¸€é¡¹ä¸šåŠ¡åšåˆ°æžè‡´ï¼Œæäº¤é€Ÿåº¦å¿«ï¼Œè¿‡ç­¾çŽ‡é«˜ã€‚ <br /><br /></p>');

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `admin_id` int(10) NOT NULL,
  `admin_name` varchar(255) NOT NULL,
  `admin_email` varchar(255) NOT NULL,
  `admin_pass` varchar(255) NOT NULL,
  `admin_image` text NOT NULL,
  `admin_contact` varchar(255) NOT NULL,
  `admin_country` text NOT NULL,
  `admin_job` varchar(255) NOT NULL,
  `admin_about` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`admin_id`, `admin_name`, `admin_email`, `admin_pass`, `admin_image`, `admin_contact`, `admin_country`, `admin_job`, `admin_about`) VALUES
(2, 'Will', 'ibestwill@gmail.com', '2580', '1.png', '5068974321', 'China', 'Owner', ' BINGO BINGO BINGO');

-- --------------------------------------------------------

--
-- Table structure for table `boxes_section`
--

CREATE TABLE `boxes_section` (
  `box_id` int(10) NOT NULL,
  `box_title` text NOT NULL,
  `box_desc` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `bundle_product_relation`
--

CREATE TABLE `bundle_product_relation` (
  `rel_id` int(10) NOT NULL,
  `rel_title` varchar(255) NOT NULL,
  `product_id` int(10) NOT NULL,
  `bundle_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `p_id` int(10) NOT NULL,
  `ip_add` varchar(255) NOT NULL,
  `qty` int(10) NOT NULL,
  `p_price` varchar(255) NOT NULL,
  `size` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`p_id`, `ip_add`, `qty`, `p_price`, `size`) VALUES
(0, '', 0, '', ''),
(1, '::1', 0, '', ''),
(6, '::1', 0, '80000', 'Outside of Canada, åŠ æ‹¿å¤§ä»¥å¤–'),
(8, '::1', 0, '24500', 'Outside of Canada, åŠ æ‹¿å¤§ä»¥å¤–');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `cat_id` int(10) NOT NULL,
  `cat_title` text NOT NULL,
  `cat_top` text NOT NULL,
  `cat_image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_title`, `cat_top`, `cat_image`) VALUES
(3, 'å·¥ç­¾ç±»', 'yes', 'Bhutan.png'),
(4, 'è®¿é—®ç­¾', 'yes', 'Bolivia.png'),
(5, 'çœæå', 'yes', ''),
(6, 'ç»æµŽç±»', 'yes', ''),
(7, 'å›¢èšç±»', 'yes', ''),
(9, 'å­¦ç­¾ç±»', 'yes', ''),
(10, 'ä¸œä¸‰çœ', 'yes', '');

-- --------------------------------------------------------

--
-- Table structure for table `contact_us`
--

CREATE TABLE `contact_us` (
  `contact_id` int(10) NOT NULL,
  `contact_email` text NOT NULL,
  `contact_heading` text NOT NULL,
  `contact_desc` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact_us`
--

INSERT INTO `contact_us` (`contact_id`, `contact_email`, `contact_heading`, `contact_desc`) VALUES
(1, 'ibestwill@gmail.com', 'è”ç³»æˆ‘ä»¬', 'è¯·è¾“å…¥æ‚¨è¦å’¨è¯¢çš„å†…å®¹ï¼Œæˆ‘ä»¬ä¼šåœ¨24å°æ—¶å†…é‚®ä»¶æˆ–ç”µè¯å›žå¤æ‚¨');

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `coupon_id` int(10) NOT NULL,
  `product_id` int(10) NOT NULL,
  `coupon_title` varchar(255) NOT NULL,
  `coupon_price` varchar(255) NOT NULL,
  `coupon_code` varchar(255) NOT NULL,
  `coupon_limit` int(100) NOT NULL,
  `coupon_used` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `customer_id` int(10) NOT NULL,
  `customer_name` varchar(255) NOT NULL,
  `customer_email` varchar(255) NOT NULL,
  `customer_pass` varchar(255) NOT NULL,
  `customer_country` text NOT NULL,
  `customer_city` text NOT NULL,
  `customer_contact` varchar(255) NOT NULL,
  `customer_address` text NOT NULL,
  `customer_image` text NOT NULL,
  `customer_ip` varchar(255) NOT NULL,
  `customer_confirm_code` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`customer_id`, `customer_name`, `customer_email`, `customer_pass`, `customer_country`, `customer_city`, `customer_contact`, `customer_address`, `customer_image`, `customer_ip`, `customer_confirm_code`) VALUES
(2, 'Karie', 'mao.karie@gmail.com', '2580', 'Canada', 'Fredericton', '5069709864', '780 Montgomery Street', 'Brock-Lesnar.jpg', '::1', ''),
(3, 'Esme', 'zhao.esme@gmail.com', '2580', 'Canada', 'Fredericton', '5068974321', '311-780 Montgomery Street', '100DAYS_1.png', '::1', '406926925');

-- --------------------------------------------------------

--
-- Table structure for table `customer_orders`
--

CREATE TABLE `customer_orders` (
  `order_id` int(10) NOT NULL,
  `customer_id` int(10) NOT NULL,
  `due_amount` int(100) NOT NULL,
  `invoice_no` int(100) NOT NULL,
  `qty` int(10) NOT NULL,
  `size` text NOT NULL,
  `order_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `order_status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer_orders`
--

INSERT INTO `customer_orders` (`order_id`, `customer_id`, `due_amount`, `invoice_no`, `qty`, `size`, `order_date`, `order_status`) VALUES
(16, 2, 207, 1715523401, 3, 'Small', '2017-02-20 08:21:42', 'pending'),
(17, 2, 100, 1715523401, 2, 'Large', '2017-02-20 08:21:42', 'pending'),
(18, 2, 300, 1715523401, 1, 'Medium', '2017-02-20 08:21:42', 'pending'),
(19, 2, 150, 1068059025, 1, 'Medium', '2017-02-20 08:26:47', 'pending'),
(20, 2, 288, 909940689, 3, 'Large', '2017-02-27 11:06:32', 'complete'),
(21, 2, 400, 909940689, 2, 'Meduim', '2017-02-27 11:06:37', 'complete');

-- --------------------------------------------------------

--
-- Table structure for table `datatables_demo`
--

CREATE TABLE `datatables_demo` (
  `id` int(10) NOT NULL,
  `first_name` varchar(250) NOT NULL DEFAULT '',
  `last_name` varchar(250) NOT NULL DEFAULT '',
  `position` varchar(250) NOT NULL DEFAULT '',
  `email` varchar(250) NOT NULL DEFAULT '',
  `office` varchar(250) NOT NULL DEFAULT '',
  `start_date` datetime DEFAULT NULL,
  `age` int(8) DEFAULT NULL,
  `salary` int(8) DEFAULT NULL,
  `seq` int(8) DEFAULT NULL,
  `extn` varchar(8) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `datatables_demo`
--

INSERT INTO `datatables_demo` (`id`, `first_name`, `last_name`, `position`, `email`, `office`, `start_date`, `age`, `salary`, `seq`, `extn`) VALUES
(1, 'Tiger', 'Nixon', 'System Architect', 't.nixon@datatables.net', 'Edinburgh', '2011-04-25 00:00:00', 61, 320800, 2, '5421'),
(2, 'Garrett', 'Winters', 'Accountant', 'g.winters@datatables.net', 'Tokyo', '2011-07-25 00:00:00', 63, 170750, 22, '8422'),
(3, 'Ashton', 'Cox', 'Junior Technical Author', 'a.cox@datatables.net', 'San Francisco', '2009-01-12 00:00:00', 66, 86000, 6, '1562'),
(4, 'Cedric', 'Kelly', 'Senior Javascript Developer', 'c.kelly@datatables.net', 'Edinburgh', '2012-03-29 00:00:00', 22, 433060, 41, '6224'),
(5, 'Airi', 'Satou', 'Accountant', 'a.satou@datatables.net', 'Tokyo', '2008-11-28 00:00:00', 33, 162700, 55, '5407'),
(6, 'Brielle', 'Williamson', 'Integration Specialist', 'b.williamson@datatables.net', 'New York', '2012-12-02 00:00:00', 61, 372000, 21, '4804'),
(7, 'Herrod', 'Chandler', 'Sales Assistant', 'h.chandler@datatables.net', 'San Francisco', '2012-08-06 00:00:00', 59, 137500, 46, '9608'),
(8, 'Rhona', 'Davidson', 'Integration Specialist', 'r.davidson@datatables.net', 'Tokyo', '2010-10-14 00:00:00', 55, 327900, 50, '6200'),
(9, 'Colleen', 'Hurst', 'Javascript Developer', 'c.hurst@datatables.net', 'San Francisco', '2009-09-15 00:00:00', 39, 205500, 26, '2360'),
(10, 'Sonya', 'Frost', 'Software Engineer', 's.frost@datatables.net', 'Edinburgh', '2008-12-13 00:00:00', 23, 103600, 18, '1667'),
(11, 'Jena', 'Gaines', 'Office Manager', 'j.gaines@datatables.net', 'London', '2008-12-19 00:00:00', 30, 90560, 13, '3814'),
(12, 'Quinn', 'Flynn', 'Support Lead', 'q.flynn@datatables.net', 'Edinburgh', '2013-03-03 00:00:00', 22, 342000, 23, '9497'),
(13, 'Charde', 'Marshall', 'Regional Director', 'c.marshall@datatables.net', 'San Francisco', '2008-10-16 00:00:00', 36, 470600, 14, '6741'),
(14, 'Haley', 'Kennedy', 'Senior Marketing Designer', 'h.kennedy@datatables.net', 'London', '2012-12-18 00:00:00', 43, 313500, 12, '3597'),
(15, 'Tatyana', 'Fitzpatrick', 'Regional Director', 't.fitzpatrick@datatables.net', 'London', '2010-03-17 00:00:00', 19, 385750, 54, '1965'),
(16, 'Michael', 'Silva', 'Marketing Designer', 'm.silva@datatables.net', 'London', '2012-11-27 00:00:00', 66, 198500, 37, '1581'),
(17, 'Paul', 'Byrd', 'Chief Financial Officer (CFO)', 'p.byrd@datatables.net', 'New York', '2010-06-09 00:00:00', 64, 725000, 32, '3059'),
(18, 'Gloria', 'Little', 'Systems Administrator', 'g.little@datatables.net', 'New York', '2009-04-10 00:00:00', 59, 237500, 35, '1721'),
(19, 'Bradley', 'Greer', 'Software Engineer', 'b.greer@datatables.net', 'London', '2012-10-13 00:00:00', 41, 132000, 48, '2558'),
(20, 'Dai', 'Rios', 'Personnel Lead', 'd.rios@datatables.net', 'Edinburgh', '2012-09-26 00:00:00', 35, 217500, 45, '2290'),
(21, 'Jenette', 'Caldwell', 'Development Lead', 'j.caldwell@datatables.net', 'New York', '2011-09-03 00:00:00', 30, 345000, 17, '1937'),
(22, 'Yuri', 'Berry', 'Chief Marketing Officer (CMO)', 'y.berry@datatables.net', 'New York', '2009-06-25 00:00:00', 40, 675000, 57, '6154'),
(23, 'Caesar', 'Vance', 'Pre-Sales Support', 'c.vance@datatables.net', 'New York', '2011-12-12 00:00:00', 21, 106450, 29, '8330'),
(24, 'Doris', 'Wilder', 'Sales Assistant', 'd.wilder@datatables.net', 'Sidney', '2010-09-20 00:00:00', 23, 85600, 56, '3023'),
(25, 'Angelica', 'Ramos', 'Chief Executive Officer (CEO)', 'a.ramos@datatables.net', 'London', '2009-10-09 00:00:00', 47, 1200000, 36, '5797'),
(26, 'Gavin', 'Joyce', 'Developer', 'g.joyce@datatables.net', 'Edinburgh', '2010-12-22 00:00:00', 42, 92575, 5, '8822'),
(27, 'Jennifer', 'Chang', 'Regional Director', 'j.chang@datatables.net', 'Singapore', '2010-11-14 00:00:00', 28, 357650, 51, '9239'),
(28, 'Brenden', 'Wagner', 'Software Engineer', 'b.wagner@datatables.net', 'San Francisco', '2011-06-07 00:00:00', 28, 206850, 20, '1314'),
(29, 'Fiona', 'Green', 'Chief Operating Officer (COO)', 'f.green@datatables.net', 'San Francisco', '2010-03-11 00:00:00', 48, 850000, 7, '2947'),
(30, 'Shou', 'Itou', 'Regional Marketing', 's.itou@datatables.net', 'Tokyo', '2011-08-14 00:00:00', 20, 163000, 1, '8899'),
(31, 'Michelle', 'House', 'Integration Specialist', 'm.house@datatables.net', 'Sidney', '2011-06-02 00:00:00', 37, 95400, 39, '2769'),
(32, 'Suki', 'Burks', 'Developer', 's.burks@datatables.net', 'London', '2009-10-22 00:00:00', 53, 114500, 40, '6832'),
(33, 'Prescott', 'Bartlett', 'Technical Author', 'p.bartlett@datatables.net', 'London', '2011-05-07 00:00:00', 27, 145000, 47, '3606'),
(34, 'Gavin', 'Cortez', 'Team Leader', 'g.cortez@datatables.net', 'San Francisco', '2008-10-26 00:00:00', 22, 235500, 52, '2860'),
(35, 'Martena', 'Mccray', 'Post-Sales support', 'm.mccray@datatables.net', 'Edinburgh', '2011-03-09 00:00:00', 46, 324050, 8, '8240'),
(36, 'Unity', 'Butler', 'Marketing Designer', 'u.butler@datatables.net', 'San Francisco', '2009-12-09 00:00:00', 47, 85675, 24, '5384'),
(37, 'Howard', 'Hatfield', 'Office Manager', 'h.hatfield@datatables.net', 'San Francisco', '2008-12-16 00:00:00', 51, 164500, 38, '7031'),
(38, 'Hope', 'Fuentes', 'Secretary', 'h.fuentes@datatables.net', 'San Francisco', '2010-02-12 00:00:00', 41, 109850, 53, '6318'),
(39, 'Vivian', 'Harrell', 'Financial Controller', 'v.harrell@datatables.net', 'San Francisco', '2009-02-14 00:00:00', 62, 452500, 30, '9422'),
(40, 'Timothy', 'Mooney', 'Office Manager', 't.mooney@datatables.net', 'London', '2008-12-11 00:00:00', 37, 136200, 28, '7580'),
(41, 'Jackson', 'Bradshaw', 'Director', 'j.bradshaw@datatables.net', 'New York', '2008-09-26 00:00:00', 65, 645750, 34, '1042'),
(42, 'Olivia', 'Liang', 'Support Engineer', 'o.liang@datatables.net', 'Singapore', '2011-02-03 00:00:00', 64, 234500, 4, '2120'),
(43, 'Bruno', 'Nash', 'Software Engineer', 'b.nash@datatables.net', 'London', '2011-05-03 00:00:00', 38, 163500, 3, '6222'),
(44, 'Sakura', 'Yamamoto', 'Support Engineer', 's.yamamoto@datatables.net', 'Tokyo', '2009-08-19 00:00:00', 37, 139575, 31, '9383'),
(45, 'Thor', 'Walton', 'Developer', 't.walton@datatables.net', 'New York', '2013-08-11 00:00:00', 61, 98540, 11, '8327'),
(46, 'Finn', 'Camacho', 'Support Engineer', 'f.camacho@datatables.net', 'San Francisco', '2009-07-07 00:00:00', 47, 87500, 10, '2927'),
(47, 'Serge', 'Baldwin', 'Data Coordinator', 's.baldwin@datatables.net', 'Singapore', '2012-04-09 00:00:00', 64, 138575, 44, '8352'),
(48, 'Zenaida', 'Frank', 'Software Engineer', 'z.frank@datatables.net', 'New York', '2010-01-04 00:00:00', 63, 125250, 42, '7439'),
(49, 'Zorita', 'Serrano', 'Software Engineer', 'z.serrano@datatables.net', 'San Francisco', '2012-06-01 00:00:00', 56, 115000, 27, '4389'),
(50, 'Jennifer', 'Acosta', 'Junior Javascript Developer', 'j.acosta@datatables.net', 'Edinburgh', '2013-02-01 00:00:00', 43, 75650, 49, '3431'),
(51, 'Cara', 'Stevens', 'Sales Assistant', 'c.stevens@datatables.net', 'New York', '2011-12-06 00:00:00', 46, 145600, 15, '3990'),
(52, 'Hermione', 'Butler', 'Regional Director', 'h.butler@datatables.net', 'London', '2011-03-21 00:00:00', 47, 356250, 9, '1016'),
(53, 'Lael', 'Greer', 'Systems Administrator', 'l.greer@datatables.net', 'London', '2009-02-27 00:00:00', 21, 103500, 25, '6733'),
(54, 'Jonas', 'Alexander', 'Developer', 'j.alexander@datatables.net', 'San Francisco', '2010-07-14 00:00:00', 30, 86500, 33, '8196'),
(55, 'Shad', 'Decker', 'Regional Director', 's.decker@datatables.net', 'Edinburgh', '2008-11-13 00:00:00', 51, 183000, 43, '6373'),
(56, 'Michael', 'Bruce', 'Javascript Developer', 'm.bruce@datatables.net', 'Singapore', '2011-06-27 00:00:00', 29, 183000, 16, '5384'),
(57, 'Donna', 'Snider', 'Customer Support', 'd.snider@datatables.net', 'New York', '2011-01-25 00:00:00', 27, 112000, 19, '4226');

-- --------------------------------------------------------

--
-- Table structure for table `enquiry_types`
--

CREATE TABLE `enquiry_types` (
  `enquiry_id` int(10) NOT NULL,
  `enquiry_title` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `enquiry_types`
--

INSERT INTO `enquiry_types` (`enquiry_id`, `enquiry_title`) VALUES
(1, 'ç§»æ°‘'),
(2, 'ç­¾è¯'),
(3, 'ç•™å­¦'),
(4, 'å…¶ä»–');

-- --------------------------------------------------------

--
-- Table structure for table `express_entry`
--

CREATE TABLE `express_entry` (
  `id` int(11) NOT NULL,
  `times` int(11) NOT NULL,
  `date` date NOT NULL,
  `score` int(11) NOT NULL,
  `number` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `express_entry`
--

INSERT INTO `express_entry` (`id`, `times`, `date`, `score`, `number`) VALUES
(1, 61, '2017-05-04', 423, 3796),
(2, 62, '2017-05-17', 415, 3687),
(3, 65, '2017-05-31', 413, 3877),
(4, 66, '2017-06-28', 449, 3409),
(5, 67, '2017-07-12', 440, 3202),
(6, 68, '2017-08-02', 441, 3264),
(7, 69, '2017-08-09', 433, 2991),
(8, 70, '2017-08-23', 434, 3035),
(9, 71, '2017-09-06', 435, 2772),
(10, 72, '2017-09-20', 433, 2871),
(11, 73, '2017-10-04', 438, 2801),
(12, 74, '2017-10-18', 436, 2757),
(13, 77, '2017-11-08', 458, 2000),
(14, 78, '2017-11-15', 439, 2750);

-- --------------------------------------------------------

--
-- Table structure for table `icons`
--

CREATE TABLE `icons` (
  `icon_id` int(10) NOT NULL,
  `icon_product` int(10) NOT NULL,
  `icon_title` varchar(255) NOT NULL,
  `icon_image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `manufacturers`
--

CREATE TABLE `manufacturers` (
  `manufacturer_id` int(10) NOT NULL,
  `manufacturer_title` text NOT NULL,
  `manufacturer_top` text NOT NULL,
  `manufacturer_image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `manufacturers`
--

INSERT INTO `manufacturers` (`manufacturer_id`, `manufacturer_title`, `manufacturer_top`, `manufacturer_image`) VALUES
(2, 'Canada', 'no', 'Canada.png');

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `payment_id` int(10) NOT NULL,
  `invoice_no` int(10) NOT NULL,
  `amount` int(10) NOT NULL,
  `payment_mode` text NOT NULL,
  `ref_no` int(10) NOT NULL,
  `code` int(10) NOT NULL,
  `payment_date` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`payment_id`, `invoice_no`, `amount`, `payment_mode`, `ref_no`, `code`, `payment_date`) VALUES
(2, 1607603019, 447, 'UBL/Omni Paisa', 5678, 33, '11/1/2016'),
(3, 314788500, 345, 'UBL/Omni Paisa', 443, 865, '11/1/2016');

-- --------------------------------------------------------

--
-- Table structure for table `pending_orders`
--

CREATE TABLE `pending_orders` (
  `order_id` int(10) NOT NULL,
  `customer_id` int(10) NOT NULL,
  `invoice_no` int(10) NOT NULL,
  `product_id` text NOT NULL,
  `qty` int(10) NOT NULL,
  `size` text NOT NULL,
  `order_status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pending_orders`
--

INSERT INTO `pending_orders` (`order_id`, `customer_id`, `invoice_no`, `product_id`, `qty`, `size`, `order_status`) VALUES
(16, 2, 1715523401, '2', 3, 'Small', 'pending'),
(17, 2, 1715523401, '9', 2, 'Large', 'pending'),
(18, 2, 1715523401, '11', 1, 'Medium', 'pending'),
(19, 2, 1068059025, '7', 1, 'Medium', 'pending'),
(20, 2, 909940689, '6', 3, 'Large', 'complete'),
(21, 2, 909940689, '11', 2, 'Meduim', 'complete');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `description`) VALUES
(1, 'test 1', '\"At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditi'),
(2, 'test 2', '\"At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditi'),
(3, 'test 3', '\"At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditi'),
(4, 'test 4', '\"At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditi'),
(5, 'test 5', '\"At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditi'),
(6, 'test 6', '\"At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditi'),
(7, 'test 7', '\"At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditi'),
(8, 'test 8', '\"At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditi'),
(9, 'test 9', '\"At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditi'),
(10, 'test 10', '\"At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditi'),
(11, 'test 11', '\"At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditi'),
(12, 'test 12', '\"At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditi');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(10) NOT NULL,
  `p_cat_id` int(10) NOT NULL,
  `cat_id` int(10) NOT NULL,
  `manufacturer_id` int(10) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `product_title` text NOT NULL,
  `product_url` text NOT NULL,
  `product_img1` text NOT NULL,
  `product_img2` text NOT NULL,
  `product_img3` text NOT NULL,
  `product_price` int(10) NOT NULL,
  `product_psp_price` int(100) NOT NULL,
  `product_desc` text NOT NULL,
  `product_features` text NOT NULL,
  `product_video` text NOT NULL,
  `product_keywords` text NOT NULL,
  `product_label` text NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `p_cat_id`, `cat_id`, `manufacturer_id`, `date`, `product_title`, `product_url`, `product_img1`, `product_img2`, `product_img3`, `product_price`, `product_psp_price`, `product_desc`, `product_features`, `product_video`, `product_keywords`, `product_label`, `status`) VALUES
(27, 5, 5, 0, '2017-11-30 13:34:38', 'æ¯•ä¸šåŽå·¥ç­¾ä¸Šè¯‰æ¡ˆä¾‹ï¼ˆä¸€ï¼‰', 'after-graduate-work-permit-appeal', 'express-entry-700x300.png', '', '', 0, 0, '<p style=\"user-select: text !important; margin: 0px 0px 5px; padding: 5px 0px; border: 0px; outline: 0px; font-size: 12px; vertical-align: baseline; background: #ffffff; text-align: left; color: #333333; font-family: å¾®è½¯é›…é»‘; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;\">å¦‚æžœé—®æˆ‘ä»¬æœ€è¿‘ä¸¤å¹´åŽ»å“ªé‡Œçš„å­¦ç”Ÿæœ€å¤šï¼Œé‚£æ¯«æ— ç–‘é—®æ˜¯é­åŒ—å…‹ã€‚å¦‚æžœå†é—®åŽ»é­åŒ—å…‹çš„å­¦ç”Ÿéƒ½åŽ»è¯»äº†å•¥ï¼Œé‚£99%ä»¥ä¸Šæ˜¯èŒä¸šåŸ¹è®­ï¼ˆDVSæˆ–è€…DVS+AVSï¼‰ã€‚è™½ç„¶çŽ°åœ¨é­çœä¸¥æŸ¥æ³•è¯­ï¼Œè®¤è¯ç­çš„æˆç»©å¿…ç„¶ä¼šè¢«é¢è¯•ï¼Œæ ‡å‡†åŒ–çš„æˆç»©ä¹Ÿæœ‰å¯èƒ½ä¼šè¢«é™åˆ†ï¼Œä½†èŒä¸šåŸ¹è®­çš„çƒ­åº¦ä¾ç„¶ä¸å‡ã€‚ç©¶å…¶åŽŸå› ï¼Œå¤§æ¦‚å¯ä»¥å½’çº³ä¸ºä¸‹é¢5ç‚¹ï¼š<br style=\"user-select: text !important;\" />ã€€ã€€1ã€å¯¹è‹±è¯­æ°´å¹³æ²¡æœ‰è¦æ±‚ã€‚ç›¸æ¯”å…¶ä»–é¡¹ç›®åŠ¨è¾„è¦å­¦ä¹ 1å¹´ç”šè‡³æ›´ä¹…çš„è¯­è¨€ï¼ŒèŒä¸šåŸ¹è®­éšæ—¶å¯ä»¥å…¥è¯»ä¸“ä¸šè¯¾ã€‚<br style=\"user-select: text !important;\" />ã€€ã€€2ã€å­¦è´¹ä¾¿å®œã€‚å¤§éƒ¨åˆ†ä¸“ä¸šçš„æ€»å­¦è´¹åœ¨3ä¸‡åŠ å¸ä»¥å†…ï¼Œéƒ¨åˆ†ä¸“ä¸šåœ¨2ä¸‡åŠ å¸å·¦å³ï¼Œæ²¡æœ‰è¯­è¨€è¯¾å­¦è´¹ã€‚<br style=\"user-select: text !important;\" />ã€€ã€€3ã€å®¹æ˜“æ¯•ä¸šï¼Œè¿™ä¸ªè°å­¦è°çŸ¥é“ã€‚<br style=\"user-select: text !important;\" />ã€€ã€€4ã€å­¦åˆ¶çŸ­ï¼Œ<a style=\"user-select: text !important; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 12px; vertical-align: baseline; background: transparent; color: #d60707; text-decoration: none;\" href=\"http://eoivisa.com/pgwp/\">æ¯•ä¸šåŽå·¥ç­¾</a>é•¿ã€‚å…¶ä»–çœä»½éƒ½æ˜¯1å¹´å­¦ä¹ æ‹¿1å¹´å·¥ç­¾ï¼Œ2å¹´å­¦ä¹ æ‰èƒ½æ‹¿3å¹´å·¥ç­¾ï¼Œè¯­è¨€è¯¾è¿˜ä¸ç®—ã€‚è€ŒèŒä¸šåŸ¹è®­ä¸ä»…æ²¡æœ‰è¯­è¨€ï¼Œè€Œä¸”ä¸çœ‹å­¦ä¹ æ—¶é—´ï¼Œåªçœ‹å­¦æ—¶ï¼Œåªè¦å­¦æ»¡1800ä¸ªå°æ—¶ï¼Œæœ€çŸ­14ä¸ªæœˆçš„å­¦ä¹ å°±å¯ä»¥æ‹¿åˆ°3å¹´å·¥ç­¾ã€‚<br style=\"user-select: text !important;\" />ã€€ã€€5ã€ç§»æ°‘å¿«ã€‚åªè¦æ³•è¯­èƒ½è¿‡å…³ï¼Œç”³è¯·<a style=\"user-select: text !important; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 12px; vertical-align: baseline; background: transparent; color: #d60707; text-decoration: none;\" href=\"http://eoivisa.com/peq/\">PEQ</a>æ˜¯æ‰€æœ‰çœæåé¡¹ç›®ä¸­æ—¶é—´æœ€å¿«ã€è¦æ±‚æœ€å®½çš„ã€‚</p>\r\n<p style=\"user-select: text !important; margin: 0px 0px 5px; padding: 5px 0px; border: 0px; outline: 0px; font-size: 12px; vertical-align: baseline; background: #ffffff; text-align: left; color: #333333; font-family: å¾®è½¯é›…é»‘; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;\">ã€€ã€€å› ä¸ºæ³•è¯­è¦æ±‚å˜é«˜ï¼ŒçŽ°åœ¨ç¬¬5ç‚¹çš„ä¼˜åŠ¿å·²ç»æ²¡æœ‰é‚£ä¹ˆæ˜Žæ˜¾ï¼Œä½†ç¬¬4ç‚¹è¿˜æ˜¯å—åˆ°å¾ˆå¤šäººçš„é’çã€‚æœ¬æ¥å°±çœåŽ»äº†1å¹´å­¦è¯­è¨€çš„æ—¶é—´ï¼Œå­¦åˆ¶è¿˜è¦çŸ­ï¼Œè®©åˆ«çš„çœçš„é¡¹ç›®å¦‚ä½•ç«žäº‰ï¼Ÿ<br style=\"user-select: text !important;\" />ã€€ã€€ä½†æ˜¯å¾ˆå¤šäººå°±è§‰å¾—&ldquo;3å¹´æ¯•ä¸šåŽå·¥ç­¾&rdquo;ä¼¼ä¹Žä¸å¤ªå®žé™…ï¼Œ1800ä¸ªå°æ—¶å­¦å®Œå°±å¯ä»¥æ‹¿3å¹´å·¥ç­¾ï¼Œæœ‰å…·ä½“æ”¿ç­–å—ï¼Ÿä¸‡ä¸€ä¸ç»™å·¥ç­¾ï¼Œæˆ–è€…ç»™çš„æ—¶é—´ä¸å¤Ÿä¸‰å¹´ï¼Œæ€Žä¹ˆåŠžï¼Ÿ</p>\r\n<p style=\"user-select: text !important; margin: 0px 0px 5px; padding: 5px 0px; border: 0px; outline: 0px; font-size: 12px; vertical-align: baseline; background: #ffffff; text-align: left; color: #333333; font-family: å¾®è½¯é›…é»‘; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;\">ã€€ã€€æˆ‘ä»¬ä»Šå¤©å°±å…ˆçœ‹çœ‹å¦‚æžœä¸ç»™å·¥ç­¾å¦‚ä½•å¤„ç†ã€‚å®¢æˆ·Lï¼Œæ˜¯å¸¦ç€æ‹’ç­¾ä¿¡æ¥æ‰¾æˆ‘ä»¬çš„ï¼Œè¯´ä¸ç¬¦åˆæ¯•ä¸šåŽå·¥ç­¾çš„æ¡ä»¶ã€‚</p>\r\n<p>&nbsp;</p>', 'å¦‚æžœé—®æˆ‘ä»¬æœ€è¿‘ä¸¤å¹´åŽ»å“ªé‡Œçš„å­¦ç”Ÿæœ€å¤šï¼Œé‚£æ¯«æ— ç–‘é—®æ˜¯é­åŒ—å…‹ã€‚å¦‚æžœå†é—®åŽ»é­åŒ—å…‹çš„å­¦ç”Ÿéƒ½åŽ»è¯»äº†å•¥ï¼Œé‚£99%ä»¥ä¸Šæ˜¯èŒä¸šåŸ¹è®­ï¼ˆDVSæˆ–è€…DVS+AVSï¼‰ã€‚', '', '', 'åŠ¨æ€', 'post'),
(28, 5, 4, 0, '2017-11-30 13:34:52', 'Express Entryç¬¬78æ¬¡é‚€è¯·åˆ†æ•°439ï¼Œé‚€è¯·äººæ•°2750', 'express-entry-78', 'express-entry-700x300.png', '', '', 0, 0, '<p><span style=\"color: #333333; font-family: å¾®è½¯é›…é»‘; font-size: 12px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;\">11æœˆ15æ—¥ç¬¬78æ¬¡å¿«é€Ÿé€šé“é‚€è¯·åˆ†æ•°439åˆ†ï¼Œé‚€è¯·2750äººï¼Œä¸é™èŒä¸šå’Œç±»åˆ«ã€‚</span><br style=\"user-select: text !important; color: #333333; font-family: å¾®è½¯é›…é»‘; font-size: 12px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-style: initial; text-decoration-color: initial;\" /><span style=\"color: #333333; font-family: å¾®è½¯é›…é»‘; font-size: 12px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;\">è™½ç„¶ä¸€ä¸ªæœˆæ¥è¿›è¡Œäº†å‡ æ¬¡ä¸åŒå¯»å¸¸çš„é‚€è¯·ï¼Œä½†åˆ†æ•°åˆæ¸æ¸å›žåˆ°äº†ä¸€ä¸ªæœˆä¹‹å‰çš„æ­£å¸¸æ°´å¹³ã€‚</span><u></u></p>', '11æœˆ15æ—¥ç¬¬78æ¬¡å¿«é€Ÿé€šé“é‚€è¯·åˆ†æ•°439åˆ†ï¼Œé‚€è¯·2750äººï¼Œä¸é™èŒä¸šå’Œç±»åˆ«ã€‚', '', '', 'åŠ¨æ€', 'post'),
(29, 5, 6, 0, '2017-11-30 13:35:03', 'æ›¼çœç§»æ°‘æ”¿ç­–é‡å¤§æ”¹å˜ï¼Œ2018å¹´ç§‹å­£å®žè¡Œ', 'manitoba-policy-change', 'express-entry-700x300.png', '', '', 0, 0, '<p style=\"user-select: text !important; margin: 0px 0px 5px; padding: 5px 0px; border: 0px; outline: 0px; font-size: 12px; vertical-align: baseline; background: #ffffff; text-align: left; color: #333333; font-family: å¾®è½¯é›…é»‘; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;\">ä»Šå¤©æ›¼çœå®£å¸ƒ2018å¹´ç¬¬2-3å­£åº¦ç§»æ°‘æ”¿ç­–å°†å¤§å¹…ä¿®æ”¹ï¼Œæƒ³è¦èµ¶æœ«ç­è½¦çš„ç”³è¯·äººéœ€è¦åŠ æ²¹äº†ã€‚æˆ‘ä»¬å…ˆæ€»ç»“ï¼Œä¹‹åŽè¯¦ç»†ä»‹ç»ã€‚<br style=\"user-select: text !important;\" />ã€€ã€€1ã€&ldquo;å¤«å¦»æ­é…å·¥ä½œåŠå¹´&rdquo;è¦æ±‚æé«˜ï¼Œå¿…é¡»æ˜¯ç´§ç¼ºèŒä¸šï¼Œé›…æ€ä¹Ÿæœ‰5åˆ†çš„å¼ºåˆ¶æ€§è¦æ±‚ï¼Œ<br style=\"user-select: text !important;\" />ã€€ã€€2ã€æ¯•ä¸šç”Ÿæ¯•ä¸šæ‰¾åˆ°å·¥ä½œå°±å¯ä»¥ç§»æ°‘ï¼Œçœ‹ä¼¼è¦æ±‚é™ä½Žï¼Œä½†é›…æ€4ä¸ª6å¹¶ä¸èƒ½ç›´æŽ¥å¿½è§†ï¼Œä½•å†µå·¥ä½œå¿…é¡»å’Œå­¦ä¹ ç›¸å…³ã€‚ä¸ç›¸å…³çš„ç´§ç¼ºèŒä¸šéœ€è¦å·¥ä½œåŠå¹´ï¼Œéžç´§ç¼ºèŒä¸šéœ€è¦1å¹´ï¼Œè¦æ±‚é›‡ä¸»è¿è¥3å¹´ä»¥ä¸Šã€‚æ€»ä½“æ¥è¯´å…¶å®žè¦æ±‚è¿˜æ˜¯æé«˜äº†ã€‚<br style=\"user-select: text !important;\" />ã€€ã€€3ã€ç†å·¥ç§‘ç ”ç©¶ç”Ÿæ¯•ä¸šç›´æŽ¥ç§»æ°‘æ˜¯è¶‹åŠ¿ï¼ŒBCå’ŒONè¿™ä¸¤ä¸ªç§»æ°‘å¤§çœéƒ½å®žè¡Œäº†å¾ˆå¤šå¹´ï¼Œä½†æ›¼çœç¬¦åˆè¿™ä¸ªæ¡ä»¶çš„ç”³è¯·äººè¾ƒå°‘ï¼Œä¸ä½œè¿‡å¤šä»‹ç»ã€‚<br style=\"user-select: text !important;\" />ã€€ã€€4ã€æµ·å¤–æŠ€æœ¯å·¥äººå’Œå¿«é€Ÿé€šé“ç±»åˆ«è¿˜æ˜¯ä»¥é›‡ä¸»ã€äº²å‹æ‹…ä¿ä¸ºå‰æï¼ŒåŒæ ·ä¸ä½œè¿‡å¤šä»‹ç»ã€‚</p>\r\n<h3 style=\"user-select: text !important; margin: 15px 0px 2px; padding: 0px 0px 2px; border: 0px; outline: 0px; font-size: 1.5em !important; vertical-align: baseline; background: #ffffff; line-height: 1.2em; font-family: å¾®è½¯é›…é»‘; font-weight: normal; color: #333333; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;\">ç´§ç¼ºèŒä¸šåˆ—è¡¨</h3>\r\n<p style=\"user-select: text !important; margin: 0px 0px 5px; padding: 5px 0px; border: 0px; outline: 0px; font-size: 12px; vertical-align: baseline; background: #ffffff; text-align: left; color: #333333; font-family: å¾®è½¯é›…é»‘; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;\">ã€€ã€€æœ¬æ¬¡æ”¹å˜ï¼Œæ›¼çœè§„å®šäº†ç´§ç¼ºèŒä¸šã€‚ç´§ç¼ºèŒä¸šæ¶µç›–äº†å¤§éƒ¨åˆ†<a style=\"user-select: text !important; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 12px; vertical-align: baseline; background: transparent; color: #d60707; text-decoration: none;\" href=\"http://eoivisa.com/noc/\">NOC</a>&nbsp;0ã€Aå’ŒBç±»å·¥ä½œï¼Œç›®å‰æ²¡æœ‰Cå’ŒDç±»å·¥ä½œã€‚<br style=\"user-select: text !important;\" />ã€€ã€€ç›®å‰ï¼ŒåŽ¨å¸ˆ6322ã€é£Ÿç‰©æœåŠ¡ä¸»ç®¡6311ã€æ–‡ç§˜1241ã€ç°¿è®°1311ç­‰å–œé—»ä¹è§çš„èŒä¸šéƒ½åœ¨ç´§ç¼ºèŒä¸šåˆ—è¡¨ä¸­ã€‚<br style=\"user-select: text !important;\" />ã€€ã€€ç´§ç¼ºèŒä¸šåˆ—è¡¨è¯·å‚è€ƒ<a style=\"user-select: text !important; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 12px; vertical-align: baseline; background: transparent; color: #d60707; text-decoration: none;\" href=\"http://www.immigratemanitoba.com/immigrate-to-manitoba/in-demand-occupations/\">å®˜æ–¹ç½‘ç«™</a>ã€‚<br style=\"user-select: text !important;\" />ã€€ã€€ä¸‹æ–‡ä¸­æ‰€è¯´åˆ°çš„ç´§ç¼ºèŒä¸šéƒ½å°†æŒ‡çš„æ˜¯è¿™ä¸ªåˆ—è¡¨ä¸­çš„å·¥ä½œã€‚</p>\r\n<h3 style=\"user-select: text !important; margin: 15px 0px 2px; padding: 0px 0px 2px; border: 0px; outline: 0px; font-size: 1.5em !important; vertical-align: baseline; background: #ffffff; line-height: 1.2em; font-family: å¾®è½¯é›…é»‘; font-weight: normal; color: #333333; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;\">ç†å·¥ç§‘ç ”ç©¶ç”Ÿç›´æŽ¥ç§»æ°‘ï¼ˆ2018å¹´ç¬¬2å­£åº¦å‡ºå°ï¼‰</h3>\r\n<p style=\"user-select: text !important; margin: 0px 0px 5px; padding: 5px 0px; border: 0px; outline: 0px; font-size: 12px; vertical-align: baseline; background: #ffffff; text-align: left; color: #333333; font-family: å¾®è½¯é›…é»‘; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;\">ã€€ã€€æ›¼çœç†å·¥ç§‘ï¼ˆç§‘å­¦ã€æŠ€æœ¯ã€å·¥ç¨‹ã€æ•°å­¦ï¼‰ç ”ç©¶ç”Ÿï¼ˆç¡•å£«ã€åšå£«ï¼‰æ¯•ä¸šå¹¶å®Œæˆä¼ä¸šæˆ–ç ”ç©¶æœºæž„çš„å®žä¹ ï¼ŒCLB 7ï¼ˆé›…æ€4ä¸ª6ï¼‰ï¼Œå¯ä»¥ç›´æŽ¥ç”³è¯·ç§»æ°‘ï¼Œæ— éœ€å·¥ä½œã€‚</p>\r\n<h3 style=\"user-select: text !important; margin: 15px 0px 2px; padding: 0px 0px 2px; border: 0px; outline: 0px; font-size: 1.5em !important; vertical-align: baseline; background: #ffffff; line-height: 1.2em; font-family: å¾®è½¯é›…é»‘; font-weight: normal; color: #333333; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;\">æ›¼çœæ¯•ä¸šç”Ÿæ‰¾åˆ°å·¥ä½œç§»æ°‘ï¼ˆ2018å¹´ç¬¬2å­£åº¦å‡ºå°ï¼‰</h3>\r\n<p style=\"user-select: text !important; margin: 0px 0px 5px; padding: 5px 0px; border: 0px; outline: 0px; font-size: 12px; vertical-align: baseline; background: #ffffff; text-align: left; color: #333333; font-family: å¾®è½¯é›…é»‘; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;\">ã€€ã€€æ›¼çœå…¶ä»–é¡¹ç›®çš„æ¯•ä¸šç”Ÿæ‰¾åˆ°ç´§ç¼ºèŒä¸šå·¥ä½œï¼Œç­¾ç½²1å¹´ä»¥ä¸Šåˆçº¦ï¼ŒCLB 7ï¼ˆé›…æ€4ä¸ª6ï¼‰ï¼Œå¯ä»¥ç›´æŽ¥ç”³è¯·ç§»æ°‘ã€‚ä¸å†éœ€è¦å·¥ä½œ6ä¸ªæœˆï¼Œä½†å·¥ä½œå¿…é¡»å’Œå­¦ä¹ ç›¸å…³ã€‚</p>\r\n<h3 style=\"user-select: text !important; margin: 15px 0px 2px; padding: 0px 0px 2px; border: 0px; outline: 0px; font-size: 1.5em !important; vertical-align: baseline; background: #ffffff; line-height: 1.2em; font-family: å¾®è½¯é›…é»‘; font-weight: normal; color: #333333; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;\">æ›¼çœå·¥ä½œç»éªŒï¼ˆ2018å¹´ç¬¬3å­£åº¦å–ä»£çŽ°æœ‰æ”¿ç­–ï¼‰</h3>\r\n<p style=\"user-select: text !important; margin: 0px 0px 5px; padding: 5px 0px; border: 0px; outline: 0px; font-size: 12px; vertical-align: baseline; background: #ffffff; text-align: left; color: #333333; font-family: å¾®è½¯é›…é»‘; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;\">ã€€ã€€ç¬¦åˆæ¡ä»¶çš„å·¥ä½œç»éªŒæœ‰4ç±»ï¼š</p>\r\n<ul style=\"user-select: text !important; margin: 0px 0px 2px; padding: 0px; border: 0px; outline: 0px; font-size: 12px; vertical-align: baseline; background: #ffffff; list-style: disc; color: #333333; font-family: å¾®è½¯é›…é»‘; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;\">\r\n<li style=\"user-select: text !important; margin: 0px 0px 0px 3em; padding: 0px; border: 0px; outline: 0px; font-size: 12px; vertical-align: baseline; background: transparent;\">æŒä»»ä½•å·¥ç­¾ï¼ˆåŒ…æ‹¬<a style=\"user-select: text !important; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 12px; vertical-align: baseline; background: transparent; color: #d60707; text-decoration: none;\" href=\"http://eoivisa.com/open-work-permit/\">å¼€æ”¾å¼å·¥ç­¾</a>ï¼‰ï¼ŒåŠå¹´çš„ç´§ç¼ºèŒä¸šåˆ—è¡¨å·¥ä½œç»éªŒã€‚</li>\r\n<li style=\"user-select: text !important; margin: 0px 0px 0px 3em; padding: 0px; border: 0px; outline: 0px; font-size: 12px; vertical-align: baseline; background: transparent;\">å¤–çœæ¯•ä¸šç”Ÿåœ¨æ›¼çœæœ‰ä¸€å¹´çš„ç´§ç¼ºèŒä¸šåˆ—è¡¨å·¥ä½œç»éªŒï¼Œå·¥ä½œå¿…é¡»æ˜¯å’Œå­¦åŽ†ç»åŽ†ç›¸å…³çš„ã€‚å¤–çœæ¯•ä¸šç”Ÿä¸èƒ½èµ°ç¬¬ä¸€ä¸ªç±»åˆ«ã€‚</li>\r\n<li style=\"user-select: text !important; margin: 0px 0px 0px 3em; padding: 0px; border: 0px; outline: 0px; font-size: 12px; vertical-align: baseline; background: transparent;\">æŒ<a style=\"user-select: text !important; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 12px; vertical-align: baseline; background: transparent; color: #d60707; text-decoration: none;\" href=\"http://eoivisa.com/closed-work-permit/\">å°é—­å¼å·¥ç­¾</a>ï¼ˆ<a style=\"user-select: text !important; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 12px; vertical-align: baseline; background: transparent; color: #d60707; text-decoration: none;\" href=\"http://eoivisa.com/spouse-open-work-permit/\">é…å¶å·¥ç­¾</a>ã€å¤–çœ<a style=\"user-select: text !important; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 12px; vertical-align: baseline; background: transparent; color: #d60707; text-decoration: none;\" href=\"http://eoivisa.com/pgwp/\">æ¯•ä¸šåŽå·¥ç­¾</a>ç­‰å¼€æ”¾å¼å·¥ç­¾æ˜¯å¦å¯è¡Œå°šæœªæœ‰å®šè®ºï¼Œåˆæ­¥è®¤ä¸ºæ˜¯ä¸å¯ä»¥ï¼‰ä»Žäº‹ä¸€å¹´çš„éžç´§ç¼ºèŒä¸šåˆ—è¡¨å·¥ä½œã€‚</li>\r\n<li style=\"user-select: text !important; margin: 0px 0px 0px 3em; padding: 0px; border: 0px; outline: 0px; font-size: 12px; vertical-align: baseline; background: transparent;\">æœ¬çœæ¯•ä¸šç”Ÿä»Žäº‹ä¸€å¹´çš„éžç´§ç¼ºèŒä¸šåˆ—è¡¨å·¥ä½œã€‚</li>\r\n</ul>\r\n<p style=\"user-select: text !important; margin: 0px 0px 5px; padding: 5px 0px; border: 0px; outline: 0px; font-size: 12px; vertical-align: baseline; background: #ffffff; text-align: left; color: #333333; font-family: å¾®è½¯é›…é»‘; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;\">ã€€ã€€è¯­è¨€è¦æ±‚ï¼š<br style=\"user-select: text !important;\" />ã€€ã€€0ã€Aã€Bç±»å·¥ä½œè¦æ±‚CLB 5ï¼ˆé›…æ€é˜…è¯»4åˆ†ï¼Œå…¶ä»–ä¸‰ç§‘5åˆ†ï¼‰ï¼ŒCã€Dç±»å·¥ä½œè¦æ±‚CLB 4ï¼ˆé›…æ€å¬åŠ›4.5ï¼Œé˜…è¯»3.5ï¼Œå†™ä½œå’Œå£è¯­4åˆ†ï¼‰ã€‚</p>\r\n<p style=\"user-select: text !important; margin: 0px 0px 5px; padding: 5px 0px; border: 0px; outline: 0px; font-size: 12px; vertical-align: baseline; background: #ffffff; text-align: left; color: #333333; font-family: å¾®è½¯é›…é»‘; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;\">ã€€ã€€é›‡ä¸»è¦æ±‚åœ¨æ›¼çœè¿è¥3å¹´ä»¥ä¸Šï¼Œå¿…é¡»ç»™ç”³è¯·äººæä¾›é•¿æœŸã€å…¨èŒçš„å·¥ä½œã€‚</p>\r\n<h3 style=\"user-select: text !important; margin: 15px 0px 2px; padding: 0px 0px 2px; border: 0px; outline: 0px; font-size: 1.5em !important; vertical-align: baseline; background: #ffffff; line-height: 1.2em; font-family: å¾®è½¯é›…é»‘; font-weight: normal; color: #333333; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;\">å¿«é€Ÿé€šé“é¡¹ç›®ï¼ˆ2018å¹´1æœˆå‡ºå°ï¼‰</h3>\r\n<p style=\"user-select: text !important; margin: 0px 0px 5px; padding: 5px 0px; border: 0px; outline: 0px; font-size: 12px; vertical-align: baseline; background: #ffffff; text-align: left; color: #333333; font-family: å¾®è½¯é›…é»‘; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;\">ã€€ã€€æ–°æŽ¨å‡ºäº†<a style=\"user-select: text !important; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 12px; vertical-align: baseline; background: transparent; color: #d60707; text-decoration: none;\" href=\"http://eoivisa.com/ee/\">å¿«é€Ÿé€šé“</a>ç±»åˆ«ç­‰ï¼Œå’Œä¹‹å‰çš„æµ·å¤–ç±»åˆ«ä¸€æ ·ï¼Œéœ€è¦é›‡ä¸»æˆ–æœ‹å‹æ‹…ä¿ã€‚</p>\r\n<p>&nbsp;</p>', 'ä»Šå¤©æ›¼çœå®£å¸ƒ2018å¹´ç¬¬2-3å­£åº¦ç§»æ°‘æ”¿ç­–å°†å¤§å¹…ä¿®æ”¹ï¼Œæƒ³è¦èµ¶æœ«ç­è½¦çš„ç”³è¯·äººéœ€è¦åŠ æ²¹äº†ã€‚æˆ‘ä»¬å…ˆæ€»ç»“ï¼Œä¹‹åŽè¯¦ç»†ä»‹ç»ã€‚', '', '', 'åŠ¨æ€', 'post'),
(30, 4, 3, 0, '2017-11-24 18:54:37', 'æ°¸ä¹…å±…æ°‘å¡ Permanent Resident Card', 'permanent-resident-card', '', '', '', 0, 0, '<h3 style=\"user-select: text !important; margin: 15px 0px 2px; padding: 0px 0px 2px; border: 0px; outline: 0px; font-size: 1.5em !important; vertical-align: baseline; background: #ffffff; line-height: 1.2em; font-family: å¾®è½¯é›…é»‘; font-weight: normal; color: #333333; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;\">æ°¸ä¹…å±…æ°‘èº«ä»½</h3>\r\n<p style=\"user-select: text !important; margin: 0px 0px 5px; padding: 5px 0px; border: 0px; outline: 0px; font-size: 12px; vertical-align: baseline; background: #ffffff; text-align: left; color: #333333; font-family: å¾®è½¯é›…é»‘; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;\">ã€€ã€€æ°¸ä¹…å±…æ°‘å¡ï¼ˆä¿—ç§°æž«å¶å¡ï¼‰æ˜¯è¯æ˜Žä½ æ˜¯åŠ æ‹¿å¤§æ°¸ä¹…å±…æ°‘çš„å®˜æ–¹è¯æ˜Žã€‚å½“ä½ ä»Žå…¶ä»–å›½å®¶å›žåˆ°åŠ æ‹¿å¤§æ—¶ï¼Œä½ å¯ä»¥ä½¿ç”¨è¿™ä¸ªé’±åŒ…å¤§å°çš„å¡‘æ–™å¡ç‰‡è¿›å…¥å¹¶ç•™åœ¨åŠ æ‹¿å¤§ã€‚<br style=\"user-select: text !important;\" />ã€€ã€€å½“ä½ ä¹˜åå•†åŠ¡äº¤é€šå·¥å…·ï¼Œå¦‚é£žæœºï¼Œå•†èˆ¹ï¼Œç«è½¦æˆ–å…¬å…±æ±½è½¦ï¼Œå›žåˆ°åŠ æ‹¿å¤§æ—¶ï¼Œä½ å¿…é¡»å±•ç¤ºæ­¤å¡ç‰‡ã€‚å¦‚æžœä½ é€šè¿‡ç§äººäº¤é€šå·¥å…·ï¼Œæ¯”å¦‚ç§äººæ±½è½¦ï¼Œå›žåˆ°åŠ æ‹¿å¤§æ—¶ï¼Œä½ è¿˜å¯ä»¥å±•ç¤ºå…¶ä»–è¯ä»¶ã€‚<br style=\"user-select: text !important;\" />ã€€ã€€å¦‚æžœä½ è®¡åˆ’ç¦»å¼€åŠ æ‹¿å¤§ï¼Œè¯·ç¡®ä¿ä½ çš„æž«å¶å¡åœ¨ä½ å›žæ¥æ—¶ä»ç„¶æœ‰æ•ˆã€‚å¤§å¤šæ•°æž«å¶å¡çš„æœ‰æ•ˆæœŸæ˜¯5å¹´ã€‚<br style=\"user-select: text !important;\" />ã€€ã€€å¦‚æžœä½ ä¸æ‰“ç®—ç¦»å¼€åŠ æ‹¿å¤§ï¼Œä½ ä¸éœ€è¦æ­¤å¡ç‰‡ã€‚<br style=\"user-select: text !important;\" />ã€€ã€€å½“ä½ å›žåˆ°åŠ æ‹¿å¤§æ—¶ï¼Œä½ å¯èƒ½åœ¨æž«å¶å¡ä¹‹å¤–è¿˜éœ€è¦ä¸€æœ¬æŠ¤ç…§ã€‚å…³äºŽéœ€è¦ä½•ç§è¯ä»¶è¿›å…¥åŠ æ‹¿å¤§ï¼Œè¯·æŸ¥çœ‹<a style=\"user-select: text !important; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 12px; vertical-align: baseline; background: transparent; color: #d60707; text-decoration: none;\" href=\"http://eoivisa.com/cbsa/\">åŠ æ‹¿å¤§è¾¹å¢ƒç®¡ç†å±€</a>å®˜ç½‘ã€‚</p>\r\n<h3 style=\"user-select: text !important; margin: 15px 0px 2px; padding: 0px 0px 2px; border: 0px; outline: 0px; font-size: 1.5em !important; vertical-align: baseline; background: #ffffff; line-height: 1.2em; font-family: å¾®è½¯é›…é»‘; font-weight: normal; color: #333333; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;\">ä½•æ—¶ç”³è¯·æž«å¶å¡</h3>\r\n<p style=\"user-select: text !important; margin: 0px 0px 5px; padding: 5px 0px; border: 0px; outline: 0px; font-size: 12px; vertical-align: baseline; background: #ffffff; text-align: left; color: #333333; font-family: å¾®è½¯é›…é»‘; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;\">ã€€ã€€å¦‚æžœä½ æ˜¯æ–°ç§»æ°‘ï¼Œå½“ä½ è¿›å…¥åŠ æ‹¿å¤§æ—¶ï¼ŒIRCCä¼šé‚®å¯„ç»™ä½ æž«å¶å¡ã€‚ä½ ä¸éœ€è¦è‡ªè¡Œç”³è¯·ã€‚<br style=\"user-select: text !important;\" />ã€€ã€€ä¸‹åˆ—æƒ…å†µä½ å¯èƒ½éœ€è¦ç”³è¯·æž«å¶å¡ï¼Œå¦‚æžœï¼š<br style=\"user-select: text !important;\" />ã€€ã€€ä½ ç§»æ°‘åŠ æ‹¿å¤§æ—¶æ²¡æœ‰æ‹¿åˆ°ï¼Œ<br style=\"user-select: text !important;\" />ã€€ã€€ä½ çš„æž«å¶å¡å³å°†æˆ–å·²ç»è¿‡æœŸï¼Œæˆ–è€…<br style=\"user-select: text !important;\" />ã€€ã€€ä½ çš„æž«å¶å¡ä¸¢å¤±ï¼Œè¢«å·æˆ–è€…æŸåã€‚</p>\r\n<h3 style=\"user-select: text !important; margin: 15px 0px 2px; padding: 0px 0px 2px; border: 0px; outline: 0px; font-size: 1.5em !important; vertical-align: baseline; background: #ffffff; line-height: 1.2em; font-family: å¾®è½¯é›…é»‘; font-weight: normal; color: #333333; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;\">ç”³è¯·èµ„æ ¼</h3>\r\n<p style=\"user-select: text !important; margin: 0px 0px 5px; padding: 5px 0px; border: 0px; outline: 0px; font-size: 12px; vertical-align: baseline; background: #ffffff; text-align: left; color: #333333; font-family: å¾®è½¯é›…é»‘; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;\">ã€€ã€€<a style=\"user-select: text !important; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 12px; vertical-align: baseline; background: transparent; color: #d60707; text-decoration: none;\" href=\"http://eoivisa.com/residency-obligation/\">æ»¡è¶³å±…ä½ä¹‰åŠ¡</a>ï¼Œ<br style=\"user-select: text !important;\" />ã€€ã€€çŽ°åœ¨åœ¨åŠ æ‹¿å¤§ï¼Œ<br style=\"user-select: text !important;\" />ã€€ã€€æ²¡æœ‰è¢«åŠ æ‹¿å¤§æ”¿åºœè¦æ±‚ç¦»å¢ƒï¼Œå¹¶ä¸”<br style=\"user-select: text !important;\" />ã€€ã€€ä¸æ˜¯<a style=\"user-select: text !important; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 12px; vertical-align: baseline; background: transparent; color: #d60707; text-decoration: none;\" href=\"http://eoivisa.com/canadian-citizenship/\">åŠ æ‹¿å¤§å…¬æ°‘</a>æˆ–è€…æ ¹æ®å°ç¬¬å®‰æ³•æ³¨å†Œçš„å°ç¬¬å®‰äººã€‚</p>\r\n<p>&nbsp;</p>', 'æ°¸ä¹…å±…æ°‘å¡ï¼ˆä¿—ç§°æž«å¶å¡ï¼‰æ˜¯è¯æ˜Žä½ æ˜¯åŠ æ‹¿å¤§æ°¸ä¹…å±…æ°‘çš„å®˜æ–¹è¯æ˜Žã€‚å½“ä½ ä»Žå…¶ä»–å›½å®¶å›žåˆ°åŠ æ‹¿å¤§æ—¶ï¼Œä½ å¯ä»¥ä½¿ç”¨è¿™ä¸ªé’±åŒ…å¤§å°çš„å¡‘æ–™å¡ç‰‡è¿›å…¥å¹¶ç•™åœ¨åŠ æ‹¿å¤§ã€‚', '', '', 'ç™¾ç§‘', 'wiki'),
(31, 4, 3, 0, '2017-11-24 18:56:59', 'æ™®é€šæ³•ä¼´ä¾£', 'common-law-relationship', '', '', '', 0, 0, '<h3 style=\"user-select: text !important; margin: 15px 0px 2px; padding: 0px 0px 2px; border: 0px; outline: 0px; font-size: 1.5em !important; vertical-align: baseline; background: #ffffff; line-height: 1.2em; font-family: å¾®è½¯é›…é»‘; font-weight: normal; color: #333333; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;\">å®šä¹‰</h3>\r\n<p style=\"user-select: text !important; margin: 0px 0px 5px; padding: 5px 0px; border: 0px; outline: 0px; font-size: 12px; vertical-align: baseline; background: #ffffff; text-align: left; color: #333333; font-family: å¾®è½¯é›…é»‘; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;\">ã€€ã€€åœ¨åŠ æ‹¿å¤§ï¼Œæ™®é€šæ³•ä¼´ä¾£æ‹¥æœ‰å’Œé…å¶ä¸€æ ·çš„ä¹‰åŠ¡å’Œæƒåˆ©ã€‚<br style=\"user-select: text !important;\" />ã€€ã€€ä½ å¿…é¡»è¯æ˜Žå’Œä½ çš„ä¼´ä¾£åŒå±…12ä¸ªæœˆä»¥ä¸Šå¹¶ä¸”ä¸¤äººçš„å…³ç³»å’Œå©šå§»æ— å¼‚ã€‚<br style=\"user-select: text !important;\" />ã€€ã€€æ™®é€šæ³•ä¼´ä¾£å¯ä»¥æ˜¯åŒæ€§ï¼Œä¹Ÿå¯ä»¥æ˜¯å¼‚æ€§ï¼Œä½†åŒæ—¶åªèƒ½å’Œä¸€äººç»´æŒæ™®é€šæ³•ä¼´ä¾£å…³ç³»ã€‚æ™®é€šæ³•ä¼´ä¾£çš„ç‰¹å¾åŸºæœ¬å’Œå©šå§»ç›¸åŒã€‚<br style=\"user-select: text !important;\" />ã€€ã€€è¿™æ„å‘³ç€ä½ ä»¬å¿…é¡»ä½åœ¨ä¸€èµ·ä¸€å¹´ä»¥ä¸Šï¼Œä¸­é—´æ²¡æœ‰è¾ƒé•¿æ—¶é—´çš„é—´éš”ã€‚åŒæ–¹ä¸­çš„ä»»ä½•ä¸€æ–¹å¯èƒ½ç¦»å®¶å‡ºå·®ï¼Œæˆ–è€…å’Œå®¶åº­å›¢èšï¼Œç­‰ç­‰ï¼Œä½†æ˜¯è¿™ä¸ªåˆ†ç¦»å¿…é¡»æ˜¯ä¸´æ—¶ä¸”çŸ­æš‚çš„ã€‚<br style=\"user-select: text !important;\" />ã€€ã€€åŒæ–¹ä¸­ä»»ä½•ä¸€æ–¹ä¸æ‰“ç®—ç»§ç»­çš„è¯ï¼Œæ™®é€šæ³•ä¼´ä¾£çš„å…³ç³»å°±ç»ˆæ­¢äº†ã€‚</p>\r\n<h3 style=\"user-select: text !important; margin: 15px 0px 2px; padding: 0px 0px 2px; border: 0px; outline: 0px; font-size: 1.5em !important; vertical-align: baseline; background: #ffffff; line-height: 1.2em; font-family: å¾®è½¯é›…é»‘; font-weight: normal; color: #333333; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;\">å¦‚ä½•è¯æ˜ŽåŒå±…ä¸€å¹´ä»¥ä¸Š</h3>\r\n<p style=\"user-select: text !important; margin: 0px 0px 5px; padding: 5px 0px; border: 0px; outline: 0px; font-size: 12px; vertical-align: baseline; background: #ffffff; text-align: left; color: #333333; font-family: å¾®è½¯é›…é»‘; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;\">ã€€ã€€ä»¥ä¸‹æ–‡ä»¶èƒ½è¢«ç”¨æ¥è¯æ˜ŽåŒå±…ä¸€å¹´ä»¥ä¸Šï¼š<br style=\"user-select: text !important;\" />ã€€ã€€æ³•å¾‹æ„ä¹‰ä¸Šçš„åŒå±…å£°æ˜Žï¼Œ<br style=\"user-select: text !important;\" />ã€€ã€€è”åè´¦å·çš„æµæ°´ï¼Œ<br style=\"user-select: text !important;\" />ã€€ã€€è”åä¿¡ç”¨å¡ï¼Œ<br style=\"user-select: text !important;\" />ã€€ã€€è”åå›ºå®šèµ„äº§çš„è¯æ˜Žï¼Œ<br style=\"user-select: text !important;\" />ã€€ã€€è”åç§Ÿæˆ¿çš„è¯æ˜Žï¼Œ<br style=\"user-select: text !important;\" />ã€€ã€€è”åç§Ÿæˆ¿çš„æ”¶æ®ï¼Œ<br style=\"user-select: text !important;\" />ã€€ã€€è”åè´¦æˆ·çš„è´¦å•ï¼Œæ¯”å¦‚ç”µè´¹ã€ç‡ƒæ°”æˆ–è€…ç”µè¯<br style=\"user-select: text !important;\" />ã€€ã€€è”åæ—¥å¸¸å¼€é”€ç®¡ç†çš„è¯æ˜Žï¼Œ<br style=\"user-select: text !important;\" />ã€€ã€€è”åè´­ç½®çš„è¯æ˜Žï¼ˆå°¤å…¶æ˜¯æ—¥ç”¨å“ï¼‰ï¼Œ<br style=\"user-select: text !important;\" />ã€€ã€€é‚®å¯„åœ°å€ä¸ºåŒä¸€ä¸ªçš„è¯æ˜Žï¼Œ<br style=\"user-select: text !important;\" />ã€€ã€€é‡è¦æ–‡ä»¶æ˜¾ç¤ºä½ ä»¬çš„åœ°å€ç›¸åŒçš„è¯æ˜Žï¼Œæ¯”å¦‚èº«ä»½è¯ï¼Œé©¾ç…§å’Œä¿å•ï¼Œå’Œ<br style=\"user-select: text !important;\" />ã€€ã€€å…¶ä»–èƒ½è¯æ˜Žä½ ä»¬å±…ä½åœ¨ä¸€èµ·çš„è¯æ˜Žã€‚<br style=\"user-select: text !important;\" />ã€€ã€€<strong style=\"user-select: text !important; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 12px; vertical-align: baseline; background: transparent;\">ä½ ä¸éœ€è¦æä¾›æ‰€æœ‰çš„è¿™äº›è¯æ˜Žæ¥è¯æ˜Žä½ ä»¬çš„åŒå±…å…³ç³»æ˜¯çœŸå®žçš„ã€‚<a style=\"user-select: text !important; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 12px; vertical-align: baseline; background: transparent; color: #d60707; text-decoration: none;\" href=\"http://eoivisa.com/cic/\">IRCC</a>ä¹Ÿå¯èƒ½è€ƒè™‘å…¶ä»–çš„è¯æ˜Žã€‚</strong></p>\r\n<h3 style=\"user-select: text !important; margin: 15px 0px 2px; padding: 0px 0px 2px; border: 0px; outline: 0px; font-size: 1.5em !important; vertical-align: baseline; background: #ffffff; line-height: 1.2em; font-family: å¾®è½¯é›…é»‘; font-weight: normal; color: #333333; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;\">ç­¾ç½²çš„è¡¨æ ¼</h3>\r\n<p style=\"user-select: text !important; margin: 0px 0px 5px; padding: 5px 0px; border: 0px; outline: 0px; font-size: 12px; vertical-align: baseline; background: #ffffff; text-align: left; color: #333333; font-family: å¾®è½¯é›…é»‘; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;\">ã€€ã€€æ™®é€šæ³•ä¼´ä¾£å¹¶ä¸æ˜¯ä¸€é¡¹å•ç‹¬çš„ä¸šåŠ¡ï¼Œå®ƒé€šå¸¸å’Œ<a style=\"user-select: text !important; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 12px; vertical-align: baseline; background: transparent; color: #d60707; text-decoration: none;\" href=\"http://eoivisa.com/family-sponsorship/\">å›¢èšç§»æ°‘</a>ã€<a style=\"user-select: text !important; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 12px; vertical-align: baseline; background: transparent; color: #d60707; text-decoration: none;\" href=\"http://eoivisa.com/spouse-open-work-permit/\">é…å¶å·¥ç­¾</a>ç­‰ä¸šåŠ¡ä¸€èµ·æ“ä½œã€‚<br style=\"user-select: text !important;\" />ã€€ã€€å¦‚æžœä»…ä»…æ˜¯æƒ³åšä¸€ä¸ªæ™®é€šæ³•ä¼´ä¾£çš„å£°æ˜Žï¼Œå¯ä»¥å‚è€ƒ<a style=\"user-select: text !important; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 12px; vertical-align: baseline; background: transparent; color: #d60707; text-decoration: none;\" href=\"http://eoivisa.com/affidavits/\">å®£èª“</a>ã€‚å»ºè®®æ‚¨æ¥ä¹‹å‰å¡«å†™å¥½<a style=\"user-select: text !important; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 12px; vertical-align: baseline; background: transparent; color: #d60707; text-decoration: none;\" href=\"http://eoivisa.com/imm5409/\">æ™®é€šæ³•ä¼´ä¾£å£°æ˜Ž(IMM5409)</a>ã€‚</p>\r\n<p>&nbsp;</p>', 'åœ¨åŠ æ‹¿å¤§ï¼Œæ™®é€šæ³•ä¼´ä¾£æ‹¥æœ‰å’Œé…å¶ä¸€æ ·çš„ä¹‰åŠ¡å’Œæƒåˆ©ã€‚', '', '', 'ç™¾ç§‘', 'wiki'),
(32, 1, 7, 2, '2017-12-07 21:26:16', 'å¤«å¦»å­å¥³å›¢èš', 'family-sponsorship', '', '', '', 2000, 0, '<h3>å¤«å¦»å­å¥³å›¢èš</h3>\r\n<p>ã€€ã€€é€‚ç”¨äºŽåŠ æ‹¿å¤§æ°¸ä¹…å±…æ°‘æˆ–å…¬æ°‘çš„é…å¶ã€<a href=\"http://eoivisa.com/common-law-relationship/\">æ™®é€šæ³•ä¼´ä¾£ï¼ˆCommon-law Partnerï¼‰</a>ã€äº‹å®žå¤«å¦»ï¼ˆConjugal Partnerï¼‰å’Œæ²¡æœ‰ç»“å©šï¼ˆåŒ…æ‹¬è¿›å…¥<a href=\"http://eoivisa.com/common-law-relationship/\">æ™®é€šæ³•å…³ç³»</a>ï¼‰ã€ä¸æ»¡22å²çš„å­å¥³ã€‚</p>\r\n<h3>è¦ç‚¹</h3>\r\n<p>ã€€ã€€å¢ƒå¤–æ‹…ä¿æ—¶é—´æ¯”è¾ƒå¿«ï¼Œé€šå¸¸é€‚ç”¨äºŽå¤«å¦»åˆ†å±…ä¸¤åœ°çš„æƒ…å½¢ï¼Œæ¡ˆå­åœ¨CPC-Mississaugaå…ˆé€šè¿‡æ‹…ä¿èµ„æ ¼ç”³è¯·ï¼Œç„¶åŽé€šå¸¸åˆ†åˆ°é¦™æ¸¯ä½¿é¦†å®¡æ ¸è¢«æ‹…ä¿äººçš„æ°¸ä¹…å±…æ°‘ç”³è¯·ï¼Œæ€»æ—¶é—´1å¹´å·¦å³ã€‚<br />ã€€ã€€å¢ƒå†…æ‹…ä¿æ—¶é—´å¾ˆæ…¢ï¼Œå®¡æ‰¹æ—¶é—´æœ‰å¯èƒ½é•¿è¾¾2-3å¹´ï¼Œé€‚ç”¨äºŽå¤«å¦»éƒ½å±…ä½äºŽåŠ æ‹¿å¤§å¢ƒå†…çš„æƒ…å½¢ï¼Œè¯·æ³¨æ„ï¼Œå³ä½¿å¤«å¦»éƒ½å±…ä½åœ¨åŠ æ‹¿å¤§å¢ƒå†…ï¼Œä¹Ÿå¯ä»¥é€’äº¤å¢ƒå¤–ä½¿é¦†ä»¥æ±‚å¿«é€Ÿå¤„ç†ã€‚é€’äº¤å¢ƒå†…æ‹…ä¿ç§»æ°‘åŽï¼Œè¢«æ‹…ä¿äººå¯ä»¥ç”³è¯·<a href=\"http://eoivisa.com/spouse-open-work-permit/\">å¼€æ”¾å¼å·¥ç­¾</a>ã€‚<br />ã€€ã€€å¦‚æžœæ‹…ä¿äººå±…ä½åœ¨é­åŒ—å…‹çœï¼Œè¿˜éœ€è¦é¢å¤–ç”³è¯·CSQ.</p>\r\n<h3>æ‹…ä¿äººä¸åœ¨åŠ æ‹¿å¤§ï¼Œèƒ½å¦å›¢èšï¼Ÿ</h3>\r\n<p>ã€€ã€€å±…ä½åœ¨æµ·å¤–çš„åŠ æ‹¿å¤§å…¬æ°‘å¯ä»¥æ‹…ä¿ä»–ä»¬çš„é…å¶ã€æ™®é€šæ³•ä¼´ä¾£ã€äº‹å®žä¼´ä¾£å’Œæœªç”Ÿè‚²è¿‡çš„æœªæˆå¹´çš„å°å­©ï¼Œä½†æ˜¯éœ€è¦è®©ç§»æ°‘å®˜ç›¸ä¿¡ä¸€æ—¦è¢«æ‹…ä¿äººæˆä¸ºåŠ æ‹¿å¤§æ°¸ä¹…å±…æ°‘ï¼Œä»–ä»¬å°†ä¼šå±…ä½åœ¨åŠ æ‹¿å¤§ã€‚<br />ã€€ã€€å±…ä½åœ¨å¢ƒå¤–çš„åŠ æ‹¿å¤§æ°¸ä¹…å±…æ°‘ä¸ç¬¦åˆæ‹…ä¿æ¡ä»¶ã€‚</p>\r\n<h3>å¤«å¦»å­å¥³å›¢èšä¸éœ€è¦è¾¾åˆ°ç‰¹å®šçš„æ”¶å…¥è¦æ±‚</h3>\r\n<p>ã€€ã€€é€šå¸¸æ‹…ä¿äººæ²¡æœ‰å·¥ä½œæˆ–è€…æ”¶å…¥å¾ˆä½Žéƒ½ä¸å½±å“ç”³è¯·ã€‚</p>\r\n<p>&nbsp;</p>', '', '\r\n\r\n\r\n\r\n', '', 'ç§»æ°‘', 'product');
INSERT INTO `products` (`product_id`, `p_cat_id`, `cat_id`, `manufacturer_id`, `date`, `product_title`, `product_url`, `product_img1`, `product_img2`, `product_img3`, `product_price`, `product_psp_price`, `product_desc`, `product_features`, `product_video`, `product_keywords`, `product_label`, `status`) VALUES
(33, 1, 5, 2, '2017-12-07 21:26:29', 'çœæåå’Œé­çœç§»æ°‘', 'provincial-programs', '', '', '', 800, 0, '<h3 style=\"user-select: text !important; margin: 15px 0px 2px; padding: 0px 0px 2px; border: 0px; outline: 0px; font-size: 1.5em !important; vertical-align: baseline; background: #ffffff; line-height: 1.2em; font-family: å¾®è½¯é›…é»‘; font-weight: normal; color: #333333; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;\">è¦ç‚¹</h3>\r\n<p style=\"user-select: text !important; margin: 0px 0px 5px; padding: 5px 0px; border: 0px; outline: 0px; font-size: 12px; vertical-align: baseline; background: #ffffff; text-align: left; color: #333333; font-family: å¾®è½¯é›…é»‘; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;\">ã€€ã€€åŠ æ‹¿å¤§å®ªæ³•è§„å®šï¼Œç§»æ°‘äº‹åŠ¡ç”±è”é‚¦æ”¿åºœå’Œçœæ”¿åºœå…±åŒç®¡è¾–ã€‚è¿™æ˜¯æ‰€æœ‰çœæåé¡¹ç›®çš„æ³•å¾‹åŸºç¡€ï¼Œçœæåé¡¹ç›®é€šå¸¸è¦æ±‚ç”³è¯·äººæ‰“ç®—æ°¸ä¹…å±…ä½åœ¨æŸä¸ªçœã€‚ç”³è¯·äººå¯¹è¿™ä¸ªçœçš„ç§»æ°‘åŽ…é€’äº¤ç”³è¯·ææ–™ï¼Œé€šè¿‡åŽçœæ”¿åºœç»™ç”³è¯·äººå‘æ”¾æåå‡½ï¼Œç”³è¯·äººå†å°†æåå‡½å’Œæœ‰å…³ç”³è¯·è¡¨æ ¼é€’äº¤åˆ°è”é‚¦ã€‚è”é‚¦ä¼šè¿›è¡Œä½“æ£€ã€æ— çŠ¯ç½ªã€å®‰å…¨è°ƒæŸ¥ç­‰å®¡æ ¸ï¼Œä½†ä¸€èˆ¬ä¸å¾—æ‹’ç»ç”³è¯·äººçš„ç§»æ°‘ç”³è¯·ã€‚<br style=\"user-select: text !important;\" />ã€€ã€€é­åŒ—å…‹çš„&ldquo;çœæåè¯ä¹¦&rdquo;ä¹Ÿå«CSQï¼ˆCertificat de s&eacute;lection du Qu&eacute;becï¼‰ï¼Œå’Œå…¶ä»–çœçš„çº¸è´¨æåè¯ä¹¦åœ¨è”é‚¦é˜¶æ®µçš„å®¡ç†æµç¨‹å‡ ä¹Žæ²¡æœ‰åŒºåˆ«ã€‚ä¸‹å›¾ä¸­ï¼Œå·¦è¾¹æ˜¯å®‰å¤§ç•¥çœæåè¯ä¹¦ï¼Œå³è¾¹æ˜¯CSQ.</p>\r\n<h3 style=\"user-select: text !important; margin: 15px 0px 2px; padding: 0px 0px 2px; border: 0px; outline: 0px; font-size: 1.5em !important; vertical-align: baseline; background: #ffffff; line-height: 1.2em; font-family: å¾®è½¯é›…é»‘; font-weight: normal; color: #333333; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;\">å¿«é€Ÿé€šé“</h3>\r\n<p style=\"user-select: text !important; margin: 0px 0px 5px; padding: 5px 0px; border: 0px; outline: 0px; font-size: 12px; vertical-align: baseline; background: #ffffff; text-align: left; color: #333333; font-family: å¾®è½¯é›…é»‘; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;\">ã€€ã€€é­åŒ—å…‹ä»¥å¤–çš„çœæååˆ†ä¸¤ç§ï¼šçº¸è´¨ï¼ˆå¸¸è§„ï¼‰çœæåå’Œ<a style=\"user-select: text !important; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 12px; vertical-align: baseline; background: transparent; color: #d60707; text-decoration: none;\" href=\"http://eoivisa.com/ee/\">å¿«é€Ÿé€šé“</a>çœæåã€‚<br style=\"user-select: text !important;\" />ã€€ã€€å¸¸è§„çœæåé€šè¿‡åŽå¯ä»¥ç›´æŽ¥é‚®å¯„åˆ°è”é‚¦ï¼ŒèŒä¸šåœ¨<a style=\"user-select: text !important; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 12px; vertical-align: baseline; background: transparent; color: #d60707; text-decoration: none;\" href=\"http://eoivisa.com/noc/\">NOC</a>&nbsp;Cæˆ–è€…Dç±»çš„ç”³è¯·äººéœ€è¦é€’äº¤è¯­è¨€CLB4çš„æˆç»©ï¼Œé™¤æ­¤ä¹‹å¤–å¯¹ç”³è¯·äººæ²¡æœ‰å…¶ä»–ç‰¹æ®Šè¦æ±‚ã€‚<br style=\"user-select: text !important;\" />ã€€ã€€<a style=\"user-select: text !important; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 12px; vertical-align: baseline; background: transparent; color: #d60707; text-decoration: none;\" href=\"http://eoivisa.com/ee/\">å¿«é€Ÿé€šé“</a>çœæåéœ€è¦ç”³è¯·äººå…ˆè¾¾åˆ°<a style=\"user-select: text !important; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 12px; vertical-align: baseline; background: transparent; color: #d60707; text-decoration: none;\" href=\"http://eoivisa.com/fsw/\">è”é‚¦æŠ€æœ¯ç§»æ°‘</a>ã€<a style=\"user-select: text !important; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 12px; vertical-align: baseline; background: transparent; color: #d60707; text-decoration: none;\" href=\"http://eoivisa.com/cec/\">åŠ æ‹¿å¤§ç»éªŒç±»ç§»æ°‘</a>æˆ–è€…<a style=\"user-select: text !important; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 12px; vertical-align: baseline; background: transparent; color: #d60707; text-decoration: none;\" href=\"http://eoivisa.com/fstp/\">è”é‚¦æŠ€å·¥ç§»æ°‘</a>å…¶ä¸­ä¸€ä¸ªé¡¹ç›®çš„è¦æ±‚è¿›å…¥æ± å­ï¼Œç„¶åŽå†ç”³è¯·çœæåã€‚çœæåé¡¹ç›®é€šè¿‡åŽï¼Œä¼šç»™ç”³è¯·äººåœ¨æ± å­é‡ŒåŠ 600åˆ†ä¿é€é‚€è¯·ã€‚<br style=\"user-select: text !important;\" />ã€€ã€€çœæ”¿åºœé€šå¸¸ä¼šè¯´æ˜Žæ¯ä¸ªé¡¹ç›®æ˜¯åŸºäºŽçº¸è´¨ï¼ˆå¸¸è§„ï¼‰çš„è¿˜æ˜¯åŸºäºŽ<a style=\"user-select: text !important; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 12px; vertical-align: baseline; background: transparent; color: #d60707; text-decoration: none;\" href=\"http://eoivisa.com/ee/\">å¿«é€Ÿé€šé“</a>çš„ã€‚</p>\r\n<h3 style=\"user-select: text !important; margin: 15px 0px 2px; padding: 0px 0px 2px; border: 0px; outline: 0px; font-size: 1.5em !important; vertical-align: baseline; background: #ffffff; line-height: 1.2em; font-family: å¾®è½¯é›…é»‘; font-weight: normal; color: #333333; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;\">æ—¶æ•ˆ</h3>\r\n<p style=\"user-select: text !important; margin: 0px 0px 5px; padding: 5px 0px; border: 0px; outline: 0px; font-size: 12px; vertical-align: baseline; background: #ffffff; text-align: left; color: #333333; font-family: å¾®è½¯é›…é»‘; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;\">ã€€ã€€èŽ·å¾—æåè¯ä¹¦åŽï¼Œçº¸è´¨ç”³è¯·é€šå¸¸1-2å¹´å†…ï¼Œ<a style=\"user-select: text !important; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 12px; vertical-align: baseline; background: transparent; color: #d60707; text-decoration: none;\" href=\"http://eoivisa.com/ee/\">å¿«é€Ÿé€šé“</a>é€šå¸¸6ä¸ªæœˆå·¦å³èŽ·å¾—æ°¸ä¹…å±…æ°‘ç­¾è¯ï¼Œå…·ä½“æ—¶é—´æ ¹æ®ç­¾è¯åŠžå…¬å®¤ä¼šæœ‰æ‰€ä¸åŒï¼‰ã€‚</p>\r\n<h3 style=\"user-select: text !important; margin: 15px 0px 2px; padding: 0px 0px 2px; border: 0px; outline: 0px; font-size: 1.5em !important; vertical-align: baseline; background: #ffffff; line-height: 1.2em; font-family: å¾®è½¯é›…é»‘; font-weight: normal; color: #333333; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;\">è¿å¾™æƒ</h3>\r\n<p style=\"user-select: text !important; margin: 0px 0px 5px; padding: 5px 0px; border: 0px; outline: 0px; font-size: 12px; vertical-align: baseline; background: #ffffff; text-align: left; color: #333333; font-family: å¾®è½¯é›…é»‘; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;\">ã€€ã€€ç”³è¯·çœæåçš„æ—¶å€™è¦æ±‚ç”³è¯·äººå¿…é¡»æ‰“ç®—æ°¸ä¹…å±…æ°‘åœ¨æåçš„çœä»½ã€‚èŽ·å¾—æ°¸ä¹…å±…æ°‘èº«ä»½åŽï¼Œç”³è¯·äººå¯ä»¥è¿å¾™è‡³åŠ æ‹¿å¤§ä»»æ„çœä»½æˆ–é¢†åœ°å±…ä½ï¼ˆåŒ…æ‹¬é­åŒ—å…‹ï¼‰ï¼Œæ²¡æœ‰ä»»ä½•è¯æ®è¡¨æ˜Žè¿™ä¹ˆåšä¼šåœ¨ç»­æž«å¶å¡æˆ–è€…å…¥ç±çš„æ—¶å€™ä¼šæœ‰ä»€ä¹ˆé—®é¢˜ã€‚å‚è€ƒ<a style=\"user-select: text !important; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 12px; vertical-align: baseline; background: transparent; color: #d60707; text-decoration: none;\" href=\"http://laws-lois.justice.gc.ca/eng/CONST/page-15.html#h-40\" target=\"_blank\" rel=\"noopener\">åŠ æ‹¿å¤§å®ªæ³•</a>ï¼š</p>\r\n<h3 style=\"user-select: text !important; margin: 15px 0px 2px; padding: 0px 0px 2px; border: 0px; outline: 0px; font-size: 1.5em !important; vertical-align: baseline; background: #ffffff; line-height: 1.2em; font-family: å¾®è½¯é›…é»‘; font-weight: normal; color: #333333; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;\">è”é‚¦å’Œçœçš„å…³ç³»</h3>\r\n<p style=\"user-select: text !important; margin: 0px 0px 5px; padding: 5px 0px; border: 0px; outline: 0px; font-size: 12px; vertical-align: baseline; background: #ffffff; text-align: left; color: #333333; font-family: å¾®è½¯é›…é»‘; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;\">ã€€ã€€è”é‚¦åªèƒ½å› ä¸ºä½“æ£€æˆ–ï¼ˆçŠ¯ç½ªï¼‰èƒŒæ™¯è°ƒæŸ¥æ²¡æœ‰é€šè¿‡ï¼Œæˆ–è€…æœ‰å……è¶³è¯æ®è¯æ˜Žç”³è¯·äººä¸æ‰“ç®—å±…ä½åœ¨æåçœä»½è€Œæ‹’ç»çœæåçš„ç”³è¯·äººï¼Œè”é‚¦è¿˜å¯ä»¥åŸºäºŽè®¤ä¸ºç”³è¯·äººä¸å¤§å¯èƒ½åœ¨åŠ æ‹¿å¤§ç»æµŽä¸Šç‹¬ç«‹æ‹’ç»é™¤é­åŒ—å…‹ä»¥å¤–å…¶ä»–çœä»½æåçš„ç”³è¯·äººã€‚<br style=\"user-select: text !important;\" />ã€€ã€€åœ¨è¿™äº›æ¡ˆä¾‹ä¸­ï¼Œç§»æ°‘å®˜å¿…é¡»æœ‰ä¸€äº›è¯æ®æ¥æŽ¨ç¿»çœæåï¼ˆè®¤ä¸ºç”³è¯·äººå¤Ÿèµ„æ ¼ç§»æ°‘ï¼‰çš„å‡è®¾ã€‚æ¯ä¸€ä¸ªçœæåçš„åè®®éƒ½è§„å®šå¦‚æžœç§»æ°‘å®˜å¦‚æžœæ‰“ç®—æ‹’ç­¾ï¼Œå¿…é¡»æå‰å’Œçœé‡Œçš„ç§»æ°‘å®˜å‘˜æ²Ÿé€šã€‚å¦‚æžœè¿™ä¸ªå®˜å‘˜åœ¨å’Œçœé‡Œçš„ç§»æ°‘å®˜å‘˜æ²Ÿé€šä»¥åŽï¼Œä»ç„¶æ‰“ç®—æ‹’ç­¾ï¼Œç§»æ°‘æ³•è§„å®šä»–åœ¨æ­£å¼æ‹’ç­¾ä¹‹å‰ï¼Œè¿˜éœ€è¦è®©ç¬¬äºŒä¸ªç§»æ°‘å®˜é™„è®®ä»–æ‹’ç­¾çš„å†³å®šã€‚ä¸¤ä¸ªç§»æ°‘å®˜çš„åå­—å¿…é¡»æ¸…æ™°åœ°å¤‡æ³¨åœ¨<a style=\"user-select: text !important; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 12px; vertical-align: baseline; background: transparent; color: #d60707; text-decoration: none;\" href=\"http://eoivisa.com/gcms/\">GCMS</a>é‡Œã€‚<br style=\"user-select: text !important;\" />ã€€ã€€æ›´å¤šå†…å®¹ï¼Œå¯ä»¥å‚è€ƒ<a style=\"user-select: text !important; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 12px; vertical-align: baseline; background: transparent; color: #d60707; text-decoration: none;\" href=\"http://eoivisa.com/procedural-fairness-2/\">ç¨‹åºå…¬å¹³ç³»åˆ—æ–‡ç« ï¼ˆäºŒï¼‰ï¼šçœæå</a>ã€‚</p>\r\n<h3 style=\"user-select: text !important; margin: 15px 0px 2px; padding: 0px 0px 2px; border: 0px; outline: 0px; font-size: 1.5em !important; vertical-align: baseline; background: #ffffff; line-height: 1.2em; font-family: å¾®è½¯é›…é»‘; font-weight: normal; color: #333333; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;\">æ”¶è´¹</h3>\r\n<p style=\"user-select: text !important; margin: 0px 0px 5px; padding: 5px 0px; border: 0px; outline: 0px; font-size: 12px; vertical-align: baseline; background: #ffffff; text-align: left; color: #333333; font-family: å¾®è½¯é›…é»‘; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;\">ã€€ã€€æ–°ç”Ÿä»£å…³äºŽçœæåçš„è´¹ç”¨ä¸å°½ç›¸åŒï¼Œå»ºè®®æ‚¨ç‚¹å¼€æˆ‘ä»¬ä»‹ç»æ¯ä¸ªçœæåé¡¹ç›®çš„é¡µé¢æŸ¥è¯¢ã€‚<br style=\"user-select: text !important;\" />ã€€ã€€å¦‚æžœæ‚¨å·²ç»èŽ·å¾—çº¸è´¨ï¼ˆå¸¸è§„ï¼‰çœæåè¯ä¹¦ï¼Œå¹¶å¸Œæœ›æˆ‘ä»¬ä»£ç†è”é‚¦é˜¶æ®µï¼Œæˆ‘ä»¬æ”¶å–800åŠ å…ƒã€‚<br style=\"user-select: text !important;\" />ã€€ã€€è´¹ç”¨åŒ…æ‹¬ç¿»è¯‘ã€è¡¨æ ¼ã€æ–‡ä¹¦ã€é›‡ä¸»ä¿¡æ’°å†™å’Œä¿®æ”¹ç­‰ï¼Œé€‚ç”¨äºŽä¸€èˆ¬æ¡ˆä¾‹ï¼Œç”³è¯·äººæœ‰ç‰¹æ®Šæƒ…å†µçš„å¤æ‚æ¡ˆä¾‹å°†ä¼šè¢«é¢å¤–æ”¶è´¹ã€‚<br style=\"user-select: text !important;\" />ã€€ã€€ä¸åŒ…æ‹¬ç§»æ°‘å±€æ”¶å–çš„ç”³è¯·è´¹ã€å…¬è¯è´¹ã€ä½“æ£€è´¹ã€ç™»å½•è´¹ã€å¿«é€’è´¹ç­‰ç¬¬ä¸‰æ–¹è´¹ç”¨ã€‚</p>\r\n<p style=\"background: #ffffff; margin: 0px 0px 5px; padding: 5px 0px; outline: 0px; border: 0px; text-align: left; color: #333333; text-transform: none; text-indent: 0px; letter-spacing: normal; font-family: å¾®è½¯é›…é»‘; font-size: 12px; word-spacing: 0px; white-space: normal; orphans: 2; widows: 2;\">&nbsp;</p>\r\n<p>&nbsp;</p>', '', '\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n', '', 'åŠ¨æ€', 'product'),
(34, 2, 9, 2, '2017-12-07 21:27:35', 'æ™®é€šå­¦ç”Ÿç­¾è¯', 'study-permit-application', '', '', '', 12000, 0, '<h3>æ¦‚è¦</h3>\r\n<p>ã€€ã€€åŠ æ‹¿å¤§æ™®é€šç•™å­¦ç­¾è¯å¯ä»¥é€šè¿‡ç­¾è¯ä¸­å¿ƒå½“é¢æˆ–é‚®å¯„é€’äº¤ï¼Œä¹Ÿå¯ä»¥ç½‘ç»œç”³è¯·ã€‚<br />ã€€ã€€å¦‚æžœé€‰æ‹©ç½‘ç»œç”³è¯·ï¼Œéœ€è¦å‡†å¤‡çš„ææ–™å’Œä¸‹é¢çš„æ¸…å•ä¼šç•¥æœ‰ä¸åŒã€‚</p>\r\n<h3>ä¸€èˆ¬è¦æ±‚</h3>\r\n<p>ã€€ã€€ä½ å¿…é¡»ä½¿ç­¾è¯å®˜æ»¡æ„ä½ ç¬¦åˆç§»æ°‘åŠéš¾æ°‘ä¿æŠ¤æ³•ä¹‹è¦æ±‚ï¼Œå¹¶ä¸”ä½ çš„åœ¨åŠ é€—ç•™ä¸ºä¸´æ—¶æ€§è´¨ã€‚è¿˜å¿…é¡»ï¼š</p>\r\n<ul>\r\n<li>ä½¿ç­¾è¯å®˜æ»¡æ„ä½ å°†åœ¨è¢«æŽˆæƒçš„é€—ç•™æœŸé™ç»“æŸåŽç¦»å¼€åŠ æ‹¿å¤§ï¼›</li>\r\n<li>å·²ç»è¢«ä¸€æ•™è‚²æœºæž„æŽ¥å—å¹¶æŒæœ‰æœ‰æ•ˆçš„æŽ¥æ”¶ä¿¡å‡½ï¼›</li>\r\n<li>è¯æ˜Žä½ æœ‰è¶³å¤Ÿèµ„é‡‘è´Ÿæ‹…ä½ çš„åœ¨åŠ é€—ç•™ï¼›</li>\r\n<li>æä¾›æ‰€æœ‰ç­¾è¯å®˜ä¸ºè¯„ä¼°ä½ çš„å‡†å…¥æ€§æ‰€éœ€çš„æ–‡ä»¶ï¼›ä»¥åŠ</li>\r\n<li>å®Œæˆ<a href=\"http://eoivisa.com/me/\">ä½“æ£€</a>ã€‚</li>\r\n</ul>\r\n<p>ã€€ã€€å¦‚æžœè¯¾ç¨‹æˆ–å­¦ä¹ é¡¹ç›®ä¸ºå…­ä¸ªæœˆåŠä»¥ä¸‹ï¼Œè¯·å‚è€ƒ<a href=\"http://eoivisa.com/short-term-students/\">è®¿é—®è€…ç­¾è¯ï¼ˆçŸ­æœŸå­¦ä¹ å­¦ç”Ÿï¼‰</a>ã€‚<br />ã€€ã€€å¦‚æžœè¿‡åŽ»10å¹´åŽ»è¿‡ç¾Žå›½æˆ–åŠ æ‹¿å¤§ï¼Œæˆ–è€…ç›®å‰æŒæœ‰ç¾Žå›½ç­¾è¯ï¼Œå¯ä»¥èµ°<a href=\"http://eoivisa.com/study-visited/\">ç®€åŒ–ç±»åˆ«</a>ã€‚ç”³è¯·æœ¬ç§‘ã€ç¡•å£«æˆ–åšå£«å­¦ä½ï¼Œä¹Ÿå¯ä»¥èµ°<a href=\"http://eoivisa.com/study-degree/\">ç®€åŒ–ç±»åˆ«</a>ã€‚<br />ã€€ã€€å¦‚æžœå°±è¯»åŠ æ‹¿å¤§æŒ‡å®šå­¦é™¢ï¼Œæœ‰5.5åˆ†çš„é›…æ€æˆç»©ï¼Œè¯·å‚è€ƒ<a href=\"http://eoivisa.com/spp/\">å­¦ç”Ÿåˆä½œè®¡åˆ’ï¼ˆSPPï¼‰</a>ã€‚<br />ã€€ã€€å¦‚æžœå°±è¯»åŠ æ‹¿å¤§å­¦é™¢æˆ–å¤§å­¦ï¼Œæœ‰6.0åˆ†çš„é›…æ€æˆç»©æˆ–æ³•è¯­B2çš„æˆç»©ï¼Œè¯·å‚è€ƒ<a href=\"http://eoivisa.com/sds/\">å­¦ä¹ ç›´å…¥è®¡åˆ’ï¼ˆSDSï¼‰</a>ã€‚</p>\r\n<h3>ç­¾è¯æ¸…å•</h3>\r\n<ul>\r\n<li><a href=\"http://eoivisa.com/imm1294/\">å­¦ä¹ è®¸å¯ç”³è¯·è¡¨(IMM 1294)</a>ã€‚</li>\r\n<li>ç”³è¯·äººã€ç”³è¯·äººçš„çˆ¶äº²å’Œæ¯äº²å®Œæ•´å¡«å†™<a href=\"http://eoivisa.com/family-education-employment/\">å®¶å±žè¡¨å’Œæ•™è‚²åŠå°±ä¸šç»†èŠ‚è¡¨</a>ï¼Œè¯·ä½¿ç”¨ä¸­è‹±æ–‡æˆ–ä¸­æ³•æ–‡å¡«å†™ã€‚</li>\r\n<li>ä¸¤å¼ ç…§ç‰‡ã€‚æ‰€æœ‰ç…§ç‰‡éœ€ç¬¦åˆ<a href=\"http://eoivisa.com/photo-details/\">ç…§ç‰‡è¦æ±‚ç»†åˆ™</a>ä¸­çš„æ‰€æœ‰è¦æ±‚ã€‚æ¯å¼ ç…§ç‰‡åŽæ³¨æ˜Žæ­¤äººçš„å§“ååŠå‡ºç”Ÿæ—¥æœŸã€‚</li>\r\n<li>æœ¬äººæœ‰æ•ˆæŠ¤ç…§ã€‚æŠ¤ç…§é¡»åŒ…å«é™¤æœ€åŽä¸€é¡µå¤–çš„è‡³å°‘ä¸€æ•´é¡µç©ºç™½é¡µã€ä¸”å¿…é¡»åœ¨è¡Œç¨‹å‰è‡³å°‘å…­ä¸ªæœˆå†…æœ‰æ•ˆã€‚</li>\r\n<li>æœ¬äººä¸­å›½èº«ä»½è¯å¤å°ä»¶(ç…§ç‰‡é¡µå³å¯)ã€‚</li>\r\n<li><a href=\"http://eoivisa.com/me/\">ç”±æŒ‡å®šä½“æ£€åŒ»å¸ˆæä¾›çš„ä½“æ£€è¡¨æ ¼å‰¯æœ¬</a>ã€‚</li>\r\n<li>åŠ æ‹¿å¤§å­¦æ ¡å½•å–/ç™»è®°åŠžå…¬å®¤çš„å½•å–é€šçŸ¥ä¹¦å¤å°ä»¶ï¼Œæ˜¾ç¤ºç”³è¯·äººéœ€ç¼´çº³çš„å‡†ç¡®å­¦è´¹é‡‘é¢ã€é¢„æœŸçš„å­¦ä¹ èµ·æ­¢æ—¶é—´ä»¥åŠç”³è¯·äººæœ€è¿Ÿçš„å¯æ³¨å†Œæ—¶é—´ã€‚</li>\r\n<li>ç”±ç”³è¯·äººæœ¬äººæ’°å†™çš„å­¦ä¹ è®¡åˆ’ã€‚é•¿åº¦é€šå¸¸ä¸º1é¡µã€‚å­¦ä¹ è®¡åˆ’åº”é˜æ˜Žä»¥ä¸‹è¦ç‚¹ï¼š<br />ä½ ä¸ºä»€ä¹ˆå¸Œæœ›å‰å¾€åŠ æ‹¿å¤§çš„å­¦æ ¡å­¦ä¹ ä»¥åŠä¸ºä½•é€‰æ‹©æ­¤ä¸“ä¸šï¼›<br />ä½ çš„æ€»ä½“å­¦ä¸šç›®æ ‡ï¼›ä»¥åŠ<br />åŠ æ‹¿å¤§å­¦åŽ†/å­¦ä½å°†å¦‚ä½•æå‡ä½ çš„å°±ä¸šæœºé‡ã€‚</li>\r\n<li>å¦‚æœ‰ç¬¬ä¸‰æ–¹äººå£«å¸®åŠ©ä½ å‡†å¤‡æ­¤æ¬¡ç”³è¯·ï¼Œè¯·å¡«å†™<a href=\"http://eoivisa.com/imm5476/\">ä»£ç†äººä¿¡æ¯è¡¨(IMM 5476)</a>ã€‚</li>\r\n<li>é«˜ä¸­æ¯•ä¸šè¯ä¹¦çš„å…¬è¯ä»¶ï¼Œä»¥åŠé«˜ä¸­ç™»è®°åŠžå…¬å®¤åŠ ç›–å…¬ç« çš„æˆç»©å•å…¬è¯ä»¶ã€‚<a href=\"http://eoivisa.com/academic/\">ç‚¹å‡»æŸ¥çœ‹æˆç»©å•çš„è¦æ±‚</a></li>\r\n<li>18å²æˆ–è€…19å²ä»¥ä¸‹çš„ç”³è¯·äººéœ€è¦æ¥è‡ªäºŽçˆ¶æ¯åŠåŠ æ‹¿å¤§ç›‘æŠ¤äººçš„<a href=\"http://eoivisa.com/custodianship-declaration/\">ç›‘æŠ¤å£°æ˜Ž</a>ã€‚</li>\r\n<li>è‹¥è®¡åˆ’åœ¨é­åŒ—å…‹çœå­¦ä¹ ï¼Œé€’äº¤ä¸€ä»½æœ‰æ•ˆçš„<a href=\"http://eoivisa.com/caq/\">é­åŒ—å…‹çœæŽ¥å—å‡½(CAQ)</a>ã€‚</li>\r\n<li>æœ¬äººæˆ·å£æœ¬å¤å°ä»¶ã€‚</li>\r\n<li>æ›¾ç»èŽ·å¾—çš„æ‰€æœ‰å¤§å­¦æˆ–å­¦é™¢å­¦åŽ†çš„å…¬è¯ä»¶ã€ä»¥åŠæ‰€æœ‰å°±è¯»ä¸­çš„è¯¾ç¨‹æˆç»©å•ã€‚å¦‚æžœä»æœªæ¯•ä¸šï¼Œè¯·æ³¨æ˜Žé¢„è®¡æ¯•ä¸šæ—¥æœŸä»¥åŠä½ å°†èŽ·å¾—ä½•ç§å­¦ä½ã€å­¦åŽ†æˆ–è¯ä¹¦ã€‚<a href=\"http://eoivisa.com/academic/\">ç‚¹å‡»æŸ¥çœ‹æˆç»©å•è¦æ±‚</a></li>\r\n<li>è‹¥ç”³è¯·äººå¹´æ»¡18å²åŠä»¥ä¸Šï¼Œè¯·é€’äº¤è­¦æ–¹<a href=\"http://eoivisa.com/about-police-clearance/\">æ— çŠ¯ç½ªè®°å½•è¯æ˜Ž</a>çš„å…¬è¯ä»¶ã€‚<br />å¹´æ»¡18å²åŽè‹¥åœ¨æŸå›½æˆ–åœ°åŒºæ›¾è¿žç»­å±…ä½å…­ä¸ªæœˆæˆ–ä»¥ä¸Šã€åˆ™å¿…é¡»ä»Žæ­¤å›½å®¶æˆ–åœ°åŒºèŽ·å–è­¦æ–¹æ— çŠ¯ç½ªè®°å½•è¯æ˜Žã€‚</li>\r\n<li>åæ˜ è‡³å°‘åäºŒä¸ªæœˆèµ„é‡‘ç´¯ç§¯åŽ†å²çš„è¯æ˜Žã€‚è¦æ±‚å¦‚ä¸‹ï¼š<br />æ—¥æœŸä¸ºæœ€è¿‘ä¸¤ä¸ªæœˆå†…çš„æ˜¾ç¤ºçŽ°æœ‰å¯ç”¨èµ„é‡‘çš„å­˜æ¬¾è¯æ˜ŽåŽŸä»¶ï¼›<br />å­˜å•åŽŸä»¶åŠ/æˆ–å­˜æŠ˜åŽŸä»¶ï¼›ä»¥åŠ<br />èµ„é‡‘æ¥æºçš„ä¹¦é¢è¯´æ˜Žã€‚<br />å…¶å®ƒå½¢å¼èµ„äº§çš„ç›¸å…³æ–‡ä»¶ã€å¦‚è‚¡å¸‚è´¦æˆ·ã€å•†ä¸šäº¤æ˜“æ–‡ä»¶åŠæˆ¿åœ°äº§äº¤æ˜“æ–‡ä»¶ï¼Œè™½ç„¶ä¸èƒ½æ›¿ä»£ä¸Šè¿°æ‰€éœ€æ–‡ä»¶ï¼Œä½†å¯ä»¥é™„äºŽç”³è¯·å†…ã€‚è‹¥æ— æ³•æä¾›æ–‡ä»¶è¯æ˜Žï¼Œç”³è¯·äººä¹Ÿå¯ä»¥æä¾›ä¸€ä»½ä¹¦é¢è¯´æ˜Žã€‚<a href=\"http://eoivisa.com/study-permit-funds-preparation/\">ç‚¹å‡»æŸ¥çœ‹å…·ä½“çš„è¦æ±‚</a></li>\r\n<li>ç”³è¯·äººçˆ¶æ¯çš„é›‡ä½£è¯æ˜Žã€‚è¦æ±‚å¦‚ä¸‹ï¼š<br />ç”³è¯·äººçˆ¶æ¯å„è‡ªçš„çŽ°ä»»é›‡ä¸»å‡ºå…·çš„é›‡ä½£è¯æ˜Žä¿¡åŽŸä»¶ï¼Œé¡»åŒ…å«çˆ¶æ¯å„è‡ªé›‡ä¸»çš„å…¨ç§°ã€åœ°å€å’Œç”µè¯ï¼›çˆ¶/æ¯åœ¨è¯¥å¤„å°±ä¸šå¹´é™ã€èŒåŠ¡ã€æœ€è¿‘ä¸¤å¹´çš„æ”¶å…¥ã€æœ‰æ— ä»»ä½•å¥–é‡‘å’Œé¢å¤–æ”¶å…¥ã€‚å¦‚æžœç”³è¯·äººç”±çˆ¶æ¯ä»¥å¤–çš„äººå£«èµ„åŠ©ï¼Œè¯·æŒ‰ç…§ä»¥ä¸Šè¦æ±‚æä¾›ç›¸åº”ä¿¡æ¯ï¼›ä»¥åŠ<br />åœ°æ–¹ç¨ŽåŠ¡æœºå…³å‡ºå…·çš„æœ€è¿‘åäºŒä¸ªæœˆä¸­çˆ¶/æ¯å„è‡ªä¸ªäººæ”¶å…¥æ‰€å¾—ç¨Žçš„ç¼´ç¨Žå•åŽŸä»¶ï¼ŒåŒ…å«ç¼´ç¨Žäººå§“ååŠå…¶åä¸‹æ‰€ç¼´çº³çš„é‡‘é¢ã€‚</li>\r\n<li>è‹¥ç”³è¯·äººçˆ¶æ¯ä¸€æ–¹æˆ–åŒæ–¹æ‹¥æœ‰æˆ–éƒ¨åˆ†æ‹¥æœ‰æŸå…¬å¸ï¼Œè¯·é€’äº¤å…¬å¸ç™»è®°è¯æ˜Žçš„å…¬è¯ä»¶ã€‚</li>\r\n<li>è‹¥ç”³è¯·äººåœ¨èŒï¼Œè¯·é€’äº¤é›‡ä½£è¯æ˜Žä¿¡åŽŸä»¶ï¼Œé¡»åŒ…å«é›‡ä¸»çš„å…¨ç§°ã€åœ°å€å’Œç”µè¯ï¼›ç”³è¯·äººåœ¨è¯¥å¤„å°±ä¸šå¹´é™ã€èŒåŠ¡ã€æœ€è¿‘ä¸¤å¹´çš„æ”¶å…¥ã€æœ‰æ— ä»»ä½•å¥–é‡‘å’Œé¢å¤–æ”¶å…¥ã€‚</li>\r\n<li>å¦‚æžœç”³è¯·äººæŽ¥å—æŸåŠ æ‹¿å¤§å­¦æ ¡æˆ–å…¶å®ƒç»„ç»‡çš„èµ„åŠ©ï¼Œè¯·é€’äº¤ï¼šè¯¦ç»†è¯´æ˜Žé¢„æœŸå­¦ä¹ æœŸé—´æ¯ä¸€å¹´ç”³è¯·äººå°†èŽ·å¾—èµ„åŠ©çš„æ–‡ä»¶åŽŸä»¶ã€‚</li>\r\n</ul>\r\n<h3>å‡ºå…¥å¢ƒæ¬¡æ•°å’Œæœ‰æ•ˆæœŸ</h3>\r\n<p>ã€€ã€€é€šå¸¸ç­¾å‘å¤šæ¬¡å¾€è¿”ç­¾è¯ï¼Œç­¾è¯æœ‰æ•ˆæœŸåˆ°é¢„è®¡å®Œæˆå­¦ä¸šçš„æ—¶é—´ã€‚èŽ·å¾—å­¦ä¹ ç­¾è¯åŽï¼Œå¯ç«‹åˆ»å‰å¾€åŠ æ‹¿å¤§ã€‚<br />ã€€ã€€ç¬¬ä¸€æ¬¡å…¥å¢ƒåŠ æ‹¿å¤§å°†ä¼šå‘æ”¾<a href=\"http://eoivisa.com/visas-and-permits/\">å­¦ä¹ è®¸å¯ï¼ˆå¤§ç­¾ï¼‰</a>ï¼Œæœ‰æ•ˆæœŸé€šå¸¸å’Œå­¦ç”Ÿç­¾è¯ç›¸åŒã€‚<br />ã€€ã€€æ–°ç”Ÿä»£çš„æœåŠ¡è´¹ç”¨ï¼š12000å…ƒäººæ°‘å¸ï¼ŒæœåŠ¡è´¹ä¸å«ç­¾è¯è´¹ã€ä½“æ£€è´¹ã€å…¬è¯è´¹ã€å¿«é€’è´¹ç­‰ç¬¬ä¸‰æ–¹è´¹ç”¨ã€‚<br />ã€€ã€€æœ‰æ‹’ç­¾åŽ†å²çš„å¯èƒ½ä¼šæ”¶å–é¢å¤–çš„æœåŠ¡è´¹ç”¨ã€‚<u></u></p>', '', '\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n', '', 'ç­¾è¯ ', 'product'),
(35, 3, 10, 2, '2017-12-13 19:53:45', 'æ›¼çœMITT2018ç§‹å­£', 'mitt-application', '', '', '', 1000, 0, '<div id=\"page-title\" style=\"user-select: text !important; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 12px; vertical-align: baseline; background: #ffffff; color: #333333; font-family: å¾®è½¯é›…é»‘; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;\">\r\n<h1 class=\"single-pagetitle\" style=\"user-select: text !important; margin: 0px 0px 2px; padding: 0px 0px 2px; border: 0px; outline: 0px; font-size: 1.883em !important; vertical-align: baseline; background: transparent; line-height: 1.2em; font-family: å¾®è½¯é›…é»‘; font-weight: normal; color: #333333;\">æœªæ¥3å¹´ç§»æ°‘é…é¢å…¬å¸ƒï¼šæ¯å¹´å¸æ”¶31-34ä¸‡ç§»æ°‘</h1>\r\n</div>\r\n<div id=\"post-9444\" class=\"post-9444 post type-post status-publish format-standard hentry category-policies\" style=\"user-select: text !important; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 12px; vertical-align: baseline; background: #ffffff; color: #333333; font-family: å¾®è½¯é›…é»‘; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;\">\r\n<div class=\"entry\" style=\"user-select: text !important; margin: 0px; padding: 10px 0px; border: 0px; outline: 0px; font-size: 12px; vertical-align: baseline; background: transparent; clear: both;\">\r\n<p style=\"user-select: text !important; margin: 0px 0px 5px; padding: 5px 0px; border: 0px; outline: 0px; font-size: 12px; vertical-align: baseline; background: transparent; text-align: left;\">ã€€ã€€ç§»æ°‘éƒ¨å‘å¸ƒäº†2018å¹´çš„ç§»æ°‘è®¡åˆ’ï¼Œä»ŠåŽ3å¹´ï¼ŒåŠ æ‹¿å¤§å°†æ€»å…±æŽ¥æ”¶è¿‘100ä¸‡ç§»æ°‘ã€‚å…¶ä¸­2018 å¹´å°†æŽ¥æ”¶31ä¸‡äººï¼Œ2019å¹´33ä¸‡äººï¼Œ2020å¹´34ä¸‡äººã€‚<br style=\"user-select: text !important;\" />ã€€ã€€2017å¹´åŠ æ‹¿å¤§çš„æŒ‡æ ‡æ˜¯30ä¸‡æ–°ç§»æ°‘ï¼Œä»Šå¤©å…¬å¸ƒçš„æ•°å­—è¾ƒåŽ»å¹´ç•¥æœ‰å¢žåŠ ï¼Œè€Œä¸”æœªæ¥ä¸‰å¹´æ¯å¹´éƒ½å°†ç•¥æœ‰å¢žåŠ ã€‚è¿™æ˜¯åŠ æ‹¿å¤§é¦–æ¬¡åŒæ—¶å…¬å¸ƒæœªæ¥3å¹´çš„ç§»æ°‘è®¡åˆ’ã€‚<br style=\"user-select: text !important;\" />ã€€ã€€æˆ‘ä»¬å·²ç»ä»Žä»Šå¹´<a style=\"user-select: text !important; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 12px; vertical-align: baseline; background: transparent; color: #d60707; text-decoration: none;\" href=\"http://eoivisa.com/ee/\">å¿«é€Ÿé€šé“</a>çš„å½¢åŠ¿çœ‹å‡ºæ¥ç§»æ°‘é…é¢å¢žåŠ ã€éš¾æ°‘äººæ•°å‡å°‘å¯¹ç”³è¯·äººå¸¦æ¥çš„å¥½å¤„å’Œä¾¿åˆ©ï¼Œæœªæ¥ä¸‰å¹´ç§»æ°‘é…é¢çš„å¢žåŠ å¯¹å¸Œæœ›ç§»æ°‘æ¥åŠ æ‹¿å¤§çš„ç”³è¯·äººæ¥è¯´æ— ç–‘æ˜¯ä¸ªå¥½æ¶ˆæ¯ã€‚åŒæ—¶æˆ‘ä»¬ä¹Ÿçœ‹åˆ°ï¼Œæ”¿åºœå¹¶æ²¡æœ‰åƒæŸäº›æœºæž„å®£ä¼ çš„é‚£æ ·æ‰“ç®—çªç„¶å¤§å¹…å¢žåŠ ç§»æ°‘é…é¢ï¼Œè€Œæ˜¯ä¿æŒä¸€å®šçš„å¹…åº¦ç¼“æ…¢å¢žåŠ ã€‚</p>\r\n</div>\r\n</div>\r\n<p>&nbsp;</p>', '', '\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n', '', 'åŠ¨æ€', 'product'),
(36, 2, 9, 2, '2017-12-07 21:27:55', 'çŸ­æœŸå­¦ä¹ å­¦ç”Ÿ', 'short-term-study', '', '', '', 3200, 0, '<h3>ç­¾è¯æ¸…å•</h3>\r\n<p>ã€€ã€€ä»¥ä¸‹æ¸…å•é€‚ç”¨äºŽåœ¨ä¸­å›½å¢ƒå†…é€’äº¤çš„ç”³è¯·ã€‚æ‰€æœ‰çš„ç”³è¯·ææ–™å¿…é¡»ç¿»è¯‘æˆè‹±æ–‡æˆ–æ³•æ–‡ã€‚<br />ã€€ã€€ç”³è¯·äººéœ€è¦æä¾›ï¼š</p>\r\n<ul>\r\n<li>å¡«å†™å®Œæ•´çš„<a href=\"http://eoivisa.com/imm5257/\">ä¸´æ—¶å±…æ°‘è®¿é—®ç­¾è¯ç”³è¯·è¡¨(IMM 5257)</a>ã€‚æ¯åç”³è¯·äººåŠæ¯åéšè¡Œå­å¥³å‡éœ€ä¸€ä»½ç”³è¯·è¡¨æ ¼ã€‚å¹´æ»¡18å‘¨å²åŠä»¥ä¸Šçš„éšè¡Œå­å¥³é¡»å¡«å†™å¹¶ç­¾ç½²å…¶å„è‡ªçš„ç”³è¯·è¡¨æ ¼ã€‚</li>\r\n<li>ç”³è¯·äººåŠæ¯ä½å¹´æ»¡18å‘¨å²åŠä»¥ä¸Šçš„éšè¡Œå®¶åº­æˆå‘˜å®Œæ•´å¡«å†™<a href=\"http://eoivisa.com/imm5645/\">å®¶åº­ä¿¡æ¯è¡¨(IMM 5645)</a>ï¼Œè¯·ä½¿ç”¨ä¸­è‹±æ–‡æˆ–ä¸­æ³•æ–‡å¡«å†™ã€‚</li>\r\n<li>ç”³è¯·äººåŠæ¯ä½éšè¡Œå®¶åº­æˆå‘˜æ¯äººé€’äº¤ä¸¤å¼ ç…§ç‰‡ã€‚æ‰€æœ‰ç…§ç‰‡éœ€ç¬¦åˆ<a href=\"http://eoivisa.com/photo-details/\">ç…§ç‰‡è¦æ±‚ç»†åˆ™</a>ä¸­çš„æ‰€æœ‰è¦æ±‚ã€‚æ¯å¼ ç…§ç‰‡åŽæ³¨æ˜Žæ­¤äººçš„å§“ååŠå‡ºç”Ÿæ—¥æœŸã€‚éœ€è¦æäº¤ç”Ÿç‰©è¯†åˆ«ä¿¡æ¯çš„ç”³è¯·äººæ— éœ€é€’äº¤ç…§ç‰‡ã€‚</li>\r\n<li>ç”³è¯·äººåŠæ¯ä½éšè¡Œå®¶åº­æˆå‘˜çš„æœ‰æ•ˆæŠ¤ç…§ã€‚æ¯æœ¬æŠ¤ç…§é¡»åŒ…å«é™¤æœ€åŽä¸€é¡µå¤–çš„è‡³å°‘ä¸€æ•´é¡µç©ºç™½é¡µã€ä¸”æŠ¤ç…§å¿…é¡»åœ¨è¡Œç¨‹å‰è‡³å°‘å…­ä¸ªæœˆå†…æœ‰æ•ˆã€‚</li>\r\n<li>ç”³è¯·äººæœ¬äººä¸­å›½èº«ä»½è¯å¤å°ä»¶(ç…§ç‰‡é¡µå³å¯)ã€‚</li>\r\n<li>æ­£ç¡®æ–¹å¼æ”¯ä»˜çš„è´¹ç”¨ï¼ŒåŒ…æ‹¬ç”³è¯·å—ç†è´¹å’Œç”Ÿç‰©è¯†åˆ«è´¹ï¼ˆè‹¥é€‚ç”¨ï¼‰</li>\r\n<li>å¦‚æœ‰ç¬¬ä¸‰æ–¹äººå£«å¸®åŠ©ä½ å‡†å¤‡æ­¤æ¬¡ç”³è¯·ï¼Œè¯·å¡«å†™<a href=\"http://eoivisa.com/imm5476/\">ä»£ç†äººä¿¡æ¯è¡¨(IMM 5476)</a>ã€‚</li>\r\n<li>18å‘¨å²ä»¥ä¸‹çš„ç”³è¯·äººï¼Œè¯·é€’äº¤æœªéšè¡Œçˆ¶/æ¯å‡ºå…·çš„åŒæ„å…¶æ—…è¡Œçš„çˆ¶æ¯åŒæ„å‡½ï¼Œæ­¤å‡½åº”åŒ…å«ç”³è¯·äººæ—…è¡Œæ—¥æœŸåŠå…¶çˆ¶æ¯è”ç³»æ–¹å¼ç­‰ä¿¡æ¯ã€‚</li>\r\n<li>ç”³è¯·äººåŠæ¯ä½å¹´æ»¡18å‘¨å²åŠä»¥ä¸Šçš„éšè¡Œå®¶åº­æˆå‘˜å®Œæ•´å¡«å†™<a href=\"http://eoivisa.com/education-and-employment/\">æ•™è‚²å’Œå°±ä¸šç»†èŠ‚è¡¨</a>ï¼Œè¯·ä½¿ç”¨ä¸­è‹±æ–‡æˆ–ä¸­æ³•æ–‡å¡«å†™ã€‚</li>\r\n<li>ç”³è¯·äººçˆ¶æ¯å„è‡ªçš„é›‡ä¸»ä½¿ç”¨å°æœ‰å…¬å¸æŠ¬å¤´ä¿¡ç¬ºå‡ºå…·çš„é›‡ä½£è¯æ˜Žä¿¡åŽŸä»¶ï¼Œæ³¨æ˜Žçˆ¶äº²æˆ–æ¯äº²çš„èŒåŠ¡ã€æ”¶å…¥å’Œèµ·è˜æ—¥æœŸã€‚</li>\r\n<li>æ˜¾ç¤ºè¿‡åŽ»è‹¥å¹²æœˆä¸­è´¢æ”¿åŽ†å²çš„é“¶è¡Œæ–‡ä»¶åŽŸä»¶ï¼ˆå¦‚å­˜æ¬¾è¯æ˜Žã€å­˜æŠ˜ç­‰ï¼‰ã€‚</li>\r\n<li>åœ¨ä¸­å›½çš„èµ„äº§è¯æ˜Žï¼ˆå¦‚æˆ¿äº§è¯åŽŸä»¶ã€è½¦è¾†ç™»è®°è¯åŽŸä»¶ç­‰ï¼‰ï¼›ä»¥åŠ</li>\r\n<li>å­¦ç”Ÿå›¢ç»„éœ€è¦é€’äº¤åŒ…å«é¡¹ç›®è¯¦æƒ…åŠå›¢ç»„æˆå‘˜åå•çš„é‚€è¯·ä¿¡ï¼Œå¹¶è¯´æ˜Žç›¸å…³è´¹ç”¨çš„æ”¯ä»˜è´£ä»»ã€‚</li>\r\n<li>åŠ æ‹¿å¤§å­¦æ ¡å½•å–/ç™»è®°åŠžå…¬å®¤çš„å½•å–é€šçŸ¥ä¹¦åŽŸä»¶åŠä¸€ä»½å¤å°ä»¶ï¼Œè¯´æ˜Žç”³è¯·äººéœ€ç¼´çº³çš„å‡†ç¡®å­¦è´¹é‡‘é¢ã€é¢„æœŸçš„å­¦ä¹ èµ·æ­¢æ—¶é—´ä»¥åŠç”³è¯·äººæœ€è¿Ÿçš„å¯æ³¨å†Œæ—¶é—´ã€‚</li>\r\n<li>ä½ æ›¾èŽ·å¾—çš„<a href=\"http://eoivisa.com/academic/\">æœ€é«˜å­¦åŽ†çš„å…¬è¯ä»¶</a>ã€‚</li>\r\n</ul>\r\n<h3>å‡ºå…¥å¢ƒæ¬¡æ•°å’Œæœ‰æ•ˆæœŸ</h3>\r\n<p>ã€€ã€€é€šå¸¸ç­¾å‘å¤šæ¬¡å¾€è¿”ç­¾è¯ï¼Œç­¾è¯æœ‰æ•ˆæœŸåˆ°æŠ¤ç…§åˆ°æœŸçš„å‰3ä¸ªæœˆï¼Œæœ€é•¿å¯è¿‘10å¹´ã€‚<br />ã€€ã€€æ¯æ¬¡å…¥å¢ƒé€šå¸¸å¯åœç•™åŠå¹´ã€‚</p>\r\n<p>ã€€ã€€æ–°ç”Ÿä»£çš„æœåŠ¡è´¹ç”¨ï¼š3200å…ƒäººæ°‘å¸ã€‚<br />ã€€ã€€æœåŠ¡è´¹ä¸å«ä½“æ£€è´¹ã€å…¬è¯è´¹ã€å¿«é€’è´¹ç­‰ç¬¬ä¸‰æ–¹è´¹ç”¨ã€‚<u></u></p>', '', '\r\n\r\n\r\n\r\n', '', '', 'product'),
(37, 2, 4, 2, '2017-12-07 21:28:19', 'æŽ¢äº²æˆ–è®¿å‹', 'visitor-visa-application', '', '', '', 3200, 0, '<h3 style=\"user-select: text !important; margin: 15px 0px 2px; padding: 0px 0px 2px; border: 0px; outline: 0px; font-size: 1.5em !important; vertical-align: baseline; background: #ffffff; line-height: 1.2em; font-family: å¾®è½¯é›…é»‘; font-weight: normal; color: #333333; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;\">è¦ç‚¹</h3>\r\n<p style=\"user-select: text !important; margin: 0px 0px 5px; padding: 5px 0px; border: 0px; outline: 0px; font-size: 12px; vertical-align: baseline; background: #ffffff; text-align: left; color: #333333; font-family: å¾®è½¯é›…é»‘; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;\">ã€€ã€€æŽ¢äº²ç­¾è¯çœ‹åŒæ–¹çš„æ¡ä»¶ã€‚<br style=\"user-select: text !important;\" />ã€€ã€€å¦‚æžœé‚€è¯·æ–¹å¦‚æžœæ˜¯å­¦ç”Ÿï¼Œåˆ™çœ‹ä¸­é‚€è¯·äººçš„å­¦ä¹ æˆç»©ã€‚å¦‚æžœé‚€è¯·æ–¹åœ¨åŠ æ‹¿å¤§å·¥ä½œæˆ–å·²ç»ç§»æ°‘ï¼Œåˆ™çœ‹é‚€è¯·æ–¹çš„æœˆæ”¶å…¥ã€å®¶åº­çŠ¶å†µç­‰ã€‚<br style=\"user-select: text !important;\" />ã€€ã€€åŒæ—¶ç”³è¯·äººçš„æ¡ä»¶ä¹Ÿå¾ˆé‡è¦ï¼Œç”³è¯·äººåœ¨ä¸­å›½æ˜¯å¦æœ‰è¶³å¤Ÿçº¦æŸåŠ›ã€æ—…è¡Œè®°å½•ç­‰éƒ½æ˜¯ç­¾è¯å®˜ç€é‡è€ƒè™‘çš„å› ç´ ã€‚</p>\r\n<h3 style=\"user-select: text !important; margin: 15px 0px 2px; padding: 0px 0px 2px; border: 0px; outline: 0px; font-size: 1.5em !important; vertical-align: baseline; background: #ffffff; line-height: 1.2em; font-family: å¾®è½¯é›…é»‘; font-weight: normal; color: #333333; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;\">ç­¾è¯æ¸…å•</h3>\r\n<p><span style=\"color: #333333; font-family: å¾®è½¯é›…é»‘; font-size: 12px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;\">ã€€ã€€ä»¥ä¸‹æ¸…å•é€‚ç”¨äºŽåœ¨ä¸­å›½å¢ƒå†…é€’äº¤çš„ç”³è¯·ã€‚æ‰€æœ‰çš„ç”³è¯·ææ–™å¿…é¡»ç¿»è¯‘æˆè‹±æ–‡æˆ–æ³•æ–‡ã€‚</span><br style=\"user-select: text !important; color: #333333; font-family: å¾®è½¯é›…é»‘; font-size: 12px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-style: initial; text-decoration-color: initial;\" /><span style=\"color: #333333; font-family: å¾®è½¯é›…é»‘; font-size: 12px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;\">ã€€ã€€ç”³è¯·äººéœ€è¦æä¾›ï¼š</span></p>\r\n<ul style=\"user-select: text !important; margin: 0px 0px 2px; padding: 0px; border: 0px; outline: 0px; font-size: 12px; vertical-align: baseline; background: #ffffff; list-style: disc; color: #333333; font-family: å¾®è½¯é›…é»‘; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;\">\r\n<li style=\"user-select: text !important; margin: 0px 0px 0px 3em; padding: 0px; border: 0px; outline: 0px; font-size: 12px; vertical-align: baseline; background: transparent;\">å¡«å†™å®Œæ•´çš„<a style=\"user-select: text !important; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 12px; vertical-align: baseline; background: transparent; color: #d60707; text-decoration: none;\" href=\"http://eoivisa.com/imm5257/\">ä¸´æ—¶å±…æ°‘è®¿é—®ç­¾è¯ç”³è¯·è¡¨(IMM 5257)</a>ã€‚æ¯åç”³è¯·äººåŠæ¯åéšè¡Œå­å¥³å‡éœ€ä¸€ä»½ç”³è¯·è¡¨æ ¼ã€‚å¹´æ»¡18å‘¨å²åŠä»¥ä¸Šçš„éšè¡Œå­å¥³é¡»å¡«å†™å¹¶ç­¾ç½²å…¶å„è‡ªçš„ç”³è¯·è¡¨æ ¼ã€‚</li>\r\n<li style=\"user-select: text !important; margin: 0px 0px 0px 3em; padding: 0px; border: 0px; outline: 0px; font-size: 12px; vertical-align: baseline; background: transparent;\">ç”³è¯·äººåŠæ¯ä½å¹´æ»¡18å‘¨å²åŠä»¥ä¸Šçš„éšè¡Œå®¶åº­æˆå‘˜å®Œæ•´å¡«å†™<a style=\"user-select: text !important; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 12px; vertical-align: baseline; background: transparent; color: #d60707; text-decoration: none;\" href=\"http://eoivisa.com/imm5645/\">å®¶åº­ä¿¡æ¯è¡¨(IMM 5645)</a>ï¼Œè¯·ä½¿ç”¨ä¸­è‹±æ–‡æˆ–ä¸­æ³•æ–‡å¡«å†™ã€‚</li>\r\n<li style=\"user-select: text !important; margin: 0px 0px 0px 3em; padding: 0px; border: 0px; outline: 0px; font-size: 12px; vertical-align: baseline; background: transparent;\">ç”³è¯·äººåŠæ¯ä½éšè¡Œå®¶åº­æˆå‘˜æ¯äººé€’äº¤ä¸¤å¼ ç…§ç‰‡ã€‚æ‰€æœ‰ç…§ç‰‡éœ€ç¬¦åˆ<a style=\"user-select: text !important; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 12px; vertical-align: baseline; background: transparent; color: #d60707; text-decoration: none;\" href=\"http://eoivisa.com/photo-details/\">ç…§ç‰‡è¦æ±‚ç»†åˆ™</a>ä¸­çš„æ‰€æœ‰è¦æ±‚ã€‚æ¯å¼ ç…§ç‰‡åŽæ³¨æ˜Žæ­¤äººçš„å§“ååŠå‡ºç”Ÿæ—¥æœŸã€‚éœ€è¦æäº¤ç”Ÿç‰©è¯†åˆ«ä¿¡æ¯çš„ç”³è¯·äººæ— éœ€é€’äº¤ç…§ç‰‡ã€‚</li>\r\n<li style=\"user-select: text !important; margin: 0px 0px 0px 3em; padding: 0px; border: 0px; outline: 0px; font-size: 12px; vertical-align: baseline; background: transparent;\">ç”³è¯·äººåŠæ¯ä½éšè¡Œå®¶åº­æˆå‘˜çš„æœ‰æ•ˆæŠ¤ç…§ã€‚æ¯æœ¬æŠ¤ç…§é¡»åŒ…å«é™¤æœ€åŽä¸€é¡µå¤–çš„è‡³å°‘ä¸€æ•´é¡µç©ºç™½é¡µã€ä¸”æŠ¤ç…§å¿…é¡»åœ¨è¡Œç¨‹å‰è‡³å°‘å…­ä¸ªæœˆå†…æœ‰æ•ˆã€‚</li>\r\n<li style=\"user-select: text !important; margin: 0px 0px 0px 3em; padding: 0px; border: 0px; outline: 0px; font-size: 12px; vertical-align: baseline; background: transparent;\">ç”³è¯·äººæœ¬äººä¸­å›½èº«ä»½è¯å¤å°ä»¶(ç…§ç‰‡é¡µå³å¯)ã€‚</li>\r\n<li style=\"user-select: text !important; margin: 0px 0px 0px 3em; padding: 0px; border: 0px; outline: 0px; font-size: 12px; vertical-align: baseline; background: transparent;\">æ­£ç¡®æ–¹å¼æ”¯ä»˜çš„è´¹ç”¨ï¼ŒåŒ…æ‹¬ç”³è¯·å—ç†è´¹å’Œç”Ÿç‰©è¯†åˆ«è´¹ï¼ˆè‹¥é€‚ç”¨ï¼‰</li>\r\n<li style=\"user-select: text !important; margin: 0px 0px 0px 3em; padding: 0px; border: 0px; outline: 0px; font-size: 12px; vertical-align: baseline; background: transparent;\">å¦‚æœ‰ç¬¬ä¸‰æ–¹äººå£«å¸®åŠ©ä½ å‡†å¤‡æ­¤æ¬¡ç”³è¯·ï¼Œè¯·å¡«å†™<a style=\"user-select: text !important; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 12px; vertical-align: baseline; background: transparent; color: #d60707; text-decoration: none;\" href=\"http://eoivisa.com/imm5476/\">ä»£ç†äººä¿¡æ¯è¡¨(IMM 5476)</a>ã€‚</li>\r\n<li style=\"user-select: text !important; margin: 0px 0px 0px 3em; padding: 0px; border: 0px; outline: 0px; font-size: 12px; vertical-align: baseline; background: transparent;\">18å‘¨å²ä»¥ä¸‹çš„ç”³è¯·äººï¼Œè¯·é€’äº¤æœªéšè¡Œçˆ¶/æ¯å‡ºå…·çš„åŒæ„å…¶æ—…è¡Œçš„çˆ¶æ¯åŒæ„å‡½ï¼Œæ­¤å‡½åº”åŒ…å«ç”³è¯·äººæ—…è¡Œæ—¥æœŸåŠå…¶çˆ¶æ¯è”ç³»æ–¹å¼ç­‰ä¿¡æ¯ã€‚</li>\r\n<li style=\"user-select: text !important; margin: 0px 0px 0px 3em; padding: 0px; border: 0px; outline: 0px; font-size: 12px; vertical-align: baseline; background: transparent;\">ç”³è¯·äººåŠæ¯ä½å¹´æ»¡18å‘¨å²åŠä»¥ä¸Šçš„éšè¡Œå®¶åº­æˆå‘˜å®Œæ•´å¡«å†™<a style=\"user-select: text !important; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 12px; vertical-align: baseline; background: transparent; color: #d60707; text-decoration: none;\" href=\"http://eoivisa.com/education-and-employment/\">æ•™è‚²å’Œå°±ä¸šç»†èŠ‚è¡¨</a>ï¼Œè¯·ä½¿ç”¨ä¸­è‹±æ–‡æˆ–ä¸­æ³•æ–‡å¡«å†™ã€‚</li>\r\n<li style=\"user-select: text !important; margin: 0px 0px 0px 3em; padding: 0px; border: 0px; outline: 0px; font-size: 12px; vertical-align: baseline; background: transparent;\">å¦‚æžœåœ¨èŒï¼Œä½¿ç”¨å°æœ‰å…¬å¸æŠ¬å¤´ä¿¡ç¬ºã€ç”±é›‡ä¸»ç­¾å­—çš„å‡†å‡ä¿¡åŽŸä»¶ï¼Œå¹¶åŒ…å«ä»¥ä¸‹ä¿¡æ¯ï¼š<br style=\"user-select: text !important;\" />ã€€ã€€ç”³è¯·äººçš„å§“åã€èŒä½ã€ç›®å‰æ”¶å…¥åŠèµ·è˜æ—¥æœŸï¼›ä»¥åŠ<br style=\"user-select: text !important;\" />ã€€ã€€ç”¨ä¸­æ–‡æ³¨æ˜Žçš„é›‡ä¸»å…¨ç§°å’Œåœ°å€ï¼Œä»¥åŠç”µè¯å’Œä¼ çœŸå·ç ã€‚</li>\r\n<li style=\"user-select: text !important; margin: 0px 0px 0px 3em; padding: 0px; border: 0px; outline: 0px; font-size: 12px; vertical-align: baseline; background: transparent;\">å¦‚æžœé€€ä¼‘ï¼Œè¯´æ˜Žç”³è¯·äººå…»è€é‡‘çš„é€€ä¼‘è¯æ˜Žã€‚</li>\r\n<li style=\"user-select: text !important; margin: 0px 0px 0px 3em; padding: 0px; border: 0px; outline: 0px; font-size: 12px; vertical-align: baseline; background: transparent;\">å¦‚æžœç”³è¯·äººä¸ºå­¦ç”Ÿä¸”äºŽéžå­¦æ ¡å‡æœŸæœŸé—´æ—…è¡Œï¼Œä¸€ä»½å­¦æ ¡å‡ºå…·çš„ç¡®è®¤å…¶åœ¨è¯»åŠè‰¯å¥½è¡¨çŽ°ã€å¹¶åŒæ„å…¶ç¼ºå‹¤çš„ä¿¡å‡½åŽŸä»¶ã€‚</li>\r\n<li style=\"user-select: text !important; margin: 0px 0px 0px 3em; padding: 0px; border: 0px; outline: 0px; font-size: 12px; vertical-align: baseline; background: transparent;\">æ˜¾ç¤ºè¿‡åŽ»è‹¥å¹²æœˆä¸­è´¢æ”¿åŽ†å²çš„é“¶è¡Œæ–‡ä»¶åŽŸä»¶(å¦‚å­˜æ¬¾è¯æ˜Žã€å­˜æŠ˜ç­‰)ã€‚</li>\r\n<li style=\"user-select: text !important; margin: 0px 0px 0px 3em; padding: 0px; border: 0px; outline: 0px; font-size: 12px; vertical-align: baseline; background: transparent;\">åœ¨ä¸­å›½çš„èµ„äº§è¯æ˜Ž(å¦‚æˆ¿äº§è¯åŽŸä»¶ã€è½¦è¾†ç™»è®°è¯åŽŸä»¶ç­‰)ï¼›ä»¥åŠ</li>\r\n<li style=\"user-select: text !important; margin: 0px 0px 0px 3em; padding: 0px; border: 0px; outline: 0px; font-size: 12px; vertical-align: baseline; background: transparent;\">ä¸ŽåŠ æ‹¿å¤§é‚€è¯·äººå…³ç³»çš„è¯æ˜Ž(å¦‚å‡ºç”Ÿè¯å¤å°ä»¶ã€ç»“å©šè¯å¤å°ä»¶ã€ä¿¡å‡½å¾€æ¥è¯æ˜Žçš„å¤å°ä»¶ç­‰)ã€‚</li>\r\n</ul>\r\n<p style=\"user-select: text !important; margin: 0px 0px 5px; padding: 5px 0px; border: 0px; outline: 0px; font-size: 12px; vertical-align: baseline; background: #ffffff; text-align: left; color: #333333; font-family: å¾®è½¯é›…é»‘; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;\">ã€€ã€€é‚€è¯·äººéœ€è¦æä¾›ï¼š</p>\r\n<ul style=\"user-select: text !important; margin: 0px 0px 2px; padding: 0px; border: 0px; outline: 0px; font-size: 12px; vertical-align: baseline; background: #ffffff; list-style: disc; color: #333333; font-family: å¾®è½¯é›…é»‘; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;\">\r\n<li style=\"user-select: text !important; margin: 0px 0px 0px 3em; padding: 0px; border: 0px; outline: 0px; font-size: 12px; vertical-align: baseline; background: transparent;\">è¯´æ˜Žè®¿é—®ç›®çš„åŠè®¿é—®æœŸé™çš„<a style=\"user-select: text !important; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 12px; vertical-align: baseline; background: transparent; color: #d60707; text-decoration: none;\" href=\"http://eoivisa.com/invitation-letter-to-parents/\">é‚€è¯·ä¿¡</a>ã€‚</li>\r\n<li style=\"user-select: text !important; margin: 0px 0px 0px 3em; padding: 0px; border: 0px; outline: 0px; font-size: 12px; vertical-align: baseline; background: transparent;\">é‚€è¯·äººå±…æ‰€å†…çš„äººå‘˜è¯¦å•ã€‚</li>\r\n<li style=\"user-select: text !important; margin: 0px 0px 0px 3em; padding: 0px; border: 0px; outline: 0px; font-size: 12px; vertical-align: baseline; background: transparent;\">é‚€è¯·äººçš„å…¬æ°‘æˆ–ç§»æ°‘èº«ä»½æ–‡ä»¶çš„å¤å°ä»¶ï¼ˆå¦‚<a style=\"user-select: text !important; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 12px; vertical-align: baseline; background: transparent; color: #d60707; text-decoration: none;\" href=\"http://eoivisa.com/permanent-resident-card/\">æ°¸ä¹…å±…æ°‘å¡</a>&ndash;è¯·å¤å°åŒé¢ã€<a style=\"user-select: text !important; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 12px; vertical-align: baseline; background: transparent; color: #d60707; text-decoration: none;\" href=\"http://eoivisa.com/visas-and-permits/\">å­¦ä¹ è®¸å¯</a>ã€<a style=\"user-select: text !important; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 12px; vertical-align: baseline; background: transparent; color: #d60707; text-decoration: none;\" href=\"http://eoivisa.com/visas-and-permits/\">å·¥ä½œè®¸å¯</a>ç­‰ï¼‰ã€‚</li>\r\n<li style=\"user-select: text !important; margin: 0px 0px 0px 3em; padding: 0px; border: 0px; outline: 0px; font-size: 12px; vertical-align: baseline; background: transparent;\">é‚€è¯·äººçš„æ”¶å…¥åŠè´¢æ”¿çŠ¶å†µè¯æ˜Žï¼Œé¡»ä¸ºæ¥è‡ªäºŽåŠ æ‹¿å¤§çš„ç‹¬ç«‹ç¬¬ä¸‰æ–¹æ€§è´¨çš„æ–‡ä»¶ã€å¯é ä¸”æ˜“æ ¸å®žã€‚ä¾‹å¦‚ä½†ä¸å±€é™äºŽï¼šåŠ æ‹¿å¤§ç¨ŽåŠ¡æ€»å±€å‡ºå…·çš„ç¨Žå•(NOA)ï¼Œæ˜¾ç¤ºæ”¶å…¥æƒ…å†µçš„é›‡ä½£è¯æ˜Žä¿¡ï¼Œå·¥èµ„å•ï¼Œé“¶è¡Œå¯¹è´¦å•ï¼Œæ‰§ä¸šä¸“ä¸šäººå£«å‡ºå…·çš„è–ªé…¬æ”¯ä»˜æŠ¥è¡¨æˆ–è´¢åŠ¡æŠ¥è¡¨ã€‚å¦‚æžœé‚€è¯·äººåœ¨åŠ æ‹¿å¤§ä¸Šå­¦ï¼Œè¯·æä¾›æ ¡æ–¹å‡ºå…·çš„æŽ¥å—å‡½ã€‚</li>\r\n</ul>\r\n<h3 style=\"user-select: text !important; margin: 15px 0px 2px; padding: 0px 0px 2px; border: 0px; outline: 0px; font-size: 1.5em !important; vertical-align: baseline; background: #ffffff; line-height: 1.2em; font-family: å¾®è½¯é›…é»‘; font-weight: normal; color: #333333; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;\">å‡ºå…¥å¢ƒæ¬¡æ•°å’Œæœ‰æ•ˆæœŸ</h3>\r\n<p style=\"user-select: text !important; margin: 0px 0px 5px; padding: 5px 0px; border: 0px; outline: 0px; font-size: 12px; vertical-align: baseline; background: #ffffff; text-align: left; color: #333333; font-family: å¾®è½¯é›…é»‘; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;\">ã€€ã€€é€šå¸¸ç­¾å‘å¤šæ¬¡å¾€è¿”ç­¾è¯ï¼Œç­¾è¯æœ‰æ•ˆæœŸåˆ°æŠ¤ç…§åˆ°æœŸçš„å‰3ä¸ªæœˆï¼Œæœ€é•¿å¯è¿‘10å¹´ã€‚<br style=\"user-select: text !important;\" />ã€€ã€€æ¯æ¬¡å…¥å¢ƒé€šå¸¸å¯åœç•™åŠå¹´ã€‚</p>\r\n<p><span style=\"color: #333333; font-family: å¾®è½¯é›…é»‘; font-size: 12px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;\">ã€€ã€€æ–°ç”Ÿä»£çš„æœåŠ¡è´¹ç”¨ï¼š3200å…ƒäººæ°‘å¸ï¼Œæ¯å¤šä¸€åç”³è¯·äººåŠ æ”¶800å…ƒäººæ°‘å¸ï¼Œæœ‰æ‹’ç­¾å²çš„ç”³è¯·äººå¯èƒ½è¿˜ä¼šæ”¶å–é¢å¤–çš„è´¹ç”¨ã€‚</span><br style=\"user-select: text !important; color: #333333; font-family: å¾®è½¯é›…é»‘; font-size: 12px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-style: initial; text-decoration-color: initial;\" /><span style=\"color: #333333; font-family: å¾®è½¯é›…é»‘; font-size: 12px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;\">ã€€ã€€æœåŠ¡è´¹ä¸å«ä½“æ£€è´¹ã€å…¬è¯è´¹ã€å¿«é€’è´¹ç­‰ç¬¬ä¸‰æ–¹è´¹ç”¨ã€‚</span><u></u></p>', '', '\r\n\r\n', '', '', 'product'),
(38, 2, 3, 2, '2017-12-08 13:18:51', 'åŸºäºŽLMIAå·¥ç­¾', 'lmia-work-permit', '', '', '', 5000, 0, '<h3>é€’äº¤æ–¹å¼</h3>\r\n<p>ã€€ã€€å·¥ä½œç­¾è¯å¯ä»¥é€šè¿‡ç­¾è¯ä¸­å¿ƒå½“é¢æˆ–é‚®å¯„é€’äº¤ï¼Œä¹Ÿå¯ä»¥ç½‘ç»œç”³è¯·ã€‚å¦‚æžœé€šè¿‡ç½‘ç»œç”³è¯·ï¼Œæ¸…å•ä¼šå’Œä¸‹è¡¨ç•¥æœ‰ä¸åŒã€‚</p>\r\n<h3>å‡ºå…¥å¢ƒæ¬¡æ•°å’Œæœ‰æ•ˆæœŸ</h3>\r\n<p>ã€€ã€€é€šå¸¸ç­¾å‘å¤šæ¬¡å¾€è¿”ç­¾è¯ï¼Œç­¾è¯æœ‰æ•ˆæœŸåˆ°é¢„è®¡å®Œæˆå·¥ä½œçš„æ—¶é—´ã€‚èŽ·å¾—å·¥ä½œç­¾è¯åŽï¼Œå¯ç«‹åˆ»å‰å¾€åŠ æ‹¿å¤§ã€‚<br />ã€€ã€€ç¬¬ä¸€æ¬¡å…¥å¢ƒåŠ æ‹¿å¤§å°†ä¼šå‘æ”¾å·¥ä½œè®¸å¯ï¼ˆå¤§ç­¾ï¼‰ï¼Œæœ‰æ•ˆæœŸé€šå¸¸å’Œå·¥ä½œç­¾è¯ç›¸åŒã€‚å‚è€ƒ<a href=\"http://eoivisa.com/visas-and-permits/\">å¤§ç­¾å’Œå°ç­¾</a>ã€‚</p>\r\n<h3>ç­¾è¯æ¸…å•</h3>\r\n<ul>\r\n<li>å¡«å†™å®Œæ•´çš„<a href=\"http://eoivisa.com/imm1295/\">å·¥ä½œè®¸å¯ç”³è¯·è¡¨(IMM 1295)</a>ã€‚å¦‚æžœä½ çš„é…å¶æˆ–æ™®é€šæ³•ä¼´ä¾£ã€åŠ/æˆ–å­å¥³è®¡åˆ’ä¸Žä½ åŒè¡Œï¼Œä»–ä»¬ä¹Ÿéœ€ä½¿ç”¨æ­£ç¡®çš„ç”³è¯·è¡¨æ ¼å®Œæ•´å¡«å†™å„è‡ªçš„ç”³è¯·ä¿¡æ¯ã€‚</li>\r\n<li>ç”³è¯·äººå®Œæ•´å¡«å†™<a href=\"http://eoivisa.com/family-education-employment/\">å®¶å±žè¡¨å’Œæ•™è‚²åŠå°±ä¸šç»†èŠ‚è¡¨</a>ï¼Œè¯·ä½¿ç”¨ä¸­è‹±æ–‡æˆ–ä¸­æ³•æ–‡å¡«å†™ã€‚</li>\r\n<li>ä¸¤å¼ ç…§ç‰‡ã€‚æ‰€æœ‰ç…§ç‰‡éœ€ç¬¦åˆ<a href=\"http://eoivisa.com/photo-details/\">ç…§ç‰‡è¦æ±‚ç»†åˆ™</a>ä¸­çš„æ‰€æœ‰è¦æ±‚ã€‚æ¯å¼ ç…§ç‰‡åŽæ³¨æ˜Žæ­¤äººçš„å§“ååŠå‡ºç”Ÿæ—¥æœŸã€‚</li>\r\n<li>æœ¬äººæœ‰æ•ˆæŠ¤ç…§ã€‚æŠ¤ç…§é¡»åŒ…å«é™¤æœ€åŽä¸€é¡µå¤–çš„è‡³å°‘ä¸€æ•´é¡µç©ºç™½é¡µã€ä¸”å¿…é¡»åœ¨è¡Œç¨‹å‰è‡³å°‘å…­ä¸ªæœˆå†…æœ‰æ•ˆã€‚</li>\r\n<li><a href=\"http://eoivisa.com/id-card/\">æœ¬äººä¸­å›½èº«ä»½è¯å¤å°ä»¶(æ­£åé¢)</a>ã€‚</li>\r\n<li>å¦‚æœ‰ç¬¬ä¸‰æ–¹äººå£«å¸®åŠ©ä½ å‡†å¤‡æ­¤æ¬¡ç”³è¯·ï¼Œè¯·å¡«å†™<a href=\"http://eoivisa.com/imm5476/\">ä»£ç†äººä¿¡æ¯è¡¨IMM 5476</a>ã€‚</li>\r\n<li><a href=\"http://eoivisa.com/police-certificate/\">æ— çŠ¯ç½ªè®°å½•è¯æ˜Ž</a>çš„å…¬è¯ä»¶ã€‚</li>\r\n<li>ç”³è¯·äººå’ŒåŠ æ–¹é›‡ä¸»ç­¾ç½²çš„é›‡ä½£åˆåŒå‰¯æœ¬ï¼Œæˆ–ä¸€ä»½åŒ…å«æœªæ¥å·¥ä½œèŒè´£è¯¦è¿°åŠé›‡ä½£æœŸé™çš„å·¥ä½œæœºä¼šå‡½åŽŸä»¶ã€‚</li>\r\n<li>åŠ æ‹¿å¤§äººåŠ›èµ„æºå’Œç¤¾ä¼šå‘å±•éƒ¨æä¾›çš„<a href=\"http://eoivisa.com/lmia/\">LMIA</a>ï¼Œæˆ–è¯´æ˜Žå› ä½•ç§æƒ…å†µå¯ä»¥è±å…<a href=\"http://eoivisa.com/lmia/\">LMIA</a>çš„æ–‡ä»¶ï¼Œæˆ–è¯´æ˜Žæ­¤èŒä¸šå…è®¸<a href=\"http://eoivisa.com/lmia/\">LMIA</a>å’Œå·¥ä½œè®¸å¯åŒæ—¶ç”³è¯·çš„æ–‡ä»¶ã€‚</li>\r\n<li>å¦‚æžœåŠ æ‹¿å¤§äººåŠ›èµ„æºå’Œç¤¾ä¼šå‘å±•éƒ¨æä¾›çš„<a href=\"http://eoivisa.com/lmia/\">LMIA</a>ä¸­æ³¨æ˜Žéœ€è¦å…·å¤‡åŠ æ‹¿å¤§æŸä¸“ä¸šç¤¾å›¢çš„æˆå‘˜èµ„è´¨ï¼Œè¯·æä¾›æœ‰å…³æ­¤èµ„è´¨çš„è¯æ˜Žã€‚</li>\r\n<li>åœ¨ä¸­å›½çš„çŽ°ä»»é›‡ä¸»å‡ºå…·çš„<a href=\"http://eoivisa.com/letter-granting-leave-of-absence/\">å‡†å‡é›‡ä½£ä¿¡</a>åŽŸä»¶ï¼Œå¹¶åŒ…å«ä»¥ä¸‹ä¿¡æ¯ï¼šç”³è¯·äººçš„å§“åã€èŒåŠ¡å’Œç›®å‰æ”¶å…¥ã€‚æ­¤ä¿¡å¿…é¡»åŒ…å«ç”¨ä¸­æ–‡æ³¨æ˜Žçš„é›‡ä¸»å…¨ç§°ã€åœ°å€ï¼Œä»¥åŠç”µè¯å’Œä¼ çœŸå·ç ã€‚</li>\r\n<li>ä¸Žåœ¨åŠ å·¥ä½œç›¸å…³çš„æ‰€æœ‰èŒä¸šå’Œä¸“ä¸šè¯ä¹¦åŽŸä»¶ï¼ˆå¦‚èŒä¸šèµ„æ ¼è¯ä¹¦ï¼‰ã€‚</li>\r\n<li>å¦‚åœ¨é­åŒ—å…‹çœå·¥ä½œï¼Œè¯·é€’äº¤æœ‰æ•ˆçš„<a href=\"http://eoivisa.com/caq/\">é­åŒ—å…‹çœæŽ¥æ”¶å‡½(CAQ)</a>ã€‚</li>\r\n</ul>\r\n<h3>è´¹ç”¨</h3>\r\n<p>ã€€ã€€åŠ æ‹¿å¤§æ”¿åºœæ”¶å–0çš„è´¹ç”¨ï¼Œå¼€æ”¾å¼å·¥ç­¾é¢å¤–æ”¶å–100åŠ å¸çš„è´¹ç”¨ï¼ˆè‹¥æ‰¹å‡†ï¼‰ã€‚<br />ã€€ã€€æ–°ç”Ÿä»£æ”¶å–5000å…ƒäººæ°‘å¸çš„æœåŠ¡è´¹ç”¨ï¼ŒåŒ…æ‹¬æ–‡ä¹¦æ•´ç†å’Œææ–™ç¿»è¯‘ï¼Œä½†ä¸åŒ…æ‹¬å…¬è¯è´¹ã€ç­¾è¯è´¹ã€ä½“æ£€è´¹ã€ç­¾è¯ä¸­å¿ƒä»£ä¼ é€’è´¹ç”¨ç­‰ç¬¬ä¸‰æ–¹è´¹ç”¨ã€‚</p>\r\n<p>&nbsp;</p>', '', '', '', '', 'product'),
(39, 2, 3, 2, '2017-12-08 13:21:14', 'è±å…LMIAçš„å°é—­å¼å·¥ç­¾', 'lmia-exempt-work-permit', '', '', '', 5000, 0, '<h3><strong>è±å…LMIAçš„å°é—­å¼å·¥ç­¾</strong></h3>\r\n<p><br />ã€€ã€€ä¸€äº›æƒ…å†µå¯ä»¥è±å…LMIAåŠžç†å°é—­å¼å·¥ç­¾ï¼Œå¸¸è§çš„æœ‰ï¼š<br />ã€€ã€€è®¿é—®å­¦è€…ï¼Œ<br />ã€€ã€€è·¨å›½å…¬å¸å†…éƒ¨è°ƒåŠ¨ï¼Œ<br />ã€€ã€€å®—æ•™å·¥ä½œï¼Œæˆ–è€…<br />ã€€ã€€å·²ç»èŽ·å¾—çœæåï¼Œè¿™ä¸ªç±»åˆ«é€šå¸¸è¿˜éœ€è¦æŒæœ‰çœç§»æ°‘åŽ…ä»‹ç»ä¿¡ã€‚</p>\r\n<p>&nbsp;</p>', '', '', '', '', 'product');
INSERT INTO `products` (`product_id`, `p_cat_id`, `cat_id`, `manufacturer_id`, `date`, `product_title`, `product_url`, `product_img1`, `product_img2`, `product_img3`, `product_price`, `product_psp_price`, `product_desc`, `product_features`, `product_video`, `product_keywords`, `product_label`, `status`) VALUES
(40, 2, 3, 2, '2017-12-08 13:41:42', 'å¼€æ”¾å¼å·¥ç­¾', 'open-work-permit', '', '', '', 1000, 0, '<div id=\"page-title\">\r\n<h1>å¼€æ”¾å¼å·¥ç­¾ Open Work Permit</h1>\r\n</div>\r\n<div id=\"post-495\">\r\n<div>\r\n<p>ã€€ã€€å’Œ<a href=\"http://eoivisa.com/closed-work-permit/\">å°é—­å¼å·¥ç­¾</a>ç›¸å¯¹ï¼Œå¼€æ”¾å¼å·¥ä½œç­¾è¯æ— éœ€é›‡ä¸»å’ŒLMOå°±å¯ä»¥ç”³è¯·ï¼Œæ‹¿åˆ°å·¥ç­¾åŽå¯ä»¥ä¸ºä»»ä½•ä¸€å®¶é›‡ä¸»å·¥ä½œï¼Œä¹Ÿå¯ä»¥ä¸å·¥ä½œå¹¶åˆæ³•å±…ç•™åœ¨åŠ æ‹¿å¤§ã€‚</p>\r\n<h3>é€’äº¤æ–¹å¼</h3>\r\nã€€ã€€é€šå¸¸ç½‘ç»œé€’äº¤ï¼Œæ‰€æœ‰ææ–™åªéœ€è¦æ‰«æä»¶ï¼Œå¤§ç­¾ä¼šç›´æŽ¥ä»Žç§»æ°‘å±€é€šè¿‡å¹³ä¿¡é‚®å¯„ç»™ç”³è¯·äººæŒ‡å®šçš„åœ°å€ã€‚\r\n<p>ã€€ã€€é€šå¸¸å»ºè®®åœ¨åŠ æ‹¿å¤§å¢ƒå†…ç”³è¯·å¼€æ”¾å¼å·¥ç­¾ï¼ˆå›¢èšé…å¶å·¥ç­¾ã€æ¡¥æ¢å·¥ç­¾ã€å®žä¹ å·¥ç­¾åªèƒ½åœ¨åŠ æ‹¿å¤§å¢ƒå†…ç”³è¯·ï¼Œå­¦ç­¾å’Œå·¥ç­¾æŒæœ‰äººçš„é…å¶å·¥ç­¾åœ¨å¢ƒå†…ç”³è¯·çš„é€šè¿‡çŽ‡ä¼šæ˜¾è‘—æé«˜ï¼‰ã€‚<br />ã€€ã€€æŸäº›æƒ…å†µä¸‹ä¹Ÿå¯ä»¥åœ¨åŠ æ‹¿å¤§å¢ƒå¤–ç”³è¯·å¼€æ”¾å¼å·¥ç­¾ï¼Œå‚è€ƒ<a href=\"http://eoivisa.com/work/\">å·¥ä½œç­¾è¯</a>ã€‚</p>\r\n<h3>æ¯•ä¸šåŽå·¥ç­¾</h3>\r\n<p>ã€€ã€€<a href=\"http://eoivisa.com/pgwp/\">ç‚¹æ­¤æŸ¥çœ‹æ¯•ä¸šåŽå·¥ç­¾é¡µé¢</a></p>\r\n<h3>å®žä¹ å·¥ç­¾</h3>\r\n<p>ã€€ã€€<a href=\"http://eoivisa.com/ciwp/\">ç‚¹å‡»æŸ¥çœ‹å®žä¹ å·¥ç­¾é¡µé¢</a></p>\r\n<h3>é…å¶/åŒå±…å·¥ç­¾</h3>\r\n<p>ã€€ã€€<a href=\"http://eoivisa.com/spouse-open-work-permit/\">ç‚¹æ­¤æŸ¥çœ‹é…å¶/åŒå±…å·¥ç­¾é¡µé¢</a></p>\r\n<h3>æ¡¥æ¢å·¥ç­¾</h3>\r\n<p>ã€€ã€€<a href=\"http://eoivisa.com/bowp/\">ç‚¹æ­¤æŸ¥çœ‹æ¡¥æ¢å·¥ç­¾é¡µé¢</a></p>\r\n<h3>è´¹ç”¨</h3>\r\n<p>ã€€ã€€åŠ æ‹¿å¤§æ”¿åºœæ”¶å–255åŠ å…ƒçš„ç”³è¯·è´¹ï¼Œä½†å®žä¹ å·¥ç­¾å…è´¹ã€‚<br />ã€€ã€€æ–°ç”Ÿä»£æœåŠ¡è´¹ç”¨ï¼šé…å¶/åŒå±…å·¥ç­¾200åŠ å…ƒï¼Œå…¶ä»–å¼€æ”¾å¼å·¥ç­¾150åŠ å…ƒï¼Œé€‚ç”¨äºŽåŠ æ‹¿å¤§å¢ƒå†…é€’äº¤çš„ç”³è¯·ã€‚<br />ã€€ã€€å¦‚æžœåœ¨ä¸­å›½ç”³è¯·ï¼Œè¯·è®¿é—®<a href=\"http://eoivisa.com/normal-work-visa/\">å·¥ä½œç­¾è¯</a>é¡µé¢ã€‚<br />ã€€ã€€ä¸åŒ…å«æ”¿åºœæ”¶å–çš„è´¹ç”¨ã€ç¿»è¯‘è´¹ã€å…¬è¯è´¹ã€å¿«é€’è´¹ç­‰ç¬¬ä¸‰æ–¹è´¹ç”¨ã€‚<br />ã€€ã€€è¿™ä¸ªè´¹ç”¨é’ˆå¯¹ä¸€èˆ¬çš„æ¡ˆä»¶ï¼Œå¦‚æžœæ‚¨çš„æƒ…å†µæ¯”è¾ƒå¤æ‚ï¼Œå¯èƒ½ä¼šæœ‰é¢å¤–çš„æ”¶è´¹ã€‚</p>\r\n</div>\r\n</div>\r\n<p>&nbsp;</p>', '', '', '', '', 'product'),
(41, 2, 4, 2, '2017-12-08 13:47:00', 'è¶…çº§ç­¾è¯', 'super-visa', '', '', '', 2200, 0, '<div id=\"page-title\" style=\"user-select: text !important; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 12px; vertical-align: baseline; background: #ffffff; color: #333333; font-family: å¾®è½¯é›…é»‘; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;\">\r\n<h1 class=\"pagetitle\" style=\"user-select: text !important; margin: 0px 0px 2px; padding: 0px 0px 2px; border: 0px; outline: 0px; font-size: 1.883em !important; vertical-align: baseline; background: transparent; line-height: 1.2em; font-family: å¾®è½¯é›…é»‘; font-weight: normal; color: #333333;\">è¶…çº§ç­¾è¯</h1>\r\n</div>\r\n<div id=\"post-157\" class=\"post-157 page type-page status-publish hentry\" style=\"user-select: text !important; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 12px; vertical-align: baseline; background: #ffffff; color: #333333; font-family: å¾®è½¯é›…é»‘; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;\">\r\n<div class=\"entry\" style=\"user-select: text !important; margin: 0px; padding: 10px 0px; border: 0px; outline: 0px; font-size: 12px; vertical-align: baseline; background: transparent; clear: both;\">\r\n<h3 style=\"user-select: text !important; margin: 15px 0px 2px; padding: 0px 0px 2px; border: 0px; outline: 0px; font-size: 1.5em !important; vertical-align: baseline; background: transparent; line-height: 1.2em; font-family: å¾®è½¯é›…é»‘; font-weight: normal; color: #333333;\">è¦æ±‚</h3>\r\n<p style=\"user-select: text !important; margin: 0px 0px 5px; padding: 5px 0px; border: 0px; outline: 0px; font-size: 12px; vertical-align: baseline; background: transparent; text-align: left;\">ã€€ã€€è¶…çº§ç­¾è¯æ˜¯ä¸ºåŠ æ‹¿å¤§<a style=\"user-select: text !important; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 12px; vertical-align: baseline; background: transparent; color: #d60707; text-decoration: none;\" href=\"http://eoivisa.com/canadian-citizenship/\">å…¬æ°‘</a>æˆ–è€…<a style=\"user-select: text !important; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 12px; vertical-align: baseline; background: transparent; color: #d60707; text-decoration: none;\" href=\"http://eoivisa.com/canada-immigration/\">æ°¸ä¹…å±…æ°‘</a>çš„çˆ¶æ¯ã€ç¥–çˆ¶æ¯è®¾ç½®çš„ã€‚è™½ç„¶ç›®å‰çˆ¶æ¯ã€ç¥–çˆ¶æ¯å›¢èšç§»æ°‘å¤„äºŽåœæ»žçŠ¶æ€ï¼Œä½†è¶…çº§ç­¾è¯åŸºæœ¬éƒ½èƒ½ç­¾å‘ï¼Œå¤šå¹´å¤šæ¬¡æœ‰æ•ˆï¼Œæ¯æ¬¡å…¥å¢ƒå¯ä»¥åœç•™ä¸¤å¹´ï¼ŒåŸºæœ¬ä¸Šè§£å†³äº†åŠ æ‹¿å¤§å…¬æ°‘ã€æ°¸ä¹…å±…æ°‘å’Œçˆ¶æ¯åˆ†å±…ä¸¤åœ°çš„é—®é¢˜ã€‚<br style=\"user-select: text !important;\" />ã€€ã€€é™¤äº†æ—…æ¸¸ç­¾è¯çš„åŸºæœ¬è¦æ±‚ï¼Œè¶…çº§ç­¾è¯è¿˜éœ€è¦æä¾›ï¼š<br style=\"user-select: text !important;\" />ã€€ã€€è¯æ˜Žä½ çš„å­å¥³æˆ–å­™å­å¥³è¾¾åˆ°<a style=\"user-select: text !important; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 12px; vertical-align: baseline; background: transparent; color: #d60707; text-decoration: none;\" href=\"http://eoivisa.com/lico/\">æœ€ä½Žæ”¶å…¥é—¨æ§›</a>ï¼›<br style=\"user-select: text !important;\" />ã€€ã€€æä¾›æ¥è‡ªå­å¥³æˆ–å­™å­å¥³çš„ä¹¦é¢è¯æ˜Žï¼Œæ˜¾ç¤ºä»–ä»¬ä¼šä»Žè´¢åŠ¡ä¸Šæ”¯æŒä½ ï¼›<br style=\"user-select: text !important;\" />ã€€ã€€è´­ä¹°è‡³å°‘ä¸€å¹´çš„åŠ æ‹¿å¤§åŒ»ç–—ä¿é™©ï¼›å¹¶ä¸”<br style=\"user-select: text !important;\" />ã€€ã€€é¢„å…ˆè¿›è¡Œç§»æ°‘ä½“æ£€ã€‚</p>\r\n<h3 style=\"user-select: text !important; margin: 15px 0px 2px; padding: 0px 0px 2px; border: 0px; outline: 0px; font-size: 1.5em !important; vertical-align: baseline; background: transparent; line-height: 1.2em; font-family: å¾®è½¯é›…é»‘; font-weight: normal; color: #333333;\">è¦ç‚¹</h3>\r\n<p style=\"user-select: text !important; margin: 0px 0px 5px; padding: 5px 0px; border: 0px; outline: 0px; font-size: 12px; vertical-align: baseline; background: transparent; text-align: left;\">ã€€ã€€æ»¡è¶³ç”³è¯·æ¡ä»¶çš„è¶…çº§ç­¾è¯é€šå¸¸éƒ½èƒ½é€šè¿‡ã€‚</p>\r\n<h3 style=\"user-select: text !important; margin: 15px 0px 2px; padding: 0px 0px 2px; border: 0px; outline: 0px; font-size: 1.5em !important; vertical-align: baseline; background: transparent; line-height: 1.2em; font-family: å¾®è½¯é›…é»‘; font-weight: normal; color: #333333;\">ç­¾è¯æ¸…å•</h3>\r\nã€€ã€€ä»¥ä¸‹æ¸…å•é€‚ç”¨äºŽåœ¨ä¸­å›½å¢ƒå†…é€’äº¤çš„ç”³è¯·ã€‚æ‰€æœ‰çš„ç”³è¯·ææ–™å¿…é¡»ç¿»è¯‘æˆè‹±æ–‡æˆ–æ³•æ–‡ã€‚<br style=\"user-select: text !important;\" />ã€€ã€€ç”³è¯·äººéœ€è¦æä¾›ï¼š\r\n<ul style=\"user-select: text !important; margin: 0px 0px 2px; padding: 0px; border: 0px; outline: 0px; font-size: 12px; vertical-align: baseline; background: transparent; list-style: disc;\">\r\n<li style=\"user-select: text !important; margin: 0px 0px 0px 3em; padding: 0px; border: 0px; outline: 0px; font-size: 12px; vertical-align: baseline; background: transparent;\">å¡«å†™å®Œæ•´çš„<a style=\"user-select: text !important; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 12px; vertical-align: baseline; background: transparent; color: #d60707; text-decoration: none;\" href=\"http://eoivisa.com/imm5257/\">ä¸´æ—¶å±…æ°‘è®¿é—®ç­¾è¯ç”³è¯·è¡¨(IMM 5257)</a>ã€‚æ¯åç”³è¯·äººåŠæ¯åéšè¡Œå­å¥³å‡éœ€ä¸€ä»½ç”³è¯·è¡¨æ ¼ã€‚å¹´æ»¡18å‘¨å²åŠä»¥ä¸Šçš„éšè¡Œå­å¥³é¡»å¡«å†™å¹¶ç­¾ç½²å…¶å„è‡ªçš„ç”³è¯·è¡¨æ ¼ã€‚</li>\r\n<li style=\"user-select: text !important; margin: 0px 0px 0px 3em; padding: 0px; border: 0px; outline: 0px; font-size: 12px; vertical-align: baseline; background: transparent;\">ç”³è¯·äººåŠæ¯ä½å¹´æ»¡18å‘¨å²åŠä»¥ä¸Šçš„éšè¡Œå®¶åº­æˆå‘˜å®Œæ•´å¡«å†™<a style=\"user-select: text !important; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 12px; vertical-align: baseline; background: transparent; color: #d60707; text-decoration: none;\" href=\"http://eoivisa.com/imm5645/\">å®¶åº­ä¿¡æ¯è¡¨(IMM 5645)</a>ï¼Œè¯·ä½¿ç”¨ä¸­è‹±æ–‡æˆ–ä¸­æ³•æ–‡å¡«å†™ã€‚</li>\r\n<li style=\"user-select: text !important; margin: 0px 0px 0px 3em; padding: 0px; border: 0px; outline: 0px; font-size: 12px; vertical-align: baseline; background: transparent;\">ç”³è¯·äººåŠæ¯ä½éšè¡Œå®¶åº­æˆå‘˜æ¯äººé€’äº¤ä¸¤å¼ ç…§ç‰‡ã€‚æ‰€æœ‰ç…§ç‰‡éœ€ç¬¦åˆ<a style=\"user-select: text !important; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 12px; vertical-align: baseline; background: transparent; color: #d60707; text-decoration: none;\" href=\"http://eoivisa.com/photo-details/\">ç…§ç‰‡è¦æ±‚ç»†åˆ™</a>ä¸­çš„æ‰€æœ‰è¦æ±‚ã€‚æ¯å¼ ç…§ç‰‡åŽæ³¨æ˜Žæ­¤äººçš„å§“ååŠå‡ºç”Ÿæ—¥æœŸã€‚éœ€è¦æäº¤ç”Ÿç‰©è¯†åˆ«ä¿¡æ¯çš„ç”³è¯·äººæ— éœ€é€’äº¤ç…§ç‰‡ã€‚</li>\r\n<li style=\"user-select: text !important; margin: 0px 0px 0px 3em; padding: 0px; border: 0px; outline: 0px; font-size: 12px; vertical-align: baseline; background: transparent;\">ç”³è¯·äººåŠæ¯ä½éšè¡Œå®¶åº­æˆå‘˜çš„æœ‰æ•ˆæŠ¤ç…§ã€‚æ¯æœ¬æŠ¤ç…§é¡»åŒ…å«é™¤æœ€åŽä¸€é¡µå¤–çš„è‡³å°‘ä¸€æ•´é¡µç©ºç™½é¡µã€ä¸”æŠ¤ç…§å¿…é¡»åœ¨è¡Œç¨‹å‰è‡³å°‘å…­ä¸ªæœˆå†…æœ‰æ•ˆã€‚</li>\r\n<li style=\"user-select: text !important; margin: 0px 0px 0px 3em; padding: 0px; border: 0px; outline: 0px; font-size: 12px; vertical-align: baseline; background: transparent;\">ç”³è¯·äººæœ¬äººä¸­å›½èº«ä»½è¯å¤å°ä»¶(ç…§ç‰‡é¡µå³å¯)ã€‚</li>\r\n<li style=\"user-select: text !important; margin: 0px 0px 0px 3em; padding: 0px; border: 0px; outline: 0px; font-size: 12px; vertical-align: baseline; background: transparent;\">æ­£ç¡®æ–¹å¼æ”¯ä»˜çš„è´¹ç”¨ï¼ŒåŒ…æ‹¬ç”³è¯·å—ç†è´¹å’Œç”Ÿç‰©è¯†åˆ«è´¹ï¼ˆè‹¥é€‚ç”¨ï¼‰</li>\r\n<li style=\"user-select: text !important; margin: 0px 0px 0px 3em; padding: 0px; border: 0px; outline: 0px; font-size: 12px; vertical-align: baseline; background: transparent;\">å¦‚æœ‰ç¬¬ä¸‰æ–¹äººå£«å¸®åŠ©ä½ å‡†å¤‡æ­¤æ¬¡ç”³è¯·ï¼Œè¯·å¡«å†™<a style=\"user-select: text !important; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 12px; vertical-align: baseline; background: transparent; color: #d60707; text-decoration: none;\" href=\"http://eoivisa.com/imm5476/\">ä»£ç†äººä¿¡æ¯è¡¨(IMM 5476)</a>ã€‚</li>\r\n<li style=\"user-select: text !important; margin: 0px 0px 0px 3em; padding: 0px; border: 0px; outline: 0px; font-size: 12px; vertical-align: baseline; background: transparent;\">18å‘¨å²ä»¥ä¸‹çš„ç”³è¯·äººï¼Œè¯·é€’äº¤æœªéšè¡Œçˆ¶/æ¯å‡ºå…·çš„åŒæ„å…¶æ—…è¡Œçš„çˆ¶æ¯åŒæ„å‡½ï¼Œæ­¤å‡½åº”åŒ…å«ç”³è¯·äººæ—…è¡Œæ—¥æœŸåŠå…¶çˆ¶æ¯è”ç³»æ–¹å¼ç­‰ä¿¡æ¯ã€‚</li>\r\n<li style=\"user-select: text !important; margin: 0px 0px 0px 3em; padding: 0px; border: 0px; outline: 0px; font-size: 12px; vertical-align: baseline; background: transparent;\">ç”³è¯·äººåŠæ¯ä½å¹´æ»¡18å‘¨å²åŠä»¥ä¸Šçš„éšè¡Œå®¶åº­æˆå‘˜å®Œæ•´å¡«å†™<a style=\"user-select: text !important; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 12px; vertical-align: baseline; background: transparent; color: #d60707; text-decoration: none;\" href=\"http://eoivisa.com/education-and-employment/\">æ•™è‚²å’Œå°±ä¸šç»†èŠ‚è¡¨</a>ï¼Œè¯·ä½¿ç”¨ä¸­è‹±æ–‡æˆ–ä¸­æ³•æ–‡å¡«å†™ã€‚</li>\r\n<li style=\"user-select: text !important; margin: 0px 0px 0px 3em; padding: 0px; border: 0px; outline: 0px; font-size: 12px; vertical-align: baseline; background: transparent;\">ä¸ŽåŠ æ‹¿å¤§é‚€è¯·äººå…³ç³»çš„è¯æ˜Ž(å¦‚å‡ºç”Ÿè¯å¤å°ä»¶ã€ç»“å©šè¯å¤å°ä»¶ã€ä¿¡å‡½å¾€æ¥è¯æ˜Žçš„å¤å°ä»¶ç­‰)ã€‚</li>\r\n<li style=\"user-select: text !important; margin: 0px 0px 0px 3em; padding: 0px; border: 0px; outline: 0px; font-size: 12px; vertical-align: baseline; background: transparent;\">è‡ªå…¥å¢ƒä¹‹æ—¥èµ·è‡³å°‘ä¸€å¹´å†…æœ‰æ•ˆçš„æ¥è‡ªäºŽåŠ æ‹¿å¤§ä¿é™©å…¬å¸çš„ä¸ªäººåŒ»ç–—ä¿é™©çš„å……åˆ†è¯æ˜Ž:<br style=\"user-select: text !important;\" />ã€€ã€€æ¶µç›–ç”³è¯·äººçš„åŒ»ç–—è´¹ç”¨ã€ä½é™¢è´¹ç”¨å’ŒåŒ»ç–—è½¬è¿è´¹ç”¨;<br style=\"user-select: text !important;\" />ã€€ã€€æä¾›è‡³å°‘åä¸‡åŠ å…ƒçš„ä¿é™©ï¼›å¹¶ä¸”<br style=\"user-select: text !important;\" />ã€€ã€€æ¯æ¬¡å…¥åŠ å‡æœ‰æ•ˆï¼Œåœ¨è¯„ä¼°å®˜å‘˜éœ€è¦æ—¶å¯ä¾›å®¡æŸ¥ã€‚</li>\r\n<li style=\"user-select: text !important; margin: 0px 0px 0px 3em; padding: 0px; border: 0px; outline: 0px; font-size: 12px; vertical-align: baseline; background: transparent;\">ä½ å·²ç»è¿›è¡Œ<a style=\"user-select: text !important; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 12px; vertical-align: baseline; background: transparent; color: #d60707; text-decoration: none;\" href=\"http://eoivisa.com/me/\">ä½“æ£€çš„è¯æ˜Ž</a>ã€‚</li>\r\n</ul>\r\n<p style=\"user-select: text !important; margin: 0px 0px 5px; padding: 5px 0px; border: 0px; outline: 0px; font-size: 12px; vertical-align: baseline; background: transparent; text-align: left;\">ã€€ã€€é‚€è¯·äººéœ€è¦æä¾›ï¼š</p>\r\n<ul style=\"user-select: text !important; margin: 0px 0px 2px; padding: 0px; border: 0px; outline: 0px; font-size: 12px; vertical-align: baseline; background: transparent; list-style: disc;\">\r\n<li style=\"user-select: text !important; margin: 0px 0px 0px 3em; padding: 0px; border: 0px; outline: 0px; font-size: 12px; vertical-align: baseline; background: transparent;\">ä¸€ä»½ç­¾å­—çš„æ‰¿è¯ºä¸ºç”³è¯·äººçš„é€—ç•™è®¿é—®æä¾›è´¢æ”¿æ”¯æŒçš„ä¹¦é¢é‚€è¯·ä¿¡ã€‚</li>\r\n<li style=\"user-select: text !important; margin: 0px 0px 0px 3em; padding: 0px; border: 0px; outline: 0px; font-size: 12px; vertical-align: baseline; background: transparent;\">é‚€è¯·äººå±…æ‰€å†…çš„äººå‘˜è¯¦å•ã€‚</li>\r\n<li style=\"user-select: text !important; margin: 0px 0px 0px 3em; padding: 0px; border: 0px; outline: 0px; font-size: 12px; vertical-align: baseline; background: transparent;\">é‚€è¯·äººçš„å…¬æ°‘æˆ–ç§»æ°‘èº«ä»½æ–‡ä»¶çš„å¤å°ä»¶ï¼ˆå¦‚<a style=\"user-select: text !important; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 12px; vertical-align: baseline; background: transparent; color: #d60707; text-decoration: none;\" href=\"http://eoivisa.com/permanent-resident-card/\">æ°¸ä¹…å±…æ°‘å¡</a>&ndash;è¯·å¤å°åŒé¢ï¼‰ã€‚</li>\r\n<li style=\"user-select: text !important; margin: 0px 0px 0px 3em; padding: 0px; border: 0px; outline: 0px; font-size: 12px; vertical-align: baseline; background: transparent;\">é‚€è¯·äººæœ‰èƒ½åŠ›æä¾›æ‰€æ‰¿è¯ºè´¢æ”¿æ”¯æŒçš„è¯æ˜Žï¼Œé¡»ä¸ºæ¥è‡ªäºŽåŠ æ‹¿å¤§çš„ç‹¬ç«‹ç¬¬ä¸‰æ–¹æ€§è´¨çš„æ–‡ä»¶ã€å¯é ä¸”æ˜“æ ¸ å®žã€‚ä¾‹å¦‚ä½†ä¸å±€é™äºŽï¼šåŠ æ‹¿å¤§ç¨ŽåŠ¡æ€»å±€å‡ºå…·çš„ç¨Žå•(NOA)ï¼Œæ˜¾ç¤ºæ”¶å…¥æƒ…å†µçš„é›‡ä½£è¯æ˜Žä¿¡ï¼Œå·¥èµ„å•ï¼Œé“¶è¡Œå¯¹è´¦å•ï¼Œæ‰§ä¸šä¸“ä¸šäººå£«å‡ºå…·çš„è–ªé…¬æ”¯ä»˜æŠ¥è¡¨æˆ–è´¢åŠ¡æŠ¥è¡¨ã€‚</li>\r\n</ul>\r\n<h3 style=\"user-select: text !important; margin: 15px 0px 2px; padding: 0px 0px 2px; border: 0px; outline: 0px; font-size: 1.5em !important; vertical-align: baseline; background: transparent; line-height: 1.2em; font-family: å¾®è½¯é›…é»‘; font-weight: normal; color: #333333;\">å‡ºå…¥å¢ƒæ¬¡æ•°å’Œæœ‰æ•ˆæœŸ</h3>\r\n<p style=\"user-select: text !important; margin: 0px 0px 5px; padding: 5px 0px; border: 0px; outline: 0px; font-size: 12px; vertical-align: baseline; background: transparent; text-align: left;\">ã€€ã€€å¤šæ¬¡å¾€è¿”ç­¾è¯ï¼Œç­¾è¯æœ‰æ•ˆæœŸåˆ°æŠ¤ç…§åˆ°æœŸçš„å‰3ä¸ªæœˆï¼Œæœ€é•¿å¯è¿‘10å¹´ã€‚<br style=\"user-select: text !important;\" />ã€€ã€€æ¯æ¬¡å…¥å¢ƒå¯åœç•™ä¸¤å¹´ã€‚</p>\r\nã€€ã€€æ–°ç”Ÿä»£çš„æœåŠ¡è´¹ç”¨ï¼š2200å…ƒäººæ°‘å¸ï¼Œæ¯å¤šä¸€åç”³è¯·äººåŠ æ”¶800å…ƒäººæ°‘å¸ï¼Œæœ‰æ‹’ç­¾å²çš„ç”³è¯·äººå¯èƒ½è¿˜ä¼šæ”¶å–é¢å¤–çš„è´¹ç”¨ã€‚<br style=\"user-select: text !important;\" />ã€€ã€€æœåŠ¡è´¹ä¸å«ä½“æ£€è´¹ã€å…¬è¯è´¹ã€å¿«é€’è´¹ç­‰ç¬¬ä¸‰æ–¹è´¹ç”¨ã€‚</div>\r\n</div>\r\n<p>&nbsp;</p>', '', '', '', '', 'product'),
(42, 2, 4, 2, '2017-12-08 13:50:23', 'è¿‡å¢ƒåŠ æ‹¿å¤§', 'short-entry-canada', '', '', '', 2200, 0, '<h3 style=\"user-select: text !important; margin: 15px 0px 2px; padding: 0px 0px 2px; border: 0px; outline: 0px; font-size: 1.5em !important; vertical-align: baseline; background: #ffffff; line-height: 1.2em; font-family: å¾®è½¯é›…é»‘; font-weight: normal; color: #333333; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;\">ç­¾è¯æ¸…å•</h3>\r\n<p><span style=\"color: #333333; font-family: å¾®è½¯é›…é»‘; font-size: 12px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;\">ã€€ã€€ä»¥ä¸‹æ¸…å•é€‚ç”¨äºŽåœ¨ä¸­å›½å¢ƒå†…é€’äº¤çš„ç”³è¯·ã€‚æ‰€æœ‰çš„ç”³è¯·ææ–™å¿…é¡»ç¿»è¯‘æˆè‹±æ–‡æˆ–æ³•æ–‡ã€‚</span><br style=\"user-select: text !important; color: #333333; font-family: å¾®è½¯é›…é»‘; font-size: 12px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-style: initial; text-decoration-color: initial;\" /><span style=\"color: #333333; font-family: å¾®è½¯é›…é»‘; font-size: 12px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;\">ã€€ã€€ç”³è¯·äººéœ€è¦æä¾›ï¼š</span></p>\r\n<ul style=\"user-select: text !important; margin: 0px 0px 2px; padding: 0px; border: 0px; outline: 0px; font-size: 12px; vertical-align: baseline; background: #ffffff; list-style: disc; color: #333333; font-family: å¾®è½¯é›…é»‘; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;\">\r\n<li style=\"user-select: text !important; margin: 0px 0px 0px 3em; padding: 0px; border: 0px; outline: 0px; font-size: 12px; vertical-align: baseline; background: transparent;\">å¡«å†™å®Œæ•´çš„<a style=\"user-select: text !important; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 12px; vertical-align: baseline; background: transparent; color: #d60707; text-decoration: none;\" href=\"http://eoivisa.com/imm5257/\">ä¸´æ—¶å±…æ°‘è®¿é—®ç­¾è¯ç”³è¯·è¡¨(IMM 5257)</a>ã€‚æ¯åç”³è¯·äººåŠæ¯åéšè¡Œå­å¥³å‡éœ€ä¸€ä»½ç”³è¯·è¡¨æ ¼ã€‚å¹´æ»¡18å‘¨å²åŠä»¥ä¸Šçš„éšè¡Œå­å¥³é¡»å¡«å†™å¹¶ç­¾ç½²å…¶å„è‡ªçš„ç”³è¯·è¡¨æ ¼ã€‚</li>\r\n<li style=\"user-select: text !important; margin: 0px 0px 0px 3em; padding: 0px; border: 0px; outline: 0px; font-size: 12px; vertical-align: baseline; background: transparent;\">ç”³è¯·äººåŠæ¯ä½å¹´æ»¡18å‘¨å²åŠä»¥ä¸Šçš„éšè¡Œå®¶åº­æˆå‘˜å®Œæ•´å¡«å†™<a style=\"user-select: text !important; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 12px; vertical-align: baseline; background: transparent; color: #d60707; text-decoration: none;\" href=\"http://eoivisa.com/imm5645/\">å®¶åº­ä¿¡æ¯è¡¨(IMM 5645)</a>ï¼Œè¯·ä½¿ç”¨ä¸­è‹±æ–‡æˆ–ä¸­æ³•æ–‡å¡«å†™ã€‚</li>\r\n<li style=\"user-select: text !important; margin: 0px 0px 0px 3em; padding: 0px; border: 0px; outline: 0px; font-size: 12px; vertical-align: baseline; background: transparent;\">ç”³è¯·äººåŠæ¯ä½éšè¡Œå®¶åº­æˆå‘˜æ¯äººé€’äº¤ä¸¤å¼ ç…§ç‰‡ã€‚æ‰€æœ‰ç…§ç‰‡éœ€ç¬¦åˆ<a style=\"user-select: text !important; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 12px; vertical-align: baseline; background: transparent; color: #d60707; text-decoration: none;\" href=\"http://eoivisa.com/photo-details/\">ç…§ç‰‡è¦æ±‚ç»†åˆ™</a>ä¸­çš„æ‰€æœ‰è¦æ±‚ã€‚æ¯å¼ ç…§ç‰‡åŽæ³¨æ˜Žæ­¤äººçš„å§“ååŠå‡ºç”Ÿæ—¥æœŸã€‚éœ€è¦æäº¤ç”Ÿç‰©è¯†åˆ«ä¿¡æ¯çš„ç”³è¯·äººæ— éœ€é€’äº¤ç…§ç‰‡ã€‚</li>\r\n<li style=\"user-select: text !important; margin: 0px 0px 0px 3em; padding: 0px; border: 0px; outline: 0px; font-size: 12px; vertical-align: baseline; background: transparent;\">ç”³è¯·äººåŠæ¯ä½éšè¡Œå®¶åº­æˆå‘˜çš„æœ‰æ•ˆæŠ¤ç…§ã€‚æ¯æœ¬æŠ¤ç…§é¡»åŒ…å«é™¤æœ€åŽä¸€é¡µå¤–çš„è‡³å°‘ä¸€æ•´é¡µç©ºç™½é¡µã€ä¸”æŠ¤ç…§å¿…é¡»åœ¨è¡Œç¨‹å‰è‡³å°‘å…­ä¸ªæœˆå†…æœ‰æ•ˆã€‚</li>\r\n<li style=\"user-select: text !important; margin: 0px 0px 0px 3em; padding: 0px; border: 0px; outline: 0px; font-size: 12px; vertical-align: baseline; background: transparent;\">ç”³è¯·äººæœ¬äººä¸­å›½èº«ä»½è¯å¤å°ä»¶(ç…§ç‰‡é¡µå³å¯)ã€‚</li>\r\n<li style=\"user-select: text !important; margin: 0px 0px 0px 3em; padding: 0px; border: 0px; outline: 0px; font-size: 12px; vertical-align: baseline; background: transparent;\">æ­£ç¡®æ–¹å¼æ”¯ä»˜çš„è´¹ç”¨ï¼ŒåŒ…æ‹¬ç”³è¯·å—ç†è´¹å’Œç”Ÿç‰©è¯†åˆ«è´¹ï¼ˆè‹¥é€‚ç”¨ï¼‰</li>\r\n<li style=\"user-select: text !important; margin: 0px 0px 0px 3em; padding: 0px; border: 0px; outline: 0px; font-size: 12px; vertical-align: baseline; background: transparent;\">å¦‚æœ‰ç¬¬ä¸‰æ–¹äººå£«å¸®åŠ©ä½ å‡†å¤‡æ­¤æ¬¡ç”³è¯·ï¼Œè¯·å¡«å†™<a style=\"user-select: text !important; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 12px; vertical-align: baseline; background: transparent; color: #d60707; text-decoration: none;\" href=\"http://eoivisa.com/imm5476/\">ä»£ç†äººä¿¡æ¯è¡¨(IMM 5476)</a>ã€‚</li>\r\n<li style=\"user-select: text !important; margin: 0px 0px 0px 3em; padding: 0px; border: 0px; outline: 0px; font-size: 12px; vertical-align: baseline; background: transparent;\">18å‘¨å²ä»¥ä¸‹çš„ç”³è¯·äººï¼Œè¯·é€’äº¤æœªéšè¡Œçˆ¶/æ¯å‡ºå…·çš„åŒæ„å…¶æ—…è¡Œçš„çˆ¶æ¯åŒæ„å‡½ï¼Œæ­¤å‡½åº”åŒ…å«ç”³è¯·äººæ—…è¡Œæ—¥æœŸåŠå…¶çˆ¶æ¯è”ç³»æ–¹å¼ç­‰ä¿¡æ¯ã€‚</li>\r\n<li style=\"user-select: text !important; margin: 0px 0px 0px 3em; padding: 0px; border: 0px; outline: 0px; font-size: 12px; vertical-align: baseline; background: transparent;\">ç”³è¯·äººåŠæ¯ä½å¹´æ»¡18å‘¨å²åŠä»¥ä¸Šçš„éšè¡Œå®¶åº­æˆå‘˜å®Œæ•´å¡«å†™<a style=\"user-select: text !important; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 12px; vertical-align: baseline; background: transparent; color: #d60707; text-decoration: none;\" href=\"http://eoivisa.com/education-and-employment/\">æ•™è‚²å’Œå°±ä¸šç»†èŠ‚è¡¨</a>ï¼Œè¯·ä½¿ç”¨ä¸­è‹±æ–‡æˆ–ä¸­æ³•æ–‡å¡«å†™ã€‚</li>\r\n<li style=\"user-select: text !important; margin: 0px 0px 0px 3em; padding: 0px; border: 0px; outline: 0px; font-size: 12px; vertical-align: baseline; background: transparent;\">æœºç¥¨åŠ/æˆ–æ—…è¡Œè¡Œç¨‹å®‰æŽ’çš„å¤å°ä»¶ã€‚è¯·æ³¨æ˜Žä½ å°†è¿›å…¥åŠ æ‹¿å¤§çš„æ¬¡æ•°ã€åŠæ¯æ¬¡å‡ºå…¥å¢ƒç›¸åº”çš„æ—¥æœŸã€‚</li>\r\n<li style=\"user-select: text !important; margin: 0px 0px 0px 3em; padding: 0px; border: 0px; outline: 0px; font-size: 12px; vertical-align: baseline; background: transparent;\">æœ€ç»ˆç›®çš„åœ°å›½å®¶çš„æœ‰æ•ˆç­¾è¯ï¼Œå¦‚é€‚ç”¨ã€‚</li>\r\n<li style=\"user-select: text !important; margin: 0px 0px 0px 3em; padding: 0px; border: 0px; outline: 0px; font-size: 12px; vertical-align: baseline; background: transparent;\">è¿‡å¾€çš„æ—…è¡Œè¯æ˜Žï¼ˆå¦‚å·²ç”¨æŠ¤ç…§ç­‰ï¼‰</li>\r\n<li style=\"user-select: text !important; margin: 0px 0px 0px 3em; padding: 0px; border: 0px; outline: 0px; font-size: 12px; vertical-align: baseline; background: transparent;\">å¦‚æžœåœ¨èŒï¼Œä½¿ç”¨å°æœ‰å…¬å¸æŠ¬å¤´ä¿¡ç¬ºçš„ç”±é›‡ä¸»ç­¾å­—çš„<a style=\"user-select: text !important; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 12px; vertical-align: baseline; background: transparent; color: #d60707; text-decoration: none;\" href=\"http://eoivisa.com/letter-granting-leave-of-absence/\">å‡†å‡ä¿¡</a>ã€å¹¶åŒ…å«ä»¥ä¸‹ä¿¡æ¯ï¼š<br style=\"user-select: text !important;\" />ã€€ã€€ç”³è¯·äººçš„å§“åã€èŒä½ã€ç›®å‰æ”¶å…¥å’Œèµ·è˜æ—¥æœŸï¼›ä»¥åŠ<br style=\"user-select: text !important;\" />ã€€ã€€ç”¨ä¸­æ–‡æ³¨æ˜Žçš„é›‡ä¸»å…¨ç§°å’Œåœ°å€ï¼Œä»¥åŠç”µè¯å’Œä¼ çœŸå·ç ã€‚</li>\r\n</ul>\r\n<h3 style=\"user-select: text !important; margin: 15px 0px 2px; padding: 0px 0px 2px; border: 0px; outline: 0px; font-size: 1.5em !important; vertical-align: baseline; background: #ffffff; line-height: 1.2em; font-family: å¾®è½¯é›…é»‘; font-weight: normal; color: #333333; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;\">è´¹ç”¨</h3>\r\n<p style=\"user-select: text !important; margin: 0px 0px 5px; padding: 5px 0px; border: 0px; outline: 0px; font-size: 12px; vertical-align: baseline; background: #ffffff; text-align: left; color: #333333; font-family: å¾®è½¯é›…é»‘; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;\">ã€€ã€€åŠ æ‹¿å¤§æ”¿åºœä¸æ”¶å–ç”³è¯·è´¹ã€‚<br style=\"user-select: text !important;\" />ã€€ã€€æ–°ç”Ÿä»£çš„æœåŠ¡è´¹ç”¨ï¼š2200å…ƒäººæ°‘å¸ï¼Œæ¯å¤šä¸€åç”³è¯·äººåŠ æ”¶800å…ƒäººæ°‘å¸ï¼Œæœ‰æ‹’ç­¾å²çš„ç”³è¯·äººå¯èƒ½è¿˜ä¼šæ”¶å–é¢å¤–çš„è´¹ç”¨ã€‚<br style=\"user-select: text !important;\" />ã€€ã€€æœåŠ¡è´¹ä¸å«ä½“æ£€è´¹ã€å…¬è¯è´¹ã€å¿«é€’è´¹ç­‰ç¬¬ä¸‰æ–¹è´¹ç”¨ã€‚<u></u><span style=\"text-decoration: line-through;\"></span></p>', '', '', '', '', 'product');

-- --------------------------------------------------------

--
-- Table structure for table `product_categories`
--

CREATE TABLE `product_categories` (
  `p_cat_id` int(10) NOT NULL,
  `p_cat_title` text NOT NULL,
  `p_cat_top` text NOT NULL,
  `p_cat_image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_categories`
--

INSERT INTO `product_categories` (`p_cat_id`, `p_cat_title`, `p_cat_top`, `p_cat_image`) VALUES
(1, 'ç§»æ°‘', 'yes', ''),
(2, 'ç­¾è¯', 'yes', ''),
(3, 'ç•™å­¦', 'yes', ''),
(4, 'ç™¾ç§‘', 'yes', ''),
(5, 'åŠ¨æ€', 'yes', '');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `service_id` int(10) NOT NULL,
  `service_title` varchar(255) NOT NULL,
  `service_image` varchar(255) NOT NULL,
  `service_desc` text NOT NULL,
  `service_button` varchar(255) NOT NULL,
  `service_url` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`service_id`, `service_title`, `service_image`, `service_desc`, `service_button`, `service_url`) VALUES
(4, 'Vision', 'vision.png', '<p>&nbsp;</p>\r\n<p style=\"margin: 0px 0px 11px;\"><span lang=\"ZH-CN\" style=\"margin: 0px; font-family: å®‹ä½“;\"><span style=\"font-size: medium;\">æˆä¸ºä¸šç•Œæœ€ä¸“ä¸šçš„åŠ æ‹¿å¤§ç§»æ°‘ç•™å­¦æœºæž„ï¼</span></span></p>', '', ''),
(5, 'Mission', 'mission.png', '<p>&nbsp;</p>\r\n<p style=\"margin: 0px 0px 11px;\"><span lang=\"ZH-CN\" style=\"margin: 0px; font-family: å®‹ä½“;\"><span style=\"font-size: medium;\">æ‰“ç ´ç§»æ°‘éš¾ç•™å­¦éš¾çš„ç¥žè¯ï¼Œè®©æ¯ä¸€ä¸ªæœ‰å¿—ç§»æ°‘å’Œç•™å­¦çš„å®¢æˆ·éƒ½èƒ½è¾¾æˆç†æƒ³ï¼</span></span></p>', '', ''),
(6, 'Value', 'values.png', '<p>&nbsp;</p>\r\n<p style=\"margin: 0px 0px 11px;\"><span lang=\"ZH-CN\" style=\"margin: 0px; font-family: å®‹ä½“;\"><span style=\"font-size: medium;\">ä¸“ä¸šçš„ç§»æ°‘ç•™å­¦ä¸šåŠ¡ï¼ŒçœŸè¯šçš„å®¢æˆ·æœåŠ¡å“è´¨ï¼ŒåŠæ—¶å¼€æ”¾çš„ä¿¡æ¯æ²Ÿé€šå¹³å°ã€‚</span></span></p>\r\n<p>&nbsp;</p>', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `slider`
--

CREATE TABLE `slider` (
  `slide_id` int(10) NOT NULL,
  `slide_name` varchar(255) NOT NULL,
  `slide_image` text NOT NULL,
  `slide_url` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `slider`
--

INSERT INTO `slider` (`slide_id`, `slide_name`, `slide_image`, `slide_url`) VALUES
(3, 'Slide Number 3', 'banner3.png', 'http://localhost/Ecom_store/index.php');

-- --------------------------------------------------------

--
-- Table structure for table `tax_rate`
--

CREATE TABLE `tax_rate` (
  `id` int(11) NOT NULL,
  `province` text CHARACTER SET big5 NOT NULL,
  `rate` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tax_rate`
--

INSERT INTO `tax_rate` (`id`, `province`, `rate`) VALUES
(1, 'Outside of Canada', 0),
(2, 'Alberta', 0.05),
(3, 'British Columbia', 0.12),
(4, 'Manitoba', 0.13),
(5, 'New Brunswick', 0.15),
(6, 'Newfoundland and Labrador', 0.15),
(7, 'Nova Scotia', 0.15),
(8, 'Nunavut', 0.05),
(9, 'Ontario', 0.13),
(10, 'Quebec', 0.14975),
(11, 'Prince Edward Island', 0.15),
(12, 'Saskatchewan', 0.11),
(13, 'Yukon', 0.05);

-- --------------------------------------------------------

--
-- Table structure for table `terms`
--

CREATE TABLE `terms` (
  `term_id` int(10) NOT NULL,
  `term_title` varchar(100) NOT NULL,
  `term_link` varchar(100) NOT NULL,
  `term_desc` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `terms`
--

INSERT INTO `terms` (`term_id`, `term_title`, `term_link`, `term_desc`) VALUES
(1, 'äº§å“ç»ç†', 'link1', '<div>\r\n<h3>å²—ä½èŒè´£ï¼š</h3>\r\n<ol>\r\n<li>è´Ÿè´£äº§å“è®¾è®¡ï¼›</li>\r\n<li>å‚ä¸Žäº§å“ä¸Žç”¨æˆ·è°ƒç ”ï¼›</li>\r\n<li>å‚ä¸Žäº§å“è§„åˆ’ã€‚</li>\r\n</ol>\r\n</div>\r\n<h3>æˆ‘ä»¬å¯¹æ‚¨çš„æœŸæœ›ï¼š</h3>\r\n<ol>\r\n<li>ä¼˜ç§€çš„äº¤äº’è®¾è®¡èƒ½åŠ›ï¼›</li>\r\n<li>ä¸¥å¯†çš„é€»è¾‘æ€ç»´èƒ½åŠ›ï¼Œå–„äºŽåˆ†æžå¹¶è§£å†³é—®é¢˜ï¼›</li>\r\n<li>ä¼˜ç§€çš„æ²Ÿé€šèƒ½åŠ›ï¼Œå–„äºŽç®€å•æ˜Žäº†åœ°è¡¨è¾¾ï¼›</li>\r\n<li>å¼ºå¤§çš„è‡ªæˆ‘é©±åŠ¨åŠ›ã€‚</li>\r\n</ol>\r\n<p>&nbsp;</p>'),
(5, 'PHPå¼€å‘å·¥ç¨‹å¸ˆ', 'link3', '<div>\r\n<h3>å²—ä½èŒè´£ï¼š</h3>\r\n<ol>\r\n<li>Web åŽç«¯ä¸šåŠ¡é€»è¾‘å±‚ã€æ•°æ®å±‚çš„å®žçŽ°ï¼›</li>\r\n<li>è´Ÿè´£åº”ç”¨çš„é«˜çº§è®¾è®¡ã€åŠŸèƒ½å®žçŽ°å¹¶è¿›è¡Œæµ‹è¯•åŠéƒ¨ç½²ã€‚</li>\r\n</ol>\r\n</div>\r\n<div>\r\n<h3>æˆ‘ä»¬å¯¹æ‚¨çš„æœŸæœ›ï¼š</h3>\r\n<h4>å¿…å¤‡æ¡ä»¶</h4>\r\n<ol>\r\n<li>3 å¹´ä»¥ä¸Š WEB å¼€å‘ç»éªŒï¼›</li>\r\n<li>ç²¾é€š PHP å’Œ PHP OOP ç¨‹å¼è®¾è®¡ï¼› ç†Ÿæ‚‰ PHP å¸¸ç”¨çš„ä¸€ä¸ªæˆ–å¤šä¸ªæ¡†æž¶ï¼›</li>\r\n<li>ç†Ÿç»ƒä½¿ç”¨ Mysql/Oracle ç­‰æ•°æ®åº“ï¼Œç†Ÿç»ƒæŽŒæ¡ SQL è¯­è¨€ï¼Œæœ‰è¾ƒå¼ºçš„æ•°æ®åº“ç¼–ç¨‹èƒ½åŠ›ï¼›</li>\r\n<li>ç†Ÿç»ƒä½¿ç”¨ Linux+Apache+Mysql+PHP åˆ›å»ºå•†ä¸šçº§ç½‘ç«™ï¼›</li>\r\n<li>è‰¯å¥½çš„ç³»ç»Ÿåˆ†æžè®¾è®¡èƒ½åŠ›ï¼Œæ–‡æ¡£ç®¡ç†èƒ½åŠ›åŠç¼–ç¨‹ä¹ æƒ¯ï¼›</li>\r\n<li>æ²Ÿé€šèƒ½åŠ›å¼ºï¼Œå…·æœ‰è‰¯å¥½çš„å›¢é˜Ÿåˆä½œæ„è¯†ã€‚</li>\r\n</ol>\r\n<h4>ä¼˜å…ˆæ¡ä»¶</h4>\r\n<ol>\r\n<li>ç†Ÿæ‚‰ä½¿ç”¨ HTMLï¼ŒCSSï¼ŒJAVASCRIPT ç­‰ WEB ç¼–ç¨‹ï¼Œäº†è§£åŠ¨æ€ç½‘é¡µå¼€å‘è€…ä¼˜å…ˆï¼›</li>\r\n<li>å…·æœ‰ç”µå­å•†åŠ¡ç½‘ç«™æˆ– App store å¼€å‘ç»éªŒï¼›</li>\r\n<li>æœ‰ JAVAï¼ŒC è¯­è¨€ç›¸å…³ç ”å‘ç»éªŒè€…ã€‚</li>\r\n</ol>\r\n</div>\r\n<p>&nbsp;</p>'),
(6, 'é¡¹ç›®ç»ç†', 'link4', '<div>\r\n<h3>å²—ä½èŒè´£ï¼š</h3>\r\n<ol>\r\n<li>è´Ÿè´£åˆ¶å®šé¡¹ç›®è®¡åˆ’ï¼Œç›‘ç£é¡¹ç›®æ‰§è¡Œï¼Œæ±‡æŠ¥é¡¹ç›®è¿›åº¦ï¼›</li>\r\n<li>è´Ÿè´£é¡¹ç›®å†…éƒ¨åè°ƒå·¥ä½œï¼ŒåŒ…æ‹¬èµ„æºéœ€æ±‚é…ç½®åŠåè°ƒã€è¿›åº¦åè°ƒã€è´¨é‡æŽ§åˆ¶åŠäººå‘˜åè°ƒç­‰ï¼›</li>\r\n<li>æ ¹æ®é¡¹ç›®æŽ¨è¿›æƒ…å†µï¼Œè´Ÿè´£ç›¸å…³éƒ¨é—¨ä¹‹é—´çš„åè°ƒï¼ŒåŒ…æ‹¬èµ„æºéœ€æ±‚åŠäººå‘˜è°ƒé…ç­‰ï¼›</li>\r\n<li>è¯†åˆ«é£Žé™©ç‚¹ï¼Œåšå¥½ç›¸åº”é¢„æ¡ˆï¼›</li>\r\n<li>è´Ÿè´£åè°ƒç»„ç»‡å¼€å±•é¡¹ç›®å„ç§ä¼šè®®ï¼Œè§£å†³é¡¹ç›®å†…å‡ºçŽ°çš„å…¶ä»–é—®é¢˜ã€‚</li>\r\n</ol>\r\n</div>\r\n<div>\r\n<h3>æˆ‘ä»¬å¯¹æ‚¨çš„æœŸæœ›ï¼š</h3>\r\n<h4>å¿…å¤‡æ¡ä»¶</h4>\r\n<ol>\r\n<li>2 å¹´ä»¥ä¸Šé¡¹ç›®ç®¡ç†ç»éªŒï¼Œç†Ÿæ‚‰è½¯ä»¶ç ”å‘é¡¹ç›®ç®¡ç†æµç¨‹ï¼›</li>\r\n<li>è´£ä»»å¿ƒå¼ºï¼Œç›®æ ‡ç»“æžœå¯¼å‘ï¼Œè®¡åˆ’å’Œæ‰§è¡Œèƒ½åŠ›å¼ºï¼Œæ³¨æ„ç»†èŠ‚ï¼›</li>\r\n<li>ç»„ç»‡åè°ƒåŠæ²Ÿé€šèƒ½åŠ›å¼ºï¼Œåœ¨é¡¹ç›®æŽ¨è¿›ä¸­èƒ½å¾ˆå¥½æŠŠæ¡åŽŸåˆ™æ€§å’Œçµæ´»æ€§ï¼›</li>\r\n<li>å…·å¤‡è¾ƒå¼ºçš„é¡¹ç›®é£Žé™©è¯†åˆ«å’Œç®¡ç†èƒ½åŠ›ï¼Œèƒ½ç‹¬ç«‹çš„å¤„ç†ç´§æ€¥çš„é£Žé™©å’Œå˜æ›´ï¼›</li>\r\n<li>èƒ½å¤Ÿåœ¨é«˜å¼ºåº¦çš„å·¥ä½œåŽ‹åŠ›ä¸‹å‡†ç¡®åšå‡ºå†³ç­–å’Œåˆ¤æ–­ã€‚</li>\r\n</ol>\r\n<h4>ä¼˜å…ˆæ¡ä»¶</h4>\r\n<ol>\r\n<li>å…·æœ‰ PMP æˆ–é¡¹ç›®ç®¡ç†ç›¸å…³è¯ä¹¦ã€‚</li>\r\n</ol>\r\n</div>\r\n<p>&nbsp;</p>');

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `wishlist_id` int(10) NOT NULL,
  `customer_id` int(10) NOT NULL,
  `product_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wishlist`
--

INSERT INTO `wishlist` (`wishlist_id`, `customer_id`, `product_id`) VALUES
(2, 2, 8),
(3, 3, 8);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `about_us`
--
ALTER TABLE `about_us`
  ADD PRIMARY KEY (`about_id`);

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `boxes_section`
--
ALTER TABLE `boxes_section`
  ADD PRIMARY KEY (`box_id`);

--
-- Indexes for table `bundle_product_relation`
--
ALTER TABLE `bundle_product_relation`
  ADD PRIMARY KEY (`rel_id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`p_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `contact_us`
--
ALTER TABLE `contact_us`
  ADD PRIMARY KEY (`contact_id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`coupon_id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `customer_orders`
--
ALTER TABLE `customer_orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `datatables_demo`
--
ALTER TABLE `datatables_demo`
  ADD PRIMARY KEY (`id`),
  ADD KEY `seq` (`seq`);

--
-- Indexes for table `enquiry_types`
--
ALTER TABLE `enquiry_types`
  ADD PRIMARY KEY (`enquiry_id`);

--
-- Indexes for table `express_entry`
--
ALTER TABLE `express_entry`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `icons`
--
ALTER TABLE `icons`
  ADD PRIMARY KEY (`icon_id`);

--
-- Indexes for table `manufacturers`
--
ALTER TABLE `manufacturers`
  ADD PRIMARY KEY (`manufacturer_id`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`payment_id`);

--
-- Indexes for table `pending_orders`
--
ALTER TABLE `pending_orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `product_categories`
--
ALTER TABLE `product_categories`
  ADD PRIMARY KEY (`p_cat_id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`service_id`);

--
-- Indexes for table `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`slide_id`);

--
-- Indexes for table `tax_rate`
--
ALTER TABLE `tax_rate`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `terms`
--
ALTER TABLE `terms`
  ADD PRIMARY KEY (`term_id`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`wishlist_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `about_us`
--
ALTER TABLE `about_us`
  MODIFY `about_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `admin_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `boxes_section`
--
ALTER TABLE `boxes_section`
  MODIFY `box_id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `bundle_product_relation`
--
ALTER TABLE `bundle_product_relation`
  MODIFY `rel_id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `contact_us`
--
ALTER TABLE `contact_us`
  MODIFY `contact_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `coupon_id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `customer_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `customer_orders`
--
ALTER TABLE `customer_orders`
  MODIFY `order_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `datatables_demo`
--
ALTER TABLE `datatables_demo`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;
--
-- AUTO_INCREMENT for table `enquiry_types`
--
ALTER TABLE `enquiry_types`
  MODIFY `enquiry_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `express_entry`
--
ALTER TABLE `express_entry`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `icons`
--
ALTER TABLE `icons`
  MODIFY `icon_id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `manufacturers`
--
ALTER TABLE `manufacturers`
  MODIFY `manufacturer_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `payment_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `pending_orders`
--
ALTER TABLE `pending_orders`
  MODIFY `order_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;
--
-- AUTO_INCREMENT for table `product_categories`
--
ALTER TABLE `product_categories`
  MODIFY `p_cat_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `service_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `slider`
--
ALTER TABLE `slider`
  MODIFY `slide_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `tax_rate`
--
ALTER TABLE `tax_rate`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `terms`
--
ALTER TABLE `terms`
  MODIFY `term_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `wishlist_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
